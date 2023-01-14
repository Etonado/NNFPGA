// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2020.2 (64-bit)
// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// ==============================================================
`timescale 1 ns / 1 ps
module nn_inference_layer2_weights_rom (
addr0, ce0, q0, addr1, ce1, q1, addr2, ce2, q2, addr3, ce3, q3, addr4, ce4, q4, addr5, ce5, q5, addr6, ce6, q6, addr7, ce7, q7, addr8, ce8, q8, addr9, ce9, q9, addr10, ce10, q10, addr11, ce11, q11, addr12, ce12, q12, addr13, ce13, q13, addr14, ce14, q14, addr15, ce15, q15, addr16, ce16, q16, addr17, ce17, q17, addr18, ce18, q18, addr19, ce19, q19, addr20, ce20, q20, addr21, ce21, q21, addr22, ce22, q22, addr23, ce23, q23, addr24, ce24, q24, addr25, ce25, q25, addr26, ce26, q26, addr27, ce27, q27, addr28, ce28, q28, addr29, ce29, q29, addr30, ce30, q30, addr31, ce31, q31, addr32, ce32, q32, addr33, ce33, q33, addr34, ce34, q34, addr35, ce35, q35, addr36, ce36, q36, addr37, ce37, q37, addr38, ce38, q38, addr39, ce39, q39, addr40, ce40, q40, addr41, ce41, q41, addr42, ce42, q42, addr43, ce43, q43, addr44, ce44, q44, addr45, ce45, q45, addr46, ce46, q46, addr47, ce47, q47, addr48, ce48, q48, addr49, ce49, q49, addr50, ce50, q50, addr51, ce51, q51, addr52, ce52, q52, addr53, ce53, q53, addr54, ce54, q54, addr55, ce55, q55, addr56, ce56, q56, addr57, ce57, q57, addr58, ce58, q58, addr59, ce59, q59, addr60, ce60, q60, addr61, ce61, q61, addr62, ce62, q62, addr63, ce63, q63, addr64, ce64, q64, addr65, ce65, q65, addr66, ce66, q66, addr67, ce67, q67, addr68, ce68, q68, addr69, ce69, q69, addr70, ce70, q70, addr71, ce71, q71, addr72, ce72, q72, addr73, ce73, q73, addr74, ce74, q74, addr75, ce75, q75, addr76, ce76, q76, addr77, ce77, q77, addr78, ce78, q78, addr79, ce79, q79, clk);

parameter DWIDTH = 32;
parameter AWIDTH = 9;
parameter MEM_SIZE = 400;

input[AWIDTH-1:0] addr0;
input ce0;
output reg[DWIDTH-1:0] q0;
input[AWIDTH-1:0] addr1;
input ce1;
output reg[DWIDTH-1:0] q1;
input[AWIDTH-1:0] addr2;
input ce2;
output reg[DWIDTH-1:0] q2;
input[AWIDTH-1:0] addr3;
input ce3;
output reg[DWIDTH-1:0] q3;
input[AWIDTH-1:0] addr4;
input ce4;
output reg[DWIDTH-1:0] q4;
input[AWIDTH-1:0] addr5;
input ce5;
output reg[DWIDTH-1:0] q5;
input[AWIDTH-1:0] addr6;
input ce6;
output reg[DWIDTH-1:0] q6;
input[AWIDTH-1:0] addr7;
input ce7;
output reg[DWIDTH-1:0] q7;
input[AWIDTH-1:0] addr8;
input ce8;
output reg[DWIDTH-1:0] q8;
input[AWIDTH-1:0] addr9;
input ce9;
output reg[DWIDTH-1:0] q9;
input[AWIDTH-1:0] addr10;
input ce10;
output reg[DWIDTH-1:0] q10;
input[AWIDTH-1:0] addr11;
input ce11;
output reg[DWIDTH-1:0] q11;
input[AWIDTH-1:0] addr12;
input ce12;
output reg[DWIDTH-1:0] q12;
input[AWIDTH-1:0] addr13;
input ce13;
output reg[DWIDTH-1:0] q13;
input[AWIDTH-1:0] addr14;
input ce14;
output reg[DWIDTH-1:0] q14;
input[AWIDTH-1:0] addr15;
input ce15;
output reg[DWIDTH-1:0] q15;
input[AWIDTH-1:0] addr16;
input ce16;
output reg[DWIDTH-1:0] q16;
input[AWIDTH-1:0] addr17;
input ce17;
output reg[DWIDTH-1:0] q17;
input[AWIDTH-1:0] addr18;
input ce18;
output reg[DWIDTH-1:0] q18;
input[AWIDTH-1:0] addr19;
input ce19;
output reg[DWIDTH-1:0] q19;
input[AWIDTH-1:0] addr20;
input ce20;
output reg[DWIDTH-1:0] q20;
input[AWIDTH-1:0] addr21;
input ce21;
output reg[DWIDTH-1:0] q21;
input[AWIDTH-1:0] addr22;
input ce22;
output reg[DWIDTH-1:0] q22;
input[AWIDTH-1:0] addr23;
input ce23;
output reg[DWIDTH-1:0] q23;
input[AWIDTH-1:0] addr24;
input ce24;
output reg[DWIDTH-1:0] q24;
input[AWIDTH-1:0] addr25;
input ce25;
output reg[DWIDTH-1:0] q25;
input[AWIDTH-1:0] addr26;
input ce26;
output reg[DWIDTH-1:0] q26;
input[AWIDTH-1:0] addr27;
input ce27;
output reg[DWIDTH-1:0] q27;
input[AWIDTH-1:0] addr28;
input ce28;
output reg[DWIDTH-1:0] q28;
input[AWIDTH-1:0] addr29;
input ce29;
output reg[DWIDTH-1:0] q29;
input[AWIDTH-1:0] addr30;
input ce30;
output reg[DWIDTH-1:0] q30;
input[AWIDTH-1:0] addr31;
input ce31;
output reg[DWIDTH-1:0] q31;
input[AWIDTH-1:0] addr32;
input ce32;
output reg[DWIDTH-1:0] q32;
input[AWIDTH-1:0] addr33;
input ce33;
output reg[DWIDTH-1:0] q33;
input[AWIDTH-1:0] addr34;
input ce34;
output reg[DWIDTH-1:0] q34;
input[AWIDTH-1:0] addr35;
input ce35;
output reg[DWIDTH-1:0] q35;
input[AWIDTH-1:0] addr36;
input ce36;
output reg[DWIDTH-1:0] q36;
input[AWIDTH-1:0] addr37;
input ce37;
output reg[DWIDTH-1:0] q37;
input[AWIDTH-1:0] addr38;
input ce38;
output reg[DWIDTH-1:0] q38;
input[AWIDTH-1:0] addr39;
input ce39;
output reg[DWIDTH-1:0] q39;
input[AWIDTH-1:0] addr40;
input ce40;
output reg[DWIDTH-1:0] q40;
input[AWIDTH-1:0] addr41;
input ce41;
output reg[DWIDTH-1:0] q41;
input[AWIDTH-1:0] addr42;
input ce42;
output reg[DWIDTH-1:0] q42;
input[AWIDTH-1:0] addr43;
input ce43;
output reg[DWIDTH-1:0] q43;
input[AWIDTH-1:0] addr44;
input ce44;
output reg[DWIDTH-1:0] q44;
input[AWIDTH-1:0] addr45;
input ce45;
output reg[DWIDTH-1:0] q45;
input[AWIDTH-1:0] addr46;
input ce46;
output reg[DWIDTH-1:0] q46;
input[AWIDTH-1:0] addr47;
input ce47;
output reg[DWIDTH-1:0] q47;
input[AWIDTH-1:0] addr48;
input ce48;
output reg[DWIDTH-1:0] q48;
input[AWIDTH-1:0] addr49;
input ce49;
output reg[DWIDTH-1:0] q49;
input[AWIDTH-1:0] addr50;
input ce50;
output reg[DWIDTH-1:0] q50;
input[AWIDTH-1:0] addr51;
input ce51;
output reg[DWIDTH-1:0] q51;
input[AWIDTH-1:0] addr52;
input ce52;
output reg[DWIDTH-1:0] q52;
input[AWIDTH-1:0] addr53;
input ce53;
output reg[DWIDTH-1:0] q53;
input[AWIDTH-1:0] addr54;
input ce54;
output reg[DWIDTH-1:0] q54;
input[AWIDTH-1:0] addr55;
input ce55;
output reg[DWIDTH-1:0] q55;
input[AWIDTH-1:0] addr56;
input ce56;
output reg[DWIDTH-1:0] q56;
input[AWIDTH-1:0] addr57;
input ce57;
output reg[DWIDTH-1:0] q57;
input[AWIDTH-1:0] addr58;
input ce58;
output reg[DWIDTH-1:0] q58;
input[AWIDTH-1:0] addr59;
input ce59;
output reg[DWIDTH-1:0] q59;
input[AWIDTH-1:0] addr60;
input ce60;
output reg[DWIDTH-1:0] q60;
input[AWIDTH-1:0] addr61;
input ce61;
output reg[DWIDTH-1:0] q61;
input[AWIDTH-1:0] addr62;
input ce62;
output reg[DWIDTH-1:0] q62;
input[AWIDTH-1:0] addr63;
input ce63;
output reg[DWIDTH-1:0] q63;
input[AWIDTH-1:0] addr64;
input ce64;
output reg[DWIDTH-1:0] q64;
input[AWIDTH-1:0] addr65;
input ce65;
output reg[DWIDTH-1:0] q65;
input[AWIDTH-1:0] addr66;
input ce66;
output reg[DWIDTH-1:0] q66;
input[AWIDTH-1:0] addr67;
input ce67;
output reg[DWIDTH-1:0] q67;
input[AWIDTH-1:0] addr68;
input ce68;
output reg[DWIDTH-1:0] q68;
input[AWIDTH-1:0] addr69;
input ce69;
output reg[DWIDTH-1:0] q69;
input[AWIDTH-1:0] addr70;
input ce70;
output reg[DWIDTH-1:0] q70;
input[AWIDTH-1:0] addr71;
input ce71;
output reg[DWIDTH-1:0] q71;
input[AWIDTH-1:0] addr72;
input ce72;
output reg[DWIDTH-1:0] q72;
input[AWIDTH-1:0] addr73;
input ce73;
output reg[DWIDTH-1:0] q73;
input[AWIDTH-1:0] addr74;
input ce74;
output reg[DWIDTH-1:0] q74;
input[AWIDTH-1:0] addr75;
input ce75;
output reg[DWIDTH-1:0] q75;
input[AWIDTH-1:0] addr76;
input ce76;
output reg[DWIDTH-1:0] q76;
input[AWIDTH-1:0] addr77;
input ce77;
output reg[DWIDTH-1:0] q77;
input[AWIDTH-1:0] addr78;
input ce78;
output reg[DWIDTH-1:0] q78;
input[AWIDTH-1:0] addr79;
input ce79;
output reg[DWIDTH-1:0] q79;
input clk;

reg [DWIDTH-1:0] ram0[0:MEM_SIZE-1];
reg [DWIDTH-1:0] ram1[0:MEM_SIZE-1];
reg [DWIDTH-1:0] ram2[0:MEM_SIZE-1];
reg [DWIDTH-1:0] ram3[0:MEM_SIZE-1];
reg [DWIDTH-1:0] ram4[0:MEM_SIZE-1];
reg [DWIDTH-1:0] ram5[0:MEM_SIZE-1];
reg [DWIDTH-1:0] ram6[0:MEM_SIZE-1];
reg [DWIDTH-1:0] ram7[0:MEM_SIZE-1];
reg [DWIDTH-1:0] ram8[0:MEM_SIZE-1];
reg [DWIDTH-1:0] ram9[0:MEM_SIZE-1];
reg [DWIDTH-1:0] ram10[0:MEM_SIZE-1];
reg [DWIDTH-1:0] ram11[0:MEM_SIZE-1];
reg [DWIDTH-1:0] ram12[0:MEM_SIZE-1];
reg [DWIDTH-1:0] ram13[0:MEM_SIZE-1];
reg [DWIDTH-1:0] ram14[0:MEM_SIZE-1];
reg [DWIDTH-1:0] ram15[0:MEM_SIZE-1];
reg [DWIDTH-1:0] ram16[0:MEM_SIZE-1];
reg [DWIDTH-1:0] ram17[0:MEM_SIZE-1];
reg [DWIDTH-1:0] ram18[0:MEM_SIZE-1];
reg [DWIDTH-1:0] ram19[0:MEM_SIZE-1];
reg [DWIDTH-1:0] ram20[0:MEM_SIZE-1];
reg [DWIDTH-1:0] ram21[0:MEM_SIZE-1];
reg [DWIDTH-1:0] ram22[0:MEM_SIZE-1];
reg [DWIDTH-1:0] ram23[0:MEM_SIZE-1];
reg [DWIDTH-1:0] ram24[0:MEM_SIZE-1];
reg [DWIDTH-1:0] ram25[0:MEM_SIZE-1];
reg [DWIDTH-1:0] ram26[0:MEM_SIZE-1];
reg [DWIDTH-1:0] ram27[0:MEM_SIZE-1];
reg [DWIDTH-1:0] ram28[0:MEM_SIZE-1];
reg [DWIDTH-1:0] ram29[0:MEM_SIZE-1];
reg [DWIDTH-1:0] ram30[0:MEM_SIZE-1];
reg [DWIDTH-1:0] ram31[0:MEM_SIZE-1];
reg [DWIDTH-1:0] ram32[0:MEM_SIZE-1];
reg [DWIDTH-1:0] ram33[0:MEM_SIZE-1];
reg [DWIDTH-1:0] ram34[0:MEM_SIZE-1];
reg [DWIDTH-1:0] ram35[0:MEM_SIZE-1];
reg [DWIDTH-1:0] ram36[0:MEM_SIZE-1];
reg [DWIDTH-1:0] ram37[0:MEM_SIZE-1];
reg [DWIDTH-1:0] ram38[0:MEM_SIZE-1];
reg [DWIDTH-1:0] ram39[0:MEM_SIZE-1];

initial begin
    $readmemh("./nn_inference_layer2_weights_rom.dat", ram0);
    $readmemh("./nn_inference_layer2_weights_rom.dat", ram1);
    $readmemh("./nn_inference_layer2_weights_rom.dat", ram2);
    $readmemh("./nn_inference_layer2_weights_rom.dat", ram3);
    $readmemh("./nn_inference_layer2_weights_rom.dat", ram4);
    $readmemh("./nn_inference_layer2_weights_rom.dat", ram5);
    $readmemh("./nn_inference_layer2_weights_rom.dat", ram6);
    $readmemh("./nn_inference_layer2_weights_rom.dat", ram7);
    $readmemh("./nn_inference_layer2_weights_rom.dat", ram8);
    $readmemh("./nn_inference_layer2_weights_rom.dat", ram9);
    $readmemh("./nn_inference_layer2_weights_rom.dat", ram10);
    $readmemh("./nn_inference_layer2_weights_rom.dat", ram11);
    $readmemh("./nn_inference_layer2_weights_rom.dat", ram12);
    $readmemh("./nn_inference_layer2_weights_rom.dat", ram13);
    $readmemh("./nn_inference_layer2_weights_rom.dat", ram14);
    $readmemh("./nn_inference_layer2_weights_rom.dat", ram15);
    $readmemh("./nn_inference_layer2_weights_rom.dat", ram16);
    $readmemh("./nn_inference_layer2_weights_rom.dat", ram17);
    $readmemh("./nn_inference_layer2_weights_rom.dat", ram18);
    $readmemh("./nn_inference_layer2_weights_rom.dat", ram19);
    $readmemh("./nn_inference_layer2_weights_rom.dat", ram20);
    $readmemh("./nn_inference_layer2_weights_rom.dat", ram21);
    $readmemh("./nn_inference_layer2_weights_rom.dat", ram22);
    $readmemh("./nn_inference_layer2_weights_rom.dat", ram23);
    $readmemh("./nn_inference_layer2_weights_rom.dat", ram24);
    $readmemh("./nn_inference_layer2_weights_rom.dat", ram25);
    $readmemh("./nn_inference_layer2_weights_rom.dat", ram26);
    $readmemh("./nn_inference_layer2_weights_rom.dat", ram27);
    $readmemh("./nn_inference_layer2_weights_rom.dat", ram28);
    $readmemh("./nn_inference_layer2_weights_rom.dat", ram29);
    $readmemh("./nn_inference_layer2_weights_rom.dat", ram30);
    $readmemh("./nn_inference_layer2_weights_rom.dat", ram31);
    $readmemh("./nn_inference_layer2_weights_rom.dat", ram32);
    $readmemh("./nn_inference_layer2_weights_rom.dat", ram33);
    $readmemh("./nn_inference_layer2_weights_rom.dat", ram34);
    $readmemh("./nn_inference_layer2_weights_rom.dat", ram35);
    $readmemh("./nn_inference_layer2_weights_rom.dat", ram36);
    $readmemh("./nn_inference_layer2_weights_rom.dat", ram37);
    $readmemh("./nn_inference_layer2_weights_rom.dat", ram38);
    $readmemh("./nn_inference_layer2_weights_rom.dat", ram39);
end



always @(posedge clk)  
begin 
    if (ce0) 
    begin
        q0 <= ram0[addr0];
    end
end



always @(posedge clk)  
begin 
    if (ce1) 
    begin
        q1 <= ram0[addr1];
    end
end



always @(posedge clk)  
begin 
    if (ce2) 
    begin
        q2 <= ram1[addr2];
    end
end



always @(posedge clk)  
begin 
    if (ce3) 
    begin
        q3 <= ram1[addr3];
    end
end



always @(posedge clk)  
begin 
    if (ce4) 
    begin
        q4 <= ram2[addr4];
    end
end



always @(posedge clk)  
begin 
    if (ce5) 
    begin
        q5 <= ram2[addr5];
    end
end



always @(posedge clk)  
begin 
    if (ce6) 
    begin
        q6 <= ram3[addr6];
    end
end



always @(posedge clk)  
begin 
    if (ce7) 
    begin
        q7 <= ram3[addr7];
    end
end



always @(posedge clk)  
begin 
    if (ce8) 
    begin
        q8 <= ram4[addr8];
    end
end



always @(posedge clk)  
begin 
    if (ce9) 
    begin
        q9 <= ram4[addr9];
    end
end



always @(posedge clk)  
begin 
    if (ce10) 
    begin
        q10 <= ram5[addr10];
    end
end



always @(posedge clk)  
begin 
    if (ce11) 
    begin
        q11 <= ram5[addr11];
    end
end



always @(posedge clk)  
begin 
    if (ce12) 
    begin
        q12 <= ram6[addr12];
    end
end



always @(posedge clk)  
begin 
    if (ce13) 
    begin
        q13 <= ram6[addr13];
    end
end



always @(posedge clk)  
begin 
    if (ce14) 
    begin
        q14 <= ram7[addr14];
    end
end



always @(posedge clk)  
begin 
    if (ce15) 
    begin
        q15 <= ram7[addr15];
    end
end



always @(posedge clk)  
begin 
    if (ce16) 
    begin
        q16 <= ram8[addr16];
    end
end



always @(posedge clk)  
begin 
    if (ce17) 
    begin
        q17 <= ram8[addr17];
    end
end



always @(posedge clk)  
begin 
    if (ce18) 
    begin
        q18 <= ram9[addr18];
    end
end



always @(posedge clk)  
begin 
    if (ce19) 
    begin
        q19 <= ram9[addr19];
    end
end



always @(posedge clk)  
begin 
    if (ce20) 
    begin
        q20 <= ram10[addr20];
    end
end



always @(posedge clk)  
begin 
    if (ce21) 
    begin
        q21 <= ram10[addr21];
    end
end



always @(posedge clk)  
begin 
    if (ce22) 
    begin
        q22 <= ram11[addr22];
    end
end



always @(posedge clk)  
begin 
    if (ce23) 
    begin
        q23 <= ram11[addr23];
    end
end



always @(posedge clk)  
begin 
    if (ce24) 
    begin
        q24 <= ram12[addr24];
    end
end



always @(posedge clk)  
begin 
    if (ce25) 
    begin
        q25 <= ram12[addr25];
    end
end



always @(posedge clk)  
begin 
    if (ce26) 
    begin
        q26 <= ram13[addr26];
    end
end



always @(posedge clk)  
begin 
    if (ce27) 
    begin
        q27 <= ram13[addr27];
    end
end



always @(posedge clk)  
begin 
    if (ce28) 
    begin
        q28 <= ram14[addr28];
    end
end



always @(posedge clk)  
begin 
    if (ce29) 
    begin
        q29 <= ram14[addr29];
    end
end



always @(posedge clk)  
begin 
    if (ce30) 
    begin
        q30 <= ram15[addr30];
    end
end



always @(posedge clk)  
begin 
    if (ce31) 
    begin
        q31 <= ram15[addr31];
    end
end



always @(posedge clk)  
begin 
    if (ce32) 
    begin
        q32 <= ram16[addr32];
    end
end



always @(posedge clk)  
begin 
    if (ce33) 
    begin
        q33 <= ram16[addr33];
    end
end



always @(posedge clk)  
begin 
    if (ce34) 
    begin
        q34 <= ram17[addr34];
    end
end



always @(posedge clk)  
begin 
    if (ce35) 
    begin
        q35 <= ram17[addr35];
    end
end



always @(posedge clk)  
begin 
    if (ce36) 
    begin
        q36 <= ram18[addr36];
    end
end



always @(posedge clk)  
begin 
    if (ce37) 
    begin
        q37 <= ram18[addr37];
    end
end



always @(posedge clk)  
begin 
    if (ce38) 
    begin
        q38 <= ram19[addr38];
    end
end



always @(posedge clk)  
begin 
    if (ce39) 
    begin
        q39 <= ram19[addr39];
    end
end



always @(posedge clk)  
begin 
    if (ce40) 
    begin
        q40 <= ram20[addr40];
    end
end



always @(posedge clk)  
begin 
    if (ce41) 
    begin
        q41 <= ram20[addr41];
    end
end



always @(posedge clk)  
begin 
    if (ce42) 
    begin
        q42 <= ram21[addr42];
    end
end



always @(posedge clk)  
begin 
    if (ce43) 
    begin
        q43 <= ram21[addr43];
    end
end



always @(posedge clk)  
begin 
    if (ce44) 
    begin
        q44 <= ram22[addr44];
    end
end



always @(posedge clk)  
begin 
    if (ce45) 
    begin
        q45 <= ram22[addr45];
    end
end



always @(posedge clk)  
begin 
    if (ce46) 
    begin
        q46 <= ram23[addr46];
    end
end



always @(posedge clk)  
begin 
    if (ce47) 
    begin
        q47 <= ram23[addr47];
    end
end



always @(posedge clk)  
begin 
    if (ce48) 
    begin
        q48 <= ram24[addr48];
    end
end



always @(posedge clk)  
begin 
    if (ce49) 
    begin
        q49 <= ram24[addr49];
    end
end



always @(posedge clk)  
begin 
    if (ce50) 
    begin
        q50 <= ram25[addr50];
    end
end



always @(posedge clk)  
begin 
    if (ce51) 
    begin
        q51 <= ram25[addr51];
    end
end



always @(posedge clk)  
begin 
    if (ce52) 
    begin
        q52 <= ram26[addr52];
    end
end



always @(posedge clk)  
begin 
    if (ce53) 
    begin
        q53 <= ram26[addr53];
    end
end



always @(posedge clk)  
begin 
    if (ce54) 
    begin
        q54 <= ram27[addr54];
    end
end



always @(posedge clk)  
begin 
    if (ce55) 
    begin
        q55 <= ram27[addr55];
    end
end



always @(posedge clk)  
begin 
    if (ce56) 
    begin
        q56 <= ram28[addr56];
    end
end



always @(posedge clk)  
begin 
    if (ce57) 
    begin
        q57 <= ram28[addr57];
    end
end



always @(posedge clk)  
begin 
    if (ce58) 
    begin
        q58 <= ram29[addr58];
    end
end



always @(posedge clk)  
begin 
    if (ce59) 
    begin
        q59 <= ram29[addr59];
    end
end



always @(posedge clk)  
begin 
    if (ce60) 
    begin
        q60 <= ram30[addr60];
    end
end



always @(posedge clk)  
begin 
    if (ce61) 
    begin
        q61 <= ram30[addr61];
    end
end



always @(posedge clk)  
begin 
    if (ce62) 
    begin
        q62 <= ram31[addr62];
    end
end



always @(posedge clk)  
begin 
    if (ce63) 
    begin
        q63 <= ram31[addr63];
    end
end



always @(posedge clk)  
begin 
    if (ce64) 
    begin
        q64 <= ram32[addr64];
    end
end



always @(posedge clk)  
begin 
    if (ce65) 
    begin
        q65 <= ram32[addr65];
    end
end



always @(posedge clk)  
begin 
    if (ce66) 
    begin
        q66 <= ram33[addr66];
    end
end



always @(posedge clk)  
begin 
    if (ce67) 
    begin
        q67 <= ram33[addr67];
    end
end



always @(posedge clk)  
begin 
    if (ce68) 
    begin
        q68 <= ram34[addr68];
    end
end



always @(posedge clk)  
begin 
    if (ce69) 
    begin
        q69 <= ram34[addr69];
    end
end



always @(posedge clk)  
begin 
    if (ce70) 
    begin
        q70 <= ram35[addr70];
    end
end



always @(posedge clk)  
begin 
    if (ce71) 
    begin
        q71 <= ram35[addr71];
    end
end



always @(posedge clk)  
begin 
    if (ce72) 
    begin
        q72 <= ram36[addr72];
    end
end



always @(posedge clk)  
begin 
    if (ce73) 
    begin
        q73 <= ram36[addr73];
    end
end



always @(posedge clk)  
begin 
    if (ce74) 
    begin
        q74 <= ram37[addr74];
    end
end



always @(posedge clk)  
begin 
    if (ce75) 
    begin
        q75 <= ram37[addr75];
    end
end



always @(posedge clk)  
begin 
    if (ce76) 
    begin
        q76 <= ram38[addr76];
    end
end



always @(posedge clk)  
begin 
    if (ce77) 
    begin
        q77 <= ram38[addr77];
    end
end



always @(posedge clk)  
begin 
    if (ce78) 
    begin
        q78 <= ram39[addr78];
    end
end



always @(posedge clk)  
begin 
    if (ce79) 
    begin
        q79 <= ram39[addr79];
    end
end



endmodule

`timescale 1 ns / 1 ps
module nn_inference_layer2_weights(
    reset,
    clk,
    address0,
    ce0,
    q0,
    address1,
    ce1,
    q1,
    address2,
    ce2,
    q2,
    address3,
    ce3,
    q3,
    address4,
    ce4,
    q4,
    address5,
    ce5,
    q5,
    address6,
    ce6,
    q6,
    address7,
    ce7,
    q7,
    address8,
    ce8,
    q8,
    address9,
    ce9,
    q9,
    address10,
    ce10,
    q10,
    address11,
    ce11,
    q11,
    address12,
    ce12,
    q12,
    address13,
    ce13,
    q13,
    address14,
    ce14,
    q14,
    address15,
    ce15,
    q15,
    address16,
    ce16,
    q16,
    address17,
    ce17,
    q17,
    address18,
    ce18,
    q18,
    address19,
    ce19,
    q19,
    address20,
    ce20,
    q20,
    address21,
    ce21,
    q21,
    address22,
    ce22,
    q22,
    address23,
    ce23,
    q23,
    address24,
    ce24,
    q24,
    address25,
    ce25,
    q25,
    address26,
    ce26,
    q26,
    address27,
    ce27,
    q27,
    address28,
    ce28,
    q28,
    address29,
    ce29,
    q29,
    address30,
    ce30,
    q30,
    address31,
    ce31,
    q31,
    address32,
    ce32,
    q32,
    address33,
    ce33,
    q33,
    address34,
    ce34,
    q34,
    address35,
    ce35,
    q35,
    address36,
    ce36,
    q36,
    address37,
    ce37,
    q37,
    address38,
    ce38,
    q38,
    address39,
    ce39,
    q39,
    address40,
    ce40,
    q40,
    address41,
    ce41,
    q41,
    address42,
    ce42,
    q42,
    address43,
    ce43,
    q43,
    address44,
    ce44,
    q44,
    address45,
    ce45,
    q45,
    address46,
    ce46,
    q46,
    address47,
    ce47,
    q47,
    address48,
    ce48,
    q48,
    address49,
    ce49,
    q49,
    address50,
    ce50,
    q50,
    address51,
    ce51,
    q51,
    address52,
    ce52,
    q52,
    address53,
    ce53,
    q53,
    address54,
    ce54,
    q54,
    address55,
    ce55,
    q55,
    address56,
    ce56,
    q56,
    address57,
    ce57,
    q57,
    address58,
    ce58,
    q58,
    address59,
    ce59,
    q59,
    address60,
    ce60,
    q60,
    address61,
    ce61,
    q61,
    address62,
    ce62,
    q62,
    address63,
    ce63,
    q63,
    address64,
    ce64,
    q64,
    address65,
    ce65,
    q65,
    address66,
    ce66,
    q66,
    address67,
    ce67,
    q67,
    address68,
    ce68,
    q68,
    address69,
    ce69,
    q69,
    address70,
    ce70,
    q70,
    address71,
    ce71,
    q71,
    address72,
    ce72,
    q72,
    address73,
    ce73,
    q73,
    address74,
    ce74,
    q74,
    address75,
    ce75,
    q75,
    address76,
    ce76,
    q76,
    address77,
    ce77,
    q77,
    address78,
    ce78,
    q78,
    address79,
    ce79,
    q79);

parameter DataWidth = 32'd32;
parameter AddressRange = 32'd400;
parameter AddressWidth = 32'd9;
input reset;
input clk;
input[AddressWidth - 1:0] address0;
input ce0;
output[DataWidth - 1:0] q0;
input[AddressWidth - 1:0] address1;
input ce1;
output[DataWidth - 1:0] q1;
input[AddressWidth - 1:0] address2;
input ce2;
output[DataWidth - 1:0] q2;
input[AddressWidth - 1:0] address3;
input ce3;
output[DataWidth - 1:0] q3;
input[AddressWidth - 1:0] address4;
input ce4;
output[DataWidth - 1:0] q4;
input[AddressWidth - 1:0] address5;
input ce5;
output[DataWidth - 1:0] q5;
input[AddressWidth - 1:0] address6;
input ce6;
output[DataWidth - 1:0] q6;
input[AddressWidth - 1:0] address7;
input ce7;
output[DataWidth - 1:0] q7;
input[AddressWidth - 1:0] address8;
input ce8;
output[DataWidth - 1:0] q8;
input[AddressWidth - 1:0] address9;
input ce9;
output[DataWidth - 1:0] q9;
input[AddressWidth - 1:0] address10;
input ce10;
output[DataWidth - 1:0] q10;
input[AddressWidth - 1:0] address11;
input ce11;
output[DataWidth - 1:0] q11;
input[AddressWidth - 1:0] address12;
input ce12;
output[DataWidth - 1:0] q12;
input[AddressWidth - 1:0] address13;
input ce13;
output[DataWidth - 1:0] q13;
input[AddressWidth - 1:0] address14;
input ce14;
output[DataWidth - 1:0] q14;
input[AddressWidth - 1:0] address15;
input ce15;
output[DataWidth - 1:0] q15;
input[AddressWidth - 1:0] address16;
input ce16;
output[DataWidth - 1:0] q16;
input[AddressWidth - 1:0] address17;
input ce17;
output[DataWidth - 1:0] q17;
input[AddressWidth - 1:0] address18;
input ce18;
output[DataWidth - 1:0] q18;
input[AddressWidth - 1:0] address19;
input ce19;
output[DataWidth - 1:0] q19;
input[AddressWidth - 1:0] address20;
input ce20;
output[DataWidth - 1:0] q20;
input[AddressWidth - 1:0] address21;
input ce21;
output[DataWidth - 1:0] q21;
input[AddressWidth - 1:0] address22;
input ce22;
output[DataWidth - 1:0] q22;
input[AddressWidth - 1:0] address23;
input ce23;
output[DataWidth - 1:0] q23;
input[AddressWidth - 1:0] address24;
input ce24;
output[DataWidth - 1:0] q24;
input[AddressWidth - 1:0] address25;
input ce25;
output[DataWidth - 1:0] q25;
input[AddressWidth - 1:0] address26;
input ce26;
output[DataWidth - 1:0] q26;
input[AddressWidth - 1:0] address27;
input ce27;
output[DataWidth - 1:0] q27;
input[AddressWidth - 1:0] address28;
input ce28;
output[DataWidth - 1:0] q28;
input[AddressWidth - 1:0] address29;
input ce29;
output[DataWidth - 1:0] q29;
input[AddressWidth - 1:0] address30;
input ce30;
output[DataWidth - 1:0] q30;
input[AddressWidth - 1:0] address31;
input ce31;
output[DataWidth - 1:0] q31;
input[AddressWidth - 1:0] address32;
input ce32;
output[DataWidth - 1:0] q32;
input[AddressWidth - 1:0] address33;
input ce33;
output[DataWidth - 1:0] q33;
input[AddressWidth - 1:0] address34;
input ce34;
output[DataWidth - 1:0] q34;
input[AddressWidth - 1:0] address35;
input ce35;
output[DataWidth - 1:0] q35;
input[AddressWidth - 1:0] address36;
input ce36;
output[DataWidth - 1:0] q36;
input[AddressWidth - 1:0] address37;
input ce37;
output[DataWidth - 1:0] q37;
input[AddressWidth - 1:0] address38;
input ce38;
output[DataWidth - 1:0] q38;
input[AddressWidth - 1:0] address39;
input ce39;
output[DataWidth - 1:0] q39;
input[AddressWidth - 1:0] address40;
input ce40;
output[DataWidth - 1:0] q40;
input[AddressWidth - 1:0] address41;
input ce41;
output[DataWidth - 1:0] q41;
input[AddressWidth - 1:0] address42;
input ce42;
output[DataWidth - 1:0] q42;
input[AddressWidth - 1:0] address43;
input ce43;
output[DataWidth - 1:0] q43;
input[AddressWidth - 1:0] address44;
input ce44;
output[DataWidth - 1:0] q44;
input[AddressWidth - 1:0] address45;
input ce45;
output[DataWidth - 1:0] q45;
input[AddressWidth - 1:0] address46;
input ce46;
output[DataWidth - 1:0] q46;
input[AddressWidth - 1:0] address47;
input ce47;
output[DataWidth - 1:0] q47;
input[AddressWidth - 1:0] address48;
input ce48;
output[DataWidth - 1:0] q48;
input[AddressWidth - 1:0] address49;
input ce49;
output[DataWidth - 1:0] q49;
input[AddressWidth - 1:0] address50;
input ce50;
output[DataWidth - 1:0] q50;
input[AddressWidth - 1:0] address51;
input ce51;
output[DataWidth - 1:0] q51;
input[AddressWidth - 1:0] address52;
input ce52;
output[DataWidth - 1:0] q52;
input[AddressWidth - 1:0] address53;
input ce53;
output[DataWidth - 1:0] q53;
input[AddressWidth - 1:0] address54;
input ce54;
output[DataWidth - 1:0] q54;
input[AddressWidth - 1:0] address55;
input ce55;
output[DataWidth - 1:0] q55;
input[AddressWidth - 1:0] address56;
input ce56;
output[DataWidth - 1:0] q56;
input[AddressWidth - 1:0] address57;
input ce57;
output[DataWidth - 1:0] q57;
input[AddressWidth - 1:0] address58;
input ce58;
output[DataWidth - 1:0] q58;
input[AddressWidth - 1:0] address59;
input ce59;
output[DataWidth - 1:0] q59;
input[AddressWidth - 1:0] address60;
input ce60;
output[DataWidth - 1:0] q60;
input[AddressWidth - 1:0] address61;
input ce61;
output[DataWidth - 1:0] q61;
input[AddressWidth - 1:0] address62;
input ce62;
output[DataWidth - 1:0] q62;
input[AddressWidth - 1:0] address63;
input ce63;
output[DataWidth - 1:0] q63;
input[AddressWidth - 1:0] address64;
input ce64;
output[DataWidth - 1:0] q64;
input[AddressWidth - 1:0] address65;
input ce65;
output[DataWidth - 1:0] q65;
input[AddressWidth - 1:0] address66;
input ce66;
output[DataWidth - 1:0] q66;
input[AddressWidth - 1:0] address67;
input ce67;
output[DataWidth - 1:0] q67;
input[AddressWidth - 1:0] address68;
input ce68;
output[DataWidth - 1:0] q68;
input[AddressWidth - 1:0] address69;
input ce69;
output[DataWidth - 1:0] q69;
input[AddressWidth - 1:0] address70;
input ce70;
output[DataWidth - 1:0] q70;
input[AddressWidth - 1:0] address71;
input ce71;
output[DataWidth - 1:0] q71;
input[AddressWidth - 1:0] address72;
input ce72;
output[DataWidth - 1:0] q72;
input[AddressWidth - 1:0] address73;
input ce73;
output[DataWidth - 1:0] q73;
input[AddressWidth - 1:0] address74;
input ce74;
output[DataWidth - 1:0] q74;
input[AddressWidth - 1:0] address75;
input ce75;
output[DataWidth - 1:0] q75;
input[AddressWidth - 1:0] address76;
input ce76;
output[DataWidth - 1:0] q76;
input[AddressWidth - 1:0] address77;
input ce77;
output[DataWidth - 1:0] q77;
input[AddressWidth - 1:0] address78;
input ce78;
output[DataWidth - 1:0] q78;
input[AddressWidth - 1:0] address79;
input ce79;
output[DataWidth - 1:0] q79;



nn_inference_layer2_weights_rom nn_inference_layer2_weights_rom_U(
    .clk( clk ),
    .addr0( address0 ),
    .ce0( ce0 ),
    .q0( q0 ),
    .addr1( address1 ),
    .ce1( ce1 ),
    .q1( q1 ),
    .addr2( address2 ),
    .ce2( ce2 ),
    .q2( q2 ),
    .addr3( address3 ),
    .ce3( ce3 ),
    .q3( q3 ),
    .addr4( address4 ),
    .ce4( ce4 ),
    .q4( q4 ),
    .addr5( address5 ),
    .ce5( ce5 ),
    .q5( q5 ),
    .addr6( address6 ),
    .ce6( ce6 ),
    .q6( q6 ),
    .addr7( address7 ),
    .ce7( ce7 ),
    .q7( q7 ),
    .addr8( address8 ),
    .ce8( ce8 ),
    .q8( q8 ),
    .addr9( address9 ),
    .ce9( ce9 ),
    .q9( q9 ),
    .addr10( address10 ),
    .ce10( ce10 ),
    .q10( q10 ),
    .addr11( address11 ),
    .ce11( ce11 ),
    .q11( q11 ),
    .addr12( address12 ),
    .ce12( ce12 ),
    .q12( q12 ),
    .addr13( address13 ),
    .ce13( ce13 ),
    .q13( q13 ),
    .addr14( address14 ),
    .ce14( ce14 ),
    .q14( q14 ),
    .addr15( address15 ),
    .ce15( ce15 ),
    .q15( q15 ),
    .addr16( address16 ),
    .ce16( ce16 ),
    .q16( q16 ),
    .addr17( address17 ),
    .ce17( ce17 ),
    .q17( q17 ),
    .addr18( address18 ),
    .ce18( ce18 ),
    .q18( q18 ),
    .addr19( address19 ),
    .ce19( ce19 ),
    .q19( q19 ),
    .addr20( address20 ),
    .ce20( ce20 ),
    .q20( q20 ),
    .addr21( address21 ),
    .ce21( ce21 ),
    .q21( q21 ),
    .addr22( address22 ),
    .ce22( ce22 ),
    .q22( q22 ),
    .addr23( address23 ),
    .ce23( ce23 ),
    .q23( q23 ),
    .addr24( address24 ),
    .ce24( ce24 ),
    .q24( q24 ),
    .addr25( address25 ),
    .ce25( ce25 ),
    .q25( q25 ),
    .addr26( address26 ),
    .ce26( ce26 ),
    .q26( q26 ),
    .addr27( address27 ),
    .ce27( ce27 ),
    .q27( q27 ),
    .addr28( address28 ),
    .ce28( ce28 ),
    .q28( q28 ),
    .addr29( address29 ),
    .ce29( ce29 ),
    .q29( q29 ),
    .addr30( address30 ),
    .ce30( ce30 ),
    .q30( q30 ),
    .addr31( address31 ),
    .ce31( ce31 ),
    .q31( q31 ),
    .addr32( address32 ),
    .ce32( ce32 ),
    .q32( q32 ),
    .addr33( address33 ),
    .ce33( ce33 ),
    .q33( q33 ),
    .addr34( address34 ),
    .ce34( ce34 ),
    .q34( q34 ),
    .addr35( address35 ),
    .ce35( ce35 ),
    .q35( q35 ),
    .addr36( address36 ),
    .ce36( ce36 ),
    .q36( q36 ),
    .addr37( address37 ),
    .ce37( ce37 ),
    .q37( q37 ),
    .addr38( address38 ),
    .ce38( ce38 ),
    .q38( q38 ),
    .addr39( address39 ),
    .ce39( ce39 ),
    .q39( q39 ),
    .addr40( address40 ),
    .ce40( ce40 ),
    .q40( q40 ),
    .addr41( address41 ),
    .ce41( ce41 ),
    .q41( q41 ),
    .addr42( address42 ),
    .ce42( ce42 ),
    .q42( q42 ),
    .addr43( address43 ),
    .ce43( ce43 ),
    .q43( q43 ),
    .addr44( address44 ),
    .ce44( ce44 ),
    .q44( q44 ),
    .addr45( address45 ),
    .ce45( ce45 ),
    .q45( q45 ),
    .addr46( address46 ),
    .ce46( ce46 ),
    .q46( q46 ),
    .addr47( address47 ),
    .ce47( ce47 ),
    .q47( q47 ),
    .addr48( address48 ),
    .ce48( ce48 ),
    .q48( q48 ),
    .addr49( address49 ),
    .ce49( ce49 ),
    .q49( q49 ),
    .addr50( address50 ),
    .ce50( ce50 ),
    .q50( q50 ),
    .addr51( address51 ),
    .ce51( ce51 ),
    .q51( q51 ),
    .addr52( address52 ),
    .ce52( ce52 ),
    .q52( q52 ),
    .addr53( address53 ),
    .ce53( ce53 ),
    .q53( q53 ),
    .addr54( address54 ),
    .ce54( ce54 ),
    .q54( q54 ),
    .addr55( address55 ),
    .ce55( ce55 ),
    .q55( q55 ),
    .addr56( address56 ),
    .ce56( ce56 ),
    .q56( q56 ),
    .addr57( address57 ),
    .ce57( ce57 ),
    .q57( q57 ),
    .addr58( address58 ),
    .ce58( ce58 ),
    .q58( q58 ),
    .addr59( address59 ),
    .ce59( ce59 ),
    .q59( q59 ),
    .addr60( address60 ),
    .ce60( ce60 ),
    .q60( q60 ),
    .addr61( address61 ),
    .ce61( ce61 ),
    .q61( q61 ),
    .addr62( address62 ),
    .ce62( ce62 ),
    .q62( q62 ),
    .addr63( address63 ),
    .ce63( ce63 ),
    .q63( q63 ),
    .addr64( address64 ),
    .ce64( ce64 ),
    .q64( q64 ),
    .addr65( address65 ),
    .ce65( ce65 ),
    .q65( q65 ),
    .addr66( address66 ),
    .ce66( ce66 ),
    .q66( q66 ),
    .addr67( address67 ),
    .ce67( ce67 ),
    .q67( q67 ),
    .addr68( address68 ),
    .ce68( ce68 ),
    .q68( q68 ),
    .addr69( address69 ),
    .ce69( ce69 ),
    .q69( q69 ),
    .addr70( address70 ),
    .ce70( ce70 ),
    .q70( q70 ),
    .addr71( address71 ),
    .ce71( ce71 ),
    .q71( q71 ),
    .addr72( address72 ),
    .ce72( ce72 ),
    .q72( q72 ),
    .addr73( address73 ),
    .ce73( ce73 ),
    .q73( q73 ),
    .addr74( address74 ),
    .ce74( ce74 ),
    .q74( q74 ),
    .addr75( address75 ),
    .ce75( ce75 ),
    .q75( q75 ),
    .addr76( address76 ),
    .ce76( ce76 ),
    .q76( q76 ),
    .addr77( address77 ),
    .ce77( ce77 ),
    .q77( q77 ),
    .addr78( address78 ),
    .ce78( ce78 ),
    .q78( q78 ),
    .addr79( address79 ),
    .ce79( ce79 ),
    .q79( q79 ));

endmodule

