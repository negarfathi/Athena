; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_NoriSharma-2013FSE-Fig8_true-alloca/svcomp_NoriSharma-2013FSE-Fig8_true-alloca.bc'
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
  %"6" = alloca i8, i64 4
  %"7" = bitcast i8* %"6" to i32*
  %"8" = alloca i8, i64 4
  %"9" = bitcast i8* %"8" to i32*
  %"10" = alloca i8, i64 4
  %"11" = bitcast i8* %"10" to i32*
  %"12" = alloca i8, i64 4
  %"13" = bitcast i8* %"12" to i32*
  %"14" = load i32* %"3", align 4
  store i32 %"14", i32* %"1", align 4
  %"15" = load i32* %"7", align 4
  store i32 %"15", i32* %"5", align 4
  %"16" = load i32* %"11", align 4
  store i32 %"16", i32* %"9", align 4
  store i32 0, i32* %"13", align 4
  br label %main_bb1

main_bb1:                                         ; preds = %main_bb3, %main_bb4, %main_bb0
  %"17" = load i32* %"3", align 4
  %"18" = load i32* %"7", align 4
  %"19" = icmp sge i32 %"17", %"18"
  br i1 %"19", label %main_bb2, label %main_bb5

main_bb2:                                         ; preds = %main_bb1
  %"20" = load i32* %"13", align 4
  %"21" = add nsw i32 %"20", 1
  store i32 %"21", i32* %"13", align 4
  %"22" = load i32* %"11", align 4
  %"23" = icmp sgt i32 %"22", 1
  br i1 %"23", label %main_bb3, label %main_bb4

main_bb3:                                         ; preds = %main_bb2
  %"24" = load i32* %"11", align 4
  %"25" = sub nsw i32 %"24", 1
  store i32 %"25", i32* %"11", align 4
  %"26" = load i32* %"3", align 4
  %"27" = load i32* %"11", align 4
  %"28" = add nsw i32 %"26", %"27"
  store i32 %"28", i32* %"3", align 4
  br label %main_bb1

main_bb4:                                         ; preds = %main_bb2
  %"29" = load i32* %"7", align 4
  %"30" = add nsw i32 %"29", 1
  store i32 %"30", i32* %"7", align 4
  br label %main_bb1

main_bb5:                                         ; preds = %main_bb1
  ret i32 0
}

declare i32 @__kittel_nondef.0()

declare i32* @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

