; ModuleID = 'Benchmarks/FSE/loop/Incorrect_Initialization_1_T/Incorrect_Initialization_1_T.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1

; Function Attrs: nounwind uwtable
define i32 @strcspn(i8* %strSrc, i8* %str) #0 {
strcspn_bb0:
  br label %strcspn_bb1

strcspn_bb1:                                      ; preds = %strcspn_bb7, %strcspn_bb0
  %t.0 = phi i8* [ %strSrc, %strcspn_bb0 ], [ %"16", %strcspn_bb7 ]
  %"0" = load i8* %t.0, align 1
  %"1" = sext i8 %"0" to i32
  %"2" = icmp ne i32 %"1", 0
  br i1 %"2", label %strcspn_bb2, label %strcspn_bb8

strcspn_bb2:                                      ; preds = %strcspn_bb1
  %"3" = load i8* %t.0, align 1
  %"4" = sext i8 %"3" to i32
  br label %strcspn_bb3

strcspn_bb3:                                      ; preds = %strcspn_bb6, %strcspn_bb2
  %s.0 = phi i8* [ %str, %strcspn_bb2 ], [ %"15", %strcspn_bb6 ]
  %"5" = load i8* %s.0, align 1
  %"6" = sext i8 %"5" to i32
  %"7" = icmp ne i32 %"6", 0
  br i1 %"7", label %strcspn_bb4, label %strcspn_bb7

strcspn_bb4:                                      ; preds = %strcspn_bb3
  %"8" = load i8* %s.0, align 1
  %"9" = sext i8 %"8" to i32
  %"10" = icmp eq i32 %"4", %"9"
  br i1 %"10", label %strcspn_bb5, label %strcspn_bb6

strcspn_bb5:                                      ; preds = %strcspn_bb4
  %"11" = ptrtoint i8* %t.0 to i64
  %"12" = ptrtoint i8* %strSrc to i64
  %"13" = sub i64 %"11", %"12"
  %"14" = trunc i64 %"13" to i32
  br label %strcspn_bb8

strcspn_bb6:                                      ; preds = %strcspn_bb4
  %"15" = getelementptr inbounds i8* %s.0, i32 1
  br label %strcspn_bb3

strcspn_bb7:                                      ; preds = %strcspn_bb3
  %"16" = getelementptr inbounds i8* %t.0, i32 1
  br label %strcspn_bb1

strcspn_bb8:                                      ; preds = %strcspn_bb1, %strcspn_bb5
  %.0 = phi i32 [ %"14", %strcspn_bb5 ], [ 0, %strcspn_bb1 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb9:
  %buf = alloca [100 x i8], align 16
  br label %main_bb10

main_bb10:                                        ; preds = %main_bb11, %main_bb9
  %i.0 = phi i32 [ 0, %main_bb9 ], [ %"21", %main_bb11 ]
  %"17" = icmp slt i32 %i.0, 99
  br i1 %"17", label %main_bb11, label %main_bb12

main_bb11:                                        ; preds = %main_bb10
  %"18" = call signext i8 @__VERIFIER_nondet_char()
  %"19" = sext i32 %i.0 to i64
  %"20" = getelementptr inbounds [100 x i8]* %buf, i32 0, i64 %"19"
  store i8 %"18", i8* %"20", align 1
  %"21" = add nsw i32 %i.0, 1
  br label %main_bb10

main_bb12:                                        ; preds = %main_bb10
  %"22" = getelementptr inbounds [100 x i8]* %buf, i32 0, i64 99
  store i8 0, i8* %"22", align 1
  %"23" = getelementptr inbounds [100 x i8]* %buf, i32 0, i32 0
  br label %main_bb13

main_bb13:                                        ; preds = %main_strcspn.exit, %main_bb12
  %p.0 = phi i8* [ %"23", %main_bb12 ], [ %., %main_strcspn.exit ]
  %"24" = load i8* %p.0, align 1
  %"25" = icmp ne i8 %"24", 0
  br i1 %"25", label %main_bb14, label %main_bb21

main_bb14:                                        ; preds = %main_bb13, %main_bb20
  %t.0.i = phi i8* [ %"43", %main_bb20 ], [ %p.0, %main_bb13 ]
  %"26" = load i8* %t.0.i, align 1
  %"27" = sext i8 %"26" to i32
  %"28" = icmp ne i32 %"27", 0
  br i1 %"28", label %main_bb15, label %main_strcspn.exit

main_bb15:                                        ; preds = %main_bb14
  %"29" = load i8* %t.0.i, align 1
  %"30" = sext i8 %"29" to i32
  %"31" = getelementptr [2 x i8]* @.str, i32 0, i32 0
  br label %main_bb16

main_bb16:                                        ; preds = %main_bb19, %main_bb15
  %s.0.i = phi i8* [ %"31", %main_bb15 ], [ %"42", %main_bb19 ]
  %"32" = load i8* %s.0.i, align 1
  %"33" = sext i8 %"32" to i32
  %"34" = icmp ne i32 %"33", 0
  br i1 %"34", label %main_bb17, label %main_bb20

main_bb17:                                        ; preds = %main_bb16
  %"35" = load i8* %s.0.i, align 1
  %"36" = sext i8 %"35" to i32
  %"37" = icmp eq i32 %"30", %"36"
  br i1 %"37", label %main_bb18, label %main_bb19

main_bb18:                                        ; preds = %main_bb17
  %"38" = ptrtoint i8* %t.0.i to i64
  %"39" = ptrtoint i8* %p.0 to i64
  %"40" = sub i64 %"38", %"39"
  %"41" = trunc i64 %"40" to i32
  br label %main_strcspn.exit

main_bb19:                                        ; preds = %main_bb17
  %"42" = getelementptr inbounds i8* %s.0.i, i32 1
  br label %main_bb16

main_bb20:                                        ; preds = %main_bb16
  %"43" = getelementptr inbounds i8* %t.0.i, i32 1
  br label %main_bb14

main_strcspn.exit:                                ; preds = %main_bb14, %main_bb18
  %.0.i = phi i32 [ %"41", %main_bb18 ], [ 0, %main_bb14 ]
  %"44" = sext i32 %.0.i to i64
  %"45" = getelementptr inbounds i8* %p.0, i64 %"44"
  %"46" = load i8* %"45", align 1
  %"47" = icmp ne i8 %"46", 0
  %"48" = getelementptr inbounds i8* %"45", i32 1
  %. = select i1 %"47", i8* %"48", i8* %"45"
  br label %main_bb13

main_bb21:                                        ; preds = %main_bb13
  ret i32 0
}

declare signext i8 @__VERIFIER_nondet_char() #1

declare i32 @__kittel_nondef.0()

declare i8* @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

