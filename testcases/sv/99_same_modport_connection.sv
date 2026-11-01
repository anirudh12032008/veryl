interface veryl_testcase_InterfaceSameModport;
    logic [8-1:0] req ;
    logic [8-1:0] resp;
    modport left (
        output req ,
        input  resp
    );
    modport right (
        input  req ,
        output resp
    );
    modport left_relay (
        output req ,
        input  resp
    );
endinterface

module veryl_testcase_ModuleSameModportLeaf (
    veryl_testcase_InterfaceSameModport.left p
);
    always_comb p.req = 8'h5a;
endmodule

module veryl_testcase_ModuleSameModportMid (
    veryl_testcase_InterfaceSameModport.left p
);
    veryl_testcase_ModuleSameModportLeaf u (
        .p (p)
    );
endmodule

module veryl_testcase_ModuleSameModportTop (
    output var logic [8-1:0] o
);
    veryl_testcase_InterfaceSameModport bus ();
    veryl_testcase_ModuleSameModportMid m (
        .p (bus)
    );
    always_comb bus.resp = 8'h00;
    always_comb o        = bus.req;
endmodule
//# sourceMappingURL=../map/99_same_modport_connection.sv.map
