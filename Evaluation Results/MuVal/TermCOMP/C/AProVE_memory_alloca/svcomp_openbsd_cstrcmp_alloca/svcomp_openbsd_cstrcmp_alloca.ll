; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_openbsd_cstrcmp_alloca/svcomp_openbsd_cstrcmp_alloca.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @cstrcmp(i8* %s1, i8* %s2) #0 {
cstrcmp_bb0:
  br label %cstrcmp_bb1

cstrcmp_bb1:                                      ; preds = %cstrcmp_bb2, %cstrcmp_bb0
  %.02 = phi i8* [ %s2, %cstrcmp_bb0 ], [ %"2", %cstrcmp_bb2 ]
  %.01 = phi i8* [ %s1, %cstrcmp_bb0 ], [ %"6", %cstrcmp_bb2 ]
  %"0" = load i8* %.01, align 1
  %"1" = sext i8 %"0" to i32
  %"2" = getelementptr inbounds i8* %.02, i32 1
  %"3" = load i8* %.02, align 1
  %"4" = sext i8 %"3" to i32
  %"5" = icmp eq i32 %"1", %"4"
  br i1 %"5", label %cstrcmp_bb2, label %cstrcmp_bb3

cstrcmp_bb2:                                      ; preds = %cstrcmp_bb1
  %"6" = getelementptr inbounds i8* %.01, i32 1
  %"7" = load i8* %.01, align 1
  %"8" = sext i8 %"7" to i32
  %"9" = icmp eq i32 %"8", 0
  br i1 %"9", label %cstrcmp_bb4, label %cstrcmp_bb1

cstrcmp_bb3:                                      ; preds = %cstrcmp_bb1
  %"10" = load i8* %.01, align 1
  %"11" = zext i8 %"10" to i32
  %"12" = getelementptr inbounds i8* %"2", i32 -1
  %"13" = load i8* %"12", align 1
  %"14" = zext i8 %"13" to i32
  %"15" = sub nsw i32 %"11", %"14"
  br label %cstrcmp_bb4

cstrcmp_bb4:                                      ; preds = %cstrcmp_bb2, %cstrcmp_bb3
  %.0 = phi i32 [ %"15", %cstrcmp_bb3 ], [ 0, %cstrcmp_bb2 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb5:
  %"16" = call i32 @__VERIFIER_nondet_int()
  %"17" = call i32 @__VERIFIER_nondet_int()
  %"18" = icmp slt i32 %"16", 1
  %. = select i1 %"18", i32 1, i32 %"16"
  %"19" = icmp slt i32 %"17", 1
  %length2.0 = select i1 %"19", i32 1, i32 %"17"
  %"20" = sext i32 %. to i64
  %"21" = mul i64 %"20", 1
  %"22" = alloca i8, i64 %"21"
  %"23" = sext i32 %length2.0 to i64
  %"24" = mul i64 %"23", 1
  %"25" = alloca i8, i64 %"24"
  %"26" = sub nsw i32 %., 1
  %"27" = sext i32 %"26" to i64
  %"28" = getelementptr inbounds i8* %"22", i64 %"27"
  store i8 0, i8* %"28", align 1
  %"29" = sub nsw i32 %length2.0, 1
  %"30" = sext i32 %"29" to i64
  %"31" = getelementptr inbounds i8* %"25", i64 %"30"
  store i8 0, i8* %"31", align 1
  br label %main_bb6

main_bb6:                                         ; preds = %main_bb7, %main_bb5
  %.02.i = phi i8* [ %"25", %main_bb5 ], [ %"34", %main_bb7 ]
  %.01.i = phi i8* [ %"22", %main_bb5 ], [ %"38", %main_bb7 ]
  %"32" = load i8* %.01.i, align 1
  %"33" = sext i8 %"32" to i32
  %"34" = getelementptr inbounds i8* %.02.i, i32 1
  %"35" = load i8* %.02.i, align 1
  %"36" = sext i8 %"35" to i32
  %"37" = icmp eq i32 %"33", %"36"
  br i1 %"37", label %main_bb7, label %main_bb8

main_bb7:                                         ; preds = %main_bb6
  %"38" = getelementptr inbounds i8* %.01.i, i32 1
  %"39" = load i8* %.01.i, align 1
  %"40" = sext i8 %"39" to i32
  %"41" = icmp eq i32 %"40", 0
  br i1 %"41", label %main_cstrcmp.exit, label %main_bb6

main_bb8:                                         ; preds = %main_bb6
  %"42" = load i8* %.01.i, align 1
  %"43" = zext i8 %"42" to i32
  %"44" = getelementptr inbounds i8* %"34", i32 -1
  %"45" = load i8* %"44", align 1
  %"46" = zext i8 %"45" to i32
  %"47" = sub nsw i32 %"43", %"46"
  br label %main_cstrcmp.exit

main_cstrcmp.exit:                                ; preds = %main_bb7, %main_bb8
  %.0.i = phi i32 [ %"47", %main_bb8 ], [ 0, %main_bb7 ]
  ret i32 %.0.i
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32 @__kittel_nondef.0()

declare i8* @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

