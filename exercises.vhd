-- Exe1 : draw octant block

LIBRARY IEEE;

USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY draw_octant IS
  GENERIC( vsize: INTEGER := 12); 
  PORT(
    clk, disable,init,draw, xbias : IN  std_logic;
    xin, yin                 : IN  std_logic_vector(vsize-1 DOWNTO 0);
    done                     : OUT std_logic;
    x, y                     : OUT std_logic_vector(vsize-1 DOWNTO 0)
    );
END ENTITY draw_octant;

ARCHITECTURE behav OF draw_octant IS

  SIGNAL done1                    : std_logic; 
  SIGNAL x1, y1                   : unsigned(vsize-1 DOWNTO 0); 
  SIGNAL xincr, yincr, xnew, ynew : unsigned(vsize-1 DOWNTO 0);

  SIGNAL error                    : signed(vsize DOWNTO 0);
  SIGNAL err1, err2               : signed(vsize+1 DOWNTO 0);

BEGIN

  x    <= std_logic_vector(x1);
  y    <= std_logic_vector(y1);
  done <= done1;

  C1 : PROCESS(error, xincr, yincr, x1, y1, xnew, ynew, init, draw)
    
  BEGIN

    err1 <= abs(resize(error, err1'length) + signed('0' & yincr)); 

    err2 <= abs(resize(error, err2'length) + signed('0' & yincr) - signed('0' & xincr)); 

    done1 <= '0';
    
    IF x1=xnew and y1=ynew and init = '0' and draw = '0' THEN
      done1 <= '1';
    END IF;

  END PROCESS C1;

  R1 : PROCESS
  BEGIN
    WAIT UNTIL clk'event AND clk = '1';
    if disable ='0' then
      IF init = '1' THEN
        x1    <= unsigned(xin);
        y1    <= unsigned(yin);
        xincr <= (OTHERS => '0');
        yincr <= (OTHERS => '0');
        xnew  <= unsigned(xin);
        ynew  <= unsigned(yin);
        error <= (OTHERS => '0');
        
      ELSIF draw = '1' THEN
        xincr <= unsigned(xin)-x1; 
        yincr <= unsigned(yin)-y1;
        xnew  <= unsigned(xin);
        ynew  <= unsigned(yin);
        
      ELSIF done1 = '1' THEN
        NULL;                       
        
      ELSIF err1 > err2 OR (err1 = err2 AND xbias = '0') THEN
        -- draw new pixel in  xy direction
        y1    <= y1 + 1;
        x1    <= x1 + 1;
        error <= error + signed('0' & yincr) - signed('0' & xincr);
        
      ELSIF err1 < err2 OR (err1 = err2 AND xbias = '1') THEN
        -- draw new pixel in x direction
        x1    <= x1 + 1;
        error <= error + signed('0' & yincr);
      END IF;
    end if;
  END PROCESS R1;

END ARCHITECTURE behav;
---------------------------------------------------------------------------------------------------------------------------
--Ex2: draw any octant

LIBRARY IEEE;

USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE work.ALL;

ENTITY draw_any_octant IS

  -- swapxy negx  negy  octant
  --  0      0      0     ENE
  --  1      0      0     NNE
  --  1      1      0     NNW
  --  0      1      0     WNW
  --  0      1      1     WSW
  --  1      1      1     SSW
  --  1      0      1     SSE
  --  0      0      1     ESE

  -- swapxy: x & y swap round on inputs & outputs
  -- negx:   invert bits of x on inputs & outputs
  -- negy:   invert bits of y on inputs & outputs

  -- xbias always give bias in x axis direction, so swapxy must invert xbias
  GENERIC(
    vsize: INTEGER := 12
  );
  
  PORT(
    clk, disable, init, draw, xbias : IN  std_logic;
    xin, yin                 : IN  std_logic_vector(vsize-1 DOWNTO 0);
    done                     : OUT std_logic;
    x, y                     : OUT std_logic_vector(vsize-1 DOWNTO 0);
    swapxy, negx, negy       : IN  std_logic
    );
END ENTITY draw_any_octant;

ARCHITECTURE behav OF draw_any_octant IS
  SIGNAL xin_inter, yin_inter, inter_xo, inter_yo : std_logic_vector(vsize-1 DOWNTO 0);
  SIGNAL xbias_do, swapxy_do, negx_do, negy_do : std_logic;
  signal store_negx, store_negy, store_swapxy, store_xbias : std_logic;
  signal sel_negx, sel_negy, sel_swapxy, sel_xbias : std_logic;
BEGIN
  
  DO: ENTITY draw_octant 
    GENERIC MAP (vsize) 
    PORT MAP (
      clk,
      disable,
      init,
      draw,
      xbias_do,
      xin_inter,
      yin_inter,
      done,
      inter_xo,
      inter_yo);
      
xbias_do <= '1' xor sel_swapxy xor sel_negx xor sel_negy;
--xbias_do <= sel_xbias xor sel_swapxy;



sel_xbias <= xbias WHEN init='1' ELSE store_xbias;
sel_swapxy <= swapxy WHEN init='1' ELSE store_swapxy;
sel_negx <= negx WHEN init='1' ELSE store_negx;
sel_negy <= negy WHEN init='1' ELSE store_negy;

----------------------------------------------------------------

  R0: process
  begin
    wait until clk'event and clk='1';
    if disable='0' and init='1' then

    store_xbias <= xbias;
    store_swapxy <= swapxy;
    store_negx <= negx;
    store_negy <= negy;

    end if;
  end process R0;

 -----------------------------------------------------------------
 -- swap and invertor for xin,yin combinational process
  C1: PROCESS(xin, yin, sel_negx, sel_negy, sel_swapxy)
    VARIABLE xout, yout : std_logic_vector(vsize-1 DOWNTO 0);
  BEGIN
    xout := xin;
    yout := yin;
    
    IF sel_negx = '1' THEN
      xout := not xin;
    END IF;
    
    IF sel_negy = '1' THEN
      yout := not yin;
    END IF;
    
    xin_inter <= xout;
    yin_inter <= yout;
    IF sel_swapxy = '1' THEN
      xin_inter <= yout;
      yin_inter <= xout;
    END IF;
  END PROCESS C1;
    
  ------------------------------------
    
  R1: PROCESS
  
  BEGIN
    WAIT UNTIL clk'EVENT and clk = '1';
    if disable='0' then
      negx_do <= sel_negx;
      negy_do <= sel_negy;
      swapxy_do <= sel_swapxy;   
    end if;
  END PROCESS R1;
  
  ------------------------------------
  -- swap and invertor for xout,yout combinational process
  C2: PROCESS(inter_xo, inter_yo, negx_do, negy_do, swapxy_do)
    VARIABLE xout, yout, temp : std_logic_vector(vsize-1 DOWNTO 0);
  BEGIN

    xout := inter_xo;
    yout := inter_yo;

    if swapxy_do = '1' then
      temp := xout;
      xout := yout;
      yout := temp;


    end if;

    IF negx_do = '1' THEN
      xout := not xout;
    END IF;
    
    IF negy_do = '1' THEN
      yout := not yout;
    END IF;
    
    x <= xout;
    y <= yout;
  END PROCESS C2;
  
END ARCHITECTURE behav;

-----------------------------------------------------------------------------------------------------------
--Ex4:-- pix word cache pack

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;  

PACKAGE pix_cache_pack IS
  TYPE pixop_t IS ARRAY (1 DOWNTO 0) OF std_logic;

  CONSTANT same   : pixop_t := "00";
  CONSTANT black  : pixop_t := "10";
  CONSTANT white  : pixop_t := "01";
  CONSTANT invert : pixop_t := "11";

  TYPE store_t IS ARRAY (0 TO 15) OF pixop_t; 

   ALIAS slv IS std_logic_vector;
   FUNCTION to_uint( x: slv) RETURN integer;
   function invertop( x: pixop_t) return pixop_t;
   constant all_same 	: store_t := (others => same);
END PACKAGE pix_cache_pack;
------------------------------------------------------------------------------

package body pix_cache_pack is

	FUNCTION to_uint( x: slv) RETURN integer IS
	BEGIN
		RETURN to_integer(unsigned(x));
	END;
	
	function invertop( x: pixop_t) return pixop_t is
	begin
		case x is
			when same => return invert;
			when black => return white;
			when white => return black;
			when invert => return same;
			when others => return "XX"; -- this is important for debuging 
		end case;
	end;

end package body pix_cache_pack;
------------------------------------------------------------------------------------------------------
LIBRARY IEEE;
USE ieee.std_logic_1164.ALL;
--USE IEEE.numeric_std.ALL;     -- add unsigned, signed
USE work.pix_cache_pack.ALL;

ENTITY pix_word_cache IS


  PORT(
    clk, reset, pw, wen_all : IN  std_logic;
    pixnum                  : IN  std_logic_vector(3 DOWNTO 0);
    pixopin                 : IN  pixop_t;
    pixopbus		    : in  store_t;
    buswen		    : in  std_logic;
    store                   : OUT store_t;
    is_same                 : OUT std_logic
    );

END pix_word_cache;


ARCHITECTURE rtl OF pix_word_cache IS

	signal store_ram 	: store_t;

BEGIN

  
	store <= store_ram;
	
	is_same <= '1' when (store_ram = all_same) else '0';
	
	R1 : PROCESS
		variable temp_ram	: store_t; -- for update immediately
	BEGIN
		WAIT UNTIL clk'EVENT AND clk = '1';
		
		--use a temp variable for ram so pw = 1, wen_all = 1 case can be done in 1 cycle
		temp_ram := store_ram;
		
		
		if reset = '1' or wen_all = '1' then
			temp_ram := all_same;
		end if;

		-- update pixel(s) if pw/buswen is asserted, but only if not in reset
		if reset = '0' then
      -- write instruction to store_ram
			if buswen = '1'then
				loop1 : for i in store_t'range loop
					case pixopbus(i) is
						when same 	=> NULL;
						when black 	=> temp_ram(i) := black;
						when white 	=> temp_ram(i) := white;
						when invert => temp_ram(i) := invertop(temp_ram(i)); -- call invert function 
						when others => NULL;
					end case;
				end loop ; 

			elsif pw = '1' then
				case pixopin is
					when same 	=> NULL;
					when black 	=> temp_ram(to_uint(pixnum)) := black;
					when white 	=> temp_ram(to_uint(pixnum)) := white;
					when invert => temp_ram(to_uint(pixnum)) := invertop(temp_ram(to_uint(pixnum)));
					when others => NULL;
				end case;

			end if ;
		end if ;
		
		store_ram <= temp_ram;
		
	END PROCESS R1;
	
END ARCHITECTURE rtl;
--------------------------------------------------------------------------------------------------------------------------------------
--exe3 ram_fsm

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;

package ram_fsm_pack is
	TYPE	state_t IS (m3, m2, m1, mx);
	
	function bool_to_std_logic(input : boolean) return std_logic;
	function delay_f(
		state: state_t;
		start: std_logic
		) return std_logic;
	function vwrite_f(state: state_t) return std_logic;
	function generate_output(
		state: state_t;
		start: std_logic
		)return std_logic_vector;
	function calc_next_state(
		state: state_t;
		start: std_logic;
		reset: std_logic
		) return state_t;
	
end package ram_fsm_pack;

package body ram_fsm_pack is

	function bool_to_std_logic(input : boolean) return std_logic is
	begin
		if (input) then return '1';
		else return '0';
		end if;
	end bool_to_std_logic;
	
	
	function vwrite_f(state: state_t) return std_logic is
	begin
		if state = m2 then return '1'; --- here is important state =m2 not m3 as vwrite will be assert next clock cycle
		else return '0';
		end if;
	end vwrite_f;
	
	
	function delay_f(
		state: state_t;
		start: std_logic
		) return std_logic is
	begin
	
		if not (state = mx or state = m3) then
			return start;
		else
			return '0';
		end if;
		
	end delay_f;
	
	
	function generate_output(
		state: state_t;
		start: std_logic
		) return std_logic_vector is
	begin
		return (delay_f(state, start), vwrite_f(state));
	end generate_output;
	
	
	function calc_next_state(
		state: state_t;
		start: std_logic;
		reset: std_logic
		) return state_t is
		
		variable next_state : state_t;
	begin
		
		--by default state stays the same
		next_state := state;
		
		CASE state IS
		
			WHEN mx =>
				if (start = '1') then
					next_state := m1;
				end if;
			WHEN m1 => next_state := m2;
			WHEN m2 => next_state := m3;
			WHEN m3 =>
				if (start = '1') then
					next_state := m1;
				else
					next_state := mx;
				end if;
			
		END CASE;
		

		if (reset = '1') then
			next_state := mx;
		end if;
		
		return next_state;
	end calc_next_state;
	
end package body ram_fsm_pack;
-------------------------------------------------
LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
use work.ram_fsm_pack.all;

ENTITY ram_fsm IS
	PORT(
		clk, reset, start : IN std_logic;
		delay, vwrite : OUT std_logic
	);
END ENTITY ram_fsm;

ARCHITECTURE behav OF ram_fsm IS
	SIGNAL state : state_t;
BEGIN

	-- Delay and vwwrite is from the ouput of generate_output function 
	(delay, vwrite) <= generate_output(state, start);
	

	FSM_R1 : process
	begin
		WAIT UNTIL clk'event AND clk = '1';
		
		state <= calc_next_state(state, start, reset);
		
	end process FSM_R1;

END ARCHITECTURE behav;
--------------------------------------------------------------------------------------
--Exe 3 rmw for ram fsm
        library ieee ;
	use ieee.std_logic_1164.all ;
	use ieee.numeric_std.all ;
	use work.project_pack.all;
	USE work.pix_cache_pack.ALL;

entity read_modify_write is
  	port (
		clk, reset, start 	: IN std_logic;
		delay, vwrite 		: OUT std_logic;
		store 			: IN store_t;
		store_XY		: IN unsigned; -- open port, exact size depends on VSIZE
		vdin   : OUT STD_LOGIC_VECTOR(RAM_WORD_SIZE-1 DOWNTO 0);
 	  vdout  : IN  STD_LOGIC_VECTOR(RAM_WORD_SIZE-1 DOWNTO 0);
  		vaddr  : OUT STD_LOGIC_VECTOR -- open port, exact size depends on VSIZE

  	) ;
end entity read_modify_write;

architecture arch of read_modify_write is
	signal delay_signal : std_logic;
	signal localstore : store_t;
begin


	RAMFSM: entity work.ram_fsm port map(
		clk => clk,
		reset => reset,
		start => start,
		delay => delay_signal,
		vwrite => vwrite
	);

	delay <= delay_signal;

	R1 : process
	begin
		WAIT UNTIL clk'event AND clk = '1';

		--sample and hold storeXY = vaddr on start of operation
		if start = '1' and delay_signal = '0' then
			localstore <= store;
			vaddr <= std_logic_vector(store_XY);
		end if ;
		
	end process R1;

	C1 : process (vdout, localstore)
	begin

		loop1 : for i in vdin'range loop
			
			case( localstore(i) ) is
				when same => vdin(i) <= vdout(i);
				when black => vdin(i) <= '1';
				when white => vdin(i) <= '0';
				when invert => vdin(i) <= not vdout(i);
				when others => NULL;
			end case ;

		end loop ; 

	end process C1;

end architecture arch;
