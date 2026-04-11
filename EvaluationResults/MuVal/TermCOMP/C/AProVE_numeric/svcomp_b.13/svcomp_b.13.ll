; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_numeric/svcomp_b.13/svcomp_b.13.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @test_fun(i32 %x, i32 %y, i32 %z) #0 {
test_fun_bb0:
  br label %test_fun_bb1

test_fun_bb1:                                     ; preds = %test_fun_bb5, %test_fun_bb0
  %c.0 = phi i32 [ 0, %test_fun_bb0 ], [ %"6", %test_fun_bb5 ]
  %.01 = phi i32 [ %y, %test_fun_bb0 ], [ %.2, %test_fun_bb5 ]
  %.0 = phi i32 [ %x, %test_fun_bb0 ], [ %.1, %test_fun_bb5 ]
  %"0" = icmp sgt i32 %.0, %z
  %"1" = icmp sgt i32 %.01, %z
  %. = select i1 %"0", i1 true, i1 %"1"
  br i1 %., label %test_fun_bb2, label %test_fun_bb6

test_fun_bb2:                                     ; preds = %test_fun_bb1
  %"2" = icmp sgt i32 %.0, %z
  br i1 %"2", label %test_fun_bb3, label %test_fun_bb4

test_fun_bb3:                                     ; preds = %test_fun_bb2
  %"3" = sub nsw i32 %.0, 1
  br label %test_fun_bb5

test_fun_bb4:                                     ; preds = %test_fun_bb2
  %"4" = icmp sgt i32 %.01, %z
  %"5" = sub nsw i32 %.01, 1
  %.12 = select i1 %"4", i32 %"5", i32 %.01
  br label %test_fun_bb5

test_fun_bb5:                                     ; preds = %test_fun_bb4, %test_fun_bb3
  %.2 = phi i32 [ %.01, %test_fun_bb3 ], [ %.12, %test_fun_bb4 ]
  %.1 = phi i32 [ %"3", %test_fun_bb3 ], [ %.0, %test_fun_bb4 ]
  %"6" = add nsw i32 %c.0, 1
  br label %test_fun_bb1

test_fun_bb6:                                     ; preds = %test_fun_bb1
  ret i32 %c.0
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb7:
  %"7" = call i32 @__VERIFIER_nondet_int()
  %"8" = call i32 @__VERIFIER_nondet_int()
  %"9" = call i32 @__VERIFIER_nondet_int()
  br label %main_bb8

main_bb8:                                         ; preds = %main_bb12, %main_bb7
  %c.0.i = phi i32 [ 0, %main_bb7 ], [ %"16", %main_bb12 ]
  %.01.i = phi i32 [ %"8", %main_bb7 ], [ %.2.i, %main_bb12 ]
  %.0.i = phi i32 [ %"7", %main_bb7 ], [ %.1.i, %main_bb12 ]
  %"10" = icmp sgt i32 %.0.i, %"9"
  %"11" = icmp sgt i32 %.01.i, %"9"
  %..i = select i1 %"10", i1 true, i1 %"11"
  br i1 %..i, label %main_bb9, label %main_test_fun.exit

main_bb9:                                         ; preds = %main_bb8
  %"12" = icmp sgt i32 %.0.i, %"9"
  br i1 %"12", label %main_bb10, label %main_bb11

main_bb10:                                        ; preds = %main_bb9
  %"13" = sub nsw i32 %.0.i, 1
  br label %main_bb12

main_bb11:                                        ; preds = %main_bb9
  %"14" = icmp sgt i32 %.01.i, %"9"
  %"15" = sub nsw i32 %.01.i, 1
  %.12.i = select i1 %"14", i32 %"15", i32 %.01.i
  br label %main_bb12

main_bb12:                                        ; preds = %main_bb11, %main_bb10
  %.2.i = phi i32 [ %.01.i, %main_bb10 ], [ %.12.i, %main_bb11 ]
  %.1.i = phi i32 [ %"13", %main_bb10 ], [ %.0.i, %main_bb11 ]
  %"16" = add nsw i32 %c.0.i, 1
  br label %main_bb8

main_test_fun.exit:                               ; preds = %main_bb8
  ret i32 %c.0.i
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

