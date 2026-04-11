; ModuleID = 'Benchmarks/TermCOMP/C/Ultimate/NonTermination3_false-termination/NonTermination3_false-termination.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  %a = alloca [10 x i32], align 16
  %"0" = call i32 (...)* @__VERIFIER_nondet_int()
  br label %main_bb1

main_bb1:                                         ; preds = %main_bb3, %main_bb0
  %i.0 = phi i32 [ %"0", %main_bb0 ], [ %"7", %main_bb3 ]
  %"1" = icmp sle i32 0, %i.0
  %"2" = icmp slt i32 %i.0, 10
  %or.cond = and i1 %"1", %"2"
  br i1 %or.cond, label %main_bb2, label %main_.critedge

main_bb2:                                         ; preds = %main_bb1
  %"3" = sext i32 %i.0 to i64
  %"4" = getelementptr inbounds [10 x i32]* %a, i32 0, i64 %"3"
  %"5" = load i32* %"4", align 4
  %"6" = icmp sge i32 %"5", 0
  br i1 %"6", label %main_bb3, label %main_.critedge

main_bb3:                                         ; preds = %main_bb2
  %"7" = call i32 (...)* @__VERIFIER_nondet_int()
  %"8" = sext i32 %"7" to i64
  %"9" = getelementptr inbounds [10 x i32]* %a, i32 0, i64 %"8"
  store i32 0, i32* %"9", align 4
  br label %main_bb1

main_.critedge:                                   ; preds = %main_bb1, %main_bb2
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int(...) #1

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

