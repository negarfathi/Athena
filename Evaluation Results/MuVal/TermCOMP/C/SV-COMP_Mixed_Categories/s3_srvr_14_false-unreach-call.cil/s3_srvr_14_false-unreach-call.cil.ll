; ModuleID = 'Benchmarks/TermCOMP/C/SV-COMP_Mixed_Categories/s3_srvr_14_false-unreach-call.cil/s3_srvr_14_false-unreach-call.cil.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @ssl3_accept(i32 %initial_state) #0 {
ssl3_accept_bb0:
  %"0" = call i32 @__kittel_nondef.0()
  %"1" = call i32 @__kittel_nondef.0()
  %"2" = call i64 @__kittel_nondef.1()
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
  %"21" = call i32 @__VERIFIER_nondet_int()
  %"22" = call i32 @__VERIFIER_nondet_int()
  %"23" = call i32 @__VERIFIER_nondet_int()
  %"24" = call i32 @__VERIFIER_nondet_int()
  %"25" = call i32 @__VERIFIER_nondet_int()
  %"26" = call i64 @__VERIFIER_nondet_long()
  %"27" = call i32 @__VERIFIER_nondet_int()
  %"28" = call i32 @__VERIFIER_nondet_int()
  %"29" = call i32 @__VERIFIER_nondet_int()
  %"30" = icmp ne i32 %"3", 0
  br i1 %"30", label %ssl3_accept_bb2, label %ssl3_accept_bb1

ssl3_accept_bb1:                                  ; preds = %ssl3_accept_bb0
  %"31" = icmp ne i32 %"13", 0
  %. = select i1 %"31", i32 %"13", i32 0
  br label %ssl3_accept_bb2

ssl3_accept_bb2:                                  ; preds = %ssl3_accept_bb0, %ssl3_accept_bb1
  %cb.1 = phi i32 [ %., %ssl3_accept_bb1 ], [ %"3", %ssl3_accept_bb0 ]
  %"32" = add nsw i32 %"20", 12288
  %"33" = icmp ne i32 %"32", 0
  br i1 %"33", label %ssl3_accept_bb3, label %ssl3_accept_bb4

ssl3_accept_bb3:                                  ; preds = %ssl3_accept_bb2
  br label %ssl3_accept_bb4

ssl3_accept_bb4:                                  ; preds = %ssl3_accept_bb3, %ssl3_accept_bb2
  %"34" = icmp eq i32 %"8", 0
  br i1 %"34", label %ssl3_accept_bb67, label %ssl3_accept_bb5

ssl3_accept_bb5:                                  ; preds = %ssl3_accept_bb4
  %"35" = sext i32 %"18" to i64
  %"36" = sext i32 %"18" to i64
  %"37" = sext i32 %"9" to i64
  %"38" = sext i32 %"19" to i64
  %"39" = sext i32 %"19" to i64
  %"40" = sext i32 %"18" to i64
  br label %ssl3_accept_bb6

ssl3_accept_bb6:                                  ; preds = %ssl3_accept_bb59, %ssl3_accept_bb64, %ssl3_accept_bb65, %ssl3_accept_bb5
  %blastFlag.0 = phi i32 [ 0, %ssl3_accept_bb5 ], [ %blastFlag.11, %ssl3_accept_bb65 ], [ %blastFlag.11, %ssl3_accept_bb64 ], [ %blastFlag.11, %ssl3_accept_bb59 ]
  %got_new_session.0 = phi i32 [ 0, %ssl3_accept_bb5 ], [ %got_new_session.1, %ssl3_accept_bb65 ], [ %got_new_session.1, %ssl3_accept_bb64 ], [ %got_new_session.1, %ssl3_accept_bb59 ]
  %num1.0 = phi i64 [ %"2", %ssl3_accept_bb5 ], [ %num1.2, %ssl3_accept_bb65 ], [ %num1.2, %ssl3_accept_bb64 ], [ %num1.2, %ssl3_accept_bb59 ]
  %s__s3__tmp__next_state___0.0 = phi i32 [ %"1", %ssl3_accept_bb5 ], [ %s__s3__tmp__next_state___0.5, %ssl3_accept_bb65 ], [ %s__s3__tmp__next_state___0.5, %ssl3_accept_bb64 ], [ %s__s3__tmp__next_state___0.5, %ssl3_accept_bb59 ]
  %s__ctx__stats__sess_accept.0 = phi i32 [ %"15", %ssl3_accept_bb5 ], [ %s__ctx__stats__sess_accept.2, %ssl3_accept_bb65 ], [ %s__ctx__stats__sess_accept.2, %ssl3_accept_bb64 ], [ %s__ctx__stats__sess_accept.2, %ssl3_accept_bb59 ]
  %s__ctx__stats__sess_accept_renegotiate.0 = phi i32 [ %"14", %ssl3_accept_bb5 ], [ %s__ctx__stats__sess_accept_renegotiate.2, %ssl3_accept_bb65 ], [ %s__ctx__stats__sess_accept_renegotiate.2, %ssl3_accept_bb64 ], [ %s__ctx__stats__sess_accept_renegotiate.2, %ssl3_accept_bb59 ]
  %s__init_buf___0.0 = phi i32 [ %"0", %ssl3_accept_bb5 ], [ %s__init_buf___0.2, %ssl3_accept_bb65 ], [ %s__init_buf___0.2, %ssl3_accept_bb64 ], [ %s__init_buf___0.2, %ssl3_accept_bb59 ]
  %s__state.0 = phi i32 [ %initial_state, %ssl3_accept_bb5 ], [ %s__state.8, %ssl3_accept_bb65 ], [ %s__state.8, %ssl3_accept_bb64 ], [ %s__state.8, %ssl3_accept_bb59 ]
  br label %ssl3_accept_NodeBlock102

ssl3_accept_NodeBlock102:                         ; preds = %ssl3_accept_bb6
  %Pivot103 = icmp slt i32 %s__state.0, 8544
  br i1 %Pivot103, label %ssl3_accept_NodeBlock50, label %ssl3_accept_NodeBlock100

ssl3_accept_NodeBlock50:                          ; preds = %ssl3_accept_NodeBlock102
  %Pivot51 = icmp slt i32 %s__state.0, 8480
  br i1 %Pivot51, label %ssl3_accept_NodeBlock29, label %ssl3_accept_NodeBlock48

ssl3_accept_NodeBlock29:                          ; preds = %ssl3_accept_NodeBlock50
  %Pivot30 = icmp slt i32 %s__state.0, 8195
  br i1 %Pivot30, label %ssl3_accept_NodeBlock, label %ssl3_accept_NodeBlock27

ssl3_accept_NodeBlock:                            ; preds = %ssl3_accept_NodeBlock29
  %Pivot = icmp slt i32 %s__state.0, 8192
  br i1 %Pivot, label %ssl3_accept_LeafBlock, label %ssl3_accept_LeafBlock17

ssl3_accept_LeafBlock:                            ; preds = %ssl3_accept_NodeBlock
  %SwitchLeaf = icmp eq i32 %s__state.0, 3
  br i1 %SwitchLeaf, label %ssl3_accept_bb7, label %ssl3_accept_NewDefault

ssl3_accept_bb7:                                  ; preds = %ssl3_accept_LeafBlock
  %"41" = icmp ne i32 %got_new_session.0, 0
  br i1 %"41", label %ssl3_accept_bb8, label %ssl3_accept_bb66

ssl3_accept_bb8:                                  ; preds = %ssl3_accept_bb7
  br label %ssl3_accept_bb66

ssl3_accept_LeafBlock17:                          ; preds = %ssl3_accept_NodeBlock
  %SwitchLeaf18 = icmp eq i32 %s__state.0, 8192
  br i1 %SwitchLeaf18, label %ssl3_accept_bb51, label %ssl3_accept_NewDefault

ssl3_accept_NodeBlock27:                          ; preds = %ssl3_accept_NodeBlock29
  %Pivot28 = icmp slt i32 %s__state.0, 8448
  br i1 %Pivot28, label %ssl3_accept_LeafBlock19, label %ssl3_accept_NodeBlock25

ssl3_accept_LeafBlock19:                          ; preds = %ssl3_accept_NodeBlock27
  %SwitchLeaf20 = icmp eq i32 %s__state.0, 8195
  br i1 %SwitchLeaf20, label %ssl3_accept_bb51, label %ssl3_accept_NewDefault

ssl3_accept_NodeBlock25:                          ; preds = %ssl3_accept_NodeBlock27
  %Pivot26 = icmp slt i32 %s__state.0, 8464
  br i1 %Pivot26, label %ssl3_accept_LeafBlock21, label %ssl3_accept_LeafBlock23

ssl3_accept_LeafBlock21:                          ; preds = %ssl3_accept_NodeBlock25
  %SwitchLeaf22 = icmp eq i32 %s__state.0, 8448
  br i1 %SwitchLeaf22, label %ssl3_accept_bb9, label %ssl3_accept_NewDefault

ssl3_accept_bb9:                                  ; preds = %ssl3_accept_LeafBlock21
  %"42" = icmp sgt i64 %num1.0, 0
  br i1 %"42", label %ssl3_accept_bb10, label %ssl3_accept_bb59

ssl3_accept_bb10:                                 ; preds = %ssl3_accept_bb9
  %"43" = icmp sle i64 %"26", 0
  br i1 %"43", label %ssl3_accept_bb66, label %ssl3_accept_bb59

ssl3_accept_LeafBlock23:                          ; preds = %ssl3_accept_NodeBlock25
  %s__state.0.off = add i32 %s__state.0, -8464
  %SwitchLeaf24 = icmp ule i32 %s__state.0.off, 2
  br i1 %SwitchLeaf24, label %ssl3_accept_bb11, label %ssl3_accept_NewDefault

ssl3_accept_bb11:                                 ; preds = %ssl3_accept_LeafBlock23
  %"44" = call i32 @__VERIFIER_nondet_int()
  %"45" = icmp eq i32 %blastFlag.0, 0
  %.blastFlag.0 = select i1 %"45", i32 1, i32 %blastFlag.0
  %"46" = icmp sle i32 %"44", 0
  br i1 %"46", label %ssl3_accept_bb66, label %ssl3_accept_bb59

ssl3_accept_NodeBlock48:                          ; preds = %ssl3_accept_NodeBlock50
  %Pivot49 = icmp slt i32 %s__state.0, 8496
  br i1 %Pivot49, label %ssl3_accept_NodeBlock33, label %ssl3_accept_NodeBlock46

ssl3_accept_NodeBlock33:                          ; preds = %ssl3_accept_NodeBlock48
  %Pivot34 = icmp slt i32 %s__state.0, 8482
  br i1 %Pivot34, label %ssl3_accept_bb12, label %ssl3_accept_LeafBlock31

ssl3_accept_bb12:                                 ; preds = %ssl3_accept_NodeBlock33
  %"47" = call i32 @__VERIFIER_nondet_int()
  %"48" = icmp sle i32 %"47", 0
  br i1 %"48", label %ssl3_accept_bb66, label %ssl3_accept_bb59

ssl3_accept_LeafBlock31:                          ; preds = %ssl3_accept_NodeBlock33
  %SwitchLeaf32 = icmp eq i32 %s__state.0, 8482
  br i1 %SwitchLeaf32, label %ssl3_accept_bb59, label %ssl3_accept_NewDefault

ssl3_accept_NodeBlock46:                          ; preds = %ssl3_accept_NodeBlock48
  %Pivot47 = icmp slt i32 %s__state.0, 8512
  br i1 %Pivot47, label %ssl3_accept_LeafBlock35, label %ssl3_accept_NodeBlock44

ssl3_accept_LeafBlock35:                          ; preds = %ssl3_accept_NodeBlock46
  %s__state.0.off36 = add i32 %s__state.0, -8496
  %SwitchLeaf37 = icmp ule i32 %s__state.0.off36, 1
  br i1 %SwitchLeaf37, label %ssl3_accept_bb13, label %ssl3_accept_NewDefault

ssl3_accept_bb13:                                 ; preds = %ssl3_accept_LeafBlock35
  %"49" = call i32 @__VERIFIER_nondet_int()
  %"50" = icmp eq i32 %blastFlag.0, 1
  %.blastFlag.01 = select i1 %"50", i32 2, i32 %blastFlag.0
  %"51" = icmp sle i32 %"49", 0
  br i1 %"51", label %ssl3_accept_bb66, label %ssl3_accept_bb14

ssl3_accept_bb14:                                 ; preds = %ssl3_accept_bb13
  %"52" = icmp ne i32 %"6", 0
  %.2 = select i1 %"52", i32 8656, i32 8512
  br label %ssl3_accept_bb59

ssl3_accept_NodeBlock44:                          ; preds = %ssl3_accept_NodeBlock46
  %Pivot45 = icmp slt i32 %s__state.0, 8528
  br i1 %Pivot45, label %ssl3_accept_LeafBlock38, label %ssl3_accept_LeafBlock41

ssl3_accept_LeafBlock38:                          ; preds = %ssl3_accept_NodeBlock44
  %s__state.0.off39 = add i32 %s__state.0, -8512
  %SwitchLeaf40 = icmp ule i32 %s__state.0.off39, 1
  br i1 %SwitchLeaf40, label %ssl3_accept_bb15, label %ssl3_accept_NewDefault

ssl3_accept_bb15:                                 ; preds = %ssl3_accept_LeafBlock38
  %"53" = add i64 %"35", 256
  %"54" = icmp ne i64 %"53", 0
  br i1 %"54", label %ssl3_accept_bb59, label %ssl3_accept_bb16

ssl3_accept_bb16:                                 ; preds = %ssl3_accept_bb15
  %"55" = call i32 @__VERIFIER_nondet_int()
  %"56" = icmp sle i32 %"55", 0
  br i1 %"56", label %ssl3_accept_bb66, label %ssl3_accept_bb59

ssl3_accept_LeafBlock41:                          ; preds = %ssl3_accept_NodeBlock44
  %s__state.0.off42 = add i32 %s__state.0, -8528
  %SwitchLeaf43 = icmp ule i32 %s__state.0.off42, 1
  br i1 %SwitchLeaf43, label %ssl3_accept_bb17, label %ssl3_accept_NewDefault

ssl3_accept_bb17:                                 ; preds = %ssl3_accept_LeafBlock41
  %"57" = add i64 %"37", 2097152
  %"58" = icmp ne i64 %"57", 0
  %.3 = select i1 %"58", i32 1, i32 0
  %"59" = icmp ne i32 %.3, 0
  %"60" = add i64 %"36", 30
  %"61" = icmp ne i64 %"60", 0
  %or.cond8 = or i1 %"59", %"61"
  br i1 %or.cond8, label %ssl3_accept_bb22, label %ssl3_accept_bb18

ssl3_accept_bb18:                                 ; preds = %ssl3_accept_bb17
  %"62" = add i64 %"36", 1
  %"63" = icmp ne i64 %"62", 0
  br i1 %"63", label %ssl3_accept_bb19, label %ssl3_accept_bb59

ssl3_accept_bb19:                                 ; preds = %ssl3_accept_bb18
  %"64" = icmp eq i32 %"12", 0
  br i1 %"64", label %ssl3_accept_bb22, label %ssl3_accept_bb20

ssl3_accept_bb20:                                 ; preds = %ssl3_accept_bb19
  %"65" = add i64 %"38", 2
  %"66" = icmp ne i64 %"65", 0
  br i1 %"66", label %ssl3_accept_bb21, label %ssl3_accept_bb59

ssl3_accept_bb21:                                 ; preds = %ssl3_accept_bb20
  %"67" = add i64 %"39", 4
  %"68" = icmp ne i64 %"67", 0
  %.4 = select i1 %"68", i32 512, i32 1024
  %"69" = mul nsw i32 %"25", 8
  %"70" = icmp sgt i32 %"69", %.4
  br i1 %"70", label %ssl3_accept_bb22, label %ssl3_accept_bb59

ssl3_accept_bb22:                                 ; preds = %ssl3_accept_bb21, %ssl3_accept_bb19, %ssl3_accept_bb17
  %"71" = call i32 @__VERIFIER_nondet_int()
  %"72" = icmp sle i32 %"71", 0
  br i1 %"72", label %ssl3_accept_bb66, label %ssl3_accept_bb59

ssl3_accept_NodeBlock100:                         ; preds = %ssl3_accept_NodeBlock102
  %Pivot101 = icmp slt i32 %s__state.0, 8640
  br i1 %Pivot101, label %ssl3_accept_NodeBlock73, label %ssl3_accept_NodeBlock98

ssl3_accept_NodeBlock73:                          ; preds = %ssl3_accept_NodeBlock100
  %Pivot74 = icmp slt i32 %s__state.0, 8576
  br i1 %Pivot74, label %ssl3_accept_NodeBlock58, label %ssl3_accept_NodeBlock71

ssl3_accept_NodeBlock58:                          ; preds = %ssl3_accept_NodeBlock73
  %Pivot59 = icmp slt i32 %s__state.0, 8560
  br i1 %Pivot59, label %ssl3_accept_LeafBlock52, label %ssl3_accept_LeafBlock55

ssl3_accept_LeafBlock52:                          ; preds = %ssl3_accept_NodeBlock58
  %s__state.0.off53 = add i32 %s__state.0, -8544
  %SwitchLeaf54 = icmp ule i32 %s__state.0.off53, 1
  br i1 %SwitchLeaf54, label %ssl3_accept_bb23, label %ssl3_accept_NewDefault

ssl3_accept_bb23:                                 ; preds = %ssl3_accept_LeafBlock52
  %"73" = add nsw i32 %"10", 1
  %"74" = icmp ne i32 %"73", 0
  br i1 %"74", label %ssl3_accept_bb24, label %ssl3_accept_bb59

ssl3_accept_bb24:                                 ; preds = %ssl3_accept_bb23
  %"75" = icmp ne i32 %"11", 0
  %"76" = add nsw i32 %"10", 4
  %"77" = icmp ne i32 %"76", 0
  %or.cond10 = and i1 %"75", %"77"
  br i1 %or.cond10, label %ssl3_accept_bb59, label %ssl3_accept_bb25

ssl3_accept_bb25:                                 ; preds = %ssl3_accept_bb24
  %"78" = add i64 %"40", 256
  %"79" = icmp eq i64 %"78", 0
  %"80" = add nsw i32 %"10", 2
  %"81" = icmp ne i32 %"80", 0
  %or.cond12 = or i1 %"79", %"81"
  br i1 %or.cond12, label %ssl3_accept_bb26, label %ssl3_accept_bb59

ssl3_accept_bb26:                                 ; preds = %ssl3_accept_bb25
  %"82" = call i32 @__VERIFIER_nondet_int()
  %"83" = icmp sle i32 %"82", 0
  br i1 %"83", label %ssl3_accept_bb66, label %ssl3_accept_bb59

ssl3_accept_LeafBlock55:                          ; preds = %ssl3_accept_NodeBlock58
  %s__state.0.off56 = add i32 %s__state.0, -8560
  %SwitchLeaf57 = icmp ule i32 %s__state.0.off56, 1
  br i1 %SwitchLeaf57, label %ssl3_accept_bb27, label %ssl3_accept_NewDefault

ssl3_accept_bb27:                                 ; preds = %ssl3_accept_LeafBlock55
  %"84" = call i32 @__VERIFIER_nondet_int()
  %"85" = icmp sle i32 %"84", 0
  br i1 %"85", label %ssl3_accept_bb66, label %ssl3_accept_bb59

ssl3_accept_NodeBlock71:                          ; preds = %ssl3_accept_NodeBlock73
  %Pivot72 = icmp slt i32 %s__state.0, 8592
  br i1 %Pivot72, label %ssl3_accept_LeafBlock60, label %ssl3_accept_NodeBlock69

ssl3_accept_LeafBlock60:                          ; preds = %ssl3_accept_NodeBlock71
  %s__state.0.off61 = add i32 %s__state.0, -8576
  %SwitchLeaf62 = icmp ule i32 %s__state.0.off61, 1
  br i1 %SwitchLeaf62, label %ssl3_accept_bb28, label %ssl3_accept_NewDefault

ssl3_accept_bb28:                                 ; preds = %ssl3_accept_LeafBlock60
  %"86" = call i32 @__VERIFIER_nondet_int()
  %"87" = icmp sle i32 %"86", 0
  br i1 %"87", label %ssl3_accept_bb66, label %ssl3_accept_bb29

ssl3_accept_bb29:                                 ; preds = %ssl3_accept_bb28
  %"88" = icmp eq i32 %"86", 2
  br i1 %"88", label %ssl3_accept_bb59, label %ssl3_accept_bb30

ssl3_accept_bb30:                                 ; preds = %ssl3_accept_bb29
  %"89" = call i32 @__VERIFIER_nondet_int()
  %"90" = icmp sle i32 %"89", 0
  br i1 %"90", label %ssl3_accept_bb66, label %ssl3_accept_bb59

ssl3_accept_NodeBlock69:                          ; preds = %ssl3_accept_NodeBlock71
  %Pivot70 = icmp slt i32 %s__state.0, 8608
  br i1 %Pivot70, label %ssl3_accept_LeafBlock63, label %ssl3_accept_LeafBlock66

ssl3_accept_LeafBlock63:                          ; preds = %ssl3_accept_NodeBlock69
  %s__state.0.off64 = add i32 %s__state.0, -8592
  %SwitchLeaf65 = icmp ule i32 %s__state.0.off64, 1
  br i1 %SwitchLeaf65, label %ssl3_accept_bb31, label %ssl3_accept_NewDefault

ssl3_accept_bb31:                                 ; preds = %ssl3_accept_LeafBlock63
  %"91" = call i32 @__VERIFIER_nondet_int()
  %"92" = icmp sle i32 %"91", 0
  br i1 %"92", label %ssl3_accept_bb66, label %ssl3_accept_bb59

ssl3_accept_LeafBlock66:                          ; preds = %ssl3_accept_NodeBlock69
  %s__state.0.off67 = add i32 %s__state.0, -8608
  %SwitchLeaf68 = icmp ule i32 %s__state.0.off67, 1
  br i1 %SwitchLeaf68, label %ssl3_accept_bb32, label %ssl3_accept_NewDefault

ssl3_accept_bb32:                                 ; preds = %ssl3_accept_LeafBlock66
  %"93" = call i32 @__VERIFIER_nondet_int()
  %"94" = icmp sle i32 %"93", 0
  br i1 %"94", label %ssl3_accept_bb66, label %ssl3_accept_bb59

ssl3_accept_NodeBlock98:                          ; preds = %ssl3_accept_NodeBlock100
  %Pivot99 = icmp slt i32 %s__state.0, 12292
  br i1 %Pivot99, label %ssl3_accept_NodeBlock86, label %ssl3_accept_NodeBlock96

ssl3_accept_NodeBlock86:                          ; preds = %ssl3_accept_NodeBlock98
  %Pivot87 = icmp slt i32 %s__state.0, 8656
  br i1 %Pivot87, label %ssl3_accept_LeafBlock75, label %ssl3_accept_NodeBlock84

ssl3_accept_LeafBlock75:                          ; preds = %ssl3_accept_NodeBlock86
  %s__state.0.off76 = add i32 %s__state.0, -8640
  %SwitchLeaf77 = icmp ule i32 %s__state.0.off76, 1
  br i1 %SwitchLeaf77, label %ssl3_accept_bb33, label %ssl3_accept_NewDefault

ssl3_accept_bb33:                                 ; preds = %ssl3_accept_LeafBlock75
  %"95" = call i32 @__VERIFIER_nondet_int()
  br label %ssl3_accept_NodeBlock113

ssl3_accept_NodeBlock113:                         ; preds = %ssl3_accept_bb33
  %Pivot114 = icmp slt i32 %blastFlag.0, 7
  br i1 %Pivot114, label %ssl3_accept_LeafBlock105, label %ssl3_accept_NodeBlock111

ssl3_accept_LeafBlock105:                         ; preds = %ssl3_accept_NodeBlock113
  %SwitchLeaf106 = icmp eq i32 %blastFlag.0, 4
  br i1 %SwitchLeaf106, label %ssl3_accept_bb36, label %ssl3_accept_NewDefault104

ssl3_accept_NodeBlock111:                         ; preds = %ssl3_accept_NodeBlock113
  %Pivot112 = icmp slt i32 %blastFlag.0, 10
  br i1 %Pivot112, label %ssl3_accept_LeafBlock107, label %ssl3_accept_LeafBlock109

ssl3_accept_LeafBlock107:                         ; preds = %ssl3_accept_NodeBlock111
  %SwitchLeaf108 = icmp eq i32 %blastFlag.0, 7
  br i1 %SwitchLeaf108, label %ssl3_accept_bb35, label %ssl3_accept_NewDefault104

ssl3_accept_LeafBlock109:                         ; preds = %ssl3_accept_NodeBlock111
  %SwitchLeaf110 = icmp eq i32 %blastFlag.0, 10
  br i1 %SwitchLeaf110, label %ssl3_accept_bb61, label %ssl3_accept_NewDefault104

ssl3_accept_NewDefault104:                        ; preds = %ssl3_accept_LeafBlock109, %ssl3_accept_LeafBlock107, %ssl3_accept_LeafBlock105
  br label %ssl3_accept_bb34

ssl3_accept_bb34:                                 ; preds = %ssl3_accept_NewDefault104
  br label %ssl3_accept_bb35

ssl3_accept_bb35:                                 ; preds = %ssl3_accept_LeafBlock107, %ssl3_accept_bb34
  %blastFlag.3 = phi i32 [ %blastFlag.0, %ssl3_accept_bb34 ], [ 8, %ssl3_accept_LeafBlock107 ]
  br label %ssl3_accept_bb36

ssl3_accept_bb36:                                 ; preds = %ssl3_accept_LeafBlock105, %ssl3_accept_bb35
  %blastFlag.4 = phi i32 [ %blastFlag.3, %ssl3_accept_bb35 ], [ 5, %ssl3_accept_LeafBlock105 ]
  %"96" = icmp sle i32 %"95", 0
  br i1 %"96", label %ssl3_accept_bb66, label %ssl3_accept_bb37

ssl3_accept_bb37:                                 ; preds = %ssl3_accept_bb36
  %"97" = icmp ne i32 %"6", 0
  %.5 = select i1 %"97", i32 3, i32 8656
  br label %ssl3_accept_bb59

ssl3_accept_NodeBlock84:                          ; preds = %ssl3_accept_NodeBlock86
  %Pivot85 = icmp slt i32 %s__state.0, 8672
  br i1 %Pivot85, label %ssl3_accept_LeafBlock78, label %ssl3_accept_LeafBlock81

ssl3_accept_LeafBlock78:                          ; preds = %ssl3_accept_NodeBlock84
  %s__state.0.off79 = add i32 %s__state.0, -8656
  %SwitchLeaf80 = icmp ule i32 %s__state.0.off79, 1
  br i1 %SwitchLeaf80, label %ssl3_accept_bb38, label %ssl3_accept_NewDefault

ssl3_accept_bb38:                                 ; preds = %ssl3_accept_LeafBlock78
  %"98" = icmp ne i32 %"27", 0
  br i1 %"98", label %ssl3_accept_bb39, label %ssl3_accept_bb66

ssl3_accept_bb39:                                 ; preds = %ssl3_accept_bb38
  %"99" = call i32 @__VERIFIER_nondet_int()
  br label %ssl3_accept_NodeBlock124

ssl3_accept_NodeBlock124:                         ; preds = %ssl3_accept_bb39
  %Pivot125 = icmp slt i32 %blastFlag.0, 5
  br i1 %Pivot125, label %ssl3_accept_LeafBlock116, label %ssl3_accept_NodeBlock122

ssl3_accept_LeafBlock116:                         ; preds = %ssl3_accept_NodeBlock124
  %SwitchLeaf117 = icmp eq i32 %blastFlag.0, 2
  br i1 %SwitchLeaf117, label %ssl3_accept_bb43, label %ssl3_accept_NewDefault115

ssl3_accept_NodeBlock122:                         ; preds = %ssl3_accept_NodeBlock124
  %Pivot123 = icmp slt i32 %blastFlag.0, 8
  br i1 %Pivot123, label %ssl3_accept_LeafBlock118, label %ssl3_accept_LeafBlock120

ssl3_accept_LeafBlock118:                         ; preds = %ssl3_accept_NodeBlock122
  %SwitchLeaf119 = icmp eq i32 %blastFlag.0, 5
  br i1 %SwitchLeaf119, label %ssl3_accept_bb42, label %ssl3_accept_NewDefault115

ssl3_accept_LeafBlock120:                         ; preds = %ssl3_accept_NodeBlock122
  %SwitchLeaf121 = icmp eq i32 %blastFlag.0, 8
  br i1 %SwitchLeaf121, label %ssl3_accept_bb40, label %ssl3_accept_NewDefault115

ssl3_accept_bb40:                                 ; preds = %ssl3_accept_LeafBlock120
  br label %ssl3_accept_bb41

ssl3_accept_NewDefault115:                        ; preds = %ssl3_accept_LeafBlock120, %ssl3_accept_LeafBlock118, %ssl3_accept_LeafBlock116
  br label %ssl3_accept_bb41

ssl3_accept_bb41:                                 ; preds = %ssl3_accept_NewDefault115, %ssl3_accept_bb40
  %blastFlag.5 = phi i32 [ 9, %ssl3_accept_bb40 ], [ %blastFlag.0, %ssl3_accept_NewDefault115 ]
  br label %ssl3_accept_bb42

ssl3_accept_bb42:                                 ; preds = %ssl3_accept_LeafBlock118, %ssl3_accept_bb41
  %blastFlag.6 = phi i32 [ %blastFlag.5, %ssl3_accept_bb41 ], [ 6, %ssl3_accept_LeafBlock118 ]
  br label %ssl3_accept_bb43

ssl3_accept_bb43:                                 ; preds = %ssl3_accept_LeafBlock116, %ssl3_accept_bb42
  %blastFlag.7 = phi i32 [ %blastFlag.6, %ssl3_accept_bb42 ], [ 3, %ssl3_accept_LeafBlock116 ]
  %"100" = icmp sle i32 %"99", 0
  br i1 %"100", label %ssl3_accept_bb66, label %ssl3_accept_bb44

ssl3_accept_bb44:                                 ; preds = %ssl3_accept_bb43
  %"101" = icmp ne i32 %"28", 0
  br i1 %"101", label %ssl3_accept_bb59, label %ssl3_accept_bb66

ssl3_accept_LeafBlock81:                          ; preds = %ssl3_accept_NodeBlock84
  %s__state.0.off82 = add i32 %s__state.0, -8672
  %SwitchLeaf83 = icmp ule i32 %s__state.0.off82, 1
  br i1 %SwitchLeaf83, label %ssl3_accept_bb45, label %ssl3_accept_NewDefault

ssl3_accept_bb45:                                 ; preds = %ssl3_accept_LeafBlock81
  %"102" = call i32 @__VERIFIER_nondet_int()
  br label %ssl3_accept_NodeBlock135

ssl3_accept_NodeBlock135:                         ; preds = %ssl3_accept_bb45
  %Pivot136 = icmp slt i32 %blastFlag.0, 6
  br i1 %Pivot136, label %ssl3_accept_LeafBlock127, label %ssl3_accept_NodeBlock133

ssl3_accept_LeafBlock127:                         ; preds = %ssl3_accept_NodeBlock135
  %SwitchLeaf128 = icmp eq i32 %blastFlag.0, 3
  br i1 %SwitchLeaf128, label %ssl3_accept_bb49, label %ssl3_accept_NewDefault126

ssl3_accept_NodeBlock133:                         ; preds = %ssl3_accept_NodeBlock135
  %Pivot134 = icmp slt i32 %blastFlag.0, 9
  br i1 %Pivot134, label %ssl3_accept_LeafBlock129, label %ssl3_accept_LeafBlock131

ssl3_accept_LeafBlock129:                         ; preds = %ssl3_accept_NodeBlock133
  %SwitchLeaf130 = icmp eq i32 %blastFlag.0, 6
  br i1 %SwitchLeaf130, label %ssl3_accept_bb48, label %ssl3_accept_NewDefault126

ssl3_accept_LeafBlock131:                         ; preds = %ssl3_accept_NodeBlock133
  %SwitchLeaf132 = icmp eq i32 %blastFlag.0, 9
  br i1 %SwitchLeaf132, label %ssl3_accept_bb46, label %ssl3_accept_NewDefault126

ssl3_accept_bb46:                                 ; preds = %ssl3_accept_LeafBlock131
  br label %ssl3_accept_bb47

ssl3_accept_NewDefault126:                        ; preds = %ssl3_accept_LeafBlock131, %ssl3_accept_LeafBlock129, %ssl3_accept_LeafBlock127
  br label %ssl3_accept_bb47

ssl3_accept_bb47:                                 ; preds = %ssl3_accept_NewDefault126, %ssl3_accept_bb46
  %blastFlag.8 = phi i32 [ 10, %ssl3_accept_bb46 ], [ %blastFlag.0, %ssl3_accept_NewDefault126 ]
  br label %ssl3_accept_bb48

ssl3_accept_bb48:                                 ; preds = %ssl3_accept_LeafBlock129, %ssl3_accept_bb47
  %blastFlag.9 = phi i32 [ %blastFlag.8, %ssl3_accept_bb47 ], [ 7, %ssl3_accept_LeafBlock129 ]
  br label %ssl3_accept_bb49

ssl3_accept_bb49:                                 ; preds = %ssl3_accept_LeafBlock127, %ssl3_accept_bb48
  %blastFlag.10 = phi i32 [ %blastFlag.9, %ssl3_accept_bb48 ], [ 4, %ssl3_accept_LeafBlock127 ]
  %"103" = icmp sle i32 %"102", 0
  br i1 %"103", label %ssl3_accept_bb66, label %ssl3_accept_bb50

ssl3_accept_bb50:                                 ; preds = %ssl3_accept_bb49
  %"104" = icmp ne i32 %"6", 0
  %.6 = select i1 %"104", i32 8640, i32 3
  br label %ssl3_accept_bb59

ssl3_accept_NodeBlock96:                          ; preds = %ssl3_accept_NodeBlock98
  %Pivot97 = icmp slt i32 %s__state.0, 16384
  br i1 %Pivot97, label %ssl3_accept_LeafBlock88, label %ssl3_accept_NodeBlock94

ssl3_accept_LeafBlock88:                          ; preds = %ssl3_accept_NodeBlock96
  %SwitchLeaf89 = icmp eq i32 %s__state.0, 12292
  br i1 %SwitchLeaf89, label %ssl3_accept_bb51, label %ssl3_accept_NewDefault

ssl3_accept_NodeBlock94:                          ; preds = %ssl3_accept_NodeBlock96
  %Pivot95 = icmp slt i32 %s__state.0, 24576
  br i1 %Pivot95, label %ssl3_accept_LeafBlock90, label %ssl3_accept_LeafBlock92

ssl3_accept_LeafBlock90:                          ; preds = %ssl3_accept_NodeBlock94
  %SwitchLeaf91 = icmp eq i32 %s__state.0, 16384
  br i1 %SwitchLeaf91, label %ssl3_accept_bb51, label %ssl3_accept_NewDefault

ssl3_accept_LeafBlock92:                          ; preds = %ssl3_accept_NodeBlock94
  %SwitchLeaf93 = icmp eq i32 %s__state.0, 24576
  br i1 %SwitchLeaf93, label %ssl3_accept_bb51, label %ssl3_accept_NewDefault

ssl3_accept_bb51:                                 ; preds = %ssl3_accept_LeafBlock92, %ssl3_accept_LeafBlock90, %ssl3_accept_LeafBlock88, %ssl3_accept_LeafBlock19, %ssl3_accept_LeafBlock17
  %"105" = mul nsw i32 %"5", 8
  %"106" = icmp ne i32 %"105", 3
  br i1 %"106", label %ssl3_accept_bb67, label %ssl3_accept_bb52

ssl3_accept_bb52:                                 ; preds = %ssl3_accept_bb51
  %"107" = icmp eq i32 %s__init_buf___0.0, 0
  br i1 %"107", label %ssl3_accept_bb53, label %ssl3_accept_bb54

ssl3_accept_bb53:                                 ; preds = %ssl3_accept_bb52
  %"108" = call i32 @__VERIFIER_nondet_int()
  %"109" = icmp ne i32 %"108", 0
  %"110" = icmp ne i32 %"22", 0
  %or.cond = and i1 %"109", %"110"
  br i1 %or.cond, label %ssl3_accept_bb54, label %ssl3_accept_bb66

ssl3_accept_bb54:                                 ; preds = %ssl3_accept_bb53, %ssl3_accept_bb52
  %s__init_buf___0.1 = phi i32 [ %s__init_buf___0.0, %ssl3_accept_bb52 ], [ %"108", %ssl3_accept_bb53 ]
  %"111" = icmp ne i32 %"23", 0
  br i1 %"111", label %ssl3_accept_bb55, label %ssl3_accept_bb66

ssl3_accept_bb55:                                 ; preds = %ssl3_accept_bb54
  %"112" = icmp ne i32 %s__state.0, 12292
  br i1 %"112", label %ssl3_accept_bb56, label %ssl3_accept_bb58

ssl3_accept_bb56:                                 ; preds = %ssl3_accept_bb55
  %"113" = icmp ne i32 %"24", 0
  br i1 %"113", label %ssl3_accept_bb57, label %ssl3_accept_bb66

ssl3_accept_bb57:                                 ; preds = %ssl3_accept_bb56
  %"114" = add nsw i32 %s__ctx__stats__sess_accept.0, 1
  br label %ssl3_accept_bb59

ssl3_accept_bb58:                                 ; preds = %ssl3_accept_bb55
  %"115" = add nsw i32 %s__ctx__stats__sess_accept_renegotiate.0, 1
  br label %ssl3_accept_bb59

ssl3_accept_bb59:                                 ; preds = %ssl3_accept_LeafBlock31, %ssl3_accept_bb25, %ssl3_accept_bb24, %ssl3_accept_bb44, %ssl3_accept_bb32, %ssl3_accept_bb31, %ssl3_accept_bb29, %ssl3_accept_bb30, %ssl3_accept_bb9, %ssl3_accept_bb10, %ssl3_accept_bb27, %ssl3_accept_bb26, %ssl3_accept_bb23, %ssl3_accept_bb21, %ssl3_accept_bb22, %ssl3_accept_bb20, %ssl3_accept_bb18, %ssl3_accept_bb15, %ssl3_accept_bb16, %ssl3_accept_bb11, %ssl3_accept_bb12, %ssl3_accept_bb57, %ssl3_accept_bb58, %ssl3_accept_bb50, %ssl3_accept_bb37, %ssl3_accept_bb14
  %blastFlag.11 = phi i32 [ %.blastFlag.01, %ssl3_accept_bb14 ], [ %blastFlag.4, %ssl3_accept_bb37 ], [ %blastFlag.10, %ssl3_accept_bb50 ], [ %blastFlag.0, %ssl3_accept_bb58 ], [ %blastFlag.0, %ssl3_accept_bb57 ], [ %blastFlag.0, %ssl3_accept_bb12 ], [ %blastFlag.0, %ssl3_accept_LeafBlock31 ], [ %.blastFlag.0, %ssl3_accept_bb11 ], [ %blastFlag.0, %ssl3_accept_bb16 ], [ %blastFlag.0, %ssl3_accept_bb15 ], [ %blastFlag.0, %ssl3_accept_bb18 ], [ %blastFlag.0, %ssl3_accept_bb20 ], [ %blastFlag.0, %ssl3_accept_bb22 ], [ %blastFlag.0, %ssl3_accept_bb21 ], [ %blastFlag.0, %ssl3_accept_bb23 ], [ %blastFlag.0, %ssl3_accept_bb26 ], [ %blastFlag.0, %ssl3_accept_bb27 ], [ %blastFlag.0, %ssl3_accept_bb10 ], [ %blastFlag.0, %ssl3_accept_bb9 ], [ %blastFlag.0, %ssl3_accept_bb30 ], [ %blastFlag.0, %ssl3_accept_bb29 ], [ %blastFlag.0, %ssl3_accept_bb31 ], [ %blastFlag.0, %ssl3_accept_bb32 ], [ %blastFlag.7, %ssl3_accept_bb44 ], [ %blastFlag.0, %ssl3_accept_bb24 ], [ %blastFlag.0, %ssl3_accept_bb25 ]
  %got_new_session.1 = phi i32 [ %got_new_session.0, %ssl3_accept_bb14 ], [ %got_new_session.0, %ssl3_accept_bb37 ], [ %got_new_session.0, %ssl3_accept_bb50 ], [ %got_new_session.0, %ssl3_accept_bb58 ], [ %got_new_session.0, %ssl3_accept_bb57 ], [ %got_new_session.0, %ssl3_accept_bb12 ], [ %got_new_session.0, %ssl3_accept_LeafBlock31 ], [ 1, %ssl3_accept_bb11 ], [ %got_new_session.0, %ssl3_accept_bb16 ], [ %got_new_session.0, %ssl3_accept_bb15 ], [ %got_new_session.0, %ssl3_accept_bb18 ], [ %got_new_session.0, %ssl3_accept_bb20 ], [ %got_new_session.0, %ssl3_accept_bb22 ], [ %got_new_session.0, %ssl3_accept_bb21 ], [ %got_new_session.0, %ssl3_accept_bb23 ], [ %got_new_session.0, %ssl3_accept_bb26 ], [ %got_new_session.0, %ssl3_accept_bb27 ], [ %got_new_session.0, %ssl3_accept_bb10 ], [ %got_new_session.0, %ssl3_accept_bb9 ], [ %got_new_session.0, %ssl3_accept_bb30 ], [ %got_new_session.0, %ssl3_accept_bb29 ], [ %got_new_session.0, %ssl3_accept_bb31 ], [ %got_new_session.0, %ssl3_accept_bb32 ], [ %got_new_session.0, %ssl3_accept_bb44 ], [ %got_new_session.0, %ssl3_accept_bb24 ], [ %got_new_session.0, %ssl3_accept_bb25 ]
  %skip.8 = phi i32 [ 0, %ssl3_accept_bb14 ], [ 0, %ssl3_accept_bb37 ], [ 0, %ssl3_accept_bb50 ], [ 0, %ssl3_accept_bb58 ], [ 0, %ssl3_accept_bb57 ], [ 0, %ssl3_accept_bb12 ], [ 0, %ssl3_accept_LeafBlock31 ], [ 0, %ssl3_accept_bb11 ], [ 1, %ssl3_accept_bb15 ], [ 0, %ssl3_accept_bb16 ], [ 0, %ssl3_accept_bb22 ], [ 1, %ssl3_accept_bb21 ], [ 1, %ssl3_accept_bb20 ], [ 1, %ssl3_accept_bb18 ], [ 0, %ssl3_accept_bb26 ], [ 1, %ssl3_accept_bb23 ], [ 0, %ssl3_accept_bb27 ], [ 0, %ssl3_accept_bb10 ], [ 0, %ssl3_accept_bb9 ], [ 0, %ssl3_accept_bb30 ], [ 0, %ssl3_accept_bb29 ], [ 0, %ssl3_accept_bb31 ], [ 0, %ssl3_accept_bb32 ], [ 0, %ssl3_accept_bb44 ], [ 1, %ssl3_accept_bb24 ], [ 1, %ssl3_accept_bb25 ]
  %num1.2 = phi i64 [ %num1.0, %ssl3_accept_bb14 ], [ %num1.0, %ssl3_accept_bb37 ], [ %num1.0, %ssl3_accept_bb50 ], [ %num1.0, %ssl3_accept_bb58 ], [ %num1.0, %ssl3_accept_bb57 ], [ %num1.0, %ssl3_accept_bb12 ], [ %num1.0, %ssl3_accept_LeafBlock31 ], [ %num1.0, %ssl3_accept_bb11 ], [ %num1.0, %ssl3_accept_bb16 ], [ %num1.0, %ssl3_accept_bb15 ], [ %num1.0, %ssl3_accept_bb18 ], [ %num1.0, %ssl3_accept_bb20 ], [ %num1.0, %ssl3_accept_bb22 ], [ %num1.0, %ssl3_accept_bb21 ], [ %num1.0, %ssl3_accept_bb23 ], [ %num1.0, %ssl3_accept_bb26 ], [ %num1.0, %ssl3_accept_bb27 ], [ %num1.0, %ssl3_accept_bb9 ], [ %"26", %ssl3_accept_bb10 ], [ %num1.0, %ssl3_accept_bb30 ], [ %num1.0, %ssl3_accept_bb29 ], [ %num1.0, %ssl3_accept_bb31 ], [ %num1.0, %ssl3_accept_bb32 ], [ %num1.0, %ssl3_accept_bb44 ], [ %num1.0, %ssl3_accept_bb24 ], [ %num1.0, %ssl3_accept_bb25 ]
  %s__s3__tmp__next_state___0.5 = phi i32 [ %s__s3__tmp__next_state___0.0, %ssl3_accept_bb14 ], [ %s__s3__tmp__next_state___0.0, %ssl3_accept_bb37 ], [ %.6, %ssl3_accept_bb50 ], [ %s__s3__tmp__next_state___0.0, %ssl3_accept_bb58 ], [ %s__s3__tmp__next_state___0.0, %ssl3_accept_bb57 ], [ 8482, %ssl3_accept_bb12 ], [ %s__s3__tmp__next_state___0.0, %ssl3_accept_LeafBlock31 ], [ %s__s3__tmp__next_state___0.0, %ssl3_accept_bb11 ], [ %s__s3__tmp__next_state___0.0, %ssl3_accept_bb16 ], [ %s__s3__tmp__next_state___0.0, %ssl3_accept_bb15 ], [ %s__s3__tmp__next_state___0.0, %ssl3_accept_bb18 ], [ %s__s3__tmp__next_state___0.0, %ssl3_accept_bb20 ], [ %s__s3__tmp__next_state___0.0, %ssl3_accept_bb22 ], [ %s__s3__tmp__next_state___0.0, %ssl3_accept_bb21 ], [ 8576, %ssl3_accept_bb26 ], [ %s__s3__tmp__next_state___0.0, %ssl3_accept_bb23 ], [ 8576, %ssl3_accept_bb27 ], [ %s__s3__tmp__next_state___0.0, %ssl3_accept_bb10 ], [ %s__s3__tmp__next_state___0.0, %ssl3_accept_bb9 ], [ %s__s3__tmp__next_state___0.0, %ssl3_accept_bb30 ], [ %s__s3__tmp__next_state___0.0, %ssl3_accept_bb29 ], [ %s__s3__tmp__next_state___0.0, %ssl3_accept_bb31 ], [ %s__s3__tmp__next_state___0.0, %ssl3_accept_bb32 ], [ %s__s3__tmp__next_state___0.0, %ssl3_accept_bb44 ], [ %s__s3__tmp__next_state___0.0, %ssl3_accept_bb24 ], [ %s__s3__tmp__next_state___0.0, %ssl3_accept_bb25 ]
  %s__ctx__stats__sess_accept.2 = phi i32 [ %s__ctx__stats__sess_accept.0, %ssl3_accept_bb14 ], [ %s__ctx__stats__sess_accept.0, %ssl3_accept_bb37 ], [ %s__ctx__stats__sess_accept.0, %ssl3_accept_bb50 ], [ %"114", %ssl3_accept_bb57 ], [ %s__ctx__stats__sess_accept.0, %ssl3_accept_bb58 ], [ %s__ctx__stats__sess_accept.0, %ssl3_accept_bb12 ], [ %s__ctx__stats__sess_accept.0, %ssl3_accept_LeafBlock31 ], [ %s__ctx__stats__sess_accept.0, %ssl3_accept_bb11 ], [ %s__ctx__stats__sess_accept.0, %ssl3_accept_bb16 ], [ %s__ctx__stats__sess_accept.0, %ssl3_accept_bb15 ], [ %s__ctx__stats__sess_accept.0, %ssl3_accept_bb18 ], [ %s__ctx__stats__sess_accept.0, %ssl3_accept_bb20 ], [ %s__ctx__stats__sess_accept.0, %ssl3_accept_bb22 ], [ %s__ctx__stats__sess_accept.0, %ssl3_accept_bb21 ], [ %s__ctx__stats__sess_accept.0, %ssl3_accept_bb23 ], [ %s__ctx__stats__sess_accept.0, %ssl3_accept_bb26 ], [ %s__ctx__stats__sess_accept.0, %ssl3_accept_bb27 ], [ %s__ctx__stats__sess_accept.0, %ssl3_accept_bb10 ], [ %s__ctx__stats__sess_accept.0, %ssl3_accept_bb9 ], [ %s__ctx__stats__sess_accept.0, %ssl3_accept_bb30 ], [ %s__ctx__stats__sess_accept.0, %ssl3_accept_bb29 ], [ %s__ctx__stats__sess_accept.0, %ssl3_accept_bb31 ], [ %s__ctx__stats__sess_accept.0, %ssl3_accept_bb32 ], [ %s__ctx__stats__sess_accept.0, %ssl3_accept_bb44 ], [ %s__ctx__stats__sess_accept.0, %ssl3_accept_bb24 ], [ %s__ctx__stats__sess_accept.0, %ssl3_accept_bb25 ]
  %s__ctx__stats__sess_accept_renegotiate.2 = phi i32 [ %s__ctx__stats__sess_accept_renegotiate.0, %ssl3_accept_bb14 ], [ %s__ctx__stats__sess_accept_renegotiate.0, %ssl3_accept_bb37 ], [ %s__ctx__stats__sess_accept_renegotiate.0, %ssl3_accept_bb50 ], [ %s__ctx__stats__sess_accept_renegotiate.0, %ssl3_accept_bb57 ], [ %"115", %ssl3_accept_bb58 ], [ %s__ctx__stats__sess_accept_renegotiate.0, %ssl3_accept_bb12 ], [ %s__ctx__stats__sess_accept_renegotiate.0, %ssl3_accept_LeafBlock31 ], [ %s__ctx__stats__sess_accept_renegotiate.0, %ssl3_accept_bb11 ], [ %s__ctx__stats__sess_accept_renegotiate.0, %ssl3_accept_bb16 ], [ %s__ctx__stats__sess_accept_renegotiate.0, %ssl3_accept_bb15 ], [ %s__ctx__stats__sess_accept_renegotiate.0, %ssl3_accept_bb18 ], [ %s__ctx__stats__sess_accept_renegotiate.0, %ssl3_accept_bb20 ], [ %s__ctx__stats__sess_accept_renegotiate.0, %ssl3_accept_bb22 ], [ %s__ctx__stats__sess_accept_renegotiate.0, %ssl3_accept_bb21 ], [ %s__ctx__stats__sess_accept_renegotiate.0, %ssl3_accept_bb23 ], [ %s__ctx__stats__sess_accept_renegotiate.0, %ssl3_accept_bb26 ], [ %s__ctx__stats__sess_accept_renegotiate.0, %ssl3_accept_bb27 ], [ %s__ctx__stats__sess_accept_renegotiate.0, %ssl3_accept_bb10 ], [ %s__ctx__stats__sess_accept_renegotiate.0, %ssl3_accept_bb9 ], [ %s__ctx__stats__sess_accept_renegotiate.0, %ssl3_accept_bb30 ], [ %s__ctx__stats__sess_accept_renegotiate.0, %ssl3_accept_bb29 ], [ %s__ctx__stats__sess_accept_renegotiate.0, %ssl3_accept_bb31 ], [ %s__ctx__stats__sess_accept_renegotiate.0, %ssl3_accept_bb32 ], [ %s__ctx__stats__sess_accept_renegotiate.0, %ssl3_accept_bb44 ], [ %s__ctx__stats__sess_accept_renegotiate.0, %ssl3_accept_bb24 ], [ %s__ctx__stats__sess_accept_renegotiate.0, %ssl3_accept_bb25 ]
  %s__init_buf___0.2 = phi i32 [ %s__init_buf___0.0, %ssl3_accept_bb14 ], [ %s__init_buf___0.0, %ssl3_accept_bb37 ], [ %s__init_buf___0.0, %ssl3_accept_bb50 ], [ %s__init_buf___0.1, %ssl3_accept_bb58 ], [ %s__init_buf___0.1, %ssl3_accept_bb57 ], [ %s__init_buf___0.0, %ssl3_accept_bb12 ], [ %s__init_buf___0.0, %ssl3_accept_LeafBlock31 ], [ %s__init_buf___0.0, %ssl3_accept_bb11 ], [ %s__init_buf___0.0, %ssl3_accept_bb16 ], [ %s__init_buf___0.0, %ssl3_accept_bb15 ], [ %s__init_buf___0.0, %ssl3_accept_bb18 ], [ %s__init_buf___0.0, %ssl3_accept_bb20 ], [ %s__init_buf___0.0, %ssl3_accept_bb22 ], [ %s__init_buf___0.0, %ssl3_accept_bb21 ], [ %s__init_buf___0.0, %ssl3_accept_bb23 ], [ %s__init_buf___0.0, %ssl3_accept_bb26 ], [ %s__init_buf___0.0, %ssl3_accept_bb27 ], [ %s__init_buf___0.0, %ssl3_accept_bb10 ], [ %s__init_buf___0.0, %ssl3_accept_bb9 ], [ %s__init_buf___0.0, %ssl3_accept_bb30 ], [ %s__init_buf___0.0, %ssl3_accept_bb29 ], [ %s__init_buf___0.0, %ssl3_accept_bb31 ], [ %s__init_buf___0.0, %ssl3_accept_bb32 ], [ %s__init_buf___0.0, %ssl3_accept_bb44 ], [ %s__init_buf___0.0, %ssl3_accept_bb24 ], [ %s__init_buf___0.0, %ssl3_accept_bb25 ]
  %s__state.8 = phi i32 [ %.2, %ssl3_accept_bb14 ], [ %.5, %ssl3_accept_bb37 ], [ 8448, %ssl3_accept_bb50 ], [ 8464, %ssl3_accept_bb57 ], [ 8480, %ssl3_accept_bb58 ], [ 8448, %ssl3_accept_bb12 ], [ 3, %ssl3_accept_LeafBlock31 ], [ 8496, %ssl3_accept_bb11 ], [ 8528, %ssl3_accept_bb16 ], [ 8528, %ssl3_accept_bb15 ], [ 8544, %ssl3_accept_bb18 ], [ 8544, %ssl3_accept_bb20 ], [ 8544, %ssl3_accept_bb22 ], [ 8544, %ssl3_accept_bb21 ], [ 8448, %ssl3_accept_bb26 ], [ 8560, %ssl3_accept_bb23 ], [ 8448, %ssl3_accept_bb27 ], [ %s__s3__tmp__next_state___0.0, %ssl3_accept_bb10 ], [ %s__s3__tmp__next_state___0.0, %ssl3_accept_bb9 ], [ 8466, %ssl3_accept_bb29 ], [ 8592, %ssl3_accept_bb30 ], [ 8608, %ssl3_accept_bb31 ], [ 8640, %ssl3_accept_bb32 ], [ 8672, %ssl3_accept_bb44 ], [ 8560, %ssl3_accept_bb24 ], [ 8560, %ssl3_accept_bb25 ]
  %"116" = icmp ne i32 0, 0
  %"117" = icmp ne i32 %skip.8, 0
  %or.cond13 = or i1 %"116", %"117"
  br i1 %or.cond13, label %ssl3_accept_bb6, label %ssl3_accept_bb60

ssl3_accept_bb60:                                 ; preds = %ssl3_accept_bb59
  %"118" = icmp ne i32 %"20", -12288
  %"119" = icmp ne i32 %s__state.8, 8656
  %or.cond14 = and i1 %"118", %"119"
  %"120" = icmp ne i32 %"21", -16384
  %or.cond15 = and i1 %or.cond14, %"120"
  %"121" = icmp eq i32 %s__state.0, 8496
  %or.cond16 = and i1 %or.cond15, %"121"
  br i1 %or.cond16, label %ssl3_accept_bb61, label %ssl3_accept_bb62

ssl3_accept_bb61:                                 ; preds = %ssl3_accept_LeafBlock109, %ssl3_accept_bb60
  call void (...)* @__VERIFIER_error() #3
  unreachable

ssl3_accept_bb62:                                 ; preds = %ssl3_accept_bb60
  %"122" = icmp ne i32 %"7", 0
  br i1 %"122", label %ssl3_accept_bb63, label %ssl3_accept_bb64

ssl3_accept_bb63:                                 ; preds = %ssl3_accept_bb62
  %"123" = call i32 @__VERIFIER_nondet_int()
  %"124" = icmp sle i32 %"123", 0
  br i1 %"124", label %ssl3_accept_bb66, label %ssl3_accept_bb64

ssl3_accept_bb64:                                 ; preds = %ssl3_accept_bb63, %ssl3_accept_bb62
  %"125" = icmp ne i32 %cb.1, 0
  br i1 %"125", label %ssl3_accept_bb65, label %ssl3_accept_bb6

ssl3_accept_bb65:                                 ; preds = %ssl3_accept_bb64
  br label %ssl3_accept_bb6

ssl3_accept_NewDefault:                           ; preds = %ssl3_accept_LeafBlock92, %ssl3_accept_LeafBlock90, %ssl3_accept_LeafBlock88, %ssl3_accept_LeafBlock81, %ssl3_accept_LeafBlock78, %ssl3_accept_LeafBlock75, %ssl3_accept_LeafBlock66, %ssl3_accept_LeafBlock63, %ssl3_accept_LeafBlock60, %ssl3_accept_LeafBlock55, %ssl3_accept_LeafBlock52, %ssl3_accept_LeafBlock41, %ssl3_accept_LeafBlock38, %ssl3_accept_LeafBlock35, %ssl3_accept_LeafBlock31, %ssl3_accept_LeafBlock23, %ssl3_accept_LeafBlock21, %ssl3_accept_LeafBlock19, %ssl3_accept_LeafBlock17, %ssl3_accept_LeafBlock
  br label %ssl3_accept_bb66

ssl3_accept_bb66:                                 ; preds = %ssl3_accept_NewDefault, %ssl3_accept_bb53, %ssl3_accept_bb63, %ssl3_accept_bb7, %ssl3_accept_bb8, %ssl3_accept_bb49, %ssl3_accept_bb44, %ssl3_accept_bb43, %ssl3_accept_bb38, %ssl3_accept_bb36, %ssl3_accept_bb32, %ssl3_accept_bb31, %ssl3_accept_bb30, %ssl3_accept_bb28, %ssl3_accept_bb10, %ssl3_accept_bb27, %ssl3_accept_bb26, %ssl3_accept_bb22, %ssl3_accept_bb16, %ssl3_accept_bb13, %ssl3_accept_bb11, %ssl3_accept_bb12, %ssl3_accept_bb56, %ssl3_accept_bb54
  %ret.0 = phi i32 [ -1, %ssl3_accept_bb53 ], [ -1, %ssl3_accept_bb54 ], [ -1, %ssl3_accept_bb56 ], [ %"47", %ssl3_accept_bb12 ], [ %"44", %ssl3_accept_bb11 ], [ %"49", %ssl3_accept_bb13 ], [ %"55", %ssl3_accept_bb16 ], [ %"71", %ssl3_accept_bb22 ], [ %"82", %ssl3_accept_bb26 ], [ %"84", %ssl3_accept_bb27 ], [ -1, %ssl3_accept_bb10 ], [ %"86", %ssl3_accept_bb28 ], [ %"89", %ssl3_accept_bb30 ], [ %"91", %ssl3_accept_bb31 ], [ %"93", %ssl3_accept_bb32 ], [ %"95", %ssl3_accept_bb36 ], [ -1, %ssl3_accept_bb38 ], [ %"99", %ssl3_accept_bb43 ], [ -1, %ssl3_accept_bb44 ], [ %"102", %ssl3_accept_bb49 ], [ 1, %ssl3_accept_bb8 ], [ 1, %ssl3_accept_bb7 ], [ -1, %ssl3_accept_NewDefault ], [ %"123", %ssl3_accept_bb63 ]
  br label %ssl3_accept_bb67

ssl3_accept_bb67:                                 ; preds = %ssl3_accept_bb51, %ssl3_accept_bb4, %ssl3_accept_bb66
  %.0 = phi i32 [ %ret.0, %ssl3_accept_bb66 ], [ -1, %ssl3_accept_bb4 ], [ -1, %ssl3_accept_bb51 ]
  ret i32 %.0
}

declare i32 @__VERIFIER_nondet_int() #1

declare i64 @__VERIFIER_nondet_long() #1

; Function Attrs: noreturn
declare void @__VERIFIER_error(...) #2

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb68:
  %"126" = call i32 @__kittel_nondef.0() #4
  %"127" = call i32 @__kittel_nondef.0() #4
  %"128" = call i64 @__kittel_nondef.1() #4
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
  %"146" = call i32 @__VERIFIER_nondet_int() #4
  %"147" = call i32 @__VERIFIER_nondet_int() #4
  %"148" = call i32 @__VERIFIER_nondet_int() #4
  %"149" = call i32 @__VERIFIER_nondet_int() #4
  %"150" = call i32 @__VERIFIER_nondet_int() #4
  %"151" = call i32 @__VERIFIER_nondet_int() #4
  %"152" = call i64 @__VERIFIER_nondet_long() #4
  %"153" = call i32 @__VERIFIER_nondet_int() #4
  %"154" = call i32 @__VERIFIER_nondet_int() #4
  %"155" = call i32 @__VERIFIER_nondet_int() #4
  %"156" = icmp eq i32 %"134", 0
  br i1 %"156", label %main_ssl3_accept.exit, label %main_bb69

main_bb69:                                        ; preds = %main_bb68
  %"157" = sext i32 %"144" to i64
  %"158" = sext i32 %"144" to i64
  %"159" = sext i32 %"135" to i64
  %"160" = sext i32 %"145" to i64
  %"161" = sext i32 %"145" to i64
  %"162" = sext i32 %"144" to i64
  br label %main_bb70

main_bb70:                                        ; preds = %main_bb107, %main_bb108, %main_bb104, %main_bb69
  %blastFlag.0.i = phi i32 [ 0, %main_bb69 ], [ %blastFlag.11.i, %main_bb104 ], [ %blastFlag.11.i, %main_bb108 ], [ %blastFlag.11.i, %main_bb107 ]
  %got_new_session.0.i = phi i32 [ 0, %main_bb69 ], [ %got_new_session.1.i, %main_bb104 ], [ %got_new_session.1.i, %main_bb108 ], [ %got_new_session.1.i, %main_bb107 ]
  %num1.0.i = phi i64 [ %"128", %main_bb69 ], [ %num1.2.i, %main_bb104 ], [ %num1.2.i, %main_bb108 ], [ %num1.2.i, %main_bb107 ]
  %s__s3__tmp__next_state___0.0.i = phi i32 [ %"127", %main_bb69 ], [ %s__s3__tmp__next_state___0.5.i, %main_bb104 ], [ %s__s3__tmp__next_state___0.5.i, %main_bb108 ], [ %s__s3__tmp__next_state___0.5.i, %main_bb107 ]
  %s__state.0.i = phi i32 [ 8464, %main_bb69 ], [ %s__state.8.i, %main_bb104 ], [ %s__state.8.i, %main_bb108 ], [ %s__state.8.i, %main_bb107 ]
  %Pivot103.i = icmp slt i32 %s__state.0.i, 8544
  br i1 %Pivot103.i, label %main_NodeBlock50.i, label %main_NodeBlock100.i

main_NodeBlock50.i:                               ; preds = %main_bb70
  %Pivot51.i = icmp slt i32 %s__state.0.i, 8480
  br i1 %Pivot51.i, label %main_NodeBlock29.i, label %main_NodeBlock48.i

main_NodeBlock29.i:                               ; preds = %main_NodeBlock50.i
  %Pivot30.i = icmp slt i32 %s__state.0.i, 8195
  br i1 %Pivot30.i, label %main_NodeBlock.i, label %main_NodeBlock27.i

main_NodeBlock.i:                                 ; preds = %main_NodeBlock29.i
  %Pivot.i = icmp slt i32 %s__state.0.i, 8192
  %SwitchLeaf.i = icmp eq i32 %s__state.0.i, 3
  %or.cond1 = and i1 %Pivot.i, %SwitchLeaf.i
  %. = select i1 %or.cond1, i32 1, i32 -1
  ret i32 %.

main_NodeBlock27.i:                               ; preds = %main_NodeBlock29.i
  %Pivot28.i = icmp slt i32 %s__state.0.i, 8448
  br i1 %Pivot28.i, label %main_ssl3_accept.exit, label %main_NodeBlock25.i

main_NodeBlock25.i:                               ; preds = %main_NodeBlock27.i
  %Pivot26.i = icmp slt i32 %s__state.0.i, 8464
  br i1 %Pivot26.i, label %main_LeafBlock21.i, label %main_LeafBlock23.i

main_LeafBlock21.i:                               ; preds = %main_NodeBlock25.i
  %SwitchLeaf22.i = icmp eq i32 %s__state.0.i, 8448
  br i1 %SwitchLeaf22.i, label %main_bb71, label %main_ssl3_accept.exit

main_bb71:                                        ; preds = %main_LeafBlock21.i
  %"163" = icmp sgt i64 %num1.0.i, 0
  br i1 %"163", label %main_bb72, label %main_bb104

main_bb72:                                        ; preds = %main_bb71
  %"164" = icmp sle i64 %"152", 0
  br i1 %"164", label %main_ssl3_accept.exit, label %main_bb104

main_LeafBlock23.i:                               ; preds = %main_NodeBlock25.i
  %s__state.0.off.i = add i32 %s__state.0.i, -8464
  %SwitchLeaf24.i = icmp ule i32 %s__state.0.off.i, 2
  br i1 %SwitchLeaf24.i, label %main_bb73, label %main_ssl3_accept.exit

main_bb73:                                        ; preds = %main_LeafBlock23.i
  %"165" = call i32 @__VERIFIER_nondet_int() #4
  %"166" = icmp eq i32 %blastFlag.0.i, 0
  %.blastFlag.0.i = select i1 %"166", i32 1, i32 %blastFlag.0.i
  %"167" = icmp sle i32 %"165", 0
  br i1 %"167", label %main_ssl3_accept.exit, label %main_bb104

main_NodeBlock48.i:                               ; preds = %main_NodeBlock50.i
  %Pivot49.i = icmp slt i32 %s__state.0.i, 8496
  br i1 %Pivot49.i, label %main_NodeBlock33.i, label %main_NodeBlock46.i

main_NodeBlock33.i:                               ; preds = %main_NodeBlock48.i
  %Pivot34.i = icmp slt i32 %s__state.0.i, 8482
  br i1 %Pivot34.i, label %main_bb74, label %main_LeafBlock31.i

main_bb74:                                        ; preds = %main_NodeBlock33.i
  %"168" = call i32 @__VERIFIER_nondet_int() #4
  %"169" = icmp sle i32 %"168", 0
  br i1 %"169", label %main_ssl3_accept.exit, label %main_bb104

main_LeafBlock31.i:                               ; preds = %main_NodeBlock33.i
  %SwitchLeaf32.i = icmp eq i32 %s__state.0.i, 8482
  br i1 %SwitchLeaf32.i, label %main_bb104, label %main_ssl3_accept.exit

main_NodeBlock46.i:                               ; preds = %main_NodeBlock48.i
  %Pivot47.i = icmp slt i32 %s__state.0.i, 8512
  br i1 %Pivot47.i, label %main_LeafBlock35.i, label %main_NodeBlock44.i

main_LeafBlock35.i:                               ; preds = %main_NodeBlock46.i
  %s__state.0.off36.i = add i32 %s__state.0.i, -8496
  %SwitchLeaf37.i = icmp ule i32 %s__state.0.off36.i, 1
  br i1 %SwitchLeaf37.i, label %main_bb75, label %main_ssl3_accept.exit

main_bb75:                                        ; preds = %main_LeafBlock35.i
  %"170" = call i32 @__VERIFIER_nondet_int() #4
  %"171" = icmp eq i32 %blastFlag.0.i, 1
  %.blastFlag.01.i = select i1 %"171", i32 2, i32 %blastFlag.0.i
  %"172" = icmp sle i32 %"170", 0
  br i1 %"172", label %main_ssl3_accept.exit, label %main_bb76

main_bb76:                                        ; preds = %main_bb75
  %"173" = icmp ne i32 %"132", 0
  %.2.i = select i1 %"173", i32 8656, i32 8512
  br label %main_bb104

main_NodeBlock44.i:                               ; preds = %main_NodeBlock46.i
  %Pivot45.i = icmp slt i32 %s__state.0.i, 8528
  br i1 %Pivot45.i, label %main_LeafBlock38.i, label %main_LeafBlock41.i

main_LeafBlock38.i:                               ; preds = %main_NodeBlock44.i
  %s__state.0.off39.i = add i32 %s__state.0.i, -8512
  %SwitchLeaf40.i = icmp ule i32 %s__state.0.off39.i, 1
  br i1 %SwitchLeaf40.i, label %main_bb77, label %main_ssl3_accept.exit

main_bb77:                                        ; preds = %main_LeafBlock38.i
  %"174" = add i64 %"157", 256
  %"175" = icmp ne i64 %"174", 0
  br i1 %"175", label %main_bb104, label %main_bb78

main_bb78:                                        ; preds = %main_bb77
  %"176" = call i32 @__VERIFIER_nondet_int() #4
  %"177" = icmp sle i32 %"176", 0
  br i1 %"177", label %main_ssl3_accept.exit, label %main_bb104

main_LeafBlock41.i:                               ; preds = %main_NodeBlock44.i
  %s__state.0.off42.i = add i32 %s__state.0.i, -8528
  %SwitchLeaf43.i = icmp ule i32 %s__state.0.off42.i, 1
  br i1 %SwitchLeaf43.i, label %main_bb79, label %main_ssl3_accept.exit

main_bb79:                                        ; preds = %main_LeafBlock41.i
  %"178" = add i64 %"159", 2097152
  %"179" = icmp ne i64 %"178", 0
  %"180" = add i64 %"158", 30
  %"181" = icmp ne i64 %"180", 0
  %or.cond8.i = or i1 %"179", %"181"
  br i1 %or.cond8.i, label %main_bb84, label %main_bb80

main_bb80:                                        ; preds = %main_bb79
  %"182" = add i64 %"158", 1
  %"183" = icmp ne i64 %"182", 0
  br i1 %"183", label %main_bb81, label %main_bb104

main_bb81:                                        ; preds = %main_bb80
  %"184" = icmp eq i32 %"138", 0
  br i1 %"184", label %main_bb84, label %main_bb82

main_bb82:                                        ; preds = %main_bb81
  %"185" = add i64 %"160", 2
  %"186" = icmp ne i64 %"185", 0
  br i1 %"186", label %main_bb83, label %main_bb104

main_bb83:                                        ; preds = %main_bb82
  %"187" = add i64 %"161", 4
  %"188" = icmp ne i64 %"187", 0
  %.4.i = select i1 %"188", i32 512, i32 1024
  %"189" = mul nsw i32 %"151", 8
  %"190" = icmp sgt i32 %"189", %.4.i
  br i1 %"190", label %main_bb84, label %main_bb104

main_bb84:                                        ; preds = %main_bb83, %main_bb81, %main_bb79
  %"191" = call i32 @__VERIFIER_nondet_int() #4
  %"192" = icmp sle i32 %"191", 0
  br i1 %"192", label %main_ssl3_accept.exit, label %main_bb104

main_NodeBlock100.i:                              ; preds = %main_bb70
  %Pivot101.i = icmp slt i32 %s__state.0.i, 8640
  br i1 %Pivot101.i, label %main_NodeBlock73.i, label %main_NodeBlock98.i

main_NodeBlock73.i:                               ; preds = %main_NodeBlock100.i
  %Pivot74.i = icmp slt i32 %s__state.0.i, 8576
  br i1 %Pivot74.i, label %main_NodeBlock58.i, label %main_NodeBlock71.i

main_NodeBlock58.i:                               ; preds = %main_NodeBlock73.i
  %Pivot59.i = icmp slt i32 %s__state.0.i, 8560
  br i1 %Pivot59.i, label %main_LeafBlock52.i, label %main_LeafBlock55.i

main_LeafBlock52.i:                               ; preds = %main_NodeBlock58.i
  %s__state.0.off53.i = add i32 %s__state.0.i, -8544
  %SwitchLeaf54.i = icmp ule i32 %s__state.0.off53.i, 1
  br i1 %SwitchLeaf54.i, label %main_bb85, label %main_ssl3_accept.exit

main_bb85:                                        ; preds = %main_LeafBlock52.i
  %"193" = add nsw i32 %"136", 1
  %"194" = icmp ne i32 %"193", 0
  br i1 %"194", label %main_bb86, label %main_bb104

main_bb86:                                        ; preds = %main_bb85
  %"195" = icmp ne i32 %"137", 0
  %"196" = add nsw i32 %"136", 4
  %"197" = icmp ne i32 %"196", 0
  %or.cond10.i = and i1 %"195", %"197"
  br i1 %or.cond10.i, label %main_bb104, label %main_bb87

main_bb87:                                        ; preds = %main_bb86
  %"198" = add i64 %"162", 256
  %"199" = icmp eq i64 %"198", 0
  %"200" = add nsw i32 %"136", 2
  %"201" = icmp ne i32 %"200", 0
  %or.cond12.i = or i1 %"199", %"201"
  br i1 %or.cond12.i, label %main_bb88, label %main_bb104

main_bb88:                                        ; preds = %main_bb87
  %"202" = call i32 @__VERIFIER_nondet_int() #4
  %"203" = icmp sle i32 %"202", 0
  br i1 %"203", label %main_ssl3_accept.exit, label %main_bb104

main_LeafBlock55.i:                               ; preds = %main_NodeBlock58.i
  %s__state.0.off56.i = add i32 %s__state.0.i, -8560
  %SwitchLeaf57.i = icmp ule i32 %s__state.0.off56.i, 1
  br i1 %SwitchLeaf57.i, label %main_bb89, label %main_ssl3_accept.exit

main_bb89:                                        ; preds = %main_LeafBlock55.i
  %"204" = call i32 @__VERIFIER_nondet_int() #4
  %"205" = icmp sle i32 %"204", 0
  br i1 %"205", label %main_ssl3_accept.exit, label %main_bb104

main_NodeBlock71.i:                               ; preds = %main_NodeBlock73.i
  %Pivot72.i = icmp slt i32 %s__state.0.i, 8592
  br i1 %Pivot72.i, label %main_LeafBlock60.i, label %main_NodeBlock69.i

main_LeafBlock60.i:                               ; preds = %main_NodeBlock71.i
  %s__state.0.off61.i = add i32 %s__state.0.i, -8576
  %SwitchLeaf62.i = icmp ule i32 %s__state.0.off61.i, 1
  br i1 %SwitchLeaf62.i, label %main_bb90, label %main_ssl3_accept.exit

main_bb90:                                        ; preds = %main_LeafBlock60.i
  %"206" = call i32 @__VERIFIER_nondet_int() #4
  %"207" = icmp sle i32 %"206", 0
  br i1 %"207", label %main_ssl3_accept.exit, label %main_bb91

main_bb91:                                        ; preds = %main_bb90
  %"208" = icmp eq i32 %"206", 2
  br i1 %"208", label %main_bb104, label %main_bb92

main_bb92:                                        ; preds = %main_bb91
  %"209" = call i32 @__VERIFIER_nondet_int() #4
  %"210" = icmp sle i32 %"209", 0
  br i1 %"210", label %main_ssl3_accept.exit, label %main_bb104

main_NodeBlock69.i:                               ; preds = %main_NodeBlock71.i
  %Pivot70.i = icmp slt i32 %s__state.0.i, 8608
  br i1 %Pivot70.i, label %main_LeafBlock63.i, label %main_LeafBlock66.i

main_LeafBlock63.i:                               ; preds = %main_NodeBlock69.i
  %s__state.0.off64.i = add i32 %s__state.0.i, -8592
  %SwitchLeaf65.i = icmp ule i32 %s__state.0.off64.i, 1
  br i1 %SwitchLeaf65.i, label %main_bb93, label %main_ssl3_accept.exit

main_bb93:                                        ; preds = %main_LeafBlock63.i
  %"211" = call i32 @__VERIFIER_nondet_int() #4
  %"212" = icmp sle i32 %"211", 0
  br i1 %"212", label %main_ssl3_accept.exit, label %main_bb104

main_LeafBlock66.i:                               ; preds = %main_NodeBlock69.i
  %s__state.0.off67.i = add i32 %s__state.0.i, -8608
  %SwitchLeaf68.i = icmp ule i32 %s__state.0.off67.i, 1
  br i1 %SwitchLeaf68.i, label %main_bb94, label %main_ssl3_accept.exit

main_bb94:                                        ; preds = %main_LeafBlock66.i
  %"213" = call i32 @__VERIFIER_nondet_int() #4
  %"214" = icmp sle i32 %"213", 0
  br i1 %"214", label %main_ssl3_accept.exit, label %main_bb104

main_NodeBlock98.i:                               ; preds = %main_NodeBlock100.i
  %Pivot99.i = icmp slt i32 %s__state.0.i, 12292
  br i1 %Pivot99.i, label %main_NodeBlock86.i, label %main_NodeBlock96.i

main_NodeBlock86.i:                               ; preds = %main_NodeBlock98.i
  %Pivot87.i = icmp slt i32 %s__state.0.i, 8656
  br i1 %Pivot87.i, label %main_LeafBlock75.i, label %main_NodeBlock84.i

main_LeafBlock75.i:                               ; preds = %main_NodeBlock86.i
  %s__state.0.off76.i = add i32 %s__state.0.i, -8640
  %SwitchLeaf77.i = icmp ule i32 %s__state.0.off76.i, 1
  br i1 %SwitchLeaf77.i, label %main_bb95, label %main_ssl3_accept.exit

main_bb95:                                        ; preds = %main_LeafBlock75.i
  %"215" = call i32 @__VERIFIER_nondet_int() #4
  %Pivot114.i = icmp slt i32 %blastFlag.0.i, 7
  br i1 %Pivot114.i, label %main_LeafBlock105.i, label %main_NodeBlock111.i

main_LeafBlock105.i:                              ; preds = %main_bb95
  %SwitchLeaf106.i = icmp eq i32 %blastFlag.0.i, 4
  br i1 %SwitchLeaf106.i, label %main_bb96, label %main_NewDefault104.i

main_NodeBlock111.i:                              ; preds = %main_bb95
  %Pivot112.i = icmp slt i32 %blastFlag.0.i, 10
  br i1 %Pivot112.i, label %main_LeafBlock107.i, label %main_LeafBlock109.i

main_LeafBlock107.i:                              ; preds = %main_NodeBlock111.i
  %SwitchLeaf108.i = icmp eq i32 %blastFlag.0.i, 7
  br i1 %SwitchLeaf108.i, label %main_bb96, label %main_NewDefault104.i

main_LeafBlock109.i:                              ; preds = %main_NodeBlock111.i
  %SwitchLeaf110.i = icmp eq i32 %blastFlag.0.i, 10
  br i1 %SwitchLeaf110.i, label %main_bb106, label %main_NewDefault104.i

main_NewDefault104.i:                             ; preds = %main_LeafBlock109.i, %main_LeafBlock107.i, %main_LeafBlock105.i
  br label %main_bb96

main_bb96:                                        ; preds = %main_LeafBlock107.i, %main_NewDefault104.i, %main_LeafBlock105.i
  %blastFlag.4.i = phi i32 [ 5, %main_LeafBlock105.i ], [ %blastFlag.0.i, %main_NewDefault104.i ], [ 8, %main_LeafBlock107.i ]
  %"216" = icmp sle i32 %"215", 0
  br i1 %"216", label %main_ssl3_accept.exit, label %main_bb97

main_bb97:                                        ; preds = %main_bb96
  %"217" = icmp ne i32 %"132", 0
  %.5.i = select i1 %"217", i32 3, i32 8656
  br label %main_bb104

main_NodeBlock84.i:                               ; preds = %main_NodeBlock86.i
  %Pivot85.i = icmp slt i32 %s__state.0.i, 8672
  br i1 %Pivot85.i, label %main_LeafBlock78.i, label %main_LeafBlock81.i

main_LeafBlock78.i:                               ; preds = %main_NodeBlock84.i
  %s__state.0.off79.i = add i32 %s__state.0.i, -8656
  %SwitchLeaf80.i = icmp ule i32 %s__state.0.off79.i, 1
  %"218" = icmp ne i32 %"153", 0
  %or.cond = and i1 %SwitchLeaf80.i, %"218"
  br i1 %or.cond, label %main_bb98, label %main_ssl3_accept.exit

main_bb98:                                        ; preds = %main_LeafBlock78.i
  %"219" = call i32 @__VERIFIER_nondet_int() #4
  %Pivot125.i = icmp slt i32 %blastFlag.0.i, 5
  br i1 %Pivot125.i, label %main_LeafBlock116.i, label %main_NodeBlock122.i

main_LeafBlock116.i:                              ; preds = %main_bb98
  %SwitchLeaf117.i = icmp eq i32 %blastFlag.0.i, 2
  br i1 %SwitchLeaf117.i, label %main_bb99, label %main_NewDefault115.i

main_NodeBlock122.i:                              ; preds = %main_bb98
  %Pivot123.i = icmp slt i32 %blastFlag.0.i, 8
  br i1 %Pivot123.i, label %main_LeafBlock118.i, label %main_LeafBlock120.i

main_LeafBlock118.i:                              ; preds = %main_NodeBlock122.i
  %SwitchLeaf119.i = icmp eq i32 %blastFlag.0.i, 5
  br i1 %SwitchLeaf119.i, label %main_bb99, label %main_NewDefault115.i

main_LeafBlock120.i:                              ; preds = %main_NodeBlock122.i
  %SwitchLeaf121.i = icmp eq i32 %blastFlag.0.i, 8
  br i1 %SwitchLeaf121.i, label %main_bb99, label %main_NewDefault115.i

main_NewDefault115.i:                             ; preds = %main_LeafBlock120.i, %main_LeafBlock118.i, %main_LeafBlock116.i
  br label %main_bb99

main_bb99:                                        ; preds = %main_LeafBlock118.i, %main_LeafBlock120.i, %main_NewDefault115.i, %main_LeafBlock116.i
  %blastFlag.7.i = phi i32 [ 3, %main_LeafBlock116.i ], [ 6, %main_LeafBlock118.i ], [ %blastFlag.0.i, %main_NewDefault115.i ], [ 9, %main_LeafBlock120.i ]
  %"220" = icmp sle i32 %"219", 0
  br i1 %"220", label %main_ssl3_accept.exit, label %main_bb100

main_bb100:                                       ; preds = %main_bb99
  %"221" = icmp ne i32 %"154", 0
  br i1 %"221", label %main_bb104, label %main_ssl3_accept.exit

main_LeafBlock81.i:                               ; preds = %main_NodeBlock84.i
  %s__state.0.off82.i = add i32 %s__state.0.i, -8672
  %SwitchLeaf83.i = icmp ule i32 %s__state.0.off82.i, 1
  br i1 %SwitchLeaf83.i, label %main_bb101, label %main_ssl3_accept.exit

main_bb101:                                       ; preds = %main_LeafBlock81.i
  %"222" = call i32 @__VERIFIER_nondet_int() #4
  %Pivot136.i = icmp slt i32 %blastFlag.0.i, 6
  br i1 %Pivot136.i, label %main_LeafBlock127.i, label %main_NodeBlock133.i

main_LeafBlock127.i:                              ; preds = %main_bb101
  %SwitchLeaf128.i = icmp eq i32 %blastFlag.0.i, 3
  br i1 %SwitchLeaf128.i, label %main_bb102, label %main_NewDefault126.i

main_NodeBlock133.i:                              ; preds = %main_bb101
  %Pivot134.i = icmp slt i32 %blastFlag.0.i, 9
  br i1 %Pivot134.i, label %main_LeafBlock129.i, label %main_LeafBlock131.i

main_LeafBlock129.i:                              ; preds = %main_NodeBlock133.i
  %SwitchLeaf130.i = icmp eq i32 %blastFlag.0.i, 6
  br i1 %SwitchLeaf130.i, label %main_bb102, label %main_NewDefault126.i

main_LeafBlock131.i:                              ; preds = %main_NodeBlock133.i
  %SwitchLeaf132.i = icmp eq i32 %blastFlag.0.i, 9
  br i1 %SwitchLeaf132.i, label %main_bb102, label %main_NewDefault126.i

main_NewDefault126.i:                             ; preds = %main_LeafBlock131.i, %main_LeafBlock129.i, %main_LeafBlock127.i
  br label %main_bb102

main_bb102:                                       ; preds = %main_LeafBlock129.i, %main_LeafBlock131.i, %main_NewDefault126.i, %main_LeafBlock127.i
  %blastFlag.10.i = phi i32 [ 4, %main_LeafBlock127.i ], [ 7, %main_LeafBlock129.i ], [ %blastFlag.0.i, %main_NewDefault126.i ], [ 10, %main_LeafBlock131.i ]
  %"223" = icmp sle i32 %"222", 0
  br i1 %"223", label %main_ssl3_accept.exit, label %main_bb103

main_bb103:                                       ; preds = %main_bb102
  %"224" = icmp ne i32 %"132", 0
  %.6.i = select i1 %"224", i32 8640, i32 3
  br label %main_bb104

main_bb104:                                       ; preds = %main_bb103, %main_bb100, %main_bb97, %main_bb94, %main_bb93, %main_bb92, %main_bb91, %main_bb89, %main_bb88, %main_bb87, %main_bb86, %main_bb85, %main_bb84, %main_bb83, %main_bb82, %main_bb80, %main_bb78, %main_bb77, %main_bb76, %main_LeafBlock31.i, %main_bb74, %main_bb73, %main_bb72, %main_bb71
  %blastFlag.11.i = phi i32 [ %.blastFlag.01.i, %main_bb76 ], [ %blastFlag.4.i, %main_bb97 ], [ %blastFlag.10.i, %main_bb103 ], [ %blastFlag.0.i, %main_bb74 ], [ %blastFlag.0.i, %main_LeafBlock31.i ], [ %.blastFlag.0.i, %main_bb73 ], [ %blastFlag.0.i, %main_bb78 ], [ %blastFlag.0.i, %main_bb77 ], [ %blastFlag.0.i, %main_bb80 ], [ %blastFlag.0.i, %main_bb82 ], [ %blastFlag.0.i, %main_bb84 ], [ %blastFlag.0.i, %main_bb83 ], [ %blastFlag.0.i, %main_bb85 ], [ %blastFlag.0.i, %main_bb88 ], [ %blastFlag.0.i, %main_bb89 ], [ %blastFlag.0.i, %main_bb72 ], [ %blastFlag.0.i, %main_bb71 ], [ %blastFlag.0.i, %main_bb92 ], [ %blastFlag.0.i, %main_bb91 ], [ %blastFlag.0.i, %main_bb93 ], [ %blastFlag.0.i, %main_bb94 ], [ %blastFlag.7.i, %main_bb100 ], [ %blastFlag.0.i, %main_bb86 ], [ %blastFlag.0.i, %main_bb87 ]
  %got_new_session.1.i = phi i32 [ %got_new_session.0.i, %main_bb76 ], [ %got_new_session.0.i, %main_bb97 ], [ %got_new_session.0.i, %main_bb103 ], [ %got_new_session.0.i, %main_bb74 ], [ %got_new_session.0.i, %main_LeafBlock31.i ], [ 1, %main_bb73 ], [ %got_new_session.0.i, %main_bb78 ], [ %got_new_session.0.i, %main_bb77 ], [ %got_new_session.0.i, %main_bb80 ], [ %got_new_session.0.i, %main_bb82 ], [ %got_new_session.0.i, %main_bb84 ], [ %got_new_session.0.i, %main_bb83 ], [ %got_new_session.0.i, %main_bb85 ], [ %got_new_session.0.i, %main_bb88 ], [ %got_new_session.0.i, %main_bb89 ], [ %got_new_session.0.i, %main_bb72 ], [ %got_new_session.0.i, %main_bb71 ], [ %got_new_session.0.i, %main_bb92 ], [ %got_new_session.0.i, %main_bb91 ], [ %got_new_session.0.i, %main_bb93 ], [ %got_new_session.0.i, %main_bb94 ], [ %got_new_session.0.i, %main_bb100 ], [ %got_new_session.0.i, %main_bb86 ], [ %got_new_session.0.i, %main_bb87 ]
  %skip.8.i = phi i32 [ 0, %main_bb76 ], [ 0, %main_bb97 ], [ 0, %main_bb103 ], [ 0, %main_bb74 ], [ 0, %main_LeafBlock31.i ], [ 0, %main_bb73 ], [ 1, %main_bb77 ], [ 0, %main_bb78 ], [ 0, %main_bb84 ], [ 1, %main_bb83 ], [ 1, %main_bb82 ], [ 1, %main_bb80 ], [ 0, %main_bb88 ], [ 1, %main_bb85 ], [ 0, %main_bb89 ], [ 0, %main_bb72 ], [ 0, %main_bb71 ], [ 0, %main_bb92 ], [ 0, %main_bb91 ], [ 0, %main_bb93 ], [ 0, %main_bb94 ], [ 0, %main_bb100 ], [ 1, %main_bb86 ], [ 1, %main_bb87 ]
  %num1.2.i = phi i64 [ %num1.0.i, %main_bb76 ], [ %num1.0.i, %main_bb97 ], [ %num1.0.i, %main_bb103 ], [ %num1.0.i, %main_bb74 ], [ %num1.0.i, %main_LeafBlock31.i ], [ %num1.0.i, %main_bb73 ], [ %num1.0.i, %main_bb78 ], [ %num1.0.i, %main_bb77 ], [ %num1.0.i, %main_bb80 ], [ %num1.0.i, %main_bb82 ], [ %num1.0.i, %main_bb84 ], [ %num1.0.i, %main_bb83 ], [ %num1.0.i, %main_bb85 ], [ %num1.0.i, %main_bb88 ], [ %num1.0.i, %main_bb89 ], [ %num1.0.i, %main_bb71 ], [ %"152", %main_bb72 ], [ %num1.0.i, %main_bb92 ], [ %num1.0.i, %main_bb91 ], [ %num1.0.i, %main_bb93 ], [ %num1.0.i, %main_bb94 ], [ %num1.0.i, %main_bb100 ], [ %num1.0.i, %main_bb86 ], [ %num1.0.i, %main_bb87 ]
  %s__s3__tmp__next_state___0.5.i = phi i32 [ %s__s3__tmp__next_state___0.0.i, %main_bb76 ], [ %s__s3__tmp__next_state___0.0.i, %main_bb97 ], [ %.6.i, %main_bb103 ], [ 8482, %main_bb74 ], [ %s__s3__tmp__next_state___0.0.i, %main_LeafBlock31.i ], [ %s__s3__tmp__next_state___0.0.i, %main_bb73 ], [ %s__s3__tmp__next_state___0.0.i, %main_bb78 ], [ %s__s3__tmp__next_state___0.0.i, %main_bb77 ], [ %s__s3__tmp__next_state___0.0.i, %main_bb80 ], [ %s__s3__tmp__next_state___0.0.i, %main_bb82 ], [ %s__s3__tmp__next_state___0.0.i, %main_bb84 ], [ %s__s3__tmp__next_state___0.0.i, %main_bb83 ], [ 8576, %main_bb88 ], [ %s__s3__tmp__next_state___0.0.i, %main_bb85 ], [ 8576, %main_bb89 ], [ %s__s3__tmp__next_state___0.0.i, %main_bb72 ], [ %s__s3__tmp__next_state___0.0.i, %main_bb71 ], [ %s__s3__tmp__next_state___0.0.i, %main_bb92 ], [ %s__s3__tmp__next_state___0.0.i, %main_bb91 ], [ %s__s3__tmp__next_state___0.0.i, %main_bb93 ], [ %s__s3__tmp__next_state___0.0.i, %main_bb94 ], [ %s__s3__tmp__next_state___0.0.i, %main_bb100 ], [ %s__s3__tmp__next_state___0.0.i, %main_bb86 ], [ %s__s3__tmp__next_state___0.0.i, %main_bb87 ]
  %s__state.8.i = phi i32 [ %.2.i, %main_bb76 ], [ %.5.i, %main_bb97 ], [ 8448, %main_bb103 ], [ 8448, %main_bb74 ], [ 3, %main_LeafBlock31.i ], [ 8496, %main_bb73 ], [ 8528, %main_bb78 ], [ 8528, %main_bb77 ], [ 8544, %main_bb80 ], [ 8544, %main_bb82 ], [ 8544, %main_bb84 ], [ 8544, %main_bb83 ], [ 8448, %main_bb88 ], [ 8560, %main_bb85 ], [ 8448, %main_bb89 ], [ %s__s3__tmp__next_state___0.0.i, %main_bb72 ], [ %s__s3__tmp__next_state___0.0.i, %main_bb71 ], [ 8466, %main_bb91 ], [ 8592, %main_bb92 ], [ 8608, %main_bb93 ], [ 8640, %main_bb94 ], [ 8672, %main_bb100 ], [ 8560, %main_bb86 ], [ 8560, %main_bb87 ]
  %"225" = icmp ne i32 %skip.8.i, 0
  br i1 %"225", label %main_bb70, label %main_bb105

main_bb105:                                       ; preds = %main_bb104
  %"226" = icmp ne i32 %"146", -12288
  %"227" = icmp ne i32 %s__state.8.i, 8656
  %or.cond14.i = and i1 %"226", %"227"
  %"228" = icmp ne i32 %"147", -16384
  %or.cond15.i = and i1 %or.cond14.i, %"228"
  %"229" = icmp eq i32 %s__state.0.i, 8496
  %or.cond16.i = and i1 %or.cond15.i, %"229"
  br i1 %or.cond16.i, label %main_bb106, label %main_bb107

main_bb106:                                       ; preds = %main_bb105, %main_LeafBlock109.i
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_bb107:                                       ; preds = %main_bb105
  %"230" = icmp ne i32 %"133", 0
  br i1 %"230", label %main_bb108, label %main_bb70

main_bb108:                                       ; preds = %main_bb107
  %"231" = call i32 @__VERIFIER_nondet_int() #4
  %"232" = icmp sle i32 %"231", 0
  br i1 %"232", label %main_ssl3_accept.exit, label %main_bb70

main_ssl3_accept.exit:                            ; preds = %main_NodeBlock27.i, %main_bb72, %main_bb73, %main_bb74, %main_bb75, %main_bb78, %main_bb84, %main_bb88, %main_bb89, %main_bb90, %main_bb92, %main_bb93, %main_bb94, %main_bb96, %main_bb99, %main_bb100, %main_bb102, %main_bb108, %main_LeafBlock81.i, %main_LeafBlock78.i, %main_LeafBlock75.i, %main_LeafBlock66.i, %main_LeafBlock63.i, %main_LeafBlock60.i, %main_LeafBlock55.i, %main_LeafBlock52.i, %main_LeafBlock41.i, %main_LeafBlock38.i, %main_LeafBlock35.i, %main_LeafBlock31.i, %main_LeafBlock23.i, %main_LeafBlock21.i, %main_bb68
  %.0.i = phi i32 [ -1, %main_bb68 ], [ %"168", %main_bb74 ], [ %"165", %main_bb73 ], [ %"170", %main_bb75 ], [ %"176", %main_bb78 ], [ %"191", %main_bb84 ], [ %"202", %main_bb88 ], [ %"204", %main_bb89 ], [ -1, %main_bb72 ], [ %"206", %main_bb90 ], [ %"209", %main_bb92 ], [ %"211", %main_bb93 ], [ %"213", %main_bb94 ], [ %"215", %main_bb96 ], [ %"219", %main_bb99 ], [ -1, %main_bb100 ], [ %"222", %main_bb102 ], [ %"231", %main_bb108 ], [ -1, %main_LeafBlock81.i ], [ -1, %main_LeafBlock78.i ], [ -1, %main_LeafBlock75.i ], [ -1, %main_LeafBlock66.i ], [ -1, %main_LeafBlock63.i ], [ -1, %main_LeafBlock60.i ], [ -1, %main_LeafBlock55.i ], [ -1, %main_LeafBlock52.i ], [ -1, %main_LeafBlock41.i ], [ -1, %main_LeafBlock38.i ], [ -1, %main_LeafBlock35.i ], [ -1, %main_LeafBlock31.i ], [ -1, %main_LeafBlock23.i ], [ -1, %main_LeafBlock21.i ], [ -1, %main_NodeBlock27.i ]
  ret i32 %.0.i

main_NodeBlock96.i:                               ; preds = %main_NodeBlock98.i
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

