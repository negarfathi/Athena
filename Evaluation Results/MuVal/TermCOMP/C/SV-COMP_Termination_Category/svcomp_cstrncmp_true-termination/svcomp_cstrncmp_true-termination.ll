; ModuleID = 'Benchmarks/TermCOMP/C/SV-COMP_Termination_Category/svcomp_cstrncmp_true-termination/svcomp_cstrncmp_true-termination.bc'
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
define i32 @cstrncmp(i8* %s1, i8* %s2, i32 %n) #0 {
cstrncmp_bb1:
  %"8" = icmp eq i32 %n, 0
  br i1 %"8", label %cstrncmp_bb8, label %cstrncmp_bb2

cstrncmp_bb2:                                     ; preds = %cstrncmp_bb1, %cstrncmp_bb6
  %.03 = phi i32 [ %"9", %cstrncmp_bb6 ], [ %n, %cstrncmp_bb1 ]
  %.02 = phi i8* [ %"21", %cstrncmp_bb6 ], [ %s2, %cstrncmp_bb1 ]
  %.01 = phi i8* [ %"20", %cstrncmp_bb6 ], [ %s1, %cstrncmp_bb1 ]
  %"9" = add nsw i32 %.03, -1
  %"10" = icmp sgt i32 %.03, 0
  br i1 %"10", label %cstrncmp_bb3, label %cstrncmp_.critedge

cstrncmp_bb3:                                     ; preds = %cstrncmp_bb2
  %"11" = load i8* %.01, align 1
  %"12" = sext i8 %"11" to i32
  %"13" = load i8* %.02, align 1
  %"14" = sext i8 %"13" to i32
  %"15" = icmp eq i32 %"12", %"14"
  br i1 %"15", label %cstrncmp_bb4, label %cstrncmp_.critedge

cstrncmp_bb4:                                     ; preds = %cstrncmp_bb3
  %"16" = icmp eq i32 %"9", 0
  br i1 %"16", label %cstrncmp_bb8, label %cstrncmp_bb5

cstrncmp_bb5:                                     ; preds = %cstrncmp_bb4
  %"17" = load i8* %.01, align 1
  %"18" = sext i8 %"17" to i32
  %"19" = icmp eq i32 %"18", 0
  br i1 %"19", label %cstrncmp_bb8, label %cstrncmp_bb6

cstrncmp_bb6:                                     ; preds = %cstrncmp_bb5
  %"20" = getelementptr inbounds i8* %.01, i32 1
  %"21" = getelementptr inbounds i8* %.02, i32 1
  br label %cstrncmp_bb2

cstrncmp_.critedge:                               ; preds = %cstrncmp_bb2, %cstrncmp_bb3
  %"22" = load i8* %.01, align 1
  %"23" = load i8* %.02, align 1
  %"24" = zext i8 %"22" to i32
  %"25" = zext i8 %"23" to i32
  %"26" = icmp slt i32 %"24", %"25"
  br i1 %"26", label %cstrncmp_bb8, label %cstrncmp_bb7

cstrncmp_bb7:                                     ; preds = %cstrncmp_.critedge
  %"27" = zext i8 %"22" to i32
  %"28" = zext i8 %"23" to i32
  %"29" = icmp sgt i32 %"27", %"28"
  %"30" = zext i1 %"29" to i32
  br label %cstrncmp_bb8

cstrncmp_bb8:                                     ; preds = %cstrncmp_bb7, %cstrncmp_.critedge, %cstrncmp_bb4, %cstrncmp_bb5, %cstrncmp_bb1
  %.0 = phi i32 [ 0, %cstrncmp_bb1 ], [ 0, %cstrncmp_bb5 ], [ 0, %cstrncmp_bb4 ], [ %"30", %cstrncmp_bb7 ], [ -1, %cstrncmp_.critedge ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb9:
  %"31" = call i32 @__VERIFIER_nondet_int() #3
  %"32" = icmp slt i32 %"31", 1
  %..i = select i1 %"32", i32 1, i32 %"31"
  %"33" = sext i32 %..i to i64
  %"34" = call noalias i8* @malloc(i64 %"33") #3
  %"35" = sub nsw i32 %..i, 1
  %"36" = sext i32 %"35" to i64
  %"37" = getelementptr inbounds i8* %"34", i64 %"36"
  store i8 0, i8* %"37", align 1
  %"38" = call i32 @__VERIFIER_nondet_int() #3
  %"39" = icmp slt i32 %"38", 1
  %..i1 = select i1 %"39", i32 1, i32 %"38"
  %"40" = sext i32 %..i1 to i64
  %"41" = call noalias i8* @malloc(i64 %"40") #3
  %"42" = sub nsw i32 %..i1, 1
  %"43" = sext i32 %"42" to i64
  %"44" = getelementptr inbounds i8* %"41", i64 %"43"
  store i8 0, i8* %"44", align 1
  %"45" = call i32 @__VERIFIER_nondet_int()
  %"46" = icmp eq i32 %"45", 0
  br i1 %"46", label %main_cstrncmp.exit, label %main_bb10

main_bb10:                                        ; preds = %main_bb14, %main_bb9
  %.03.i = phi i32 [ %"47", %main_bb14 ], [ %"45", %main_bb9 ]
  %.02.i = phi i8* [ %"59", %main_bb14 ], [ %"41", %main_bb9 ]
  %.01.i = phi i8* [ %"58", %main_bb14 ], [ %"34", %main_bb9 ]
  %"47" = add nsw i32 %.03.i, -1
  %"48" = icmp sgt i32 %.03.i, 0
  br i1 %"48", label %main_bb11, label %main_.critedge.i

main_bb11:                                        ; preds = %main_bb10
  %"49" = load i8* %.01.i, align 1
  %"50" = sext i8 %"49" to i32
  %"51" = load i8* %.02.i, align 1
  %"52" = sext i8 %"51" to i32
  %"53" = icmp eq i32 %"50", %"52"
  br i1 %"53", label %main_bb12, label %main_.critedge.i

main_bb12:                                        ; preds = %main_bb11
  %"54" = icmp eq i32 %"47", 0
  br i1 %"54", label %main_cstrncmp.exit, label %main_bb13

main_bb13:                                        ; preds = %main_bb12
  %"55" = load i8* %.01.i, align 1
  %"56" = sext i8 %"55" to i32
  %"57" = icmp eq i32 %"56", 0
  br i1 %"57", label %main_cstrncmp.exit, label %main_bb14

main_bb14:                                        ; preds = %main_bb13
  %"58" = getelementptr inbounds i8* %.01.i, i32 1
  %"59" = getelementptr inbounds i8* %.02.i, i32 1
  br label %main_bb10

main_.critedge.i:                                 ; preds = %main_bb11, %main_bb10
  %"60" = load i8* %.01.i, align 1
  %"61" = load i8* %.02.i, align 1
  %"62" = zext i8 %"60" to i32
  %"63" = zext i8 %"61" to i32
  %"64" = icmp slt i32 %"62", %"63"
  br i1 %"64", label %main_cstrncmp.exit, label %main_bb15

main_bb15:                                        ; preds = %main_.critedge.i
  %"65" = zext i8 %"60" to i32
  %"66" = zext i8 %"61" to i32
  %"67" = icmp sgt i32 %"65", %"66"
  %"68" = zext i1 %"67" to i32
  br label %main_cstrncmp.exit

main_cstrncmp.exit:                               ; preds = %main_bb9, %main_bb12, %main_bb13, %main_.critedge.i, %main_bb15
  %.0.i = phi i32 [ 0, %main_bb9 ], [ 0, %main_bb13 ], [ 0, %main_bb12 ], [ %"68", %main_bb15 ], [ -1, %main_.critedge.i ]
  ret i32 %.0.i
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

