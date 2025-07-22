module comparator_1bit (
    input A, B,
    output E,G, L
);

    wire nA, nB, A_and_nB, nA_and_B;

    not (nA, A);
    not (nB, B);
    and (A_and_nB, A, nB);
    and (nA_and_B, nA, B);
    xnor (E, A, B);
    assign G = A_and_nB;
    assign L = nA_and_B;

endmodule

