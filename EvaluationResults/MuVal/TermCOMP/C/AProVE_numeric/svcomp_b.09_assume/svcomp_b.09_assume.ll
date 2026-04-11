; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_numeric/svcomp_b.09_assume/svcomp_b.09_assume.bc'
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
  br label %test_fun_bb7

test_fun_bb2:                                     ; preds = %test_fun_bb0, %test_fun_bb6
  %c.0 = phi i32 [ %"8", %test_fun_bb6 ], [ 0, %test_fun_bb0 ]
  %.01 = phi i32 [ %.1, %test_fun_bb6 ], [ %x, %test_fun_bb0 ]
  %"3" = icmp eq i32 %.01, 0
  %"4" = xor i1 %"3", true
  br i1 %"4", label %test_fun_bb3, label %test_fun_bb7

test_fun_bb3:                                     ; preds = %test_fun_bb2
  %"5" = icmp sgt i32 %.01, %y
  br i1 %"5", label %test_fun_bb6, label %test_fun_bb4

test_fun_bb4:                                     ; preds = %test_fun_bb3
  %"6" = icmp sle i32 %.01, 0
  br i1 %"6", label %test_fun_bb7, label %test_fun_bb5

test_fun_bb5:                                     ; preds = %test_fun_bb4
  %"7" = sub nsw i32 %.01, 1
  br label %test_fun_bb6

test_fun_bb6:                                     ; preds = %test_fun_bb3, %test_fun_bb5
  %.1 = phi i32 [ %"7", %test_fun_bb5 ], [ %y, %test_fun_bb3 ]
  %"8" = add nsw i32 %c.0, 1
  br label %test_fun_bb2

test_fun_bb7:                                     ; preds = %test_fun_bb2, %test_fun_bb4, %test_fun_bb1
  %.0 = phi i32 [ %"2", %test_fun_bb1 ], [ %.01, %test_fun_bb4 ], [ %c.0, %test_fun_bb2 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb8:
  %"9" = call i32 @__VERIFIER_nondet_int()
  %"10" = call i32 @__VERIFIER_nondet_int()
  %"11" = icmp sle i32 %"9", 0
  %"12" = icmp sle i32 %"10", 0
  %or.cond.i = or i1 %"11", %"12"
  br i1 %or.cond.i, label %main_bb9, label %main_bb10

main_bb9:                                         ; preds = %main_bb8
  %"13" = add nsw i32 %"9", %"10"
  br label %main_test_fun.exit

main_bb10:                                        ; preds = %main_bb14, %main_bb8
  %c.0.i = phi i32 [ %"19", %main_bb14 ], [ 0, %main_bb8 ]
  %.01.i = phi i32 [ %.1.i, %main_bb14 ], [ %"9", %main_bb8 ]
  %"14" = icmp eq i32 %.01.i, 0
  %"15" = xor i1 %"14", true
  br i1 %"15", label %main_bb11, label %main_test_fun.exit

main_bb11:                                        ; preds = %main_bb10
  %"16" = icmp sgt i32 %.01.i, %"10"
  br i1 %"16", label %main_bb14, label %main_bb12

main_bb12:                                        ; preds = %main_bb11
  %"17" = icmp sle i32 %.01.i, 0
  br i1 %"17", label %main_test_fun.exit, label %main_bb13

main_bb13:                                        ; preds = %main_bb12
  %"18" = sub nsw i32 %.01.i, 1
  br label %main_bb14

main_bb14:                                        ; preds = %main_bb13, %main_bb11
  %.1.i = phi i32 [ %"18", %main_bb13 ], [ %"10", %main_bb11 ]
  %"19" = add nsw i32 %c.0.i, 1
  br label %main_bb10

main_test_fun.exit:                               ; preds = %main_bb9, %main_bb10, %main_bb12
  %.0.i = phi i32 [ %"13", %main_bb9 ], [ %.01.i, %main_bb12 ], [ %c.0.i, %main_bb10 ]
  ret i32 %.0.i
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

