module test_dpsk;
  reg clk;
  reg reset_n;
  reg m_ser_out;
  wire out_clk;
  wire [7:0]SinWave;
  wire [7:0]CosWave;
  wire [7:0]dpsk_code_sin_out;
  wire dpsk_code_out;
  Sin Sin(clk,reset_n, SinWave);
  Cos Cos(clk,reset_n, CosWave); 
  div div(out_clk,clk,reset_n);
  dpsk_code dpsk_code(out_clk,reset_n,m_ser_out,dpsk_code_out,SinWave,CosWave,dpsk_code_sin_out);
  initial begin
    reset_n=1'b0;
    clk=1'b0;
    m_ser_out=1'b0;
    #30
    reset_n=1'b1;
    #1000 $stop;
  end
  always begin
    #1 clk=~clk;
  end
  always begin
    #100 m_ser_out=~m_ser_out;
  end
endmodule
  