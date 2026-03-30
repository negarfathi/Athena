; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_numeric/svcomp_b.18/svcomp_b.18.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @test_fun(i32 %x, i32 %y) #0 {
test_fun_bb0:
  br label %test_fun_bb1

test_fun_bb1:                                     ; preds = %test_fun_bb3, %test_fun_bb5, %test_fun_bb0
  %.01 = phi i32 [ %y, %test_fun_bb0 ], [ %.01, %test_fun_bb3 ], [ %.12, %test_fun_bb5 ]
  %.0 = phi i32 [ %x, %test_fun_bb0 ], [ %.1, %test_fun_bb3 ], [ %.0, %test_fun_bb5 ]
  %"0" = icmp sgt i32 %.0, 0
  %"1" = icmp sgt i32 %.01, 0
  %. = select i1 %"0", i1 %"1", i1 false
  br i1 %., label %test_fun_bb2, label %test_fun_bb7

test_fun_bb2:                                     ; preds = %test_fun_bb1
  %"2" = icmp sgt i32 %.0, %.01
  br i1 %"2", label %test_fun_bb3, label %test_fun_bb5

test_fun_bb3:                                     ; preds = %test_fun_bb2, %test_fun_bb4
  %.1 = phi i32 [ %"4", %test_fun_bb4 ], [ %.0, %test_fun_bb2 ]
  %"3" = icmp sgt i32 %.1, 0
  br i1 %"3", label %test_fun_bb4, label %test_fun_bb1

test_fun_bb4:                                     ; preds = %test_fun_bb3
  %"4" = sub nsw i32 %.1, 1
  br label %test_fun_bb3

test_fun_bb5:                                     ; preds = %test_fun_bb2, %test_fun_bb6
  %.12 = phi i32 [ %"6", %test_fun_bb6 ], [ %.01, %test_fun_bb2 ]
  %"5" = icmp sgt i32 %.12, 0
  br i1 %"5", label %test_fun_bb6, label %test_fun_bb1

test_fun_bb6:                                     ; preds = %test_fun_bb5
  %"6" = sub nsw i32 %.12, 1
  br label %test_fun_bb5

test_fun_bb7:                                     ; preds = %test_fun_bb1
  %"7" = add nsw i32 %.0, %.01
  ret i32 %"7"
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb8:
  %"8" = call i32 @__VERIFIER_nondet_int()
  %"9" = call i32 @__VERIFIER_nondet_int()
  br label %main_bb9

main_bb9:                                         ; preds = %main_bb13, %main_bb11, %main_bb8
  %.01.i = phi i32 [ %"9", %main_bb8 ], [ %.01.i, %main_bb11 ], [ %.12.i, %main_bb13 ]
  %.0.i = phi i32 [ %"8", %main_bb8 ], [ %.1.i, %main_bb11 ], [ %.0.i, %main_bb13 ]
  %"10" = icmp sgt i32 %.0.i, 0
  %"11" = icmp sgt i32 %.01.i, 0
  %..i = select i1 %"10", i1 %"11", i1 false
  br i1 %..i, label %main_bb10, label %main_test_fun.exit

main_bb10:                                        ; preds = %main_bb9
  %"12" = icmp sgt i32 %.0.i, %.01.i
  br i1 %"12", label %main_bb11, label %main_bb13

main_bb11:                                        ; preds = %main_bb12, %main_bb10
  %.1.i = phi i32 [ %"14", %main_bb12 ], [ %.0.i, %main_bb10 ]
  %"13" = icmp sgt i32 %.1.i, 0
  br i1 %"13", label %main_bb12, label %main_bb9

main_bb12:                                        ; preds = %main_bb11
  %"14" = sub nsw i32 %.1.i, 1
  br label %main_bb11

main_bb13:                                        ; preds = %main_bb14, %main_bb10
  %.12.i = phi i32 [ %"16", %main_bb14 ], [ %.01.i, %main_bb10 ]
  %"15" = icmp sgt i32 %.12.i, 0
  br i1 %"15", label %main_bb14, label %main_bb9

main_bb14:                                        ; preds = %main_bb13
  %"16" = sub nsw i32 %.12.i, 1
  br label %main_bb13

main_test_fun.exit:                               ; preds = %main_bb9
  %"17" = add nsw i32 %.0.i, %.01.i
  ret i32 %"17"
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

