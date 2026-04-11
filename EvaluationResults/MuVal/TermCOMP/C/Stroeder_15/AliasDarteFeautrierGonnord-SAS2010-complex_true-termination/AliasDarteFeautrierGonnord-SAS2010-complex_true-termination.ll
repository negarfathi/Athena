; ModuleID = 'Benchmarks/TermCOMP/C/Stroeder_15/AliasDarteFeautrierGonnord-SAS2010-complex_true-termination/AliasDarteFeautrierGonnord-SAS2010-complex_true-termination.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  %"0" = call i32 @__VERIFIER_nondet_int()
  %"1" = call i32 @__VERIFIER_nondet_int()
  br label %main_bb1

main_bb1:                                         ; preds = %main_bb4, %main_bb0
  %a.0 = phi i32 [ %"0", %main_bb0 ], [ %"11", %main_bb4 ]
  %b.0 = phi i32 [ %"1", %main_bb0 ], [ %"12", %main_bb4 ]
  %"2" = icmp slt i32 %a.0, 30
  br i1 %"2", label %main_bb2, label %main_bb5

main_bb2:                                         ; preds = %main_bb3, %main_bb1
  %a.1 = phi i32 [ %a.0, %main_bb1 ], [ %a.2, %main_bb3 ]
  %b.1 = phi i32 [ %b.0, %main_bb1 ], [ %b.2, %main_bb3 ]
  %"3" = icmp slt i32 %b.1, %a.1
  br i1 %"3", label %main_bb3, label %main_bb4

main_bb3:                                         ; preds = %main_bb2
  %"4" = icmp sgt i32 %b.1, 5
  %"5" = add nsw i32 %b.1, 7
  %"6" = add nsw i32 %b.1, 2
  %b.2 = select i1 %"4", i32 %"5", i32 %"6"
  %"7" = icmp sge i32 %b.2, 10
  %"8" = icmp sle i32 %b.2, 12
  %or.cond = and i1 %"7", %"8"
  %"9" = add nsw i32 %a.1, 10
  %"10" = add nsw i32 %a.1, 1
  %a.2 = select i1 %or.cond, i32 %"9", i32 %"10"
  br label %main_bb2

main_bb4:                                         ; preds = %main_bb2
  %"11" = add nsw i32 %a.1, 2
  %"12" = sub nsw i32 %b.1, 10
  br label %main_bb1

main_bb5:                                         ; preds = %main_bb1
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

