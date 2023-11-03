module ask(clk,reset_n,data_in,ask_code_out);
  input clk;
  input reset_n;
  input data_in;
  output ask_code_out;
  wire clk;
  wire reset_n;
  wire data_in;
  reg[2:0]clk_cnt;
  reg clk_div;
  always@(posedge clk or negedge reset_n)//??????
    begin
      if(!reset_n)
        begin
          clk_cnt<=3'd0;
          clk_div<=1'b0;
        end
      else if(clk_cnt==3'd1)
        begin
          clk_div<=~clk_div;
          clk_cnt<=3'd0;
        end
      else
        clk_cnt<=clk_cnt +1'b1;
    end
  assign ask_code_out=(data_in)? clk_div :1'b0;
endmodule