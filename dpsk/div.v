module div(out_clk,clk,rst_n);
  input clk,rst_n;
  output out_clk;
  reg [3:0]counter;
  
  always@(posedge clk or negedge rst_n)
    if(~rst_n)
      counter<=0;
    else if(counter==4'b1010)
      counter<=0;
    else
      counter<=counter+1'b1;    
  assign out_clk=counter[3];
endmodule