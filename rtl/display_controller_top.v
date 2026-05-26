module display_controller_top (
    input  wire clk,
    input  wire reset_n,
    input  wire i,

    output wire seg_a,
    output wire seg_b,
    output wire seg_c,
    output wire seg_d,
    output wire seg_e,
    output wire seg_f,
    output wire seg_g
);

    wire w;
    wire x;
    wire y;
    wire z;

    wire [3:0] display_code;

    assign display_code = {w, x, y, z};

    moore_fsm u_moore_fsm (
        .clk     (clk),
        .reset_n (reset_n),
        .i       (i),
        .w       (w),
        .x       (x),
        .y       (y),
        .z       (z)
    );

    seven_segment_decoder u_seven_segment_decoder (
        .code  (display_code),
        .seg_a (seg_a),
        .seg_b (seg_b),
        .seg_c (seg_c),
        .seg_d (seg_d),
        .seg_e (seg_e),
        .seg_f (seg_f),
        .seg_g (seg_g)
    );

endmodule
