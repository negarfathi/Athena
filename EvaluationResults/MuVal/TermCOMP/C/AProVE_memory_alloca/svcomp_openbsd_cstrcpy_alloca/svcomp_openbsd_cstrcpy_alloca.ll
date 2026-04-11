; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_openbsd_cstrcpy_alloca/svcomp_openbsd_cstrcpy_alloca.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i8* @cstrcpy(i8* %to, i8* %from) #0 {
cstrcpy_bb0:
  br label %cstrcpy_bb1

cstrcpy_bb1:                                      ; preds = %cstrcpy_bb2, %cstrcpy_bb0
  %.01 = phi i8* [ %from, %cstrcpy_bb0 ], [ %"3", %cstrcpy_bb2 ]
  %.0 = phi i8* [ %to, %cstrcpy_bb0 ], [ %"4", %cstrcpy_bb2 ]
  %"0" = load i8* %.01, align 1
  store i8 %"0", i8* %.0, align 1
  %"1" = sext i8 %"0" to i32
  %"2" = icmp ne i32 %"1", 0
  br i1 %"2", label %cstrcpy_bb2, label %cstrcpy_bb3

cstrcpy_bb2:                                      ; preds = %cstrcpy_bb1
  %"3" = getelementptr inbounds i8* %.01, i32 1
  %"4" = getelementptr inbounds i8* %.0, i32 1
  br label %cstrcpy_bb1

cstrcpy_bb3:                                      ; preds = %cstrcpy_bb1
  ret i8* %to
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb4:
  %"5" = call i32 @__VERIFIER_nondet_int()
  %"6" = call i32 @__VERIFIER_nondet_int()
  %"7" = icmp slt i32 %"5", 1
  %. = select i1 %"7", i32 1, i32 %"5"
  %"8" = icmp slt i32 %"6", 1
  %length2.0 = select i1 %"8", i32 1, i32 %"6"
  %"9" = icmp slt i32 %., %length2.0
  br i1 %"9", label %main_cstrcpy.exit, label %main_bb5

main_bb5:                                         ; preds = %main_bb4
  %"10" = sext i32 %. to i64
  %"11" = mul i64 %"10", 1
  %"12" = alloca i8, i64 %"11"
  %"13" = sext i32 %length2.0 to i64
  %"14" = mul i64 %"13", 1
  %"15" = alloca i8, i64 %"14"
  %"16" = sub nsw i32 %length2.0, 1
  %"17" = sext i32 %"16" to i64
  %"18" = getelementptr inbounds i8* %"15", i64 %"17"
  store i8 0, i8* %"18", align 1
  br label %main_bb6

main_bb6:                                         ; preds = %main_bb7, %main_bb5
  %.01.i = phi i8* [ %"15", %main_bb5 ], [ %"22", %main_bb7 ]
  %.0.i = phi i8* [ %"12", %main_bb5 ], [ %"23", %main_bb7 ]
  %"19" = load i8* %.01.i, align 1
  store i8 %"19", i8* %.0.i, align 1
  %"20" = sext i8 %"19" to i32
  %"21" = icmp ne i32 %"20", 0
  br i1 %"21", label %main_bb7, label %main_cstrcpy.exit

main_bb7:                                         ; preds = %main_bb6
  %"22" = getelementptr inbounds i8* %.01.i, i32 1
  %"23" = getelementptr inbounds i8* %.0.i, i32 1
  br label %main_bb6

main_cstrcpy.exit:                                ; preds = %main_bb6, %main_bb4
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int() #1

declare i8* @__kittel_nondef.0()

declare i32 @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

