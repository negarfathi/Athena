; ModuleID = 'Benchmarks/TermCOMP/C/SV-COMP_Mixed_Categories/pals_lcr-var-start-time.3_false-unreach-call.1.ufo.BOUNDED-6.pals/pals_lcr-var-start-time.3_false-unreach-call.1.ufo.BOUNDED-6.pals.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"'nomsg" = global i8 -1, align 1
@"'mode1" = common global i8 0, align 1
@"'r1" = common global i8 0, align 1
@"'p3_old" = common global i8 0, align 1
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
@nodes = global [3 x void ()*] [void ()* @node1, void ()* @node2, void ()* @node3], align 16
@"'p1" = common global i32 0, align 4
@"'p2" = common global i32 0, align 4
@"'p3" = common global i32 0, align 4

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
  %"6" = load i8* @"'p3_old", align 1
  %"7" = load i8* @"'nomsg", align 1
  store i8 %"7", i8* @"'p3_old", align 1
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
define i32 @init() #0 {
init_bb70:
  %"157" = load i8* @"'r1", align 1
  %"158" = sext i8 %"157" to i32
  %"159" = icmp eq i32 %"158", 0
  br i1 %"159", label %init_bb71, label %init_bb87

init_bb71:                                        ; preds = %init_bb70
  %"160" = load i8* @"'alive1", align 1
  %"161" = trunc i8 %"160" to i1
  %"162" = zext i1 %"161" to i32
  %"163" = load i8* @"'alive2", align 1
  %"164" = trunc i8 %"163" to i1
  %"165" = zext i1 %"164" to i32
  %"166" = add nsw i32 %"162", %"165"
  %"167" = load i8* @"'alive3", align 1
  %"168" = trunc i8 %"167" to i1
  %"169" = zext i1 %"168" to i32
  %"170" = add nsw i32 %"166", %"169"
  %"171" = icmp sge i32 %"170", 1
  br i1 %"171", label %init_bb72, label %init_bb87

init_bb72:                                        ; preds = %init_bb71
  %"172" = load i8* @"'id1", align 1
  %"173" = sext i8 %"172" to i32
  %"174" = icmp sge i32 %"173", 0
  br i1 %"174", label %init_bb73, label %init_bb87

init_bb73:                                        ; preds = %init_bb72
  %"175" = load i8* @"'st1", align 1
  %"176" = sext i8 %"175" to i32
  %"177" = icmp eq i32 %"176", 0
  br i1 %"177", label %init_bb74, label %init_bb87

init_bb74:                                        ; preds = %init_bb73
  %"178" = load i8* @"'send1", align 1
  %"179" = sext i8 %"178" to i32
  %"180" = load i8* @"'id1", align 1
  %"181" = sext i8 %"180" to i32
  %"182" = icmp eq i32 %"179", %"181"
  br i1 %"182", label %init_bb75, label %init_bb87

init_bb75:                                        ; preds = %init_bb74
  %"183" = load i8* @"'mode1", align 1
  %"184" = trunc i8 %"183" to i1
  %"185" = zext i1 %"184" to i32
  %"186" = icmp eq i32 %"185", 0
  br i1 %"186", label %init_bb76, label %init_bb87

init_bb76:                                        ; preds = %init_bb75
  %"187" = load i8* @"'id2", align 1
  %"188" = sext i8 %"187" to i32
  %"189" = icmp sge i32 %"188", 0
  br i1 %"189", label %init_bb77, label %init_bb87

init_bb77:                                        ; preds = %init_bb76
  %"190" = load i8* @"'st2", align 1
  %"191" = sext i8 %"190" to i32
  %"192" = icmp eq i32 %"191", 0
  br i1 %"192", label %init_bb78, label %init_bb87

init_bb78:                                        ; preds = %init_bb77
  %"193" = load i8* @"'send2", align 1
  %"194" = sext i8 %"193" to i32
  %"195" = load i8* @"'id2", align 1
  %"196" = sext i8 %"195" to i32
  %"197" = icmp eq i32 %"194", %"196"
  br i1 %"197", label %init_bb79, label %init_bb87

init_bb79:                                        ; preds = %init_bb78
  %"198" = load i8* @"'mode2", align 1
  %"199" = trunc i8 %"198" to i1
  %"200" = zext i1 %"199" to i32
  %"201" = icmp eq i32 %"200", 0
  br i1 %"201", label %init_bb80, label %init_bb87

init_bb80:                                        ; preds = %init_bb79
  %"202" = load i8* @"'id3", align 1
  %"203" = sext i8 %"202" to i32
  %"204" = icmp sge i32 %"203", 0
  br i1 %"204", label %init_bb81, label %init_bb87

init_bb81:                                        ; preds = %init_bb80
  %"205" = load i8* @"'st3", align 1
  %"206" = sext i8 %"205" to i32
  %"207" = icmp eq i32 %"206", 0
  br i1 %"207", label %init_bb82, label %init_bb87

init_bb82:                                        ; preds = %init_bb81
  %"208" = load i8* @"'send3", align 1
  %"209" = sext i8 %"208" to i32
  %"210" = load i8* @"'id3", align 1
  %"211" = sext i8 %"210" to i32
  %"212" = icmp eq i32 %"209", %"211"
  br i1 %"212", label %init_bb83, label %init_bb87

init_bb83:                                        ; preds = %init_bb82
  %"213" = load i8* @"'mode3", align 1
  %"214" = trunc i8 %"213" to i1
  %"215" = zext i1 %"214" to i32
  %"216" = icmp eq i32 %"215", 0
  br i1 %"216", label %init_bb84, label %init_bb87

init_bb84:                                        ; preds = %init_bb83
  %"217" = load i8* @"'id1", align 1
  %"218" = sext i8 %"217" to i32
  %"219" = load i8* @"'id2", align 1
  %"220" = sext i8 %"219" to i32
  %"221" = icmp ne i32 %"218", %"220"
  br i1 %"221", label %init_bb85, label %init_bb87

init_bb85:                                        ; preds = %init_bb84
  %"222" = load i8* @"'id1", align 1
  %"223" = sext i8 %"222" to i32
  %"224" = load i8* @"'id3", align 1
  %"225" = sext i8 %"224" to i32
  %"226" = icmp ne i32 %"223", %"225"
  br i1 %"226", label %init_bb86, label %init_bb87

init_bb86:                                        ; preds = %init_bb85
  %"227" = load i8* @"'id2", align 1
  %"228" = sext i8 %"227" to i32
  %"229" = load i8* @"'id3", align 1
  %"230" = sext i8 %"229" to i32
  %"231" = icmp ne i32 %"228", %"230"
  %. = select i1 %"231", i32 1, i32 0
  br label %init_bb87

init_bb87:                                        ; preds = %init_bb70, %init_bb72, %init_bb74, %init_bb76, %init_bb78, %init_bb80, %init_bb82, %init_bb84, %init_bb86, %init_bb85, %init_bb83, %init_bb81, %init_bb79, %init_bb77, %init_bb75, %init_bb73, %init_bb71
  %tmp.16 = phi i32 [ %., %init_bb86 ], [ 0, %init_bb85 ], [ 0, %init_bb84 ], [ 0, %init_bb83 ], [ 0, %init_bb82 ], [ 0, %init_bb81 ], [ 0, %init_bb80 ], [ 0, %init_bb79 ], [ 0, %init_bb78 ], [ 0, %init_bb77 ], [ 0, %init_bb76 ], [ 0, %init_bb75 ], [ 0, %init_bb74 ], [ 0, %init_bb73 ], [ 0, %init_bb72 ], [ 0, %init_bb71 ], [ 0, %init_bb70 ]
  ret i32 %tmp.16
}

; Function Attrs: nounwind uwtable
define i32 @check() #0 {
check_bb88:
  %"232" = load i8* @"'st1", align 1
  %"233" = sext i8 %"232" to i32
  %"234" = load i8* @"'st2", align 1
  %"235" = sext i8 %"234" to i32
  %"236" = add nsw i32 %"233", %"235"
  %"237" = load i8* @"'st3", align 1
  %"238" = sext i8 %"237" to i32
  %"239" = add nsw i32 %"236", %"238"
  %"240" = icmp sle i32 %"239", 1
  br i1 %"240", label %check_bb89, label %check_bb91

check_bb89:                                       ; preds = %check_bb88
  %"241" = load i8* @"'r1", align 1
  %"242" = sext i8 %"241" to i32
  %"243" = icmp slt i32 %"242", 3
  br i1 %"243", label %check_bb91, label %check_bb90

check_bb90:                                       ; preds = %check_bb89
  %"244" = load i8* @"'st1", align 1
  %"245" = sext i8 %"244" to i32
  %"246" = load i8* @"'st2", align 1
  %"247" = sext i8 %"246" to i32
  %"248" = add nsw i32 %"245", %"247"
  %"249" = load i8* @"'st3", align 1
  %"250" = sext i8 %"249" to i32
  %"251" = add nsw i32 %"248", %"250"
  %"252" = icmp eq i32 %"251", 1
  %. = select i1 %"252", i32 1, i32 0
  br label %check_bb91

check_bb91:                                       ; preds = %check_bb88, %check_bb90, %check_bb89
  %tmp.2 = phi i32 [ %., %check_bb90 ], [ 1, %check_bb89 ], [ 0, %check_bb88 ]
  ret i32 %tmp.2
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb92:
  %"253" = call signext i8 @__VERIFIER_nondet_char()
  store i8 %"253", i8* @"'r1", align 1
  %"254" = call signext i8 @__VERIFIER_nondet_char()
  store i8 %"254", i8* @"'id1", align 1
  %"255" = call signext i8 @__VERIFIER_nondet_char()
  store i8 %"255", i8* @"'st1", align 1
  %"256" = call signext i8 @__VERIFIER_nondet_msg_t()
  store i8 %"256", i8* @"'send1", align 1
  %"257" = call zeroext i1 @__VERIFIER_nondet__Bool()
  %"258" = zext i1 %"257" to i8
  store i8 %"258", i8* @"'mode1", align 1
  %"259" = call zeroext i1 @__VERIFIER_nondet__Bool()
  %"260" = zext i1 %"259" to i8
  store i8 %"260", i8* @"'alive1", align 1
  %"261" = call signext i8 @__VERIFIER_nondet_char()
  store i8 %"261", i8* @"'id2", align 1
  %"262" = call signext i8 @__VERIFIER_nondet_char()
  store i8 %"262", i8* @"'st2", align 1
  %"263" = call signext i8 @__VERIFIER_nondet_msg_t()
  store i8 %"263", i8* @"'send2", align 1
  %"264" = call zeroext i1 @__VERIFIER_nondet__Bool()
  %"265" = zext i1 %"264" to i8
  store i8 %"265", i8* @"'mode2", align 1
  %"266" = call zeroext i1 @__VERIFIER_nondet__Bool()
  %"267" = zext i1 %"266" to i8
  store i8 %"267", i8* @"'alive2", align 1
  %"268" = call signext i8 @__VERIFIER_nondet_char()
  store i8 %"268", i8* @"'id3", align 1
  %"269" = call signext i8 @__VERIFIER_nondet_char()
  store i8 %"269", i8* @"'st3", align 1
  %"270" = call signext i8 @__VERIFIER_nondet_msg_t()
  store i8 %"270", i8* @"'send3", align 1
  %"271" = call zeroext i1 @__VERIFIER_nondet__Bool()
  %"272" = zext i1 %"271" to i8
  store i8 %"272", i8* @"'mode3", align 1
  %"273" = call zeroext i1 @__VERIFIER_nondet__Bool()
  %"274" = zext i1 %"273" to i8
  store i8 %"274", i8* @"'alive3", align 1
  %"275" = load i8* @"'r1", align 1
  %"276" = sext i8 %"275" to i32
  %"277" = icmp eq i32 %"276", 0
  br i1 %"277", label %main_bb93, label %main_init.exit

main_bb93:                                        ; preds = %main_bb92
  %"278" = load i8* @"'alive1", align 1
  %"279" = trunc i8 %"278" to i1
  %"280" = zext i1 %"279" to i32
  %"281" = load i8* @"'alive2", align 1
  %"282" = trunc i8 %"281" to i1
  %"283" = zext i1 %"282" to i32
  %"284" = add nsw i32 %"280", %"283"
  %"285" = load i8* @"'alive3", align 1
  %"286" = trunc i8 %"285" to i1
  %"287" = zext i1 %"286" to i32
  %"288" = add nsw i32 %"284", %"287"
  %"289" = icmp sge i32 %"288", 1
  br i1 %"289", label %main_bb94, label %main_init.exit

main_bb94:                                        ; preds = %main_bb93
  %"290" = load i8* @"'id1", align 1
  %"291" = sext i8 %"290" to i32
  %"292" = icmp sge i32 %"291", 0
  br i1 %"292", label %main_bb95, label %main_init.exit

main_bb95:                                        ; preds = %main_bb94
  %"293" = load i8* @"'st1", align 1
  %"294" = sext i8 %"293" to i32
  %"295" = icmp eq i32 %"294", 0
  br i1 %"295", label %main_bb96, label %main_init.exit

main_bb96:                                        ; preds = %main_bb95
  %"296" = load i8* @"'send1", align 1
  %"297" = sext i8 %"296" to i32
  %"298" = load i8* @"'id1", align 1
  %"299" = sext i8 %"298" to i32
  %"300" = icmp eq i32 %"297", %"299"
  br i1 %"300", label %main_bb97, label %main_init.exit

main_bb97:                                        ; preds = %main_bb96
  %"301" = load i8* @"'mode1", align 1
  %"302" = trunc i8 %"301" to i1
  %"303" = zext i1 %"302" to i32
  %"304" = icmp eq i32 %"303", 0
  br i1 %"304", label %main_bb98, label %main_init.exit

main_bb98:                                        ; preds = %main_bb97
  %"305" = load i8* @"'id2", align 1
  %"306" = sext i8 %"305" to i32
  %"307" = icmp sge i32 %"306", 0
  br i1 %"307", label %main_bb99, label %main_init.exit

main_bb99:                                        ; preds = %main_bb98
  %"308" = load i8* @"'st2", align 1
  %"309" = sext i8 %"308" to i32
  %"310" = icmp eq i32 %"309", 0
  br i1 %"310", label %main_bb100, label %main_init.exit

main_bb100:                                       ; preds = %main_bb99
  %"311" = load i8* @"'send2", align 1
  %"312" = sext i8 %"311" to i32
  %"313" = load i8* @"'id2", align 1
  %"314" = sext i8 %"313" to i32
  %"315" = icmp eq i32 %"312", %"314"
  br i1 %"315", label %main_bb101, label %main_init.exit

main_bb101:                                       ; preds = %main_bb100
  %"316" = load i8* @"'mode2", align 1
  %"317" = trunc i8 %"316" to i1
  %"318" = zext i1 %"317" to i32
  %"319" = icmp eq i32 %"318", 0
  br i1 %"319", label %main_bb102, label %main_init.exit

main_bb102:                                       ; preds = %main_bb101
  %"320" = load i8* @"'id3", align 1
  %"321" = sext i8 %"320" to i32
  %"322" = icmp sge i32 %"321", 0
  br i1 %"322", label %main_bb103, label %main_init.exit

main_bb103:                                       ; preds = %main_bb102
  %"323" = load i8* @"'st3", align 1
  %"324" = sext i8 %"323" to i32
  %"325" = icmp eq i32 %"324", 0
  br i1 %"325", label %main_bb104, label %main_init.exit

main_bb104:                                       ; preds = %main_bb103
  %"326" = load i8* @"'send3", align 1
  %"327" = sext i8 %"326" to i32
  %"328" = load i8* @"'id3", align 1
  %"329" = sext i8 %"328" to i32
  %"330" = icmp eq i32 %"327", %"329"
  br i1 %"330", label %main_bb105, label %main_init.exit

main_bb105:                                       ; preds = %main_bb104
  %"331" = load i8* @"'mode3", align 1
  %"332" = trunc i8 %"331" to i1
  %"333" = zext i1 %"332" to i32
  %"334" = icmp eq i32 %"333", 0
  br i1 %"334", label %main_bb106, label %main_init.exit

main_bb106:                                       ; preds = %main_bb105
  %"335" = load i8* @"'id1", align 1
  %"336" = sext i8 %"335" to i32
  %"337" = load i8* @"'id2", align 1
  %"338" = sext i8 %"337" to i32
  %"339" = icmp ne i32 %"336", %"338"
  br i1 %"339", label %main_bb107, label %main_init.exit

main_bb107:                                       ; preds = %main_bb106
  %"340" = load i8* @"'id1", align 1
  %"341" = sext i8 %"340" to i32
  %"342" = load i8* @"'id3", align 1
  %"343" = sext i8 %"342" to i32
  %"344" = icmp ne i32 %"341", %"343"
  br i1 %"344", label %main_bb108, label %main_init.exit

main_bb108:                                       ; preds = %main_bb107
  %"345" = load i8* @"'id2", align 1
  %"346" = sext i8 %"345" to i32
  %"347" = load i8* @"'id3", align 1
  %"348" = sext i8 %"347" to i32
  %"349" = icmp ne i32 %"346", %"348"
  %..i = select i1 %"349", i32 1, i32 0
  br label %main_init.exit

main_init.exit:                                   ; preds = %main_bb92, %main_bb93, %main_bb94, %main_bb95, %main_bb96, %main_bb97, %main_bb98, %main_bb99, %main_bb100, %main_bb101, %main_bb102, %main_bb103, %main_bb104, %main_bb105, %main_bb106, %main_bb107, %main_bb108
  %tmp.16.i = phi i32 [ %..i, %main_bb108 ], [ 0, %main_bb107 ], [ 0, %main_bb106 ], [ 0, %main_bb105 ], [ 0, %main_bb104 ], [ 0, %main_bb103 ], [ 0, %main_bb102 ], [ 0, %main_bb101 ], [ 0, %main_bb100 ], [ 0, %main_bb99 ], [ 0, %main_bb98 ], [ 0, %main_bb97 ], [ 0, %main_bb96 ], [ 0, %main_bb95 ], [ 0, %main_bb94 ], [ 0, %main_bb93 ], [ 0, %main_bb92 ]
  %"350" = icmp ne i32 %tmp.16.i, 0
  %"351" = zext i1 %"350" to i8
  %"352" = trunc i8 %"351" to i1
  br label %main_bb109

main_bb109:                                       ; preds = %main_bb109, %main_init.exit
  %"353" = xor i1 %"352", true
  br i1 %"353", label %main_bb109, label %main___VERIFIER_assume.exit

main___VERIFIER_assume.exit:                      ; preds = %main_bb109
  %"354" = load i8* @"'nomsg", align 1
  store i8 %"354", i8* @"'p1_old", align 1
  %"355" = load i8* @"'nomsg", align 1
  store i8 %"355", i8* @"'p1_new", align 1
  %"356" = load i8* @"'nomsg", align 1
  store i8 %"356", i8* @"'p2_old", align 1
  %"357" = load i8* @"'nomsg", align 1
  store i8 %"357", i8* @"'p2_new", align 1
  %"358" = load i8* @"'nomsg", align 1
  store i8 %"358", i8* @"'p3_old", align 1
  %"359" = load i8* @"'nomsg", align 1
  store i8 %"359", i8* @"'p3_new", align 1
  %"360" = load i8* @"'nomsg", align 1
  %"361" = load i8* @"'nomsg", align 1
  %"362" = sext i8 %"361" to i32
  %"363" = load i8* @"'alive1", align 1
  %"364" = trunc i8 %"363" to i1
  %"365" = load i8* @"'id1", align 1
  %"366" = sext i8 %"365" to i32
  %"367" = load i8* @"'id1", align 1
  %"368" = sext i8 %"367" to i32
  %"369" = load i8* @"'nomsg", align 1
  %"370" = load i8* @"'nomsg", align 1
  %"371" = sext i8 %"370" to i32
  %"372" = load i8* @"'alive2", align 1
  %"373" = trunc i8 %"372" to i1
  %"374" = load i8* @"'id2", align 1
  %"375" = sext i8 %"374" to i32
  %"376" = load i8* @"'id2", align 1
  %"377" = sext i8 %"376" to i32
  %"378" = load i8* @"'nomsg", align 1
  %"379" = load i8* @"'nomsg", align 1
  %"380" = sext i8 %"379" to i32
  %"381" = load i8* @"'alive3", align 1
  %"382" = trunc i8 %"381" to i1
  %"383" = load i8* @"'id3", align 1
  %"384" = sext i8 %"383" to i32
  %"385" = load i8* @"'id3", align 1
  %"386" = sext i8 %"385" to i32
  %"387" = load i8* @"'nomsg", align 1
  %"388" = load i8* @"'nomsg", align 1
  %"389" = load i8* @"'nomsg", align 1
  %"390" = load i8* @"'alive3", align 1
  %"391" = trunc i8 %"390" to i1
  %"392" = load i8* @"'nomsg", align 1
  %"393" = sext i8 %"392" to i32
  %"394" = load i8* @"'nomsg", align 1
  %"395" = sext i8 %"394" to i32
  %"396" = load i8* @"'id3", align 1
  %"397" = sext i8 %"396" to i32
  %"398" = load i8* @"'nomsg", align 1
  %"399" = sext i8 %"398" to i32
  %"400" = load i8* @"'nomsg", align 1
  %"401" = sext i8 %"400" to i32
  %"402" = load i8* @"'alive2", align 1
  %"403" = trunc i8 %"402" to i1
  %"404" = load i8* @"'nomsg", align 1
  %"405" = sext i8 %"404" to i32
  %"406" = load i8* @"'nomsg", align 1
  %"407" = sext i8 %"406" to i32
  %"408" = load i8* @"'id2", align 1
  %"409" = sext i8 %"408" to i32
  %"410" = load i8* @"'nomsg", align 1
  %"411" = sext i8 %"410" to i32
  %"412" = load i8* @"'nomsg", align 1
  %"413" = sext i8 %"412" to i32
  %"414" = load i8* @"'alive1", align 1
  %"415" = trunc i8 %"414" to i1
  %"416" = load i8* @"'nomsg", align 1
  %"417" = sext i8 %"416" to i32
  %"418" = load i8* @"'nomsg", align 1
  %"419" = sext i8 %"418" to i32
  %"420" = load i8* @"'id1", align 1
  %"421" = sext i8 %"420" to i32
  %"422" = load i8* @"'nomsg", align 1
  %"423" = sext i8 %"422" to i32
  %"424" = load i8* @"'nomsg", align 1
  %"425" = sext i8 %"424" to i32
  br label %main_bb110

main_bb110:                                       ; preds = %main_assert.exit, %main___VERIFIER_assume.exit
  %i2.0 = phi i32 [ 0, %main___VERIFIER_assume.exit ], [ %"548", %main_assert.exit ]
  %"426" = icmp slt i32 %i2.0, 6
  br i1 %"426", label %main_bb111, label %main_bb179

main_bb111:                                       ; preds = %main_bb110
  %"427" = load i8* @"'mode1", align 1
  %"428" = trunc i8 %"427" to i1
  br i1 %"428", label %main_bb112, label %main_bb121

main_bb112:                                       ; preds = %main_bb111
  %"429" = load i8* @"'r1", align 1
  %"430" = sext i8 %"429" to i32
  %"431" = add nsw i32 %"430", 1
  %"432" = trunc i32 %"431" to i8
  store i8 %"432", i8* @"'r1", align 1
  %"433" = load i8* @"'p3_old", align 1
  store i8 %"360", i8* @"'p3_old", align 1
  %"434" = sext i8 %"433" to i32
  %"435" = icmp ne i32 %"434", %"362"
  br i1 %"435", label %main_bb113, label %main_bb120

main_bb113:                                       ; preds = %main_bb112
  br i1 %"364", label %main_bb114, label %main_bb119

main_bb114:                                       ; preds = %main_bb113
  %"436" = sext i8 %"433" to i32
  %"437" = icmp sgt i32 %"436", %"366"
  br i1 %"437", label %main_bb115, label %main_bb116

main_bb115:                                       ; preds = %main_bb114
  store i8 %"433", i8* @"'send1", align 1
  br label %main_bb120

main_bb116:                                       ; preds = %main_bb114
  %"438" = sext i8 %"433" to i32
  %"439" = icmp eq i32 %"438", %"368"
  br i1 %"439", label %main_bb117, label %main_bb118

main_bb117:                                       ; preds = %main_bb116
  store i8 1, i8* @"'st1", align 1
  br label %main_bb120

main_bb118:                                       ; preds = %main_bb116
  store i8 %"433", i8* @"'send1", align 1
  br label %main_bb120

main_bb119:                                       ; preds = %main_bb113
  store i8 %"433", i8* @"'send1", align 1
  br label %main_bb120

main_bb120:                                       ; preds = %main_bb119, %main_bb118, %main_bb117, %main_bb115, %main_bb112
  store i8 0, i8* @"'mode1", align 1
  br label %main_node1.exit

main_bb121:                                       ; preds = %main_bb111
  %"440" = load i8* @"'send1", align 1
  %"441" = sext i8 %"440" to i32
  br i1 %"415", label %main_bb122, label %main_bb127

main_bb122:                                       ; preds = %main_bb121
  %"442" = icmp ne i32 %"441", %"417"
  br i1 %"442", label %main_bb123, label %main_bb125

main_bb123:                                       ; preds = %main_bb122
  %"443" = load i8* @"'p1_new", align 1
  %"444" = sext i8 %"443" to i32
  %"445" = icmp eq i32 %"444", %"419"
  br i1 %"445", label %main_bb124, label %main_bb125

main_bb124:                                       ; preds = %main_bb123
  %"446" = load i8* @"'send1", align 1
  br label %main_bb126

main_bb125:                                       ; preds = %main_bb123, %main_bb122
  %"447" = load i8* @"'p1_new", align 1
  br label %main_bb126

main_bb126:                                       ; preds = %main_bb125, %main_bb124
  %.sink.i4 = phi i8 [ %"446", %main_bb124 ], [ %"447", %main_bb125 ]
  %"448" = sext i8 %.sink.i4 to i32
  %"449" = trunc i32 %"448" to i8
  store i8 %"449", i8* @"'p1_new", align 1
  br label %main_bb133

main_bb127:                                       ; preds = %main_bb121
  %"450" = icmp ne i32 %"441", %"421"
  br i1 %"450", label %main_bb128, label %main_bb133

main_bb128:                                       ; preds = %main_bb127
  %"451" = load i8* @"'send1", align 1
  %"452" = sext i8 %"451" to i32
  %"453" = icmp ne i32 %"452", %"423"
  br i1 %"453", label %main_bb129, label %main_bb131

main_bb129:                                       ; preds = %main_bb128
  %"454" = load i8* @"'p1_new", align 1
  %"455" = sext i8 %"454" to i32
  %"456" = icmp eq i32 %"455", %"425"
  br i1 %"456", label %main_bb130, label %main_bb131

main_bb130:                                       ; preds = %main_bb129
  %"457" = load i8* @"'send1", align 1
  br label %main_bb132

main_bb131:                                       ; preds = %main_bb129, %main_bb128
  %"458" = load i8* @"'p1_new", align 1
  br label %main_bb132

main_bb132:                                       ; preds = %main_bb131, %main_bb130
  %.sink1.i5 = phi i8 [ %"457", %main_bb130 ], [ %"458", %main_bb131 ]
  %"459" = sext i8 %.sink1.i5 to i32
  %"460" = trunc i32 %"459" to i8
  store i8 %"460", i8* @"'p1_new", align 1
  br label %main_bb133

main_bb133:                                       ; preds = %main_bb132, %main_bb127, %main_bb126
  store i8 1, i8* @"'mode1", align 1
  br label %main_node1.exit

main_node1.exit:                                  ; preds = %main_bb120, %main_bb133
  %"461" = load i8* @"'mode2", align 1
  %"462" = trunc i8 %"461" to i1
  br i1 %"462", label %main_bb134, label %main_bb142

main_bb134:                                       ; preds = %main_node1.exit
  %"463" = load i8* @"'p1_old", align 1
  store i8 %"369", i8* @"'p1_old", align 1
  %"464" = sext i8 %"463" to i32
  %"465" = icmp ne i32 %"464", %"371"
  br i1 %"465", label %main_bb135, label %main_bb141

main_bb135:                                       ; preds = %main_bb134
  br i1 %"373", label %main_bb136, label %main_bb140

main_bb136:                                       ; preds = %main_bb135
  %"466" = sext i8 %"463" to i32
  %"467" = icmp sgt i32 %"466", %"375"
  br i1 %"467", label %main_bb137, label %main_bb138

main_bb137:                                       ; preds = %main_bb136
  store i8 %"463", i8* @"'send2", align 1
  br label %main_bb141

main_bb138:                                       ; preds = %main_bb136
  %"468" = sext i8 %"463" to i32
  %"469" = icmp eq i32 %"468", %"377"
  br i1 %"469", label %main_bb139, label %main_bb141

main_bb139:                                       ; preds = %main_bb138
  store i8 1, i8* @"'st2", align 1
  br label %main_bb141

main_bb140:                                       ; preds = %main_bb135
  store i8 %"463", i8* @"'send2", align 1
  br label %main_bb141

main_bb141:                                       ; preds = %main_bb140, %main_bb139, %main_bb138, %main_bb137, %main_bb134
  store i8 0, i8* @"'mode2", align 1
  br label %main_node2.exit

main_bb142:                                       ; preds = %main_node1.exit
  %"470" = load i8* @"'send2", align 1
  %"471" = sext i8 %"470" to i32
  br i1 %"403", label %main_bb143, label %main_bb148

main_bb143:                                       ; preds = %main_bb142
  %"472" = icmp ne i32 %"471", %"405"
  br i1 %"472", label %main_bb144, label %main_bb146

main_bb144:                                       ; preds = %main_bb143
  %"473" = load i8* @"'p2_new", align 1
  %"474" = sext i8 %"473" to i32
  %"475" = icmp eq i32 %"474", %"407"
  br i1 %"475", label %main_bb145, label %main_bb146

main_bb145:                                       ; preds = %main_bb144
  %"476" = load i8* @"'send2", align 1
  br label %main_bb147

main_bb146:                                       ; preds = %main_bb144, %main_bb143
  %"477" = load i8* @"'p2_new", align 1
  br label %main_bb147

main_bb147:                                       ; preds = %main_bb146, %main_bb145
  %.sink.i2 = phi i8 [ %"476", %main_bb145 ], [ %"477", %main_bb146 ]
  %"478" = sext i8 %.sink.i2 to i32
  %"479" = trunc i32 %"478" to i8
  store i8 %"479", i8* @"'p2_new", align 1
  br label %main_bb154

main_bb148:                                       ; preds = %main_bb142
  %"480" = icmp ne i32 %"471", %"409"
  br i1 %"480", label %main_bb149, label %main_bb154

main_bb149:                                       ; preds = %main_bb148
  %"481" = load i8* @"'send2", align 1
  %"482" = sext i8 %"481" to i32
  %"483" = icmp ne i32 %"482", %"411"
  br i1 %"483", label %main_bb150, label %main_bb152

main_bb150:                                       ; preds = %main_bb149
  %"484" = load i8* @"'p2_new", align 1
  %"485" = sext i8 %"484" to i32
  %"486" = icmp eq i32 %"485", %"413"
  br i1 %"486", label %main_bb151, label %main_bb152

main_bb151:                                       ; preds = %main_bb150
  %"487" = load i8* @"'send2", align 1
  br label %main_bb153

main_bb152:                                       ; preds = %main_bb150, %main_bb149
  %"488" = load i8* @"'p2_new", align 1
  br label %main_bb153

main_bb153:                                       ; preds = %main_bb152, %main_bb151
  %.sink1.i3 = phi i8 [ %"487", %main_bb151 ], [ %"488", %main_bb152 ]
  %"489" = sext i8 %.sink1.i3 to i32
  %"490" = trunc i32 %"489" to i8
  store i8 %"490", i8* @"'p2_new", align 1
  br label %main_bb154

main_bb154:                                       ; preds = %main_bb153, %main_bb148, %main_bb147
  store i8 1, i8* @"'mode2", align 1
  br label %main_node2.exit

main_node2.exit:                                  ; preds = %main_bb141, %main_bb154
  %"491" = load i8* @"'mode3", align 1
  %"492" = trunc i8 %"491" to i1
  br i1 %"492", label %main_bb155, label %main_bb163

main_bb155:                                       ; preds = %main_node2.exit
  %"493" = load i8* @"'p2_old", align 1
  store i8 %"378", i8* @"'p2_old", align 1
  %"494" = sext i8 %"493" to i32
  %"495" = icmp ne i32 %"494", %"380"
  br i1 %"495", label %main_bb156, label %main_bb162

main_bb156:                                       ; preds = %main_bb155
  br i1 %"382", label %main_bb157, label %main_bb161

main_bb157:                                       ; preds = %main_bb156
  %"496" = sext i8 %"493" to i32
  %"497" = icmp sgt i32 %"496", %"384"
  br i1 %"497", label %main_bb158, label %main_bb159

main_bb158:                                       ; preds = %main_bb157
  store i8 %"493", i8* @"'send3", align 1
  br label %main_bb162

main_bb159:                                       ; preds = %main_bb157
  %"498" = sext i8 %"493" to i32
  %"499" = icmp eq i32 %"498", %"386"
  br i1 %"499", label %main_bb160, label %main_bb162

main_bb160:                                       ; preds = %main_bb159
  store i8 1, i8* @"'st3", align 1
  br label %main_bb162

main_bb161:                                       ; preds = %main_bb156
  store i8 %"493", i8* @"'send3", align 1
  br label %main_bb162

main_bb162:                                       ; preds = %main_bb161, %main_bb160, %main_bb159, %main_bb158, %main_bb155
  store i8 0, i8* @"'mode3", align 1
  br label %main_node3.exit

main_bb163:                                       ; preds = %main_node2.exit
  %"500" = load i8* @"'send3", align 1
  %"501" = sext i8 %"500" to i32
  br i1 %"391", label %main_bb164, label %main_bb169

main_bb164:                                       ; preds = %main_bb163
  %"502" = icmp ne i32 %"501", %"393"
  br i1 %"502", label %main_bb165, label %main_bb167

main_bb165:                                       ; preds = %main_bb164
  %"503" = load i8* @"'p3_new", align 1
  %"504" = sext i8 %"503" to i32
  %"505" = icmp eq i32 %"504", %"395"
  br i1 %"505", label %main_bb166, label %main_bb167

main_bb166:                                       ; preds = %main_bb165
  %"506" = load i8* @"'send3", align 1
  br label %main_bb168

main_bb167:                                       ; preds = %main_bb165, %main_bb164
  %"507" = load i8* @"'p3_new", align 1
  br label %main_bb168

main_bb168:                                       ; preds = %main_bb167, %main_bb166
  %.sink.i = phi i8 [ %"506", %main_bb166 ], [ %"507", %main_bb167 ]
  %"508" = sext i8 %.sink.i to i32
  %"509" = trunc i32 %"508" to i8
  store i8 %"509", i8* @"'p3_new", align 1
  br label %main_bb175

main_bb169:                                       ; preds = %main_bb163
  %"510" = icmp ne i32 %"501", %"397"
  br i1 %"510", label %main_bb170, label %main_bb175

main_bb170:                                       ; preds = %main_bb169
  %"511" = load i8* @"'send3", align 1
  %"512" = sext i8 %"511" to i32
  %"513" = icmp ne i32 %"512", %"399"
  br i1 %"513", label %main_bb171, label %main_bb173

main_bb171:                                       ; preds = %main_bb170
  %"514" = load i8* @"'p3_new", align 1
  %"515" = sext i8 %"514" to i32
  %"516" = icmp eq i32 %"515", %"401"
  br i1 %"516", label %main_bb172, label %main_bb173

main_bb172:                                       ; preds = %main_bb171
  %"517" = load i8* @"'send3", align 1
  br label %main_bb174

main_bb173:                                       ; preds = %main_bb171, %main_bb170
  %"518" = load i8* @"'p3_new", align 1
  br label %main_bb174

main_bb174:                                       ; preds = %main_bb173, %main_bb172
  %.sink1.i = phi i8 [ %"517", %main_bb172 ], [ %"518", %main_bb173 ]
  %"519" = sext i8 %.sink1.i to i32
  %"520" = trunc i32 %"519" to i8
  store i8 %"520", i8* @"'p3_new", align 1
  br label %main_bb175

main_bb175:                                       ; preds = %main_bb174, %main_bb169, %main_bb168
  store i8 1, i8* @"'mode3", align 1
  br label %main_node3.exit

main_node3.exit:                                  ; preds = %main_bb162, %main_bb175
  %"521" = load i8* @"'p1_new", align 1
  store i8 %"521", i8* @"'p1_old", align 1
  store i8 %"387", i8* @"'p1_new", align 1
  %"522" = load i8* @"'p2_new", align 1
  store i8 %"522", i8* @"'p2_old", align 1
  store i8 %"388", i8* @"'p2_new", align 1
  %"523" = load i8* @"'p3_new", align 1
  store i8 %"523", i8* @"'p3_old", align 1
  store i8 %"389", i8* @"'p3_new", align 1
  %"524" = load i8* @"'st1", align 1
  %"525" = sext i8 %"524" to i32
  %"526" = load i8* @"'st2", align 1
  %"527" = sext i8 %"526" to i32
  %"528" = add nsw i32 %"525", %"527"
  %"529" = load i8* @"'st3", align 1
  %"530" = sext i8 %"529" to i32
  %"531" = add nsw i32 %"528", %"530"
  %"532" = icmp sle i32 %"531", 1
  br i1 %"532", label %main_bb176, label %main_check.exit

main_bb176:                                       ; preds = %main_node3.exit
  %"533" = load i8* @"'r1", align 1
  %"534" = sext i8 %"533" to i32
  %"535" = icmp slt i32 %"534", 3
  br i1 %"535", label %main_check.exit, label %main_bb177

main_bb177:                                       ; preds = %main_bb176
  %"536" = load i8* @"'st1", align 1
  %"537" = sext i8 %"536" to i32
  %"538" = load i8* @"'st2", align 1
  %"539" = sext i8 %"538" to i32
  %"540" = add nsw i32 %"537", %"539"
  %"541" = load i8* @"'st3", align 1
  %"542" = sext i8 %"541" to i32
  %"543" = add nsw i32 %"540", %"542"
  %"544" = icmp eq i32 %"543", 1
  %..i1 = select i1 %"544", i32 1, i32 0
  br label %main_check.exit

main_check.exit:                                  ; preds = %main_node3.exit, %main_bb176, %main_bb177
  %tmp.2.i = phi i32 [ %..i1, %main_bb177 ], [ 1, %main_bb176 ], [ 0, %main_node3.exit ]
  %"545" = icmp ne i32 %tmp.2.i, 0
  %"546" = zext i1 %"545" to i8
  %"547" = trunc i8 %"546" to i1
  br i1 %"547", label %main_assert.exit, label %main_bb178

main_assert.exit:                                 ; preds = %main_check.exit
  %"548" = add nsw i32 %i2.0, 1
  br label %main_bb110

main_bb178:                                       ; preds = %main_check.exit
  call void (...)* @__VERIFIER_error() #3
  unreachable

main_bb179:                                       ; preds = %main_bb110
  ret i32 0
}

declare signext i8 @__VERIFIER_nondet_char() #1

declare signext i8 @__VERIFIER_nondet_msg_t() #1

declare zeroext i1 @__VERIFIER_nondet__Bool() #1

; Function Attrs: nounwind uwtable
define void @__VERIFIER_assume(i1 zeroext %arg) #0 {
__VERIFIER_assume_bb180:
  %"549" = zext i1 %arg to i8
  %"550" = trunc i8 %"549" to i1
  br label %__VERIFIER_assume_bb181

__VERIFIER_assume_bb181:                          ; preds = %__VERIFIER_assume_bb181, %__VERIFIER_assume_bb180
  %"551" = xor i1 %"550", true
  br i1 %"551", label %__VERIFIER_assume_bb181, label %__VERIFIER_assume_bb182

__VERIFIER_assume_bb182:                          ; preds = %__VERIFIER_assume_bb181
  ret void
}

; Function Attrs: nounwind uwtable
define void @assert(i1 zeroext %arg) #0 {
assert_bb183:
  %"552" = zext i1 %arg to i8
  %"553" = trunc i8 %"552" to i1
  br i1 %"553", label %assert_bb184, label %assert_bb185

assert_bb184:                                     ; preds = %assert_bb183
  ret void

assert_bb185:                                     ; preds = %assert_bb183
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

