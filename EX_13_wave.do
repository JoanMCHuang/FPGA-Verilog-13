# compile
 vlog EX_13.v
 vlog EX_13_nonblocking.v
 vlog EX_13_blocking.v

vlog EX_13_tb.v

# simulate
vsim -debugdb testbench

#probe signals
add wave -noupdate -format -logic              /testbench/EX13_instance/reset
add wave -noupdate -format -logic              /testbench/EX13_instance/clk
add wave -noupdate -format -literal -radix oct /testbench/EX13_instance/a
add wave -noupdate -format -literal -radix oct /testbench/EX13_instance/b
add wave -noupdate -format -literal -radix oct /testbench/EX13_instance/c
add wave -noupdate -format -literal -radix oct /testbench/EX13_instance/reg_a
add wave -noupdate -format -literal -radix oct /testbench/EX13_instance/reg_b
add wave -noupdate -format -literal -radix hex /testbench/EX13_instance/reg_1
add wave -noupdate -format -literal -radix hex /testbench/EX13_instance/reg_2
add wave -noupdate -format -literal -radix hex /testbench/EX13_instance/reg_3
add wave -noupdate -format -literal -radix hex /testbench/EX13_instance/reg_4
add wave -noupdate -format -literal -radix hex /testbench/EX13_instance/g
# 800 ns
run 800
