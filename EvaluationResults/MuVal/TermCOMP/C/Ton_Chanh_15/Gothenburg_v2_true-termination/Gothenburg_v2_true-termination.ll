; ModuleID = 'Benchmarks/TermCOMP/C/Ton_Chanh_15/Gothenburg_v2_true-termination/Gothenburg_v2_true-termination.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  %"0" = call i32 @__VERIFIER_nondet_int()
  %"1" = call i32 @__VERIFIER_nondet_int()
  %"2" = call i32 @__VERIFIER_nondet_int()
  %"3" = call i32 @__VERIFIER_nondet_int()
  %"4" = add nsw i32 %"1", 1
  %"5" = icmp eq i32 %"0", %"4"
  %"6" = icmp slt i32 %"2", 0
  %or.cond = and i1 %"5", %"6"
  br i1 %or.cond, label %main_bb1, label %main_bb3

main_bb1:                                         ; preds = %main_bb0, %main_bb2
  %y.0 = phi i32 [ %"14", %main_bb2 ], [ %"3", %main_bb0 ]
  %x.0 = phi i32 [ %"11", %main_bb2 ], [ %"2", %main_bb0 ]
  %"7" = icmp sge i32 %x.0, 0
  %"8" = icmp sge i32 %y.0, 0
  %. = select i1 %"7", i1 true, i1 %"8"
  br i1 %., label %main_bb2, label %main_bb3

main_bb2:                                         ; preds = %main_bb1
  %"9" = add nsw i32 %x.0, %"0"
  %"10" = sub nsw i32 %"9", %"1"
  %"11" = sub nsw i32 %"10", 1
  %"12" = add nsw i32 %y.0, %"1"
  %"13" = sub nsw i32 %"12", %"0"
  %"14" = sub nsw i32 %"13", 1
  br label %main_bb1

main_bb3:                                         ; preds = %main_bb1, %main_bb0
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

