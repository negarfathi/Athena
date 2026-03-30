; ModuleID = 'Benchmarks/TermCOMP/C/Stroeder_15/Flip2/Flip2.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  %"0" = call i32 @__VERIFIER_nondet_int()
  %"1" = call i32 @__VERIFIER_nondet_int()
  br label %main_bb1

main_bb1:                                         ; preds = %main_bb2, %main_bb3, %main_bb0
  %j.0 = phi i32 [ %"1", %main_bb0 ], [ %i.0, %main_bb2 ], [ %j.1, %main_bb3 ]
  %i.0 = phi i32 [ %"0", %main_bb0 ], [ %j.0, %main_bb2 ], [ %i.1, %main_bb3 ]
  %"2" = icmp sgt i32 %i.0, 0
  %"3" = icmp sgt i32 %j.0, 0
  %. = select i1 %"2", i1 %"3", i1 false
  br i1 %., label %main_bb2, label %main_bb4

main_bb2:                                         ; preds = %main_bb1
  %"4" = icmp slt i32 %i.0, %j.0
  br i1 %"4", label %main_bb1, label %main_bb3

main_bb3:                                         ; preds = %main_bb2
  %"5" = icmp sgt i32 %i.0, %j.0
  %"6" = sub nsw i32 %i.0, 1
  %j.1 = select i1 %"5", i32 %i.0, i32 %j.0
  %i.1 = select i1 %"5", i32 %i.0, i32 %"6"
  br label %main_bb1

main_bb4:                                         ; preds = %main_bb1
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

