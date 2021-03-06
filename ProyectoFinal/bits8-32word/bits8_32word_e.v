/* Generated by Yosys 0.9 (git sha1 1979e0b) */

(* top =  1  *)
(* src = "bits8_32word_e.v:1" *)
module bits8_32word_e(clk_4f_e, reset, valid_in, Data_in, valid_out_e, Data_out_e);
  (* src = "bits8_32word_e.v:14" *)
  reg [31:0] _00_;
  (* src = "bits8_32word_e.v:14" *)
  reg [1:0] _01_;
  (* src = "bits8_32word_e.v:14" *)
  reg _02_;
  (* src = "bits8_32word_e.v:14" *)
  reg [31:0] _03_;
  (* src = "bits8_32word_e.v:14" *)
  reg _04_;
  (* src = "bits8_32word_e.v:14" *)
  reg _05_;
  (* src = "bits8_32word_e.v:25" *)
  reg [31:0] _06_;
  (* src = "bits8_32word_e.v:25" *)
  reg [1:0] _07_;
  (* src = "bits8_32word_e.v:25" *)
  reg _08_;
  (* src = "bits8_32word_e.v:25" *)
  reg [31:0] _09_;
  (* src = "bits8_32word_e.v:25" *)
  reg _10_;
  (* src = "bits8_32word_e.v:25" *)
  reg _11_;
  (* src = "bits8_32word_e.v:15" *)
  wire _12_;
  (* src = "bits8_32word_e.v:5" *)
  input [7:0] Data_in;
  (* src = "bits8_32word_e.v:7" *)
  output [31:0] Data_out_e;
  reg [31:0] Data_out_e;
  (* src = "bits8_32word_e.v:2" *)
  input clk_4f_e;
  (* src = "bits8_32word_e.v:9" *)
  reg [1:0] contador;
  (* src = "bits8_32word_e.v:12" *)
  reg down;
  (* src = "bits8_32word_e.v:10" *)
  reg [31:0] memoria;
  (* src = "bits8_32word_e.v:3" *)
  input reset;
  (* src = "bits8_32word_e.v:11" *)
  reg valid;
  (* src = "bits8_32word_e.v:4" *)
  input valid_in;
  (* src = "bits8_32word_e.v:6" *)
  output valid_out_e;
  reg valid_out_e;
  assign _12_ = ~(* src = "bits8_32word_e.v:15" *) reset;
  always @* begin
    _01_ = contador;
    _03_ = memoria;
    _04_ = valid;
    _05_ = valid_out_e;
    _00_ = Data_out_e;
    _02_ = down;
    (* src = "bits8_32word_e.v:15" *)
    casez (_12_)
      /* src = "bits8_32word_e.v:15" */
      1'h1:
        begin
          _05_ = 1'h0;
          _00_ = 32'd0;
          _01_ = 2'h3;
          _03_ = 32'd0;
          _04_ = 1'h0;
          _02_ = 1'h0;
        end
      default:
          /* empty */;
    endcase
  end
  always @* begin
      contador <= _01_;
      memoria <= _03_;
      valid <= _04_;
      valid_out_e <= _05_;
      Data_out_e <= _00_;
      down <= _02_;
  end
  always @* begin
    _07_ = contador;
    _09_ = memoria;
    _10_ = valid;
    _11_ = valid_out_e;
    _06_ = Data_out_e;
    _08_ = down;
    (* src = "bits8_32word_e.v:26" *)
    casez (valid_in)
      /* src = "bits8_32word_e.v:26" */
      1'h1:
          (* src = "bits8_32word_e.v:27" *)
          casez (contador)
            /* src = "bits8_32word_e.v:28" */
            2'h0:
              begin
                _11_ = valid;
                _06_ = memoria;
                _09_ = { Data_in, 24'h000000 };
                _07_ = 2'h1;
              end
            /* src = "bits8_32word_e.v:35" */
            2'h1:
              begin
                _09_ = { memoria[31:24], Data_in, 16'h0000 };
                _07_ = 2'h2;
              end
            /* src = "bits8_32word_e.v:40" */
            2'h2:
              begin
                _09_ = { memoria[31:16], Data_in, 8'h00 };
                _07_ = 2'h3;
              end
            /* src = "bits8_32word_e.v:45" */
            2'h3:
              begin
                _09_ = { memoria[31:8], Data_in };
                _10_ = 1'h1;
                _07_ = 2'h0;
                _08_ = 1'h0;
              end
            default:
                /* empty */;
          endcase
      /* src = "bits8_32word_e.v:54" */
      default:
          (* src = "bits8_32word_e.v:55" *)
          casez (contador)
            /* src = "bits8_32word_e.v:56" */
            2'h0:
              begin
                _11_ = valid;
                _06_ = memoria;
                (* src = "bits8_32word_e.v:60" *)
                casez (down)
                  /* src = "bits8_32word_e.v:60" */
                  1'h1:
                      _07_ = 2'h0;
                  /* src = "bits8_32word_e.v:61" */
                  default:
                      _07_ = 2'h1;
                endcase
              end
            /* src = "bits8_32word_e.v:63" */
            2'h1:
                _07_ = 2'h2;
            /* src = "bits8_32word_e.v:64" */
            2'h2:
                _07_ = 2'h3;
            /* src = "bits8_32word_e.v:65" */
            2'h3:
              begin
                _09_ = 32'd0;
                _10_ = 1'h0;
                _07_ = 2'h0;
                _08_ = 1'h1;
              end
            default:
                /* empty */;
          endcase
    endcase
  end
  always @(posedge clk_4f_e) begin
      contador <= _07_;
      memoria <= _09_;
      valid <= _10_;
      valid_out_e <= _11_;
      Data_out_e <= _06_;
      down <= _08_;
  end
endmodule
