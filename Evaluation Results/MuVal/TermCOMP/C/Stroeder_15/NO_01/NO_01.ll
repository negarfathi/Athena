; ModuleID = 'Benchmarks/TermCOMP/C/Stroeder_15/NO_01/NO_01.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  %"0" = icmp sle i32 864, 10
  br i1 %"0", label %main_bb1, label %main_bb3

main_bb1:                                         ; preds = %main_bb0, %main_bb2
  %i.0 = phi i32 [ %"2", %main_bb2 ], [ 0, %main_bb0 ]
  %"1" = icmp slt i32 %i.0, 100
  br i1 %"1", label %main_bb2, label %main_bb11

main_bb2:                                         ; preds = %main_bb1
  %"2" = add nsw i32 %i.0, 1
  br label %main_bb1

main_bb3:                                         ; preds = %main_bb0
  %"3" = icmp sle i32 864, 50
  br i1 %"3", label %main_bb4, label %main_bb6

main_bb4:                                         ; preds = %main_bb3, %main_bb5
  %i.1 = phi i32 [ %"5", %main_bb5 ], [ 0, %main_bb3 ]
  %"4" = icmp slt i32 %i.1, 101
  br i1 %"4", label %main_bb5, label %main_bb6

main_bb5:                                         ; preds = %main_bb4
  %"5" = add nsw i32 %i.1, 1
  br label %main_bb4

main_bb6:                                         ; preds = %main_bb4, %main_bb3
  %"6" = icmp sle i32 864, 100
  br i1 %"6", label %main_bb7, label %main_bb9

main_bb7:                                         ; preds = %main_bb6, %main_bb8
  %i.2 = phi i32 [ %"8", %main_bb8 ], [ 0, %main_bb6 ]
  %"7" = icmp slt i32 %i.2, 102
  br i1 %"7", label %main_bb8, label %main_bb11

main_bb8:                                         ; preds = %main_bb7
  %"8" = add nsw i32 %i.2, 1
  br label %main_bb7

main_bb9:                                         ; preds = %main_bb6, %main_bb10
  %i.3 = phi i32 [ %"10", %main_bb10 ], [ 0, %main_bb6 ]
  %"9" = icmp slt i32 %i.3, 103
  br i1 %"9", label %main_bb10, label %main_bb11

main_bb10:                                        ; preds = %main_bb9
  %"10" = add nsw i32 %i.3, 0
  br label %main_bb9

main_bb11:                                        ; preds = %main_bb7, %main_bb9, %main_bb1
  ret i32 0
}

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

