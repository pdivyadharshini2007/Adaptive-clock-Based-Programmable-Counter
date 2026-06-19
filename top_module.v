`timescale 1ns / 1ps

//=========================================================
// Module: top_module
// Description:
// Top-level module for the Adaptive Clock-Based
// Programmable Counter.
//=========================================================

module top_module(
    input clk,
    input reset,
    input enable,
    input [1:0] sel,
    input [3:0] N,
    output [3:0] count
);

wire clk_div2;
wire clk_div4;
wire selected_clk;

// Clock Divider
clock_divider u1(
    .clk(clk),
    .reset(reset),
    .clk_div2(clk_div2),
    .clk_div4(clk_div4)
);

// Clock Multiplexer
clk_mux u2(
    .clk1(clk),
    .clk2(clk_div2),
    .clk3(clk_div4),
    .sel(sel),
    .clk_out(selected_clk)
);

// Programmable MOD-N Counter
mod_n_counter u3(
    .clk(selected_clk),
    .reset(reset),
    .enable(enable),
    .N(N),
    .count(count)
);

endmodule
