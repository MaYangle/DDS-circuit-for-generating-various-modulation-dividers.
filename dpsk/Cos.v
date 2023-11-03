module Cos(
	input clk,
	input rst,
	output reg[7:0] CosWave
	);
	
	reg [4:0] count = 0;
	
	always@ (posedge clk or posedge rst)begin
		
		if (~rst) begin
			count = 0;
		end 
		else begin
			if (count == 19) begin
				count = 0;
			end 
			else begin
				count = count +1;
			end
		end
	
	case(count)
	0:begin CosWave <= 255;end
	1:begin CosWave <= 250;end
	2:begin CosWave <= 231;end
	3:begin CosWave <= 203;end
	4:begin CosWave <= 167;end
	5:begin CosWave <= 128;end
	6:begin CosWave <= 88;end
	7:begin CosWave <= 53;end
	8:begin CosWave <= 24;end
	9:begin CosWave <= 6;end
	10:begin CosWave <= 0;end
	11:begin CosWave <= 6;end
	12:begin CosWave <= 24;end
	13:begin CosWave <= 53;end
	14:begin CosWave <= 88;end
	15:begin CosWave <= 128;end
	16:begin CosWave <= 167;end
	17:begin CosWave <= 203;end
	18:begin CosWave <= 231;end
	19:begin CosWave <= 250;end
	default:begin CosWave <= 128;end
	endcase
	
	end

endmodule