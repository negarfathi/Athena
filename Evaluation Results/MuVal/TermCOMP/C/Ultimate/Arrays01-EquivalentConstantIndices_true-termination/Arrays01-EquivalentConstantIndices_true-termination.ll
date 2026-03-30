; ModuleID = 'Benchmarks/TermCOMP/C/Ultimate/Arrays01-EquivalentConstantIndices_true-termination/Arrays01-EquivalentConstantIndices_true-termination.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  %a = alloca [1048 x i32], align 16
  %"0" = getelementptr inbounds [1048 x i32]* %a, i32 0, i64 3
  %"1" = getelementptr inbounds [1048 x i32]* %a, i32 0, i64 3
  %"2" = getelementptr inbounds [1048 x i32]* %a, i32 0, i64 3
  br label %main_bb1

main_bb1:                                         ; preds = %main_bb2, %main_bb0
  %"3" = load i32* %"0", align 4
  %"4" = icmp sge i32 %"3", 0
  br i1 %"4", label %main_bb2, label %main_bb3

main_bb2:                                         ; preds = %main_bb1
  %"5" = load i32* %"1", align 4
  %"6" = sub nsw i32 %"5", 1
  store i32 %"6", i32* %"2", align 4
  br label %main_bb1

main_bb3:                                         ; preds = %main_bb1
  ret i32 0
}

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

