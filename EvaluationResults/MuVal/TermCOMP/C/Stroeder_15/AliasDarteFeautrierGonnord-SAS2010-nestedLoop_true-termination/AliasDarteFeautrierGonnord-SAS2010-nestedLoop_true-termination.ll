; ModuleID = 'Benchmarks/TermCOMP/C/Stroeder_15/AliasDarteFeautrierGonnord-SAS2010-nestedLoop_true-termination/AliasDarteFeautrierGonnord-SAS2010-nestedLoop_true-termination.bc'
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
  %"6" = icmp sle i32 0, %"3"
  %"7" = icmp sle i32 0, %"4"
  %or.cond = and i1 %"6", %"7"
  %"8" = icmp sle i32 0, %"5"
  %or.cond1 = and i1 %or.cond, %"8"
  br i1 %or.cond1, label %main_bb1, label %main_bb7

main_bb1:                                         ; preds = %main_bb0, %main_bb6
  %i.0 = phi i32 [ %"14", %main_bb6 ], [ 0, %main_bb0 ]
  %"9" = icmp slt i32 %i.0, %"3"
  br i1 %"9", label %main_bb2, label %main_bb7

main_bb2:                                         ; preds = %main_bb4, %main_bb1
  %j.0 = phi i32 [ 0, %main_bb1 ], [ %"11", %main_bb4 ]
  %i.1 = phi i32 [ %i.0, %main_bb1 ], [ %k.0, %main_bb4 ]
  %"10" = icmp slt i32 %j.0, %"4"
  br i1 %"10", label %main_bb3, label %main_bb6

main_bb3:                                         ; preds = %main_bb2
  %"11" = add nsw i32 %j.0, 1
  br label %main_bb4

main_bb4:                                         ; preds = %main_bb5, %main_bb3
  %k.0 = phi i32 [ %i.1, %main_bb3 ], [ %"13", %main_bb5 ]
  %"12" = icmp slt i32 %k.0, %"5"
  br i1 %"12", label %main_bb5, label %main_bb2

main_bb5:                                         ; preds = %main_bb4
  %"13" = add nsw i32 %k.0, 1
  br label %main_bb4

main_bb6:                                         ; preds = %main_bb2
  %"14" = add nsw i32 %i.1, 1
  br label %main_bb1

main_bb7:                                         ; preds = %main_bb1, %main_bb0
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

