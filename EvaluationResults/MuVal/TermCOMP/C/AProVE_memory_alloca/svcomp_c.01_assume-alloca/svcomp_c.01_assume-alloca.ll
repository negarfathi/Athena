; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_c.01_assume-alloca/svcomp_c.01_assume-alloca.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @test_fun(i32 %x, i32 %y) #0 {
test_fun_bb0:
  %"0" = alloca i8, i64 4
  %"1" = bitcast i8* %"0" to i32*
  %"2" = alloca i8, i64 4
  %"3" = bitcast i8* %"2" to i32*
  store i32 %x, i32* %"1", align 4
  store i32 %y, i32* %"3", align 4
  br label %test_fun_bb1

test_fun_bb1:                                     ; preds = %test_fun_bb7, %test_fun_bb0
  %"4" = load i32* %"1", align 4
  %"5" = icmp sge i32 %"4", 0
  br i1 %"5", label %test_fun_bb2, label %test_fun_bb8

test_fun_bb2:                                     ; preds = %test_fun_bb1
  store i32 1, i32* %"3", align 4
  %"6" = load i32* %"1", align 4
  br label %test_fun_bb3

test_fun_bb3:                                     ; preds = %test_fun_bb6, %test_fun_bb2
  %"7" = load i32* %"3", align 4
  %"8" = icmp sgt i32 %"6", %"7"
  br i1 %"8", label %test_fun_bb4, label %test_fun_bb7

test_fun_bb4:                                     ; preds = %test_fun_bb3
  %"9" = load i32* %"3", align 4
  %"10" = icmp sle i32 %"9", 0
  br i1 %"10", label %test_fun_bb5, label %test_fun_bb6

test_fun_bb5:                                     ; preds = %test_fun_bb4
  %"11" = load i32* %"1", align 4
  br label %test_fun_bb9

test_fun_bb6:                                     ; preds = %test_fun_bb4
  %"12" = load i32* %"3", align 4
  %"13" = mul nsw i32 2, %"12"
  store i32 %"13", i32* %"3", align 4
  br label %test_fun_bb3

test_fun_bb7:                                     ; preds = %test_fun_bb3
  %"14" = load i32* %"1", align 4
  %"15" = sub nsw i32 %"14", 1
  store i32 %"15", i32* %"1", align 4
  br label %test_fun_bb1

test_fun_bb8:                                     ; preds = %test_fun_bb1
  %"16" = load i32* %"3", align 4
  br label %test_fun_bb9

test_fun_bb9:                                     ; preds = %test_fun_bb8, %test_fun_bb5
  %.0 = phi i32 [ %"11", %test_fun_bb5 ], [ %"16", %test_fun_bb8 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb10:
  %"17" = alloca i8, i64 4
  %"18" = alloca i8, i64 4
  %"19" = call i32 @__VERIFIER_nondet_int()
  %"20" = call i32 @__VERIFIER_nondet_int()
  call void @llvm.lifetime.start(i64 4, i8* %"17")
  call void @llvm.lifetime.start(i64 4, i8* %"18")
  %"21" = bitcast i8* %"17" to i32*
  %"22" = bitcast i8* %"18" to i32*
  store i32 %"19", i32* %"21", align 4
  store i32 %"20", i32* %"22", align 4
  br label %main_bb11

main_bb11:                                        ; preds = %main_bb17, %main_bb10
  %"23" = load i32* %"21", align 4
  %"24" = icmp sge i32 %"23", 0
  br i1 %"24", label %main_bb12, label %main_bb18

main_bb12:                                        ; preds = %main_bb11
  store i32 1, i32* %"22", align 4
  %"25" = load i32* %"21", align 4
  br label %main_bb13

main_bb13:                                        ; preds = %main_bb16, %main_bb12
  %"26" = load i32* %"22", align 4
  %"27" = icmp sgt i32 %"25", %"26"
  br i1 %"27", label %main_bb14, label %main_bb17

main_bb14:                                        ; preds = %main_bb13
  %"28" = load i32* %"22", align 4
  %"29" = icmp sle i32 %"28", 0
  br i1 %"29", label %main_bb15, label %main_bb16

main_bb15:                                        ; preds = %main_bb14
  %"30" = load i32* %"21", align 4
  br label %main_test_fun.exit

main_bb16:                                        ; preds = %main_bb14
  %"31" = load i32* %"22", align 4
  %"32" = mul nsw i32 2, %"31"
  store i32 %"32", i32* %"22", align 4
  br label %main_bb13

main_bb17:                                        ; preds = %main_bb13
  %"33" = load i32* %"21", align 4
  %"34" = sub nsw i32 %"33", 1
  store i32 %"34", i32* %"21", align 4
  br label %main_bb11

main_bb18:                                        ; preds = %main_bb11
  %"35" = load i32* %"22", align 4
  br label %main_test_fun.exit

main_test_fun.exit:                               ; preds = %main_bb15, %main_bb18
  %.0.i = phi i32 [ %"30", %main_bb15 ], [ %"35", %main_bb18 ]
  call void @llvm.lifetime.end(i64 4, i8* %"17")
  call void @llvm.lifetime.end(i64 4, i8* %"18")
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

