; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_unsafe/svcomp_delete_alloca_unsafe/svcomp_delete_alloca_unsafe.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  %"0" = call i8* @__kittel_nondef.1()
  %"1" = call i32 @__VERIFIER_nondet_int()
  %"2" = icmp slt i32 %"1", 1
  %. = select i1 %"2", i32 1, i32 %"1"
  %"3" = sext i32 %. to i64
  %"4" = mul i64 %"3", 1
  %"5" = alloca i8, i64 %"4"
  %"6" = icmp ule i8* %"5", %"0"
  br i1 %"6", label %main_bb1, label %main_bb5

main_bb1:                                         ; preds = %main_bb0
  %"7" = sext i32 %. to i64
  %"8" = mul i64 %"7", 1
  %"9" = getelementptr inbounds i8* %"5", i64 %"8"
  %"10" = icmp ult i8* %"0", %"9"
  br i1 %"10", label %main_bb2, label %main_bb5

main_bb2:                                         ; preds = %main_bb1
  store i8 0, i8* %"0", align 1
  br label %main_bb3

main_bb3:                                         ; preds = %main_bb4, %main_bb2
  %x.0 = phi i8* [ %"5", %main_bb2 ], [ %"14", %main_bb4 ]
  %"11" = load i8* %x.0, align 1
  %"12" = sext i8 %"11" to i32
  %"13" = icmp ne i32 %"12", 0
  br i1 %"13", label %main_bb4, label %main_bb5

main_bb4:                                         ; preds = %main_bb3
  store i8 0, i8* %x.0, align 1
  %"14" = getelementptr inbounds i8* %x.0, i32 1
  br label %main_bb3

main_bb5:                                         ; preds = %main_bb3, %main_bb1, %main_bb0
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32 @__kittel_nondef.0()

declare i8* @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

