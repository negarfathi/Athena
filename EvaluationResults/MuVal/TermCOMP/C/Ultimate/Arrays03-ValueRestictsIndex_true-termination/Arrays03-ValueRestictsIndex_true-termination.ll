; ModuleID = 'Benchmarks/TermCOMP/C/Ultimate/Arrays03-ValueRestictsIndex_true-termination/Arrays03-ValueRestictsIndex_true-termination.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  %a = alloca [1048 x i32], align 16
  %"0" = call i32 @__VERIFIER_nondet_int()
  %"1" = icmp sge i32 %"0", 0
  %"2" = icmp slt i32 %"0", 1048
  %or.cond = and i1 %"1", %"2"
  br i1 %or.cond, label %main_bb1, label %main_bb6

main_bb1:                                         ; preds = %main_bb0
  %"3" = getelementptr inbounds [1048 x i32]* %a, i32 0, i64 0
  %"4" = load i32* %"3", align 4
  %"5" = icmp eq i32 %"4", 23
  br i1 %"5", label %main_bb2, label %main_bb6

main_bb2:                                         ; preds = %main_bb1
  %"6" = sext i32 %"0" to i64
  %"7" = getelementptr inbounds [1048 x i32]* %a, i32 0, i64 %"6"
  %"8" = load i32* %"7", align 4
  %"9" = icmp eq i32 %"8", 42
  br i1 %"9", label %main_bb3, label %main_bb6

main_bb3:                                         ; preds = %main_bb2
  %"10" = call i32 @__VERIFIER_nondet_int()
  br label %main_bb4

main_bb4:                                         ; preds = %main_bb5, %main_bb3
  %x.0 = phi i32 [ %"10", %main_bb3 ], [ %"12", %main_bb5 ]
  %"11" = icmp sge i32 %x.0, 0
  br i1 %"11", label %main_bb5, label %main_bb6

main_bb5:                                         ; preds = %main_bb4
  %"12" = sub nsw i32 %x.0, %"0"
  br label %main_bb4

main_bb6:                                         ; preds = %main_bb1, %main_bb2, %main_bb4, %main_bb0
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

