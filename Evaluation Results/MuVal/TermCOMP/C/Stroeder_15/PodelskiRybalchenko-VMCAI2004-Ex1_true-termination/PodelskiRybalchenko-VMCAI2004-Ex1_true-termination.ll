; ModuleID = 'Benchmarks/TermCOMP/C/Stroeder_15/PodelskiRybalchenko-VMCAI2004-Ex1_true-termination/PodelskiRybalchenko-VMCAI2004-Ex1_true-termination.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  %"0" = call i32 @__VERIFIER_nondet_int()
  %"1" = call i32 @__VERIFIER_nondet_int()
  br label %main_bb1

main_bb1:                                         ; preds = %main_bb2, %main_bb0
  %j.0 = phi i32 [ %"1", %main_bb0 ], [ %"12", %main_bb2 ]
  %i.0 = phi i32 [ %"0", %main_bb0 ], [ %"7", %main_bb2 ]
  %"2" = sub nsw i32 %i.0, %j.0
  %"3" = icmp sge i32 %"2", 1
  br i1 %"3", label %main_bb2, label %main_bb3

main_bb2:                                         ; preds = %main_bb1
  %"4" = call i32 @__VERIFIER_nondet_int()
  %"5" = icmp slt i32 %"4", 0
  %"6" = sub nsw i32 0, %"4"
  %. = select i1 %"5", i32 %"6", i32 %"4"
  %"7" = sub nsw i32 %i.0, %.
  %"8" = call i32 @__VERIFIER_nondet_int()
  %"9" = icmp slt i32 %"8", 0
  %"10" = sub nsw i32 0, %"8"
  %nondetPos.0 = select i1 %"9", i32 %"10", i32 %"8"
  %"11" = add nsw i32 %nondetPos.0, 1
  %"12" = add nsw i32 %j.0, %"11"
  br label %main_bb1

main_bb3:                                         ; preds = %main_bb1
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

