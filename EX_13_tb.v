`timescale 1 ns/1 ns

module testbench;

reg		reset, clk;
reg 	[7:0]	a, b, c;
wire	[15:0]  g;

EX_13 EX13_instance(
	.clk(clk), .reset(reset),
	.a(a), .b(b), .c(c), .g(g));

// set up clk with 50 ns period 20 MHz
parameter clkper = 50;
initial
begin
	clk = 1;	// Time = 0
end

always 
begin
	#(clkper / 2)  clk = ~clk;
end

initial
begin
 reset	= 1'b0;		// Time = 0
 a	= 8'h12;
 b	= 8'h01;
 c	= 8'h02;
 #70;			// Time = 70
 reset  = 1'b1;
 #55;			// Time = 125
 a	= 8'h24;
 b	= 8'h02;
 c	= 8'h04;
 #50;           // Time = 175
 a  = 8'h36;
 b  = 8'h03;
 c  = 8'h06;
 #50            // Time = 225
 a  = 8'h50;
 b  = 8'h04;
 c  = 8'h10;
 #50            // Time = 275
 a  = 8'h62;
 b  = 8'h05;
 c  = 8'h12;
 #50            // Time = 325
 a  = 8'h74;
 b  = 8'h06;
 c  = 8'h14;
 #50            // Time = 375
 a  = 8'h74;
 
 
end
endmodule
