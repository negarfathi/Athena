; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_lis_alloca/svcomp_lis_alloca.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @lis(i32* %a, i32 %N) #0 {
lis_bb0:
  %"0" = sext i32 %N to i64
  %"1" = mul i64 4, %"0"
  %"2" = alloca i8, i64 %"1"
  %"3" = bitcast i8* %"2" to i32*
  %"4" = sext i32 %N to i64
  %"5" = mul i64 4, %"4"
  %"6" = alloca i8, i64 %"5"
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

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb16:
  %"50" = call i32 @__VERIFIER_nondet_int()
  %"51" = icmp slt i32 %"50", 1
  %. = select i1 %"51", i32 1, i32 %"50"
  %"52" = sext i32 %. to i64
  %"53" = mul i64 %"52", 4
  %"54" = alloca i8, i64 %"53"
  %"55" = bitcast i8* %"54" to i32*
  %savedstack = call i8* @llvm.stacksave()
  %"56" = sext i32 %. to i64
  %"57" = mul i64 4, %"56"
  %"58" = alloca i8, i64 %"57"
  %"59" = bitcast i8* %"58" to i32*
  %"60" = sext i32 %. to i64
  %"61" = mul i64 4, %"60"
  %"62" = alloca i8, i64 %"61"
  %"63" = bitcast i8* %"62" to i32*
  br label %main_bb17

main_bb17:                                        ; preds = %main_bb18, %main_bb16
  %i.0.i = phi i32 [ 0, %main_bb16 ], [ %"69", %main_bb18 ]
  %"64" = icmp slt i32 %i.0.i, %.
  br i1 %"64", label %main_bb18, label %main_bb19

main_bb18:                                        ; preds = %main_bb17
  %"65" = sext i32 %i.0.i to i64
  %"66" = getelementptr inbounds i32* %"59", i64 %"65"
  store i32 1, i32* %"66", align 4
  %"67" = sext i32 %i.0.i to i64
  %"68" = getelementptr inbounds i32* %"63", i64 %"67"
  store i32 %i.0.i, i32* %"68", align 4
  %"69" = add nsw i32 %i.0.i, 1
  br label %main_bb17

main_bb19:                                        ; preds = %main_bb26, %main_bb17
  %i.1.i = phi i32 [ %"96", %main_bb26 ], [ 1, %main_bb17 ]
  %"70" = icmp slt i32 %i.1.i, %.
  br i1 %"70", label %main_bb20, label %main_bb27

main_bb20:                                        ; preds = %main_bb19
  %"71" = sext i32 %i.1.i to i64
  %"72" = getelementptr inbounds i32* %"55", i64 %"71"
  %"73" = load i32* %"72", align 4
  %"74" = sext i32 %i.1.i to i64
  %"75" = getelementptr inbounds i32* %"59", i64 %"74"
  %"76" = sext i32 %i.1.i to i64
  %"77" = getelementptr inbounds i32* %"59", i64 %"76"
  %"78" = sext i32 %i.1.i to i64
  %"79" = getelementptr inbounds i32* %"63", i64 %"78"
  br label %main_bb21

main_bb21:                                        ; preds = %main_bb25, %main_bb20
  %j.0.i = phi i32 [ 0, %main_bb20 ], [ %"95", %main_bb25 ]
  %"80" = icmp slt i32 %j.0.i, %i.1.i
  br i1 %"80", label %main_bb22, label %main_bb26

main_bb22:                                        ; preds = %main_bb21
  %"81" = sext i32 %j.0.i to i64
  %"82" = getelementptr inbounds i32* %"55", i64 %"81"
  %"83" = load i32* %"82", align 4
  %"84" = icmp sgt i32 %"73", %"83"
  br i1 %"84", label %main_bb23, label %main_bb25

main_bb23:                                        ; preds = %main_bb22
  %"85" = load i32* %"75", align 4
  %"86" = sext i32 %j.0.i to i64
  %"87" = getelementptr inbounds i32* %"59", i64 %"86"
  %"88" = load i32* %"87", align 4
  %"89" = add nsw i32 %"88", 1
  %"90" = icmp slt i32 %"85", %"89"
  br i1 %"90", label %main_bb24, label %main_bb25

main_bb24:                                        ; preds = %main_bb23
  %"91" = sext i32 %j.0.i to i64
  %"92" = getelementptr inbounds i32* %"59", i64 %"91"
  %"93" = load i32* %"92", align 4
  %"94" = add nsw i32 %"93", 1
  store i32 %"94", i32* %"77", align 4
  store i32 %j.0.i, i32* %"79", align 4
  br label %main_bb25

main_bb25:                                        ; preds = %main_bb24, %main_bb23, %main_bb22
  %"95" = add nsw i32 %j.0.i, 1
  br label %main_bb21

main_bb26:                                        ; preds = %main_bb21
  %"96" = add nsw i32 %i.1.i, 1
  br label %main_bb19

main_bb27:                                        ; preds = %main_bb30, %main_bb19
  %max.0.i = phi i32 [ %max.1.i, %main_bb30 ], [ 0, %main_bb19 ]
  %i.2.i = phi i32 [ %"105", %main_bb30 ], [ 0, %main_bb19 ]
  %"97" = icmp slt i32 %i.2.i, %.
  br i1 %"97", label %main_bb28, label %main_lis.exit

main_bb28:                                        ; preds = %main_bb27
  %"98" = sext i32 %i.2.i to i64
  %"99" = getelementptr inbounds i32* %"59", i64 %"98"
  %"100" = load i32* %"99", align 4
  %"101" = icmp slt i32 %max.0.i, %"100"
  br i1 %"101", label %main_bb29, label %main_bb30

main_bb29:                                        ; preds = %main_bb28
  %"102" = sext i32 %i.2.i to i64
  %"103" = getelementptr inbounds i32* %"59", i64 %"102"
  %"104" = load i32* %"103", align 4
  br label %main_bb30

main_bb30:                                        ; preds = %main_bb29, %main_bb28
  %max.1.i = phi i32 [ %"104", %main_bb29 ], [ %max.0.i, %main_bb28 ]
  %"105" = add nsw i32 %i.2.i, 1
  br label %main_bb27

main_lis.exit:                                    ; preds = %main_bb27
  call void @llvm.stackrestore(i8* %savedstack)
  ret i32 %max.0.i
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32* @__kittel_nondef.0()

declare i32 @__kittel_nondef.1()

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

