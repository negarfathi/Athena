; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_java_BubbleSort_alloca/svcomp_java_BubbleSort_alloca.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define void @sort(i32* %x, i32 %n) #0 {
sort_bb0:
  br label %sort_bb1

sort_bb1:                                         ; preds = %sort_bb6, %sort_bb0
  %pass.0 = phi i32 [ 1, %sort_bb0 ], [ %"24", %sort_bb6 ]
  %"0" = icmp slt i32 %pass.0, %n
  br i1 %"0", label %sort_bb2, label %sort_bb7

sort_bb2:                                         ; preds = %sort_bb1, %sort_bb5
  %i.0 = phi i32 [ %"23", %sort_bb5 ], [ 0, %sort_bb1 ]
  %"1" = sub nsw i32 %n, %pass.0
  %"2" = icmp slt i32 %i.0, %"1"
  br i1 %"2", label %sort_bb3, label %sort_bb6

sort_bb3:                                         ; preds = %sort_bb2
  %"3" = sext i32 %i.0 to i64
  %"4" = getelementptr inbounds i32* %x, i64 %"3"
  %"5" = load i32* %"4", align 4
  %"6" = add nsw i32 %i.0, 1
  %"7" = sext i32 %"6" to i64
  %"8" = getelementptr inbounds i32* %x, i64 %"7"
  %"9" = load i32* %"8", align 4
  %"10" = icmp sgt i32 %"5", %"9"
  br i1 %"10", label %sort_bb4, label %sort_bb5

sort_bb4:                                         ; preds = %sort_bb3
  %"11" = sext i32 %i.0 to i64
  %"12" = getelementptr inbounds i32* %x, i64 %"11"
  %"13" = load i32* %"12", align 4
  %"14" = add nsw i32 %i.0, 1
  %"15" = sext i32 %"14" to i64
  %"16" = getelementptr inbounds i32* %x, i64 %"15"
  %"17" = load i32* %"16", align 4
  %"18" = sext i32 %i.0 to i64
  %"19" = getelementptr inbounds i32* %x, i64 %"18"
  store i32 %"17", i32* %"19", align 4
  %"20" = add nsw i32 %i.0, 1
  %"21" = sext i32 %"20" to i64
  %"22" = getelementptr inbounds i32* %x, i64 %"21"
  store i32 %"13", i32* %"22", align 4
  br label %sort_bb5

sort_bb5:                                         ; preds = %sort_bb3, %sort_bb4
  %"23" = add nsw i32 %i.0, 1
  br label %sort_bb2

sort_bb6:                                         ; preds = %sort_bb2
  %"24" = add nsw i32 %pass.0, 1
  br label %sort_bb1

sort_bb7:                                         ; preds = %sort_bb1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb8:
  %"25" = call i32 @__VERIFIER_nondet_int()
  %"26" = icmp slt i32 %"25", 1
  %. = select i1 %"26", i32 1, i32 %"25"
  %"27" = sext i32 %. to i64
  %"28" = mul i64 %"27", 4
  %"29" = alloca i8, i64 %"28"
  %"30" = bitcast i8* %"29" to i32*
  br label %main_bb9

main_bb9:                                         ; preds = %main_bb14, %main_bb8
  %pass.0.i = phi i32 [ 1, %main_bb8 ], [ %"55", %main_bb14 ]
  %"31" = icmp slt i32 %pass.0.i, %.
  br i1 %"31", label %main_bb10, label %main_sort.exit

main_bb10:                                        ; preds = %main_bb13, %main_bb9
  %i.0.i = phi i32 [ %"54", %main_bb13 ], [ 0, %main_bb9 ]
  %"32" = sub nsw i32 %., %pass.0.i
  %"33" = icmp slt i32 %i.0.i, %"32"
  br i1 %"33", label %main_bb11, label %main_bb14

main_bb11:                                        ; preds = %main_bb10
  %"34" = sext i32 %i.0.i to i64
  %"35" = getelementptr inbounds i32* %"30", i64 %"34"
  %"36" = load i32* %"35", align 4
  %"37" = add nsw i32 %i.0.i, 1
  %"38" = sext i32 %"37" to i64
  %"39" = getelementptr inbounds i32* %"30", i64 %"38"
  %"40" = load i32* %"39", align 4
  %"41" = icmp sgt i32 %"36", %"40"
  br i1 %"41", label %main_bb12, label %main_bb13

main_bb12:                                        ; preds = %main_bb11
  %"42" = sext i32 %i.0.i to i64
  %"43" = getelementptr inbounds i32* %"30", i64 %"42"
  %"44" = load i32* %"43", align 4
  %"45" = add nsw i32 %i.0.i, 1
  %"46" = sext i32 %"45" to i64
  %"47" = getelementptr inbounds i32* %"30", i64 %"46"
  %"48" = load i32* %"47", align 4
  %"49" = sext i32 %i.0.i to i64
  %"50" = getelementptr inbounds i32* %"30", i64 %"49"
  store i32 %"48", i32* %"50", align 4
  %"51" = add nsw i32 %i.0.i, 1
  %"52" = sext i32 %"51" to i64
  %"53" = getelementptr inbounds i32* %"30", i64 %"52"
  store i32 %"44", i32* %"53", align 4
  br label %main_bb13

main_bb13:                                        ; preds = %main_bb12, %main_bb11
  %"54" = add nsw i32 %i.0.i, 1
  br label %main_bb10

main_bb14:                                        ; preds = %main_bb10
  %"55" = add nsw i32 %pass.0.i, 1
  br label %main_bb9

main_sort.exit:                                   ; preds = %main_bb9
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32* @__kittel_nondef.0()

declare i32 @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

