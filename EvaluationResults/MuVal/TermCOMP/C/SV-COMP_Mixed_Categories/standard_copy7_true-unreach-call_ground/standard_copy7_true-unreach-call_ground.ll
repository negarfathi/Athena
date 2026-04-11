; ModuleID = 'Benchmarks/TermCOMP/C/SV-COMP_Mixed_Categories/standard_copy7_true-unreach-call_ground/standard_copy7_true-unreach-call_ground.bc'
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
  %a1 = alloca [100000 x i32], align 16
  %a2 = alloca [100000 x i32], align 16
  %a3 = alloca [100000 x i32], align 16
  %a4 = alloca [100000 x i32], align 16
  %a5 = alloca [100000 x i32], align 16
  %a6 = alloca [100000 x i32], align 16
  %a7 = alloca [100000 x i32], align 16
  %a8 = alloca [100000 x i32], align 16
  br label %main_bb4

main_bb4:                                         ; preds = %main_bb5, %main_bb3
  %i.0 = phi i32 [ 0, %main_bb3 ], [ %"7", %main_bb5 ]
  %"1" = icmp slt i32 %i.0, 100000
  br i1 %"1", label %main_bb5, label %main_bb6

main_bb5:                                         ; preds = %main_bb4
  %"2" = sext i32 %i.0 to i64
  %"3" = getelementptr inbounds [100000 x i32]* %a1, i32 0, i64 %"2"
  %"4" = load i32* %"3", align 4
  %"5" = sext i32 %i.0 to i64
  %"6" = getelementptr inbounds [100000 x i32]* %a2, i32 0, i64 %"5"
  store i32 %"4", i32* %"6", align 4
  %"7" = add nsw i32 %i.0, 1
  br label %main_bb4

main_bb6:                                         ; preds = %main_bb4, %main_bb7
  %i.1 = phi i32 [ %"14", %main_bb7 ], [ 0, %main_bb4 ]
  %"8" = icmp slt i32 %i.1, 100000
  br i1 %"8", label %main_bb7, label %main_bb8

main_bb7:                                         ; preds = %main_bb6
  %"9" = sext i32 %i.1 to i64
  %"10" = getelementptr inbounds [100000 x i32]* %a2, i32 0, i64 %"9"
  %"11" = load i32* %"10", align 4
  %"12" = sext i32 %i.1 to i64
  %"13" = getelementptr inbounds [100000 x i32]* %a3, i32 0, i64 %"12"
  store i32 %"11", i32* %"13", align 4
  %"14" = add nsw i32 %i.1, 1
  br label %main_bb6

main_bb8:                                         ; preds = %main_bb6, %main_bb9
  %i.2 = phi i32 [ %"21", %main_bb9 ], [ 0, %main_bb6 ]
  %"15" = icmp slt i32 %i.2, 100000
  br i1 %"15", label %main_bb9, label %main_bb10

main_bb9:                                         ; preds = %main_bb8
  %"16" = sext i32 %i.2 to i64
  %"17" = getelementptr inbounds [100000 x i32]* %a3, i32 0, i64 %"16"
  %"18" = load i32* %"17", align 4
  %"19" = sext i32 %i.2 to i64
  %"20" = getelementptr inbounds [100000 x i32]* %a4, i32 0, i64 %"19"
  store i32 %"18", i32* %"20", align 4
  %"21" = add nsw i32 %i.2, 1
  br label %main_bb8

main_bb10:                                        ; preds = %main_bb8, %main_bb11
  %i.3 = phi i32 [ %"28", %main_bb11 ], [ 0, %main_bb8 ]
  %"22" = icmp slt i32 %i.3, 100000
  br i1 %"22", label %main_bb11, label %main_bb12

main_bb11:                                        ; preds = %main_bb10
  %"23" = sext i32 %i.3 to i64
  %"24" = getelementptr inbounds [100000 x i32]* %a4, i32 0, i64 %"23"
  %"25" = load i32* %"24", align 4
  %"26" = sext i32 %i.3 to i64
  %"27" = getelementptr inbounds [100000 x i32]* %a5, i32 0, i64 %"26"
  store i32 %"25", i32* %"27", align 4
  %"28" = add nsw i32 %i.3, 1
  br label %main_bb10

main_bb12:                                        ; preds = %main_bb10, %main_bb13
  %i.4 = phi i32 [ %"35", %main_bb13 ], [ 0, %main_bb10 ]
  %"29" = icmp slt i32 %i.4, 100000
  br i1 %"29", label %main_bb13, label %main_bb14

main_bb13:                                        ; preds = %main_bb12
  %"30" = sext i32 %i.4 to i64
  %"31" = getelementptr inbounds [100000 x i32]* %a5, i32 0, i64 %"30"
  %"32" = load i32* %"31", align 4
  %"33" = sext i32 %i.4 to i64
  %"34" = getelementptr inbounds [100000 x i32]* %a6, i32 0, i64 %"33"
  store i32 %"32", i32* %"34", align 4
  %"35" = add nsw i32 %i.4, 1
  br label %main_bb12

main_bb14:                                        ; preds = %main_bb12, %main_bb15
  %i.5 = phi i32 [ %"42", %main_bb15 ], [ 0, %main_bb12 ]
  %"36" = icmp slt i32 %i.5, 100000
  br i1 %"36", label %main_bb15, label %main_bb16

main_bb15:                                        ; preds = %main_bb14
  %"37" = sext i32 %i.5 to i64
  %"38" = getelementptr inbounds [100000 x i32]* %a6, i32 0, i64 %"37"
  %"39" = load i32* %"38", align 4
  %"40" = sext i32 %i.5 to i64
  %"41" = getelementptr inbounds [100000 x i32]* %a7, i32 0, i64 %"40"
  store i32 %"39", i32* %"41", align 4
  %"42" = add nsw i32 %i.5, 1
  br label %main_bb14

main_bb16:                                        ; preds = %main_bb14, %main_bb17
  %i.6 = phi i32 [ %"49", %main_bb17 ], [ 0, %main_bb14 ]
  %"43" = icmp slt i32 %i.6, 100000
  br i1 %"43", label %main_bb17, label %main_bb18

main_bb17:                                        ; preds = %main_bb16
  %"44" = sext i32 %i.6 to i64
  %"45" = getelementptr inbounds [100000 x i32]* %a7, i32 0, i64 %"44"
  %"46" = load i32* %"45", align 4
  %"47" = sext i32 %i.6 to i64
  %"48" = getelementptr inbounds [100000 x i32]* %a8, i32 0, i64 %"47"
  store i32 %"46", i32* %"48", align 4
  %"49" = add nsw i32 %i.6, 1
  br label %main_bb16

main_bb18:                                        ; preds = %main_bb16, %main___VERIFIER_assert.exit
  %x.0 = phi i32 [ %"58", %main___VERIFIER_assert.exit ], [ 0, %main_bb16 ]
  %"50" = icmp slt i32 %x.0, 100000
  br i1 %"50", label %main_bb19, label %main_bb21

main_bb19:                                        ; preds = %main_bb18
  %"51" = sext i32 %x.0 to i64
  %"52" = getelementptr inbounds [100000 x i32]* %a1, i32 0, i64 %"51"
  %"53" = load i32* %"52", align 4
  %"54" = sext i32 %x.0 to i64
  %"55" = getelementptr inbounds [100000 x i32]* %a8, i32 0, i64 %"54"
  %"56" = load i32* %"55", align 4
  %"57" = icmp eq i32 %"53", %"56"
  br i1 %"57", label %main___VERIFIER_assert.exit, label %main_bb20

main___VERIFIER_assert.exit:                      ; preds = %main_bb19
  %"58" = add nsw i32 %x.0, 1
  br label %main_bb18

main_bb20:                                        ; preds = %main_bb19
  call void (...)* @__VERIFIER_error() #3
  unreachable

main_bb21:                                        ; preds = %main_bb18
  ret i32 0
}

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn }
attributes #3 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

