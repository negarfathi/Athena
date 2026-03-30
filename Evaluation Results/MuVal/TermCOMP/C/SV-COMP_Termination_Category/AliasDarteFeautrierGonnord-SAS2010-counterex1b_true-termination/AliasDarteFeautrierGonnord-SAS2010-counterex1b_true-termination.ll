; ModuleID = 'Benchmarks/TermCOMP/C/SV-COMP_Termination_Category/AliasDarteFeautrierGonnord-SAS2010-counterex1b_true-termination/AliasDarteFeautrierGonnord-SAS2010-counterex1b_true-termination.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  %"0" = call i32 @__VERIFIER_nondet_int()
  %"1" = call i32 @__VERIFIER_nondet_int()
  %"2" = call i32 @__VERIFIER_nondet_int()
  br label %main_.critedge1

main_.critedge1:                                  ; preds = %main_bb5, %main_bb4, %main_bb0
  %x.0 = phi i32 [ %"1", %main_bb0 ], [ %"8", %main_bb4 ], [ %"8", %main_bb5 ]
  %y.0 = phi i32 [ %"2", %main_bb0 ], [ %y.2, %main_bb4 ], [ %y.2, %main_bb5 ]
  %"3" = icmp sge i32 %x.0, 0
  br i1 %"3", label %main_bb1, label %main_bb7

main_bb1:                                         ; preds = %main_.critedge1, %main_bb3
  %y.1 = phi i32 [ %"7", %main_bb3 ], [ %y.0, %main_.critedge1 ]
  %"4" = icmp sge i32 %y.1, 0
  br i1 %"4", label %main_bb2, label %main_.critedge

main_bb2:                                         ; preds = %main_bb1
  %"5" = call i32 @__VERIFIER_nondet_int()
  %"6" = icmp ne i32 %"5", 0
  br i1 %"6", label %main_bb3, label %main_.critedge

main_bb3:                                         ; preds = %main_bb2
  %"7" = add nsw i32 %y.1, -1
  br label %main_bb1

main_.critedge:                                   ; preds = %main_bb1, %main_bb2
  %"8" = add nsw i32 %x.0, -1
  br label %main_bb4

main_bb4:                                         ; preds = %main_bb6, %main_.critedge
  %y.2 = phi i32 [ %y.1, %main_.critedge ], [ %"12", %main_bb6 ]
  %"9" = icmp sle i32 %y.2, %"0"
  br i1 %"9", label %main_bb5, label %main_.critedge1

main_bb5:                                         ; preds = %main_bb4
  %"10" = call i32 @__VERIFIER_nondet_int()
  %"11" = icmp ne i32 %"10", 0
  br i1 %"11", label %main_bb6, label %main_.critedge1

main_bb6:                                         ; preds = %main_bb5
  %"12" = add nsw i32 %y.2, 1
  br label %main_bb4

main_bb7:                                         ; preds = %main_.critedge1
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

