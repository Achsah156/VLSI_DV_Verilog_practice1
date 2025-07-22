`include "design.v"
`include "basicgates.v"
module tb_comparator_2bit;

  reg p, q, r, s;
  wire e, g, l;

  comparator_2bit uut (.A1(p), .A0(q), .B1(r), .B0(s), .E(e), .G(g), .L(l));

  initial begin
    $display("A1 A0 B1 B0 | E G L");
    $monitor(" %b  %b  %b  %b | %b %b %b", p, q, r, s, e, g, l);

    p=0; q=0; r=0; s=0; #10;
    p=0; q=1; r=0; s=0; #10;
    p=1; q=0; r=1; s=1; #10;
    p=1; q=1; r=1; s=1; #10;
    p=0; q=1; r=1; s=0; #10;
    $finish;
  end

endmodule

