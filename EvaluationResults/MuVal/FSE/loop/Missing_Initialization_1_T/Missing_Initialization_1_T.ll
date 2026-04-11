; ModuleID = 'Benchmarks/FSE/loop/Missing_Initialization_1_T/Missing_Initialization_1_T.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  %"0" = call i32 @__VERIFIER_nondet_int()
  br label %main_bb1

main_bb1:                                         ; preds = %main_bb2, %main_bb3, %main_bb0
  %pkt.0 = phi i32 [ %"0", %main_bb0 ], [ %pkt.1, %main_bb2 ], [ %"4", %main_bb3 ]
  %"1" = icmp slt i32 %pkt.0, 10
  br i1 %"1", label %main_bb2, label %main_bb4

main_bb2:                                         ; preds = %main_bb3, %main_bb1
  %res.0 = phi i32 [ 0, %main_bb1 ], [ %"3", %main_bb3 ]
  %pkt.1 = phi i32 [ %pkt.0, %main_bb1 ], [ %"4", %main_bb3 ]
  %"2" = icmp eq i32 %res.0, 0
  br i1 %"2", label %main_bb3, label %main_bb1

main_bb3:                                         ; preds = %main_bb2
  %"3" = call i32 @__VERIFIER_nondet_int()
  %"4" = add nsw i32 %pkt.1, 1
  %"5" = icmp eq i32 %"3", 0
  br i1 %"5", label %main_bb1, label %main_bb2

main_bb4:                                         ; preds = %main_bb1
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

