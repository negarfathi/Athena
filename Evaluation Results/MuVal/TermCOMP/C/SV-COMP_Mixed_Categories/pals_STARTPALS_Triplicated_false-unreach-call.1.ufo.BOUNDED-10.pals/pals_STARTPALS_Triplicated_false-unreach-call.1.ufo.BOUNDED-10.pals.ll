; ModuleID = 'Benchmarks/TermCOMP/C/SV-COMP_Mixed_Categories/pals_STARTPALS_Triplicated_false-unreach-call.1.ufo.BOUNDED-10.pals/pals_STARTPALS_Triplicated_false-unreach-call.1.ufo.BOUNDED-10.pals.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"'nomsg" = global i8 -1, align 1
@"'votedValue_History_0" = common global i8 0, align 1
@"'votedValue_History_1" = common global i8 0, align 1
@"'votedValue_History_2" = common global i8 0, align 1
@"'gate1Failed_History_0" = common global i8 0, align 1
@"'gate1Failed_History_1" = common global i8 0, align 1
@"'gate1Failed_History_2" = common global i8 0, align 1
@"'gate2Failed_History_0" = common global i8 0, align 1
@"'gate2Failed_History_1" = common global i8 0, align 1
@"'gate2Failed_History_2" = common global i8 0, align 1
@"'gate3Failed_History_0" = common global i8 0, align 1
@"'gate3Failed_History_1" = common global i8 0, align 1
@"'gate3Failed_History_2" = common global i8 0, align 1
@"'gate1Failed" = common global i8 0, align 1
@"'gate2Failed" = common global i8 0, align 1
@"'gate3Failed" = common global i8 0, align 1
@"'VALUE1" = common global i8 0, align 1
@"'VALUE2" = common global i8 0, align 1
@"'VALUE3" = common global i8 0, align 1
@"'g1v_new" = common global i8 0, align 1
@"'g2v_new" = common global i8 0, align 1
@"'g3v_new" = common global i8 0, align 1
@"'g1v_old" = common global i8 0, align 1
@"'g2v_old" = common global i8 0, align 1
@"'g3v_old" = common global i8 0, align 1
@nodes = global [4 x void ()*] [void ()* @gate1_each_pals_period, void ()* @gate2_each_pals_period, void ()* @gate3_each_pals_period, void ()* @voter], align 16
@"'g1v" = common global i32 0, align 4
@"'g2v" = common global i32 0, align 4
@"'g3v" = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define i32 @add_history_type(i32 %history_id) #0 {
add_history_type_bb0:
  %"0" = load i8* @"'gate1Failed_History_0", align 1
  %"1" = trunc i8 %"0" to i1
  %"2" = zext i1 %"1" to i32
  %"3" = trunc i8 0 to i1
  %"4" = zext i1 %"3" to i32
  %"5" = load i8* @"'gate2Failed_History_0", align 1
  %"6" = trunc i8 %"5" to i1
  %"7" = zext i1 %"6" to i32
  %"8" = trunc i8 0 to i1
  %"9" = zext i1 %"8" to i32
  %"10" = load i8* @"'gate3Failed_History_0", align 1
  %"11" = trunc i8 %"10" to i1
  %"12" = zext i1 %"11" to i32
  %"13" = trunc i8 0 to i1
  %"14" = zext i1 %"13" to i32
  %"15" = load i8* @"'votedValue_History_0", align 1
  %"16" = sext i8 %"15" to i32
  %"17" = sext i8 -2 to i32
  br label %add_history_type_bb1

add_history_type_bb1:                             ; preds = %add_history_type_bb7, %add_history_type_bb0
  %var.0 = phi i32 [ 0, %add_history_type_bb0 ], [ %"23", %add_history_type_bb7 ]
  %"18" = icmp slt i32 %var.0, 3
  br i1 %"18", label %add_history_type_bb2, label %add_history_type_bb8

add_history_type_bb2:                             ; preds = %add_history_type_bb1
  br label %add_history_type_NodeBlock5

add_history_type_NodeBlock5:                      ; preds = %add_history_type_bb2
  %Pivot6 = icmp slt i32 %history_id, 2
  br i1 %Pivot6, label %add_history_type_NodeBlock, label %add_history_type_NodeBlock3

add_history_type_NodeBlock:                       ; preds = %add_history_type_NodeBlock5
  %Pivot = icmp slt i32 %history_id, 1
  br i1 %Pivot, label %add_history_type_LeafBlock, label %add_history_type_bb4

add_history_type_LeafBlock:                       ; preds = %add_history_type_NodeBlock
  %SwitchLeaf = icmp eq i32 %history_id, 0
  br i1 %SwitchLeaf, label %add_history_type_bb3, label %add_history_type_NewDefault

add_history_type_bb3:                             ; preds = %add_history_type_LeafBlock
  %"19" = icmp eq i32 %"2", %"4"
  br i1 %"19", label %add_history_type_bb7, label %add_history_type_bb8

add_history_type_bb4:                             ; preds = %add_history_type_NodeBlock
  %"20" = icmp eq i32 %"7", %"9"
  br i1 %"20", label %add_history_type_bb7, label %add_history_type_bb8

add_history_type_NodeBlock3:                      ; preds = %add_history_type_NodeBlock5
  %Pivot4 = icmp slt i32 %history_id, 3
  br i1 %Pivot4, label %add_history_type_bb5, label %add_history_type_LeafBlock1

add_history_type_bb5:                             ; preds = %add_history_type_NodeBlock3
  %"21" = icmp eq i32 %"12", %"14"
  br i1 %"21", label %add_history_type_bb7, label %add_history_type_bb8

add_history_type_LeafBlock1:                      ; preds = %add_history_type_NodeBlock3
  %SwitchLeaf2 = icmp eq i32 %history_id, 3
  br i1 %SwitchLeaf2, label %add_history_type_bb6, label %add_history_type_NewDefault

add_history_type_bb6:                             ; preds = %add_history_type_LeafBlock1
  %"22" = icmp eq i32 %"16", %"17"
  br i1 %"22", label %add_history_type_bb7, label %add_history_type_bb8

add_history_type_NewDefault:                      ; preds = %add_history_type_LeafBlock1, %add_history_type_LeafBlock
  br label %add_history_type_bb7

add_history_type_bb7:                             ; preds = %add_history_type_NewDefault, %add_history_type_bb4, %add_history_type_bb6, %add_history_type_bb5, %add_history_type_bb3
  %"23" = add nsw i32 %var.0, 1
  br label %add_history_type_bb1

add_history_type_bb8:                             ; preds = %add_history_type_bb1, %add_history_type_bb6, %add_history_type_bb5, %add_history_type_bb4, %add_history_type_bb3
  %.0 = phi i32 [ 0, %add_history_type_bb3 ], [ 0, %add_history_type_bb4 ], [ 0, %add_history_type_bb5 ], [ 0, %add_history_type_bb6 ], [ 1, %add_history_type_bb1 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define zeroext i1 @read_history_bool(i32 %history_id, i32 %historyIndex) #0 {
read_history_bool_bb9:
  br label %read_history_bool_NodeBlock3

read_history_bool_NodeBlock3:                     ; preds = %read_history_bool_bb9
  %Pivot4 = icmp slt i32 %history_id, 1
  br i1 %Pivot4, label %read_history_bool_LeafBlock, label %read_history_bool_NodeBlock

read_history_bool_LeafBlock:                      ; preds = %read_history_bool_NodeBlock3
  %SwitchLeaf = icmp eq i32 %history_id, 0
  br i1 %SwitchLeaf, label %read_history_bool_bb10, label %read_history_bool_NewDefault

read_history_bool_bb10:                           ; preds = %read_history_bool_LeafBlock
  br label %read_history_bool_NodeBlock10

read_history_bool_NodeBlock10:                    ; preds = %read_history_bool_bb10
  %Pivot11 = icmp slt i32 %historyIndex, 1
  br i1 %Pivot11, label %read_history_bool_LeafBlock6, label %read_history_bool_LeafBlock8

read_history_bool_LeafBlock6:                     ; preds = %read_history_bool_NodeBlock10
  %SwitchLeaf7 = icmp eq i32 %historyIndex, 0
  br i1 %SwitchLeaf7, label %read_history_bool_bb11, label %read_history_bool_NewDefault5

read_history_bool_bb11:                           ; preds = %read_history_bool_LeafBlock6
  %"24" = load i8* @"'gate1Failed_History_0", align 1
  %"25" = trunc i8 %"24" to i1
  br label %read_history_bool_bb22

read_history_bool_LeafBlock8:                     ; preds = %read_history_bool_NodeBlock10
  %SwitchLeaf9 = icmp eq i32 %historyIndex, 1
  br i1 %SwitchLeaf9, label %read_history_bool_bb12, label %read_history_bool_NewDefault5

read_history_bool_bb12:                           ; preds = %read_history_bool_LeafBlock8
  %"26" = load i8* @"'gate1Failed_History_1", align 1
  %"27" = trunc i8 %"26" to i1
  br label %read_history_bool_bb22

read_history_bool_NewDefault5:                    ; preds = %read_history_bool_LeafBlock8, %read_history_bool_LeafBlock6
  br label %read_history_bool_bb13

read_history_bool_bb13:                           ; preds = %read_history_bool_NewDefault5
  %"28" = load i8* @"'gate1Failed_History_2", align 1
  %"29" = trunc i8 %"28" to i1
  br label %read_history_bool_bb22

read_history_bool_NodeBlock:                      ; preds = %read_history_bool_NodeBlock3
  %Pivot = icmp slt i32 %history_id, 2
  br i1 %Pivot, label %read_history_bool_bb14, label %read_history_bool_LeafBlock1

read_history_bool_bb14:                           ; preds = %read_history_bool_NodeBlock
  br label %read_history_bool_NodeBlock17

read_history_bool_NodeBlock17:                    ; preds = %read_history_bool_bb14
  %Pivot18 = icmp slt i32 %historyIndex, 1
  br i1 %Pivot18, label %read_history_bool_LeafBlock13, label %read_history_bool_LeafBlock15

read_history_bool_LeafBlock13:                    ; preds = %read_history_bool_NodeBlock17
  %SwitchLeaf14 = icmp eq i32 %historyIndex, 0
  br i1 %SwitchLeaf14, label %read_history_bool_bb15, label %read_history_bool_NewDefault12

read_history_bool_bb15:                           ; preds = %read_history_bool_LeafBlock13
  %"30" = load i8* @"'gate2Failed_History_0", align 1
  %"31" = trunc i8 %"30" to i1
  br label %read_history_bool_bb22

read_history_bool_LeafBlock15:                    ; preds = %read_history_bool_NodeBlock17
  %SwitchLeaf16 = icmp eq i32 %historyIndex, 1
  br i1 %SwitchLeaf16, label %read_history_bool_bb16, label %read_history_bool_NewDefault12

read_history_bool_bb16:                           ; preds = %read_history_bool_LeafBlock15
  %"32" = load i8* @"'gate2Failed_History_1", align 1
  %"33" = trunc i8 %"32" to i1
  br label %read_history_bool_bb22

read_history_bool_NewDefault12:                   ; preds = %read_history_bool_LeafBlock15, %read_history_bool_LeafBlock13
  br label %read_history_bool_bb17

read_history_bool_bb17:                           ; preds = %read_history_bool_NewDefault12
  %"34" = load i8* @"'gate2Failed_History_2", align 1
  %"35" = trunc i8 %"34" to i1
  br label %read_history_bool_bb22

read_history_bool_LeafBlock1:                     ; preds = %read_history_bool_NodeBlock
  %SwitchLeaf2 = icmp eq i32 %history_id, 2
  br i1 %SwitchLeaf2, label %read_history_bool_bb18, label %read_history_bool_NewDefault

read_history_bool_bb18:                           ; preds = %read_history_bool_LeafBlock1
  br label %read_history_bool_NodeBlock24

read_history_bool_NodeBlock24:                    ; preds = %read_history_bool_bb18
  %Pivot25 = icmp slt i32 %historyIndex, 1
  br i1 %Pivot25, label %read_history_bool_LeafBlock20, label %read_history_bool_LeafBlock22

read_history_bool_LeafBlock20:                    ; preds = %read_history_bool_NodeBlock24
  %SwitchLeaf21 = icmp eq i32 %historyIndex, 0
  br i1 %SwitchLeaf21, label %read_history_bool_bb19, label %read_history_bool_NewDefault19

read_history_bool_bb19:                           ; preds = %read_history_bool_LeafBlock20
  %"36" = load i8* @"'gate3Failed_History_0", align 1
  %"37" = trunc i8 %"36" to i1
  br label %read_history_bool_bb22

read_history_bool_LeafBlock22:                    ; preds = %read_history_bool_NodeBlock24
  %SwitchLeaf23 = icmp eq i32 %historyIndex, 1
  br i1 %SwitchLeaf23, label %read_history_bool_bb20, label %read_history_bool_NewDefault19

read_history_bool_bb20:                           ; preds = %read_history_bool_LeafBlock22
  %"38" = load i8* @"'gate3Failed_History_1", align 1
  %"39" = trunc i8 %"38" to i1
  br label %read_history_bool_bb22

read_history_bool_NewDefault19:                   ; preds = %read_history_bool_LeafBlock22, %read_history_bool_LeafBlock20
  br label %read_history_bool_bb21

read_history_bool_bb21:                           ; preds = %read_history_bool_NewDefault19
  %"40" = load i8* @"'gate3Failed_History_2", align 1
  %"41" = trunc i8 %"40" to i1
  br label %read_history_bool_bb22

read_history_bool_bb22:                           ; preds = %read_history_bool_bb21, %read_history_bool_bb20, %read_history_bool_bb19, %read_history_bool_bb17, %read_history_bool_bb16, %read_history_bool_bb15, %read_history_bool_bb13, %read_history_bool_bb12, %read_history_bool_bb11
  %.0 = phi i1 [ %"25", %read_history_bool_bb11 ], [ %"27", %read_history_bool_bb12 ], [ %"29", %read_history_bool_bb13 ], [ %"31", %read_history_bool_bb15 ], [ %"33", %read_history_bool_bb16 ], [ %"35", %read_history_bool_bb17 ], [ %"37", %read_history_bool_bb19 ], [ %"39", %read_history_bool_bb20 ], [ %"41", %read_history_bool_bb21 ]
  ret i1 %.0

read_history_bool_NewDefault:                     ; preds = %read_history_bool_LeafBlock1, %read_history_bool_LeafBlock
  br label %read_history_bool_bb23

read_history_bool_bb23:                           ; preds = %read_history_bool_NewDefault
  call void (...)* @__VERIFIER_error() #3
  unreachable
}

; Function Attrs: nounwind uwtable
define signext i8 @read_history_int8(i32 %history_id, i32 %historyIndex) #0 {
read_history_int8_bb24:
  %"42" = icmp eq i32 %history_id, 3
  br i1 %"42", label %read_history_int8_bb25, label %read_history_int8_bb30

read_history_int8_bb25:                           ; preds = %read_history_int8_bb24
  br label %read_history_int8_NodeBlock

read_history_int8_NodeBlock:                      ; preds = %read_history_int8_bb25
  %Pivot = icmp slt i32 %historyIndex, 1
  br i1 %Pivot, label %read_history_int8_LeafBlock, label %read_history_int8_LeafBlock1

read_history_int8_LeafBlock:                      ; preds = %read_history_int8_NodeBlock
  %SwitchLeaf = icmp eq i32 %historyIndex, 0
  br i1 %SwitchLeaf, label %read_history_int8_bb26, label %read_history_int8_NewDefault

read_history_int8_bb26:                           ; preds = %read_history_int8_LeafBlock
  %"43" = load i8* @"'votedValue_History_0", align 1
  br label %read_history_int8_bb29

read_history_int8_LeafBlock1:                     ; preds = %read_history_int8_NodeBlock
  %SwitchLeaf2 = icmp eq i32 %historyIndex, 1
  br i1 %SwitchLeaf2, label %read_history_int8_bb27, label %read_history_int8_NewDefault

read_history_int8_bb27:                           ; preds = %read_history_int8_LeafBlock1
  %"44" = load i8* @"'votedValue_History_1", align 1
  br label %read_history_int8_bb29

read_history_int8_NewDefault:                     ; preds = %read_history_int8_LeafBlock1, %read_history_int8_LeafBlock
  br label %read_history_int8_bb28

read_history_int8_bb28:                           ; preds = %read_history_int8_NewDefault
  %"45" = load i8* @"'votedValue_History_2", align 1
  br label %read_history_int8_bb29

read_history_int8_bb29:                           ; preds = %read_history_int8_bb28, %read_history_int8_bb27, %read_history_int8_bb26
  %.0 = phi i8 [ %"43", %read_history_int8_bb26 ], [ %"44", %read_history_int8_bb27 ], [ %"45", %read_history_int8_bb28 ]
  ret i8 %.0

read_history_int8_bb30:                           ; preds = %read_history_int8_bb24
  call void (...)* @__VERIFIER_error() #3
  unreachable
}

; Function Attrs: nounwind uwtable
define void @assert(i1 zeroext %arg) #0 {
assert_bb31:
  %"46" = zext i1 %arg to i8
  %"47" = trunc i8 %"46" to i1
  br i1 %"47", label %assert_bb32, label %assert_bb33

assert_bb32:                                      ; preds = %assert_bb31
  ret void

assert_bb33:                                      ; preds = %assert_bb31
  call void (...)* @__VERIFIER_error() #4
  unreachable
}

; Function Attrs: nounwind uwtable
define void @write_history_int8(i32 %history_id, i8 signext %buf) #0 {
write_history_int8_bb34:
  %"48" = icmp eq i32 %history_id, 3
  br i1 %"48", label %write_history_int8_bb35, label %write_history_int8_bb36

write_history_int8_bb35:                          ; preds = %write_history_int8_bb34
  %"49" = load i8* @"'votedValue_History_1", align 1
  store i8 %"49", i8* @"'votedValue_History_2", align 1
  %"50" = load i8* @"'votedValue_History_0", align 1
  store i8 %"50", i8* @"'votedValue_History_1", align 1
  store i8 %buf, i8* @"'votedValue_History_0", align 1
  ret void

write_history_int8_bb36:                          ; preds = %write_history_int8_bb34
  call void (...)* @__VERIFIER_error() #3
  unreachable
}

; Function Attrs: nounwind uwtable
define void @write_history_bool(i32 %history_id, i1 zeroext %buf) #0 {
write_history_bool_bb37:
  %"51" = zext i1 %buf to i8
  br label %write_history_bool_NodeBlock3

write_history_bool_NodeBlock3:                    ; preds = %write_history_bool_bb37
  %Pivot4 = icmp slt i32 %history_id, 1
  br i1 %Pivot4, label %write_history_bool_LeafBlock, label %write_history_bool_NodeBlock

write_history_bool_LeafBlock:                     ; preds = %write_history_bool_NodeBlock3
  %SwitchLeaf = icmp eq i32 %history_id, 0
  br i1 %SwitchLeaf, label %write_history_bool_bb38, label %write_history_bool_NewDefault

write_history_bool_bb38:                          ; preds = %write_history_bool_LeafBlock
  %"52" = load i8* @"'gate1Failed_History_1", align 1
  %"53" = trunc i8 %"52" to i1
  %"54" = zext i1 %"53" to i8
  store i8 %"54", i8* @"'gate1Failed_History_2", align 1
  %"55" = load i8* @"'gate1Failed_History_0", align 1
  %"56" = trunc i8 %"55" to i1
  %"57" = zext i1 %"56" to i8
  store i8 %"57", i8* @"'gate1Failed_History_1", align 1
  %"58" = trunc i8 %"51" to i1
  %"59" = zext i1 %"58" to i8
  store i8 %"59", i8* @"'gate1Failed_History_0", align 1
  br label %write_history_bool_bb41

write_history_bool_NodeBlock:                     ; preds = %write_history_bool_NodeBlock3
  %Pivot = icmp slt i32 %history_id, 2
  br i1 %Pivot, label %write_history_bool_bb39, label %write_history_bool_LeafBlock1

write_history_bool_bb39:                          ; preds = %write_history_bool_NodeBlock
  %"60" = load i8* @"'gate2Failed_History_1", align 1
  %"61" = trunc i8 %"60" to i1
  %"62" = zext i1 %"61" to i8
  store i8 %"62", i8* @"'gate2Failed_History_2", align 1
  %"63" = load i8* @"'gate2Failed_History_0", align 1
  %"64" = trunc i8 %"63" to i1
  %"65" = zext i1 %"64" to i8
  store i8 %"65", i8* @"'gate2Failed_History_1", align 1
  %"66" = trunc i8 %"51" to i1
  %"67" = zext i1 %"66" to i8
  store i8 %"67", i8* @"'gate2Failed_History_0", align 1
  br label %write_history_bool_bb41

write_history_bool_LeafBlock1:                    ; preds = %write_history_bool_NodeBlock
  %SwitchLeaf2 = icmp eq i32 %history_id, 2
  br i1 %SwitchLeaf2, label %write_history_bool_bb40, label %write_history_bool_NewDefault

write_history_bool_bb40:                          ; preds = %write_history_bool_LeafBlock1
  %"68" = load i8* @"'gate3Failed_History_1", align 1
  %"69" = trunc i8 %"68" to i1
  %"70" = zext i1 %"69" to i8
  store i8 %"70", i8* @"'gate3Failed_History_2", align 1
  %"71" = load i8* @"'gate3Failed_History_0", align 1
  %"72" = trunc i8 %"71" to i1
  %"73" = zext i1 %"72" to i8
  store i8 %"73", i8* @"'gate3Failed_History_1", align 1
  %"74" = trunc i8 %"51" to i1
  %"75" = zext i1 %"74" to i8
  store i8 %"75", i8* @"'gate3Failed_History_0", align 1
  br label %write_history_bool_bb41

write_history_bool_bb41:                          ; preds = %write_history_bool_bb39, %write_history_bool_bb40, %write_history_bool_bb38
  ret void

write_history_bool_NewDefault:                    ; preds = %write_history_bool_LeafBlock1, %write_history_bool_LeafBlock
  br label %write_history_bool_bb42

write_history_bool_bb42:                          ; preds = %write_history_bool_NewDefault
  call void (...)* @__VERIFIER_error() #3
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @init() #0 {
init_bb43:
  %"76" = load i8* @"'gate1Failed_History_0", align 1
  %"77" = trunc i8 %"76" to i1
  %"78" = zext i1 %"77" to i32
  br label %init_bb44

init_bb44:                                        ; preds = %init_bb46, %init_bb43
  %var.0.i = phi i32 [ 0, %init_bb43 ], [ %"81", %init_bb46 ]
  %"79" = icmp slt i32 %var.0.i, 3
  br i1 %"79", label %init_bb45, label %init_add_history_type.exit

init_bb45:                                        ; preds = %init_bb44
  %"80" = icmp eq i32 %"78", 0
  br i1 %"80", label %init_bb46, label %init_add_history_type.exit

init_bb46:                                        ; preds = %init_bb45
  %"81" = add nsw i32 %var.0.i, 1
  br label %init_bb44

init_add_history_type.exit:                       ; preds = %init_bb44, %init_bb45
  %.0.i = phi i32 [ 0, %init_bb45 ], [ 1, %init_bb44 ]
  %"82" = icmp ne i32 %.0.i, 0
  br i1 %"82", label %init_bb47, label %init_bb59

init_bb47:                                        ; preds = %init_add_history_type.exit
  %"83" = load i8* @"'gate2Failed_History_0", align 1
  %"84" = trunc i8 %"83" to i1
  %"85" = zext i1 %"84" to i32
  br label %init_bb48

init_bb48:                                        ; preds = %init_bb50, %init_bb47
  %var.0.i7 = phi i32 [ 0, %init_bb47 ], [ %"88", %init_bb50 ]
  %"86" = icmp slt i32 %var.0.i7, 3
  br i1 %"86", label %init_bb49, label %init_add_history_type.exit9

init_bb49:                                        ; preds = %init_bb48
  %"87" = icmp eq i32 %"85", 0
  br i1 %"87", label %init_bb50, label %init_add_history_type.exit9

init_bb50:                                        ; preds = %init_bb49
  %"88" = add nsw i32 %var.0.i7, 1
  br label %init_bb48

init_add_history_type.exit9:                      ; preds = %init_bb48, %init_bb49
  %.0.i8 = phi i32 [ 0, %init_bb49 ], [ 1, %init_bb48 ]
  %"89" = icmp ne i32 %.0.i8, 0
  br i1 %"89", label %init_bb51, label %init_bb59

init_bb51:                                        ; preds = %init_add_history_type.exit9
  %"90" = load i8* @"'gate3Failed_History_0", align 1
  %"91" = trunc i8 %"90" to i1
  %"92" = zext i1 %"91" to i32
  br label %init_bb52

init_bb52:                                        ; preds = %init_bb54, %init_bb51
  %var.0.i4 = phi i32 [ 0, %init_bb51 ], [ %"95", %init_bb54 ]
  %"93" = icmp slt i32 %var.0.i4, 3
  br i1 %"93", label %init_bb53, label %init_add_history_type.exit6

init_bb53:                                        ; preds = %init_bb52
  %"94" = icmp eq i32 %"92", 0
  br i1 %"94", label %init_bb54, label %init_add_history_type.exit6

init_bb54:                                        ; preds = %init_bb53
  %"95" = add nsw i32 %var.0.i4, 1
  br label %init_bb52

init_add_history_type.exit6:                      ; preds = %init_bb52, %init_bb53
  %.0.i5 = phi i32 [ 0, %init_bb53 ], [ 1, %init_bb52 ]
  %"96" = icmp ne i32 %.0.i5, 0
  br i1 %"96", label %init_bb55, label %init_bb59

init_bb55:                                        ; preds = %init_add_history_type.exit6
  %"97" = load i8* @"'votedValue_History_0", align 1
  %"98" = sext i8 %"97" to i32
  br label %init_bb56

init_bb56:                                        ; preds = %init_bb58, %init_bb55
  %var.0.i1 = phi i32 [ 0, %init_bb55 ], [ %"101", %init_bb58 ]
  %"99" = icmp slt i32 %var.0.i1, 3
  br i1 %"99", label %init_bb57, label %init_add_history_type.exit3

init_bb57:                                        ; preds = %init_bb56
  %"100" = icmp eq i32 %"98", -2
  br i1 %"100", label %init_bb58, label %init_add_history_type.exit3

init_bb58:                                        ; preds = %init_bb57
  %"101" = add nsw i32 %var.0.i1, 1
  br label %init_bb56

init_add_history_type.exit3:                      ; preds = %init_bb56, %init_bb57
  %.0.i2 = phi i32 [ 0, %init_bb57 ], [ 1, %init_bb56 ]
  %"102" = icmp ne i32 %.0.i2, 0
  %. = select i1 %"102", i32 1, i32 0
  br label %init_bb59

init_bb59:                                        ; preds = %init_add_history_type.exit3, %init_add_history_type.exit6, %init_add_history_type.exit9, %init_add_history_type.exit
  %.0 = phi i32 [ 0, %init_add_history_type.exit ], [ 0, %init_add_history_type.exit9 ], [ 0, %init_add_history_type.exit6 ], [ %., %init_add_history_type.exit3 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @check() #0 {
check_bb60:
  %"103" = load i8* @"'gate1Failed", align 1
  %"104" = trunc i8 %"103" to i1
  br i1 %"104", label %check_bb61, label %check_bb63

check_bb61:                                       ; preds = %check_bb60
  %"105" = load i8* @"'gate2Failed", align 1
  %"106" = trunc i8 %"105" to i1
  br i1 %"106", label %check_bb62, label %check_bb63

check_bb62:                                       ; preds = %check_bb61
  %"107" = load i8* @"'gate3Failed", align 1
  %"108" = trunc i8 %"107" to i1
  %. = select i1 %"108", i32 0, i32 1
  br label %check_bb63

check_bb63:                                       ; preds = %check_bb62, %check_bb61, %check_bb60
  %tmp.2 = phi i32 [ 1, %check_bb60 ], [ %., %check_bb62 ], [ 1, %check_bb61 ]
  %"109" = icmp ne i32 %tmp.2, 0
  %"110" = zext i1 %"109" to i8
  %"111" = trunc i8 %"110" to i1
  br label %check_bb64

check_bb64:                                       ; preds = %check_bb64, %check_bb63
  %"112" = xor i1 %"111", true
  br i1 %"112", label %check_bb64, label %check___VERIFIER_assume.exit

check___VERIFIER_assume.exit:                     ; preds = %check_bb64
  %"113" = load i8* @"'gate1Failed_History_1", align 1
  %"114" = trunc i8 %"113" to i1
  %"115" = zext i1 %"114" to i8
  %"116" = trunc i8 %"115" to i1
  br i1 %"116", label %check_bb72, label %check_bb65

check_bb65:                                       ; preds = %check___VERIFIER_assume.exit
  %"117" = load i8* @"'gate2Failed_History_1", align 1
  %"118" = trunc i8 %"117" to i1
  %"119" = zext i1 %"118" to i8
  %"120" = trunc i8 %"119" to i1
  br i1 %"120", label %check_bb72, label %check_bb66

check_bb66:                                       ; preds = %check_bb65
  %"121" = load i8* @"'gate3Failed_History_1", align 1
  %"122" = trunc i8 %"121" to i1
  %"123" = zext i1 %"122" to i8
  %"124" = trunc i8 %"123" to i1
  br i1 %"124", label %check_bb72, label %check_bb67

check_bb67:                                       ; preds = %check_bb66
  %"125" = load i8* @"'votedValue_History_0", align 1
  %"126" = load i8* @"'VALUE1", align 1
  %"127" = sext i8 %"126" to i32
  %"128" = sext i8 %"125" to i32
  %"129" = icmp eq i32 %"127", %"128"
  %"130" = add nsw i32 0, 1
  %.1 = select i1 %"129", i32 %"130", i32 0
  %"131" = load i8* @"'votedValue_History_0", align 1
  %"132" = load i8* @"'VALUE2", align 1
  %"133" = sext i8 %"132" to i32
  %"134" = sext i8 %"131" to i32
  %"135" = icmp eq i32 %"133", %"134"
  %"136" = add nsw i32 %.1, 1
  %temp_count.1 = select i1 %"135", i32 %"136", i32 %.1
  %"137" = load i8* @"'votedValue_History_0", align 1
  %"138" = load i8* @"'VALUE3", align 1
  %"139" = sext i8 %"138" to i32
  %"140" = sext i8 %"137" to i32
  %"141" = icmp eq i32 %"139", %"140"
  %"142" = add nsw i32 %temp_count.1, 1
  %.temp_count.1 = select i1 %"141", i32 %"142", i32 %temp_count.1
  %"143" = load i8* @"'VALUE1", align 1
  %"144" = sext i8 %"143" to i32
  %"145" = load i8* @"'VALUE2", align 1
  %"146" = sext i8 %"145" to i32
  %"147" = icmp ne i32 %"144", %"146"
  br i1 %"147", label %check_bb68, label %check_bb71

check_bb68:                                       ; preds = %check_bb67
  %"148" = load i8* @"'VALUE1", align 1
  %"149" = sext i8 %"148" to i32
  %"150" = load i8* @"'VALUE3", align 1
  %"151" = sext i8 %"150" to i32
  %"152" = icmp ne i32 %"149", %"151"
  br i1 %"152", label %check_bb69, label %check_bb71

check_bb69:                                       ; preds = %check_bb68
  %"153" = load i8* @"'VALUE2", align 1
  %"154" = sext i8 %"153" to i32
  %"155" = load i8* @"'VALUE3", align 1
  %"156" = sext i8 %"155" to i32
  %"157" = icmp ne i32 %"154", %"156"
  br i1 %"157", label %check_bb70, label %check_bb71

check_bb70:                                       ; preds = %check_bb69
  %"158" = icmp eq i32 %.temp_count.1, 1
  br i1 %"158", label %check_bb72, label %check_bb82

check_bb71:                                       ; preds = %check_bb67, %check_bb68, %check_bb69
  %"159" = icmp sgt i32 %.temp_count.1, 1
  br i1 %"159", label %check_bb72, label %check_bb82

check_bb72:                                       ; preds = %check_bb65, %check_bb70, %check_bb71, %check_bb66, %check___VERIFIER_assume.exit
  %"160" = load i8* @"'votedValue_History_1", align 1
  %"161" = sext i8 %"160" to i32
  %"162" = icmp sgt i32 %"161", -2
  br i1 %"162", label %check_bb73, label %check_bb77

check_bb73:                                       ; preds = %check_bb72
  %"163" = load i8* @"'votedValue_History_0", align 1
  %"164" = sext i8 %"163" to i32
  %"165" = load i8* @"'nomsg", align 1
  %"166" = sext i8 %"165" to i32
  %"167" = icmp eq i32 %"164", %"166"
  br i1 %"167", label %check_bb74, label %check_bb77

check_bb74:                                       ; preds = %check_bb73
  %"168" = load i8* @"'gate1Failed_History_1", align 1
  %"169" = trunc i8 %"168" to i1
  %"170" = zext i1 %"169" to i8
  %"171" = trunc i8 %"170" to i1
  br i1 %"171", label %check_bb75, label %check_bb82

check_bb75:                                       ; preds = %check_bb74
  %"172" = load i8* @"'gate2Failed_History_1", align 1
  %"173" = trunc i8 %"172" to i1
  %"174" = zext i1 %"173" to i8
  %"175" = trunc i8 %"174" to i1
  br i1 %"175", label %check_bb76, label %check_bb82

check_bb76:                                       ; preds = %check_bb75
  %"176" = load i8* @"'gate3Failed_History_1", align 1
  %"177" = trunc i8 %"176" to i1
  %"178" = zext i1 %"177" to i8
  %"179" = trunc i8 %"178" to i1
  br i1 %"179", label %check_bb77, label %check_bb82

check_bb77:                                       ; preds = %check_bb73, %check_bb76, %check_bb72
  %"180" = load i8* @"'votedValue_History_0", align 1
  %"181" = sext i8 %"180" to i32
  %"182" = load i8* @"'nomsg", align 1
  %"183" = sext i8 %"182" to i32
  %"184" = icmp ne i32 %"181", %"183"
  br i1 %"184", label %check_bb78, label %check_bb81

check_bb78:                                       ; preds = %check_bb77
  %"185" = load i8* @"'votedValue_History_0", align 1
  %"186" = load i8* @"'VALUE1", align 1
  %"187" = sext i8 %"186" to i32
  %"188" = sext i8 %"185" to i32
  %"189" = icmp eq i32 %"187", %"188"
  br i1 %"189", label %check_bb81, label %check_bb79

check_bb79:                                       ; preds = %check_bb78
  %"190" = load i8* @"'votedValue_History_0", align 1
  %"191" = load i8* @"'VALUE2", align 1
  %"192" = sext i8 %"191" to i32
  %"193" = sext i8 %"190" to i32
  %"194" = icmp eq i32 %"192", %"193"
  br i1 %"194", label %check_bb81, label %check_bb80

check_bb80:                                       ; preds = %check_bb79
  %"195" = load i8* @"'votedValue_History_0", align 1
  %"196" = load i8* @"'VALUE3", align 1
  %"197" = sext i8 %"196" to i32
  %"198" = sext i8 %"195" to i32
  %"199" = icmp eq i32 %"197", %"198"
  br i1 %"199", label %check_bb81, label %check_bb82

check_bb81:                                       ; preds = %check_bb78, %check_bb80, %check_bb79, %check_bb77
  br label %check_bb82

check_bb82:                                       ; preds = %check_bb80, %check_bb74, %check_bb75, %check_bb76, %check_bb71, %check_bb70, %check_bb81
  %.0 = phi i32 [ 1, %check_bb81 ], [ 0, %check_bb70 ], [ 0, %check_bb71 ], [ 0, %check_bb76 ], [ 0, %check_bb75 ], [ 0, %check_bb74 ], [ 0, %check_bb80 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @__VERIFIER_assume(i1 zeroext %arg) #0 {
__VERIFIER_assume_bb83:
  %"200" = zext i1 %arg to i8
  %"201" = trunc i8 %"200" to i1
  br label %__VERIFIER_assume_bb84

__VERIFIER_assume_bb84:                           ; preds = %__VERIFIER_assume_bb84, %__VERIFIER_assume_bb83
  %"202" = xor i1 %"201", true
  br i1 %"202", label %__VERIFIER_assume_bb84, label %__VERIFIER_assume_bb85

__VERIFIER_assume_bb85:                           ; preds = %__VERIFIER_assume_bb84
  ret void
}

; Function Attrs: nounwind uwtable
define void @gate1_each_pals_period() #0 {
gate1_each_pals_period_bb86:
  %"203" = call zeroext i1 (...)* @__VERIFIER_nondet_bool()
  %"204" = zext i1 %"203" to i8
  store i8 %"204", i8* @"'gate1Failed", align 1
  %"205" = load i8* @"'gate1Failed", align 1
  %"206" = trunc i8 %"205" to i1
  %"207" = zext i1 %"206" to i8
  %"208" = load i8* @"'gate1Failed_History_1", align 1
  %"209" = trunc i8 %"208" to i1
  %"210" = zext i1 %"209" to i8
  store i8 %"210", i8* @"'gate1Failed_History_2", align 1
  %"211" = load i8* @"'gate1Failed_History_0", align 1
  %"212" = trunc i8 %"211" to i1
  %"213" = zext i1 %"212" to i8
  store i8 %"213", i8* @"'gate1Failed_History_1", align 1
  %"214" = trunc i8 %"207" to i1
  %"215" = zext i1 %"214" to i8
  store i8 %"215", i8* @"'gate1Failed_History_0", align 1
  %"216" = load i8* @"'gate1Failed", align 1
  %"217" = trunc i8 %"216" to i1
  br i1 %"217", label %gate1_each_pals_period_bb87, label %gate1_each_pals_period_bb92

gate1_each_pals_period_bb87:                      ; preds = %gate1_each_pals_period_bb86
  %"218" = load i8* @"'nomsg", align 1
  %"219" = sext i8 %"218" to i32
  %"220" = load i8* @"'nomsg", align 1
  %"221" = sext i8 %"220" to i32
  %"222" = icmp ne i32 %"219", %"221"
  br i1 %"222", label %gate1_each_pals_period_bb88, label %gate1_each_pals_period_bb90

gate1_each_pals_period_bb88:                      ; preds = %gate1_each_pals_period_bb87
  %"223" = load i8* @"'g1v_new", align 1
  %"224" = sext i8 %"223" to i32
  %"225" = load i8* @"'nomsg", align 1
  %"226" = sext i8 %"225" to i32
  %"227" = icmp eq i32 %"224", %"226"
  br i1 %"227", label %gate1_each_pals_period_bb89, label %gate1_each_pals_period_bb90

gate1_each_pals_period_bb89:                      ; preds = %gate1_each_pals_period_bb88
  %"228" = load i8* @"'nomsg", align 1
  br label %gate1_each_pals_period_bb91

gate1_each_pals_period_bb90:                      ; preds = %gate1_each_pals_period_bb88, %gate1_each_pals_period_bb87
  %"229" = load i8* @"'g1v_new", align 1
  br label %gate1_each_pals_period_bb91

gate1_each_pals_period_bb91:                      ; preds = %gate1_each_pals_period_bb90, %gate1_each_pals_period_bb89
  %.sink = phi i8 [ %"228", %gate1_each_pals_period_bb89 ], [ %"229", %gate1_each_pals_period_bb90 ]
  %"230" = sext i8 %.sink to i32
  %"231" = trunc i32 %"230" to i8
  store i8 %"231", i8* @"'g1v_new", align 1
  br label %gate1_each_pals_period_bb99

gate1_each_pals_period_bb92:                      ; preds = %gate1_each_pals_period_bb86
  %"232" = call signext i8 (...)* @__VERIFIER_nondet_int8_t()
  %"233" = sext i8 %"232" to i32
  %"234" = icmp eq i32 %"233", 0
  %"235" = sext i8 %"232" to i32
  %"236" = icmp eq i32 %"235", 1
  %or.cond = or i1 %"234", %"236"
  br i1 %or.cond, label %gate1_each_pals_period_bb94, label %gate1_each_pals_period_bb93

gate1_each_pals_period_bb93:                      ; preds = %gate1_each_pals_period_bb92
  %"237" = sext i8 %"232" to i32
  %"238" = icmp eq i32 %"237", 2
  %. = select i1 %"238", i32 1, i32 0
  br label %gate1_each_pals_period_bb94

gate1_each_pals_period_bb94:                      ; preds = %gate1_each_pals_period_bb93, %gate1_each_pals_period_bb92
  %tmp___0.2 = phi i32 [ 1, %gate1_each_pals_period_bb92 ], [ %., %gate1_each_pals_period_bb93 ]
  %"239" = icmp ne i32 %tmp___0.2, 0
  %"240" = zext i1 %"239" to i8
  %"241" = trunc i8 %"240" to i1
  br label %gate1_each_pals_period_bb95

gate1_each_pals_period_bb95:                      ; preds = %gate1_each_pals_period_bb95, %gate1_each_pals_period_bb94
  %"242" = xor i1 %"241", true
  br i1 %"242", label %gate1_each_pals_period_bb95, label %gate1_each_pals_period___VERIFIER_assume.exit

gate1_each_pals_period___VERIFIER_assume.exit:    ; preds = %gate1_each_pals_period_bb95
  %"243" = sext i8 %"232" to i32
  %"244" = load i8* @"'nomsg", align 1
  %"245" = sext i8 %"244" to i32
  %"246" = icmp ne i32 %"243", %"245"
  br i1 %"246", label %gate1_each_pals_period_bb96, label %gate1_each_pals_period_bb97

gate1_each_pals_period_bb96:                      ; preds = %gate1_each_pals_period___VERIFIER_assume.exit
  %"247" = load i8* @"'g1v_new", align 1
  %"248" = sext i8 %"247" to i32
  %"249" = load i8* @"'nomsg", align 1
  %"250" = sext i8 %"249" to i32
  %"251" = icmp eq i32 %"248", %"250"
  br i1 %"251", label %gate1_each_pals_period_bb98, label %gate1_each_pals_period_bb97

gate1_each_pals_period_bb97:                      ; preds = %gate1_each_pals_period_bb96, %gate1_each_pals_period___VERIFIER_assume.exit
  %"252" = load i8* @"'g1v_new", align 1
  br label %gate1_each_pals_period_bb98

gate1_each_pals_period_bb98:                      ; preds = %gate1_each_pals_period_bb96, %gate1_each_pals_period_bb97
  %.sink1 = phi i8 [ %"252", %gate1_each_pals_period_bb97 ], [ %"232", %gate1_each_pals_period_bb96 ]
  %"253" = sext i8 %.sink1 to i32
  %"254" = trunc i32 %"253" to i8
  store i8 %"254", i8* @"'g1v_new", align 1
  br label %gate1_each_pals_period_bb99

gate1_each_pals_period_bb99:                      ; preds = %gate1_each_pals_period_bb98, %gate1_each_pals_period_bb91
  ret void
}

declare zeroext i1 @__VERIFIER_nondet_bool(...) #1

declare signext i8 @__VERIFIER_nondet_int8_t(...) #1

; Function Attrs: nounwind uwtable
define void @gate2_each_pals_period() #0 {
gate2_each_pals_period_bb100:
  %"255" = call zeroext i1 (...)* @__VERIFIER_nondet_bool()
  %"256" = zext i1 %"255" to i8
  store i8 %"256", i8* @"'gate2Failed", align 1
  %"257" = load i8* @"'gate2Failed", align 1
  %"258" = trunc i8 %"257" to i1
  %"259" = zext i1 %"258" to i8
  %"260" = load i8* @"'gate2Failed_History_1", align 1
  %"261" = trunc i8 %"260" to i1
  %"262" = zext i1 %"261" to i8
  store i8 %"262", i8* @"'gate2Failed_History_2", align 1
  %"263" = load i8* @"'gate2Failed_History_0", align 1
  %"264" = trunc i8 %"263" to i1
  %"265" = zext i1 %"264" to i8
  store i8 %"265", i8* @"'gate2Failed_History_1", align 1
  %"266" = trunc i8 %"259" to i1
  %"267" = zext i1 %"266" to i8
  store i8 %"267", i8* @"'gate2Failed_History_0", align 1
  %"268" = load i8* @"'gate2Failed", align 1
  %"269" = trunc i8 %"268" to i1
  br i1 %"269", label %gate2_each_pals_period_bb101, label %gate2_each_pals_period_bb106

gate2_each_pals_period_bb101:                     ; preds = %gate2_each_pals_period_bb100
  %"270" = load i8* @"'nomsg", align 1
  %"271" = sext i8 %"270" to i32
  %"272" = load i8* @"'nomsg", align 1
  %"273" = sext i8 %"272" to i32
  %"274" = icmp ne i32 %"271", %"273"
  br i1 %"274", label %gate2_each_pals_period_bb102, label %gate2_each_pals_period_bb104

gate2_each_pals_period_bb102:                     ; preds = %gate2_each_pals_period_bb101
  %"275" = load i8* @"'g2v_new", align 1
  %"276" = sext i8 %"275" to i32
  %"277" = load i8* @"'nomsg", align 1
  %"278" = sext i8 %"277" to i32
  %"279" = icmp eq i32 %"276", %"278"
  br i1 %"279", label %gate2_each_pals_period_bb103, label %gate2_each_pals_period_bb104

gate2_each_pals_period_bb103:                     ; preds = %gate2_each_pals_period_bb102
  %"280" = load i8* @"'nomsg", align 1
  br label %gate2_each_pals_period_bb105

gate2_each_pals_period_bb104:                     ; preds = %gate2_each_pals_period_bb102, %gate2_each_pals_period_bb101
  %"281" = load i8* @"'g2v_new", align 1
  br label %gate2_each_pals_period_bb105

gate2_each_pals_period_bb105:                     ; preds = %gate2_each_pals_period_bb104, %gate2_each_pals_period_bb103
  %.sink = phi i8 [ %"280", %gate2_each_pals_period_bb103 ], [ %"281", %gate2_each_pals_period_bb104 ]
  %"282" = sext i8 %.sink to i32
  %"283" = trunc i32 %"282" to i8
  store i8 %"283", i8* @"'g2v_new", align 1
  br label %gate2_each_pals_period_bb113

gate2_each_pals_period_bb106:                     ; preds = %gate2_each_pals_period_bb100
  %"284" = call signext i8 (...)* @__VERIFIER_nondet_int8_t()
  %"285" = sext i8 %"284" to i32
  %"286" = icmp eq i32 %"285", 0
  %"287" = sext i8 %"284" to i32
  %"288" = icmp eq i32 %"287", 1
  %or.cond = or i1 %"286", %"288"
  br i1 %or.cond, label %gate2_each_pals_period_bb108, label %gate2_each_pals_period_bb107

gate2_each_pals_period_bb107:                     ; preds = %gate2_each_pals_period_bb106
  %"289" = sext i8 %"284" to i32
  %"290" = icmp eq i32 %"289", 2
  %. = select i1 %"290", i32 1, i32 0
  br label %gate2_each_pals_period_bb108

gate2_each_pals_period_bb108:                     ; preds = %gate2_each_pals_period_bb107, %gate2_each_pals_period_bb106
  %tmp___0.2 = phi i32 [ 1, %gate2_each_pals_period_bb106 ], [ %., %gate2_each_pals_period_bb107 ]
  %"291" = icmp ne i32 %tmp___0.2, 0
  %"292" = zext i1 %"291" to i8
  %"293" = trunc i8 %"292" to i1
  br label %gate2_each_pals_period_bb109

gate2_each_pals_period_bb109:                     ; preds = %gate2_each_pals_period_bb109, %gate2_each_pals_period_bb108
  %"294" = xor i1 %"293", true
  br i1 %"294", label %gate2_each_pals_period_bb109, label %gate2_each_pals_period___VERIFIER_assume.exit

gate2_each_pals_period___VERIFIER_assume.exit:    ; preds = %gate2_each_pals_period_bb109
  %"295" = sext i8 %"284" to i32
  %"296" = load i8* @"'nomsg", align 1
  %"297" = sext i8 %"296" to i32
  %"298" = icmp ne i32 %"295", %"297"
  br i1 %"298", label %gate2_each_pals_period_bb110, label %gate2_each_pals_period_bb111

gate2_each_pals_period_bb110:                     ; preds = %gate2_each_pals_period___VERIFIER_assume.exit
  %"299" = load i8* @"'g2v_new", align 1
  %"300" = sext i8 %"299" to i32
  %"301" = load i8* @"'nomsg", align 1
  %"302" = sext i8 %"301" to i32
  %"303" = icmp eq i32 %"300", %"302"
  br i1 %"303", label %gate2_each_pals_period_bb112, label %gate2_each_pals_period_bb111

gate2_each_pals_period_bb111:                     ; preds = %gate2_each_pals_period_bb110, %gate2_each_pals_period___VERIFIER_assume.exit
  %"304" = load i8* @"'g2v_new", align 1
  br label %gate2_each_pals_period_bb112

gate2_each_pals_period_bb112:                     ; preds = %gate2_each_pals_period_bb110, %gate2_each_pals_period_bb111
  %.sink1 = phi i8 [ %"304", %gate2_each_pals_period_bb111 ], [ %"284", %gate2_each_pals_period_bb110 ]
  %"305" = sext i8 %.sink1 to i32
  %"306" = trunc i32 %"305" to i8
  store i8 %"306", i8* @"'g2v_new", align 1
  br label %gate2_each_pals_period_bb113

gate2_each_pals_period_bb113:                     ; preds = %gate2_each_pals_period_bb112, %gate2_each_pals_period_bb105
  ret void
}

; Function Attrs: nounwind uwtable
define void @gate3_each_pals_period() #0 {
gate3_each_pals_period_bb114:
  %"307" = call zeroext i1 (...)* @__VERIFIER_nondet_bool()
  %"308" = zext i1 %"307" to i8
  store i8 %"308", i8* @"'gate3Failed", align 1
  %"309" = load i8* @"'gate3Failed", align 1
  %"310" = trunc i8 %"309" to i1
  %"311" = zext i1 %"310" to i8
  %"312" = load i8* @"'gate3Failed_History_1", align 1
  %"313" = trunc i8 %"312" to i1
  %"314" = zext i1 %"313" to i8
  store i8 %"314", i8* @"'gate3Failed_History_2", align 1
  %"315" = load i8* @"'gate3Failed_History_0", align 1
  %"316" = trunc i8 %"315" to i1
  %"317" = zext i1 %"316" to i8
  store i8 %"317", i8* @"'gate3Failed_History_1", align 1
  %"318" = trunc i8 %"311" to i1
  %"319" = zext i1 %"318" to i8
  store i8 %"319", i8* @"'gate3Failed_History_0", align 1
  %"320" = load i8* @"'gate3Failed", align 1
  %"321" = trunc i8 %"320" to i1
  br i1 %"321", label %gate3_each_pals_period_bb115, label %gate3_each_pals_period_bb120

gate3_each_pals_period_bb115:                     ; preds = %gate3_each_pals_period_bb114
  %"322" = load i8* @"'nomsg", align 1
  %"323" = sext i8 %"322" to i32
  %"324" = load i8* @"'nomsg", align 1
  %"325" = sext i8 %"324" to i32
  %"326" = icmp ne i32 %"323", %"325"
  br i1 %"326", label %gate3_each_pals_period_bb116, label %gate3_each_pals_period_bb118

gate3_each_pals_period_bb116:                     ; preds = %gate3_each_pals_period_bb115
  %"327" = load i8* @"'g3v_new", align 1
  %"328" = sext i8 %"327" to i32
  %"329" = load i8* @"'nomsg", align 1
  %"330" = sext i8 %"329" to i32
  %"331" = icmp eq i32 %"328", %"330"
  br i1 %"331", label %gate3_each_pals_period_bb117, label %gate3_each_pals_period_bb118

gate3_each_pals_period_bb117:                     ; preds = %gate3_each_pals_period_bb116
  %"332" = load i8* @"'nomsg", align 1
  br label %gate3_each_pals_period_bb119

gate3_each_pals_period_bb118:                     ; preds = %gate3_each_pals_period_bb116, %gate3_each_pals_period_bb115
  %"333" = load i8* @"'g3v_new", align 1
  br label %gate3_each_pals_period_bb119

gate3_each_pals_period_bb119:                     ; preds = %gate3_each_pals_period_bb118, %gate3_each_pals_period_bb117
  %.sink = phi i8 [ %"332", %gate3_each_pals_period_bb117 ], [ %"333", %gate3_each_pals_period_bb118 ]
  %"334" = sext i8 %.sink to i32
  %"335" = trunc i32 %"334" to i8
  store i8 %"335", i8* @"'g3v_new", align 1
  br label %gate3_each_pals_period_bb127

gate3_each_pals_period_bb120:                     ; preds = %gate3_each_pals_period_bb114
  %"336" = call signext i8 (...)* @__VERIFIER_nondet_int8_t()
  %"337" = sext i8 %"336" to i32
  %"338" = icmp eq i32 %"337", 0
  %"339" = sext i8 %"336" to i32
  %"340" = icmp eq i32 %"339", 1
  %or.cond = or i1 %"338", %"340"
  br i1 %or.cond, label %gate3_each_pals_period_bb122, label %gate3_each_pals_period_bb121

gate3_each_pals_period_bb121:                     ; preds = %gate3_each_pals_period_bb120
  %"341" = sext i8 %"336" to i32
  %"342" = icmp eq i32 %"341", 2
  %. = select i1 %"342", i32 1, i32 0
  br label %gate3_each_pals_period_bb122

gate3_each_pals_period_bb122:                     ; preds = %gate3_each_pals_period_bb121, %gate3_each_pals_period_bb120
  %tmp___0.2 = phi i32 [ 1, %gate3_each_pals_period_bb120 ], [ %., %gate3_each_pals_period_bb121 ]
  %"343" = icmp ne i32 %tmp___0.2, 0
  %"344" = zext i1 %"343" to i8
  %"345" = trunc i8 %"344" to i1
  br label %gate3_each_pals_period_bb123

gate3_each_pals_period_bb123:                     ; preds = %gate3_each_pals_period_bb123, %gate3_each_pals_period_bb122
  %"346" = xor i1 %"345", true
  br i1 %"346", label %gate3_each_pals_period_bb123, label %gate3_each_pals_period___VERIFIER_assume.exit

gate3_each_pals_period___VERIFIER_assume.exit:    ; preds = %gate3_each_pals_period_bb123
  %"347" = sext i8 %"336" to i32
  %"348" = load i8* @"'nomsg", align 1
  %"349" = sext i8 %"348" to i32
  %"350" = icmp ne i32 %"347", %"349"
  br i1 %"350", label %gate3_each_pals_period_bb124, label %gate3_each_pals_period_bb125

gate3_each_pals_period_bb124:                     ; preds = %gate3_each_pals_period___VERIFIER_assume.exit
  %"351" = load i8* @"'g3v_new", align 1
  %"352" = sext i8 %"351" to i32
  %"353" = load i8* @"'nomsg", align 1
  %"354" = sext i8 %"353" to i32
  %"355" = icmp eq i32 %"352", %"354"
  br i1 %"355", label %gate3_each_pals_period_bb126, label %gate3_each_pals_period_bb125

gate3_each_pals_period_bb125:                     ; preds = %gate3_each_pals_period_bb124, %gate3_each_pals_period___VERIFIER_assume.exit
  %"356" = load i8* @"'g3v_new", align 1
  br label %gate3_each_pals_period_bb126

gate3_each_pals_period_bb126:                     ; preds = %gate3_each_pals_period_bb124, %gate3_each_pals_period_bb125
  %.sink1 = phi i8 [ %"356", %gate3_each_pals_period_bb125 ], [ %"336", %gate3_each_pals_period_bb124 ]
  %"357" = sext i8 %.sink1 to i32
  %"358" = trunc i32 %"357" to i8
  store i8 %"358", i8* @"'g3v_new", align 1
  br label %gate3_each_pals_period_bb127

gate3_each_pals_period_bb127:                     ; preds = %gate3_each_pals_period_bb126, %gate3_each_pals_period_bb119
  ret void
}

; Function Attrs: nounwind uwtable
define void @voter() #0 {
voter_bb128:
  %"359" = load i8* @"'g1v_old", align 1
  store i8 %"359", i8* @"'VALUE1", align 1
  %"360" = load i8* @"'nomsg", align 1
  store i8 %"360", i8* @"'g1v_old", align 1
  %"361" = load i8* @"'g2v_old", align 1
  store i8 %"361", i8* @"'VALUE2", align 1
  %"362" = load i8* @"'nomsg", align 1
  store i8 %"362", i8* @"'g2v_old", align 1
  %"363" = load i8* @"'g3v_old", align 1
  store i8 %"363", i8* @"'VALUE3", align 1
  %"364" = load i8* @"'nomsg", align 1
  store i8 %"364", i8* @"'g3v_old", align 1
  %"365" = load i8* @"'VALUE1", align 1
  %"366" = sext i8 %"365" to i32
  %"367" = load i8* @"'VALUE2", align 1
  %"368" = sext i8 %"367" to i32
  %"369" = icmp eq i32 %"366", %"368"
  %"370" = load i8* @"'VALUE1", align 1
  br i1 %"369", label %voter_bb139, label %voter_bb129

voter_bb129:                                      ; preds = %voter_bb128
  %"371" = sext i8 %"370" to i32
  %"372" = load i8* @"'VALUE3", align 1
  %"373" = sext i8 %"372" to i32
  %"374" = icmp eq i32 %"371", %"373"
  br i1 %"374", label %voter_bb130, label %voter_bb131

voter_bb130:                                      ; preds = %voter_bb129
  %"375" = load i8* @"'VALUE1", align 1
  %"376" = sext i8 %"375" to i32
  %"377" = load i8* @"'nomsg", align 1
  %"378" = sext i8 %"377" to i32
  %"379" = icmp eq i32 %"376", %"378"
  %"380" = load i8* @"'VALUE2", align 1
  %"381" = load i8* @"'VALUE1", align 1
  %voted_value.0 = select i1 %"379", i8 %"380", i8 %"381"
  br label %voter_bb139

voter_bb131:                                      ; preds = %voter_bb129
  %"382" = load i8* @"'VALUE2", align 1
  %"383" = sext i8 %"382" to i32
  %"384" = load i8* @"'VALUE3", align 1
  %"385" = sext i8 %"384" to i32
  %"386" = icmp eq i32 %"383", %"385"
  br i1 %"386", label %voter_bb132, label %voter_bb133

voter_bb132:                                      ; preds = %voter_bb131
  %"387" = load i8* @"'VALUE2", align 1
  %"388" = sext i8 %"387" to i32
  %"389" = load i8* @"'nomsg", align 1
  %"390" = sext i8 %"389" to i32
  %"391" = icmp eq i32 %"388", %"390"
  %"392" = load i8* @"'VALUE1", align 1
  %"393" = load i8* @"'VALUE2", align 1
  %voted_value.1 = select i1 %"391", i8 %"392", i8 %"393"
  br label %voter_bb139

voter_bb133:                                      ; preds = %voter_bb131
  %"394" = load i8* @"'VALUE1", align 1
  %"395" = sext i8 %"394" to i32
  %"396" = load i8* @"'nomsg", align 1
  %"397" = sext i8 %"396" to i32
  %"398" = icmp ne i32 %"395", %"397"
  br i1 %"398", label %voter_bb134, label %voter_bb135

voter_bb134:                                      ; preds = %voter_bb133
  %"399" = load i8* @"'VALUE1", align 1
  br label %voter_bb139

voter_bb135:                                      ; preds = %voter_bb133
  %"400" = load i8* @"'VALUE2", align 1
  %"401" = sext i8 %"400" to i32
  %"402" = load i8* @"'nomsg", align 1
  %"403" = sext i8 %"402" to i32
  %"404" = icmp ne i32 %"401", %"403"
  br i1 %"404", label %voter_bb136, label %voter_bb137

voter_bb136:                                      ; preds = %voter_bb135
  %"405" = load i8* @"'VALUE2", align 1
  br label %voter_bb139

voter_bb137:                                      ; preds = %voter_bb135
  %"406" = load i8* @"'VALUE3", align 1
  %"407" = sext i8 %"406" to i32
  %"408" = load i8* @"'nomsg", align 1
  %"409" = sext i8 %"408" to i32
  %"410" = icmp ne i32 %"407", %"409"
  br i1 %"410", label %voter_bb138, label %voter_bb140

voter_bb138:                                      ; preds = %voter_bb137
  %"411" = load i8* @"'VALUE3", align 1
  br label %voter_bb139

voter_bb139:                                      ; preds = %voter_bb130, %voter_bb134, %voter_bb138, %voter_bb136, %voter_bb132, %voter_bb128
  %voted_value.6 = phi i8 [ %"370", %voter_bb128 ], [ %voted_value.0, %voter_bb130 ], [ %voted_value.1, %voter_bb132 ], [ %"399", %voter_bb134 ], [ %"405", %voter_bb136 ], [ %"411", %voter_bb138 ]
  %"412" = load i8* @"'votedValue_History_1", align 1
  store i8 %"412", i8* @"'votedValue_History_2", align 1
  %"413" = load i8* @"'votedValue_History_0", align 1
  store i8 %"413", i8* @"'votedValue_History_1", align 1
  store i8 %voted_value.6, i8* @"'votedValue_History_0", align 1
  ret void

voter_bb140:                                      ; preds = %voter_bb137
  call void (...)* @__VERIFIER_error() #3
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb141:
  %"414" = call zeroext i1 @__VERIFIER_nondet__Bool()
  %"415" = zext i1 %"414" to i8
  store i8 %"415", i8* @"'gate1Failed", align 1
  %"416" = call zeroext i1 @__VERIFIER_nondet__Bool()
  %"417" = zext i1 %"416" to i8
  store i8 %"417", i8* @"'gate2Failed", align 1
  %"418" = call zeroext i1 @__VERIFIER_nondet__Bool()
  %"419" = zext i1 %"418" to i8
  store i8 %"419", i8* @"'gate3Failed", align 1
  %"420" = call signext i8 @__VERIFIER_nondet_msg_t()
  store i8 %"420", i8* @"'VALUE1", align 1
  %"421" = call signext i8 @__VERIFIER_nondet_msg_t()
  store i8 %"421", i8* @"'VALUE2", align 1
  %"422" = call signext i8 @__VERIFIER_nondet_msg_t()
  store i8 %"422", i8* @"'VALUE3", align 1
  %"423" = call zeroext i1 @__VERIFIER_nondet__Bool()
  %"424" = zext i1 %"423" to i8
  store i8 %"424", i8* @"'gate1Failed_History_0", align 1
  %"425" = call zeroext i1 @__VERIFIER_nondet__Bool()
  %"426" = zext i1 %"425" to i8
  store i8 %"426", i8* @"'gate1Failed_History_1", align 1
  %"427" = call zeroext i1 @__VERIFIER_nondet__Bool()
  %"428" = zext i1 %"427" to i8
  store i8 %"428", i8* @"'gate1Failed_History_2", align 1
  %"429" = call zeroext i1 @__VERIFIER_nondet__Bool()
  %"430" = zext i1 %"429" to i8
  store i8 %"430", i8* @"'gate2Failed_History_0", align 1
  %"431" = call zeroext i1 @__VERIFIER_nondet__Bool()
  %"432" = zext i1 %"431" to i8
  store i8 %"432", i8* @"'gate2Failed_History_1", align 1
  %"433" = call zeroext i1 @__VERIFIER_nondet__Bool()
  %"434" = zext i1 %"433" to i8
  store i8 %"434", i8* @"'gate2Failed_History_2", align 1
  %"435" = call zeroext i1 @__VERIFIER_nondet__Bool()
  %"436" = zext i1 %"435" to i8
  store i8 %"436", i8* @"'gate3Failed_History_0", align 1
  %"437" = call zeroext i1 @__VERIFIER_nondet__Bool()
  %"438" = zext i1 %"437" to i8
  store i8 %"438", i8* @"'gate3Failed_History_1", align 1
  %"439" = call zeroext i1 @__VERIFIER_nondet__Bool()
  %"440" = zext i1 %"439" to i8
  store i8 %"440", i8* @"'gate3Failed_History_2", align 1
  %"441" = call signext i8 (...)* @__VERIFIER_nondet_int8_t()
  store i8 %"441", i8* @"'votedValue_History_0", align 1
  %"442" = call signext i8 (...)* @__VERIFIER_nondet_int8_t()
  store i8 %"442", i8* @"'votedValue_History_1", align 1
  %"443" = call signext i8 (...)* @__VERIFIER_nondet_int8_t()
  store i8 %"443", i8* @"'votedValue_History_2", align 1
  %"444" = load i8* @"'gate1Failed_History_0", align 1
  %"445" = trunc i8 %"444" to i1
  %"446" = zext i1 %"445" to i32
  br label %main_bb142

main_bb142:                                       ; preds = %main_bb144, %main_bb141
  %var.0.i.i = phi i32 [ 0, %main_bb141 ], [ %"449", %main_bb144 ]
  %"447" = icmp slt i32 %var.0.i.i, 3
  br i1 %"447", label %main_bb143, label %main_add_history_type.exit.i

main_bb143:                                       ; preds = %main_bb142
  %"448" = icmp eq i32 %"446", 0
  br i1 %"448", label %main_bb144, label %main_add_history_type.exit.i

main_bb144:                                       ; preds = %main_bb143
  %"449" = add nsw i32 %var.0.i.i, 1
  br label %main_bb142

main_add_history_type.exit.i:                     ; preds = %main_bb143, %main_bb142
  %.0.i.i = phi i32 [ 0, %main_bb143 ], [ 1, %main_bb142 ]
  %"450" = icmp ne i32 %.0.i.i, 0
  br i1 %"450", label %main_bb145, label %main_init.exit

main_bb145:                                       ; preds = %main_add_history_type.exit.i
  %"451" = load i8* @"'gate2Failed_History_0", align 1
  %"452" = trunc i8 %"451" to i1
  %"453" = zext i1 %"452" to i32
  br label %main_bb146

main_bb146:                                       ; preds = %main_bb148, %main_bb145
  %var.0.i7.i = phi i32 [ 0, %main_bb145 ], [ %"456", %main_bb148 ]
  %"454" = icmp slt i32 %var.0.i7.i, 3
  br i1 %"454", label %main_bb147, label %main_add_history_type.exit9.i

main_bb147:                                       ; preds = %main_bb146
  %"455" = icmp eq i32 %"453", 0
  br i1 %"455", label %main_bb148, label %main_add_history_type.exit9.i

main_bb148:                                       ; preds = %main_bb147
  %"456" = add nsw i32 %var.0.i7.i, 1
  br label %main_bb146

main_add_history_type.exit9.i:                    ; preds = %main_bb147, %main_bb146
  %.0.i8.i = phi i32 [ 0, %main_bb147 ], [ 1, %main_bb146 ]
  %"457" = icmp ne i32 %.0.i8.i, 0
  br i1 %"457", label %main_bb149, label %main_init.exit

main_bb149:                                       ; preds = %main_add_history_type.exit9.i
  %"458" = load i8* @"'gate3Failed_History_0", align 1
  %"459" = trunc i8 %"458" to i1
  %"460" = zext i1 %"459" to i32
  br label %main_bb150

main_bb150:                                       ; preds = %main_bb152, %main_bb149
  %var.0.i4.i = phi i32 [ 0, %main_bb149 ], [ %"463", %main_bb152 ]
  %"461" = icmp slt i32 %var.0.i4.i, 3
  br i1 %"461", label %main_bb151, label %main_add_history_type.exit6.i

main_bb151:                                       ; preds = %main_bb150
  %"462" = icmp eq i32 %"460", 0
  br i1 %"462", label %main_bb152, label %main_add_history_type.exit6.i

main_bb152:                                       ; preds = %main_bb151
  %"463" = add nsw i32 %var.0.i4.i, 1
  br label %main_bb150

main_add_history_type.exit6.i:                    ; preds = %main_bb151, %main_bb150
  %.0.i5.i = phi i32 [ 0, %main_bb151 ], [ 1, %main_bb150 ]
  %"464" = icmp ne i32 %.0.i5.i, 0
  br i1 %"464", label %main_bb153, label %main_init.exit

main_bb153:                                       ; preds = %main_add_history_type.exit6.i
  %"465" = load i8* @"'votedValue_History_0", align 1
  %"466" = sext i8 %"465" to i32
  br label %main_bb154

main_bb154:                                       ; preds = %main_bb156, %main_bb153
  %var.0.i1.i = phi i32 [ 0, %main_bb153 ], [ %"469", %main_bb156 ]
  %"467" = icmp slt i32 %var.0.i1.i, 3
  br i1 %"467", label %main_bb155, label %main_add_history_type.exit3.i

main_bb155:                                       ; preds = %main_bb154
  %"468" = icmp eq i32 %"466", -2
  br i1 %"468", label %main_bb156, label %main_add_history_type.exit3.i

main_bb156:                                       ; preds = %main_bb155
  %"469" = add nsw i32 %var.0.i1.i, 1
  br label %main_bb154

main_add_history_type.exit3.i:                    ; preds = %main_bb155, %main_bb154
  %.0.i2.i = phi i32 [ 0, %main_bb155 ], [ 1, %main_bb154 ]
  %"470" = icmp ne i32 %.0.i2.i, 0
  %..i = select i1 %"470", i32 1, i32 0
  br label %main_init.exit

main_init.exit:                                   ; preds = %main_add_history_type.exit.i, %main_add_history_type.exit9.i, %main_add_history_type.exit6.i, %main_add_history_type.exit3.i
  %.0.i = phi i32 [ 0, %main_add_history_type.exit.i ], [ 0, %main_add_history_type.exit9.i ], [ 0, %main_add_history_type.exit6.i ], [ %..i, %main_add_history_type.exit3.i ]
  %"471" = icmp ne i32 %.0.i, 0
  %"472" = zext i1 %"471" to i8
  %"473" = trunc i8 %"472" to i1
  br label %main_bb157

main_bb157:                                       ; preds = %main_bb157, %main_init.exit
  %"474" = xor i1 %"473", true
  br i1 %"474", label %main_bb157, label %main___VERIFIER_assume.exit

main___VERIFIER_assume.exit:                      ; preds = %main_bb157
  %"475" = load i8* @"'nomsg", align 1
  store i8 %"475", i8* @"'g1v_old", align 1
  %"476" = load i8* @"'nomsg", align 1
  store i8 %"476", i8* @"'g1v_new", align 1
  %"477" = load i8* @"'nomsg", align 1
  store i8 %"477", i8* @"'g2v_old", align 1
  %"478" = load i8* @"'nomsg", align 1
  store i8 %"478", i8* @"'g2v_new", align 1
  %"479" = load i8* @"'nomsg", align 1
  store i8 %"479", i8* @"'g3v_old", align 1
  %"480" = load i8* @"'nomsg", align 1
  store i8 %"480", i8* @"'g3v_new", align 1
  br label %main_bb158

main_bb158:                                       ; preds = %main_assert.exit, %main___VERIFIER_assume.exit
  %i2.0 = phi i32 [ 0, %main___VERIFIER_assume.exit ], [ %"798", %main_assert.exit ]
  %"481" = icmp slt i32 %i2.0, 10
  br i1 %"481", label %main_bb159, label %main_bb229

main_bb159:                                       ; preds = %main_bb158
  %"482" = call zeroext i1 (...)* @__VERIFIER_nondet_bool() #5
  %"483" = zext i1 %"482" to i8
  store i8 %"483", i8* @"'gate1Failed", align 1
  %"484" = load i8* @"'gate1Failed", align 1
  %"485" = trunc i8 %"484" to i1
  %"486" = zext i1 %"485" to i8
  %"487" = load i8* @"'gate1Failed_History_1", align 1
  %"488" = trunc i8 %"487" to i1
  %"489" = zext i1 %"488" to i8
  store i8 %"489", i8* @"'gate1Failed_History_2", align 1
  %"490" = load i8* @"'gate1Failed_History_0", align 1
  %"491" = trunc i8 %"490" to i1
  %"492" = zext i1 %"491" to i8
  store i8 %"492", i8* @"'gate1Failed_History_1", align 1
  %"493" = trunc i8 %"486" to i1
  %"494" = zext i1 %"493" to i8
  store i8 %"494", i8* @"'gate1Failed_History_0", align 1
  %"495" = load i8* @"'gate1Failed", align 1
  %"496" = trunc i8 %"495" to i1
  br i1 %"496", label %main_bb160, label %main_bb165

main_bb160:                                       ; preds = %main_bb159
  %"497" = load i8* @"'nomsg", align 1
  %"498" = sext i8 %"497" to i32
  %"499" = load i8* @"'nomsg", align 1
  %"500" = sext i8 %"499" to i32
  %"501" = icmp ne i32 %"498", %"500"
  br i1 %"501", label %main_bb161, label %main_bb163

main_bb161:                                       ; preds = %main_bb160
  %"502" = load i8* @"'g1v_new", align 1
  %"503" = sext i8 %"502" to i32
  %"504" = load i8* @"'nomsg", align 1
  %"505" = sext i8 %"504" to i32
  %"506" = icmp eq i32 %"503", %"505"
  br i1 %"506", label %main_bb162, label %main_bb163

main_bb162:                                       ; preds = %main_bb161
  %"507" = load i8* @"'nomsg", align 1
  br label %main_bb164

main_bb163:                                       ; preds = %main_bb161, %main_bb160
  %"508" = load i8* @"'g1v_new", align 1
  br label %main_bb164

main_bb164:                                       ; preds = %main_bb163, %main_bb162
  %.sink.i = phi i8 [ %"507", %main_bb162 ], [ %"508", %main_bb163 ]
  %"509" = sext i8 %.sink.i to i32
  %"510" = trunc i32 %"509" to i8
  store i8 %"510", i8* @"'g1v_new", align 1
  br label %main_gate1_each_pals_period.exit

main_bb165:                                       ; preds = %main_bb159
  %"511" = call signext i8 (...)* @__VERIFIER_nondet_int8_t() #5
  %"512" = sext i8 %"511" to i32
  %"513" = icmp eq i32 %"512", 0
  %"514" = sext i8 %"511" to i32
  %"515" = icmp eq i32 %"514", 1
  %or.cond.i = or i1 %"513", %"515"
  br i1 %or.cond.i, label %main_bb167, label %main_bb166

main_bb166:                                       ; preds = %main_bb165
  %"516" = sext i8 %"511" to i32
  %"517" = icmp eq i32 %"516", 2
  %..i3 = select i1 %"517", i32 1, i32 0
  br label %main_bb167

main_bb167:                                       ; preds = %main_bb166, %main_bb165
  %tmp___0.2.i = phi i32 [ 1, %main_bb165 ], [ %..i3, %main_bb166 ]
  %"518" = icmp ne i32 %tmp___0.2.i, 0
  %"519" = zext i1 %"518" to i8
  %"520" = trunc i8 %"519" to i1
  br label %main_bb168

main_bb168:                                       ; preds = %main_bb168, %main_bb167
  %"521" = xor i1 %"520", true
  br i1 %"521", label %main_bb168, label %main___VERIFIER_assume.exit.i4

main___VERIFIER_assume.exit.i4:                   ; preds = %main_bb168
  %"522" = sext i8 %"511" to i32
  %"523" = load i8* @"'nomsg", align 1
  %"524" = sext i8 %"523" to i32
  %"525" = icmp ne i32 %"522", %"524"
  br i1 %"525", label %main_bb169, label %main_bb170

main_bb169:                                       ; preds = %main___VERIFIER_assume.exit.i4
  %"526" = load i8* @"'g1v_new", align 1
  %"527" = sext i8 %"526" to i32
  %"528" = load i8* @"'nomsg", align 1
  %"529" = sext i8 %"528" to i32
  %"530" = icmp eq i32 %"527", %"529"
  br i1 %"530", label %main_bb171, label %main_bb170

main_bb170:                                       ; preds = %main_bb169, %main___VERIFIER_assume.exit.i4
  %"531" = load i8* @"'g1v_new", align 1
  br label %main_bb171

main_bb171:                                       ; preds = %main_bb170, %main_bb169
  %.sink1.i = phi i8 [ %"531", %main_bb170 ], [ %"511", %main_bb169 ]
  %"532" = sext i8 %.sink1.i to i32
  %"533" = trunc i32 %"532" to i8
  store i8 %"533", i8* @"'g1v_new", align 1
  br label %main_gate1_each_pals_period.exit

main_gate1_each_pals_period.exit:                 ; preds = %main_bb164, %main_bb171
  %"534" = call zeroext i1 (...)* @__VERIFIER_nondet_bool() #5
  %"535" = zext i1 %"534" to i8
  store i8 %"535", i8* @"'gate2Failed", align 1
  %"536" = load i8* @"'gate2Failed", align 1
  %"537" = trunc i8 %"536" to i1
  %"538" = zext i1 %"537" to i8
  %"539" = load i8* @"'gate2Failed_History_1", align 1
  %"540" = trunc i8 %"539" to i1
  %"541" = zext i1 %"540" to i8
  store i8 %"541", i8* @"'gate2Failed_History_2", align 1
  %"542" = load i8* @"'gate2Failed_History_0", align 1
  %"543" = trunc i8 %"542" to i1
  %"544" = zext i1 %"543" to i8
  store i8 %"544", i8* @"'gate2Failed_History_1", align 1
  %"545" = trunc i8 %"538" to i1
  %"546" = zext i1 %"545" to i8
  store i8 %"546", i8* @"'gate2Failed_History_0", align 1
  %"547" = load i8* @"'gate2Failed", align 1
  %"548" = trunc i8 %"547" to i1
  br i1 %"548", label %main_bb172, label %main_bb177

main_bb172:                                       ; preds = %main_gate1_each_pals_period.exit
  %"549" = load i8* @"'nomsg", align 1
  %"550" = sext i8 %"549" to i32
  %"551" = load i8* @"'nomsg", align 1
  %"552" = sext i8 %"551" to i32
  %"553" = icmp ne i32 %"550", %"552"
  br i1 %"553", label %main_bb173, label %main_bb175

main_bb173:                                       ; preds = %main_bb172
  %"554" = load i8* @"'g2v_new", align 1
  %"555" = sext i8 %"554" to i32
  %"556" = load i8* @"'nomsg", align 1
  %"557" = sext i8 %"556" to i32
  %"558" = icmp eq i32 %"555", %"557"
  br i1 %"558", label %main_bb174, label %main_bb175

main_bb174:                                       ; preds = %main_bb173
  %"559" = load i8* @"'nomsg", align 1
  br label %main_bb176

main_bb175:                                       ; preds = %main_bb173, %main_bb172
  %"560" = load i8* @"'g2v_new", align 1
  br label %main_bb176

main_bb176:                                       ; preds = %main_bb175, %main_bb174
  %.sink.i5 = phi i8 [ %"559", %main_bb174 ], [ %"560", %main_bb175 ]
  %"561" = sext i8 %.sink.i5 to i32
  %"562" = trunc i32 %"561" to i8
  store i8 %"562", i8* @"'g2v_new", align 1
  br label %main_gate2_each_pals_period.exit

main_bb177:                                       ; preds = %main_gate1_each_pals_period.exit
  %"563" = call signext i8 (...)* @__VERIFIER_nondet_int8_t() #5
  %"564" = sext i8 %"563" to i32
  %"565" = icmp eq i32 %"564", 0
  %"566" = sext i8 %"563" to i32
  %"567" = icmp eq i32 %"566", 1
  %or.cond.i6 = or i1 %"565", %"567"
  br i1 %or.cond.i6, label %main_bb179, label %main_bb178

main_bb178:                                       ; preds = %main_bb177
  %"568" = sext i8 %"563" to i32
  %"569" = icmp eq i32 %"568", 2
  %..i7 = select i1 %"569", i32 1, i32 0
  br label %main_bb179

main_bb179:                                       ; preds = %main_bb178, %main_bb177
  %tmp___0.2.i8 = phi i32 [ 1, %main_bb177 ], [ %..i7, %main_bb178 ]
  %"570" = icmp ne i32 %tmp___0.2.i8, 0
  %"571" = zext i1 %"570" to i8
  %"572" = trunc i8 %"571" to i1
  br label %main_bb180

main_bb180:                                       ; preds = %main_bb180, %main_bb179
  %"573" = xor i1 %"572", true
  br i1 %"573", label %main_bb180, label %main___VERIFIER_assume.exit.i9

main___VERIFIER_assume.exit.i9:                   ; preds = %main_bb180
  %"574" = sext i8 %"563" to i32
  %"575" = load i8* @"'nomsg", align 1
  %"576" = sext i8 %"575" to i32
  %"577" = icmp ne i32 %"574", %"576"
  br i1 %"577", label %main_bb181, label %main_bb182

main_bb181:                                       ; preds = %main___VERIFIER_assume.exit.i9
  %"578" = load i8* @"'g2v_new", align 1
  %"579" = sext i8 %"578" to i32
  %"580" = load i8* @"'nomsg", align 1
  %"581" = sext i8 %"580" to i32
  %"582" = icmp eq i32 %"579", %"581"
  br i1 %"582", label %main_bb183, label %main_bb182

main_bb182:                                       ; preds = %main_bb181, %main___VERIFIER_assume.exit.i9
  %"583" = load i8* @"'g2v_new", align 1
  br label %main_bb183

main_bb183:                                       ; preds = %main_bb182, %main_bb181
  %.sink1.i10 = phi i8 [ %"583", %main_bb182 ], [ %"563", %main_bb181 ]
  %"584" = sext i8 %.sink1.i10 to i32
  %"585" = trunc i32 %"584" to i8
  store i8 %"585", i8* @"'g2v_new", align 1
  br label %main_gate2_each_pals_period.exit

main_gate2_each_pals_period.exit:                 ; preds = %main_bb176, %main_bb183
  %"586" = call zeroext i1 (...)* @__VERIFIER_nondet_bool() #5
  %"587" = zext i1 %"586" to i8
  store i8 %"587", i8* @"'gate3Failed", align 1
  %"588" = load i8* @"'gate3Failed", align 1
  %"589" = trunc i8 %"588" to i1
  %"590" = zext i1 %"589" to i8
  %"591" = load i8* @"'gate3Failed_History_1", align 1
  %"592" = trunc i8 %"591" to i1
  %"593" = zext i1 %"592" to i8
  store i8 %"593", i8* @"'gate3Failed_History_2", align 1
  %"594" = load i8* @"'gate3Failed_History_0", align 1
  %"595" = trunc i8 %"594" to i1
  %"596" = zext i1 %"595" to i8
  store i8 %"596", i8* @"'gate3Failed_History_1", align 1
  %"597" = trunc i8 %"590" to i1
  %"598" = zext i1 %"597" to i8
  store i8 %"598", i8* @"'gate3Failed_History_0", align 1
  %"599" = load i8* @"'gate3Failed", align 1
  %"600" = trunc i8 %"599" to i1
  br i1 %"600", label %main_bb184, label %main_bb189

main_bb184:                                       ; preds = %main_gate2_each_pals_period.exit
  %"601" = load i8* @"'nomsg", align 1
  %"602" = sext i8 %"601" to i32
  %"603" = load i8* @"'nomsg", align 1
  %"604" = sext i8 %"603" to i32
  %"605" = icmp ne i32 %"602", %"604"
  br i1 %"605", label %main_bb185, label %main_bb187

main_bb185:                                       ; preds = %main_bb184
  %"606" = load i8* @"'g3v_new", align 1
  %"607" = sext i8 %"606" to i32
  %"608" = load i8* @"'nomsg", align 1
  %"609" = sext i8 %"608" to i32
  %"610" = icmp eq i32 %"607", %"609"
  br i1 %"610", label %main_bb186, label %main_bb187

main_bb186:                                       ; preds = %main_bb185
  %"611" = load i8* @"'nomsg", align 1
  br label %main_bb188

main_bb187:                                       ; preds = %main_bb185, %main_bb184
  %"612" = load i8* @"'g3v_new", align 1
  br label %main_bb188

main_bb188:                                       ; preds = %main_bb187, %main_bb186
  %.sink.i11 = phi i8 [ %"611", %main_bb186 ], [ %"612", %main_bb187 ]
  %"613" = sext i8 %.sink.i11 to i32
  %"614" = trunc i32 %"613" to i8
  store i8 %"614", i8* @"'g3v_new", align 1
  br label %main_gate3_each_pals_period.exit

main_bb189:                                       ; preds = %main_gate2_each_pals_period.exit
  %"615" = call signext i8 (...)* @__VERIFIER_nondet_int8_t() #5
  %"616" = sext i8 %"615" to i32
  %"617" = icmp eq i32 %"616", 0
  %"618" = sext i8 %"615" to i32
  %"619" = icmp eq i32 %"618", 1
  %or.cond.i12 = or i1 %"617", %"619"
  br i1 %or.cond.i12, label %main_bb191, label %main_bb190

main_bb190:                                       ; preds = %main_bb189
  %"620" = sext i8 %"615" to i32
  %"621" = icmp eq i32 %"620", 2
  %..i13 = select i1 %"621", i32 1, i32 0
  br label %main_bb191

main_bb191:                                       ; preds = %main_bb190, %main_bb189
  %tmp___0.2.i14 = phi i32 [ 1, %main_bb189 ], [ %..i13, %main_bb190 ]
  %"622" = icmp ne i32 %tmp___0.2.i14, 0
  %"623" = zext i1 %"622" to i8
  %"624" = trunc i8 %"623" to i1
  br label %main_bb192

main_bb192:                                       ; preds = %main_bb192, %main_bb191
  %"625" = xor i1 %"624", true
  br i1 %"625", label %main_bb192, label %main___VERIFIER_assume.exit.i15

main___VERIFIER_assume.exit.i15:                  ; preds = %main_bb192
  %"626" = sext i8 %"615" to i32
  %"627" = load i8* @"'nomsg", align 1
  %"628" = sext i8 %"627" to i32
  %"629" = icmp ne i32 %"626", %"628"
  br i1 %"629", label %main_bb193, label %main_bb194

main_bb193:                                       ; preds = %main___VERIFIER_assume.exit.i15
  %"630" = load i8* @"'g3v_new", align 1
  %"631" = sext i8 %"630" to i32
  %"632" = load i8* @"'nomsg", align 1
  %"633" = sext i8 %"632" to i32
  %"634" = icmp eq i32 %"631", %"633"
  br i1 %"634", label %main_bb195, label %main_bb194

main_bb194:                                       ; preds = %main_bb193, %main___VERIFIER_assume.exit.i15
  %"635" = load i8* @"'g3v_new", align 1
  br label %main_bb195

main_bb195:                                       ; preds = %main_bb194, %main_bb193
  %.sink1.i16 = phi i8 [ %"635", %main_bb194 ], [ %"615", %main_bb193 ]
  %"636" = sext i8 %.sink1.i16 to i32
  %"637" = trunc i32 %"636" to i8
  store i8 %"637", i8* @"'g3v_new", align 1
  br label %main_gate3_each_pals_period.exit

main_gate3_each_pals_period.exit:                 ; preds = %main_bb188, %main_bb195
  %"638" = load i8* @"'g1v_old", align 1
  store i8 %"638", i8* @"'VALUE1", align 1
  %"639" = load i8* @"'nomsg", align 1
  store i8 %"639", i8* @"'g1v_old", align 1
  %"640" = load i8* @"'g2v_old", align 1
  store i8 %"640", i8* @"'VALUE2", align 1
  %"641" = load i8* @"'nomsg", align 1
  store i8 %"641", i8* @"'g2v_old", align 1
  %"642" = load i8* @"'g3v_old", align 1
  store i8 %"642", i8* @"'VALUE3", align 1
  %"643" = load i8* @"'nomsg", align 1
  store i8 %"643", i8* @"'g3v_old", align 1
  %"644" = load i8* @"'VALUE1", align 1
  %"645" = sext i8 %"644" to i32
  %"646" = load i8* @"'VALUE2", align 1
  %"647" = sext i8 %"646" to i32
  %"648" = icmp eq i32 %"645", %"647"
  %"649" = load i8* @"'VALUE1", align 1
  br i1 %"648", label %main_voter.exit, label %main_bb196

main_bb196:                                       ; preds = %main_gate3_each_pals_period.exit
  %"650" = sext i8 %"649" to i32
  %"651" = load i8* @"'VALUE3", align 1
  %"652" = sext i8 %"651" to i32
  %"653" = icmp eq i32 %"650", %"652"
  br i1 %"653", label %main_bb197, label %main_bb198

main_bb197:                                       ; preds = %main_bb196
  %"654" = load i8* @"'VALUE1", align 1
  %"655" = sext i8 %"654" to i32
  %"656" = load i8* @"'nomsg", align 1
  %"657" = sext i8 %"656" to i32
  %"658" = icmp eq i32 %"655", %"657"
  %"659" = load i8* @"'VALUE2", align 1
  %"660" = load i8* @"'VALUE1", align 1
  %voted_value.0.i = select i1 %"658", i8 %"659", i8 %"660"
  br label %main_voter.exit

main_bb198:                                       ; preds = %main_bb196
  %"661" = load i8* @"'VALUE2", align 1
  %"662" = sext i8 %"661" to i32
  %"663" = load i8* @"'VALUE3", align 1
  %"664" = sext i8 %"663" to i32
  %"665" = icmp eq i32 %"662", %"664"
  br i1 %"665", label %main_bb199, label %main_bb200

main_bb199:                                       ; preds = %main_bb198
  %"666" = load i8* @"'VALUE2", align 1
  %"667" = sext i8 %"666" to i32
  %"668" = load i8* @"'nomsg", align 1
  %"669" = sext i8 %"668" to i32
  %"670" = icmp eq i32 %"667", %"669"
  %"671" = load i8* @"'VALUE1", align 1
  %"672" = load i8* @"'VALUE2", align 1
  %voted_value.1.i = select i1 %"670", i8 %"671", i8 %"672"
  br label %main_voter.exit

main_bb200:                                       ; preds = %main_bb198
  %"673" = load i8* @"'VALUE1", align 1
  %"674" = sext i8 %"673" to i32
  %"675" = load i8* @"'nomsg", align 1
  %"676" = sext i8 %"675" to i32
  %"677" = icmp ne i32 %"674", %"676"
  br i1 %"677", label %main_bb201, label %main_bb202

main_bb201:                                       ; preds = %main_bb200
  %"678" = load i8* @"'VALUE1", align 1
  br label %main_voter.exit

main_bb202:                                       ; preds = %main_bb200
  %"679" = load i8* @"'VALUE2", align 1
  %"680" = sext i8 %"679" to i32
  %"681" = load i8* @"'nomsg", align 1
  %"682" = sext i8 %"681" to i32
  %"683" = icmp ne i32 %"680", %"682"
  br i1 %"683", label %main_bb203, label %main_bb204

main_bb203:                                       ; preds = %main_bb202
  %"684" = load i8* @"'VALUE2", align 1
  br label %main_voter.exit

main_bb204:                                       ; preds = %main_bb202
  %"685" = load i8* @"'VALUE3", align 1
  %"686" = sext i8 %"685" to i32
  %"687" = load i8* @"'nomsg", align 1
  %"688" = sext i8 %"687" to i32
  %"689" = icmp ne i32 %"686", %"688"
  br i1 %"689", label %main_bb205, label %main_bb228

main_bb205:                                       ; preds = %main_bb204
  %"690" = load i8* @"'VALUE3", align 1
  br label %main_voter.exit

main_voter.exit:                                  ; preds = %main_gate3_each_pals_period.exit, %main_bb197, %main_bb199, %main_bb201, %main_bb203, %main_bb205
  %voted_value.6.i = phi i8 [ %"649", %main_gate3_each_pals_period.exit ], [ %voted_value.0.i, %main_bb197 ], [ %voted_value.1.i, %main_bb199 ], [ %"678", %main_bb201 ], [ %"684", %main_bb203 ], [ %"690", %main_bb205 ]
  %"691" = load i8* @"'votedValue_History_1", align 1
  store i8 %"691", i8* @"'votedValue_History_2", align 1
  %"692" = load i8* @"'votedValue_History_0", align 1
  store i8 %"692", i8* @"'votedValue_History_1", align 1
  store i8 %voted_value.6.i, i8* @"'votedValue_History_0", align 1
  %"693" = load i8* @"'g1v_new", align 1
  store i8 %"693", i8* @"'g1v_old", align 1
  %"694" = load i8* @"'nomsg", align 1
  store i8 %"694", i8* @"'g1v_new", align 1
  %"695" = load i8* @"'g2v_new", align 1
  store i8 %"695", i8* @"'g2v_old", align 1
  %"696" = load i8* @"'nomsg", align 1
  store i8 %"696", i8* @"'g2v_new", align 1
  %"697" = load i8* @"'g3v_new", align 1
  store i8 %"697", i8* @"'g3v_old", align 1
  %"698" = load i8* @"'nomsg", align 1
  store i8 %"698", i8* @"'g3v_new", align 1
  %"699" = load i8* @"'gate1Failed", align 1
  %"700" = trunc i8 %"699" to i1
  br i1 %"700", label %main_bb206, label %main_bb208

main_bb206:                                       ; preds = %main_voter.exit
  %"701" = load i8* @"'gate2Failed", align 1
  %"702" = trunc i8 %"701" to i1
  br i1 %"702", label %main_bb207, label %main_bb208

main_bb207:                                       ; preds = %main_bb206
  %"703" = load i8* @"'gate3Failed", align 1
  %"704" = trunc i8 %"703" to i1
  %..i1 = select i1 %"704", i32 0, i32 1
  br label %main_bb208

main_bb208:                                       ; preds = %main_bb207, %main_bb206, %main_voter.exit
  %tmp.2.i = phi i32 [ 1, %main_voter.exit ], [ %..i1, %main_bb207 ], [ 1, %main_bb206 ]
  %"705" = icmp ne i32 %tmp.2.i, 0
  %"706" = zext i1 %"705" to i8
  %"707" = trunc i8 %"706" to i1
  br label %main_bb209

main_bb209:                                       ; preds = %main_bb209, %main_bb208
  %"708" = xor i1 %"707", true
  br i1 %"708", label %main_bb209, label %main___VERIFIER_assume.exit.i

main___VERIFIER_assume.exit.i:                    ; preds = %main_bb209
  %"709" = load i8* @"'gate1Failed_History_1", align 1
  %"710" = trunc i8 %"709" to i1
  %"711" = zext i1 %"710" to i8
  %"712" = trunc i8 %"711" to i1
  br i1 %"712", label %main_bb217, label %main_bb210

main_bb210:                                       ; preds = %main___VERIFIER_assume.exit.i
  %"713" = load i8* @"'gate2Failed_History_1", align 1
  %"714" = trunc i8 %"713" to i1
  %"715" = zext i1 %"714" to i8
  %"716" = trunc i8 %"715" to i1
  br i1 %"716", label %main_bb217, label %main_bb211

main_bb211:                                       ; preds = %main_bb210
  %"717" = load i8* @"'gate3Failed_History_1", align 1
  %"718" = trunc i8 %"717" to i1
  %"719" = zext i1 %"718" to i8
  %"720" = trunc i8 %"719" to i1
  br i1 %"720", label %main_bb217, label %main_bb212

main_bb212:                                       ; preds = %main_bb211
  %"721" = load i8* @"'votedValue_History_0", align 1
  %"722" = load i8* @"'VALUE1", align 1
  %"723" = sext i8 %"722" to i32
  %"724" = sext i8 %"721" to i32
  %"725" = icmp eq i32 %"723", %"724"
  %.1.i = select i1 %"725", i32 1, i32 0
  %"726" = load i8* @"'votedValue_History_0", align 1
  %"727" = load i8* @"'VALUE2", align 1
  %"728" = sext i8 %"727" to i32
  %"729" = sext i8 %"726" to i32
  %"730" = icmp eq i32 %"728", %"729"
  %"731" = add nsw i32 %.1.i, 1
  %temp_count.1.i = select i1 %"730", i32 %"731", i32 %.1.i
  %"732" = load i8* @"'votedValue_History_0", align 1
  %"733" = load i8* @"'VALUE3", align 1
  %"734" = sext i8 %"733" to i32
  %"735" = sext i8 %"732" to i32
  %"736" = icmp eq i32 %"734", %"735"
  %"737" = add nsw i32 %temp_count.1.i, 1
  %.temp_count.1.i = select i1 %"736", i32 %"737", i32 %temp_count.1.i
  %"738" = load i8* @"'VALUE1", align 1
  %"739" = sext i8 %"738" to i32
  %"740" = load i8* @"'VALUE2", align 1
  %"741" = sext i8 %"740" to i32
  %"742" = icmp ne i32 %"739", %"741"
  br i1 %"742", label %main_bb213, label %main_bb216

main_bb213:                                       ; preds = %main_bb212
  %"743" = load i8* @"'VALUE1", align 1
  %"744" = sext i8 %"743" to i32
  %"745" = load i8* @"'VALUE3", align 1
  %"746" = sext i8 %"745" to i32
  %"747" = icmp ne i32 %"744", %"746"
  br i1 %"747", label %main_bb214, label %main_bb216

main_bb214:                                       ; preds = %main_bb213
  %"748" = load i8* @"'VALUE2", align 1
  %"749" = sext i8 %"748" to i32
  %"750" = load i8* @"'VALUE3", align 1
  %"751" = sext i8 %"750" to i32
  %"752" = icmp ne i32 %"749", %"751"
  br i1 %"752", label %main_bb215, label %main_bb216

main_bb215:                                       ; preds = %main_bb214
  %"753" = icmp eq i32 %.temp_count.1.i, 1
  br i1 %"753", label %main_bb217, label %main_check.exit

main_bb216:                                       ; preds = %main_bb214, %main_bb213, %main_bb212
  %"754" = icmp sgt i32 %.temp_count.1.i, 1
  br i1 %"754", label %main_bb217, label %main_check.exit

main_bb217:                                       ; preds = %main_bb216, %main_bb215, %main_bb211, %main_bb210, %main___VERIFIER_assume.exit.i
  %"755" = load i8* @"'votedValue_History_1", align 1
  %"756" = sext i8 %"755" to i32
  %"757" = icmp sgt i32 %"756", -2
  br i1 %"757", label %main_bb218, label %main_bb222

main_bb218:                                       ; preds = %main_bb217
  %"758" = load i8* @"'votedValue_History_0", align 1
  %"759" = sext i8 %"758" to i32
  %"760" = load i8* @"'nomsg", align 1
  %"761" = sext i8 %"760" to i32
  %"762" = icmp eq i32 %"759", %"761"
  br i1 %"762", label %main_bb219, label %main_bb222

main_bb219:                                       ; preds = %main_bb218
  %"763" = load i8* @"'gate1Failed_History_1", align 1
  %"764" = trunc i8 %"763" to i1
  %"765" = zext i1 %"764" to i8
  %"766" = trunc i8 %"765" to i1
  br i1 %"766", label %main_bb220, label %main_check.exit

main_bb220:                                       ; preds = %main_bb219
  %"767" = load i8* @"'gate2Failed_History_1", align 1
  %"768" = trunc i8 %"767" to i1
  %"769" = zext i1 %"768" to i8
  %"770" = trunc i8 %"769" to i1
  br i1 %"770", label %main_bb221, label %main_check.exit

main_bb221:                                       ; preds = %main_bb220
  %"771" = load i8* @"'gate3Failed_History_1", align 1
  %"772" = trunc i8 %"771" to i1
  %"773" = zext i1 %"772" to i8
  %"774" = trunc i8 %"773" to i1
  br i1 %"774", label %main_bb222, label %main_check.exit

main_bb222:                                       ; preds = %main_bb221, %main_bb218, %main_bb217
  %"775" = load i8* @"'votedValue_History_0", align 1
  %"776" = sext i8 %"775" to i32
  %"777" = load i8* @"'nomsg", align 1
  %"778" = sext i8 %"777" to i32
  %"779" = icmp ne i32 %"776", %"778"
  br i1 %"779", label %main_bb223, label %main_bb226

main_bb223:                                       ; preds = %main_bb222
  %"780" = load i8* @"'votedValue_History_0", align 1
  %"781" = load i8* @"'VALUE1", align 1
  %"782" = sext i8 %"781" to i32
  %"783" = sext i8 %"780" to i32
  %"784" = icmp eq i32 %"782", %"783"
  br i1 %"784", label %main_bb226, label %main_bb224

main_bb224:                                       ; preds = %main_bb223
  %"785" = load i8* @"'votedValue_History_0", align 1
  %"786" = load i8* @"'VALUE2", align 1
  %"787" = sext i8 %"786" to i32
  %"788" = sext i8 %"785" to i32
  %"789" = icmp eq i32 %"787", %"788"
  br i1 %"789", label %main_bb226, label %main_bb225

main_bb225:                                       ; preds = %main_bb224
  %"790" = load i8* @"'votedValue_History_0", align 1
  %"791" = load i8* @"'VALUE3", align 1
  %"792" = sext i8 %"791" to i32
  %"793" = sext i8 %"790" to i32
  %"794" = icmp eq i32 %"792", %"793"
  br i1 %"794", label %main_bb226, label %main_check.exit

main_bb226:                                       ; preds = %main_bb225, %main_bb224, %main_bb223, %main_bb222
  br label %main_check.exit

main_check.exit:                                  ; preds = %main_bb215, %main_bb216, %main_bb219, %main_bb220, %main_bb221, %main_bb225, %main_bb226
  %.0.i2 = phi i32 [ 1, %main_bb226 ], [ 0, %main_bb215 ], [ 0, %main_bb216 ], [ 0, %main_bb221 ], [ 0, %main_bb220 ], [ 0, %main_bb219 ], [ 0, %main_bb225 ]
  %"795" = icmp ne i32 %.0.i2, 0
  %"796" = zext i1 %"795" to i8
  %"797" = trunc i8 %"796" to i1
  br i1 %"797", label %main_assert.exit, label %main_bb227

main_assert.exit:                                 ; preds = %main_check.exit
  %"798" = add nsw i32 %i2.0, 1
  br label %main_bb158

main_bb227:                                       ; preds = %main_check.exit
  call void (...)* @__VERIFIER_error() #3
  unreachable

main_bb228:                                       ; preds = %main_bb204
  call void (...)* @__VERIFIER_error() #3
  unreachable

main_bb229:                                       ; preds = %main_bb158
  ret i32 0
}

declare zeroext i1 @__VERIFIER_nondet__Bool() #1

declare signext i8 @__VERIFIER_nondet_msg_t() #1

; Function Attrs: noreturn
declare void @__VERIFIER_error(...) #2

declare i8 @__kittel_nondef.0()

declare i1 @__kittel_nondef.1()

declare i32 @__kittel_nondef.2()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind }
attributes #4 = { noreturn }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

