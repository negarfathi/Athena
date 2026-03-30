; ModuleID = 'Benchmarks/TermCOMP/C/Stroeder_15/AliasDarteFeautrierGonnord-SAS2010-counterex1a_true-termination/AliasDarteFeautrierGonnord-SAS2010-counterex1a_true-termination.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  %"0" = call i32 @__VERIFIER_nondet_int()
  %"1" = call i32 @__VERIFIER_nondet_int()
  %"2" = call i32 @__VERIFIER_nondet_int()
  %"3" = call i32 @__VERIFIER_nondet_int()
  br label %main_bb1

main_bb1:                                         ; preds = %main_bb3, %main_bb4, %main_bb0
  %y.0 = phi i32 [ %"3", %main_bb0 ], [ %"8", %main_bb3 ], [ %"11", %main_bb4 ]
  %x.0 = phi i32 [ %"2", %main_bb0 ], [ %x.0, %main_bb3 ], [ %.x.0, %main_bb4 ]
  %b.0 = phi i32 [ %"1", %main_bb0 ], [ %.b.0, %main_bb3 ], [ %.b.01, %main_bb4 ]
  %"4" = icmp sge i32 %x.0, 0
  %"5" = icmp sle i32 0, %y.0
  %or.cond = and i1 %"4", %"5"
  %"6" = icmp sle i32 %y.0, %"0"
  %or.cond2 = and i1 %or.cond, %"6"
  br i1 %or.cond2, label %main_bb2, label %main_.critedge

main_bb2:                                         ; preds = %main_bb1
  %"7" = icmp eq i32 %b.0, 0
  br i1 %"7", label %main_bb3, label %main_bb4

main_bb3:                                         ; preds = %main_bb2
  %"8" = add nsw i32 %y.0, 1
  %"9" = call i32 @__VERIFIER_nondet_int()
  %"10" = icmp ne i32 %"9", 0
  %.b.0 = select i1 %"10", i32 1, i32 %b.0
  br label %main_bb1

main_bb4:                                         ; preds = %main_bb2
  %"11" = sub nsw i32 %y.0, 1
  %"12" = call i32 @__VERIFIER_nondet_int()
  %"13" = icmp ne i32 %"12", 0
  %"14" = sub nsw i32 %x.0, 1
  %.x.0 = select i1 %"13", i32 %"14", i32 %x.0
  %.b.01 = select i1 %"13", i32 0, i32 %b.0
  br label %main_bb1

main_.critedge:                                   ; preds = %main_bb1
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

