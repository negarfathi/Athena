; ModuleID = 'Benchmarks/TermCOMP/C/SV-COMP_Termination_Category/ChawdharyCookGulwaniSagivYang-ESOP2008-aaron4_true-termination/ChawdharyCookGulwaniSagivYang-ESOP2008-aaron4_true-termination.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  %"0" = call i32 @__VERIFIER_nondet_int()
  %"1" = call i32 @__VERIFIER_nondet_int()
  %"2" = call i32 @__VERIFIER_nondet_int()
  %"3" = call i32 @__VERIFIER_nondet_int()
  %"4" = call i32 @__VERIFIER_nondet_int()
  %"5" = call i32 @__VERIFIER_nondet_int()
  br label %main_bb1

main_bb1:                                         ; preds = %main_bb8, %main_bb7, %main_bb11, %main_bb12, %main_bb10, %main_bb0
  %k.0 = phi i32 [ %"2", %main_bb0 ], [ %"19", %main_bb7 ], [ %k.0, %main_bb8 ], [ %k.0, %main_bb10 ], [ %"27", %main_bb12 ], [ %k.0, %main_bb11 ]
  %j.0 = phi i32 [ %"1", %main_bb0 ], [ %"18", %main_bb7 ], [ %j.0, %main_bb8 ], [ %j.0, %main_bb10 ], [ %"26", %main_bb12 ], [ %j.0, %main_bb11 ]
  %i.0 = phi i32 [ %"0", %main_bb0 ], [ %i.0, %main_bb7 ], [ %"20", %main_bb8 ], [ %"23", %main_bb10 ], [ %i.0, %main_bb12 ], [ %i.0, %main_bb11 ]
  %tk.0 = phi i32 [ %"5", %main_bb0 ], [ %k.0, %main_bb7 ], [ %tk.0, %main_bb8 ], [ %tk.0, %main_bb10 ], [ %k.0, %main_bb12 ], [ %tk.0, %main_bb11 ]
  %"6" = icmp sge i32 %"3", %i.0
  %"7" = icmp sge i32 %"4", %j.0
  %or.cond = and i1 %"6", %"7"
  br i1 %or.cond, label %main_bb3, label %main_bb2

main_bb2:                                         ; preds = %main_bb1
  %"8" = icmp sge i32 %"3", %i.0
  %"9" = icmp sle i32 %"4", %j.0
  %or.cond1 = and i1 %"8", %"9"
  br i1 %or.cond1, label %main_bb3, label %main_bb4

main_bb3:                                         ; preds = %main_bb2, %main_bb1
  %.old = add nsw i32 %tk.0, 1
  %.old6 = icmp sge i32 %k.0, %.old
  br i1 %.old6, label %main_bb5, label %main_.critedge

main_bb4:                                         ; preds = %main_bb2
  %"10" = icmp sle i32 %"3", %i.0
  %"11" = icmp sge i32 %"4", %j.0
  %or.cond2 = and i1 %"10", %"11"
  %"12" = add nsw i32 %tk.0, 1
  %"13" = icmp sge i32 %k.0, %"12"
  %or.cond7 = and i1 %or.cond2, %"13"
  br i1 %or.cond7, label %main_bb5, label %main_.critedge

main_bb5:                                         ; preds = %main_bb4, %main_bb3
  %"14" = icmp sge i32 %"3", %i.0
  %"15" = icmp sge i32 %"4", %j.0
  %or.cond3 = and i1 %"14", %"15"
  br i1 %or.cond3, label %main_bb6, label %main_bb9

main_bb6:                                         ; preds = %main_bb5
  %"16" = call i32 @__VERIFIER_nondet_int()
  %"17" = icmp ne i32 %"16", 0
  br i1 %"17", label %main_bb7, label %main_bb8

main_bb7:                                         ; preds = %main_bb6
  %"18" = add nsw i32 %j.0, %k.0
  %"19" = call i32 @__VERIFIER_nondet_int()
  br label %main_bb1

main_bb8:                                         ; preds = %main_bb6
  %"20" = add nsw i32 %i.0, 1
  br label %main_bb1

main_bb9:                                         ; preds = %main_bb5
  %"21" = icmp sge i32 %"3", %i.0
  %"22" = icmp sle i32 %"4", %j.0
  %or.cond4 = and i1 %"21", %"22"
  br i1 %or.cond4, label %main_bb10, label %main_bb11

main_bb10:                                        ; preds = %main_bb9
  %"23" = add nsw i32 %i.0, 1
  br label %main_bb1

main_bb11:                                        ; preds = %main_bb9
  %"24" = icmp sle i32 %"3", %i.0
  %"25" = icmp sge i32 %"4", %j.0
  %or.cond5 = and i1 %"24", %"25"
  br i1 %or.cond5, label %main_bb12, label %main_bb1

main_bb12:                                        ; preds = %main_bb11
  %"26" = add nsw i32 %j.0, %k.0
  %"27" = call i32 @__VERIFIER_nondet_int()
  br label %main_bb1

main_.critedge:                                   ; preds = %main_bb4, %main_bb3
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

