-- Project : Vector Display Processor
-- Ram Control Block (RCB)
-- Author : Andrew Kubal
-- Student ID: 00888321

LIBRARY ieee;
library work;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE WORK.config_pack.ALL;
USE work.project_pack.ALL;
use work.draw_octant;
use work.draw_any_octant;


ENTITY db IS
	GENERIC(vsize : INTEGER := 6);
	PORT(
		clk          : IN  std_logic;
		reset        : IN  std_logic;

		-- host processor connections
		hdb          : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
		dav          : IN  STD_LOGIC;
		hdb_busy     : OUT STD_LOGIC;

		-- rcb connections
		dbb_bus      : OUT db_2_rcb;
		dbb_delaycmd : IN  STD_LOGIC;

		-- vdp connection
		db_finish    : OUT STD_LOGIC
	);
END db;

ARCHITECTURE rtl OF db IS

	
	signal dbb_signal : db_2_rcb;
	signal hdb_busy_signal : std_logic;
	
	
	signal host_signal : host_cmd_t;
	
 	
 	signal XYenable_reg : std_logic;

	signal X_current : std_logic_vector(VSIZE-1 downto 0);
	signal Y_current : std_logic_vector(VSIZE-1 downto 0);

	
	signal X_new : std_logic_vector(VSIZE-1 downto 0);
	signal Y_new : std_logic_vector(VSIZE-1 downto 0);

	
	signal fsm_state : db_fsm_state_t;
	signal DAO_state : line_fsm_state_t;
	signal clearscreen_state : fill_fsm_state_t;

	
	signal db_disable : std_logic;
	signal db_start : std_logic;
	signal line_end : std_logic;
	signal db_done : std_logic;

	signal db_xbias : std_logic;
	signal db_swapxy : std_logic;
	signal db_negx : std_logic;
	signal db_negy : std_logic;

	signal db_xout : std_logic_vector(VSIZE-1 downto 0);
	signal db_yout : std_logic_vector(VSIZE-1 downto 0);



begin

-- signals assigned to ports
dbb_bus <= dbb_signal;
hdb_busy <= hdb_busy_signal;



-- interface btw draw any octant and DB
DAO: entity draw_any_octant
generic map (VSIZE)
port map (
  clk    => clk,
  disable => db_disable,
  init => db_start,
  draw   => line_end,
  done   => db_done,
  x      => db_xout,
  y      => db_yout,
  xin    => X_current,
  yin    => Y_current,
  xbias  => db_xbias,
  swapxy => db_swapxy,
  negx   => db_negx,
  negy   => db_negy);

---------------------------------------------------------------

-- clocked process to handle state transitions for the fsm (including nested fsms)
DB_FSM: process
begin
	wait until clk'event and clk='1';
	if reset = '1' then    ---- if reset=1 then cycle back to idle, initial and start
		fsm_state <= idle_state;
		DAO_state <= line_startpt_state;
		clearscreen_state <= fill_startpt_state;
	else
		 --- otherwise, self-assigned signals 
		fsm_state <= fsm_state;
		DAO_state <= DAO_state;
		clearscreen_state <= clearscreen_state;

		---- fsm for the states of DB
		case fsm_state is

		-- we wait for the next command an values
		 when idle_state => 
		 	fsm_state <= proceeding_state(dav, hdb, X_new, Y_new);

		-- As long as rcb is not blocking, accept next command for single pix
		 when draw_single_pix_state => 
		 	if dbb_delaycmd='0' then -- if rcb slave is not busy, can consume next command
				fsm_state <= proceeding_state(dav, hdb, X_new, Y_new);
			end if;

		-- move xy --> so we accept next command
		 when set_xy_state => 
		 	fsm_state <= proceeding_state(dav, hdb, X_new, Y_new);

		 -- when clearscreen, use fsm for clearscreen, accept nxt cmd only at finish
		 when fill_state => 
		 	case (clearscreen_state) is
				 when fill_startpt_state => if dbb_delaycmd='0' then 
				       clearscreen_state <= fill_endpt_state;
				 	end if;

				 when fill_endpt_state => if dbb_delaycmd='0' then 
				        clearscreen_state <= fill_startpt_state;
				 	fsm_state <= proceeding_state(dav, hdb, X_new, Y_new);
				        end if;
				 when others => null;
			end case;

		-- the state for drawing a line
		 when draw_line_state => 
		 	case DAO_state is
				when line_startpt_state => 
					DAO_state <= line_endpt_state;

				when line_endpt_state => 
					DAO_state <= line_pix_state;
-- loop back to initial. draw any octant is done and no rcb blocking
				when line_pix_state => 
					 if db_done='1' and dbb_delaycmd='0' then 
						 DAO_state <= line_startpt_state;
						 fsm_state <= proceeding_state(dav, hdb, X_new, Y_new);
					 end if;

				when others => null;
			end case;

		 when others => null;
            end case;
	end if;
end process DB_FSM;

-------------------------------------------------------------------------------------------


HDB_BUSY_C : process (fsm_state, dbb_delaycmd, DAO_state, db_done, clearscreen_state)
begin

	-- default value
	hdb_busy_signal <= '1';

	 
	case (fsm_state) is
	
		--idle and move are never busy
		when idle_state | set_xy_state =>
			hdb_busy_signal <= '0';

		-- single pixel will pass delaycmd
		when draw_single_pix_state => 
			hdb_busy_signal <= dbb_delaycmd;

		-- after drawing line, check that drawAnyOctant is done --> pass delaycmd
		when draw_line_state => 
			if DAO_state=line_pix_state and db_done='1' then
				hdb_busy_signal <= dbb_delaycmd;
			end if;

		-- pass delaycmd when clearscreen is at the 2nd stage in its fsm
		when fill_state => 
			if clearscreen_state=fill_endpt_state then
				hdb_busy_signal <= dbb_delaycmd;
			end if;

		when others => null;
	
	end case;
end process HDB_BUSY_C;


--send finish signal if in idle state and no new instr from host
DB_FINISH_C: process (fsm_state, dav)
begin

	if fsm_state = idle_state and dav = '0' then
		db_finish <= '1';
	else
		db_finish <= '0';
	end if;
end process DB_FINISH_C;

-------------------------------------------------------------------------------------------

-- the signals that connect btw rcb and db. values come from project_pack
RCB_C: process (fsm_state, DAO_state, db_xout, db_yout, host_signal, clearscreen_state, X_current, Y_current)
begin

	-- set to default conditions
	dbb_signal.startcmd <= '0';
	dbb_signal.rcb_cmd <= dbrcb_move;
	dbb_signal.X <= std_logic_vector(to_unsigned(0, dbb_bus.X'length));
	dbb_signal.Y <= std_logic_vector(to_unsigned(0, dbb_bus.Y'length));

	
	case fsm_state is
	
		when draw_single_pix_state => 
			dbb_signal.startcmd <= '1';
			dbb_signal.rcb_cmd <= '0' & DB_RCB(host_signal)(1 downto 0); 
			dbb_signal.X <= host_signal.x;
			dbb_signal.Y <= host_signal.y;

		when draw_line_state => 
			case DAO_state is
			 when line_pix_state => 
			 	dbb_signal.startcmd <= '1';
				 dbb_signal.rcb_cmd <= DB_RCB(host_signal); 
				 dbb_signal.X <= db_xout; 
				 dbb_signal.Y <= db_yout;

			 when others => null;
			end case;
--xy are current_xy when clearing screen
		when fill_state => 
			case clearscreen_state is
			 when fill_startpt_state =>
				dbb_signal.startcmd <= '1';
				dbb_signal.rcb_cmd <= dbrcb_move;
				dbb_signal.X <= X_current; 
				dbb_signal.Y <= Y_current;
--xy are from host CPU (opcode)
			 when fill_endpt_state =>
				dbb_signal.startcmd <= '1';
				dbb_signal.rcb_cmd <= DB_RCB(host_signal); 
				dbb_signal.X <= host_signal.x; 
				dbb_signal.Y <= host_signal.y; 

			 when others => null;
			end case;
		
		when others => null;	-- all other possibilities don't affect rcb interface
	
	end case;	
end process RCB_C; 

-------------------------------------------------------------------------------------------

--on next pos edge  send signal from host cpu 
host_signal_R : process
begin
	wait until clk'event and clk='1';
	if reset = '1' then
		host_signal <= select_host_signal(std_logic_vector(to_unsigned(0, hdb'length)));
	else

		
		if hdb_busy_signal = '0' then
			host_signal <= select_host_signal(hdb);
		end if;

	end if;
end process host_signal_R; 

-------------------------------------------------------------------------------------------

-- registers store current x y coordinates 
XY_REG: process
begin
	wait until clk'event and clk='1';
	if reset = '1' then
		X_current <= (others=>'0');
		Y_current <= (others=>'0');
	else
		if XYenable_reg='1' then
			X_current <= X_new;
			Y_current <= Y_new;
		end if;
	end if;
end process XY_REG;

-------------------------------------------------------------------------------------------

-- the combination to update the xy state registers
XY_REG_INPUT_C : process (fsm_state, DAO_state, host_signal, clearscreen_state, X_current, Y_current, dbb_delaycmd)
begin

	XYenable_reg <= '0';

	-- by default: xy_new are equal to current_xy registers
	X_new <= X_current;
	Y_new <= Y_current;

	-- if update xy instruction, enable register and set up data
	case fsm_state is
	 when set_xy_state =>
		XYenable_reg <= '1';
		X_new <= host_signal.x;
		Y_new <= host_signal.y;
	
	
	 when draw_line_state =>
	 	if DAO_state = line_startpt_state then
			XYenable_reg <= '1';
			X_new <= host_signal.x;
			Y_new <= host_signal.y;
		end if;

	-- update xy values  if clearscreen
	 when fill_state =>
	 	if clearscreen_state = fill_startpt_state and dbb_delaycmd='0' then -- reg update and transition to endpt state need to be synchronised since startpt to rcb is multiplexed from the xy register contents
			XYenable_reg <= '1';
			X_new <= host_signal.x;
			Y_new <= host_signal.y;
		end if;	 		

	 when others => null;
	end case;

end process XY_REG_INPUT_C;

-------------------------------------------------------------------------------------------



-- interface to the line drawing entity
DAO_INTERFACE_C: process (DAO_state, dbb_delaycmd, X_current, Y_current, host_signal)
begin

	-- set up starting xy points
	db_start <= '0';
	if DAO_state = line_startpt_state then
		db_start <= '1';
	end if;

	-- set final xy points
	line_end <= '0';
	if DAO_state = line_endpt_state then
		line_end <= '1';
	end if;

	
	db_disable <= '0';
	if DAO_state = line_pix_state then
		db_disable <=  dbb_delaycmd;
	end if;

	
	db_xbias <= '1';

	-- negx / negy / swapxy for drawing lines
	db_negx <= '0';
	if (unsigned(X_current) > unsigned(host_signal.x)) then
		db_negx <= '1';
	end if;

	db_negy <= '0';
	if (unsigned(Y_current) > unsigned(host_signal.y)) then
		db_negy <= '1';
	end if;

	 
	db_swapxy <= '0';
	if (diff(X_current, host_signal.x) < diff(Y_current, host_signal.y)) then
		db_swapxy <= '1';
	end if;


end process DAO_INTERFACE_C;

END rtl;      

