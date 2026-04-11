; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_unsafe/svcomp_lis_unsafe/svcomp_lis_unsafe.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @lis(i32* %a, i32 %N) #0 {
lis_bb0:
  %"0" = sext i32 %N to i64
  %"1" = mul i64 4, %"0"
  %"2" = call noalias i8* @malloc(i64 %"1") #3
  %"3" = bitcast i8* %"2" to i32*
  %"4" = sext i32 %N to i64
  %"5" = mul i64 4, %"4"
  %"6" = call noalias i8* @malloc(i64 %"5") #3
  %"7" = bitcast i8* %"6" to i32*
  br label %lis_bb1

lis_bb1:                                          ; preds = %lis_bb2, %lis_bb0
  %i.0 = phi i32 [ 0, %lis_bb0 ], [ %"13", %lis_bb2 ]
  %"8" = icmp slt i32 %i.0, %N
  br i1 %"8", label %lis_bb2, label %lis_bb3

lis_bb2:                                          ; preds = %lis_bb1
  %"9" = sext i32 %i.0 to i64
  %"10" = getelementptr inbounds i32* %"3", i64 %"9"
  store i32 1, i32* %"10", align 4
  %"11" = sext i32 %i.0 to i64
  %"12" = getelementptr inbounds i32* %"7", i64 %"11"
  store i32 %i.0, i32* %"12", align 4
  %"13" = add nsw i32 %i.0, 1
  br label %lis_bb1

lis_bb3:                                          ; preds = %lis_bb1, %lis_bb10
  %i.1 = phi i32 [ %"40", %lis_bb10 ], [ 1, %lis_bb1 ]
  %"14" = icmp slt i32 %i.1, %N
  br i1 %"14", label %lis_bb4, label %lis_bb11

lis_bb4:                                          ; preds = %lis_bb3
  %"15" = sext i32 %i.1 to i64
  %"16" = getelementptr inbounds i32* %a, i64 %"15"
  %"17" = load i32* %"16", align 4
  %"18" = sext i32 %i.1 to i64
  %"19" = getelementptr inbounds i32* %"3", i64 %"18"
  %"20" = sext i32 %i.1 to i64
  %"21" = getelementptr inbounds i32* %"3", i64 %"20"
  %"22" = sext i32 %i.1 to i64
  %"23" = getelementptr inbounds i32* %"7", i64 %"22"
  br label %lis_bb5

lis_bb5:                                          ; preds = %lis_bb9, %lis_bb4
  %j.0 = phi i32 [ 0, %lis_bb4 ], [ %"39", %lis_bb9 ]
  %"24" = icmp slt i32 %j.0, %i.1
  br i1 %"24", label %lis_bb6, label %lis_bb10

lis_bb6:                                          ; preds = %lis_bb5
  %"25" = sext i32 %j.0 to i64
  %"26" = getelementptr inbounds i32* %a, i64 %"25"
  %"27" = load i32* %"26", align 4
  %"28" = icmp sgt i32 %"17", %"27"
  br i1 %"28", label %lis_bb7, label %lis_bb9

lis_bb7:                                          ; preds = %lis_bb6
  %"29" = load i32* %"19", align 4
  %"30" = sext i32 %j.0 to i64
  %"31" = getelementptr inbounds i32* %"3", i64 %"30"
  %"32" = load i32* %"31", align 4
  %"33" = add nsw i32 %"32", 1
  %"34" = icmp slt i32 %"29", %"33"
  br i1 %"34", label %lis_bb8, label %lis_bb9

lis_bb8:                                          ; preds = %lis_bb7
  %"35" = sext i32 %j.0 to i64
  %"36" = getelementptr inbounds i32* %"3", i64 %"35"
  %"37" = load i32* %"36", align 4
  %"38" = add nsw i32 %"37", 1
  store i32 %"38", i32* %"21", align 4
  store i32 %j.0, i32* %"23", align 4
  br label %lis_bb9

lis_bb9:                                          ; preds = %lis_bb6, %lis_bb7, %lis_bb8
  %"39" = add nsw i32 %j.0, 1
  br label %lis_bb5

lis_bb10:                                         ; preds = %lis_bb5
  %"40" = add nsw i32 %i.1, 1
  br label %lis_bb3

lis_bb11:                                         ; preds = %lis_bb3, %lis_bb14
  %max.0 = phi i32 [ %max.1, %lis_bb14 ], [ 0, %lis_bb3 ]
  %i.2 = phi i32 [ %"49", %lis_bb14 ], [ 0, %lis_bb3 ]
  %"41" = icmp slt i32 %i.2, %N
  br i1 %"41", label %lis_bb12, label %lis_bb15

lis_bb12:                                         ; preds = %lis_bb11
  %"42" = sext i32 %i.2 to i64
  %"43" = getelementptr inbounds i32* %"3", i64 %"42"
  %"44" = load i32* %"43", align 4
  %"45" = icmp slt i32 %max.0, %"44"
  br i1 %"45", label %lis_bb13, label %lis_bb14

lis_bb13:                                         ; preds = %lis_bb12
  %"46" = sext i32 %i.2 to i64
  %"47" = getelementptr inbounds i32* %"3", i64 %"46"
  %"48" = load i32* %"47", align 4
  br label %lis_bb14

lis_bb14:                                         ; preds = %lis_bb12, %lis_bb13
  %max.1 = phi i32 [ %"48", %lis_bb13 ], [ %max.0, %lis_bb12 ]
  %"49" = add nsw i32 %i.2, 1
  br label %lis_bb11

lis_bb15:                                         ; preds = %lis_bb11
  ret i32 %max.0
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb16:
  %"50" = call i32* @__kittel_nondef.0()
  %"51" = call i32 @__VERIFIER_nondet_int()
  %"52" = sext i32 %"51" to i64
  %"53" = mul i64 4, %"52"
  %"54" = call noalias i8* @malloc(i64 %"53") #3
  %"55" = bitcast i8* %"54" to i32*
  %"56" = sext i32 %"51" to i64
  %"57" = mul i64 4, %"56"
  %"58" = call noalias i8* @malloc(i64 %"57") #3
  %"59" = bitcast i8* %"58" to i32*
  br label %main_bb17

main_bb17:                                        ; preds = %main_bb18, %main_bb16
  %i.0.i = phi i32 [ 0, %main_bb16 ], [ %"65", %main_bb18 ]
  %"60" = icmp slt i32 %i.0.i, %"51"
  br i1 %"60", label %main_bb18, label %main_bb19

main_bb18:                                        ; preds = %main_bb17
  %"61" = sext i32 %i.0.i to i64
  %"62" = getelementptr inbounds i32* %"55", i64 %"61"
  store i32 1, i32* %"62", align 4
  %"63" = sext i32 %i.0.i to i64
  %"64" = getelementptr inbounds i32* %"59", i64 %"63"
  store i32 %i.0.i, i32* %"64", align 4
  %"65" = add nsw i32 %i.0.i, 1
  br label %main_bb17

main_bb19:                                        ; preds = %main_bb26, %main_bb17
  %i.1.i = phi i32 [ %"92", %main_bb26 ], [ 1, %main_bb17 ]
  %"66" = icmp slt i32 %i.1.i, %"51"
  br i1 %"66", label %main_bb20, label %main_bb27

main_bb20:                                        ; preds = %main_bb19
  %"67" = sext i32 %i.1.i to i64
  %"68" = getelementptr inbounds i32* %"50", i64 %"67"
  %"69" = load i32* %"68", align 4
  %"70" = sext i32 %i.1.i to i64
  %"71" = getelementptr inbounds i32* %"55", i64 %"70"
  %"72" = sext i32 %i.1.i to i64
  %"73" = getelementptr inbounds i32* %"55", i64 %"72"
  %"74" = sext i32 %i.1.i to i64
  %"75" = getelementptr inbounds i32* %"59", i64 %"74"
  br label %main_bb21

main_bb21:                                        ; preds = %main_bb25, %main_bb20
  %j.0.i = phi i32 [ 0, %main_bb20 ], [ %"91", %main_bb25 ]
  %"76" = icmp slt i32 %j.0.i, %i.1.i
  br i1 %"76", label %main_bb22, label %main_bb26

main_bb22:                                        ; preds = %main_bb21
  %"77" = sext i32 %j.0.i to i64
  %"78" = getelementptr inbounds i32* %"50", i64 %"77"
  %"79" = load i32* %"78", align 4
  %"80" = icmp sgt i32 %"69", %"79"
  br i1 %"80", label %main_bb23, label %main_bb25

main_bb23:                                        ; preds = %main_bb22
  %"81" = load i32* %"71", align 4
  %"82" = sext i32 %j.0.i to i64
  %"83" = getelementptr inbounds i32* %"55", i64 %"82"
  %"84" = load i32* %"83", align 4
  %"85" = add nsw i32 %"84", 1
  %"86" = icmp slt i32 %"81", %"85"
  br i1 %"86", label %main_bb24, label %main_bb25

main_bb24:                                        ; preds = %main_bb23
  %"87" = sext i32 %j.0.i to i64
  %"88" = getelementptr inbounds i32* %"55", i64 %"87"
  %"89" = load i32* %"88", align 4
  %"90" = add nsw i32 %"89", 1
  store i32 %"90", i32* %"73", align 4
  store i32 %j.0.i, i32* %"75", align 4
  br label %main_bb25

main_bb25:                                        ; preds = %main_bb24, %main_bb23, %main_bb22
  %"91" = add nsw i32 %j.0.i, 1
  br label %main_bb21

main_bb26:                                        ; preds = %main_bb21
  %"92" = add nsw i32 %i.1.i, 1
  br label %main_bb19

main_bb27:                                        ; preds = %main_bb30, %main_bb19
  %max.0.i = phi i32 [ %max.1.i, %main_bb30 ], [ 0, %main_bb19 ]
  %i.2.i = phi i32 [ %"101", %main_bb30 ], [ 0, %main_bb19 ]
  %"93" = icmp slt i32 %i.2.i, %"51"
  br i1 %"93", label %main_bb28, label %main_lis.exit

main_bb28:                                        ; preds = %main_bb27
  %"94" = sext i32 %i.2.i to i64
  %"95" = getelementptr inbounds i32* %"55", i64 %"94"
  %"96" = load i32* %"95", align 4
  %"97" = icmp slt i32 %max.0.i, %"96"
  br i1 %"97", label %main_bb29, label %main_bb30

main_bb29:                                        ; preds = %main_bb28
  %"98" = sext i32 %i.2.i to i64
  %"99" = getelementptr inbounds i32* %"55", i64 %"98"
  %"100" = load i32* %"99", align 4
  br label %main_bb30

main_bb30:                                        ; preds = %main_bb29, %main_bb28
  %max.1.i = phi i32 [ %"100", %main_bb29 ], [ %max.0.i, %main_bb28 ]
  %"101" = add nsw i32 %i.2.i, 1
  br label %main_bb27

main_lis.exit:                                    ; preds = %main_bb27
  ret i32 %max.0.i
}

declare i32 @__VERIFIER_nondet_int() #2

declare i32* @__kittel_nondef.0()

declare i32 @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

