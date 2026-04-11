; ModuleID = 'Benchmarks/TermCOMP/C/Stroeder_15/ChawdharyCookGulwaniSagivYang-ESOP2008-aaron1_true-termination/ChawdharyCookGulwaniSagivYang-ESOP2008-aaron1_true-termination.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  %"0" = call i32 @__VERIFIER_nondet_int()
  %"1" = call i32 @__VERIFIER_nondet_int()
  %"2" = call i32 @__VERIFIER_nondet_int()
  %"3" = call i32 @__VERIFIER_nondet_int()
  br label %main_bb1

main_bb1:                                         ; preds = %main_bb4, %main_bb7, %main_bb6, %main_bb0
  %j.0 = phi i32 [ %"1", %main_bb0 ], [ %j.1, %main_bb4 ], [ %j.0, %main_bb6 ], [ %j.2, %main_bb7 ]
  %i.0 = phi i32 [ %"0", %main_bb0 ], [ %i.1, %main_bb4 ], [ %"18", %main_bb6 ], [ %i.0, %main_bb7 ]
  %"4" = icmp sge i32 %"2", %i.0
  %"5" = icmp sge i32 %"3", %j.0
  %or.cond = and i1 %"4", %"5"
  br i1 %or.cond, label %main_.critedge, label %main_bb2

main_bb2:                                         ; preds = %main_bb1
  %"6" = icmp sge i32 %"2", %i.0
  %"7" = icmp sle i32 %"3", %j.0
  %or.cond1 = and i1 %"6", %"7"
  br i1 %or.cond1, label %main_.critedge, label %main_bb3

main_bb3:                                         ; preds = %main_bb2
  %"8" = icmp sle i32 %"2", %i.0
  %"9" = icmp sge i32 %"3", %j.0
  %. = select i1 %"8", i1 %"9", i1 false
  br i1 %., label %main_.critedge, label %main_bb8

main_.critedge:                                   ; preds = %main_bb2, %main_bb1, %main_bb3
  %"10" = icmp sge i32 %"2", %i.0
  %"11" = icmp sge i32 %"3", %j.0
  %or.cond3 = and i1 %"10", %"11"
  br i1 %or.cond3, label %main_bb4, label %main_bb5

main_bb4:                                         ; preds = %main_.critedge
  %"12" = call i32 @__VERIFIER_nondet_int()
  %"13" = icmp ne i32 %"12", 0
  %"14" = add nsw i32 %j.0, 1
  %"15" = add nsw i32 %i.0, 1
  %j.1 = select i1 %"13", i32 %"14", i32 %j.0
  %i.1 = select i1 %"13", i32 %i.0, i32 %"15"
  br label %main_bb1

main_bb5:                                         ; preds = %main_.critedge
  %"16" = icmp sge i32 %"2", %i.0
  %"17" = icmp sle i32 %"3", %j.0
  %or.cond4 = and i1 %"16", %"17"
  br i1 %or.cond4, label %main_bb6, label %main_bb7

main_bb6:                                         ; preds = %main_bb5
  %"18" = add nsw i32 %i.0, 1
  br label %main_bb1

main_bb7:                                         ; preds = %main_bb5
  %"19" = icmp sle i32 %"2", %i.0
  %"20" = icmp sge i32 %"3", %j.0
  %or.cond5 = and i1 %"19", %"20"
  %"21" = add nsw i32 %j.0, 1
  %j.2 = select i1 %or.cond5, i32 %"21", i32 %j.0
  br label %main_bb1

main_bb8:                                         ; preds = %main_bb3
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

