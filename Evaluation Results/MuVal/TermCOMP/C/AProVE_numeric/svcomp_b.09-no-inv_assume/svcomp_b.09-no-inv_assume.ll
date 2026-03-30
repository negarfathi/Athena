; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_numeric/svcomp_b.09-no-inv_assume/svcomp_b.09-no-inv_assume.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @test_fun(i32 %x, i32 %y) #0 {
test_fun_bb0:
  %"0" = icmp sle i32 %x, 0
  %"1" = icmp sle i32 %y, 0
  %or.cond = or i1 %"0", %"1"
  br i1 %or.cond, label %test_fun_bb1, label %test_fun_bb2

test_fun_bb1:                                     ; preds = %test_fun_bb0
  %"2" = add nsw i32 %x, %y
  br label %test_fun_bb4

test_fun_bb2:                                     ; preds = %test_fun_bb0, %test_fun_bb3
  %c.0 = phi i32 [ %"7", %test_fun_bb3 ], [ 0, %test_fun_bb0 ]
  %.01 = phi i32 [ %.1, %test_fun_bb3 ], [ %x, %test_fun_bb0 ]
  %"3" = icmp eq i32 %.01, 0
  %"4" = xor i1 %"3", true
  br i1 %"4", label %test_fun_bb3, label %test_fun_bb4

test_fun_bb3:                                     ; preds = %test_fun_bb2
  %"5" = icmp sgt i32 %.01, %y
  %"6" = sub nsw i32 %.01, 1
  %.1 = select i1 %"5", i32 %y, i32 %"6"
  %"7" = add nsw i32 %c.0, 1
  br label %test_fun_bb2

test_fun_bb4:                                     ; preds = %test_fun_bb2, %test_fun_bb1
  %.0 = phi i32 [ %"2", %test_fun_bb1 ], [ %c.0, %test_fun_bb2 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb5:
  %"8" = call i32 @__VERIFIER_nondet_int()
  %"9" = call i32 @__VERIFIER_nondet_int()
  %"10" = icmp sle i32 %"8", 0
  %"11" = icmp sle i32 %"9", 0
  %or.cond.i = or i1 %"10", %"11"
  br i1 %or.cond.i, label %main_bb6, label %main_bb7

main_bb6:                                         ; preds = %main_bb5
  %"12" = add nsw i32 %"8", %"9"
  br label %main_test_fun.exit

main_bb7:                                         ; preds = %main_bb8, %main_bb5
  %c.0.i = phi i32 [ %"17", %main_bb8 ], [ 0, %main_bb5 ]
  %.01.i = phi i32 [ %.1.i, %main_bb8 ], [ %"8", %main_bb5 ]
  %"13" = icmp eq i32 %.01.i, 0
  %"14" = xor i1 %"13", true
  br i1 %"14", label %main_bb8, label %main_test_fun.exit

main_bb8:                                         ; preds = %main_bb7
  %"15" = icmp sgt i32 %.01.i, %"9"
  %"16" = sub nsw i32 %.01.i, 1
  %.1.i = select i1 %"15", i32 %"9", i32 %"16"
  %"17" = add nsw i32 %c.0.i, 1
  br label %main_bb7

main_test_fun.exit:                               ; preds = %main_bb6, %main_bb7
  %.0.i = phi i32 [ %"12", %main_bb6 ], [ %c.0.i, %main_bb7 ]
  ret i32 %.0.i
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

