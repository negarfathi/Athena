; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_b.17-alloca/svcomp_b.17-alloca.bc'
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
  %"6" = alloca i8, i64 4
  %"7" = bitcast i8* %"6" to i32*
  store i32 %x, i32* %"1", align 4
  store i32 %y, i32* %"3", align 4
  store i32 %z, i32* %"5", align 4
  store i32 0, i32* %"7", align 4
  %"8" = load i32* %"5", align 4
  %"9" = load i32* %"5", align 4
  br label %test_fun_bb1

test_fun_bb1:                                     ; preds = %test_fun_bb4, %test_fun_bb0
  %"10" = load i32* %"1", align 4
  %"11" = icmp sgt i32 %"10", %"8"
  br i1 %"11", label %test_fun_bb2, label %test_fun_bb5

test_fun_bb2:                                     ; preds = %test_fun_bb1, %test_fun_bb3
  %"12" = load i32* %"3", align 4
  %"13" = icmp sgt i32 %"12", %"9"
  br i1 %"13", label %test_fun_bb3, label %test_fun_bb4

test_fun_bb3:                                     ; preds = %test_fun_bb2
  %"14" = load i32* %"3", align 4
  %"15" = sub nsw i32 %"14", 1
  store i32 %"15", i32* %"3", align 4
  %"16" = load i32* %"7", align 4
  %"17" = add nsw i32 %"16", 1
  store i32 %"17", i32* %"7", align 4
  br label %test_fun_bb2

test_fun_bb4:                                     ; preds = %test_fun_bb2
  %"18" = load i32* %"7", align 4
  %"19" = add nsw i32 %"18", 1
  store i32 %"19", i32* %"7", align 4
  %"20" = load i32* %"1", align 4
  %"21" = sub nsw i32 %"20", 1
  store i32 %"21", i32* %"1", align 4
  br label %test_fun_bb1

test_fun_bb5:                                     ; preds = %test_fun_bb1
  %"22" = load i32* %"7", align 4
  ret i32 %"22"
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb6:
  %"23" = alloca i8, i64 4
  %"24" = alloca i8, i64 4
  %"25" = alloca i8, i64 4
  %"26" = alloca i8, i64 4
  %"27" = call i32 @__VERIFIER_nondet_int()
  %"28" = call i32 @__VERIFIER_nondet_int()
  %"29" = call i32 @__VERIFIER_nondet_int()
  call void @llvm.lifetime.start(i64 4, i8* %"23")
  call void @llvm.lifetime.start(i64 4, i8* %"24")
  call void @llvm.lifetime.start(i64 4, i8* %"25")
  call void @llvm.lifetime.start(i64 4, i8* %"26")
  %"30" = bitcast i8* %"23" to i32*
  %"31" = bitcast i8* %"24" to i32*
  %"32" = bitcast i8* %"25" to i32*
  %"33" = bitcast i8* %"26" to i32*
  store i32 %"27", i32* %"30", align 4
  store i32 %"28", i32* %"31", align 4
  store i32 %"29", i32* %"32", align 4
  store i32 0, i32* %"33", align 4
  %"34" = load i32* %"32", align 4
  %"35" = load i32* %"32", align 4
  br label %main_bb7

main_bb7:                                         ; preds = %main_bb10, %main_bb6
  %"36" = load i32* %"30", align 4
  %"37" = icmp sgt i32 %"36", %"34"
  br i1 %"37", label %main_bb8, label %main_test_fun.exit

main_bb8:                                         ; preds = %main_bb9, %main_bb7
  %"38" = load i32* %"31", align 4
  %"39" = icmp sgt i32 %"38", %"35"
  br i1 %"39", label %main_bb9, label %main_bb10

main_bb9:                                         ; preds = %main_bb8
  %"40" = load i32* %"31", align 4
  %"41" = sub nsw i32 %"40", 1
  store i32 %"41", i32* %"31", align 4
  %"42" = load i32* %"33", align 4
  %"43" = add nsw i32 %"42", 1
  store i32 %"43", i32* %"33", align 4
  br label %main_bb8

main_bb10:                                        ; preds = %main_bb8
  %"44" = load i32* %"33", align 4
  %"45" = add nsw i32 %"44", 1
  store i32 %"45", i32* %"33", align 4
  %"46" = load i32* %"30", align 4
  %"47" = sub nsw i32 %"46", 1
  store i32 %"47", i32* %"30", align 4
  br label %main_bb7

main_test_fun.exit:                               ; preds = %main_bb7
  %"48" = load i32* %"33", align 4
  call void @llvm.lifetime.end(i64 4, i8* %"23")
  call void @llvm.lifetime.end(i64 4, i8* %"24")
  call void @llvm.lifetime.end(i64 4, i8* %"25")
  call void @llvm.lifetime.end(i64 4, i8* %"26")
  ret i32 %"48"
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

