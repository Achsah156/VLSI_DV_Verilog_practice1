`include "design.v"
module mux_4x1_tb;

reg p, q, r, s, t, u;
wire v;

mux_4x1 uut (
    .i0(p), .i1(q), .i2(r), .i3(s),
    .s0(t), .s1(u),
    .y(v)
);

initial begin
    $display("i0 i1 i2 i3 | s1 s0 | y");
    $monitor(" %b  %b  %b  %b |  %b  %b | %b", p, q, r, s, t, u, v);

    p=1; q=0; r=0; s=0;
    t=0; u=0; #10;

    p=1; q=1; r=0; s=0;
    t=0; u=1; #10;

    p=0; q=0; r=1; s=0;
    t=1; u=0; #10;

    p=0; q=0; r=0; s=1;
    t=1; u=1; #10;

    $finish;
end

endmodule

