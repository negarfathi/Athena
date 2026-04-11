; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_b.04-alloca/svcomp_b.04-alloca.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @test_fun(i32 %x, i32 %y, i32 %tmp) #0 {
test_fun_bb0:
  %"0" = alloca i8, i64 4
  %"1" = bitcast i8* %"0" to i32*
  %"2" = alloca i8, i64 4
  %"3" = bitcast i8* %"2" to i32*
  %"4" = alloca i8, i64 4
  %"5" = bitcast i8* %"4" to i32*
  store i32 %x, i32* %"1", align 4
  store i32 %y, i32* %"3", align 4
  store i32 %tmp, i32* %"5", align 4
  br label %test_fun_bb1

test_fun_bb1:                                     ; preds = %test_fun_bb2, %test_fun_bb0
  %"6" = load i32* %"1", align 4
  %"7" = load i32* %"3", align 4
  %"8" = icmp sgt i32 %"6", %"7"
  br i1 %"8", label %test_fun_bb2, label %test_fun_bb3

test_fun_bb2:                                     ; preds = %test_fun_bb1
  %"9" = load i32* %"1", align 4
  store i32 %"9", i32* %"5", align 4
  %"10" = load i32* %"3", align 4
  store i32 %"10", i32* %"1", align 4
  %"11" = load i32* %"5", align 4
  store i32 %"11", i32* %"3", align 4
  br label %test_fun_bb1

test_fun_bb3:                                     ; preds = %test_fun_bb1
  %"12" = load i32* %"5", align 4
  ret i32 %"12"
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb4:
  %"13" = alloca i8, i64 4
  %"14" = alloca i8, i64 4
  %"15" = alloca i8, i64 4
  %"16" = call i32 @__VERIFIER_nondet_int()
  %"17" = call i32 @__VERIFIER_nondet_int()
  %"18" = call i32 @__VERIFIER_nondet_int()
  call void @llvm.lifetime.start(i64 4, i8* %"13")
  call void @llvm.lifetime.start(i64 4, i8* %"14")
  call void @llvm.lifetime.start(i64 4, i8* %"15")
  %"19" = bitcast i8* %"13" to i32*
  %"20" = bitcast i8* %"14" to i32*
  %"21" = bitcast i8* %"15" to i32*
  store i32 %"16", i32* %"19", align 4
  store i32 %"17", i32* %"20", align 4
  store i32 %"18", i32* %"21", align 4
  br label %main_bb5

main_bb5:                                         ; preds = %main_bb6, %main_bb4
  %"22" = load i32* %"19", align 4
  %"23" = load i32* %"20", align 4
  %"24" = icmp sgt i32 %"22", %"23"
  br i1 %"24", label %main_bb6, label %main_test_fun.exit

main_bb6:                                         ; preds = %main_bb5
  %"25" = load i32* %"19", align 4
  store i32 %"25", i32* %"21", align 4
  %"26" = load i32* %"20", align 4
  store i32 %"26", i32* %"19", align 4
  %"27" = load i32* %"21", align 4
  store i32 %"27", i32* %"20", align 4
  br label %main_bb5

main_test_fun.exit:                               ; preds = %main_bb5
  %"28" = load i32* %"21", align 4
  call void @llvm.lifetime.end(i64 4, i8* %"13")
  call void @llvm.lifetime.end(i64 4, i8* %"14")
  call void @llvm.lifetime.end(i64 4, i8* %"15")
  ret i32 %"28"
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

