; ModuleID = 'Benchmarks/TermCOMP/C/Stroeder_15/Narrowing/Narrowing.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  %"0" = call i32 @__VERIFIER_nondet_int()
  br label %main_bb1

main_bb1:                                         ; preds = %main_bb2, %main_bb0
  %range.0 = phi i32 [ 20, %main_bb0 ], [ %.range.0, %main_bb2 ]
  %i.0 = phi i32 [ %"0", %main_bb0 ], [ %i.2, %main_bb2 ]
  %up.0 = phi i32 [ 0, %main_bb0 ], [ %up.2, %main_bb2 ]
  %"1" = icmp sle i32 0, %i.0
  %"2" = icmp sle i32 %i.0, %range.0
  %. = select i1 %"1", i1 %"2", i1 false
  br i1 %., label %main_bb2, label %main_bb3

main_bb2:                                         ; preds = %main_bb1
  %"3" = icmp eq i32 %i.0, 0
  %.up.0 = select i1 %"3", i32 1, i32 %up.0
  %"4" = icmp eq i32 %i.0, %range.0
  %up.2 = select i1 %"4", i32 0, i32 %.up.0
  %"5" = icmp eq i32 %up.2, 1
  %"6" = add nsw i32 %i.0, 1
  %.i.0 = select i1 %"5", i32 %"6", i32 %i.0
  %"7" = icmp eq i32 %up.2, 0
  %"8" = sub nsw i32 %.i.0, 1
  %i.2 = select i1 %"7", i32 %"8", i32 %.i.0
  %"9" = sub nsw i32 %range.0, 2
  %"10" = icmp eq i32 %i.2, %"9"
  %"11" = sub nsw i32 %range.0, 1
  %.range.0 = select i1 %"10", i32 %"11", i32 %range.0
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

