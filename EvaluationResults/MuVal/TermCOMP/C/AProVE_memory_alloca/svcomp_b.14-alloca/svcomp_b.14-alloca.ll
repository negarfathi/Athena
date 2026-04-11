; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_b.14-alloca/svcomp_b.14-alloca.bc'
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

test_fun_bb1:                                     ; preds = %test_fun_bb3, %test_fun_bb0
  %"6" = load i32* %"1", align 4
  %"7" = load i32* %"3", align 4
  %"8" = icmp eq i32 %"6", %"7"
  br i1 %"8", label %test_fun_bb2, label %test_fun_.critedge

test_fun_bb2:                                     ; preds = %test_fun_bb1
  %"9" = load i32* %"1", align 4
  %"10" = icmp sgt i32 %"9", 0
  br i1 %"10", label %test_fun_bb3, label %test_fun_.critedge

test_fun_bb3:                                     ; preds = %test_fun_bb2, %test_fun_bb4
  %"11" = load i32* %"3", align 4
  %"12" = icmp sgt i32 %"11", 0
  br i1 %"12", label %test_fun_bb4, label %test_fun_bb1

test_fun_bb4:                                     ; preds = %test_fun_bb3
  %"13" = load i32* %"1", align 4
  %"14" = sub nsw i32 %"13", 1
  store i32 %"14", i32* %"1", align 4
  %"15" = load i32* %"3", align 4
  %"16" = sub nsw i32 %"15", 1
  store i32 %"16", i32* %"3", align 4
  %"17" = load i32* %"5", align 4
  %"18" = add nsw i32 %"17", 1
  store i32 %"18", i32* %"5", align 4
  br label %test_fun_bb3

test_fun_.critedge:                               ; preds = %test_fun_bb1, %test_fun_bb2
  %"19" = load i32* %"5", align 4
  ret i32 %"19"
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb5:
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
  br label %main_bb6

main_bb6:                                         ; preds = %main_bb8, %main_bb5
  %"28" = load i32* %"25", align 4
  %"29" = load i32* %"26", align 4
  %"30" = icmp eq i32 %"28", %"29"
  br i1 %"30", label %main_bb7, label %main_test_fun.exit

main_bb7:                                         ; preds = %main_bb6
  %"31" = load i32* %"25", align 4
  %"32" = icmp sgt i32 %"31", 0
  br i1 %"32", label %main_bb8, label %main_test_fun.exit

main_bb8:                                         ; preds = %main_bb9, %main_bb7
  %"33" = load i32* %"26", align 4
  %"34" = icmp sgt i32 %"33", 0
  br i1 %"34", label %main_bb9, label %main_bb6

main_bb9:                                         ; preds = %main_bb8
  %"35" = load i32* %"25", align 4
  %"36" = sub nsw i32 %"35", 1
  store i32 %"36", i32* %"25", align 4
  %"37" = load i32* %"26", align 4
  %"38" = sub nsw i32 %"37", 1
  store i32 %"38", i32* %"26", align 4
  %"39" = load i32* %"27", align 4
  %"40" = add nsw i32 %"39", 1
  store i32 %"40", i32* %"27", align 4
  br label %main_bb8

main_test_fun.exit:                               ; preds = %main_bb6, %main_bb7
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

