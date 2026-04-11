; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_BradleyMannaSipma-2005CAV-Fig1_true-alloca/svcomp_BradleyMannaSipma-2005CAV-Fig1_true-alloca.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  %"0" = alloca i8, i64 4
  %"1" = bitcast i8* %"0" to i32*
  %"2" = alloca i8, i64 4
  %"3" = bitcast i8* %"2" to i32*
  %"4" = alloca i8, i64 4
  %"5" = bitcast i8* %"4" to i32*
  %"6" = call i32 @__VERIFIER_nondet_int()
  store i32 %"6", i32* %"1", align 4
  %"7" = call i32 @__VERIFIER_nondet_int()
  store i32 %"7", i32* %"3", align 4
  %"8" = call i32 @__VERIFIER_nondet_int()
  store i32 %"8", i32* %"5", align 4
  %"9" = load i32* %"5", align 4
  %"10" = icmp sge i32 %"9", 536870912
  br i1 %"10", label %main_bb10, label %main_bb1

main_bb1:                                         ; preds = %main_bb0
  %"11" = load i32* %"1", align 4
  %"12" = icmp sge i32 %"11", 536870912
  br i1 %"12", label %main_bb10, label %main_bb2

main_bb2:                                         ; preds = %main_bb1
  %"13" = load i32* %"3", align 4
  %"14" = icmp sge i32 %"13", 536870912
  br i1 %"14", label %main_bb10, label %main_bb3

main_bb3:                                         ; preds = %main_bb2
  %"15" = load i32* %"1", align 4
  %"16" = icmp slt i32 %"15", -1073741824
  br i1 %"16", label %main_bb10, label %main_bb4

main_bb4:                                         ; preds = %main_bb3
  %"17" = load i32* %"1", align 4
  %"18" = load i32* %"3", align 4
  %"19" = add nsw i32 %"17", %"18"
  %"20" = icmp sge i32 %"19", 0
  br i1 %"20", label %main_bb5, label %main_bb10

main_bb5:                                         ; preds = %main_bb4
  %"21" = load i32* %"5", align 4
  br label %main_bb6

main_bb6:                                         ; preds = %main_bb8, %main_bb9, %main_bb5
  %"22" = load i32* %"1", align 4
  %"23" = icmp sle i32 %"22", %"21"
  br i1 %"23", label %main_bb7, label %main_bb10

main_bb7:                                         ; preds = %main_bb6
  %"24" = call i32 @__VERIFIER_nondet_int()
  %"25" = icmp ne i32 %"24", 0
  %"26" = load i32* %"1", align 4
  br i1 %"25", label %main_bb8, label %main_bb9

main_bb8:                                         ; preds = %main_bb7
  %"27" = mul nsw i32 2, %"26"
  %"28" = load i32* %"3", align 4
  %"29" = add nsw i32 %"27", %"28"
  store i32 %"29", i32* %"1", align 4
  %"30" = load i32* %"3", align 4
  %"31" = add nsw i32 %"30", 1
  store i32 %"31", i32* %"3", align 4
  br label %main_bb6

main_bb9:                                         ; preds = %main_bb7
  %"32" = add nsw i32 %"26", 1
  store i32 %"32", i32* %"1", align 4
  br label %main_bb6

main_bb10:                                        ; preds = %main_bb4, %main_bb6, %main_bb0, %main_bb1, %main_bb2, %main_bb3
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32 @__kittel_nondef.0()

declare i32* @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

