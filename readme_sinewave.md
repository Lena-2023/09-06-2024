iverilog -o qqq sinewave.v tbsinewave.v
vvp qqq
gtkwave out.vcd