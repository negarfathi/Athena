; ModuleID = 'Benchmarks/FSE/loop/Undefined_Behavior_2_T/Undefined_Behavior_2_T.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @ffs(i32 %w) #0 {
ffs_bb0:
  br label %ffs_bb1

ffs_bb1:                                          ; preds = %ffs_bb2, %ffs_bb0
  %i.0 = phi i32 [ 1, %ffs_bb0 ], [ %"2", %ffs_bb2 ]
  %.0 = phi i32 [ %w, %ffs_bb0 ], [ %"3", %ffs_bb2 ]
  %"0" = urem i32 %.0, 2
  %"1" = icmp eq i32 %"0", 0
  br i1 %"1", label %ffs_bb2, label %ffs_bb3

ffs_bb2:                                          ; preds = %ffs_bb1
  %"2" = add i32 %i.0, 1
  %"3" = udiv i32 %.0, 2
  br label %ffs_bb1

ffs_bb3:                                          ; preds = %ffs_bb1
  ret i32 %i.0
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb4:
  %"4" = call i32 @__VERIFIER_nondet_uint()
  br label %main_bb5

main_bb5:                                         ; preds = %main_ffs.exit, %main_bb4
  %w.0 = phi i32 [ %"4", %main_bb4 ], [ %w.1, %main_ffs.exit ]
  %"5" = icmp ne i32 %w.0, 0
  br i1 %"5", label %main_bb6, label %main_bb8

main_bb6:                                         ; preds = %main_bb5, %main_bb7
  %i.0.i = phi i32 [ %"8", %main_bb7 ], [ 1, %main_bb5 ]
  %.0.i = phi i32 [ %"9", %main_bb7 ], [ %w.0, %main_bb5 ]
  %"6" = urem i32 %.0.i, 2
  %"7" = icmp eq i32 %"6", 0
  br i1 %"7", label %main_bb7, label %main_ffs.exit

main_bb7:                                         ; preds = %main_bb6
  %"8" = add i32 %i.0.i, 1
  %"9" = udiv i32 %.0.i, 2
  br label %main_bb6

main_ffs.exit:                                    ; preds = %main_bb6
  %"10" = icmp ult i32 %i.0.i, 32
  %"11" = lshr i32 %w.0, %i.0.i
  %w.1 = select i1 %"10", i32 %"11", i32 0
  br label %main_bb5

main_bb8:                                         ; preds = %main_bb5
  ret i32 0
}

declare i32 @__VERIFIER_nondet_uint() #1

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

