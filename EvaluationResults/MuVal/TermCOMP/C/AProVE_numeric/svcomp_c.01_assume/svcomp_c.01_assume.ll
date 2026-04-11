; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_numeric/svcomp_c.01_assume/svcomp_c.01_assume.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @test_fun(i32 %x, i32 %y) #0 {
test_fun_bb0:
  br label %test_fun_bb1

test_fun_bb1:                                     ; preds = %test_fun_bb5, %test_fun_bb0
  %.02 = phi i32 [ %y, %test_fun_bb0 ], [ %.1, %test_fun_bb5 ]
  %.01 = phi i32 [ %x, %test_fun_bb0 ], [ %"4", %test_fun_bb5 ]
  %"0" = icmp sge i32 %.01, 0
  br i1 %"0", label %test_fun_bb2, label %test_fun_bb6

test_fun_bb2:                                     ; preds = %test_fun_bb1, %test_fun_bb4
  %.1 = phi i32 [ %"3", %test_fun_bb4 ], [ 1, %test_fun_bb1 ]
  %"1" = icmp sgt i32 %.01, %.1
  br i1 %"1", label %test_fun_bb3, label %test_fun_bb5

test_fun_bb3:                                     ; preds = %test_fun_bb2
  %"2" = icmp sle i32 %.1, 0
  br i1 %"2", label %test_fun_bb6, label %test_fun_bb4

test_fun_bb4:                                     ; preds = %test_fun_bb3
  %"3" = mul nsw i32 2, %.1
  br label %test_fun_bb2

test_fun_bb5:                                     ; preds = %test_fun_bb2
  %"4" = sub nsw i32 %.01, 1
  br label %test_fun_bb1

test_fun_bb6:                                     ; preds = %test_fun_bb1, %test_fun_bb3
  %.0 = phi i32 [ %.01, %test_fun_bb3 ], [ %.02, %test_fun_bb1 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb7:
  %"5" = call i32 @__VERIFIER_nondet_int()
  %"6" = call i32 @__VERIFIER_nondet_int()
  br label %main_bb8

main_bb8:                                         ; preds = %main_bb12, %main_bb7
  %.02.i = phi i32 [ %"6", %main_bb7 ], [ %.1.i, %main_bb12 ]
  %.01.i = phi i32 [ %"5", %main_bb7 ], [ %"11", %main_bb12 ]
  %"7" = icmp sge i32 %.01.i, 0
  br i1 %"7", label %main_bb9, label %main_test_fun.exit

main_bb9:                                         ; preds = %main_bb11, %main_bb8
  %.1.i = phi i32 [ %"10", %main_bb11 ], [ 1, %main_bb8 ]
  %"8" = icmp sgt i32 %.01.i, %.1.i
  br i1 %"8", label %main_bb10, label %main_bb12

main_bb10:                                        ; preds = %main_bb9
  %"9" = icmp sle i32 %.1.i, 0
  br i1 %"9", label %main_test_fun.exit, label %main_bb11

main_bb11:                                        ; preds = %main_bb10
  %"10" = mul nsw i32 2, %.1.i
  br label %main_bb9

main_bb12:                                        ; preds = %main_bb9
  %"11" = sub nsw i32 %.01.i, 1
  br label %main_bb8

main_test_fun.exit:                               ; preds = %main_bb8, %main_bb10
  %.0.i = phi i32 [ %.01.i, %main_bb10 ], [ %.02.i, %main_bb8 ]
  ret i32 %.0.i
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

