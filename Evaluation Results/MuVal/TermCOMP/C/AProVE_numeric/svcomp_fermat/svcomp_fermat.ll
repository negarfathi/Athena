; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_numeric/svcomp_fermat/svcomp_fermat.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @fermat() #0 {
fermat_bb0:
  br label %fermat_bb1

fermat_bb1:                                       ; preds = %fermat_bb2, %fermat_bb0
  %b.0 = phi i32 [ 1, %fermat_bb0 ], [ %b.2, %fermat_bb2 ]
  %a.0 = phi i32 [ 1, %fermat_bb0 ], [ %., %fermat_bb2 ]
  %c.0 = phi i32 [ 1, %fermat_bb0 ], [ %c.1, %fermat_bb2 ]
  %"0" = mul nsw i32 %a.0, %a.0
  %"1" = mul nsw i32 %"0", %a.0
  %"2" = mul nsw i32 %b.0, %b.0
  %"3" = mul nsw i32 %"2", %b.0
  %"4" = mul nsw i32 %c.0, %c.0
  %"5" = mul nsw i32 %"4", %c.0
  %"6" = add nsw i32 %"3", %"5"
  %"7" = icmp eq i32 %"1", %"6"
  br i1 %"7", label %fermat_bb3, label %fermat_bb2

fermat_bb2:                                       ; preds = %fermat_bb1
  %"8" = add nsw i32 %a.0, 1
  %"9" = icmp sgt i32 %"8", 1000
  %"10" = add nsw i32 %b.0, 1
  %.b.0 = select i1 %"9", i32 %"10", i32 %b.0
  %. = select i1 %"9", i32 1, i32 %"8"
  %"11" = icmp sgt i32 %.b.0, 1000
  %"12" = add nsw i32 %c.0, 1
  %b.2 = select i1 %"11", i32 1, i32 %.b.0
  %c.1 = select i1 %"11", i32 %"12", i32 %c.0
  %"13" = icmp sgt i32 %c.1, 1000
  br i1 %"13", label %fermat_bb3, label %fermat_bb1

fermat_bb3:                                       ; preds = %fermat_bb2, %fermat_bb1
  %.0 = phi i32 [ 1, %fermat_bb1 ], [ 0, %fermat_bb2 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb4:
  br label %main_bb5

main_bb5:                                         ; preds = %main_bb6, %main_bb4
  %b.0.i = phi i32 [ 1, %main_bb4 ], [ %b.2.i, %main_bb6 ]
  %a.0.i = phi i32 [ 1, %main_bb4 ], [ %..i, %main_bb6 ]
  %c.0.i = phi i32 [ 1, %main_bb4 ], [ %c.1.i, %main_bb6 ]
  %"14" = mul nsw i32 %a.0.i, %a.0.i
  %"15" = mul nsw i32 %"14", %a.0.i
  %"16" = mul nsw i32 %b.0.i, %b.0.i
  %"17" = mul nsw i32 %"16", %b.0.i
  %"18" = mul nsw i32 %c.0.i, %c.0.i
  %"19" = mul nsw i32 %"18", %c.0.i
  %"20" = add nsw i32 %"17", %"19"
  %"21" = icmp eq i32 %"15", %"20"
  br i1 %"21", label %main_fermat.exit, label %main_bb6

main_bb6:                                         ; preds = %main_bb5
  %"22" = add nsw i32 %a.0.i, 1
  %"23" = icmp sgt i32 %"22", 1000
  %"24" = add nsw i32 %b.0.i, 1
  %.b.0.i = select i1 %"23", i32 %"24", i32 %b.0.i
  %..i = select i1 %"23", i32 1, i32 %"22"
  %"25" = icmp sgt i32 %.b.0.i, 1000
  %"26" = add nsw i32 %c.0.i, 1
  %b.2.i = select i1 %"25", i32 1, i32 %.b.0.i
  %c.1.i = select i1 %"25", i32 %"26", i32 %c.0.i
  %"27" = icmp sgt i32 %c.1.i, 1000
  br i1 %"27", label %main_fermat.exit, label %main_bb5

main_fermat.exit:                                 ; preds = %main_bb5, %main_bb6
  %.0.i = phi i32 [ 1, %main_bb5 ], [ 0, %main_bb6 ]
  ret i32 %.0.i
}

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

