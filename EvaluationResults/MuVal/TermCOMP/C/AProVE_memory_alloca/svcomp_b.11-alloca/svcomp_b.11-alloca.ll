; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_b.11-alloca/svcomp_b.11-alloca.bc'
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
  br label %test_fun_bb1

test_fun_bb1:                                     ; preds = %test_fun_bb7, %test_fun_bb0
  %"6" = load i32* %"1", align 4
  %"7" = load i32* %"3", align 4
  %"8" = add nsw i32 %"6", %"7"
  %"9" = icmp sgt i32 %"8", 0
  br i1 %"9", label %test_fun_bb2, label %test_fun_bb8

test_fun_bb2:                                     ; preds = %test_fun_bb1
  %"10" = load i32* %"1", align 4
  %"11" = load i32* %"3", align 4
  %"12" = icmp sgt i32 %"10", %"11"
  %"13" = load i32* %"1", align 4
  br i1 %"12", label %test_fun_bb3, label %test_fun_bb4

test_fun_bb3:                                     ; preds = %test_fun_bb2
  %"14" = sub nsw i32 %"13", 1
  store i32 %"14", i32* %"1", align 4
  br label %test_fun_bb7

test_fun_bb4:                                     ; preds = %test_fun_bb2
  %"15" = load i32* %"3", align 4
  %"16" = icmp eq i32 %"13", %"15"
  br i1 %"16", label %test_fun_bb5, label %test_fun_bb6

test_fun_bb5:                                     ; preds = %test_fun_bb4
  %"17" = load i32* %"1", align 4
  %"18" = sub nsw i32 %"17", 1
  store i32 %"18", i32* %"1", align 4
  br label %test_fun_bb7

test_fun_bb6:                                     ; preds = %test_fun_bb4
  %"19" = load i32* %"3", align 4
  %"20" = sub nsw i32 %"19", 1
  store i32 %"20", i32* %"3", align 4
  br label %test_fun_bb7

test_fun_bb7:                                     ; preds = %test_fun_bb5, %test_fun_bb6, %test_fun_bb3
  %"21" = load i32* %"5", align 4
  %"22" = add nsw i32 %"21", 1
  store i32 %"22", i32* %"5", align 4
  br label %test_fun_bb1

test_fun_bb8:                                     ; preds = %test_fun_bb1
  %"23" = load i32* %"5", align 4
  ret i32 %"23"
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb9:
  %"24" = alloca i8, i64 4
  %"25" = alloca i8, i64 4
  %"26" = alloca i8, i64 4
  %"27" = call i32 @__VERIFIER_nondet_int()
  %"28" = call i32 @__VERIFIER_nondet_int()
  call void @llvm.lifetime.start(i64 4, i8* %"24")
  call void @llvm.lifetime.start(i64 4, i8* %"25")
  call void @llvm.lifetime.start(i64 4, i8* %"26")
  %"29" = bitcast i8* %"24" to i32*
  %"30" = bitcast i8* %"25" to i32*
  %"31" = bitcast i8* %"26" to i32*
  store i32 %"27", i32* %"29", align 4
  store i32 %"28", i32* %"30", align 4
  store i32 0, i32* %"31", align 4
  br label %main_bb10

main_bb10:                                        ; preds = %main_bb16, %main_bb9
  %"32" = load i32* %"29", align 4
  %"33" = load i32* %"30", align 4
  %"34" = add nsw i32 %"32", %"33"
  %"35" = icmp sgt i32 %"34", 0
  br i1 %"35", label %main_bb11, label %main_test_fun.exit

main_bb11:                                        ; preds = %main_bb10
  %"36" = load i32* %"29", align 4
  %"37" = load i32* %"30", align 4
  %"38" = icmp sgt i32 %"36", %"37"
  %"39" = load i32* %"29", align 4
  br i1 %"38", label %main_bb12, label %main_bb13

main_bb12:                                        ; preds = %main_bb11
  %"40" = sub nsw i32 %"39", 1
  store i32 %"40", i32* %"29", align 4
  br label %main_bb16

main_bb13:                                        ; preds = %main_bb11
  %"41" = load i32* %"30", align 4
  %"42" = icmp eq i32 %"39", %"41"
  br i1 %"42", label %main_bb14, label %main_bb15

main_bb14:                                        ; preds = %main_bb13
  %"43" = load i32* %"29", align 4
  %"44" = sub nsw i32 %"43", 1
  store i32 %"44", i32* %"29", align 4
  br label %main_bb16

main_bb15:                                        ; preds = %main_bb13
  %"45" = load i32* %"30", align 4
  %"46" = sub nsw i32 %"45", 1
  store i32 %"46", i32* %"30", align 4
  br label %main_bb16

main_bb16:                                        ; preds = %main_bb15, %main_bb14, %main_bb12
  %"47" = load i32* %"31", align 4
  %"48" = add nsw i32 %"47", 1
  store i32 %"48", i32* %"31", align 4
  br label %main_bb10

main_test_fun.exit:                               ; preds = %main_bb10
  %"49" = load i32* %"31", align 4
  call void @llvm.lifetime.end(i64 4, i8* %"24")
  call void @llvm.lifetime.end(i64 4, i8* %"25")
  call void @llvm.lifetime.end(i64 4, i8* %"26")
  ret i32 %"49"
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

