; ModuleID = 'Benchmarks/FSE/loop/Incorrect_Initialization_2_T/Incorrect_Initialization_2_T.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"'flag" = global i32 0, align 4

; Function Attrs: nounwind uwtable
define i32 @matroska_deliver_packet(i32 %q) #0 {
matroska_deliver_packet_bb0:
  %"0" = icmp eq i32 %q, 1
  %. = select i1 %"0", i32 0, i32 1
  ret i32 %.
}

; Function Attrs: nounwind uwtable
define i32 @res_return() #0 {
res_return_bb1:
  %"1" = load i32* @"'flag", align 4
  %"2" = add nsw i32 %"1", 1
  store i32 %"2", i32* @"'flag", align 4
  %"3" = icmp slt i32 %"1", 100
  br i1 %"3", label %res_return_bb2, label %res_return_bb3

res_return_bb2:                                   ; preds = %res_return_bb1
  %"4" = call i32 @__VERIFIER_nondet_int()
  br label %res_return_bb3

res_return_bb3:                                   ; preds = %res_return_bb1, %res_return_bb2
  %.0 = phi i32 [ %"4", %res_return_bb2 ], [ -1, %res_return_bb1 ]
  ret i32 %.0
}

declare i32 @__VERIFIER_nondet_int() #1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb4:
  %"5" = call i32 @__VERIFIER_nondet_int()
  br label %main_bb5

main_bb5:                                         ; preds = %main_NewDefault, %main_bb6, %main_bb4
  %matroska.0 = phi i32 [ %"5", %main_bb4 ], [ 1, %main_bb6 ], [ %matroska.0, %main_NewDefault ]
  %"6" = icmp eq i32 %matroska.0, 1
  %..i = select i1 %"6", i32 0, i32 1
  %"7" = icmp ne i32 %..i, 0
  br i1 %"7", label %main_res_return.exit, label %main_bb14

main_res_return.exit:                             ; preds = %main_res_return.exit4, %main_res_return.exit2, %main_bb12, %main_bb13, %main_bb5
  %res.0 = phi i32 [ 0, %main_bb5 ], [ %., %main_res_return.exit4 ], [ %"14", %main_res_return.exit2 ], [ %"21", %main_bb13 ], [ -1, %main_bb12 ]
  br label %main_NodeBlock

main_NodeBlock:                                   ; preds = %main_res_return.exit
  %Pivot = icmp slt i32 %res.0, 0
  br i1 %Pivot, label %main_LeafBlock, label %main_LeafBlock5

main_LeafBlock:                                   ; preds = %main_NodeBlock
  %SwitchLeaf = icmp eq i32 %res.0, -1
  br i1 %SwitchLeaf, label %main_bb6, label %main_NewDefault

main_bb6:                                         ; preds = %main_LeafBlock
  br label %main_bb5

main_LeafBlock5:                                  ; preds = %main_NodeBlock
  %SwitchLeaf6 = icmp eq i32 %res.0, 0
  br i1 %SwitchLeaf6, label %main_bb7, label %main_NewDefault

main_bb7:                                         ; preds = %main_LeafBlock5
  %"8" = call i32 @__VERIFIER_nondet_int()
  %cond = icmp eq i32 %"8", 1
  %"9" = load i32* @"'flag", align 4
  %"10" = add nsw i32 %"9", 1
  store i32 %"10", i32* @"'flag", align 4
  %"11" = icmp slt i32 %"9", 100
  br i1 %cond, label %main_bb8, label %main_bb12

main_bb8:                                         ; preds = %main_bb7
  br i1 %"11", label %main_bb9, label %main_res_return.exit2

main_bb9:                                         ; preds = %main_bb8
  %"12" = call i32 @__VERIFIER_nondet_int() #2
  br label %main_res_return.exit2

main_res_return.exit2:                            ; preds = %main_bb8, %main_bb9
  %.0.i1 = phi i32 [ %"12", %main_bb9 ], [ -1, %main_bb8 ]
  %"13" = icmp slt i32 %.0.i1, 0
  %"14" = zext i1 %"13" to i32
  br i1 %"13", label %main_res_return.exit, label %main_bb10

main_bb10:                                        ; preds = %main_res_return.exit2
  %"15" = load i32* @"'flag", align 4
  %"16" = add nsw i32 %"15", 1
  store i32 %"16", i32* @"'flag", align 4
  %"17" = icmp slt i32 %"15", 100
  br i1 %"17", label %main_bb11, label %main_res_return.exit4

main_bb11:                                        ; preds = %main_bb10
  %"18" = call i32 @__VERIFIER_nondet_int() #2
  br label %main_res_return.exit4

main_res_return.exit4:                            ; preds = %main_bb10, %main_bb11
  %.0.i3 = phi i32 [ %"18", %main_bb11 ], [ -1, %main_bb10 ]
  %"19" = icmp eq i32 %.0.i3, 0
  %"20" = zext i1 %"19" to i32
  %. = select i1 %"19", i32 1, i32 %"20"
  br label %main_res_return.exit

main_bb12:                                        ; preds = %main_bb7
  br i1 %"11", label %main_bb13, label %main_res_return.exit

main_bb13:                                        ; preds = %main_bb12
  %"21" = call i32 @__VERIFIER_nondet_int() #2
  br label %main_res_return.exit

main_NewDefault:                                  ; preds = %main_LeafBlock5, %main_LeafBlock
  br label %main_bb5

main_bb14:                                        ; preds = %main_bb5
  ret i32 0
}

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

