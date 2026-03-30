; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_openbsd_cstrncat_alloca/svcomp_openbsd_cstrncat_alloca.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i8* @cstrncat(i8* %dst, i8* %src, i64 %n) #0 {
cstrncat_bb0:
  %"0" = icmp ne i64 %n, 0
  br i1 %"0", label %cstrncat_bb1, label %cstrncat_bb6

cstrncat_bb1:                                     ; preds = %cstrncat_bb0, %cstrncat_bb2
  %d.0 = phi i8* [ %"4", %cstrncat_bb2 ], [ %dst, %cstrncat_bb0 ]
  %"1" = load i8* %d.0, align 1
  %"2" = sext i8 %"1" to i32
  %"3" = icmp ne i32 %"2", 0
  br i1 %"3", label %cstrncat_bb2, label %cstrncat_bb3

cstrncat_bb2:                                     ; preds = %cstrncat_bb1
  %"4" = getelementptr inbounds i8* %d.0, i32 1
  br label %cstrncat_bb1

cstrncat_bb3:                                     ; preds = %cstrncat_bb1, %cstrncat_bb4
  %s.0 = phi i8* [ %"5", %cstrncat_bb4 ], [ %src, %cstrncat_bb1 ]
  %d.1 = phi i8* [ %"9", %cstrncat_bb4 ], [ %d.0, %cstrncat_bb1 ]
  %.0 = phi i64 [ %"10", %cstrncat_bb4 ], [ %n, %cstrncat_bb1 ]
  %"5" = getelementptr inbounds i8* %s.0, i32 1
  %"6" = load i8* %s.0, align 1
  store i8 %"6", i8* %d.1, align 1
  %"7" = sext i8 %"6" to i32
  %"8" = icmp eq i32 %"7", 0
  br i1 %"8", label %cstrncat_bb5, label %cstrncat_bb4

cstrncat_bb4:                                     ; preds = %cstrncat_bb3
  %"9" = getelementptr inbounds i8* %d.1, i32 1
  %"10" = add i64 %.0, -1
  %"11" = icmp ne i64 %"10", 0
  br i1 %"11", label %cstrncat_bb3, label %cstrncat_bb5

cstrncat_bb5:                                     ; preds = %cstrncat_bb3, %cstrncat_bb4
  %d.2 = phi i8* [ %"9", %cstrncat_bb4 ], [ %d.1, %cstrncat_bb3 ]
  store i8 0, i8* %d.2, align 1
  br label %cstrncat_bb6

cstrncat_bb6:                                     ; preds = %cstrncat_bb5, %cstrncat_bb0
  ret i8* %dst
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb7:
  %"12" = call i32 @__VERIFIER_nondet_int()
  %"13" = call i32 @__VERIFIER_nondet_int()
  %"14" = call i32 @__VERIFIER_nondet_int()
  %"15" = icmp slt i32 %"12", 1
  %. = select i1 %"15", i32 1, i32 %"12"
  %"16" = icmp slt i32 %"13", 1
  %length2.0 = select i1 %"16", i32 1, i32 %"13"
  %"17" = icmp slt i32 %"14", 1
  %.1 = select i1 %"17", i32 1, i32 %"14"
  %"18" = icmp slt i32 %., %.1
  %"19" = sub nsw i32 %., %.1
  %"20" = icmp slt i32 %"19", %length2.0
  %or.cond = or i1 %"18", %"20"
  br i1 %or.cond, label %main_cstrncat.exit, label %main_bb8

main_bb8:                                         ; preds = %main_bb7
  %"21" = sext i32 %. to i64
  %"22" = mul i64 %"21", 1
  %"23" = alloca i8, i64 %"22"
  %"24" = sext i32 %length2.0 to i64
  %"25" = mul i64 %"24", 1
  %"26" = alloca i8, i64 %"25"
  %"27" = sub nsw i32 %., %.1
  %"28" = sub nsw i32 %"27", 1
  %"29" = sext i32 %"28" to i64
  %"30" = getelementptr inbounds i8* %"23", i64 %"29"
  store i8 0, i8* %"30", align 1
  %"31" = sub nsw i32 %length2.0, 1
  %"32" = sext i32 %"31" to i64
  %"33" = getelementptr inbounds i8* %"26", i64 %"32"
  store i8 0, i8* %"33", align 1
  %"34" = sext i32 %.1 to i64
  %"35" = icmp ne i64 %"34", 0
  br i1 %"35", label %main_bb9, label %main_cstrncat.exit

main_bb9:                                         ; preds = %main_bb10, %main_bb8
  %d.0.i = phi i8* [ %"39", %main_bb10 ], [ %"23", %main_bb8 ]
  %"36" = load i8* %d.0.i, align 1
  %"37" = sext i8 %"36" to i32
  %"38" = icmp ne i32 %"37", 0
  br i1 %"38", label %main_bb10, label %main_bb11

main_bb10:                                        ; preds = %main_bb9
  %"39" = getelementptr inbounds i8* %d.0.i, i32 1
  br label %main_bb9

main_bb11:                                        ; preds = %main_bb12, %main_bb9
  %s.0.i = phi i8* [ %"40", %main_bb12 ], [ %"26", %main_bb9 ]
  %d.1.i = phi i8* [ %"44", %main_bb12 ], [ %d.0.i, %main_bb9 ]
  %.0.i = phi i64 [ %"45", %main_bb12 ], [ %"34", %main_bb9 ]
  %"40" = getelementptr inbounds i8* %s.0.i, i32 1
  %"41" = load i8* %s.0.i, align 1
  store i8 %"41", i8* %d.1.i, align 1
  %"42" = sext i8 %"41" to i32
  %"43" = icmp eq i32 %"42", 0
  br i1 %"43", label %main_bb13, label %main_bb12

main_bb12:                                        ; preds = %main_bb11
  %"44" = getelementptr inbounds i8* %d.1.i, i32 1
  %"45" = add i64 %.0.i, -1
  %"46" = icmp ne i64 %"45", 0
  br i1 %"46", label %main_bb11, label %main_bb13

main_bb13:                                        ; preds = %main_bb12, %main_bb11
  %d.2.i = phi i8* [ %"44", %main_bb12 ], [ %d.1.i, %main_bb11 ]
  store i8 0, i8* %d.2.i, align 1
  br label %main_cstrncat.exit

main_cstrncat.exit:                               ; preds = %main_bb13, %main_bb8, %main_bb7
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int() #1

declare i8* @__kittel_nondef.0()

declare i64 @__kittel_nondef.1()

declare i32 @__kittel_nondef.2()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

