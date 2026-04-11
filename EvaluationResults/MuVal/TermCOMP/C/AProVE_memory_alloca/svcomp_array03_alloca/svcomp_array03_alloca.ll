; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_array03_alloca/svcomp_array03_alloca.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define void @test_fun(i32* %a, i32 %N) #0 {
test_fun_bb0:
  br label %test_fun_bb1

test_fun_bb1:                                     ; preds = %test_fun_bb7, %test_fun_bb0
  %i.0 = phi i32 [ 0, %test_fun_bb0 ], [ %"23", %test_fun_bb7 ]
  %"0" = icmp slt i32 %i.0, %N
  br i1 %"0", label %test_fun_bb2, label %test_fun_bb8

test_fun_bb2:                                     ; preds = %test_fun_bb1
  %"1" = sext i32 %i.0 to i64
  %"2" = getelementptr inbounds i32* %a, i64 %"1"
  %"3" = load i32* %"2", align 4
  %"4" = icmp eq i32 %"3", 0
  br i1 %"4", label %test_fun_bb4, label %test_fun_bb3

test_fun_bb3:                                     ; preds = %test_fun_bb2
  %"5" = sext i32 %i.0 to i64
  %"6" = getelementptr inbounds i32* %a, i64 %"5"
  %"7" = load i32* %"6", align 4
  %"8" = icmp slt i32 %"7", 0
  %. = select i1 %"8", i32 0, i32 1
  br label %test_fun_bb4

test_fun_bb4:                                     ; preds = %test_fun_bb2, %test_fun_bb3
  %res.1 = phi i32 [ %., %test_fun_bb3 ], [ 1, %test_fun_bb2 ]
  %"9" = sext i32 %i.0 to i64
  %"10" = getelementptr inbounds i32* %a, i64 %"9"
  %"11" = sext i32 %i.0 to i64
  %"12" = getelementptr inbounds i32* %a, i64 %"11"
  %"13" = sext i32 %i.0 to i64
  %"14" = getelementptr inbounds i32* %a, i64 %"13"
  br label %test_fun_bb5

test_fun_bb5:                                     ; preds = %test_fun_bb6, %test_fun_bb4
  %res.2 = phi i32 [ %res.1, %test_fun_bb4 ], [ %"18", %test_fun_bb6 ]
  %"15" = load i32* %"10", align 4
  %"16" = icmp sgt i32 %"15", 0
  br i1 %"16", label %test_fun_bb6, label %test_fun_bb7

test_fun_bb6:                                     ; preds = %test_fun_bb5
  %"17" = load i32* %"12", align 4
  %"18" = mul nsw i32 %res.2, %"17"
  %"19" = load i32* %"14", align 4
  %"20" = add nsw i32 %"19", -1
  store i32 %"20", i32* %"14", align 4
  br label %test_fun_bb5

test_fun_bb7:                                     ; preds = %test_fun_bb5
  %"21" = sext i32 %i.0 to i64
  %"22" = getelementptr inbounds i32* %a, i64 %"21"
  store i32 %res.2, i32* %"22", align 4
  %"23" = add nsw i32 %i.0, 1
  br label %test_fun_bb1

test_fun_bb8:                                     ; preds = %test_fun_bb1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb9:
  %"24" = call i32 @__VERIFIER_nondet_int()
  %"25" = icmp slt i32 %"24", 1
  %. = select i1 %"25", i32 1, i32 %"24"
  %"26" = sext i32 %. to i64
  %"27" = mul i64 %"26", 4
  %"28" = alloca i8, i64 %"27"
  %"29" = bitcast i8* %"28" to i32*
  br label %main_bb10

main_bb10:                                        ; preds = %main_bb16, %main_bb9
  %i.0.i = phi i32 [ 0, %main_bb9 ], [ %"53", %main_bb16 ]
  %"30" = icmp slt i32 %i.0.i, %.
  br i1 %"30", label %main_bb11, label %main_test_fun.exit

main_bb11:                                        ; preds = %main_bb10
  %"31" = sext i32 %i.0.i to i64
  %"32" = getelementptr inbounds i32* %"29", i64 %"31"
  %"33" = load i32* %"32", align 4
  %"34" = icmp eq i32 %"33", 0
  br i1 %"34", label %main_bb13, label %main_bb12

main_bb12:                                        ; preds = %main_bb11
  %"35" = sext i32 %i.0.i to i64
  %"36" = getelementptr inbounds i32* %"29", i64 %"35"
  %"37" = load i32* %"36", align 4
  %"38" = icmp slt i32 %"37", 0
  %..i = select i1 %"38", i32 0, i32 1
  br label %main_bb13

main_bb13:                                        ; preds = %main_bb12, %main_bb11
  %res.1.i = phi i32 [ %..i, %main_bb12 ], [ 1, %main_bb11 ]
  %"39" = sext i32 %i.0.i to i64
  %"40" = getelementptr inbounds i32* %"29", i64 %"39"
  %"41" = sext i32 %i.0.i to i64
  %"42" = getelementptr inbounds i32* %"29", i64 %"41"
  %"43" = sext i32 %i.0.i to i64
  %"44" = getelementptr inbounds i32* %"29", i64 %"43"
  br label %main_bb14

main_bb14:                                        ; preds = %main_bb15, %main_bb13
  %res.2.i = phi i32 [ %res.1.i, %main_bb13 ], [ %"48", %main_bb15 ]
  %"45" = load i32* %"40", align 4
  %"46" = icmp sgt i32 %"45", 0
  br i1 %"46", label %main_bb15, label %main_bb16

main_bb15:                                        ; preds = %main_bb14
  %"47" = load i32* %"42", align 4
  %"48" = mul nsw i32 %res.2.i, %"47"
  %"49" = load i32* %"44", align 4
  %"50" = add nsw i32 %"49", -1
  store i32 %"50", i32* %"44", align 4
  br label %main_bb14

main_bb16:                                        ; preds = %main_bb14
  %"51" = sext i32 %i.0.i to i64
  %"52" = getelementptr inbounds i32* %"29", i64 %"51"
  store i32 %res.2.i, i32* %"52", align 4
  %"53" = add nsw i32 %i.0.i, 1
  br label %main_bb10

main_test_fun.exit:                               ; preds = %main_bb10
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32* @__kittel_nondef.0()

declare i32 @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

