module mux_2x1 (
    input  i0, i1, s,
    output  y
);

    wire w1, w2, w3;

    not (w1, s);         // w1 = ~s
    and (w2, i0, w1); // w2 = a & w1
    and (w3, i1, s);     // w3 = b & s
    or  (y, w2, w3);// y = w2 | w3

endmodule

