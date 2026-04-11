; ModuleID = 'Benchmarks/FSE/loop/Unsigned_Wraparound_Error_3_NT/Unsigned_Wraparound_Error_3_NT.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  %"0" = call i32 @__VERIFIER_nondet_uint()
  %"1" = call i32 @__VERIFIER_nondet_uint()
  %"2" = call i32 @__VERIFIER_nondet_uint()
  %"3" = icmp eq i32 %"1", 0
  br i1 %"3", label %main_bb4, label %main_bb1

main_bb1:                                         ; preds = %main_bb0
  %"4" = add i32 %"1", %"2"
  %"5" = add i32 %"4", 1
  %"6" = icmp eq i32 %"5", -1
  br i1 %"6", label %main_bb4, label %main_bb2

main_bb2:                                         ; preds = %main_bb1, %main_bb3
  %newbufsize.0 = phi i32 [ %"10", %main_bb3 ], [ %"1", %main_bb1 ]
  %"7" = add i32 %"0", %"2"
  %"8" = add i32 %"7", 1
  %"9" = icmp ult i32 %newbufsize.0, %"8"
  br i1 %"9", label %main_bb3, label %main_bb4

main_bb3:                                         ; preds = %main_bb2
  %"10" = mul i32 %newbufsize.0, 2
  br label %main_bb2

main_bb4:                                         ; preds = %main_bb2, %main_bb1, %main_bb0
  ret i32 0
}

declare i32 @__VERIFIER_nondet_uint() #1

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

