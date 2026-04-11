; ModuleID = 'Benchmarks/TermCOMP/C/Stroeder_15/CookSeeZuleger-TACAS2013-Fig7b_true-termination/CookSeeZuleger-TACAS2013-Fig7b_true-termination.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  %"0" = call i32 @__VERIFIER_nondet_int()
  %"1" = call i32 @__VERIFIER_nondet_int()
  %"2" = call i32 @__VERIFIER_nondet_int()
  br label %main_bb1

main_bb1:                                         ; preds = %main_bb3, %main_bb6, %main_bb5, %main_bb0
  %y.0 = phi i32 [ %"1", %main_bb0 ], [ %y.0, %main_bb3 ], [ %"11", %main_bb5 ], [ %y.0, %main_bb6 ]
  %x.0 = phi i32 [ %"0", %main_bb0 ], [ %"8", %main_bb3 ], [ %x.0, %main_bb5 ], [ %"14", %main_bb6 ]
  %z.0 = phi i32 [ %"2", %main_bb0 ], [ %z.0, %main_bb3 ], [ %"12", %main_bb5 ], [ %"13", %main_bb6 ]
  %"3" = icmp sgt i32 %x.0, 0
  %"4" = icmp sgt i32 %y.0, 0
  %or.cond = and i1 %"3", %"4"
  %"5" = icmp sgt i32 %z.0, 0
  %or.cond1 = and i1 %or.cond, %"5"
  br i1 %or.cond1, label %main_bb2, label %main_.critedge

main_bb2:                                         ; preds = %main_bb1
  %"6" = call i32 @__VERIFIER_nondet_int()
  %"7" = icmp ne i32 %"6", 0
  br i1 %"7", label %main_bb3, label %main_bb4

main_bb3:                                         ; preds = %main_bb2
  %"8" = sub nsw i32 %x.0, 1
  br label %main_bb1

main_bb4:                                         ; preds = %main_bb2
  %"9" = call i32 @__VERIFIER_nondet_int()
  %"10" = icmp ne i32 %"9", 0
  br i1 %"10", label %main_bb5, label %main_bb6

main_bb5:                                         ; preds = %main_bb4
  %"11" = sub nsw i32 %y.0, 1
  %"12" = call i32 @__VERIFIER_nondet_int()
  br label %main_bb1

main_bb6:                                         ; preds = %main_bb4
  %"13" = sub nsw i32 %z.0, 1
  %"14" = call i32 @__VERIFIER_nondet_int()
  br label %main_bb1

main_.critedge:                                   ; preds = %main_bb1
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

