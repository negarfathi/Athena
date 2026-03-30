; ModuleID = 'Benchmarks/TermCOMP/C/SV-COMP_Termination_Category/HarrisLalNoriRajamani-SAS2010-Fig3_true-termination/HarrisLalNoriRajamani-SAS2010-Fig3_true-termination.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"'x" = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define void @foo() #0 {
foo_bb0:
  %"0" = load i32* @"'x", align 4
  %"1" = add nsw i32 %"0", -1
  store i32 %"1", i32* @"'x", align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb1:
  %"2" = call i32 @__VERIFIER_nondet_int()
  store i32 %"2", i32* @"'x", align 4
  br label %main_bb2

main_bb2:                                         ; preds = %main_bb3, %main_bb1
  %"3" = load i32* @"'x", align 4
  %"4" = icmp sgt i32 %"3", 0
  br i1 %"4", label %main_bb3, label %main_bb4

main_bb3:                                         ; preds = %main_bb2
  %"5" = call i32 @__VERIFIER_nondet_int()
  %"6" = load i32* @"'x", align 4
  %"7" = add nsw i32 %"6", -1
  store i32 %"7", i32* @"'x", align 4
  br label %main_bb2

main_bb4:                                         ; preds = %main_bb2
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

