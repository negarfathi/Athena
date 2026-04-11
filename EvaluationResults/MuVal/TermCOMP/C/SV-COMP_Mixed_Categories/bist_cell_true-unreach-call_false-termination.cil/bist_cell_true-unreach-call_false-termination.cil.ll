; ModuleID = 'Benchmarks/TermCOMP/C/SV-COMP_Mixed_Categories/bist_cell_true-unreach-call_false-termination.cil/bist_cell_true-unreach-call_false-termination.cil.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"'b0_val" = common global i32 0, align 4
@"'d1_val" = common global i32 0, align 4
@"'d0_val" = common global i32 0, align 4
@"'b1_val" = common global i32 0, align 4
@"'z_val_t" = common global i32 0, align 4
@"'z_req_up" = common global i32 0, align 4
@"'comp_m1_st" = common global i32 0, align 4
@"'b0_ev" = common global i32 0, align 4
@"'b1_ev" = common global i32 0, align 4
@"'d0_ev" = common global i32 0, align 4
@"'d1_ev" = common global i32 0, align 4
@"'b0_val_t" = common global i32 0, align 4
@"'b0_req_up" = common global i32 0, align 4
@"'b1_val_t" = common global i32 0, align 4
@"'b1_req_up" = common global i32 0, align 4
@"'d0_val_t" = common global i32 0, align 4
@"'d0_req_up" = common global i32 0, align 4
@"'d1_val_t" = common global i32 0, align 4
@"'d1_req_up" = common global i32 0, align 4
@"'z_val" = common global i32 0, align 4
@"'z_ev" = common global i32 0, align 4
@"'comp_m1_i" = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define void @error() #0 {
error_bb0:
  call void (...)* @__VERIFIER_error() #3
  unreachable
}

; Function Attrs: noreturn
declare void @__VERIFIER_error(...) #1

; Function Attrs: nounwind uwtable
define void @method1() #0 {
method1_bb1:
  %"0" = load i32* @"'b0_val", align 4
  %"1" = icmp ne i32 %"0", 0
  br i1 %"1", label %method1_bb2, label %method1_bb3

method1_bb2:                                      ; preds = %method1_bb1
  %"2" = load i32* @"'d1_val", align 4
  %"3" = icmp ne i32 %"2", 0
  %. = select i1 %"3", i32 0, i32 1
  br label %method1_bb3

method1_bb3:                                      ; preds = %method1_bb1, %method1_bb2
  %s1.1 = phi i32 [ %., %method1_bb2 ], [ 1, %method1_bb1 ]
  %"4" = load i32* @"'d0_val", align 4
  %"5" = icmp ne i32 %"4", 0
  br i1 %"5", label %method1_bb4, label %method1_bb5

method1_bb4:                                      ; preds = %method1_bb3
  %"6" = load i32* @"'b1_val", align 4
  %"7" = icmp ne i32 %"6", 0
  %.1 = select i1 %"7", i32 0, i32 1
  br label %method1_bb5

method1_bb5:                                      ; preds = %method1_bb3, %method1_bb4
  %s2.1 = phi i32 [ %.1, %method1_bb4 ], [ 1, %method1_bb3 ]
  %"8" = icmp ne i32 %s2.1, 0
  br i1 %"8", label %method1_bb7, label %method1_bb6

method1_bb6:                                      ; preds = %method1_bb5
  %"9" = icmp ne i32 %s1.1, 0
  %.2 = select i1 %"9", i32 0, i32 1
  br label %method1_bb7

method1_bb7:                                      ; preds = %method1_bb5, %method1_bb6
  %s3.1 = phi i32 [ %.2, %method1_bb6 ], [ 0, %method1_bb5 ]
  %"10" = icmp ne i32 %s2.1, 0
  br i1 %"10", label %method1_bb8, label %method1_bb9

method1_bb8:                                      ; preds = %method1_bb7
  %"11" = icmp ne i32 %s1.1, 0
  %.3 = select i1 %"11", i32 1, i32 0
  br label %method1_bb9

method1_bb9:                                      ; preds = %method1_bb7, %method1_bb8
  %s2.3 = phi i32 [ %.3, %method1_bb8 ], [ 0, %method1_bb7 ]
  %"12" = icmp ne i32 %s2.3, 0
  br i1 %"12", label %method1_bb10, label %method1_bb11

method1_bb10:                                     ; preds = %method1_bb9
  store i32 0, i32* @"'z_val_t", align 4
  br label %method1_bb14

method1_bb11:                                     ; preds = %method1_bb9
  %"13" = icmp ne i32 %s3.1, 0
  br i1 %"13", label %method1_bb12, label %method1_bb13

method1_bb12:                                     ; preds = %method1_bb11
  store i32 0, i32* @"'z_val_t", align 4
  br label %method1_bb14

method1_bb13:                                     ; preds = %method1_bb11
  store i32 1, i32* @"'z_val_t", align 4
  br label %method1_bb14

method1_bb14:                                     ; preds = %method1_bb12, %method1_bb13, %method1_bb10
  store i32 1, i32* @"'z_req_up", align 4
  store i32 2, i32* @"'comp_m1_st", align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @is_method1_triggered() #0 {
is_method1_triggered_bb15:
  %"14" = load i32* @"'b0_ev", align 4
  %"15" = icmp eq i32 %"14", 1
  %"16" = load i32* @"'b1_ev", align 4
  %"17" = icmp eq i32 %"16", 1
  %or.cond = or i1 %"15", %"17"
  %"18" = load i32* @"'d0_ev", align 4
  %"19" = icmp eq i32 %"18", 1
  %or.cond3 = or i1 %or.cond, %"19"
  %"20" = load i32* @"'d1_ev", align 4
  %"21" = icmp eq i32 %"20", 1
  %or.cond5 = or i1 %or.cond3, %"21"
  %__retres1.0 = select i1 %or.cond5, i32 1, i32 0
  ret i32 %__retres1.0
}

; Function Attrs: nounwind uwtable
define void @update_b0() #0 {
update_b0_bb16:
  %"22" = load i32* @"'b0_val", align 4
  %"23" = load i32* @"'b0_val_t", align 4
  %"24" = icmp ne i32 %"22", %"23"
  br i1 %"24", label %update_b0_bb17, label %update_b0_bb18

update_b0_bb17:                                   ; preds = %update_b0_bb16
  %"25" = load i32* @"'b0_val_t", align 4
  store i32 %"25", i32* @"'b0_val", align 4
  store i32 0, i32* @"'b0_ev", align 4
  br label %update_b0_bb18

update_b0_bb18:                                   ; preds = %update_b0_bb16, %update_b0_bb17
  store i32 0, i32* @"'b0_req_up", align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @update_b1() #0 {
update_b1_bb19:
  %"26" = load i32* @"'b1_val", align 4
  %"27" = load i32* @"'b1_val_t", align 4
  %"28" = icmp ne i32 %"26", %"27"
  br i1 %"28", label %update_b1_bb20, label %update_b1_bb21

update_b1_bb20:                                   ; preds = %update_b1_bb19
  %"29" = load i32* @"'b1_val_t", align 4
  store i32 %"29", i32* @"'b1_val", align 4
  store i32 0, i32* @"'b1_ev", align 4
  br label %update_b1_bb21

update_b1_bb21:                                   ; preds = %update_b1_bb19, %update_b1_bb20
  store i32 0, i32* @"'b1_req_up", align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @update_d0() #0 {
update_d0_bb22:
  %"30" = load i32* @"'d0_val", align 4
  %"31" = load i32* @"'d0_val_t", align 4
  %"32" = icmp ne i32 %"30", %"31"
  br i1 %"32", label %update_d0_bb23, label %update_d0_bb24

update_d0_bb23:                                   ; preds = %update_d0_bb22
  %"33" = load i32* @"'d0_val_t", align 4
  store i32 %"33", i32* @"'d0_val", align 4
  store i32 0, i32* @"'d0_ev", align 4
  br label %update_d0_bb24

update_d0_bb24:                                   ; preds = %update_d0_bb22, %update_d0_bb23
  store i32 0, i32* @"'d0_req_up", align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @update_d1() #0 {
update_d1_bb25:
  %"34" = load i32* @"'d1_val", align 4
  %"35" = load i32* @"'d1_val_t", align 4
  %"36" = icmp ne i32 %"34", %"35"
  br i1 %"36", label %update_d1_bb26, label %update_d1_bb27

update_d1_bb26:                                   ; preds = %update_d1_bb25
  %"37" = load i32* @"'d1_val_t", align 4
  store i32 %"37", i32* @"'d1_val", align 4
  store i32 0, i32* @"'d1_ev", align 4
  br label %update_d1_bb27

update_d1_bb27:                                   ; preds = %update_d1_bb25, %update_d1_bb26
  store i32 0, i32* @"'d1_req_up", align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @update_z() #0 {
update_z_bb28:
  %"38" = load i32* @"'z_val", align 4
  %"39" = load i32* @"'z_val_t", align 4
  %"40" = icmp ne i32 %"38", %"39"
  br i1 %"40", label %update_z_bb29, label %update_z_bb30

update_z_bb29:                                    ; preds = %update_z_bb28
  %"41" = load i32* @"'z_val_t", align 4
  store i32 %"41", i32* @"'z_val", align 4
  store i32 0, i32* @"'z_ev", align 4
  br label %update_z_bb30

update_z_bb30:                                    ; preds = %update_z_bb28, %update_z_bb29
  store i32 0, i32* @"'z_req_up", align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @update_channels() #0 {
update_channels_bb31:
  %"42" = load i32* @"'b0_req_up", align 4
  %"43" = icmp eq i32 %"42", 1
  br i1 %"43", label %update_channels_bb32, label %update_channels_bb34

update_channels_bb32:                             ; preds = %update_channels_bb31
  %"44" = load i32* @"'b0_val", align 4
  %"45" = load i32* @"'b0_val_t", align 4
  %"46" = icmp ne i32 %"44", %"45"
  br i1 %"46", label %update_channels_bb33, label %update_channels_update_b0.exit

update_channels_bb33:                             ; preds = %update_channels_bb32
  %"47" = load i32* @"'b0_val_t", align 4
  store i32 %"47", i32* @"'b0_val", align 4
  store i32 0, i32* @"'b0_ev", align 4
  br label %update_channels_update_b0.exit

update_channels_update_b0.exit:                   ; preds = %update_channels_bb32, %update_channels_bb33
  store i32 0, i32* @"'b0_req_up", align 4
  br label %update_channels_bb34

update_channels_bb34:                             ; preds = %update_channels_bb31, %update_channels_update_b0.exit
  %"48" = load i32* @"'b1_req_up", align 4
  %"49" = icmp eq i32 %"48", 1
  br i1 %"49", label %update_channels_bb35, label %update_channels_bb37

update_channels_bb35:                             ; preds = %update_channels_bb34
  %"50" = load i32* @"'b1_val", align 4
  %"51" = load i32* @"'b1_val_t", align 4
  %"52" = icmp ne i32 %"50", %"51"
  br i1 %"52", label %update_channels_bb36, label %update_channels_update_b1.exit

update_channels_bb36:                             ; preds = %update_channels_bb35
  %"53" = load i32* @"'b1_val_t", align 4
  store i32 %"53", i32* @"'b1_val", align 4
  store i32 0, i32* @"'b1_ev", align 4
  br label %update_channels_update_b1.exit

update_channels_update_b1.exit:                   ; preds = %update_channels_bb35, %update_channels_bb36
  store i32 0, i32* @"'b1_req_up", align 4
  br label %update_channels_bb37

update_channels_bb37:                             ; preds = %update_channels_bb34, %update_channels_update_b1.exit
  %"54" = load i32* @"'d0_req_up", align 4
  %"55" = icmp eq i32 %"54", 1
  br i1 %"55", label %update_channels_bb38, label %update_channels_bb40

update_channels_bb38:                             ; preds = %update_channels_bb37
  %"56" = load i32* @"'d0_val", align 4
  %"57" = load i32* @"'d0_val_t", align 4
  %"58" = icmp ne i32 %"56", %"57"
  br i1 %"58", label %update_channels_bb39, label %update_channels_update_d0.exit

update_channels_bb39:                             ; preds = %update_channels_bb38
  %"59" = load i32* @"'d0_val_t", align 4
  store i32 %"59", i32* @"'d0_val", align 4
  store i32 0, i32* @"'d0_ev", align 4
  br label %update_channels_update_d0.exit

update_channels_update_d0.exit:                   ; preds = %update_channels_bb38, %update_channels_bb39
  store i32 0, i32* @"'d0_req_up", align 4
  br label %update_channels_bb40

update_channels_bb40:                             ; preds = %update_channels_bb37, %update_channels_update_d0.exit
  %"60" = load i32* @"'d1_req_up", align 4
  %"61" = icmp eq i32 %"60", 1
  br i1 %"61", label %update_channels_bb41, label %update_channels_bb43

update_channels_bb41:                             ; preds = %update_channels_bb40
  %"62" = load i32* @"'d1_val", align 4
  %"63" = load i32* @"'d1_val_t", align 4
  %"64" = icmp ne i32 %"62", %"63"
  br i1 %"64", label %update_channels_bb42, label %update_channels_update_d1.exit

update_channels_bb42:                             ; preds = %update_channels_bb41
  %"65" = load i32* @"'d1_val_t", align 4
  store i32 %"65", i32* @"'d1_val", align 4
  store i32 0, i32* @"'d1_ev", align 4
  br label %update_channels_update_d1.exit

update_channels_update_d1.exit:                   ; preds = %update_channels_bb41, %update_channels_bb42
  store i32 0, i32* @"'d1_req_up", align 4
  br label %update_channels_bb43

update_channels_bb43:                             ; preds = %update_channels_bb40, %update_channels_update_d1.exit
  %"66" = load i32* @"'z_req_up", align 4
  %"67" = icmp eq i32 %"66", 1
  br i1 %"67", label %update_channels_bb44, label %update_channels_bb46

update_channels_bb44:                             ; preds = %update_channels_bb43
  %"68" = load i32* @"'z_val", align 4
  %"69" = load i32* @"'z_val_t", align 4
  %"70" = icmp ne i32 %"68", %"69"
  br i1 %"70", label %update_channels_bb45, label %update_channels_update_z.exit

update_channels_bb45:                             ; preds = %update_channels_bb44
  %"71" = load i32* @"'z_val_t", align 4
  store i32 %"71", i32* @"'z_val", align 4
  store i32 0, i32* @"'z_ev", align 4
  br label %update_channels_update_z.exit

update_channels_update_z.exit:                    ; preds = %update_channels_bb44, %update_channels_bb45
  store i32 0, i32* @"'z_req_up", align 4
  br label %update_channels_bb46

update_channels_bb46:                             ; preds = %update_channels_bb43, %update_channels_update_z.exit
  ret void
}

; Function Attrs: nounwind uwtable
define void @init_threads() #0 {
init_threads_bb47:
  %"72" = load i32* @"'comp_m1_i", align 4
  %"73" = icmp eq i32 %"72", 1
  br i1 %"73", label %init_threads_bb48, label %init_threads_bb49

init_threads_bb48:                                ; preds = %init_threads_bb47
  store i32 0, i32* @"'comp_m1_st", align 4
  br label %init_threads_bb50

init_threads_bb49:                                ; preds = %init_threads_bb47
  store i32 2, i32* @"'comp_m1_st", align 4
  br label %init_threads_bb50

init_threads_bb50:                                ; preds = %init_threads_bb49, %init_threads_bb48
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @exists_runnable_thread() #0 {
exists_runnable_thread_bb51:
  %"74" = load i32* @"'comp_m1_st", align 4
  %"75" = icmp eq i32 %"74", 0
  %__retres1.0 = select i1 %"75", i32 1, i32 0
  ret i32 %__retres1.0
}

; Function Attrs: nounwind uwtable
define void @eval() #0 {
eval_bb52:
  br label %eval_bb53

eval_bb53:                                        ; preds = %eval_bb55, %eval_method1.exit, %eval_bb54, %eval_bb52
  %"76" = load i32* @"'comp_m1_st", align 4
  %"77" = icmp eq i32 %"76", 0
  %__retres1.0.i = select i1 %"77", i32 1, i32 0
  %"78" = icmp ne i32 %__retres1.0.i, 0
  br i1 %"78", label %eval_bb54, label %eval_bb69

eval_bb54:                                        ; preds = %eval_bb53
  %"79" = load i32* @"'comp_m1_st", align 4
  %"80" = icmp eq i32 %"79", 0
  br i1 %"80", label %eval_bb55, label %eval_bb53

eval_bb55:                                        ; preds = %eval_bb54
  %"81" = call i32 (...)* @__VERIFIER_nondet_int()
  %"82" = icmp ne i32 %"81", 0
  br i1 %"82", label %eval_bb56, label %eval_bb53

eval_bb56:                                        ; preds = %eval_bb55
  store i32 1, i32* @"'comp_m1_st", align 4
  %"83" = load i32* @"'b0_val", align 4
  %"84" = icmp ne i32 %"83", 0
  br i1 %"84", label %eval_bb57, label %eval_bb58

eval_bb57:                                        ; preds = %eval_bb56
  %"85" = load i32* @"'d1_val", align 4
  %"86" = icmp ne i32 %"85", 0
  %..i = select i1 %"86", i32 0, i32 1
  br label %eval_bb58

eval_bb58:                                        ; preds = %eval_bb57, %eval_bb56
  %s1.1.i = phi i32 [ %..i, %eval_bb57 ], [ 1, %eval_bb56 ]
  %"87" = load i32* @"'d0_val", align 4
  %"88" = icmp ne i32 %"87", 0
  br i1 %"88", label %eval_bb59, label %eval_bb60

eval_bb59:                                        ; preds = %eval_bb58
  %"89" = load i32* @"'b1_val", align 4
  %"90" = icmp ne i32 %"89", 0
  %.1.i = select i1 %"90", i32 0, i32 1
  br label %eval_bb60

eval_bb60:                                        ; preds = %eval_bb59, %eval_bb58
  %s2.1.i = phi i32 [ %.1.i, %eval_bb59 ], [ 1, %eval_bb58 ]
  %"91" = icmp ne i32 %s2.1.i, 0
  br i1 %"91", label %eval_bb62, label %eval_bb61

eval_bb61:                                        ; preds = %eval_bb60
  %"92" = icmp ne i32 %s1.1.i, 0
  %.2.i = select i1 %"92", i32 0, i32 1
  br label %eval_bb62

eval_bb62:                                        ; preds = %eval_bb61, %eval_bb60
  %s3.1.i = phi i32 [ %.2.i, %eval_bb61 ], [ 0, %eval_bb60 ]
  %"93" = icmp ne i32 %s2.1.i, 0
  br i1 %"93", label %eval_bb63, label %eval_bb64

eval_bb63:                                        ; preds = %eval_bb62
  %"94" = icmp ne i32 %s1.1.i, 0
  %.3.i = select i1 %"94", i32 1, i32 0
  br label %eval_bb64

eval_bb64:                                        ; preds = %eval_bb63, %eval_bb62
  %s2.3.i = phi i32 [ %.3.i, %eval_bb63 ], [ 0, %eval_bb62 ]
  %"95" = icmp ne i32 %s2.3.i, 0
  br i1 %"95", label %eval_bb65, label %eval_bb66

eval_bb65:                                        ; preds = %eval_bb64
  store i32 0, i32* @"'z_val_t", align 4
  br label %eval_method1.exit

eval_bb66:                                        ; preds = %eval_bb64
  %"96" = icmp ne i32 %s3.1.i, 0
  br i1 %"96", label %eval_bb67, label %eval_bb68

eval_bb67:                                        ; preds = %eval_bb66
  store i32 0, i32* @"'z_val_t", align 4
  br label %eval_method1.exit

eval_bb68:                                        ; preds = %eval_bb66
  store i32 1, i32* @"'z_val_t", align 4
  br label %eval_method1.exit

eval_method1.exit:                                ; preds = %eval_bb65, %eval_bb67, %eval_bb68
  store i32 1, i32* @"'z_req_up", align 4
  store i32 2, i32* @"'comp_m1_st", align 4
  br label %eval_bb53

eval_bb69:                                        ; preds = %eval_bb53
  ret void
}

declare i32 @__VERIFIER_nondet_int(...) #2

; Function Attrs: nounwind uwtable
define void @fire_delta_events() #0 {
fire_delta_events_bb70:
  %"97" = load i32* @"'b0_ev", align 4
  %"98" = icmp eq i32 %"97", 0
  br i1 %"98", label %fire_delta_events_bb71, label %fire_delta_events_bb72

fire_delta_events_bb71:                           ; preds = %fire_delta_events_bb70
  store i32 1, i32* @"'b0_ev", align 4
  br label %fire_delta_events_bb72

fire_delta_events_bb72:                           ; preds = %fire_delta_events_bb70, %fire_delta_events_bb71
  %"99" = load i32* @"'b1_ev", align 4
  %"100" = icmp eq i32 %"99", 0
  br i1 %"100", label %fire_delta_events_bb73, label %fire_delta_events_bb74

fire_delta_events_bb73:                           ; preds = %fire_delta_events_bb72
  store i32 1, i32* @"'b1_ev", align 4
  br label %fire_delta_events_bb74

fire_delta_events_bb74:                           ; preds = %fire_delta_events_bb72, %fire_delta_events_bb73
  %"101" = load i32* @"'d0_ev", align 4
  %"102" = icmp eq i32 %"101", 0
  br i1 %"102", label %fire_delta_events_bb75, label %fire_delta_events_bb76

fire_delta_events_bb75:                           ; preds = %fire_delta_events_bb74
  store i32 1, i32* @"'d0_ev", align 4
  br label %fire_delta_events_bb76

fire_delta_events_bb76:                           ; preds = %fire_delta_events_bb74, %fire_delta_events_bb75
  %"103" = load i32* @"'d1_ev", align 4
  %"104" = icmp eq i32 %"103", 0
  br i1 %"104", label %fire_delta_events_bb77, label %fire_delta_events_bb78

fire_delta_events_bb77:                           ; preds = %fire_delta_events_bb76
  store i32 1, i32* @"'d1_ev", align 4
  br label %fire_delta_events_bb78

fire_delta_events_bb78:                           ; preds = %fire_delta_events_bb76, %fire_delta_events_bb77
  %"105" = load i32* @"'z_ev", align 4
  %"106" = icmp eq i32 %"105", 0
  br i1 %"106", label %fire_delta_events_bb79, label %fire_delta_events_bb80

fire_delta_events_bb79:                           ; preds = %fire_delta_events_bb78
  store i32 1, i32* @"'z_ev", align 4
  br label %fire_delta_events_bb80

fire_delta_events_bb80:                           ; preds = %fire_delta_events_bb78, %fire_delta_events_bb79
  ret void
}

; Function Attrs: nounwind uwtable
define void @reset_delta_events() #0 {
reset_delta_events_bb81:
  %"107" = load i32* @"'b0_ev", align 4
  %"108" = icmp eq i32 %"107", 1
  br i1 %"108", label %reset_delta_events_bb82, label %reset_delta_events_bb83

reset_delta_events_bb82:                          ; preds = %reset_delta_events_bb81
  store i32 2, i32* @"'b0_ev", align 4
  br label %reset_delta_events_bb83

reset_delta_events_bb83:                          ; preds = %reset_delta_events_bb81, %reset_delta_events_bb82
  %"109" = load i32* @"'b1_ev", align 4
  %"110" = icmp eq i32 %"109", 1
  br i1 %"110", label %reset_delta_events_bb84, label %reset_delta_events_bb85

reset_delta_events_bb84:                          ; preds = %reset_delta_events_bb83
  store i32 2, i32* @"'b1_ev", align 4
  br label %reset_delta_events_bb85

reset_delta_events_bb85:                          ; preds = %reset_delta_events_bb83, %reset_delta_events_bb84
  %"111" = load i32* @"'d0_ev", align 4
  %"112" = icmp eq i32 %"111", 1
  br i1 %"112", label %reset_delta_events_bb86, label %reset_delta_events_bb87

reset_delta_events_bb86:                          ; preds = %reset_delta_events_bb85
  store i32 2, i32* @"'d0_ev", align 4
  br label %reset_delta_events_bb87

reset_delta_events_bb87:                          ; preds = %reset_delta_events_bb85, %reset_delta_events_bb86
  %"113" = load i32* @"'d1_ev", align 4
  %"114" = icmp eq i32 %"113", 1
  br i1 %"114", label %reset_delta_events_bb88, label %reset_delta_events_bb89

reset_delta_events_bb88:                          ; preds = %reset_delta_events_bb87
  store i32 2, i32* @"'d1_ev", align 4
  br label %reset_delta_events_bb89

reset_delta_events_bb89:                          ; preds = %reset_delta_events_bb87, %reset_delta_events_bb88
  %"115" = load i32* @"'z_ev", align 4
  %"116" = icmp eq i32 %"115", 1
  br i1 %"116", label %reset_delta_events_bb90, label %reset_delta_events_bb91

reset_delta_events_bb90:                          ; preds = %reset_delta_events_bb89
  store i32 2, i32* @"'z_ev", align 4
  br label %reset_delta_events_bb91

reset_delta_events_bb91:                          ; preds = %reset_delta_events_bb89, %reset_delta_events_bb90
  ret void
}

; Function Attrs: nounwind uwtable
define void @activate_threads() #0 {
activate_threads_bb92:
  %"117" = load i32* @"'b0_ev", align 4
  %"118" = icmp eq i32 %"117", 1
  %"119" = load i32* @"'b1_ev", align 4
  %"120" = icmp eq i32 %"119", 1
  %or.cond.i = or i1 %"118", %"120"
  %"121" = load i32* @"'d0_ev", align 4
  %"122" = icmp eq i32 %"121", 1
  %or.cond3.i = or i1 %or.cond.i, %"122"
  %"123" = load i32* @"'d1_ev", align 4
  %"124" = icmp eq i32 %"123", 1
  %or.cond5.i = or i1 %or.cond3.i, %"124"
  %__retres1.0.i = select i1 %or.cond5.i, i32 1, i32 0
  %"125" = icmp ne i32 %__retres1.0.i, 0
  br i1 %"125", label %activate_threads_bb93, label %activate_threads_bb94

activate_threads_bb93:                            ; preds = %activate_threads_bb92
  store i32 0, i32* @"'comp_m1_st", align 4
  br label %activate_threads_bb94

activate_threads_bb94:                            ; preds = %activate_threads_bb92, %activate_threads_bb93
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @stop_simulation() #0 {
stop_simulation_bb95:
  %"126" = load i32* @"'comp_m1_st", align 4
  %"127" = icmp eq i32 %"126", 0
  %__retres1.0.i = select i1 %"127", i32 1, i32 0
  %"128" = icmp ne i32 %__retres1.0.i, 0
  %__retres2.0 = select i1 %"128", i32 0, i32 1
  ret i32 %__retres2.0
}

; Function Attrs: nounwind uwtable
define void @start_simulation() #0 {
start_simulation_bb96:
  %"129" = load i32* @"'b0_req_up", align 4
  %"130" = icmp eq i32 %"129", 1
  br i1 %"130", label %start_simulation_bb97, label %start_simulation_bb99

start_simulation_bb97:                            ; preds = %start_simulation_bb96
  %"131" = load i32* @"'b0_val", align 4
  %"132" = load i32* @"'b0_val_t", align 4
  %"133" = icmp ne i32 %"131", %"132"
  br i1 %"133", label %start_simulation_bb98, label %start_simulation_update_b0.exit.i

start_simulation_bb98:                            ; preds = %start_simulation_bb97
  %"134" = load i32* @"'b0_val_t", align 4
  store i32 %"134", i32* @"'b0_val", align 4
  store i32 0, i32* @"'b0_ev", align 4
  br label %start_simulation_update_b0.exit.i

start_simulation_update_b0.exit.i:                ; preds = %start_simulation_bb98, %start_simulation_bb97
  store i32 0, i32* @"'b0_req_up", align 4
  br label %start_simulation_bb99

start_simulation_bb99:                            ; preds = %start_simulation_update_b0.exit.i, %start_simulation_bb96
  %"135" = load i32* @"'b1_req_up", align 4
  %"136" = icmp eq i32 %"135", 1
  br i1 %"136", label %start_simulation_bb100, label %start_simulation_bb102

start_simulation_bb100:                           ; preds = %start_simulation_bb99
  %"137" = load i32* @"'b1_val", align 4
  %"138" = load i32* @"'b1_val_t", align 4
  %"139" = icmp ne i32 %"137", %"138"
  br i1 %"139", label %start_simulation_bb101, label %start_simulation_update_b1.exit.i

start_simulation_bb101:                           ; preds = %start_simulation_bb100
  %"140" = load i32* @"'b1_val_t", align 4
  store i32 %"140", i32* @"'b1_val", align 4
  store i32 0, i32* @"'b1_ev", align 4
  br label %start_simulation_update_b1.exit.i

start_simulation_update_b1.exit.i:                ; preds = %start_simulation_bb101, %start_simulation_bb100
  store i32 0, i32* @"'b1_req_up", align 4
  br label %start_simulation_bb102

start_simulation_bb102:                           ; preds = %start_simulation_update_b1.exit.i, %start_simulation_bb99
  %"141" = load i32* @"'d0_req_up", align 4
  %"142" = icmp eq i32 %"141", 1
  br i1 %"142", label %start_simulation_bb103, label %start_simulation_bb105

start_simulation_bb103:                           ; preds = %start_simulation_bb102
  %"143" = load i32* @"'d0_val", align 4
  %"144" = load i32* @"'d0_val_t", align 4
  %"145" = icmp ne i32 %"143", %"144"
  br i1 %"145", label %start_simulation_bb104, label %start_simulation_update_d0.exit.i

start_simulation_bb104:                           ; preds = %start_simulation_bb103
  %"146" = load i32* @"'d0_val_t", align 4
  store i32 %"146", i32* @"'d0_val", align 4
  store i32 0, i32* @"'d0_ev", align 4
  br label %start_simulation_update_d0.exit.i

start_simulation_update_d0.exit.i:                ; preds = %start_simulation_bb104, %start_simulation_bb103
  store i32 0, i32* @"'d0_req_up", align 4
  br label %start_simulation_bb105

start_simulation_bb105:                           ; preds = %start_simulation_update_d0.exit.i, %start_simulation_bb102
  %"147" = load i32* @"'d1_req_up", align 4
  %"148" = icmp eq i32 %"147", 1
  br i1 %"148", label %start_simulation_bb106, label %start_simulation_bb108

start_simulation_bb106:                           ; preds = %start_simulation_bb105
  %"149" = load i32* @"'d1_val", align 4
  %"150" = load i32* @"'d1_val_t", align 4
  %"151" = icmp ne i32 %"149", %"150"
  br i1 %"151", label %start_simulation_bb107, label %start_simulation_update_d1.exit.i

start_simulation_bb107:                           ; preds = %start_simulation_bb106
  %"152" = load i32* @"'d1_val_t", align 4
  store i32 %"152", i32* @"'d1_val", align 4
  store i32 0, i32* @"'d1_ev", align 4
  br label %start_simulation_update_d1.exit.i

start_simulation_update_d1.exit.i:                ; preds = %start_simulation_bb107, %start_simulation_bb106
  store i32 0, i32* @"'d1_req_up", align 4
  br label %start_simulation_bb108

start_simulation_bb108:                           ; preds = %start_simulation_update_d1.exit.i, %start_simulation_bb105
  %"153" = load i32* @"'z_req_up", align 4
  %"154" = icmp eq i32 %"153", 1
  br i1 %"154", label %start_simulation_bb109, label %start_simulation_update_channels.exit

start_simulation_bb109:                           ; preds = %start_simulation_bb108
  %"155" = load i32* @"'z_val", align 4
  %"156" = load i32* @"'z_val_t", align 4
  %"157" = icmp ne i32 %"155", %"156"
  br i1 %"157", label %start_simulation_bb110, label %start_simulation_update_z.exit.i

start_simulation_bb110:                           ; preds = %start_simulation_bb109
  %"158" = load i32* @"'z_val_t", align 4
  store i32 %"158", i32* @"'z_val", align 4
  store i32 0, i32* @"'z_ev", align 4
  br label %start_simulation_update_z.exit.i

start_simulation_update_z.exit.i:                 ; preds = %start_simulation_bb110, %start_simulation_bb109
  store i32 0, i32* @"'z_req_up", align 4
  br label %start_simulation_update_channels.exit

start_simulation_update_channels.exit:            ; preds = %start_simulation_bb108, %start_simulation_update_z.exit.i
  %"159" = load i32* @"'comp_m1_i", align 4
  %"160" = icmp eq i32 %"159", 1
  br i1 %"160", label %start_simulation_bb111, label %start_simulation_bb112

start_simulation_bb111:                           ; preds = %start_simulation_update_channels.exit
  store i32 0, i32* @"'comp_m1_st", align 4
  br label %start_simulation_init_threads.exit

start_simulation_bb112:                           ; preds = %start_simulation_update_channels.exit
  store i32 2, i32* @"'comp_m1_st", align 4
  br label %start_simulation_init_threads.exit

start_simulation_init_threads.exit:               ; preds = %start_simulation_bb111, %start_simulation_bb112
  %"161" = load i32* @"'b0_ev", align 4
  %"162" = icmp eq i32 %"161", 0
  br i1 %"162", label %start_simulation_bb113, label %start_simulation_bb114

start_simulation_bb113:                           ; preds = %start_simulation_init_threads.exit
  store i32 1, i32* @"'b0_ev", align 4
  br label %start_simulation_bb114

start_simulation_bb114:                           ; preds = %start_simulation_bb113, %start_simulation_init_threads.exit
  %"163" = load i32* @"'b1_ev", align 4
  %"164" = icmp eq i32 %"163", 0
  br i1 %"164", label %start_simulation_bb115, label %start_simulation_bb116

start_simulation_bb115:                           ; preds = %start_simulation_bb114
  store i32 1, i32* @"'b1_ev", align 4
  br label %start_simulation_bb116

start_simulation_bb116:                           ; preds = %start_simulation_bb115, %start_simulation_bb114
  %"165" = load i32* @"'d0_ev", align 4
  %"166" = icmp eq i32 %"165", 0
  br i1 %"166", label %start_simulation_bb117, label %start_simulation_bb118

start_simulation_bb117:                           ; preds = %start_simulation_bb116
  store i32 1, i32* @"'d0_ev", align 4
  br label %start_simulation_bb118

start_simulation_bb118:                           ; preds = %start_simulation_bb117, %start_simulation_bb116
  %"167" = load i32* @"'d1_ev", align 4
  %"168" = icmp eq i32 %"167", 0
  br i1 %"168", label %start_simulation_bb119, label %start_simulation_bb120

start_simulation_bb119:                           ; preds = %start_simulation_bb118
  store i32 1, i32* @"'d1_ev", align 4
  br label %start_simulation_bb120

start_simulation_bb120:                           ; preds = %start_simulation_bb119, %start_simulation_bb118
  %"169" = load i32* @"'z_ev", align 4
  %"170" = icmp eq i32 %"169", 0
  br i1 %"170", label %start_simulation_bb121, label %start_simulation_fire_delta_events.exit15

start_simulation_bb121:                           ; preds = %start_simulation_bb120
  store i32 1, i32* @"'z_ev", align 4
  br label %start_simulation_fire_delta_events.exit15

start_simulation_fire_delta_events.exit15:        ; preds = %start_simulation_bb120, %start_simulation_bb121
  %"171" = load i32* @"'b0_ev", align 4
  %"172" = icmp eq i32 %"171", 1
  %"173" = load i32* @"'b1_ev", align 4
  %"174" = icmp eq i32 %"173", 1
  %or.cond.i.i10 = or i1 %"172", %"174"
  %"175" = load i32* @"'d0_ev", align 4
  %"176" = icmp eq i32 %"175", 1
  %or.cond3.i.i11 = or i1 %or.cond.i.i10, %"176"
  %"177" = load i32* @"'d1_ev", align 4
  %"178" = icmp eq i32 %"177", 1
  %or.cond5.i.i12 = or i1 %or.cond3.i.i11, %"178"
  br i1 %or.cond5.i.i12, label %start_simulation_bb122, label %start_simulation_activate_threads.exit14

start_simulation_bb122:                           ; preds = %start_simulation_fire_delta_events.exit15
  store i32 0, i32* @"'comp_m1_st", align 4
  br label %start_simulation_activate_threads.exit14

start_simulation_activate_threads.exit14:         ; preds = %start_simulation_fire_delta_events.exit15, %start_simulation_bb122
  %"179" = load i32* @"'b0_ev", align 4
  %"180" = icmp eq i32 %"179", 1
  br i1 %"180", label %start_simulation_bb123, label %start_simulation_bb124

start_simulation_bb123:                           ; preds = %start_simulation_activate_threads.exit14
  store i32 2, i32* @"'b0_ev", align 4
  br label %start_simulation_bb124

start_simulation_bb124:                           ; preds = %start_simulation_bb123, %start_simulation_activate_threads.exit14
  %"181" = load i32* @"'b1_ev", align 4
  %"182" = icmp eq i32 %"181", 1
  br i1 %"182", label %start_simulation_bb125, label %start_simulation_bb126

start_simulation_bb125:                           ; preds = %start_simulation_bb124
  store i32 2, i32* @"'b1_ev", align 4
  br label %start_simulation_bb126

start_simulation_bb126:                           ; preds = %start_simulation_bb125, %start_simulation_bb124
  %"183" = load i32* @"'d0_ev", align 4
  %"184" = icmp eq i32 %"183", 1
  br i1 %"184", label %start_simulation_bb127, label %start_simulation_bb128

start_simulation_bb127:                           ; preds = %start_simulation_bb126
  store i32 2, i32* @"'d0_ev", align 4
  br label %start_simulation_bb128

start_simulation_bb128:                           ; preds = %start_simulation_bb127, %start_simulation_bb126
  %"185" = load i32* @"'d1_ev", align 4
  %"186" = icmp eq i32 %"185", 1
  br i1 %"186", label %start_simulation_bb129, label %start_simulation_bb130

start_simulation_bb129:                           ; preds = %start_simulation_bb128
  store i32 2, i32* @"'d1_ev", align 4
  br label %start_simulation_bb130

start_simulation_bb130:                           ; preds = %start_simulation_bb129, %start_simulation_bb128
  %"187" = load i32* @"'z_ev", align 4
  %"188" = icmp eq i32 %"187", 1
  br i1 %"188", label %start_simulation_bb131, label %start_simulation_reset_delta_events.exit9

start_simulation_bb131:                           ; preds = %start_simulation_bb130
  store i32 2, i32* @"'z_ev", align 4
  br label %start_simulation_reset_delta_events.exit9

start_simulation_reset_delta_events.exit9:        ; preds = %start_simulation_reset_delta_events.exit, %start_simulation_bb131, %start_simulation_bb130, %start_simulation_method1.exit.i, %start_simulation_bb133, %start_simulation_bb132
  %"189" = load i32* @"'comp_m1_st", align 4
  %"190" = icmp eq i32 %"189", 0
  br i1 %"190", label %start_simulation_bb132, label %start_simulation_eval.exit

start_simulation_bb132:                           ; preds = %start_simulation_reset_delta_events.exit9
  %"191" = load i32* @"'comp_m1_st", align 4
  %"192" = icmp eq i32 %"191", 0
  br i1 %"192", label %start_simulation_bb133, label %start_simulation_reset_delta_events.exit9

start_simulation_bb133:                           ; preds = %start_simulation_bb132
  %"193" = call i32 (...)* @__VERIFIER_nondet_int() #4
  %"194" = icmp ne i32 %"193", 0
  br i1 %"194", label %start_simulation_bb134, label %start_simulation_reset_delta_events.exit9

start_simulation_bb134:                           ; preds = %start_simulation_bb133
  store i32 1, i32* @"'comp_m1_st", align 4
  %"195" = load i32* @"'b0_val", align 4
  %"196" = icmp ne i32 %"195", 0
  br i1 %"196", label %start_simulation_bb135, label %start_simulation_bb136

start_simulation_bb135:                           ; preds = %start_simulation_bb134
  %"197" = load i32* @"'d1_val", align 4
  %"198" = icmp ne i32 %"197", 0
  %..i.i = select i1 %"198", i32 0, i32 1
  br label %start_simulation_bb136

start_simulation_bb136:                           ; preds = %start_simulation_bb135, %start_simulation_bb134
  %s1.1.i.i = phi i32 [ %..i.i, %start_simulation_bb135 ], [ 1, %start_simulation_bb134 ]
  %"199" = load i32* @"'d0_val", align 4
  %"200" = icmp ne i32 %"199", 0
  br i1 %"200", label %start_simulation_bb137, label %start_simulation_bb138

start_simulation_bb137:                           ; preds = %start_simulation_bb136
  %"201" = load i32* @"'b1_val", align 4
  %"202" = icmp ne i32 %"201", 0
  %.1.i.i = select i1 %"202", i32 0, i32 1
  br label %start_simulation_bb138

start_simulation_bb138:                           ; preds = %start_simulation_bb137, %start_simulation_bb136
  %s2.1.i.i = phi i32 [ %.1.i.i, %start_simulation_bb137 ], [ 1, %start_simulation_bb136 ]
  %"203" = icmp ne i32 %s2.1.i.i, 0
  br i1 %"203", label %start_simulation_bb140, label %start_simulation_bb139

start_simulation_bb139:                           ; preds = %start_simulation_bb138
  %"204" = icmp ne i32 %s1.1.i.i, 0
  %.2.i.i = select i1 %"204", i32 0, i32 1
  br label %start_simulation_bb140

start_simulation_bb140:                           ; preds = %start_simulation_bb139, %start_simulation_bb138
  %s3.1.i.i = phi i32 [ %.2.i.i, %start_simulation_bb139 ], [ 0, %start_simulation_bb138 ]
  %"205" = icmp ne i32 %s2.1.i.i, 0
  br i1 %"205", label %start_simulation_bb141, label %start_simulation_bb142

start_simulation_bb141:                           ; preds = %start_simulation_bb140
  %"206" = icmp ne i32 %s1.1.i.i, 0
  %.3.i.i = select i1 %"206", i32 1, i32 0
  br label %start_simulation_bb142

start_simulation_bb142:                           ; preds = %start_simulation_bb141, %start_simulation_bb140
  %s2.3.i.i = phi i32 [ %.3.i.i, %start_simulation_bb141 ], [ 0, %start_simulation_bb140 ]
  %"207" = icmp ne i32 %s2.3.i.i, 0
  br i1 %"207", label %start_simulation_bb143, label %start_simulation_bb144

start_simulation_bb143:                           ; preds = %start_simulation_bb142
  store i32 0, i32* @"'z_val_t", align 4
  br label %start_simulation_method1.exit.i

start_simulation_bb144:                           ; preds = %start_simulation_bb142
  %"208" = icmp ne i32 %s3.1.i.i, 0
  br i1 %"208", label %start_simulation_bb145, label %start_simulation_bb146

start_simulation_bb145:                           ; preds = %start_simulation_bb144
  store i32 0, i32* @"'z_val_t", align 4
  br label %start_simulation_method1.exit.i

start_simulation_bb146:                           ; preds = %start_simulation_bb144
  store i32 1, i32* @"'z_val_t", align 4
  br label %start_simulation_method1.exit.i

start_simulation_method1.exit.i:                  ; preds = %start_simulation_bb146, %start_simulation_bb145, %start_simulation_bb143
  store i32 1, i32* @"'z_req_up", align 4
  store i32 2, i32* @"'comp_m1_st", align 4
  br label %start_simulation_reset_delta_events.exit9

start_simulation_eval.exit:                       ; preds = %start_simulation_reset_delta_events.exit9
  %"209" = load i32* @"'b0_req_up", align 4
  %"210" = icmp eq i32 %"209", 1
  br i1 %"210", label %start_simulation_bb147, label %start_simulation_bb149

start_simulation_bb147:                           ; preds = %start_simulation_eval.exit
  %"211" = load i32* @"'b0_val", align 4
  %"212" = load i32* @"'b0_val_t", align 4
  %"213" = icmp ne i32 %"211", %"212"
  br i1 %"213", label %start_simulation_bb148, label %start_simulation_update_b0.exit.i2

start_simulation_bb148:                           ; preds = %start_simulation_bb147
  %"214" = load i32* @"'b0_val_t", align 4
  store i32 %"214", i32* @"'b0_val", align 4
  store i32 0, i32* @"'b0_ev", align 4
  br label %start_simulation_update_b0.exit.i2

start_simulation_update_b0.exit.i2:               ; preds = %start_simulation_bb148, %start_simulation_bb147
  store i32 0, i32* @"'b0_req_up", align 4
  br label %start_simulation_bb149

start_simulation_bb149:                           ; preds = %start_simulation_update_b0.exit.i2, %start_simulation_eval.exit
  %"215" = load i32* @"'b1_req_up", align 4
  %"216" = icmp eq i32 %"215", 1
  br i1 %"216", label %start_simulation_bb150, label %start_simulation_bb152

start_simulation_bb150:                           ; preds = %start_simulation_bb149
  %"217" = load i32* @"'b1_val", align 4
  %"218" = load i32* @"'b1_val_t", align 4
  %"219" = icmp ne i32 %"217", %"218"
  br i1 %"219", label %start_simulation_bb151, label %start_simulation_update_b1.exit.i3

start_simulation_bb151:                           ; preds = %start_simulation_bb150
  %"220" = load i32* @"'b1_val_t", align 4
  store i32 %"220", i32* @"'b1_val", align 4
  store i32 0, i32* @"'b1_ev", align 4
  br label %start_simulation_update_b1.exit.i3

start_simulation_update_b1.exit.i3:               ; preds = %start_simulation_bb151, %start_simulation_bb150
  store i32 0, i32* @"'b1_req_up", align 4
  br label %start_simulation_bb152

start_simulation_bb152:                           ; preds = %start_simulation_update_b1.exit.i3, %start_simulation_bb149
  %"221" = load i32* @"'d0_req_up", align 4
  %"222" = icmp eq i32 %"221", 1
  br i1 %"222", label %start_simulation_bb153, label %start_simulation_bb155

start_simulation_bb153:                           ; preds = %start_simulation_bb152
  %"223" = load i32* @"'d0_val", align 4
  %"224" = load i32* @"'d0_val_t", align 4
  %"225" = icmp ne i32 %"223", %"224"
  br i1 %"225", label %start_simulation_bb154, label %start_simulation_update_d0.exit.i4

start_simulation_bb154:                           ; preds = %start_simulation_bb153
  %"226" = load i32* @"'d0_val_t", align 4
  store i32 %"226", i32* @"'d0_val", align 4
  store i32 0, i32* @"'d0_ev", align 4
  br label %start_simulation_update_d0.exit.i4

start_simulation_update_d0.exit.i4:               ; preds = %start_simulation_bb154, %start_simulation_bb153
  store i32 0, i32* @"'d0_req_up", align 4
  br label %start_simulation_bb155

start_simulation_bb155:                           ; preds = %start_simulation_update_d0.exit.i4, %start_simulation_bb152
  %"227" = load i32* @"'d1_req_up", align 4
  %"228" = icmp eq i32 %"227", 1
  br i1 %"228", label %start_simulation_bb156, label %start_simulation_bb158

start_simulation_bb156:                           ; preds = %start_simulation_bb155
  %"229" = load i32* @"'d1_val", align 4
  %"230" = load i32* @"'d1_val_t", align 4
  %"231" = icmp ne i32 %"229", %"230"
  br i1 %"231", label %start_simulation_bb157, label %start_simulation_update_d1.exit.i5

start_simulation_bb157:                           ; preds = %start_simulation_bb156
  %"232" = load i32* @"'d1_val_t", align 4
  store i32 %"232", i32* @"'d1_val", align 4
  store i32 0, i32* @"'d1_ev", align 4
  br label %start_simulation_update_d1.exit.i5

start_simulation_update_d1.exit.i5:               ; preds = %start_simulation_bb157, %start_simulation_bb156
  store i32 0, i32* @"'d1_req_up", align 4
  br label %start_simulation_bb158

start_simulation_bb158:                           ; preds = %start_simulation_update_d1.exit.i5, %start_simulation_bb155
  %"233" = load i32* @"'z_req_up", align 4
  %"234" = icmp eq i32 %"233", 1
  br i1 %"234", label %start_simulation_bb159, label %start_simulation_update_channels.exit7

start_simulation_bb159:                           ; preds = %start_simulation_bb158
  %"235" = load i32* @"'z_val", align 4
  %"236" = load i32* @"'z_val_t", align 4
  %"237" = icmp ne i32 %"235", %"236"
  br i1 %"237", label %start_simulation_bb160, label %start_simulation_update_z.exit.i6

start_simulation_bb160:                           ; preds = %start_simulation_bb159
  %"238" = load i32* @"'z_val_t", align 4
  store i32 %"238", i32* @"'z_val", align 4
  store i32 0, i32* @"'z_ev", align 4
  br label %start_simulation_update_z.exit.i6

start_simulation_update_z.exit.i6:                ; preds = %start_simulation_bb160, %start_simulation_bb159
  store i32 0, i32* @"'z_req_up", align 4
  br label %start_simulation_update_channels.exit7

start_simulation_update_channels.exit7:           ; preds = %start_simulation_bb158, %start_simulation_update_z.exit.i6
  %"239" = load i32* @"'b0_ev", align 4
  %"240" = icmp eq i32 %"239", 0
  br i1 %"240", label %start_simulation_bb161, label %start_simulation_bb162

start_simulation_bb161:                           ; preds = %start_simulation_update_channels.exit7
  store i32 1, i32* @"'b0_ev", align 4
  br label %start_simulation_bb162

start_simulation_bb162:                           ; preds = %start_simulation_bb161, %start_simulation_update_channels.exit7
  %"241" = load i32* @"'b1_ev", align 4
  %"242" = icmp eq i32 %"241", 0
  br i1 %"242", label %start_simulation_bb163, label %start_simulation_bb164

start_simulation_bb163:                           ; preds = %start_simulation_bb162
  store i32 1, i32* @"'b1_ev", align 4
  br label %start_simulation_bb164

start_simulation_bb164:                           ; preds = %start_simulation_bb163, %start_simulation_bb162
  %"243" = load i32* @"'d0_ev", align 4
  %"244" = icmp eq i32 %"243", 0
  br i1 %"244", label %start_simulation_bb165, label %start_simulation_bb166

start_simulation_bb165:                           ; preds = %start_simulation_bb164
  store i32 1, i32* @"'d0_ev", align 4
  br label %start_simulation_bb166

start_simulation_bb166:                           ; preds = %start_simulation_bb165, %start_simulation_bb164
  %"245" = load i32* @"'d1_ev", align 4
  %"246" = icmp eq i32 %"245", 0
  br i1 %"246", label %start_simulation_bb167, label %start_simulation_bb168

start_simulation_bb167:                           ; preds = %start_simulation_bb166
  store i32 1, i32* @"'d1_ev", align 4
  br label %start_simulation_bb168

start_simulation_bb168:                           ; preds = %start_simulation_bb167, %start_simulation_bb166
  %"247" = load i32* @"'z_ev", align 4
  %"248" = icmp eq i32 %"247", 0
  br i1 %"248", label %start_simulation_bb169, label %start_simulation_fire_delta_events.exit

start_simulation_bb169:                           ; preds = %start_simulation_bb168
  store i32 1, i32* @"'z_ev", align 4
  br label %start_simulation_fire_delta_events.exit

start_simulation_fire_delta_events.exit:          ; preds = %start_simulation_bb168, %start_simulation_bb169
  %"249" = load i32* @"'b0_ev", align 4
  %"250" = icmp eq i32 %"249", 1
  %"251" = load i32* @"'b1_ev", align 4
  %"252" = icmp eq i32 %"251", 1
  %or.cond.i.i = or i1 %"250", %"252"
  %"253" = load i32* @"'d0_ev", align 4
  %"254" = icmp eq i32 %"253", 1
  %or.cond3.i.i = or i1 %or.cond.i.i, %"254"
  %"255" = load i32* @"'d1_ev", align 4
  %"256" = icmp eq i32 %"255", 1
  %or.cond5.i.i = or i1 %or.cond3.i.i, %"256"
  br i1 %or.cond5.i.i, label %start_simulation_bb170, label %start_simulation_activate_threads.exit

start_simulation_bb170:                           ; preds = %start_simulation_fire_delta_events.exit
  store i32 0, i32* @"'comp_m1_st", align 4
  br label %start_simulation_activate_threads.exit

start_simulation_activate_threads.exit:           ; preds = %start_simulation_fire_delta_events.exit, %start_simulation_bb170
  %"257" = load i32* @"'b0_ev", align 4
  %"258" = icmp eq i32 %"257", 1
  br i1 %"258", label %start_simulation_bb171, label %start_simulation_bb172

start_simulation_bb171:                           ; preds = %start_simulation_activate_threads.exit
  store i32 2, i32* @"'b0_ev", align 4
  br label %start_simulation_bb172

start_simulation_bb172:                           ; preds = %start_simulation_bb171, %start_simulation_activate_threads.exit
  %"259" = load i32* @"'b1_ev", align 4
  %"260" = icmp eq i32 %"259", 1
  br i1 %"260", label %start_simulation_bb173, label %start_simulation_bb174

start_simulation_bb173:                           ; preds = %start_simulation_bb172
  store i32 2, i32* @"'b1_ev", align 4
  br label %start_simulation_bb174

start_simulation_bb174:                           ; preds = %start_simulation_bb173, %start_simulation_bb172
  %"261" = load i32* @"'d0_ev", align 4
  %"262" = icmp eq i32 %"261", 1
  br i1 %"262", label %start_simulation_bb175, label %start_simulation_bb176

start_simulation_bb175:                           ; preds = %start_simulation_bb174
  store i32 2, i32* @"'d0_ev", align 4
  br label %start_simulation_bb176

start_simulation_bb176:                           ; preds = %start_simulation_bb175, %start_simulation_bb174
  %"263" = load i32* @"'d1_ev", align 4
  %"264" = icmp eq i32 %"263", 1
  br i1 %"264", label %start_simulation_bb177, label %start_simulation_bb178

start_simulation_bb177:                           ; preds = %start_simulation_bb176
  store i32 2, i32* @"'d1_ev", align 4
  br label %start_simulation_bb178

start_simulation_bb178:                           ; preds = %start_simulation_bb177, %start_simulation_bb176
  %"265" = load i32* @"'z_ev", align 4
  %"266" = icmp eq i32 %"265", 1
  br i1 %"266", label %start_simulation_bb179, label %start_simulation_reset_delta_events.exit

start_simulation_bb179:                           ; preds = %start_simulation_bb178
  store i32 2, i32* @"'z_ev", align 4
  br label %start_simulation_reset_delta_events.exit

start_simulation_reset_delta_events.exit:         ; preds = %start_simulation_bb178, %start_simulation_bb179
  %"267" = load i32* @"'comp_m1_st", align 4
  %"268" = icmp eq i32 %"267", 0
  %__retres2.0.i = select i1 %"268", i32 0, i32 1
  %"269" = icmp ne i32 %__retres2.0.i, 0
  br i1 %"269", label %start_simulation_bb180, label %start_simulation_reset_delta_events.exit9

start_simulation_bb180:                           ; preds = %start_simulation_reset_delta_events.exit
  ret void
}

; Function Attrs: nounwind uwtable
define void @init_model() #0 {
init_model_bb181:
  store i32 0, i32* @"'b0_val", align 4
  store i32 2, i32* @"'b0_ev", align 4
  store i32 0, i32* @"'b0_req_up", align 4
  store i32 0, i32* @"'b1_val", align 4
  store i32 2, i32* @"'b1_ev", align 4
  store i32 0, i32* @"'b1_req_up", align 4
  store i32 0, i32* @"'d0_val", align 4
  store i32 2, i32* @"'d0_ev", align 4
  store i32 0, i32* @"'d0_req_up", align 4
  store i32 0, i32* @"'d1_val", align 4
  store i32 2, i32* @"'d1_ev", align 4
  store i32 0, i32* @"'d1_req_up", align 4
  store i32 0, i32* @"'z_val", align 4
  store i32 2, i32* @"'z_ev", align 4
  store i32 0, i32* @"'z_req_up", align 4
  store i32 1, i32* @"'b0_val_t", align 4
  store i32 1, i32* @"'b0_req_up", align 4
  store i32 1, i32* @"'b1_val_t", align 4
  store i32 1, i32* @"'b1_req_up", align 4
  store i32 1, i32* @"'d0_val_t", align 4
  store i32 1, i32* @"'d0_req_up", align 4
  store i32 1, i32* @"'d1_val_t", align 4
  store i32 1, i32* @"'d1_req_up", align 4
  store i32 0, i32* @"'comp_m1_i", align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb182:
  store i32 0, i32* @"'b0_val", align 4
  store i32 2, i32* @"'b0_ev", align 4
  store i32 0, i32* @"'b0_req_up", align 4
  store i32 0, i32* @"'b1_val", align 4
  store i32 2, i32* @"'b1_ev", align 4
  store i32 0, i32* @"'b1_req_up", align 4
  store i32 0, i32* @"'d0_val", align 4
  store i32 2, i32* @"'d0_ev", align 4
  store i32 0, i32* @"'d0_req_up", align 4
  store i32 0, i32* @"'d1_val", align 4
  store i32 2, i32* @"'d1_ev", align 4
  store i32 0, i32* @"'d1_req_up", align 4
  store i32 0, i32* @"'z_val", align 4
  store i32 2, i32* @"'z_ev", align 4
  store i32 0, i32* @"'z_req_up", align 4
  store i32 1, i32* @"'b0_val_t", align 4
  store i32 1, i32* @"'b0_req_up", align 4
  store i32 1, i32* @"'b1_val_t", align 4
  store i32 1, i32* @"'b1_req_up", align 4
  store i32 1, i32* @"'d0_val_t", align 4
  store i32 1, i32* @"'d0_req_up", align 4
  store i32 1, i32* @"'d1_val_t", align 4
  store i32 1, i32* @"'d1_req_up", align 4
  store i32 0, i32* @"'comp_m1_i", align 4
  %"270" = load i32* @"'b0_req_up", align 4
  %"271" = icmp eq i32 %"270", 1
  br i1 %"271", label %main_bb183, label %main_bb185

main_bb183:                                       ; preds = %main_bb182
  %"272" = load i32* @"'b0_val", align 4
  %"273" = load i32* @"'b0_val_t", align 4
  %"274" = icmp ne i32 %"272", %"273"
  br i1 %"274", label %main_bb184, label %main_update_b0.exit.i.i

main_bb184:                                       ; preds = %main_bb183
  %"275" = load i32* @"'b0_val_t", align 4
  store i32 %"275", i32* @"'b0_val", align 4
  store i32 0, i32* @"'b0_ev", align 4
  br label %main_update_b0.exit.i.i

main_update_b0.exit.i.i:                          ; preds = %main_bb184, %main_bb183
  store i32 0, i32* @"'b0_req_up", align 4
  br label %main_bb185

main_bb185:                                       ; preds = %main_update_b0.exit.i.i, %main_bb182
  %"276" = load i32* @"'b1_req_up", align 4
  %"277" = icmp eq i32 %"276", 1
  br i1 %"277", label %main_bb186, label %main_bb188

main_bb186:                                       ; preds = %main_bb185
  %"278" = load i32* @"'b1_val", align 4
  %"279" = load i32* @"'b1_val_t", align 4
  %"280" = icmp ne i32 %"278", %"279"
  br i1 %"280", label %main_bb187, label %main_update_b1.exit.i.i

main_bb187:                                       ; preds = %main_bb186
  %"281" = load i32* @"'b1_val_t", align 4
  store i32 %"281", i32* @"'b1_val", align 4
  store i32 0, i32* @"'b1_ev", align 4
  br label %main_update_b1.exit.i.i

main_update_b1.exit.i.i:                          ; preds = %main_bb187, %main_bb186
  store i32 0, i32* @"'b1_req_up", align 4
  br label %main_bb188

main_bb188:                                       ; preds = %main_update_b1.exit.i.i, %main_bb185
  %"282" = load i32* @"'d0_req_up", align 4
  %"283" = icmp eq i32 %"282", 1
  br i1 %"283", label %main_bb189, label %main_bb191

main_bb189:                                       ; preds = %main_bb188
  %"284" = load i32* @"'d0_val", align 4
  %"285" = load i32* @"'d0_val_t", align 4
  %"286" = icmp ne i32 %"284", %"285"
  br i1 %"286", label %main_bb190, label %main_update_d0.exit.i.i

main_bb190:                                       ; preds = %main_bb189
  %"287" = load i32* @"'d0_val_t", align 4
  store i32 %"287", i32* @"'d0_val", align 4
  store i32 0, i32* @"'d0_ev", align 4
  br label %main_update_d0.exit.i.i

main_update_d0.exit.i.i:                          ; preds = %main_bb190, %main_bb189
  store i32 0, i32* @"'d0_req_up", align 4
  br label %main_bb191

main_bb191:                                       ; preds = %main_update_d0.exit.i.i, %main_bb188
  %"288" = load i32* @"'d1_req_up", align 4
  %"289" = icmp eq i32 %"288", 1
  br i1 %"289", label %main_bb192, label %main_bb194

main_bb192:                                       ; preds = %main_bb191
  %"290" = load i32* @"'d1_val", align 4
  %"291" = load i32* @"'d1_val_t", align 4
  %"292" = icmp ne i32 %"290", %"291"
  br i1 %"292", label %main_bb193, label %main_update_d1.exit.i.i

main_bb193:                                       ; preds = %main_bb192
  %"293" = load i32* @"'d1_val_t", align 4
  store i32 %"293", i32* @"'d1_val", align 4
  store i32 0, i32* @"'d1_ev", align 4
  br label %main_update_d1.exit.i.i

main_update_d1.exit.i.i:                          ; preds = %main_bb193, %main_bb192
  store i32 0, i32* @"'d1_req_up", align 4
  br label %main_bb194

main_bb194:                                       ; preds = %main_update_d1.exit.i.i, %main_bb191
  %"294" = load i32* @"'z_req_up", align 4
  %"295" = icmp eq i32 %"294", 1
  br i1 %"295", label %main_bb195, label %main_update_channels.exit.i

main_bb195:                                       ; preds = %main_bb194
  %"296" = load i32* @"'z_val", align 4
  %"297" = load i32* @"'z_val_t", align 4
  %"298" = icmp ne i32 %"296", %"297"
  br i1 %"298", label %main_bb196, label %main_update_z.exit.i.i

main_bb196:                                       ; preds = %main_bb195
  %"299" = load i32* @"'z_val_t", align 4
  store i32 %"299", i32* @"'z_val", align 4
  store i32 0, i32* @"'z_ev", align 4
  br label %main_update_z.exit.i.i

main_update_z.exit.i.i:                           ; preds = %main_bb196, %main_bb195
  store i32 0, i32* @"'z_req_up", align 4
  br label %main_update_channels.exit.i

main_update_channels.exit.i:                      ; preds = %main_update_z.exit.i.i, %main_bb194
  %"300" = load i32* @"'comp_m1_i", align 4
  %"301" = icmp eq i32 %"300", 1
  br i1 %"301", label %main_bb197, label %main_bb198

main_bb197:                                       ; preds = %main_update_channels.exit.i
  store i32 0, i32* @"'comp_m1_st", align 4
  br label %main_init_threads.exit.i

main_bb198:                                       ; preds = %main_update_channels.exit.i
  store i32 2, i32* @"'comp_m1_st", align 4
  br label %main_init_threads.exit.i

main_init_threads.exit.i:                         ; preds = %main_bb198, %main_bb197
  %"302" = load i32* @"'b0_ev", align 4
  %"303" = icmp eq i32 %"302", 0
  br i1 %"303", label %main_bb199, label %main_bb200

main_bb199:                                       ; preds = %main_init_threads.exit.i
  store i32 1, i32* @"'b0_ev", align 4
  br label %main_bb200

main_bb200:                                       ; preds = %main_bb199, %main_init_threads.exit.i
  %"304" = load i32* @"'b1_ev", align 4
  %"305" = icmp eq i32 %"304", 0
  br i1 %"305", label %main_bb201, label %main_bb202

main_bb201:                                       ; preds = %main_bb200
  store i32 1, i32* @"'b1_ev", align 4
  br label %main_bb202

main_bb202:                                       ; preds = %main_bb201, %main_bb200
  %"306" = load i32* @"'d0_ev", align 4
  %"307" = icmp eq i32 %"306", 0
  br i1 %"307", label %main_bb203, label %main_bb204

main_bb203:                                       ; preds = %main_bb202
  store i32 1, i32* @"'d0_ev", align 4
  br label %main_bb204

main_bb204:                                       ; preds = %main_bb203, %main_bb202
  %"308" = load i32* @"'d1_ev", align 4
  %"309" = icmp eq i32 %"308", 0
  br i1 %"309", label %main_bb205, label %main_bb206

main_bb205:                                       ; preds = %main_bb204
  store i32 1, i32* @"'d1_ev", align 4
  br label %main_bb206

main_bb206:                                       ; preds = %main_bb205, %main_bb204
  %"310" = load i32* @"'z_ev", align 4
  %"311" = icmp eq i32 %"310", 0
  br i1 %"311", label %main_bb207, label %main_fire_delta_events.exit15.i

main_bb207:                                       ; preds = %main_bb206
  store i32 1, i32* @"'z_ev", align 4
  br label %main_fire_delta_events.exit15.i

main_fire_delta_events.exit15.i:                  ; preds = %main_bb207, %main_bb206
  %"312" = load i32* @"'b0_ev", align 4
  %"313" = icmp eq i32 %"312", 1
  %"314" = load i32* @"'b1_ev", align 4
  %"315" = icmp eq i32 %"314", 1
  %or.cond.i.i10.i = or i1 %"313", %"315"
  %"316" = load i32* @"'d0_ev", align 4
  %"317" = icmp eq i32 %"316", 1
  %or.cond3.i.i11.i = or i1 %or.cond.i.i10.i, %"317"
  %"318" = load i32* @"'d1_ev", align 4
  %"319" = icmp eq i32 %"318", 1
  %or.cond5.i.i12.i = or i1 %or.cond3.i.i11.i, %"319"
  br i1 %or.cond5.i.i12.i, label %main_bb208, label %main_activate_threads.exit14.i

main_bb208:                                       ; preds = %main_fire_delta_events.exit15.i
  store i32 0, i32* @"'comp_m1_st", align 4
  br label %main_activate_threads.exit14.i

main_activate_threads.exit14.i:                   ; preds = %main_bb208, %main_fire_delta_events.exit15.i
  %"320" = load i32* @"'b0_ev", align 4
  %"321" = icmp eq i32 %"320", 1
  br i1 %"321", label %main_bb209, label %main_bb210

main_bb209:                                       ; preds = %main_activate_threads.exit14.i
  store i32 2, i32* @"'b0_ev", align 4
  br label %main_bb210

main_bb210:                                       ; preds = %main_bb209, %main_activate_threads.exit14.i
  %"322" = load i32* @"'b1_ev", align 4
  %"323" = icmp eq i32 %"322", 1
  br i1 %"323", label %main_bb211, label %main_bb212

main_bb211:                                       ; preds = %main_bb210
  store i32 2, i32* @"'b1_ev", align 4
  br label %main_bb212

main_bb212:                                       ; preds = %main_bb211, %main_bb210
  %"324" = load i32* @"'d0_ev", align 4
  %"325" = icmp eq i32 %"324", 1
  br i1 %"325", label %main_bb213, label %main_bb214

main_bb213:                                       ; preds = %main_bb212
  store i32 2, i32* @"'d0_ev", align 4
  br label %main_bb214

main_bb214:                                       ; preds = %main_bb213, %main_bb212
  %"326" = load i32* @"'d1_ev", align 4
  %"327" = icmp eq i32 %"326", 1
  br i1 %"327", label %main_bb215, label %main_bb216

main_bb215:                                       ; preds = %main_bb214
  store i32 2, i32* @"'d1_ev", align 4
  br label %main_bb216

main_bb216:                                       ; preds = %main_bb215, %main_bb214
  %"328" = load i32* @"'z_ev", align 4
  %"329" = icmp eq i32 %"328", 1
  br i1 %"329", label %main_bb217, label %main_reset_delta_events.exit9.i

main_bb217:                                       ; preds = %main_bb216
  store i32 2, i32* @"'z_ev", align 4
  br label %main_reset_delta_events.exit9.i

main_reset_delta_events.exit9.i:                  ; preds = %main_reset_delta_events.exit.i, %main_method1.exit.i.i, %main_bb219, %main_bb218, %main_bb217, %main_bb216
  %"330" = load i32* @"'comp_m1_st", align 4
  %"331" = icmp eq i32 %"330", 0
  br i1 %"331", label %main_bb218, label %main_eval.exit.i

main_bb218:                                       ; preds = %main_reset_delta_events.exit9.i
  %"332" = load i32* @"'comp_m1_st", align 4
  %"333" = icmp eq i32 %"332", 0
  br i1 %"333", label %main_bb219, label %main_reset_delta_events.exit9.i

main_bb219:                                       ; preds = %main_bb218
  %"334" = call i32 (...)* @__VERIFIER_nondet_int() #4
  %"335" = icmp ne i32 %"334", 0
  br i1 %"335", label %main_bb220, label %main_reset_delta_events.exit9.i

main_bb220:                                       ; preds = %main_bb219
  store i32 1, i32* @"'comp_m1_st", align 4
  %"336" = load i32* @"'b0_val", align 4
  %"337" = icmp ne i32 %"336", 0
  br i1 %"337", label %main_bb221, label %main_bb222

main_bb221:                                       ; preds = %main_bb220
  %"338" = load i32* @"'d1_val", align 4
  %"339" = icmp ne i32 %"338", 0
  %..i.i.i = select i1 %"339", i32 0, i32 1
  br label %main_bb222

main_bb222:                                       ; preds = %main_bb221, %main_bb220
  %s1.1.i.i.i = phi i32 [ %..i.i.i, %main_bb221 ], [ 1, %main_bb220 ]
  %"340" = load i32* @"'d0_val", align 4
  %"341" = icmp ne i32 %"340", 0
  br i1 %"341", label %main_bb223, label %main_bb224

main_bb223:                                       ; preds = %main_bb222
  %"342" = load i32* @"'b1_val", align 4
  %"343" = icmp ne i32 %"342", 0
  %.1.i.i.i = select i1 %"343", i32 0, i32 1
  br label %main_bb224

main_bb224:                                       ; preds = %main_bb223, %main_bb222
  %s2.1.i.i.i = phi i32 [ %.1.i.i.i, %main_bb223 ], [ 1, %main_bb222 ]
  %"344" = icmp ne i32 %s2.1.i.i.i, 0
  br i1 %"344", label %main_bb226, label %main_bb225

main_bb225:                                       ; preds = %main_bb224
  %"345" = icmp ne i32 %s1.1.i.i.i, 0
  %.2.i.i.i = select i1 %"345", i32 0, i32 1
  br label %main_bb226

main_bb226:                                       ; preds = %main_bb225, %main_bb224
  %s3.1.i.i.i = phi i32 [ %.2.i.i.i, %main_bb225 ], [ 0, %main_bb224 ]
  %"346" = icmp ne i32 %s2.1.i.i.i, 0
  br i1 %"346", label %main_bb227, label %main_bb228

main_bb227:                                       ; preds = %main_bb226
  %"347" = icmp ne i32 %s1.1.i.i.i, 0
  %.3.i.i.i = select i1 %"347", i32 1, i32 0
  br label %main_bb228

main_bb228:                                       ; preds = %main_bb227, %main_bb226
  %s2.3.i.i.i = phi i32 [ %.3.i.i.i, %main_bb227 ], [ 0, %main_bb226 ]
  %"348" = icmp ne i32 %s2.3.i.i.i, 0
  br i1 %"348", label %main_bb229, label %main_bb230

main_bb229:                                       ; preds = %main_bb228
  store i32 0, i32* @"'z_val_t", align 4
  br label %main_method1.exit.i.i

main_bb230:                                       ; preds = %main_bb228
  %"349" = icmp ne i32 %s3.1.i.i.i, 0
  br i1 %"349", label %main_bb231, label %main_bb232

main_bb231:                                       ; preds = %main_bb230
  store i32 0, i32* @"'z_val_t", align 4
  br label %main_method1.exit.i.i

main_bb232:                                       ; preds = %main_bb230
  store i32 1, i32* @"'z_val_t", align 4
  br label %main_method1.exit.i.i

main_method1.exit.i.i:                            ; preds = %main_bb232, %main_bb231, %main_bb229
  store i32 1, i32* @"'z_req_up", align 4
  store i32 2, i32* @"'comp_m1_st", align 4
  br label %main_reset_delta_events.exit9.i

main_eval.exit.i:                                 ; preds = %main_reset_delta_events.exit9.i
  %"350" = load i32* @"'b0_req_up", align 4
  %"351" = icmp eq i32 %"350", 1
  br i1 %"351", label %main_bb233, label %main_bb235

main_bb233:                                       ; preds = %main_eval.exit.i
  %"352" = load i32* @"'b0_val", align 4
  %"353" = load i32* @"'b0_val_t", align 4
  %"354" = icmp ne i32 %"352", %"353"
  br i1 %"354", label %main_bb234, label %main_update_b0.exit.i2.i

main_bb234:                                       ; preds = %main_bb233
  %"355" = load i32* @"'b0_val_t", align 4
  store i32 %"355", i32* @"'b0_val", align 4
  store i32 0, i32* @"'b0_ev", align 4
  br label %main_update_b0.exit.i2.i

main_update_b0.exit.i2.i:                         ; preds = %main_bb234, %main_bb233
  store i32 0, i32* @"'b0_req_up", align 4
  br label %main_bb235

main_bb235:                                       ; preds = %main_update_b0.exit.i2.i, %main_eval.exit.i
  %"356" = load i32* @"'b1_req_up", align 4
  %"357" = icmp eq i32 %"356", 1
  br i1 %"357", label %main_bb236, label %main_bb238

main_bb236:                                       ; preds = %main_bb235
  %"358" = load i32* @"'b1_val", align 4
  %"359" = load i32* @"'b1_val_t", align 4
  %"360" = icmp ne i32 %"358", %"359"
  br i1 %"360", label %main_bb237, label %main_update_b1.exit.i3.i

main_bb237:                                       ; preds = %main_bb236
  %"361" = load i32* @"'b1_val_t", align 4
  store i32 %"361", i32* @"'b1_val", align 4
  store i32 0, i32* @"'b1_ev", align 4
  br label %main_update_b1.exit.i3.i

main_update_b1.exit.i3.i:                         ; preds = %main_bb237, %main_bb236
  store i32 0, i32* @"'b1_req_up", align 4
  br label %main_bb238

main_bb238:                                       ; preds = %main_update_b1.exit.i3.i, %main_bb235
  %"362" = load i32* @"'d0_req_up", align 4
  %"363" = icmp eq i32 %"362", 1
  br i1 %"363", label %main_bb239, label %main_bb241

main_bb239:                                       ; preds = %main_bb238
  %"364" = load i32* @"'d0_val", align 4
  %"365" = load i32* @"'d0_val_t", align 4
  %"366" = icmp ne i32 %"364", %"365"
  br i1 %"366", label %main_bb240, label %main_update_d0.exit.i4.i

main_bb240:                                       ; preds = %main_bb239
  %"367" = load i32* @"'d0_val_t", align 4
  store i32 %"367", i32* @"'d0_val", align 4
  store i32 0, i32* @"'d0_ev", align 4
  br label %main_update_d0.exit.i4.i

main_update_d0.exit.i4.i:                         ; preds = %main_bb240, %main_bb239
  store i32 0, i32* @"'d0_req_up", align 4
  br label %main_bb241

main_bb241:                                       ; preds = %main_update_d0.exit.i4.i, %main_bb238
  %"368" = load i32* @"'d1_req_up", align 4
  %"369" = icmp eq i32 %"368", 1
  br i1 %"369", label %main_bb242, label %main_bb244

main_bb242:                                       ; preds = %main_bb241
  %"370" = load i32* @"'d1_val", align 4
  %"371" = load i32* @"'d1_val_t", align 4
  %"372" = icmp ne i32 %"370", %"371"
  br i1 %"372", label %main_bb243, label %main_update_d1.exit.i5.i

main_bb243:                                       ; preds = %main_bb242
  %"373" = load i32* @"'d1_val_t", align 4
  store i32 %"373", i32* @"'d1_val", align 4
  store i32 0, i32* @"'d1_ev", align 4
  br label %main_update_d1.exit.i5.i

main_update_d1.exit.i5.i:                         ; preds = %main_bb243, %main_bb242
  store i32 0, i32* @"'d1_req_up", align 4
  br label %main_bb244

main_bb244:                                       ; preds = %main_update_d1.exit.i5.i, %main_bb241
  %"374" = load i32* @"'z_req_up", align 4
  %"375" = icmp eq i32 %"374", 1
  br i1 %"375", label %main_bb245, label %main_update_channels.exit7.i

main_bb245:                                       ; preds = %main_bb244
  %"376" = load i32* @"'z_val", align 4
  %"377" = load i32* @"'z_val_t", align 4
  %"378" = icmp ne i32 %"376", %"377"
  br i1 %"378", label %main_bb246, label %main_update_z.exit.i6.i

main_bb246:                                       ; preds = %main_bb245
  %"379" = load i32* @"'z_val_t", align 4
  store i32 %"379", i32* @"'z_val", align 4
  store i32 0, i32* @"'z_ev", align 4
  br label %main_update_z.exit.i6.i

main_update_z.exit.i6.i:                          ; preds = %main_bb246, %main_bb245
  store i32 0, i32* @"'z_req_up", align 4
  br label %main_update_channels.exit7.i

main_update_channels.exit7.i:                     ; preds = %main_update_z.exit.i6.i, %main_bb244
  %"380" = load i32* @"'b0_ev", align 4
  %"381" = icmp eq i32 %"380", 0
  br i1 %"381", label %main_bb247, label %main_bb248

main_bb247:                                       ; preds = %main_update_channels.exit7.i
  store i32 1, i32* @"'b0_ev", align 4
  br label %main_bb248

main_bb248:                                       ; preds = %main_bb247, %main_update_channels.exit7.i
  %"382" = load i32* @"'b1_ev", align 4
  %"383" = icmp eq i32 %"382", 0
  br i1 %"383", label %main_bb249, label %main_bb250

main_bb249:                                       ; preds = %main_bb248
  store i32 1, i32* @"'b1_ev", align 4
  br label %main_bb250

main_bb250:                                       ; preds = %main_bb249, %main_bb248
  %"384" = load i32* @"'d0_ev", align 4
  %"385" = icmp eq i32 %"384", 0
  br i1 %"385", label %main_bb251, label %main_bb252

main_bb251:                                       ; preds = %main_bb250
  store i32 1, i32* @"'d0_ev", align 4
  br label %main_bb252

main_bb252:                                       ; preds = %main_bb251, %main_bb250
  %"386" = load i32* @"'d1_ev", align 4
  %"387" = icmp eq i32 %"386", 0
  br i1 %"387", label %main_bb253, label %main_bb254

main_bb253:                                       ; preds = %main_bb252
  store i32 1, i32* @"'d1_ev", align 4
  br label %main_bb254

main_bb254:                                       ; preds = %main_bb253, %main_bb252
  %"388" = load i32* @"'z_ev", align 4
  %"389" = icmp eq i32 %"388", 0
  br i1 %"389", label %main_bb255, label %main_fire_delta_events.exit.i

main_bb255:                                       ; preds = %main_bb254
  store i32 1, i32* @"'z_ev", align 4
  br label %main_fire_delta_events.exit.i

main_fire_delta_events.exit.i:                    ; preds = %main_bb255, %main_bb254
  %"390" = load i32* @"'b0_ev", align 4
  %"391" = icmp eq i32 %"390", 1
  %"392" = load i32* @"'b1_ev", align 4
  %"393" = icmp eq i32 %"392", 1
  %or.cond.i.i.i = or i1 %"391", %"393"
  %"394" = load i32* @"'d0_ev", align 4
  %"395" = icmp eq i32 %"394", 1
  %or.cond3.i.i.i = or i1 %or.cond.i.i.i, %"395"
  %"396" = load i32* @"'d1_ev", align 4
  %"397" = icmp eq i32 %"396", 1
  %or.cond5.i.i.i = or i1 %or.cond3.i.i.i, %"397"
  br i1 %or.cond5.i.i.i, label %main_bb256, label %main_activate_threads.exit.i

main_bb256:                                       ; preds = %main_fire_delta_events.exit.i
  store i32 0, i32* @"'comp_m1_st", align 4
  br label %main_activate_threads.exit.i

main_activate_threads.exit.i:                     ; preds = %main_bb256, %main_fire_delta_events.exit.i
  %"398" = load i32* @"'b0_ev", align 4
  %"399" = icmp eq i32 %"398", 1
  br i1 %"399", label %main_bb257, label %main_bb258

main_bb257:                                       ; preds = %main_activate_threads.exit.i
  store i32 2, i32* @"'b0_ev", align 4
  br label %main_bb258

main_bb258:                                       ; preds = %main_bb257, %main_activate_threads.exit.i
  %"400" = load i32* @"'b1_ev", align 4
  %"401" = icmp eq i32 %"400", 1
  br i1 %"401", label %main_bb259, label %main_bb260

main_bb259:                                       ; preds = %main_bb258
  store i32 2, i32* @"'b1_ev", align 4
  br label %main_bb260

main_bb260:                                       ; preds = %main_bb259, %main_bb258
  %"402" = load i32* @"'d0_ev", align 4
  %"403" = icmp eq i32 %"402", 1
  br i1 %"403", label %main_bb261, label %main_bb262

main_bb261:                                       ; preds = %main_bb260
  store i32 2, i32* @"'d0_ev", align 4
  br label %main_bb262

main_bb262:                                       ; preds = %main_bb261, %main_bb260
  %"404" = load i32* @"'d1_ev", align 4
  %"405" = icmp eq i32 %"404", 1
  br i1 %"405", label %main_bb263, label %main_bb264

main_bb263:                                       ; preds = %main_bb262
  store i32 2, i32* @"'d1_ev", align 4
  br label %main_bb264

main_bb264:                                       ; preds = %main_bb263, %main_bb262
  %"406" = load i32* @"'z_ev", align 4
  %"407" = icmp eq i32 %"406", 1
  br i1 %"407", label %main_bb265, label %main_reset_delta_events.exit.i

main_bb265:                                       ; preds = %main_bb264
  store i32 2, i32* @"'z_ev", align 4
  br label %main_reset_delta_events.exit.i

main_reset_delta_events.exit.i:                   ; preds = %main_bb265, %main_bb264
  %"408" = load i32* @"'comp_m1_st", align 4
  %"409" = icmp eq i32 %"408", 0
  %__retres2.0.i.i = select i1 %"409", i32 0, i32 1
  %"410" = icmp ne i32 %__retres2.0.i.i, 0
  br i1 %"410", label %main_start_simulation.exit, label %main_reset_delta_events.exit9.i

main_start_simulation.exit:                       ; preds = %main_reset_delta_events.exit.i
  %"411" = load i32* @"'z_val", align 4
  %"412" = icmp eq i32 %"411", 0
  br i1 %"412", label %main_bb266, label %main_bb267

main_bb266:                                       ; preds = %main_start_simulation.exit
  ret i32 0

main_bb267:                                       ; preds = %main_start_simulation.exit
  call void (...)* @__VERIFIER_error() #5
  unreachable
}

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

