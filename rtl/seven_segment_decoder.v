module seven_segment_decoder (
    input  wire [3:0] code,

    output reg        seg_a,
    output reg        seg_b,
    output reg        seg_c,
    output reg        seg_d,
    output reg        seg_e,
    output reg        seg_f,
    output reg        seg_g
);

    always @(*) begin
        case (code)
            4'b0000: {seg_a, seg_b, seg_c, seg_d, seg_e, seg_f, seg_g} = 7'b0000000; // blank
            4'b0001: {seg_a, seg_b, seg_c, seg_d, seg_e, seg_f, seg_g} = 7'b1110000; // 7
            4'b0010: {seg_a, seg_b, seg_c, seg_d, seg_e, seg_f, seg_g} = 7'b1001110; // C
            4'b0100: {seg_a, seg_b, seg_c, seg_d, seg_e, seg_f, seg_g} = 7'b1111111; // 8
            4'b1000: {seg_a, seg_b, seg_c, seg_d, seg_e, seg_f, seg_g} = 7'b0011111; // b
            default: {seg_a, seg_b, seg_c, seg_d, seg_e, seg_f, seg_g} = 7'b0000000; // invalid code -> blank
        endcase
    end

endmodule
