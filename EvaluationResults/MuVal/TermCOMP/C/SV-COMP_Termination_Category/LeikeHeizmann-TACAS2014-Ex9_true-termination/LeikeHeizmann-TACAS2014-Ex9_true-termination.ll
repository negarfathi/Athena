; ModuleID = 'Benchmarks/TermCOMP/C/SV-COMP_Termination_Category/LeikeHeizmann-TACAS2014-Ex9_true-termination/LeikeHeizmann-TACAS2014-Ex9_true-termination.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  %"0" = call i32 @__VERIFIER_nondet_int()
  %"1" = call i32 @__VERIFIER_nondet_int()
  br label %main_bb1

main_bb1:                                         ; preds = %main_bb3, %main_bb5, %main_bb0
  %q.0 = phi i32 [ %"0", %main_bb0 ], [ %"5", %main_bb3 ], [ %q.0, %main_bb5 ]
  %p.0 = phi i32 [ %"1", %main_bb0 ], [ %p.0, %main_bb3 ], [ %"7", %main_bb5 ]
  %"2" = icmp sgt i32 %q.0, 0
  %"3" = icmp sgt i32 %p.0, 0
  %. = select i1 %"2", i1 %"3", i1 false
  br i1 %., label %main_bb2, label %main_bb6

main_bb2:                                         ; preds = %main_bb1
  %"4" = icmp slt i32 %q.0, %p.0
  br i1 %"4", label %main_bb3, label %main_bb4

main_bb3:                                         ; preds = %main_bb2
  %"5" = sub nsw i32 %q.0, 1
  br label %main_bb1

main_bb4:                                         ; preds = %main_bb2
  %"6" = icmp slt i32 %p.0, %q.0
  br i1 %"6", label %main_bb5, label %main_bb6

main_bb5:                                         ; preds = %main_bb4
  %"7" = sub nsw i32 %p.0, 1
  br label %main_bb1

main_bb6:                                         ; preds = %main_bb4, %main_bb1
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

