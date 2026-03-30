; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_numeric/svcomp_c.07/svcomp_c.07.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @test_fun(i32 %i, i32 %j, i32 %k, i32 %tmp) #0 {
test_fun_bb0:
  br label %test_fun_bb1

test_fun_bb1:                                     ; preds = %test_fun_bb2, %test_fun_bb0
  %c.0 = phi i32 [ 0, %test_fun_bb0 ], [ %"4", %test_fun_bb2 ]
  %.02 = phi i32 [ %k, %test_fun_bb0 ], [ %"3", %test_fun_bb2 ]
  %.01 = phi i32 [ %j, %test_fun_bb0 ], [ %"2", %test_fun_bb2 ]
  %.0 = phi i32 [ %i, %test_fun_bb0 ], [ %.01, %test_fun_bb2 ]
  %"0" = icmp sle i32 %.0, 100
  %"1" = icmp sle i32 %.01, %.02
  %. = select i1 %"0", i1 %"1", i1 false
  br i1 %., label %test_fun_bb2, label %test_fun_bb3

test_fun_bb2:                                     ; preds = %test_fun_bb1
  %"2" = add nsw i32 %.0, 1
  %"3" = sub nsw i32 %.02, 1
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
  %"8" = call i32 @__VERIFIER_nondet_int()
  br label %main_bb5

main_bb5:                                         ; preds = %main_bb6, %main_bb4
  %c.0.i = phi i32 [ 0, %main_bb4 ], [ %"13", %main_bb6 ]
  %.02.i = phi i32 [ %"7", %main_bb4 ], [ %"12", %main_bb6 ]
  %.01.i = phi i32 [ %"6", %main_bb4 ], [ %"11", %main_bb6 ]
  %.0.i = phi i32 [ %"5", %main_bb4 ], [ %.01.i, %main_bb6 ]
  %"9" = icmp sle i32 %.0.i, 100
  %"10" = icmp sle i32 %.01.i, %.02.i
  %..i = select i1 %"9", i1 %"10", i1 false
  br i1 %..i, label %main_bb6, label %main_test_fun.exit

main_bb6:                                         ; preds = %main_bb5
  %"11" = add nsw i32 %.0.i, 1
  %"12" = sub nsw i32 %.02.i, 1
  %"13" = add nsw i32 %c.0.i, 1
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

