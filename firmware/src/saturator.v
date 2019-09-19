module saturator #(
    parameter ISZ = 17,
              OSZ = 12
)
(
    input  signed [ISZ - 1:0] in,
    output signed [OSZ - 1:0] out
);

    wire min =  in[ISZ - 1] & ~&in[ISZ - 2:OSZ - 1];
    wire max = ~in[ISZ - 1] &  |in[ISZ - 2:OSZ - 1];

    reg [OSZ - 1:0] out;

    always @(min or max or in)
        case({max, min})
            2'b01:   out = {1'b1, {(OSZ - 1){1'b0}}};
            2'b10:   out = {1'b0, {(OSZ - 1){1'b1}}};
            default: out = in[OSZ - 1:0];
        endcase
endmodule

