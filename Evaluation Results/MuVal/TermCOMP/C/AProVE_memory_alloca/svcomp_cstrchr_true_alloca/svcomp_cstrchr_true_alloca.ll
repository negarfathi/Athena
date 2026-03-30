; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_cstrchr_true_alloca/svcomp_cstrchr_true_alloca.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i8* @cstrchr(i8* %s, i32 %c) #0 {
cstrchr_bb0:
  %"0" = trunc i32 %c to i8
  %"1" = sext i8 %"0" to i32
  br label %cstrchr_bb1

cstrchr_bb1:                                      ; preds = %cstrchr_bb3, %cstrchr_bb0
  %.0 = phi i8* [ %s, %cstrchr_bb0 ], [ %"8", %cstrchr_bb3 ]
  %"2" = load i8* %.0, align 1
  %"3" = sext i8 %"2" to i32
  %"4" = icmp ne i32 %"3", 0
  br i1 %"4", label %cstrchr_bb2, label %cstrchr_.critedge

cstrchr_bb2:                                      ; preds = %cstrchr_bb1
  %"5" = load i8* %.0, align 1
  %"6" = sext i8 %"5" to i32
  %"7" = icmp ne i32 %"6", %"1"
  br i1 %"7", label %cstrchr_bb3, label %cstrchr_.critedge

cstrchr_bb3:                                      ; preds = %cstrchr_bb2
  %"8" = getelementptr inbounds i8* %.0, i32 1
  br label %cstrchr_bb1

cstrchr_.critedge:                                ; preds = %cstrchr_bb1, %cstrchr_bb2
  %"9" = load i8* %.0, align 1
  %"10" = sext i8 %"9" to i32
  %"11" = icmp eq i32 %"10", %c
  %.0. = select i1 %"11", i8* %.0, i8* null
  ret i8* %.0.
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb4:
  %"12" = call i32 @__VERIFIER_nondet_int()
  %"13" = icmp slt i32 %"12", 1
  %. = select i1 %"13", i32 1, i32 %"12"
  %"14" = sext i32 %. to i64
  %"15" = mul i64 %"14", 1
  %"16" = alloca i8, i64 %"15"
  %"17" = sub nsw i32 %., 1
  %"18" = sext i32 %"17" to i64
  %"19" = getelementptr inbounds i8* %"16", i64 %"18"
  store i8 0, i8* %"19", align 1
  %"20" = call i32 @__VERIFIER_nondet_int()
  %"21" = trunc i32 %"20" to i8
  %"22" = sext i8 %"21" to i32
  br label %main_bb5

main_bb5:                                         ; preds = %main_bb7, %main_bb4
  %.0.i = phi i8* [ %"16", %main_bb4 ], [ %"29", %main_bb7 ]
  %"23" = load i8* %.0.i, align 1
  %"24" = sext i8 %"23" to i32
  %"25" = icmp ne i32 %"24", 0
  br i1 %"25", label %main_bb6, label %main_cstrchr.exit

main_bb6:                                         ; preds = %main_bb5
  %"26" = load i8* %.0.i, align 1
  %"27" = sext i8 %"26" to i32
  %"28" = icmp ne i32 %"27", %"22"
  br i1 %"28", label %main_bb7, label %main_cstrchr.exit

main_bb7:                                         ; preds = %main_bb6
  %"29" = getelementptr inbounds i8* %.0.i, i32 1
  br label %main_bb5

main_cstrchr.exit:                                ; preds = %main_bb5, %main_bb6
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int() #1

declare i8* @__kittel_nondef.0()

declare i32 @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

