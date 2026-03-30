; ModuleID = 'Benchmarks/TermCOMP/C/SV-COMP_Termination_Category/BradleyMannaSipma-CAV2005-Fig1-modified_false-termination/BradleyMannaSipma-CAV2005-Fig1-modified_false-termination.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @gcd(i32 %y1, i32 %y2) #0 {
gcd_bb0:
  br label %gcd_bb1

gcd_bb1:                                          ; preds = %gcd_bb2, %gcd_bb0
  %.01 = phi i32 [ %y2, %gcd_bb0 ], [ %.12, %gcd_bb2 ]
  %.0 = phi i32 [ %y1, %gcd_bb0 ], [ %.1, %gcd_bb2 ]
  %"0" = icmp ne i32 %.0, %.01
  br i1 %"0", label %gcd_bb2, label %gcd_bb3

gcd_bb2:                                          ; preds = %gcd_bb1
  %"1" = icmp sgt i32 %.0, %.01
  %"2" = sub nsw i32 %.0, %.01
  %"3" = sub nsw i32 %.01, %.0
  %.12 = select i1 %"1", i32 %.01, i32 %"3"
  %.1 = select i1 %"1", i32 %"2", i32 %.0
  br label %gcd_bb1

gcd_bb3:                                          ; preds = %gcd_bb1
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb4:
  %"4" = call i32 @__VERIFIER_nondet_int()
  %"5" = call i32 @__VERIFIER_nondet_int()
  %"6" = icmp sge i32 %"4", 0
  %"7" = icmp sge i32 %"5", 0
  %or.cond = and i1 %"6", %"7"
  br i1 %or.cond, label %main_bb5, label %main_gcd.exit

main_bb5:                                         ; preds = %main_bb4, %main_bb6
  %.01.i = phi i32 [ %.12.i, %main_bb6 ], [ %"5", %main_bb4 ]
  %.0.i = phi i32 [ %.1.i, %main_bb6 ], [ %"4", %main_bb4 ]
  %"8" = icmp ne i32 %.0.i, %.01.i
  br i1 %"8", label %main_bb6, label %main_gcd.exit

main_bb6:                                         ; preds = %main_bb5
  %"9" = icmp sgt i32 %.0.i, %.01.i
  %"10" = sub nsw i32 %.0.i, %.01.i
  %"11" = sub nsw i32 %.01.i, %.0.i
  %.12.i = select i1 %"9", i32 %.01.i, i32 %"11"
  %.1.i = select i1 %"9", i32 %"10", i32 %.0.i
  br label %main_bb5

main_gcd.exit:                                    ; preds = %main_bb5, %main_bb4
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

