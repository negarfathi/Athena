; ModuleID = 'Benchmarks/TermCOMP/C/SV-COMP_Termination_Category/gcd1_true-termination/gcd1_true-termination.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @gcd(i32 %x, i32 %y) #0 {
gcd_bb0:
  %"0" = icmp slt i32 %x, 0
  %"1" = sub nsw i32 0, %x
  %.x = select i1 %"0", i32 %"1", i32 %x
  %"2" = icmp slt i32 %y, 0
  %"3" = sub nsw i32 0, %y
  %.01 = select i1 %"2", i32 %"3", i32 %y
  br label %gcd_bb1

gcd_bb1:                                          ; preds = %gcd_bb2, %gcd_bb0
  %.12 = phi i32 [ %.01, %gcd_bb0 ], [ %r.0, %gcd_bb2 ]
  %.1 = phi i32 [ %.x, %gcd_bb0 ], [ %.12, %gcd_bb2 ]
  %"4" = icmp sgt i32 %.12, 0
  br i1 %"4", label %gcd_bb2, label %gcd_bb4

gcd_bb2:                                          ; preds = %gcd_bb1, %gcd_bb3
  %r.0 = phi i32 [ %"6", %gcd_bb3 ], [ %.1, %gcd_bb1 ]
  %"5" = icmp sge i32 %r.0, %.12
  br i1 %"5", label %gcd_bb3, label %gcd_bb1

gcd_bb3:                                          ; preds = %gcd_bb2
  %"6" = sub nsw i32 %r.0, %.12
  br label %gcd_bb2

gcd_bb4:                                          ; preds = %gcd_bb1
  ret i32 %.1
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb5:
  %"7" = call i32 @__VERIFIER_nondet_int()
  %"8" = call i32 @__VERIFIER_nondet_int()
  %"9" = icmp slt i32 %"7", 0
  %"10" = sub nsw i32 0, %"7"
  %.x.i = select i1 %"9", i32 %"10", i32 %"7"
  %"11" = icmp slt i32 %"8", 0
  %"12" = sub nsw i32 0, %"8"
  %.01.i = select i1 %"11", i32 %"12", i32 %"8"
  br label %main_bb6

main_bb6:                                         ; preds = %main_bb7, %main_bb5
  %.12.i = phi i32 [ %.01.i, %main_bb5 ], [ %r.0.i, %main_bb7 ]
  %.1.i = phi i32 [ %.x.i, %main_bb5 ], [ %.12.i, %main_bb7 ]
  %"13" = icmp sgt i32 %.12.i, 0
  br i1 %"13", label %main_bb7, label %main_gcd.exit

main_bb7:                                         ; preds = %main_bb8, %main_bb6
  %r.0.i = phi i32 [ %"15", %main_bb8 ], [ %.1.i, %main_bb6 ]
  %"14" = icmp sge i32 %r.0.i, %.12.i
  br i1 %"14", label %main_bb8, label %main_bb6

main_bb8:                                         ; preds = %main_bb7
  %"15" = sub nsw i32 %r.0.i, %.12.i
  br label %main_bb7

main_gcd.exit:                                    ; preds = %main_bb6
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

