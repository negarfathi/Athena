; ModuleID = 'Benchmarks/TermCOMP/C/SV-COMP_Mixed_Categories/pals_STARTPALS_ActiveStandby_false-unreach-call.1.ufo.BOUNDED-10.pals/pals_STARTPALS_ActiveStandby_false-unreach-call.1.ufo.BOUNDED-10.pals.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"'nomsg" = global i8 -1, align 1
@"'side1Failed_History_1" = internal global i8 0, align 1
@"'side1Failed_History_2" = internal global i8 0, align 1
@"'side1Failed_History_0" = internal global i8 0, align 1
@"'side2Failed_History_1" = internal global i8 0, align 1
@"'side2Failed_History_2" = internal global i8 0, align 1
@"'side2Failed_History_0" = internal global i8 0, align 1
@"'active_side_History_1" = internal global i8 0, align 1
@"'active_side_History_2" = internal global i8 0, align 1
@"'active_side_History_0" = internal global i8 0, align 1
@"'manual_selection_History_1" = internal global i8 0, align 1
@"'manual_selection_History_2" = internal global i8 0, align 1
@"'manual_selection_History_0" = internal global i8 0, align 1
@"'cs1_new" = common global i8 0, align 1
@"'cs2_new" = common global i8 0, align 1
@"'side1Failed" = common global i8 0, align 1
@"'s1s1_new" = common global i8 0, align 1
@"'s1s2_new" = common global i8 0, align 1
@"'s1p_new" = common global i8 0, align 1
@"'side1_written" = common global i8 0, align 1
@"'s1s1_old" = common global i8 0, align 1
@"'s2s1_old" = common global i8 0, align 1
@"'cs1_old" = common global i8 0, align 1
@"'side2Failed" = common global i8 0, align 1
@"'s2s1_new" = common global i8 0, align 1
@"'s2s2_new" = common global i8 0, align 1
@"'s2p_new" = common global i8 0, align 1
@"'side2_written" = common global i8 0, align 1
@"'s1s2_old" = common global i8 0, align 1
@"'s2s2_old" = common global i8 0, align 1
@"'cs2_old" = common global i8 0, align 1
@"'s1p_old" = common global i8 0, align 1
@"'s2p_old" = common global i8 0, align 1
@nodes = global [4 x void ()*] [void ()* @Console_task_each_pals_period, void ()* @Side1_activestandby_task_each_pals_period, void ()* @Side2_activestandby_task_each_pals_period, void ()* @Pendulum_prism_task_each_pals_period], align 16
@"'cs1" = common global i32 0, align 4
@"'cs2" = common global i32 0, align 4
@"'s1s2" = common global i32 0, align 4
@"'s1s1" = common global i32 0, align 4
@"'s2s1" = common global i32 0, align 4
@"'s2s2" = common global i32 0, align 4
@"'s1p" = common global i32 0, align 4
@"'s2p" = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define void @write_side1_failed_history(i1 zeroext %val) #0 {
write_side1_failed_history_bb0:
  %"0" = zext i1 %val to i8
  %"1" = load i8* @"'side1Failed_History_1", align 1
  %"2" = trunc i8 %"1" to i1
  %"3" = zext i1 %"2" to i8
  store i8 %"3", i8* @"'side1Failed_History_2", align 1
  %"4" = load i8* @"'side1Failed_History_0", align 1
  %"5" = trunc i8 %"4" to i1
  %"6" = zext i1 %"5" to i8
  store i8 %"6", i8* @"'side1Failed_History_1", align 1
  %"7" = trunc i8 %"0" to i1
  %"8" = zext i1 %"7" to i8
  store i8 %"8", i8* @"'side1Failed_History_0", align 1
  ret void
}

; Function Attrs: nounwind uwtable
define zeroext i1 @read_side1_failed_history(i8 zeroext %index) #0 {
read_side1_failed_history_bb1:
  %"9" = zext i8 %index to i32
  %"10" = icmp eq i32 %"9", 0
  br i1 %"10", label %read_side1_failed_history_bb2, label %read_side1_failed_history_bb3

read_side1_failed_history_bb2:                    ; preds = %read_side1_failed_history_bb1
  %"11" = load i8* @"'side1Failed_History_0", align 1
  %"12" = trunc i8 %"11" to i1
  br label %read_side1_failed_history_bb7

read_side1_failed_history_bb3:                    ; preds = %read_side1_failed_history_bb1
  %"13" = zext i8 %index to i32
  %"14" = icmp eq i32 %"13", 1
  br i1 %"14", label %read_side1_failed_history_bb4, label %read_side1_failed_history_bb5

read_side1_failed_history_bb4:                    ; preds = %read_side1_failed_history_bb3
  %"15" = load i8* @"'side1Failed_History_1", align 1
  %"16" = trunc i8 %"15" to i1
  br label %read_side1_failed_history_bb7

read_side1_failed_history_bb5:                    ; preds = %read_side1_failed_history_bb3
  %"17" = zext i8 %index to i32
  %"18" = icmp eq i32 %"17", 2
  br i1 %"18", label %read_side1_failed_history_bb6, label %read_side1_failed_history_bb8

read_side1_failed_history_bb6:                    ; preds = %read_side1_failed_history_bb5
  %"19" = load i8* @"'side1Failed_History_2", align 1
  %"20" = trunc i8 %"19" to i1
  br label %read_side1_failed_history_bb7

read_side1_failed_history_bb7:                    ; preds = %read_side1_failed_history_bb6, %read_side1_failed_history_bb4, %read_side1_failed_history_bb2
  %.0 = phi i1 [ %"12", %read_side1_failed_history_bb2 ], [ %"16", %read_side1_failed_history_bb4 ], [ %"20", %read_side1_failed_history_bb6 ]
  ret i1 %.0

read_side1_failed_history_bb8:                    ; preds = %read_side1_failed_history_bb5
  call void (...)* @__VERIFIER_error() #3
  unreachable
}

; Function Attrs: nounwind uwtable
define void @assert(i1 zeroext %arg) #0 {
assert_bb9:
  %"21" = zext i1 %arg to i8
  %"22" = trunc i8 %"21" to i1
  br i1 %"22", label %assert_bb10, label %assert_bb11

assert_bb10:                                      ; preds = %assert_bb9
  ret void

assert_bb11:                                      ; preds = %assert_bb9
  call void (...)* @__VERIFIER_error() #4
  unreachable
}

; Function Attrs: nounwind uwtable
define void @write_side2_failed_history(i1 zeroext %val) #0 {
write_side2_failed_history_bb12:
  %"23" = zext i1 %val to i8
  %"24" = load i8* @"'side2Failed_History_1", align 1
  %"25" = trunc i8 %"24" to i1
  %"26" = zext i1 %"25" to i8
  store i8 %"26", i8* @"'side2Failed_History_2", align 1
  %"27" = load i8* @"'side2Failed_History_0", align 1
  %"28" = trunc i8 %"27" to i1
  %"29" = zext i1 %"28" to i8
  store i8 %"29", i8* @"'side2Failed_History_1", align 1
  %"30" = trunc i8 %"23" to i1
  %"31" = zext i1 %"30" to i8
  store i8 %"31", i8* @"'side2Failed_History_0", align 1
  ret void
}

; Function Attrs: nounwind uwtable
define zeroext i1 @read_side2_failed_history(i8 zeroext %index) #0 {
read_side2_failed_history_bb13:
  %"32" = zext i8 %index to i32
  %"33" = icmp eq i32 %"32", 0
  br i1 %"33", label %read_side2_failed_history_bb14, label %read_side2_failed_history_bb15

read_side2_failed_history_bb14:                   ; preds = %read_side2_failed_history_bb13
  %"34" = load i8* @"'side2Failed_History_0", align 1
  %"35" = trunc i8 %"34" to i1
  br label %read_side2_failed_history_bb19

read_side2_failed_history_bb15:                   ; preds = %read_side2_failed_history_bb13
  %"36" = zext i8 %index to i32
  %"37" = icmp eq i32 %"36", 1
  br i1 %"37", label %read_side2_failed_history_bb16, label %read_side2_failed_history_bb17

read_side2_failed_history_bb16:                   ; preds = %read_side2_failed_history_bb15
  %"38" = load i8* @"'side2Failed_History_1", align 1
  %"39" = trunc i8 %"38" to i1
  br label %read_side2_failed_history_bb19

read_side2_failed_history_bb17:                   ; preds = %read_side2_failed_history_bb15
  %"40" = zext i8 %index to i32
  %"41" = icmp eq i32 %"40", 2
  br i1 %"41", label %read_side2_failed_history_bb18, label %read_side2_failed_history_bb20

read_side2_failed_history_bb18:                   ; preds = %read_side2_failed_history_bb17
  %"42" = load i8* @"'side2Failed_History_2", align 1
  %"43" = trunc i8 %"42" to i1
  br label %read_side2_failed_history_bb19

read_side2_failed_history_bb19:                   ; preds = %read_side2_failed_history_bb18, %read_side2_failed_history_bb16, %read_side2_failed_history_bb14
  %.0 = phi i1 [ %"35", %read_side2_failed_history_bb14 ], [ %"39", %read_side2_failed_history_bb16 ], [ %"43", %read_side2_failed_history_bb18 ]
  ret i1 %.0

read_side2_failed_history_bb20:                   ; preds = %read_side2_failed_history_bb17
  call void (...)* @__VERIFIER_error() #3
  unreachable
}

; Function Attrs: nounwind uwtable
define void @write_active_side_history(i8 signext %val) #0 {
write_active_side_history_bb21:
  %"44" = load i8* @"'active_side_History_1", align 1
  store i8 %"44", i8* @"'active_side_History_2", align 1
  %"45" = load i8* @"'active_side_History_0", align 1
  store i8 %"45", i8* @"'active_side_History_1", align 1
  store i8 %val, i8* @"'active_side_History_0", align 1
  ret void
}

; Function Attrs: nounwind uwtable
define signext i8 @read_active_side_history(i8 zeroext %index) #0 {
read_active_side_history_bb22:
  %"46" = zext i8 %index to i32
  %"47" = icmp eq i32 %"46", 0
  br i1 %"47", label %read_active_side_history_bb23, label %read_active_side_history_bb24

read_active_side_history_bb23:                    ; preds = %read_active_side_history_bb22
  %"48" = load i8* @"'active_side_History_0", align 1
  br label %read_active_side_history_bb28

read_active_side_history_bb24:                    ; preds = %read_active_side_history_bb22
  %"49" = zext i8 %index to i32
  %"50" = icmp eq i32 %"49", 1
  br i1 %"50", label %read_active_side_history_bb25, label %read_active_side_history_bb26

read_active_side_history_bb25:                    ; preds = %read_active_side_history_bb24
  %"51" = load i8* @"'active_side_History_1", align 1
  br label %read_active_side_history_bb28

read_active_side_history_bb26:                    ; preds = %read_active_side_history_bb24
  %"52" = zext i8 %index to i32
  %"53" = icmp eq i32 %"52", 2
  br i1 %"53", label %read_active_side_history_bb27, label %read_active_side_history_bb29

read_active_side_history_bb27:                    ; preds = %read_active_side_history_bb26
  %"54" = load i8* @"'active_side_History_2", align 1
  br label %read_active_side_history_bb28

read_active_side_history_bb28:                    ; preds = %read_active_side_history_bb27, %read_active_side_history_bb25, %read_active_side_history_bb23
  %.0 = phi i8 [ %"48", %read_active_side_history_bb23 ], [ %"51", %read_active_side_history_bb25 ], [ %"54", %read_active_side_history_bb27 ]
  ret i8 %.0

read_active_side_history_bb29:                    ; preds = %read_active_side_history_bb26
  call void (...)* @__VERIFIER_error() #3
  unreachable
}

; Function Attrs: nounwind uwtable
define void @write_manual_selection_history(i8 signext %val) #0 {
write_manual_selection_history_bb30:
  %"55" = load i8* @"'manual_selection_History_1", align 1
  store i8 %"55", i8* @"'manual_selection_History_2", align 1
  %"56" = load i8* @"'manual_selection_History_0", align 1
  store i8 %"56", i8* @"'manual_selection_History_1", align 1
  store i8 %val, i8* @"'manual_selection_History_0", align 1
  ret void
}

; Function Attrs: nounwind uwtable
define signext i8 @read_manual_selection_history(i8 zeroext %index) #0 {
read_manual_selection_history_bb31:
  %"57" = zext i8 %index to i32
  %"58" = icmp eq i32 %"57", 0
  br i1 %"58", label %read_manual_selection_history_bb32, label %read_manual_selection_history_bb33

read_manual_selection_history_bb32:               ; preds = %read_manual_selection_history_bb31
  %"59" = load i8* @"'manual_selection_History_0", align 1
  br label %read_manual_selection_history_bb37

read_manual_selection_history_bb33:               ; preds = %read_manual_selection_history_bb31
  %"60" = zext i8 %index to i32
  %"61" = icmp eq i32 %"60", 1
  br i1 %"61", label %read_manual_selection_history_bb34, label %read_manual_selection_history_bb35

read_manual_selection_history_bb34:               ; preds = %read_manual_selection_history_bb33
  %"62" = load i8* @"'manual_selection_History_1", align 1
  br label %read_manual_selection_history_bb37

read_manual_selection_history_bb35:               ; preds = %read_manual_selection_history_bb33
  %"63" = zext i8 %index to i32
  %"64" = icmp eq i32 %"63", 2
  br i1 %"64", label %read_manual_selection_history_bb36, label %read_manual_selection_history_bb38

read_manual_selection_history_bb36:               ; preds = %read_manual_selection_history_bb35
  %"65" = load i8* @"'manual_selection_History_2", align 1
  br label %read_manual_selection_history_bb37

read_manual_selection_history_bb37:               ; preds = %read_manual_selection_history_bb36, %read_manual_selection_history_bb34, %read_manual_selection_history_bb32
  %.0 = phi i8 [ %"59", %read_manual_selection_history_bb32 ], [ %"62", %read_manual_selection_history_bb34 ], [ %"65", %read_manual_selection_history_bb36 ]
  ret i8 %.0

read_manual_selection_history_bb38:               ; preds = %read_manual_selection_history_bb35
  call void (...)* @__VERIFIER_error() #3
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @init() #0 {
init_bb39:
  %"66" = load i8* @"'side1Failed_History_0", align 1
  %"67" = trunc i8 %"66" to i1
  %"68" = zext i1 %"67" to i32
  %"69" = icmp ne i32 %"68", 0
  br i1 %"69", label %init_bb51, label %init_bb40

init_bb40:                                        ; preds = %init_bb39
  %"70" = load i8* @"'side2Failed_History_0", align 1
  %"71" = trunc i8 %"70" to i1
  %"72" = zext i1 %"71" to i32
  %"73" = icmp ne i32 %"72", 0
  br i1 %"73", label %init_bb51, label %init_bb41

init_bb41:                                        ; preds = %init_bb40
  %"74" = load i8* @"'active_side_History_0", align 1
  %"75" = sext i8 %"74" to i32
  %"76" = icmp ne i32 %"75", -2
  br i1 %"76", label %init_bb51, label %init_bb42

init_bb42:                                        ; preds = %init_bb41
  %"77" = load i8* @"'manual_selection_History_0", align 1
  %"78" = sext i8 %"77" to i32
  %"79" = icmp ne i32 %"78", 0
  br i1 %"79", label %init_bb51, label %init_bb43

init_bb43:                                        ; preds = %init_bb42
  %"80" = load i8* @"'side1Failed_History_1", align 1
  %"81" = trunc i8 %"80" to i1
  %"82" = zext i1 %"81" to i32
  %"83" = icmp ne i32 %"82", 0
  br i1 %"83", label %init_bb51, label %init_bb44

init_bb44:                                        ; preds = %init_bb43
  %"84" = load i8* @"'side2Failed_History_1", align 1
  %"85" = trunc i8 %"84" to i1
  %"86" = zext i1 %"85" to i32
  %"87" = icmp ne i32 %"86", 0
  br i1 %"87", label %init_bb51, label %init_bb45

init_bb45:                                        ; preds = %init_bb44
  %"88" = load i8* @"'active_side_History_1", align 1
  %"89" = sext i8 %"88" to i32
  %"90" = icmp ne i32 %"89", -2
  br i1 %"90", label %init_bb51, label %init_bb46

init_bb46:                                        ; preds = %init_bb45
  %"91" = load i8* @"'manual_selection_History_1", align 1
  %"92" = sext i8 %"91" to i32
  %"93" = icmp ne i32 %"92", 0
  br i1 %"93", label %init_bb51, label %init_bb47

init_bb47:                                        ; preds = %init_bb46
  %"94" = load i8* @"'side1Failed_History_2", align 1
  %"95" = trunc i8 %"94" to i1
  %"96" = zext i1 %"95" to i32
  %"97" = icmp ne i32 %"96", 0
  br i1 %"97", label %init_bb51, label %init_bb48

init_bb48:                                        ; preds = %init_bb47
  %"98" = load i8* @"'side2Failed_History_2", align 1
  %"99" = trunc i8 %"98" to i1
  %"100" = zext i1 %"99" to i32
  %"101" = icmp ne i32 %"100", 0
  br i1 %"101", label %init_bb51, label %init_bb49

init_bb49:                                        ; preds = %init_bb48
  %"102" = load i8* @"'active_side_History_2", align 1
  %"103" = sext i8 %"102" to i32
  %"104" = icmp ne i32 %"103", -2
  br i1 %"104", label %init_bb51, label %init_bb50

init_bb50:                                        ; preds = %init_bb49
  %"105" = load i8* @"'manual_selection_History_2", align 1
  %"106" = sext i8 %"105" to i32
  %"107" = icmp ne i32 %"106", 0
  %. = select i1 %"107", i32 0, i32 1
  br label %init_bb51

init_bb51:                                        ; preds = %init_bb50, %init_bb49, %init_bb48, %init_bb47, %init_bb46, %init_bb45, %init_bb44, %init_bb43, %init_bb42, %init_bb41, %init_bb40, %init_bb39
  %.0 = phi i32 [ 0, %init_bb39 ], [ 0, %init_bb40 ], [ 0, %init_bb41 ], [ 0, %init_bb42 ], [ 0, %init_bb43 ], [ 0, %init_bb44 ], [ 0, %init_bb45 ], [ 0, %init_bb46 ], [ 0, %init_bb47 ], [ 0, %init_bb48 ], [ 0, %init_bb49 ], [ %., %init_bb50 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define signext i8 @flip_the_side(i8 signext %side) #0 {
flip_the_side_bb52:
  %"108" = sext i8 %side to i32
  %"109" = icmp eq i32 %"108", 1
  %. = select i1 %"109", i32 0, i32 1
  %"110" = trunc i32 %. to i8
  ret i8 %"110"
}

; Function Attrs: nounwind uwtable
define void @Console_task_each_pals_period() #0 {
Console_task_each_pals_period_bb53:
  %"111" = call signext i8 (...)* @__VERIFIER_nondet_char()
  %"112" = load i8* @"'manual_selection_History_1", align 1
  store i8 %"112", i8* @"'manual_selection_History_2", align 1
  %"113" = load i8* @"'manual_selection_History_0", align 1
  store i8 %"113", i8* @"'manual_selection_History_1", align 1
  store i8 %"111", i8* @"'manual_selection_History_0", align 1
  %"114" = sext i8 %"111" to i32
  %"115" = load i8* @"'nomsg", align 1
  %"116" = sext i8 %"115" to i32
  %"117" = icmp ne i32 %"114", %"116"
  br i1 %"117", label %Console_task_each_pals_period_bb54, label %Console_task_each_pals_period_bb55

Console_task_each_pals_period_bb54:               ; preds = %Console_task_each_pals_period_bb53
  %"118" = load i8* @"'cs1_new", align 1
  %"119" = sext i8 %"118" to i32
  %"120" = load i8* @"'nomsg", align 1
  %"121" = sext i8 %"120" to i32
  %"122" = icmp eq i32 %"119", %"121"
  br i1 %"122", label %Console_task_each_pals_period_bb56, label %Console_task_each_pals_period_bb55

Console_task_each_pals_period_bb55:               ; preds = %Console_task_each_pals_period_bb54, %Console_task_each_pals_period_bb53
  %"123" = load i8* @"'cs1_new", align 1
  br label %Console_task_each_pals_period_bb56

Console_task_each_pals_period_bb56:               ; preds = %Console_task_each_pals_period_bb54, %Console_task_each_pals_period_bb55
  %.sink = phi i8 [ %"123", %Console_task_each_pals_period_bb55 ], [ %"111", %Console_task_each_pals_period_bb54 ]
  %"124" = sext i8 %.sink to i32
  %"125" = trunc i32 %"124" to i8
  store i8 %"125", i8* @"'cs1_new", align 1
  %"126" = sext i8 %"111" to i32
  %"127" = load i8* @"'nomsg", align 1
  %"128" = sext i8 %"127" to i32
  %"129" = icmp ne i32 %"126", %"128"
  br i1 %"129", label %Console_task_each_pals_period_bb57, label %Console_task_each_pals_period_bb58

Console_task_each_pals_period_bb57:               ; preds = %Console_task_each_pals_period_bb56
  %"130" = load i8* @"'cs2_new", align 1
  %"131" = sext i8 %"130" to i32
  %"132" = load i8* @"'nomsg", align 1
  %"133" = sext i8 %"132" to i32
  %"134" = icmp eq i32 %"131", %"133"
  br i1 %"134", label %Console_task_each_pals_period_bb59, label %Console_task_each_pals_period_bb58

Console_task_each_pals_period_bb58:               ; preds = %Console_task_each_pals_period_bb57, %Console_task_each_pals_period_bb56
  %"135" = load i8* @"'cs2_new", align 1
  br label %Console_task_each_pals_period_bb59

Console_task_each_pals_period_bb59:               ; preds = %Console_task_each_pals_period_bb57, %Console_task_each_pals_period_bb58
  %.sink1 = phi i8 [ %"135", %Console_task_each_pals_period_bb58 ], [ %"111", %Console_task_each_pals_period_bb57 ]
  %"136" = sext i8 %.sink1 to i32
  %"137" = trunc i32 %"136" to i8
  store i8 %"137", i8* @"'cs2_new", align 1
  ret void
}

declare signext i8 @__VERIFIER_nondet_char(...) #1

; Function Attrs: nounwind uwtable
define void @Side1_activestandby_task_each_pals_period() #0 {
Side1_activestandby_task_each_pals_period_bb60:
  %"138" = call zeroext i1 (...)* @__VERIFIER_nondet_bool()
  %"139" = zext i1 %"138" to i8
  store i8 %"139", i8* @"'side1Failed", align 1
  %"140" = load i8* @"'side1Failed", align 1
  %"141" = trunc i8 %"140" to i1
  %"142" = zext i1 %"141" to i8
  %"143" = load i8* @"'side1Failed_History_1", align 1
  %"144" = trunc i8 %"143" to i1
  %"145" = zext i1 %"144" to i8
  store i8 %"145", i8* @"'side1Failed_History_2", align 1
  %"146" = load i8* @"'side1Failed_History_0", align 1
  %"147" = trunc i8 %"146" to i1
  %"148" = zext i1 %"147" to i8
  store i8 %"148", i8* @"'side1Failed_History_1", align 1
  %"149" = trunc i8 %"142" to i1
  %"150" = zext i1 %"149" to i8
  store i8 %"150", i8* @"'side1Failed_History_0", align 1
  %"151" = load i8* @"'side1Failed", align 1
  %"152" = trunc i8 %"151" to i1
  br i1 %"152", label %Side1_activestandby_task_each_pals_period_bb61, label %Side1_activestandby_task_each_pals_period_bb74

Side1_activestandby_task_each_pals_period_bb61:   ; preds = %Side1_activestandby_task_each_pals_period_bb60
  %"153" = load i8* @"'nomsg", align 1
  %"154" = sext i8 %"153" to i32
  %"155" = load i8* @"'nomsg", align 1
  %"156" = sext i8 %"155" to i32
  %"157" = icmp ne i32 %"154", %"156"
  br i1 %"157", label %Side1_activestandby_task_each_pals_period_bb62, label %Side1_activestandby_task_each_pals_period_bb64

Side1_activestandby_task_each_pals_period_bb62:   ; preds = %Side1_activestandby_task_each_pals_period_bb61
  %"158" = load i8* @"'s1s1_new", align 1
  %"159" = sext i8 %"158" to i32
  %"160" = load i8* @"'nomsg", align 1
  %"161" = sext i8 %"160" to i32
  %"162" = icmp eq i32 %"159", %"161"
  br i1 %"162", label %Side1_activestandby_task_each_pals_period_bb63, label %Side1_activestandby_task_each_pals_period_bb64

Side1_activestandby_task_each_pals_period_bb63:   ; preds = %Side1_activestandby_task_each_pals_period_bb62
  %"163" = load i8* @"'nomsg", align 1
  br label %Side1_activestandby_task_each_pals_period_bb65

Side1_activestandby_task_each_pals_period_bb64:   ; preds = %Side1_activestandby_task_each_pals_period_bb62, %Side1_activestandby_task_each_pals_period_bb61
  %"164" = load i8* @"'s1s1_new", align 1
  br label %Side1_activestandby_task_each_pals_period_bb65

Side1_activestandby_task_each_pals_period_bb65:   ; preds = %Side1_activestandby_task_each_pals_period_bb64, %Side1_activestandby_task_each_pals_period_bb63
  %.sink = phi i8 [ %"163", %Side1_activestandby_task_each_pals_period_bb63 ], [ %"164", %Side1_activestandby_task_each_pals_period_bb64 ]
  %"165" = sext i8 %.sink to i32
  %"166" = trunc i32 %"165" to i8
  store i8 %"166", i8* @"'s1s1_new", align 1
  %"167" = load i8* @"'nomsg", align 1
  %"168" = sext i8 %"167" to i32
  %"169" = load i8* @"'nomsg", align 1
  %"170" = sext i8 %"169" to i32
  %"171" = icmp ne i32 %"168", %"170"
  br i1 %"171", label %Side1_activestandby_task_each_pals_period_bb66, label %Side1_activestandby_task_each_pals_period_bb68

Side1_activestandby_task_each_pals_period_bb66:   ; preds = %Side1_activestandby_task_each_pals_period_bb65
  %"172" = load i8* @"'s1s2_new", align 1
  %"173" = sext i8 %"172" to i32
  %"174" = load i8* @"'nomsg", align 1
  %"175" = sext i8 %"174" to i32
  %"176" = icmp eq i32 %"173", %"175"
  br i1 %"176", label %Side1_activestandby_task_each_pals_period_bb67, label %Side1_activestandby_task_each_pals_period_bb68

Side1_activestandby_task_each_pals_period_bb67:   ; preds = %Side1_activestandby_task_each_pals_period_bb66
  %"177" = load i8* @"'nomsg", align 1
  br label %Side1_activestandby_task_each_pals_period_bb69

Side1_activestandby_task_each_pals_period_bb68:   ; preds = %Side1_activestandby_task_each_pals_period_bb66, %Side1_activestandby_task_each_pals_period_bb65
  %"178" = load i8* @"'s1s2_new", align 1
  br label %Side1_activestandby_task_each_pals_period_bb69

Side1_activestandby_task_each_pals_period_bb69:   ; preds = %Side1_activestandby_task_each_pals_period_bb68, %Side1_activestandby_task_each_pals_period_bb67
  %.sink1 = phi i8 [ %"177", %Side1_activestandby_task_each_pals_period_bb67 ], [ %"178", %Side1_activestandby_task_each_pals_period_bb68 ]
  %"179" = sext i8 %.sink1 to i32
  %"180" = trunc i32 %"179" to i8
  store i8 %"180", i8* @"'s1s2_new", align 1
  %"181" = load i8* @"'nomsg", align 1
  %"182" = sext i8 %"181" to i32
  %"183" = load i8* @"'nomsg", align 1
  %"184" = sext i8 %"183" to i32
  %"185" = icmp ne i32 %"182", %"184"
  br i1 %"185", label %Side1_activestandby_task_each_pals_period_bb70, label %Side1_activestandby_task_each_pals_period_bb72

Side1_activestandby_task_each_pals_period_bb70:   ; preds = %Side1_activestandby_task_each_pals_period_bb69
  %"186" = load i8* @"'s1p_new", align 1
  %"187" = sext i8 %"186" to i32
  %"188" = load i8* @"'nomsg", align 1
  %"189" = sext i8 %"188" to i32
  %"190" = icmp eq i32 %"187", %"189"
  br i1 %"190", label %Side1_activestandby_task_each_pals_period_bb71, label %Side1_activestandby_task_each_pals_period_bb72

Side1_activestandby_task_each_pals_period_bb71:   ; preds = %Side1_activestandby_task_each_pals_period_bb70
  %"191" = load i8* @"'nomsg", align 1
  br label %Side1_activestandby_task_each_pals_period_bb73

Side1_activestandby_task_each_pals_period_bb72:   ; preds = %Side1_activestandby_task_each_pals_period_bb70, %Side1_activestandby_task_each_pals_period_bb69
  %"192" = load i8* @"'s1p_new", align 1
  br label %Side1_activestandby_task_each_pals_period_bb73

Side1_activestandby_task_each_pals_period_bb73:   ; preds = %Side1_activestandby_task_each_pals_period_bb72, %Side1_activestandby_task_each_pals_period_bb71
  %.sink2 = phi i8 [ %"191", %Side1_activestandby_task_each_pals_period_bb71 ], [ %"192", %Side1_activestandby_task_each_pals_period_bb72 ]
  %"193" = sext i8 %.sink2 to i32
  %"194" = trunc i32 %"193" to i8
  store i8 %"194", i8* @"'s1p_new", align 1
  %"195" = load i8* @"'nomsg", align 1
  store i8 %"195", i8* @"'side1_written", align 1
  br label %Side1_activestandby_task_each_pals_period_bb91

Side1_activestandby_task_each_pals_period_bb74:   ; preds = %Side1_activestandby_task_each_pals_period_bb60
  %"196" = load i8* @"'s1s1_old", align 1
  %"197" = load i8* @"'nomsg", align 1
  store i8 %"197", i8* @"'s1s1_old", align 1
  %"198" = load i8* @"'s2s1_old", align 1
  %"199" = load i8* @"'nomsg", align 1
  store i8 %"199", i8* @"'s2s1_old", align 1
  %"200" = load i8* @"'cs1_old", align 1
  %"201" = load i8* @"'nomsg", align 1
  store i8 %"201", i8* @"'cs1_old", align 1
  %"202" = sext i8 %"196" to i32
  %"203" = sext i8 %"198" to i32
  %"204" = icmp eq i32 %"202", %"203"
  br i1 %"204", label %Side1_activestandby_task_each_pals_period_bb81, label %Side1_activestandby_task_each_pals_period_bb75

Side1_activestandby_task_each_pals_period_bb75:   ; preds = %Side1_activestandby_task_each_pals_period_bb74
  %"205" = sext i8 %"196" to i32
  %"206" = load i8* @"'nomsg", align 1
  %"207" = sext i8 %"206" to i32
  %"208" = icmp eq i32 %"205", %"207"
  br i1 %"208", label %Side1_activestandby_task_each_pals_period_bb76, label %Side1_activestandby_task_each_pals_period_bb77

Side1_activestandby_task_each_pals_period_bb76:   ; preds = %Side1_activestandby_task_each_pals_period_bb75
  %"209" = sext i8 %"198" to i32
  %"210" = load i8* @"'nomsg", align 1
  %"211" = sext i8 %"210" to i32
  %"212" = icmp ne i32 %"209", %"211"
  br i1 %"212", label %Side1_activestandby_task_each_pals_period_bb81, label %Side1_activestandby_task_each_pals_period_bb77

Side1_activestandby_task_each_pals_period_bb77:   ; preds = %Side1_activestandby_task_each_pals_period_bb75, %Side1_activestandby_task_each_pals_period_bb76
  %"213" = sext i8 %"196" to i32
  %"214" = load i8* @"'nomsg", align 1
  %"215" = sext i8 %"214" to i32
  %"216" = icmp ne i32 %"213", %"215"
  br i1 %"216", label %Side1_activestandby_task_each_pals_period_bb78, label %Side1_activestandby_task_each_pals_period_bb79

Side1_activestandby_task_each_pals_period_bb78:   ; preds = %Side1_activestandby_task_each_pals_period_bb77
  %"217" = sext i8 %"198" to i32
  %"218" = load i8* @"'nomsg", align 1
  %"219" = sext i8 %"218" to i32
  %"220" = icmp eq i32 %"217", %"219"
  br i1 %"220", label %Side1_activestandby_task_each_pals_period_bb81, label %Side1_activestandby_task_each_pals_period_bb79

Side1_activestandby_task_each_pals_period_bb79:   ; preds = %Side1_activestandby_task_each_pals_period_bb77, %Side1_activestandby_task_each_pals_period_bb78
  %"221" = sext i8 %"200" to i32
  %"222" = icmp eq i32 %"221", 1
  br i1 %"222", label %Side1_activestandby_task_each_pals_period_bb80, label %Side1_activestandby_task_each_pals_period_bb81

Side1_activestandby_task_each_pals_period_bb80:   ; preds = %Side1_activestandby_task_each_pals_period_bb79
  %"223" = sext i8 %"196" to i32
  %"224" = icmp eq i32 %"223", 1
  %..i = select i1 %"224", i32 0, i32 1
  %"225" = trunc i32 %..i to i8
  br label %Side1_activestandby_task_each_pals_period_bb81

Side1_activestandby_task_each_pals_period_bb81:   ; preds = %Side1_activestandby_task_each_pals_period_bb76, %Side1_activestandby_task_each_pals_period_bb80, %Side1_activestandby_task_each_pals_period_bb79, %Side1_activestandby_task_each_pals_period_bb78, %Side1_activestandby_task_each_pals_period_bb74
  %next_state.3 = phi i8 [ 1, %Side1_activestandby_task_each_pals_period_bb74 ], [ 0, %Side1_activestandby_task_each_pals_period_bb76 ], [ 1, %Side1_activestandby_task_each_pals_period_bb78 ], [ %"225", %Side1_activestandby_task_each_pals_period_bb80 ], [ %"196", %Side1_activestandby_task_each_pals_period_bb79 ]
  %"226" = sext i8 %next_state.3 to i32
  %"227" = load i8* @"'nomsg", align 1
  %"228" = sext i8 %"227" to i32
  %"229" = icmp ne i32 %"226", %"228"
  br i1 %"229", label %Side1_activestandby_task_each_pals_period_bb82, label %Side1_activestandby_task_each_pals_period_bb83

Side1_activestandby_task_each_pals_period_bb82:   ; preds = %Side1_activestandby_task_each_pals_period_bb81
  %"230" = load i8* @"'s1s1_new", align 1
  %"231" = sext i8 %"230" to i32
  %"232" = load i8* @"'nomsg", align 1
  %"233" = sext i8 %"232" to i32
  %"234" = icmp eq i32 %"231", %"233"
  br i1 %"234", label %Side1_activestandby_task_each_pals_period_bb84, label %Side1_activestandby_task_each_pals_period_bb83

Side1_activestandby_task_each_pals_period_bb83:   ; preds = %Side1_activestandby_task_each_pals_period_bb82, %Side1_activestandby_task_each_pals_period_bb81
  %"235" = load i8* @"'s1s1_new", align 1
  br label %Side1_activestandby_task_each_pals_period_bb84

Side1_activestandby_task_each_pals_period_bb84:   ; preds = %Side1_activestandby_task_each_pals_period_bb82, %Side1_activestandby_task_each_pals_period_bb83
  %next_state.3.sink = phi i8 [ %"235", %Side1_activestandby_task_each_pals_period_bb83 ], [ %next_state.3, %Side1_activestandby_task_each_pals_period_bb82 ]
  %"236" = sext i8 %next_state.3.sink to i32
  %"237" = trunc i32 %"236" to i8
  store i8 %"237", i8* @"'s1s1_new", align 1
  %"238" = sext i8 %next_state.3 to i32
  %"239" = load i8* @"'nomsg", align 1
  %"240" = sext i8 %"239" to i32
  %"241" = icmp ne i32 %"238", %"240"
  br i1 %"241", label %Side1_activestandby_task_each_pals_period_bb85, label %Side1_activestandby_task_each_pals_period_bb86

Side1_activestandby_task_each_pals_period_bb85:   ; preds = %Side1_activestandby_task_each_pals_period_bb84
  %"242" = load i8* @"'s1s2_new", align 1
  %"243" = sext i8 %"242" to i32
  %"244" = load i8* @"'nomsg", align 1
  %"245" = sext i8 %"244" to i32
  %"246" = icmp eq i32 %"243", %"245"
  br i1 %"246", label %Side1_activestandby_task_each_pals_period_bb87, label %Side1_activestandby_task_each_pals_period_bb86

Side1_activestandby_task_each_pals_period_bb86:   ; preds = %Side1_activestandby_task_each_pals_period_bb85, %Side1_activestandby_task_each_pals_period_bb84
  %"247" = load i8* @"'s1s2_new", align 1
  br label %Side1_activestandby_task_each_pals_period_bb87

Side1_activestandby_task_each_pals_period_bb87:   ; preds = %Side1_activestandby_task_each_pals_period_bb85, %Side1_activestandby_task_each_pals_period_bb86
  %next_state.3.sink3 = phi i8 [ %"247", %Side1_activestandby_task_each_pals_period_bb86 ], [ %next_state.3, %Side1_activestandby_task_each_pals_period_bb85 ]
  %"248" = sext i8 %next_state.3.sink3 to i32
  %"249" = trunc i32 %"248" to i8
  store i8 %"249", i8* @"'s1s2_new", align 1
  %"250" = sext i8 %next_state.3 to i32
  %"251" = load i8* @"'nomsg", align 1
  %"252" = sext i8 %"251" to i32
  %"253" = icmp ne i32 %"250", %"252"
  br i1 %"253", label %Side1_activestandby_task_each_pals_period_bb88, label %Side1_activestandby_task_each_pals_period_bb89

Side1_activestandby_task_each_pals_period_bb88:   ; preds = %Side1_activestandby_task_each_pals_period_bb87
  %"254" = load i8* @"'s1p_new", align 1
  %"255" = sext i8 %"254" to i32
  %"256" = load i8* @"'nomsg", align 1
  %"257" = sext i8 %"256" to i32
  %"258" = icmp eq i32 %"255", %"257"
  br i1 %"258", label %Side1_activestandby_task_each_pals_period_bb90, label %Side1_activestandby_task_each_pals_period_bb89

Side1_activestandby_task_each_pals_period_bb89:   ; preds = %Side1_activestandby_task_each_pals_period_bb88, %Side1_activestandby_task_each_pals_period_bb87
  %"259" = load i8* @"'s1p_new", align 1
  br label %Side1_activestandby_task_each_pals_period_bb90

Side1_activestandby_task_each_pals_period_bb90:   ; preds = %Side1_activestandby_task_each_pals_period_bb88, %Side1_activestandby_task_each_pals_period_bb89
  %next_state.3.sink4 = phi i8 [ %"259", %Side1_activestandby_task_each_pals_period_bb89 ], [ %next_state.3, %Side1_activestandby_task_each_pals_period_bb88 ]
  %"260" = sext i8 %next_state.3.sink4 to i32
  %"261" = trunc i32 %"260" to i8
  store i8 %"261", i8* @"'s1p_new", align 1
  store i8 %next_state.3, i8* @"'side1_written", align 1
  br label %Side1_activestandby_task_each_pals_period_bb91

Side1_activestandby_task_each_pals_period_bb91:   ; preds = %Side1_activestandby_task_each_pals_period_bb90, %Side1_activestandby_task_each_pals_period_bb73
  ret void
}

declare zeroext i1 @__VERIFIER_nondet_bool(...) #1

; Function Attrs: nounwind uwtable
define void @Side2_activestandby_task_each_pals_period() #0 {
Side2_activestandby_task_each_pals_period_bb92:
  %"262" = call zeroext i1 (...)* @__VERIFIER_nondet_bool()
  %"263" = zext i1 %"262" to i8
  store i8 %"263", i8* @"'side2Failed", align 1
  %"264" = load i8* @"'side2Failed", align 1
  %"265" = trunc i8 %"264" to i1
  %"266" = zext i1 %"265" to i8
  %"267" = load i8* @"'side2Failed_History_1", align 1
  %"268" = trunc i8 %"267" to i1
  %"269" = zext i1 %"268" to i8
  store i8 %"269", i8* @"'side2Failed_History_2", align 1
  %"270" = load i8* @"'side2Failed_History_0", align 1
  %"271" = trunc i8 %"270" to i1
  %"272" = zext i1 %"271" to i8
  store i8 %"272", i8* @"'side2Failed_History_1", align 1
  %"273" = trunc i8 %"266" to i1
  %"274" = zext i1 %"273" to i8
  store i8 %"274", i8* @"'side2Failed_History_0", align 1
  %"275" = load i8* @"'side2Failed", align 1
  %"276" = trunc i8 %"275" to i1
  br i1 %"276", label %Side2_activestandby_task_each_pals_period_bb93, label %Side2_activestandby_task_each_pals_period_bb106

Side2_activestandby_task_each_pals_period_bb93:   ; preds = %Side2_activestandby_task_each_pals_period_bb92
  %"277" = load i8* @"'nomsg", align 1
  %"278" = sext i8 %"277" to i32
  %"279" = load i8* @"'nomsg", align 1
  %"280" = sext i8 %"279" to i32
  %"281" = icmp ne i32 %"278", %"280"
  br i1 %"281", label %Side2_activestandby_task_each_pals_period_bb94, label %Side2_activestandby_task_each_pals_period_bb96

Side2_activestandby_task_each_pals_period_bb94:   ; preds = %Side2_activestandby_task_each_pals_period_bb93
  %"282" = load i8* @"'s2s1_new", align 1
  %"283" = sext i8 %"282" to i32
  %"284" = load i8* @"'nomsg", align 1
  %"285" = sext i8 %"284" to i32
  %"286" = icmp eq i32 %"283", %"285"
  br i1 %"286", label %Side2_activestandby_task_each_pals_period_bb95, label %Side2_activestandby_task_each_pals_period_bb96

Side2_activestandby_task_each_pals_period_bb95:   ; preds = %Side2_activestandby_task_each_pals_period_bb94
  %"287" = load i8* @"'nomsg", align 1
  br label %Side2_activestandby_task_each_pals_period_bb97

Side2_activestandby_task_each_pals_period_bb96:   ; preds = %Side2_activestandby_task_each_pals_period_bb94, %Side2_activestandby_task_each_pals_period_bb93
  %"288" = load i8* @"'s2s1_new", align 1
  br label %Side2_activestandby_task_each_pals_period_bb97

Side2_activestandby_task_each_pals_period_bb97:   ; preds = %Side2_activestandby_task_each_pals_period_bb96, %Side2_activestandby_task_each_pals_period_bb95
  %.sink = phi i8 [ %"287", %Side2_activestandby_task_each_pals_period_bb95 ], [ %"288", %Side2_activestandby_task_each_pals_period_bb96 ]
  %"289" = sext i8 %.sink to i32
  %"290" = trunc i32 %"289" to i8
  store i8 %"290", i8* @"'s2s1_new", align 1
  %"291" = load i8* @"'nomsg", align 1
  %"292" = sext i8 %"291" to i32
  %"293" = load i8* @"'nomsg", align 1
  %"294" = sext i8 %"293" to i32
  %"295" = icmp ne i32 %"292", %"294"
  br i1 %"295", label %Side2_activestandby_task_each_pals_period_bb98, label %Side2_activestandby_task_each_pals_period_bb100

Side2_activestandby_task_each_pals_period_bb98:   ; preds = %Side2_activestandby_task_each_pals_period_bb97
  %"296" = load i8* @"'s2s2_new", align 1
  %"297" = sext i8 %"296" to i32
  %"298" = load i8* @"'nomsg", align 1
  %"299" = sext i8 %"298" to i32
  %"300" = icmp eq i32 %"297", %"299"
  br i1 %"300", label %Side2_activestandby_task_each_pals_period_bb99, label %Side2_activestandby_task_each_pals_period_bb100

Side2_activestandby_task_each_pals_period_bb99:   ; preds = %Side2_activestandby_task_each_pals_period_bb98
  %"301" = load i8* @"'nomsg", align 1
  br label %Side2_activestandby_task_each_pals_period_bb101

Side2_activestandby_task_each_pals_period_bb100:  ; preds = %Side2_activestandby_task_each_pals_period_bb98, %Side2_activestandby_task_each_pals_period_bb97
  %"302" = load i8* @"'s2s2_new", align 1
  br label %Side2_activestandby_task_each_pals_period_bb101

Side2_activestandby_task_each_pals_period_bb101:  ; preds = %Side2_activestandby_task_each_pals_period_bb100, %Side2_activestandby_task_each_pals_period_bb99
  %.sink1 = phi i8 [ %"301", %Side2_activestandby_task_each_pals_period_bb99 ], [ %"302", %Side2_activestandby_task_each_pals_period_bb100 ]
  %"303" = sext i8 %.sink1 to i32
  %"304" = trunc i32 %"303" to i8
  store i8 %"304", i8* @"'s2s2_new", align 1
  %"305" = load i8* @"'nomsg", align 1
  %"306" = sext i8 %"305" to i32
  %"307" = load i8* @"'nomsg", align 1
  %"308" = sext i8 %"307" to i32
  %"309" = icmp ne i32 %"306", %"308"
  br i1 %"309", label %Side2_activestandby_task_each_pals_period_bb102, label %Side2_activestandby_task_each_pals_period_bb104

Side2_activestandby_task_each_pals_period_bb102:  ; preds = %Side2_activestandby_task_each_pals_period_bb101
  %"310" = load i8* @"'s2p_new", align 1
  %"311" = sext i8 %"310" to i32
  %"312" = load i8* @"'nomsg", align 1
  %"313" = sext i8 %"312" to i32
  %"314" = icmp eq i32 %"311", %"313"
  br i1 %"314", label %Side2_activestandby_task_each_pals_period_bb103, label %Side2_activestandby_task_each_pals_period_bb104

Side2_activestandby_task_each_pals_period_bb103:  ; preds = %Side2_activestandby_task_each_pals_period_bb102
  %"315" = load i8* @"'nomsg", align 1
  br label %Side2_activestandby_task_each_pals_period_bb105

Side2_activestandby_task_each_pals_period_bb104:  ; preds = %Side2_activestandby_task_each_pals_period_bb102, %Side2_activestandby_task_each_pals_period_bb101
  %"316" = load i8* @"'s2p_new", align 1
  br label %Side2_activestandby_task_each_pals_period_bb105

Side2_activestandby_task_each_pals_period_bb105:  ; preds = %Side2_activestandby_task_each_pals_period_bb104, %Side2_activestandby_task_each_pals_period_bb103
  %.sink2 = phi i8 [ %"315", %Side2_activestandby_task_each_pals_period_bb103 ], [ %"316", %Side2_activestandby_task_each_pals_period_bb104 ]
  %"317" = sext i8 %.sink2 to i32
  %"318" = trunc i32 %"317" to i8
  store i8 %"318", i8* @"'s2p_new", align 1
  %"319" = load i8* @"'nomsg", align 1
  store i8 %"319", i8* @"'side2_written", align 1
  br label %Side2_activestandby_task_each_pals_period_bb123

Side2_activestandby_task_each_pals_period_bb106:  ; preds = %Side2_activestandby_task_each_pals_period_bb92
  %"320" = load i8* @"'s1s2_old", align 1
  %"321" = load i8* @"'nomsg", align 1
  store i8 %"321", i8* @"'s1s2_old", align 1
  %"322" = load i8* @"'s2s2_old", align 1
  %"323" = load i8* @"'nomsg", align 1
  store i8 %"323", i8* @"'s2s2_old", align 1
  %"324" = load i8* @"'cs2_old", align 1
  %"325" = load i8* @"'nomsg", align 1
  store i8 %"325", i8* @"'cs2_old", align 1
  %"326" = sext i8 %"320" to i32
  %"327" = sext i8 %"322" to i32
  %"328" = icmp eq i32 %"326", %"327"
  br i1 %"328", label %Side2_activestandby_task_each_pals_period_bb113, label %Side2_activestandby_task_each_pals_period_bb107

Side2_activestandby_task_each_pals_period_bb107:  ; preds = %Side2_activestandby_task_each_pals_period_bb106
  %"329" = sext i8 %"322" to i32
  %"330" = load i8* @"'nomsg", align 1
  %"331" = sext i8 %"330" to i32
  %"332" = icmp eq i32 %"329", %"331"
  br i1 %"332", label %Side2_activestandby_task_each_pals_period_bb108, label %Side2_activestandby_task_each_pals_period_bb109

Side2_activestandby_task_each_pals_period_bb108:  ; preds = %Side2_activestandby_task_each_pals_period_bb107
  %"333" = sext i8 %"320" to i32
  %"334" = load i8* @"'nomsg", align 1
  %"335" = sext i8 %"334" to i32
  %"336" = icmp ne i32 %"333", %"335"
  br i1 %"336", label %Side2_activestandby_task_each_pals_period_bb113, label %Side2_activestandby_task_each_pals_period_bb109

Side2_activestandby_task_each_pals_period_bb109:  ; preds = %Side2_activestandby_task_each_pals_period_bb107, %Side2_activestandby_task_each_pals_period_bb108
  %"337" = sext i8 %"322" to i32
  %"338" = load i8* @"'nomsg", align 1
  %"339" = sext i8 %"338" to i32
  %"340" = icmp ne i32 %"337", %"339"
  br i1 %"340", label %Side2_activestandby_task_each_pals_period_bb110, label %Side2_activestandby_task_each_pals_period_bb111

Side2_activestandby_task_each_pals_period_bb110:  ; preds = %Side2_activestandby_task_each_pals_period_bb109
  %"341" = sext i8 %"320" to i32
  %"342" = load i8* @"'nomsg", align 1
  %"343" = sext i8 %"342" to i32
  %"344" = icmp eq i32 %"341", %"343"
  br i1 %"344", label %Side2_activestandby_task_each_pals_period_bb113, label %Side2_activestandby_task_each_pals_period_bb111

Side2_activestandby_task_each_pals_period_bb111:  ; preds = %Side2_activestandby_task_each_pals_period_bb109, %Side2_activestandby_task_each_pals_period_bb110
  %"345" = sext i8 %"324" to i32
  %"346" = icmp eq i32 %"345", 1
  br i1 %"346", label %Side2_activestandby_task_each_pals_period_bb112, label %Side2_activestandby_task_each_pals_period_bb113

Side2_activestandby_task_each_pals_period_bb112:  ; preds = %Side2_activestandby_task_each_pals_period_bb111
  %"347" = sext i8 %"322" to i32
  %"348" = icmp eq i32 %"347", 1
  %..i = select i1 %"348", i32 0, i32 1
  %"349" = trunc i32 %..i to i8
  br label %Side2_activestandby_task_each_pals_period_bb113

Side2_activestandby_task_each_pals_period_bb113:  ; preds = %Side2_activestandby_task_each_pals_period_bb108, %Side2_activestandby_task_each_pals_period_bb112, %Side2_activestandby_task_each_pals_period_bb111, %Side2_activestandby_task_each_pals_period_bb110, %Side2_activestandby_task_each_pals_period_bb106
  %next_state.3 = phi i8 [ 1, %Side2_activestandby_task_each_pals_period_bb106 ], [ 0, %Side2_activestandby_task_each_pals_period_bb108 ], [ 1, %Side2_activestandby_task_each_pals_period_bb110 ], [ %"349", %Side2_activestandby_task_each_pals_period_bb112 ], [ %"322", %Side2_activestandby_task_each_pals_period_bb111 ]
  %"350" = sext i8 %next_state.3 to i32
  %"351" = load i8* @"'nomsg", align 1
  %"352" = sext i8 %"351" to i32
  %"353" = icmp ne i32 %"350", %"352"
  br i1 %"353", label %Side2_activestandby_task_each_pals_period_bb114, label %Side2_activestandby_task_each_pals_period_bb115

Side2_activestandby_task_each_pals_period_bb114:  ; preds = %Side2_activestandby_task_each_pals_period_bb113
  %"354" = load i8* @"'s2s1_new", align 1
  %"355" = sext i8 %"354" to i32
  %"356" = load i8* @"'nomsg", align 1
  %"357" = sext i8 %"356" to i32
  %"358" = icmp eq i32 %"355", %"357"
  br i1 %"358", label %Side2_activestandby_task_each_pals_period_bb116, label %Side2_activestandby_task_each_pals_period_bb115

Side2_activestandby_task_each_pals_period_bb115:  ; preds = %Side2_activestandby_task_each_pals_period_bb114, %Side2_activestandby_task_each_pals_period_bb113
  %"359" = load i8* @"'s2s1_new", align 1
  br label %Side2_activestandby_task_each_pals_period_bb116

Side2_activestandby_task_each_pals_period_bb116:  ; preds = %Side2_activestandby_task_each_pals_period_bb114, %Side2_activestandby_task_each_pals_period_bb115
  %next_state.3.sink = phi i8 [ %"359", %Side2_activestandby_task_each_pals_period_bb115 ], [ %next_state.3, %Side2_activestandby_task_each_pals_period_bb114 ]
  %"360" = sext i8 %next_state.3.sink to i32
  %"361" = trunc i32 %"360" to i8
  store i8 %"361", i8* @"'s2s1_new", align 1
  %"362" = sext i8 %next_state.3 to i32
  %"363" = load i8* @"'nomsg", align 1
  %"364" = sext i8 %"363" to i32
  %"365" = icmp ne i32 %"362", %"364"
  br i1 %"365", label %Side2_activestandby_task_each_pals_period_bb117, label %Side2_activestandby_task_each_pals_period_bb118

Side2_activestandby_task_each_pals_period_bb117:  ; preds = %Side2_activestandby_task_each_pals_period_bb116
  %"366" = load i8* @"'s2s2_new", align 1
  %"367" = sext i8 %"366" to i32
  %"368" = load i8* @"'nomsg", align 1
  %"369" = sext i8 %"368" to i32
  %"370" = icmp eq i32 %"367", %"369"
  br i1 %"370", label %Side2_activestandby_task_each_pals_period_bb119, label %Side2_activestandby_task_each_pals_period_bb118

Side2_activestandby_task_each_pals_period_bb118:  ; preds = %Side2_activestandby_task_each_pals_period_bb117, %Side2_activestandby_task_each_pals_period_bb116
  %"371" = load i8* @"'s2s2_new", align 1
  br label %Side2_activestandby_task_each_pals_period_bb119

Side2_activestandby_task_each_pals_period_bb119:  ; preds = %Side2_activestandby_task_each_pals_period_bb117, %Side2_activestandby_task_each_pals_period_bb118
  %next_state.3.sink3 = phi i8 [ %"371", %Side2_activestandby_task_each_pals_period_bb118 ], [ %next_state.3, %Side2_activestandby_task_each_pals_period_bb117 ]
  %"372" = sext i8 %next_state.3.sink3 to i32
  %"373" = trunc i32 %"372" to i8
  store i8 %"373", i8* @"'s2s2_new", align 1
  %"374" = sext i8 %next_state.3 to i32
  %"375" = load i8* @"'nomsg", align 1
  %"376" = sext i8 %"375" to i32
  %"377" = icmp ne i32 %"374", %"376"
  br i1 %"377", label %Side2_activestandby_task_each_pals_period_bb120, label %Side2_activestandby_task_each_pals_period_bb121

Side2_activestandby_task_each_pals_period_bb120:  ; preds = %Side2_activestandby_task_each_pals_period_bb119
  %"378" = load i8* @"'s2p_new", align 1
  %"379" = sext i8 %"378" to i32
  %"380" = load i8* @"'nomsg", align 1
  %"381" = sext i8 %"380" to i32
  %"382" = icmp eq i32 %"379", %"381"
  br i1 %"382", label %Side2_activestandby_task_each_pals_period_bb122, label %Side2_activestandby_task_each_pals_period_bb121

Side2_activestandby_task_each_pals_period_bb121:  ; preds = %Side2_activestandby_task_each_pals_period_bb120, %Side2_activestandby_task_each_pals_period_bb119
  %"383" = load i8* @"'s2p_new", align 1
  br label %Side2_activestandby_task_each_pals_period_bb122

Side2_activestandby_task_each_pals_period_bb122:  ; preds = %Side2_activestandby_task_each_pals_period_bb120, %Side2_activestandby_task_each_pals_period_bb121
  %next_state.3.sink4 = phi i8 [ %"383", %Side2_activestandby_task_each_pals_period_bb121 ], [ %next_state.3, %Side2_activestandby_task_each_pals_period_bb120 ]
  %"384" = sext i8 %next_state.3.sink4 to i32
  %"385" = trunc i32 %"384" to i8
  store i8 %"385", i8* @"'s2p_new", align 1
  store i8 %next_state.3, i8* @"'side2_written", align 1
  br label %Side2_activestandby_task_each_pals_period_bb123

Side2_activestandby_task_each_pals_period_bb123:  ; preds = %Side2_activestandby_task_each_pals_period_bb122, %Side2_activestandby_task_each_pals_period_bb105
  ret void
}

; Function Attrs: nounwind uwtable
define void @Pendulum_prism_task_each_pals_period() #0 {
Pendulum_prism_task_each_pals_period_bb124:
  %"386" = load i8* @"'s1p_old", align 1
  %"387" = load i8* @"'nomsg", align 1
  store i8 %"387", i8* @"'s1p_old", align 1
  %"388" = load i8* @"'s2p_old", align 1
  %"389" = load i8* @"'nomsg", align 1
  store i8 %"389", i8* @"'s2p_old", align 1
  %"390" = sext i8 %"386" to i32
  %"391" = icmp eq i32 %"390", 1
  br i1 %"391", label %Pendulum_prism_task_each_pals_period_bb130, label %Pendulum_prism_task_each_pals_period_bb125

Pendulum_prism_task_each_pals_period_bb125:       ; preds = %Pendulum_prism_task_each_pals_period_bb124
  %"392" = sext i8 %"388" to i32
  %"393" = icmp eq i32 %"392", 1
  br i1 %"393", label %Pendulum_prism_task_each_pals_period_bb130, label %Pendulum_prism_task_each_pals_period_bb126

Pendulum_prism_task_each_pals_period_bb126:       ; preds = %Pendulum_prism_task_each_pals_period_bb125
  %"394" = sext i8 %"386" to i32
  %"395" = icmp eq i32 %"394", 0
  br i1 %"395", label %Pendulum_prism_task_each_pals_period_bb127, label %Pendulum_prism_task_each_pals_period_bb128

Pendulum_prism_task_each_pals_period_bb127:       ; preds = %Pendulum_prism_task_each_pals_period_bb126
  %"396" = sext i8 %"388" to i32
  %"397" = load i8* @"'nomsg", align 1
  %"398" = sext i8 %"397" to i32
  %"399" = icmp eq i32 %"396", %"398"
  br i1 %"399", label %Pendulum_prism_task_each_pals_period_bb130, label %Pendulum_prism_task_each_pals_period_bb128

Pendulum_prism_task_each_pals_period_bb128:       ; preds = %Pendulum_prism_task_each_pals_period_bb126, %Pendulum_prism_task_each_pals_period_bb127
  %"400" = sext i8 %"386" to i32
  %"401" = load i8* @"'nomsg", align 1
  %"402" = sext i8 %"401" to i32
  %"403" = icmp eq i32 %"400", %"402"
  br i1 %"403", label %Pendulum_prism_task_each_pals_period_bb129, label %Pendulum_prism_task_each_pals_period_bb130

Pendulum_prism_task_each_pals_period_bb129:       ; preds = %Pendulum_prism_task_each_pals_period_bb128
  %"404" = sext i8 %"388" to i32
  %"405" = icmp eq i32 %"404", 0
  %. = select i1 %"405", i8 2, i8 0
  br label %Pendulum_prism_task_each_pals_period_bb130

Pendulum_prism_task_each_pals_period_bb130:       ; preds = %Pendulum_prism_task_each_pals_period_bb125, %Pendulum_prism_task_each_pals_period_bb129, %Pendulum_prism_task_each_pals_period_bb128, %Pendulum_prism_task_each_pals_period_bb127, %Pendulum_prism_task_each_pals_period_bb124
  %active_side.4 = phi i8 [ 1, %Pendulum_prism_task_each_pals_period_bb124 ], [ 2, %Pendulum_prism_task_each_pals_period_bb125 ], [ 1, %Pendulum_prism_task_each_pals_period_bb127 ], [ %., %Pendulum_prism_task_each_pals_period_bb129 ], [ 0, %Pendulum_prism_task_each_pals_period_bb128 ]
  %"406" = load i8* @"'active_side_History_1", align 1
  store i8 %"406", i8* @"'active_side_History_2", align 1
  %"407" = load i8* @"'active_side_History_0", align 1
  store i8 %"407", i8* @"'active_side_History_1", align 1
  store i8 %active_side.4, i8* @"'active_side_History_0", align 1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @check() #0 {
check_bb131:
  %"408" = load i8* @"'side1Failed", align 1
  %"409" = trunc i8 %"408" to i1
  br i1 %"409", label %check_bb132, label %check_bb133

check_bb132:                                      ; preds = %check_bb131
  %"410" = load i8* @"'side2Failed", align 1
  %"411" = trunc i8 %"410" to i1
  %. = select i1 %"411", i32 0, i32 1
  br label %check_bb133

check_bb133:                                      ; preds = %check_bb131, %check_bb132
  %tmp.1 = phi i32 [ %., %check_bb132 ], [ 1, %check_bb131 ]
  %"412" = icmp ne i32 %tmp.1, 0
  %"413" = zext i1 %"412" to i8
  %"414" = trunc i8 %"413" to i1
  br label %check_bb134

check_bb134:                                      ; preds = %check_bb134, %check_bb133
  %"415" = xor i1 %"414", true
  br i1 %"415", label %check_bb134, label %check___VERIFIER_assume.exit

check___VERIFIER_assume.exit:                     ; preds = %check_bb134
  %"416" = load i8* @"'manual_selection_History_1", align 1
  %"417" = icmp ne i8 %"416", 0
  br i1 %"417", label %check_bb145, label %check_bb135

check_bb135:                                      ; preds = %check___VERIFIER_assume.exit
  %"418" = load i8* @"'side1Failed_History_1", align 1
  %"419" = trunc i8 %"418" to i1
  %"420" = zext i1 %"419" to i8
  %"421" = trunc i8 %"420" to i1
  br i1 %"421", label %check_bb145, label %check_bb136

check_bb136:                                      ; preds = %check_bb135
  %"422" = load i8* @"'side1Failed_History_0", align 1
  %"423" = trunc i8 %"422" to i1
  %"424" = zext i1 %"423" to i8
  %"425" = trunc i8 %"424" to i1
  br i1 %"425", label %check_bb145, label %check_bb137

check_bb137:                                      ; preds = %check_bb136
  %"426" = load i8* @"'side2Failed_History_1", align 1
  %"427" = trunc i8 %"426" to i1
  %"428" = zext i1 %"427" to i8
  %"429" = trunc i8 %"428" to i1
  br i1 %"429", label %check_bb145, label %check_bb138

check_bb138:                                      ; preds = %check_bb137
  %"430" = load i8* @"'side2Failed_History_0", align 1
  %"431" = trunc i8 %"430" to i1
  %"432" = zext i1 %"431" to i8
  %"433" = trunc i8 %"432" to i1
  br i1 %"433", label %check_bb145, label %check_bb139

check_bb139:                                      ; preds = %check_bb138
  %"434" = load i8* @"'side1_written", align 1
  %"435" = sext i8 %"434" to i32
  %"436" = icmp eq i32 %"435", 1
  br i1 %"436", label %check_bb141, label %check_bb140

check_bb140:                                      ; preds = %check_bb139
  %"437" = load i8* @"'side1_written", align 1
  %"438" = sext i8 %"437" to i32
  %"439" = icmp eq i32 %"438", 0
  br i1 %"439", label %check_bb141, label %check_bb160

check_bb141:                                      ; preds = %check_bb140, %check_bb139
  %"440" = load i8* @"'side1_written", align 1
  %"441" = sext i8 %"440" to i32
  %"442" = icmp eq i32 %"441", 0
  br i1 %"442", label %check_bb142, label %check_bb143

check_bb142:                                      ; preds = %check_bb141
  %"443" = load i8* @"'side2_written", align 1
  %"444" = sext i8 %"443" to i32
  %"445" = icmp eq i32 %"444", 1
  br i1 %"445", label %check_bb143, label %check_bb160

check_bb143:                                      ; preds = %check_bb142, %check_bb141
  %"446" = load i8* @"'side1_written", align 1
  %"447" = sext i8 %"446" to i32
  %"448" = icmp eq i32 %"447", 1
  br i1 %"448", label %check_bb144, label %check_bb145

check_bb144:                                      ; preds = %check_bb143
  %"449" = load i8* @"'side2_written", align 1
  %"450" = sext i8 %"449" to i32
  %"451" = icmp eq i32 %"450", 0
  br i1 %"451", label %check_bb145, label %check_bb160

check_bb145:                                      ; preds = %check_bb135, %check_bb137, %check_bb143, %check_bb144, %check_bb138, %check_bb136, %check___VERIFIER_assume.exit
  %"452" = load i8* @"'side1Failed_History_1", align 1
  %"453" = trunc i8 %"452" to i1
  %"454" = zext i1 %"453" to i8
  %"455" = trunc i8 %"454" to i1
  br i1 %"455", label %check_bb146, label %check_bb150

check_bb146:                                      ; preds = %check_bb145
  %"456" = load i8* @"'side2Failed_History_1", align 1
  %"457" = trunc i8 %"456" to i1
  %"458" = zext i1 %"457" to i8
  %"459" = trunc i8 %"458" to i1
  br i1 %"459", label %check_bb150, label %check_bb147

check_bb147:                                      ; preds = %check_bb146
  %"460" = load i8* @"'active_side_History_0", align 1
  %"461" = sext i8 %"460" to i32
  %"462" = icmp eq i32 %"461", 2
  br i1 %"462", label %check_bb148, label %check_bb160

check_bb148:                                      ; preds = %check_bb147
  %"463" = load i8* @"'side2Failed_History_0", align 1
  %"464" = trunc i8 %"463" to i1
  %"465" = zext i1 %"464" to i8
  %"466" = trunc i8 %"465" to i1
  br i1 %"466", label %check_bb150, label %check_bb149

check_bb149:                                      ; preds = %check_bb148
  %"467" = load i8* @"'side2_written", align 1
  %"468" = sext i8 %"467" to i32
  %"469" = icmp eq i32 %"468", 1
  br i1 %"469", label %check_bb150, label %check_bb160

check_bb150:                                      ; preds = %check_bb146, %check_bb149, %check_bb148, %check_bb145
  %"470" = load i8* @"'side1Failed_History_1", align 1
  %"471" = trunc i8 %"470" to i1
  %"472" = zext i1 %"471" to i8
  %"473" = trunc i8 %"472" to i1
  br i1 %"473", label %check_bb155, label %check_bb151

check_bb151:                                      ; preds = %check_bb150
  %"474" = load i8* @"'side2Failed_History_1", align 1
  %"475" = trunc i8 %"474" to i1
  %"476" = zext i1 %"475" to i8
  %"477" = trunc i8 %"476" to i1
  br i1 %"477", label %check_bb152, label %check_bb155

check_bb152:                                      ; preds = %check_bb151
  %"478" = load i8* @"'active_side_History_0", align 1
  %"479" = sext i8 %"478" to i32
  %"480" = icmp eq i32 %"479", 1
  br i1 %"480", label %check_bb153, label %check_bb160

check_bb153:                                      ; preds = %check_bb152
  %"481" = load i8* @"'side1Failed_History_0", align 1
  %"482" = trunc i8 %"481" to i1
  %"483" = zext i1 %"482" to i8
  %"484" = trunc i8 %"483" to i1
  br i1 %"484", label %check_bb155, label %check_bb154

check_bb154:                                      ; preds = %check_bb153
  %"485" = load i8* @"'side1_written", align 1
  %"486" = sext i8 %"485" to i32
  %"487" = icmp eq i32 %"486", 1
  br i1 %"487", label %check_bb155, label %check_bb160

check_bb155:                                      ; preds = %check_bb151, %check_bb154, %check_bb153, %check_bb150
  %"488" = load i8* @"'active_side_History_2", align 1
  %"489" = sext i8 %"488" to i32
  %"490" = icmp sle i32 %"489", -2
  %"491" = load i8* @"'manual_selection_History_2", align 1
  %"492" = icmp ne i8 %"491", 0
  %or.cond = or i1 %"490", %"492"
  br i1 %or.cond, label %check_bb159, label %check_bb156

check_bb156:                                      ; preds = %check_bb155
  %"493" = load i8* @"'side1Failed_History_2", align 1
  %"494" = trunc i8 %"493" to i1
  %"495" = zext i1 %"494" to i8
  %"496" = load i8* @"'side1Failed_History_1", align 1
  %"497" = trunc i8 %"496" to i1
  %"498" = zext i1 %"497" to i8
  %"499" = trunc i8 %"495" to i1
  %"500" = zext i1 %"499" to i32
  %"501" = trunc i8 %"498" to i1
  %"502" = zext i1 %"501" to i32
  %"503" = icmp eq i32 %"500", %"502"
  br i1 %"503", label %check_bb157, label %check_bb159

check_bb157:                                      ; preds = %check_bb156
  %"504" = load i8* @"'side2Failed_History_2", align 1
  %"505" = trunc i8 %"504" to i1
  %"506" = zext i1 %"505" to i8
  %"507" = load i8* @"'side2Failed_History_1", align 1
  %"508" = trunc i8 %"507" to i1
  %"509" = zext i1 %"508" to i8
  %"510" = trunc i8 %"506" to i1
  %"511" = zext i1 %"510" to i32
  %"512" = trunc i8 %"509" to i1
  %"513" = zext i1 %"512" to i32
  %"514" = icmp eq i32 %"511", %"513"
  br i1 %"514", label %check_bb158, label %check_bb159

check_bb158:                                      ; preds = %check_bb157
  %"515" = load i8* @"'active_side_History_1", align 1
  %"516" = load i8* @"'active_side_History_0", align 1
  %"517" = sext i8 %"515" to i32
  %"518" = sext i8 %"516" to i32
  %"519" = icmp eq i32 %"517", %"518"
  br i1 %"519", label %check_bb159, label %check_bb160

check_bb159:                                      ; preds = %check_bb155, %check_bb157, %check_bb158, %check_bb156
  br label %check_bb160

check_bb160:                                      ; preds = %check_bb158, %check_bb154, %check_bb152, %check_bb149, %check_bb147, %check_bb144, %check_bb142, %check_bb140, %check_bb159
  %.0 = phi i32 [ 1, %check_bb159 ], [ 0, %check_bb140 ], [ 0, %check_bb142 ], [ 0, %check_bb144 ], [ 0, %check_bb147 ], [ 0, %check_bb149 ], [ 0, %check_bb152 ], [ 0, %check_bb154 ], [ 0, %check_bb158 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @__VERIFIER_assume(i1 zeroext %arg) #0 {
__VERIFIER_assume_bb161:
  %"520" = zext i1 %arg to i8
  %"521" = trunc i8 %"520" to i1
  br label %__VERIFIER_assume_bb162

__VERIFIER_assume_bb162:                          ; preds = %__VERIFIER_assume_bb162, %__VERIFIER_assume_bb161
  %"522" = xor i1 %"521", true
  br i1 %"522", label %__VERIFIER_assume_bb162, label %__VERIFIER_assume_bb163

__VERIFIER_assume_bb163:                          ; preds = %__VERIFIER_assume_bb162
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb164:
  %"523" = call zeroext i1 @__VERIFIER_nondet__Bool()
  %"524" = zext i1 %"523" to i8
  store i8 %"524", i8* @"'side1Failed", align 1
  %"525" = call zeroext i1 @__VERIFIER_nondet__Bool()
  %"526" = zext i1 %"525" to i8
  store i8 %"526", i8* @"'side2Failed", align 1
  %"527" = call signext i8 @__VERIFIER_nondet_msg_t()
  store i8 %"527", i8* @"'side1_written", align 1
  %"528" = call signext i8 @__VERIFIER_nondet_msg_t()
  store i8 %"528", i8* @"'side2_written", align 1
  %"529" = call zeroext i1 @__VERIFIER_nondet__Bool()
  %"530" = zext i1 %"529" to i8
  store i8 %"530", i8* @"'side1Failed_History_0", align 1
  %"531" = call zeroext i1 @__VERIFIER_nondet__Bool()
  %"532" = zext i1 %"531" to i8
  store i8 %"532", i8* @"'side1Failed_History_1", align 1
  %"533" = call zeroext i1 @__VERIFIER_nondet__Bool()
  %"534" = zext i1 %"533" to i8
  store i8 %"534", i8* @"'side1Failed_History_2", align 1
  %"535" = call zeroext i1 @__VERIFIER_nondet__Bool()
  %"536" = zext i1 %"535" to i8
  store i8 %"536", i8* @"'side2Failed_History_0", align 1
  %"537" = call zeroext i1 @__VERIFIER_nondet__Bool()
  %"538" = zext i1 %"537" to i8
  store i8 %"538", i8* @"'side2Failed_History_1", align 1
  %"539" = call zeroext i1 @__VERIFIER_nondet__Bool()
  %"540" = zext i1 %"539" to i8
  store i8 %"540", i8* @"'side2Failed_History_2", align 1
  %"541" = call signext i8 @__VERIFIER_nondet_int8_t()
  store i8 %"541", i8* @"'active_side_History_0", align 1
  %"542" = call signext i8 @__VERIFIER_nondet_int8_t()
  store i8 %"542", i8* @"'active_side_History_1", align 1
  %"543" = call signext i8 @__VERIFIER_nondet_int8_t()
  store i8 %"543", i8* @"'active_side_History_2", align 1
  %"544" = call signext i8 @__VERIFIER_nondet_msg_t()
  store i8 %"544", i8* @"'manual_selection_History_0", align 1
  %"545" = call signext i8 @__VERIFIER_nondet_msg_t()
  store i8 %"545", i8* @"'manual_selection_History_1", align 1
  %"546" = call signext i8 @__VERIFIER_nondet_msg_t()
  store i8 %"546", i8* @"'manual_selection_History_2", align 1
  %"547" = load i8* @"'side1Failed_History_0", align 1
  %"548" = trunc i8 %"547" to i1
  br i1 %"548", label %main_init.exit, label %main_bb165

main_bb165:                                       ; preds = %main_bb164
  %"549" = load i8* @"'side2Failed_History_0", align 1
  %"550" = trunc i8 %"549" to i1
  br i1 %"550", label %main_init.exit, label %main_bb166

main_bb166:                                       ; preds = %main_bb165
  %"551" = load i8* @"'active_side_History_0", align 1
  %"552" = sext i8 %"551" to i32
  %"553" = icmp ne i32 %"552", -2
  br i1 %"553", label %main_init.exit, label %main_bb167

main_bb167:                                       ; preds = %main_bb166
  %"554" = load i8* @"'manual_selection_History_0", align 1
  %"555" = sext i8 %"554" to i32
  %"556" = icmp ne i32 %"555", 0
  br i1 %"556", label %main_init.exit, label %main_bb168

main_bb168:                                       ; preds = %main_bb167
  %"557" = load i8* @"'side1Failed_History_1", align 1
  %"558" = trunc i8 %"557" to i1
  br i1 %"558", label %main_init.exit, label %main_bb169

main_bb169:                                       ; preds = %main_bb168
  %"559" = load i8* @"'side2Failed_History_1", align 1
  %"560" = trunc i8 %"559" to i1
  br i1 %"560", label %main_init.exit, label %main_bb170

main_bb170:                                       ; preds = %main_bb169
  %"561" = load i8* @"'active_side_History_1", align 1
  %"562" = sext i8 %"561" to i32
  %"563" = icmp ne i32 %"562", -2
  br i1 %"563", label %main_init.exit, label %main_bb171

main_bb171:                                       ; preds = %main_bb170
  %"564" = load i8* @"'manual_selection_History_1", align 1
  %"565" = sext i8 %"564" to i32
  %"566" = icmp ne i32 %"565", 0
  br i1 %"566", label %main_init.exit, label %main_bb172

main_bb172:                                       ; preds = %main_bb171
  %"567" = load i8* @"'side1Failed_History_2", align 1
  %"568" = trunc i8 %"567" to i1
  br i1 %"568", label %main_init.exit, label %main_bb173

main_bb173:                                       ; preds = %main_bb172
  %"569" = load i8* @"'side2Failed_History_2", align 1
  %"570" = trunc i8 %"569" to i1
  br i1 %"570", label %main_init.exit, label %main_bb174

main_bb174:                                       ; preds = %main_bb173
  %"571" = load i8* @"'active_side_History_2", align 1
  %"572" = sext i8 %"571" to i32
  %"573" = icmp ne i32 %"572", -2
  br i1 %"573", label %main_init.exit, label %main_bb175

main_bb175:                                       ; preds = %main_bb174
  %"574" = load i8* @"'manual_selection_History_2", align 1
  %"575" = sext i8 %"574" to i32
  %"576" = icmp ne i32 %"575", 0
  %..i = select i1 %"576", i32 0, i32 1
  br label %main_init.exit

main_init.exit:                                   ; preds = %main_bb164, %main_bb165, %main_bb166, %main_bb167, %main_bb168, %main_bb169, %main_bb170, %main_bb171, %main_bb172, %main_bb173, %main_bb174, %main_bb175
  %.0.i = phi i32 [ 0, %main_bb164 ], [ 0, %main_bb165 ], [ 0, %main_bb166 ], [ 0, %main_bb167 ], [ 0, %main_bb168 ], [ 0, %main_bb169 ], [ 0, %main_bb170 ], [ 0, %main_bb171 ], [ 0, %main_bb172 ], [ 0, %main_bb173 ], [ 0, %main_bb174 ], [ %..i, %main_bb175 ]
  %"577" = icmp ne i32 %.0.i, 0
  %"578" = zext i1 %"577" to i8
  %"579" = trunc i8 %"578" to i1
  br label %main_bb176

main_bb176:                                       ; preds = %main_bb176, %main_init.exit
  %"580" = xor i1 %"579", true
  br i1 %"580", label %main_bb176, label %main___VERIFIER_assume.exit

main___VERIFIER_assume.exit:                      ; preds = %main_bb176
  %"581" = load i8* @"'nomsg", align 1
  store i8 %"581", i8* @"'cs1_old", align 1
  %"582" = load i8* @"'nomsg", align 1
  store i8 %"582", i8* @"'cs1_new", align 1
  %"583" = load i8* @"'nomsg", align 1
  store i8 %"583", i8* @"'cs2_old", align 1
  %"584" = load i8* @"'nomsg", align 1
  store i8 %"584", i8* @"'cs2_new", align 1
  %"585" = load i8* @"'nomsg", align 1
  store i8 %"585", i8* @"'s1s2_old", align 1
  %"586" = load i8* @"'nomsg", align 1
  store i8 %"586", i8* @"'s1s2_new", align 1
  %"587" = load i8* @"'nomsg", align 1
  store i8 %"587", i8* @"'s1s1_old", align 1
  %"588" = load i8* @"'nomsg", align 1
  store i8 %"588", i8* @"'s1s1_new", align 1
  %"589" = load i8* @"'nomsg", align 1
  store i8 %"589", i8* @"'s2s1_old", align 1
  %"590" = load i8* @"'nomsg", align 1
  store i8 %"590", i8* @"'s2s1_new", align 1
  %"591" = load i8* @"'nomsg", align 1
  store i8 %"591", i8* @"'s2s2_old", align 1
  %"592" = load i8* @"'nomsg", align 1
  store i8 %"592", i8* @"'s2s2_new", align 1
  %"593" = load i8* @"'nomsg", align 1
  store i8 %"593", i8* @"'s1p_old", align 1
  %"594" = load i8* @"'nomsg", align 1
  store i8 %"594", i8* @"'s1p_new", align 1
  %"595" = load i8* @"'nomsg", align 1
  store i8 %"595", i8* @"'s2p_old", align 1
  %"596" = load i8* @"'nomsg", align 1
  store i8 %"596", i8* @"'s2p_new", align 1
  br label %main_bb177

main_bb177:                                       ; preds = %main_assert.exit, %main___VERIFIER_assume.exit
  %i2.0 = phi i32 [ 0, %main___VERIFIER_assume.exit ], [ %"1026", %main_assert.exit ]
  %"597" = icmp slt i32 %i2.0, 10
  br i1 %"597", label %main_bb178, label %main_bb278

main_bb178:                                       ; preds = %main_bb177
  %"598" = call signext i8 (...)* @__VERIFIER_nondet_char() #5
  %"599" = load i8* @"'manual_selection_History_1", align 1
  store i8 %"599", i8* @"'manual_selection_History_2", align 1
  %"600" = load i8* @"'manual_selection_History_0", align 1
  store i8 %"600", i8* @"'manual_selection_History_1", align 1
  store i8 %"598", i8* @"'manual_selection_History_0", align 1
  %"601" = sext i8 %"598" to i32
  %"602" = load i8* @"'nomsg", align 1
  %"603" = sext i8 %"602" to i32
  %"604" = icmp ne i32 %"601", %"603"
  br i1 %"604", label %main_bb179, label %main_bb180

main_bb179:                                       ; preds = %main_bb178
  %"605" = load i8* @"'cs1_new", align 1
  %"606" = sext i8 %"605" to i32
  %"607" = load i8* @"'nomsg", align 1
  %"608" = sext i8 %"607" to i32
  %"609" = icmp eq i32 %"606", %"608"
  br i1 %"609", label %main_bb181, label %main_bb180

main_bb180:                                       ; preds = %main_bb179, %main_bb178
  %"610" = load i8* @"'cs1_new", align 1
  br label %main_bb181

main_bb181:                                       ; preds = %main_bb180, %main_bb179
  %.sink.i4 = phi i8 [ %"610", %main_bb180 ], [ %"598", %main_bb179 ]
  %"611" = sext i8 %.sink.i4 to i32
  %"612" = trunc i32 %"611" to i8
  store i8 %"612", i8* @"'cs1_new", align 1
  %"613" = sext i8 %"598" to i32
  %"614" = load i8* @"'nomsg", align 1
  %"615" = sext i8 %"614" to i32
  %"616" = icmp ne i32 %"613", %"615"
  br i1 %"616", label %main_bb182, label %main_bb183

main_bb182:                                       ; preds = %main_bb181
  %"617" = load i8* @"'cs2_new", align 1
  %"618" = sext i8 %"617" to i32
  %"619" = load i8* @"'nomsg", align 1
  %"620" = sext i8 %"619" to i32
  %"621" = icmp eq i32 %"618", %"620"
  br i1 %"621", label %main_Console_task_each_pals_period.exit, label %main_bb183

main_bb183:                                       ; preds = %main_bb182, %main_bb181
  %"622" = load i8* @"'cs2_new", align 1
  br label %main_Console_task_each_pals_period.exit

main_Console_task_each_pals_period.exit:          ; preds = %main_bb182, %main_bb183
  %.sink1.i5 = phi i8 [ %"622", %main_bb183 ], [ %"598", %main_bb182 ]
  %"623" = sext i8 %.sink1.i5 to i32
  %"624" = trunc i32 %"623" to i8
  store i8 %"624", i8* @"'cs2_new", align 1
  %"625" = call zeroext i1 (...)* @__VERIFIER_nondet_bool() #5
  %"626" = zext i1 %"625" to i8
  store i8 %"626", i8* @"'side1Failed", align 1
  %"627" = load i8* @"'side1Failed", align 1
  %"628" = trunc i8 %"627" to i1
  %"629" = zext i1 %"628" to i8
  %"630" = load i8* @"'side1Failed_History_1", align 1
  %"631" = trunc i8 %"630" to i1
  %"632" = zext i1 %"631" to i8
  store i8 %"632", i8* @"'side1Failed_History_2", align 1
  %"633" = load i8* @"'side1Failed_History_0", align 1
  %"634" = trunc i8 %"633" to i1
  %"635" = zext i1 %"634" to i8
  store i8 %"635", i8* @"'side1Failed_History_1", align 1
  %"636" = trunc i8 %"629" to i1
  %"637" = zext i1 %"636" to i8
  store i8 %"637", i8* @"'side1Failed_History_0", align 1
  %"638" = load i8* @"'side1Failed", align 1
  %"639" = trunc i8 %"638" to i1
  br i1 %"639", label %main_bb184, label %main_bb197

main_bb184:                                       ; preds = %main_Console_task_each_pals_period.exit
  %"640" = load i8* @"'nomsg", align 1
  %"641" = sext i8 %"640" to i32
  %"642" = load i8* @"'nomsg", align 1
  %"643" = sext i8 %"642" to i32
  %"644" = icmp ne i32 %"641", %"643"
  br i1 %"644", label %main_bb185, label %main_bb187

main_bb185:                                       ; preds = %main_bb184
  %"645" = load i8* @"'s1s1_new", align 1
  %"646" = sext i8 %"645" to i32
  %"647" = load i8* @"'nomsg", align 1
  %"648" = sext i8 %"647" to i32
  %"649" = icmp eq i32 %"646", %"648"
  br i1 %"649", label %main_bb186, label %main_bb187

main_bb186:                                       ; preds = %main_bb185
  %"650" = load i8* @"'nomsg", align 1
  br label %main_bb188

main_bb187:                                       ; preds = %main_bb185, %main_bb184
  %"651" = load i8* @"'s1s1_new", align 1
  br label %main_bb188

main_bb188:                                       ; preds = %main_bb187, %main_bb186
  %.sink.i6 = phi i8 [ %"650", %main_bb186 ], [ %"651", %main_bb187 ]
  %"652" = sext i8 %.sink.i6 to i32
  %"653" = trunc i32 %"652" to i8
  store i8 %"653", i8* @"'s1s1_new", align 1
  %"654" = load i8* @"'nomsg", align 1
  %"655" = sext i8 %"654" to i32
  %"656" = load i8* @"'nomsg", align 1
  %"657" = sext i8 %"656" to i32
  %"658" = icmp ne i32 %"655", %"657"
  br i1 %"658", label %main_bb189, label %main_bb191

main_bb189:                                       ; preds = %main_bb188
  %"659" = load i8* @"'s1s2_new", align 1
  %"660" = sext i8 %"659" to i32
  %"661" = load i8* @"'nomsg", align 1
  %"662" = sext i8 %"661" to i32
  %"663" = icmp eq i32 %"660", %"662"
  br i1 %"663", label %main_bb190, label %main_bb191

main_bb190:                                       ; preds = %main_bb189
  %"664" = load i8* @"'nomsg", align 1
  br label %main_bb192

main_bb191:                                       ; preds = %main_bb189, %main_bb188
  %"665" = load i8* @"'s1s2_new", align 1
  br label %main_bb192

main_bb192:                                       ; preds = %main_bb191, %main_bb190
  %.sink1.i7 = phi i8 [ %"664", %main_bb190 ], [ %"665", %main_bb191 ]
  %"666" = sext i8 %.sink1.i7 to i32
  %"667" = trunc i32 %"666" to i8
  store i8 %"667", i8* @"'s1s2_new", align 1
  %"668" = load i8* @"'nomsg", align 1
  %"669" = sext i8 %"668" to i32
  %"670" = load i8* @"'nomsg", align 1
  %"671" = sext i8 %"670" to i32
  %"672" = icmp ne i32 %"669", %"671"
  br i1 %"672", label %main_bb193, label %main_bb195

main_bb193:                                       ; preds = %main_bb192
  %"673" = load i8* @"'s1p_new", align 1
  %"674" = sext i8 %"673" to i32
  %"675" = load i8* @"'nomsg", align 1
  %"676" = sext i8 %"675" to i32
  %"677" = icmp eq i32 %"674", %"676"
  br i1 %"677", label %main_bb194, label %main_bb195

main_bb194:                                       ; preds = %main_bb193
  %"678" = load i8* @"'nomsg", align 1
  br label %main_bb196

main_bb195:                                       ; preds = %main_bb193, %main_bb192
  %"679" = load i8* @"'s1p_new", align 1
  br label %main_bb196

main_bb196:                                       ; preds = %main_bb195, %main_bb194
  %.sink2.i8 = phi i8 [ %"678", %main_bb194 ], [ %"679", %main_bb195 ]
  %"680" = sext i8 %.sink2.i8 to i32
  %"681" = trunc i32 %"680" to i8
  store i8 %"681", i8* @"'s1p_new", align 1
  %"682" = load i8* @"'nomsg", align 1
  store i8 %"682", i8* @"'side1_written", align 1
  br label %main_Side1_activestandby_task_each_pals_period.exit

main_bb197:                                       ; preds = %main_Console_task_each_pals_period.exit
  %"683" = load i8* @"'s1s1_old", align 1
  %"684" = load i8* @"'nomsg", align 1
  store i8 %"684", i8* @"'s1s1_old", align 1
  %"685" = load i8* @"'s2s1_old", align 1
  %"686" = load i8* @"'nomsg", align 1
  store i8 %"686", i8* @"'s2s1_old", align 1
  %"687" = load i8* @"'cs1_old", align 1
  %"688" = load i8* @"'nomsg", align 1
  store i8 %"688", i8* @"'cs1_old", align 1
  %"689" = sext i8 %"683" to i32
  %"690" = sext i8 %"685" to i32
  %"691" = icmp eq i32 %"689", %"690"
  br i1 %"691", label %main_bb204, label %main_bb198

main_bb198:                                       ; preds = %main_bb197
  %"692" = sext i8 %"683" to i32
  %"693" = load i8* @"'nomsg", align 1
  %"694" = sext i8 %"693" to i32
  %"695" = icmp eq i32 %"692", %"694"
  br i1 %"695", label %main_bb199, label %main_bb200

main_bb199:                                       ; preds = %main_bb198
  %"696" = sext i8 %"685" to i32
  %"697" = load i8* @"'nomsg", align 1
  %"698" = sext i8 %"697" to i32
  %"699" = icmp ne i32 %"696", %"698"
  br i1 %"699", label %main_bb204, label %main_bb200

main_bb200:                                       ; preds = %main_bb199, %main_bb198
  %"700" = sext i8 %"683" to i32
  %"701" = load i8* @"'nomsg", align 1
  %"702" = sext i8 %"701" to i32
  %"703" = icmp ne i32 %"700", %"702"
  br i1 %"703", label %main_bb201, label %main_bb202

main_bb201:                                       ; preds = %main_bb200
  %"704" = sext i8 %"685" to i32
  %"705" = load i8* @"'nomsg", align 1
  %"706" = sext i8 %"705" to i32
  %"707" = icmp eq i32 %"704", %"706"
  br i1 %"707", label %main_bb204, label %main_bb202

main_bb202:                                       ; preds = %main_bb201, %main_bb200
  %"708" = sext i8 %"687" to i32
  %"709" = icmp eq i32 %"708", 1
  br i1 %"709", label %main_bb203, label %main_bb204

main_bb203:                                       ; preds = %main_bb202
  %"710" = sext i8 %"683" to i32
  %"711" = icmp eq i32 %"710", 1
  %..i.i9 = select i1 %"711", i32 0, i32 1
  %"712" = trunc i32 %..i.i9 to i8
  br label %main_bb204

main_bb204:                                       ; preds = %main_bb203, %main_bb202, %main_bb201, %main_bb199, %main_bb197
  %next_state.3.i10 = phi i8 [ 1, %main_bb197 ], [ 0, %main_bb199 ], [ 1, %main_bb201 ], [ %"712", %main_bb203 ], [ %"683", %main_bb202 ]
  %"713" = sext i8 %next_state.3.i10 to i32
  %"714" = load i8* @"'nomsg", align 1
  %"715" = sext i8 %"714" to i32
  %"716" = icmp ne i32 %"713", %"715"
  br i1 %"716", label %main_bb205, label %main_bb206

main_bb205:                                       ; preds = %main_bb204
  %"717" = load i8* @"'s1s1_new", align 1
  %"718" = sext i8 %"717" to i32
  %"719" = load i8* @"'nomsg", align 1
  %"720" = sext i8 %"719" to i32
  %"721" = icmp eq i32 %"718", %"720"
  br i1 %"721", label %main_bb207, label %main_bb206

main_bb206:                                       ; preds = %main_bb205, %main_bb204
  %"722" = load i8* @"'s1s1_new", align 1
  br label %main_bb207

main_bb207:                                       ; preds = %main_bb206, %main_bb205
  %next_state.3.sink.i11 = phi i8 [ %"722", %main_bb206 ], [ %next_state.3.i10, %main_bb205 ]
  %"723" = sext i8 %next_state.3.sink.i11 to i32
  %"724" = trunc i32 %"723" to i8
  store i8 %"724", i8* @"'s1s1_new", align 1
  %"725" = sext i8 %next_state.3.i10 to i32
  %"726" = load i8* @"'nomsg", align 1
  %"727" = sext i8 %"726" to i32
  %"728" = icmp ne i32 %"725", %"727"
  br i1 %"728", label %main_bb208, label %main_bb209

main_bb208:                                       ; preds = %main_bb207
  %"729" = load i8* @"'s1s2_new", align 1
  %"730" = sext i8 %"729" to i32
  %"731" = load i8* @"'nomsg", align 1
  %"732" = sext i8 %"731" to i32
  %"733" = icmp eq i32 %"730", %"732"
  br i1 %"733", label %main_bb210, label %main_bb209

main_bb209:                                       ; preds = %main_bb208, %main_bb207
  %"734" = load i8* @"'s1s2_new", align 1
  br label %main_bb210

main_bb210:                                       ; preds = %main_bb209, %main_bb208
  %next_state.3.sink3.i12 = phi i8 [ %"734", %main_bb209 ], [ %next_state.3.i10, %main_bb208 ]
  %"735" = sext i8 %next_state.3.sink3.i12 to i32
  %"736" = trunc i32 %"735" to i8
  store i8 %"736", i8* @"'s1s2_new", align 1
  %"737" = sext i8 %next_state.3.i10 to i32
  %"738" = load i8* @"'nomsg", align 1
  %"739" = sext i8 %"738" to i32
  %"740" = icmp ne i32 %"737", %"739"
  br i1 %"740", label %main_bb211, label %main_bb212

main_bb211:                                       ; preds = %main_bb210
  %"741" = load i8* @"'s1p_new", align 1
  %"742" = sext i8 %"741" to i32
  %"743" = load i8* @"'nomsg", align 1
  %"744" = sext i8 %"743" to i32
  %"745" = icmp eq i32 %"742", %"744"
  br i1 %"745", label %main_bb213, label %main_bb212

main_bb212:                                       ; preds = %main_bb211, %main_bb210
  %"746" = load i8* @"'s1p_new", align 1
  br label %main_bb213

main_bb213:                                       ; preds = %main_bb212, %main_bb211
  %next_state.3.sink4.i13 = phi i8 [ %"746", %main_bb212 ], [ %next_state.3.i10, %main_bb211 ]
  %"747" = sext i8 %next_state.3.sink4.i13 to i32
  %"748" = trunc i32 %"747" to i8
  store i8 %"748", i8* @"'s1p_new", align 1
  store i8 %next_state.3.i10, i8* @"'side1_written", align 1
  br label %main_Side1_activestandby_task_each_pals_period.exit

main_Side1_activestandby_task_each_pals_period.exit: ; preds = %main_bb196, %main_bb213
  %"749" = call zeroext i1 (...)* @__VERIFIER_nondet_bool() #5
  %"750" = zext i1 %"749" to i8
  store i8 %"750", i8* @"'side2Failed", align 1
  %"751" = load i8* @"'side2Failed", align 1
  %"752" = trunc i8 %"751" to i1
  %"753" = zext i1 %"752" to i8
  %"754" = load i8* @"'side2Failed_History_1", align 1
  %"755" = trunc i8 %"754" to i1
  %"756" = zext i1 %"755" to i8
  store i8 %"756", i8* @"'side2Failed_History_2", align 1
  %"757" = load i8* @"'side2Failed_History_0", align 1
  %"758" = trunc i8 %"757" to i1
  %"759" = zext i1 %"758" to i8
  store i8 %"759", i8* @"'side2Failed_History_1", align 1
  %"760" = trunc i8 %"753" to i1
  %"761" = zext i1 %"760" to i8
  store i8 %"761", i8* @"'side2Failed_History_0", align 1
  %"762" = load i8* @"'side2Failed", align 1
  %"763" = trunc i8 %"762" to i1
  br i1 %"763", label %main_bb214, label %main_bb227

main_bb214:                                       ; preds = %main_Side1_activestandby_task_each_pals_period.exit
  %"764" = load i8* @"'nomsg", align 1
  %"765" = sext i8 %"764" to i32
  %"766" = load i8* @"'nomsg", align 1
  %"767" = sext i8 %"766" to i32
  %"768" = icmp ne i32 %"765", %"767"
  br i1 %"768", label %main_bb215, label %main_bb217

main_bb215:                                       ; preds = %main_bb214
  %"769" = load i8* @"'s2s1_new", align 1
  %"770" = sext i8 %"769" to i32
  %"771" = load i8* @"'nomsg", align 1
  %"772" = sext i8 %"771" to i32
  %"773" = icmp eq i32 %"770", %"772"
  br i1 %"773", label %main_bb216, label %main_bb217

main_bb216:                                       ; preds = %main_bb215
  %"774" = load i8* @"'nomsg", align 1
  br label %main_bb218

main_bb217:                                       ; preds = %main_bb215, %main_bb214
  %"775" = load i8* @"'s2s1_new", align 1
  br label %main_bb218

main_bb218:                                       ; preds = %main_bb217, %main_bb216
  %.sink.i = phi i8 [ %"774", %main_bb216 ], [ %"775", %main_bb217 ]
  %"776" = sext i8 %.sink.i to i32
  %"777" = trunc i32 %"776" to i8
  store i8 %"777", i8* @"'s2s1_new", align 1
  %"778" = load i8* @"'nomsg", align 1
  %"779" = sext i8 %"778" to i32
  %"780" = load i8* @"'nomsg", align 1
  %"781" = sext i8 %"780" to i32
  %"782" = icmp ne i32 %"779", %"781"
  br i1 %"782", label %main_bb219, label %main_bb221

main_bb219:                                       ; preds = %main_bb218
  %"783" = load i8* @"'s2s2_new", align 1
  %"784" = sext i8 %"783" to i32
  %"785" = load i8* @"'nomsg", align 1
  %"786" = sext i8 %"785" to i32
  %"787" = icmp eq i32 %"784", %"786"
  br i1 %"787", label %main_bb220, label %main_bb221

main_bb220:                                       ; preds = %main_bb219
  %"788" = load i8* @"'nomsg", align 1
  br label %main_bb222

main_bb221:                                       ; preds = %main_bb219, %main_bb218
  %"789" = load i8* @"'s2s2_new", align 1
  br label %main_bb222

main_bb222:                                       ; preds = %main_bb221, %main_bb220
  %.sink1.i = phi i8 [ %"788", %main_bb220 ], [ %"789", %main_bb221 ]
  %"790" = sext i8 %.sink1.i to i32
  %"791" = trunc i32 %"790" to i8
  store i8 %"791", i8* @"'s2s2_new", align 1
  %"792" = load i8* @"'nomsg", align 1
  %"793" = sext i8 %"792" to i32
  %"794" = load i8* @"'nomsg", align 1
  %"795" = sext i8 %"794" to i32
  %"796" = icmp ne i32 %"793", %"795"
  br i1 %"796", label %main_bb223, label %main_bb225

main_bb223:                                       ; preds = %main_bb222
  %"797" = load i8* @"'s2p_new", align 1
  %"798" = sext i8 %"797" to i32
  %"799" = load i8* @"'nomsg", align 1
  %"800" = sext i8 %"799" to i32
  %"801" = icmp eq i32 %"798", %"800"
  br i1 %"801", label %main_bb224, label %main_bb225

main_bb224:                                       ; preds = %main_bb223
  %"802" = load i8* @"'nomsg", align 1
  br label %main_bb226

main_bb225:                                       ; preds = %main_bb223, %main_bb222
  %"803" = load i8* @"'s2p_new", align 1
  br label %main_bb226

main_bb226:                                       ; preds = %main_bb225, %main_bb224
  %.sink2.i = phi i8 [ %"802", %main_bb224 ], [ %"803", %main_bb225 ]
  %"804" = sext i8 %.sink2.i to i32
  %"805" = trunc i32 %"804" to i8
  store i8 %"805", i8* @"'s2p_new", align 1
  %"806" = load i8* @"'nomsg", align 1
  store i8 %"806", i8* @"'side2_written", align 1
  br label %main_Side2_activestandby_task_each_pals_period.exit

main_bb227:                                       ; preds = %main_Side1_activestandby_task_each_pals_period.exit
  %"807" = load i8* @"'s1s2_old", align 1
  %"808" = load i8* @"'nomsg", align 1
  store i8 %"808", i8* @"'s1s2_old", align 1
  %"809" = load i8* @"'s2s2_old", align 1
  %"810" = load i8* @"'nomsg", align 1
  store i8 %"810", i8* @"'s2s2_old", align 1
  %"811" = load i8* @"'cs2_old", align 1
  %"812" = load i8* @"'nomsg", align 1
  store i8 %"812", i8* @"'cs2_old", align 1
  %"813" = sext i8 %"807" to i32
  %"814" = sext i8 %"809" to i32
  %"815" = icmp eq i32 %"813", %"814"
  br i1 %"815", label %main_bb234, label %main_bb228

main_bb228:                                       ; preds = %main_bb227
  %"816" = sext i8 %"809" to i32
  %"817" = load i8* @"'nomsg", align 1
  %"818" = sext i8 %"817" to i32
  %"819" = icmp eq i32 %"816", %"818"
  br i1 %"819", label %main_bb229, label %main_bb230

main_bb229:                                       ; preds = %main_bb228
  %"820" = sext i8 %"807" to i32
  %"821" = load i8* @"'nomsg", align 1
  %"822" = sext i8 %"821" to i32
  %"823" = icmp ne i32 %"820", %"822"
  br i1 %"823", label %main_bb234, label %main_bb230

main_bb230:                                       ; preds = %main_bb229, %main_bb228
  %"824" = sext i8 %"809" to i32
  %"825" = load i8* @"'nomsg", align 1
  %"826" = sext i8 %"825" to i32
  %"827" = icmp ne i32 %"824", %"826"
  br i1 %"827", label %main_bb231, label %main_bb232

main_bb231:                                       ; preds = %main_bb230
  %"828" = sext i8 %"807" to i32
  %"829" = load i8* @"'nomsg", align 1
  %"830" = sext i8 %"829" to i32
  %"831" = icmp eq i32 %"828", %"830"
  br i1 %"831", label %main_bb234, label %main_bb232

main_bb232:                                       ; preds = %main_bb231, %main_bb230
  %"832" = sext i8 %"811" to i32
  %"833" = icmp eq i32 %"832", 1
  br i1 %"833", label %main_bb233, label %main_bb234

main_bb233:                                       ; preds = %main_bb232
  %"834" = sext i8 %"809" to i32
  %"835" = icmp eq i32 %"834", 1
  %..i.i = select i1 %"835", i32 0, i32 1
  %"836" = trunc i32 %..i.i to i8
  br label %main_bb234

main_bb234:                                       ; preds = %main_bb233, %main_bb232, %main_bb231, %main_bb229, %main_bb227
  %next_state.3.i = phi i8 [ 1, %main_bb227 ], [ 0, %main_bb229 ], [ 1, %main_bb231 ], [ %"836", %main_bb233 ], [ %"809", %main_bb232 ]
  %"837" = sext i8 %next_state.3.i to i32
  %"838" = load i8* @"'nomsg", align 1
  %"839" = sext i8 %"838" to i32
  %"840" = icmp ne i32 %"837", %"839"
  br i1 %"840", label %main_bb235, label %main_bb236

main_bb235:                                       ; preds = %main_bb234
  %"841" = load i8* @"'s2s1_new", align 1
  %"842" = sext i8 %"841" to i32
  %"843" = load i8* @"'nomsg", align 1
  %"844" = sext i8 %"843" to i32
  %"845" = icmp eq i32 %"842", %"844"
  br i1 %"845", label %main_bb237, label %main_bb236

main_bb236:                                       ; preds = %main_bb235, %main_bb234
  %"846" = load i8* @"'s2s1_new", align 1
  br label %main_bb237

main_bb237:                                       ; preds = %main_bb236, %main_bb235
  %next_state.3.sink.i = phi i8 [ %"846", %main_bb236 ], [ %next_state.3.i, %main_bb235 ]
  %"847" = sext i8 %next_state.3.sink.i to i32
  %"848" = trunc i32 %"847" to i8
  store i8 %"848", i8* @"'s2s1_new", align 1
  %"849" = sext i8 %next_state.3.i to i32
  %"850" = load i8* @"'nomsg", align 1
  %"851" = sext i8 %"850" to i32
  %"852" = icmp ne i32 %"849", %"851"
  br i1 %"852", label %main_bb238, label %main_bb239

main_bb238:                                       ; preds = %main_bb237
  %"853" = load i8* @"'s2s2_new", align 1
  %"854" = sext i8 %"853" to i32
  %"855" = load i8* @"'nomsg", align 1
  %"856" = sext i8 %"855" to i32
  %"857" = icmp eq i32 %"854", %"856"
  br i1 %"857", label %main_bb240, label %main_bb239

main_bb239:                                       ; preds = %main_bb238, %main_bb237
  %"858" = load i8* @"'s2s2_new", align 1
  br label %main_bb240

main_bb240:                                       ; preds = %main_bb239, %main_bb238
  %next_state.3.sink3.i = phi i8 [ %"858", %main_bb239 ], [ %next_state.3.i, %main_bb238 ]
  %"859" = sext i8 %next_state.3.sink3.i to i32
  %"860" = trunc i32 %"859" to i8
  store i8 %"860", i8* @"'s2s2_new", align 1
  %"861" = sext i8 %next_state.3.i to i32
  %"862" = load i8* @"'nomsg", align 1
  %"863" = sext i8 %"862" to i32
  %"864" = icmp ne i32 %"861", %"863"
  br i1 %"864", label %main_bb241, label %main_bb242

main_bb241:                                       ; preds = %main_bb240
  %"865" = load i8* @"'s2p_new", align 1
  %"866" = sext i8 %"865" to i32
  %"867" = load i8* @"'nomsg", align 1
  %"868" = sext i8 %"867" to i32
  %"869" = icmp eq i32 %"866", %"868"
  br i1 %"869", label %main_bb243, label %main_bb242

main_bb242:                                       ; preds = %main_bb241, %main_bb240
  %"870" = load i8* @"'s2p_new", align 1
  br label %main_bb243

main_bb243:                                       ; preds = %main_bb242, %main_bb241
  %next_state.3.sink4.i = phi i8 [ %"870", %main_bb242 ], [ %next_state.3.i, %main_bb241 ]
  %"871" = sext i8 %next_state.3.sink4.i to i32
  %"872" = trunc i32 %"871" to i8
  store i8 %"872", i8* @"'s2p_new", align 1
  store i8 %next_state.3.i, i8* @"'side2_written", align 1
  br label %main_Side2_activestandby_task_each_pals_period.exit

main_Side2_activestandby_task_each_pals_period.exit: ; preds = %main_bb226, %main_bb243
  %"873" = load i8* @"'s1p_old", align 1
  %"874" = load i8* @"'nomsg", align 1
  store i8 %"874", i8* @"'s1p_old", align 1
  %"875" = load i8* @"'s2p_old", align 1
  %"876" = load i8* @"'nomsg", align 1
  store i8 %"876", i8* @"'s2p_old", align 1
  %"877" = sext i8 %"873" to i32
  %"878" = icmp eq i32 %"877", 1
  br i1 %"878", label %main_Pendulum_prism_task_each_pals_period.exit, label %main_bb244

main_bb244:                                       ; preds = %main_Side2_activestandby_task_each_pals_period.exit
  %"879" = sext i8 %"875" to i32
  %"880" = icmp eq i32 %"879", 1
  br i1 %"880", label %main_Pendulum_prism_task_each_pals_period.exit, label %main_bb245

main_bb245:                                       ; preds = %main_bb244
  %"881" = sext i8 %"873" to i32
  %"882" = icmp eq i32 %"881", 0
  br i1 %"882", label %main_bb246, label %main_bb247

main_bb246:                                       ; preds = %main_bb245
  %"883" = sext i8 %"875" to i32
  %"884" = load i8* @"'nomsg", align 1
  %"885" = sext i8 %"884" to i32
  %"886" = icmp eq i32 %"883", %"885"
  br i1 %"886", label %main_Pendulum_prism_task_each_pals_period.exit, label %main_bb247

main_bb247:                                       ; preds = %main_bb246, %main_bb245
  %"887" = sext i8 %"873" to i32
  %"888" = load i8* @"'nomsg", align 1
  %"889" = sext i8 %"888" to i32
  %"890" = icmp eq i32 %"887", %"889"
  br i1 %"890", label %main_bb248, label %main_Pendulum_prism_task_each_pals_period.exit

main_bb248:                                       ; preds = %main_bb247
  %"891" = sext i8 %"875" to i32
  %"892" = icmp eq i32 %"891", 0
  %..i3 = select i1 %"892", i8 2, i8 0
  br label %main_Pendulum_prism_task_each_pals_period.exit

main_Pendulum_prism_task_each_pals_period.exit:   ; preds = %main_Side2_activestandby_task_each_pals_period.exit, %main_bb244, %main_bb246, %main_bb247, %main_bb248
  %active_side.4.i = phi i8 [ 1, %main_Side2_activestandby_task_each_pals_period.exit ], [ 2, %main_bb244 ], [ 1, %main_bb246 ], [ %..i3, %main_bb248 ], [ 0, %main_bb247 ]
  %"893" = load i8* @"'active_side_History_1", align 1
  store i8 %"893", i8* @"'active_side_History_2", align 1
  %"894" = load i8* @"'active_side_History_0", align 1
  store i8 %"894", i8* @"'active_side_History_1", align 1
  store i8 %active_side.4.i, i8* @"'active_side_History_0", align 1
  %"895" = load i8* @"'cs1_new", align 1
  store i8 %"895", i8* @"'cs1_old", align 1
  %"896" = load i8* @"'nomsg", align 1
  store i8 %"896", i8* @"'cs1_new", align 1
  %"897" = load i8* @"'cs2_new", align 1
  store i8 %"897", i8* @"'cs2_old", align 1
  %"898" = load i8* @"'nomsg", align 1
  store i8 %"898", i8* @"'cs2_new", align 1
  %"899" = load i8* @"'s1s2_new", align 1
  store i8 %"899", i8* @"'s1s2_old", align 1
  %"900" = load i8* @"'nomsg", align 1
  store i8 %"900", i8* @"'s1s2_new", align 1
  %"901" = load i8* @"'s1s1_new", align 1
  store i8 %"901", i8* @"'s1s1_old", align 1
  %"902" = load i8* @"'nomsg", align 1
  store i8 %"902", i8* @"'s1s1_new", align 1
  %"903" = load i8* @"'s2s1_new", align 1
  store i8 %"903", i8* @"'s2s1_old", align 1
  %"904" = load i8* @"'nomsg", align 1
  store i8 %"904", i8* @"'s2s1_new", align 1
  %"905" = load i8* @"'s2s2_new", align 1
  store i8 %"905", i8* @"'s2s2_old", align 1
  %"906" = load i8* @"'nomsg", align 1
  store i8 %"906", i8* @"'s2s2_new", align 1
  %"907" = load i8* @"'s1p_new", align 1
  store i8 %"907", i8* @"'s1p_old", align 1
  %"908" = load i8* @"'nomsg", align 1
  store i8 %"908", i8* @"'s1p_new", align 1
  %"909" = load i8* @"'s2p_new", align 1
  store i8 %"909", i8* @"'s2p_old", align 1
  %"910" = load i8* @"'nomsg", align 1
  store i8 %"910", i8* @"'s2p_new", align 1
  %"911" = load i8* @"'side1Failed", align 1
  %"912" = trunc i8 %"911" to i1
  br i1 %"912", label %main_bb249, label %main_bb250

main_bb249:                                       ; preds = %main_Pendulum_prism_task_each_pals_period.exit
  %"913" = load i8* @"'side2Failed", align 1
  %"914" = trunc i8 %"913" to i1
  %..i1 = select i1 %"914", i32 0, i32 1
  br label %main_bb250

main_bb250:                                       ; preds = %main_bb249, %main_Pendulum_prism_task_each_pals_period.exit
  %tmp.1.i = phi i32 [ %..i1, %main_bb249 ], [ 1, %main_Pendulum_prism_task_each_pals_period.exit ]
  %"915" = icmp ne i32 %tmp.1.i, 0
  %"916" = zext i1 %"915" to i8
  %"917" = trunc i8 %"916" to i1
  br label %main_bb251

main_bb251:                                       ; preds = %main_bb251, %main_bb250
  %"918" = xor i1 %"917", true
  br i1 %"918", label %main_bb251, label %main___VERIFIER_assume.exit.i

main___VERIFIER_assume.exit.i:                    ; preds = %main_bb251
  %"919" = load i8* @"'manual_selection_History_1", align 1
  %"920" = icmp ne i8 %"919", 0
  br i1 %"920", label %main_bb262, label %main_bb252

main_bb252:                                       ; preds = %main___VERIFIER_assume.exit.i
  %"921" = load i8* @"'side1Failed_History_1", align 1
  %"922" = trunc i8 %"921" to i1
  %"923" = zext i1 %"922" to i8
  %"924" = trunc i8 %"923" to i1
  br i1 %"924", label %main_bb262, label %main_bb253

main_bb253:                                       ; preds = %main_bb252
  %"925" = load i8* @"'side1Failed_History_0", align 1
  %"926" = trunc i8 %"925" to i1
  %"927" = zext i1 %"926" to i8
  %"928" = trunc i8 %"927" to i1
  br i1 %"928", label %main_bb262, label %main_bb254

main_bb254:                                       ; preds = %main_bb253
  %"929" = load i8* @"'side2Failed_History_1", align 1
  %"930" = trunc i8 %"929" to i1
  %"931" = zext i1 %"930" to i8
  %"932" = trunc i8 %"931" to i1
  br i1 %"932", label %main_bb262, label %main_bb255

main_bb255:                                       ; preds = %main_bb254
  %"933" = load i8* @"'side2Failed_History_0", align 1
  %"934" = trunc i8 %"933" to i1
  %"935" = zext i1 %"934" to i8
  %"936" = trunc i8 %"935" to i1
  br i1 %"936", label %main_bb262, label %main_bb256

main_bb256:                                       ; preds = %main_bb255
  %"937" = load i8* @"'side1_written", align 1
  %"938" = sext i8 %"937" to i32
  %"939" = icmp eq i32 %"938", 1
  br i1 %"939", label %main_bb258, label %main_bb257

main_bb257:                                       ; preds = %main_bb256
  %"940" = load i8* @"'side1_written", align 1
  %"941" = sext i8 %"940" to i32
  %"942" = icmp eq i32 %"941", 0
  br i1 %"942", label %main_bb258, label %main_check.exit

main_bb258:                                       ; preds = %main_bb257, %main_bb256
  %"943" = load i8* @"'side1_written", align 1
  %"944" = sext i8 %"943" to i32
  %"945" = icmp eq i32 %"944", 0
  br i1 %"945", label %main_bb259, label %main_bb260

main_bb259:                                       ; preds = %main_bb258
  %"946" = load i8* @"'side2_written", align 1
  %"947" = sext i8 %"946" to i32
  %"948" = icmp eq i32 %"947", 1
  br i1 %"948", label %main_bb260, label %main_check.exit

main_bb260:                                       ; preds = %main_bb259, %main_bb258
  %"949" = load i8* @"'side1_written", align 1
  %"950" = sext i8 %"949" to i32
  %"951" = icmp eq i32 %"950", 1
  br i1 %"951", label %main_bb261, label %main_bb262

main_bb261:                                       ; preds = %main_bb260
  %"952" = load i8* @"'side2_written", align 1
  %"953" = sext i8 %"952" to i32
  %"954" = icmp eq i32 %"953", 0
  br i1 %"954", label %main_bb262, label %main_check.exit

main_bb262:                                       ; preds = %main_bb261, %main_bb260, %main_bb255, %main_bb254, %main_bb253, %main_bb252, %main___VERIFIER_assume.exit.i
  %"955" = load i8* @"'side1Failed_History_1", align 1
  %"956" = trunc i8 %"955" to i1
  %"957" = zext i1 %"956" to i8
  %"958" = trunc i8 %"957" to i1
  br i1 %"958", label %main_bb263, label %main_bb267

main_bb263:                                       ; preds = %main_bb262
  %"959" = load i8* @"'side2Failed_History_1", align 1
  %"960" = trunc i8 %"959" to i1
  %"961" = zext i1 %"960" to i8
  %"962" = trunc i8 %"961" to i1
  br i1 %"962", label %main_bb267, label %main_bb264

main_bb264:                                       ; preds = %main_bb263
  %"963" = load i8* @"'active_side_History_0", align 1
  %"964" = sext i8 %"963" to i32
  %"965" = icmp eq i32 %"964", 2
  br i1 %"965", label %main_bb265, label %main_check.exit

main_bb265:                                       ; preds = %main_bb264
  %"966" = load i8* @"'side2Failed_History_0", align 1
  %"967" = trunc i8 %"966" to i1
  %"968" = zext i1 %"967" to i8
  %"969" = trunc i8 %"968" to i1
  br i1 %"969", label %main_bb267, label %main_bb266

main_bb266:                                       ; preds = %main_bb265
  %"970" = load i8* @"'side2_written", align 1
  %"971" = sext i8 %"970" to i32
  %"972" = icmp eq i32 %"971", 1
  br i1 %"972", label %main_bb267, label %main_check.exit

main_bb267:                                       ; preds = %main_bb266, %main_bb265, %main_bb263, %main_bb262
  %"973" = load i8* @"'side1Failed_History_1", align 1
  %"974" = trunc i8 %"973" to i1
  %"975" = zext i1 %"974" to i8
  %"976" = trunc i8 %"975" to i1
  br i1 %"976", label %main_bb272, label %main_bb268

main_bb268:                                       ; preds = %main_bb267
  %"977" = load i8* @"'side2Failed_History_1", align 1
  %"978" = trunc i8 %"977" to i1
  %"979" = zext i1 %"978" to i8
  %"980" = trunc i8 %"979" to i1
  br i1 %"980", label %main_bb269, label %main_bb272

main_bb269:                                       ; preds = %main_bb268
  %"981" = load i8* @"'active_side_History_0", align 1
  %"982" = sext i8 %"981" to i32
  %"983" = icmp eq i32 %"982", 1
  br i1 %"983", label %main_bb270, label %main_check.exit

main_bb270:                                       ; preds = %main_bb269
  %"984" = load i8* @"'side1Failed_History_0", align 1
  %"985" = trunc i8 %"984" to i1
  %"986" = zext i1 %"985" to i8
  %"987" = trunc i8 %"986" to i1
  br i1 %"987", label %main_bb272, label %main_bb271

main_bb271:                                       ; preds = %main_bb270
  %"988" = load i8* @"'side1_written", align 1
  %"989" = sext i8 %"988" to i32
  %"990" = icmp eq i32 %"989", 1
  br i1 %"990", label %main_bb272, label %main_check.exit

main_bb272:                                       ; preds = %main_bb271, %main_bb270, %main_bb268, %main_bb267
  %"991" = load i8* @"'active_side_History_2", align 1
  %"992" = sext i8 %"991" to i32
  %"993" = icmp sle i32 %"992", -2
  %"994" = load i8* @"'manual_selection_History_2", align 1
  %"995" = icmp ne i8 %"994", 0
  %or.cond.i = or i1 %"993", %"995"
  br i1 %or.cond.i, label %main_bb276, label %main_bb273

main_bb273:                                       ; preds = %main_bb272
  %"996" = load i8* @"'side1Failed_History_2", align 1
  %"997" = trunc i8 %"996" to i1
  %"998" = zext i1 %"997" to i8
  %"999" = load i8* @"'side1Failed_History_1", align 1
  %"1000" = trunc i8 %"999" to i1
  %"1001" = zext i1 %"1000" to i8
  %"1002" = trunc i8 %"998" to i1
  %"1003" = zext i1 %"1002" to i32
  %"1004" = trunc i8 %"1001" to i1
  %"1005" = zext i1 %"1004" to i32
  %"1006" = icmp eq i32 %"1003", %"1005"
  br i1 %"1006", label %main_bb274, label %main_bb276

main_bb274:                                       ; preds = %main_bb273
  %"1007" = load i8* @"'side2Failed_History_2", align 1
  %"1008" = trunc i8 %"1007" to i1
  %"1009" = zext i1 %"1008" to i8
  %"1010" = load i8* @"'side2Failed_History_1", align 1
  %"1011" = trunc i8 %"1010" to i1
  %"1012" = zext i1 %"1011" to i8
  %"1013" = trunc i8 %"1009" to i1
  %"1014" = zext i1 %"1013" to i32
  %"1015" = trunc i8 %"1012" to i1
  %"1016" = zext i1 %"1015" to i32
  %"1017" = icmp eq i32 %"1014", %"1016"
  br i1 %"1017", label %main_bb275, label %main_bb276

main_bb275:                                       ; preds = %main_bb274
  %"1018" = load i8* @"'active_side_History_1", align 1
  %"1019" = load i8* @"'active_side_History_0", align 1
  %"1020" = sext i8 %"1018" to i32
  %"1021" = sext i8 %"1019" to i32
  %"1022" = icmp eq i32 %"1020", %"1021"
  br i1 %"1022", label %main_bb276, label %main_check.exit

main_bb276:                                       ; preds = %main_bb275, %main_bb274, %main_bb273, %main_bb272
  br label %main_check.exit

main_check.exit:                                  ; preds = %main_bb257, %main_bb259, %main_bb261, %main_bb264, %main_bb266, %main_bb269, %main_bb271, %main_bb275, %main_bb276
  %.0.i2 = phi i32 [ 1, %main_bb276 ], [ 0, %main_bb257 ], [ 0, %main_bb259 ], [ 0, %main_bb261 ], [ 0, %main_bb264 ], [ 0, %main_bb266 ], [ 0, %main_bb269 ], [ 0, %main_bb271 ], [ 0, %main_bb275 ]
  %"1023" = icmp ne i32 %.0.i2, 0
  %"1024" = zext i1 %"1023" to i8
  %"1025" = trunc i8 %"1024" to i1
  br i1 %"1025", label %main_assert.exit, label %main_bb277

main_assert.exit:                                 ; preds = %main_check.exit
  %"1026" = add nsw i32 %i2.0, 1
  br label %main_bb177

main_bb277:                                       ; preds = %main_check.exit
  call void (...)* @__VERIFIER_error() #3
  unreachable

main_bb278:                                       ; preds = %main_bb177
  ret i32 0
}

declare zeroext i1 @__VERIFIER_nondet__Bool() #1

declare signext i8 @__VERIFIER_nondet_msg_t() #1

declare signext i8 @__VERIFIER_nondet_int8_t() #1

; Function Attrs: noreturn
declare void @__VERIFIER_error(...) #2

declare i8 @__kittel_nondef.0()

declare i1 @__kittel_nondef.1()

declare i32 @__kittel_nondef.2()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind }
attributes #4 = { noreturn }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

