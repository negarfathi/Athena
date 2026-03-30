; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_numeric/svcomp_java_Sequence/svcomp_java_Sequence.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  br label %main_bb1

main_bb1:                                         ; preds = %main_bb2, %main_bb0
  %i.0 = phi i32 [ 0, %main_bb0 ], [ %"2", %main_bb2 ]
  %c.0 = phi i32 [ 0, %main_bb0 ], [ %"1", %main_bb2 ]
  %"0" = icmp slt i32 %i.0, 100
  br i1 %"0", label %main_bb2, label %main_bb3

main_bb2:                                         ; preds = %main_bb1
  %"1" = add nsw i32 %c.0, 1
  %"2" = add nsw i32 %i.0, 1
  br label %main_bb1

main_bb3:                                         ; preds = %main_bb1, %main_bb4
  %j.0 = phi i32 [ %"5", %main_bb4 ], [ 5, %main_bb1 ]
  %c.1 = phi i32 [ %"4", %main_bb4 ], [ %c.0, %main_bb1 ]
  %"3" = icmp slt i32 %j.0, 21
  br i1 %"3", label %main_bb4, label %main_bb5

main_bb4:                                         ; preds = %main_bb3
  %"4" = add nsw i32 %c.1, 1
  %"5" = add nsw i32 %j.0, 3
  br label %main_bb3

main_bb5:                                         ; preds = %main_bb3
  ret i32 %c.1
}

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

