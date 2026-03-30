; ModuleID = 'Benchmarks/TermCOMP/C/Stroeder_15/GulwaniJainKoskinen-PLDI2009-Fig1_true-termination/GulwaniJainKoskinen-PLDI2009-Fig1_true-termination.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  %"0" = call i32 @__VERIFIER_nondet_int()
  %"1" = call i32 @__VERIFIER_nondet_int()
  %"2" = icmp sle i32 0, %"0"
  %"3" = icmp slt i32 %"0", %"1"
  %or.cond = and i1 %"2", %"3"
  br i1 %or.cond, label %main_bb1, label %main_.critedge

main_bb1:                                         ; preds = %main_bb0
  %"4" = add nsw i32 %"0", 1
  br label %main_bb2

main_bb2:                                         ; preds = %main_bb4, %main_bb1
  %tmp.0 = phi i32 [ %"4", %main_bb1 ], [ %tmp.1, %main_bb4 ]
  %"5" = icmp ne i32 %tmp.0, %"0"
  br i1 %"5", label %main_bb3, label %main_.critedge

main_bb3:                                         ; preds = %main_bb2
  %"6" = call i32 @__VERIFIER_nondet_int()
  %"7" = icmp ne i32 %"6", 0
  br i1 %"7", label %main_bb4, label %main_.critedge

main_bb4:                                         ; preds = %main_bb3
  %"8" = icmp sle i32 %tmp.0, %"1"
  %"9" = add nsw i32 %tmp.0, 1
  %tmp.1 = select i1 %"8", i32 %"9", i32 0
  br label %main_bb2

main_.critedge:                                   ; preds = %main_bb3, %main_bb2, %main_bb0
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

