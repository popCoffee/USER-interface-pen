-- Project: Vector Display Processor


--    By     Andrew Kubal    

-- top-level Vector Display Processor
-- this file is fully synthesisable

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE work.project_pack.ALL;
USE work.config_pack.ALL;
use IEEE.MATH_REAL.ALL; --for log2 for auto width
USE work.ALL;

ENTITY vdp IS
	PORT(
		clk      : IN  std_logic;
		reset    : IN  std_logic;
		-- bus from host
		hdb      : IN  STD_LOGIC_VECTOR(VSIZE * 2 + 3 DOWNTO 0);
		dav      : IN  STD_LOGIC;
		hdb_busy : OUT STD_LOGIC;

		-- bus to VRAM
		vdin     : OUT STD_LOGIC_VECTOR(RAM_WORD_SIZE - 1 DOWNTO 0);
		vdout    : IN  STD_LOGIC_VECTOR(RAM_WORD_SIZE - 1 DOWNTO 0);
		vaddr    : OUT STD_LOGIC_VECTOR(7 downto 0); -- cannot be open port here, otherwise cannot synthesis
		vwrite   : OUT STD_LOGIC;

		-- to testbench
		finish   : OUT std_logic
	);
END vdp;

ARCHITECTURE rtl OF vdp IS

     signal dbb_bus : db_2_rcb;
      signal dbb_delaycmd : std_logic;
      signal db_finish : std_logic;
      signal  rcb_finish : std_logic;
BEGIN

 DB_WRITTEN: ENTITY work.db
      PORT MAP (
      clk => clk,
      reset => reset,
      -- bus from host
      hdb => hdb,
      dav => dav, 
      hdb_busy => hdb_busy,
      -- bus to rcb 
      dbb_bus => dbb_bus,
      dbb_delaycmd => dbb_delaycmd,
      -- signal to testbench
      db_finish => db_finish 
      );



   RCB_WRITTEN: ENTITY work.rcb
      PORT MAP (
    clk => clk,
    reset => reset,
    -- bus to DB
    dbb_bus => dbb_bus,
    dbb_delaycmd => dbb_delaycmd,

    -- signal to testbench
    rcb_finish => rcb_finish,
    -- bus to VRAM
    vdin => vdin,
    vdout => vdout,
    vaddr => vaddr,
    vwrite => vwrite
    );

finish <= '1' when db_finish='1' and rcb_finish='1' else '0';



END rtl;      


