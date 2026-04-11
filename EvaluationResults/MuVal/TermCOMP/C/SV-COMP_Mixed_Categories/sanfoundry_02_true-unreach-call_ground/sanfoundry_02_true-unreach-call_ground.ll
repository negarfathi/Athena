; ModuleID = 'Benchmarks/TermCOMP/C/SV-COMP_Mixed_Categories/sanfoundry_02_true-unreach-call_ground/sanfoundry_02_true-unreach-call_ground.bc'
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
  %array = alloca [100000 x i32], align 16
  %"1" = getelementptr inbounds [100000 x i32]* %array, i32 0, i64 0
  %"2" = load i32* %"1", align 4
  %"3" = getelementptr inbounds [100000 x i32]* %array, i32 0, i64 1
  %"4" = load i32* %"3", align 4
  %"5" = icmp slt i32 %"2", %"4"
  %. = select i1 %"5", i32 %"2", i32 %"4"
  %.2 = select i1 %"5", i32 %"4", i32 %"2"
  br label %main_bb4

main_bb4:                                         ; preds = %main_bb8, %main_bb3
  %largest2.1 = phi i32 [ %., %main_bb3 ], [ %largest2.3, %main_bb8 ]
  %largest1.1 = phi i32 [ %.2, %main_bb3 ], [ %largest1.2, %main_bb8 ]
  %i.0 = phi i32 [ 2, %main_bb3 ], [ %"18", %main_bb8 ]
  %"6" = icmp slt i32 %i.0, 100000
  br i1 %"6", label %main_bb5, label %main_bb9

main_bb5:                                         ; preds = %main_bb4
  %"7" = sext i32 %i.0 to i64
  %"8" = getelementptr inbounds [100000 x i32]* %array, i32 0, i64 %"7"
  %"9" = load i32* %"8", align 4
  %"10" = icmp sge i32 %"9", %largest1.1
  %"11" = sext i32 %i.0 to i64
  %"12" = getelementptr inbounds [100000 x i32]* %array, i32 0, i64 %"11"
  %"13" = load i32* %"12", align 4
  br i1 %"10", label %main_bb8, label %main_bb6

main_bb6:                                         ; preds = %main_bb5
  %"14" = icmp sgt i32 %"13", %largest2.1
  br i1 %"14", label %main_bb7, label %main_bb8

main_bb7:                                         ; preds = %main_bb6
  %"15" = sext i32 %i.0 to i64
  %"16" = getelementptr inbounds [100000 x i32]* %array, i32 0, i64 %"15"
  %"17" = load i32* %"16", align 4
  br label %main_bb8

main_bb8:                                         ; preds = %main_bb5, %main_bb7, %main_bb6
  %largest2.3 = phi i32 [ %largest1.1, %main_bb5 ], [ %"17", %main_bb7 ], [ %largest2.1, %main_bb6 ]
  %largest1.2 = phi i32 [ %"13", %main_bb5 ], [ %largest1.1, %main_bb7 ], [ %largest1.1, %main_bb6 ]
  %"18" = add nsw i32 %i.0, 1
  br label %main_bb4

main_bb9:                                         ; preds = %main_bb4, %main___VERIFIER_assert.exit
  %x.0 = phi i32 [ %"24", %main___VERIFIER_assert.exit ], [ 0, %main_bb4 ]
  %"19" = icmp slt i32 %x.0, 100000
  br i1 %"19", label %main_bb10, label %main_bb12

main_bb10:                                        ; preds = %main_bb9
  %"20" = sext i32 %x.0 to i64
  %"21" = getelementptr inbounds [100000 x i32]* %array, i32 0, i64 %"20"
  %"22" = load i32* %"21", align 4
  %"23" = icmp sle i32 %"22", %largest1.1
  br i1 %"23", label %main___VERIFIER_assert.exit, label %main_bb11

main___VERIFIER_assert.exit:                      ; preds = %main_bb10
  %"24" = add nsw i32 %x.0, 1
  br label %main_bb9

main_bb11:                                        ; preds = %main_bb10
  call void (...)* @__VERIFIER_error() #3
  unreachable

main_bb12:                                        ; preds = %main_bb9, %main___VERIFIER_assert.exit1
  %x.1 = phi i32 [ %"34", %main___VERIFIER_assert.exit1 ], [ 0, %main_bb9 ]
  %"25" = icmp slt i32 %x.1, 100000
  br i1 %"25", label %main_bb13, label %main_bb16

main_bb13:                                        ; preds = %main_bb12
  %"26" = sext i32 %x.1 to i64
  %"27" = getelementptr inbounds [100000 x i32]* %array, i32 0, i64 %"26"
  %"28" = load i32* %"27", align 4
  %"29" = icmp sle i32 %"28", %largest2.1
  br i1 %"29", label %main___VERIFIER_assert.exit1, label %main_bb14

main_bb14:                                        ; preds = %main_bb13
  %"30" = sext i32 %x.1 to i64
  %"31" = getelementptr inbounds [100000 x i32]* %array, i32 0, i64 %"30"
  %"32" = load i32* %"31", align 4
  %"33" = icmp eq i32 %"32", %largest1.1
  br i1 %"33", label %main___VERIFIER_assert.exit1, label %main_bb15

main___VERIFIER_assert.exit1:                     ; preds = %main_bb14, %main_bb13
  %"34" = add nsw i32 %x.1, 1
  br label %main_bb12

main_bb15:                                        ; preds = %main_bb14
  call void (...)* @__VERIFIER_error() #3
  unreachable

main_bb16:                                        ; preds = %main_bb12
  ret i32 0
}

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn }
attributes #3 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

