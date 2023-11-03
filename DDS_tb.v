`timescale 1ns/100ps
 
module DDS_tb;
	reg clk;
	reg reset_n;
	reg [31:0] Fword;
	reg [10:0] Pword;//Rom地址11位
	wire [9:0] DA_Data;
	
	DDS DDS(
	.clk(clk),//时钟
	.reset_n(reset_n),//复位
	.Fword(Fword),//频率控制字
	.Pword(Pword),//相位控制字
	.DA_Data(DA_Data)//数据输出
	);
	
	initial clk = 1;
	always #10 clk = ~clk;
	
	initial 
		begin
			reset_n = 0;
			Fword = 1000000;
			Pword = 0;
			#1;
			reset_n = 1;
		end
		
 
endmodule