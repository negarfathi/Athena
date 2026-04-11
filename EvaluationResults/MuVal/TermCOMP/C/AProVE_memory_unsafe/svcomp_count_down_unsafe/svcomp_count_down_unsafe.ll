; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_unsafe/svcomp_count_down_unsafe/svcomp_count_down_unsafe.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  %"0" = call i32 @__VERIFIER_nondet_int()
  %"1" = icmp slt i32 %"0", 1
  %. = select i1 %"1", i32 1, i32 %"0"
  %"2" = sext i32 %. to i64
  %"3" = alloca i8, i64 %"2"
  %"4" = bitcast i8* %"3" to i32*
  %"5" = icmp ne i32* %"4", null
  br i1 %"5", label %main_bb1, label %main_bb8

main_bb1:                                         ; preds = %main_bb0, %main_bb2
  %i.0 = phi i32 [ %"11", %main_bb2 ], [ 0, %main_bb0 ]
  %"6" = icmp slt i32 %i.0, %.
  br i1 %"6", label %main_bb2, label %main_bb3

main_bb2:                                         ; preds = %main_bb1
  %"7" = call i32 @__VERIFIER_nondet_int()
  %"8" = icmp slt i32 %"7", 0
  %.1 = select i1 %"8", i32 0, i32 %"7"
  %"9" = sext i32 %i.0 to i64
  %"10" = getelementptr inbounds i32* %"4", i64 %"9"
  store i32 %.1, i32* %"10", align 4
  %"11" = add nsw i32 %i.0, 1
  br label %main_bb1

main_bb3:                                         ; preds = %main_bb1, %main_bb7
  %j.0 = phi i32 [ %"21", %main_bb7 ], [ 0, %main_bb1 ]
  %"12" = icmp slt i32 %j.0, %.
  br i1 %"12", label %main_bb4, label %main_bb8

main_bb4:                                         ; preds = %main_bb3
  %"13" = sext i32 %j.0 to i64
  %"14" = getelementptr inbounds i32* %"4", i64 %"13"
  %"15" = sext i32 %j.0 to i64
  %"16" = getelementptr inbounds i32* %"4", i64 %"15"
  br label %main_bb5

main_bb5:                                         ; preds = %main_bb6, %main_bb4
  %"17" = load i32* %"14", align 4
  %"18" = icmp sgt i32 %"17", 0
  br i1 %"18", label %main_bb6, label %main_bb7

main_bb6:                                         ; preds = %main_bb5
  %"19" = load i32* %"16", align 4
  %"20" = add nsw i32 %"19", -1
  store i32 %"20", i32* %"16", align 4
  br label %main_bb5

main_bb7:                                         ; preds = %main_bb5
  %"21" = add nsw i32 %j.0, 1
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

