; ModuleID = 'Benchmarks/FSE/loop/Using_Erroneous_Condition_3_T/Using_Erroneous_Condition_3_T.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  %old_ = alloca [10 x i32], align 16
  %new_ = alloca [10 x i32], align 16
  %"0" = call i32 @__VERIFIER_nondet_int()
  %"1" = call i32 @__VERIFIER_nondet_int()
  br label %main_bb1

main_bb1:                                         ; preds = %main_bb2, %main_bb0
  %j.0 = phi i32 [ 0, %main_bb0 ], [ %"9", %main_bb2 ]
  %"2" = icmp slt i32 %j.0, 9
  br i1 %"2", label %main_bb2, label %main_bb3

main_bb2:                                         ; preds = %main_bb1
  %"3" = call i32 @__VERIFIER_nondet_int()
  %"4" = sext i32 %j.0 to i64
  %"5" = getelementptr inbounds [10 x i32]* %old_, i32 0, i64 %"4"
  store i32 %"3", i32* %"5", align 4
  %"6" = call i32 @__VERIFIER_nondet_int()
  %"7" = sext i32 %j.0 to i64
  %"8" = getelementptr inbounds [10 x i32]* %new_, i32 0, i64 %"7"
  store i32 %"6", i32* %"8", align 4
  %"9" = add nsw i32 %j.0, 1
  br label %main_bb1

main_bb3:                                         ; preds = %main_bb1
  %"10" = getelementptr inbounds [10 x i32]* %old_, i32 0, i64 9
  store i32 0, i32* %"10", align 4
  %"11" = getelementptr inbounds [10 x i32]* %new_, i32 0, i64 9
  store i32 0, i32* %"11", align 4
  br label %main_bb4

main_bb4:                                         ; preds = %main_bb8, %main_bb3
  %base.0 = phi i32 [ %"0", %main_bb3 ], [ %"23", %main_bb8 ]
  %i.0 = phi i32 [ 0, %main_bb3 ], [ %"22", %main_bb8 ]
  %"12" = icmp slt i32 %base.0, %"1"
  br i1 %"12", label %main_bb5, label %main_bb9

main_bb5:                                         ; preds = %main_bb4
  %"13" = sext i32 %i.0 to i64
  %"14" = getelementptr inbounds [10 x i32]* %old_, i32 0, i64 %"13"
  %"15" = load i32* %"14", align 4
  %"16" = sext i32 %i.0 to i64
  %"17" = getelementptr inbounds [10 x i32]* %new_, i32 0, i64 %"16"
  %"18" = load i32* %"17", align 4
  br label %main_bb6

main_bb6:                                         ; preds = %main_bb7, %main_bb5
  %number.0 = phi i32 [ %base.0, %main_bb5 ], [ %"20", %main_bb7 ]
  %"19" = icmp ne i32 %"15", %"18"
  br i1 %"19", label %main_bb7, label %main_bb8

main_bb7:                                         ; preds = %main_bb6
  %"20" = add nsw i32 %number.0, 1
  %"21" = icmp eq i32 %"20", %"1"
  br i1 %"21", label %main_bb8, label %main_bb6

main_bb8:                                         ; preds = %main_bb7, %main_bb6
  %"22" = add nsw i32 %i.0, 1
  %"23" = add nsw i32 %base.0, 8
  br label %main_bb4

main_bb9:                                         ; preds = %main_bb4
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

