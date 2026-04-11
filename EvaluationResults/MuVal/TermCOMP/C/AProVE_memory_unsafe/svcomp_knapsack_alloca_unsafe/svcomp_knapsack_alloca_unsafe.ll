; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_unsafe/svcomp_knapsack_alloca_unsafe/svcomp_knapsack_alloca_unsafe.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define void @knapsack(i32* %size, i32* %val, i32 %N, i32* %cost, i32* %best, i32 %M) #0 {
knapsack_bb0:
  br label %knapsack_bb1

knapsack_bb1:                                     ; preds = %knapsack_bb8, %knapsack_bb0
  %j.0 = phi i32 [ 1, %knapsack_bb0 ], [ %"37", %knapsack_bb8 ]
  %"0" = icmp sle i32 %j.0, %N
  br i1 %"0", label %knapsack_bb2, label %knapsack_bb9

knapsack_bb2:                                     ; preds = %knapsack_bb1
  %"1" = sext i32 %j.0 to i64
  %"2" = getelementptr inbounds i32* %size, i64 %"1"
  %"3" = sext i32 %j.0 to i64
  %"4" = getelementptr inbounds i32* %size, i64 %"3"
  %"5" = sext i32 %j.0 to i64
  %"6" = getelementptr inbounds i32* %val, i64 %"5"
  %"7" = sext i32 %j.0 to i64
  %"8" = getelementptr inbounds i32* %size, i64 %"7"
  %"9" = sext i32 %j.0 to i64
  %"10" = getelementptr inbounds i32* %val, i64 %"9"
  br label %knapsack_bb3

knapsack_bb3:                                     ; preds = %knapsack_bb7, %knapsack_bb2
  %i.0 = phi i32 [ 1, %knapsack_bb2 ], [ %"36", %knapsack_bb7 ]
  %"11" = icmp sle i32 %i.0, %M
  br i1 %"11", label %knapsack_bb4, label %knapsack_bb8

knapsack_bb4:                                     ; preds = %knapsack_bb3
  %"12" = load i32* %"2", align 4
  %"13" = icmp sge i32 %i.0, %"12"
  br i1 %"13", label %knapsack_bb5, label %knapsack_bb7

knapsack_bb5:                                     ; preds = %knapsack_bb4
  %"14" = sext i32 %i.0 to i64
  %"15" = getelementptr inbounds i32* %cost, i64 %"14"
  %"16" = load i32* %"15", align 4
  %"17" = load i32* %"4", align 4
  %"18" = sub nsw i32 %i.0, %"17"
  %"19" = sext i32 %"18" to i64
  %"20" = getelementptr inbounds i32* %cost, i64 %"19"
  %"21" = load i32* %"20", align 4
  %"22" = load i32* %"6", align 4
  %"23" = add nsw i32 %"21", %"22"
  %"24" = icmp slt i32 %"16", %"23"
  br i1 %"24", label %knapsack_bb6, label %knapsack_bb7

knapsack_bb6:                                     ; preds = %knapsack_bb5
  %"25" = load i32* %"8", align 4
  %"26" = sub nsw i32 %i.0, %"25"
  %"27" = sext i32 %"26" to i64
  %"28" = getelementptr inbounds i32* %cost, i64 %"27"
  %"29" = load i32* %"28", align 4
  %"30" = load i32* %"10", align 4
  %"31" = add nsw i32 %"29", %"30"
  %"32" = sext i32 %i.0 to i64
  %"33" = getelementptr inbounds i32* %cost, i64 %"32"
  store i32 %"31", i32* %"33", align 4
  %"34" = sext i32 %i.0 to i64
  %"35" = getelementptr inbounds i32* %best, i64 %"34"
  store i32 %j.0, i32* %"35", align 4
  br label %knapsack_bb7

knapsack_bb7:                                     ; preds = %knapsack_bb4, %knapsack_bb6, %knapsack_bb5
  %"36" = add nsw i32 %i.0, 1
  br label %knapsack_bb3

knapsack_bb8:                                     ; preds = %knapsack_bb3
  %"37" = add nsw i32 %j.0, 1
  br label %knapsack_bb1

knapsack_bb9:                                     ; preds = %knapsack_bb1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb10:
  %"38" = call i32 @__VERIFIER_nondet_int()
  %"39" = call i32 @__VERIFIER_nondet_int()
  %"40" = icmp slt i32 %"38", 1
  %. = select i1 %"40", i32 1, i32 %"38"
  %"41" = icmp slt i32 %"39", 1
  %M.0 = select i1 %"41", i32 1, i32 %"39"
  %"42" = sext i32 %. to i64
  %"43" = mul i64 %"42", 4
  %"44" = alloca i8, i64 %"43"
  %"45" = bitcast i8* %"44" to i32*
  %"46" = sext i32 %. to i64
  %"47" = mul i64 %"46", 4
  %"48" = alloca i8, i64 %"47"
  %"49" = bitcast i8* %"48" to i32*
  %"50" = sext i32 %M.0 to i64
  %"51" = mul i64 %"50", 4
  %"52" = alloca i8, i64 %"51"
  %"53" = bitcast i8* %"52" to i32*
  %"54" = sext i32 %M.0 to i64
  %"55" = mul i64 %"54", 4
  %"56" = alloca i8, i64 %"55"
  %"57" = bitcast i8* %"56" to i32*
  br label %main_bb11

main_bb11:                                        ; preds = %main_bb18, %main_bb10
  %j.0.i = phi i32 [ 1, %main_bb10 ], [ %"95", %main_bb18 ]
  %"58" = icmp sle i32 %j.0.i, %.
  br i1 %"58", label %main_bb12, label %main_knapsack.exit

main_bb12:                                        ; preds = %main_bb11
  %"59" = sext i32 %j.0.i to i64
  %"60" = getelementptr inbounds i32* %"45", i64 %"59"
  %"61" = sext i32 %j.0.i to i64
  %"62" = getelementptr inbounds i32* %"45", i64 %"61"
  %"63" = sext i32 %j.0.i to i64
  %"64" = getelementptr inbounds i32* %"49", i64 %"63"
  %"65" = sext i32 %j.0.i to i64
  %"66" = getelementptr inbounds i32* %"45", i64 %"65"
  %"67" = sext i32 %j.0.i to i64
  %"68" = getelementptr inbounds i32* %"49", i64 %"67"
  %"69" = load i32* %"60", align 4
  %"70" = load i32* %"62", align 4
  %"71" = load i32* %"64", align 4
  %"72" = load i32* %"66", align 4
  %"73" = load i32* %"68", align 4
  br label %main_bb13

main_bb13:                                        ; preds = %main_bb17, %main_bb12
  %i.0.i = phi i32 [ 1, %main_bb12 ], [ %"94", %main_bb17 ]
  %"74" = icmp sle i32 %i.0.i, %M.0
  br i1 %"74", label %main_bb14, label %main_bb18

main_bb14:                                        ; preds = %main_bb13
  %"75" = icmp sge i32 %i.0.i, %"69"
  br i1 %"75", label %main_bb15, label %main_bb17

main_bb15:                                        ; preds = %main_bb14
  %"76" = sext i32 %i.0.i to i64
  %"77" = getelementptr inbounds i32* %"53", i64 %"76"
  %"78" = load i32* %"77", align 4
  %"79" = sub nsw i32 %i.0.i, %"70"
  %"80" = sext i32 %"79" to i64
  %"81" = getelementptr inbounds i32* %"53", i64 %"80"
  %"82" = load i32* %"81", align 4
  %"83" = add nsw i32 %"82", %"71"
  %"84" = icmp slt i32 %"78", %"83"
  br i1 %"84", label %main_bb16, label %main_bb17

main_bb16:                                        ; preds = %main_bb15
  %"85" = sub nsw i32 %i.0.i, %"72"
  %"86" = sext i32 %"85" to i64
  %"87" = getelementptr inbounds i32* %"53", i64 %"86"
  %"88" = load i32* %"87", align 4
  %"89" = add nsw i32 %"88", %"73"
  %"90" = sext i32 %i.0.i to i64
  %"91" = getelementptr inbounds i32* %"53", i64 %"90"
  store i32 %"89", i32* %"91", align 4
  %"92" = sext i32 %i.0.i to i64
  %"93" = getelementptr inbounds i32* %"57", i64 %"92"
  store i32 %j.0.i, i32* %"93", align 4
  br label %main_bb17

main_bb17:                                        ; preds = %main_bb16, %main_bb15, %main_bb14
  %"94" = add nsw i32 %i.0.i, 1
  br label %main_bb13

main_bb18:                                        ; preds = %main_bb13
  %"95" = add nsw i32 %j.0.i, 1
  br label %main_bb11

main_knapsack.exit:                               ; preds = %main_bb11
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32* @__kittel_nondef.0()

declare i32 @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

