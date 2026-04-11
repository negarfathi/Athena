; ModuleID = 'Benchmarks/TermCOMP/C/SV-COMP_Mixed_Categories/transmitter.01_false-unreach-call_false-termination.cil/transmitter.01_false-unreach-call_false-termination.cil.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"'m_pc" = global i32 0, align 4
@"'t1_pc" = global i32 0, align 4
@"'M_E" = global i32 2, align 4
@"'T1_E" = global i32 2, align 4
@"'E_1" = global i32 2, align 4
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
  %"0" = load i32* @"'m_pc", align 4
  %"1" = icmp ne i32 %"0", 0
  %"2" = load i32* @"'m_pc", align 4
  %"3" = icmp eq i32 %"2", 1
  %or.cond = and i1 %"1", %"3"
  br i1 %or.cond, label %master_bb6, label %master_bb2

master_bb2:                                       ; preds = %master_bb1
  store i32 1, i32* @"'E_1", align 4
  %"4" = load i32* @"'m_pc", align 4
  %"5" = icmp eq i32 %"4", 1
  %"6" = load i32* @"'M_E", align 4
  %"7" = icmp eq i32 %"6", 1
  %or.cond.i.i.i = and i1 %"5", %"7"
  br i1 %or.cond.i.i.i, label %master_bb3, label %master_bb4

master_bb3:                                       ; preds = %master_bb2
  store i32 0, i32* @"'m_st", align 4
  br label %master_bb4

master_bb4:                                       ; preds = %master_bb3, %master_bb2
  %"8" = load i32* @"'t1_pc", align 4
  %"9" = icmp eq i32 %"8", 1
  %"10" = load i32* @"'E_1", align 4
  %"11" = icmp eq i32 %"10", 1
  %or.cond.i1.i.i = and i1 %"9", %"11"
  br i1 %or.cond.i1.i.i, label %master_bb5, label %master_immediate_notify.exit

master_bb5:                                       ; preds = %master_bb4
  store i32 0, i32* @"'t1_st", align 4
  br label %master_immediate_notify.exit

master_immediate_notify.exit:                     ; preds = %master_bb4, %master_bb5
  store i32 2, i32* @"'E_1", align 4
  br label %master_bb6

master_bb6:                                       ; preds = %master_bb1, %master_immediate_notify.exit
  store i32 1, i32* @"'m_pc", align 4
  store i32 2, i32* @"'m_st", align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @immediate_notify() #0 {
immediate_notify_bb7:
  %"12" = load i32* @"'m_pc", align 4
  %"13" = icmp eq i32 %"12", 1
  %"14" = load i32* @"'M_E", align 4
  %"15" = icmp eq i32 %"14", 1
  %or.cond.i.i = and i1 %"13", %"15"
  br i1 %or.cond.i.i, label %immediate_notify_bb8, label %immediate_notify_bb9

immediate_notify_bb8:                             ; preds = %immediate_notify_bb7
  store i32 0, i32* @"'m_st", align 4
  br label %immediate_notify_bb9

immediate_notify_bb9:                             ; preds = %immediate_notify_bb8, %immediate_notify_bb7
  %"16" = load i32* @"'t1_pc", align 4
  %"17" = icmp eq i32 %"16", 1
  %"18" = load i32* @"'E_1", align 4
  %"19" = icmp eq i32 %"18", 1
  %or.cond.i1.i = and i1 %"17", %"19"
  br i1 %or.cond.i1.i, label %immediate_notify_bb10, label %immediate_notify_activate_threads.exit

immediate_notify_bb10:                            ; preds = %immediate_notify_bb9
  store i32 0, i32* @"'t1_st", align 4
  br label %immediate_notify_activate_threads.exit

immediate_notify_activate_threads.exit:           ; preds = %immediate_notify_bb9, %immediate_notify_bb10
  ret void
}

; Function Attrs: nounwind uwtable
define void @transmit1() #0 {
transmit1_bb11:
  %"20" = load i32* @"'t1_pc", align 4
  %"21" = icmp ne i32 %"20", 0
  %"22" = load i32* @"'t1_pc", align 4
  %"23" = icmp eq i32 %"22", 1
  %or.cond = and i1 %"21", %"23"
  br i1 %or.cond, label %transmit1_bb12, label %transmit1_bb13

transmit1_bb12:                                   ; preds = %transmit1_bb11
  call void (...)* @__VERIFIER_error() #4
  unreachable

transmit1_bb13:                                   ; preds = %transmit1_bb11
  store i32 1, i32* @"'t1_pc", align 4
  store i32 2, i32* @"'t1_st", align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @is_master_triggered() #0 {
is_master_triggered_bb14:
  %"24" = load i32* @"'m_pc", align 4
  %"25" = icmp eq i32 %"24", 1
  %"26" = load i32* @"'M_E", align 4
  %"27" = icmp eq i32 %"26", 1
  %or.cond = and i1 %"25", %"27"
  %__retres1.0 = select i1 %or.cond, i32 1, i32 0
  ret i32 %__retres1.0
}

; Function Attrs: nounwind uwtable
define i32 @is_transmit1_triggered() #0 {
is_transmit1_triggered_bb15:
  %"28" = load i32* @"'t1_pc", align 4
  %"29" = icmp eq i32 %"28", 1
  %"30" = load i32* @"'E_1", align 4
  %"31" = icmp eq i32 %"30", 1
  %or.cond = and i1 %"29", %"31"
  %__retres1.0 = select i1 %or.cond, i32 1, i32 0
  ret i32 %__retres1.0
}

; Function Attrs: nounwind uwtable
define void @update_channels() #0 {
update_channels_bb16:
  ret void
}

; Function Attrs: nounwind uwtable
define void @init_threads() #0 {
init_threads_bb17:
  %"32" = load i32* @"'m_i", align 4
  %"33" = icmp eq i32 %"32", 1
  br i1 %"33", label %init_threads_bb18, label %init_threads_bb19

init_threads_bb18:                                ; preds = %init_threads_bb17
  store i32 0, i32* @"'m_st", align 4
  br label %init_threads_bb20

init_threads_bb19:                                ; preds = %init_threads_bb17
  store i32 2, i32* @"'m_st", align 4
  br label %init_threads_bb20

init_threads_bb20:                                ; preds = %init_threads_bb19, %init_threads_bb18
  %"34" = load i32* @"'t1_i", align 4
  %"35" = icmp eq i32 %"34", 1
  br i1 %"35", label %init_threads_bb21, label %init_threads_bb22

init_threads_bb21:                                ; preds = %init_threads_bb20
  store i32 0, i32* @"'t1_st", align 4
  br label %init_threads_bb23

init_threads_bb22:                                ; preds = %init_threads_bb20
  store i32 2, i32* @"'t1_st", align 4
  br label %init_threads_bb23

init_threads_bb23:                                ; preds = %init_threads_bb22, %init_threads_bb21
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @exists_runnable_thread() #0 {
exists_runnable_thread_bb24:
  %"36" = load i32* @"'m_st", align 4
  %"37" = icmp eq i32 %"36", 0
  %"38" = load i32* @"'t1_st", align 4
  %"39" = icmp eq i32 %"38", 0
  %or.cond = or i1 %"37", %"39"
  %__retres1.0 = select i1 %or.cond, i32 1, i32 0
  ret i32 %__retres1.0
}

; Function Attrs: nounwind uwtable
define void @eval() #0 {
eval_bb25:
  br label %eval_bb26

eval_bb26:                                        ; preds = %eval_bb35, %eval_transmit1.exit, %eval_bb34, %eval_bb25
  %"40" = load i32* @"'m_st", align 4
  %"41" = icmp eq i32 %"40", 0
  %"42" = load i32* @"'t1_st", align 4
  %"43" = icmp eq i32 %"42", 0
  %or.cond.i = or i1 %"41", %"43"
  %__retres1.0.i = select i1 %or.cond.i, i32 1, i32 0
  %"44" = icmp ne i32 %__retres1.0.i, 0
  br i1 %"44", label %eval_bb27, label %eval_bb38

eval_bb27:                                        ; preds = %eval_bb26
  %"45" = load i32* @"'m_st", align 4
  %"46" = icmp eq i32 %"45", 0
  br i1 %"46", label %eval_bb28, label %eval_bb34

eval_bb28:                                        ; preds = %eval_bb27
  %"47" = call i32 (...)* @__VERIFIER_nondet_int()
  %"48" = icmp ne i32 %"47", 0
  br i1 %"48", label %eval_bb29, label %eval_bb34

eval_bb29:                                        ; preds = %eval_bb28
  store i32 1, i32* @"'m_st", align 4
  %"49" = load i32* @"'m_pc", align 4
  %"50" = icmp ne i32 %"49", 0
  %"51" = load i32* @"'m_pc", align 4
  %"52" = icmp eq i32 %"51", 1
  %or.cond.i2 = and i1 %"50", %"52"
  br i1 %or.cond.i2, label %eval_master.exit, label %eval_bb30

eval_bb30:                                        ; preds = %eval_bb29
  store i32 1, i32* @"'E_1", align 4
  %"53" = load i32* @"'m_pc", align 4
  %"54" = icmp eq i32 %"53", 1
  %"55" = load i32* @"'M_E", align 4
  %"56" = icmp eq i32 %"55", 1
  %or.cond.i.i.i.i = and i1 %"54", %"56"
  br i1 %or.cond.i.i.i.i, label %eval_bb31, label %eval_bb32

eval_bb31:                                        ; preds = %eval_bb30
  store i32 0, i32* @"'m_st", align 4
  br label %eval_bb32

eval_bb32:                                        ; preds = %eval_bb31, %eval_bb30
  %"57" = load i32* @"'t1_pc", align 4
  %"58" = icmp eq i32 %"57", 1
  %"59" = load i32* @"'E_1", align 4
  %"60" = icmp eq i32 %"59", 1
  %or.cond.i1.i.i.i = and i1 %"58", %"60"
  br i1 %or.cond.i1.i.i.i, label %eval_bb33, label %eval_immediate_notify.exit.i

eval_bb33:                                        ; preds = %eval_bb32
  store i32 0, i32* @"'t1_st", align 4
  br label %eval_immediate_notify.exit.i

eval_immediate_notify.exit.i:                     ; preds = %eval_bb33, %eval_bb32
  store i32 2, i32* @"'E_1", align 4
  br label %eval_master.exit

eval_master.exit:                                 ; preds = %eval_bb29, %eval_immediate_notify.exit.i
  store i32 1, i32* @"'m_pc", align 4
  store i32 2, i32* @"'m_st", align 4
  br label %eval_bb34

eval_bb34:                                        ; preds = %eval_bb27, %eval_master.exit, %eval_bb28
  %"61" = load i32* @"'t1_st", align 4
  %"62" = icmp eq i32 %"61", 0
  br i1 %"62", label %eval_bb35, label %eval_bb26

eval_bb35:                                        ; preds = %eval_bb34
  %"63" = call i32 (...)* @__VERIFIER_nondet_int()
  %"64" = icmp ne i32 %"63", 0
  br i1 %"64", label %eval_bb36, label %eval_bb26

eval_bb36:                                        ; preds = %eval_bb35
  store i32 1, i32* @"'t1_st", align 4
  %"65" = load i32* @"'t1_pc", align 4
  %"66" = icmp ne i32 %"65", 0
  %"67" = load i32* @"'t1_pc", align 4
  %"68" = icmp eq i32 %"67", 1
  %or.cond.i1 = and i1 %"66", %"68"
  br i1 %or.cond.i1, label %eval_bb37, label %eval_transmit1.exit

eval_bb37:                                        ; preds = %eval_bb36
  call void (...)* @__VERIFIER_error() #4
  unreachable

eval_transmit1.exit:                              ; preds = %eval_bb36
  store i32 1, i32* @"'t1_pc", align 4
  store i32 2, i32* @"'t1_st", align 4
  br label %eval_bb26

eval_bb38:                                        ; preds = %eval_bb26
  ret void
}

declare i32 @__VERIFIER_nondet_int(...) #2

; Function Attrs: nounwind uwtable
define void @fire_delta_events() #0 {
fire_delta_events_bb39:
  %"69" = load i32* @"'M_E", align 4
  %"70" = icmp eq i32 %"69", 0
  br i1 %"70", label %fire_delta_events_bb40, label %fire_delta_events_bb41

fire_delta_events_bb40:                           ; preds = %fire_delta_events_bb39
  store i32 1, i32* @"'M_E", align 4
  br label %fire_delta_events_bb41

fire_delta_events_bb41:                           ; preds = %fire_delta_events_bb39, %fire_delta_events_bb40
  %"71" = load i32* @"'T1_E", align 4
  %"72" = icmp eq i32 %"71", 0
  br i1 %"72", label %fire_delta_events_bb42, label %fire_delta_events_bb43

fire_delta_events_bb42:                           ; preds = %fire_delta_events_bb41
  store i32 1, i32* @"'T1_E", align 4
  br label %fire_delta_events_bb43

fire_delta_events_bb43:                           ; preds = %fire_delta_events_bb41, %fire_delta_events_bb42
  %"73" = load i32* @"'E_1", align 4
  %"74" = icmp eq i32 %"73", 0
  br i1 %"74", label %fire_delta_events_bb44, label %fire_delta_events_bb45

fire_delta_events_bb44:                           ; preds = %fire_delta_events_bb43
  store i32 1, i32* @"'E_1", align 4
  br label %fire_delta_events_bb45

fire_delta_events_bb45:                           ; preds = %fire_delta_events_bb43, %fire_delta_events_bb44
  ret void
}

; Function Attrs: nounwind uwtable
define void @reset_delta_events() #0 {
reset_delta_events_bb46:
  %"75" = load i32* @"'M_E", align 4
  %"76" = icmp eq i32 %"75", 1
  br i1 %"76", label %reset_delta_events_bb47, label %reset_delta_events_bb48

reset_delta_events_bb47:                          ; preds = %reset_delta_events_bb46
  store i32 2, i32* @"'M_E", align 4
  br label %reset_delta_events_bb48

reset_delta_events_bb48:                          ; preds = %reset_delta_events_bb46, %reset_delta_events_bb47
  %"77" = load i32* @"'T1_E", align 4
  %"78" = icmp eq i32 %"77", 1
  br i1 %"78", label %reset_delta_events_bb49, label %reset_delta_events_bb50

reset_delta_events_bb49:                          ; preds = %reset_delta_events_bb48
  store i32 2, i32* @"'T1_E", align 4
  br label %reset_delta_events_bb50

reset_delta_events_bb50:                          ; preds = %reset_delta_events_bb48, %reset_delta_events_bb49
  %"79" = load i32* @"'E_1", align 4
  %"80" = icmp eq i32 %"79", 1
  br i1 %"80", label %reset_delta_events_bb51, label %reset_delta_events_bb52

reset_delta_events_bb51:                          ; preds = %reset_delta_events_bb50
  store i32 2, i32* @"'E_1", align 4
  br label %reset_delta_events_bb52

reset_delta_events_bb52:                          ; preds = %reset_delta_events_bb50, %reset_delta_events_bb51
  ret void
}

; Function Attrs: nounwind uwtable
define void @activate_threads() #0 {
activate_threads_bb53:
  %"81" = load i32* @"'m_pc", align 4
  %"82" = icmp eq i32 %"81", 1
  %"83" = load i32* @"'M_E", align 4
  %"84" = icmp eq i32 %"83", 1
  %or.cond.i = and i1 %"82", %"84"
  %__retres1.0.i = select i1 %or.cond.i, i32 1, i32 0
  %"85" = icmp ne i32 %__retres1.0.i, 0
  br i1 %"85", label %activate_threads_bb54, label %activate_threads_bb55

activate_threads_bb54:                            ; preds = %activate_threads_bb53
  store i32 0, i32* @"'m_st", align 4
  br label %activate_threads_bb55

activate_threads_bb55:                            ; preds = %activate_threads_bb53, %activate_threads_bb54
  %"86" = load i32* @"'t1_pc", align 4
  %"87" = icmp eq i32 %"86", 1
  %"88" = load i32* @"'E_1", align 4
  %"89" = icmp eq i32 %"88", 1
  %or.cond.i1 = and i1 %"87", %"89"
  %__retres1.0.i2 = select i1 %or.cond.i1, i32 1, i32 0
  %"90" = icmp ne i32 %__retres1.0.i2, 0
  br i1 %"90", label %activate_threads_bb56, label %activate_threads_bb57

activate_threads_bb56:                            ; preds = %activate_threads_bb55
  store i32 0, i32* @"'t1_st", align 4
  br label %activate_threads_bb57

activate_threads_bb57:                            ; preds = %activate_threads_bb55, %activate_threads_bb56
  ret void
}

; Function Attrs: nounwind uwtable
define void @fire_time_events() #0 {
fire_time_events_bb58:
  store i32 1, i32* @"'M_E", align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @reset_time_events() #0 {
reset_time_events_bb59:
  %"91" = load i32* @"'M_E", align 4
  %"92" = icmp eq i32 %"91", 1
  br i1 %"92", label %reset_time_events_bb60, label %reset_time_events_bb61

reset_time_events_bb60:                           ; preds = %reset_time_events_bb59
  store i32 2, i32* @"'M_E", align 4
  br label %reset_time_events_bb61

reset_time_events_bb61:                           ; preds = %reset_time_events_bb59, %reset_time_events_bb60
  %"93" = load i32* @"'T1_E", align 4
  %"94" = icmp eq i32 %"93", 1
  br i1 %"94", label %reset_time_events_bb62, label %reset_time_events_bb63

reset_time_events_bb62:                           ; preds = %reset_time_events_bb61
  store i32 2, i32* @"'T1_E", align 4
  br label %reset_time_events_bb63

reset_time_events_bb63:                           ; preds = %reset_time_events_bb61, %reset_time_events_bb62
  %"95" = load i32* @"'E_1", align 4
  %"96" = icmp eq i32 %"95", 1
  br i1 %"96", label %reset_time_events_bb64, label %reset_time_events_bb65

reset_time_events_bb64:                           ; preds = %reset_time_events_bb63
  store i32 2, i32* @"'E_1", align 4
  br label %reset_time_events_bb65

reset_time_events_bb65:                           ; preds = %reset_time_events_bb63, %reset_time_events_bb64
  ret void
}

; Function Attrs: nounwind uwtable
define void @init_model() #0 {
init_model_bb66:
  store i32 1, i32* @"'m_i", align 4
  store i32 1, i32* @"'t1_i", align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @stop_simulation() #0 {
stop_simulation_bb67:
  %"97" = load i32* @"'m_st", align 4
  %"98" = icmp eq i32 %"97", 0
  %"99" = load i32* @"'t1_st", align 4
  %"100" = icmp eq i32 %"99", 0
  %or.cond.i = or i1 %"98", %"100"
  %__retres1.0.i = select i1 %or.cond.i, i32 1, i32 0
  %"101" = icmp ne i32 %__retres1.0.i, 0
  %__retres2.0 = select i1 %"101", i32 0, i32 1
  ret i32 %__retres2.0
}

; Function Attrs: nounwind uwtable
define void @start_simulation() #0 {
start_simulation_bb68:
  %"102" = load i32* @"'m_i", align 4
  %"103" = icmp eq i32 %"102", 1
  br i1 %"103", label %start_simulation_bb69, label %start_simulation_bb70

start_simulation_bb69:                            ; preds = %start_simulation_bb68
  store i32 0, i32* @"'m_st", align 4
  br label %start_simulation_bb71

start_simulation_bb70:                            ; preds = %start_simulation_bb68
  store i32 2, i32* @"'m_st", align 4
  br label %start_simulation_bb71

start_simulation_bb71:                            ; preds = %start_simulation_bb70, %start_simulation_bb69
  %"104" = load i32* @"'t1_i", align 4
  %"105" = icmp eq i32 %"104", 1
  br i1 %"105", label %start_simulation_bb72, label %start_simulation_bb73

start_simulation_bb72:                            ; preds = %start_simulation_bb71
  store i32 0, i32* @"'t1_st", align 4
  br label %start_simulation_init_threads.exit

start_simulation_bb73:                            ; preds = %start_simulation_bb71
  store i32 2, i32* @"'t1_st", align 4
  br label %start_simulation_init_threads.exit

start_simulation_init_threads.exit:               ; preds = %start_simulation_bb72, %start_simulation_bb73
  %"106" = load i32* @"'M_E", align 4
  %"107" = icmp eq i32 %"106", 0
  br i1 %"107", label %start_simulation_bb74, label %start_simulation_bb75

start_simulation_bb74:                            ; preds = %start_simulation_init_threads.exit
  store i32 1, i32* @"'M_E", align 4
  br label %start_simulation_bb75

start_simulation_bb75:                            ; preds = %start_simulation_bb74, %start_simulation_init_threads.exit
  %"108" = load i32* @"'T1_E", align 4
  %"109" = icmp eq i32 %"108", 0
  br i1 %"109", label %start_simulation_bb76, label %start_simulation_bb77

start_simulation_bb76:                            ; preds = %start_simulation_bb75
  store i32 1, i32* @"'T1_E", align 4
  br label %start_simulation_bb77

start_simulation_bb77:                            ; preds = %start_simulation_bb76, %start_simulation_bb75
  %"110" = load i32* @"'E_1", align 4
  %"111" = icmp eq i32 %"110", 0
  br i1 %"111", label %start_simulation_bb78, label %start_simulation_fire_delta_events.exit11

start_simulation_bb78:                            ; preds = %start_simulation_bb77
  store i32 1, i32* @"'E_1", align 4
  br label %start_simulation_fire_delta_events.exit11

start_simulation_fire_delta_events.exit11:        ; preds = %start_simulation_bb77, %start_simulation_bb78
  %"112" = load i32* @"'m_pc", align 4
  %"113" = icmp eq i32 %"112", 1
  %"114" = load i32* @"'M_E", align 4
  %"115" = icmp eq i32 %"114", 1
  %or.cond.i.i12 = and i1 %"113", %"115"
  br i1 %or.cond.i.i12, label %start_simulation_bb79, label %start_simulation_bb80

start_simulation_bb79:                            ; preds = %start_simulation_fire_delta_events.exit11
  store i32 0, i32* @"'m_st", align 4
  br label %start_simulation_bb80

start_simulation_bb80:                            ; preds = %start_simulation_bb79, %start_simulation_fire_delta_events.exit11
  %"116" = load i32* @"'t1_pc", align 4
  %"117" = icmp eq i32 %"116", 1
  %"118" = load i32* @"'E_1", align 4
  %"119" = icmp eq i32 %"118", 1
  %or.cond.i1.i14 = and i1 %"117", %"119"
  br i1 %or.cond.i1.i14, label %start_simulation_bb81, label %start_simulation_activate_threads.exit16

start_simulation_bb81:                            ; preds = %start_simulation_bb80
  store i32 0, i32* @"'t1_st", align 4
  br label %start_simulation_activate_threads.exit16

start_simulation_activate_threads.exit16:         ; preds = %start_simulation_bb80, %start_simulation_bb81
  %"120" = load i32* @"'M_E", align 4
  %"121" = icmp eq i32 %"120", 1
  br i1 %"121", label %start_simulation_bb82, label %start_simulation_bb83

start_simulation_bb82:                            ; preds = %start_simulation_activate_threads.exit16
  store i32 2, i32* @"'M_E", align 4
  br label %start_simulation_bb83

start_simulation_bb83:                            ; preds = %start_simulation_bb82, %start_simulation_activate_threads.exit16
  %"122" = load i32* @"'T1_E", align 4
  %"123" = icmp eq i32 %"122", 1
  br i1 %"123", label %start_simulation_bb84, label %start_simulation_bb85

start_simulation_bb84:                            ; preds = %start_simulation_bb83
  store i32 2, i32* @"'T1_E", align 4
  br label %start_simulation_bb85

start_simulation_bb85:                            ; preds = %start_simulation_bb84, %start_simulation_bb83
  %"124" = load i32* @"'E_1", align 4
  %"125" = icmp eq i32 %"124", 1
  br i1 %"125", label %start_simulation_bb86, label %start_simulation_reset_delta_events.exit17

start_simulation_bb86:                            ; preds = %start_simulation_bb85
  store i32 2, i32* @"'E_1", align 4
  br label %start_simulation_reset_delta_events.exit17

start_simulation_reset_delta_events.exit17:       ; preds = %start_simulation_reset_time_events.exit, %start_simulation_bb86, %start_simulation_bb85, %start_simulation_transmit1.exit.i, %start_simulation_bb95, %start_simulation_bb94
  %"126" = load i32* @"'m_st", align 4
  %"127" = icmp eq i32 %"126", 0
  %"128" = load i32* @"'t1_st", align 4
  %"129" = icmp eq i32 %"128", 0
  %or.cond.i.i8 = or i1 %"127", %"129"
  br i1 %or.cond.i.i8, label %start_simulation_bb87, label %start_simulation_eval.exit

start_simulation_bb87:                            ; preds = %start_simulation_reset_delta_events.exit17
  %"130" = load i32* @"'m_st", align 4
  %"131" = icmp eq i32 %"130", 0
  br i1 %"131", label %start_simulation_bb88, label %start_simulation_bb94

start_simulation_bb88:                            ; preds = %start_simulation_bb87
  %"132" = call i32 (...)* @__VERIFIER_nondet_int() #5
  %"133" = icmp ne i32 %"132", 0
  br i1 %"133", label %start_simulation_bb89, label %start_simulation_bb94

start_simulation_bb89:                            ; preds = %start_simulation_bb88
  store i32 1, i32* @"'m_st", align 4
  %"134" = load i32* @"'m_pc", align 4
  %"135" = icmp ne i32 %"134", 0
  %"136" = load i32* @"'m_pc", align 4
  %"137" = icmp eq i32 %"136", 1
  %or.cond.i2.i = and i1 %"135", %"137"
  br i1 %or.cond.i2.i, label %start_simulation_master.exit.i, label %start_simulation_bb90

start_simulation_bb90:                            ; preds = %start_simulation_bb89
  store i32 1, i32* @"'E_1", align 4
  %"138" = load i32* @"'m_pc", align 4
  %"139" = icmp eq i32 %"138", 1
  %"140" = load i32* @"'M_E", align 4
  %"141" = icmp eq i32 %"140", 1
  %or.cond.i.i.i.i.i = and i1 %"139", %"141"
  br i1 %or.cond.i.i.i.i.i, label %start_simulation_bb91, label %start_simulation_bb92

start_simulation_bb91:                            ; preds = %start_simulation_bb90
  store i32 0, i32* @"'m_st", align 4
  br label %start_simulation_bb92

start_simulation_bb92:                            ; preds = %start_simulation_bb91, %start_simulation_bb90
  %"142" = load i32* @"'t1_pc", align 4
  %"143" = icmp eq i32 %"142", 1
  %"144" = load i32* @"'E_1", align 4
  %"145" = icmp eq i32 %"144", 1
  %or.cond.i1.i.i.i.i = and i1 %"143", %"145"
  br i1 %or.cond.i1.i.i.i.i, label %start_simulation_bb93, label %start_simulation_immediate_notify.exit.i.i

start_simulation_bb93:                            ; preds = %start_simulation_bb92
  store i32 0, i32* @"'t1_st", align 4
  br label %start_simulation_immediate_notify.exit.i.i

start_simulation_immediate_notify.exit.i.i:       ; preds = %start_simulation_bb93, %start_simulation_bb92
  store i32 2, i32* @"'E_1", align 4
  br label %start_simulation_master.exit.i

start_simulation_master.exit.i:                   ; preds = %start_simulation_immediate_notify.exit.i.i, %start_simulation_bb89
  store i32 1, i32* @"'m_pc", align 4
  store i32 2, i32* @"'m_st", align 4
  br label %start_simulation_bb94

start_simulation_bb94:                            ; preds = %start_simulation_master.exit.i, %start_simulation_bb88, %start_simulation_bb87
  %"146" = load i32* @"'t1_st", align 4
  %"147" = icmp eq i32 %"146", 0
  br i1 %"147", label %start_simulation_bb95, label %start_simulation_reset_delta_events.exit17

start_simulation_bb95:                            ; preds = %start_simulation_bb94
  %"148" = call i32 (...)* @__VERIFIER_nondet_int() #5
  %"149" = icmp ne i32 %"148", 0
  br i1 %"149", label %start_simulation_bb96, label %start_simulation_reset_delta_events.exit17

start_simulation_bb96:                            ; preds = %start_simulation_bb95
  store i32 1, i32* @"'t1_st", align 4
  %"150" = load i32* @"'t1_pc", align 4
  %"151" = icmp ne i32 %"150", 0
  %"152" = load i32* @"'t1_pc", align 4
  %"153" = icmp eq i32 %"152", 1
  %or.cond.i1.i10 = and i1 %"151", %"153"
  br i1 %or.cond.i1.i10, label %start_simulation_bb97, label %start_simulation_transmit1.exit.i

start_simulation_bb97:                            ; preds = %start_simulation_bb96
  call void (...)* @__VERIFIER_error() #4
  unreachable

start_simulation_transmit1.exit.i:                ; preds = %start_simulation_bb96
  store i32 1, i32* @"'t1_pc", align 4
  store i32 2, i32* @"'t1_st", align 4
  br label %start_simulation_reset_delta_events.exit17

start_simulation_eval.exit:                       ; preds = %start_simulation_reset_delta_events.exit17
  %"154" = load i32* @"'M_E", align 4
  %"155" = icmp eq i32 %"154", 0
  br i1 %"155", label %start_simulation_bb98, label %start_simulation_bb99

start_simulation_bb98:                            ; preds = %start_simulation_eval.exit
  store i32 1, i32* @"'M_E", align 4
  br label %start_simulation_bb99

start_simulation_bb99:                            ; preds = %start_simulation_bb98, %start_simulation_eval.exit
  %"156" = load i32* @"'T1_E", align 4
  %"157" = icmp eq i32 %"156", 0
  br i1 %"157", label %start_simulation_bb100, label %start_simulation_bb101

start_simulation_bb100:                           ; preds = %start_simulation_bb99
  store i32 1, i32* @"'T1_E", align 4
  br label %start_simulation_bb101

start_simulation_bb101:                           ; preds = %start_simulation_bb100, %start_simulation_bb99
  %"158" = load i32* @"'E_1", align 4
  %"159" = icmp eq i32 %"158", 0
  br i1 %"159", label %start_simulation_bb102, label %start_simulation_fire_delta_events.exit

start_simulation_bb102:                           ; preds = %start_simulation_bb101
  store i32 1, i32* @"'E_1", align 4
  br label %start_simulation_fire_delta_events.exit

start_simulation_fire_delta_events.exit:          ; preds = %start_simulation_bb101, %start_simulation_bb102
  %"160" = load i32* @"'m_pc", align 4
  %"161" = icmp eq i32 %"160", 1
  %"162" = load i32* @"'M_E", align 4
  %"163" = icmp eq i32 %"162", 1
  %or.cond.i.i3 = and i1 %"161", %"163"
  br i1 %or.cond.i.i3, label %start_simulation_bb103, label %start_simulation_bb104

start_simulation_bb103:                           ; preds = %start_simulation_fire_delta_events.exit
  store i32 0, i32* @"'m_st", align 4
  br label %start_simulation_bb104

start_simulation_bb104:                           ; preds = %start_simulation_bb103, %start_simulation_fire_delta_events.exit
  %"164" = load i32* @"'t1_pc", align 4
  %"165" = icmp eq i32 %"164", 1
  %"166" = load i32* @"'E_1", align 4
  %"167" = icmp eq i32 %"166", 1
  %or.cond.i1.i5 = and i1 %"165", %"167"
  br i1 %or.cond.i1.i5, label %start_simulation_bb105, label %start_simulation_activate_threads.exit7

start_simulation_bb105:                           ; preds = %start_simulation_bb104
  store i32 0, i32* @"'t1_st", align 4
  br label %start_simulation_activate_threads.exit7

start_simulation_activate_threads.exit7:          ; preds = %start_simulation_bb104, %start_simulation_bb105
  %"168" = load i32* @"'M_E", align 4
  %"169" = icmp eq i32 %"168", 1
  br i1 %"169", label %start_simulation_bb106, label %start_simulation_bb107

start_simulation_bb106:                           ; preds = %start_simulation_activate_threads.exit7
  store i32 2, i32* @"'M_E", align 4
  br label %start_simulation_bb107

start_simulation_bb107:                           ; preds = %start_simulation_bb106, %start_simulation_activate_threads.exit7
  %"170" = load i32* @"'T1_E", align 4
  %"171" = icmp eq i32 %"170", 1
  br i1 %"171", label %start_simulation_bb108, label %start_simulation_bb109

start_simulation_bb108:                           ; preds = %start_simulation_bb107
  store i32 2, i32* @"'T1_E", align 4
  br label %start_simulation_bb109

start_simulation_bb109:                           ; preds = %start_simulation_bb108, %start_simulation_bb107
  %"172" = load i32* @"'E_1", align 4
  %"173" = icmp eq i32 %"172", 1
  br i1 %"173", label %start_simulation_bb110, label %start_simulation_reset_delta_events.exit

start_simulation_bb110:                           ; preds = %start_simulation_bb109
  store i32 2, i32* @"'E_1", align 4
  br label %start_simulation_reset_delta_events.exit

start_simulation_reset_delta_events.exit:         ; preds = %start_simulation_bb109, %start_simulation_bb110
  %"174" = load i32* @"'m_st", align 4
  %"175" = icmp eq i32 %"174", 0
  %"176" = load i32* @"'t1_st", align 4
  %"177" = icmp eq i32 %"176", 0
  %or.cond.i = or i1 %"175", %"177"
  %__retres1.0.i = select i1 %or.cond.i, i32 1, i32 0
  %"178" = icmp eq i32 %__retres1.0.i, 0
  br i1 %"178", label %start_simulation_bb111, label %start_simulation_reset_time_events.exit

start_simulation_bb111:                           ; preds = %start_simulation_reset_delta_events.exit
  store i32 1, i32* @"'M_E", align 4
  %"179" = load i32* @"'m_pc", align 4
  %"180" = icmp eq i32 %"179", 1
  %"181" = load i32* @"'M_E", align 4
  %"182" = icmp eq i32 %"181", 1
  %or.cond.i.i1 = and i1 %"180", %"182"
  br i1 %or.cond.i.i1, label %start_simulation_bb112, label %start_simulation_bb113

start_simulation_bb112:                           ; preds = %start_simulation_bb111
  store i32 0, i32* @"'m_st", align 4
  br label %start_simulation_bb113

start_simulation_bb113:                           ; preds = %start_simulation_bb112, %start_simulation_bb111
  %"183" = load i32* @"'t1_pc", align 4
  %"184" = icmp eq i32 %"183", 1
  %"185" = load i32* @"'E_1", align 4
  %"186" = icmp eq i32 %"185", 1
  %or.cond.i1.i = and i1 %"184", %"186"
  br i1 %or.cond.i1.i, label %start_simulation_bb114, label %start_simulation_activate_threads.exit

start_simulation_bb114:                           ; preds = %start_simulation_bb113
  store i32 0, i32* @"'t1_st", align 4
  br label %start_simulation_activate_threads.exit

start_simulation_activate_threads.exit:           ; preds = %start_simulation_bb113, %start_simulation_bb114
  %"187" = load i32* @"'M_E", align 4
  %"188" = icmp eq i32 %"187", 1
  br i1 %"188", label %start_simulation_bb115, label %start_simulation_bb116

start_simulation_bb115:                           ; preds = %start_simulation_activate_threads.exit
  store i32 2, i32* @"'M_E", align 4
  br label %start_simulation_bb116

start_simulation_bb116:                           ; preds = %start_simulation_bb115, %start_simulation_activate_threads.exit
  %"189" = load i32* @"'T1_E", align 4
  %"190" = icmp eq i32 %"189", 1
  br i1 %"190", label %start_simulation_bb117, label %start_simulation_bb118

start_simulation_bb117:                           ; preds = %start_simulation_bb116
  store i32 2, i32* @"'T1_E", align 4
  br label %start_simulation_bb118

start_simulation_bb118:                           ; preds = %start_simulation_bb117, %start_simulation_bb116
  %"191" = load i32* @"'E_1", align 4
  %"192" = icmp eq i32 %"191", 1
  br i1 %"192", label %start_simulation_bb119, label %start_simulation_reset_time_events.exit

start_simulation_bb119:                           ; preds = %start_simulation_bb118
  store i32 2, i32* @"'E_1", align 4
  br label %start_simulation_reset_time_events.exit

start_simulation_reset_time_events.exit:          ; preds = %start_simulation_reset_delta_events.exit, %start_simulation_bb119, %start_simulation_bb118
  %"193" = load i32* @"'m_st", align 4
  %"194" = icmp eq i32 %"193", 0
  %"195" = load i32* @"'t1_st", align 4
  %"196" = icmp eq i32 %"195", 0
  %or.cond.i.i = or i1 %"194", %"196"
  %__retres2.0.i = select i1 %or.cond.i.i, i32 0, i32 1
  %"197" = icmp ne i32 %__retres2.0.i, 0
  br i1 %"197", label %start_simulation_bb120, label %start_simulation_reset_delta_events.exit17

start_simulation_bb120:                           ; preds = %start_simulation_reset_time_events.exit
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb121:
  store i32 1, i32* @"'m_i", align 4
  store i32 1, i32* @"'t1_i", align 4
  %"198" = load i32* @"'m_i", align 4
  %"199" = icmp eq i32 %"198", 1
  br i1 %"199", label %main_bb122, label %main_bb123

main_bb122:                                       ; preds = %main_bb121
  store i32 0, i32* @"'m_st", align 4
  br label %main_bb124

main_bb123:                                       ; preds = %main_bb121
  store i32 2, i32* @"'m_st", align 4
  br label %main_bb124

main_bb124:                                       ; preds = %main_bb123, %main_bb122
  %"200" = load i32* @"'t1_i", align 4
  %"201" = icmp eq i32 %"200", 1
  br i1 %"201", label %main_bb125, label %main_bb126

main_bb125:                                       ; preds = %main_bb124
  store i32 0, i32* @"'t1_st", align 4
  br label %main_init_threads.exit.i

main_bb126:                                       ; preds = %main_bb124
  store i32 2, i32* @"'t1_st", align 4
  br label %main_init_threads.exit.i

main_init_threads.exit.i:                         ; preds = %main_bb126, %main_bb125
  %"202" = load i32* @"'M_E", align 4
  %"203" = icmp eq i32 %"202", 0
  br i1 %"203", label %main_bb127, label %main_bb128

main_bb127:                                       ; preds = %main_init_threads.exit.i
  store i32 1, i32* @"'M_E", align 4
  br label %main_bb128

main_bb128:                                       ; preds = %main_bb127, %main_init_threads.exit.i
  %"204" = load i32* @"'T1_E", align 4
  %"205" = icmp eq i32 %"204", 0
  br i1 %"205", label %main_bb129, label %main_bb130

main_bb129:                                       ; preds = %main_bb128
  store i32 1, i32* @"'T1_E", align 4
  br label %main_bb130

main_bb130:                                       ; preds = %main_bb129, %main_bb128
  %"206" = load i32* @"'E_1", align 4
  %"207" = icmp eq i32 %"206", 0
  br i1 %"207", label %main_bb131, label %main_fire_delta_events.exit11.i

main_bb131:                                       ; preds = %main_bb130
  store i32 1, i32* @"'E_1", align 4
  br label %main_fire_delta_events.exit11.i

main_fire_delta_events.exit11.i:                  ; preds = %main_bb131, %main_bb130
  %"208" = load i32* @"'m_pc", align 4
  %"209" = icmp eq i32 %"208", 1
  %"210" = load i32* @"'M_E", align 4
  %"211" = icmp eq i32 %"210", 1
  %or.cond.i.i12.i = and i1 %"209", %"211"
  br i1 %or.cond.i.i12.i, label %main_bb132, label %main_bb133

main_bb132:                                       ; preds = %main_fire_delta_events.exit11.i
  store i32 0, i32* @"'m_st", align 4
  br label %main_bb133

main_bb133:                                       ; preds = %main_bb132, %main_fire_delta_events.exit11.i
  %"212" = load i32* @"'t1_pc", align 4
  %"213" = icmp eq i32 %"212", 1
  %"214" = load i32* @"'E_1", align 4
  %"215" = icmp eq i32 %"214", 1
  %or.cond.i1.i14.i = and i1 %"213", %"215"
  br i1 %or.cond.i1.i14.i, label %main_bb134, label %main_activate_threads.exit16.i

main_bb134:                                       ; preds = %main_bb133
  store i32 0, i32* @"'t1_st", align 4
  br label %main_activate_threads.exit16.i

main_activate_threads.exit16.i:                   ; preds = %main_bb134, %main_bb133
  %"216" = load i32* @"'M_E", align 4
  %"217" = icmp eq i32 %"216", 1
  br i1 %"217", label %main_bb135, label %main_bb136

main_bb135:                                       ; preds = %main_activate_threads.exit16.i
  store i32 2, i32* @"'M_E", align 4
  br label %main_bb136

main_bb136:                                       ; preds = %main_bb135, %main_activate_threads.exit16.i
  %"218" = load i32* @"'T1_E", align 4
  %"219" = icmp eq i32 %"218", 1
  br i1 %"219", label %main_bb137, label %main_bb138

main_bb137:                                       ; preds = %main_bb136
  store i32 2, i32* @"'T1_E", align 4
  br label %main_bb138

main_bb138:                                       ; preds = %main_bb137, %main_bb136
  %"220" = load i32* @"'E_1", align 4
  %"221" = icmp eq i32 %"220", 1
  br i1 %"221", label %main_bb139, label %main_reset_delta_events.exit17.i

main_bb139:                                       ; preds = %main_bb138
  store i32 2, i32* @"'E_1", align 4
  br label %main_reset_delta_events.exit17.i

main_reset_delta_events.exit17.i:                 ; preds = %main_reset_time_events.exit.i, %main_transmit1.exit.i.i, %main_bb148, %main_bb147, %main_bb139, %main_bb138
  %"222" = load i32* @"'m_st", align 4
  %"223" = icmp eq i32 %"222", 0
  %"224" = load i32* @"'t1_st", align 4
  %"225" = icmp eq i32 %"224", 0
  %or.cond.i.i8.i = or i1 %"223", %"225"
  br i1 %or.cond.i.i8.i, label %main_bb140, label %main_eval.exit.i

main_bb140:                                       ; preds = %main_reset_delta_events.exit17.i
  %"226" = load i32* @"'m_st", align 4
  %"227" = icmp eq i32 %"226", 0
  br i1 %"227", label %main_bb141, label %main_bb147

main_bb141:                                       ; preds = %main_bb140
  %"228" = call i32 (...)* @__VERIFIER_nondet_int() #5
  %"229" = icmp ne i32 %"228", 0
  br i1 %"229", label %main_bb142, label %main_bb147

main_bb142:                                       ; preds = %main_bb141
  store i32 1, i32* @"'m_st", align 4
  %"230" = load i32* @"'m_pc", align 4
  %"231" = icmp ne i32 %"230", 0
  %"232" = load i32* @"'m_pc", align 4
  %"233" = icmp eq i32 %"232", 1
  %or.cond.i2.i.i = and i1 %"231", %"233"
  br i1 %or.cond.i2.i.i, label %main_master.exit.i.i, label %main_bb143

main_bb143:                                       ; preds = %main_bb142
  store i32 1, i32* @"'E_1", align 4
  %"234" = load i32* @"'m_pc", align 4
  %"235" = icmp eq i32 %"234", 1
  %"236" = load i32* @"'M_E", align 4
  %"237" = icmp eq i32 %"236", 1
  %or.cond.i.i.i.i.i.i = and i1 %"235", %"237"
  br i1 %or.cond.i.i.i.i.i.i, label %main_bb144, label %main_bb145

main_bb144:                                       ; preds = %main_bb143
  store i32 0, i32* @"'m_st", align 4
  br label %main_bb145

main_bb145:                                       ; preds = %main_bb144, %main_bb143
  %"238" = load i32* @"'t1_pc", align 4
  %"239" = icmp eq i32 %"238", 1
  %"240" = load i32* @"'E_1", align 4
  %"241" = icmp eq i32 %"240", 1
  %or.cond.i1.i.i.i.i.i = and i1 %"239", %"241"
  br i1 %or.cond.i1.i.i.i.i.i, label %main_bb146, label %main_immediate_notify.exit.i.i.i

main_bb146:                                       ; preds = %main_bb145
  store i32 0, i32* @"'t1_st", align 4
  br label %main_immediate_notify.exit.i.i.i

main_immediate_notify.exit.i.i.i:                 ; preds = %main_bb146, %main_bb145
  store i32 2, i32* @"'E_1", align 4
  br label %main_master.exit.i.i

main_master.exit.i.i:                             ; preds = %main_immediate_notify.exit.i.i.i, %main_bb142
  store i32 1, i32* @"'m_pc", align 4
  store i32 2, i32* @"'m_st", align 4
  br label %main_bb147

main_bb147:                                       ; preds = %main_master.exit.i.i, %main_bb141, %main_bb140
  %"242" = load i32* @"'t1_st", align 4
  %"243" = icmp eq i32 %"242", 0
  br i1 %"243", label %main_bb148, label %main_reset_delta_events.exit17.i

main_bb148:                                       ; preds = %main_bb147
  %"244" = call i32 (...)* @__VERIFIER_nondet_int() #5
  %"245" = icmp ne i32 %"244", 0
  br i1 %"245", label %main_bb149, label %main_reset_delta_events.exit17.i

main_bb149:                                       ; preds = %main_bb148
  store i32 1, i32* @"'t1_st", align 4
  %"246" = load i32* @"'t1_pc", align 4
  %"247" = icmp ne i32 %"246", 0
  %"248" = load i32* @"'t1_pc", align 4
  %"249" = icmp eq i32 %"248", 1
  %or.cond.i1.i10.i = and i1 %"247", %"249"
  br i1 %or.cond.i1.i10.i, label %main_bb150, label %main_transmit1.exit.i.i

main_bb150:                                       ; preds = %main_bb149
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_transmit1.exit.i.i:                          ; preds = %main_bb149
  store i32 1, i32* @"'t1_pc", align 4
  store i32 2, i32* @"'t1_st", align 4
  br label %main_reset_delta_events.exit17.i

main_eval.exit.i:                                 ; preds = %main_reset_delta_events.exit17.i
  %"250" = load i32* @"'M_E", align 4
  %"251" = icmp eq i32 %"250", 0
  br i1 %"251", label %main_bb151, label %main_bb152

main_bb151:                                       ; preds = %main_eval.exit.i
  store i32 1, i32* @"'M_E", align 4
  br label %main_bb152

main_bb152:                                       ; preds = %main_bb151, %main_eval.exit.i
  %"252" = load i32* @"'T1_E", align 4
  %"253" = icmp eq i32 %"252", 0
  br i1 %"253", label %main_bb153, label %main_bb154

main_bb153:                                       ; preds = %main_bb152
  store i32 1, i32* @"'T1_E", align 4
  br label %main_bb154

main_bb154:                                       ; preds = %main_bb153, %main_bb152
  %"254" = load i32* @"'E_1", align 4
  %"255" = icmp eq i32 %"254", 0
  br i1 %"255", label %main_bb155, label %main_fire_delta_events.exit.i

main_bb155:                                       ; preds = %main_bb154
  store i32 1, i32* @"'E_1", align 4
  br label %main_fire_delta_events.exit.i

main_fire_delta_events.exit.i:                    ; preds = %main_bb155, %main_bb154
  %"256" = load i32* @"'m_pc", align 4
  %"257" = icmp eq i32 %"256", 1
  %"258" = load i32* @"'M_E", align 4
  %"259" = icmp eq i32 %"258", 1
  %or.cond.i.i3.i = and i1 %"257", %"259"
  br i1 %or.cond.i.i3.i, label %main_bb156, label %main_bb157

main_bb156:                                       ; preds = %main_fire_delta_events.exit.i
  store i32 0, i32* @"'m_st", align 4
  br label %main_bb157

main_bb157:                                       ; preds = %main_bb156, %main_fire_delta_events.exit.i
  %"260" = load i32* @"'t1_pc", align 4
  %"261" = icmp eq i32 %"260", 1
  %"262" = load i32* @"'E_1", align 4
  %"263" = icmp eq i32 %"262", 1
  %or.cond.i1.i5.i = and i1 %"261", %"263"
  br i1 %or.cond.i1.i5.i, label %main_bb158, label %main_activate_threads.exit7.i

main_bb158:                                       ; preds = %main_bb157
  store i32 0, i32* @"'t1_st", align 4
  br label %main_activate_threads.exit7.i

main_activate_threads.exit7.i:                    ; preds = %main_bb158, %main_bb157
  %"264" = load i32* @"'M_E", align 4
  %"265" = icmp eq i32 %"264", 1
  br i1 %"265", label %main_bb159, label %main_bb160

main_bb159:                                       ; preds = %main_activate_threads.exit7.i
  store i32 2, i32* @"'M_E", align 4
  br label %main_bb160

main_bb160:                                       ; preds = %main_bb159, %main_activate_threads.exit7.i
  %"266" = load i32* @"'T1_E", align 4
  %"267" = icmp eq i32 %"266", 1
  br i1 %"267", label %main_bb161, label %main_bb162

main_bb161:                                       ; preds = %main_bb160
  store i32 2, i32* @"'T1_E", align 4
  br label %main_bb162

main_bb162:                                       ; preds = %main_bb161, %main_bb160
  %"268" = load i32* @"'E_1", align 4
  %"269" = icmp eq i32 %"268", 1
  br i1 %"269", label %main_bb163, label %main_reset_delta_events.exit.i

main_bb163:                                       ; preds = %main_bb162
  store i32 2, i32* @"'E_1", align 4
  br label %main_reset_delta_events.exit.i

main_reset_delta_events.exit.i:                   ; preds = %main_bb163, %main_bb162
  %"270" = load i32* @"'m_st", align 4
  %"271" = icmp eq i32 %"270", 0
  %"272" = load i32* @"'t1_st", align 4
  %"273" = icmp eq i32 %"272", 0
  %or.cond.i.i = or i1 %"271", %"273"
  %__retres1.0.i.i = select i1 %or.cond.i.i, i32 1, i32 0
  %"274" = icmp eq i32 %__retres1.0.i.i, 0
  br i1 %"274", label %main_bb164, label %main_reset_time_events.exit.i

main_bb164:                                       ; preds = %main_reset_delta_events.exit.i
  store i32 1, i32* @"'M_E", align 4
  %"275" = load i32* @"'m_pc", align 4
  %"276" = icmp eq i32 %"275", 1
  %"277" = load i32* @"'M_E", align 4
  %"278" = icmp eq i32 %"277", 1
  %or.cond.i.i1.i = and i1 %"276", %"278"
  br i1 %or.cond.i.i1.i, label %main_bb165, label %main_bb166

main_bb165:                                       ; preds = %main_bb164
  store i32 0, i32* @"'m_st", align 4
  br label %main_bb166

main_bb166:                                       ; preds = %main_bb165, %main_bb164
  %"279" = load i32* @"'t1_pc", align 4
  %"280" = icmp eq i32 %"279", 1
  %"281" = load i32* @"'E_1", align 4
  %"282" = icmp eq i32 %"281", 1
  %or.cond.i1.i.i = and i1 %"280", %"282"
  br i1 %or.cond.i1.i.i, label %main_bb167, label %main_activate_threads.exit.i

main_bb167:                                       ; preds = %main_bb166
  store i32 0, i32* @"'t1_st", align 4
  br label %main_activate_threads.exit.i

main_activate_threads.exit.i:                     ; preds = %main_bb167, %main_bb166
  %"283" = load i32* @"'M_E", align 4
  %"284" = icmp eq i32 %"283", 1
  br i1 %"284", label %main_bb168, label %main_bb169

main_bb168:                                       ; preds = %main_activate_threads.exit.i
  store i32 2, i32* @"'M_E", align 4
  br label %main_bb169

main_bb169:                                       ; preds = %main_bb168, %main_activate_threads.exit.i
  %"285" = load i32* @"'T1_E", align 4
  %"286" = icmp eq i32 %"285", 1
  br i1 %"286", label %main_bb170, label %main_bb171

main_bb170:                                       ; preds = %main_bb169
  store i32 2, i32* @"'T1_E", align 4
  br label %main_bb171

main_bb171:                                       ; preds = %main_bb170, %main_bb169
  %"287" = load i32* @"'E_1", align 4
  %"288" = icmp eq i32 %"287", 1
  br i1 %"288", label %main_bb172, label %main_reset_time_events.exit.i

main_bb172:                                       ; preds = %main_bb171
  store i32 2, i32* @"'E_1", align 4
  br label %main_reset_time_events.exit.i

main_reset_time_events.exit.i:                    ; preds = %main_bb172, %main_bb171, %main_reset_delta_events.exit.i
  %"289" = load i32* @"'m_st", align 4
  %"290" = icmp eq i32 %"289", 0
  %"291" = load i32* @"'t1_st", align 4
  %"292" = icmp eq i32 %"291", 0
  %or.cond.i.i.i = or i1 %"290", %"292"
  %__retres2.0.i.i = select i1 %or.cond.i.i.i, i32 0, i32 1
  %"293" = icmp ne i32 %__retres2.0.i.i, 0
  br i1 %"293", label %main_start_simulation.exit, label %main_reset_delta_events.exit17.i

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

