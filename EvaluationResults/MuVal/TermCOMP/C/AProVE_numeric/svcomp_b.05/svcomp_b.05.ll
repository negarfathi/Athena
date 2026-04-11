; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_numeric/svcomp_b.05/svcomp_b.05.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @test_fun(i32 %x, i32 %tmp) #0 {
test_fun_bb0:
  %"0" = call i32 @__VERIFIER_nondet_int()
  br label %test_fun_bb1

test_fun_bb1:                                     ; preds = %test_fun_bb2, %test_fun_bb0
  %.01 = phi i32 [ %"0", %test_fun_bb0 ], [ %"5", %test_fun_bb2 ]
  %.0 = phi i32 [ %x, %test_fun_bb0 ], [ %"4", %test_fun_bb2 ]
  %"1" = icmp sgt i32 %.0, 0
  %"2" = mul nsw i32 2, %.01
  %"3" = icmp eq i32 %.0, %"2"
  %or.cond = and i1 %"1", %"3"
  br i1 %or.cond, label %test_fun_bb2, label %test_fun_.critedge

test_fun_bb2:                                     ; preds = %test_fun_bb1
  %"4" = sub nsw i32 %.0, 1
  %"5" = call i32 @__VERIFIER_nondet_int()
  br label %test_fun_bb1

test_fun_.critedge:                               ; preds = %test_fun_bb1
  ret i32 %.0
}

declare i32 @__VERIFIER_nondet_int() #1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb3:
  %"6" = call i32 @__VERIFIER_nondet_int()
  %"7" = call i32 @__VERIFIER_nondet_int()
  %"8" = call i32 @__VERIFIER_nondet_int() #2
  br label %main_bb4

main_bb4:                                         ; preds = %main_bb5, %main_bb3
  %.01.i = phi i32 [ %"8", %main_bb3 ], [ %"13", %main_bb5 ]
  %.0.i = phi i32 [ %"6", %main_bb3 ], [ %"12", %main_bb5 ]
  %"9" = icmp sgt i32 %.0.i, 0
  %"10" = mul nsw i32 2, %.01.i
  %"11" = icmp eq i32 %.0.i, %"10"
  %or.cond.i = and i1 %"9", %"11"
  br i1 %or.cond.i, label %main_bb5, label %main_test_fun.exit

main_bb5:                                         ; preds = %main_bb4
  %"12" = sub nsw i32 %.0.i, 1
  %"13" = call i32 @__VERIFIER_nondet_int() #2
  br label %main_bb4

main_test_fun.exit:                               ; preds = %main_bb4
  ret i32 %.0.i
}

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

