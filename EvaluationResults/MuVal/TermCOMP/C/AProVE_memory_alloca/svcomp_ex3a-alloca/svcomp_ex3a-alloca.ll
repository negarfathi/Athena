; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_ex3a-alloca/svcomp_ex3a-alloca.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @test_fun(i32 %x) #0 {
test_fun_bb0:
  %"0" = alloca i8, i64 4
  %"1" = bitcast i8* %"0" to i32*
  %"2" = alloca i8, i64 4
  %"3" = bitcast i8* %"2" to i32*
  store i32 %x, i32* %"1", align 4
  store i32 0, i32* %"3", align 4
  br label %test_fun_bb1

test_fun_bb1:                                     ; preds = %test_fun_bb3, %test_fun_bb0
  %"4" = load i32* %"1", align 4
  %"5" = icmp sgt i32 %"4", 1
  br i1 %"5", label %test_fun_bb2, label %test_fun_.critedge

test_fun_bb2:                                     ; preds = %test_fun_bb1
  %"6" = load i32* %"1", align 4
  %"7" = icmp slt i32 %"6", 100
  br i1 %"7", label %test_fun_bb3, label %test_fun_.critedge

test_fun_bb3:                                     ; preds = %test_fun_bb2
  %"8" = load i32* %"1", align 4
  %"9" = load i32* %"1", align 4
  %"10" = mul nsw i32 %"8", %"9"
  store i32 %"10", i32* %"1", align 4
  %"11" = load i32* %"3", align 4
  %"12" = add nsw i32 %"11", 1
  store i32 %"12", i32* %"3", align 4
  br label %test_fun_bb1

test_fun_.critedge:                               ; preds = %test_fun_bb1, %test_fun_bb2
  %"13" = load i32* %"3", align 4
  ret i32 %"13"
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb4:
  %"14" = alloca i8, i64 4
  %"15" = alloca i8, i64 4
  %"16" = call i32 @__VERIFIER_nondet_int()
  call void @llvm.lifetime.start(i64 4, i8* %"14")
  call void @llvm.lifetime.start(i64 4, i8* %"15")
  %"17" = bitcast i8* %"14" to i32*
  %"18" = bitcast i8* %"15" to i32*
  store i32 %"16", i32* %"17", align 4
  store i32 0, i32* %"18", align 4
  br label %main_bb5

main_bb5:                                         ; preds = %main_bb7, %main_bb4
  %"19" = load i32* %"17", align 4
  %"20" = icmp sgt i32 %"19", 1
  br i1 %"20", label %main_bb6, label %main_test_fun.exit

main_bb6:                                         ; preds = %main_bb5
  %"21" = load i32* %"17", align 4
  %"22" = icmp slt i32 %"21", 100
  br i1 %"22", label %main_bb7, label %main_test_fun.exit

main_bb7:                                         ; preds = %main_bb6
  %"23" = load i32* %"17", align 4
  %"24" = load i32* %"17", align 4
  %"25" = mul nsw i32 %"23", %"24"
  store i32 %"25", i32* %"17", align 4
  %"26" = load i32* %"18", align 4
  %"27" = add nsw i32 %"26", 1
  store i32 %"27", i32* %"18", align 4
  br label %main_bb5

main_test_fun.exit:                               ; preds = %main_bb5, %main_bb6
  %"28" = load i32* %"18", align 4
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

