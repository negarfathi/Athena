; ModuleID = 'Benchmarks/FSE/loop/Misusing_Variable_Type_1_T/Misusing_Variable_Type_1_T.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  br label %main_bb1

main_bb1:                                         ; preds = %main_bb6, %main_bb0
  %div1.0 = phi i32 [ 1, %main_bb0 ], [ %"5", %main_bb6 ]
  %"0" = icmp sge i32 %div1.0, 0
  br i1 %"0", label %main_bb2, label %main_bb7

main_bb2:                                         ; preds = %main_bb1, %main_bb5
  %div2.0 = phi i32 [ %"4", %main_bb5 ], [ 7, %main_bb1 ]
  %"1" = icmp sge i32 %div2.0, 0
  br i1 %"1", label %main_bb3, label %main_bb6

main_bb3:                                         ; preds = %main_bb2, %main_bb4
  %mul.0 = phi i32 [ %"3", %main_bb4 ], [ 0, %main_bb2 ]
  %"2" = icmp ule i32 %mul.0, 255
  br i1 %"2", label %main_bb4, label %main_bb5

main_bb4:                                         ; preds = %main_bb3
  %"3" = add i32 %mul.0, 1
  br label %main_bb3

main_bb5:                                         ; preds = %main_bb3
  %"4" = add nsw i32 %div2.0, -1
  br label %main_bb2

main_bb6:                                         ; preds = %main_bb2
  %"5" = add nsw i32 %div1.0, -1
  br label %main_bb1

main_bb7:                                         ; preds = %main_bb1
  ret i32 0
}

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

