; ModuleID = 'Benchmarks/TermCOMP/C/SV-COMP_Mixed_Categories/token_ring.05_false-unreach-call_false-termination.cil/token_ring.05_false-unreach-call_false-termination.cil.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"'m_pc" = global i32 0, align 4
@"'t1_pc" = global i32 0, align 4
@"'t2_pc" = global i32 0, align 4
@"'t3_pc" = global i32 0, align 4
@"'t4_pc" = global i32 0, align 4
@"'t5_pc" = global i32 0, align 4
@"'M_E" = global i32 2, align 4
@"'T1_E" = global i32 2, align 4
@"'T2_E" = global i32 2, align 4
@"'T3_E" = global i32 2, align 4
@"'T4_E" = global i32 2, align 4
@"'T5_E" = global i32 2, align 4
@"'E_M" = global i32 2, align 4
@"'E_1" = global i32 2, align 4
@"'E_2" = global i32 2, align 4
@"'E_3" = global i32 2, align 4
@"'E_4" = global i32 2, align 4
@"'E_5" = global i32 2, align 4
@"'token" = common global i32 0, align 4
@"'local" = common global i32 0, align 4
@"'m_st" = common global i32 0, align 4
@"'t1_st" = common global i32 0, align 4
@"'t2_st" = common global i32 0, align 4
@"'t3_st" = common global i32 0, align 4
@"'t4_st" = common global i32 0, align 4
@"'t5_st" = common global i32 0, align 4
@"'m_i" = common global i32 0, align 4
@"'t1_i" = common global i32 0, align 4
@"'t2_i" = common global i32 0, align 4
@"'t3_i" = common global i32 0, align 4
@"'t4_i" = common global i32 0, align 4
@"'t5_i" = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define void @error() #0 {
error_bb0:
  call void (...)* @__VERIFIER_error() #3
  unreachable
}

; Function Attrs: noreturn
declare void @__VERIFIER_error(...) #1

; Function Attrs: nounwind uwtable
define void @master() #0 {
master_bb1:
  %"0" = call i32 @__kittel_nondef.0()
  %"1" = load i32* @"'m_pc", align 4
  %"2" = icmp ne i32 %"1", 0
  %"3" = load i32* @"'m_pc", align 4
  %"4" = icmp eq i32 %"3", 1
  %or.cond = and i1 %"2", %"4"
  br i1 %or.cond, label %master_bb2, label %master_bb8

master_bb2:                                       ; preds = %master_bb1
  %"5" = load i32* @"'token", align 4
  %"6" = load i32* @"'local", align 4
  %"7" = add nsw i32 %"6", 5
  %"8" = icmp ne i32 %"5", %"7"
  br i1 %"8", label %master_bb3, label %master_bb4

master_bb3:                                       ; preds = %master_bb2
  call void (...)* @__VERIFIER_error() #4
  unreachable

master_bb4:                                       ; preds = %master_bb2
  %"9" = icmp sle i32 %"0", 5
  br i1 %"9", label %master_bb5, label %master_bb6

master_bb5:                                       ; preds = %master_bb4
  br label %master_bb6

master_bb6:                                       ; preds = %master_bb5, %master_bb4
  %"10" = icmp sle i32 %"0", 5
  %"11" = icmp sge i32 %"0", 5
  %or.cond3 = and i1 %"10", %"11"
  %"12" = icmp eq i32 %"0", 5
  %or.cond4 = and i1 %or.cond3, %"12"
  br i1 %or.cond4, label %master_bb7, label %master_bb8

master_bb7:                                       ; preds = %master_bb6
  call void (...)* @__VERIFIER_error() #4
  unreachable

master_bb8:                                       ; preds = %master_bb1, %master_bb6
  %"13" = call i32 (...)* @__VERIFIER_nondet_int()
  store i32 %"13", i32* @"'token", align 4
  %"14" = load i32* @"'token", align 4
  store i32 %"14", i32* @"'local", align 4
  store i32 1, i32* @"'E_1", align 4
  %"15" = load i32* @"'m_pc", align 4
  %"16" = icmp eq i32 %"15", 1
  %"17" = load i32* @"'E_M", align 4
  %"18" = icmp eq i32 %"17", 1
  %or.cond.i.i.i = and i1 %"16", %"18"
  br i1 %or.cond.i.i.i, label %master_bb9, label %master_bb10

master_bb9:                                       ; preds = %master_bb8
  store i32 0, i32* @"'m_st", align 4
  br label %master_bb10

master_bb10:                                      ; preds = %master_bb9, %master_bb8
  %"19" = load i32* @"'t1_pc", align 4
  %"20" = icmp eq i32 %"19", 1
  %"21" = load i32* @"'E_1", align 4
  %"22" = icmp eq i32 %"21", 1
  %or.cond.i9.i.i = and i1 %"20", %"22"
  br i1 %or.cond.i9.i.i, label %master_bb11, label %master_bb12

master_bb11:                                      ; preds = %master_bb10
  store i32 0, i32* @"'t1_st", align 4
  br label %master_bb12

master_bb12:                                      ; preds = %master_bb11, %master_bb10
  %"23" = load i32* @"'t2_pc", align 4
  %"24" = icmp eq i32 %"23", 1
  %"25" = load i32* @"'E_2", align 4
  %"26" = icmp eq i32 %"25", 1
  %or.cond.i7.i.i = and i1 %"24", %"26"
  br i1 %or.cond.i7.i.i, label %master_bb13, label %master_bb14

master_bb13:                                      ; preds = %master_bb12
  store i32 0, i32* @"'t2_st", align 4
  br label %master_bb14

master_bb14:                                      ; preds = %master_bb13, %master_bb12
  %"27" = load i32* @"'t3_pc", align 4
  %"28" = icmp eq i32 %"27", 1
  %"29" = load i32* @"'E_3", align 4
  %"30" = icmp eq i32 %"29", 1
  %or.cond.i5.i.i = and i1 %"28", %"30"
  br i1 %or.cond.i5.i.i, label %master_bb15, label %master_bb16

master_bb15:                                      ; preds = %master_bb14
  store i32 0, i32* @"'t3_st", align 4
  br label %master_bb16

master_bb16:                                      ; preds = %master_bb15, %master_bb14
  %"31" = load i32* @"'t4_pc", align 4
  %"32" = icmp eq i32 %"31", 1
  %"33" = load i32* @"'E_4", align 4
  %"34" = icmp eq i32 %"33", 1
  %or.cond.i3.i.i = and i1 %"32", %"34"
  br i1 %or.cond.i3.i.i, label %master_bb17, label %master_bb18

master_bb17:                                      ; preds = %master_bb16
  store i32 0, i32* @"'t4_st", align 4
  br label %master_bb18

master_bb18:                                      ; preds = %master_bb17, %master_bb16
  %"35" = load i32* @"'t5_pc", align 4
  %"36" = icmp eq i32 %"35", 1
  %"37" = load i32* @"'E_5", align 4
  %"38" = icmp eq i32 %"37", 1
  %or.cond.i1.i.i = and i1 %"36", %"38"
  br i1 %or.cond.i1.i.i, label %master_bb19, label %master_immediate_notify.exit

master_bb19:                                      ; preds = %master_bb18
  store i32 0, i32* @"'t5_st", align 4
  br label %master_immediate_notify.exit

master_immediate_notify.exit:                     ; preds = %master_bb18, %master_bb19
  store i32 2, i32* @"'E_1", align 4
  store i32 1, i32* @"'m_pc", align 4
  store i32 2, i32* @"'m_st", align 4
  ret void
}

declare i32 @__VERIFIER_nondet_int(...) #2

; Function Attrs: nounwind uwtable
define void @immediate_notify() #0 {
immediate_notify_bb20:
  %"39" = load i32* @"'m_pc", align 4
  %"40" = icmp eq i32 %"39", 1
  %"41" = load i32* @"'E_M", align 4
  %"42" = icmp eq i32 %"41", 1
  %or.cond.i.i = and i1 %"40", %"42"
  br i1 %or.cond.i.i, label %immediate_notify_bb21, label %immediate_notify_bb22

immediate_notify_bb21:                            ; preds = %immediate_notify_bb20
  store i32 0, i32* @"'m_st", align 4
  br label %immediate_notify_bb22

immediate_notify_bb22:                            ; preds = %immediate_notify_bb21, %immediate_notify_bb20
  %"43" = load i32* @"'t1_pc", align 4
  %"44" = icmp eq i32 %"43", 1
  %"45" = load i32* @"'E_1", align 4
  %"46" = icmp eq i32 %"45", 1
  %or.cond.i9.i = and i1 %"44", %"46"
  br i1 %or.cond.i9.i, label %immediate_notify_bb23, label %immediate_notify_bb24

immediate_notify_bb23:                            ; preds = %immediate_notify_bb22
  store i32 0, i32* @"'t1_st", align 4
  br label %immediate_notify_bb24

immediate_notify_bb24:                            ; preds = %immediate_notify_bb23, %immediate_notify_bb22
  %"47" = load i32* @"'t2_pc", align 4
  %"48" = icmp eq i32 %"47", 1
  %"49" = load i32* @"'E_2", align 4
  %"50" = icmp eq i32 %"49", 1
  %or.cond.i7.i = and i1 %"48", %"50"
  br i1 %or.cond.i7.i, label %immediate_notify_bb25, label %immediate_notify_bb26

immediate_notify_bb25:                            ; preds = %immediate_notify_bb24
  store i32 0, i32* @"'t2_st", align 4
  br label %immediate_notify_bb26

immediate_notify_bb26:                            ; preds = %immediate_notify_bb25, %immediate_notify_bb24
  %"51" = load i32* @"'t3_pc", align 4
  %"52" = icmp eq i32 %"51", 1
  %"53" = load i32* @"'E_3", align 4
  %"54" = icmp eq i32 %"53", 1
  %or.cond.i5.i = and i1 %"52", %"54"
  br i1 %or.cond.i5.i, label %immediate_notify_bb27, label %immediate_notify_bb28

immediate_notify_bb27:                            ; preds = %immediate_notify_bb26
  store i32 0, i32* @"'t3_st", align 4
  br label %immediate_notify_bb28

immediate_notify_bb28:                            ; preds = %immediate_notify_bb27, %immediate_notify_bb26
  %"55" = load i32* @"'t4_pc", align 4
  %"56" = icmp eq i32 %"55", 1
  %"57" = load i32* @"'E_4", align 4
  %"58" = icmp eq i32 %"57", 1
  %or.cond.i3.i = and i1 %"56", %"58"
  br i1 %or.cond.i3.i, label %immediate_notify_bb29, label %immediate_notify_bb30

immediate_notify_bb29:                            ; preds = %immediate_notify_bb28
  store i32 0, i32* @"'t4_st", align 4
  br label %immediate_notify_bb30

immediate_notify_bb30:                            ; preds = %immediate_notify_bb29, %immediate_notify_bb28
  %"59" = load i32* @"'t5_pc", align 4
  %"60" = icmp eq i32 %"59", 1
  %"61" = load i32* @"'E_5", align 4
  %"62" = icmp eq i32 %"61", 1
  %or.cond.i1.i = and i1 %"60", %"62"
  br i1 %or.cond.i1.i, label %immediate_notify_bb31, label %immediate_notify_activate_threads.exit

immediate_notify_bb31:                            ; preds = %immediate_notify_bb30
  store i32 0, i32* @"'t5_st", align 4
  br label %immediate_notify_activate_threads.exit

immediate_notify_activate_threads.exit:           ; preds = %immediate_notify_bb30, %immediate_notify_bb31
  ret void
}

; Function Attrs: nounwind uwtable
define void @transmit1() #0 {
transmit1_bb32:
  %"63" = load i32* @"'t1_pc", align 4
  %"64" = icmp ne i32 %"63", 0
  %"65" = load i32* @"'t1_pc", align 4
  %"66" = icmp eq i32 %"65", 1
  %or.cond = and i1 %"64", %"66"
  br i1 %or.cond, label %transmit1_bb33, label %transmit1_bb45

transmit1_bb33:                                   ; preds = %transmit1_bb32
  %"67" = load i32* @"'token", align 4
  %"68" = add nsw i32 %"67", 1
  store i32 %"68", i32* @"'token", align 4
  store i32 1, i32* @"'E_2", align 4
  %"69" = load i32* @"'m_pc", align 4
  %"70" = icmp eq i32 %"69", 1
  %"71" = load i32* @"'E_M", align 4
  %"72" = icmp eq i32 %"71", 1
  %or.cond.i.i.i = and i1 %"70", %"72"
  br i1 %or.cond.i.i.i, label %transmit1_bb34, label %transmit1_bb35

transmit1_bb34:                                   ; preds = %transmit1_bb33
  store i32 0, i32* @"'m_st", align 4
  br label %transmit1_bb35

transmit1_bb35:                                   ; preds = %transmit1_bb34, %transmit1_bb33
  %"73" = load i32* @"'t1_pc", align 4
  %"74" = icmp eq i32 %"73", 1
  %"75" = load i32* @"'E_1", align 4
  %"76" = icmp eq i32 %"75", 1
  %or.cond.i9.i.i = and i1 %"74", %"76"
  br i1 %or.cond.i9.i.i, label %transmit1_bb36, label %transmit1_bb37

transmit1_bb36:                                   ; preds = %transmit1_bb35
  store i32 0, i32* @"'t1_st", align 4
  br label %transmit1_bb37

transmit1_bb37:                                   ; preds = %transmit1_bb36, %transmit1_bb35
  %"77" = load i32* @"'t2_pc", align 4
  %"78" = icmp eq i32 %"77", 1
  %"79" = load i32* @"'E_2", align 4
  %"80" = icmp eq i32 %"79", 1
  %or.cond.i7.i.i = and i1 %"78", %"80"
  br i1 %or.cond.i7.i.i, label %transmit1_bb38, label %transmit1_bb39

transmit1_bb38:                                   ; preds = %transmit1_bb37
  store i32 0, i32* @"'t2_st", align 4
  br label %transmit1_bb39

transmit1_bb39:                                   ; preds = %transmit1_bb38, %transmit1_bb37
  %"81" = load i32* @"'t3_pc", align 4
  %"82" = icmp eq i32 %"81", 1
  %"83" = load i32* @"'E_3", align 4
  %"84" = icmp eq i32 %"83", 1
  %or.cond.i5.i.i = and i1 %"82", %"84"
  br i1 %or.cond.i5.i.i, label %transmit1_bb40, label %transmit1_bb41

transmit1_bb40:                                   ; preds = %transmit1_bb39
  store i32 0, i32* @"'t3_st", align 4
  br label %transmit1_bb41

transmit1_bb41:                                   ; preds = %transmit1_bb40, %transmit1_bb39
  %"85" = load i32* @"'t4_pc", align 4
  %"86" = icmp eq i32 %"85", 1
  %"87" = load i32* @"'E_4", align 4
  %"88" = icmp eq i32 %"87", 1
  %or.cond.i3.i.i = and i1 %"86", %"88"
  br i1 %or.cond.i3.i.i, label %transmit1_bb42, label %transmit1_bb43

transmit1_bb42:                                   ; preds = %transmit1_bb41
  store i32 0, i32* @"'t4_st", align 4
  br label %transmit1_bb43

transmit1_bb43:                                   ; preds = %transmit1_bb42, %transmit1_bb41
  %"89" = load i32* @"'t5_pc", align 4
  %"90" = icmp eq i32 %"89", 1
  %"91" = load i32* @"'E_5", align 4
  %"92" = icmp eq i32 %"91", 1
  %or.cond.i1.i.i = and i1 %"90", %"92"
  br i1 %or.cond.i1.i.i, label %transmit1_bb44, label %transmit1_immediate_notify.exit

transmit1_bb44:                                   ; preds = %transmit1_bb43
  store i32 0, i32* @"'t5_st", align 4
  br label %transmit1_immediate_notify.exit

transmit1_immediate_notify.exit:                  ; preds = %transmit1_bb43, %transmit1_bb44
  store i32 2, i32* @"'E_2", align 4
  br label %transmit1_bb45

transmit1_bb45:                                   ; preds = %transmit1_bb32, %transmit1_immediate_notify.exit
  store i32 1, i32* @"'t1_pc", align 4
  store i32 2, i32* @"'t1_st", align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @transmit2() #0 {
transmit2_bb46:
  %"93" = load i32* @"'t2_pc", align 4
  %"94" = icmp ne i32 %"93", 0
  %"95" = load i32* @"'t2_pc", align 4
  %"96" = icmp eq i32 %"95", 1
  %or.cond = and i1 %"94", %"96"
  br i1 %or.cond, label %transmit2_bb47, label %transmit2_bb59

transmit2_bb47:                                   ; preds = %transmit2_bb46
  %"97" = load i32* @"'token", align 4
  %"98" = add nsw i32 %"97", 1
  store i32 %"98", i32* @"'token", align 4
  store i32 1, i32* @"'E_3", align 4
  %"99" = load i32* @"'m_pc", align 4
  %"100" = icmp eq i32 %"99", 1
  %"101" = load i32* @"'E_M", align 4
  %"102" = icmp eq i32 %"101", 1
  %or.cond.i.i.i = and i1 %"100", %"102"
  br i1 %or.cond.i.i.i, label %transmit2_bb48, label %transmit2_bb49

transmit2_bb48:                                   ; preds = %transmit2_bb47
  store i32 0, i32* @"'m_st", align 4
  br label %transmit2_bb49

transmit2_bb49:                                   ; preds = %transmit2_bb48, %transmit2_bb47
  %"103" = load i32* @"'t1_pc", align 4
  %"104" = icmp eq i32 %"103", 1
  %"105" = load i32* @"'E_1", align 4
  %"106" = icmp eq i32 %"105", 1
  %or.cond.i9.i.i = and i1 %"104", %"106"
  br i1 %or.cond.i9.i.i, label %transmit2_bb50, label %transmit2_bb51

transmit2_bb50:                                   ; preds = %transmit2_bb49
  store i32 0, i32* @"'t1_st", align 4
  br label %transmit2_bb51

transmit2_bb51:                                   ; preds = %transmit2_bb50, %transmit2_bb49
  %"107" = load i32* @"'t2_pc", align 4
  %"108" = icmp eq i32 %"107", 1
  %"109" = load i32* @"'E_2", align 4
  %"110" = icmp eq i32 %"109", 1
  %or.cond.i7.i.i = and i1 %"108", %"110"
  br i1 %or.cond.i7.i.i, label %transmit2_bb52, label %transmit2_bb53

transmit2_bb52:                                   ; preds = %transmit2_bb51
  store i32 0, i32* @"'t2_st", align 4
  br label %transmit2_bb53

transmit2_bb53:                                   ; preds = %transmit2_bb52, %transmit2_bb51
  %"111" = load i32* @"'t3_pc", align 4
  %"112" = icmp eq i32 %"111", 1
  %"113" = load i32* @"'E_3", align 4
  %"114" = icmp eq i32 %"113", 1
  %or.cond.i5.i.i = and i1 %"112", %"114"
  br i1 %or.cond.i5.i.i, label %transmit2_bb54, label %transmit2_bb55

transmit2_bb54:                                   ; preds = %transmit2_bb53
  store i32 0, i32* @"'t3_st", align 4
  br label %transmit2_bb55

transmit2_bb55:                                   ; preds = %transmit2_bb54, %transmit2_bb53
  %"115" = load i32* @"'t4_pc", align 4
  %"116" = icmp eq i32 %"115", 1
  %"117" = load i32* @"'E_4", align 4
  %"118" = icmp eq i32 %"117", 1
  %or.cond.i3.i.i = and i1 %"116", %"118"
  br i1 %or.cond.i3.i.i, label %transmit2_bb56, label %transmit2_bb57

transmit2_bb56:                                   ; preds = %transmit2_bb55
  store i32 0, i32* @"'t4_st", align 4
  br label %transmit2_bb57

transmit2_bb57:                                   ; preds = %transmit2_bb56, %transmit2_bb55
  %"119" = load i32* @"'t5_pc", align 4
  %"120" = icmp eq i32 %"119", 1
  %"121" = load i32* @"'E_5", align 4
  %"122" = icmp eq i32 %"121", 1
  %or.cond.i1.i.i = and i1 %"120", %"122"
  br i1 %or.cond.i1.i.i, label %transmit2_bb58, label %transmit2_immediate_notify.exit

transmit2_bb58:                                   ; preds = %transmit2_bb57
  store i32 0, i32* @"'t5_st", align 4
  br label %transmit2_immediate_notify.exit

transmit2_immediate_notify.exit:                  ; preds = %transmit2_bb57, %transmit2_bb58
  store i32 2, i32* @"'E_3", align 4
  br label %transmit2_bb59

transmit2_bb59:                                   ; preds = %transmit2_bb46, %transmit2_immediate_notify.exit
  store i32 1, i32* @"'t2_pc", align 4
  store i32 2, i32* @"'t2_st", align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @transmit3() #0 {
transmit3_bb60:
  %"123" = load i32* @"'t3_pc", align 4
  %"124" = icmp ne i32 %"123", 0
  %"125" = load i32* @"'t3_pc", align 4
  %"126" = icmp eq i32 %"125", 1
  %or.cond = and i1 %"124", %"126"
  br i1 %or.cond, label %transmit3_bb61, label %transmit3_bb73

transmit3_bb61:                                   ; preds = %transmit3_bb60
  %"127" = load i32* @"'token", align 4
  %"128" = add nsw i32 %"127", 1
  store i32 %"128", i32* @"'token", align 4
  store i32 1, i32* @"'E_4", align 4
  %"129" = load i32* @"'m_pc", align 4
  %"130" = icmp eq i32 %"129", 1
  %"131" = load i32* @"'E_M", align 4
  %"132" = icmp eq i32 %"131", 1
  %or.cond.i.i.i = and i1 %"130", %"132"
  br i1 %or.cond.i.i.i, label %transmit3_bb62, label %transmit3_bb63

transmit3_bb62:                                   ; preds = %transmit3_bb61
  store i32 0, i32* @"'m_st", align 4
  br label %transmit3_bb63

transmit3_bb63:                                   ; preds = %transmit3_bb62, %transmit3_bb61
  %"133" = load i32* @"'t1_pc", align 4
  %"134" = icmp eq i32 %"133", 1
  %"135" = load i32* @"'E_1", align 4
  %"136" = icmp eq i32 %"135", 1
  %or.cond.i9.i.i = and i1 %"134", %"136"
  br i1 %or.cond.i9.i.i, label %transmit3_bb64, label %transmit3_bb65

transmit3_bb64:                                   ; preds = %transmit3_bb63
  store i32 0, i32* @"'t1_st", align 4
  br label %transmit3_bb65

transmit3_bb65:                                   ; preds = %transmit3_bb64, %transmit3_bb63
  %"137" = load i32* @"'t2_pc", align 4
  %"138" = icmp eq i32 %"137", 1
  %"139" = load i32* @"'E_2", align 4
  %"140" = icmp eq i32 %"139", 1
  %or.cond.i7.i.i = and i1 %"138", %"140"
  br i1 %or.cond.i7.i.i, label %transmit3_bb66, label %transmit3_bb67

transmit3_bb66:                                   ; preds = %transmit3_bb65
  store i32 0, i32* @"'t2_st", align 4
  br label %transmit3_bb67

transmit3_bb67:                                   ; preds = %transmit3_bb66, %transmit3_bb65
  %"141" = load i32* @"'t3_pc", align 4
  %"142" = icmp eq i32 %"141", 1
  %"143" = load i32* @"'E_3", align 4
  %"144" = icmp eq i32 %"143", 1
  %or.cond.i5.i.i = and i1 %"142", %"144"
  br i1 %or.cond.i5.i.i, label %transmit3_bb68, label %transmit3_bb69

transmit3_bb68:                                   ; preds = %transmit3_bb67
  store i32 0, i32* @"'t3_st", align 4
  br label %transmit3_bb69

transmit3_bb69:                                   ; preds = %transmit3_bb68, %transmit3_bb67
  %"145" = load i32* @"'t4_pc", align 4
  %"146" = icmp eq i32 %"145", 1
  %"147" = load i32* @"'E_4", align 4
  %"148" = icmp eq i32 %"147", 1
  %or.cond.i3.i.i = and i1 %"146", %"148"
  br i1 %or.cond.i3.i.i, label %transmit3_bb70, label %transmit3_bb71

transmit3_bb70:                                   ; preds = %transmit3_bb69
  store i32 0, i32* @"'t4_st", align 4
  br label %transmit3_bb71

transmit3_bb71:                                   ; preds = %transmit3_bb70, %transmit3_bb69
  %"149" = load i32* @"'t5_pc", align 4
  %"150" = icmp eq i32 %"149", 1
  %"151" = load i32* @"'E_5", align 4
  %"152" = icmp eq i32 %"151", 1
  %or.cond.i1.i.i = and i1 %"150", %"152"
  br i1 %or.cond.i1.i.i, label %transmit3_bb72, label %transmit3_immediate_notify.exit

transmit3_bb72:                                   ; preds = %transmit3_bb71
  store i32 0, i32* @"'t5_st", align 4
  br label %transmit3_immediate_notify.exit

transmit3_immediate_notify.exit:                  ; preds = %transmit3_bb71, %transmit3_bb72
  store i32 2, i32* @"'E_4", align 4
  br label %transmit3_bb73

transmit3_bb73:                                   ; preds = %transmit3_bb60, %transmit3_immediate_notify.exit
  store i32 1, i32* @"'t3_pc", align 4
  store i32 2, i32* @"'t3_st", align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @transmit4() #0 {
transmit4_bb74:
  %"153" = load i32* @"'t4_pc", align 4
  %"154" = icmp ne i32 %"153", 0
  %"155" = load i32* @"'t4_pc", align 4
  %"156" = icmp eq i32 %"155", 1
  %or.cond = and i1 %"154", %"156"
  br i1 %or.cond, label %transmit4_bb75, label %transmit4_bb87

transmit4_bb75:                                   ; preds = %transmit4_bb74
  %"157" = load i32* @"'token", align 4
  %"158" = add nsw i32 %"157", 1
  store i32 %"158", i32* @"'token", align 4
  store i32 1, i32* @"'E_5", align 4
  %"159" = load i32* @"'m_pc", align 4
  %"160" = icmp eq i32 %"159", 1
  %"161" = load i32* @"'E_M", align 4
  %"162" = icmp eq i32 %"161", 1
  %or.cond.i.i.i = and i1 %"160", %"162"
  br i1 %or.cond.i.i.i, label %transmit4_bb76, label %transmit4_bb77

transmit4_bb76:                                   ; preds = %transmit4_bb75
  store i32 0, i32* @"'m_st", align 4
  br label %transmit4_bb77

transmit4_bb77:                                   ; preds = %transmit4_bb76, %transmit4_bb75
  %"163" = load i32* @"'t1_pc", align 4
  %"164" = icmp eq i32 %"163", 1
  %"165" = load i32* @"'E_1", align 4
  %"166" = icmp eq i32 %"165", 1
  %or.cond.i9.i.i = and i1 %"164", %"166"
  br i1 %or.cond.i9.i.i, label %transmit4_bb78, label %transmit4_bb79

transmit4_bb78:                                   ; preds = %transmit4_bb77
  store i32 0, i32* @"'t1_st", align 4
  br label %transmit4_bb79

transmit4_bb79:                                   ; preds = %transmit4_bb78, %transmit4_bb77
  %"167" = load i32* @"'t2_pc", align 4
  %"168" = icmp eq i32 %"167", 1
  %"169" = load i32* @"'E_2", align 4
  %"170" = icmp eq i32 %"169", 1
  %or.cond.i7.i.i = and i1 %"168", %"170"
  br i1 %or.cond.i7.i.i, label %transmit4_bb80, label %transmit4_bb81

transmit4_bb80:                                   ; preds = %transmit4_bb79
  store i32 0, i32* @"'t2_st", align 4
  br label %transmit4_bb81

transmit4_bb81:                                   ; preds = %transmit4_bb80, %transmit4_bb79
  %"171" = load i32* @"'t3_pc", align 4
  %"172" = icmp eq i32 %"171", 1
  %"173" = load i32* @"'E_3", align 4
  %"174" = icmp eq i32 %"173", 1
  %or.cond.i5.i.i = and i1 %"172", %"174"
  br i1 %or.cond.i5.i.i, label %transmit4_bb82, label %transmit4_bb83

transmit4_bb82:                                   ; preds = %transmit4_bb81
  store i32 0, i32* @"'t3_st", align 4
  br label %transmit4_bb83

transmit4_bb83:                                   ; preds = %transmit4_bb82, %transmit4_bb81
  %"175" = load i32* @"'t4_pc", align 4
  %"176" = icmp eq i32 %"175", 1
  %"177" = load i32* @"'E_4", align 4
  %"178" = icmp eq i32 %"177", 1
  %or.cond.i3.i.i = and i1 %"176", %"178"
  br i1 %or.cond.i3.i.i, label %transmit4_bb84, label %transmit4_bb85

transmit4_bb84:                                   ; preds = %transmit4_bb83
  store i32 0, i32* @"'t4_st", align 4
  br label %transmit4_bb85

transmit4_bb85:                                   ; preds = %transmit4_bb84, %transmit4_bb83
  %"179" = load i32* @"'t5_pc", align 4
  %"180" = icmp eq i32 %"179", 1
  %"181" = load i32* @"'E_5", align 4
  %"182" = icmp eq i32 %"181", 1
  %or.cond.i1.i.i = and i1 %"180", %"182"
  br i1 %or.cond.i1.i.i, label %transmit4_bb86, label %transmit4_immediate_notify.exit

transmit4_bb86:                                   ; preds = %transmit4_bb85
  store i32 0, i32* @"'t5_st", align 4
  br label %transmit4_immediate_notify.exit

transmit4_immediate_notify.exit:                  ; preds = %transmit4_bb85, %transmit4_bb86
  store i32 2, i32* @"'E_5", align 4
  br label %transmit4_bb87

transmit4_bb87:                                   ; preds = %transmit4_bb74, %transmit4_immediate_notify.exit
  store i32 1, i32* @"'t4_pc", align 4
  store i32 2, i32* @"'t4_st", align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @transmit5() #0 {
transmit5_bb88:
  %"183" = load i32* @"'t5_pc", align 4
  %"184" = icmp ne i32 %"183", 0
  %"185" = load i32* @"'t5_pc", align 4
  %"186" = icmp eq i32 %"185", 1
  %or.cond = and i1 %"184", %"186"
  br i1 %or.cond, label %transmit5_bb89, label %transmit5_bb101

transmit5_bb89:                                   ; preds = %transmit5_bb88
  %"187" = load i32* @"'token", align 4
  %"188" = add nsw i32 %"187", 1
  store i32 %"188", i32* @"'token", align 4
  store i32 1, i32* @"'E_M", align 4
  %"189" = load i32* @"'m_pc", align 4
  %"190" = icmp eq i32 %"189", 1
  %"191" = load i32* @"'E_M", align 4
  %"192" = icmp eq i32 %"191", 1
  %or.cond.i.i.i = and i1 %"190", %"192"
  br i1 %or.cond.i.i.i, label %transmit5_bb90, label %transmit5_bb91

transmit5_bb90:                                   ; preds = %transmit5_bb89
  store i32 0, i32* @"'m_st", align 4
  br label %transmit5_bb91

transmit5_bb91:                                   ; preds = %transmit5_bb90, %transmit5_bb89
  %"193" = load i32* @"'t1_pc", align 4
  %"194" = icmp eq i32 %"193", 1
  %"195" = load i32* @"'E_1", align 4
  %"196" = icmp eq i32 %"195", 1
  %or.cond.i9.i.i = and i1 %"194", %"196"
  br i1 %or.cond.i9.i.i, label %transmit5_bb92, label %transmit5_bb93

transmit5_bb92:                                   ; preds = %transmit5_bb91
  store i32 0, i32* @"'t1_st", align 4
  br label %transmit5_bb93

transmit5_bb93:                                   ; preds = %transmit5_bb92, %transmit5_bb91
  %"197" = load i32* @"'t2_pc", align 4
  %"198" = icmp eq i32 %"197", 1
  %"199" = load i32* @"'E_2", align 4
  %"200" = icmp eq i32 %"199", 1
  %or.cond.i7.i.i = and i1 %"198", %"200"
  br i1 %or.cond.i7.i.i, label %transmit5_bb94, label %transmit5_bb95

transmit5_bb94:                                   ; preds = %transmit5_bb93
  store i32 0, i32* @"'t2_st", align 4
  br label %transmit5_bb95

transmit5_bb95:                                   ; preds = %transmit5_bb94, %transmit5_bb93
  %"201" = load i32* @"'t3_pc", align 4
  %"202" = icmp eq i32 %"201", 1
  %"203" = load i32* @"'E_3", align 4
  %"204" = icmp eq i32 %"203", 1
  %or.cond.i5.i.i = and i1 %"202", %"204"
  br i1 %or.cond.i5.i.i, label %transmit5_bb96, label %transmit5_bb97

transmit5_bb96:                                   ; preds = %transmit5_bb95
  store i32 0, i32* @"'t3_st", align 4
  br label %transmit5_bb97

transmit5_bb97:                                   ; preds = %transmit5_bb96, %transmit5_bb95
  %"205" = load i32* @"'t4_pc", align 4
  %"206" = icmp eq i32 %"205", 1
  %"207" = load i32* @"'E_4", align 4
  %"208" = icmp eq i32 %"207", 1
  %or.cond.i3.i.i = and i1 %"206", %"208"
  br i1 %or.cond.i3.i.i, label %transmit5_bb98, label %transmit5_bb99

transmit5_bb98:                                   ; preds = %transmit5_bb97
  store i32 0, i32* @"'t4_st", align 4
  br label %transmit5_bb99

transmit5_bb99:                                   ; preds = %transmit5_bb98, %transmit5_bb97
  %"209" = load i32* @"'t5_pc", align 4
  %"210" = icmp eq i32 %"209", 1
  %"211" = load i32* @"'E_5", align 4
  %"212" = icmp eq i32 %"211", 1
  %or.cond.i1.i.i = and i1 %"210", %"212"
  br i1 %or.cond.i1.i.i, label %transmit5_bb100, label %transmit5_immediate_notify.exit

transmit5_bb100:                                  ; preds = %transmit5_bb99
  store i32 0, i32* @"'t5_st", align 4
  br label %transmit5_immediate_notify.exit

transmit5_immediate_notify.exit:                  ; preds = %transmit5_bb99, %transmit5_bb100
  store i32 2, i32* @"'E_M", align 4
  br label %transmit5_bb101

transmit5_bb101:                                  ; preds = %transmit5_bb88, %transmit5_immediate_notify.exit
  store i32 1, i32* @"'t5_pc", align 4
  store i32 2, i32* @"'t5_st", align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @is_master_triggered() #0 {
is_master_triggered_bb102:
  %"213" = load i32* @"'m_pc", align 4
  %"214" = icmp eq i32 %"213", 1
  %"215" = load i32* @"'E_M", align 4
  %"216" = icmp eq i32 %"215", 1
  %or.cond = and i1 %"214", %"216"
  %__retres1.0 = select i1 %or.cond, i32 1, i32 0
  ret i32 %__retres1.0
}

; Function Attrs: nounwind uwtable
define i32 @is_transmit1_triggered() #0 {
is_transmit1_triggered_bb103:
  %"217" = load i32* @"'t1_pc", align 4
  %"218" = icmp eq i32 %"217", 1
  %"219" = load i32* @"'E_1", align 4
  %"220" = icmp eq i32 %"219", 1
  %or.cond = and i1 %"218", %"220"
  %__retres1.0 = select i1 %or.cond, i32 1, i32 0
  ret i32 %__retres1.0
}

; Function Attrs: nounwind uwtable
define i32 @is_transmit2_triggered() #0 {
is_transmit2_triggered_bb104:
  %"221" = load i32* @"'t2_pc", align 4
  %"222" = icmp eq i32 %"221", 1
  %"223" = load i32* @"'E_2", align 4
  %"224" = icmp eq i32 %"223", 1
  %or.cond = and i1 %"222", %"224"
  %__retres1.0 = select i1 %or.cond, i32 1, i32 0
  ret i32 %__retres1.0
}

; Function Attrs: nounwind uwtable
define i32 @is_transmit3_triggered() #0 {
is_transmit3_triggered_bb105:
  %"225" = load i32* @"'t3_pc", align 4
  %"226" = icmp eq i32 %"225", 1
  %"227" = load i32* @"'E_3", align 4
  %"228" = icmp eq i32 %"227", 1
  %or.cond = and i1 %"226", %"228"
  %__retres1.0 = select i1 %or.cond, i32 1, i32 0
  ret i32 %__retres1.0
}

; Function Attrs: nounwind uwtable
define i32 @is_transmit4_triggered() #0 {
is_transmit4_triggered_bb106:
  %"229" = load i32* @"'t4_pc", align 4
  %"230" = icmp eq i32 %"229", 1
  %"231" = load i32* @"'E_4", align 4
  %"232" = icmp eq i32 %"231", 1
  %or.cond = and i1 %"230", %"232"
  %__retres1.0 = select i1 %or.cond, i32 1, i32 0
  ret i32 %__retres1.0
}

; Function Attrs: nounwind uwtable
define i32 @is_transmit5_triggered() #0 {
is_transmit5_triggered_bb107:
  %"233" = load i32* @"'t5_pc", align 4
  %"234" = icmp eq i32 %"233", 1
  %"235" = load i32* @"'E_5", align 4
  %"236" = icmp eq i32 %"235", 1
  %or.cond = and i1 %"234", %"236"
  %__retres1.0 = select i1 %or.cond, i32 1, i32 0
  ret i32 %__retres1.0
}

; Function Attrs: nounwind uwtable
define void @update_channels() #0 {
update_channels_bb108:
  ret void
}

; Function Attrs: nounwind uwtable
define void @init_threads() #0 {
init_threads_bb109:
  %"237" = load i32* @"'m_i", align 4
  %"238" = icmp eq i32 %"237", 1
  br i1 %"238", label %init_threads_bb110, label %init_threads_bb111

init_threads_bb110:                               ; preds = %init_threads_bb109
  store i32 0, i32* @"'m_st", align 4
  br label %init_threads_bb112

init_threads_bb111:                               ; preds = %init_threads_bb109
  store i32 2, i32* @"'m_st", align 4
  br label %init_threads_bb112

init_threads_bb112:                               ; preds = %init_threads_bb111, %init_threads_bb110
  %"239" = load i32* @"'t1_i", align 4
  %"240" = icmp eq i32 %"239", 1
  br i1 %"240", label %init_threads_bb113, label %init_threads_bb114

init_threads_bb113:                               ; preds = %init_threads_bb112
  store i32 0, i32* @"'t1_st", align 4
  br label %init_threads_bb115

init_threads_bb114:                               ; preds = %init_threads_bb112
  store i32 2, i32* @"'t1_st", align 4
  br label %init_threads_bb115

init_threads_bb115:                               ; preds = %init_threads_bb114, %init_threads_bb113
  %"241" = load i32* @"'t2_i", align 4
  %"242" = icmp eq i32 %"241", 1
  br i1 %"242", label %init_threads_bb116, label %init_threads_bb117

init_threads_bb116:                               ; preds = %init_threads_bb115
  store i32 0, i32* @"'t2_st", align 4
  br label %init_threads_bb118

init_threads_bb117:                               ; preds = %init_threads_bb115
  store i32 2, i32* @"'t2_st", align 4
  br label %init_threads_bb118

init_threads_bb118:                               ; preds = %init_threads_bb117, %init_threads_bb116
  %"243" = load i32* @"'t3_i", align 4
  %"244" = icmp eq i32 %"243", 1
  br i1 %"244", label %init_threads_bb119, label %init_threads_bb120

init_threads_bb119:                               ; preds = %init_threads_bb118
  store i32 0, i32* @"'t3_st", align 4
  br label %init_threads_bb121

init_threads_bb120:                               ; preds = %init_threads_bb118
  store i32 2, i32* @"'t3_st", align 4
  br label %init_threads_bb121

init_threads_bb121:                               ; preds = %init_threads_bb120, %init_threads_bb119
  %"245" = load i32* @"'t4_i", align 4
  %"246" = icmp eq i32 %"245", 1
  br i1 %"246", label %init_threads_bb122, label %init_threads_bb123

init_threads_bb122:                               ; preds = %init_threads_bb121
  store i32 0, i32* @"'t4_st", align 4
  br label %init_threads_bb124

init_threads_bb123:                               ; preds = %init_threads_bb121
  store i32 2, i32* @"'t4_st", align 4
  br label %init_threads_bb124

init_threads_bb124:                               ; preds = %init_threads_bb123, %init_threads_bb122
  %"247" = load i32* @"'t5_i", align 4
  %"248" = icmp eq i32 %"247", 1
  br i1 %"248", label %init_threads_bb125, label %init_threads_bb126

init_threads_bb125:                               ; preds = %init_threads_bb124
  store i32 0, i32* @"'t5_st", align 4
  br label %init_threads_bb127

init_threads_bb126:                               ; preds = %init_threads_bb124
  store i32 2, i32* @"'t5_st", align 4
  br label %init_threads_bb127

init_threads_bb127:                               ; preds = %init_threads_bb126, %init_threads_bb125
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @exists_runnable_thread() #0 {
exists_runnable_thread_bb128:
  %"249" = load i32* @"'m_st", align 4
  %"250" = icmp eq i32 %"249", 0
  %"251" = load i32* @"'t1_st", align 4
  %"252" = icmp eq i32 %"251", 0
  %or.cond = or i1 %"250", %"252"
  %"253" = load i32* @"'t2_st", align 4
  %"254" = icmp eq i32 %"253", 0
  %or.cond3 = or i1 %or.cond, %"254"
  %"255" = load i32* @"'t3_st", align 4
  %"256" = icmp eq i32 %"255", 0
  %or.cond5 = or i1 %or.cond3, %"256"
  %"257" = load i32* @"'t4_st", align 4
  %"258" = icmp eq i32 %"257", 0
  %or.cond7 = or i1 %or.cond5, %"258"
  %"259" = load i32* @"'t5_st", align 4
  %"260" = icmp eq i32 %"259", 0
  %or.cond9 = or i1 %or.cond7, %"260"
  %__retres1.0 = select i1 %or.cond9, i32 1, i32 0
  ret i32 %__retres1.0
}

; Function Attrs: nounwind uwtable
define void @eval() #0 {
eval_bb129:
  br label %eval_bb130

eval_bb130:                                       ; preds = %eval_bb211, %eval_transmit5.exit, %eval_bb210, %eval_bb129
  %"261" = load i32* @"'m_st", align 4
  %"262" = icmp eq i32 %"261", 0
  %"263" = load i32* @"'t1_st", align 4
  %"264" = icmp eq i32 %"263", 0
  %or.cond.i = or i1 %"262", %"264"
  %"265" = load i32* @"'t2_st", align 4
  %"266" = icmp eq i32 %"265", 0
  %or.cond3.i = or i1 %or.cond.i, %"266"
  %"267" = load i32* @"'t3_st", align 4
  %"268" = icmp eq i32 %"267", 0
  %or.cond5.i = or i1 %or.cond3.i, %"268"
  %"269" = load i32* @"'t4_st", align 4
  %"270" = icmp eq i32 %"269", 0
  %or.cond7.i = or i1 %or.cond5.i, %"270"
  %"271" = load i32* @"'t5_st", align 4
  %"272" = icmp eq i32 %"271", 0
  %or.cond9.i = or i1 %or.cond7.i, %"272"
  %__retres1.0.i = select i1 %or.cond9.i, i32 1, i32 0
  %"273" = icmp ne i32 %__retres1.0.i, 0
  br i1 %"273", label %eval_bb131, label %eval_bb225

eval_bb131:                                       ; preds = %eval_bb130
  %"274" = load i32* @"'m_st", align 4
  %"275" = icmp eq i32 %"274", 0
  br i1 %"275", label %eval_bb132, label %eval_bb150

eval_bb132:                                       ; preds = %eval_bb131
  %"276" = call i32 (...)* @__VERIFIER_nondet_int()
  %"277" = icmp ne i32 %"276", 0
  br i1 %"277", label %eval_bb133, label %eval_bb150

eval_bb133:                                       ; preds = %eval_bb132
  store i32 1, i32* @"'m_st", align 4
  %"278" = call i32 @__kittel_nondef.0() #5
  %"279" = load i32* @"'m_pc", align 4
  %"280" = icmp ne i32 %"279", 0
  %"281" = load i32* @"'m_pc", align 4
  %"282" = icmp eq i32 %"281", 1
  %or.cond.i34 = and i1 %"280", %"282"
  br i1 %or.cond.i34, label %eval_bb134, label %eval_bb138

eval_bb134:                                       ; preds = %eval_bb133
  %"283" = load i32* @"'token", align 4
  %"284" = load i32* @"'local", align 4
  %"285" = add nsw i32 %"284", 5
  %"286" = icmp ne i32 %"283", %"285"
  br i1 %"286", label %eval_bb135, label %eval_bb136

eval_bb135:                                       ; preds = %eval_bb134
  call void (...)* @__VERIFIER_error() #4
  unreachable

eval_bb136:                                       ; preds = %eval_bb134
  %"287" = icmp sle i32 %"278", 5
  %"288" = icmp sge i32 %"278", 5
  %or.cond3.i35 = and i1 %"287", %"288"
  %"289" = icmp eq i32 %"278", 5
  %or.cond4.i = and i1 %or.cond3.i35, %"289"
  br i1 %or.cond4.i, label %eval_bb137, label %eval_bb138

eval_bb137:                                       ; preds = %eval_bb136
  call void (...)* @__VERIFIER_error() #4
  unreachable

eval_bb138:                                       ; preds = %eval_bb136, %eval_bb133
  %"290" = call i32 (...)* @__VERIFIER_nondet_int() #5
  store i32 %"290", i32* @"'token", align 4
  %"291" = load i32* @"'token", align 4
  store i32 %"291", i32* @"'local", align 4
  store i32 1, i32* @"'E_1", align 4
  %"292" = load i32* @"'m_pc", align 4
  %"293" = icmp eq i32 %"292", 1
  %"294" = load i32* @"'E_M", align 4
  %"295" = icmp eq i32 %"294", 1
  %or.cond.i.i.i.i36 = and i1 %"293", %"295"
  br i1 %or.cond.i.i.i.i36, label %eval_bb139, label %eval_bb140

eval_bb139:                                       ; preds = %eval_bb138
  store i32 0, i32* @"'m_st", align 4
  br label %eval_bb140

eval_bb140:                                       ; preds = %eval_bb139, %eval_bb138
  %"296" = load i32* @"'t1_pc", align 4
  %"297" = icmp eq i32 %"296", 1
  %"298" = load i32* @"'E_1", align 4
  %"299" = icmp eq i32 %"298", 1
  %or.cond.i9.i.i.i37 = and i1 %"297", %"299"
  br i1 %or.cond.i9.i.i.i37, label %eval_bb141, label %eval_bb142

eval_bb141:                                       ; preds = %eval_bb140
  store i32 0, i32* @"'t1_st", align 4
  br label %eval_bb142

eval_bb142:                                       ; preds = %eval_bb141, %eval_bb140
  %"300" = load i32* @"'t2_pc", align 4
  %"301" = icmp eq i32 %"300", 1
  %"302" = load i32* @"'E_2", align 4
  %"303" = icmp eq i32 %"302", 1
  %or.cond.i7.i.i.i38 = and i1 %"301", %"303"
  br i1 %or.cond.i7.i.i.i38, label %eval_bb143, label %eval_bb144

eval_bb143:                                       ; preds = %eval_bb142
  store i32 0, i32* @"'t2_st", align 4
  br label %eval_bb144

eval_bb144:                                       ; preds = %eval_bb143, %eval_bb142
  %"304" = load i32* @"'t3_pc", align 4
  %"305" = icmp eq i32 %"304", 1
  %"306" = load i32* @"'E_3", align 4
  %"307" = icmp eq i32 %"306", 1
  %or.cond.i5.i.i.i39 = and i1 %"305", %"307"
  br i1 %or.cond.i5.i.i.i39, label %eval_bb145, label %eval_bb146

eval_bb145:                                       ; preds = %eval_bb144
  store i32 0, i32* @"'t3_st", align 4
  br label %eval_bb146

eval_bb146:                                       ; preds = %eval_bb145, %eval_bb144
  %"308" = load i32* @"'t4_pc", align 4
  %"309" = icmp eq i32 %"308", 1
  %"310" = load i32* @"'E_4", align 4
  %"311" = icmp eq i32 %"310", 1
  %or.cond.i3.i.i.i40 = and i1 %"309", %"311"
  br i1 %or.cond.i3.i.i.i40, label %eval_bb147, label %eval_bb148

eval_bb147:                                       ; preds = %eval_bb146
  store i32 0, i32* @"'t4_st", align 4
  br label %eval_bb148

eval_bb148:                                       ; preds = %eval_bb147, %eval_bb146
  %"312" = load i32* @"'t5_pc", align 4
  %"313" = icmp eq i32 %"312", 1
  %"314" = load i32* @"'E_5", align 4
  %"315" = icmp eq i32 %"314", 1
  %or.cond.i1.i.i.i41 = and i1 %"313", %"315"
  br i1 %or.cond.i1.i.i.i41, label %eval_bb149, label %eval_master.exit

eval_bb149:                                       ; preds = %eval_bb148
  store i32 0, i32* @"'t5_st", align 4
  br label %eval_master.exit

eval_master.exit:                                 ; preds = %eval_bb148, %eval_bb149
  store i32 2, i32* @"'E_1", align 4
  store i32 1, i32* @"'m_pc", align 4
  store i32 2, i32* @"'m_st", align 4
  br label %eval_bb150

eval_bb150:                                       ; preds = %eval_bb131, %eval_master.exit, %eval_bb132
  %"316" = load i32* @"'t1_st", align 4
  %"317" = icmp eq i32 %"316", 0
  br i1 %"317", label %eval_bb151, label %eval_bb165

eval_bb151:                                       ; preds = %eval_bb150
  %"318" = call i32 (...)* @__VERIFIER_nondet_int()
  %"319" = icmp ne i32 %"318", 0
  br i1 %"319", label %eval_bb152, label %eval_bb165

eval_bb152:                                       ; preds = %eval_bb151
  store i32 1, i32* @"'t1_st", align 4
  %"320" = load i32* @"'t1_pc", align 4
  %"321" = icmp ne i32 %"320", 0
  %"322" = load i32* @"'t1_pc", align 4
  %"323" = icmp eq i32 %"322", 1
  %or.cond.i26 = and i1 %"321", %"323"
  br i1 %or.cond.i26, label %eval_bb153, label %eval_transmit1.exit

eval_bb153:                                       ; preds = %eval_bb152
  %"324" = load i32* @"'token", align 4
  %"325" = add nsw i32 %"324", 1
  store i32 %"325", i32* @"'token", align 4
  store i32 1, i32* @"'E_2", align 4
  %"326" = load i32* @"'m_pc", align 4
  %"327" = icmp eq i32 %"326", 1
  %"328" = load i32* @"'E_M", align 4
  %"329" = icmp eq i32 %"328", 1
  %or.cond.i.i.i.i27 = and i1 %"327", %"329"
  br i1 %or.cond.i.i.i.i27, label %eval_bb154, label %eval_bb155

eval_bb154:                                       ; preds = %eval_bb153
  store i32 0, i32* @"'m_st", align 4
  br label %eval_bb155

eval_bb155:                                       ; preds = %eval_bb154, %eval_bb153
  %"330" = load i32* @"'t1_pc", align 4
  %"331" = icmp eq i32 %"330", 1
  %"332" = load i32* @"'E_1", align 4
  %"333" = icmp eq i32 %"332", 1
  %or.cond.i9.i.i.i28 = and i1 %"331", %"333"
  br i1 %or.cond.i9.i.i.i28, label %eval_bb156, label %eval_bb157

eval_bb156:                                       ; preds = %eval_bb155
  store i32 0, i32* @"'t1_st", align 4
  br label %eval_bb157

eval_bb157:                                       ; preds = %eval_bb156, %eval_bb155
  %"334" = load i32* @"'t2_pc", align 4
  %"335" = icmp eq i32 %"334", 1
  %"336" = load i32* @"'E_2", align 4
  %"337" = icmp eq i32 %"336", 1
  %or.cond.i7.i.i.i29 = and i1 %"335", %"337"
  br i1 %or.cond.i7.i.i.i29, label %eval_bb158, label %eval_bb159

eval_bb158:                                       ; preds = %eval_bb157
  store i32 0, i32* @"'t2_st", align 4
  br label %eval_bb159

eval_bb159:                                       ; preds = %eval_bb158, %eval_bb157
  %"338" = load i32* @"'t3_pc", align 4
  %"339" = icmp eq i32 %"338", 1
  %"340" = load i32* @"'E_3", align 4
  %"341" = icmp eq i32 %"340", 1
  %or.cond.i5.i.i.i30 = and i1 %"339", %"341"
  br i1 %or.cond.i5.i.i.i30, label %eval_bb160, label %eval_bb161

eval_bb160:                                       ; preds = %eval_bb159
  store i32 0, i32* @"'t3_st", align 4
  br label %eval_bb161

eval_bb161:                                       ; preds = %eval_bb160, %eval_bb159
  %"342" = load i32* @"'t4_pc", align 4
  %"343" = icmp eq i32 %"342", 1
  %"344" = load i32* @"'E_4", align 4
  %"345" = icmp eq i32 %"344", 1
  %or.cond.i3.i.i.i31 = and i1 %"343", %"345"
  br i1 %or.cond.i3.i.i.i31, label %eval_bb162, label %eval_bb163

eval_bb162:                                       ; preds = %eval_bb161
  store i32 0, i32* @"'t4_st", align 4
  br label %eval_bb163

eval_bb163:                                       ; preds = %eval_bb162, %eval_bb161
  %"346" = load i32* @"'t5_pc", align 4
  %"347" = icmp eq i32 %"346", 1
  %"348" = load i32* @"'E_5", align 4
  %"349" = icmp eq i32 %"348", 1
  %or.cond.i1.i.i.i32 = and i1 %"347", %"349"
  br i1 %or.cond.i1.i.i.i32, label %eval_bb164, label %eval_immediate_notify.exit.i33

eval_bb164:                                       ; preds = %eval_bb163
  store i32 0, i32* @"'t5_st", align 4
  br label %eval_immediate_notify.exit.i33

eval_immediate_notify.exit.i33:                   ; preds = %eval_bb164, %eval_bb163
  store i32 2, i32* @"'E_2", align 4
  br label %eval_transmit1.exit

eval_transmit1.exit:                              ; preds = %eval_bb152, %eval_immediate_notify.exit.i33
  store i32 1, i32* @"'t1_pc", align 4
  store i32 2, i32* @"'t1_st", align 4
  br label %eval_bb165

eval_bb165:                                       ; preds = %eval_bb150, %eval_transmit1.exit, %eval_bb151
  %"350" = load i32* @"'t2_st", align 4
  %"351" = icmp eq i32 %"350", 0
  br i1 %"351", label %eval_bb166, label %eval_bb180

eval_bb166:                                       ; preds = %eval_bb165
  %"352" = call i32 (...)* @__VERIFIER_nondet_int()
  %"353" = icmp ne i32 %"352", 0
  br i1 %"353", label %eval_bb167, label %eval_bb180

eval_bb167:                                       ; preds = %eval_bb166
  store i32 1, i32* @"'t2_st", align 4
  %"354" = load i32* @"'t2_pc", align 4
  %"355" = icmp ne i32 %"354", 0
  %"356" = load i32* @"'t2_pc", align 4
  %"357" = icmp eq i32 %"356", 1
  %or.cond.i18 = and i1 %"355", %"357"
  br i1 %or.cond.i18, label %eval_bb168, label %eval_transmit2.exit

eval_bb168:                                       ; preds = %eval_bb167
  %"358" = load i32* @"'token", align 4
  %"359" = add nsw i32 %"358", 1
  store i32 %"359", i32* @"'token", align 4
  store i32 1, i32* @"'E_3", align 4
  %"360" = load i32* @"'m_pc", align 4
  %"361" = icmp eq i32 %"360", 1
  %"362" = load i32* @"'E_M", align 4
  %"363" = icmp eq i32 %"362", 1
  %or.cond.i.i.i.i19 = and i1 %"361", %"363"
  br i1 %or.cond.i.i.i.i19, label %eval_bb169, label %eval_bb170

eval_bb169:                                       ; preds = %eval_bb168
  store i32 0, i32* @"'m_st", align 4
  br label %eval_bb170

eval_bb170:                                       ; preds = %eval_bb169, %eval_bb168
  %"364" = load i32* @"'t1_pc", align 4
  %"365" = icmp eq i32 %"364", 1
  %"366" = load i32* @"'E_1", align 4
  %"367" = icmp eq i32 %"366", 1
  %or.cond.i9.i.i.i20 = and i1 %"365", %"367"
  br i1 %or.cond.i9.i.i.i20, label %eval_bb171, label %eval_bb172

eval_bb171:                                       ; preds = %eval_bb170
  store i32 0, i32* @"'t1_st", align 4
  br label %eval_bb172

eval_bb172:                                       ; preds = %eval_bb171, %eval_bb170
  %"368" = load i32* @"'t2_pc", align 4
  %"369" = icmp eq i32 %"368", 1
  %"370" = load i32* @"'E_2", align 4
  %"371" = icmp eq i32 %"370", 1
  %or.cond.i7.i.i.i21 = and i1 %"369", %"371"
  br i1 %or.cond.i7.i.i.i21, label %eval_bb173, label %eval_bb174

eval_bb173:                                       ; preds = %eval_bb172
  store i32 0, i32* @"'t2_st", align 4
  br label %eval_bb174

eval_bb174:                                       ; preds = %eval_bb173, %eval_bb172
  %"372" = load i32* @"'t3_pc", align 4
  %"373" = icmp eq i32 %"372", 1
  %"374" = load i32* @"'E_3", align 4
  %"375" = icmp eq i32 %"374", 1
  %or.cond.i5.i.i.i22 = and i1 %"373", %"375"
  br i1 %or.cond.i5.i.i.i22, label %eval_bb175, label %eval_bb176

eval_bb175:                                       ; preds = %eval_bb174
  store i32 0, i32* @"'t3_st", align 4
  br label %eval_bb176

eval_bb176:                                       ; preds = %eval_bb175, %eval_bb174
  %"376" = load i32* @"'t4_pc", align 4
  %"377" = icmp eq i32 %"376", 1
  %"378" = load i32* @"'E_4", align 4
  %"379" = icmp eq i32 %"378", 1
  %or.cond.i3.i.i.i23 = and i1 %"377", %"379"
  br i1 %or.cond.i3.i.i.i23, label %eval_bb177, label %eval_bb178

eval_bb177:                                       ; preds = %eval_bb176
  store i32 0, i32* @"'t4_st", align 4
  br label %eval_bb178

eval_bb178:                                       ; preds = %eval_bb177, %eval_bb176
  %"380" = load i32* @"'t5_pc", align 4
  %"381" = icmp eq i32 %"380", 1
  %"382" = load i32* @"'E_5", align 4
  %"383" = icmp eq i32 %"382", 1
  %or.cond.i1.i.i.i24 = and i1 %"381", %"383"
  br i1 %or.cond.i1.i.i.i24, label %eval_bb179, label %eval_immediate_notify.exit.i25

eval_bb179:                                       ; preds = %eval_bb178
  store i32 0, i32* @"'t5_st", align 4
  br label %eval_immediate_notify.exit.i25

eval_immediate_notify.exit.i25:                   ; preds = %eval_bb179, %eval_bb178
  store i32 2, i32* @"'E_3", align 4
  br label %eval_transmit2.exit

eval_transmit2.exit:                              ; preds = %eval_bb167, %eval_immediate_notify.exit.i25
  store i32 1, i32* @"'t2_pc", align 4
  store i32 2, i32* @"'t2_st", align 4
  br label %eval_bb180

eval_bb180:                                       ; preds = %eval_bb165, %eval_transmit2.exit, %eval_bb166
  %"384" = load i32* @"'t3_st", align 4
  %"385" = icmp eq i32 %"384", 0
  br i1 %"385", label %eval_bb181, label %eval_bb195

eval_bb181:                                       ; preds = %eval_bb180
  %"386" = call i32 (...)* @__VERIFIER_nondet_int()
  %"387" = icmp ne i32 %"386", 0
  br i1 %"387", label %eval_bb182, label %eval_bb195

eval_bb182:                                       ; preds = %eval_bb181
  store i32 1, i32* @"'t3_st", align 4
  %"388" = load i32* @"'t3_pc", align 4
  %"389" = icmp ne i32 %"388", 0
  %"390" = load i32* @"'t3_pc", align 4
  %"391" = icmp eq i32 %"390", 1
  %or.cond.i10 = and i1 %"389", %"391"
  br i1 %or.cond.i10, label %eval_bb183, label %eval_transmit3.exit

eval_bb183:                                       ; preds = %eval_bb182
  %"392" = load i32* @"'token", align 4
  %"393" = add nsw i32 %"392", 1
  store i32 %"393", i32* @"'token", align 4
  store i32 1, i32* @"'E_4", align 4
  %"394" = load i32* @"'m_pc", align 4
  %"395" = icmp eq i32 %"394", 1
  %"396" = load i32* @"'E_M", align 4
  %"397" = icmp eq i32 %"396", 1
  %or.cond.i.i.i.i11 = and i1 %"395", %"397"
  br i1 %or.cond.i.i.i.i11, label %eval_bb184, label %eval_bb185

eval_bb184:                                       ; preds = %eval_bb183
  store i32 0, i32* @"'m_st", align 4
  br label %eval_bb185

eval_bb185:                                       ; preds = %eval_bb184, %eval_bb183
  %"398" = load i32* @"'t1_pc", align 4
  %"399" = icmp eq i32 %"398", 1
  %"400" = load i32* @"'E_1", align 4
  %"401" = icmp eq i32 %"400", 1
  %or.cond.i9.i.i.i12 = and i1 %"399", %"401"
  br i1 %or.cond.i9.i.i.i12, label %eval_bb186, label %eval_bb187

eval_bb186:                                       ; preds = %eval_bb185
  store i32 0, i32* @"'t1_st", align 4
  br label %eval_bb187

eval_bb187:                                       ; preds = %eval_bb186, %eval_bb185
  %"402" = load i32* @"'t2_pc", align 4
  %"403" = icmp eq i32 %"402", 1
  %"404" = load i32* @"'E_2", align 4
  %"405" = icmp eq i32 %"404", 1
  %or.cond.i7.i.i.i13 = and i1 %"403", %"405"
  br i1 %or.cond.i7.i.i.i13, label %eval_bb188, label %eval_bb189

eval_bb188:                                       ; preds = %eval_bb187
  store i32 0, i32* @"'t2_st", align 4
  br label %eval_bb189

eval_bb189:                                       ; preds = %eval_bb188, %eval_bb187
  %"406" = load i32* @"'t3_pc", align 4
  %"407" = icmp eq i32 %"406", 1
  %"408" = load i32* @"'E_3", align 4
  %"409" = icmp eq i32 %"408", 1
  %or.cond.i5.i.i.i14 = and i1 %"407", %"409"
  br i1 %or.cond.i5.i.i.i14, label %eval_bb190, label %eval_bb191

eval_bb190:                                       ; preds = %eval_bb189
  store i32 0, i32* @"'t3_st", align 4
  br label %eval_bb191

eval_bb191:                                       ; preds = %eval_bb190, %eval_bb189
  %"410" = load i32* @"'t4_pc", align 4
  %"411" = icmp eq i32 %"410", 1
  %"412" = load i32* @"'E_4", align 4
  %"413" = icmp eq i32 %"412", 1
  %or.cond.i3.i.i.i15 = and i1 %"411", %"413"
  br i1 %or.cond.i3.i.i.i15, label %eval_bb192, label %eval_bb193

eval_bb192:                                       ; preds = %eval_bb191
  store i32 0, i32* @"'t4_st", align 4
  br label %eval_bb193

eval_bb193:                                       ; preds = %eval_bb192, %eval_bb191
  %"414" = load i32* @"'t5_pc", align 4
  %"415" = icmp eq i32 %"414", 1
  %"416" = load i32* @"'E_5", align 4
  %"417" = icmp eq i32 %"416", 1
  %or.cond.i1.i.i.i16 = and i1 %"415", %"417"
  br i1 %or.cond.i1.i.i.i16, label %eval_bb194, label %eval_immediate_notify.exit.i17

eval_bb194:                                       ; preds = %eval_bb193
  store i32 0, i32* @"'t5_st", align 4
  br label %eval_immediate_notify.exit.i17

eval_immediate_notify.exit.i17:                   ; preds = %eval_bb194, %eval_bb193
  store i32 2, i32* @"'E_4", align 4
  br label %eval_transmit3.exit

eval_transmit3.exit:                              ; preds = %eval_bb182, %eval_immediate_notify.exit.i17
  store i32 1, i32* @"'t3_pc", align 4
  store i32 2, i32* @"'t3_st", align 4
  br label %eval_bb195

eval_bb195:                                       ; preds = %eval_bb180, %eval_transmit3.exit, %eval_bb181
  %"418" = load i32* @"'t4_st", align 4
  %"419" = icmp eq i32 %"418", 0
  br i1 %"419", label %eval_bb196, label %eval_bb210

eval_bb196:                                       ; preds = %eval_bb195
  %"420" = call i32 (...)* @__VERIFIER_nondet_int()
  %"421" = icmp ne i32 %"420", 0
  br i1 %"421", label %eval_bb197, label %eval_bb210

eval_bb197:                                       ; preds = %eval_bb196
  store i32 1, i32* @"'t4_st", align 4
  %"422" = load i32* @"'t4_pc", align 4
  %"423" = icmp ne i32 %"422", 0
  %"424" = load i32* @"'t4_pc", align 4
  %"425" = icmp eq i32 %"424", 1
  %or.cond.i2 = and i1 %"423", %"425"
  br i1 %or.cond.i2, label %eval_bb198, label %eval_transmit4.exit

eval_bb198:                                       ; preds = %eval_bb197
  %"426" = load i32* @"'token", align 4
  %"427" = add nsw i32 %"426", 1
  store i32 %"427", i32* @"'token", align 4
  store i32 1, i32* @"'E_5", align 4
  %"428" = load i32* @"'m_pc", align 4
  %"429" = icmp eq i32 %"428", 1
  %"430" = load i32* @"'E_M", align 4
  %"431" = icmp eq i32 %"430", 1
  %or.cond.i.i.i.i3 = and i1 %"429", %"431"
  br i1 %or.cond.i.i.i.i3, label %eval_bb199, label %eval_bb200

eval_bb199:                                       ; preds = %eval_bb198
  store i32 0, i32* @"'m_st", align 4
  br label %eval_bb200

eval_bb200:                                       ; preds = %eval_bb199, %eval_bb198
  %"432" = load i32* @"'t1_pc", align 4
  %"433" = icmp eq i32 %"432", 1
  %"434" = load i32* @"'E_1", align 4
  %"435" = icmp eq i32 %"434", 1
  %or.cond.i9.i.i.i4 = and i1 %"433", %"435"
  br i1 %or.cond.i9.i.i.i4, label %eval_bb201, label %eval_bb202

eval_bb201:                                       ; preds = %eval_bb200
  store i32 0, i32* @"'t1_st", align 4
  br label %eval_bb202

eval_bb202:                                       ; preds = %eval_bb201, %eval_bb200
  %"436" = load i32* @"'t2_pc", align 4
  %"437" = icmp eq i32 %"436", 1
  %"438" = load i32* @"'E_2", align 4
  %"439" = icmp eq i32 %"438", 1
  %or.cond.i7.i.i.i5 = and i1 %"437", %"439"
  br i1 %or.cond.i7.i.i.i5, label %eval_bb203, label %eval_bb204

eval_bb203:                                       ; preds = %eval_bb202
  store i32 0, i32* @"'t2_st", align 4
  br label %eval_bb204

eval_bb204:                                       ; preds = %eval_bb203, %eval_bb202
  %"440" = load i32* @"'t3_pc", align 4
  %"441" = icmp eq i32 %"440", 1
  %"442" = load i32* @"'E_3", align 4
  %"443" = icmp eq i32 %"442", 1
  %or.cond.i5.i.i.i6 = and i1 %"441", %"443"
  br i1 %or.cond.i5.i.i.i6, label %eval_bb205, label %eval_bb206

eval_bb205:                                       ; preds = %eval_bb204
  store i32 0, i32* @"'t3_st", align 4
  br label %eval_bb206

eval_bb206:                                       ; preds = %eval_bb205, %eval_bb204
  %"444" = load i32* @"'t4_pc", align 4
  %"445" = icmp eq i32 %"444", 1
  %"446" = load i32* @"'E_4", align 4
  %"447" = icmp eq i32 %"446", 1
  %or.cond.i3.i.i.i7 = and i1 %"445", %"447"
  br i1 %or.cond.i3.i.i.i7, label %eval_bb207, label %eval_bb208

eval_bb207:                                       ; preds = %eval_bb206
  store i32 0, i32* @"'t4_st", align 4
  br label %eval_bb208

eval_bb208:                                       ; preds = %eval_bb207, %eval_bb206
  %"448" = load i32* @"'t5_pc", align 4
  %"449" = icmp eq i32 %"448", 1
  %"450" = load i32* @"'E_5", align 4
  %"451" = icmp eq i32 %"450", 1
  %or.cond.i1.i.i.i8 = and i1 %"449", %"451"
  br i1 %or.cond.i1.i.i.i8, label %eval_bb209, label %eval_immediate_notify.exit.i9

eval_bb209:                                       ; preds = %eval_bb208
  store i32 0, i32* @"'t5_st", align 4
  br label %eval_immediate_notify.exit.i9

eval_immediate_notify.exit.i9:                    ; preds = %eval_bb209, %eval_bb208
  store i32 2, i32* @"'E_5", align 4
  br label %eval_transmit4.exit

eval_transmit4.exit:                              ; preds = %eval_bb197, %eval_immediate_notify.exit.i9
  store i32 1, i32* @"'t4_pc", align 4
  store i32 2, i32* @"'t4_st", align 4
  br label %eval_bb210

eval_bb210:                                       ; preds = %eval_bb195, %eval_transmit4.exit, %eval_bb196
  %"452" = load i32* @"'t5_st", align 4
  %"453" = icmp eq i32 %"452", 0
  br i1 %"453", label %eval_bb211, label %eval_bb130

eval_bb211:                                       ; preds = %eval_bb210
  %"454" = call i32 (...)* @__VERIFIER_nondet_int()
  %"455" = icmp ne i32 %"454", 0
  br i1 %"455", label %eval_bb212, label %eval_bb130

eval_bb212:                                       ; preds = %eval_bb211
  store i32 1, i32* @"'t5_st", align 4
  %"456" = load i32* @"'t5_pc", align 4
  %"457" = icmp ne i32 %"456", 0
  %"458" = load i32* @"'t5_pc", align 4
  %"459" = icmp eq i32 %"458", 1
  %or.cond.i1 = and i1 %"457", %"459"
  br i1 %or.cond.i1, label %eval_bb213, label %eval_transmit5.exit

eval_bb213:                                       ; preds = %eval_bb212
  %"460" = load i32* @"'token", align 4
  %"461" = add nsw i32 %"460", 1
  store i32 %"461", i32* @"'token", align 4
  store i32 1, i32* @"'E_M", align 4
  %"462" = load i32* @"'m_pc", align 4
  %"463" = icmp eq i32 %"462", 1
  %"464" = load i32* @"'E_M", align 4
  %"465" = icmp eq i32 %"464", 1
  %or.cond.i.i.i.i = and i1 %"463", %"465"
  br i1 %or.cond.i.i.i.i, label %eval_bb214, label %eval_bb215

eval_bb214:                                       ; preds = %eval_bb213
  store i32 0, i32* @"'m_st", align 4
  br label %eval_bb215

eval_bb215:                                       ; preds = %eval_bb214, %eval_bb213
  %"466" = load i32* @"'t1_pc", align 4
  %"467" = icmp eq i32 %"466", 1
  %"468" = load i32* @"'E_1", align 4
  %"469" = icmp eq i32 %"468", 1
  %or.cond.i9.i.i.i = and i1 %"467", %"469"
  br i1 %or.cond.i9.i.i.i, label %eval_bb216, label %eval_bb217

eval_bb216:                                       ; preds = %eval_bb215
  store i32 0, i32* @"'t1_st", align 4
  br label %eval_bb217

eval_bb217:                                       ; preds = %eval_bb216, %eval_bb215
  %"470" = load i32* @"'t2_pc", align 4
  %"471" = icmp eq i32 %"470", 1
  %"472" = load i32* @"'E_2", align 4
  %"473" = icmp eq i32 %"472", 1
  %or.cond.i7.i.i.i = and i1 %"471", %"473"
  br i1 %or.cond.i7.i.i.i, label %eval_bb218, label %eval_bb219

eval_bb218:                                       ; preds = %eval_bb217
  store i32 0, i32* @"'t2_st", align 4
  br label %eval_bb219

eval_bb219:                                       ; preds = %eval_bb218, %eval_bb217
  %"474" = load i32* @"'t3_pc", align 4
  %"475" = icmp eq i32 %"474", 1
  %"476" = load i32* @"'E_3", align 4
  %"477" = icmp eq i32 %"476", 1
  %or.cond.i5.i.i.i = and i1 %"475", %"477"
  br i1 %or.cond.i5.i.i.i, label %eval_bb220, label %eval_bb221

eval_bb220:                                       ; preds = %eval_bb219
  store i32 0, i32* @"'t3_st", align 4
  br label %eval_bb221

eval_bb221:                                       ; preds = %eval_bb220, %eval_bb219
  %"478" = load i32* @"'t4_pc", align 4
  %"479" = icmp eq i32 %"478", 1
  %"480" = load i32* @"'E_4", align 4
  %"481" = icmp eq i32 %"480", 1
  %or.cond.i3.i.i.i = and i1 %"479", %"481"
  br i1 %or.cond.i3.i.i.i, label %eval_bb222, label %eval_bb223

eval_bb222:                                       ; preds = %eval_bb221
  store i32 0, i32* @"'t4_st", align 4
  br label %eval_bb223

eval_bb223:                                       ; preds = %eval_bb222, %eval_bb221
  %"482" = load i32* @"'t5_pc", align 4
  %"483" = icmp eq i32 %"482", 1
  %"484" = load i32* @"'E_5", align 4
  %"485" = icmp eq i32 %"484", 1
  %or.cond.i1.i.i.i = and i1 %"483", %"485"
  br i1 %or.cond.i1.i.i.i, label %eval_bb224, label %eval_immediate_notify.exit.i

eval_bb224:                                       ; preds = %eval_bb223
  store i32 0, i32* @"'t5_st", align 4
  br label %eval_immediate_notify.exit.i

eval_immediate_notify.exit.i:                     ; preds = %eval_bb224, %eval_bb223
  store i32 2, i32* @"'E_M", align 4
  br label %eval_transmit5.exit

eval_transmit5.exit:                              ; preds = %eval_bb212, %eval_immediate_notify.exit.i
  store i32 1, i32* @"'t5_pc", align 4
  store i32 2, i32* @"'t5_st", align 4
  br label %eval_bb130

eval_bb225:                                       ; preds = %eval_bb130
  ret void
}

; Function Attrs: nounwind uwtable
define void @fire_delta_events() #0 {
fire_delta_events_bb226:
  %"486" = load i32* @"'M_E", align 4
  %"487" = icmp eq i32 %"486", 0
  br i1 %"487", label %fire_delta_events_bb227, label %fire_delta_events_bb228

fire_delta_events_bb227:                          ; preds = %fire_delta_events_bb226
  store i32 1, i32* @"'M_E", align 4
  br label %fire_delta_events_bb228

fire_delta_events_bb228:                          ; preds = %fire_delta_events_bb226, %fire_delta_events_bb227
  %"488" = load i32* @"'T1_E", align 4
  %"489" = icmp eq i32 %"488", 0
  br i1 %"489", label %fire_delta_events_bb229, label %fire_delta_events_bb230

fire_delta_events_bb229:                          ; preds = %fire_delta_events_bb228
  store i32 1, i32* @"'T1_E", align 4
  br label %fire_delta_events_bb230

fire_delta_events_bb230:                          ; preds = %fire_delta_events_bb228, %fire_delta_events_bb229
  %"490" = load i32* @"'T2_E", align 4
  %"491" = icmp eq i32 %"490", 0
  br i1 %"491", label %fire_delta_events_bb231, label %fire_delta_events_bb232

fire_delta_events_bb231:                          ; preds = %fire_delta_events_bb230
  store i32 1, i32* @"'T2_E", align 4
  br label %fire_delta_events_bb232

fire_delta_events_bb232:                          ; preds = %fire_delta_events_bb230, %fire_delta_events_bb231
  %"492" = load i32* @"'T3_E", align 4
  %"493" = icmp eq i32 %"492", 0
  br i1 %"493", label %fire_delta_events_bb233, label %fire_delta_events_bb234

fire_delta_events_bb233:                          ; preds = %fire_delta_events_bb232
  store i32 1, i32* @"'T3_E", align 4
  br label %fire_delta_events_bb234

fire_delta_events_bb234:                          ; preds = %fire_delta_events_bb232, %fire_delta_events_bb233
  %"494" = load i32* @"'T4_E", align 4
  %"495" = icmp eq i32 %"494", 0
  br i1 %"495", label %fire_delta_events_bb235, label %fire_delta_events_bb236

fire_delta_events_bb235:                          ; preds = %fire_delta_events_bb234
  store i32 1, i32* @"'T4_E", align 4
  br label %fire_delta_events_bb236

fire_delta_events_bb236:                          ; preds = %fire_delta_events_bb234, %fire_delta_events_bb235
  %"496" = load i32* @"'T5_E", align 4
  %"497" = icmp eq i32 %"496", 0
  br i1 %"497", label %fire_delta_events_bb237, label %fire_delta_events_bb238

fire_delta_events_bb237:                          ; preds = %fire_delta_events_bb236
  store i32 1, i32* @"'T5_E", align 4
  br label %fire_delta_events_bb238

fire_delta_events_bb238:                          ; preds = %fire_delta_events_bb236, %fire_delta_events_bb237
  %"498" = load i32* @"'E_M", align 4
  %"499" = icmp eq i32 %"498", 0
  br i1 %"499", label %fire_delta_events_bb239, label %fire_delta_events_bb240

fire_delta_events_bb239:                          ; preds = %fire_delta_events_bb238
  store i32 1, i32* @"'E_M", align 4
  br label %fire_delta_events_bb240

fire_delta_events_bb240:                          ; preds = %fire_delta_events_bb238, %fire_delta_events_bb239
  %"500" = load i32* @"'E_1", align 4
  %"501" = icmp eq i32 %"500", 0
  br i1 %"501", label %fire_delta_events_bb241, label %fire_delta_events_bb242

fire_delta_events_bb241:                          ; preds = %fire_delta_events_bb240
  store i32 1, i32* @"'E_1", align 4
  br label %fire_delta_events_bb242

fire_delta_events_bb242:                          ; preds = %fire_delta_events_bb240, %fire_delta_events_bb241
  %"502" = load i32* @"'E_2", align 4
  %"503" = icmp eq i32 %"502", 0
  br i1 %"503", label %fire_delta_events_bb243, label %fire_delta_events_bb244

fire_delta_events_bb243:                          ; preds = %fire_delta_events_bb242
  store i32 1, i32* @"'E_2", align 4
  br label %fire_delta_events_bb244

fire_delta_events_bb244:                          ; preds = %fire_delta_events_bb242, %fire_delta_events_bb243
  %"504" = load i32* @"'E_3", align 4
  %"505" = icmp eq i32 %"504", 0
  br i1 %"505", label %fire_delta_events_bb245, label %fire_delta_events_bb246

fire_delta_events_bb245:                          ; preds = %fire_delta_events_bb244
  store i32 1, i32* @"'E_3", align 4
  br label %fire_delta_events_bb246

fire_delta_events_bb246:                          ; preds = %fire_delta_events_bb244, %fire_delta_events_bb245
  %"506" = load i32* @"'E_4", align 4
  %"507" = icmp eq i32 %"506", 0
  br i1 %"507", label %fire_delta_events_bb247, label %fire_delta_events_bb248

fire_delta_events_bb247:                          ; preds = %fire_delta_events_bb246
  store i32 1, i32* @"'E_4", align 4
  br label %fire_delta_events_bb248

fire_delta_events_bb248:                          ; preds = %fire_delta_events_bb246, %fire_delta_events_bb247
  %"508" = load i32* @"'E_5", align 4
  %"509" = icmp eq i32 %"508", 0
  br i1 %"509", label %fire_delta_events_bb249, label %fire_delta_events_bb250

fire_delta_events_bb249:                          ; preds = %fire_delta_events_bb248
  store i32 1, i32* @"'E_5", align 4
  br label %fire_delta_events_bb250

fire_delta_events_bb250:                          ; preds = %fire_delta_events_bb248, %fire_delta_events_bb249
  ret void
}

; Function Attrs: nounwind uwtable
define void @reset_delta_events() #0 {
reset_delta_events_bb251:
  %"510" = load i32* @"'M_E", align 4
  %"511" = icmp eq i32 %"510", 1
  br i1 %"511", label %reset_delta_events_bb252, label %reset_delta_events_bb253

reset_delta_events_bb252:                         ; preds = %reset_delta_events_bb251
  store i32 2, i32* @"'M_E", align 4
  br label %reset_delta_events_bb253

reset_delta_events_bb253:                         ; preds = %reset_delta_events_bb251, %reset_delta_events_bb252
  %"512" = load i32* @"'T1_E", align 4
  %"513" = icmp eq i32 %"512", 1
  br i1 %"513", label %reset_delta_events_bb254, label %reset_delta_events_bb255

reset_delta_events_bb254:                         ; preds = %reset_delta_events_bb253
  store i32 2, i32* @"'T1_E", align 4
  br label %reset_delta_events_bb255

reset_delta_events_bb255:                         ; preds = %reset_delta_events_bb253, %reset_delta_events_bb254
  %"514" = load i32* @"'T2_E", align 4
  %"515" = icmp eq i32 %"514", 1
  br i1 %"515", label %reset_delta_events_bb256, label %reset_delta_events_bb257

reset_delta_events_bb256:                         ; preds = %reset_delta_events_bb255
  store i32 2, i32* @"'T2_E", align 4
  br label %reset_delta_events_bb257

reset_delta_events_bb257:                         ; preds = %reset_delta_events_bb255, %reset_delta_events_bb256
  %"516" = load i32* @"'T3_E", align 4
  %"517" = icmp eq i32 %"516", 1
  br i1 %"517", label %reset_delta_events_bb258, label %reset_delta_events_bb259

reset_delta_events_bb258:                         ; preds = %reset_delta_events_bb257
  store i32 2, i32* @"'T3_E", align 4
  br label %reset_delta_events_bb259

reset_delta_events_bb259:                         ; preds = %reset_delta_events_bb257, %reset_delta_events_bb258
  %"518" = load i32* @"'T4_E", align 4
  %"519" = icmp eq i32 %"518", 1
  br i1 %"519", label %reset_delta_events_bb260, label %reset_delta_events_bb261

reset_delta_events_bb260:                         ; preds = %reset_delta_events_bb259
  store i32 2, i32* @"'T4_E", align 4
  br label %reset_delta_events_bb261

reset_delta_events_bb261:                         ; preds = %reset_delta_events_bb259, %reset_delta_events_bb260
  %"520" = load i32* @"'T5_E", align 4
  %"521" = icmp eq i32 %"520", 1
  br i1 %"521", label %reset_delta_events_bb262, label %reset_delta_events_bb263

reset_delta_events_bb262:                         ; preds = %reset_delta_events_bb261
  store i32 2, i32* @"'T5_E", align 4
  br label %reset_delta_events_bb263

reset_delta_events_bb263:                         ; preds = %reset_delta_events_bb261, %reset_delta_events_bb262
  %"522" = load i32* @"'E_M", align 4
  %"523" = icmp eq i32 %"522", 1
  br i1 %"523", label %reset_delta_events_bb264, label %reset_delta_events_bb265

reset_delta_events_bb264:                         ; preds = %reset_delta_events_bb263
  store i32 2, i32* @"'E_M", align 4
  br label %reset_delta_events_bb265

reset_delta_events_bb265:                         ; preds = %reset_delta_events_bb263, %reset_delta_events_bb264
  %"524" = load i32* @"'E_1", align 4
  %"525" = icmp eq i32 %"524", 1
  br i1 %"525", label %reset_delta_events_bb266, label %reset_delta_events_bb267

reset_delta_events_bb266:                         ; preds = %reset_delta_events_bb265
  store i32 2, i32* @"'E_1", align 4
  br label %reset_delta_events_bb267

reset_delta_events_bb267:                         ; preds = %reset_delta_events_bb265, %reset_delta_events_bb266
  %"526" = load i32* @"'E_2", align 4
  %"527" = icmp eq i32 %"526", 1
  br i1 %"527", label %reset_delta_events_bb268, label %reset_delta_events_bb269

reset_delta_events_bb268:                         ; preds = %reset_delta_events_bb267
  store i32 2, i32* @"'E_2", align 4
  br label %reset_delta_events_bb269

reset_delta_events_bb269:                         ; preds = %reset_delta_events_bb267, %reset_delta_events_bb268
  %"528" = load i32* @"'E_3", align 4
  %"529" = icmp eq i32 %"528", 1
  br i1 %"529", label %reset_delta_events_bb270, label %reset_delta_events_bb271

reset_delta_events_bb270:                         ; preds = %reset_delta_events_bb269
  store i32 2, i32* @"'E_3", align 4
  br label %reset_delta_events_bb271

reset_delta_events_bb271:                         ; preds = %reset_delta_events_bb269, %reset_delta_events_bb270
  %"530" = load i32* @"'E_4", align 4
  %"531" = icmp eq i32 %"530", 1
  br i1 %"531", label %reset_delta_events_bb272, label %reset_delta_events_bb273

reset_delta_events_bb272:                         ; preds = %reset_delta_events_bb271
  store i32 2, i32* @"'E_4", align 4
  br label %reset_delta_events_bb273

reset_delta_events_bb273:                         ; preds = %reset_delta_events_bb271, %reset_delta_events_bb272
  %"532" = load i32* @"'E_5", align 4
  %"533" = icmp eq i32 %"532", 1
  br i1 %"533", label %reset_delta_events_bb274, label %reset_delta_events_bb275

reset_delta_events_bb274:                         ; preds = %reset_delta_events_bb273
  store i32 2, i32* @"'E_5", align 4
  br label %reset_delta_events_bb275

reset_delta_events_bb275:                         ; preds = %reset_delta_events_bb273, %reset_delta_events_bb274
  ret void
}

; Function Attrs: nounwind uwtable
define void @activate_threads() #0 {
activate_threads_bb276:
  %"534" = load i32* @"'m_pc", align 4
  %"535" = icmp eq i32 %"534", 1
  %"536" = load i32* @"'E_M", align 4
  %"537" = icmp eq i32 %"536", 1
  %or.cond.i = and i1 %"535", %"537"
  %__retres1.0.i = select i1 %or.cond.i, i32 1, i32 0
  %"538" = icmp ne i32 %__retres1.0.i, 0
  br i1 %"538", label %activate_threads_bb277, label %activate_threads_bb278

activate_threads_bb277:                           ; preds = %activate_threads_bb276
  store i32 0, i32* @"'m_st", align 4
  br label %activate_threads_bb278

activate_threads_bb278:                           ; preds = %activate_threads_bb276, %activate_threads_bb277
  %"539" = load i32* @"'t1_pc", align 4
  %"540" = icmp eq i32 %"539", 1
  %"541" = load i32* @"'E_1", align 4
  %"542" = icmp eq i32 %"541", 1
  %or.cond.i9 = and i1 %"540", %"542"
  %__retres1.0.i10 = select i1 %or.cond.i9, i32 1, i32 0
  %"543" = icmp ne i32 %__retres1.0.i10, 0
  br i1 %"543", label %activate_threads_bb279, label %activate_threads_bb280

activate_threads_bb279:                           ; preds = %activate_threads_bb278
  store i32 0, i32* @"'t1_st", align 4
  br label %activate_threads_bb280

activate_threads_bb280:                           ; preds = %activate_threads_bb278, %activate_threads_bb279
  %"544" = load i32* @"'t2_pc", align 4
  %"545" = icmp eq i32 %"544", 1
  %"546" = load i32* @"'E_2", align 4
  %"547" = icmp eq i32 %"546", 1
  %or.cond.i7 = and i1 %"545", %"547"
  %__retres1.0.i8 = select i1 %or.cond.i7, i32 1, i32 0
  %"548" = icmp ne i32 %__retres1.0.i8, 0
  br i1 %"548", label %activate_threads_bb281, label %activate_threads_bb282

activate_threads_bb281:                           ; preds = %activate_threads_bb280
  store i32 0, i32* @"'t2_st", align 4
  br label %activate_threads_bb282

activate_threads_bb282:                           ; preds = %activate_threads_bb280, %activate_threads_bb281
  %"549" = load i32* @"'t3_pc", align 4
  %"550" = icmp eq i32 %"549", 1
  %"551" = load i32* @"'E_3", align 4
  %"552" = icmp eq i32 %"551", 1
  %or.cond.i5 = and i1 %"550", %"552"
  %__retres1.0.i6 = select i1 %or.cond.i5, i32 1, i32 0
  %"553" = icmp ne i32 %__retres1.0.i6, 0
  br i1 %"553", label %activate_threads_bb283, label %activate_threads_bb284

activate_threads_bb283:                           ; preds = %activate_threads_bb282
  store i32 0, i32* @"'t3_st", align 4
  br label %activate_threads_bb284

activate_threads_bb284:                           ; preds = %activate_threads_bb282, %activate_threads_bb283
  %"554" = load i32* @"'t4_pc", align 4
  %"555" = icmp eq i32 %"554", 1
  %"556" = load i32* @"'E_4", align 4
  %"557" = icmp eq i32 %"556", 1
  %or.cond.i3 = and i1 %"555", %"557"
  %__retres1.0.i4 = select i1 %or.cond.i3, i32 1, i32 0
  %"558" = icmp ne i32 %__retres1.0.i4, 0
  br i1 %"558", label %activate_threads_bb285, label %activate_threads_bb286

activate_threads_bb285:                           ; preds = %activate_threads_bb284
  store i32 0, i32* @"'t4_st", align 4
  br label %activate_threads_bb286

activate_threads_bb286:                           ; preds = %activate_threads_bb284, %activate_threads_bb285
  %"559" = load i32* @"'t5_pc", align 4
  %"560" = icmp eq i32 %"559", 1
  %"561" = load i32* @"'E_5", align 4
  %"562" = icmp eq i32 %"561", 1
  %or.cond.i1 = and i1 %"560", %"562"
  %__retres1.0.i2 = select i1 %or.cond.i1, i32 1, i32 0
  %"563" = icmp ne i32 %__retres1.0.i2, 0
  br i1 %"563", label %activate_threads_bb287, label %activate_threads_bb288

activate_threads_bb287:                           ; preds = %activate_threads_bb286
  store i32 0, i32* @"'t5_st", align 4
  br label %activate_threads_bb288

activate_threads_bb288:                           ; preds = %activate_threads_bb286, %activate_threads_bb287
  ret void
}

; Function Attrs: nounwind uwtable
define void @fire_time_events() #0 {
fire_time_events_bb289:
  store i32 1, i32* @"'M_E", align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @reset_time_events() #0 {
reset_time_events_bb290:
  %"564" = load i32* @"'M_E", align 4
  %"565" = icmp eq i32 %"564", 1
  br i1 %"565", label %reset_time_events_bb291, label %reset_time_events_bb292

reset_time_events_bb291:                          ; preds = %reset_time_events_bb290
  store i32 2, i32* @"'M_E", align 4
  br label %reset_time_events_bb292

reset_time_events_bb292:                          ; preds = %reset_time_events_bb290, %reset_time_events_bb291
  %"566" = load i32* @"'T1_E", align 4
  %"567" = icmp eq i32 %"566", 1
  br i1 %"567", label %reset_time_events_bb293, label %reset_time_events_bb294

reset_time_events_bb293:                          ; preds = %reset_time_events_bb292
  store i32 2, i32* @"'T1_E", align 4
  br label %reset_time_events_bb294

reset_time_events_bb294:                          ; preds = %reset_time_events_bb292, %reset_time_events_bb293
  %"568" = load i32* @"'T2_E", align 4
  %"569" = icmp eq i32 %"568", 1
  br i1 %"569", label %reset_time_events_bb295, label %reset_time_events_bb296

reset_time_events_bb295:                          ; preds = %reset_time_events_bb294
  store i32 2, i32* @"'T2_E", align 4
  br label %reset_time_events_bb296

reset_time_events_bb296:                          ; preds = %reset_time_events_bb294, %reset_time_events_bb295
  %"570" = load i32* @"'T3_E", align 4
  %"571" = icmp eq i32 %"570", 1
  br i1 %"571", label %reset_time_events_bb297, label %reset_time_events_bb298

reset_time_events_bb297:                          ; preds = %reset_time_events_bb296
  store i32 2, i32* @"'T3_E", align 4
  br label %reset_time_events_bb298

reset_time_events_bb298:                          ; preds = %reset_time_events_bb296, %reset_time_events_bb297
  %"572" = load i32* @"'T4_E", align 4
  %"573" = icmp eq i32 %"572", 1
  br i1 %"573", label %reset_time_events_bb299, label %reset_time_events_bb300

reset_time_events_bb299:                          ; preds = %reset_time_events_bb298
  store i32 2, i32* @"'T4_E", align 4
  br label %reset_time_events_bb300

reset_time_events_bb300:                          ; preds = %reset_time_events_bb298, %reset_time_events_bb299
  %"574" = load i32* @"'T5_E", align 4
  %"575" = icmp eq i32 %"574", 1
  br i1 %"575", label %reset_time_events_bb301, label %reset_time_events_bb302

reset_time_events_bb301:                          ; preds = %reset_time_events_bb300
  store i32 2, i32* @"'T5_E", align 4
  br label %reset_time_events_bb302

reset_time_events_bb302:                          ; preds = %reset_time_events_bb300, %reset_time_events_bb301
  %"576" = load i32* @"'E_M", align 4
  %"577" = icmp eq i32 %"576", 1
  br i1 %"577", label %reset_time_events_bb303, label %reset_time_events_bb304

reset_time_events_bb303:                          ; preds = %reset_time_events_bb302
  store i32 2, i32* @"'E_M", align 4
  br label %reset_time_events_bb304

reset_time_events_bb304:                          ; preds = %reset_time_events_bb302, %reset_time_events_bb303
  %"578" = load i32* @"'E_1", align 4
  %"579" = icmp eq i32 %"578", 1
  br i1 %"579", label %reset_time_events_bb305, label %reset_time_events_bb306

reset_time_events_bb305:                          ; preds = %reset_time_events_bb304
  store i32 2, i32* @"'E_1", align 4
  br label %reset_time_events_bb306

reset_time_events_bb306:                          ; preds = %reset_time_events_bb304, %reset_time_events_bb305
  %"580" = load i32* @"'E_2", align 4
  %"581" = icmp eq i32 %"580", 1
  br i1 %"581", label %reset_time_events_bb307, label %reset_time_events_bb308

reset_time_events_bb307:                          ; preds = %reset_time_events_bb306
  store i32 2, i32* @"'E_2", align 4
  br label %reset_time_events_bb308

reset_time_events_bb308:                          ; preds = %reset_time_events_bb306, %reset_time_events_bb307
  %"582" = load i32* @"'E_3", align 4
  %"583" = icmp eq i32 %"582", 1
  br i1 %"583", label %reset_time_events_bb309, label %reset_time_events_bb310

reset_time_events_bb309:                          ; preds = %reset_time_events_bb308
  store i32 2, i32* @"'E_3", align 4
  br label %reset_time_events_bb310

reset_time_events_bb310:                          ; preds = %reset_time_events_bb308, %reset_time_events_bb309
  %"584" = load i32* @"'E_4", align 4
  %"585" = icmp eq i32 %"584", 1
  br i1 %"585", label %reset_time_events_bb311, label %reset_time_events_bb312

reset_time_events_bb311:                          ; preds = %reset_time_events_bb310
  store i32 2, i32* @"'E_4", align 4
  br label %reset_time_events_bb312

reset_time_events_bb312:                          ; preds = %reset_time_events_bb310, %reset_time_events_bb311
  %"586" = load i32* @"'E_5", align 4
  %"587" = icmp eq i32 %"586", 1
  br i1 %"587", label %reset_time_events_bb313, label %reset_time_events_bb314

reset_time_events_bb313:                          ; preds = %reset_time_events_bb312
  store i32 2, i32* @"'E_5", align 4
  br label %reset_time_events_bb314

reset_time_events_bb314:                          ; preds = %reset_time_events_bb312, %reset_time_events_bb313
  ret void
}

; Function Attrs: nounwind uwtable
define void @init_model() #0 {
init_model_bb315:
  store i32 1, i32* @"'m_i", align 4
  store i32 1, i32* @"'t1_i", align 4
  store i32 1, i32* @"'t2_i", align 4
  store i32 1, i32* @"'t3_i", align 4
  store i32 1, i32* @"'t4_i", align 4
  store i32 1, i32* @"'t5_i", align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @stop_simulation() #0 {
stop_simulation_bb316:
  %"588" = load i32* @"'m_st", align 4
  %"589" = icmp eq i32 %"588", 0
  %"590" = load i32* @"'t1_st", align 4
  %"591" = icmp eq i32 %"590", 0
  %or.cond.i = or i1 %"589", %"591"
  %"592" = load i32* @"'t2_st", align 4
  %"593" = icmp eq i32 %"592", 0
  %or.cond3.i = or i1 %or.cond.i, %"593"
  %"594" = load i32* @"'t3_st", align 4
  %"595" = icmp eq i32 %"594", 0
  %or.cond5.i = or i1 %or.cond3.i, %"595"
  %"596" = load i32* @"'t4_st", align 4
  %"597" = icmp eq i32 %"596", 0
  %or.cond7.i = or i1 %or.cond5.i, %"597"
  %"598" = load i32* @"'t5_st", align 4
  %"599" = icmp eq i32 %"598", 0
  %or.cond9.i = or i1 %or.cond7.i, %"599"
  %__retres1.0.i = select i1 %or.cond9.i, i32 1, i32 0
  %"600" = icmp ne i32 %__retres1.0.i, 0
  %__retres2.0 = select i1 %"600", i32 0, i32 1
  ret i32 %__retres2.0
}

; Function Attrs: nounwind uwtable
define void @start_simulation() #0 {
start_simulation_bb317:
  %"601" = load i32* @"'m_i", align 4
  %"602" = icmp eq i32 %"601", 1
  br i1 %"602", label %start_simulation_bb318, label %start_simulation_bb319

start_simulation_bb318:                           ; preds = %start_simulation_bb317
  store i32 0, i32* @"'m_st", align 4
  br label %start_simulation_bb320

start_simulation_bb319:                           ; preds = %start_simulation_bb317
  store i32 2, i32* @"'m_st", align 4
  br label %start_simulation_bb320

start_simulation_bb320:                           ; preds = %start_simulation_bb319, %start_simulation_bb318
  %"603" = load i32* @"'t1_i", align 4
  %"604" = icmp eq i32 %"603", 1
  br i1 %"604", label %start_simulation_bb321, label %start_simulation_bb322

start_simulation_bb321:                           ; preds = %start_simulation_bb320
  store i32 0, i32* @"'t1_st", align 4
  br label %start_simulation_bb323

start_simulation_bb322:                           ; preds = %start_simulation_bb320
  store i32 2, i32* @"'t1_st", align 4
  br label %start_simulation_bb323

start_simulation_bb323:                           ; preds = %start_simulation_bb322, %start_simulation_bb321
  %"605" = load i32* @"'t2_i", align 4
  %"606" = icmp eq i32 %"605", 1
  br i1 %"606", label %start_simulation_bb324, label %start_simulation_bb325

start_simulation_bb324:                           ; preds = %start_simulation_bb323
  store i32 0, i32* @"'t2_st", align 4
  br label %start_simulation_bb326

start_simulation_bb325:                           ; preds = %start_simulation_bb323
  store i32 2, i32* @"'t2_st", align 4
  br label %start_simulation_bb326

start_simulation_bb326:                           ; preds = %start_simulation_bb325, %start_simulation_bb324
  %"607" = load i32* @"'t3_i", align 4
  %"608" = icmp eq i32 %"607", 1
  br i1 %"608", label %start_simulation_bb327, label %start_simulation_bb328

start_simulation_bb327:                           ; preds = %start_simulation_bb326
  store i32 0, i32* @"'t3_st", align 4
  br label %start_simulation_bb329

start_simulation_bb328:                           ; preds = %start_simulation_bb326
  store i32 2, i32* @"'t3_st", align 4
  br label %start_simulation_bb329

start_simulation_bb329:                           ; preds = %start_simulation_bb328, %start_simulation_bb327
  %"609" = load i32* @"'t4_i", align 4
  %"610" = icmp eq i32 %"609", 1
  br i1 %"610", label %start_simulation_bb330, label %start_simulation_bb331

start_simulation_bb330:                           ; preds = %start_simulation_bb329
  store i32 0, i32* @"'t4_st", align 4
  br label %start_simulation_bb332

start_simulation_bb331:                           ; preds = %start_simulation_bb329
  store i32 2, i32* @"'t4_st", align 4
  br label %start_simulation_bb332

start_simulation_bb332:                           ; preds = %start_simulation_bb331, %start_simulation_bb330
  %"611" = load i32* @"'t5_i", align 4
  %"612" = icmp eq i32 %"611", 1
  br i1 %"612", label %start_simulation_bb333, label %start_simulation_bb334

start_simulation_bb333:                           ; preds = %start_simulation_bb332
  store i32 0, i32* @"'t5_st", align 4
  br label %start_simulation_init_threads.exit

start_simulation_bb334:                           ; preds = %start_simulation_bb332
  store i32 2, i32* @"'t5_st", align 4
  br label %start_simulation_init_threads.exit

start_simulation_init_threads.exit:               ; preds = %start_simulation_bb333, %start_simulation_bb334
  %"613" = load i32* @"'M_E", align 4
  %"614" = icmp eq i32 %"613", 0
  br i1 %"614", label %start_simulation_bb335, label %start_simulation_bb336

start_simulation_bb335:                           ; preds = %start_simulation_init_threads.exit
  store i32 1, i32* @"'M_E", align 4
  br label %start_simulation_bb336

start_simulation_bb336:                           ; preds = %start_simulation_bb335, %start_simulation_init_threads.exit
  %"615" = load i32* @"'T1_E", align 4
  %"616" = icmp eq i32 %"615", 0
  br i1 %"616", label %start_simulation_bb337, label %start_simulation_bb338

start_simulation_bb337:                           ; preds = %start_simulation_bb336
  store i32 1, i32* @"'T1_E", align 4
  br label %start_simulation_bb338

start_simulation_bb338:                           ; preds = %start_simulation_bb337, %start_simulation_bb336
  %"617" = load i32* @"'T2_E", align 4
  %"618" = icmp eq i32 %"617", 0
  br i1 %"618", label %start_simulation_bb339, label %start_simulation_bb340

start_simulation_bb339:                           ; preds = %start_simulation_bb338
  store i32 1, i32* @"'T2_E", align 4
  br label %start_simulation_bb340

start_simulation_bb340:                           ; preds = %start_simulation_bb339, %start_simulation_bb338
  %"619" = load i32* @"'T3_E", align 4
  %"620" = icmp eq i32 %"619", 0
  br i1 %"620", label %start_simulation_bb341, label %start_simulation_bb342

start_simulation_bb341:                           ; preds = %start_simulation_bb340
  store i32 1, i32* @"'T3_E", align 4
  br label %start_simulation_bb342

start_simulation_bb342:                           ; preds = %start_simulation_bb341, %start_simulation_bb340
  %"621" = load i32* @"'T4_E", align 4
  %"622" = icmp eq i32 %"621", 0
  br i1 %"622", label %start_simulation_bb343, label %start_simulation_bb344

start_simulation_bb343:                           ; preds = %start_simulation_bb342
  store i32 1, i32* @"'T4_E", align 4
  br label %start_simulation_bb344

start_simulation_bb344:                           ; preds = %start_simulation_bb343, %start_simulation_bb342
  %"623" = load i32* @"'T5_E", align 4
  %"624" = icmp eq i32 %"623", 0
  br i1 %"624", label %start_simulation_bb345, label %start_simulation_bb346

start_simulation_bb345:                           ; preds = %start_simulation_bb344
  store i32 1, i32* @"'T5_E", align 4
  br label %start_simulation_bb346

start_simulation_bb346:                           ; preds = %start_simulation_bb345, %start_simulation_bb344
  %"625" = load i32* @"'E_M", align 4
  %"626" = icmp eq i32 %"625", 0
  br i1 %"626", label %start_simulation_bb347, label %start_simulation_bb348

start_simulation_bb347:                           ; preds = %start_simulation_bb346
  store i32 1, i32* @"'E_M", align 4
  br label %start_simulation_bb348

start_simulation_bb348:                           ; preds = %start_simulation_bb347, %start_simulation_bb346
  %"627" = load i32* @"'E_1", align 4
  %"628" = icmp eq i32 %"627", 0
  br i1 %"628", label %start_simulation_bb349, label %start_simulation_bb350

start_simulation_bb349:                           ; preds = %start_simulation_bb348
  store i32 1, i32* @"'E_1", align 4
  br label %start_simulation_bb350

start_simulation_bb350:                           ; preds = %start_simulation_bb349, %start_simulation_bb348
  %"629" = load i32* @"'E_2", align 4
  %"630" = icmp eq i32 %"629", 0
  br i1 %"630", label %start_simulation_bb351, label %start_simulation_bb352

start_simulation_bb351:                           ; preds = %start_simulation_bb350
  store i32 1, i32* @"'E_2", align 4
  br label %start_simulation_bb352

start_simulation_bb352:                           ; preds = %start_simulation_bb351, %start_simulation_bb350
  %"631" = load i32* @"'E_3", align 4
  %"632" = icmp eq i32 %"631", 0
  br i1 %"632", label %start_simulation_bb353, label %start_simulation_bb354

start_simulation_bb353:                           ; preds = %start_simulation_bb352
  store i32 1, i32* @"'E_3", align 4
  br label %start_simulation_bb354

start_simulation_bb354:                           ; preds = %start_simulation_bb353, %start_simulation_bb352
  %"633" = load i32* @"'E_4", align 4
  %"634" = icmp eq i32 %"633", 0
  br i1 %"634", label %start_simulation_bb355, label %start_simulation_bb356

start_simulation_bb355:                           ; preds = %start_simulation_bb354
  store i32 1, i32* @"'E_4", align 4
  br label %start_simulation_bb356

start_simulation_bb356:                           ; preds = %start_simulation_bb355, %start_simulation_bb354
  %"635" = load i32* @"'E_5", align 4
  %"636" = icmp eq i32 %"635", 0
  br i1 %"636", label %start_simulation_bb357, label %start_simulation_fire_delta_events.exit23

start_simulation_bb357:                           ; preds = %start_simulation_bb356
  store i32 1, i32* @"'E_5", align 4
  br label %start_simulation_fire_delta_events.exit23

start_simulation_fire_delta_events.exit23:        ; preds = %start_simulation_bb356, %start_simulation_bb357
  %"637" = load i32* @"'m_pc", align 4
  %"638" = icmp eq i32 %"637", 1
  %"639" = load i32* @"'E_M", align 4
  %"640" = icmp eq i32 %"639", 1
  %or.cond.i.i24 = and i1 %"638", %"640"
  br i1 %or.cond.i.i24, label %start_simulation_bb358, label %start_simulation_bb359

start_simulation_bb358:                           ; preds = %start_simulation_fire_delta_events.exit23
  store i32 0, i32* @"'m_st", align 4
  br label %start_simulation_bb359

start_simulation_bb359:                           ; preds = %start_simulation_bb358, %start_simulation_fire_delta_events.exit23
  %"641" = load i32* @"'t1_pc", align 4
  %"642" = icmp eq i32 %"641", 1
  %"643" = load i32* @"'E_1", align 4
  %"644" = icmp eq i32 %"643", 1
  %or.cond.i9.i26 = and i1 %"642", %"644"
  br i1 %or.cond.i9.i26, label %start_simulation_bb360, label %start_simulation_bb361

start_simulation_bb360:                           ; preds = %start_simulation_bb359
  store i32 0, i32* @"'t1_st", align 4
  br label %start_simulation_bb361

start_simulation_bb361:                           ; preds = %start_simulation_bb360, %start_simulation_bb359
  %"645" = load i32* @"'t2_pc", align 4
  %"646" = icmp eq i32 %"645", 1
  %"647" = load i32* @"'E_2", align 4
  %"648" = icmp eq i32 %"647", 1
  %or.cond.i7.i28 = and i1 %"646", %"648"
  br i1 %or.cond.i7.i28, label %start_simulation_bb362, label %start_simulation_bb363

start_simulation_bb362:                           ; preds = %start_simulation_bb361
  store i32 0, i32* @"'t2_st", align 4
  br label %start_simulation_bb363

start_simulation_bb363:                           ; preds = %start_simulation_bb362, %start_simulation_bb361
  %"649" = load i32* @"'t3_pc", align 4
  %"650" = icmp eq i32 %"649", 1
  %"651" = load i32* @"'E_3", align 4
  %"652" = icmp eq i32 %"651", 1
  %or.cond.i5.i30 = and i1 %"650", %"652"
  br i1 %or.cond.i5.i30, label %start_simulation_bb364, label %start_simulation_bb365

start_simulation_bb364:                           ; preds = %start_simulation_bb363
  store i32 0, i32* @"'t3_st", align 4
  br label %start_simulation_bb365

start_simulation_bb365:                           ; preds = %start_simulation_bb364, %start_simulation_bb363
  %"653" = load i32* @"'t4_pc", align 4
  %"654" = icmp eq i32 %"653", 1
  %"655" = load i32* @"'E_4", align 4
  %"656" = icmp eq i32 %"655", 1
  %or.cond.i3.i32 = and i1 %"654", %"656"
  br i1 %or.cond.i3.i32, label %start_simulation_bb366, label %start_simulation_bb367

start_simulation_bb366:                           ; preds = %start_simulation_bb365
  store i32 0, i32* @"'t4_st", align 4
  br label %start_simulation_bb367

start_simulation_bb367:                           ; preds = %start_simulation_bb366, %start_simulation_bb365
  %"657" = load i32* @"'t5_pc", align 4
  %"658" = icmp eq i32 %"657", 1
  %"659" = load i32* @"'E_5", align 4
  %"660" = icmp eq i32 %"659", 1
  %or.cond.i1.i34 = and i1 %"658", %"660"
  br i1 %or.cond.i1.i34, label %start_simulation_bb368, label %start_simulation_activate_threads.exit36

start_simulation_bb368:                           ; preds = %start_simulation_bb367
  store i32 0, i32* @"'t5_st", align 4
  br label %start_simulation_activate_threads.exit36

start_simulation_activate_threads.exit36:         ; preds = %start_simulation_bb367, %start_simulation_bb368
  %"661" = load i32* @"'M_E", align 4
  %"662" = icmp eq i32 %"661", 1
  br i1 %"662", label %start_simulation_bb369, label %start_simulation_bb370

start_simulation_bb369:                           ; preds = %start_simulation_activate_threads.exit36
  store i32 2, i32* @"'M_E", align 4
  br label %start_simulation_bb370

start_simulation_bb370:                           ; preds = %start_simulation_bb369, %start_simulation_activate_threads.exit36
  %"663" = load i32* @"'T1_E", align 4
  %"664" = icmp eq i32 %"663", 1
  br i1 %"664", label %start_simulation_bb371, label %start_simulation_bb372

start_simulation_bb371:                           ; preds = %start_simulation_bb370
  store i32 2, i32* @"'T1_E", align 4
  br label %start_simulation_bb372

start_simulation_bb372:                           ; preds = %start_simulation_bb371, %start_simulation_bb370
  %"665" = load i32* @"'T2_E", align 4
  %"666" = icmp eq i32 %"665", 1
  br i1 %"666", label %start_simulation_bb373, label %start_simulation_bb374

start_simulation_bb373:                           ; preds = %start_simulation_bb372
  store i32 2, i32* @"'T2_E", align 4
  br label %start_simulation_bb374

start_simulation_bb374:                           ; preds = %start_simulation_bb373, %start_simulation_bb372
  %"667" = load i32* @"'T3_E", align 4
  %"668" = icmp eq i32 %"667", 1
  br i1 %"668", label %start_simulation_bb375, label %start_simulation_bb376

start_simulation_bb375:                           ; preds = %start_simulation_bb374
  store i32 2, i32* @"'T3_E", align 4
  br label %start_simulation_bb376

start_simulation_bb376:                           ; preds = %start_simulation_bb375, %start_simulation_bb374
  %"669" = load i32* @"'T4_E", align 4
  %"670" = icmp eq i32 %"669", 1
  br i1 %"670", label %start_simulation_bb377, label %start_simulation_bb378

start_simulation_bb377:                           ; preds = %start_simulation_bb376
  store i32 2, i32* @"'T4_E", align 4
  br label %start_simulation_bb378

start_simulation_bb378:                           ; preds = %start_simulation_bb377, %start_simulation_bb376
  %"671" = load i32* @"'T5_E", align 4
  %"672" = icmp eq i32 %"671", 1
  br i1 %"672", label %start_simulation_bb379, label %start_simulation_bb380

start_simulation_bb379:                           ; preds = %start_simulation_bb378
  store i32 2, i32* @"'T5_E", align 4
  br label %start_simulation_bb380

start_simulation_bb380:                           ; preds = %start_simulation_bb379, %start_simulation_bb378
  %"673" = load i32* @"'E_M", align 4
  %"674" = icmp eq i32 %"673", 1
  br i1 %"674", label %start_simulation_bb381, label %start_simulation_bb382

start_simulation_bb381:                           ; preds = %start_simulation_bb380
  store i32 2, i32* @"'E_M", align 4
  br label %start_simulation_bb382

start_simulation_bb382:                           ; preds = %start_simulation_bb381, %start_simulation_bb380
  %"675" = load i32* @"'E_1", align 4
  %"676" = icmp eq i32 %"675", 1
  br i1 %"676", label %start_simulation_bb383, label %start_simulation_bb384

start_simulation_bb383:                           ; preds = %start_simulation_bb382
  store i32 2, i32* @"'E_1", align 4
  br label %start_simulation_bb384

start_simulation_bb384:                           ; preds = %start_simulation_bb383, %start_simulation_bb382
  %"677" = load i32* @"'E_2", align 4
  %"678" = icmp eq i32 %"677", 1
  br i1 %"678", label %start_simulation_bb385, label %start_simulation_bb386

start_simulation_bb385:                           ; preds = %start_simulation_bb384
  store i32 2, i32* @"'E_2", align 4
  br label %start_simulation_bb386

start_simulation_bb386:                           ; preds = %start_simulation_bb385, %start_simulation_bb384
  %"679" = load i32* @"'E_3", align 4
  %"680" = icmp eq i32 %"679", 1
  br i1 %"680", label %start_simulation_bb387, label %start_simulation_bb388

start_simulation_bb387:                           ; preds = %start_simulation_bb386
  store i32 2, i32* @"'E_3", align 4
  br label %start_simulation_bb388

start_simulation_bb388:                           ; preds = %start_simulation_bb387, %start_simulation_bb386
  %"681" = load i32* @"'E_4", align 4
  %"682" = icmp eq i32 %"681", 1
  br i1 %"682", label %start_simulation_bb389, label %start_simulation_bb390

start_simulation_bb389:                           ; preds = %start_simulation_bb388
  store i32 2, i32* @"'E_4", align 4
  br label %start_simulation_bb390

start_simulation_bb390:                           ; preds = %start_simulation_bb389, %start_simulation_bb388
  %"683" = load i32* @"'E_5", align 4
  %"684" = icmp eq i32 %"683", 1
  br i1 %"684", label %start_simulation_bb391, label %start_simulation_reset_delta_events.exit37

start_simulation_bb391:                           ; preds = %start_simulation_bb390
  store i32 2, i32* @"'E_5", align 4
  br label %start_simulation_reset_delta_events.exit37

start_simulation_reset_delta_events.exit37:       ; preds = %start_simulation_reset_time_events.exit, %start_simulation_bb391, %start_simulation_bb390, %start_simulation_transmit5.exit.i, %start_simulation_bb472, %start_simulation_bb471
  %"685" = load i32* @"'m_st", align 4
  %"686" = icmp eq i32 %"685", 0
  %"687" = load i32* @"'t1_st", align 4
  %"688" = icmp eq i32 %"687", 0
  %or.cond.i.i16 = or i1 %"686", %"688"
  %"689" = load i32* @"'t2_st", align 4
  %"690" = icmp eq i32 %"689", 0
  %or.cond3.i.i17 = or i1 %or.cond.i.i16, %"690"
  %"691" = load i32* @"'t3_st", align 4
  %"692" = icmp eq i32 %"691", 0
  %or.cond5.i.i18 = or i1 %or.cond3.i.i17, %"692"
  %"693" = load i32* @"'t4_st", align 4
  %"694" = icmp eq i32 %"693", 0
  %or.cond7.i.i19 = or i1 %or.cond5.i.i18, %"694"
  %"695" = load i32* @"'t5_st", align 4
  %"696" = icmp eq i32 %"695", 0
  %or.cond9.i.i20 = or i1 %or.cond7.i.i19, %"696"
  br i1 %or.cond9.i.i20, label %start_simulation_bb392, label %start_simulation_eval.exit

start_simulation_bb392:                           ; preds = %start_simulation_reset_delta_events.exit37
  %"697" = load i32* @"'m_st", align 4
  %"698" = icmp eq i32 %"697", 0
  br i1 %"698", label %start_simulation_bb393, label %start_simulation_bb411

start_simulation_bb393:                           ; preds = %start_simulation_bb392
  %"699" = call i32 (...)* @__VERIFIER_nondet_int() #5
  %"700" = icmp ne i32 %"699", 0
  br i1 %"700", label %start_simulation_bb394, label %start_simulation_bb411

start_simulation_bb394:                           ; preds = %start_simulation_bb393
  store i32 1, i32* @"'m_st", align 4
  %"701" = call i32 @__kittel_nondef.0() #5
  %"702" = load i32* @"'m_pc", align 4
  %"703" = icmp ne i32 %"702", 0
  %"704" = load i32* @"'m_pc", align 4
  %"705" = icmp eq i32 %"704", 1
  %or.cond.i34.i = and i1 %"703", %"705"
  br i1 %or.cond.i34.i, label %start_simulation_bb395, label %start_simulation_bb399

start_simulation_bb395:                           ; preds = %start_simulation_bb394
  %"706" = load i32* @"'token", align 4
  %"707" = load i32* @"'local", align 4
  %"708" = add nsw i32 %"707", 5
  %"709" = icmp ne i32 %"706", %"708"
  br i1 %"709", label %start_simulation_bb396, label %start_simulation_bb397

start_simulation_bb396:                           ; preds = %start_simulation_bb395
  call void (...)* @__VERIFIER_error() #4
  unreachable

start_simulation_bb397:                           ; preds = %start_simulation_bb395
  %"710" = icmp sle i32 %"701", 5
  %"711" = icmp sge i32 %"701", 5
  %or.cond3.i35.i = and i1 %"710", %"711"
  %"712" = icmp eq i32 %"701", 5
  %or.cond4.i.i = and i1 %or.cond3.i35.i, %"712"
  br i1 %or.cond4.i.i, label %start_simulation_bb398, label %start_simulation_bb399

start_simulation_bb398:                           ; preds = %start_simulation_bb397
  call void (...)* @__VERIFIER_error() #4
  unreachable

start_simulation_bb399:                           ; preds = %start_simulation_bb397, %start_simulation_bb394
  %"713" = call i32 (...)* @__VERIFIER_nondet_int() #5
  store i32 %"713", i32* @"'token", align 4
  %"714" = load i32* @"'token", align 4
  store i32 %"714", i32* @"'local", align 4
  store i32 1, i32* @"'E_1", align 4
  %"715" = load i32* @"'m_pc", align 4
  %"716" = icmp eq i32 %"715", 1
  %"717" = load i32* @"'E_M", align 4
  %"718" = icmp eq i32 %"717", 1
  %or.cond.i.i.i.i36.i = and i1 %"716", %"718"
  br i1 %or.cond.i.i.i.i36.i, label %start_simulation_bb400, label %start_simulation_bb401

start_simulation_bb400:                           ; preds = %start_simulation_bb399
  store i32 0, i32* @"'m_st", align 4
  br label %start_simulation_bb401

start_simulation_bb401:                           ; preds = %start_simulation_bb400, %start_simulation_bb399
  %"719" = load i32* @"'t1_pc", align 4
  %"720" = icmp eq i32 %"719", 1
  %"721" = load i32* @"'E_1", align 4
  %"722" = icmp eq i32 %"721", 1
  %or.cond.i9.i.i.i37.i = and i1 %"720", %"722"
  br i1 %or.cond.i9.i.i.i37.i, label %start_simulation_bb402, label %start_simulation_bb403

start_simulation_bb402:                           ; preds = %start_simulation_bb401
  store i32 0, i32* @"'t1_st", align 4
  br label %start_simulation_bb403

start_simulation_bb403:                           ; preds = %start_simulation_bb402, %start_simulation_bb401
  %"723" = load i32* @"'t2_pc", align 4
  %"724" = icmp eq i32 %"723", 1
  %"725" = load i32* @"'E_2", align 4
  %"726" = icmp eq i32 %"725", 1
  %or.cond.i7.i.i.i38.i = and i1 %"724", %"726"
  br i1 %or.cond.i7.i.i.i38.i, label %start_simulation_bb404, label %start_simulation_bb405

start_simulation_bb404:                           ; preds = %start_simulation_bb403
  store i32 0, i32* @"'t2_st", align 4
  br label %start_simulation_bb405

start_simulation_bb405:                           ; preds = %start_simulation_bb404, %start_simulation_bb403
  %"727" = load i32* @"'t3_pc", align 4
  %"728" = icmp eq i32 %"727", 1
  %"729" = load i32* @"'E_3", align 4
  %"730" = icmp eq i32 %"729", 1
  %or.cond.i5.i.i.i39.i = and i1 %"728", %"730"
  br i1 %or.cond.i5.i.i.i39.i, label %start_simulation_bb406, label %start_simulation_bb407

start_simulation_bb406:                           ; preds = %start_simulation_bb405
  store i32 0, i32* @"'t3_st", align 4
  br label %start_simulation_bb407

start_simulation_bb407:                           ; preds = %start_simulation_bb406, %start_simulation_bb405
  %"731" = load i32* @"'t4_pc", align 4
  %"732" = icmp eq i32 %"731", 1
  %"733" = load i32* @"'E_4", align 4
  %"734" = icmp eq i32 %"733", 1
  %or.cond.i3.i.i.i40.i = and i1 %"732", %"734"
  br i1 %or.cond.i3.i.i.i40.i, label %start_simulation_bb408, label %start_simulation_bb409

start_simulation_bb408:                           ; preds = %start_simulation_bb407
  store i32 0, i32* @"'t4_st", align 4
  br label %start_simulation_bb409

start_simulation_bb409:                           ; preds = %start_simulation_bb408, %start_simulation_bb407
  %"735" = load i32* @"'t5_pc", align 4
  %"736" = icmp eq i32 %"735", 1
  %"737" = load i32* @"'E_5", align 4
  %"738" = icmp eq i32 %"737", 1
  %or.cond.i1.i.i.i41.i = and i1 %"736", %"738"
  br i1 %or.cond.i1.i.i.i41.i, label %start_simulation_bb410, label %start_simulation_master.exit.i

start_simulation_bb410:                           ; preds = %start_simulation_bb409
  store i32 0, i32* @"'t5_st", align 4
  br label %start_simulation_master.exit.i

start_simulation_master.exit.i:                   ; preds = %start_simulation_bb410, %start_simulation_bb409
  store i32 2, i32* @"'E_1", align 4
  store i32 1, i32* @"'m_pc", align 4
  store i32 2, i32* @"'m_st", align 4
  br label %start_simulation_bb411

start_simulation_bb411:                           ; preds = %start_simulation_master.exit.i, %start_simulation_bb393, %start_simulation_bb392
  %"739" = load i32* @"'t1_st", align 4
  %"740" = icmp eq i32 %"739", 0
  br i1 %"740", label %start_simulation_bb412, label %start_simulation_bb426

start_simulation_bb412:                           ; preds = %start_simulation_bb411
  %"741" = call i32 (...)* @__VERIFIER_nondet_int() #5
  %"742" = icmp ne i32 %"741", 0
  br i1 %"742", label %start_simulation_bb413, label %start_simulation_bb426

start_simulation_bb413:                           ; preds = %start_simulation_bb412
  store i32 1, i32* @"'t1_st", align 4
  %"743" = load i32* @"'t1_pc", align 4
  %"744" = icmp ne i32 %"743", 0
  %"745" = load i32* @"'t1_pc", align 4
  %"746" = icmp eq i32 %"745", 1
  %or.cond.i26.i = and i1 %"744", %"746"
  br i1 %or.cond.i26.i, label %start_simulation_bb414, label %start_simulation_transmit1.exit.i

start_simulation_bb414:                           ; preds = %start_simulation_bb413
  %"747" = load i32* @"'token", align 4
  %"748" = add nsw i32 %"747", 1
  store i32 %"748", i32* @"'token", align 4
  store i32 1, i32* @"'E_2", align 4
  %"749" = load i32* @"'m_pc", align 4
  %"750" = icmp eq i32 %"749", 1
  %"751" = load i32* @"'E_M", align 4
  %"752" = icmp eq i32 %"751", 1
  %or.cond.i.i.i.i27.i = and i1 %"750", %"752"
  br i1 %or.cond.i.i.i.i27.i, label %start_simulation_bb415, label %start_simulation_bb416

start_simulation_bb415:                           ; preds = %start_simulation_bb414
  store i32 0, i32* @"'m_st", align 4
  br label %start_simulation_bb416

start_simulation_bb416:                           ; preds = %start_simulation_bb415, %start_simulation_bb414
  %"753" = load i32* @"'t1_pc", align 4
  %"754" = icmp eq i32 %"753", 1
  %"755" = load i32* @"'E_1", align 4
  %"756" = icmp eq i32 %"755", 1
  %or.cond.i9.i.i.i28.i = and i1 %"754", %"756"
  br i1 %or.cond.i9.i.i.i28.i, label %start_simulation_bb417, label %start_simulation_bb418

start_simulation_bb417:                           ; preds = %start_simulation_bb416
  store i32 0, i32* @"'t1_st", align 4
  br label %start_simulation_bb418

start_simulation_bb418:                           ; preds = %start_simulation_bb417, %start_simulation_bb416
  %"757" = load i32* @"'t2_pc", align 4
  %"758" = icmp eq i32 %"757", 1
  %"759" = load i32* @"'E_2", align 4
  %"760" = icmp eq i32 %"759", 1
  %or.cond.i7.i.i.i29.i = and i1 %"758", %"760"
  br i1 %or.cond.i7.i.i.i29.i, label %start_simulation_bb419, label %start_simulation_bb420

start_simulation_bb419:                           ; preds = %start_simulation_bb418
  store i32 0, i32* @"'t2_st", align 4
  br label %start_simulation_bb420

start_simulation_bb420:                           ; preds = %start_simulation_bb419, %start_simulation_bb418
  %"761" = load i32* @"'t3_pc", align 4
  %"762" = icmp eq i32 %"761", 1
  %"763" = load i32* @"'E_3", align 4
  %"764" = icmp eq i32 %"763", 1
  %or.cond.i5.i.i.i30.i = and i1 %"762", %"764"
  br i1 %or.cond.i5.i.i.i30.i, label %start_simulation_bb421, label %start_simulation_bb422

start_simulation_bb421:                           ; preds = %start_simulation_bb420
  store i32 0, i32* @"'t3_st", align 4
  br label %start_simulation_bb422

start_simulation_bb422:                           ; preds = %start_simulation_bb421, %start_simulation_bb420
  %"765" = load i32* @"'t4_pc", align 4
  %"766" = icmp eq i32 %"765", 1
  %"767" = load i32* @"'E_4", align 4
  %"768" = icmp eq i32 %"767", 1
  %or.cond.i3.i.i.i31.i = and i1 %"766", %"768"
  br i1 %or.cond.i3.i.i.i31.i, label %start_simulation_bb423, label %start_simulation_bb424

start_simulation_bb423:                           ; preds = %start_simulation_bb422
  store i32 0, i32* @"'t4_st", align 4
  br label %start_simulation_bb424

start_simulation_bb424:                           ; preds = %start_simulation_bb423, %start_simulation_bb422
  %"769" = load i32* @"'t5_pc", align 4
  %"770" = icmp eq i32 %"769", 1
  %"771" = load i32* @"'E_5", align 4
  %"772" = icmp eq i32 %"771", 1
  %or.cond.i1.i.i.i32.i = and i1 %"770", %"772"
  br i1 %or.cond.i1.i.i.i32.i, label %start_simulation_bb425, label %start_simulation_immediate_notify.exit.i33.i

start_simulation_bb425:                           ; preds = %start_simulation_bb424
  store i32 0, i32* @"'t5_st", align 4
  br label %start_simulation_immediate_notify.exit.i33.i

start_simulation_immediate_notify.exit.i33.i:     ; preds = %start_simulation_bb425, %start_simulation_bb424
  store i32 2, i32* @"'E_2", align 4
  br label %start_simulation_transmit1.exit.i

start_simulation_transmit1.exit.i:                ; preds = %start_simulation_immediate_notify.exit.i33.i, %start_simulation_bb413
  store i32 1, i32* @"'t1_pc", align 4
  store i32 2, i32* @"'t1_st", align 4
  br label %start_simulation_bb426

start_simulation_bb426:                           ; preds = %start_simulation_transmit1.exit.i, %start_simulation_bb412, %start_simulation_bb411
  %"773" = load i32* @"'t2_st", align 4
  %"774" = icmp eq i32 %"773", 0
  br i1 %"774", label %start_simulation_bb427, label %start_simulation_bb441

start_simulation_bb427:                           ; preds = %start_simulation_bb426
  %"775" = call i32 (...)* @__VERIFIER_nondet_int() #5
  %"776" = icmp ne i32 %"775", 0
  br i1 %"776", label %start_simulation_bb428, label %start_simulation_bb441

start_simulation_bb428:                           ; preds = %start_simulation_bb427
  store i32 1, i32* @"'t2_st", align 4
  %"777" = load i32* @"'t2_pc", align 4
  %"778" = icmp ne i32 %"777", 0
  %"779" = load i32* @"'t2_pc", align 4
  %"780" = icmp eq i32 %"779", 1
  %or.cond.i18.i = and i1 %"778", %"780"
  br i1 %or.cond.i18.i, label %start_simulation_bb429, label %start_simulation_transmit2.exit.i

start_simulation_bb429:                           ; preds = %start_simulation_bb428
  %"781" = load i32* @"'token", align 4
  %"782" = add nsw i32 %"781", 1
  store i32 %"782", i32* @"'token", align 4
  store i32 1, i32* @"'E_3", align 4
  %"783" = load i32* @"'m_pc", align 4
  %"784" = icmp eq i32 %"783", 1
  %"785" = load i32* @"'E_M", align 4
  %"786" = icmp eq i32 %"785", 1
  %or.cond.i.i.i.i19.i = and i1 %"784", %"786"
  br i1 %or.cond.i.i.i.i19.i, label %start_simulation_bb430, label %start_simulation_bb431

start_simulation_bb430:                           ; preds = %start_simulation_bb429
  store i32 0, i32* @"'m_st", align 4
  br label %start_simulation_bb431

start_simulation_bb431:                           ; preds = %start_simulation_bb430, %start_simulation_bb429
  %"787" = load i32* @"'t1_pc", align 4
  %"788" = icmp eq i32 %"787", 1
  %"789" = load i32* @"'E_1", align 4
  %"790" = icmp eq i32 %"789", 1
  %or.cond.i9.i.i.i20.i = and i1 %"788", %"790"
  br i1 %or.cond.i9.i.i.i20.i, label %start_simulation_bb432, label %start_simulation_bb433

start_simulation_bb432:                           ; preds = %start_simulation_bb431
  store i32 0, i32* @"'t1_st", align 4
  br label %start_simulation_bb433

start_simulation_bb433:                           ; preds = %start_simulation_bb432, %start_simulation_bb431
  %"791" = load i32* @"'t2_pc", align 4
  %"792" = icmp eq i32 %"791", 1
  %"793" = load i32* @"'E_2", align 4
  %"794" = icmp eq i32 %"793", 1
  %or.cond.i7.i.i.i21.i = and i1 %"792", %"794"
  br i1 %or.cond.i7.i.i.i21.i, label %start_simulation_bb434, label %start_simulation_bb435

start_simulation_bb434:                           ; preds = %start_simulation_bb433
  store i32 0, i32* @"'t2_st", align 4
  br label %start_simulation_bb435

start_simulation_bb435:                           ; preds = %start_simulation_bb434, %start_simulation_bb433
  %"795" = load i32* @"'t3_pc", align 4
  %"796" = icmp eq i32 %"795", 1
  %"797" = load i32* @"'E_3", align 4
  %"798" = icmp eq i32 %"797", 1
  %or.cond.i5.i.i.i22.i = and i1 %"796", %"798"
  br i1 %or.cond.i5.i.i.i22.i, label %start_simulation_bb436, label %start_simulation_bb437

start_simulation_bb436:                           ; preds = %start_simulation_bb435
  store i32 0, i32* @"'t3_st", align 4
  br label %start_simulation_bb437

start_simulation_bb437:                           ; preds = %start_simulation_bb436, %start_simulation_bb435
  %"799" = load i32* @"'t4_pc", align 4
  %"800" = icmp eq i32 %"799", 1
  %"801" = load i32* @"'E_4", align 4
  %"802" = icmp eq i32 %"801", 1
  %or.cond.i3.i.i.i23.i = and i1 %"800", %"802"
  br i1 %or.cond.i3.i.i.i23.i, label %start_simulation_bb438, label %start_simulation_bb439

start_simulation_bb438:                           ; preds = %start_simulation_bb437
  store i32 0, i32* @"'t4_st", align 4
  br label %start_simulation_bb439

start_simulation_bb439:                           ; preds = %start_simulation_bb438, %start_simulation_bb437
  %"803" = load i32* @"'t5_pc", align 4
  %"804" = icmp eq i32 %"803", 1
  %"805" = load i32* @"'E_5", align 4
  %"806" = icmp eq i32 %"805", 1
  %or.cond.i1.i.i.i24.i = and i1 %"804", %"806"
  br i1 %or.cond.i1.i.i.i24.i, label %start_simulation_bb440, label %start_simulation_immediate_notify.exit.i25.i

start_simulation_bb440:                           ; preds = %start_simulation_bb439
  store i32 0, i32* @"'t5_st", align 4
  br label %start_simulation_immediate_notify.exit.i25.i

start_simulation_immediate_notify.exit.i25.i:     ; preds = %start_simulation_bb440, %start_simulation_bb439
  store i32 2, i32* @"'E_3", align 4
  br label %start_simulation_transmit2.exit.i

start_simulation_transmit2.exit.i:                ; preds = %start_simulation_immediate_notify.exit.i25.i, %start_simulation_bb428
  store i32 1, i32* @"'t2_pc", align 4
  store i32 2, i32* @"'t2_st", align 4
  br label %start_simulation_bb441

start_simulation_bb441:                           ; preds = %start_simulation_transmit2.exit.i, %start_simulation_bb427, %start_simulation_bb426
  %"807" = load i32* @"'t3_st", align 4
  %"808" = icmp eq i32 %"807", 0
  br i1 %"808", label %start_simulation_bb442, label %start_simulation_bb456

start_simulation_bb442:                           ; preds = %start_simulation_bb441
  %"809" = call i32 (...)* @__VERIFIER_nondet_int() #5
  %"810" = icmp ne i32 %"809", 0
  br i1 %"810", label %start_simulation_bb443, label %start_simulation_bb456

start_simulation_bb443:                           ; preds = %start_simulation_bb442
  store i32 1, i32* @"'t3_st", align 4
  %"811" = load i32* @"'t3_pc", align 4
  %"812" = icmp ne i32 %"811", 0
  %"813" = load i32* @"'t3_pc", align 4
  %"814" = icmp eq i32 %"813", 1
  %or.cond.i10.i = and i1 %"812", %"814"
  br i1 %or.cond.i10.i, label %start_simulation_bb444, label %start_simulation_transmit3.exit.i

start_simulation_bb444:                           ; preds = %start_simulation_bb443
  %"815" = load i32* @"'token", align 4
  %"816" = add nsw i32 %"815", 1
  store i32 %"816", i32* @"'token", align 4
  store i32 1, i32* @"'E_4", align 4
  %"817" = load i32* @"'m_pc", align 4
  %"818" = icmp eq i32 %"817", 1
  %"819" = load i32* @"'E_M", align 4
  %"820" = icmp eq i32 %"819", 1
  %or.cond.i.i.i.i11.i = and i1 %"818", %"820"
  br i1 %or.cond.i.i.i.i11.i, label %start_simulation_bb445, label %start_simulation_bb446

start_simulation_bb445:                           ; preds = %start_simulation_bb444
  store i32 0, i32* @"'m_st", align 4
  br label %start_simulation_bb446

start_simulation_bb446:                           ; preds = %start_simulation_bb445, %start_simulation_bb444
  %"821" = load i32* @"'t1_pc", align 4
  %"822" = icmp eq i32 %"821", 1
  %"823" = load i32* @"'E_1", align 4
  %"824" = icmp eq i32 %"823", 1
  %or.cond.i9.i.i.i12.i = and i1 %"822", %"824"
  br i1 %or.cond.i9.i.i.i12.i, label %start_simulation_bb447, label %start_simulation_bb448

start_simulation_bb447:                           ; preds = %start_simulation_bb446
  store i32 0, i32* @"'t1_st", align 4
  br label %start_simulation_bb448

start_simulation_bb448:                           ; preds = %start_simulation_bb447, %start_simulation_bb446
  %"825" = load i32* @"'t2_pc", align 4
  %"826" = icmp eq i32 %"825", 1
  %"827" = load i32* @"'E_2", align 4
  %"828" = icmp eq i32 %"827", 1
  %or.cond.i7.i.i.i13.i = and i1 %"826", %"828"
  br i1 %or.cond.i7.i.i.i13.i, label %start_simulation_bb449, label %start_simulation_bb450

start_simulation_bb449:                           ; preds = %start_simulation_bb448
  store i32 0, i32* @"'t2_st", align 4
  br label %start_simulation_bb450

start_simulation_bb450:                           ; preds = %start_simulation_bb449, %start_simulation_bb448
  %"829" = load i32* @"'t3_pc", align 4
  %"830" = icmp eq i32 %"829", 1
  %"831" = load i32* @"'E_3", align 4
  %"832" = icmp eq i32 %"831", 1
  %or.cond.i5.i.i.i14.i = and i1 %"830", %"832"
  br i1 %or.cond.i5.i.i.i14.i, label %start_simulation_bb451, label %start_simulation_bb452

start_simulation_bb451:                           ; preds = %start_simulation_bb450
  store i32 0, i32* @"'t3_st", align 4
  br label %start_simulation_bb452

start_simulation_bb452:                           ; preds = %start_simulation_bb451, %start_simulation_bb450
  %"833" = load i32* @"'t4_pc", align 4
  %"834" = icmp eq i32 %"833", 1
  %"835" = load i32* @"'E_4", align 4
  %"836" = icmp eq i32 %"835", 1
  %or.cond.i3.i.i.i15.i = and i1 %"834", %"836"
  br i1 %or.cond.i3.i.i.i15.i, label %start_simulation_bb453, label %start_simulation_bb454

start_simulation_bb453:                           ; preds = %start_simulation_bb452
  store i32 0, i32* @"'t4_st", align 4
  br label %start_simulation_bb454

start_simulation_bb454:                           ; preds = %start_simulation_bb453, %start_simulation_bb452
  %"837" = load i32* @"'t5_pc", align 4
  %"838" = icmp eq i32 %"837", 1
  %"839" = load i32* @"'E_5", align 4
  %"840" = icmp eq i32 %"839", 1
  %or.cond.i1.i.i.i16.i = and i1 %"838", %"840"
  br i1 %or.cond.i1.i.i.i16.i, label %start_simulation_bb455, label %start_simulation_immediate_notify.exit.i17.i

start_simulation_bb455:                           ; preds = %start_simulation_bb454
  store i32 0, i32* @"'t5_st", align 4
  br label %start_simulation_immediate_notify.exit.i17.i

start_simulation_immediate_notify.exit.i17.i:     ; preds = %start_simulation_bb455, %start_simulation_bb454
  store i32 2, i32* @"'E_4", align 4
  br label %start_simulation_transmit3.exit.i

start_simulation_transmit3.exit.i:                ; preds = %start_simulation_immediate_notify.exit.i17.i, %start_simulation_bb443
  store i32 1, i32* @"'t3_pc", align 4
  store i32 2, i32* @"'t3_st", align 4
  br label %start_simulation_bb456

start_simulation_bb456:                           ; preds = %start_simulation_transmit3.exit.i, %start_simulation_bb442, %start_simulation_bb441
  %"841" = load i32* @"'t4_st", align 4
  %"842" = icmp eq i32 %"841", 0
  br i1 %"842", label %start_simulation_bb457, label %start_simulation_bb471

start_simulation_bb457:                           ; preds = %start_simulation_bb456
  %"843" = call i32 (...)* @__VERIFIER_nondet_int() #5
  %"844" = icmp ne i32 %"843", 0
  br i1 %"844", label %start_simulation_bb458, label %start_simulation_bb471

start_simulation_bb458:                           ; preds = %start_simulation_bb457
  store i32 1, i32* @"'t4_st", align 4
  %"845" = load i32* @"'t4_pc", align 4
  %"846" = icmp ne i32 %"845", 0
  %"847" = load i32* @"'t4_pc", align 4
  %"848" = icmp eq i32 %"847", 1
  %or.cond.i2.i = and i1 %"846", %"848"
  br i1 %or.cond.i2.i, label %start_simulation_bb459, label %start_simulation_transmit4.exit.i

start_simulation_bb459:                           ; preds = %start_simulation_bb458
  %"849" = load i32* @"'token", align 4
  %"850" = add nsw i32 %"849", 1
  store i32 %"850", i32* @"'token", align 4
  store i32 1, i32* @"'E_5", align 4
  %"851" = load i32* @"'m_pc", align 4
  %"852" = icmp eq i32 %"851", 1
  %"853" = load i32* @"'E_M", align 4
  %"854" = icmp eq i32 %"853", 1
  %or.cond.i.i.i.i3.i = and i1 %"852", %"854"
  br i1 %or.cond.i.i.i.i3.i, label %start_simulation_bb460, label %start_simulation_bb461

start_simulation_bb460:                           ; preds = %start_simulation_bb459
  store i32 0, i32* @"'m_st", align 4
  br label %start_simulation_bb461

start_simulation_bb461:                           ; preds = %start_simulation_bb460, %start_simulation_bb459
  %"855" = load i32* @"'t1_pc", align 4
  %"856" = icmp eq i32 %"855", 1
  %"857" = load i32* @"'E_1", align 4
  %"858" = icmp eq i32 %"857", 1
  %or.cond.i9.i.i.i4.i = and i1 %"856", %"858"
  br i1 %or.cond.i9.i.i.i4.i, label %start_simulation_bb462, label %start_simulation_bb463

start_simulation_bb462:                           ; preds = %start_simulation_bb461
  store i32 0, i32* @"'t1_st", align 4
  br label %start_simulation_bb463

start_simulation_bb463:                           ; preds = %start_simulation_bb462, %start_simulation_bb461
  %"859" = load i32* @"'t2_pc", align 4
  %"860" = icmp eq i32 %"859", 1
  %"861" = load i32* @"'E_2", align 4
  %"862" = icmp eq i32 %"861", 1
  %or.cond.i7.i.i.i5.i = and i1 %"860", %"862"
  br i1 %or.cond.i7.i.i.i5.i, label %start_simulation_bb464, label %start_simulation_bb465

start_simulation_bb464:                           ; preds = %start_simulation_bb463
  store i32 0, i32* @"'t2_st", align 4
  br label %start_simulation_bb465

start_simulation_bb465:                           ; preds = %start_simulation_bb464, %start_simulation_bb463
  %"863" = load i32* @"'t3_pc", align 4
  %"864" = icmp eq i32 %"863", 1
  %"865" = load i32* @"'E_3", align 4
  %"866" = icmp eq i32 %"865", 1
  %or.cond.i5.i.i.i6.i = and i1 %"864", %"866"
  br i1 %or.cond.i5.i.i.i6.i, label %start_simulation_bb466, label %start_simulation_bb467

start_simulation_bb466:                           ; preds = %start_simulation_bb465
  store i32 0, i32* @"'t3_st", align 4
  br label %start_simulation_bb467

start_simulation_bb467:                           ; preds = %start_simulation_bb466, %start_simulation_bb465
  %"867" = load i32* @"'t4_pc", align 4
  %"868" = icmp eq i32 %"867", 1
  %"869" = load i32* @"'E_4", align 4
  %"870" = icmp eq i32 %"869", 1
  %or.cond.i3.i.i.i7.i = and i1 %"868", %"870"
  br i1 %or.cond.i3.i.i.i7.i, label %start_simulation_bb468, label %start_simulation_bb469

start_simulation_bb468:                           ; preds = %start_simulation_bb467
  store i32 0, i32* @"'t4_st", align 4
  br label %start_simulation_bb469

start_simulation_bb469:                           ; preds = %start_simulation_bb468, %start_simulation_bb467
  %"871" = load i32* @"'t5_pc", align 4
  %"872" = icmp eq i32 %"871", 1
  %"873" = load i32* @"'E_5", align 4
  %"874" = icmp eq i32 %"873", 1
  %or.cond.i1.i.i.i8.i = and i1 %"872", %"874"
  br i1 %or.cond.i1.i.i.i8.i, label %start_simulation_bb470, label %start_simulation_immediate_notify.exit.i9.i

start_simulation_bb470:                           ; preds = %start_simulation_bb469
  store i32 0, i32* @"'t5_st", align 4
  br label %start_simulation_immediate_notify.exit.i9.i

start_simulation_immediate_notify.exit.i9.i:      ; preds = %start_simulation_bb470, %start_simulation_bb469
  store i32 2, i32* @"'E_5", align 4
  br label %start_simulation_transmit4.exit.i

start_simulation_transmit4.exit.i:                ; preds = %start_simulation_immediate_notify.exit.i9.i, %start_simulation_bb458
  store i32 1, i32* @"'t4_pc", align 4
  store i32 2, i32* @"'t4_st", align 4
  br label %start_simulation_bb471

start_simulation_bb471:                           ; preds = %start_simulation_transmit4.exit.i, %start_simulation_bb457, %start_simulation_bb456
  %"875" = load i32* @"'t5_st", align 4
  %"876" = icmp eq i32 %"875", 0
  br i1 %"876", label %start_simulation_bb472, label %start_simulation_reset_delta_events.exit37

start_simulation_bb472:                           ; preds = %start_simulation_bb471
  %"877" = call i32 (...)* @__VERIFIER_nondet_int() #5
  %"878" = icmp ne i32 %"877", 0
  br i1 %"878", label %start_simulation_bb473, label %start_simulation_reset_delta_events.exit37

start_simulation_bb473:                           ; preds = %start_simulation_bb472
  store i32 1, i32* @"'t5_st", align 4
  %"879" = load i32* @"'t5_pc", align 4
  %"880" = icmp ne i32 %"879", 0
  %"881" = load i32* @"'t5_pc", align 4
  %"882" = icmp eq i32 %"881", 1
  %or.cond.i1.i22 = and i1 %"880", %"882"
  br i1 %or.cond.i1.i22, label %start_simulation_bb474, label %start_simulation_transmit5.exit.i

start_simulation_bb474:                           ; preds = %start_simulation_bb473
  %"883" = load i32* @"'token", align 4
  %"884" = add nsw i32 %"883", 1
  store i32 %"884", i32* @"'token", align 4
  store i32 1, i32* @"'E_M", align 4
  %"885" = load i32* @"'m_pc", align 4
  %"886" = icmp eq i32 %"885", 1
  %"887" = load i32* @"'E_M", align 4
  %"888" = icmp eq i32 %"887", 1
  %or.cond.i.i.i.i.i = and i1 %"886", %"888"
  br i1 %or.cond.i.i.i.i.i, label %start_simulation_bb475, label %start_simulation_bb476

start_simulation_bb475:                           ; preds = %start_simulation_bb474
  store i32 0, i32* @"'m_st", align 4
  br label %start_simulation_bb476

start_simulation_bb476:                           ; preds = %start_simulation_bb475, %start_simulation_bb474
  %"889" = load i32* @"'t1_pc", align 4
  %"890" = icmp eq i32 %"889", 1
  %"891" = load i32* @"'E_1", align 4
  %"892" = icmp eq i32 %"891", 1
  %or.cond.i9.i.i.i.i = and i1 %"890", %"892"
  br i1 %or.cond.i9.i.i.i.i, label %start_simulation_bb477, label %start_simulation_bb478

start_simulation_bb477:                           ; preds = %start_simulation_bb476
  store i32 0, i32* @"'t1_st", align 4
  br label %start_simulation_bb478

start_simulation_bb478:                           ; preds = %start_simulation_bb477, %start_simulation_bb476
  %"893" = load i32* @"'t2_pc", align 4
  %"894" = icmp eq i32 %"893", 1
  %"895" = load i32* @"'E_2", align 4
  %"896" = icmp eq i32 %"895", 1
  %or.cond.i7.i.i.i.i = and i1 %"894", %"896"
  br i1 %or.cond.i7.i.i.i.i, label %start_simulation_bb479, label %start_simulation_bb480

start_simulation_bb479:                           ; preds = %start_simulation_bb478
  store i32 0, i32* @"'t2_st", align 4
  br label %start_simulation_bb480

start_simulation_bb480:                           ; preds = %start_simulation_bb479, %start_simulation_bb478
  %"897" = load i32* @"'t3_pc", align 4
  %"898" = icmp eq i32 %"897", 1
  %"899" = load i32* @"'E_3", align 4
  %"900" = icmp eq i32 %"899", 1
  %or.cond.i5.i.i.i.i = and i1 %"898", %"900"
  br i1 %or.cond.i5.i.i.i.i, label %start_simulation_bb481, label %start_simulation_bb482

start_simulation_bb481:                           ; preds = %start_simulation_bb480
  store i32 0, i32* @"'t3_st", align 4
  br label %start_simulation_bb482

start_simulation_bb482:                           ; preds = %start_simulation_bb481, %start_simulation_bb480
  %"901" = load i32* @"'t4_pc", align 4
  %"902" = icmp eq i32 %"901", 1
  %"903" = load i32* @"'E_4", align 4
  %"904" = icmp eq i32 %"903", 1
  %or.cond.i3.i.i.i.i = and i1 %"902", %"904"
  br i1 %or.cond.i3.i.i.i.i, label %start_simulation_bb483, label %start_simulation_bb484

start_simulation_bb483:                           ; preds = %start_simulation_bb482
  store i32 0, i32* @"'t4_st", align 4
  br label %start_simulation_bb484

start_simulation_bb484:                           ; preds = %start_simulation_bb483, %start_simulation_bb482
  %"905" = load i32* @"'t5_pc", align 4
  %"906" = icmp eq i32 %"905", 1
  %"907" = load i32* @"'E_5", align 4
  %"908" = icmp eq i32 %"907", 1
  %or.cond.i1.i.i.i.i = and i1 %"906", %"908"
  br i1 %or.cond.i1.i.i.i.i, label %start_simulation_bb485, label %start_simulation_immediate_notify.exit.i.i

start_simulation_bb485:                           ; preds = %start_simulation_bb484
  store i32 0, i32* @"'t5_st", align 4
  br label %start_simulation_immediate_notify.exit.i.i

start_simulation_immediate_notify.exit.i.i:       ; preds = %start_simulation_bb485, %start_simulation_bb484
  store i32 2, i32* @"'E_M", align 4
  br label %start_simulation_transmit5.exit.i

start_simulation_transmit5.exit.i:                ; preds = %start_simulation_immediate_notify.exit.i.i, %start_simulation_bb473
  store i32 1, i32* @"'t5_pc", align 4
  store i32 2, i32* @"'t5_st", align 4
  br label %start_simulation_reset_delta_events.exit37

start_simulation_eval.exit:                       ; preds = %start_simulation_reset_delta_events.exit37
  %"909" = load i32* @"'M_E", align 4
  %"910" = icmp eq i32 %"909", 0
  br i1 %"910", label %start_simulation_bb486, label %start_simulation_bb487

start_simulation_bb486:                           ; preds = %start_simulation_eval.exit
  store i32 1, i32* @"'M_E", align 4
  br label %start_simulation_bb487

start_simulation_bb487:                           ; preds = %start_simulation_bb486, %start_simulation_eval.exit
  %"911" = load i32* @"'T1_E", align 4
  %"912" = icmp eq i32 %"911", 0
  br i1 %"912", label %start_simulation_bb488, label %start_simulation_bb489

start_simulation_bb488:                           ; preds = %start_simulation_bb487
  store i32 1, i32* @"'T1_E", align 4
  br label %start_simulation_bb489

start_simulation_bb489:                           ; preds = %start_simulation_bb488, %start_simulation_bb487
  %"913" = load i32* @"'T2_E", align 4
  %"914" = icmp eq i32 %"913", 0
  br i1 %"914", label %start_simulation_bb490, label %start_simulation_bb491

start_simulation_bb490:                           ; preds = %start_simulation_bb489
  store i32 1, i32* @"'T2_E", align 4
  br label %start_simulation_bb491

start_simulation_bb491:                           ; preds = %start_simulation_bb490, %start_simulation_bb489
  %"915" = load i32* @"'T3_E", align 4
  %"916" = icmp eq i32 %"915", 0
  br i1 %"916", label %start_simulation_bb492, label %start_simulation_bb493

start_simulation_bb492:                           ; preds = %start_simulation_bb491
  store i32 1, i32* @"'T3_E", align 4
  br label %start_simulation_bb493

start_simulation_bb493:                           ; preds = %start_simulation_bb492, %start_simulation_bb491
  %"917" = load i32* @"'T4_E", align 4
  %"918" = icmp eq i32 %"917", 0
  br i1 %"918", label %start_simulation_bb494, label %start_simulation_bb495

start_simulation_bb494:                           ; preds = %start_simulation_bb493
  store i32 1, i32* @"'T4_E", align 4
  br label %start_simulation_bb495

start_simulation_bb495:                           ; preds = %start_simulation_bb494, %start_simulation_bb493
  %"919" = load i32* @"'T5_E", align 4
  %"920" = icmp eq i32 %"919", 0
  br i1 %"920", label %start_simulation_bb496, label %start_simulation_bb497

start_simulation_bb496:                           ; preds = %start_simulation_bb495
  store i32 1, i32* @"'T5_E", align 4
  br label %start_simulation_bb497

start_simulation_bb497:                           ; preds = %start_simulation_bb496, %start_simulation_bb495
  %"921" = load i32* @"'E_M", align 4
  %"922" = icmp eq i32 %"921", 0
  br i1 %"922", label %start_simulation_bb498, label %start_simulation_bb499

start_simulation_bb498:                           ; preds = %start_simulation_bb497
  store i32 1, i32* @"'E_M", align 4
  br label %start_simulation_bb499

start_simulation_bb499:                           ; preds = %start_simulation_bb498, %start_simulation_bb497
  %"923" = load i32* @"'E_1", align 4
  %"924" = icmp eq i32 %"923", 0
  br i1 %"924", label %start_simulation_bb500, label %start_simulation_bb501

start_simulation_bb500:                           ; preds = %start_simulation_bb499
  store i32 1, i32* @"'E_1", align 4
  br label %start_simulation_bb501

start_simulation_bb501:                           ; preds = %start_simulation_bb500, %start_simulation_bb499
  %"925" = load i32* @"'E_2", align 4
  %"926" = icmp eq i32 %"925", 0
  br i1 %"926", label %start_simulation_bb502, label %start_simulation_bb503

start_simulation_bb502:                           ; preds = %start_simulation_bb501
  store i32 1, i32* @"'E_2", align 4
  br label %start_simulation_bb503

start_simulation_bb503:                           ; preds = %start_simulation_bb502, %start_simulation_bb501
  %"927" = load i32* @"'E_3", align 4
  %"928" = icmp eq i32 %"927", 0
  br i1 %"928", label %start_simulation_bb504, label %start_simulation_bb505

start_simulation_bb504:                           ; preds = %start_simulation_bb503
  store i32 1, i32* @"'E_3", align 4
  br label %start_simulation_bb505

start_simulation_bb505:                           ; preds = %start_simulation_bb504, %start_simulation_bb503
  %"929" = load i32* @"'E_4", align 4
  %"930" = icmp eq i32 %"929", 0
  br i1 %"930", label %start_simulation_bb506, label %start_simulation_bb507

start_simulation_bb506:                           ; preds = %start_simulation_bb505
  store i32 1, i32* @"'E_4", align 4
  br label %start_simulation_bb507

start_simulation_bb507:                           ; preds = %start_simulation_bb506, %start_simulation_bb505
  %"931" = load i32* @"'E_5", align 4
  %"932" = icmp eq i32 %"931", 0
  br i1 %"932", label %start_simulation_bb508, label %start_simulation_fire_delta_events.exit

start_simulation_bb508:                           ; preds = %start_simulation_bb507
  store i32 1, i32* @"'E_5", align 4
  br label %start_simulation_fire_delta_events.exit

start_simulation_fire_delta_events.exit:          ; preds = %start_simulation_bb507, %start_simulation_bb508
  %"933" = load i32* @"'m_pc", align 4
  %"934" = icmp eq i32 %"933", 1
  %"935" = load i32* @"'E_M", align 4
  %"936" = icmp eq i32 %"935", 1
  %or.cond.i.i3 = and i1 %"934", %"936"
  br i1 %or.cond.i.i3, label %start_simulation_bb509, label %start_simulation_bb510

start_simulation_bb509:                           ; preds = %start_simulation_fire_delta_events.exit
  store i32 0, i32* @"'m_st", align 4
  br label %start_simulation_bb510

start_simulation_bb510:                           ; preds = %start_simulation_bb509, %start_simulation_fire_delta_events.exit
  %"937" = load i32* @"'t1_pc", align 4
  %"938" = icmp eq i32 %"937", 1
  %"939" = load i32* @"'E_1", align 4
  %"940" = icmp eq i32 %"939", 1
  %or.cond.i9.i5 = and i1 %"938", %"940"
  br i1 %or.cond.i9.i5, label %start_simulation_bb511, label %start_simulation_bb512

start_simulation_bb511:                           ; preds = %start_simulation_bb510
  store i32 0, i32* @"'t1_st", align 4
  br label %start_simulation_bb512

start_simulation_bb512:                           ; preds = %start_simulation_bb511, %start_simulation_bb510
  %"941" = load i32* @"'t2_pc", align 4
  %"942" = icmp eq i32 %"941", 1
  %"943" = load i32* @"'E_2", align 4
  %"944" = icmp eq i32 %"943", 1
  %or.cond.i7.i7 = and i1 %"942", %"944"
  br i1 %or.cond.i7.i7, label %start_simulation_bb513, label %start_simulation_bb514

start_simulation_bb513:                           ; preds = %start_simulation_bb512
  store i32 0, i32* @"'t2_st", align 4
  br label %start_simulation_bb514

start_simulation_bb514:                           ; preds = %start_simulation_bb513, %start_simulation_bb512
  %"945" = load i32* @"'t3_pc", align 4
  %"946" = icmp eq i32 %"945", 1
  %"947" = load i32* @"'E_3", align 4
  %"948" = icmp eq i32 %"947", 1
  %or.cond.i5.i9 = and i1 %"946", %"948"
  br i1 %or.cond.i5.i9, label %start_simulation_bb515, label %start_simulation_bb516

start_simulation_bb515:                           ; preds = %start_simulation_bb514
  store i32 0, i32* @"'t3_st", align 4
  br label %start_simulation_bb516

start_simulation_bb516:                           ; preds = %start_simulation_bb515, %start_simulation_bb514
  %"949" = load i32* @"'t4_pc", align 4
  %"950" = icmp eq i32 %"949", 1
  %"951" = load i32* @"'E_4", align 4
  %"952" = icmp eq i32 %"951", 1
  %or.cond.i3.i11 = and i1 %"950", %"952"
  br i1 %or.cond.i3.i11, label %start_simulation_bb517, label %start_simulation_bb518

start_simulation_bb517:                           ; preds = %start_simulation_bb516
  store i32 0, i32* @"'t4_st", align 4
  br label %start_simulation_bb518

start_simulation_bb518:                           ; preds = %start_simulation_bb517, %start_simulation_bb516
  %"953" = load i32* @"'t5_pc", align 4
  %"954" = icmp eq i32 %"953", 1
  %"955" = load i32* @"'E_5", align 4
  %"956" = icmp eq i32 %"955", 1
  %or.cond.i1.i13 = and i1 %"954", %"956"
  br i1 %or.cond.i1.i13, label %start_simulation_bb519, label %start_simulation_activate_threads.exit15

start_simulation_bb519:                           ; preds = %start_simulation_bb518
  store i32 0, i32* @"'t5_st", align 4
  br label %start_simulation_activate_threads.exit15

start_simulation_activate_threads.exit15:         ; preds = %start_simulation_bb518, %start_simulation_bb519
  %"957" = load i32* @"'M_E", align 4
  %"958" = icmp eq i32 %"957", 1
  br i1 %"958", label %start_simulation_bb520, label %start_simulation_bb521

start_simulation_bb520:                           ; preds = %start_simulation_activate_threads.exit15
  store i32 2, i32* @"'M_E", align 4
  br label %start_simulation_bb521

start_simulation_bb521:                           ; preds = %start_simulation_bb520, %start_simulation_activate_threads.exit15
  %"959" = load i32* @"'T1_E", align 4
  %"960" = icmp eq i32 %"959", 1
  br i1 %"960", label %start_simulation_bb522, label %start_simulation_bb523

start_simulation_bb522:                           ; preds = %start_simulation_bb521
  store i32 2, i32* @"'T1_E", align 4
  br label %start_simulation_bb523

start_simulation_bb523:                           ; preds = %start_simulation_bb522, %start_simulation_bb521
  %"961" = load i32* @"'T2_E", align 4
  %"962" = icmp eq i32 %"961", 1
  br i1 %"962", label %start_simulation_bb524, label %start_simulation_bb525

start_simulation_bb524:                           ; preds = %start_simulation_bb523
  store i32 2, i32* @"'T2_E", align 4
  br label %start_simulation_bb525

start_simulation_bb525:                           ; preds = %start_simulation_bb524, %start_simulation_bb523
  %"963" = load i32* @"'T3_E", align 4
  %"964" = icmp eq i32 %"963", 1
  br i1 %"964", label %start_simulation_bb526, label %start_simulation_bb527

start_simulation_bb526:                           ; preds = %start_simulation_bb525
  store i32 2, i32* @"'T3_E", align 4
  br label %start_simulation_bb527

start_simulation_bb527:                           ; preds = %start_simulation_bb526, %start_simulation_bb525
  %"965" = load i32* @"'T4_E", align 4
  %"966" = icmp eq i32 %"965", 1
  br i1 %"966", label %start_simulation_bb528, label %start_simulation_bb529

start_simulation_bb528:                           ; preds = %start_simulation_bb527
  store i32 2, i32* @"'T4_E", align 4
  br label %start_simulation_bb529

start_simulation_bb529:                           ; preds = %start_simulation_bb528, %start_simulation_bb527
  %"967" = load i32* @"'T5_E", align 4
  %"968" = icmp eq i32 %"967", 1
  br i1 %"968", label %start_simulation_bb530, label %start_simulation_bb531

start_simulation_bb530:                           ; preds = %start_simulation_bb529
  store i32 2, i32* @"'T5_E", align 4
  br label %start_simulation_bb531

start_simulation_bb531:                           ; preds = %start_simulation_bb530, %start_simulation_bb529
  %"969" = load i32* @"'E_M", align 4
  %"970" = icmp eq i32 %"969", 1
  br i1 %"970", label %start_simulation_bb532, label %start_simulation_bb533

start_simulation_bb532:                           ; preds = %start_simulation_bb531
  store i32 2, i32* @"'E_M", align 4
  br label %start_simulation_bb533

start_simulation_bb533:                           ; preds = %start_simulation_bb532, %start_simulation_bb531
  %"971" = load i32* @"'E_1", align 4
  %"972" = icmp eq i32 %"971", 1
  br i1 %"972", label %start_simulation_bb534, label %start_simulation_bb535

start_simulation_bb534:                           ; preds = %start_simulation_bb533
  store i32 2, i32* @"'E_1", align 4
  br label %start_simulation_bb535

start_simulation_bb535:                           ; preds = %start_simulation_bb534, %start_simulation_bb533
  %"973" = load i32* @"'E_2", align 4
  %"974" = icmp eq i32 %"973", 1
  br i1 %"974", label %start_simulation_bb536, label %start_simulation_bb537

start_simulation_bb536:                           ; preds = %start_simulation_bb535
  store i32 2, i32* @"'E_2", align 4
  br label %start_simulation_bb537

start_simulation_bb537:                           ; preds = %start_simulation_bb536, %start_simulation_bb535
  %"975" = load i32* @"'E_3", align 4
  %"976" = icmp eq i32 %"975", 1
  br i1 %"976", label %start_simulation_bb538, label %start_simulation_bb539

start_simulation_bb538:                           ; preds = %start_simulation_bb537
  store i32 2, i32* @"'E_3", align 4
  br label %start_simulation_bb539

start_simulation_bb539:                           ; preds = %start_simulation_bb538, %start_simulation_bb537
  %"977" = load i32* @"'E_4", align 4
  %"978" = icmp eq i32 %"977", 1
  br i1 %"978", label %start_simulation_bb540, label %start_simulation_bb541

start_simulation_bb540:                           ; preds = %start_simulation_bb539
  store i32 2, i32* @"'E_4", align 4
  br label %start_simulation_bb541

start_simulation_bb541:                           ; preds = %start_simulation_bb540, %start_simulation_bb539
  %"979" = load i32* @"'E_5", align 4
  %"980" = icmp eq i32 %"979", 1
  br i1 %"980", label %start_simulation_bb542, label %start_simulation_reset_delta_events.exit

start_simulation_bb542:                           ; preds = %start_simulation_bb541
  store i32 2, i32* @"'E_5", align 4
  br label %start_simulation_reset_delta_events.exit

start_simulation_reset_delta_events.exit:         ; preds = %start_simulation_bb541, %start_simulation_bb542
  %"981" = load i32* @"'m_st", align 4
  %"982" = icmp eq i32 %"981", 0
  %"983" = load i32* @"'t1_st", align 4
  %"984" = icmp eq i32 %"983", 0
  %or.cond.i = or i1 %"982", %"984"
  %"985" = load i32* @"'t2_st", align 4
  %"986" = icmp eq i32 %"985", 0
  %or.cond3.i = or i1 %or.cond.i, %"986"
  %"987" = load i32* @"'t3_st", align 4
  %"988" = icmp eq i32 %"987", 0
  %or.cond5.i = or i1 %or.cond3.i, %"988"
  %"989" = load i32* @"'t4_st", align 4
  %"990" = icmp eq i32 %"989", 0
  %or.cond7.i = or i1 %or.cond5.i, %"990"
  %"991" = load i32* @"'t5_st", align 4
  %"992" = icmp eq i32 %"991", 0
  %or.cond9.i = or i1 %or.cond7.i, %"992"
  %__retres1.0.i = select i1 %or.cond9.i, i32 1, i32 0
  %"993" = icmp eq i32 %__retres1.0.i, 0
  br i1 %"993", label %start_simulation_bb543, label %start_simulation_reset_time_events.exit

start_simulation_bb543:                           ; preds = %start_simulation_reset_delta_events.exit
  store i32 1, i32* @"'M_E", align 4
  %"994" = load i32* @"'m_pc", align 4
  %"995" = icmp eq i32 %"994", 1
  %"996" = load i32* @"'E_M", align 4
  %"997" = icmp eq i32 %"996", 1
  %or.cond.i.i1 = and i1 %"995", %"997"
  br i1 %or.cond.i.i1, label %start_simulation_bb544, label %start_simulation_bb545

start_simulation_bb544:                           ; preds = %start_simulation_bb543
  store i32 0, i32* @"'m_st", align 4
  br label %start_simulation_bb545

start_simulation_bb545:                           ; preds = %start_simulation_bb544, %start_simulation_bb543
  %"998" = load i32* @"'t1_pc", align 4
  %"999" = icmp eq i32 %"998", 1
  %"1000" = load i32* @"'E_1", align 4
  %"1001" = icmp eq i32 %"1000", 1
  %or.cond.i9.i = and i1 %"999", %"1001"
  br i1 %or.cond.i9.i, label %start_simulation_bb546, label %start_simulation_bb547

start_simulation_bb546:                           ; preds = %start_simulation_bb545
  store i32 0, i32* @"'t1_st", align 4
  br label %start_simulation_bb547

start_simulation_bb547:                           ; preds = %start_simulation_bb546, %start_simulation_bb545
  %"1002" = load i32* @"'t2_pc", align 4
  %"1003" = icmp eq i32 %"1002", 1
  %"1004" = load i32* @"'E_2", align 4
  %"1005" = icmp eq i32 %"1004", 1
  %or.cond.i7.i = and i1 %"1003", %"1005"
  br i1 %or.cond.i7.i, label %start_simulation_bb548, label %start_simulation_bb549

start_simulation_bb548:                           ; preds = %start_simulation_bb547
  store i32 0, i32* @"'t2_st", align 4
  br label %start_simulation_bb549

start_simulation_bb549:                           ; preds = %start_simulation_bb548, %start_simulation_bb547
  %"1006" = load i32* @"'t3_pc", align 4
  %"1007" = icmp eq i32 %"1006", 1
  %"1008" = load i32* @"'E_3", align 4
  %"1009" = icmp eq i32 %"1008", 1
  %or.cond.i5.i = and i1 %"1007", %"1009"
  br i1 %or.cond.i5.i, label %start_simulation_bb550, label %start_simulation_bb551

start_simulation_bb550:                           ; preds = %start_simulation_bb549
  store i32 0, i32* @"'t3_st", align 4
  br label %start_simulation_bb551

start_simulation_bb551:                           ; preds = %start_simulation_bb550, %start_simulation_bb549
  %"1010" = load i32* @"'t4_pc", align 4
  %"1011" = icmp eq i32 %"1010", 1
  %"1012" = load i32* @"'E_4", align 4
  %"1013" = icmp eq i32 %"1012", 1
  %or.cond.i3.i = and i1 %"1011", %"1013"
  br i1 %or.cond.i3.i, label %start_simulation_bb552, label %start_simulation_bb553

start_simulation_bb552:                           ; preds = %start_simulation_bb551
  store i32 0, i32* @"'t4_st", align 4
  br label %start_simulation_bb553

start_simulation_bb553:                           ; preds = %start_simulation_bb552, %start_simulation_bb551
  %"1014" = load i32* @"'t5_pc", align 4
  %"1015" = icmp eq i32 %"1014", 1
  %"1016" = load i32* @"'E_5", align 4
  %"1017" = icmp eq i32 %"1016", 1
  %or.cond.i1.i = and i1 %"1015", %"1017"
  br i1 %or.cond.i1.i, label %start_simulation_bb554, label %start_simulation_activate_threads.exit

start_simulation_bb554:                           ; preds = %start_simulation_bb553
  store i32 0, i32* @"'t5_st", align 4
  br label %start_simulation_activate_threads.exit

start_simulation_activate_threads.exit:           ; preds = %start_simulation_bb553, %start_simulation_bb554
  %"1018" = load i32* @"'M_E", align 4
  %"1019" = icmp eq i32 %"1018", 1
  br i1 %"1019", label %start_simulation_bb555, label %start_simulation_bb556

start_simulation_bb555:                           ; preds = %start_simulation_activate_threads.exit
  store i32 2, i32* @"'M_E", align 4
  br label %start_simulation_bb556

start_simulation_bb556:                           ; preds = %start_simulation_bb555, %start_simulation_activate_threads.exit
  %"1020" = load i32* @"'T1_E", align 4
  %"1021" = icmp eq i32 %"1020", 1
  br i1 %"1021", label %start_simulation_bb557, label %start_simulation_bb558

start_simulation_bb557:                           ; preds = %start_simulation_bb556
  store i32 2, i32* @"'T1_E", align 4
  br label %start_simulation_bb558

start_simulation_bb558:                           ; preds = %start_simulation_bb557, %start_simulation_bb556
  %"1022" = load i32* @"'T2_E", align 4
  %"1023" = icmp eq i32 %"1022", 1
  br i1 %"1023", label %start_simulation_bb559, label %start_simulation_bb560

start_simulation_bb559:                           ; preds = %start_simulation_bb558
  store i32 2, i32* @"'T2_E", align 4
  br label %start_simulation_bb560

start_simulation_bb560:                           ; preds = %start_simulation_bb559, %start_simulation_bb558
  %"1024" = load i32* @"'T3_E", align 4
  %"1025" = icmp eq i32 %"1024", 1
  br i1 %"1025", label %start_simulation_bb561, label %start_simulation_bb562

start_simulation_bb561:                           ; preds = %start_simulation_bb560
  store i32 2, i32* @"'T3_E", align 4
  br label %start_simulation_bb562

start_simulation_bb562:                           ; preds = %start_simulation_bb561, %start_simulation_bb560
  %"1026" = load i32* @"'T4_E", align 4
  %"1027" = icmp eq i32 %"1026", 1
  br i1 %"1027", label %start_simulation_bb563, label %start_simulation_bb564

start_simulation_bb563:                           ; preds = %start_simulation_bb562
  store i32 2, i32* @"'T4_E", align 4
  br label %start_simulation_bb564

start_simulation_bb564:                           ; preds = %start_simulation_bb563, %start_simulation_bb562
  %"1028" = load i32* @"'T5_E", align 4
  %"1029" = icmp eq i32 %"1028", 1
  br i1 %"1029", label %start_simulation_bb565, label %start_simulation_bb566

start_simulation_bb565:                           ; preds = %start_simulation_bb564
  store i32 2, i32* @"'T5_E", align 4
  br label %start_simulation_bb566

start_simulation_bb566:                           ; preds = %start_simulation_bb565, %start_simulation_bb564
  %"1030" = load i32* @"'E_M", align 4
  %"1031" = icmp eq i32 %"1030", 1
  br i1 %"1031", label %start_simulation_bb567, label %start_simulation_bb568

start_simulation_bb567:                           ; preds = %start_simulation_bb566
  store i32 2, i32* @"'E_M", align 4
  br label %start_simulation_bb568

start_simulation_bb568:                           ; preds = %start_simulation_bb567, %start_simulation_bb566
  %"1032" = load i32* @"'E_1", align 4
  %"1033" = icmp eq i32 %"1032", 1
  br i1 %"1033", label %start_simulation_bb569, label %start_simulation_bb570

start_simulation_bb569:                           ; preds = %start_simulation_bb568
  store i32 2, i32* @"'E_1", align 4
  br label %start_simulation_bb570

start_simulation_bb570:                           ; preds = %start_simulation_bb569, %start_simulation_bb568
  %"1034" = load i32* @"'E_2", align 4
  %"1035" = icmp eq i32 %"1034", 1
  br i1 %"1035", label %start_simulation_bb571, label %start_simulation_bb572

start_simulation_bb571:                           ; preds = %start_simulation_bb570
  store i32 2, i32* @"'E_2", align 4
  br label %start_simulation_bb572

start_simulation_bb572:                           ; preds = %start_simulation_bb571, %start_simulation_bb570
  %"1036" = load i32* @"'E_3", align 4
  %"1037" = icmp eq i32 %"1036", 1
  br i1 %"1037", label %start_simulation_bb573, label %start_simulation_bb574

start_simulation_bb573:                           ; preds = %start_simulation_bb572
  store i32 2, i32* @"'E_3", align 4
  br label %start_simulation_bb574

start_simulation_bb574:                           ; preds = %start_simulation_bb573, %start_simulation_bb572
  %"1038" = load i32* @"'E_4", align 4
  %"1039" = icmp eq i32 %"1038", 1
  br i1 %"1039", label %start_simulation_bb575, label %start_simulation_bb576

start_simulation_bb575:                           ; preds = %start_simulation_bb574
  store i32 2, i32* @"'E_4", align 4
  br label %start_simulation_bb576

start_simulation_bb576:                           ; preds = %start_simulation_bb575, %start_simulation_bb574
  %"1040" = load i32* @"'E_5", align 4
  %"1041" = icmp eq i32 %"1040", 1
  br i1 %"1041", label %start_simulation_bb577, label %start_simulation_reset_time_events.exit

start_simulation_bb577:                           ; preds = %start_simulation_bb576
  store i32 2, i32* @"'E_5", align 4
  br label %start_simulation_reset_time_events.exit

start_simulation_reset_time_events.exit:          ; preds = %start_simulation_reset_delta_events.exit, %start_simulation_bb577, %start_simulation_bb576
  %"1042" = load i32* @"'m_st", align 4
  %"1043" = icmp eq i32 %"1042", 0
  %"1044" = load i32* @"'t1_st", align 4
  %"1045" = icmp eq i32 %"1044", 0
  %or.cond.i.i = or i1 %"1043", %"1045"
  %"1046" = load i32* @"'t2_st", align 4
  %"1047" = icmp eq i32 %"1046", 0
  %or.cond3.i.i = or i1 %or.cond.i.i, %"1047"
  %"1048" = load i32* @"'t3_st", align 4
  %"1049" = icmp eq i32 %"1048", 0
  %or.cond5.i.i = or i1 %or.cond3.i.i, %"1049"
  %"1050" = load i32* @"'t4_st", align 4
  %"1051" = icmp eq i32 %"1050", 0
  %or.cond7.i.i = or i1 %or.cond5.i.i, %"1051"
  %"1052" = load i32* @"'t5_st", align 4
  %"1053" = icmp eq i32 %"1052", 0
  %or.cond9.i.i = or i1 %or.cond7.i.i, %"1053"
  %__retres2.0.i = select i1 %or.cond9.i.i, i32 0, i32 1
  %"1054" = icmp ne i32 %__retres2.0.i, 0
  br i1 %"1054", label %start_simulation_bb578, label %start_simulation_reset_delta_events.exit37

start_simulation_bb578:                           ; preds = %start_simulation_reset_time_events.exit
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb579:
  store i32 1, i32* @"'m_i", align 4
  store i32 1, i32* @"'t1_i", align 4
  store i32 1, i32* @"'t2_i", align 4
  store i32 1, i32* @"'t3_i", align 4
  store i32 1, i32* @"'t4_i", align 4
  store i32 1, i32* @"'t5_i", align 4
  %"1055" = load i32* @"'m_i", align 4
  %"1056" = icmp eq i32 %"1055", 1
  br i1 %"1056", label %main_bb580, label %main_bb581

main_bb580:                                       ; preds = %main_bb579
  store i32 0, i32* @"'m_st", align 4
  br label %main_bb582

main_bb581:                                       ; preds = %main_bb579
  store i32 2, i32* @"'m_st", align 4
  br label %main_bb582

main_bb582:                                       ; preds = %main_bb581, %main_bb580
  %"1057" = load i32* @"'t1_i", align 4
  %"1058" = icmp eq i32 %"1057", 1
  br i1 %"1058", label %main_bb583, label %main_bb584

main_bb583:                                       ; preds = %main_bb582
  store i32 0, i32* @"'t1_st", align 4
  br label %main_bb585

main_bb584:                                       ; preds = %main_bb582
  store i32 2, i32* @"'t1_st", align 4
  br label %main_bb585

main_bb585:                                       ; preds = %main_bb584, %main_bb583
  %"1059" = load i32* @"'t2_i", align 4
  %"1060" = icmp eq i32 %"1059", 1
  br i1 %"1060", label %main_bb586, label %main_bb587

main_bb586:                                       ; preds = %main_bb585
  store i32 0, i32* @"'t2_st", align 4
  br label %main_bb588

main_bb587:                                       ; preds = %main_bb585
  store i32 2, i32* @"'t2_st", align 4
  br label %main_bb588

main_bb588:                                       ; preds = %main_bb587, %main_bb586
  %"1061" = load i32* @"'t3_i", align 4
  %"1062" = icmp eq i32 %"1061", 1
  br i1 %"1062", label %main_bb589, label %main_bb590

main_bb589:                                       ; preds = %main_bb588
  store i32 0, i32* @"'t3_st", align 4
  br label %main_bb591

main_bb590:                                       ; preds = %main_bb588
  store i32 2, i32* @"'t3_st", align 4
  br label %main_bb591

main_bb591:                                       ; preds = %main_bb590, %main_bb589
  %"1063" = load i32* @"'t4_i", align 4
  %"1064" = icmp eq i32 %"1063", 1
  br i1 %"1064", label %main_bb592, label %main_bb593

main_bb592:                                       ; preds = %main_bb591
  store i32 0, i32* @"'t4_st", align 4
  br label %main_bb594

main_bb593:                                       ; preds = %main_bb591
  store i32 2, i32* @"'t4_st", align 4
  br label %main_bb594

main_bb594:                                       ; preds = %main_bb593, %main_bb592
  %"1065" = load i32* @"'t5_i", align 4
  %"1066" = icmp eq i32 %"1065", 1
  br i1 %"1066", label %main_bb595, label %main_bb596

main_bb595:                                       ; preds = %main_bb594
  store i32 0, i32* @"'t5_st", align 4
  br label %main_init_threads.exit.i

main_bb596:                                       ; preds = %main_bb594
  store i32 2, i32* @"'t5_st", align 4
  br label %main_init_threads.exit.i

main_init_threads.exit.i:                         ; preds = %main_bb596, %main_bb595
  %"1067" = load i32* @"'M_E", align 4
  %"1068" = icmp eq i32 %"1067", 0
  br i1 %"1068", label %main_bb597, label %main_bb598

main_bb597:                                       ; preds = %main_init_threads.exit.i
  store i32 1, i32* @"'M_E", align 4
  br label %main_bb598

main_bb598:                                       ; preds = %main_bb597, %main_init_threads.exit.i
  %"1069" = load i32* @"'T1_E", align 4
  %"1070" = icmp eq i32 %"1069", 0
  br i1 %"1070", label %main_bb599, label %main_bb600

main_bb599:                                       ; preds = %main_bb598
  store i32 1, i32* @"'T1_E", align 4
  br label %main_bb600

main_bb600:                                       ; preds = %main_bb599, %main_bb598
  %"1071" = load i32* @"'T2_E", align 4
  %"1072" = icmp eq i32 %"1071", 0
  br i1 %"1072", label %main_bb601, label %main_bb602

main_bb601:                                       ; preds = %main_bb600
  store i32 1, i32* @"'T2_E", align 4
  br label %main_bb602

main_bb602:                                       ; preds = %main_bb601, %main_bb600
  %"1073" = load i32* @"'T3_E", align 4
  %"1074" = icmp eq i32 %"1073", 0
  br i1 %"1074", label %main_bb603, label %main_bb604

main_bb603:                                       ; preds = %main_bb602
  store i32 1, i32* @"'T3_E", align 4
  br label %main_bb604

main_bb604:                                       ; preds = %main_bb603, %main_bb602
  %"1075" = load i32* @"'T4_E", align 4
  %"1076" = icmp eq i32 %"1075", 0
  br i1 %"1076", label %main_bb605, label %main_bb606

main_bb605:                                       ; preds = %main_bb604
  store i32 1, i32* @"'T4_E", align 4
  br label %main_bb606

main_bb606:                                       ; preds = %main_bb605, %main_bb604
  %"1077" = load i32* @"'T5_E", align 4
  %"1078" = icmp eq i32 %"1077", 0
  br i1 %"1078", label %main_bb607, label %main_bb608

main_bb607:                                       ; preds = %main_bb606
  store i32 1, i32* @"'T5_E", align 4
  br label %main_bb608

main_bb608:                                       ; preds = %main_bb607, %main_bb606
  %"1079" = load i32* @"'E_M", align 4
  %"1080" = icmp eq i32 %"1079", 0
  br i1 %"1080", label %main_bb609, label %main_bb610

main_bb609:                                       ; preds = %main_bb608
  store i32 1, i32* @"'E_M", align 4
  br label %main_bb610

main_bb610:                                       ; preds = %main_bb609, %main_bb608
  %"1081" = load i32* @"'E_1", align 4
  %"1082" = icmp eq i32 %"1081", 0
  br i1 %"1082", label %main_bb611, label %main_bb612

main_bb611:                                       ; preds = %main_bb610
  store i32 1, i32* @"'E_1", align 4
  br label %main_bb612

main_bb612:                                       ; preds = %main_bb611, %main_bb610
  %"1083" = load i32* @"'E_2", align 4
  %"1084" = icmp eq i32 %"1083", 0
  br i1 %"1084", label %main_bb613, label %main_bb614

main_bb613:                                       ; preds = %main_bb612
  store i32 1, i32* @"'E_2", align 4
  br label %main_bb614

main_bb614:                                       ; preds = %main_bb613, %main_bb612
  %"1085" = load i32* @"'E_3", align 4
  %"1086" = icmp eq i32 %"1085", 0
  br i1 %"1086", label %main_bb615, label %main_bb616

main_bb615:                                       ; preds = %main_bb614
  store i32 1, i32* @"'E_3", align 4
  br label %main_bb616

main_bb616:                                       ; preds = %main_bb615, %main_bb614
  %"1087" = load i32* @"'E_4", align 4
  %"1088" = icmp eq i32 %"1087", 0
  br i1 %"1088", label %main_bb617, label %main_bb618

main_bb617:                                       ; preds = %main_bb616
  store i32 1, i32* @"'E_4", align 4
  br label %main_bb618

main_bb618:                                       ; preds = %main_bb617, %main_bb616
  %"1089" = load i32* @"'E_5", align 4
  %"1090" = icmp eq i32 %"1089", 0
  br i1 %"1090", label %main_bb619, label %main_fire_delta_events.exit23.i

main_bb619:                                       ; preds = %main_bb618
  store i32 1, i32* @"'E_5", align 4
  br label %main_fire_delta_events.exit23.i

main_fire_delta_events.exit23.i:                  ; preds = %main_bb619, %main_bb618
  %"1091" = load i32* @"'m_pc", align 4
  %"1092" = icmp eq i32 %"1091", 1
  %"1093" = load i32* @"'E_M", align 4
  %"1094" = icmp eq i32 %"1093", 1
  %or.cond.i.i24.i = and i1 %"1092", %"1094"
  br i1 %or.cond.i.i24.i, label %main_bb620, label %main_bb621

main_bb620:                                       ; preds = %main_fire_delta_events.exit23.i
  store i32 0, i32* @"'m_st", align 4
  br label %main_bb621

main_bb621:                                       ; preds = %main_bb620, %main_fire_delta_events.exit23.i
  %"1095" = load i32* @"'t1_pc", align 4
  %"1096" = icmp eq i32 %"1095", 1
  %"1097" = load i32* @"'E_1", align 4
  %"1098" = icmp eq i32 %"1097", 1
  %or.cond.i9.i26.i = and i1 %"1096", %"1098"
  br i1 %or.cond.i9.i26.i, label %main_bb622, label %main_bb623

main_bb622:                                       ; preds = %main_bb621
  store i32 0, i32* @"'t1_st", align 4
  br label %main_bb623

main_bb623:                                       ; preds = %main_bb622, %main_bb621
  %"1099" = load i32* @"'t2_pc", align 4
  %"1100" = icmp eq i32 %"1099", 1
  %"1101" = load i32* @"'E_2", align 4
  %"1102" = icmp eq i32 %"1101", 1
  %or.cond.i7.i28.i = and i1 %"1100", %"1102"
  br i1 %or.cond.i7.i28.i, label %main_bb624, label %main_bb625

main_bb624:                                       ; preds = %main_bb623
  store i32 0, i32* @"'t2_st", align 4
  br label %main_bb625

main_bb625:                                       ; preds = %main_bb624, %main_bb623
  %"1103" = load i32* @"'t3_pc", align 4
  %"1104" = icmp eq i32 %"1103", 1
  %"1105" = load i32* @"'E_3", align 4
  %"1106" = icmp eq i32 %"1105", 1
  %or.cond.i5.i30.i = and i1 %"1104", %"1106"
  br i1 %or.cond.i5.i30.i, label %main_bb626, label %main_bb627

main_bb626:                                       ; preds = %main_bb625
  store i32 0, i32* @"'t3_st", align 4
  br label %main_bb627

main_bb627:                                       ; preds = %main_bb626, %main_bb625
  %"1107" = load i32* @"'t4_pc", align 4
  %"1108" = icmp eq i32 %"1107", 1
  %"1109" = load i32* @"'E_4", align 4
  %"1110" = icmp eq i32 %"1109", 1
  %or.cond.i3.i32.i = and i1 %"1108", %"1110"
  br i1 %or.cond.i3.i32.i, label %main_bb628, label %main_bb629

main_bb628:                                       ; preds = %main_bb627
  store i32 0, i32* @"'t4_st", align 4
  br label %main_bb629

main_bb629:                                       ; preds = %main_bb628, %main_bb627
  %"1111" = load i32* @"'t5_pc", align 4
  %"1112" = icmp eq i32 %"1111", 1
  %"1113" = load i32* @"'E_5", align 4
  %"1114" = icmp eq i32 %"1113", 1
  %or.cond.i1.i34.i = and i1 %"1112", %"1114"
  br i1 %or.cond.i1.i34.i, label %main_bb630, label %main_activate_threads.exit36.i

main_bb630:                                       ; preds = %main_bb629
  store i32 0, i32* @"'t5_st", align 4
  br label %main_activate_threads.exit36.i

main_activate_threads.exit36.i:                   ; preds = %main_bb630, %main_bb629
  %"1115" = load i32* @"'M_E", align 4
  %"1116" = icmp eq i32 %"1115", 1
  br i1 %"1116", label %main_bb631, label %main_bb632

main_bb631:                                       ; preds = %main_activate_threads.exit36.i
  store i32 2, i32* @"'M_E", align 4
  br label %main_bb632

main_bb632:                                       ; preds = %main_bb631, %main_activate_threads.exit36.i
  %"1117" = load i32* @"'T1_E", align 4
  %"1118" = icmp eq i32 %"1117", 1
  br i1 %"1118", label %main_bb633, label %main_bb634

main_bb633:                                       ; preds = %main_bb632
  store i32 2, i32* @"'T1_E", align 4
  br label %main_bb634

main_bb634:                                       ; preds = %main_bb633, %main_bb632
  %"1119" = load i32* @"'T2_E", align 4
  %"1120" = icmp eq i32 %"1119", 1
  br i1 %"1120", label %main_bb635, label %main_bb636

main_bb635:                                       ; preds = %main_bb634
  store i32 2, i32* @"'T2_E", align 4
  br label %main_bb636

main_bb636:                                       ; preds = %main_bb635, %main_bb634
  %"1121" = load i32* @"'T3_E", align 4
  %"1122" = icmp eq i32 %"1121", 1
  br i1 %"1122", label %main_bb637, label %main_bb638

main_bb637:                                       ; preds = %main_bb636
  store i32 2, i32* @"'T3_E", align 4
  br label %main_bb638

main_bb638:                                       ; preds = %main_bb637, %main_bb636
  %"1123" = load i32* @"'T4_E", align 4
  %"1124" = icmp eq i32 %"1123", 1
  br i1 %"1124", label %main_bb639, label %main_bb640

main_bb639:                                       ; preds = %main_bb638
  store i32 2, i32* @"'T4_E", align 4
  br label %main_bb640

main_bb640:                                       ; preds = %main_bb639, %main_bb638
  %"1125" = load i32* @"'T5_E", align 4
  %"1126" = icmp eq i32 %"1125", 1
  br i1 %"1126", label %main_bb641, label %main_bb642

main_bb641:                                       ; preds = %main_bb640
  store i32 2, i32* @"'T5_E", align 4
  br label %main_bb642

main_bb642:                                       ; preds = %main_bb641, %main_bb640
  %"1127" = load i32* @"'E_M", align 4
  %"1128" = icmp eq i32 %"1127", 1
  br i1 %"1128", label %main_bb643, label %main_bb644

main_bb643:                                       ; preds = %main_bb642
  store i32 2, i32* @"'E_M", align 4
  br label %main_bb644

main_bb644:                                       ; preds = %main_bb643, %main_bb642
  %"1129" = load i32* @"'E_1", align 4
  %"1130" = icmp eq i32 %"1129", 1
  br i1 %"1130", label %main_bb645, label %main_bb646

main_bb645:                                       ; preds = %main_bb644
  store i32 2, i32* @"'E_1", align 4
  br label %main_bb646

main_bb646:                                       ; preds = %main_bb645, %main_bb644
  %"1131" = load i32* @"'E_2", align 4
  %"1132" = icmp eq i32 %"1131", 1
  br i1 %"1132", label %main_bb647, label %main_bb648

main_bb647:                                       ; preds = %main_bb646
  store i32 2, i32* @"'E_2", align 4
  br label %main_bb648

main_bb648:                                       ; preds = %main_bb647, %main_bb646
  %"1133" = load i32* @"'E_3", align 4
  %"1134" = icmp eq i32 %"1133", 1
  br i1 %"1134", label %main_bb649, label %main_bb650

main_bb649:                                       ; preds = %main_bb648
  store i32 2, i32* @"'E_3", align 4
  br label %main_bb650

main_bb650:                                       ; preds = %main_bb649, %main_bb648
  %"1135" = load i32* @"'E_4", align 4
  %"1136" = icmp eq i32 %"1135", 1
  br i1 %"1136", label %main_bb651, label %main_bb652

main_bb651:                                       ; preds = %main_bb650
  store i32 2, i32* @"'E_4", align 4
  br label %main_bb652

main_bb652:                                       ; preds = %main_bb651, %main_bb650
  %"1137" = load i32* @"'E_5", align 4
  %"1138" = icmp eq i32 %"1137", 1
  br i1 %"1138", label %main_bb653, label %main_reset_delta_events.exit37.i

main_bb653:                                       ; preds = %main_bb652
  store i32 2, i32* @"'E_5", align 4
  br label %main_reset_delta_events.exit37.i

main_reset_delta_events.exit37.i:                 ; preds = %main_reset_time_events.exit.i, %main_transmit5.exit.i.i, %main_bb734, %main_bb733, %main_bb653, %main_bb652
  %"1139" = load i32* @"'m_st", align 4
  %"1140" = icmp eq i32 %"1139", 0
  %"1141" = load i32* @"'t1_st", align 4
  %"1142" = icmp eq i32 %"1141", 0
  %or.cond.i.i16.i = or i1 %"1140", %"1142"
  %"1143" = load i32* @"'t2_st", align 4
  %"1144" = icmp eq i32 %"1143", 0
  %or.cond3.i.i17.i = or i1 %or.cond.i.i16.i, %"1144"
  %"1145" = load i32* @"'t3_st", align 4
  %"1146" = icmp eq i32 %"1145", 0
  %or.cond5.i.i18.i = or i1 %or.cond3.i.i17.i, %"1146"
  %"1147" = load i32* @"'t4_st", align 4
  %"1148" = icmp eq i32 %"1147", 0
  %or.cond7.i.i19.i = or i1 %or.cond5.i.i18.i, %"1148"
  %"1149" = load i32* @"'t5_st", align 4
  %"1150" = icmp eq i32 %"1149", 0
  %or.cond9.i.i20.i = or i1 %or.cond7.i.i19.i, %"1150"
  br i1 %or.cond9.i.i20.i, label %main_bb654, label %main_eval.exit.i

main_bb654:                                       ; preds = %main_reset_delta_events.exit37.i
  %"1151" = load i32* @"'m_st", align 4
  %"1152" = icmp eq i32 %"1151", 0
  br i1 %"1152", label %main_bb655, label %main_bb673

main_bb655:                                       ; preds = %main_bb654
  %"1153" = call i32 (...)* @__VERIFIER_nondet_int() #5
  %"1154" = icmp ne i32 %"1153", 0
  br i1 %"1154", label %main_bb656, label %main_bb673

main_bb656:                                       ; preds = %main_bb655
  store i32 1, i32* @"'m_st", align 4
  %"1155" = call i32 @__kittel_nondef.0() #5
  %"1156" = load i32* @"'m_pc", align 4
  %"1157" = icmp ne i32 %"1156", 0
  %"1158" = load i32* @"'m_pc", align 4
  %"1159" = icmp eq i32 %"1158", 1
  %or.cond.i34.i.i = and i1 %"1157", %"1159"
  br i1 %or.cond.i34.i.i, label %main_bb657, label %main_bb661

main_bb657:                                       ; preds = %main_bb656
  %"1160" = load i32* @"'token", align 4
  %"1161" = load i32* @"'local", align 4
  %"1162" = add nsw i32 %"1161", 5
  %"1163" = icmp ne i32 %"1160", %"1162"
  br i1 %"1163", label %main_bb658, label %main_bb659

main_bb658:                                       ; preds = %main_bb657
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_bb659:                                       ; preds = %main_bb657
  %"1164" = icmp sle i32 %"1155", 5
  %"1165" = icmp sge i32 %"1155", 5
  %or.cond3.i35.i.i = and i1 %"1164", %"1165"
  %"1166" = icmp eq i32 %"1155", 5
  %or.cond4.i.i.i = and i1 %or.cond3.i35.i.i, %"1166"
  br i1 %or.cond4.i.i.i, label %main_bb660, label %main_bb661

main_bb660:                                       ; preds = %main_bb659
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_bb661:                                       ; preds = %main_bb659, %main_bb656
  %"1167" = call i32 (...)* @__VERIFIER_nondet_int() #5
  store i32 %"1167", i32* @"'token", align 4
  %"1168" = load i32* @"'token", align 4
  store i32 %"1168", i32* @"'local", align 4
  store i32 1, i32* @"'E_1", align 4
  %"1169" = load i32* @"'m_pc", align 4
  %"1170" = icmp eq i32 %"1169", 1
  %"1171" = load i32* @"'E_M", align 4
  %"1172" = icmp eq i32 %"1171", 1
  %or.cond.i.i.i.i36.i.i = and i1 %"1170", %"1172"
  br i1 %or.cond.i.i.i.i36.i.i, label %main_bb662, label %main_bb663

main_bb662:                                       ; preds = %main_bb661
  store i32 0, i32* @"'m_st", align 4
  br label %main_bb663

main_bb663:                                       ; preds = %main_bb662, %main_bb661
  %"1173" = load i32* @"'t1_pc", align 4
  %"1174" = icmp eq i32 %"1173", 1
  %"1175" = load i32* @"'E_1", align 4
  %"1176" = icmp eq i32 %"1175", 1
  %or.cond.i9.i.i.i37.i.i = and i1 %"1174", %"1176"
  br i1 %or.cond.i9.i.i.i37.i.i, label %main_bb664, label %main_bb665

main_bb664:                                       ; preds = %main_bb663
  store i32 0, i32* @"'t1_st", align 4
  br label %main_bb665

main_bb665:                                       ; preds = %main_bb664, %main_bb663
  %"1177" = load i32* @"'t2_pc", align 4
  %"1178" = icmp eq i32 %"1177", 1
  %"1179" = load i32* @"'E_2", align 4
  %"1180" = icmp eq i32 %"1179", 1
  %or.cond.i7.i.i.i38.i.i = and i1 %"1178", %"1180"
  br i1 %or.cond.i7.i.i.i38.i.i, label %main_bb666, label %main_bb667

main_bb666:                                       ; preds = %main_bb665
  store i32 0, i32* @"'t2_st", align 4
  br label %main_bb667

main_bb667:                                       ; preds = %main_bb666, %main_bb665
  %"1181" = load i32* @"'t3_pc", align 4
  %"1182" = icmp eq i32 %"1181", 1
  %"1183" = load i32* @"'E_3", align 4
  %"1184" = icmp eq i32 %"1183", 1
  %or.cond.i5.i.i.i39.i.i = and i1 %"1182", %"1184"
  br i1 %or.cond.i5.i.i.i39.i.i, label %main_bb668, label %main_bb669

main_bb668:                                       ; preds = %main_bb667
  store i32 0, i32* @"'t3_st", align 4
  br label %main_bb669

main_bb669:                                       ; preds = %main_bb668, %main_bb667
  %"1185" = load i32* @"'t4_pc", align 4
  %"1186" = icmp eq i32 %"1185", 1
  %"1187" = load i32* @"'E_4", align 4
  %"1188" = icmp eq i32 %"1187", 1
  %or.cond.i3.i.i.i40.i.i = and i1 %"1186", %"1188"
  br i1 %or.cond.i3.i.i.i40.i.i, label %main_bb670, label %main_bb671

main_bb670:                                       ; preds = %main_bb669
  store i32 0, i32* @"'t4_st", align 4
  br label %main_bb671

main_bb671:                                       ; preds = %main_bb670, %main_bb669
  %"1189" = load i32* @"'t5_pc", align 4
  %"1190" = icmp eq i32 %"1189", 1
  %"1191" = load i32* @"'E_5", align 4
  %"1192" = icmp eq i32 %"1191", 1
  %or.cond.i1.i.i.i41.i.i = and i1 %"1190", %"1192"
  br i1 %or.cond.i1.i.i.i41.i.i, label %main_bb672, label %main_master.exit.i.i

main_bb672:                                       ; preds = %main_bb671
  store i32 0, i32* @"'t5_st", align 4
  br label %main_master.exit.i.i

main_master.exit.i.i:                             ; preds = %main_bb672, %main_bb671
  store i32 2, i32* @"'E_1", align 4
  store i32 1, i32* @"'m_pc", align 4
  store i32 2, i32* @"'m_st", align 4
  br label %main_bb673

main_bb673:                                       ; preds = %main_master.exit.i.i, %main_bb655, %main_bb654
  %"1193" = load i32* @"'t1_st", align 4
  %"1194" = icmp eq i32 %"1193", 0
  br i1 %"1194", label %main_bb674, label %main_bb688

main_bb674:                                       ; preds = %main_bb673
  %"1195" = call i32 (...)* @__VERIFIER_nondet_int() #5
  %"1196" = icmp ne i32 %"1195", 0
  br i1 %"1196", label %main_bb675, label %main_bb688

main_bb675:                                       ; preds = %main_bb674
  store i32 1, i32* @"'t1_st", align 4
  %"1197" = load i32* @"'t1_pc", align 4
  %"1198" = icmp ne i32 %"1197", 0
  %"1199" = load i32* @"'t1_pc", align 4
  %"1200" = icmp eq i32 %"1199", 1
  %or.cond.i26.i.i = and i1 %"1198", %"1200"
  br i1 %or.cond.i26.i.i, label %main_bb676, label %main_transmit1.exit.i.i

main_bb676:                                       ; preds = %main_bb675
  %"1201" = load i32* @"'token", align 4
  %"1202" = add nsw i32 %"1201", 1
  store i32 %"1202", i32* @"'token", align 4
  store i32 1, i32* @"'E_2", align 4
  %"1203" = load i32* @"'m_pc", align 4
  %"1204" = icmp eq i32 %"1203", 1
  %"1205" = load i32* @"'E_M", align 4
  %"1206" = icmp eq i32 %"1205", 1
  %or.cond.i.i.i.i27.i.i = and i1 %"1204", %"1206"
  br i1 %or.cond.i.i.i.i27.i.i, label %main_bb677, label %main_bb678

main_bb677:                                       ; preds = %main_bb676
  store i32 0, i32* @"'m_st", align 4
  br label %main_bb678

main_bb678:                                       ; preds = %main_bb677, %main_bb676
  %"1207" = load i32* @"'t1_pc", align 4
  %"1208" = icmp eq i32 %"1207", 1
  %"1209" = load i32* @"'E_1", align 4
  %"1210" = icmp eq i32 %"1209", 1
  %or.cond.i9.i.i.i28.i.i = and i1 %"1208", %"1210"
  br i1 %or.cond.i9.i.i.i28.i.i, label %main_bb679, label %main_bb680

main_bb679:                                       ; preds = %main_bb678
  store i32 0, i32* @"'t1_st", align 4
  br label %main_bb680

main_bb680:                                       ; preds = %main_bb679, %main_bb678
  %"1211" = load i32* @"'t2_pc", align 4
  %"1212" = icmp eq i32 %"1211", 1
  %"1213" = load i32* @"'E_2", align 4
  %"1214" = icmp eq i32 %"1213", 1
  %or.cond.i7.i.i.i29.i.i = and i1 %"1212", %"1214"
  br i1 %or.cond.i7.i.i.i29.i.i, label %main_bb681, label %main_bb682

main_bb681:                                       ; preds = %main_bb680
  store i32 0, i32* @"'t2_st", align 4
  br label %main_bb682

main_bb682:                                       ; preds = %main_bb681, %main_bb680
  %"1215" = load i32* @"'t3_pc", align 4
  %"1216" = icmp eq i32 %"1215", 1
  %"1217" = load i32* @"'E_3", align 4
  %"1218" = icmp eq i32 %"1217", 1
  %or.cond.i5.i.i.i30.i.i = and i1 %"1216", %"1218"
  br i1 %or.cond.i5.i.i.i30.i.i, label %main_bb683, label %main_bb684

main_bb683:                                       ; preds = %main_bb682
  store i32 0, i32* @"'t3_st", align 4
  br label %main_bb684

main_bb684:                                       ; preds = %main_bb683, %main_bb682
  %"1219" = load i32* @"'t4_pc", align 4
  %"1220" = icmp eq i32 %"1219", 1
  %"1221" = load i32* @"'E_4", align 4
  %"1222" = icmp eq i32 %"1221", 1
  %or.cond.i3.i.i.i31.i.i = and i1 %"1220", %"1222"
  br i1 %or.cond.i3.i.i.i31.i.i, label %main_bb685, label %main_bb686

main_bb685:                                       ; preds = %main_bb684
  store i32 0, i32* @"'t4_st", align 4
  br label %main_bb686

main_bb686:                                       ; preds = %main_bb685, %main_bb684
  %"1223" = load i32* @"'t5_pc", align 4
  %"1224" = icmp eq i32 %"1223", 1
  %"1225" = load i32* @"'E_5", align 4
  %"1226" = icmp eq i32 %"1225", 1
  %or.cond.i1.i.i.i32.i.i = and i1 %"1224", %"1226"
  br i1 %or.cond.i1.i.i.i32.i.i, label %main_bb687, label %main_immediate_notify.exit.i33.i.i

main_bb687:                                       ; preds = %main_bb686
  store i32 0, i32* @"'t5_st", align 4
  br label %main_immediate_notify.exit.i33.i.i

main_immediate_notify.exit.i33.i.i:               ; preds = %main_bb687, %main_bb686
  store i32 2, i32* @"'E_2", align 4
  br label %main_transmit1.exit.i.i

main_transmit1.exit.i.i:                          ; preds = %main_immediate_notify.exit.i33.i.i, %main_bb675
  store i32 1, i32* @"'t1_pc", align 4
  store i32 2, i32* @"'t1_st", align 4
  br label %main_bb688

main_bb688:                                       ; preds = %main_transmit1.exit.i.i, %main_bb674, %main_bb673
  %"1227" = load i32* @"'t2_st", align 4
  %"1228" = icmp eq i32 %"1227", 0
  br i1 %"1228", label %main_bb689, label %main_bb703

main_bb689:                                       ; preds = %main_bb688
  %"1229" = call i32 (...)* @__VERIFIER_nondet_int() #5
  %"1230" = icmp ne i32 %"1229", 0
  br i1 %"1230", label %main_bb690, label %main_bb703

main_bb690:                                       ; preds = %main_bb689
  store i32 1, i32* @"'t2_st", align 4
  %"1231" = load i32* @"'t2_pc", align 4
  %"1232" = icmp ne i32 %"1231", 0
  %"1233" = load i32* @"'t2_pc", align 4
  %"1234" = icmp eq i32 %"1233", 1
  %or.cond.i18.i.i = and i1 %"1232", %"1234"
  br i1 %or.cond.i18.i.i, label %main_bb691, label %main_transmit2.exit.i.i

main_bb691:                                       ; preds = %main_bb690
  %"1235" = load i32* @"'token", align 4
  %"1236" = add nsw i32 %"1235", 1
  store i32 %"1236", i32* @"'token", align 4
  store i32 1, i32* @"'E_3", align 4
  %"1237" = load i32* @"'m_pc", align 4
  %"1238" = icmp eq i32 %"1237", 1
  %"1239" = load i32* @"'E_M", align 4
  %"1240" = icmp eq i32 %"1239", 1
  %or.cond.i.i.i.i19.i.i = and i1 %"1238", %"1240"
  br i1 %or.cond.i.i.i.i19.i.i, label %main_bb692, label %main_bb693

main_bb692:                                       ; preds = %main_bb691
  store i32 0, i32* @"'m_st", align 4
  br label %main_bb693

main_bb693:                                       ; preds = %main_bb692, %main_bb691
  %"1241" = load i32* @"'t1_pc", align 4
  %"1242" = icmp eq i32 %"1241", 1
  %"1243" = load i32* @"'E_1", align 4
  %"1244" = icmp eq i32 %"1243", 1
  %or.cond.i9.i.i.i20.i.i = and i1 %"1242", %"1244"
  br i1 %or.cond.i9.i.i.i20.i.i, label %main_bb694, label %main_bb695

main_bb694:                                       ; preds = %main_bb693
  store i32 0, i32* @"'t1_st", align 4
  br label %main_bb695

main_bb695:                                       ; preds = %main_bb694, %main_bb693
  %"1245" = load i32* @"'t2_pc", align 4
  %"1246" = icmp eq i32 %"1245", 1
  %"1247" = load i32* @"'E_2", align 4
  %"1248" = icmp eq i32 %"1247", 1
  %or.cond.i7.i.i.i21.i.i = and i1 %"1246", %"1248"
  br i1 %or.cond.i7.i.i.i21.i.i, label %main_bb696, label %main_bb697

main_bb696:                                       ; preds = %main_bb695
  store i32 0, i32* @"'t2_st", align 4
  br label %main_bb697

main_bb697:                                       ; preds = %main_bb696, %main_bb695
  %"1249" = load i32* @"'t3_pc", align 4
  %"1250" = icmp eq i32 %"1249", 1
  %"1251" = load i32* @"'E_3", align 4
  %"1252" = icmp eq i32 %"1251", 1
  %or.cond.i5.i.i.i22.i.i = and i1 %"1250", %"1252"
  br i1 %or.cond.i5.i.i.i22.i.i, label %main_bb698, label %main_bb699

main_bb698:                                       ; preds = %main_bb697
  store i32 0, i32* @"'t3_st", align 4
  br label %main_bb699

main_bb699:                                       ; preds = %main_bb698, %main_bb697
  %"1253" = load i32* @"'t4_pc", align 4
  %"1254" = icmp eq i32 %"1253", 1
  %"1255" = load i32* @"'E_4", align 4
  %"1256" = icmp eq i32 %"1255", 1
  %or.cond.i3.i.i.i23.i.i = and i1 %"1254", %"1256"
  br i1 %or.cond.i3.i.i.i23.i.i, label %main_bb700, label %main_bb701

main_bb700:                                       ; preds = %main_bb699
  store i32 0, i32* @"'t4_st", align 4
  br label %main_bb701

main_bb701:                                       ; preds = %main_bb700, %main_bb699
  %"1257" = load i32* @"'t5_pc", align 4
  %"1258" = icmp eq i32 %"1257", 1
  %"1259" = load i32* @"'E_5", align 4
  %"1260" = icmp eq i32 %"1259", 1
  %or.cond.i1.i.i.i24.i.i = and i1 %"1258", %"1260"
  br i1 %or.cond.i1.i.i.i24.i.i, label %main_bb702, label %main_immediate_notify.exit.i25.i.i

main_bb702:                                       ; preds = %main_bb701
  store i32 0, i32* @"'t5_st", align 4
  br label %main_immediate_notify.exit.i25.i.i

main_immediate_notify.exit.i25.i.i:               ; preds = %main_bb702, %main_bb701
  store i32 2, i32* @"'E_3", align 4
  br label %main_transmit2.exit.i.i

main_transmit2.exit.i.i:                          ; preds = %main_immediate_notify.exit.i25.i.i, %main_bb690
  store i32 1, i32* @"'t2_pc", align 4
  store i32 2, i32* @"'t2_st", align 4
  br label %main_bb703

main_bb703:                                       ; preds = %main_transmit2.exit.i.i, %main_bb689, %main_bb688
  %"1261" = load i32* @"'t3_st", align 4
  %"1262" = icmp eq i32 %"1261", 0
  br i1 %"1262", label %main_bb704, label %main_bb718

main_bb704:                                       ; preds = %main_bb703
  %"1263" = call i32 (...)* @__VERIFIER_nondet_int() #5
  %"1264" = icmp ne i32 %"1263", 0
  br i1 %"1264", label %main_bb705, label %main_bb718

main_bb705:                                       ; preds = %main_bb704
  store i32 1, i32* @"'t3_st", align 4
  %"1265" = load i32* @"'t3_pc", align 4
  %"1266" = icmp ne i32 %"1265", 0
  %"1267" = load i32* @"'t3_pc", align 4
  %"1268" = icmp eq i32 %"1267", 1
  %or.cond.i10.i.i = and i1 %"1266", %"1268"
  br i1 %or.cond.i10.i.i, label %main_bb706, label %main_transmit3.exit.i.i

main_bb706:                                       ; preds = %main_bb705
  %"1269" = load i32* @"'token", align 4
  %"1270" = add nsw i32 %"1269", 1
  store i32 %"1270", i32* @"'token", align 4
  store i32 1, i32* @"'E_4", align 4
  %"1271" = load i32* @"'m_pc", align 4
  %"1272" = icmp eq i32 %"1271", 1
  %"1273" = load i32* @"'E_M", align 4
  %"1274" = icmp eq i32 %"1273", 1
  %or.cond.i.i.i.i11.i.i = and i1 %"1272", %"1274"
  br i1 %or.cond.i.i.i.i11.i.i, label %main_bb707, label %main_bb708

main_bb707:                                       ; preds = %main_bb706
  store i32 0, i32* @"'m_st", align 4
  br label %main_bb708

main_bb708:                                       ; preds = %main_bb707, %main_bb706
  %"1275" = load i32* @"'t1_pc", align 4
  %"1276" = icmp eq i32 %"1275", 1
  %"1277" = load i32* @"'E_1", align 4
  %"1278" = icmp eq i32 %"1277", 1
  %or.cond.i9.i.i.i12.i.i = and i1 %"1276", %"1278"
  br i1 %or.cond.i9.i.i.i12.i.i, label %main_bb709, label %main_bb710

main_bb709:                                       ; preds = %main_bb708
  store i32 0, i32* @"'t1_st", align 4
  br label %main_bb710

main_bb710:                                       ; preds = %main_bb709, %main_bb708
  %"1279" = load i32* @"'t2_pc", align 4
  %"1280" = icmp eq i32 %"1279", 1
  %"1281" = load i32* @"'E_2", align 4
  %"1282" = icmp eq i32 %"1281", 1
  %or.cond.i7.i.i.i13.i.i = and i1 %"1280", %"1282"
  br i1 %or.cond.i7.i.i.i13.i.i, label %main_bb711, label %main_bb712

main_bb711:                                       ; preds = %main_bb710
  store i32 0, i32* @"'t2_st", align 4
  br label %main_bb712

main_bb712:                                       ; preds = %main_bb711, %main_bb710
  %"1283" = load i32* @"'t3_pc", align 4
  %"1284" = icmp eq i32 %"1283", 1
  %"1285" = load i32* @"'E_3", align 4
  %"1286" = icmp eq i32 %"1285", 1
  %or.cond.i5.i.i.i14.i.i = and i1 %"1284", %"1286"
  br i1 %or.cond.i5.i.i.i14.i.i, label %main_bb713, label %main_bb714

main_bb713:                                       ; preds = %main_bb712
  store i32 0, i32* @"'t3_st", align 4
  br label %main_bb714

main_bb714:                                       ; preds = %main_bb713, %main_bb712
  %"1287" = load i32* @"'t4_pc", align 4
  %"1288" = icmp eq i32 %"1287", 1
  %"1289" = load i32* @"'E_4", align 4
  %"1290" = icmp eq i32 %"1289", 1
  %or.cond.i3.i.i.i15.i.i = and i1 %"1288", %"1290"
  br i1 %or.cond.i3.i.i.i15.i.i, label %main_bb715, label %main_bb716

main_bb715:                                       ; preds = %main_bb714
  store i32 0, i32* @"'t4_st", align 4
  br label %main_bb716

main_bb716:                                       ; preds = %main_bb715, %main_bb714
  %"1291" = load i32* @"'t5_pc", align 4
  %"1292" = icmp eq i32 %"1291", 1
  %"1293" = load i32* @"'E_5", align 4
  %"1294" = icmp eq i32 %"1293", 1
  %or.cond.i1.i.i.i16.i.i = and i1 %"1292", %"1294"
  br i1 %or.cond.i1.i.i.i16.i.i, label %main_bb717, label %main_immediate_notify.exit.i17.i.i

main_bb717:                                       ; preds = %main_bb716
  store i32 0, i32* @"'t5_st", align 4
  br label %main_immediate_notify.exit.i17.i.i

main_immediate_notify.exit.i17.i.i:               ; preds = %main_bb717, %main_bb716
  store i32 2, i32* @"'E_4", align 4
  br label %main_transmit3.exit.i.i

main_transmit3.exit.i.i:                          ; preds = %main_immediate_notify.exit.i17.i.i, %main_bb705
  store i32 1, i32* @"'t3_pc", align 4
  store i32 2, i32* @"'t3_st", align 4
  br label %main_bb718

main_bb718:                                       ; preds = %main_transmit3.exit.i.i, %main_bb704, %main_bb703
  %"1295" = load i32* @"'t4_st", align 4
  %"1296" = icmp eq i32 %"1295", 0
  br i1 %"1296", label %main_bb719, label %main_bb733

main_bb719:                                       ; preds = %main_bb718
  %"1297" = call i32 (...)* @__VERIFIER_nondet_int() #5
  %"1298" = icmp ne i32 %"1297", 0
  br i1 %"1298", label %main_bb720, label %main_bb733

main_bb720:                                       ; preds = %main_bb719
  store i32 1, i32* @"'t4_st", align 4
  %"1299" = load i32* @"'t4_pc", align 4
  %"1300" = icmp ne i32 %"1299", 0
  %"1301" = load i32* @"'t4_pc", align 4
  %"1302" = icmp eq i32 %"1301", 1
  %or.cond.i2.i.i = and i1 %"1300", %"1302"
  br i1 %or.cond.i2.i.i, label %main_bb721, label %main_transmit4.exit.i.i

main_bb721:                                       ; preds = %main_bb720
  %"1303" = load i32* @"'token", align 4
  %"1304" = add nsw i32 %"1303", 1
  store i32 %"1304", i32* @"'token", align 4
  store i32 1, i32* @"'E_5", align 4
  %"1305" = load i32* @"'m_pc", align 4
  %"1306" = icmp eq i32 %"1305", 1
  %"1307" = load i32* @"'E_M", align 4
  %"1308" = icmp eq i32 %"1307", 1
  %or.cond.i.i.i.i3.i.i = and i1 %"1306", %"1308"
  br i1 %or.cond.i.i.i.i3.i.i, label %main_bb722, label %main_bb723

main_bb722:                                       ; preds = %main_bb721
  store i32 0, i32* @"'m_st", align 4
  br label %main_bb723

main_bb723:                                       ; preds = %main_bb722, %main_bb721
  %"1309" = load i32* @"'t1_pc", align 4
  %"1310" = icmp eq i32 %"1309", 1
  %"1311" = load i32* @"'E_1", align 4
  %"1312" = icmp eq i32 %"1311", 1
  %or.cond.i9.i.i.i4.i.i = and i1 %"1310", %"1312"
  br i1 %or.cond.i9.i.i.i4.i.i, label %main_bb724, label %main_bb725

main_bb724:                                       ; preds = %main_bb723
  store i32 0, i32* @"'t1_st", align 4
  br label %main_bb725

main_bb725:                                       ; preds = %main_bb724, %main_bb723
  %"1313" = load i32* @"'t2_pc", align 4
  %"1314" = icmp eq i32 %"1313", 1
  %"1315" = load i32* @"'E_2", align 4
  %"1316" = icmp eq i32 %"1315", 1
  %or.cond.i7.i.i.i5.i.i = and i1 %"1314", %"1316"
  br i1 %or.cond.i7.i.i.i5.i.i, label %main_bb726, label %main_bb727

main_bb726:                                       ; preds = %main_bb725
  store i32 0, i32* @"'t2_st", align 4
  br label %main_bb727

main_bb727:                                       ; preds = %main_bb726, %main_bb725
  %"1317" = load i32* @"'t3_pc", align 4
  %"1318" = icmp eq i32 %"1317", 1
  %"1319" = load i32* @"'E_3", align 4
  %"1320" = icmp eq i32 %"1319", 1
  %or.cond.i5.i.i.i6.i.i = and i1 %"1318", %"1320"
  br i1 %or.cond.i5.i.i.i6.i.i, label %main_bb728, label %main_bb729

main_bb728:                                       ; preds = %main_bb727
  store i32 0, i32* @"'t3_st", align 4
  br label %main_bb729

main_bb729:                                       ; preds = %main_bb728, %main_bb727
  %"1321" = load i32* @"'t4_pc", align 4
  %"1322" = icmp eq i32 %"1321", 1
  %"1323" = load i32* @"'E_4", align 4
  %"1324" = icmp eq i32 %"1323", 1
  %or.cond.i3.i.i.i7.i.i = and i1 %"1322", %"1324"
  br i1 %or.cond.i3.i.i.i7.i.i, label %main_bb730, label %main_bb731

main_bb730:                                       ; preds = %main_bb729
  store i32 0, i32* @"'t4_st", align 4
  br label %main_bb731

main_bb731:                                       ; preds = %main_bb730, %main_bb729
  %"1325" = load i32* @"'t5_pc", align 4
  %"1326" = icmp eq i32 %"1325", 1
  %"1327" = load i32* @"'E_5", align 4
  %"1328" = icmp eq i32 %"1327", 1
  %or.cond.i1.i.i.i8.i.i = and i1 %"1326", %"1328"
  br i1 %or.cond.i1.i.i.i8.i.i, label %main_bb732, label %main_immediate_notify.exit.i9.i.i

main_bb732:                                       ; preds = %main_bb731
  store i32 0, i32* @"'t5_st", align 4
  br label %main_immediate_notify.exit.i9.i.i

main_immediate_notify.exit.i9.i.i:                ; preds = %main_bb732, %main_bb731
  store i32 2, i32* @"'E_5", align 4
  br label %main_transmit4.exit.i.i

main_transmit4.exit.i.i:                          ; preds = %main_immediate_notify.exit.i9.i.i, %main_bb720
  store i32 1, i32* @"'t4_pc", align 4
  store i32 2, i32* @"'t4_st", align 4
  br label %main_bb733

main_bb733:                                       ; preds = %main_transmit4.exit.i.i, %main_bb719, %main_bb718
  %"1329" = load i32* @"'t5_st", align 4
  %"1330" = icmp eq i32 %"1329", 0
  br i1 %"1330", label %main_bb734, label %main_reset_delta_events.exit37.i

main_bb734:                                       ; preds = %main_bb733
  %"1331" = call i32 (...)* @__VERIFIER_nondet_int() #5
  %"1332" = icmp ne i32 %"1331", 0
  br i1 %"1332", label %main_bb735, label %main_reset_delta_events.exit37.i

main_bb735:                                       ; preds = %main_bb734
  store i32 1, i32* @"'t5_st", align 4
  %"1333" = load i32* @"'t5_pc", align 4
  %"1334" = icmp ne i32 %"1333", 0
  %"1335" = load i32* @"'t5_pc", align 4
  %"1336" = icmp eq i32 %"1335", 1
  %or.cond.i1.i22.i = and i1 %"1334", %"1336"
  br i1 %or.cond.i1.i22.i, label %main_bb736, label %main_transmit5.exit.i.i

main_bb736:                                       ; preds = %main_bb735
  %"1337" = load i32* @"'token", align 4
  %"1338" = add nsw i32 %"1337", 1
  store i32 %"1338", i32* @"'token", align 4
  store i32 1, i32* @"'E_M", align 4
  %"1339" = load i32* @"'m_pc", align 4
  %"1340" = icmp eq i32 %"1339", 1
  %"1341" = load i32* @"'E_M", align 4
  %"1342" = icmp eq i32 %"1341", 1
  %or.cond.i.i.i.i.i.i = and i1 %"1340", %"1342"
  br i1 %or.cond.i.i.i.i.i.i, label %main_bb737, label %main_bb738

main_bb737:                                       ; preds = %main_bb736
  store i32 0, i32* @"'m_st", align 4
  br label %main_bb738

main_bb738:                                       ; preds = %main_bb737, %main_bb736
  %"1343" = load i32* @"'t1_pc", align 4
  %"1344" = icmp eq i32 %"1343", 1
  %"1345" = load i32* @"'E_1", align 4
  %"1346" = icmp eq i32 %"1345", 1
  %or.cond.i9.i.i.i.i.i = and i1 %"1344", %"1346"
  br i1 %or.cond.i9.i.i.i.i.i, label %main_bb739, label %main_bb740

main_bb739:                                       ; preds = %main_bb738
  store i32 0, i32* @"'t1_st", align 4
  br label %main_bb740

main_bb740:                                       ; preds = %main_bb739, %main_bb738
  %"1347" = load i32* @"'t2_pc", align 4
  %"1348" = icmp eq i32 %"1347", 1
  %"1349" = load i32* @"'E_2", align 4
  %"1350" = icmp eq i32 %"1349", 1
  %or.cond.i7.i.i.i.i.i = and i1 %"1348", %"1350"
  br i1 %or.cond.i7.i.i.i.i.i, label %main_bb741, label %main_bb742

main_bb741:                                       ; preds = %main_bb740
  store i32 0, i32* @"'t2_st", align 4
  br label %main_bb742

main_bb742:                                       ; preds = %main_bb741, %main_bb740
  %"1351" = load i32* @"'t3_pc", align 4
  %"1352" = icmp eq i32 %"1351", 1
  %"1353" = load i32* @"'E_3", align 4
  %"1354" = icmp eq i32 %"1353", 1
  %or.cond.i5.i.i.i.i.i = and i1 %"1352", %"1354"
  br i1 %or.cond.i5.i.i.i.i.i, label %main_bb743, label %main_bb744

main_bb743:                                       ; preds = %main_bb742
  store i32 0, i32* @"'t3_st", align 4
  br label %main_bb744

main_bb744:                                       ; preds = %main_bb743, %main_bb742
  %"1355" = load i32* @"'t4_pc", align 4
  %"1356" = icmp eq i32 %"1355", 1
  %"1357" = load i32* @"'E_4", align 4
  %"1358" = icmp eq i32 %"1357", 1
  %or.cond.i3.i.i.i.i.i = and i1 %"1356", %"1358"
  br i1 %or.cond.i3.i.i.i.i.i, label %main_bb745, label %main_bb746

main_bb745:                                       ; preds = %main_bb744
  store i32 0, i32* @"'t4_st", align 4
  br label %main_bb746

main_bb746:                                       ; preds = %main_bb745, %main_bb744
  %"1359" = load i32* @"'t5_pc", align 4
  %"1360" = icmp eq i32 %"1359", 1
  %"1361" = load i32* @"'E_5", align 4
  %"1362" = icmp eq i32 %"1361", 1
  %or.cond.i1.i.i.i.i.i = and i1 %"1360", %"1362"
  br i1 %or.cond.i1.i.i.i.i.i, label %main_bb747, label %main_immediate_notify.exit.i.i.i

main_bb747:                                       ; preds = %main_bb746
  store i32 0, i32* @"'t5_st", align 4
  br label %main_immediate_notify.exit.i.i.i

main_immediate_notify.exit.i.i.i:                 ; preds = %main_bb747, %main_bb746
  store i32 2, i32* @"'E_M", align 4
  br label %main_transmit5.exit.i.i

main_transmit5.exit.i.i:                          ; preds = %main_immediate_notify.exit.i.i.i, %main_bb735
  store i32 1, i32* @"'t5_pc", align 4
  store i32 2, i32* @"'t5_st", align 4
  br label %main_reset_delta_events.exit37.i

main_eval.exit.i:                                 ; preds = %main_reset_delta_events.exit37.i
  %"1363" = load i32* @"'M_E", align 4
  %"1364" = icmp eq i32 %"1363", 0
  br i1 %"1364", label %main_bb748, label %main_bb749

main_bb748:                                       ; preds = %main_eval.exit.i
  store i32 1, i32* @"'M_E", align 4
  br label %main_bb749

main_bb749:                                       ; preds = %main_bb748, %main_eval.exit.i
  %"1365" = load i32* @"'T1_E", align 4
  %"1366" = icmp eq i32 %"1365", 0
  br i1 %"1366", label %main_bb750, label %main_bb751

main_bb750:                                       ; preds = %main_bb749
  store i32 1, i32* @"'T1_E", align 4
  br label %main_bb751

main_bb751:                                       ; preds = %main_bb750, %main_bb749
  %"1367" = load i32* @"'T2_E", align 4
  %"1368" = icmp eq i32 %"1367", 0
  br i1 %"1368", label %main_bb752, label %main_bb753

main_bb752:                                       ; preds = %main_bb751
  store i32 1, i32* @"'T2_E", align 4
  br label %main_bb753

main_bb753:                                       ; preds = %main_bb752, %main_bb751
  %"1369" = load i32* @"'T3_E", align 4
  %"1370" = icmp eq i32 %"1369", 0
  br i1 %"1370", label %main_bb754, label %main_bb755

main_bb754:                                       ; preds = %main_bb753
  store i32 1, i32* @"'T3_E", align 4
  br label %main_bb755

main_bb755:                                       ; preds = %main_bb754, %main_bb753
  %"1371" = load i32* @"'T4_E", align 4
  %"1372" = icmp eq i32 %"1371", 0
  br i1 %"1372", label %main_bb756, label %main_bb757

main_bb756:                                       ; preds = %main_bb755
  store i32 1, i32* @"'T4_E", align 4
  br label %main_bb757

main_bb757:                                       ; preds = %main_bb756, %main_bb755
  %"1373" = load i32* @"'T5_E", align 4
  %"1374" = icmp eq i32 %"1373", 0
  br i1 %"1374", label %main_bb758, label %main_bb759

main_bb758:                                       ; preds = %main_bb757
  store i32 1, i32* @"'T5_E", align 4
  br label %main_bb759

main_bb759:                                       ; preds = %main_bb758, %main_bb757
  %"1375" = load i32* @"'E_M", align 4
  %"1376" = icmp eq i32 %"1375", 0
  br i1 %"1376", label %main_bb760, label %main_bb761

main_bb760:                                       ; preds = %main_bb759
  store i32 1, i32* @"'E_M", align 4
  br label %main_bb761

main_bb761:                                       ; preds = %main_bb760, %main_bb759
  %"1377" = load i32* @"'E_1", align 4
  %"1378" = icmp eq i32 %"1377", 0
  br i1 %"1378", label %main_bb762, label %main_bb763

main_bb762:                                       ; preds = %main_bb761
  store i32 1, i32* @"'E_1", align 4
  br label %main_bb763

main_bb763:                                       ; preds = %main_bb762, %main_bb761
  %"1379" = load i32* @"'E_2", align 4
  %"1380" = icmp eq i32 %"1379", 0
  br i1 %"1380", label %main_bb764, label %main_bb765

main_bb764:                                       ; preds = %main_bb763
  store i32 1, i32* @"'E_2", align 4
  br label %main_bb765

main_bb765:                                       ; preds = %main_bb764, %main_bb763
  %"1381" = load i32* @"'E_3", align 4
  %"1382" = icmp eq i32 %"1381", 0
  br i1 %"1382", label %main_bb766, label %main_bb767

main_bb766:                                       ; preds = %main_bb765
  store i32 1, i32* @"'E_3", align 4
  br label %main_bb767

main_bb767:                                       ; preds = %main_bb766, %main_bb765
  %"1383" = load i32* @"'E_4", align 4
  %"1384" = icmp eq i32 %"1383", 0
  br i1 %"1384", label %main_bb768, label %main_bb769

main_bb768:                                       ; preds = %main_bb767
  store i32 1, i32* @"'E_4", align 4
  br label %main_bb769

main_bb769:                                       ; preds = %main_bb768, %main_bb767
  %"1385" = load i32* @"'E_5", align 4
  %"1386" = icmp eq i32 %"1385", 0
  br i1 %"1386", label %main_bb770, label %main_fire_delta_events.exit.i

main_bb770:                                       ; preds = %main_bb769
  store i32 1, i32* @"'E_5", align 4
  br label %main_fire_delta_events.exit.i

main_fire_delta_events.exit.i:                    ; preds = %main_bb770, %main_bb769
  %"1387" = load i32* @"'m_pc", align 4
  %"1388" = icmp eq i32 %"1387", 1
  %"1389" = load i32* @"'E_M", align 4
  %"1390" = icmp eq i32 %"1389", 1
  %or.cond.i.i3.i = and i1 %"1388", %"1390"
  br i1 %or.cond.i.i3.i, label %main_bb771, label %main_bb772

main_bb771:                                       ; preds = %main_fire_delta_events.exit.i
  store i32 0, i32* @"'m_st", align 4
  br label %main_bb772

main_bb772:                                       ; preds = %main_bb771, %main_fire_delta_events.exit.i
  %"1391" = load i32* @"'t1_pc", align 4
  %"1392" = icmp eq i32 %"1391", 1
  %"1393" = load i32* @"'E_1", align 4
  %"1394" = icmp eq i32 %"1393", 1
  %or.cond.i9.i5.i = and i1 %"1392", %"1394"
  br i1 %or.cond.i9.i5.i, label %main_bb773, label %main_bb774

main_bb773:                                       ; preds = %main_bb772
  store i32 0, i32* @"'t1_st", align 4
  br label %main_bb774

main_bb774:                                       ; preds = %main_bb773, %main_bb772
  %"1395" = load i32* @"'t2_pc", align 4
  %"1396" = icmp eq i32 %"1395", 1
  %"1397" = load i32* @"'E_2", align 4
  %"1398" = icmp eq i32 %"1397", 1
  %or.cond.i7.i7.i = and i1 %"1396", %"1398"
  br i1 %or.cond.i7.i7.i, label %main_bb775, label %main_bb776

main_bb775:                                       ; preds = %main_bb774
  store i32 0, i32* @"'t2_st", align 4
  br label %main_bb776

main_bb776:                                       ; preds = %main_bb775, %main_bb774
  %"1399" = load i32* @"'t3_pc", align 4
  %"1400" = icmp eq i32 %"1399", 1
  %"1401" = load i32* @"'E_3", align 4
  %"1402" = icmp eq i32 %"1401", 1
  %or.cond.i5.i9.i = and i1 %"1400", %"1402"
  br i1 %or.cond.i5.i9.i, label %main_bb777, label %main_bb778

main_bb777:                                       ; preds = %main_bb776
  store i32 0, i32* @"'t3_st", align 4
  br label %main_bb778

main_bb778:                                       ; preds = %main_bb777, %main_bb776
  %"1403" = load i32* @"'t4_pc", align 4
  %"1404" = icmp eq i32 %"1403", 1
  %"1405" = load i32* @"'E_4", align 4
  %"1406" = icmp eq i32 %"1405", 1
  %or.cond.i3.i11.i = and i1 %"1404", %"1406"
  br i1 %or.cond.i3.i11.i, label %main_bb779, label %main_bb780

main_bb779:                                       ; preds = %main_bb778
  store i32 0, i32* @"'t4_st", align 4
  br label %main_bb780

main_bb780:                                       ; preds = %main_bb779, %main_bb778
  %"1407" = load i32* @"'t5_pc", align 4
  %"1408" = icmp eq i32 %"1407", 1
  %"1409" = load i32* @"'E_5", align 4
  %"1410" = icmp eq i32 %"1409", 1
  %or.cond.i1.i13.i = and i1 %"1408", %"1410"
  br i1 %or.cond.i1.i13.i, label %main_bb781, label %main_activate_threads.exit15.i

main_bb781:                                       ; preds = %main_bb780
  store i32 0, i32* @"'t5_st", align 4
  br label %main_activate_threads.exit15.i

main_activate_threads.exit15.i:                   ; preds = %main_bb781, %main_bb780
  %"1411" = load i32* @"'M_E", align 4
  %"1412" = icmp eq i32 %"1411", 1
  br i1 %"1412", label %main_bb782, label %main_bb783

main_bb782:                                       ; preds = %main_activate_threads.exit15.i
  store i32 2, i32* @"'M_E", align 4
  br label %main_bb783

main_bb783:                                       ; preds = %main_bb782, %main_activate_threads.exit15.i
  %"1413" = load i32* @"'T1_E", align 4
  %"1414" = icmp eq i32 %"1413", 1
  br i1 %"1414", label %main_bb784, label %main_bb785

main_bb784:                                       ; preds = %main_bb783
  store i32 2, i32* @"'T1_E", align 4
  br label %main_bb785

main_bb785:                                       ; preds = %main_bb784, %main_bb783
  %"1415" = load i32* @"'T2_E", align 4
  %"1416" = icmp eq i32 %"1415", 1
  br i1 %"1416", label %main_bb786, label %main_bb787

main_bb786:                                       ; preds = %main_bb785
  store i32 2, i32* @"'T2_E", align 4
  br label %main_bb787

main_bb787:                                       ; preds = %main_bb786, %main_bb785
  %"1417" = load i32* @"'T3_E", align 4
  %"1418" = icmp eq i32 %"1417", 1
  br i1 %"1418", label %main_bb788, label %main_bb789

main_bb788:                                       ; preds = %main_bb787
  store i32 2, i32* @"'T3_E", align 4
  br label %main_bb789

main_bb789:                                       ; preds = %main_bb788, %main_bb787
  %"1419" = load i32* @"'T4_E", align 4
  %"1420" = icmp eq i32 %"1419", 1
  br i1 %"1420", label %main_bb790, label %main_bb791

main_bb790:                                       ; preds = %main_bb789
  store i32 2, i32* @"'T4_E", align 4
  br label %main_bb791

main_bb791:                                       ; preds = %main_bb790, %main_bb789
  %"1421" = load i32* @"'T5_E", align 4
  %"1422" = icmp eq i32 %"1421", 1
  br i1 %"1422", label %main_bb792, label %main_bb793

main_bb792:                                       ; preds = %main_bb791
  store i32 2, i32* @"'T5_E", align 4
  br label %main_bb793

main_bb793:                                       ; preds = %main_bb792, %main_bb791
  %"1423" = load i32* @"'E_M", align 4
  %"1424" = icmp eq i32 %"1423", 1
  br i1 %"1424", label %main_bb794, label %main_bb795

main_bb794:                                       ; preds = %main_bb793
  store i32 2, i32* @"'E_M", align 4
  br label %main_bb795

main_bb795:                                       ; preds = %main_bb794, %main_bb793
  %"1425" = load i32* @"'E_1", align 4
  %"1426" = icmp eq i32 %"1425", 1
  br i1 %"1426", label %main_bb796, label %main_bb797

main_bb796:                                       ; preds = %main_bb795
  store i32 2, i32* @"'E_1", align 4
  br label %main_bb797

main_bb797:                                       ; preds = %main_bb796, %main_bb795
  %"1427" = load i32* @"'E_2", align 4
  %"1428" = icmp eq i32 %"1427", 1
  br i1 %"1428", label %main_bb798, label %main_bb799

main_bb798:                                       ; preds = %main_bb797
  store i32 2, i32* @"'E_2", align 4
  br label %main_bb799

main_bb799:                                       ; preds = %main_bb798, %main_bb797
  %"1429" = load i32* @"'E_3", align 4
  %"1430" = icmp eq i32 %"1429", 1
  br i1 %"1430", label %main_bb800, label %main_bb801

main_bb800:                                       ; preds = %main_bb799
  store i32 2, i32* @"'E_3", align 4
  br label %main_bb801

main_bb801:                                       ; preds = %main_bb800, %main_bb799
  %"1431" = load i32* @"'E_4", align 4
  %"1432" = icmp eq i32 %"1431", 1
  br i1 %"1432", label %main_bb802, label %main_bb803

main_bb802:                                       ; preds = %main_bb801
  store i32 2, i32* @"'E_4", align 4
  br label %main_bb803

main_bb803:                                       ; preds = %main_bb802, %main_bb801
  %"1433" = load i32* @"'E_5", align 4
  %"1434" = icmp eq i32 %"1433", 1
  br i1 %"1434", label %main_bb804, label %main_reset_delta_events.exit.i

main_bb804:                                       ; preds = %main_bb803
  store i32 2, i32* @"'E_5", align 4
  br label %main_reset_delta_events.exit.i

main_reset_delta_events.exit.i:                   ; preds = %main_bb804, %main_bb803
  %"1435" = load i32* @"'m_st", align 4
  %"1436" = icmp eq i32 %"1435", 0
  %"1437" = load i32* @"'t1_st", align 4
  %"1438" = icmp eq i32 %"1437", 0
  %or.cond.i.i = or i1 %"1436", %"1438"
  %"1439" = load i32* @"'t2_st", align 4
  %"1440" = icmp eq i32 %"1439", 0
  %or.cond3.i.i = or i1 %or.cond.i.i, %"1440"
  %"1441" = load i32* @"'t3_st", align 4
  %"1442" = icmp eq i32 %"1441", 0
  %or.cond5.i.i = or i1 %or.cond3.i.i, %"1442"
  %"1443" = load i32* @"'t4_st", align 4
  %"1444" = icmp eq i32 %"1443", 0
  %or.cond7.i.i = or i1 %or.cond5.i.i, %"1444"
  %"1445" = load i32* @"'t5_st", align 4
  %"1446" = icmp eq i32 %"1445", 0
  %or.cond9.i.i = or i1 %or.cond7.i.i, %"1446"
  %__retres1.0.i.i = select i1 %or.cond9.i.i, i32 1, i32 0
  %"1447" = icmp eq i32 %__retres1.0.i.i, 0
  br i1 %"1447", label %main_bb805, label %main_reset_time_events.exit.i

main_bb805:                                       ; preds = %main_reset_delta_events.exit.i
  store i32 1, i32* @"'M_E", align 4
  %"1448" = load i32* @"'m_pc", align 4
  %"1449" = icmp eq i32 %"1448", 1
  %"1450" = load i32* @"'E_M", align 4
  %"1451" = icmp eq i32 %"1450", 1
  %or.cond.i.i1.i = and i1 %"1449", %"1451"
  br i1 %or.cond.i.i1.i, label %main_bb806, label %main_bb807

main_bb806:                                       ; preds = %main_bb805
  store i32 0, i32* @"'m_st", align 4
  br label %main_bb807

main_bb807:                                       ; preds = %main_bb806, %main_bb805
  %"1452" = load i32* @"'t1_pc", align 4
  %"1453" = icmp eq i32 %"1452", 1
  %"1454" = load i32* @"'E_1", align 4
  %"1455" = icmp eq i32 %"1454", 1
  %or.cond.i9.i.i = and i1 %"1453", %"1455"
  br i1 %or.cond.i9.i.i, label %main_bb808, label %main_bb809

main_bb808:                                       ; preds = %main_bb807
  store i32 0, i32* @"'t1_st", align 4
  br label %main_bb809

main_bb809:                                       ; preds = %main_bb808, %main_bb807
  %"1456" = load i32* @"'t2_pc", align 4
  %"1457" = icmp eq i32 %"1456", 1
  %"1458" = load i32* @"'E_2", align 4
  %"1459" = icmp eq i32 %"1458", 1
  %or.cond.i7.i.i = and i1 %"1457", %"1459"
  br i1 %or.cond.i7.i.i, label %main_bb810, label %main_bb811

main_bb810:                                       ; preds = %main_bb809
  store i32 0, i32* @"'t2_st", align 4
  br label %main_bb811

main_bb811:                                       ; preds = %main_bb810, %main_bb809
  %"1460" = load i32* @"'t3_pc", align 4
  %"1461" = icmp eq i32 %"1460", 1
  %"1462" = load i32* @"'E_3", align 4
  %"1463" = icmp eq i32 %"1462", 1
  %or.cond.i5.i.i = and i1 %"1461", %"1463"
  br i1 %or.cond.i5.i.i, label %main_bb812, label %main_bb813

main_bb812:                                       ; preds = %main_bb811
  store i32 0, i32* @"'t3_st", align 4
  br label %main_bb813

main_bb813:                                       ; preds = %main_bb812, %main_bb811
  %"1464" = load i32* @"'t4_pc", align 4
  %"1465" = icmp eq i32 %"1464", 1
  %"1466" = load i32* @"'E_4", align 4
  %"1467" = icmp eq i32 %"1466", 1
  %or.cond.i3.i.i = and i1 %"1465", %"1467"
  br i1 %or.cond.i3.i.i, label %main_bb814, label %main_bb815

main_bb814:                                       ; preds = %main_bb813
  store i32 0, i32* @"'t4_st", align 4
  br label %main_bb815

main_bb815:                                       ; preds = %main_bb814, %main_bb813
  %"1468" = load i32* @"'t5_pc", align 4
  %"1469" = icmp eq i32 %"1468", 1
  %"1470" = load i32* @"'E_5", align 4
  %"1471" = icmp eq i32 %"1470", 1
  %or.cond.i1.i.i = and i1 %"1469", %"1471"
  br i1 %or.cond.i1.i.i, label %main_bb816, label %main_activate_threads.exit.i

main_bb816:                                       ; preds = %main_bb815
  store i32 0, i32* @"'t5_st", align 4
  br label %main_activate_threads.exit.i

main_activate_threads.exit.i:                     ; preds = %main_bb816, %main_bb815
  %"1472" = load i32* @"'M_E", align 4
  %"1473" = icmp eq i32 %"1472", 1
  br i1 %"1473", label %main_bb817, label %main_bb818

main_bb817:                                       ; preds = %main_activate_threads.exit.i
  store i32 2, i32* @"'M_E", align 4
  br label %main_bb818

main_bb818:                                       ; preds = %main_bb817, %main_activate_threads.exit.i
  %"1474" = load i32* @"'T1_E", align 4
  %"1475" = icmp eq i32 %"1474", 1
  br i1 %"1475", label %main_bb819, label %main_bb820

main_bb819:                                       ; preds = %main_bb818
  store i32 2, i32* @"'T1_E", align 4
  br label %main_bb820

main_bb820:                                       ; preds = %main_bb819, %main_bb818
  %"1476" = load i32* @"'T2_E", align 4
  %"1477" = icmp eq i32 %"1476", 1
  br i1 %"1477", label %main_bb821, label %main_bb822

main_bb821:                                       ; preds = %main_bb820
  store i32 2, i32* @"'T2_E", align 4
  br label %main_bb822

main_bb822:                                       ; preds = %main_bb821, %main_bb820
  %"1478" = load i32* @"'T3_E", align 4
  %"1479" = icmp eq i32 %"1478", 1
  br i1 %"1479", label %main_bb823, label %main_bb824

main_bb823:                                       ; preds = %main_bb822
  store i32 2, i32* @"'T3_E", align 4
  br label %main_bb824

main_bb824:                                       ; preds = %main_bb823, %main_bb822
  %"1480" = load i32* @"'T4_E", align 4
  %"1481" = icmp eq i32 %"1480", 1
  br i1 %"1481", label %main_bb825, label %main_bb826

main_bb825:                                       ; preds = %main_bb824
  store i32 2, i32* @"'T4_E", align 4
  br label %main_bb826

main_bb826:                                       ; preds = %main_bb825, %main_bb824
  %"1482" = load i32* @"'T5_E", align 4
  %"1483" = icmp eq i32 %"1482", 1
  br i1 %"1483", label %main_bb827, label %main_bb828

main_bb827:                                       ; preds = %main_bb826
  store i32 2, i32* @"'T5_E", align 4
  br label %main_bb828

main_bb828:                                       ; preds = %main_bb827, %main_bb826
  %"1484" = load i32* @"'E_M", align 4
  %"1485" = icmp eq i32 %"1484", 1
  br i1 %"1485", label %main_bb829, label %main_bb830

main_bb829:                                       ; preds = %main_bb828
  store i32 2, i32* @"'E_M", align 4
  br label %main_bb830

main_bb830:                                       ; preds = %main_bb829, %main_bb828
  %"1486" = load i32* @"'E_1", align 4
  %"1487" = icmp eq i32 %"1486", 1
  br i1 %"1487", label %main_bb831, label %main_bb832

main_bb831:                                       ; preds = %main_bb830
  store i32 2, i32* @"'E_1", align 4
  br label %main_bb832

main_bb832:                                       ; preds = %main_bb831, %main_bb830
  %"1488" = load i32* @"'E_2", align 4
  %"1489" = icmp eq i32 %"1488", 1
  br i1 %"1489", label %main_bb833, label %main_bb834

main_bb833:                                       ; preds = %main_bb832
  store i32 2, i32* @"'E_2", align 4
  br label %main_bb834

main_bb834:                                       ; preds = %main_bb833, %main_bb832
  %"1490" = load i32* @"'E_3", align 4
  %"1491" = icmp eq i32 %"1490", 1
  br i1 %"1491", label %main_bb835, label %main_bb836

main_bb835:                                       ; preds = %main_bb834
  store i32 2, i32* @"'E_3", align 4
  br label %main_bb836

main_bb836:                                       ; preds = %main_bb835, %main_bb834
  %"1492" = load i32* @"'E_4", align 4
  %"1493" = icmp eq i32 %"1492", 1
  br i1 %"1493", label %main_bb837, label %main_bb838

main_bb837:                                       ; preds = %main_bb836
  store i32 2, i32* @"'E_4", align 4
  br label %main_bb838

main_bb838:                                       ; preds = %main_bb837, %main_bb836
  %"1494" = load i32* @"'E_5", align 4
  %"1495" = icmp eq i32 %"1494", 1
  br i1 %"1495", label %main_bb839, label %main_reset_time_events.exit.i

main_bb839:                                       ; preds = %main_bb838
  store i32 2, i32* @"'E_5", align 4
  br label %main_reset_time_events.exit.i

main_reset_time_events.exit.i:                    ; preds = %main_bb839, %main_bb838, %main_reset_delta_events.exit.i
  %"1496" = load i32* @"'m_st", align 4
  %"1497" = icmp eq i32 %"1496", 0
  %"1498" = load i32* @"'t1_st", align 4
  %"1499" = icmp eq i32 %"1498", 0
  %or.cond.i.i.i = or i1 %"1497", %"1499"
  %"1500" = load i32* @"'t2_st", align 4
  %"1501" = icmp eq i32 %"1500", 0
  %or.cond3.i.i.i = or i1 %or.cond.i.i.i, %"1501"
  %"1502" = load i32* @"'t3_st", align 4
  %"1503" = icmp eq i32 %"1502", 0
  %or.cond5.i.i.i = or i1 %or.cond3.i.i.i, %"1503"
  %"1504" = load i32* @"'t4_st", align 4
  %"1505" = icmp eq i32 %"1504", 0
  %or.cond7.i.i.i = or i1 %or.cond5.i.i.i, %"1505"
  %"1506" = load i32* @"'t5_st", align 4
  %"1507" = icmp eq i32 %"1506", 0
  %or.cond9.i.i.i = or i1 %or.cond7.i.i.i, %"1507"
  %__retres2.0.i.i = select i1 %or.cond9.i.i.i, i32 0, i32 1
  %"1508" = icmp ne i32 %__retres2.0.i.i, 0
  br i1 %"1508", label %main_start_simulation.exit, label %main_reset_delta_events.exit37.i

main_start_simulation.exit:                       ; preds = %main_reset_time_events.exit.i
  ret i32 0
}

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

