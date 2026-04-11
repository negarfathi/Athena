; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_unsafe/svcomp_cstrncat_unsafe/svcomp_cstrncat_unsafe.bc'
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
  %"15" = call i8* @__kittel_nondef.0()
  %"16" = call i8* @__kittel_nondef.0()
  %"17" = call i32 @__VERIFIER_nondet_int()
  br label %main_bb11

main_bb11:                                        ; preds = %main_bb12, %main_bb10
  %s.0.i = phi i8* [ %"15", %main_bb10 ], [ %"21", %main_bb12 ]
  %"18" = load i8* %s.0.i, align 1
  %"19" = sext i8 %"18" to i32
  %"20" = icmp ne i32 %"19", 0
  br i1 %"20", label %main_bb12, label %main_bb13

main_bb12:                                        ; preds = %main_bb11
  %"21" = getelementptr inbounds i8* %s.0.i, i32 1
  br label %main_bb11

main_bb13:                                        ; preds = %main_bb16, %main_bb11
  %s.1.i = phi i8* [ %"29", %main_bb16 ], [ %s.0.i, %main_bb11 ]
  %.01.i = phi i32 [ %"28", %main_bb16 ], [ %"17", %main_bb11 ]
  %.0.i = phi i8* [ %.1.i, %main_bb16 ], [ %"16", %main_bb11 ]
  %"22" = icmp ne i32 %.01.i, 0
  br i1 %"22", label %main_bb14, label %main_bb15

main_bb14:                                        ; preds = %main_bb13
  %"23" = getelementptr inbounds i8* %.0.i, i32 1
  %"24" = load i8* %.0.i, align 1
  store i8 %"24", i8* %s.1.i, align 1
  %"25" = sext i8 %"24" to i32
  %"26" = icmp ne i32 %"25", 0
  br label %main_bb15

main_bb15:                                        ; preds = %main_bb14, %main_bb13
  %.1.i = phi i8* [ %"23", %main_bb14 ], [ %.0.i, %main_bb13 ]
  %"27" = phi i1 [ false, %main_bb13 ], [ %"26", %main_bb14 ]
  br i1 %"27", label %main_bb16, label %main_bb17

main_bb16:                                        ; preds = %main_bb15
  %"28" = add nsw i32 %.01.i, -1
  %"29" = getelementptr inbounds i8* %s.1.i, i32 1
  br label %main_bb13

main_bb17:                                        ; preds = %main_bb15
  %"30" = load i8* %s.1.i, align 1
  %"31" = sext i8 %"30" to i32
  %"32" = icmp ne i32 %"31", 0
  br i1 %"32", label %main_bb18, label %main_cstrncat.exit

main_bb18:                                        ; preds = %main_bb17
  store i8 0, i8* %s.1.i, align 1
  br label %main_cstrncat.exit

main_cstrncat.exit:                               ; preds = %main_bb17, %main_bb18
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int() #1

declare i8* @__kittel_nondef.0()

declare i32 @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

