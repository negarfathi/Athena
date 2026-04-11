; ModuleID = 'Benchmarks/FSE/loop/Misusing_Variable_Type_2_NT/Misusing_Variable_Type_2_NT.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @gettablesize() #0 {
gettablesize_bb0:
  %"0" = call i32 @__VERIFIER_nondet_int()
  %"1" = srem i32 %"0", 99999
  %"2" = icmp slt i32 %"1", 0
  %"3" = sub nsw i32 0, %"1"
  %.0 = select i1 %"2", i32 %"3", i32 %"1"
  ret i32 %.0
}

declare i32 @__VERIFIER_nondet_int() #1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb1:
  %"4" = call i32 @__VERIFIER_nondet_int() #2
  %"5" = srem i32 %"4", 99999
  %"6" = icmp slt i32 %"5", 0
  %"7" = sub nsw i32 0, %"5"
  %.0.i = select i1 %"6", i32 %"7", i32 %"5"
  %"8" = sext i32 %.0.i to i64
  br label %main_bb2

main_bb2:                                         ; preds = %main_bb3, %main_bb1
  %i.0 = phi i16 [ 0, %main_bb1 ], [ %"11", %main_bb3 ]
  %"9" = zext i16 %i.0 to i64
  %"10" = icmp ult i64 %"9", %"8"
  br i1 %"10", label %main_bb3, label %main_bb4

main_bb3:                                         ; preds = %main_bb2
  %"11" = add i16 %i.0, 1
  br label %main_bb2

main_bb4:                                         ; preds = %main_bb2
  ret i32 0
}

declare i32 @__kittel_nondef.0()

declare i16 @__kittel_nondef.1()

declare i64 @__kittel_nondef.2()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

