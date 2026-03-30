; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_fermat-alloca/svcomp_fermat-alloca.bc'
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
  store i32 1000, i32* %"1", align 4
  store i32 1, i32* %"3", align 4
  store i32 1, i32* %"5", align 4
  store i32 1, i32* %"7", align 4
  %"8" = load i32* %"1", align 4
  %"9" = load i32* %"1", align 4
  %"10" = load i32* %"1", align 4
  br label %main_bb1

main_bb1:                                         ; preds = %main_bb6, %main_bb0
  %"11" = load i32* %"3", align 4
  %"12" = load i32* %"3", align 4
  %"13" = mul nsw i32 %"11", %"12"
  %"14" = load i32* %"3", align 4
  %"15" = mul nsw i32 %"13", %"14"
  %"16" = load i32* %"5", align 4
  %"17" = load i32* %"5", align 4
  %"18" = mul nsw i32 %"16", %"17"
  %"19" = load i32* %"5", align 4
  %"20" = mul nsw i32 %"18", %"19"
  %"21" = load i32* %"7", align 4
  %"22" = load i32* %"7", align 4
  %"23" = mul nsw i32 %"21", %"22"
  %"24" = load i32* %"7", align 4
  %"25" = mul nsw i32 %"23", %"24"
  %"26" = add nsw i32 %"20", %"25"
  %"27" = icmp eq i32 %"15", %"26"
  br i1 %"27", label %main_bb7, label %main_bb2

main_bb2:                                         ; preds = %main_bb1
  %"28" = load i32* %"3", align 4
  %"29" = add nsw i32 %"28", 1
  store i32 %"29", i32* %"3", align 4
  %"30" = load i32* %"3", align 4
  %"31" = icmp sgt i32 %"30", %"8"
  br i1 %"31", label %main_bb3, label %main_bb4

main_bb3:                                         ; preds = %main_bb2
  store i32 1, i32* %"3", align 4
  %"32" = load i32* %"5", align 4
  %"33" = add nsw i32 %"32", 1
  store i32 %"33", i32* %"5", align 4
  br label %main_bb4

main_bb4:                                         ; preds = %main_bb3, %main_bb2
  %"34" = load i32* %"5", align 4
  %"35" = icmp sgt i32 %"34", %"9"
  br i1 %"35", label %main_bb5, label %main_bb6

main_bb5:                                         ; preds = %main_bb4
  store i32 1, i32* %"5", align 4
  %"36" = load i32* %"7", align 4
  %"37" = add nsw i32 %"36", 1
  store i32 %"37", i32* %"7", align 4
  br label %main_bb6

main_bb6:                                         ; preds = %main_bb5, %main_bb4
  %"38" = load i32* %"7", align 4
  %"39" = icmp sgt i32 %"38", %"10"
  br i1 %"39", label %main_bb7, label %main_bb1

main_bb7:                                         ; preds = %main_bb6, %main_bb1
  %.0 = phi i32 [ 1, %main_bb1 ], [ 0, %main_bb6 ]
  ret i32 %.0
}

declare i32 @__kittel_nondef.0()

declare i32* @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

