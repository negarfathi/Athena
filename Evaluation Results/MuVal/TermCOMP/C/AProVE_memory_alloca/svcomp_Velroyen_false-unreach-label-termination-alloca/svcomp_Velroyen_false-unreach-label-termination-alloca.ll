; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_Velroyen_false-unreach-label-termination-alloca/svcomp_Velroyen_false-unreach-label-termination-alloca.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  %"0" = alloca i8, i64 4
  %"1" = bitcast i8* %"0" to i32*
  br label %main_bb1

main_bb1:                                         ; preds = %main_bb9, %main_bb7, %main_bb8, %main_bb5, %main_bb0
  %"2" = load i32* %"1", align 4
  %"3" = icmp ne i32 %"2", 0
  br i1 %"3", label %main_bb2, label %main_bb10

main_bb2:                                         ; preds = %main_bb1
  %"4" = load i32* %"1", align 4
  %"5" = icmp sle i32 -5, %"4"
  br i1 %"5", label %main_bb3, label %main_bb9

main_bb3:                                         ; preds = %main_bb2
  %"6" = load i32* %"1", align 4
  %"7" = icmp sle i32 %"6", 35
  br i1 %"7", label %main_bb4, label %main_bb9

main_bb4:                                         ; preds = %main_bb3
  %"8" = load i32* %"1", align 4
  %"9" = icmp slt i32 %"8", 0
  br i1 %"9", label %main_bb5, label %main_bb6

main_bb5:                                         ; preds = %main_bb4
  store i32 -5, i32* %"1", align 4
  br label %main_bb1

main_bb6:                                         ; preds = %main_bb4
  %"10" = load i32* %"1", align 4
  %"11" = icmp sgt i32 %"10", 30
  br i1 %"11", label %main_bb7, label %main_bb8

main_bb7:                                         ; preds = %main_bb6
  store i32 35, i32* %"1", align 4
  br label %main_bb1

main_bb8:                                         ; preds = %main_bb6
  %"12" = load i32* %"1", align 4
  %"13" = sub nsw i32 %"12", 1
  store i32 %"13", i32* %"1", align 4
  br label %main_bb1

main_bb9:                                         ; preds = %main_bb3, %main_bb2
  store i32 0, i32* %"1", align 4
  br label %main_bb1

main_bb10:                                        ; preds = %main_bb1
  ret i32 0
}

declare i32 @__kittel_nondef.0()

declare i32* @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

