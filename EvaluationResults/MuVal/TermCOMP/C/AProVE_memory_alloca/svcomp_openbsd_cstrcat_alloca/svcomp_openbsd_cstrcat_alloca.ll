; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_openbsd_cstrcat_alloca/svcomp_openbsd_cstrcat_alloca.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i8* @cstrcat(i8* %s, i8* %append) #0 {
cstrcat_bb0:
  br label %cstrcat_bb1

cstrcat_bb1:                                      ; preds = %cstrcat_bb2, %cstrcat_bb0
  %.0 = phi i8* [ %s, %cstrcat_bb0 ], [ %"2", %cstrcat_bb2 ]
  %"0" = load i8* %.0, align 1
  %"1" = icmp ne i8 %"0", 0
  br i1 %"1", label %cstrcat_bb2, label %cstrcat_bb3

cstrcat_bb2:                                      ; preds = %cstrcat_bb1
  %"2" = getelementptr inbounds i8* %.0, i32 1
  br label %cstrcat_bb1

cstrcat_bb3:                                      ; preds = %cstrcat_bb3, %cstrcat_bb1
  %.01 = phi i8* [ %append, %cstrcat_bb1 ], [ %"3", %cstrcat_bb3 ]
  %.1 = phi i8* [ %.0, %cstrcat_bb1 ], [ %"5", %cstrcat_bb3 ]
  %"3" = getelementptr inbounds i8* %.01, i32 1
  %"4" = load i8* %.01, align 1
  %"5" = getelementptr inbounds i8* %.1, i32 1
  store i8 %"4", i8* %.1, align 1
  %"6" = sext i8 %"4" to i32
  %"7" = icmp ne i32 %"6", 0
  br i1 %"7", label %cstrcat_bb3, label %cstrcat_bb4

cstrcat_bb4:                                      ; preds = %cstrcat_bb3
  ret i8* %s
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb5:
  %"8" = call i32 @__VERIFIER_nondet_int()
  %"9" = call i32 @__VERIFIER_nondet_int()
  %"10" = call i32 @__VERIFIER_nondet_int()
  %"11" = icmp slt i32 %"8", 1
  %. = select i1 %"11", i32 1, i32 %"8"
  %"12" = icmp slt i32 %"9", 2
  %length2.0 = select i1 %"12", i32 2, i32 %"9"
  %"13" = icmp slt i32 %"10", 1
  %.1 = select i1 %"13", i32 1, i32 %"10"
  %"14" = sub nsw i32 %length2.0, %.1
  %"15" = icmp slt i32 %"14", %.
  %"16" = icmp sgt i32 %.1, %length2.0
  %or.cond = or i1 %"15", %"16"
  br i1 %or.cond, label %main_cstrcat.exit, label %main_bb6

main_bb6:                                         ; preds = %main_bb5
  %"17" = sext i32 %. to i64
  %"18" = mul i64 %"17", 1
  %"19" = alloca i8, i64 %"18"
  %"20" = sext i32 %length2.0 to i64
  %"21" = mul i64 %"20", 1
  %"22" = alloca i8, i64 %"21"
  %"23" = sub nsw i32 %., 1
  %"24" = sext i32 %"23" to i64
  %"25" = getelementptr inbounds i8* %"19", i64 %"24"
  store i8 0, i8* %"25", align 1
  %"26" = sub nsw i32 %.1, 1
  %"27" = sext i32 %"26" to i64
  %"28" = getelementptr inbounds i8* %"22", i64 %"27"
  store i8 0, i8* %"28", align 1
  br label %main_bb7

main_bb7:                                         ; preds = %main_bb8, %main_bb6
  %.0.i = phi i8* [ %"22", %main_bb6 ], [ %"31", %main_bb8 ]
  %"29" = load i8* %.0.i, align 1
  %"30" = icmp ne i8 %"29", 0
  br i1 %"30", label %main_bb8, label %main_bb9

main_bb8:                                         ; preds = %main_bb7
  %"31" = getelementptr inbounds i8* %.0.i, i32 1
  br label %main_bb7

main_bb9:                                         ; preds = %main_bb9, %main_bb7
  %.01.i = phi i8* [ %"19", %main_bb7 ], [ %"32", %main_bb9 ]
  %.1.i = phi i8* [ %.0.i, %main_bb7 ], [ %"34", %main_bb9 ]
  %"32" = getelementptr inbounds i8* %.01.i, i32 1
  %"33" = load i8* %.01.i, align 1
  %"34" = getelementptr inbounds i8* %.1.i, i32 1
  store i8 %"33", i8* %.1.i, align 1
  %"35" = sext i8 %"33" to i32
  %"36" = icmp ne i32 %"35", 0
  br i1 %"36", label %main_bb9, label %main_cstrcat.exit

main_cstrcat.exit:                                ; preds = %main_bb9, %main_bb5
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int() #1

declare i8* @__kittel_nondef.0()

declare i32 @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

