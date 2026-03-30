; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_openbsd_cstrcspn_alloca/svcomp_openbsd_cstrcspn_alloca.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @cstrcspn(i8* %s1, i8* %s2) #0 {
cstrcspn_bb0:
  br label %cstrcspn_bb1

cstrcspn_bb1:                                     ; preds = %cstrcspn_bb4, %cstrcspn_bb0
  %p.0 = phi i8* [ %s1, %cstrcspn_bb0 ], [ %"0", %cstrcspn_bb4 ]
  %"0" = getelementptr inbounds i8* %p.0, i32 1
  %"1" = load i8* %p.0, align 1
  %"2" = sext i8 %"1" to i32
  br label %cstrcspn_bb2

cstrcspn_bb2:                                     ; preds = %cstrcspn_bb4, %cstrcspn_bb1
  %spanp.0 = phi i8* [ %s2, %cstrcspn_bb1 ], [ %"3", %cstrcspn_bb4 ]
  %"3" = getelementptr inbounds i8* %spanp.0, i32 1
  %"4" = load i8* %spanp.0, align 1
  %"5" = sext i8 %"4" to i32
  %"6" = icmp eq i32 %"5", %"2"
  br i1 %"6", label %cstrcspn_bb3, label %cstrcspn_bb4

cstrcspn_bb3:                                     ; preds = %cstrcspn_bb2
  %"7" = getelementptr inbounds i8* %"0", i64 -1
  %"8" = ptrtoint i8* %"7" to i64
  %"9" = ptrtoint i8* %s1 to i64
  %"10" = sub i64 %"8", %"9"
  %"11" = trunc i64 %"10" to i32
  ret i32 %"11"

cstrcspn_bb4:                                     ; preds = %cstrcspn_bb2
  %"12" = sext i8 %"4" to i32
  %"13" = icmp ne i32 %"12", 0
  br i1 %"13", label %cstrcspn_bb2, label %cstrcspn_bb1
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb5:
  %"14" = call i32 @__VERIFIER_nondet_int()
  %"15" = call i32 @__VERIFIER_nondet_int()
  %"16" = icmp slt i32 %"14", 1
  %. = select i1 %"16", i32 1, i32 %"14"
  %"17" = icmp slt i32 %"15", 1
  %length2.0 = select i1 %"17", i32 1, i32 %"15"
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
  %"27" = sub nsw i32 %length2.0, 1
  %"28" = sext i32 %"27" to i64
  %"29" = getelementptr inbounds i8* %"23", i64 %"28"
  store i8 0, i8* %"29", align 1
  br label %main_bb6

main_bb6:                                         ; preds = %main_bb8, %main_bb5
  %p.0.i = phi i8* [ %"20", %main_bb5 ], [ %"30", %main_bb8 ]
  %"30" = getelementptr inbounds i8* %p.0.i, i32 1
  %"31" = load i8* %p.0.i, align 1
  %"32" = sext i8 %"31" to i32
  br label %main_bb7

main_bb7:                                         ; preds = %main_bb8, %main_bb6
  %spanp.0.i = phi i8* [ %"23", %main_bb6 ], [ %"33", %main_bb8 ]
  %"33" = getelementptr inbounds i8* %spanp.0.i, i32 1
  %"34" = load i8* %spanp.0.i, align 1
  %"35" = sext i8 %"34" to i32
  %"36" = icmp eq i32 %"35", %"32"
  br i1 %"36", label %main_cstrcspn.exit, label %main_bb8

main_cstrcspn.exit:                               ; preds = %main_bb7
  %"37" = getelementptr inbounds i8* %"30", i64 -1
  %"38" = ptrtoint i8* %"37" to i64
  %"39" = ptrtoint i8* %"20" to i64
  %"40" = sub i64 %"38", %"39"
  %"41" = trunc i64 %"40" to i32
  ret i32 %"41"

main_bb8:                                         ; preds = %main_bb7
  %"42" = sext i8 %"34" to i32
  %"43" = icmp ne i32 %"42", 0
  br i1 %"43", label %main_bb7, label %main_bb6
}

declare i32 @__VERIFIER_nondet_int() #1

declare i8* @__kittel_nondef.0()

declare i8 @__kittel_nondef.1()

declare i32 @__kittel_nondef.2()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

