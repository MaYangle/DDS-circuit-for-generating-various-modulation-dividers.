module test_fsk;
  reg clk;
  reg reset_n;
  reg load;
  wire m_ser_out;
  wire ask_code_out;
  m_ser m_ser(clk,reset_n,load,m_ser_out);
  fsk_code fsk_code(clk,m_ser_out,fsk_code_sin_out);
  initial begin
    reset_n=1'b0;
    load=1'b1;
    clk=1'b0;
    #30
    reset_n=1'b1;
    #30
    load=1'b0;
    #1000 $stop;
  end
  always begin
    #30 clk=~clk;
  end
endmodule
  