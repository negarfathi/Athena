; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_stroeder2_alloca/svcomp_stroeder2_alloca.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @sumOfThirdBytes(i32* %numbers, i32 %array_size) #0 {
sumOfThirdBytes_bb0:
  br label %sumOfThirdBytes_bb1

sumOfThirdBytes_bb1:                              ; preds = %sumOfThirdBytes_bb5, %sumOfThirdBytes_bb0
  %sum.0 = phi i32 [ 0, %sumOfThirdBytes_bb0 ], [ %sum.1, %sumOfThirdBytes_bb5 ]
  %i.0 = phi i32 [ 0, %sumOfThirdBytes_bb0 ], [ %"11", %sumOfThirdBytes_bb5 ]
  %"0" = icmp slt i32 %i.0, %array_size
  br i1 %"0", label %sumOfThirdBytes_bb2, label %sumOfThirdBytes_bb6

sumOfThirdBytes_bb2:                              ; preds = %sumOfThirdBytes_bb1
  %"1" = sext i32 %i.0 to i64
  %"2" = getelementptr inbounds i32* %numbers, i64 %"1"
  %"3" = bitcast i32* %"2" to i8*
  %"4" = getelementptr inbounds i8* %"3", i64 2
  br label %sumOfThirdBytes_bb3

sumOfThirdBytes_bb3:                              ; preds = %sumOfThirdBytes_bb4, %sumOfThirdBytes_bb2
  %sum.1 = phi i32 [ %sum.0, %sumOfThirdBytes_bb2 ], [ %"8", %sumOfThirdBytes_bb4 ]
  %"5" = load i8* %"4", align 1
  %"6" = sext i8 %"5" to i32
  %"7" = icmp sgt i32 %"6", 0
  br i1 %"7", label %sumOfThirdBytes_bb4, label %sumOfThirdBytes_bb5

sumOfThirdBytes_bb4:                              ; preds = %sumOfThirdBytes_bb3
  %"8" = add nsw i32 %sum.1, 1
  %"9" = load i8* %"4", align 1
  %"10" = add i8 %"9", -1
  store i8 %"10", i8* %"4", align 1
  br label %sumOfThirdBytes_bb3

sumOfThirdBytes_bb5:                              ; preds = %sumOfThirdBytes_bb3
  %"11" = add nsw i32 %i.0, 1
  br label %sumOfThirdBytes_bb1

sumOfThirdBytes_bb6:                              ; preds = %sumOfThirdBytes_bb1
  ret i32 %sum.0
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb7:
  %"12" = call i32 @__VERIFIER_nondet_int()
  %"13" = icmp slt i32 %"12", 1
  %. = select i1 %"13", i32 1, i32 %"12"
  %"14" = sext i32 %. to i64
  %"15" = mul i64 %"14", 4
  %"16" = alloca i8, i64 %"15"
  %"17" = bitcast i8* %"16" to i32*
  br label %main_bb8

main_bb8:                                         ; preds = %main_bb12, %main_bb7
  %sum.0.i = phi i32 [ 0, %main_bb7 ], [ %sum.1.i, %main_bb12 ]
  %i.0.i = phi i32 [ 0, %main_bb7 ], [ %"29", %main_bb12 ]
  %"18" = icmp slt i32 %i.0.i, %.
  br i1 %"18", label %main_bb9, label %main_sumOfThirdBytes.exit

main_bb9:                                         ; preds = %main_bb8
  %"19" = sext i32 %i.0.i to i64
  %"20" = getelementptr inbounds i32* %"17", i64 %"19"
  %"21" = bitcast i32* %"20" to i8*
  %"22" = getelementptr inbounds i8* %"21", i64 2
  br label %main_bb10

main_bb10:                                        ; preds = %main_bb11, %main_bb9
  %sum.1.i = phi i32 [ %sum.0.i, %main_bb9 ], [ %"26", %main_bb11 ]
  %"23" = load i8* %"22", align 1
  %"24" = sext i8 %"23" to i32
  %"25" = icmp sgt i32 %"24", 0
  br i1 %"25", label %main_bb11, label %main_bb12

main_bb11:                                        ; preds = %main_bb10
  %"26" = add nsw i32 %sum.1.i, 1
  %"27" = load i8* %"22", align 1
  %"28" = add i8 %"27", -1
  store i8 %"28", i8* %"22", align 1
  br label %main_bb10

main_bb12:                                        ; preds = %main_bb10
  %"29" = add nsw i32 %i.0.i, 1
  br label %main_bb8

main_sumOfThirdBytes.exit:                        ; preds = %main_bb8
  ret i32 %sum.0.i
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32* @__kittel_nondef.0()

declare i32 @__kittel_nondef.1()

declare i8* @__kittel_nondef.2()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

