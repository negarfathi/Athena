; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_NoriSharma-2013FSE-Fig7_true-alloca/svcomp_NoriSharma-2013FSE-Fig7_true-alloca.bc'
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
  store i32 0, i32* %"9", align 4
  %"16" = load i32* %"11", align 4
  %"17" = load i32* %"13", align 4
  br label %main_bb1

main_bb1:                                         ; preds = %main_.critedge, %main_bb0
  %"18" = load i32* %"3", align 4
  %"19" = icmp slt i32 %"18", %"16"
  br i1 %"19", label %main_.critedge, label %main_bb2

main_bb2:                                         ; preds = %main_bb1
  %"20" = load i32* %"7", align 4
  %"21" = icmp slt i32 %"20", %"17"
  br i1 %"21", label %main_.critedge, label %main_bb3

main_.critedge:                                   ; preds = %main_bb1, %main_bb2
  %"22" = load i32* %"3", align 4
  %"23" = add nsw i32 %"22", 1
  store i32 %"23", i32* %"3", align 4
  %"24" = load i32* %"7", align 4
  %"25" = add nsw i32 %"24", 1
  store i32 %"25", i32* %"7", align 4
  %"26" = load i32* %"9", align 4
  %"27" = add nsw i32 %"26", 1
  store i32 %"27", i32* %"9", align 4
  br label %main_bb1

main_bb3:                                         ; preds = %main_bb2
  ret i32 0
}

declare i32 @__kittel_nondef.0()

declare i32* @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

