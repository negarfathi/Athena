; ModuleID = 'Benchmarks/FSE/loop/Incorrect_Control_Statement_2_T/Incorrect_Control_Statement_2_T.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  %slots_used = alloca [10 x i32], align 16
  %ereg = alloca [10 x i32], align 16
  %"0" = call i32 @__kittel_nondef.0()
  br label %main_bb1

main_bb1:                                         ; preds = %main_bb2, %main_bb0
  %i.0 = phi i32 [ 0, %main_bb0 ], [ %"8", %main_bb2 ]
  %"1" = icmp slt i32 %i.0, 10
  br i1 %"1", label %main_bb2, label %main_bb3

main_bb2:                                         ; preds = %main_bb1
  %"2" = call i32 @__VERIFIER_nondet_int()
  %"3" = sext i32 %i.0 to i64
  %"4" = getelementptr inbounds [10 x i32]* %slots_used, i32 0, i64 %"3"
  store i32 %"2", i32* %"4", align 4
  %"5" = call i32 @__VERIFIER_nondet_int()
  %"6" = sext i32 %i.0 to i64
  %"7" = getelementptr inbounds [10 x i32]* %ereg, i32 0, i64 %"6"
  store i32 %"5", i32* %"7", align 4
  %"8" = add nsw i32 %i.0, 1
  br label %main_bb1

main_bb3:                                         ; preds = %main_bb1, %main_bb9
  %i1.0 = phi i32 [ %"24", %main_bb9 ], [ 0, %main_bb1 ]
  %table.0 = phi i32 [ %table.1, %main_bb9 ], [ %"0", %main_bb1 ]
  %"9" = icmp slt i32 %i1.0, 10
  br i1 %"9", label %main_bb4, label %main_bb10

main_bb4:                                         ; preds = %main_bb3
  %"10" = sext i32 %i1.0 to i64
  %"11" = getelementptr inbounds [10 x i32]* %slots_used, i32 0, i64 %"10"
  %"12" = load i32* %"11", align 4
  br label %main_NodeBlock

main_NodeBlock:                                   ; preds = %main_bb4
  %Pivot = icmp slt i32 %"12", 2
  br i1 %Pivot, label %main_LeafBlock, label %main_LeafBlock1

main_LeafBlock:                                   ; preds = %main_NodeBlock
  %SwitchLeaf = icmp eq i32 %"12", 0
  br i1 %SwitchLeaf, label %main_bb5, label %main_NewDefault

main_bb5:                                         ; preds = %main_LeafBlock
  %"13" = sext i32 %i1.0 to i64
  %"14" = getelementptr inbounds [10 x i32]* %ereg, i32 0, i64 %"13"
  %"15" = load i32* %"14", align 4
  %"16" = icmp ne i32 %"15", 0
  br i1 %"16", label %main_bb6, label %main_bb10

main_bb6:                                         ; preds = %main_bb5
  %"17" = sext i32 %i1.0 to i64
  %"18" = getelementptr inbounds [10 x i32]* %ereg, i32 0, i64 %"17"
  %"19" = load i32* %"18", align 4
  br label %main_bb8

main_LeafBlock1:                                  ; preds = %main_NodeBlock
  %SwitchLeaf2 = icmp eq i32 %"12", 2
  br i1 %SwitchLeaf2, label %main_bb8, label %main_NewDefault

main_NewDefault:                                  ; preds = %main_LeafBlock1, %main_LeafBlock
  br label %main_bb7

main_bb7:                                         ; preds = %main_NewDefault
  %"20" = sext i32 %i1.0 to i64
  %"21" = getelementptr inbounds [10 x i32]* %ereg, i32 0, i64 %"20"
  %"22" = load i32* %"21", align 4
  br label %main_bb8

main_bb8:                                         ; preds = %main_LeafBlock1, %main_bb7, %main_bb6
  %table.1 = phi i32 [ %"22", %main_bb7 ], [ %"19", %main_bb6 ], [ %table.0, %main_LeafBlock1 ]
  %"23" = icmp ne i32 %table.1, 0
  br i1 %"23", label %main_bb10, label %main_bb9

main_bb9:                                         ; preds = %main_bb8
  %"24" = add nsw i32 %i1.0, 1
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

