; ModuleID = 'Benchmarks/TermCOMP/C/SV-COMP_Mixed_Categories/960521-1_1_true-valid-memsafety/960521-1_1_true-valid-memsafety.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"'n" = common global i32 0, align 4
@a = common global i32* null, align 8
@b = common global i32* null, align 8

; Function Attrs: nounwind uwtable
define void @foo() #0 {
foo_bb0:
  br label %foo_bb1

foo_bb1:                                          ; preds = %foo_bb2, %foo_bb0
  %i.0 = phi i32 [ 0, %foo_bb0 ], [ %"6", %foo_bb2 ]
  %"0" = load i32* @"'n", align 4
  %"1" = icmp slt i32 %i.0, %"0"
  br i1 %"1", label %foo_bb2, label %foo_bb3

foo_bb2:                                          ; preds = %foo_bb1
  %"2" = load i32* @"'n", align 4
  %"3" = sext i32 %i.0 to i64
  %"4" = load i32** @a, align 8
  %"5" = getelementptr inbounds i32* %"4", i64 %"3"
  store i32 %"2", i32* %"5", align 4
  %"6" = add nsw i32 %i.0, 1
  br label %foo_bb1

foo_bb3:                                          ; preds = %foo_bb1, %foo_bb4
  %i.1 = phi i32 [ %"14", %foo_bb4 ], [ 0, %foo_bb1 ]
  %"7" = load i32* @"'n", align 4
  %"8" = sub nsw i32 %"7", 1
  %"9" = icmp slt i32 %i.1, %"8"
  br i1 %"9", label %foo_bb4, label %foo_bb5

foo_bb4:                                          ; preds = %foo_bb3
  %"10" = load i32* @"'n", align 4
  %"11" = sext i32 %i.1 to i64
  %"12" = load i32** @b, align 8
  %"13" = getelementptr inbounds i32* %"12", i64 %"11"
  store i32 %"10", i32* %"13", align 4
  %"14" = add nsw i32 %i.1, 1
  br label %foo_bb3

foo_bb5:                                          ; preds = %foo_bb3
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb6:
  store i32 1, i32* @"'n", align 4
  br label %main_bb7

main_bb7:                                         ; preds = %main_bb10, %main_bb6
  %"15" = call i32 @__VERIFIER_nondet_int()
  %"16" = icmp ne i32 %"15", 0
  br i1 %"16", label %main_bb8, label %main_bb9

main_bb8:                                         ; preds = %main_bb7
  %"17" = load i32* @"'n", align 4
  %"18" = icmp slt i32 %"17", 30
  br label %main_bb9

main_bb9:                                         ; preds = %main_bb8, %main_bb7
  %"19" = phi i1 [ false, %main_bb7 ], [ %"18", %main_bb8 ]
  %"20" = load i32* @"'n", align 4
  br i1 %"19", label %main_bb10, label %main_bb11

main_bb10:                                        ; preds = %main_bb9
  %"21" = add nsw i32 %"20", 1
  store i32 %"21", i32* @"'n", align 4
  br label %main_bb7

main_bb11:                                        ; preds = %main_bb9
  %"22" = sext i32 %"20" to i64
  %"23" = mul i64 %"22", 4
  %"24" = call noalias i8* @malloc(i64 %"23") #3
  %"25" = bitcast i8* %"24" to i32*
  store i32* %"25", i32** @a, align 8
  %"26" = load i32* @"'n", align 4
  %"27" = sext i32 %"26" to i64
  %"28" = mul i64 %"27", 4
  %"29" = call noalias i8* @malloc(i64 %"28") #3
  %"30" = bitcast i8* %"29" to i32*
  store i32* %"30", i32** @b, align 8
  %"31" = load i32* @"'n", align 4
  %"32" = load i32** @b, align 8
  %"33" = getelementptr inbounds i32* %"32", i32 1
  store i32* %"33", i32** @b, align 8
  store i32 %"31", i32* %"32", align 4
  br label %main_bb12

main_bb12:                                        ; preds = %main_bb13, %main_bb11
  %i.0.i = phi i32 [ 0, %main_bb11 ], [ %"40", %main_bb13 ]
  %"34" = load i32* @"'n", align 4
  %"35" = icmp slt i32 %i.0.i, %"34"
  br i1 %"35", label %main_bb13, label %main_bb14

main_bb13:                                        ; preds = %main_bb12
  %"36" = load i32* @"'n", align 4
  %"37" = sext i32 %i.0.i to i64
  %"38" = load i32** @a, align 8
  %"39" = getelementptr inbounds i32* %"38", i64 %"37"
  store i32 %"36", i32* %"39", align 4
  %"40" = add nsw i32 %i.0.i, 1
  br label %main_bb12

main_bb14:                                        ; preds = %main_bb15, %main_bb12
  %i.1.i = phi i32 [ %"48", %main_bb15 ], [ 0, %main_bb12 ]
  %"41" = load i32* @"'n", align 4
  %"42" = sub nsw i32 %"41", 1
  %"43" = icmp slt i32 %i.1.i, %"42"
  br i1 %"43", label %main_bb15, label %main_foo.exit

main_bb15:                                        ; preds = %main_bb14
  %"44" = load i32* @"'n", align 4
  %"45" = sext i32 %i.1.i to i64
  %"46" = load i32** @b, align 8
  %"47" = getelementptr inbounds i32* %"46", i64 %"45"
  store i32 %"44", i32* %"47", align 4
  %"48" = add nsw i32 %i.1.i, 1
  br label %main_bb14

main_foo.exit:                                    ; preds = %main_bb14
  %"49" = load i32** @b, align 8
  %"50" = getelementptr inbounds i32* %"49", i64 -1
  %"51" = load i32* %"50", align 4
  %"52" = load i32* @"'n", align 4
  %"53" = sub nsw i32 %"52", 2
  %"54" = sext i32 %"53" to i64
  %"55" = load i32** @b, align 8
  %"56" = getelementptr inbounds i32* %"55", i64 %"54"
  %"57" = load i32* %"56", align 4
  %"58" = sub nsw i32 %"51", %"57"
  %"59" = icmp ne i32 %"58", 0
  %"60" = load i32** @a, align 8
  %"61" = bitcast i32* %"60" to i8*
  call void @free(i8* %"61") #3
  %"62" = load i32** @b, align 8
  br i1 %"59", label %main_bb16, label %main_bb17

main_bb16:                                        ; preds = %main_foo.exit
  %"63" = bitcast i32* %"62" to i8*
  call void @free(i8* %"63") #3
  br label %main_bb18

main_bb17:                                        ; preds = %main_foo.exit
  %"64" = getelementptr inbounds i32* %"62", i64 -1
  %"65" = bitcast i32* %"64" to i8*
  call void @free(i8* %"65") #3
  br label %main_bb18

main_bb18:                                        ; preds = %main_bb17, %main_bb16
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int() #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare void @free(i8*) #2

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

