; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_HarrisLalNoriRajamani-2010SAS-Fig3_true-alloca/svcomp_HarrisLalNoriRajamani-2010SAS-Fig3_true-alloca.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@x = common global i32* null, align 8

; Function Attrs: nounwind uwtable
define i32 @foo() #0 {
foo_bb0:
  %"0" = call i32 @__kittel_nondef.0()
  %"1" = load i32** @x, align 8
  %"2" = load i32* %"1", align 4
  %"3" = add nsw i32 %"2", -1
  store i32 %"3", i32* %"1", align 4
  ret i32 %"0"
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb1:
  %"4" = alloca i8, i64 4
  %"5" = bitcast i8* %"4" to i32*
  store i32* %"5", i32** @x, align 8
  %"6" = call i32 @__VERIFIER_nondet_int()
  %"7" = load i32** @x, align 8
  store i32 %"6", i32* %"7", align 4
  br label %main_bb2

main_bb2:                                         ; preds = %main_bb3, %main_bb1
  %"8" = load i32** @x, align 8
  %"9" = load i32* %"8", align 4
  %"10" = icmp sgt i32 %"9", 0
  br i1 %"10", label %main_bb3, label %main_bb4

main_bb3:                                         ; preds = %main_bb2
  %"11" = call i32 @__VERIFIER_nondet_int()
  %"12" = call i32 @__kittel_nondef.0() #2
  %"13" = load i32** @x, align 8
  %"14" = load i32* %"13", align 4
  %"15" = add nsw i32 %"14", -1
  store i32 %"15", i32* %"13", align 4
  br label %main_bb2

main_bb4:                                         ; preds = %main_bb2
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

