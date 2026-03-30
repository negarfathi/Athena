; ModuleID = 'Benchmarks/FSE/loop/Incorrect_Control_Statement_2_NT/Incorrect_Control_Statement_2_NT.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  %slots_used = alloca [10 x i32], align 16
  %ereg = alloca [10 x i32], align 16
  br label %main_bb1

main_bb1:                                         ; preds = %main_bb2, %main_bb0
  %i.0 = phi i32 [ 0, %main_bb0 ], [ %"7", %main_bb2 ]
  %"0" = icmp slt i32 %i.0, 10
  br i1 %"0", label %main_bb2, label %main_bb3

main_bb2:                                         ; preds = %main_bb1
  %"1" = call i32 @__VERIFIER_nondet_int()
  %"2" = sext i32 %i.0 to i64
  %"3" = getelementptr inbounds [10 x i32]* %slots_used, i32 0, i64 %"2"
  store i32 %"1", i32* %"3", align 4
  %"4" = call i32 @__VERIFIER_nondet_int()
  %"5" = sext i32 %i.0 to i64
  %"6" = getelementptr inbounds [10 x i32]* %ereg, i32 0, i64 %"5"
  store i32 %"4", i32* %"6", align 4
  %"7" = add nsw i32 %i.0, 1
  br label %main_bb1

main_bb3:                                         ; preds = %main_LeafBlock1, %main_bb1, %main_bb9
  %i1.0 = phi i32 [ %"23", %main_bb9 ], [ 0, %main_bb1 ], [ %i1.0, %main_LeafBlock1 ]
  %"8" = icmp slt i32 %i1.0, 10
  br i1 %"8", label %main_bb4, label %main_bb10

main_bb4:                                         ; preds = %main_bb3
  %"9" = sext i32 %i1.0 to i64
  %"10" = getelementptr inbounds [10 x i32]* %slots_used, i32 0, i64 %"9"
  %"11" = load i32* %"10", align 4
  br label %main_NodeBlock

main_NodeBlock:                                   ; preds = %main_bb4
  %Pivot = icmp slt i32 %"11", 2
  br i1 %Pivot, label %main_LeafBlock, label %main_LeafBlock1

main_LeafBlock:                                   ; preds = %main_NodeBlock
  %SwitchLeaf = icmp eq i32 %"11", 0
  br i1 %SwitchLeaf, label %main_bb5, label %main_NewDefault

main_bb5:                                         ; preds = %main_LeafBlock
  %"12" = sext i32 %i1.0 to i64
  %"13" = getelementptr inbounds [10 x i32]* %ereg, i32 0, i64 %"12"
  %"14" = load i32* %"13", align 4
  %"15" = icmp ne i32 %"14", 0
  br i1 %"15", label %main_bb6, label %main_bb10

main_bb6:                                         ; preds = %main_bb5
  %"16" = sext i32 %i1.0 to i64
  %"17" = getelementptr inbounds [10 x i32]* %ereg, i32 0, i64 %"16"
  %"18" = load i32* %"17", align 4
  br label %main_bb8

main_LeafBlock1:                                  ; preds = %main_NodeBlock
  %SwitchLeaf2 = icmp eq i32 %"11", 2
  br i1 %SwitchLeaf2, label %main_bb3, label %main_NewDefault

main_NewDefault:                                  ; preds = %main_LeafBlock1, %main_LeafBlock
  br label %main_bb7

main_bb7:                                         ; preds = %main_NewDefault
  %"19" = sext i32 %i1.0 to i64
  %"20" = getelementptr inbounds [10 x i32]* %ereg, i32 0, i64 %"19"
  %"21" = load i32* %"20", align 4
  br label %main_bb8

main_bb8:                                         ; preds = %main_bb7, %main_bb6
  %table.0 = phi i32 [ %"21", %main_bb7 ], [ %"18", %main_bb6 ]
  %"22" = icmp ne i32 %table.0, 0
  br i1 %"22", label %main_bb10, label %main_bb9

main_bb9:                                         ; preds = %main_bb8
  %"23" = add nsw i32 %i1.0, 1
  br label %main_bb3

main_bb10:                                        ; preds = %main_bb3, %main_bb8, %main_bb5
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

