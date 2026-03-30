; ModuleID = 'Benchmarks/TermCOMP/C/SV-COMP_Termination_Category/svcomp_strchr_true-termination/svcomp_strchr_true-termination.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i8* @__VERIFIER_nondet_String() #0 {
__VERIFIER_nondet_String_bb0:
  %"0" = call i32 @__VERIFIER_nondet_int()
  %"1" = icmp slt i32 %"0", 1
  %. = select i1 %"1", i32 1, i32 %"0"
  %"2" = sext i32 %. to i64
  %"3" = mul i64 %"2", 1
  %"4" = call noalias i8* @malloc(i64 %"3") #3
  %"5" = sub nsw i32 %., 1
  %"6" = sext i32 %"5" to i64
  %"7" = getelementptr inbounds i8* %"4", i64 %"6"
  store i8 0, i8* %"7", align 1
  ret i8* %"4"
}

declare i32 @__VERIFIER_nondet_int() #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind uwtable
define i8* @cstrchr(i8* %s, i32 %c) #0 {
cstrchr_bb1:
  %"8" = trunc i32 %c to i8
  %"9" = sext i8 %"8" to i32
  br label %cstrchr_bb2

cstrchr_bb2:                                      ; preds = %cstrchr_bb4, %cstrchr_bb1
  %.0 = phi i8* [ %s, %cstrchr_bb1 ], [ %"16", %cstrchr_bb4 ]
  %"10" = load i8* %.0, align 1
  %"11" = sext i8 %"10" to i32
  %"12" = icmp ne i32 %"11", 0
  br i1 %"12", label %cstrchr_bb3, label %cstrchr_.critedge

cstrchr_bb3:                                      ; preds = %cstrchr_bb2
  %"13" = load i8* %.0, align 1
  %"14" = sext i8 %"13" to i32
  %"15" = icmp ne i32 %"14", %"9"
  br i1 %"15", label %cstrchr_bb4, label %cstrchr_.critedge

cstrchr_bb4:                                      ; preds = %cstrchr_bb3
  %"16" = getelementptr inbounds i8* %.0, i32 1
  br label %cstrchr_bb2

cstrchr_.critedge:                                ; preds = %cstrchr_bb2, %cstrchr_bb3
  %"17" = load i8* %.0, align 1
  %"18" = sext i8 %"17" to i32
  %"19" = icmp eq i32 %"18", %c
  %.0. = select i1 %"19", i8* %.0, i8* null
  ret i8* %.0.
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb5:
  %"20" = call i32 @__VERIFIER_nondet_int() #3
  %"21" = icmp slt i32 %"20", 1
  %..i = select i1 %"21", i32 1, i32 %"20"
  %"22" = sext i32 %..i to i64
  %"23" = call noalias i8* @malloc(i64 %"22") #3
  %"24" = sub nsw i32 %..i, 1
  %"25" = sext i32 %"24" to i64
  %"26" = getelementptr inbounds i8* %"23", i64 %"25"
  store i8 0, i8* %"26", align 1
  %"27" = call i32 @__VERIFIER_nondet_int()
  %"28" = trunc i32 %"27" to i8
  %"29" = sext i8 %"28" to i32
  br label %main_bb6

main_bb6:                                         ; preds = %main_bb8, %main_bb5
  %.0.i = phi i8* [ %"23", %main_bb5 ], [ %"36", %main_bb8 ]
  %"30" = load i8* %.0.i, align 1
  %"31" = sext i8 %"30" to i32
  %"32" = icmp ne i32 %"31", 0
  br i1 %"32", label %main_bb7, label %main_cstrchr.exit

main_bb7:                                         ; preds = %main_bb6
  %"33" = load i8* %.0.i, align 1
  %"34" = sext i8 %"33" to i32
  %"35" = icmp ne i32 %"34", %"29"
  br i1 %"35", label %main_bb8, label %main_cstrchr.exit

main_bb8:                                         ; preds = %main_bb7
  %"36" = getelementptr inbounds i8* %.0.i, i32 1
  br label %main_bb6

main_cstrchr.exit:                                ; preds = %main_bb6, %main_bb7
  ret i32 0
}

declare i32 @__kittel_nondef.0()

declare i8* @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

