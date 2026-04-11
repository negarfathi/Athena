; ModuleID = 'Benchmarks/TermCOMP/C/SV-COMP_Mixed_Categories/pc_sfifo_1_false-unreach-call_false-termination.cil/pc_sfifo_1_false-unreach-call_false-termination.cil.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"'p_dw_pc" = common global i32 0, align 4
@"'q_read_ev" = common global i32 0, align 4
@"'c_dr_pc" = common global i32 0, align 4
@"'q_write_ev" = common global i32 0, align 4
@"'p_dw_st" = common global i32 0, align 4
@"'c_dr_st" = common global i32 0, align 4
@"'q_free" = common global i32 0, align 4
@"'q_buf_0" = common global i32 0, align 4
@"'p_last_write" = common global i32 0, align 4
@"'p_num_write" = common global i32 0, align 4
@"'a_t" = internal global i32 0, align 4
@"'c_last_read" = common global i32 0, align 4
@"'c_num_read" = common global i32 0, align 4
@"'p_dw_i" = common global i32 0, align 4
@"'c_dr_i" = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define void @error() #0 {
error_bb0:
  call void (...)* @__VERIFIER_error() #3
  unreachable
}

; Function Attrs: noreturn
declare void @__VERIFIER_error(...) #1

; Function Attrs: nounwind uwtable
define i32 @is_do_write_p_triggered() #0 {
is_do_write_p_triggered_bb1:
  %"0" = load i32* @"'p_dw_pc", align 4
  %"1" = icmp eq i32 %"0", 1
  %"2" = load i32* @"'q_read_ev", align 4
  %"3" = icmp eq i32 %"2", 1
  %or.cond = and i1 %"1", %"3"
  %__retres1.0 = select i1 %or.cond, i32 1, i32 0
  ret i32 %__retres1.0
}

; Function Attrs: nounwind uwtable
define i32 @is_do_read_c_triggered() #0 {
is_do_read_c_triggered_bb2:
  %"4" = load i32* @"'c_dr_pc", align 4
  %"5" = icmp eq i32 %"4", 1
  %"6" = load i32* @"'q_write_ev", align 4
  %"7" = icmp eq i32 %"6", 1
  %or.cond = and i1 %"5", %"7"
  %__retres1.0 = select i1 %or.cond, i32 1, i32 0
  ret i32 %__retres1.0
}

; Function Attrs: nounwind uwtable
define void @immediate_notify_threads() #0 {
immediate_notify_threads_bb3:
  %"8" = load i32* @"'p_dw_pc", align 4
  %"9" = icmp eq i32 %"8", 1
  %"10" = load i32* @"'q_read_ev", align 4
  %"11" = icmp eq i32 %"10", 1
  %or.cond.i = and i1 %"9", %"11"
  %__retres1.0.i = select i1 %or.cond.i, i32 1, i32 0
  %"12" = icmp ne i32 %__retres1.0.i, 0
  br i1 %"12", label %immediate_notify_threads_bb4, label %immediate_notify_threads_bb5

immediate_notify_threads_bb4:                     ; preds = %immediate_notify_threads_bb3
  store i32 0, i32* @"'p_dw_st", align 4
  br label %immediate_notify_threads_bb5

immediate_notify_threads_bb5:                     ; preds = %immediate_notify_threads_bb3, %immediate_notify_threads_bb4
  %"13" = load i32* @"'c_dr_pc", align 4
  %"14" = icmp eq i32 %"13", 1
  %"15" = load i32* @"'q_write_ev", align 4
  %"16" = icmp eq i32 %"15", 1
  %or.cond.i1 = and i1 %"14", %"16"
  %__retres1.0.i2 = select i1 %or.cond.i1, i32 1, i32 0
  %"17" = icmp ne i32 %__retres1.0.i2, 0
  br i1 %"17", label %immediate_notify_threads_bb6, label %immediate_notify_threads_bb7

immediate_notify_threads_bb6:                     ; preds = %immediate_notify_threads_bb5
  store i32 0, i32* @"'c_dr_st", align 4
  br label %immediate_notify_threads_bb7

immediate_notify_threads_bb7:                     ; preds = %immediate_notify_threads_bb5, %immediate_notify_threads_bb6
  ret void
}

; Function Attrs: nounwind uwtable
define void @do_write_p() #0 {
do_write_p_bb8:
  %"18" = load i32* @"'p_dw_pc", align 4
  %"19" = icmp ne i32 %"18", 0
  %"20" = load i32* @"'p_dw_pc", align 4
  %"21" = icmp eq i32 %"20", 1
  %or.cond = and i1 %"19", %"21"
  %or.cond.not = xor i1 %or.cond, true
  %"22" = load i32* @"'q_free", align 4
  %"23" = icmp eq i32 %"22", 0
  %or.cond3 = and i1 %or.cond.not, %"23"
  br i1 %or.cond3, label %do_write_p_bb13, label %do_write_p_bb9

do_write_p_bb9:                                   ; preds = %do_write_p_bb8, %do_write_p_immediate_notify_threads.exit
  %"24" = call i32 (...)* @__VERIFIER_nondet_int()
  store i32 %"24", i32* @"'q_buf_0", align 4
  %"25" = load i32* @"'q_buf_0", align 4
  store i32 %"25", i32* @"'p_last_write", align 4
  %"26" = load i32* @"'p_num_write", align 4
  %"27" = add nsw i32 %"26", 1
  store i32 %"27", i32* @"'p_num_write", align 4
  store i32 0, i32* @"'q_free", align 4
  store i32 1, i32* @"'q_write_ev", align 4
  %"28" = load i32* @"'p_dw_pc", align 4
  %"29" = icmp eq i32 %"28", 1
  %"30" = load i32* @"'q_read_ev", align 4
  %"31" = icmp eq i32 %"30", 1
  %or.cond.i.i = and i1 %"29", %"31"
  br i1 %or.cond.i.i, label %do_write_p_bb10, label %do_write_p_bb11

do_write_p_bb10:                                  ; preds = %do_write_p_bb9
  store i32 0, i32* @"'p_dw_st", align 4
  br label %do_write_p_bb11

do_write_p_bb11:                                  ; preds = %do_write_p_bb10, %do_write_p_bb9
  %"32" = load i32* @"'c_dr_pc", align 4
  %"33" = icmp eq i32 %"32", 1
  %"34" = load i32* @"'q_write_ev", align 4
  %"35" = icmp eq i32 %"34", 1
  %or.cond.i1.i = and i1 %"33", %"35"
  br i1 %or.cond.i1.i, label %do_write_p_bb12, label %do_write_p_immediate_notify_threads.exit

do_write_p_bb12:                                  ; preds = %do_write_p_bb11
  store i32 0, i32* @"'c_dr_st", align 4
  br label %do_write_p_immediate_notify_threads.exit

do_write_p_immediate_notify_threads.exit:         ; preds = %do_write_p_bb11, %do_write_p_bb12
  store i32 2, i32* @"'q_write_ev", align 4
  %.old = load i32* @"'q_free", align 4
  %.old2 = icmp eq i32 %.old, 0
  br i1 %.old2, label %do_write_p_bb13, label %do_write_p_bb9

do_write_p_bb13:                                  ; preds = %do_write_p_bb8, %do_write_p_immediate_notify_threads.exit
  store i32 2, i32* @"'p_dw_st", align 4
  store i32 1, i32* @"'p_dw_pc", align 4
  ret void
}

declare i32 @__VERIFIER_nondet_int(...) #2

; Function Attrs: nounwind uwtable
define void @do_read_c() #0 {
do_read_c_bb14:
  %"36" = call i32 @__kittel_nondef.0()
  %"37" = load i32* @"'c_dr_pc", align 4
  %"38" = icmp ne i32 %"37", 0
  %"39" = load i32* @"'c_dr_pc", align 4
  %"40" = icmp eq i32 %"39", 1
  %or.cond = and i1 %"38", %"40"
  br i1 %or.cond, label %do_read_c_bb17, label %do_read_c_bb15

do_read_c_bb15:                                   ; preds = %do_read_c_bb14, %do_read_c_bb21
  %a.0 = phi i32 [ %"36", %do_read_c_bb14 ], [ %"43", %do_read_c_bb21 ]
  %"41" = load i32* @"'q_free", align 4
  %"42" = icmp eq i32 %"41", 1
  br i1 %"42", label %do_read_c_bb16, label %do_read_c_bb17

do_read_c_bb16:                                   ; preds = %do_read_c_bb15
  store i32 2, i32* @"'c_dr_st", align 4
  store i32 1, i32* @"'c_dr_pc", align 4
  store i32 %a.0, i32* @"'a_t", align 4
  ret void

do_read_c_bb17:                                   ; preds = %do_read_c_bb14, %do_read_c_bb15
  %"43" = load i32* @"'q_buf_0", align 4
  store i32 %"43", i32* @"'c_last_read", align 4
  %"44" = load i32* @"'c_num_read", align 4
  %"45" = add nsw i32 %"44", 1
  store i32 %"45", i32* @"'c_num_read", align 4
  store i32 1, i32* @"'q_free", align 4
  store i32 1, i32* @"'q_read_ev", align 4
  %"46" = load i32* @"'p_dw_pc", align 4
  %"47" = icmp eq i32 %"46", 1
  %"48" = load i32* @"'q_read_ev", align 4
  %"49" = icmp eq i32 %"48", 1
  %or.cond.i.i = and i1 %"47", %"49"
  br i1 %or.cond.i.i, label %do_read_c_bb18, label %do_read_c_bb19

do_read_c_bb18:                                   ; preds = %do_read_c_bb17
  store i32 0, i32* @"'p_dw_st", align 4
  br label %do_read_c_bb19

do_read_c_bb19:                                   ; preds = %do_read_c_bb18, %do_read_c_bb17
  %"50" = load i32* @"'c_dr_pc", align 4
  %"51" = icmp eq i32 %"50", 1
  %"52" = load i32* @"'q_write_ev", align 4
  %"53" = icmp eq i32 %"52", 1
  %or.cond.i1.i = and i1 %"51", %"53"
  br i1 %or.cond.i1.i, label %do_read_c_bb20, label %do_read_c_immediate_notify_threads.exit

do_read_c_bb20:                                   ; preds = %do_read_c_bb19
  store i32 0, i32* @"'c_dr_st", align 4
  br label %do_read_c_immediate_notify_threads.exit

do_read_c_immediate_notify_threads.exit:          ; preds = %do_read_c_bb19, %do_read_c_bb20
  store i32 2, i32* @"'q_read_ev", align 4
  %"54" = load i32* @"'p_last_write", align 4
  %"55" = load i32* @"'c_last_read", align 4
  %"56" = icmp eq i32 %"54", %"55"
  br i1 %"56", label %do_read_c_bb21, label %do_read_c_bb23

do_read_c_bb21:                                   ; preds = %do_read_c_immediate_notify_threads.exit
  %"57" = load i32* @"'p_num_write", align 4
  %"58" = load i32* @"'c_num_read", align 4
  %"59" = icmp eq i32 %"57", %"58"
  br i1 %"59", label %do_read_c_bb15, label %do_read_c_bb22

do_read_c_bb22:                                   ; preds = %do_read_c_bb21
  call void (...)* @__VERIFIER_error() #4
  unreachable

do_read_c_bb23:                                   ; preds = %do_read_c_immediate_notify_threads.exit
  call void (...)* @__VERIFIER_error() #4
  unreachable
}

; Function Attrs: nounwind uwtable
define void @init_threads() #0 {
init_threads_bb24:
  %"60" = load i32* @"'p_dw_i", align 4
  %"61" = icmp eq i32 %"60", 1
  br i1 %"61", label %init_threads_bb25, label %init_threads_bb26

init_threads_bb25:                                ; preds = %init_threads_bb24
  store i32 0, i32* @"'p_dw_st", align 4
  br label %init_threads_bb27

init_threads_bb26:                                ; preds = %init_threads_bb24
  store i32 2, i32* @"'p_dw_st", align 4
  br label %init_threads_bb27

init_threads_bb27:                                ; preds = %init_threads_bb26, %init_threads_bb25
  %"62" = load i32* @"'c_dr_i", align 4
  %"63" = icmp eq i32 %"62", 1
  br i1 %"63", label %init_threads_bb28, label %init_threads_bb29

init_threads_bb28:                                ; preds = %init_threads_bb27
  store i32 0, i32* @"'c_dr_st", align 4
  br label %init_threads_bb30

init_threads_bb29:                                ; preds = %init_threads_bb27
  store i32 2, i32* @"'c_dr_st", align 4
  br label %init_threads_bb30

init_threads_bb30:                                ; preds = %init_threads_bb29, %init_threads_bb28
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @exists_runnable_thread() #0 {
exists_runnable_thread_bb31:
  %"64" = load i32* @"'p_dw_st", align 4
  %"65" = icmp eq i32 %"64", 0
  %"66" = load i32* @"'c_dr_st", align 4
  %"67" = icmp eq i32 %"66", 0
  %or.cond = or i1 %"65", %"67"
  %__retres1.0 = select i1 %or.cond, i32 1, i32 0
  ret i32 %__retres1.0
}

; Function Attrs: nounwind uwtable
define void @eval() #0 {
eval_bb32:
  br label %eval_bb33

eval_bb33:                                        ; preds = %eval_bb43, %eval_do_read_c.exit, %eval_bb42, %eval_bb32
  %"68" = load i32* @"'p_dw_st", align 4
  %"69" = icmp eq i32 %"68", 0
  %"70" = load i32* @"'c_dr_st", align 4
  %"71" = icmp eq i32 %"70", 0
  %or.cond.i = or i1 %"69", %"71"
  %__retres1.0.i = select i1 %or.cond.i, i32 1, i32 0
  %"72" = icmp ne i32 %__retres1.0.i, 0
  br i1 %"72", label %eval_bb34, label %eval_bb53

eval_bb34:                                        ; preds = %eval_bb33
  %"73" = load i32* @"'p_dw_st", align 4
  %"74" = icmp eq i32 %"73", 0
  br i1 %"74", label %eval_bb35, label %eval_bb42

eval_bb35:                                        ; preds = %eval_bb34
  %"75" = call i32 (...)* @__VERIFIER_nondet_int()
  %"76" = icmp ne i32 %"75", 0
  br i1 %"76", label %eval_bb36, label %eval_bb41

eval_bb36:                                        ; preds = %eval_bb35
  store i32 1, i32* @"'p_dw_st", align 4
  %"77" = load i32* @"'p_dw_pc", align 4
  %"78" = icmp ne i32 %"77", 0
  %"79" = load i32* @"'p_dw_pc", align 4
  %"80" = icmp eq i32 %"79", 1
  %or.cond.i2 = and i1 %"78", %"80"
  %or.cond.not.i = xor i1 %or.cond.i2, true
  %"81" = load i32* @"'q_free", align 4
  %"82" = icmp eq i32 %"81", 0
  %or.cond3.i = and i1 %or.cond.not.i, %"82"
  br i1 %or.cond3.i, label %eval_do_write_p.exit, label %eval_bb37

eval_bb37:                                        ; preds = %eval_immediate_notify_threads.exit.i5, %eval_bb36
  %"83" = call i32 (...)* @__VERIFIER_nondet_int() #5
  store i32 %"83", i32* @"'q_buf_0", align 4
  %"84" = load i32* @"'q_buf_0", align 4
  store i32 %"84", i32* @"'p_last_write", align 4
  %"85" = load i32* @"'p_num_write", align 4
  %"86" = add nsw i32 %"85", 1
  store i32 %"86", i32* @"'p_num_write", align 4
  store i32 0, i32* @"'q_free", align 4
  store i32 1, i32* @"'q_write_ev", align 4
  %"87" = load i32* @"'p_dw_pc", align 4
  %"88" = icmp eq i32 %"87", 1
  %"89" = load i32* @"'q_read_ev", align 4
  %"90" = icmp eq i32 %"89", 1
  %or.cond.i.i.i3 = and i1 %"88", %"90"
  br i1 %or.cond.i.i.i3, label %eval_bb38, label %eval_bb39

eval_bb38:                                        ; preds = %eval_bb37
  store i32 0, i32* @"'p_dw_st", align 4
  br label %eval_bb39

eval_bb39:                                        ; preds = %eval_bb38, %eval_bb37
  %"91" = load i32* @"'c_dr_pc", align 4
  %"92" = icmp eq i32 %"91", 1
  %"93" = load i32* @"'q_write_ev", align 4
  %"94" = icmp eq i32 %"93", 1
  %or.cond.i1.i.i4 = and i1 %"92", %"94"
  br i1 %or.cond.i1.i.i4, label %eval_bb40, label %eval_immediate_notify_threads.exit.i5

eval_bb40:                                        ; preds = %eval_bb39
  store i32 0, i32* @"'c_dr_st", align 4
  br label %eval_immediate_notify_threads.exit.i5

eval_immediate_notify_threads.exit.i5:            ; preds = %eval_bb40, %eval_bb39
  store i32 2, i32* @"'q_write_ev", align 4
  %.old.i = load i32* @"'q_free", align 4
  %.old2.i = icmp eq i32 %.old.i, 0
  br i1 %.old2.i, label %eval_do_write_p.exit, label %eval_bb37

eval_do_write_p.exit:                             ; preds = %eval_bb36, %eval_immediate_notify_threads.exit.i5
  store i32 2, i32* @"'p_dw_st", align 4
  store i32 1, i32* @"'p_dw_pc", align 4
  br label %eval_bb42

eval_bb41:                                        ; preds = %eval_bb35
  call void (...)* @__VERIFIER_error() #4
  unreachable

eval_bb42:                                        ; preds = %eval_bb34, %eval_do_write_p.exit
  %"95" = load i32* @"'c_dr_st", align 4
  %"96" = icmp eq i32 %"95", 0
  br i1 %"96", label %eval_bb43, label %eval_bb33

eval_bb43:                                        ; preds = %eval_bb42
  %"97" = call i32 (...)* @__VERIFIER_nondet_int()
  %"98" = icmp ne i32 %"97", 0
  br i1 %"98", label %eval_bb44, label %eval_bb33

eval_bb44:                                        ; preds = %eval_bb43
  store i32 1, i32* @"'c_dr_st", align 4
  %"99" = call i32 @__kittel_nondef.0() #5
  %"100" = load i32* @"'c_dr_pc", align 4
  %"101" = icmp ne i32 %"100", 0
  %"102" = load i32* @"'c_dr_pc", align 4
  %"103" = icmp eq i32 %"102", 1
  %or.cond.i1 = and i1 %"101", %"103"
  br i1 %or.cond.i1, label %eval_bb46, label %eval_bb45

eval_bb45:                                        ; preds = %eval_bb50, %eval_bb44
  %a.0.i = phi i32 [ %"99", %eval_bb44 ], [ %"106", %eval_bb50 ]
  %"104" = load i32* @"'q_free", align 4
  %"105" = icmp eq i32 %"104", 1
  br i1 %"105", label %eval_do_read_c.exit, label %eval_bb46

eval_do_read_c.exit:                              ; preds = %eval_bb45
  store i32 2, i32* @"'c_dr_st", align 4
  store i32 1, i32* @"'c_dr_pc", align 4
  store i32 %a.0.i, i32* @"'a_t", align 4
  br label %eval_bb33

eval_bb46:                                        ; preds = %eval_bb45, %eval_bb44
  %"106" = load i32* @"'q_buf_0", align 4
  store i32 %"106", i32* @"'c_last_read", align 4
  %"107" = load i32* @"'c_num_read", align 4
  %"108" = add nsw i32 %"107", 1
  store i32 %"108", i32* @"'c_num_read", align 4
  store i32 1, i32* @"'q_free", align 4
  store i32 1, i32* @"'q_read_ev", align 4
  %"109" = load i32* @"'p_dw_pc", align 4
  %"110" = icmp eq i32 %"109", 1
  %"111" = load i32* @"'q_read_ev", align 4
  %"112" = icmp eq i32 %"111", 1
  %or.cond.i.i.i = and i1 %"110", %"112"
  br i1 %or.cond.i.i.i, label %eval_bb47, label %eval_bb48

eval_bb47:                                        ; preds = %eval_bb46
  store i32 0, i32* @"'p_dw_st", align 4
  br label %eval_bb48

eval_bb48:                                        ; preds = %eval_bb47, %eval_bb46
  %"113" = load i32* @"'c_dr_pc", align 4
  %"114" = icmp eq i32 %"113", 1
  %"115" = load i32* @"'q_write_ev", align 4
  %"116" = icmp eq i32 %"115", 1
  %or.cond.i1.i.i = and i1 %"114", %"116"
  br i1 %or.cond.i1.i.i, label %eval_bb49, label %eval_immediate_notify_threads.exit.i

eval_bb49:                                        ; preds = %eval_bb48
  store i32 0, i32* @"'c_dr_st", align 4
  br label %eval_immediate_notify_threads.exit.i

eval_immediate_notify_threads.exit.i:             ; preds = %eval_bb49, %eval_bb48
  store i32 2, i32* @"'q_read_ev", align 4
  %"117" = load i32* @"'p_last_write", align 4
  %"118" = load i32* @"'c_last_read", align 4
  %"119" = icmp eq i32 %"117", %"118"
  br i1 %"119", label %eval_bb50, label %eval_bb52

eval_bb50:                                        ; preds = %eval_immediate_notify_threads.exit.i
  %"120" = load i32* @"'p_num_write", align 4
  %"121" = load i32* @"'c_num_read", align 4
  %"122" = icmp eq i32 %"120", %"121"
  br i1 %"122", label %eval_bb45, label %eval_bb51

eval_bb51:                                        ; preds = %eval_bb50
  call void (...)* @__VERIFIER_error() #4
  unreachable

eval_bb52:                                        ; preds = %eval_immediate_notify_threads.exit.i
  call void (...)* @__VERIFIER_error() #4
  unreachable

eval_bb53:                                        ; preds = %eval_bb33
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @stop_simulation() #0 {
stop_simulation_bb54:
  %"123" = load i32* @"'p_dw_st", align 4
  %"124" = icmp eq i32 %"123", 0
  %"125" = load i32* @"'c_dr_st", align 4
  %"126" = icmp eq i32 %"125", 0
  %or.cond.i = or i1 %"124", %"126"
  %__retres1.0.i = select i1 %or.cond.i, i32 1, i32 0
  %"127" = icmp ne i32 %__retres1.0.i, 0
  %__retres2.0 = select i1 %"127", i32 0, i32 1
  ret i32 %__retres2.0
}

; Function Attrs: nounwind uwtable
define void @start_simulation() #0 {
start_simulation_bb55:
  %"128" = load i32* @"'p_dw_i", align 4
  %"129" = icmp eq i32 %"128", 1
  br i1 %"129", label %start_simulation_bb56, label %start_simulation_bb57

start_simulation_bb56:                            ; preds = %start_simulation_bb55
  store i32 0, i32* @"'p_dw_st", align 4
  br label %start_simulation_bb58

start_simulation_bb57:                            ; preds = %start_simulation_bb55
  store i32 2, i32* @"'p_dw_st", align 4
  br label %start_simulation_bb58

start_simulation_bb58:                            ; preds = %start_simulation_bb57, %start_simulation_bb56
  %"130" = load i32* @"'c_dr_i", align 4
  %"131" = icmp eq i32 %"130", 1
  br i1 %"131", label %start_simulation_bb59, label %start_simulation_bb60

start_simulation_bb59:                            ; preds = %start_simulation_bb58
  store i32 0, i32* @"'c_dr_st", align 4
  br label %start_simulation_init_threads.exit

start_simulation_bb60:                            ; preds = %start_simulation_bb58
  store i32 2, i32* @"'c_dr_st", align 4
  br label %start_simulation_init_threads.exit

start_simulation_init_threads.exit:               ; preds = %start_simulation_eval.exit, %start_simulation_bb60, %start_simulation_bb59, %start_simulation_do_read_c.exit.i, %start_simulation_bb70, %start_simulation_bb69
  %"132" = load i32* @"'p_dw_st", align 4
  %"133" = icmp eq i32 %"132", 0
  %"134" = load i32* @"'c_dr_st", align 4
  %"135" = icmp eq i32 %"134", 0
  %or.cond.i.i1 = or i1 %"133", %"135"
  %"136" = load i32* @"'p_dw_st", align 4
  %"137" = icmp eq i32 %"136", 0
  br i1 %or.cond.i.i1, label %start_simulation_bb61, label %start_simulation_eval.exit

start_simulation_bb61:                            ; preds = %start_simulation_init_threads.exit
  br i1 %"137", label %start_simulation_bb62, label %start_simulation_bb69

start_simulation_bb62:                            ; preds = %start_simulation_bb61
  %"138" = call i32 (...)* @__VERIFIER_nondet_int() #5
  %"139" = icmp ne i32 %"138", 0
  br i1 %"139", label %start_simulation_bb63, label %start_simulation_bb68

start_simulation_bb63:                            ; preds = %start_simulation_bb62
  store i32 1, i32* @"'p_dw_st", align 4
  %"140" = load i32* @"'p_dw_pc", align 4
  %"141" = icmp ne i32 %"140", 0
  %"142" = load i32* @"'p_dw_pc", align 4
  %"143" = icmp eq i32 %"142", 1
  %or.cond.i2.i = and i1 %"141", %"143"
  %or.cond.not.i.i = xor i1 %or.cond.i2.i, true
  %"144" = load i32* @"'q_free", align 4
  %"145" = icmp eq i32 %"144", 0
  %or.cond3.i.i = and i1 %or.cond.not.i.i, %"145"
  br i1 %or.cond3.i.i, label %start_simulation_do_write_p.exit.i, label %start_simulation_bb64

start_simulation_bb64:                            ; preds = %start_simulation_immediate_notify_threads.exit.i5.i, %start_simulation_bb63
  %"146" = call i32 (...)* @__VERIFIER_nondet_int() #5
  store i32 %"146", i32* @"'q_buf_0", align 4
  %"147" = load i32* @"'q_buf_0", align 4
  store i32 %"147", i32* @"'p_last_write", align 4
  %"148" = load i32* @"'p_num_write", align 4
  %"149" = add nsw i32 %"148", 1
  store i32 %"149", i32* @"'p_num_write", align 4
  store i32 0, i32* @"'q_free", align 4
  store i32 1, i32* @"'q_write_ev", align 4
  %"150" = load i32* @"'p_dw_pc", align 4
  %"151" = icmp eq i32 %"150", 1
  %"152" = load i32* @"'q_read_ev", align 4
  %"153" = icmp eq i32 %"152", 1
  %or.cond.i.i.i3.i = and i1 %"151", %"153"
  br i1 %or.cond.i.i.i3.i, label %start_simulation_bb65, label %start_simulation_bb66

start_simulation_bb65:                            ; preds = %start_simulation_bb64
  store i32 0, i32* @"'p_dw_st", align 4
  br label %start_simulation_bb66

start_simulation_bb66:                            ; preds = %start_simulation_bb65, %start_simulation_bb64
  %"154" = load i32* @"'c_dr_pc", align 4
  %"155" = icmp eq i32 %"154", 1
  %"156" = load i32* @"'q_write_ev", align 4
  %"157" = icmp eq i32 %"156", 1
  %or.cond.i1.i.i4.i = and i1 %"155", %"157"
  br i1 %or.cond.i1.i.i4.i, label %start_simulation_bb67, label %start_simulation_immediate_notify_threads.exit.i5.i

start_simulation_bb67:                            ; preds = %start_simulation_bb66
  store i32 0, i32* @"'c_dr_st", align 4
  br label %start_simulation_immediate_notify_threads.exit.i5.i

start_simulation_immediate_notify_threads.exit.i5.i: ; preds = %start_simulation_bb67, %start_simulation_bb66
  store i32 2, i32* @"'q_write_ev", align 4
  %.old.i.i = load i32* @"'q_free", align 4
  %.old2.i.i = icmp eq i32 %.old.i.i, 0
  br i1 %.old2.i.i, label %start_simulation_do_write_p.exit.i, label %start_simulation_bb64

start_simulation_do_write_p.exit.i:               ; preds = %start_simulation_immediate_notify_threads.exit.i5.i, %start_simulation_bb63
  store i32 2, i32* @"'p_dw_st", align 4
  store i32 1, i32* @"'p_dw_pc", align 4
  br label %start_simulation_bb69

start_simulation_bb68:                            ; preds = %start_simulation_bb62
  call void (...)* @__VERIFIER_error() #4
  unreachable

start_simulation_bb69:                            ; preds = %start_simulation_do_write_p.exit.i, %start_simulation_bb61
  %"158" = load i32* @"'c_dr_st", align 4
  %"159" = icmp eq i32 %"158", 0
  br i1 %"159", label %start_simulation_bb70, label %start_simulation_init_threads.exit

start_simulation_bb70:                            ; preds = %start_simulation_bb69
  %"160" = call i32 (...)* @__VERIFIER_nondet_int() #5
  %"161" = icmp ne i32 %"160", 0
  br i1 %"161", label %start_simulation_bb71, label %start_simulation_init_threads.exit

start_simulation_bb71:                            ; preds = %start_simulation_bb70
  store i32 1, i32* @"'c_dr_st", align 4
  %"162" = call i32 @__kittel_nondef.0() #5
  %"163" = load i32* @"'c_dr_pc", align 4
  %"164" = icmp ne i32 %"163", 0
  %"165" = load i32* @"'c_dr_pc", align 4
  %"166" = icmp eq i32 %"165", 1
  %or.cond.i1.i = and i1 %"164", %"166"
  br i1 %or.cond.i1.i, label %start_simulation_bb73, label %start_simulation_bb72

start_simulation_bb72:                            ; preds = %start_simulation_bb77, %start_simulation_bb71
  %a.0.i.i = phi i32 [ %"162", %start_simulation_bb71 ], [ %"169", %start_simulation_bb77 ]
  %"167" = load i32* @"'q_free", align 4
  %"168" = icmp eq i32 %"167", 1
  br i1 %"168", label %start_simulation_do_read_c.exit.i, label %start_simulation_bb73

start_simulation_do_read_c.exit.i:                ; preds = %start_simulation_bb72
  store i32 2, i32* @"'c_dr_st", align 4
  store i32 1, i32* @"'c_dr_pc", align 4
  store i32 %a.0.i.i, i32* @"'a_t", align 4
  br label %start_simulation_init_threads.exit

start_simulation_bb73:                            ; preds = %start_simulation_bb72, %start_simulation_bb71
  %"169" = load i32* @"'q_buf_0", align 4
  store i32 %"169", i32* @"'c_last_read", align 4
  %"170" = load i32* @"'c_num_read", align 4
  %"171" = add nsw i32 %"170", 1
  store i32 %"171", i32* @"'c_num_read", align 4
  store i32 1, i32* @"'q_free", align 4
  store i32 1, i32* @"'q_read_ev", align 4
  %"172" = load i32* @"'p_dw_pc", align 4
  %"173" = icmp eq i32 %"172", 1
  %"174" = load i32* @"'q_read_ev", align 4
  %"175" = icmp eq i32 %"174", 1
  %or.cond.i.i.i.i = and i1 %"173", %"175"
  br i1 %or.cond.i.i.i.i, label %start_simulation_bb74, label %start_simulation_bb75

start_simulation_bb74:                            ; preds = %start_simulation_bb73
  store i32 0, i32* @"'p_dw_st", align 4
  br label %start_simulation_bb75

start_simulation_bb75:                            ; preds = %start_simulation_bb74, %start_simulation_bb73
  %"176" = load i32* @"'c_dr_pc", align 4
  %"177" = icmp eq i32 %"176", 1
  %"178" = load i32* @"'q_write_ev", align 4
  %"179" = icmp eq i32 %"178", 1
  %or.cond.i1.i.i.i = and i1 %"177", %"179"
  br i1 %or.cond.i1.i.i.i, label %start_simulation_bb76, label %start_simulation_immediate_notify_threads.exit.i.i

start_simulation_bb76:                            ; preds = %start_simulation_bb75
  store i32 0, i32* @"'c_dr_st", align 4
  br label %start_simulation_immediate_notify_threads.exit.i.i

start_simulation_immediate_notify_threads.exit.i.i: ; preds = %start_simulation_bb76, %start_simulation_bb75
  store i32 2, i32* @"'q_read_ev", align 4
  %"180" = load i32* @"'p_last_write", align 4
  %"181" = load i32* @"'c_last_read", align 4
  %"182" = icmp eq i32 %"180", %"181"
  br i1 %"182", label %start_simulation_bb77, label %start_simulation_bb79

start_simulation_bb77:                            ; preds = %start_simulation_immediate_notify_threads.exit.i.i
  %"183" = load i32* @"'p_num_write", align 4
  %"184" = load i32* @"'c_num_read", align 4
  %"185" = icmp eq i32 %"183", %"184"
  br i1 %"185", label %start_simulation_bb72, label %start_simulation_bb78

start_simulation_bb78:                            ; preds = %start_simulation_bb77
  call void (...)* @__VERIFIER_error() #4
  unreachable

start_simulation_bb79:                            ; preds = %start_simulation_immediate_notify_threads.exit.i.i
  call void (...)* @__VERIFIER_error() #4
  unreachable

start_simulation_eval.exit:                       ; preds = %start_simulation_init_threads.exit
  %"186" = load i32* @"'c_dr_st", align 4
  %"187" = icmp eq i32 %"186", 0
  %or.cond.i.i = or i1 %"137", %"187"
  %__retres2.0.i = select i1 %or.cond.i.i, i32 0, i32 1
  %"188" = icmp ne i32 %__retres2.0.i, 0
  br i1 %"188", label %start_simulation_bb80, label %start_simulation_init_threads.exit

start_simulation_bb80:                            ; preds = %start_simulation_eval.exit
  ret void
}

; Function Attrs: nounwind uwtable
define void @init_model() #0 {
init_model_bb81:
  store i32 1, i32* @"'q_free", align 4
  store i32 2, i32* @"'q_write_ev", align 4
  %"189" = load i32* @"'q_write_ev", align 4
  store i32 %"189", i32* @"'q_read_ev", align 4
  store i32 0, i32* @"'p_num_write", align 4
  store i32 0, i32* @"'p_dw_pc", align 4
  store i32 1, i32* @"'p_dw_i", align 4
  store i32 0, i32* @"'c_num_read", align 4
  store i32 0, i32* @"'c_dr_pc", align 4
  store i32 1, i32* @"'c_dr_i", align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb82:
  store i32 1, i32* @"'q_free", align 4
  store i32 2, i32* @"'q_write_ev", align 4
  %"190" = load i32* @"'q_write_ev", align 4
  store i32 %"190", i32* @"'q_read_ev", align 4
  store i32 0, i32* @"'p_num_write", align 4
  store i32 0, i32* @"'p_dw_pc", align 4
  store i32 1, i32* @"'p_dw_i", align 4
  store i32 0, i32* @"'c_num_read", align 4
  store i32 0, i32* @"'c_dr_pc", align 4
  store i32 1, i32* @"'c_dr_i", align 4
  %"191" = load i32* @"'p_dw_i", align 4
  %"192" = icmp eq i32 %"191", 1
  br i1 %"192", label %main_bb83, label %main_bb84

main_bb83:                                        ; preds = %main_bb82
  store i32 0, i32* @"'p_dw_st", align 4
  br label %main_bb85

main_bb84:                                        ; preds = %main_bb82
  store i32 2, i32* @"'p_dw_st", align 4
  br label %main_bb85

main_bb85:                                        ; preds = %main_bb84, %main_bb83
  %"193" = load i32* @"'c_dr_i", align 4
  %"194" = icmp eq i32 %"193", 1
  br i1 %"194", label %main_bb86, label %main_bb87

main_bb86:                                        ; preds = %main_bb85
  store i32 0, i32* @"'c_dr_st", align 4
  br label %main_init_threads.exit.i

main_bb87:                                        ; preds = %main_bb85
  store i32 2, i32* @"'c_dr_st", align 4
  br label %main_init_threads.exit.i

main_init_threads.exit.i:                         ; preds = %main_eval.exit.i, %main_do_read_c.exit.i.i, %main_bb97, %main_bb96, %main_bb87, %main_bb86
  %"195" = load i32* @"'p_dw_st", align 4
  %"196" = icmp eq i32 %"195", 0
  %"197" = load i32* @"'c_dr_st", align 4
  %"198" = icmp eq i32 %"197", 0
  %or.cond.i.i1.i = or i1 %"196", %"198"
  %"199" = load i32* @"'p_dw_st", align 4
  %"200" = icmp eq i32 %"199", 0
  br i1 %or.cond.i.i1.i, label %main_bb88, label %main_eval.exit.i

main_bb88:                                        ; preds = %main_init_threads.exit.i
  br i1 %"200", label %main_bb89, label %main_bb96

main_bb89:                                        ; preds = %main_bb88
  %"201" = call i32 (...)* @__VERIFIER_nondet_int() #5
  %"202" = icmp ne i32 %"201", 0
  br i1 %"202", label %main_bb90, label %main_bb95

main_bb90:                                        ; preds = %main_bb89
  store i32 1, i32* @"'p_dw_st", align 4
  %"203" = load i32* @"'p_dw_pc", align 4
  %"204" = icmp ne i32 %"203", 0
  %"205" = load i32* @"'p_dw_pc", align 4
  %"206" = icmp eq i32 %"205", 1
  %or.cond.i2.i.i = and i1 %"204", %"206"
  %or.cond.not.i.i.i = xor i1 %or.cond.i2.i.i, true
  %"207" = load i32* @"'q_free", align 4
  %"208" = icmp eq i32 %"207", 0
  %or.cond3.i.i.i = and i1 %or.cond.not.i.i.i, %"208"
  br i1 %or.cond3.i.i.i, label %main_do_write_p.exit.i.i, label %main_bb91

main_bb91:                                        ; preds = %main_immediate_notify_threads.exit.i5.i.i, %main_bb90
  %"209" = call i32 (...)* @__VERIFIER_nondet_int() #5
  store i32 %"209", i32* @"'q_buf_0", align 4
  %"210" = load i32* @"'q_buf_0", align 4
  store i32 %"210", i32* @"'p_last_write", align 4
  %"211" = load i32* @"'p_num_write", align 4
  %"212" = add nsw i32 %"211", 1
  store i32 %"212", i32* @"'p_num_write", align 4
  store i32 0, i32* @"'q_free", align 4
  store i32 1, i32* @"'q_write_ev", align 4
  %"213" = load i32* @"'p_dw_pc", align 4
  %"214" = icmp eq i32 %"213", 1
  %"215" = load i32* @"'q_read_ev", align 4
  %"216" = icmp eq i32 %"215", 1
  %or.cond.i.i.i3.i.i = and i1 %"214", %"216"
  br i1 %or.cond.i.i.i3.i.i, label %main_bb92, label %main_bb93

main_bb92:                                        ; preds = %main_bb91
  store i32 0, i32* @"'p_dw_st", align 4
  br label %main_bb93

main_bb93:                                        ; preds = %main_bb92, %main_bb91
  %"217" = load i32* @"'c_dr_pc", align 4
  %"218" = icmp eq i32 %"217", 1
  %"219" = load i32* @"'q_write_ev", align 4
  %"220" = icmp eq i32 %"219", 1
  %or.cond.i1.i.i4.i.i = and i1 %"218", %"220"
  br i1 %or.cond.i1.i.i4.i.i, label %main_bb94, label %main_immediate_notify_threads.exit.i5.i.i

main_bb94:                                        ; preds = %main_bb93
  store i32 0, i32* @"'c_dr_st", align 4
  br label %main_immediate_notify_threads.exit.i5.i.i

main_immediate_notify_threads.exit.i5.i.i:        ; preds = %main_bb94, %main_bb93
  store i32 2, i32* @"'q_write_ev", align 4
  %.old.i.i.i = load i32* @"'q_free", align 4
  %.old2.i.i.i = icmp eq i32 %.old.i.i.i, 0
  br i1 %.old2.i.i.i, label %main_do_write_p.exit.i.i, label %main_bb91

main_do_write_p.exit.i.i:                         ; preds = %main_immediate_notify_threads.exit.i5.i.i, %main_bb90
  store i32 2, i32* @"'p_dw_st", align 4
  store i32 1, i32* @"'p_dw_pc", align 4
  br label %main_bb96

main_bb95:                                        ; preds = %main_bb89
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_bb96:                                        ; preds = %main_do_write_p.exit.i.i, %main_bb88
  %"221" = load i32* @"'c_dr_st", align 4
  %"222" = icmp eq i32 %"221", 0
  br i1 %"222", label %main_bb97, label %main_init_threads.exit.i

main_bb97:                                        ; preds = %main_bb96
  %"223" = call i32 (...)* @__VERIFIER_nondet_int() #5
  %"224" = icmp ne i32 %"223", 0
  br i1 %"224", label %main_bb98, label %main_init_threads.exit.i

main_bb98:                                        ; preds = %main_bb97
  store i32 1, i32* @"'c_dr_st", align 4
  %"225" = call i32 @__kittel_nondef.0() #5
  %"226" = load i32* @"'c_dr_pc", align 4
  %"227" = icmp ne i32 %"226", 0
  %"228" = load i32* @"'c_dr_pc", align 4
  %"229" = icmp eq i32 %"228", 1
  %or.cond.i1.i.i = and i1 %"227", %"229"
  br i1 %or.cond.i1.i.i, label %main_bb100, label %main_bb99

main_bb99:                                        ; preds = %main_bb104, %main_bb98
  %a.0.i.i.i = phi i32 [ %"225", %main_bb98 ], [ %"232", %main_bb104 ]
  %"230" = load i32* @"'q_free", align 4
  %"231" = icmp eq i32 %"230", 1
  br i1 %"231", label %main_do_read_c.exit.i.i, label %main_bb100

main_do_read_c.exit.i.i:                          ; preds = %main_bb99
  store i32 2, i32* @"'c_dr_st", align 4
  store i32 1, i32* @"'c_dr_pc", align 4
  store i32 %a.0.i.i.i, i32* @"'a_t", align 4
  br label %main_init_threads.exit.i

main_bb100:                                       ; preds = %main_bb99, %main_bb98
  %"232" = load i32* @"'q_buf_0", align 4
  store i32 %"232", i32* @"'c_last_read", align 4
  %"233" = load i32* @"'c_num_read", align 4
  %"234" = add nsw i32 %"233", 1
  store i32 %"234", i32* @"'c_num_read", align 4
  store i32 1, i32* @"'q_free", align 4
  store i32 1, i32* @"'q_read_ev", align 4
  %"235" = load i32* @"'p_dw_pc", align 4
  %"236" = icmp eq i32 %"235", 1
  %"237" = load i32* @"'q_read_ev", align 4
  %"238" = icmp eq i32 %"237", 1
  %or.cond.i.i.i.i.i = and i1 %"236", %"238"
  br i1 %or.cond.i.i.i.i.i, label %main_bb101, label %main_bb102

main_bb101:                                       ; preds = %main_bb100
  store i32 0, i32* @"'p_dw_st", align 4
  br label %main_bb102

main_bb102:                                       ; preds = %main_bb101, %main_bb100
  %"239" = load i32* @"'c_dr_pc", align 4
  %"240" = icmp eq i32 %"239", 1
  %"241" = load i32* @"'q_write_ev", align 4
  %"242" = icmp eq i32 %"241", 1
  %or.cond.i1.i.i.i.i = and i1 %"240", %"242"
  br i1 %or.cond.i1.i.i.i.i, label %main_bb103, label %main_immediate_notify_threads.exit.i.i.i

main_bb103:                                       ; preds = %main_bb102
  store i32 0, i32* @"'c_dr_st", align 4
  br label %main_immediate_notify_threads.exit.i.i.i

main_immediate_notify_threads.exit.i.i.i:         ; preds = %main_bb103, %main_bb102
  store i32 2, i32* @"'q_read_ev", align 4
  %"243" = load i32* @"'p_last_write", align 4
  %"244" = load i32* @"'c_last_read", align 4
  %"245" = icmp eq i32 %"243", %"244"
  br i1 %"245", label %main_bb104, label %main_bb106

main_bb104:                                       ; preds = %main_immediate_notify_threads.exit.i.i.i
  %"246" = load i32* @"'p_num_write", align 4
  %"247" = load i32* @"'c_num_read", align 4
  %"248" = icmp eq i32 %"246", %"247"
  br i1 %"248", label %main_bb99, label %main_bb105

main_bb105:                                       ; preds = %main_bb104
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_bb106:                                       ; preds = %main_immediate_notify_threads.exit.i.i.i
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_eval.exit.i:                                 ; preds = %main_init_threads.exit.i
  %"249" = load i32* @"'c_dr_st", align 4
  %"250" = icmp eq i32 %"249", 0
  %or.cond.i.i.i = or i1 %"200", %"250"
  %__retres2.0.i.i = select i1 %or.cond.i.i.i, i32 0, i32 1
  %"251" = icmp ne i32 %__retres2.0.i.i, 0
  br i1 %"251", label %main_start_simulation.exit, label %main_init_threads.exit.i

main_start_simulation.exit:                       ; preds = %main_eval.exit.i
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

