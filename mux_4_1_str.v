module mux_4_1_str(a,b,c,d,s1,s0,y);
    input a,b,c,d,s1,s0;
    output y;
    wire y1,y2;
    
    mux_2_1 m1 (a,b,s0,y1);
    mux_2_1 m2 (c,d,s0,y2);
    mux_2_1 m3 (y1,y2,s1,y);
    
endmodule    

module mux_2_1(a,b,s,y);
    input a,b,s;
    output y;    
    assign y = (s) ? b : a;
endmodule
