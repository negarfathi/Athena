; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_min_rf_true-alloca/svcomp_min_rf_true-alloca.bc'
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
  br label %main_bb1

main_bb1:                                         ; preds = %main_bb7, %main_bb8, %main_bb0
  %"8" = load i32* %"3", align 4
  %"9" = icmp sgt i32 %"8", 0
  br i1 %"9", label %main_bb2, label %main_.critedge

main_bb2:                                         ; preds = %main_bb1
  %"10" = load i32* %"1", align 4
  %"11" = icmp sgt i32 %"10", 0
  br i1 %"11", label %main_bb3, label %main_.critedge

main_bb3:                                         ; preds = %main_bb2
  %"12" = load i32* %"1", align 4
  %"13" = load i32* %"3", align 4
  %"14" = icmp sgt i32 %"12", %"13"
  br i1 %"14", label %main_bb4, label %main_bb5

main_bb4:                                         ; preds = %main_bb3
  %"15" = load i32* %"3", align 4
  store i32 %"15", i32* %"5", align 4
  br label %main_bb6

main_bb5:                                         ; preds = %main_bb3
  %"16" = load i32* %"1", align 4
  store i32 %"16", i32* %"5", align 4
  br label %main_bb6

main_bb6:                                         ; preds = %main_bb5, %main_bb4
  %"17" = call i32 @__VERIFIER_nondet_int()
  %"18" = icmp ne i32 %"17", 0
  %"19" = load i32* %"3", align 4
  %"20" = load i32* %"1", align 4
  %"21" = add nsw i32 %"19", %"20"
  br i1 %"18", label %main_bb7, label %main_bb8

main_bb7:                                         ; preds = %main_bb6
  store i32 %"21", i32* %"3", align 4
  %"22" = load i32* %"5", align 4
  %"23" = sub nsw i32 %"22", 1
  store i32 %"23", i32* %"1", align 4
  %"24" = load i32* %"3", align 4
  %"25" = load i32* %"5", align 4
  %"26" = add nsw i32 %"24", %"25"
  store i32 %"26", i32* %"5", align 4
  br label %main_bb1

main_bb8:                                         ; preds = %main_bb6
  store i32 %"21", i32* %"1", align 4
  %"27" = load i32* %"5", align 4
  %"28" = sub nsw i32 %"27", 1
  store i32 %"28", i32* %"3", align 4
  %"29" = load i32* %"1", align 4
  %"30" = load i32* %"5", align 4
  %"31" = add nsw i32 %"29", %"30"
  store i32 %"31", i32* %"5", align 4
  br label %main_bb1

main_.critedge:                                   ; preds = %main_bb1, %main_bb2
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32 @__kittel_nondef.0()

declare i32* @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

