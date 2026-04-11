; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_b.06-alloca/svcomp_b.06-alloca.bc'
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
  %"7" = icmp sgt i32 %"6", 0
  br i1 %"7", label %test_fun_bb2, label %test_fun_.critedge

test_fun_bb2:                                     ; preds = %test_fun_bb1
  %"8" = load i32* %"3", align 4
  %"9" = icmp sgt i32 %"8", 0
  br i1 %"9", label %test_fun_bb3, label %test_fun_.critedge

test_fun_bb3:                                     ; preds = %test_fun_bb2
  %"10" = load i32* %"1", align 4
  %"11" = sub nsw i32 %"10", 1
  store i32 %"11", i32* %"1", align 4
  %"12" = load i32* %"3", align 4
  %"13" = sub nsw i32 %"12", 1
  store i32 %"13", i32* %"3", align 4
  %"14" = load i32* %"5", align 4
  %"15" = add nsw i32 %"14", 1
  store i32 %"15", i32* %"5", align 4
  br label %test_fun_bb1

test_fun_.critedge:                               ; preds = %test_fun_bb1, %test_fun_bb2
  %"16" = load i32* %"5", align 4
  ret i32 %"16"
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb4:
  %"17" = alloca i8, i64 4
  %"18" = alloca i8, i64 4
  %"19" = alloca i8, i64 4
  %"20" = call i32 @__VERIFIER_nondet_int()
  %"21" = call i32 @__VERIFIER_nondet_int()
  call void @llvm.lifetime.start(i64 4, i8* %"17")
  call void @llvm.lifetime.start(i64 4, i8* %"18")
  call void @llvm.lifetime.start(i64 4, i8* %"19")
  %"22" = bitcast i8* %"17" to i32*
  %"23" = bitcast i8* %"18" to i32*
  %"24" = bitcast i8* %"19" to i32*
  store i32 %"20", i32* %"22", align 4
  store i32 %"21", i32* %"23", align 4
  store i32 0, i32* %"24", align 4
  br label %main_bb5

main_bb5:                                         ; preds = %main_bb7, %main_bb4
  %"25" = load i32* %"22", align 4
  %"26" = icmp sgt i32 %"25", 0
  br i1 %"26", label %main_bb6, label %main_test_fun.exit

main_bb6:                                         ; preds = %main_bb5
  %"27" = load i32* %"23", align 4
  %"28" = icmp sgt i32 %"27", 0
  br i1 %"28", label %main_bb7, label %main_test_fun.exit

main_bb7:                                         ; preds = %main_bb6
  %"29" = load i32* %"22", align 4
  %"30" = sub nsw i32 %"29", 1
  store i32 %"30", i32* %"22", align 4
  %"31" = load i32* %"23", align 4
  %"32" = sub nsw i32 %"31", 1
  store i32 %"32", i32* %"23", align 4
  %"33" = load i32* %"24", align 4
  %"34" = add nsw i32 %"33", 1
  store i32 %"34", i32* %"24", align 4
  br label %main_bb5

main_test_fun.exit:                               ; preds = %main_bb5, %main_bb6
  %"35" = load i32* %"24", align 4
  call void @llvm.lifetime.end(i64 4, i8* %"17")
  call void @llvm.lifetime.end(i64 4, i8* %"18")
  call void @llvm.lifetime.end(i64 4, i8* %"19")
  ret i32 %"35"
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

