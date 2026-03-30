; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_c.08-alloca/svcomp_c.08-alloca.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @test_fun(i32 %i, i32 %j) #0 {
test_fun_bb0:
  %"0" = alloca i8, i64 4
  %"1" = bitcast i8* %"0" to i32*
  %"2" = alloca i8, i64 4
  %"3" = bitcast i8* %"2" to i32*
  %"4" = alloca i8, i64 4
  %"5" = bitcast i8* %"4" to i32*
  store i32 %i, i32* %"1", align 4
  store i32 %j, i32* %"3", align 4
  store i32 0, i32* %"5", align 4
  br label %test_fun_bb1

test_fun_bb1:                                     ; preds = %test_fun_bb5, %test_fun_bb0
  %"6" = load i32* %"1", align 4
  %"7" = icmp sge i32 %"6", 0
  br i1 %"7", label %test_fun_bb2, label %test_fun_bb6

test_fun_bb2:                                     ; preds = %test_fun_bb1
  store i32 0, i32* %"3", align 4
  %"8" = load i32* %"1", align 4
  br label %test_fun_bb3

test_fun_bb3:                                     ; preds = %test_fun_bb4, %test_fun_bb2
  %"9" = load i32* %"3", align 4
  %"10" = sub nsw i32 %"8", 1
  %"11" = icmp sle i32 %"9", %"10"
  br i1 %"11", label %test_fun_bb4, label %test_fun_bb5

test_fun_bb4:                                     ; preds = %test_fun_bb3
  %"12" = load i32* %"3", align 4
  %"13" = add nsw i32 %"12", 1
  store i32 %"13", i32* %"3", align 4
  %"14" = load i32* %"5", align 4
  %"15" = add nsw i32 %"14", 1
  store i32 %"15", i32* %"5", align 4
  br label %test_fun_bb3

test_fun_bb5:                                     ; preds = %test_fun_bb3
  %"16" = load i32* %"1", align 4
  %"17" = sub nsw i32 %"16", 1
  store i32 %"17", i32* %"1", align 4
  br label %test_fun_bb1

test_fun_bb6:                                     ; preds = %test_fun_bb1
  %"18" = load i32* %"5", align 4
  ret i32 %"18"
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb7:
  %"19" = alloca i8, i64 4
  %"20" = alloca i8, i64 4
  %"21" = alloca i8, i64 4
  %"22" = call i32 @__VERIFIER_nondet_int()
  %"23" = call i32 @__VERIFIER_nondet_int()
  call void @llvm.lifetime.start(i64 4, i8* %"19")
  call void @llvm.lifetime.start(i64 4, i8* %"20")
  call void @llvm.lifetime.start(i64 4, i8* %"21")
  %"24" = bitcast i8* %"19" to i32*
  %"25" = bitcast i8* %"20" to i32*
  %"26" = bitcast i8* %"21" to i32*
  store i32 %"22", i32* %"24", align 4
  store i32 %"23", i32* %"25", align 4
  store i32 0, i32* %"26", align 4
  br label %main_bb8

main_bb8:                                         ; preds = %main_bb12, %main_bb7
  %"27" = load i32* %"24", align 4
  %"28" = icmp sge i32 %"27", 0
  br i1 %"28", label %main_bb9, label %main_test_fun.exit

main_bb9:                                         ; preds = %main_bb8
  store i32 0, i32* %"25", align 4
  %"29" = load i32* %"24", align 4
  br label %main_bb10

main_bb10:                                        ; preds = %main_bb11, %main_bb9
  %"30" = load i32* %"25", align 4
  %"31" = sub nsw i32 %"29", 1
  %"32" = icmp sle i32 %"30", %"31"
  br i1 %"32", label %main_bb11, label %main_bb12

main_bb11:                                        ; preds = %main_bb10
  %"33" = load i32* %"25", align 4
  %"34" = add nsw i32 %"33", 1
  store i32 %"34", i32* %"25", align 4
  %"35" = load i32* %"26", align 4
  %"36" = add nsw i32 %"35", 1
  store i32 %"36", i32* %"26", align 4
  br label %main_bb10

main_bb12:                                        ; preds = %main_bb10
  %"37" = load i32* %"24", align 4
  %"38" = sub nsw i32 %"37", 1
  store i32 %"38", i32* %"24", align 4
  br label %main_bb8

main_test_fun.exit:                               ; preds = %main_bb8
  %"39" = load i32* %"26", align 4
  call void @llvm.lifetime.end(i64 4, i8* %"19")
  call void @llvm.lifetime.end(i64 4, i8* %"20")
  call void @llvm.lifetime.end(i64 4, i8* %"21")
  ret i32 %"39"
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

