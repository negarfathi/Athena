; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_cstrncat_alloca/svcomp_cstrncat_alloca.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i8* @cstrncat(i8* %s1, i8* %s2, i32 %n) #0 {
cstrncat_bb0:
  br label %cstrncat_bb1

cstrncat_bb1:                                     ; preds = %cstrncat_bb2, %cstrncat_bb0
  %s.0 = phi i8* [ %s1, %cstrncat_bb0 ], [ %"3", %cstrncat_bb2 ]
  %"0" = load i8* %s.0, align 1
  %"1" = sext i8 %"0" to i32
  %"2" = icmp ne i32 %"1", 0
  br i1 %"2", label %cstrncat_bb2, label %cstrncat_bb3

cstrncat_bb2:                                     ; preds = %cstrncat_bb1
  %"3" = getelementptr inbounds i8* %s.0, i32 1
  br label %cstrncat_bb1

cstrncat_bb3:                                     ; preds = %cstrncat_bb1, %cstrncat_bb6
  %s.1 = phi i8* [ %"11", %cstrncat_bb6 ], [ %s.0, %cstrncat_bb1 ]
  %.01 = phi i32 [ %"10", %cstrncat_bb6 ], [ %n, %cstrncat_bb1 ]
  %.0 = phi i8* [ %.1, %cstrncat_bb6 ], [ %s2, %cstrncat_bb1 ]
  %"4" = icmp ne i32 %.01, 0
  br i1 %"4", label %cstrncat_bb4, label %cstrncat_bb5

cstrncat_bb4:                                     ; preds = %cstrncat_bb3
  %"5" = getelementptr inbounds i8* %.0, i32 1
  %"6" = load i8* %.0, align 1
  store i8 %"6", i8* %s.1, align 1
  %"7" = sext i8 %"6" to i32
  %"8" = icmp ne i32 %"7", 0
  br label %cstrncat_bb5

cstrncat_bb5:                                     ; preds = %cstrncat_bb4, %cstrncat_bb3
  %.1 = phi i8* [ %"5", %cstrncat_bb4 ], [ %.0, %cstrncat_bb3 ]
  %"9" = phi i1 [ false, %cstrncat_bb3 ], [ %"8", %cstrncat_bb4 ]
  br i1 %"9", label %cstrncat_bb6, label %cstrncat_bb7

cstrncat_bb6:                                     ; preds = %cstrncat_bb5
  %"10" = add nsw i32 %.01, -1
  %"11" = getelementptr inbounds i8* %s.1, i32 1
  br label %cstrncat_bb3

cstrncat_bb7:                                     ; preds = %cstrncat_bb5
  %"12" = load i8* %s.1, align 1
  %"13" = sext i8 %"12" to i32
  %"14" = icmp ne i32 %"13", 0
  br i1 %"14", label %cstrncat_bb8, label %cstrncat_bb9

cstrncat_bb8:                                     ; preds = %cstrncat_bb7
  store i8 0, i8* %s.1, align 1
  br label %cstrncat_bb9

cstrncat_bb9:                                     ; preds = %cstrncat_bb8, %cstrncat_bb7
  ret i8* %s1
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb10:
  %"15" = call i32 @__VERIFIER_nondet_int()
  %"16" = call i32 @__VERIFIER_nondet_int()
  %"17" = call i32 @__VERIFIER_nondet_int()
  %"18" = icmp slt i32 %"15", 1
  %. = select i1 %"18", i32 1, i32 %"15"
  %"19" = icmp slt i32 %"16", 1
  %length2.0 = select i1 %"19", i32 1, i32 %"16"
  %"20" = icmp slt i32 %"17", 1
  %.1 = select i1 %"20", i32 1, i32 %"17"
  %"21" = icmp slt i32 %., %.1
  %"22" = sub nsw i32 %., %.1
  %"23" = icmp slt i32 %"22", %length2.0
  %or.cond = or i1 %"21", %"23"
  br i1 %or.cond, label %main_cstrncat.exit, label %main_bb11

main_bb11:                                        ; preds = %main_bb10
  %"24" = sext i32 %. to i64
  %"25" = mul i64 %"24", 1
  %"26" = alloca i8, i64 %"25"
  %"27" = sext i32 %length2.0 to i64
  %"28" = mul i64 %"27", 1
  %"29" = alloca i8, i64 %"28"
  %"30" = sub nsw i32 %., %.1
  %"31" = sub nsw i32 %"30", 1
  %"32" = sext i32 %"31" to i64
  %"33" = getelementptr inbounds i8* %"26", i64 %"32"
  store i8 0, i8* %"33", align 1
  %"34" = sub nsw i32 %length2.0, 1
  %"35" = sext i32 %"34" to i64
  %"36" = getelementptr inbounds i8* %"29", i64 %"35"
  store i8 0, i8* %"36", align 1
  br label %main_bb12

main_bb12:                                        ; preds = %main_bb13, %main_bb11
  %s.0.i = phi i8* [ %"26", %main_bb11 ], [ %"40", %main_bb13 ]
  %"37" = load i8* %s.0.i, align 1
  %"38" = sext i8 %"37" to i32
  %"39" = icmp ne i32 %"38", 0
  br i1 %"39", label %main_bb13, label %main_bb14

main_bb13:                                        ; preds = %main_bb12
  %"40" = getelementptr inbounds i8* %s.0.i, i32 1
  br label %main_bb12

main_bb14:                                        ; preds = %main_bb17, %main_bb12
  %s.1.i = phi i8* [ %"48", %main_bb17 ], [ %s.0.i, %main_bb12 ]
  %.01.i = phi i32 [ %"47", %main_bb17 ], [ %.1, %main_bb12 ]
  %.0.i = phi i8* [ %.1.i, %main_bb17 ], [ %"29", %main_bb12 ]
  %"41" = icmp ne i32 %.01.i, 0
  br i1 %"41", label %main_bb15, label %main_bb16

main_bb15:                                        ; preds = %main_bb14
  %"42" = getelementptr inbounds i8* %.0.i, i32 1
  %"43" = load i8* %.0.i, align 1
  store i8 %"43", i8* %s.1.i, align 1
  %"44" = sext i8 %"43" to i32
  %"45" = icmp ne i32 %"44", 0
  br label %main_bb16

main_bb16:                                        ; preds = %main_bb15, %main_bb14
  %.1.i = phi i8* [ %"42", %main_bb15 ], [ %.0.i, %main_bb14 ]
  %"46" = phi i1 [ false, %main_bb14 ], [ %"45", %main_bb15 ]
  br i1 %"46", label %main_bb17, label %main_bb18

main_bb17:                                        ; preds = %main_bb16
  %"47" = add nsw i32 %.01.i, -1
  %"48" = getelementptr inbounds i8* %s.1.i, i32 1
  br label %main_bb14

main_bb18:                                        ; preds = %main_bb16
  %"49" = load i8* %s.1.i, align 1
  %"50" = sext i8 %"49" to i32
  %"51" = icmp ne i32 %"50", 0
  br i1 %"51", label %main_bb19, label %main_cstrncat.exit

main_bb19:                                        ; preds = %main_bb18
  store i8 0, i8* %s.1.i, align 1
  br label %main_cstrncat.exit

main_cstrncat.exit:                               ; preds = %main_bb19, %main_bb18, %main_bb10
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int() #1

declare i8* @__kittel_nondef.0()

declare i32 @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

