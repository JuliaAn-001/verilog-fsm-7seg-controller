module moore_fsm (
    input  wire clk,
    input  wire reset_n,
    input  wire in_signal,
    output reg  w,
    output reg  x,
    output reg  y,
    output reg  z
);

    localparam S1 = 3'd1;
    localparam S2 = 3'd2;
    localparam S3 = 3'd3;
    localparam S4 = 3'd4;
    localparam S5 = 3'd5;

    reg [2:0] current_state;
    reg [2:0] next_state;

    always @(posedge clk or negedge reset_n) begin
        if (!reset_n)
            current_state <= S1;
        else
            current_state <= next_state;
    end

    always @(*) begin
        case (current_state)
            S1: next_state = (in_signal == 1'b0) ? S4 : S5;
            S2: next_state = (in_signal == 1'b0) ? S5 : S4;
            S3: next_state = (in_signal == 1'b0) ? S1 : S3;
            S4: next_state = S2;
            S5: next_state = (in_signal == 1'b0) ? S3 : S1;
            default: next_state = S1;
        endcase
    end

    always @(*) begin
        case (current_state)
            S1: {w, x, y, z} = 4'b0100;
            S2: {w, x, y, z} = 4'b0001;
            S3: {w, x, y, z} = 4'b1000;
            S4: {w, x, y, z} = 4'b0010;
            S5: {w, x, y, z} = 4'b0000;
            default: {w, x, y, z} = 4'b0000;
        endcase
    end

endmodule
