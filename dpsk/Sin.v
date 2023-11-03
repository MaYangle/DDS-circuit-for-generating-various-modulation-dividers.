module Sin(
  input clk,
  input rst,
  output reg[7:0] SinWave
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
  0:begin SinWave <= 128;end
  1:begin SinWave <= 167;end
  2:begin SinWave <= 203;end
  3:begin SinWave <= 231;end
  4:begin SinWave <= 250;end
  5:begin SinWave <= 255;end
  6:begin SinWave <= 250;end
  7:begin SinWave <= 231;end
  8:begin SinWave <= 203;end
  9:begin SinWave <= 167;end
  10:begin SinWave <= 128;end
  11:begin SinWave <= 88;end
  12:begin SinWave <= 53;end
  13:begin SinWave <= 24;end
  14:begin SinWave <= 6;end
  15:begin SinWave <= 0;end
  16:begin SinWave <= 6;end
  17:begin SinWave <= 24;end
  18:begin SinWave <= 53;end
  19:begin SinWave <= 88;end
  default:begin SinWave <= 128;end
  endcase

  end

endmodule