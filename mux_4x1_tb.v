module mux_4x1_tb;
    reg [3:0] i;
    reg [1:0] s;
    wire F;
    mux_4x1 UUT(.i(i), .s(s), .F(F));
    initial begin
        s[1] = 1'b0; s[0] = 1'b0; i[3] = 1'b0; i[2] = 1'b0; i[1] = 1'b0; i[0] = 1'b0;
        #10 s[1] = 1'b0; s[0] = 1'b0; i[3] = 1'b0; i[2] = 1'b0; i[1] = 1'b0; i[0] = 1'b1;
        #10 s[1] = 1'b0; s[0] = 1'b0; i[3] = 1'b1; i[2] = 1'b1; i[1] = 1'b1; i[0] = 1'b0;
        #10 s[1] = 1'b0; s[0] = 1'b0; i[3] = 1'b0; i[2] = 1'b0; i[1] = 1'b1; i[0] = 1'b0;
        #10 s[1] = 1'b0; s[0] = 1'b0; i[3] = 1'b1; i[2] = 1'b1; i[1] = 1'b0; i[0] = 1'b1;
        #10 s[1] = 1'b0; s[0] = 1'b0; i[3] = 1'b0; i[2] = 1'b1; i[1] = 1'b0; i[0] = 1'b0;
        #10 s[1] = 1'b0; s[0] = 1'b0; i[3] = 1'b1; i[2] = 1'b0; i[1] = 1'b1; i[0] = 1'b1;
        #10 s[1] = 1'b0; s[0] = 1'b0; i[3] = 1'b1; i[2] = 1'b0; i[1] = 1'b0; i[0] = 1'b0;
        #10 s[1] = 1'b0; s[0] = 1'b0; i[3] = 1'b0; i[2] = 1'b1; i[1] = 1'b1; i[0] = 1'b1;    
        #10 $finish;
    end
endmodule
