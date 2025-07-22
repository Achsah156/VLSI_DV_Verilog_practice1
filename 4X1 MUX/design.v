
module mux_4x1 (
    input  i0, i1, i2, i3, s0, s1,
    output y
);

    wire w1, w2, and0, and1, and2, and3;

    not (w1, s0);
    not (w2, s1);

    and (and0, i0, w1, w2); // select = 00
    and (and1, i1, s0, w2);  // select = 01
    and (and2, i2, w1, s1);  // select = 10
    and (and3, i3, s0, s1);   // select = 11

    or (y, and0, and1, and2, and3);

endmodule

