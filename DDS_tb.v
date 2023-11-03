`timescale 1ns/100ps
 
module DDS_tb;
	reg clk;
	reg reset_n;
	reg [31:0] Fword;
	reg [10:0] Pword;//Rom��ַ11λ
	wire [9:0] DA_Data;
	
	DDS DDS(
	.clk(clk),//ʱ��
	.reset_n(reset_n),//��λ
	.Fword(Fword),//Ƶ�ʿ�����
	.Pword(Pword),//��λ������
	.DA_Data(DA_Data)//�������
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