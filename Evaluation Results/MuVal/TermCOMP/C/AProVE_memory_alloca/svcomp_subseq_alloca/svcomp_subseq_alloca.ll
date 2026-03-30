; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_subseq_alloca/svcomp_subseq_alloca.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @subseq(i8* %s, i8* %t) #0 {
subseq_bb0:
  br label %subseq_bb1

subseq_bb1:                                       ; preds = %subseq_bb3, %subseq_bb0
  %ps.0 = phi i8* [ %s, %subseq_bb0 ], [ %.ps.0, %subseq_bb3 ]
  %pt.0 = phi i8* [ %t, %subseq_bb0 ], [ %"12", %subseq_bb3 ]
  %"0" = load i8* %ps.0, align 1
  %"1" = sext i8 %"0" to i32
  %"2" = icmp ne i32 %"1", 0
  br i1 %"2", label %subseq_bb2, label %subseq_.critedge

subseq_bb2:                                       ; preds = %subseq_bb1
  %"3" = load i8* %pt.0, align 1
  %"4" = sext i8 %"3" to i32
  %"5" = icmp ne i32 %"4", 0
  br i1 %"5", label %subseq_bb3, label %subseq_.critedge

subseq_bb3:                                       ; preds = %subseq_bb2
  %"6" = load i8* %ps.0, align 1
  %"7" = sext i8 %"6" to i32
  %"8" = load i8* %pt.0, align 1
  %"9" = sext i8 %"8" to i32
  %"10" = icmp eq i32 %"7", %"9"
  %"11" = getelementptr inbounds i8* %ps.0, i32 1
  %.ps.0 = select i1 %"10", i8* %"11", i8* %ps.0
  %"12" = getelementptr inbounds i8* %pt.0, i32 1
  br label %subseq_bb1

subseq_.critedge:                                 ; preds = %subseq_bb1, %subseq_bb2
  %"13" = load i8* %pt.0, align 1
  %"14" = sext i8 %"13" to i32
  %"15" = icmp eq i32 %"14", 0
  %. = select i1 %"15", i32 1, i32 0
  ret i32 %.
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb4:
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
  br label %main_bb5

main_bb5:                                         ; preds = %main_bb7, %main_bb4
  %ps.0.i = phi i8* [ %"22", %main_bb4 ], [ %.ps.0.i, %main_bb7 ]
  %pt.0.i = phi i8* [ %"25", %main_bb4 ], [ %"44", %main_bb7 ]
  %"32" = load i8* %ps.0.i, align 1
  %"33" = sext i8 %"32" to i32
  %"34" = icmp ne i32 %"33", 0
  br i1 %"34", label %main_bb6, label %main_subseq.exit

main_bb6:                                         ; preds = %main_bb5
  %"35" = load i8* %pt.0.i, align 1
  %"36" = sext i8 %"35" to i32
  %"37" = icmp ne i32 %"36", 0
  br i1 %"37", label %main_bb7, label %main_subseq.exit

main_bb7:                                         ; preds = %main_bb6
  %"38" = load i8* %ps.0.i, align 1
  %"39" = sext i8 %"38" to i32
  %"40" = load i8* %pt.0.i, align 1
  %"41" = sext i8 %"40" to i32
  %"42" = icmp eq i32 %"39", %"41"
  %"43" = getelementptr inbounds i8* %ps.0.i, i32 1
  %.ps.0.i = select i1 %"42", i8* %"43", i8* %ps.0.i
  %"44" = getelementptr inbounds i8* %pt.0.i, i32 1
  br label %main_bb5

main_subseq.exit:                                 ; preds = %main_bb5, %main_bb6
  %"45" = load i8* %pt.0.i, align 1
  %"46" = sext i8 %"45" to i32
  %"47" = icmp eq i32 %"46", 0
  %..i = select i1 %"47", i32 1, i32 0
  ret i32 %..i
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32 @__kittel_nondef.0()

declare i8* @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

