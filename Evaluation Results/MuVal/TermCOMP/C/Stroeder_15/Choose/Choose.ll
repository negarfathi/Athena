; ModuleID = 'Benchmarks/TermCOMP/C/Stroeder_15/Choose/Choose.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  br label %main_bb1

main_bb1:                                         ; preds = %main_bb3, %main_bb4, %main_bb0
  %i.0 = phi i32 [ 3, %main_bb0 ], [ %"2", %main_bb3 ], [ %i.1, %main_bb4 ]
  %"0" = icmp sge i32 %i.0, 3
  br i1 %"0", label %main_bb2, label %main_bb5

main_bb2:                                         ; preds = %main_bb1
  %"1" = icmp sgt i32 %i.0, 5
  br i1 %"1", label %main_bb3, label %main_bb4

main_bb3:                                         ; preds = %main_bb2
  %"2" = add nsw i32 %i.0, 3
  br label %main_bb1

main_bb4:                                         ; preds = %main_bb2
  %"3" = icmp sgt i32 %i.0, 10
  %"4" = sub nsw i32 %i.0, 2
  %"5" = add nsw i32 %i.0, 1
  %i.1 = select i1 %"3", i32 %"4", i32 %"5"
  br label %main_bb1

main_bb5:                                         ; preds = %main_bb1
  ret i32 0
}

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

