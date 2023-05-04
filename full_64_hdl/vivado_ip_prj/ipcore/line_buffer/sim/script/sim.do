vlib work
vcom -93 -work work ../../src/line_buffer.vhd
vcom -93 -work work ../src/line_buffer_tb.vhd
vsim -voptargs=+acc line_buffer_tb
do wave.do
run 20 us