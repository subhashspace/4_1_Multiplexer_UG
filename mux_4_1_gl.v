module mux_4_1_gl(A,B,C,D,S1,S2,Y);
    input A,B,C,D,S1,S2;
    output Y;
    wire p,q,w1,w2,w3,w4;
    not (p,S1);
    not (q,S2);
    and (w1,A,p,q);
    and (w2,B,p,S2);
    and (w3,C,S1,q);
    and (w4,D,S1,S2);
    or (Y,w1,w2,w3,w4);    
endmodule