; ModuleID = 'Benchmarks/FSE/loop/Unsigned_Wraparound_Error_1_T/Unsigned_Wraparound_Error_1_T.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  %"0" = call i32 @__VERIFIER_nondet_uint()
  %"1" = call i32 @__VERIFIER_nondet_uint()
  %"2" = call i32 @__VERIFIER_nondet_uint()
  %"3" = icmp ule i32 %"1", %"2"
  %"4" = icmp eq i32 %"0", 0
  %or.cond = or i1 %"3", %"4"
  br i1 %or.cond, label %main_bb3, label %main_bb1

main_bb1:                                         ; preds = %main_bb0, %main_bb2
  %cur.0 = phi i32 [ %"6", %main_bb2 ], [ %"0", %main_bb0 ]
  %"5" = icmp ult i32 %"1", %cur.0
  br i1 %"5", label %main_bb3, label %main_bb2

main_bb2:                                         ; preds = %main_bb1
  %"6" = add i32 %cur.0, %"0"
  %"7" = icmp ule i32 %"6", %cur.0
  br i1 %"7", label %main_bb3, label %main_bb1

main_bb3:                                         ; preds = %main_bb1, %main_bb2, %main_bb0
  ret i32 0
}

declare i32 @__VERIFIER_nondet_uint() #1

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

