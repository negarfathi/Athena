; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_a.09_assume-alloca/svcomp_a.09_assume-alloca.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @test_fun(i32 %x, i32 %y, i32 %z) #0 {
test_fun_bb0:
  %"0" = alloca i8, i64 4
  %"1" = bitcast i8* %"0" to i32*
  %"2" = alloca i8, i64 4
  %"3" = bitcast i8* %"2" to i32*
  %"4" = alloca i8, i64 4
  %"5" = bitcast i8* %"4" to i32*
  store i32 %x, i32* %"1", align 4
  store i32 %y, i32* %"3", align 4
  store i32 %z, i32* %"5", align 4
  %"6" = load i32* %"3", align 4
  %"7" = icmp sle i32 %"6", 0
  br i1 %"7", label %test_fun_bb1, label %test_fun_bb2

test_fun_bb1:                                     ; preds = %test_fun_bb0
  %"8" = load i32* %"5", align 4
  br label %test_fun_bb7

test_fun_bb2:                                     ; preds = %test_fun_bb0
  %"9" = load i32* %"1", align 4
  %"10" = load i32* %"3", align 4
  %"11" = load i32* %"3", align 4
  br label %test_fun_bb3

test_fun_bb3:                                     ; preds = %test_fun_bb5, %test_fun_bb2
  %"12" = load i32* %"5", align 4
  %"13" = icmp sge i32 %"9", %"12"
  br i1 %"13", label %test_fun_bb4, label %test_fun_bb6

test_fun_bb4:                                     ; preds = %test_fun_bb3
  %"14" = icmp sle i32 %"10", 0
  %"15" = load i32* %"5", align 4
  br i1 %"14", label %test_fun_bb7, label %test_fun_bb5

test_fun_bb5:                                     ; preds = %test_fun_bb4
  %"16" = add nsw i32 %"15", %"11"
  store i32 %"16", i32* %"5", align 4
  br label %test_fun_bb3

test_fun_bb6:                                     ; preds = %test_fun_bb3
  %"17" = load i32* %"5", align 4
  br label %test_fun_bb7

test_fun_bb7:                                     ; preds = %test_fun_bb4, %test_fun_bb6, %test_fun_bb1
  %.0 = phi i32 [ %"8", %test_fun_bb1 ], [ %"17", %test_fun_bb6 ], [ %"15", %test_fun_bb4 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb8:
  %"18" = alloca i8, i64 4
  %"19" = alloca i8, i64 4
  %"20" = alloca i8, i64 4
  %"21" = call i32 @__VERIFIER_nondet_int()
  %"22" = call i32 @__VERIFIER_nondet_int()
  %"23" = call i32 @__VERIFIER_nondet_int()
  call void @llvm.lifetime.start(i64 4, i8* %"18")
  call void @llvm.lifetime.start(i64 4, i8* %"19")
  call void @llvm.lifetime.start(i64 4, i8* %"20")
  %"24" = bitcast i8* %"18" to i32*
  %"25" = bitcast i8* %"19" to i32*
  %"26" = bitcast i8* %"20" to i32*
  store i32 %"21", i32* %"24", align 4
  store i32 %"22", i32* %"25", align 4
  store i32 %"23", i32* %"26", align 4
  %"27" = load i32* %"25", align 4
  %"28" = icmp sle i32 %"27", 0
  br i1 %"28", label %main_bb9, label %main_bb10

main_bb9:                                         ; preds = %main_bb8
  %"29" = load i32* %"26", align 4
  br label %main_test_fun.exit

main_bb10:                                        ; preds = %main_bb8
  %"30" = load i32* %"24", align 4
  %"31" = load i32* %"25", align 4
  %"32" = load i32* %"25", align 4
  br label %main_bb11

main_bb11:                                        ; preds = %main_bb13, %main_bb10
  %"33" = load i32* %"26", align 4
  %"34" = icmp sge i32 %"30", %"33"
  br i1 %"34", label %main_bb12, label %main_bb14

main_bb12:                                        ; preds = %main_bb11
  %"35" = icmp sle i32 %"31", 0
  %"36" = load i32* %"26", align 4
  br i1 %"35", label %main_test_fun.exit, label %main_bb13

main_bb13:                                        ; preds = %main_bb12
  %"37" = add nsw i32 %"36", %"32"
  store i32 %"37", i32* %"26", align 4
  br label %main_bb11

main_bb14:                                        ; preds = %main_bb11
  %"38" = load i32* %"26", align 4
  br label %main_test_fun.exit

main_test_fun.exit:                               ; preds = %main_bb9, %main_bb12, %main_bb14
  %.0.i = phi i32 [ %"29", %main_bb9 ], [ %"38", %main_bb14 ], [ %"36", %main_bb12 ]
  call void @llvm.lifetime.end(i64 4, i8* %"18")
  call void @llvm.lifetime.end(i64 4, i8* %"19")
  call void @llvm.lifetime.end(i64 4, i8* %"20")
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

