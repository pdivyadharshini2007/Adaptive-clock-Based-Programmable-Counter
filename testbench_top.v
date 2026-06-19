`timescale 1ns / 1ps

//=========================================================
// Module: tb_top
// Description:
// Testbench for the Adaptive Clock-Based
// Programmable Counter.
//=========================================================

module tb_top;

reg clk;
reg reset;
reg enable;
reg [1:0] sel;
reg [3:0] N;
wire [3:0] count;

// Unit Under Test (UUT)
top_module uut (
    .clk(clk),
    .reset(reset),
    .enable(enable),
    .sel(sel),
    .N(N),
    .count(count)
);

// Clock Generation
always #5 clk = ~clk;

// Test Stimulus
initial begin
    clk = 0;
    reset = 1;
    enable = 1;
    sel = 2'b00;      // Fast Clock
    N = 4;

    #10 reset = 0;

    #50 sel = 2'b01;  // Medium Clock
    #50 sel = 2'b10;  // Slow Clock

    #50 N = 6;        // Change MOD value

    #50 enable = 0;   // Pause Counter
    #50 enable = 1;   // Resume Counter

    #100 $finish;
end

endmodule
