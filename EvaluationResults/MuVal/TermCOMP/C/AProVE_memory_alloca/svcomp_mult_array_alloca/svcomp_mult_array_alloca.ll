; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_mult_array_alloca/svcomp_mult_array_alloca.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  %"0" = call i32 @__VERIFIER_nondet_int()
  %"1" = icmp slt i32 %"0", 1
  %. = select i1 %"1", i32 1, i32 %"0"
  %"2" = call i32 @__VERIFIER_nondet_int()
  %"3" = icmp slt i32 %"2", 1
  %fac.0 = select i1 %"3", i32 1, i32 %"2"
  %"4" = sext i32 %. to i64
  %"5" = mul i64 %"4", 4
  %"6" = alloca i8, i64 %"5"
  %"7" = bitcast i8* %"6" to i32*
  %"8" = mul nsw i32 %fac.0, %.
  %"9" = sext i32 %"8" to i64
  %"10" = mul i64 %"9", 4
  %"11" = alloca i8, i64 %"10"
  %"12" = bitcast i8* %"11" to i32*
  %"13" = icmp ne i32* %"7", null
  %"14" = icmp ne i32* %"12", null
  %or.cond = and i1 %"13", %"14"
  br i1 %or.cond, label %main_bb1, label %main_bb6

main_bb1:                                         ; preds = %main_bb0, %main_bb2
  %i.0 = phi i32 [ %"19", %main_bb2 ], [ 0, %main_bb0 ]
  %"15" = icmp slt i32 %i.0, %.
  br i1 %"15", label %main_bb2, label %main_bb3

main_bb2:                                         ; preds = %main_bb1
  %"16" = call i32 @__VERIFIER_nondet_int()
  %"17" = sext i32 %i.0 to i64
  %"18" = getelementptr inbounds i32* %"7", i64 %"17"
  store i32 %"16", i32* %"18", align 4
  %"19" = add nsw i32 %i.0, 1
  br label %main_bb1

main_bb3:                                         ; preds = %main_bb1
  %"20" = srem i32 %i.0, %.
  %"21" = sext i32 %"20" to i64
  %"22" = getelementptr inbounds i32* %"7", i64 %"21"
  %"23" = load i32* %"22", align 4
  br label %main_bb4

main_bb4:                                         ; preds = %main_bb5, %main_bb3
  %j.0 = phi i32 [ 0, %main_bb3 ], [ %"28", %main_bb5 ]
  %"24" = mul nsw i32 %., %fac.0
  %"25" = icmp slt i32 %j.0, %"24"
  br i1 %"25", label %main_bb5, label %main_bb6

main_bb5:                                         ; preds = %main_bb4
  %"26" = sext i32 %j.0 to i64
  %"27" = getelementptr inbounds i32* %"12", i64 %"26"
  store i32 %"23", i32* %"27", align 4
  %"28" = add nsw i32 %j.0, 1
  br label %main_bb4

main_bb6:                                         ; preds = %main_bb4, %main_bb0
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32 @__kittel_nondef.0()

declare i32* @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

