; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_cstrcmp_true_alloca/svcomp_cstrcmp_true_alloca.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @cstrcmp(i8* %s1, i8* %s2) #0 {
cstrcmp_bb0:
  br label %cstrcmp_bb1

cstrcmp_bb1:                                      ; preds = %cstrcmp_bb3, %cstrcmp_bb0
  %.01 = phi i8* [ %s2, %cstrcmp_bb0 ], [ %"9", %cstrcmp_bb3 ]
  %.0 = phi i8* [ %s1, %cstrcmp_bb0 ], [ %"8", %cstrcmp_bb3 ]
  %"0" = load i8* %.0, align 1
  %"1" = sext i8 %"0" to i32
  %"2" = icmp ne i32 %"1", 0
  br i1 %"2", label %cstrcmp_bb2, label %cstrcmp_.critedge

cstrcmp_bb2:                                      ; preds = %cstrcmp_bb1
  %"3" = load i8* %.0, align 1
  %"4" = sext i8 %"3" to i32
  %"5" = load i8* %.01, align 1
  %"6" = sext i8 %"5" to i32
  %"7" = icmp eq i32 %"4", %"6"
  br i1 %"7", label %cstrcmp_bb3, label %cstrcmp_.critedge

cstrcmp_bb3:                                      ; preds = %cstrcmp_bb2
  %"8" = getelementptr inbounds i8* %.0, i32 1
  %"9" = getelementptr inbounds i8* %.01, i32 1
  br label %cstrcmp_bb1

cstrcmp_.critedge:                                ; preds = %cstrcmp_bb1, %cstrcmp_bb2
  %"10" = load i8* %.0, align 1
  %"11" = load i8* %.01, align 1
  %"12" = zext i8 %"10" to i32
  %"13" = zext i8 %"11" to i32
  %"14" = icmp slt i32 %"12", %"13"
  br i1 %"14", label %cstrcmp_bb5, label %cstrcmp_bb4

cstrcmp_bb4:                                      ; preds = %cstrcmp_.critedge
  %"15" = zext i8 %"10" to i32
  %"16" = zext i8 %"11" to i32
  %"17" = icmp sgt i32 %"15", %"16"
  %"18" = zext i1 %"17" to i32
  br label %cstrcmp_bb5

cstrcmp_bb5:                                      ; preds = %cstrcmp_.critedge, %cstrcmp_bb4
  %"19" = phi i32 [ %"18", %cstrcmp_bb4 ], [ -1, %cstrcmp_.critedge ]
  ret i32 %"19"
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb6:
  %"20" = call i32 @__VERIFIER_nondet_int()
  %"21" = call i32 @__VERIFIER_nondet_int()
  %"22" = icmp slt i32 %"20", 1
  %. = select i1 %"22", i32 1, i32 %"20"
  %"23" = icmp slt i32 %"21", 1
  %length2.0 = select i1 %"23", i32 1, i32 %"21"
  %"24" = sext i32 %. to i64
  %"25" = mul i64 %"24", 1
  %"26" = alloca i8, i64 %"25"
  %"27" = sext i32 %length2.0 to i64
  %"28" = mul i64 %"27", 1
  %"29" = alloca i8, i64 %"28"
  %"30" = sub nsw i32 %., 1
  %"31" = sext i32 %"30" to i64
  %"32" = getelementptr inbounds i8* %"26", i64 %"31"
  store i8 0, i8* %"32", align 1
  %"33" = sub nsw i32 %length2.0, 1
  %"34" = sext i32 %"33" to i64
  %"35" = getelementptr inbounds i8* %"29", i64 %"34"
  store i8 0, i8* %"35", align 1
  br label %main_bb7

main_bb7:                                         ; preds = %main_bb9, %main_bb6
  %.01.i = phi i8* [ %"29", %main_bb6 ], [ %"45", %main_bb9 ]
  %.0.i = phi i8* [ %"26", %main_bb6 ], [ %"44", %main_bb9 ]
  %"36" = load i8* %.0.i, align 1
  %"37" = sext i8 %"36" to i32
  %"38" = icmp ne i32 %"37", 0
  br i1 %"38", label %main_bb8, label %main_.critedge.i

main_bb8:                                         ; preds = %main_bb7
  %"39" = load i8* %.0.i, align 1
  %"40" = sext i8 %"39" to i32
  %"41" = load i8* %.01.i, align 1
  %"42" = sext i8 %"41" to i32
  %"43" = icmp eq i32 %"40", %"42"
  br i1 %"43", label %main_bb9, label %main_.critedge.i

main_bb9:                                         ; preds = %main_bb8
  %"44" = getelementptr inbounds i8* %.0.i, i32 1
  %"45" = getelementptr inbounds i8* %.01.i, i32 1
  br label %main_bb7

main_.critedge.i:                                 ; preds = %main_bb8, %main_bb7
  %"46" = load i8* %.0.i, align 1
  %"47" = load i8* %.01.i, align 1
  %"48" = zext i8 %"46" to i32
  %"49" = zext i8 %"47" to i32
  %"50" = icmp slt i32 %"48", %"49"
  br i1 %"50", label %main_cstrcmp.exit, label %main_bb10

main_bb10:                                        ; preds = %main_.critedge.i
  %"51" = zext i8 %"46" to i32
  %"52" = zext i8 %"47" to i32
  %"53" = icmp sgt i32 %"51", %"52"
  %"54" = zext i1 %"53" to i32
  br label %main_cstrcmp.exit

main_cstrcmp.exit:                                ; preds = %main_.critedge.i, %main_bb10
  %"55" = phi i32 [ %"54", %main_bb10 ], [ -1, %main_.critedge.i ]
  ret i32 %"55"
}

declare i32 @__VERIFIER_nondet_int() #1

declare i8* @__kittel_nondef.0()

declare i8 @__kittel_nondef.1()

declare i32 @__kittel_nondef.2()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

