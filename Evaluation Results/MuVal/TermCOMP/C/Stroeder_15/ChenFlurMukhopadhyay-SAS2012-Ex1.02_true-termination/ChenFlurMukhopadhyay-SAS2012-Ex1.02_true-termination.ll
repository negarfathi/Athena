; ModuleID = 'Benchmarks/TermCOMP/C/Stroeder_15/ChenFlurMukhopadhyay-SAS2012-Ex1.02_true-termination/ChenFlurMukhopadhyay-SAS2012-Ex1.02_true-termination.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  %"0" = call i32 @__kittel_nondef.0()
  %"1" = call i32 @__VERIFIER_nondet_int()
  br label %main_bb1

main_bb1:                                         ; preds = %main_bb3, %main_bb0
  %x.0 = phi i32 [ %"1", %main_bb0 ], [ %"7", %main_bb3 ]
  %oldx.0 = phi i32 [ %"0", %main_bb0 ], [ %x.0, %main_bb3 ]
  %"2" = icmp sgt i32 %x.0, 0
  %"3" = icmp slt i32 %x.0, 100
  %or.cond = and i1 %"2", %"3"
  br i1 %or.cond, label %main_bb2, label %main_.critedge

main_bb2:                                         ; preds = %main_bb1
  %"4" = mul nsw i32 2, %oldx.0
  %"5" = add nsw i32 %"4", 10
  %"6" = icmp sge i32 %x.0, %"5"
  br i1 %"6", label %main_bb3, label %main_.critedge

main_bb3:                                         ; preds = %main_bb2
  %"7" = call i32 @__VERIFIER_nondet_int()
  br label %main_bb1

main_.critedge:                                   ; preds = %main_bb1, %main_bb2
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

