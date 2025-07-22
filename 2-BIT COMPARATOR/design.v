module comparator_2bit (
  input A1, A0, B1, B0,
  output E, G, L
);

  wire e1, e0, na1, nb1, na0, nb0 ,xor1, xor0, a1b1, a0b0, g1, g2, l1, l2;

  // XOR gates for equality
  xor2 x1(xor1, A1, B1);
  not1 n1(e1, xor1);

  xor2 x2(xor0, A0, B0);
  not1 n2(e0, xor0);

  and2 aequal(E, e1, e0);  // A == B

  // A > B logic: (A1 & ~B1) | (e1 & A0 & ~B0)
  not1 n3(nb1, B1);
  and2 a1g(a1b1, A1, nb1);

  not1 n4(nb0, B0);
  and2 a0b(a0b0, A0, nb0);
  and2 ag2(g2, e1, a0b0);

  or2 ag(G, a1b1, g2);

  // A < B logic: (~A1 & B1) | (e1 & ~A0 & B0)
  not1 n5(na1, A1);
  and2 l1a(l1, na1, B1);

  not1 n6(na0, A0);
wire l2_temp;
and2 l2a(l2_temp, e1, na0);
and2 l2b(l2, l2_temp, B0);
 
  or2 al(L, l1, l2);

endmodule

