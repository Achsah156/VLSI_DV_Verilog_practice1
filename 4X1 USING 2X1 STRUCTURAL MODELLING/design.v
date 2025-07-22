module mux_2x1 (
    input  a, b, sel,
    output  y
);

assign y = (~sel & a) | (sel & b);

endmodule

module mux_4x1 (
    input i0, i1, i2, i3, s0, s1,
    output y
);

wire y0, y1;

// First level
mux_2x1 mux1 (.a(i0), .b(i1), .sel(s0), .y(y0));
mux_2x1 mux2 (.a(i2), .b(i3), .sel(s0), .y(y1));

// Second level
mux_2x1 mux3 (.a(y0), .b(y1), .sel(s1), .y(y));

endmodule

