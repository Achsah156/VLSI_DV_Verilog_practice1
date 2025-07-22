`include "design.v"
module tb_comparator_1bit;

    reg a, b;
    wire e, g, l;

    comparator_1bit uut (
        .A(a),
        .B(b),
        .E(e),
        .G(g),
        .L(l)
    );

    initial begin
        
        $display("A B | A_eq_B A_gt_B A_lt_B");
        $monitor("%b %b |    %b      %b      %b", a, b, e, g, l);

        a = 0; b = 0; #10;
        a = 0; b = 1; #10;
        a = 1; b = 0; #10;
        a = 1; b = 1; #10;

        $finish;
    end

endmodule

