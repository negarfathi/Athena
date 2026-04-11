; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_array02_alloca/svcomp_array02_alloca.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define void @test_fun(i32* %a, i32 %N) #0 {
test_fun_bb0:
  br label %test_fun_bb1

test_fun_bb1:                                     ; preds = %test_fun_bb8, %test_fun_bb0
  %neg.0 = phi i32 [ 0, %test_fun_bb0 ], [ %neg.1, %test_fun_bb8 ]
  %pos.0 = phi i32 [ 0, %test_fun_bb0 ], [ %pos.1, %test_fun_bb8 ]
  %i.0 = phi i32 [ 0, %test_fun_bb0 ], [ %"19", %test_fun_bb8 ]
  %"0" = icmp slt i32 %i.0, %N
  br i1 %"0", label %test_fun_bb2, label %test_fun_bb9

test_fun_bb2:                                     ; preds = %test_fun_bb1
  %"1" = sext i32 %i.0 to i64
  %"2" = getelementptr inbounds i32* %a, i64 %"1"
  %"3" = sext i32 %i.0 to i64
  %"4" = getelementptr inbounds i32* %a, i64 %"3"
  br label %test_fun_bb3

test_fun_bb3:                                     ; preds = %test_fun_bb4, %test_fun_bb2
  %neg.1 = phi i32 [ %neg.0, %test_fun_bb2 ], [ %"9", %test_fun_bb4 ]
  %"5" = load i32* %"2", align 4
  %"6" = icmp slt i32 %"5", 0
  br i1 %"6", label %test_fun_bb4, label %test_fun_bb5

test_fun_bb4:                                     ; preds = %test_fun_bb3
  %"7" = load i32* %"4", align 4
  %"8" = add nsw i32 %"7", 1
  store i32 %"8", i32* %"4", align 4
  %"9" = add nsw i32 %neg.1, 1
  br label %test_fun_bb3

test_fun_bb5:                                     ; preds = %test_fun_bb3
  %"10" = sext i32 %i.0 to i64
  %"11" = getelementptr inbounds i32* %a, i64 %"10"
  %"12" = sext i32 %i.0 to i64
  %"13" = getelementptr inbounds i32* %a, i64 %"12"
  br label %test_fun_bb6

test_fun_bb6:                                     ; preds = %test_fun_bb7, %test_fun_bb5
  %pos.1 = phi i32 [ %pos.0, %test_fun_bb5 ], [ %"18", %test_fun_bb7 ]
  %"14" = load i32* %"11", align 4
  %"15" = icmp sgt i32 %"14", 0
  br i1 %"15", label %test_fun_bb7, label %test_fun_bb8

test_fun_bb7:                                     ; preds = %test_fun_bb6
  %"16" = load i32* %"13", align 4
  %"17" = add nsw i32 %"16", -1
  store i32 %"17", i32* %"13", align 4
  %"18" = add nsw i32 %pos.1, 1
  br label %test_fun_bb6

test_fun_bb8:                                     ; preds = %test_fun_bb6
  %"19" = add nsw i32 %i.0, 1
  br label %test_fun_bb1

test_fun_bb9:                                     ; preds = %test_fun_bb1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb10:
  %"20" = call i32 @__VERIFIER_nondet_int()
  %"21" = icmp slt i32 %"20", 1
  %. = select i1 %"21", i32 1, i32 %"20"
  %"22" = sext i32 %. to i64
  %"23" = mul i64 %"22", 4
  %"24" = alloca i8, i64 %"23"
  %"25" = bitcast i8* %"24" to i32*
  br label %main_bb11

main_bb11:                                        ; preds = %main_bb18, %main_bb10
  %neg.0.i = phi i32 [ 0, %main_bb10 ], [ %neg.1.i, %main_bb18 ]
  %pos.0.i = phi i32 [ 0, %main_bb10 ], [ %pos.1.i, %main_bb18 ]
  %i.0.i = phi i32 [ 0, %main_bb10 ], [ %"45", %main_bb18 ]
  %"26" = icmp slt i32 %i.0.i, %.
  br i1 %"26", label %main_bb12, label %main_test_fun.exit

main_bb12:                                        ; preds = %main_bb11
  %"27" = sext i32 %i.0.i to i64
  %"28" = getelementptr inbounds i32* %"25", i64 %"27"
  %"29" = sext i32 %i.0.i to i64
  %"30" = getelementptr inbounds i32* %"25", i64 %"29"
  br label %main_bb13

main_bb13:                                        ; preds = %main_bb14, %main_bb12
  %neg.1.i = phi i32 [ %neg.0.i, %main_bb12 ], [ %"35", %main_bb14 ]
  %"31" = load i32* %"28", align 4
  %"32" = icmp slt i32 %"31", 0
  br i1 %"32", label %main_bb14, label %main_bb15

main_bb14:                                        ; preds = %main_bb13
  %"33" = load i32* %"30", align 4
  %"34" = add nsw i32 %"33", 1
  store i32 %"34", i32* %"30", align 4
  %"35" = add nsw i32 %neg.1.i, 1
  br label %main_bb13

main_bb15:                                        ; preds = %main_bb13
  %"36" = sext i32 %i.0.i to i64
  %"37" = getelementptr inbounds i32* %"25", i64 %"36"
  %"38" = sext i32 %i.0.i to i64
  %"39" = getelementptr inbounds i32* %"25", i64 %"38"
  br label %main_bb16

main_bb16:                                        ; preds = %main_bb17, %main_bb15
  %pos.1.i = phi i32 [ %pos.0.i, %main_bb15 ], [ %"44", %main_bb17 ]
  %"40" = load i32* %"37", align 4
  %"41" = icmp sgt i32 %"40", 0
  br i1 %"41", label %main_bb17, label %main_bb18

main_bb17:                                        ; preds = %main_bb16
  %"42" = load i32* %"39", align 4
  %"43" = add nsw i32 %"42", -1
  store i32 %"43", i32* %"39", align 4
  %"44" = add nsw i32 %pos.1.i, 1
  br label %main_bb16

main_bb18:                                        ; preds = %main_bb16
  %"45" = add nsw i32 %i.0.i, 1
  br label %main_bb11

main_test_fun.exit:                               ; preds = %main_bb11
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32* @__kittel_nondef.0()

declare i32 @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

