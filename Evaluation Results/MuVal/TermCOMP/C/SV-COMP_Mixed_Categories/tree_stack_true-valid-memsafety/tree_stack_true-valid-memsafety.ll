; ModuleID = 'Benchmarks/TermCOMP/C/SV-COMP_Mixed_Categories/tree_stack_true-valid-memsafety/tree_stack_true-valid-memsafety.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TreeNode = type { %struct.TreeNode*, %struct.TreeNode* }
%struct.StackItem = type { %struct.StackItem*, %struct.TreeNode* }

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  %"0" = call noalias i8* @malloc(i64 16) #3
  %"1" = bitcast i8* %"0" to %struct.TreeNode*
  %"2" = getelementptr inbounds %struct.TreeNode* %"1", i32 0, i32 0
  store %struct.TreeNode* null, %struct.TreeNode** %"2", align 8
  %"3" = getelementptr inbounds %struct.TreeNode* %"1", i32 0, i32 1
  store %struct.TreeNode* null, %struct.TreeNode** %"3", align 8
  br label %main_bb1

main_bb1:                                         ; preds = %main_bb9, %main_bb10, %main_bb11, %main_bb0
  %"4" = call i32 (...)* @__VERIFIER_nondet_int()
  %"5" = icmp ne i32 %"4", 0
  br i1 %"5", label %main_bb2, label %main_bb12

main_bb2:                                         ; preds = %main_bb5, %main_bb6, %main_bb1
  %n.0 = phi %struct.TreeNode* [ %"1", %main_bb1 ], [ %"15", %main_bb5 ], [ %"17", %main_bb6 ]
  %"6" = getelementptr inbounds %struct.TreeNode* %n.0, i32 0, i32 0
  %"7" = load %struct.TreeNode** %"6", align 8
  %"8" = icmp ne %struct.TreeNode* %"7", null
  br i1 %"8", label %main_bb3, label %main_.critedge

main_bb3:                                         ; preds = %main_bb2
  %"9" = getelementptr inbounds %struct.TreeNode* %n.0, i32 0, i32 1
  %"10" = load %struct.TreeNode** %"9", align 8
  %"11" = icmp ne %struct.TreeNode* %"10", null
  br i1 %"11", label %main_bb4, label %main_.critedge

main_bb4:                                         ; preds = %main_bb3
  %"12" = call i32 (...)* @__VERIFIER_nondet_int()
  %"13" = icmp ne i32 %"12", 0
  br i1 %"13", label %main_bb5, label %main_bb6

main_bb5:                                         ; preds = %main_bb4
  %"14" = getelementptr inbounds %struct.TreeNode* %n.0, i32 0, i32 0
  %"15" = load %struct.TreeNode** %"14", align 8
  br label %main_bb2

main_bb6:                                         ; preds = %main_bb4
  %"16" = getelementptr inbounds %struct.TreeNode* %n.0, i32 0, i32 1
  %"17" = load %struct.TreeNode** %"16", align 8
  br label %main_bb2

main_.critedge:                                   ; preds = %main_bb2, %main_bb3
  %"18" = getelementptr inbounds %struct.TreeNode* %n.0, i32 0, i32 0
  %"19" = load %struct.TreeNode** %"18", align 8
  %"20" = icmp ne %struct.TreeNode* %"19", null
  br i1 %"20", label %main_bb9, label %main_bb7

main_bb7:                                         ; preds = %main_.critedge
  %"21" = call i32 (...)* @__VERIFIER_nondet_int()
  %"22" = icmp ne i32 %"21", 0
  br i1 %"22", label %main_bb8, label %main_bb9

main_bb8:                                         ; preds = %main_bb7
  %"23" = call noalias i8* @malloc(i64 16) #3
  %"24" = bitcast i8* %"23" to %struct.TreeNode*
  %"25" = getelementptr inbounds %struct.TreeNode* %n.0, i32 0, i32 0
  store %struct.TreeNode* %"24", %struct.TreeNode** %"25", align 8
  %"26" = getelementptr inbounds %struct.TreeNode* %n.0, i32 0, i32 0
  %"27" = load %struct.TreeNode** %"26", align 8
  %"28" = getelementptr inbounds %struct.TreeNode* %"27", i32 0, i32 0
  store %struct.TreeNode* null, %struct.TreeNode** %"28", align 8
  %"29" = getelementptr inbounds %struct.TreeNode* %n.0, i32 0, i32 0
  %"30" = load %struct.TreeNode** %"29", align 8
  %"31" = getelementptr inbounds %struct.TreeNode* %"30", i32 0, i32 1
  store %struct.TreeNode* null, %struct.TreeNode** %"31", align 8
  br label %main_bb9

main_bb9:                                         ; preds = %main_bb8, %main_bb7, %main_.critedge
  %"32" = getelementptr inbounds %struct.TreeNode* %n.0, i32 0, i32 1
  %"33" = load %struct.TreeNode** %"32", align 8
  %"34" = icmp ne %struct.TreeNode* %"33", null
  br i1 %"34", label %main_bb1, label %main_bb10

main_bb10:                                        ; preds = %main_bb9
  %"35" = call i32 (...)* @__VERIFIER_nondet_int()
  %"36" = icmp ne i32 %"35", 0
  br i1 %"36", label %main_bb11, label %main_bb1

main_bb11:                                        ; preds = %main_bb10
  %"37" = call noalias i8* @malloc(i64 16) #3
  %"38" = bitcast i8* %"37" to %struct.TreeNode*
  %"39" = getelementptr inbounds %struct.TreeNode* %n.0, i32 0, i32 1
  store %struct.TreeNode* %"38", %struct.TreeNode** %"39", align 8
  %"40" = getelementptr inbounds %struct.TreeNode* %n.0, i32 0, i32 1
  %"41" = load %struct.TreeNode** %"40", align 8
  %"42" = getelementptr inbounds %struct.TreeNode* %"41", i32 0, i32 0
  store %struct.TreeNode* null, %struct.TreeNode** %"42", align 8
  %"43" = getelementptr inbounds %struct.TreeNode* %n.0, i32 0, i32 1
  %"44" = load %struct.TreeNode** %"43", align 8
  %"45" = getelementptr inbounds %struct.TreeNode* %"44", i32 0, i32 1
  store %struct.TreeNode* null, %struct.TreeNode** %"45", align 8
  br label %main_bb1

main_bb12:                                        ; preds = %main_bb1
  %"46" = call noalias i8* @malloc(i64 16) #3
  %"47" = bitcast i8* %"46" to %struct.StackItem*
  %"48" = getelementptr inbounds %struct.StackItem* %"47", i32 0, i32 0
  store %struct.StackItem* null, %struct.StackItem** %"48", align 8
  %"49" = getelementptr inbounds %struct.StackItem* %"47", i32 0, i32 1
  store %struct.TreeNode* %"1", %struct.TreeNode** %"49", align 8
  br label %main_bb13

main_bb13:                                        ; preds = %main_bb18, %main_bb12
  %s.0 = phi %struct.StackItem* [ %"47", %main_bb12 ], [ %s.2, %main_bb18 ]
  %"50" = icmp ne %struct.StackItem* %s.0, null
  br i1 %"50", label %main_bb14, label %main_bb19

main_bb14:                                        ; preds = %main_bb13
  %"51" = getelementptr inbounds %struct.StackItem* %s.0, i32 0, i32 0
  %"52" = load %struct.StackItem** %"51", align 8
  %"53" = getelementptr inbounds %struct.StackItem* %s.0, i32 0, i32 1
  %"54" = load %struct.TreeNode** %"53", align 8
  %"55" = bitcast %struct.StackItem* %s.0 to i8*
  call void @free(i8* %"55") #3
  %"56" = getelementptr inbounds %struct.TreeNode* %"54", i32 0, i32 0
  %"57" = load %struct.TreeNode** %"56", align 8
  %"58" = icmp ne %struct.TreeNode* %"57", null
  br i1 %"58", label %main_bb15, label %main_bb16

main_bb15:                                        ; preds = %main_bb14
  %"59" = call noalias i8* @malloc(i64 16) #3
  %"60" = bitcast i8* %"59" to %struct.StackItem*
  %"61" = getelementptr inbounds %struct.StackItem* %"60", i32 0, i32 0
  store %struct.StackItem* %"52", %struct.StackItem** %"61", align 8
  %"62" = getelementptr inbounds %struct.TreeNode* %"54", i32 0, i32 0
  %"63" = load %struct.TreeNode** %"62", align 8
  %"64" = getelementptr inbounds %struct.StackItem* %"60", i32 0, i32 1
  store %struct.TreeNode* %"63", %struct.TreeNode** %"64", align 8
  br label %main_bb16

main_bb16:                                        ; preds = %main_bb15, %main_bb14
  %s.1 = phi %struct.StackItem* [ %"60", %main_bb15 ], [ %"52", %main_bb14 ]
  %"65" = getelementptr inbounds %struct.TreeNode* %"54", i32 0, i32 1
  %"66" = load %struct.TreeNode** %"65", align 8
  %"67" = icmp ne %struct.TreeNode* %"66", null
  br i1 %"67", label %main_bb17, label %main_bb18

main_bb17:                                        ; preds = %main_bb16
  %"68" = call noalias i8* @malloc(i64 16) #3
  %"69" = bitcast i8* %"68" to %struct.StackItem*
  %"70" = getelementptr inbounds %struct.StackItem* %"69", i32 0, i32 0
  store %struct.StackItem* %s.1, %struct.StackItem** %"70", align 8
  %"71" = getelementptr inbounds %struct.TreeNode* %"54", i32 0, i32 1
  %"72" = load %struct.TreeNode** %"71", align 8
  %"73" = getelementptr inbounds %struct.StackItem* %"69", i32 0, i32 1
  store %struct.TreeNode* %"72", %struct.TreeNode** %"73", align 8
  br label %main_bb18

main_bb18:                                        ; preds = %main_bb17, %main_bb16
  %s.2 = phi %struct.StackItem* [ %"69", %main_bb17 ], [ %s.1, %main_bb16 ]
  %"74" = bitcast %struct.TreeNode* %"54" to i8*
  call void @free(i8* %"74") #3
  br label %main_bb13

main_bb19:                                        ; preds = %main_bb13
  ret i32 0
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare i32 @__VERIFIER_nondet_int(...) #2

; Function Attrs: nounwind
declare void @free(i8*) #1

declare i32 @__kittel_nondef.0()

declare %struct.TreeNode* @__kittel_nondef.1()

declare %struct.StackItem* @__kittel_nondef.2()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

