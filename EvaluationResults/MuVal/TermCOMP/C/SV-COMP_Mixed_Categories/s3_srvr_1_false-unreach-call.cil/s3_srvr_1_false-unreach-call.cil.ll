; ModuleID = 'Benchmarks/TermCOMP/C/SV-COMP_Mixed_Categories/s3_srvr_1_false-unreach-call.cil/s3_srvr_1_false-unreach-call.cil.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @ssl3_accept(i32 %initial_state) #0 {
ssl3_accept_bb0:
  %"0" = call i32 @__kittel_nondef.0()
  %"1" = call i32 @__kittel_nondef.0()
  %"2" = call i32 @__VERIFIER_nondet_int()
  %"3" = call i32 @__VERIFIER_nondet_int()
  %"4" = call i32 @__VERIFIER_nondet_int()
  %"5" = call i32 @__VERIFIER_nondet_int()
  %"6" = call i32 @__VERIFIER_nondet_int()
  %"7" = call i32 @__VERIFIER_nondet_int()
  %"8" = call i32 @__VERIFIER_nondet_int()
  %"9" = call i32 @__VERIFIER_nondet_int()
  %"10" = call i32 @__VERIFIER_nondet_int()
  %"11" = call i32 @__VERIFIER_nondet_int()
  %"12" = call i32 @__VERIFIER_nondet_int()
  %"13" = call i32 @__VERIFIER_nondet_int()
  %"14" = call i32 @__VERIFIER_nondet_int()
  %"15" = call i32 @__VERIFIER_nondet_int()
  %"16" = call i32 @__VERIFIER_nondet_int()
  %"17" = call i32 @__VERIFIER_nondet_int()
  %"18" = call i32 @__VERIFIER_nondet_int()
  %"19" = call i32 @__VERIFIER_nondet_int()
  %"20" = call i32 @__VERIFIER_nondet_int()
  %"21" = call i64 @__VERIFIER_nondet_long()
  %"22" = call i32 @__VERIFIER_nondet_int()
  %"23" = call i32 @__VERIFIER_nondet_int()
  %"24" = call i64 @__VERIFIER_nondet_long()
  %"25" = icmp ne i32 %"2", 0
  br i1 %"25", label %ssl3_accept_bb2, label %ssl3_accept_bb1

ssl3_accept_bb1:                                  ; preds = %ssl3_accept_bb0
  %"26" = icmp ne i32 %"12", 0
  %. = select i1 %"26", i32 %"12", i32 0
  br label %ssl3_accept_bb2

ssl3_accept_bb2:                                  ; preds = %ssl3_accept_bb0, %ssl3_accept_bb1
  %cb.1 = phi i32 [ %., %ssl3_accept_bb1 ], [ %"2", %ssl3_accept_bb0 ]
  %"27" = add nsw i32 %"22", 12288
  %"28" = icmp ne i32 %"27", 0
  br i1 %"28", label %ssl3_accept_bb3, label %ssl3_accept_bb4

ssl3_accept_bb3:                                  ; preds = %ssl3_accept_bb2
  br label %ssl3_accept_bb4

ssl3_accept_bb4:                                  ; preds = %ssl3_accept_bb3, %ssl3_accept_bb2
  %"29" = icmp eq i32 %"7", 0
  br i1 %"29", label %ssl3_accept_bb56, label %ssl3_accept_bb5

ssl3_accept_bb5:                                  ; preds = %ssl3_accept_bb4
  %"30" = sext i32 %"18" to i64
  %"31" = sext i32 %"18" to i64
  %"32" = sext i32 %"8" to i64
  %"33" = sext i32 %"19" to i64
  %"34" = sext i32 %"19" to i64
  %"35" = sext i32 %"18" to i64
  br label %ssl3_accept_bb6

ssl3_accept_bb6:                                  ; preds = %ssl3_accept_bb50, %ssl3_accept_bb53, %ssl3_accept_bb54, %ssl3_accept_bb5
  %blastFlag.0 = phi i32 [ 0, %ssl3_accept_bb5 ], [ %blastFlag.6, %ssl3_accept_bb54 ], [ %blastFlag.6, %ssl3_accept_bb53 ], [ %blastFlag.6, %ssl3_accept_bb50 ]
  %got_new_session.0 = phi i32 [ 0, %ssl3_accept_bb5 ], [ %got_new_session.1, %ssl3_accept_bb54 ], [ %got_new_session.1, %ssl3_accept_bb53 ], [ %got_new_session.1, %ssl3_accept_bb50 ]
  %s__s3__tmp__next_state___0.0 = phi i32 [ %"1", %ssl3_accept_bb5 ], [ %s__s3__tmp__next_state___0.5, %ssl3_accept_bb54 ], [ %s__s3__tmp__next_state___0.5, %ssl3_accept_bb53 ], [ %s__s3__tmp__next_state___0.5, %ssl3_accept_bb50 ]
  %s__ctx__stats__sess_accept.0 = phi i32 [ %"14", %ssl3_accept_bb5 ], [ %s__ctx__stats__sess_accept.2, %ssl3_accept_bb54 ], [ %s__ctx__stats__sess_accept.2, %ssl3_accept_bb53 ], [ %s__ctx__stats__sess_accept.2, %ssl3_accept_bb50 ]
  %s__ctx__stats__sess_accept_renegotiate.0 = phi i32 [ %"13", %ssl3_accept_bb5 ], [ %s__ctx__stats__sess_accept_renegotiate.2, %ssl3_accept_bb54 ], [ %s__ctx__stats__sess_accept_renegotiate.2, %ssl3_accept_bb53 ], [ %s__ctx__stats__sess_accept_renegotiate.2, %ssl3_accept_bb50 ]
  %s__init_buf___0.0 = phi i32 [ %"0", %ssl3_accept_bb5 ], [ %s__init_buf___0.2, %ssl3_accept_bb54 ], [ %s__init_buf___0.2, %ssl3_accept_bb53 ], [ %s__init_buf___0.2, %ssl3_accept_bb50 ]
  %s__state.0 = phi i32 [ %initial_state, %ssl3_accept_bb5 ], [ %s__state.8, %ssl3_accept_bb54 ], [ %s__state.8, %ssl3_accept_bb53 ], [ %s__state.8, %ssl3_accept_bb50 ]
  br label %ssl3_accept_NodeBlock101

ssl3_accept_NodeBlock101:                         ; preds = %ssl3_accept_bb6
  %Pivot102 = icmp slt i32 %s__state.0, 8544
  br i1 %Pivot102, label %ssl3_accept_NodeBlock49, label %ssl3_accept_NodeBlock99

ssl3_accept_NodeBlock49:                          ; preds = %ssl3_accept_NodeBlock101
  %Pivot50 = icmp slt i32 %s__state.0, 8480
  br i1 %Pivot50, label %ssl3_accept_NodeBlock28, label %ssl3_accept_NodeBlock47

ssl3_accept_NodeBlock28:                          ; preds = %ssl3_accept_NodeBlock49
  %Pivot29 = icmp slt i32 %s__state.0, 8195
  br i1 %Pivot29, label %ssl3_accept_NodeBlock, label %ssl3_accept_NodeBlock26

ssl3_accept_NodeBlock:                            ; preds = %ssl3_accept_NodeBlock28
  %Pivot = icmp slt i32 %s__state.0, 8192
  br i1 %Pivot, label %ssl3_accept_LeafBlock, label %ssl3_accept_LeafBlock16

ssl3_accept_LeafBlock:                            ; preds = %ssl3_accept_NodeBlock
  %SwitchLeaf = icmp eq i32 %s__state.0, 3
  br i1 %SwitchLeaf, label %ssl3_accept_bb7, label %ssl3_accept_NewDefault

ssl3_accept_bb7:                                  ; preds = %ssl3_accept_LeafBlock
  %"36" = icmp ne i32 %got_new_session.0, 0
  br i1 %"36", label %ssl3_accept_bb8, label %ssl3_accept_bb55

ssl3_accept_bb8:                                  ; preds = %ssl3_accept_bb7
  br label %ssl3_accept_bb55

ssl3_accept_LeafBlock16:                          ; preds = %ssl3_accept_NodeBlock
  %SwitchLeaf17 = icmp eq i32 %s__state.0, 8192
  br i1 %SwitchLeaf17, label %ssl3_accept_bb42, label %ssl3_accept_NewDefault

ssl3_accept_NodeBlock26:                          ; preds = %ssl3_accept_NodeBlock28
  %Pivot27 = icmp slt i32 %s__state.0, 8448
  br i1 %Pivot27, label %ssl3_accept_LeafBlock18, label %ssl3_accept_NodeBlock24

ssl3_accept_LeafBlock18:                          ; preds = %ssl3_accept_NodeBlock26
  %SwitchLeaf19 = icmp eq i32 %s__state.0, 8195
  br i1 %SwitchLeaf19, label %ssl3_accept_bb42, label %ssl3_accept_NewDefault

ssl3_accept_NodeBlock24:                          ; preds = %ssl3_accept_NodeBlock26
  %Pivot25 = icmp slt i32 %s__state.0, 8464
  br i1 %Pivot25, label %ssl3_accept_LeafBlock20, label %ssl3_accept_LeafBlock22

ssl3_accept_LeafBlock20:                          ; preds = %ssl3_accept_NodeBlock24
  %SwitchLeaf21 = icmp eq i32 %s__state.0, 8448
  br i1 %SwitchLeaf21, label %ssl3_accept_bb9, label %ssl3_accept_NewDefault

ssl3_accept_bb9:                                  ; preds = %ssl3_accept_LeafBlock20
  %"37" = call i32 @__VERIFIER_nondet_int()
  %"38" = sext i32 %"37" to i64
  %"39" = icmp sgt i64 %"38", 0
  %"40" = icmp sle i64 %"24", 0
  %or.cond14 = and i1 %"39", %"40"
  br i1 %or.cond14, label %ssl3_accept_bb55, label %ssl3_accept_bb50

ssl3_accept_LeafBlock22:                          ; preds = %ssl3_accept_NodeBlock24
  %s__state.0.off = add i32 %s__state.0, -8464
  %SwitchLeaf23 = icmp ule i32 %s__state.0.off, 2
  br i1 %SwitchLeaf23, label %ssl3_accept_bb10, label %ssl3_accept_NewDefault

ssl3_accept_bb10:                                 ; preds = %ssl3_accept_LeafBlock22
  %"41" = call i32 @__VERIFIER_nondet_int()
  %"42" = icmp eq i32 %blastFlag.0, 0
  %.blastFlag.0 = select i1 %"42", i32 1, i32 %blastFlag.0
  %"43" = icmp sle i32 %"41", 0
  br i1 %"43", label %ssl3_accept_bb55, label %ssl3_accept_bb50

ssl3_accept_NodeBlock47:                          ; preds = %ssl3_accept_NodeBlock49
  %Pivot48 = icmp slt i32 %s__state.0, 8496
  br i1 %Pivot48, label %ssl3_accept_NodeBlock32, label %ssl3_accept_NodeBlock45

ssl3_accept_NodeBlock32:                          ; preds = %ssl3_accept_NodeBlock47
  %Pivot33 = icmp slt i32 %s__state.0, 8482
  br i1 %Pivot33, label %ssl3_accept_bb11, label %ssl3_accept_LeafBlock30

ssl3_accept_bb11:                                 ; preds = %ssl3_accept_NodeBlock32
  %"44" = call i32 @__VERIFIER_nondet_int()
  %"45" = icmp sle i32 %"44", 0
  br i1 %"45", label %ssl3_accept_bb55, label %ssl3_accept_bb50

ssl3_accept_LeafBlock30:                          ; preds = %ssl3_accept_NodeBlock32
  %SwitchLeaf31 = icmp eq i32 %s__state.0, 8482
  br i1 %SwitchLeaf31, label %ssl3_accept_bb50, label %ssl3_accept_NewDefault

ssl3_accept_NodeBlock45:                          ; preds = %ssl3_accept_NodeBlock47
  %Pivot46 = icmp slt i32 %s__state.0, 8512
  br i1 %Pivot46, label %ssl3_accept_LeafBlock34, label %ssl3_accept_NodeBlock43

ssl3_accept_LeafBlock34:                          ; preds = %ssl3_accept_NodeBlock45
  %s__state.0.off35 = add i32 %s__state.0, -8496
  %SwitchLeaf36 = icmp ule i32 %s__state.0.off35, 1
  br i1 %SwitchLeaf36, label %ssl3_accept_bb12, label %ssl3_accept_NewDefault

ssl3_accept_bb12:                                 ; preds = %ssl3_accept_LeafBlock34
  %"46" = call i32 @__VERIFIER_nondet_int()
  %"47" = icmp eq i32 %blastFlag.0, 1
  %.blastFlag.01 = select i1 %"47", i32 2, i32 %blastFlag.0
  %"48" = icmp sle i32 %"46", 0
  br i1 %"48", label %ssl3_accept_bb55, label %ssl3_accept_bb13

ssl3_accept_bb13:                                 ; preds = %ssl3_accept_bb12
  %"49" = icmp ne i32 %"5", 0
  %.2 = select i1 %"49", i32 8656, i32 8512
  br label %ssl3_accept_bb50

ssl3_accept_NodeBlock43:                          ; preds = %ssl3_accept_NodeBlock45
  %Pivot44 = icmp slt i32 %s__state.0, 8528
  br i1 %Pivot44, label %ssl3_accept_LeafBlock37, label %ssl3_accept_LeafBlock40

ssl3_accept_LeafBlock37:                          ; preds = %ssl3_accept_NodeBlock43
  %s__state.0.off38 = add i32 %s__state.0, -8512
  %SwitchLeaf39 = icmp ule i32 %s__state.0.off38, 1
  br i1 %SwitchLeaf39, label %ssl3_accept_bb14, label %ssl3_accept_NewDefault

ssl3_accept_bb14:                                 ; preds = %ssl3_accept_LeafBlock37
  %"50" = add i64 %"30", 256
  %"51" = icmp ne i64 %"50", 0
  br i1 %"51", label %ssl3_accept_bb50, label %ssl3_accept_bb15

ssl3_accept_bb15:                                 ; preds = %ssl3_accept_bb14
  %"52" = call i32 @__VERIFIER_nondet_int()
  %"53" = icmp sle i32 %"52", 0
  br i1 %"53", label %ssl3_accept_bb55, label %ssl3_accept_bb50

ssl3_accept_LeafBlock40:                          ; preds = %ssl3_accept_NodeBlock43
  %s__state.0.off41 = add i32 %s__state.0, -8528
  %SwitchLeaf42 = icmp ule i32 %s__state.0.off41, 1
  br i1 %SwitchLeaf42, label %ssl3_accept_bb16, label %ssl3_accept_NewDefault

ssl3_accept_bb16:                                 ; preds = %ssl3_accept_LeafBlock40
  %"54" = add i64 %"32", 2097152
  %"55" = icmp ne i64 %"54", 0
  %.3 = select i1 %"55", i32 1, i32 0
  %"56" = icmp ne i32 %.3, 0
  %"57" = add i64 %"31", 30
  %"58" = icmp ne i64 %"57", 0
  %or.cond = or i1 %"56", %"58"
  br i1 %or.cond, label %ssl3_accept_bb21, label %ssl3_accept_bb17

ssl3_accept_bb17:                                 ; preds = %ssl3_accept_bb16
  %"59" = add i64 %"31", 1
  %"60" = icmp ne i64 %"59", 0
  br i1 %"60", label %ssl3_accept_bb18, label %ssl3_accept_bb50

ssl3_accept_bb18:                                 ; preds = %ssl3_accept_bb17
  %"61" = icmp eq i32 %"11", 0
  br i1 %"61", label %ssl3_accept_bb21, label %ssl3_accept_bb19

ssl3_accept_bb19:                                 ; preds = %ssl3_accept_bb18
  %"62" = add i64 %"33", 2
  %"63" = icmp ne i64 %"62", 0
  br i1 %"63", label %ssl3_accept_bb20, label %ssl3_accept_bb50

ssl3_accept_bb20:                                 ; preds = %ssl3_accept_bb19
  %"64" = call i32 @__VERIFIER_nondet_int()
  %"65" = add i64 %"34", 4
  %"66" = icmp ne i64 %"65", 0
  %.4 = select i1 %"66", i32 512, i32 1024
  %"67" = mul nsw i32 %"64", 8
  %"68" = icmp sgt i32 %"67", %.4
  br i1 %"68", label %ssl3_accept_bb21, label %ssl3_accept_bb50

ssl3_accept_bb21:                                 ; preds = %ssl3_accept_bb20, %ssl3_accept_bb18, %ssl3_accept_bb16
  %"69" = call i32 @__VERIFIER_nondet_int()
  %"70" = icmp sle i32 %"69", 0
  br i1 %"70", label %ssl3_accept_bb55, label %ssl3_accept_bb50

ssl3_accept_NodeBlock99:                          ; preds = %ssl3_accept_NodeBlock101
  %Pivot100 = icmp slt i32 %s__state.0, 8640
  br i1 %Pivot100, label %ssl3_accept_NodeBlock72, label %ssl3_accept_NodeBlock97

ssl3_accept_NodeBlock72:                          ; preds = %ssl3_accept_NodeBlock99
  %Pivot73 = icmp slt i32 %s__state.0, 8576
  br i1 %Pivot73, label %ssl3_accept_NodeBlock57, label %ssl3_accept_NodeBlock70

ssl3_accept_NodeBlock57:                          ; preds = %ssl3_accept_NodeBlock72
  %Pivot58 = icmp slt i32 %s__state.0, 8560
  br i1 %Pivot58, label %ssl3_accept_LeafBlock51, label %ssl3_accept_LeafBlock54

ssl3_accept_LeafBlock51:                          ; preds = %ssl3_accept_NodeBlock57
  %s__state.0.off52 = add i32 %s__state.0, -8544
  %SwitchLeaf53 = icmp ule i32 %s__state.0.off52, 1
  br i1 %SwitchLeaf53, label %ssl3_accept_bb22, label %ssl3_accept_NewDefault

ssl3_accept_bb22:                                 ; preds = %ssl3_accept_LeafBlock51
  %"71" = add nsw i32 %"9", 1
  %"72" = icmp ne i32 %"71", 0
  br i1 %"72", label %ssl3_accept_bb23, label %ssl3_accept_bb50

ssl3_accept_bb23:                                 ; preds = %ssl3_accept_bb22
  %"73" = icmp ne i32 %"10", 0
  %"74" = add nsw i32 %"9", 4
  %"75" = icmp ne i32 %"74", 0
  %or.cond11 = and i1 %"73", %"75"
  br i1 %or.cond11, label %ssl3_accept_bb50, label %ssl3_accept_bb24

ssl3_accept_bb24:                                 ; preds = %ssl3_accept_bb23
  %"76" = add i64 %"35", 256
  %"77" = icmp eq i64 %"76", 0
  %"78" = add nsw i32 %"9", 2
  %"79" = icmp ne i32 %"78", 0
  %or.cond13 = or i1 %"77", %"79"
  br i1 %or.cond13, label %ssl3_accept_bb25, label %ssl3_accept_bb50

ssl3_accept_bb25:                                 ; preds = %ssl3_accept_bb24
  %"80" = call i32 @__VERIFIER_nondet_int()
  %"81" = icmp sle i32 %"80", 0
  br i1 %"81", label %ssl3_accept_bb55, label %ssl3_accept_bb50

ssl3_accept_LeafBlock54:                          ; preds = %ssl3_accept_NodeBlock57
  %s__state.0.off55 = add i32 %s__state.0, -8560
  %SwitchLeaf56 = icmp ule i32 %s__state.0.off55, 1
  br i1 %SwitchLeaf56, label %ssl3_accept_bb26, label %ssl3_accept_NewDefault

ssl3_accept_bb26:                                 ; preds = %ssl3_accept_LeafBlock54
  %"82" = call i32 @__VERIFIER_nondet_int()
  %"83" = icmp sle i32 %"82", 0
  br i1 %"83", label %ssl3_accept_bb55, label %ssl3_accept_bb50

ssl3_accept_NodeBlock70:                          ; preds = %ssl3_accept_NodeBlock72
  %Pivot71 = icmp slt i32 %s__state.0, 8592
  br i1 %Pivot71, label %ssl3_accept_LeafBlock59, label %ssl3_accept_NodeBlock68

ssl3_accept_LeafBlock59:                          ; preds = %ssl3_accept_NodeBlock70
  %s__state.0.off60 = add i32 %s__state.0, -8576
  %SwitchLeaf61 = icmp ule i32 %s__state.0.off60, 1
  br i1 %SwitchLeaf61, label %ssl3_accept_bb27, label %ssl3_accept_NewDefault

ssl3_accept_bb27:                                 ; preds = %ssl3_accept_LeafBlock59
  %"84" = call i32 @__VERIFIER_nondet_int()
  %"85" = icmp sle i32 %"84", 0
  br i1 %"85", label %ssl3_accept_bb55, label %ssl3_accept_bb28

ssl3_accept_bb28:                                 ; preds = %ssl3_accept_bb27
  %"86" = icmp eq i32 %"84", 2
  br i1 %"86", label %ssl3_accept_bb50, label %ssl3_accept_bb29

ssl3_accept_bb29:                                 ; preds = %ssl3_accept_bb28
  %"87" = call i32 @__VERIFIER_nondet_int()
  %"88" = icmp sle i32 %"87", 0
  br i1 %"88", label %ssl3_accept_bb55, label %ssl3_accept_bb50

ssl3_accept_NodeBlock68:                          ; preds = %ssl3_accept_NodeBlock70
  %Pivot69 = icmp slt i32 %s__state.0, 8608
  br i1 %Pivot69, label %ssl3_accept_LeafBlock62, label %ssl3_accept_LeafBlock65

ssl3_accept_LeafBlock62:                          ; preds = %ssl3_accept_NodeBlock68
  %s__state.0.off63 = add i32 %s__state.0, -8592
  %SwitchLeaf64 = icmp ule i32 %s__state.0.off63, 1
  br i1 %SwitchLeaf64, label %ssl3_accept_bb30, label %ssl3_accept_NewDefault

ssl3_accept_bb30:                                 ; preds = %ssl3_accept_LeafBlock62
  %"89" = call i32 @__VERIFIER_nondet_int()
  %"90" = icmp sle i32 %"89", 0
  br i1 %"90", label %ssl3_accept_bb55, label %ssl3_accept_bb50

ssl3_accept_LeafBlock65:                          ; preds = %ssl3_accept_NodeBlock68
  %s__state.0.off66 = add i32 %s__state.0, -8608
  %SwitchLeaf67 = icmp ule i32 %s__state.0.off66, 1
  br i1 %SwitchLeaf67, label %ssl3_accept_bb31, label %ssl3_accept_NewDefault

ssl3_accept_bb31:                                 ; preds = %ssl3_accept_LeafBlock65
  %"91" = call i32 @__VERIFIER_nondet_int()
  %"92" = icmp sle i32 %"91", 0
  br i1 %"92", label %ssl3_accept_bb55, label %ssl3_accept_bb50

ssl3_accept_NodeBlock97:                          ; preds = %ssl3_accept_NodeBlock99
  %Pivot98 = icmp slt i32 %s__state.0, 12292
  br i1 %Pivot98, label %ssl3_accept_NodeBlock85, label %ssl3_accept_NodeBlock95

ssl3_accept_NodeBlock85:                          ; preds = %ssl3_accept_NodeBlock97
  %Pivot86 = icmp slt i32 %s__state.0, 8656
  br i1 %Pivot86, label %ssl3_accept_LeafBlock74, label %ssl3_accept_NodeBlock83

ssl3_accept_LeafBlock74:                          ; preds = %ssl3_accept_NodeBlock85
  %s__state.0.off75 = add i32 %s__state.0, -8640
  %SwitchLeaf76 = icmp ule i32 %s__state.0.off75, 1
  br i1 %SwitchLeaf76, label %ssl3_accept_bb32, label %ssl3_accept_NewDefault

ssl3_accept_bb32:                                 ; preds = %ssl3_accept_LeafBlock74
  %"93" = call i32 @__VERIFIER_nondet_int()
  %"94" = icmp eq i32 %blastFlag.0, 3
  %.blastFlag.05 = select i1 %"94", i32 4, i32 %blastFlag.0
  %"95" = icmp sle i32 %"93", 0
  br i1 %"95", label %ssl3_accept_bb55, label %ssl3_accept_bb33

ssl3_accept_bb33:                                 ; preds = %ssl3_accept_bb32
  %"96" = icmp ne i32 %"5", 0
  %.6 = select i1 %"96", i32 3, i32 8656
  br label %ssl3_accept_bb50

ssl3_accept_NodeBlock83:                          ; preds = %ssl3_accept_NodeBlock85
  %Pivot84 = icmp slt i32 %s__state.0, 8672
  br i1 %Pivot84, label %ssl3_accept_LeafBlock77, label %ssl3_accept_LeafBlock80

ssl3_accept_LeafBlock77:                          ; preds = %ssl3_accept_NodeBlock83
  %s__state.0.off78 = add i32 %s__state.0, -8656
  %SwitchLeaf79 = icmp ule i32 %s__state.0.off78, 1
  br i1 %SwitchLeaf79, label %ssl3_accept_bb34, label %ssl3_accept_NewDefault

ssl3_accept_bb34:                                 ; preds = %ssl3_accept_LeafBlock77
  %"97" = call i32 @__VERIFIER_nondet_int()
  %"98" = icmp ne i32 %"97", 0
  br i1 %"98", label %ssl3_accept_bb35, label %ssl3_accept_bb55

ssl3_accept_bb35:                                 ; preds = %ssl3_accept_bb34
  %"99" = call i32 @__VERIFIER_nondet_int()
  %"100" = icmp eq i32 %blastFlag.0, 2
  %.blastFlag.07 = select i1 %"100", i32 3, i32 %blastFlag.0
  %"101" = icmp sle i32 %"99", 0
  br i1 %"101", label %ssl3_accept_bb55, label %ssl3_accept_bb36

ssl3_accept_bb36:                                 ; preds = %ssl3_accept_bb35
  %"102" = call i32 @__VERIFIER_nondet_int()
  %"103" = icmp ne i32 %"102", 0
  br i1 %"103", label %ssl3_accept_bb50, label %ssl3_accept_bb55

ssl3_accept_LeafBlock80:                          ; preds = %ssl3_accept_NodeBlock83
  %s__state.0.off81 = add i32 %s__state.0, -8672
  %SwitchLeaf82 = icmp ule i32 %s__state.0.off81, 1
  br i1 %SwitchLeaf82, label %ssl3_accept_bb37, label %ssl3_accept_NewDefault

ssl3_accept_bb37:                                 ; preds = %ssl3_accept_LeafBlock80
  %"104" = call i32 @__VERIFIER_nondet_int()
  br label %ssl3_accept_NodeBlock108

ssl3_accept_NodeBlock108:                         ; preds = %ssl3_accept_bb37
  %Pivot109 = icmp slt i32 %blastFlag.0, 4
  br i1 %Pivot109, label %ssl3_accept_LeafBlock104, label %ssl3_accept_LeafBlock106

ssl3_accept_LeafBlock104:                         ; preds = %ssl3_accept_NodeBlock108
  %SwitchLeaf105 = icmp eq i32 %blastFlag.0, 3
  br i1 %SwitchLeaf105, label %ssl3_accept_bb38, label %ssl3_accept_NewDefault103

ssl3_accept_bb38:                                 ; preds = %ssl3_accept_LeafBlock104
  call void (...)* @__VERIFIER_error() #3
  unreachable

ssl3_accept_LeafBlock106:                         ; preds = %ssl3_accept_NodeBlock108
  %SwitchLeaf107 = icmp eq i32 %blastFlag.0, 4
  br i1 %SwitchLeaf107, label %ssl3_accept_bb40, label %ssl3_accept_NewDefault103

ssl3_accept_NewDefault103:                        ; preds = %ssl3_accept_LeafBlock106, %ssl3_accept_LeafBlock104
  br label %ssl3_accept_bb39

ssl3_accept_bb39:                                 ; preds = %ssl3_accept_NewDefault103
  br label %ssl3_accept_bb40

ssl3_accept_bb40:                                 ; preds = %ssl3_accept_LeafBlock106, %ssl3_accept_bb39
  %blastFlag.5 = phi i32 [ %blastFlag.0, %ssl3_accept_bb39 ], [ 5, %ssl3_accept_LeafBlock106 ]
  %"105" = icmp sle i32 %"104", 0
  br i1 %"105", label %ssl3_accept_bb55, label %ssl3_accept_bb41

ssl3_accept_bb41:                                 ; preds = %ssl3_accept_bb40
  %"106" = icmp ne i32 %"5", 0
  %.8 = select i1 %"106", i32 8640, i32 3
  br label %ssl3_accept_bb50

ssl3_accept_NodeBlock95:                          ; preds = %ssl3_accept_NodeBlock97
  %Pivot96 = icmp slt i32 %s__state.0, 16384
  br i1 %Pivot96, label %ssl3_accept_LeafBlock87, label %ssl3_accept_NodeBlock93

ssl3_accept_LeafBlock87:                          ; preds = %ssl3_accept_NodeBlock95
  %SwitchLeaf88 = icmp eq i32 %s__state.0, 12292
  br i1 %SwitchLeaf88, label %ssl3_accept_bb42, label %ssl3_accept_NewDefault

ssl3_accept_NodeBlock93:                          ; preds = %ssl3_accept_NodeBlock95
  %Pivot94 = icmp slt i32 %s__state.0, 24576
  br i1 %Pivot94, label %ssl3_accept_LeafBlock89, label %ssl3_accept_LeafBlock91

ssl3_accept_LeafBlock89:                          ; preds = %ssl3_accept_NodeBlock93
  %SwitchLeaf90 = icmp eq i32 %s__state.0, 16384
  br i1 %SwitchLeaf90, label %ssl3_accept_bb42, label %ssl3_accept_NewDefault

ssl3_accept_LeafBlock91:                          ; preds = %ssl3_accept_NodeBlock93
  %SwitchLeaf92 = icmp eq i32 %s__state.0, 24576
  br i1 %SwitchLeaf92, label %ssl3_accept_bb42, label %ssl3_accept_NewDefault

ssl3_accept_bb42:                                 ; preds = %ssl3_accept_LeafBlock91, %ssl3_accept_LeafBlock89, %ssl3_accept_LeafBlock87, %ssl3_accept_LeafBlock18, %ssl3_accept_LeafBlock16
  %"107" = mul nsw i32 %"4", 8
  %"108" = icmp ne i32 %"107", 3
  br i1 %"108", label %ssl3_accept_bb56, label %ssl3_accept_bb43

ssl3_accept_bb43:                                 ; preds = %ssl3_accept_bb42
  %"109" = icmp eq i32 %s__init_buf___0.0, 0
  br i1 %"109", label %ssl3_accept_bb44, label %ssl3_accept_bb45

ssl3_accept_bb44:                                 ; preds = %ssl3_accept_bb43
  %"110" = call i32 @__VERIFIER_nondet_int()
  %"111" = icmp ne i32 %"110", 0
  br i1 %"111", label %ssl3_accept_bb45, label %ssl3_accept_bb55

ssl3_accept_bb45:                                 ; preds = %ssl3_accept_bb44, %ssl3_accept_bb43
  %s__init_buf___0.1 = phi i32 [ %s__init_buf___0.0, %ssl3_accept_bb43 ], [ %"20", %ssl3_accept_bb44 ]
  %"112" = call i32 @__VERIFIER_nondet_int()
  %"113" = icmp ne i32 %"112", 0
  br i1 %"113", label %ssl3_accept_bb46, label %ssl3_accept_bb55

ssl3_accept_bb46:                                 ; preds = %ssl3_accept_bb45
  %"114" = icmp ne i32 %s__state.0, 12292
  br i1 %"114", label %ssl3_accept_bb47, label %ssl3_accept_bb49

ssl3_accept_bb47:                                 ; preds = %ssl3_accept_bb46
  %"115" = call i32 @__VERIFIER_nondet_int()
  %"116" = icmp ne i32 %"115", 0
  br i1 %"116", label %ssl3_accept_bb48, label %ssl3_accept_bb55

ssl3_accept_bb48:                                 ; preds = %ssl3_accept_bb47
  %"117" = add nsw i32 %s__ctx__stats__sess_accept.0, 1
  br label %ssl3_accept_bb50

ssl3_accept_bb49:                                 ; preds = %ssl3_accept_bb46
  %"118" = add nsw i32 %s__ctx__stats__sess_accept_renegotiate.0, 1
  br label %ssl3_accept_bb50

ssl3_accept_bb50:                                 ; preds = %ssl3_accept_LeafBlock30, %ssl3_accept_bb24, %ssl3_accept_bb23, %ssl3_accept_bb36, %ssl3_accept_bb31, %ssl3_accept_bb30, %ssl3_accept_bb28, %ssl3_accept_bb29, %ssl3_accept_bb9, %ssl3_accept_bb26, %ssl3_accept_bb25, %ssl3_accept_bb22, %ssl3_accept_bb20, %ssl3_accept_bb21, %ssl3_accept_bb19, %ssl3_accept_bb17, %ssl3_accept_bb14, %ssl3_accept_bb15, %ssl3_accept_bb10, %ssl3_accept_bb11, %ssl3_accept_bb48, %ssl3_accept_bb49, %ssl3_accept_bb41, %ssl3_accept_bb33, %ssl3_accept_bb13
  %blastFlag.6 = phi i32 [ %.blastFlag.01, %ssl3_accept_bb13 ], [ %.blastFlag.05, %ssl3_accept_bb33 ], [ %blastFlag.5, %ssl3_accept_bb41 ], [ %blastFlag.0, %ssl3_accept_bb49 ], [ %blastFlag.0, %ssl3_accept_bb48 ], [ %blastFlag.0, %ssl3_accept_bb11 ], [ %blastFlag.0, %ssl3_accept_LeafBlock30 ], [ %.blastFlag.0, %ssl3_accept_bb10 ], [ %blastFlag.0, %ssl3_accept_bb15 ], [ %blastFlag.0, %ssl3_accept_bb14 ], [ %blastFlag.0, %ssl3_accept_bb17 ], [ %blastFlag.0, %ssl3_accept_bb19 ], [ %blastFlag.0, %ssl3_accept_bb21 ], [ %blastFlag.0, %ssl3_accept_bb20 ], [ %blastFlag.0, %ssl3_accept_bb22 ], [ %blastFlag.0, %ssl3_accept_bb25 ], [ %blastFlag.0, %ssl3_accept_bb26 ], [ %blastFlag.0, %ssl3_accept_bb9 ], [ %blastFlag.0, %ssl3_accept_bb29 ], [ %blastFlag.0, %ssl3_accept_bb28 ], [ %blastFlag.0, %ssl3_accept_bb30 ], [ %blastFlag.0, %ssl3_accept_bb31 ], [ %.blastFlag.07, %ssl3_accept_bb36 ], [ %blastFlag.0, %ssl3_accept_bb23 ], [ %blastFlag.0, %ssl3_accept_bb24 ]
  %got_new_session.1 = phi i32 [ %got_new_session.0, %ssl3_accept_bb13 ], [ %got_new_session.0, %ssl3_accept_bb33 ], [ %got_new_session.0, %ssl3_accept_bb41 ], [ %got_new_session.0, %ssl3_accept_bb49 ], [ %got_new_session.0, %ssl3_accept_bb48 ], [ %got_new_session.0, %ssl3_accept_bb11 ], [ %got_new_session.0, %ssl3_accept_LeafBlock30 ], [ 1, %ssl3_accept_bb10 ], [ %got_new_session.0, %ssl3_accept_bb15 ], [ %got_new_session.0, %ssl3_accept_bb14 ], [ %got_new_session.0, %ssl3_accept_bb17 ], [ %got_new_session.0, %ssl3_accept_bb19 ], [ %got_new_session.0, %ssl3_accept_bb21 ], [ %got_new_session.0, %ssl3_accept_bb20 ], [ %got_new_session.0, %ssl3_accept_bb22 ], [ %got_new_session.0, %ssl3_accept_bb25 ], [ %got_new_session.0, %ssl3_accept_bb26 ], [ %got_new_session.0, %ssl3_accept_bb9 ], [ %got_new_session.0, %ssl3_accept_bb29 ], [ %got_new_session.0, %ssl3_accept_bb28 ], [ %got_new_session.0, %ssl3_accept_bb30 ], [ %got_new_session.0, %ssl3_accept_bb31 ], [ %got_new_session.0, %ssl3_accept_bb36 ], [ %got_new_session.0, %ssl3_accept_bb23 ], [ %got_new_session.0, %ssl3_accept_bb24 ]
  %skip.8 = phi i32 [ 0, %ssl3_accept_bb13 ], [ 0, %ssl3_accept_bb33 ], [ 0, %ssl3_accept_bb41 ], [ 0, %ssl3_accept_bb49 ], [ 0, %ssl3_accept_bb48 ], [ 0, %ssl3_accept_bb11 ], [ 0, %ssl3_accept_LeafBlock30 ], [ 0, %ssl3_accept_bb10 ], [ 1, %ssl3_accept_bb14 ], [ 0, %ssl3_accept_bb15 ], [ 0, %ssl3_accept_bb21 ], [ 1, %ssl3_accept_bb20 ], [ 1, %ssl3_accept_bb19 ], [ 1, %ssl3_accept_bb17 ], [ 0, %ssl3_accept_bb25 ], [ 1, %ssl3_accept_bb22 ], [ 0, %ssl3_accept_bb26 ], [ 0, %ssl3_accept_bb9 ], [ 0, %ssl3_accept_bb29 ], [ 0, %ssl3_accept_bb28 ], [ 0, %ssl3_accept_bb30 ], [ 0, %ssl3_accept_bb31 ], [ 0, %ssl3_accept_bb36 ], [ 1, %ssl3_accept_bb23 ], [ 1, %ssl3_accept_bb24 ]
  %s__s3__tmp__next_state___0.5 = phi i32 [ %s__s3__tmp__next_state___0.0, %ssl3_accept_bb13 ], [ %s__s3__tmp__next_state___0.0, %ssl3_accept_bb33 ], [ %.8, %ssl3_accept_bb41 ], [ %s__s3__tmp__next_state___0.0, %ssl3_accept_bb49 ], [ %s__s3__tmp__next_state___0.0, %ssl3_accept_bb48 ], [ 8482, %ssl3_accept_bb11 ], [ %s__s3__tmp__next_state___0.0, %ssl3_accept_LeafBlock30 ], [ %s__s3__tmp__next_state___0.0, %ssl3_accept_bb10 ], [ %s__s3__tmp__next_state___0.0, %ssl3_accept_bb15 ], [ %s__s3__tmp__next_state___0.0, %ssl3_accept_bb14 ], [ %s__s3__tmp__next_state___0.0, %ssl3_accept_bb17 ], [ %s__s3__tmp__next_state___0.0, %ssl3_accept_bb19 ], [ %s__s3__tmp__next_state___0.0, %ssl3_accept_bb21 ], [ %s__s3__tmp__next_state___0.0, %ssl3_accept_bb20 ], [ 8576, %ssl3_accept_bb25 ], [ %s__s3__tmp__next_state___0.0, %ssl3_accept_bb22 ], [ 8576, %ssl3_accept_bb26 ], [ %s__s3__tmp__next_state___0.0, %ssl3_accept_bb9 ], [ %s__s3__tmp__next_state___0.0, %ssl3_accept_bb29 ], [ %s__s3__tmp__next_state___0.0, %ssl3_accept_bb28 ], [ %s__s3__tmp__next_state___0.0, %ssl3_accept_bb30 ], [ %s__s3__tmp__next_state___0.0, %ssl3_accept_bb31 ], [ %s__s3__tmp__next_state___0.0, %ssl3_accept_bb36 ], [ %s__s3__tmp__next_state___0.0, %ssl3_accept_bb23 ], [ %s__s3__tmp__next_state___0.0, %ssl3_accept_bb24 ]
  %s__ctx__stats__sess_accept.2 = phi i32 [ %s__ctx__stats__sess_accept.0, %ssl3_accept_bb13 ], [ %s__ctx__stats__sess_accept.0, %ssl3_accept_bb33 ], [ %s__ctx__stats__sess_accept.0, %ssl3_accept_bb41 ], [ %"117", %ssl3_accept_bb48 ], [ %s__ctx__stats__sess_accept.0, %ssl3_accept_bb49 ], [ %s__ctx__stats__sess_accept.0, %ssl3_accept_bb11 ], [ %s__ctx__stats__sess_accept.0, %ssl3_accept_LeafBlock30 ], [ %s__ctx__stats__sess_accept.0, %ssl3_accept_bb10 ], [ %s__ctx__stats__sess_accept.0, %ssl3_accept_bb15 ], [ %s__ctx__stats__sess_accept.0, %ssl3_accept_bb14 ], [ %s__ctx__stats__sess_accept.0, %ssl3_accept_bb17 ], [ %s__ctx__stats__sess_accept.0, %ssl3_accept_bb19 ], [ %s__ctx__stats__sess_accept.0, %ssl3_accept_bb21 ], [ %s__ctx__stats__sess_accept.0, %ssl3_accept_bb20 ], [ %s__ctx__stats__sess_accept.0, %ssl3_accept_bb22 ], [ %s__ctx__stats__sess_accept.0, %ssl3_accept_bb25 ], [ %s__ctx__stats__sess_accept.0, %ssl3_accept_bb26 ], [ %s__ctx__stats__sess_accept.0, %ssl3_accept_bb9 ], [ %s__ctx__stats__sess_accept.0, %ssl3_accept_bb29 ], [ %s__ctx__stats__sess_accept.0, %ssl3_accept_bb28 ], [ %s__ctx__stats__sess_accept.0, %ssl3_accept_bb30 ], [ %s__ctx__stats__sess_accept.0, %ssl3_accept_bb31 ], [ %s__ctx__stats__sess_accept.0, %ssl3_accept_bb36 ], [ %s__ctx__stats__sess_accept.0, %ssl3_accept_bb23 ], [ %s__ctx__stats__sess_accept.0, %ssl3_accept_bb24 ]
  %s__ctx__stats__sess_accept_renegotiate.2 = phi i32 [ %s__ctx__stats__sess_accept_renegotiate.0, %ssl3_accept_bb13 ], [ %s__ctx__stats__sess_accept_renegotiate.0, %ssl3_accept_bb33 ], [ %s__ctx__stats__sess_accept_renegotiate.0, %ssl3_accept_bb41 ], [ %s__ctx__stats__sess_accept_renegotiate.0, %ssl3_accept_bb48 ], [ %"118", %ssl3_accept_bb49 ], [ %s__ctx__stats__sess_accept_renegotiate.0, %ssl3_accept_bb11 ], [ %s__ctx__stats__sess_accept_renegotiate.0, %ssl3_accept_LeafBlock30 ], [ %s__ctx__stats__sess_accept_renegotiate.0, %ssl3_accept_bb10 ], [ %s__ctx__stats__sess_accept_renegotiate.0, %ssl3_accept_bb15 ], [ %s__ctx__stats__sess_accept_renegotiate.0, %ssl3_accept_bb14 ], [ %s__ctx__stats__sess_accept_renegotiate.0, %ssl3_accept_bb17 ], [ %s__ctx__stats__sess_accept_renegotiate.0, %ssl3_accept_bb19 ], [ %s__ctx__stats__sess_accept_renegotiate.0, %ssl3_accept_bb21 ], [ %s__ctx__stats__sess_accept_renegotiate.0, %ssl3_accept_bb20 ], [ %s__ctx__stats__sess_accept_renegotiate.0, %ssl3_accept_bb22 ], [ %s__ctx__stats__sess_accept_renegotiate.0, %ssl3_accept_bb25 ], [ %s__ctx__stats__sess_accept_renegotiate.0, %ssl3_accept_bb26 ], [ %s__ctx__stats__sess_accept_renegotiate.0, %ssl3_accept_bb9 ], [ %s__ctx__stats__sess_accept_renegotiate.0, %ssl3_accept_bb29 ], [ %s__ctx__stats__sess_accept_renegotiate.0, %ssl3_accept_bb28 ], [ %s__ctx__stats__sess_accept_renegotiate.0, %ssl3_accept_bb30 ], [ %s__ctx__stats__sess_accept_renegotiate.0, %ssl3_accept_bb31 ], [ %s__ctx__stats__sess_accept_renegotiate.0, %ssl3_accept_bb36 ], [ %s__ctx__stats__sess_accept_renegotiate.0, %ssl3_accept_bb23 ], [ %s__ctx__stats__sess_accept_renegotiate.0, %ssl3_accept_bb24 ]
  %s__init_buf___0.2 = phi i32 [ %s__init_buf___0.0, %ssl3_accept_bb13 ], [ %s__init_buf___0.0, %ssl3_accept_bb33 ], [ %s__init_buf___0.0, %ssl3_accept_bb41 ], [ %s__init_buf___0.1, %ssl3_accept_bb49 ], [ %s__init_buf___0.1, %ssl3_accept_bb48 ], [ %s__init_buf___0.0, %ssl3_accept_bb11 ], [ %s__init_buf___0.0, %ssl3_accept_LeafBlock30 ], [ %s__init_buf___0.0, %ssl3_accept_bb10 ], [ %s__init_buf___0.0, %ssl3_accept_bb15 ], [ %s__init_buf___0.0, %ssl3_accept_bb14 ], [ %s__init_buf___0.0, %ssl3_accept_bb17 ], [ %s__init_buf___0.0, %ssl3_accept_bb19 ], [ %s__init_buf___0.0, %ssl3_accept_bb21 ], [ %s__init_buf___0.0, %ssl3_accept_bb20 ], [ %s__init_buf___0.0, %ssl3_accept_bb22 ], [ %s__init_buf___0.0, %ssl3_accept_bb25 ], [ %s__init_buf___0.0, %ssl3_accept_bb26 ], [ %s__init_buf___0.0, %ssl3_accept_bb9 ], [ %s__init_buf___0.0, %ssl3_accept_bb29 ], [ %s__init_buf___0.0, %ssl3_accept_bb28 ], [ %s__init_buf___0.0, %ssl3_accept_bb30 ], [ %s__init_buf___0.0, %ssl3_accept_bb31 ], [ %s__init_buf___0.0, %ssl3_accept_bb36 ], [ %s__init_buf___0.0, %ssl3_accept_bb23 ], [ %s__init_buf___0.0, %ssl3_accept_bb24 ]
  %s__state.8 = phi i32 [ %.2, %ssl3_accept_bb13 ], [ %.6, %ssl3_accept_bb33 ], [ 8448, %ssl3_accept_bb41 ], [ 8464, %ssl3_accept_bb48 ], [ 8480, %ssl3_accept_bb49 ], [ 8448, %ssl3_accept_bb11 ], [ 3, %ssl3_accept_LeafBlock30 ], [ 8496, %ssl3_accept_bb10 ], [ 8528, %ssl3_accept_bb15 ], [ 8528, %ssl3_accept_bb14 ], [ 8544, %ssl3_accept_bb17 ], [ 8544, %ssl3_accept_bb19 ], [ 8544, %ssl3_accept_bb21 ], [ 8544, %ssl3_accept_bb20 ], [ 8448, %ssl3_accept_bb25 ], [ 8560, %ssl3_accept_bb22 ], [ 8448, %ssl3_accept_bb26 ], [ %s__s3__tmp__next_state___0.0, %ssl3_accept_bb9 ], [ 8466, %ssl3_accept_bb28 ], [ 8592, %ssl3_accept_bb29 ], [ 8608, %ssl3_accept_bb30 ], [ 8640, %ssl3_accept_bb31 ], [ 8672, %ssl3_accept_bb36 ], [ 8560, %ssl3_accept_bb23 ], [ 8560, %ssl3_accept_bb24 ]
  %"119" = icmp ne i32 %"16", 0
  %"120" = icmp ne i32 %skip.8, 0
  %or.cond15 = or i1 %"119", %"120"
  br i1 %or.cond15, label %ssl3_accept_bb6, label %ssl3_accept_bb51

ssl3_accept_bb51:                                 ; preds = %ssl3_accept_bb50
  %"121" = icmp ne i32 %"6", 0
  br i1 %"121", label %ssl3_accept_bb52, label %ssl3_accept_bb53

ssl3_accept_bb52:                                 ; preds = %ssl3_accept_bb51
  %"122" = call i32 @__VERIFIER_nondet_int()
  %"123" = icmp sle i32 %"122", 0
  br i1 %"123", label %ssl3_accept_bb55, label %ssl3_accept_bb53

ssl3_accept_bb53:                                 ; preds = %ssl3_accept_bb52, %ssl3_accept_bb51
  %"124" = icmp ne i32 %cb.1, 0
  br i1 %"124", label %ssl3_accept_bb54, label %ssl3_accept_bb6

ssl3_accept_bb54:                                 ; preds = %ssl3_accept_bb53
  br label %ssl3_accept_bb6

ssl3_accept_NewDefault:                           ; preds = %ssl3_accept_LeafBlock91, %ssl3_accept_LeafBlock89, %ssl3_accept_LeafBlock87, %ssl3_accept_LeafBlock80, %ssl3_accept_LeafBlock77, %ssl3_accept_LeafBlock74, %ssl3_accept_LeafBlock65, %ssl3_accept_LeafBlock62, %ssl3_accept_LeafBlock59, %ssl3_accept_LeafBlock54, %ssl3_accept_LeafBlock51, %ssl3_accept_LeafBlock40, %ssl3_accept_LeafBlock37, %ssl3_accept_LeafBlock34, %ssl3_accept_LeafBlock30, %ssl3_accept_LeafBlock22, %ssl3_accept_LeafBlock20, %ssl3_accept_LeafBlock18, %ssl3_accept_LeafBlock16, %ssl3_accept_LeafBlock
  br label %ssl3_accept_bb55

ssl3_accept_bb55:                                 ; preds = %ssl3_accept_NewDefault, %ssl3_accept_bb9, %ssl3_accept_bb52, %ssl3_accept_bb7, %ssl3_accept_bb8, %ssl3_accept_bb40, %ssl3_accept_bb36, %ssl3_accept_bb35, %ssl3_accept_bb34, %ssl3_accept_bb32, %ssl3_accept_bb31, %ssl3_accept_bb30, %ssl3_accept_bb29, %ssl3_accept_bb27, %ssl3_accept_bb26, %ssl3_accept_bb25, %ssl3_accept_bb21, %ssl3_accept_bb15, %ssl3_accept_bb12, %ssl3_accept_bb10, %ssl3_accept_bb11, %ssl3_accept_bb47, %ssl3_accept_bb45, %ssl3_accept_bb44
  %ret.0 = phi i32 [ -1, %ssl3_accept_bb44 ], [ -1, %ssl3_accept_bb45 ], [ -1, %ssl3_accept_bb47 ], [ %"44", %ssl3_accept_bb11 ], [ %"41", %ssl3_accept_bb10 ], [ %"46", %ssl3_accept_bb12 ], [ %"52", %ssl3_accept_bb15 ], [ %"69", %ssl3_accept_bb21 ], [ %"80", %ssl3_accept_bb25 ], [ %"82", %ssl3_accept_bb26 ], [ %"84", %ssl3_accept_bb27 ], [ %"87", %ssl3_accept_bb29 ], [ %"89", %ssl3_accept_bb30 ], [ %"91", %ssl3_accept_bb31 ], [ %"93", %ssl3_accept_bb32 ], [ -1, %ssl3_accept_bb34 ], [ %"99", %ssl3_accept_bb35 ], [ -1, %ssl3_accept_bb36 ], [ %"104", %ssl3_accept_bb40 ], [ 1, %ssl3_accept_bb8 ], [ 1, %ssl3_accept_bb7 ], [ -1, %ssl3_accept_NewDefault ], [ %"122", %ssl3_accept_bb52 ], [ -1, %ssl3_accept_bb9 ]
  br label %ssl3_accept_bb56

ssl3_accept_bb56:                                 ; preds = %ssl3_accept_bb42, %ssl3_accept_bb4, %ssl3_accept_bb55
  %.0 = phi i32 [ %ret.0, %ssl3_accept_bb55 ], [ -1, %ssl3_accept_bb4 ], [ -1, %ssl3_accept_bb42 ]
  ret i32 %.0
}

declare i32 @__VERIFIER_nondet_int() #1

declare i64 @__VERIFIER_nondet_long() #1

; Function Attrs: noreturn
declare void @__VERIFIER_error(...) #2

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb57:
  %"125" = call i32 @__kittel_nondef.0() #4
  %"126" = call i32 @__kittel_nondef.0() #4
  %"127" = call i32 @__VERIFIER_nondet_int() #4
  %"128" = call i32 @__VERIFIER_nondet_int() #4
  %"129" = call i32 @__VERIFIER_nondet_int() #4
  %"130" = call i32 @__VERIFIER_nondet_int() #4
  %"131" = call i32 @__VERIFIER_nondet_int() #4
  %"132" = call i32 @__VERIFIER_nondet_int() #4
  %"133" = call i32 @__VERIFIER_nondet_int() #4
  %"134" = call i32 @__VERIFIER_nondet_int() #4
  %"135" = call i32 @__VERIFIER_nondet_int() #4
  %"136" = call i32 @__VERIFIER_nondet_int() #4
  %"137" = call i32 @__VERIFIER_nondet_int() #4
  %"138" = call i32 @__VERIFIER_nondet_int() #4
  %"139" = call i32 @__VERIFIER_nondet_int() #4
  %"140" = call i32 @__VERIFIER_nondet_int() #4
  %"141" = call i32 @__VERIFIER_nondet_int() #4
  %"142" = call i32 @__VERIFIER_nondet_int() #4
  %"143" = call i32 @__VERIFIER_nondet_int() #4
  %"144" = call i32 @__VERIFIER_nondet_int() #4
  %"145" = call i32 @__VERIFIER_nondet_int() #4
  %"146" = call i64 @__VERIFIER_nondet_long() #4
  %"147" = call i32 @__VERIFIER_nondet_int() #4
  %"148" = call i32 @__VERIFIER_nondet_int() #4
  %"149" = call i64 @__VERIFIER_nondet_long() #4
  %"150" = icmp eq i32 %"132", 0
  br i1 %"150", label %main_ssl3_accept.exit, label %main_bb58

main_bb58:                                        ; preds = %main_bb57
  %"151" = sext i32 %"143" to i64
  %"152" = sext i32 %"143" to i64
  %"153" = sext i32 %"133" to i64
  %"154" = sext i32 %"144" to i64
  %"155" = sext i32 %"144" to i64
  %"156" = sext i32 %"143" to i64
  br label %main_bb59

main_bb59:                                        ; preds = %main_bb92, %main_bb93, %main_bb58
  %blastFlag.0.i = phi i32 [ 0, %main_bb58 ], [ %blastFlag.6.i, %main_bb92 ], [ %blastFlag.6.i, %main_bb93 ]
  %got_new_session.0.i = phi i32 [ 0, %main_bb58 ], [ %got_new_session.1.i, %main_bb92 ], [ %got_new_session.1.i, %main_bb93 ]
  %s__s3__tmp__next_state___0.0.i = phi i32 [ %"126", %main_bb58 ], [ %s__s3__tmp__next_state___0.5.i, %main_bb92 ], [ %s__s3__tmp__next_state___0.5.i, %main_bb93 ]
  %s__state.0.i = phi i32 [ 8464, %main_bb58 ], [ %s__state.8.i, %main_bb92 ], [ %s__state.8.i, %main_bb93 ]
  %Pivot102.i = icmp slt i32 %s__state.0.i, 8544
  br i1 %Pivot102.i, label %main_NodeBlock49.i, label %main_NodeBlock99.i

main_NodeBlock49.i:                               ; preds = %main_bb59
  %Pivot50.i = icmp slt i32 %s__state.0.i, 8480
  br i1 %Pivot50.i, label %main_NodeBlock28.i, label %main_NodeBlock47.i

main_NodeBlock28.i:                               ; preds = %main_NodeBlock49.i
  %Pivot29.i = icmp slt i32 %s__state.0.i, 8195
  br i1 %Pivot29.i, label %main_NodeBlock.i, label %main_NodeBlock26.i

main_NodeBlock.i:                                 ; preds = %main_NodeBlock28.i
  %Pivot.i = icmp slt i32 %s__state.0.i, 8192
  %SwitchLeaf.i = icmp eq i32 %s__state.0.i, 3
  %or.cond = and i1 %Pivot.i, %SwitchLeaf.i
  %. = select i1 %or.cond, i32 1, i32 -1
  ret i32 %.

main_NodeBlock26.i:                               ; preds = %main_NodeBlock28.i
  %Pivot27.i = icmp slt i32 %s__state.0.i, 8448
  br i1 %Pivot27.i, label %main_ssl3_accept.exit, label %main_NodeBlock24.i

main_NodeBlock24.i:                               ; preds = %main_NodeBlock26.i
  %Pivot25.i = icmp slt i32 %s__state.0.i, 8464
  br i1 %Pivot25.i, label %main_LeafBlock20.i, label %main_LeafBlock22.i

main_LeafBlock20.i:                               ; preds = %main_NodeBlock24.i
  %SwitchLeaf21.i = icmp eq i32 %s__state.0.i, 8448
  br i1 %SwitchLeaf21.i, label %main_bb60, label %main_ssl3_accept.exit

main_bb60:                                        ; preds = %main_LeafBlock20.i
  %"157" = call i32 @__VERIFIER_nondet_int() #4
  %"158" = sext i32 %"157" to i64
  %"159" = icmp sgt i64 %"158", 0
  %"160" = icmp sle i64 %"149", 0
  %or.cond14.i = and i1 %"159", %"160"
  br i1 %or.cond14.i, label %main_ssl3_accept.exit, label %main_bb92

main_LeafBlock22.i:                               ; preds = %main_NodeBlock24.i
  %s__state.0.off.i = add i32 %s__state.0.i, -8464
  %SwitchLeaf23.i = icmp ule i32 %s__state.0.off.i, 2
  br i1 %SwitchLeaf23.i, label %main_bb61, label %main_ssl3_accept.exit

main_bb61:                                        ; preds = %main_LeafBlock22.i
  %"161" = call i32 @__VERIFIER_nondet_int() #4
  %"162" = icmp eq i32 %blastFlag.0.i, 0
  %.blastFlag.0.i = select i1 %"162", i32 1, i32 %blastFlag.0.i
  %"163" = icmp sle i32 %"161", 0
  br i1 %"163", label %main_ssl3_accept.exit, label %main_bb92

main_NodeBlock47.i:                               ; preds = %main_NodeBlock49.i
  %Pivot48.i = icmp slt i32 %s__state.0.i, 8496
  br i1 %Pivot48.i, label %main_NodeBlock32.i, label %main_NodeBlock45.i

main_NodeBlock32.i:                               ; preds = %main_NodeBlock47.i
  %Pivot33.i = icmp slt i32 %s__state.0.i, 8482
  br i1 %Pivot33.i, label %main_bb62, label %main_LeafBlock30.i

main_bb62:                                        ; preds = %main_NodeBlock32.i
  %"164" = call i32 @__VERIFIER_nondet_int() #4
  %"165" = icmp sle i32 %"164", 0
  br i1 %"165", label %main_ssl3_accept.exit, label %main_bb92

main_LeafBlock30.i:                               ; preds = %main_NodeBlock32.i
  %SwitchLeaf31.i = icmp eq i32 %s__state.0.i, 8482
  br i1 %SwitchLeaf31.i, label %main_bb92, label %main_ssl3_accept.exit

main_NodeBlock45.i:                               ; preds = %main_NodeBlock47.i
  %Pivot46.i = icmp slt i32 %s__state.0.i, 8512
  br i1 %Pivot46.i, label %main_LeafBlock34.i, label %main_NodeBlock43.i

main_LeafBlock34.i:                               ; preds = %main_NodeBlock45.i
  %s__state.0.off35.i = add i32 %s__state.0.i, -8496
  %SwitchLeaf36.i = icmp ule i32 %s__state.0.off35.i, 1
  br i1 %SwitchLeaf36.i, label %main_bb63, label %main_ssl3_accept.exit

main_bb63:                                        ; preds = %main_LeafBlock34.i
  %"166" = call i32 @__VERIFIER_nondet_int() #4
  %"167" = icmp eq i32 %blastFlag.0.i, 1
  %.blastFlag.01.i = select i1 %"167", i32 2, i32 %blastFlag.0.i
  %"168" = icmp sle i32 %"166", 0
  br i1 %"168", label %main_ssl3_accept.exit, label %main_bb64

main_bb64:                                        ; preds = %main_bb63
  %"169" = icmp ne i32 %"130", 0
  %.2.i = select i1 %"169", i32 8656, i32 8512
  br label %main_bb92

main_NodeBlock43.i:                               ; preds = %main_NodeBlock45.i
  %Pivot44.i = icmp slt i32 %s__state.0.i, 8528
  br i1 %Pivot44.i, label %main_LeafBlock37.i, label %main_LeafBlock40.i

main_LeafBlock37.i:                               ; preds = %main_NodeBlock43.i
  %s__state.0.off38.i = add i32 %s__state.0.i, -8512
  %SwitchLeaf39.i = icmp ule i32 %s__state.0.off38.i, 1
  br i1 %SwitchLeaf39.i, label %main_bb65, label %main_ssl3_accept.exit

main_bb65:                                        ; preds = %main_LeafBlock37.i
  %"170" = add i64 %"151", 256
  %"171" = icmp ne i64 %"170", 0
  br i1 %"171", label %main_bb92, label %main_bb66

main_bb66:                                        ; preds = %main_bb65
  %"172" = call i32 @__VERIFIER_nondet_int() #4
  %"173" = icmp sle i32 %"172", 0
  br i1 %"173", label %main_ssl3_accept.exit, label %main_bb92

main_LeafBlock40.i:                               ; preds = %main_NodeBlock43.i
  %s__state.0.off41.i = add i32 %s__state.0.i, -8528
  %SwitchLeaf42.i = icmp ule i32 %s__state.0.off41.i, 1
  br i1 %SwitchLeaf42.i, label %main_bb67, label %main_ssl3_accept.exit

main_bb67:                                        ; preds = %main_LeafBlock40.i
  %"174" = add i64 %"153", 2097152
  %"175" = icmp ne i64 %"174", 0
  %"176" = add i64 %"152", 30
  %"177" = icmp ne i64 %"176", 0
  %or.cond.i = or i1 %"175", %"177"
  br i1 %or.cond.i, label %main_bb72, label %main_bb68

main_bb68:                                        ; preds = %main_bb67
  %"178" = add i64 %"152", 1
  %"179" = icmp ne i64 %"178", 0
  br i1 %"179", label %main_bb69, label %main_bb92

main_bb69:                                        ; preds = %main_bb68
  %"180" = icmp eq i32 %"136", 0
  br i1 %"180", label %main_bb72, label %main_bb70

main_bb70:                                        ; preds = %main_bb69
  %"181" = add i64 %"154", 2
  %"182" = icmp ne i64 %"181", 0
  br i1 %"182", label %main_bb71, label %main_bb92

main_bb71:                                        ; preds = %main_bb70
  %"183" = call i32 @__VERIFIER_nondet_int() #4
  %"184" = add i64 %"155", 4
  %"185" = icmp ne i64 %"184", 0
  %.4.i = select i1 %"185", i32 512, i32 1024
  %"186" = mul nsw i32 %"183", 8
  %"187" = icmp sgt i32 %"186", %.4.i
  br i1 %"187", label %main_bb72, label %main_bb92

main_bb72:                                        ; preds = %main_bb71, %main_bb69, %main_bb67
  %"188" = call i32 @__VERIFIER_nondet_int() #4
  %"189" = icmp sle i32 %"188", 0
  br i1 %"189", label %main_ssl3_accept.exit, label %main_bb92

main_NodeBlock99.i:                               ; preds = %main_bb59
  %Pivot100.i = icmp slt i32 %s__state.0.i, 8640
  br i1 %Pivot100.i, label %main_NodeBlock72.i, label %main_NodeBlock97.i

main_NodeBlock72.i:                               ; preds = %main_NodeBlock99.i
  %Pivot73.i = icmp slt i32 %s__state.0.i, 8576
  br i1 %Pivot73.i, label %main_NodeBlock57.i, label %main_NodeBlock70.i

main_NodeBlock57.i:                               ; preds = %main_NodeBlock72.i
  %Pivot58.i = icmp slt i32 %s__state.0.i, 8560
  br i1 %Pivot58.i, label %main_LeafBlock51.i, label %main_LeafBlock54.i

main_LeafBlock51.i:                               ; preds = %main_NodeBlock57.i
  %s__state.0.off52.i = add i32 %s__state.0.i, -8544
  %SwitchLeaf53.i = icmp ule i32 %s__state.0.off52.i, 1
  br i1 %SwitchLeaf53.i, label %main_bb73, label %main_ssl3_accept.exit

main_bb73:                                        ; preds = %main_LeafBlock51.i
  %"190" = add nsw i32 %"134", 1
  %"191" = icmp ne i32 %"190", 0
  br i1 %"191", label %main_bb74, label %main_bb92

main_bb74:                                        ; preds = %main_bb73
  %"192" = icmp ne i32 %"135", 0
  %"193" = add nsw i32 %"134", 4
  %"194" = icmp ne i32 %"193", 0
  %or.cond11.i = and i1 %"192", %"194"
  br i1 %or.cond11.i, label %main_bb92, label %main_bb75

main_bb75:                                        ; preds = %main_bb74
  %"195" = add i64 %"156", 256
  %"196" = icmp eq i64 %"195", 0
  %"197" = add nsw i32 %"134", 2
  %"198" = icmp ne i32 %"197", 0
  %or.cond13.i = or i1 %"196", %"198"
  br i1 %or.cond13.i, label %main_bb76, label %main_bb92

main_bb76:                                        ; preds = %main_bb75
  %"199" = call i32 @__VERIFIER_nondet_int() #4
  %"200" = icmp sle i32 %"199", 0
  br i1 %"200", label %main_ssl3_accept.exit, label %main_bb92

main_LeafBlock54.i:                               ; preds = %main_NodeBlock57.i
  %s__state.0.off55.i = add i32 %s__state.0.i, -8560
  %SwitchLeaf56.i = icmp ule i32 %s__state.0.off55.i, 1
  br i1 %SwitchLeaf56.i, label %main_bb77, label %main_ssl3_accept.exit

main_bb77:                                        ; preds = %main_LeafBlock54.i
  %"201" = call i32 @__VERIFIER_nondet_int() #4
  %"202" = icmp sle i32 %"201", 0
  br i1 %"202", label %main_ssl3_accept.exit, label %main_bb92

main_NodeBlock70.i:                               ; preds = %main_NodeBlock72.i
  %Pivot71.i = icmp slt i32 %s__state.0.i, 8592
  br i1 %Pivot71.i, label %main_LeafBlock59.i, label %main_NodeBlock68.i

main_LeafBlock59.i:                               ; preds = %main_NodeBlock70.i
  %s__state.0.off60.i = add i32 %s__state.0.i, -8576
  %SwitchLeaf61.i = icmp ule i32 %s__state.0.off60.i, 1
  br i1 %SwitchLeaf61.i, label %main_bb78, label %main_ssl3_accept.exit

main_bb78:                                        ; preds = %main_LeafBlock59.i
  %"203" = call i32 @__VERIFIER_nondet_int() #4
  %"204" = icmp sle i32 %"203", 0
  br i1 %"204", label %main_ssl3_accept.exit, label %main_bb79

main_bb79:                                        ; preds = %main_bb78
  %"205" = icmp eq i32 %"203", 2
  br i1 %"205", label %main_bb92, label %main_bb80

main_bb80:                                        ; preds = %main_bb79
  %"206" = call i32 @__VERIFIER_nondet_int() #4
  %"207" = icmp sle i32 %"206", 0
  br i1 %"207", label %main_ssl3_accept.exit, label %main_bb92

main_NodeBlock68.i:                               ; preds = %main_NodeBlock70.i
  %Pivot69.i = icmp slt i32 %s__state.0.i, 8608
  br i1 %Pivot69.i, label %main_LeafBlock62.i, label %main_LeafBlock65.i

main_LeafBlock62.i:                               ; preds = %main_NodeBlock68.i
  %s__state.0.off63.i = add i32 %s__state.0.i, -8592
  %SwitchLeaf64.i = icmp ule i32 %s__state.0.off63.i, 1
  br i1 %SwitchLeaf64.i, label %main_bb81, label %main_ssl3_accept.exit

main_bb81:                                        ; preds = %main_LeafBlock62.i
  %"208" = call i32 @__VERIFIER_nondet_int() #4
  %"209" = icmp sle i32 %"208", 0
  br i1 %"209", label %main_ssl3_accept.exit, label %main_bb92

main_LeafBlock65.i:                               ; preds = %main_NodeBlock68.i
  %s__state.0.off66.i = add i32 %s__state.0.i, -8608
  %SwitchLeaf67.i = icmp ule i32 %s__state.0.off66.i, 1
  br i1 %SwitchLeaf67.i, label %main_bb82, label %main_ssl3_accept.exit

main_bb82:                                        ; preds = %main_LeafBlock65.i
  %"210" = call i32 @__VERIFIER_nondet_int() #4
  %"211" = icmp sle i32 %"210", 0
  br i1 %"211", label %main_ssl3_accept.exit, label %main_bb92

main_NodeBlock97.i:                               ; preds = %main_NodeBlock99.i
  %Pivot98.i = icmp slt i32 %s__state.0.i, 12292
  br i1 %Pivot98.i, label %main_NodeBlock85.i, label %main_NodeBlock95.i

main_NodeBlock85.i:                               ; preds = %main_NodeBlock97.i
  %Pivot86.i = icmp slt i32 %s__state.0.i, 8656
  br i1 %Pivot86.i, label %main_LeafBlock74.i, label %main_NodeBlock83.i

main_LeafBlock74.i:                               ; preds = %main_NodeBlock85.i
  %s__state.0.off75.i = add i32 %s__state.0.i, -8640
  %SwitchLeaf76.i = icmp ule i32 %s__state.0.off75.i, 1
  br i1 %SwitchLeaf76.i, label %main_bb83, label %main_ssl3_accept.exit

main_bb83:                                        ; preds = %main_LeafBlock74.i
  %"212" = call i32 @__VERIFIER_nondet_int() #4
  %"213" = icmp eq i32 %blastFlag.0.i, 3
  %.blastFlag.05.i = select i1 %"213", i32 4, i32 %blastFlag.0.i
  %"214" = icmp sle i32 %"212", 0
  br i1 %"214", label %main_ssl3_accept.exit, label %main_bb84

main_bb84:                                        ; preds = %main_bb83
  %"215" = icmp ne i32 %"130", 0
  %.6.i = select i1 %"215", i32 3, i32 8656
  br label %main_bb92

main_NodeBlock83.i:                               ; preds = %main_NodeBlock85.i
  %Pivot84.i = icmp slt i32 %s__state.0.i, 8672
  br i1 %Pivot84.i, label %main_LeafBlock77.i, label %main_LeafBlock80.i

main_LeafBlock77.i:                               ; preds = %main_NodeBlock83.i
  %s__state.0.off78.i = add i32 %s__state.0.i, -8656
  %SwitchLeaf79.i = icmp ule i32 %s__state.0.off78.i, 1
  br i1 %SwitchLeaf79.i, label %main_bb85, label %main_ssl3_accept.exit

main_bb85:                                        ; preds = %main_LeafBlock77.i
  %"216" = call i32 @__VERIFIER_nondet_int() #4
  %"217" = icmp ne i32 %"216", 0
  br i1 %"217", label %main_bb86, label %main_ssl3_accept.exit

main_bb86:                                        ; preds = %main_bb85
  %"218" = call i32 @__VERIFIER_nondet_int() #4
  %"219" = icmp eq i32 %blastFlag.0.i, 2
  %.blastFlag.07.i = select i1 %"219", i32 3, i32 %blastFlag.0.i
  %"220" = icmp sle i32 %"218", 0
  br i1 %"220", label %main_ssl3_accept.exit, label %main_bb87

main_bb87:                                        ; preds = %main_bb86
  %"221" = call i32 @__VERIFIER_nondet_int() #4
  %"222" = icmp ne i32 %"221", 0
  br i1 %"222", label %main_bb92, label %main_ssl3_accept.exit

main_LeafBlock80.i:                               ; preds = %main_NodeBlock83.i
  %s__state.0.off81.i = add i32 %s__state.0.i, -8672
  %SwitchLeaf82.i = icmp ule i32 %s__state.0.off81.i, 1
  br i1 %SwitchLeaf82.i, label %main_bb88, label %main_ssl3_accept.exit

main_bb88:                                        ; preds = %main_LeafBlock80.i
  %"223" = call i32 @__VERIFIER_nondet_int() #4
  %Pivot109.i = icmp slt i32 %blastFlag.0.i, 4
  br i1 %Pivot109.i, label %main_LeafBlock104.i, label %main_LeafBlock106.i

main_LeafBlock104.i:                              ; preds = %main_bb88
  %SwitchLeaf105.i = icmp eq i32 %blastFlag.0.i, 3
  br i1 %SwitchLeaf105.i, label %main_bb89, label %main_NewDefault103.i

main_bb89:                                        ; preds = %main_LeafBlock104.i
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_LeafBlock106.i:                              ; preds = %main_bb88
  %SwitchLeaf107.i = icmp eq i32 %blastFlag.0.i, 4
  br i1 %SwitchLeaf107.i, label %main_bb90, label %main_NewDefault103.i

main_NewDefault103.i:                             ; preds = %main_LeafBlock106.i, %main_LeafBlock104.i
  br label %main_bb90

main_bb90:                                        ; preds = %main_NewDefault103.i, %main_LeafBlock106.i
  %blastFlag.5.i = phi i32 [ %blastFlag.0.i, %main_NewDefault103.i ], [ 5, %main_LeafBlock106.i ]
  %"224" = icmp sle i32 %"223", 0
  br i1 %"224", label %main_ssl3_accept.exit, label %main_bb91

main_bb91:                                        ; preds = %main_bb90
  %"225" = icmp ne i32 %"130", 0
  %.8.i = select i1 %"225", i32 8640, i32 3
  br label %main_bb92

main_bb92:                                        ; preds = %main_bb91, %main_bb87, %main_bb84, %main_bb82, %main_bb81, %main_bb80, %main_bb79, %main_bb77, %main_bb76, %main_bb75, %main_bb74, %main_bb73, %main_bb72, %main_bb71, %main_bb70, %main_bb68, %main_bb66, %main_bb65, %main_bb64, %main_LeafBlock30.i, %main_bb62, %main_bb61, %main_bb60
  %blastFlag.6.i = phi i32 [ %.blastFlag.01.i, %main_bb64 ], [ %.blastFlag.05.i, %main_bb84 ], [ %blastFlag.5.i, %main_bb91 ], [ %blastFlag.0.i, %main_bb62 ], [ %blastFlag.0.i, %main_LeafBlock30.i ], [ %.blastFlag.0.i, %main_bb61 ], [ %blastFlag.0.i, %main_bb66 ], [ %blastFlag.0.i, %main_bb65 ], [ %blastFlag.0.i, %main_bb68 ], [ %blastFlag.0.i, %main_bb70 ], [ %blastFlag.0.i, %main_bb72 ], [ %blastFlag.0.i, %main_bb71 ], [ %blastFlag.0.i, %main_bb73 ], [ %blastFlag.0.i, %main_bb76 ], [ %blastFlag.0.i, %main_bb77 ], [ %blastFlag.0.i, %main_bb60 ], [ %blastFlag.0.i, %main_bb80 ], [ %blastFlag.0.i, %main_bb79 ], [ %blastFlag.0.i, %main_bb81 ], [ %blastFlag.0.i, %main_bb82 ], [ %.blastFlag.07.i, %main_bb87 ], [ %blastFlag.0.i, %main_bb74 ], [ %blastFlag.0.i, %main_bb75 ]
  %got_new_session.1.i = phi i32 [ %got_new_session.0.i, %main_bb64 ], [ %got_new_session.0.i, %main_bb84 ], [ %got_new_session.0.i, %main_bb91 ], [ %got_new_session.0.i, %main_bb62 ], [ %got_new_session.0.i, %main_LeafBlock30.i ], [ 1, %main_bb61 ], [ %got_new_session.0.i, %main_bb66 ], [ %got_new_session.0.i, %main_bb65 ], [ %got_new_session.0.i, %main_bb68 ], [ %got_new_session.0.i, %main_bb70 ], [ %got_new_session.0.i, %main_bb72 ], [ %got_new_session.0.i, %main_bb71 ], [ %got_new_session.0.i, %main_bb73 ], [ %got_new_session.0.i, %main_bb76 ], [ %got_new_session.0.i, %main_bb77 ], [ %got_new_session.0.i, %main_bb60 ], [ %got_new_session.0.i, %main_bb80 ], [ %got_new_session.0.i, %main_bb79 ], [ %got_new_session.0.i, %main_bb81 ], [ %got_new_session.0.i, %main_bb82 ], [ %got_new_session.0.i, %main_bb87 ], [ %got_new_session.0.i, %main_bb74 ], [ %got_new_session.0.i, %main_bb75 ]
  %skip.8.i = phi i32 [ 0, %main_bb64 ], [ 0, %main_bb84 ], [ 0, %main_bb91 ], [ 0, %main_bb62 ], [ 0, %main_LeafBlock30.i ], [ 0, %main_bb61 ], [ 1, %main_bb65 ], [ 0, %main_bb66 ], [ 0, %main_bb72 ], [ 1, %main_bb71 ], [ 1, %main_bb70 ], [ 1, %main_bb68 ], [ 0, %main_bb76 ], [ 1, %main_bb73 ], [ 0, %main_bb77 ], [ 0, %main_bb60 ], [ 0, %main_bb80 ], [ 0, %main_bb79 ], [ 0, %main_bb81 ], [ 0, %main_bb82 ], [ 0, %main_bb87 ], [ 1, %main_bb74 ], [ 1, %main_bb75 ]
  %s__s3__tmp__next_state___0.5.i = phi i32 [ %s__s3__tmp__next_state___0.0.i, %main_bb64 ], [ %s__s3__tmp__next_state___0.0.i, %main_bb84 ], [ %.8.i, %main_bb91 ], [ 8482, %main_bb62 ], [ %s__s3__tmp__next_state___0.0.i, %main_LeafBlock30.i ], [ %s__s3__tmp__next_state___0.0.i, %main_bb61 ], [ %s__s3__tmp__next_state___0.0.i, %main_bb66 ], [ %s__s3__tmp__next_state___0.0.i, %main_bb65 ], [ %s__s3__tmp__next_state___0.0.i, %main_bb68 ], [ %s__s3__tmp__next_state___0.0.i, %main_bb70 ], [ %s__s3__tmp__next_state___0.0.i, %main_bb72 ], [ %s__s3__tmp__next_state___0.0.i, %main_bb71 ], [ 8576, %main_bb76 ], [ %s__s3__tmp__next_state___0.0.i, %main_bb73 ], [ 8576, %main_bb77 ], [ %s__s3__tmp__next_state___0.0.i, %main_bb60 ], [ %s__s3__tmp__next_state___0.0.i, %main_bb80 ], [ %s__s3__tmp__next_state___0.0.i, %main_bb79 ], [ %s__s3__tmp__next_state___0.0.i, %main_bb81 ], [ %s__s3__tmp__next_state___0.0.i, %main_bb82 ], [ %s__s3__tmp__next_state___0.0.i, %main_bb87 ], [ %s__s3__tmp__next_state___0.0.i, %main_bb74 ], [ %s__s3__tmp__next_state___0.0.i, %main_bb75 ]
  %s__state.8.i = phi i32 [ %.2.i, %main_bb64 ], [ %.6.i, %main_bb84 ], [ 8448, %main_bb91 ], [ 8448, %main_bb62 ], [ 3, %main_LeafBlock30.i ], [ 8496, %main_bb61 ], [ 8528, %main_bb66 ], [ 8528, %main_bb65 ], [ 8544, %main_bb68 ], [ 8544, %main_bb70 ], [ 8544, %main_bb72 ], [ 8544, %main_bb71 ], [ 8448, %main_bb76 ], [ 8560, %main_bb73 ], [ 8448, %main_bb77 ], [ %s__s3__tmp__next_state___0.0.i, %main_bb60 ], [ 8466, %main_bb79 ], [ 8592, %main_bb80 ], [ 8608, %main_bb81 ], [ 8640, %main_bb82 ], [ 8672, %main_bb87 ], [ 8560, %main_bb74 ], [ 8560, %main_bb75 ]
  %"226" = icmp ne i32 %"141", 0
  %"227" = icmp ne i32 %skip.8.i, 0
  %or.cond15.i = or i1 %"226", %"227"
  %or.cond15.i.not = xor i1 %or.cond15.i, true
  %"228" = icmp ne i32 %"131", 0
  %or.cond1 = and i1 %or.cond15.i.not, %"228"
  br i1 %or.cond1, label %main_bb93, label %main_bb59

main_bb93:                                        ; preds = %main_bb92
  %"229" = call i32 @__VERIFIER_nondet_int() #4
  %"230" = icmp sle i32 %"229", 0
  br i1 %"230", label %main_ssl3_accept.exit, label %main_bb59

main_ssl3_accept.exit:                            ; preds = %main_NodeBlock26.i, %main_bb60, %main_bb61, %main_bb62, %main_bb63, %main_bb66, %main_bb72, %main_bb76, %main_bb77, %main_bb78, %main_bb80, %main_bb81, %main_bb82, %main_bb83, %main_bb85, %main_bb86, %main_bb87, %main_bb90, %main_bb93, %main_LeafBlock80.i, %main_LeafBlock77.i, %main_LeafBlock74.i, %main_LeafBlock65.i, %main_LeafBlock62.i, %main_LeafBlock59.i, %main_LeafBlock54.i, %main_LeafBlock51.i, %main_LeafBlock40.i, %main_LeafBlock37.i, %main_LeafBlock34.i, %main_LeafBlock30.i, %main_LeafBlock22.i, %main_LeafBlock20.i, %main_bb57
  %.0.i = phi i32 [ -1, %main_bb57 ], [ %"164", %main_bb62 ], [ %"161", %main_bb61 ], [ %"166", %main_bb63 ], [ %"172", %main_bb66 ], [ %"188", %main_bb72 ], [ %"199", %main_bb76 ], [ %"201", %main_bb77 ], [ %"203", %main_bb78 ], [ %"206", %main_bb80 ], [ %"208", %main_bb81 ], [ %"210", %main_bb82 ], [ %"212", %main_bb83 ], [ -1, %main_bb85 ], [ %"218", %main_bb86 ], [ -1, %main_bb87 ], [ %"223", %main_bb90 ], [ %"229", %main_bb93 ], [ -1, %main_bb60 ], [ -1, %main_LeafBlock80.i ], [ -1, %main_LeafBlock77.i ], [ -1, %main_LeafBlock74.i ], [ -1, %main_LeafBlock65.i ], [ -1, %main_LeafBlock62.i ], [ -1, %main_LeafBlock59.i ], [ -1, %main_LeafBlock54.i ], [ -1, %main_LeafBlock51.i ], [ -1, %main_LeafBlock40.i ], [ -1, %main_LeafBlock37.i ], [ -1, %main_LeafBlock34.i ], [ -1, %main_LeafBlock30.i ], [ -1, %main_LeafBlock22.i ], [ -1, %main_LeafBlock20.i ], [ -1, %main_NodeBlock26.i ]
  ret i32 %.0.i

main_NodeBlock95.i:                               ; preds = %main_NodeBlock97.i
  ret i32 -1
}

declare i32 @__kittel_nondef.0()

declare i64 @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

