; ModuleID = 'Benchmarks/TermCOMP/C/Ultimate/LexIndexValue-Array_true-termination/LexIndexValue-Array_true-termination.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  %a = alloca [1048 x i32], align 16
  br label %main_bb1

main_bb1:                                         ; preds = %main_bb3, %main_bb4, %main_bb0
  %k.0 = phi i32 [ 0, %main_bb0 ], [ %"7", %main_bb3 ], [ %k.0, %main_bb4 ]
  %"0" = sext i32 %k.0 to i64
  %"1" = getelementptr inbounds [1048 x i32]* %a, i32 0, i64 %"0"
  %"2" = load i32* %"1", align 4
  %"3" = icmp sge i32 %"2", 0
  %"4" = icmp slt i32 %k.0, 1048
  %. = select i1 %"3", i1 %"4", i1 false
  br i1 %., label %main_bb2, label %main_bb5

main_bb2:                                         ; preds = %main_bb1
  %"5" = call i32 @__VERIFIER_nondet_int()
  %"6" = icmp ne i32 %"5", 0
  br i1 %"6", label %main_bb3, label %main_bb4

main_bb3:                                         ; preds = %main_bb2
  %"7" = add nsw i32 %k.0, 1
  br label %main_bb1

main_bb4:                                         ; preds = %main_bb2
  %"8" = sext i32 %k.0 to i64
  %"9" = getelementptr inbounds [1048 x i32]* %a, i32 0, i64 %"8"
  %"10" = load i32* %"9", align 4
  %"11" = add nsw i32 %"10", -1
  store i32 %"11", i32* %"9", align 4
  br label %main_bb1

main_bb5:                                         ; preds = %main_bb1
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

