`include "design.v"

module encoder4x2_tb;

  reg p, q, r, s;
  wire z0, z1;

  encoder4x2 uut(.i0(p), .i1(q), .i2(r), .i3(s), .y0(z0), .y1(z1));

  initial begin
    // Only one input should be high at a time (valid encoder behavior)

    p=1; q=0; r=0; s=0; #10; // Output: 00
    $display("Input: 0001 -> Output: %b%b", z1, z0);

    p=0; q=1; r=0; s=0; #10; // Output: 01
    $display("Input: 0010 -> Output: %b%b", z1, z0);

    p=0; q=0; r=1; s=0; #10; // Output: 10
    $display("Input: 0100 -> Output: %b%b", z1, z0);

    p=0; q=0; r=0; s=1; #10; // Output: 11
    $display("Input: 1000 -> Output: %b%b", z1, z0);

    $finish;
  end
endmodule

