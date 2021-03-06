/* Generated by Yosys 0.9 (git sha1 1979e0b) */

(* top =  1  *)
(* src = "serial_parallel_e.v:1" *)
module serial_parallel_e(clk_32f, reset, Data_in, valid_out_e, Data_out_e);
  (* src = "serial_parallel_e.v:13" *)
  reg [1:0] _00_;
  (* src = "serial_parallel_e.v:13" *)
  reg [7:0] _01_;
  (* src = "serial_parallel_e.v:13" *)
  reg _02_;
  (* src = "serial_parallel_e.v:13" *)
  reg [2:0] _03_;
  (* src = "serial_parallel_e.v:13" *)
  reg [7:0] _04_;
  (* src = "serial_parallel_e.v:13" *)
  reg _05_;
  (* src = "serial_parallel_e.v:24" *)
  reg [1:0] _06_;
  (* src = "serial_parallel_e.v:24" *)
  reg [7:0] _07_;
  (* src = "serial_parallel_e.v:24" *)
  reg _08_;
  (* src = "serial_parallel_e.v:24" *)
  reg [2:0] _09_;
  (* src = "serial_parallel_e.v:24" *)
  reg [7:0] _10_;
  (* src = "serial_parallel_e.v:24" *)
  reg _11_;
  wire [3:0] _12_;
  wire [1:0] _13_;
  wire _14_;
  wire [7:0] _15_;
  wire _16_;
  (* src = "serial_parallel_e.v:14" *)
  wire _17_;
  (* src = "serial_parallel_e.v:29" *)
  wire _18_;
  (* src = "serial_parallel_e.v:81" *)
  wire _19_;
  (* src = "serial_parallel_e.v:10" *)
  reg [1:0] BC_count;
  (* src = "serial_parallel_e.v:4" *)
  input Data_in;
  (* src = "serial_parallel_e.v:6" *)
  output [7:0] Data_out_e;
  reg [7:0] Data_out_e;
  (* src = "serial_parallel_e.v:11" *)
  reg active;
  (* src = "serial_parallel_e.v:2" *)
  input clk_32f;
  (* src = "serial_parallel_e.v:9" *)
  reg [2:0] contador;
  (* src = "serial_parallel_e.v:8" *)
  reg [7:0] memoria;
  (* src = "serial_parallel_e.v:3" *)
  input reset;
  (* src = "serial_parallel_e.v:5" *)
  output valid_out_e;
  reg valid_out_e;
  assign _12_[0] = _15_[0] |(* src = "serial_parallel_e.v:81" *)  _15_[1];
  assign _12_[1] = _15_[2] |(* src = "serial_parallel_e.v:81" *)  _15_[3];
  assign _12_[2] = _15_[4] |(* src = "serial_parallel_e.v:81" *)  _15_[5];
  assign _12_[3] = _15_[6] |(* src = "serial_parallel_e.v:81" *)  _15_[7];
  assign _13_[0] = _12_[0] |(* src = "serial_parallel_e.v:81" *)  _12_[1];
  assign _13_[1] = _12_[2] |(* src = "serial_parallel_e.v:81" *)  _12_[3];
  assign _16_ = _13_[0] |(* src = "serial_parallel_e.v:81" *)  _13_[1];
  assign _19_ = ~(* src = "serial_parallel_e.v:81" *) _16_;
  assign _17_ = ~(* src = "serial_parallel_e.v:14" *) reset;
  assign _15_[2] = memoria[2] ^(* src = "serial_parallel_e.v:81" *)  1'h1;
  assign _15_[3] = memoria[3] ^(* src = "serial_parallel_e.v:81" *)  1'h1;
  assign _15_[4] = memoria[4] ^(* src = "serial_parallel_e.v:81" *)  1'h1;
  assign _15_[5] = memoria[5] ^(* src = "serial_parallel_e.v:81" *)  1'h1;
  assign _15_[7] = memoria[7] ^(* src = "serial_parallel_e.v:81" *)  1'h1;
  always @* begin
    _03_ = contador;
    _00_ = BC_count;
    _02_ = active;
    _01_ = Data_out_e;
    _04_ = memoria;
    _05_ = valid_out_e;
    (* src = "serial_parallel_e.v:14" *)
    casez (_17_)
      /* src = "serial_parallel_e.v:14" */
      1'h1:
        begin
          _05_ = 1'h0;
          _01_ = 8'h00;
          _04_ = 8'h00;
          _03_ = 3'h7;
          _00_ = 2'h0;
          _02_ = 1'h0;
        end
      default:
          /* empty */;
    endcase
  end
  always @* begin
      contador <= _03_;
      BC_count <= _00_;
      active <= _02_;
      Data_out_e <= _01_;
      memoria <= _04_;
      valid_out_e <= _05_;
  end
  always @* begin
    _09_ = contador;
    _06_ = BC_count;
    _08_ = active;
    _07_ = Data_out_e;
    _10_ = memoria;
    _11_ = valid_out_e;
    (* src = "serial_parallel_e.v:25" *)
    casez (active)
      /* src = "serial_parallel_e.v:25" */
      1'h1:
          (* src = "serial_parallel_e.v:26" *)
          casez (contador)
            /* src = "serial_parallel_e.v:27" */
            3'h0:
              begin
                _09_ = 3'h1;
                _10_ = { Data_in, 7'h00 };
                (* src = "serial_parallel_e.v:29" *)
                casez (_18_)
                  /* src = "serial_parallel_e.v:29" */
                  1'h1:
                    begin
                      _11_ = 1'h0;
                      _07_ = 8'h00;
                    end
                  /* src = "serial_parallel_e.v:33" */
                  default:
                    begin
                      _11_ = 1'h1;
                      _07_ = memoria;
                    end
                endcase
              end
            /* src = "serial_parallel_e.v:40" */
            3'h1:
              begin
                _09_ = 3'h2;
                _10_ = { memoria[7], Data_in, 6'h00 };
              end
            /* src = "serial_parallel_e.v:45" */
            3'h2:
              begin
                _09_ = 3'h3;
                _10_ = { memoria[7:6], Data_in, 5'h00 };
              end
            /* src = "serial_parallel_e.v:50" */
            3'h3:
              begin
                _09_ = 3'h4;
                _10_ = { memoria[7:5], Data_in, 4'h0 };
              end
            /* src = "serial_parallel_e.v:55" */
            3'h4:
              begin
                _09_ = 3'h5;
                _10_ = { memoria[7:4], Data_in, 3'h0 };
              end
            /* src = "serial_parallel_e.v:60" */
            3'h5:
              begin
                _09_ = 3'h6;
                _10_ = { memoria[7:3], Data_in, 2'h0 };
              end
            /* src = "serial_parallel_e.v:65" */
            3'h6:
              begin
                _09_ = 3'h7;
                _10_ = { memoria[7:2], Data_in, 1'h0 };
              end
            /* src = "serial_parallel_e.v:70" */
            3'h7:
              begin
                _09_ = 3'h0;
                _10_ = { memoria[7:1], Data_in };
              end
            default:
                /* empty */;
          endcase
      /* src = "serial_parallel_e.v:77" */
      default:
          (* src = "serial_parallel_e.v:78" *)
          casez (contador)
            /* src = "serial_parallel_e.v:79" */
            3'h0:
              begin
                _09_ = 3'h1;
                _10_ = { Data_in, 7'h00 };
                (* src = "serial_parallel_e.v:81" *)
                casez (_19_)
                  /* src = "serial_parallel_e.v:81" */
                  1'h1:
                      (* src = "serial_parallel_e.v:82" *)
                      casez (BC_count)
                        /* src = "serial_parallel_e.v:83" */
                        2'h0:
                            _06_ = 2'h1;
                        /* src = "serial_parallel_e.v:84" */
                        2'h1:
                            _06_ = 2'h2;
                        /* src = "serial_parallel_e.v:85" */
                        2'h2:
                            _06_ = 2'h3;
                        /* src = "serial_parallel_e.v:86" */
                        2'h3:
                            _08_ = 1'h1;
                        default:
                            /* empty */;
                      endcase
                  default:
                      /* empty */;
                endcase
              end
            /* src = "serial_parallel_e.v:92" */
            3'h1:
              begin
                _09_ = 3'h2;
                _10_ = { memoria[7], Data_in, 6'h00 };
              end
            /* src = "serial_parallel_e.v:97" */
            3'h2:
              begin
                _09_ = 3'h3;
                _10_ = { memoria[7:6], Data_in, 5'h00 };
              end
            /* src = "serial_parallel_e.v:102" */
            3'h3:
              begin
                _09_ = 3'h4;
                _10_ = { memoria[7:5], Data_in, 4'h0 };
              end
            /* src = "serial_parallel_e.v:107" */
            3'h4:
              begin
                _09_ = 3'h5;
                _10_ = { memoria[7:4], Data_in, 3'h0 };
              end
            /* src = "serial_parallel_e.v:112" */
            3'h5:
              begin
                _09_ = 3'h6;
                _10_ = { memoria[7:3], Data_in, 2'h0 };
              end
            /* src = "serial_parallel_e.v:117" */
            3'h6:
              begin
                _09_ = 3'h7;
                _10_ = { memoria[7:2], Data_in, 1'h0 };
              end
            /* src = "serial_parallel_e.v:122" */
            3'h7:
              begin
                _09_ = 3'h0;
                _10_ = { memoria[7:1], Data_in };
              end
            default:
                /* empty */;
          endcase
    endcase
  end
  always @(posedge clk_32f) begin
      contador <= _09_;
      BC_count <= _06_;
      active <= _08_;
      Data_out_e <= _07_;
      memoria <= _10_;
      valid_out_e <= _11_;
  end
  assign _18_ = _19_;
  assign _15_[0] = memoria[0];
  assign _15_[1] = memoria[1];
  assign _15_[6] = memoria[6];
endmodule
