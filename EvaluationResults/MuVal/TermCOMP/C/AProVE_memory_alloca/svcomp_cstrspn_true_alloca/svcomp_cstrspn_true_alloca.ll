; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_cstrspn_true_alloca/svcomp_cstrspn_true_alloca.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @cstrspn(i8* %s1, i8* %s2) #0 {
cstrspn_bb0:
  br label %cstrspn_bb1

cstrspn_bb1:                                      ; preds = %cstrspn_bb7, %cstrspn_bb0
  %sc1.0 = phi i8* [ %s1, %cstrspn_bb0 ], [ %"20", %cstrspn_bb7 ]
  %"0" = load i8* %sc1.0, align 1
  %"1" = sext i8 %"0" to i32
  %"2" = icmp ne i32 %"1", 0
  br i1 %"2", label %cstrspn_bb2, label %cstrspn_bb8

cstrspn_bb2:                                      ; preds = %cstrspn_bb1
  %"3" = load i8* %sc1.0, align 1
  %"4" = sext i8 %"3" to i32
  %"5" = trunc i32 %"4" to i8
  %"6" = sext i8 %"5" to i32
  br label %cstrspn_bb3

cstrspn_bb3:                                      ; preds = %cstrspn_bb5, %cstrspn_bb2
  %s.0 = phi i8* [ %s2, %cstrspn_bb2 ], [ %"13", %cstrspn_bb5 ]
  %"7" = load i8* %s.0, align 1
  %"8" = sext i8 %"7" to i32
  %"9" = icmp ne i32 %"8", 0
  br i1 %"9", label %cstrspn_bb4, label %cstrspn_.critedge

cstrspn_bb4:                                      ; preds = %cstrspn_bb3
  %"10" = load i8* %s.0, align 1
  %"11" = sext i8 %"10" to i32
  %"12" = icmp ne i32 %"11", %"6"
  br i1 %"12", label %cstrspn_bb5, label %cstrspn_.critedge

cstrspn_bb5:                                      ; preds = %cstrspn_bb4
  %"13" = getelementptr inbounds i8* %s.0, i32 1
  br label %cstrspn_bb3

cstrspn_.critedge:                                ; preds = %cstrspn_bb3, %cstrspn_bb4
  %"14" = load i8* %s.0, align 1
  %"15" = sext i8 %"14" to i32
  %"16" = icmp ne i32 %"15", %"4"
  br i1 %"16", label %cstrspn_bb6, label %cstrspn_bb7

cstrspn_bb6:                                      ; preds = %cstrspn_.critedge
  %"17" = ptrtoint i8* %sc1.0 to i64
  %"18" = ptrtoint i8* %s1 to i64
  %"19" = sub i64 %"17", %"18"
  br label %cstrspn_bb9

cstrspn_bb7:                                      ; preds = %cstrspn_.critedge
  %"20" = getelementptr inbounds i8* %sc1.0, i32 1
  br label %cstrspn_bb1

cstrspn_bb8:                                      ; preds = %cstrspn_bb1
  %"21" = ptrtoint i8* %sc1.0 to i64
  %"22" = ptrtoint i8* %s1 to i64
  %"23" = sub i64 %"21", %"22"
  br label %cstrspn_bb9

cstrspn_bb9:                                      ; preds = %cstrspn_bb8, %cstrspn_bb6
  %.sink = phi i64 [ %"19", %cstrspn_bb6 ], [ %"23", %cstrspn_bb8 ]
  %"24" = trunc i64 %.sink to i32
  ret i32 %"24"
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb10:
  %"25" = call i32 @__VERIFIER_nondet_int()
  %"26" = call i32 @__VERIFIER_nondet_int()
  %"27" = icmp slt i32 %"25", 1
  %. = select i1 %"27", i32 1, i32 %"25"
  %"28" = icmp slt i32 %"26", 1
  %length2.0 = select i1 %"28", i32 1, i32 %"26"
  %"29" = sext i32 %. to i64
  %"30" = mul i64 %"29", 1
  %"31" = alloca i8, i64 %"30"
  %"32" = sext i32 %length2.0 to i64
  %"33" = mul i64 %"32", 1
  %"34" = alloca i8, i64 %"33"
  %"35" = sub nsw i32 %., 1
  %"36" = sext i32 %"35" to i64
  %"37" = getelementptr inbounds i8* %"31", i64 %"36"
  store i8 0, i8* %"37", align 1
  %"38" = sub nsw i32 %length2.0, 1
  %"39" = sext i32 %"38" to i64
  %"40" = getelementptr inbounds i8* %"34", i64 %"39"
  store i8 0, i8* %"40", align 1
  br label %main_bb11

main_bb11:                                        ; preds = %main_bb17, %main_bb10
  %sc1.0.i = phi i8* [ %"31", %main_bb10 ], [ %"61", %main_bb17 ]
  %"41" = load i8* %sc1.0.i, align 1
  %"42" = sext i8 %"41" to i32
  %"43" = icmp ne i32 %"42", 0
  br i1 %"43", label %main_bb12, label %main_bb18

main_bb12:                                        ; preds = %main_bb11
  %"44" = load i8* %sc1.0.i, align 1
  %"45" = sext i8 %"44" to i32
  %"46" = trunc i32 %"45" to i8
  %"47" = sext i8 %"46" to i32
  br label %main_bb13

main_bb13:                                        ; preds = %main_bb15, %main_bb12
  %s.0.i = phi i8* [ %"34", %main_bb12 ], [ %"54", %main_bb15 ]
  %"48" = load i8* %s.0.i, align 1
  %"49" = sext i8 %"48" to i32
  %"50" = icmp ne i32 %"49", 0
  br i1 %"50", label %main_bb14, label %main_.critedge.i

main_bb14:                                        ; preds = %main_bb13
  %"51" = load i8* %s.0.i, align 1
  %"52" = sext i8 %"51" to i32
  %"53" = icmp ne i32 %"52", %"47"
  br i1 %"53", label %main_bb15, label %main_.critedge.i

main_bb15:                                        ; preds = %main_bb14
  %"54" = getelementptr inbounds i8* %s.0.i, i32 1
  br label %main_bb13

main_.critedge.i:                                 ; preds = %main_bb14, %main_bb13
  %"55" = load i8* %s.0.i, align 1
  %"56" = sext i8 %"55" to i32
  %"57" = icmp ne i32 %"56", %"45"
  br i1 %"57", label %main_bb16, label %main_bb17

main_bb16:                                        ; preds = %main_.critedge.i
  %"58" = ptrtoint i8* %sc1.0.i to i64
  %"59" = ptrtoint i8* %"31" to i64
  %"60" = sub i64 %"58", %"59"
  br label %main_cstrspn.exit

main_bb17:                                        ; preds = %main_.critedge.i
  %"61" = getelementptr inbounds i8* %sc1.0.i, i32 1
  br label %main_bb11

main_bb18:                                        ; preds = %main_bb11
  %"62" = ptrtoint i8* %sc1.0.i to i64
  %"63" = ptrtoint i8* %"31" to i64
  %"64" = sub i64 %"62", %"63"
  br label %main_cstrspn.exit

main_cstrspn.exit:                                ; preds = %main_bb16, %main_bb18
  %.sink.i = phi i64 [ %"60", %main_bb16 ], [ %"64", %main_bb18 ]
  %"65" = trunc i64 %.sink.i to i32
  ret i32 %"65"
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32 @__kittel_nondef.0()

declare i8* @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

