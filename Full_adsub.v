module Full_adsub (
    input  wire a, b, cin,      // Full Adder inputs
    input  wire x, y, bin,      // Full Subtractor inputs
    output wire sum, carry,     // Full Adder outputs
    output wire diff, borrow    // Full Subtractor outputs
);

    // Full Adder
    assign sum   = a ^ b ^ cin;
    assign carry = (a & b) | (b & cin) | (a & cin);

    // Full Subtractor
    assign diff   = x ^ y ^ bin;
    assign borrow = (~x & y) | (~(x ^ y) & bin);

endmodule
