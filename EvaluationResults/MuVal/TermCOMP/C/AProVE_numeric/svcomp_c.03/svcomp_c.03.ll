; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_numeric/svcomp_c.03/svcomp_c.03.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @test_fun(i32 %x, i32 %y, i32 %z) #0 {
test_fun_bb0:
  br label %test_fun_bb1

test_fun_bb1:                                     ; preds = %test_fun_bb2, %test_fun_bb0
  %c.0 = phi i32 [ 0, %test_fun_bb0 ], [ %"4", %test_fun_bb2 ]
  %.01 = phi i32 [ %z, %test_fun_bb0 ], [ %.12, %test_fun_bb2 ]
  %.0 = phi i32 [ %x, %test_fun_bb0 ], [ %.1, %test_fun_bb2 ]
  %"0" = icmp slt i32 %.0, %y
  br i1 %"0", label %test_fun_bb2, label %test_fun_bb3

test_fun_bb2:                                     ; preds = %test_fun_bb1
  %"1" = icmp slt i32 %.0, %.01
  %"2" = add nsw i32 %.0, 1
  %"3" = add nsw i32 %.01, 1
  %.12 = select i1 %"1", i32 %.01, i32 %"3"
  %.1 = select i1 %"1", i32 %"2", i32 %.0
  %"4" = add nsw i32 %c.0, 1
  br label %test_fun_bb1

test_fun_bb3:                                     ; preds = %test_fun_bb1
  ret i32 %c.0
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb4:
  %"5" = call i32 @__VERIFIER_nondet_int()
  %"6" = call i32 @__VERIFIER_nondet_int()
  %"7" = call i32 @__VERIFIER_nondet_int()
  br label %main_bb5

main_bb5:                                         ; preds = %main_bb6, %main_bb4
  %c.0.i = phi i32 [ 0, %main_bb4 ], [ %"12", %main_bb6 ]
  %.01.i = phi i32 [ %"7", %main_bb4 ], [ %.12.i, %main_bb6 ]
  %.0.i = phi i32 [ %"5", %main_bb4 ], [ %.1.i, %main_bb6 ]
  %"8" = icmp slt i32 %.0.i, %"6"
  br i1 %"8", label %main_bb6, label %main_test_fun.exit

main_bb6:                                         ; preds = %main_bb5
  %"9" = icmp slt i32 %.0.i, %.01.i
  %"10" = add nsw i32 %.0.i, 1
  %"11" = add nsw i32 %.01.i, 1
  %.12.i = select i1 %"9", i32 %.01.i, i32 %"11"
  %.1.i = select i1 %"9", i32 %"10", i32 %.0.i
  %"12" = add nsw i32 %c.0.i, 1
  br label %main_bb5

main_test_fun.exit:                               ; preds = %main_bb5
  ret i32 %c.0.i
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

