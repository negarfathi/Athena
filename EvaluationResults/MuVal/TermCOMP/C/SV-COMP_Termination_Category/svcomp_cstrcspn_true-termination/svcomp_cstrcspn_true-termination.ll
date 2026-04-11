; ModuleID = 'Benchmarks/TermCOMP/C/SV-COMP_Termination_Category/svcomp_cstrcspn_true-termination/svcomp_cstrcspn_true-termination.bc'
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
define i32 @cstrcspn(i8* %s1, i8* %s2) #0 {
cstrcspn_bb1:
  br label %cstrcspn_bb2

cstrcspn_bb2:                                     ; preds = %cstrcspn_bb8, %cstrcspn_bb1
  %sc1.0 = phi i8* [ %s1, %cstrcspn_bb1 ], [ %"28", %cstrcspn_bb8 ]
  %"8" = load i8* %sc1.0, align 1
  %"9" = sext i8 %"8" to i32
  %"10" = icmp ne i32 %"9", 0
  br i1 %"10", label %cstrcspn_bb3, label %cstrcspn_bb9

cstrcspn_bb3:                                     ; preds = %cstrcspn_bb2
  %"11" = load i8* %sc1.0, align 1
  %"12" = sext i8 %"11" to i32
  %"13" = trunc i32 %"12" to i8
  %"14" = sext i8 %"13" to i32
  br label %cstrcspn_bb4

cstrcspn_bb4:                                     ; preds = %cstrcspn_bb6, %cstrcspn_bb3
  %s.0 = phi i8* [ %s2, %cstrcspn_bb3 ], [ %"21", %cstrcspn_bb6 ]
  %"15" = load i8* %s.0, align 1
  %"16" = sext i8 %"15" to i32
  %"17" = icmp ne i32 %"16", 0
  br i1 %"17", label %cstrcspn_bb5, label %cstrcspn_.critedge

cstrcspn_bb5:                                     ; preds = %cstrcspn_bb4
  %"18" = load i8* %s.0, align 1
  %"19" = sext i8 %"18" to i32
  %"20" = icmp ne i32 %"19", %"14"
  br i1 %"20", label %cstrcspn_bb6, label %cstrcspn_.critedge

cstrcspn_bb6:                                     ; preds = %cstrcspn_bb5
  %"21" = getelementptr inbounds i8* %s.0, i32 1
  br label %cstrcspn_bb4

cstrcspn_.critedge:                               ; preds = %cstrcspn_bb4, %cstrcspn_bb5
  %"22" = load i8* %s.0, align 1
  %"23" = sext i8 %"22" to i32
  %"24" = icmp eq i32 %"23", %"12"
  br i1 %"24", label %cstrcspn_bb7, label %cstrcspn_bb8

cstrcspn_bb7:                                     ; preds = %cstrcspn_.critedge
  %"25" = ptrtoint i8* %sc1.0 to i64
  %"26" = ptrtoint i8* %s1 to i64
  %"27" = sub i64 %"25", %"26"
  br label %cstrcspn_bb10

cstrcspn_bb8:                                     ; preds = %cstrcspn_.critedge
  %"28" = getelementptr inbounds i8* %sc1.0, i32 1
  br label %cstrcspn_bb2

cstrcspn_bb9:                                     ; preds = %cstrcspn_bb2
  %"29" = ptrtoint i8* %sc1.0 to i64
  %"30" = ptrtoint i8* %s1 to i64
  %"31" = sub i64 %"29", %"30"
  br label %cstrcspn_bb10

cstrcspn_bb10:                                    ; preds = %cstrcspn_bb9, %cstrcspn_bb7
  %.sink = phi i64 [ %"27", %cstrcspn_bb7 ], [ %"31", %cstrcspn_bb9 ]
  %"32" = trunc i64 %.sink to i32
  ret i32 %"32"
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb11:
  %"33" = call i32 @__VERIFIER_nondet_int() #3
  %"34" = icmp slt i32 %"33", 1
  %..i = select i1 %"34", i32 1, i32 %"33"
  %"35" = sext i32 %..i to i64
  %"36" = call noalias i8* @malloc(i64 %"35") #3
  %"37" = sub nsw i32 %..i, 1
  %"38" = sext i32 %"37" to i64
  %"39" = getelementptr inbounds i8* %"36", i64 %"38"
  store i8 0, i8* %"39", align 1
  %"40" = call i32 @__VERIFIER_nondet_int() #3
  %"41" = icmp slt i32 %"40", 1
  %..i1 = select i1 %"41", i32 1, i32 %"40"
  %"42" = sext i32 %..i1 to i64
  %"43" = call noalias i8* @malloc(i64 %"42") #3
  %"44" = sub nsw i32 %..i1, 1
  %"45" = sext i32 %"44" to i64
  %"46" = getelementptr inbounds i8* %"43", i64 %"45"
  store i8 0, i8* %"46", align 1
  br label %main_bb12

main_bb12:                                        ; preds = %main_bb18, %main_bb11
  %sc1.0.i = phi i8* [ %"36", %main_bb11 ], [ %"67", %main_bb18 ]
  %"47" = load i8* %sc1.0.i, align 1
  %"48" = sext i8 %"47" to i32
  %"49" = icmp ne i32 %"48", 0
  br i1 %"49", label %main_bb13, label %main_bb19

main_bb13:                                        ; preds = %main_bb12
  %"50" = load i8* %sc1.0.i, align 1
  %"51" = sext i8 %"50" to i32
  %"52" = trunc i32 %"51" to i8
  %"53" = sext i8 %"52" to i32
  br label %main_bb14

main_bb14:                                        ; preds = %main_bb16, %main_bb13
  %s.0.i = phi i8* [ %"43", %main_bb13 ], [ %"60", %main_bb16 ]
  %"54" = load i8* %s.0.i, align 1
  %"55" = sext i8 %"54" to i32
  %"56" = icmp ne i32 %"55", 0
  br i1 %"56", label %main_bb15, label %main_.critedge.i

main_bb15:                                        ; preds = %main_bb14
  %"57" = load i8* %s.0.i, align 1
  %"58" = sext i8 %"57" to i32
  %"59" = icmp ne i32 %"58", %"53"
  br i1 %"59", label %main_bb16, label %main_.critedge.i

main_bb16:                                        ; preds = %main_bb15
  %"60" = getelementptr inbounds i8* %s.0.i, i32 1
  br label %main_bb14

main_.critedge.i:                                 ; preds = %main_bb15, %main_bb14
  %"61" = load i8* %s.0.i, align 1
  %"62" = sext i8 %"61" to i32
  %"63" = icmp eq i32 %"62", %"51"
  br i1 %"63", label %main_bb17, label %main_bb18

main_bb17:                                        ; preds = %main_.critedge.i
  %"64" = ptrtoint i8* %sc1.0.i to i64
  %"65" = ptrtoint i8* %"36" to i64
  %"66" = sub i64 %"64", %"65"
  br label %main_cstrcspn.exit

main_bb18:                                        ; preds = %main_.critedge.i
  %"67" = getelementptr inbounds i8* %sc1.0.i, i32 1
  br label %main_bb12

main_bb19:                                        ; preds = %main_bb12
  %"68" = ptrtoint i8* %sc1.0.i to i64
  %"69" = ptrtoint i8* %"36" to i64
  %"70" = sub i64 %"68", %"69"
  br label %main_cstrcspn.exit

main_cstrcspn.exit:                               ; preds = %main_bb17, %main_bb19
  %.sink.i = phi i64 [ %"66", %main_bb17 ], [ %"70", %main_bb19 ]
  %"71" = trunc i64 %.sink.i to i32
  ret i32 %"71"
}

declare i32 @__kittel_nondef.0()

declare i8* @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

