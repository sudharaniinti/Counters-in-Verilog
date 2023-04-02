///////////////////////////////////////////////
//Main Module
`timescale 1ns / 1ps
module Upcounter_2(
    input clk,
    input reset,
    output [3:0]count
    );
    Toggle_D_FF D1(clk,reset,count[0]);
    Toggle_D_FF D2(count[0],reset,count[1]);
    Toggle_D_FF D3(count[1],reset,count[2]);
    Toggle_D_FF D4(count[2],reset,count[3]);
endmodule
///////////////////////////////////////////////
//Sub Module
`timescale 1ns / 1ps
module Toggle_D_FF(
    input clk,
    input reset,
    output reg Q
    );
    always@(negedge clk) begin
        if(reset)
            Q<=0;
        else
            Q<=~Q;
    end
endmodule
///////////////////////////////////////////////
//Test Bench
module Upcounter2_Tb();
    reg clk;
    reg reset;
    wire [3:0]count;
    Upcounter_2 DUT(clk,reset,count);
    initial begin
        clk=0;
        reset=1;//Resets the counter to 0
     end   
     always #5 clk=~clk;
     initial #7 reset=0;
endmodule
