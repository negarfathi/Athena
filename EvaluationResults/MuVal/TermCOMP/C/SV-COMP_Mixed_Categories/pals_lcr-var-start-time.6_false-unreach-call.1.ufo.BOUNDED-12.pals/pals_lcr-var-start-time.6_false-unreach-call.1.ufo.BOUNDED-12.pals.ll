; ModuleID = 'Benchmarks/TermCOMP/C/SV-COMP_Mixed_Categories/pals_lcr-var-start-time.6_false-unreach-call.1.ufo.BOUNDED-12.pals/pals_lcr-var-start-time.6_false-unreach-call.1.ufo.BOUNDED-12.pals.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"'nomsg" = global i8 -1, align 1
@"'mode1" = common global i8 0, align 1
@"'r1" = common global i8 0, align 1
@"'p6_old" = common global i8 0, align 1
@"'alive1" = common global i8 0, align 1
@"'id1" = common global i8 0, align 1
@"'send1" = common global i8 0, align 1
@"'st1" = common global i8 0, align 1
@"'p1_new" = common global i8 0, align 1
@"'mode2" = common global i8 0, align 1
@"'p1_old" = common global i8 0, align 1
@"'alive2" = common global i8 0, align 1
@"'id2" = common global i8 0, align 1
@"'send2" = common global i8 0, align 1
@"'st2" = common global i8 0, align 1
@"'p2_new" = common global i8 0, align 1
@"'mode3" = common global i8 0, align 1
@"'p2_old" = common global i8 0, align 1
@"'alive3" = common global i8 0, align 1
@"'id3" = common global i8 0, align 1
@"'send3" = common global i8 0, align 1
@"'st3" = common global i8 0, align 1
@"'p3_new" = common global i8 0, align 1
@"'mode4" = common global i8 0, align 1
@"'p3_old" = common global i8 0, align 1
@"'alive4" = common global i8 0, align 1
@"'id4" = common global i8 0, align 1
@"'send4" = common global i8 0, align 1
@"'st4" = common global i8 0, align 1
@"'p4_new" = common global i8 0, align 1
@"'mode5" = common global i8 0, align 1
@"'p4_old" = common global i8 0, align 1
@"'alive5" = common global i8 0, align 1
@"'id5" = common global i8 0, align 1
@"'send5" = common global i8 0, align 1
@"'st5" = common global i8 0, align 1
@"'p5_new" = common global i8 0, align 1
@"'mode6" = common global i8 0, align 1
@"'p5_old" = common global i8 0, align 1
@"'alive6" = common global i8 0, align 1
@"'id6" = common global i8 0, align 1
@"'send6" = common global i8 0, align 1
@"'st6" = common global i8 0, align 1
@"'p6_new" = common global i8 0, align 1
@nodes = global [6 x void ()*] [void ()* @node1, void ()* @node2, void ()* @node3, void ()* @node4, void ()* @node5, void ()* @node6], align 16
@"'p1" = common global i32 0, align 4
@"'p2" = common global i32 0, align 4
@"'p3" = common global i32 0, align 4
@"'p4" = common global i32 0, align 4
@"'p5" = common global i32 0, align 4
@"'p6" = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define void @node1() #0 {
node1_bb0:
  %"0" = load i8* @"'mode1", align 1
  %"1" = trunc i8 %"0" to i1
  br i1 %"1", label %node1_bb1, label %node1_bb10

node1_bb1:                                        ; preds = %node1_bb0
  %"2" = load i8* @"'r1", align 1
  %"3" = sext i8 %"2" to i32
  %"4" = add nsw i32 %"3", 1
  %"5" = trunc i32 %"4" to i8
  store i8 %"5", i8* @"'r1", align 1
  %"6" = load i8* @"'p6_old", align 1
  %"7" = load i8* @"'nomsg", align 1
  store i8 %"7", i8* @"'p6_old", align 1
  %"8" = sext i8 %"6" to i32
  %"9" = load i8* @"'nomsg", align 1
  %"10" = sext i8 %"9" to i32
  %"11" = icmp ne i32 %"8", %"10"
  br i1 %"11", label %node1_bb2, label %node1_bb9

node1_bb2:                                        ; preds = %node1_bb1
  %"12" = load i8* @"'alive1", align 1
  %"13" = trunc i8 %"12" to i1
  br i1 %"13", label %node1_bb3, label %node1_bb8

node1_bb3:                                        ; preds = %node1_bb2
  %"14" = sext i8 %"6" to i32
  %"15" = load i8* @"'id1", align 1
  %"16" = sext i8 %"15" to i32
  %"17" = icmp sgt i32 %"14", %"16"
  br i1 %"17", label %node1_bb4, label %node1_bb5

node1_bb4:                                        ; preds = %node1_bb3
  store i8 %"6", i8* @"'send1", align 1
  br label %node1_bb9

node1_bb5:                                        ; preds = %node1_bb3
  %"18" = sext i8 %"6" to i32
  %"19" = load i8* @"'id1", align 1
  %"20" = sext i8 %"19" to i32
  %"21" = icmp eq i32 %"18", %"20"
  br i1 %"21", label %node1_bb6, label %node1_bb7

node1_bb6:                                        ; preds = %node1_bb5
  store i8 1, i8* @"'st1", align 1
  br label %node1_bb9

node1_bb7:                                        ; preds = %node1_bb5
  store i8 %"6", i8* @"'send1", align 1
  br label %node1_bb9

node1_bb8:                                        ; preds = %node1_bb2
  store i8 %"6", i8* @"'send1", align 1
  br label %node1_bb9

node1_bb9:                                        ; preds = %node1_bb8, %node1_bb6, %node1_bb7, %node1_bb4, %node1_bb1
  store i8 0, i8* @"'mode1", align 1
  br label %node1_bb23

node1_bb10:                                       ; preds = %node1_bb0
  %"22" = load i8* @"'alive1", align 1
  %"23" = trunc i8 %"22" to i1
  %"24" = load i8* @"'send1", align 1
  %"25" = sext i8 %"24" to i32
  br i1 %"23", label %node1_bb11, label %node1_bb16

node1_bb11:                                       ; preds = %node1_bb10
  %"26" = load i8* @"'nomsg", align 1
  %"27" = sext i8 %"26" to i32
  %"28" = icmp ne i32 %"25", %"27"
  br i1 %"28", label %node1_bb12, label %node1_bb14

node1_bb12:                                       ; preds = %node1_bb11
  %"29" = load i8* @"'p1_new", align 1
  %"30" = sext i8 %"29" to i32
  %"31" = load i8* @"'nomsg", align 1
  %"32" = sext i8 %"31" to i32
  %"33" = icmp eq i32 %"30", %"32"
  br i1 %"33", label %node1_bb13, label %node1_bb14

node1_bb13:                                       ; preds = %node1_bb12
  %"34" = load i8* @"'send1", align 1
  br label %node1_bb15

node1_bb14:                                       ; preds = %node1_bb12, %node1_bb11
  %"35" = load i8* @"'p1_new", align 1
  br label %node1_bb15

node1_bb15:                                       ; preds = %node1_bb14, %node1_bb13
  %.sink = phi i8 [ %"34", %node1_bb13 ], [ %"35", %node1_bb14 ]
  %"36" = sext i8 %.sink to i32
  %"37" = trunc i32 %"36" to i8
  store i8 %"37", i8* @"'p1_new", align 1
  br label %node1_bb22

node1_bb16:                                       ; preds = %node1_bb10
  %"38" = load i8* @"'id1", align 1
  %"39" = sext i8 %"38" to i32
  %"40" = icmp ne i32 %"25", %"39"
  br i1 %"40", label %node1_bb17, label %node1_bb22

node1_bb17:                                       ; preds = %node1_bb16
  %"41" = load i8* @"'send1", align 1
  %"42" = sext i8 %"41" to i32
  %"43" = load i8* @"'nomsg", align 1
  %"44" = sext i8 %"43" to i32
  %"45" = icmp ne i32 %"42", %"44"
  br i1 %"45", label %node1_bb18, label %node1_bb20

node1_bb18:                                       ; preds = %node1_bb17
  %"46" = load i8* @"'p1_new", align 1
  %"47" = sext i8 %"46" to i32
  %"48" = load i8* @"'nomsg", align 1
  %"49" = sext i8 %"48" to i32
  %"50" = icmp eq i32 %"47", %"49"
  br i1 %"50", label %node1_bb19, label %node1_bb20

node1_bb19:                                       ; preds = %node1_bb18
  %"51" = load i8* @"'send1", align 1
  br label %node1_bb21

node1_bb20:                                       ; preds = %node1_bb18, %node1_bb17
  %"52" = load i8* @"'p1_new", align 1
  br label %node1_bb21

node1_bb21:                                       ; preds = %node1_bb20, %node1_bb19
  %.sink1 = phi i8 [ %"51", %node1_bb19 ], [ %"52", %node1_bb20 ]
  %"53" = sext i8 %.sink1 to i32
  %"54" = trunc i32 %"53" to i8
  store i8 %"54", i8* @"'p1_new", align 1
  br label %node1_bb22

node1_bb22:                                       ; preds = %node1_bb16, %node1_bb21, %node1_bb15
  store i8 1, i8* @"'mode1", align 1
  br label %node1_bb23

node1_bb23:                                       ; preds = %node1_bb22, %node1_bb9
  ret void
}

; Function Attrs: nounwind uwtable
define void @node2() #0 {
node2_bb24:
  %"55" = load i8* @"'mode2", align 1
  %"56" = trunc i8 %"55" to i1
  br i1 %"56", label %node2_bb25, label %node2_bb33

node2_bb25:                                       ; preds = %node2_bb24
  %"57" = load i8* @"'p1_old", align 1
  %"58" = load i8* @"'nomsg", align 1
  store i8 %"58", i8* @"'p1_old", align 1
  %"59" = sext i8 %"57" to i32
  %"60" = load i8* @"'nomsg", align 1
  %"61" = sext i8 %"60" to i32
  %"62" = icmp ne i32 %"59", %"61"
  br i1 %"62", label %node2_bb26, label %node2_bb32

node2_bb26:                                       ; preds = %node2_bb25
  %"63" = load i8* @"'alive2", align 1
  %"64" = trunc i8 %"63" to i1
  br i1 %"64", label %node2_bb27, label %node2_bb31

node2_bb27:                                       ; preds = %node2_bb26
  %"65" = sext i8 %"57" to i32
  %"66" = load i8* @"'id2", align 1
  %"67" = sext i8 %"66" to i32
  %"68" = icmp sgt i32 %"65", %"67"
  br i1 %"68", label %node2_bb28, label %node2_bb29

node2_bb28:                                       ; preds = %node2_bb27
  store i8 %"57", i8* @"'send2", align 1
  br label %node2_bb32

node2_bb29:                                       ; preds = %node2_bb27
  %"69" = sext i8 %"57" to i32
  %"70" = load i8* @"'id2", align 1
  %"71" = sext i8 %"70" to i32
  %"72" = icmp eq i32 %"69", %"71"
  br i1 %"72", label %node2_bb30, label %node2_bb32

node2_bb30:                                       ; preds = %node2_bb29
  store i8 1, i8* @"'st2", align 1
  br label %node2_bb32

node2_bb31:                                       ; preds = %node2_bb26
  store i8 %"57", i8* @"'send2", align 1
  br label %node2_bb32

node2_bb32:                                       ; preds = %node2_bb31, %node2_bb29, %node2_bb30, %node2_bb28, %node2_bb25
  store i8 0, i8* @"'mode2", align 1
  br label %node2_bb46

node2_bb33:                                       ; preds = %node2_bb24
  %"73" = load i8* @"'alive2", align 1
  %"74" = trunc i8 %"73" to i1
  %"75" = load i8* @"'send2", align 1
  %"76" = sext i8 %"75" to i32
  br i1 %"74", label %node2_bb34, label %node2_bb39

node2_bb34:                                       ; preds = %node2_bb33
  %"77" = load i8* @"'nomsg", align 1
  %"78" = sext i8 %"77" to i32
  %"79" = icmp ne i32 %"76", %"78"
  br i1 %"79", label %node2_bb35, label %node2_bb37

node2_bb35:                                       ; preds = %node2_bb34
  %"80" = load i8* @"'p2_new", align 1
  %"81" = sext i8 %"80" to i32
  %"82" = load i8* @"'nomsg", align 1
  %"83" = sext i8 %"82" to i32
  %"84" = icmp eq i32 %"81", %"83"
  br i1 %"84", label %node2_bb36, label %node2_bb37

node2_bb36:                                       ; preds = %node2_bb35
  %"85" = load i8* @"'send2", align 1
  br label %node2_bb38

node2_bb37:                                       ; preds = %node2_bb35, %node2_bb34
  %"86" = load i8* @"'p2_new", align 1
  br label %node2_bb38

node2_bb38:                                       ; preds = %node2_bb37, %node2_bb36
  %.sink = phi i8 [ %"85", %node2_bb36 ], [ %"86", %node2_bb37 ]
  %"87" = sext i8 %.sink to i32
  %"88" = trunc i32 %"87" to i8
  store i8 %"88", i8* @"'p2_new", align 1
  br label %node2_bb45

node2_bb39:                                       ; preds = %node2_bb33
  %"89" = load i8* @"'id2", align 1
  %"90" = sext i8 %"89" to i32
  %"91" = icmp ne i32 %"76", %"90"
  br i1 %"91", label %node2_bb40, label %node2_bb45

node2_bb40:                                       ; preds = %node2_bb39
  %"92" = load i8* @"'send2", align 1
  %"93" = sext i8 %"92" to i32
  %"94" = load i8* @"'nomsg", align 1
  %"95" = sext i8 %"94" to i32
  %"96" = icmp ne i32 %"93", %"95"
  br i1 %"96", label %node2_bb41, label %node2_bb43

node2_bb41:                                       ; preds = %node2_bb40
  %"97" = load i8* @"'p2_new", align 1
  %"98" = sext i8 %"97" to i32
  %"99" = load i8* @"'nomsg", align 1
  %"100" = sext i8 %"99" to i32
  %"101" = icmp eq i32 %"98", %"100"
  br i1 %"101", label %node2_bb42, label %node2_bb43

node2_bb42:                                       ; preds = %node2_bb41
  %"102" = load i8* @"'send2", align 1
  br label %node2_bb44

node2_bb43:                                       ; preds = %node2_bb41, %node2_bb40
  %"103" = load i8* @"'p2_new", align 1
  br label %node2_bb44

node2_bb44:                                       ; preds = %node2_bb43, %node2_bb42
  %.sink1 = phi i8 [ %"102", %node2_bb42 ], [ %"103", %node2_bb43 ]
  %"104" = sext i8 %.sink1 to i32
  %"105" = trunc i32 %"104" to i8
  store i8 %"105", i8* @"'p2_new", align 1
  br label %node2_bb45

node2_bb45:                                       ; preds = %node2_bb39, %node2_bb44, %node2_bb38
  store i8 1, i8* @"'mode2", align 1
  br label %node2_bb46

node2_bb46:                                       ; preds = %node2_bb45, %node2_bb32
  ret void
}

; Function Attrs: nounwind uwtable
define void @node3() #0 {
node3_bb47:
  %"106" = load i8* @"'mode3", align 1
  %"107" = trunc i8 %"106" to i1
  br i1 %"107", label %node3_bb48, label %node3_bb56

node3_bb48:                                       ; preds = %node3_bb47
  %"108" = load i8* @"'p2_old", align 1
  %"109" = load i8* @"'nomsg", align 1
  store i8 %"109", i8* @"'p2_old", align 1
  %"110" = sext i8 %"108" to i32
  %"111" = load i8* @"'nomsg", align 1
  %"112" = sext i8 %"111" to i32
  %"113" = icmp ne i32 %"110", %"112"
  br i1 %"113", label %node3_bb49, label %node3_bb55

node3_bb49:                                       ; preds = %node3_bb48
  %"114" = load i8* @"'alive3", align 1
  %"115" = trunc i8 %"114" to i1
  br i1 %"115", label %node3_bb50, label %node3_bb54

node3_bb50:                                       ; preds = %node3_bb49
  %"116" = sext i8 %"108" to i32
  %"117" = load i8* @"'id3", align 1
  %"118" = sext i8 %"117" to i32
  %"119" = icmp sgt i32 %"116", %"118"
  br i1 %"119", label %node3_bb51, label %node3_bb52

node3_bb51:                                       ; preds = %node3_bb50
  store i8 %"108", i8* @"'send3", align 1
  br label %node3_bb55

node3_bb52:                                       ; preds = %node3_bb50
  %"120" = sext i8 %"108" to i32
  %"121" = load i8* @"'id3", align 1
  %"122" = sext i8 %"121" to i32
  %"123" = icmp eq i32 %"120", %"122"
  br i1 %"123", label %node3_bb53, label %node3_bb55

node3_bb53:                                       ; preds = %node3_bb52
  store i8 1, i8* @"'st3", align 1
  br label %node3_bb55

node3_bb54:                                       ; preds = %node3_bb49
  store i8 %"108", i8* @"'send3", align 1
  br label %node3_bb55

node3_bb55:                                       ; preds = %node3_bb54, %node3_bb52, %node3_bb53, %node3_bb51, %node3_bb48
  store i8 0, i8* @"'mode3", align 1
  br label %node3_bb69

node3_bb56:                                       ; preds = %node3_bb47
  %"124" = load i8* @"'alive3", align 1
  %"125" = trunc i8 %"124" to i1
  %"126" = load i8* @"'send3", align 1
  %"127" = sext i8 %"126" to i32
  br i1 %"125", label %node3_bb57, label %node3_bb62

node3_bb57:                                       ; preds = %node3_bb56
  %"128" = load i8* @"'nomsg", align 1
  %"129" = sext i8 %"128" to i32
  %"130" = icmp ne i32 %"127", %"129"
  br i1 %"130", label %node3_bb58, label %node3_bb60

node3_bb58:                                       ; preds = %node3_bb57
  %"131" = load i8* @"'p3_new", align 1
  %"132" = sext i8 %"131" to i32
  %"133" = load i8* @"'nomsg", align 1
  %"134" = sext i8 %"133" to i32
  %"135" = icmp eq i32 %"132", %"134"
  br i1 %"135", label %node3_bb59, label %node3_bb60

node3_bb59:                                       ; preds = %node3_bb58
  %"136" = load i8* @"'send3", align 1
  br label %node3_bb61

node3_bb60:                                       ; preds = %node3_bb58, %node3_bb57
  %"137" = load i8* @"'p3_new", align 1
  br label %node3_bb61

node3_bb61:                                       ; preds = %node3_bb60, %node3_bb59
  %.sink = phi i8 [ %"136", %node3_bb59 ], [ %"137", %node3_bb60 ]
  %"138" = sext i8 %.sink to i32
  %"139" = trunc i32 %"138" to i8
  store i8 %"139", i8* @"'p3_new", align 1
  br label %node3_bb68

node3_bb62:                                       ; preds = %node3_bb56
  %"140" = load i8* @"'id3", align 1
  %"141" = sext i8 %"140" to i32
  %"142" = icmp ne i32 %"127", %"141"
  br i1 %"142", label %node3_bb63, label %node3_bb68

node3_bb63:                                       ; preds = %node3_bb62
  %"143" = load i8* @"'send3", align 1
  %"144" = sext i8 %"143" to i32
  %"145" = load i8* @"'nomsg", align 1
  %"146" = sext i8 %"145" to i32
  %"147" = icmp ne i32 %"144", %"146"
  br i1 %"147", label %node3_bb64, label %node3_bb66

node3_bb64:                                       ; preds = %node3_bb63
  %"148" = load i8* @"'p3_new", align 1
  %"149" = sext i8 %"148" to i32
  %"150" = load i8* @"'nomsg", align 1
  %"151" = sext i8 %"150" to i32
  %"152" = icmp eq i32 %"149", %"151"
  br i1 %"152", label %node3_bb65, label %node3_bb66

node3_bb65:                                       ; preds = %node3_bb64
  %"153" = load i8* @"'send3", align 1
  br label %node3_bb67

node3_bb66:                                       ; preds = %node3_bb64, %node3_bb63
  %"154" = load i8* @"'p3_new", align 1
  br label %node3_bb67

node3_bb67:                                       ; preds = %node3_bb66, %node3_bb65
  %.sink1 = phi i8 [ %"153", %node3_bb65 ], [ %"154", %node3_bb66 ]
  %"155" = sext i8 %.sink1 to i32
  %"156" = trunc i32 %"155" to i8
  store i8 %"156", i8* @"'p3_new", align 1
  br label %node3_bb68

node3_bb68:                                       ; preds = %node3_bb62, %node3_bb67, %node3_bb61
  store i8 1, i8* @"'mode3", align 1
  br label %node3_bb69

node3_bb69:                                       ; preds = %node3_bb68, %node3_bb55
  ret void
}

; Function Attrs: nounwind uwtable
define void @node4() #0 {
node4_bb70:
  %"157" = load i8* @"'mode4", align 1
  %"158" = trunc i8 %"157" to i1
  br i1 %"158", label %node4_bb71, label %node4_bb79

node4_bb71:                                       ; preds = %node4_bb70
  %"159" = load i8* @"'p3_old", align 1
  %"160" = load i8* @"'nomsg", align 1
  store i8 %"160", i8* @"'p3_old", align 1
  %"161" = sext i8 %"159" to i32
  %"162" = load i8* @"'nomsg", align 1
  %"163" = sext i8 %"162" to i32
  %"164" = icmp ne i32 %"161", %"163"
  br i1 %"164", label %node4_bb72, label %node4_bb78

node4_bb72:                                       ; preds = %node4_bb71
  %"165" = load i8* @"'alive4", align 1
  %"166" = trunc i8 %"165" to i1
  br i1 %"166", label %node4_bb73, label %node4_bb77

node4_bb73:                                       ; preds = %node4_bb72
  %"167" = sext i8 %"159" to i32
  %"168" = load i8* @"'id4", align 1
  %"169" = sext i8 %"168" to i32
  %"170" = icmp sgt i32 %"167", %"169"
  br i1 %"170", label %node4_bb74, label %node4_bb75

node4_bb74:                                       ; preds = %node4_bb73
  store i8 %"159", i8* @"'send4", align 1
  br label %node4_bb78

node4_bb75:                                       ; preds = %node4_bb73
  %"171" = sext i8 %"159" to i32
  %"172" = load i8* @"'id4", align 1
  %"173" = sext i8 %"172" to i32
  %"174" = icmp eq i32 %"171", %"173"
  br i1 %"174", label %node4_bb76, label %node4_bb78

node4_bb76:                                       ; preds = %node4_bb75
  store i8 1, i8* @"'st4", align 1
  br label %node4_bb78

node4_bb77:                                       ; preds = %node4_bb72
  store i8 %"159", i8* @"'send4", align 1
  br label %node4_bb78

node4_bb78:                                       ; preds = %node4_bb77, %node4_bb75, %node4_bb76, %node4_bb74, %node4_bb71
  store i8 0, i8* @"'mode4", align 1
  br label %node4_bb92

node4_bb79:                                       ; preds = %node4_bb70
  %"175" = load i8* @"'alive4", align 1
  %"176" = trunc i8 %"175" to i1
  %"177" = load i8* @"'send4", align 1
  %"178" = sext i8 %"177" to i32
  br i1 %"176", label %node4_bb80, label %node4_bb85

node4_bb80:                                       ; preds = %node4_bb79
  %"179" = load i8* @"'nomsg", align 1
  %"180" = sext i8 %"179" to i32
  %"181" = icmp ne i32 %"178", %"180"
  br i1 %"181", label %node4_bb81, label %node4_bb83

node4_bb81:                                       ; preds = %node4_bb80
  %"182" = load i8* @"'p4_new", align 1
  %"183" = sext i8 %"182" to i32
  %"184" = load i8* @"'nomsg", align 1
  %"185" = sext i8 %"184" to i32
  %"186" = icmp eq i32 %"183", %"185"
  br i1 %"186", label %node4_bb82, label %node4_bb83

node4_bb82:                                       ; preds = %node4_bb81
  %"187" = load i8* @"'send4", align 1
  br label %node4_bb84

node4_bb83:                                       ; preds = %node4_bb81, %node4_bb80
  %"188" = load i8* @"'p4_new", align 1
  br label %node4_bb84

node4_bb84:                                       ; preds = %node4_bb83, %node4_bb82
  %.sink = phi i8 [ %"187", %node4_bb82 ], [ %"188", %node4_bb83 ]
  %"189" = sext i8 %.sink to i32
  %"190" = trunc i32 %"189" to i8
  store i8 %"190", i8* @"'p4_new", align 1
  br label %node4_bb91

node4_bb85:                                       ; preds = %node4_bb79
  %"191" = load i8* @"'id4", align 1
  %"192" = sext i8 %"191" to i32
  %"193" = icmp ne i32 %"178", %"192"
  br i1 %"193", label %node4_bb86, label %node4_bb91

node4_bb86:                                       ; preds = %node4_bb85
  %"194" = load i8* @"'send4", align 1
  %"195" = sext i8 %"194" to i32
  %"196" = load i8* @"'nomsg", align 1
  %"197" = sext i8 %"196" to i32
  %"198" = icmp ne i32 %"195", %"197"
  br i1 %"198", label %node4_bb87, label %node4_bb89

node4_bb87:                                       ; preds = %node4_bb86
  %"199" = load i8* @"'p4_new", align 1
  %"200" = sext i8 %"199" to i32
  %"201" = load i8* @"'nomsg", align 1
  %"202" = sext i8 %"201" to i32
  %"203" = icmp eq i32 %"200", %"202"
  br i1 %"203", label %node4_bb88, label %node4_bb89

node4_bb88:                                       ; preds = %node4_bb87
  %"204" = load i8* @"'send4", align 1
  br label %node4_bb90

node4_bb89:                                       ; preds = %node4_bb87, %node4_bb86
  %"205" = load i8* @"'p4_new", align 1
  br label %node4_bb90

node4_bb90:                                       ; preds = %node4_bb89, %node4_bb88
  %.sink1 = phi i8 [ %"204", %node4_bb88 ], [ %"205", %node4_bb89 ]
  %"206" = sext i8 %.sink1 to i32
  %"207" = trunc i32 %"206" to i8
  store i8 %"207", i8* @"'p4_new", align 1
  br label %node4_bb91

node4_bb91:                                       ; preds = %node4_bb85, %node4_bb90, %node4_bb84
  store i8 1, i8* @"'mode4", align 1
  br label %node4_bb92

node4_bb92:                                       ; preds = %node4_bb91, %node4_bb78
  ret void
}

; Function Attrs: nounwind uwtable
define void @node5() #0 {
node5_bb93:
  %"208" = load i8* @"'mode5", align 1
  %"209" = trunc i8 %"208" to i1
  br i1 %"209", label %node5_bb94, label %node5_bb102

node5_bb94:                                       ; preds = %node5_bb93
  %"210" = load i8* @"'p4_old", align 1
  %"211" = load i8* @"'nomsg", align 1
  store i8 %"211", i8* @"'p4_old", align 1
  %"212" = sext i8 %"210" to i32
  %"213" = load i8* @"'nomsg", align 1
  %"214" = sext i8 %"213" to i32
  %"215" = icmp ne i32 %"212", %"214"
  br i1 %"215", label %node5_bb95, label %node5_bb101

node5_bb95:                                       ; preds = %node5_bb94
  %"216" = load i8* @"'alive5", align 1
  %"217" = trunc i8 %"216" to i1
  br i1 %"217", label %node5_bb96, label %node5_bb100

node5_bb96:                                       ; preds = %node5_bb95
  %"218" = sext i8 %"210" to i32
  %"219" = load i8* @"'id5", align 1
  %"220" = sext i8 %"219" to i32
  %"221" = icmp sgt i32 %"218", %"220"
  br i1 %"221", label %node5_bb97, label %node5_bb98

node5_bb97:                                       ; preds = %node5_bb96
  store i8 %"210", i8* @"'send5", align 1
  br label %node5_bb101

node5_bb98:                                       ; preds = %node5_bb96
  %"222" = sext i8 %"210" to i32
  %"223" = load i8* @"'id5", align 1
  %"224" = sext i8 %"223" to i32
  %"225" = icmp eq i32 %"222", %"224"
  br i1 %"225", label %node5_bb99, label %node5_bb101

node5_bb99:                                       ; preds = %node5_bb98
  store i8 1, i8* @"'st5", align 1
  br label %node5_bb101

node5_bb100:                                      ; preds = %node5_bb95
  store i8 %"210", i8* @"'send5", align 1
  br label %node5_bb101

node5_bb101:                                      ; preds = %node5_bb100, %node5_bb98, %node5_bb99, %node5_bb97, %node5_bb94
  store i8 0, i8* @"'mode5", align 1
  br label %node5_bb115

node5_bb102:                                      ; preds = %node5_bb93
  %"226" = load i8* @"'alive5", align 1
  %"227" = trunc i8 %"226" to i1
  %"228" = load i8* @"'send5", align 1
  %"229" = sext i8 %"228" to i32
  br i1 %"227", label %node5_bb103, label %node5_bb108

node5_bb103:                                      ; preds = %node5_bb102
  %"230" = load i8* @"'nomsg", align 1
  %"231" = sext i8 %"230" to i32
  %"232" = icmp ne i32 %"229", %"231"
  br i1 %"232", label %node5_bb104, label %node5_bb106

node5_bb104:                                      ; preds = %node5_bb103
  %"233" = load i8* @"'p5_new", align 1
  %"234" = sext i8 %"233" to i32
  %"235" = load i8* @"'nomsg", align 1
  %"236" = sext i8 %"235" to i32
  %"237" = icmp eq i32 %"234", %"236"
  br i1 %"237", label %node5_bb105, label %node5_bb106

node5_bb105:                                      ; preds = %node5_bb104
  %"238" = load i8* @"'send5", align 1
  br label %node5_bb107

node5_bb106:                                      ; preds = %node5_bb104, %node5_bb103
  %"239" = load i8* @"'p5_new", align 1
  br label %node5_bb107

node5_bb107:                                      ; preds = %node5_bb106, %node5_bb105
  %.sink = phi i8 [ %"238", %node5_bb105 ], [ %"239", %node5_bb106 ]
  %"240" = sext i8 %.sink to i32
  %"241" = trunc i32 %"240" to i8
  store i8 %"241", i8* @"'p5_new", align 1
  br label %node5_bb114

node5_bb108:                                      ; preds = %node5_bb102
  %"242" = load i8* @"'id5", align 1
  %"243" = sext i8 %"242" to i32
  %"244" = icmp ne i32 %"229", %"243"
  br i1 %"244", label %node5_bb109, label %node5_bb114

node5_bb109:                                      ; preds = %node5_bb108
  %"245" = load i8* @"'send5", align 1
  %"246" = sext i8 %"245" to i32
  %"247" = load i8* @"'nomsg", align 1
  %"248" = sext i8 %"247" to i32
  %"249" = icmp ne i32 %"246", %"248"
  br i1 %"249", label %node5_bb110, label %node5_bb112

node5_bb110:                                      ; preds = %node5_bb109
  %"250" = load i8* @"'p5_new", align 1
  %"251" = sext i8 %"250" to i32
  %"252" = load i8* @"'nomsg", align 1
  %"253" = sext i8 %"252" to i32
  %"254" = icmp eq i32 %"251", %"253"
  br i1 %"254", label %node5_bb111, label %node5_bb112

node5_bb111:                                      ; preds = %node5_bb110
  %"255" = load i8* @"'send5", align 1
  br label %node5_bb113

node5_bb112:                                      ; preds = %node5_bb110, %node5_bb109
  %"256" = load i8* @"'p5_new", align 1
  br label %node5_bb113

node5_bb113:                                      ; preds = %node5_bb112, %node5_bb111
  %.sink1 = phi i8 [ %"255", %node5_bb111 ], [ %"256", %node5_bb112 ]
  %"257" = sext i8 %.sink1 to i32
  %"258" = trunc i32 %"257" to i8
  store i8 %"258", i8* @"'p5_new", align 1
  br label %node5_bb114

node5_bb114:                                      ; preds = %node5_bb108, %node5_bb113, %node5_bb107
  store i8 1, i8* @"'mode5", align 1
  br label %node5_bb115

node5_bb115:                                      ; preds = %node5_bb114, %node5_bb101
  ret void
}

; Function Attrs: nounwind uwtable
define void @node6() #0 {
node6_bb116:
  %"259" = load i8* @"'mode6", align 1
  %"260" = trunc i8 %"259" to i1
  br i1 %"260", label %node6_bb117, label %node6_bb125

node6_bb117:                                      ; preds = %node6_bb116
  %"261" = load i8* @"'p5_old", align 1
  %"262" = load i8* @"'nomsg", align 1
  store i8 %"262", i8* @"'p5_old", align 1
  %"263" = sext i8 %"261" to i32
  %"264" = load i8* @"'nomsg", align 1
  %"265" = sext i8 %"264" to i32
  %"266" = icmp ne i32 %"263", %"265"
  br i1 %"266", label %node6_bb118, label %node6_bb124

node6_bb118:                                      ; preds = %node6_bb117
  %"267" = load i8* @"'alive6", align 1
  %"268" = trunc i8 %"267" to i1
  br i1 %"268", label %node6_bb119, label %node6_bb123

node6_bb119:                                      ; preds = %node6_bb118
  %"269" = sext i8 %"261" to i32
  %"270" = load i8* @"'id6", align 1
  %"271" = sext i8 %"270" to i32
  %"272" = icmp sgt i32 %"269", %"271"
  br i1 %"272", label %node6_bb120, label %node6_bb121

node6_bb120:                                      ; preds = %node6_bb119
  store i8 %"261", i8* @"'send6", align 1
  br label %node6_bb124

node6_bb121:                                      ; preds = %node6_bb119
  %"273" = sext i8 %"261" to i32
  %"274" = load i8* @"'id6", align 1
  %"275" = sext i8 %"274" to i32
  %"276" = icmp eq i32 %"273", %"275"
  br i1 %"276", label %node6_bb122, label %node6_bb124

node6_bb122:                                      ; preds = %node6_bb121
  store i8 1, i8* @"'st6", align 1
  br label %node6_bb124

node6_bb123:                                      ; preds = %node6_bb118
  store i8 %"261", i8* @"'send6", align 1
  br label %node6_bb124

node6_bb124:                                      ; preds = %node6_bb123, %node6_bb121, %node6_bb122, %node6_bb120, %node6_bb117
  store i8 0, i8* @"'mode6", align 1
  br label %node6_bb138

node6_bb125:                                      ; preds = %node6_bb116
  %"277" = load i8* @"'alive6", align 1
  %"278" = trunc i8 %"277" to i1
  %"279" = load i8* @"'send6", align 1
  %"280" = sext i8 %"279" to i32
  br i1 %"278", label %node6_bb126, label %node6_bb131

node6_bb126:                                      ; preds = %node6_bb125
  %"281" = load i8* @"'nomsg", align 1
  %"282" = sext i8 %"281" to i32
  %"283" = icmp ne i32 %"280", %"282"
  br i1 %"283", label %node6_bb127, label %node6_bb129

node6_bb127:                                      ; preds = %node6_bb126
  %"284" = load i8* @"'p6_new", align 1
  %"285" = sext i8 %"284" to i32
  %"286" = load i8* @"'nomsg", align 1
  %"287" = sext i8 %"286" to i32
  %"288" = icmp eq i32 %"285", %"287"
  br i1 %"288", label %node6_bb128, label %node6_bb129

node6_bb128:                                      ; preds = %node6_bb127
  %"289" = load i8* @"'send6", align 1
  br label %node6_bb130

node6_bb129:                                      ; preds = %node6_bb127, %node6_bb126
  %"290" = load i8* @"'p6_new", align 1
  br label %node6_bb130

node6_bb130:                                      ; preds = %node6_bb129, %node6_bb128
  %.sink = phi i8 [ %"289", %node6_bb128 ], [ %"290", %node6_bb129 ]
  %"291" = sext i8 %.sink to i32
  %"292" = trunc i32 %"291" to i8
  store i8 %"292", i8* @"'p6_new", align 1
  br label %node6_bb137

node6_bb131:                                      ; preds = %node6_bb125
  %"293" = load i8* @"'id6", align 1
  %"294" = sext i8 %"293" to i32
  %"295" = icmp ne i32 %"280", %"294"
  br i1 %"295", label %node6_bb132, label %node6_bb137

node6_bb132:                                      ; preds = %node6_bb131
  %"296" = load i8* @"'send6", align 1
  %"297" = sext i8 %"296" to i32
  %"298" = load i8* @"'nomsg", align 1
  %"299" = sext i8 %"298" to i32
  %"300" = icmp ne i32 %"297", %"299"
  br i1 %"300", label %node6_bb133, label %node6_bb135

node6_bb133:                                      ; preds = %node6_bb132
  %"301" = load i8* @"'p6_new", align 1
  %"302" = sext i8 %"301" to i32
  %"303" = load i8* @"'nomsg", align 1
  %"304" = sext i8 %"303" to i32
  %"305" = icmp eq i32 %"302", %"304"
  br i1 %"305", label %node6_bb134, label %node6_bb135

node6_bb134:                                      ; preds = %node6_bb133
  %"306" = load i8* @"'send6", align 1
  br label %node6_bb136

node6_bb135:                                      ; preds = %node6_bb133, %node6_bb132
  %"307" = load i8* @"'p6_new", align 1
  br label %node6_bb136

node6_bb136:                                      ; preds = %node6_bb135, %node6_bb134
  %.sink1 = phi i8 [ %"306", %node6_bb134 ], [ %"307", %node6_bb135 ]
  %"308" = sext i8 %.sink1 to i32
  %"309" = trunc i32 %"308" to i8
  store i8 %"309", i8* @"'p6_new", align 1
  br label %node6_bb137

node6_bb137:                                      ; preds = %node6_bb131, %node6_bb136, %node6_bb130
  store i8 1, i8* @"'mode6", align 1
  br label %node6_bb138

node6_bb138:                                      ; preds = %node6_bb137, %node6_bb124
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @init() #0 {
init_bb139:
  %"310" = load i8* @"'r1", align 1
  %"311" = sext i8 %"310" to i32
  %"312" = icmp eq i32 %"311", 0
  br i1 %"312", label %init_bb140, label %init_bb180

init_bb140:                                       ; preds = %init_bb139
  %"313" = load i8* @"'alive1", align 1
  %"314" = trunc i8 %"313" to i1
  %"315" = zext i1 %"314" to i32
  %"316" = load i8* @"'alive2", align 1
  %"317" = trunc i8 %"316" to i1
  %"318" = zext i1 %"317" to i32
  %"319" = add nsw i32 %"315", %"318"
  %"320" = load i8* @"'alive3", align 1
  %"321" = trunc i8 %"320" to i1
  %"322" = zext i1 %"321" to i32
  %"323" = add nsw i32 %"319", %"322"
  %"324" = load i8* @"'alive4", align 1
  %"325" = trunc i8 %"324" to i1
  %"326" = zext i1 %"325" to i32
  %"327" = add nsw i32 %"323", %"326"
  %"328" = load i8* @"'alive5", align 1
  %"329" = trunc i8 %"328" to i1
  %"330" = zext i1 %"329" to i32
  %"331" = add nsw i32 %"327", %"330"
  %"332" = load i8* @"'alive6", align 1
  %"333" = trunc i8 %"332" to i1
  %"334" = zext i1 %"333" to i32
  %"335" = add nsw i32 %"331", %"334"
  %"336" = icmp sge i32 %"335", 1
  br i1 %"336", label %init_bb141, label %init_bb180

init_bb141:                                       ; preds = %init_bb140
  %"337" = load i8* @"'id1", align 1
  %"338" = sext i8 %"337" to i32
  %"339" = icmp sge i32 %"338", 0
  br i1 %"339", label %init_bb142, label %init_bb180

init_bb142:                                       ; preds = %init_bb141
  %"340" = load i8* @"'st1", align 1
  %"341" = sext i8 %"340" to i32
  %"342" = icmp eq i32 %"341", 0
  br i1 %"342", label %init_bb143, label %init_bb180

init_bb143:                                       ; preds = %init_bb142
  %"343" = load i8* @"'send1", align 1
  %"344" = sext i8 %"343" to i32
  %"345" = load i8* @"'id1", align 1
  %"346" = sext i8 %"345" to i32
  %"347" = icmp eq i32 %"344", %"346"
  br i1 %"347", label %init_bb144, label %init_bb180

init_bb144:                                       ; preds = %init_bb143
  %"348" = load i8* @"'mode1", align 1
  %"349" = trunc i8 %"348" to i1
  %"350" = zext i1 %"349" to i32
  %"351" = icmp eq i32 %"350", 0
  br i1 %"351", label %init_bb145, label %init_bb180

init_bb145:                                       ; preds = %init_bb144
  %"352" = load i8* @"'id2", align 1
  %"353" = sext i8 %"352" to i32
  %"354" = icmp sge i32 %"353", 0
  br i1 %"354", label %init_bb146, label %init_bb180

init_bb146:                                       ; preds = %init_bb145
  %"355" = load i8* @"'st2", align 1
  %"356" = sext i8 %"355" to i32
  %"357" = icmp eq i32 %"356", 0
  br i1 %"357", label %init_bb147, label %init_bb180

init_bb147:                                       ; preds = %init_bb146
  %"358" = load i8* @"'send2", align 1
  %"359" = sext i8 %"358" to i32
  %"360" = load i8* @"'id2", align 1
  %"361" = sext i8 %"360" to i32
  %"362" = icmp eq i32 %"359", %"361"
  br i1 %"362", label %init_bb148, label %init_bb180

init_bb148:                                       ; preds = %init_bb147
  %"363" = load i8* @"'mode2", align 1
  %"364" = trunc i8 %"363" to i1
  %"365" = zext i1 %"364" to i32
  %"366" = icmp eq i32 %"365", 0
  br i1 %"366", label %init_bb149, label %init_bb180

init_bb149:                                       ; preds = %init_bb148
  %"367" = load i8* @"'id3", align 1
  %"368" = sext i8 %"367" to i32
  %"369" = icmp sge i32 %"368", 0
  br i1 %"369", label %init_bb150, label %init_bb180

init_bb150:                                       ; preds = %init_bb149
  %"370" = load i8* @"'st3", align 1
  %"371" = sext i8 %"370" to i32
  %"372" = icmp eq i32 %"371", 0
  br i1 %"372", label %init_bb151, label %init_bb180

init_bb151:                                       ; preds = %init_bb150
  %"373" = load i8* @"'send3", align 1
  %"374" = sext i8 %"373" to i32
  %"375" = load i8* @"'id3", align 1
  %"376" = sext i8 %"375" to i32
  %"377" = icmp eq i32 %"374", %"376"
  br i1 %"377", label %init_bb152, label %init_bb180

init_bb152:                                       ; preds = %init_bb151
  %"378" = load i8* @"'mode3", align 1
  %"379" = trunc i8 %"378" to i1
  %"380" = zext i1 %"379" to i32
  %"381" = icmp eq i32 %"380", 0
  br i1 %"381", label %init_bb153, label %init_bb180

init_bb153:                                       ; preds = %init_bb152
  %"382" = load i8* @"'id4", align 1
  %"383" = sext i8 %"382" to i32
  %"384" = icmp sge i32 %"383", 0
  br i1 %"384", label %init_bb154, label %init_bb180

init_bb154:                                       ; preds = %init_bb153
  %"385" = load i8* @"'st4", align 1
  %"386" = sext i8 %"385" to i32
  %"387" = icmp eq i32 %"386", 0
  br i1 %"387", label %init_bb155, label %init_bb180

init_bb155:                                       ; preds = %init_bb154
  %"388" = load i8* @"'send4", align 1
  %"389" = sext i8 %"388" to i32
  %"390" = load i8* @"'id4", align 1
  %"391" = sext i8 %"390" to i32
  %"392" = icmp eq i32 %"389", %"391"
  br i1 %"392", label %init_bb156, label %init_bb180

init_bb156:                                       ; preds = %init_bb155
  %"393" = load i8* @"'mode4", align 1
  %"394" = trunc i8 %"393" to i1
  %"395" = zext i1 %"394" to i32
  %"396" = icmp eq i32 %"395", 0
  br i1 %"396", label %init_bb157, label %init_bb180

init_bb157:                                       ; preds = %init_bb156
  %"397" = load i8* @"'id5", align 1
  %"398" = sext i8 %"397" to i32
  %"399" = icmp sge i32 %"398", 0
  br i1 %"399", label %init_bb158, label %init_bb180

init_bb158:                                       ; preds = %init_bb157
  %"400" = load i8* @"'st5", align 1
  %"401" = sext i8 %"400" to i32
  %"402" = icmp eq i32 %"401", 0
  br i1 %"402", label %init_bb159, label %init_bb180

init_bb159:                                       ; preds = %init_bb158
  %"403" = load i8* @"'send5", align 1
  %"404" = sext i8 %"403" to i32
  %"405" = load i8* @"'id5", align 1
  %"406" = sext i8 %"405" to i32
  %"407" = icmp eq i32 %"404", %"406"
  br i1 %"407", label %init_bb160, label %init_bb180

init_bb160:                                       ; preds = %init_bb159
  %"408" = load i8* @"'mode5", align 1
  %"409" = trunc i8 %"408" to i1
  %"410" = zext i1 %"409" to i32
  %"411" = icmp eq i32 %"410", 0
  br i1 %"411", label %init_bb161, label %init_bb180

init_bb161:                                       ; preds = %init_bb160
  %"412" = load i8* @"'id6", align 1
  %"413" = sext i8 %"412" to i32
  %"414" = icmp sge i32 %"413", 0
  br i1 %"414", label %init_bb162, label %init_bb180

init_bb162:                                       ; preds = %init_bb161
  %"415" = load i8* @"'st6", align 1
  %"416" = sext i8 %"415" to i32
  %"417" = icmp eq i32 %"416", 0
  br i1 %"417", label %init_bb163, label %init_bb180

init_bb163:                                       ; preds = %init_bb162
  %"418" = load i8* @"'send6", align 1
  %"419" = sext i8 %"418" to i32
  %"420" = load i8* @"'id6", align 1
  %"421" = sext i8 %"420" to i32
  %"422" = icmp eq i32 %"419", %"421"
  br i1 %"422", label %init_bb164, label %init_bb180

init_bb164:                                       ; preds = %init_bb163
  %"423" = load i8* @"'mode6", align 1
  %"424" = trunc i8 %"423" to i1
  %"425" = zext i1 %"424" to i32
  %"426" = icmp eq i32 %"425", 0
  br i1 %"426", label %init_bb165, label %init_bb180

init_bb165:                                       ; preds = %init_bb164
  %"427" = load i8* @"'id1", align 1
  %"428" = sext i8 %"427" to i32
  %"429" = load i8* @"'id2", align 1
  %"430" = sext i8 %"429" to i32
  %"431" = icmp ne i32 %"428", %"430"
  br i1 %"431", label %init_bb166, label %init_bb180

init_bb166:                                       ; preds = %init_bb165
  %"432" = load i8* @"'id1", align 1
  %"433" = sext i8 %"432" to i32
  %"434" = load i8* @"'id3", align 1
  %"435" = sext i8 %"434" to i32
  %"436" = icmp ne i32 %"433", %"435"
  br i1 %"436", label %init_bb167, label %init_bb180

init_bb167:                                       ; preds = %init_bb166
  %"437" = load i8* @"'id1", align 1
  %"438" = sext i8 %"437" to i32
  %"439" = load i8* @"'id4", align 1
  %"440" = sext i8 %"439" to i32
  %"441" = icmp ne i32 %"438", %"440"
  br i1 %"441", label %init_bb168, label %init_bb180

init_bb168:                                       ; preds = %init_bb167
  %"442" = load i8* @"'id1", align 1
  %"443" = sext i8 %"442" to i32
  %"444" = load i8* @"'id5", align 1
  %"445" = sext i8 %"444" to i32
  %"446" = icmp ne i32 %"443", %"445"
  br i1 %"446", label %init_bb169, label %init_bb180

init_bb169:                                       ; preds = %init_bb168
  %"447" = load i8* @"'id1", align 1
  %"448" = sext i8 %"447" to i32
  %"449" = load i8* @"'id6", align 1
  %"450" = sext i8 %"449" to i32
  %"451" = icmp ne i32 %"448", %"450"
  br i1 %"451", label %init_bb170, label %init_bb180

init_bb170:                                       ; preds = %init_bb169
  %"452" = load i8* @"'id2", align 1
  %"453" = sext i8 %"452" to i32
  %"454" = load i8* @"'id3", align 1
  %"455" = sext i8 %"454" to i32
  %"456" = icmp ne i32 %"453", %"455"
  br i1 %"456", label %init_bb171, label %init_bb180

init_bb171:                                       ; preds = %init_bb170
  %"457" = load i8* @"'id2", align 1
  %"458" = sext i8 %"457" to i32
  %"459" = load i8* @"'id4", align 1
  %"460" = sext i8 %"459" to i32
  %"461" = icmp ne i32 %"458", %"460"
  br i1 %"461", label %init_bb172, label %init_bb180

init_bb172:                                       ; preds = %init_bb171
  %"462" = load i8* @"'id2", align 1
  %"463" = sext i8 %"462" to i32
  %"464" = load i8* @"'id5", align 1
  %"465" = sext i8 %"464" to i32
  %"466" = icmp ne i32 %"463", %"465"
  br i1 %"466", label %init_bb173, label %init_bb180

init_bb173:                                       ; preds = %init_bb172
  %"467" = load i8* @"'id2", align 1
  %"468" = sext i8 %"467" to i32
  %"469" = load i8* @"'id6", align 1
  %"470" = sext i8 %"469" to i32
  %"471" = icmp ne i32 %"468", %"470"
  br i1 %"471", label %init_bb174, label %init_bb180

init_bb174:                                       ; preds = %init_bb173
  %"472" = load i8* @"'id3", align 1
  %"473" = sext i8 %"472" to i32
  %"474" = load i8* @"'id4", align 1
  %"475" = sext i8 %"474" to i32
  %"476" = icmp ne i32 %"473", %"475"
  br i1 %"476", label %init_bb175, label %init_bb180

init_bb175:                                       ; preds = %init_bb174
  %"477" = load i8* @"'id3", align 1
  %"478" = sext i8 %"477" to i32
  %"479" = load i8* @"'id5", align 1
  %"480" = sext i8 %"479" to i32
  %"481" = icmp ne i32 %"478", %"480"
  br i1 %"481", label %init_bb176, label %init_bb180

init_bb176:                                       ; preds = %init_bb175
  %"482" = load i8* @"'id3", align 1
  %"483" = sext i8 %"482" to i32
  %"484" = load i8* @"'id6", align 1
  %"485" = sext i8 %"484" to i32
  %"486" = icmp ne i32 %"483", %"485"
  br i1 %"486", label %init_bb177, label %init_bb180

init_bb177:                                       ; preds = %init_bb176
  %"487" = load i8* @"'id4", align 1
  %"488" = sext i8 %"487" to i32
  %"489" = load i8* @"'id5", align 1
  %"490" = sext i8 %"489" to i32
  %"491" = icmp ne i32 %"488", %"490"
  br i1 %"491", label %init_bb178, label %init_bb180

init_bb178:                                       ; preds = %init_bb177
  %"492" = load i8* @"'id4", align 1
  %"493" = sext i8 %"492" to i32
  %"494" = load i8* @"'id6", align 1
  %"495" = sext i8 %"494" to i32
  %"496" = icmp ne i32 %"493", %"495"
  br i1 %"496", label %init_bb179, label %init_bb180

init_bb179:                                       ; preds = %init_bb178
  %"497" = load i8* @"'id5", align 1
  %"498" = sext i8 %"497" to i32
  %"499" = load i8* @"'id6", align 1
  %"500" = sext i8 %"499" to i32
  %"501" = icmp ne i32 %"498", %"500"
  %. = select i1 %"501", i32 1, i32 0
  br label %init_bb180

init_bb180:                                       ; preds = %init_bb139, %init_bb141, %init_bb143, %init_bb145, %init_bb147, %init_bb149, %init_bb151, %init_bb153, %init_bb155, %init_bb157, %init_bb159, %init_bb161, %init_bb163, %init_bb165, %init_bb167, %init_bb169, %init_bb171, %init_bb173, %init_bb175, %init_bb177, %init_bb179, %init_bb178, %init_bb176, %init_bb174, %init_bb172, %init_bb170, %init_bb168, %init_bb166, %init_bb164, %init_bb162, %init_bb160, %init_bb158, %init_bb156, %init_bb154, %init_bb152, %init_bb150, %init_bb148, %init_bb146, %init_bb144, %init_bb142, %init_bb140
  %tmp.40 = phi i32 [ %., %init_bb179 ], [ 0, %init_bb178 ], [ 0, %init_bb177 ], [ 0, %init_bb176 ], [ 0, %init_bb175 ], [ 0, %init_bb174 ], [ 0, %init_bb173 ], [ 0, %init_bb172 ], [ 0, %init_bb171 ], [ 0, %init_bb170 ], [ 0, %init_bb169 ], [ 0, %init_bb168 ], [ 0, %init_bb167 ], [ 0, %init_bb166 ], [ 0, %init_bb165 ], [ 0, %init_bb164 ], [ 0, %init_bb163 ], [ 0, %init_bb162 ], [ 0, %init_bb161 ], [ 0, %init_bb160 ], [ 0, %init_bb159 ], [ 0, %init_bb158 ], [ 0, %init_bb157 ], [ 0, %init_bb156 ], [ 0, %init_bb155 ], [ 0, %init_bb154 ], [ 0, %init_bb153 ], [ 0, %init_bb152 ], [ 0, %init_bb151 ], [ 0, %init_bb150 ], [ 0, %init_bb149 ], [ 0, %init_bb148 ], [ 0, %init_bb147 ], [ 0, %init_bb146 ], [ 0, %init_bb145 ], [ 0, %init_bb144 ], [ 0, %init_bb143 ], [ 0, %init_bb142 ], [ 0, %init_bb141 ], [ 0, %init_bb140 ], [ 0, %init_bb139 ]
  ret i32 %tmp.40
}

; Function Attrs: nounwind uwtable
define i32 @check() #0 {
check_bb181:
  %"502" = load i8* @"'st1", align 1
  %"503" = sext i8 %"502" to i32
  %"504" = load i8* @"'st2", align 1
  %"505" = sext i8 %"504" to i32
  %"506" = add nsw i32 %"503", %"505"
  %"507" = load i8* @"'st3", align 1
  %"508" = sext i8 %"507" to i32
  %"509" = add nsw i32 %"506", %"508"
  %"510" = load i8* @"'st4", align 1
  %"511" = sext i8 %"510" to i32
  %"512" = add nsw i32 %"509", %"511"
  %"513" = load i8* @"'st5", align 1
  %"514" = sext i8 %"513" to i32
  %"515" = add nsw i32 %"512", %"514"
  %"516" = load i8* @"'st6", align 1
  %"517" = sext i8 %"516" to i32
  %"518" = add nsw i32 %"515", %"517"
  %"519" = icmp sle i32 %"518", 1
  br i1 %"519", label %check_bb182, label %check_bb184

check_bb182:                                      ; preds = %check_bb181
  %"520" = load i8* @"'r1", align 1
  %"521" = sext i8 %"520" to i32
  %"522" = icmp slt i32 %"521", 6
  br i1 %"522", label %check_bb184, label %check_bb183

check_bb183:                                      ; preds = %check_bb182
  %"523" = load i8* @"'st1", align 1
  %"524" = sext i8 %"523" to i32
  %"525" = load i8* @"'st2", align 1
  %"526" = sext i8 %"525" to i32
  %"527" = add nsw i32 %"524", %"526"
  %"528" = load i8* @"'st3", align 1
  %"529" = sext i8 %"528" to i32
  %"530" = add nsw i32 %"527", %"529"
  %"531" = load i8* @"'st4", align 1
  %"532" = sext i8 %"531" to i32
  %"533" = add nsw i32 %"530", %"532"
  %"534" = load i8* @"'st5", align 1
  %"535" = sext i8 %"534" to i32
  %"536" = add nsw i32 %"533", %"535"
  %"537" = load i8* @"'st6", align 1
  %"538" = sext i8 %"537" to i32
  %"539" = add nsw i32 %"536", %"538"
  %"540" = icmp eq i32 %"539", 1
  %. = select i1 %"540", i32 1, i32 0
  br label %check_bb184

check_bb184:                                      ; preds = %check_bb181, %check_bb183, %check_bb182
  %tmp.2 = phi i32 [ %., %check_bb183 ], [ 1, %check_bb182 ], [ 0, %check_bb181 ]
  ret i32 %tmp.2
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb185:
  %"541" = call signext i8 @__VERIFIER_nondet_char()
  store i8 %"541", i8* @"'r1", align 1
  %"542" = call signext i8 @__VERIFIER_nondet_char()
  store i8 %"542", i8* @"'id1", align 1
  %"543" = call signext i8 @__VERIFIER_nondet_char()
  store i8 %"543", i8* @"'st1", align 1
  %"544" = call signext i8 @__VERIFIER_nondet_msg_t()
  store i8 %"544", i8* @"'send1", align 1
  %"545" = call zeroext i1 @__VERIFIER_nondet__Bool()
  %"546" = zext i1 %"545" to i8
  store i8 %"546", i8* @"'mode1", align 1
  %"547" = call zeroext i1 @__VERIFIER_nondet__Bool()
  %"548" = zext i1 %"547" to i8
  store i8 %"548", i8* @"'alive1", align 1
  %"549" = call signext i8 @__VERIFIER_nondet_char()
  store i8 %"549", i8* @"'id2", align 1
  %"550" = call signext i8 @__VERIFIER_nondet_char()
  store i8 %"550", i8* @"'st2", align 1
  %"551" = call signext i8 @__VERIFIER_nondet_msg_t()
  store i8 %"551", i8* @"'send2", align 1
  %"552" = call zeroext i1 @__VERIFIER_nondet__Bool()
  %"553" = zext i1 %"552" to i8
  store i8 %"553", i8* @"'mode2", align 1
  %"554" = call zeroext i1 @__VERIFIER_nondet__Bool()
  %"555" = zext i1 %"554" to i8
  store i8 %"555", i8* @"'alive2", align 1
  %"556" = call signext i8 @__VERIFIER_nondet_char()
  store i8 %"556", i8* @"'id3", align 1
  %"557" = call signext i8 @__VERIFIER_nondet_char()
  store i8 %"557", i8* @"'st3", align 1
  %"558" = call signext i8 @__VERIFIER_nondet_msg_t()
  store i8 %"558", i8* @"'send3", align 1
  %"559" = call zeroext i1 @__VERIFIER_nondet__Bool()
  %"560" = zext i1 %"559" to i8
  store i8 %"560", i8* @"'mode3", align 1
  %"561" = call zeroext i1 @__VERIFIER_nondet__Bool()
  %"562" = zext i1 %"561" to i8
  store i8 %"562", i8* @"'alive3", align 1
  %"563" = call signext i8 @__VERIFIER_nondet_char()
  store i8 %"563", i8* @"'id4", align 1
  %"564" = call signext i8 @__VERIFIER_nondet_char()
  store i8 %"564", i8* @"'st4", align 1
  %"565" = call signext i8 @__VERIFIER_nondet_msg_t()
  store i8 %"565", i8* @"'send4", align 1
  %"566" = call zeroext i1 @__VERIFIER_nondet__Bool()
  %"567" = zext i1 %"566" to i8
  store i8 %"567", i8* @"'mode4", align 1
  %"568" = call zeroext i1 @__VERIFIER_nondet__Bool()
  %"569" = zext i1 %"568" to i8
  store i8 %"569", i8* @"'alive4", align 1
  %"570" = call signext i8 @__VERIFIER_nondet_char()
  store i8 %"570", i8* @"'id5", align 1
  %"571" = call signext i8 @__VERIFIER_nondet_char()
  store i8 %"571", i8* @"'st5", align 1
  %"572" = call signext i8 @__VERIFIER_nondet_msg_t()
  store i8 %"572", i8* @"'send5", align 1
  %"573" = call zeroext i1 @__VERIFIER_nondet__Bool()
  %"574" = zext i1 %"573" to i8
  store i8 %"574", i8* @"'mode5", align 1
  %"575" = call zeroext i1 @__VERIFIER_nondet__Bool()
  %"576" = zext i1 %"575" to i8
  store i8 %"576", i8* @"'alive5", align 1
  %"577" = call signext i8 @__VERIFIER_nondet_char()
  store i8 %"577", i8* @"'id6", align 1
  %"578" = call signext i8 @__VERIFIER_nondet_char()
  store i8 %"578", i8* @"'st6", align 1
  %"579" = call signext i8 @__VERIFIER_nondet_msg_t()
  store i8 %"579", i8* @"'send6", align 1
  %"580" = call zeroext i1 @__VERIFIER_nondet__Bool()
  %"581" = zext i1 %"580" to i8
  store i8 %"581", i8* @"'mode6", align 1
  %"582" = call zeroext i1 @__VERIFIER_nondet__Bool()
  %"583" = zext i1 %"582" to i8
  store i8 %"583", i8* @"'alive6", align 1
  %"584" = load i8* @"'r1", align 1
  %"585" = sext i8 %"584" to i32
  %"586" = icmp eq i32 %"585", 0
  br i1 %"586", label %main_bb186, label %main_init.exit

main_bb186:                                       ; preds = %main_bb185
  %"587" = load i8* @"'alive1", align 1
  %"588" = trunc i8 %"587" to i1
  %"589" = zext i1 %"588" to i32
  %"590" = load i8* @"'alive2", align 1
  %"591" = trunc i8 %"590" to i1
  %"592" = zext i1 %"591" to i32
  %"593" = add nsw i32 %"589", %"592"
  %"594" = load i8* @"'alive3", align 1
  %"595" = trunc i8 %"594" to i1
  %"596" = zext i1 %"595" to i32
  %"597" = add nsw i32 %"593", %"596"
  %"598" = load i8* @"'alive4", align 1
  %"599" = trunc i8 %"598" to i1
  %"600" = zext i1 %"599" to i32
  %"601" = add nsw i32 %"597", %"600"
  %"602" = load i8* @"'alive5", align 1
  %"603" = trunc i8 %"602" to i1
  %"604" = zext i1 %"603" to i32
  %"605" = add nsw i32 %"601", %"604"
  %"606" = load i8* @"'alive6", align 1
  %"607" = trunc i8 %"606" to i1
  %"608" = zext i1 %"607" to i32
  %"609" = add nsw i32 %"605", %"608"
  %"610" = icmp sge i32 %"609", 1
  br i1 %"610", label %main_bb187, label %main_init.exit

main_bb187:                                       ; preds = %main_bb186
  %"611" = load i8* @"'id1", align 1
  %"612" = sext i8 %"611" to i32
  %"613" = icmp sge i32 %"612", 0
  br i1 %"613", label %main_bb188, label %main_init.exit

main_bb188:                                       ; preds = %main_bb187
  %"614" = load i8* @"'st1", align 1
  %"615" = sext i8 %"614" to i32
  %"616" = icmp eq i32 %"615", 0
  br i1 %"616", label %main_bb189, label %main_init.exit

main_bb189:                                       ; preds = %main_bb188
  %"617" = load i8* @"'send1", align 1
  %"618" = sext i8 %"617" to i32
  %"619" = load i8* @"'id1", align 1
  %"620" = sext i8 %"619" to i32
  %"621" = icmp eq i32 %"618", %"620"
  br i1 %"621", label %main_bb190, label %main_init.exit

main_bb190:                                       ; preds = %main_bb189
  %"622" = load i8* @"'mode1", align 1
  %"623" = trunc i8 %"622" to i1
  %"624" = zext i1 %"623" to i32
  %"625" = icmp eq i32 %"624", 0
  br i1 %"625", label %main_bb191, label %main_init.exit

main_bb191:                                       ; preds = %main_bb190
  %"626" = load i8* @"'id2", align 1
  %"627" = sext i8 %"626" to i32
  %"628" = icmp sge i32 %"627", 0
  br i1 %"628", label %main_bb192, label %main_init.exit

main_bb192:                                       ; preds = %main_bb191
  %"629" = load i8* @"'st2", align 1
  %"630" = sext i8 %"629" to i32
  %"631" = icmp eq i32 %"630", 0
  br i1 %"631", label %main_bb193, label %main_init.exit

main_bb193:                                       ; preds = %main_bb192
  %"632" = load i8* @"'send2", align 1
  %"633" = sext i8 %"632" to i32
  %"634" = load i8* @"'id2", align 1
  %"635" = sext i8 %"634" to i32
  %"636" = icmp eq i32 %"633", %"635"
  br i1 %"636", label %main_bb194, label %main_init.exit

main_bb194:                                       ; preds = %main_bb193
  %"637" = load i8* @"'mode2", align 1
  %"638" = trunc i8 %"637" to i1
  %"639" = zext i1 %"638" to i32
  %"640" = icmp eq i32 %"639", 0
  br i1 %"640", label %main_bb195, label %main_init.exit

main_bb195:                                       ; preds = %main_bb194
  %"641" = load i8* @"'id3", align 1
  %"642" = sext i8 %"641" to i32
  %"643" = icmp sge i32 %"642", 0
  br i1 %"643", label %main_bb196, label %main_init.exit

main_bb196:                                       ; preds = %main_bb195
  %"644" = load i8* @"'st3", align 1
  %"645" = sext i8 %"644" to i32
  %"646" = icmp eq i32 %"645", 0
  br i1 %"646", label %main_bb197, label %main_init.exit

main_bb197:                                       ; preds = %main_bb196
  %"647" = load i8* @"'send3", align 1
  %"648" = sext i8 %"647" to i32
  %"649" = load i8* @"'id3", align 1
  %"650" = sext i8 %"649" to i32
  %"651" = icmp eq i32 %"648", %"650"
  br i1 %"651", label %main_bb198, label %main_init.exit

main_bb198:                                       ; preds = %main_bb197
  %"652" = load i8* @"'mode3", align 1
  %"653" = trunc i8 %"652" to i1
  %"654" = zext i1 %"653" to i32
  %"655" = icmp eq i32 %"654", 0
  br i1 %"655", label %main_bb199, label %main_init.exit

main_bb199:                                       ; preds = %main_bb198
  %"656" = load i8* @"'id4", align 1
  %"657" = sext i8 %"656" to i32
  %"658" = icmp sge i32 %"657", 0
  br i1 %"658", label %main_bb200, label %main_init.exit

main_bb200:                                       ; preds = %main_bb199
  %"659" = load i8* @"'st4", align 1
  %"660" = sext i8 %"659" to i32
  %"661" = icmp eq i32 %"660", 0
  br i1 %"661", label %main_bb201, label %main_init.exit

main_bb201:                                       ; preds = %main_bb200
  %"662" = load i8* @"'send4", align 1
  %"663" = sext i8 %"662" to i32
  %"664" = load i8* @"'id4", align 1
  %"665" = sext i8 %"664" to i32
  %"666" = icmp eq i32 %"663", %"665"
  br i1 %"666", label %main_bb202, label %main_init.exit

main_bb202:                                       ; preds = %main_bb201
  %"667" = load i8* @"'mode4", align 1
  %"668" = trunc i8 %"667" to i1
  %"669" = zext i1 %"668" to i32
  %"670" = icmp eq i32 %"669", 0
  br i1 %"670", label %main_bb203, label %main_init.exit

main_bb203:                                       ; preds = %main_bb202
  %"671" = load i8* @"'id5", align 1
  %"672" = sext i8 %"671" to i32
  %"673" = icmp sge i32 %"672", 0
  br i1 %"673", label %main_bb204, label %main_init.exit

main_bb204:                                       ; preds = %main_bb203
  %"674" = load i8* @"'st5", align 1
  %"675" = sext i8 %"674" to i32
  %"676" = icmp eq i32 %"675", 0
  br i1 %"676", label %main_bb205, label %main_init.exit

main_bb205:                                       ; preds = %main_bb204
  %"677" = load i8* @"'send5", align 1
  %"678" = sext i8 %"677" to i32
  %"679" = load i8* @"'id5", align 1
  %"680" = sext i8 %"679" to i32
  %"681" = icmp eq i32 %"678", %"680"
  br i1 %"681", label %main_bb206, label %main_init.exit

main_bb206:                                       ; preds = %main_bb205
  %"682" = load i8* @"'mode5", align 1
  %"683" = trunc i8 %"682" to i1
  %"684" = zext i1 %"683" to i32
  %"685" = icmp eq i32 %"684", 0
  br i1 %"685", label %main_bb207, label %main_init.exit

main_bb207:                                       ; preds = %main_bb206
  %"686" = load i8* @"'id6", align 1
  %"687" = sext i8 %"686" to i32
  %"688" = icmp sge i32 %"687", 0
  br i1 %"688", label %main_bb208, label %main_init.exit

main_bb208:                                       ; preds = %main_bb207
  %"689" = load i8* @"'st6", align 1
  %"690" = sext i8 %"689" to i32
  %"691" = icmp eq i32 %"690", 0
  br i1 %"691", label %main_bb209, label %main_init.exit

main_bb209:                                       ; preds = %main_bb208
  %"692" = load i8* @"'send6", align 1
  %"693" = sext i8 %"692" to i32
  %"694" = load i8* @"'id6", align 1
  %"695" = sext i8 %"694" to i32
  %"696" = icmp eq i32 %"693", %"695"
  br i1 %"696", label %main_bb210, label %main_init.exit

main_bb210:                                       ; preds = %main_bb209
  %"697" = load i8* @"'mode6", align 1
  %"698" = trunc i8 %"697" to i1
  %"699" = zext i1 %"698" to i32
  %"700" = icmp eq i32 %"699", 0
  br i1 %"700", label %main_bb211, label %main_init.exit

main_bb211:                                       ; preds = %main_bb210
  %"701" = load i8* @"'id1", align 1
  %"702" = sext i8 %"701" to i32
  %"703" = load i8* @"'id2", align 1
  %"704" = sext i8 %"703" to i32
  %"705" = icmp ne i32 %"702", %"704"
  br i1 %"705", label %main_bb212, label %main_init.exit

main_bb212:                                       ; preds = %main_bb211
  %"706" = load i8* @"'id1", align 1
  %"707" = sext i8 %"706" to i32
  %"708" = load i8* @"'id3", align 1
  %"709" = sext i8 %"708" to i32
  %"710" = icmp ne i32 %"707", %"709"
  br i1 %"710", label %main_bb213, label %main_init.exit

main_bb213:                                       ; preds = %main_bb212
  %"711" = load i8* @"'id1", align 1
  %"712" = sext i8 %"711" to i32
  %"713" = load i8* @"'id4", align 1
  %"714" = sext i8 %"713" to i32
  %"715" = icmp ne i32 %"712", %"714"
  br i1 %"715", label %main_bb214, label %main_init.exit

main_bb214:                                       ; preds = %main_bb213
  %"716" = load i8* @"'id1", align 1
  %"717" = sext i8 %"716" to i32
  %"718" = load i8* @"'id5", align 1
  %"719" = sext i8 %"718" to i32
  %"720" = icmp ne i32 %"717", %"719"
  br i1 %"720", label %main_bb215, label %main_init.exit

main_bb215:                                       ; preds = %main_bb214
  %"721" = load i8* @"'id1", align 1
  %"722" = sext i8 %"721" to i32
  %"723" = load i8* @"'id6", align 1
  %"724" = sext i8 %"723" to i32
  %"725" = icmp ne i32 %"722", %"724"
  br i1 %"725", label %main_bb216, label %main_init.exit

main_bb216:                                       ; preds = %main_bb215
  %"726" = load i8* @"'id2", align 1
  %"727" = sext i8 %"726" to i32
  %"728" = load i8* @"'id3", align 1
  %"729" = sext i8 %"728" to i32
  %"730" = icmp ne i32 %"727", %"729"
  br i1 %"730", label %main_bb217, label %main_init.exit

main_bb217:                                       ; preds = %main_bb216
  %"731" = load i8* @"'id2", align 1
  %"732" = sext i8 %"731" to i32
  %"733" = load i8* @"'id4", align 1
  %"734" = sext i8 %"733" to i32
  %"735" = icmp ne i32 %"732", %"734"
  br i1 %"735", label %main_bb218, label %main_init.exit

main_bb218:                                       ; preds = %main_bb217
  %"736" = load i8* @"'id2", align 1
  %"737" = sext i8 %"736" to i32
  %"738" = load i8* @"'id5", align 1
  %"739" = sext i8 %"738" to i32
  %"740" = icmp ne i32 %"737", %"739"
  br i1 %"740", label %main_bb219, label %main_init.exit

main_bb219:                                       ; preds = %main_bb218
  %"741" = load i8* @"'id2", align 1
  %"742" = sext i8 %"741" to i32
  %"743" = load i8* @"'id6", align 1
  %"744" = sext i8 %"743" to i32
  %"745" = icmp ne i32 %"742", %"744"
  br i1 %"745", label %main_bb220, label %main_init.exit

main_bb220:                                       ; preds = %main_bb219
  %"746" = load i8* @"'id3", align 1
  %"747" = sext i8 %"746" to i32
  %"748" = load i8* @"'id4", align 1
  %"749" = sext i8 %"748" to i32
  %"750" = icmp ne i32 %"747", %"749"
  br i1 %"750", label %main_bb221, label %main_init.exit

main_bb221:                                       ; preds = %main_bb220
  %"751" = load i8* @"'id3", align 1
  %"752" = sext i8 %"751" to i32
  %"753" = load i8* @"'id5", align 1
  %"754" = sext i8 %"753" to i32
  %"755" = icmp ne i32 %"752", %"754"
  br i1 %"755", label %main_bb222, label %main_init.exit

main_bb222:                                       ; preds = %main_bb221
  %"756" = load i8* @"'id3", align 1
  %"757" = sext i8 %"756" to i32
  %"758" = load i8* @"'id6", align 1
  %"759" = sext i8 %"758" to i32
  %"760" = icmp ne i32 %"757", %"759"
  br i1 %"760", label %main_bb223, label %main_init.exit

main_bb223:                                       ; preds = %main_bb222
  %"761" = load i8* @"'id4", align 1
  %"762" = sext i8 %"761" to i32
  %"763" = load i8* @"'id5", align 1
  %"764" = sext i8 %"763" to i32
  %"765" = icmp ne i32 %"762", %"764"
  br i1 %"765", label %main_bb224, label %main_init.exit

main_bb224:                                       ; preds = %main_bb223
  %"766" = load i8* @"'id4", align 1
  %"767" = sext i8 %"766" to i32
  %"768" = load i8* @"'id6", align 1
  %"769" = sext i8 %"768" to i32
  %"770" = icmp ne i32 %"767", %"769"
  br i1 %"770", label %main_bb225, label %main_init.exit

main_bb225:                                       ; preds = %main_bb224
  %"771" = load i8* @"'id5", align 1
  %"772" = sext i8 %"771" to i32
  %"773" = load i8* @"'id6", align 1
  %"774" = sext i8 %"773" to i32
  %"775" = icmp ne i32 %"772", %"774"
  %..i = select i1 %"775", i32 1, i32 0
  br label %main_init.exit

main_init.exit:                                   ; preds = %main_bb185, %main_bb186, %main_bb187, %main_bb188, %main_bb189, %main_bb190, %main_bb191, %main_bb192, %main_bb193, %main_bb194, %main_bb195, %main_bb196, %main_bb197, %main_bb198, %main_bb199, %main_bb200, %main_bb201, %main_bb202, %main_bb203, %main_bb204, %main_bb205, %main_bb206, %main_bb207, %main_bb208, %main_bb209, %main_bb210, %main_bb211, %main_bb212, %main_bb213, %main_bb214, %main_bb215, %main_bb216, %main_bb217, %main_bb218, %main_bb219, %main_bb220, %main_bb221, %main_bb222, %main_bb223, %main_bb224, %main_bb225
  %tmp.40.i = phi i32 [ %..i, %main_bb225 ], [ 0, %main_bb224 ], [ 0, %main_bb223 ], [ 0, %main_bb222 ], [ 0, %main_bb221 ], [ 0, %main_bb220 ], [ 0, %main_bb219 ], [ 0, %main_bb218 ], [ 0, %main_bb217 ], [ 0, %main_bb216 ], [ 0, %main_bb215 ], [ 0, %main_bb214 ], [ 0, %main_bb213 ], [ 0, %main_bb212 ], [ 0, %main_bb211 ], [ 0, %main_bb210 ], [ 0, %main_bb209 ], [ 0, %main_bb208 ], [ 0, %main_bb207 ], [ 0, %main_bb206 ], [ 0, %main_bb205 ], [ 0, %main_bb204 ], [ 0, %main_bb203 ], [ 0, %main_bb202 ], [ 0, %main_bb201 ], [ 0, %main_bb200 ], [ 0, %main_bb199 ], [ 0, %main_bb198 ], [ 0, %main_bb197 ], [ 0, %main_bb196 ], [ 0, %main_bb195 ], [ 0, %main_bb194 ], [ 0, %main_bb193 ], [ 0, %main_bb192 ], [ 0, %main_bb191 ], [ 0, %main_bb190 ], [ 0, %main_bb189 ], [ 0, %main_bb188 ], [ 0, %main_bb187 ], [ 0, %main_bb186 ], [ 0, %main_bb185 ]
  %"776" = icmp ne i32 %tmp.40.i, 0
  %"777" = zext i1 %"776" to i8
  %"778" = trunc i8 %"777" to i1
  br label %main_bb226

main_bb226:                                       ; preds = %main_bb226, %main_init.exit
  %"779" = xor i1 %"778", true
  br i1 %"779", label %main_bb226, label %main___VERIFIER_assume.exit

main___VERIFIER_assume.exit:                      ; preds = %main_bb226
  %"780" = load i8* @"'nomsg", align 1
  store i8 %"780", i8* @"'p1_old", align 1
  %"781" = load i8* @"'nomsg", align 1
  store i8 %"781", i8* @"'p1_new", align 1
  %"782" = load i8* @"'nomsg", align 1
  store i8 %"782", i8* @"'p2_old", align 1
  %"783" = load i8* @"'nomsg", align 1
  store i8 %"783", i8* @"'p2_new", align 1
  %"784" = load i8* @"'nomsg", align 1
  store i8 %"784", i8* @"'p3_old", align 1
  %"785" = load i8* @"'nomsg", align 1
  store i8 %"785", i8* @"'p3_new", align 1
  %"786" = load i8* @"'nomsg", align 1
  store i8 %"786", i8* @"'p4_old", align 1
  %"787" = load i8* @"'nomsg", align 1
  store i8 %"787", i8* @"'p4_new", align 1
  %"788" = load i8* @"'nomsg", align 1
  store i8 %"788", i8* @"'p5_old", align 1
  %"789" = load i8* @"'nomsg", align 1
  store i8 %"789", i8* @"'p5_new", align 1
  %"790" = load i8* @"'nomsg", align 1
  store i8 %"790", i8* @"'p6_old", align 1
  %"791" = load i8* @"'nomsg", align 1
  store i8 %"791", i8* @"'p6_new", align 1
  %"792" = load i8* @"'nomsg", align 1
  %"793" = load i8* @"'nomsg", align 1
  %"794" = sext i8 %"793" to i32
  %"795" = load i8* @"'alive1", align 1
  %"796" = trunc i8 %"795" to i1
  %"797" = load i8* @"'id1", align 1
  %"798" = sext i8 %"797" to i32
  %"799" = load i8* @"'id1", align 1
  %"800" = sext i8 %"799" to i32
  %"801" = load i8* @"'nomsg", align 1
  %"802" = load i8* @"'nomsg", align 1
  %"803" = sext i8 %"802" to i32
  %"804" = load i8* @"'alive2", align 1
  %"805" = trunc i8 %"804" to i1
  %"806" = load i8* @"'id2", align 1
  %"807" = sext i8 %"806" to i32
  %"808" = load i8* @"'id2", align 1
  %"809" = sext i8 %"808" to i32
  %"810" = load i8* @"'nomsg", align 1
  %"811" = load i8* @"'nomsg", align 1
  %"812" = sext i8 %"811" to i32
  %"813" = load i8* @"'alive3", align 1
  %"814" = trunc i8 %"813" to i1
  %"815" = load i8* @"'id3", align 1
  %"816" = sext i8 %"815" to i32
  %"817" = load i8* @"'id3", align 1
  %"818" = sext i8 %"817" to i32
  %"819" = load i8* @"'nomsg", align 1
  %"820" = load i8* @"'nomsg", align 1
  %"821" = sext i8 %"820" to i32
  %"822" = load i8* @"'alive4", align 1
  %"823" = trunc i8 %"822" to i1
  %"824" = load i8* @"'id4", align 1
  %"825" = sext i8 %"824" to i32
  %"826" = load i8* @"'id4", align 1
  %"827" = sext i8 %"826" to i32
  %"828" = load i8* @"'nomsg", align 1
  %"829" = load i8* @"'nomsg", align 1
  %"830" = sext i8 %"829" to i32
  %"831" = load i8* @"'alive5", align 1
  %"832" = trunc i8 %"831" to i1
  %"833" = load i8* @"'id5", align 1
  %"834" = sext i8 %"833" to i32
  %"835" = load i8* @"'id5", align 1
  %"836" = sext i8 %"835" to i32
  %"837" = load i8* @"'nomsg", align 1
  %"838" = load i8* @"'nomsg", align 1
  %"839" = sext i8 %"838" to i32
  %"840" = load i8* @"'alive6", align 1
  %"841" = trunc i8 %"840" to i1
  %"842" = load i8* @"'id6", align 1
  %"843" = sext i8 %"842" to i32
  %"844" = load i8* @"'id6", align 1
  %"845" = sext i8 %"844" to i32
  %"846" = load i8* @"'nomsg", align 1
  %"847" = load i8* @"'nomsg", align 1
  %"848" = load i8* @"'nomsg", align 1
  %"849" = load i8* @"'nomsg", align 1
  %"850" = load i8* @"'nomsg", align 1
  %"851" = load i8* @"'nomsg", align 1
  %"852" = load i8* @"'alive6", align 1
  %"853" = trunc i8 %"852" to i1
  %"854" = load i8* @"'nomsg", align 1
  %"855" = sext i8 %"854" to i32
  %"856" = load i8* @"'nomsg", align 1
  %"857" = sext i8 %"856" to i32
  %"858" = load i8* @"'id6", align 1
  %"859" = sext i8 %"858" to i32
  %"860" = load i8* @"'nomsg", align 1
  %"861" = sext i8 %"860" to i32
  %"862" = load i8* @"'nomsg", align 1
  %"863" = sext i8 %"862" to i32
  %"864" = load i8* @"'alive5", align 1
  %"865" = trunc i8 %"864" to i1
  %"866" = load i8* @"'nomsg", align 1
  %"867" = sext i8 %"866" to i32
  %"868" = load i8* @"'nomsg", align 1
  %"869" = sext i8 %"868" to i32
  %"870" = load i8* @"'id5", align 1
  %"871" = sext i8 %"870" to i32
  %"872" = load i8* @"'nomsg", align 1
  %"873" = sext i8 %"872" to i32
  %"874" = load i8* @"'nomsg", align 1
  %"875" = sext i8 %"874" to i32
  %"876" = load i8* @"'alive4", align 1
  %"877" = trunc i8 %"876" to i1
  %"878" = load i8* @"'nomsg", align 1
  %"879" = sext i8 %"878" to i32
  %"880" = load i8* @"'nomsg", align 1
  %"881" = sext i8 %"880" to i32
  %"882" = load i8* @"'id4", align 1
  %"883" = sext i8 %"882" to i32
  %"884" = load i8* @"'nomsg", align 1
  %"885" = sext i8 %"884" to i32
  %"886" = load i8* @"'nomsg", align 1
  %"887" = sext i8 %"886" to i32
  %"888" = load i8* @"'alive3", align 1
  %"889" = trunc i8 %"888" to i1
  %"890" = load i8* @"'nomsg", align 1
  %"891" = sext i8 %"890" to i32
  %"892" = load i8* @"'nomsg", align 1
  %"893" = sext i8 %"892" to i32
  %"894" = load i8* @"'id3", align 1
  %"895" = sext i8 %"894" to i32
  %"896" = load i8* @"'nomsg", align 1
  %"897" = sext i8 %"896" to i32
  %"898" = load i8* @"'nomsg", align 1
  %"899" = sext i8 %"898" to i32
  %"900" = load i8* @"'alive2", align 1
  %"901" = trunc i8 %"900" to i1
  %"902" = load i8* @"'nomsg", align 1
  %"903" = sext i8 %"902" to i32
  %"904" = load i8* @"'nomsg", align 1
  %"905" = sext i8 %"904" to i32
  %"906" = load i8* @"'id2", align 1
  %"907" = sext i8 %"906" to i32
  %"908" = load i8* @"'nomsg", align 1
  %"909" = sext i8 %"908" to i32
  %"910" = load i8* @"'nomsg", align 1
  %"911" = sext i8 %"910" to i32
  %"912" = load i8* @"'alive1", align 1
  %"913" = trunc i8 %"912" to i1
  %"914" = load i8* @"'nomsg", align 1
  %"915" = sext i8 %"914" to i32
  %"916" = load i8* @"'nomsg", align 1
  %"917" = sext i8 %"916" to i32
  %"918" = load i8* @"'id1", align 1
  %"919" = sext i8 %"918" to i32
  %"920" = load i8* @"'nomsg", align 1
  %"921" = sext i8 %"920" to i32
  %"922" = load i8* @"'nomsg", align 1
  %"923" = sext i8 %"922" to i32
  br label %main_bb227

main_bb227:                                       ; preds = %main_assert.exit, %main___VERIFIER_assume.exit
  %i2.0 = phi i32 [ 0, %main___VERIFIER_assume.exit ], [ %"1157", %main_assert.exit ]
  %"924" = icmp slt i32 %i2.0, 12
  br i1 %"924", label %main_bb228, label %main_bb359

main_bb228:                                       ; preds = %main_bb227
  %"925" = load i8* @"'mode1", align 1
  %"926" = trunc i8 %"925" to i1
  br i1 %"926", label %main_bb229, label %main_bb238

main_bb229:                                       ; preds = %main_bb228
  %"927" = load i8* @"'r1", align 1
  %"928" = sext i8 %"927" to i32
  %"929" = add nsw i32 %"928", 1
  %"930" = trunc i32 %"929" to i8
  store i8 %"930", i8* @"'r1", align 1
  %"931" = load i8* @"'p6_old", align 1
  store i8 %"792", i8* @"'p6_old", align 1
  %"932" = sext i8 %"931" to i32
  %"933" = icmp ne i32 %"932", %"794"
  br i1 %"933", label %main_bb230, label %main_bb237

main_bb230:                                       ; preds = %main_bb229
  br i1 %"796", label %main_bb231, label %main_bb236

main_bb231:                                       ; preds = %main_bb230
  %"934" = sext i8 %"931" to i32
  %"935" = icmp sgt i32 %"934", %"798"
  br i1 %"935", label %main_bb232, label %main_bb233

main_bb232:                                       ; preds = %main_bb231
  store i8 %"931", i8* @"'send1", align 1
  br label %main_bb237

main_bb233:                                       ; preds = %main_bb231
  %"936" = sext i8 %"931" to i32
  %"937" = icmp eq i32 %"936", %"800"
  br i1 %"937", label %main_bb234, label %main_bb235

main_bb234:                                       ; preds = %main_bb233
  store i8 1, i8* @"'st1", align 1
  br label %main_bb237

main_bb235:                                       ; preds = %main_bb233
  store i8 %"931", i8* @"'send1", align 1
  br label %main_bb237

main_bb236:                                       ; preds = %main_bb230
  store i8 %"931", i8* @"'send1", align 1
  br label %main_bb237

main_bb237:                                       ; preds = %main_bb236, %main_bb235, %main_bb234, %main_bb232, %main_bb229
  store i8 0, i8* @"'mode1", align 1
  br label %main_node1.exit

main_bb238:                                       ; preds = %main_bb228
  %"938" = load i8* @"'send1", align 1
  %"939" = sext i8 %"938" to i32
  br i1 %"913", label %main_bb239, label %main_bb244

main_bb239:                                       ; preds = %main_bb238
  %"940" = icmp ne i32 %"939", %"915"
  br i1 %"940", label %main_bb240, label %main_bb242

main_bb240:                                       ; preds = %main_bb239
  %"941" = load i8* @"'p1_new", align 1
  %"942" = sext i8 %"941" to i32
  %"943" = icmp eq i32 %"942", %"917"
  br i1 %"943", label %main_bb241, label %main_bb242

main_bb241:                                       ; preds = %main_bb240
  %"944" = load i8* @"'send1", align 1
  br label %main_bb243

main_bb242:                                       ; preds = %main_bb240, %main_bb239
  %"945" = load i8* @"'p1_new", align 1
  br label %main_bb243

main_bb243:                                       ; preds = %main_bb242, %main_bb241
  %.sink.i10 = phi i8 [ %"944", %main_bb241 ], [ %"945", %main_bb242 ]
  %"946" = sext i8 %.sink.i10 to i32
  %"947" = trunc i32 %"946" to i8
  store i8 %"947", i8* @"'p1_new", align 1
  br label %main_bb250

main_bb244:                                       ; preds = %main_bb238
  %"948" = icmp ne i32 %"939", %"919"
  br i1 %"948", label %main_bb245, label %main_bb250

main_bb245:                                       ; preds = %main_bb244
  %"949" = load i8* @"'send1", align 1
  %"950" = sext i8 %"949" to i32
  %"951" = icmp ne i32 %"950", %"921"
  br i1 %"951", label %main_bb246, label %main_bb248

main_bb246:                                       ; preds = %main_bb245
  %"952" = load i8* @"'p1_new", align 1
  %"953" = sext i8 %"952" to i32
  %"954" = icmp eq i32 %"953", %"923"
  br i1 %"954", label %main_bb247, label %main_bb248

main_bb247:                                       ; preds = %main_bb246
  %"955" = load i8* @"'send1", align 1
  br label %main_bb249

main_bb248:                                       ; preds = %main_bb246, %main_bb245
  %"956" = load i8* @"'p1_new", align 1
  br label %main_bb249

main_bb249:                                       ; preds = %main_bb248, %main_bb247
  %.sink1.i11 = phi i8 [ %"955", %main_bb247 ], [ %"956", %main_bb248 ]
  %"957" = sext i8 %.sink1.i11 to i32
  %"958" = trunc i32 %"957" to i8
  store i8 %"958", i8* @"'p1_new", align 1
  br label %main_bb250

main_bb250:                                       ; preds = %main_bb249, %main_bb244, %main_bb243
  store i8 1, i8* @"'mode1", align 1
  br label %main_node1.exit

main_node1.exit:                                  ; preds = %main_bb237, %main_bb250
  %"959" = load i8* @"'mode2", align 1
  %"960" = trunc i8 %"959" to i1
  br i1 %"960", label %main_bb251, label %main_bb259

main_bb251:                                       ; preds = %main_node1.exit
  %"961" = load i8* @"'p1_old", align 1
  store i8 %"801", i8* @"'p1_old", align 1
  %"962" = sext i8 %"961" to i32
  %"963" = icmp ne i32 %"962", %"803"
  br i1 %"963", label %main_bb252, label %main_bb258

main_bb252:                                       ; preds = %main_bb251
  br i1 %"805", label %main_bb253, label %main_bb257

main_bb253:                                       ; preds = %main_bb252
  %"964" = sext i8 %"961" to i32
  %"965" = icmp sgt i32 %"964", %"807"
  br i1 %"965", label %main_bb254, label %main_bb255

main_bb254:                                       ; preds = %main_bb253
  store i8 %"961", i8* @"'send2", align 1
  br label %main_bb258

main_bb255:                                       ; preds = %main_bb253
  %"966" = sext i8 %"961" to i32
  %"967" = icmp eq i32 %"966", %"809"
  br i1 %"967", label %main_bb256, label %main_bb258

main_bb256:                                       ; preds = %main_bb255
  store i8 1, i8* @"'st2", align 1
  br label %main_bb258

main_bb257:                                       ; preds = %main_bb252
  store i8 %"961", i8* @"'send2", align 1
  br label %main_bb258

main_bb258:                                       ; preds = %main_bb257, %main_bb256, %main_bb255, %main_bb254, %main_bb251
  store i8 0, i8* @"'mode2", align 1
  br label %main_node2.exit

main_bb259:                                       ; preds = %main_node1.exit
  %"968" = load i8* @"'send2", align 1
  %"969" = sext i8 %"968" to i32
  br i1 %"901", label %main_bb260, label %main_bb265

main_bb260:                                       ; preds = %main_bb259
  %"970" = icmp ne i32 %"969", %"903"
  br i1 %"970", label %main_bb261, label %main_bb263

main_bb261:                                       ; preds = %main_bb260
  %"971" = load i8* @"'p2_new", align 1
  %"972" = sext i8 %"971" to i32
  %"973" = icmp eq i32 %"972", %"905"
  br i1 %"973", label %main_bb262, label %main_bb263

main_bb262:                                       ; preds = %main_bb261
  %"974" = load i8* @"'send2", align 1
  br label %main_bb264

main_bb263:                                       ; preds = %main_bb261, %main_bb260
  %"975" = load i8* @"'p2_new", align 1
  br label %main_bb264

main_bb264:                                       ; preds = %main_bb263, %main_bb262
  %.sink.i8 = phi i8 [ %"974", %main_bb262 ], [ %"975", %main_bb263 ]
  %"976" = sext i8 %.sink.i8 to i32
  %"977" = trunc i32 %"976" to i8
  store i8 %"977", i8* @"'p2_new", align 1
  br label %main_bb271

main_bb265:                                       ; preds = %main_bb259
  %"978" = icmp ne i32 %"969", %"907"
  br i1 %"978", label %main_bb266, label %main_bb271

main_bb266:                                       ; preds = %main_bb265
  %"979" = load i8* @"'send2", align 1
  %"980" = sext i8 %"979" to i32
  %"981" = icmp ne i32 %"980", %"909"
  br i1 %"981", label %main_bb267, label %main_bb269

main_bb267:                                       ; preds = %main_bb266
  %"982" = load i8* @"'p2_new", align 1
  %"983" = sext i8 %"982" to i32
  %"984" = icmp eq i32 %"983", %"911"
  br i1 %"984", label %main_bb268, label %main_bb269

main_bb268:                                       ; preds = %main_bb267
  %"985" = load i8* @"'send2", align 1
  br label %main_bb270

main_bb269:                                       ; preds = %main_bb267, %main_bb266
  %"986" = load i8* @"'p2_new", align 1
  br label %main_bb270

main_bb270:                                       ; preds = %main_bb269, %main_bb268
  %.sink1.i9 = phi i8 [ %"985", %main_bb268 ], [ %"986", %main_bb269 ]
  %"987" = sext i8 %.sink1.i9 to i32
  %"988" = trunc i32 %"987" to i8
  store i8 %"988", i8* @"'p2_new", align 1
  br label %main_bb271

main_bb271:                                       ; preds = %main_bb270, %main_bb265, %main_bb264
  store i8 1, i8* @"'mode2", align 1
  br label %main_node2.exit

main_node2.exit:                                  ; preds = %main_bb258, %main_bb271
  %"989" = load i8* @"'mode3", align 1
  %"990" = trunc i8 %"989" to i1
  br i1 %"990", label %main_bb272, label %main_bb280

main_bb272:                                       ; preds = %main_node2.exit
  %"991" = load i8* @"'p2_old", align 1
  store i8 %"810", i8* @"'p2_old", align 1
  %"992" = sext i8 %"991" to i32
  %"993" = icmp ne i32 %"992", %"812"
  br i1 %"993", label %main_bb273, label %main_bb279

main_bb273:                                       ; preds = %main_bb272
  br i1 %"814", label %main_bb274, label %main_bb278

main_bb274:                                       ; preds = %main_bb273
  %"994" = sext i8 %"991" to i32
  %"995" = icmp sgt i32 %"994", %"816"
  br i1 %"995", label %main_bb275, label %main_bb276

main_bb275:                                       ; preds = %main_bb274
  store i8 %"991", i8* @"'send3", align 1
  br label %main_bb279

main_bb276:                                       ; preds = %main_bb274
  %"996" = sext i8 %"991" to i32
  %"997" = icmp eq i32 %"996", %"818"
  br i1 %"997", label %main_bb277, label %main_bb279

main_bb277:                                       ; preds = %main_bb276
  store i8 1, i8* @"'st3", align 1
  br label %main_bb279

main_bb278:                                       ; preds = %main_bb273
  store i8 %"991", i8* @"'send3", align 1
  br label %main_bb279

main_bb279:                                       ; preds = %main_bb278, %main_bb277, %main_bb276, %main_bb275, %main_bb272
  store i8 0, i8* @"'mode3", align 1
  br label %main_node3.exit

main_bb280:                                       ; preds = %main_node2.exit
  %"998" = load i8* @"'send3", align 1
  %"999" = sext i8 %"998" to i32
  br i1 %"889", label %main_bb281, label %main_bb286

main_bb281:                                       ; preds = %main_bb280
  %"1000" = icmp ne i32 %"999", %"891"
  br i1 %"1000", label %main_bb282, label %main_bb284

main_bb282:                                       ; preds = %main_bb281
  %"1001" = load i8* @"'p3_new", align 1
  %"1002" = sext i8 %"1001" to i32
  %"1003" = icmp eq i32 %"1002", %"893"
  br i1 %"1003", label %main_bb283, label %main_bb284

main_bb283:                                       ; preds = %main_bb282
  %"1004" = load i8* @"'send3", align 1
  br label %main_bb285

main_bb284:                                       ; preds = %main_bb282, %main_bb281
  %"1005" = load i8* @"'p3_new", align 1
  br label %main_bb285

main_bb285:                                       ; preds = %main_bb284, %main_bb283
  %.sink.i6 = phi i8 [ %"1004", %main_bb283 ], [ %"1005", %main_bb284 ]
  %"1006" = sext i8 %.sink.i6 to i32
  %"1007" = trunc i32 %"1006" to i8
  store i8 %"1007", i8* @"'p3_new", align 1
  br label %main_bb292

main_bb286:                                       ; preds = %main_bb280
  %"1008" = icmp ne i32 %"999", %"895"
  br i1 %"1008", label %main_bb287, label %main_bb292

main_bb287:                                       ; preds = %main_bb286
  %"1009" = load i8* @"'send3", align 1
  %"1010" = sext i8 %"1009" to i32
  %"1011" = icmp ne i32 %"1010", %"897"
  br i1 %"1011", label %main_bb288, label %main_bb290

main_bb288:                                       ; preds = %main_bb287
  %"1012" = load i8* @"'p3_new", align 1
  %"1013" = sext i8 %"1012" to i32
  %"1014" = icmp eq i32 %"1013", %"899"
  br i1 %"1014", label %main_bb289, label %main_bb290

main_bb289:                                       ; preds = %main_bb288
  %"1015" = load i8* @"'send3", align 1
  br label %main_bb291

main_bb290:                                       ; preds = %main_bb288, %main_bb287
  %"1016" = load i8* @"'p3_new", align 1
  br label %main_bb291

main_bb291:                                       ; preds = %main_bb290, %main_bb289
  %.sink1.i7 = phi i8 [ %"1015", %main_bb289 ], [ %"1016", %main_bb290 ]
  %"1017" = sext i8 %.sink1.i7 to i32
  %"1018" = trunc i32 %"1017" to i8
  store i8 %"1018", i8* @"'p3_new", align 1
  br label %main_bb292

main_bb292:                                       ; preds = %main_bb291, %main_bb286, %main_bb285
  store i8 1, i8* @"'mode3", align 1
  br label %main_node3.exit

main_node3.exit:                                  ; preds = %main_bb279, %main_bb292
  %"1019" = load i8* @"'mode4", align 1
  %"1020" = trunc i8 %"1019" to i1
  br i1 %"1020", label %main_bb293, label %main_bb301

main_bb293:                                       ; preds = %main_node3.exit
  %"1021" = load i8* @"'p3_old", align 1
  store i8 %"819", i8* @"'p3_old", align 1
  %"1022" = sext i8 %"1021" to i32
  %"1023" = icmp ne i32 %"1022", %"821"
  br i1 %"1023", label %main_bb294, label %main_bb300

main_bb294:                                       ; preds = %main_bb293
  br i1 %"823", label %main_bb295, label %main_bb299

main_bb295:                                       ; preds = %main_bb294
  %"1024" = sext i8 %"1021" to i32
  %"1025" = icmp sgt i32 %"1024", %"825"
  br i1 %"1025", label %main_bb296, label %main_bb297

main_bb296:                                       ; preds = %main_bb295
  store i8 %"1021", i8* @"'send4", align 1
  br label %main_bb300

main_bb297:                                       ; preds = %main_bb295
  %"1026" = sext i8 %"1021" to i32
  %"1027" = icmp eq i32 %"1026", %"827"
  br i1 %"1027", label %main_bb298, label %main_bb300

main_bb298:                                       ; preds = %main_bb297
  store i8 1, i8* @"'st4", align 1
  br label %main_bb300

main_bb299:                                       ; preds = %main_bb294
  store i8 %"1021", i8* @"'send4", align 1
  br label %main_bb300

main_bb300:                                       ; preds = %main_bb299, %main_bb298, %main_bb297, %main_bb296, %main_bb293
  store i8 0, i8* @"'mode4", align 1
  br label %main_node4.exit

main_bb301:                                       ; preds = %main_node3.exit
  %"1028" = load i8* @"'send4", align 1
  %"1029" = sext i8 %"1028" to i32
  br i1 %"877", label %main_bb302, label %main_bb307

main_bb302:                                       ; preds = %main_bb301
  %"1030" = icmp ne i32 %"1029", %"879"
  br i1 %"1030", label %main_bb303, label %main_bb305

main_bb303:                                       ; preds = %main_bb302
  %"1031" = load i8* @"'p4_new", align 1
  %"1032" = sext i8 %"1031" to i32
  %"1033" = icmp eq i32 %"1032", %"881"
  br i1 %"1033", label %main_bb304, label %main_bb305

main_bb304:                                       ; preds = %main_bb303
  %"1034" = load i8* @"'send4", align 1
  br label %main_bb306

main_bb305:                                       ; preds = %main_bb303, %main_bb302
  %"1035" = load i8* @"'p4_new", align 1
  br label %main_bb306

main_bb306:                                       ; preds = %main_bb305, %main_bb304
  %.sink.i4 = phi i8 [ %"1034", %main_bb304 ], [ %"1035", %main_bb305 ]
  %"1036" = sext i8 %.sink.i4 to i32
  %"1037" = trunc i32 %"1036" to i8
  store i8 %"1037", i8* @"'p4_new", align 1
  br label %main_bb313

main_bb307:                                       ; preds = %main_bb301
  %"1038" = icmp ne i32 %"1029", %"883"
  br i1 %"1038", label %main_bb308, label %main_bb313

main_bb308:                                       ; preds = %main_bb307
  %"1039" = load i8* @"'send4", align 1
  %"1040" = sext i8 %"1039" to i32
  %"1041" = icmp ne i32 %"1040", %"885"
  br i1 %"1041", label %main_bb309, label %main_bb311

main_bb309:                                       ; preds = %main_bb308
  %"1042" = load i8* @"'p4_new", align 1
  %"1043" = sext i8 %"1042" to i32
  %"1044" = icmp eq i32 %"1043", %"887"
  br i1 %"1044", label %main_bb310, label %main_bb311

main_bb310:                                       ; preds = %main_bb309
  %"1045" = load i8* @"'send4", align 1
  br label %main_bb312

main_bb311:                                       ; preds = %main_bb309, %main_bb308
  %"1046" = load i8* @"'p4_new", align 1
  br label %main_bb312

main_bb312:                                       ; preds = %main_bb311, %main_bb310
  %.sink1.i5 = phi i8 [ %"1045", %main_bb310 ], [ %"1046", %main_bb311 ]
  %"1047" = sext i8 %.sink1.i5 to i32
  %"1048" = trunc i32 %"1047" to i8
  store i8 %"1048", i8* @"'p4_new", align 1
  br label %main_bb313

main_bb313:                                       ; preds = %main_bb312, %main_bb307, %main_bb306
  store i8 1, i8* @"'mode4", align 1
  br label %main_node4.exit

main_node4.exit:                                  ; preds = %main_bb300, %main_bb313
  %"1049" = load i8* @"'mode5", align 1
  %"1050" = trunc i8 %"1049" to i1
  br i1 %"1050", label %main_bb314, label %main_bb322

main_bb314:                                       ; preds = %main_node4.exit
  %"1051" = load i8* @"'p4_old", align 1
  store i8 %"828", i8* @"'p4_old", align 1
  %"1052" = sext i8 %"1051" to i32
  %"1053" = icmp ne i32 %"1052", %"830"
  br i1 %"1053", label %main_bb315, label %main_bb321

main_bb315:                                       ; preds = %main_bb314
  br i1 %"832", label %main_bb316, label %main_bb320

main_bb316:                                       ; preds = %main_bb315
  %"1054" = sext i8 %"1051" to i32
  %"1055" = icmp sgt i32 %"1054", %"834"
  br i1 %"1055", label %main_bb317, label %main_bb318

main_bb317:                                       ; preds = %main_bb316
  store i8 %"1051", i8* @"'send5", align 1
  br label %main_bb321

main_bb318:                                       ; preds = %main_bb316
  %"1056" = sext i8 %"1051" to i32
  %"1057" = icmp eq i32 %"1056", %"836"
  br i1 %"1057", label %main_bb319, label %main_bb321

main_bb319:                                       ; preds = %main_bb318
  store i8 1, i8* @"'st5", align 1
  br label %main_bb321

main_bb320:                                       ; preds = %main_bb315
  store i8 %"1051", i8* @"'send5", align 1
  br label %main_bb321

main_bb321:                                       ; preds = %main_bb320, %main_bb319, %main_bb318, %main_bb317, %main_bb314
  store i8 0, i8* @"'mode5", align 1
  br label %main_node5.exit

main_bb322:                                       ; preds = %main_node4.exit
  %"1058" = load i8* @"'send5", align 1
  %"1059" = sext i8 %"1058" to i32
  br i1 %"865", label %main_bb323, label %main_bb328

main_bb323:                                       ; preds = %main_bb322
  %"1060" = icmp ne i32 %"1059", %"867"
  br i1 %"1060", label %main_bb324, label %main_bb326

main_bb324:                                       ; preds = %main_bb323
  %"1061" = load i8* @"'p5_new", align 1
  %"1062" = sext i8 %"1061" to i32
  %"1063" = icmp eq i32 %"1062", %"869"
  br i1 %"1063", label %main_bb325, label %main_bb326

main_bb325:                                       ; preds = %main_bb324
  %"1064" = load i8* @"'send5", align 1
  br label %main_bb327

main_bb326:                                       ; preds = %main_bb324, %main_bb323
  %"1065" = load i8* @"'p5_new", align 1
  br label %main_bb327

main_bb327:                                       ; preds = %main_bb326, %main_bb325
  %.sink.i2 = phi i8 [ %"1064", %main_bb325 ], [ %"1065", %main_bb326 ]
  %"1066" = sext i8 %.sink.i2 to i32
  %"1067" = trunc i32 %"1066" to i8
  store i8 %"1067", i8* @"'p5_new", align 1
  br label %main_bb334

main_bb328:                                       ; preds = %main_bb322
  %"1068" = icmp ne i32 %"1059", %"871"
  br i1 %"1068", label %main_bb329, label %main_bb334

main_bb329:                                       ; preds = %main_bb328
  %"1069" = load i8* @"'send5", align 1
  %"1070" = sext i8 %"1069" to i32
  %"1071" = icmp ne i32 %"1070", %"873"
  br i1 %"1071", label %main_bb330, label %main_bb332

main_bb330:                                       ; preds = %main_bb329
  %"1072" = load i8* @"'p5_new", align 1
  %"1073" = sext i8 %"1072" to i32
  %"1074" = icmp eq i32 %"1073", %"875"
  br i1 %"1074", label %main_bb331, label %main_bb332

main_bb331:                                       ; preds = %main_bb330
  %"1075" = load i8* @"'send5", align 1
  br label %main_bb333

main_bb332:                                       ; preds = %main_bb330, %main_bb329
  %"1076" = load i8* @"'p5_new", align 1
  br label %main_bb333

main_bb333:                                       ; preds = %main_bb332, %main_bb331
  %.sink1.i3 = phi i8 [ %"1075", %main_bb331 ], [ %"1076", %main_bb332 ]
  %"1077" = sext i8 %.sink1.i3 to i32
  %"1078" = trunc i32 %"1077" to i8
  store i8 %"1078", i8* @"'p5_new", align 1
  br label %main_bb334

main_bb334:                                       ; preds = %main_bb333, %main_bb328, %main_bb327
  store i8 1, i8* @"'mode5", align 1
  br label %main_node5.exit

main_node5.exit:                                  ; preds = %main_bb321, %main_bb334
  %"1079" = load i8* @"'mode6", align 1
  %"1080" = trunc i8 %"1079" to i1
  br i1 %"1080", label %main_bb335, label %main_bb343

main_bb335:                                       ; preds = %main_node5.exit
  %"1081" = load i8* @"'p5_old", align 1
  store i8 %"837", i8* @"'p5_old", align 1
  %"1082" = sext i8 %"1081" to i32
  %"1083" = icmp ne i32 %"1082", %"839"
  br i1 %"1083", label %main_bb336, label %main_bb342

main_bb336:                                       ; preds = %main_bb335
  br i1 %"841", label %main_bb337, label %main_bb341

main_bb337:                                       ; preds = %main_bb336
  %"1084" = sext i8 %"1081" to i32
  %"1085" = icmp sgt i32 %"1084", %"843"
  br i1 %"1085", label %main_bb338, label %main_bb339

main_bb338:                                       ; preds = %main_bb337
  store i8 %"1081", i8* @"'send6", align 1
  br label %main_bb342

main_bb339:                                       ; preds = %main_bb337
  %"1086" = sext i8 %"1081" to i32
  %"1087" = icmp eq i32 %"1086", %"845"
  br i1 %"1087", label %main_bb340, label %main_bb342

main_bb340:                                       ; preds = %main_bb339
  store i8 1, i8* @"'st6", align 1
  br label %main_bb342

main_bb341:                                       ; preds = %main_bb336
  store i8 %"1081", i8* @"'send6", align 1
  br label %main_bb342

main_bb342:                                       ; preds = %main_bb341, %main_bb340, %main_bb339, %main_bb338, %main_bb335
  store i8 0, i8* @"'mode6", align 1
  br label %main_node6.exit

main_bb343:                                       ; preds = %main_node5.exit
  %"1088" = load i8* @"'send6", align 1
  %"1089" = sext i8 %"1088" to i32
  br i1 %"853", label %main_bb344, label %main_bb349

main_bb344:                                       ; preds = %main_bb343
  %"1090" = icmp ne i32 %"1089", %"855"
  br i1 %"1090", label %main_bb345, label %main_bb347

main_bb345:                                       ; preds = %main_bb344
  %"1091" = load i8* @"'p6_new", align 1
  %"1092" = sext i8 %"1091" to i32
  %"1093" = icmp eq i32 %"1092", %"857"
  br i1 %"1093", label %main_bb346, label %main_bb347

main_bb346:                                       ; preds = %main_bb345
  %"1094" = load i8* @"'send6", align 1
  br label %main_bb348

main_bb347:                                       ; preds = %main_bb345, %main_bb344
  %"1095" = load i8* @"'p6_new", align 1
  br label %main_bb348

main_bb348:                                       ; preds = %main_bb347, %main_bb346
  %.sink.i = phi i8 [ %"1094", %main_bb346 ], [ %"1095", %main_bb347 ]
  %"1096" = sext i8 %.sink.i to i32
  %"1097" = trunc i32 %"1096" to i8
  store i8 %"1097", i8* @"'p6_new", align 1
  br label %main_bb355

main_bb349:                                       ; preds = %main_bb343
  %"1098" = icmp ne i32 %"1089", %"859"
  br i1 %"1098", label %main_bb350, label %main_bb355

main_bb350:                                       ; preds = %main_bb349
  %"1099" = load i8* @"'send6", align 1
  %"1100" = sext i8 %"1099" to i32
  %"1101" = icmp ne i32 %"1100", %"861"
  br i1 %"1101", label %main_bb351, label %main_bb353

main_bb351:                                       ; preds = %main_bb350
  %"1102" = load i8* @"'p6_new", align 1
  %"1103" = sext i8 %"1102" to i32
  %"1104" = icmp eq i32 %"1103", %"863"
  br i1 %"1104", label %main_bb352, label %main_bb353

main_bb352:                                       ; preds = %main_bb351
  %"1105" = load i8* @"'send6", align 1
  br label %main_bb354

main_bb353:                                       ; preds = %main_bb351, %main_bb350
  %"1106" = load i8* @"'p6_new", align 1
  br label %main_bb354

main_bb354:                                       ; preds = %main_bb353, %main_bb352
  %.sink1.i = phi i8 [ %"1105", %main_bb352 ], [ %"1106", %main_bb353 ]
  %"1107" = sext i8 %.sink1.i to i32
  %"1108" = trunc i32 %"1107" to i8
  store i8 %"1108", i8* @"'p6_new", align 1
  br label %main_bb355

main_bb355:                                       ; preds = %main_bb354, %main_bb349, %main_bb348
  store i8 1, i8* @"'mode6", align 1
  br label %main_node6.exit

main_node6.exit:                                  ; preds = %main_bb342, %main_bb355
  %"1109" = load i8* @"'p1_new", align 1
  store i8 %"1109", i8* @"'p1_old", align 1
  store i8 %"846", i8* @"'p1_new", align 1
  %"1110" = load i8* @"'p2_new", align 1
  store i8 %"1110", i8* @"'p2_old", align 1
  store i8 %"847", i8* @"'p2_new", align 1
  %"1111" = load i8* @"'p3_new", align 1
  store i8 %"1111", i8* @"'p3_old", align 1
  store i8 %"848", i8* @"'p3_new", align 1
  %"1112" = load i8* @"'p4_new", align 1
  store i8 %"1112", i8* @"'p4_old", align 1
  store i8 %"849", i8* @"'p4_new", align 1
  %"1113" = load i8* @"'p5_new", align 1
  store i8 %"1113", i8* @"'p5_old", align 1
  store i8 %"850", i8* @"'p5_new", align 1
  %"1114" = load i8* @"'p6_new", align 1
  store i8 %"1114", i8* @"'p6_old", align 1
  store i8 %"851", i8* @"'p6_new", align 1
  %"1115" = load i8* @"'st1", align 1
  %"1116" = sext i8 %"1115" to i32
  %"1117" = load i8* @"'st2", align 1
  %"1118" = sext i8 %"1117" to i32
  %"1119" = add nsw i32 %"1116", %"1118"
  %"1120" = load i8* @"'st3", align 1
  %"1121" = sext i8 %"1120" to i32
  %"1122" = add nsw i32 %"1119", %"1121"
  %"1123" = load i8* @"'st4", align 1
  %"1124" = sext i8 %"1123" to i32
  %"1125" = add nsw i32 %"1122", %"1124"
  %"1126" = load i8* @"'st5", align 1
  %"1127" = sext i8 %"1126" to i32
  %"1128" = add nsw i32 %"1125", %"1127"
  %"1129" = load i8* @"'st6", align 1
  %"1130" = sext i8 %"1129" to i32
  %"1131" = add nsw i32 %"1128", %"1130"
  %"1132" = icmp sle i32 %"1131", 1
  br i1 %"1132", label %main_bb356, label %main_check.exit

main_bb356:                                       ; preds = %main_node6.exit
  %"1133" = load i8* @"'r1", align 1
  %"1134" = sext i8 %"1133" to i32
  %"1135" = icmp slt i32 %"1134", 6
  br i1 %"1135", label %main_check.exit, label %main_bb357

main_bb357:                                       ; preds = %main_bb356
  %"1136" = load i8* @"'st1", align 1
  %"1137" = sext i8 %"1136" to i32
  %"1138" = load i8* @"'st2", align 1
  %"1139" = sext i8 %"1138" to i32
  %"1140" = add nsw i32 %"1137", %"1139"
  %"1141" = load i8* @"'st3", align 1
  %"1142" = sext i8 %"1141" to i32
  %"1143" = add nsw i32 %"1140", %"1142"
  %"1144" = load i8* @"'st4", align 1
  %"1145" = sext i8 %"1144" to i32
  %"1146" = add nsw i32 %"1143", %"1145"
  %"1147" = load i8* @"'st5", align 1
  %"1148" = sext i8 %"1147" to i32
  %"1149" = add nsw i32 %"1146", %"1148"
  %"1150" = load i8* @"'st6", align 1
  %"1151" = sext i8 %"1150" to i32
  %"1152" = add nsw i32 %"1149", %"1151"
  %"1153" = icmp eq i32 %"1152", 1
  %..i1 = select i1 %"1153", i32 1, i32 0
  br label %main_check.exit

main_check.exit:                                  ; preds = %main_node6.exit, %main_bb356, %main_bb357
  %tmp.2.i = phi i32 [ %..i1, %main_bb357 ], [ 1, %main_bb356 ], [ 0, %main_node6.exit ]
  %"1154" = icmp ne i32 %tmp.2.i, 0
  %"1155" = zext i1 %"1154" to i8
  %"1156" = trunc i8 %"1155" to i1
  br i1 %"1156", label %main_assert.exit, label %main_bb358

main_assert.exit:                                 ; preds = %main_check.exit
  %"1157" = add nsw i32 %i2.0, 1
  br label %main_bb227

main_bb358:                                       ; preds = %main_check.exit
  call void (...)* @__VERIFIER_error() #3
  unreachable

main_bb359:                                       ; preds = %main_bb227
  ret i32 0
}

declare signext i8 @__VERIFIER_nondet_char() #1

declare signext i8 @__VERIFIER_nondet_msg_t() #1

declare zeroext i1 @__VERIFIER_nondet__Bool() #1

; Function Attrs: nounwind uwtable
define void @__VERIFIER_assume(i1 zeroext %arg) #0 {
__VERIFIER_assume_bb360:
  %"1158" = zext i1 %arg to i8
  %"1159" = trunc i8 %"1158" to i1
  br label %__VERIFIER_assume_bb361

__VERIFIER_assume_bb361:                          ; preds = %__VERIFIER_assume_bb361, %__VERIFIER_assume_bb360
  %"1160" = xor i1 %"1159", true
  br i1 %"1160", label %__VERIFIER_assume_bb361, label %__VERIFIER_assume_bb362

__VERIFIER_assume_bb362:                          ; preds = %__VERIFIER_assume_bb361
  ret void
}

; Function Attrs: nounwind uwtable
define void @assert(i1 zeroext %arg) #0 {
assert_bb363:
  %"1161" = zext i1 %arg to i8
  %"1162" = trunc i8 %"1161" to i1
  br i1 %"1162", label %assert_bb364, label %assert_bb365

assert_bb364:                                     ; preds = %assert_bb363
  ret void

assert_bb365:                                     ; preds = %assert_bb363
  call void (...)* @__VERIFIER_error() #4
  unreachable
}

; Function Attrs: noreturn
declare void @__VERIFIER_error(...) #2

declare i8 @__kittel_nondef.0()

declare i32 @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind }
attributes #4 = { noreturn }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

