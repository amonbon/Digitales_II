/* Generated by Yosys 0.9 (git sha1 1979e0b) */

(* top =  1  *)
(* src = "clockS.v:1" *)
module clockS(clockS32, reset_L, clockS4, clockS2, clockS1);
  (* src = "clockS.v:7" *)
  wire _00_;
  (* src = "clockS.v:7" *)
  wire _01_;
  (* src = "clockS.v:7" *)
  wire _02_;
  (* src = "clockS.v:7" *)
  wire _03_;
  (* src = "clockS.v:7" *)
  wire _04_;
  (* src = "clockS.v:7" *)
  wire _05_;
  wire _06_;
  wire _07_;
  wire _08_;
  wire _09_;
  wire _10_;
  wire _11_;
  wire _12_;
  wire _13_;
  wire _14_;
  wire _15_;
  wire _16_;
  wire _17_;
  wire _18_;
  wire _19_;
  wire _20_;
  wire _21_;
  wire _22_;
  wire _23_;
  wire _24_;
  wire _25_;
  wire _26_;
  wire _27_;
  (* src = "clockS.v:3" *)
  output clockS1;
  (* src = "clockS.v:3" *)
  output clockS2;
  (* src = "clockS.v:2" *)
  input clockS32;
  (* src = "clockS.v:3" *)
  output clockS4;
  (* src = "clockS.v:6" *)
  wire counter0;
  (* src = "clockS.v:6" *)
  wire counter1;
  (* src = "clockS.v:6" *)
  wire counter2;
  (* src = "clockS.v:2" *)
  input reset_L;
  NOT _28_ (
    .A(reset_L),
    .Y(_11_)
  );
  NOT _29_ (
    .A(clockS4),
    .Y(_12_)
  );
  NOT _30_ (
    .A(counter0),
    .Y(_03_)
  );
  NOT _31_ (
    .A(counter1),
    .Y(_13_)
  );
  NOR _32_ (
    .A(counter0),
    .B(counter1),
    .Y(_14_)
  );
  NAND _33_ (
    .A(_03_),
    .B(_13_),
    .Y(_15_)
  );
  NAND _34_ (
    .A(_12_),
    .B(_14_),
    .Y(_16_)
  );
  NOR _35_ (
    .A(counter2),
    .B(_16_),
    .Y(_17_)
  );
  NOT _36_ (
    .A(_17_),
    .Y(_18_)
  );
  NOR _37_ (
    .A(clockS1),
    .B(_17_),
    .Y(_19_)
  );
  NAND _38_ (
    .A(clockS1),
    .B(_17_),
    .Y(_20_)
  );
  NOT _39_ (
    .A(_20_),
    .Y(_21_)
  );
  NOR _40_ (
    .A(_19_),
    .B(_21_),
    .Y(_00_)
  );
  NAND _41_ (
    .A(counter2),
    .B(_16_),
    .Y(_22_)
  );
  NAND _42_ (
    .A(_18_),
    .B(_22_),
    .Y(_05_)
  );
  NAND _43_ (
    .A(counter0),
    .B(counter1),
    .Y(_23_)
  );
  NAND _44_ (
    .A(_15_),
    .B(_23_),
    .Y(_04_)
  );
  NAND _45_ (
    .A(clockS2),
    .B(_16_),
    .Y(_24_)
  );
  NOR _46_ (
    .A(clockS2),
    .B(_16_),
    .Y(_25_)
  );
  NOT _47_ (
    .A(_25_),
    .Y(_26_)
  );
  NAND _48_ (
    .A(_24_),
    .B(_26_),
    .Y(_01_)
  );
  NAND _49_ (
    .A(clockS4),
    .B(_15_),
    .Y(_27_)
  );
  NAND _50_ (
    .A(_16_),
    .B(_27_),
    .Y(_02_)
  );
  NOT _51_ (
    .A(reset_L),
    .Y(_06_)
  );
  NOT _52_ (
    .A(reset_L),
    .Y(_07_)
  );
  NOT _53_ (
    .A(reset_L),
    .Y(_08_)
  );
  NOT _54_ (
    .A(reset_L),
    .Y(_09_)
  );
  NOT _55_ (
    .A(reset_L),
    .Y(_10_)
  );
  (* src = "clockS.v:7" *)
  DFFSR _56_ (
    .C(clockS32),
    .D(_04_),
    .Q(counter1),
    .R(_06_),
    .S(1'h0)
  );
  (* src = "clockS.v:7" *)
  DFFSR _57_ (
    .C(clockS32),
    .D(_05_),
    .Q(counter2),
    .R(_07_),
    .S(1'h0)
  );
  (* src = "clockS.v:7" *)
  DFFSR _58_ (
    .C(clockS32),
    .D(_00_),
    .Q(clockS1),
    .R(_08_),
    .S(1'h0)
  );
  (* src = "clockS.v:7" *)
  DFFSR _59_ (
    .C(clockS32),
    .D(_03_),
    .Q(counter0),
    .R(_09_),
    .S(1'h0)
  );
  (* src = "clockS.v:7" *)
  DFFSR _60_ (
    .C(clockS32),
    .D(_02_),
    .Q(clockS4),
    .R(_10_),
    .S(1'h0)
  );
  (* src = "clockS.v:7" *)
  DFFSR _61_ (
    .C(clockS32),
    .D(_01_),
    .Q(clockS2),
    .R(_11_),
    .S(1'h0)
  );
endmodule
