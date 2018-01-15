-- Project : Vector Display Processor
-- Ram Control Block (RCB)
-- Author : RONG JI (Seperina)
-- Student ID:01090938

LIBRARY ieee;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;
USE work.project_pack.ALL;
use work.pix_cache_pack.all; -- this from exercises file 

ENTITY rcb IS
	GENERIC(vsize : INTEGER := 6);
	PORT(
		clk          : IN  std_logic;
		reset        : IN  std_logic;

		-- db connections
		dbb_bus      : IN db_2_rcb;
		dbb_delaycmd : OUT STD_LOGIC;

		-- vram connections
		vdout        : IN  STD_LOGIC_VECTOR(15 DOWNTO 0);
		vdin         : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		vwrite       : OUT STD_LOGIC;
		vaddr        : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);

		-- vdp connection
		rcb_finish   : OUT STD_LOGIC
	);
END rcb;

ARCHITECTURE rtl OF rcb IS
   
	signal rcb_state : rcb_state_t;
	SIGNAL rcb_ready : std_logic;
	signal flush_countdown : unsigned(FLUSH_LATENCY_COUNTER_SIZE-1 downto 0);

	signal store_xy : unsigned(vaddr'range);
	signal nextstore_xy : unsigned(vaddr'range);
	signal current_cmd : db_2_rcb;

----- pix_word_cache signals
	signal pw 			: std_logic;
	signal wen_all		: std_logic;
	signal pixnum		: unsigned(3 DOWNTO 0);
	signal pixopin		: pixop_t;
	signal store		: store_t; --out
	signal is_same 		: std_logic; --out
	
---- RMW signals
	signal start_rmw	: std_logic;
	signal delay_rmw	: std_logic; --out
	
	
--- clearscreen 
	signal fillstart_x	: xy_unsigned;
	signal fillstart_y	: xy_unsigned;
	signal lastfill		:std_logic;
	
----pix_word_cache
	signal pixopbus		: store_t;
	signal buswen	: std_logic;

	subtype block_t is unsigned(vaddr'length/2 - 1 downto 0);
	signal currentblock_x : block_t;
	signal currentblock_y : block_t;
  

	---- swapx, swapy, negx, negy	
	signal pixcorners : pixcorners_t;
	signal pixcorners_block : std_logic_vector(3 downto 0);


BEGIN

	Pix_word_cache : entity work.pix_word_cache port map(
	    clk => clk,
	    reset => reset,
	    pw => pw,
	    wen_all => wen_all,
	    pixnum => std_logic_vector(pixnum),
	    pixopin => pixopin,
	    pixopbus => pixopbus,
    	 buswen => buswen,
	    store => store,
	    is_same => is_same
    );

    Read_modify_write: entity work.read_modify_write port map(
		clk => clk,
		reset => reset,
		start => start_rmw,
		delay => delay_rmw,
		vwrite => vwrite,
		store => store,
		store_XY => store_xy,
		vdin => vdin,
 	  vdout => vdout,
  		vaddr => vaddr
	);
	
	---  interface with dbb
	dbb_delaycmd <= dbb_bus.startcmd and not (rcb_ready and lastfill);
	rcb_finish <= rcb_ready and lastfill and not dbb_bus.startcmd and not reset and is_same when flush_countdown = to_unsigned(0, flush_countdown'length) else '0';

    --  RCB FSM
	RCB_R1 : process
		--clear variables
		variable startblock_x : block_t;
		variable startblock_y : block_t;
		variable finalblock_x : block_t;
		variable finalblock_y : block_t;

		
		variable currentblockx_s : block_t;
		variable currentblocky_s : block_t;
		variable pixcorners_s : pixcorners_t;
	begin
		WAIT UNTIL clk'event AND clk = '1';

		-- decrement if nonzero
		if (flush_countdown > 0) then
			flush_countdown <= flush_countdown - 1;
		end if;

		if reset = '1' then
			rcb_state <= idle;
			store_xy <= to_unsigned(0, store_xy'length);
			flush_countdown <= to_unsigned(FLUSH_LATENCY, flush_countdown'length);
			fillstart_x <= xy_unsigned(to_unsigned(0,xy_unsigned'length));
			fillstart_y <= xy_unsigned(to_unsigned(0,xy_unsigned'length));
			lastfill <= '1';

		else

			-- update store xy if write to cache 
			if buswen = '1' or pw = '1'then
				flush_countdown <= to_unsigned(FLUSH_LATENCY, flush_countdown'length);
				store_xy <= nextstore_xy;
			end if ;

			case( rcb_state ) is 

				when idle => 
					
					rcb_state <= rcb_next_state(dbb_bus);
					current_cmd <= dbb_bus;

				when drawpix =>

			
					fillstart_x <= unsigned(current_cmd.x);
					fillstart_y <= unsigned(current_cmd.y);

					-- update state
					if rcb_ready = '1' then
						rcb_state <= rcb_next_state(dbb_bus);
						current_cmd <= dbb_bus;
					end if ;

				when clear => 

					-- initalise the fill sequencing
					-- vram word address 
					startblock_x := fillstart_x(fillstart_x'left downto 2);
					startblock_y := fillstart_y(fillstart_y'left downto 2);
					finalblock_x := unsigned(current_cmd.x(current_cmd.x'left downto 2));
					finalblock_y := unsigned(current_cmd.y(current_cmd.y'left downto 2));
					-- pix_num address
					pixcorners_s(0) := fillstart_x(1 downto 0);
					pixcorners_s(1) := fillstart_y(1 downto 0);
					pixcorners_s(2) := unsigned(current_cmd.x(1 downto 0));
					pixcorners_s(3) := unsigned(current_cmd.y(1 downto 0));

					--  clear from bottom left to top right
					if finalblock_x < startblock_x then
						swap_arrays(startblock_x, finalblock_x);
						swap_arrays(pixcorners_s(0), pixcorners_s(2));

					elsif finalblock_x = startblock_x and pixcorners_s(0) > pixcorners_s(2) then
						swap_arrays(pixcorners_s(0), pixcorners_s(2));
					end if ;

					if finalblock_y < startblock_y then
						swap_arrays(startblock_y, finalblock_y);
						swap_arrays(pixcorners_s(1), pixcorners_s(3));

					elsif finalblock_y = startblock_y and pixcorners_s(1) > pixcorners_s(3) then
						swap_arrays(pixcorners_s(1), pixcorners_s(3));
					end if ;

					pixcorners <= pixcorners_s;
					
					--  always start from bottom left,  use the bottom left corner pixels
					pixcorners_block <= (others => '0');
					pixcorners_block(0) <= '1';
					pixcorners_block(1) <= '1';

					-- Figure out if the top right pixel is only one block wide/tall
					if startblock_x = finalblock_x then
						pixcorners_block(2) <= '1';
					end if;

					if startblock_y = finalblock_y then
						pixcorners_block(3) <= '1';
					end if;
					
					currentblock_x <= startblock_x;
					currentblock_y<= startblock_y;

					--  a single block clear
					lastfill <= '0';
					if startblock_x = finalblock_x and startblock_y = finalblock_y then
					lastfill <= '1';
					end if;

					--assign finish point
					fillstart_x <= unsigned(current_cmd.x);
					fillstart_y <= unsigned(current_cmd.y);

					
					rcb_state <= do_clear;

				when do_clear =>

					if rcb_ready = '1' then

						
						if lastfill = '1' then
							rcb_state <= rcb_next_state(dbb_bus);
							current_cmd <= dbb_bus;
						end if;
					  
					  	-- Goto next block
						currentblockx_s := currentblock_x;
						currentblocky_s := currentblock_y;
						if currentblock_x = finalblock_x then
							currentblockx_s := startblock_x;
							currentblocky_s := currentblock_y + to_unsigned(1, currentblock_y'length);
						else
							currentblockx_s := currentblock_x + to_unsigned(1, currentblock_x'length);
						end if;

						
						if currentblockx_s = finalblock_x and currentblocky_s = finalblock_y then
							lastfill <= '1';
						end if;

					end if ;

					-- choose which pixel corner to use
					pixcorners_block <= (others => '0');
					if currentblockx_s = startblock_x then
						pixcorners_block(0) <= '1';
					end if;

					if currentblockx_s = startblock_y then
						pixcorners_block(1) <= '1';
					end if;

					if currentblockx_s = finalblock_x then
						pixcorners_block(2) <= '1';
					end if;

					if currentblocky_s = finalblock_y then
						pixcorners_block(3) <= '1';
					end if;

					currentblock_x <= currentblockx_s;
					currentblock_y<= currentblocky_s;

				when move =>
					
					
					fillstart_x <= unsigned(current_cmd.x);
					fillstart_y <= unsigned(current_cmd.y);

					--update RCB state
					rcb_state <= rcb_next_state(dbb_bus);
					current_cmd <= dbb_bus;

				when others => NULL;
			
			end case ;

		end if;

	end process RCB_R1;


	RCB_C1 : process(rcb_state, store_xy, wen_all, start_rmw, delay_rmw, current_cmd, pw, is_same, pixcorners, pixcorners_block, buswen,nextstore_xy, currentblock_y, currentblock_x)
		variable startpix_x : unsigned(1 downto 0) ;
		variable startpix_y : unsigned(1 downto 0) ;
		variable endpix_x : unsigned(1 downto 0) ;
		variable endpix_y : unsigned(1 downto 0) ;
	begin

		--default values
		pw <= '0';
		start_rmw <= '0';
		wen_all <= '0';
		buswen <= '0';
		rcb_ready <= '0';

		
  		pixopin <= pixop_t(std_logic_vector'("--"));
  		pixnum <= to_unsigned(0, pixnum'length);
  		pixopbus <= (others => pixop_t(std_logic_vector'("--")));
  		nextstore_xy <= to_unsigned(0, nextstore_xy'length);
  		
		case( rcb_state ) is

			when idle =>
				rcb_ready <= '1';

			
				if is_same = '0' then
					start_rmw <= '1';
				end if;
				
				wen_all <= start_rmw and not delay_rmw;
		
			when drawpix|do_clear =>

				--compute nextstore_xy
				case( rcb_state ) is
					when drawpix =>
						nextstore_xy <= to_unsigned(ram_addressf(xy_unsigned(current_cmd.x), xy_unsigned(current_cmd.y)), store_xy'length);
					when do_clear =>
						nextstore_xy <= currentblock_y & currentblock_x;
					when others => null;
				end case ;

				--find current block
				if pixcorners_block(0) = '1' then
					startpix_x := pixcorners(0);
				else
					startpix_x := to_unsigned(0, startpix_x'length);
				end if ;

				if pixcorners_block(1) = '1' then
					startpix_y := pixcorners(1);
				else
					startpix_y := to_unsigned(0, startpix_y'length);
				end if ;

				if pixcorners_block(2) = '1' then
					endpix_x := pixcorners(2);
				else
					endpix_x := to_unsigned(3, endpix_x'length);
				end if ;

				if pixcorners_block(3) = '1' then
					endpix_y := pixcorners(3);
				else
					endpix_y := to_unsigned(3, endpix_y'length);
				end if ;

				-- generate fill block
				pixopbus <= (others => same);
				loopy : for y in 0 to 4 loop
					loopx : for x in 0 to 4 loop
						if x >= startpix_x and x <= endpix_x and y >= startpix_y and y <= endpix_y then
							pixopbus((x mod 4) + 4 * (y mod 4)) <= pixop_t(current_cmd.rcb_cmd(1 downto 0));
						end if ;
					end loop ; 
				end loop ;

				-- modify cache if incomming xy address mismatched cached word
				if not (store_xy = nextstore_xy) and is_same = '0' then
					start_rmw <= '1';
				end if;

				-- clear cache on sucessful RMW transfer
				wen_all <= start_rmw and not delay_rmw;

				-- store pixel command in cache if correct word is loaded, or if cache will be flushed or is clean
				if (store_xy = nextstore_xy) or wen_all = '1' or is_same = '1' then
					case( rcb_state ) is
						when do_clear => buswen <= '1';
						when drawpix => pw <= '1';
						when others => NULL;
					end case ;
				end if ;
				
				-- decipher pixel address from command
				pixnum <= to_unsigned(pixnum_addressf(unsigned(current_cmd.x), unsigned(current_cmd.y)), pixnum'length);

				-- pass pixop from command
				pixopin <= pixop_t(current_cmd.rcb_cmd(1 downto 0));
				
			 
				rcb_ready <= pw or buswen;
			
			when clear => 
			
				rcb_ready <= '0';

			when move =>
			
				rcb_ready <= '1';

			when others => NULL;
		
		end case ;

	end process RCB_C1;

END rtl;      