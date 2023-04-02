`timescale 1ns / 1ps
module Upcounter_1(
    input clk,
    input reset,
    output reg [3:0]count
    );
    always@(posedge clk) begin
        if(reset)
            count<=4'b0000;
         else 
            count<=count+1;
    end
endmodule
