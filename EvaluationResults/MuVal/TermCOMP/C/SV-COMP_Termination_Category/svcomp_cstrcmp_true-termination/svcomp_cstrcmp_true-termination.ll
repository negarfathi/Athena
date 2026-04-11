; ModuleID = 'Benchmarks/TermCOMP/C/SV-COMP_Termination_Category/svcomp_cstrcmp_true-termination/svcomp_cstrcmp_true-termination.bc'
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
define i32 @cstrcmp(i8* %s1, i8* %s2) #0 {
cstrcmp_bb1:
  br label %cstrcmp_bb2

cstrcmp_bb2:                                      ; preds = %cstrcmp_bb4, %cstrcmp_bb1
  %.01 = phi i8* [ %s2, %cstrcmp_bb1 ], [ %"17", %cstrcmp_bb4 ]
  %.0 = phi i8* [ %s1, %cstrcmp_bb1 ], [ %"16", %cstrcmp_bb4 ]
  %"8" = load i8* %.0, align 1
  %"9" = sext i8 %"8" to i32
  %"10" = icmp ne i32 %"9", 0
  br i1 %"10", label %cstrcmp_bb3, label %cstrcmp_.critedge

cstrcmp_bb3:                                      ; preds = %cstrcmp_bb2
  %"11" = load i8* %.0, align 1
  %"12" = sext i8 %"11" to i32
  %"13" = load i8* %.01, align 1
  %"14" = sext i8 %"13" to i32
  %"15" = icmp eq i32 %"12", %"14"
  br i1 %"15", label %cstrcmp_bb4, label %cstrcmp_.critedge

cstrcmp_bb4:                                      ; preds = %cstrcmp_bb3
  %"16" = getelementptr inbounds i8* %.0, i32 1
  %"17" = getelementptr inbounds i8* %.01, i32 1
  br label %cstrcmp_bb2

cstrcmp_.critedge:                                ; preds = %cstrcmp_bb2, %cstrcmp_bb3
  %"18" = load i8* %.0, align 1
  %"19" = load i8* %.01, align 1
  %"20" = zext i8 %"18" to i32
  %"21" = zext i8 %"19" to i32
  %"22" = icmp slt i32 %"20", %"21"
  br i1 %"22", label %cstrcmp_bb6, label %cstrcmp_bb5

cstrcmp_bb5:                                      ; preds = %cstrcmp_.critedge
  %"23" = zext i8 %"18" to i32
  %"24" = zext i8 %"19" to i32
  %"25" = icmp sgt i32 %"23", %"24"
  %"26" = zext i1 %"25" to i32
  br label %cstrcmp_bb6

cstrcmp_bb6:                                      ; preds = %cstrcmp_.critedge, %cstrcmp_bb5
  %"27" = phi i32 [ %"26", %cstrcmp_bb5 ], [ -1, %cstrcmp_.critedge ]
  ret i32 %"27"
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb7:
  %"28" = call i32 @__VERIFIER_nondet_int() #3
  %"29" = icmp slt i32 %"28", 1
  %..i = select i1 %"29", i32 1, i32 %"28"
  %"30" = sext i32 %..i to i64
  %"31" = call noalias i8* @malloc(i64 %"30") #3
  %"32" = sub nsw i32 %..i, 1
  %"33" = sext i32 %"32" to i64
  %"34" = getelementptr inbounds i8* %"31", i64 %"33"
  store i8 0, i8* %"34", align 1
  %"35" = call i32 @__VERIFIER_nondet_int() #3
  %"36" = icmp slt i32 %"35", 1
  %..i1 = select i1 %"36", i32 1, i32 %"35"
  %"37" = sext i32 %..i1 to i64
  %"38" = call noalias i8* @malloc(i64 %"37") #3
  %"39" = sub nsw i32 %..i1, 1
  %"40" = sext i32 %"39" to i64
  %"41" = getelementptr inbounds i8* %"38", i64 %"40"
  store i8 0, i8* %"41", align 1
  br label %main_bb8

main_bb8:                                         ; preds = %main_bb10, %main_bb7
  %.01.i = phi i8* [ %"38", %main_bb7 ], [ %"51", %main_bb10 ]
  %.0.i = phi i8* [ %"31", %main_bb7 ], [ %"50", %main_bb10 ]
  %"42" = load i8* %.0.i, align 1
  %"43" = sext i8 %"42" to i32
  %"44" = icmp ne i32 %"43", 0
  br i1 %"44", label %main_bb9, label %main_.critedge.i

main_bb9:                                         ; preds = %main_bb8
  %"45" = load i8* %.0.i, align 1
  %"46" = sext i8 %"45" to i32
  %"47" = load i8* %.01.i, align 1
  %"48" = sext i8 %"47" to i32
  %"49" = icmp eq i32 %"46", %"48"
  br i1 %"49", label %main_bb10, label %main_.critedge.i

main_bb10:                                        ; preds = %main_bb9
  %"50" = getelementptr inbounds i8* %.0.i, i32 1
  %"51" = getelementptr inbounds i8* %.01.i, i32 1
  br label %main_bb8

main_.critedge.i:                                 ; preds = %main_bb9, %main_bb8
  %"52" = load i8* %.0.i, align 1
  %"53" = load i8* %.01.i, align 1
  %"54" = zext i8 %"52" to i32
  %"55" = zext i8 %"53" to i32
  %"56" = icmp slt i32 %"54", %"55"
  br i1 %"56", label %main_cstrcmp.exit, label %main_bb11

main_bb11:                                        ; preds = %main_.critedge.i
  %"57" = zext i8 %"52" to i32
  %"58" = zext i8 %"53" to i32
  %"59" = icmp sgt i32 %"57", %"58"
  %"60" = zext i1 %"59" to i32
  br label %main_cstrcmp.exit

main_cstrcmp.exit:                                ; preds = %main_.critedge.i, %main_bb11
  %"61" = phi i32 [ %"60", %main_bb11 ], [ -1, %main_.critedge.i ]
  ret i32 %"61"
}

declare i32 @__kittel_nondef.0()

declare i8* @__kittel_nondef.1()

declare i8 @__kittel_nondef.2()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

