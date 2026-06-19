`timescale 1ns / 1ps

//=========================================================
// Module: mod_n_counter
// Description:
// Programmable MOD-N Counter
// Counts from 0 to N-1 when enabled and resets
// automatically after reaching the programmed value.
//=========================================================

module mod_n_counter(
    input clk,
    input reset,
    input enable,
    input [3:0] N,
    output reg [3:0] count
);

always @(posedge clk or posedge reset) begin
    if (reset)
        count <= 4'b0000;
    else if (enable) begin
        if (count == N - 1)
            count <= 4'b0000;
        else
            count <= count + 1'b1;
    end
end

endmodule
