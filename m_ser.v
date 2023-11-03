module m_ser(clk,reset_n,load,m_ser_out);
  input clk;
  input reset_n;
  input load;
  output m_ser_out;
  wire clk;
  wire reset_n;
  wire load;
  reg m_ser_out;
  reg[2:0] m_code;
  always@(posedge clk or negedge reset_n)
  begin
    if(!reset_n)
      begin
        m_code<=3'b000;
        m_ser_out<=1'b0;
      end
    else
      if(load)
        begin
          m_code<=3'b001;//?????
          m_ser_out<=m_code[2];
        end
      else
        begin
          m_code[2:1]<=m_code[1:0];
          m_code[0]<=m_code[2]^ m_code[0];//?2?0????????0
          m_ser_out<=m_code[2];
        end
  end
endmodule