/* Generated by Yosys 0.9 (git sha1 1979e0b) */

(* top =  1  *)
(* src = "byte_unstriping_sintetizado.v:21" *)
module byte_unstriping_sintetizado(clk_2f, clk, valid_0, lane_0, valid_1, lane_1, data_out_sint, valid_out_sint);
  (* src = "byte_unstriping_sintetizado.v:35" *)
  wire [1:0] _000_;
  wire _001_;
  wire _002_;
  wire _003_;
  wire _004_;
  wire _005_;
  wire _006_;
  wire _007_;
  wire _008_;
  wire _009_;
  wire _010_;
  wire _011_;
  wire _012_;
  wire _013_;
  wire _014_;
  wire _015_;
  wire _016_;
  wire _017_;
  wire _018_;
  wire _019_;
  wire _020_;
  wire _021_;
  wire _022_;
  wire _023_;
  wire _024_;
  wire _025_;
  wire _026_;
  wire _027_;
  wire _028_;
  wire _029_;
  wire _030_;
  wire _031_;
  wire _032_;
  wire _033_;
  wire _034_;
  wire _035_;
  wire _036_;
  wire _037_;
  wire _038_;
  wire _039_;
  wire _040_;
  wire _041_;
  wire _042_;
  wire _043_;
  wire _044_;
  wire _045_;
  wire _046_;
  wire _047_;
  wire _048_;
  wire _049_;
  wire _050_;
  wire _051_;
  wire _052_;
  wire _053_;
  wire _054_;
  wire _055_;
  wire _056_;
  wire _057_;
  wire _058_;
  wire _059_;
  wire _060_;
  wire _061_;
  wire _062_;
  wire _063_;
  wire _064_;
  wire _065_;
  wire _066_;
  wire _067_;
  wire _068_;
  wire _069_;
  wire _070_;
  wire _071_;
  wire _072_;
  wire _073_;
  wire _074_;
  wire _075_;
  wire _076_;
  wire _077_;
  wire _078_;
  wire _079_;
  wire _080_;
  wire _081_;
  wire _082_;
  wire _083_;
  wire _084_;
  wire _085_;
  wire _086_;
  wire _087_;
  wire _088_;
  wire _089_;
  wire _090_;
  wire _091_;
  wire _092_;
  wire _093_;
  wire _094_;
  wire _095_;
  wire _096_;
  wire _097_;
  wire _098_;
  wire _099_;
  wire _100_;
  wire _101_;
  wire _102_;
  wire _103_;
  wire _104_;
  wire _105_;
  wire _106_;
  wire _107_;
  wire _108_;
  wire _109_;
  wire _110_;
  wire _111_;
  wire _112_;
  wire _113_;
  wire _114_;
  wire _115_;
  wire _116_;
  wire _117_;
  wire _118_;
  wire _119_;
  wire _120_;
  wire _121_;
  wire _122_;
  wire _123_;
  wire _124_;
  wire _125_;
  wire _126_;
  wire _127_;
  wire _128_;
  wire _129_;
  wire _130_;
  wire _131_;
  wire _132_;
  wire _133_;
  (* src = "byte_unstriping_sintetizado.v:23" *)
  input clk;
  (* src = "byte_unstriping_sintetizado.v:22" *)
  input clk_2f;
  (* src = "byte_unstriping_sintetizado.v:31" *)
  wire [1:0] counter;
  (* src = "byte_unstriping_sintetizado.v:28" *)
  output [31:0] data_out_sint;
  (* src = "byte_unstriping_sintetizado.v:25" *)
  input [31:0] lane_0;
  (* src = "byte_unstriping_sintetizado.v:27" *)
  input [31:0] lane_1;
  (* src = "byte_unstriping_sintetizado.v:24" *)
  input valid_0;
  (* src = "byte_unstriping_sintetizado.v:26" *)
  input valid_1;
  (* src = "byte_unstriping_sintetizado.v:29" *)
  output valid_out_sint;
  NOR _134_ (
    .A(counter[0]),
    .B(lane_0[12]),
    .Y(_074_)
  );
  NAND _135_ (
    .A(counter[0]),
    .B(_015_),
    .Y(_075_)
  );
  NAND _136_ (
    .A(valid_0),
    .B(_075_),
    .Y(_076_)
  );
  NOR _137_ (
    .A(_074_),
    .B(_076_),
    .Y(data_out_sint[12])
  );
  NOR _138_ (
    .A(counter[0]),
    .B(lane_0[13]),
    .Y(_077_)
  );
  NAND _139_ (
    .A(counter[0]),
    .B(_016_),
    .Y(_078_)
  );
  NAND _140_ (
    .A(valid_0),
    .B(_078_),
    .Y(_079_)
  );
  NOR _141_ (
    .A(_077_),
    .B(_079_),
    .Y(data_out_sint[13])
  );
  NOR _142_ (
    .A(counter[0]),
    .B(lane_0[14]),
    .Y(_080_)
  );
  NAND _143_ (
    .A(counter[0]),
    .B(_017_),
    .Y(_081_)
  );
  NAND _144_ (
    .A(valid_0),
    .B(_081_),
    .Y(_082_)
  );
  NOR _145_ (
    .A(_080_),
    .B(_082_),
    .Y(data_out_sint[14])
  );
  NOR _146_ (
    .A(counter[0]),
    .B(lane_0[15]),
    .Y(_083_)
  );
  NAND _147_ (
    .A(counter[0]),
    .B(_018_),
    .Y(_084_)
  );
  NAND _148_ (
    .A(valid_0),
    .B(_084_),
    .Y(_085_)
  );
  NOR _149_ (
    .A(_083_),
    .B(_085_),
    .Y(data_out_sint[15])
  );
  NOR _150_ (
    .A(counter[0]),
    .B(lane_0[16]),
    .Y(_086_)
  );
  NAND _151_ (
    .A(counter[0]),
    .B(_019_),
    .Y(_087_)
  );
  NAND _152_ (
    .A(valid_0),
    .B(_087_),
    .Y(_088_)
  );
  NOR _153_ (
    .A(_086_),
    .B(_088_),
    .Y(data_out_sint[16])
  );
  NOR _154_ (
    .A(counter[0]),
    .B(lane_0[17]),
    .Y(_089_)
  );
  NAND _155_ (
    .A(counter[0]),
    .B(_020_),
    .Y(_090_)
  );
  NAND _156_ (
    .A(valid_0),
    .B(_090_),
    .Y(_091_)
  );
  NOR _157_ (
    .A(_089_),
    .B(_091_),
    .Y(data_out_sint[17])
  );
  NOR _158_ (
    .A(counter[0]),
    .B(lane_0[18]),
    .Y(_092_)
  );
  NAND _159_ (
    .A(counter[0]),
    .B(_021_),
    .Y(_093_)
  );
  NAND _160_ (
    .A(valid_0),
    .B(_093_),
    .Y(_094_)
  );
  NOR _161_ (
    .A(_092_),
    .B(_094_),
    .Y(data_out_sint[18])
  );
  NOR _162_ (
    .A(counter[0]),
    .B(lane_0[19]),
    .Y(_095_)
  );
  NAND _163_ (
    .A(counter[0]),
    .B(_022_),
    .Y(_096_)
  );
  NAND _164_ (
    .A(valid_0),
    .B(_096_),
    .Y(_097_)
  );
  NOR _165_ (
    .A(_095_),
    .B(_097_),
    .Y(data_out_sint[19])
  );
  NOR _166_ (
    .A(counter[0]),
    .B(lane_0[20]),
    .Y(_098_)
  );
  NAND _167_ (
    .A(counter[0]),
    .B(_023_),
    .Y(_099_)
  );
  NAND _168_ (
    .A(valid_0),
    .B(_099_),
    .Y(_100_)
  );
  NOR _169_ (
    .A(_098_),
    .B(_100_),
    .Y(data_out_sint[20])
  );
  NOR _170_ (
    .A(counter[0]),
    .B(lane_0[21]),
    .Y(_101_)
  );
  NAND _171_ (
    .A(counter[0]),
    .B(_024_),
    .Y(_102_)
  );
  NAND _172_ (
    .A(valid_0),
    .B(_102_),
    .Y(_103_)
  );
  NOR _173_ (
    .A(_101_),
    .B(_103_),
    .Y(data_out_sint[21])
  );
  NOR _174_ (
    .A(counter[0]),
    .B(lane_0[22]),
    .Y(_104_)
  );
  NAND _175_ (
    .A(counter[0]),
    .B(_025_),
    .Y(_105_)
  );
  NAND _176_ (
    .A(valid_0),
    .B(_105_),
    .Y(_106_)
  );
  NOR _177_ (
    .A(_104_),
    .B(_106_),
    .Y(data_out_sint[22])
  );
  NOR _178_ (
    .A(counter[0]),
    .B(lane_0[23]),
    .Y(_107_)
  );
  NAND _179_ (
    .A(counter[0]),
    .B(_026_),
    .Y(_108_)
  );
  NAND _180_ (
    .A(valid_0),
    .B(_108_),
    .Y(_109_)
  );
  NOR _181_ (
    .A(_107_),
    .B(_109_),
    .Y(data_out_sint[23])
  );
  NOR _182_ (
    .A(counter[0]),
    .B(lane_0[24]),
    .Y(_110_)
  );
  NAND _183_ (
    .A(counter[0]),
    .B(_027_),
    .Y(_111_)
  );
  NAND _184_ (
    .A(valid_0),
    .B(_111_),
    .Y(_112_)
  );
  NOR _185_ (
    .A(_110_),
    .B(_112_),
    .Y(data_out_sint[24])
  );
  NOR _186_ (
    .A(counter[0]),
    .B(lane_0[25]),
    .Y(_113_)
  );
  NAND _187_ (
    .A(counter[0]),
    .B(_028_),
    .Y(_114_)
  );
  NAND _188_ (
    .A(valid_0),
    .B(_114_),
    .Y(_115_)
  );
  NOR _189_ (
    .A(_113_),
    .B(_115_),
    .Y(data_out_sint[25])
  );
  NOR _190_ (
    .A(counter[0]),
    .B(lane_0[26]),
    .Y(_116_)
  );
  NAND _191_ (
    .A(counter[0]),
    .B(_029_),
    .Y(_117_)
  );
  NAND _192_ (
    .A(valid_0),
    .B(_117_),
    .Y(_118_)
  );
  NOR _193_ (
    .A(_116_),
    .B(_118_),
    .Y(data_out_sint[26])
  );
  NOR _194_ (
    .A(counter[0]),
    .B(lane_0[27]),
    .Y(_119_)
  );
  NAND _195_ (
    .A(counter[0]),
    .B(_030_),
    .Y(_120_)
  );
  NAND _196_ (
    .A(valid_0),
    .B(_120_),
    .Y(_121_)
  );
  NOR _197_ (
    .A(_119_),
    .B(_121_),
    .Y(data_out_sint[27])
  );
  NOR _198_ (
    .A(counter[0]),
    .B(lane_0[28]),
    .Y(_122_)
  );
  NAND _199_ (
    .A(counter[0]),
    .B(_031_),
    .Y(_123_)
  );
  NAND _200_ (
    .A(valid_0),
    .B(_123_),
    .Y(_124_)
  );
  NOR _201_ (
    .A(_122_),
    .B(_124_),
    .Y(data_out_sint[28])
  );
  NOR _202_ (
    .A(counter[0]),
    .B(lane_0[29]),
    .Y(_125_)
  );
  NAND _203_ (
    .A(counter[0]),
    .B(_032_),
    .Y(_126_)
  );
  NAND _204_ (
    .A(valid_0),
    .B(_126_),
    .Y(_127_)
  );
  NOR _205_ (
    .A(_125_),
    .B(_127_),
    .Y(data_out_sint[29])
  );
  NOR _206_ (
    .A(counter[0]),
    .B(lane_0[30]),
    .Y(_128_)
  );
  NAND _207_ (
    .A(counter[0]),
    .B(_033_),
    .Y(_129_)
  );
  NAND _208_ (
    .A(valid_0),
    .B(_129_),
    .Y(_130_)
  );
  NOR _209_ (
    .A(_128_),
    .B(_130_),
    .Y(data_out_sint[30])
  );
  NOR _210_ (
    .A(counter[0]),
    .B(lane_0[31]),
    .Y(_131_)
  );
  NAND _211_ (
    .A(counter[0]),
    .B(_034_),
    .Y(_132_)
  );
  NAND _212_ (
    .A(valid_0),
    .B(_132_),
    .Y(_133_)
  );
  NOR _213_ (
    .A(_131_),
    .B(_133_),
    .Y(data_out_sint[31])
  );
  BUF _214_ (
    .A(valid_0),
    .Y(valid_out_sint)
  );
  NOT _215_ (
    .A(counter[0]),
    .Y(_001_)
  );
  NOT _216_ (
    .A(valid_0),
    .Y(_002_)
  );
  NOT _217_ (
    .A(lane_1[0]),
    .Y(_003_)
  );
  NOT _218_ (
    .A(lane_1[1]),
    .Y(_004_)
  );
  NOT _219_ (
    .A(lane_1[2]),
    .Y(_005_)
  );
  NOT _220_ (
    .A(lane_1[3]),
    .Y(_006_)
  );
  NOT _221_ (
    .A(lane_1[4]),
    .Y(_007_)
  );
  NOT _222_ (
    .A(lane_1[5]),
    .Y(_008_)
  );
  NOT _223_ (
    .A(lane_1[6]),
    .Y(_009_)
  );
  NOT _224_ (
    .A(lane_1[7]),
    .Y(_010_)
  );
  NOT _225_ (
    .A(lane_1[8]),
    .Y(_011_)
  );
  NOT _226_ (
    .A(lane_1[9]),
    .Y(_012_)
  );
  NOT _227_ (
    .A(lane_1[10]),
    .Y(_013_)
  );
  NOT _228_ (
    .A(lane_1[11]),
    .Y(_014_)
  );
  NOT _229_ (
    .A(lane_1[12]),
    .Y(_015_)
  );
  NOT _230_ (
    .A(lane_1[13]),
    .Y(_016_)
  );
  NOT _231_ (
    .A(lane_1[14]),
    .Y(_017_)
  );
  NOT _232_ (
    .A(lane_1[15]),
    .Y(_018_)
  );
  NOT _233_ (
    .A(lane_1[16]),
    .Y(_019_)
  );
  NOT _234_ (
    .A(lane_1[17]),
    .Y(_020_)
  );
  NOT _235_ (
    .A(lane_1[18]),
    .Y(_021_)
  );
  NOT _236_ (
    .A(lane_1[19]),
    .Y(_022_)
  );
  NOT _237_ (
    .A(lane_1[20]),
    .Y(_023_)
  );
  NOT _238_ (
    .A(lane_1[21]),
    .Y(_024_)
  );
  NOT _239_ (
    .A(lane_1[22]),
    .Y(_025_)
  );
  NOT _240_ (
    .A(lane_1[23]),
    .Y(_026_)
  );
  NOT _241_ (
    .A(lane_1[24]),
    .Y(_027_)
  );
  NOT _242_ (
    .A(lane_1[25]),
    .Y(_028_)
  );
  NOT _243_ (
    .A(lane_1[26]),
    .Y(_029_)
  );
  NOT _244_ (
    .A(lane_1[27]),
    .Y(_030_)
  );
  NOT _245_ (
    .A(lane_1[28]),
    .Y(_031_)
  );
  NOT _246_ (
    .A(lane_1[29]),
    .Y(_032_)
  );
  NOT _247_ (
    .A(lane_1[30]),
    .Y(_033_)
  );
  NOT _248_ (
    .A(lane_1[31]),
    .Y(_034_)
  );
  NOR _249_ (
    .A(counter[0]),
    .B(_002_),
    .Y(_000_[0])
  );
  NAND _250_ (
    .A(_001_),
    .B(counter[1]),
    .Y(_035_)
  );
  NOR _251_ (
    .A(_001_),
    .B(counter[1]),
    .Y(_036_)
  );
  NOR _252_ (
    .A(_002_),
    .B(_036_),
    .Y(_037_)
  );
  NAND _253_ (
    .A(_035_),
    .B(_037_),
    .Y(_000_[1])
  );
  NOR _254_ (
    .A(counter[0]),
    .B(lane_0[0]),
    .Y(_038_)
  );
  NAND _255_ (
    .A(counter[0]),
    .B(_003_),
    .Y(_039_)
  );
  NAND _256_ (
    .A(valid_0),
    .B(_039_),
    .Y(_040_)
  );
  NOR _257_ (
    .A(_038_),
    .B(_040_),
    .Y(data_out_sint[0])
  );
  NOR _258_ (
    .A(counter[0]),
    .B(lane_0[1]),
    .Y(_041_)
  );
  NAND _259_ (
    .A(counter[0]),
    .B(_004_),
    .Y(_042_)
  );
  NAND _260_ (
    .A(valid_0),
    .B(_042_),
    .Y(_043_)
  );
  NOR _261_ (
    .A(_041_),
    .B(_043_),
    .Y(data_out_sint[1])
  );
  NOR _262_ (
    .A(counter[0]),
    .B(lane_0[2]),
    .Y(_044_)
  );
  NAND _263_ (
    .A(counter[0]),
    .B(_005_),
    .Y(_045_)
  );
  NAND _264_ (
    .A(valid_0),
    .B(_045_),
    .Y(_046_)
  );
  NOR _265_ (
    .A(_044_),
    .B(_046_),
    .Y(data_out_sint[2])
  );
  NOR _266_ (
    .A(counter[0]),
    .B(lane_0[3]),
    .Y(_047_)
  );
  NAND _267_ (
    .A(counter[0]),
    .B(_006_),
    .Y(_048_)
  );
  NAND _268_ (
    .A(valid_0),
    .B(_048_),
    .Y(_049_)
  );
  NOR _269_ (
    .A(_047_),
    .B(_049_),
    .Y(data_out_sint[3])
  );
  NOR _270_ (
    .A(counter[0]),
    .B(lane_0[4]),
    .Y(_050_)
  );
  NAND _271_ (
    .A(counter[0]),
    .B(_007_),
    .Y(_051_)
  );
  NAND _272_ (
    .A(valid_0),
    .B(_051_),
    .Y(_052_)
  );
  NOR _273_ (
    .A(_050_),
    .B(_052_),
    .Y(data_out_sint[4])
  );
  NOR _274_ (
    .A(counter[0]),
    .B(lane_0[5]),
    .Y(_053_)
  );
  NAND _275_ (
    .A(counter[0]),
    .B(_008_),
    .Y(_054_)
  );
  NAND _276_ (
    .A(valid_0),
    .B(_054_),
    .Y(_055_)
  );
  NOR _277_ (
    .A(_053_),
    .B(_055_),
    .Y(data_out_sint[5])
  );
  NOR _278_ (
    .A(counter[0]),
    .B(lane_0[6]),
    .Y(_056_)
  );
  NAND _279_ (
    .A(counter[0]),
    .B(_009_),
    .Y(_057_)
  );
  NAND _280_ (
    .A(valid_0),
    .B(_057_),
    .Y(_058_)
  );
  NOR _281_ (
    .A(_056_),
    .B(_058_),
    .Y(data_out_sint[6])
  );
  NOR _282_ (
    .A(counter[0]),
    .B(lane_0[7]),
    .Y(_059_)
  );
  NAND _283_ (
    .A(counter[0]),
    .B(_010_),
    .Y(_060_)
  );
  NAND _284_ (
    .A(valid_0),
    .B(_060_),
    .Y(_061_)
  );
  NOR _285_ (
    .A(_059_),
    .B(_061_),
    .Y(data_out_sint[7])
  );
  NOR _286_ (
    .A(counter[0]),
    .B(lane_0[8]),
    .Y(_062_)
  );
  NAND _287_ (
    .A(counter[0]),
    .B(_011_),
    .Y(_063_)
  );
  NAND _288_ (
    .A(valid_0),
    .B(_063_),
    .Y(_064_)
  );
  NOR _289_ (
    .A(_062_),
    .B(_064_),
    .Y(data_out_sint[8])
  );
  NOR _290_ (
    .A(counter[0]),
    .B(lane_0[9]),
    .Y(_065_)
  );
  NAND _291_ (
    .A(counter[0]),
    .B(_012_),
    .Y(_066_)
  );
  NAND _292_ (
    .A(valid_0),
    .B(_066_),
    .Y(_067_)
  );
  NOR _293_ (
    .A(_065_),
    .B(_067_),
    .Y(data_out_sint[9])
  );
  NOR _294_ (
    .A(counter[0]),
    .B(lane_0[10]),
    .Y(_068_)
  );
  NAND _295_ (
    .A(counter[0]),
    .B(_013_),
    .Y(_069_)
  );
  NAND _296_ (
    .A(valid_0),
    .B(_069_),
    .Y(_070_)
  );
  NOR _297_ (
    .A(_068_),
    .B(_070_),
    .Y(data_out_sint[10])
  );
  NOR _298_ (
    .A(counter[0]),
    .B(lane_0[11]),
    .Y(_071_)
  );
  NAND _299_ (
    .A(counter[0]),
    .B(_014_),
    .Y(_072_)
  );
  NAND _300_ (
    .A(valid_0),
    .B(_072_),
    .Y(_073_)
  );
  NOR _301_ (
    .A(_071_),
    .B(_073_),
    .Y(data_out_sint[11])
  );
  (* src = "byte_unstriping_sintetizado.v:35" *)
  DFF _302_ (
    .C(clk_2f),
    .D(_000_[0]),
    .Q(counter[0])
  );
  (* src = "byte_unstriping_sintetizado.v:35" *)
  DFF _303_ (
    .C(clk_2f),
    .D(_000_[1]),
    .Q(counter[1])
  );
endmodule
