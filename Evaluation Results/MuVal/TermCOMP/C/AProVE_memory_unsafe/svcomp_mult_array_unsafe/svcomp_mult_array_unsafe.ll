; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_unsafe/svcomp_mult_array_unsafe/svcomp_mult_array_unsafe.bc'
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
  %"5" = alloca i8, i64 %"4"
  %"6" = bitcast i8* %"5" to i32*
  %"7" = mul nsw i32 %fac.0, %.
  %"8" = sext i32 %"7" to i64
  %"9" = alloca i8, i64 %"8"
  %"10" = bitcast i8* %"9" to i32*
  %"11" = icmp ne i32* %"6", null
  %"12" = icmp ne i32* %"10", null
  %or.cond = and i1 %"11", %"12"
  br i1 %or.cond, label %main_bb1, label %main_bb6

main_bb1:                                         ; preds = %main_bb0, %main_bb2
  %i.0 = phi i32 [ %"17", %main_bb2 ], [ 0, %main_bb0 ]
  %"13" = icmp slt i32 %i.0, %.
  br i1 %"13", label %main_bb2, label %main_bb3

main_bb2:                                         ; preds = %main_bb1
  %"14" = call i32 @__VERIFIER_nondet_int()
  %"15" = sext i32 %i.0 to i64
  %"16" = getelementptr inbounds i32* %"6", i64 %"15"
  store i32 %"14", i32* %"16", align 4
  %"17" = add nsw i32 %i.0, 1
  br label %main_bb1

main_bb3:                                         ; preds = %main_bb1
  %"18" = srem i32 %i.0, %.
  %"19" = sext i32 %"18" to i64
  %"20" = getelementptr inbounds i32* %"6", i64 %"19"
  %"21" = load i32* %"20", align 4
  br label %main_bb4

main_bb4:                                         ; preds = %main_bb5, %main_bb3
  %j.0 = phi i32 [ 0, %main_bb3 ], [ %"26", %main_bb5 ]
  %"22" = mul nsw i32 %., %fac.0
  %"23" = icmp slt i32 %j.0, %"22"
  br i1 %"23", label %main_bb5, label %main_bb6

main_bb5:                                         ; preds = %main_bb4
  %"24" = sext i32 %j.0 to i64
  %"25" = getelementptr inbounds i32* %"10", i64 %"24"
  store i32 %"21", i32* %"25", align 4
  %"26" = add nsw i32 %j.0, 1
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

