module test_ask;
  reg clk;
  reg reset_n;
  reg data_in;
  reg load;
  wire m_ser_out;
  wire ask_code_out;
  m_ser m_ser(clk,reset_n,load,m_ser_out);
  ask ask(clk,reset_n,m_ser_out,ask_code_out);
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
    #10 clk=~clk;
  end
endmodule
  