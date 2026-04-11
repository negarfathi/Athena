; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_cstrpbrk_true_alloca/svcomp_cstrpbrk_true_alloca.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i8* @cstrpbrk(i8* %s1, i8* %s2) #0 {
cstrpbrk_bb0:
  br label %cstrpbrk_bb1

cstrpbrk_bb1:                                     ; preds = %cstrpbrk_bb6, %cstrpbrk_bb0
  %sc1.0 = phi i8* [ %s1, %cstrpbrk_bb0 ], [ %"17", %cstrpbrk_bb6 ]
  %"0" = load i8* %sc1.0, align 1
  %"1" = sext i8 %"0" to i32
  %"2" = icmp ne i32 %"1", 0
  br i1 %"2", label %cstrpbrk_bb2, label %cstrpbrk_bb7

cstrpbrk_bb2:                                     ; preds = %cstrpbrk_bb1
  %"3" = load i8* %sc1.0, align 1
  %"4" = sext i8 %"3" to i32
  %"5" = trunc i32 %"4" to i8
  %"6" = sext i8 %"5" to i32
  br label %cstrpbrk_bb3

cstrpbrk_bb3:                                     ; preds = %cstrpbrk_bb5, %cstrpbrk_bb2
  %s.0 = phi i8* [ %s2, %cstrpbrk_bb2 ], [ %"13", %cstrpbrk_bb5 ]
  %"7" = load i8* %s.0, align 1
  %"8" = sext i8 %"7" to i32
  %"9" = icmp ne i32 %"8", 0
  br i1 %"9", label %cstrpbrk_bb4, label %cstrpbrk_.critedge

cstrpbrk_bb4:                                     ; preds = %cstrpbrk_bb3
  %"10" = load i8* %s.0, align 1
  %"11" = sext i8 %"10" to i32
  %"12" = icmp ne i32 %"11", %"6"
  br i1 %"12", label %cstrpbrk_bb5, label %cstrpbrk_.critedge

cstrpbrk_bb5:                                     ; preds = %cstrpbrk_bb4
  %"13" = getelementptr inbounds i8* %s.0, i32 1
  br label %cstrpbrk_bb3

cstrpbrk_.critedge:                               ; preds = %cstrpbrk_bb3, %cstrpbrk_bb4
  %"14" = load i8* %s.0, align 1
  %"15" = sext i8 %"14" to i32
  %"16" = icmp ne i32 %"15", %"4"
  br i1 %"16", label %cstrpbrk_bb7, label %cstrpbrk_bb6

cstrpbrk_bb6:                                     ; preds = %cstrpbrk_.critedge
  %"17" = getelementptr inbounds i8* %sc1.0, i32 1
  br label %cstrpbrk_bb1

cstrpbrk_bb7:                                     ; preds = %cstrpbrk_bb1, %cstrpbrk_.critedge
  %.0 = phi i8* [ %sc1.0, %cstrpbrk_.critedge ], [ null, %cstrpbrk_bb1 ]
  ret i8* %.0
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb8:
  %"18" = call i32 @__VERIFIER_nondet_int()
  %"19" = call i32 @__VERIFIER_nondet_int()
  %"20" = icmp slt i32 %"18", 1
  %. = select i1 %"20", i32 1, i32 %"18"
  %"21" = icmp slt i32 %"19", 1
  %length2.0 = select i1 %"21", i32 1, i32 %"19"
  %"22" = sext i32 %. to i64
  %"23" = mul i64 %"22", 1
  %"24" = alloca i8, i64 %"23"
  %"25" = sext i32 %length2.0 to i64
  %"26" = mul i64 %"25", 1
  %"27" = alloca i8, i64 %"26"
  %"28" = sub nsw i32 %., 1
  %"29" = sext i32 %"28" to i64
  %"30" = getelementptr inbounds i8* %"24", i64 %"29"
  store i8 0, i8* %"30", align 1
  %"31" = sub nsw i32 %length2.0, 1
  %"32" = sext i32 %"31" to i64
  %"33" = getelementptr inbounds i8* %"27", i64 %"32"
  store i8 0, i8* %"33", align 1
  br label %main_bb9

main_bb9:                                         ; preds = %main_bb14, %main_bb8
  %sc1.0.i = phi i8* [ %"24", %main_bb8 ], [ %"51", %main_bb14 ]
  %"34" = load i8* %sc1.0.i, align 1
  %"35" = sext i8 %"34" to i32
  %"36" = icmp ne i32 %"35", 0
  br i1 %"36", label %main_bb10, label %main_cstrpbrk.exit

main_bb10:                                        ; preds = %main_bb9
  %"37" = load i8* %sc1.0.i, align 1
  %"38" = sext i8 %"37" to i32
  %"39" = trunc i32 %"38" to i8
  %"40" = sext i8 %"39" to i32
  br label %main_bb11

main_bb11:                                        ; preds = %main_bb13, %main_bb10
  %s.0.i = phi i8* [ %"27", %main_bb10 ], [ %"47", %main_bb13 ]
  %"41" = load i8* %s.0.i, align 1
  %"42" = sext i8 %"41" to i32
  %"43" = icmp ne i32 %"42", 0
  br i1 %"43", label %main_bb12, label %main_.critedge.i

main_bb12:                                        ; preds = %main_bb11
  %"44" = load i8* %s.0.i, align 1
  %"45" = sext i8 %"44" to i32
  %"46" = icmp ne i32 %"45", %"40"
  br i1 %"46", label %main_bb13, label %main_.critedge.i

main_bb13:                                        ; preds = %main_bb12
  %"47" = getelementptr inbounds i8* %s.0.i, i32 1
  br label %main_bb11

main_.critedge.i:                                 ; preds = %main_bb12, %main_bb11
  %"48" = load i8* %s.0.i, align 1
  %"49" = sext i8 %"48" to i32
  %"50" = icmp ne i32 %"49", %"38"
  br i1 %"50", label %main_cstrpbrk.exit, label %main_bb14

main_bb14:                                        ; preds = %main_.critedge.i
  %"51" = getelementptr inbounds i8* %sc1.0.i, i32 1
  br label %main_bb9

main_cstrpbrk.exit:                               ; preds = %main_bb9, %main_.critedge.i
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int() #1

declare i8* @__kittel_nondef.0()

declare i32 @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

