; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_numeric/svcomp_easySum/svcomp_easySum.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @iterate(i32 %bound) #0 {
iterate_bb0:
  br label %iterate_bb1

iterate_bb1:                                      ; preds = %iterate_bb2, %iterate_bb0
  %sum.0 = phi i32 [ 0, %iterate_bb0 ], [ %"1", %iterate_bb2 ]
  %i.0 = phi i32 [ 0, %iterate_bb0 ], [ %"2", %iterate_bb2 ]
  %"0" = icmp slt i32 %i.0, %bound
  br i1 %"0", label %iterate_bb2, label %iterate_bb3

iterate_bb2:                                      ; preds = %iterate_bb1
  %"1" = add nsw i32 %sum.0, %i.0
  %"2" = add nsw i32 %i.0, 1
  br label %iterate_bb1

iterate_bb3:                                      ; preds = %iterate_bb1
  ret i32 %sum.0
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb4:
  %"3" = call i32 @__VERIFIER_nondet_int()
  br label %main_bb5

main_bb5:                                         ; preds = %main_bb6, %main_bb4
  %sum.0.i = phi i32 [ 0, %main_bb4 ], [ %"5", %main_bb6 ]
  %i.0.i = phi i32 [ 0, %main_bb4 ], [ %"6", %main_bb6 ]
  %"4" = icmp slt i32 %i.0.i, %"3"
  br i1 %"4", label %main_bb6, label %main_iterate.exit

main_bb6:                                         ; preds = %main_bb5
  %"5" = add nsw i32 %sum.0.i, %i.0.i
  %"6" = add nsw i32 %i.0.i, 1
  br label %main_bb5

main_iterate.exit:                                ; preds = %main_bb5
  ret i32 %sum.0.i
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

