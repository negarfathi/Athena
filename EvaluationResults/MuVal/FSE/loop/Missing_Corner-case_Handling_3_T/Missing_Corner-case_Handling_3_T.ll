; ModuleID = 'Benchmarks/FSE/loop/Missing_Corner-case_Handling_3_T/Missing_Corner-case_Handling_3_T.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  %"0" = call i32 @__VERIFIER_nondet_int()
  %"1" = call i32 @__VERIFIER_nondet_int()
  %"2" = icmp sle i32 %"0", 0
  %"3" = icmp sle i32 %"1", 0
  %or.cond = or i1 %"2", %"3"
  %"4" = icmp sgt i32 %"0", 65534
  %or.cond1 = or i1 %or.cond, %"4"
  %"5" = icmp sgt i32 %"1", 65534
  %or.cond2 = or i1 %or.cond1, %"5"
  br i1 %or.cond2, label %main_bb13, label %main_bb1

main_bb1:                                         ; preds = %main_bb0
  %"6" = zext i32 %"0" to i64
  %"7" = zext i32 %"1" to i64
  %"8" = call i8* @llvm.stacksave()
  %"9" = mul nuw i64 %"6", %"7"
  %"10" = alloca i32, i64 %"9", align 16
  br label %main_bb2

main_bb2:                                         ; preds = %main_bb6, %main_bb1
  %i.0 = phi i32 [ 0, %main_bb1 ], [ %"23", %main_bb6 ]
  %"11" = icmp slt i32 %i.0, %"0"
  br i1 %"11", label %main_bb3, label %main_bb7

main_bb3:                                         ; preds = %main_bb2
  %"12" = sext i32 %i.0 to i64
  br label %main_bb4

main_bb4:                                         ; preds = %main_bb5, %main_bb3
  %j.0 = phi i32 [ 0, %main_bb3 ], [ %"22", %main_bb5 ]
  %"13" = icmp slt i32 %j.0, %"1"
  br i1 %"13", label %main_bb5, label %main_bb6

main_bb5:                                         ; preds = %main_bb4
  %"14" = call i32 @__VERIFIER_nondet_int()
  %"15" = icmp sgt i32 %"14", 0
  %"16" = sub nsw i32 0, %"14"
  %. = select i1 %"15", i32 %"16", i32 %"14"
  %"17" = srem i32 %., 4
  %"18" = sext i32 %j.0 to i64
  %"19" = mul nsw i64 %"12", %"7"
  %"20" = getelementptr inbounds i32* %"10", i64 %"19"
  %"21" = getelementptr inbounds i32* %"20", i64 %"18"
  store i32 %"17", i32* %"21", align 4
  %"22" = add nsw i32 %j.0, 1
  br label %main_bb4

main_bb6:                                         ; preds = %main_bb4
  %"23" = add nsw i32 %i.0, 1
  br label %main_bb2

main_bb7:                                         ; preds = %main_bb2, %main_bb11
  %xmin.0 = phi i32 [ %"36", %main_bb11 ], [ 0, %main_bb2 ]
  %found.0 = phi i32 [ %found.1, %main_bb11 ], [ 0, %main_bb2 ]
  %"24" = icmp ne i32 %found.0, 0
  %"25" = icmp slt i32 %xmin.0, %"0"
  %.3 = select i1 %"24", i1 false, i1 %"25"
  br i1 %.3, label %main_bb8, label %main_bb12

main_bb8:                                         ; preds = %main_bb7
  %"26" = sext i32 %xmin.0 to i64
  br label %main_bb9

main_bb9:                                         ; preds = %main_bb10, %main_bb8
  %y.0 = phi i32 [ 0, %main_bb8 ], [ %"35", %main_bb10 ]
  %found.1 = phi i32 [ %found.0, %main_bb8 ], [ %.found.1, %main_bb10 ]
  %"27" = sub nsw i32 %"1", 1
  %"28" = icmp sle i32 %y.0, %"27"
  br i1 %"28", label %main_bb10, label %main_bb11

main_bb10:                                        ; preds = %main_bb9
  %"29" = sext i32 %y.0 to i64
  %"30" = mul nsw i64 %"26", %"7"
  %"31" = getelementptr inbounds i32* %"10", i64 %"30"
  %"32" = getelementptr inbounds i32* %"31", i64 %"29"
  %"33" = load i32* %"32", align 4
  %"34" = icmp ne i32 %"33", 0
  %.found.1 = select i1 %"34", i32 1, i32 %found.1
  %"35" = add nsw i32 %y.0, 1
  br label %main_bb9

main_bb11:                                        ; preds = %main_bb9
  %"36" = add nsw i32 %xmin.0, 1
  br label %main_bb7

main_bb12:                                        ; preds = %main_bb7
  call void @llvm.stackrestore(i8* %"8")
  br label %main_bb13

main_bb13:                                        ; preds = %main_bb0, %main_bb12
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

