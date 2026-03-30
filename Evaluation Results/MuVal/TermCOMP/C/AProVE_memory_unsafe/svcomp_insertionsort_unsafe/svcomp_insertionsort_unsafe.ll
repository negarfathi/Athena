; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_unsafe/svcomp_insertionsort_unsafe/svcomp_insertionsort_unsafe.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define void @insertionSort(i32* %a, i32 %array_size) #0 {
insertionSort_bb0:
  br label %insertionSort_bb1

insertionSort_bb1:                                ; preds = %insertionSort_.critedge, %insertionSort_bb0
  %i.0 = phi i32 [ 1, %insertionSort_bb0 ], [ %"19", %insertionSort_.critedge ]
  %"0" = icmp slt i32 %i.0, %array_size
  br i1 %"0", label %insertionSort_bb2, label %insertionSort_bb6

insertionSort_bb2:                                ; preds = %insertionSort_bb1
  %"1" = sext i32 %i.0 to i64
  %"2" = getelementptr inbounds i32* %a, i64 %"1"
  %"3" = load i32* %"2", align 4
  br label %insertionSort_bb3

insertionSort_bb3:                                ; preds = %insertionSort_bb5, %insertionSort_bb2
  %j.0 = phi i32 [ %i.0, %insertionSort_bb2 ], [ %"16", %insertionSort_bb5 ]
  %"4" = icmp sgt i32 %j.0, 0
  br i1 %"4", label %insertionSort_bb4, label %insertionSort_.critedge

insertionSort_bb4:                                ; preds = %insertionSort_bb3
  %"5" = sub nsw i32 %j.0, 1
  %"6" = sext i32 %"5" to i64
  %"7" = getelementptr inbounds i32* %a, i64 %"6"
  %"8" = load i32* %"7", align 4
  %"9" = icmp sgt i32 %"8", %"3"
  br i1 %"9", label %insertionSort_bb5, label %insertionSort_.critedge

insertionSort_bb5:                                ; preds = %insertionSort_bb4
  %"10" = sub nsw i32 %j.0, 1
  %"11" = sext i32 %"10" to i64
  %"12" = getelementptr inbounds i32* %a, i64 %"11"
  %"13" = load i32* %"12", align 4
  %"14" = sext i32 %j.0 to i64
  %"15" = getelementptr inbounds i32* %a, i64 %"14"
  store i32 %"13", i32* %"15", align 4
  %"16" = add nsw i32 %j.0, -1
  br label %insertionSort_bb3

insertionSort_.critedge:                          ; preds = %insertionSort_bb3, %insertionSort_bb4
  %"17" = sext i32 %j.0 to i64
  %"18" = getelementptr inbounds i32* %a, i64 %"17"
  store i32 %"3", i32* %"18", align 4
  %"19" = add nsw i32 %i.0, 1
  br label %insertionSort_bb1

insertionSort_bb6:                                ; preds = %insertionSort_bb1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb7:
  %"20" = call i32* @__kittel_nondef.0()
  %"21" = call i32 @__VERIFIER_nondet_int()
  br label %main_bb8

main_bb8:                                         ; preds = %main_.critedge.i, %main_bb7
  %i.0.i = phi i32 [ 1, %main_bb7 ], [ %"41", %main_.critedge.i ]
  %"22" = icmp slt i32 %i.0.i, %"21"
  br i1 %"22", label %main_bb9, label %main_insertionSort.exit

main_bb9:                                         ; preds = %main_bb8
  %"23" = sext i32 %i.0.i to i64
  %"24" = getelementptr inbounds i32* %"20", i64 %"23"
  %"25" = load i32* %"24", align 4
  br label %main_bb10

main_bb10:                                        ; preds = %main_bb12, %main_bb9
  %j.0.i = phi i32 [ %i.0.i, %main_bb9 ], [ %"38", %main_bb12 ]
  %"26" = icmp sgt i32 %j.0.i, 0
  br i1 %"26", label %main_bb11, label %main_.critedge.i

main_bb11:                                        ; preds = %main_bb10
  %"27" = sub nsw i32 %j.0.i, 1
  %"28" = sext i32 %"27" to i64
  %"29" = getelementptr inbounds i32* %"20", i64 %"28"
  %"30" = load i32* %"29", align 4
  %"31" = icmp sgt i32 %"30", %"25"
  br i1 %"31", label %main_bb12, label %main_.critedge.i

main_bb12:                                        ; preds = %main_bb11
  %"32" = sub nsw i32 %j.0.i, 1
  %"33" = sext i32 %"32" to i64
  %"34" = getelementptr inbounds i32* %"20", i64 %"33"
  %"35" = load i32* %"34", align 4
  %"36" = sext i32 %j.0.i to i64
  %"37" = getelementptr inbounds i32* %"20", i64 %"36"
  store i32 %"35", i32* %"37", align 4
  %"38" = add nsw i32 %j.0.i, -1
  br label %main_bb10

main_.critedge.i:                                 ; preds = %main_bb11, %main_bb10
  %"39" = sext i32 %j.0.i to i64
  %"40" = getelementptr inbounds i32* %"20", i64 %"39"
  store i32 %"25", i32* %"40", align 4
  %"41" = add nsw i32 %i.0.i, 1
  br label %main_bb8

main_insertionSort.exit:                          ; preds = %main_bb8
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32* @__kittel_nondef.0()

declare i32 @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

