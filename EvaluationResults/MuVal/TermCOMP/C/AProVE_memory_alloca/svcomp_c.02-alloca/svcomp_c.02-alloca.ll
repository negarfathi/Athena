; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_c.02-alloca/svcomp_c.02-alloca.bc'
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

test_fun_bb1:                                     ; preds = %test_fun_bb5, %test_fun_bb0
  %"6" = load i32* %"1", align 4
  %"7" = icmp sge i32 %"6", 0
  br i1 %"7", label %test_fun_bb2, label %test_fun_bb6

test_fun_bb2:                                     ; preds = %test_fun_bb1
  %"8" = load i32* %"1", align 4
  %"9" = add nsw i32 %"8", 1
  store i32 %"9", i32* %"1", align 4
  store i32 1, i32* %"3", align 4
  %"10" = load i32* %"1", align 4
  br label %test_fun_bb3

test_fun_bb3:                                     ; preds = %test_fun_bb4, %test_fun_bb2
  %"11" = load i32* %"3", align 4
  %"12" = icmp sgt i32 %"10", %"11"
  br i1 %"12", label %test_fun_bb4, label %test_fun_bb5

test_fun_bb4:                                     ; preds = %test_fun_bb3
  %"13" = load i32* %"3", align 4
  %"14" = add nsw i32 %"13", 1
  store i32 %"14", i32* %"3", align 4
  %"15" = load i32* %"5", align 4
  %"16" = add nsw i32 %"15", 1
  store i32 %"16", i32* %"5", align 4
  br label %test_fun_bb3

test_fun_bb5:                                     ; preds = %test_fun_bb3
  %"17" = load i32* %"1", align 4
  %"18" = sub nsw i32 %"17", 2
  store i32 %"18", i32* %"1", align 4
  br label %test_fun_bb1

test_fun_bb6:                                     ; preds = %test_fun_bb1
  %"19" = load i32* %"5", align 4
  ret i32 %"19"
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb7:
  %"20" = alloca i8, i64 4
  %"21" = alloca i8, i64 4
  %"22" = alloca i8, i64 4
  %"23" = call i32 @__VERIFIER_nondet_int()
  %"24" = call i32 @__VERIFIER_nondet_int()
  call void @llvm.lifetime.start(i64 4, i8* %"20")
  call void @llvm.lifetime.start(i64 4, i8* %"21")
  call void @llvm.lifetime.start(i64 4, i8* %"22")
  %"25" = bitcast i8* %"20" to i32*
  %"26" = bitcast i8* %"21" to i32*
  %"27" = bitcast i8* %"22" to i32*
  store i32 %"23", i32* %"25", align 4
  store i32 %"24", i32* %"26", align 4
  store i32 0, i32* %"27", align 4
  br label %main_bb8

main_bb8:                                         ; preds = %main_bb12, %main_bb7
  %"28" = load i32* %"25", align 4
  %"29" = icmp sge i32 %"28", 0
  br i1 %"29", label %main_bb9, label %main_test_fun.exit

main_bb9:                                         ; preds = %main_bb8
  %"30" = load i32* %"25", align 4
  %"31" = add nsw i32 %"30", 1
  store i32 %"31", i32* %"25", align 4
  store i32 1, i32* %"26", align 4
  %"32" = load i32* %"25", align 4
  br label %main_bb10

main_bb10:                                        ; preds = %main_bb11, %main_bb9
  %"33" = load i32* %"26", align 4
  %"34" = icmp sgt i32 %"32", %"33"
  br i1 %"34", label %main_bb11, label %main_bb12

main_bb11:                                        ; preds = %main_bb10
  %"35" = load i32* %"26", align 4
  %"36" = add nsw i32 %"35", 1
  store i32 %"36", i32* %"26", align 4
  %"37" = load i32* %"27", align 4
  %"38" = add nsw i32 %"37", 1
  store i32 %"38", i32* %"27", align 4
  br label %main_bb10

main_bb12:                                        ; preds = %main_bb10
  %"39" = load i32* %"25", align 4
  %"40" = sub nsw i32 %"39", 2
  store i32 %"40", i32* %"25", align 4
  br label %main_bb8

main_test_fun.exit:                               ; preds = %main_bb8
  %"41" = load i32* %"27", align 4
  call void @llvm.lifetime.end(i64 4, i8* %"20")
  call void @llvm.lifetime.end(i64 4, i8* %"21")
  call void @llvm.lifetime.end(i64 4, i8* %"22")
  ret i32 %"41"
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

