--
-- Written by Synplicity
-- Product Version "I-2013.09-SP1 "
-- Program "Synplify Premier", Mapper "maprc, Build 1911R"
-- Mon Mar 21 16:38:13 2016
--

--
-- Written by Synplify Premier version Build 1911R
-- Mon Mar 21 16:38:13 2016
--

--
library ieee, cycloneii;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library synplify;
use synplify.components.all;
use cycloneii.cycloneii_components.all;

entity ram_fsm is
port(
  clk_c :  in std_logic;
  state_s1_0_a3 :  out std_logic;
  \state_srsts_0_1__g1\ :  out std_logic;
  delay_i :  out std_logic;
  start_rmw_d1_i_0_o2 :  in std_logic;
  \vaddr_1_0_0__g2\ :  out std_logic;
  reset_c :  in std_logic);
end ram_fsm;

architecture beh of ram_fsm is
  signal devclrn : std_logic := '1';
  signal devpor : std_logic := '1';
  signal devoe : std_logic := '0';
  signal STATE : std_logic_vector(1 downto 0);
  signal \STATE_SRSTS_0_1__G0_X\ : std_logic ;
  signal \STATE_SRSTS_0_0__G0\ : std_logic ;
  signal N_9 : std_logic ;
  signal N_8 : std_logic ;
  signal N_7 : std_logic ;
  signal N_6 : std_logic ;
  signal GND : std_logic ;
  signal VCC : std_logic ;
begin
\STATE_1_\: cycloneii_lcell_ff port map (
regout => STATE(1),
datain => \STATE_SRSTS_0_1__G0_X\,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\STATE_0_\: cycloneii_lcell_ff port map (
regout => STATE(0),
datain => \STATE_SRSTS_0_0__G0\,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
STATE_S1_0_A3_Z20: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100010001000100")
port map (
combout => state_s1_0_a3,
dataa => STATE(1),
datab => STATE(0));
\STATE_RNIJ5RP_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110011001100110")
port map (
combout => \state_srsts_0_1__g1\,
dataa => STATE(1),
datab => STATE(0));
DELAY_I_Z22: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111100111111001")
port map (
combout => delay_i,
dataa => STATE(0),
datab => STATE(1),
datac => start_rmw_d1_i_0_o2);
\STATE_RNIV1L72_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000100100001001")
port map (
combout => \vaddr_1_0_0__g2\,
dataa => STATE(0),
datab => STATE(1),
datac => start_rmw_d1_i_0_o2);
\STATE_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110111110101110")
port map (
combout => \STATE_SRSTS_0_0__G0\,
dataa => reset_c,
datab => STATE(1),
datac => STATE(0),
datad => start_rmw_d1_i_0_o2);
\STATE_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110101111101011")
port map (
combout => \STATE_SRSTS_0_1__G0_X\,
dataa => reset_c,
datab => STATE(0),
datac => STATE(1));
GND <= '0';
VCC <= '1';
end beh;

--
library ieee, cycloneii;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library synplify;
use synplify.components.all;
use cycloneii.cycloneii_components.all;

entity draw_octant is
port(
x1_5 :  out std_logic;
x1_4 :  out std_logic;
x1_3 :  out std_logic;
x1_2 :  out std_logic;
x1_0 :  out std_logic;
x1_1 :  out std_logic;
y1_5 :  out std_logic;
y1_4 :  out std_logic;
y1_3 :  out std_logic;
y1_2 :  out std_logic;
y1_0 :  out std_logic;
y1_1 :  out std_logic;
xin_do_0 :  in std_logic;
xin_do_1 :  in std_logic;
xin_do_2 :  in std_logic;
xin_do_3 :  in std_logic;
xin_do_4 :  in std_logic;
xin_do_5 :  in std_logic;
yin_do_0 :  in std_logic;
yin_do_1 :  in std_logic;
yin_do_2 :  in std_logic;
yin_do_3 :  in std_logic;
yin_do_4 :  in std_logic;
yin_do_5 :  in std_logic;
DAO_state_1 :  in std_logic;
DAO_state_0 :  in std_logic;
yout_1_2 :  in std_logic;
yout_1_1 :  in std_logic;
yout_1_0 :  in std_logic;
xout_1_0 :  in std_logic;
X_current_2 :  in std_logic;
X_current_3 :  in std_logic;
X_current_1 :  in std_logic;
X_current_0 :  in std_logic;
Y_current_2 :  in std_logic;
Y_current_5 :  in std_logic;
Y_current_1 :  in std_logic;
Y_current_0 :  in std_logic;
Y_0 :  in std_logic;
X_0 :  in std_logic;
temp_ram_8_10_0_iv_0_0_a3_0 :  in std_logic;
clk_c :  in std_logic;
DAO_state_s0_0_a3 :  in std_logic;
lt5 :  in std_logic;
xin_do_0_376_x4_1 :  in std_logic;
lt5_0 :  in std_logic;
saved_negx :  in std_logic;
saved_swapxy :  in std_logic;
xin_do_0_376_x4 :  in std_logic;
muxed_negx :  in std_logic;
muxed_negy :  in std_logic;
saved_negy :  in std_logic;
yin_do_740_x4 :  in std_logic;
lt5_1 :  in std_logic;
xin_do_428_x4_2 :  in std_logic;
xin_do_1_324_x4 :  in std_logic;
xin_do_1_324_x4_1 :  in std_logic;
yin_do_2_584_x4 :  in std_logic;
xin_do_2_272_x4_1 :  in std_logic;
yin_do_3_532_x4 :  in std_logic;
xin_do_3_220_x4_2 :  in std_logic;
yin_do_4_480_x4 :  in std_logic;
xin_do_4_168_x4_2 :  in std_logic;
db_disable_0 :  in std_logic;
G_1143 :  out std_logic;
rcb_ready25 :  in std_logic;
un5_x1_i_o3 :  out std_logic;
xbias_do :  in std_logic);
end draw_octant;

architecture beh of draw_octant is
signal devclrn : std_logic := '1';
signal devpor : std_logic := '1';
signal devoe : std_logic := '0';
signal ERROR : std_logic_vector(6 downto 0);
signal YINCR : std_logic_vector(5 downto 0);
signal XINCR : std_logic_vector(5 downto 0);
signal YNEW : std_logic_vector(5 downto 0);
signal XNEW : std_logic_vector(5 downto 0);
signal INF_ABS1 : std_logic_vector(7 downto 1);
signal INF_ABS0 : std_logic_vector(7 downto 1);
signal UN3_XX_MM : std_logic_vector(6 downto 1);
signal UN1_ERROR_1_V : std_logic_vector(5 downto 0);
signal UN1_ERROR_1_V_I : std_logic_vector(6 to 6);
signal UN1_ERROR_1_V_0_I : std_logic_vector(5 downto 0);
signal INF_ABS1_A_1_COUT : std_logic_vector(5 downto 0);
signal INF_ABS1_A_1 : std_logic_vector(7 downto 1);
signal INF_ABS0_A_0_COUT : std_logic_vector(5 downto 0);
signal INF_ABS0_A_0 : std_logic_vector(7 downto 1);
signal UN3_XX : std_logic_vector(6 downto 2);
signal UN3_YY : std_logic_vector(1 to 1);
signal Y1_N5_0_0_1110_I_X4 : std_logic ;
signal Y1_N5_0_0_1110_I_M4 : std_logic ;
signal UN1_DISABLE_3 : std_logic ;
signal Y1_N4_0_M3_0_1064_I_X4 : std_logic ;
signal Y1_N4_0_M3_0_1064_I_M4 : std_logic ;
signal Y1_N3_0_M3_0_1018_I_X4 : std_logic ;
signal Y1_N3_0_M3_0_1018_I_M4 : std_logic ;
signal Y1_N2_0_M3_0_972_X4 : std_logic ;
signal Y1_N2_0_M3_0_972_M4 : std_logic ;
signal Y1_E0X : std_logic ;
signal X1_N5_0_0_926_I_X4 : std_logic ;
signal X1_N5_0_0_926_I_M4 : std_logic ;
signal G_1179 : std_logic ;
signal X1_N4_0_M3_0_881_I_X4 : std_logic ;
signal X1_N4_0_M3_0_881_I_M4 : std_logic ;
signal X1_N3_0_M3_0_836_I_X4 : std_logic ;
signal X1_N3_0_M3_0_836_I_M4 : std_logic ;
signal X1_N2_0_M3_0_791_X4 : std_logic ;
signal X1_N2_0_M3_0_791_M4 : std_logic ;
signal X1_E0X : std_logic ;
signal UN1_ERROR_1_ADD6 : std_logic ;
signal UN1_ERROR_1_ADD5 : std_logic ;
signal UN1_ERROR_1_ADD4 : std_logic ;
signal UN1_ERROR_1_ADD3 : std_logic ;
signal UN1_ERROR_1_ADD2 : std_logic ;
signal UN1_ERROR_1_ADD1 : std_logic ;
signal UN1_ERROR_1_ADD0 : std_logic ;
signal \YINCR_3_0_5__M3\ : std_logic ;
signal \YINCR_3_0_4__M3\ : std_logic ;
signal \YINCR_3_0_3__M3\ : std_logic ;
signal \YINCR_3_0_2__M3\ : std_logic ;
signal \YINCR_3_0_1__M3\ : std_logic ;
signal \YINCR_3_0_0__M3\ : std_logic ;
signal \XINCR_2_0_5__M3\ : std_logic ;
signal \XINCR_2_0_4__M3\ : std_logic ;
signal \XINCR_2_0_3__M3\ : std_logic ;
signal \XINCR_2_0_2__M3\ : std_logic ;
signal \XINCR_2_0_1__M3\ : std_logic ;
signal \XINCR_2_0_0__M3\ : std_logic ;
signal YIN_DO_740_M2 : std_logic ;
signal XNEW_0_SQMUXA_0_A3 : std_logic ;
signal YIN_DO_0_688_M2 : std_logic ;
signal YIN_DO_1_636_M2 : std_logic ;
signal YIN_DO_2_584_M2 : std_logic ;
signal YIN_DO_3_532_M2 : std_logic ;
signal YIN_DO_4_480_M2 : std_logic ;
signal XIN_DO_428_M2 : std_logic ;
signal XIN_DO_0_376_M2 : std_logic ;
signal XIN_DO_1_324_M2 : std_logic ;
signal XIN_DO_2_272_M2 : std_logic ;
signal XIN_DO_3_220_M2 : std_logic ;
signal XIN_DO_4_168_M2 : std_logic ;
signal X1_N1_0_X3 : std_logic ;
signal Y1_N1_0_X3 : std_logic ;
signal G_1181 : std_logic ;
signal LT_0 : std_logic ;
signal RESULT_1_ADD0 : std_logic ;
signal UN12_ERR1_ADD0 : std_logic ;
signal LT_1 : std_logic ;
signal LT_2 : std_logic ;
signal LT_3 : std_logic ;
signal LT_4 : std_logic ;
signal LT_5 : std_logic ;
signal LT_6 : std_logic ;
signal LT7 : std_logic ;
signal LT7_COUT : std_logic ;
signal UN1_ERROR_1_0_ADD0 : std_logic ;
signal UN1_ERROR_1_0_CARRY_0 : std_logic ;
signal UN1_ERROR_1_0_ADD0_START_COUT : std_logic ;
signal UN1_ERROR_1_0_ADD1 : std_logic ;
signal UN1_ERROR_1_0_CARRY_1 : std_logic ;
signal UN1_ERROR_1_0_ADD2 : std_logic ;
signal UN1_ERROR_1_0_CARRY_2 : std_logic ;
signal UN1_ERROR_1_0_ADD3 : std_logic ;
signal UN1_ERROR_1_0_CARRY_3 : std_logic ;
signal UN1_ERROR_1_0_ADD4 : std_logic ;
signal UN1_ERROR_1_0_CARRY_4 : std_logic ;
signal UN1_ERROR_1_0_ADD5 : std_logic ;
signal UN1_ERROR_1_0_CARRY_5 : std_logic ;
signal UN1_ERROR_1_0_ADD6 : std_logic ;
signal UN13_DISABLE_0 : std_logic ;
signal UN1_ERROR_1_CARRY_0 : std_logic ;
signal UN1_ERROR_1_CARRY_1 : std_logic ;
signal UN1_ERROR_1_CARRY_2 : std_logic ;
signal UN1_ERROR_1_CARRY_3 : std_logic ;
signal UN1_ERROR_1_CARRY_4 : std_logic ;
signal UN1_ERROR_1_CARRY_5 : std_logic ;
signal GND : std_logic ;
signal RESULT_1_ADD1 : std_logic ;
signal RESULT_1_ADD3 : std_logic ;
signal RESULT_1_ADD2 : std_logic ;
signal RESULT_1_ADD5 : std_logic ;
signal RESULT_1_ADD4 : std_logic ;
signal RESULT_1_ADD6 : std_logic ;
signal RESULT_1_ADD7 : std_logic ;
signal XINCR_3_ADD0 : std_logic ;
signal XINCR_3_CARRY_0 : std_logic ;
signal XINCR_3_ADD0_START_COUT : std_logic ;
signal XINCR_3_ADD1 : std_logic ;
signal XINCR_3_CARRY_1 : std_logic ;
signal XINCR_3_ADD2 : std_logic ;
signal XINCR_3_CARRY_2 : std_logic ;
signal XINCR_3_ADD3 : std_logic ;
signal XINCR_3_CARRY_3 : std_logic ;
signal XINCR_3_ADD4 : std_logic ;
signal XINCR_3_CARRY_4 : std_logic ;
signal XINCR_3_ADD5 : std_logic ;
signal YINCR_2_ADD0 : std_logic ;
signal YINCR_2_CARRY_0 : std_logic ;
signal YINCR_2_ADD0_START_COUT : std_logic ;
signal YINCR_2_ADD1 : std_logic ;
signal YINCR_2_CARRY_1 : std_logic ;
signal YINCR_2_ADD2 : std_logic ;
signal YINCR_2_CARRY_2 : std_logic ;
signal YINCR_2_ADD3 : std_logic ;
signal YINCR_2_CARRY_3 : std_logic ;
signal YINCR_2_ADD4 : std_logic ;
signal YINCR_2_CARRY_4 : std_logic ;
signal YINCR_2_ADD5 : std_logic ;
signal UN12_ERR1_CARRY_0 : std_logic ;
signal UN12_ERR1_ADD1 : std_logic ;
signal UN12_ERR1_CARRY_1 : std_logic ;
signal UN12_ERR1_ADD2 : std_logic ;
signal UN12_ERR1_CARRY_2 : std_logic ;
signal UN12_ERR1_ADD3 : std_logic ;
signal UN12_ERR1_CARRY_3 : std_logic ;
signal UN12_ERR1_ADD4 : std_logic ;
signal UN12_ERR1_CARRY_4 : std_logic ;
signal UN12_ERR1_ADD5 : std_logic ;
signal UN12_ERR1_CARRY_5 : std_logic ;
signal UN12_ERR1_ADD6 : std_logic ;
signal UN12_ERR1_CARRY_6 : std_logic ;
signal UN12_ERR1_ADD7 : std_logic ;
signal RESULT_1_CARRY_0 : std_logic ;
signal RESULT_1_ADD0_START_COUT : std_logic ;
signal RESULT_1_CARRY_1 : std_logic ;
signal RESULT_1_CARRY_2 : std_logic ;
signal RESULT_1_CARRY_3 : std_logic ;
signal RESULT_1_CARRY_4 : std_logic ;
signal RESULT_1_CARRY_5 : std_logic ;
signal RESULT_1_CARRY_6 : std_logic ;
signal VCC : std_logic ;
signal UN1_DISABLE_1_I_A3 : std_logic ;
signal XIN_DO_0_376_M4 : std_logic ;
signal XIN_DO_0_376_M4_0 : std_logic ;
signal YIN_DO_0_688_M4 : std_logic ;
signal YIN_DO_0_688_M4_0 : std_logic ;
signal YIN_DO_740_M4_0 : std_logic ;
signal YIN_DO_740_M4 : std_logic ;
signal YIN_DO_1_636_M4_0 : std_logic ;
signal YIN_DO_1_636_M4 : std_logic ;
signal YIN_DO_2_584_M4_0 : std_logic ;
signal YIN_DO_2_584_M4 : std_logic ;
signal YIN_DO_3_532_M4_0 : std_logic ;
signal YIN_DO_3_532_M4 : std_logic ;
signal YIN_DO_4_480_M4_0 : std_logic ;
signal YIN_DO_4_480_M4 : std_logic ;
signal XIN_DO_428_M4_0 : std_logic ;
signal XIN_DO_428_M4 : std_logic ;
signal XIN_DO_1_324_M4_0 : std_logic ;
signal XIN_DO_1_324_M4 : std_logic ;
signal XIN_DO_2_272_M4_0 : std_logic ;
signal XIN_DO_2_272_M4 : std_logic ;
signal XIN_DO_3_220_M4_0 : std_logic ;
signal XIN_DO_3_220_M4 : std_logic ;
signal XIN_DO_4_168_M4_0 : std_logic ;
signal XIN_DO_4_168_M4 : std_logic ;
signal UN5_X1_I_O3_0_0 : std_logic ;
signal UN5_X1_I_O3_1 : std_logic ;
signal UN5_X1_I_O3_2 : std_logic ;
signal UN5_X1_I_O3_3 : std_logic ;
signal UN5_X1_I_O3_4 : std_logic ;
signal UN5_X1_I_O3_5 : std_logic ;
signal X1_N4_0_O3 : std_logic ;
signal Y1_N4_0_O3 : std_logic ;
signal UN11_DISABLE_6_0 : std_logic ;
signal UN11_DISABLE_6_1 : std_logic ;
signal UN11_DISABLE_6_3 : std_logic ;
signal UN11_DISABLE_6_4 : std_logic ;
signal UN5_X1_I_O3_9 : std_logic ;
signal UN5_X1_I_O3_12 : std_logic ;
signal UN11_DISABLE_6 : std_logic ;
signal UN13_DISABLE_0_1 : std_logic ;
signal UN15_DISABLE_0 : std_logic ;
signal X1_0_0 : std_logic ;
signal X1_1_0 : std_logic ;
signal X1_2_0 : std_logic ;
signal X1_3_0 : std_logic ;
signal X1_4_0 : std_logic ;
signal X1_5_0 : std_logic ;
signal Y1_6 : std_logic ;
signal Y1_7 : std_logic ;
signal Y1_8 : std_logic ;
signal Y1_9 : std_logic ;
signal Y1_10 : std_logic ;
signal Y1_11 : std_logic ;
signal DAO_STATE_S0_0_A3_I : std_logic ;
signal DAO_STATE_1_I : std_logic ;
begin
\R1_Y1_5_\: cycloneii_lcell_ff port map (
regout => Y1_6,
datain => Y1_N5_0_0_1110_I_X4,
clk => clk_c,
sload => DAO_STATE_1_I,
sdata => Y1_N5_0_0_1110_I_M4,
ena => UN1_DISABLE_3,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\R1_Y1_4_\: cycloneii_lcell_ff port map (
regout => Y1_7,
datain => Y1_N4_0_M3_0_1064_I_X4,
clk => clk_c,
sload => DAO_STATE_1_I,
sdata => Y1_N4_0_M3_0_1064_I_M4,
ena => UN1_DISABLE_3,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\R1_Y1_3_\: cycloneii_lcell_ff port map (
regout => Y1_8,
datain => Y1_N3_0_M3_0_1018_I_X4,
clk => clk_c,
sload => DAO_STATE_1_I,
sdata => Y1_N3_0_M3_0_1018_I_M4,
ena => UN1_DISABLE_3,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\R1_Y1_2_\: cycloneii_lcell_ff port map (
regout => Y1_9,
datain => Y1_N2_0_M3_0_972_X4,
clk => clk_c,
sload => DAO_STATE_1_I,
sdata => Y1_N2_0_M3_0_972_M4,
ena => UN1_DISABLE_3,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\R1_Y1_0_\: cycloneii_lcell_ff port map (
regout => Y1_10,
datain => yin_do_0,
clk => clk_c,
sload => DAO_STATE_S0_0_A3_I,
sdata => Y1_E0X,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	ena => VCC);
\R1_X1_5_\: cycloneii_lcell_ff port map (
regout => X1_0_0,
datain => X1_N5_0_0_926_I_X4,
clk => clk_c,
sload => DAO_STATE_1_I,
sdata => X1_N5_0_0_926_I_M4,
ena => G_1179,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\R1_X1_4_\: cycloneii_lcell_ff port map (
regout => X1_1_0,
datain => X1_N4_0_M3_0_881_I_X4,
clk => clk_c,
sload => DAO_STATE_1_I,
sdata => X1_N4_0_M3_0_881_I_M4,
ena => G_1179,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\R1_X1_3_\: cycloneii_lcell_ff port map (
regout => X1_2_0,
datain => X1_N3_0_M3_0_836_I_X4,
clk => clk_c,
sload => DAO_STATE_1_I,
sdata => X1_N3_0_M3_0_836_I_M4,
ena => G_1179,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\R1_X1_2_\: cycloneii_lcell_ff port map (
regout => X1_3_0,
datain => X1_N2_0_M3_0_791_X4,
clk => clk_c,
sload => DAO_STATE_1_I,
sdata => X1_N2_0_M3_0_791_M4,
ena => G_1179,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\R1_X1_0_\: cycloneii_lcell_ff port map (
regout => X1_4_0,
datain => xin_do_0,
clk => clk_c,
sload => DAO_STATE_S0_0_A3_I,
sdata => X1_E0X,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	ena => VCC);
\R1_ERROR_6_\: cycloneii_lcell_ff port map (
regout => ERROR(6),
datain => UN1_ERROR_1_ADD6,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_ERROR_5_\: cycloneii_lcell_ff port map (
regout => ERROR(5),
datain => UN1_ERROR_1_ADD5,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_ERROR_4_\: cycloneii_lcell_ff port map (
regout => ERROR(4),
datain => UN1_ERROR_1_ADD4,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_ERROR_3_\: cycloneii_lcell_ff port map (
regout => ERROR(3),
datain => UN1_ERROR_1_ADD3,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_ERROR_2_\: cycloneii_lcell_ff port map (
regout => ERROR(2),
datain => UN1_ERROR_1_ADD2,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_ERROR_1_\: cycloneii_lcell_ff port map (
regout => ERROR(1),
datain => UN1_ERROR_1_ADD1,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_ERROR_0_\: cycloneii_lcell_ff port map (
regout => ERROR(0),
datain => UN1_ERROR_1_ADD0,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_YINCR_5_\: cycloneii_lcell_ff port map (
regout => YINCR(5),
datain => \YINCR_3_0_5__M3\,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_YINCR_4_\: cycloneii_lcell_ff port map (
regout => YINCR(4),
datain => \YINCR_3_0_4__M3\,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_YINCR_3_\: cycloneii_lcell_ff port map (
regout => YINCR(3),
datain => \YINCR_3_0_3__M3\,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_YINCR_2_\: cycloneii_lcell_ff port map (
regout => YINCR(2),
datain => \YINCR_3_0_2__M3\,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_YINCR_1_\: cycloneii_lcell_ff port map (
regout => YINCR(1),
datain => \YINCR_3_0_1__M3\,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_YINCR_0_\: cycloneii_lcell_ff port map (
regout => YINCR(0),
datain => \YINCR_3_0_0__M3\,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_XINCR_5_\: cycloneii_lcell_ff port map (
regout => XINCR(5),
datain => \XINCR_2_0_5__M3\,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_XINCR_4_\: cycloneii_lcell_ff port map (
regout => XINCR(4),
datain => \XINCR_2_0_4__M3\,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_XINCR_3_\: cycloneii_lcell_ff port map (
regout => XINCR(3),
datain => \XINCR_2_0_3__M3\,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_XINCR_2_\: cycloneii_lcell_ff port map (
regout => XINCR(2),
datain => \XINCR_2_0_2__M3\,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_XINCR_1_\: cycloneii_lcell_ff port map (
regout => XINCR(1),
datain => \XINCR_2_0_1__M3\,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_XINCR_0_\: cycloneii_lcell_ff port map (
regout => XINCR(0),
datain => \XINCR_2_0_0__M3\,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_YNEW_5_\: cycloneii_lcell_ff port map (
regout => YNEW(5),
datain => YIN_DO_740_M2,
clk => clk_c,
ena => XNEW_0_SQMUXA_0_A3,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_YNEW_4_\: cycloneii_lcell_ff port map (
regout => YNEW(4),
datain => YIN_DO_0_688_M2,
clk => clk_c,
ena => XNEW_0_SQMUXA_0_A3,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_YNEW_3_\: cycloneii_lcell_ff port map (
regout => YNEW(3),
datain => YIN_DO_1_636_M2,
clk => clk_c,
ena => XNEW_0_SQMUXA_0_A3,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_YNEW_2_\: cycloneii_lcell_ff port map (
regout => YNEW(2),
datain => YIN_DO_2_584_M2,
clk => clk_c,
ena => XNEW_0_SQMUXA_0_A3,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_YNEW_1_\: cycloneii_lcell_ff port map (
regout => YNEW(1),
datain => YIN_DO_3_532_M2,
clk => clk_c,
ena => XNEW_0_SQMUXA_0_A3,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_YNEW_0_\: cycloneii_lcell_ff port map (
regout => YNEW(0),
datain => YIN_DO_4_480_M2,
clk => clk_c,
ena => XNEW_0_SQMUXA_0_A3,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_XNEW_5_\: cycloneii_lcell_ff port map (
regout => XNEW(5),
datain => XIN_DO_428_M2,
clk => clk_c,
ena => XNEW_0_SQMUXA_0_A3,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_XNEW_4_\: cycloneii_lcell_ff port map (
regout => XNEW(4),
datain => XIN_DO_0_376_M2,
clk => clk_c,
ena => XNEW_0_SQMUXA_0_A3,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_XNEW_3_\: cycloneii_lcell_ff port map (
regout => XNEW(3),
datain => XIN_DO_1_324_M2,
clk => clk_c,
ena => XNEW_0_SQMUXA_0_A3,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_XNEW_2_\: cycloneii_lcell_ff port map (
regout => XNEW(2),
datain => XIN_DO_2_272_M2,
clk => clk_c,
ena => XNEW_0_SQMUXA_0_A3,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_XNEW_1_\: cycloneii_lcell_ff port map (
regout => XNEW(1),
datain => XIN_DO_3_220_M2,
clk => clk_c,
ena => XNEW_0_SQMUXA_0_A3,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_XNEW_0_\: cycloneii_lcell_ff port map (
regout => XNEW(0),
datain => XIN_DO_4_168_M2,
clk => clk_c,
ena => XNEW_0_SQMUXA_0_A3,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_X1_1_\: cycloneii_lcell_ff port map (
regout => X1_5_0,
datain => X1_N1_0_X3,
clk => clk_c,
sload => DAO_state_s0_0_a3,
sdata => xin_do_1,
ena => G_1179,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\R1_Y1_1_\: cycloneii_lcell_ff port map (
regout => Y1_11,
datain => Y1_N1_0_X3,
clk => clk_c,
sload => DAO_state_s0_0_a3,
sdata => yin_do_1,
ena => G_1181,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
R1_UN14_DISABLE_LT0: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000001000100")
port map (
cout => LT_0,
dataa => RESULT_1_ADD0,
datab => UN12_ERR1_ADD0);
R1_UN14_DISABLE_LT1: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000011010100")
port map (
cout => LT_1,
dataa => INF_ABS1(1),
datab => INF_ABS0(1),
cin => LT_0);
R1_UN14_DISABLE_LT2: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000011010100")
port map (
cout => LT_2,
dataa => INF_ABS1(2),
datab => INF_ABS0(2),
cin => LT_1);
R1_UN14_DISABLE_LT3: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000011010100")
port map (
cout => LT_3,
dataa => INF_ABS1(3),
datab => INF_ABS0(3),
cin => LT_2);
R1_UN14_DISABLE_LT4: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000011010100")
port map (
cout => LT_4,
dataa => INF_ABS1(4),
datab => INF_ABS0(4),
cin => LT_3);
R1_UN14_DISABLE_LT5: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000011010100")
port map (
cout => LT_5,
dataa => INF_ABS1(5),
datab => INF_ABS0(5),
cin => LT_4);
R1_UN14_DISABLE_LT6: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000011010100")
port map (
cout => LT_6,
dataa => INF_ABS1(6),
datab => INF_ABS0(6),
cin => LT_5);
R1_UN14_DISABLE_LT7: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1101010011010100")
port map (
combout => LT7,
cout => LT7_COUT,
dataa => INF_ABS0(7),
datab => INF_ABS1(7),
cin => LT_6);
UN1_ERROR_1_0_ADD0_Z430: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100110001110")
port map (
combout => UN1_ERROR_1_0_ADD0,
cout => UN1_ERROR_1_0_CARRY_0,
dataa => UN3_XX_MM(6),
datab => UN1_ERROR_1_V(0),
cin => UN1_ERROR_1_0_ADD0_START_COUT);
UN1_ERROR_1_0_ADD1_Z431: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1001011011101000")
port map (
combout => UN1_ERROR_1_0_ADD1,
cout => UN1_ERROR_1_0_CARRY_1,
dataa => UN3_XX_MM(5),
datab => UN1_ERROR_1_V(1),
cin => UN1_ERROR_1_0_CARRY_0);
UN1_ERROR_1_0_ADD2_Z432: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1001011011101000")
port map (
combout => UN1_ERROR_1_0_ADD2,
cout => UN1_ERROR_1_0_CARRY_2,
dataa => UN3_XX_MM(4),
datab => UN1_ERROR_1_V(2),
cin => UN1_ERROR_1_0_CARRY_1);
UN1_ERROR_1_0_ADD3_Z433: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1001011011101000")
port map (
combout => UN1_ERROR_1_0_ADD3,
cout => UN1_ERROR_1_0_CARRY_3,
dataa => UN3_XX_MM(3),
datab => UN1_ERROR_1_V(3),
cin => UN1_ERROR_1_0_CARRY_2);
UN1_ERROR_1_0_ADD4_Z434: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1001011011101000")
port map (
combout => UN1_ERROR_1_0_ADD4,
cout => UN1_ERROR_1_0_CARRY_4,
dataa => UN3_XX_MM(2),
datab => UN1_ERROR_1_V(4),
cin => UN1_ERROR_1_0_CARRY_3);
UN1_ERROR_1_0_ADD5_Z435: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1001011011101000")
port map (
combout => UN1_ERROR_1_0_ADD5,
cout => UN1_ERROR_1_0_CARRY_5,
dataa => UN3_XX_MM(1),
datab => UN1_ERROR_1_V(5),
cin => UN1_ERROR_1_0_CARRY_4);
UN1_ERROR_1_0_ADD6_Z436: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100101101001")
port map (
combout => UN1_ERROR_1_0_ADD6,
dataa => UN1_ERROR_1_V_I(6),
datab => UN13_DISABLE_0,
cin => UN1_ERROR_1_0_CARRY_5);
UN1_ERROR_1_ADD0_Z437: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110011010001000")
port map (
combout => UN1_ERROR_1_ADD0,
cout => UN1_ERROR_1_CARRY_0,
dataa => UN13_DISABLE_0,
datab => UN1_ERROR_1_0_ADD0);
UN1_ERROR_1_ADD1_Z438: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100110110010")
port map (
combout => UN1_ERROR_1_ADD1,
cout => UN1_ERROR_1_CARRY_1,
dataa => UN1_ERROR_1_0_ADD1,
datab => UN1_ERROR_1_V_0_I(1),
cin => UN1_ERROR_1_CARRY_0);
UN1_ERROR_1_ADD2_Z439: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100110110010")
port map (
combout => UN1_ERROR_1_ADD2,
cout => UN1_ERROR_1_CARRY_2,
dataa => UN1_ERROR_1_0_ADD2,
datab => UN1_ERROR_1_V_0_I(2),
cin => UN1_ERROR_1_CARRY_1);
UN1_ERROR_1_ADD3_Z440: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100110110010")
port map (
combout => UN1_ERROR_1_ADD3,
cout => UN1_ERROR_1_CARRY_3,
dataa => UN1_ERROR_1_0_ADD3,
datab => UN1_ERROR_1_V_0_I(3),
cin => UN1_ERROR_1_CARRY_2);
UN1_ERROR_1_ADD4_Z441: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100110110010")
port map (
combout => UN1_ERROR_1_ADD4,
cout => UN1_ERROR_1_CARRY_4,
dataa => UN1_ERROR_1_0_ADD4,
datab => UN1_ERROR_1_V_0_I(4),
cin => UN1_ERROR_1_CARRY_3);
UN1_ERROR_1_ADD5_Z442: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100110110010")
port map (
combout => UN1_ERROR_1_ADD5,
cout => UN1_ERROR_1_CARRY_5,
dataa => UN1_ERROR_1_0_ADD5,
datab => UN1_ERROR_1_V_0_I(5),
cin => UN1_ERROR_1_CARRY_4);
UN1_ERROR_1_ADD6_Z443: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0011110000111100")
port map (
combout => UN1_ERROR_1_ADD6,
dataa => GND,
datab => UN1_ERROR_1_0_ADD6,
cin => UN1_ERROR_1_CARRY_5);
\INF_ABS1_A_1_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000000010001")
port map (
cout => INF_ABS1_A_1_COUT(0),
dataa => RESULT_1_ADD1,
datab => RESULT_1_ADD0);
\INF_ABS1_A_1_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110011000010001")
port map (
combout => INF_ABS1_A_1(1),
cout => INF_ABS1_A_1_COUT(1),
dataa => RESULT_1_ADD1,
datab => RESULT_1_ADD0);
\INF_ABS1_A_1_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1100001100010000")
port map (
combout => INF_ABS1_A_1(2),
cout => INF_ABS1_A_1_COUT(2),
dataa => RESULT_1_ADD3,
datab => RESULT_1_ADD2,
cin => INF_ABS1_A_1_COUT(0));
\INF_ABS1_A_1_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110010100010000")
port map (
combout => INF_ABS1_A_1(3),
cout => INF_ABS1_A_1_COUT(3),
dataa => RESULT_1_ADD3,
datab => RESULT_1_ADD2,
cin => INF_ABS1_A_1_COUT(1));
\INF_ABS1_A_1_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1100001100010000")
port map (
combout => INF_ABS1_A_1(4),
cout => INF_ABS1_A_1_COUT(4),
dataa => RESULT_1_ADD5,
datab => RESULT_1_ADD4,
cin => INF_ABS1_A_1_COUT(2));
\INF_ABS1_A_1_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110010100010000")
port map (
combout => INF_ABS1_A_1(5),
cout => INF_ABS1_A_1_COUT(5),
dataa => RESULT_1_ADD5,
datab => RESULT_1_ADD4,
cin => INF_ABS1_A_1_COUT(3));
\INF_ABS1_A_1_6_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1010010110100101")
port map (
combout => INF_ABS1_A_1(6),
dataa => RESULT_1_ADD6,
datab => GND,
cin => INF_ABS1_A_1_COUT(4));
\INF_ABS1_A_1_7_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110010101100101")
port map (
combout => INF_ABS1_A_1(7),
dataa => RESULT_1_ADD7,
datab => RESULT_1_ADD6,
cin => INF_ABS1_A_1_COUT(5));
R1_XINCR_3_ADD0: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => XINCR_3_ADD0,
cout => XINCR_3_CARRY_0,
dataa => X1_4_0,
datab => xin_do_0,
cin => XINCR_3_ADD0_START_COUT);
R1_XINCR_3_ADD1: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => XINCR_3_ADD1,
cout => XINCR_3_CARRY_1,
dataa => X1_5_0,
datab => xin_do_1,
cin => XINCR_3_CARRY_0);
R1_XINCR_3_ADD2: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => XINCR_3_ADD2,
cout => XINCR_3_CARRY_2,
dataa => X1_3_0,
datab => xin_do_2,
cin => XINCR_3_CARRY_1);
R1_XINCR_3_ADD3: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => XINCR_3_ADD3,
cout => XINCR_3_CARRY_3,
dataa => X1_2_0,
datab => xin_do_3,
cin => XINCR_3_CARRY_2);
R1_XINCR_3_ADD4: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => XINCR_3_ADD4,
cout => XINCR_3_CARRY_4,
dataa => X1_1_0,
datab => xin_do_4,
cin => XINCR_3_CARRY_3);
R1_XINCR_3_ADD5: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100101101001")
port map (
combout => XINCR_3_ADD5,
dataa => X1_0_0,
datab => xin_do_5,
cin => XINCR_3_CARRY_4);
R1_YINCR_2_ADD0: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => YINCR_2_ADD0,
cout => YINCR_2_CARRY_0,
dataa => Y1_10,
datab => yin_do_0,
cin => YINCR_2_ADD0_START_COUT);
R1_YINCR_2_ADD1: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => YINCR_2_ADD1,
cout => YINCR_2_CARRY_1,
dataa => Y1_11,
datab => yin_do_1,
cin => YINCR_2_CARRY_0);
R1_YINCR_2_ADD2: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => YINCR_2_ADD2,
cout => YINCR_2_CARRY_2,
dataa => Y1_9,
datab => yin_do_2,
cin => YINCR_2_CARRY_1);
R1_YINCR_2_ADD3: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => YINCR_2_ADD3,
cout => YINCR_2_CARRY_3,
dataa => Y1_8,
datab => yin_do_3,
cin => YINCR_2_CARRY_2);
R1_YINCR_2_ADD4: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => YINCR_2_ADD4,
cout => YINCR_2_CARRY_4,
dataa => Y1_7,
datab => yin_do_4,
cin => YINCR_2_CARRY_3);
R1_YINCR_2_ADD5: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100101101001")
port map (
combout => YINCR_2_ADD5,
dataa => Y1_6,
datab => yin_do_5,
cin => YINCR_2_CARRY_4);
UN12_ERR1_ADD0_Z464: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110011010001000")
port map (
combout => UN12_ERR1_ADD0,
cout => UN12_ERR1_CARRY_0,
dataa => ERROR(0),
datab => YINCR(0));
UN12_ERR1_ADD1_Z465: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1001011011101000")
port map (
combout => UN12_ERR1_ADD1,
cout => UN12_ERR1_CARRY_1,
dataa => ERROR(1),
datab => YINCR(1),
cin => UN12_ERR1_CARRY_0);
UN12_ERR1_ADD2_Z466: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1001011011101000")
port map (
combout => UN12_ERR1_ADD2,
cout => UN12_ERR1_CARRY_2,
dataa => ERROR(2),
datab => YINCR(2),
cin => UN12_ERR1_CARRY_1);
UN12_ERR1_ADD3_Z467: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1001011011101000")
port map (
combout => UN12_ERR1_ADD3,
cout => UN12_ERR1_CARRY_3,
dataa => ERROR(3),
datab => YINCR(3),
cin => UN12_ERR1_CARRY_2);
UN12_ERR1_ADD4_Z468: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1001011011101000")
port map (
combout => UN12_ERR1_ADD4,
cout => UN12_ERR1_CARRY_4,
dataa => ERROR(4),
datab => YINCR(4),
cin => UN12_ERR1_CARRY_3);
UN12_ERR1_ADD5_Z469: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1001011011101000")
port map (
combout => UN12_ERR1_ADD5,
cout => UN12_ERR1_CARRY_5,
dataa => ERROR(5),
datab => YINCR(5),
cin => UN12_ERR1_CARRY_4);
UN12_ERR1_ADD6_Z470: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0101101010100000")
port map (
combout => UN12_ERR1_ADD6,
cout => UN12_ERR1_CARRY_6,
dataa => ERROR(6),
datab => GND,
cin => UN12_ERR1_CARRY_5);
UN12_ERR1_ADD7_Z471: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0101101001011010")
port map (
combout => UN12_ERR1_ADD7,
dataa => ERROR(6),
datab => GND,
cin => UN12_ERR1_CARRY_6);
C1_OP_ABS_RESULT_1_ADD0: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => RESULT_1_ADD0,
cout => RESULT_1_CARRY_0,
dataa => XINCR(0),
datab => UN12_ERR1_ADD0,
cin => RESULT_1_ADD0_START_COUT);
C1_OP_ABS_RESULT_1_ADD1: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => RESULT_1_ADD1,
cout => RESULT_1_CARRY_1,
dataa => XINCR(1),
datab => UN12_ERR1_ADD1,
cin => RESULT_1_CARRY_0);
C1_OP_ABS_RESULT_1_ADD2: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => RESULT_1_ADD2,
cout => RESULT_1_CARRY_2,
dataa => XINCR(2),
datab => UN12_ERR1_ADD2,
cin => RESULT_1_CARRY_1);
C1_OP_ABS_RESULT_1_ADD3: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => RESULT_1_ADD3,
cout => RESULT_1_CARRY_3,
dataa => XINCR(3),
datab => UN12_ERR1_ADD3,
cin => RESULT_1_CARRY_2);
C1_OP_ABS_RESULT_1_ADD4: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => RESULT_1_ADD4,
cout => RESULT_1_CARRY_4,
dataa => XINCR(4),
datab => UN12_ERR1_ADD4,
cin => RESULT_1_CARRY_3);
C1_OP_ABS_RESULT_1_ADD5: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => RESULT_1_ADD5,
cout => RESULT_1_CARRY_5,
dataa => XINCR(5),
datab => UN12_ERR1_ADD5,
cin => RESULT_1_CARRY_4);
C1_OP_ABS_RESULT_1_ADD6: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1010010111111010")
port map (
combout => RESULT_1_ADD6,
cout => RESULT_1_CARRY_6,
dataa => UN12_ERR1_ADD6,
datab => VCC,
cin => RESULT_1_CARRY_5);
C1_OP_ABS_RESULT_1_ADD7: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1010010110100101")
port map (
combout => RESULT_1_ADD7,
dataa => UN12_ERR1_ADD7,
datab => VCC,
cin => RESULT_1_CARRY_6);
\INF_ABS0_A_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000000010001")
port map (
cout => INF_ABS0_A_0_COUT(0),
dataa => UN12_ERR1_ADD1,
datab => UN12_ERR1_ADD0);
\INF_ABS0_A_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110011000010001")
port map (
combout => INF_ABS0_A_0(1),
cout => INF_ABS0_A_0_COUT(1),
dataa => UN12_ERR1_ADD1,
datab => UN12_ERR1_ADD0);
\INF_ABS0_A_0_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1100001100010000")
port map (
combout => INF_ABS0_A_0(2),
cout => INF_ABS0_A_0_COUT(2),
dataa => UN12_ERR1_ADD3,
datab => UN12_ERR1_ADD2,
cin => INF_ABS0_A_0_COUT(0));
\INF_ABS0_A_0_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110010100010000")
port map (
combout => INF_ABS0_A_0(3),
cout => INF_ABS0_A_0_COUT(3),
dataa => UN12_ERR1_ADD3,
datab => UN12_ERR1_ADD2,
cin => INF_ABS0_A_0_COUT(1));
\INF_ABS0_A_0_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1100001100010000")
port map (
combout => INF_ABS0_A_0(4),
cout => INF_ABS0_A_0_COUT(4),
dataa => UN12_ERR1_ADD5,
datab => UN12_ERR1_ADD4,
cin => INF_ABS0_A_0_COUT(2));
\INF_ABS0_A_0_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110010100010000")
port map (
combout => INF_ABS0_A_0(5),
cout => INF_ABS0_A_0_COUT(5),
dataa => UN12_ERR1_ADD5,
datab => UN12_ERR1_ADD4,
cin => INF_ABS0_A_0_COUT(3));
\INF_ABS0_A_0_6_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1010010110100101")
port map (
combout => INF_ABS0_A_0(6),
dataa => UN12_ERR1_ADD6,
datab => GND,
cin => INF_ABS0_A_0_COUT(4));
\INF_ABS0_A_0_7_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110010101100101")
port map (
combout => INF_ABS0_A_0(7),
dataa => UN12_ERR1_ADD7,
datab => UN12_ERR1_ADD6,
cin => INF_ABS0_A_0_COUT(5));
R1_Y1_N1_0_X3: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110011001100110")
port map (
combout => Y1_N1_0_X3,
dataa => Y1_11,
datab => Y1_10);
\UN1_ERROR_1_V_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000100010001000")
port map (
combout => UN1_ERROR_1_V(5),
dataa => YINCR(5),
datab => UN13_DISABLE_0);
\UN1_ERROR_1_V_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000100010001000")
port map (
combout => UN1_ERROR_1_V(4),
dataa => YINCR(4),
datab => UN13_DISABLE_0);
\UN1_ERROR_1_V_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000100010001000")
port map (
combout => UN1_ERROR_1_V(3),
dataa => YINCR(3),
datab => UN13_DISABLE_0);
\UN1_ERROR_1_V_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000100010001000")
port map (
combout => UN1_ERROR_1_V(2),
dataa => YINCR(2),
datab => UN13_DISABLE_0);
\UN1_ERROR_1_V_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000100010001000")
port map (
combout => UN1_ERROR_1_V(1),
dataa => YINCR(1),
datab => UN13_DISABLE_0);
\UN1_ERROR_1_V_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000100010001000")
port map (
combout => UN1_ERROR_1_V(0),
dataa => YINCR(0),
datab => UN13_DISABLE_0);
\R1_X1_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110011001100110")
port map (
combout => X1_E0X,
dataa => X1_4_0,
datab => UN1_DISABLE_1_I_A3);
\R1_Y1_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110011001100110")
port map (
combout => Y1_E0X,
dataa => Y1_10,
datab => UN1_DISABLE_3);
R1_X1_N1_0_X3: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110011001100110")
port map (
combout => X1_N1_0_X3,
dataa => X1_5_0,
datab => X1_4_0);
\C1_OP_ABS_INF_ABS1_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100101011001010")
port map (
combout => INF_ABS1(1),
dataa => RESULT_1_ADD1,
datab => INF_ABS1_A_1(1),
datac => RESULT_1_ADD7);
\C1_OP_ABS_INF_ABS1_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100101011001010")
port map (
combout => INF_ABS1(2),
dataa => RESULT_1_ADD2,
datab => INF_ABS1_A_1(2),
datac => RESULT_1_ADD7);
\C1_OP_ABS_INF_ABS1_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110001011100010")
port map (
combout => INF_ABS1(3),
dataa => RESULT_1_ADD3,
datab => RESULT_1_ADD7,
datac => INF_ABS1_A_1(3));
\C1_OP_ABS_INF_ABS1_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110001011100010")
port map (
combout => INF_ABS1(4),
dataa => RESULT_1_ADD4,
datab => RESULT_1_ADD7,
datac => INF_ABS1_A_1(4));
\C1_OP_ABS_INF_ABS1_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110001011100010")
port map (
combout => INF_ABS1(5),
dataa => RESULT_1_ADD5,
datab => RESULT_1_ADD7,
datac => INF_ABS1_A_1(5));
\C1_OP_ABS_INF_ABS1_6_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110001011100010")
port map (
combout => INF_ABS1(6),
dataa => RESULT_1_ADD6,
datab => RESULT_1_ADD7,
datac => INF_ABS1_A_1(6));
\C1_OP_ABS_INF_ABS0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100101011001010")
port map (
combout => INF_ABS0(1),
dataa => UN12_ERR1_ADD1,
datab => INF_ABS0_A_0(1),
datac => UN12_ERR1_ADD7);
\C1_OP_ABS_INF_ABS0_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110001011100010")
port map (
combout => INF_ABS0(2),
dataa => UN12_ERR1_ADD2,
datab => UN12_ERR1_ADD7,
datac => INF_ABS0_A_0(2));
\C1_OP_ABS_INF_ABS0_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110001011100010")
port map (
combout => INF_ABS0(3),
dataa => UN12_ERR1_ADD3,
datab => UN12_ERR1_ADD7,
datac => INF_ABS0_A_0(3));
\C1_OP_ABS_INF_ABS0_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110001011100010")
port map (
combout => INF_ABS0(4),
dataa => UN12_ERR1_ADD4,
datab => UN12_ERR1_ADD7,
datac => INF_ABS0_A_0(4));
\C1_OP_ABS_INF_ABS0_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110001011100010")
port map (
combout => INF_ABS0(5),
dataa => UN12_ERR1_ADD5,
datab => UN12_ERR1_ADD7,
datac => INF_ABS0_A_0(5));
\C1_OP_ABS_INF_ABS0_6_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110001011100010")
port map (
combout => INF_ABS0(6),
dataa => UN12_ERR1_ADD6,
datab => UN12_ERR1_ADD7,
datac => INF_ABS0_A_0(6));
\C1_OP_ABS_INF_ABS0_7_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000100010001000")
port map (
combout => INF_ABS0(7),
dataa => UN12_ERR1_ADD7,
datab => INF_ABS0_A_0(7));
\C1_OP_ABS_INF_ABS1_7_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000100010001000")
port map (
combout => INF_ABS1(7),
dataa => RESULT_1_ADD7,
datab => INF_ABS1_A_1(7));
\UN1_ERROR_1_V_I_6_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001111100011111")
port map (
combout => UN1_ERROR_1_V_I(6),
dataa => DAO_state_0,
datab => DAO_state_1,
datac => ERROR(6));
\UN1_ERROR_1_V_0_I_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001111100011111")
port map (
combout => UN1_ERROR_1_V_0_I(5),
dataa => DAO_state_0,
datab => DAO_state_1,
datac => ERROR(5));
\UN1_ERROR_1_V_0_I_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001111100011111")
port map (
combout => UN1_ERROR_1_V_0_I(4),
dataa => DAO_state_0,
datab => DAO_state_1,
datac => ERROR(4));
\UN1_ERROR_1_V_0_I_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001111100011111")
port map (
combout => UN1_ERROR_1_V_0_I(3),
dataa => DAO_state_0,
datab => DAO_state_1,
datac => ERROR(3));
\UN1_ERROR_1_V_0_I_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001111100011111")
port map (
combout => UN1_ERROR_1_V_0_I(2),
dataa => DAO_state_0,
datab => DAO_state_1,
datac => ERROR(2));
\UN1_ERROR_1_V_0_I_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001111100011111")
port map (
combout => UN1_ERROR_1_V_0_I(1),
dataa => DAO_state_0,
datab => DAO_state_1,
datac => ERROR(1));
\UN1_ERROR_1_V_0_I_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001111100011111")
port map (
combout => UN1_ERROR_1_V_0_I(0),
dataa => DAO_state_0,
datab => DAO_state_1,
datac => ERROR(0));
\R1_XNEW_RNO_1_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000111110011001")
port map (
combout => XIN_DO_0_376_M4,
dataa => X_current_2,
datab => lt5,
datac => xin_do_0_376_x4_1,
datad => lt5_0);
\R1_XNEW_RNO_0_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000100111111001")
port map (
combout => XIN_DO_0_376_M4_0,
dataa => saved_negx,
datab => X_current_2,
datac => saved_swapxy,
datad => xin_do_0_376_x4);
\R1_YNEW_RNO_1_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1001100100001111")
port map (
combout => YIN_DO_0_688_M4,
dataa => X_current_2,
datab => lt5,
datac => xin_do_0_376_x4_1,
datad => lt5_0);
\R1_YNEW_RNO_0_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1001000010011111")
port map (
combout => YIN_DO_0_688_M4_0,
dataa => saved_negx,
datab => X_current_2,
datac => saved_swapxy,
datad => xin_do_0_376_x4);
\R1_X1_RNO_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111100001111000")
port map (
combout => X1_N2_0_M3_0_791_X4,
dataa => X1_4_0,
datab => X1_5_0,
datac => X1_3_0);
\R1_Y1_RNO_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111100001111000")
port map (
combout => Y1_N2_0_M3_0_972_X4,
dataa => Y1_10,
datab => Y1_11,
datac => Y1_9);
\R1_Y1_RNO_0_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110011011110000")
port map (
combout => Y1_N5_0_0_1110_I_M4,
dataa => X_current_3,
datab => muxed_negx,
datac => yout_1_2,
datad => lt5_0);
\R1_Y1_RNO_0_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110011011110000")
port map (
combout => Y1_N4_0_M3_0_1064_I_M4,
dataa => X_current_2,
datab => muxed_negx,
datac => yout_1_1,
datad => lt5_0);
\R1_Y1_RNO_0_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110011011110000")
port map (
combout => Y1_N3_0_M3_0_1018_I_M4,
dataa => X_current_1,
datab => muxed_negx,
datac => yout_1_0,
datad => lt5_0);
\R1_Y1_RNO_0_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111000001100110")
port map (
combout => Y1_N2_0_M3_0_972_M4,
dataa => Y_current_2,
datab => muxed_negy,
datac => xout_1_0,
datad => lt5_0);
\R1_X1_RNO_0_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111000001100110")
port map (
combout => X1_N5_0_0_926_I_M4,
dataa => X_current_3,
datab => muxed_negx,
datac => yout_1_2,
datad => lt5_0);
\R1_X1_RNO_0_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111000001100110")
port map (
combout => X1_N4_0_M3_0_881_I_M4,
dataa => X_current_2,
datab => muxed_negx,
datac => yout_1_1,
datad => lt5_0);
\R1_X1_RNO_0_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111000001100110")
port map (
combout => X1_N3_0_M3_0_836_I_M4,
dataa => X_current_1,
datab => muxed_negx,
datac => yout_1_0,
datad => lt5_0);
\R1_X1_RNO_0_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110011011110000")
port map (
combout => X1_N2_0_M3_0_791_M4,
dataa => Y_current_2,
datab => muxed_negy,
datac => xout_1_0,
datad => lt5_0);
\R1_YNEW_RNO_0_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000100111111001")
port map (
combout => YIN_DO_740_M4_0,
dataa => saved_negy,
datab => Y_current_5,
datac => saved_swapxy,
datad => yin_do_740_x4);
\R1_YNEW_RNO_1_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000111110011001")
port map (
combout => YIN_DO_740_M4,
dataa => Y_current_5,
datab => lt5_1,
datac => xin_do_428_x4_2,
datad => lt5_0);
\R1_YNEW_RNO_0_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1001000010011111")
port map (
combout => YIN_DO_1_636_M4_0,
dataa => saved_negx,
datab => X_current_1,
datac => saved_swapxy,
datad => xin_do_1_324_x4);
\R1_YNEW_RNO_1_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1001100100001111")
port map (
combout => YIN_DO_1_636_M4,
dataa => X_current_1,
datab => lt5,
datac => xin_do_1_324_x4_1,
datad => lt5_0);
\R1_YNEW_RNO_0_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000100111111001")
port map (
combout => YIN_DO_2_584_M4_0,
dataa => saved_negy,
datab => Y_current_2,
datac => saved_swapxy,
datad => yin_do_2_584_x4);
\R1_YNEW_RNO_1_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1001100100001111")
port map (
combout => YIN_DO_2_584_M4,
dataa => X_current_0,
datab => lt5,
datac => xin_do_2_272_x4_1,
datad => lt5_0);
\R1_YNEW_RNO_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000100111111001")
port map (
combout => YIN_DO_3_532_M4_0,
dataa => saved_negy,
datab => Y_current_1,
datac => saved_swapxy,
datad => yin_do_3_532_x4);
\R1_YNEW_RNO_1_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000111110011001")
port map (
combout => YIN_DO_3_532_M4,
dataa => Y_current_1,
datab => lt5_1,
datac => xin_do_3_220_x4_2,
datad => lt5_0);
\R1_YNEW_RNO_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000100111111001")
port map (
combout => YIN_DO_4_480_M4_0,
dataa => saved_negy,
datab => Y_current_0,
datac => saved_swapxy,
datad => yin_do_4_480_x4);
\R1_YNEW_RNO_1_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000111110011001")
port map (
combout => YIN_DO_4_480_M4,
dataa => Y_current_0,
datab => lt5_1,
datac => xin_do_4_168_x4_2,
datad => lt5_0);
\R1_XNEW_RNO_0_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1001000010011111")
port map (
combout => XIN_DO_428_M4_0,
dataa => saved_negy,
datab => Y_current_5,
datac => saved_swapxy,
datad => yin_do_740_x4);
\R1_XNEW_RNO_1_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1001100100001111")
port map (
combout => XIN_DO_428_M4,
dataa => Y_current_5,
datab => lt5_1,
datac => xin_do_428_x4_2,
datad => lt5_0);
\R1_XNEW_RNO_0_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000100111111001")
port map (
combout => XIN_DO_1_324_M4_0,
dataa => saved_negx,
datab => X_current_1,
datac => saved_swapxy,
datad => xin_do_1_324_x4);
\R1_XNEW_RNO_1_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000111110011001")
port map (
combout => XIN_DO_1_324_M4,
dataa => X_current_1,
datab => lt5,
datac => xin_do_1_324_x4_1,
datad => lt5_0);
\R1_XNEW_RNO_0_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1001000010011111")
port map (
combout => XIN_DO_2_272_M4_0,
dataa => saved_negy,
datab => Y_current_2,
datac => saved_swapxy,
datad => yin_do_2_584_x4);
\R1_XNEW_RNO_1_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000111110011001")
port map (
combout => XIN_DO_2_272_M4,
dataa => X_current_0,
datab => lt5,
datac => xin_do_2_272_x4_1,
datad => lt5_0);
\R1_XNEW_RNO_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1001000010011111")
port map (
combout => XIN_DO_3_220_M4_0,
dataa => saved_negy,
datab => Y_current_1,
datac => saved_swapxy,
datad => yin_do_3_532_x4);
\R1_XNEW_RNO_1_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1001100100001111")
port map (
combout => XIN_DO_3_220_M4,
dataa => Y_current_1,
datab => lt5_1,
datac => xin_do_3_220_x4_2,
datad => lt5_0);
\R1_XNEW_RNO_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1001000010011111")
port map (
combout => XIN_DO_4_168_M4_0,
dataa => saved_negy,
datab => Y_current_0,
datac => saved_swapxy,
datad => yin_do_4_480_x4);
\R1_XNEW_RNO_1_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1001100100001111")
port map (
combout => XIN_DO_4_168_M4,
dataa => Y_current_0,
datab => lt5_1,
datac => xin_do_4_168_x4_2,
datad => lt5_0);
UN1_DISABLE_1_I_A3_RNI6RKF: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111000111110001")
port map (
combout => G_1179,
dataa => DAO_state_0,
datab => DAO_state_1,
datac => UN1_DISABLE_1_I_A3);
\R1_Y1_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111000111110001")
port map (
combout => G_1181,
dataa => DAO_state_0,
datab => DAO_state_1,
datac => UN13_DISABLE_0);
C1_UN5_X1_I_O3_0_0: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111101111011110")
port map (
combout => UN5_X1_I_O3_0_0,
dataa => YNEW(2),
datab => XNEW(0),
datac => Y1_9,
datad => X1_4_0);
C1_UN5_X1_I_O3_1: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111101111011110")
port map (
combout => UN5_X1_I_O3_1,
dataa => YNEW(0),
datab => YNEW(3),
datac => Y1_10,
datad => Y1_8);
C1_UN5_X1_I_O3_2: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111101111011110")
port map (
combout => UN5_X1_I_O3_2,
dataa => YNEW(1),
datab => XNEW(3),
datac => Y1_11,
datad => X1_2_0);
C1_UN5_X1_I_O3_3: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111101111011110")
port map (
combout => UN5_X1_I_O3_3,
dataa => XNEW(4),
datab => XNEW(1),
datac => X1_1_0,
datad => X1_5_0);
C1_UN5_X1_I_O3_4: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111101111011110")
port map (
combout => UN5_X1_I_O3_4,
dataa => YNEW(4),
datab => YNEW(5),
datac => Y1_7,
datad => Y1_6);
C1_UN5_X1_I_O3_5: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111101111011110")
port map (
combout => UN5_X1_I_O3_5,
dataa => XNEW(5),
datab => XNEW(2),
datac => X1_0_0,
datad => X1_3_0);
XNEW_0_SQMUXA_0_A3_Z561: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101000011010000")
port map (
combout => XNEW_0_SQMUXA_0_A3,
dataa => DAO_state_1,
datab => DAO_state_0,
datac => db_disable_0);
\R1_XNEW_RNO_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0010011100100111")
port map (
combout => XIN_DO_0_376_M2,
dataa => DAO_state_0,
datab => XIN_DO_0_376_M4_0,
datac => XIN_DO_0_376_M4);
\R1_YNEW_RNO_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0010011100100111")
port map (
combout => YIN_DO_0_688_M2,
dataa => DAO_state_0,
datab => YIN_DO_0_688_M4_0,
datac => YIN_DO_0_688_M4);
R1_X1_N4_0_O3: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111111111111111")
port map (
combout => X1_N4_0_O3,
dataa => X1_4_0,
datab => X1_5_0,
datac => X1_3_0,
datad => X1_2_0);
\R1_YNEW_RNO_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0010011100100111")
port map (
combout => YIN_DO_740_M2,
dataa => DAO_state_0,
datab => YIN_DO_740_M4_0,
datac => YIN_DO_740_M4);
\R1_YNEW_RNO_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0010011100100111")
port map (
combout => YIN_DO_1_636_M2,
dataa => DAO_state_0,
datab => YIN_DO_1_636_M4_0,
datac => YIN_DO_1_636_M4);
\R1_YNEW_RNO_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0010011100100111")
port map (
combout => YIN_DO_2_584_M2,
dataa => DAO_state_0,
datab => YIN_DO_2_584_M4_0,
datac => YIN_DO_2_584_M4);
\R1_YNEW_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0010011100100111")
port map (
combout => YIN_DO_3_532_M2,
dataa => DAO_state_0,
datab => YIN_DO_3_532_M4_0,
datac => YIN_DO_3_532_M4);
\R1_YNEW_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0010011100100111")
port map (
combout => YIN_DO_4_480_M2,
dataa => DAO_state_0,
datab => YIN_DO_4_480_M4_0,
datac => YIN_DO_4_480_M4);
\R1_XNEW_RNO_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0010011100100111")
port map (
combout => XIN_DO_428_M2,
dataa => DAO_state_0,
datab => XIN_DO_428_M4_0,
datac => XIN_DO_428_M4);
\R1_XNEW_RNO_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0010011100100111")
port map (
combout => XIN_DO_1_324_M2,
dataa => DAO_state_0,
datab => XIN_DO_1_324_M4_0,
datac => XIN_DO_1_324_M4);
\R1_XNEW_RNO_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0010011100100111")
port map (
combout => XIN_DO_2_272_M2,
dataa => DAO_state_0,
datab => XIN_DO_2_272_M4_0,
datac => XIN_DO_2_272_M4);
\R1_XNEW_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0010011100100111")
port map (
combout => XIN_DO_3_220_M2,
dataa => DAO_state_0,
datab => XIN_DO_3_220_M4_0,
datac => XIN_DO_3_220_M4);
\R1_XNEW_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0010011100100111")
port map (
combout => XIN_DO_4_168_M2,
dataa => DAO_state_0,
datab => XIN_DO_4_168_M4_0,
datac => XIN_DO_4_168_M4);
R1_Y1_N4_0_O3: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111111111111111")
port map (
combout => Y1_N4_0_O3,
dataa => Y1_10,
datab => Y1_11,
datac => Y1_9,
datad => Y1_8);
\UN3_XX_6_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110000000000000")
port map (
combout => UN3_XX(6),
dataa => DAO_state_0,
datab => DAO_state_1,
datac => YINCR(0),
datad => UN1_DISABLE_1_I_A3);
\UN3_XX_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110000000000000")
port map (
combout => UN3_XX(5),
dataa => DAO_state_0,
datab => DAO_state_1,
datac => YINCR(1),
datad => UN1_DISABLE_1_I_A3);
\UN3_XX_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110000000000000")
port map (
combout => UN3_XX(4),
dataa => DAO_state_0,
datab => DAO_state_1,
datac => YINCR(2),
datad => UN1_DISABLE_1_I_A3);
\UN3_YY_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110000000000000")
port map (
combout => UN3_YY(1),
dataa => DAO_state_0,
datab => DAO_state_1,
datac => YINCR(5),
datad => UN1_DISABLE_1_I_A3);
\UN3_XX_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110000000000000")
port map (
combout => UN3_XX(3),
dataa => DAO_state_0,
datab => DAO_state_1,
datac => YINCR(3),
datad => UN1_DISABLE_1_I_A3);
\UN3_XX_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110000000000000")
port map (
combout => UN3_XX(2),
dataa => DAO_state_0,
datab => DAO_state_1,
datac => YINCR(4),
datad => UN1_DISABLE_1_I_A3);
R1_UN11_DISABLE_6_0: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1001000000001001")
port map (
combout => UN11_DISABLE_6_0,
dataa => UN12_ERR1_ADD0,
datab => RESULT_1_ADD0,
datac => INF_ABS0(2),
datad => INF_ABS1(2));
R1_UN11_DISABLE_6_1: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000010000100001")
port map (
combout => UN11_DISABLE_6_1,
dataa => INF_ABS0(1),
datab => INF_ABS0(3),
datac => INF_ABS1(1),
datad => INF_ABS1(3));
R1_UN11_DISABLE_6_3: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000010000100001")
port map (
combout => UN11_DISABLE_6_3,
dataa => INF_ABS0(5),
datab => INF_ABS0(4),
datac => INF_ABS1(5),
datad => INF_ABS1(4));
R1_UN11_DISABLE_6_4: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000010000100001")
port map (
combout => UN11_DISABLE_6_4,
dataa => INF_ABS0(7),
datab => INF_ABS0(6),
datac => INF_ABS1(7),
datad => INF_ABS1(6));
\R1_XINCR_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010110000001100")
port map (
combout => \XINCR_2_0_0__M3\,
dataa => DAO_state_0,
datab => XINCR(0),
datac => XNEW_0_SQMUXA_0_A3,
datad => XINCR_3_ADD0);
\R1_XINCR_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010110000001100")
port map (
combout => \XINCR_2_0_1__M3\,
dataa => DAO_state_0,
datab => XINCR(1),
datac => XNEW_0_SQMUXA_0_A3,
datad => XINCR_3_ADD1);
\R1_XINCR_RNO_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010110000001100")
port map (
combout => \XINCR_2_0_2__M3\,
dataa => DAO_state_0,
datab => XINCR(2),
datac => XNEW_0_SQMUXA_0_A3,
datad => XINCR_3_ADD2);
\R1_XINCR_RNO_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010110000001100")
port map (
combout => \XINCR_2_0_3__M3\,
dataa => DAO_state_0,
datab => XINCR(3),
datac => XNEW_0_SQMUXA_0_A3,
datad => XINCR_3_ADD3);
\R1_XINCR_RNO_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010110000001100")
port map (
combout => \XINCR_2_0_4__M3\,
dataa => DAO_state_0,
datab => XINCR(4),
datac => XNEW_0_SQMUXA_0_A3,
datad => XINCR_3_ADD4);
\R1_XINCR_RNO_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010110000001100")
port map (
combout => \XINCR_2_0_5__M3\,
dataa => DAO_state_0,
datab => XINCR(5),
datac => XNEW_0_SQMUXA_0_A3,
datad => XINCR_3_ADD5);
\R1_YINCR_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010110000001100")
port map (
combout => \YINCR_3_0_0__M3\,
dataa => DAO_state_0,
datab => YINCR(0),
datac => XNEW_0_SQMUXA_0_A3,
datad => YINCR_2_ADD0);
\R1_YINCR_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010110000001100")
port map (
combout => \YINCR_3_0_1__M3\,
dataa => DAO_state_0,
datab => YINCR(1),
datac => XNEW_0_SQMUXA_0_A3,
datad => YINCR_2_ADD1);
\R1_YINCR_RNO_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010110000001100")
port map (
combout => \YINCR_3_0_2__M3\,
dataa => DAO_state_0,
datab => YINCR(2),
datac => XNEW_0_SQMUXA_0_A3,
datad => YINCR_2_ADD2);
\R1_YINCR_RNO_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010110000001100")
port map (
combout => \YINCR_3_0_3__M3\,
dataa => DAO_state_0,
datab => YINCR(3),
datac => XNEW_0_SQMUXA_0_A3,
datad => YINCR_2_ADD3);
\R1_YINCR_RNO_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010110000001100")
port map (
combout => \YINCR_3_0_4__M3\,
dataa => DAO_state_0,
datab => YINCR(4),
datac => XNEW_0_SQMUXA_0_A3,
datad => YINCR_2_ADD4);
\R1_YINCR_RNO_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010110000001100")
port map (
combout => \YINCR_3_0_5__M3\,
dataa => DAO_state_0,
datab => YINCR(5),
datac => XNEW_0_SQMUXA_0_A3,
datad => YINCR_2_ADD5);
G_1143_Z598: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000000000000000")
port map (
combout => G_1143,
dataa => Y_0,
datab => X_0,
datac => rcb_ready25,
datad => temp_ram_8_10_0_iv_0_0_a3_0);
\R1_Y1_RNO_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1001100110011001")
port map (
combout => Y1_N4_0_M3_0_1064_I_X4,
dataa => Y1_7,
datab => Y1_N4_0_O3);
\R1_X1_RNO_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1001100110011001")
port map (
combout => X1_N4_0_M3_0_881_I_X4,
dataa => X1_1_0,
datab => X1_N4_0_O3);
UN1_ERROR_1_0_ADD0_RNO: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001000111110000")
port map (
combout => UN3_XX_MM(6),
dataa => XINCR(0),
datab => DAO_state_s0_0_a3,
datac => UN3_XX(6),
datad => UN13_DISABLE_0);
UN1_ERROR_1_0_ADD1_RNO: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001000111110000")
port map (
combout => UN3_XX_MM(5),
dataa => XINCR(1),
datab => DAO_state_s0_0_a3,
datac => UN3_XX(5),
datad => UN13_DISABLE_0);
UN1_ERROR_1_0_ADD2_RNO: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001000111110000")
port map (
combout => UN3_XX_MM(4),
dataa => XINCR(2),
datab => DAO_state_s0_0_a3,
datac => UN3_XX(4),
datad => UN13_DISABLE_0);
UN1_ERROR_1_0_ADD5_RNO: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001000111110000")
port map (
combout => UN3_XX_MM(1),
dataa => XINCR(5),
datab => DAO_state_s0_0_a3,
datac => UN3_YY(1),
datad => UN1_DISABLE_3);
UN1_ERROR_1_0_ADD3_RNO: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001000111110000")
port map (
combout => UN3_XX_MM(3),
dataa => XINCR(3),
datab => DAO_state_s0_0_a3,
datac => UN3_XX(3),
datad => UN13_DISABLE_0);
UN1_ERROR_1_0_ADD4_RNO: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001000111110000")
port map (
combout => UN3_XX_MM(2),
dataa => XINCR(4),
datab => DAO_state_s0_0_a3,
datac => UN3_XX(2),
datad => UN13_DISABLE_0);
C1_UN5_X1_I_O3_9: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111111111110")
port map (
combout => UN5_X1_I_O3_9,
dataa => UN5_X1_I_O3_2,
datab => UN5_X1_I_O3_3,
datac => UN5_X1_I_O3_0_0,
datad => UN5_X1_I_O3_1);
\R1_Y1_RNO_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100011011000110")
port map (
combout => Y1_N5_0_0_1110_I_X4,
dataa => Y1_7,
datab => Y1_6,
datac => Y1_N4_0_O3);
\R1_X1_RNO_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100011011000110")
port map (
combout => X1_N5_0_0_926_I_X4,
dataa => X1_1_0,
datab => X1_0_0,
datac => X1_N4_0_O3);
C1_UN5_X1_I_O3: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111011111110")
port map (
combout => UN5_X1_I_O3_12,
dataa => UN5_X1_I_O3_4,
datab => UN5_X1_I_O3_5,
datac => UN5_X1_I_O3_9);
R1_UN11_DISABLE_6: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000000000000000")
port map (
combout => UN11_DISABLE_6,
dataa => UN11_DISABLE_6_0,
datab => UN11_DISABLE_6_1,
datac => UN11_DISABLE_6_3,
datad => UN11_DISABLE_6_4);
UN1_DISABLE_1_I_A3_Z612: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100000001000000")
port map (
combout => UN1_DISABLE_1_I_A3,
dataa => DAO_state_0,
datab => UN5_X1_I_O3_12,
datac => db_disable_0);
C1_UN5_X1_I_O3_RNI77CG: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0010000000000000")
port map (
combout => UN13_DISABLE_0_1,
dataa => DAO_state_1,
datab => DAO_state_0,
datac => UN5_X1_I_O3_12,
datad => db_disable_0);
UN1_DISABLE_3_Z614: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010100010100000")
port map (
combout => UN1_DISABLE_3,
dataa => G_1179,
datab => UN11_DISABLE_6,
datac => UN15_DISABLE_0,
datad => xbias_do);
R1_UN11_DISABLE_6_RNIOJ6T6: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010100010001000")
port map (
combout => UN13_DISABLE_0,
dataa => UN13_DISABLE_0_1,
datab => LT7,
datac => UN11_DISABLE_6,
datad => xbias_do);
\R1_Y1_RNO_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111111110000000")
port map (
combout => Y1_N3_0_M3_0_1018_I_X4,
dataa => Y1_11,
datab => Y1_10,
datac => Y1_9,
datad => Y1_8);
\R1_X1_RNO_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111111110000000")
port map (
combout => X1_N3_0_M3_0_836_I_X4,
dataa => X1_5_0,
datab => X1_4_0,
datac => X1_3_0,
datad => X1_2_0);
R1_UN15_DISABLE_0: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1111101111111011")
port map (
combout => UN15_DISABLE_0,
dataa => DAO_state_0,
datab => DAO_state_1,
cin => LT7_COUT);
C1_OP_ABS_RESULT_1_ADD0_START: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000010101010")
port map (
cout => RESULT_1_ADD0_START_COUT,
dataa => VCC);
R1_YINCR_2_ADD0_START: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000010101010")
port map (
cout => YINCR_2_ADD0_START_COUT,
dataa => VCC);
R1_XINCR_3_ADD0_START: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000010101010")
port map (
cout => XINCR_3_ADD0_START_COUT,
dataa => VCC);
UN1_ERROR_1_0_ADD0_START: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000010101010")
port map (
cout => UN1_ERROR_1_0_ADD0_START_COUT,
dataa => UN1_ERROR_1_V_0_I(0));
GND <= '0';
VCC <= '1';
DAO_STATE_S0_0_A3_I <= not DAO_state_s0_0_a3;
DAO_STATE_1_I <= not DAO_state_1;
x1_5 <= X1_0_0;
x1_4 <= X1_1_0;
x1_3 <= X1_2_0;
x1_2 <= X1_3_0;
x1_0 <= X1_4_0;
x1_1 <= X1_5_0;
y1_5 <= Y1_6;
y1_4 <= Y1_7;
y1_3 <= Y1_8;
y1_2 <= Y1_9;
y1_0 <= Y1_10;
y1_1 <= Y1_11;
un5_x1_i_o3 <= UN5_X1_I_O3_12;
end beh;

--
library ieee, cycloneii;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library synplify;
use synplify.components.all;
use cycloneii.cycloneii_components.all;

entity read_modify_write is
port(
store_ram_15_1 :  in std_logic;
store_ram_15_0 :  in std_logic;
store_ram_14_1 :  in std_logic;
store_ram_14_0 :  in std_logic;
store_ram_13_1 :  in std_logic;
store_ram_13_0 :  in std_logic;
store_ram_12_1 :  in std_logic;
store_ram_12_0 :  in std_logic;
store_ram_11_1 :  in std_logic;
store_ram_11_0 :  in std_logic;
store_ram_10_1 :  in std_logic;
store_ram_10_0 :  in std_logic;
store_ram_9_1 :  in std_logic;
store_ram_9_0 :  in std_logic;
store_ram_8_1 :  in std_logic;
store_ram_8_0 :  in std_logic;
store_ram_7_1 :  in std_logic;
store_ram_7_0 :  in std_logic;
store_ram_6_1 :  in std_logic;
store_ram_6_0 :  in std_logic;
store_ram_5_1 :  in std_logic;
store_ram_5_0 :  in std_logic;
store_ram_4_1 :  in std_logic;
store_ram_4_0 :  in std_logic;
store_ram_3_1 :  in std_logic;
store_ram_3_0 :  in std_logic;
store_ram_2_1 :  in std_logic;
store_ram_2_0 :  in std_logic;
store_ram_1_1 :  in std_logic;
store_ram_1_0 :  in std_logic;
store_ram_0_1 :  in std_logic;
store_ram_0_0 :  in std_logic;
vaddr_7 :  out std_logic;
vaddr_6 :  out std_logic;
vaddr_5 :  out std_logic;
vaddr_4 :  out std_logic;
vaddr_3 :  out std_logic;
vaddr_2 :  out std_logic;
vaddr_1 :  out std_logic;
vaddr_0 :  out std_logic;
store_xy_7 :  in std_logic;
store_xy_6 :  in std_logic;
store_xy_5 :  in std_logic;
store_xy_4 :  in std_logic;
store_xy_3 :  in std_logic;
store_xy_2 :  in std_logic;
store_xy_1 :  in std_logic;
store_xy_0 :  in std_logic;
vdin_1_iv_0_m2_x_13 :  out std_logic;
vdin_1_iv_0_m2_x_14 :  out std_logic;
vdin_1_iv_0_m2_x_15 :  out std_logic;
vdin_1_iv_0_m2_x_6 :  out std_logic;
vdin_1_iv_0_m2_x_7 :  out std_logic;
vdin_1_iv_0_m2_x_8 :  out std_logic;
vdin_1_iv_0_m2_x_9 :  out std_logic;
vdin_1_iv_0_m2_x_10 :  out std_logic;
vdin_1_iv_0_m2_x_11 :  out std_logic;
vdin_1_iv_0_m2_x_12 :  out std_logic;
vdin_1_iv_0_m2_x_0 :  out std_logic;
vdin_1_iv_0_m2_x_1 :  out std_logic;
vdin_1_iv_0_m2_x_2 :  out std_logic;
vdin_1_iv_0_m2_x_3 :  out std_logic;
vdin_1_iv_0_m2_x_4 :  out std_logic;
vdin_1_iv_0_m2_x_5 :  out std_logic;
vdout_c_13 :  in std_logic;
vdout_c_14 :  in std_logic;
vdout_c_15 :  in std_logic;
vdout_c_6 :  in std_logic;
vdout_c_7 :  in std_logic;
vdout_c_8 :  in std_logic;
vdout_c_9 :  in std_logic;
vdout_c_10 :  in std_logic;
vdout_c_11 :  in std_logic;
vdout_c_12 :  in std_logic;
vdout_c_0 :  in std_logic;
vdout_c_1 :  in std_logic;
vdout_c_2 :  in std_logic;
vdout_c_3 :  in std_logic;
vdout_c_4 :  in std_logic;
vdout_c_5 :  in std_logic;
clk_c :  in std_logic;
\vaddr_1_0_0__g2\ :  out std_logic;
state_s1_0_a3 :  out std_logic;
\state_srsts_0_1__g1\ :  out std_logic;
delay_i :  out std_logic;
start_rmw_d1_i_0_o2 :  in std_logic;
reset_c :  in std_logic);
end read_modify_write;

architecture beh of read_modify_write is
signal devclrn : std_logic := '1';
signal devpor : std_logic := '1';
signal devoe : std_logic := '0';
signal LOCALSTORE_15 : std_logic_vector(1 downto 0);
signal LOCALSTORE_14 : std_logic_vector(1 downto 0);
signal LOCALSTORE_13 : std_logic_vector(1 downto 0);
signal LOCALSTORE_12 : std_logic_vector(1 downto 0);
signal LOCALSTORE_11 : std_logic_vector(1 downto 0);
signal LOCALSTORE_10 : std_logic_vector(1 downto 0);
signal LOCALSTORE_9 : std_logic_vector(1 downto 0);
signal LOCALSTORE_8 : std_logic_vector(1 downto 0);
signal LOCALSTORE_7 : std_logic_vector(1 downto 0);
signal LOCALSTORE_6 : std_logic_vector(1 downto 0);
signal LOCALSTORE_5 : std_logic_vector(1 downto 0);
signal LOCALSTORE_4 : std_logic_vector(1 downto 0);
signal LOCALSTORE_3 : std_logic_vector(1 downto 0);
signal LOCALSTORE_2 : std_logic_vector(1 downto 0);
signal LOCALSTORE_1 : std_logic_vector(1 downto 0);
signal LOCALSTORE_0 : std_logic_vector(1 downto 0);
signal \VADDR_1_0_0__G2_58\ : std_logic ;
signal GND : std_logic ;
signal VCC : std_logic ;
component ram_fsm
port(
  clk_c :  in std_logic;
  state_s1_0_a3 :  out std_logic;
  \state_srsts_0_1__g1\ :  out std_logic;
  delay_i :  out std_logic;
  start_rmw_d1_i_0_o2 :  in std_logic;
  \vaddr_1_0_0__g2\ :  out std_logic;
  reset_c :  in std_logic  );
end component;
begin
\R1_LOCALSTORE_15_1_\: cycloneii_lcell_ff port map (
regout => LOCALSTORE_15(1),
datain => store_ram_15_1,
clk => clk_c,
ena => \VADDR_1_0_0__G2_58\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_LOCALSTORE_15_0_\: cycloneii_lcell_ff port map (
regout => LOCALSTORE_15(0),
datain => store_ram_15_0,
clk => clk_c,
ena => \VADDR_1_0_0__G2_58\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_LOCALSTORE_14_1_\: cycloneii_lcell_ff port map (
regout => LOCALSTORE_14(1),
datain => store_ram_14_1,
clk => clk_c,
ena => \VADDR_1_0_0__G2_58\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_LOCALSTORE_14_0_\: cycloneii_lcell_ff port map (
regout => LOCALSTORE_14(0),
datain => store_ram_14_0,
clk => clk_c,
ena => \VADDR_1_0_0__G2_58\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_LOCALSTORE_13_1_\: cycloneii_lcell_ff port map (
regout => LOCALSTORE_13(1),
datain => store_ram_13_1,
clk => clk_c,
ena => \VADDR_1_0_0__G2_58\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_LOCALSTORE_13_0_\: cycloneii_lcell_ff port map (
regout => LOCALSTORE_13(0),
datain => store_ram_13_0,
clk => clk_c,
ena => \VADDR_1_0_0__G2_58\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_LOCALSTORE_12_1_\: cycloneii_lcell_ff port map (
regout => LOCALSTORE_12(1),
datain => store_ram_12_1,
clk => clk_c,
ena => \VADDR_1_0_0__G2_58\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_LOCALSTORE_12_0_\: cycloneii_lcell_ff port map (
regout => LOCALSTORE_12(0),
datain => store_ram_12_0,
clk => clk_c,
ena => \VADDR_1_0_0__G2_58\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_LOCALSTORE_11_1_\: cycloneii_lcell_ff port map (
regout => LOCALSTORE_11(1),
datain => store_ram_11_1,
clk => clk_c,
ena => \VADDR_1_0_0__G2_58\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_LOCALSTORE_11_0_\: cycloneii_lcell_ff port map (
regout => LOCALSTORE_11(0),
datain => store_ram_11_0,
clk => clk_c,
ena => \VADDR_1_0_0__G2_58\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_LOCALSTORE_10_1_\: cycloneii_lcell_ff port map (
regout => LOCALSTORE_10(1),
datain => store_ram_10_1,
clk => clk_c,
ena => \VADDR_1_0_0__G2_58\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_LOCALSTORE_10_0_\: cycloneii_lcell_ff port map (
regout => LOCALSTORE_10(0),
datain => store_ram_10_0,
clk => clk_c,
ena => \VADDR_1_0_0__G2_58\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_LOCALSTORE_9_1_\: cycloneii_lcell_ff port map (
regout => LOCALSTORE_9(1),
datain => store_ram_9_1,
clk => clk_c,
ena => \VADDR_1_0_0__G2_58\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_LOCALSTORE_9_0_\: cycloneii_lcell_ff port map (
regout => LOCALSTORE_9(0),
datain => store_ram_9_0,
clk => clk_c,
ena => \VADDR_1_0_0__G2_58\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_LOCALSTORE_8_1_\: cycloneii_lcell_ff port map (
regout => LOCALSTORE_8(1),
datain => store_ram_8_1,
clk => clk_c,
ena => \VADDR_1_0_0__G2_58\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_LOCALSTORE_8_0_\: cycloneii_lcell_ff port map (
regout => LOCALSTORE_8(0),
datain => store_ram_8_0,
clk => clk_c,
ena => \VADDR_1_0_0__G2_58\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_LOCALSTORE_7_1_\: cycloneii_lcell_ff port map (
regout => LOCALSTORE_7(1),
datain => store_ram_7_1,
clk => clk_c,
ena => \VADDR_1_0_0__G2_58\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_LOCALSTORE_7_0_\: cycloneii_lcell_ff port map (
regout => LOCALSTORE_7(0),
datain => store_ram_7_0,
clk => clk_c,
ena => \VADDR_1_0_0__G2_58\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_LOCALSTORE_6_1_\: cycloneii_lcell_ff port map (
regout => LOCALSTORE_6(1),
datain => store_ram_6_1,
clk => clk_c,
ena => \VADDR_1_0_0__G2_58\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_LOCALSTORE_6_0_\: cycloneii_lcell_ff port map (
regout => LOCALSTORE_6(0),
datain => store_ram_6_0,
clk => clk_c,
ena => \VADDR_1_0_0__G2_58\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_LOCALSTORE_5_1_\: cycloneii_lcell_ff port map (
regout => LOCALSTORE_5(1),
datain => store_ram_5_1,
clk => clk_c,
ena => \VADDR_1_0_0__G2_58\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_LOCALSTORE_5_0_\: cycloneii_lcell_ff port map (
regout => LOCALSTORE_5(0),
datain => store_ram_5_0,
clk => clk_c,
ena => \VADDR_1_0_0__G2_58\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_LOCALSTORE_4_1_\: cycloneii_lcell_ff port map (
regout => LOCALSTORE_4(1),
datain => store_ram_4_1,
clk => clk_c,
ena => \VADDR_1_0_0__G2_58\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_LOCALSTORE_4_0_\: cycloneii_lcell_ff port map (
regout => LOCALSTORE_4(0),
datain => store_ram_4_0,
clk => clk_c,
ena => \VADDR_1_0_0__G2_58\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_LOCALSTORE_3_1_\: cycloneii_lcell_ff port map (
regout => LOCALSTORE_3(1),
datain => store_ram_3_1,
clk => clk_c,
ena => \VADDR_1_0_0__G2_58\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_LOCALSTORE_3_0_\: cycloneii_lcell_ff port map (
regout => LOCALSTORE_3(0),
datain => store_ram_3_0,
clk => clk_c,
ena => \VADDR_1_0_0__G2_58\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_LOCALSTORE_2_1_\: cycloneii_lcell_ff port map (
regout => LOCALSTORE_2(1),
datain => store_ram_2_1,
clk => clk_c,
ena => \VADDR_1_0_0__G2_58\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_LOCALSTORE_2_0_\: cycloneii_lcell_ff port map (
regout => LOCALSTORE_2(0),
datain => store_ram_2_0,
clk => clk_c,
ena => \VADDR_1_0_0__G2_58\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_LOCALSTORE_1_1_\: cycloneii_lcell_ff port map (
regout => LOCALSTORE_1(1),
datain => store_ram_1_1,
clk => clk_c,
ena => \VADDR_1_0_0__G2_58\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_LOCALSTORE_1_0_\: cycloneii_lcell_ff port map (
regout => LOCALSTORE_1(0),
datain => store_ram_1_0,
clk => clk_c,
ena => \VADDR_1_0_0__G2_58\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_LOCALSTORE_0_1_\: cycloneii_lcell_ff port map (
regout => LOCALSTORE_0(1),
datain => store_ram_0_1,
clk => clk_c,
ena => \VADDR_1_0_0__G2_58\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_LOCALSTORE_0_0_\: cycloneii_lcell_ff port map (
regout => LOCALSTORE_0(0),
datain => store_ram_0_0,
clk => clk_c,
ena => \VADDR_1_0_0__G2_58\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\VADDR_7_\: cycloneii_lcell_ff port map (
regout => vaddr_7,
datain => store_xy_7,
clk => clk_c,
ena => \VADDR_1_0_0__G2_58\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\VADDR_6_\: cycloneii_lcell_ff port map (
regout => vaddr_6,
datain => store_xy_6,
clk => clk_c,
ena => \VADDR_1_0_0__G2_58\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\VADDR_5_\: cycloneii_lcell_ff port map (
regout => vaddr_5,
datain => store_xy_5,
clk => clk_c,
ena => \VADDR_1_0_0__G2_58\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\VADDR_4_\: cycloneii_lcell_ff port map (
regout => vaddr_4,
datain => store_xy_4,
clk => clk_c,
ena => \VADDR_1_0_0__G2_58\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\VADDR_3_\: cycloneii_lcell_ff port map (
regout => vaddr_3,
datain => store_xy_3,
clk => clk_c,
ena => \VADDR_1_0_0__G2_58\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\VADDR_2_\: cycloneii_lcell_ff port map (
regout => vaddr_2,
datain => store_xy_2,
clk => clk_c,
ena => \VADDR_1_0_0__G2_58\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\VADDR_1_\: cycloneii_lcell_ff port map (
regout => vaddr_1,
datain => store_xy_1,
clk => clk_c,
ena => \VADDR_1_0_0__G2_58\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\VADDR_0_\: cycloneii_lcell_ff port map (
regout => vaddr_0,
datain => store_xy_0,
clk => clk_c,
ena => \VADDR_1_0_0__G2_58\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\VDIN_1_IV_0_M2_X_13_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111001001110010")
port map (
combout => vdin_1_iv_0_m2_x_13,
dataa => vdout_c_13,
datab => LOCALSTORE_13(0),
datac => LOCALSTORE_13(1));
\VDIN_1_IV_0_M2_X_14_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111001001110010")
port map (
combout => vdin_1_iv_0_m2_x_14,
dataa => vdout_c_14,
datab => LOCALSTORE_14(0),
datac => LOCALSTORE_14(1));
\VDIN_1_IV_0_M2_X_15_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111001001110010")
port map (
combout => vdin_1_iv_0_m2_x_15,
dataa => vdout_c_15,
datab => LOCALSTORE_15(0),
datac => LOCALSTORE_15(1));
\VDIN_1_IV_0_M2_X_6_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111001001110010")
port map (
combout => vdin_1_iv_0_m2_x_6,
dataa => vdout_c_6,
datab => LOCALSTORE_6(0),
datac => LOCALSTORE_6(1));
\VDIN_1_IV_0_M2_X_7_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111001001110010")
port map (
combout => vdin_1_iv_0_m2_x_7,
dataa => vdout_c_7,
datab => LOCALSTORE_7(0),
datac => LOCALSTORE_7(1));
\VDIN_1_IV_0_M2_X_8_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111001001110010")
port map (
combout => vdin_1_iv_0_m2_x_8,
dataa => vdout_c_8,
datab => LOCALSTORE_8(0),
datac => LOCALSTORE_8(1));
\VDIN_1_IV_0_M2_X_9_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111001001110010")
port map (
combout => vdin_1_iv_0_m2_x_9,
dataa => vdout_c_9,
datab => LOCALSTORE_9(0),
datac => LOCALSTORE_9(1));
\VDIN_1_IV_0_M2_X_10_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111001001110010")
port map (
combout => vdin_1_iv_0_m2_x_10,
dataa => vdout_c_10,
datab => LOCALSTORE_10(0),
datac => LOCALSTORE_10(1));
\VDIN_1_IV_0_M2_X_11_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111001001110010")
port map (
combout => vdin_1_iv_0_m2_x_11,
dataa => vdout_c_11,
datab => LOCALSTORE_11(0),
datac => LOCALSTORE_11(1));
\VDIN_1_IV_0_M2_X_12_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111001001110010")
port map (
combout => vdin_1_iv_0_m2_x_12,
dataa => vdout_c_12,
datab => LOCALSTORE_12(0),
datac => LOCALSTORE_12(1));
\VDIN_1_IV_0_M2_X_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111001001110010")
port map (
combout => vdin_1_iv_0_m2_x_0,
dataa => vdout_c_0,
datab => LOCALSTORE_0(0),
datac => LOCALSTORE_0(1));
\VDIN_1_IV_0_M2_X_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111001001110010")
port map (
combout => vdin_1_iv_0_m2_x_1,
dataa => vdout_c_1,
datab => LOCALSTORE_1(0),
datac => LOCALSTORE_1(1));
\VDIN_1_IV_0_M2_X_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111001001110010")
port map (
combout => vdin_1_iv_0_m2_x_2,
dataa => vdout_c_2,
datab => LOCALSTORE_2(0),
datac => LOCALSTORE_2(1));
\VDIN_1_IV_0_M2_X_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111001001110010")
port map (
combout => vdin_1_iv_0_m2_x_3,
dataa => vdout_c_3,
datab => LOCALSTORE_3(0),
datac => LOCALSTORE_3(1));
\VDIN_1_IV_0_M2_X_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111001001110010")
port map (
combout => vdin_1_iv_0_m2_x_4,
dataa => vdout_c_4,
datab => LOCALSTORE_4(0),
datac => LOCALSTORE_4(1));
\VDIN_1_IV_0_M2_X_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111001001110010")
port map (
combout => vdin_1_iv_0_m2_x_5,
dataa => vdout_c_5,
datab => LOCALSTORE_5(0),
datac => LOCALSTORE_5(1));
RAMFSM: ram_fsm port map (
clk_c => clk_c,
state_s1_0_a3 => state_s1_0_a3,
\state_srsts_0_1__g1\ => \state_srsts_0_1__g1\,
delay_i => delay_i,
start_rmw_d1_i_0_o2 => start_rmw_d1_i_0_o2,
\vaddr_1_0_0__g2\ => \VADDR_1_0_0__G2_58\,
reset_c => reset_c);
GND <= '0';
VCC <= '1';
\vaddr_1_0_0__g2\ <= \VADDR_1_0_0__G2_58\;
end beh;

--
library ieee, cycloneii;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library synplify;
use synplify.components.all;
use cycloneii.cycloneii_components.all;

entity pix_word_cache is
port(
store_ram_0_1 :  out std_logic;
store_ram_0_0 :  out std_logic;
store_ram_1_1 :  out std_logic;
store_ram_1_0 :  out std_logic;
store_ram_2_1 :  out std_logic;
store_ram_2_0 :  out std_logic;
store_ram_3_1 :  out std_logic;
store_ram_3_0 :  out std_logic;
store_ram_4_1 :  out std_logic;
store_ram_4_0 :  out std_logic;
store_ram_5_1 :  out std_logic;
store_ram_5_0 :  out std_logic;
store_ram_6_1 :  out std_logic;
store_ram_6_0 :  out std_logic;
store_ram_7_1 :  out std_logic;
store_ram_7_0 :  out std_logic;
store_ram_8_1 :  out std_logic;
store_ram_8_0 :  out std_logic;
store_ram_9_1 :  out std_logic;
store_ram_9_0 :  out std_logic;
store_ram_10_1 :  out std_logic;
store_ram_10_0 :  out std_logic;
store_ram_11_1 :  out std_logic;
store_ram_11_0 :  out std_logic;
store_ram_12_1 :  out std_logic;
store_ram_12_0 :  out std_logic;
store_ram_13_1 :  out std_logic;
store_ram_13_0 :  out std_logic;
store_ram_14_1 :  out std_logic;
store_ram_14_0 :  out std_logic;
store_ram_15_1 :  out std_logic;
store_ram_15_0 :  out std_logic;
rcb_state_0 :  in std_logic;
rcb_state_2 :  in std_logic;
X_1 :  in std_logic;
X_0 :  in std_logic;
Y_1 :  in std_logic;
Y_0 :  in std_logic;
pixnum_0 :  in std_logic;
rcb_cmd_0 :  in std_logic;
rcb_cmd_1 :  in std_logic;
temp_ram_8_10_0_iv_0_0_a3_0 :  out std_logic;
pixopbus_12_1_i_o3_0 :  in std_logic;
pixopbus_2_1_i_o3_0 :  in std_logic;
pixopbus_14_1_i_0 :  in std_logic;
pixopbus_12_1_i_1 :  in std_logic;
pixopbus_12_1_i_0 :  in std_logic;
pixopbus_3_1_i_a3_0 :  in std_logic;
pixopbus_2_1_i_0 :  in std_logic;
pixopbus_2_1_i_1 :  in std_logic;
pixopbus_3_1_i_0 :  in std_logic;
pixopbus_3_1_i_1 :  in std_logic;
pixopbus_0_2_i_1 :  in std_logic;
pixopbus_0_2_i_0 :  in std_logic;
pixopbus_1_1_i_1 :  in std_logic;
pixopbus_1_1_i_0 :  in std_logic;
pixopbus_15_2_i_0 :  in std_logic;
pixopbus_15_2_i_1 :  in std_logic;
pixopbus_13_1_i_0 :  in std_logic;
pixopbus_13_1_i_1 :  in std_logic;
pixopbus_4_1_i_o3_0_0 :  in std_logic;
pixopbus_0_2_i_a3_0 :  in std_logic;
pixopbus_8_1_i_1 :  in std_logic;
pixopbus_8_1_i_0 :  in std_logic;
pixopbus_5_1_i_0 :  in std_logic;
pixopbus_5_1_i_1 :  in std_logic;
pixopbus_10_1_i_0 :  in std_logic;
pixopbus_10_1_i_1 :  in std_logic;
pixopbus_6_1_i_0 :  in std_logic;
pixopbus_6_1_i_1 :  in std_logic;
pixopbus_9_1_i_0 :  in std_logic;
pixopbus_9_1_i_1 :  in std_logic;
pixopbus_7_1_i_1 :  in std_logic;
pixopbus_7_1_i_0 :  in std_logic;
pixopbus_4_1_i_0 :  in std_logic;
pixopbus_4_1_i_1 :  in std_logic;
pixopbus_11_1_i_0 :  in std_logic;
pixopbus_11_1_i_1 :  in std_logic;
clk_c :  in std_logic;
\vaddr_1_0_0__g2\ :  in std_logic;
reset_c :  in std_logic;
un22_store_xy :  in std_logic;
buswen_1_sqmuxa_0_a2_1 :  in std_logic;
rcb_ready25 :  in std_logic;
\currentblocky_s_1_0_0__g2_1\ :  in std_logic;
G_1143 :  in std_logic;
un2_is_same_0_a5 :  out std_logic;
currentblockx_s_1_x :  in std_logic);
end pix_word_cache;

architecture beh of pix_word_cache is
signal devclrn : std_logic := '1';
signal devpor : std_logic := '1';
signal devoe : std_logic := '0';
signal TEMP_RAM_12_10_0_IV_0_I_O5 : std_logic_vector(1 to 1);
signal TEMP_RAM_14_10_0_IV_0_I_O5 : std_logic_vector(1 to 1);
signal TEMP_RAM_6_10_0_IV_0_I_I_A3_1 : std_logic_vector(0 to 0);
signal TEMP_RAM_10_10_0_IV_0_0_0_A3_1 : std_logic_vector(0 to 0);
signal TEMP_RAM_5_10_0_IV_0_I_I_A3_1 : std_logic_vector(0 to 0);
signal TEMP_RAM_12_10_0_IV_0_I_A3_0 : std_logic_vector(1 to 1);
signal TEMP_RAM_3_10_0_IV_I_I_A3_0 : std_logic_vector(0 to 0);
signal TEMP_RAM_5_10_0_IV_0_I_I_A3_0 : std_logic_vector(0 to 0);
signal TEMP_RAM_10_10_0_IV_0_0_0_A3_0 : std_logic_vector(0 to 0);
signal TEMP_RAM_3_10_0_IV_I_I_A3_1 : std_logic_vector(0 to 0);
signal TEMP_RAM_12_10_0_IV_0_I_A3_1 : std_logic_vector(1 to 1);
signal TEMP_RAM_6_10_0_IV_0_I_I_A3_0 : std_logic_vector(0 to 0);
signal TEMP_RAM_8_10_0_IV_0_I_A3_0 : std_logic_vector(1 to 1);
signal TEMP_RAM_9_10_0_IV_0_0_I_O3 : std_logic_vector(1 to 1);
signal TEMP_RAM_9_10_0_IV_0_I_I_O3 : std_logic_vector(0 to 0);
signal TEMP_RAM_6_10_0_IV_0_I_I_O3_0 : std_logic_vector(0 to 0);
signal TEMP_RAM_8_10_0_IV_0_I_O3_0 : std_logic_vector(1 to 1);
signal TEMP_RAM_5_10_0_IV_0_I_I_O3_0 : std_logic_vector(0 to 0);
signal TEMP_RAM_15_11_0_IV_0_0_O3_0 : std_logic_vector(0 to 0);
signal TEMP_RAM_11_10_0_IV_I_I_O3 : std_logic_vector(0 to 0);
signal TEMP_RAM_11_10_0_IV_0_I_O3 : std_logic_vector(1 to 1);
signal TEMP_RAM_8_10_0_IV_0_I_A3_1 : std_logic_vector(1 to 1);
signal TEMP_RAM_2_10_0_IV_0_I_I_O3 : std_logic_vector(0 to 0);
signal TEMP_RAM_8_10_0_IV_0_I_O3 : std_logic_vector(1 to 1);
signal TEMP_RAM_3_10_0_IV_I_I_O3 : std_logic_vector(0 to 0);
signal TEMP_RAM_9_10_0_IV_0_I_I_O3_0 : std_logic_vector(0 to 0);
signal TEMP_RAM_1_10_0_IV_I_I_O5_0 : std_logic_vector(0 to 0);
signal TEMP_RAM_11_10_0_IV_I_I_O5_0 : std_logic_vector(0 to 0);
signal TEMP_RAM_14_10_0_IV_I_I_A5_2 : std_logic_vector(0 to 0);
signal TEMP_RAM_14_10_0_IV_I_I_A5_0 : std_logic_vector(0 to 0);
signal TEMP_RAM_12_10_0_IV_0_I_A5_0 : std_logic_vector(1 to 1);
signal TEMP_RAM_14_10_0_IV_0_I_A5_0 : std_logic_vector(1 to 1);
signal TEMP_RAM_12_10_0_IV_0_0_A5_0 : std_logic_vector(0 to 0);
signal TEMP_RAM_15_11_0_IV_0_0_A5_0 : std_logic_vector(0 to 0);
signal TEMP_RAM_15_11_0_IV_0_0_A5_2 : std_logic_vector(0 to 0);
signal TEMP_RAM_2_10_0_IV_0_I_I_A5_0 : std_logic_vector(0 to 0);
signal TEMP_RAM_2_10_0_IV_0_0_I_A5_0 : std_logic_vector(1 to 1);
signal TEMP_RAM_3_10_0_IV_I_I_A5_0 : std_logic_vector(0 to 0);
signal TEMP_RAM_13_10_0_IV_I_I_A5_0 : std_logic_vector(0 to 0);
signal TEMP_RAM_3_10_0_IV_0_I_A5_0 : std_logic_vector(1 to 1);
signal TEMP_RAM_0_12_0_IV_0_I_A5_0 : std_logic_vector(1 to 1);
signal TEMP_RAM_0_12_0_IV_I_I_A5_0 : std_logic_vector(0 to 0);
signal TEMP_RAM_1_10_0_IV_0_I_A5_0 : std_logic_vector(1 to 1);
signal TEMP_RAM_1_10_0_IV_I_I_A5_0 : std_logic_vector(0 to 0);
signal TEMP_RAM_15_11_0_IV_0_I_A5_0 : std_logic_vector(1 to 1);
signal TEMP_RAM_13_10_0_IV_0_I_A5_0 : std_logic_vector(1 to 1);
signal TEMP_RAM_11_10_0_IV_I_I_A5_0_0 : std_logic_vector(0 to 0);
signal TEMP_RAM_4_10_0_IV_I_I_A5_0_0 : std_logic_vector(0 to 0);
signal TEMP_RAM_7_10_0_IV_0_I_A5_0_0 : std_logic_vector(1 to 1);
signal TEMP_RAM_6_10_0_IV_0_I_I_A5_0_0 : std_logic_vector(0 to 0);
signal TEMP_RAM_7_10_0_IV_0_I_A5_2_0 : std_logic_vector(1 to 1);
signal TEMP_RAM_4_10_0_IV_I_I_A5_2_0 : std_logic_vector(0 to 0);
signal TEMP_RAM_6_10_0_IV_0_I_I_A5_2_0 : std_logic_vector(0 to 0);
signal TEMP_RAM_8_10_0_IV_0_I_A5_0 : std_logic_vector(1 to 1);
signal TEMP_RAM_8_10_0_IV_0_0_A5_0 : std_logic_vector(0 to 0);
signal TEMP_RAM_5_10_0_IV_0_I_I_A5_0 : std_logic_vector(0 to 0);
signal TEMP_RAM_5_10_0_IV_0_0_I_A5_0 : std_logic_vector(1 to 1);
signal TEMP_RAM_10_10_0_IV_0_0_0_A5_0 : std_logic_vector(0 to 0);
signal TEMP_RAM_10_10_0_IV_0_0_0_A5_2 : std_logic_vector(0 to 0);
signal TEMP_RAM_10_10_0_IV_0_0_I_A5_0 : std_logic_vector(1 to 1);
signal TEMP_RAM_6_10_0_IV_0_0_I_A5_0 : std_logic_vector(1 to 1);
signal TEMP_RAM_9_10_0_IV_0_I_I_A5_0 : std_logic_vector(0 to 0);
signal TEMP_RAM_9_10_0_IV_0_0_I_A5_0 : std_logic_vector(1 to 1);
signal TEMP_RAM_7_10_0_IV_I_I_A5_0 : std_logic_vector(0 to 0);
signal TEMP_RAM_4_10_0_IV_0_I_A5_0 : std_logic_vector(1 to 1);
signal TEMP_RAM_11_10_0_IV_0_I_A5_0 : std_logic_vector(1 to 1);
signal TEMP_RAM_11_10_0_IV_I_I_A5_0 : std_logic_vector(0 to 0);
signal \TEMP_RAM_0_12_0_IV_0_I_0_1__G0_0\ : std_logic ;
signal \TEMP_RAM_0_12_0_IV_I_I_0_0__G0_0\ : std_logic ;
signal \TEMP_RAM_1_10_0_IV_0_I_0_1__G0_0\ : std_logic ;
signal \TEMP_RAM_1_10_0_IV_I_I_0_0__G0_0\ : std_logic ;
signal \TEMP_RAM_2_10_0_IV_0_0_I_0_1__G0_0\ : std_logic ;
signal \TEMP_RAM_2_10_0_IV_0_I_I_0_0__G0_0\ : std_logic ;
signal \TEMP_RAM_3_10_0_IV_0_I_0_1__G0_0\ : std_logic ;
signal \TEMP_RAM_3_10_0_IV_I_I_0_0__G0_0\ : std_logic ;
signal \TEMP_RAM_4_10_0_IV_0_I_0_1__G0_0\ : std_logic ;
signal \TEMP_RAM_4_10_0_IV_I_I_0_0__G0_0\ : std_logic ;
signal \TEMP_RAM_5_10_0_IV_0_0_I_0_1__G0_0\ : std_logic ;
signal \TEMP_RAM_5_10_0_IV_0_I_I_0_0__G0_0\ : std_logic ;
signal \TEMP_RAM_6_10_0_IV_0_0_I_0_1__G0_0\ : std_logic ;
signal \TEMP_RAM_6_10_0_IV_0_I_I_0_0__G0_0\ : std_logic ;
signal \TEMP_RAM_7_10_0_IV_0_I_0_1__G0_0\ : std_logic ;
signal \TEMP_RAM_7_10_0_IV_I_I_0_0__G0_0\ : std_logic ;
signal \TEMP_RAM_8_10_0_IV_0_I_0_1__G0_0\ : std_logic ;
signal \TEMP_RAM_8_10_0_IV_0_0_0_0__G0_0\ : std_logic ;
signal \TEMP_RAM_9_10_0_IV_0_0_I_0_1__G0_0\ : std_logic ;
signal \TEMP_RAM_9_10_0_IV_0_I_I_0_0__G0_0\ : std_logic ;
signal \TEMP_RAM_10_10_0_IV_0_0_I_0_1__G0_0\ : std_logic ;
signal \TEMP_RAM_10_10_0_IV_0_0_0_0_0__G0_0\ : std_logic ;
signal \TEMP_RAM_11_10_0_IV_0_I_0_1__G0_0\ : std_logic ;
signal \TEMP_RAM_11_10_0_IV_I_I_0_0__G0_0\ : std_logic ;
signal \TEMP_RAM_12_10_0_IV_0_I_0_1__G0_0\ : std_logic ;
signal \TEMP_RAM_12_10_0_IV_0_0_0_0__G0_0\ : std_logic ;
signal \TEMP_RAM_13_10_0_IV_0_I_0_1__G0_0\ : std_logic ;
signal \TEMP_RAM_13_10_0_IV_I_I_0_0__G0_0\ : std_logic ;
signal \TEMP_RAM_14_10_0_IV_0_I_0_1__G0_0\ : std_logic ;
signal \TEMP_RAM_14_10_0_IV_I_I_0_0__G0_0\ : std_logic ;
signal \TEMP_RAM_15_11_0_IV_0_I_0_1__G0_0\ : std_logic ;
signal \TEMP_RAM_15_11_0_IV_0_0_0_0__G0_0\ : std_logic ;
signal UN2_IS_SAME_0_A5_0 : std_logic ;
signal UN2_IS_SAME_0_A5_4 : std_logic ;
signal UN2_IS_SAME_0_A5_8 : std_logic ;
signal UN2_IS_SAME_0_A5_12 : std_logic ;
signal UN2_IS_SAME_0_A5_17 : std_logic ;
signal UN2_IS_SAME_0_A5_19 : std_logic ;
signal UN2_IS_SAME_0_A5_21 : std_logic ;
signal UN2_IS_SAME_0_A5_23 : std_logic ;
signal UN2_IS_SAME_0_A5_24 : std_logic ;
signal UN2_IS_SAME_0_A5_25 : std_logic ;
signal UN2_IS_SAME_0_A5_26 : std_logic ;
signal UN2_IS_SAME_0_A5_27 : std_logic ;
signal \TEMP_RAM_1_10_0_IV_0_I_0_1__G0_0_A5_1_A\ : std_logic ;
signal \TEMP_RAM_1_10_0_IV_0_I_0_1__G0_0_A5_1\ : std_logic ;
signal \TEMP_RAM_14_10_0_IV_I_I_0_0__G0_0_A5\ : std_logic ;
signal \TEMP_RAM_10_10_0_IV_0_0_0_0_0__G0_0_A5\ : std_logic ;
signal \TEMP_RAM_11_10_0_IV_I_I_0_0__G0_0_A5\ : std_logic ;
signal \TEMP_RAM_15_11_0_IV_0_0_0_0__G0_0_A5\ : std_logic ;
signal \TEMP_RAM_4_10_0_IV_I_I_0_0__G0_0_A5_0\ : std_logic ;
signal \TEMP_RAM_2_10_0_IV_0_I_I_0_0__G0_0_A5_0\ : std_logic ;
signal \TEMP_RAM_9_10_0_IV_0_I_I_0_0__G0_0_A5_0\ : std_logic ;
signal \TEMP_RAM_6_10_0_IV_0_I_I_0_0__G0_0_A5_0\ : std_logic ;
signal \TEMP_RAM_12_10_0_IV_0_0_0_0__G0_0_A5_0\ : std_logic ;
signal \TEMP_RAM_0_12_0_IV_I_I_0_0__G0_0_A5_0\ : std_logic ;
signal \TEMP_RAM_5_10_0_IV_0_I_I_0_0__G0_0_A5_0\ : std_logic ;
signal \TEMP_RAM_13_10_0_IV_I_I_0_0__G0_0_A5_0\ : std_logic ;
signal \TEMP_RAM_8_10_0_IV_0_0_0_0__G0_0_A5_0\ : std_logic ;
signal \TEMP_RAM_3_10_0_IV_I_I_0_0__G0_0_A5_0\ : std_logic ;
signal \TEMP_RAM_7_10_0_IV_I_I_0_0__G0_0_A5_0\ : std_logic ;
signal \TEMP_RAM_10_10_0_IV_0_0_I_0_1__G0_0_A5_1\ : std_logic ;
signal \TEMP_RAM_12_10_0_IV_0_I_0_1__G0_0_A5_0\ : std_logic ;
signal \TEMP_RAM_5_10_0_IV_0_0_I_0_1__G0_0_A5_0_A\ : std_logic ;
signal \TEMP_RAM_5_10_0_IV_0_0_I_0_1__G0_0_A5_0\ : std_logic ;
signal \TEMP_RAM_15_11_0_IV_0_I_0_1__G0_0_A5_1\ : std_logic ;
signal \TEMP_RAM_3_10_0_IV_0_I_0_1__G0_0_A5_0\ : std_logic ;
signal \TEMP_RAM_6_10_0_IV_0_0_I_0_1__G0_0_A5_0\ : std_logic ;
signal \TEMP_RAM_1_10_0_IV_0_I_0_1__G0_0_A5_0\ : std_logic ;
signal \TEMP_RAM_13_10_0_IV_0_I_0_1__G0_0_A5_0\ : std_logic ;
signal \TEMP_RAM_4_10_0_IV_0_I_0_1__G0_0_A5_0\ : std_logic ;
signal \TEMP_RAM_0_12_0_IV_0_I_0_1__G0_0_A5_0\ : std_logic ;
signal \TEMP_RAM_2_10_0_IV_0_0_I_0_1__G0_0_A5_0\ : std_logic ;
signal \TEMP_RAM_11_10_0_IV_0_I_0_1__G0_0_A5_1\ : std_logic ;
signal \TEMP_RAM_9_10_0_IV_0_0_I_0_1__G0_0_A5_0\ : std_logic ;
signal \TEMP_RAM_8_10_0_IV_0_I_0_1__G0_0_A5_0\ : std_logic ;
signal \TEMP_RAM_7_10_0_IV_0_I_0_1__G0_0_A5_0\ : std_logic ;
signal \TEMP_RAM_14_10_0_IV_0_I_0_1__G0_0_A5_1\ : std_logic ;
signal \TEMP_RAM_1_10_0_IV_I_I_0_0__G0_0_A5\ : std_logic ;
signal \TEMP_RAM_14_10_0_IV_I_I_0_0__G3\ : std_logic ;
signal \TEMP_RAM_12_10_0_IV_0_I_0_1__G3\ : std_logic ;
signal \TEMP_RAM_14_10_0_IV_0_I_0_1__G3\ : std_logic ;
signal \TEMP_RAM_4_10_0_IV_I_I_0_0__G3\ : std_logic ;
signal \TEMP_RAM_0_12_0_IV_0_I_0_1__G3_A\ : std_logic ;
signal \TEMP_RAM_0_12_0_IV_0_I_0_1__G3\ : std_logic ;
signal \TEMP_RAM_0_12_0_IV_I_I_0_0__G3\ : std_logic ;
signal \TEMP_RAM_1_10_0_IV_0_I_0_1__G3\ : std_logic ;
signal \TEMP_RAM_2_10_0_IV_0_0_I_0_1__G3\ : std_logic ;
signal \TEMP_RAM_2_10_0_IV_0_I_I_0_0__G3\ : std_logic ;
signal \TEMP_RAM_3_10_0_IV_0_I_0_1__G3\ : std_logic ;
signal \TEMP_RAM_3_10_0_IV_I_I_0_0__G3\ : std_logic ;
signal \TEMP_RAM_4_10_0_IV_0_I_0_1__G3\ : std_logic ;
signal \TEMP_RAM_5_10_0_IV_0_0_I_0_1__G3\ : std_logic ;
signal \TEMP_RAM_5_10_0_IV_0_I_I_0_0__G3\ : std_logic ;
signal \TEMP_RAM_6_10_0_IV_0_0_I_0_1__G3\ : std_logic ;
signal \TEMP_RAM_6_10_0_IV_0_I_I_0_0__G3_A\ : std_logic ;
signal \TEMP_RAM_6_10_0_IV_0_I_I_0_0__G3\ : std_logic ;
signal \TEMP_RAM_7_10_0_IV_0_I_0_1__G3_A\ : std_logic ;
signal \TEMP_RAM_7_10_0_IV_0_I_0_1__G3\ : std_logic ;
signal \TEMP_RAM_7_10_0_IV_I_I_0_0__G3\ : std_logic ;
signal \TEMP_RAM_8_10_0_IV_0_I_0_1__G3\ : std_logic ;
signal \TEMP_RAM_8_10_0_IV_0_0_0_0__G3\ : std_logic ;
signal \TEMP_RAM_9_10_0_IV_0_0_I_0_1__G3\ : std_logic ;
signal \TEMP_RAM_9_10_0_IV_0_I_I_0_0__G3\ : std_logic ;
signal \TEMP_RAM_10_10_0_IV_0_0_I_0_1__G3\ : std_logic ;
signal \TEMP_RAM_10_10_0_IV_0_0_0_0_0__G3\ : std_logic ;
signal \TEMP_RAM_11_10_0_IV_0_I_0_1__G3\ : std_logic ;
signal \TEMP_RAM_12_10_0_IV_0_0_0_0__G3\ : std_logic ;
signal \TEMP_RAM_13_10_0_IV_0_I_0_1__G3\ : std_logic ;
signal \TEMP_RAM_13_10_0_IV_I_I_0_0__G3\ : std_logic ;
signal \TEMP_RAM_15_11_0_IV_0_I_0_1__G3\ : std_logic ;
signal \TEMP_RAM_15_11_0_IV_0_0_0_0__G3\ : std_logic ;
signal \TEMP_RAM_0_12_0_IV_0_I_0_1__G0_0_0\ : std_logic ;
signal \TEMP_RAM_3_10_0_IV_0_I_0_1__G0_0_0\ : std_logic ;
signal \TEMP_RAM_2_10_0_IV_0_0_I_0_1__G0_0_0\ : std_logic ;
signal \TEMP_RAM_1_10_0_IV_0_I_0_1__G0_0_0\ : std_logic ;
signal \TEMP_RAM_1_10_0_IV_I_I_0_0__G0_0_0\ : std_logic ;
signal \TEMP_RAM_13_10_0_IV_I_I_0_0__G0_0_0\ : std_logic ;
signal \TEMP_RAM_12_10_0_IV_0_I_0_1__G0_0_0\ : std_logic ;
signal \TEMP_RAM_2_10_0_IV_0_I_I_0_0__G0_0_0\ : std_logic ;
signal \TEMP_RAM_12_10_0_IV_0_0_0_0__G0_0_0\ : std_logic ;
signal \TEMP_RAM_13_10_0_IV_0_I_0_1__G0_0_0\ : std_logic ;
signal \TEMP_RAM_15_11_0_IV_0_I_0_1__G0_0_0\ : std_logic ;
signal \TEMP_RAM_0_12_0_IV_I_I_0_0__G0_0_0\ : std_logic ;
signal \TEMP_RAM_3_10_0_IV_I_I_0_0__G0_0_0\ : std_logic ;
signal \TEMP_RAM_14_10_0_IV_0_I_0_1__G0_0_0\ : std_logic ;
signal \TEMP_RAM_6_10_0_IV_0_I_I_0_0__G0_0_0\ : std_logic ;
signal \TEMP_RAM_7_10_0_IV_0_I_0_1__G0_0_0\ : std_logic ;
signal \TEMP_RAM_5_10_0_IV_0_0_I_0_1__G0_0_0\ : std_logic ;
signal \TEMP_RAM_7_10_0_IV_I_I_0_0__G0_0_0\ : std_logic ;
signal \TEMP_RAM_5_10_0_IV_0_I_I_0_0__G0_0_0\ : std_logic ;
signal \TEMP_RAM_8_10_0_IV_0_I_0_1__G0_0_0\ : std_logic ;
signal \TEMP_RAM_6_10_0_IV_0_0_I_0_1__G0_0_0\ : std_logic ;
signal \TEMP_RAM_4_10_0_IV_I_I_0_0__G0_0_0\ : std_logic ;
signal \TEMP_RAM_11_10_0_IV_0_I_0_1__G0_0_0\ : std_logic ;
signal \TEMP_RAM_10_10_0_IV_0_0_I_0_1__G0_0_0\ : std_logic ;
signal \TEMP_RAM_11_10_0_IV_I_I_0_0__G0_0_0\ : std_logic ;
signal \TEMP_RAM_8_10_0_IV_0_0_0_0__G0_0_0\ : std_logic ;
signal \TEMP_RAM_9_10_0_IV_0_0_I_0_1__G0_0_0\ : std_logic ;
signal \TEMP_RAM_4_10_0_IV_0_I_0_1__G0_0_0\ : std_logic ;
signal \TEMP_RAM_9_10_0_IV_0_I_I_0_0__G0_0_0\ : std_logic ;
signal GND : std_logic ;
signal VCC : std_logic ;
signal STORE_RAM_0_25 : std_logic ;
signal STORE_RAM_0_26 : std_logic ;
signal STORE_RAM_1_27 : std_logic ;
signal STORE_RAM_1_28 : std_logic ;
signal STORE_RAM_2_29 : std_logic ;
signal STORE_RAM_2_30 : std_logic ;
signal STORE_RAM_3_31 : std_logic ;
signal STORE_RAM_3_32 : std_logic ;
signal STORE_RAM_4_33 : std_logic ;
signal STORE_RAM_4_34 : std_logic ;
signal STORE_RAM_5_35 : std_logic ;
signal STORE_RAM_5_36 : std_logic ;
signal STORE_RAM_6_37 : std_logic ;
signal STORE_RAM_6_38 : std_logic ;
signal STORE_RAM_7_39 : std_logic ;
signal STORE_RAM_7_40 : std_logic ;
signal STORE_RAM_8_41 : std_logic ;
signal STORE_RAM_8_42 : std_logic ;
signal STORE_RAM_9_43 : std_logic ;
signal STORE_RAM_9_44 : std_logic ;
signal STORE_RAM_10_45 : std_logic ;
signal STORE_RAM_10_46 : std_logic ;
signal STORE_RAM_11_47 : std_logic ;
signal STORE_RAM_11_48 : std_logic ;
signal STORE_RAM_12_49 : std_logic ;
signal STORE_RAM_12_50 : std_logic ;
signal STORE_RAM_13_51 : std_logic ;
signal STORE_RAM_13_52 : std_logic ;
signal STORE_RAM_14_53 : std_logic ;
signal STORE_RAM_14_54 : std_logic ;
signal STORE_RAM_15_55 : std_logic ;
signal STORE_RAM_15_56 : std_logic ;
signal TEMP_RAM_8_10_0_IV_0_0_A3_57 : std_logic ;
begin
\R1_STORE_RAM_0_1_\: cycloneii_lcell_ff port map (
regout => STORE_RAM_0_25,
datain => \TEMP_RAM_0_12_0_IV_0_I_0_1__G0_0\,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_STORE_RAM_0_0_\: cycloneii_lcell_ff port map (
regout => STORE_RAM_0_26,
datain => \TEMP_RAM_0_12_0_IV_I_I_0_0__G0_0\,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_STORE_RAM_1_1_\: cycloneii_lcell_ff port map (
regout => STORE_RAM_1_27,
datain => \TEMP_RAM_1_10_0_IV_0_I_0_1__G0_0\,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_STORE_RAM_1_0_\: cycloneii_lcell_ff port map (
regout => STORE_RAM_1_28,
datain => \TEMP_RAM_1_10_0_IV_I_I_0_0__G0_0\,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_STORE_RAM_2_1_\: cycloneii_lcell_ff port map (
regout => STORE_RAM_2_29,
datain => \TEMP_RAM_2_10_0_IV_0_0_I_0_1__G0_0\,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_STORE_RAM_2_0_\: cycloneii_lcell_ff port map (
regout => STORE_RAM_2_30,
datain => \TEMP_RAM_2_10_0_IV_0_I_I_0_0__G0_0\,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_STORE_RAM_3_1_\: cycloneii_lcell_ff port map (
regout => STORE_RAM_3_31,
datain => \TEMP_RAM_3_10_0_IV_0_I_0_1__G0_0\,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_STORE_RAM_3_0_\: cycloneii_lcell_ff port map (
regout => STORE_RAM_3_32,
datain => \TEMP_RAM_3_10_0_IV_I_I_0_0__G0_0\,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_STORE_RAM_4_1_\: cycloneii_lcell_ff port map (
regout => STORE_RAM_4_33,
datain => \TEMP_RAM_4_10_0_IV_0_I_0_1__G0_0\,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_STORE_RAM_4_0_\: cycloneii_lcell_ff port map (
regout => STORE_RAM_4_34,
datain => \TEMP_RAM_4_10_0_IV_I_I_0_0__G0_0\,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_STORE_RAM_5_1_\: cycloneii_lcell_ff port map (
regout => STORE_RAM_5_35,
datain => \TEMP_RAM_5_10_0_IV_0_0_I_0_1__G0_0\,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_STORE_RAM_5_0_\: cycloneii_lcell_ff port map (
regout => STORE_RAM_5_36,
datain => \TEMP_RAM_5_10_0_IV_0_I_I_0_0__G0_0\,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_STORE_RAM_6_1_\: cycloneii_lcell_ff port map (
regout => STORE_RAM_6_37,
datain => \TEMP_RAM_6_10_0_IV_0_0_I_0_1__G0_0\,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_STORE_RAM_6_0_\: cycloneii_lcell_ff port map (
regout => STORE_RAM_6_38,
datain => \TEMP_RAM_6_10_0_IV_0_I_I_0_0__G0_0\,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_STORE_RAM_7_1_\: cycloneii_lcell_ff port map (
regout => STORE_RAM_7_39,
datain => \TEMP_RAM_7_10_0_IV_0_I_0_1__G0_0\,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_STORE_RAM_7_0_\: cycloneii_lcell_ff port map (
regout => STORE_RAM_7_40,
datain => \TEMP_RAM_7_10_0_IV_I_I_0_0__G0_0\,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_STORE_RAM_8_1_\: cycloneii_lcell_ff port map (
regout => STORE_RAM_8_41,
datain => \TEMP_RAM_8_10_0_IV_0_I_0_1__G0_0\,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_STORE_RAM_8_0_\: cycloneii_lcell_ff port map (
regout => STORE_RAM_8_42,
datain => \TEMP_RAM_8_10_0_IV_0_0_0_0__G0_0\,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_STORE_RAM_9_1_\: cycloneii_lcell_ff port map (
regout => STORE_RAM_9_43,
datain => \TEMP_RAM_9_10_0_IV_0_0_I_0_1__G0_0\,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_STORE_RAM_9_0_\: cycloneii_lcell_ff port map (
regout => STORE_RAM_9_44,
datain => \TEMP_RAM_9_10_0_IV_0_I_I_0_0__G0_0\,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_STORE_RAM_10_1_\: cycloneii_lcell_ff port map (
regout => STORE_RAM_10_45,
datain => \TEMP_RAM_10_10_0_IV_0_0_I_0_1__G0_0\,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_STORE_RAM_10_0_\: cycloneii_lcell_ff port map (
regout => STORE_RAM_10_46,
datain => \TEMP_RAM_10_10_0_IV_0_0_0_0_0__G0_0\,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_STORE_RAM_11_1_\: cycloneii_lcell_ff port map (
regout => STORE_RAM_11_47,
datain => \TEMP_RAM_11_10_0_IV_0_I_0_1__G0_0\,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_STORE_RAM_11_0_\: cycloneii_lcell_ff port map (
regout => STORE_RAM_11_48,
datain => \TEMP_RAM_11_10_0_IV_I_I_0_0__G0_0\,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_STORE_RAM_12_1_\: cycloneii_lcell_ff port map (
regout => STORE_RAM_12_49,
datain => \TEMP_RAM_12_10_0_IV_0_I_0_1__G0_0\,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_STORE_RAM_12_0_\: cycloneii_lcell_ff port map (
regout => STORE_RAM_12_50,
datain => \TEMP_RAM_12_10_0_IV_0_0_0_0__G0_0\,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_STORE_RAM_13_1_\: cycloneii_lcell_ff port map (
regout => STORE_RAM_13_51,
datain => \TEMP_RAM_13_10_0_IV_0_I_0_1__G0_0\,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_STORE_RAM_13_0_\: cycloneii_lcell_ff port map (
regout => STORE_RAM_13_52,
datain => \TEMP_RAM_13_10_0_IV_I_I_0_0__G0_0\,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_STORE_RAM_14_1_\: cycloneii_lcell_ff port map (
regout => STORE_RAM_14_53,
datain => \TEMP_RAM_14_10_0_IV_0_I_0_1__G0_0\,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_STORE_RAM_14_0_\: cycloneii_lcell_ff port map (
regout => STORE_RAM_14_54,
datain => \TEMP_RAM_14_10_0_IV_I_I_0_0__G0_0\,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_STORE_RAM_15_1_\: cycloneii_lcell_ff port map (
regout => STORE_RAM_15_55,
datain => \TEMP_RAM_15_11_0_IV_0_I_0_1__G0_0\,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_STORE_RAM_15_0_\: cycloneii_lcell_ff port map (
regout => STORE_RAM_15_56,
datain => \TEMP_RAM_15_11_0_IV_0_0_0_0__G0_0\,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_TEMP_RAM_12_10_0_IV_0_I_O5_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101110111011101")
port map (
combout => TEMP_RAM_12_10_0_IV_0_I_O5(1),
dataa => STORE_RAM_12_49,
datab => \vaddr_1_0_0__g2\);
\R1_TEMP_RAM_14_10_0_IV_0_I_O5_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101110111011101")
port map (
combout => TEMP_RAM_14_10_0_IV_0_I_O5(1),
dataa => STORE_RAM_14_53,
datab => \vaddr_1_0_0__g2\);
UN2_IS_SAME_0_A5_0_Z432: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001000100010001")
port map (
combout => UN2_IS_SAME_0_A5_0,
dataa => STORE_RAM_8_41,
datab => STORE_RAM_8_42);
UN2_IS_SAME_0_A5_4_Z433: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001000100010001")
port map (
combout => UN2_IS_SAME_0_A5_4,
dataa => STORE_RAM_12_49,
datab => STORE_RAM_12_50);
UN2_IS_SAME_0_A5_8_Z434: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001000100010001")
port map (
combout => UN2_IS_SAME_0_A5_8,
dataa => STORE_RAM_0_25,
datab => STORE_RAM_0_26);
UN2_IS_SAME_0_A5_12_Z435: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001000100010001")
port map (
combout => UN2_IS_SAME_0_A5_12,
dataa => STORE_RAM_4_33,
datab => STORE_RAM_4_34);
UN2_IS_SAME_0_A5_17_Z436: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000000000001")
port map (
combout => UN2_IS_SAME_0_A5_17,
dataa => STORE_RAM_11_48,
datab => STORE_RAM_11_47,
datac => STORE_RAM_10_46,
datad => STORE_RAM_10_45);
UN2_IS_SAME_0_A5_19_Z437: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000000000001")
port map (
combout => UN2_IS_SAME_0_A5_19,
dataa => STORE_RAM_15_56,
datab => STORE_RAM_15_55,
datac => STORE_RAM_14_54,
datad => STORE_RAM_14_53);
UN2_IS_SAME_0_A5_21_Z438: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000000000001")
port map (
combout => UN2_IS_SAME_0_A5_21,
dataa => STORE_RAM_3_32,
datab => STORE_RAM_3_31,
datac => STORE_RAM_2_30,
datad => STORE_RAM_2_29);
UN2_IS_SAME_0_A5_23_Z439: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000000000001")
port map (
combout => UN2_IS_SAME_0_A5_23,
dataa => STORE_RAM_7_40,
datab => STORE_RAM_7_39,
datac => STORE_RAM_6_38,
datad => STORE_RAM_6_37);
\R1_TEMP_RAM_6_10_0_IV_0_I_I_A3_1_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000100000101")
port map (
combout => TEMP_RAM_6_10_0_IV_0_I_I_A3_1(0),
dataa => reset_c,
datab => rcb_state_0,
datac => \vaddr_1_0_0__g2\,
datad => un22_store_xy);
\R1_TEMP_RAM_10_10_0_IV_0_0_0_A3_1_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110000000000000")
port map (
combout => TEMP_RAM_10_10_0_IV_0_0_0_A3_1(0),
dataa => rcb_state_0,
datab => rcb_state_2,
datac => Y_1,
datad => X_1);
\R1_TEMP_RAM_5_10_0_IV_0_I_I_A3_1_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001000100011111")
port map (
combout => TEMP_RAM_5_10_0_IV_0_I_I_A3_1(0),
dataa => rcb_state_0,
datab => rcb_state_2,
datac => Y_1,
datad => X_1);
\R1_TEMP_RAM_12_10_0_IV_0_I_A3_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000011100000")
port map (
combout => TEMP_RAM_12_10_0_IV_0_I_A3_0(1),
dataa => rcb_state_0,
datab => rcb_state_2,
datac => Y_1,
datad => X_1);
\R1_TEMP_RAM_3_10_0_IV_I_I_A3_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000111000000000")
port map (
combout => TEMP_RAM_3_10_0_IV_I_I_A3_0(0),
dataa => rcb_state_0,
datab => rcb_state_2,
datac => Y_1,
datad => X_1);
\R1_TEMP_RAM_5_10_0_IV_0_I_I_A3_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110000000000000")
port map (
combout => TEMP_RAM_5_10_0_IV_0_I_I_A3_0(0),
dataa => rcb_state_0,
datab => rcb_state_2,
datac => X_0,
datad => Y_0);
\R1_TEMP_RAM_10_10_0_IV_0_0_0_A3_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001000100011111")
port map (
combout => TEMP_RAM_10_10_0_IV_0_0_0_A3_0(0),
dataa => rcb_state_0,
datab => rcb_state_2,
datac => Y_0,
datad => X_0);
\R1_TEMP_RAM_3_10_0_IV_I_I_A3_1_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000011100000")
port map (
combout => TEMP_RAM_3_10_0_IV_I_I_A3_1(0),
dataa => rcb_state_0,
datab => rcb_state_2,
datac => X_0,
datad => Y_0);
\R1_TEMP_RAM_12_10_0_IV_0_I_A3_1_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000111000000000")
port map (
combout => TEMP_RAM_12_10_0_IV_0_I_A3_1(1),
dataa => rcb_state_0,
datab => rcb_state_2,
datac => X_0,
datad => Y_0);
\R1_TEMP_RAM_6_10_0_IV_0_I_I_A3_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001111100000000")
port map (
combout => TEMP_RAM_6_10_0_IV_0_I_I_A3_0(0),
dataa => rcb_state_0,
datab => rcb_state_2,
datac => Y_0,
datad => TEMP_RAM_6_10_0_IV_0_I_I_A3_1(0));
\R1_TEMP_RAM_8_10_0_IV_0_I_A3_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000010000000000")
port map (
combout => TEMP_RAM_8_10_0_IV_0_I_A3_0(1),
dataa => reset_c,
datab => rcb_state_0,
datac => \vaddr_1_0_0__g2\,
datad => un22_store_xy);
UN2_IS_SAME_0_A5_24_Z451: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001000000000000")
port map (
combout => UN2_IS_SAME_0_A5_24,
dataa => STORE_RAM_9_44,
datab => STORE_RAM_9_43,
datac => UN2_IS_SAME_0_A5_0,
datad => UN2_IS_SAME_0_A5_17);
UN2_IS_SAME_0_A5_25_Z452: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001000000000000")
port map (
combout => UN2_IS_SAME_0_A5_25,
dataa => STORE_RAM_13_52,
datab => STORE_RAM_13_51,
datac => UN2_IS_SAME_0_A5_4,
datad => UN2_IS_SAME_0_A5_19);
UN2_IS_SAME_0_A5_26_Z453: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001000000000000")
port map (
combout => UN2_IS_SAME_0_A5_26,
dataa => STORE_RAM_1_28,
datab => STORE_RAM_1_27,
datac => UN2_IS_SAME_0_A5_8,
datad => UN2_IS_SAME_0_A5_21);
UN2_IS_SAME_0_A5_27_Z454: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001000000000000")
port map (
combout => UN2_IS_SAME_0_A5_27,
dataa => STORE_RAM_5_36,
datab => STORE_RAM_5_35,
datac => UN2_IS_SAME_0_A5_12,
datad => UN2_IS_SAME_0_A5_23);
\R1_TEMP_RAM_9_10_0_IV_0_0_I_O3_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101111100000000")
port map (
combout => TEMP_RAM_9_10_0_IV_0_0_I_O3(1),
dataa => rcb_cmd_0,
datab => pixnum_0,
datac => buswen_1_sqmuxa_0_a2_1,
datad => TEMP_RAM_6_10_0_IV_0_I_I_A3_1(0));
\R1_TEMP_RAM_9_10_0_IV_0_I_I_O3_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101111100000000")
port map (
combout => TEMP_RAM_9_10_0_IV_0_I_I_O3(0),
dataa => rcb_cmd_1,
datab => pixnum_0,
datac => buswen_1_sqmuxa_0_a2_1,
datad => TEMP_RAM_6_10_0_IV_0_I_I_A3_1(0));
\R1_STORE_RAM_1_RNO_3_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001111100011111")
port map (
combout => \TEMP_RAM_1_10_0_IV_0_I_0_1__G0_0_A5_1_A\,
dataa => rcb_state_0,
datab => rcb_state_2,
datac => X_0);
\R1_STORE_RAM_1_RNO_2_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000000000001")
port map (
combout => \TEMP_RAM_1_10_0_IV_0_I_0_1__G0_0_A5_1\,
dataa => Y_0,
datab => Y_1,
datac => X_1,
datad => \TEMP_RAM_1_10_0_IV_0_I_0_1__G0_0_A5_1_A\);
\R1_TEMP_RAM_6_10_0_IV_0_I_I_O3_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110000000000000")
port map (
combout => TEMP_RAM_6_10_0_IV_0_I_I_O3_0(0),
dataa => X_0,
datab => Y_1,
datac => rcb_ready25,
datad => TEMP_RAM_6_10_0_IV_0_I_I_A3_1(0));
\R1_TEMP_RAM_8_10_0_IV_0_I_O3_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1011111100000000")
port map (
combout => TEMP_RAM_8_10_0_IV_0_I_O3_0(1),
dataa => X_0,
datab => Y_1,
datac => rcb_ready25,
datad => TEMP_RAM_6_10_0_IV_0_I_I_A3_1(0));
\R1_TEMP_RAM_5_10_0_IV_0_I_I_O3_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1011111100000000")
port map (
combout => TEMP_RAM_5_10_0_IV_0_I_I_O3_0(0),
dataa => Y_1,
datab => X_0,
datac => rcb_ready25,
datad => TEMP_RAM_6_10_0_IV_0_I_I_A3_1(0));
\R1_TEMP_RAM_15_11_0_IV_0_0_O3_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111111100000000")
port map (
combout => TEMP_RAM_15_11_0_IV_0_0_O3_0(0),
dataa => X_0,
datab => Y_1,
datac => rcb_ready25,
datad => TEMP_RAM_6_10_0_IV_0_I_I_A3_1(0));
\R1_TEMP_RAM_11_10_0_IV_I_I_O3_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111111100000000")
port map (
combout => TEMP_RAM_11_10_0_IV_I_I_O3(0),
dataa => rcb_cmd_1,
datab => pixnum_0,
datac => buswen_1_sqmuxa_0_a2_1,
datad => TEMP_RAM_6_10_0_IV_0_I_I_A3_1(0));
\R1_TEMP_RAM_11_10_0_IV_0_I_O3_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111111100000000")
port map (
combout => TEMP_RAM_11_10_0_IV_0_I_O3(1),
dataa => rcb_cmd_0,
datab => pixnum_0,
datac => buswen_1_sqmuxa_0_a2_1,
datad => TEMP_RAM_6_10_0_IV_0_I_I_A3_1(0));
\R1_TEMP_RAM_8_10_0_IV_0_I_A3_1_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100000000000000")
port map (
combout => TEMP_RAM_8_10_0_IV_0_I_A3_1(1),
dataa => reset_c,
datab => rcb_cmd_1,
datac => \currentblocky_s_1_0_0__g2_1\,
datad => buswen_1_sqmuxa_0_a2_1);
\R1_TEMP_RAM_8_10_0_IV_0_0_A3_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100000000000000")
port map (
combout => TEMP_RAM_8_10_0_IV_0_0_A3_57,
dataa => reset_c,
datab => rcb_cmd_0,
datac => \currentblocky_s_1_0_0__g2_1\,
datad => buswen_1_sqmuxa_0_a2_1);
\R1_TEMP_RAM_2_10_0_IV_0_I_I_O3_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111110000000")
port map (
combout => TEMP_RAM_2_10_0_IV_0_I_I_O3(0),
dataa => Y_0,
datab => rcb_ready25,
datac => TEMP_RAM_6_10_0_IV_0_I_I_A3_1(0),
datad => TEMP_RAM_6_10_0_IV_0_I_I_O3_0(0));
\R1_TEMP_RAM_8_10_0_IV_0_I_O3_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111110000000")
port map (
combout => TEMP_RAM_8_10_0_IV_0_I_O3(1),
dataa => Y_0,
datab => rcb_ready25,
datac => TEMP_RAM_6_10_0_IV_0_I_I_A3_1(0),
datad => TEMP_RAM_8_10_0_IV_0_I_O3_0(1));
\R1_TEMP_RAM_3_10_0_IV_I_I_O3_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111110000000")
port map (
combout => TEMP_RAM_3_10_0_IV_I_I_O3(0),
dataa => Y_0,
datab => rcb_ready25,
datac => TEMP_RAM_6_10_0_IV_0_I_I_A3_1(0),
datad => TEMP_RAM_5_10_0_IV_0_I_I_O3_0(0));
\R1_TEMP_RAM_9_10_0_IV_0_I_I_O3_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111110000000")
port map (
combout => TEMP_RAM_9_10_0_IV_0_I_I_O3_0(0),
dataa => Y_0,
datab => rcb_ready25,
datac => TEMP_RAM_6_10_0_IV_0_I_I_A3_1(0),
datad => TEMP_RAM_15_11_0_IV_0_0_O3_0(0));
\R1_STORE_RAM_14_RNO_1_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100010000000000")
port map (
combout => \TEMP_RAM_14_10_0_IV_I_I_0_0__G0_0_A5\,
dataa => STORE_RAM_14_54,
datab => TEMP_RAM_12_10_0_IV_0_I_A3_1(1),
datac => \vaddr_1_0_0__g2\,
datad => G_1143);
\R1_STORE_RAM_10_RNO_1_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100010000000000")
port map (
combout => \TEMP_RAM_10_10_0_IV_0_0_0_0_0__G0_0_A5\,
dataa => STORE_RAM_10_46,
datab => TEMP_RAM_10_10_0_IV_0_0_0_A3_0(0),
datac => \vaddr_1_0_0__g2\,
datad => G_1143);
\R1_STORE_RAM_11_RNO_1_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100010000000000")
port map (
combout => \TEMP_RAM_11_10_0_IV_I_I_0_0__G0_0_A5\,
dataa => STORE_RAM_11_48,
datab => TEMP_RAM_3_10_0_IV_I_I_A3_1(0),
datac => \vaddr_1_0_0__g2\,
datad => G_1143);
\R1_STORE_RAM_15_RNO_1_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100010000000000")
port map (
combout => \TEMP_RAM_15_11_0_IV_0_0_0_0__G0_0_A5\,
dataa => STORE_RAM_15_56,
datab => TEMP_RAM_5_10_0_IV_0_I_I_A3_0(0),
datac => \vaddr_1_0_0__g2\,
datad => G_1143);
UN2_IS_SAME_0_A5_Z475: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000000000000000")
port map (
combout => un2_is_same_0_a5,
dataa => UN2_IS_SAME_0_A5_26,
datab => UN2_IS_SAME_0_A5_27,
datac => UN2_IS_SAME_0_A5_24,
datad => UN2_IS_SAME_0_A5_25);
\R1_STORE_RAM_4_RNO_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100000001000000")
port map (
combout => \TEMP_RAM_4_10_0_IV_I_I_0_0__G0_0_A5_0\,
dataa => STORE_RAM_4_34,
datab => TEMP_RAM_5_10_0_IV_0_I_I_A3_1(0),
datac => TEMP_RAM_12_10_0_IV_0_I_A3_1(1),
datad => \vaddr_1_0_0__g2\);
\R1_STORE_RAM_2_RNO_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100000001000000")
port map (
combout => \TEMP_RAM_2_10_0_IV_0_I_I_0_0__G0_0_A5_0\,
dataa => STORE_RAM_2_30,
datab => TEMP_RAM_3_10_0_IV_I_I_A3_0(0),
datac => TEMP_RAM_10_10_0_IV_0_0_0_A3_0(0),
datad => \vaddr_1_0_0__g2\);
\R1_STORE_RAM_9_RNO_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100000001000000")
port map (
combout => \TEMP_RAM_9_10_0_IV_0_I_I_0_0__G0_0_A5_0\,
dataa => STORE_RAM_9_44,
datab => TEMP_RAM_3_10_0_IV_I_I_A3_1(0),
datac => TEMP_RAM_12_10_0_IV_0_I_A3_0(1),
datad => \vaddr_1_0_0__g2\);
\R1_STORE_RAM_6_RNO_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100000001000000")
port map (
combout => \TEMP_RAM_6_10_0_IV_0_I_I_0_0__G0_0_A5_0\,
dataa => STORE_RAM_6_38,
datab => TEMP_RAM_3_10_0_IV_I_I_A3_0(0),
datac => TEMP_RAM_12_10_0_IV_0_I_A3_1(1),
datad => \vaddr_1_0_0__g2\);
\R1_STORE_RAM_12_RNO_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100000001000000")
port map (
combout => \TEMP_RAM_12_10_0_IV_0_0_0_0__G0_0_A5_0\,
dataa => STORE_RAM_12_50,
datab => TEMP_RAM_12_10_0_IV_0_I_A3_0(1),
datac => TEMP_RAM_12_10_0_IV_0_I_A3_1(1),
datad => \vaddr_1_0_0__g2\);
\R1_STORE_RAM_0_RNO_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100000001000000")
port map (
combout => \TEMP_RAM_0_12_0_IV_I_I_0_0__G0_0_A5_0\,
dataa => STORE_RAM_0_26,
datab => TEMP_RAM_5_10_0_IV_0_I_I_A3_1(0),
datac => TEMP_RAM_10_10_0_IV_0_0_0_A3_0(0),
datad => \vaddr_1_0_0__g2\);
\R1_STORE_RAM_5_RNO_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100000001000000")
port map (
combout => \TEMP_RAM_5_10_0_IV_0_I_I_0_0__G0_0_A5_0\,
dataa => STORE_RAM_5_36,
datab => TEMP_RAM_5_10_0_IV_0_I_I_A3_1(0),
datac => TEMP_RAM_5_10_0_IV_0_I_I_A3_0(0),
datad => \vaddr_1_0_0__g2\);
\R1_STORE_RAM_13_RNO_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100000001000000")
port map (
combout => \TEMP_RAM_13_10_0_IV_I_I_0_0__G0_0_A5_0\,
dataa => STORE_RAM_13_52,
datab => TEMP_RAM_5_10_0_IV_0_I_I_A3_0(0),
datac => TEMP_RAM_12_10_0_IV_0_I_A3_0(1),
datad => \vaddr_1_0_0__g2\);
\R1_STORE_RAM_8_RNO_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100000001000000")
port map (
combout => \TEMP_RAM_8_10_0_IV_0_0_0_0__G0_0_A5_0\,
dataa => STORE_RAM_8_42,
datab => TEMP_RAM_12_10_0_IV_0_I_A3_0(1),
datac => TEMP_RAM_10_10_0_IV_0_0_0_A3_0(0),
datad => \vaddr_1_0_0__g2\);
\R1_STORE_RAM_3_RNO_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100000001000000")
port map (
combout => \TEMP_RAM_3_10_0_IV_I_I_0_0__G0_0_A5_0\,
dataa => STORE_RAM_3_32,
datab => TEMP_RAM_3_10_0_IV_I_I_A3_1(0),
datac => TEMP_RAM_3_10_0_IV_I_I_A3_0(0),
datad => \vaddr_1_0_0__g2\);
\R1_STORE_RAM_7_RNO_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100000001000000")
port map (
combout => \TEMP_RAM_7_10_0_IV_I_I_0_0__G0_0_A5_0\,
dataa => STORE_RAM_7_40,
datab => TEMP_RAM_5_10_0_IV_0_I_I_A3_0(0),
datac => TEMP_RAM_3_10_0_IV_I_I_A3_0(0),
datad => \vaddr_1_0_0__g2\);
\R1_STORE_RAM_10_RNO_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100000001000000")
port map (
combout => \TEMP_RAM_10_10_0_IV_0_0_I_0_1__G0_0_A5_1\,
dataa => STORE_RAM_10_45,
datab => TEMP_RAM_10_10_0_IV_0_0_0_A3_1(0),
datac => TEMP_RAM_10_10_0_IV_0_0_0_A3_0(0),
datad => \vaddr_1_0_0__g2\);
\R1_STORE_RAM_12_RNO_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100000001000000")
port map (
combout => \TEMP_RAM_12_10_0_IV_0_I_0_1__G0_0_A5_0\,
dataa => STORE_RAM_12_49,
datab => TEMP_RAM_12_10_0_IV_0_I_A3_0(1),
datac => TEMP_RAM_12_10_0_IV_0_I_A3_1(1),
datad => \vaddr_1_0_0__g2\);
\R1_STORE_RAM_5_RNO_3_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001111111111111")
port map (
combout => \TEMP_RAM_5_10_0_IV_0_0_I_0_1__G0_0_A5_0_A\,
dataa => rcb_state_0,
datab => rcb_state_2,
datac => X_0,
datad => Y_0);
\R1_STORE_RAM_5_RNO_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000110000000100")
port map (
combout => \TEMP_RAM_5_10_0_IV_0_0_I_0_1__G0_0_A5_0\,
dataa => STORE_RAM_5_35,
datab => TEMP_RAM_5_10_0_IV_0_I_I_A3_1(0),
datac => \TEMP_RAM_5_10_0_IV_0_0_I_0_1__G0_0_A5_0_A\,
datad => \vaddr_1_0_0__g2\);
\R1_STORE_RAM_15_RNO_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100000001000000")
port map (
combout => \TEMP_RAM_15_11_0_IV_0_I_0_1__G0_0_A5_1\,
dataa => STORE_RAM_15_55,
datab => TEMP_RAM_10_10_0_IV_0_0_0_A3_1(0),
datac => TEMP_RAM_5_10_0_IV_0_I_I_A3_0(0),
datad => \vaddr_1_0_0__g2\);
\R1_STORE_RAM_3_RNO_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100000001000000")
port map (
combout => \TEMP_RAM_3_10_0_IV_0_I_0_1__G0_0_A5_0\,
dataa => STORE_RAM_3_31,
datab => TEMP_RAM_3_10_0_IV_I_I_A3_1(0),
datac => TEMP_RAM_3_10_0_IV_I_I_A3_0(0),
datad => \vaddr_1_0_0__g2\);
\R1_STORE_RAM_6_RNO_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100000001000000")
port map (
combout => \TEMP_RAM_6_10_0_IV_0_0_I_0_1__G0_0_A5_0\,
dataa => STORE_RAM_6_37,
datab => TEMP_RAM_3_10_0_IV_I_I_A3_0(0),
datac => TEMP_RAM_12_10_0_IV_0_I_A3_1(1),
datad => \vaddr_1_0_0__g2\);
\R1_STORE_RAM_1_RNO_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100000001000000")
port map (
combout => \TEMP_RAM_1_10_0_IV_0_I_0_1__G0_0_A5_0\,
dataa => STORE_RAM_1_27,
datab => TEMP_RAM_5_10_0_IV_0_I_I_A3_1(0),
datac => TEMP_RAM_3_10_0_IV_I_I_A3_1(0),
datad => \vaddr_1_0_0__g2\);
\R1_STORE_RAM_13_RNO_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100000001000000")
port map (
combout => \TEMP_RAM_13_10_0_IV_0_I_0_1__G0_0_A5_0\,
dataa => STORE_RAM_13_51,
datab => TEMP_RAM_5_10_0_IV_0_I_I_A3_0(0),
datac => TEMP_RAM_12_10_0_IV_0_I_A3_0(1),
datad => \vaddr_1_0_0__g2\);
\R1_STORE_RAM_4_RNO_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100000001000000")
port map (
combout => \TEMP_RAM_4_10_0_IV_0_I_0_1__G0_0_A5_0\,
dataa => STORE_RAM_4_33,
datab => TEMP_RAM_5_10_0_IV_0_I_I_A3_1(0),
datac => TEMP_RAM_12_10_0_IV_0_I_A3_1(1),
datad => \vaddr_1_0_0__g2\);
\R1_STORE_RAM_0_RNO_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100000001000000")
port map (
combout => \TEMP_RAM_0_12_0_IV_0_I_0_1__G0_0_A5_0\,
dataa => STORE_RAM_0_25,
datab => TEMP_RAM_5_10_0_IV_0_I_I_A3_1(0),
datac => TEMP_RAM_10_10_0_IV_0_0_0_A3_0(0),
datad => \vaddr_1_0_0__g2\);
\R1_STORE_RAM_2_RNO_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100000001000000")
port map (
combout => \TEMP_RAM_2_10_0_IV_0_0_I_0_1__G0_0_A5_0\,
dataa => STORE_RAM_2_29,
datab => TEMP_RAM_3_10_0_IV_I_I_A3_0(0),
datac => TEMP_RAM_10_10_0_IV_0_0_0_A3_0(0),
datad => \vaddr_1_0_0__g2\);
\R1_STORE_RAM_11_RNO_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100000001000000")
port map (
combout => \TEMP_RAM_11_10_0_IV_0_I_0_1__G0_0_A5_1\,
dataa => STORE_RAM_11_47,
datab => TEMP_RAM_10_10_0_IV_0_0_0_A3_1(0),
datac => TEMP_RAM_3_10_0_IV_I_I_A3_1(0),
datad => \vaddr_1_0_0__g2\);
\R1_STORE_RAM_9_RNO_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100000001000000")
port map (
combout => \TEMP_RAM_9_10_0_IV_0_0_I_0_1__G0_0_A5_0\,
dataa => STORE_RAM_9_43,
datab => TEMP_RAM_3_10_0_IV_I_I_A3_1(0),
datac => TEMP_RAM_12_10_0_IV_0_I_A3_0(1),
datad => \vaddr_1_0_0__g2\);
\R1_STORE_RAM_8_RNO_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100000001000000")
port map (
combout => \TEMP_RAM_8_10_0_IV_0_I_0_1__G0_0_A5_0\,
dataa => STORE_RAM_8_41,
datab => TEMP_RAM_12_10_0_IV_0_I_A3_0(1),
datac => TEMP_RAM_10_10_0_IV_0_0_0_A3_0(0),
datad => \vaddr_1_0_0__g2\);
\R1_STORE_RAM_7_RNO_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100000001000000")
port map (
combout => \TEMP_RAM_7_10_0_IV_0_I_0_1__G0_0_A5_0\,
dataa => STORE_RAM_7_39,
datab => TEMP_RAM_5_10_0_IV_0_I_I_A3_0(0),
datac => TEMP_RAM_3_10_0_IV_I_I_A3_0(0),
datad => \vaddr_1_0_0__g2\);
\R1_STORE_RAM_14_RNO_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100000001000000")
port map (
combout => \TEMP_RAM_14_10_0_IV_0_I_0_1__G0_0_A5_1\,
dataa => STORE_RAM_14_53,
datab => TEMP_RAM_10_10_0_IV_0_0_0_A3_1(0),
datac => TEMP_RAM_12_10_0_IV_0_I_A3_1(1),
datad => \vaddr_1_0_0__g2\);
\R1_TEMP_RAM_1_10_0_IV_I_I_O5_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110111011101110")
port map (
combout => TEMP_RAM_1_10_0_IV_I_I_O5_0(0),
dataa => TEMP_RAM_9_10_0_IV_0_I_I_O3(0),
datab => TEMP_RAM_3_10_0_IV_I_I_O3(0));
\R1_TEMP_RAM_11_10_0_IV_I_I_O5_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110111011101110")
port map (
combout => TEMP_RAM_11_10_0_IV_I_I_O5_0(0),
dataa => TEMP_RAM_11_10_0_IV_I_I_O3(0),
datab => TEMP_RAM_9_10_0_IV_0_I_I_O3_0(0));
\R1_TEMP_RAM_14_10_0_IV_I_I_A5_2_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010100000000000")
port map (
combout => TEMP_RAM_14_10_0_IV_I_I_A5_2(0),
dataa => STORE_RAM_14_54,
datab => pixopbus_12_1_i_o3_0,
datac => pixopbus_2_1_i_o3_0,
datad => TEMP_RAM_8_10_0_IV_0_I_A3_0(1));
\R1_TEMP_RAM_14_10_0_IV_I_I_A5_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011000100000000")
port map (
combout => TEMP_RAM_14_10_0_IV_I_I_A5_0(0),
dataa => STORE_RAM_14_54,
datab => pixopbus_14_1_i_0,
datac => \vaddr_1_0_0__g2\,
datad => currentblockx_s_1_x);
\R1_TEMP_RAM_12_10_0_IV_0_I_A5_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000000010000")
port map (
combout => TEMP_RAM_12_10_0_IV_0_I_A5_0(1),
dataa => reset_c,
datab => pixopbus_12_1_i_1,
datac => TEMP_RAM_12_10_0_IV_0_I_O5(1),
datad => \currentblocky_s_1_0_0__g2_1\);
\R1_TEMP_RAM_14_10_0_IV_0_I_A5_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001000000000000")
port map (
combout => TEMP_RAM_14_10_0_IV_0_I_A5_0(1),
dataa => pixopbus_12_1_i_o3_0,
datab => pixopbus_2_1_i_o3_0,
datac => TEMP_RAM_14_10_0_IV_0_I_O5(1),
datad => currentblockx_s_1_x);
\R1_STORE_RAM_1_RNO_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100010000000000")
port map (
combout => \TEMP_RAM_1_10_0_IV_I_I_0_0__G0_0_A5\,
dataa => STORE_RAM_1_28,
datab => \TEMP_RAM_1_10_0_IV_0_I_0_1__G0_0_A5_1\,
datac => \vaddr_1_0_0__g2\,
datad => TEMP_RAM_8_10_0_IV_0_0_A3_57);
\R1_TEMP_RAM_12_10_0_IV_0_0_A5_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011000100000000")
port map (
combout => TEMP_RAM_12_10_0_IV_0_0_A5_0(0),
dataa => STORE_RAM_12_50,
datab => pixopbus_12_1_i_0,
datac => \vaddr_1_0_0__g2\,
datad => currentblockx_s_1_x);
\R1_TEMP_RAM_15_11_0_IV_0_0_A5_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011000100000000")
port map (
combout => TEMP_RAM_15_11_0_IV_0_0_A5_0(0),
dataa => STORE_RAM_15_56,
datab => pixopbus_15_2_i_0,
datac => \vaddr_1_0_0__g2\,
datad => currentblockx_s_1_x);
\R1_TEMP_RAM_15_11_0_IV_0_0_A5_2_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010100000000000")
port map (
combout => TEMP_RAM_15_11_0_IV_0_0_A5_2(0),
dataa => STORE_RAM_15_56,
datab => pixopbus_12_1_i_o3_0,
datac => pixopbus_3_1_i_a3_0,
datad => TEMP_RAM_8_10_0_IV_0_I_A3_0(1));
\R1_TEMP_RAM_2_10_0_IV_0_I_I_A5_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011000100000000")
port map (
combout => TEMP_RAM_2_10_0_IV_0_I_I_A5_0(0),
dataa => STORE_RAM_2_30,
datab => pixopbus_2_1_i_0,
datac => \vaddr_1_0_0__g2\,
datad => currentblockx_s_1_x);
\R1_TEMP_RAM_2_10_0_IV_0_0_I_A5_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011000100000000")
port map (
combout => TEMP_RAM_2_10_0_IV_0_0_I_A5_0(1),
dataa => STORE_RAM_2_29,
datab => pixopbus_2_1_i_1,
datac => \vaddr_1_0_0__g2\,
datad => currentblockx_s_1_x);
\R1_TEMP_RAM_3_10_0_IV_I_I_A5_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011000100000000")
port map (
combout => TEMP_RAM_3_10_0_IV_I_I_A5_0(0),
dataa => STORE_RAM_3_32,
datab => pixopbus_3_1_i_0,
datac => \vaddr_1_0_0__g2\,
datad => currentblockx_s_1_x);
\R1_TEMP_RAM_13_10_0_IV_I_I_A5_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011000100000000")
port map (
combout => TEMP_RAM_13_10_0_IV_I_I_A5_0(0),
dataa => STORE_RAM_13_52,
datab => pixopbus_13_1_i_0,
datac => \vaddr_1_0_0__g2\,
datad => currentblockx_s_1_x);
\R1_TEMP_RAM_3_10_0_IV_0_I_A5_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011000100000000")
port map (
combout => TEMP_RAM_3_10_0_IV_0_I_A5_0(1),
dataa => STORE_RAM_3_31,
datab => pixopbus_3_1_i_1,
datac => \vaddr_1_0_0__g2\,
datad => currentblockx_s_1_x);
\R1_TEMP_RAM_0_12_0_IV_0_I_A5_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011000100000000")
port map (
combout => TEMP_RAM_0_12_0_IV_0_I_A5_0(1),
dataa => STORE_RAM_0_25,
datab => pixopbus_0_2_i_1,
datac => \vaddr_1_0_0__g2\,
datad => currentblockx_s_1_x);
\R1_TEMP_RAM_0_12_0_IV_I_I_A5_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011000100000000")
port map (
combout => TEMP_RAM_0_12_0_IV_I_I_A5_0(0),
dataa => STORE_RAM_0_26,
datab => pixopbus_0_2_i_0,
datac => \vaddr_1_0_0__g2\,
datad => currentblockx_s_1_x);
\R1_TEMP_RAM_1_10_0_IV_0_I_A5_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011000100000000")
port map (
combout => TEMP_RAM_1_10_0_IV_0_I_A5_0(1),
dataa => STORE_RAM_1_27,
datab => pixopbus_1_1_i_1,
datac => \vaddr_1_0_0__g2\,
datad => currentblockx_s_1_x);
\R1_TEMP_RAM_1_10_0_IV_I_I_A5_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011000100000000")
port map (
combout => TEMP_RAM_1_10_0_IV_I_I_A5_0(0),
dataa => STORE_RAM_1_28,
datab => pixopbus_1_1_i_0,
datac => \vaddr_1_0_0__g2\,
datad => currentblockx_s_1_x);
\R1_TEMP_RAM_15_11_0_IV_0_I_A5_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011000100000000")
port map (
combout => TEMP_RAM_15_11_0_IV_0_I_A5_0(1),
dataa => STORE_RAM_15_55,
datab => pixopbus_15_2_i_1,
datac => \vaddr_1_0_0__g2\,
datad => currentblockx_s_1_x);
\R1_TEMP_RAM_13_10_0_IV_0_I_A5_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011000100000000")
port map (
combout => TEMP_RAM_13_10_0_IV_0_I_A5_0(1),
dataa => STORE_RAM_13_51,
datab => pixopbus_13_1_i_1,
datac => \vaddr_1_0_0__g2\,
datad => currentblockx_s_1_x);
\R1_TEMP_RAM_11_10_0_IV_I_I_A5_0_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011000100110001")
port map (
combout => TEMP_RAM_11_10_0_IV_I_I_A5_0_0(0),
dataa => STORE_RAM_11_48,
datab => pixopbus_11_1_i_0,
datac => \vaddr_1_0_0__g2\);
\R1_TEMP_RAM_4_10_0_IV_I_I_A5_0_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011000100110001")
port map (
combout => TEMP_RAM_4_10_0_IV_I_I_A5_0_0(0),
dataa => STORE_RAM_4_34,
datab => pixopbus_4_1_i_0,
datac => \vaddr_1_0_0__g2\);
\R1_TEMP_RAM_7_10_0_IV_0_I_A5_0_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011000100110001")
port map (
combout => TEMP_RAM_7_10_0_IV_0_I_A5_0_0(1),
dataa => STORE_RAM_7_39,
datab => pixopbus_7_1_i_1,
datac => \vaddr_1_0_0__g2\);
\R1_TEMP_RAM_6_10_0_IV_0_I_I_A5_0_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011000100110001")
port map (
combout => TEMP_RAM_6_10_0_IV_0_I_I_A5_0_0(0),
dataa => STORE_RAM_6_38,
datab => pixopbus_6_1_i_0,
datac => \vaddr_1_0_0__g2\);
\R1_TEMP_RAM_7_10_0_IV_0_I_A5_2_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100110011000100")
port map (
combout => TEMP_RAM_7_10_0_IV_0_I_A5_2_0(1),
dataa => rcb_cmd_0,
datab => STORE_RAM_7_39,
datac => pixopbus_3_1_i_a3_0,
datad => pixopbus_4_1_i_o3_0_0);
\R1_TEMP_RAM_4_10_0_IV_I_I_A5_2_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100110011000100")
port map (
combout => TEMP_RAM_4_10_0_IV_I_I_A5_2_0(0),
dataa => rcb_cmd_1,
datab => STORE_RAM_4_34,
datac => pixopbus_0_2_i_a3_0,
datad => pixopbus_4_1_i_o3_0_0);
\R1_TEMP_RAM_6_10_0_IV_0_I_I_A5_2_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100110011000100")
port map (
combout => TEMP_RAM_6_10_0_IV_0_I_I_A5_2_0(0),
dataa => rcb_cmd_1,
datab => STORE_RAM_6_38,
datac => pixopbus_2_1_i_o3_0,
datad => pixopbus_4_1_i_o3_0_0);
\R1_STORE_RAM_14_RNO_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010101010101000")
port map (
combout => \TEMP_RAM_14_10_0_IV_I_I_0_0__G3\,
dataa => STORE_RAM_14_54,
datab => TEMP_RAM_8_10_0_IV_0_I_O3_0(1),
datac => TEMP_RAM_11_10_0_IV_I_I_O3(0),
datad => TEMP_RAM_6_10_0_IV_0_I_I_A3_0(0));
\R1_STORE_RAM_12_RNO_2_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010101010101000")
port map (
combout => \TEMP_RAM_12_10_0_IV_0_I_0_1__G3\,
dataa => STORE_RAM_12_49,
datab => TEMP_RAM_8_10_0_IV_0_I_O3_0(1),
datac => TEMP_RAM_9_10_0_IV_0_0_I_O3(1),
datad => TEMP_RAM_6_10_0_IV_0_I_I_A3_0(0));
\R1_STORE_RAM_14_RNO_1_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010101010101000")
port map (
combout => \TEMP_RAM_14_10_0_IV_0_I_0_1__G3\,
dataa => STORE_RAM_14_53,
datab => TEMP_RAM_8_10_0_IV_0_I_O3_0(1),
datac => TEMP_RAM_11_10_0_IV_0_I_O3(1),
datad => TEMP_RAM_6_10_0_IV_0_I_I_A3_0(0));
\R1_STORE_RAM_4_RNO_2_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010101010101000")
port map (
combout => \TEMP_RAM_4_10_0_IV_I_I_0_0__G3\,
dataa => STORE_RAM_4_34,
datab => TEMP_RAM_6_10_0_IV_0_I_I_O3_0(0),
datac => TEMP_RAM_9_10_0_IV_0_I_I_O3(0),
datad => TEMP_RAM_6_10_0_IV_0_I_I_A3_0(0));
\R1_TEMP_RAM_6_10_0_IV_0_I_I_A3_1_RNITOS21_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001111111111111")
port map (
combout => \TEMP_RAM_0_12_0_IV_0_I_0_1__G3_A\,
dataa => rcb_state_0,
datab => rcb_state_2,
datac => Y_0,
datad => TEMP_RAM_6_10_0_IV_0_I_I_A3_1(0));
\R1_STORE_RAM_0_RNO_1_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010101010100010")
port map (
combout => \TEMP_RAM_0_12_0_IV_0_I_0_1__G3\,
dataa => STORE_RAM_0_25,
datab => \TEMP_RAM_0_12_0_IV_0_I_0_1__G3_A\,
datac => TEMP_RAM_6_10_0_IV_0_I_I_O3_0(0),
datad => TEMP_RAM_9_10_0_IV_0_0_I_O3(1));
\R1_STORE_RAM_0_RNO_2_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010100010101000")
port map (
combout => \TEMP_RAM_0_12_0_IV_I_I_0_0__G3\,
dataa => STORE_RAM_0_26,
datab => TEMP_RAM_9_10_0_IV_0_I_I_O3(0),
datac => TEMP_RAM_2_10_0_IV_0_I_I_O3(0));
\R1_STORE_RAM_1_RNO_2_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010100010101000")
port map (
combout => \TEMP_RAM_1_10_0_IV_0_I_0_1__G3\,
dataa => STORE_RAM_1_27,
datab => TEMP_RAM_9_10_0_IV_0_0_I_O3(1),
datac => TEMP_RAM_3_10_0_IV_I_I_O3(0));
\R1_STORE_RAM_2_RNO_2_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010100010101000")
port map (
combout => \TEMP_RAM_2_10_0_IV_0_0_I_0_1__G3\,
dataa => STORE_RAM_2_29,
datab => TEMP_RAM_11_10_0_IV_0_I_O3(1),
datac => TEMP_RAM_2_10_0_IV_0_I_I_O3(0));
\R1_STORE_RAM_2_RNO_2_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010100010101000")
port map (
combout => \TEMP_RAM_2_10_0_IV_0_I_I_0_0__G3\,
dataa => STORE_RAM_2_30,
datab => TEMP_RAM_11_10_0_IV_I_I_O3(0),
datac => TEMP_RAM_2_10_0_IV_0_I_I_O3(0));
\R1_STORE_RAM_3_RNO_2_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010100010101000")
port map (
combout => \TEMP_RAM_3_10_0_IV_0_I_0_1__G3\,
dataa => STORE_RAM_3_31,
datab => TEMP_RAM_11_10_0_IV_0_I_O3(1),
datac => TEMP_RAM_3_10_0_IV_I_I_O3(0));
\R1_STORE_RAM_3_RNO_1_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010101010100010")
port map (
combout => \TEMP_RAM_3_10_0_IV_I_I_0_0__G3\,
dataa => STORE_RAM_3_32,
datab => \TEMP_RAM_0_12_0_IV_0_I_0_1__G3_A\,
datac => TEMP_RAM_5_10_0_IV_0_I_I_O3_0(0),
datad => TEMP_RAM_11_10_0_IV_I_I_O3(0));
\R1_STORE_RAM_4_RNO_1_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010101010101000")
port map (
combout => \TEMP_RAM_4_10_0_IV_0_I_0_1__G3\,
dataa => STORE_RAM_4_33,
datab => TEMP_RAM_6_10_0_IV_0_I_I_O3_0(0),
datac => TEMP_RAM_9_10_0_IV_0_0_I_O3(1),
datad => TEMP_RAM_6_10_0_IV_0_I_I_A3_0(0));
\R1_STORE_RAM_5_RNO_1_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010101010101000")
port map (
combout => \TEMP_RAM_5_10_0_IV_0_0_I_0_1__G3\,
dataa => STORE_RAM_5_35,
datab => TEMP_RAM_5_10_0_IV_0_I_I_O3_0(0),
datac => TEMP_RAM_9_10_0_IV_0_0_I_O3(1),
datad => TEMP_RAM_6_10_0_IV_0_I_I_A3_0(0));
\R1_STORE_RAM_5_RNO_1_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010101010101000")
port map (
combout => \TEMP_RAM_5_10_0_IV_0_I_I_0_0__G3\,
dataa => STORE_RAM_5_36,
datab => TEMP_RAM_5_10_0_IV_0_I_I_O3_0(0),
datac => TEMP_RAM_9_10_0_IV_0_I_I_O3(0),
datad => TEMP_RAM_6_10_0_IV_0_I_I_A3_0(0));
\R1_STORE_RAM_6_RNO_1_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010101010101000")
port map (
combout => \TEMP_RAM_6_10_0_IV_0_0_I_0_1__G3\,
dataa => STORE_RAM_6_37,
datab => TEMP_RAM_6_10_0_IV_0_I_I_O3_0(0),
datac => TEMP_RAM_11_10_0_IV_0_I_O3(1),
datad => TEMP_RAM_6_10_0_IV_0_I_I_A3_0(0));
\R1_STORE_RAM_6_RNO_3_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001111111111111")
port map (
combout => \TEMP_RAM_6_10_0_IV_0_I_I_0_0__G3_A\,
dataa => Y_1,
datab => X_0,
datac => rcb_ready25,
datad => TEMP_RAM_6_10_0_IV_0_I_I_A3_1(0));
\R1_STORE_RAM_6_RNO_2_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010101010001010")
port map (
combout => \TEMP_RAM_6_10_0_IV_0_I_I_0_0__G3\,
dataa => STORE_RAM_6_38,
datab => TEMP_RAM_11_10_0_IV_I_I_O3(0),
datac => \TEMP_RAM_6_10_0_IV_0_I_I_0_0__G3_A\,
datad => TEMP_RAM_6_10_0_IV_0_I_I_A3_0(0));
\R1_STORE_RAM_7_RNO_3_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0010000011111111")
port map (
combout => \TEMP_RAM_7_10_0_IV_0_I_0_1__G3_A\,
dataa => X_0,
datab => Y_1,
datac => rcb_ready25,
datad => TEMP_RAM_6_10_0_IV_0_I_I_A3_1(0));
\R1_STORE_RAM_7_RNO_2_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010101010001010")
port map (
combout => \TEMP_RAM_7_10_0_IV_0_I_0_1__G3\,
dataa => STORE_RAM_7_39,
datab => TEMP_RAM_11_10_0_IV_0_I_O3(1),
datac => \TEMP_RAM_7_10_0_IV_0_I_0_1__G3_A\,
datad => TEMP_RAM_6_10_0_IV_0_I_I_A3_0(0));
\R1_STORE_RAM_7_RNO_1_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010101010101000")
port map (
combout => \TEMP_RAM_7_10_0_IV_I_I_0_0__G3\,
dataa => STORE_RAM_7_40,
datab => TEMP_RAM_5_10_0_IV_0_I_I_O3_0(0),
datac => TEMP_RAM_11_10_0_IV_I_I_O3(0),
datad => TEMP_RAM_6_10_0_IV_0_I_I_A3_0(0));
\R1_STORE_RAM_8_RNO_2_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010100010101000")
port map (
combout => \TEMP_RAM_8_10_0_IV_0_I_0_1__G3\,
dataa => STORE_RAM_8_41,
datab => TEMP_RAM_9_10_0_IV_0_0_I_O3(1),
datac => TEMP_RAM_8_10_0_IV_0_I_O3(1));
\R1_STORE_RAM_8_RNO_2_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010100010101000")
port map (
combout => \TEMP_RAM_8_10_0_IV_0_0_0_0__G3\,
dataa => STORE_RAM_8_42,
datab => TEMP_RAM_9_10_0_IV_0_I_I_O3(0),
datac => TEMP_RAM_8_10_0_IV_0_I_O3(1));
\R1_STORE_RAM_9_RNO_2_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010100010101000")
port map (
combout => \TEMP_RAM_9_10_0_IV_0_0_I_0_1__G3\,
dataa => STORE_RAM_9_43,
datab => TEMP_RAM_9_10_0_IV_0_0_I_O3(1),
datac => TEMP_RAM_9_10_0_IV_0_I_I_O3_0(0));
\R1_STORE_RAM_9_RNO_2_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010100010101000")
port map (
combout => \TEMP_RAM_9_10_0_IV_0_I_I_0_0__G3\,
dataa => STORE_RAM_9_44,
datab => TEMP_RAM_9_10_0_IV_0_I_I_O3(0),
datac => TEMP_RAM_9_10_0_IV_0_I_I_O3_0(0));
\R1_STORE_RAM_10_RNO_2_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010100010101000")
port map (
combout => \TEMP_RAM_10_10_0_IV_0_0_I_0_1__G3\,
dataa => STORE_RAM_10_45,
datab => TEMP_RAM_11_10_0_IV_0_I_O3(1),
datac => TEMP_RAM_8_10_0_IV_0_I_O3(1));
\R1_STORE_RAM_10_RNO_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010101010100010")
port map (
combout => \TEMP_RAM_10_10_0_IV_0_0_0_0_0__G3\,
dataa => STORE_RAM_10_46,
datab => \TEMP_RAM_0_12_0_IV_0_I_0_1__G3_A\,
datac => TEMP_RAM_8_10_0_IV_0_I_O3_0(1),
datad => TEMP_RAM_11_10_0_IV_I_I_O3(0));
\R1_STORE_RAM_11_RNO_2_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010100010101000")
port map (
combout => \TEMP_RAM_11_10_0_IV_0_I_0_1__G3\,
dataa => STORE_RAM_11_47,
datab => TEMP_RAM_11_10_0_IV_0_I_O3(1),
datac => TEMP_RAM_9_10_0_IV_0_I_I_O3_0(0));
\R1_STORE_RAM_12_RNO_1_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010101010101000")
port map (
combout => \TEMP_RAM_12_10_0_IV_0_0_0_0__G3\,
dataa => STORE_RAM_12_50,
datab => TEMP_RAM_8_10_0_IV_0_I_O3_0(1),
datac => TEMP_RAM_9_10_0_IV_0_I_I_O3(0),
datad => TEMP_RAM_6_10_0_IV_0_I_I_A3_0(0));
\R1_STORE_RAM_13_RNO_1_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010101010101000")
port map (
combout => \TEMP_RAM_13_10_0_IV_0_I_0_1__G3\,
dataa => STORE_RAM_13_51,
datab => TEMP_RAM_15_11_0_IV_0_0_O3_0(0),
datac => TEMP_RAM_9_10_0_IV_0_0_I_O3(1),
datad => TEMP_RAM_6_10_0_IV_0_I_I_A3_0(0));
\R1_STORE_RAM_13_RNO_1_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010101010101000")
port map (
combout => \TEMP_RAM_13_10_0_IV_I_I_0_0__G3\,
dataa => STORE_RAM_13_52,
datab => TEMP_RAM_15_11_0_IV_0_0_O3_0(0),
datac => TEMP_RAM_9_10_0_IV_0_I_I_O3(0),
datad => TEMP_RAM_6_10_0_IV_0_I_I_A3_0(0));
\R1_STORE_RAM_15_RNO_1_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010101010101000")
port map (
combout => \TEMP_RAM_15_11_0_IV_0_I_0_1__G3\,
dataa => STORE_RAM_15_55,
datab => TEMP_RAM_15_11_0_IV_0_0_O3_0(0),
datac => TEMP_RAM_11_10_0_IV_0_I_O3(1),
datad => TEMP_RAM_6_10_0_IV_0_I_I_A3_0(0));
\R1_STORE_RAM_15_RNO_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010101010101000")
port map (
combout => \TEMP_RAM_15_11_0_IV_0_0_0_0__G3\,
dataa => STORE_RAM_15_56,
datab => TEMP_RAM_15_11_0_IV_0_0_O3_0(0),
datac => TEMP_RAM_11_10_0_IV_I_I_O3(0),
datad => TEMP_RAM_6_10_0_IV_0_I_I_A3_0(0));
\R1_TEMP_RAM_8_10_0_IV_0_I_A5_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011000100000000")
port map (
combout => TEMP_RAM_8_10_0_IV_0_I_A5_0(1),
dataa => STORE_RAM_8_41,
datab => pixopbus_8_1_i_1,
datac => \vaddr_1_0_0__g2\,
datad => currentblockx_s_1_x);
\R1_TEMP_RAM_8_10_0_IV_0_0_A5_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011000100000000")
port map (
combout => TEMP_RAM_8_10_0_IV_0_0_A5_0(0),
dataa => STORE_RAM_8_42,
datab => pixopbus_8_1_i_0,
datac => \vaddr_1_0_0__g2\,
datad => currentblockx_s_1_x);
\R1_TEMP_RAM_5_10_0_IV_0_I_I_A5_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011000100000000")
port map (
combout => TEMP_RAM_5_10_0_IV_0_I_I_A5_0(0),
dataa => STORE_RAM_5_36,
datab => pixopbus_5_1_i_0,
datac => \vaddr_1_0_0__g2\,
datad => currentblockx_s_1_x);
\R1_TEMP_RAM_5_10_0_IV_0_0_I_A5_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011000100000000")
port map (
combout => TEMP_RAM_5_10_0_IV_0_0_I_A5_0(1),
dataa => STORE_RAM_5_35,
datab => pixopbus_5_1_i_1,
datac => \vaddr_1_0_0__g2\,
datad => currentblockx_s_1_x);
\R1_TEMP_RAM_10_10_0_IV_0_0_0_A5_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011000100000000")
port map (
combout => TEMP_RAM_10_10_0_IV_0_0_0_A5_0(0),
dataa => STORE_RAM_10_46,
datab => pixopbus_10_1_i_0,
datac => \vaddr_1_0_0__g2\,
datad => currentblockx_s_1_x);
\R1_TEMP_RAM_10_10_0_IV_0_0_0_A5_2_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000000010000000")
port map (
combout => TEMP_RAM_10_10_0_IV_0_0_0_A5_2(0),
dataa => STORE_RAM_10_46,
datab => pixopbus_10_1_i_1,
datac => TEMP_RAM_8_10_0_IV_0_I_A3_0(1));
\R1_TEMP_RAM_10_10_0_IV_0_0_I_A5_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011000100000000")
port map (
combout => TEMP_RAM_10_10_0_IV_0_0_I_A5_0(1),
dataa => STORE_RAM_10_45,
datab => pixopbus_10_1_i_1,
datac => \vaddr_1_0_0__g2\,
datad => currentblockx_s_1_x);
\R1_TEMP_RAM_6_10_0_IV_0_0_I_A5_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011000100000000")
port map (
combout => TEMP_RAM_6_10_0_IV_0_0_I_A5_0(1),
dataa => STORE_RAM_6_37,
datab => pixopbus_6_1_i_1,
datac => \vaddr_1_0_0__g2\,
datad => currentblockx_s_1_x);
\R1_TEMP_RAM_9_10_0_IV_0_I_I_A5_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011000100000000")
port map (
combout => TEMP_RAM_9_10_0_IV_0_I_I_A5_0(0),
dataa => STORE_RAM_9_44,
datab => pixopbus_9_1_i_0,
datac => \vaddr_1_0_0__g2\,
datad => currentblockx_s_1_x);
\R1_TEMP_RAM_9_10_0_IV_0_0_I_A5_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011000100000000")
port map (
combout => TEMP_RAM_9_10_0_IV_0_0_I_A5_0(1),
dataa => STORE_RAM_9_43,
datab => pixopbus_9_1_i_1,
datac => \vaddr_1_0_0__g2\,
datad => currentblockx_s_1_x);
\R1_TEMP_RAM_7_10_0_IV_I_I_A5_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011000100000000")
port map (
combout => TEMP_RAM_7_10_0_IV_I_I_A5_0(0),
dataa => STORE_RAM_7_40,
datab => pixopbus_7_1_i_0,
datac => \vaddr_1_0_0__g2\,
datad => currentblockx_s_1_x);
\R1_TEMP_RAM_4_10_0_IV_0_I_A5_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011000100000000")
port map (
combout => TEMP_RAM_4_10_0_IV_0_I_A5_0(1),
dataa => STORE_RAM_4_33,
datab => pixopbus_4_1_i_1,
datac => \vaddr_1_0_0__g2\,
datad => currentblockx_s_1_x);
\R1_TEMP_RAM_11_10_0_IV_0_I_A5_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011000100000000")
port map (
combout => TEMP_RAM_11_10_0_IV_0_I_A5_0(1),
dataa => STORE_RAM_11_47,
datab => pixopbus_11_1_i_1,
datac => \vaddr_1_0_0__g2\,
datad => currentblockx_s_1_x);
\R1_TEMP_RAM_11_10_0_IV_I_I_A5_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100000000000000")
port map (
combout => TEMP_RAM_11_10_0_IV_I_I_A5_0(0),
dataa => reset_c,
datab => rcb_state_0,
datac => TEMP_RAM_11_10_0_IV_I_I_A5_0_0(0),
datad => un22_store_xy);
\R1_STORE_RAM_0_RNO_2_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111110000000")
port map (
combout => \TEMP_RAM_0_12_0_IV_0_I_0_1__G0_0_0\,
dataa => STORE_RAM_0_25,
datab => pixopbus_0_2_i_0,
datac => TEMP_RAM_8_10_0_IV_0_I_A3_0(1),
datad => TEMP_RAM_0_12_0_IV_0_I_A5_0(1));
\R1_STORE_RAM_3_RNO_1_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111110000000")
port map (
combout => \TEMP_RAM_3_10_0_IV_0_I_0_1__G0_0_0\,
dataa => STORE_RAM_3_31,
datab => pixopbus_3_1_i_0,
datac => TEMP_RAM_8_10_0_IV_0_I_A3_0(1),
datad => TEMP_RAM_3_10_0_IV_0_I_A5_0(1));
\R1_STORE_RAM_2_RNO_1_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111110000000")
port map (
combout => \TEMP_RAM_2_10_0_IV_0_0_I_0_1__G0_0_0\,
dataa => STORE_RAM_2_29,
datab => pixopbus_2_1_i_0,
datac => TEMP_RAM_8_10_0_IV_0_I_A3_0(1),
datad => TEMP_RAM_2_10_0_IV_0_0_I_A5_0(1));
\R1_STORE_RAM_1_RNO_1_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111110000000")
port map (
combout => \TEMP_RAM_1_10_0_IV_0_I_0_1__G0_0_0\,
dataa => STORE_RAM_1_27,
datab => pixopbus_1_1_i_0,
datac => TEMP_RAM_8_10_0_IV_0_I_A3_0(1),
datad => TEMP_RAM_1_10_0_IV_0_I_A5_0(1));
\R1_STORE_RAM_1_RNO_1_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111110000000")
port map (
combout => \TEMP_RAM_1_10_0_IV_I_I_0_0__G0_0_0\,
dataa => STORE_RAM_1_28,
datab => pixopbus_1_1_i_1,
datac => TEMP_RAM_8_10_0_IV_0_I_A3_0(1),
datad => TEMP_RAM_1_10_0_IV_I_I_A5_0(0));
\R1_STORE_RAM_13_RNO_2_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111110000000")
port map (
combout => \TEMP_RAM_13_10_0_IV_I_I_0_0__G0_0_0\,
dataa => STORE_RAM_13_52,
datab => pixopbus_13_1_i_1,
datac => TEMP_RAM_8_10_0_IV_0_I_A3_0(1),
datad => TEMP_RAM_13_10_0_IV_I_I_A5_0(0));
\R1_STORE_RAM_12_RNO_1_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111110000000")
port map (
combout => \TEMP_RAM_12_10_0_IV_0_I_0_1__G0_0_0\,
dataa => STORE_RAM_12_49,
datab => pixopbus_12_1_i_0,
datac => TEMP_RAM_8_10_0_IV_0_I_A3_0(1),
datad => TEMP_RAM_12_10_0_IV_0_I_A5_0(1));
\R1_STORE_RAM_2_RNO_1_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111110000000")
port map (
combout => \TEMP_RAM_2_10_0_IV_0_I_I_0_0__G0_0_0\,
dataa => STORE_RAM_2_30,
datab => pixopbus_2_1_i_1,
datac => TEMP_RAM_8_10_0_IV_0_I_A3_0(1),
datad => TEMP_RAM_2_10_0_IV_0_I_I_A5_0(0));
\R1_STORE_RAM_12_RNO_2_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111110000000")
port map (
combout => \TEMP_RAM_12_10_0_IV_0_0_0_0__G0_0_0\,
dataa => STORE_RAM_12_50,
datab => pixopbus_12_1_i_1,
datac => TEMP_RAM_8_10_0_IV_0_I_A3_0(1),
datad => TEMP_RAM_12_10_0_IV_0_0_A5_0(0));
\R1_STORE_RAM_13_RNO_2_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111110000000")
port map (
combout => \TEMP_RAM_13_10_0_IV_0_I_0_1__G0_0_0\,
dataa => STORE_RAM_13_51,
datab => pixopbus_13_1_i_0,
datac => TEMP_RAM_8_10_0_IV_0_I_A3_0(1),
datad => TEMP_RAM_13_10_0_IV_0_I_A5_0(1));
\R1_STORE_RAM_15_RNO_2_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111110000000")
port map (
combout => \TEMP_RAM_15_11_0_IV_0_I_0_1__G0_0_0\,
dataa => STORE_RAM_15_55,
datab => pixopbus_15_2_i_0,
datac => TEMP_RAM_8_10_0_IV_0_I_A3_0(1),
datad => TEMP_RAM_15_11_0_IV_0_I_A5_0(1));
\R1_STORE_RAM_0_RNO_1_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111110000000")
port map (
combout => \TEMP_RAM_0_12_0_IV_I_I_0_0__G0_0_0\,
dataa => STORE_RAM_0_26,
datab => pixopbus_0_2_i_1,
datac => TEMP_RAM_8_10_0_IV_0_I_A3_0(1),
datad => TEMP_RAM_0_12_0_IV_I_I_A5_0(0));
\R1_STORE_RAM_3_RNO_2_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111110000000")
port map (
combout => \TEMP_RAM_3_10_0_IV_I_I_0_0__G0_0_0\,
dataa => STORE_RAM_3_32,
datab => pixopbus_3_1_i_1,
datac => TEMP_RAM_8_10_0_IV_0_I_A3_0(1),
datad => TEMP_RAM_3_10_0_IV_I_I_A5_0(0));
\R1_STORE_RAM_14_RNO_2_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111110000000")
port map (
combout => \TEMP_RAM_14_10_0_IV_0_I_0_1__G0_0_0\,
dataa => STORE_RAM_14_53,
datab => pixopbus_14_1_i_0,
datac => TEMP_RAM_8_10_0_IV_0_I_A3_0(1),
datad => TEMP_RAM_14_10_0_IV_0_I_A5_0(1));
\R1_STORE_RAM_6_RNO_1_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110101011000000")
port map (
combout => \TEMP_RAM_6_10_0_IV_0_I_I_0_0__G0_0_0\,
dataa => TEMP_RAM_6_10_0_IV_0_I_I_A5_2_0(0),
datab => TEMP_RAM_6_10_0_IV_0_I_I_A5_0_0(0),
datac => currentblockx_s_1_x,
datad => TEMP_RAM_8_10_0_IV_0_I_A3_0(1));
\R1_STORE_RAM_7_RNO_1_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110101011000000")
port map (
combout => \TEMP_RAM_7_10_0_IV_0_I_0_1__G0_0_0\,
dataa => TEMP_RAM_7_10_0_IV_0_I_A5_2_0(1),
datab => TEMP_RAM_7_10_0_IV_0_I_A5_0_0(1),
datac => currentblockx_s_1_x,
datad => TEMP_RAM_8_10_0_IV_0_I_A3_0(1));
\R1_STORE_RAM_5_RNO_2_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111110000000")
port map (
combout => \TEMP_RAM_5_10_0_IV_0_0_I_0_1__G0_0_0\,
dataa => STORE_RAM_5_35,
datab => pixopbus_5_1_i_0,
datac => TEMP_RAM_8_10_0_IV_0_I_A3_0(1),
datad => TEMP_RAM_5_10_0_IV_0_0_I_A5_0(1));
\R1_STORE_RAM_7_RNO_2_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111110000000")
port map (
combout => \TEMP_RAM_7_10_0_IV_I_I_0_0__G0_0_0\,
dataa => STORE_RAM_7_40,
datab => pixopbus_7_1_i_1,
datac => TEMP_RAM_8_10_0_IV_0_I_A3_0(1),
datad => TEMP_RAM_7_10_0_IV_I_I_A5_0(0));
\R1_STORE_RAM_5_RNO_2_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111110000000")
port map (
combout => \TEMP_RAM_5_10_0_IV_0_I_I_0_0__G0_0_0\,
dataa => STORE_RAM_5_36,
datab => pixopbus_5_1_i_1,
datac => TEMP_RAM_8_10_0_IV_0_I_A3_0(1),
datad => TEMP_RAM_5_10_0_IV_0_I_I_A5_0(0));
\R1_STORE_RAM_8_RNO_1_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111110000000")
port map (
combout => \TEMP_RAM_8_10_0_IV_0_I_0_1__G0_0_0\,
dataa => STORE_RAM_8_41,
datab => pixopbus_8_1_i_0,
datac => TEMP_RAM_8_10_0_IV_0_I_A3_0(1),
datad => TEMP_RAM_8_10_0_IV_0_I_A5_0(1));
\R1_STORE_RAM_6_RNO_2_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111110000000")
port map (
combout => \TEMP_RAM_6_10_0_IV_0_0_I_0_1__G0_0_0\,
dataa => STORE_RAM_6_37,
datab => pixopbus_6_1_i_0,
datac => TEMP_RAM_8_10_0_IV_0_I_A3_0(1),
datad => TEMP_RAM_6_10_0_IV_0_0_I_A5_0(1));
\R1_STORE_RAM_4_RNO_1_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110101011000000")
port map (
combout => \TEMP_RAM_4_10_0_IV_I_I_0_0__G0_0_0\,
dataa => TEMP_RAM_4_10_0_IV_I_I_A5_2_0(0),
datab => TEMP_RAM_4_10_0_IV_I_I_A5_0_0(0),
datac => currentblockx_s_1_x,
datad => TEMP_RAM_8_10_0_IV_0_I_A3_0(1));
\R1_STORE_RAM_11_RNO_1_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111110000000")
port map (
combout => \TEMP_RAM_11_10_0_IV_0_I_0_1__G0_0_0\,
dataa => STORE_RAM_11_47,
datab => pixopbus_11_1_i_0,
datac => TEMP_RAM_8_10_0_IV_0_I_A3_0(1),
datad => TEMP_RAM_11_10_0_IV_0_I_A5_0(1));
\R1_STORE_RAM_10_RNO_1_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111110000000")
port map (
combout => \TEMP_RAM_10_10_0_IV_0_0_I_0_1__G0_0_0\,
dataa => STORE_RAM_10_45,
datab => pixopbus_10_1_i_0,
datac => TEMP_RAM_8_10_0_IV_0_I_A3_0(1),
datad => TEMP_RAM_10_10_0_IV_0_0_I_A5_0(1));
\R1_STORE_RAM_11_RNO_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111100011110000")
port map (
combout => \TEMP_RAM_11_10_0_IV_I_I_0_0__G0_0_0\,
dataa => STORE_RAM_11_48,
datab => pixopbus_11_1_i_1,
datac => TEMP_RAM_11_10_0_IV_I_I_A5_0(0),
datad => TEMP_RAM_8_10_0_IV_0_I_A3_0(1));
\R1_STORE_RAM_8_RNO_1_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111110000000")
port map (
combout => \TEMP_RAM_8_10_0_IV_0_0_0_0__G0_0_0\,
dataa => STORE_RAM_8_42,
datab => pixopbus_8_1_i_1,
datac => TEMP_RAM_8_10_0_IV_0_I_A3_0(1),
datad => TEMP_RAM_8_10_0_IV_0_0_A5_0(0));
\R1_STORE_RAM_9_RNO_1_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111110000000")
port map (
combout => \TEMP_RAM_9_10_0_IV_0_0_I_0_1__G0_0_0\,
dataa => STORE_RAM_9_43,
datab => pixopbus_9_1_i_0,
datac => TEMP_RAM_8_10_0_IV_0_I_A3_0(1),
datad => TEMP_RAM_9_10_0_IV_0_0_I_A5_0(1));
\R1_STORE_RAM_4_RNO_2_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111110000000")
port map (
combout => \TEMP_RAM_4_10_0_IV_0_I_0_1__G0_0_0\,
dataa => STORE_RAM_4_33,
datab => pixopbus_4_1_i_0,
datac => TEMP_RAM_8_10_0_IV_0_I_A3_0(1),
datad => TEMP_RAM_4_10_0_IV_0_I_A5_0(1));
\R1_STORE_RAM_9_RNO_1_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111110000000")
port map (
combout => \TEMP_RAM_9_10_0_IV_0_I_I_0_0__G0_0_0\,
dataa => STORE_RAM_9_44,
datab => pixopbus_9_1_i_1,
datac => TEMP_RAM_8_10_0_IV_0_I_A3_0(1),
datad => TEMP_RAM_9_10_0_IV_0_I_I_A5_0(0));
\R1_STORE_RAM_12_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111111111000")
port map (
combout => \TEMP_RAM_12_10_0_IV_0_I_0_1__G0_0\,
dataa => \TEMP_RAM_12_10_0_IV_0_I_0_1__G0_0_A5_0\,
datab => TEMP_RAM_8_10_0_IV_0_I_A3_1(1),
datac => \TEMP_RAM_12_10_0_IV_0_I_0_1__G0_0_0\,
datad => \TEMP_RAM_12_10_0_IV_0_I_0_1__G3\);
\R1_STORE_RAM_14_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111111111110")
port map (
combout => \TEMP_RAM_14_10_0_IV_I_I_0_0__G0_0\,
dataa => TEMP_RAM_14_10_0_IV_I_I_A5_0(0),
datab => TEMP_RAM_14_10_0_IV_I_I_A5_2(0),
datac => \TEMP_RAM_14_10_0_IV_I_I_0_0__G3\,
datad => \TEMP_RAM_14_10_0_IV_I_I_0_0__G0_0_A5\);
\R1_STORE_RAM_14_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111111111000")
port map (
combout => \TEMP_RAM_14_10_0_IV_0_I_0_1__G0_0\,
dataa => \TEMP_RAM_14_10_0_IV_0_I_0_1__G0_0_A5_1\,
datab => TEMP_RAM_8_10_0_IV_0_I_A3_1(1),
datac => \TEMP_RAM_14_10_0_IV_0_I_0_1__G3\,
datad => \TEMP_RAM_14_10_0_IV_0_I_0_1__G0_0_0\);
\R1_STORE_RAM_15_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111111111110")
port map (
combout => \TEMP_RAM_15_11_0_IV_0_0_0_0__G0_0\,
dataa => TEMP_RAM_15_11_0_IV_0_0_A5_0(0),
datab => TEMP_RAM_15_11_0_IV_0_0_A5_2(0),
datac => \TEMP_RAM_15_11_0_IV_0_0_0_0__G3\,
datad => \TEMP_RAM_15_11_0_IV_0_0_0_0__G0_0_A5\);
\R1_STORE_RAM_15_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111111111000")
port map (
combout => \TEMP_RAM_15_11_0_IV_0_I_0_1__G0_0\,
dataa => \TEMP_RAM_15_11_0_IV_0_I_0_1__G0_0_A5_1\,
datab => TEMP_RAM_8_10_0_IV_0_I_A3_1(1),
datac => \TEMP_RAM_15_11_0_IV_0_I_0_1__G3\,
datad => \TEMP_RAM_15_11_0_IV_0_I_0_1__G0_0_0\);
\R1_STORE_RAM_13_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111111111000")
port map (
combout => \TEMP_RAM_13_10_0_IV_I_I_0_0__G0_0\,
dataa => \TEMP_RAM_13_10_0_IV_I_I_0_0__G0_0_A5_0\,
datab => TEMP_RAM_8_10_0_IV_0_0_A3_57,
datac => \TEMP_RAM_13_10_0_IV_I_I_0_0__G3\,
datad => \TEMP_RAM_13_10_0_IV_I_I_0_0__G0_0_0\);
\R1_STORE_RAM_13_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111111111000")
port map (
combout => \TEMP_RAM_13_10_0_IV_0_I_0_1__G0_0\,
dataa => \TEMP_RAM_13_10_0_IV_0_I_0_1__G0_0_A5_0\,
datab => TEMP_RAM_8_10_0_IV_0_I_A3_1(1),
datac => \TEMP_RAM_13_10_0_IV_0_I_0_1__G3\,
datad => \TEMP_RAM_13_10_0_IV_0_I_0_1__G0_0_0\);
\R1_STORE_RAM_12_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111111111000")
port map (
combout => \TEMP_RAM_12_10_0_IV_0_0_0_0__G0_0\,
dataa => \TEMP_RAM_12_10_0_IV_0_0_0_0__G0_0_A5_0\,
datab => TEMP_RAM_8_10_0_IV_0_0_A3_57,
datac => \TEMP_RAM_12_10_0_IV_0_0_0_0__G3\,
datad => \TEMP_RAM_12_10_0_IV_0_0_0_0__G0_0_0\);
\R1_STORE_RAM_3_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111111111000")
port map (
combout => \TEMP_RAM_3_10_0_IV_I_I_0_0__G0_0\,
dataa => \TEMP_RAM_3_10_0_IV_I_I_0_0__G0_0_A5_0\,
datab => TEMP_RAM_8_10_0_IV_0_0_A3_57,
datac => \TEMP_RAM_3_10_0_IV_I_I_0_0__G3\,
datad => \TEMP_RAM_3_10_0_IV_I_I_0_0__G0_0_0\);
\R1_STORE_RAM_3_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111111111000")
port map (
combout => \TEMP_RAM_3_10_0_IV_0_I_0_1__G0_0\,
dataa => \TEMP_RAM_3_10_0_IV_0_I_0_1__G0_0_A5_0\,
datab => TEMP_RAM_8_10_0_IV_0_I_A3_1(1),
datac => \TEMP_RAM_3_10_0_IV_0_I_0_1__G0_0_0\,
datad => \TEMP_RAM_3_10_0_IV_0_I_0_1__G3\);
\R1_STORE_RAM_2_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111111111000")
port map (
combout => \TEMP_RAM_2_10_0_IV_0_I_I_0_0__G0_0\,
dataa => \TEMP_RAM_2_10_0_IV_0_I_I_0_0__G0_0_A5_0\,
datab => TEMP_RAM_8_10_0_IV_0_0_A3_57,
datac => \TEMP_RAM_2_10_0_IV_0_I_I_0_0__G0_0_0\,
datad => \TEMP_RAM_2_10_0_IV_0_I_I_0_0__G3\);
\R1_STORE_RAM_2_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111111111000")
port map (
combout => \TEMP_RAM_2_10_0_IV_0_0_I_0_1__G0_0\,
dataa => \TEMP_RAM_2_10_0_IV_0_0_I_0_1__G0_0_A5_0\,
datab => TEMP_RAM_8_10_0_IV_0_I_A3_1(1),
datac => \TEMP_RAM_2_10_0_IV_0_0_I_0_1__G0_0_0\,
datad => \TEMP_RAM_2_10_0_IV_0_0_I_0_1__G3\);
\R1_STORE_RAM_1_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111011111100")
port map (
combout => \TEMP_RAM_1_10_0_IV_I_I_0_0__G0_0\,
dataa => STORE_RAM_1_28,
datab => \TEMP_RAM_1_10_0_IV_I_I_0_0__G0_0_A5\,
datac => \TEMP_RAM_1_10_0_IV_I_I_0_0__G0_0_0\,
datad => TEMP_RAM_1_10_0_IV_I_I_O5_0(0));
\R1_STORE_RAM_1_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111111111000")
port map (
combout => \TEMP_RAM_1_10_0_IV_0_I_0_1__G0_0\,
dataa => \TEMP_RAM_1_10_0_IV_0_I_0_1__G0_0_A5_0\,
datab => TEMP_RAM_8_10_0_IV_0_I_A3_1(1),
datac => \TEMP_RAM_1_10_0_IV_0_I_0_1__G0_0_0\,
datad => \TEMP_RAM_1_10_0_IV_0_I_0_1__G3\);
\R1_STORE_RAM_0_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111111111000")
port map (
combout => \TEMP_RAM_0_12_0_IV_I_I_0_0__G0_0\,
dataa => \TEMP_RAM_0_12_0_IV_I_I_0_0__G0_0_A5_0\,
datab => TEMP_RAM_8_10_0_IV_0_0_A3_57,
datac => \TEMP_RAM_0_12_0_IV_I_I_0_0__G0_0_0\,
datad => \TEMP_RAM_0_12_0_IV_I_I_0_0__G3\);
\R1_STORE_RAM_0_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111111111000")
port map (
combout => \TEMP_RAM_0_12_0_IV_0_I_0_1__G0_0\,
dataa => \TEMP_RAM_0_12_0_IV_0_I_0_1__G0_0_A5_0\,
datab => TEMP_RAM_8_10_0_IV_0_I_A3_1(1),
datac => \TEMP_RAM_0_12_0_IV_0_I_0_1__G3\,
datad => \TEMP_RAM_0_12_0_IV_0_I_0_1__G0_0_0\);
\R1_STORE_RAM_4_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111111111000")
port map (
combout => \TEMP_RAM_4_10_0_IV_I_I_0_0__G0_0\,
dataa => \TEMP_RAM_4_10_0_IV_I_I_0_0__G0_0_A5_0\,
datab => TEMP_RAM_8_10_0_IV_0_0_A3_57,
datac => \TEMP_RAM_4_10_0_IV_I_I_0_0__G0_0_0\,
datad => \TEMP_RAM_4_10_0_IV_I_I_0_0__G3\);
\R1_STORE_RAM_11_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111011111100")
port map (
combout => \TEMP_RAM_11_10_0_IV_I_I_0_0__G0_0\,
dataa => STORE_RAM_11_48,
datab => \TEMP_RAM_11_10_0_IV_I_I_0_0__G0_0_0\,
datac => \TEMP_RAM_11_10_0_IV_I_I_0_0__G0_0_A5\,
datad => TEMP_RAM_11_10_0_IV_I_I_O5_0(0));
\R1_STORE_RAM_11_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111111111000")
port map (
combout => \TEMP_RAM_11_10_0_IV_0_I_0_1__G0_0\,
dataa => \TEMP_RAM_11_10_0_IV_0_I_0_1__G0_0_A5_1\,
datab => TEMP_RAM_8_10_0_IV_0_I_A3_1(1),
datac => \TEMP_RAM_11_10_0_IV_0_I_0_1__G0_0_0\,
datad => \TEMP_RAM_11_10_0_IV_0_I_0_1__G3\);
\R1_STORE_RAM_10_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111111111110")
port map (
combout => \TEMP_RAM_10_10_0_IV_0_0_0_0_0__G0_0\,
dataa => TEMP_RAM_10_10_0_IV_0_0_0_A5_0(0),
datab => TEMP_RAM_10_10_0_IV_0_0_0_A5_2(0),
datac => \TEMP_RAM_10_10_0_IV_0_0_0_0_0__G3\,
datad => \TEMP_RAM_10_10_0_IV_0_0_0_0_0__G0_0_A5\);
\R1_STORE_RAM_10_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111111111000")
port map (
combout => \TEMP_RAM_10_10_0_IV_0_0_I_0_1__G0_0\,
dataa => \TEMP_RAM_10_10_0_IV_0_0_I_0_1__G0_0_A5_1\,
datab => TEMP_RAM_8_10_0_IV_0_I_A3_1(1),
datac => \TEMP_RAM_10_10_0_IV_0_0_I_0_1__G0_0_0\,
datad => \TEMP_RAM_10_10_0_IV_0_0_I_0_1__G3\);
\R1_STORE_RAM_9_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111111111000")
port map (
combout => \TEMP_RAM_9_10_0_IV_0_I_I_0_0__G0_0\,
dataa => \TEMP_RAM_9_10_0_IV_0_I_I_0_0__G0_0_A5_0\,
datab => TEMP_RAM_8_10_0_IV_0_0_A3_57,
datac => \TEMP_RAM_9_10_0_IV_0_I_I_0_0__G0_0_0\,
datad => \TEMP_RAM_9_10_0_IV_0_I_I_0_0__G3\);
\R1_STORE_RAM_9_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111111111000")
port map (
combout => \TEMP_RAM_9_10_0_IV_0_0_I_0_1__G0_0\,
dataa => \TEMP_RAM_9_10_0_IV_0_0_I_0_1__G0_0_A5_0\,
datab => TEMP_RAM_8_10_0_IV_0_I_A3_1(1),
datac => \TEMP_RAM_9_10_0_IV_0_0_I_0_1__G0_0_0\,
datad => \TEMP_RAM_9_10_0_IV_0_0_I_0_1__G3\);
\R1_STORE_RAM_8_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111111111000")
port map (
combout => \TEMP_RAM_8_10_0_IV_0_0_0_0__G0_0\,
dataa => \TEMP_RAM_8_10_0_IV_0_0_0_0__G0_0_A5_0\,
datab => TEMP_RAM_8_10_0_IV_0_0_A3_57,
datac => \TEMP_RAM_8_10_0_IV_0_0_0_0__G0_0_0\,
datad => \TEMP_RAM_8_10_0_IV_0_0_0_0__G3\);
\R1_STORE_RAM_8_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111111111000")
port map (
combout => \TEMP_RAM_8_10_0_IV_0_I_0_1__G0_0\,
dataa => \TEMP_RAM_8_10_0_IV_0_I_0_1__G0_0_A5_0\,
datab => TEMP_RAM_8_10_0_IV_0_I_A3_1(1),
datac => \TEMP_RAM_8_10_0_IV_0_I_0_1__G0_0_0\,
datad => \TEMP_RAM_8_10_0_IV_0_I_0_1__G3\);
\R1_STORE_RAM_7_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111111111000")
port map (
combout => \TEMP_RAM_7_10_0_IV_I_I_0_0__G0_0\,
dataa => \TEMP_RAM_7_10_0_IV_I_I_0_0__G0_0_A5_0\,
datab => TEMP_RAM_8_10_0_IV_0_0_A3_57,
datac => \TEMP_RAM_7_10_0_IV_I_I_0_0__G3\,
datad => \TEMP_RAM_7_10_0_IV_I_I_0_0__G0_0_0\);
\R1_STORE_RAM_7_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111111111000")
port map (
combout => \TEMP_RAM_7_10_0_IV_0_I_0_1__G0_0\,
dataa => \TEMP_RAM_7_10_0_IV_0_I_0_1__G0_0_A5_0\,
datab => TEMP_RAM_8_10_0_IV_0_I_A3_1(1),
datac => \TEMP_RAM_7_10_0_IV_0_I_0_1__G0_0_0\,
datad => \TEMP_RAM_7_10_0_IV_0_I_0_1__G3\);
\R1_STORE_RAM_6_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111111111000")
port map (
combout => \TEMP_RAM_6_10_0_IV_0_I_I_0_0__G0_0\,
dataa => \TEMP_RAM_6_10_0_IV_0_I_I_0_0__G0_0_A5_0\,
datab => TEMP_RAM_8_10_0_IV_0_0_A3_57,
datac => \TEMP_RAM_6_10_0_IV_0_I_I_0_0__G0_0_0\,
datad => \TEMP_RAM_6_10_0_IV_0_I_I_0_0__G3\);
\R1_STORE_RAM_6_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111111111000")
port map (
combout => \TEMP_RAM_6_10_0_IV_0_0_I_0_1__G0_0\,
dataa => \TEMP_RAM_6_10_0_IV_0_0_I_0_1__G0_0_A5_0\,
datab => TEMP_RAM_8_10_0_IV_0_I_A3_1(1),
datac => \TEMP_RAM_6_10_0_IV_0_0_I_0_1__G3\,
datad => \TEMP_RAM_6_10_0_IV_0_0_I_0_1__G0_0_0\);
\R1_STORE_RAM_5_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111111111000")
port map (
combout => \TEMP_RAM_5_10_0_IV_0_I_I_0_0__G0_0\,
dataa => \TEMP_RAM_5_10_0_IV_0_I_I_0_0__G0_0_A5_0\,
datab => TEMP_RAM_8_10_0_IV_0_0_A3_57,
datac => \TEMP_RAM_5_10_0_IV_0_I_I_0_0__G3\,
datad => \TEMP_RAM_5_10_0_IV_0_I_I_0_0__G0_0_0\);
\R1_STORE_RAM_5_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111111111000")
port map (
combout => \TEMP_RAM_5_10_0_IV_0_0_I_0_1__G0_0\,
dataa => \TEMP_RAM_5_10_0_IV_0_0_I_0_1__G0_0_A5_0\,
datab => TEMP_RAM_8_10_0_IV_0_I_A3_1(1),
datac => \TEMP_RAM_5_10_0_IV_0_0_I_0_1__G3\,
datad => \TEMP_RAM_5_10_0_IV_0_0_I_0_1__G0_0_0\);
\R1_STORE_RAM_4_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111111111000")
port map (
combout => \TEMP_RAM_4_10_0_IV_0_I_0_1__G0_0\,
dataa => \TEMP_RAM_4_10_0_IV_0_I_0_1__G0_0_A5_0\,
datab => TEMP_RAM_8_10_0_IV_0_I_A3_1(1),
datac => \TEMP_RAM_4_10_0_IV_0_I_0_1__G3\,
datad => \TEMP_RAM_4_10_0_IV_0_I_0_1__G0_0_0\);
GND <= '0';
VCC <= '1';
store_ram_0_1 <= STORE_RAM_0_25;
store_ram_0_0 <= STORE_RAM_0_26;
store_ram_1_1 <= STORE_RAM_1_27;
store_ram_1_0 <= STORE_RAM_1_28;
store_ram_2_1 <= STORE_RAM_2_29;
store_ram_2_0 <= STORE_RAM_2_30;
store_ram_3_1 <= STORE_RAM_3_31;
store_ram_3_0 <= STORE_RAM_3_32;
store_ram_4_1 <= STORE_RAM_4_33;
store_ram_4_0 <= STORE_RAM_4_34;
store_ram_5_1 <= STORE_RAM_5_35;
store_ram_5_0 <= STORE_RAM_5_36;
store_ram_6_1 <= STORE_RAM_6_37;
store_ram_6_0 <= STORE_RAM_6_38;
store_ram_7_1 <= STORE_RAM_7_39;
store_ram_7_0 <= STORE_RAM_7_40;
store_ram_8_1 <= STORE_RAM_8_41;
store_ram_8_0 <= STORE_RAM_8_42;
store_ram_9_1 <= STORE_RAM_9_43;
store_ram_9_0 <= STORE_RAM_9_44;
store_ram_10_1 <= STORE_RAM_10_45;
store_ram_10_0 <= STORE_RAM_10_46;
store_ram_11_1 <= STORE_RAM_11_47;
store_ram_11_0 <= STORE_RAM_11_48;
store_ram_12_1 <= STORE_RAM_12_49;
store_ram_12_0 <= STORE_RAM_12_50;
store_ram_13_1 <= STORE_RAM_13_51;
store_ram_13_0 <= STORE_RAM_13_52;
store_ram_14_1 <= STORE_RAM_14_53;
store_ram_14_0 <= STORE_RAM_14_54;
store_ram_15_1 <= STORE_RAM_15_55;
store_ram_15_0 <= STORE_RAM_15_56;
temp_ram_8_10_0_iv_0_0_a3_0 <= TEMP_RAM_8_10_0_IV_0_0_A3_57;
end beh;

--
library ieee, cycloneii;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library synplify;
use synplify.components.all;
use cycloneii.cycloneii_components.all;

entity draw_any_octant is
port(
Y_current_0 :  in std_logic;
Y_current_4 :  in std_logic;
Y_current_3 :  in std_logic;
Y_current_2 :  in std_logic;
Y_current_1 :  in std_logic;
Y_current_5 :  in std_logic;
DAO_state_0 :  in std_logic;
DAO_state_1 :  in std_logic;
X_current_5 :  in std_logic;
X_current_2 :  in std_logic;
X_current_1 :  in std_logic;
X_current_0 :  in std_logic;
X_current_3 :  in std_logic;
X_current_4 :  in std_logic;
y_1z_5 :  out std_logic;
y_1z_1 :  out std_logic;
y_1z_0 :  out std_logic;
y_1z_2 :  out std_logic;
y_1z_3 :  out std_logic;
y_1z_4 :  out std_logic;
Y_2_1 :  out std_logic;
Y_2_5 :  out std_logic;
Y_2_4 :  out std_logic;
Y_2_3 :  out std_logic;
Y_2_2 :  out std_logic;
Y_2_0 :  out std_logic;
Y_0 :  in std_logic;
X_0 :  in std_logic;
temp_ram_8_10_0_iv_0_0_a3_0 :  in std_logic;
clk_c :  in std_logic;
db_disable_0 :  in std_logic;
muxed_swapxy_combout :  in std_logic;
lt5 :  in std_logic;
DAO_state_s0_0_a3 :  in std_logic;
lt5_0 :  in std_logic;
saved_swapxy :  out std_logic;
lt5_1 :  in std_logic;
G_9 :  in std_logic;
lt5_cout :  in std_logic;
lt5_cout_0 :  in std_logic;
G_1143 :  out std_logic;
rcb_ready25 :  in std_logic;
un5_x1_i_o3 :  out std_logic);
end draw_any_octant;

architecture beh of draw_any_octant is
signal devclrn : std_logic := '1';
signal devpor : std_logic := '1';
signal devoe : std_logic := '0';
signal YOUT_1 : std_logic_vector(5 downto 0);
signal XOUT_1 : std_logic_vector(2 to 2);
signal XIN_DO : std_logic_vector(5 downto 0);
signal YIN_DO : std_logic_vector(5 downto 0);
signal Y1 : std_logic_vector(5 downto 0);
signal X1 : std_logic_vector(5 downto 0);
signal X : std_logic_vector(5 downto 0);
signal NEGX_DLY : std_logic ;
signal MUXED_NEGX : std_logic ;
signal NEGY_DLY : std_logic ;
signal MUXED_NEGY : std_logic ;
signal SWAPXY_DLY : std_logic ;
signal SAVED_NEGX : std_logic ;
signal SAVED_NEGY : std_logic ;
signal SAVED_SWAPXY_13 : std_logic ;
signal XIN_DO_0_376_X4 : std_logic ;
signal XIN_DO_0_376_X4_1 : std_logic ;
signal YIN_DO_740_X4 : std_logic ;
signal YIN_DO_2_584_X4 : std_logic ;
signal YIN_DO_3_532_X4 : std_logic ;
signal YIN_DO_4_480_X4 : std_logic ;
signal XIN_DO_1_324_X4 : std_logic ;
signal XIN_DO_2_272_X4_1 : std_logic ;
signal XIN_DO_3_220_X4_2 : std_logic ;
signal XIN_DO_4_168_X4_2 : std_logic ;
signal MUXED_SWAPXY : std_logic ;
signal XBIAS_DO : std_logic ;
signal XIN_DO_428_X4_2 : std_logic ;
signal GND : std_logic ;
signal XIN_DO_1_324_X4_1 : std_logic ;
signal VCC : std_logic ;
component draw_octant
port(
x1_5 :  out std_logic;
x1_4 :  out std_logic;
x1_3 :  out std_logic;
x1_2 :  out std_logic;
x1_0 :  out std_logic;
x1_1 :  out std_logic;
y1_5 :  out std_logic;
y1_4 :  out std_logic;
y1_3 :  out std_logic;
y1_2 :  out std_logic;
y1_0 :  out std_logic;
y1_1 :  out std_logic;
xin_do_0 :  in std_logic;
xin_do_1 :  in std_logic;
xin_do_2 :  in std_logic;
xin_do_3 :  in std_logic;
xin_do_4 :  in std_logic;
xin_do_5 :  in std_logic;
yin_do_0 :  in std_logic;
yin_do_1 :  in std_logic;
yin_do_2 :  in std_logic;
yin_do_3 :  in std_logic;
yin_do_4 :  in std_logic;
yin_do_5 :  in std_logic;
DAO_state_1 :  in std_logic;
DAO_state_0 :  in std_logic;
yout_1_2 :  in std_logic;
yout_1_1 :  in std_logic;
yout_1_0 :  in std_logic;
xout_1_0 :  in std_logic;
X_current_2 :  in std_logic;
X_current_3 :  in std_logic;
X_current_1 :  in std_logic;
X_current_0 :  in std_logic;
Y_current_2 :  in std_logic;
Y_current_5 :  in std_logic;
Y_current_1 :  in std_logic;
Y_current_0 :  in std_logic;
Y_0 :  in std_logic;
X_0 :  in std_logic;
temp_ram_8_10_0_iv_0_0_a3_0 :  in std_logic;
clk_c :  in std_logic;
DAO_state_s0_0_a3 :  in std_logic;
lt5 :  in std_logic;
xin_do_0_376_x4_1 :  in std_logic;
lt5_0 :  in std_logic;
saved_negx :  in std_logic;
saved_swapxy :  in std_logic;
xin_do_0_376_x4 :  in std_logic;
muxed_negx :  in std_logic;
muxed_negy :  in std_logic;
saved_negy :  in std_logic;
yin_do_740_x4 :  in std_logic;
lt5_1 :  in std_logic;
xin_do_428_x4_2 :  in std_logic;
xin_do_1_324_x4 :  in std_logic;
xin_do_1_324_x4_1 :  in std_logic;
yin_do_2_584_x4 :  in std_logic;
xin_do_2_272_x4_1 :  in std_logic;
yin_do_3_532_x4 :  in std_logic;
xin_do_3_220_x4_2 :  in std_logic;
yin_do_4_480_x4 :  in std_logic;
xin_do_4_168_x4_2 :  in std_logic;
db_disable_0 :  in std_logic;
G_1143 :  out std_logic;
rcb_ready25 :  in std_logic;
un5_x1_i_o3 :  out std_logic;
xbias_do :  in std_logic  );
end component;
begin
R1_NEGX_DLY: cycloneii_lcell_ff port map (
regout => NEGX_DLY,
datain => MUXED_NEGX,
clk => clk_c,
ena => db_disable_0,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
R1_NEGY_DLY: cycloneii_lcell_ff port map (
regout => NEGY_DLY,
datain => MUXED_NEGY,
clk => clk_c,
ena => db_disable_0,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
R1_SWAPXY_DLY: cycloneii_lcell_ff port map (
regout => SWAPXY_DLY,
datain => muxed_swapxy_combout,
clk => clk_c,
ena => db_disable_0,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
R0_SAVED_NEGX: cycloneii_lcell_ff port map (
regout => SAVED_NEGX,
datain => lt5,
clk => clk_c,
ena => DAO_state_s0_0_a3,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
R0_SAVED_NEGY: cycloneii_lcell_ff port map (
regout => SAVED_NEGY,
datain => lt5_0,
clk => clk_c,
ena => DAO_state_s0_0_a3,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
R0_SAVED_SWAPXY: cycloneii_lcell_ff port map (
regout => SAVED_SWAPXY_13,
datain => lt5_1,
clk => clk_c,
ena => DAO_state_s0_0_a3,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\C1_YOUT_1_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110011001100110")
port map (
combout => YOUT_1(0),
dataa => Y_current_0,
datab => MUXED_NEGY);
R0_SAVED_NEGY_RNI3V8A: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110011001100110")
port map (
combout => XIN_DO_0_376_X4,
dataa => Y_current_4,
datab => SAVED_NEGY);
XIN_DO_0_376_X4_1_Z118: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110011001100110")
port map (
combout => XIN_DO_0_376_X4_1,
dataa => Y_current_4,
datab => lt5_0);
R0_SAVED_NEGX_RNI2LHJ: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110011001100110")
port map (
combout => YIN_DO_740_X4,
dataa => X_current_5,
datab => SAVED_NEGX);
R0_SAVED_NEGX_RNIVHHJ: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110011001100110")
port map (
combout => YIN_DO_2_584_X4,
dataa => X_current_2,
datab => SAVED_NEGX);
R0_SAVED_NEGX_RNIUGHJ: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110011001100110")
port map (
combout => YIN_DO_3_532_X4,
dataa => X_current_1,
datab => SAVED_NEGX);
R0_SAVED_NEGX_RNITFHJ: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110011001100110")
port map (
combout => YIN_DO_4_480_X4,
dataa => X_current_0,
datab => SAVED_NEGX);
R0_SAVED_NEGY_RNI2U8A: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110011001100110")
port map (
combout => XIN_DO_1_324_X4,
dataa => Y_current_3,
datab => SAVED_NEGY);
XIN_DO_2_272_X4_1_Z124: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110011001100110")
port map (
combout => XIN_DO_2_272_X4_1,
dataa => Y_current_2,
datab => lt5_0);
XIN_DO_3_220_X4_2_Z125: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110011001100110")
port map (
combout => XIN_DO_3_220_X4_2,
dataa => X_current_1,
datab => lt5);
XIN_DO_4_168_X4_2_Z126: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110011001100110")
port map (
combout => XIN_DO_4_168_X4_2,
dataa => X_current_0,
datab => lt5);
\C1_YOUT_1_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110011001100110")
port map (
combout => YOUT_1(1),
dataa => Y_current_1,
datab => MUXED_NEGY);
\C1_YOUT_1_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110011001100110")
port map (
combout => YOUT_1(3),
dataa => Y_current_3,
datab => MUXED_NEGY);
\C1_YOUT_1_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110011001100110")
port map (
combout => YOUT_1(4),
dataa => Y_current_4,
datab => MUXED_NEGY);
\C1_YOUT_1_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110011001100110")
port map (
combout => YOUT_1(5),
dataa => Y_current_5,
datab => MUXED_NEGY);
\C1_XOUT_1_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110011001100110")
port map (
combout => XOUT_1(2),
dataa => X_current_2,
datab => MUXED_NEGX);
MUXED_SWAPXY_Z132: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111000111100000")
port map (
combout => MUXED_SWAPXY,
dataa => DAO_state_0,
datab => DAO_state_1,
datac => SAVED_SWAPXY_13,
datad => lt5_1);
MUXED_NEGX_Z133: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111000111100000")
port map (
combout => MUXED_NEGX,
dataa => DAO_state_0,
datab => DAO_state_1,
datac => SAVED_NEGX,
datad => lt5);
MUXED_NEGY_Z134: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111000111100000")
port map (
combout => MUXED_NEGY,
dataa => DAO_state_0,
datab => DAO_state_1,
datac => SAVED_NEGY,
datad => lt5_0);
\XIN_DO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111000001100110")
port map (
combout => XIN_DO(0),
dataa => X_current_0,
datab => MUXED_NEGX,
datac => YOUT_1(0),
datad => MUXED_SWAPXY);
\YIN_DO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110011011110000")
port map (
combout => YIN_DO(0),
dataa => X_current_0,
datab => MUXED_NEGX,
datac => YOUT_1(0),
datad => MUXED_SWAPXY);
\Y_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011010111001010")
port map (
combout => y_1z_5,
dataa => Y1(5),
datab => X1(5),
datac => SWAPXY_DLY,
datad => NEGY_DLY);
\Y_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011010111001010")
port map (
combout => y_1z_1,
dataa => Y1(1),
datab => X1(1),
datac => SWAPXY_DLY,
datad => NEGY_DLY);
\X_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011010111001010")
port map (
combout => X(1),
dataa => X1(1),
datab => Y1(1),
datac => SWAPXY_DLY,
datad => NEGX_DLY);
\YIN_DO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110011011110000")
port map (
combout => YIN_DO(1),
dataa => X_current_1,
datab => MUXED_NEGX,
datac => YOUT_1(1),
datad => MUXED_SWAPXY);
\YIN_DO_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111000001100110")
port map (
combout => YIN_DO(2),
dataa => Y_current_2,
datab => MUXED_NEGY,
datac => XOUT_1(2),
datad => MUXED_SWAPXY);
\YIN_DO_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110011011110000")
port map (
combout => YIN_DO(3),
dataa => X_current_3,
datab => MUXED_NEGX,
datac => YOUT_1(3),
datad => MUXED_SWAPXY);
\YIN_DO_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110011011110000")
port map (
combout => YIN_DO(4),
dataa => X_current_4,
datab => MUXED_NEGX,
datac => YOUT_1(4),
datad => MUXED_SWAPXY);
\YIN_DO_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110011011110000")
port map (
combout => YIN_DO(5),
dataa => X_current_5,
datab => MUXED_NEGX,
datac => YOUT_1(5),
datad => MUXED_SWAPXY);
\XIN_DO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111000001100110")
port map (
combout => XIN_DO(1),
dataa => X_current_1,
datab => MUXED_NEGX,
datac => YOUT_1(1),
datad => MUXED_SWAPXY);
\XIN_DO_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110011011110000")
port map (
combout => XIN_DO(2),
dataa => Y_current_2,
datab => MUXED_NEGY,
datac => XOUT_1(2),
datad => MUXED_SWAPXY);
\XIN_DO_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111000001100110")
port map (
combout => XIN_DO(3),
dataa => X_current_3,
datab => MUXED_NEGX,
datac => YOUT_1(3),
datad => MUXED_SWAPXY);
\XIN_DO_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111000001100110")
port map (
combout => XIN_DO(4),
dataa => X_current_4,
datab => MUXED_NEGX,
datac => YOUT_1(4),
datad => MUXED_SWAPXY);
\XIN_DO_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111000001100110")
port map (
combout => XIN_DO(5),
dataa => X_current_5,
datab => MUXED_NEGX,
datac => YOUT_1(5),
datad => MUXED_SWAPXY);
\X_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011010111001010")
port map (
combout => X(0),
dataa => X1(0),
datab => Y1(0),
datac => SWAPXY_DLY,
datad => NEGX_DLY);
\X_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011010111001010")
port map (
combout => X(2),
dataa => X1(2),
datab => Y1(2),
datac => SWAPXY_DLY,
datad => NEGX_DLY);
\X_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011010111001010")
port map (
combout => X(3),
dataa => X1(3),
datab => Y1(3),
datac => SWAPXY_DLY,
datad => NEGX_DLY);
\X_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011010111001010")
port map (
combout => X(4),
dataa => X1(4),
datab => Y1(4),
datac => SWAPXY_DLY,
datad => NEGX_DLY);
\X_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011010111001010")
port map (
combout => X(5),
dataa => X1(5),
datab => Y1(5),
datac => SWAPXY_DLY,
datad => NEGX_DLY);
\Y_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011010111001010")
port map (
combout => y_1z_0,
dataa => Y1(0),
datab => X1(0),
datac => SWAPXY_DLY,
datad => NEGY_DLY);
\Y_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011010111001010")
port map (
combout => y_1z_2,
dataa => Y1(2),
datab => X1(2),
datac => SWAPXY_DLY,
datad => NEGY_DLY);
\Y_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011010111001010")
port map (
combout => y_1z_3,
dataa => Y1(3),
datab => X1(3),
datac => SWAPXY_DLY,
datad => NEGY_DLY);
\Y_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011010111001010")
port map (
combout => y_1z_4,
dataa => Y1(4),
datab => X1(4),
datac => SWAPXY_DLY,
datad => NEGY_DLY);
XBIAS_DO_Z159: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1001011010010110")
port map (
combout => XBIAS_DO,
dataa => MUXED_NEGY,
datab => MUXED_NEGX,
datac => MUXED_SWAPXY);
\X_RNIH8RR1_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010110010101100")
port map (
combout => Y_2_1,
dataa => X_current_1,
datab => X(1),
datac => G_9);
\X_RNIPGRR1_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010110010101100")
port map (
combout => Y_2_5,
dataa => X_current_5,
datab => X(5),
datac => G_9);
\X_RNINERR1_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010110010101100")
port map (
combout => Y_2_4,
dataa => X_current_4,
datab => X(4),
datac => G_9);
\X_RNILCRR1_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010110010101100")
port map (
combout => Y_2_3,
dataa => X_current_3,
datab => X(3),
datac => G_9);
\X_RNIJARR1_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010110010101100")
port map (
combout => Y_2_2,
dataa => X_current_2,
datab => X(2),
datac => G_9);
\X_RNIF6RR1_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010110010101100")
port map (
combout => Y_2_0,
dataa => X_current_0,
datab => X(0),
datac => G_9);
XIN_DO_428_X4_2_Z166: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0101101001011010")
port map (
combout => XIN_DO_428_X4_2,
dataa => X_current_5,
datab => GND,
cin => lt5_cout);
XIN_DO_1_324_X4_1_Z167: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0101101001011010")
port map (
combout => XIN_DO_1_324_X4_1,
dataa => Y_current_3,
datab => GND,
cin => lt5_cout_0);
DO: draw_octant port map (
x1_5 => X1(5),
x1_4 => X1(4),
x1_3 => X1(3),
x1_2 => X1(2),
x1_0 => X1(0),
x1_1 => X1(1),
y1_5 => Y1(5),
y1_4 => Y1(4),
y1_3 => Y1(3),
y1_2 => Y1(2),
y1_0 => Y1(0),
y1_1 => Y1(1),
xin_do_0 => XIN_DO(0),
xin_do_1 => XIN_DO(1),
xin_do_2 => XIN_DO(2),
xin_do_3 => XIN_DO(3),
xin_do_4 => XIN_DO(4),
xin_do_5 => XIN_DO(5),
yin_do_0 => YIN_DO(0),
yin_do_1 => YIN_DO(1),
yin_do_2 => YIN_DO(2),
yin_do_3 => YIN_DO(3),
yin_do_4 => YIN_DO(4),
yin_do_5 => YIN_DO(5),
DAO_state_1 => DAO_state_1,
DAO_state_0 => DAO_state_0,
yout_1_2 => YOUT_1(5),
yout_1_1 => YOUT_1(4),
yout_1_0 => YOUT_1(3),
xout_1_0 => XOUT_1(2),
X_current_2 => X_current_4,
X_current_3 => X_current_5,
X_current_1 => X_current_3,
X_current_0 => X_current_2,
Y_current_2 => Y_current_2,
Y_current_5 => Y_current_5,
Y_current_1 => Y_current_1,
Y_current_0 => Y_current_0,
Y_0 => Y_0,
X_0 => X_0,
temp_ram_8_10_0_iv_0_0_a3_0 => temp_ram_8_10_0_iv_0_0_a3_0,
clk_c => clk_c,
DAO_state_s0_0_a3 => DAO_state_s0_0_a3,
lt5 => lt5,
xin_do_0_376_x4_1 => XIN_DO_0_376_X4_1,
lt5_0 => lt5_1,
saved_negx => SAVED_NEGX,
saved_swapxy => SAVED_SWAPXY_13,
xin_do_0_376_x4 => XIN_DO_0_376_X4,
muxed_negx => MUXED_NEGX,
muxed_negy => MUXED_NEGY,
saved_negy => SAVED_NEGY,
yin_do_740_x4 => YIN_DO_740_X4,
lt5_1 => lt5_0,
xin_do_428_x4_2 => XIN_DO_428_X4_2,
xin_do_1_324_x4 => XIN_DO_1_324_X4,
xin_do_1_324_x4_1 => XIN_DO_1_324_X4_1,
yin_do_2_584_x4 => YIN_DO_2_584_X4,
xin_do_2_272_x4_1 => XIN_DO_2_272_X4_1,
yin_do_3_532_x4 => YIN_DO_3_532_X4,
xin_do_3_220_x4_2 => XIN_DO_3_220_X4_2,
yin_do_4_480_x4 => YIN_DO_4_480_X4,
xin_do_4_168_x4_2 => XIN_DO_4_168_X4_2,
db_disable_0 => db_disable_0,
G_1143 => G_1143,
rcb_ready25 => rcb_ready25,
un5_x1_i_o3 => un5_x1_i_o3,
xbias_do => XBIAS_DO);
GND <= '0';
VCC <= '1';
saved_swapxy <= SAVED_SWAPXY_13;
end beh;

--
library ieee, cycloneii;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library synplify;
use synplify.components.all;
use cycloneii.cycloneii_components.all;

entity rcb is
port(
rcb_state_0 :  out std_logic;
rcb_state_2 :  out std_logic;
Y_1_d0 :  out std_logic;
X_0_5 :  in std_logic;
X_0_4 :  in std_logic;
X_0_3 :  in std_logic;
X_0_2 :  in std_logic;
X_0_1 :  in std_logic;
X_0_0 :  in std_logic;
X_5 :  in std_logic;
X_4 :  in std_logic;
X_3 :  in std_logic;
X_2 :  in std_logic;
X_1 :  in std_logic;
X_0 :  in std_logic;
X_1_1 :  out std_logic;
Y_2_5 :  in std_logic;
Y_2_4 :  in std_logic;
Y_2_3 :  in std_logic;
Y_2_2 :  in std_logic;
Y_2_1 :  in std_logic;
Y_2_0 :  in std_logic;
Y_1_5 :  in std_logic;
Y_1_4 :  in std_logic;
Y_1_3 :  in std_logic;
Y_1_2 :  in std_logic;
Y_1_1 :  in std_logic;
Y_1_0 :  in std_logic;
rcb_cmd_0_1 :  in std_logic;
rcb_cmd_0_0 :  in std_logic;
opcode_0 :  in std_logic;
opcode_1 :  in std_logic;
temp_ram_8_10_0_iv_0_0_a3_0 :  out std_logic;
vaddr_7 :  out std_logic;
vaddr_6 :  out std_logic;
vaddr_5 :  out std_logic;
vaddr_4 :  out std_logic;
vaddr_3 :  out std_logic;
vaddr_2 :  out std_logic;
vaddr_1 :  out std_logic;
vaddr_0 :  out std_logic;
vdin_1_iv_0_m2_x_13 :  out std_logic;
vdin_1_iv_0_m2_x_14 :  out std_logic;
vdin_1_iv_0_m2_x_15 :  out std_logic;
vdin_1_iv_0_m2_x_6 :  out std_logic;
vdin_1_iv_0_m2_x_7 :  out std_logic;
vdin_1_iv_0_m2_x_8 :  out std_logic;
vdin_1_iv_0_m2_x_9 :  out std_logic;
vdin_1_iv_0_m2_x_10 :  out std_logic;
vdin_1_iv_0_m2_x_11 :  out std_logic;
vdin_1_iv_0_m2_x_12 :  out std_logic;
vdin_1_iv_0_m2_x_0 :  out std_logic;
vdin_1_iv_0_m2_x_1 :  out std_logic;
vdin_1_iv_0_m2_x_2 :  out std_logic;
vdin_1_iv_0_m2_x_3 :  out std_logic;
vdin_1_iv_0_m2_x_4 :  out std_logic;
vdin_1_iv_0_m2_x_5 :  out std_logic;
vdout_c_13 :  in std_logic;
vdout_c_14 :  in std_logic;
vdout_c_15 :  in std_logic;
vdout_c_6 :  in std_logic;
vdout_c_7 :  in std_logic;
vdout_c_8 :  in std_logic;
vdout_c_9 :  in std_logic;
vdout_c_10 :  in std_logic;
vdout_c_11 :  in std_logic;
vdout_c_12 :  in std_logic;
vdout_c_0 :  in std_logic;
vdout_c_1 :  in std_logic;
vdout_c_2 :  in std_logic;
vdout_c_3 :  in std_logic;
vdout_c_4 :  in std_logic;
vdout_c_5 :  in std_logic;
opcode_1z :  in std_logic;
clk_c :  in std_logic;
un1_reset_2_i_o2_combout :  in std_logic;
G_8 :  in std_logic;
reset_c :  in std_logic;
un1_reset_i_a2_x :  out std_logic;
lastfill :  out std_logic;
rcb_ready25 :  out std_logic;
fsm_state_4_sqmuxa_x :  in std_logic;
un17_store_xy_NE :  out std_logic;
rcb_cmds2 :  in std_logic;
un2_is_same_0_a5 :  out std_logic;
un1_reset_2_i_a2_2 :  out std_logic;
\state_srsts_0_1__g1\ :  out std_logic;
rcb_cmd_0_sqmuxa_i_0_o2 :  out std_logic;
un1_reset_i_a3_x :  out std_logic;
dbb_delaycmd :  out std_logic;
un1_fsm_state_2 :  in std_logic;
un2_finish :  out std_logic;
G_1143 :  in std_logic;
state_s1_0_a3 :  out std_logic);
end rcb;

architecture beh of rcb is
signal devclrn : std_logic := '1';
signal devpor : std_logic := '1';
signal devoe : std_logic := '0';
signal FLUSH_COUNTDOWN : std_logic_vector(2 downto 0);
signal RCB_STATE : std_logic_vector(4 downto 1);
signal Y : std_logic_vector(5 downto 0);
signal RCB_CMD : std_logic_vector(1 downto 0);
signal PIXCORNERS_BLOCK : std_logic_vector(3 downto 0);
signal CURRENTBLOCK_Y : std_logic_vector(3 downto 0);
signal STARTBLOCK_Y_2_I_M3 : std_logic_vector(3 downto 0);
signal CURRENTBLOCK_Y_4_0 : std_logic_vector(3 downto 0);
signal CURRENTBLOCK_X : std_logic_vector(3 downto 0);
signal STARTBLOCK_X_2 : std_logic_vector(3 downto 0);
signal CURRENTBLOCK_X_4_0 : std_logic_vector(3 downto 0);
signal CURRENTBLOCKY_S : std_logic_vector(3 downto 0);
signal CURRENTBLOCKX_S : std_logic_vector(3 downto 0);
signal CURRENTBLOCKX_S_4 : std_logic_vector(3 downto 0);
signal PIXCORNERS_3 : std_logic_vector(1 downto 0);
signal FILLSTART_Y : std_logic_vector(5 downto 0);
signal PIXCORNERS_2 : std_logic_vector(1 downto 0);
signal FILLSTART_X : std_logic_vector(5 downto 0);
signal PIXCORNERS_1 : std_logic_vector(1 downto 0);
signal PIXCORNERS_0 : std_logic_vector(1 downto 0);
signal FINALBLOCK_Y : std_logic_vector(3 downto 0);
signal FINALBLOCK_X : std_logic_vector(3 downto 0);
signal STARTBLOCK_Y : std_logic_vector(3 downto 0);
signal STARTBLOCK_X : std_logic_vector(3 downto 0);
signal STORE_XY : std_logic_vector(7 downto 0);
signal PIXOPBUS_0_2_I_O2 : std_logic_vector(0 to 0);
signal PIXOPBUS_12_1_I_O2 : std_logic_vector(0 to 0);
signal PIXOPBUS_2_1_I_A2 : std_logic_vector(0 to 0);
signal PIXOPBUS_4_1_I_A2_0 : std_logic_vector(0 to 0);
signal PIXNUM : std_logic_vector(1 to 1);
signal ALTB : std_logic_vector(1 to 1);
signal ALTB_0 : std_logic_vector(1 to 1);
signal PIXOPBUS_4_1_I_A2 : std_logic_vector(0 to 0);
signal PIXOPBUS_3_1_I_A3 : std_logic_vector(0 to 0);
signal PIXOPBUS_0_2_I_A3 : std_logic_vector(0 to 0);
signal PIXOPBUS_12_1_I_O3 : std_logic_vector(1 to 1);
signal PIXOPBUS_2_1_I_O3 : std_logic_vector(0 to 0);
signal PIXOPBUS_1_1_I_O3 : std_logic_vector(0 to 0);
signal PIXOPBUS_8_1_I_O3_0 : std_logic_vector(0 to 0);
signal PIXOPBUS_4_1_I_O3_0 : std_logic_vector(0 to 0);
signal PIXOPBUS_14_1_I : std_logic_vector(0 to 0);
signal PIXOPBUS_13_1_I : std_logic_vector(1 downto 0);
signal PIXOPBUS_2_1_I : std_logic_vector(1 downto 0);
signal PIXOPBUS_1_1_I : std_logic_vector(1 downto 0);
signal PIXOPBUS_15_2_I : std_logic_vector(1 downto 0);
signal PIXOPBUS_12_1_I : std_logic_vector(1 downto 0);
signal PIXOPBUS_3_1_I : std_logic_vector(1 downto 0);
signal PIXOPBUS_0_2_I : std_logic_vector(1 downto 0);
signal PIXOPBUS_10_1_I : std_logic_vector(1 downto 0);
signal PIXOPBUS_9_1_I : std_logic_vector(1 downto 0);
signal PIXOPBUS_6_1_I : std_logic_vector(1 downto 0);
signal PIXOPBUS_5_1_I : std_logic_vector(1 downto 0);
signal PIXOPBUS_11_1_I : std_logic_vector(1 downto 0);
signal PIXOPBUS_8_1_I : std_logic_vector(1 downto 0);
signal PIXOPBUS_7_1_I : std_logic_vector(1 downto 0);
signal PIXOPBUS_4_1_I : std_logic_vector(1 downto 0);
signal STORE_RAM_0 : std_logic_vector(1 downto 0);
signal STORE_RAM_1 : std_logic_vector(1 downto 0);
signal STORE_RAM_2 : std_logic_vector(1 downto 0);
signal STORE_RAM_3 : std_logic_vector(1 downto 0);
signal STORE_RAM_4 : std_logic_vector(1 downto 0);
signal STORE_RAM_5 : std_logic_vector(1 downto 0);
signal STORE_RAM_6 : std_logic_vector(1 downto 0);
signal STORE_RAM_7 : std_logic_vector(1 downto 0);
signal STORE_RAM_8 : std_logic_vector(1 downto 0);
signal STORE_RAM_9 : std_logic_vector(1 downto 0);
signal STORE_RAM_10 : std_logic_vector(1 downto 0);
signal STORE_RAM_11 : std_logic_vector(1 downto 0);
signal STORE_RAM_12 : std_logic_vector(1 downto 0);
signal STORE_RAM_13 : std_logic_vector(1 downto 0);
signal STORE_RAM_14 : std_logic_vector(1 downto 0);
signal STORE_RAM_15 : std_logic_vector(1 downto 0);
signal \FLUSH_COUNTDOWN_6_0_2__G0\ : std_logic ;
signal FLUSH_COUNTDOWN_6_1_0_G0 : std_logic ;
signal \FLUSH_COUNTDOWN_6_0_0__G0\ : std_logic ;
signal RCB_STATE_2_SQMUXA_4_0_G0 : std_logic ;
signal RCB_STATE_3_SQMUXA_4_0_G0 : std_logic ;
signal \RCB_STATE_11_IV_0_0_3__G0_0\ : std_logic ;
signal N_15_I_0_G0 : std_logic ;
signal RCB_CMD_0_SQMUXA_1_X : std_logic ;
signal NN_1 : std_logic ;
signal NN_2 : std_logic ;
signal NN_3 : std_logic ;
signal NN_4 : std_logic ;
signal NN_5 : std_logic ;
signal UN16_FINALBLOCK_Y_NE : std_logic ;
signal \PIXCORNERS_BLOCK_1_0_3__G2\ : std_logic ;
signal UN19_FINALBLOCK_X_NE : std_logic ;
signal \PIXCORNERS_BLOCK_1_0_2__G2\ : std_logic ;
signal \PIXCORNERS_BLOCK_1_0_1__G1\ : std_logic ;
signal \PIXCORNERS_BLOCK_1_0_0__G1\ : std_logic ;
signal UN1_RESET_I_X : std_logic ;
signal CURRENTBLOCKY_S_3_ADD3 : std_logic ;
signal CURRENTBLOCKX_S_1_X : std_logic ;
signal CURRENTBLOCKY_S_3_ADD2 : std_logic ;
signal CURRENTBLOCKY_S_3_ADD1 : std_logic ;
signal CURRENTBLOCKY_S_3_ADD0 : std_logic ;
signal \PIXCORNERS_1_0_0_0__G4\ : std_logic ;
signal UN1_RESET_I_A2_X_63 : std_logic ;
signal \PIXCORNERS_0_0_0_0__G4\ : std_logic ;
signal LT3 : std_logic ;
signal LT3_0 : std_logic ;
signal LASTFILL_64 : std_logic ;
signal LASTFILL_1_0_G1 : std_logic ;
signal LASTFILL_1_0_G0_E_X_I : std_logic ;
signal \FILLSTART_X_2_0_0__G0_I_0_X\ : std_logic ;
signal \STORE_XY_2_0_0__G3\ : std_logic ;
signal \STORE_XY_2_0_0__G0_0\ : std_logic ;
signal \STORE_XY_2_0_1__G3\ : std_logic ;
signal \STORE_XY_2_0_2__G3\ : std_logic ;
signal \STORE_XY_2_0_3__G3\ : std_logic ;
signal \STORE_XY_2_0_4__G3\ : std_logic ;
signal \STORE_XY_2_0_5__G3\ : std_logic ;
signal \STORE_XY_2_0_6__G3\ : std_logic ;
signal \STORE_XY_2_0_7__G3\ : std_logic ;
signal LT_0 : std_logic ;
signal LT_1 : std_logic ;
signal LT_2 : std_logic ;
signal LT3_COUT : std_logic ;
signal LT_0_0 : std_logic ;
signal LT_1_0 : std_logic ;
signal LT_2_0 : std_logic ;
signal LT3_COUT_0 : std_logic ;
signal CURRENTBLOCKY_S_3_CARRY_0 : std_logic ;
signal UN4_RCB_READY_NE : std_logic ;
signal CURRENTBLOCKY_S_3_CARRY_1 : std_logic ;
signal GND : std_logic ;
signal CURRENTBLOCKY_S_3_CARRY_2 : std_logic ;
signal BUSWEN_1_SQMUXA_0_A2_1 : std_logic ;
signal UN22_STORE_XY : std_logic ;
signal RCB_READY25_65 : std_logic ;
signal FLUSH_COUNTDOWN7LTO2_1 : std_logic ;
signal \CURRENTBLOCKY_S_1_0_0__G2_1\ : std_logic ;
signal UN16_FINALBLOCK_Y_0 : std_logic ;
signal UN19_FINALBLOCK_X_0 : std_logic ;
signal UN4_RCB_READY_0_0_X2 : std_logic ;
signal UN4_CURRENTBLOCKX_S_ANC1 : std_logic ;
signal START_RMW_D1_I_0_O2_0 : std_logic ;
signal BUSWEN_0_SQMUXA_I : std_logic ;
signal UN4_CURRENTBLOCKX_S_ANC2 : std_logic ;
signal UN1_RCB_STATE_6_1 : std_logic ;
signal UN16_FINALBLOCK_Y_NE_0 : std_logic ;
signal UN19_FINALBLOCK_X_NE_0 : std_logic ;
signal UN4_RCB_READY_NE_0 : std_logic ;
signal LASTFILL_0_SQMUXA_1_I_0_O2_4 : std_logic ;
signal UN17_STORE_XY_0 : std_logic ;
signal UN17_STORE_XY_4 : std_logic ;
signal UN2_FINISH_1 : std_logic ;
signal LASTFILL_0_SQMUXA_1_I_0_O2_1 : std_logic ;
signal UN11_CURRENTBLOCKY_S_NE_0 : std_logic ;
signal UN11_CURRENTBLOCKY_S_NE_1 : std_logic ;
signal UN17_STORE_XY_NE_1 : std_logic ;
signal UN17_STORE_XY_NE_3 : std_logic ;
signal \FLUSH_COUNTDOWN_6_0_0__G0_0\ : std_logic ;
signal LASTFILL_0_SQMUXA_1_I_0_O2_3 : std_logic ;
signal UN17_STORE_XY_NE_4 : std_logic ;
signal UN17_STORE_XY_NE_5 : std_logic ;
signal LASTFILL_0_SQMUXA_1_I_0_O2_0 : std_logic ;
signal UN12_CURRENTBLOCKX_S_NE_1 : std_logic ;
signal UN13_CURRENTBLOCKX_S_NE_1 : std_logic ;
signal UN11_CURRENTBLOCKX_S_NE_1 : std_logic ;
signal UN17_STORE_XY_NE_66 : std_logic ;
signal \RCB_STATE_11_IV_0_0__G0_0_A4_0_0\ : std_logic ;
signal LASTFILL_0_SQMUXA_1_I_0_O2_5 : std_logic ;
signal UN12_CURRENTBLOCKX_S_NE_0 : std_logic ;
signal UN13_CURRENTBLOCKX_S_NE_0 : std_logic ;
signal UN11_CURRENTBLOCKX_S_NE_0 : std_logic ;
signal UN2_IS_SAME_0_A5_67 : std_logic ;
signal \VADDR_1_0_0__G2\ : std_logic ;
signal UN1_RESET_2_I_O2_3 : std_logic ;
signal START_RMW_D1_I_0_O2 : std_logic ;
signal \PIXCORNERS_BLOCK_1_0_1__G2\ : std_logic ;
signal \PIXCORNERS_BLOCK_1_0_0__G2\ : std_logic ;
signal UN1_RESET_2_I_A2_68 : std_logic ;
signal \STATE_SRSTS_0_1__G1_69\ : std_logic ;
signal RCB_CMD_0_SQMUXA_I_0_O2_70 : std_logic ;
signal RCB_STATE_2_SQMUXA_4_1_1_A : std_logic ;
signal DELAY_I : std_logic ;
signal RCB_STATE_2_SQMUXA_4_1_1 : std_logic ;
signal \RCB_STATE_11_IV_0_0_3__G2\ : std_logic ;
signal UN1_RESET_2_I_O2 : std_logic ;
signal UN1_RESET_I_A3_X_71 : std_logic ;
signal LASTFILL_0_SQMUXA_1_I_0_O2 : std_logic ;
signal UN2_FINISH_2 : std_logic ;
signal \RCB_STATE_11_IV_0_0_3__G0_0_0\ : std_logic ;
signal LASTFILL_1_0_G2_0_X : std_logic ;
signal UN1_RESET_2_I_A2_0_X : std_logic ;
signal UN1_RESET_2_I_O3_1_X : std_logic ;
signal VCC : std_logic ;
signal RCB_STATE_59 : std_logic ;
signal RCB_STATE_60 : std_logic ;
signal Y_1_D0_61 : std_logic ;
signal X_1_62 : std_logic ;
signal LT3_0_I : std_logic ;
signal LT3_I : std_logic ;
signal \PIXCORNERS_0_0_0_0__G4_I\ : std_logic ;
signal \PIXCORNERS_1_0_0_0__G4_I\ : std_logic ;
signal RCB_STATE_2_I : std_logic ;
signal RESET_C_I : std_logic ;
signal G_8_I : std_logic ;
component pix_word_cache
port(
store_ram_0_1 :  out std_logic;
store_ram_0_0 :  out std_logic;
store_ram_1_1 :  out std_logic;
store_ram_1_0 :  out std_logic;
store_ram_2_1 :  out std_logic;
store_ram_2_0 :  out std_logic;
store_ram_3_1 :  out std_logic;
store_ram_3_0 :  out std_logic;
store_ram_4_1 :  out std_logic;
store_ram_4_0 :  out std_logic;
store_ram_5_1 :  out std_logic;
store_ram_5_0 :  out std_logic;
store_ram_6_1 :  out std_logic;
store_ram_6_0 :  out std_logic;
store_ram_7_1 :  out std_logic;
store_ram_7_0 :  out std_logic;
store_ram_8_1 :  out std_logic;
store_ram_8_0 :  out std_logic;
store_ram_9_1 :  out std_logic;
store_ram_9_0 :  out std_logic;
store_ram_10_1 :  out std_logic;
store_ram_10_0 :  out std_logic;
store_ram_11_1 :  out std_logic;
store_ram_11_0 :  out std_logic;
store_ram_12_1 :  out std_logic;
store_ram_12_0 :  out std_logic;
store_ram_13_1 :  out std_logic;
store_ram_13_0 :  out std_logic;
store_ram_14_1 :  out std_logic;
store_ram_14_0 :  out std_logic;
store_ram_15_1 :  out std_logic;
store_ram_15_0 :  out std_logic;
rcb_state_0 :  in std_logic;
rcb_state_2 :  in std_logic;
X_1 :  in std_logic;
X_0 :  in std_logic;
Y_1 :  in std_logic;
Y_0 :  in std_logic;
pixnum_0 :  in std_logic;
rcb_cmd_0 :  in std_logic;
rcb_cmd_1 :  in std_logic;
temp_ram_8_10_0_iv_0_0_a3_0 :  out std_logic;
pixopbus_12_1_i_o3_0 :  in std_logic;
pixopbus_2_1_i_o3_0 :  in std_logic;
pixopbus_14_1_i_0 :  in std_logic;
pixopbus_12_1_i_1 :  in std_logic;
pixopbus_12_1_i_0 :  in std_logic;
pixopbus_3_1_i_a3_0 :  in std_logic;
pixopbus_2_1_i_0 :  in std_logic;
pixopbus_2_1_i_1 :  in std_logic;
pixopbus_3_1_i_0 :  in std_logic;
pixopbus_3_1_i_1 :  in std_logic;
pixopbus_0_2_i_1 :  in std_logic;
pixopbus_0_2_i_0 :  in std_logic;
pixopbus_1_1_i_1 :  in std_logic;
pixopbus_1_1_i_0 :  in std_logic;
pixopbus_15_2_i_0 :  in std_logic;
pixopbus_15_2_i_1 :  in std_logic;
pixopbus_13_1_i_0 :  in std_logic;
pixopbus_13_1_i_1 :  in std_logic;
pixopbus_4_1_i_o3_0_0 :  in std_logic;
pixopbus_0_2_i_a3_0 :  in std_logic;
pixopbus_8_1_i_1 :  in std_logic;
pixopbus_8_1_i_0 :  in std_logic;
pixopbus_5_1_i_0 :  in std_logic;
pixopbus_5_1_i_1 :  in std_logic;
pixopbus_10_1_i_0 :  in std_logic;
pixopbus_10_1_i_1 :  in std_logic;
pixopbus_6_1_i_0 :  in std_logic;
pixopbus_6_1_i_1 :  in std_logic;
pixopbus_9_1_i_0 :  in std_logic;
pixopbus_9_1_i_1 :  in std_logic;
pixopbus_7_1_i_1 :  in std_logic;
pixopbus_7_1_i_0 :  in std_logic;
pixopbus_4_1_i_0 :  in std_logic;
pixopbus_4_1_i_1 :  in std_logic;
pixopbus_11_1_i_0 :  in std_logic;
pixopbus_11_1_i_1 :  in std_logic;
clk_c :  in std_logic;
\vaddr_1_0_0__g2\ :  in std_logic;
reset_c :  in std_logic;
un22_store_xy :  in std_logic;
buswen_1_sqmuxa_0_a2_1 :  in std_logic;
rcb_ready25 :  in std_logic;
\currentblocky_s_1_0_0__g2_1\ :  in std_logic;
G_1143 :  in std_logic;
un2_is_same_0_a5 :  out std_logic;
currentblockx_s_1_x :  in std_logic  );
end component;
component read_modify_write
port(
store_ram_15_1 :  in std_logic;
store_ram_15_0 :  in std_logic;
store_ram_14_1 :  in std_logic;
store_ram_14_0 :  in std_logic;
store_ram_13_1 :  in std_logic;
store_ram_13_0 :  in std_logic;
store_ram_12_1 :  in std_logic;
store_ram_12_0 :  in std_logic;
store_ram_11_1 :  in std_logic;
store_ram_11_0 :  in std_logic;
store_ram_10_1 :  in std_logic;
store_ram_10_0 :  in std_logic;
store_ram_9_1 :  in std_logic;
store_ram_9_0 :  in std_logic;
store_ram_8_1 :  in std_logic;
store_ram_8_0 :  in std_logic;
store_ram_7_1 :  in std_logic;
store_ram_7_0 :  in std_logic;
store_ram_6_1 :  in std_logic;
store_ram_6_0 :  in std_logic;
store_ram_5_1 :  in std_logic;
store_ram_5_0 :  in std_logic;
store_ram_4_1 :  in std_logic;
store_ram_4_0 :  in std_logic;
store_ram_3_1 :  in std_logic;
store_ram_3_0 :  in std_logic;
store_ram_2_1 :  in std_logic;
store_ram_2_0 :  in std_logic;
store_ram_1_1 :  in std_logic;
store_ram_1_0 :  in std_logic;
store_ram_0_1 :  in std_logic;
store_ram_0_0 :  in std_logic;
vaddr_7 :  out std_logic;
vaddr_6 :  out std_logic;
vaddr_5 :  out std_logic;
vaddr_4 :  out std_logic;
vaddr_3 :  out std_logic;
vaddr_2 :  out std_logic;
vaddr_1 :  out std_logic;
vaddr_0 :  out std_logic;
store_xy_7 :  in std_logic;
store_xy_6 :  in std_logic;
store_xy_5 :  in std_logic;
store_xy_4 :  in std_logic;
store_xy_3 :  in std_logic;
store_xy_2 :  in std_logic;
store_xy_1 :  in std_logic;
store_xy_0 :  in std_logic;
vdin_1_iv_0_m2_x_13 :  out std_logic;
vdin_1_iv_0_m2_x_14 :  out std_logic;
vdin_1_iv_0_m2_x_15 :  out std_logic;
vdin_1_iv_0_m2_x_6 :  out std_logic;
vdin_1_iv_0_m2_x_7 :  out std_logic;
vdin_1_iv_0_m2_x_8 :  out std_logic;
vdin_1_iv_0_m2_x_9 :  out std_logic;
vdin_1_iv_0_m2_x_10 :  out std_logic;
vdin_1_iv_0_m2_x_11 :  out std_logic;
vdin_1_iv_0_m2_x_12 :  out std_logic;
vdin_1_iv_0_m2_x_0 :  out std_logic;
vdin_1_iv_0_m2_x_1 :  out std_logic;
vdin_1_iv_0_m2_x_2 :  out std_logic;
vdin_1_iv_0_m2_x_3 :  out std_logic;
vdin_1_iv_0_m2_x_4 :  out std_logic;
vdin_1_iv_0_m2_x_5 :  out std_logic;
vdout_c_13 :  in std_logic;
vdout_c_14 :  in std_logic;
vdout_c_15 :  in std_logic;
vdout_c_6 :  in std_logic;
vdout_c_7 :  in std_logic;
vdout_c_8 :  in std_logic;
vdout_c_9 :  in std_logic;
vdout_c_10 :  in std_logic;
vdout_c_11 :  in std_logic;
vdout_c_12 :  in std_logic;
vdout_c_0 :  in std_logic;
vdout_c_1 :  in std_logic;
vdout_c_2 :  in std_logic;
vdout_c_3 :  in std_logic;
vdout_c_4 :  in std_logic;
vdout_c_5 :  in std_logic;
clk_c :  in std_logic;
\vaddr_1_0_0__g2\ :  out std_logic;
state_s1_0_a3 :  out std_logic;
\state_srsts_0_1__g1\ :  out std_logic;
delay_i :  out std_logic;
start_rmw_d1_i_0_o2 :  in std_logic;
reset_c :  in std_logic  );
end component;
begin
\R1_FLUSH_COUNTDOWN_2_\: cycloneii_lcell_ff port map (
regout => FLUSH_COUNTDOWN(2),
datain => \FLUSH_COUNTDOWN_6_0_2__G0\,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_FLUSH_COUNTDOWN_1_\: cycloneii_lcell_ff port map (
regout => FLUSH_COUNTDOWN(1),
datain => FLUSH_COUNTDOWN_6_1_0_G0,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_FLUSH_COUNTDOWN_0_\: cycloneii_lcell_ff port map (
regout => FLUSH_COUNTDOWN(0),
datain => \FLUSH_COUNTDOWN_6_0_0__G0\,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_RCB_STATE_0_\: cycloneii_lcell_ff port map (
regout => RCB_STATE_59,
datain => RCB_STATE_2_SQMUXA_4_0_G0,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_RCB_STATE_1_\: cycloneii_lcell_ff port map (
regout => RCB_STATE(1),
datain => un1_reset_2_i_o2_combout,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_RCB_STATE_2_\: cycloneii_lcell_ff port map (
regout => RCB_STATE_60,
datain => RCB_STATE_3_SQMUXA_4_0_G0,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_RCB_STATE_3_\: cycloneii_lcell_ff port map (
regout => RCB_STATE(3),
datain => \RCB_STATE_11_IV_0_0_3__G0_0\,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_RCB_STATE_4_\: cycloneii_lcell_ff port map (
regout => RCB_STATE(4),
datain => N_15_I_0_G0,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\R1_CURRENT_CMD_Y_5_\: cycloneii_lcell_ff port map (
regout => Y(5),
datain => X_0_5,
clk => clk_c,
sload => G_8_I,
sdata => X_5,
ena => RCB_CMD_0_SQMUXA_1_X,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\R1_CURRENT_CMD_Y_4_\: cycloneii_lcell_ff port map (
regout => Y(4),
datain => X_0_4,
clk => clk_c,
sload => G_8_I,
sdata => X_4,
ena => RCB_CMD_0_SQMUXA_1_X,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\R1_CURRENT_CMD_Y_3_\: cycloneii_lcell_ff port map (
regout => Y(3),
datain => X_0_3,
clk => clk_c,
sload => G_8_I,
sdata => X_3,
ena => RCB_CMD_0_SQMUXA_1_X,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\R1_CURRENT_CMD_Y_2_\: cycloneii_lcell_ff port map (
regout => Y(2),
datain => X_0_2,
clk => clk_c,
sload => G_8_I,
sdata => X_2,
ena => RCB_CMD_0_SQMUXA_1_X,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\R1_CURRENT_CMD_Y_1_\: cycloneii_lcell_ff port map (
regout => Y_1_D0_61,
datain => X_0_1,
clk => clk_c,
sload => G_8_I,
sdata => X_1,
ena => RCB_CMD_0_SQMUXA_1_X,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\R1_CURRENT_CMD_Y_0_\: cycloneii_lcell_ff port map (
regout => Y(0),
datain => X_0_0,
clk => clk_c,
sload => G_8_I,
sdata => X_0,
ena => RCB_CMD_0_SQMUXA_1_X,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\R1_CURRENT_CMD_X_5_\: cycloneii_lcell_ff port map (
regout => NN_1,
datain => Y_2_5,
clk => clk_c,
sload => G_8_I,
sdata => Y_1_5,
ena => RCB_CMD_0_SQMUXA_1_X,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\R1_CURRENT_CMD_X_4_\: cycloneii_lcell_ff port map (
regout => NN_2,
datain => Y_2_4,
clk => clk_c,
sload => G_8_I,
sdata => Y_1_4,
ena => RCB_CMD_0_SQMUXA_1_X,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\R1_CURRENT_CMD_X_3_\: cycloneii_lcell_ff port map (
regout => NN_3,
datain => Y_2_3,
clk => clk_c,
sload => G_8_I,
sdata => Y_1_3,
ena => RCB_CMD_0_SQMUXA_1_X,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\R1_CURRENT_CMD_X_2_\: cycloneii_lcell_ff port map (
regout => NN_4,
datain => Y_2_2,
clk => clk_c,
sload => G_8_I,
sdata => Y_1_2,
ena => RCB_CMD_0_SQMUXA_1_X,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\R1_CURRENT_CMD_X_1_\: cycloneii_lcell_ff port map (
regout => X_1_62,
datain => Y_2_1,
clk => clk_c,
sload => G_8_I,
sdata => Y_1_1,
ena => RCB_CMD_0_SQMUXA_1_X,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\R1_CURRENT_CMD_X_0_\: cycloneii_lcell_ff port map (
regout => NN_5,
datain => Y_2_0,
clk => clk_c,
sload => G_8_I,
sdata => Y_1_0,
ena => RCB_CMD_0_SQMUXA_1_X,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\CURRENT_CMD_RCB_CMD_1_\: cycloneii_lcell_ff port map (
regout => RCB_CMD(1),
datain => rcb_cmd_0_1,
clk => clk_c,
ena => RCB_CMD_0_SQMUXA_1_X,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\CURRENT_CMD_RCB_CMD_0_\: cycloneii_lcell_ff port map (
regout => RCB_CMD(0),
datain => rcb_cmd_0_0,
clk => clk_c,
ena => RCB_CMD_0_SQMUXA_1_X,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_PIXCORNERS_BLOCK_3_\: cycloneii_lcell_ff port map (
regout => PIXCORNERS_BLOCK(3),
datain => UN16_FINALBLOCK_Y_NE,
clk => clk_c,
sload => RCB_STATE_2_I,
sdata => \PIXCORNERS_BLOCK_1_0_3__G2\,
ena => RESET_C_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\R1_PIXCORNERS_BLOCK_2_\: cycloneii_lcell_ff port map (
regout => PIXCORNERS_BLOCK(2),
datain => UN19_FINALBLOCK_X_NE,
clk => clk_c,
sload => RCB_STATE_2_I,
sdata => \PIXCORNERS_BLOCK_1_0_2__G2\,
ena => RESET_C_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\R1_PIXCORNERS_BLOCK_1_\: cycloneii_lcell_ff port map (
regout => PIXCORNERS_BLOCK(1),
datain => \PIXCORNERS_BLOCK_1_0_1__G1\,
clk => clk_c,
ena => RESET_C_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_PIXCORNERS_BLOCK_0_\: cycloneii_lcell_ff port map (
regout => PIXCORNERS_BLOCK(0),
datain => \PIXCORNERS_BLOCK_1_0_0__G1\,
clk => clk_c,
ena => RESET_C_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_CURRENTBLOCK_Y_3_\: cycloneii_lcell_ff port map (
regout => CURRENTBLOCK_Y(3),
datain => STARTBLOCK_Y_2_I_M3(3),
clk => clk_c,
sload => RCB_STATE_2_I,
sdata => CURRENTBLOCK_Y_4_0(3),
ena => UN1_RESET_I_X,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\R1_CURRENTBLOCK_Y_2_\: cycloneii_lcell_ff port map (
regout => CURRENTBLOCK_Y(2),
datain => STARTBLOCK_Y_2_I_M3(2),
clk => clk_c,
sload => RCB_STATE_2_I,
sdata => CURRENTBLOCK_Y_4_0(2),
ena => UN1_RESET_I_X,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\R1_CURRENTBLOCK_Y_1_\: cycloneii_lcell_ff port map (
regout => CURRENTBLOCK_Y(1),
datain => STARTBLOCK_Y_2_I_M3(1),
clk => clk_c,
sload => RCB_STATE_2_I,
sdata => CURRENTBLOCK_Y_4_0(1),
ena => UN1_RESET_I_X,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\R1_CURRENTBLOCK_Y_0_\: cycloneii_lcell_ff port map (
regout => CURRENTBLOCK_Y(0),
datain => STARTBLOCK_Y_2_I_M3(0),
clk => clk_c,
sload => RCB_STATE_2_I,
sdata => CURRENTBLOCK_Y_4_0(0),
ena => UN1_RESET_I_X,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\R1_CURRENTBLOCK_X_3_\: cycloneii_lcell_ff port map (
regout => CURRENTBLOCK_X(3),
datain => STARTBLOCK_X_2(3),
clk => clk_c,
sload => RCB_STATE_2_I,
sdata => CURRENTBLOCK_X_4_0(3),
ena => UN1_RESET_I_X,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\R1_CURRENTBLOCK_X_2_\: cycloneii_lcell_ff port map (
regout => CURRENTBLOCK_X(2),
datain => STARTBLOCK_X_2(2),
clk => clk_c,
sload => RCB_STATE_2_I,
sdata => CURRENTBLOCK_X_4_0(2),
ena => UN1_RESET_I_X,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\R1_CURRENTBLOCK_X_1_\: cycloneii_lcell_ff port map (
regout => CURRENTBLOCK_X(1),
datain => STARTBLOCK_X_2(1),
clk => clk_c,
sload => RCB_STATE_2_I,
sdata => CURRENTBLOCK_X_4_0(1),
ena => UN1_RESET_I_X,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\R1_CURRENTBLOCK_X_0_\: cycloneii_lcell_ff port map (
regout => CURRENTBLOCK_X(0),
datain => STARTBLOCK_X_2(0),
clk => clk_c,
sload => RCB_STATE_2_I,
sdata => CURRENTBLOCK_X_4_0(0),
ena => UN1_RESET_I_X,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\CURRENTBLOCKY_S_3_\: cycloneii_lcell_ff port map (
regout => CURRENTBLOCKY_S(3),
datain => CURRENTBLOCKY_S_3_ADD3,
clk => clk_c,
ena => CURRENTBLOCKX_S_1_X,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\CURRENTBLOCKY_S_2_\: cycloneii_lcell_ff port map (
regout => CURRENTBLOCKY_S(2),
datain => CURRENTBLOCKY_S_3_ADD2,
clk => clk_c,
ena => CURRENTBLOCKX_S_1_X,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\CURRENTBLOCKY_S_1_\: cycloneii_lcell_ff port map (
regout => CURRENTBLOCKY_S(1),
datain => CURRENTBLOCKY_S_3_ADD1,
clk => clk_c,
ena => CURRENTBLOCKX_S_1_X,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\CURRENTBLOCKY_S_0_\: cycloneii_lcell_ff port map (
regout => CURRENTBLOCKY_S(0),
datain => CURRENTBLOCKY_S_3_ADD0,
clk => clk_c,
ena => CURRENTBLOCKX_S_1_X,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\CURRENTBLOCKX_S_3_\: cycloneii_lcell_ff port map (
regout => CURRENTBLOCKX_S(3),
datain => CURRENTBLOCKX_S_4(3),
clk => clk_c,
ena => CURRENTBLOCKX_S_1_X,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\CURRENTBLOCKX_S_2_\: cycloneii_lcell_ff port map (
regout => CURRENTBLOCKX_S(2),
datain => CURRENTBLOCKX_S_4(2),
clk => clk_c,
ena => CURRENTBLOCKX_S_1_X,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\CURRENTBLOCKX_S_1_\: cycloneii_lcell_ff port map (
regout => CURRENTBLOCKX_S(1),
datain => CURRENTBLOCKX_S_4(1),
clk => clk_c,
ena => CURRENTBLOCKX_S_1_X,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\CURRENTBLOCKX_S_0_\: cycloneii_lcell_ff port map (
regout => CURRENTBLOCKX_S(0),
datain => CURRENTBLOCKX_S_4(0),
clk => clk_c,
ena => CURRENTBLOCKX_S_1_X,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_PIXCORNERS_3_1_\: cycloneii_lcell_ff port map (
regout => PIXCORNERS_3(1),
datain => Y_1_D0_61,
clk => clk_c,
sload => \PIXCORNERS_1_0_0_0__G4_I\,
sdata => FILLSTART_Y(1),
ena => UN1_RESET_I_A2_X_63,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\R1_PIXCORNERS_3_0_\: cycloneii_lcell_ff port map (
regout => PIXCORNERS_3(0),
datain => Y(0),
clk => clk_c,
sload => \PIXCORNERS_1_0_0_0__G4_I\,
sdata => FILLSTART_Y(0),
ena => UN1_RESET_I_A2_X_63,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\R1_PIXCORNERS_2_1_\: cycloneii_lcell_ff port map (
regout => PIXCORNERS_2(1),
datain => X_1_62,
clk => clk_c,
sload => \PIXCORNERS_0_0_0_0__G4_I\,
sdata => FILLSTART_X(1),
ena => UN1_RESET_I_A2_X_63,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\R1_PIXCORNERS_2_0_\: cycloneii_lcell_ff port map (
regout => PIXCORNERS_2(0),
datain => NN_5,
clk => clk_c,
sload => \PIXCORNERS_0_0_0_0__G4_I\,
sdata => FILLSTART_X(0),
ena => UN1_RESET_I_A2_X_63,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\R1_PIXCORNERS_1_1_\: cycloneii_lcell_ff port map (
regout => PIXCORNERS_1(1),
datain => FILLSTART_Y(1),
clk => clk_c,
sload => \PIXCORNERS_1_0_0_0__G4_I\,
sdata => Y_1_D0_61,
ena => UN1_RESET_I_A2_X_63,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\R1_PIXCORNERS_1_0_\: cycloneii_lcell_ff port map (
regout => PIXCORNERS_1(0),
datain => FILLSTART_Y(0),
clk => clk_c,
sload => \PIXCORNERS_1_0_0_0__G4_I\,
sdata => Y(0),
ena => UN1_RESET_I_A2_X_63,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\R1_PIXCORNERS_0_1_\: cycloneii_lcell_ff port map (
regout => PIXCORNERS_0(1),
datain => FILLSTART_X(1),
clk => clk_c,
sload => \PIXCORNERS_0_0_0_0__G4_I\,
sdata => X_1_62,
ena => UN1_RESET_I_A2_X_63,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\R1_PIXCORNERS_0_0_\: cycloneii_lcell_ff port map (
regout => PIXCORNERS_0(0),
datain => FILLSTART_X(0),
clk => clk_c,
sload => \PIXCORNERS_0_0_0_0__G4_I\,
sdata => NN_5,
ena => UN1_RESET_I_A2_X_63,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\FINALBLOCK_Y_3_\: cycloneii_lcell_ff port map (
regout => FINALBLOCK_Y(3),
datain => FILLSTART_Y(5),
clk => clk_c,
sload => LT3_I,
sdata => Y(5),
ena => UN1_RESET_I_A2_X_63,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\FINALBLOCK_Y_2_\: cycloneii_lcell_ff port map (
regout => FINALBLOCK_Y(2),
datain => FILLSTART_Y(4),
clk => clk_c,
sload => LT3_I,
sdata => Y(4),
ena => UN1_RESET_I_A2_X_63,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\FINALBLOCK_Y_1_\: cycloneii_lcell_ff port map (
regout => FINALBLOCK_Y(1),
datain => FILLSTART_Y(3),
clk => clk_c,
sload => LT3_I,
sdata => Y(3),
ena => UN1_RESET_I_A2_X_63,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\FINALBLOCK_Y_0_\: cycloneii_lcell_ff port map (
regout => FINALBLOCK_Y(0),
datain => FILLSTART_Y(2),
clk => clk_c,
sload => LT3_I,
sdata => Y(2),
ena => UN1_RESET_I_A2_X_63,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\FINALBLOCK_X_3_\: cycloneii_lcell_ff port map (
regout => FINALBLOCK_X(3),
datain => FILLSTART_X(5),
clk => clk_c,
sload => LT3_0_I,
sdata => NN_1,
ena => UN1_RESET_I_A2_X_63,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\FINALBLOCK_X_2_\: cycloneii_lcell_ff port map (
regout => FINALBLOCK_X(2),
datain => FILLSTART_X(4),
clk => clk_c,
sload => LT3_0_I,
sdata => NN_2,
ena => UN1_RESET_I_A2_X_63,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\FINALBLOCK_X_1_\: cycloneii_lcell_ff port map (
regout => FINALBLOCK_X(1),
datain => FILLSTART_X(3),
clk => clk_c,
sload => LT3_0_I,
sdata => NN_3,
ena => UN1_RESET_I_A2_X_63,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\FINALBLOCK_X_0_\: cycloneii_lcell_ff port map (
regout => FINALBLOCK_X(0),
datain => FILLSTART_X(2),
clk => clk_c,
sload => LT3_0_I,
sdata => NN_4,
ena => UN1_RESET_I_A2_X_63,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND);
\STARTBLOCK_Y_3_\: cycloneii_lcell_ff port map (
regout => STARTBLOCK_Y(3),
datain => STARTBLOCK_Y_2_I_M3(3),
clk => clk_c,
ena => UN1_RESET_I_A2_X_63,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\STARTBLOCK_Y_2_\: cycloneii_lcell_ff port map (
regout => STARTBLOCK_Y(2),
datain => STARTBLOCK_Y_2_I_M3(2),
clk => clk_c,
ena => UN1_RESET_I_A2_X_63,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\STARTBLOCK_Y_1_\: cycloneii_lcell_ff port map (
regout => STARTBLOCK_Y(1),
datain => STARTBLOCK_Y_2_I_M3(1),
clk => clk_c,
ena => UN1_RESET_I_A2_X_63,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\STARTBLOCK_Y_0_\: cycloneii_lcell_ff port map (
regout => STARTBLOCK_Y(0),
datain => STARTBLOCK_Y_2_I_M3(0),
clk => clk_c,
ena => UN1_RESET_I_A2_X_63,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\STARTBLOCK_X_3_\: cycloneii_lcell_ff port map (
regout => STARTBLOCK_X(3),
datain => STARTBLOCK_X_2(3),
clk => clk_c,
ena => UN1_RESET_I_A2_X_63,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\STARTBLOCK_X_2_\: cycloneii_lcell_ff port map (
regout => STARTBLOCK_X(2),
datain => STARTBLOCK_X_2(2),
clk => clk_c,
ena => UN1_RESET_I_A2_X_63,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\STARTBLOCK_X_1_\: cycloneii_lcell_ff port map (
regout => STARTBLOCK_X(1),
datain => STARTBLOCK_X_2(1),
clk => clk_c,
ena => UN1_RESET_I_A2_X_63,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\STARTBLOCK_X_0_\: cycloneii_lcell_ff port map (
regout => STARTBLOCK_X(0),
datain => STARTBLOCK_X_2(0),
clk => clk_c,
ena => UN1_RESET_I_A2_X_63,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
R1_LASTFILL: cycloneii_lcell_ff port map (
regout => LASTFILL_64,
datain => LASTFILL_1_0_G1,
clk => clk_c,
ena => LASTFILL_1_0_G0_E_X_I,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\R1_FILLSTART_X_0_\: cycloneii_lcell_ff port map (
regout => FILLSTART_X(0),
datain => NN_5,
clk => clk_c,
sclr => reset_c,
ena => \FILLSTART_X_2_0_0__G0_I_0_X\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_FILLSTART_X_1_\: cycloneii_lcell_ff port map (
regout => FILLSTART_X(1),
datain => X_1_62,
clk => clk_c,
sclr => reset_c,
ena => \FILLSTART_X_2_0_0__G0_I_0_X\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_FILLSTART_X_2_\: cycloneii_lcell_ff port map (
regout => FILLSTART_X(2),
datain => NN_4,
clk => clk_c,
sclr => reset_c,
ena => \FILLSTART_X_2_0_0__G0_I_0_X\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_FILLSTART_X_3_\: cycloneii_lcell_ff port map (
regout => FILLSTART_X(3),
datain => NN_3,
clk => clk_c,
sclr => reset_c,
ena => \FILLSTART_X_2_0_0__G0_I_0_X\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_FILLSTART_X_4_\: cycloneii_lcell_ff port map (
regout => FILLSTART_X(4),
datain => NN_2,
clk => clk_c,
sclr => reset_c,
ena => \FILLSTART_X_2_0_0__G0_I_0_X\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_FILLSTART_X_5_\: cycloneii_lcell_ff port map (
regout => FILLSTART_X(5),
datain => NN_1,
clk => clk_c,
sclr => reset_c,
ena => \FILLSTART_X_2_0_0__G0_I_0_X\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_FILLSTART_Y_0_\: cycloneii_lcell_ff port map (
regout => FILLSTART_Y(0),
datain => Y(0),
clk => clk_c,
sclr => reset_c,
ena => \FILLSTART_X_2_0_0__G0_I_0_X\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_FILLSTART_Y_1_\: cycloneii_lcell_ff port map (
regout => FILLSTART_Y(1),
datain => Y_1_D0_61,
clk => clk_c,
sclr => reset_c,
ena => \FILLSTART_X_2_0_0__G0_I_0_X\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_FILLSTART_Y_2_\: cycloneii_lcell_ff port map (
regout => FILLSTART_Y(2),
datain => Y(2),
clk => clk_c,
sclr => reset_c,
ena => \FILLSTART_X_2_0_0__G0_I_0_X\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_FILLSTART_Y_3_\: cycloneii_lcell_ff port map (
regout => FILLSTART_Y(3),
datain => Y(3),
clk => clk_c,
sclr => reset_c,
ena => \FILLSTART_X_2_0_0__G0_I_0_X\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_FILLSTART_Y_4_\: cycloneii_lcell_ff port map (
regout => FILLSTART_Y(4),
datain => Y(4),
clk => clk_c,
sclr => reset_c,
ena => \FILLSTART_X_2_0_0__G0_I_0_X\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_FILLSTART_Y_5_\: cycloneii_lcell_ff port map (
regout => FILLSTART_Y(5),
datain => Y(5),
clk => clk_c,
sclr => reset_c,
ena => \FILLSTART_X_2_0_0__G0_I_0_X\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_STORE_XY_0_\: cycloneii_lcell_ff port map (
regout => STORE_XY(0),
datain => \STORE_XY_2_0_0__G3\,
clk => clk_c,
sclr => reset_c,
ena => \STORE_XY_2_0_0__G0_0\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_STORE_XY_1_\: cycloneii_lcell_ff port map (
regout => STORE_XY(1),
datain => \STORE_XY_2_0_1__G3\,
clk => clk_c,
sclr => reset_c,
ena => \STORE_XY_2_0_0__G0_0\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_STORE_XY_2_\: cycloneii_lcell_ff port map (
regout => STORE_XY(2),
datain => \STORE_XY_2_0_2__G3\,
clk => clk_c,
sclr => reset_c,
ena => \STORE_XY_2_0_0__G0_0\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_STORE_XY_3_\: cycloneii_lcell_ff port map (
regout => STORE_XY(3),
datain => \STORE_XY_2_0_3__G3\,
clk => clk_c,
sclr => reset_c,
ena => \STORE_XY_2_0_0__G0_0\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_STORE_XY_4_\: cycloneii_lcell_ff port map (
regout => STORE_XY(4),
datain => \STORE_XY_2_0_4__G3\,
clk => clk_c,
sclr => reset_c,
ena => \STORE_XY_2_0_0__G0_0\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_STORE_XY_5_\: cycloneii_lcell_ff port map (
regout => STORE_XY(5),
datain => \STORE_XY_2_0_5__G3\,
clk => clk_c,
sclr => reset_c,
ena => \STORE_XY_2_0_0__G0_0\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_STORE_XY_6_\: cycloneii_lcell_ff port map (
regout => STORE_XY(6),
datain => \STORE_XY_2_0_6__G3\,
clk => clk_c,
sclr => reset_c,
ena => \STORE_XY_2_0_0__G0_0\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\R1_STORE_XY_7_\: cycloneii_lcell_ff port map (
regout => STORE_XY(7),
datain => \STORE_XY_2_0_7__G3\,
clk => clk_c,
sclr => reset_c,
ena => \STORE_XY_2_0_0__G0_0\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
R1_UN6_FINALBLOCK_X_LT0: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000001000100")
port map (
cout => LT_0,
dataa => NN_4,
datab => FILLSTART_X(2));
R1_UN6_FINALBLOCK_X_LT1: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000011010100")
port map (
cout => LT_1,
dataa => NN_3,
datab => FILLSTART_X(3),
cin => LT_0);
R1_UN6_FINALBLOCK_X_LT2: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000011010100")
port map (
cout => LT_2,
dataa => NN_2,
datab => FILLSTART_X(4),
cin => LT_1);
R1_UN6_FINALBLOCK_X_LT3: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1101010011010100")
port map (
combout => LT3_0,
cout => LT3_COUT,
dataa => NN_1,
datab => FILLSTART_X(5),
cin => LT_2);
R1_UN5_FINALBLOCK_Y_LT0: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000001000100")
port map (
cout => LT_0_0,
dataa => Y(2),
datab => FILLSTART_Y(2));
R1_UN5_FINALBLOCK_Y_LT1: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000011010100")
port map (
cout => LT_1_0,
dataa => Y(3),
datab => FILLSTART_Y(3),
cin => LT_0_0);
R1_UN5_FINALBLOCK_Y_LT2: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000011010100")
port map (
cout => LT_2_0,
dataa => Y(4),
datab => FILLSTART_Y(4),
cin => LT_1_0);
R1_UN5_FINALBLOCK_Y_LT3: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1101010011010100")
port map (
combout => LT3,
cout => LT3_COUT_0,
dataa => Y(5),
datab => FILLSTART_Y(5),
cin => LT_2_0);
R1_CURRENTBLOCKY_S_3_ADD0: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1001100101000100")
port map (
combout => CURRENTBLOCKY_S_3_ADD0,
cout => CURRENTBLOCKY_S_3_CARRY_0,
dataa => UN4_RCB_READY_NE,
datab => CURRENTBLOCK_Y(0));
R1_CURRENTBLOCKY_S_3_ADD1: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0101101010100000")
port map (
combout => CURRENTBLOCKY_S_3_ADD1,
cout => CURRENTBLOCKY_S_3_CARRY_1,
dataa => CURRENTBLOCK_Y(1),
datab => GND,
cin => CURRENTBLOCKY_S_3_CARRY_0);
R1_CURRENTBLOCKY_S_3_ADD2: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0101101010100000")
port map (
combout => CURRENTBLOCKY_S_3_ADD2,
cout => CURRENTBLOCKY_S_3_CARRY_2,
dataa => CURRENTBLOCK_Y(2),
datab => GND,
cin => CURRENTBLOCKY_S_3_CARRY_1);
R1_CURRENTBLOCKY_S_3_ADD3: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0101101001011010")
port map (
combout => CURRENTBLOCKY_S_3_ADD3,
dataa => CURRENTBLOCK_Y(3),
datab => GND,
cin => CURRENTBLOCKY_S_3_CARRY_2);
\C1_PIXOPBUS_0_2_I_O2_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110111011101110")
port map (
combout => PIXOPBUS_0_2_I_O2(0),
dataa => PIXCORNERS_1(1),
datab => PIXCORNERS_1(0));
BUSWEN_1_SQMUXA_0_A2_1_Z569: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000100010001000")
port map (
combout => BUSWEN_1_SQMUXA_0_A2_1,
dataa => RCB_STATE(3),
datab => UN22_STORE_XY);
RCB_READY25_Z570: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110111011101110")
port map (
combout => RCB_READY25_65,
dataa => RCB_STATE(3),
datab => RCB_STATE(1));
\R1_STARTBLOCK_Y_2_I_M3_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010110010101100")
port map (
combout => STARTBLOCK_Y_2_I_M3(3),
dataa => Y(5),
datab => FILLSTART_Y(5),
datac => LT3);
R1_OP_GT_FLUSH_COUNTDOWN7LTO2_1: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110111011101110")
port map (
combout => FLUSH_COUNTDOWN7LTO2_1,
dataa => FLUSH_COUNTDOWN(1),
datab => FLUSH_COUNTDOWN(0));
C1_UN22_STORE_XY_RNIOHNM: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111011101110111")
port map (
combout => \CURRENTBLOCKY_S_1_0_0__G2_1\,
dataa => RCB_STATE(1),
datab => UN22_STORE_XY);
\R1_CURRENTBLOCKX_S_4_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0101110001011100")
port map (
combout => CURRENTBLOCKX_S_4(0),
dataa => CURRENTBLOCK_X(0),
datab => STARTBLOCK_X(0),
datac => UN4_RCB_READY_NE);
\R1_CURRENTBLOCK_Y_4_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100101011001010")
port map (
combout => CURRENTBLOCK_Y_4_0(0),
dataa => CURRENTBLOCKY_S(0),
datab => CURRENTBLOCKY_S_3_ADD0,
datac => UN22_STORE_XY);
\R1_CURRENTBLOCK_Y_4_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100101011001010")
port map (
combout => CURRENTBLOCK_Y_4_0(1),
dataa => CURRENTBLOCKY_S(1),
datab => CURRENTBLOCKY_S_3_ADD1,
datac => UN22_STORE_XY);
\R1_CURRENTBLOCK_Y_4_0_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100101011001010")
port map (
combout => CURRENTBLOCK_Y_4_0(2),
dataa => CURRENTBLOCKY_S(2),
datab => CURRENTBLOCKY_S_3_ADD2,
datac => UN22_STORE_XY);
\R1_CURRENTBLOCK_Y_4_0_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100101011001010")
port map (
combout => CURRENTBLOCK_Y_4_0(3),
dataa => CURRENTBLOCKY_S(3),
datab => CURRENTBLOCKY_S_3_ADD3,
datac => UN22_STORE_XY);
\R1_STARTBLOCK_Y_2_I_M3_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010110010101100")
port map (
combout => STARTBLOCK_Y_2_I_M3(0),
dataa => Y(2),
datab => FILLSTART_Y(2),
datac => LT3);
\R1_STARTBLOCK_Y_2_I_M3_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010110010101100")
port map (
combout => STARTBLOCK_Y_2_I_M3(1),
dataa => Y(3),
datab => FILLSTART_Y(3),
datac => LT3);
\R1_STARTBLOCK_Y_2_I_M3_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010110010101100")
port map (
combout => STARTBLOCK_Y_2_I_M3(2),
dataa => Y(4),
datab => FILLSTART_Y(4),
datac => LT3);
\R1_STARTBLOCK_X_2_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010110010101100")
port map (
combout => STARTBLOCK_X_2(0),
dataa => NN_4,
datab => FILLSTART_X(2),
datac => LT3_0);
\R1_STARTBLOCK_X_2_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010110010101100")
port map (
combout => STARTBLOCK_X_2(1),
dataa => NN_3,
datab => FILLSTART_X(3),
datac => LT3_0);
\R1_STARTBLOCK_X_2_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010110010101100")
port map (
combout => STARTBLOCK_X_2(2),
dataa => NN_2,
datab => FILLSTART_X(4),
datac => LT3_0);
\R1_STARTBLOCK_X_2_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010110010101100")
port map (
combout => STARTBLOCK_X_2(3),
dataa => NN_1,
datab => FILLSTART_X(5),
datac => LT3_0);
R1_UN16_FINALBLOCK_Y_0: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110011001100110")
port map (
combout => UN16_FINALBLOCK_Y_0,
dataa => FILLSTART_Y(2),
datab => Y(2));
R1_UN19_FINALBLOCK_X_0: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110011001100110")
port map (
combout => UN19_FINALBLOCK_X_0,
dataa => FILLSTART_X(2),
datab => NN_4);
R1_UN4_RCB_READY_0_0_X2: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110011001100110")
port map (
combout => UN4_RCB_READY_0_0_X2,
dataa => FINALBLOCK_X(0),
datab => CURRENTBLOCK_X(0));
\C1_PIXOPBUS_12_1_I_O2_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111011101110111")
port map (
combout => PIXOPBUS_12_1_I_O2(0),
dataa => PIXCORNERS_3(1),
datab => PIXCORNERS_3(0));
\C1_PIXOPBUS_2_1_I_A2_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0010001000100010")
port map (
combout => PIXOPBUS_2_1_I_A2(0),
dataa => PIXCORNERS_BLOCK(2),
datab => PIXCORNERS_2(1));
\C1_PIXOPBUS_4_1_I_A2_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000100010001000")
port map (
combout => PIXOPBUS_4_1_I_A2_0(0),
dataa => PIXCORNERS_BLOCK(1),
datab => PIXCORNERS_1(1));
\R1_CURRENTBLOCKX_S_4_RNO_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000100010001000")
port map (
combout => UN4_CURRENTBLOCKX_S_ANC1,
dataa => CURRENTBLOCK_X(1),
datab => CURRENTBLOCK_X(0));
\R1_RCB_STATE_RNI4AKE_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110111011101110")
port map (
combout => START_RMW_D1_I_0_O2_0,
dataa => RCB_STATE_60,
datab => RCB_STATE_59);
\PIXNUM_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110000011100000")
port map (
combout => PIXNUM(1),
dataa => RCB_STATE(1),
datab => RCB_STATE(3),
datac => X_1_62);
\R1_UN18_FINALBLOCK_Y_ALTB_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111010100010000")
port map (
combout => ALTB(1),
dataa => Y_1_D0_61,
datab => Y(0),
datac => FILLSTART_Y(0),
datad => FILLSTART_Y(1));
\R1_CURRENTBLOCK_X_RNI1PO31_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111000010001000")
port map (
combout => \STORE_XY_2_0_2__G3\,
dataa => RCB_STATE(3),
datab => NN_2,
datac => CURRENTBLOCK_X(2),
datad => RCB_STATE(1));
\R1_CURRENTBLOCK_X_RNI3RO31_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111000010001000")
port map (
combout => \STORE_XY_2_0_3__G3\,
dataa => RCB_STATE(3),
datab => NN_1,
datac => CURRENTBLOCK_X(3),
datad => RCB_STATE(1));
\R1_CURRENTBLOCK_Y_RNIVQU51_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111000010001000")
port map (
combout => \STORE_XY_2_0_4__G3\,
dataa => RCB_STATE(3),
datab => Y(2),
datac => CURRENTBLOCK_Y(0),
datad => RCB_STATE(1));
\R1_CURRENTBLOCK_Y_RNI1TU51_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111000010001000")
port map (
combout => \STORE_XY_2_0_5__G3\,
dataa => RCB_STATE(3),
datab => Y(3),
datac => CURRENTBLOCK_Y(1),
datad => RCB_STATE(1));
\R1_CURRENTBLOCK_Y_RNI3VU51_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111000010001000")
port map (
combout => \STORE_XY_2_0_6__G3\,
dataa => RCB_STATE(3),
datab => Y(4),
datac => CURRENTBLOCK_Y(2),
datad => RCB_STATE(1));
\R1_CURRENTBLOCK_Y_RNI51V51_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111000010001000")
port map (
combout => \STORE_XY_2_0_7__G3\,
dataa => RCB_STATE(3),
datab => Y(5),
datac => CURRENTBLOCK_Y(3),
datad => RCB_STATE(1));
BUSWEN_0_SQMUXA_I_Z602: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001111100011111")
port map (
combout => BUSWEN_0_SQMUXA_I,
dataa => RCB_STATE(1),
datab => RCB_STATE(3),
datac => UN22_STORE_XY);
\R1_CURRENTBLOCK_X_RNIVMO31_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111000010001000")
port map (
combout => \STORE_XY_2_0_1__G3\,
dataa => RCB_STATE(3),
datab => NN_3,
datac => CURRENTBLOCK_X(1),
datad => RCB_STATE(1));
\R1_CURRENT_CMD_X_RNITKO31_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111000010001000")
port map (
combout => \STORE_XY_2_0_0__G3\,
dataa => RCB_STATE(3),
datab => NN_4,
datac => CURRENTBLOCK_X(0),
datad => RCB_STATE(1));
\R1_CURRENTBLOCKX_S_4_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110011011110000")
port map (
combout => CURRENTBLOCKX_S_4(1),
dataa => CURRENTBLOCK_X(0),
datab => CURRENTBLOCK_X(1),
datac => STARTBLOCK_X(1),
datad => UN4_RCB_READY_NE);
\R1_CURRENTBLOCK_X_4_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100101011001010")
port map (
combout => CURRENTBLOCK_X_4_0(0),
dataa => CURRENTBLOCKX_S(0),
datab => CURRENTBLOCKX_S_4(0),
datac => UN22_STORE_XY);
\R1_UN21_FINALBLOCK_X_ALTB_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111010100010000")
port map (
combout => ALTB_0(1),
dataa => X_1_62,
datab => NN_5,
datac => FILLSTART_X(0),
datad => FILLSTART_X(1));
\C1_PIXOPBUS_4_1_I_A2_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000010000000100")
port map (
combout => PIXOPBUS_4_1_I_A2(0),
dataa => PIXCORNERS_3(1),
datab => PIXCORNERS_BLOCK(3),
datac => PIXCORNERS_3(0));
\C1_PIXOPBUS_3_1_I_A3_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111000001110000")
port map (
combout => PIXOPBUS_3_1_I_A3(0),
dataa => PIXCORNERS_2(0),
datab => PIXCORNERS_2(1),
datac => PIXCORNERS_BLOCK(2));
\C1_PIXOPBUS_0_2_I_A3_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110000011100000")
port map (
combout => PIXOPBUS_0_2_I_A3(0),
dataa => PIXCORNERS_0(0),
datab => PIXCORNERS_0(1),
datac => PIXCORNERS_BLOCK(0));
\R1_CURRENTBLOCKX_S_4_RNO_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000000010000000")
port map (
combout => UN4_CURRENTBLOCKX_S_ANC2,
dataa => CURRENTBLOCK_X(0),
datab => CURRENTBLOCK_X(1),
datac => CURRENTBLOCK_X(2));
UN1_RCB_STATE_6_1_Z612: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111011101110")
port map (
combout => UN1_RCB_STATE_6_1,
dataa => RCB_STATE_59,
datab => RCB_STATE(4),
datac => RCB_STATE(3),
datad => UN22_STORE_XY);
R1_UN16_FINALBLOCK_Y_NE_0: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110111111110110")
port map (
combout => UN16_FINALBLOCK_Y_NE_0,
dataa => Y(5),
datab => FILLSTART_Y(5),
datac => Y(4),
datad => FILLSTART_Y(4));
R1_UN19_FINALBLOCK_X_NE_0: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110111111110110")
port map (
combout => UN19_FINALBLOCK_X_NE_0,
dataa => NN_1,
datab => FILLSTART_X(5),
datac => NN_2,
datad => FILLSTART_X(4));
R1_UN4_RCB_READY_NE_0: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110111111110110")
port map (
combout => UN4_RCB_READY_NE_0,
dataa => CURRENTBLOCK_X(3),
datab => FINALBLOCK_X(3),
datac => CURRENTBLOCK_X(2),
datad => FINALBLOCK_X(2));
LASTFILL_0_SQMUXA_1_I_0_O2_4_Z616: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111110110111110")
port map (
combout => LASTFILL_0_SQMUXA_1_I_0_O2_4,
dataa => FINALBLOCK_Y(3),
datab => FINALBLOCK_Y(2),
datac => CURRENTBLOCKY_S_3_ADD2,
datad => CURRENTBLOCKY_S_3_ADD3);
C1_UN17_STORE_XY_0: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110011001100110")
port map (
combout => UN17_STORE_XY_0,
dataa => STORE_XY(0),
datab => \STORE_XY_2_0_0__G3\);
C1_UN17_STORE_XY_4: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0110011001100110")
port map (
combout => UN17_STORE_XY_4,
dataa => STORE_XY(4),
datab => \STORE_XY_2_0_4__G3\);
C1_UN22_STORE_XY_RNIL5TV: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111010101010")
port map (
combout => \STORE_XY_2_0_0__G0_0\,
dataa => reset_c,
datab => RCB_STATE(1),
datac => RCB_STATE(3),
datad => UN22_STORE_XY);
\R1_CURRENTBLOCKX_S_4_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0101101011001100")
port map (
combout => CURRENTBLOCKX_S_4(2),
dataa => CURRENTBLOCK_X(2),
datab => STARTBLOCK_X(2),
datac => UN4_CURRENTBLOCKX_S_ANC1,
datad => UN4_RCB_READY_NE);
\R1_CURRENTBLOCK_X_4_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100101011001010")
port map (
combout => CURRENTBLOCK_X_4_0(1),
dataa => CURRENTBLOCKX_S(1),
datab => CURRENTBLOCKX_S_4(1),
datac => UN22_STORE_XY);
\C1_PIXOPBUS_12_1_I_O3_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111000011111111")
port map (
combout => PIXOPBUS_12_1_I_O3(1),
dataa => PIXCORNERS_3(0),
datab => PIXCORNERS_3(1),
datac => PIXCORNERS_BLOCK(3),
datad => RCB_CMD(1));
\C1_PIXOPBUS_2_1_I_O3_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111110000000")
port map (
combout => PIXOPBUS_2_1_I_O3(0),
dataa => PIXCORNERS_0(1),
datab => PIXCORNERS_BLOCK(0),
datac => PIXCORNERS_0(0),
datad => PIXOPBUS_2_1_I_A2(0));
\C1_PIXOPBUS_1_1_I_O3_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000111110001000")
port map (
combout => PIXOPBUS_1_1_I_O3(0),
dataa => PIXCORNERS_0(1),
datab => PIXCORNERS_BLOCK(0),
datac => PIXCORNERS_2(0),
datad => PIXOPBUS_2_1_I_A2(0));
\C1_PIXOPBUS_8_1_I_O3_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111010001000100")
port map (
combout => PIXOPBUS_8_1_I_O3_0(0),
dataa => PIXCORNERS_3(1),
datab => PIXCORNERS_BLOCK(3),
datac => PIXCORNERS_1(0),
datad => PIXOPBUS_4_1_I_A2_0(0));
\C1_PIXOPBUS_4_1_I_O3_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111100000100")
port map (
combout => PIXOPBUS_4_1_I_O3_0(0),
dataa => PIXCORNERS_3(1),
datab => PIXCORNERS_BLOCK(3),
datac => PIXCORNERS_3(0),
datad => PIXOPBUS_4_1_I_A2_0(0));
R1_UN19_FINALBLOCK_X_NE: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000000001001")
port map (
combout => UN19_FINALBLOCK_X_NE,
dataa => NN_3,
datab => FILLSTART_X(3),
datac => UN19_FINALBLOCK_X_0,
datad => UN19_FINALBLOCK_X_NE_0);
R1_UN16_FINALBLOCK_Y_NE: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000000001001")
port map (
combout => UN16_FINALBLOCK_Y_NE,
dataa => Y(3),
datab => FILLSTART_Y(3),
datac => UN16_FINALBLOCK_Y_0,
datad => UN16_FINALBLOCK_Y_NE_0);
R1_UN4_RCB_READY_NE: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111111110110")
port map (
combout => UN4_RCB_READY_NE,
dataa => CURRENTBLOCK_X(1),
datab => FINALBLOCK_X(1),
datac => UN4_RCB_READY_0_0_X2,
datad => UN4_RCB_READY_NE_0);
UN2_FINISH_1_Z630: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000100000000")
port map (
combout => UN2_FINISH_1,
dataa => FLUSH_COUNTDOWN(0),
datab => FLUSH_COUNTDOWN(1),
datac => FLUSH_COUNTDOWN(2),
datad => fsm_state_4_sqmuxa_x);
LASTFILL_0_SQMUXA_1_I_0_O2_1_Z631: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111110110111110")
port map (
combout => LASTFILL_0_SQMUXA_1_I_0_O2_1,
dataa => FINALBLOCK_Y(0),
datab => FINALBLOCK_X(0),
datac => CURRENTBLOCKX_S_4(0),
datad => CURRENTBLOCKY_S_3_ADD0);
R1_UN11_CURRENTBLOCKY_S_NE_0: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111101111011110")
port map (
combout => UN11_CURRENTBLOCKY_S_NE_0,
dataa => FINALBLOCK_Y(3),
datab => FINALBLOCK_Y(2),
datac => CURRENTBLOCK_Y_4_0(3),
datad => CURRENTBLOCK_Y_4_0(2));
R1_UN11_CURRENTBLOCKY_S_NE_1: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111101111011110")
port map (
combout => UN11_CURRENTBLOCKY_S_NE_1,
dataa => FINALBLOCK_Y(1),
datab => FINALBLOCK_Y(0),
datac => CURRENTBLOCK_Y_4_0(1),
datad => CURRENTBLOCK_Y_4_0(0));
\R1_CURRENTBLOCKX_S_4_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0101101011001100")
port map (
combout => CURRENTBLOCKX_S_4(3),
dataa => CURRENTBLOCK_X(3),
datab => STARTBLOCK_X(3),
datac => UN4_CURRENTBLOCKX_S_ANC2,
datad => UN4_RCB_READY_NE);
\R1_CURRENTBLOCK_X_4_0_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100101011001010")
port map (
combout => CURRENTBLOCK_X_4_0(2),
dataa => CURRENTBLOCKX_S(2),
datab => CURRENTBLOCKX_S_4(2),
datac => UN22_STORE_XY);
\C1_PIXOPBUS_14_1_I_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111110110011")
port map (
combout => PIXOPBUS_14_1_I(0),
dataa => PIXCORNERS_BLOCK(3),
datab => RCB_CMD(0),
datac => PIXOPBUS_12_1_I_O2(0),
datad => PIXOPBUS_2_1_I_O3(0));
\C1_PIXOPBUS_13_1_I_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111110110011")
port map (
combout => PIXOPBUS_13_1_I(1),
dataa => PIXCORNERS_BLOCK(3),
datab => RCB_CMD(1),
datac => PIXOPBUS_12_1_I_O2(0),
datad => PIXOPBUS_1_1_I_O3(0));
\C1_PIXOPBUS_13_1_I_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111110110011")
port map (
combout => PIXOPBUS_13_1_I(0),
dataa => PIXCORNERS_BLOCK(3),
datab => RCB_CMD(0),
datac => PIXOPBUS_12_1_I_O2(0),
datad => PIXOPBUS_1_1_I_O3(0));
\C1_PIXOPBUS_2_1_I_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111110110011")
port map (
combout => PIXOPBUS_2_1_I(1),
dataa => PIXCORNERS_BLOCK(1),
datab => RCB_CMD(1),
datac => PIXOPBUS_0_2_I_O2(0),
datad => PIXOPBUS_2_1_I_O3(0));
\C1_PIXOPBUS_2_1_I_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111110110011")
port map (
combout => PIXOPBUS_2_1_I(0),
dataa => PIXCORNERS_BLOCK(1),
datab => RCB_CMD(0),
datac => PIXOPBUS_0_2_I_O2(0),
datad => PIXOPBUS_2_1_I_O3(0));
\C1_PIXOPBUS_1_1_I_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111110110011")
port map (
combout => PIXOPBUS_1_1_I(1),
dataa => PIXCORNERS_BLOCK(1),
datab => RCB_CMD(1),
datac => PIXOPBUS_0_2_I_O2(0),
datad => PIXOPBUS_1_1_I_O3(0));
\C1_PIXOPBUS_1_1_I_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111110110011")
port map (
combout => PIXOPBUS_1_1_I(0),
dataa => PIXCORNERS_BLOCK(1),
datab => RCB_CMD(0),
datac => PIXOPBUS_0_2_I_O2(0),
datad => PIXOPBUS_1_1_I_O3(0));
\C1_PIXOPBUS_15_2_I_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111110110011")
port map (
combout => PIXOPBUS_15_2_I(1),
dataa => PIXCORNERS_BLOCK(3),
datab => RCB_CMD(1),
datac => PIXOPBUS_12_1_I_O2(0),
datad => PIXOPBUS_3_1_I_A3(0));
\C1_PIXOPBUS_15_2_I_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111110110011")
port map (
combout => PIXOPBUS_15_2_I(0),
dataa => PIXCORNERS_BLOCK(3),
datab => RCB_CMD(0),
datac => PIXOPBUS_12_1_I_O2(0),
datad => PIXOPBUS_3_1_I_A3(0));
\C1_PIXOPBUS_12_1_I_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111110110011")
port map (
combout => PIXOPBUS_12_1_I(1),
dataa => PIXCORNERS_BLOCK(3),
datab => RCB_CMD(1),
datac => PIXOPBUS_12_1_I_O2(0),
datad => PIXOPBUS_0_2_I_A3(0));
\C1_PIXOPBUS_12_1_I_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111110110011")
port map (
combout => PIXOPBUS_12_1_I(0),
dataa => PIXCORNERS_BLOCK(3),
datab => RCB_CMD(0),
datac => PIXOPBUS_12_1_I_O2(0),
datad => PIXOPBUS_0_2_I_A3(0));
\C1_PIXOPBUS_3_1_I_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111110110011")
port map (
combout => PIXOPBUS_3_1_I(1),
dataa => PIXCORNERS_BLOCK(1),
datab => RCB_CMD(1),
datac => PIXOPBUS_0_2_I_O2(0),
datad => PIXOPBUS_3_1_I_A3(0));
\C1_PIXOPBUS_3_1_I_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111110110011")
port map (
combout => PIXOPBUS_3_1_I(0),
dataa => PIXCORNERS_BLOCK(1),
datab => RCB_CMD(0),
datac => PIXOPBUS_0_2_I_O2(0),
datad => PIXOPBUS_3_1_I_A3(0));
\C1_PIXOPBUS_0_2_I_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111110110011")
port map (
combout => PIXOPBUS_0_2_I(1),
dataa => PIXCORNERS_BLOCK(1),
datab => RCB_CMD(1),
datac => PIXOPBUS_0_2_I_O2(0),
datad => PIXOPBUS_0_2_I_A3(0));
\C1_PIXOPBUS_0_2_I_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111110110011")
port map (
combout => PIXOPBUS_0_2_I(0),
dataa => PIXCORNERS_BLOCK(1),
datab => RCB_CMD(0),
datac => PIXOPBUS_0_2_I_O2(0),
datad => PIXOPBUS_0_2_I_A3(0));
C1_UN17_STORE_XY_NE_1: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111101111011110")
port map (
combout => UN17_STORE_XY_NE_1,
dataa => STORE_XY(7),
datab => STORE_XY(6),
datac => \STORE_XY_2_0_7__G3\,
datad => \STORE_XY_2_0_6__G3\);
C1_UN17_STORE_XY_NE_3: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111101111011110")
port map (
combout => UN17_STORE_XY_NE_3,
dataa => STORE_XY(3),
datab => STORE_XY(2),
datac => \STORE_XY_2_0_3__G3\,
datad => \STORE_XY_2_0_2__G3\);
\R1_FLUSH_COUNTDOWN_RNO_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010101011111110")
port map (
combout => \FLUSH_COUNTDOWN_6_0_0__G0_0\,
dataa => reset_c,
datab => FLUSH_COUNTDOWN(1),
datac => FLUSH_COUNTDOWN(2),
datad => FLUSH_COUNTDOWN(0));
LASTFILL_0_SQMUXA_1_I_0_O2_3_Z654: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111011011110110")
port map (
combout => LASTFILL_0_SQMUXA_1_I_0_O2_3,
dataa => FINALBLOCK_Y(1),
datab => CURRENTBLOCKY_S_3_ADD1,
datac => LASTFILL_0_SQMUXA_1_I_0_O2_1);
\R1_FLUSH_COUNTDOWN_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000011000010")
port map (
combout => FLUSH_COUNTDOWN_6_1_0_G0,
dataa => FLUSH_COUNTDOWN(2),
datab => FLUSH_COUNTDOWN(0),
datac => FLUSH_COUNTDOWN(1),
datad => \STORE_XY_2_0_0__G0_0\);
\R1_PIXCORNERS_BLOCK_RNO_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100010001001110")
port map (
combout => \PIXCORNERS_BLOCK_1_0_3__G2\,
dataa => RCB_STATE(1),
datab => PIXCORNERS_BLOCK(3),
datac => UN11_CURRENTBLOCKY_S_NE_0,
datad => UN11_CURRENTBLOCKY_S_NE_1);
\R1_CURRENTBLOCK_X_4_0_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100101011001010")
port map (
combout => CURRENTBLOCK_X_4_0(3),
dataa => CURRENTBLOCKX_S(3),
datab => CURRENTBLOCKX_S_4(3),
datac => UN22_STORE_XY);
\C1_PIXOPBUS_10_1_I_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111110111111101")
port map (
combout => PIXOPBUS_10_1_I(1),
dataa => RCB_CMD(1),
datab => PIXOPBUS_2_1_I_O3(0),
datac => PIXOPBUS_8_1_I_O3_0(0));
\C1_PIXOPBUS_10_1_I_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111110111111101")
port map (
combout => PIXOPBUS_10_1_I(0),
dataa => RCB_CMD(0),
datab => PIXOPBUS_2_1_I_O3(0),
datac => PIXOPBUS_8_1_I_O3_0(0));
\C1_PIXOPBUS_9_1_I_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111110111111101")
port map (
combout => PIXOPBUS_9_1_I(1),
dataa => RCB_CMD(1),
datab => PIXOPBUS_1_1_I_O3(0),
datac => PIXOPBUS_8_1_I_O3_0(0));
\C1_PIXOPBUS_9_1_I_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111110111111101")
port map (
combout => PIXOPBUS_9_1_I(0),
dataa => RCB_CMD(0),
datab => PIXOPBUS_1_1_I_O3(0),
datac => PIXOPBUS_8_1_I_O3_0(0));
\C1_PIXOPBUS_6_1_I_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111111111101")
port map (
combout => PIXOPBUS_6_1_I(1),
dataa => RCB_CMD(1),
datab => PIXOPBUS_4_1_I_A2(0),
datac => PIXOPBUS_4_1_I_A2_0(0),
datad => PIXOPBUS_2_1_I_O3(0));
\C1_PIXOPBUS_6_1_I_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111111111101")
port map (
combout => PIXOPBUS_6_1_I(0),
dataa => RCB_CMD(0),
datab => PIXOPBUS_4_1_I_A2(0),
datac => PIXOPBUS_4_1_I_A2_0(0),
datad => PIXOPBUS_2_1_I_O3(0));
\C1_PIXOPBUS_5_1_I_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111111111101")
port map (
combout => PIXOPBUS_5_1_I(1),
dataa => RCB_CMD(1),
datab => PIXOPBUS_4_1_I_A2(0),
datac => PIXOPBUS_4_1_I_A2_0(0),
datad => PIXOPBUS_1_1_I_O3(0));
\C1_PIXOPBUS_5_1_I_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111111111101")
port map (
combout => PIXOPBUS_5_1_I(0),
dataa => RCB_CMD(0),
datab => PIXOPBUS_4_1_I_A2(0),
datac => PIXOPBUS_4_1_I_A2_0(0),
datad => PIXOPBUS_1_1_I_O3(0));
\C1_PIXOPBUS_11_1_I_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111110111111101")
port map (
combout => PIXOPBUS_11_1_I(1),
dataa => RCB_CMD(1),
datab => PIXOPBUS_3_1_I_A3(0),
datac => PIXOPBUS_8_1_I_O3_0(0));
\C1_PIXOPBUS_11_1_I_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111110111111101")
port map (
combout => PIXOPBUS_11_1_I(0),
dataa => RCB_CMD(0),
datab => PIXOPBUS_3_1_I_A3(0),
datac => PIXOPBUS_8_1_I_O3_0(0));
\C1_PIXOPBUS_8_1_I_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111110111111101")
port map (
combout => PIXOPBUS_8_1_I(1),
dataa => RCB_CMD(1),
datab => PIXOPBUS_0_2_I_A3(0),
datac => PIXOPBUS_8_1_I_O3_0(0));
\C1_PIXOPBUS_8_1_I_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111110111111101")
port map (
combout => PIXOPBUS_8_1_I(0),
dataa => RCB_CMD(0),
datab => PIXOPBUS_0_2_I_A3(0),
datac => PIXOPBUS_8_1_I_O3_0(0));
\C1_PIXOPBUS_7_1_I_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111111111101")
port map (
combout => PIXOPBUS_7_1_I(1),
dataa => RCB_CMD(1),
datab => PIXOPBUS_4_1_I_A2(0),
datac => PIXOPBUS_4_1_I_A2_0(0),
datad => PIXOPBUS_3_1_I_A3(0));
\C1_PIXOPBUS_7_1_I_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111111111101")
port map (
combout => PIXOPBUS_7_1_I(0),
dataa => RCB_CMD(0),
datab => PIXOPBUS_4_1_I_A2(0),
datac => PIXOPBUS_4_1_I_A2_0(0),
datad => PIXOPBUS_3_1_I_A3(0));
\C1_PIXOPBUS_4_1_I_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111111111101")
port map (
combout => PIXOPBUS_4_1_I(1),
dataa => RCB_CMD(1),
datab => PIXOPBUS_4_1_I_A2(0),
datac => PIXOPBUS_0_2_I_A3(0),
datad => PIXOPBUS_4_1_I_A2_0(0));
\C1_PIXOPBUS_4_1_I_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111111111101")
port map (
combout => PIXOPBUS_4_1_I(0),
dataa => RCB_CMD(0),
datab => PIXOPBUS_4_1_I_A2(0),
datac => PIXOPBUS_0_2_I_A3(0),
datad => PIXOPBUS_4_1_I_A2_0(0));
\R1_FLUSH_COUNTDOWN_RNO_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110101011111111")
port map (
combout => \FLUSH_COUNTDOWN_6_0_2__G0\,
dataa => reset_c,
datab => FLUSH_COUNTDOWN(2),
datac => FLUSH_COUNTDOWN7LTO2_1,
datad => BUSWEN_0_SQMUXA_I);
\R1_FLUSH_COUNTDOWN_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111011110000")
port map (
combout => \FLUSH_COUNTDOWN_6_0_0__G0\,
dataa => RCB_STATE(1),
datab => RCB_STATE(3),
datac => \FLUSH_COUNTDOWN_6_0_0__G0_0\,
datad => UN22_STORE_XY);
C1_UN17_STORE_XY_NE_4: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111111110110")
port map (
combout => UN17_STORE_XY_NE_4,
dataa => STORE_XY(5),
datab => \STORE_XY_2_0_5__G3\,
datac => UN17_STORE_XY_4,
datad => UN17_STORE_XY_NE_1);
C1_UN17_STORE_XY_NE_5: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111111110110")
port map (
combout => UN17_STORE_XY_NE_5,
dataa => STORE_XY(1),
datab => \STORE_XY_2_0_1__G3\,
datac => UN17_STORE_XY_0,
datad => UN17_STORE_XY_NE_3);
LASTFILL_0_SQMUXA_1_I_0_O2_0_Z678: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111101111011110")
port map (
combout => LASTFILL_0_SQMUXA_1_I_0_O2_0,
dataa => FINALBLOCK_X(2),
datab => FINALBLOCK_X(1),
datac => CURRENTBLOCKX_S_4(2),
datad => CURRENTBLOCKX_S_4(1));
R1_UN12_CURRENTBLOCKX_S_NE_1: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111101111011110")
port map (
combout => UN12_CURRENTBLOCKX_S_NE_1,
dataa => STARTBLOCK_Y(1),
datab => STARTBLOCK_Y(0),
datac => CURRENTBLOCK_X_4_0(1),
datad => CURRENTBLOCK_X_4_0(0));
R1_UN13_CURRENTBLOCKX_S_NE_1: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111101111011110")
port map (
combout => UN13_CURRENTBLOCKX_S_NE_1,
dataa => FINALBLOCK_X(1),
datab => FINALBLOCK_X(0),
datac => CURRENTBLOCK_X_4_0(1),
datad => CURRENTBLOCK_X_4_0(0));
R1_UN11_CURRENTBLOCKX_S_NE_1: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111101111011110")
port map (
combout => UN11_CURRENTBLOCKX_S_NE_1,
dataa => STARTBLOCK_X(1),
datab => STARTBLOCK_X(0),
datac => CURRENTBLOCK_X_4_0(1),
datad => CURRENTBLOCK_X_4_0(0));
C1_UN17_STORE_XY_NE: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110111011101110")
port map (
combout => UN17_STORE_XY_NE_66,
dataa => UN17_STORE_XY_NE_5,
datab => UN17_STORE_XY_NE_4);
\R1_RCB_STATE_RNO_0_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110111011100000")
port map (
combout => \RCB_STATE_11_IV_0_0__G0_0_A4_0_0\,
dataa => opcode_1z,
datab => rcb_cmds2,
datac => rcb_cmd_0_0,
datad => rcb_cmd_0_1);
LASTFILL_0_SQMUXA_1_I_0_O2_5_Z684: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111111110110")
port map (
combout => LASTFILL_0_SQMUXA_1_I_0_O2_5,
dataa => FINALBLOCK_X(3),
datab => CURRENTBLOCKX_S_4(3),
datac => LASTFILL_0_SQMUXA_1_I_0_O2_0,
datad => LASTFILL_0_SQMUXA_1_I_0_O2_3);
R1_UN12_CURRENTBLOCKX_S_NE_0: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111101111011110")
port map (
combout => UN12_CURRENTBLOCKX_S_NE_0,
dataa => STARTBLOCK_Y(3),
datab => STARTBLOCK_Y(2),
datac => CURRENTBLOCK_X_4_0(3),
datad => CURRENTBLOCK_X_4_0(2));
R1_UN13_CURRENTBLOCKX_S_NE_0: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111101111011110")
port map (
combout => UN13_CURRENTBLOCKX_S_NE_0,
dataa => FINALBLOCK_X(3),
datab => FINALBLOCK_X(2),
datac => CURRENTBLOCK_X_4_0(3),
datad => CURRENTBLOCK_X_4_0(2));
R1_UN11_CURRENTBLOCKX_S_NE_0: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111101111011110")
port map (
combout => UN11_CURRENTBLOCKX_S_NE_0,
dataa => STARTBLOCK_X(3),
datab => STARTBLOCK_X(2),
datac => CURRENTBLOCK_X_4_0(3),
datad => CURRENTBLOCK_X_4_0(2));
C1_UN22_STORE_XY: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111111110001")
port map (
combout => UN22_STORE_XY,
dataa => UN17_STORE_XY_NE_4,
datab => UN17_STORE_XY_NE_5,
datac => UN2_IS_SAME_0_A5_67,
datad => \VADDR_1_0_0__G2\);
UN1_RESET_2_I_O2_3_Z689: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111101010111")
port map (
combout => UN1_RESET_2_I_O2_3,
dataa => RCB_READY25_65,
datab => UN17_STORE_XY_NE_4,
datac => UN17_STORE_XY_NE_5,
datad => UN2_IS_SAME_0_A5_67);
C1_UN17_STORE_XY_NE_RNICSPD1: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111110011111101")
port map (
combout => START_RMW_D1_I_0_O2,
dataa => RCB_STATE(4),
datab => START_RMW_D1_I_0_O2_0,
datac => UN2_IS_SAME_0_A5_67,
datad => UN17_STORE_XY_NE_66);
\R1_PIXCORNERS_BLOCK_RNO_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100010001001110")
port map (
combout => \PIXCORNERS_BLOCK_1_0_2__G2\,
dataa => RCB_STATE(1),
datab => PIXCORNERS_BLOCK(2),
datac => UN13_CURRENTBLOCKX_S_NE_0,
datad => UN13_CURRENTBLOCKX_S_NE_1);
\R1_PIXCORNERS_BLOCK_RNO_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100010001001110")
port map (
combout => \PIXCORNERS_BLOCK_1_0_1__G2\,
dataa => RCB_STATE(1),
datab => PIXCORNERS_BLOCK(1),
datac => UN12_CURRENTBLOCKX_S_NE_0,
datad => UN12_CURRENTBLOCKX_S_NE_1);
\R1_PIXCORNERS_BLOCK_RNO_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100010001001110")
port map (
combout => \PIXCORNERS_BLOCK_1_0_0__G2\,
dataa => RCB_STATE(1),
datab => PIXCORNERS_BLOCK(0),
datac => UN11_CURRENTBLOCKX_S_NE_0,
datad => UN11_CURRENTBLOCKX_S_NE_1);
\R1_PIXCORNERS_BLOCK_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110111011101110")
port map (
combout => \PIXCORNERS_BLOCK_1_0_1__G1\,
dataa => RCB_STATE_60,
datab => \PIXCORNERS_BLOCK_1_0_1__G2\);
\R1_PIXCORNERS_BLOCK_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110111011101110")
port map (
combout => \PIXCORNERS_BLOCK_1_0_0__G1\,
dataa => RCB_STATE_60,
datab => \PIXCORNERS_BLOCK_1_0_0__G2\);
UN1_RESET_2_I_A2_2_Z696: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000101000001110")
port map (
combout => UN1_RESET_2_I_A2_68,
dataa => RCB_STATE_59,
datab => \STATE_SRSTS_0_1__G1_69\,
datac => UN1_RESET_2_I_O2_3,
datad => START_RMW_D1_I_0_O2);
CURRENT_CMD_RCB_CMD_0_SQMUXA_I_0_O2: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111101111111011")
port map (
combout => RCB_CMD_0_SQMUXA_I_0_O2_70,
dataa => RCB_STATE_60,
datab => LASTFILL_64,
datac => UN1_RESET_2_I_A2_68);
RCB_STATE_2_SQMUXA_4_1_1_A_Z698: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0010001000100000")
port map (
combout => RCB_STATE_2_SQMUXA_4_1_1_A,
dataa => RCB_STATE(1),
datab => RCB_STATE_60,
datac => UN1_RESET_2_I_O2_3,
datad => DELAY_I);
RCB_STATE_2_SQMUXA_4_1_1_Z699: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0101010101000000")
port map (
combout => RCB_STATE_2_SQMUXA_4_1_1,
dataa => reset_c,
datab => LASTFILL_64,
datac => RCB_STATE_2_SQMUXA_4_1_1_A,
datad => UN1_RCB_STATE_6_1);
\R1_RCB_STATE_RNO_2_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100010001000000")
port map (
combout => \RCB_STATE_11_IV_0_0_3__G2\,
dataa => reset_c,
datab => RCB_STATE(3),
datac => RCB_STATE_60,
datad => UN1_RESET_2_I_A2_68);
UN1_RESET_2_I_O2_Z701: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111110011110100")
port map (
combout => UN1_RESET_2_I_O2,
dataa => LASTFILL_64,
datab => UN1_RESET_I_A3_X_71,
datac => UN1_RESET_I_A2_X_63,
datad => UN1_RESET_2_I_A2_68);
LASTFILL_0_SQMUXA_1_I_0_O2_Z702: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111111111110")
port map (
combout => LASTFILL_0_SQMUXA_1_I_0_O2,
dataa => RCB_STATE_60,
datab => LASTFILL_0_SQMUXA_1_I_0_O2_4,
datac => UN1_RESET_2_I_A2_68,
datad => LASTFILL_0_SQMUXA_1_I_0_O2_5);
DBB_DELAYCMD_Z703: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000111100001011")
port map (
combout => dbb_delaycmd,
dataa => RCB_STATE_60,
datab => LASTFILL_64,
datac => un1_fsm_state_2,
datad => UN1_RESET_2_I_A2_68);
\R1_RCB_STATE_RNO_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000110100000000")
port map (
combout => RCB_STATE_3_SQMUXA_4_0_G0,
dataa => opcode_0,
datab => opcode_1,
datac => rcb_cmds2,
datad => RCB_STATE_2_SQMUXA_4_1_1);
UN2_FINISH_2_Z705: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000001000000")
port map (
combout => UN2_FINISH_2,
dataa => RCB_STATE_60,
datab => LASTFILL_64,
datac => UN2_IS_SAME_0_A5_67,
datad => UN1_RESET_2_I_A2_68);
\R1_RCB_STATE_RNO_1_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111101000000")
port map (
combout => \RCB_STATE_11_IV_0_0_3__G0_0_0\,
dataa => LASTFILL_64,
datab => RCB_STATE(3),
datac => UN1_RESET_I_A3_X_71,
datad => \RCB_STATE_11_IV_0_0_3__G2\);
\R1_RCB_STATE_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000100000000")
port map (
combout => RCB_STATE_2_SQMUXA_4_0_G0,
dataa => un1_fsm_state_2,
datab => rcb_cmd_0_0,
datac => rcb_cmd_0_1,
datad => RCB_STATE_2_SQMUXA_4_1_1);
R1_LASTFILL_RNO: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1011100011111111")
port map (
combout => LASTFILL_1_0_G1,
dataa => LASTFILL_64,
datab => UN1_RESET_I_A3_X_71,
datac => LASTFILL_1_0_G2_0_X,
datad => LASTFILL_0_SQMUXA_1_I_0_O2);
UN2_FINISH_Z709: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100000000000000")
port map (
combout => un2_finish,
dataa => reset_c,
datab => UN2_FINISH_1,
datac => un1_fsm_state_2,
datad => UN2_FINISH_2);
\R1_RCB_STATE_RNO_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000001000000011")
port map (
combout => N_15_I_0_G0,
dataa => un1_fsm_state_2,
datab => UN1_RESET_2_I_O2,
datac => UN1_RESET_2_I_A2_0_X,
datad => UN1_RESET_2_I_O3_1_X);
\R1_RCB_STATE_RNO_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111010011110000")
port map (
combout => \RCB_STATE_11_IV_0_0_3__G0_0\,
dataa => un1_fsm_state_2,
datab => \RCB_STATE_11_IV_0_0__G0_0_A4_0_0\,
datac => \RCB_STATE_11_IV_0_0_3__G0_0_0\,
datad => RCB_STATE_2_SQMUXA_4_1_1);
CURRENT_CMD_RCB_CMD_0_SQMUXA_1_X: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0101000101010001")
port map (
combout => RCB_CMD_0_SQMUXA_1_X,
dataa => reset_c,
datab => RCB_CMD_0_SQMUXA_I_0_O2_70,
datac => UN1_RCB_STATE_6_1);
UN1_RESET_2_I_A2_0_X_Z713: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100000001000000")
port map (
combout => UN1_RESET_2_I_A2_0_X,
dataa => reset_c,
datab => RCB_STATE(3),
datac => UN1_RESET_2_I_A2_68);
R1_LASTFILL_RNO_1: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110101011101010")
port map (
combout => LASTFILL_1_0_G2_0_X,
dataa => reset_c,
datab => UN16_FINALBLOCK_Y_NE,
datac => UN19_FINALBLOCK_X_NE);
UN1_RESET_2_I_O3_1_X_Z715: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101110011011100")
port map (
combout => UN1_RESET_2_I_O3_1_X,
dataa => reset_c,
datab => UN1_RESET_I_A3_X_71,
datac => UN1_RCB_STATE_6_1);
R1_LASTFILL_RNO_0: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111011111110")
port map (
combout => LASTFILL_1_0_G0_E_X_I,
dataa => reset_c,
datab => RCB_STATE_60,
datac => RCB_STATE(1));
CURRENTBLOCKX_S_1_X_Z717: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100000001000000")
port map (
combout => CURRENTBLOCKX_S_1_X,
dataa => reset_c,
datab => RCB_STATE(1),
datac => UN22_STORE_XY);
\R1_RCB_STATE_RNI0QFG_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010101110101011")
port map (
combout => \FILLSTART_X_2_0_0__G0_I_0_X\,
dataa => reset_c,
datab => RCB_STATE(1),
datac => RCB_STATE(4));
UN1_RESET_I_X_Z719: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0101010001010100")
port map (
combout => UN1_RESET_I_X,
dataa => reset_c,
datab => RCB_STATE_60,
datac => RCB_STATE(1));
UN1_RESET_I_A3_X_Z720: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100010001000100")
port map (
combout => UN1_RESET_I_A3_X_71,
dataa => reset_c,
datab => RCB_STATE(1));
UN1_RESET_I_A2_X_Z721: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100010001000100")
port map (
combout => UN1_RESET_I_A2_X_63,
dataa => reset_c,
datab => RCB_STATE_60);
R1_UN19_FINALBLOCK_X_NE_RNIIHCD4: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000011100000111")
port map (
combout => \PIXCORNERS_0_0_0_0__G4\,
dataa => UN19_FINALBLOCK_X_NE,
datab => ALTB_0(1),
cin => LT3_COUT);
R1_UN16_FINALBLOCK_Y_NE_RNIS8BG4: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000011100000111")
port map (
combout => \PIXCORNERS_1_0_0_0__G4\,
dataa => UN16_FINALBLOCK_Y_NE,
datab => ALTB(1),
cin => LT3_COUT_0);
II_PIX_WORD_CACHE: pix_word_cache port map (
store_ram_0_1 => STORE_RAM_0(1),
store_ram_0_0 => STORE_RAM_0(0),
store_ram_1_1 => STORE_RAM_1(1),
store_ram_1_0 => STORE_RAM_1(0),
store_ram_2_1 => STORE_RAM_2(1),
store_ram_2_0 => STORE_RAM_2(0),
store_ram_3_1 => STORE_RAM_3(1),
store_ram_3_0 => STORE_RAM_3(0),
store_ram_4_1 => STORE_RAM_4(1),
store_ram_4_0 => STORE_RAM_4(0),
store_ram_5_1 => STORE_RAM_5(1),
store_ram_5_0 => STORE_RAM_5(0),
store_ram_6_1 => STORE_RAM_6(1),
store_ram_6_0 => STORE_RAM_6(0),
store_ram_7_1 => STORE_RAM_7(1),
store_ram_7_0 => STORE_RAM_7(0),
store_ram_8_1 => STORE_RAM_8(1),
store_ram_8_0 => STORE_RAM_8(0),
store_ram_9_1 => STORE_RAM_9(1),
store_ram_9_0 => STORE_RAM_9(0),
store_ram_10_1 => STORE_RAM_10(1),
store_ram_10_0 => STORE_RAM_10(0),
store_ram_11_1 => STORE_RAM_11(1),
store_ram_11_0 => STORE_RAM_11(0),
store_ram_12_1 => STORE_RAM_12(1),
store_ram_12_0 => STORE_RAM_12(0),
store_ram_13_1 => STORE_RAM_13(1),
store_ram_13_0 => STORE_RAM_13(0),
store_ram_14_1 => STORE_RAM_14(1),
store_ram_14_0 => STORE_RAM_14(0),
store_ram_15_1 => STORE_RAM_15(1),
store_ram_15_0 => STORE_RAM_15(0),
rcb_state_0 => RCB_STATE(1),
rcb_state_2 => RCB_STATE(3),
X_1 => X_1_62,
X_0 => NN_5,
Y_1 => Y_1_D0_61,
Y_0 => Y(0),
pixnum_0 => PIXNUM(1),
rcb_cmd_0 => RCB_CMD(0),
rcb_cmd_1 => RCB_CMD(1),
temp_ram_8_10_0_iv_0_0_a3_0 => temp_ram_8_10_0_iv_0_0_a3_0,
pixopbus_12_1_i_o3_0 => PIXOPBUS_12_1_I_O3(1),
pixopbus_2_1_i_o3_0 => PIXOPBUS_2_1_I_O3(0),
pixopbus_14_1_i_0 => PIXOPBUS_14_1_I(0),
pixopbus_12_1_i_1 => PIXOPBUS_12_1_I(1),
pixopbus_12_1_i_0 => PIXOPBUS_12_1_I(0),
pixopbus_3_1_i_a3_0 => PIXOPBUS_3_1_I_A3(0),
pixopbus_2_1_i_0 => PIXOPBUS_2_1_I(0),
pixopbus_2_1_i_1 => PIXOPBUS_2_1_I(1),
pixopbus_3_1_i_0 => PIXOPBUS_3_1_I(0),
pixopbus_3_1_i_1 => PIXOPBUS_3_1_I(1),
pixopbus_0_2_i_1 => PIXOPBUS_0_2_I(1),
pixopbus_0_2_i_0 => PIXOPBUS_0_2_I(0),
pixopbus_1_1_i_1 => PIXOPBUS_1_1_I(1),
pixopbus_1_1_i_0 => PIXOPBUS_1_1_I(0),
pixopbus_15_2_i_0 => PIXOPBUS_15_2_I(0),
pixopbus_15_2_i_1 => PIXOPBUS_15_2_I(1),
pixopbus_13_1_i_0 => PIXOPBUS_13_1_I(0),
pixopbus_13_1_i_1 => PIXOPBUS_13_1_I(1),
pixopbus_4_1_i_o3_0_0 => PIXOPBUS_4_1_I_O3_0(0),
pixopbus_0_2_i_a3_0 => PIXOPBUS_0_2_I_A3(0),
pixopbus_8_1_i_1 => PIXOPBUS_8_1_I(1),
pixopbus_8_1_i_0 => PIXOPBUS_8_1_I(0),
pixopbus_5_1_i_0 => PIXOPBUS_5_1_I(0),
pixopbus_5_1_i_1 => PIXOPBUS_5_1_I(1),
pixopbus_10_1_i_0 => PIXOPBUS_10_1_I(0),
pixopbus_10_1_i_1 => PIXOPBUS_10_1_I(1),
pixopbus_6_1_i_0 => PIXOPBUS_6_1_I(0),
pixopbus_6_1_i_1 => PIXOPBUS_6_1_I(1),
pixopbus_9_1_i_0 => PIXOPBUS_9_1_I(0),
pixopbus_9_1_i_1 => PIXOPBUS_9_1_I(1),
pixopbus_7_1_i_1 => PIXOPBUS_7_1_I(1),
pixopbus_7_1_i_0 => PIXOPBUS_7_1_I(0),
pixopbus_4_1_i_0 => PIXOPBUS_4_1_I(0),
pixopbus_4_1_i_1 => PIXOPBUS_4_1_I(1),
pixopbus_11_1_i_0 => PIXOPBUS_11_1_I(0),
pixopbus_11_1_i_1 => PIXOPBUS_11_1_I(1),
clk_c => clk_c,
\vaddr_1_0_0__g2\ => \VADDR_1_0_0__G2\,
reset_c => reset_c,
un22_store_xy => UN22_STORE_XY,
buswen_1_sqmuxa_0_a2_1 => BUSWEN_1_SQMUXA_0_A2_1,
rcb_ready25 => RCB_READY25_65,
\currentblocky_s_1_0_0__g2_1\ => \CURRENTBLOCKY_S_1_0_0__G2_1\,
G_1143 => G_1143,
un2_is_same_0_a5 => UN2_IS_SAME_0_A5_67,
currentblockx_s_1_x => CURRENTBLOCKX_S_1_X);
II_READ_MODIFY_WRITE: read_modify_write port map (
store_ram_15_1 => STORE_RAM_15(1),
store_ram_15_0 => STORE_RAM_15(0),
store_ram_14_1 => STORE_RAM_14(1),
store_ram_14_0 => STORE_RAM_14(0),
store_ram_13_1 => STORE_RAM_13(1),
store_ram_13_0 => STORE_RAM_13(0),
store_ram_12_1 => STORE_RAM_12(1),
store_ram_12_0 => STORE_RAM_12(0),
store_ram_11_1 => STORE_RAM_11(1),
store_ram_11_0 => STORE_RAM_11(0),
store_ram_10_1 => STORE_RAM_10(1),
store_ram_10_0 => STORE_RAM_10(0),
store_ram_9_1 => STORE_RAM_9(1),
store_ram_9_0 => STORE_RAM_9(0),
store_ram_8_1 => STORE_RAM_8(1),
store_ram_8_0 => STORE_RAM_8(0),
store_ram_7_1 => STORE_RAM_7(1),
store_ram_7_0 => STORE_RAM_7(0),
store_ram_6_1 => STORE_RAM_6(1),
store_ram_6_0 => STORE_RAM_6(0),
store_ram_5_1 => STORE_RAM_5(1),
store_ram_5_0 => STORE_RAM_5(0),
store_ram_4_1 => STORE_RAM_4(1),
store_ram_4_0 => STORE_RAM_4(0),
store_ram_3_1 => STORE_RAM_3(1),
store_ram_3_0 => STORE_RAM_3(0),
store_ram_2_1 => STORE_RAM_2(1),
store_ram_2_0 => STORE_RAM_2(0),
store_ram_1_1 => STORE_RAM_1(1),
store_ram_1_0 => STORE_RAM_1(0),
store_ram_0_1 => STORE_RAM_0(1),
store_ram_0_0 => STORE_RAM_0(0),
vaddr_7 => vaddr_7,
vaddr_6 => vaddr_6,
vaddr_5 => vaddr_5,
vaddr_4 => vaddr_4,
vaddr_3 => vaddr_3,
vaddr_2 => vaddr_2,
vaddr_1 => vaddr_1,
vaddr_0 => vaddr_0,
store_xy_7 => STORE_XY(7),
store_xy_6 => STORE_XY(6),
store_xy_5 => STORE_XY(5),
store_xy_4 => STORE_XY(4),
store_xy_3 => STORE_XY(3),
store_xy_2 => STORE_XY(2),
store_xy_1 => STORE_XY(1),
store_xy_0 => STORE_XY(0),
vdin_1_iv_0_m2_x_13 => vdin_1_iv_0_m2_x_13,
vdin_1_iv_0_m2_x_14 => vdin_1_iv_0_m2_x_14,
vdin_1_iv_0_m2_x_15 => vdin_1_iv_0_m2_x_15,
vdin_1_iv_0_m2_x_6 => vdin_1_iv_0_m2_x_6,
vdin_1_iv_0_m2_x_7 => vdin_1_iv_0_m2_x_7,
vdin_1_iv_0_m2_x_8 => vdin_1_iv_0_m2_x_8,
vdin_1_iv_0_m2_x_9 => vdin_1_iv_0_m2_x_9,
vdin_1_iv_0_m2_x_10 => vdin_1_iv_0_m2_x_10,
vdin_1_iv_0_m2_x_11 => vdin_1_iv_0_m2_x_11,
vdin_1_iv_0_m2_x_12 => vdin_1_iv_0_m2_x_12,
vdin_1_iv_0_m2_x_0 => vdin_1_iv_0_m2_x_0,
vdin_1_iv_0_m2_x_1 => vdin_1_iv_0_m2_x_1,
vdin_1_iv_0_m2_x_2 => vdin_1_iv_0_m2_x_2,
vdin_1_iv_0_m2_x_3 => vdin_1_iv_0_m2_x_3,
vdin_1_iv_0_m2_x_4 => vdin_1_iv_0_m2_x_4,
vdin_1_iv_0_m2_x_5 => vdin_1_iv_0_m2_x_5,
vdout_c_13 => vdout_c_13,
vdout_c_14 => vdout_c_14,
vdout_c_15 => vdout_c_15,
vdout_c_6 => vdout_c_6,
vdout_c_7 => vdout_c_7,
vdout_c_8 => vdout_c_8,
vdout_c_9 => vdout_c_9,
vdout_c_10 => vdout_c_10,
vdout_c_11 => vdout_c_11,
vdout_c_12 => vdout_c_12,
vdout_c_0 => vdout_c_0,
vdout_c_1 => vdout_c_1,
vdout_c_2 => vdout_c_2,
vdout_c_3 => vdout_c_3,
vdout_c_4 => vdout_c_4,
vdout_c_5 => vdout_c_5,
clk_c => clk_c,
\vaddr_1_0_0__g2\ => \VADDR_1_0_0__G2\,
state_s1_0_a3 => state_s1_0_a3,
\state_srsts_0_1__g1\ => \STATE_SRSTS_0_1__G1_69\,
delay_i => DELAY_I,
start_rmw_d1_i_0_o2 => START_RMW_D1_I_0_O2,
reset_c => reset_c);
GND <= '0';
VCC <= '1';
LT3_0_I <= not LT3_0;
LT3_I <= not LT3;
\PIXCORNERS_0_0_0_0__G4_I\ <= not \PIXCORNERS_0_0_0_0__G4\;
\PIXCORNERS_1_0_0_0__G4_I\ <= not \PIXCORNERS_1_0_0_0__G4\;
RCB_STATE_2_I <= not RCB_STATE_60;
RESET_C_I <= not reset_c;
G_8_I <= not G_8;
rcb_state_0 <= RCB_STATE_59;
rcb_state_2 <= RCB_STATE_60;
Y_1_d0 <= Y_1_D0_61;
X_1_1 <= X_1_62;
un1_reset_i_a2_x <= UN1_RESET_I_A2_X_63;
lastfill <= LASTFILL_64;
rcb_ready25 <= RCB_READY25_65;
un17_store_xy_NE <= UN17_STORE_XY_NE_66;
un2_is_same_0_a5 <= UN2_IS_SAME_0_A5_67;
un1_reset_2_i_a2_2 <= UN1_RESET_2_I_A2_68;
\state_srsts_0_1__g1\ <= \STATE_SRSTS_0_1__G1_69\;
rcb_cmd_0_sqmuxa_i_0_o2 <= RCB_CMD_0_SQMUXA_I_0_O2_70;
un1_reset_i_a3_x <= UN1_RESET_I_A3_X_71;
end beh;

--
library ieee, cycloneii;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library synplify;
use synplify.components.all;
use cycloneii.cycloneii_components.all;

entity db is
port(
DAO_state_1 :  out std_logic;
DAO_state_0 :  out std_logic;
opcode_0 :  out std_logic;
opcode_1 :  out std_logic;
X_0 :  out std_logic;
X_1 :  out std_logic;
X_2 :  out std_logic;
X_3 :  out std_logic;
X_4 :  out std_logic;
X_5 :  out std_logic;
Y_1_0 :  out std_logic;
Y_1_1 :  out std_logic;
Y_1_2 :  out std_logic;
Y_1_3 :  out std_logic;
Y_1_4 :  out std_logic;
Y_1_5 :  out std_logic;
X_0_5 :  out std_logic;
X_0_1 :  out std_logic;
X_0_4 :  out std_logic;
X_0_3 :  out std_logic;
X_0_2 :  out std_logic;
X_0_0 :  out std_logic;
rcb_state_0 :  in std_logic;
rcb_state_2 :  in std_logic;
rcb_cmd_1 :  out std_logic;
rcb_cmd_0 :  out std_logic;
hdb_c_8 :  in std_logic;
hdb_c_9 :  in std_logic;
hdb_c_10 :  in std_logic;
hdb_c_11 :  in std_logic;
hdb_c_12 :  in std_logic;
hdb_c_13 :  in std_logic;
hdb_c_2 :  in std_logic;
hdb_c_3 :  in std_logic;
hdb_c_4 :  in std_logic;
hdb_c_5 :  in std_logic;
hdb_c_6 :  in std_logic;
hdb_c_7 :  in std_logic;
hdb_c_14 :  in std_logic;
hdb_c_15 :  in std_logic;
hdb_c_1 :  in std_logic;
hdb_c_0 :  in std_logic;
Y_2_1 :  out std_logic;
Y_2_5 :  out std_logic;
Y_2_4 :  out std_logic;
Y_2_3 :  out std_logic;
Y_2_2 :  out std_logic;
Y_2_0 :  out std_logic;
Y_0 :  in std_logic;
X_1_0 :  in std_logic;
temp_ram_8_10_0_iv_0_0_a3_0 :  in std_logic;
opcode_1z :  out std_logic;
clk_c :  in std_logic;
un1_reset_combout :  in std_logic;
reset_c :  in std_logic;
lt5 :  out std_logic;
dbb_delaycmd :  in std_logic;
G_8 :  out std_logic;
un1_fsm_state_2 :  out std_logic;
fsm_state_1_sqmuxa_2_1 :  out std_logic;
dav_c :  in std_logic;
lastfill :  in std_logic;
\state_srsts_0_1__g1\ :  in std_logic;
rcb_cmds2 :  out std_logic;
un1_reset_1 :  out std_logic;
rcb_ready25 :  in std_logic;
un2_is_same_0_a5 :  in std_logic;
un17_store_xy_NE :  in std_logic;
hdb_busy_signal :  out std_logic;
un1_reset_a :  out std_logic;
rcb_cmd_0_sqmuxa_i_0_o2 :  in std_logic;
fsm_state_4_sqmuxa_x :  out std_logic;
muxed_swapxy_combout :  in std_logic;
saved_swapxy :  out std_logic;
G_1143 :  out std_logic);
end db;

architecture beh of db is
signal devclrn : std_logic := '1';
signal devpor : std_logic := '1';
signal devoe : std_logic := '0';
signal FSM_STATE : std_logic_vector(4 downto 0);
signal Y_CURRENT : std_logic_vector(5 downto 0);
signal X_CURRENT : std_logic_vector(5 downto 0);
signal PEN : std_logic_vector(1 downto 0);
signal CLEARSCREEN_STATE : std_logic_vector(0 to 0);
signal X : std_logic_vector(5 downto 0);
signal Y : std_logic_vector(5 downto 0);
signal INF_ABS0 : std_logic_vector(5 downto 1);
signal INF_ABS1 : std_logic_vector(5 downto 1);
signal \FSM_STATE_13_0_0__G3\ : std_logic ;
signal \FSM_STATE_13_0_0__G0_E_I\ : std_logic ;
signal \FSM_STATE_13_0_1__G3\ : std_logic ;
signal FSM_STATE_0_SQMUXA_6_0_G0 : std_logic ;
signal \FSM_STATE_13_IV_0_0_3__G0_0\ : std_logic ;
signal \Y_CURRENT_2_0_5__G2\ : std_logic ;
signal \Y_CURRENT_2_0_4__G2\ : std_logic ;
signal \Y_CURRENT_2_0_3__G2\ : std_logic ;
signal \Y_CURRENT_2_0_2__G2\ : std_logic ;
signal \Y_CURRENT_2_0_1__G2\ : std_logic ;
signal \Y_CURRENT_2_0_0__G2\ : std_logic ;
signal \X_CURRENT_2_0_5__G2\ : std_logic ;
signal \X_CURRENT_2_0_4__G2\ : std_logic ;
signal \X_CURRENT_2_0_3__G2\ : std_logic ;
signal \X_CURRENT_2_0_2__G2\ : std_logic ;
signal \X_CURRENT_2_0_1__G2\ : std_logic ;
signal \X_CURRENT_2_0_0__G2\ : std_logic ;
signal \PEN_0_0_0__G0_0\ : std_logic ;
signal \PEN_0_0_1__G3_X\ : std_logic ;
signal \CLEARSCREEN_STATE_1_0_0__G3\ : std_logic ;
signal \CLEARSCREEN_STATE_1_0_0__G0_0_X\ : std_logic ;
signal \FSM_STATE_13_0_0__G3_1_X\ : std_logic ;
signal \FSM_STATE_13_0_1__G3_1_X\ : std_logic ;
signal \DAO_STATE_SRSTS_0_1__G3\ : std_logic ;
signal \DAO_STATE_SRSTS_0_0__G0_0_X\ : std_logic ;
signal DAO_STATE_S0_0_A3 : std_logic ;
signal LT_0 : std_logic ;
signal RESULT_1_1_ADD0 : std_logic ;
signal RESULT_1_ADD0 : std_logic ;
signal LT_1 : std_logic ;
signal LT_2 : std_logic ;
signal LT_3 : std_logic ;
signal LT_4 : std_logic ;
signal LT5_18 : std_logic ;
signal LT_0_0 : std_logic ;
signal LT_1_0 : std_logic ;
signal LT_2_0 : std_logic ;
signal LT_3_0 : std_logic ;
signal LT_4_0 : std_logic ;
signal LT5_0 : std_logic ;
signal LT5_COUT : std_logic ;
signal LT_0_1 : std_logic ;
signal LT_1_1 : std_logic ;
signal LT_2_1 : std_logic ;
signal LT_3_1 : std_logic ;
signal LT_4_1 : std_logic ;
signal LT5_1 : std_logic ;
signal LT5_COUT_0 : std_logic ;
signal RESULT_1_CARRY_0 : std_logic ;
signal RESULT_1_ADD0_START_COUT : std_logic ;
signal RESULT_1_ADD1 : std_logic ;
signal RESULT_1_CARRY_1 : std_logic ;
signal RESULT_1_ADD2 : std_logic ;
signal RESULT_1_CARRY_2 : std_logic ;
signal RESULT_1_ADD3 : std_logic ;
signal RESULT_1_CARRY_3 : std_logic ;
signal RESULT_1_ADD4 : std_logic ;
signal RESULT_1_CARRY_4 : std_logic ;
signal RESULT_1_ADD5 : std_logic ;
signal RESULT_1_ADD5_COUT : std_logic ;
signal RESULT_1_1_CARRY_0 : std_logic ;
signal RESULT_1_1_ADD0_START_COUT : std_logic ;
signal RESULT_1_1_ADD1 : std_logic ;
signal RESULT_1_1_CARRY_1 : std_logic ;
signal RESULT_1_1_ADD2 : std_logic ;
signal RESULT_1_1_CARRY_2 : std_logic ;
signal RESULT_1_1_ADD3 : std_logic ;
signal RESULT_1_1_CARRY_3 : std_logic ;
signal RESULT_1_1_ADD4 : std_logic ;
signal RESULT_1_1_CARRY_4 : std_logic ;
signal RESULT_1_1_ADD5 : std_logic ;
signal RESULT_1_1_ADD5_COUT : std_logic ;
signal INF_ABS0_A_0_ANC1 : std_logic ;
signal INF_ABS1_A_1_ANC1 : std_logic ;
signal XYENABLE_REG_0_SQMUXA_1 : std_logic ;
signal XYENABLE_REG_0_SQMUXA_0 : std_logic ;
signal INF_ABS0_A_0_ANC3_0 : std_logic ;
signal RESULT_1_1_CARRY_5 : std_logic ;
signal RESULT_1_CARRY_5 : std_logic ;
signal G_9 : std_logic ;
signal UN1_FSM_STATE_19 : std_logic ;
signal FSM_STATE_1_SQMUXA_2_20 : std_logic ;
signal INF_ABS1_A_1_ANC3 : std_logic ;
signal RCB_CMDS2_0 : std_logic ;
signal UN1_FSM_STATE_0_SQMUXA_3_TZ_0 : std_logic ;
signal NN_1 : std_logic ;
signal NN_2 : std_logic ;
signal NN_3 : std_logic ;
signal NN_4 : std_logic ;
signal NN_5 : std_logic ;
signal NN_6 : std_logic ;
signal \FSM_STATE_13_IV_0_0_3__G1_3_1\ : std_logic ;
signal INF_ABS0_A_0_ANC4 : std_logic ;
signal DB_DISABLE_A0 : std_logic ;
signal RCB_CMDS2_21 : std_logic ;
signal XYENABLE_REG_0_SQMUXA_0_0 : std_logic ;
signal HDB_BUSY_SIGNAL_0 : std_logic ;
signal FSM_STATE_0_SQMUXA_6_0_G0_0_0 : std_logic ;
signal UN1_RESET_22 : std_logic ;
signal UN16_FSM_STATE_0 : std_logic ;
signal UN16_FSM_STATE_1 : std_logic ;
signal UN16_FSM_STATE_2 : std_logic ;
signal UN16_FSM_STATE_3 : std_logic ;
signal UN16_FSM_STATE_4 : std_logic ;
signal UN16_FSM_STATE_5 : std_logic ;
signal DB_DISABLE_0_1 : std_logic ;
signal \FSM_STATE_13_IV_0_0_3__G1_3\ : std_logic ;
signal DB_DISABLE_0_2 : std_logic ;
signal UN16_FSM_STATE_A : std_logic ;
signal UN16_FSM_STATE : std_logic ;
signal UN1_DB_DONE : std_logic ;
signal UN5_X1_I_O3 : std_logic ;
signal DB_DISABLE_0_3 : std_logic ;
signal FSM_STATE_1_SQMUXA_1_1 : std_logic ;
signal DB_DISABLE_0 : std_logic ;
signal HDB_BUSY_SIGNAL_23 : std_logic ;
signal \FSM_STATE_13_IV_0_0_3__G0_0_A4_2\ : std_logic ;
signal UN1_RESET_A_24 : std_logic ;
signal UN1_RESET : std_logic ;
signal \FSM_STATE_13_IV_0_0_3__G0_0_A4_0_X\ : std_logic ;
signal VCC : std_logic ;
signal N_177 : std_logic ;
signal N_176 : std_logic ;
signal N_175 : std_logic ;
signal GND : std_logic ;
signal DAO_STATE_14 : std_logic ;
signal DAO_STATE_15 : std_logic ;
signal OPCODE_16 : std_logic ;
signal OPCODE_17 : std_logic ;
component draw_any_octant
port(
Y_current_0 :  in std_logic;
Y_current_4 :  in std_logic;
Y_current_3 :  in std_logic;
Y_current_2 :  in std_logic;
Y_current_1 :  in std_logic;
Y_current_5 :  in std_logic;
DAO_state_0 :  in std_logic;
DAO_state_1 :  in std_logic;
X_current_5 :  in std_logic;
X_current_2 :  in std_logic;
X_current_1 :  in std_logic;
X_current_0 :  in std_logic;
X_current_3 :  in std_logic;
X_current_4 :  in std_logic;
y_1z_5 :  out std_logic;
y_1z_1 :  out std_logic;
y_1z_0 :  out std_logic;
y_1z_2 :  out std_logic;
y_1z_3 :  out std_logic;
y_1z_4 :  out std_logic;
Y_2_1 :  out std_logic;
Y_2_5 :  out std_logic;
Y_2_4 :  out std_logic;
Y_2_3 :  out std_logic;
Y_2_2 :  out std_logic;
Y_2_0 :  out std_logic;
Y_0 :  in std_logic;
X_0 :  in std_logic;
temp_ram_8_10_0_iv_0_0_a3_0 :  in std_logic;
clk_c :  in std_logic;
db_disable_0 :  in std_logic;
muxed_swapxy_combout :  in std_logic;
lt5 :  in std_logic;
DAO_state_s0_0_a3 :  in std_logic;
lt5_0 :  in std_logic;
saved_swapxy :  out std_logic;
lt5_1 :  in std_logic;
G_9 :  in std_logic;
lt5_cout :  in std_logic;
lt5_cout_0 :  in std_logic;
G_1143 :  out std_logic;
rcb_ready25 :  in std_logic;
un5_x1_i_o3 :  out std_logic  );
end component;
begin
\FSM_TRANSITION_R_FSM_STATE_0_\: cycloneii_lcell_ff port map (
regout => FSM_STATE(0),
datain => \FSM_STATE_13_0_0__G3\,
clk => clk_c,
ena => \FSM_STATE_13_0_0__G0_E_I\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\FSM_TRANSITION_R_FSM_STATE_1_\: cycloneii_lcell_ff port map (
regout => FSM_STATE(1),
datain => \FSM_STATE_13_0_1__G3\,
clk => clk_c,
ena => \FSM_STATE_13_0_0__G0_E_I\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND);
\FSM_TRANSITION_R_FSM_STATE_2_\: cycloneii_lcell_ff port map (
regout => FSM_STATE(2),
datain => FSM_STATE_0_SQMUXA_6_0_G0,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\FSM_TRANSITION_R_FSM_STATE_3_\: cycloneii_lcell_ff port map (
regout => FSM_STATE(3),
datain => \FSM_STATE_13_IV_0_0_3__G0_0\,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\FSM_TRANSITION_R_FSM_STATE_4_\: cycloneii_lcell_ff port map (
regout => FSM_STATE(4),
datain => un1_reset_combout,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\XY_REG_R_Y_CURRENT_5_\: cycloneii_lcell_ff port map (
regout => Y_CURRENT(5),
datain => \Y_CURRENT_2_0_5__G2\,
clk => clk_c,
sclr => reset_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\XY_REG_R_Y_CURRENT_4_\: cycloneii_lcell_ff port map (
regout => Y_CURRENT(4),
datain => \Y_CURRENT_2_0_4__G2\,
clk => clk_c,
sclr => reset_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\XY_REG_R_Y_CURRENT_3_\: cycloneii_lcell_ff port map (
regout => Y_CURRENT(3),
datain => \Y_CURRENT_2_0_3__G2\,
clk => clk_c,
sclr => reset_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\XY_REG_R_Y_CURRENT_2_\: cycloneii_lcell_ff port map (
regout => Y_CURRENT(2),
datain => \Y_CURRENT_2_0_2__G2\,
clk => clk_c,
sclr => reset_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\XY_REG_R_Y_CURRENT_1_\: cycloneii_lcell_ff port map (
regout => Y_CURRENT(1),
datain => \Y_CURRENT_2_0_1__G2\,
clk => clk_c,
sclr => reset_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\XY_REG_R_Y_CURRENT_0_\: cycloneii_lcell_ff port map (
regout => Y_CURRENT(0),
datain => \Y_CURRENT_2_0_0__G2\,
clk => clk_c,
sclr => reset_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\XY_REG_R_X_CURRENT_5_\: cycloneii_lcell_ff port map (
regout => X_CURRENT(5),
datain => \X_CURRENT_2_0_5__G2\,
clk => clk_c,
sclr => reset_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\XY_REG_R_X_CURRENT_4_\: cycloneii_lcell_ff port map (
regout => X_CURRENT(4),
datain => \X_CURRENT_2_0_4__G2\,
clk => clk_c,
sclr => reset_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\XY_REG_R_X_CURRENT_3_\: cycloneii_lcell_ff port map (
regout => X_CURRENT(3),
datain => \X_CURRENT_2_0_3__G2\,
clk => clk_c,
sclr => reset_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\XY_REG_R_X_CURRENT_2_\: cycloneii_lcell_ff port map (
regout => X_CURRENT(2),
datain => \X_CURRENT_2_0_2__G2\,
clk => clk_c,
sclr => reset_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\XY_REG_R_X_CURRENT_1_\: cycloneii_lcell_ff port map (
regout => X_CURRENT(1),
datain => \X_CURRENT_2_0_1__G2\,
clk => clk_c,
sclr => reset_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\XY_REG_R_X_CURRENT_0_\: cycloneii_lcell_ff port map (
regout => X_CURRENT(0),
datain => \X_CURRENT_2_0_0__G2\,
clk => clk_c,
sclr => reset_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\HOST_SIGNAL_R_HOST_SIGNAL_PEN_0_\: cycloneii_lcell_ff port map (
regout => PEN(0),
datain => \PEN_0_0_0__G0_0\,
clk => clk_c,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sclr => GND,
	sload => GND,
	sdata => GND,
	ena => VCC);
\HOST_SIGNAL_R_HOST_SIGNAL_PEN_1_\: cycloneii_lcell_ff port map (
regout => PEN(1),
datain => \PEN_0_0_1__G3_X\,
clk => clk_c,
sclr => reset_c,
ena => \FSM_STATE_13_0_0__G0_E_I\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\FSM_TRANSITION_R_CLEARSCREEN_STATE_0_\: cycloneii_lcell_ff port map (
regout => CLEARSCREEN_STATE(0),
datain => \CLEARSCREEN_STATE_1_0_0__G3\,
clk => clk_c,
sclr => reset_c,
ena => \CLEARSCREEN_STATE_1_0_0__G0_0_X\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\HOST_SIGNAL_R_HOST_SIGNAL_OPCODE_0_\: cycloneii_lcell_ff port map (
regout => OPCODE_16,
datain => \FSM_STATE_13_0_0__G3_1_X\,
clk => clk_c,
sclr => reset_c,
ena => \FSM_STATE_13_0_0__G0_E_I\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\HOST_SIGNAL_R_HOST_SIGNAL_OPCODE_1_\: cycloneii_lcell_ff port map (
regout => OPCODE_17,
datain => \FSM_STATE_13_0_1__G3_1_X\,
clk => clk_c,
sclr => reset_c,
ena => \FSM_STATE_13_0_0__G0_E_I\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\HOST_SIGNAL_R_HOST_SIGNAL_X_0_\: cycloneii_lcell_ff port map (
regout => X(0),
datain => hdb_c_8,
clk => clk_c,
sclr => reset_c,
ena => \FSM_STATE_13_0_0__G0_E_I\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\HOST_SIGNAL_R_HOST_SIGNAL_X_1_\: cycloneii_lcell_ff port map (
regout => X(1),
datain => hdb_c_9,
clk => clk_c,
sclr => reset_c,
ena => \FSM_STATE_13_0_0__G0_E_I\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\HOST_SIGNAL_R_HOST_SIGNAL_X_2_\: cycloneii_lcell_ff port map (
regout => X(2),
datain => hdb_c_10,
clk => clk_c,
sclr => reset_c,
ena => \FSM_STATE_13_0_0__G0_E_I\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\HOST_SIGNAL_R_HOST_SIGNAL_X_3_\: cycloneii_lcell_ff port map (
regout => X(3),
datain => hdb_c_11,
clk => clk_c,
sclr => reset_c,
ena => \FSM_STATE_13_0_0__G0_E_I\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\HOST_SIGNAL_R_HOST_SIGNAL_X_4_\: cycloneii_lcell_ff port map (
regout => X(4),
datain => hdb_c_12,
clk => clk_c,
sclr => reset_c,
ena => \FSM_STATE_13_0_0__G0_E_I\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\HOST_SIGNAL_R_HOST_SIGNAL_X_5_\: cycloneii_lcell_ff port map (
regout => X(5),
datain => hdb_c_13,
clk => clk_c,
sclr => reset_c,
ena => \FSM_STATE_13_0_0__G0_E_I\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\HOST_SIGNAL_R_HOST_SIGNAL_Y_0_\: cycloneii_lcell_ff port map (
regout => Y(0),
datain => hdb_c_2,
clk => clk_c,
sclr => reset_c,
ena => \FSM_STATE_13_0_0__G0_E_I\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\HOST_SIGNAL_R_HOST_SIGNAL_Y_1_\: cycloneii_lcell_ff port map (
regout => Y(1),
datain => hdb_c_3,
clk => clk_c,
sclr => reset_c,
ena => \FSM_STATE_13_0_0__G0_E_I\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\HOST_SIGNAL_R_HOST_SIGNAL_Y_2_\: cycloneii_lcell_ff port map (
regout => Y(2),
datain => hdb_c_4,
clk => clk_c,
sclr => reset_c,
ena => \FSM_STATE_13_0_0__G0_E_I\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\HOST_SIGNAL_R_HOST_SIGNAL_Y_3_\: cycloneii_lcell_ff port map (
regout => Y(3),
datain => hdb_c_5,
clk => clk_c,
sclr => reset_c,
ena => \FSM_STATE_13_0_0__G0_E_I\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\HOST_SIGNAL_R_HOST_SIGNAL_Y_4_\: cycloneii_lcell_ff port map (
regout => Y(4),
datain => hdb_c_6,
clk => clk_c,
sclr => reset_c,
ena => \FSM_STATE_13_0_0__G0_E_I\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\HOST_SIGNAL_R_HOST_SIGNAL_Y_5_\: cycloneii_lcell_ff port map (
regout => Y(5),
datain => hdb_c_7,
clk => clk_c,
sclr => reset_c,
ena => \FSM_STATE_13_0_0__G0_E_I\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\DAO_STATE_1_\: cycloneii_lcell_ff port map (
regout => DAO_STATE_14,
datain => \DAO_STATE_SRSTS_0_1__G3\,
clk => clk_c,
sclr => reset_c,
ena => \DAO_STATE_SRSTS_0_0__G0_0_X\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
\DAO_STATE_0_\: cycloneii_lcell_ff port map (
regout => DAO_STATE_15,
datain => DAO_STATE_S0_0_A3,
clk => clk_c,
sclr => reset_c,
ena => \DAO_STATE_SRSTS_0_0__G0_0_X\,
	devpor => devpor,
	devclrn => devclrn,
	aclr => GND,
	sload => GND,
	sdata => GND);
LINE_INTERFACE_C_DB_SWAPXY2_LT0: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000001000100")
port map (
cout => LT_0,
dataa => RESULT_1_1_ADD0,
datab => RESULT_1_ADD0);
LINE_INTERFACE_C_DB_SWAPXY2_LT1: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000011010100")
port map (
cout => LT_1,
dataa => INF_ABS0(1),
datab => INF_ABS1(1),
cin => LT_0);
LINE_INTERFACE_C_DB_SWAPXY2_LT2: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000011010100")
port map (
cout => LT_2,
dataa => INF_ABS0(2),
datab => INF_ABS1(2),
cin => LT_1);
LINE_INTERFACE_C_DB_SWAPXY2_LT3: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000011010100")
port map (
cout => LT_3,
dataa => INF_ABS0(3),
datab => INF_ABS1(3),
cin => LT_2);
LINE_INTERFACE_C_DB_SWAPXY2_LT4: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000011010100")
port map (
cout => LT_4,
dataa => INF_ABS0(4),
datab => INF_ABS1(4),
cin => LT_3);
LINE_INTERFACE_C_DB_SWAPXY2_LT5: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1101010011010100")
port map (
combout => LT5_18,
dataa => INF_ABS0(5),
datab => INF_ABS1(5),
cin => LT_4);
LINE_INTERFACE_C_DB_NEGX2_LT0: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000001000100")
port map (
cout => LT_0_0,
dataa => X(0),
datab => X_CURRENT(0));
LINE_INTERFACE_C_DB_NEGX2_LT1: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000011010100")
port map (
cout => LT_1_0,
dataa => X(1),
datab => X_CURRENT(1),
cin => LT_0_0);
LINE_INTERFACE_C_DB_NEGX2_LT2: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000011010100")
port map (
cout => LT_2_0,
dataa => X(2),
datab => X_CURRENT(2),
cin => LT_1_0);
LINE_INTERFACE_C_DB_NEGX2_LT3: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000011010100")
port map (
cout => LT_3_0,
dataa => X(3),
datab => X_CURRENT(3),
cin => LT_2_0);
LINE_INTERFACE_C_DB_NEGX2_LT4: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000011010100")
port map (
cout => LT_4_0,
dataa => X(4),
datab => X_CURRENT(4),
cin => LT_3_0);
LINE_INTERFACE_C_DB_NEGX2_LT5: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1101010011010100")
port map (
combout => LT5_0,
cout => LT5_COUT,
dataa => X(5),
datab => X_CURRENT(5),
cin => LT_4_0);
LINE_INTERFACE_C_DB_NEGY2_LT0: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000001000100")
port map (
cout => LT_0_1,
dataa => Y(0),
datab => Y_CURRENT(0));
LINE_INTERFACE_C_DB_NEGY2_LT1: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000011010100")
port map (
cout => LT_1_1,
dataa => Y(1),
datab => Y_CURRENT(1),
cin => LT_0_1);
LINE_INTERFACE_C_DB_NEGY2_LT2: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000011010100")
port map (
cout => LT_2_1,
dataa => Y(2),
datab => Y_CURRENT(2),
cin => LT_1_1);
LINE_INTERFACE_C_DB_NEGY2_LT3: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000011010100")
port map (
cout => LT_3_1,
dataa => Y(3),
datab => Y_CURRENT(3),
cin => LT_2_1);
LINE_INTERFACE_C_DB_NEGY2_LT4: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000011010100")
port map (
cout => LT_4_1,
dataa => Y(4),
datab => Y_CURRENT(4),
cin => LT_3_1);
LINE_INTERFACE_C_DB_NEGY2_LT5: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1101010011010100")
port map (
combout => LT5_1,
cout => LT5_COUT_0,
dataa => Y(5),
datab => Y_CURRENT(5),
cin => LT_4_1);
LINE_INTERFACE_C_DIFF_RESULT_1_ADD0: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => RESULT_1_ADD0,
cout => RESULT_1_CARRY_0,
dataa => Y(0),
datab => Y_CURRENT(0),
cin => RESULT_1_ADD0_START_COUT);
LINE_INTERFACE_C_DIFF_RESULT_1_ADD1: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => RESULT_1_ADD1,
cout => RESULT_1_CARRY_1,
dataa => Y(1),
datab => Y_CURRENT(1),
cin => RESULT_1_CARRY_0);
LINE_INTERFACE_C_DIFF_RESULT_1_ADD2: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => RESULT_1_ADD2,
cout => RESULT_1_CARRY_2,
dataa => Y(2),
datab => Y_CURRENT(2),
cin => RESULT_1_CARRY_1);
LINE_INTERFACE_C_DIFF_RESULT_1_ADD3: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => RESULT_1_ADD3,
cout => RESULT_1_CARRY_3,
dataa => Y(3),
datab => Y_CURRENT(3),
cin => RESULT_1_CARRY_2);
LINE_INTERFACE_C_DIFF_RESULT_1_ADD4: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => RESULT_1_ADD4,
cout => RESULT_1_CARRY_4,
dataa => Y(4),
datab => Y_CURRENT(4),
cin => RESULT_1_CARRY_3);
LINE_INTERFACE_C_DIFF_RESULT_1_ADD5: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => RESULT_1_ADD5,
cout => RESULT_1_ADD5_COUT,
dataa => Y(5),
datab => Y_CURRENT(5),
cin => RESULT_1_CARRY_4);
LINE_INTERFACE_C_DIFF_RESULT_1_1_ADD0: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => RESULT_1_1_ADD0,
cout => RESULT_1_1_CARRY_0,
dataa => X(0),
datab => X_CURRENT(0),
cin => RESULT_1_1_ADD0_START_COUT);
LINE_INTERFACE_C_DIFF_RESULT_1_1_ADD1: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => RESULT_1_1_ADD1,
cout => RESULT_1_1_CARRY_1,
dataa => X(1),
datab => X_CURRENT(1),
cin => RESULT_1_1_CARRY_0);
LINE_INTERFACE_C_DIFF_RESULT_1_1_ADD2: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => RESULT_1_1_ADD2,
cout => RESULT_1_1_CARRY_2,
dataa => X(2),
datab => X_CURRENT(2),
cin => RESULT_1_1_CARRY_1);
LINE_INTERFACE_C_DIFF_RESULT_1_1_ADD3: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => RESULT_1_1_ADD3,
cout => RESULT_1_1_CARRY_3,
dataa => X(3),
datab => X_CURRENT(3),
cin => RESULT_1_1_CARRY_2);
LINE_INTERFACE_C_DIFF_RESULT_1_1_ADD4: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => RESULT_1_1_ADD4,
cout => RESULT_1_1_CARRY_4,
dataa => X(4),
datab => X_CURRENT(4),
cin => RESULT_1_1_CARRY_3);
LINE_INTERFACE_C_DIFF_RESULT_1_1_ADD5: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0110100111010100")
port map (
combout => RESULT_1_1_ADD5,
cout => RESULT_1_1_ADD5_COUT,
dataa => X(5),
datab => X_CURRENT(5),
cin => RESULT_1_1_CARRY_4);
INF_ABS0_A_0_ANC1_Z321: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001000100010001")
port map (
combout => INF_ABS0_A_0_ANC1,
dataa => RESULT_1_1_ADD0,
datab => RESULT_1_1_ADD1);
INF_ABS1_A_1_ANC1_Z322: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001000100010001")
port map (
combout => INF_ABS1_A_1_ANC1,
dataa => RESULT_1_ADD0,
datab => RESULT_1_ADD1);
DAO_STATE_S0_0_A3_Z323: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001000100010001")
port map (
combout => DAO_STATE_S0_0_A3,
dataa => DAO_STATE_14,
datab => DAO_STATE_15);
XYENABLE_REG_0_SQMUXA_1_Z324: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0010001000100010")
port map (
combout => XYENABLE_REG_0_SQMUXA_1,
dataa => FSM_STATE(1),
datab => CLEARSCREEN_STATE(0));
RCB_INTERFACE_C_DB_RCB_UN1_HOST_SIGNAL_OPCODE: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100010001000100")
port map (
combout => opcode_1z,
dataa => OPCODE_17,
datab => OPCODE_16);
\HOST_SIGNAL_R_HOST_SIGNAL_Y_RNIFNAT_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010110010101100")
port map (
combout => \Y_CURRENT_2_0_5__G2\,
dataa => Y(5),
datab => Y_CURRENT(5),
datac => XYENABLE_REG_0_SQMUXA_0);
\HOST_SIGNAL_R_HOST_SIGNAL_Y_RNIDLAT_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010110010101100")
port map (
combout => \Y_CURRENT_2_0_4__G2\,
dataa => Y(4),
datab => Y_CURRENT(4),
datac => XYENABLE_REG_0_SQMUXA_0);
\HOST_SIGNAL_R_HOST_SIGNAL_Y_RNIBJAT_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010110010101100")
port map (
combout => \Y_CURRENT_2_0_3__G2\,
dataa => Y(3),
datab => Y_CURRENT(3),
datac => XYENABLE_REG_0_SQMUXA_0);
\HOST_SIGNAL_R_HOST_SIGNAL_Y_RNI9HAT_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010110010101100")
port map (
combout => \Y_CURRENT_2_0_2__G2\,
dataa => Y(2),
datab => Y_CURRENT(2),
datac => XYENABLE_REG_0_SQMUXA_0);
\HOST_SIGNAL_R_HOST_SIGNAL_Y_RNI7FAT_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010110010101100")
port map (
combout => \Y_CURRENT_2_0_1__G2\,
dataa => Y(1),
datab => Y_CURRENT(1),
datac => XYENABLE_REG_0_SQMUXA_0);
\HOST_SIGNAL_R_HOST_SIGNAL_Y_RNI5DAT_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010110010101100")
port map (
combout => \Y_CURRENT_2_0_0__G2\,
dataa => Y(0),
datab => Y_CURRENT(0),
datac => XYENABLE_REG_0_SQMUXA_0);
\HOST_SIGNAL_R_HOST_SIGNAL_X_RNID9G51_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010110010101100")
port map (
combout => \X_CURRENT_2_0_5__G2\,
dataa => X(5),
datab => X_CURRENT(5),
datac => XYENABLE_REG_0_SQMUXA_0);
\HOST_SIGNAL_R_HOST_SIGNAL_X_RNIB7G51_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010110010101100")
port map (
combout => \X_CURRENT_2_0_4__G2\,
dataa => X(4),
datab => X_CURRENT(4),
datac => XYENABLE_REG_0_SQMUXA_0);
\HOST_SIGNAL_R_HOST_SIGNAL_X_RNI95G51_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010110010101100")
port map (
combout => \X_CURRENT_2_0_3__G2\,
dataa => X(3),
datab => X_CURRENT(3),
datac => XYENABLE_REG_0_SQMUXA_0);
\HOST_SIGNAL_R_HOST_SIGNAL_X_RNI73G51_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010110010101100")
port map (
combout => \X_CURRENT_2_0_2__G2\,
dataa => X(2),
datab => X_CURRENT(2),
datac => XYENABLE_REG_0_SQMUXA_0);
\HOST_SIGNAL_R_HOST_SIGNAL_X_RNI51G51_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010110010101100")
port map (
combout => \X_CURRENT_2_0_1__G2\,
dataa => X(1),
datab => X_CURRENT(1),
datac => XYENABLE_REG_0_SQMUXA_0);
\HOST_SIGNAL_R_HOST_SIGNAL_X_RNI3VF51_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010110010101100")
port map (
combout => \X_CURRENT_2_0_0__G2\,
dataa => X(0),
datab => X_CURRENT(0),
datac => XYENABLE_REG_0_SQMUXA_0);
INF_ABS0_A_0_ANC3_0_Z338: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0001000100010001")
port map (
combout => INF_ABS0_A_0_ANC3_0,
dataa => RESULT_1_1_ADD2,
datab => RESULT_1_1_ADD3);
\INF_ABS0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101001011010010")
port map (
combout => INF_ABS0(1),
dataa => RESULT_1_1_ADD0,
datab => RESULT_1_1_CARRY_5,
datac => RESULT_1_1_ADD1);
\INF_ABS1_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101001011010010")
port map (
combout => INF_ABS1(1),
dataa => RESULT_1_ADD0,
datab => RESULT_1_CARRY_5,
datac => RESULT_1_ADD1);
\FSM_TRANSITION_R_CLEARSCREEN_STATE_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1001100110011001")
port map (
combout => \CLEARSCREEN_STATE_1_0_0__G3\,
dataa => CLEARSCREEN_STATE(0),
datab => dbb_delaycmd);
\FSM_TRANSITION_R_FSM_STATE_RNIMJ2E1_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111010001000100")
port map (
combout => G_8,
dataa => CLEARSCREEN_STATE(0),
datab => FSM_STATE(1),
datac => DAO_STATE_14,
datad => FSM_STATE(0));
\FSM_TRANSITION_R_CLEARSCREEN_STATE_RNI6KJ31_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111010011110100")
port map (
combout => G_9,
dataa => CLEARSCREEN_STATE(0),
datab => FSM_STATE(1),
datac => UN1_FSM_STATE_19);
UN1_FSM_STATE_2_Z344: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110111111101110")
port map (
combout => UN1_FSM_STATE_19,
dataa => FSM_STATE(2),
datab => FSM_STATE(4),
datac => DAO_STATE_14,
datad => FSM_STATE(0));
FSM_STATE_1_SQMUXA_2_1_Z345: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000100000001000")
port map (
combout => FSM_STATE_1_SQMUXA_2_20,
dataa => CLEARSCREEN_STATE(0),
datab => FSM_STATE(1),
datac => dbb_delaycmd);
INF_ABS1_A_1_ANC3_Z346: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000000000001")
port map (
combout => INF_ABS1_A_1_ANC3,
dataa => RESULT_1_ADD0,
datab => RESULT_1_ADD1,
datac => RESULT_1_ADD2,
datad => RESULT_1_ADD3);
DBB_SIGNAL_RCB_CMDS2_0: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111011111110")
port map (
combout => RCB_CMDS2_0,
dataa => FSM_STATE(2),
datab => FSM_STATE(4),
datac => FSM_STATE(3));
UN1_FSM_STATE_0_SQMUXA_3_TZ_0_Z348: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110111011111110")
port map (
combout => UN1_FSM_STATE_0_SQMUXA_3_TZ_0,
dataa => FSM_STATE(2),
datab => FSM_STATE(4),
datac => FSM_STATE(3),
datad => dbb_delaycmd);
\INF_ABS0_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100110100110010")
port map (
combout => INF_ABS0(2),
dataa => RESULT_1_1_ADD0,
datab => RESULT_1_1_CARRY_5,
datac => RESULT_1_1_ADD1,
datad => RESULT_1_1_ADD2);
\INF_ABS1_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100110100110010")
port map (
combout => INF_ABS1(2),
dataa => RESULT_1_ADD0,
datab => RESULT_1_CARRY_5,
datac => RESULT_1_ADD1,
datad => RESULT_1_ADD2);
\DBB_SIGNAL_X_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000010110000")
port map (
combout => X_0,
dataa => CLEARSCREEN_STATE(0),
datab => FSM_STATE(1),
datac => Y(0),
datad => UN1_FSM_STATE_19);
\DBB_SIGNAL_X_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000010110000")
port map (
combout => X_1,
dataa => CLEARSCREEN_STATE(0),
datab => FSM_STATE(1),
datac => Y(1),
datad => UN1_FSM_STATE_19);
\DBB_SIGNAL_X_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000010110000")
port map (
combout => X_2,
dataa => CLEARSCREEN_STATE(0),
datab => FSM_STATE(1),
datac => Y(2),
datad => UN1_FSM_STATE_19);
\DBB_SIGNAL_X_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000010110000")
port map (
combout => X_3,
dataa => CLEARSCREEN_STATE(0),
datab => FSM_STATE(1),
datac => Y(3),
datad => UN1_FSM_STATE_19);
\DBB_SIGNAL_X_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000010110000")
port map (
combout => X_4,
dataa => CLEARSCREEN_STATE(0),
datab => FSM_STATE(1),
datac => Y(4),
datad => UN1_FSM_STATE_19);
\DBB_SIGNAL_X_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000010110000")
port map (
combout => X_5,
dataa => CLEARSCREEN_STATE(0),
datab => FSM_STATE(1),
datac => Y(5),
datad => UN1_FSM_STATE_19);
\HOST_SIGNAL_R_HOST_SIGNAL_X_RNI9L3C1_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000010110000")
port map (
combout => Y_1_0,
dataa => CLEARSCREEN_STATE(0),
datab => FSM_STATE(1),
datac => X(0),
datad => UN1_FSM_STATE_19);
\HOST_SIGNAL_R_HOST_SIGNAL_X_RNIAM3C1_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000010110000")
port map (
combout => Y_1_1,
dataa => CLEARSCREEN_STATE(0),
datab => FSM_STATE(1),
datac => X(1),
datad => UN1_FSM_STATE_19);
\HOST_SIGNAL_R_HOST_SIGNAL_X_RNIBN3C1_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000010110000")
port map (
combout => Y_1_2,
dataa => CLEARSCREEN_STATE(0),
datab => FSM_STATE(1),
datac => X(2),
datad => UN1_FSM_STATE_19);
\HOST_SIGNAL_R_HOST_SIGNAL_X_RNICO3C1_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000010110000")
port map (
combout => Y_1_3,
dataa => CLEARSCREEN_STATE(0),
datab => FSM_STATE(1),
datac => X(3),
datad => UN1_FSM_STATE_19);
\HOST_SIGNAL_R_HOST_SIGNAL_X_RNIDP3C1_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000010110000")
port map (
combout => Y_1_4,
dataa => CLEARSCREEN_STATE(0),
datab => FSM_STATE(1),
datac => X(4),
datad => UN1_FSM_STATE_19);
\HOST_SIGNAL_R_HOST_SIGNAL_X_RNIEQ3C1_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000010110000")
port map (
combout => Y_1_5,
dataa => CLEARSCREEN_STATE(0),
datab => FSM_STATE(1),
datac => X(5),
datad => UN1_FSM_STATE_19);
\DBB_SIGNAL_X_0_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010110010101100")
port map (
combout => X_0_5,
dataa => Y_CURRENT(5),
datab => NN_1,
datac => G_9);
\DBB_SIGNAL_X_0_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010110010101100")
port map (
combout => X_0_1,
dataa => Y_CURRENT(1),
datab => NN_2,
datac => G_9);
\DBB_SIGNAL_X_0_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010110010101100")
port map (
combout => X_0_4,
dataa => Y_CURRENT(4),
datab => NN_3,
datac => G_9);
\DBB_SIGNAL_X_0_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010110010101100")
port map (
combout => X_0_3,
dataa => Y_CURRENT(3),
datab => NN_4,
datac => G_9);
\DBB_SIGNAL_X_0_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010110010101100")
port map (
combout => X_0_2,
dataa => Y_CURRENT(2),
datab => NN_5,
datac => G_9);
\DBB_SIGNAL_X_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010110010101100")
port map (
combout => X_0_0,
dataa => Y_CURRENT(0),
datab => NN_6,
datac => G_9);
\FSM_STATE_13_IV_0_0_3__G1_3_1_Z369\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000001100000")
port map (
combout => \FSM_STATE_13_IV_0_0_3__G1_3_1\,
dataa => hdb_c_14,
datab => hdb_c_15,
datac => dav_c,
datad => reset_c);
INF_ABS0_A_0_ANC4_Z370: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000100000000")
port map (
combout => INF_ABS0_A_0_ANC4,
dataa => RESULT_1_1_ADD2,
datab => RESULT_1_1_ADD3,
datac => RESULT_1_1_ADD4,
datad => INF_ABS0_A_0_ANC1);
DB_DISABLE_A0_Z371: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000000010000")
port map (
combout => DB_DISABLE_A0,
dataa => rcb_state_0,
datab => rcb_state_2,
datac => lastfill,
datad => \state_srsts_0_1__g1\);
DBB_SIGNAL_RCB_CMDS2: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111111110100")
port map (
combout => RCB_CMDS2_21,
dataa => DAO_STATE_14,
datab => FSM_STATE(0),
datac => XYENABLE_REG_0_SQMUXA_1,
datad => RCB_CMDS2_0);
XYENABLE_REG_0_SQMUXA_0_0_Z373: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111100000100")
port map (
combout => XYENABLE_REG_0_SQMUXA_0_0,
dataa => DAO_STATE_14,
datab => FSM_STATE(0),
datac => DAO_STATE_15,
datad => FSM_STATE(2));
HDB_BUSY_SIGNAL_0_Z374: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111110001010000")
port map (
combout => HDB_BUSY_SIGNAL_0,
dataa => CLEARSCREEN_STATE(0),
datab => FSM_STATE(3),
datac => FSM_STATE(1),
datad => dbb_delaycmd);
\FSM_TRANSITION_R_FSM_STATE_RNO_0_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000010010000")
port map (
combout => FSM_STATE_0_SQMUXA_6_0_G0_0_0,
dataa => hdb_c_14,
datab => hdb_c_15,
datac => dav_c,
datad => reset_c);
UN1_RESET_1_Z376: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101110111011100")
port map (
combout => UN1_RESET_22,
dataa => dav_c,
datab => reset_c,
datac => FSM_STATE(2),
datad => FSM_STATE(4));
FSM_TRANSITION_R_PROCEEDING_STATE_UN16_FSM_STATE_0: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000010000100001")
port map (
combout => UN16_FSM_STATE_0,
dataa => hdb_c_13,
datab => hdb_c_12,
datac => \X_CURRENT_2_0_5__G2\,
datad => \X_CURRENT_2_0_4__G2\);
FSM_TRANSITION_R_PROCEEDING_STATE_UN16_FSM_STATE_1: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000010000100001")
port map (
combout => UN16_FSM_STATE_1,
dataa => hdb_c_3,
datab => hdb_c_2,
datac => \Y_CURRENT_2_0_1__G2\,
datad => \Y_CURRENT_2_0_0__G2\);
FSM_TRANSITION_R_PROCEEDING_STATE_UN16_FSM_STATE_2: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000010000100001")
port map (
combout => UN16_FSM_STATE_2,
dataa => hdb_c_5,
datab => hdb_c_4,
datac => \Y_CURRENT_2_0_3__G2\,
datad => \Y_CURRENT_2_0_2__G2\);
FSM_TRANSITION_R_PROCEEDING_STATE_UN16_FSM_STATE_3: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000010000100001")
port map (
combout => UN16_FSM_STATE_3,
dataa => hdb_c_7,
datab => hdb_c_6,
datac => \Y_CURRENT_2_0_5__G2\,
datad => \Y_CURRENT_2_0_4__G2\);
FSM_TRANSITION_R_PROCEEDING_STATE_UN16_FSM_STATE_4: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000010000100001")
port map (
combout => UN16_FSM_STATE_4,
dataa => hdb_c_9,
datab => hdb_c_8,
datac => \X_CURRENT_2_0_1__G2\,
datad => \X_CURRENT_2_0_0__G2\);
FSM_TRANSITION_R_PROCEEDING_STATE_UN16_FSM_STATE_5: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000010000100001")
port map (
combout => UN16_FSM_STATE_5,
dataa => hdb_c_11,
datab => hdb_c_10,
datac => \X_CURRENT_2_0_3__G2\,
datad => \X_CURRENT_2_0_2__G2\);
\INF_ABS0_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100100110011001")
port map (
combout => INF_ABS0(4),
dataa => RESULT_1_1_CARRY_5,
datab => RESULT_1_1_ADD4,
datac => INF_ABS0_A_0_ANC1,
datad => INF_ABS0_A_0_ANC3_0);
\INF_ABS0_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1011010010100101")
port map (
combout => INF_ABS0(3),
dataa => RESULT_1_1_CARRY_5,
datab => RESULT_1_1_ADD2,
datac => RESULT_1_1_ADD3,
datad => INF_ABS0_A_0_ANC1);
\INF_ABS1_4_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100100111001001")
port map (
combout => INF_ABS1(4),
dataa => RESULT_1_CARRY_5,
datab => RESULT_1_ADD4,
datac => INF_ABS1_A_1_ANC3);
\INF_ABS1_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1011010010100101")
port map (
combout => INF_ABS1(3),
dataa => RESULT_1_CARRY_5,
datab => RESULT_1_ADD2,
datac => RESULT_1_ADD3,
datad => INF_ABS1_A_1_ANC1);
\DBB_SIGNAL_RCB_CMD_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0010001011110011")
port map (
combout => rcb_cmd_1,
dataa => FSM_STATE(3),
datab => PEN(0),
datac => PEN(1),
datad => RCB_CMDS2_21);
\DBB_SIGNAL_RCB_CMD_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010100011111100")
port map (
combout => rcb_cmd_0,
dataa => FSM_STATE(3),
datab => PEN(0),
datac => PEN(1),
datad => RCB_CMDS2_21);
DB_DISABLE_0_1_Z389: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000011111101")
port map (
combout => DB_DISABLE_0_1,
dataa => lastfill,
datab => rcb_state_2,
datac => rcb_ready25,
datad => DB_DISABLE_A0);
\INF_ABS0_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100100111001001")
port map (
combout => INF_ABS0(5),
dataa => RESULT_1_1_CARRY_5,
datab => RESULT_1_1_ADD5,
datac => INF_ABS0_A_0_ANC4);
\INF_ABS1_5_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1011010010100101")
port map (
combout => INF_ABS1(5),
dataa => RESULT_1_CARRY_5,
datab => RESULT_1_ADD4,
datac => RESULT_1_ADD5,
datad => INF_ABS1_A_1_ANC3);
\FSM_TRANSITION_R_FSM_STATE_RNO_0_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000010000000")
port map (
combout => \FSM_STATE_13_IV_0_0_3__G1_3\,
dataa => \FSM_STATE_13_IV_0_0_3__G1_3_1\,
datab => CLEARSCREEN_STATE(0),
datac => FSM_STATE(1),
datad => dbb_delaycmd);
DB_DISABLE_0_2_Z393: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0010000000100000")
port map (
combout => DB_DISABLE_0_2,
dataa => DAO_STATE_14,
datab => UN1_FSM_STATE_19,
datac => DB_DISABLE_0_1);
FSM_TRANSITION_R_PROCEEDING_STATE_UN16_FSM_STATE_A: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0111111101111111")
port map (
combout => UN16_FSM_STATE_A,
dataa => UN16_FSM_STATE_0,
datab => UN16_FSM_STATE_1,
datac => UN16_FSM_STATE_2);
FSM_TRANSITION_R_PROCEEDING_STATE_UN16_FSM_STATE: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000010000000")
port map (
combout => UN16_FSM_STATE,
dataa => UN16_FSM_STATE_5,
datab => UN16_FSM_STATE_4,
datac => UN16_FSM_STATE_3,
datad => UN16_FSM_STATE_A);
FSM_TRANSITION_R_UN1_DB_DONE: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000000000010")
port map (
combout => UN1_DB_DONE,
dataa => DAO_STATE_14,
datab => DAO_STATE_15,
datac => UN5_X1_I_O3,
datad => dbb_delaycmd);
DB_DISABLE_0_3_Z397: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101111100000000")
port map (
combout => DB_DISABLE_0_3,
dataa => lastfill,
datab => rcb_state_2,
datac => un2_is_same_0_a5,
datad => DB_DISABLE_0_2);
FSM_STATE_1_SQMUXA_1_1_Z398: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000100010001000")
port map (
combout => FSM_STATE_1_SQMUXA_1_1,
dataa => FSM_STATE(0),
datab => UN1_DB_DONE);
DB_DISABLE_0_Z399: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000001011111111")
port map (
combout => DB_DISABLE_0,
dataa => lastfill,
datab => rcb_state_2,
datac => un17_store_xy_NE,
datad => DB_DISABLE_0_3);
\DAO_STATE_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100111011001110")
port map (
combout => \DAO_STATE_SRSTS_0_1__G3\,
dataa => DAO_STATE_14,
datab => DAO_STATE_15,
datac => UN1_DB_DONE);
HDB_BUSY_SIGNAL_Z401: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1100111011001110")
port map (
combout => HDB_BUSY_SIGNAL_23,
dataa => FSM_STATE(0),
datab => HDB_BUSY_SIGNAL_0,
datac => UN1_DB_DONE);
HDB_BUSY_SIGNAL_0_RNIV3VU: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010111110101011")
port map (
combout => \FSM_STATE_13_0_0__G0_E_I\,
dataa => reset_c,
datab => FSM_STATE(0),
datac => HDB_BUSY_SIGNAL_0,
datad => UN1_DB_DONE);
\FSM_TRANSITION_R_FSM_STATE_RNO_1_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010100010100000")
port map (
combout => \FSM_STATE_13_IV_0_0_3__G0_0_A4_2\,
dataa => \FSM_STATE_13_IV_0_0_3__G1_3_1\,
datab => FSM_STATE(0),
datac => UN1_FSM_STATE_0_SQMUXA_3_TZ_0,
datad => UN1_DB_DONE);
UN1_RESET_A_Z404: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0011000111110101")
port map (
combout => UN1_RESET_A_24,
dataa => FSM_STATE(3),
datab => FSM_STATE(0),
datac => dbb_delaycmd,
datad => UN1_DB_DONE);
UN1_RESET_Z405: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101110011011101")
port map (
combout => UN1_RESET,
dataa => dav_c,
datab => UN1_RESET_22,
datac => FSM_STATE_1_SQMUXA_2_20,
datad => UN1_RESET_A_24);
\HOST_SIGNAL_R_HOST_SIGNAL_PEN_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111110011011101")
port map (
combout => \PEN_0_0_0__G0_0\,
dataa => hdb_c_1,
datab => reset_c,
datac => PEN(0),
datad => HDB_BUSY_SIGNAL_23);
\FSM_TRANSITION_R_FSM_STATE_RNO_2_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1010101010101000")
port map (
combout => FSM_STATE_0_SQMUXA_6_0_G0,
dataa => FSM_STATE_0_SQMUXA_6_0_G0_0_0,
datab => UN1_FSM_STATE_0_SQMUXA_3_TZ_0,
datac => FSM_STATE_1_SQMUXA_2_20,
datad => FSM_STATE_1_SQMUXA_1_1);
\FSM_TRANSITION_R_FSM_STATE_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000000000010")
port map (
combout => \FSM_STATE_13_0_1__G3\,
dataa => hdb_c_15,
datab => hdb_c_14,
datac => UN1_RESET,
datad => UN16_FSM_STATE);
\FSM_TRANSITION_R_FSM_STATE_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0000000000000010")
port map (
combout => \FSM_STATE_13_0_0__G3\,
dataa => hdb_c_14,
datab => hdb_c_15,
datac => UN1_RESET,
datad => UN16_FSM_STATE);
\FSM_TRANSITION_R_FSM_STATE_RNO_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111111011110000")
port map (
combout => \FSM_STATE_13_IV_0_0_3__G0_0\,
dataa => \FSM_STATE_13_IV_0_0_3__G1_3\,
datab => \FSM_STATE_13_IV_0_0_3__G0_0_A4_2\,
datac => \FSM_STATE_13_IV_0_0_3__G0_0_A4_0_X\,
datad => UN16_FSM_STATE);
XYENABLE_REG_0_SQMUXA_0_Z411: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110110011101110")
port map (
combout => XYENABLE_REG_0_SQMUXA_0,
dataa => XYENABLE_REG_0_SQMUXA_1,
datab => XYENABLE_REG_0_SQMUXA_0_0,
datac => UN1_FSM_STATE_19,
datad => rcb_cmd_0_sqmuxa_i_0_o2);
\FSM_TRANSITION_R_FSM_STATE_RNO_2_3_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100000001000000")
port map (
combout => \FSM_STATE_13_IV_0_0_3__G0_0_A4_0_X\,
dataa => reset_c,
datab => FSM_STATE(3),
datac => HDB_BUSY_SIGNAL_23);
FSM_STATE_4_SQMUXA_X_Z413: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100010001000100")
port map (
combout => fsm_state_4_sqmuxa_x,
dataa => dav_c,
datab => FSM_STATE(4));
\FSM_TRANSITION_R_CLEARSCREEN_STATE_RNO_0_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110111011101110")
port map (
combout => \CLEARSCREEN_STATE_1_0_0__G0_0_X\,
dataa => reset_c,
datab => FSM_STATE(1));
\HOST_SIGNAL_R_HOST_SIGNAL_OPCODE_RNO_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100010001000100")
port map (
combout => \FSM_STATE_13_0_0__G3_1_X\,
dataa => hdb_c_15,
datab => hdb_c_14);
\HOST_SIGNAL_R_HOST_SIGNAL_OPCODE_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "0100010001000100")
port map (
combout => \FSM_STATE_13_0_1__G3_1_X\,
dataa => hdb_c_14,
datab => hdb_c_15);
\HOST_SIGNAL_R_HOST_SIGNAL_PEN_RNO_1_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1000100010001000")
port map (
combout => \PEN_0_0_1__G3_X\,
dataa => hdb_c_1,
datab => hdb_c_0);
\FSM_TRANSITION_R_FSM_STATE_RNIMVFG_0_\: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1110111011101110")
port map (
combout => \DAO_STATE_SRSTS_0_0__G0_0_X\,
dataa => reset_c,
datab => FSM_STATE(0));
LINE_INTERFACE_C_DIFF_RESULT_1_1_ADD5_TERM: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1111000011110000")
port map (
combout => RESULT_1_1_CARRY_5,
cin => RESULT_1_1_ADD5_COUT);
LINE_INTERFACE_C_DIFF_RESULT_1_1_ADD0_START: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000010101010")
port map (
cout => RESULT_1_1_ADD0_START_COUT,
dataa => VCC);
LINE_INTERFACE_C_DIFF_RESULT_1_ADD5_TERM: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "1111000011110000")
port map (
combout => RESULT_1_CARRY_5,
cin => RESULT_1_ADD5_COUT);
LINE_INTERFACE_C_DIFF_RESULT_1_ADD0_START: cycloneii_lcell_comb generic map (
     sum_lutc_input => "cin",
    lut_mask => "0000000010101010")
port map (
cout => RESULT_1_ADD0_START_COUT,
dataa => VCC);
LINE_DRAWER: draw_any_octant port map (
Y_current_0 => Y_CURRENT(0),
Y_current_4 => Y_CURRENT(4),
Y_current_3 => Y_CURRENT(3),
Y_current_2 => Y_CURRENT(2),
Y_current_1 => Y_CURRENT(1),
Y_current_5 => Y_CURRENT(5),
DAO_state_0 => DAO_STATE_15,
DAO_state_1 => DAO_STATE_14,
X_current_5 => X_CURRENT(5),
X_current_2 => X_CURRENT(2),
X_current_1 => X_CURRENT(1),
X_current_0 => X_CURRENT(0),
X_current_3 => X_CURRENT(3),
X_current_4 => X_CURRENT(4),
y_1z_5 => NN_1,
y_1z_1 => NN_2,
y_1z_0 => NN_6,
y_1z_2 => NN_5,
y_1z_3 => NN_4,
y_1z_4 => NN_3,
Y_2_1 => Y_2_1,
Y_2_5 => Y_2_5,
Y_2_4 => Y_2_4,
Y_2_3 => Y_2_3,
Y_2_2 => Y_2_2,
Y_2_0 => Y_2_0,
Y_0 => Y_0,
X_0 => X_1_0,
temp_ram_8_10_0_iv_0_0_a3_0 => temp_ram_8_10_0_iv_0_0_a3_0,
clk_c => clk_c,
db_disable_0 => DB_DISABLE_0,
muxed_swapxy_combout => muxed_swapxy_combout,
lt5 => LT5_0,
DAO_state_s0_0_a3 => DAO_STATE_S0_0_A3,
lt5_0 => LT5_1,
saved_swapxy => saved_swapxy,
lt5_1 => LT5_18,
G_9 => G_9,
lt5_cout => LT5_COUT,
lt5_cout_0 => LT5_COUT_0,
G_1143 => G_1143,
rcb_ready25 => rcb_ready25,
un5_x1_i_o3 => UN5_X1_I_O3);
VCC <= '1';
GND <= '0';
DAO_state_1 <= DAO_STATE_14;
DAO_state_0 <= DAO_STATE_15;
opcode_0 <= OPCODE_16;
opcode_1 <= OPCODE_17;
lt5 <= LT5_18;
un1_fsm_state_2 <= UN1_FSM_STATE_19;
fsm_state_1_sqmuxa_2_1 <= FSM_STATE_1_SQMUXA_2_20;
rcb_cmds2 <= RCB_CMDS2_21;
un1_reset_1 <= UN1_RESET_22;
hdb_busy_signal <= HDB_BUSY_SIGNAL_23;
un1_reset_a <= UN1_RESET_A_24;
end beh;

--
library ieee, cycloneii;
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
library synplify;
use synplify.components.all;
use cycloneii.cycloneii_components.all;

entity vdp is
port(
clk :  in std_logic;
reset :  in std_logic;
hdb : in std_logic_vector(15 downto 0);
dav :  in std_logic;
hdb_busy :  out std_logic;
vdin : out std_logic_vector(15 downto 0);
vdout : in std_logic_vector(15 downto 0);
vaddr : out std_logic_vector(7 downto 0);
vwrite :  out std_logic;
finish :  out std_logic);
end vdp;

architecture beh of vdp is
signal devclrn : std_logic := '1';
signal devpor : std_logic := '1';
signal devoe : std_logic := '0';
signal \DB_WRITTEN.DBB_SIGNAL.RCB_CMD\ : std_logic_vector(1 downto 0);
signal \RCB_WRITTEN.R1.RCB_STATE\ : std_logic_vector(2 downto 0);
signal \RCB_WRITTEN.R1.CURRENT_CMD.X\ : std_logic_vector(1 to 1);
signal \RCB_WRITTEN.R1.CURRENT_CMD.Y\ : std_logic_vector(1 to 1);
signal \RCB_WRITTEN.READ_MODIFY_WRITE.VDIN_1_IV_0_M2_X\ : std_logic_vector(15 downto 0);
signal \DB_WRITTEN.HOST_SIGNAL_R.HOST_SIGNAL.OPCODE\ : std_logic_vector(1 downto 0);
signal \DB_WRITTEN.DAO_STATE\ : std_logic_vector(1 downto 0);
signal \DB_WRITTEN.DBB_SIGNAL.X\ : std_logic_vector(5 downto 0);
signal \DB_WRITTEN.DBB_SIGNAL.Y_1\ : std_logic_vector(5 downto 0);
signal \DB_WRITTEN.DBB_SIGNAL.X_0\ : std_logic_vector(5 downto 0);
signal \DB_WRITTEN.DBB_SIGNAL.Y_2\ : std_logic_vector(5 downto 0);
signal \RCB_WRITTEN.READ_MODIFY_WRITE.VADDR\ : std_logic_vector(7 downto 0);
signal HDB_C : std_logic_vector(15 downto 0);
signal VDOUT_C : std_logic_vector(15 downto 0);
signal \RCB_WRITTEN.PIX_WORD_CACHE.R1.TEMP_RAM_8_10_0_IV_0_0_A3\ : std_logic_vector(0 to 0);
signal VDINZ : std_logic_vector(15 downto 0);
signal VADDRZ : std_logic_vector(7 downto 0);
signal VCC : std_logic ;
signal GND : std_logic ;
signal \RCB_WRITTEN.R1.LASTFILL\ : std_logic ;
signal \DB_WRITTEN.LINE_INTERFACE_C.DB_SWAPXY2.LT5\ : std_logic ;
signal \DB_WRITTEN.LINE_DRAWER.R0.SAVED_SWAPXY\ : std_logic ;
signal \DB_WRITTEN.HDB_BUSY_SIGNAL\ : std_logic ;
signal \RCB_WRITTEN.READ_MODIFY_WRITE.RAMFSM.STATE_S1_0_A3\ : std_logic ;
signal \RCB_WRITTEN.UN2_FINISH\ : std_logic ;
signal CLK_C : std_logic ;
signal RESET_C : std_logic ;
signal DAV_C : std_logic ;
signal \RCB_WRITTEN.UN1_RESET_I_A2_X\ : std_logic ;
signal \RCB_WRITTEN.CURRENT_CMD.RCB_CMD_0_SQMUXA_I_0_O2\ : std_logic ;
signal \RCB_WRITTEN.PIX_WORD_CACHE.UN2_IS_SAME_0_A5\ : std_logic ;
signal \RCB_WRITTEN.RCB_READY25\ : std_logic ;
signal \DB_WRITTEN.LINE_DRAWER.DO.G_1143\ : std_logic ;
signal \RCB_WRITTEN.UN1_RESET_I_A3_X\ : std_logic ;
signal \RCB_WRITTEN.UN1_RESET_2_I_A2_2\ : std_logic ;
signal \DB_WRITTEN.DBB_SIGNAL.RCB_CMDS2\ : std_logic ;
signal \DB_WRITTEN.RCB_INTERFACE_C.DB_RCB.UN1_HOST_SIGNAL.OPCODE\ : std_logic ;
signal \RCB_WRITTEN.C1.UN17_STORE_XY_NE\ : std_logic ;
signal \DB_WRITTEN.FSM_STATE_4_SQMUXA_X\ : std_logic ;
signal \RCB_WRITTEN.READ_MODIFY_WRITE.RAMFSM.STATE_SRSTS_0_1__G1\ : std_logic ;
signal \DB_WRITTEN.FSM_STATE_1_SQMUXA_2_1\ : std_logic ;
signal \DB_WRITTEN.UN1_RESET_1\ : std_logic ;
signal \RCB_WRITTEN.DBB_DELAYCMD\ : std_logic ;
signal \DB_WRITTEN.UN1_FSM_STATE_2\ : std_logic ;
signal \DB_WRITTEN.G_8\ : std_logic ;
signal \DB_WRITTEN.UN1_RESET_A\ : std_logic ;
signal MUXED_SWAPXY_COMBOUT : std_logic ;
signal UN1_RESET_COMBOUT : std_logic ;
signal UN1_RESET_2_I_O2_COMBOUT : std_logic ;
signal CLK_INTERNAL : std_logic ;
signal RESET_INTERNAL : std_logic ;
signal HDB_INTERNAL : std_logic ;
signal HDB_INTERNAL_0 : std_logic ;
signal HDB_INTERNAL_1 : std_logic ;
signal HDB_INTERNAL_2 : std_logic ;
signal HDB_INTERNAL_3 : std_logic ;
signal HDB_INTERNAL_4 : std_logic ;
signal HDB_INTERNAL_5 : std_logic ;
signal HDB_INTERNAL_6 : std_logic ;
signal HDB_INTERNAL_7 : std_logic ;
signal HDB_INTERNAL_8 : std_logic ;
signal HDB_INTERNAL_9 : std_logic ;
signal HDB_INTERNAL_10 : std_logic ;
signal HDB_INTERNAL_11 : std_logic ;
signal HDB_INTERNAL_12 : std_logic ;
signal HDB_INTERNAL_13 : std_logic ;
signal HDB_INTERNAL_14 : std_logic ;
signal DAV_INTERNAL : std_logic ;
signal VDOUT_INTERNAL : std_logic ;
signal VDOUT_INTERNAL_0 : std_logic ;
signal VDOUT_INTERNAL_1 : std_logic ;
signal VDOUT_INTERNAL_2 : std_logic ;
signal VDOUT_INTERNAL_3 : std_logic ;
signal VDOUT_INTERNAL_4 : std_logic ;
signal VDOUT_INTERNAL_5 : std_logic ;
signal VDOUT_INTERNAL_6 : std_logic ;
signal VDOUT_INTERNAL_7 : std_logic ;
signal VDOUT_INTERNAL_8 : std_logic ;
signal VDOUT_INTERNAL_9 : std_logic ;
signal VDOUT_INTERNAL_10 : std_logic ;
signal VDOUT_INTERNAL_11 : std_logic ;
signal VDOUT_INTERNAL_12 : std_logic ;
signal VDOUT_INTERNAL_13 : std_logic ;
signal VDOUT_INTERNAL_14 : std_logic ;
signal N_1 : std_logic ;
signal N_2 : std_logic ;
signal N_3 : std_logic ;
signal N_4 : std_logic ;
signal N_5 : std_logic ;
signal N_6 : std_logic ;
signal N_7 : std_logic ;
signal N_8 : std_logic ;
signal N_9 : std_logic ;
signal N_10 : std_logic ;
signal N_11 : std_logic ;
signal N_12 : std_logic ;
signal N_13 : std_logic ;
signal N_14 : std_logic ;
signal N_15 : std_logic ;
signal N_16 : std_logic ;
signal N_17 : std_logic ;
signal N_18 : std_logic ;
signal N_19 : std_logic ;
signal N_72 : std_logic ;
signal N_73 : std_logic ;
signal N_74 : std_logic ;
signal N_75 : std_logic ;
signal N_76 : std_logic ;
signal N_77 : std_logic ;
signal N_78 : std_logic ;
signal N_79 : std_logic ;
signal N_80 : std_logic ;
signal N_81 : std_logic ;
signal N_82 : std_logic ;
signal N_83 : std_logic ;
signal N_84 : std_logic ;
signal N_85 : std_logic ;
signal N_86 : std_logic ;
signal N_87 : std_logic ;
signal N_88 : std_logic ;
signal N_37 : std_logic ;
signal N_38 : std_logic ;
signal N_39 : std_logic ;
signal N_40 : std_logic ;
signal N_41 : std_logic ;
signal N_42 : std_logic ;
signal N_43 : std_logic ;
signal N_44 : std_logic ;
signal N_45 : std_logic ;
signal N_46 : std_logic ;
signal N_47 : std_logic ;
signal N_48 : std_logic ;
signal N_49 : std_logic ;
signal N_50 : std_logic ;
signal N_51 : std_logic ;
signal N_52 : std_logic ;
signal N_89 : std_logic ;
signal N_90 : std_logic ;
signal N_91 : std_logic ;
signal N_92 : std_logic ;
signal N_93 : std_logic ;
signal N_94 : std_logic ;
signal N_95 : std_logic ;
signal N_96 : std_logic ;
signal N_97 : std_logic ;
signal N_98 : std_logic ;
signal HDB_BUSYZ : std_logic ;
signal VWRITEZ : std_logic ;
signal FINISHZ : std_logic ;
component db
port(
DAO_state_1 :  out std_logic;
DAO_state_0 :  out std_logic;
opcode_0 :  out std_logic;
opcode_1 :  out std_logic;
X_0 :  out std_logic;
X_1 :  out std_logic;
X_2 :  out std_logic;
X_3 :  out std_logic;
X_4 :  out std_logic;
X_5 :  out std_logic;
Y_1_0 :  out std_logic;
Y_1_1 :  out std_logic;
Y_1_2 :  out std_logic;
Y_1_3 :  out std_logic;
Y_1_4 :  out std_logic;
Y_1_5 :  out std_logic;
X_0_5 :  out std_logic;
X_0_1 :  out std_logic;
X_0_4 :  out std_logic;
X_0_3 :  out std_logic;
X_0_2 :  out std_logic;
X_0_0 :  out std_logic;
rcb_state_0 :  in std_logic;
rcb_state_2 :  in std_logic;
rcb_cmd_1 :  out std_logic;
rcb_cmd_0 :  out std_logic;
hdb_c_8 :  in std_logic;
hdb_c_9 :  in std_logic;
hdb_c_10 :  in std_logic;
hdb_c_11 :  in std_logic;
hdb_c_12 :  in std_logic;
hdb_c_13 :  in std_logic;
hdb_c_2 :  in std_logic;
hdb_c_3 :  in std_logic;
hdb_c_4 :  in std_logic;
hdb_c_5 :  in std_logic;
hdb_c_6 :  in std_logic;
hdb_c_7 :  in std_logic;
hdb_c_14 :  in std_logic;
hdb_c_15 :  in std_logic;
hdb_c_1 :  in std_logic;
hdb_c_0 :  in std_logic;
Y_2_1 :  out std_logic;
Y_2_5 :  out std_logic;
Y_2_4 :  out std_logic;
Y_2_3 :  out std_logic;
Y_2_2 :  out std_logic;
Y_2_0 :  out std_logic;
Y_0 :  in std_logic;
X_1_0 :  in std_logic;
temp_ram_8_10_0_iv_0_0_a3_0 :  in std_logic;
opcode_1z :  out std_logic;
clk_c :  in std_logic;
un1_reset_combout :  in std_logic;
reset_c :  in std_logic;
lt5 :  out std_logic;
dbb_delaycmd :  in std_logic;
G_8 :  out std_logic;
un1_fsm_state_2 :  out std_logic;
fsm_state_1_sqmuxa_2_1 :  out std_logic;
dav_c :  in std_logic;
lastfill :  in std_logic;
\state_srsts_0_1__g1\ :  in std_logic;
rcb_cmds2 :  out std_logic;
un1_reset_1 :  out std_logic;
rcb_ready25 :  in std_logic;
un2_is_same_0_a5 :  in std_logic;
un17_store_xy_NE :  in std_logic;
hdb_busy_signal :  out std_logic;
un1_reset_a :  out std_logic;
rcb_cmd_0_sqmuxa_i_0_o2 :  in std_logic;
fsm_state_4_sqmuxa_x :  out std_logic;
muxed_swapxy_combout :  in std_logic;
saved_swapxy :  out std_logic;
G_1143 :  out std_logic  );
end component;
component rcb
port(
rcb_state_0 :  out std_logic;
rcb_state_2 :  out std_logic;
Y_1_d0 :  out std_logic;
X_0_5 :  in std_logic;
X_0_4 :  in std_logic;
X_0_3 :  in std_logic;
X_0_2 :  in std_logic;
X_0_1 :  in std_logic;
X_0_0 :  in std_logic;
X_5 :  in std_logic;
X_4 :  in std_logic;
X_3 :  in std_logic;
X_2 :  in std_logic;
X_1 :  in std_logic;
X_0 :  in std_logic;
X_1_1 :  out std_logic;
Y_2_5 :  in std_logic;
Y_2_4 :  in std_logic;
Y_2_3 :  in std_logic;
Y_2_2 :  in std_logic;
Y_2_1 :  in std_logic;
Y_2_0 :  in std_logic;
Y_1_5 :  in std_logic;
Y_1_4 :  in std_logic;
Y_1_3 :  in std_logic;
Y_1_2 :  in std_logic;
Y_1_1 :  in std_logic;
Y_1_0 :  in std_logic;
rcb_cmd_0_1 :  in std_logic;
rcb_cmd_0_0 :  in std_logic;
opcode_0 :  in std_logic;
opcode_1 :  in std_logic;
temp_ram_8_10_0_iv_0_0_a3_0 :  out std_logic;
vaddr_7 :  out std_logic;
vaddr_6 :  out std_logic;
vaddr_5 :  out std_logic;
vaddr_4 :  out std_logic;
vaddr_3 :  out std_logic;
vaddr_2 :  out std_logic;
vaddr_1 :  out std_logic;
vaddr_0 :  out std_logic;
vdin_1_iv_0_m2_x_13 :  out std_logic;
vdin_1_iv_0_m2_x_14 :  out std_logic;
vdin_1_iv_0_m2_x_15 :  out std_logic;
vdin_1_iv_0_m2_x_6 :  out std_logic;
vdin_1_iv_0_m2_x_7 :  out std_logic;
vdin_1_iv_0_m2_x_8 :  out std_logic;
vdin_1_iv_0_m2_x_9 :  out std_logic;
vdin_1_iv_0_m2_x_10 :  out std_logic;
vdin_1_iv_0_m2_x_11 :  out std_logic;
vdin_1_iv_0_m2_x_12 :  out std_logic;
vdin_1_iv_0_m2_x_0 :  out std_logic;
vdin_1_iv_0_m2_x_1 :  out std_logic;
vdin_1_iv_0_m2_x_2 :  out std_logic;
vdin_1_iv_0_m2_x_3 :  out std_logic;
vdin_1_iv_0_m2_x_4 :  out std_logic;
vdin_1_iv_0_m2_x_5 :  out std_logic;
vdout_c_13 :  in std_logic;
vdout_c_14 :  in std_logic;
vdout_c_15 :  in std_logic;
vdout_c_6 :  in std_logic;
vdout_c_7 :  in std_logic;
vdout_c_8 :  in std_logic;
vdout_c_9 :  in std_logic;
vdout_c_10 :  in std_logic;
vdout_c_11 :  in std_logic;
vdout_c_12 :  in std_logic;
vdout_c_0 :  in std_logic;
vdout_c_1 :  in std_logic;
vdout_c_2 :  in std_logic;
vdout_c_3 :  in std_logic;
vdout_c_4 :  in std_logic;
vdout_c_5 :  in std_logic;
opcode_1z :  in std_logic;
clk_c :  in std_logic;
un1_reset_2_i_o2_combout :  in std_logic;
G_8 :  in std_logic;
reset_c :  in std_logic;
un1_reset_i_a2_x :  out std_logic;
lastfill :  out std_logic;
rcb_ready25 :  out std_logic;
fsm_state_4_sqmuxa_x :  in std_logic;
un17_store_xy_NE :  out std_logic;
rcb_cmds2 :  in std_logic;
un2_is_same_0_a5 :  out std_logic;
un1_reset_2_i_a2_2 :  out std_logic;
\state_srsts_0_1__g1\ :  out std_logic;
rcb_cmd_0_sqmuxa_i_0_o2 :  out std_logic;
un1_reset_i_a3_x :  out std_logic;
dbb_delaycmd :  out std_logic;
un1_fsm_state_2 :  in std_logic;
un2_finish :  out std_logic;
G_1143 :  in std_logic;
state_s1_0_a3 :  out std_logic  );
end component;
begin
VCC <= '1';
GND <= '0';
RETDB_WRITTEN_LINE_DRAWER_MUXED_SWAPXY: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111000111100000")
port map (
combout => MUXED_SWAPXY_COMBOUT,
dataa => \DB_WRITTEN.DAO_STATE\(0),
datab => \DB_WRITTEN.DAO_STATE\(1),
datac => \DB_WRITTEN.LINE_DRAWER.R0.SAVED_SWAPXY\,
datad => \DB_WRITTEN.LINE_INTERFACE_C.DB_SWAPXY2.LT5\);
RETDB_WRITTEN_UN1_RESET: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1101110011011101")
port map (
combout => UN1_RESET_COMBOUT,
dataa => DAV_C,
datab => \DB_WRITTEN.UN1_RESET_1\,
datac => \DB_WRITTEN.FSM_STATE_1_SQMUXA_2_1\,
datad => \DB_WRITTEN.UN1_RESET_A\);
RETRCB_WRITTEN_UN1_RESET_2_I_O2: cycloneii_lcell_comb generic map (
     sum_lutc_input => "datac",
    lut_mask => "1111110011110100")
port map (
combout => UN1_RESET_2_I_O2_COMBOUT,
dataa => \RCB_WRITTEN.R1.LASTFILL\,
datab => \RCB_WRITTEN.UN1_RESET_I_A3_X\,
datac => \RCB_WRITTEN.UN1_RESET_I_A2_X\,
datad => \RCB_WRITTEN.UN1_RESET_2_I_A2_2\);
\VDOUT_IN_15_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_52,
combout => VDOUT_C(15),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDOUT_IN_14_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_51,
combout => VDOUT_C(14),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDOUT_IN_13_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_50,
combout => VDOUT_C(13),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDOUT_IN_12_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_49,
combout => VDOUT_C(12),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDOUT_IN_11_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_48,
combout => VDOUT_C(11),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDOUT_IN_10_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_47,
combout => VDOUT_C(10),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDOUT_IN_9_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_46,
combout => VDOUT_C(9),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDOUT_IN_8_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_45,
combout => VDOUT_C(8),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDOUT_IN_7_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_44,
combout => VDOUT_C(7),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDOUT_IN_6_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_43,
combout => VDOUT_C(6),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDOUT_IN_5_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_42,
combout => VDOUT_C(5),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDOUT_IN_4_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_41,
combout => VDOUT_C(4),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDOUT_IN_3_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_40,
combout => VDOUT_C(3),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDOUT_IN_2_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_39,
combout => VDOUT_C(2),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDOUT_IN_1_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_38,
combout => VDOUT_C(1),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDOUT_IN_0_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_37,
combout => VDOUT_C(0),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
DAV_IN: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_19,
combout => DAV_C,
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\HDB_IN_15_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_18,
combout => HDB_C(15),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\HDB_IN_14_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_17,
combout => HDB_C(14),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\HDB_IN_13_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_16,
combout => HDB_C(13),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\HDB_IN_12_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_15,
combout => HDB_C(12),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\HDB_IN_11_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_14,
combout => HDB_C(11),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\HDB_IN_10_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_13,
combout => HDB_C(10),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\HDB_IN_9_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_12,
combout => HDB_C(9),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\HDB_IN_8_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_11,
combout => HDB_C(8),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\HDB_IN_7_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_10,
combout => HDB_C(7),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\HDB_IN_6_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_9,
combout => HDB_C(6),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\HDB_IN_5_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_8,
combout => HDB_C(5),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\HDB_IN_4_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_7,
combout => HDB_C(4),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\HDB_IN_3_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_6,
combout => HDB_C(3),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\HDB_IN_2_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_5,
combout => HDB_C(2),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\HDB_IN_1_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_4,
combout => HDB_C(1),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\HDB_IN_0_\: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_3,
combout => HDB_C(0),
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
RESET_IN: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_2,
combout => RESET_C,
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
CLK_IN: cycloneii_io generic map (
    operation_mode => "input"
    )
port map (
padio => N_1,
combout => CLK_C,
oe => GND,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
FINISH_OUT: cycloneii_io generic map (
    operation_mode => "output"
    )
port map (
padio => FINISHZ,
datain => \RCB_WRITTEN.UN2_FINISH\,
oe => VCC,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
VWRITE_OUT: cycloneii_io generic map (
    operation_mode => "output"
    )
port map (
padio => VWRITEZ,
datain => \RCB_WRITTEN.READ_MODIFY_WRITE.RAMFSM.STATE_S1_0_A3\,
oe => VCC,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VADDR_OUT_7_\: cycloneii_io generic map (
    operation_mode => "output"
    )
port map (
padio => VADDRZ(7),
datain => \RCB_WRITTEN.READ_MODIFY_WRITE.VADDR\(7),
oe => VCC,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VADDR_OUT_6_\: cycloneii_io generic map (
    operation_mode => "output"
    )
port map (
padio => VADDRZ(6),
datain => \RCB_WRITTEN.READ_MODIFY_WRITE.VADDR\(6),
oe => VCC,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VADDR_OUT_5_\: cycloneii_io generic map (
    operation_mode => "output"
    )
port map (
padio => VADDRZ(5),
datain => \RCB_WRITTEN.READ_MODIFY_WRITE.VADDR\(5),
oe => VCC,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VADDR_OUT_4_\: cycloneii_io generic map (
    operation_mode => "output"
    )
port map (
padio => VADDRZ(4),
datain => \RCB_WRITTEN.READ_MODIFY_WRITE.VADDR\(4),
oe => VCC,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VADDR_OUT_3_\: cycloneii_io generic map (
    operation_mode => "output"
    )
port map (
padio => VADDRZ(3),
datain => \RCB_WRITTEN.READ_MODIFY_WRITE.VADDR\(3),
oe => VCC,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VADDR_OUT_2_\: cycloneii_io generic map (
    operation_mode => "output"
    )
port map (
padio => VADDRZ(2),
datain => \RCB_WRITTEN.READ_MODIFY_WRITE.VADDR\(2),
oe => VCC,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VADDR_OUT_1_\: cycloneii_io generic map (
    operation_mode => "output"
    )
port map (
padio => VADDRZ(1),
datain => \RCB_WRITTEN.READ_MODIFY_WRITE.VADDR\(1),
oe => VCC,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VADDR_OUT_0_\: cycloneii_io generic map (
    operation_mode => "output"
    )
port map (
padio => VADDRZ(0),
datain => \RCB_WRITTEN.READ_MODIFY_WRITE.VADDR\(0),
oe => VCC,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDIN_OUT_15_\: cycloneii_io generic map (
    operation_mode => "output"
    )
port map (
padio => VDINZ(15),
datain => \RCB_WRITTEN.READ_MODIFY_WRITE.VDIN_1_IV_0_M2_X\(15),
oe => VCC,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDIN_OUT_14_\: cycloneii_io generic map (
    operation_mode => "output"
    )
port map (
padio => VDINZ(14),
datain => \RCB_WRITTEN.READ_MODIFY_WRITE.VDIN_1_IV_0_M2_X\(14),
oe => VCC,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDIN_OUT_13_\: cycloneii_io generic map (
    operation_mode => "output"
    )
port map (
padio => VDINZ(13),
datain => \RCB_WRITTEN.READ_MODIFY_WRITE.VDIN_1_IV_0_M2_X\(13),
oe => VCC,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDIN_OUT_12_\: cycloneii_io generic map (
    operation_mode => "output"
    )
port map (
padio => VDINZ(12),
datain => \RCB_WRITTEN.READ_MODIFY_WRITE.VDIN_1_IV_0_M2_X\(12),
oe => VCC,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDIN_OUT_11_\: cycloneii_io generic map (
    operation_mode => "output"
    )
port map (
padio => VDINZ(11),
datain => \RCB_WRITTEN.READ_MODIFY_WRITE.VDIN_1_IV_0_M2_X\(11),
oe => VCC,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDIN_OUT_10_\: cycloneii_io generic map (
    operation_mode => "output"
    )
port map (
padio => VDINZ(10),
datain => \RCB_WRITTEN.READ_MODIFY_WRITE.VDIN_1_IV_0_M2_X\(10),
oe => VCC,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDIN_OUT_9_\: cycloneii_io generic map (
    operation_mode => "output"
    )
port map (
padio => VDINZ(9),
datain => \RCB_WRITTEN.READ_MODIFY_WRITE.VDIN_1_IV_0_M2_X\(9),
oe => VCC,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDIN_OUT_8_\: cycloneii_io generic map (
    operation_mode => "output"
    )
port map (
padio => VDINZ(8),
datain => \RCB_WRITTEN.READ_MODIFY_WRITE.VDIN_1_IV_0_M2_X\(8),
oe => VCC,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDIN_OUT_7_\: cycloneii_io generic map (
    operation_mode => "output"
    )
port map (
padio => VDINZ(7),
datain => \RCB_WRITTEN.READ_MODIFY_WRITE.VDIN_1_IV_0_M2_X\(7),
oe => VCC,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDIN_OUT_6_\: cycloneii_io generic map (
    operation_mode => "output"
    )
port map (
padio => VDINZ(6),
datain => \RCB_WRITTEN.READ_MODIFY_WRITE.VDIN_1_IV_0_M2_X\(6),
oe => VCC,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDIN_OUT_5_\: cycloneii_io generic map (
    operation_mode => "output"
    )
port map (
padio => VDINZ(5),
datain => \RCB_WRITTEN.READ_MODIFY_WRITE.VDIN_1_IV_0_M2_X\(5),
oe => VCC,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDIN_OUT_4_\: cycloneii_io generic map (
    operation_mode => "output"
    )
port map (
padio => VDINZ(4),
datain => \RCB_WRITTEN.READ_MODIFY_WRITE.VDIN_1_IV_0_M2_X\(4),
oe => VCC,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDIN_OUT_3_\: cycloneii_io generic map (
    operation_mode => "output"
    )
port map (
padio => VDINZ(3),
datain => \RCB_WRITTEN.READ_MODIFY_WRITE.VDIN_1_IV_0_M2_X\(3),
oe => VCC,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDIN_OUT_2_\: cycloneii_io generic map (
    operation_mode => "output"
    )
port map (
padio => VDINZ(2),
datain => \RCB_WRITTEN.READ_MODIFY_WRITE.VDIN_1_IV_0_M2_X\(2),
oe => VCC,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDIN_OUT_1_\: cycloneii_io generic map (
    operation_mode => "output"
    )
port map (
padio => VDINZ(1),
datain => \RCB_WRITTEN.READ_MODIFY_WRITE.VDIN_1_IV_0_M2_X\(1),
oe => VCC,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
\VDIN_OUT_0_\: cycloneii_io generic map (
    operation_mode => "output"
    )
port map (
padio => VDINZ(0),
datain => \RCB_WRITTEN.READ_MODIFY_WRITE.VDIN_1_IV_0_M2_X\(0),
oe => VCC,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
HDB_BUSY_OUT: cycloneii_io generic map (
    operation_mode => "output"
    )
port map (
padio => HDB_BUSYZ,
datain => \DB_WRITTEN.HDB_BUSY_SIGNAL\,
oe => VCC,
	devpor => devpor,
	devclrn => devclrn,
	devoe => devoe,
	outclkena => VCC,
	inclkena => VCC,
	areset => GND,
	sreset => GND);
DB_WRITTEN: db port map (
DAO_state_1 => \DB_WRITTEN.DAO_STATE\(1),
DAO_state_0 => \DB_WRITTEN.DAO_STATE\(0),
opcode_0 => \DB_WRITTEN.HOST_SIGNAL_R.HOST_SIGNAL.OPCODE\(0),
opcode_1 => \DB_WRITTEN.HOST_SIGNAL_R.HOST_SIGNAL.OPCODE\(1),
X_0 => \DB_WRITTEN.DBB_SIGNAL.X\(0),
X_1 => \DB_WRITTEN.DBB_SIGNAL.X\(1),
X_2 => \DB_WRITTEN.DBB_SIGNAL.X\(2),
X_3 => \DB_WRITTEN.DBB_SIGNAL.X\(3),
X_4 => \DB_WRITTEN.DBB_SIGNAL.X\(4),
X_5 => \DB_WRITTEN.DBB_SIGNAL.X\(5),
Y_1_0 => \DB_WRITTEN.DBB_SIGNAL.Y_1\(0),
Y_1_1 => \DB_WRITTEN.DBB_SIGNAL.Y_1\(1),
Y_1_2 => \DB_WRITTEN.DBB_SIGNAL.Y_1\(2),
Y_1_3 => \DB_WRITTEN.DBB_SIGNAL.Y_1\(3),
Y_1_4 => \DB_WRITTEN.DBB_SIGNAL.Y_1\(4),
Y_1_5 => \DB_WRITTEN.DBB_SIGNAL.Y_1\(5),
X_0_5 => \DB_WRITTEN.DBB_SIGNAL.X_0\(5),
X_0_1 => \DB_WRITTEN.DBB_SIGNAL.X_0\(1),
X_0_4 => \DB_WRITTEN.DBB_SIGNAL.X_0\(4),
X_0_3 => \DB_WRITTEN.DBB_SIGNAL.X_0\(3),
X_0_2 => \DB_WRITTEN.DBB_SIGNAL.X_0\(2),
X_0_0 => \DB_WRITTEN.DBB_SIGNAL.X_0\(0),
rcb_state_0 => \RCB_WRITTEN.R1.RCB_STATE\(0),
rcb_state_2 => \RCB_WRITTEN.R1.RCB_STATE\(2),
rcb_cmd_1 => \DB_WRITTEN.DBB_SIGNAL.RCB_CMD\(1),
rcb_cmd_0 => \DB_WRITTEN.DBB_SIGNAL.RCB_CMD\(0),
hdb_c_8 => HDB_C(8),
hdb_c_9 => HDB_C(9),
hdb_c_10 => HDB_C(10),
hdb_c_11 => HDB_C(11),
hdb_c_12 => HDB_C(12),
hdb_c_13 => HDB_C(13),
hdb_c_2 => HDB_C(2),
hdb_c_3 => HDB_C(3),
hdb_c_4 => HDB_C(4),
hdb_c_5 => HDB_C(5),
hdb_c_6 => HDB_C(6),
hdb_c_7 => HDB_C(7),
hdb_c_14 => HDB_C(14),
hdb_c_15 => HDB_C(15),
hdb_c_1 => HDB_C(1),
hdb_c_0 => HDB_C(0),
Y_2_1 => \DB_WRITTEN.DBB_SIGNAL.Y_2\(1),
Y_2_5 => \DB_WRITTEN.DBB_SIGNAL.Y_2\(5),
Y_2_4 => \DB_WRITTEN.DBB_SIGNAL.Y_2\(4),
Y_2_3 => \DB_WRITTEN.DBB_SIGNAL.Y_2\(3),
Y_2_2 => \DB_WRITTEN.DBB_SIGNAL.Y_2\(2),
Y_2_0 => \DB_WRITTEN.DBB_SIGNAL.Y_2\(0),
Y_0 => \RCB_WRITTEN.R1.CURRENT_CMD.Y\(1),
X_1_0 => \RCB_WRITTEN.R1.CURRENT_CMD.X\(1),
temp_ram_8_10_0_iv_0_0_a3_0 => \RCB_WRITTEN.PIX_WORD_CACHE.R1.TEMP_RAM_8_10_0_IV_0_0_A3\(0),
opcode_1z => \DB_WRITTEN.RCB_INTERFACE_C.DB_RCB.UN1_HOST_SIGNAL.OPCODE\,
clk_c => CLK_C,
un1_reset_combout => UN1_RESET_COMBOUT,
reset_c => RESET_C,
lt5 => \DB_WRITTEN.LINE_INTERFACE_C.DB_SWAPXY2.LT5\,
dbb_delaycmd => \RCB_WRITTEN.DBB_DELAYCMD\,
G_8 => \DB_WRITTEN.G_8\,
un1_fsm_state_2 => \DB_WRITTEN.UN1_FSM_STATE_2\,
fsm_state_1_sqmuxa_2_1 => \DB_WRITTEN.FSM_STATE_1_SQMUXA_2_1\,
dav_c => DAV_C,
lastfill => \RCB_WRITTEN.R1.LASTFILL\,
\state_srsts_0_1__g1\ => \RCB_WRITTEN.READ_MODIFY_WRITE.RAMFSM.STATE_SRSTS_0_1__G1\,
rcb_cmds2 => \DB_WRITTEN.DBB_SIGNAL.RCB_CMDS2\,
un1_reset_1 => \DB_WRITTEN.UN1_RESET_1\,
rcb_ready25 => \RCB_WRITTEN.RCB_READY25\,
un2_is_same_0_a5 => \RCB_WRITTEN.PIX_WORD_CACHE.UN2_IS_SAME_0_A5\,
un17_store_xy_NE => \RCB_WRITTEN.C1.UN17_STORE_XY_NE\,
hdb_busy_signal => \DB_WRITTEN.HDB_BUSY_SIGNAL\,
un1_reset_a => \DB_WRITTEN.UN1_RESET_A\,
rcb_cmd_0_sqmuxa_i_0_o2 => \RCB_WRITTEN.CURRENT_CMD.RCB_CMD_0_SQMUXA_I_0_O2\,
fsm_state_4_sqmuxa_x => \DB_WRITTEN.FSM_STATE_4_SQMUXA_X\,
muxed_swapxy_combout => MUXED_SWAPXY_COMBOUT,
saved_swapxy => \DB_WRITTEN.LINE_DRAWER.R0.SAVED_SWAPXY\,
G_1143 => \DB_WRITTEN.LINE_DRAWER.DO.G_1143\);
RCB_WRITTEN: rcb port map (
rcb_state_0 => \RCB_WRITTEN.R1.RCB_STATE\(0),
rcb_state_2 => \RCB_WRITTEN.R1.RCB_STATE\(2),
Y_1_d0 => \RCB_WRITTEN.R1.CURRENT_CMD.Y\(1),
X_0_5 => \DB_WRITTEN.DBB_SIGNAL.X_0\(5),
X_0_4 => \DB_WRITTEN.DBB_SIGNAL.X_0\(4),
X_0_3 => \DB_WRITTEN.DBB_SIGNAL.X_0\(3),
X_0_2 => \DB_WRITTEN.DBB_SIGNAL.X_0\(2),
X_0_1 => \DB_WRITTEN.DBB_SIGNAL.X_0\(1),
X_0_0 => \DB_WRITTEN.DBB_SIGNAL.X_0\(0),
X_5 => \DB_WRITTEN.DBB_SIGNAL.X\(5),
X_4 => \DB_WRITTEN.DBB_SIGNAL.X\(4),
X_3 => \DB_WRITTEN.DBB_SIGNAL.X\(3),
X_2 => \DB_WRITTEN.DBB_SIGNAL.X\(2),
X_1 => \DB_WRITTEN.DBB_SIGNAL.X\(1),
X_0 => \DB_WRITTEN.DBB_SIGNAL.X\(0),
X_1_1 => \RCB_WRITTEN.R1.CURRENT_CMD.X\(1),
Y_2_5 => \DB_WRITTEN.DBB_SIGNAL.Y_2\(5),
Y_2_4 => \DB_WRITTEN.DBB_SIGNAL.Y_2\(4),
Y_2_3 => \DB_WRITTEN.DBB_SIGNAL.Y_2\(3),
Y_2_2 => \DB_WRITTEN.DBB_SIGNAL.Y_2\(2),
Y_2_1 => \DB_WRITTEN.DBB_SIGNAL.Y_2\(1),
Y_2_0 => \DB_WRITTEN.DBB_SIGNAL.Y_2\(0),
Y_1_5 => \DB_WRITTEN.DBB_SIGNAL.Y_1\(5),
Y_1_4 => \DB_WRITTEN.DBB_SIGNAL.Y_1\(4),
Y_1_3 => \DB_WRITTEN.DBB_SIGNAL.Y_1\(3),
Y_1_2 => \DB_WRITTEN.DBB_SIGNAL.Y_1\(2),
Y_1_1 => \DB_WRITTEN.DBB_SIGNAL.Y_1\(1),
Y_1_0 => \DB_WRITTEN.DBB_SIGNAL.Y_1\(0),
rcb_cmd_0_1 => \DB_WRITTEN.DBB_SIGNAL.RCB_CMD\(1),
rcb_cmd_0_0 => \DB_WRITTEN.DBB_SIGNAL.RCB_CMD\(0),
opcode_0 => \DB_WRITTEN.HOST_SIGNAL_R.HOST_SIGNAL.OPCODE\(0),
opcode_1 => \DB_WRITTEN.HOST_SIGNAL_R.HOST_SIGNAL.OPCODE\(1),
temp_ram_8_10_0_iv_0_0_a3_0 => \RCB_WRITTEN.PIX_WORD_CACHE.R1.TEMP_RAM_8_10_0_IV_0_0_A3\(0),
vaddr_7 => \RCB_WRITTEN.READ_MODIFY_WRITE.VADDR\(7),
vaddr_6 => \RCB_WRITTEN.READ_MODIFY_WRITE.VADDR\(6),
vaddr_5 => \RCB_WRITTEN.READ_MODIFY_WRITE.VADDR\(5),
vaddr_4 => \RCB_WRITTEN.READ_MODIFY_WRITE.VADDR\(4),
vaddr_3 => \RCB_WRITTEN.READ_MODIFY_WRITE.VADDR\(3),
vaddr_2 => \RCB_WRITTEN.READ_MODIFY_WRITE.VADDR\(2),
vaddr_1 => \RCB_WRITTEN.READ_MODIFY_WRITE.VADDR\(1),
vaddr_0 => \RCB_WRITTEN.READ_MODIFY_WRITE.VADDR\(0),
vdin_1_iv_0_m2_x_13 => \RCB_WRITTEN.READ_MODIFY_WRITE.VDIN_1_IV_0_M2_X\(13),
vdin_1_iv_0_m2_x_14 => \RCB_WRITTEN.READ_MODIFY_WRITE.VDIN_1_IV_0_M2_X\(14),
vdin_1_iv_0_m2_x_15 => \RCB_WRITTEN.READ_MODIFY_WRITE.VDIN_1_IV_0_M2_X\(15),
vdin_1_iv_0_m2_x_6 => \RCB_WRITTEN.READ_MODIFY_WRITE.VDIN_1_IV_0_M2_X\(6),
vdin_1_iv_0_m2_x_7 => \RCB_WRITTEN.READ_MODIFY_WRITE.VDIN_1_IV_0_M2_X\(7),
vdin_1_iv_0_m2_x_8 => \RCB_WRITTEN.READ_MODIFY_WRITE.VDIN_1_IV_0_M2_X\(8),
vdin_1_iv_0_m2_x_9 => \RCB_WRITTEN.READ_MODIFY_WRITE.VDIN_1_IV_0_M2_X\(9),
vdin_1_iv_0_m2_x_10 => \RCB_WRITTEN.READ_MODIFY_WRITE.VDIN_1_IV_0_M2_X\(10),
vdin_1_iv_0_m2_x_11 => \RCB_WRITTEN.READ_MODIFY_WRITE.VDIN_1_IV_0_M2_X\(11),
vdin_1_iv_0_m2_x_12 => \RCB_WRITTEN.READ_MODIFY_WRITE.VDIN_1_IV_0_M2_X\(12),
vdin_1_iv_0_m2_x_0 => \RCB_WRITTEN.READ_MODIFY_WRITE.VDIN_1_IV_0_M2_X\(0),
vdin_1_iv_0_m2_x_1 => \RCB_WRITTEN.READ_MODIFY_WRITE.VDIN_1_IV_0_M2_X\(1),
vdin_1_iv_0_m2_x_2 => \RCB_WRITTEN.READ_MODIFY_WRITE.VDIN_1_IV_0_M2_X\(2),
vdin_1_iv_0_m2_x_3 => \RCB_WRITTEN.READ_MODIFY_WRITE.VDIN_1_IV_0_M2_X\(3),
vdin_1_iv_0_m2_x_4 => \RCB_WRITTEN.READ_MODIFY_WRITE.VDIN_1_IV_0_M2_X\(4),
vdin_1_iv_0_m2_x_5 => \RCB_WRITTEN.READ_MODIFY_WRITE.VDIN_1_IV_0_M2_X\(5),
vdout_c_13 => VDOUT_C(13),
vdout_c_14 => VDOUT_C(14),
vdout_c_15 => VDOUT_C(15),
vdout_c_6 => VDOUT_C(6),
vdout_c_7 => VDOUT_C(7),
vdout_c_8 => VDOUT_C(8),
vdout_c_9 => VDOUT_C(9),
vdout_c_10 => VDOUT_C(10),
vdout_c_11 => VDOUT_C(11),
vdout_c_12 => VDOUT_C(12),
vdout_c_0 => VDOUT_C(0),
vdout_c_1 => VDOUT_C(1),
vdout_c_2 => VDOUT_C(2),
vdout_c_3 => VDOUT_C(3),
vdout_c_4 => VDOUT_C(4),
vdout_c_5 => VDOUT_C(5),
opcode_1z => \DB_WRITTEN.RCB_INTERFACE_C.DB_RCB.UN1_HOST_SIGNAL.OPCODE\,
clk_c => CLK_C,
un1_reset_2_i_o2_combout => UN1_RESET_2_I_O2_COMBOUT,
G_8 => \DB_WRITTEN.G_8\,
reset_c => RESET_C,
un1_reset_i_a2_x => \RCB_WRITTEN.UN1_RESET_I_A2_X\,
lastfill => \RCB_WRITTEN.R1.LASTFILL\,
rcb_ready25 => \RCB_WRITTEN.RCB_READY25\,
fsm_state_4_sqmuxa_x => \DB_WRITTEN.FSM_STATE_4_SQMUXA_X\,
un17_store_xy_NE => \RCB_WRITTEN.C1.UN17_STORE_XY_NE\,
rcb_cmds2 => \DB_WRITTEN.DBB_SIGNAL.RCB_CMDS2\,
un2_is_same_0_a5 => \RCB_WRITTEN.PIX_WORD_CACHE.UN2_IS_SAME_0_A5\,
un1_reset_2_i_a2_2 => \RCB_WRITTEN.UN1_RESET_2_I_A2_2\,
\state_srsts_0_1__g1\ => \RCB_WRITTEN.READ_MODIFY_WRITE.RAMFSM.STATE_SRSTS_0_1__G1\,
rcb_cmd_0_sqmuxa_i_0_o2 => \RCB_WRITTEN.CURRENT_CMD.RCB_CMD_0_SQMUXA_I_0_O2\,
un1_reset_i_a3_x => \RCB_WRITTEN.UN1_RESET_I_A3_X\,
dbb_delaycmd => \RCB_WRITTEN.DBB_DELAYCMD\,
un1_fsm_state_2 => \DB_WRITTEN.UN1_FSM_STATE_2\,
un2_finish => \RCB_WRITTEN.UN2_FINISH\,
G_1143 => \DB_WRITTEN.LINE_DRAWER.DO.G_1143\,
state_s1_0_a3 => \RCB_WRITTEN.READ_MODIFY_WRITE.RAMFSM.STATE_S1_0_A3\);
N_1 <= CLK_INTERNAL;
N_2 <= RESET_INTERNAL;
N_3 <= HDB_INTERNAL;
N_4 <= HDB_INTERNAL_0;
N_5 <= HDB_INTERNAL_1;
N_6 <= HDB_INTERNAL_2;
N_7 <= HDB_INTERNAL_3;
N_8 <= HDB_INTERNAL_4;
N_9 <= HDB_INTERNAL_5;
N_10 <= HDB_INTERNAL_6;
N_11 <= HDB_INTERNAL_7;
N_12 <= HDB_INTERNAL_8;
N_13 <= HDB_INTERNAL_9;
N_14 <= HDB_INTERNAL_10;
N_15 <= HDB_INTERNAL_11;
N_16 <= HDB_INTERNAL_12;
N_17 <= HDB_INTERNAL_13;
N_18 <= HDB_INTERNAL_14;
N_19 <= DAV_INTERNAL;
N_72 <= HDB_BUSYZ;
N_73 <= VDINZ(0);
N_74 <= VDINZ(1);
N_75 <= VDINZ(2);
N_76 <= VDINZ(3);
N_77 <= VDINZ(4);
N_78 <= VDINZ(5);
N_79 <= VDINZ(6);
N_80 <= VDINZ(7);
N_81 <= VDINZ(8);
N_82 <= VDINZ(9);
N_83 <= VDINZ(10);
N_84 <= VDINZ(11);
N_85 <= VDINZ(12);
N_86 <= VDINZ(13);
N_87 <= VDINZ(14);
N_88 <= VDINZ(15);
N_37 <= VDOUT_INTERNAL;
N_38 <= VDOUT_INTERNAL_0;
N_39 <= VDOUT_INTERNAL_1;
N_40 <= VDOUT_INTERNAL_2;
N_41 <= VDOUT_INTERNAL_3;
N_42 <= VDOUT_INTERNAL_4;
N_43 <= VDOUT_INTERNAL_5;
N_44 <= VDOUT_INTERNAL_6;
N_45 <= VDOUT_INTERNAL_7;
N_46 <= VDOUT_INTERNAL_8;
N_47 <= VDOUT_INTERNAL_9;
N_48 <= VDOUT_INTERNAL_10;
N_49 <= VDOUT_INTERNAL_11;
N_50 <= VDOUT_INTERNAL_12;
N_51 <= VDOUT_INTERNAL_13;
N_52 <= VDOUT_INTERNAL_14;
N_89 <= VADDRZ(0);
N_90 <= VADDRZ(1);
N_91 <= VADDRZ(2);
N_92 <= VADDRZ(3);
N_93 <= VADDRZ(4);
N_94 <= VADDRZ(5);
N_95 <= VADDRZ(6);
N_96 <= VADDRZ(7);
N_97 <= VWRITEZ;
N_98 <= FINISHZ;
hdb_busy <= N_72;
vdin(0) <= N_73;
vdin(1) <= N_74;
vdin(2) <= N_75;
vdin(3) <= N_76;
vdin(4) <= N_77;
vdin(5) <= N_78;
vdin(6) <= N_79;
vdin(7) <= N_80;
vdin(8) <= N_81;
vdin(9) <= N_82;
vdin(10) <= N_83;
vdin(11) <= N_84;
vdin(12) <= N_85;
vdin(13) <= N_86;
vdin(14) <= N_87;
vdin(15) <= N_88;
vaddr(0) <= N_89;
vaddr(1) <= N_90;
vaddr(2) <= N_91;
vaddr(3) <= N_92;
vaddr(4) <= N_93;
vaddr(5) <= N_94;
vaddr(6) <= N_95;
vaddr(7) <= N_96;
vwrite <= N_97;
finish <= N_98;
CLK_INTERNAL <= clk;
RESET_INTERNAL <= reset;
HDB_INTERNAL <= hdb(0);
HDB_INTERNAL_0 <= hdb(1);
HDB_INTERNAL_1 <= hdb(2);
HDB_INTERNAL_2 <= hdb(3);
HDB_INTERNAL_3 <= hdb(4);
HDB_INTERNAL_4 <= hdb(5);
HDB_INTERNAL_5 <= hdb(6);
HDB_INTERNAL_6 <= hdb(7);
HDB_INTERNAL_7 <= hdb(8);
HDB_INTERNAL_8 <= hdb(9);
HDB_INTERNAL_9 <= hdb(10);
HDB_INTERNAL_10 <= hdb(11);
HDB_INTERNAL_11 <= hdb(12);
HDB_INTERNAL_12 <= hdb(13);
HDB_INTERNAL_13 <= hdb(14);
HDB_INTERNAL_14 <= hdb(15);
DAV_INTERNAL <= dav;
VDOUT_INTERNAL <= vdout(0);
VDOUT_INTERNAL_0 <= vdout(1);
VDOUT_INTERNAL_1 <= vdout(2);
VDOUT_INTERNAL_2 <= vdout(3);
VDOUT_INTERNAL_3 <= vdout(4);
VDOUT_INTERNAL_4 <= vdout(5);
VDOUT_INTERNAL_5 <= vdout(6);
VDOUT_INTERNAL_6 <= vdout(7);
VDOUT_INTERNAL_7 <= vdout(8);
VDOUT_INTERNAL_8 <= vdout(9);
VDOUT_INTERNAL_9 <= vdout(10);
VDOUT_INTERNAL_10 <= vdout(11);
VDOUT_INTERNAL_11 <= vdout(12);
VDOUT_INTERNAL_12 <= vdout(13);
VDOUT_INTERNAL_13 <= vdout(14);
VDOUT_INTERNAL_14 <= vdout(15);
end beh;

