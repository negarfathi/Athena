; ModuleID = 'Benchmarks/TermCOMP/C/SV-COMP_Termination_Category/AliasDarteFeautrierGonnord-SAS2010-Fig1_true-termination/AliasDarteFeautrierGonnord-SAS2010-Fig1_true-termination.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  %"0" = call i32 @__VERIFIER_nondet_int()
  br label %main_bb1

main_bb1:                                         ; preds = %main_bb6, %main_bb0
  %y.0 = phi i32 [ 0, %main_bb0 ], [ %"10", %main_bb6 ]
  %x.0 = phi i32 [ %"0", %main_bb0 ], [ %x.1, %main_bb6 ]
  %"1" = icmp sge i32 %x.0, 0
  %"2" = icmp sge i32 %y.0, 0
  %. = select i1 %"1", i1 %"2", i1 false
  br i1 %., label %main_bb2, label %main_bb7

main_bb2:                                         ; preds = %main_bb1
  %"3" = call i32 @__VERIFIER_nondet_int()
  %"4" = icmp ne i32 %"3", 0
  br i1 %"4", label %main_bb3, label %main_bb6

main_bb3:                                         ; preds = %main_bb2, %main_bb5
  %y.1 = phi i32 [ %"8", %main_bb5 ], [ %y.0, %main_bb2 ]
  %"5" = icmp sle i32 %y.1, %"0"
  br i1 %"5", label %main_bb4, label %main_.critedge

main_bb4:                                         ; preds = %main_bb3
  %"6" = call i32 @__VERIFIER_nondet_int()
  %"7" = icmp ne i32 %"6", 0
  br i1 %"7", label %main_bb5, label %main_.critedge

main_bb5:                                         ; preds = %main_bb4
  %"8" = add nsw i32 %y.1, 1
  br label %main_bb3

main_.critedge:                                   ; preds = %main_bb3, %main_bb4
  %"9" = add nsw i32 %x.0, -1
  br label %main_bb6

main_bb6:                                         ; preds = %main_.critedge, %main_bb2
  %y.2 = phi i32 [ %y.1, %main_.critedge ], [ %y.0, %main_bb2 ]
  %x.1 = phi i32 [ %"9", %main_.critedge ], [ %x.0, %main_bb2 ]
  %"10" = add nsw i32 %y.2, -1
  br label %main_bb1

main_bb7:                                         ; preds = %main_bb1
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

