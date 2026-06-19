`timescale 1ns / 1ps

//=========================================================
// Module: clock_divider
// Description:
// Generates Divide-by-2 and Divide-by-4 clock signals
// from the input clock.
//=========================================================

module clock_divider(
    input clk,
    input reset,
    output reg clk_div2,
    output reg clk_div4
);

always @(posedge clk or posedge reset) begin
    if (reset) begin
        clk_div2 <= 1'b0;
        clk_div4 <= 1'b0;
    end
    else begin
        clk_div2 <= ~clk_div2;
        clk_div4 <= clk_div2 ^ clk_div4;
    end
end

endmodule
