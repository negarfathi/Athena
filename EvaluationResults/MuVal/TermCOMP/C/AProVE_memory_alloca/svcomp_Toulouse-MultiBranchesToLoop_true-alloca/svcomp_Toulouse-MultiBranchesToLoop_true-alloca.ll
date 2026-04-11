; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_Toulouse-MultiBranchesToLoop_true-alloca/svcomp_Toulouse-MultiBranchesToLoop_true-alloca.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  %"0" = alloca i8, i64 4
  %"1" = bitcast i8* %"0" to i32*
  %"2" = alloca i8, i64 4
  %"3" = bitcast i8* %"2" to i32*
  %"4" = alloca i8, i64 4
  %"5" = bitcast i8* %"4" to i32*
  %"6" = call i32 @__VERIFIER_nondet_int()
  %"7" = icmp ne i32 %"6", 0
  br i1 %"7", label %main_bb1, label %main_bb2

main_bb1:                                         ; preds = %main_bb0
  store i32 1, i32* %"1", align 4
  br label %main_bb3

main_bb2:                                         ; preds = %main_bb0
  store i32 -1, i32* %"1", align 4
  br label %main_bb3

main_bb3:                                         ; preds = %main_bb2, %main_bb1
  %"8" = load i32* %"1", align 4
  %"9" = icmp sgt i32 %"8", 0
  %"10" = load i32* %"1", align 4
  br i1 %"9", label %main_bb4, label %main_bb5

main_bb4:                                         ; preds = %main_bb3
  %"11" = add nsw i32 %"10", 1
  store i32 %"11", i32* %"1", align 4
  br label %main_bb6

main_bb5:                                         ; preds = %main_bb3
  %"12" = add nsw i32 %"10", -1
  store i32 %"12", i32* %"1", align 4
  br label %main_bb6

main_bb6:                                         ; preds = %main_bb5, %main_bb4
  %"13" = load i32* %"1", align 4
  %"14" = icmp sgt i32 %"13", 0
  %"15" = load i32* %"1", align 4
  br i1 %"14", label %main_bb7, label %main_bb8

main_bb7:                                         ; preds = %main_bb6
  %"16" = add nsw i32 %"15", 1
  store i32 %"16", i32* %"1", align 4
  br label %main_bb9

main_bb8:                                         ; preds = %main_bb6
  %"17" = add nsw i32 %"15", -1
  store i32 %"17", i32* %"1", align 4
  br label %main_bb9

main_bb9:                                         ; preds = %main_bb8, %main_bb7
  %"18" = load i32* %"1", align 4
  %"19" = icmp sgt i32 %"18", 0
  %"20" = load i32* %"1", align 4
  br i1 %"19", label %main_bb10, label %main_bb11

main_bb10:                                        ; preds = %main_bb9
  %"21" = add nsw i32 %"20", 1
  store i32 %"21", i32* %"1", align 4
  br label %main_bb12

main_bb11:                                        ; preds = %main_bb9
  %"22" = add nsw i32 %"20", -1
  store i32 %"22", i32* %"1", align 4
  br label %main_bb12

main_bb12:                                        ; preds = %main_bb11, %main_bb10
  %"23" = load i32* %"1", align 4
  %"24" = icmp sgt i32 %"23", 0
  %"25" = load i32* %"1", align 4
  br i1 %"24", label %main_bb13, label %main_bb14

main_bb13:                                        ; preds = %main_bb12
  %"26" = add nsw i32 %"25", 1
  store i32 %"26", i32* %"1", align 4
  br label %main_bb15

main_bb14:                                        ; preds = %main_bb12
  %"27" = add nsw i32 %"25", -1
  store i32 %"27", i32* %"1", align 4
  br label %main_bb15

main_bb15:                                        ; preds = %main_bb14, %main_bb13
  %"28" = load i32* %"1", align 4
  %"29" = icmp sgt i32 %"28", 0
  %"30" = load i32* %"1", align 4
  br i1 %"29", label %main_bb16, label %main_bb17

main_bb16:                                        ; preds = %main_bb15
  %"31" = add nsw i32 %"30", 1
  store i32 %"31", i32* %"1", align 4
  br label %main_bb18

main_bb17:                                        ; preds = %main_bb15
  %"32" = add nsw i32 %"30", -1
  store i32 %"32", i32* %"1", align 4
  br label %main_bb18

main_bb18:                                        ; preds = %main_bb17, %main_bb16
  %"33" = load i32* %"1", align 4
  %"34" = icmp sgt i32 %"33", 0
  %"35" = load i32* %"1", align 4
  br i1 %"34", label %main_bb19, label %main_bb20

main_bb19:                                        ; preds = %main_bb18
  %"36" = add nsw i32 %"35", 1
  store i32 %"36", i32* %"1", align 4
  br label %main_bb21

main_bb20:                                        ; preds = %main_bb18
  %"37" = add nsw i32 %"35", -1
  store i32 %"37", i32* %"1", align 4
  br label %main_bb21

main_bb21:                                        ; preds = %main_bb20, %main_bb19
  %"38" = load i32* %"1", align 4
  %"39" = icmp sgt i32 %"38", 0
  %"40" = load i32* %"1", align 4
  br i1 %"39", label %main_bb22, label %main_bb23

main_bb22:                                        ; preds = %main_bb21
  %"41" = add nsw i32 %"40", 1
  store i32 %"41", i32* %"1", align 4
  br label %main_bb24

main_bb23:                                        ; preds = %main_bb21
  %"42" = add nsw i32 %"40", -1
  store i32 %"42", i32* %"1", align 4
  br label %main_bb24

main_bb24:                                        ; preds = %main_bb23, %main_bb22
  %"43" = load i32* %"1", align 4
  %"44" = icmp sgt i32 %"43", 0
  %"45" = load i32* %"1", align 4
  br i1 %"44", label %main_bb25, label %main_bb26

main_bb25:                                        ; preds = %main_bb24
  %"46" = add nsw i32 %"45", 1
  store i32 %"46", i32* %"1", align 4
  br label %main_bb27

main_bb26:                                        ; preds = %main_bb24
  %"47" = add nsw i32 %"45", -1
  store i32 %"47", i32* %"1", align 4
  br label %main_bb27

main_bb27:                                        ; preds = %main_bb26, %main_bb25
  %"48" = load i32* %"1", align 4
  %"49" = load i32* %"1", align 4
  br label %main_bb28

main_bb28:                                        ; preds = %main_bb30, %main_bb27
  %"50" = load i32* %"3", align 4
  %"51" = icmp slt i32 %"50", 100
  br i1 %"51", label %main_bb29, label %main_.critedge

main_bb29:                                        ; preds = %main_bb28
  %"52" = load i32* %"5", align 4
  %"53" = icmp slt i32 %"52", 100
  br i1 %"53", label %main_bb30, label %main_.critedge

main_bb30:                                        ; preds = %main_bb29
  %"54" = load i32* %"3", align 4
  %"55" = add nsw i32 %"54", %"48"
  store i32 %"55", i32* %"3", align 4
  %"56" = load i32* %"5", align 4
  %"57" = sub nsw i32 %"56", %"49"
  store i32 %"57", i32* %"5", align 4
  br label %main_bb28

main_.critedge:                                   ; preds = %main_bb28, %main_bb29
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32 @__kittel_nondef.0()

declare i32* @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

