; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_Masse_true-alloca/svcomp_Masse_true-alloca.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  %"0" = alloca i8, i64 4
  %"1" = bitcast i8* %"0" to i32*
  br label %main_bb1

main_bb1:                                         ; preds = %main_bb3, %main_bb4, %main_bb0
  %"2" = load i32* %"1", align 4
  %"3" = icmp sle i32 %"2", 1000
  br i1 %"3", label %main_bb2, label %main_bb5

main_bb2:                                         ; preds = %main_bb1
  %"4" = call i32 @__VERIFIER_nondet_int()
  %"5" = icmp ne i32 %"4", 0
  %"6" = load i32* %"1", align 4
  br i1 %"5", label %main_bb3, label %main_bb4

main_bb3:                                         ; preds = %main_bb2
  %"7" = mul nsw i32 -2, %"6"
  %"8" = add nsw i32 %"7", 2
  store i32 %"8", i32* %"1", align 4
  br label %main_bb1

main_bb4:                                         ; preds = %main_bb2
  %"9" = mul nsw i32 -3, %"6"
  %"10" = sub nsw i32 %"9", 2
  store i32 %"10", i32* %"1", align 4
  br label %main_bb1

main_bb5:                                         ; preds = %main_bb1
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32 @__kittel_nondef.0()

declare i32* @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

