; ModuleID = 'Benchmarks/TermCOMP/C/SV-COMP_Mixed_Categories/s3_clnt_1_false-unreach-call.cil/s3_clnt_1_false-unreach-call.cil.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @ssl3_connect(i32 %initial_state) #0 {
ssl3_connect_bb0:
  %"0" = call i32 @__kittel_nondef.0()
  %"1" = call i32 @__kittel_nondef.0()
  %"2" = call i32 @__kittel_nondef.0()
  %"3" = call i32 @__kittel_nondef.0()
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
  %"26" = call i32 @__VERIFIER_nondet_int()
  %"27" = call i32 @__VERIFIER_nondet_int()
  %"28" = call i32 @__VERIFIER_nondet_int()
  %"29" = call i32 @__VERIFIER_nondet_int()
  %"30" = call i32 @__VERIFIER_nondet_int()
  %"31" = call i32 @__VERIFIER_nondet_int()
  %"32" = icmp ne i32 %"4", 0
  br i1 %"32", label %ssl3_connect_bb2, label %ssl3_connect_bb1

ssl3_connect_bb1:                                 ; preds = %ssl3_connect_bb0
  %"33" = icmp ne i32 %"11", 0
  %. = select i1 %"33", i32 %"11", i32 0
  br label %ssl3_connect_bb2

ssl3_connect_bb2:                                 ; preds = %ssl3_connect_bb0, %ssl3_connect_bb1
  %cb.1 = phi i32 [ %., %ssl3_connect_bb1 ], [ %"4", %ssl3_connect_bb0 ]
  %"34" = sub nsw i32 %"22", 12288
  %"35" = icmp ne i32 %"34", 0
  br i1 %"35", label %ssl3_connect_bb3, label %ssl3_connect_bb4

ssl3_connect_bb3:                                 ; preds = %ssl3_connect_bb2
  br label %ssl3_connect_bb4

ssl3_connect_bb4:                                 ; preds = %ssl3_connect_bb3, %ssl3_connect_bb2
  %"36" = sext i32 %"30" to i64
  br label %ssl3_connect_bb5

ssl3_connect_bb5:                                 ; preds = %ssl3_connect_bb40, %ssl3_connect_bb43, %ssl3_connect_bb44, %ssl3_connect_bb4
  %blastFlag.0 = phi i32 [ 0, %ssl3_connect_bb4 ], [ %blastFlag.7, %ssl3_connect_bb44 ], [ %blastFlag.7, %ssl3_connect_bb43 ], [ %blastFlag.7, %ssl3_connect_bb40 ]
  %num1.0 = phi i32 [ %"3", %ssl3_connect_bb4 ], [ %num1.2, %ssl3_connect_bb44 ], [ %num1.2, %ssl3_connect_bb43 ], [ %num1.2, %ssl3_connect_bb40 ]
  %s__s3__tmp__next_state___0.0 = phi i32 [ %"2", %ssl3_connect_bb4 ], [ %s__s3__tmp__next_state___0.2, %ssl3_connect_bb44 ], [ %s__s3__tmp__next_state___0.2, %ssl3_connect_bb43 ], [ %s__s3__tmp__next_state___0.2, %ssl3_connect_bb40 ]
  %s__s3__flags.0 = phi i32 [ %"1", %ssl3_connect_bb4 ], [ %s__s3__flags.3, %ssl3_connect_bb44 ], [ %s__s3__flags.3, %ssl3_connect_bb43 ], [ %s__s3__flags.3, %ssl3_connect_bb40 ]
  %s__ctx__stats__sess_connect.0 = phi i32 [ %"13", %ssl3_connect_bb4 ], [ %s__ctx__stats__sess_connect.1, %ssl3_connect_bb44 ], [ %s__ctx__stats__sess_connect.1, %ssl3_connect_bb43 ], [ %s__ctx__stats__sess_connect.1, %ssl3_connect_bb40 ]
  %s__ctx__stats__sess_connect_renegotiate.0 = phi i32 [ %"12", %ssl3_connect_bb4 ], [ %s__ctx__stats__sess_connect_renegotiate.5, %ssl3_connect_bb44 ], [ %s__ctx__stats__sess_connect_renegotiate.5, %ssl3_connect_bb43 ], [ %s__ctx__stats__sess_connect_renegotiate.5, %ssl3_connect_bb40 ]
  %s__init_buf___0.0 = phi i32 [ %"0", %ssl3_connect_bb4 ], [ %s__init_buf___0.2, %ssl3_connect_bb44 ], [ %s__init_buf___0.2, %ssl3_connect_bb43 ], [ %s__init_buf___0.2, %ssl3_connect_bb40 ]
  %s__state.0 = phi i32 [ %initial_state, %ssl3_connect_bb4 ], [ %s__state.7, %ssl3_connect_bb44 ], [ %s__state.7, %ssl3_connect_bb43 ], [ %s__state.7, %ssl3_connect_bb40 ]
  br label %ssl3_connect_NodeBlock91

ssl3_connect_NodeBlock91:                         ; preds = %ssl3_connect_bb5
  %Pivot92 = icmp slt i32 %s__state.0, 4448
  br i1 %Pivot92, label %ssl3_connect_NodeBlock44, label %ssl3_connect_NodeBlock89

ssl3_connect_NodeBlock44:                         ; preds = %ssl3_connect_NodeBlock91
  %Pivot45 = icmp slt i32 %s__state.0, 4368
  br i1 %Pivot45, label %ssl3_connect_NodeBlock20, label %ssl3_connect_NodeBlock42

ssl3_connect_NodeBlock20:                         ; preds = %ssl3_connect_NodeBlock44
  %Pivot21 = icmp slt i32 %s__state.0, 4099
  br i1 %Pivot21, label %ssl3_connect_NodeBlock, label %ssl3_connect_NodeBlock18

ssl3_connect_NodeBlock:                           ; preds = %ssl3_connect_NodeBlock20
  %Pivot = icmp slt i32 %s__state.0, 4096
  br i1 %Pivot, label %ssl3_connect_LeafBlock, label %ssl3_connect_LeafBlock12

ssl3_connect_LeafBlock:                           ; preds = %ssl3_connect_NodeBlock
  %SwitchLeaf = icmp eq i32 %s__state.0, 3
  br i1 %SwitchLeaf, label %ssl3_connect_bb6, label %ssl3_connect_NewDefault

ssl3_connect_bb6:                                 ; preds = %ssl3_connect_LeafBlock
  br label %ssl3_connect_bb45

ssl3_connect_LeafBlock12:                         ; preds = %ssl3_connect_NodeBlock
  %SwitchLeaf13 = icmp eq i32 %s__state.0, 4096
  br i1 %SwitchLeaf13, label %ssl3_connect_bb35, label %ssl3_connect_NewDefault

ssl3_connect_NodeBlock18:                         ; preds = %ssl3_connect_NodeBlock20
  %Pivot19 = icmp slt i32 %s__state.0, 4352
  br i1 %Pivot19, label %ssl3_connect_LeafBlock14, label %ssl3_connect_LeafBlock16

ssl3_connect_LeafBlock14:                         ; preds = %ssl3_connect_NodeBlock18
  %SwitchLeaf15 = icmp eq i32 %s__state.0, 4099
  br i1 %SwitchLeaf15, label %ssl3_connect_bb35, label %ssl3_connect_NewDefault

ssl3_connect_LeafBlock16:                         ; preds = %ssl3_connect_NodeBlock18
  %SwitchLeaf17 = icmp eq i32 %s__state.0, 4352
  br i1 %SwitchLeaf17, label %ssl3_connect_bb7, label %ssl3_connect_NewDefault

ssl3_connect_bb7:                                 ; preds = %ssl3_connect_LeafBlock16
  %"37" = sext i32 %num1.0 to i64
  %"38" = icmp sgt i64 %"37", 0
  br i1 %"38", label %ssl3_connect_bb8, label %ssl3_connect_bb40

ssl3_connect_bb8:                                 ; preds = %ssl3_connect_bb7
  %"39" = icmp sle i64 %"36", 0
  br i1 %"39", label %ssl3_connect_bb45, label %ssl3_connect_bb40

ssl3_connect_NodeBlock42:                         ; preds = %ssl3_connect_NodeBlock44
  %Pivot43 = icmp slt i32 %s__state.0, 4400
  br i1 %Pivot43, label %ssl3_connect_NodeBlock27, label %ssl3_connect_NodeBlock40

ssl3_connect_NodeBlock27:                         ; preds = %ssl3_connect_NodeBlock42
  %Pivot28 = icmp slt i32 %s__state.0, 4384
  br i1 %Pivot28, label %ssl3_connect_LeafBlock22, label %ssl3_connect_LeafBlock24

ssl3_connect_LeafBlock22:                         ; preds = %ssl3_connect_NodeBlock27
  %s__state.0.off = add i32 %s__state.0, -4368
  %SwitchLeaf23 = icmp ule i32 %s__state.0.off, 1
  br i1 %SwitchLeaf23, label %ssl3_connect_bb9, label %ssl3_connect_NewDefault

ssl3_connect_bb9:                                 ; preds = %ssl3_connect_LeafBlock22
  %"40" = call i32 @__VERIFIER_nondet_int()
  %"41" = icmp eq i32 %blastFlag.0, 0
  %.blastFlag.0 = select i1 %"41", i32 1, i32 %blastFlag.0
  %"42" = icmp sle i32 %"40", 0
  br i1 %"42", label %ssl3_connect_bb45, label %ssl3_connect_bb10

ssl3_connect_bb10:                                ; preds = %ssl3_connect_bb9
  br label %ssl3_connect_bb40

ssl3_connect_LeafBlock24:                         ; preds = %ssl3_connect_NodeBlock27
  %s__state.0.off25 = add i32 %s__state.0, -4384
  %SwitchLeaf26 = icmp ule i32 %s__state.0.off25, 1
  br i1 %SwitchLeaf26, label %ssl3_connect_bb11, label %ssl3_connect_NewDefault

ssl3_connect_bb11:                                ; preds = %ssl3_connect_LeafBlock24
  %"43" = call i32 @__VERIFIER_nondet_int()
  %"44" = icmp eq i32 %blastFlag.0, 1
  %.blastFlag.01 = select i1 %"44", i32 2, i32 %blastFlag.0
  %"45" = icmp sle i32 %"43", 0
  br i1 %"45", label %ssl3_connect_bb45, label %ssl3_connect_bb12

ssl3_connect_bb12:                                ; preds = %ssl3_connect_bb11
  %"46" = icmp ne i32 %"9", 0
  %.2 = select i1 %"46", i32 4560, i32 4400
  br label %ssl3_connect_bb40

ssl3_connect_NodeBlock40:                         ; preds = %ssl3_connect_NodeBlock42
  %Pivot41 = icmp slt i32 %s__state.0, 4416
  br i1 %Pivot41, label %ssl3_connect_LeafBlock29, label %ssl3_connect_NodeBlock38

ssl3_connect_LeafBlock29:                         ; preds = %ssl3_connect_NodeBlock40
  %s__state.0.off30 = add i32 %s__state.0, -4400
  %SwitchLeaf31 = icmp ule i32 %s__state.0.off30, 1
  br i1 %SwitchLeaf31, label %ssl3_connect_bb13, label %ssl3_connect_NewDefault

ssl3_connect_bb13:                                ; preds = %ssl3_connect_LeafBlock29
  %"47" = sub nsw i32 %"20", 256
  %"48" = icmp ne i32 %"47", 0
  br i1 %"48", label %ssl3_connect_bb40, label %ssl3_connect_bb14

ssl3_connect_bb14:                                ; preds = %ssl3_connect_bb13
  %"49" = call i32 @__VERIFIER_nondet_int()
  %"50" = icmp eq i32 %blastFlag.0, 2
  %.blastFlag.03 = select i1 %"50", i32 3, i32 %blastFlag.0
  %"51" = icmp sle i32 %"49", 0
  br i1 %"51", label %ssl3_connect_bb45, label %ssl3_connect_bb40

ssl3_connect_NodeBlock38:                         ; preds = %ssl3_connect_NodeBlock40
  %Pivot39 = icmp slt i32 %s__state.0, 4432
  br i1 %Pivot39, label %ssl3_connect_LeafBlock32, label %ssl3_connect_LeafBlock35

ssl3_connect_LeafBlock32:                         ; preds = %ssl3_connect_NodeBlock38
  %s__state.0.off33 = add i32 %s__state.0, -4416
  %SwitchLeaf34 = icmp ule i32 %s__state.0.off33, 1
  br i1 %SwitchLeaf34, label %ssl3_connect_bb15, label %ssl3_connect_NewDefault

ssl3_connect_bb15:                                ; preds = %ssl3_connect_LeafBlock32
  %"52" = call i32 @__VERIFIER_nondet_int()
  %"53" = icmp eq i32 %blastFlag.0, 3
  %.blastFlag.04 = select i1 %"53", i32 4, i32 %blastFlag.0
  %"54" = icmp sle i32 %"52", 0
  br i1 %"54", label %ssl3_connect_bb45, label %ssl3_connect_bb16

ssl3_connect_bb16:                                ; preds = %ssl3_connect_bb15
  %"55" = icmp ne i32 %"27", 0
  br i1 %"55", label %ssl3_connect_bb40, label %ssl3_connect_bb45

ssl3_connect_LeafBlock35:                         ; preds = %ssl3_connect_NodeBlock38
  %s__state.0.off36 = add i32 %s__state.0, -4432
  %SwitchLeaf37 = icmp ule i32 %s__state.0.off36, 1
  br i1 %SwitchLeaf37, label %ssl3_connect_bb17, label %ssl3_connect_NewDefault

ssl3_connect_bb17:                                ; preds = %ssl3_connect_LeafBlock35
  %"56" = call i32 @__VERIFIER_nondet_int()
  %"57" = icmp eq i32 %blastFlag.0, 4
  br i1 %"57", label %ssl3_connect_bb18, label %ssl3_connect_bb19

ssl3_connect_bb18:                                ; preds = %ssl3_connect_bb17
  call void (...)* @__VERIFIER_error() #3
  unreachable

ssl3_connect_bb19:                                ; preds = %ssl3_connect_bb17
  %"58" = icmp sle i32 %"56", 0
  br i1 %"58", label %ssl3_connect_bb45, label %ssl3_connect_bb40

ssl3_connect_NodeBlock89:                         ; preds = %ssl3_connect_NodeBlock91
  %Pivot90 = icmp slt i32 %s__state.0, 4528
  br i1 %Pivot90, label %ssl3_connect_NodeBlock67, label %ssl3_connect_NodeBlock87

ssl3_connect_NodeBlock67:                         ; preds = %ssl3_connect_NodeBlock89
  %Pivot68 = icmp slt i32 %s__state.0, 4480
  br i1 %Pivot68, label %ssl3_connect_NodeBlock52, label %ssl3_connect_NodeBlock65

ssl3_connect_NodeBlock52:                         ; preds = %ssl3_connect_NodeBlock67
  %Pivot53 = icmp slt i32 %s__state.0, 4464
  br i1 %Pivot53, label %ssl3_connect_LeafBlock46, label %ssl3_connect_LeafBlock49

ssl3_connect_LeafBlock46:                         ; preds = %ssl3_connect_NodeBlock52
  %s__state.0.off47 = add i32 %s__state.0, -4448
  %SwitchLeaf48 = icmp ule i32 %s__state.0.off47, 1
  br i1 %SwitchLeaf48, label %ssl3_connect_bb20, label %ssl3_connect_NewDefault

ssl3_connect_bb20:                                ; preds = %ssl3_connect_LeafBlock46
  %"59" = call i32 @__VERIFIER_nondet_int()
  %"60" = icmp eq i32 %blastFlag.0, 4
  %.blastFlag.05 = select i1 %"60", i32 5, i32 %blastFlag.0
  %"61" = icmp sle i32 %"59", 0
  br i1 %"61", label %ssl3_connect_bb45, label %ssl3_connect_bb21

ssl3_connect_bb21:                                ; preds = %ssl3_connect_bb20
  %"62" = icmp ne i32 %"16", 0
  %.6 = select i1 %"62", i32 4464, i32 4480
  br label %ssl3_connect_bb40

ssl3_connect_LeafBlock49:                         ; preds = %ssl3_connect_NodeBlock52
  %s__state.0.off50 = add i32 %s__state.0, -4464
  %SwitchLeaf51 = icmp ule i32 %s__state.0.off50, 3
  br i1 %SwitchLeaf51, label %ssl3_connect_bb22, label %ssl3_connect_NewDefault

ssl3_connect_bb22:                                ; preds = %ssl3_connect_LeafBlock49
  %"63" = call i32 @__VERIFIER_nondet_int()
  %"64" = icmp sle i32 %"63", 0
  br i1 %"64", label %ssl3_connect_bb45, label %ssl3_connect_bb40

ssl3_connect_NodeBlock65:                         ; preds = %ssl3_connect_NodeBlock67
  %Pivot66 = icmp slt i32 %s__state.0, 4496
  br i1 %Pivot66, label %ssl3_connect_LeafBlock54, label %ssl3_connect_NodeBlock63

ssl3_connect_LeafBlock54:                         ; preds = %ssl3_connect_NodeBlock65
  %s__state.0.off55 = add i32 %s__state.0, -4480
  %SwitchLeaf56 = icmp ule i32 %s__state.0.off55, 1
  br i1 %SwitchLeaf56, label %ssl3_connect_bb23, label %ssl3_connect_NewDefault

ssl3_connect_bb23:                                ; preds = %ssl3_connect_LeafBlock54
  %"65" = call i32 @__VERIFIER_nondet_int()
  %"66" = icmp sle i32 %"65", 0
  br i1 %"66", label %ssl3_connect_bb45, label %ssl3_connect_bb24

ssl3_connect_bb24:                                ; preds = %ssl3_connect_bb23
  %"67" = icmp eq i32 %"16", 1
  %.7 = select i1 %"67", i32 4496, i32 4512
  br label %ssl3_connect_bb40

ssl3_connect_NodeBlock63:                         ; preds = %ssl3_connect_NodeBlock65
  %Pivot64 = icmp slt i32 %s__state.0, 4512
  br i1 %Pivot64, label %ssl3_connect_LeafBlock57, label %ssl3_connect_LeafBlock60

ssl3_connect_LeafBlock57:                         ; preds = %ssl3_connect_NodeBlock63
  %s__state.0.off58 = add i32 %s__state.0, -4496
  %SwitchLeaf59 = icmp ule i32 %s__state.0.off58, 1
  br i1 %SwitchLeaf59, label %ssl3_connect_bb25, label %ssl3_connect_NewDefault

ssl3_connect_bb25:                                ; preds = %ssl3_connect_LeafBlock57
  %"68" = call i32 @__VERIFIER_nondet_int()
  %"69" = icmp sle i32 %"68", 0
  br i1 %"69", label %ssl3_connect_bb45, label %ssl3_connect_bb40

ssl3_connect_LeafBlock60:                         ; preds = %ssl3_connect_NodeBlock63
  %s__state.0.off61 = add i32 %s__state.0, -4512
  %SwitchLeaf62 = icmp ule i32 %s__state.0.off61, 1
  br i1 %SwitchLeaf62, label %ssl3_connect_bb26, label %ssl3_connect_NewDefault

ssl3_connect_bb26:                                ; preds = %ssl3_connect_LeafBlock60
  %"70" = call i32 @__VERIFIER_nondet_int()
  %"71" = icmp sle i32 %"70", 0
  br i1 %"71", label %ssl3_connect_bb45, label %ssl3_connect_bb27

ssl3_connect_bb27:                                ; preds = %ssl3_connect_bb26
  %"72" = icmp ne i32 %"28", 0
  %"73" = icmp ne i32 %"29", 0
  %or.cond10 = and i1 %"72", %"73"
  br i1 %or.cond10, label %ssl3_connect_bb40, label %ssl3_connect_bb45

ssl3_connect_NodeBlock87:                         ; preds = %ssl3_connect_NodeBlock89
  %Pivot88 = icmp slt i32 %s__state.0, 12292
  br i1 %Pivot88, label %ssl3_connect_NodeBlock75, label %ssl3_connect_NodeBlock85

ssl3_connect_NodeBlock75:                         ; preds = %ssl3_connect_NodeBlock87
  %Pivot76 = icmp slt i32 %s__state.0, 4560
  br i1 %Pivot76, label %ssl3_connect_LeafBlock69, label %ssl3_connect_LeafBlock72

ssl3_connect_LeafBlock69:                         ; preds = %ssl3_connect_NodeBlock75
  %s__state.0.off70 = add i32 %s__state.0, -4528
  %SwitchLeaf71 = icmp ule i32 %s__state.0.off70, 1
  br i1 %SwitchLeaf71, label %ssl3_connect_bb28, label %ssl3_connect_NewDefault

ssl3_connect_bb28:                                ; preds = %ssl3_connect_LeafBlock69
  %"74" = call i32 @__VERIFIER_nondet_int()
  %"75" = icmp sle i32 %"74", 0
  br i1 %"75", label %ssl3_connect_bb45, label %ssl3_connect_bb29

ssl3_connect_bb29:                                ; preds = %ssl3_connect_bb28
  %"76" = sext i32 %s__s3__flags.0 to i64
  %"77" = add nsw i64 %"76", 5
  %"78" = trunc i64 %"77" to i32
  %"79" = icmp ne i32 %"9", 0
  br i1 %"79", label %ssl3_connect_bb30, label %ssl3_connect_bb40

ssl3_connect_bb30:                                ; preds = %ssl3_connect_bb29
  %"80" = sext i32 %"78" to i64
  %"81" = sub nsw i64 %"80", 2
  %"82" = icmp ne i64 %"81", 0
  br i1 %"82", label %ssl3_connect_bb31, label %ssl3_connect_bb40

ssl3_connect_bb31:                                ; preds = %ssl3_connect_bb30
  %"83" = sext i32 %"78" to i64
  %"84" = add nsw i64 %"83", 4
  %"85" = trunc i64 %"84" to i32
  br label %ssl3_connect_bb40

ssl3_connect_LeafBlock72:                         ; preds = %ssl3_connect_NodeBlock75
  %s__state.0.off73 = add i32 %s__state.0, -4560
  %SwitchLeaf74 = icmp ule i32 %s__state.0.off73, 1
  br i1 %SwitchLeaf74, label %ssl3_connect_bb32, label %ssl3_connect_NewDefault

ssl3_connect_bb32:                                ; preds = %ssl3_connect_LeafBlock72
  %"86" = call i32 @__VERIFIER_nondet_int()
  %"87" = icmp sle i32 %"86", 0
  br i1 %"87", label %ssl3_connect_bb45, label %ssl3_connect_bb33

ssl3_connect_bb33:                                ; preds = %ssl3_connect_bb32
  %"88" = icmp ne i32 %"9", 0
  %.8 = select i1 %"88", i32 4512, i32 3
  br label %ssl3_connect_bb40

ssl3_connect_NodeBlock85:                         ; preds = %ssl3_connect_NodeBlock87
  %Pivot86 = icmp slt i32 %s__state.0, 16384
  br i1 %Pivot86, label %ssl3_connect_LeafBlock77, label %ssl3_connect_NodeBlock83

ssl3_connect_LeafBlock77:                         ; preds = %ssl3_connect_NodeBlock85
  %SwitchLeaf78 = icmp eq i32 %s__state.0, 12292
  br i1 %SwitchLeaf78, label %ssl3_connect_bb34, label %ssl3_connect_NewDefault

ssl3_connect_bb34:                                ; preds = %ssl3_connect_LeafBlock77
  %"89" = add nsw i32 %s__ctx__stats__sess_connect_renegotiate.0, 1
  br label %ssl3_connect_bb35

ssl3_connect_NodeBlock83:                         ; preds = %ssl3_connect_NodeBlock85
  %Pivot84 = icmp slt i32 %s__state.0, 20480
  br i1 %Pivot84, label %ssl3_connect_LeafBlock79, label %ssl3_connect_LeafBlock81

ssl3_connect_LeafBlock79:                         ; preds = %ssl3_connect_NodeBlock83
  %SwitchLeaf80 = icmp eq i32 %s__state.0, 16384
  br i1 %SwitchLeaf80, label %ssl3_connect_bb35, label %ssl3_connect_NewDefault

ssl3_connect_LeafBlock81:                         ; preds = %ssl3_connect_NodeBlock83
  %SwitchLeaf82 = icmp eq i32 %s__state.0, 20480
  br i1 %SwitchLeaf82, label %ssl3_connect_bb35, label %ssl3_connect_NewDefault

ssl3_connect_bb35:                                ; preds = %ssl3_connect_LeafBlock81, %ssl3_connect_LeafBlock79, %ssl3_connect_LeafBlock14, %ssl3_connect_LeafBlock12, %ssl3_connect_bb34
  %s__ctx__stats__sess_connect_renegotiate.4 = phi i32 [ %s__ctx__stats__sess_connect_renegotiate.0, %ssl3_connect_LeafBlock12 ], [ %s__ctx__stats__sess_connect_renegotiate.0, %ssl3_connect_LeafBlock14 ], [ %s__ctx__stats__sess_connect_renegotiate.0, %ssl3_connect_LeafBlock79 ], [ %"89", %ssl3_connect_bb34 ], [ %s__ctx__stats__sess_connect_renegotiate.0, %ssl3_connect_LeafBlock81 ]
  %"90" = sub nsw i32 %"6", 65280
  %"91" = icmp ne i32 %"90", 768
  br i1 %"91", label %ssl3_connect_bb45, label %ssl3_connect_bb36

ssl3_connect_bb36:                                ; preds = %ssl3_connect_bb35
  %"92" = icmp eq i32 %s__init_buf___0.0, 0
  br i1 %"92", label %ssl3_connect_bb37, label %ssl3_connect_bb38

ssl3_connect_bb37:                                ; preds = %ssl3_connect_bb36
  %"93" = call i32 @__VERIFIER_nondet_int()
  %"94" = icmp ne i32 %"93", 0
  %"95" = icmp ne i32 %"24", 0
  %or.cond = and i1 %"94", %"95"
  br i1 %or.cond, label %ssl3_connect_bb38, label %ssl3_connect_bb45

ssl3_connect_bb38:                                ; preds = %ssl3_connect_bb37, %ssl3_connect_bb36
  %s__init_buf___0.1 = phi i32 [ %s__init_buf___0.0, %ssl3_connect_bb36 ], [ %"93", %ssl3_connect_bb37 ]
  %"96" = icmp ne i32 %"25", 0
  %"97" = icmp ne i32 %"26", 0
  %or.cond9 = and i1 %"96", %"97"
  br i1 %or.cond9, label %ssl3_connect_bb39, label %ssl3_connect_bb45

ssl3_connect_bb39:                                ; preds = %ssl3_connect_bb38
  %"98" = add nsw i32 %s__ctx__stats__sess_connect.0, 1
  br label %ssl3_connect_bb40

ssl3_connect_bb40:                                ; preds = %ssl3_connect_bb27, %ssl3_connect_bb7, %ssl3_connect_bb8, %ssl3_connect_bb31, %ssl3_connect_bb30, %ssl3_connect_bb29, %ssl3_connect_bb25, %ssl3_connect_bb22, %ssl3_connect_bb19, %ssl3_connect_bb16, %ssl3_connect_bb13, %ssl3_connect_bb14, %ssl3_connect_bb33, %ssl3_connect_bb24, %ssl3_connect_bb21, %ssl3_connect_bb12, %ssl3_connect_bb10, %ssl3_connect_bb39
  %blastFlag.7 = phi i32 [ %blastFlag.0, %ssl3_connect_bb39 ], [ %.blastFlag.0, %ssl3_connect_bb10 ], [ %.blastFlag.01, %ssl3_connect_bb12 ], [ %.blastFlag.05, %ssl3_connect_bb21 ], [ %blastFlag.0, %ssl3_connect_bb24 ], [ %blastFlag.0, %ssl3_connect_bb33 ], [ %blastFlag.0, %ssl3_connect_bb13 ], [ %.blastFlag.03, %ssl3_connect_bb14 ], [ %.blastFlag.04, %ssl3_connect_bb16 ], [ %blastFlag.0, %ssl3_connect_bb19 ], [ %blastFlag.0, %ssl3_connect_bb22 ], [ %blastFlag.0, %ssl3_connect_bb25 ], [ %blastFlag.0, %ssl3_connect_bb29 ], [ %blastFlag.0, %ssl3_connect_bb30 ], [ %blastFlag.0, %ssl3_connect_bb31 ], [ %blastFlag.0, %ssl3_connect_bb8 ], [ %blastFlag.0, %ssl3_connect_bb7 ], [ %blastFlag.0, %ssl3_connect_bb27 ]
  %skip.2 = phi i32 [ 0, %ssl3_connect_bb39 ], [ 0, %ssl3_connect_bb10 ], [ 0, %ssl3_connect_bb12 ], [ 0, %ssl3_connect_bb21 ], [ 0, %ssl3_connect_bb24 ], [ 0, %ssl3_connect_bb33 ], [ 1, %ssl3_connect_bb13 ], [ 0, %ssl3_connect_bb14 ], [ 0, %ssl3_connect_bb16 ], [ 0, %ssl3_connect_bb19 ], [ 0, %ssl3_connect_bb22 ], [ 0, %ssl3_connect_bb25 ], [ 0, %ssl3_connect_bb29 ], [ 0, %ssl3_connect_bb30 ], [ 0, %ssl3_connect_bb31 ], [ 0, %ssl3_connect_bb8 ], [ 0, %ssl3_connect_bb7 ], [ 0, %ssl3_connect_bb27 ]
  %num1.2 = phi i32 [ %num1.0, %ssl3_connect_bb39 ], [ %num1.0, %ssl3_connect_bb10 ], [ %num1.0, %ssl3_connect_bb12 ], [ %num1.0, %ssl3_connect_bb21 ], [ %num1.0, %ssl3_connect_bb24 ], [ %num1.0, %ssl3_connect_bb33 ], [ %num1.0, %ssl3_connect_bb14 ], [ %num1.0, %ssl3_connect_bb13 ], [ %num1.0, %ssl3_connect_bb16 ], [ %num1.0, %ssl3_connect_bb19 ], [ %num1.0, %ssl3_connect_bb22 ], [ %num1.0, %ssl3_connect_bb25 ], [ %num1.0, %ssl3_connect_bb29 ], [ %num1.0, %ssl3_connect_bb30 ], [ %num1.0, %ssl3_connect_bb31 ], [ %num1.0, %ssl3_connect_bb7 ], [ %"30", %ssl3_connect_bb8 ], [ %num1.0, %ssl3_connect_bb27 ]
  %s__s3__tmp__next_state___0.2 = phi i32 [ %s__s3__tmp__next_state___0.0, %ssl3_connect_bb39 ], [ %s__s3__tmp__next_state___0.0, %ssl3_connect_bb10 ], [ %s__s3__tmp__next_state___0.0, %ssl3_connect_bb12 ], [ %s__s3__tmp__next_state___0.0, %ssl3_connect_bb21 ], [ %s__s3__tmp__next_state___0.0, %ssl3_connect_bb24 ], [ %s__s3__tmp__next_state___0.0, %ssl3_connect_bb33 ], [ %s__s3__tmp__next_state___0.0, %ssl3_connect_bb14 ], [ %s__s3__tmp__next_state___0.0, %ssl3_connect_bb13 ], [ %s__s3__tmp__next_state___0.0, %ssl3_connect_bb16 ], [ %s__s3__tmp__next_state___0.0, %ssl3_connect_bb19 ], [ %s__s3__tmp__next_state___0.0, %ssl3_connect_bb22 ], [ %s__s3__tmp__next_state___0.0, %ssl3_connect_bb25 ], [ 3, %ssl3_connect_bb31 ], [ 3, %ssl3_connect_bb30 ], [ 4560, %ssl3_connect_bb29 ], [ %s__s3__tmp__next_state___0.0, %ssl3_connect_bb8 ], [ %s__s3__tmp__next_state___0.0, %ssl3_connect_bb7 ], [ %s__s3__tmp__next_state___0.0, %ssl3_connect_bb27 ]
  %s__s3__flags.3 = phi i32 [ %s__s3__flags.0, %ssl3_connect_bb39 ], [ %s__s3__flags.0, %ssl3_connect_bb10 ], [ %s__s3__flags.0, %ssl3_connect_bb12 ], [ %s__s3__flags.0, %ssl3_connect_bb21 ], [ %s__s3__flags.0, %ssl3_connect_bb24 ], [ %s__s3__flags.0, %ssl3_connect_bb33 ], [ %s__s3__flags.0, %ssl3_connect_bb14 ], [ %s__s3__flags.0, %ssl3_connect_bb13 ], [ %s__s3__flags.0, %ssl3_connect_bb16 ], [ %s__s3__flags.0, %ssl3_connect_bb19 ], [ %s__s3__flags.0, %ssl3_connect_bb22 ], [ %s__s3__flags.0, %ssl3_connect_bb25 ], [ %"85", %ssl3_connect_bb31 ], [ %"78", %ssl3_connect_bb30 ], [ %"78", %ssl3_connect_bb29 ], [ %s__s3__flags.0, %ssl3_connect_bb8 ], [ %s__s3__flags.0, %ssl3_connect_bb7 ], [ %s__s3__flags.0, %ssl3_connect_bb27 ]
  %s__ctx__stats__sess_connect.1 = phi i32 [ %"98", %ssl3_connect_bb39 ], [ %s__ctx__stats__sess_connect.0, %ssl3_connect_bb10 ], [ %s__ctx__stats__sess_connect.0, %ssl3_connect_bb12 ], [ %s__ctx__stats__sess_connect.0, %ssl3_connect_bb21 ], [ %s__ctx__stats__sess_connect.0, %ssl3_connect_bb24 ], [ %s__ctx__stats__sess_connect.0, %ssl3_connect_bb33 ], [ %s__ctx__stats__sess_connect.0, %ssl3_connect_bb14 ], [ %s__ctx__stats__sess_connect.0, %ssl3_connect_bb13 ], [ %s__ctx__stats__sess_connect.0, %ssl3_connect_bb16 ], [ %s__ctx__stats__sess_connect.0, %ssl3_connect_bb19 ], [ %s__ctx__stats__sess_connect.0, %ssl3_connect_bb22 ], [ %s__ctx__stats__sess_connect.0, %ssl3_connect_bb25 ], [ %s__ctx__stats__sess_connect.0, %ssl3_connect_bb29 ], [ %s__ctx__stats__sess_connect.0, %ssl3_connect_bb30 ], [ %s__ctx__stats__sess_connect.0, %ssl3_connect_bb31 ], [ %s__ctx__stats__sess_connect.0, %ssl3_connect_bb8 ], [ %s__ctx__stats__sess_connect.0, %ssl3_connect_bb7 ], [ %s__ctx__stats__sess_connect.0, %ssl3_connect_bb27 ]
  %s__ctx__stats__sess_connect_renegotiate.5 = phi i32 [ %s__ctx__stats__sess_connect_renegotiate.4, %ssl3_connect_bb39 ], [ %s__ctx__stats__sess_connect_renegotiate.0, %ssl3_connect_bb10 ], [ %s__ctx__stats__sess_connect_renegotiate.0, %ssl3_connect_bb12 ], [ %s__ctx__stats__sess_connect_renegotiate.0, %ssl3_connect_bb21 ], [ %s__ctx__stats__sess_connect_renegotiate.0, %ssl3_connect_bb24 ], [ %s__ctx__stats__sess_connect_renegotiate.0, %ssl3_connect_bb33 ], [ %s__ctx__stats__sess_connect_renegotiate.0, %ssl3_connect_bb14 ], [ %s__ctx__stats__sess_connect_renegotiate.0, %ssl3_connect_bb13 ], [ %s__ctx__stats__sess_connect_renegotiate.0, %ssl3_connect_bb16 ], [ %s__ctx__stats__sess_connect_renegotiate.0, %ssl3_connect_bb19 ], [ %s__ctx__stats__sess_connect_renegotiate.0, %ssl3_connect_bb22 ], [ %s__ctx__stats__sess_connect_renegotiate.0, %ssl3_connect_bb25 ], [ %s__ctx__stats__sess_connect_renegotiate.0, %ssl3_connect_bb29 ], [ %s__ctx__stats__sess_connect_renegotiate.0, %ssl3_connect_bb30 ], [ %s__ctx__stats__sess_connect_renegotiate.0, %ssl3_connect_bb31 ], [ %s__ctx__stats__sess_connect_renegotiate.0, %ssl3_connect_bb8 ], [ %s__ctx__stats__sess_connect_renegotiate.0, %ssl3_connect_bb7 ], [ %s__ctx__stats__sess_connect_renegotiate.0, %ssl3_connect_bb27 ]
  %s__init_buf___0.2 = phi i32 [ %s__init_buf___0.1, %ssl3_connect_bb39 ], [ %s__init_buf___0.0, %ssl3_connect_bb10 ], [ %s__init_buf___0.0, %ssl3_connect_bb12 ], [ %s__init_buf___0.0, %ssl3_connect_bb21 ], [ %s__init_buf___0.0, %ssl3_connect_bb24 ], [ %s__init_buf___0.0, %ssl3_connect_bb33 ], [ %s__init_buf___0.0, %ssl3_connect_bb14 ], [ %s__init_buf___0.0, %ssl3_connect_bb13 ], [ %s__init_buf___0.0, %ssl3_connect_bb16 ], [ %s__init_buf___0.0, %ssl3_connect_bb19 ], [ %s__init_buf___0.0, %ssl3_connect_bb22 ], [ %s__init_buf___0.0, %ssl3_connect_bb25 ], [ %s__init_buf___0.0, %ssl3_connect_bb29 ], [ %s__init_buf___0.0, %ssl3_connect_bb30 ], [ %s__init_buf___0.0, %ssl3_connect_bb31 ], [ %s__init_buf___0.0, %ssl3_connect_bb8 ], [ %s__init_buf___0.0, %ssl3_connect_bb7 ], [ %s__init_buf___0.0, %ssl3_connect_bb27 ]
  %s__state.7 = phi i32 [ 4368, %ssl3_connect_bb39 ], [ 4384, %ssl3_connect_bb10 ], [ %.2, %ssl3_connect_bb12 ], [ %.6, %ssl3_connect_bb21 ], [ %.7, %ssl3_connect_bb24 ], [ %.8, %ssl3_connect_bb33 ], [ 4416, %ssl3_connect_bb14 ], [ 4416, %ssl3_connect_bb13 ], [ 4432, %ssl3_connect_bb16 ], [ 4448, %ssl3_connect_bb19 ], [ 4480, %ssl3_connect_bb22 ], [ 4512, %ssl3_connect_bb25 ], [ 3, %ssl3_connect_bb31 ], [ 4352, %ssl3_connect_bb30 ], [ 4352, %ssl3_connect_bb29 ], [ %s__s3__tmp__next_state___0.0, %ssl3_connect_bb8 ], [ %s__s3__tmp__next_state___0.0, %ssl3_connect_bb7 ], [ 4528, %ssl3_connect_bb27 ]
  %"99" = icmp ne i32 %"18", 0
  %"100" = icmp ne i32 %skip.2, 0
  %or.cond11 = or i1 %"99", %"100"
  br i1 %or.cond11, label %ssl3_connect_bb5, label %ssl3_connect_bb41

ssl3_connect_bb41:                                ; preds = %ssl3_connect_bb40
  %"101" = icmp ne i32 %"10", 0
  br i1 %"101", label %ssl3_connect_bb42, label %ssl3_connect_bb43

ssl3_connect_bb42:                                ; preds = %ssl3_connect_bb41
  %"102" = call i32 @__VERIFIER_nondet_int()
  %"103" = icmp sle i32 %"102", 0
  br i1 %"103", label %ssl3_connect_bb45, label %ssl3_connect_bb43

ssl3_connect_bb43:                                ; preds = %ssl3_connect_bb42, %ssl3_connect_bb41
  %"104" = icmp ne i32 %cb.1, 0
  br i1 %"104", label %ssl3_connect_bb44, label %ssl3_connect_bb5

ssl3_connect_bb44:                                ; preds = %ssl3_connect_bb43
  br label %ssl3_connect_bb5

ssl3_connect_NewDefault:                          ; preds = %ssl3_connect_LeafBlock81, %ssl3_connect_LeafBlock79, %ssl3_connect_LeafBlock77, %ssl3_connect_LeafBlock72, %ssl3_connect_LeafBlock69, %ssl3_connect_LeafBlock60, %ssl3_connect_LeafBlock57, %ssl3_connect_LeafBlock54, %ssl3_connect_LeafBlock49, %ssl3_connect_LeafBlock46, %ssl3_connect_LeafBlock35, %ssl3_connect_LeafBlock32, %ssl3_connect_LeafBlock29, %ssl3_connect_LeafBlock24, %ssl3_connect_LeafBlock22, %ssl3_connect_LeafBlock16, %ssl3_connect_LeafBlock14, %ssl3_connect_LeafBlock12, %ssl3_connect_LeafBlock
  br label %ssl3_connect_bb45

ssl3_connect_bb45:                                ; preds = %ssl3_connect_NewDefault, %ssl3_connect_bb37, %ssl3_connect_bb42, %ssl3_connect_bb8, %ssl3_connect_bb32, %ssl3_connect_bb28, %ssl3_connect_bb27, %ssl3_connect_bb26, %ssl3_connect_bb25, %ssl3_connect_bb23, %ssl3_connect_bb22, %ssl3_connect_bb20, %ssl3_connect_bb19, %ssl3_connect_bb16, %ssl3_connect_bb15, %ssl3_connect_bb14, %ssl3_connect_bb11, %ssl3_connect_bb9, %ssl3_connect_bb38, %ssl3_connect_bb35, %ssl3_connect_bb6
  %ret.0 = phi i32 [ 1, %ssl3_connect_bb6 ], [ -1, %ssl3_connect_bb35 ], [ -1, %ssl3_connect_bb37 ], [ -1, %ssl3_connect_bb38 ], [ %"40", %ssl3_connect_bb9 ], [ %"43", %ssl3_connect_bb11 ], [ %"49", %ssl3_connect_bb14 ], [ %"52", %ssl3_connect_bb15 ], [ -1, %ssl3_connect_bb16 ], [ %"56", %ssl3_connect_bb19 ], [ %"59", %ssl3_connect_bb20 ], [ %"63", %ssl3_connect_bb22 ], [ %"65", %ssl3_connect_bb23 ], [ %"68", %ssl3_connect_bb25 ], [ %"70", %ssl3_connect_bb26 ], [ -1, %ssl3_connect_bb27 ], [ %"74", %ssl3_connect_bb28 ], [ %"86", %ssl3_connect_bb32 ], [ -1, %ssl3_connect_bb8 ], [ -1, %ssl3_connect_NewDefault ], [ %"102", %ssl3_connect_bb42 ]
  ret i32 %ret.0
}

declare i32 @__VERIFIER_nondet_int() #1

; Function Attrs: noreturn
declare void @__VERIFIER_error(...) #2

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb46:
  %"105" = call i32 @__kittel_nondef.0() #4
  %"106" = call i32 @__kittel_nondef.0() #4
  %"107" = call i32 @__kittel_nondef.0() #4
  %"108" = call i32 @__kittel_nondef.0() #4
  %"109" = call i32 @__VERIFIER_nondet_int() #4
  %"110" = call i32 @__VERIFIER_nondet_int() #4
  %"111" = call i32 @__VERIFIER_nondet_int() #4
  %"112" = call i32 @__VERIFIER_nondet_int() #4
  %"113" = call i32 @__VERIFIER_nondet_int() #4
  %"114" = call i32 @__VERIFIER_nondet_int() #4
  %"115" = call i32 @__VERIFIER_nondet_int() #4
  %"116" = call i32 @__VERIFIER_nondet_int() #4
  %"117" = call i32 @__VERIFIER_nondet_int() #4
  %"118" = call i32 @__VERIFIER_nondet_int() #4
  %"119" = call i32 @__VERIFIER_nondet_int() #4
  %"120" = call i32 @__VERIFIER_nondet_int() #4
  %"121" = call i32 @__VERIFIER_nondet_int() #4
  %"122" = call i32 @__VERIFIER_nondet_int() #4
  %"123" = call i32 @__VERIFIER_nondet_int() #4
  %"124" = call i32 @__VERIFIER_nondet_int() #4
  %"125" = call i32 @__VERIFIER_nondet_int() #4
  %"126" = call i32 @__VERIFIER_nondet_int() #4
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
  %"137" = sext i32 %"135" to i64
  br label %main_bb47

main_bb47:                                        ; preds = %main_bb79, %main_bb80, %main_bb46
  %blastFlag.0.i = phi i32 [ 0, %main_bb46 ], [ %blastFlag.7.i, %main_bb79 ], [ %blastFlag.7.i, %main_bb80 ]
  %num1.0.i = phi i32 [ %"108", %main_bb46 ], [ %num1.2.i, %main_bb79 ], [ %num1.2.i, %main_bb80 ]
  %s__s3__tmp__next_state___0.0.i = phi i32 [ %"107", %main_bb46 ], [ %s__s3__tmp__next_state___0.2.i, %main_bb79 ], [ %s__s3__tmp__next_state___0.2.i, %main_bb80 ]
  %s__s3__flags.0.i = phi i32 [ %"106", %main_bb46 ], [ %s__s3__flags.3.i, %main_bb79 ], [ %s__s3__flags.3.i, %main_bb80 ]
  %s__ctx__stats__sess_connect.0.i = phi i32 [ %"118", %main_bb46 ], [ %s__ctx__stats__sess_connect.1.i, %main_bb79 ], [ %s__ctx__stats__sess_connect.1.i, %main_bb80 ]
  %s__ctx__stats__sess_connect_renegotiate.0.i = phi i32 [ %"117", %main_bb46 ], [ %s__ctx__stats__sess_connect_renegotiate.5.i, %main_bb79 ], [ %s__ctx__stats__sess_connect_renegotiate.5.i, %main_bb80 ]
  %s__init_buf___0.0.i = phi i32 [ %"105", %main_bb46 ], [ %s__init_buf___0.2.i, %main_bb79 ], [ %s__init_buf___0.2.i, %main_bb80 ]
  %s__state.0.i = phi i32 [ 12292, %main_bb46 ], [ %s__state.7.i, %main_bb79 ], [ %s__state.7.i, %main_bb80 ]
  %Pivot92.i = icmp slt i32 %s__state.0.i, 4448
  br i1 %Pivot92.i, label %main_NodeBlock44.i, label %main_NodeBlock89.i

main_NodeBlock44.i:                               ; preds = %main_bb47
  %Pivot45.i = icmp slt i32 %s__state.0.i, 4368
  br i1 %Pivot45.i, label %main_NodeBlock20.i, label %main_NodeBlock42.i

main_NodeBlock20.i:                               ; preds = %main_NodeBlock44.i
  %Pivot21.i = icmp slt i32 %s__state.0.i, 4099
  br i1 %Pivot21.i, label %main_NodeBlock.i, label %main_NodeBlock18.i

main_NodeBlock.i:                                 ; preds = %main_NodeBlock20.i
  %Pivot.i = icmp slt i32 %s__state.0.i, 4096
  br i1 %Pivot.i, label %main_LeafBlock.i, label %main_LeafBlock12.i

main_LeafBlock.i:                                 ; preds = %main_NodeBlock.i
  ret i32 0

main_LeafBlock12.i:                               ; preds = %main_NodeBlock.i
  %SwitchLeaf13.i = icmp eq i32 %s__state.0.i, 4096
  br i1 %SwitchLeaf13.i, label %main_bb74, label %main_ssl3_connect.exit

main_NodeBlock18.i:                               ; preds = %main_NodeBlock20.i
  %Pivot19.i = icmp slt i32 %s__state.0.i, 4352
  br i1 %Pivot19.i, label %main_LeafBlock14.i, label %main_LeafBlock16.i

main_LeafBlock14.i:                               ; preds = %main_NodeBlock18.i
  %SwitchLeaf15.i = icmp eq i32 %s__state.0.i, 4099
  br i1 %SwitchLeaf15.i, label %main_bb74, label %main_ssl3_connect.exit

main_LeafBlock16.i:                               ; preds = %main_NodeBlock18.i
  %SwitchLeaf17.i = icmp eq i32 %s__state.0.i, 4352
  br i1 %SwitchLeaf17.i, label %main_bb48, label %main_ssl3_connect.exit

main_bb48:                                        ; preds = %main_LeafBlock16.i
  %"138" = sext i32 %num1.0.i to i64
  %"139" = icmp sgt i64 %"138", 0
  br i1 %"139", label %main_bb49, label %main_bb79

main_bb49:                                        ; preds = %main_bb48
  %"140" = icmp sle i64 %"137", 0
  br i1 %"140", label %main_ssl3_connect.exit, label %main_bb79

main_NodeBlock42.i:                               ; preds = %main_NodeBlock44.i
  %Pivot43.i = icmp slt i32 %s__state.0.i, 4400
  br i1 %Pivot43.i, label %main_NodeBlock27.i, label %main_NodeBlock40.i

main_NodeBlock27.i:                               ; preds = %main_NodeBlock42.i
  %Pivot28.i = icmp slt i32 %s__state.0.i, 4384
  br i1 %Pivot28.i, label %main_LeafBlock22.i, label %main_LeafBlock24.i

main_LeafBlock22.i:                               ; preds = %main_NodeBlock27.i
  %s__state.0.off.i = add i32 %s__state.0.i, -4368
  %SwitchLeaf23.i = icmp ule i32 %s__state.0.off.i, 1
  br i1 %SwitchLeaf23.i, label %main_bb50, label %main_ssl3_connect.exit

main_bb50:                                        ; preds = %main_LeafBlock22.i
  %"141" = call i32 @__VERIFIER_nondet_int() #4
  %"142" = icmp eq i32 %blastFlag.0.i, 0
  %.blastFlag.0.i = select i1 %"142", i32 1, i32 %blastFlag.0.i
  %"143" = icmp sle i32 %"141", 0
  br i1 %"143", label %main_ssl3_connect.exit, label %main_bb79

main_LeafBlock24.i:                               ; preds = %main_NodeBlock27.i
  %s__state.0.off25.i = add i32 %s__state.0.i, -4384
  %SwitchLeaf26.i = icmp ule i32 %s__state.0.off25.i, 1
  br i1 %SwitchLeaf26.i, label %main_bb51, label %main_ssl3_connect.exit

main_bb51:                                        ; preds = %main_LeafBlock24.i
  %"144" = call i32 @__VERIFIER_nondet_int() #4
  %"145" = icmp eq i32 %blastFlag.0.i, 1
  %.blastFlag.01.i = select i1 %"145", i32 2, i32 %blastFlag.0.i
  %"146" = icmp sle i32 %"144", 0
  br i1 %"146", label %main_ssl3_connect.exit, label %main_bb52

main_bb52:                                        ; preds = %main_bb51
  %"147" = icmp ne i32 %"114", 0
  %.2.i = select i1 %"147", i32 4560, i32 4400
  br label %main_bb79

main_NodeBlock40.i:                               ; preds = %main_NodeBlock42.i
  %Pivot41.i = icmp slt i32 %s__state.0.i, 4416
  br i1 %Pivot41.i, label %main_LeafBlock29.i, label %main_NodeBlock38.i

main_LeafBlock29.i:                               ; preds = %main_NodeBlock40.i
  %s__state.0.off30.i = add i32 %s__state.0.i, -4400
  %SwitchLeaf31.i = icmp ule i32 %s__state.0.off30.i, 1
  br i1 %SwitchLeaf31.i, label %main_bb53, label %main_ssl3_connect.exit

main_bb53:                                        ; preds = %main_LeafBlock29.i
  %"148" = sub nsw i32 %"125", 256
  %"149" = icmp ne i32 %"148", 0
  br i1 %"149", label %main_bb79, label %main_bb54

main_bb54:                                        ; preds = %main_bb53
  %"150" = call i32 @__VERIFIER_nondet_int() #4
  %"151" = icmp eq i32 %blastFlag.0.i, 2
  %.blastFlag.03.i = select i1 %"151", i32 3, i32 %blastFlag.0.i
  %"152" = icmp sle i32 %"150", 0
  br i1 %"152", label %main_ssl3_connect.exit, label %main_bb79

main_NodeBlock38.i:                               ; preds = %main_NodeBlock40.i
  %Pivot39.i = icmp slt i32 %s__state.0.i, 4432
  br i1 %Pivot39.i, label %main_LeafBlock32.i, label %main_LeafBlock35.i

main_LeafBlock32.i:                               ; preds = %main_NodeBlock38.i
  %s__state.0.off33.i = add i32 %s__state.0.i, -4416
  %SwitchLeaf34.i = icmp ule i32 %s__state.0.off33.i, 1
  br i1 %SwitchLeaf34.i, label %main_bb55, label %main_ssl3_connect.exit

main_bb55:                                        ; preds = %main_LeafBlock32.i
  %"153" = call i32 @__VERIFIER_nondet_int() #4
  %"154" = icmp eq i32 %blastFlag.0.i, 3
  %.blastFlag.04.i = select i1 %"154", i32 4, i32 %blastFlag.0.i
  %"155" = icmp sgt i32 %"153", 0
  %"156" = icmp ne i32 %"132", 0
  %or.cond = and i1 %"155", %"156"
  br i1 %or.cond, label %main_bb79, label %main_ssl3_connect.exit

main_LeafBlock35.i:                               ; preds = %main_NodeBlock38.i
  %s__state.0.off36.i = add i32 %s__state.0.i, -4432
  %SwitchLeaf37.i = icmp ule i32 %s__state.0.off36.i, 1
  br i1 %SwitchLeaf37.i, label %main_bb56, label %main_ssl3_connect.exit

main_bb56:                                        ; preds = %main_LeafBlock35.i
  %"157" = call i32 @__VERIFIER_nondet_int() #4
  %"158" = icmp eq i32 %blastFlag.0.i, 4
  br i1 %"158", label %main_bb57, label %main_bb58

main_bb57:                                        ; preds = %main_bb56
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_bb58:                                        ; preds = %main_bb56
  %"159" = icmp sle i32 %"157", 0
  br i1 %"159", label %main_ssl3_connect.exit, label %main_bb79

main_NodeBlock89.i:                               ; preds = %main_bb47
  %Pivot90.i = icmp slt i32 %s__state.0.i, 4528
  br i1 %Pivot90.i, label %main_NodeBlock67.i, label %main_NodeBlock87.i

main_NodeBlock67.i:                               ; preds = %main_NodeBlock89.i
  %Pivot68.i = icmp slt i32 %s__state.0.i, 4480
  br i1 %Pivot68.i, label %main_NodeBlock52.i, label %main_NodeBlock65.i

main_NodeBlock52.i:                               ; preds = %main_NodeBlock67.i
  %Pivot53.i = icmp slt i32 %s__state.0.i, 4464
  br i1 %Pivot53.i, label %main_LeafBlock46.i, label %main_LeafBlock49.i

main_LeafBlock46.i:                               ; preds = %main_NodeBlock52.i
  %s__state.0.off47.i = add i32 %s__state.0.i, -4448
  %SwitchLeaf48.i = icmp ule i32 %s__state.0.off47.i, 1
  br i1 %SwitchLeaf48.i, label %main_bb59, label %main_ssl3_connect.exit

main_bb59:                                        ; preds = %main_LeafBlock46.i
  %"160" = call i32 @__VERIFIER_nondet_int() #4
  %"161" = icmp eq i32 %blastFlag.0.i, 4
  %.blastFlag.05.i = select i1 %"161", i32 5, i32 %blastFlag.0.i
  %"162" = icmp sle i32 %"160", 0
  br i1 %"162", label %main_ssl3_connect.exit, label %main_bb60

main_bb60:                                        ; preds = %main_bb59
  %"163" = icmp ne i32 %"121", 0
  %.6.i = select i1 %"163", i32 4464, i32 4480
  br label %main_bb79

main_LeafBlock49.i:                               ; preds = %main_NodeBlock52.i
  %s__state.0.off50.i = add i32 %s__state.0.i, -4464
  %SwitchLeaf51.i = icmp ule i32 %s__state.0.off50.i, 3
  br i1 %SwitchLeaf51.i, label %main_bb61, label %main_ssl3_connect.exit

main_bb61:                                        ; preds = %main_LeafBlock49.i
  %"164" = call i32 @__VERIFIER_nondet_int() #4
  %"165" = icmp sle i32 %"164", 0
  br i1 %"165", label %main_ssl3_connect.exit, label %main_bb79

main_NodeBlock65.i:                               ; preds = %main_NodeBlock67.i
  %Pivot66.i = icmp slt i32 %s__state.0.i, 4496
  br i1 %Pivot66.i, label %main_LeafBlock54.i, label %main_NodeBlock63.i

main_LeafBlock54.i:                               ; preds = %main_NodeBlock65.i
  %s__state.0.off55.i = add i32 %s__state.0.i, -4480
  %SwitchLeaf56.i = icmp ule i32 %s__state.0.off55.i, 1
  br i1 %SwitchLeaf56.i, label %main_bb62, label %main_ssl3_connect.exit

main_bb62:                                        ; preds = %main_LeafBlock54.i
  %"166" = call i32 @__VERIFIER_nondet_int() #4
  %"167" = icmp sle i32 %"166", 0
  br i1 %"167", label %main_ssl3_connect.exit, label %main_bb63

main_bb63:                                        ; preds = %main_bb62
  %"168" = icmp eq i32 %"121", 1
  %.7.i = select i1 %"168", i32 4496, i32 4512
  br label %main_bb79

main_NodeBlock63.i:                               ; preds = %main_NodeBlock65.i
  %Pivot64.i = icmp slt i32 %s__state.0.i, 4512
  br i1 %Pivot64.i, label %main_LeafBlock57.i, label %main_LeafBlock60.i

main_LeafBlock57.i:                               ; preds = %main_NodeBlock63.i
  %s__state.0.off58.i = add i32 %s__state.0.i, -4496
  %SwitchLeaf59.i = icmp ule i32 %s__state.0.off58.i, 1
  br i1 %SwitchLeaf59.i, label %main_bb64, label %main_ssl3_connect.exit

main_bb64:                                        ; preds = %main_LeafBlock57.i
  %"169" = call i32 @__VERIFIER_nondet_int() #4
  %"170" = icmp sle i32 %"169", 0
  br i1 %"170", label %main_ssl3_connect.exit, label %main_bb79

main_LeafBlock60.i:                               ; preds = %main_NodeBlock63.i
  %s__state.0.off61.i = add i32 %s__state.0.i, -4512
  %SwitchLeaf62.i = icmp ule i32 %s__state.0.off61.i, 1
  br i1 %SwitchLeaf62.i, label %main_bb65, label %main_ssl3_connect.exit

main_bb65:                                        ; preds = %main_LeafBlock60.i
  %"171" = call i32 @__VERIFIER_nondet_int() #4
  %"172" = icmp sle i32 %"171", 0
  br i1 %"172", label %main_ssl3_connect.exit, label %main_bb66

main_bb66:                                        ; preds = %main_bb65
  %"173" = icmp ne i32 %"133", 0
  %"174" = icmp ne i32 %"134", 0
  %or.cond10.i = and i1 %"173", %"174"
  br i1 %or.cond10.i, label %main_bb79, label %main_ssl3_connect.exit

main_NodeBlock87.i:                               ; preds = %main_NodeBlock89.i
  %Pivot88.i = icmp slt i32 %s__state.0.i, 12292
  br i1 %Pivot88.i, label %main_NodeBlock75.i, label %main_NodeBlock85.i

main_NodeBlock75.i:                               ; preds = %main_NodeBlock87.i
  %Pivot76.i = icmp slt i32 %s__state.0.i, 4560
  br i1 %Pivot76.i, label %main_LeafBlock69.i, label %main_LeafBlock72.i

main_LeafBlock69.i:                               ; preds = %main_NodeBlock75.i
  %s__state.0.off70.i = add i32 %s__state.0.i, -4528
  %SwitchLeaf71.i = icmp ule i32 %s__state.0.off70.i, 1
  br i1 %SwitchLeaf71.i, label %main_bb67, label %main_ssl3_connect.exit

main_bb67:                                        ; preds = %main_LeafBlock69.i
  %"175" = call i32 @__VERIFIER_nondet_int() #4
  %"176" = icmp sle i32 %"175", 0
  br i1 %"176", label %main_ssl3_connect.exit, label %main_bb68

main_bb68:                                        ; preds = %main_bb67
  %"177" = sext i32 %s__s3__flags.0.i to i64
  %"178" = add nsw i64 %"177", 5
  %"179" = trunc i64 %"178" to i32
  %"180" = icmp ne i32 %"114", 0
  br i1 %"180", label %main_bb69, label %main_bb79

main_bb69:                                        ; preds = %main_bb68
  %"181" = sext i32 %"179" to i64
  %"182" = sub nsw i64 %"181", 2
  %"183" = icmp ne i64 %"182", 0
  br i1 %"183", label %main_bb70, label %main_bb79

main_bb70:                                        ; preds = %main_bb69
  %"184" = sext i32 %"179" to i64
  %"185" = add nsw i64 %"184", 4
  %"186" = trunc i64 %"185" to i32
  br label %main_bb79

main_LeafBlock72.i:                               ; preds = %main_NodeBlock75.i
  %s__state.0.off73.i = add i32 %s__state.0.i, -4560
  %SwitchLeaf74.i = icmp ule i32 %s__state.0.off73.i, 1
  br i1 %SwitchLeaf74.i, label %main_bb71, label %main_ssl3_connect.exit

main_bb71:                                        ; preds = %main_LeafBlock72.i
  %"187" = call i32 @__VERIFIER_nondet_int() #4
  %"188" = icmp sle i32 %"187", 0
  br i1 %"188", label %main_ssl3_connect.exit, label %main_bb72

main_bb72:                                        ; preds = %main_bb71
  %"189" = icmp ne i32 %"114", 0
  %.8.i = select i1 %"189", i32 4512, i32 3
  br label %main_bb79

main_NodeBlock85.i:                               ; preds = %main_NodeBlock87.i
  %Pivot86.i = icmp slt i32 %s__state.0.i, 16384
  br i1 %Pivot86.i, label %main_LeafBlock77.i, label %main_NodeBlock83.i

main_LeafBlock77.i:                               ; preds = %main_NodeBlock85.i
  %SwitchLeaf78.i = icmp eq i32 %s__state.0.i, 12292
  br i1 %SwitchLeaf78.i, label %main_bb73, label %main_ssl3_connect.exit

main_bb73:                                        ; preds = %main_LeafBlock77.i
  %"190" = add nsw i32 %s__ctx__stats__sess_connect_renegotiate.0.i, 1
  br label %main_bb74

main_NodeBlock83.i:                               ; preds = %main_NodeBlock85.i
  %Pivot84.i = icmp slt i32 %s__state.0.i, 20480
  br i1 %Pivot84.i, label %main_LeafBlock79.i, label %main_LeafBlock81.i

main_LeafBlock79.i:                               ; preds = %main_NodeBlock83.i
  %SwitchLeaf80.i = icmp eq i32 %s__state.0.i, 16384
  br i1 %SwitchLeaf80.i, label %main_bb74, label %main_ssl3_connect.exit

main_LeafBlock81.i:                               ; preds = %main_NodeBlock83.i
  %SwitchLeaf82.i = icmp eq i32 %s__state.0.i, 20480
  br i1 %SwitchLeaf82.i, label %main_bb74, label %main_ssl3_connect.exit

main_bb74:                                        ; preds = %main_LeafBlock81.i, %main_LeafBlock79.i, %main_bb73, %main_LeafBlock14.i, %main_LeafBlock12.i
  %s__ctx__stats__sess_connect_renegotiate.4.i = phi i32 [ %s__ctx__stats__sess_connect_renegotiate.0.i, %main_LeafBlock12.i ], [ %s__ctx__stats__sess_connect_renegotiate.0.i, %main_LeafBlock14.i ], [ %s__ctx__stats__sess_connect_renegotiate.0.i, %main_LeafBlock79.i ], [ %"190", %main_bb73 ], [ %s__ctx__stats__sess_connect_renegotiate.0.i, %main_LeafBlock81.i ]
  %"191" = sub nsw i32 %"111", 65280
  %"192" = icmp ne i32 %"191", 768
  br i1 %"192", label %main_ssl3_connect.exit, label %main_bb75

main_bb75:                                        ; preds = %main_bb74
  %"193" = icmp eq i32 %s__init_buf___0.0.i, 0
  br i1 %"193", label %main_bb76, label %main_bb77

main_bb76:                                        ; preds = %main_bb75
  %"194" = call i32 @__VERIFIER_nondet_int() #4
  %"195" = icmp ne i32 %"194", 0
  %"196" = icmp ne i32 %"129", 0
  %or.cond.i = and i1 %"195", %"196"
  br i1 %or.cond.i, label %main_bb77, label %main_ssl3_connect.exit

main_bb77:                                        ; preds = %main_bb76, %main_bb75
  %s__init_buf___0.1.i = phi i32 [ %s__init_buf___0.0.i, %main_bb75 ], [ %"194", %main_bb76 ]
  %"197" = icmp ne i32 %"130", 0
  %"198" = icmp ne i32 %"131", 0
  %or.cond9.i = and i1 %"197", %"198"
  br i1 %or.cond9.i, label %main_bb78, label %main_ssl3_connect.exit

main_bb78:                                        ; preds = %main_bb77
  %"199" = add nsw i32 %s__ctx__stats__sess_connect.0.i, 1
  br label %main_bb79

main_bb79:                                        ; preds = %main_bb55, %main_bb50, %main_bb78, %main_bb72, %main_bb70, %main_bb69, %main_bb68, %main_bb66, %main_bb64, %main_bb63, %main_bb61, %main_bb60, %main_bb58, %main_bb54, %main_bb53, %main_bb52, %main_bb49, %main_bb48
  %blastFlag.7.i = phi i32 [ %blastFlag.0.i, %main_bb78 ], [ %.blastFlag.01.i, %main_bb52 ], [ %.blastFlag.05.i, %main_bb60 ], [ %blastFlag.0.i, %main_bb63 ], [ %blastFlag.0.i, %main_bb72 ], [ %blastFlag.0.i, %main_bb53 ], [ %.blastFlag.03.i, %main_bb54 ], [ %blastFlag.0.i, %main_bb58 ], [ %blastFlag.0.i, %main_bb61 ], [ %blastFlag.0.i, %main_bb64 ], [ %blastFlag.0.i, %main_bb68 ], [ %blastFlag.0.i, %main_bb69 ], [ %blastFlag.0.i, %main_bb70 ], [ %blastFlag.0.i, %main_bb49 ], [ %blastFlag.0.i, %main_bb48 ], [ %blastFlag.0.i, %main_bb66 ], [ %.blastFlag.0.i, %main_bb50 ], [ %.blastFlag.04.i, %main_bb55 ]
  %skip.2.i = phi i32 [ 0, %main_bb78 ], [ 0, %main_bb52 ], [ 0, %main_bb60 ], [ 0, %main_bb63 ], [ 0, %main_bb72 ], [ 1, %main_bb53 ], [ 0, %main_bb54 ], [ 0, %main_bb58 ], [ 0, %main_bb61 ], [ 0, %main_bb64 ], [ 0, %main_bb68 ], [ 0, %main_bb69 ], [ 0, %main_bb70 ], [ 0, %main_bb49 ], [ 0, %main_bb48 ], [ 0, %main_bb66 ], [ 0, %main_bb50 ], [ 0, %main_bb55 ]
  %num1.2.i = phi i32 [ %num1.0.i, %main_bb78 ], [ %num1.0.i, %main_bb52 ], [ %num1.0.i, %main_bb60 ], [ %num1.0.i, %main_bb63 ], [ %num1.0.i, %main_bb72 ], [ %num1.0.i, %main_bb54 ], [ %num1.0.i, %main_bb53 ], [ %num1.0.i, %main_bb58 ], [ %num1.0.i, %main_bb61 ], [ %num1.0.i, %main_bb64 ], [ %num1.0.i, %main_bb68 ], [ %num1.0.i, %main_bb69 ], [ %num1.0.i, %main_bb70 ], [ %num1.0.i, %main_bb48 ], [ %"135", %main_bb49 ], [ %num1.0.i, %main_bb66 ], [ %num1.0.i, %main_bb50 ], [ %num1.0.i, %main_bb55 ]
  %s__s3__tmp__next_state___0.2.i = phi i32 [ %s__s3__tmp__next_state___0.0.i, %main_bb78 ], [ %s__s3__tmp__next_state___0.0.i, %main_bb52 ], [ %s__s3__tmp__next_state___0.0.i, %main_bb60 ], [ %s__s3__tmp__next_state___0.0.i, %main_bb63 ], [ %s__s3__tmp__next_state___0.0.i, %main_bb72 ], [ %s__s3__tmp__next_state___0.0.i, %main_bb54 ], [ %s__s3__tmp__next_state___0.0.i, %main_bb53 ], [ %s__s3__tmp__next_state___0.0.i, %main_bb58 ], [ %s__s3__tmp__next_state___0.0.i, %main_bb61 ], [ %s__s3__tmp__next_state___0.0.i, %main_bb64 ], [ 3, %main_bb70 ], [ 3, %main_bb69 ], [ 4560, %main_bb68 ], [ %s__s3__tmp__next_state___0.0.i, %main_bb49 ], [ %s__s3__tmp__next_state___0.0.i, %main_bb48 ], [ %s__s3__tmp__next_state___0.0.i, %main_bb66 ], [ %s__s3__tmp__next_state___0.0.i, %main_bb50 ], [ %s__s3__tmp__next_state___0.0.i, %main_bb55 ]
  %s__s3__flags.3.i = phi i32 [ %s__s3__flags.0.i, %main_bb78 ], [ %s__s3__flags.0.i, %main_bb52 ], [ %s__s3__flags.0.i, %main_bb60 ], [ %s__s3__flags.0.i, %main_bb63 ], [ %s__s3__flags.0.i, %main_bb72 ], [ %s__s3__flags.0.i, %main_bb54 ], [ %s__s3__flags.0.i, %main_bb53 ], [ %s__s3__flags.0.i, %main_bb58 ], [ %s__s3__flags.0.i, %main_bb61 ], [ %s__s3__flags.0.i, %main_bb64 ], [ %"186", %main_bb70 ], [ %"179", %main_bb69 ], [ %"179", %main_bb68 ], [ %s__s3__flags.0.i, %main_bb49 ], [ %s__s3__flags.0.i, %main_bb48 ], [ %s__s3__flags.0.i, %main_bb66 ], [ %s__s3__flags.0.i, %main_bb50 ], [ %s__s3__flags.0.i, %main_bb55 ]
  %s__ctx__stats__sess_connect.1.i = phi i32 [ %"199", %main_bb78 ], [ %s__ctx__stats__sess_connect.0.i, %main_bb52 ], [ %s__ctx__stats__sess_connect.0.i, %main_bb60 ], [ %s__ctx__stats__sess_connect.0.i, %main_bb63 ], [ %s__ctx__stats__sess_connect.0.i, %main_bb72 ], [ %s__ctx__stats__sess_connect.0.i, %main_bb54 ], [ %s__ctx__stats__sess_connect.0.i, %main_bb53 ], [ %s__ctx__stats__sess_connect.0.i, %main_bb58 ], [ %s__ctx__stats__sess_connect.0.i, %main_bb61 ], [ %s__ctx__stats__sess_connect.0.i, %main_bb64 ], [ %s__ctx__stats__sess_connect.0.i, %main_bb68 ], [ %s__ctx__stats__sess_connect.0.i, %main_bb69 ], [ %s__ctx__stats__sess_connect.0.i, %main_bb70 ], [ %s__ctx__stats__sess_connect.0.i, %main_bb49 ], [ %s__ctx__stats__sess_connect.0.i, %main_bb48 ], [ %s__ctx__stats__sess_connect.0.i, %main_bb66 ], [ %s__ctx__stats__sess_connect.0.i, %main_bb50 ], [ %s__ctx__stats__sess_connect.0.i, %main_bb55 ]
  %s__ctx__stats__sess_connect_renegotiate.5.i = phi i32 [ %s__ctx__stats__sess_connect_renegotiate.4.i, %main_bb78 ], [ %s__ctx__stats__sess_connect_renegotiate.0.i, %main_bb52 ], [ %s__ctx__stats__sess_connect_renegotiate.0.i, %main_bb60 ], [ %s__ctx__stats__sess_connect_renegotiate.0.i, %main_bb63 ], [ %s__ctx__stats__sess_connect_renegotiate.0.i, %main_bb72 ], [ %s__ctx__stats__sess_connect_renegotiate.0.i, %main_bb54 ], [ %s__ctx__stats__sess_connect_renegotiate.0.i, %main_bb53 ], [ %s__ctx__stats__sess_connect_renegotiate.0.i, %main_bb58 ], [ %s__ctx__stats__sess_connect_renegotiate.0.i, %main_bb61 ], [ %s__ctx__stats__sess_connect_renegotiate.0.i, %main_bb64 ], [ %s__ctx__stats__sess_connect_renegotiate.0.i, %main_bb68 ], [ %s__ctx__stats__sess_connect_renegotiate.0.i, %main_bb69 ], [ %s__ctx__stats__sess_connect_renegotiate.0.i, %main_bb70 ], [ %s__ctx__stats__sess_connect_renegotiate.0.i, %main_bb49 ], [ %s__ctx__stats__sess_connect_renegotiate.0.i, %main_bb48 ], [ %s__ctx__stats__sess_connect_renegotiate.0.i, %main_bb66 ], [ %s__ctx__stats__sess_connect_renegotiate.0.i, %main_bb50 ], [ %s__ctx__stats__sess_connect_renegotiate.0.i, %main_bb55 ]
  %s__init_buf___0.2.i = phi i32 [ %s__init_buf___0.1.i, %main_bb78 ], [ %s__init_buf___0.0.i, %main_bb52 ], [ %s__init_buf___0.0.i, %main_bb60 ], [ %s__init_buf___0.0.i, %main_bb63 ], [ %s__init_buf___0.0.i, %main_bb72 ], [ %s__init_buf___0.0.i, %main_bb54 ], [ %s__init_buf___0.0.i, %main_bb53 ], [ %s__init_buf___0.0.i, %main_bb58 ], [ %s__init_buf___0.0.i, %main_bb61 ], [ %s__init_buf___0.0.i, %main_bb64 ], [ %s__init_buf___0.0.i, %main_bb68 ], [ %s__init_buf___0.0.i, %main_bb69 ], [ %s__init_buf___0.0.i, %main_bb70 ], [ %s__init_buf___0.0.i, %main_bb49 ], [ %s__init_buf___0.0.i, %main_bb48 ], [ %s__init_buf___0.0.i, %main_bb66 ], [ %s__init_buf___0.0.i, %main_bb50 ], [ %s__init_buf___0.0.i, %main_bb55 ]
  %s__state.7.i = phi i32 [ 4368, %main_bb78 ], [ %.2.i, %main_bb52 ], [ %.6.i, %main_bb60 ], [ %.7.i, %main_bb63 ], [ %.8.i, %main_bb72 ], [ 4416, %main_bb54 ], [ 4416, %main_bb53 ], [ 4448, %main_bb58 ], [ 4480, %main_bb61 ], [ 4512, %main_bb64 ], [ 3, %main_bb70 ], [ 4352, %main_bb69 ], [ 4352, %main_bb68 ], [ %s__s3__tmp__next_state___0.0.i, %main_bb49 ], [ %s__s3__tmp__next_state___0.0.i, %main_bb48 ], [ 4528, %main_bb66 ], [ 4384, %main_bb50 ], [ 4432, %main_bb55 ]
  %"200" = icmp ne i32 %"123", 0
  %"201" = icmp ne i32 %skip.2.i, 0
  %or.cond11.i = or i1 %"200", %"201"
  %or.cond11.i.not = xor i1 %or.cond11.i, true
  %"202" = icmp ne i32 %"115", 0
  %or.cond1 = and i1 %or.cond11.i.not, %"202"
  br i1 %or.cond1, label %main_bb80, label %main_bb47

main_bb80:                                        ; preds = %main_bb79
  %"203" = call i32 @__VERIFIER_nondet_int() #4
  %"204" = icmp sle i32 %"203", 0
  br i1 %"204", label %main_ssl3_connect.exit, label %main_bb47

main_ssl3_connect.exit:                           ; preds = %main_LeafBlock12.i, %main_LeafBlock14.i, %main_LeafBlock16.i, %main_LeafBlock22.i, %main_LeafBlock24.i, %main_LeafBlock29.i, %main_LeafBlock32.i, %main_LeafBlock35.i, %main_LeafBlock46.i, %main_LeafBlock49.i, %main_LeafBlock54.i, %main_LeafBlock57.i, %main_LeafBlock60.i, %main_LeafBlock69.i, %main_LeafBlock72.i, %main_LeafBlock77.i, %main_LeafBlock79.i, %main_LeafBlock81.i, %main_bb55, %main_bb49, %main_bb50, %main_bb51, %main_bb54, %main_bb58, %main_bb59, %main_bb61, %main_bb62, %main_bb64, %main_bb65, %main_bb66, %main_bb67, %main_bb71, %main_bb74, %main_bb76, %main_bb77, %main_bb80
  ret i32 0
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

