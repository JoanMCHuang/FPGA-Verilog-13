`timescale 1 ns/1 ns

module EX_13 (clk, reset, a, b, c, g);
input		clk, reset;
input	[7:0]	a, b, c;
output	[15:0]  g;
wire	[15:0]  g;

reg [15:0] reg_a, reg_b;
reg	[15:0]	reg_1, reg_2, reg_3, reg_4 ;

// wire和reg不能同時定義

assign g = reg_4;    // (語法)輸入/輸出訊號在左邊,暫存器在右邊 

always @(posedge clk or negedge reset)
begin
  if (!reset) begin
    reg_a   = #1 8'h00;
    reg_b   = #1 8'h00;
    reg_1   = #1 16'h0000;
    reg_2   = #1 8'h00;
	reg_3   = #1 16'h0000;
	reg_4   = #1 16'h0000;
  end
  else begin
    reg_4   = #1 reg_3 + 16'h004e;
	reg_3   = #1 reg_1 + reg_2;
	reg_2   = #1 reg_2;
	reg_1   = #1 reg_a * reg_b;
	reg_a   = #1 a;
    reg_b   = #1 b;
  end
end

endmodule
