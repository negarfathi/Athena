; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_cstrcpy_alloca/svcomp_cstrcpy_alloca.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i8* @cstrcpy(i8* %s1, i8* %s2) #0 {
cstrcpy_bb0:
  br label %cstrcpy_bb1

cstrcpy_bb1:                                      ; preds = %cstrcpy_bb1, %cstrcpy_bb0
  %dst.0 = phi i8* [ %s1, %cstrcpy_bb0 ], [ %"2", %cstrcpy_bb1 ]
  %src.0 = phi i8* [ %s2, %cstrcpy_bb0 ], [ %"0", %cstrcpy_bb1 ]
  %"0" = getelementptr inbounds i8* %src.0, i32 1
  %"1" = load i8* %src.0, align 1
  %"2" = getelementptr inbounds i8* %dst.0, i32 1
  store i8 %"1", i8* %dst.0, align 1
  %"3" = sext i8 %"1" to i32
  %"4" = icmp ne i32 %"3", 0
  br i1 %"4", label %cstrcpy_bb1, label %cstrcpy_bb2

cstrcpy_bb2:                                      ; preds = %cstrcpy_bb1
  ret i8* %s1
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb3:
  %"5" = call i32 @__VERIFIER_nondet_int()
  %"6" = call i32 @__VERIFIER_nondet_int()
  %"7" = icmp slt i32 %"5", 1
  %. = select i1 %"7", i32 1, i32 %"5"
  %"8" = icmp slt i32 %"6", 1
  %length2.0 = select i1 %"8", i32 1, i32 %"6"
  %"9" = icmp slt i32 %., %length2.0
  br i1 %"9", label %main_cstrcpy.exit, label %main_bb4

main_bb4:                                         ; preds = %main_bb3
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
  br label %main_bb5

main_bb5:                                         ; preds = %main_bb5, %main_bb4
  %dst.0.i = phi i8* [ %"12", %main_bb4 ], [ %"21", %main_bb5 ]
  %src.0.i = phi i8* [ %"15", %main_bb4 ], [ %"19", %main_bb5 ]
  %"19" = getelementptr inbounds i8* %src.0.i, i32 1
  %"20" = load i8* %src.0.i, align 1
  %"21" = getelementptr inbounds i8* %dst.0.i, i32 1
  store i8 %"20", i8* %dst.0.i, align 1
  %"22" = sext i8 %"20" to i32
  %"23" = icmp ne i32 %"22", 0
  br i1 %"23", label %main_bb5, label %main_cstrcpy.exit

main_cstrcpy.exit:                                ; preds = %main_bb5, %main_bb3
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int() #1

declare i8* @__kittel_nondef.0()

declare i32 @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

