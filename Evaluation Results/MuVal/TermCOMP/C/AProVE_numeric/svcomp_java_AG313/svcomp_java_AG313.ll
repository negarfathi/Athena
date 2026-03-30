; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_numeric/svcomp_java_AG313/svcomp_java_AG313.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @quot(i32 %x, i32 %y) #0 {
quot_bb0:
  %"0" = icmp eq i32 %x, 0
  br i1 %"0", label %quot_bb3, label %quot_bb1

quot_bb1:                                         ; preds = %quot_bb0, %quot_bb2
  %i.0 = phi i32 [ %"3", %quot_bb2 ], [ 0, %quot_bb0 ]
  %.01 = phi i32 [ %"6", %quot_bb2 ], [ %x, %quot_bb0 ]
  %"1" = icmp sgt i32 %.01, 0
  %"2" = icmp sgt i32 %y, 0
  %. = select i1 %"1", i1 %"2", i1 false
  br i1 %., label %quot_bb2, label %quot_bb3

quot_bb2:                                         ; preds = %quot_bb1
  %"3" = add nsw i32 %i.0, 1
  %"4" = sub nsw i32 %.01, 1
  %"5" = sub nsw i32 %y, 1
  %"6" = sub nsw i32 %"4", %"5"
  br label %quot_bb1

quot_bb3:                                         ; preds = %quot_bb1, %quot_bb0
  %.0 = phi i32 [ 0, %quot_bb0 ], [ %i.0, %quot_bb1 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb4:
  %"7" = call i32 @__VERIFIER_nondet_int()
  %"8" = call i32 @__VERIFIER_nondet_int()
  %"9" = icmp eq i32 %"7", 0
  br i1 %"9", label %main_quot.exit, label %main_bb5

main_bb5:                                         ; preds = %main_bb6, %main_bb4
  %i.0.i = phi i32 [ %"12", %main_bb6 ], [ 0, %main_bb4 ]
  %.01.i = phi i32 [ %"15", %main_bb6 ], [ %"7", %main_bb4 ]
  %"10" = icmp sgt i32 %.01.i, 0
  %"11" = icmp sgt i32 %"8", 0
  %..i = select i1 %"10", i1 %"11", i1 false
  br i1 %..i, label %main_bb6, label %main_quot.exit

main_bb6:                                         ; preds = %main_bb5
  %"12" = add nsw i32 %i.0.i, 1
  %"13" = sub nsw i32 %.01.i, 1
  %"14" = sub nsw i32 %"8", 1
  %"15" = sub nsw i32 %"13", %"14"
  br label %main_bb5

main_quot.exit:                                   ; preds = %main_bb4, %main_bb5
  %.0.i = phi i32 [ 0, %main_bb4 ], [ %i.0.i, %main_bb5 ]
  ret i32 %.0.i
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

