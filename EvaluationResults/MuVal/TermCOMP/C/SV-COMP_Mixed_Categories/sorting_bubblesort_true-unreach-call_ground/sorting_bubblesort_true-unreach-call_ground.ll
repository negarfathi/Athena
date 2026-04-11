; ModuleID = 'Benchmarks/TermCOMP/C/SV-COMP_Mixed_Categories/sorting_bubblesort_true-unreach-call_ground/sorting_bubblesort_true-unreach-call_ground.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define void @__VERIFIER_assert(i32 %cond) #0 {
__VERIFIER_assert_bb0:
  %"0" = icmp ne i32 %cond, 0
  br i1 %"0", label %__VERIFIER_assert_bb1, label %__VERIFIER_assert_bb2

__VERIFIER_assert_bb1:                            ; preds = %__VERIFIER_assert_bb0
  ret void

__VERIFIER_assert_bb2:                            ; preds = %__VERIFIER_assert_bb0
  call void (...)* @__VERIFIER_error() #2
  unreachable
}

; Function Attrs: noreturn
declare void @__VERIFIER_error(...) #1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb3:
  %a = alloca [100000 x i32], align 16
  br label %main_bb4

main_bb4:                                         ; preds = %main_bb5, %main_bb3
  %swapped.0 = phi i32 [ 1, %main_bb3 ], [ %swapped.1, %main_bb5 ]
  %"1" = icmp ne i32 %swapped.0, 0
  br i1 %"1", label %main_bb5, label %main_bb9

main_bb5:                                         ; preds = %main_bb4, %main_bb8
  %i.0 = phi i32 [ %"23", %main_bb8 ], [ 1, %main_bb4 ]
  %swapped.1 = phi i32 [ %swapped.2, %main_bb8 ], [ 0, %main_bb4 ]
  %"2" = icmp slt i32 %i.0, 100000
  br i1 %"2", label %main_bb6, label %main_bb4

main_bb6:                                         ; preds = %main_bb5
  %"3" = sub nsw i32 %i.0, 1
  %"4" = sext i32 %"3" to i64
  %"5" = getelementptr inbounds [100000 x i32]* %a, i32 0, i64 %"4"
  %"6" = load i32* %"5", align 4
  %"7" = sext i32 %i.0 to i64
  %"8" = getelementptr inbounds [100000 x i32]* %a, i32 0, i64 %"7"
  %"9" = load i32* %"8", align 4
  %"10" = icmp sgt i32 %"6", %"9"
  br i1 %"10", label %main_bb7, label %main_bb8

main_bb7:                                         ; preds = %main_bb6
  %"11" = sext i32 %i.0 to i64
  %"12" = getelementptr inbounds [100000 x i32]* %a, i32 0, i64 %"11"
  %"13" = load i32* %"12", align 4
  %"14" = sub nsw i32 %i.0, 1
  %"15" = sext i32 %"14" to i64
  %"16" = getelementptr inbounds [100000 x i32]* %a, i32 0, i64 %"15"
  %"17" = load i32* %"16", align 4
  %"18" = sext i32 %i.0 to i64
  %"19" = getelementptr inbounds [100000 x i32]* %a, i32 0, i64 %"18"
  store i32 %"17", i32* %"19", align 4
  %"20" = sub nsw i32 %i.0, 1
  %"21" = sext i32 %"20" to i64
  %"22" = getelementptr inbounds [100000 x i32]* %a, i32 0, i64 %"21"
  store i32 %"13", i32* %"22", align 4
  br label %main_bb8

main_bb8:                                         ; preds = %main_bb7, %main_bb6
  %swapped.2 = phi i32 [ 1, %main_bb7 ], [ %swapped.1, %main_bb6 ]
  %"23" = add nsw i32 %i.0, 1
  br label %main_bb5

main_bb9:                                         ; preds = %main_bb4, %main_bb14
  %x.0 = phi i32 [ %"35", %main_bb14 ], [ 0, %main_bb4 ]
  %"24" = icmp slt i32 %x.0, 100000
  br i1 %"24", label %main_bb10, label %main_bb15

main_bb10:                                        ; preds = %main_bb9
  %"25" = add nsw i32 %x.0, 1
  %"26" = sext i32 %x.0 to i64
  %"27" = getelementptr inbounds [100000 x i32]* %a, i32 0, i64 %"26"
  %"28" = load i32* %"27", align 4
  br label %main_bb11

main_bb11:                                        ; preds = %main___VERIFIER_assert.exit, %main_bb10
  %y.0 = phi i32 [ %"25", %main_bb10 ], [ %"34", %main___VERIFIER_assert.exit ]
  %"29" = icmp slt i32 %y.0, 100000
  br i1 %"29", label %main_bb12, label %main_bb14

main_bb12:                                        ; preds = %main_bb11
  %"30" = sext i32 %y.0 to i64
  %"31" = getelementptr inbounds [100000 x i32]* %a, i32 0, i64 %"30"
  %"32" = load i32* %"31", align 4
  %"33" = icmp sle i32 %"28", %"32"
  br i1 %"33", label %main___VERIFIER_assert.exit, label %main_bb13

main___VERIFIER_assert.exit:                      ; preds = %main_bb12
  %"34" = add nsw i32 %y.0, 1
  br label %main_bb11

main_bb13:                                        ; preds = %main_bb12
  call void (...)* @__VERIFIER_error() #3
  unreachable

main_bb14:                                        ; preds = %main_bb11
  %"35" = add nsw i32 %x.0, 1
  br label %main_bb9

main_bb15:                                        ; preds = %main_bb9
  ret i32 0
}

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn }
attributes #3 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

