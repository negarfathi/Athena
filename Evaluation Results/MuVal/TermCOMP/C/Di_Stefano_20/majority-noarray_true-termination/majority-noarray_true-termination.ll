; ModuleID = 'Benchmarks/TermCOMP/C/Di_Stefano_20/majority-noarray_true-termination/majority-noarray_true-termination.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"'pc_0" = common global i8 0, align 1
@"'pc_1" = common global i8 0, align 1
@"'pc_2" = common global i8 0, align 1
@"'E_0" = common global i8 0, align 1
@"'E_1" = common global i8 0, align 1
@"'E_2" = common global i8 0, align 1
@"'E_3" = common global i8 0, align 1
@"'_I_21_1_0" = common global i8 0, align 1
@"'_I_21_1_1" = common global i8 0, align 1
@"'_I_21_1_2" = common global i8 0, align 1
@"'_pc_21_1_0" = common global i8 0, align 1
@"'_pc_21_1_1" = common global i8 0, align 1
@"'_pc_21_1_2" = common global i8 0, align 1
@"'_E_21_1_0" = common global i8 0, align 1
@"'_E_21_1_1" = common global i8 0, align 1
@"'_E_21_1_2" = common global i8 0, align 1
@"'_E_21_1_3" = common global i8 0, align 1
@"'I_0" = common global i8 0, align 1
@"'I_1" = common global i8 0, align 1
@"'I_2" = common global i8 0, align 1

; Function Attrs: nounwind uwtable
define void @setpc(i32 %x0, i32 %x1, i32 %value) #0 {
setpc_bb0:
  %"0" = mul nsw i32 3, %x0
  %"1" = add nsw i32 %"0", %x1
  br label %setpc_NodeBlock3

setpc_NodeBlock3:                                 ; preds = %setpc_bb0
  %Pivot4 = icmp slt i32 %"1", 1
  br i1 %Pivot4, label %setpc_LeafBlock, label %setpc_NodeBlock

setpc_LeafBlock:                                  ; preds = %setpc_NodeBlock3
  %SwitchLeaf = icmp eq i32 %"1", 0
  br i1 %SwitchLeaf, label %setpc_bb1, label %setpc_NewDefault

setpc_bb1:                                        ; preds = %setpc_LeafBlock
  %"2" = trunc i32 %value to i8
  store i8 %"2", i8* @"'pc_0", align 1
  br label %setpc_bb4

setpc_NodeBlock:                                  ; preds = %setpc_NodeBlock3
  %Pivot = icmp slt i32 %"1", 2
  br i1 %Pivot, label %setpc_bb2, label %setpc_LeafBlock1

setpc_bb2:                                        ; preds = %setpc_NodeBlock
  %"3" = trunc i32 %value to i8
  store i8 %"3", i8* @"'pc_1", align 1
  br label %setpc_bb4

setpc_LeafBlock1:                                 ; preds = %setpc_NodeBlock
  %SwitchLeaf2 = icmp eq i32 %"1", 2
  br i1 %SwitchLeaf2, label %setpc_bb3, label %setpc_NewDefault

setpc_bb3:                                        ; preds = %setpc_LeafBlock1
  %"4" = trunc i32 %value to i8
  store i8 %"4", i8* @"'pc_2", align 1
  br label %setpc_bb4

setpc_NewDefault:                                 ; preds = %setpc_LeafBlock1, %setpc_LeafBlock
  br label %setpc_bb4

setpc_bb4:                                        ; preds = %setpc_NewDefault, %setpc_bb3, %setpc_bb2, %setpc_bb1
  ret void
}

; Function Attrs: nounwind uwtable
define signext i8 @getE(i32 %x0) #0 {
getE_bb5:
  %"5" = call i8 @__kittel_nondef.1()
  br label %getE_NodeBlock5

getE_NodeBlock5:                                  ; preds = %getE_bb5
  %Pivot6 = icmp slt i32 %x0, 2
  br i1 %Pivot6, label %getE_NodeBlock, label %getE_NodeBlock3

getE_NodeBlock:                                   ; preds = %getE_NodeBlock5
  %Pivot = icmp slt i32 %x0, 1
  br i1 %Pivot, label %getE_LeafBlock, label %getE_bb7

getE_LeafBlock:                                   ; preds = %getE_NodeBlock
  %SwitchLeaf = icmp eq i32 %x0, 0
  br i1 %SwitchLeaf, label %getE_bb6, label %getE_NewDefault

getE_bb6:                                         ; preds = %getE_LeafBlock
  %"6" = load i8* @"'E_0", align 1
  br label %getE_bb10

getE_bb7:                                         ; preds = %getE_NodeBlock
  %"7" = load i8* @"'E_1", align 1
  br label %getE_bb10

getE_NodeBlock3:                                  ; preds = %getE_NodeBlock5
  %Pivot4 = icmp slt i32 %x0, 3
  br i1 %Pivot4, label %getE_bb8, label %getE_LeafBlock1

getE_bb8:                                         ; preds = %getE_NodeBlock3
  %"8" = load i8* @"'E_2", align 1
  br label %getE_bb10

getE_LeafBlock1:                                  ; preds = %getE_NodeBlock3
  %SwitchLeaf2 = icmp eq i32 %x0, 3
  br i1 %SwitchLeaf2, label %getE_bb9, label %getE_NewDefault

getE_bb9:                                         ; preds = %getE_LeafBlock1
  %"9" = load i8* @"'E_3", align 1
  br label %getE_bb10

getE_NewDefault:                                  ; preds = %getE_LeafBlock1, %getE_LeafBlock
  br label %getE_bb10

getE_bb10:                                        ; preds = %getE_NewDefault, %getE_bb9, %getE_bb8, %getE_bb7, %getE_bb6
  %.0 = phi i8 [ %"5", %getE_NewDefault ], [ %"9", %getE_bb9 ], [ %"8", %getE_bb8 ], [ %"7", %getE_bb7 ], [ %"6", %getE_bb6 ]
  ret i8 %.0
}

; Function Attrs: nounwind uwtable
define signext i8 @get_I_21_1(i32 %x0, i32 %x1) #0 {
get_I_21_1_bb11:
  %"10" = call i8 @__kittel_nondef.1()
  %"11" = mul nsw i32 3, %x0
  %"12" = add nsw i32 %"11", %x1
  br label %get_I_21_1_NodeBlock3

get_I_21_1_NodeBlock3:                            ; preds = %get_I_21_1_bb11
  %Pivot4 = icmp slt i32 %"12", 1
  br i1 %Pivot4, label %get_I_21_1_LeafBlock, label %get_I_21_1_NodeBlock

get_I_21_1_LeafBlock:                             ; preds = %get_I_21_1_NodeBlock3
  %SwitchLeaf = icmp eq i32 %"12", 0
  br i1 %SwitchLeaf, label %get_I_21_1_bb12, label %get_I_21_1_NewDefault

get_I_21_1_bb12:                                  ; preds = %get_I_21_1_LeafBlock
  %"13" = load i8* @"'_I_21_1_0", align 1
  br label %get_I_21_1_bb15

get_I_21_1_NodeBlock:                             ; preds = %get_I_21_1_NodeBlock3
  %Pivot = icmp slt i32 %"12", 2
  br i1 %Pivot, label %get_I_21_1_bb13, label %get_I_21_1_LeafBlock1

get_I_21_1_bb13:                                  ; preds = %get_I_21_1_NodeBlock
  %"14" = load i8* @"'_I_21_1_1", align 1
  br label %get_I_21_1_bb15

get_I_21_1_LeafBlock1:                            ; preds = %get_I_21_1_NodeBlock
  %SwitchLeaf2 = icmp eq i32 %"12", 2
  br i1 %SwitchLeaf2, label %get_I_21_1_bb14, label %get_I_21_1_NewDefault

get_I_21_1_bb14:                                  ; preds = %get_I_21_1_LeafBlock1
  %"15" = load i8* @"'_I_21_1_2", align 1
  br label %get_I_21_1_bb15

get_I_21_1_NewDefault:                            ; preds = %get_I_21_1_LeafBlock1, %get_I_21_1_LeafBlock
  br label %get_I_21_1_bb15

get_I_21_1_bb15:                                  ; preds = %get_I_21_1_NewDefault, %get_I_21_1_bb14, %get_I_21_1_bb13, %get_I_21_1_bb12
  %.0 = phi i8 [ %"10", %get_I_21_1_NewDefault ], [ %"15", %get_I_21_1_bb14 ], [ %"14", %get_I_21_1_bb13 ], [ %"13", %get_I_21_1_bb12 ]
  ret i8 %.0
}

; Function Attrs: nounwind uwtable
define zeroext i8 @get_pc_21_1(i32 %x0, i32 %x1) #0 {
get_pc_21_1_bb16:
  %"16" = call i8 @__kittel_nondef.1()
  %"17" = mul nsw i32 3, %x0
  %"18" = add nsw i32 %"17", %x1
  br label %get_pc_21_1_NodeBlock3

get_pc_21_1_NodeBlock3:                           ; preds = %get_pc_21_1_bb16
  %Pivot4 = icmp slt i32 %"18", 1
  br i1 %Pivot4, label %get_pc_21_1_LeafBlock, label %get_pc_21_1_NodeBlock

get_pc_21_1_LeafBlock:                            ; preds = %get_pc_21_1_NodeBlock3
  %SwitchLeaf = icmp eq i32 %"18", 0
  br i1 %SwitchLeaf, label %get_pc_21_1_bb17, label %get_pc_21_1_NewDefault

get_pc_21_1_bb17:                                 ; preds = %get_pc_21_1_LeafBlock
  %"19" = load i8* @"'_pc_21_1_0", align 1
  br label %get_pc_21_1_bb20

get_pc_21_1_NodeBlock:                            ; preds = %get_pc_21_1_NodeBlock3
  %Pivot = icmp slt i32 %"18", 2
  br i1 %Pivot, label %get_pc_21_1_bb18, label %get_pc_21_1_LeafBlock1

get_pc_21_1_bb18:                                 ; preds = %get_pc_21_1_NodeBlock
  %"20" = load i8* @"'_pc_21_1_1", align 1
  br label %get_pc_21_1_bb20

get_pc_21_1_LeafBlock1:                           ; preds = %get_pc_21_1_NodeBlock
  %SwitchLeaf2 = icmp eq i32 %"18", 2
  br i1 %SwitchLeaf2, label %get_pc_21_1_bb19, label %get_pc_21_1_NewDefault

get_pc_21_1_bb19:                                 ; preds = %get_pc_21_1_LeafBlock1
  %"21" = load i8* @"'_pc_21_1_2", align 1
  br label %get_pc_21_1_bb20

get_pc_21_1_NewDefault:                           ; preds = %get_pc_21_1_LeafBlock1, %get_pc_21_1_LeafBlock
  br label %get_pc_21_1_bb20

get_pc_21_1_bb20:                                 ; preds = %get_pc_21_1_NewDefault, %get_pc_21_1_bb19, %get_pc_21_1_bb18, %get_pc_21_1_bb17
  %.0 = phi i8 [ %"16", %get_pc_21_1_NewDefault ], [ %"21", %get_pc_21_1_bb19 ], [ %"20", %get_pc_21_1_bb18 ], [ %"19", %get_pc_21_1_bb17 ]
  ret i8 %.0
}

; Function Attrs: nounwind uwtable
define zeroext i8 @getpc(i32 %x0, i32 %x1) #0 {
getpc_bb21:
  %"22" = call i8 @__kittel_nondef.1()
  %"23" = mul nsw i32 3, %x0
  %"24" = add nsw i32 %"23", %x1
  br label %getpc_NodeBlock3

getpc_NodeBlock3:                                 ; preds = %getpc_bb21
  %Pivot4 = icmp slt i32 %"24", 1
  br i1 %Pivot4, label %getpc_LeafBlock, label %getpc_NodeBlock

getpc_LeafBlock:                                  ; preds = %getpc_NodeBlock3
  %SwitchLeaf = icmp eq i32 %"24", 0
  br i1 %SwitchLeaf, label %getpc_bb22, label %getpc_NewDefault

getpc_bb22:                                       ; preds = %getpc_LeafBlock
  %"25" = load i8* @"'pc_0", align 1
  br label %getpc_bb25

getpc_NodeBlock:                                  ; preds = %getpc_NodeBlock3
  %Pivot = icmp slt i32 %"24", 2
  br i1 %Pivot, label %getpc_bb23, label %getpc_LeafBlock1

getpc_bb23:                                       ; preds = %getpc_NodeBlock
  %"26" = load i8* @"'pc_1", align 1
  br label %getpc_bb25

getpc_LeafBlock1:                                 ; preds = %getpc_NodeBlock
  %SwitchLeaf2 = icmp eq i32 %"24", 2
  br i1 %SwitchLeaf2, label %getpc_bb24, label %getpc_NewDefault

getpc_bb24:                                       ; preds = %getpc_LeafBlock1
  %"27" = load i8* @"'pc_2", align 1
  br label %getpc_bb25

getpc_NewDefault:                                 ; preds = %getpc_LeafBlock1, %getpc_LeafBlock
  br label %getpc_bb25

getpc_bb25:                                       ; preds = %getpc_NewDefault, %getpc_bb24, %getpc_bb23, %getpc_bb22
  %.0 = phi i8 [ %"22", %getpc_NewDefault ], [ %"27", %getpc_bb24 ], [ %"26", %getpc_bb23 ], [ %"25", %getpc_bb22 ]
  ret i8 %.0
}

; Function Attrs: nounwind uwtable
define signext i8 @get_E_21_1(i32 %x0) #0 {
get_E_21_1_bb26:
  %"28" = call i8 @__kittel_nondef.1()
  br label %get_E_21_1_NodeBlock5

get_E_21_1_NodeBlock5:                            ; preds = %get_E_21_1_bb26
  %Pivot6 = icmp slt i32 %x0, 2
  br i1 %Pivot6, label %get_E_21_1_NodeBlock, label %get_E_21_1_NodeBlock3

get_E_21_1_NodeBlock:                             ; preds = %get_E_21_1_NodeBlock5
  %Pivot = icmp slt i32 %x0, 1
  br i1 %Pivot, label %get_E_21_1_LeafBlock, label %get_E_21_1_bb28

get_E_21_1_LeafBlock:                             ; preds = %get_E_21_1_NodeBlock
  %SwitchLeaf = icmp eq i32 %x0, 0
  br i1 %SwitchLeaf, label %get_E_21_1_bb27, label %get_E_21_1_NewDefault

get_E_21_1_bb27:                                  ; preds = %get_E_21_1_LeafBlock
  %"29" = load i8* @"'_E_21_1_0", align 1
  br label %get_E_21_1_bb31

get_E_21_1_bb28:                                  ; preds = %get_E_21_1_NodeBlock
  %"30" = load i8* @"'_E_21_1_1", align 1
  br label %get_E_21_1_bb31

get_E_21_1_NodeBlock3:                            ; preds = %get_E_21_1_NodeBlock5
  %Pivot4 = icmp slt i32 %x0, 3
  br i1 %Pivot4, label %get_E_21_1_bb29, label %get_E_21_1_LeafBlock1

get_E_21_1_bb29:                                  ; preds = %get_E_21_1_NodeBlock3
  %"31" = load i8* @"'_E_21_1_2", align 1
  br label %get_E_21_1_bb31

get_E_21_1_LeafBlock1:                            ; preds = %get_E_21_1_NodeBlock3
  %SwitchLeaf2 = icmp eq i32 %x0, 3
  br i1 %SwitchLeaf2, label %get_E_21_1_bb30, label %get_E_21_1_NewDefault

get_E_21_1_bb30:                                  ; preds = %get_E_21_1_LeafBlock1
  %"32" = load i8* @"'_E_21_1_3", align 1
  br label %get_E_21_1_bb31

get_E_21_1_NewDefault:                            ; preds = %get_E_21_1_LeafBlock1, %get_E_21_1_LeafBlock
  br label %get_E_21_1_bb31

get_E_21_1_bb31:                                  ; preds = %get_E_21_1_NewDefault, %get_E_21_1_bb30, %get_E_21_1_bb29, %get_E_21_1_bb28, %get_E_21_1_bb27
  %.0 = phi i8 [ %"28", %get_E_21_1_NewDefault ], [ %"32", %get_E_21_1_bb30 ], [ %"31", %get_E_21_1_bb29 ], [ %"30", %get_E_21_1_bb28 ], [ %"29", %get_E_21_1_bb27 ]
  ret i8 %.0
}

; Function Attrs: nounwind uwtable
define signext i8 @getI(i32 %x0, i32 %x1) #0 {
getI_bb32:
  %"33" = call i8 @__kittel_nondef.1()
  %"34" = mul nsw i32 3, %x0
  %"35" = add nsw i32 %"34", %x1
  br label %getI_NodeBlock3

getI_NodeBlock3:                                  ; preds = %getI_bb32
  %Pivot4 = icmp slt i32 %"35", 1
  br i1 %Pivot4, label %getI_LeafBlock, label %getI_NodeBlock

getI_LeafBlock:                                   ; preds = %getI_NodeBlock3
  %SwitchLeaf = icmp eq i32 %"35", 0
  br i1 %SwitchLeaf, label %getI_bb33, label %getI_NewDefault

getI_bb33:                                        ; preds = %getI_LeafBlock
  %"36" = load i8* @"'I_0", align 1
  br label %getI_bb36

getI_NodeBlock:                                   ; preds = %getI_NodeBlock3
  %Pivot = icmp slt i32 %"35", 2
  br i1 %Pivot, label %getI_bb34, label %getI_LeafBlock1

getI_bb34:                                        ; preds = %getI_NodeBlock
  %"37" = load i8* @"'I_1", align 1
  br label %getI_bb36

getI_LeafBlock1:                                  ; preds = %getI_NodeBlock
  %SwitchLeaf2 = icmp eq i32 %"35", 2
  br i1 %SwitchLeaf2, label %getI_bb35, label %getI_NewDefault

getI_bb35:                                        ; preds = %getI_LeafBlock1
  %"38" = load i8* @"'I_2", align 1
  br label %getI_bb36

getI_NewDefault:                                  ; preds = %getI_LeafBlock1, %getI_LeafBlock
  br label %getI_bb36

getI_bb36:                                        ; preds = %getI_NewDefault, %getI_bb35, %getI_bb34, %getI_bb33
  %.0 = phi i8 [ %"33", %getI_NewDefault ], [ %"38", %getI_bb35 ], [ %"37", %getI_bb34 ], [ %"36", %getI_bb33 ]
  ret i8 %.0
}

; Function Attrs: nounwind uwtable
define void @setI(i32 %x0, i32 %x1, i8 signext %value) #0 {
setI_bb37:
  %"39" = mul nsw i32 3, %x0
  %"40" = add nsw i32 %"39", %x1
  br label %setI_NodeBlock3

setI_NodeBlock3:                                  ; preds = %setI_bb37
  %Pivot4 = icmp slt i32 %"40", 1
  br i1 %Pivot4, label %setI_LeafBlock, label %setI_NodeBlock

setI_LeafBlock:                                   ; preds = %setI_NodeBlock3
  %SwitchLeaf = icmp eq i32 %"40", 0
  br i1 %SwitchLeaf, label %setI_bb38, label %setI_NewDefault

setI_bb38:                                        ; preds = %setI_LeafBlock
  store i8 %value, i8* @"'I_0", align 1
  br label %setI_bb41

setI_NodeBlock:                                   ; preds = %setI_NodeBlock3
  %Pivot = icmp slt i32 %"40", 2
  br i1 %Pivot, label %setI_bb39, label %setI_LeafBlock1

setI_bb39:                                        ; preds = %setI_NodeBlock
  store i8 %value, i8* @"'I_1", align 1
  br label %setI_bb41

setI_LeafBlock1:                                  ; preds = %setI_NodeBlock
  %SwitchLeaf2 = icmp eq i32 %"40", 2
  br i1 %SwitchLeaf2, label %setI_bb40, label %setI_NewDefault

setI_bb40:                                        ; preds = %setI_LeafBlock1
  store i8 %value, i8* @"'I_2", align 1
  br label %setI_bb41

setI_NewDefault:                                  ; preds = %setI_LeafBlock1, %setI_LeafBlock
  br label %setI_bb41

setI_bb41:                                        ; preds = %setI_NewDefault, %setI_bb40, %setI_bb39, %setI_bb38
  ret void
}

; Function Attrs: nounwind uwtable
define void @attr(i8 zeroext %id, i8 zeroext %key, i8 signext %value, i1 zeroext %check) #0 {
attr_bb42:
  %"41" = zext i8 %id to i32
  %"42" = zext i8 %key to i32
  %"43" = mul nsw i32 3, %"41"
  %"44" = add nsw i32 %"43", %"42"
  %Pivot4.i = icmp slt i32 %"44", 1
  br i1 %Pivot4.i, label %attr_LeafBlock.i, label %attr_NodeBlock.i

attr_LeafBlock.i:                                 ; preds = %attr_bb42
  %SwitchLeaf.i = icmp eq i32 %"44", 0
  br i1 %SwitchLeaf.i, label %attr_bb43, label %attr_setI.exit

attr_bb43:                                        ; preds = %attr_LeafBlock.i
  store i8 %value, i8* @"'I_0", align 1
  br label %attr_setI.exit

attr_NodeBlock.i:                                 ; preds = %attr_bb42
  %Pivot.i = icmp slt i32 %"44", 2
  br i1 %Pivot.i, label %attr_bb44, label %attr_LeafBlock1.i

attr_bb44:                                        ; preds = %attr_NodeBlock.i
  store i8 %value, i8* @"'I_1", align 1
  br label %attr_setI.exit

attr_LeafBlock1.i:                                ; preds = %attr_NodeBlock.i
  %SwitchLeaf2.i = icmp eq i32 %"44", 2
  br i1 %SwitchLeaf2.i, label %attr_bb45, label %attr_setI.exit

attr_bb45:                                        ; preds = %attr_LeafBlock1.i
  store i8 %value, i8* @"'I_2", align 1
  br label %attr_setI.exit

attr_setI.exit:                                   ; preds = %attr_LeafBlock.i, %attr_LeafBlock1.i, %attr_bb43, %attr_bb44, %attr_bb45
  ret void
}

; Function Attrs: nounwind uwtable
define void @_0_13(i32 %tid) #0 {
_0_13_bb46:
  %"45" = call i8 @__kittel_nondef.1() #2
  %"46" = load i8* @"'E_0", align 1
  %"47" = sext i8 %"46" to i32
  %"48" = icmp ne i32 %"47", %tid
  %"49" = zext i1 %"48" to i32
  %"50" = bitcast i32 (...)* @__VERIFIER_assume to i32 (i32, ...)*
  %"51" = call i32 (i32, ...)* %"50"(i32 %"49")
  %"52" = call i8 @__kittel_nondef.1() #2
  %"53" = load i8* @"'E_1", align 1
  %"54" = sext i8 %"53" to i32
  %"55" = icmp eq i32 %"54", 1
  %"56" = zext i1 %"55" to i32
  %"57" = bitcast i32 (...)* @__VERIFIER_assume to i32 (i32, ...)*
  %"58" = call i32 (i32, ...)* %"57"(i32 %"56")
  %"59" = call i8 @__kittel_nondef.1() #2
  %"60" = load i8* @"'E_2", align 1
  %"61" = sext i8 %"60" to i32
  %"62" = icmp eq i32 %"61", 3
  br i1 %"62", label %_0_13_bb47, label %_0_13_bb49

_0_13_bb47:                                       ; preds = %_0_13_bb46
  %"63" = call i8 @__kittel_nondef.1() #2
  %"64" = mul nsw i32 3, %tid
  %Pivot4.i = icmp slt i32 %"64", 1
  br i1 %Pivot4.i, label %_0_13_LeafBlock.i, label %_0_13_NodeBlock.i

_0_13_LeafBlock.i:                                ; preds = %_0_13_bb47
  %SwitchLeaf.i = icmp eq i32 %"64", 0
  %"65" = load i8* @"'I_0", align 1
  %. = select i1 %SwitchLeaf.i, i8 %"65", i8 %"63"
  br label %_0_13_getI.exit

_0_13_NodeBlock.i:                                ; preds = %_0_13_bb47
  %Pivot.i = icmp slt i32 %"64", 2
  br i1 %Pivot.i, label %_0_13_bb48, label %_0_13_LeafBlock1.i

_0_13_bb48:                                       ; preds = %_0_13_NodeBlock.i
  %"66" = load i8* @"'I_1", align 1
  br label %_0_13_getI.exit

_0_13_LeafBlock1.i:                               ; preds = %_0_13_NodeBlock.i
  %SwitchLeaf2.i = icmp eq i32 %"64", 2
  %"67" = load i8* @"'I_2", align 1
  %.9 = select i1 %SwitchLeaf2.i, i8 %"67", i8 %"63"
  br label %_0_13_getI.exit

_0_13_getI.exit:                                  ; preds = %_0_13_LeafBlock1.i, %_0_13_LeafBlock.i, %_0_13_bb48
  %.0.i = phi i8 [ %"66", %_0_13_bb48 ], [ %., %_0_13_LeafBlock.i ], [ %.9, %_0_13_LeafBlock1.i ]
  %"68" = sext i8 %.0.i to i32
  %"69" = icmp eq i32 %"68", 2
  br label %_0_13_bb49

_0_13_bb49:                                       ; preds = %_0_13_getI.exit, %_0_13_bb46
  %"70" = phi i1 [ false, %_0_13_bb46 ], [ %"69", %_0_13_getI.exit ]
  %"71" = zext i1 %"70" to i32
  %"72" = bitcast i32 (...)* @__VERIFIER_assume to i32 (i32, ...)*
  %"73" = call i32 (i32, ...)* %"72"(i32 %"71")
  %"74" = trunc i32 %tid to i8
  %"75" = zext i8 %"74" to i32
  %"76" = mul nsw i32 3, %"75"
  %Pivot4.i.i = icmp slt i32 %"76", 1
  br i1 %Pivot4.i.i, label %_0_13_LeafBlock.i.i, label %_0_13_NodeBlock.i.i

_0_13_LeafBlock.i.i:                              ; preds = %_0_13_bb49
  %SwitchLeaf.i.i = icmp eq i32 %"76", 0
  br i1 %SwitchLeaf.i.i, label %_0_13_bb50, label %_0_13_attr.exit

_0_13_bb50:                                       ; preds = %_0_13_LeafBlock.i.i
  store i8 3, i8* @"'I_0", align 1
  br label %_0_13_attr.exit

_0_13_NodeBlock.i.i:                              ; preds = %_0_13_bb49
  %Pivot.i.i = icmp slt i32 %"76", 2
  br i1 %Pivot.i.i, label %_0_13_bb51, label %_0_13_LeafBlock1.i.i

_0_13_bb51:                                       ; preds = %_0_13_NodeBlock.i.i
  store i8 3, i8* @"'I_1", align 1
  br label %_0_13_attr.exit

_0_13_LeafBlock1.i.i:                             ; preds = %_0_13_NodeBlock.i.i
  %SwitchLeaf2.i.i = icmp eq i32 %"76", 2
  br i1 %SwitchLeaf2.i.i, label %_0_13_bb52, label %_0_13_attr.exit

_0_13_bb52:                                       ; preds = %_0_13_LeafBlock1.i.i
  store i8 3, i8* @"'I_2", align 1
  br label %_0_13_attr.exit

_0_13_attr.exit:                                  ; preds = %_0_13_LeafBlock.i.i, %_0_13_bb50, %_0_13_bb51, %_0_13_LeafBlock1.i.i, %_0_13_bb52
  %"77" = mul nsw i32 3, %tid
  %Pivot4.i1 = icmp slt i32 %"77", 1
  br i1 %Pivot4.i1, label %_0_13_LeafBlock.i3, label %_0_13_NodeBlock.i5

_0_13_LeafBlock.i3:                               ; preds = %_0_13_attr.exit
  %SwitchLeaf.i2 = icmp eq i32 %"77", 0
  br i1 %SwitchLeaf.i2, label %_0_13_bb53, label %_0_13_setpc.exit

_0_13_bb53:                                       ; preds = %_0_13_LeafBlock.i3
  store i8 12, i8* @"'pc_0", align 1
  br label %_0_13_setpc.exit

_0_13_NodeBlock.i5:                               ; preds = %_0_13_attr.exit
  %Pivot.i4 = icmp slt i32 %"77", 2
  br i1 %Pivot.i4, label %_0_13_bb54, label %_0_13_LeafBlock1.i7

_0_13_bb54:                                       ; preds = %_0_13_NodeBlock.i5
  store i8 12, i8* @"'pc_1", align 1
  br label %_0_13_setpc.exit

_0_13_LeafBlock1.i7:                              ; preds = %_0_13_NodeBlock.i5
  %SwitchLeaf2.i6 = icmp eq i32 %"77", 2
  br i1 %SwitchLeaf2.i6, label %_0_13_bb55, label %_0_13_setpc.exit

_0_13_bb55:                                       ; preds = %_0_13_LeafBlock1.i7
  store i8 12, i8* @"'pc_2", align 1
  br label %_0_13_setpc.exit

_0_13_setpc.exit:                                 ; preds = %_0_13_LeafBlock.i3, %_0_13_LeafBlock1.i7, %_0_13_bb53, %_0_13_bb54, %_0_13_bb55
  ret void
}

declare i32 @__VERIFIER_assume(...) #1

; Function Attrs: nounwind uwtable
define void @_0_6(i32 %tid) #0 {
_0_6_bb56:
  %"78" = trunc i32 %tid to i8
  %"79" = zext i8 %"78" to i32
  %"80" = mul nsw i32 3, %"79"
  %Pivot4.i.i = icmp slt i32 %"80", 1
  br i1 %Pivot4.i.i, label %_0_6_LeafBlock.i.i, label %_0_6_NodeBlock.i.i

_0_6_LeafBlock.i.i:                               ; preds = %_0_6_bb56
  %SwitchLeaf.i.i = icmp eq i32 %"80", 0
  br i1 %SwitchLeaf.i.i, label %_0_6_bb57, label %_0_6_attr.exit

_0_6_bb57:                                        ; preds = %_0_6_LeafBlock.i.i
  store i8 2, i8* @"'I_0", align 1
  br label %_0_6_attr.exit

_0_6_NodeBlock.i.i:                               ; preds = %_0_6_bb56
  %Pivot.i.i = icmp slt i32 %"80", 2
  br i1 %Pivot.i.i, label %_0_6_bb58, label %_0_6_LeafBlock1.i.i

_0_6_bb58:                                        ; preds = %_0_6_NodeBlock.i.i
  store i8 2, i8* @"'I_1", align 1
  br label %_0_6_attr.exit

_0_6_LeafBlock1.i.i:                              ; preds = %_0_6_NodeBlock.i.i
  %SwitchLeaf2.i.i = icmp eq i32 %"80", 2
  br i1 %SwitchLeaf2.i.i, label %_0_6_bb59, label %_0_6_attr.exit

_0_6_bb59:                                        ; preds = %_0_6_LeafBlock1.i.i
  store i8 2, i8* @"'I_2", align 1
  br label %_0_6_attr.exit

_0_6_attr.exit:                                   ; preds = %_0_6_LeafBlock.i.i, %_0_6_bb57, %_0_6_bb58, %_0_6_LeafBlock1.i.i, %_0_6_bb59
  %"81" = mul nsw i32 3, %tid
  %Pivot4.i = icmp slt i32 %"81", 1
  br i1 %Pivot4.i, label %_0_6_LeafBlock.i, label %_0_6_NodeBlock.i

_0_6_LeafBlock.i:                                 ; preds = %_0_6_attr.exit
  %SwitchLeaf.i = icmp eq i32 %"81", 0
  br i1 %SwitchLeaf.i, label %_0_6_bb60, label %_0_6_setpc.exit

_0_6_bb60:                                        ; preds = %_0_6_LeafBlock.i
  store i8 5, i8* @"'pc_0", align 1
  br label %_0_6_setpc.exit

_0_6_NodeBlock.i:                                 ; preds = %_0_6_attr.exit
  %Pivot.i = icmp slt i32 %"81", 2
  br i1 %Pivot.i, label %_0_6_bb61, label %_0_6_LeafBlock1.i

_0_6_bb61:                                        ; preds = %_0_6_NodeBlock.i
  store i8 5, i8* @"'pc_1", align 1
  br label %_0_6_setpc.exit

_0_6_LeafBlock1.i:                                ; preds = %_0_6_NodeBlock.i
  %SwitchLeaf2.i = icmp eq i32 %"81", 2
  br i1 %SwitchLeaf2.i, label %_0_6_bb62, label %_0_6_setpc.exit

_0_6_bb62:                                        ; preds = %_0_6_LeafBlock1.i
  store i8 5, i8* @"'pc_2", align 1
  br label %_0_6_setpc.exit

_0_6_setpc.exit:                                  ; preds = %_0_6_LeafBlock.i, %_0_6_LeafBlock1.i, %_0_6_bb60, %_0_6_bb61, %_0_6_bb62
  ret void
}

; Function Attrs: nounwind uwtable
define void @_0_3(i32 %tid) #0 {
_0_3_bb63:
  %"82" = call i8 @__kittel_nondef.1() #2
  %"83" = load i8* @"'E_1", align 1
  %"84" = sext i8 %"83" to i32
  %"85" = icmp eq i32 %"84", 2
  br i1 %"85", label %_0_3_bb64, label %_0_3_bb65

_0_3_bb64:                                        ; preds = %_0_3_bb63
  %"86" = call i8 @__kittel_nondef.1() #2
  %"87" = load i8* @"'E_0", align 1
  %"88" = sext i8 %"87" to i32
  %"89" = icmp eq i32 %"88", %tid
  br label %_0_3_bb65

_0_3_bb65:                                        ; preds = %_0_3_bb64, %_0_3_bb63
  %"90" = phi i1 [ false, %_0_3_bb63 ], [ %"89", %_0_3_bb64 ]
  %"91" = zext i1 %"90" to i32
  %"92" = bitcast i32 (...)* @__VERIFIER_assume to i32 (i32, ...)*
  %"93" = call i32 (i32, ...)* %"92"(i32 %"91")
  %"94" = call i8 @__kittel_nondef.1() #2
  %"95" = mul nsw i32 3, %tid
  %Pivot4.i = icmp slt i32 %"95", 1
  br i1 %Pivot4.i, label %_0_3_LeafBlock.i, label %_0_3_NodeBlock.i

_0_3_LeafBlock.i:                                 ; preds = %_0_3_bb65
  %SwitchLeaf.i = icmp eq i32 %"95", 0
  %"96" = load i8* @"'I_0", align 1
  %. = select i1 %SwitchLeaf.i, i8 %"96", i8 %"94"
  br label %_0_3_getI.exit

_0_3_NodeBlock.i:                                 ; preds = %_0_3_bb65
  %Pivot.i = icmp slt i32 %"95", 2
  br i1 %Pivot.i, label %_0_3_bb66, label %_0_3_LeafBlock1.i

_0_3_bb66:                                        ; preds = %_0_3_NodeBlock.i
  %"97" = load i8* @"'I_1", align 1
  br label %_0_3_getI.exit

_0_3_LeafBlock1.i:                                ; preds = %_0_3_NodeBlock.i
  %SwitchLeaf2.i = icmp eq i32 %"95", 2
  %"98" = load i8* @"'I_2", align 1
  %.11 = select i1 %SwitchLeaf2.i, i8 %"98", i8 %"94"
  br label %_0_3_getI.exit

_0_3_getI.exit:                                   ; preds = %_0_3_LeafBlock1.i, %_0_3_LeafBlock.i, %_0_3_bb66
  %.0.i = phi i8 [ %"97", %_0_3_bb66 ], [ %., %_0_3_LeafBlock.i ], [ %.11, %_0_3_LeafBlock1.i ]
  %"99" = sext i8 %.0.i to i32
  %"100" = icmp eq i32 %"99", 1
  br i1 %"100", label %_0_3_bb67, label %_0_3_bb68

_0_3_bb67:                                        ; preds = %_0_3_getI.exit
  %"101" = call i8 @__kittel_nondef.1() #2
  %"102" = load i8* @"'E_3", align 1
  %"103" = sext i8 %"102" to i32
  %"104" = icmp eq i32 %"103", 0
  br label %_0_3_bb68

_0_3_bb68:                                        ; preds = %_0_3_bb67, %_0_3_getI.exit
  %"105" = phi i1 [ false, %_0_3_getI.exit ], [ %"104", %_0_3_bb67 ]
  %"106" = zext i1 %"105" to i32
  %"107" = bitcast i32 (...)* @__VERIFIER_assume to i32 (i32, ...)*
  %"108" = call i32 (i32, ...)* %"107"(i32 %"106")
  %"109" = trunc i32 %tid to i8
  %"110" = zext i8 %"109" to i32
  %"111" = mul nsw i32 3, %"110"
  %Pivot4.i.i = icmp slt i32 %"111", 1
  br i1 %Pivot4.i.i, label %_0_3_LeafBlock.i.i, label %_0_3_NodeBlock.i.i

_0_3_LeafBlock.i.i:                               ; preds = %_0_3_bb68
  %SwitchLeaf.i.i = icmp eq i32 %"111", 0
  br i1 %SwitchLeaf.i.i, label %_0_3_bb69, label %_0_3_attr.exit

_0_3_bb69:                                        ; preds = %_0_3_LeafBlock.i.i
  store i8 3, i8* @"'I_0", align 1
  br label %_0_3_attr.exit

_0_3_NodeBlock.i.i:                               ; preds = %_0_3_bb68
  %Pivot.i.i = icmp slt i32 %"111", 2
  br i1 %Pivot.i.i, label %_0_3_bb70, label %_0_3_LeafBlock1.i.i

_0_3_bb70:                                        ; preds = %_0_3_NodeBlock.i.i
  store i8 3, i8* @"'I_1", align 1
  br label %_0_3_attr.exit

_0_3_LeafBlock1.i.i:                              ; preds = %_0_3_NodeBlock.i.i
  %SwitchLeaf2.i.i = icmp eq i32 %"111", 2
  br i1 %SwitchLeaf2.i.i, label %_0_3_bb71, label %_0_3_attr.exit

_0_3_bb71:                                        ; preds = %_0_3_LeafBlock1.i.i
  store i8 3, i8* @"'I_2", align 1
  br label %_0_3_attr.exit

_0_3_attr.exit:                                   ; preds = %_0_3_LeafBlock.i.i, %_0_3_bb69, %_0_3_bb70, %_0_3_LeafBlock1.i.i, %_0_3_bb71
  %"112" = mul nsw i32 3, %tid
  %Pivot4.i3 = icmp slt i32 %"112", 1
  br i1 %Pivot4.i3, label %_0_3_LeafBlock.i5, label %_0_3_NodeBlock.i7

_0_3_LeafBlock.i5:                                ; preds = %_0_3_attr.exit
  %SwitchLeaf.i4 = icmp eq i32 %"112", 0
  br i1 %SwitchLeaf.i4, label %_0_3_bb72, label %_0_3_setpc.exit

_0_3_bb72:                                        ; preds = %_0_3_LeafBlock.i5
  store i8 2, i8* @"'pc_0", align 1
  br label %_0_3_setpc.exit

_0_3_NodeBlock.i7:                                ; preds = %_0_3_attr.exit
  %Pivot.i6 = icmp slt i32 %"112", 2
  br i1 %Pivot.i6, label %_0_3_bb73, label %_0_3_LeafBlock1.i9

_0_3_bb73:                                        ; preds = %_0_3_NodeBlock.i7
  store i8 2, i8* @"'pc_1", align 1
  br label %_0_3_setpc.exit

_0_3_LeafBlock1.i9:                               ; preds = %_0_3_NodeBlock.i7
  %SwitchLeaf2.i8 = icmp eq i32 %"112", 2
  br i1 %SwitchLeaf2.i8, label %_0_3_bb74, label %_0_3_setpc.exit

_0_3_bb74:                                        ; preds = %_0_3_LeafBlock1.i9
  store i8 2, i8* @"'pc_2", align 1
  br label %_0_3_setpc.exit

_0_3_setpc.exit:                                  ; preds = %_0_3_LeafBlock.i5, %_0_3_LeafBlock1.i9, %_0_3_bb72, %_0_3_bb73, %_0_3_bb74
  ret void
}

; Function Attrs: nounwind uwtable
define void @_0_11(i32 %tid) #0 {
_0_11_bb75:
  %"113" = call i8 @__kittel_nondef.1() #2
  %"114" = load i8* @"'E_0", align 1
  %"115" = sext i8 %"114" to i32
  %"116" = icmp ne i32 %"115", %tid
  %"117" = zext i1 %"116" to i32
  %"118" = bitcast i32 (...)* @__VERIFIER_assume to i32 (i32, ...)*
  %"119" = call i32 (i32, ...)* %"118"(i32 %"117")
  %"120" = call i8 @__kittel_nondef.1() #2
  %"121" = load i8* @"'E_1", align 1
  %"122" = sext i8 %"121" to i32
  %"123" = icmp eq i32 %"122", 1
  %"124" = zext i1 %"123" to i32
  %"125" = bitcast i32 (...)* @__VERIFIER_assume to i32 (i32, ...)*
  %"126" = call i32 (i32, ...)* %"125"(i32 %"124")
  %"127" = call i8 @__kittel_nondef.1() #2
  %"128" = load i8* @"'E_2", align 1
  %"129" = sext i8 %"128" to i32
  %"130" = icmp eq i32 %"129", 0
  br i1 %"130", label %_0_11_bb76, label %_0_11_bb78

_0_11_bb76:                                       ; preds = %_0_11_bb75
  %"131" = call i8 @__kittel_nondef.1() #2
  %"132" = mul nsw i32 3, %tid
  %Pivot4.i = icmp slt i32 %"132", 1
  br i1 %Pivot4.i, label %_0_11_LeafBlock.i, label %_0_11_NodeBlock.i

_0_11_LeafBlock.i:                                ; preds = %_0_11_bb76
  %SwitchLeaf.i = icmp eq i32 %"132", 0
  %"133" = load i8* @"'I_0", align 1
  %. = select i1 %SwitchLeaf.i, i8 %"133", i8 %"131"
  br label %_0_11_getI.exit

_0_11_NodeBlock.i:                                ; preds = %_0_11_bb76
  %Pivot.i = icmp slt i32 %"132", 2
  br i1 %Pivot.i, label %_0_11_bb77, label %_0_11_LeafBlock1.i

_0_11_bb77:                                       ; preds = %_0_11_NodeBlock.i
  %"134" = load i8* @"'I_1", align 1
  br label %_0_11_getI.exit

_0_11_LeafBlock1.i:                               ; preds = %_0_11_NodeBlock.i
  %SwitchLeaf2.i = icmp eq i32 %"132", 2
  %"135" = load i8* @"'I_2", align 1
  %.9 = select i1 %SwitchLeaf2.i, i8 %"135", i8 %"131"
  br label %_0_11_getI.exit

_0_11_getI.exit:                                  ; preds = %_0_11_LeafBlock1.i, %_0_11_LeafBlock.i, %_0_11_bb77
  %.0.i = phi i8 [ %"134", %_0_11_bb77 ], [ %., %_0_11_LeafBlock.i ], [ %.9, %_0_11_LeafBlock1.i ]
  %"136" = sext i8 %.0.i to i32
  %"137" = icmp eq i32 %"136", 3
  br label %_0_11_bb78

_0_11_bb78:                                       ; preds = %_0_11_getI.exit, %_0_11_bb75
  %"138" = phi i1 [ false, %_0_11_bb75 ], [ %"137", %_0_11_getI.exit ]
  %"139" = zext i1 %"138" to i32
  %"140" = bitcast i32 (...)* @__VERIFIER_assume to i32 (i32, ...)*
  %"141" = call i32 (i32, ...)* %"140"(i32 %"139")
  %"142" = trunc i32 %tid to i8
  %"143" = zext i8 %"142" to i32
  %"144" = mul nsw i32 3, %"143"
  %Pivot4.i.i = icmp slt i32 %"144", 1
  br i1 %Pivot4.i.i, label %_0_11_LeafBlock.i.i, label %_0_11_NodeBlock.i.i

_0_11_LeafBlock.i.i:                              ; preds = %_0_11_bb78
  %SwitchLeaf.i.i = icmp eq i32 %"144", 0
  br i1 %SwitchLeaf.i.i, label %_0_11_bb79, label %_0_11_attr.exit

_0_11_bb79:                                       ; preds = %_0_11_LeafBlock.i.i
  store i8 2, i8* @"'I_0", align 1
  br label %_0_11_attr.exit

_0_11_NodeBlock.i.i:                              ; preds = %_0_11_bb78
  %Pivot.i.i = icmp slt i32 %"144", 2
  br i1 %Pivot.i.i, label %_0_11_bb80, label %_0_11_LeafBlock1.i.i

_0_11_bb80:                                       ; preds = %_0_11_NodeBlock.i.i
  store i8 2, i8* @"'I_1", align 1
  br label %_0_11_attr.exit

_0_11_LeafBlock1.i.i:                             ; preds = %_0_11_NodeBlock.i.i
  %SwitchLeaf2.i.i = icmp eq i32 %"144", 2
  br i1 %SwitchLeaf2.i.i, label %_0_11_bb81, label %_0_11_attr.exit

_0_11_bb81:                                       ; preds = %_0_11_LeafBlock1.i.i
  store i8 2, i8* @"'I_2", align 1
  br label %_0_11_attr.exit

_0_11_attr.exit:                                  ; preds = %_0_11_LeafBlock.i.i, %_0_11_bb79, %_0_11_bb80, %_0_11_LeafBlock1.i.i, %_0_11_bb81
  %"145" = mul nsw i32 3, %tid
  %Pivot4.i1 = icmp slt i32 %"145", 1
  br i1 %Pivot4.i1, label %_0_11_LeafBlock.i3, label %_0_11_NodeBlock.i5

_0_11_LeafBlock.i3:                               ; preds = %_0_11_attr.exit
  %SwitchLeaf.i2 = icmp eq i32 %"145", 0
  br i1 %SwitchLeaf.i2, label %_0_11_bb82, label %_0_11_setpc.exit

_0_11_bb82:                                       ; preds = %_0_11_LeafBlock.i3
  store i8 10, i8* @"'pc_0", align 1
  br label %_0_11_setpc.exit

_0_11_NodeBlock.i5:                               ; preds = %_0_11_attr.exit
  %Pivot.i4 = icmp slt i32 %"145", 2
  br i1 %Pivot.i4, label %_0_11_bb83, label %_0_11_LeafBlock1.i7

_0_11_bb83:                                       ; preds = %_0_11_NodeBlock.i5
  store i8 10, i8* @"'pc_1", align 1
  br label %_0_11_setpc.exit

_0_11_LeafBlock1.i7:                              ; preds = %_0_11_NodeBlock.i5
  %SwitchLeaf2.i6 = icmp eq i32 %"145", 2
  br i1 %SwitchLeaf2.i6, label %_0_11_bb84, label %_0_11_setpc.exit

_0_11_bb84:                                       ; preds = %_0_11_LeafBlock1.i7
  store i8 10, i8* @"'pc_2", align 1
  br label %_0_11_setpc.exit

_0_11_setpc.exit:                                 ; preds = %_0_11_LeafBlock.i3, %_0_11_LeafBlock1.i7, %_0_11_bb82, %_0_11_bb83, %_0_11_bb84
  ret void
}

; Function Attrs: nounwind uwtable
define void @_0_9(i32 %tid) #0 {
_0_9_bb85:
  %"146" = call i8 @__kittel_nondef.1() #2
  %"147" = load i8* @"'E_0", align 1
  %"148" = sext i8 %"147" to i32
  %"149" = icmp ne i32 %"148", %tid
  %"150" = zext i1 %"149" to i32
  %"151" = bitcast i32 (...)* @__VERIFIER_assume to i32 (i32, ...)*
  %"152" = call i32 (i32, ...)* %"151"(i32 %"150")
  %"153" = call i8 @__kittel_nondef.1() #2
  %"154" = load i8* @"'E_1", align 1
  %"155" = sext i8 %"154" to i32
  %"156" = icmp eq i32 %"155", 1
  %"157" = zext i1 %"156" to i32
  %"158" = bitcast i32 (...)* @__VERIFIER_assume to i32 (i32, ...)*
  %"159" = call i32 (i32, ...)* %"158"(i32 %"157")
  %"160" = call i8 @__kittel_nondef.1() #2
  %"161" = load i8* @"'E_2", align 1
  %"162" = sext i8 %"161" to i32
  %"163" = icmp eq i32 %"162", 1
  br i1 %"163", label %_0_9_bb86, label %_0_9_bb88

_0_9_bb86:                                        ; preds = %_0_9_bb85
  %"164" = call i8 @__kittel_nondef.1() #2
  %"165" = mul nsw i32 3, %tid
  %Pivot4.i = icmp slt i32 %"165", 1
  br i1 %Pivot4.i, label %_0_9_LeafBlock.i, label %_0_9_NodeBlock.i

_0_9_LeafBlock.i:                                 ; preds = %_0_9_bb86
  %SwitchLeaf.i = icmp eq i32 %"165", 0
  %"166" = load i8* @"'I_0", align 1
  %. = select i1 %SwitchLeaf.i, i8 %"166", i8 %"164"
  br label %_0_9_getI.exit

_0_9_NodeBlock.i:                                 ; preds = %_0_9_bb86
  %Pivot.i = icmp slt i32 %"165", 2
  br i1 %Pivot.i, label %_0_9_bb87, label %_0_9_LeafBlock1.i

_0_9_bb87:                                        ; preds = %_0_9_NodeBlock.i
  %"167" = load i8* @"'I_1", align 1
  br label %_0_9_getI.exit

_0_9_LeafBlock1.i:                                ; preds = %_0_9_NodeBlock.i
  %SwitchLeaf2.i = icmp eq i32 %"165", 2
  %"168" = load i8* @"'I_2", align 1
  %.9 = select i1 %SwitchLeaf2.i, i8 %"168", i8 %"164"
  br label %_0_9_getI.exit

_0_9_getI.exit:                                   ; preds = %_0_9_LeafBlock1.i, %_0_9_LeafBlock.i, %_0_9_bb87
  %.0.i = phi i8 [ %"167", %_0_9_bb87 ], [ %., %_0_9_LeafBlock.i ], [ %.9, %_0_9_LeafBlock1.i ]
  %"169" = sext i8 %.0.i to i32
  %"170" = icmp eq i32 %"169", 2
  br label %_0_9_bb88

_0_9_bb88:                                        ; preds = %_0_9_getI.exit, %_0_9_bb85
  %"171" = phi i1 [ false, %_0_9_bb85 ], [ %"170", %_0_9_getI.exit ]
  %"172" = zext i1 %"171" to i32
  %"173" = bitcast i32 (...)* @__VERIFIER_assume to i32 (i32, ...)*
  %"174" = call i32 (i32, ...)* %"173"(i32 %"172")
  %"175" = trunc i32 %tid to i8
  %"176" = zext i8 %"175" to i32
  %"177" = mul nsw i32 3, %"176"
  %Pivot4.i.i = icmp slt i32 %"177", 1
  br i1 %Pivot4.i.i, label %_0_9_LeafBlock.i.i, label %_0_9_NodeBlock.i.i

_0_9_LeafBlock.i.i:                               ; preds = %_0_9_bb88
  %SwitchLeaf.i.i = icmp eq i32 %"177", 0
  br i1 %SwitchLeaf.i.i, label %_0_9_bb89, label %_0_9_attr.exit

_0_9_bb89:                                        ; preds = %_0_9_LeafBlock.i.i
  store i8 3, i8* @"'I_0", align 1
  br label %_0_9_attr.exit

_0_9_NodeBlock.i.i:                               ; preds = %_0_9_bb88
  %Pivot.i.i = icmp slt i32 %"177", 2
  br i1 %Pivot.i.i, label %_0_9_bb90, label %_0_9_LeafBlock1.i.i

_0_9_bb90:                                        ; preds = %_0_9_NodeBlock.i.i
  store i8 3, i8* @"'I_1", align 1
  br label %_0_9_attr.exit

_0_9_LeafBlock1.i.i:                              ; preds = %_0_9_NodeBlock.i.i
  %SwitchLeaf2.i.i = icmp eq i32 %"177", 2
  br i1 %SwitchLeaf2.i.i, label %_0_9_bb91, label %_0_9_attr.exit

_0_9_bb91:                                        ; preds = %_0_9_LeafBlock1.i.i
  store i8 3, i8* @"'I_2", align 1
  br label %_0_9_attr.exit

_0_9_attr.exit:                                   ; preds = %_0_9_LeafBlock.i.i, %_0_9_bb89, %_0_9_bb90, %_0_9_LeafBlock1.i.i, %_0_9_bb91
  %"178" = mul nsw i32 3, %tid
  %Pivot4.i1 = icmp slt i32 %"178", 1
  br i1 %Pivot4.i1, label %_0_9_LeafBlock.i3, label %_0_9_NodeBlock.i5

_0_9_LeafBlock.i3:                                ; preds = %_0_9_attr.exit
  %SwitchLeaf.i2 = icmp eq i32 %"178", 0
  br i1 %SwitchLeaf.i2, label %_0_9_bb92, label %_0_9_setpc.exit

_0_9_bb92:                                        ; preds = %_0_9_LeafBlock.i3
  store i8 8, i8* @"'pc_0", align 1
  br label %_0_9_setpc.exit

_0_9_NodeBlock.i5:                                ; preds = %_0_9_attr.exit
  %Pivot.i4 = icmp slt i32 %"178", 2
  br i1 %Pivot.i4, label %_0_9_bb93, label %_0_9_LeafBlock1.i7

_0_9_bb93:                                        ; preds = %_0_9_NodeBlock.i5
  store i8 8, i8* @"'pc_1", align 1
  br label %_0_9_setpc.exit

_0_9_LeafBlock1.i7:                               ; preds = %_0_9_NodeBlock.i5
  %SwitchLeaf2.i6 = icmp eq i32 %"178", 2
  br i1 %SwitchLeaf2.i6, label %_0_9_bb94, label %_0_9_setpc.exit

_0_9_bb94:                                        ; preds = %_0_9_LeafBlock1.i7
  store i8 8, i8* @"'pc_2", align 1
  br label %_0_9_setpc.exit

_0_9_setpc.exit:                                  ; preds = %_0_9_LeafBlock.i3, %_0_9_LeafBlock1.i7, %_0_9_bb92, %_0_9_bb93, %_0_9_bb94
  ret void
}

; Function Attrs: nounwind uwtable
define void @setE(i32 %x0, i8 signext %value) #0 {
setE_bb95:
  br label %setE_NodeBlock5

setE_NodeBlock5:                                  ; preds = %setE_bb95
  %Pivot6 = icmp slt i32 %x0, 2
  br i1 %Pivot6, label %setE_NodeBlock, label %setE_NodeBlock3

setE_NodeBlock:                                   ; preds = %setE_NodeBlock5
  %Pivot = icmp slt i32 %x0, 1
  br i1 %Pivot, label %setE_LeafBlock, label %setE_bb97

setE_LeafBlock:                                   ; preds = %setE_NodeBlock
  %SwitchLeaf = icmp eq i32 %x0, 0
  br i1 %SwitchLeaf, label %setE_bb96, label %setE_NewDefault

setE_bb96:                                        ; preds = %setE_LeafBlock
  store i8 %value, i8* @"'E_0", align 1
  br label %setE_bb100

setE_bb97:                                        ; preds = %setE_NodeBlock
  store i8 %value, i8* @"'E_1", align 1
  br label %setE_bb100

setE_NodeBlock3:                                  ; preds = %setE_NodeBlock5
  %Pivot4 = icmp slt i32 %x0, 3
  br i1 %Pivot4, label %setE_bb98, label %setE_LeafBlock1

setE_bb98:                                        ; preds = %setE_NodeBlock3
  store i8 %value, i8* @"'E_2", align 1
  br label %setE_bb100

setE_LeafBlock1:                                  ; preds = %setE_NodeBlock3
  %SwitchLeaf2 = icmp eq i32 %x0, 3
  br i1 %SwitchLeaf2, label %setE_bb99, label %setE_NewDefault

setE_bb99:                                        ; preds = %setE_LeafBlock1
  store i8 %value, i8* @"'E_3", align 1
  br label %setE_bb100

setE_NewDefault:                                  ; preds = %setE_LeafBlock1, %setE_LeafBlock
  br label %setE_bb100

setE_bb100:                                       ; preds = %setE_NewDefault, %setE_bb99, %setE_bb98, %setE_bb97, %setE_bb96
  ret void
}

; Function Attrs: nounwind uwtable
define void @init() #0 {
init_bb101:
  %"179" = call i32 @__VERIFIER_nondet_int()
  %"180" = call i32 @__VERIFIER_nondet_int()
  %"181" = call i8 @__kittel_nondef.1() #2
  %"182" = load i8* @"'_pc_21_1_0", align 1
  %"183" = zext i8 %"182" to i32
  %"184" = icmp eq i32 %"183", 3
  br i1 %"184", label %init_bb107, label %init_bb102

init_bb102:                                       ; preds = %init_bb101
  %"185" = call i8 @__kittel_nondef.1() #2
  %"186" = load i8* @"'_pc_21_1_0", align 1
  %"187" = zext i8 %"186" to i32
  %"188" = icmp eq i32 %"187", 4
  br i1 %"188", label %init_bb107, label %init_bb103

init_bb103:                                       ; preds = %init_bb102
  %"189" = call i8 @__kittel_nondef.1() #2
  %"190" = load i8* @"'_pc_21_1_0", align 1
  %"191" = zext i8 %"190" to i32
  %"192" = icmp eq i32 %"191", 7
  br i1 %"192", label %init_bb107, label %init_bb104

init_bb104:                                       ; preds = %init_bb103
  %"193" = call i8 @__kittel_nondef.1() #2
  %"194" = load i8* @"'_pc_21_1_0", align 1
  %"195" = zext i8 %"194" to i32
  %"196" = icmp eq i32 %"195", 9
  br i1 %"196", label %init_bb107, label %init_bb105

init_bb105:                                       ; preds = %init_bb104
  %"197" = call i8 @__kittel_nondef.1() #2
  %"198" = load i8* @"'_pc_21_1_0", align 1
  %"199" = zext i8 %"198" to i32
  %"200" = icmp eq i32 %"199", 11
  br i1 %"200", label %init_bb107, label %init_bb106

init_bb106:                                       ; preds = %init_bb105
  %"201" = call i8 @__kittel_nondef.1() #2
  %"202" = load i8* @"'_pc_21_1_0", align 1
  %"203" = zext i8 %"202" to i32
  %"204" = icmp eq i32 %"203", 13
  br label %init_bb107

init_bb107:                                       ; preds = %init_bb106, %init_bb105, %init_bb104, %init_bb103, %init_bb102, %init_bb101
  %"205" = phi i1 [ true, %init_bb105 ], [ true, %init_bb104 ], [ true, %init_bb103 ], [ true, %init_bb102 ], [ true, %init_bb101 ], [ %"204", %init_bb106 ]
  %"206" = zext i1 %"205" to i32
  %"207" = bitcast i32 (...)* @__VERIFIER_assume to i32 (i32, ...)*
  %"208" = call i32 (i32, ...)* %"207"(i32 %"206")
  %"209" = call i8 @__kittel_nondef.1() #2
  %"210" = zext i8 %"209" to i32
  %"211" = icmp eq i32 %"210", 3
  br i1 %"211", label %init_bb113, label %init_bb108

init_bb108:                                       ; preds = %init_bb107
  %"212" = call i8 @__kittel_nondef.1() #2
  %"213" = zext i8 %"212" to i32
  %"214" = icmp eq i32 %"213", 4
  br i1 %"214", label %init_bb113, label %init_bb109

init_bb109:                                       ; preds = %init_bb108
  %"215" = call i8 @__kittel_nondef.1() #2
  %"216" = zext i8 %"215" to i32
  %"217" = icmp eq i32 %"216", 7
  br i1 %"217", label %init_bb113, label %init_bb110

init_bb110:                                       ; preds = %init_bb109
  %"218" = call i8 @__kittel_nondef.1() #2
  %"219" = zext i8 %"218" to i32
  %"220" = icmp eq i32 %"219", 9
  br i1 %"220", label %init_bb113, label %init_bb111

init_bb111:                                       ; preds = %init_bb110
  %"221" = call i8 @__kittel_nondef.1() #2
  %"222" = zext i8 %"221" to i32
  %"223" = icmp eq i32 %"222", 11
  br i1 %"223", label %init_bb113, label %init_bb112

init_bb112:                                       ; preds = %init_bb111
  %"224" = call i8 @__kittel_nondef.1() #2
  %"225" = zext i8 %"224" to i32
  %"226" = icmp eq i32 %"225", 13
  br label %init_bb113

init_bb113:                                       ; preds = %init_bb112, %init_bb111, %init_bb110, %init_bb109, %init_bb108, %init_bb107
  %"227" = phi i1 [ true, %init_bb111 ], [ true, %init_bb110 ], [ true, %init_bb109 ], [ true, %init_bb108 ], [ true, %init_bb107 ], [ %"226", %init_bb112 ]
  %"228" = zext i1 %"227" to i32
  %"229" = bitcast i32 (...)* @__VERIFIER_assume to i32 (i32, ...)*
  %"230" = call i32 (i32, ...)* %"229"(i32 %"228")
  %"231" = call i8 @__kittel_nondef.1() #2
  %"232" = zext i8 %"231" to i32
  %"233" = icmp eq i32 %"232", 3
  br i1 %"233", label %init_bb119, label %init_bb114

init_bb114:                                       ; preds = %init_bb113
  %"234" = call i8 @__kittel_nondef.1() #2
  %"235" = zext i8 %"234" to i32
  %"236" = icmp eq i32 %"235", 4
  br i1 %"236", label %init_bb119, label %init_bb115

init_bb115:                                       ; preds = %init_bb114
  %"237" = call i8 @__kittel_nondef.1() #2
  %"238" = zext i8 %"237" to i32
  %"239" = icmp eq i32 %"238", 7
  br i1 %"239", label %init_bb119, label %init_bb116

init_bb116:                                       ; preds = %init_bb115
  %"240" = call i8 @__kittel_nondef.1() #2
  %"241" = zext i8 %"240" to i32
  %"242" = icmp eq i32 %"241", 9
  br i1 %"242", label %init_bb119, label %init_bb117

init_bb117:                                       ; preds = %init_bb116
  %"243" = call i8 @__kittel_nondef.1() #2
  %"244" = zext i8 %"243" to i32
  %"245" = icmp eq i32 %"244", 11
  br i1 %"245", label %init_bb119, label %init_bb118

init_bb118:                                       ; preds = %init_bb117
  %"246" = call i8 @__kittel_nondef.1() #2
  %"247" = zext i8 %"246" to i32
  %"248" = icmp eq i32 %"247", 13
  br label %init_bb119

init_bb119:                                       ; preds = %init_bb118, %init_bb117, %init_bb116, %init_bb115, %init_bb114, %init_bb113
  %"249" = phi i1 [ true, %init_bb117 ], [ true, %init_bb116 ], [ true, %init_bb115 ], [ true, %init_bb114 ], [ true, %init_bb113 ], [ %"248", %init_bb118 ]
  %"250" = zext i1 %"249" to i32
  %"251" = bitcast i32 (...)* @__VERIFIER_assume to i32 (i32, ...)*
  %"252" = call i32 (i32, ...)* %"251"(i32 %"250")
  %"253" = call i8 @__kittel_nondef.1() #2
  %"254" = load i8* @"'_E_21_1_0", align 1
  %"255" = sext i8 %"254" to i32
  %"256" = icmp eq i32 %"255", -1
  %"257" = zext i1 %"256" to i32
  %"258" = bitcast i32 (...)* @__VERIFIER_assume to i32 (i32, ...)*
  %"259" = call i32 (i32, ...)* %"258"(i32 %"257")
  %"260" = call i8 @__kittel_nondef.1() #2
  %"261" = load i8* @"'_E_21_1_1", align 1
  %"262" = sext i8 %"261" to i32
  %"263" = icmp eq i32 %"262", 0
  %"264" = zext i1 %"263" to i32
  %"265" = bitcast i32 (...)* @__VERIFIER_assume to i32 (i32, ...)*
  %"266" = call i32 (i32, ...)* %"265"(i32 %"264")
  %"267" = call i8 @__kittel_nondef.1() #2
  %"268" = load i8* @"'_E_21_1_2", align 1
  %"269" = sext i8 %"268" to i32
  %"270" = icmp eq i32 %"269", -1
  %"271" = zext i1 %"270" to i32
  %"272" = bitcast i32 (...)* @__VERIFIER_assume to i32 (i32, ...)*
  %"273" = call i32 (i32, ...)* %"272"(i32 %"271")
  %"274" = call i8 @__kittel_nondef.1() #2
  %"275" = load i8* @"'_E_21_1_3", align 1
  %"276" = sext i8 %"275" to i32
  %"277" = icmp eq i32 %"276", -1
  %"278" = zext i1 %"277" to i32
  %"279" = bitcast i32 (...)* @__VERIFIER_assume to i32 (i32, ...)*
  %"280" = call i32 (i32, ...)* %"279"(i32 %"278")
  %"281" = call i8 @__kittel_nondef.1() #2
  %"282" = load i8* @"'_I_21_1_0", align 1
  %"283" = sext i8 %"282" to i32
  %"284" = icmp eq i32 %"283", 0
  %"285" = zext i1 %"284" to i32
  %"286" = bitcast i32 (...)* @__VERIFIER_assume to i32 (i32, ...)*
  %"287" = call i32 (i32, ...)* %"286"(i32 %"285")
  %"288" = call i8 @__kittel_nondef.1() #2
  %"289" = sext i8 %"288" to i32
  %"290" = icmp eq i32 %"289", 0
  %"291" = zext i1 %"290" to i32
  %"292" = bitcast i32 (...)* @__VERIFIER_assume to i32 (i32, ...)*
  %"293" = call i32 (i32, ...)* %"292"(i32 %"291")
  %"294" = call i8 @__kittel_nondef.1() #2
  %"295" = sext i8 %"294" to i32
  %"296" = icmp eq i32 %"295", 1
  %"297" = zext i1 %"296" to i32
  %"298" = bitcast i32 (...)* @__VERIFIER_assume to i32 (i32, ...)*
  %"299" = call i32 (i32, ...)* %"298"(i32 %"297")
  br label %init_bb120

init_bb120:                                       ; preds = %init_setE.exit, %init_bb119
  %i.0 = phi i8 [ 0, %init_bb119 ], [ %"309", %init_setE.exit ]
  %"300" = zext i8 %i.0 to i32
  %"301" = icmp slt i32 %"300", 4
  br i1 %"301", label %init_bb121, label %init_bb128

init_bb121:                                       ; preds = %init_bb120
  %"302" = zext i8 %i.0 to i32
  %"303" = zext i8 %i.0 to i32
  %"304" = call i8 @__kittel_nondef.1() #2
  %Pivot6.i = icmp slt i32 %"303", 2
  br i1 %Pivot6.i, label %init_NodeBlock.i, label %init_NodeBlock3.i

init_NodeBlock.i:                                 ; preds = %init_bb121
  %Pivot.i = icmp slt i32 %"303", 1
  br i1 %Pivot.i, label %init_LeafBlock.i, label %init_bb122

init_LeafBlock.i:                                 ; preds = %init_NodeBlock.i
  %SwitchLeaf.i = icmp eq i32 %"303", 0
  %"305" = load i8* @"'_E_21_1_0", align 1
  %. = select i1 %SwitchLeaf.i, i8 %"305", i8 %"304"
  br label %init_get_E_21_1.exit

init_bb122:                                       ; preds = %init_NodeBlock.i
  %"306" = load i8* @"'_E_21_1_1", align 1
  br label %init_get_E_21_1.exit

init_NodeBlock3.i:                                ; preds = %init_bb121
  %Pivot4.i = icmp slt i32 %"303", 3
  br i1 %Pivot4.i, label %init_bb123, label %init_LeafBlock1.i

init_bb123:                                       ; preds = %init_NodeBlock3.i
  %"307" = load i8* @"'_E_21_1_2", align 1
  br label %init_get_E_21_1.exit

init_LeafBlock1.i:                                ; preds = %init_NodeBlock3.i
  %SwitchLeaf2.i = icmp eq i32 %"303", 3
  %"308" = load i8* @"'_E_21_1_3", align 1
  %.49 = select i1 %SwitchLeaf2.i, i8 %"308", i8 %"304"
  br label %init_get_E_21_1.exit

init_get_E_21_1.exit:                             ; preds = %init_LeafBlock1.i, %init_LeafBlock.i, %init_bb122, %init_bb123
  %.0.i = phi i8 [ %"307", %init_bb123 ], [ %"306", %init_bb122 ], [ %., %init_LeafBlock.i ], [ %.49, %init_LeafBlock1.i ]
  %Pivot6.i1 = icmp slt i32 %"302", 2
  br i1 %Pivot6.i1, label %init_NodeBlock.i3, label %init_NodeBlock3.i7

init_NodeBlock.i3:                                ; preds = %init_get_E_21_1.exit
  %Pivot.i2 = icmp slt i32 %"302", 1
  br i1 %Pivot.i2, label %init_LeafBlock.i5, label %init_bb125

init_LeafBlock.i5:                                ; preds = %init_NodeBlock.i3
  %SwitchLeaf.i4 = icmp eq i32 %"302", 0
  br i1 %SwitchLeaf.i4, label %init_bb124, label %init_setE.exit

init_bb124:                                       ; preds = %init_LeafBlock.i5
  store i8 %.0.i, i8* @"'E_0", align 1
  br label %init_setE.exit

init_bb125:                                       ; preds = %init_NodeBlock.i3
  store i8 %.0.i, i8* @"'E_1", align 1
  br label %init_setE.exit

init_NodeBlock3.i7:                               ; preds = %init_get_E_21_1.exit
  %Pivot4.i6 = icmp slt i32 %"302", 3
  br i1 %Pivot4.i6, label %init_bb126, label %init_LeafBlock1.i9

init_bb126:                                       ; preds = %init_NodeBlock3.i7
  store i8 %.0.i, i8* @"'E_2", align 1
  br label %init_setE.exit

init_LeafBlock1.i9:                               ; preds = %init_NodeBlock3.i7
  %SwitchLeaf2.i8 = icmp eq i32 %"302", 3
  br i1 %SwitchLeaf2.i8, label %init_bb127, label %init_setE.exit

init_bb127:                                       ; preds = %init_LeafBlock1.i9
  store i8 %.0.i, i8* @"'E_3", align 1
  br label %init_setE.exit

init_setE.exit:                                   ; preds = %init_bb127, %init_bb126, %init_bb125, %init_bb124, %init_LeafBlock1.i9, %init_LeafBlock.i5
  %"309" = add i8 %i.0, 1
  br label %init_bb120

init_bb128:                                       ; preds = %init_bb120, %init_bb143
  %i.1 = phi i8 [ %"346", %init_bb143 ], [ 0, %init_bb120 ]
  %"310" = zext i8 %i.1 to i32
  %"311" = icmp slt i32 %"310", 3
  br i1 %"311", label %init_bb129, label %init_bb144

init_bb129:                                       ; preds = %init_bb128
  %"312" = zext i8 %i.1 to i32
  %"313" = zext i8 %i.1 to i32
  br label %init_bb130

init_bb130:                                       ; preds = %init_setpc.exit, %init_bb129
  %j.0 = phi i8 [ 0, %init_bb129 ], [ %"330", %init_setpc.exit ]
  %"314" = zext i8 %j.0 to i32
  %"315" = icmp slt i32 %"314", 1
  br i1 %"315", label %init_bb131, label %init_bb136

init_bb131:                                       ; preds = %init_bb130
  %"316" = zext i8 %j.0 to i32
  %"317" = zext i8 %j.0 to i32
  %"318" = call i8 @__kittel_nondef.1() #2
  %"319" = mul nsw i32 3, %"313"
  %"320" = add nsw i32 %"319", %"317"
  %Pivot4.i30 = icmp slt i32 %"320", 1
  br i1 %Pivot4.i30, label %init_LeafBlock.i33, label %init_NodeBlock.i35

init_LeafBlock.i33:                               ; preds = %init_bb131
  %SwitchLeaf.i32 = icmp eq i32 %"320", 0
  %"321" = load i8* @"'_pc_21_1_0", align 1
  %.50 = select i1 %SwitchLeaf.i32, i8 %"321", i8 %"318"
  br label %init_get_pc_21_1.exit

init_NodeBlock.i35:                               ; preds = %init_bb131
  %Pivot.i34 = icmp slt i32 %"320", 2
  br i1 %Pivot.i34, label %init_bb132, label %init_LeafBlock1.i37

init_bb132:                                       ; preds = %init_NodeBlock.i35
  %"322" = load i8* @"'_pc_21_1_1", align 1
  br label %init_get_pc_21_1.exit

init_LeafBlock1.i37:                              ; preds = %init_NodeBlock.i35
  %SwitchLeaf2.i36 = icmp eq i32 %"320", 2
  %"323" = load i8* @"'_pc_21_1_2", align 1
  %.51 = select i1 %SwitchLeaf2.i36, i8 %"323", i8 %"318"
  br label %init_get_pc_21_1.exit

init_get_pc_21_1.exit:                            ; preds = %init_LeafBlock1.i37, %init_LeafBlock.i33, %init_bb132
  %.0.i39 = phi i8 [ %"322", %init_bb132 ], [ %.50, %init_LeafBlock.i33 ], [ %.51, %init_LeafBlock1.i37 ]
  %"324" = zext i8 %.0.i39 to i32
  %"325" = mul nsw i32 3, %"312"
  %"326" = add nsw i32 %"325", %"316"
  %Pivot4.i40 = icmp slt i32 %"326", 1
  br i1 %Pivot4.i40, label %init_LeafBlock.i43, label %init_NodeBlock.i45

init_LeafBlock.i43:                               ; preds = %init_get_pc_21_1.exit
  %SwitchLeaf.i42 = icmp eq i32 %"326", 0
  br i1 %SwitchLeaf.i42, label %init_bb133, label %init_setpc.exit

init_bb133:                                       ; preds = %init_LeafBlock.i43
  %"327" = trunc i32 %"324" to i8
  store i8 %"327", i8* @"'pc_0", align 1
  br label %init_setpc.exit

init_NodeBlock.i45:                               ; preds = %init_get_pc_21_1.exit
  %Pivot.i44 = icmp slt i32 %"326", 2
  br i1 %Pivot.i44, label %init_bb134, label %init_LeafBlock1.i47

init_bb134:                                       ; preds = %init_NodeBlock.i45
  %"328" = trunc i32 %"324" to i8
  store i8 %"328", i8* @"'pc_1", align 1
  br label %init_setpc.exit

init_LeafBlock1.i47:                              ; preds = %init_NodeBlock.i45
  %SwitchLeaf2.i46 = icmp eq i32 %"326", 2
  br i1 %SwitchLeaf2.i46, label %init_bb135, label %init_setpc.exit

init_bb135:                                       ; preds = %init_LeafBlock1.i47
  %"329" = trunc i32 %"324" to i8
  store i8 %"329", i8* @"'pc_2", align 1
  br label %init_setpc.exit

init_setpc.exit:                                  ; preds = %init_bb135, %init_bb134, %init_bb133, %init_LeafBlock1.i47, %init_LeafBlock.i43
  %"330" = add i8 %j.0, 1
  br label %init_bb130

init_bb136:                                       ; preds = %init_bb130
  %"331" = zext i8 %i.1 to i32
  %"332" = zext i8 %i.1 to i32
  br label %init_bb137

init_bb137:                                       ; preds = %init_setI.exit, %init_bb136
  %j.1 = phi i8 [ 0, %init_bb136 ], [ %"345", %init_setI.exit ]
  %"333" = zext i8 %j.1 to i32
  %"334" = icmp slt i32 %"333", 1
  br i1 %"334", label %init_bb138, label %init_bb143

init_bb138:                                       ; preds = %init_bb137
  %"335" = zext i8 %j.1 to i32
  %"336" = zext i8 %j.1 to i32
  %"337" = call i8 @__kittel_nondef.1() #2
  %"338" = mul nsw i32 3, %"332"
  %"339" = add nsw i32 %"338", %"336"
  %Pivot4.i20 = icmp slt i32 %"339", 1
  br i1 %Pivot4.i20, label %init_LeafBlock.i23, label %init_NodeBlock.i25

init_LeafBlock.i23:                               ; preds = %init_bb138
  %SwitchLeaf.i22 = icmp eq i32 %"339", 0
  %"340" = load i8* @"'_I_21_1_0", align 1
  %.52 = select i1 %SwitchLeaf.i22, i8 %"340", i8 %"337"
  br label %init_get_I_21_1.exit

init_NodeBlock.i25:                               ; preds = %init_bb138
  %Pivot.i24 = icmp slt i32 %"339", 2
  br i1 %Pivot.i24, label %init_bb139, label %init_LeafBlock1.i27

init_bb139:                                       ; preds = %init_NodeBlock.i25
  %"341" = load i8* @"'_I_21_1_1", align 1
  br label %init_get_I_21_1.exit

init_LeafBlock1.i27:                              ; preds = %init_NodeBlock.i25
  %SwitchLeaf2.i26 = icmp eq i32 %"339", 2
  %"342" = load i8* @"'_I_21_1_2", align 1
  %.53 = select i1 %SwitchLeaf2.i26, i8 %"342", i8 %"337"
  br label %init_get_I_21_1.exit

init_get_I_21_1.exit:                             ; preds = %init_LeafBlock1.i27, %init_LeafBlock.i23, %init_bb139
  %.0.i29 = phi i8 [ %"341", %init_bb139 ], [ %.52, %init_LeafBlock.i23 ], [ %.53, %init_LeafBlock1.i27 ]
  %"343" = mul nsw i32 3, %"331"
  %"344" = add nsw i32 %"343", %"335"
  %Pivot4.i11 = icmp slt i32 %"344", 1
  br i1 %Pivot4.i11, label %init_LeafBlock.i14, label %init_NodeBlock.i16

init_LeafBlock.i14:                               ; preds = %init_get_I_21_1.exit
  %SwitchLeaf.i13 = icmp eq i32 %"344", 0
  br i1 %SwitchLeaf.i13, label %init_bb140, label %init_setI.exit

init_bb140:                                       ; preds = %init_LeafBlock.i14
  store i8 %.0.i29, i8* @"'I_0", align 1
  br label %init_setI.exit

init_NodeBlock.i16:                               ; preds = %init_get_I_21_1.exit
  %Pivot.i15 = icmp slt i32 %"344", 2
  br i1 %Pivot.i15, label %init_bb141, label %init_LeafBlock1.i18

init_bb141:                                       ; preds = %init_NodeBlock.i16
  store i8 %.0.i29, i8* @"'I_1", align 1
  br label %init_setI.exit

init_LeafBlock1.i18:                              ; preds = %init_NodeBlock.i16
  %SwitchLeaf2.i17 = icmp eq i32 %"344", 2
  br i1 %SwitchLeaf2.i17, label %init_bb142, label %init_setI.exit

init_bb142:                                       ; preds = %init_LeafBlock1.i18
  store i8 %.0.i29, i8* @"'I_2", align 1
  br label %init_setI.exit

init_setI.exit:                                   ; preds = %init_bb142, %init_bb141, %init_bb140, %init_LeafBlock1.i18, %init_LeafBlock.i14
  %"345" = add i8 %j.1, 1
  br label %init_bb137

init_bb143:                                       ; preds = %init_bb137
  %"346" = add i8 %i.1, 1
  br label %init_bb128

init_bb144:                                       ; preds = %init_bb128
  ret void
}

declare i32 @__VERIFIER_nondet_int() #1

; Function Attrs: nounwind uwtable
define void @env(i8 zeroext %id, i8 zeroext %key, i8 signext %value, i1 zeroext %check) #0 {
env_bb145:
  %"347" = zext i8 %key to i32
  %Pivot6.i = icmp slt i32 %"347", 2
  br i1 %Pivot6.i, label %env_NodeBlock.i, label %env_NodeBlock3.i

env_NodeBlock.i:                                  ; preds = %env_bb145
  %Pivot.i = icmp slt i32 %"347", 1
  br i1 %Pivot.i, label %env_LeafBlock.i, label %env_bb147

env_LeafBlock.i:                                  ; preds = %env_NodeBlock.i
  %SwitchLeaf.i = icmp eq i32 %"347", 0
  br i1 %SwitchLeaf.i, label %env_bb146, label %env_setE.exit

env_bb146:                                        ; preds = %env_LeafBlock.i
  store i8 %value, i8* @"'E_0", align 1
  br label %env_setE.exit

env_bb147:                                        ; preds = %env_NodeBlock.i
  store i8 %value, i8* @"'E_1", align 1
  br label %env_setE.exit

env_NodeBlock3.i:                                 ; preds = %env_bb145
  %Pivot4.i = icmp slt i32 %"347", 3
  br i1 %Pivot4.i, label %env_bb148, label %env_LeafBlock1.i

env_bb148:                                        ; preds = %env_NodeBlock3.i
  store i8 %value, i8* @"'E_2", align 1
  br label %env_setE.exit

env_LeafBlock1.i:                                 ; preds = %env_NodeBlock3.i
  %SwitchLeaf2.i = icmp eq i32 %"347", 3
  br i1 %SwitchLeaf2.i, label %env_bb149, label %env_setE.exit

env_bb149:                                        ; preds = %env_LeafBlock1.i
  store i8 %value, i8* @"'E_3", align 1
  br label %env_setE.exit

env_setE.exit:                                    ; preds = %env_LeafBlock.i, %env_LeafBlock1.i, %env_bb146, %env_bb147, %env_bb148, %env_bb149
  ret void
}

; Function Attrs: nounwind uwtable
define void @_0_7(i32 %tid) #0 {
_0_7_bb150:
  %"348" = call i8 @__kittel_nondef.1() #2
  %"349" = load i8* @"'E_0", align 1
  %"350" = sext i8 %"349" to i32
  %"351" = icmp ne i32 %"350", %tid
  %"352" = zext i1 %"351" to i32
  %"353" = bitcast i32 (...)* @__VERIFIER_assume to i32 (i32, ...)*
  %"354" = call i32 (i32, ...)* %"353"(i32 %"352")
  %"355" = call i8 @__kittel_nondef.1() #2
  %"356" = load i8* @"'E_1", align 1
  %"357" = sext i8 %"356" to i32
  %"358" = icmp eq i32 %"357", 1
  %"359" = zext i1 %"358" to i32
  %"360" = bitcast i32 (...)* @__VERIFIER_assume to i32 (i32, ...)*
  %"361" = call i32 (i32, ...)* %"360"(i32 %"359")
  %"362" = call i8 @__kittel_nondef.1() #2
  %"363" = load i8* @"'E_2", align 1
  %"364" = sext i8 %"363" to i32
  %"365" = icmp eq i32 %"364", 1
  br i1 %"365", label %_0_7_bb151, label %_0_7_bb153

_0_7_bb151:                                       ; preds = %_0_7_bb150
  %"366" = call i8 @__kittel_nondef.1() #2
  %"367" = mul nsw i32 3, %tid
  %Pivot4.i = icmp slt i32 %"367", 1
  br i1 %Pivot4.i, label %_0_7_LeafBlock.i, label %_0_7_NodeBlock.i

_0_7_LeafBlock.i:                                 ; preds = %_0_7_bb151
  %SwitchLeaf.i = icmp eq i32 %"367", 0
  %"368" = load i8* @"'I_0", align 1
  %. = select i1 %SwitchLeaf.i, i8 %"368", i8 %"366"
  br label %_0_7_getI.exit

_0_7_NodeBlock.i:                                 ; preds = %_0_7_bb151
  %Pivot.i = icmp slt i32 %"367", 2
  br i1 %Pivot.i, label %_0_7_bb152, label %_0_7_LeafBlock1.i

_0_7_bb152:                                       ; preds = %_0_7_NodeBlock.i
  %"369" = load i8* @"'I_1", align 1
  br label %_0_7_getI.exit

_0_7_LeafBlock1.i:                                ; preds = %_0_7_NodeBlock.i
  %SwitchLeaf2.i = icmp eq i32 %"367", 2
  %"370" = load i8* @"'I_2", align 1
  %.19 = select i1 %SwitchLeaf2.i, i8 %"370", i8 %"366"
  br label %_0_7_getI.exit

_0_7_getI.exit:                                   ; preds = %_0_7_LeafBlock1.i, %_0_7_LeafBlock.i, %_0_7_bb152
  %.0.i = phi i8 [ %"369", %_0_7_bb152 ], [ %., %_0_7_LeafBlock.i ], [ %.19, %_0_7_LeafBlock1.i ]
  %"371" = sext i8 %.0.i to i32
  %"372" = icmp eq i32 %"371", 0
  br label %_0_7_bb153

_0_7_bb153:                                       ; preds = %_0_7_getI.exit, %_0_7_bb150
  %"373" = phi i1 [ false, %_0_7_bb150 ], [ %"372", %_0_7_getI.exit ]
  %"374" = zext i1 %"373" to i32
  %"375" = bitcast i32 (...)* @__VERIFIER_assume to i32 (i32, ...)*
  %"376" = call i32 (i32, ...)* %"375"(i32 %"374")
  %"377" = call i8 @__kittel_nondef.1() #2
  %"378" = mul nsw i32 3, %tid
  %Pivot4.i1 = icmp slt i32 %"378", 1
  br i1 %Pivot4.i1, label %_0_7_LeafBlock.i3, label %_0_7_NodeBlock.i5

_0_7_LeafBlock.i3:                                ; preds = %_0_7_bb153
  %SwitchLeaf.i2 = icmp eq i32 %"378", 0
  %"379" = load i8* @"'I_0", align 1
  %.20 = select i1 %SwitchLeaf.i2, i8 %"379", i8 %"377"
  br label %_0_7_getI.exit10

_0_7_NodeBlock.i5:                                ; preds = %_0_7_bb153
  %Pivot.i4 = icmp slt i32 %"378", 2
  br i1 %Pivot.i4, label %_0_7_bb154, label %_0_7_LeafBlock1.i7

_0_7_bb154:                                       ; preds = %_0_7_NodeBlock.i5
  %"380" = load i8* @"'I_1", align 1
  br label %_0_7_getI.exit10

_0_7_LeafBlock1.i7:                               ; preds = %_0_7_NodeBlock.i5
  %SwitchLeaf2.i6 = icmp eq i32 %"378", 2
  %"381" = load i8* @"'I_2", align 1
  %.21 = select i1 %SwitchLeaf2.i6, i8 %"381", i8 %"377"
  br label %_0_7_getI.exit10

_0_7_getI.exit10:                                 ; preds = %_0_7_LeafBlock1.i7, %_0_7_LeafBlock.i3, %_0_7_bb154
  %.0.i9 = phi i8 [ %"380", %_0_7_bb154 ], [ %.20, %_0_7_LeafBlock.i3 ], [ %.21, %_0_7_LeafBlock1.i7 ]
  store i8 2, i8* @"'E_1", align 1
  store i8 %.0.i9, i8* @"'E_3", align 1
  %"382" = mul nsw i32 3, %tid
  %Pivot4.i11 = icmp slt i32 %"382", 1
  br i1 %Pivot4.i11, label %_0_7_LeafBlock.i13, label %_0_7_NodeBlock.i15

_0_7_LeafBlock.i13:                               ; preds = %_0_7_getI.exit10
  %SwitchLeaf.i12 = icmp eq i32 %"382", 0
  br i1 %SwitchLeaf.i12, label %_0_7_bb155, label %_0_7_setpc.exit

_0_7_bb155:                                       ; preds = %_0_7_LeafBlock.i13
  store i8 6, i8* @"'pc_0", align 1
  br label %_0_7_setpc.exit

_0_7_NodeBlock.i15:                               ; preds = %_0_7_getI.exit10
  %Pivot.i14 = icmp slt i32 %"382", 2
  br i1 %Pivot.i14, label %_0_7_bb156, label %_0_7_LeafBlock1.i17

_0_7_bb156:                                       ; preds = %_0_7_NodeBlock.i15
  store i8 6, i8* @"'pc_1", align 1
  br label %_0_7_setpc.exit

_0_7_LeafBlock1.i17:                              ; preds = %_0_7_NodeBlock.i15
  %SwitchLeaf2.i16 = icmp eq i32 %"382", 2
  br i1 %SwitchLeaf2.i16, label %_0_7_bb157, label %_0_7_setpc.exit

_0_7_bb157:                                       ; preds = %_0_7_LeafBlock1.i17
  store i8 6, i8* @"'pc_2", align 1
  br label %_0_7_setpc.exit

_0_7_setpc.exit:                                  ; preds = %_0_7_LeafBlock.i13, %_0_7_LeafBlock1.i17, %_0_7_bb155, %_0_7_bb156, %_0_7_bb157
  ret void
}

; Function Attrs: nounwind uwtable
define void @_0_8(i32 %tid) #0 {
_0_8_bb158:
  store i8 -1, i8* @"'E_0", align 1
  store i8 0, i8* @"'E_1", align 1
  %"383" = call i32 @__VERIFIER_nondet_int()
  %"384" = trunc i32 %"383" to i8
  %"385" = zext i8 %"384" to i32
  %"386" = icmp eq i32 %"385", 3
  %"387" = zext i8 %"384" to i32
  %"388" = icmp eq i32 %"387", 4
  %or.cond = or i1 %"386", %"388"
  %"389" = zext i8 %"384" to i32
  %"390" = icmp eq i32 %"389", 7
  %or.cond3 = or i1 %or.cond, %"390"
  %"391" = zext i8 %"384" to i32
  %"392" = icmp eq i32 %"391", 9
  %or.cond5 = or i1 %or.cond3, %"392"
  %"393" = zext i8 %"384" to i32
  %"394" = icmp eq i32 %"393", 11
  %or.cond7 = or i1 %or.cond5, %"394"
  br i1 %or.cond7, label %_0_8_bb160, label %_0_8_bb159

_0_8_bb159:                                       ; preds = %_0_8_bb158
  %"395" = zext i8 %"384" to i32
  %"396" = icmp eq i32 %"395", 13
  br label %_0_8_bb160

_0_8_bb160:                                       ; preds = %_0_8_bb159, %_0_8_bb158
  %"397" = phi i1 [ true, %_0_8_bb158 ], [ %"396", %_0_8_bb159 ]
  %"398" = zext i1 %"397" to i32
  %"399" = bitcast i32 (...)* @__VERIFIER_assume to i32 (i32, ...)*
  %"400" = call i32 (i32, ...)* %"399"(i32 %"398")
  %"401" = zext i8 %"384" to i32
  %"402" = mul nsw i32 3, %tid
  %Pivot4.i = icmp slt i32 %"402", 1
  br i1 %Pivot4.i, label %_0_8_LeafBlock.i, label %_0_8_NodeBlock.i

_0_8_LeafBlock.i:                                 ; preds = %_0_8_bb160
  %SwitchLeaf.i = icmp eq i32 %"402", 0
  br i1 %SwitchLeaf.i, label %_0_8_bb161, label %_0_8_setpc.exit

_0_8_bb161:                                       ; preds = %_0_8_LeafBlock.i
  %"403" = trunc i32 %"401" to i8
  store i8 %"403", i8* @"'pc_0", align 1
  br label %_0_8_setpc.exit

_0_8_NodeBlock.i:                                 ; preds = %_0_8_bb160
  %Pivot.i = icmp slt i32 %"402", 2
  br i1 %Pivot.i, label %_0_8_bb162, label %_0_8_LeafBlock1.i

_0_8_bb162:                                       ; preds = %_0_8_NodeBlock.i
  %"404" = trunc i32 %"401" to i8
  store i8 %"404", i8* @"'pc_1", align 1
  br label %_0_8_setpc.exit

_0_8_LeafBlock1.i:                                ; preds = %_0_8_NodeBlock.i
  %SwitchLeaf2.i = icmp eq i32 %"402", 2
  br i1 %SwitchLeaf2.i, label %_0_8_bb163, label %_0_8_setpc.exit

_0_8_bb163:                                       ; preds = %_0_8_LeafBlock1.i
  %"405" = trunc i32 %"401" to i8
  store i8 %"405", i8* @"'pc_2", align 1
  br label %_0_8_setpc.exit

_0_8_setpc.exit:                                  ; preds = %_0_8_LeafBlock.i, %_0_8_LeafBlock1.i, %_0_8_bb161, %_0_8_bb162, %_0_8_bb163
  ret void
}

; Function Attrs: nounwind uwtable
define void @_0_2(i32 %tid) #0 {
_0_2_bb164:
  store i8 3, i8* @"'E_1", align 1
  %"406" = call i32 @__VERIFIER_nondet_int()
  %"407" = trunc i32 %"406" to i8
  %"408" = zext i8 %"407" to i32
  %"409" = icmp eq i32 %"408", 3
  %"410" = zext i8 %"407" to i32
  %"411" = icmp eq i32 %"410", 4
  %or.cond = or i1 %"409", %"411"
  %"412" = zext i8 %"407" to i32
  %"413" = icmp eq i32 %"412", 7
  %or.cond3 = or i1 %or.cond, %"413"
  %"414" = zext i8 %"407" to i32
  %"415" = icmp eq i32 %"414", 9
  %or.cond5 = or i1 %or.cond3, %"415"
  %"416" = zext i8 %"407" to i32
  %"417" = icmp eq i32 %"416", 11
  %or.cond7 = or i1 %or.cond5, %"417"
  br i1 %or.cond7, label %_0_2_bb166, label %_0_2_bb165

_0_2_bb165:                                       ; preds = %_0_2_bb164
  %"418" = zext i8 %"407" to i32
  %"419" = icmp eq i32 %"418", 13
  br label %_0_2_bb166

_0_2_bb166:                                       ; preds = %_0_2_bb165, %_0_2_bb164
  %"420" = phi i1 [ true, %_0_2_bb164 ], [ %"419", %_0_2_bb165 ]
  %"421" = zext i1 %"420" to i32
  %"422" = bitcast i32 (...)* @__VERIFIER_assume to i32 (i32, ...)*
  %"423" = call i32 (i32, ...)* %"422"(i32 %"421")
  %"424" = zext i8 %"407" to i32
  %"425" = mul nsw i32 3, %tid
  %Pivot4.i = icmp slt i32 %"425", 1
  br i1 %Pivot4.i, label %_0_2_LeafBlock.i, label %_0_2_NodeBlock.i

_0_2_LeafBlock.i:                                 ; preds = %_0_2_bb166
  %SwitchLeaf.i = icmp eq i32 %"425", 0
  br i1 %SwitchLeaf.i, label %_0_2_bb167, label %_0_2_setpc.exit

_0_2_bb167:                                       ; preds = %_0_2_LeafBlock.i
  %"426" = trunc i32 %"424" to i8
  store i8 %"426", i8* @"'pc_0", align 1
  br label %_0_2_setpc.exit

_0_2_NodeBlock.i:                                 ; preds = %_0_2_bb166
  %Pivot.i = icmp slt i32 %"425", 2
  br i1 %Pivot.i, label %_0_2_bb168, label %_0_2_LeafBlock1.i

_0_2_bb168:                                       ; preds = %_0_2_NodeBlock.i
  %"427" = trunc i32 %"424" to i8
  store i8 %"427", i8* @"'pc_1", align 1
  br label %_0_2_setpc.exit

_0_2_LeafBlock1.i:                                ; preds = %_0_2_NodeBlock.i
  %SwitchLeaf2.i = icmp eq i32 %"425", 2
  br i1 %SwitchLeaf2.i, label %_0_2_bb169, label %_0_2_setpc.exit

_0_2_bb169:                                       ; preds = %_0_2_LeafBlock1.i
  %"428" = trunc i32 %"424" to i8
  store i8 %"428", i8* @"'pc_2", align 1
  br label %_0_2_setpc.exit

_0_2_setpc.exit:                                  ; preds = %_0_2_LeafBlock.i, %_0_2_LeafBlock1.i, %_0_2_bb167, %_0_2_bb168, %_0_2_bb169
  ret void
}

; Function Attrs: nounwind uwtable
define void @_0_12(i32 %tid) #0 {
_0_12_bb170:
  store i8 -1, i8* @"'E_0", align 1
  store i8 0, i8* @"'E_1", align 1
  %"429" = call i32 @__VERIFIER_nondet_int()
  %"430" = trunc i32 %"429" to i8
  %"431" = zext i8 %"430" to i32
  %"432" = icmp eq i32 %"431", 3
  %"433" = zext i8 %"430" to i32
  %"434" = icmp eq i32 %"433", 4
  %or.cond = or i1 %"432", %"434"
  %"435" = zext i8 %"430" to i32
  %"436" = icmp eq i32 %"435", 7
  %or.cond3 = or i1 %or.cond, %"436"
  %"437" = zext i8 %"430" to i32
  %"438" = icmp eq i32 %"437", 9
  %or.cond5 = or i1 %or.cond3, %"438"
  %"439" = zext i8 %"430" to i32
  %"440" = icmp eq i32 %"439", 11
  %or.cond7 = or i1 %or.cond5, %"440"
  br i1 %or.cond7, label %_0_12_bb172, label %_0_12_bb171

_0_12_bb171:                                      ; preds = %_0_12_bb170
  %"441" = zext i8 %"430" to i32
  %"442" = icmp eq i32 %"441", 13
  br label %_0_12_bb172

_0_12_bb172:                                      ; preds = %_0_12_bb171, %_0_12_bb170
  %"443" = phi i1 [ true, %_0_12_bb170 ], [ %"442", %_0_12_bb171 ]
  %"444" = zext i1 %"443" to i32
  %"445" = bitcast i32 (...)* @__VERIFIER_assume to i32 (i32, ...)*
  %"446" = call i32 (i32, ...)* %"445"(i32 %"444")
  %"447" = zext i8 %"430" to i32
  %"448" = mul nsw i32 3, %tid
  %Pivot4.i = icmp slt i32 %"448", 1
  br i1 %Pivot4.i, label %_0_12_LeafBlock.i, label %_0_12_NodeBlock.i

_0_12_LeafBlock.i:                                ; preds = %_0_12_bb172
  %SwitchLeaf.i = icmp eq i32 %"448", 0
  br i1 %SwitchLeaf.i, label %_0_12_bb173, label %_0_12_setpc.exit

_0_12_bb173:                                      ; preds = %_0_12_LeafBlock.i
  %"449" = trunc i32 %"447" to i8
  store i8 %"449", i8* @"'pc_0", align 1
  br label %_0_12_setpc.exit

_0_12_NodeBlock.i:                                ; preds = %_0_12_bb172
  %Pivot.i = icmp slt i32 %"448", 2
  br i1 %Pivot.i, label %_0_12_bb174, label %_0_12_LeafBlock1.i

_0_12_bb174:                                      ; preds = %_0_12_NodeBlock.i
  %"450" = trunc i32 %"447" to i8
  store i8 %"450", i8* @"'pc_1", align 1
  br label %_0_12_setpc.exit

_0_12_LeafBlock1.i:                               ; preds = %_0_12_NodeBlock.i
  %SwitchLeaf2.i = icmp eq i32 %"448", 2
  br i1 %SwitchLeaf2.i, label %_0_12_bb175, label %_0_12_setpc.exit

_0_12_bb175:                                      ; preds = %_0_12_LeafBlock1.i
  %"451" = trunc i32 %"447" to i8
  store i8 %"451", i8* @"'pc_2", align 1
  br label %_0_12_setpc.exit

_0_12_setpc.exit:                                 ; preds = %_0_12_LeafBlock.i, %_0_12_LeafBlock1.i, %_0_12_bb173, %_0_12_bb174, %_0_12_bb175
  ret void
}

; Function Attrs: nounwind uwtable
define void @_0_5(i32 %tid) #0 {
_0_5_bb176:
  %"452" = call i8 @__kittel_nondef.1() #2
  %"453" = load i8* @"'E_1", align 1
  %"454" = sext i8 %"453" to i32
  %"455" = icmp eq i32 %"454", 3
  %"456" = zext i1 %"455" to i32
  %"457" = bitcast i32 (...)* @__VERIFIER_assume to i32 (i32, ...)*
  %"458" = call i32 (i32, ...)* %"457"(i32 %"456")
  store i8 -1, i8* @"'E_0", align 1
  store i8 -1, i8* @"'E_3", align 1
  store i8 0, i8* @"'E_1", align 1
  %"459" = call i32 @__VERIFIER_nondet_int()
  %"460" = trunc i32 %"459" to i8
  %"461" = zext i8 %"460" to i32
  %"462" = icmp eq i32 %"461", 3
  %"463" = zext i8 %"460" to i32
  %"464" = icmp eq i32 %"463", 4
  %or.cond = or i1 %"462", %"464"
  %"465" = zext i8 %"460" to i32
  %"466" = icmp eq i32 %"465", 7
  %or.cond3 = or i1 %or.cond, %"466"
  %"467" = zext i8 %"460" to i32
  %"468" = icmp eq i32 %"467", 9
  %or.cond5 = or i1 %or.cond3, %"468"
  %"469" = zext i8 %"460" to i32
  %"470" = icmp eq i32 %"469", 11
  %or.cond7 = or i1 %or.cond5, %"470"
  br i1 %or.cond7, label %_0_5_bb178, label %_0_5_bb177

_0_5_bb177:                                       ; preds = %_0_5_bb176
  %"471" = zext i8 %"460" to i32
  %"472" = icmp eq i32 %"471", 13
  br label %_0_5_bb178

_0_5_bb178:                                       ; preds = %_0_5_bb177, %_0_5_bb176
  %"473" = phi i1 [ true, %_0_5_bb176 ], [ %"472", %_0_5_bb177 ]
  %"474" = zext i1 %"473" to i32
  %"475" = bitcast i32 (...)* @__VERIFIER_assume to i32 (i32, ...)*
  %"476" = call i32 (i32, ...)* %"475"(i32 %"474")
  %"477" = zext i8 %"460" to i32
  %"478" = mul nsw i32 3, %tid
  %Pivot4.i = icmp slt i32 %"478", 1
  br i1 %Pivot4.i, label %_0_5_LeafBlock.i, label %_0_5_NodeBlock.i

_0_5_LeafBlock.i:                                 ; preds = %_0_5_bb178
  %SwitchLeaf.i = icmp eq i32 %"478", 0
  br i1 %SwitchLeaf.i, label %_0_5_bb179, label %_0_5_setpc.exit

_0_5_bb179:                                       ; preds = %_0_5_LeafBlock.i
  %"479" = trunc i32 %"477" to i8
  store i8 %"479", i8* @"'pc_0", align 1
  br label %_0_5_setpc.exit

_0_5_NodeBlock.i:                                 ; preds = %_0_5_bb178
  %Pivot.i = icmp slt i32 %"478", 2
  br i1 %Pivot.i, label %_0_5_bb180, label %_0_5_LeafBlock1.i

_0_5_bb180:                                       ; preds = %_0_5_NodeBlock.i
  %"480" = trunc i32 %"477" to i8
  store i8 %"480", i8* @"'pc_1", align 1
  br label %_0_5_setpc.exit

_0_5_LeafBlock1.i:                                ; preds = %_0_5_NodeBlock.i
  %SwitchLeaf2.i = icmp eq i32 %"478", 2
  br i1 %SwitchLeaf2.i, label %_0_5_bb181, label %_0_5_setpc.exit

_0_5_bb181:                                       ; preds = %_0_5_LeafBlock1.i
  %"481" = trunc i32 %"477" to i8
  store i8 %"481", i8* @"'pc_2", align 1
  br label %_0_5_setpc.exit

_0_5_setpc.exit:                                  ; preds = %_0_5_LeafBlock.i, %_0_5_LeafBlock1.i, %_0_5_bb179, %_0_5_bb180, %_0_5_bb181
  ret void
}

; Function Attrs: nounwind uwtable
define void @_0_4(i32 %tid) #0 {
_0_4_bb182:
  %"482" = call i8 @__kittel_nondef.1() #2
  %"483" = load i8* @"'E_0", align 1
  %"484" = sext i8 %"483" to i32
  %"485" = icmp ne i32 %"484", %tid
  %"486" = zext i1 %"485" to i32
  %"487" = bitcast i32 (...)* @__VERIFIER_assume to i32 (i32, ...)*
  %"488" = call i32 (i32, ...)* %"487"(i32 %"486")
  %"489" = call i8 @__kittel_nondef.1() #2
  %"490" = load i8* @"'E_1", align 1
  %"491" = sext i8 %"490" to i32
  %"492" = icmp eq i32 %"491", 0
  %"493" = zext i1 %"492" to i32
  %"494" = bitcast i32 (...)* @__VERIFIER_assume to i32 (i32, ...)*
  %"495" = call i32 (i32, ...)* %"494"(i32 %"493")
  %"496" = call i8 @__kittel_nondef.1() #2
  %"497" = mul nsw i32 3, %tid
  %Pivot4.i = icmp slt i32 %"497", 1
  br i1 %Pivot4.i, label %_0_4_LeafBlock.i, label %_0_4_NodeBlock.i

_0_4_LeafBlock.i:                                 ; preds = %_0_4_bb182
  %SwitchLeaf.i = icmp eq i32 %"497", 0
  %"498" = load i8* @"'I_0", align 1
  %. = select i1 %SwitchLeaf.i, i8 %"498", i8 %"496"
  br label %_0_4_getI.exit

_0_4_NodeBlock.i:                                 ; preds = %_0_4_bb182
  %Pivot.i = icmp slt i32 %"497", 2
  br i1 %Pivot.i, label %_0_4_bb183, label %_0_4_LeafBlock1.i

_0_4_bb183:                                       ; preds = %_0_4_NodeBlock.i
  %"499" = load i8* @"'I_1", align 1
  br label %_0_4_getI.exit

_0_4_LeafBlock1.i:                                ; preds = %_0_4_NodeBlock.i
  %SwitchLeaf2.i = icmp eq i32 %"497", 2
  %"500" = load i8* @"'I_2", align 1
  %.26 = select i1 %SwitchLeaf2.i, i8 %"500", i8 %"496"
  br label %_0_4_getI.exit

_0_4_getI.exit:                                   ; preds = %_0_4_LeafBlock1.i, %_0_4_LeafBlock.i, %_0_4_bb183
  %.0.i = phi i8 [ %"499", %_0_4_bb183 ], [ %., %_0_4_LeafBlock.i ], [ %.26, %_0_4_LeafBlock1.i ]
  %"501" = sext i8 %.0.i to i32
  %"502" = icmp ne i32 %"501", 2
  %"503" = zext i1 %"502" to i32
  %"504" = bitcast i32 (...)* @__VERIFIER_assume to i32 (i32, ...)*
  %"505" = call i32 (i32, ...)* %"504"(i32 %"503")
  %"506" = trunc i32 %tid to i8
  %"507" = call i8 @__kittel_nondef.1() #2
  %"508" = mul nsw i32 3, %tid
  %Pivot4.i1 = icmp slt i32 %"508", 1
  br i1 %Pivot4.i1, label %_0_4_LeafBlock.i3, label %_0_4_NodeBlock.i5

_0_4_LeafBlock.i3:                                ; preds = %_0_4_getI.exit
  %SwitchLeaf.i2 = icmp eq i32 %"508", 0
  %"509" = load i8* @"'I_0", align 1
  %.27 = select i1 %SwitchLeaf.i2, i8 %"509", i8 %"507"
  br label %_0_4_getI.exit10

_0_4_NodeBlock.i5:                                ; preds = %_0_4_getI.exit
  %Pivot.i4 = icmp slt i32 %"508", 2
  br i1 %Pivot.i4, label %_0_4_bb184, label %_0_4_LeafBlock1.i7

_0_4_bb184:                                       ; preds = %_0_4_NodeBlock.i5
  %"510" = load i8* @"'I_1", align 1
  br label %_0_4_getI.exit10

_0_4_LeafBlock1.i7:                               ; preds = %_0_4_NodeBlock.i5
  %SwitchLeaf2.i6 = icmp eq i32 %"508", 2
  %"511" = load i8* @"'I_2", align 1
  %.28 = select i1 %SwitchLeaf2.i6, i8 %"511", i8 %"507"
  br label %_0_4_getI.exit10

_0_4_getI.exit10:                                 ; preds = %_0_4_LeafBlock1.i7, %_0_4_LeafBlock.i3, %_0_4_bb184
  %.0.i9 = phi i8 [ %"510", %_0_4_bb184 ], [ %.27, %_0_4_LeafBlock.i3 ], [ %.28, %_0_4_LeafBlock1.i7 ]
  store i8 %"506", i8* @"'E_0", align 1
  store i8 %.0.i9, i8* @"'E_2", align 1
  store i8 1, i8* @"'E_1", align 1
  %"512" = call i32 @__VERIFIER_nondet_int()
  %"513" = trunc i32 %"512" to i8
  %"514" = zext i8 %"513" to i32
  %"515" = icmp eq i32 %"514", 3
  %"516" = zext i8 %"513" to i32
  %"517" = icmp eq i32 %"516", 4
  %or.cond = or i1 %"515", %"517"
  %"518" = zext i8 %"513" to i32
  %"519" = icmp eq i32 %"518", 7
  %or.cond21 = or i1 %or.cond, %"519"
  %"520" = zext i8 %"513" to i32
  %"521" = icmp eq i32 %"520", 9
  %or.cond23 = or i1 %or.cond21, %"521"
  %"522" = zext i8 %"513" to i32
  %"523" = icmp eq i32 %"522", 11
  %or.cond25 = or i1 %or.cond23, %"523"
  br i1 %or.cond25, label %_0_4_bb186, label %_0_4_bb185

_0_4_bb185:                                       ; preds = %_0_4_getI.exit10
  %"524" = zext i8 %"513" to i32
  %"525" = icmp eq i32 %"524", 13
  br label %_0_4_bb186

_0_4_bb186:                                       ; preds = %_0_4_bb185, %_0_4_getI.exit10
  %"526" = phi i1 [ true, %_0_4_getI.exit10 ], [ %"525", %_0_4_bb185 ]
  %"527" = zext i1 %"526" to i32
  %"528" = bitcast i32 (...)* @__VERIFIER_assume to i32 (i32, ...)*
  %"529" = call i32 (i32, ...)* %"528"(i32 %"527")
  %"530" = zext i8 %"513" to i32
  %"531" = mul nsw i32 3, %tid
  %Pivot4.i11 = icmp slt i32 %"531", 1
  br i1 %Pivot4.i11, label %_0_4_LeafBlock.i13, label %_0_4_NodeBlock.i15

_0_4_LeafBlock.i13:                               ; preds = %_0_4_bb186
  %SwitchLeaf.i12 = icmp eq i32 %"531", 0
  br i1 %SwitchLeaf.i12, label %_0_4_bb187, label %_0_4_setpc.exit

_0_4_bb187:                                       ; preds = %_0_4_LeafBlock.i13
  %"532" = trunc i32 %"530" to i8
  store i8 %"532", i8* @"'pc_0", align 1
  br label %_0_4_setpc.exit

_0_4_NodeBlock.i15:                               ; preds = %_0_4_bb186
  %Pivot.i14 = icmp slt i32 %"531", 2
  br i1 %Pivot.i14, label %_0_4_bb188, label %_0_4_LeafBlock1.i17

_0_4_bb188:                                       ; preds = %_0_4_NodeBlock.i15
  %"533" = trunc i32 %"530" to i8
  store i8 %"533", i8* @"'pc_1", align 1
  br label %_0_4_setpc.exit

_0_4_LeafBlock1.i17:                              ; preds = %_0_4_NodeBlock.i15
  %SwitchLeaf2.i16 = icmp eq i32 %"531", 2
  br i1 %SwitchLeaf2.i16, label %_0_4_bb189, label %_0_4_setpc.exit

_0_4_bb189:                                       ; preds = %_0_4_LeafBlock1.i17
  %"534" = trunc i32 %"530" to i8
  store i8 %"534", i8* @"'pc_2", align 1
  br label %_0_4_setpc.exit

_0_4_setpc.exit:                                  ; preds = %_0_4_LeafBlock.i13, %_0_4_LeafBlock1.i17, %_0_4_bb187, %_0_4_bb188, %_0_4_bb189
  ret void
}

; Function Attrs: nounwind uwtable
define void @_0_10(i32 %tid) #0 {
_0_10_bb190:
  store i8 -1, i8* @"'E_0", align 1
  store i8 0, i8* @"'E_1", align 1
  %"535" = call i32 @__VERIFIER_nondet_int()
  %"536" = trunc i32 %"535" to i8
  %"537" = zext i8 %"536" to i32
  %"538" = icmp eq i32 %"537", 3
  %"539" = zext i8 %"536" to i32
  %"540" = icmp eq i32 %"539", 4
  %or.cond = or i1 %"538", %"540"
  %"541" = zext i8 %"536" to i32
  %"542" = icmp eq i32 %"541", 7
  %or.cond3 = or i1 %or.cond, %"542"
  %"543" = zext i8 %"536" to i32
  %"544" = icmp eq i32 %"543", 9
  %or.cond5 = or i1 %or.cond3, %"544"
  %"545" = zext i8 %"536" to i32
  %"546" = icmp eq i32 %"545", 11
  %or.cond7 = or i1 %or.cond5, %"546"
  br i1 %or.cond7, label %_0_10_bb192, label %_0_10_bb191

_0_10_bb191:                                      ; preds = %_0_10_bb190
  %"547" = zext i8 %"536" to i32
  %"548" = icmp eq i32 %"547", 13
  br label %_0_10_bb192

_0_10_bb192:                                      ; preds = %_0_10_bb191, %_0_10_bb190
  %"549" = phi i1 [ true, %_0_10_bb190 ], [ %"548", %_0_10_bb191 ]
  %"550" = zext i1 %"549" to i32
  %"551" = bitcast i32 (...)* @__VERIFIER_assume to i32 (i32, ...)*
  %"552" = call i32 (i32, ...)* %"551"(i32 %"550")
  %"553" = zext i8 %"536" to i32
  %"554" = mul nsw i32 3, %tid
  %Pivot4.i = icmp slt i32 %"554", 1
  br i1 %Pivot4.i, label %_0_10_LeafBlock.i, label %_0_10_NodeBlock.i

_0_10_LeafBlock.i:                                ; preds = %_0_10_bb192
  %SwitchLeaf.i = icmp eq i32 %"554", 0
  br i1 %SwitchLeaf.i, label %_0_10_bb193, label %_0_10_setpc.exit

_0_10_bb193:                                      ; preds = %_0_10_LeafBlock.i
  %"555" = trunc i32 %"553" to i8
  store i8 %"555", i8* @"'pc_0", align 1
  br label %_0_10_setpc.exit

_0_10_NodeBlock.i:                                ; preds = %_0_10_bb192
  %Pivot.i = icmp slt i32 %"554", 2
  br i1 %Pivot.i, label %_0_10_bb194, label %_0_10_LeafBlock1.i

_0_10_bb194:                                      ; preds = %_0_10_NodeBlock.i
  %"556" = trunc i32 %"553" to i8
  store i8 %"556", i8* @"'pc_1", align 1
  br label %_0_10_setpc.exit

_0_10_LeafBlock1.i:                               ; preds = %_0_10_NodeBlock.i
  %SwitchLeaf2.i = icmp eq i32 %"554", 2
  br i1 %SwitchLeaf2.i, label %_0_10_bb195, label %_0_10_setpc.exit

_0_10_bb195:                                      ; preds = %_0_10_LeafBlock1.i
  %"557" = trunc i32 %"553" to i8
  store i8 %"557", i8* @"'pc_2", align 1
  br label %_0_10_setpc.exit

_0_10_setpc.exit:                                 ; preds = %_0_10_LeafBlock.i, %_0_10_LeafBlock1.i, %_0_10_bb193, %_0_10_bb194, %_0_10_bb195
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb196:
  %"558" = call i32 @__VERIFIER_nondet_int() #2
  %"559" = call i32 @__VERIFIER_nondet_int() #2
  %"560" = call i8 @__kittel_nondef.1() #2
  %"561" = load i8* @"'_pc_21_1_0", align 1
  %"562" = zext i8 %"561" to i32
  %"563" = icmp eq i32 %"562", 3
  br i1 %"563", label %main_bb202, label %main_bb197

main_bb197:                                       ; preds = %main_bb196
  %"564" = call i8 @__kittel_nondef.1() #2
  %"565" = load i8* @"'_pc_21_1_0", align 1
  %"566" = zext i8 %"565" to i32
  %"567" = icmp eq i32 %"566", 4
  br i1 %"567", label %main_bb202, label %main_bb198

main_bb198:                                       ; preds = %main_bb197
  %"568" = call i8 @__kittel_nondef.1() #2
  %"569" = load i8* @"'_pc_21_1_0", align 1
  %"570" = zext i8 %"569" to i32
  %"571" = icmp eq i32 %"570", 7
  br i1 %"571", label %main_bb202, label %main_bb199

main_bb199:                                       ; preds = %main_bb198
  %"572" = call i8 @__kittel_nondef.1() #2
  %"573" = load i8* @"'_pc_21_1_0", align 1
  %"574" = zext i8 %"573" to i32
  %"575" = icmp eq i32 %"574", 9
  br i1 %"575", label %main_bb202, label %main_bb200

main_bb200:                                       ; preds = %main_bb199
  %"576" = call i8 @__kittel_nondef.1() #2
  %"577" = load i8* @"'_pc_21_1_0", align 1
  %"578" = zext i8 %"577" to i32
  %"579" = icmp eq i32 %"578", 11
  br i1 %"579", label %main_bb202, label %main_bb201

main_bb201:                                       ; preds = %main_bb200
  %"580" = call i8 @__kittel_nondef.1() #2
  %"581" = load i8* @"'_pc_21_1_0", align 1
  %"582" = zext i8 %"581" to i32
  %"583" = icmp eq i32 %"582", 13
  br label %main_bb202

main_bb202:                                       ; preds = %main_bb201, %main_bb200, %main_bb199, %main_bb198, %main_bb197, %main_bb196
  %"584" = phi i1 [ true, %main_bb200 ], [ true, %main_bb199 ], [ true, %main_bb198 ], [ true, %main_bb197 ], [ true, %main_bb196 ], [ %"583", %main_bb201 ]
  %"585" = zext i1 %"584" to i32
  %"586" = bitcast i32 (...)* @__VERIFIER_assume to i32 (i32, ...)*
  %"587" = call i32 (i32, ...)* %"586"(i32 %"585") #2
  %"588" = call i8 @__kittel_nondef.1() #2
  %"589" = zext i8 %"588" to i32
  %"590" = icmp eq i32 %"589", 3
  br i1 %"590", label %main_bb208, label %main_bb203

main_bb203:                                       ; preds = %main_bb202
  %"591" = call i8 @__kittel_nondef.1() #2
  %"592" = zext i8 %"591" to i32
  %"593" = icmp eq i32 %"592", 4
  br i1 %"593", label %main_bb208, label %main_bb204

main_bb204:                                       ; preds = %main_bb203
  %"594" = call i8 @__kittel_nondef.1() #2
  %"595" = zext i8 %"594" to i32
  %"596" = icmp eq i32 %"595", 7
  br i1 %"596", label %main_bb208, label %main_bb205

main_bb205:                                       ; preds = %main_bb204
  %"597" = call i8 @__kittel_nondef.1() #2
  %"598" = zext i8 %"597" to i32
  %"599" = icmp eq i32 %"598", 9
  br i1 %"599", label %main_bb208, label %main_bb206

main_bb206:                                       ; preds = %main_bb205
  %"600" = call i8 @__kittel_nondef.1() #2
  %"601" = zext i8 %"600" to i32
  %"602" = icmp eq i32 %"601", 11
  br i1 %"602", label %main_bb208, label %main_bb207

main_bb207:                                       ; preds = %main_bb206
  %"603" = call i8 @__kittel_nondef.1() #2
  %"604" = zext i8 %"603" to i32
  %"605" = icmp eq i32 %"604", 13
  br label %main_bb208

main_bb208:                                       ; preds = %main_bb207, %main_bb206, %main_bb205, %main_bb204, %main_bb203, %main_bb202
  %"606" = phi i1 [ true, %main_bb206 ], [ true, %main_bb205 ], [ true, %main_bb204 ], [ true, %main_bb203 ], [ true, %main_bb202 ], [ %"605", %main_bb207 ]
  %"607" = zext i1 %"606" to i32
  %"608" = bitcast i32 (...)* @__VERIFIER_assume to i32 (i32, ...)*
  %"609" = call i32 (i32, ...)* %"608"(i32 %"607") #2
  %"610" = call i8 @__kittel_nondef.1() #2
  %"611" = zext i8 %"610" to i32
  %"612" = icmp eq i32 %"611", 3
  br i1 %"612", label %main_bb214, label %main_bb209

main_bb209:                                       ; preds = %main_bb208
  %"613" = call i8 @__kittel_nondef.1() #2
  %"614" = zext i8 %"613" to i32
  %"615" = icmp eq i32 %"614", 4
  br i1 %"615", label %main_bb214, label %main_bb210

main_bb210:                                       ; preds = %main_bb209
  %"616" = call i8 @__kittel_nondef.1() #2
  %"617" = zext i8 %"616" to i32
  %"618" = icmp eq i32 %"617", 7
  br i1 %"618", label %main_bb214, label %main_bb211

main_bb211:                                       ; preds = %main_bb210
  %"619" = call i8 @__kittel_nondef.1() #2
  %"620" = zext i8 %"619" to i32
  %"621" = icmp eq i32 %"620", 9
  br i1 %"621", label %main_bb214, label %main_bb212

main_bb212:                                       ; preds = %main_bb211
  %"622" = call i8 @__kittel_nondef.1() #2
  %"623" = zext i8 %"622" to i32
  %"624" = icmp eq i32 %"623", 11
  br i1 %"624", label %main_bb214, label %main_bb213

main_bb213:                                       ; preds = %main_bb212
  %"625" = call i8 @__kittel_nondef.1() #2
  %"626" = zext i8 %"625" to i32
  %"627" = icmp eq i32 %"626", 13
  br label %main_bb214

main_bb214:                                       ; preds = %main_bb213, %main_bb212, %main_bb211, %main_bb210, %main_bb209, %main_bb208
  %"628" = phi i1 [ true, %main_bb212 ], [ true, %main_bb211 ], [ true, %main_bb210 ], [ true, %main_bb209 ], [ true, %main_bb208 ], [ %"627", %main_bb213 ]
  %"629" = zext i1 %"628" to i32
  %"630" = bitcast i32 (...)* @__VERIFIER_assume to i32 (i32, ...)*
  %"631" = call i32 (i32, ...)* %"630"(i32 %"629") #2
  %"632" = call i8 @__kittel_nondef.1() #2
  %"633" = load i8* @"'_E_21_1_0", align 1
  %"634" = sext i8 %"633" to i32
  %"635" = icmp eq i32 %"634", -1
  %"636" = zext i1 %"635" to i32
  %"637" = bitcast i32 (...)* @__VERIFIER_assume to i32 (i32, ...)*
  %"638" = call i32 (i32, ...)* %"637"(i32 %"636") #2
  %"639" = call i8 @__kittel_nondef.1() #2
  %"640" = load i8* @"'_E_21_1_1", align 1
  %"641" = sext i8 %"640" to i32
  %"642" = icmp eq i32 %"641", 0
  %"643" = zext i1 %"642" to i32
  %"644" = bitcast i32 (...)* @__VERIFIER_assume to i32 (i32, ...)*
  %"645" = call i32 (i32, ...)* %"644"(i32 %"643") #2
  %"646" = call i8 @__kittel_nondef.1() #2
  %"647" = load i8* @"'_E_21_1_2", align 1
  %"648" = sext i8 %"647" to i32
  %"649" = icmp eq i32 %"648", -1
  %"650" = zext i1 %"649" to i32
  %"651" = bitcast i32 (...)* @__VERIFIER_assume to i32 (i32, ...)*
  %"652" = call i32 (i32, ...)* %"651"(i32 %"650") #2
  %"653" = call i8 @__kittel_nondef.1() #2
  %"654" = load i8* @"'_E_21_1_3", align 1
  %"655" = sext i8 %"654" to i32
  %"656" = icmp eq i32 %"655", -1
  %"657" = zext i1 %"656" to i32
  %"658" = bitcast i32 (...)* @__VERIFIER_assume to i32 (i32, ...)*
  %"659" = call i32 (i32, ...)* %"658"(i32 %"657") #2
  %"660" = call i8 @__kittel_nondef.1() #2
  %"661" = load i8* @"'_I_21_1_0", align 1
  %"662" = sext i8 %"661" to i32
  %"663" = icmp eq i32 %"662", 0
  %"664" = zext i1 %"663" to i32
  %"665" = bitcast i32 (...)* @__VERIFIER_assume to i32 (i32, ...)*
  %"666" = call i32 (i32, ...)* %"665"(i32 %"664") #2
  %"667" = call i8 @__kittel_nondef.1() #2
  %"668" = sext i8 %"667" to i32
  %"669" = icmp eq i32 %"668", 0
  %"670" = zext i1 %"669" to i32
  %"671" = bitcast i32 (...)* @__VERIFIER_assume to i32 (i32, ...)*
  %"672" = call i32 (i32, ...)* %"671"(i32 %"670") #2
  %"673" = call i8 @__kittel_nondef.1() #2
  %"674" = sext i8 %"673" to i32
  %"675" = icmp eq i32 %"674", 1
  %"676" = zext i1 %"675" to i32
  %"677" = bitcast i32 (...)* @__VERIFIER_assume to i32 (i32, ...)*
  %"678" = call i32 (i32, ...)* %"677"(i32 %"676") #2
  br label %main_bb215

main_bb215:                                       ; preds = %main_setE.exit.i, %main_bb214
  %i.0.i = phi i8 [ 0, %main_bb214 ], [ %"688", %main_setE.exit.i ]
  %"679" = zext i8 %i.0.i to i32
  %"680" = icmp slt i32 %"679", 4
  br i1 %"680", label %main_bb216, label %main_bb223

main_bb216:                                       ; preds = %main_bb215
  %"681" = zext i8 %i.0.i to i32
  %"682" = zext i8 %i.0.i to i32
  %"683" = call i8 @__kittel_nondef.1() #2
  %Pivot6.i.i = icmp slt i32 %"682", 2
  br i1 %Pivot6.i.i, label %main_NodeBlock.i.i, label %main_NodeBlock3.i.i

main_NodeBlock.i.i:                               ; preds = %main_bb216
  %Pivot.i.i = icmp slt i32 %"682", 1
  br i1 %Pivot.i.i, label %main_LeafBlock.i.i, label %main_bb217

main_LeafBlock.i.i:                               ; preds = %main_NodeBlock.i.i
  %SwitchLeaf.i.i = icmp eq i32 %"682", 0
  %"684" = load i8* @"'_E_21_1_0", align 1
  %..i = select i1 %SwitchLeaf.i.i, i8 %"684", i8 %"683"
  br label %main_get_E_21_1.exit.i

main_bb217:                                       ; preds = %main_NodeBlock.i.i
  %"685" = load i8* @"'_E_21_1_1", align 1
  br label %main_get_E_21_1.exit.i

main_NodeBlock3.i.i:                              ; preds = %main_bb216
  %Pivot4.i.i = icmp slt i32 %"682", 3
  br i1 %Pivot4.i.i, label %main_bb218, label %main_LeafBlock1.i.i

main_bb218:                                       ; preds = %main_NodeBlock3.i.i
  %"686" = load i8* @"'_E_21_1_2", align 1
  br label %main_get_E_21_1.exit.i

main_LeafBlock1.i.i:                              ; preds = %main_NodeBlock3.i.i
  %SwitchLeaf2.i.i = icmp eq i32 %"682", 3
  %"687" = load i8* @"'_E_21_1_3", align 1
  %.49.i = select i1 %SwitchLeaf2.i.i, i8 %"687", i8 %"683"
  br label %main_get_E_21_1.exit.i

main_get_E_21_1.exit.i:                           ; preds = %main_LeafBlock1.i.i, %main_bb218, %main_bb217, %main_LeafBlock.i.i
  %.0.i.i = phi i8 [ %"686", %main_bb218 ], [ %"685", %main_bb217 ], [ %..i, %main_LeafBlock.i.i ], [ %.49.i, %main_LeafBlock1.i.i ]
  %Pivot6.i1.i = icmp slt i32 %"681", 2
  br i1 %Pivot6.i1.i, label %main_NodeBlock.i3.i, label %main_NodeBlock3.i7.i

main_NodeBlock.i3.i:                              ; preds = %main_get_E_21_1.exit.i
  %Pivot.i2.i = icmp slt i32 %"681", 1
  br i1 %Pivot.i2.i, label %main_LeafBlock.i5.i, label %main_bb220

main_LeafBlock.i5.i:                              ; preds = %main_NodeBlock.i3.i
  %SwitchLeaf.i4.i = icmp eq i32 %"681", 0
  br i1 %SwitchLeaf.i4.i, label %main_bb219, label %main_setE.exit.i

main_bb219:                                       ; preds = %main_LeafBlock.i5.i
  store i8 %.0.i.i, i8* @"'E_0", align 1
  br label %main_setE.exit.i

main_bb220:                                       ; preds = %main_NodeBlock.i3.i
  store i8 %.0.i.i, i8* @"'E_1", align 1
  br label %main_setE.exit.i

main_NodeBlock3.i7.i:                             ; preds = %main_get_E_21_1.exit.i
  %Pivot4.i6.i = icmp slt i32 %"681", 3
  br i1 %Pivot4.i6.i, label %main_bb221, label %main_LeafBlock1.i9.i

main_bb221:                                       ; preds = %main_NodeBlock3.i7.i
  store i8 %.0.i.i, i8* @"'E_2", align 1
  br label %main_setE.exit.i

main_LeafBlock1.i9.i:                             ; preds = %main_NodeBlock3.i7.i
  %SwitchLeaf2.i8.i = icmp eq i32 %"681", 3
  br i1 %SwitchLeaf2.i8.i, label %main_bb222, label %main_setE.exit.i

main_bb222:                                       ; preds = %main_LeafBlock1.i9.i
  store i8 %.0.i.i, i8* @"'E_3", align 1
  br label %main_setE.exit.i

main_setE.exit.i:                                 ; preds = %main_bb222, %main_LeafBlock1.i9.i, %main_bb221, %main_bb220, %main_bb219, %main_LeafBlock.i5.i
  %"688" = add i8 %i.0.i, 1
  br label %main_bb215

main_bb223:                                       ; preds = %main_bb238, %main_bb215
  %i.1.i = phi i8 [ %"725", %main_bb238 ], [ 0, %main_bb215 ]
  %"689" = zext i8 %i.1.i to i32
  %"690" = icmp slt i32 %"689", 3
  br i1 %"690", label %main_bb224, label %main_init.exit

main_bb224:                                       ; preds = %main_bb223
  %"691" = zext i8 %i.1.i to i32
  %"692" = zext i8 %i.1.i to i32
  br label %main_bb225

main_bb225:                                       ; preds = %main_setpc.exit.i, %main_bb224
  %j.0.i = phi i8 [ 0, %main_bb224 ], [ %"709", %main_setpc.exit.i ]
  %"693" = zext i8 %j.0.i to i32
  %"694" = icmp slt i32 %"693", 1
  br i1 %"694", label %main_bb226, label %main_bb231

main_bb226:                                       ; preds = %main_bb225
  %"695" = zext i8 %j.0.i to i32
  %"696" = zext i8 %j.0.i to i32
  %"697" = call i8 @__kittel_nondef.1() #2
  %"698" = mul nsw i32 3, %"692"
  %"699" = add nsw i32 %"698", %"696"
  %Pivot4.i30.i = icmp slt i32 %"699", 1
  br i1 %Pivot4.i30.i, label %main_LeafBlock.i33.i, label %main_NodeBlock.i35.i

main_LeafBlock.i33.i:                             ; preds = %main_bb226
  %SwitchLeaf.i32.i = icmp eq i32 %"699", 0
  %"700" = load i8* @"'_pc_21_1_0", align 1
  %.50.i = select i1 %SwitchLeaf.i32.i, i8 %"700", i8 %"697"
  br label %main_get_pc_21_1.exit.i

main_NodeBlock.i35.i:                             ; preds = %main_bb226
  %Pivot.i34.i = icmp slt i32 %"699", 2
  br i1 %Pivot.i34.i, label %main_bb227, label %main_LeafBlock1.i37.i

main_bb227:                                       ; preds = %main_NodeBlock.i35.i
  %"701" = load i8* @"'_pc_21_1_1", align 1
  br label %main_get_pc_21_1.exit.i

main_LeafBlock1.i37.i:                            ; preds = %main_NodeBlock.i35.i
  %SwitchLeaf2.i36.i = icmp eq i32 %"699", 2
  %"702" = load i8* @"'_pc_21_1_2", align 1
  %.51.i = select i1 %SwitchLeaf2.i36.i, i8 %"702", i8 %"697"
  br label %main_get_pc_21_1.exit.i

main_get_pc_21_1.exit.i:                          ; preds = %main_LeafBlock1.i37.i, %main_bb227, %main_LeafBlock.i33.i
  %.0.i39.i = phi i8 [ %"701", %main_bb227 ], [ %.50.i, %main_LeafBlock.i33.i ], [ %.51.i, %main_LeafBlock1.i37.i ]
  %"703" = zext i8 %.0.i39.i to i32
  %"704" = mul nsw i32 3, %"691"
  %"705" = add nsw i32 %"704", %"695"
  %Pivot4.i40.i = icmp slt i32 %"705", 1
  br i1 %Pivot4.i40.i, label %main_LeafBlock.i43.i, label %main_NodeBlock.i45.i

main_LeafBlock.i43.i:                             ; preds = %main_get_pc_21_1.exit.i
  %SwitchLeaf.i42.i = icmp eq i32 %"705", 0
  br i1 %SwitchLeaf.i42.i, label %main_bb228, label %main_setpc.exit.i

main_bb228:                                       ; preds = %main_LeafBlock.i43.i
  %"706" = trunc i32 %"703" to i8
  store i8 %"706", i8* @"'pc_0", align 1
  br label %main_setpc.exit.i

main_NodeBlock.i45.i:                             ; preds = %main_get_pc_21_1.exit.i
  %Pivot.i44.i = icmp slt i32 %"705", 2
  br i1 %Pivot.i44.i, label %main_bb229, label %main_LeafBlock1.i47.i

main_bb229:                                       ; preds = %main_NodeBlock.i45.i
  %"707" = trunc i32 %"703" to i8
  store i8 %"707", i8* @"'pc_1", align 1
  br label %main_setpc.exit.i

main_LeafBlock1.i47.i:                            ; preds = %main_NodeBlock.i45.i
  %SwitchLeaf2.i46.i = icmp eq i32 %"705", 2
  br i1 %SwitchLeaf2.i46.i, label %main_bb230, label %main_setpc.exit.i

main_bb230:                                       ; preds = %main_LeafBlock1.i47.i
  %"708" = trunc i32 %"703" to i8
  store i8 %"708", i8* @"'pc_2", align 1
  br label %main_setpc.exit.i

main_setpc.exit.i:                                ; preds = %main_bb230, %main_LeafBlock1.i47.i, %main_bb229, %main_bb228, %main_LeafBlock.i43.i
  %"709" = add i8 %j.0.i, 1
  br label %main_bb225

main_bb231:                                       ; preds = %main_bb225
  %"710" = zext i8 %i.1.i to i32
  %"711" = zext i8 %i.1.i to i32
  br label %main_bb232

main_bb232:                                       ; preds = %main_setI.exit.i, %main_bb231
  %j.1.i = phi i8 [ 0, %main_bb231 ], [ %"724", %main_setI.exit.i ]
  %"712" = zext i8 %j.1.i to i32
  %"713" = icmp slt i32 %"712", 1
  br i1 %"713", label %main_bb233, label %main_bb238

main_bb233:                                       ; preds = %main_bb232
  %"714" = zext i8 %j.1.i to i32
  %"715" = zext i8 %j.1.i to i32
  %"716" = call i8 @__kittel_nondef.1() #2
  %"717" = mul nsw i32 3, %"711"
  %"718" = add nsw i32 %"717", %"715"
  %Pivot4.i20.i = icmp slt i32 %"718", 1
  br i1 %Pivot4.i20.i, label %main_LeafBlock.i23.i, label %main_NodeBlock.i25.i

main_LeafBlock.i23.i:                             ; preds = %main_bb233
  %SwitchLeaf.i22.i = icmp eq i32 %"718", 0
  %"719" = load i8* @"'_I_21_1_0", align 1
  %.52.i = select i1 %SwitchLeaf.i22.i, i8 %"719", i8 %"716"
  br label %main_get_I_21_1.exit.i

main_NodeBlock.i25.i:                             ; preds = %main_bb233
  %Pivot.i24.i = icmp slt i32 %"718", 2
  br i1 %Pivot.i24.i, label %main_bb234, label %main_LeafBlock1.i27.i

main_bb234:                                       ; preds = %main_NodeBlock.i25.i
  %"720" = load i8* @"'_I_21_1_1", align 1
  br label %main_get_I_21_1.exit.i

main_LeafBlock1.i27.i:                            ; preds = %main_NodeBlock.i25.i
  %SwitchLeaf2.i26.i = icmp eq i32 %"718", 2
  %"721" = load i8* @"'_I_21_1_2", align 1
  %.53.i = select i1 %SwitchLeaf2.i26.i, i8 %"721", i8 %"716"
  br label %main_get_I_21_1.exit.i

main_get_I_21_1.exit.i:                           ; preds = %main_LeafBlock1.i27.i, %main_bb234, %main_LeafBlock.i23.i
  %.0.i29.i = phi i8 [ %"720", %main_bb234 ], [ %.52.i, %main_LeafBlock.i23.i ], [ %.53.i, %main_LeafBlock1.i27.i ]
  %"722" = mul nsw i32 3, %"710"
  %"723" = add nsw i32 %"722", %"714"
  %Pivot4.i11.i = icmp slt i32 %"723", 1
  br i1 %Pivot4.i11.i, label %main_LeafBlock.i14.i, label %main_NodeBlock.i16.i

main_LeafBlock.i14.i:                             ; preds = %main_get_I_21_1.exit.i
  %SwitchLeaf.i13.i = icmp eq i32 %"723", 0
  br i1 %SwitchLeaf.i13.i, label %main_bb235, label %main_setI.exit.i

main_bb235:                                       ; preds = %main_LeafBlock.i14.i
  store i8 %.0.i29.i, i8* @"'I_0", align 1
  br label %main_setI.exit.i

main_NodeBlock.i16.i:                             ; preds = %main_get_I_21_1.exit.i
  %Pivot.i15.i = icmp slt i32 %"723", 2
  br i1 %Pivot.i15.i, label %main_bb236, label %main_LeafBlock1.i18.i

main_bb236:                                       ; preds = %main_NodeBlock.i16.i
  store i8 %.0.i29.i, i8* @"'I_1", align 1
  br label %main_setI.exit.i

main_LeafBlock1.i18.i:                            ; preds = %main_NodeBlock.i16.i
  %SwitchLeaf2.i17.i = icmp eq i32 %"723", 2
  br i1 %SwitchLeaf2.i17.i, label %main_bb237, label %main_setI.exit.i

main_bb237:                                       ; preds = %main_LeafBlock1.i18.i
  store i8 %.0.i29.i, i8* @"'I_2", align 1
  br label %main_setI.exit.i

main_setI.exit.i:                                 ; preds = %main_bb237, %main_LeafBlock1.i18.i, %main_bb236, %main_bb235, %main_LeafBlock.i14.i
  %"724" = add i8 %j.1.i, 1
  br label %main_bb232

main_bb238:                                       ; preds = %main_bb232
  %"725" = add i8 %i.1.i, 1
  br label %main_bb223

main_init.exit:                                   ; preds = %main_bb223
  %"726" = call i32 @__VERIFIER_nondet_int()
  br label %main_bb239

main_bb239:                                       ; preds = %main_bb336, %main_bb338, %main_bb340, %main_init.exit
  %"727" = call i32 @__VERIFIER_nondet_int()
  %"728" = trunc i32 %"727" to i8
  %"729" = zext i8 %"728" to i32
  %"730" = icmp slt i32 %"729", 3
  %"731" = zext i1 %"730" to i32
  %"732" = bitcast i32 (...)* @__VERIFIER_assume to i32 (i32, ...)*
  %"733" = call i32 (i32, ...)* %"732"(i32 %"731")
  %"734" = zext i8 %"728" to i32
  %"735" = icmp slt i32 %"734", 3
  %"736" = zext i1 %"735" to i32
  %"737" = bitcast i32 (...)* @__VERIFIER_assume to i32 (i32, ...)*
  %"738" = call i32 (i32, ...)* %"737"(i32 %"736")
  %"739" = zext i8 %"728" to i32
  %"740" = call i8 @__kittel_nondef.1() #2
  %"741" = mul nsw i32 3, %"739"
  %Pivot4.i = icmp slt i32 %"741", 1
  br i1 %Pivot4.i, label %main_LeafBlock.i, label %main_NodeBlock.i

main_LeafBlock.i:                                 ; preds = %main_bb239
  %SwitchLeaf.i = icmp eq i32 %"741", 0
  %"742" = load i8* @"'pc_0", align 1
  %. = select i1 %SwitchLeaf.i, i8 %"742", i8 %"740"
  br label %main_getpc.exit

main_NodeBlock.i:                                 ; preds = %main_bb239
  %Pivot.i = icmp slt i32 %"741", 2
  br i1 %Pivot.i, label %main_bb240, label %main_LeafBlock1.i

main_bb240:                                       ; preds = %main_NodeBlock.i
  %"743" = load i8* @"'pc_1", align 1
  br label %main_getpc.exit

main_LeafBlock1.i:                                ; preds = %main_NodeBlock.i
  %SwitchLeaf2.i = icmp eq i32 %"741", 2
  %"744" = load i8* @"'pc_2", align 1
  %.227 = select i1 %SwitchLeaf2.i, i8 %"744", i8 %"740"
  br label %main_getpc.exit

main_getpc.exit:                                  ; preds = %main_LeafBlock1.i, %main_LeafBlock.i, %main_bb240
  %.0.i = phi i8 [ %"743", %main_bb240 ], [ %., %main_LeafBlock.i ], [ %.227, %main_LeafBlock1.i ]
  %"745" = zext i8 %.0.i to i32
  br label %main_NodeBlock248

main_NodeBlock248:                                ; preds = %main_getpc.exit
  %Pivot249 = icmp slt i32 %"745", 8
  br i1 %Pivot249, label %main_NodeBlock234, label %main_NodeBlock246

main_NodeBlock234:                                ; preds = %main_NodeBlock248
  %Pivot235 = icmp slt i32 %"745", 5
  br i1 %Pivot235, label %main_NodeBlock228, label %main_NodeBlock232

main_NodeBlock228:                                ; preds = %main_NodeBlock234
  %Pivot229 = icmp slt i32 %"745", 3
  br i1 %Pivot229, label %main_LeafBlock, label %main_NodeBlock

main_LeafBlock:                                   ; preds = %main_NodeBlock228
  %SwitchLeaf = icmp eq i32 %"745", 2
  br i1 %SwitchLeaf, label %main_bb241, label %main_NewDefault

main_bb241:                                       ; preds = %main_LeafBlock
  %"746" = zext i8 %"728" to i32
  store i8 3, i8* @"'E_1", align 1
  %"747" = call i32 @__VERIFIER_nondet_int() #2
  %"748" = trunc i32 %"747" to i8
  %"749" = zext i8 %"748" to i32
  %"750" = icmp eq i32 %"749", 3
  %"751" = zext i8 %"748" to i32
  %"752" = icmp eq i32 %"751", 4
  %or.cond.i = or i1 %"750", %"752"
  %"753" = zext i8 %"748" to i32
  %"754" = icmp eq i32 %"753", 7
  %or.cond3.i = or i1 %or.cond.i, %"754"
  %"755" = zext i8 %"748" to i32
  %"756" = icmp eq i32 %"755", 9
  %or.cond5.i = or i1 %or.cond3.i, %"756"
  %"757" = zext i8 %"748" to i32
  %"758" = icmp eq i32 %"757", 11
  %or.cond7.i = or i1 %or.cond5.i, %"758"
  br i1 %or.cond7.i, label %main_bb243, label %main_bb242

main_bb242:                                       ; preds = %main_bb241
  %"759" = zext i8 %"748" to i32
  %"760" = icmp eq i32 %"759", 13
  br label %main_bb243

main_bb243:                                       ; preds = %main_bb242, %main_bb241
  %"761" = phi i1 [ true, %main_bb241 ], [ %"760", %main_bb242 ]
  %"762" = zext i1 %"761" to i32
  %"763" = bitcast i32 (...)* @__VERIFIER_assume to i32 (i32, ...)*
  %"764" = call i32 (i32, ...)* %"763"(i32 %"762") #2
  %"765" = zext i8 %"748" to i32
  %"766" = mul nsw i32 3, %"746"
  %Pivot4.i.i1 = icmp slt i32 %"766", 1
  br i1 %Pivot4.i.i1, label %main_LeafBlock.i.i3, label %main_NodeBlock.i.i5

main_LeafBlock.i.i3:                              ; preds = %main_bb243
  %SwitchLeaf.i.i2 = icmp eq i32 %"766", 0
  br i1 %SwitchLeaf.i.i2, label %main_bb244, label %main__0_2.exit

main_bb244:                                       ; preds = %main_LeafBlock.i.i3
  %"767" = trunc i32 %"765" to i8
  store i8 %"767", i8* @"'pc_0", align 1
  br label %main__0_2.exit

main_NodeBlock.i.i5:                              ; preds = %main_bb243
  %Pivot.i.i4 = icmp slt i32 %"766", 2
  br i1 %Pivot.i.i4, label %main_bb245, label %main_LeafBlock1.i.i7

main_bb245:                                       ; preds = %main_NodeBlock.i.i5
  %"768" = trunc i32 %"765" to i8
  store i8 %"768", i8* @"'pc_1", align 1
  br label %main__0_2.exit

main_LeafBlock1.i.i7:                             ; preds = %main_NodeBlock.i.i5
  %SwitchLeaf2.i.i6 = icmp eq i32 %"766", 2
  br i1 %SwitchLeaf2.i.i6, label %main_bb246, label %main__0_2.exit

main_bb246:                                       ; preds = %main_LeafBlock1.i.i7
  %"769" = trunc i32 %"765" to i8
  store i8 %"769", i8* @"'pc_2", align 1
  br label %main__0_2.exit

main_NodeBlock:                                   ; preds = %main_NodeBlock228
  %Pivot = icmp slt i32 %"745", 4
  br i1 %Pivot, label %main_bb247, label %main_bb259

main_bb247:                                       ; preds = %main_NodeBlock
  %"770" = zext i8 %"728" to i32
  %"771" = call i8 @__kittel_nondef.1() #2
  %"772" = load i8* @"'E_1", align 1
  %"773" = sext i8 %"772" to i32
  %"774" = icmp eq i32 %"773", 2
  br i1 %"774", label %main_bb248, label %main_bb249

main_bb248:                                       ; preds = %main_bb247
  %"775" = call i8 @__kittel_nondef.1() #2
  %"776" = load i8* @"'E_0", align 1
  %"777" = sext i8 %"776" to i32
  %"778" = icmp eq i32 %"777", %"770"
  br label %main_bb249

main_bb249:                                       ; preds = %main_bb248, %main_bb247
  %"779" = phi i1 [ false, %main_bb247 ], [ %"778", %main_bb248 ]
  %"780" = zext i1 %"779" to i32
  %"781" = bitcast i32 (...)* @__VERIFIER_assume to i32 (i32, ...)*
  %"782" = call i32 (i32, ...)* %"781"(i32 %"780") #2
  %"783" = call i8 @__kittel_nondef.1() #2
  %"784" = mul nsw i32 3, %"770"
  %Pivot4.i.i9 = icmp slt i32 %"784", 1
  br i1 %Pivot4.i.i9, label %main_LeafBlock.i.i12, label %main_NodeBlock.i.i14

main_LeafBlock.i.i12:                             ; preds = %main_bb249
  %SwitchLeaf.i.i10 = icmp eq i32 %"784", 0
  %"785" = load i8* @"'I_0", align 1
  %..i11 = select i1 %SwitchLeaf.i.i10, i8 %"785", i8 %"783"
  br label %main_getI.exit.i

main_NodeBlock.i.i14:                             ; preds = %main_bb249
  %Pivot.i.i13 = icmp slt i32 %"784", 2
  br i1 %Pivot.i.i13, label %main_bb250, label %main_LeafBlock1.i.i16

main_bb250:                                       ; preds = %main_NodeBlock.i.i14
  %"786" = load i8* @"'I_1", align 1
  br label %main_getI.exit.i

main_LeafBlock1.i.i16:                            ; preds = %main_NodeBlock.i.i14
  %SwitchLeaf2.i.i15 = icmp eq i32 %"784", 2
  %"787" = load i8* @"'I_2", align 1
  %.11.i = select i1 %SwitchLeaf2.i.i15, i8 %"787", i8 %"783"
  br label %main_getI.exit.i

main_getI.exit.i:                                 ; preds = %main_LeafBlock1.i.i16, %main_bb250, %main_LeafBlock.i.i12
  %.0.i.i17 = phi i8 [ %"786", %main_bb250 ], [ %..i11, %main_LeafBlock.i.i12 ], [ %.11.i, %main_LeafBlock1.i.i16 ]
  %"788" = sext i8 %.0.i.i17 to i32
  %"789" = icmp eq i32 %"788", 1
  br i1 %"789", label %main_bb251, label %main_bb252

main_bb251:                                       ; preds = %main_getI.exit.i
  %"790" = call i8 @__kittel_nondef.1() #2
  %"791" = load i8* @"'E_3", align 1
  %"792" = sext i8 %"791" to i32
  %"793" = icmp eq i32 %"792", 0
  br label %main_bb252

main_bb252:                                       ; preds = %main_bb251, %main_getI.exit.i
  %"794" = phi i1 [ false, %main_getI.exit.i ], [ %"793", %main_bb251 ]
  %"795" = zext i1 %"794" to i32
  %"796" = bitcast i32 (...)* @__VERIFIER_assume to i32 (i32, ...)*
  %"797" = call i32 (i32, ...)* %"796"(i32 %"795") #2
  %"798" = trunc i32 %"770" to i8
  %"799" = zext i8 %"798" to i32
  %"800" = mul nsw i32 3, %"799"
  %Pivot4.i.i.i = icmp slt i32 %"800", 1
  br i1 %Pivot4.i.i.i, label %main_LeafBlock.i.i.i, label %main_NodeBlock.i.i.i

main_LeafBlock.i.i.i:                             ; preds = %main_bb252
  %SwitchLeaf.i.i.i = icmp eq i32 %"800", 0
  br i1 %SwitchLeaf.i.i.i, label %main_bb253, label %main_attr.exit.i

main_bb253:                                       ; preds = %main_LeafBlock.i.i.i
  store i8 3, i8* @"'I_0", align 1
  br label %main_attr.exit.i

main_NodeBlock.i.i.i:                             ; preds = %main_bb252
  %Pivot.i.i.i = icmp slt i32 %"800", 2
  br i1 %Pivot.i.i.i, label %main_bb254, label %main_LeafBlock1.i.i.i

main_bb254:                                       ; preds = %main_NodeBlock.i.i.i
  store i8 3, i8* @"'I_1", align 1
  br label %main_attr.exit.i

main_LeafBlock1.i.i.i:                            ; preds = %main_NodeBlock.i.i.i
  %SwitchLeaf2.i.i.i = icmp eq i32 %"800", 2
  br i1 %SwitchLeaf2.i.i.i, label %main_bb255, label %main_attr.exit.i

main_bb255:                                       ; preds = %main_LeafBlock1.i.i.i
  store i8 3, i8* @"'I_2", align 1
  br label %main_attr.exit.i

main_attr.exit.i:                                 ; preds = %main_bb255, %main_LeafBlock1.i.i.i, %main_bb254, %main_bb253, %main_LeafBlock.i.i.i
  %"801" = mul nsw i32 3, %"770"
  %Pivot4.i3.i = icmp slt i32 %"801", 1
  br i1 %Pivot4.i3.i, label %main_LeafBlock.i5.i19, label %main_NodeBlock.i7.i

main_LeafBlock.i5.i19:                            ; preds = %main_attr.exit.i
  %SwitchLeaf.i4.i18 = icmp eq i32 %"801", 0
  br i1 %SwitchLeaf.i4.i18, label %main_bb256, label %main__0_2.exit

main_bb256:                                       ; preds = %main_LeafBlock.i5.i19
  store i8 2, i8* @"'pc_0", align 1
  br label %main__0_2.exit

main_NodeBlock.i7.i:                              ; preds = %main_attr.exit.i
  %Pivot.i6.i = icmp slt i32 %"801", 2
  br i1 %Pivot.i6.i, label %main_bb257, label %main_LeafBlock1.i9.i21

main_bb257:                                       ; preds = %main_NodeBlock.i7.i
  store i8 2, i8* @"'pc_1", align 1
  br label %main__0_2.exit

main_LeafBlock1.i9.i21:                           ; preds = %main_NodeBlock.i7.i
  %SwitchLeaf2.i8.i20 = icmp eq i32 %"801", 2
  br i1 %SwitchLeaf2.i8.i20, label %main_bb258, label %main__0_2.exit

main_bb258:                                       ; preds = %main_LeafBlock1.i9.i21
  store i8 2, i8* @"'pc_2", align 1
  br label %main__0_2.exit

main_bb259:                                       ; preds = %main_NodeBlock
  %"802" = zext i8 %"728" to i32
  %"803" = call i8 @__kittel_nondef.1() #2
  %"804" = load i8* @"'E_0", align 1
  %"805" = sext i8 %"804" to i32
  %"806" = icmp ne i32 %"805", %"802"
  %"807" = zext i1 %"806" to i32
  %"808" = bitcast i32 (...)* @__VERIFIER_assume to i32 (i32, ...)*
  %"809" = call i32 (i32, ...)* %"808"(i32 %"807") #2
  %"810" = call i8 @__kittel_nondef.1() #2
  %"811" = load i8* @"'E_1", align 1
  %"812" = sext i8 %"811" to i32
  %"813" = icmp eq i32 %"812", 0
  %"814" = zext i1 %"813" to i32
  %"815" = bitcast i32 (...)* @__VERIFIER_assume to i32 (i32, ...)*
  %"816" = call i32 (i32, ...)* %"815"(i32 %"814") #2
  %"817" = call i8 @__kittel_nondef.1() #2
  %"818" = mul nsw i32 3, %"802"
  %Pivot4.i.i23 = icmp slt i32 %"818", 1
  br i1 %Pivot4.i.i23, label %main_LeafBlock.i.i26, label %main_NodeBlock.i.i28

main_LeafBlock.i.i26:                             ; preds = %main_bb259
  %SwitchLeaf.i.i24 = icmp eq i32 %"818", 0
  %"819" = load i8* @"'I_0", align 1
  %..i25 = select i1 %SwitchLeaf.i.i24, i8 %"819", i8 %"817"
  br label %main_getI.exit.i32

main_NodeBlock.i.i28:                             ; preds = %main_bb259
  %Pivot.i.i27 = icmp slt i32 %"818", 2
  br i1 %Pivot.i.i27, label %main_bb260, label %main_LeafBlock1.i.i30

main_bb260:                                       ; preds = %main_NodeBlock.i.i28
  %"820" = load i8* @"'I_1", align 1
  br label %main_getI.exit.i32

main_LeafBlock1.i.i30:                            ; preds = %main_NodeBlock.i.i28
  %SwitchLeaf2.i.i29 = icmp eq i32 %"818", 2
  %"821" = load i8* @"'I_2", align 1
  %.26.i = select i1 %SwitchLeaf2.i.i29, i8 %"821", i8 %"817"
  br label %main_getI.exit.i32

main_getI.exit.i32:                               ; preds = %main_LeafBlock1.i.i30, %main_bb260, %main_LeafBlock.i.i26
  %.0.i.i31 = phi i8 [ %"820", %main_bb260 ], [ %..i25, %main_LeafBlock.i.i26 ], [ %.26.i, %main_LeafBlock1.i.i30 ]
  %"822" = sext i8 %.0.i.i31 to i32
  %"823" = icmp ne i32 %"822", 2
  %"824" = zext i1 %"823" to i32
  %"825" = bitcast i32 (...)* @__VERIFIER_assume to i32 (i32, ...)*
  %"826" = call i32 (i32, ...)* %"825"(i32 %"824") #2
  %"827" = trunc i32 %"802" to i8
  %"828" = call i8 @__kittel_nondef.1() #2
  %"829" = mul nsw i32 3, %"802"
  %Pivot4.i1.i = icmp slt i32 %"829", 1
  br i1 %Pivot4.i1.i, label %main_LeafBlock.i3.i, label %main_NodeBlock.i5.i

main_LeafBlock.i3.i:                              ; preds = %main_getI.exit.i32
  %SwitchLeaf.i2.i = icmp eq i32 %"829", 0
  %"830" = load i8* @"'I_0", align 1
  %.27.i = select i1 %SwitchLeaf.i2.i, i8 %"830", i8 %"828"
  br label %main_getI.exit10.i

main_NodeBlock.i5.i:                              ; preds = %main_getI.exit.i32
  %Pivot.i4.i = icmp slt i32 %"829", 2
  br i1 %Pivot.i4.i, label %main_bb261, label %main_LeafBlock1.i7.i

main_bb261:                                       ; preds = %main_NodeBlock.i5.i
  %"831" = load i8* @"'I_1", align 1
  br label %main_getI.exit10.i

main_LeafBlock1.i7.i:                             ; preds = %main_NodeBlock.i5.i
  %SwitchLeaf2.i6.i = icmp eq i32 %"829", 2
  %"832" = load i8* @"'I_2", align 1
  %.28.i = select i1 %SwitchLeaf2.i6.i, i8 %"832", i8 %"828"
  br label %main_getI.exit10.i

main_getI.exit10.i:                               ; preds = %main_LeafBlock1.i7.i, %main_bb261, %main_LeafBlock.i3.i
  %.0.i9.i = phi i8 [ %"831", %main_bb261 ], [ %.27.i, %main_LeafBlock.i3.i ], [ %.28.i, %main_LeafBlock1.i7.i ]
  store i8 %"827", i8* @"'E_0", align 1
  store i8 %.0.i9.i, i8* @"'E_2", align 1
  store i8 1, i8* @"'E_1", align 1
  %"833" = call i32 @__VERIFIER_nondet_int() #2
  %"834" = trunc i32 %"833" to i8
  %"835" = zext i8 %"834" to i32
  %"836" = icmp eq i32 %"835", 3
  %"837" = zext i8 %"834" to i32
  %"838" = icmp eq i32 %"837", 4
  %or.cond.i33 = or i1 %"836", %"838"
  %"839" = zext i8 %"834" to i32
  %"840" = icmp eq i32 %"839", 7
  %or.cond21.i = or i1 %or.cond.i33, %"840"
  %"841" = zext i8 %"834" to i32
  %"842" = icmp eq i32 %"841", 9
  %or.cond23.i = or i1 %or.cond21.i, %"842"
  %"843" = zext i8 %"834" to i32
  %"844" = icmp eq i32 %"843", 11
  %or.cond25.i = or i1 %or.cond23.i, %"844"
  br i1 %or.cond25.i, label %main_bb263, label %main_bb262

main_bb262:                                       ; preds = %main_getI.exit10.i
  %"845" = zext i8 %"834" to i32
  %"846" = icmp eq i32 %"845", 13
  br label %main_bb263

main_bb263:                                       ; preds = %main_bb262, %main_getI.exit10.i
  %"847" = phi i1 [ true, %main_getI.exit10.i ], [ %"846", %main_bb262 ]
  %"848" = zext i1 %"847" to i32
  %"849" = bitcast i32 (...)* @__VERIFIER_assume to i32 (i32, ...)*
  %"850" = call i32 (i32, ...)* %"849"(i32 %"848") #2
  %"851" = zext i8 %"834" to i32
  %"852" = mul nsw i32 3, %"802"
  %Pivot4.i11.i34 = icmp slt i32 %"852", 1
  br i1 %Pivot4.i11.i34, label %main_LeafBlock.i13.i, label %main_NodeBlock.i15.i

main_LeafBlock.i13.i:                             ; preds = %main_bb263
  %SwitchLeaf.i12.i = icmp eq i32 %"852", 0
  br i1 %SwitchLeaf.i12.i, label %main_bb264, label %main__0_2.exit

main_bb264:                                       ; preds = %main_LeafBlock.i13.i
  %"853" = trunc i32 %"851" to i8
  store i8 %"853", i8* @"'pc_0", align 1
  br label %main__0_2.exit

main_NodeBlock.i15.i:                             ; preds = %main_bb263
  %Pivot.i14.i = icmp slt i32 %"852", 2
  br i1 %Pivot.i14.i, label %main_bb265, label %main_LeafBlock1.i17.i

main_bb265:                                       ; preds = %main_NodeBlock.i15.i
  %"854" = trunc i32 %"851" to i8
  store i8 %"854", i8* @"'pc_1", align 1
  br label %main__0_2.exit

main_LeafBlock1.i17.i:                            ; preds = %main_NodeBlock.i15.i
  %SwitchLeaf2.i16.i = icmp eq i32 %"852", 2
  br i1 %SwitchLeaf2.i16.i, label %main_bb266, label %main__0_2.exit

main_bb266:                                       ; preds = %main_LeafBlock1.i17.i
  %"855" = trunc i32 %"851" to i8
  store i8 %"855", i8* @"'pc_2", align 1
  br label %main__0_2.exit

main_NodeBlock232:                                ; preds = %main_NodeBlock234
  %Pivot233 = icmp slt i32 %"745", 6
  br i1 %Pivot233, label %main_bb267, label %main_NodeBlock230

main_bb267:                                       ; preds = %main_NodeBlock232
  %"856" = zext i8 %"728" to i32
  %"857" = call i8 @__kittel_nondef.1() #2
  %"858" = load i8* @"'E_1", align 1
  %"859" = sext i8 %"858" to i32
  %"860" = icmp eq i32 %"859", 3
  %"861" = zext i1 %"860" to i32
  %"862" = bitcast i32 (...)* @__VERIFIER_assume to i32 (i32, ...)*
  %"863" = call i32 (i32, ...)* %"862"(i32 %"861") #2
  store i8 -1, i8* @"'E_0", align 1
  store i8 -1, i8* @"'E_3", align 1
  store i8 0, i8* @"'E_1", align 1
  %"864" = call i32 @__VERIFIER_nondet_int() #2
  %"865" = trunc i32 %"864" to i8
  %"866" = zext i8 %"865" to i32
  %"867" = icmp eq i32 %"866", 3
  %"868" = zext i8 %"865" to i32
  %"869" = icmp eq i32 %"868", 4
  %or.cond.i36 = or i1 %"867", %"869"
  %"870" = zext i8 %"865" to i32
  %"871" = icmp eq i32 %"870", 7
  %or.cond3.i37 = or i1 %or.cond.i36, %"871"
  %"872" = zext i8 %"865" to i32
  %"873" = icmp eq i32 %"872", 9
  %or.cond5.i38 = or i1 %or.cond3.i37, %"873"
  %"874" = zext i8 %"865" to i32
  %"875" = icmp eq i32 %"874", 11
  %or.cond7.i39 = or i1 %or.cond5.i38, %"875"
  br i1 %or.cond7.i39, label %main_bb269, label %main_bb268

main_bb268:                                       ; preds = %main_bb267
  %"876" = zext i8 %"865" to i32
  %"877" = icmp eq i32 %"876", 13
  br label %main_bb269

main_bb269:                                       ; preds = %main_bb268, %main_bb267
  %"878" = phi i1 [ true, %main_bb267 ], [ %"877", %main_bb268 ]
  %"879" = zext i1 %"878" to i32
  %"880" = bitcast i32 (...)* @__VERIFIER_assume to i32 (i32, ...)*
  %"881" = call i32 (i32, ...)* %"880"(i32 %"879") #2
  %"882" = zext i8 %"865" to i32
  %"883" = mul nsw i32 3, %"856"
  %Pivot4.i.i40 = icmp slt i32 %"883", 1
  br i1 %Pivot4.i.i40, label %main_LeafBlock.i.i42, label %main_NodeBlock.i.i44

main_LeafBlock.i.i42:                             ; preds = %main_bb269
  %SwitchLeaf.i.i41 = icmp eq i32 %"883", 0
  br i1 %SwitchLeaf.i.i41, label %main_bb270, label %main__0_2.exit

main_bb270:                                       ; preds = %main_LeafBlock.i.i42
  %"884" = trunc i32 %"882" to i8
  store i8 %"884", i8* @"'pc_0", align 1
  br label %main__0_2.exit

main_NodeBlock.i.i44:                             ; preds = %main_bb269
  %Pivot.i.i43 = icmp slt i32 %"883", 2
  br i1 %Pivot.i.i43, label %main_bb271, label %main_LeafBlock1.i.i46

main_bb271:                                       ; preds = %main_NodeBlock.i.i44
  %"885" = trunc i32 %"882" to i8
  store i8 %"885", i8* @"'pc_1", align 1
  br label %main__0_2.exit

main_LeafBlock1.i.i46:                            ; preds = %main_NodeBlock.i.i44
  %SwitchLeaf2.i.i45 = icmp eq i32 %"883", 2
  br i1 %SwitchLeaf2.i.i45, label %main_bb272, label %main__0_2.exit

main_bb272:                                       ; preds = %main_LeafBlock1.i.i46
  %"886" = trunc i32 %"882" to i8
  store i8 %"886", i8* @"'pc_2", align 1
  br label %main__0_2.exit

main_NodeBlock230:                                ; preds = %main_NodeBlock232
  %Pivot231 = icmp slt i32 %"745", 7
  br i1 %Pivot231, label %main_bb273, label %main_bb280

main_bb273:                                       ; preds = %main_NodeBlock230
  %"887" = zext i8 %"728" to i32
  %"888" = trunc i32 %"887" to i8
  %"889" = zext i8 %"888" to i32
  %"890" = mul nsw i32 3, %"889"
  %Pivot4.i.i.i48 = icmp slt i32 %"890", 1
  br i1 %Pivot4.i.i.i48, label %main_LeafBlock.i.i.i50, label %main_NodeBlock.i.i.i52

main_LeafBlock.i.i.i50:                           ; preds = %main_bb273
  %SwitchLeaf.i.i.i49 = icmp eq i32 %"890", 0
  br i1 %SwitchLeaf.i.i.i49, label %main_bb274, label %main_attr.exit.i56

main_bb274:                                       ; preds = %main_LeafBlock.i.i.i50
  store i8 2, i8* @"'I_0", align 1
  br label %main_attr.exit.i56

main_NodeBlock.i.i.i52:                           ; preds = %main_bb273
  %Pivot.i.i.i51 = icmp slt i32 %"890", 2
  br i1 %Pivot.i.i.i51, label %main_bb275, label %main_LeafBlock1.i.i.i54

main_bb275:                                       ; preds = %main_NodeBlock.i.i.i52
  store i8 2, i8* @"'I_1", align 1
  br label %main_attr.exit.i56

main_LeafBlock1.i.i.i54:                          ; preds = %main_NodeBlock.i.i.i52
  %SwitchLeaf2.i.i.i53 = icmp eq i32 %"890", 2
  br i1 %SwitchLeaf2.i.i.i53, label %main_bb276, label %main_attr.exit.i56

main_bb276:                                       ; preds = %main_LeafBlock1.i.i.i54
  store i8 2, i8* @"'I_2", align 1
  br label %main_attr.exit.i56

main_attr.exit.i56:                               ; preds = %main_bb276, %main_LeafBlock1.i.i.i54, %main_bb275, %main_bb274, %main_LeafBlock.i.i.i50
  %"891" = mul nsw i32 3, %"887"
  %Pivot4.i.i55 = icmp slt i32 %"891", 1
  br i1 %Pivot4.i.i55, label %main_LeafBlock.i.i58, label %main_NodeBlock.i.i60

main_LeafBlock.i.i58:                             ; preds = %main_attr.exit.i56
  %SwitchLeaf.i.i57 = icmp eq i32 %"891", 0
  br i1 %SwitchLeaf.i.i57, label %main_bb277, label %main__0_2.exit

main_bb277:                                       ; preds = %main_LeafBlock.i.i58
  store i8 5, i8* @"'pc_0", align 1
  br label %main__0_2.exit

main_NodeBlock.i.i60:                             ; preds = %main_attr.exit.i56
  %Pivot.i.i59 = icmp slt i32 %"891", 2
  br i1 %Pivot.i.i59, label %main_bb278, label %main_LeafBlock1.i.i62

main_bb278:                                       ; preds = %main_NodeBlock.i.i60
  store i8 5, i8* @"'pc_1", align 1
  br label %main__0_2.exit

main_LeafBlock1.i.i62:                            ; preds = %main_NodeBlock.i.i60
  %SwitchLeaf2.i.i61 = icmp eq i32 %"891", 2
  br i1 %SwitchLeaf2.i.i61, label %main_bb279, label %main__0_2.exit

main_bb279:                                       ; preds = %main_LeafBlock1.i.i62
  store i8 5, i8* @"'pc_2", align 1
  br label %main__0_2.exit

main_bb280:                                       ; preds = %main_NodeBlock230
  %"892" = zext i8 %"728" to i32
  %"893" = call i8 @__kittel_nondef.1() #2
  %"894" = load i8* @"'E_0", align 1
  %"895" = sext i8 %"894" to i32
  %"896" = icmp ne i32 %"895", %"892"
  %"897" = zext i1 %"896" to i32
  %"898" = bitcast i32 (...)* @__VERIFIER_assume to i32 (i32, ...)*
  %"899" = call i32 (i32, ...)* %"898"(i32 %"897") #2
  %"900" = call i8 @__kittel_nondef.1() #2
  %"901" = load i8* @"'E_1", align 1
  %"902" = sext i8 %"901" to i32
  %"903" = icmp eq i32 %"902", 1
  %"904" = zext i1 %"903" to i32
  %"905" = bitcast i32 (...)* @__VERIFIER_assume to i32 (i32, ...)*
  %"906" = call i32 (i32, ...)* %"905"(i32 %"904") #2
  %"907" = call i8 @__kittel_nondef.1() #2
  %"908" = load i8* @"'E_2", align 1
  %"909" = sext i8 %"908" to i32
  %"910" = icmp eq i32 %"909", 1
  br i1 %"910", label %main_bb281, label %main_bb283

main_bb281:                                       ; preds = %main_bb280
  %"911" = call i8 @__kittel_nondef.1() #2
  %"912" = mul nsw i32 3, %"892"
  %Pivot4.i.i64 = icmp slt i32 %"912", 1
  br i1 %Pivot4.i.i64, label %main_LeafBlock.i.i67, label %main_NodeBlock.i.i69

main_LeafBlock.i.i67:                             ; preds = %main_bb281
  %SwitchLeaf.i.i65 = icmp eq i32 %"912", 0
  %"913" = load i8* @"'I_0", align 1
  %..i66 = select i1 %SwitchLeaf.i.i65, i8 %"913", i8 %"911"
  br label %main_getI.exit.i73

main_NodeBlock.i.i69:                             ; preds = %main_bb281
  %Pivot.i.i68 = icmp slt i32 %"912", 2
  br i1 %Pivot.i.i68, label %main_bb282, label %main_LeafBlock1.i.i71

main_bb282:                                       ; preds = %main_NodeBlock.i.i69
  %"914" = load i8* @"'I_1", align 1
  br label %main_getI.exit.i73

main_LeafBlock1.i.i71:                            ; preds = %main_NodeBlock.i.i69
  %SwitchLeaf2.i.i70 = icmp eq i32 %"912", 2
  %"915" = load i8* @"'I_2", align 1
  %.19.i = select i1 %SwitchLeaf2.i.i70, i8 %"915", i8 %"911"
  br label %main_getI.exit.i73

main_getI.exit.i73:                               ; preds = %main_LeafBlock1.i.i71, %main_bb282, %main_LeafBlock.i.i67
  %.0.i.i72 = phi i8 [ %"914", %main_bb282 ], [ %..i66, %main_LeafBlock.i.i67 ], [ %.19.i, %main_LeafBlock1.i.i71 ]
  %"916" = sext i8 %.0.i.i72 to i32
  %"917" = icmp eq i32 %"916", 0
  br label %main_bb283

main_bb283:                                       ; preds = %main_getI.exit.i73, %main_bb280
  %"918" = phi i1 [ false, %main_bb280 ], [ %"917", %main_getI.exit.i73 ]
  %"919" = zext i1 %"918" to i32
  %"920" = bitcast i32 (...)* @__VERIFIER_assume to i32 (i32, ...)*
  %"921" = call i32 (i32, ...)* %"920"(i32 %"919") #2
  %"922" = call i8 @__kittel_nondef.1() #2
  %"923" = mul nsw i32 3, %"892"
  %Pivot4.i1.i74 = icmp slt i32 %"923", 1
  br i1 %Pivot4.i1.i74, label %main_LeafBlock.i3.i76, label %main_NodeBlock.i5.i78

main_LeafBlock.i3.i76:                            ; preds = %main_bb283
  %SwitchLeaf.i2.i75 = icmp eq i32 %"923", 0
  %"924" = load i8* @"'I_0", align 1
  %.20.i = select i1 %SwitchLeaf.i2.i75, i8 %"924", i8 %"922"
  br label %main_getI.exit10.i83

main_NodeBlock.i5.i78:                            ; preds = %main_bb283
  %Pivot.i4.i77 = icmp slt i32 %"923", 2
  br i1 %Pivot.i4.i77, label %main_bb284, label %main_LeafBlock1.i7.i80

main_bb284:                                       ; preds = %main_NodeBlock.i5.i78
  %"925" = load i8* @"'I_1", align 1
  br label %main_getI.exit10.i83

main_LeafBlock1.i7.i80:                           ; preds = %main_NodeBlock.i5.i78
  %SwitchLeaf2.i6.i79 = icmp eq i32 %"923", 2
  %"926" = load i8* @"'I_2", align 1
  %.21.i = select i1 %SwitchLeaf2.i6.i79, i8 %"926", i8 %"922"
  br label %main_getI.exit10.i83

main_getI.exit10.i83:                             ; preds = %main_LeafBlock1.i7.i80, %main_bb284, %main_LeafBlock.i3.i76
  %.0.i9.i81 = phi i8 [ %"925", %main_bb284 ], [ %.20.i, %main_LeafBlock.i3.i76 ], [ %.21.i, %main_LeafBlock1.i7.i80 ]
  store i8 2, i8* @"'E_1", align 1
  store i8 %.0.i9.i81, i8* @"'E_3", align 1
  %"927" = mul nsw i32 3, %"892"
  %Pivot4.i11.i82 = icmp slt i32 %"927", 1
  br i1 %Pivot4.i11.i82, label %main_LeafBlock.i13.i85, label %main_NodeBlock.i15.i87

main_LeafBlock.i13.i85:                           ; preds = %main_getI.exit10.i83
  %SwitchLeaf.i12.i84 = icmp eq i32 %"927", 0
  br i1 %SwitchLeaf.i12.i84, label %main_bb285, label %main__0_2.exit

main_bb285:                                       ; preds = %main_LeafBlock.i13.i85
  store i8 6, i8* @"'pc_0", align 1
  br label %main__0_2.exit

main_NodeBlock.i15.i87:                           ; preds = %main_getI.exit10.i83
  %Pivot.i14.i86 = icmp slt i32 %"927", 2
  br i1 %Pivot.i14.i86, label %main_bb286, label %main_LeafBlock1.i17.i89

main_bb286:                                       ; preds = %main_NodeBlock.i15.i87
  store i8 6, i8* @"'pc_1", align 1
  br label %main__0_2.exit

main_LeafBlock1.i17.i89:                          ; preds = %main_NodeBlock.i15.i87
  %SwitchLeaf2.i16.i88 = icmp eq i32 %"927", 2
  br i1 %SwitchLeaf2.i16.i88, label %main_bb287, label %main__0_2.exit

main_bb287:                                       ; preds = %main_LeafBlock1.i17.i89
  store i8 6, i8* @"'pc_2", align 1
  br label %main__0_2.exit

main_NodeBlock246:                                ; preds = %main_NodeBlock248
  %Pivot247 = icmp slt i32 %"745", 11
  br i1 %Pivot247, label %main_NodeBlock238, label %main_NodeBlock244

main_NodeBlock238:                                ; preds = %main_NodeBlock246
  %Pivot239 = icmp slt i32 %"745", 9
  br i1 %Pivot239, label %main_bb288, label %main_NodeBlock236

main_bb288:                                       ; preds = %main_NodeBlock238
  %"928" = zext i8 %"728" to i32
  store i8 -1, i8* @"'E_0", align 1
  store i8 0, i8* @"'E_1", align 1
  %"929" = call i32 @__VERIFIER_nondet_int() #2
  %"930" = trunc i32 %"929" to i8
  %"931" = zext i8 %"930" to i32
  %"932" = icmp eq i32 %"931", 3
  %"933" = zext i8 %"930" to i32
  %"934" = icmp eq i32 %"933", 4
  %or.cond.i91 = or i1 %"932", %"934"
  %"935" = zext i8 %"930" to i32
  %"936" = icmp eq i32 %"935", 7
  %or.cond3.i92 = or i1 %or.cond.i91, %"936"
  %"937" = zext i8 %"930" to i32
  %"938" = icmp eq i32 %"937", 9
  %or.cond5.i93 = or i1 %or.cond3.i92, %"938"
  %"939" = zext i8 %"930" to i32
  %"940" = icmp eq i32 %"939", 11
  %or.cond7.i94 = or i1 %or.cond5.i93, %"940"
  br i1 %or.cond7.i94, label %main_bb290, label %main_bb289

main_bb289:                                       ; preds = %main_bb288
  %"941" = zext i8 %"930" to i32
  %"942" = icmp eq i32 %"941", 13
  br label %main_bb290

main_bb290:                                       ; preds = %main_bb289, %main_bb288
  %"943" = phi i1 [ true, %main_bb288 ], [ %"942", %main_bb289 ]
  %"944" = zext i1 %"943" to i32
  %"945" = bitcast i32 (...)* @__VERIFIER_assume to i32 (i32, ...)*
  %"946" = call i32 (i32, ...)* %"945"(i32 %"944") #2
  %"947" = zext i8 %"930" to i32
  %"948" = mul nsw i32 3, %"928"
  %Pivot4.i.i95 = icmp slt i32 %"948", 1
  br i1 %Pivot4.i.i95, label %main_LeafBlock.i.i97, label %main_NodeBlock.i.i99

main_LeafBlock.i.i97:                             ; preds = %main_bb290
  %SwitchLeaf.i.i96 = icmp eq i32 %"948", 0
  br i1 %SwitchLeaf.i.i96, label %main_bb291, label %main__0_2.exit

main_bb291:                                       ; preds = %main_LeafBlock.i.i97
  %"949" = trunc i32 %"947" to i8
  store i8 %"949", i8* @"'pc_0", align 1
  br label %main__0_2.exit

main_NodeBlock.i.i99:                             ; preds = %main_bb290
  %Pivot.i.i98 = icmp slt i32 %"948", 2
  br i1 %Pivot.i.i98, label %main_bb292, label %main_LeafBlock1.i.i101

main_bb292:                                       ; preds = %main_NodeBlock.i.i99
  %"950" = trunc i32 %"947" to i8
  store i8 %"950", i8* @"'pc_1", align 1
  br label %main__0_2.exit

main_LeafBlock1.i.i101:                           ; preds = %main_NodeBlock.i.i99
  %SwitchLeaf2.i.i100 = icmp eq i32 %"948", 2
  br i1 %SwitchLeaf2.i.i100, label %main_bb293, label %main__0_2.exit

main_bb293:                                       ; preds = %main_LeafBlock1.i.i101
  %"951" = trunc i32 %"947" to i8
  store i8 %"951", i8* @"'pc_2", align 1
  br label %main__0_2.exit

main_NodeBlock236:                                ; preds = %main_NodeBlock238
  %Pivot237 = icmp slt i32 %"745", 10
  br i1 %Pivot237, label %main_bb294, label %main_bb304

main_bb294:                                       ; preds = %main_NodeBlock236
  %"952" = zext i8 %"728" to i32
  %"953" = call i8 @__kittel_nondef.1() #2
  %"954" = load i8* @"'E_0", align 1
  %"955" = sext i8 %"954" to i32
  %"956" = icmp ne i32 %"955", %"952"
  %"957" = zext i1 %"956" to i32
  %"958" = bitcast i32 (...)* @__VERIFIER_assume to i32 (i32, ...)*
  %"959" = call i32 (i32, ...)* %"958"(i32 %"957") #2
  %"960" = call i8 @__kittel_nondef.1() #2
  %"961" = load i8* @"'E_1", align 1
  %"962" = sext i8 %"961" to i32
  %"963" = icmp eq i32 %"962", 1
  %"964" = zext i1 %"963" to i32
  %"965" = bitcast i32 (...)* @__VERIFIER_assume to i32 (i32, ...)*
  %"966" = call i32 (i32, ...)* %"965"(i32 %"964") #2
  %"967" = call i8 @__kittel_nondef.1() #2
  %"968" = load i8* @"'E_2", align 1
  %"969" = sext i8 %"968" to i32
  %"970" = icmp eq i32 %"969", 1
  br i1 %"970", label %main_bb295, label %main_bb297

main_bb295:                                       ; preds = %main_bb294
  %"971" = call i8 @__kittel_nondef.1() #2
  %"972" = mul nsw i32 3, %"952"
  %Pivot4.i.i103 = icmp slt i32 %"972", 1
  br i1 %Pivot4.i.i103, label %main_LeafBlock.i.i106, label %main_NodeBlock.i.i108

main_LeafBlock.i.i106:                            ; preds = %main_bb295
  %SwitchLeaf.i.i104 = icmp eq i32 %"972", 0
  %"973" = load i8* @"'I_0", align 1
  %..i105 = select i1 %SwitchLeaf.i.i104, i8 %"973", i8 %"971"
  br label %main_getI.exit.i112

main_NodeBlock.i.i108:                            ; preds = %main_bb295
  %Pivot.i.i107 = icmp slt i32 %"972", 2
  br i1 %Pivot.i.i107, label %main_bb296, label %main_LeafBlock1.i.i110

main_bb296:                                       ; preds = %main_NodeBlock.i.i108
  %"974" = load i8* @"'I_1", align 1
  br label %main_getI.exit.i112

main_LeafBlock1.i.i110:                           ; preds = %main_NodeBlock.i.i108
  %SwitchLeaf2.i.i109 = icmp eq i32 %"972", 2
  %"975" = load i8* @"'I_2", align 1
  %.9.i = select i1 %SwitchLeaf2.i.i109, i8 %"975", i8 %"971"
  br label %main_getI.exit.i112

main_getI.exit.i112:                              ; preds = %main_LeafBlock1.i.i110, %main_bb296, %main_LeafBlock.i.i106
  %.0.i.i111 = phi i8 [ %"974", %main_bb296 ], [ %..i105, %main_LeafBlock.i.i106 ], [ %.9.i, %main_LeafBlock1.i.i110 ]
  %"976" = sext i8 %.0.i.i111 to i32
  %"977" = icmp eq i32 %"976", 2
  br label %main_bb297

main_bb297:                                       ; preds = %main_getI.exit.i112, %main_bb294
  %"978" = phi i1 [ false, %main_bb294 ], [ %"977", %main_getI.exit.i112 ]
  %"979" = zext i1 %"978" to i32
  %"980" = bitcast i32 (...)* @__VERIFIER_assume to i32 (i32, ...)*
  %"981" = call i32 (i32, ...)* %"980"(i32 %"979") #2
  %"982" = trunc i32 %"952" to i8
  %"983" = zext i8 %"982" to i32
  %"984" = mul nsw i32 3, %"983"
  %Pivot4.i.i.i113 = icmp slt i32 %"984", 1
  br i1 %Pivot4.i.i.i113, label %main_LeafBlock.i.i.i115, label %main_NodeBlock.i.i.i117

main_LeafBlock.i.i.i115:                          ; preds = %main_bb297
  %SwitchLeaf.i.i.i114 = icmp eq i32 %"984", 0
  br i1 %SwitchLeaf.i.i.i114, label %main_bb298, label %main_attr.exit.i121

main_bb298:                                       ; preds = %main_LeafBlock.i.i.i115
  store i8 3, i8* @"'I_0", align 1
  br label %main_attr.exit.i121

main_NodeBlock.i.i.i117:                          ; preds = %main_bb297
  %Pivot.i.i.i116 = icmp slt i32 %"984", 2
  br i1 %Pivot.i.i.i116, label %main_bb299, label %main_LeafBlock1.i.i.i119

main_bb299:                                       ; preds = %main_NodeBlock.i.i.i117
  store i8 3, i8* @"'I_1", align 1
  br label %main_attr.exit.i121

main_LeafBlock1.i.i.i119:                         ; preds = %main_NodeBlock.i.i.i117
  %SwitchLeaf2.i.i.i118 = icmp eq i32 %"984", 2
  br i1 %SwitchLeaf2.i.i.i118, label %main_bb300, label %main_attr.exit.i121

main_bb300:                                       ; preds = %main_LeafBlock1.i.i.i119
  store i8 3, i8* @"'I_2", align 1
  br label %main_attr.exit.i121

main_attr.exit.i121:                              ; preds = %main_bb300, %main_LeafBlock1.i.i.i119, %main_bb299, %main_bb298, %main_LeafBlock.i.i.i115
  %"985" = mul nsw i32 3, %"952"
  %Pivot4.i1.i120 = icmp slt i32 %"985", 1
  br i1 %Pivot4.i1.i120, label %main_LeafBlock.i3.i123, label %main_NodeBlock.i5.i125

main_LeafBlock.i3.i123:                           ; preds = %main_attr.exit.i121
  %SwitchLeaf.i2.i122 = icmp eq i32 %"985", 0
  br i1 %SwitchLeaf.i2.i122, label %main_bb301, label %main__0_2.exit

main_bb301:                                       ; preds = %main_LeafBlock.i3.i123
  store i8 8, i8* @"'pc_0", align 1
  br label %main__0_2.exit

main_NodeBlock.i5.i125:                           ; preds = %main_attr.exit.i121
  %Pivot.i4.i124 = icmp slt i32 %"985", 2
  br i1 %Pivot.i4.i124, label %main_bb302, label %main_LeafBlock1.i7.i127

main_bb302:                                       ; preds = %main_NodeBlock.i5.i125
  store i8 8, i8* @"'pc_1", align 1
  br label %main__0_2.exit

main_LeafBlock1.i7.i127:                          ; preds = %main_NodeBlock.i5.i125
  %SwitchLeaf2.i6.i126 = icmp eq i32 %"985", 2
  br i1 %SwitchLeaf2.i6.i126, label %main_bb303, label %main__0_2.exit

main_bb303:                                       ; preds = %main_LeafBlock1.i7.i127
  store i8 8, i8* @"'pc_2", align 1
  br label %main__0_2.exit

main_bb304:                                       ; preds = %main_NodeBlock236
  %"986" = zext i8 %"728" to i32
  store i8 -1, i8* @"'E_0", align 1
  store i8 0, i8* @"'E_1", align 1
  %"987" = call i32 @__VERIFIER_nondet_int() #2
  %"988" = trunc i32 %"987" to i8
  %"989" = zext i8 %"988" to i32
  %"990" = icmp eq i32 %"989", 3
  %"991" = zext i8 %"988" to i32
  %"992" = icmp eq i32 %"991", 4
  %or.cond.i129 = or i1 %"990", %"992"
  %"993" = zext i8 %"988" to i32
  %"994" = icmp eq i32 %"993", 7
  %or.cond3.i130 = or i1 %or.cond.i129, %"994"
  %"995" = zext i8 %"988" to i32
  %"996" = icmp eq i32 %"995", 9
  %or.cond5.i131 = or i1 %or.cond3.i130, %"996"
  %"997" = zext i8 %"988" to i32
  %"998" = icmp eq i32 %"997", 11
  %or.cond7.i132 = or i1 %or.cond5.i131, %"998"
  br i1 %or.cond7.i132, label %main_bb306, label %main_bb305

main_bb305:                                       ; preds = %main_bb304
  %"999" = zext i8 %"988" to i32
  %"1000" = icmp eq i32 %"999", 13
  br label %main_bb306

main_bb306:                                       ; preds = %main_bb305, %main_bb304
  %"1001" = phi i1 [ true, %main_bb304 ], [ %"1000", %main_bb305 ]
  %"1002" = zext i1 %"1001" to i32
  %"1003" = bitcast i32 (...)* @__VERIFIER_assume to i32 (i32, ...)*
  %"1004" = call i32 (i32, ...)* %"1003"(i32 %"1002") #2
  %"1005" = zext i8 %"988" to i32
  %"1006" = mul nsw i32 3, %"986"
  %Pivot4.i.i133 = icmp slt i32 %"1006", 1
  br i1 %Pivot4.i.i133, label %main_LeafBlock.i.i135, label %main_NodeBlock.i.i137

main_LeafBlock.i.i135:                            ; preds = %main_bb306
  %SwitchLeaf.i.i134 = icmp eq i32 %"1006", 0
  br i1 %SwitchLeaf.i.i134, label %main_bb307, label %main__0_2.exit

main_bb307:                                       ; preds = %main_LeafBlock.i.i135
  %"1007" = trunc i32 %"1005" to i8
  store i8 %"1007", i8* @"'pc_0", align 1
  br label %main__0_2.exit

main_NodeBlock.i.i137:                            ; preds = %main_bb306
  %Pivot.i.i136 = icmp slt i32 %"1006", 2
  br i1 %Pivot.i.i136, label %main_bb308, label %main_LeafBlock1.i.i139

main_bb308:                                       ; preds = %main_NodeBlock.i.i137
  %"1008" = trunc i32 %"1005" to i8
  store i8 %"1008", i8* @"'pc_1", align 1
  br label %main__0_2.exit

main_LeafBlock1.i.i139:                           ; preds = %main_NodeBlock.i.i137
  %SwitchLeaf2.i.i138 = icmp eq i32 %"1006", 2
  br i1 %SwitchLeaf2.i.i138, label %main_bb309, label %main__0_2.exit

main_bb309:                                       ; preds = %main_LeafBlock1.i.i139
  %"1009" = trunc i32 %"1005" to i8
  store i8 %"1009", i8* @"'pc_2", align 1
  br label %main__0_2.exit

main_NodeBlock244:                                ; preds = %main_NodeBlock246
  %Pivot245 = icmp slt i32 %"745", 12
  br i1 %Pivot245, label %main_bb310, label %main_NodeBlock242

main_bb310:                                       ; preds = %main_NodeBlock244
  %"1010" = zext i8 %"728" to i32
  %"1011" = call i8 @__kittel_nondef.1() #2
  %"1012" = load i8* @"'E_0", align 1
  %"1013" = sext i8 %"1012" to i32
  %"1014" = icmp ne i32 %"1013", %"1010"
  %"1015" = zext i1 %"1014" to i32
  %"1016" = bitcast i32 (...)* @__VERIFIER_assume to i32 (i32, ...)*
  %"1017" = call i32 (i32, ...)* %"1016"(i32 %"1015") #2
  %"1018" = call i8 @__kittel_nondef.1() #2
  %"1019" = load i8* @"'E_1", align 1
  %"1020" = sext i8 %"1019" to i32
  %"1021" = icmp eq i32 %"1020", 1
  %"1022" = zext i1 %"1021" to i32
  %"1023" = bitcast i32 (...)* @__VERIFIER_assume to i32 (i32, ...)*
  %"1024" = call i32 (i32, ...)* %"1023"(i32 %"1022") #2
  %"1025" = call i8 @__kittel_nondef.1() #2
  %"1026" = load i8* @"'E_2", align 1
  %"1027" = sext i8 %"1026" to i32
  %"1028" = icmp eq i32 %"1027", 0
  br i1 %"1028", label %main_bb311, label %main_bb313

main_bb311:                                       ; preds = %main_bb310
  %"1029" = call i8 @__kittel_nondef.1() #2
  %"1030" = mul nsw i32 3, %"1010"
  %Pivot4.i.i141 = icmp slt i32 %"1030", 1
  br i1 %Pivot4.i.i141, label %main_LeafBlock.i.i144, label %main_NodeBlock.i.i146

main_LeafBlock.i.i144:                            ; preds = %main_bb311
  %SwitchLeaf.i.i142 = icmp eq i32 %"1030", 0
  %"1031" = load i8* @"'I_0", align 1
  %..i143 = select i1 %SwitchLeaf.i.i142, i8 %"1031", i8 %"1029"
  br label %main_getI.exit.i151

main_NodeBlock.i.i146:                            ; preds = %main_bb311
  %Pivot.i.i145 = icmp slt i32 %"1030", 2
  br i1 %Pivot.i.i145, label %main_bb312, label %main_LeafBlock1.i.i149

main_bb312:                                       ; preds = %main_NodeBlock.i.i146
  %"1032" = load i8* @"'I_1", align 1
  br label %main_getI.exit.i151

main_LeafBlock1.i.i149:                           ; preds = %main_NodeBlock.i.i146
  %SwitchLeaf2.i.i147 = icmp eq i32 %"1030", 2
  %"1033" = load i8* @"'I_2", align 1
  %.9.i148 = select i1 %SwitchLeaf2.i.i147, i8 %"1033", i8 %"1029"
  br label %main_getI.exit.i151

main_getI.exit.i151:                              ; preds = %main_LeafBlock1.i.i149, %main_bb312, %main_LeafBlock.i.i144
  %.0.i.i150 = phi i8 [ %"1032", %main_bb312 ], [ %..i143, %main_LeafBlock.i.i144 ], [ %.9.i148, %main_LeafBlock1.i.i149 ]
  %"1034" = sext i8 %.0.i.i150 to i32
  %"1035" = icmp eq i32 %"1034", 3
  br label %main_bb313

main_bb313:                                       ; preds = %main_getI.exit.i151, %main_bb310
  %"1036" = phi i1 [ false, %main_bb310 ], [ %"1035", %main_getI.exit.i151 ]
  %"1037" = zext i1 %"1036" to i32
  %"1038" = bitcast i32 (...)* @__VERIFIER_assume to i32 (i32, ...)*
  %"1039" = call i32 (i32, ...)* %"1038"(i32 %"1037") #2
  %"1040" = trunc i32 %"1010" to i8
  %"1041" = zext i8 %"1040" to i32
  %"1042" = mul nsw i32 3, %"1041"
  %Pivot4.i.i.i152 = icmp slt i32 %"1042", 1
  br i1 %Pivot4.i.i.i152, label %main_LeafBlock.i.i.i154, label %main_NodeBlock.i.i.i156

main_LeafBlock.i.i.i154:                          ; preds = %main_bb313
  %SwitchLeaf.i.i.i153 = icmp eq i32 %"1042", 0
  br i1 %SwitchLeaf.i.i.i153, label %main_bb314, label %main_attr.exit.i160

main_bb314:                                       ; preds = %main_LeafBlock.i.i.i154
  store i8 2, i8* @"'I_0", align 1
  br label %main_attr.exit.i160

main_NodeBlock.i.i.i156:                          ; preds = %main_bb313
  %Pivot.i.i.i155 = icmp slt i32 %"1042", 2
  br i1 %Pivot.i.i.i155, label %main_bb315, label %main_LeafBlock1.i.i.i158

main_bb315:                                       ; preds = %main_NodeBlock.i.i.i156
  store i8 2, i8* @"'I_1", align 1
  br label %main_attr.exit.i160

main_LeafBlock1.i.i.i158:                         ; preds = %main_NodeBlock.i.i.i156
  %SwitchLeaf2.i.i.i157 = icmp eq i32 %"1042", 2
  br i1 %SwitchLeaf2.i.i.i157, label %main_bb316, label %main_attr.exit.i160

main_bb316:                                       ; preds = %main_LeafBlock1.i.i.i158
  store i8 2, i8* @"'I_2", align 1
  br label %main_attr.exit.i160

main_attr.exit.i160:                              ; preds = %main_bb316, %main_LeafBlock1.i.i.i158, %main_bb315, %main_bb314, %main_LeafBlock.i.i.i154
  %"1043" = mul nsw i32 3, %"1010"
  %Pivot4.i1.i159 = icmp slt i32 %"1043", 1
  br i1 %Pivot4.i1.i159, label %main_LeafBlock.i3.i162, label %main_NodeBlock.i5.i164

main_LeafBlock.i3.i162:                           ; preds = %main_attr.exit.i160
  %SwitchLeaf.i2.i161 = icmp eq i32 %"1043", 0
  br i1 %SwitchLeaf.i2.i161, label %main_bb317, label %main__0_2.exit

main_bb317:                                       ; preds = %main_LeafBlock.i3.i162
  store i8 10, i8* @"'pc_0", align 1
  br label %main__0_2.exit

main_NodeBlock.i5.i164:                           ; preds = %main_attr.exit.i160
  %Pivot.i4.i163 = icmp slt i32 %"1043", 2
  br i1 %Pivot.i4.i163, label %main_bb318, label %main_LeafBlock1.i7.i166

main_bb318:                                       ; preds = %main_NodeBlock.i5.i164
  store i8 10, i8* @"'pc_1", align 1
  br label %main__0_2.exit

main_LeafBlock1.i7.i166:                          ; preds = %main_NodeBlock.i5.i164
  %SwitchLeaf2.i6.i165 = icmp eq i32 %"1043", 2
  br i1 %SwitchLeaf2.i6.i165, label %main_bb319, label %main__0_2.exit

main_bb319:                                       ; preds = %main_LeafBlock1.i7.i166
  store i8 10, i8* @"'pc_2", align 1
  br label %main__0_2.exit

main_NodeBlock242:                                ; preds = %main_NodeBlock244
  %Pivot243 = icmp slt i32 %"745", 13
  br i1 %Pivot243, label %main_bb320, label %main_LeafBlock240

main_bb320:                                       ; preds = %main_NodeBlock242
  %"1044" = zext i8 %"728" to i32
  store i8 -1, i8* @"'E_0", align 1
  store i8 0, i8* @"'E_1", align 1
  %"1045" = call i32 @__VERIFIER_nondet_int() #2
  %"1046" = trunc i32 %"1045" to i8
  %"1047" = zext i8 %"1046" to i32
  %"1048" = icmp eq i32 %"1047", 3
  %"1049" = zext i8 %"1046" to i32
  %"1050" = icmp eq i32 %"1049", 4
  %or.cond.i168 = or i1 %"1048", %"1050"
  %"1051" = zext i8 %"1046" to i32
  %"1052" = icmp eq i32 %"1051", 7
  %or.cond3.i169 = or i1 %or.cond.i168, %"1052"
  %"1053" = zext i8 %"1046" to i32
  %"1054" = icmp eq i32 %"1053", 9
  %or.cond5.i170 = or i1 %or.cond3.i169, %"1054"
  %"1055" = zext i8 %"1046" to i32
  %"1056" = icmp eq i32 %"1055", 11
  %or.cond7.i171 = or i1 %or.cond5.i170, %"1056"
  br i1 %or.cond7.i171, label %main_bb322, label %main_bb321

main_bb321:                                       ; preds = %main_bb320
  %"1057" = zext i8 %"1046" to i32
  %"1058" = icmp eq i32 %"1057", 13
  br label %main_bb322

main_bb322:                                       ; preds = %main_bb321, %main_bb320
  %"1059" = phi i1 [ true, %main_bb320 ], [ %"1058", %main_bb321 ]
  %"1060" = zext i1 %"1059" to i32
  %"1061" = bitcast i32 (...)* @__VERIFIER_assume to i32 (i32, ...)*
  %"1062" = call i32 (i32, ...)* %"1061"(i32 %"1060") #2
  %"1063" = zext i8 %"1046" to i32
  %"1064" = mul nsw i32 3, %"1044"
  %Pivot4.i.i172 = icmp slt i32 %"1064", 1
  br i1 %Pivot4.i.i172, label %main_LeafBlock.i.i174, label %main_NodeBlock.i.i176

main_LeafBlock.i.i174:                            ; preds = %main_bb322
  %SwitchLeaf.i.i173 = icmp eq i32 %"1064", 0
  br i1 %SwitchLeaf.i.i173, label %main_bb323, label %main__0_2.exit

main_bb323:                                       ; preds = %main_LeafBlock.i.i174
  %"1065" = trunc i32 %"1063" to i8
  store i8 %"1065", i8* @"'pc_0", align 1
  br label %main__0_2.exit

main_NodeBlock.i.i176:                            ; preds = %main_bb322
  %Pivot.i.i175 = icmp slt i32 %"1064", 2
  br i1 %Pivot.i.i175, label %main_bb324, label %main_LeafBlock1.i.i178

main_bb324:                                       ; preds = %main_NodeBlock.i.i176
  %"1066" = trunc i32 %"1063" to i8
  store i8 %"1066", i8* @"'pc_1", align 1
  br label %main__0_2.exit

main_LeafBlock1.i.i178:                           ; preds = %main_NodeBlock.i.i176
  %SwitchLeaf2.i.i177 = icmp eq i32 %"1064", 2
  br i1 %SwitchLeaf2.i.i177, label %main_bb325, label %main__0_2.exit

main_bb325:                                       ; preds = %main_LeafBlock1.i.i178
  %"1067" = trunc i32 %"1063" to i8
  store i8 %"1067", i8* @"'pc_2", align 1
  br label %main__0_2.exit

main_LeafBlock240:                                ; preds = %main_NodeBlock242
  %SwitchLeaf241 = icmp eq i32 %"745", 13
  br i1 %SwitchLeaf241, label %main_bb326, label %main_NewDefault

main_bb326:                                       ; preds = %main_LeafBlock240
  %"1068" = zext i8 %"728" to i32
  %"1069" = call i8 @__kittel_nondef.1() #2
  %"1070" = load i8* @"'E_0", align 1
  %"1071" = sext i8 %"1070" to i32
  %"1072" = icmp ne i32 %"1071", %"1068"
  %"1073" = zext i1 %"1072" to i32
  %"1074" = bitcast i32 (...)* @__VERIFIER_assume to i32 (i32, ...)*
  %"1075" = call i32 (i32, ...)* %"1074"(i32 %"1073") #2
  %"1076" = call i8 @__kittel_nondef.1() #2
  %"1077" = load i8* @"'E_1", align 1
  %"1078" = sext i8 %"1077" to i32
  %"1079" = icmp eq i32 %"1078", 1
  %"1080" = zext i1 %"1079" to i32
  %"1081" = bitcast i32 (...)* @__VERIFIER_assume to i32 (i32, ...)*
  %"1082" = call i32 (i32, ...)* %"1081"(i32 %"1080") #2
  %"1083" = call i8 @__kittel_nondef.1() #2
  %"1084" = load i8* @"'E_2", align 1
  %"1085" = sext i8 %"1084" to i32
  %"1086" = icmp eq i32 %"1085", 3
  br i1 %"1086", label %main_bb327, label %main_bb329

main_bb327:                                       ; preds = %main_bb326
  %"1087" = call i8 @__kittel_nondef.1() #2
  %"1088" = mul nsw i32 3, %"1068"
  %Pivot4.i.i180 = icmp slt i32 %"1088", 1
  br i1 %Pivot4.i.i180, label %main_LeafBlock.i.i183, label %main_NodeBlock.i.i185

main_LeafBlock.i.i183:                            ; preds = %main_bb327
  %SwitchLeaf.i.i181 = icmp eq i32 %"1088", 0
  %"1089" = load i8* @"'I_0", align 1
  %..i182 = select i1 %SwitchLeaf.i.i181, i8 %"1089", i8 %"1087"
  br label %main_getI.exit.i190

main_NodeBlock.i.i185:                            ; preds = %main_bb327
  %Pivot.i.i184 = icmp slt i32 %"1088", 2
  br i1 %Pivot.i.i184, label %main_bb328, label %main_LeafBlock1.i.i188

main_bb328:                                       ; preds = %main_NodeBlock.i.i185
  %"1090" = load i8* @"'I_1", align 1
  br label %main_getI.exit.i190

main_LeafBlock1.i.i188:                           ; preds = %main_NodeBlock.i.i185
  %SwitchLeaf2.i.i186 = icmp eq i32 %"1088", 2
  %"1091" = load i8* @"'I_2", align 1
  %.9.i187 = select i1 %SwitchLeaf2.i.i186, i8 %"1091", i8 %"1087"
  br label %main_getI.exit.i190

main_getI.exit.i190:                              ; preds = %main_LeafBlock1.i.i188, %main_bb328, %main_LeafBlock.i.i183
  %.0.i.i189 = phi i8 [ %"1090", %main_bb328 ], [ %..i182, %main_LeafBlock.i.i183 ], [ %.9.i187, %main_LeafBlock1.i.i188 ]
  %"1092" = sext i8 %.0.i.i189 to i32
  %"1093" = icmp eq i32 %"1092", 2
  br label %main_bb329

main_bb329:                                       ; preds = %main_getI.exit.i190, %main_bb326
  %"1094" = phi i1 [ false, %main_bb326 ], [ %"1093", %main_getI.exit.i190 ]
  %"1095" = zext i1 %"1094" to i32
  %"1096" = bitcast i32 (...)* @__VERIFIER_assume to i32 (i32, ...)*
  %"1097" = call i32 (i32, ...)* %"1096"(i32 %"1095") #2
  %"1098" = trunc i32 %"1068" to i8
  %"1099" = zext i8 %"1098" to i32
  %"1100" = mul nsw i32 3, %"1099"
  %Pivot4.i.i.i191 = icmp slt i32 %"1100", 1
  br i1 %Pivot4.i.i.i191, label %main_LeafBlock.i.i.i193, label %main_NodeBlock.i.i.i195

main_LeafBlock.i.i.i193:                          ; preds = %main_bb329
  %SwitchLeaf.i.i.i192 = icmp eq i32 %"1100", 0
  br i1 %SwitchLeaf.i.i.i192, label %main_bb330, label %main_attr.exit.i199

main_bb330:                                       ; preds = %main_LeafBlock.i.i.i193
  store i8 3, i8* @"'I_0", align 1
  br label %main_attr.exit.i199

main_NodeBlock.i.i.i195:                          ; preds = %main_bb329
  %Pivot.i.i.i194 = icmp slt i32 %"1100", 2
  br i1 %Pivot.i.i.i194, label %main_bb331, label %main_LeafBlock1.i.i.i197

main_bb331:                                       ; preds = %main_NodeBlock.i.i.i195
  store i8 3, i8* @"'I_1", align 1
  br label %main_attr.exit.i199

main_LeafBlock1.i.i.i197:                         ; preds = %main_NodeBlock.i.i.i195
  %SwitchLeaf2.i.i.i196 = icmp eq i32 %"1100", 2
  br i1 %SwitchLeaf2.i.i.i196, label %main_bb332, label %main_attr.exit.i199

main_bb332:                                       ; preds = %main_LeafBlock1.i.i.i197
  store i8 3, i8* @"'I_2", align 1
  br label %main_attr.exit.i199

main_attr.exit.i199:                              ; preds = %main_bb332, %main_LeafBlock1.i.i.i197, %main_bb331, %main_bb330, %main_LeafBlock.i.i.i193
  %"1101" = mul nsw i32 3, %"1068"
  %Pivot4.i1.i198 = icmp slt i32 %"1101", 1
  br i1 %Pivot4.i1.i198, label %main_LeafBlock.i3.i201, label %main_NodeBlock.i5.i203

main_LeafBlock.i3.i201:                           ; preds = %main_attr.exit.i199
  %SwitchLeaf.i2.i200 = icmp eq i32 %"1101", 0
  br i1 %SwitchLeaf.i2.i200, label %main_bb333, label %main__0_2.exit

main_bb333:                                       ; preds = %main_LeafBlock.i3.i201
  store i8 12, i8* @"'pc_0", align 1
  br label %main__0_2.exit

main_NodeBlock.i5.i203:                           ; preds = %main_attr.exit.i199
  %Pivot.i4.i202 = icmp slt i32 %"1101", 2
  br i1 %Pivot.i4.i202, label %main_bb334, label %main_LeafBlock1.i7.i205

main_bb334:                                       ; preds = %main_NodeBlock.i5.i203
  store i8 12, i8* @"'pc_1", align 1
  br label %main__0_2.exit

main_LeafBlock1.i7.i205:                          ; preds = %main_NodeBlock.i5.i203
  %SwitchLeaf2.i6.i204 = icmp eq i32 %"1101", 2
  br i1 %SwitchLeaf2.i6.i204, label %main_bb335, label %main__0_2.exit

main_bb335:                                       ; preds = %main_LeafBlock1.i7.i205
  store i8 12, i8* @"'pc_2", align 1
  br label %main__0_2.exit

main_NewDefault:                                  ; preds = %main_LeafBlock240, %main_LeafBlock
  br label %main__0_2.exit

main__0_2.exit:                                   ; preds = %main_NewDefault, %main_bb335, %main_LeafBlock1.i7.i205, %main_bb334, %main_bb333, %main_LeafBlock.i3.i201, %main_bb325, %main_LeafBlock1.i.i178, %main_bb324, %main_bb323, %main_LeafBlock.i.i174, %main_bb319, %main_LeafBlock1.i7.i166, %main_bb318, %main_bb317, %main_LeafBlock.i3.i162, %main_bb309, %main_LeafBlock1.i.i139, %main_bb308, %main_bb307, %main_LeafBlock.i.i135, %main_bb303, %main_LeafBlock1.i7.i127, %main_bb302, %main_bb301, %main_LeafBlock.i3.i123, %main_bb293, %main_LeafBlock1.i.i101, %main_bb292, %main_bb291, %main_LeafBlock.i.i97, %main_bb287, %main_LeafBlock1.i17.i89, %main_bb286, %main_bb285, %main_LeafBlock.i13.i85, %main_bb279, %main_LeafBlock1.i.i62, %main_bb278, %main_bb277, %main_LeafBlock.i.i58, %main_bb272, %main_LeafBlock1.i.i46, %main_bb271, %main_bb270, %main_LeafBlock.i.i42, %main_bb266, %main_LeafBlock1.i17.i, %main_bb265, %main_bb264, %main_LeafBlock.i13.i, %main_bb258, %main_LeafBlock1.i9.i21, %main_bb257, %main_bb256, %main_LeafBlock.i5.i19, %main_bb246, %main_LeafBlock1.i.i7, %main_bb245, %main_bb244, %main_LeafBlock.i.i3
  %"1102" = call i8 @__kittel_nondef.1() #2
  %"1103" = sext i8 %"1102" to i32
  %"1104" = icmp eq i32 %"1103", 0
  br i1 %"1104", label %main_bb337, label %main_bb336

main_bb336:                                       ; preds = %main__0_2.exit
  %"1105" = call i8 @__kittel_nondef.1() #2
  %"1106" = sext i8 %"1105" to i32
  %"1107" = icmp eq i32 %"1106", 2
  br i1 %"1107", label %main_bb337, label %main_bb239

main_bb337:                                       ; preds = %main_bb336, %main__0_2.exit
  %"1108" = call i8 @__kittel_nondef.1() #2
  %"1109" = load i8* @"'I_0", align 1
  %"1110" = sext i8 %"1109" to i32
  %"1111" = icmp eq i32 %"1110", 0
  br i1 %"1111", label %main_bb339, label %main_bb338

main_bb338:                                       ; preds = %main_bb337
  %"1112" = call i8 @__kittel_nondef.1() #2
  %"1113" = load i8* @"'I_0", align 1
  %"1114" = sext i8 %"1113" to i32
  %"1115" = icmp eq i32 %"1114", 2
  br i1 %"1115", label %main_bb339, label %main_bb239

main_bb339:                                       ; preds = %main_bb338, %main_bb337
  %"1116" = call i8 @__kittel_nondef.1() #2
  %"1117" = sext i8 %"1116" to i32
  %"1118" = icmp eq i32 %"1117", 0
  br i1 %"1118", label %main_bb341, label %main_bb340

main_bb340:                                       ; preds = %main_bb339
  %"1119" = call i8 @__kittel_nondef.1() #2
  %"1120" = sext i8 %"1119" to i32
  %"1121" = icmp eq i32 %"1120", 2
  br i1 %"1121", label %main_bb341, label %main_bb239

main_bb341:                                       ; preds = %main_bb340, %main_bb339
  ret i32 0
}

declare i32 @__kittel_nondef.0()

declare i8 @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

