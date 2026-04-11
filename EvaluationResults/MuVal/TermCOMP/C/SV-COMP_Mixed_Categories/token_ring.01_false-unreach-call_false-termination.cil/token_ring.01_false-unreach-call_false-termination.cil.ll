; ModuleID = 'Benchmarks/TermCOMP/C/SV-COMP_Mixed_Categories/token_ring.01_false-unreach-call_false-termination.cil/token_ring.01_false-unreach-call_false-termination.cil.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"'m_pc" = global i32 0, align 4
@"'t1_pc" = global i32 0, align 4
@"'M_E" = global i32 2, align 4
@"'T1_E" = global i32 2, align 4
@"'E_M" = global i32 2, align 4
@"'E_1" = global i32 2, align 4
@"'token" = common global i32 0, align 4
@"'local" = common global i32 0, align 4
@"'m_st" = common global i32 0, align 4
@"'t1_st" = common global i32 0, align 4
@"'m_i" = common global i32 0, align 4
@"'t1_i" = common global i32 0, align 4

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
  %"7" = add nsw i32 %"6", 1
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
  %or.cond.i1.i.i = and i1 %"20", %"22"
  br i1 %or.cond.i1.i.i, label %master_bb11, label %master_immediate_notify.exit

master_bb11:                                      ; preds = %master_bb10
  store i32 0, i32* @"'t1_st", align 4
  br label %master_immediate_notify.exit

master_immediate_notify.exit:                     ; preds = %master_bb10, %master_bb11
  store i32 2, i32* @"'E_1", align 4
  store i32 1, i32* @"'m_pc", align 4
  store i32 2, i32* @"'m_st", align 4
  ret void
}

declare i32 @__VERIFIER_nondet_int(...) #2

; Function Attrs: nounwind uwtable
define void @immediate_notify() #0 {
immediate_notify_bb12:
  %"23" = load i32* @"'m_pc", align 4
  %"24" = icmp eq i32 %"23", 1
  %"25" = load i32* @"'E_M", align 4
  %"26" = icmp eq i32 %"25", 1
  %or.cond.i.i = and i1 %"24", %"26"
  br i1 %or.cond.i.i, label %immediate_notify_bb13, label %immediate_notify_bb14

immediate_notify_bb13:                            ; preds = %immediate_notify_bb12
  store i32 0, i32* @"'m_st", align 4
  br label %immediate_notify_bb14

immediate_notify_bb14:                            ; preds = %immediate_notify_bb13, %immediate_notify_bb12
  %"27" = load i32* @"'t1_pc", align 4
  %"28" = icmp eq i32 %"27", 1
  %"29" = load i32* @"'E_1", align 4
  %"30" = icmp eq i32 %"29", 1
  %or.cond.i1.i = and i1 %"28", %"30"
  br i1 %or.cond.i1.i, label %immediate_notify_bb15, label %immediate_notify_activate_threads.exit

immediate_notify_bb15:                            ; preds = %immediate_notify_bb14
  store i32 0, i32* @"'t1_st", align 4
  br label %immediate_notify_activate_threads.exit

immediate_notify_activate_threads.exit:           ; preds = %immediate_notify_bb14, %immediate_notify_bb15
  ret void
}

; Function Attrs: nounwind uwtable
define void @transmit1() #0 {
transmit1_bb16:
  %"31" = load i32* @"'t1_pc", align 4
  %"32" = icmp ne i32 %"31", 0
  %"33" = load i32* @"'t1_pc", align 4
  %"34" = icmp eq i32 %"33", 1
  %or.cond = and i1 %"32", %"34"
  br i1 %or.cond, label %transmit1_bb17, label %transmit1_bb21

transmit1_bb17:                                   ; preds = %transmit1_bb16
  %"35" = load i32* @"'token", align 4
  %"36" = add nsw i32 %"35", 1
  store i32 %"36", i32* @"'token", align 4
  store i32 1, i32* @"'E_M", align 4
  %"37" = load i32* @"'m_pc", align 4
  %"38" = icmp eq i32 %"37", 1
  %"39" = load i32* @"'E_M", align 4
  %"40" = icmp eq i32 %"39", 1
  %or.cond.i.i.i = and i1 %"38", %"40"
  br i1 %or.cond.i.i.i, label %transmit1_bb18, label %transmit1_bb19

transmit1_bb18:                                   ; preds = %transmit1_bb17
  store i32 0, i32* @"'m_st", align 4
  br label %transmit1_bb19

transmit1_bb19:                                   ; preds = %transmit1_bb18, %transmit1_bb17
  %"41" = load i32* @"'t1_pc", align 4
  %"42" = icmp eq i32 %"41", 1
  %"43" = load i32* @"'E_1", align 4
  %"44" = icmp eq i32 %"43", 1
  %or.cond.i1.i.i = and i1 %"42", %"44"
  br i1 %or.cond.i1.i.i, label %transmit1_bb20, label %transmit1_immediate_notify.exit

transmit1_bb20:                                   ; preds = %transmit1_bb19
  store i32 0, i32* @"'t1_st", align 4
  br label %transmit1_immediate_notify.exit

transmit1_immediate_notify.exit:                  ; preds = %transmit1_bb19, %transmit1_bb20
  store i32 2, i32* @"'E_M", align 4
  br label %transmit1_bb21

transmit1_bb21:                                   ; preds = %transmit1_bb16, %transmit1_immediate_notify.exit
  store i32 1, i32* @"'t1_pc", align 4
  store i32 2, i32* @"'t1_st", align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @is_master_triggered() #0 {
is_master_triggered_bb22:
  %"45" = load i32* @"'m_pc", align 4
  %"46" = icmp eq i32 %"45", 1
  %"47" = load i32* @"'E_M", align 4
  %"48" = icmp eq i32 %"47", 1
  %or.cond = and i1 %"46", %"48"
  %__retres1.0 = select i1 %or.cond, i32 1, i32 0
  ret i32 %__retres1.0
}

; Function Attrs: nounwind uwtable
define i32 @is_transmit1_triggered() #0 {
is_transmit1_triggered_bb23:
  %"49" = load i32* @"'t1_pc", align 4
  %"50" = icmp eq i32 %"49", 1
  %"51" = load i32* @"'E_1", align 4
  %"52" = icmp eq i32 %"51", 1
  %or.cond = and i1 %"50", %"52"
  %__retres1.0 = select i1 %or.cond, i32 1, i32 0
  ret i32 %__retres1.0
}

; Function Attrs: nounwind uwtable
define void @update_channels() #0 {
update_channels_bb24:
  ret void
}

; Function Attrs: nounwind uwtable
define void @init_threads() #0 {
init_threads_bb25:
  %"53" = load i32* @"'m_i", align 4
  %"54" = icmp eq i32 %"53", 1
  br i1 %"54", label %init_threads_bb26, label %init_threads_bb27

init_threads_bb26:                                ; preds = %init_threads_bb25
  store i32 0, i32* @"'m_st", align 4
  br label %init_threads_bb28

init_threads_bb27:                                ; preds = %init_threads_bb25
  store i32 2, i32* @"'m_st", align 4
  br label %init_threads_bb28

init_threads_bb28:                                ; preds = %init_threads_bb27, %init_threads_bb26
  %"55" = load i32* @"'t1_i", align 4
  %"56" = icmp eq i32 %"55", 1
  br i1 %"56", label %init_threads_bb29, label %init_threads_bb30

init_threads_bb29:                                ; preds = %init_threads_bb28
  store i32 0, i32* @"'t1_st", align 4
  br label %init_threads_bb31

init_threads_bb30:                                ; preds = %init_threads_bb28
  store i32 2, i32* @"'t1_st", align 4
  br label %init_threads_bb31

init_threads_bb31:                                ; preds = %init_threads_bb30, %init_threads_bb29
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @exists_runnable_thread() #0 {
exists_runnable_thread_bb32:
  %"57" = load i32* @"'m_st", align 4
  %"58" = icmp eq i32 %"57", 0
  %"59" = load i32* @"'t1_st", align 4
  %"60" = icmp eq i32 %"59", 0
  %or.cond = or i1 %"58", %"60"
  %__retres1.0 = select i1 %or.cond, i32 1, i32 0
  ret i32 %__retres1.0
}

; Function Attrs: nounwind uwtable
define void @eval() #0 {
eval_bb33:
  br label %eval_bb34

eval_bb34:                                        ; preds = %eval_bb47, %eval_transmit1.exit, %eval_bb46, %eval_bb33
  %"61" = load i32* @"'m_st", align 4
  %"62" = icmp eq i32 %"61", 0
  %"63" = load i32* @"'t1_st", align 4
  %"64" = icmp eq i32 %"63", 0
  %or.cond.i = or i1 %"62", %"64"
  %__retres1.0.i = select i1 %or.cond.i, i32 1, i32 0
  %"65" = icmp ne i32 %__retres1.0.i, 0
  br i1 %"65", label %eval_bb35, label %eval_bb53

eval_bb35:                                        ; preds = %eval_bb34
  %"66" = load i32* @"'m_st", align 4
  %"67" = icmp eq i32 %"66", 0
  br i1 %"67", label %eval_bb36, label %eval_bb46

eval_bb36:                                        ; preds = %eval_bb35
  %"68" = call i32 (...)* @__VERIFIER_nondet_int()
  %"69" = icmp ne i32 %"68", 0
  br i1 %"69", label %eval_bb37, label %eval_bb46

eval_bb37:                                        ; preds = %eval_bb36
  store i32 1, i32* @"'m_st", align 4
  %"70" = call i32 @__kittel_nondef.0() #5
  %"71" = load i32* @"'m_pc", align 4
  %"72" = icmp ne i32 %"71", 0
  %"73" = load i32* @"'m_pc", align 4
  %"74" = icmp eq i32 %"73", 1
  %or.cond.i2 = and i1 %"72", %"74"
  br i1 %or.cond.i2, label %eval_bb38, label %eval_bb42

eval_bb38:                                        ; preds = %eval_bb37
  %"75" = load i32* @"'token", align 4
  %"76" = load i32* @"'local", align 4
  %"77" = add nsw i32 %"76", 1
  %"78" = icmp ne i32 %"75", %"77"
  br i1 %"78", label %eval_bb39, label %eval_bb40

eval_bb39:                                        ; preds = %eval_bb38
  call void (...)* @__VERIFIER_error() #4
  unreachable

eval_bb40:                                        ; preds = %eval_bb38
  %"79" = icmp sle i32 %"70", 5
  %"80" = icmp sge i32 %"70", 5
  %or.cond3.i = and i1 %"79", %"80"
  %"81" = icmp eq i32 %"70", 5
  %or.cond4.i = and i1 %or.cond3.i, %"81"
  br i1 %or.cond4.i, label %eval_bb41, label %eval_bb42

eval_bb41:                                        ; preds = %eval_bb40
  call void (...)* @__VERIFIER_error() #4
  unreachable

eval_bb42:                                        ; preds = %eval_bb40, %eval_bb37
  %"82" = call i32 (...)* @__VERIFIER_nondet_int() #5
  store i32 %"82", i32* @"'token", align 4
  %"83" = load i32* @"'token", align 4
  store i32 %"83", i32* @"'local", align 4
  store i32 1, i32* @"'E_1", align 4
  %"84" = load i32* @"'m_pc", align 4
  %"85" = icmp eq i32 %"84", 1
  %"86" = load i32* @"'E_M", align 4
  %"87" = icmp eq i32 %"86", 1
  %or.cond.i.i.i.i3 = and i1 %"85", %"87"
  br i1 %or.cond.i.i.i.i3, label %eval_bb43, label %eval_bb44

eval_bb43:                                        ; preds = %eval_bb42
  store i32 0, i32* @"'m_st", align 4
  br label %eval_bb44

eval_bb44:                                        ; preds = %eval_bb43, %eval_bb42
  %"88" = load i32* @"'t1_pc", align 4
  %"89" = icmp eq i32 %"88", 1
  %"90" = load i32* @"'E_1", align 4
  %"91" = icmp eq i32 %"90", 1
  %or.cond.i1.i.i.i4 = and i1 %"89", %"91"
  br i1 %or.cond.i1.i.i.i4, label %eval_bb45, label %eval_master.exit

eval_bb45:                                        ; preds = %eval_bb44
  store i32 0, i32* @"'t1_st", align 4
  br label %eval_master.exit

eval_master.exit:                                 ; preds = %eval_bb44, %eval_bb45
  store i32 2, i32* @"'E_1", align 4
  store i32 1, i32* @"'m_pc", align 4
  store i32 2, i32* @"'m_st", align 4
  br label %eval_bb46

eval_bb46:                                        ; preds = %eval_bb35, %eval_master.exit, %eval_bb36
  %"92" = load i32* @"'t1_st", align 4
  %"93" = icmp eq i32 %"92", 0
  br i1 %"93", label %eval_bb47, label %eval_bb34

eval_bb47:                                        ; preds = %eval_bb46
  %"94" = call i32 (...)* @__VERIFIER_nondet_int()
  %"95" = icmp ne i32 %"94", 0
  br i1 %"95", label %eval_bb48, label %eval_bb34

eval_bb48:                                        ; preds = %eval_bb47
  store i32 1, i32* @"'t1_st", align 4
  %"96" = load i32* @"'t1_pc", align 4
  %"97" = icmp ne i32 %"96", 0
  %"98" = load i32* @"'t1_pc", align 4
  %"99" = icmp eq i32 %"98", 1
  %or.cond.i1 = and i1 %"97", %"99"
  br i1 %or.cond.i1, label %eval_bb49, label %eval_transmit1.exit

eval_bb49:                                        ; preds = %eval_bb48
  %"100" = load i32* @"'token", align 4
  %"101" = add nsw i32 %"100", 1
  store i32 %"101", i32* @"'token", align 4
  store i32 1, i32* @"'E_M", align 4
  %"102" = load i32* @"'m_pc", align 4
  %"103" = icmp eq i32 %"102", 1
  %"104" = load i32* @"'E_M", align 4
  %"105" = icmp eq i32 %"104", 1
  %or.cond.i.i.i.i = and i1 %"103", %"105"
  br i1 %or.cond.i.i.i.i, label %eval_bb50, label %eval_bb51

eval_bb50:                                        ; preds = %eval_bb49
  store i32 0, i32* @"'m_st", align 4
  br label %eval_bb51

eval_bb51:                                        ; preds = %eval_bb50, %eval_bb49
  %"106" = load i32* @"'t1_pc", align 4
  %"107" = icmp eq i32 %"106", 1
  %"108" = load i32* @"'E_1", align 4
  %"109" = icmp eq i32 %"108", 1
  %or.cond.i1.i.i.i = and i1 %"107", %"109"
  br i1 %or.cond.i1.i.i.i, label %eval_bb52, label %eval_immediate_notify.exit.i

eval_bb52:                                        ; preds = %eval_bb51
  store i32 0, i32* @"'t1_st", align 4
  br label %eval_immediate_notify.exit.i

eval_immediate_notify.exit.i:                     ; preds = %eval_bb52, %eval_bb51
  store i32 2, i32* @"'E_M", align 4
  br label %eval_transmit1.exit

eval_transmit1.exit:                              ; preds = %eval_bb48, %eval_immediate_notify.exit.i
  store i32 1, i32* @"'t1_pc", align 4
  store i32 2, i32* @"'t1_st", align 4
  br label %eval_bb34

eval_bb53:                                        ; preds = %eval_bb34
  ret void
}

; Function Attrs: nounwind uwtable
define void @fire_delta_events() #0 {
fire_delta_events_bb54:
  %"110" = load i32* @"'M_E", align 4
  %"111" = icmp eq i32 %"110", 0
  br i1 %"111", label %fire_delta_events_bb55, label %fire_delta_events_bb56

fire_delta_events_bb55:                           ; preds = %fire_delta_events_bb54
  store i32 1, i32* @"'M_E", align 4
  br label %fire_delta_events_bb56

fire_delta_events_bb56:                           ; preds = %fire_delta_events_bb54, %fire_delta_events_bb55
  %"112" = load i32* @"'T1_E", align 4
  %"113" = icmp eq i32 %"112", 0
  br i1 %"113", label %fire_delta_events_bb57, label %fire_delta_events_bb58

fire_delta_events_bb57:                           ; preds = %fire_delta_events_bb56
  store i32 1, i32* @"'T1_E", align 4
  br label %fire_delta_events_bb58

fire_delta_events_bb58:                           ; preds = %fire_delta_events_bb56, %fire_delta_events_bb57
  %"114" = load i32* @"'E_M", align 4
  %"115" = icmp eq i32 %"114", 0
  br i1 %"115", label %fire_delta_events_bb59, label %fire_delta_events_bb60

fire_delta_events_bb59:                           ; preds = %fire_delta_events_bb58
  store i32 1, i32* @"'E_M", align 4
  br label %fire_delta_events_bb60

fire_delta_events_bb60:                           ; preds = %fire_delta_events_bb58, %fire_delta_events_bb59
  %"116" = load i32* @"'E_1", align 4
  %"117" = icmp eq i32 %"116", 0
  br i1 %"117", label %fire_delta_events_bb61, label %fire_delta_events_bb62

fire_delta_events_bb61:                           ; preds = %fire_delta_events_bb60
  store i32 1, i32* @"'E_1", align 4
  br label %fire_delta_events_bb62

fire_delta_events_bb62:                           ; preds = %fire_delta_events_bb60, %fire_delta_events_bb61
  ret void
}

; Function Attrs: nounwind uwtable
define void @reset_delta_events() #0 {
reset_delta_events_bb63:
  %"118" = load i32* @"'M_E", align 4
  %"119" = icmp eq i32 %"118", 1
  br i1 %"119", label %reset_delta_events_bb64, label %reset_delta_events_bb65

reset_delta_events_bb64:                          ; preds = %reset_delta_events_bb63
  store i32 2, i32* @"'M_E", align 4
  br label %reset_delta_events_bb65

reset_delta_events_bb65:                          ; preds = %reset_delta_events_bb63, %reset_delta_events_bb64
  %"120" = load i32* @"'T1_E", align 4
  %"121" = icmp eq i32 %"120", 1
  br i1 %"121", label %reset_delta_events_bb66, label %reset_delta_events_bb67

reset_delta_events_bb66:                          ; preds = %reset_delta_events_bb65
  store i32 2, i32* @"'T1_E", align 4
  br label %reset_delta_events_bb67

reset_delta_events_bb67:                          ; preds = %reset_delta_events_bb65, %reset_delta_events_bb66
  %"122" = load i32* @"'E_M", align 4
  %"123" = icmp eq i32 %"122", 1
  br i1 %"123", label %reset_delta_events_bb68, label %reset_delta_events_bb69

reset_delta_events_bb68:                          ; preds = %reset_delta_events_bb67
  store i32 2, i32* @"'E_M", align 4
  br label %reset_delta_events_bb69

reset_delta_events_bb69:                          ; preds = %reset_delta_events_bb67, %reset_delta_events_bb68
  %"124" = load i32* @"'E_1", align 4
  %"125" = icmp eq i32 %"124", 1
  br i1 %"125", label %reset_delta_events_bb70, label %reset_delta_events_bb71

reset_delta_events_bb70:                          ; preds = %reset_delta_events_bb69
  store i32 2, i32* @"'E_1", align 4
  br label %reset_delta_events_bb71

reset_delta_events_bb71:                          ; preds = %reset_delta_events_bb69, %reset_delta_events_bb70
  ret void
}

; Function Attrs: nounwind uwtable
define void @activate_threads() #0 {
activate_threads_bb72:
  %"126" = load i32* @"'m_pc", align 4
  %"127" = icmp eq i32 %"126", 1
  %"128" = load i32* @"'E_M", align 4
  %"129" = icmp eq i32 %"128", 1
  %or.cond.i = and i1 %"127", %"129"
  %__retres1.0.i = select i1 %or.cond.i, i32 1, i32 0
  %"130" = icmp ne i32 %__retres1.0.i, 0
  br i1 %"130", label %activate_threads_bb73, label %activate_threads_bb74

activate_threads_bb73:                            ; preds = %activate_threads_bb72
  store i32 0, i32* @"'m_st", align 4
  br label %activate_threads_bb74

activate_threads_bb74:                            ; preds = %activate_threads_bb72, %activate_threads_bb73
  %"131" = load i32* @"'t1_pc", align 4
  %"132" = icmp eq i32 %"131", 1
  %"133" = load i32* @"'E_1", align 4
  %"134" = icmp eq i32 %"133", 1
  %or.cond.i1 = and i1 %"132", %"134"
  %__retres1.0.i2 = select i1 %or.cond.i1, i32 1, i32 0
  %"135" = icmp ne i32 %__retres1.0.i2, 0
  br i1 %"135", label %activate_threads_bb75, label %activate_threads_bb76

activate_threads_bb75:                            ; preds = %activate_threads_bb74
  store i32 0, i32* @"'t1_st", align 4
  br label %activate_threads_bb76

activate_threads_bb76:                            ; preds = %activate_threads_bb74, %activate_threads_bb75
  ret void
}

; Function Attrs: nounwind uwtable
define void @fire_time_events() #0 {
fire_time_events_bb77:
  store i32 1, i32* @"'M_E", align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @reset_time_events() #0 {
reset_time_events_bb78:
  %"136" = load i32* @"'M_E", align 4
  %"137" = icmp eq i32 %"136", 1
  br i1 %"137", label %reset_time_events_bb79, label %reset_time_events_bb80

reset_time_events_bb79:                           ; preds = %reset_time_events_bb78
  store i32 2, i32* @"'M_E", align 4
  br label %reset_time_events_bb80

reset_time_events_bb80:                           ; preds = %reset_time_events_bb78, %reset_time_events_bb79
  %"138" = load i32* @"'T1_E", align 4
  %"139" = icmp eq i32 %"138", 1
  br i1 %"139", label %reset_time_events_bb81, label %reset_time_events_bb82

reset_time_events_bb81:                           ; preds = %reset_time_events_bb80
  store i32 2, i32* @"'T1_E", align 4
  br label %reset_time_events_bb82

reset_time_events_bb82:                           ; preds = %reset_time_events_bb80, %reset_time_events_bb81
  %"140" = load i32* @"'E_M", align 4
  %"141" = icmp eq i32 %"140", 1
  br i1 %"141", label %reset_time_events_bb83, label %reset_time_events_bb84

reset_time_events_bb83:                           ; preds = %reset_time_events_bb82
  store i32 2, i32* @"'E_M", align 4
  br label %reset_time_events_bb84

reset_time_events_bb84:                           ; preds = %reset_time_events_bb82, %reset_time_events_bb83
  %"142" = load i32* @"'E_1", align 4
  %"143" = icmp eq i32 %"142", 1
  br i1 %"143", label %reset_time_events_bb85, label %reset_time_events_bb86

reset_time_events_bb85:                           ; preds = %reset_time_events_bb84
  store i32 2, i32* @"'E_1", align 4
  br label %reset_time_events_bb86

reset_time_events_bb86:                           ; preds = %reset_time_events_bb84, %reset_time_events_bb85
  ret void
}

; Function Attrs: nounwind uwtable
define void @init_model() #0 {
init_model_bb87:
  store i32 1, i32* @"'m_i", align 4
  store i32 1, i32* @"'t1_i", align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @stop_simulation() #0 {
stop_simulation_bb88:
  %"144" = load i32* @"'m_st", align 4
  %"145" = icmp eq i32 %"144", 0
  %"146" = load i32* @"'t1_st", align 4
  %"147" = icmp eq i32 %"146", 0
  %or.cond.i = or i1 %"145", %"147"
  %__retres1.0.i = select i1 %or.cond.i, i32 1, i32 0
  %"148" = icmp ne i32 %__retres1.0.i, 0
  %__retres2.0 = select i1 %"148", i32 0, i32 1
  ret i32 %__retres2.0
}

; Function Attrs: nounwind uwtable
define void @start_simulation() #0 {
start_simulation_bb89:
  %"149" = load i32* @"'m_i", align 4
  %"150" = icmp eq i32 %"149", 1
  br i1 %"150", label %start_simulation_bb90, label %start_simulation_bb91

start_simulation_bb90:                            ; preds = %start_simulation_bb89
  store i32 0, i32* @"'m_st", align 4
  br label %start_simulation_bb92

start_simulation_bb91:                            ; preds = %start_simulation_bb89
  store i32 2, i32* @"'m_st", align 4
  br label %start_simulation_bb92

start_simulation_bb92:                            ; preds = %start_simulation_bb91, %start_simulation_bb90
  %"151" = load i32* @"'t1_i", align 4
  %"152" = icmp eq i32 %"151", 1
  br i1 %"152", label %start_simulation_bb93, label %start_simulation_bb94

start_simulation_bb93:                            ; preds = %start_simulation_bb92
  store i32 0, i32* @"'t1_st", align 4
  br label %start_simulation_init_threads.exit

start_simulation_bb94:                            ; preds = %start_simulation_bb92
  store i32 2, i32* @"'t1_st", align 4
  br label %start_simulation_init_threads.exit

start_simulation_init_threads.exit:               ; preds = %start_simulation_bb93, %start_simulation_bb94
  %"153" = load i32* @"'M_E", align 4
  %"154" = icmp eq i32 %"153", 0
  br i1 %"154", label %start_simulation_bb95, label %start_simulation_bb96

start_simulation_bb95:                            ; preds = %start_simulation_init_threads.exit
  store i32 1, i32* @"'M_E", align 4
  br label %start_simulation_bb96

start_simulation_bb96:                            ; preds = %start_simulation_bb95, %start_simulation_init_threads.exit
  %"155" = load i32* @"'T1_E", align 4
  %"156" = icmp eq i32 %"155", 0
  br i1 %"156", label %start_simulation_bb97, label %start_simulation_bb98

start_simulation_bb97:                            ; preds = %start_simulation_bb96
  store i32 1, i32* @"'T1_E", align 4
  br label %start_simulation_bb98

start_simulation_bb98:                            ; preds = %start_simulation_bb97, %start_simulation_bb96
  %"157" = load i32* @"'E_M", align 4
  %"158" = icmp eq i32 %"157", 0
  br i1 %"158", label %start_simulation_bb99, label %start_simulation_bb100

start_simulation_bb99:                            ; preds = %start_simulation_bb98
  store i32 1, i32* @"'E_M", align 4
  br label %start_simulation_bb100

start_simulation_bb100:                           ; preds = %start_simulation_bb99, %start_simulation_bb98
  %"159" = load i32* @"'E_1", align 4
  %"160" = icmp eq i32 %"159", 0
  br i1 %"160", label %start_simulation_bb101, label %start_simulation_fire_delta_events.exit11

start_simulation_bb101:                           ; preds = %start_simulation_bb100
  store i32 1, i32* @"'E_1", align 4
  br label %start_simulation_fire_delta_events.exit11

start_simulation_fire_delta_events.exit11:        ; preds = %start_simulation_bb100, %start_simulation_bb101
  %"161" = load i32* @"'m_pc", align 4
  %"162" = icmp eq i32 %"161", 1
  %"163" = load i32* @"'E_M", align 4
  %"164" = icmp eq i32 %"163", 1
  %or.cond.i.i12 = and i1 %"162", %"164"
  br i1 %or.cond.i.i12, label %start_simulation_bb102, label %start_simulation_bb103

start_simulation_bb102:                           ; preds = %start_simulation_fire_delta_events.exit11
  store i32 0, i32* @"'m_st", align 4
  br label %start_simulation_bb103

start_simulation_bb103:                           ; preds = %start_simulation_bb102, %start_simulation_fire_delta_events.exit11
  %"165" = load i32* @"'t1_pc", align 4
  %"166" = icmp eq i32 %"165", 1
  %"167" = load i32* @"'E_1", align 4
  %"168" = icmp eq i32 %"167", 1
  %or.cond.i1.i14 = and i1 %"166", %"168"
  br i1 %or.cond.i1.i14, label %start_simulation_bb104, label %start_simulation_activate_threads.exit16

start_simulation_bb104:                           ; preds = %start_simulation_bb103
  store i32 0, i32* @"'t1_st", align 4
  br label %start_simulation_activate_threads.exit16

start_simulation_activate_threads.exit16:         ; preds = %start_simulation_bb103, %start_simulation_bb104
  %"169" = load i32* @"'M_E", align 4
  %"170" = icmp eq i32 %"169", 1
  br i1 %"170", label %start_simulation_bb105, label %start_simulation_bb106

start_simulation_bb105:                           ; preds = %start_simulation_activate_threads.exit16
  store i32 2, i32* @"'M_E", align 4
  br label %start_simulation_bb106

start_simulation_bb106:                           ; preds = %start_simulation_bb105, %start_simulation_activate_threads.exit16
  %"171" = load i32* @"'T1_E", align 4
  %"172" = icmp eq i32 %"171", 1
  br i1 %"172", label %start_simulation_bb107, label %start_simulation_bb108

start_simulation_bb107:                           ; preds = %start_simulation_bb106
  store i32 2, i32* @"'T1_E", align 4
  br label %start_simulation_bb108

start_simulation_bb108:                           ; preds = %start_simulation_bb107, %start_simulation_bb106
  %"173" = load i32* @"'E_M", align 4
  %"174" = icmp eq i32 %"173", 1
  br i1 %"174", label %start_simulation_bb109, label %start_simulation_bb110

start_simulation_bb109:                           ; preds = %start_simulation_bb108
  store i32 2, i32* @"'E_M", align 4
  br label %start_simulation_bb110

start_simulation_bb110:                           ; preds = %start_simulation_bb109, %start_simulation_bb108
  %"175" = load i32* @"'E_1", align 4
  %"176" = icmp eq i32 %"175", 1
  br i1 %"176", label %start_simulation_bb111, label %start_simulation_reset_delta_events.exit17

start_simulation_bb111:                           ; preds = %start_simulation_bb110
  store i32 2, i32* @"'E_1", align 4
  br label %start_simulation_reset_delta_events.exit17

start_simulation_reset_delta_events.exit17:       ; preds = %start_simulation_reset_time_events.exit, %start_simulation_bb111, %start_simulation_bb110, %start_simulation_transmit1.exit.i, %start_simulation_bb124, %start_simulation_bb123
  %"177" = load i32* @"'m_st", align 4
  %"178" = icmp eq i32 %"177", 0
  %"179" = load i32* @"'t1_st", align 4
  %"180" = icmp eq i32 %"179", 0
  %or.cond.i.i8 = or i1 %"178", %"180"
  br i1 %or.cond.i.i8, label %start_simulation_bb112, label %start_simulation_eval.exit

start_simulation_bb112:                           ; preds = %start_simulation_reset_delta_events.exit17
  %"181" = load i32* @"'m_st", align 4
  %"182" = icmp eq i32 %"181", 0
  br i1 %"182", label %start_simulation_bb113, label %start_simulation_bb123

start_simulation_bb113:                           ; preds = %start_simulation_bb112
  %"183" = call i32 (...)* @__VERIFIER_nondet_int() #5
  %"184" = icmp ne i32 %"183", 0
  br i1 %"184", label %start_simulation_bb114, label %start_simulation_bb123

start_simulation_bb114:                           ; preds = %start_simulation_bb113
  store i32 1, i32* @"'m_st", align 4
  %"185" = call i32 @__kittel_nondef.0() #5
  %"186" = load i32* @"'m_pc", align 4
  %"187" = icmp ne i32 %"186", 0
  %"188" = load i32* @"'m_pc", align 4
  %"189" = icmp eq i32 %"188", 1
  %or.cond.i2.i = and i1 %"187", %"189"
  br i1 %or.cond.i2.i, label %start_simulation_bb115, label %start_simulation_bb119

start_simulation_bb115:                           ; preds = %start_simulation_bb114
  %"190" = load i32* @"'token", align 4
  %"191" = load i32* @"'local", align 4
  %"192" = add nsw i32 %"191", 1
  %"193" = icmp ne i32 %"190", %"192"
  br i1 %"193", label %start_simulation_bb116, label %start_simulation_bb117

start_simulation_bb116:                           ; preds = %start_simulation_bb115
  call void (...)* @__VERIFIER_error() #4
  unreachable

start_simulation_bb117:                           ; preds = %start_simulation_bb115
  %"194" = icmp sle i32 %"185", 5
  %"195" = icmp sge i32 %"185", 5
  %or.cond3.i.i = and i1 %"194", %"195"
  %"196" = icmp eq i32 %"185", 5
  %or.cond4.i.i = and i1 %or.cond3.i.i, %"196"
  br i1 %or.cond4.i.i, label %start_simulation_bb118, label %start_simulation_bb119

start_simulation_bb118:                           ; preds = %start_simulation_bb117
  call void (...)* @__VERIFIER_error() #4
  unreachable

start_simulation_bb119:                           ; preds = %start_simulation_bb117, %start_simulation_bb114
  %"197" = call i32 (...)* @__VERIFIER_nondet_int() #5
  store i32 %"197", i32* @"'token", align 4
  %"198" = load i32* @"'token", align 4
  store i32 %"198", i32* @"'local", align 4
  store i32 1, i32* @"'E_1", align 4
  %"199" = load i32* @"'m_pc", align 4
  %"200" = icmp eq i32 %"199", 1
  %"201" = load i32* @"'E_M", align 4
  %"202" = icmp eq i32 %"201", 1
  %or.cond.i.i.i.i3.i = and i1 %"200", %"202"
  br i1 %or.cond.i.i.i.i3.i, label %start_simulation_bb120, label %start_simulation_bb121

start_simulation_bb120:                           ; preds = %start_simulation_bb119
  store i32 0, i32* @"'m_st", align 4
  br label %start_simulation_bb121

start_simulation_bb121:                           ; preds = %start_simulation_bb120, %start_simulation_bb119
  %"203" = load i32* @"'t1_pc", align 4
  %"204" = icmp eq i32 %"203", 1
  %"205" = load i32* @"'E_1", align 4
  %"206" = icmp eq i32 %"205", 1
  %or.cond.i1.i.i.i4.i = and i1 %"204", %"206"
  br i1 %or.cond.i1.i.i.i4.i, label %start_simulation_bb122, label %start_simulation_master.exit.i

start_simulation_bb122:                           ; preds = %start_simulation_bb121
  store i32 0, i32* @"'t1_st", align 4
  br label %start_simulation_master.exit.i

start_simulation_master.exit.i:                   ; preds = %start_simulation_bb122, %start_simulation_bb121
  store i32 2, i32* @"'E_1", align 4
  store i32 1, i32* @"'m_pc", align 4
  store i32 2, i32* @"'m_st", align 4
  br label %start_simulation_bb123

start_simulation_bb123:                           ; preds = %start_simulation_master.exit.i, %start_simulation_bb113, %start_simulation_bb112
  %"207" = load i32* @"'t1_st", align 4
  %"208" = icmp eq i32 %"207", 0
  br i1 %"208", label %start_simulation_bb124, label %start_simulation_reset_delta_events.exit17

start_simulation_bb124:                           ; preds = %start_simulation_bb123
  %"209" = call i32 (...)* @__VERIFIER_nondet_int() #5
  %"210" = icmp ne i32 %"209", 0
  br i1 %"210", label %start_simulation_bb125, label %start_simulation_reset_delta_events.exit17

start_simulation_bb125:                           ; preds = %start_simulation_bb124
  store i32 1, i32* @"'t1_st", align 4
  %"211" = load i32* @"'t1_pc", align 4
  %"212" = icmp ne i32 %"211", 0
  %"213" = load i32* @"'t1_pc", align 4
  %"214" = icmp eq i32 %"213", 1
  %or.cond.i1.i10 = and i1 %"212", %"214"
  br i1 %or.cond.i1.i10, label %start_simulation_bb126, label %start_simulation_transmit1.exit.i

start_simulation_bb126:                           ; preds = %start_simulation_bb125
  %"215" = load i32* @"'token", align 4
  %"216" = add nsw i32 %"215", 1
  store i32 %"216", i32* @"'token", align 4
  store i32 1, i32* @"'E_M", align 4
  %"217" = load i32* @"'m_pc", align 4
  %"218" = icmp eq i32 %"217", 1
  %"219" = load i32* @"'E_M", align 4
  %"220" = icmp eq i32 %"219", 1
  %or.cond.i.i.i.i.i = and i1 %"218", %"220"
  br i1 %or.cond.i.i.i.i.i, label %start_simulation_bb127, label %start_simulation_bb128

start_simulation_bb127:                           ; preds = %start_simulation_bb126
  store i32 0, i32* @"'m_st", align 4
  br label %start_simulation_bb128

start_simulation_bb128:                           ; preds = %start_simulation_bb127, %start_simulation_bb126
  %"221" = load i32* @"'t1_pc", align 4
  %"222" = icmp eq i32 %"221", 1
  %"223" = load i32* @"'E_1", align 4
  %"224" = icmp eq i32 %"223", 1
  %or.cond.i1.i.i.i.i = and i1 %"222", %"224"
  br i1 %or.cond.i1.i.i.i.i, label %start_simulation_bb129, label %start_simulation_immediate_notify.exit.i.i

start_simulation_bb129:                           ; preds = %start_simulation_bb128
  store i32 0, i32* @"'t1_st", align 4
  br label %start_simulation_immediate_notify.exit.i.i

start_simulation_immediate_notify.exit.i.i:       ; preds = %start_simulation_bb129, %start_simulation_bb128
  store i32 2, i32* @"'E_M", align 4
  br label %start_simulation_transmit1.exit.i

start_simulation_transmit1.exit.i:                ; preds = %start_simulation_immediate_notify.exit.i.i, %start_simulation_bb125
  store i32 1, i32* @"'t1_pc", align 4
  store i32 2, i32* @"'t1_st", align 4
  br label %start_simulation_reset_delta_events.exit17

start_simulation_eval.exit:                       ; preds = %start_simulation_reset_delta_events.exit17
  %"225" = load i32* @"'M_E", align 4
  %"226" = icmp eq i32 %"225", 0
  br i1 %"226", label %start_simulation_bb130, label %start_simulation_bb131

start_simulation_bb130:                           ; preds = %start_simulation_eval.exit
  store i32 1, i32* @"'M_E", align 4
  br label %start_simulation_bb131

start_simulation_bb131:                           ; preds = %start_simulation_bb130, %start_simulation_eval.exit
  %"227" = load i32* @"'T1_E", align 4
  %"228" = icmp eq i32 %"227", 0
  br i1 %"228", label %start_simulation_bb132, label %start_simulation_bb133

start_simulation_bb132:                           ; preds = %start_simulation_bb131
  store i32 1, i32* @"'T1_E", align 4
  br label %start_simulation_bb133

start_simulation_bb133:                           ; preds = %start_simulation_bb132, %start_simulation_bb131
  %"229" = load i32* @"'E_M", align 4
  %"230" = icmp eq i32 %"229", 0
  br i1 %"230", label %start_simulation_bb134, label %start_simulation_bb135

start_simulation_bb134:                           ; preds = %start_simulation_bb133
  store i32 1, i32* @"'E_M", align 4
  br label %start_simulation_bb135

start_simulation_bb135:                           ; preds = %start_simulation_bb134, %start_simulation_bb133
  %"231" = load i32* @"'E_1", align 4
  %"232" = icmp eq i32 %"231", 0
  br i1 %"232", label %start_simulation_bb136, label %start_simulation_fire_delta_events.exit

start_simulation_bb136:                           ; preds = %start_simulation_bb135
  store i32 1, i32* @"'E_1", align 4
  br label %start_simulation_fire_delta_events.exit

start_simulation_fire_delta_events.exit:          ; preds = %start_simulation_bb135, %start_simulation_bb136
  %"233" = load i32* @"'m_pc", align 4
  %"234" = icmp eq i32 %"233", 1
  %"235" = load i32* @"'E_M", align 4
  %"236" = icmp eq i32 %"235", 1
  %or.cond.i.i3 = and i1 %"234", %"236"
  br i1 %or.cond.i.i3, label %start_simulation_bb137, label %start_simulation_bb138

start_simulation_bb137:                           ; preds = %start_simulation_fire_delta_events.exit
  store i32 0, i32* @"'m_st", align 4
  br label %start_simulation_bb138

start_simulation_bb138:                           ; preds = %start_simulation_bb137, %start_simulation_fire_delta_events.exit
  %"237" = load i32* @"'t1_pc", align 4
  %"238" = icmp eq i32 %"237", 1
  %"239" = load i32* @"'E_1", align 4
  %"240" = icmp eq i32 %"239", 1
  %or.cond.i1.i5 = and i1 %"238", %"240"
  br i1 %or.cond.i1.i5, label %start_simulation_bb139, label %start_simulation_activate_threads.exit7

start_simulation_bb139:                           ; preds = %start_simulation_bb138
  store i32 0, i32* @"'t1_st", align 4
  br label %start_simulation_activate_threads.exit7

start_simulation_activate_threads.exit7:          ; preds = %start_simulation_bb138, %start_simulation_bb139
  %"241" = load i32* @"'M_E", align 4
  %"242" = icmp eq i32 %"241", 1
  br i1 %"242", label %start_simulation_bb140, label %start_simulation_bb141

start_simulation_bb140:                           ; preds = %start_simulation_activate_threads.exit7
  store i32 2, i32* @"'M_E", align 4
  br label %start_simulation_bb141

start_simulation_bb141:                           ; preds = %start_simulation_bb140, %start_simulation_activate_threads.exit7
  %"243" = load i32* @"'T1_E", align 4
  %"244" = icmp eq i32 %"243", 1
  br i1 %"244", label %start_simulation_bb142, label %start_simulation_bb143

start_simulation_bb142:                           ; preds = %start_simulation_bb141
  store i32 2, i32* @"'T1_E", align 4
  br label %start_simulation_bb143

start_simulation_bb143:                           ; preds = %start_simulation_bb142, %start_simulation_bb141
  %"245" = load i32* @"'E_M", align 4
  %"246" = icmp eq i32 %"245", 1
  br i1 %"246", label %start_simulation_bb144, label %start_simulation_bb145

start_simulation_bb144:                           ; preds = %start_simulation_bb143
  store i32 2, i32* @"'E_M", align 4
  br label %start_simulation_bb145

start_simulation_bb145:                           ; preds = %start_simulation_bb144, %start_simulation_bb143
  %"247" = load i32* @"'E_1", align 4
  %"248" = icmp eq i32 %"247", 1
  br i1 %"248", label %start_simulation_bb146, label %start_simulation_reset_delta_events.exit

start_simulation_bb146:                           ; preds = %start_simulation_bb145
  store i32 2, i32* @"'E_1", align 4
  br label %start_simulation_reset_delta_events.exit

start_simulation_reset_delta_events.exit:         ; preds = %start_simulation_bb145, %start_simulation_bb146
  %"249" = load i32* @"'m_st", align 4
  %"250" = icmp eq i32 %"249", 0
  %"251" = load i32* @"'t1_st", align 4
  %"252" = icmp eq i32 %"251", 0
  %or.cond.i = or i1 %"250", %"252"
  %__retres1.0.i = select i1 %or.cond.i, i32 1, i32 0
  %"253" = icmp eq i32 %__retres1.0.i, 0
  br i1 %"253", label %start_simulation_bb147, label %start_simulation_reset_time_events.exit

start_simulation_bb147:                           ; preds = %start_simulation_reset_delta_events.exit
  store i32 1, i32* @"'M_E", align 4
  %"254" = load i32* @"'m_pc", align 4
  %"255" = icmp eq i32 %"254", 1
  %"256" = load i32* @"'E_M", align 4
  %"257" = icmp eq i32 %"256", 1
  %or.cond.i.i1 = and i1 %"255", %"257"
  br i1 %or.cond.i.i1, label %start_simulation_bb148, label %start_simulation_bb149

start_simulation_bb148:                           ; preds = %start_simulation_bb147
  store i32 0, i32* @"'m_st", align 4
  br label %start_simulation_bb149

start_simulation_bb149:                           ; preds = %start_simulation_bb148, %start_simulation_bb147
  %"258" = load i32* @"'t1_pc", align 4
  %"259" = icmp eq i32 %"258", 1
  %"260" = load i32* @"'E_1", align 4
  %"261" = icmp eq i32 %"260", 1
  %or.cond.i1.i = and i1 %"259", %"261"
  br i1 %or.cond.i1.i, label %start_simulation_bb150, label %start_simulation_activate_threads.exit

start_simulation_bb150:                           ; preds = %start_simulation_bb149
  store i32 0, i32* @"'t1_st", align 4
  br label %start_simulation_activate_threads.exit

start_simulation_activate_threads.exit:           ; preds = %start_simulation_bb149, %start_simulation_bb150
  %"262" = load i32* @"'M_E", align 4
  %"263" = icmp eq i32 %"262", 1
  br i1 %"263", label %start_simulation_bb151, label %start_simulation_bb152

start_simulation_bb151:                           ; preds = %start_simulation_activate_threads.exit
  store i32 2, i32* @"'M_E", align 4
  br label %start_simulation_bb152

start_simulation_bb152:                           ; preds = %start_simulation_bb151, %start_simulation_activate_threads.exit
  %"264" = load i32* @"'T1_E", align 4
  %"265" = icmp eq i32 %"264", 1
  br i1 %"265", label %start_simulation_bb153, label %start_simulation_bb154

start_simulation_bb153:                           ; preds = %start_simulation_bb152
  store i32 2, i32* @"'T1_E", align 4
  br label %start_simulation_bb154

start_simulation_bb154:                           ; preds = %start_simulation_bb153, %start_simulation_bb152
  %"266" = load i32* @"'E_M", align 4
  %"267" = icmp eq i32 %"266", 1
  br i1 %"267", label %start_simulation_bb155, label %start_simulation_bb156

start_simulation_bb155:                           ; preds = %start_simulation_bb154
  store i32 2, i32* @"'E_M", align 4
  br label %start_simulation_bb156

start_simulation_bb156:                           ; preds = %start_simulation_bb155, %start_simulation_bb154
  %"268" = load i32* @"'E_1", align 4
  %"269" = icmp eq i32 %"268", 1
  br i1 %"269", label %start_simulation_bb157, label %start_simulation_reset_time_events.exit

start_simulation_bb157:                           ; preds = %start_simulation_bb156
  store i32 2, i32* @"'E_1", align 4
  br label %start_simulation_reset_time_events.exit

start_simulation_reset_time_events.exit:          ; preds = %start_simulation_reset_delta_events.exit, %start_simulation_bb157, %start_simulation_bb156
  %"270" = load i32* @"'m_st", align 4
  %"271" = icmp eq i32 %"270", 0
  %"272" = load i32* @"'t1_st", align 4
  %"273" = icmp eq i32 %"272", 0
  %or.cond.i.i = or i1 %"271", %"273"
  %__retres2.0.i = select i1 %or.cond.i.i, i32 0, i32 1
  %"274" = icmp ne i32 %__retres2.0.i, 0
  br i1 %"274", label %start_simulation_bb158, label %start_simulation_reset_delta_events.exit17

start_simulation_bb158:                           ; preds = %start_simulation_reset_time_events.exit
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb159:
  store i32 1, i32* @"'m_i", align 4
  store i32 1, i32* @"'t1_i", align 4
  %"275" = load i32* @"'m_i", align 4
  %"276" = icmp eq i32 %"275", 1
  br i1 %"276", label %main_bb160, label %main_bb161

main_bb160:                                       ; preds = %main_bb159
  store i32 0, i32* @"'m_st", align 4
  br label %main_bb162

main_bb161:                                       ; preds = %main_bb159
  store i32 2, i32* @"'m_st", align 4
  br label %main_bb162

main_bb162:                                       ; preds = %main_bb161, %main_bb160
  %"277" = load i32* @"'t1_i", align 4
  %"278" = icmp eq i32 %"277", 1
  br i1 %"278", label %main_bb163, label %main_bb164

main_bb163:                                       ; preds = %main_bb162
  store i32 0, i32* @"'t1_st", align 4
  br label %main_init_threads.exit.i

main_bb164:                                       ; preds = %main_bb162
  store i32 2, i32* @"'t1_st", align 4
  br label %main_init_threads.exit.i

main_init_threads.exit.i:                         ; preds = %main_bb164, %main_bb163
  %"279" = load i32* @"'M_E", align 4
  %"280" = icmp eq i32 %"279", 0
  br i1 %"280", label %main_bb165, label %main_bb166

main_bb165:                                       ; preds = %main_init_threads.exit.i
  store i32 1, i32* @"'M_E", align 4
  br label %main_bb166

main_bb166:                                       ; preds = %main_bb165, %main_init_threads.exit.i
  %"281" = load i32* @"'T1_E", align 4
  %"282" = icmp eq i32 %"281", 0
  br i1 %"282", label %main_bb167, label %main_bb168

main_bb167:                                       ; preds = %main_bb166
  store i32 1, i32* @"'T1_E", align 4
  br label %main_bb168

main_bb168:                                       ; preds = %main_bb167, %main_bb166
  %"283" = load i32* @"'E_M", align 4
  %"284" = icmp eq i32 %"283", 0
  br i1 %"284", label %main_bb169, label %main_bb170

main_bb169:                                       ; preds = %main_bb168
  store i32 1, i32* @"'E_M", align 4
  br label %main_bb170

main_bb170:                                       ; preds = %main_bb169, %main_bb168
  %"285" = load i32* @"'E_1", align 4
  %"286" = icmp eq i32 %"285", 0
  br i1 %"286", label %main_bb171, label %main_fire_delta_events.exit11.i

main_bb171:                                       ; preds = %main_bb170
  store i32 1, i32* @"'E_1", align 4
  br label %main_fire_delta_events.exit11.i

main_fire_delta_events.exit11.i:                  ; preds = %main_bb171, %main_bb170
  %"287" = load i32* @"'m_pc", align 4
  %"288" = icmp eq i32 %"287", 1
  %"289" = load i32* @"'E_M", align 4
  %"290" = icmp eq i32 %"289", 1
  %or.cond.i.i12.i = and i1 %"288", %"290"
  br i1 %or.cond.i.i12.i, label %main_bb172, label %main_bb173

main_bb172:                                       ; preds = %main_fire_delta_events.exit11.i
  store i32 0, i32* @"'m_st", align 4
  br label %main_bb173

main_bb173:                                       ; preds = %main_bb172, %main_fire_delta_events.exit11.i
  %"291" = load i32* @"'t1_pc", align 4
  %"292" = icmp eq i32 %"291", 1
  %"293" = load i32* @"'E_1", align 4
  %"294" = icmp eq i32 %"293", 1
  %or.cond.i1.i14.i = and i1 %"292", %"294"
  br i1 %or.cond.i1.i14.i, label %main_bb174, label %main_activate_threads.exit16.i

main_bb174:                                       ; preds = %main_bb173
  store i32 0, i32* @"'t1_st", align 4
  br label %main_activate_threads.exit16.i

main_activate_threads.exit16.i:                   ; preds = %main_bb174, %main_bb173
  %"295" = load i32* @"'M_E", align 4
  %"296" = icmp eq i32 %"295", 1
  br i1 %"296", label %main_bb175, label %main_bb176

main_bb175:                                       ; preds = %main_activate_threads.exit16.i
  store i32 2, i32* @"'M_E", align 4
  br label %main_bb176

main_bb176:                                       ; preds = %main_bb175, %main_activate_threads.exit16.i
  %"297" = load i32* @"'T1_E", align 4
  %"298" = icmp eq i32 %"297", 1
  br i1 %"298", label %main_bb177, label %main_bb178

main_bb177:                                       ; preds = %main_bb176
  store i32 2, i32* @"'T1_E", align 4
  br label %main_bb178

main_bb178:                                       ; preds = %main_bb177, %main_bb176
  %"299" = load i32* @"'E_M", align 4
  %"300" = icmp eq i32 %"299", 1
  br i1 %"300", label %main_bb179, label %main_bb180

main_bb179:                                       ; preds = %main_bb178
  store i32 2, i32* @"'E_M", align 4
  br label %main_bb180

main_bb180:                                       ; preds = %main_bb179, %main_bb178
  %"301" = load i32* @"'E_1", align 4
  %"302" = icmp eq i32 %"301", 1
  br i1 %"302", label %main_bb181, label %main_reset_delta_events.exit17.i

main_bb181:                                       ; preds = %main_bb180
  store i32 2, i32* @"'E_1", align 4
  br label %main_reset_delta_events.exit17.i

main_reset_delta_events.exit17.i:                 ; preds = %main_reset_time_events.exit.i, %main_transmit1.exit.i.i, %main_bb194, %main_bb193, %main_bb181, %main_bb180
  %"303" = load i32* @"'m_st", align 4
  %"304" = icmp eq i32 %"303", 0
  %"305" = load i32* @"'t1_st", align 4
  %"306" = icmp eq i32 %"305", 0
  %or.cond.i.i8.i = or i1 %"304", %"306"
  br i1 %or.cond.i.i8.i, label %main_bb182, label %main_eval.exit.i

main_bb182:                                       ; preds = %main_reset_delta_events.exit17.i
  %"307" = load i32* @"'m_st", align 4
  %"308" = icmp eq i32 %"307", 0
  br i1 %"308", label %main_bb183, label %main_bb193

main_bb183:                                       ; preds = %main_bb182
  %"309" = call i32 (...)* @__VERIFIER_nondet_int() #5
  %"310" = icmp ne i32 %"309", 0
  br i1 %"310", label %main_bb184, label %main_bb193

main_bb184:                                       ; preds = %main_bb183
  store i32 1, i32* @"'m_st", align 4
  %"311" = call i32 @__kittel_nondef.0() #5
  %"312" = load i32* @"'m_pc", align 4
  %"313" = icmp ne i32 %"312", 0
  %"314" = load i32* @"'m_pc", align 4
  %"315" = icmp eq i32 %"314", 1
  %or.cond.i2.i.i = and i1 %"313", %"315"
  br i1 %or.cond.i2.i.i, label %main_bb185, label %main_bb189

main_bb185:                                       ; preds = %main_bb184
  %"316" = load i32* @"'token", align 4
  %"317" = load i32* @"'local", align 4
  %"318" = add nsw i32 %"317", 1
  %"319" = icmp ne i32 %"316", %"318"
  br i1 %"319", label %main_bb186, label %main_bb187

main_bb186:                                       ; preds = %main_bb185
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_bb187:                                       ; preds = %main_bb185
  %"320" = icmp sle i32 %"311", 5
  %"321" = icmp sge i32 %"311", 5
  %or.cond3.i.i.i = and i1 %"320", %"321"
  %"322" = icmp eq i32 %"311", 5
  %or.cond4.i.i.i = and i1 %or.cond3.i.i.i, %"322"
  br i1 %or.cond4.i.i.i, label %main_bb188, label %main_bb189

main_bb188:                                       ; preds = %main_bb187
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_bb189:                                       ; preds = %main_bb187, %main_bb184
  %"323" = call i32 (...)* @__VERIFIER_nondet_int() #5
  store i32 %"323", i32* @"'token", align 4
  %"324" = load i32* @"'token", align 4
  store i32 %"324", i32* @"'local", align 4
  store i32 1, i32* @"'E_1", align 4
  %"325" = load i32* @"'m_pc", align 4
  %"326" = icmp eq i32 %"325", 1
  %"327" = load i32* @"'E_M", align 4
  %"328" = icmp eq i32 %"327", 1
  %or.cond.i.i.i.i3.i.i = and i1 %"326", %"328"
  br i1 %or.cond.i.i.i.i3.i.i, label %main_bb190, label %main_bb191

main_bb190:                                       ; preds = %main_bb189
  store i32 0, i32* @"'m_st", align 4
  br label %main_bb191

main_bb191:                                       ; preds = %main_bb190, %main_bb189
  %"329" = load i32* @"'t1_pc", align 4
  %"330" = icmp eq i32 %"329", 1
  %"331" = load i32* @"'E_1", align 4
  %"332" = icmp eq i32 %"331", 1
  %or.cond.i1.i.i.i4.i.i = and i1 %"330", %"332"
  br i1 %or.cond.i1.i.i.i4.i.i, label %main_bb192, label %main_master.exit.i.i

main_bb192:                                       ; preds = %main_bb191
  store i32 0, i32* @"'t1_st", align 4
  br label %main_master.exit.i.i

main_master.exit.i.i:                             ; preds = %main_bb192, %main_bb191
  store i32 2, i32* @"'E_1", align 4
  store i32 1, i32* @"'m_pc", align 4
  store i32 2, i32* @"'m_st", align 4
  br label %main_bb193

main_bb193:                                       ; preds = %main_master.exit.i.i, %main_bb183, %main_bb182
  %"333" = load i32* @"'t1_st", align 4
  %"334" = icmp eq i32 %"333", 0
  br i1 %"334", label %main_bb194, label %main_reset_delta_events.exit17.i

main_bb194:                                       ; preds = %main_bb193
  %"335" = call i32 (...)* @__VERIFIER_nondet_int() #5
  %"336" = icmp ne i32 %"335", 0
  br i1 %"336", label %main_bb195, label %main_reset_delta_events.exit17.i

main_bb195:                                       ; preds = %main_bb194
  store i32 1, i32* @"'t1_st", align 4
  %"337" = load i32* @"'t1_pc", align 4
  %"338" = icmp ne i32 %"337", 0
  %"339" = load i32* @"'t1_pc", align 4
  %"340" = icmp eq i32 %"339", 1
  %or.cond.i1.i10.i = and i1 %"338", %"340"
  br i1 %or.cond.i1.i10.i, label %main_bb196, label %main_transmit1.exit.i.i

main_bb196:                                       ; preds = %main_bb195
  %"341" = load i32* @"'token", align 4
  %"342" = add nsw i32 %"341", 1
  store i32 %"342", i32* @"'token", align 4
  store i32 1, i32* @"'E_M", align 4
  %"343" = load i32* @"'m_pc", align 4
  %"344" = icmp eq i32 %"343", 1
  %"345" = load i32* @"'E_M", align 4
  %"346" = icmp eq i32 %"345", 1
  %or.cond.i.i.i.i.i.i = and i1 %"344", %"346"
  br i1 %or.cond.i.i.i.i.i.i, label %main_bb197, label %main_bb198

main_bb197:                                       ; preds = %main_bb196
  store i32 0, i32* @"'m_st", align 4
  br label %main_bb198

main_bb198:                                       ; preds = %main_bb197, %main_bb196
  %"347" = load i32* @"'t1_pc", align 4
  %"348" = icmp eq i32 %"347", 1
  %"349" = load i32* @"'E_1", align 4
  %"350" = icmp eq i32 %"349", 1
  %or.cond.i1.i.i.i.i.i = and i1 %"348", %"350"
  br i1 %or.cond.i1.i.i.i.i.i, label %main_bb199, label %main_immediate_notify.exit.i.i.i

main_bb199:                                       ; preds = %main_bb198
  store i32 0, i32* @"'t1_st", align 4
  br label %main_immediate_notify.exit.i.i.i

main_immediate_notify.exit.i.i.i:                 ; preds = %main_bb199, %main_bb198
  store i32 2, i32* @"'E_M", align 4
  br label %main_transmit1.exit.i.i

main_transmit1.exit.i.i:                          ; preds = %main_immediate_notify.exit.i.i.i, %main_bb195
  store i32 1, i32* @"'t1_pc", align 4
  store i32 2, i32* @"'t1_st", align 4
  br label %main_reset_delta_events.exit17.i

main_eval.exit.i:                                 ; preds = %main_reset_delta_events.exit17.i
  %"351" = load i32* @"'M_E", align 4
  %"352" = icmp eq i32 %"351", 0
  br i1 %"352", label %main_bb200, label %main_bb201

main_bb200:                                       ; preds = %main_eval.exit.i
  store i32 1, i32* @"'M_E", align 4
  br label %main_bb201

main_bb201:                                       ; preds = %main_bb200, %main_eval.exit.i
  %"353" = load i32* @"'T1_E", align 4
  %"354" = icmp eq i32 %"353", 0
  br i1 %"354", label %main_bb202, label %main_bb203

main_bb202:                                       ; preds = %main_bb201
  store i32 1, i32* @"'T1_E", align 4
  br label %main_bb203

main_bb203:                                       ; preds = %main_bb202, %main_bb201
  %"355" = load i32* @"'E_M", align 4
  %"356" = icmp eq i32 %"355", 0
  br i1 %"356", label %main_bb204, label %main_bb205

main_bb204:                                       ; preds = %main_bb203
  store i32 1, i32* @"'E_M", align 4
  br label %main_bb205

main_bb205:                                       ; preds = %main_bb204, %main_bb203
  %"357" = load i32* @"'E_1", align 4
  %"358" = icmp eq i32 %"357", 0
  br i1 %"358", label %main_bb206, label %main_fire_delta_events.exit.i

main_bb206:                                       ; preds = %main_bb205
  store i32 1, i32* @"'E_1", align 4
  br label %main_fire_delta_events.exit.i

main_fire_delta_events.exit.i:                    ; preds = %main_bb206, %main_bb205
  %"359" = load i32* @"'m_pc", align 4
  %"360" = icmp eq i32 %"359", 1
  %"361" = load i32* @"'E_M", align 4
  %"362" = icmp eq i32 %"361", 1
  %or.cond.i.i3.i = and i1 %"360", %"362"
  br i1 %or.cond.i.i3.i, label %main_bb207, label %main_bb208

main_bb207:                                       ; preds = %main_fire_delta_events.exit.i
  store i32 0, i32* @"'m_st", align 4
  br label %main_bb208

main_bb208:                                       ; preds = %main_bb207, %main_fire_delta_events.exit.i
  %"363" = load i32* @"'t1_pc", align 4
  %"364" = icmp eq i32 %"363", 1
  %"365" = load i32* @"'E_1", align 4
  %"366" = icmp eq i32 %"365", 1
  %or.cond.i1.i5.i = and i1 %"364", %"366"
  br i1 %or.cond.i1.i5.i, label %main_bb209, label %main_activate_threads.exit7.i

main_bb209:                                       ; preds = %main_bb208
  store i32 0, i32* @"'t1_st", align 4
  br label %main_activate_threads.exit7.i

main_activate_threads.exit7.i:                    ; preds = %main_bb209, %main_bb208
  %"367" = load i32* @"'M_E", align 4
  %"368" = icmp eq i32 %"367", 1
  br i1 %"368", label %main_bb210, label %main_bb211

main_bb210:                                       ; preds = %main_activate_threads.exit7.i
  store i32 2, i32* @"'M_E", align 4
  br label %main_bb211

main_bb211:                                       ; preds = %main_bb210, %main_activate_threads.exit7.i
  %"369" = load i32* @"'T1_E", align 4
  %"370" = icmp eq i32 %"369", 1
  br i1 %"370", label %main_bb212, label %main_bb213

main_bb212:                                       ; preds = %main_bb211
  store i32 2, i32* @"'T1_E", align 4
  br label %main_bb213

main_bb213:                                       ; preds = %main_bb212, %main_bb211
  %"371" = load i32* @"'E_M", align 4
  %"372" = icmp eq i32 %"371", 1
  br i1 %"372", label %main_bb214, label %main_bb215

main_bb214:                                       ; preds = %main_bb213
  store i32 2, i32* @"'E_M", align 4
  br label %main_bb215

main_bb215:                                       ; preds = %main_bb214, %main_bb213
  %"373" = load i32* @"'E_1", align 4
  %"374" = icmp eq i32 %"373", 1
  br i1 %"374", label %main_bb216, label %main_reset_delta_events.exit.i

main_bb216:                                       ; preds = %main_bb215
  store i32 2, i32* @"'E_1", align 4
  br label %main_reset_delta_events.exit.i

main_reset_delta_events.exit.i:                   ; preds = %main_bb216, %main_bb215
  %"375" = load i32* @"'m_st", align 4
  %"376" = icmp eq i32 %"375", 0
  %"377" = load i32* @"'t1_st", align 4
  %"378" = icmp eq i32 %"377", 0
  %or.cond.i.i = or i1 %"376", %"378"
  %__retres1.0.i.i = select i1 %or.cond.i.i, i32 1, i32 0
  %"379" = icmp eq i32 %__retres1.0.i.i, 0
  br i1 %"379", label %main_bb217, label %main_reset_time_events.exit.i

main_bb217:                                       ; preds = %main_reset_delta_events.exit.i
  store i32 1, i32* @"'M_E", align 4
  %"380" = load i32* @"'m_pc", align 4
  %"381" = icmp eq i32 %"380", 1
  %"382" = load i32* @"'E_M", align 4
  %"383" = icmp eq i32 %"382", 1
  %or.cond.i.i1.i = and i1 %"381", %"383"
  br i1 %or.cond.i.i1.i, label %main_bb218, label %main_bb219

main_bb218:                                       ; preds = %main_bb217
  store i32 0, i32* @"'m_st", align 4
  br label %main_bb219

main_bb219:                                       ; preds = %main_bb218, %main_bb217
  %"384" = load i32* @"'t1_pc", align 4
  %"385" = icmp eq i32 %"384", 1
  %"386" = load i32* @"'E_1", align 4
  %"387" = icmp eq i32 %"386", 1
  %or.cond.i1.i.i = and i1 %"385", %"387"
  br i1 %or.cond.i1.i.i, label %main_bb220, label %main_activate_threads.exit.i

main_bb220:                                       ; preds = %main_bb219
  store i32 0, i32* @"'t1_st", align 4
  br label %main_activate_threads.exit.i

main_activate_threads.exit.i:                     ; preds = %main_bb220, %main_bb219
  %"388" = load i32* @"'M_E", align 4
  %"389" = icmp eq i32 %"388", 1
  br i1 %"389", label %main_bb221, label %main_bb222

main_bb221:                                       ; preds = %main_activate_threads.exit.i
  store i32 2, i32* @"'M_E", align 4
  br label %main_bb222

main_bb222:                                       ; preds = %main_bb221, %main_activate_threads.exit.i
  %"390" = load i32* @"'T1_E", align 4
  %"391" = icmp eq i32 %"390", 1
  br i1 %"391", label %main_bb223, label %main_bb224

main_bb223:                                       ; preds = %main_bb222
  store i32 2, i32* @"'T1_E", align 4
  br label %main_bb224

main_bb224:                                       ; preds = %main_bb223, %main_bb222
  %"392" = load i32* @"'E_M", align 4
  %"393" = icmp eq i32 %"392", 1
  br i1 %"393", label %main_bb225, label %main_bb226

main_bb225:                                       ; preds = %main_bb224
  store i32 2, i32* @"'E_M", align 4
  br label %main_bb226

main_bb226:                                       ; preds = %main_bb225, %main_bb224
  %"394" = load i32* @"'E_1", align 4
  %"395" = icmp eq i32 %"394", 1
  br i1 %"395", label %main_bb227, label %main_reset_time_events.exit.i

main_bb227:                                       ; preds = %main_bb226
  store i32 2, i32* @"'E_1", align 4
  br label %main_reset_time_events.exit.i

main_reset_time_events.exit.i:                    ; preds = %main_bb227, %main_bb226, %main_reset_delta_events.exit.i
  %"396" = load i32* @"'m_st", align 4
  %"397" = icmp eq i32 %"396", 0
  %"398" = load i32* @"'t1_st", align 4
  %"399" = icmp eq i32 %"398", 0
  %or.cond.i.i.i = or i1 %"397", %"399"
  %__retres2.0.i.i = select i1 %or.cond.i.i.i, i32 0, i32 1
  %"400" = icmp ne i32 %__retres2.0.i.i, 0
  br i1 %"400", label %main_start_simulation.exit, label %main_reset_delta_events.exit17.i

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

