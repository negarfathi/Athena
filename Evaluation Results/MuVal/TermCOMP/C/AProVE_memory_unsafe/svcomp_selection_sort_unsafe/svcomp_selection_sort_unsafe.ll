; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_unsafe/svcomp_selection_sort_unsafe/svcomp_selection_sort_unsafe.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define void @selection(i32* %a, i32 %N) #0 {
selection_bb0:
  br label %selection_bb1

selection_bb1:                                    ; preds = %selection_bb4, %selection_bb0
  %i.0 = phi i32 [ 1, %selection_bb0 ], [ %"20", %selection_bb4 ]
  %"0" = icmp slt i32 %i.0, %N
  br i1 %"0", label %selection_bb2, label %selection_bb5

selection_bb2:                                    ; preds = %selection_bb1, %selection_bb3
  %j.0.sink = phi i32 [ %"1", %selection_bb3 ], [ %i.0, %selection_bb1 ]
  %min.0 = phi i32 [ %j.0.min.0, %selection_bb3 ], [ %i.0, %selection_bb1 ]
  %"1" = add nsw i32 %j.0.sink, 1
  %"2" = icmp sle i32 %"1", %N
  br i1 %"2", label %selection_bb3, label %selection_bb4

selection_bb3:                                    ; preds = %selection_bb2
  %"3" = sext i32 %"1" to i64
  %"4" = getelementptr inbounds i32* %a, i64 %"3"
  %"5" = load i32* %"4", align 4
  %"6" = sext i32 %min.0 to i64
  %"7" = getelementptr inbounds i32* %a, i64 %"6"
  %"8" = load i32* %"7", align 4
  %"9" = icmp slt i32 %"5", %"8"
  %j.0.min.0 = select i1 %"9", i32 %"1", i32 %min.0
  br label %selection_bb2

selection_bb4:                                    ; preds = %selection_bb2
  %"10" = sext i32 %min.0 to i64
  %"11" = getelementptr inbounds i32* %a, i64 %"10"
  %"12" = load i32* %"11", align 4
  %"13" = sext i32 %i.0 to i64
  %"14" = getelementptr inbounds i32* %a, i64 %"13"
  %"15" = load i32* %"14", align 4
  %"16" = sext i32 %min.0 to i64
  %"17" = getelementptr inbounds i32* %a, i64 %"16"
  store i32 %"15", i32* %"17", align 4
  %"18" = sext i32 %i.0 to i64
  %"19" = getelementptr inbounds i32* %a, i64 %"18"
  store i32 %"12", i32* %"19", align 4
  %"20" = add nsw i32 %i.0, 1
  br label %selection_bb1

selection_bb5:                                    ; preds = %selection_bb1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb6:
  %"21" = call i32* @__kittel_nondef.0()
  %"22" = call i32 @__VERIFIER_nondet_int()
  br label %main_bb7

main_bb7:                                         ; preds = %main_bb10, %main_bb6
  %i.0.i = phi i32 [ 1, %main_bb6 ], [ %"43", %main_bb10 ]
  %"23" = icmp slt i32 %i.0.i, %"22"
  br i1 %"23", label %main_bb8, label %main_selection.exit

main_bb8:                                         ; preds = %main_bb9, %main_bb7
  %j.0.sink.i = phi i32 [ %"24", %main_bb9 ], [ %i.0.i, %main_bb7 ]
  %min.0.i = phi i32 [ %j.0.min.0.i, %main_bb9 ], [ %i.0.i, %main_bb7 ]
  %"24" = add nsw i32 %j.0.sink.i, 1
  %"25" = icmp sle i32 %"24", %"22"
  br i1 %"25", label %main_bb9, label %main_bb10

main_bb9:                                         ; preds = %main_bb8
  %"26" = sext i32 %"24" to i64
  %"27" = getelementptr inbounds i32* %"21", i64 %"26"
  %"28" = load i32* %"27", align 4
  %"29" = sext i32 %min.0.i to i64
  %"30" = getelementptr inbounds i32* %"21", i64 %"29"
  %"31" = load i32* %"30", align 4
  %"32" = icmp slt i32 %"28", %"31"
  %j.0.min.0.i = select i1 %"32", i32 %"24", i32 %min.0.i
  br label %main_bb8

main_bb10:                                        ; preds = %main_bb8
  %"33" = sext i32 %min.0.i to i64
  %"34" = getelementptr inbounds i32* %"21", i64 %"33"
  %"35" = load i32* %"34", align 4
  %"36" = sext i32 %i.0.i to i64
  %"37" = getelementptr inbounds i32* %"21", i64 %"36"
  %"38" = load i32* %"37", align 4
  %"39" = sext i32 %min.0.i to i64
  %"40" = getelementptr inbounds i32* %"21", i64 %"39"
  store i32 %"38", i32* %"40", align 4
  %"41" = sext i32 %i.0.i to i64
  %"42" = getelementptr inbounds i32* %"21", i64 %"41"
  store i32 %"35", i32* %"42", align 4
  %"43" = add nsw i32 %i.0.i, 1
  br label %main_bb7

main_selection.exit:                              ; preds = %main_bb7
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32* @__kittel_nondef.0()

declare i32 @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

