; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_unsafe/svcomp_cstrpbrk_unsafe/svcomp_cstrpbrk_unsafe.bc'
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
define i8* @cstrpbrk(i8* %s1, i8* %s2) #0 {
cstrpbrk_bb1:
  br label %cstrpbrk_bb2

cstrpbrk_bb2:                                     ; preds = %cstrpbrk_bb7, %cstrpbrk_bb1
  %sc1.0 = phi i8* [ %s1, %cstrpbrk_bb1 ], [ %"25", %cstrpbrk_bb7 ]
  %"8" = load i8* %sc1.0, align 1
  %"9" = sext i8 %"8" to i32
  %"10" = icmp ne i32 %"9", 0
  br i1 %"10", label %cstrpbrk_bb3, label %cstrpbrk_bb8

cstrpbrk_bb3:                                     ; preds = %cstrpbrk_bb2
  %"11" = load i8* %sc1.0, align 1
  %"12" = sext i8 %"11" to i32
  %"13" = trunc i32 %"12" to i8
  %"14" = sext i8 %"13" to i32
  br label %cstrpbrk_bb4

cstrpbrk_bb4:                                     ; preds = %cstrpbrk_bb6, %cstrpbrk_bb3
  %s.0 = phi i8* [ %s2, %cstrpbrk_bb3 ], [ %"21", %cstrpbrk_bb6 ]
  %"15" = load i8* %s.0, align 1
  %"16" = sext i8 %"15" to i32
  %"17" = icmp ne i32 %"16", 0
  br i1 %"17", label %cstrpbrk_bb5, label %cstrpbrk_.critedge

cstrpbrk_bb5:                                     ; preds = %cstrpbrk_bb4
  %"18" = load i8* %s.0, align 1
  %"19" = sext i8 %"18" to i32
  %"20" = icmp ne i32 %"19", %"14"
  br i1 %"20", label %cstrpbrk_bb6, label %cstrpbrk_.critedge

cstrpbrk_bb6:                                     ; preds = %cstrpbrk_bb5
  %"21" = getelementptr inbounds i8* %s.0, i32 1
  br label %cstrpbrk_bb4

cstrpbrk_.critedge:                               ; preds = %cstrpbrk_bb4, %cstrpbrk_bb5
  %"22" = load i8* %s.0, align 1
  %"23" = sext i8 %"22" to i32
  %"24" = icmp ne i32 %"23", %"12"
  br i1 %"24", label %cstrpbrk_bb8, label %cstrpbrk_bb7

cstrpbrk_bb7:                                     ; preds = %cstrpbrk_.critedge
  %"25" = getelementptr inbounds i8* %sc1.0, i32 1
  br label %cstrpbrk_bb2

cstrpbrk_bb8:                                     ; preds = %cstrpbrk_bb2, %cstrpbrk_.critedge
  %.0 = phi i8* [ %sc1.0, %cstrpbrk_.critedge ], [ null, %cstrpbrk_bb2 ]
  ret i8* %.0
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb9:
  %"26" = call i32 @__VERIFIER_nondet_int() #3
  %"27" = icmp slt i32 %"26", 1
  %..i = select i1 %"27", i32 1, i32 %"26"
  %"28" = sext i32 %..i to i64
  %"29" = call noalias i8* @malloc(i64 %"28") #3
  %"30" = sub nsw i32 %..i, 1
  %"31" = sext i32 %"30" to i64
  %"32" = getelementptr inbounds i8* %"29", i64 %"31"
  store i8 0, i8* %"32", align 1
  %"33" = call i32 @__VERIFIER_nondet_int() #3
  %"34" = icmp slt i32 %"33", 1
  %..i1 = select i1 %"34", i32 1, i32 %"33"
  %"35" = sext i32 %..i1 to i64
  %"36" = call noalias i8* @malloc(i64 %"35") #3
  %"37" = sub nsw i32 %..i1, 1
  %"38" = sext i32 %"37" to i64
  %"39" = getelementptr inbounds i8* %"36", i64 %"38"
  store i8 0, i8* %"39", align 1
  br label %main_bb10

main_bb10:                                        ; preds = %main_bb14, %main_bb9
  %sc1.0.i = phi i8* [ %"29", %main_bb9 ], [ %"56", %main_bb14 ]
  %"40" = load i8* %sc1.0.i, align 1
  %"41" = sext i8 %"40" to i32
  %"42" = trunc i32 %"41" to i8
  %"43" = sext i8 %"42" to i32
  br label %main_bb11

main_bb11:                                        ; preds = %main_bb13, %main_bb10
  %s.0.i = phi i8* [ %"36", %main_bb10 ], [ %"50", %main_bb13 ]
  %"44" = load i8* %s.0.i, align 1
  %"45" = sext i8 %"44" to i32
  %"46" = icmp ne i32 %"45", 0
  br i1 %"46", label %main_bb12, label %main_.critedge.i

main_bb12:                                        ; preds = %main_bb11
  %"47" = load i8* %s.0.i, align 1
  %"48" = sext i8 %"47" to i32
  %"49" = icmp ne i32 %"48", %"43"
  br i1 %"49", label %main_bb13, label %main_.critedge.i

main_bb13:                                        ; preds = %main_bb12
  %"50" = getelementptr inbounds i8* %s.0.i, i32 1
  br label %main_bb11

main_.critedge.i:                                 ; preds = %main_bb12, %main_bb11
  %"51" = load i8* %s.0.i, align 1
  %"52" = sext i8 %"51" to i32
  %"53" = icmp ne i32 %"52", %"41"
  br i1 %"53", label %main_cstrpbrk.exit, label %main_bb14

main_cstrpbrk.exit:                               ; preds = %main_.critedge.i
  %"54" = load i8* %sc1.0.i, align 1
  %"55" = sext i8 %"54" to i32
  ret i32 %"55"

main_bb14:                                        ; preds = %main_.critedge.i
  %"56" = getelementptr inbounds i8* %sc1.0.i, i32 1
  br label %main_bb10
}

declare i32 @__kittel_nondef.0()

declare i8* @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

