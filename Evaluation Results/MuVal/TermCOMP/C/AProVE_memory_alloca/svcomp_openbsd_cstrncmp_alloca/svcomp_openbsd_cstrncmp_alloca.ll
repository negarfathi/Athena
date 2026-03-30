; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_openbsd_cstrncmp_alloca/svcomp_openbsd_cstrncmp_alloca.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @cstrncmp(i8* %s1, i8* %s2, i32 %n) #0 {
cstrncmp_bb0:
  %"0" = icmp eq i32 %n, 0
  br i1 %"0", label %cstrncmp_bb5, label %cstrncmp_bb1

cstrncmp_bb1:                                     ; preds = %cstrncmp_bb0, %cstrncmp_bb4
  %.03 = phi i32 [ %"17", %cstrncmp_bb4 ], [ %n, %cstrncmp_bb0 ]
  %.02 = phi i8* [ %"3", %cstrncmp_bb4 ], [ %s2, %cstrncmp_bb0 ]
  %.01 = phi i8* [ %"13", %cstrncmp_bb4 ], [ %s1, %cstrncmp_bb0 ]
  %"1" = load i8* %.01, align 1
  %"2" = sext i8 %"1" to i32
  %"3" = getelementptr inbounds i8* %.02, i32 1
  %"4" = load i8* %.02, align 1
  %"5" = sext i8 %"4" to i32
  %"6" = icmp ne i32 %"2", %"5"
  br i1 %"6", label %cstrncmp_bb2, label %cstrncmp_bb3

cstrncmp_bb2:                                     ; preds = %cstrncmp_bb1
  %"7" = load i8* %.01, align 1
  %"8" = zext i8 %"7" to i32
  %"9" = getelementptr inbounds i8* %"3", i32 -1
  %"10" = load i8* %"9", align 1
  %"11" = zext i8 %"10" to i32
  %"12" = sub nsw i32 %"8", %"11"
  br label %cstrncmp_bb5

cstrncmp_bb3:                                     ; preds = %cstrncmp_bb1
  %"13" = getelementptr inbounds i8* %.01, i32 1
  %"14" = load i8* %.01, align 1
  %"15" = sext i8 %"14" to i32
  %"16" = icmp eq i32 %"15", 0
  br i1 %"16", label %cstrncmp_bb5, label %cstrncmp_bb4

cstrncmp_bb4:                                     ; preds = %cstrncmp_bb3
  %"17" = add nsw i32 %.03, -1
  %"18" = icmp ne i32 %"17", 0
  br i1 %"18", label %cstrncmp_bb1, label %cstrncmp_bb5

cstrncmp_bb5:                                     ; preds = %cstrncmp_bb4, %cstrncmp_bb3, %cstrncmp_bb0, %cstrncmp_bb2
  %.0 = phi i32 [ %"12", %cstrncmp_bb2 ], [ 0, %cstrncmp_bb0 ], [ 0, %cstrncmp_bb3 ], [ 0, %cstrncmp_bb4 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb6:
  %"19" = call i32 @__VERIFIER_nondet_int()
  %"20" = call i32 @__VERIFIER_nondet_int()
  %"21" = icmp slt i32 %"19", 1
  %. = select i1 %"21", i32 1, i32 %"19"
  %"22" = icmp slt i32 %"20", 1
  %length2.0 = select i1 %"22", i32 1, i32 %"20"
  %"23" = sext i32 %. to i64
  %"24" = mul i64 %"23", 1
  %"25" = alloca i8, i64 %"24"
  %"26" = sext i32 %length2.0 to i64
  %"27" = mul i64 %"26", 1
  %"28" = alloca i8, i64 %"27"
  %"29" = sub nsw i32 %., 1
  %"30" = sext i32 %"29" to i64
  %"31" = getelementptr inbounds i8* %"25", i64 %"30"
  store i8 0, i8* %"31", align 1
  %"32" = sub nsw i32 %length2.0, 1
  %"33" = sext i32 %"32" to i64
  %"34" = getelementptr inbounds i8* %"28", i64 %"33"
  store i8 0, i8* %"34", align 1
  %"35" = call i32 @__VERIFIER_nondet_int()
  %"36" = icmp eq i32 %"35", 0
  br i1 %"36", label %main_cstrncmp.exit, label %main_bb7

main_bb7:                                         ; preds = %main_bb10, %main_bb6
  %.03.i = phi i32 [ %"53", %main_bb10 ], [ %"35", %main_bb6 ]
  %.02.i = phi i8* [ %"39", %main_bb10 ], [ %"28", %main_bb6 ]
  %.01.i = phi i8* [ %"49", %main_bb10 ], [ %"25", %main_bb6 ]
  %"37" = load i8* %.01.i, align 1
  %"38" = sext i8 %"37" to i32
  %"39" = getelementptr inbounds i8* %.02.i, i32 1
  %"40" = load i8* %.02.i, align 1
  %"41" = sext i8 %"40" to i32
  %"42" = icmp ne i32 %"38", %"41"
  br i1 %"42", label %main_bb8, label %main_bb9

main_bb8:                                         ; preds = %main_bb7
  %"43" = load i8* %.01.i, align 1
  %"44" = zext i8 %"43" to i32
  %"45" = getelementptr inbounds i8* %"39", i32 -1
  %"46" = load i8* %"45", align 1
  %"47" = zext i8 %"46" to i32
  %"48" = sub nsw i32 %"44", %"47"
  br label %main_cstrncmp.exit

main_bb9:                                         ; preds = %main_bb7
  %"49" = getelementptr inbounds i8* %.01.i, i32 1
  %"50" = load i8* %.01.i, align 1
  %"51" = sext i8 %"50" to i32
  %"52" = icmp eq i32 %"51", 0
  br i1 %"52", label %main_cstrncmp.exit, label %main_bb10

main_bb10:                                        ; preds = %main_bb9
  %"53" = add nsw i32 %.03.i, -1
  %"54" = icmp ne i32 %"53", 0
  br i1 %"54", label %main_bb7, label %main_cstrncmp.exit

main_cstrncmp.exit:                               ; preds = %main_bb6, %main_bb8, %main_bb9, %main_bb10
  %.0.i = phi i32 [ %"48", %main_bb8 ], [ 0, %main_bb6 ], [ 0, %main_bb9 ], [ 0, %main_bb10 ]
  ret i32 %.0.i
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32 @__kittel_nondef.0()

declare i8* @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

