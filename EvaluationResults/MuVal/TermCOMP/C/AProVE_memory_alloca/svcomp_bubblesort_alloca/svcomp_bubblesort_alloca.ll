; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_bubblesort_alloca/svcomp_bubblesort_alloca.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define void @bubbleSort(i32* %numbers, i32 %array_size) #0 {
bubbleSort_bb0:
  %"0" = sub nsw i32 %array_size, 1
  br label %bubbleSort_bb1

bubbleSort_bb1:                                   ; preds = %bubbleSort_bb6, %bubbleSort_bb0
  %i.0 = phi i32 [ %"0", %bubbleSort_bb0 ], [ %"23", %bubbleSort_bb6 ]
  %"1" = icmp sge i32 %i.0, 0
  br i1 %"1", label %bubbleSort_bb2, label %bubbleSort_bb7

bubbleSort_bb2:                                   ; preds = %bubbleSort_bb1, %bubbleSort_bb5
  %j.0 = phi i32 [ %"22", %bubbleSort_bb5 ], [ 1, %bubbleSort_bb1 ]
  %"2" = icmp sle i32 %j.0, %i.0
  br i1 %"2", label %bubbleSort_bb3, label %bubbleSort_bb6

bubbleSort_bb3:                                   ; preds = %bubbleSort_bb2
  %"3" = sub nsw i32 %j.0, 1
  %"4" = sext i32 %"3" to i64
  %"5" = getelementptr inbounds i32* %numbers, i64 %"4"
  %"6" = load i32* %"5", align 4
  %"7" = sext i32 %j.0 to i64
  %"8" = getelementptr inbounds i32* %numbers, i64 %"7"
  %"9" = load i32* %"8", align 4
  %"10" = icmp sgt i32 %"6", %"9"
  br i1 %"10", label %bubbleSort_bb4, label %bubbleSort_bb5

bubbleSort_bb4:                                   ; preds = %bubbleSort_bb3
  %"11" = sext i32 %"3" to i64
  %"12" = getelementptr inbounds i32* %numbers, i64 %"11"
  %"13" = load i32* %"12", align 4
  %"14" = sext i32 %j.0 to i64
  %"15" = getelementptr inbounds i32* %numbers, i64 %"14"
  %"16" = load i32* %"15", align 4
  %"17" = sub nsw i32 %j.0, 1
  %"18" = sext i32 %"17" to i64
  %"19" = getelementptr inbounds i32* %numbers, i64 %"18"
  store i32 %"16", i32* %"19", align 4
  %"20" = sext i32 %j.0 to i64
  %"21" = getelementptr inbounds i32* %numbers, i64 %"20"
  store i32 %"13", i32* %"21", align 4
  br label %bubbleSort_bb5

bubbleSort_bb5:                                   ; preds = %bubbleSort_bb3, %bubbleSort_bb4
  %"22" = add nsw i32 %j.0, 1
  br label %bubbleSort_bb2

bubbleSort_bb6:                                   ; preds = %bubbleSort_bb2
  %"23" = add nsw i32 %i.0, -1
  br label %bubbleSort_bb1

bubbleSort_bb7:                                   ; preds = %bubbleSort_bb1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb8:
  %"24" = call i32 @__VERIFIER_nondet_int()
  %"25" = icmp slt i32 %"24", 1
  %. = select i1 %"25", i32 1, i32 %"24"
  %"26" = sext i32 %. to i64
  %"27" = mul i64 %"26", 4
  %"28" = alloca i8, i64 %"27"
  %"29" = bitcast i8* %"28" to i32*
  %"30" = sub nsw i32 %., 1
  br label %main_bb9

main_bb9:                                         ; preds = %main_bb14, %main_bb8
  %i.0.i = phi i32 [ %"30", %main_bb8 ], [ %"53", %main_bb14 ]
  %"31" = icmp sge i32 %i.0.i, 0
  br i1 %"31", label %main_bb10, label %main_bubbleSort.exit

main_bb10:                                        ; preds = %main_bb13, %main_bb9
  %j.0.i = phi i32 [ %"52", %main_bb13 ], [ 1, %main_bb9 ]
  %"32" = icmp sle i32 %j.0.i, %i.0.i
  br i1 %"32", label %main_bb11, label %main_bb14

main_bb11:                                        ; preds = %main_bb10
  %"33" = sub nsw i32 %j.0.i, 1
  %"34" = sext i32 %"33" to i64
  %"35" = getelementptr inbounds i32* %"29", i64 %"34"
  %"36" = load i32* %"35", align 4
  %"37" = sext i32 %j.0.i to i64
  %"38" = getelementptr inbounds i32* %"29", i64 %"37"
  %"39" = load i32* %"38", align 4
  %"40" = icmp sgt i32 %"36", %"39"
  br i1 %"40", label %main_bb12, label %main_bb13

main_bb12:                                        ; preds = %main_bb11
  %"41" = sext i32 %"33" to i64
  %"42" = getelementptr inbounds i32* %"29", i64 %"41"
  %"43" = load i32* %"42", align 4
  %"44" = sext i32 %j.0.i to i64
  %"45" = getelementptr inbounds i32* %"29", i64 %"44"
  %"46" = load i32* %"45", align 4
  %"47" = sub nsw i32 %j.0.i, 1
  %"48" = sext i32 %"47" to i64
  %"49" = getelementptr inbounds i32* %"29", i64 %"48"
  store i32 %"46", i32* %"49", align 4
  %"50" = sext i32 %j.0.i to i64
  %"51" = getelementptr inbounds i32* %"29", i64 %"50"
  store i32 %"43", i32* %"51", align 4
  br label %main_bb13

main_bb13:                                        ; preds = %main_bb12, %main_bb11
  %"52" = add nsw i32 %j.0.i, 1
  br label %main_bb10

main_bb14:                                        ; preds = %main_bb10
  %"53" = add nsw i32 %i.0.i, -1
  br label %main_bb9

main_bubbleSort.exit:                             ; preds = %main_bb9
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32* @__kittel_nondef.0()

declare i32 @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

