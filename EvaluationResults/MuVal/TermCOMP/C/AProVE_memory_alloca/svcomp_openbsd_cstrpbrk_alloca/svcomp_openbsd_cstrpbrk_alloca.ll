; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_openbsd_cstrpbrk_alloca/svcomp_openbsd_cstrpbrk_alloca.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i8* @cstrpbrk(i8* %s1, i8* %s2) #0 {
cstrpbrk_bb0:
  br label %cstrpbrk_bb1

cstrpbrk_bb1:                                     ; preds = %cstrpbrk_bb2, %cstrpbrk_bb0
  %.01 = phi i8* [ %s1, %cstrpbrk_bb0 ], [ %"0", %cstrpbrk_bb2 ]
  %"0" = getelementptr inbounds i8* %.01, i32 1
  %"1" = load i8* %.01, align 1
  %"2" = sext i8 %"1" to i32
  %"3" = icmp ne i32 %"2", 0
  br i1 %"3", label %cstrpbrk_bb2, label %cstrpbrk_bb5

cstrpbrk_bb2:                                     ; preds = %cstrpbrk_bb3, %cstrpbrk_bb1
  %scanp.0 = phi i8* [ %s2, %cstrpbrk_bb1 ], [ %"4", %cstrpbrk_bb3 ]
  %"4" = getelementptr inbounds i8* %scanp.0, i32 1
  %"5" = load i8* %scanp.0, align 1
  %"6" = sext i8 %"5" to i32
  %"7" = icmp ne i32 %"6", 0
  br i1 %"7", label %cstrpbrk_bb3, label %cstrpbrk_bb1

cstrpbrk_bb3:                                     ; preds = %cstrpbrk_bb2
  %"8" = icmp eq i32 %"6", %"2"
  br i1 %"8", label %cstrpbrk_bb4, label %cstrpbrk_bb2

cstrpbrk_bb4:                                     ; preds = %cstrpbrk_bb3
  %"9" = getelementptr inbounds i8* %"0", i64 -1
  br label %cstrpbrk_bb5

cstrpbrk_bb5:                                     ; preds = %cstrpbrk_bb1, %cstrpbrk_bb4
  %.0 = phi i8* [ %"9", %cstrpbrk_bb4 ], [ null, %cstrpbrk_bb1 ]
  ret i8* %.0
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb6:
  %"10" = call i32 @__VERIFIER_nondet_int()
  %"11" = call i32 @__VERIFIER_nondet_int()
  %"12" = icmp slt i32 %"10", 1
  %. = select i1 %"12", i32 1, i32 %"10"
  %"13" = icmp slt i32 %"11", 1
  %length2.0 = select i1 %"13", i32 1, i32 %"11"
  %"14" = sext i32 %. to i64
  %"15" = mul i64 %"14", 1
  %"16" = alloca i8, i64 %"15"
  %"17" = sext i32 %length2.0 to i64
  %"18" = mul i64 %"17", 1
  %"19" = alloca i8, i64 %"18"
  %"20" = sub nsw i32 %., 1
  %"21" = sext i32 %"20" to i64
  %"22" = getelementptr inbounds i8* %"16", i64 %"21"
  store i8 0, i8* %"22", align 1
  %"23" = sub nsw i32 %length2.0, 1
  %"24" = sext i32 %"23" to i64
  %"25" = getelementptr inbounds i8* %"19", i64 %"24"
  store i8 0, i8* %"25", align 1
  br label %main_bb7

main_bb7:                                         ; preds = %main_bb8, %main_bb6
  %.01.i = phi i8* [ %"16", %main_bb6 ], [ %"26", %main_bb8 ]
  %"26" = getelementptr inbounds i8* %.01.i, i32 1
  %"27" = load i8* %.01.i, align 1
  %"28" = sext i8 %"27" to i32
  %"29" = icmp ne i32 %"28", 0
  br i1 %"29", label %main_bb8, label %main_cstrpbrk.exit

main_bb8:                                         ; preds = %main_bb9, %main_bb7
  %scanp.0.i = phi i8* [ %"19", %main_bb7 ], [ %"30", %main_bb9 ]
  %"30" = getelementptr inbounds i8* %scanp.0.i, i32 1
  %"31" = load i8* %scanp.0.i, align 1
  %"32" = sext i8 %"31" to i32
  %"33" = icmp ne i32 %"32", 0
  br i1 %"33", label %main_bb9, label %main_bb7

main_bb9:                                         ; preds = %main_bb8
  %"34" = icmp eq i32 %"32", %"28"
  br i1 %"34", label %main_cstrpbrk.exit, label %main_bb8

main_cstrpbrk.exit:                               ; preds = %main_bb9, %main_bb7
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int() #1

declare i8* @__kittel_nondef.0()

declare i32 @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

