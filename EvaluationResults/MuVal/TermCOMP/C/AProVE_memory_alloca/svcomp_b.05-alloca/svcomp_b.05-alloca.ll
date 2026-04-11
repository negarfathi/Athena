; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_b.05-alloca/svcomp_b.05-alloca.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @test_fun(i32 %x, i32 %tmp) #0 {
test_fun_bb0:
  %"0" = alloca i8, i64 4
  %"1" = bitcast i8* %"0" to i32*
  %"2" = alloca i8, i64 4
  %"3" = bitcast i8* %"2" to i32*
  store i32 %x, i32* %"1", align 4
  store i32 %tmp, i32* %"3", align 4
  %"4" = call i32 @__VERIFIER_nondet_int()
  store i32 %"4", i32* %"3", align 4
  br label %test_fun_bb1

test_fun_bb1:                                     ; preds = %test_fun_bb4, %test_fun_bb0
  %"5" = load i32* %"1", align 4
  %"6" = icmp sgt i32 %"5", 0
  br i1 %"6", label %test_fun_bb2, label %test_fun_bb3

test_fun_bb2:                                     ; preds = %test_fun_bb1
  %"7" = load i32* %"3", align 4
  %"8" = mul nsw i32 2, %"7"
  %"9" = icmp eq i32 %x, %"8"
  br label %test_fun_bb3

test_fun_bb3:                                     ; preds = %test_fun_bb2, %test_fun_bb1
  %"10" = phi i1 [ false, %test_fun_bb1 ], [ %"9", %test_fun_bb2 ]
  %"11" = load i32* %"1", align 4
  br i1 %"10", label %test_fun_bb4, label %test_fun_bb5

test_fun_bb4:                                     ; preds = %test_fun_bb3
  %"12" = sub nsw i32 %"11", 1
  store i32 %"12", i32* %"1", align 4
  %"13" = call i32 @__VERIFIER_nondet_int()
  store i32 %"13", i32* %"3", align 4
  br label %test_fun_bb1

test_fun_bb5:                                     ; preds = %test_fun_bb3
  ret i32 %"11"
}

declare i32 @__VERIFIER_nondet_int() #1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb6:
  %"14" = alloca i8, i64 4
  %"15" = alloca i8, i64 4
  %"16" = call i32 @__VERIFIER_nondet_int()
  %"17" = call i32 @__VERIFIER_nondet_int()
  call void @llvm.lifetime.start(i64 4, i8* %"14")
  call void @llvm.lifetime.start(i64 4, i8* %"15")
  %"18" = bitcast i8* %"14" to i32*
  %"19" = bitcast i8* %"15" to i32*
  store i32 %"16", i32* %"18", align 4
  store i32 %"17", i32* %"19", align 4
  %"20" = call i32 @__VERIFIER_nondet_int() #2
  store i32 %"20", i32* %"19", align 4
  br label %main_bb7

main_bb7:                                         ; preds = %main_bb10, %main_bb6
  %"21" = load i32* %"18", align 4
  %"22" = icmp sgt i32 %"21", 0
  br i1 %"22", label %main_bb8, label %main_bb9

main_bb8:                                         ; preds = %main_bb7
  %"23" = load i32* %"19", align 4
  %"24" = mul nsw i32 2, %"23"
  %"25" = icmp eq i32 %"16", %"24"
  br label %main_bb9

main_bb9:                                         ; preds = %main_bb8, %main_bb7
  %"26" = phi i1 [ false, %main_bb7 ], [ %"25", %main_bb8 ]
  %"27" = load i32* %"18", align 4
  br i1 %"26", label %main_bb10, label %main_test_fun.exit

main_bb10:                                        ; preds = %main_bb9
  %"28" = sub nsw i32 %"27", 1
  store i32 %"28", i32* %"18", align 4
  %"29" = call i32 @__VERIFIER_nondet_int() #2
  store i32 %"29", i32* %"19", align 4
  br label %main_bb7

main_test_fun.exit:                               ; preds = %main_bb9
  call void @llvm.lifetime.end(i64 4, i8* %"14")
  call void @llvm.lifetime.end(i64 4, i8* %"15")
  ret i32 %"27"
}

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

