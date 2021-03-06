/* Generated by Yosys 0.9 (git sha1 1979e0b) */

(* top =  1  *)
(* src = "word32_8bits_e.v:1" *)
module word32_8bits_e(clk_4f_e, reset, valid_in, Data_in, valid_out_e, Data_out_e);
  (* src = "word32_8bits_e.v:11" *)
  reg [7:0] _0_;
  (* src = "word32_8bits_e.v:11" *)
  reg [1:0] _1_;
  (* src = "word32_8bits_e.v:11" *)
  reg _2_;
  (* src = "word32_8bits_e.v:19" *)
  reg [7:0] _3_;
  (* src = "word32_8bits_e.v:19" *)
  reg [1:0] _4_;
  (* src = "word32_8bits_e.v:19" *)
  reg _5_;
  (* src = "word32_8bits_e.v:12" *)
  wire _6_;
  (* src = "word32_8bits_e.v:5" *)
  input [31:0] Data_in;
  (* src = "word32_8bits_e.v:7" *)
  output [7:0] Data_out_e;
  reg [7:0] Data_out_e;
  (* src = "word32_8bits_e.v:2" *)
  input clk_4f_e;
  (* src = "word32_8bits_e.v:9" *)
  reg [1:0] contador;
  (* src = "word32_8bits_e.v:3" *)
  input reset;
  (* src = "word32_8bits_e.v:4" *)
  input valid_in;
  (* src = "word32_8bits_e.v:6" *)
  output valid_out_e;
  reg valid_out_e;
  assign _6_ = ~(* src = "word32_8bits_e.v:12" *) reset;
  always @* begin
    _1_ = contador;
    _2_ = valid_out_e;
    _0_ = Data_out_e;
    (* src = "word32_8bits_e.v:12" *)
    casez (_6_)
      /* src = "word32_8bits_e.v:12" */
      1'h1:
        begin
          _1_ = 2'h0;
          _2_ = 1'h0;
          _0_ = 8'h00;
        end
      default:
          /* empty */;
    endcase
  end
  always @* begin
      contador <= _1_;
      valid_out_e <= _2_;
      Data_out_e <= _0_;
  end
  always @* begin
    _4_ = contador;
    _5_ = valid_out_e;
    _3_ = Data_out_e;
    (* src = "word32_8bits_e.v:20" *)
    casez (valid_in)
      /* src = "word32_8bits_e.v:20" */
      1'h1:
          (* src = "word32_8bits_e.v:21" *)
          casez (contador)
            /* src = "word32_8bits_e.v:22" */
            2'h0:
              begin
                _3_ = Data_in[31:24];
                _4_ = 2'h1;
                _5_ = 1'h1;
              end
            /* src = "word32_8bits_e.v:28" */
            2'h1:
              begin
                _3_ = Data_in[23:16];
                _4_ = 2'h2;
                _5_ = 1'h1;
              end
            /* src = "word32_8bits_e.v:34" */
            2'h2:
              begin
                _3_ = Data_in[15:8];
                _4_ = 2'h3;
                _5_ = 1'h1;
              end
            /* src = "word32_8bits_e.v:40" */
            2'h3:
              begin
                _3_ = Data_in[7:0];
                _4_ = 2'h0;
                _5_ = 1'h1;
              end
            default:
                /* empty */;
          endcase
      /* src = "word32_8bits_e.v:48" */
      default:
        begin
          _4_ = 2'h0;
          _5_ = 1'h0;
          _3_ = 8'h00;
        end
    endcase
  end
  always @(posedge clk_4f_e) begin
      contador <= _4_;
      valid_out_e <= _5_;
      Data_out_e <= _3_;
  end
endmodule
