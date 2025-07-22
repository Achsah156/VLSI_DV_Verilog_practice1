module encoder4x2(
  input i0, i1, i2, i3,
  output y0, y1
);

 
  or(y0, i1, i3);          // y0 = i1 + i3
  or(y1, i2, i3);          // y1 = i2 + i3

endmodule

