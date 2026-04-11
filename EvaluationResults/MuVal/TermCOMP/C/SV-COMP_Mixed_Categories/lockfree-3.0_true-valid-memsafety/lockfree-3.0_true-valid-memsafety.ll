; ModuleID = 'Benchmarks/TermCOMP/C/SV-COMP_Mixed_Categories/lockfree-3.0_true-valid-memsafety/lockfree-3.0_true-valid-memsafety.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cell = type { i32, %struct.cell* }

@"'pc1" = global i32 1, align 4
@"'pc4" = global i32 1, align 4
@push.t1 = internal global %struct.cell* null, align 8
@push.x1 = internal global %struct.cell* null, align 8
@S = common global %struct.cell* null, align 8
@pop.t4 = internal global %struct.cell* null, align 8
@pop.x4 = internal global %struct.cell* null, align 8
@"'pop.res4" = internal global i32 0, align 4
@garbage = common global %struct.cell* null, align 8

; Function Attrs: nounwind uwtable
define void @push() #0 {
push_bb0:
  %"0" = load i32* @"'pc1", align 4
  %"1" = add nsw i32 %"0", 1
  store i32 %"1", i32* @"'pc1", align 4
  br label %push_NodeBlock9

push_NodeBlock9:                                  ; preds = %push_bb0
  %Pivot10 = icmp slt i32 %"0", 4
  br i1 %Pivot10, label %push_NodeBlock1, label %push_NodeBlock7

push_NodeBlock1:                                  ; preds = %push_NodeBlock9
  %Pivot2 = icmp slt i32 %"0", 2
  br i1 %Pivot2, label %push_LeafBlock, label %push_NodeBlock

push_LeafBlock:                                   ; preds = %push_NodeBlock1
  %SwitchLeaf = icmp eq i32 %"0", 1
  br i1 %SwitchLeaf, label %push_bb1, label %push_NewDefault

push_bb1:                                         ; preds = %push_LeafBlock
  %"2" = call noalias i8* @malloc(i64 16) #3
  %"3" = bitcast i8* %"2" to %struct.cell*
  store %struct.cell* %"3", %struct.cell** @push.x1, align 8
  %"4" = load %struct.cell** @push.x1, align 8
  %"5" = getelementptr inbounds %struct.cell* %"4", i32 0, i32 0
  store i32 0, i32* %"5", align 4
  %"6" = load %struct.cell** @push.x1, align 8
  %"7" = getelementptr inbounds %struct.cell* %"6", i32 0, i32 1
  store %struct.cell* null, %struct.cell** %"7", align 8
  br label %push_bb9

push_NodeBlock:                                   ; preds = %push_NodeBlock1
  %Pivot = icmp slt i32 %"0", 3
  br i1 %Pivot, label %push_bb2, label %push_bb3

push_bb2:                                         ; preds = %push_NodeBlock
  %"8" = load %struct.cell** @push.x1, align 8
  %"9" = getelementptr inbounds %struct.cell* %"8", i32 0, i32 0
  store i32 4, i32* %"9", align 4
  br label %push_bb9

push_bb3:                                         ; preds = %push_NodeBlock
  %"10" = load %struct.cell** @S, align 8
  store %struct.cell* %"10", %struct.cell** @push.t1, align 8
  br label %push_bb9

push_NodeBlock7:                                  ; preds = %push_NodeBlock9
  %Pivot8 = icmp slt i32 %"0", 5
  br i1 %Pivot8, label %push_bb4, label %push_NodeBlock5

push_bb4:                                         ; preds = %push_NodeBlock7
  %"11" = load %struct.cell** @push.t1, align 8
  %"12" = load %struct.cell** @push.x1, align 8
  %"13" = getelementptr inbounds %struct.cell* %"12", i32 0, i32 1
  store %struct.cell* %"11", %struct.cell** %"13", align 8
  br label %push_bb9

push_NodeBlock5:                                  ; preds = %push_NodeBlock7
  %Pivot6 = icmp slt i32 %"0", 6
  br i1 %Pivot6, label %push_bb5, label %push_LeafBlock3

push_bb5:                                         ; preds = %push_NodeBlock5
  %"14" = load %struct.cell** @S, align 8
  %"15" = load %struct.cell** @push.t1, align 8
  %"16" = icmp eq %struct.cell* %"14", %"15"
  br i1 %"16", label %push_bb6, label %push_bb7

push_bb6:                                         ; preds = %push_bb5
  %"17" = load %struct.cell** @push.x1, align 8
  store %struct.cell* %"17", %struct.cell** @S, align 8
  br label %push_bb9

push_bb7:                                         ; preds = %push_bb5
  store i32 3, i32* @"'pc1", align 4
  br label %push_bb9

push_LeafBlock3:                                  ; preds = %push_NodeBlock5
  %SwitchLeaf4 = icmp eq i32 %"0", 6
  br i1 %SwitchLeaf4, label %push_bb8, label %push_NewDefault

push_bb8:                                         ; preds = %push_LeafBlock3
  store i32 1, i32* @"'pc1", align 4
  br label %push_bb9

push_NewDefault:                                  ; preds = %push_LeafBlock3, %push_LeafBlock
  br label %push_bb9

push_bb9:                                         ; preds = %push_NewDefault, %push_bb6, %push_bb7, %push_bb8, %push_bb4, %push_bb3, %push_bb2, %push_bb1
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind uwtable
define void @pop() #0 {
pop_bb10:
  %"18" = load i32* @"'pc4", align 4
  %"19" = add nsw i32 %"18", 1
  store i32 %"19", i32* @"'pc4", align 4
  br label %pop_NodeBlock7

pop_NodeBlock7:                                   ; preds = %pop_bb10
  %Pivot8 = icmp slt i32 %"18", 3
  br i1 %Pivot8, label %pop_NodeBlock, label %pop_NodeBlock5

pop_NodeBlock:                                    ; preds = %pop_NodeBlock7
  %Pivot = icmp slt i32 %"18", 2
  br i1 %Pivot, label %pop_LeafBlock, label %pop_bb12

pop_LeafBlock:                                    ; preds = %pop_NodeBlock
  %SwitchLeaf = icmp eq i32 %"18", 1
  br i1 %SwitchLeaf, label %pop_bb11, label %pop_NewDefault

pop_bb11:                                         ; preds = %pop_LeafBlock
  %"20" = load %struct.cell** @S, align 8
  store %struct.cell* %"20", %struct.cell** @pop.t4, align 8
  br label %pop_bb19

pop_bb12:                                         ; preds = %pop_NodeBlock
  %"21" = load %struct.cell** @pop.t4, align 8
  %"22" = icmp eq %struct.cell* %"21", null
  br i1 %"22", label %pop_bb13, label %pop_bb19

pop_bb13:                                         ; preds = %pop_bb12
  store i32 1, i32* @"'pc4", align 4
  br label %pop_bb19

pop_NodeBlock5:                                   ; preds = %pop_NodeBlock7
  %Pivot6 = icmp slt i32 %"18", 4
  br i1 %Pivot6, label %pop_bb14, label %pop_NodeBlock3

pop_bb14:                                         ; preds = %pop_NodeBlock5
  %"23" = load %struct.cell** @pop.t4, align 8
  %"24" = getelementptr inbounds %struct.cell* %"23", i32 0, i32 1
  %"25" = load %struct.cell** %"24", align 8
  store %struct.cell* %"25", %struct.cell** @pop.x4, align 8
  br label %pop_bb19

pop_NodeBlock3:                                   ; preds = %pop_NodeBlock5
  %Pivot4 = icmp slt i32 %"18", 5
  br i1 %Pivot4, label %pop_bb15, label %pop_LeafBlock1

pop_bb15:                                         ; preds = %pop_NodeBlock3
  %"26" = load %struct.cell** @S, align 8
  %"27" = load %struct.cell** @pop.t4, align 8
  %"28" = icmp eq %struct.cell* %"26", %"27"
  br i1 %"28", label %pop_bb16, label %pop_bb17

pop_bb16:                                         ; preds = %pop_bb15
  %"29" = load %struct.cell** @pop.x4, align 8
  store %struct.cell* %"29", %struct.cell** @S, align 8
  br label %pop_bb19

pop_bb17:                                         ; preds = %pop_bb15
  store i32 1, i32* @"'pc4", align 4
  br label %pop_bb19

pop_LeafBlock1:                                   ; preds = %pop_NodeBlock3
  %SwitchLeaf2 = icmp eq i32 %"18", 5
  br i1 %SwitchLeaf2, label %pop_bb18, label %pop_NewDefault

pop_bb18:                                         ; preds = %pop_LeafBlock1
  %"30" = load %struct.cell** @pop.t4, align 8
  %"31" = getelementptr inbounds %struct.cell* %"30", i32 0, i32 0
  %"32" = load i32* %"31", align 4
  store i32 %"32", i32* @"'pop.res4", align 4
  %"33" = load %struct.cell** @garbage, align 8
  %"34" = load %struct.cell** @pop.t4, align 8
  %"35" = getelementptr inbounds %struct.cell* %"34", i32 0, i32 1
  store %struct.cell* %"33", %struct.cell** %"35", align 8
  %"36" = load %struct.cell** @pop.t4, align 8
  store %struct.cell* %"36", %struct.cell** @garbage, align 8
  store i32 1, i32* @"'pc4", align 4
  br label %pop_bb19

pop_NewDefault:                                   ; preds = %pop_LeafBlock1, %pop_LeafBlock
  br label %pop_bb19

pop_bb19:                                         ; preds = %pop_NewDefault, %pop_bb16, %pop_bb17, %pop_bb12, %pop_bb13, %pop_bb18, %pop_bb14, %pop_bb11
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb20:
  br label %main_push.exit

main_push.exit:                                   ; preds = %main_LeafBlock.i, %main_LeafBlock3.i, %main_bb23, %main_bb24, %main_bb25, %main_bb26, %main_bb28, %main_bb29, %main_bb30, %main_LeafBlock.i6, %main_LeafBlock1.i, %main_bb32, %main_bb33, %main_bb34, %main_bb35, %main_bb37, %main_bb38, %main_bb39, %main_bb20
  %"37" = load %struct.cell** @S, align 8
  %"38" = icmp ne %struct.cell* %"37", null
  %"39" = load i32* @"'pc1", align 4
  %"40" = icmp ne i32 1, %"39"
  %or.cond = or i1 %"38", %"40"
  %"41" = load i32* @"'pc4", align 4
  %"42" = icmp ne i32 1, %"41"
  %or.cond12 = or i1 %or.cond, %"42"
  br i1 %or.cond12, label %main_.critedge, label %main_bb21

main_bb21:                                        ; preds = %main_push.exit
  %"43" = call i32 @__VERIFIER_nondet_int()
  %"44" = icmp ne i32 %"43", 0
  br i1 %"44", label %main_.critedge, label %main_bb40

main_.critedge:                                   ; preds = %main_push.exit, %main_bb21
  %"45" = call i32 @__VERIFIER_nondet_int()
  %"46" = icmp ne i32 %"45", 0
  br i1 %"46", label %main_bb22, label %main_bb31

main_bb22:                                        ; preds = %main_.critedge
  %"47" = load i32* @"'pc1", align 4
  %"48" = add nsw i32 %"47", 1
  store i32 %"48", i32* @"'pc1", align 4
  %Pivot10.i = icmp slt i32 %"47", 4
  br i1 %Pivot10.i, label %main_NodeBlock1.i, label %main_NodeBlock7.i

main_NodeBlock1.i:                                ; preds = %main_bb22
  %Pivot2.i = icmp slt i32 %"47", 2
  br i1 %Pivot2.i, label %main_LeafBlock.i, label %main_NodeBlock.i

main_LeafBlock.i:                                 ; preds = %main_NodeBlock1.i
  %SwitchLeaf.i = icmp eq i32 %"47", 1
  br i1 %SwitchLeaf.i, label %main_bb23, label %main_push.exit

main_bb23:                                        ; preds = %main_LeafBlock.i
  %"49" = call noalias i8* @malloc(i64 16) #3
  %"50" = bitcast i8* %"49" to %struct.cell*
  store %struct.cell* %"50", %struct.cell** @push.x1, align 8
  %"51" = load %struct.cell** @push.x1, align 8
  %"52" = getelementptr inbounds %struct.cell* %"51", i32 0, i32 0
  store i32 0, i32* %"52", align 4
  %"53" = load %struct.cell** @push.x1, align 8
  %"54" = getelementptr inbounds %struct.cell* %"53", i32 0, i32 1
  store %struct.cell* null, %struct.cell** %"54", align 8
  br label %main_push.exit

main_NodeBlock.i:                                 ; preds = %main_NodeBlock1.i
  %Pivot.i = icmp slt i32 %"47", 3
  br i1 %Pivot.i, label %main_bb24, label %main_bb25

main_bb24:                                        ; preds = %main_NodeBlock.i
  %"55" = load %struct.cell** @push.x1, align 8
  %"56" = getelementptr inbounds %struct.cell* %"55", i32 0, i32 0
  store i32 4, i32* %"56", align 4
  br label %main_push.exit

main_bb25:                                        ; preds = %main_NodeBlock.i
  %"57" = load %struct.cell** @S, align 8
  store %struct.cell* %"57", %struct.cell** @push.t1, align 8
  br label %main_push.exit

main_NodeBlock7.i:                                ; preds = %main_bb22
  %Pivot8.i = icmp slt i32 %"47", 5
  br i1 %Pivot8.i, label %main_bb26, label %main_NodeBlock5.i

main_bb26:                                        ; preds = %main_NodeBlock7.i
  %"58" = load %struct.cell** @push.t1, align 8
  %"59" = load %struct.cell** @push.x1, align 8
  %"60" = getelementptr inbounds %struct.cell* %"59", i32 0, i32 1
  store %struct.cell* %"58", %struct.cell** %"60", align 8
  br label %main_push.exit

main_NodeBlock5.i:                                ; preds = %main_NodeBlock7.i
  %Pivot6.i = icmp slt i32 %"47", 6
  br i1 %Pivot6.i, label %main_bb27, label %main_LeafBlock3.i

main_bb27:                                        ; preds = %main_NodeBlock5.i
  %"61" = load %struct.cell** @S, align 8
  %"62" = load %struct.cell** @push.t1, align 8
  %"63" = icmp eq %struct.cell* %"61", %"62"
  br i1 %"63", label %main_bb28, label %main_bb29

main_bb28:                                        ; preds = %main_bb27
  %"64" = load %struct.cell** @push.x1, align 8
  store %struct.cell* %"64", %struct.cell** @S, align 8
  br label %main_push.exit

main_bb29:                                        ; preds = %main_bb27
  store i32 3, i32* @"'pc1", align 4
  br label %main_push.exit

main_LeafBlock3.i:                                ; preds = %main_NodeBlock5.i
  %SwitchLeaf4.i = icmp eq i32 %"47", 6
  br i1 %SwitchLeaf4.i, label %main_bb30, label %main_push.exit

main_bb30:                                        ; preds = %main_LeafBlock3.i
  store i32 1, i32* @"'pc1", align 4
  br label %main_push.exit

main_bb31:                                        ; preds = %main_.critedge
  %"65" = load i32* @"'pc4", align 4
  %"66" = add nsw i32 %"65", 1
  store i32 %"66", i32* @"'pc4", align 4
  %Pivot8.i1 = icmp slt i32 %"65", 3
  br i1 %Pivot8.i1, label %main_NodeBlock.i4, label %main_NodeBlock5.i8

main_NodeBlock.i4:                                ; preds = %main_bb31
  %Pivot.i3 = icmp slt i32 %"65", 2
  br i1 %Pivot.i3, label %main_LeafBlock.i6, label %main_bb33

main_LeafBlock.i6:                                ; preds = %main_NodeBlock.i4
  %SwitchLeaf.i5 = icmp eq i32 %"65", 1
  br i1 %SwitchLeaf.i5, label %main_bb32, label %main_push.exit

main_bb32:                                        ; preds = %main_LeafBlock.i6
  %"67" = load %struct.cell** @S, align 8
  store %struct.cell* %"67", %struct.cell** @pop.t4, align 8
  br label %main_push.exit

main_bb33:                                        ; preds = %main_NodeBlock.i4
  %"68" = load %struct.cell** @pop.t4, align 8
  %"69" = icmp eq %struct.cell* %"68", null
  br i1 %"69", label %main_bb34, label %main_push.exit

main_bb34:                                        ; preds = %main_bb33
  store i32 1, i32* @"'pc4", align 4
  br label %main_push.exit

main_NodeBlock5.i8:                               ; preds = %main_bb31
  %Pivot6.i7 = icmp slt i32 %"65", 4
  br i1 %Pivot6.i7, label %main_bb35, label %main_NodeBlock3.i

main_bb35:                                        ; preds = %main_NodeBlock5.i8
  %"70" = load %struct.cell** @pop.t4, align 8
  %"71" = getelementptr inbounds %struct.cell* %"70", i32 0, i32 1
  %"72" = load %struct.cell** %"71", align 8
  store %struct.cell* %"72", %struct.cell** @pop.x4, align 8
  br label %main_push.exit

main_NodeBlock3.i:                                ; preds = %main_NodeBlock5.i8
  %Pivot4.i = icmp slt i32 %"65", 5
  br i1 %Pivot4.i, label %main_bb36, label %main_LeafBlock1.i

main_bb36:                                        ; preds = %main_NodeBlock3.i
  %"73" = load %struct.cell** @S, align 8
  %"74" = load %struct.cell** @pop.t4, align 8
  %"75" = icmp eq %struct.cell* %"73", %"74"
  br i1 %"75", label %main_bb37, label %main_bb38

main_bb37:                                        ; preds = %main_bb36
  %"76" = load %struct.cell** @pop.x4, align 8
  store %struct.cell* %"76", %struct.cell** @S, align 8
  br label %main_push.exit

main_bb38:                                        ; preds = %main_bb36
  store i32 1, i32* @"'pc4", align 4
  br label %main_push.exit

main_LeafBlock1.i:                                ; preds = %main_NodeBlock3.i
  %SwitchLeaf2.i = icmp eq i32 %"65", 5
  br i1 %SwitchLeaf2.i, label %main_bb39, label %main_push.exit

main_bb39:                                        ; preds = %main_LeafBlock1.i
  %"77" = load %struct.cell** @pop.t4, align 8
  %"78" = getelementptr inbounds %struct.cell* %"77", i32 0, i32 0
  %"79" = load i32* %"78", align 4
  store i32 %"79", i32* @"'pop.res4", align 4
  %"80" = load %struct.cell** @garbage, align 8
  %"81" = load %struct.cell** @pop.t4, align 8
  %"82" = getelementptr inbounds %struct.cell* %"81", i32 0, i32 1
  store %struct.cell* %"80", %struct.cell** %"82", align 8
  %"83" = load %struct.cell** @pop.t4, align 8
  store %struct.cell* %"83", %struct.cell** @garbage, align 8
  store i32 1, i32* @"'pc4", align 4
  br label %main_push.exit

main_bb40:                                        ; preds = %main_bb21, %main_bb41
  %"84" = load %struct.cell** @garbage, align 8
  %"85" = icmp ne %struct.cell* %"84", null
  %"86" = load %struct.cell** @garbage, align 8
  br i1 %"85", label %main_bb41, label %main_bb42

main_bb41:                                        ; preds = %main_bb40
  %"87" = getelementptr inbounds %struct.cell* %"86", i32 0, i32 1
  %"88" = load %struct.cell** %"87", align 8
  %"89" = load %struct.cell** @garbage, align 8
  %"90" = bitcast %struct.cell* %"89" to i8*
  call void @free(i8* %"90") #3
  store %struct.cell* %"88", %struct.cell** @garbage, align 8
  br label %main_bb40

main_bb42:                                        ; preds = %main_bb40
  %"91" = icmp ne %struct.cell* %"86", null
  %"92" = xor i1 %"91", true
  %"93" = xor i1 %"92", true
  %"94" = zext i1 %"93" to i32
  ret i32 %"94"
}

declare i32 @__VERIFIER_nondet_int() #2

; Function Attrs: nounwind
declare void @free(i8*) #1

declare i32 @__kittel_nondef.0()

declare %struct.cell* @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

