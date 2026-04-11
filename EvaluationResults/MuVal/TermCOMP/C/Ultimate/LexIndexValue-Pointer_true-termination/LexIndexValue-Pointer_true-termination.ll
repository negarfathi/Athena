; ModuleID = 'Benchmarks/TermCOMP/C/Ultimate/LexIndexValue-Pointer_true-termination/LexIndexValue-Pointer_true-termination.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  %"0" = call noalias i8* @malloc(i64 4192) #3
  %"1" = bitcast i8* %"0" to i32*
  %"2" = getelementptr inbounds i32* %"1", i64 1048
  br label %main_bb1

main_bb1:                                         ; preds = %main_bb3, %main_bb4, %main_bb0
  %q.0 = phi i32* [ %"1", %main_bb0 ], [ %"8", %main_bb3 ], [ %q.0, %main_bb4 ]
  %"3" = load i32* %q.0, align 4
  %"4" = icmp sge i32 %"3", 0
  %"5" = icmp ult i32* %q.0, %"2"
  %. = select i1 %"4", i1 %"5", i1 false
  br i1 %., label %main_bb2, label %main_bb5

main_bb2:                                         ; preds = %main_bb1
  %"6" = call i32 @__VERIFIER_nondet_int()
  %"7" = icmp ne i32 %"6", 0
  br i1 %"7", label %main_bb3, label %main_bb4

main_bb3:                                         ; preds = %main_bb2
  %"8" = getelementptr inbounds i32* %q.0, i32 1
  br label %main_bb1

main_bb4:                                         ; preds = %main_bb2
  %"9" = load i32* %q.0, align 4
  %"10" = add nsw i32 %"9", -1
  store i32 %"10", i32* %q.0, align 4
  br label %main_bb1

main_bb5:                                         ; preds = %main_bb1
  ret i32 0
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare i32 @__VERIFIER_nondet_int() #2

declare i32 @__kittel_nondef.0()

declare i32* @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

