; ModuleID = 'Benchmarks/TermCOMP/C/Stroeder_15/svcomp_fermat/svcomp_fermat.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  br label %main_bb1

main_bb1:                                         ; preds = %main_bb2, %main_bb0
  %b.0 = phi i32 [ 1, %main_bb0 ], [ %b.2, %main_bb2 ]
  %a.0 = phi i32 [ 1, %main_bb0 ], [ %.1, %main_bb2 ]
  %c.0 = phi i32 [ 1, %main_bb0 ], [ %c.1, %main_bb2 ]
  %"0" = mul nsw i32 %a.0, %a.0
  %"1" = mul nsw i32 %"0", %a.0
  %"2" = mul nsw i32 %b.0, %b.0
  %"3" = mul nsw i32 %"2", %b.0
  %"4" = mul nsw i32 %c.0, %c.0
  %"5" = mul nsw i32 %"4", %c.0
  %"6" = add nsw i32 %"3", %"5"
  %"7" = icmp ne i32 %"1", %"6"
  %"8" = icmp sle i32 %c.0, 1000
  %. = select i1 %"7", i1 %"8", i1 false
  br i1 %., label %main_bb2, label %main_bb3

main_bb2:                                         ; preds = %main_bb1
  %"9" = add nsw i32 %a.0, 1
  %"10" = icmp sgt i32 %"9", 1000
  %"11" = add nsw i32 %b.0, 1
  %.b.0 = select i1 %"10", i32 %"11", i32 %b.0
  %.1 = select i1 %"10", i32 1, i32 %"9"
  %"12" = icmp sgt i32 %.b.0, 1000
  %"13" = add nsw i32 %c.0, 1
  %b.2 = select i1 %"12", i32 1, i32 %.b.0
  %c.1 = select i1 %"12", i32 %"13", i32 %c.0
  br label %main_bb1

main_bb3:                                         ; preds = %main_bb1
  ret i32 0
}

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

