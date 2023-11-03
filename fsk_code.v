module fsk_code(clk,m_ser_code_in,fsk_code_sin_out);
  input clk;
  input m_ser_code_in;
  output fsk_code_sin_out;
  wire clk;
  wire m_ser_code_in;
  reg[2:0]cnt=3'b000;
  wire f1;
  reg f2=1'b1;
  always@(posedge clk)
  begin
    if(cnt==3'b010)
      begin
        cnt<=3'd0;
        f2<=~f2;
      end
    else
      cnt<=cnt+1'b1;
  end
  assign f1=clk;
  assign fsk_code_sin_out=(m_ser_code_in)? f2:f1;
endmodule