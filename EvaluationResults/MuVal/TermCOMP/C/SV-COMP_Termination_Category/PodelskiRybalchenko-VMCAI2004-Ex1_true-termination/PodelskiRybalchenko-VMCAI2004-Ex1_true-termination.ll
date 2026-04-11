; ModuleID = 'Benchmarks/TermCOMP/C/SV-COMP_Termination_Category/PodelskiRybalchenko-VMCAI2004-Ex1_true-termination/PodelskiRybalchenko-VMCAI2004-Ex1_true-termination.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @absMathInteger(i32 %i) #0 {
absMathInteger_bb0:
  %"0" = icmp sge i32 %i, 0
  %"1" = sub nsw i32 0, %i
  %.0 = select i1 %"0", i32 %i, i32 %"1"
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb1:
  %"2" = call i32 @__VERIFIER_nondet_int()
  %"3" = call i32 @__VERIFIER_nondet_int()
  br label %main_bb2

main_bb2:                                         ; preds = %main_bb3, %main_bb1
  %j.0 = phi i32 [ %"3", %main_bb1 ], [ %"14", %main_bb3 ]
  %i.0 = phi i32 [ %"2", %main_bb1 ], [ %"9", %main_bb3 ]
  %"4" = sub nsw i32 %i.0, %j.0
  %"5" = icmp sge i32 %"4", 1
  br i1 %"5", label %main_bb3, label %main_bb4

main_bb3:                                         ; preds = %main_bb2
  %"6" = call i32 @__VERIFIER_nondet_int()
  %"7" = icmp sge i32 %"6", 0
  %"8" = sub nsw i32 0, %"6"
  %.0.i = select i1 %"7", i32 %"6", i32 %"8"
  %"9" = sub nsw i32 %i.0, %.0.i
  %"10" = call i32 @__VERIFIER_nondet_int()
  %"11" = icmp sge i32 %"10", 0
  %"12" = sub nsw i32 0, %"10"
  %.0.i1 = select i1 %"11", i32 %"10", i32 %"12"
  %"13" = add nsw i32 %.0.i1, 1
  %"14" = add nsw i32 %j.0, %"13"
  br label %main_bb2

main_bb4:                                         ; preds = %main_bb2
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

