module dpsk_code(clk,reset_n,
m_ser_code_in,
dpsk_code_out,
dds_sin_data_in2,
dds_sin_data_in3,
dpsk_code_sin_out);
  input clk;
  input reset_n;
  input m_ser_code_in;
  input[7:0] dds_sin_data_in2;
  input[7:0] dds_sin_data_in3;
  output dpsk_code_out;
  output[7:0]dpsk_code_sin_out;
  wire clk;
  wire reset_n;
  wire m_ser_code_in;
  wire[7:0] dds_sin_data_in2;
  wire[7:0] dds_sin_data_in3;
  reg dpsk_code_reg;
  reg [2:0]count;
  

  always@(posedge clk or negedge reset_n)
  begin
    if(!reset_n)
      begin
        dpsk_code_reg<=1'b0;
      end
    else
      dpsk_code_reg<=dpsk_code_reg ^ m_ser_code_in;
    end
  assign dpsk_code_out=dpsk_code_reg;
  assign dpsk_code_sin_out=(dpsk_code_reg)? dds_sin_data_in3 : dds_sin_data_in2;
endmodule