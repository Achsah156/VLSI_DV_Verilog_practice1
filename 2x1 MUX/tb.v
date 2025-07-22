`include "design.v"
module mux_2x1_tb;

reg p, q, r;
wire t;

mux_2x1 uut (
    .i0(p),
    .i1(q),
    .s(r),
    .y(t)
);

initial
begin
    $display("A B Sel | Y");
    $monitor("%b %b %b | %b", p, q, r, t);

    p = 0; q = 0; r = 0; #10;
    p = 0; q = 1; r = 0; #10;
    p = 1; q = 0; r = 0; #10;
    p = 1; q = 1; r = 0; #10;

    p = 0; q = 0; r = 1; #10;
    p = 0; q = 1; r = 1; #10;
    p = 1; q = 0; r = 1; #10;
    p = 1; q = 1; r = 1; #10;

    $finish;
end

endmodule

