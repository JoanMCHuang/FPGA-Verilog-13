`timescale 1 ns/1 ns

module EX_13 (a, b, c, clk, reset, g);
input 		clk, reset;
input	[7:0]	a, b, c;
output	[15:0]	g;

reg [15:0] reg_a, reg_b;
reg	[15:0]	reg_1, reg_2, reg_3, reg_4, g;

always @ (posedge clk or negedge reset)
begin
  if(!reset) begin
    reg_a <= #1 8'h00;
	reg_b <= #1 8'h00;
  end
  else begin
    reg_a <= #1 a;
	reg_b <= #1 b;
  end
end
  
always @(posedge clk or negedge reset)
begin
  if (!reset)
    reg_1 <= #1 16'h0000;
  else
    reg_1 <= #1 reg_a * reg_b;
end

always @(posedge clk or negedge reset)
begin
  if (!reset) begin
    reg_2 <= #1 8'h00;
  end
  else begin
    reg_2 <= #1 reg_2;
  end
end

always @(posedge clk or negedge reset)
begin
  if (!reset)
    reg_3 <= #1 16'h0000;
  else
    reg_3 <= #1 reg_1 + reg_2;
end

always @(posedge clk or negedge reset)
begin
  if (!reset)
    reg_4 <= #1 16'h0000;
  else
    reg_4 <= #1 reg_3 + 16'h004e;
end

endmodule