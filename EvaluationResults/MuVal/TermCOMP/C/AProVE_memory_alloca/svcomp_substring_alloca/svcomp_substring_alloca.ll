; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_substring_alloca/svcomp_substring_alloca.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @substring(i8* %s, i8* %t) #0 {
substring_bb0:
  br label %substring_bb1

substring_bb1:                                    ; preds = %substring_bb5, %substring_bb0
  %ps.0 = phi i8* [ %s, %substring_bb0 ], [ %"16", %substring_bb5 ]
  %"0" = load i8* %ps.0, align 1
  %"1" = sext i8 %"0" to i32
  %"2" = icmp ne i32 %"1", 0
  br i1 %"2", label %substring_bb2, label %substring_bb6

substring_bb2:                                    ; preds = %substring_bb1, %substring_bb4
  %ps2.0 = phi i8* [ %"12", %substring_bb4 ], [ %ps.0, %substring_bb1 ]
  %pt.0 = phi i8* [ %"11", %substring_bb4 ], [ %t, %substring_bb1 ]
  %"3" = load i8* %pt.0, align 1
  %"4" = sext i8 %"3" to i32
  %"5" = icmp ne i32 %"4", 0
  br i1 %"5", label %substring_bb3, label %substring_.critedge

substring_bb3:                                    ; preds = %substring_bb2
  %"6" = load i8* %pt.0, align 1
  %"7" = sext i8 %"6" to i32
  %"8" = load i8* %ps2.0, align 1
  %"9" = sext i8 %"8" to i32
  %"10" = icmp eq i32 %"7", %"9"
  br i1 %"10", label %substring_bb4, label %substring_.critedge

substring_bb4:                                    ; preds = %substring_bb3
  %"11" = getelementptr inbounds i8* %pt.0, i32 1
  %"12" = getelementptr inbounds i8* %ps2.0, i32 1
  br label %substring_bb2

substring_.critedge:                              ; preds = %substring_bb2, %substring_bb3
  %"13" = load i8* %pt.0, align 1
  %"14" = sext i8 %"13" to i32
  %"15" = icmp eq i32 %"14", 0
  br i1 %"15", label %substring_bb6, label %substring_bb5

substring_bb5:                                    ; preds = %substring_.critedge
  %"16" = getelementptr inbounds i8* %ps.0, i32 1
  br label %substring_bb1

substring_bb6:                                    ; preds = %substring_bb1, %substring_.critedge
  %.0 = phi i32 [ 1, %substring_.critedge ], [ 0, %substring_bb1 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb7:
  %"17" = call i32 @__VERIFIER_nondet_int()
  %"18" = call i32 @__VERIFIER_nondet_int()
  %"19" = icmp slt i32 %"17", 1
  %. = select i1 %"19", i32 1, i32 %"17"
  %"20" = icmp slt i32 %"18", 1
  %length2.0 = select i1 %"20", i32 1, i32 %"18"
  %"21" = sext i32 %. to i64
  %"22" = mul i64 %"21", 1
  %"23" = alloca i8, i64 %"22"
  %"24" = sext i32 %length2.0 to i64
  %"25" = mul i64 %"24", 1
  %"26" = alloca i8, i64 %"25"
  %"27" = sub nsw i32 %., 1
  %"28" = sext i32 %"27" to i64
  %"29" = getelementptr inbounds i8* %"23", i64 %"28"
  store i8 0, i8* %"29", align 1
  %"30" = sub nsw i32 %length2.0, 1
  %"31" = sext i32 %"30" to i64
  %"32" = getelementptr inbounds i8* %"26", i64 %"31"
  store i8 0, i8* %"32", align 1
  br label %main_bb8

main_bb8:                                         ; preds = %main_bb12, %main_bb7
  %ps.0.i = phi i8* [ %"23", %main_bb7 ], [ %"49", %main_bb12 ]
  %"33" = load i8* %ps.0.i, align 1
  %"34" = sext i8 %"33" to i32
  %"35" = icmp ne i32 %"34", 0
  br i1 %"35", label %main_bb9, label %main_substring.exit

main_bb9:                                         ; preds = %main_bb11, %main_bb8
  %ps2.0.i = phi i8* [ %"45", %main_bb11 ], [ %ps.0.i, %main_bb8 ]
  %pt.0.i = phi i8* [ %"44", %main_bb11 ], [ %"26", %main_bb8 ]
  %"36" = load i8* %pt.0.i, align 1
  %"37" = sext i8 %"36" to i32
  %"38" = icmp ne i32 %"37", 0
  br i1 %"38", label %main_bb10, label %main_.critedge.i

main_bb10:                                        ; preds = %main_bb9
  %"39" = load i8* %pt.0.i, align 1
  %"40" = sext i8 %"39" to i32
  %"41" = load i8* %ps2.0.i, align 1
  %"42" = sext i8 %"41" to i32
  %"43" = icmp eq i32 %"40", %"42"
  br i1 %"43", label %main_bb11, label %main_.critedge.i

main_bb11:                                        ; preds = %main_bb10
  %"44" = getelementptr inbounds i8* %pt.0.i, i32 1
  %"45" = getelementptr inbounds i8* %ps2.0.i, i32 1
  br label %main_bb9

main_.critedge.i:                                 ; preds = %main_bb10, %main_bb9
  %"46" = load i8* %pt.0.i, align 1
  %"47" = sext i8 %"46" to i32
  %"48" = icmp eq i32 %"47", 0
  br i1 %"48", label %main_substring.exit, label %main_bb12

main_bb12:                                        ; preds = %main_.critedge.i
  %"49" = getelementptr inbounds i8* %ps.0.i, i32 1
  br label %main_bb8

main_substring.exit:                              ; preds = %main_bb8, %main_.critedge.i
  %.0.i = phi i32 [ 1, %main_.critedge.i ], [ 0, %main_bb8 ]
  ret i32 %.0.i
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32 @__kittel_nondef.0()

declare i8* @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

