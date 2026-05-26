`timescale 1ns/1ps

module tb_display_controller_top;

    reg clk;
    reg reset_n;
    reg i;

    wire seg_a;
    wire seg_b;
    wire seg_c;
    wire seg_d;
    wire seg_e;
    wire seg_f;
    wire seg_g;

    display_controller_top dut (
        .clk     (clk),
        .reset_n (reset_n),
        .i       (i),
        .seg_a   (seg_a),
        .seg_b   (seg_b),
        .seg_c   (seg_c),
        .seg_d   (seg_d),
        .seg_e   (seg_e),
        .seg_f   (seg_f),
        .seg_g   (seg_g)
    );

    initial begin
        clk = 1'b0;
        forever #5 clk = ~clk;
    end

    initial begin
        $dumpfile("display_controller_top.vcd");
        $dumpvars(0, tb_display_controller_top);

        reset_n = 1'b0;
        i = 1'b0;

        #20;
        reset_n = 1'b1;

        #10 i = 1'b0;
        #10 i = 1'b1;
        #10 i = 1'b1;
        #10 i = 1'b0;
        #10 i = 1'b0;
        #10 i = 1'b1;
        #10 i = 1'b0;
        #10 i = 1'b1;
        #10 i = 1'b0;
        #10 i = 1'b1;

        #50;

        $finish;
    end

endmodule
