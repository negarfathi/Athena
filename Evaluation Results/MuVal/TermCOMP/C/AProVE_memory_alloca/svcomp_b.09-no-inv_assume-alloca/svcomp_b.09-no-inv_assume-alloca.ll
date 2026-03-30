; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_b.09-no-inv_assume-alloca/svcomp_b.09-no-inv_assume-alloca.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @test_fun(i32 %x, i32 %y) #0 {
test_fun_bb0:
  %"0" = alloca i8, i64 4
  %"1" = bitcast i8* %"0" to i32*
  %"2" = alloca i8, i64 4
  %"3" = bitcast i8* %"2" to i32*
  %"4" = alloca i8, i64 4
  %"5" = bitcast i8* %"4" to i32*
  store i32 %x, i32* %"1", align 4
  store i32 %y, i32* %"3", align 4
  store i32 0, i32* %"5", align 4
  %"6" = load i32* %"1", align 4
  %"7" = icmp sle i32 %"6", 0
  br i1 %"7", label %test_fun_bb2, label %test_fun_bb1

test_fun_bb1:                                     ; preds = %test_fun_bb0
  %"8" = load i32* %"3", align 4
  %"9" = icmp sle i32 %"8", 0
  br i1 %"9", label %test_fun_bb2, label %test_fun_bb3

test_fun_bb2:                                     ; preds = %test_fun_bb1, %test_fun_bb0
  %"10" = load i32* %"1", align 4
  %"11" = load i32* %"3", align 4
  %"12" = add nsw i32 %"10", %"11"
  br label %test_fun_bb10

test_fun_bb3:                                     ; preds = %test_fun_bb1
  %"13" = load i32* %"3", align 4
  %"14" = load i32* %"3", align 4
  br label %test_fun_bb4

test_fun_bb4:                                     ; preds = %test_fun_bb8, %test_fun_bb3
  %"15" = load i32* %"1", align 4
  %"16" = icmp eq i32 %"15", 0
  %"17" = xor i1 %"16", true
  br i1 %"17", label %test_fun_bb5, label %test_fun_bb9

test_fun_bb5:                                     ; preds = %test_fun_bb4
  %"18" = load i32* %"1", align 4
  %"19" = icmp sgt i32 %"18", %"13"
  br i1 %"19", label %test_fun_bb6, label %test_fun_bb7

test_fun_bb6:                                     ; preds = %test_fun_bb5
  store i32 %"14", i32* %"1", align 4
  br label %test_fun_bb8

test_fun_bb7:                                     ; preds = %test_fun_bb5
  %"20" = load i32* %"1", align 4
  %"21" = sub nsw i32 %"20", 1
  store i32 %"21", i32* %"1", align 4
  br label %test_fun_bb8

test_fun_bb8:                                     ; preds = %test_fun_bb7, %test_fun_bb6
  %"22" = load i32* %"5", align 4
  %"23" = add nsw i32 %"22", 1
  store i32 %"23", i32* %"5", align 4
  br label %test_fun_bb4

test_fun_bb9:                                     ; preds = %test_fun_bb4
  %"24" = load i32* %"5", align 4
  br label %test_fun_bb10

test_fun_bb10:                                    ; preds = %test_fun_bb9, %test_fun_bb2
  %.0 = phi i32 [ %"12", %test_fun_bb2 ], [ %"24", %test_fun_bb9 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb11:
  %"25" = alloca i8, i64 4
  %"26" = alloca i8, i64 4
  %"27" = alloca i8, i64 4
  %"28" = call i32 @__VERIFIER_nondet_int()
  %"29" = call i32 @__VERIFIER_nondet_int()
  call void @llvm.lifetime.start(i64 4, i8* %"25")
  call void @llvm.lifetime.start(i64 4, i8* %"26")
  call void @llvm.lifetime.start(i64 4, i8* %"27")
  %"30" = bitcast i8* %"25" to i32*
  %"31" = bitcast i8* %"26" to i32*
  %"32" = bitcast i8* %"27" to i32*
  store i32 %"28", i32* %"30", align 4
  store i32 %"29", i32* %"31", align 4
  store i32 0, i32* %"32", align 4
  %"33" = load i32* %"30", align 4
  %"34" = icmp sle i32 %"33", 0
  br i1 %"34", label %main_bb13, label %main_bb12

main_bb12:                                        ; preds = %main_bb11
  %"35" = load i32* %"31", align 4
  %"36" = icmp sle i32 %"35", 0
  br i1 %"36", label %main_bb13, label %main_bb14

main_bb13:                                        ; preds = %main_bb12, %main_bb11
  %"37" = load i32* %"30", align 4
  %"38" = load i32* %"31", align 4
  %"39" = add nsw i32 %"37", %"38"
  br label %main_test_fun.exit

main_bb14:                                        ; preds = %main_bb12
  %"40" = load i32* %"31", align 4
  %"41" = load i32* %"31", align 4
  br label %main_bb15

main_bb15:                                        ; preds = %main_bb19, %main_bb14
  %"42" = load i32* %"30", align 4
  %"43" = icmp eq i32 %"42", 0
  %"44" = xor i1 %"43", true
  br i1 %"44", label %main_bb16, label %main_bb20

main_bb16:                                        ; preds = %main_bb15
  %"45" = load i32* %"30", align 4
  %"46" = icmp sgt i32 %"45", %"40"
  br i1 %"46", label %main_bb17, label %main_bb18

main_bb17:                                        ; preds = %main_bb16
  store i32 %"41", i32* %"30", align 4
  br label %main_bb19

main_bb18:                                        ; preds = %main_bb16
  %"47" = load i32* %"30", align 4
  %"48" = sub nsw i32 %"47", 1
  store i32 %"48", i32* %"30", align 4
  br label %main_bb19

main_bb19:                                        ; preds = %main_bb18, %main_bb17
  %"49" = load i32* %"32", align 4
  %"50" = add nsw i32 %"49", 1
  store i32 %"50", i32* %"32", align 4
  br label %main_bb15

main_bb20:                                        ; preds = %main_bb15
  %"51" = load i32* %"32", align 4
  br label %main_test_fun.exit

main_test_fun.exit:                               ; preds = %main_bb13, %main_bb20
  %.0.i = phi i32 [ %"39", %main_bb13 ], [ %"51", %main_bb20 ]
  call void @llvm.lifetime.end(i64 4, i8* %"25")
  call void @llvm.lifetime.end(i64 4, i8* %"26")
  call void @llvm.lifetime.end(i64 4, i8* %"27")
  ret i32 %.0.i
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32 @__kittel_nondef.0()

declare i32* @__kittel_nondef.1()

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

