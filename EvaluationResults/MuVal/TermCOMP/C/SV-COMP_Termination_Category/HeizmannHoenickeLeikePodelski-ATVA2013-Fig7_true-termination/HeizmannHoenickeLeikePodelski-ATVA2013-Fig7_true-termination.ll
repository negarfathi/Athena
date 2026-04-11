; ModuleID = 'Benchmarks/TermCOMP/C/SV-COMP_Termination_Category/HeizmannHoenickeLeikePodelski-ATVA2013-Fig7_true-termination/HeizmannHoenickeLeikePodelski-ATVA2013-Fig7_true-termination.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  %"0" = call i32 @__VERIFIER_nondet_int()
  %"1" = icmp slt i32 %"0", 1
  br i1 %"1", label %main_bb6, label %main_bb1

main_bb1:                                         ; preds = %main_bb0
  %"2" = zext i32 %"0" to i64
  %"3" = call i8* @llvm.stacksave()
  %"4" = alloca i32, i64 %"2", align 16
  br label %main_bb2

main_bb2:                                         ; preds = %main_bb4, %main_bb1
  %i.0 = phi i32 [ 0, %main_bb1 ], [ %"14", %main_bb4 ]
  %"5" = icmp slt i32 %i.0, %"0"
  br i1 %"5", label %main_bb3, label %main_bb5

main_bb3:                                         ; preds = %main_bb2
  %"6" = sext i32 %i.0 to i64
  %"7" = getelementptr inbounds i32* %"4", i64 %"6"
  %"8" = load i32* %"7", align 4
  %"9" = icmp slt i32 %"8", 0
  br i1 %"9", label %main_bb5, label %main_bb4

main_bb4:                                         ; preds = %main_bb3
  %"10" = add nsw i32 %i.0, 1
  %"11" = sext i32 %i.0 to i64
  %"12" = getelementptr inbounds i32* %"4", i64 %"11"
  %"13" = load i32* %"12", align 4
  %"14" = add nsw i32 %"10", %"13"
  br label %main_bb2

main_bb5:                                         ; preds = %main_bb3, %main_bb2
  call void @llvm.stackrestore(i8* %"3")
  br label %main_bb6

main_bb6:                                         ; preds = %main_bb0, %main_bb5
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int() #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare i32 @__kittel_nondef.0()

declare i8* @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

