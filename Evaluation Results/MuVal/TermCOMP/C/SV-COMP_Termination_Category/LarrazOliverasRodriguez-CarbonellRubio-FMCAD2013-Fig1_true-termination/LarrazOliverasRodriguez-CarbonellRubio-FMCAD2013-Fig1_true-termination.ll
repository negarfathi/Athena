; ModuleID = 'Benchmarks/TermCOMP/C/SV-COMP_Termination_Category/LarrazOliverasRodriguez-CarbonellRubio-FMCAD2013-Fig1_true-termination/LarrazOliverasRodriguez-CarbonellRubio-FMCAD2013-Fig1_true-termination.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  %"0" = call i32 @__VERIFIER_nondet_int()
  %"1" = call i32 @__VERIFIER_nondet_int()
  %"2" = call i32 @__VERIFIER_nondet_int()
  %"3" = icmp sgt i32 %"0", 10000
  %"4" = icmp slt i32 %"0", -10000
  %or.cond = or i1 %"3", %"4"
  %"5" = icmp sgt i32 %"1", 10000
  %or.cond1 = or i1 %or.cond, %"5"
  %"6" = icmp sgt i32 %"2", 10000
  %or.cond2 = or i1 %or.cond1, %"6"
  br i1 %or.cond2, label %main_bb6, label %main_bb1

main_bb1:                                         ; preds = %main_bb0, %main_bb5
  %z.0 = phi i32 [ %z.1, %main_bb5 ], [ %"2", %main_bb0 ]
  %y.0 = phi i32 [ %"12", %main_bb5 ], [ %"1", %main_bb0 ]
  %x.0 = phi i32 [ %x.1, %main_bb5 ], [ %"0", %main_bb0 ]
  %"7" = icmp sge i32 %y.0, 1
  br i1 %"7", label %main_bb2, label %main_bb6

main_bb2:                                         ; preds = %main_bb1
  %"8" = add nsw i32 %x.0, -1
  br label %main_bb3

main_bb3:                                         ; preds = %main_bb4, %main_bb2
  %z.1 = phi i32 [ %z.0, %main_bb2 ], [ %"11", %main_bb4 ]
  %x.1 = phi i32 [ %"8", %main_bb2 ], [ %"10", %main_bb4 ]
  %"9" = icmp slt i32 %y.0, %z.1
  br i1 %"9", label %main_bb4, label %main_bb5

main_bb4:                                         ; preds = %main_bb3
  %"10" = add nsw i32 %x.1, 1
  %"11" = add nsw i32 %z.1, -1
  br label %main_bb3

main_bb5:                                         ; preds = %main_bb3
  %"12" = add nsw i32 %x.1, %y.0
  br label %main_bb1

main_bb6:                                         ; preds = %main_bb1, %main_bb0
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

