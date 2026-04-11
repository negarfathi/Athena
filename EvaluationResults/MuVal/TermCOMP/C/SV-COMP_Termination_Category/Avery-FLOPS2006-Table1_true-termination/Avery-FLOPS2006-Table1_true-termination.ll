; ModuleID = 'Benchmarks/TermCOMP/C/SV-COMP_Termination_Category/Avery-FLOPS2006-Table1_true-termination/Avery-FLOPS2006-Table1_true-termination.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @subxy(i32 %x, i32 %y) #0 {
subxy_bb0:
  %"0" = icmp sle i32 %y, 0
  %"1" = icmp sle i32 %x, 0
  %or.cond = or i1 %"0", %"1"
  br i1 %or.cond, label %subxy_bb5, label %subxy_bb1

subxy_bb1:                                        ; preds = %subxy_bb0, %subxy_bb2
  %i.0 = phi i32 [ %"3", %subxy_bb2 ], [ %x, %subxy_bb0 ]
  %z.0 = phi i32 [ %"4", %subxy_bb2 ], [ 0, %subxy_bb0 ]
  %"2" = icmp sgt i32 %i.0, 0
  br i1 %"2", label %subxy_bb2, label %subxy_bb3

subxy_bb2:                                        ; preds = %subxy_bb1
  %"3" = add nsw i32 %i.0, -1
  %"4" = add nsw i32 %z.0, 1
  br label %subxy_bb1

subxy_bb3:                                        ; preds = %subxy_bb1, %subxy_bb4
  %i.1 = phi i32 [ %"6", %subxy_bb4 ], [ %i.0, %subxy_bb1 ]
  %z.1 = phi i32 [ %"7", %subxy_bb4 ], [ %z.0, %subxy_bb1 ]
  %"5" = icmp slt i32 %i.1, %y
  br i1 %"5", label %subxy_bb4, label %subxy_bb5

subxy_bb4:                                        ; preds = %subxy_bb3
  %"6" = add nsw i32 %i.1, 1
  %"7" = add nsw i32 %z.1, -1
  br label %subxy_bb3

subxy_bb5:                                        ; preds = %subxy_bb3, %subxy_bb0
  %.0 = phi i32 [ 0, %subxy_bb0 ], [ %z.1, %subxy_bb3 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb6:
  %"8" = call i32 @__VERIFIER_nondet_int()
  %"9" = call i32 @__VERIFIER_nondet_int()
  %"10" = icmp sle i32 %"9", 0
  %"11" = icmp sle i32 %"8", 0
  %or.cond.i = or i1 %"10", %"11"
  br i1 %or.cond.i, label %main_subxy.exit, label %main_bb7

main_bb7:                                         ; preds = %main_bb8, %main_bb6
  %i.0.i = phi i32 [ %"13", %main_bb8 ], [ %"8", %main_bb6 ]
  %z.0.i = phi i32 [ %"14", %main_bb8 ], [ 0, %main_bb6 ]
  %"12" = icmp sgt i32 %i.0.i, 0
  br i1 %"12", label %main_bb8, label %main_bb9

main_bb8:                                         ; preds = %main_bb7
  %"13" = add nsw i32 %i.0.i, -1
  %"14" = add nsw i32 %z.0.i, 1
  br label %main_bb7

main_bb9:                                         ; preds = %main_bb10, %main_bb7
  %i.1.i = phi i32 [ %"16", %main_bb10 ], [ %i.0.i, %main_bb7 ]
  %z.1.i = phi i32 [ %"17", %main_bb10 ], [ %z.0.i, %main_bb7 ]
  %"15" = icmp slt i32 %i.1.i, %"9"
  br i1 %"15", label %main_bb10, label %main_subxy.exit

main_bb10:                                        ; preds = %main_bb9
  %"16" = add nsw i32 %i.1.i, 1
  %"17" = add nsw i32 %z.1.i, -1
  br label %main_bb9

main_subxy.exit:                                  ; preds = %main_bb6, %main_bb9
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

