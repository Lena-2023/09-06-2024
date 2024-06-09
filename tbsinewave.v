`timescale 1us / 1ns

module tbsinewave();

reg clk;
reg reset;

wire [31:0]cnt;
wire cnt_edge;
wire  [15:0]sin_val;  //signed


integer freq = 0;
real my_time = 0;

sinewave sin1(clk, reset, cnt, cnt_edge, sin_val );

//assume basic clock is 10Mhz
//reg clk;
initial clk=0;
always
  #0.05 clk = ~clk;

//make reset signal at begin of simulation
//reg reset;
initial
begin
  reset = 1;
  #0.1;
  reset = 0;
end

initial
begin
  $dumpfile("out.vcd");
  $dumpvars(0,tbsinewave);
  my_time=0;

  
  freq=500;
  #10000;
  freq=1000;
  #10000;
  freq=1500;
  #10000;




  $finish;
end
endmodule