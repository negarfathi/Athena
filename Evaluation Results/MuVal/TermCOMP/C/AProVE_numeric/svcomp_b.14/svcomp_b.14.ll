; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_numeric/svcomp_b.14/svcomp_b.14.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @test_fun(i32 %x, i32 %y) #0 {
test_fun_bb0:
  br label %test_fun_bb1

test_fun_bb1:                                     ; preds = %test_fun_bb2, %test_fun_bb0
  %c.0 = phi i32 [ 0, %test_fun_bb0 ], [ %c.1, %test_fun_bb2 ]
  %.01 = phi i32 [ %y, %test_fun_bb0 ], [ %.12, %test_fun_bb2 ]
  %.0 = phi i32 [ %x, %test_fun_bb0 ], [ %.1, %test_fun_bb2 ]
  %"0" = icmp eq i32 %.0, %.01
  %"1" = icmp sgt i32 %.0, 0
  %. = select i1 %"0", i1 %"1", i1 false
  br i1 %., label %test_fun_bb2, label %test_fun_bb4

test_fun_bb2:                                     ; preds = %test_fun_bb1, %test_fun_bb3
  %c.1 = phi i32 [ %"5", %test_fun_bb3 ], [ %c.0, %test_fun_bb1 ]
  %.12 = phi i32 [ %"4", %test_fun_bb3 ], [ %.01, %test_fun_bb1 ]
  %.1 = phi i32 [ %"3", %test_fun_bb3 ], [ %.0, %test_fun_bb1 ]
  %"2" = icmp sgt i32 %.12, 0
  br i1 %"2", label %test_fun_bb3, label %test_fun_bb1

test_fun_bb3:                                     ; preds = %test_fun_bb2
  %"3" = sub nsw i32 %.1, 1
  %"4" = sub nsw i32 %.12, 1
  %"5" = add nsw i32 %c.1, 1
  br label %test_fun_bb2

test_fun_bb4:                                     ; preds = %test_fun_bb1
  ret i32 %c.0
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb5:
  %"6" = call i32 @__VERIFIER_nondet_int()
  %"7" = call i32 @__VERIFIER_nondet_int()
  br label %main_bb6

main_bb6:                                         ; preds = %main_bb7, %main_bb5
  %c.0.i = phi i32 [ 0, %main_bb5 ], [ %c.1.i, %main_bb7 ]
  %.01.i = phi i32 [ %"7", %main_bb5 ], [ %.12.i, %main_bb7 ]
  %.0.i = phi i32 [ %"6", %main_bb5 ], [ %.1.i, %main_bb7 ]
  %"8" = icmp eq i32 %.0.i, %.01.i
  %"9" = icmp sgt i32 %.0.i, 0
  %..i = select i1 %"8", i1 %"9", i1 false
  br i1 %..i, label %main_bb7, label %main_test_fun.exit

main_bb7:                                         ; preds = %main_bb8, %main_bb6
  %c.1.i = phi i32 [ %"13", %main_bb8 ], [ %c.0.i, %main_bb6 ]
  %.12.i = phi i32 [ %"12", %main_bb8 ], [ %.01.i, %main_bb6 ]
  %.1.i = phi i32 [ %"11", %main_bb8 ], [ %.0.i, %main_bb6 ]
  %"10" = icmp sgt i32 %.12.i, 0
  br i1 %"10", label %main_bb8, label %main_bb6

main_bb8:                                         ; preds = %main_bb7
  %"11" = sub nsw i32 %.1.i, 1
  %"12" = sub nsw i32 %.12.i, 1
  %"13" = add nsw i32 %c.1.i, 1
  br label %main_bb7

main_test_fun.exit:                               ; preds = %main_bb6
  ret i32 %c.0.i
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

