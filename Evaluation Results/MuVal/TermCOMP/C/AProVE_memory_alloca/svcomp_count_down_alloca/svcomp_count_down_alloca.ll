; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_count_down_alloca/svcomp_count_down_alloca.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  %"0" = call i32 @__VERIFIER_nondet_int()
  %"1" = icmp slt i32 %"0", 1
  %. = select i1 %"1", i32 1, i32 %"0"
  %"2" = sext i32 %. to i64
  %"3" = mul i64 %"2", 4
  %"4" = alloca i8, i64 %"3"
  %"5" = bitcast i8* %"4" to i32*
  %"6" = icmp ne i32* %"5", null
  br i1 %"6", label %main_bb1, label %main_bb8

main_bb1:                                         ; preds = %main_bb0, %main_bb2
  %i.0 = phi i32 [ %"12", %main_bb2 ], [ 0, %main_bb0 ]
  %"7" = icmp slt i32 %i.0, %.
  br i1 %"7", label %main_bb2, label %main_bb3

main_bb2:                                         ; preds = %main_bb1
  %"8" = call i32 @__VERIFIER_nondet_int()
  %"9" = icmp slt i32 %"8", 0
  %.1 = select i1 %"9", i32 0, i32 %"8"
  %"10" = sext i32 %i.0 to i64
  %"11" = getelementptr inbounds i32* %"5", i64 %"10"
  store i32 %.1, i32* %"11", align 4
  %"12" = add nsw i32 %i.0, 1
  br label %main_bb1

main_bb3:                                         ; preds = %main_bb1, %main_bb7
  %j.0 = phi i32 [ %"22", %main_bb7 ], [ 0, %main_bb1 ]
  %"13" = icmp slt i32 %j.0, %.
  br i1 %"13", label %main_bb4, label %main_bb8

main_bb4:                                         ; preds = %main_bb3
  %"14" = sext i32 %j.0 to i64
  %"15" = getelementptr inbounds i32* %"5", i64 %"14"
  %"16" = sext i32 %j.0 to i64
  %"17" = getelementptr inbounds i32* %"5", i64 %"16"
  br label %main_bb5

main_bb5:                                         ; preds = %main_bb6, %main_bb4
  %"18" = load i32* %"15", align 4
  %"19" = icmp sgt i32 %"18", 0
  br i1 %"19", label %main_bb6, label %main_bb7

main_bb6:                                         ; preds = %main_bb5
  %"20" = load i32* %"17", align 4
  %"21" = add nsw i32 %"20", -1
  store i32 %"21", i32* %"17", align 4
  br label %main_bb5

main_bb7:                                         ; preds = %main_bb5
  %"22" = add nsw i32 %j.0, 1
  br label %main_bb3

main_bb8:                                         ; preds = %main_bb3, %main_bb0
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32 @__kittel_nondef.0()

declare i32* @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

