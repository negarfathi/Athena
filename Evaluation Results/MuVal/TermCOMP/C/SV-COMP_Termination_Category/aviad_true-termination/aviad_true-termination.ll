; ModuleID = 'Benchmarks/TermCOMP/C/SV-COMP_Termination_Category/aviad_true-termination/aviad_true-termination.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @f(i32 %a) #0 {
f_bb0:
  br label %f_bb1

f_bb1:                                            ; preds = %f_bb5, %f_bb0
  %count.0 = phi i32 [ 0, %f_bb0 ], [ %"5", %f_bb5 ]
  %.0 = phi i32 [ %a, %f_bb0 ], [ %.1, %f_bb5 ]
  %"0" = icmp sgt i32 %.0, 1
  br i1 %"0", label %f_bb2, label %f_bb6

f_bb2:                                            ; preds = %f_bb1
  %"1" = srem i32 %.0, 2
  %"2" = icmp eq i32 %"1", 0
  br i1 %"2", label %f_bb3, label %f_bb4

f_bb3:                                            ; preds = %f_bb2
  %"3" = sdiv i32 %.0, 2
  br label %f_bb5

f_bb4:                                            ; preds = %f_bb2
  %"4" = sub nsw i32 %.0, 1
  br label %f_bb5

f_bb5:                                            ; preds = %f_bb4, %f_bb3
  %.1 = phi i32 [ %"3", %f_bb3 ], [ %"4", %f_bb4 ]
  %"5" = add nsw i32 %count.0, 1
  br label %f_bb1

f_bb6:                                            ; preds = %f_bb1
  ret i32 %count.0
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb7:
  %"6" = call i32 @__VERIFIER_nondet_int()
  br label %main_bb8

main_bb8:                                         ; preds = %main_bb12, %main_bb7
  %count.0.i = phi i32 [ 0, %main_bb7 ], [ %"12", %main_bb12 ]
  %.0.i = phi i32 [ %"6", %main_bb7 ], [ %.1.i, %main_bb12 ]
  %"7" = icmp sgt i32 %.0.i, 1
  br i1 %"7", label %main_bb9, label %main_f.exit

main_bb9:                                         ; preds = %main_bb8
  %"8" = srem i32 %.0.i, 2
  %"9" = icmp eq i32 %"8", 0
  br i1 %"9", label %main_bb10, label %main_bb11

main_bb10:                                        ; preds = %main_bb9
  %"10" = sdiv i32 %.0.i, 2
  br label %main_bb12

main_bb11:                                        ; preds = %main_bb9
  %"11" = sub nsw i32 %.0.i, 1
  br label %main_bb12

main_bb12:                                        ; preds = %main_bb11, %main_bb10
  %.1.i = phi i32 [ %"10", %main_bb10 ], [ %"11", %main_bb11 ]
  %"12" = add nsw i32 %count.0.i, 1
  br label %main_bb8

main_f.exit:                                      ; preds = %main_bb8
  ret i32 %count.0.i
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

