; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_numeric/svcomp_flag/svcomp_flag.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @f(i32 %x, i32 %y) #0 {
f_bb0:
  br label %f_bb1

f_bb1:                                            ; preds = %f_bb2, %f_bb0
  %c.0 = phi i32 [ 0, %f_bb0 ], [ %"4", %f_bb2 ]
  %flag.0 = phi i32 [ 1, %f_bb0 ], [ %"3", %f_bb2 ]
  %.0 = phi i32 [ %x, %f_bb0 ], [ %"1", %f_bb2 ]
  %"0" = icmp ne i32 %flag.0, 0
  br i1 %"0", label %f_bb2, label %f_bb3

f_bb2:                                            ; preds = %f_bb1
  %"1" = add nsw i32 %.0, 1
  %"2" = icmp slt i32 %.0, %y
  %"3" = zext i1 %"2" to i32
  %"4" = add nsw i32 %c.0, 1
  br label %f_bb1

f_bb3:                                            ; preds = %f_bb1
  ret i32 %c.0
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb4:
  %"5" = call i32 @__VERIFIER_nondet_int()
  %"6" = call i32 @__VERIFIER_nondet_int()
  br label %main_bb5

main_bb5:                                         ; preds = %main_bb6, %main_bb4
  %c.0.i = phi i32 [ 0, %main_bb4 ], [ %"11", %main_bb6 ]
  %flag.0.i = phi i32 [ 1, %main_bb4 ], [ %"10", %main_bb6 ]
  %.0.i = phi i32 [ %"5", %main_bb4 ], [ %"8", %main_bb6 ]
  %"7" = icmp ne i32 %flag.0.i, 0
  br i1 %"7", label %main_bb6, label %main_f.exit

main_bb6:                                         ; preds = %main_bb5
  %"8" = add nsw i32 %.0.i, 1
  %"9" = icmp slt i32 %.0.i, %"6"
  %"10" = zext i1 %"9" to i32
  %"11" = add nsw i32 %c.0.i, 1
  br label %main_bb5

main_f.exit:                                      ; preds = %main_bb5
  ret i32 %c.0.i
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

