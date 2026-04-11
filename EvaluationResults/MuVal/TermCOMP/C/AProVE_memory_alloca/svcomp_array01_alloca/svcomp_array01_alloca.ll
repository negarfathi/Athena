; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_array01_alloca/svcomp_array01_alloca.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @test_fun(i32* %a, i32 %N) #0 {
test_fun_bb0:
  br label %test_fun_bb1

test_fun_bb1:                                     ; preds = %test_fun_bb5, %test_fun_bb0
  %res.0 = phi i32 [ 0, %test_fun_bb0 ], [ %res.1, %test_fun_bb5 ]
  %i.0 = phi i32 [ 0, %test_fun_bb0 ], [ %"10", %test_fun_bb5 ]
  %"0" = icmp slt i32 %i.0, %N
  br i1 %"0", label %test_fun_bb2, label %test_fun_bb6

test_fun_bb2:                                     ; preds = %test_fun_bb1
  %"1" = sext i32 %i.0 to i64
  %"2" = getelementptr inbounds i32* %a, i64 %"1"
  %"3" = sext i32 %i.0 to i64
  %"4" = getelementptr inbounds i32* %a, i64 %"3"
  br label %test_fun_bb3

test_fun_bb3:                                     ; preds = %test_fun_bb4, %test_fun_bb2
  %res.1 = phi i32 [ %res.0, %test_fun_bb2 ], [ %"9", %test_fun_bb4 ]
  %"5" = load i32* %"2", align 4
  %"6" = icmp sgt i32 %"5", 0
  br i1 %"6", label %test_fun_bb4, label %test_fun_bb5

test_fun_bb4:                                     ; preds = %test_fun_bb3
  %"7" = load i32* %"4", align 4
  %"8" = add nsw i32 %"7", -1
  store i32 %"8", i32* %"4", align 4
  %"9" = add nsw i32 %res.1, 1
  br label %test_fun_bb3

test_fun_bb5:                                     ; preds = %test_fun_bb3
  %"10" = add nsw i32 %i.0, 1
  br label %test_fun_bb1

test_fun_bb6:                                     ; preds = %test_fun_bb1
  ret i32 %res.0
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb7:
  %"11" = call i32 @__VERIFIER_nondet_int()
  %"12" = icmp slt i32 %"11", 1
  %. = select i1 %"12", i32 1, i32 %"11"
  %"13" = sext i32 %. to i64
  %"14" = mul i64 %"13", 4
  %"15" = alloca i8, i64 %"14"
  %"16" = bitcast i8* %"15" to i32*
  br label %main_bb8

main_bb8:                                         ; preds = %main_bb12, %main_bb7
  %res.0.i = phi i32 [ 0, %main_bb7 ], [ %res.1.i, %main_bb12 ]
  %i.0.i = phi i32 [ 0, %main_bb7 ], [ %"27", %main_bb12 ]
  %"17" = icmp slt i32 %i.0.i, %.
  br i1 %"17", label %main_bb9, label %main_test_fun.exit

main_bb9:                                         ; preds = %main_bb8
  %"18" = sext i32 %i.0.i to i64
  %"19" = getelementptr inbounds i32* %"16", i64 %"18"
  %"20" = sext i32 %i.0.i to i64
  %"21" = getelementptr inbounds i32* %"16", i64 %"20"
  br label %main_bb10

main_bb10:                                        ; preds = %main_bb11, %main_bb9
  %res.1.i = phi i32 [ %res.0.i, %main_bb9 ], [ %"26", %main_bb11 ]
  %"22" = load i32* %"19", align 4
  %"23" = icmp sgt i32 %"22", 0
  br i1 %"23", label %main_bb11, label %main_bb12

main_bb11:                                        ; preds = %main_bb10
  %"24" = load i32* %"21", align 4
  %"25" = add nsw i32 %"24", -1
  store i32 %"25", i32* %"21", align 4
  %"26" = add nsw i32 %res.1.i, 1
  br label %main_bb10

main_bb12:                                        ; preds = %main_bb10
  %"27" = add nsw i32 %i.0.i, 1
  br label %main_bb8

main_test_fun.exit:                               ; preds = %main_bb8
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32* @__kittel_nondef.0()

declare i32 @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

