; ModuleID = 'Benchmarks/FSE/loop/Incorrect_Control_Statement_1_NT/Incorrect_Control_Statement_1_NT.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  %array = alloca [101 x i8], align 16
  br label %main_bb1

main_bb1:                                         ; preds = %main_bb2, %main_bb0
  %i.0 = phi i32 [ 0, %main_bb0 ], [ %"4", %main_bb2 ]
  %"0" = icmp slt i32 %i.0, 100
  br i1 %"0", label %main_bb2, label %main_bb3

main_bb2:                                         ; preds = %main_bb1
  %"1" = call signext i8 @__VERIFIER_nondet_char()
  %"2" = sext i32 %i.0 to i64
  %"3" = getelementptr inbounds [101 x i8]* %array, i32 0, i64 %"2"
  store i8 %"1", i8* %"3", align 1
  %"4" = add nsw i32 %i.0, 1
  br label %main_bb1

main_bb3:                                         ; preds = %main_bb1
  %"5" = getelementptr inbounds [101 x i8]* %array, i32 0, i64 100
  store i8 0, i8* %"5", align 1
  %"6" = getelementptr inbounds [101 x i8]* %array, i32 0, i32 0
  br label %main_bb4

main_bb4:                                         ; preds = %main_LeafBlock2, %main_bb7, %main_bb8, %main_bb6, %main_bb3
  %stop.0 = phi i32 [ 0, %main_bb3 ], [ %stop.0, %main_bb8 ], [ 1, %main_LeafBlock2 ], [ %stop.0, %main_bb6 ], [ %.stop.0, %main_bb7 ]
  %p.0 = phi i8* [ %"6", %main_bb3 ], [ %"23", %main_bb8 ], [ %p.0, %main_LeafBlock2 ], [ %p.0, %main_bb6 ], [ %.p.0, %main_bb7 ]
  %"7" = load i8* %p.0, align 1
  %"8" = sext i8 %"7" to i32
  %"9" = icmp ne i32 %"8", 0
  %"10" = icmp ne i32 %stop.0, 0
  %"11" = xor i1 %"10", true
  %or.cond = and i1 %"9", %"11"
  br i1 %or.cond, label %main_bb5, label %main_.critedge

main_bb5:                                         ; preds = %main_bb4
  %"12" = load i8* %p.0, align 1
  %"13" = sext i8 %"12" to i32
  br label %main_NodeBlock

main_NodeBlock:                                   ; preds = %main_bb5
  %Pivot = icmp slt i32 %"13", 125
  br i1 %Pivot, label %main_LeafBlock, label %main_LeafBlock2

main_LeafBlock:                                   ; preds = %main_NodeBlock
  %SwitchLeaf = icmp eq i32 %"13", 58
  br i1 %SwitchLeaf, label %main_bb6, label %main_NewDefault

main_bb6:                                         ; preds = %main_LeafBlock
  %"14" = getelementptr inbounds i8* %p.0, i64 1
  %"15" = load i8* %"14", align 1
  %"16" = sext i8 %"15" to i32
  %"17" = icmp ne i32 %"16", 0
  br i1 %"17", label %main_bb7, label %main_bb4

main_bb7:                                         ; preds = %main_bb6
  %"18" = getelementptr inbounds i8* %p.0, i64 1
  %"19" = load i8* %"18", align 1
  %"20" = sext i8 %"19" to i32
  %"21" = icmp eq i32 %"20", 45
  %"22" = getelementptr inbounds i8* %p.0, i64 2
  %.stop.0 = select i1 %"21", i32 1, i32 %stop.0
  %.p.0 = select i1 %"21", i8* %"22", i8* %p.0
  br label %main_bb4

main_LeafBlock2:                                  ; preds = %main_NodeBlock
  %SwitchLeaf3 = icmp eq i32 %"13", 125
  br i1 %SwitchLeaf3, label %main_bb4, label %main_NewDefault

main_NewDefault:                                  ; preds = %main_LeafBlock2, %main_LeafBlock
  br label %main_bb8

main_bb8:                                         ; preds = %main_NewDefault
  %"23" = getelementptr inbounds i8* %p.0, i32 1
  br label %main_bb4

main_.critedge:                                   ; preds = %main_bb4
  ret i32 0
}

declare signext i8 @__VERIFIER_nondet_char() #1

declare i32 @__kittel_nondef.0()

declare i8* @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

