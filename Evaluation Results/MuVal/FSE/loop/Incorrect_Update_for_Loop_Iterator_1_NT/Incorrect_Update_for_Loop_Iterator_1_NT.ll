; ModuleID = 'Benchmarks/FSE/loop/Incorrect_Update_for_Loop_Iterator_1_NT/Incorrect_Update_for_Loop_Iterator_1_NT.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  %"0" = call i32 @__VERIFIER_nondet_int()
  %"1" = call i32 @__VERIFIER_nondet_int()
  %"2" = call i32 @__VERIFIER_nondet_int()
  %"3" = icmp slt i32 %"0", -1
  %"4" = icmp sle i32 %"1", 0
  %or.cond = or i1 %"3", %"4"
  %"5" = icmp slt i32 %"2", 0
  %or.cond1 = or i1 %or.cond, %"5"
  br i1 %or.cond1, label %main_bb3, label %main_bb1

main_bb1:                                         ; preds = %main_bb0, %main_bb2
  %size.0 = phi i32 [ %size.1, %main_bb2 ], [ 64, %main_bb0 ]
  %buffer_bytes_left.0 = phi i32 [ %"11", %main_bb2 ], [ %"2", %main_bb0 ]
  %"6" = sdiv i32 %size.0, 2
  %"7" = icmp slt i32 %buffer_bytes_left.0, %"6"
  br i1 %"7", label %main_bb2, label %main_bb3

main_bb2:                                         ; preds = %main_bb1
  %"8" = mul nsw i32 %size.0, 2
  %"9" = icmp ne i32 %"0", -1
  %"10" = icmp sgt i32 %"8", %"0"
  %or.cond2 = and i1 %"9", %"10"
  %size.1 = select i1 %or.cond2, i32 %"0", i32 %"8"
  %"11" = sub nsw i32 %size.1, %"1"
  br label %main_bb1

main_bb3:                                         ; preds = %main_bb1, %main_bb0
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

