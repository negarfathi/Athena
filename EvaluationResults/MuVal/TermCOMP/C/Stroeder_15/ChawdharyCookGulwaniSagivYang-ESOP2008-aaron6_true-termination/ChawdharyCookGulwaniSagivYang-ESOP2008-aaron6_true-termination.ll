; ModuleID = 'Benchmarks/TermCOMP/C/Stroeder_15/ChawdharyCookGulwaniSagivYang-ESOP2008-aaron6_true-termination/ChawdharyCookGulwaniSagivYang-ESOP2008-aaron6_true-termination.bc'
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
  %"5" = add nsw i32 %"0", %"2"
  %"6" = icmp sge i32 %"5", 0
  br i1 %"6", label %main_bb1, label %main_.critedge

main_bb1:                                         ; preds = %main_bb4, %main_bb3, %main_bb0
  %ty.0 = phi i32 [ %"3", %main_bb0 ], [ %y.0, %main_bb4 ], [ %ty.0, %main_bb3 ]
  %y.0 = phi i32 [ %"2", %main_bb0 ], [ %"18", %main_bb4 ], [ %y.0, %main_bb3 ]
  %tx.0 = phi i32 [ %"1", %main_bb0 ], [ %x.0, %main_bb3 ], [ %x.0, %main_bb4 ]
  %x.0 = phi i32 [ %"0", %main_bb0 ], [ %"17", %main_bb4 ], [ %"17", %main_bb3 ]
  %"7" = icmp sle i32 %x.0, %"4"
  br i1 %"7", label %main_bb2, label %main_.critedge

main_bb2:                                         ; preds = %main_bb1
  %"8" = mul nsw i32 2, %tx.0
  %"9" = add nsw i32 %"8", %y.0
  %"10" = icmp sge i32 %x.0, %"9"
  %"11" = add nsw i32 %ty.0, 1
  %"12" = icmp sge i32 %y.0, %"11"
  %or.cond = and i1 %"10", %"12"
  %"13" = add nsw i32 %tx.0, 1
  %"14" = icmp sge i32 %x.0, %"13"
  %or.cond4 = and i1 %or.cond, %"14"
  br i1 %or.cond4, label %main_bb3, label %main_.critedge

main_bb3:                                         ; preds = %main_bb2
  %"15" = call i32 @__VERIFIER_nondet_int()
  %"16" = icmp ne i32 %"15", 0
  %"17" = call i32 @__VERIFIER_nondet_int()
  br i1 %"16", label %main_bb4, label %main_bb1

main_bb4:                                         ; preds = %main_bb3
  %"18" = call i32 @__VERIFIER_nondet_int()
  br label %main_bb1

main_.critedge:                                   ; preds = %main_bb2, %main_bb1, %main_bb0
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

