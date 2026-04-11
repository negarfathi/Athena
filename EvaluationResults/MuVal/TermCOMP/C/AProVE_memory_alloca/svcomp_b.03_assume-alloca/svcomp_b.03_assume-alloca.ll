; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_b.03_assume-alloca/svcomp_b.03_assume-alloca.bc'
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
  %"4" = load i32* %"1", align 4
  %"5" = icmp sle i32 %"4", 0
  br i1 %"5", label %test_fun_bb1, label %test_fun_bb2

test_fun_bb1:                                     ; preds = %test_fun_bb0
  %"6" = load i32* %"3", align 4
  br label %test_fun_bb7

test_fun_bb2:                                     ; preds = %test_fun_bb0
  %"7" = load i32* %"1", align 4
  %"8" = load i32* %"1", align 4
  %"9" = load i32* %"1", align 4
  br label %test_fun_bb3

test_fun_bb3:                                     ; preds = %test_fun_bb5, %test_fun_bb2
  %"10" = load i32* %"3", align 4
  %"11" = icmp sgt i32 %"7", %"10"
  br i1 %"11", label %test_fun_bb4, label %test_fun_bb6

test_fun_bb4:                                     ; preds = %test_fun_bb3
  %"12" = icmp sle i32 %"8", 0
  %"13" = load i32* %"3", align 4
  br i1 %"12", label %test_fun_bb7, label %test_fun_bb5

test_fun_bb5:                                     ; preds = %test_fun_bb4
  %"14" = add nsw i32 %"13", %"9"
  store i32 %"14", i32* %"3", align 4
  br label %test_fun_bb3

test_fun_bb6:                                     ; preds = %test_fun_bb3
  %"15" = load i32* %"3", align 4
  br label %test_fun_bb7

test_fun_bb7:                                     ; preds = %test_fun_bb4, %test_fun_bb6, %test_fun_bb1
  %.0 = phi i32 [ %"6", %test_fun_bb1 ], [ %"15", %test_fun_bb6 ], [ %"13", %test_fun_bb4 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb8:
  %"16" = alloca i8, i64 4
  %"17" = alloca i8, i64 4
  %"18" = call i32 @__VERIFIER_nondet_int()
  %"19" = call i32 @__VERIFIER_nondet_int()
  call void @llvm.lifetime.start(i64 4, i8* %"16")
  call void @llvm.lifetime.start(i64 4, i8* %"17")
  %"20" = bitcast i8* %"16" to i32*
  %"21" = bitcast i8* %"17" to i32*
  store i32 %"18", i32* %"20", align 4
  store i32 %"19", i32* %"21", align 4
  %"22" = load i32* %"20", align 4
  %"23" = icmp sle i32 %"22", 0
  br i1 %"23", label %main_bb9, label %main_bb10

main_bb9:                                         ; preds = %main_bb8
  %"24" = load i32* %"21", align 4
  br label %main_test_fun.exit

main_bb10:                                        ; preds = %main_bb8
  %"25" = load i32* %"20", align 4
  %"26" = load i32* %"20", align 4
  %"27" = load i32* %"20", align 4
  br label %main_bb11

main_bb11:                                        ; preds = %main_bb13, %main_bb10
  %"28" = load i32* %"21", align 4
  %"29" = icmp sgt i32 %"25", %"28"
  br i1 %"29", label %main_bb12, label %main_bb14

main_bb12:                                        ; preds = %main_bb11
  %"30" = icmp sle i32 %"26", 0
  %"31" = load i32* %"21", align 4
  br i1 %"30", label %main_test_fun.exit, label %main_bb13

main_bb13:                                        ; preds = %main_bb12
  %"32" = add nsw i32 %"31", %"27"
  store i32 %"32", i32* %"21", align 4
  br label %main_bb11

main_bb14:                                        ; preds = %main_bb11
  %"33" = load i32* %"21", align 4
  br label %main_test_fun.exit

main_test_fun.exit:                               ; preds = %main_bb9, %main_bb12, %main_bb14
  %.0.i = phi i32 [ %"24", %main_bb9 ], [ %"33", %main_bb14 ], [ %"31", %main_bb12 ]
  call void @llvm.lifetime.end(i64 4, i8* %"16")
  call void @llvm.lifetime.end(i64 4, i8* %"17")
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

