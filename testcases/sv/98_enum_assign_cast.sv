module veryl_testcase_veryl_testcase_Module98 (
    input  var logic         clk,
    input  var logic [2-1:0] i  ,
    output var logic         o0 ,
    output var logic         o1 ,
    output var logic         o2 ,
    output var logic         o3 
);
    typedef enum logic [2-1:0] {
        Color_Red,
        Color_Green,
        Color_Blue
    } Color;

    Color c0;
    Color c1;
    Color c2;
    Color c3;
    always_comb c0 = Color'(i);
    always_comb begin
        c1 = Color'(2'd2);
        c3 = Color_Green;
    end
    always_ff @ (posedge clk) begin
        c2 <= Color'(i);
    end
    always_comb o0 = c0 == Color_Blue;
    always_comb o1 = c1 == Color_Blue;
    always_comb o2 = c2 == Color_Blue;
    always_comb o3 = c3 == c0;
endmodule
//# sourceMappingURL=../map/98_enum_assign_cast.sv.map
