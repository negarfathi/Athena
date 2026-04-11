; ModuleID = 'Benchmarks/FSE/loop/Missing_Iterator_Update_5_T/Missing_Iterator_Update_5_T.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  %"0" = call i32 @__VERIFIER_nondet_int()
  %"1" = icmp sle i32 %"0", 0
  %"2" = icmp sgt i32 %"0", 1000
  %or.cond = or i1 %"1", %"2"
  br i1 %or.cond, label %main_bb9, label %main_bb1

main_bb1:                                         ; preds = %main_bb0
  %"3" = zext i32 %"0" to i64
  %"4" = call i8* @llvm.stacksave()
  %"5" = alloca i32, i64 %"3", align 16
  br label %main_bb2

main_bb2:                                         ; preds = %main_bb3, %main_bb1
  %i.0 = phi i32 [ 0, %main_bb1 ], [ %"10", %main_bb3 ]
  %"6" = icmp slt i32 %i.0, %"0"
  %"7" = call i32 @__VERIFIER_nondet_int()
  br i1 %"6", label %main_bb3, label %main_bb4

main_bb3:                                         ; preds = %main_bb2
  %"8" = sext i32 %i.0 to i64
  %"9" = getelementptr inbounds i32* %"5", i64 %"8"
  store i32 %"7", i32* %"9", align 4
  %"10" = add nsw i32 %i.0, 1
  br label %main_bb2

main_bb4:                                         ; preds = %main_bb2
  %"11" = icmp slt i32 %"7", 0
  br i1 %"11", label %main_bb8, label %main_bb5

main_bb5:                                         ; preds = %main_bb4, %main_bb7
  %entry.0 = phi i32 [ %"17", %main_bb7 ], [ %"7", %main_bb4 ]
  %"12" = icmp sge i32 %entry.0, %"0"
  br i1 %"12", label %main_bb8, label %main_bb6

main_bb6:                                         ; preds = %main_bb5
  %"13" = sext i32 %entry.0 to i64
  %"14" = getelementptr inbounds i32* %"5", i64 %"13"
  %"15" = load i32* %"14", align 4
  %"16" = icmp ne i32 %"15", 0
  br i1 %"16", label %main_bb7, label %main_bb8

main_bb7:                                         ; preds = %main_bb6
  %"17" = add nsw i32 %entry.0, 1
  br label %main_bb5

main_bb8:                                         ; preds = %main_bb6, %main_bb5, %main_bb4
  call void @llvm.stackrestore(i8* %"4")
  br label %main_bb9

main_bb9:                                         ; preds = %main_bb0, %main_bb8
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

