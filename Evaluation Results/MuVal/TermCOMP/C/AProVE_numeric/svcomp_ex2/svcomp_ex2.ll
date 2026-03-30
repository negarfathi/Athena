; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_numeric/svcomp_ex2/svcomp_ex2.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @test_fun(i32 %x, i32 %y, i32 %z, i32 %flag) #0 {
test_fun_bb0:
  br label %test_fun_bb1

test_fun_bb1:                                     ; preds = %test_fun_bb6, %test_fun_bb0
  %c.0 = phi i32 [ 0, %test_fun_bb0 ], [ %"9", %test_fun_bb6 ]
  %.01 = phi i32 [ 1, %test_fun_bb0 ], [ %.23, %test_fun_bb6 ]
  %.0 = phi i32 [ %y, %test_fun_bb0 ], [ %.2, %test_fun_bb6 ]
  %"0" = icmp slt i32 %.0, %z
  %"1" = icmp sgt i32 %.01, 0
  %. = select i1 %"0", i1 %"1", i1 false
  br i1 %., label %test_fun_bb2, label %test_fun_bb7

test_fun_bb2:                                     ; preds = %test_fun_bb1
  %"2" = icmp sgt i32 %.0, 0
  %"3" = icmp sgt i32 %x, 1
  %or.cond = and i1 %"2", %"3"
  br i1 %or.cond, label %test_fun_bb3, label %test_fun_bb4

test_fun_bb3:                                     ; preds = %test_fun_bb2
  %"4" = mul nsw i32 %x, %.0
  br label %test_fun_bb6

test_fun_bb4:                                     ; preds = %test_fun_bb2
  %"5" = icmp sgt i32 %.0, 0
  %"6" = icmp slt i32 %x, -1
  %or.cond4 = and i1 %"5", %"6"
  br i1 %or.cond4, label %test_fun_bb5, label %test_fun_bb6

test_fun_bb5:                                     ; preds = %test_fun_bb4
  %"7" = sub nsw i32 0, %x
  %"8" = mul nsw i32 %"7", %.0
  br label %test_fun_bb6

test_fun_bb6:                                     ; preds = %test_fun_bb5, %test_fun_bb4, %test_fun_bb3
  %.23 = phi i32 [ %.01, %test_fun_bb3 ], [ %.01, %test_fun_bb5 ], [ 0, %test_fun_bb4 ]
  %.2 = phi i32 [ %"4", %test_fun_bb3 ], [ %"8", %test_fun_bb5 ], [ %.0, %test_fun_bb4 ]
  %"9" = add nsw i32 %c.0, 1
  br label %test_fun_bb1

test_fun_bb7:                                     ; preds = %test_fun_bb1
  ret i32 %c.0
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb8:
  %"10" = call i32 @__VERIFIER_nondet_int()
  %"11" = call i32 @__VERIFIER_nondet_int()
  %"12" = call i32 @__VERIFIER_nondet_int()
  %"13" = call i32 @__VERIFIER_nondet_int()
  br label %main_bb9

main_bb9:                                         ; preds = %main_bb14, %main_bb8
  %c.0.i = phi i32 [ 0, %main_bb8 ], [ %"23", %main_bb14 ]
  %.01.i = phi i32 [ 1, %main_bb8 ], [ %.23.i, %main_bb14 ]
  %.0.i = phi i32 [ %"11", %main_bb8 ], [ %.2.i, %main_bb14 ]
  %"14" = icmp slt i32 %.0.i, %"12"
  %"15" = icmp sgt i32 %.01.i, 0
  %..i = select i1 %"14", i1 %"15", i1 false
  br i1 %..i, label %main_bb10, label %main_test_fun.exit

main_bb10:                                        ; preds = %main_bb9
  %"16" = icmp sgt i32 %.0.i, 0
  %"17" = icmp sgt i32 %"10", 1
  %or.cond.i = and i1 %"16", %"17"
  br i1 %or.cond.i, label %main_bb11, label %main_bb12

main_bb11:                                        ; preds = %main_bb10
  %"18" = mul nsw i32 %"10", %.0.i
  br label %main_bb14

main_bb12:                                        ; preds = %main_bb10
  %"19" = icmp sgt i32 %.0.i, 0
  %"20" = icmp slt i32 %"10", -1
  %or.cond4.i = and i1 %"19", %"20"
  br i1 %or.cond4.i, label %main_bb13, label %main_bb14

main_bb13:                                        ; preds = %main_bb12
  %"21" = sub nsw i32 0, %"10"
  %"22" = mul nsw i32 %"21", %.0.i
  br label %main_bb14

main_bb14:                                        ; preds = %main_bb13, %main_bb12, %main_bb11
  %.23.i = phi i32 [ %.01.i, %main_bb11 ], [ %.01.i, %main_bb13 ], [ 0, %main_bb12 ]
  %.2.i = phi i32 [ %"18", %main_bb11 ], [ %"22", %main_bb13 ], [ %.0.i, %main_bb12 ]
  %"23" = add nsw i32 %c.0.i, 1
  br label %main_bb9

main_test_fun.exit:                               ; preds = %main_bb9
  ret i32 %c.0.i
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

