; ModuleID = 'Benchmarks/TermCOMP/C/SV-COMP_Mixed_Categories/pals_lcr.3_false-unreach-call.1.ufo.BOUNDED-6.pals/pals_lcr.3_false-unreach-call.1.ufo.BOUNDED-6.pals.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"'nomsg" = global i8 -1, align 1
@"'mode1" = common global i8 0, align 1
@"'r1" = common global i8 0, align 1
@"'p3_old" = common global i8 0, align 1
@"'id1" = common global i8 0, align 1
@"'send1" = common global i8 0, align 1
@"'st1" = common global i8 0, align 1
@"'p1_new" = common global i8 0, align 1
@"'mode2" = common global i8 0, align 1
@"'p1_old" = common global i8 0, align 1
@"'id2" = common global i8 0, align 1
@"'send2" = common global i8 0, align 1
@"'st2" = common global i8 0, align 1
@"'p2_new" = common global i8 0, align 1
@"'mode3" = common global i8 0, align 1
@"'p2_old" = common global i8 0, align 1
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
  br i1 %"1", label %node1_bb1, label %node1_bb8

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
  br i1 %"11", label %node1_bb2, label %node1_bb7

node1_bb2:                                        ; preds = %node1_bb1
  %"12" = sext i8 %"6" to i32
  %"13" = load i8* @"'id1", align 1
  %"14" = sext i8 %"13" to i32
  %"15" = icmp sgt i32 %"12", %"14"
  br i1 %"15", label %node1_bb3, label %node1_bb4

node1_bb3:                                        ; preds = %node1_bb2
  store i8 %"6", i8* @"'send1", align 1
  br label %node1_bb7

node1_bb4:                                        ; preds = %node1_bb2
  %"16" = sext i8 %"6" to i32
  %"17" = load i8* @"'id1", align 1
  %"18" = sext i8 %"17" to i32
  %"19" = icmp eq i32 %"16", %"18"
  br i1 %"19", label %node1_bb5, label %node1_bb6

node1_bb5:                                        ; preds = %node1_bb4
  store i8 1, i8* @"'st1", align 1
  br label %node1_bb7

node1_bb6:                                        ; preds = %node1_bb4
  store i8 %"6", i8* @"'send1", align 1
  br label %node1_bb7

node1_bb7:                                        ; preds = %node1_bb3, %node1_bb6, %node1_bb5, %node1_bb1
  store i8 0, i8* @"'mode1", align 1
  br label %node1_bb13

node1_bb8:                                        ; preds = %node1_bb0
  %"20" = load i8* @"'send1", align 1
  %"21" = sext i8 %"20" to i32
  %"22" = load i8* @"'nomsg", align 1
  %"23" = sext i8 %"22" to i32
  %"24" = icmp ne i32 %"21", %"23"
  br i1 %"24", label %node1_bb9, label %node1_bb11

node1_bb9:                                        ; preds = %node1_bb8
  %"25" = load i8* @"'p1_new", align 1
  %"26" = sext i8 %"25" to i32
  %"27" = load i8* @"'nomsg", align 1
  %"28" = sext i8 %"27" to i32
  %"29" = icmp eq i32 %"26", %"28"
  br i1 %"29", label %node1_bb10, label %node1_bb11

node1_bb10:                                       ; preds = %node1_bb9
  %"30" = load i8* @"'send1", align 1
  br label %node1_bb12

node1_bb11:                                       ; preds = %node1_bb9, %node1_bb8
  %"31" = load i8* @"'p1_new", align 1
  br label %node1_bb12

node1_bb12:                                       ; preds = %node1_bb11, %node1_bb10
  %.sink = phi i8 [ %"30", %node1_bb10 ], [ %"31", %node1_bb11 ]
  %"32" = sext i8 %.sink to i32
  %"33" = trunc i32 %"32" to i8
  store i8 %"33", i8* @"'p1_new", align 1
  store i8 1, i8* @"'mode1", align 1
  br label %node1_bb13

node1_bb13:                                       ; preds = %node1_bb12, %node1_bb7
  ret void
}

; Function Attrs: nounwind uwtable
define void @node2() #0 {
node2_bb14:
  %"34" = load i8* @"'mode2", align 1
  %"35" = trunc i8 %"34" to i1
  br i1 %"35", label %node2_bb15, label %node2_bb21

node2_bb15:                                       ; preds = %node2_bb14
  %"36" = load i8* @"'p1_old", align 1
  %"37" = load i8* @"'nomsg", align 1
  store i8 %"37", i8* @"'p1_old", align 1
  %"38" = sext i8 %"36" to i32
  %"39" = load i8* @"'nomsg", align 1
  %"40" = sext i8 %"39" to i32
  %"41" = icmp ne i32 %"38", %"40"
  br i1 %"41", label %node2_bb16, label %node2_bb20

node2_bb16:                                       ; preds = %node2_bb15
  %"42" = sext i8 %"36" to i32
  %"43" = load i8* @"'id2", align 1
  %"44" = sext i8 %"43" to i32
  %"45" = icmp sgt i32 %"42", %"44"
  br i1 %"45", label %node2_bb17, label %node2_bb18

node2_bb17:                                       ; preds = %node2_bb16
  store i8 %"36", i8* @"'send2", align 1
  br label %node2_bb20

node2_bb18:                                       ; preds = %node2_bb16
  %"46" = sext i8 %"36" to i32
  %"47" = load i8* @"'id2", align 1
  %"48" = sext i8 %"47" to i32
  %"49" = icmp eq i32 %"46", %"48"
  br i1 %"49", label %node2_bb19, label %node2_bb20

node2_bb19:                                       ; preds = %node2_bb18
  store i8 1, i8* @"'st2", align 1
  br label %node2_bb20

node2_bb20:                                       ; preds = %node2_bb17, %node2_bb19, %node2_bb18, %node2_bb15
  store i8 0, i8* @"'mode2", align 1
  br label %node2_bb26

node2_bb21:                                       ; preds = %node2_bb14
  %"50" = load i8* @"'send2", align 1
  %"51" = sext i8 %"50" to i32
  %"52" = load i8* @"'nomsg", align 1
  %"53" = sext i8 %"52" to i32
  %"54" = icmp ne i32 %"51", %"53"
  br i1 %"54", label %node2_bb22, label %node2_bb24

node2_bb22:                                       ; preds = %node2_bb21
  %"55" = load i8* @"'p2_new", align 1
  %"56" = sext i8 %"55" to i32
  %"57" = load i8* @"'nomsg", align 1
  %"58" = sext i8 %"57" to i32
  %"59" = icmp eq i32 %"56", %"58"
  br i1 %"59", label %node2_bb23, label %node2_bb24

node2_bb23:                                       ; preds = %node2_bb22
  %"60" = load i8* @"'send2", align 1
  br label %node2_bb25

node2_bb24:                                       ; preds = %node2_bb22, %node2_bb21
  %"61" = load i8* @"'p2_new", align 1
  br label %node2_bb25

node2_bb25:                                       ; preds = %node2_bb24, %node2_bb23
  %.sink = phi i8 [ %"60", %node2_bb23 ], [ %"61", %node2_bb24 ]
  %"62" = sext i8 %.sink to i32
  %"63" = trunc i32 %"62" to i8
  store i8 %"63", i8* @"'p2_new", align 1
  store i8 1, i8* @"'mode2", align 1
  br label %node2_bb26

node2_bb26:                                       ; preds = %node2_bb25, %node2_bb20
  ret void
}

; Function Attrs: nounwind uwtable
define void @node3() #0 {
node3_bb27:
  %"64" = load i8* @"'mode3", align 1
  %"65" = trunc i8 %"64" to i1
  br i1 %"65", label %node3_bb28, label %node3_bb34

node3_bb28:                                       ; preds = %node3_bb27
  %"66" = load i8* @"'p2_old", align 1
  %"67" = load i8* @"'nomsg", align 1
  store i8 %"67", i8* @"'p2_old", align 1
  %"68" = sext i8 %"66" to i32
  %"69" = load i8* @"'nomsg", align 1
  %"70" = sext i8 %"69" to i32
  %"71" = icmp ne i32 %"68", %"70"
  br i1 %"71", label %node3_bb29, label %node3_bb33

node3_bb29:                                       ; preds = %node3_bb28
  %"72" = sext i8 %"66" to i32
  %"73" = load i8* @"'id3", align 1
  %"74" = sext i8 %"73" to i32
  %"75" = icmp sgt i32 %"72", %"74"
  br i1 %"75", label %node3_bb30, label %node3_bb31

node3_bb30:                                       ; preds = %node3_bb29
  store i8 %"66", i8* @"'send3", align 1
  br label %node3_bb33

node3_bb31:                                       ; preds = %node3_bb29
  %"76" = sext i8 %"66" to i32
  %"77" = load i8* @"'id3", align 1
  %"78" = sext i8 %"77" to i32
  %"79" = icmp eq i32 %"76", %"78"
  br i1 %"79", label %node3_bb32, label %node3_bb33

node3_bb32:                                       ; preds = %node3_bb31
  store i8 1, i8* @"'st3", align 1
  br label %node3_bb33

node3_bb33:                                       ; preds = %node3_bb30, %node3_bb32, %node3_bb31, %node3_bb28
  store i8 0, i8* @"'mode3", align 1
  br label %node3_bb39

node3_bb34:                                       ; preds = %node3_bb27
  %"80" = load i8* @"'send3", align 1
  %"81" = sext i8 %"80" to i32
  %"82" = load i8* @"'nomsg", align 1
  %"83" = sext i8 %"82" to i32
  %"84" = icmp ne i32 %"81", %"83"
  br i1 %"84", label %node3_bb35, label %node3_bb37

node3_bb35:                                       ; preds = %node3_bb34
  %"85" = load i8* @"'p3_new", align 1
  %"86" = sext i8 %"85" to i32
  %"87" = load i8* @"'nomsg", align 1
  %"88" = sext i8 %"87" to i32
  %"89" = icmp eq i32 %"86", %"88"
  br i1 %"89", label %node3_bb36, label %node3_bb37

node3_bb36:                                       ; preds = %node3_bb35
  %"90" = load i8* @"'send3", align 1
  br label %node3_bb38

node3_bb37:                                       ; preds = %node3_bb35, %node3_bb34
  %"91" = load i8* @"'p3_new", align 1
  br label %node3_bb38

node3_bb38:                                       ; preds = %node3_bb37, %node3_bb36
  %.sink = phi i8 [ %"90", %node3_bb36 ], [ %"91", %node3_bb37 ]
  %"92" = sext i8 %.sink to i32
  %"93" = trunc i32 %"92" to i8
  store i8 %"93", i8* @"'p3_new", align 1
  store i8 1, i8* @"'mode3", align 1
  br label %node3_bb39

node3_bb39:                                       ; preds = %node3_bb38, %node3_bb33
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @init() #0 {
init_bb40:
  %"94" = load i8* @"'r1", align 1
  %"95" = sext i8 %"94" to i32
  %"96" = icmp eq i32 %"95", 0
  br i1 %"96", label %init_bb41, label %init_bb56

init_bb41:                                        ; preds = %init_bb40
  %"97" = load i8* @"'id1", align 1
  %"98" = sext i8 %"97" to i32
  %"99" = icmp sge i32 %"98", 0
  br i1 %"99", label %init_bb42, label %init_bb56

init_bb42:                                        ; preds = %init_bb41
  %"100" = load i8* @"'st1", align 1
  %"101" = sext i8 %"100" to i32
  %"102" = icmp eq i32 %"101", 0
  br i1 %"102", label %init_bb43, label %init_bb56

init_bb43:                                        ; preds = %init_bb42
  %"103" = load i8* @"'send1", align 1
  %"104" = sext i8 %"103" to i32
  %"105" = load i8* @"'id1", align 1
  %"106" = sext i8 %"105" to i32
  %"107" = icmp eq i32 %"104", %"106"
  br i1 %"107", label %init_bb44, label %init_bb56

init_bb44:                                        ; preds = %init_bb43
  %"108" = load i8* @"'mode1", align 1
  %"109" = trunc i8 %"108" to i1
  %"110" = zext i1 %"109" to i32
  %"111" = icmp eq i32 %"110", 0
  br i1 %"111", label %init_bb45, label %init_bb56

init_bb45:                                        ; preds = %init_bb44
  %"112" = load i8* @"'id2", align 1
  %"113" = sext i8 %"112" to i32
  %"114" = icmp sge i32 %"113", 0
  br i1 %"114", label %init_bb46, label %init_bb56

init_bb46:                                        ; preds = %init_bb45
  %"115" = load i8* @"'st2", align 1
  %"116" = sext i8 %"115" to i32
  %"117" = icmp eq i32 %"116", 0
  br i1 %"117", label %init_bb47, label %init_bb56

init_bb47:                                        ; preds = %init_bb46
  %"118" = load i8* @"'send2", align 1
  %"119" = sext i8 %"118" to i32
  %"120" = load i8* @"'id2", align 1
  %"121" = sext i8 %"120" to i32
  %"122" = icmp eq i32 %"119", %"121"
  br i1 %"122", label %init_bb48, label %init_bb56

init_bb48:                                        ; preds = %init_bb47
  %"123" = load i8* @"'mode2", align 1
  %"124" = trunc i8 %"123" to i1
  %"125" = zext i1 %"124" to i32
  %"126" = icmp eq i32 %"125", 0
  br i1 %"126", label %init_bb49, label %init_bb56

init_bb49:                                        ; preds = %init_bb48
  %"127" = load i8* @"'id3", align 1
  %"128" = sext i8 %"127" to i32
  %"129" = icmp sge i32 %"128", 0
  br i1 %"129", label %init_bb50, label %init_bb56

init_bb50:                                        ; preds = %init_bb49
  %"130" = load i8* @"'st3", align 1
  %"131" = sext i8 %"130" to i32
  %"132" = icmp eq i32 %"131", 0
  br i1 %"132", label %init_bb51, label %init_bb56

init_bb51:                                        ; preds = %init_bb50
  %"133" = load i8* @"'send3", align 1
  %"134" = sext i8 %"133" to i32
  %"135" = load i8* @"'id3", align 1
  %"136" = sext i8 %"135" to i32
  %"137" = icmp eq i32 %"134", %"136"
  br i1 %"137", label %init_bb52, label %init_bb56

init_bb52:                                        ; preds = %init_bb51
  %"138" = load i8* @"'mode3", align 1
  %"139" = trunc i8 %"138" to i1
  %"140" = zext i1 %"139" to i32
  %"141" = icmp eq i32 %"140", 0
  br i1 %"141", label %init_bb53, label %init_bb56

init_bb53:                                        ; preds = %init_bb52
  %"142" = load i8* @"'id1", align 1
  %"143" = sext i8 %"142" to i32
  %"144" = load i8* @"'id2", align 1
  %"145" = sext i8 %"144" to i32
  %"146" = icmp ne i32 %"143", %"145"
  br i1 %"146", label %init_bb54, label %init_bb56

init_bb54:                                        ; preds = %init_bb53
  %"147" = load i8* @"'id1", align 1
  %"148" = sext i8 %"147" to i32
  %"149" = load i8* @"'id3", align 1
  %"150" = sext i8 %"149" to i32
  %"151" = icmp ne i32 %"148", %"150"
  br i1 %"151", label %init_bb55, label %init_bb56

init_bb55:                                        ; preds = %init_bb54
  %"152" = load i8* @"'id2", align 1
  %"153" = sext i8 %"152" to i32
  %"154" = load i8* @"'id3", align 1
  %"155" = sext i8 %"154" to i32
  %"156" = icmp ne i32 %"153", %"155"
  %. = select i1 %"156", i32 1, i32 0
  br label %init_bb56

init_bb56:                                        ; preds = %init_bb40, %init_bb42, %init_bb44, %init_bb46, %init_bb48, %init_bb50, %init_bb52, %init_bb54, %init_bb55, %init_bb53, %init_bb51, %init_bb49, %init_bb47, %init_bb45, %init_bb43, %init_bb41
  %tmp.15 = phi i32 [ %., %init_bb55 ], [ 0, %init_bb54 ], [ 0, %init_bb53 ], [ 0, %init_bb52 ], [ 0, %init_bb51 ], [ 0, %init_bb50 ], [ 0, %init_bb49 ], [ 0, %init_bb48 ], [ 0, %init_bb47 ], [ 0, %init_bb46 ], [ 0, %init_bb45 ], [ 0, %init_bb44 ], [ 0, %init_bb43 ], [ 0, %init_bb42 ], [ 0, %init_bb41 ], [ 0, %init_bb40 ]
  ret i32 %tmp.15
}

; Function Attrs: nounwind uwtable
define i32 @check() #0 {
check_bb57:
  %"157" = load i8* @"'st1", align 1
  %"158" = sext i8 %"157" to i32
  %"159" = load i8* @"'st2", align 1
  %"160" = sext i8 %"159" to i32
  %"161" = add nsw i32 %"158", %"160"
  %"162" = load i8* @"'st3", align 1
  %"163" = sext i8 %"162" to i32
  %"164" = add nsw i32 %"161", %"163"
  %"165" = icmp sle i32 %"164", 1
  br i1 %"165", label %check_bb58, label %check_bb62

check_bb58:                                       ; preds = %check_bb57
  %"166" = load i8* @"'r1", align 1
  %"167" = sext i8 %"166" to i32
  %"168" = icmp sge i32 %"167", 3
  br i1 %"168", label %check_bb60, label %check_bb59

check_bb59:                                       ; preds = %check_bb58
  %"169" = load i8* @"'st1", align 1
  %"170" = sext i8 %"169" to i32
  %"171" = load i8* @"'st2", align 1
  %"172" = sext i8 %"171" to i32
  %"173" = add nsw i32 %"170", %"172"
  %"174" = load i8* @"'st3", align 1
  %"175" = sext i8 %"174" to i32
  %"176" = add nsw i32 %"173", %"175"
  %"177" = icmp eq i32 %"176", 0
  br i1 %"177", label %check_bb60, label %check_bb62

check_bb60:                                       ; preds = %check_bb59, %check_bb58
  %"178" = load i8* @"'r1", align 1
  %"179" = sext i8 %"178" to i32
  %"180" = icmp slt i32 %"179", 3
  br i1 %"180", label %check_bb62, label %check_bb61

check_bb61:                                       ; preds = %check_bb60
  %"181" = load i8* @"'st1", align 1
  %"182" = sext i8 %"181" to i32
  %"183" = load i8* @"'st2", align 1
  %"184" = sext i8 %"183" to i32
  %"185" = add nsw i32 %"182", %"184"
  %"186" = load i8* @"'st3", align 1
  %"187" = sext i8 %"186" to i32
  %"188" = add nsw i32 %"185", %"187"
  %"189" = icmp eq i32 %"188", 1
  %. = select i1 %"189", i32 1, i32 0
  br label %check_bb62

check_bb62:                                       ; preds = %check_bb57, %check_bb59, %check_bb61, %check_bb60
  %tmp.3 = phi i32 [ %., %check_bb61 ], [ 1, %check_bb60 ], [ 0, %check_bb59 ], [ 0, %check_bb57 ]
  ret i32 %tmp.3
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb63:
  %"190" = call signext i8 @__VERIFIER_nondet_char()
  store i8 %"190", i8* @"'r1", align 1
  %"191" = call signext i8 @__VERIFIER_nondet_char()
  store i8 %"191", i8* @"'id1", align 1
  %"192" = call signext i8 @__VERIFIER_nondet_char()
  store i8 %"192", i8* @"'st1", align 1
  %"193" = call signext i8 @__VERIFIER_nondet_msg_t()
  store i8 %"193", i8* @"'send1", align 1
  %"194" = call zeroext i1 @__VERIFIER_nondet__Bool()
  %"195" = zext i1 %"194" to i8
  store i8 %"195", i8* @"'mode1", align 1
  %"196" = call signext i8 @__VERIFIER_nondet_char()
  store i8 %"196", i8* @"'id2", align 1
  %"197" = call signext i8 @__VERIFIER_nondet_char()
  store i8 %"197", i8* @"'st2", align 1
  %"198" = call signext i8 @__VERIFIER_nondet_msg_t()
  store i8 %"198", i8* @"'send2", align 1
  %"199" = call zeroext i1 @__VERIFIER_nondet__Bool()
  %"200" = zext i1 %"199" to i8
  store i8 %"200", i8* @"'mode2", align 1
  %"201" = call signext i8 @__VERIFIER_nondet_char()
  store i8 %"201", i8* @"'id3", align 1
  %"202" = call signext i8 @__VERIFIER_nondet_char()
  store i8 %"202", i8* @"'st3", align 1
  %"203" = call signext i8 @__VERIFIER_nondet_msg_t()
  store i8 %"203", i8* @"'send3", align 1
  %"204" = call zeroext i1 @__VERIFIER_nondet__Bool()
  %"205" = zext i1 %"204" to i8
  store i8 %"205", i8* @"'mode3", align 1
  %"206" = load i8* @"'r1", align 1
  %"207" = sext i8 %"206" to i32
  %"208" = icmp eq i32 %"207", 0
  br i1 %"208", label %main_bb64, label %main_init.exit

main_bb64:                                        ; preds = %main_bb63
  %"209" = load i8* @"'id1", align 1
  %"210" = sext i8 %"209" to i32
  %"211" = icmp sge i32 %"210", 0
  br i1 %"211", label %main_bb65, label %main_init.exit

main_bb65:                                        ; preds = %main_bb64
  %"212" = load i8* @"'st1", align 1
  %"213" = sext i8 %"212" to i32
  %"214" = icmp eq i32 %"213", 0
  br i1 %"214", label %main_bb66, label %main_init.exit

main_bb66:                                        ; preds = %main_bb65
  %"215" = load i8* @"'send1", align 1
  %"216" = sext i8 %"215" to i32
  %"217" = load i8* @"'id1", align 1
  %"218" = sext i8 %"217" to i32
  %"219" = icmp eq i32 %"216", %"218"
  br i1 %"219", label %main_bb67, label %main_init.exit

main_bb67:                                        ; preds = %main_bb66
  %"220" = load i8* @"'mode1", align 1
  %"221" = trunc i8 %"220" to i1
  %"222" = zext i1 %"221" to i32
  %"223" = icmp eq i32 %"222", 0
  br i1 %"223", label %main_bb68, label %main_init.exit

main_bb68:                                        ; preds = %main_bb67
  %"224" = load i8* @"'id2", align 1
  %"225" = sext i8 %"224" to i32
  %"226" = icmp sge i32 %"225", 0
  br i1 %"226", label %main_bb69, label %main_init.exit

main_bb69:                                        ; preds = %main_bb68
  %"227" = load i8* @"'st2", align 1
  %"228" = sext i8 %"227" to i32
  %"229" = icmp eq i32 %"228", 0
  br i1 %"229", label %main_bb70, label %main_init.exit

main_bb70:                                        ; preds = %main_bb69
  %"230" = load i8* @"'send2", align 1
  %"231" = sext i8 %"230" to i32
  %"232" = load i8* @"'id2", align 1
  %"233" = sext i8 %"232" to i32
  %"234" = icmp eq i32 %"231", %"233"
  br i1 %"234", label %main_bb71, label %main_init.exit

main_bb71:                                        ; preds = %main_bb70
  %"235" = load i8* @"'mode2", align 1
  %"236" = trunc i8 %"235" to i1
  %"237" = zext i1 %"236" to i32
  %"238" = icmp eq i32 %"237", 0
  br i1 %"238", label %main_bb72, label %main_init.exit

main_bb72:                                        ; preds = %main_bb71
  %"239" = load i8* @"'id3", align 1
  %"240" = sext i8 %"239" to i32
  %"241" = icmp sge i32 %"240", 0
  br i1 %"241", label %main_bb73, label %main_init.exit

main_bb73:                                        ; preds = %main_bb72
  %"242" = load i8* @"'st3", align 1
  %"243" = sext i8 %"242" to i32
  %"244" = icmp eq i32 %"243", 0
  br i1 %"244", label %main_bb74, label %main_init.exit

main_bb74:                                        ; preds = %main_bb73
  %"245" = load i8* @"'send3", align 1
  %"246" = sext i8 %"245" to i32
  %"247" = load i8* @"'id3", align 1
  %"248" = sext i8 %"247" to i32
  %"249" = icmp eq i32 %"246", %"248"
  br i1 %"249", label %main_bb75, label %main_init.exit

main_bb75:                                        ; preds = %main_bb74
  %"250" = load i8* @"'mode3", align 1
  %"251" = trunc i8 %"250" to i1
  %"252" = zext i1 %"251" to i32
  %"253" = icmp eq i32 %"252", 0
  br i1 %"253", label %main_bb76, label %main_init.exit

main_bb76:                                        ; preds = %main_bb75
  %"254" = load i8* @"'id1", align 1
  %"255" = sext i8 %"254" to i32
  %"256" = load i8* @"'id2", align 1
  %"257" = sext i8 %"256" to i32
  %"258" = icmp ne i32 %"255", %"257"
  br i1 %"258", label %main_bb77, label %main_init.exit

main_bb77:                                        ; preds = %main_bb76
  %"259" = load i8* @"'id1", align 1
  %"260" = sext i8 %"259" to i32
  %"261" = load i8* @"'id3", align 1
  %"262" = sext i8 %"261" to i32
  %"263" = icmp ne i32 %"260", %"262"
  br i1 %"263", label %main_bb78, label %main_init.exit

main_bb78:                                        ; preds = %main_bb77
  %"264" = load i8* @"'id2", align 1
  %"265" = sext i8 %"264" to i32
  %"266" = load i8* @"'id3", align 1
  %"267" = sext i8 %"266" to i32
  %"268" = icmp ne i32 %"265", %"267"
  %..i = select i1 %"268", i32 1, i32 0
  br label %main_init.exit

main_init.exit:                                   ; preds = %main_bb63, %main_bb64, %main_bb65, %main_bb66, %main_bb67, %main_bb68, %main_bb69, %main_bb70, %main_bb71, %main_bb72, %main_bb73, %main_bb74, %main_bb75, %main_bb76, %main_bb77, %main_bb78
  %tmp.15.i = phi i32 [ %..i, %main_bb78 ], [ 0, %main_bb77 ], [ 0, %main_bb76 ], [ 0, %main_bb75 ], [ 0, %main_bb74 ], [ 0, %main_bb73 ], [ 0, %main_bb72 ], [ 0, %main_bb71 ], [ 0, %main_bb70 ], [ 0, %main_bb69 ], [ 0, %main_bb68 ], [ 0, %main_bb67 ], [ 0, %main_bb66 ], [ 0, %main_bb65 ], [ 0, %main_bb64 ], [ 0, %main_bb63 ]
  %"269" = icmp ne i32 %tmp.15.i, 0
  %"270" = zext i1 %"269" to i8
  %"271" = trunc i8 %"270" to i1
  br label %main_bb79

main_bb79:                                        ; preds = %main_bb79, %main_init.exit
  %"272" = xor i1 %"271", true
  br i1 %"272", label %main_bb79, label %main___VERIFIER_assume.exit

main___VERIFIER_assume.exit:                      ; preds = %main_bb79
  %"273" = load i8* @"'nomsg", align 1
  store i8 %"273", i8* @"'p1_old", align 1
  %"274" = load i8* @"'nomsg", align 1
  store i8 %"274", i8* @"'p1_new", align 1
  %"275" = load i8* @"'nomsg", align 1
  store i8 %"275", i8* @"'p2_old", align 1
  %"276" = load i8* @"'nomsg", align 1
  store i8 %"276", i8* @"'p2_new", align 1
  %"277" = load i8* @"'nomsg", align 1
  store i8 %"277", i8* @"'p3_old", align 1
  %"278" = load i8* @"'nomsg", align 1
  store i8 %"278", i8* @"'p3_new", align 1
  %"279" = load i8* @"'nomsg", align 1
  %"280" = load i8* @"'nomsg", align 1
  %"281" = sext i8 %"280" to i32
  %"282" = load i8* @"'id1", align 1
  %"283" = sext i8 %"282" to i32
  %"284" = load i8* @"'id1", align 1
  %"285" = sext i8 %"284" to i32
  %"286" = load i8* @"'nomsg", align 1
  %"287" = load i8* @"'nomsg", align 1
  %"288" = sext i8 %"287" to i32
  %"289" = load i8* @"'id2", align 1
  %"290" = sext i8 %"289" to i32
  %"291" = load i8* @"'id2", align 1
  %"292" = sext i8 %"291" to i32
  %"293" = load i8* @"'nomsg", align 1
  %"294" = load i8* @"'nomsg", align 1
  %"295" = sext i8 %"294" to i32
  %"296" = load i8* @"'id3", align 1
  %"297" = sext i8 %"296" to i32
  %"298" = load i8* @"'id3", align 1
  %"299" = sext i8 %"298" to i32
  %"300" = load i8* @"'nomsg", align 1
  %"301" = load i8* @"'nomsg", align 1
  %"302" = load i8* @"'nomsg", align 1
  %"303" = load i8* @"'nomsg", align 1
  %"304" = sext i8 %"303" to i32
  %"305" = load i8* @"'nomsg", align 1
  %"306" = sext i8 %"305" to i32
  %"307" = load i8* @"'nomsg", align 1
  %"308" = sext i8 %"307" to i32
  %"309" = load i8* @"'nomsg", align 1
  %"310" = sext i8 %"309" to i32
  %"311" = load i8* @"'nomsg", align 1
  %"312" = sext i8 %"311" to i32
  %"313" = load i8* @"'nomsg", align 1
  %"314" = sext i8 %"313" to i32
  br label %main_bb80

main_bb80:                                        ; preds = %main_assert.exit, %main___VERIFIER_assume.exit
  %i2.0 = phi i32 [ 0, %main___VERIFIER_assume.exit ], [ %"416", %main_assert.exit ]
  %"315" = icmp slt i32 %i2.0, 6
  br i1 %"315", label %main_bb81, label %main_bb121

main_bb81:                                        ; preds = %main_bb80
  %"316" = load i8* @"'mode1", align 1
  %"317" = trunc i8 %"316" to i1
  br i1 %"317", label %main_bb82, label %main_bb89

main_bb82:                                        ; preds = %main_bb81
  %"318" = load i8* @"'r1", align 1
  %"319" = sext i8 %"318" to i32
  %"320" = add nsw i32 %"319", 1
  %"321" = trunc i32 %"320" to i8
  store i8 %"321", i8* @"'r1", align 1
  %"322" = load i8* @"'p3_old", align 1
  store i8 %"279", i8* @"'p3_old", align 1
  %"323" = sext i8 %"322" to i32
  %"324" = icmp ne i32 %"323", %"281"
  br i1 %"324", label %main_bb83, label %main_bb88

main_bb83:                                        ; preds = %main_bb82
  %"325" = sext i8 %"322" to i32
  %"326" = icmp sgt i32 %"325", %"283"
  br i1 %"326", label %main_bb84, label %main_bb85

main_bb84:                                        ; preds = %main_bb83
  store i8 %"322", i8* @"'send1", align 1
  br label %main_bb88

main_bb85:                                        ; preds = %main_bb83
  %"327" = sext i8 %"322" to i32
  %"328" = icmp eq i32 %"327", %"285"
  br i1 %"328", label %main_bb86, label %main_bb87

main_bb86:                                        ; preds = %main_bb85
  store i8 1, i8* @"'st1", align 1
  br label %main_bb88

main_bb87:                                        ; preds = %main_bb85
  store i8 %"322", i8* @"'send1", align 1
  br label %main_bb88

main_bb88:                                        ; preds = %main_bb87, %main_bb86, %main_bb84, %main_bb82
  store i8 0, i8* @"'mode1", align 1
  br label %main_node1.exit

main_bb89:                                        ; preds = %main_bb81
  %"329" = load i8* @"'send1", align 1
  %"330" = sext i8 %"329" to i32
  %"331" = icmp ne i32 %"330", %"312"
  br i1 %"331", label %main_bb90, label %main_bb92

main_bb90:                                        ; preds = %main_bb89
  %"332" = load i8* @"'p1_new", align 1
  %"333" = sext i8 %"332" to i32
  %"334" = icmp eq i32 %"333", %"314"
  br i1 %"334", label %main_bb91, label %main_bb92

main_bb91:                                        ; preds = %main_bb90
  %"335" = load i8* @"'send1", align 1
  br label %main_bb93

main_bb92:                                        ; preds = %main_bb90, %main_bb89
  %"336" = load i8* @"'p1_new", align 1
  br label %main_bb93

main_bb93:                                        ; preds = %main_bb92, %main_bb91
  %.sink.i3 = phi i8 [ %"335", %main_bb91 ], [ %"336", %main_bb92 ]
  %"337" = sext i8 %.sink.i3 to i32
  %"338" = trunc i32 %"337" to i8
  store i8 %"338", i8* @"'p1_new", align 1
  store i8 1, i8* @"'mode1", align 1
  br label %main_node1.exit

main_node1.exit:                                  ; preds = %main_bb88, %main_bb93
  %"339" = load i8* @"'mode2", align 1
  %"340" = trunc i8 %"339" to i1
  br i1 %"340", label %main_bb94, label %main_bb100

main_bb94:                                        ; preds = %main_node1.exit
  %"341" = load i8* @"'p1_old", align 1
  store i8 %"286", i8* @"'p1_old", align 1
  %"342" = sext i8 %"341" to i32
  %"343" = icmp ne i32 %"342", %"288"
  br i1 %"343", label %main_bb95, label %main_bb99

main_bb95:                                        ; preds = %main_bb94
  %"344" = sext i8 %"341" to i32
  %"345" = icmp sgt i32 %"344", %"290"
  br i1 %"345", label %main_bb96, label %main_bb97

main_bb96:                                        ; preds = %main_bb95
  store i8 %"341", i8* @"'send2", align 1
  br label %main_bb99

main_bb97:                                        ; preds = %main_bb95
  %"346" = sext i8 %"341" to i32
  %"347" = icmp eq i32 %"346", %"292"
  br i1 %"347", label %main_bb98, label %main_bb99

main_bb98:                                        ; preds = %main_bb97
  store i8 1, i8* @"'st2", align 1
  br label %main_bb99

main_bb99:                                        ; preds = %main_bb98, %main_bb97, %main_bb96, %main_bb94
  store i8 0, i8* @"'mode2", align 1
  br label %main_node2.exit

main_bb100:                                       ; preds = %main_node1.exit
  %"348" = load i8* @"'send2", align 1
  %"349" = sext i8 %"348" to i32
  %"350" = icmp ne i32 %"349", %"308"
  br i1 %"350", label %main_bb101, label %main_bb103

main_bb101:                                       ; preds = %main_bb100
  %"351" = load i8* @"'p2_new", align 1
  %"352" = sext i8 %"351" to i32
  %"353" = icmp eq i32 %"352", %"310"
  br i1 %"353", label %main_bb102, label %main_bb103

main_bb102:                                       ; preds = %main_bb101
  %"354" = load i8* @"'send2", align 1
  br label %main_bb104

main_bb103:                                       ; preds = %main_bb101, %main_bb100
  %"355" = load i8* @"'p2_new", align 1
  br label %main_bb104

main_bb104:                                       ; preds = %main_bb103, %main_bb102
  %.sink.i2 = phi i8 [ %"354", %main_bb102 ], [ %"355", %main_bb103 ]
  %"356" = sext i8 %.sink.i2 to i32
  %"357" = trunc i32 %"356" to i8
  store i8 %"357", i8* @"'p2_new", align 1
  store i8 1, i8* @"'mode2", align 1
  br label %main_node2.exit

main_node2.exit:                                  ; preds = %main_bb99, %main_bb104
  %"358" = load i8* @"'mode3", align 1
  %"359" = trunc i8 %"358" to i1
  br i1 %"359", label %main_bb105, label %main_bb111

main_bb105:                                       ; preds = %main_node2.exit
  %"360" = load i8* @"'p2_old", align 1
  store i8 %"293", i8* @"'p2_old", align 1
  %"361" = sext i8 %"360" to i32
  %"362" = icmp ne i32 %"361", %"295"
  br i1 %"362", label %main_bb106, label %main_bb110

main_bb106:                                       ; preds = %main_bb105
  %"363" = sext i8 %"360" to i32
  %"364" = icmp sgt i32 %"363", %"297"
  br i1 %"364", label %main_bb107, label %main_bb108

main_bb107:                                       ; preds = %main_bb106
  store i8 %"360", i8* @"'send3", align 1
  br label %main_bb110

main_bb108:                                       ; preds = %main_bb106
  %"365" = sext i8 %"360" to i32
  %"366" = icmp eq i32 %"365", %"299"
  br i1 %"366", label %main_bb109, label %main_bb110

main_bb109:                                       ; preds = %main_bb108
  store i8 1, i8* @"'st3", align 1
  br label %main_bb110

main_bb110:                                       ; preds = %main_bb109, %main_bb108, %main_bb107, %main_bb105
  store i8 0, i8* @"'mode3", align 1
  br label %main_node3.exit

main_bb111:                                       ; preds = %main_node2.exit
  %"367" = load i8* @"'send3", align 1
  %"368" = sext i8 %"367" to i32
  %"369" = icmp ne i32 %"368", %"304"
  br i1 %"369", label %main_bb112, label %main_bb114

main_bb112:                                       ; preds = %main_bb111
  %"370" = load i8* @"'p3_new", align 1
  %"371" = sext i8 %"370" to i32
  %"372" = icmp eq i32 %"371", %"306"
  br i1 %"372", label %main_bb113, label %main_bb114

main_bb113:                                       ; preds = %main_bb112
  %"373" = load i8* @"'send3", align 1
  br label %main_bb115

main_bb114:                                       ; preds = %main_bb112, %main_bb111
  %"374" = load i8* @"'p3_new", align 1
  br label %main_bb115

main_bb115:                                       ; preds = %main_bb114, %main_bb113
  %.sink.i = phi i8 [ %"373", %main_bb113 ], [ %"374", %main_bb114 ]
  %"375" = sext i8 %.sink.i to i32
  %"376" = trunc i32 %"375" to i8
  store i8 %"376", i8* @"'p3_new", align 1
  store i8 1, i8* @"'mode3", align 1
  br label %main_node3.exit

main_node3.exit:                                  ; preds = %main_bb110, %main_bb115
  %"377" = load i8* @"'p1_new", align 1
  store i8 %"377", i8* @"'p1_old", align 1
  store i8 %"300", i8* @"'p1_new", align 1
  %"378" = load i8* @"'p2_new", align 1
  store i8 %"378", i8* @"'p2_old", align 1
  store i8 %"301", i8* @"'p2_new", align 1
  %"379" = load i8* @"'p3_new", align 1
  store i8 %"379", i8* @"'p3_old", align 1
  store i8 %"302", i8* @"'p3_new", align 1
  %"380" = load i8* @"'st1", align 1
  %"381" = sext i8 %"380" to i32
  %"382" = load i8* @"'st2", align 1
  %"383" = sext i8 %"382" to i32
  %"384" = add nsw i32 %"381", %"383"
  %"385" = load i8* @"'st3", align 1
  %"386" = sext i8 %"385" to i32
  %"387" = add nsw i32 %"384", %"386"
  %"388" = icmp sle i32 %"387", 1
  br i1 %"388", label %main_bb116, label %main_check.exit

main_bb116:                                       ; preds = %main_node3.exit
  %"389" = load i8* @"'r1", align 1
  %"390" = sext i8 %"389" to i32
  %"391" = icmp sge i32 %"390", 3
  br i1 %"391", label %main_bb118, label %main_bb117

main_bb117:                                       ; preds = %main_bb116
  %"392" = load i8* @"'st1", align 1
  %"393" = sext i8 %"392" to i32
  %"394" = load i8* @"'st2", align 1
  %"395" = sext i8 %"394" to i32
  %"396" = add nsw i32 %"393", %"395"
  %"397" = load i8* @"'st3", align 1
  %"398" = sext i8 %"397" to i32
  %"399" = add nsw i32 %"396", %"398"
  %"400" = icmp eq i32 %"399", 0
  br i1 %"400", label %main_bb118, label %main_check.exit

main_bb118:                                       ; preds = %main_bb117, %main_bb116
  %"401" = load i8* @"'r1", align 1
  %"402" = sext i8 %"401" to i32
  %"403" = icmp slt i32 %"402", 3
  br i1 %"403", label %main_check.exit, label %main_bb119

main_bb119:                                       ; preds = %main_bb118
  %"404" = load i8* @"'st1", align 1
  %"405" = sext i8 %"404" to i32
  %"406" = load i8* @"'st2", align 1
  %"407" = sext i8 %"406" to i32
  %"408" = add nsw i32 %"405", %"407"
  %"409" = load i8* @"'st3", align 1
  %"410" = sext i8 %"409" to i32
  %"411" = add nsw i32 %"408", %"410"
  %"412" = icmp eq i32 %"411", 1
  %..i1 = select i1 %"412", i32 1, i32 0
  br label %main_check.exit

main_check.exit:                                  ; preds = %main_node3.exit, %main_bb117, %main_bb118, %main_bb119
  %tmp.3.i = phi i32 [ %..i1, %main_bb119 ], [ 1, %main_bb118 ], [ 0, %main_bb117 ], [ 0, %main_node3.exit ]
  %"413" = icmp ne i32 %tmp.3.i, 0
  %"414" = zext i1 %"413" to i8
  %"415" = trunc i8 %"414" to i1
  br i1 %"415", label %main_assert.exit, label %main_bb120

main_assert.exit:                                 ; preds = %main_check.exit
  %"416" = add nsw i32 %i2.0, 1
  br label %main_bb80

main_bb120:                                       ; preds = %main_check.exit
  call void (...)* @__VERIFIER_error() #3
  unreachable

main_bb121:                                       ; preds = %main_bb80
  ret i32 0
}

declare signext i8 @__VERIFIER_nondet_char() #1

declare signext i8 @__VERIFIER_nondet_msg_t() #1

declare zeroext i1 @__VERIFIER_nondet__Bool() #1

; Function Attrs: nounwind uwtable
define void @__VERIFIER_assume(i1 zeroext %arg) #0 {
__VERIFIER_assume_bb122:
  %"417" = zext i1 %arg to i8
  %"418" = trunc i8 %"417" to i1
  br label %__VERIFIER_assume_bb123

__VERIFIER_assume_bb123:                          ; preds = %__VERIFIER_assume_bb123, %__VERIFIER_assume_bb122
  %"419" = xor i1 %"418", true
  br i1 %"419", label %__VERIFIER_assume_bb123, label %__VERIFIER_assume_bb124

__VERIFIER_assume_bb124:                          ; preds = %__VERIFIER_assume_bb123
  ret void
}

; Function Attrs: nounwind uwtable
define void @assert(i1 zeroext %arg) #0 {
assert_bb125:
  %"420" = zext i1 %arg to i8
  %"421" = trunc i8 %"420" to i1
  br i1 %"421", label %assert_bb126, label %assert_bb127

assert_bb126:                                     ; preds = %assert_bb125
  ret void

assert_bb127:                                     ; preds = %assert_bb125
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

