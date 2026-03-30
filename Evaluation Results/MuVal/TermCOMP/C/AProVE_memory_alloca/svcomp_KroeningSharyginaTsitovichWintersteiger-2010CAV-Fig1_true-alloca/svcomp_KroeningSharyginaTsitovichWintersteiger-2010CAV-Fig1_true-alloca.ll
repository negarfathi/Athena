; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_KroeningSharyginaTsitovichWintersteiger-2010CAV-Fig1_true-alloca/svcomp_KroeningSharyginaTsitovichWintersteiger-2010CAV-Fig1_true-alloca.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  %"0" = alloca i8, i64 4
  %"1" = bitcast i8* %"0" to i32*
  %"2" = alloca i8, i64 4
  %"3" = bitcast i8* %"2" to i32*
  %"4" = call i32 @__VERIFIER_nondet_int()
  store i32 %"4", i32* %"1", align 4
  store i32 0, i32* %"3", align 4
  %"5" = load i32* %"3", align 4
  br label %main_bb1

main_bb1:                                         ; preds = %main_bb5, %main_bb6, %main_bb0
  %"6" = load i32* %"1", align 4
  %"7" = icmp slt i32 %"6", 255
  br i1 %"7", label %main_bb2, label %main_bb7

main_bb2:                                         ; preds = %main_bb1
  %"8" = load i32* %"1", align 4
  %"9" = srem i32 %"8", 2
  %"10" = icmp ne i32 %"9", 0
  %"11" = load i32* %"1", align 4
  br i1 %"10", label %main_bb3, label %main_bb4

main_bb3:                                         ; preds = %main_bb2
  %"12" = add nsw i32 %"11", -1
  store i32 %"12", i32* %"1", align 4
  br label %main_bb5

main_bb4:                                         ; preds = %main_bb2
  %"13" = add nsw i32 %"11", 2
  store i32 %"13", i32* %"1", align 4
  br label %main_bb5

main_bb5:                                         ; preds = %main_bb4, %main_bb3
  %"14" = icmp ne i32 %"5", 0
  br i1 %"14", label %main_bb6, label %main_bb1

main_bb6:                                         ; preds = %main_bb5
  store i32 0, i32* %"1", align 4
  br label %main_bb1

main_bb7:                                         ; preds = %main_bb1
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32 @__kittel_nondef.0()

declare i32* @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

