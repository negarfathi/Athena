; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_numeric/svcomp_b.04/svcomp_b.04.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @test_fun(i32 %x, i32 %y, i32 %tmp) #0 {
test_fun_bb0:
  br label %test_fun_bb1

test_fun_bb1:                                     ; preds = %test_fun_bb1, %test_fun_bb0
  %.02 = phi i32 [ %tmp, %test_fun_bb0 ], [ %.0, %test_fun_bb1 ]
  %.01 = phi i32 [ %y, %test_fun_bb0 ], [ %.0, %test_fun_bb1 ]
  %.0 = phi i32 [ %x, %test_fun_bb0 ], [ %.01, %test_fun_bb1 ]
  %"0" = icmp sgt i32 %.0, %.01
  br i1 %"0", label %test_fun_bb1, label %test_fun_bb2

test_fun_bb2:                                     ; preds = %test_fun_bb1
  ret i32 %.02
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb3:
  %"1" = call i32 @__VERIFIER_nondet_int()
  %"2" = call i32 @__VERIFIER_nondet_int()
  %"3" = call i32 @__VERIFIER_nondet_int()
  br label %main_bb4

main_bb4:                                         ; preds = %main_bb4, %main_bb3
  %.02.i = phi i32 [ %"3", %main_bb3 ], [ %.0.i, %main_bb4 ]
  %.01.i = phi i32 [ %"2", %main_bb3 ], [ %.0.i, %main_bb4 ]
  %.0.i = phi i32 [ %"1", %main_bb3 ], [ %.01.i, %main_bb4 ]
  %"4" = icmp sgt i32 %.0.i, %.01.i
  br i1 %"4", label %main_bb4, label %main_test_fun.exit

main_test_fun.exit:                               ; preds = %main_bb4
  ret i32 %.02.i
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

