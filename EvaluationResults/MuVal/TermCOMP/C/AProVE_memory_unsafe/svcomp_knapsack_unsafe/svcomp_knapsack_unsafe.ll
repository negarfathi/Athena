; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_unsafe/svcomp_knapsack_unsafe/svcomp_knapsack_unsafe.bc'
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
  %"38" = call i32* @__kittel_nondef.0()
  %"39" = call i32* @__kittel_nondef.0()
  %"40" = call i32* @__kittel_nondef.0()
  %"41" = call i32* @__kittel_nondef.0()
  %"42" = call i32 @__VERIFIER_nondet_int()
  %"43" = call i32 @__VERIFIER_nondet_int()
  br label %main_bb11

main_bb11:                                        ; preds = %main_bb18, %main_bb10
  %j.0.i = phi i32 [ 1, %main_bb10 ], [ %"81", %main_bb18 ]
  %"44" = icmp sle i32 %j.0.i, %"42"
  br i1 %"44", label %main_bb12, label %main_knapsack.exit

main_bb12:                                        ; preds = %main_bb11
  %"45" = sext i32 %j.0.i to i64
  %"46" = getelementptr inbounds i32* %"38", i64 %"45"
  %"47" = sext i32 %j.0.i to i64
  %"48" = getelementptr inbounds i32* %"38", i64 %"47"
  %"49" = sext i32 %j.0.i to i64
  %"50" = getelementptr inbounds i32* %"39", i64 %"49"
  %"51" = sext i32 %j.0.i to i64
  %"52" = getelementptr inbounds i32* %"38", i64 %"51"
  %"53" = sext i32 %j.0.i to i64
  %"54" = getelementptr inbounds i32* %"39", i64 %"53"
  br label %main_bb13

main_bb13:                                        ; preds = %main_bb17, %main_bb12
  %i.0.i = phi i32 [ 1, %main_bb12 ], [ %"80", %main_bb17 ]
  %"55" = icmp sle i32 %i.0.i, %"43"
  br i1 %"55", label %main_bb14, label %main_bb18

main_bb14:                                        ; preds = %main_bb13
  %"56" = load i32* %"46", align 4
  %"57" = icmp sge i32 %i.0.i, %"56"
  br i1 %"57", label %main_bb15, label %main_bb17

main_bb15:                                        ; preds = %main_bb14
  %"58" = sext i32 %i.0.i to i64
  %"59" = getelementptr inbounds i32* %"40", i64 %"58"
  %"60" = load i32* %"59", align 4
  %"61" = load i32* %"48", align 4
  %"62" = sub nsw i32 %i.0.i, %"61"
  %"63" = sext i32 %"62" to i64
  %"64" = getelementptr inbounds i32* %"40", i64 %"63"
  %"65" = load i32* %"64", align 4
  %"66" = load i32* %"50", align 4
  %"67" = add nsw i32 %"65", %"66"
  %"68" = icmp slt i32 %"60", %"67"
  br i1 %"68", label %main_bb16, label %main_bb17

main_bb16:                                        ; preds = %main_bb15
  %"69" = load i32* %"52", align 4
  %"70" = sub nsw i32 %i.0.i, %"69"
  %"71" = sext i32 %"70" to i64
  %"72" = getelementptr inbounds i32* %"40", i64 %"71"
  %"73" = load i32* %"72", align 4
  %"74" = load i32* %"54", align 4
  %"75" = add nsw i32 %"73", %"74"
  %"76" = sext i32 %i.0.i to i64
  %"77" = getelementptr inbounds i32* %"40", i64 %"76"
  store i32 %"75", i32* %"77", align 4
  %"78" = sext i32 %i.0.i to i64
  %"79" = getelementptr inbounds i32* %"41", i64 %"78"
  store i32 %j.0.i, i32* %"79", align 4
  br label %main_bb17

main_bb17:                                        ; preds = %main_bb16, %main_bb15, %main_bb14
  %"80" = add nsw i32 %i.0.i, 1
  br label %main_bb13

main_bb18:                                        ; preds = %main_bb13
  %"81" = add nsw i32 %j.0.i, 1
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

