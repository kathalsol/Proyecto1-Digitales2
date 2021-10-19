/* Generated by Yosys 0.9 (git sha1 1979e0b) */

(* top =  1  *)
(* src = "byte_un_striping_e.v:1" *)
module byte_un_striping_e(clk_2f_e, reset, valid_0, lane_0, valid_1, lane_1, valid_out_e, Data_out_e);
  (* src = "byte_un_striping_e.v:13" *)
  reg [31:0] _0_;
  (* src = "byte_un_striping_e.v:13" *)
  reg _1_;
  (* src = "byte_un_striping_e.v:13" *)
  reg _2_;
  (* src = "byte_un_striping_e.v:21" *)
  reg [31:0] _3_;
  (* src = "byte_un_striping_e.v:21" *)
  reg _4_;
  (* src = "byte_un_striping_e.v:21" *)
  reg _5_;
  (* src = "byte_un_striping_e.v:14" *)
  wire _6_;
  (* src = "byte_un_striping_e.v:9" *)
  output [31:0] Data_out_e;
  reg [31:0] Data_out_e;
  (* src = "byte_un_striping_e.v:2" *)
  input clk_2f_e;
  (* src = "byte_un_striping_e.v:11" *)
  reg contador;
  (* src = "byte_un_striping_e.v:5" *)
  input [31:0] lane_0;
  (* src = "byte_un_striping_e.v:7" *)
  input [31:0] lane_1;
  (* src = "byte_un_striping_e.v:3" *)
  input reset;
  (* src = "byte_un_striping_e.v:4" *)
  input valid_0;
  (* src = "byte_un_striping_e.v:6" *)
  input valid_1;
  (* src = "byte_un_striping_e.v:8" *)
  output valid_out_e;
  reg valid_out_e;
  assign _6_ = ~(* src = "byte_un_striping_e.v:14" *) reset;
  always @* begin
    _2_ = valid_out_e;
    _0_ = Data_out_e;
    _1_ = contador;
    (* src = "byte_un_striping_e.v:14" *)
    casez (_6_)
      /* src = "byte_un_striping_e.v:14" */
      1'h1:
        begin
          _2_ = 1'h0;
          _0_ = 32'd0;
          _1_ = 1'h1;
        end
      default:
          /* empty */;
    endcase
  end
  always @* begin
      valid_out_e <= _2_;
      Data_out_e <= _0_;
      contador <= _1_;
  end
  always @* begin
    _5_ = valid_out_e;
    _3_ = Data_out_e;
    _4_ = contador;
    (* src = "byte_un_striping_e.v:22" *)
    casez (contador)
      /* src = "byte_un_striping_e.v:23" */
      1'h0:
          (* src = "byte_un_striping_e.v:25" *)
          casez (valid_0)
            /* src = "byte_un_striping_e.v:25" */
            1'h1:
              begin
                _4_ = 1'h1;
                _5_ = 1'h1;
                _3_ = lane_0;
              end
            /* src = "byte_un_striping_e.v:30" */
            default:
              begin
                _4_ = 1'h1;
                _5_ = 1'h0;
                _3_ = 32'd0;
              end
          endcase
      /* src = "byte_un_striping_e.v:36" */
      1'h1:
          (* src = "byte_un_striping_e.v:38" *)
          casez (valid_1)
            /* src = "byte_un_striping_e.v:38" */
            1'h1:
              begin
                _4_ = 1'h0;
                _5_ = 1'h1;
                _3_ = lane_1;
              end
            /* src = "byte_un_striping_e.v:43" */
            default:
              begin
                _4_ = 1'h0;
                _5_ = 1'h0;
                _3_ = 32'd0;
              end
          endcase
      default:
          /* empty */;
    endcase
  end
  always @(posedge clk_2f_e) begin
      valid_out_e <= _5_;
      Data_out_e <= _3_;
      contador <= _4_;
  end
endmodule
