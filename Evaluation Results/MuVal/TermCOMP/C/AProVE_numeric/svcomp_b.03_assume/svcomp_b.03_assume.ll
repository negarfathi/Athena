; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_numeric/svcomp_b.03_assume/svcomp_b.03_assume.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @test_fun(i32 %x, i32 %y) #0 {
test_fun_bb0:
  %"0" = icmp sle i32 %x, 0
  br i1 %"0", label %test_fun_bb2, label %test_fun_bb1

test_fun_bb1:                                     ; preds = %test_fun_bb0, %test_fun_bb3
  %.01 = phi i32 [ %"3", %test_fun_bb3 ], [ %y, %test_fun_bb0 ]
  %"1" = icmp sle i32 %x, %.01
  %"2" = icmp sle i32 %x, 0
  %or.cond = or i1 %"1", %"2"
  br i1 %or.cond, label %test_fun_bb2, label %test_fun_bb3

test_fun_bb2:                                     ; preds = %test_fun_bb1, %test_fun_bb0
  %.0 = phi i32 [ %y, %test_fun_bb0 ], [ %.01, %test_fun_bb1 ]
  ret i32 %.0

test_fun_bb3:                                     ; preds = %test_fun_bb1
  %"3" = add nsw i32 %.01, %x
  br label %test_fun_bb1
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb4:
  %"4" = call i32 @__VERIFIER_nondet_int()
  %"5" = call i32 @__VERIFIER_nondet_int()
  %"6" = icmp sle i32 %"4", 0
  br i1 %"6", label %main_test_fun.exit, label %main_bb5

main_bb5:                                         ; preds = %main_bb6, %main_bb4
  %.01.i = phi i32 [ %"9", %main_bb6 ], [ %"5", %main_bb4 ]
  %"7" = icmp sle i32 %"4", %.01.i
  %"8" = icmp sle i32 %"4", 0
  %or.cond.i = or i1 %"7", %"8"
  br i1 %or.cond.i, label %main_test_fun.exit, label %main_bb6

main_test_fun.exit:                               ; preds = %main_bb4, %main_bb5
  %.0.i = phi i32 [ %"5", %main_bb4 ], [ %.01.i, %main_bb5 ]
  ret i32 %.0.i

main_bb6:                                         ; preds = %main_bb5
  %"9" = add nsw i32 %.01.i, %"4"
  br label %main_bb5
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

