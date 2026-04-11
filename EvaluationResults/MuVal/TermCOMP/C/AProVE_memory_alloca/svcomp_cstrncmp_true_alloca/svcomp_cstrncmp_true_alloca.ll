; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_cstrncmp_true_alloca/svcomp_cstrncmp_true_alloca.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @cstrncmp(i8* %s1, i8* %s2, i32 %n) #0 {
cstrncmp_bb0:
  %"0" = icmp eq i32 %n, 0
  br i1 %"0", label %cstrncmp_bb7, label %cstrncmp_bb1

cstrncmp_bb1:                                     ; preds = %cstrncmp_bb0, %cstrncmp_bb5
  %.03 = phi i32 [ %"1", %cstrncmp_bb5 ], [ %n, %cstrncmp_bb0 ]
  %.02 = phi i8* [ %"13", %cstrncmp_bb5 ], [ %s2, %cstrncmp_bb0 ]
  %.01 = phi i8* [ %"12", %cstrncmp_bb5 ], [ %s1, %cstrncmp_bb0 ]
  %"1" = add nsw i32 %.03, -1
  %"2" = icmp sgt i32 %.03, 0
  br i1 %"2", label %cstrncmp_bb2, label %cstrncmp_.critedge

cstrncmp_bb2:                                     ; preds = %cstrncmp_bb1
  %"3" = load i8* %.01, align 1
  %"4" = sext i8 %"3" to i32
  %"5" = load i8* %.02, align 1
  %"6" = sext i8 %"5" to i32
  %"7" = icmp eq i32 %"4", %"6"
  br i1 %"7", label %cstrncmp_bb3, label %cstrncmp_.critedge

cstrncmp_bb3:                                     ; preds = %cstrncmp_bb2
  %"8" = icmp eq i32 %"1", 0
  br i1 %"8", label %cstrncmp_bb7, label %cstrncmp_bb4

cstrncmp_bb4:                                     ; preds = %cstrncmp_bb3
  %"9" = load i8* %.01, align 1
  %"10" = sext i8 %"9" to i32
  %"11" = icmp eq i32 %"10", 0
  br i1 %"11", label %cstrncmp_bb7, label %cstrncmp_bb5

cstrncmp_bb5:                                     ; preds = %cstrncmp_bb4
  %"12" = getelementptr inbounds i8* %.01, i32 1
  %"13" = getelementptr inbounds i8* %.02, i32 1
  br label %cstrncmp_bb1

cstrncmp_.critedge:                               ; preds = %cstrncmp_bb1, %cstrncmp_bb2
  %"14" = load i8* %.01, align 1
  %"15" = load i8* %.02, align 1
  %"16" = zext i8 %"14" to i32
  %"17" = zext i8 %"15" to i32
  %"18" = icmp slt i32 %"16", %"17"
  br i1 %"18", label %cstrncmp_bb7, label %cstrncmp_bb6

cstrncmp_bb6:                                     ; preds = %cstrncmp_.critedge
  %"19" = zext i8 %"14" to i32
  %"20" = zext i8 %"15" to i32
  %"21" = icmp sgt i32 %"19", %"20"
  %"22" = zext i1 %"21" to i32
  br label %cstrncmp_bb7

cstrncmp_bb7:                                     ; preds = %cstrncmp_bb6, %cstrncmp_.critedge, %cstrncmp_bb3, %cstrncmp_bb4, %cstrncmp_bb0
  %.0 = phi i32 [ 0, %cstrncmp_bb0 ], [ 0, %cstrncmp_bb4 ], [ 0, %cstrncmp_bb3 ], [ %"22", %cstrncmp_bb6 ], [ -1, %cstrncmp_.critedge ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb8:
  %"23" = call i32 @__VERIFIER_nondet_int()
  %"24" = call i32 @__VERIFIER_nondet_int()
  %"25" = icmp slt i32 %"23", 1
  %. = select i1 %"25", i32 1, i32 %"23"
  %"26" = icmp slt i32 %"24", 1
  %length2.0 = select i1 %"26", i32 1, i32 %"24"
  %"27" = sext i32 %. to i64
  %"28" = mul i64 %"27", 1
  %"29" = alloca i8, i64 %"28"
  %"30" = sext i32 %length2.0 to i64
  %"31" = mul i64 %"30", 1
  %"32" = alloca i8, i64 %"31"
  %"33" = sub nsw i32 %., 1
  %"34" = sext i32 %"33" to i64
  %"35" = getelementptr inbounds i8* %"29", i64 %"34"
  store i8 0, i8* %"35", align 1
  %"36" = sub nsw i32 %length2.0, 1
  %"37" = sext i32 %"36" to i64
  %"38" = getelementptr inbounds i8* %"32", i64 %"37"
  store i8 0, i8* %"38", align 1
  %"39" = call i32 @__VERIFIER_nondet_int()
  %"40" = icmp eq i32 %"39", 0
  br i1 %"40", label %main_cstrncmp.exit, label %main_bb9

main_bb9:                                         ; preds = %main_bb13, %main_bb8
  %.03.i = phi i32 [ %"41", %main_bb13 ], [ %"39", %main_bb8 ]
  %.02.i = phi i8* [ %"53", %main_bb13 ], [ %"32", %main_bb8 ]
  %.01.i = phi i8* [ %"52", %main_bb13 ], [ %"29", %main_bb8 ]
  %"41" = add nsw i32 %.03.i, -1
  %"42" = icmp sgt i32 %.03.i, 0
  br i1 %"42", label %main_bb10, label %main_.critedge.i

main_bb10:                                        ; preds = %main_bb9
  %"43" = load i8* %.01.i, align 1
  %"44" = sext i8 %"43" to i32
  %"45" = load i8* %.02.i, align 1
  %"46" = sext i8 %"45" to i32
  %"47" = icmp eq i32 %"44", %"46"
  br i1 %"47", label %main_bb11, label %main_.critedge.i

main_bb11:                                        ; preds = %main_bb10
  %"48" = icmp eq i32 %"41", 0
  br i1 %"48", label %main_cstrncmp.exit, label %main_bb12

main_bb12:                                        ; preds = %main_bb11
  %"49" = load i8* %.01.i, align 1
  %"50" = sext i8 %"49" to i32
  %"51" = icmp eq i32 %"50", 0
  br i1 %"51", label %main_cstrncmp.exit, label %main_bb13

main_bb13:                                        ; preds = %main_bb12
  %"52" = getelementptr inbounds i8* %.01.i, i32 1
  %"53" = getelementptr inbounds i8* %.02.i, i32 1
  br label %main_bb9

main_.critedge.i:                                 ; preds = %main_bb10, %main_bb9
  %"54" = load i8* %.01.i, align 1
  %"55" = load i8* %.02.i, align 1
  %"56" = zext i8 %"54" to i32
  %"57" = zext i8 %"55" to i32
  %"58" = icmp slt i32 %"56", %"57"
  br i1 %"58", label %main_cstrncmp.exit, label %main_bb14

main_bb14:                                        ; preds = %main_.critedge.i
  %"59" = zext i8 %"54" to i32
  %"60" = zext i8 %"55" to i32
  %"61" = icmp sgt i32 %"59", %"60"
  %"62" = zext i1 %"61" to i32
  br label %main_cstrncmp.exit

main_cstrncmp.exit:                               ; preds = %main_bb8, %main_bb11, %main_bb12, %main_.critedge.i, %main_bb14
  %.0.i = phi i32 [ 0, %main_bb8 ], [ 0, %main_bb12 ], [ 0, %main_bb11 ], [ %"62", %main_bb14 ], [ -1, %main_.critedge.i ]
  ret i32 %.0.i
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32 @__kittel_nondef.0()

declare i8* @__kittel_nondef.1()

declare i8 @__kittel_nondef.2()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

