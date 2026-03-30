; ModuleID = 'Benchmarks/TermCOMP/C/Ultimate/SyntaxSupportPointer01_true-termination/SyntaxSupportPointer01_true-termination.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  %"0" = call noalias i8* @malloc(i64 4) #2
  %"1" = bitcast i8* %"0" to i32*
  br label %main_bb1

main_bb1:                                         ; preds = %main_bb2, %main_bb0
  %"2" = load i32* %"1", align 4
  %"3" = icmp sge i32 %"2", 0
  br i1 %"3", label %main_bb2, label %main_bb3

main_bb2:                                         ; preds = %main_bb1
  %"4" = load i32* %"1", align 4
  %"5" = add nsw i32 %"4", -1
  store i32 %"5", i32* %"1", align 4
  br label %main_bb1

main_bb3:                                         ; preds = %main_bb1
  ret i32 0
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare i32 @__kittel_nondef.0()

declare i32* @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

