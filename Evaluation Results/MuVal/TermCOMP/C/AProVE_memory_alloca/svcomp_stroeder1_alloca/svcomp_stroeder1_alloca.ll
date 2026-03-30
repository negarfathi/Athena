; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_stroeder1_alloca/svcomp_stroeder1_alloca.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @sumOfThirdBytes(i32* %numbers, i32 %array_size) #0 {
sumOfThirdBytes_bb0:
  br label %sumOfThirdBytes_bb1

sumOfThirdBytes_bb1:                              ; preds = %sumOfThirdBytes_bb2, %sumOfThirdBytes_bb0
  %sum.0 = phi i32 [ 0, %sumOfThirdBytes_bb0 ], [ %"7", %sumOfThirdBytes_bb2 ]
  %i.0 = phi i32 [ 0, %sumOfThirdBytes_bb0 ], [ %"8", %sumOfThirdBytes_bb2 ]
  %"0" = icmp slt i32 %i.0, %array_size
  br i1 %"0", label %sumOfThirdBytes_bb2, label %sumOfThirdBytes_bb3

sumOfThirdBytes_bb2:                              ; preds = %sumOfThirdBytes_bb1
  %"1" = sext i32 %i.0 to i64
  %"2" = getelementptr inbounds i32* %numbers, i64 %"1"
  %"3" = bitcast i32* %"2" to i8*
  %"4" = getelementptr inbounds i8* %"3", i64 2
  %"5" = load i8* %"4", align 1
  %"6" = sext i8 %"5" to i32
  %"7" = add nsw i32 %sum.0, %"6"
  %"8" = add nsw i32 %i.0, 1
  br label %sumOfThirdBytes_bb1

sumOfThirdBytes_bb3:                              ; preds = %sumOfThirdBytes_bb1
  ret i32 %sum.0
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb4:
  %"9" = call i32 @__VERIFIER_nondet_int()
  %"10" = icmp slt i32 %"9", 1
  %. = select i1 %"10", i32 1, i32 %"9"
  %"11" = sext i32 %. to i64
  %"12" = mul i64 %"11", 4
  %"13" = alloca i8, i64 %"12"
  %"14" = bitcast i8* %"13" to i32*
  br label %main_bb5

main_bb5:                                         ; preds = %main_bb6, %main_bb4
  %sum.0.i = phi i32 [ 0, %main_bb4 ], [ %"22", %main_bb6 ]
  %i.0.i = phi i32 [ 0, %main_bb4 ], [ %"23", %main_bb6 ]
  %"15" = icmp slt i32 %i.0.i, %.
  br i1 %"15", label %main_bb6, label %main_sumOfThirdBytes.exit

main_bb6:                                         ; preds = %main_bb5
  %"16" = sext i32 %i.0.i to i64
  %"17" = getelementptr inbounds i32* %"14", i64 %"16"
  %"18" = bitcast i32* %"17" to i8*
  %"19" = getelementptr inbounds i8* %"18", i64 2
  %"20" = load i8* %"19", align 1
  %"21" = sext i8 %"20" to i32
  %"22" = add nsw i32 %sum.0.i, %"21"
  %"23" = add nsw i32 %i.0.i, 1
  br label %main_bb5

main_sumOfThirdBytes.exit:                        ; preds = %main_bb5
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

