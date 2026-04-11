; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_cstrcat_alloca/svcomp_cstrcat_alloca.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i8* @cstrcat(i8* %s1, i8* %s2) #0 {
cstrcat_bb0:
  br label %cstrcat_bb1

cstrcat_bb1:                                      ; preds = %cstrcat_bb2, %cstrcat_bb0
  %s.0 = phi i8* [ %s1, %cstrcat_bb0 ], [ %"3", %cstrcat_bb2 ]
  %"0" = load i8* %s.0, align 1
  %"1" = sext i8 %"0" to i32
  %"2" = icmp ne i32 %"1", 0
  br i1 %"2", label %cstrcat_bb2, label %cstrcat_bb3

cstrcat_bb2:                                      ; preds = %cstrcat_bb1
  %"3" = getelementptr inbounds i8* %s.0, i32 1
  br label %cstrcat_bb1

cstrcat_bb3:                                      ; preds = %cstrcat_bb3, %cstrcat_bb1
  %s.1 = phi i8* [ %s.0, %cstrcat_bb1 ], [ %"6", %cstrcat_bb3 ]
  %.0 = phi i8* [ %s2, %cstrcat_bb1 ], [ %"4", %cstrcat_bb3 ]
  %"4" = getelementptr inbounds i8* %.0, i32 1
  %"5" = load i8* %.0, align 1
  %"6" = getelementptr inbounds i8* %s.1, i32 1
  store i8 %"5", i8* %s.1, align 1
  %"7" = sext i8 %"5" to i32
  %"8" = icmp ne i32 %"7", 0
  br i1 %"8", label %cstrcat_bb3, label %cstrcat_bb4

cstrcat_bb4:                                      ; preds = %cstrcat_bb3
  ret i8* %s1
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb5:
  %"9" = call i32 @__VERIFIER_nondet_int()
  %"10" = call i32 @__VERIFIER_nondet_int()
  %"11" = call i32 @__VERIFIER_nondet_int()
  %"12" = icmp slt i32 %"9", 1
  %. = select i1 %"12", i32 1, i32 %"9"
  %"13" = icmp slt i32 %"10", 2
  %length2.0 = select i1 %"13", i32 2, i32 %"10"
  %"14" = icmp slt i32 %"11", 1
  %.1 = select i1 %"14", i32 1, i32 %"11"
  %"15" = sub nsw i32 %length2.0, %.1
  %"16" = icmp slt i32 %"15", %.
  %"17" = icmp sgt i32 %.1, %length2.0
  %or.cond = or i1 %"16", %"17"
  br i1 %or.cond, label %main_cstrcat.exit, label %main_bb6

main_bb6:                                         ; preds = %main_bb5
  %"18" = sext i32 %. to i64
  %"19" = mul i64 %"18", 1
  %"20" = alloca i8, i64 %"19"
  %"21" = sext i32 %length2.0 to i64
  %"22" = mul i64 %"21", 1
  %"23" = alloca i8, i64 %"22"
  %"24" = sub nsw i32 %., 1
  %"25" = sext i32 %"24" to i64
  %"26" = getelementptr inbounds i8* %"20", i64 %"25"
  store i8 0, i8* %"26", align 1
  %"27" = sub nsw i32 %.1, 1
  %"28" = sext i32 %"27" to i64
  %"29" = getelementptr inbounds i8* %"23", i64 %"28"
  store i8 0, i8* %"29", align 1
  br label %main_bb7

main_bb7:                                         ; preds = %main_bb8, %main_bb6
  %s.0.i = phi i8* [ %"23", %main_bb6 ], [ %"33", %main_bb8 ]
  %"30" = load i8* %s.0.i, align 1
  %"31" = sext i8 %"30" to i32
  %"32" = icmp ne i32 %"31", 0
  br i1 %"32", label %main_bb8, label %main_bb9

main_bb8:                                         ; preds = %main_bb7
  %"33" = getelementptr inbounds i8* %s.0.i, i32 1
  br label %main_bb7

main_bb9:                                         ; preds = %main_bb9, %main_bb7
  %s.1.i = phi i8* [ %s.0.i, %main_bb7 ], [ %"36", %main_bb9 ]
  %.0.i = phi i8* [ %"20", %main_bb7 ], [ %"34", %main_bb9 ]
  %"34" = getelementptr inbounds i8* %.0.i, i32 1
  %"35" = load i8* %.0.i, align 1
  %"36" = getelementptr inbounds i8* %s.1.i, i32 1
  store i8 %"35", i8* %s.1.i, align 1
  %"37" = sext i8 %"35" to i32
  %"38" = icmp ne i32 %"37", 0
  br i1 %"38", label %main_bb9, label %main_cstrcat.exit

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

