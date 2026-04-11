; ModuleID = 'Benchmarks/TermCOMP/C/SV-COMP_Mixed_Categories/stateful_check_false-unreach-call/stateful_check_false-unreach-call.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"'ldv_mutex" = global i32 1, align 4
@"'open_called" = global i32 0, align 4

; Function Attrs: nounwind uwtable
define void @__blast_assert() #0 {
__blast_assert_bb0:
  call void (...)* @__VERIFIER_error() #3
  unreachable
}

; Function Attrs: noreturn
declare void @__VERIFIER_error(...) #1

; Function Attrs: nounwind uwtable
define void @mutex_lock() #0 {
mutex_lock_bb1:
  %"0" = load i32* @"'ldv_mutex", align 4
  %"1" = icmp eq i32 %"0", 1
  br i1 %"1", label %mutex_lock_bb2, label %mutex_lock_bb3

mutex_lock_bb2:                                   ; preds = %mutex_lock_bb1
  store i32 2, i32* @"'ldv_mutex", align 4
  ret void

mutex_lock_bb3:                                   ; preds = %mutex_lock_bb1
  call void (...)* @__VERIFIER_error() #4
  unreachable
}

; Function Attrs: nounwind uwtable
define void @mutex_unlock() #0 {
mutex_unlock_bb4:
  %"2" = load i32* @"'ldv_mutex", align 4
  %"3" = icmp eq i32 %"2", 2
  br i1 %"3", label %mutex_unlock_bb5, label %mutex_unlock_bb6

mutex_unlock_bb5:                                 ; preds = %mutex_unlock_bb4
  store i32 1, i32* @"'ldv_mutex", align 4
  ret void

mutex_unlock_bb6:                                 ; preds = %mutex_unlock_bb4
  call void (...)* @__VERIFIER_error() #4
  unreachable
}

; Function Attrs: nounwind uwtable
define void @check_final_state() #0 {
check_final_state_bb7:
  %"4" = load i32* @"'ldv_mutex", align 4
  %"5" = icmp eq i32 %"4", 1
  br i1 %"5", label %check_final_state_bb8, label %check_final_state_bb9

check_final_state_bb8:                            ; preds = %check_final_state_bb7
  ret void

check_final_state_bb9:                            ; preds = %check_final_state_bb7
  call void (...)* @__VERIFIER_error() #4
  unreachable
}

; Function Attrs: nounwind uwtable
define void @main() #0 {
main_bb10:
  store i32 0, i32* @"'open_called", align 4
  br label %main_misc_release.exit

main_misc_release.exit:                           ; preds = %main_NewDefault, %main_bb15, %main_bb16, %main_misc_open.exit, %main_bb12, %main_mutex_lock.exit2.i, %main_mutex_unlock.exit.i, %main_bb17, %main_bb10
  %ldv_s_misc_fops_file_operations.0 = phi i32 [ 0, %main_bb10 ], [ %.ldv_s_misc_fops_file_operations.01, %main_bb16 ], [ %.ldv_s_misc_fops_file_operations.0, %main_bb15 ], [ %"12", %main_misc_open.exit ], [ %ldv_s_misc_fops_file_operations.0, %main_bb12 ], [ %ldv_s_misc_fops_file_operations.0, %main_bb17 ], [ 0, %main_mutex_unlock.exit.i ], [ 0, %main_mutex_lock.exit2.i ], [ %ldv_s_misc_fops_file_operations.0, %main_NewDefault ]
  %"6" = call i32 @__VERIFIER_nondet_int()
  %"7" = icmp ne i32 %"6", 0
  br i1 %"7", label %main_bb11, label %main_bb25

main_bb11:                                        ; preds = %main_misc_release.exit
  %"8" = call i32 @__VERIFIER_nondet_int()
  br label %main_NodeBlock6

main_NodeBlock6:                                  ; preds = %main_bb11
  %Pivot7 = icmp slt i32 %"8", 2
  br i1 %Pivot7, label %main_NodeBlock, label %main_NodeBlock4

main_NodeBlock:                                   ; preds = %main_NodeBlock6
  %Pivot = icmp slt i32 %"8", 1
  br i1 %Pivot, label %main_LeafBlock, label %main_bb15

main_LeafBlock:                                   ; preds = %main_NodeBlock
  %SwitchLeaf = icmp eq i32 %"8", 0
  br i1 %SwitchLeaf, label %main_bb12, label %main_NewDefault

main_bb12:                                        ; preds = %main_LeafBlock
  %"9" = icmp eq i32 %ldv_s_misc_fops_file_operations.0, 0
  br i1 %"9", label %main_bb13, label %main_misc_release.exit

main_bb13:                                        ; preds = %main_bb12
  %"10" = call i32 @__VERIFIER_nondet_int() #5
  %"11" = icmp ne i32 %"10", 0
  br i1 %"11", label %main_misc_open.exit, label %main_bb14

main_bb14:                                        ; preds = %main_bb13
  store i32 1, i32* @"'open_called", align 4
  br label %main_misc_open.exit

main_misc_open.exit:                              ; preds = %main_bb13, %main_bb14
  %"12" = add nsw i32 %ldv_s_misc_fops_file_operations.0, 1
  br label %main_misc_release.exit

main_bb15:                                        ; preds = %main_NodeBlock
  %"13" = icmp eq i32 %ldv_s_misc_fops_file_operations.0, 1
  %"14" = add nsw i32 %ldv_s_misc_fops_file_operations.0, 1
  %.ldv_s_misc_fops_file_operations.0 = select i1 %"13", i32 %"14", i32 %ldv_s_misc_fops_file_operations.0
  br label %main_misc_release.exit

main_NodeBlock4:                                  ; preds = %main_NodeBlock6
  %Pivot5 = icmp slt i32 %"8", 3
  br i1 %Pivot5, label %main_bb16, label %main_LeafBlock2

main_bb16:                                        ; preds = %main_NodeBlock4
  %"15" = icmp eq i32 %ldv_s_misc_fops_file_operations.0, 2
  %"16" = add nsw i32 %ldv_s_misc_fops_file_operations.0, 1
  %.ldv_s_misc_fops_file_operations.01 = select i1 %"15", i32 %"16", i32 %ldv_s_misc_fops_file_operations.0
  br label %main_misc_release.exit

main_LeafBlock2:                                  ; preds = %main_NodeBlock4
  %SwitchLeaf3 = icmp eq i32 %"8", 3
  br i1 %SwitchLeaf3, label %main_bb17, label %main_NewDefault

main_bb17:                                        ; preds = %main_LeafBlock2
  %"17" = icmp eq i32 %ldv_s_misc_fops_file_operations.0, 3
  br i1 %"17", label %main_bb18, label %main_misc_release.exit

main_bb18:                                        ; preds = %main_bb17
  %"18" = load i32* @"'open_called", align 4
  %"19" = icmp ne i32 %"18", 0
  %"20" = load i32* @"'ldv_mutex", align 4
  %"21" = icmp eq i32 %"20", 1
  br i1 %"19", label %main_bb19, label %main_bb22

main_bb19:                                        ; preds = %main_bb18
  br i1 %"21", label %main_mutex_lock.exit.i, label %main_bb21

main_mutex_lock.exit.i:                           ; preds = %main_bb19
  store i32 2, i32* @"'ldv_mutex", align 4
  %"22" = load i32* @"'ldv_mutex", align 4
  %"23" = icmp eq i32 %"22", 2
  br i1 %"23", label %main_mutex_unlock.exit.i, label %main_bb20

main_mutex_unlock.exit.i:                         ; preds = %main_mutex_lock.exit.i
  store i32 1, i32* @"'ldv_mutex", align 4
  store i32 0, i32* @"'open_called", align 4
  br label %main_misc_release.exit

main_bb20:                                        ; preds = %main_mutex_lock.exit.i
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_bb21:                                        ; preds = %main_bb19
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_bb22:                                        ; preds = %main_bb18
  br i1 %"21", label %main_mutex_lock.exit1.i, label %main_bb24

main_mutex_lock.exit1.i:                          ; preds = %main_bb22
  store i32 2, i32* @"'ldv_mutex", align 4
  %"24" = load i32* @"'ldv_mutex", align 4
  %"25" = icmp eq i32 %"24", 1
  br i1 %"25", label %main_mutex_lock.exit2.i, label %main_bb23

main_mutex_lock.exit2.i:                          ; preds = %main_mutex_lock.exit1.i
  store i32 2, i32* @"'ldv_mutex", align 4
  br label %main_misc_release.exit

main_bb23:                                        ; preds = %main_mutex_lock.exit1.i
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_bb24:                                        ; preds = %main_bb22
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_NewDefault:                                  ; preds = %main_LeafBlock2, %main_LeafBlock
  br label %main_misc_release.exit

main_bb25:                                        ; preds = %main_misc_release.exit
  %"26" = load i32* @"'ldv_mutex", align 4
  %"27" = icmp eq i32 %"26", 1
  br i1 %"27", label %main_check_final_state.exit, label %main_bb26

main_check_final_state.exit:                      ; preds = %main_bb25
  ret void

main_bb26:                                        ; preds = %main_bb25
  call void (...)* @__VERIFIER_error() #4
  unreachable
}

declare i32 @__VERIFIER_nondet_int() #2

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

