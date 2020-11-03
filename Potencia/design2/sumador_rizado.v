// -----------------------------------------------
// Sumador completo de un bit
// -----------------------------------------------
// Entradas: A, B, Cin
// Salida Cout y S


module sumador_completo (a, b, ci, s, co);
  parameter PwrC = 0;
  input a,b,ci;
  output s,co;
  wire aux1,aux2,aux3;
  xor3_p #(PwrC) op1(s,a,b,ci);
  and2_p #(PwrC) op2(aux2,ci,a);
  and2_p #(PwrC) op3(aux3,ci,b);
  and2_p #(PwrC) op4(aux4,a,b);
  or3_p  #(PwrC) op5(co,aux2,aux3,aux4);
endmodule


// -----------------------------------------------
// Sumador rizado de 8 bits
// -----------------------------------------------
module SUM_RIZADO(a, b, ci, s, co);
  parameter PwrC = 0;
  input [7:0] a;
  input [7:0] b;
  input ci;
  output co;
  output [7:0] s;
  wire c1,c2,c3,c4,c5,c6,c7;
  sumador_completo op1(a[0], b[0], ci, s[0],c1);
  sumador_completo op2(a[1], b[1], c1, s[1],c2);
  sumador_completo op3(a[2], b[2], c2, s[2],c3);
  sumador_completo op4(a[3], b[3], c3, s[3],c4);
  sumador_completo op5(a[4], b[4], c4, s[4],c5);
  sumador_completo op6(a[5], b[5], c5, s[5],c6);
  sumador_completo op7(a[6], b[6], c6, s[6],c7);
  sumador_completo op8(a[7], b[7], c7, s[7],co);
endmodule
