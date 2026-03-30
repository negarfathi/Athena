; ModuleID = 'Benchmarks/TermCOMP/C/Stroeder_15/NonTerminationSimple8_false-termination/NonTerminationSimple8_false-termination.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  %"0" = call i32 @__VERIFIER_nondet_int()
  br label %main_bb1

main_bb1:                                         ; preds = %main_bb3, %main_bb7, %main_bb8, %main_bb5, %main_bb0
  %x.0 = phi i32 [ %"0", %main_bb0 ], [ %"4", %main_bb3 ], [ %"7", %main_bb5 ], [ %"10", %main_bb7 ], [ %x.1, %main_bb8 ]
  %"1" = icmp sge i32 %x.0, 0
  br i1 %"1", label %main_bb2, label %main_bb9

main_bb2:                                         ; preds = %main_bb1
  %"2" = call i32 @__VERIFIER_nondet_int()
  %"3" = icmp ne i32 %"2", 0
  br i1 %"3", label %main_bb3, label %main_bb4

main_bb3:                                         ; preds = %main_bb2
  %"4" = add nsw i32 %x.0, 1
  br label %main_bb1

main_bb4:                                         ; preds = %main_bb2
  %"5" = call i32 @__VERIFIER_nondet_int()
  %"6" = icmp ne i32 %"5", 0
  br i1 %"6", label %main_bb5, label %main_bb6

main_bb5:                                         ; preds = %main_bb4
  %"7" = add nsw i32 %x.0, 2
  br label %main_bb1

main_bb6:                                         ; preds = %main_bb4
  %"8" = call i32 @__VERIFIER_nondet_int()
  %"9" = icmp ne i32 %"8", 0
  br i1 %"9", label %main_bb7, label %main_bb8

main_bb7:                                         ; preds = %main_bb6
  %"10" = add nsw i32 %x.0, 3
  br label %main_bb1

main_bb8:                                         ; preds = %main_bb6
  %"11" = call i32 @__VERIFIER_nondet_int()
  %"12" = icmp ne i32 %"11", 0
  %"13" = add nsw i32 %x.0, 4
  %x.1 = select i1 %"12", i32 %"13", i32 -1
  br label %main_bb1

main_bb9:                                         ; preds = %main_bb1
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

