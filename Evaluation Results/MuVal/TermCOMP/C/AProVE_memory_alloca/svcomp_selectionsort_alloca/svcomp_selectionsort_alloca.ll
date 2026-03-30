; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_selectionsort_alloca/svcomp_selectionsort_alloca.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define void @SelectionSort(i32* %a, i32 %array_size) #0 {
SelectionSort_bb0:
  br label %SelectionSort_bb1

SelectionSort_bb1:                                ; preds = %SelectionSort_bb4, %SelectionSort_bb0
  %i.0 = phi i32 [ 0, %SelectionSort_bb0 ], [ %"21", %SelectionSort_bb4 ]
  %"0" = sub nsw i32 %array_size, 1
  %"1" = icmp slt i32 %i.0, %"0"
  br i1 %"1", label %SelectionSort_bb2, label %SelectionSort_bb5

SelectionSort_bb2:                                ; preds = %SelectionSort_bb1, %SelectionSort_bb3
  %j.0.sink = phi i32 [ %"2", %SelectionSort_bb3 ], [ %i.0, %SelectionSort_bb1 ]
  %min.0 = phi i32 [ %j.0.min.0, %SelectionSort_bb3 ], [ %i.0, %SelectionSort_bb1 ]
  %"2" = add nsw i32 %j.0.sink, 1
  %"3" = icmp slt i32 %"2", %array_size
  br i1 %"3", label %SelectionSort_bb3, label %SelectionSort_bb4

SelectionSort_bb3:                                ; preds = %SelectionSort_bb2
  %"4" = sext i32 %"2" to i64
  %"5" = getelementptr inbounds i32* %a, i64 %"4"
  %"6" = load i32* %"5", align 4
  %"7" = sext i32 %min.0 to i64
  %"8" = getelementptr inbounds i32* %a, i64 %"7"
  %"9" = load i32* %"8", align 4
  %"10" = icmp slt i32 %"6", %"9"
  %j.0.min.0 = select i1 %"10", i32 %"2", i32 %min.0
  br label %SelectionSort_bb2

SelectionSort_bb4:                                ; preds = %SelectionSort_bb2
  %"11" = sext i32 %i.0 to i64
  %"12" = getelementptr inbounds i32* %a, i64 %"11"
  %"13" = load i32* %"12", align 4
  %"14" = sext i32 %min.0 to i64
  %"15" = getelementptr inbounds i32* %a, i64 %"14"
  %"16" = load i32* %"15", align 4
  %"17" = sext i32 %i.0 to i64
  %"18" = getelementptr inbounds i32* %a, i64 %"17"
  store i32 %"16", i32* %"18", align 4
  %"19" = sext i32 %min.0 to i64
  %"20" = getelementptr inbounds i32* %a, i64 %"19"
  store i32 %"13", i32* %"20", align 4
  %"21" = add nsw i32 %i.0, 1
  br label %SelectionSort_bb1

SelectionSort_bb5:                                ; preds = %SelectionSort_bb1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb6:
  %"22" = call i32 @__VERIFIER_nondet_int()
  %"23" = icmp slt i32 %"22", 1
  %. = select i1 %"23", i32 1, i32 %"22"
  %"24" = sext i32 %. to i64
  %"25" = mul i64 %"24", 4
  %"26" = alloca i8, i64 %"25"
  %"27" = bitcast i8* %"26" to i32*
  br label %main_bb7

main_bb7:                                         ; preds = %main_bb10, %main_bb6
  %i.0.i = phi i32 [ 0, %main_bb6 ], [ %"49", %main_bb10 ]
  %"28" = sub nsw i32 %., 1
  %"29" = icmp slt i32 %i.0.i, %"28"
  br i1 %"29", label %main_bb8, label %main_SelectionSort.exit

main_bb8:                                         ; preds = %main_bb9, %main_bb7
  %j.0.sink.i = phi i32 [ %"30", %main_bb9 ], [ %i.0.i, %main_bb7 ]
  %min.0.i = phi i32 [ %j.0.min.0.i, %main_bb9 ], [ %i.0.i, %main_bb7 ]
  %"30" = add nsw i32 %j.0.sink.i, 1
  %"31" = icmp slt i32 %"30", %.
  br i1 %"31", label %main_bb9, label %main_bb10

main_bb9:                                         ; preds = %main_bb8
  %"32" = sext i32 %"30" to i64
  %"33" = getelementptr inbounds i32* %"27", i64 %"32"
  %"34" = load i32* %"33", align 4
  %"35" = sext i32 %min.0.i to i64
  %"36" = getelementptr inbounds i32* %"27", i64 %"35"
  %"37" = load i32* %"36", align 4
  %"38" = icmp slt i32 %"34", %"37"
  %j.0.min.0.i = select i1 %"38", i32 %"30", i32 %min.0.i
  br label %main_bb8

main_bb10:                                        ; preds = %main_bb8
  %"39" = sext i32 %i.0.i to i64
  %"40" = getelementptr inbounds i32* %"27", i64 %"39"
  %"41" = load i32* %"40", align 4
  %"42" = sext i32 %min.0.i to i64
  %"43" = getelementptr inbounds i32* %"27", i64 %"42"
  %"44" = load i32* %"43", align 4
  %"45" = sext i32 %i.0.i to i64
  %"46" = getelementptr inbounds i32* %"27", i64 %"45"
  store i32 %"44", i32* %"46", align 4
  %"47" = sext i32 %min.0.i to i64
  %"48" = getelementptr inbounds i32* %"27", i64 %"47"
  store i32 %"41", i32* %"48", align 4
  %"49" = add nsw i32 %i.0.i, 1
  br label %main_bb7

main_SelectionSort.exit:                          ; preds = %main_bb7
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32* @__kittel_nondef.0()

declare i32 @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

