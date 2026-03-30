; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_unsafe/svcomp_bubble_sort_unsafe/svcomp_bubble_sort_unsafe.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define void @bubble(i32* %a, i32 %N) #0 {
bubble_bb0:
  br label %bubble_bb1

bubble_bb1:                                       ; preds = %bubble_bb6, %bubble_bb0
  %i.0 = phi i32 [ %N, %bubble_bb0 ], [ %"22", %bubble_bb6 ]
  %"0" = icmp sge i32 %i.0, 1
  br i1 %"0", label %bubble_bb2, label %bubble_bb7

bubble_bb2:                                       ; preds = %bubble_bb1, %bubble_bb5
  %j.0 = phi i32 [ %"21", %bubble_bb5 ], [ 2, %bubble_bb1 ]
  %"1" = icmp sle i32 %j.0, %i.0
  br i1 %"1", label %bubble_bb3, label %bubble_bb6

bubble_bb3:                                       ; preds = %bubble_bb2
  %"2" = sub nsw i32 %j.0, 1
  %"3" = sext i32 %"2" to i64
  %"4" = getelementptr inbounds i32* %a, i64 %"3"
  %"5" = load i32* %"4", align 4
  %"6" = sext i32 %j.0 to i64
  %"7" = getelementptr inbounds i32* %a, i64 %"6"
  %"8" = load i32* %"7", align 4
  %"9" = icmp sgt i32 %"5", %"8"
  br i1 %"9", label %bubble_bb4, label %bubble_bb5

bubble_bb4:                                       ; preds = %bubble_bb3
  %"10" = sext i32 %"2" to i64
  %"11" = getelementptr inbounds i32* %a, i64 %"10"
  %"12" = load i32* %"11", align 4
  %"13" = sext i32 %j.0 to i64
  %"14" = getelementptr inbounds i32* %a, i64 %"13"
  %"15" = load i32* %"14", align 4
  %"16" = sub nsw i32 %j.0, 1
  %"17" = sext i32 %"16" to i64
  %"18" = getelementptr inbounds i32* %a, i64 %"17"
  store i32 %"15", i32* %"18", align 4
  %"19" = sext i32 %j.0 to i64
  %"20" = getelementptr inbounds i32* %a, i64 %"19"
  store i32 %"12", i32* %"20", align 4
  br label %bubble_bb5

bubble_bb5:                                       ; preds = %bubble_bb3, %bubble_bb4
  %"21" = add nsw i32 %j.0, 1
  br label %bubble_bb2

bubble_bb6:                                       ; preds = %bubble_bb2
  %"22" = add nsw i32 %i.0, -1
  br label %bubble_bb1

bubble_bb7:                                       ; preds = %bubble_bb1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb8:
  %"23" = call i32* @__kittel_nondef.0()
  %"24" = call i32 @__VERIFIER_nondet_int()
  br label %main_bb9

main_bb9:                                         ; preds = %main_bb14, %main_bb8
  %i.0.i = phi i32 [ %"24", %main_bb8 ], [ %"47", %main_bb14 ]
  %"25" = icmp sge i32 %i.0.i, 1
  br i1 %"25", label %main_bb10, label %main_bubble.exit

main_bb10:                                        ; preds = %main_bb13, %main_bb9
  %j.0.i = phi i32 [ %"46", %main_bb13 ], [ 2, %main_bb9 ]
  %"26" = icmp sle i32 %j.0.i, %i.0.i
  br i1 %"26", label %main_bb11, label %main_bb14

main_bb11:                                        ; preds = %main_bb10
  %"27" = sub nsw i32 %j.0.i, 1
  %"28" = sext i32 %"27" to i64
  %"29" = getelementptr inbounds i32* %"23", i64 %"28"
  %"30" = load i32* %"29", align 4
  %"31" = sext i32 %j.0.i to i64
  %"32" = getelementptr inbounds i32* %"23", i64 %"31"
  %"33" = load i32* %"32", align 4
  %"34" = icmp sgt i32 %"30", %"33"
  br i1 %"34", label %main_bb12, label %main_bb13

main_bb12:                                        ; preds = %main_bb11
  %"35" = sext i32 %"27" to i64
  %"36" = getelementptr inbounds i32* %"23", i64 %"35"
  %"37" = load i32* %"36", align 4
  %"38" = sext i32 %j.0.i to i64
  %"39" = getelementptr inbounds i32* %"23", i64 %"38"
  %"40" = load i32* %"39", align 4
  %"41" = sub nsw i32 %j.0.i, 1
  %"42" = sext i32 %"41" to i64
  %"43" = getelementptr inbounds i32* %"23", i64 %"42"
  store i32 %"40", i32* %"43", align 4
  %"44" = sext i32 %j.0.i to i64
  %"45" = getelementptr inbounds i32* %"23", i64 %"44"
  store i32 %"37", i32* %"45", align 4
  br label %main_bb13

main_bb13:                                        ; preds = %main_bb12, %main_bb11
  %"46" = add nsw i32 %j.0.i, 1
  br label %main_bb10

main_bb14:                                        ; preds = %main_bb10
  %"47" = add nsw i32 %i.0.i, -1
  br label %main_bb9

main_bubble.exit:                                 ; preds = %main_bb9
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32* @__kittel_nondef.0()

declare i32 @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

