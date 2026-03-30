; ModuleID = 'Benchmarks/TermCOMP/C/SV-COMP_Mixed_Categories/kbfiltr_simpl1_true-unreach-call_true-termination.cil/kbfiltr_simpl1_true-unreach-call_true-termination.cil.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"'NP" = common global i32 0, align 4
@"'s" = common global i32 0, align 4
@"'pended" = common global i32 0, align 4
@"'compFptr" = common global i32 0, align 4
@"'compRegistered" = common global i32 0, align 4
@"'lowerDriverReturn" = common global i32 0, align 4
@"'setEventCalled" = common global i32 0, align 4
@"'customIrp" = common global i32 0, align 4
@"'UNLOADED" = common global i32 0, align 4
@"'DC" = common global i32 0, align 4
@"'SKIP1" = common global i32 0, align 4
@"'SKIP2" = common global i32 0, align 4
@"'MPR1" = common global i32 0, align 4
@"'MPR3" = common global i32 0, align 4
@"'IPC" = common global i32 0, align 4
@"'Executive" = common global i32 0, align 4
@"'KernelMode" = common global i32 0, align 4
@"'myStatus" = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define void @stub_driver_init() #0 {
stub_driver_init_bb0:
  %"0" = load i32* @"'NP", align 4
  store i32 %"0", i32* @"'s", align 4
  store i32 0, i32* @"'pended", align 4
  store i32 0, i32* @"'compFptr", align 4
  store i32 0, i32* @"'compRegistered", align 4
  store i32 0, i32* @"'lowerDriverReturn", align 4
  store i32 0, i32* @"'setEventCalled", align 4
  store i32 0, i32* @"'customIrp", align 4
  ret void
}

; Function Attrs: nounwind uwtable
define void @_BLAST_init() #0 {
_BLAST_init_bb1:
  store i32 0, i32* @"'UNLOADED", align 4
  store i32 1, i32* @"'NP", align 4
  store i32 2, i32* @"'DC", align 4
  store i32 3, i32* @"'SKIP1", align 4
  store i32 4, i32* @"'SKIP2", align 4
  store i32 5, i32* @"'MPR1", align 4
  store i32 6, i32* @"'MPR3", align 4
  store i32 7, i32* @"'IPC", align 4
  %"1" = load i32* @"'UNLOADED", align 4
  store i32 %"1", i32* @"'s", align 4
  store i32 0, i32* @"'pended", align 4
  store i32 0, i32* @"'compFptr", align 4
  store i32 0, i32* @"'compRegistered", align 4
  store i32 0, i32* @"'lowerDriverReturn", align 4
  store i32 0, i32* @"'setEventCalled", align 4
  store i32 0, i32* @"'customIrp", align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @KbFilter_PnP(i32 %DeviceObject, i32 %Irp) #0 {
KbFilter_PnP_bb2:
  %"2" = call i32 @__VERIFIER_nondet_int()
  %"3" = call i32 @__VERIFIER_nondet_int()
  %"4" = call i32 @__VERIFIER_nondet_int()
  %"5" = call i32 @__VERIFIER_nondet_int()
  %"6" = call i32 @__VERIFIER_nondet_int()
  %"7" = call i32 @__VERIFIER_nondet_int()
  br label %KbFilter_PnP_NodeBlock21

KbFilter_PnP_NodeBlock21:                         ; preds = %KbFilter_PnP_bb2
  %Pivot22 = icmp slt i32 %"5", 2
  br i1 %Pivot22, label %KbFilter_PnP_LeafBlock, label %KbFilter_PnP_NodeBlock

KbFilter_PnP_LeafBlock:                           ; preds = %KbFilter_PnP_NodeBlock21
  %SwitchLeaf = icmp eq i32 %"5", 0
  br i1 %SwitchLeaf, label %KbFilter_PnP_bb3, label %KbFilter_PnP_NewDefault

KbFilter_PnP_bb3:                                 ; preds = %KbFilter_PnP_LeafBlock
  %"8" = load i32* @"'s", align 4
  %"9" = load i32* @"'NP", align 4
  %"10" = icmp ne i32 %"8", %"9"
  br i1 %"10", label %KbFilter_PnP_bb4, label %KbFilter_PnP_bb5

KbFilter_PnP_bb4:                                 ; preds = %KbFilter_PnP_bb3
  call void (...)* @__VERIFIER_error() #3
  unreachable

KbFilter_PnP_bb5:                                 ; preds = %KbFilter_PnP_bb3
  %"11" = load i32* @"'compRegistered", align 4
  %"12" = icmp ne i32 %"11", 0
  br i1 %"12", label %KbFilter_PnP_bb6, label %KbFilter_PnP_bb7

KbFilter_PnP_bb6:                                 ; preds = %KbFilter_PnP_bb5
  call void (...)* @__VERIFIER_error() #3
  unreachable

KbFilter_PnP_bb7:                                 ; preds = %KbFilter_PnP_bb5
  store i32 1, i32* @"'compRegistered", align 4
  %"13" = call i32 @__VERIFIER_nondet_int() #4
  %"14" = load i32* @"'compRegistered", align 4
  %"15" = icmp ne i32 %"14", 0
  br i1 %"15", label %KbFilter_PnP_bb8, label %KbFilter_PnP_bb10

KbFilter_PnP_bb8:                                 ; preds = %KbFilter_PnP_bb7
  %"16" = call i32 @__VERIFIER_nondet_int() #4
  store i32 1, i32* @"'setEventCalled", align 4
  %"17" = load i32* @"'s", align 4
  %"18" = load i32* @"'NP", align 4
  %"19" = icmp eq i32 %"17", %"18"
  br i1 %"19", label %KbFilter_PnP_stubMoreProcessingRequired.exit.i, label %KbFilter_PnP_bb9

KbFilter_PnP_stubMoreProcessingRequired.exit.i:   ; preds = %KbFilter_PnP_bb8
  %"20" = load i32* @"'MPR1", align 4
  store i32 %"20", i32* @"'s", align 4
  br label %KbFilter_PnP_bb10

KbFilter_PnP_bb9:                                 ; preds = %KbFilter_PnP_bb8
  call void (...)* @__VERIFIER_error() #3
  unreachable

KbFilter_PnP_bb10:                                ; preds = %KbFilter_PnP_stubMoreProcessingRequired.exit.i, %KbFilter_PnP_bb7
  %"21" = call i32 @__VERIFIER_nondet_int() #4
  %"22" = icmp eq i32 %"21", 0
  br i1 %"22", label %KbFilter_PnP_bb12, label %KbFilter_PnP_bb11

KbFilter_PnP_bb11:                                ; preds = %KbFilter_PnP_bb10
  %"23" = call i32 @__VERIFIER_nondet_int() #4
  %"24" = icmp eq i32 %"23", 1
  %..i = select i1 %"24", i32 -1073741823, i32 259
  br label %KbFilter_PnP_bb12

KbFilter_PnP_bb12:                                ; preds = %KbFilter_PnP_bb11, %KbFilter_PnP_bb10
  %returnVal2.0.i = phi i32 [ 0, %KbFilter_PnP_bb10 ], [ %..i, %KbFilter_PnP_bb11 ]
  %"25" = load i32* @"'s", align 4
  %"26" = load i32* @"'NP", align 4
  %"27" = icmp eq i32 %"25", %"26"
  br i1 %"27", label %KbFilter_PnP_bb13, label %KbFilter_PnP_bb14

KbFilter_PnP_bb13:                                ; preds = %KbFilter_PnP_bb12
  %"28" = load i32* @"'IPC", align 4
  store i32 %"28", i32* @"'s", align 4
  store i32 %returnVal2.0.i, i32* @"'lowerDriverReturn", align 4
  br label %KbFilter_PnP_IofCallDriver.exit

KbFilter_PnP_bb14:                                ; preds = %KbFilter_PnP_bb12
  %"29" = load i32* @"'s", align 4
  %"30" = load i32* @"'MPR1", align 4
  %"31" = icmp eq i32 %"29", %"30"
  br i1 %"31", label %KbFilter_PnP_bb15, label %KbFilter_PnP_bb18

KbFilter_PnP_bb15:                                ; preds = %KbFilter_PnP_bb14
  %"32" = icmp eq i32 %returnVal2.0.i, 259
  br i1 %"32", label %KbFilter_PnP_bb16, label %KbFilter_PnP_bb17

KbFilter_PnP_bb16:                                ; preds = %KbFilter_PnP_bb15
  %"33" = load i32* @"'MPR3", align 4
  store i32 %"33", i32* @"'s", align 4
  store i32 %returnVal2.0.i, i32* @"'lowerDriverReturn", align 4
  br label %KbFilter_PnP_IofCallDriver.exit

KbFilter_PnP_bb17:                                ; preds = %KbFilter_PnP_bb15
  %"34" = load i32* @"'NP", align 4
  store i32 %"34", i32* @"'s", align 4
  store i32 %returnVal2.0.i, i32* @"'lowerDriverReturn", align 4
  br label %KbFilter_PnP_IofCallDriver.exit

KbFilter_PnP_bb18:                                ; preds = %KbFilter_PnP_bb14
  %"35" = load i32* @"'s", align 4
  %"36" = load i32* @"'SKIP1", align 4
  %"37" = icmp eq i32 %"35", %"36"
  br i1 %"37", label %KbFilter_PnP_bb19, label %KbFilter_PnP_bb30

KbFilter_PnP_bb19:                                ; preds = %KbFilter_PnP_bb18
  %"38" = load i32* @"'SKIP2", align 4
  store i32 %"38", i32* @"'s", align 4
  store i32 %returnVal2.0.i, i32* @"'lowerDriverReturn", align 4
  br label %KbFilter_PnP_IofCallDriver.exit

KbFilter_PnP_IofCallDriver.exit:                  ; preds = %KbFilter_PnP_bb13, %KbFilter_PnP_bb16, %KbFilter_PnP_bb17, %KbFilter_PnP_bb19
  %"39" = sext i32 %returnVal2.0.i to i64
  %"40" = icmp eq i64 %"39", 259
  br i1 %"40", label %KbFilter_PnP_bb20, label %KbFilter_PnP_bb26

KbFilter_PnP_bb20:                                ; preds = %KbFilter_PnP_IofCallDriver.exit
  %"41" = load i32* @"'s", align 4
  %"42" = load i32* @"'MPR3", align 4
  %"43" = icmp eq i32 %"41", %"42"
  %"44" = load i32* @"'setEventCalled", align 4
  %"45" = icmp eq i32 %"44", 1
  %or.cond.i = and i1 %"43", %"45"
  br i1 %or.cond.i, label %KbFilter_PnP_bb21, label %KbFilter_PnP_bb22

KbFilter_PnP_bb21:                                ; preds = %KbFilter_PnP_bb20
  %"46" = load i32* @"'NP", align 4
  store i32 %"46", i32* @"'s", align 4
  store i32 0, i32* @"'setEventCalled", align 4
  br label %KbFilter_PnP_KeWaitForSingleObject.exit

KbFilter_PnP_bb22:                                ; preds = %KbFilter_PnP_bb20
  %"47" = load i32* @"'customIrp", align 4
  %"48" = icmp eq i32 %"47", 1
  br i1 %"48", label %KbFilter_PnP_bb23, label %KbFilter_PnP_bb24

KbFilter_PnP_bb23:                                ; preds = %KbFilter_PnP_bb22
  %"49" = load i32* @"'NP", align 4
  store i32 %"49", i32* @"'s", align 4
  store i32 0, i32* @"'customIrp", align 4
  br label %KbFilter_PnP_KeWaitForSingleObject.exit

KbFilter_PnP_bb24:                                ; preds = %KbFilter_PnP_bb22
  %"50" = load i32* @"'s", align 4
  %"51" = load i32* @"'MPR3", align 4
  %"52" = icmp eq i32 %"50", %"51"
  br i1 %"52", label %KbFilter_PnP_bb25, label %KbFilter_PnP_KeWaitForSingleObject.exit

KbFilter_PnP_bb25:                                ; preds = %KbFilter_PnP_bb24
  call void (...)* @__VERIFIER_error() #3
  unreachable

KbFilter_PnP_KeWaitForSingleObject.exit:          ; preds = %KbFilter_PnP_bb21, %KbFilter_PnP_bb23, %KbFilter_PnP_bb24
  %"53" = call i32 @__VERIFIER_nondet_int() #4
  br label %KbFilter_PnP_bb26

KbFilter_PnP_bb26:                                ; preds = %KbFilter_PnP_KeWaitForSingleObject.exit, %KbFilter_PnP_IofCallDriver.exit
  %"54" = icmp sge i32 %returnVal2.0.i, 0
  br i1 %"54", label %KbFilter_PnP_bb27, label %KbFilter_PnP_bb28

KbFilter_PnP_bb27:                                ; preds = %KbFilter_PnP_bb26
  br label %KbFilter_PnP_bb28

KbFilter_PnP_bb28:                                ; preds = %KbFilter_PnP_bb27, %KbFilter_PnP_bb26
  store i32 %returnVal2.0.i, i32* @"'myStatus", align 4
  %"55" = load i32* @"'s", align 4
  %"56" = load i32* @"'NP", align 4
  %"57" = icmp eq i32 %"55", %"56"
  br i1 %"57", label %KbFilter_PnP_IofCompleteRequest.exit, label %KbFilter_PnP_bb29

KbFilter_PnP_IofCompleteRequest.exit:             ; preds = %KbFilter_PnP_bb28
  %"58" = load i32* @"'DC", align 4
  store i32 %"58", i32* @"'s", align 4
  br label %KbFilter_PnP_IofCallDriver.exit6

KbFilter_PnP_bb29:                                ; preds = %KbFilter_PnP_bb28
  call void (...)* @__VERIFIER_error() #3
  unreachable

KbFilter_PnP_bb30:                                ; preds = %KbFilter_PnP_bb18
  call void (...)* @__VERIFIER_error() #3
  unreachable

KbFilter_PnP_NodeBlock:                           ; preds = %KbFilter_PnP_NodeBlock21
  %Pivot = icmp slt i32 %"5", 23
  br i1 %Pivot, label %KbFilter_PnP_LeafBlock17, label %KbFilter_PnP_LeafBlock19

KbFilter_PnP_LeafBlock17:                         ; preds = %KbFilter_PnP_NodeBlock
  %SwitchLeaf18 = icmp eq i32 %"5", 2
  br i1 %SwitchLeaf18, label %KbFilter_PnP_bb31, label %KbFilter_PnP_NewDefault

KbFilter_PnP_bb31:                                ; preds = %KbFilter_PnP_LeafBlock17
  %"59" = load i32* @"'s", align 4
  %"60" = load i32* @"'NP", align 4
  %"61" = icmp eq i32 %"59", %"60"
  br i1 %"61", label %KbFilter_PnP_bb32, label %KbFilter_PnP_bb46

KbFilter_PnP_bb32:                                ; preds = %KbFilter_PnP_bb31
  %"62" = load i32* @"'SKIP1", align 4
  store i32 %"62", i32* @"'s", align 4
  %"63" = call i32 @__VERIFIER_nondet_int() #4
  %"64" = load i32* @"'compRegistered", align 4
  %"65" = icmp ne i32 %"64", 0
  br i1 %"65", label %KbFilter_PnP_bb33, label %KbFilter_PnP_bb35

KbFilter_PnP_bb33:                                ; preds = %KbFilter_PnP_bb32
  %"66" = call i32 @__VERIFIER_nondet_int() #4
  store i32 1, i32* @"'setEventCalled", align 4
  %"67" = load i32* @"'s", align 4
  %"68" = load i32* @"'NP", align 4
  %"69" = icmp eq i32 %"67", %"68"
  br i1 %"69", label %KbFilter_PnP_stubMoreProcessingRequired.exit.i8, label %KbFilter_PnP_bb34

KbFilter_PnP_stubMoreProcessingRequired.exit.i8:  ; preds = %KbFilter_PnP_bb33
  %"70" = load i32* @"'MPR1", align 4
  store i32 %"70", i32* @"'s", align 4
  br label %KbFilter_PnP_bb35

KbFilter_PnP_bb34:                                ; preds = %KbFilter_PnP_bb33
  call void (...)* @__VERIFIER_error() #3
  unreachable

KbFilter_PnP_bb35:                                ; preds = %KbFilter_PnP_stubMoreProcessingRequired.exit.i8, %KbFilter_PnP_bb32
  %"71" = call i32 @__VERIFIER_nondet_int() #4
  %"72" = icmp eq i32 %"71", 0
  br i1 %"72", label %KbFilter_PnP_bb37, label %KbFilter_PnP_bb36

KbFilter_PnP_bb36:                                ; preds = %KbFilter_PnP_bb35
  %"73" = call i32 @__VERIFIER_nondet_int() #4
  %"74" = icmp eq i32 %"73", 1
  %..i9 = select i1 %"74", i32 -1073741823, i32 259
  br label %KbFilter_PnP_bb37

KbFilter_PnP_bb37:                                ; preds = %KbFilter_PnP_bb36, %KbFilter_PnP_bb35
  %returnVal2.0.i10 = phi i32 [ 0, %KbFilter_PnP_bb35 ], [ %..i9, %KbFilter_PnP_bb36 ]
  %"75" = load i32* @"'s", align 4
  %"76" = load i32* @"'NP", align 4
  %"77" = icmp eq i32 %"75", %"76"
  br i1 %"77", label %KbFilter_PnP_bb38, label %KbFilter_PnP_bb39

KbFilter_PnP_bb38:                                ; preds = %KbFilter_PnP_bb37
  %"78" = load i32* @"'IPC", align 4
  store i32 %"78", i32* @"'s", align 4
  store i32 %returnVal2.0.i10, i32* @"'lowerDriverReturn", align 4
  br label %KbFilter_PnP_IofCallDriver.exit6

KbFilter_PnP_bb39:                                ; preds = %KbFilter_PnP_bb37
  %"79" = load i32* @"'s", align 4
  %"80" = load i32* @"'MPR1", align 4
  %"81" = icmp eq i32 %"79", %"80"
  br i1 %"81", label %KbFilter_PnP_bb40, label %KbFilter_PnP_bb43

KbFilter_PnP_bb40:                                ; preds = %KbFilter_PnP_bb39
  %"82" = icmp eq i32 %returnVal2.0.i10, 259
  br i1 %"82", label %KbFilter_PnP_bb41, label %KbFilter_PnP_bb42

KbFilter_PnP_bb41:                                ; preds = %KbFilter_PnP_bb40
  %"83" = load i32* @"'MPR3", align 4
  store i32 %"83", i32* @"'s", align 4
  store i32 %returnVal2.0.i10, i32* @"'lowerDriverReturn", align 4
  br label %KbFilter_PnP_IofCallDriver.exit6

KbFilter_PnP_bb42:                                ; preds = %KbFilter_PnP_bb40
  %"84" = load i32* @"'NP", align 4
  store i32 %"84", i32* @"'s", align 4
  store i32 %returnVal2.0.i10, i32* @"'lowerDriverReturn", align 4
  br label %KbFilter_PnP_IofCallDriver.exit6

KbFilter_PnP_bb43:                                ; preds = %KbFilter_PnP_bb39
  %"85" = load i32* @"'s", align 4
  %"86" = load i32* @"'SKIP1", align 4
  %"87" = icmp eq i32 %"85", %"86"
  br i1 %"87", label %KbFilter_PnP_bb44, label %KbFilter_PnP_bb45

KbFilter_PnP_bb44:                                ; preds = %KbFilter_PnP_bb43
  %"88" = load i32* @"'SKIP2", align 4
  store i32 %"88", i32* @"'s", align 4
  store i32 %returnVal2.0.i10, i32* @"'lowerDriverReturn", align 4
  br label %KbFilter_PnP_IofCallDriver.exit6

KbFilter_PnP_bb45:                                ; preds = %KbFilter_PnP_bb43
  call void (...)* @__VERIFIER_error() #3
  unreachable

KbFilter_PnP_bb46:                                ; preds = %KbFilter_PnP_bb31
  call void (...)* @__VERIFIER_error() #3
  unreachable

KbFilter_PnP_LeafBlock19:                         ; preds = %KbFilter_PnP_NodeBlock
  %SwitchLeaf20 = icmp eq i32 %"5", 23
  br i1 %SwitchLeaf20, label %KbFilter_PnP_bb47, label %KbFilter_PnP_NewDefault

KbFilter_PnP_bb47:                                ; preds = %KbFilter_PnP_LeafBlock19
  %"89" = load i32* @"'s", align 4
  %"90" = load i32* @"'NP", align 4
  %"91" = icmp eq i32 %"89", %"90"
  br i1 %"91", label %KbFilter_PnP_bb48, label %KbFilter_PnP_bb62

KbFilter_PnP_bb48:                                ; preds = %KbFilter_PnP_bb47
  %"92" = load i32* @"'SKIP1", align 4
  store i32 %"92", i32* @"'s", align 4
  %"93" = call i32 @__VERIFIER_nondet_int() #4
  %"94" = load i32* @"'compRegistered", align 4
  %"95" = icmp ne i32 %"94", 0
  br i1 %"95", label %KbFilter_PnP_bb49, label %KbFilter_PnP_bb51

KbFilter_PnP_bb49:                                ; preds = %KbFilter_PnP_bb48
  %"96" = call i32 @__VERIFIER_nondet_int() #4
  store i32 1, i32* @"'setEventCalled", align 4
  %"97" = load i32* @"'s", align 4
  %"98" = load i32* @"'NP", align 4
  %"99" = icmp eq i32 %"97", %"98"
  br i1 %"99", label %KbFilter_PnP_stubMoreProcessingRequired.exit.i3, label %KbFilter_PnP_bb50

KbFilter_PnP_stubMoreProcessingRequired.exit.i3:  ; preds = %KbFilter_PnP_bb49
  %"100" = load i32* @"'MPR1", align 4
  store i32 %"100", i32* @"'s", align 4
  br label %KbFilter_PnP_bb51

KbFilter_PnP_bb50:                                ; preds = %KbFilter_PnP_bb49
  call void (...)* @__VERIFIER_error() #3
  unreachable

KbFilter_PnP_bb51:                                ; preds = %KbFilter_PnP_stubMoreProcessingRequired.exit.i3, %KbFilter_PnP_bb48
  %"101" = call i32 @__VERIFIER_nondet_int() #4
  %"102" = icmp eq i32 %"101", 0
  br i1 %"102", label %KbFilter_PnP_bb53, label %KbFilter_PnP_bb52

KbFilter_PnP_bb52:                                ; preds = %KbFilter_PnP_bb51
  %"103" = call i32 @__VERIFIER_nondet_int() #4
  %"104" = icmp eq i32 %"103", 1
  %..i4 = select i1 %"104", i32 -1073741823, i32 259
  br label %KbFilter_PnP_bb53

KbFilter_PnP_bb53:                                ; preds = %KbFilter_PnP_bb52, %KbFilter_PnP_bb51
  %returnVal2.0.i5 = phi i32 [ 0, %KbFilter_PnP_bb51 ], [ %..i4, %KbFilter_PnP_bb52 ]
  %"105" = load i32* @"'s", align 4
  %"106" = load i32* @"'NP", align 4
  %"107" = icmp eq i32 %"105", %"106"
  br i1 %"107", label %KbFilter_PnP_bb54, label %KbFilter_PnP_bb55

KbFilter_PnP_bb54:                                ; preds = %KbFilter_PnP_bb53
  %"108" = load i32* @"'IPC", align 4
  store i32 %"108", i32* @"'s", align 4
  store i32 %returnVal2.0.i5, i32* @"'lowerDriverReturn", align 4
  br label %KbFilter_PnP_IofCallDriver.exit6

KbFilter_PnP_bb55:                                ; preds = %KbFilter_PnP_bb53
  %"109" = load i32* @"'s", align 4
  %"110" = load i32* @"'MPR1", align 4
  %"111" = icmp eq i32 %"109", %"110"
  br i1 %"111", label %KbFilter_PnP_bb56, label %KbFilter_PnP_bb59

KbFilter_PnP_bb56:                                ; preds = %KbFilter_PnP_bb55
  %"112" = icmp eq i32 %returnVal2.0.i5, 259
  br i1 %"112", label %KbFilter_PnP_bb57, label %KbFilter_PnP_bb58

KbFilter_PnP_bb57:                                ; preds = %KbFilter_PnP_bb56
  %"113" = load i32* @"'MPR3", align 4
  store i32 %"113", i32* @"'s", align 4
  store i32 %returnVal2.0.i5, i32* @"'lowerDriverReturn", align 4
  br label %KbFilter_PnP_IofCallDriver.exit6

KbFilter_PnP_bb58:                                ; preds = %KbFilter_PnP_bb56
  %"114" = load i32* @"'NP", align 4
  store i32 %"114", i32* @"'s", align 4
  store i32 %returnVal2.0.i5, i32* @"'lowerDriverReturn", align 4
  br label %KbFilter_PnP_IofCallDriver.exit6

KbFilter_PnP_bb59:                                ; preds = %KbFilter_PnP_bb55
  %"115" = load i32* @"'s", align 4
  %"116" = load i32* @"'SKIP1", align 4
  %"117" = icmp eq i32 %"115", %"116"
  br i1 %"117", label %KbFilter_PnP_bb60, label %KbFilter_PnP_bb61

KbFilter_PnP_bb60:                                ; preds = %KbFilter_PnP_bb59
  %"118" = load i32* @"'SKIP2", align 4
  store i32 %"118", i32* @"'s", align 4
  store i32 %returnVal2.0.i5, i32* @"'lowerDriverReturn", align 4
  br label %KbFilter_PnP_IofCallDriver.exit6

KbFilter_PnP_bb61:                                ; preds = %KbFilter_PnP_bb59
  call void (...)* @__VERIFIER_error() #3
  unreachable

KbFilter_PnP_bb62:                                ; preds = %KbFilter_PnP_bb47
  call void (...)* @__VERIFIER_error() #3
  unreachable

KbFilter_PnP_NewDefault:                          ; preds = %KbFilter_PnP_LeafBlock19, %KbFilter_PnP_LeafBlock17, %KbFilter_PnP_LeafBlock
  br label %KbFilter_PnP_bb63

KbFilter_PnP_bb63:                                ; preds = %KbFilter_PnP_NewDefault
  %"119" = load i32* @"'s", align 4
  %"120" = load i32* @"'NP", align 4
  %"121" = icmp eq i32 %"119", %"120"
  br i1 %"121", label %KbFilter_PnP_bb64, label %KbFilter_PnP_bb78

KbFilter_PnP_bb64:                                ; preds = %KbFilter_PnP_bb63
  %"122" = load i32* @"'SKIP1", align 4
  store i32 %"122", i32* @"'s", align 4
  %"123" = call i32 @__VERIFIER_nondet_int() #4
  %"124" = load i32* @"'compRegistered", align 4
  %"125" = icmp ne i32 %"124", 0
  br i1 %"125", label %KbFilter_PnP_bb65, label %KbFilter_PnP_bb67

KbFilter_PnP_bb65:                                ; preds = %KbFilter_PnP_bb64
  %"126" = call i32 @__VERIFIER_nondet_int() #4
  store i32 1, i32* @"'setEventCalled", align 4
  %"127" = load i32* @"'s", align 4
  %"128" = load i32* @"'NP", align 4
  %"129" = icmp eq i32 %"127", %"128"
  br i1 %"129", label %KbFilter_PnP_stubMoreProcessingRequired.exit.i13, label %KbFilter_PnP_bb66

KbFilter_PnP_stubMoreProcessingRequired.exit.i13: ; preds = %KbFilter_PnP_bb65
  %"130" = load i32* @"'MPR1", align 4
  store i32 %"130", i32* @"'s", align 4
  br label %KbFilter_PnP_bb67

KbFilter_PnP_bb66:                                ; preds = %KbFilter_PnP_bb65
  call void (...)* @__VERIFIER_error() #3
  unreachable

KbFilter_PnP_bb67:                                ; preds = %KbFilter_PnP_stubMoreProcessingRequired.exit.i13, %KbFilter_PnP_bb64
  %"131" = call i32 @__VERIFIER_nondet_int() #4
  %"132" = icmp eq i32 %"131", 0
  br i1 %"132", label %KbFilter_PnP_bb69, label %KbFilter_PnP_bb68

KbFilter_PnP_bb68:                                ; preds = %KbFilter_PnP_bb67
  %"133" = call i32 @__VERIFIER_nondet_int() #4
  %"134" = icmp eq i32 %"133", 1
  %..i14 = select i1 %"134", i32 -1073741823, i32 259
  br label %KbFilter_PnP_bb69

KbFilter_PnP_bb69:                                ; preds = %KbFilter_PnP_bb68, %KbFilter_PnP_bb67
  %returnVal2.0.i15 = phi i32 [ 0, %KbFilter_PnP_bb67 ], [ %..i14, %KbFilter_PnP_bb68 ]
  %"135" = load i32* @"'s", align 4
  %"136" = load i32* @"'NP", align 4
  %"137" = icmp eq i32 %"135", %"136"
  br i1 %"137", label %KbFilter_PnP_bb70, label %KbFilter_PnP_bb71

KbFilter_PnP_bb70:                                ; preds = %KbFilter_PnP_bb69
  %"138" = load i32* @"'IPC", align 4
  store i32 %"138", i32* @"'s", align 4
  store i32 %returnVal2.0.i15, i32* @"'lowerDriverReturn", align 4
  br label %KbFilter_PnP_IofCallDriver.exit6

KbFilter_PnP_bb71:                                ; preds = %KbFilter_PnP_bb69
  %"139" = load i32* @"'s", align 4
  %"140" = load i32* @"'MPR1", align 4
  %"141" = icmp eq i32 %"139", %"140"
  br i1 %"141", label %KbFilter_PnP_bb72, label %KbFilter_PnP_bb75

KbFilter_PnP_bb72:                                ; preds = %KbFilter_PnP_bb71
  %"142" = icmp eq i32 %returnVal2.0.i15, 259
  br i1 %"142", label %KbFilter_PnP_bb73, label %KbFilter_PnP_bb74

KbFilter_PnP_bb73:                                ; preds = %KbFilter_PnP_bb72
  %"143" = load i32* @"'MPR3", align 4
  store i32 %"143", i32* @"'s", align 4
  store i32 %returnVal2.0.i15, i32* @"'lowerDriverReturn", align 4
  br label %KbFilter_PnP_IofCallDriver.exit6

KbFilter_PnP_bb74:                                ; preds = %KbFilter_PnP_bb72
  %"144" = load i32* @"'NP", align 4
  store i32 %"144", i32* @"'s", align 4
  store i32 %returnVal2.0.i15, i32* @"'lowerDriverReturn", align 4
  br label %KbFilter_PnP_IofCallDriver.exit6

KbFilter_PnP_bb75:                                ; preds = %KbFilter_PnP_bb71
  %"145" = load i32* @"'s", align 4
  %"146" = load i32* @"'SKIP1", align 4
  %"147" = icmp eq i32 %"145", %"146"
  br i1 %"147", label %KbFilter_PnP_bb76, label %KbFilter_PnP_bb77

KbFilter_PnP_bb76:                                ; preds = %KbFilter_PnP_bb75
  %"148" = load i32* @"'SKIP2", align 4
  store i32 %"148", i32* @"'s", align 4
  store i32 %returnVal2.0.i15, i32* @"'lowerDriverReturn", align 4
  br label %KbFilter_PnP_IofCallDriver.exit6

KbFilter_PnP_IofCallDriver.exit6:                 ; preds = %KbFilter_PnP_bb76, %KbFilter_PnP_bb74, %KbFilter_PnP_bb73, %KbFilter_PnP_bb70, %KbFilter_PnP_bb44, %KbFilter_PnP_bb42, %KbFilter_PnP_bb41, %KbFilter_PnP_bb38, %KbFilter_PnP_bb60, %KbFilter_PnP_bb58, %KbFilter_PnP_bb57, %KbFilter_PnP_bb54, %KbFilter_PnP_IofCompleteRequest.exit
  %status.0 = phi i32 [ %returnVal2.0.i, %KbFilter_PnP_IofCompleteRequest.exit ], [ %returnVal2.0.i5, %KbFilter_PnP_bb54 ], [ %returnVal2.0.i5, %KbFilter_PnP_bb57 ], [ %returnVal2.0.i5, %KbFilter_PnP_bb58 ], [ %returnVal2.0.i5, %KbFilter_PnP_bb60 ], [ 0, %KbFilter_PnP_bb38 ], [ 0, %KbFilter_PnP_bb41 ], [ 0, %KbFilter_PnP_bb42 ], [ 0, %KbFilter_PnP_bb44 ], [ %returnVal2.0.i15, %KbFilter_PnP_bb70 ], [ %returnVal2.0.i15, %KbFilter_PnP_bb73 ], [ %returnVal2.0.i15, %KbFilter_PnP_bb74 ], [ %returnVal2.0.i15, %KbFilter_PnP_bb76 ]
  ret i32 %status.0

KbFilter_PnP_bb77:                                ; preds = %KbFilter_PnP_bb75
  call void (...)* @__VERIFIER_error() #3
  unreachable

KbFilter_PnP_bb78:                                ; preds = %KbFilter_PnP_bb63
  call void (...)* @__VERIFIER_error() #3
  unreachable
}

declare i32 @__VERIFIER_nondet_int() #1

; Function Attrs: nounwind uwtable
define void @errorFn() #0 {
errorFn_bb79:
  call void (...)* @__VERIFIER_error() #5
  unreachable
}

; Function Attrs: nounwind uwtable
define void @IofCompleteRequest(i32 %Irp, i32 %PriorityBoost) #0 {
IofCompleteRequest_bb80:
  %"149" = load i32* @"'s", align 4
  %"150" = load i32* @"'NP", align 4
  %"151" = icmp eq i32 %"149", %"150"
  br i1 %"151", label %IofCompleteRequest_bb81, label %IofCompleteRequest_bb82

IofCompleteRequest_bb81:                          ; preds = %IofCompleteRequest_bb80
  %"152" = load i32* @"'DC", align 4
  store i32 %"152", i32* @"'s", align 4
  ret void

IofCompleteRequest_bb82:                          ; preds = %IofCompleteRequest_bb80
  call void (...)* @__VERIFIER_error() #3
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb83:
  %"153" = call i32 @__VERIFIER_nondet_int()
  %"154" = call i32 @__VERIFIER_nondet_int()
  %"155" = call i32 @__VERIFIER_nondet_int()
  store i32 0, i32* @"'KernelMode", align 4
  store i32 0, i32* @"'Executive", align 4
  store i32 0, i32* @"'s", align 4
  store i32 0, i32* @"'UNLOADED", align 4
  store i32 0, i32* @"'NP", align 4
  store i32 0, i32* @"'DC", align 4
  store i32 0, i32* @"'SKIP1", align 4
  store i32 0, i32* @"'SKIP2", align 4
  store i32 0, i32* @"'MPR1", align 4
  store i32 0, i32* @"'MPR3", align 4
  store i32 0, i32* @"'IPC", align 4
  store i32 0, i32* @"'pended", align 4
  store i32 0, i32* @"'compFptr", align 4
  store i32 0, i32* @"'compRegistered", align 4
  store i32 0, i32* @"'lowerDriverReturn", align 4
  store i32 0, i32* @"'setEventCalled", align 4
  store i32 0, i32* @"'customIrp", align 4
  store i32 0, i32* @"'myStatus", align 4
  store i32 0, i32* @"'UNLOADED", align 4
  store i32 1, i32* @"'NP", align 4
  store i32 2, i32* @"'DC", align 4
  store i32 3, i32* @"'SKIP1", align 4
  store i32 4, i32* @"'SKIP2", align 4
  store i32 5, i32* @"'MPR1", align 4
  store i32 6, i32* @"'MPR3", align 4
  store i32 7, i32* @"'IPC", align 4
  %"156" = load i32* @"'UNLOADED", align 4
  store i32 %"156", i32* @"'s", align 4
  store i32 0, i32* @"'pended", align 4
  store i32 0, i32* @"'compFptr", align 4
  store i32 0, i32* @"'compRegistered", align 4
  store i32 0, i32* @"'lowerDriverReturn", align 4
  store i32 0, i32* @"'setEventCalled", align 4
  store i32 0, i32* @"'customIrp", align 4
  %"157" = icmp sge i32 0, 0
  br i1 %"157", label %main_bb84, label %main_KbFilter_PnP.exit

main_bb84:                                        ; preds = %main_bb83
  %"158" = load i32* @"'NP", align 4
  store i32 %"158", i32* @"'s", align 4
  store i32 0, i32* @"'customIrp", align 4
  %"159" = load i32* @"'customIrp", align 4
  store i32 %"159", i32* @"'setEventCalled", align 4
  %"160" = load i32* @"'setEventCalled", align 4
  store i32 %"160", i32* @"'lowerDriverReturn", align 4
  %"161" = load i32* @"'lowerDriverReturn", align 4
  store i32 %"161", i32* @"'compRegistered", align 4
  %"162" = load i32* @"'compRegistered", align 4
  store i32 %"162", i32* @"'pended", align 4
  store i32 0, i32* @"'myStatus", align 4
  %"163" = icmp eq i32 %"154", 0
  %. = select i1 %"163", i32 -1073741637, i32 0
  store i32 %., i32* @"'myStatus", align 4
  %"164" = load i32* @"'NP", align 4
  store i32 %"164", i32* @"'s", align 4
  store i32 0, i32* @"'pended", align 4
  store i32 0, i32* @"'compFptr", align 4
  store i32 0, i32* @"'compRegistered", align 4
  store i32 0, i32* @"'lowerDriverReturn", align 4
  store i32 0, i32* @"'setEventCalled", align 4
  store i32 0, i32* @"'customIrp", align 4
  %"165" = icmp sge i32 0, 0
  %__cil_tmp8.0 = select i1 %"165", i32 1, i32 0
  %"166" = icmp ne i32 %__cil_tmp8.0, 0
  br i1 %"166", label %main_bb85, label %main_bb175

main_bb85:                                        ; preds = %main_bb84
  %"167" = call i32 @__VERIFIER_nondet_int()
  %"168" = icmp eq i32 %"167", 3
  br i1 %"168", label %main_bb86, label %main_bb175

main_bb86:                                        ; preds = %main_bb85
  %"169" = call i32 @__VERIFIER_nondet_int() #4
  %"170" = call i32 @__VERIFIER_nondet_int() #4
  %"171" = call i32 @__VERIFIER_nondet_int() #4
  %"172" = call i32 @__VERIFIER_nondet_int() #4
  %"173" = call i32 @__VERIFIER_nondet_int() #4
  %"174" = call i32 @__VERIFIER_nondet_int() #4
  %Pivot22.i = icmp slt i32 %"172", 2
  br i1 %Pivot22.i, label %main_LeafBlock.i, label %main_NodeBlock.i

main_LeafBlock.i:                                 ; preds = %main_bb86
  %SwitchLeaf.i = icmp eq i32 %"172", 0
  br i1 %SwitchLeaf.i, label %main_bb87, label %main_NewDefault.i

main_bb87:                                        ; preds = %main_LeafBlock.i
  %"175" = load i32* @"'s", align 4
  %"176" = load i32* @"'NP", align 4
  %"177" = icmp ne i32 %"175", %"176"
  br i1 %"177", label %main_bb88, label %main_bb89

main_bb88:                                        ; preds = %main_bb87
  call void (...)* @__VERIFIER_error() #3
  unreachable

main_bb89:                                        ; preds = %main_bb87
  %"178" = load i32* @"'compRegistered", align 4
  %"179" = icmp ne i32 %"178", 0
  br i1 %"179", label %main_bb90, label %main_bb91

main_bb90:                                        ; preds = %main_bb89
  call void (...)* @__VERIFIER_error() #3
  unreachable

main_bb91:                                        ; preds = %main_bb89
  store i32 1, i32* @"'compRegistered", align 4
  %"180" = call i32 @__VERIFIER_nondet_int() #4
  %"181" = load i32* @"'compRegistered", align 4
  %"182" = icmp ne i32 %"181", 0
  br i1 %"182", label %main_bb92, label %main_bb94

main_bb92:                                        ; preds = %main_bb91
  %"183" = call i32 @__VERIFIER_nondet_int() #4
  store i32 1, i32* @"'setEventCalled", align 4
  %"184" = load i32* @"'s", align 4
  %"185" = load i32* @"'NP", align 4
  %"186" = icmp eq i32 %"184", %"185"
  br i1 %"186", label %main_stubMoreProcessingRequired.exit.i.i, label %main_bb93

main_stubMoreProcessingRequired.exit.i.i:         ; preds = %main_bb92
  %"187" = load i32* @"'MPR1", align 4
  store i32 %"187", i32* @"'s", align 4
  br label %main_bb94

main_bb93:                                        ; preds = %main_bb92
  call void (...)* @__VERIFIER_error() #3
  unreachable

main_bb94:                                        ; preds = %main_stubMoreProcessingRequired.exit.i.i, %main_bb91
  %"188" = call i32 @__VERIFIER_nondet_int() #4
  %"189" = icmp eq i32 %"188", 0
  br i1 %"189", label %main_bb96, label %main_bb95

main_bb95:                                        ; preds = %main_bb94
  %"190" = call i32 @__VERIFIER_nondet_int() #4
  %"191" = icmp eq i32 %"190", 1
  %..i.i = select i1 %"191", i32 -1073741823, i32 259
  br label %main_bb96

main_bb96:                                        ; preds = %main_bb95, %main_bb94
  %returnVal2.0.i.i = phi i32 [ 0, %main_bb94 ], [ %..i.i, %main_bb95 ]
  %"192" = load i32* @"'s", align 4
  %"193" = load i32* @"'NP", align 4
  %"194" = icmp eq i32 %"192", %"193"
  br i1 %"194", label %main_bb97, label %main_bb98

main_bb97:                                        ; preds = %main_bb96
  %"195" = load i32* @"'IPC", align 4
  store i32 %"195", i32* @"'s", align 4
  store i32 %returnVal2.0.i.i, i32* @"'lowerDriverReturn", align 4
  br label %main_IofCallDriver.exit.i

main_bb98:                                        ; preds = %main_bb96
  %"196" = load i32* @"'s", align 4
  %"197" = load i32* @"'MPR1", align 4
  %"198" = icmp eq i32 %"196", %"197"
  br i1 %"198", label %main_bb99, label %main_bb102

main_bb99:                                        ; preds = %main_bb98
  %"199" = icmp eq i32 %returnVal2.0.i.i, 259
  br i1 %"199", label %main_bb100, label %main_bb101

main_bb100:                                       ; preds = %main_bb99
  %"200" = load i32* @"'MPR3", align 4
  store i32 %"200", i32* @"'s", align 4
  store i32 %returnVal2.0.i.i, i32* @"'lowerDriverReturn", align 4
  br label %main_IofCallDriver.exit.i

main_bb101:                                       ; preds = %main_bb99
  %"201" = load i32* @"'NP", align 4
  store i32 %"201", i32* @"'s", align 4
  store i32 %returnVal2.0.i.i, i32* @"'lowerDriverReturn", align 4
  br label %main_IofCallDriver.exit.i

main_bb102:                                       ; preds = %main_bb98
  %"202" = load i32* @"'s", align 4
  %"203" = load i32* @"'SKIP1", align 4
  %"204" = icmp eq i32 %"202", %"203"
  br i1 %"204", label %main_bb103, label %main_bb112

main_bb103:                                       ; preds = %main_bb102
  %"205" = load i32* @"'SKIP2", align 4
  store i32 %"205", i32* @"'s", align 4
  store i32 %returnVal2.0.i.i, i32* @"'lowerDriverReturn", align 4
  br label %main_IofCallDriver.exit.i

main_IofCallDriver.exit.i:                        ; preds = %main_bb103, %main_bb101, %main_bb100, %main_bb97
  %"206" = sext i32 %returnVal2.0.i.i to i64
  %"207" = icmp eq i64 %"206", 259
  br i1 %"207", label %main_bb104, label %main_bb110

main_bb104:                                       ; preds = %main_IofCallDriver.exit.i
  %"208" = load i32* @"'s", align 4
  %"209" = load i32* @"'MPR3", align 4
  %"210" = icmp eq i32 %"208", %"209"
  %"211" = load i32* @"'setEventCalled", align 4
  %"212" = icmp eq i32 %"211", 1
  %or.cond.i.i = and i1 %"210", %"212"
  br i1 %or.cond.i.i, label %main_bb105, label %main_bb106

main_bb105:                                       ; preds = %main_bb104
  %"213" = load i32* @"'NP", align 4
  store i32 %"213", i32* @"'s", align 4
  store i32 0, i32* @"'setEventCalled", align 4
  br label %main_KeWaitForSingleObject.exit.i

main_bb106:                                       ; preds = %main_bb104
  %"214" = load i32* @"'customIrp", align 4
  %"215" = icmp eq i32 %"214", 1
  br i1 %"215", label %main_bb107, label %main_bb108

main_bb107:                                       ; preds = %main_bb106
  %"216" = load i32* @"'NP", align 4
  store i32 %"216", i32* @"'s", align 4
  store i32 0, i32* @"'customIrp", align 4
  br label %main_KeWaitForSingleObject.exit.i

main_bb108:                                       ; preds = %main_bb106
  %"217" = load i32* @"'s", align 4
  %"218" = load i32* @"'MPR3", align 4
  %"219" = icmp eq i32 %"217", %"218"
  br i1 %"219", label %main_bb109, label %main_KeWaitForSingleObject.exit.i

main_bb109:                                       ; preds = %main_bb108
  call void (...)* @__VERIFIER_error() #3
  unreachable

main_KeWaitForSingleObject.exit.i:                ; preds = %main_bb108, %main_bb107, %main_bb105
  %"220" = call i32 @__VERIFIER_nondet_int() #4
  br label %main_bb110

main_bb110:                                       ; preds = %main_KeWaitForSingleObject.exit.i, %main_IofCallDriver.exit.i
  store i32 %returnVal2.0.i.i, i32* @"'myStatus", align 4
  %"221" = load i32* @"'s", align 4
  %"222" = load i32* @"'NP", align 4
  %"223" = icmp eq i32 %"221", %"222"
  br i1 %"223", label %main_IofCompleteRequest.exit.i, label %main_bb111

main_IofCompleteRequest.exit.i:                   ; preds = %main_bb110
  %"224" = load i32* @"'DC", align 4
  store i32 %"224", i32* @"'s", align 4
  br label %main_KbFilter_PnP.exit

main_bb111:                                       ; preds = %main_bb110
  call void (...)* @__VERIFIER_error() #3
  unreachable

main_bb112:                                       ; preds = %main_bb102
  call void (...)* @__VERIFIER_error() #3
  unreachable

main_NodeBlock.i:                                 ; preds = %main_bb86
  %Pivot.i = icmp slt i32 %"172", 23
  br i1 %Pivot.i, label %main_LeafBlock17.i, label %main_LeafBlock19.i

main_LeafBlock17.i:                               ; preds = %main_NodeBlock.i
  %SwitchLeaf18.i = icmp eq i32 %"172", 2
  br i1 %SwitchLeaf18.i, label %main_bb113, label %main_NewDefault.i

main_bb113:                                       ; preds = %main_LeafBlock17.i
  %"225" = load i32* @"'s", align 4
  %"226" = load i32* @"'NP", align 4
  %"227" = icmp eq i32 %"225", %"226"
  br i1 %"227", label %main_bb114, label %main_bb128

main_bb114:                                       ; preds = %main_bb113
  %"228" = load i32* @"'SKIP1", align 4
  store i32 %"228", i32* @"'s", align 4
  %"229" = call i32 @__VERIFIER_nondet_int() #4
  %"230" = load i32* @"'compRegistered", align 4
  %"231" = icmp ne i32 %"230", 0
  br i1 %"231", label %main_bb115, label %main_bb117

main_bb115:                                       ; preds = %main_bb114
  %"232" = call i32 @__VERIFIER_nondet_int() #4
  store i32 1, i32* @"'setEventCalled", align 4
  %"233" = load i32* @"'s", align 4
  %"234" = load i32* @"'NP", align 4
  %"235" = icmp eq i32 %"233", %"234"
  br i1 %"235", label %main_stubMoreProcessingRequired.exit.i8.i, label %main_bb116

main_stubMoreProcessingRequired.exit.i8.i:        ; preds = %main_bb115
  %"236" = load i32* @"'MPR1", align 4
  store i32 %"236", i32* @"'s", align 4
  br label %main_bb117

main_bb116:                                       ; preds = %main_bb115
  call void (...)* @__VERIFIER_error() #3
  unreachable

main_bb117:                                       ; preds = %main_stubMoreProcessingRequired.exit.i8.i, %main_bb114
  %"237" = call i32 @__VERIFIER_nondet_int() #4
  %"238" = icmp eq i32 %"237", 0
  br i1 %"238", label %main_bb119, label %main_bb118

main_bb118:                                       ; preds = %main_bb117
  %"239" = call i32 @__VERIFIER_nondet_int() #4
  %"240" = icmp eq i32 %"239", 1
  %..i9.i = select i1 %"240", i32 -1073741823, i32 259
  br label %main_bb119

main_bb119:                                       ; preds = %main_bb118, %main_bb117
  %returnVal2.0.i10.i = phi i32 [ 0, %main_bb117 ], [ %..i9.i, %main_bb118 ]
  %"241" = load i32* @"'s", align 4
  %"242" = load i32* @"'NP", align 4
  %"243" = icmp eq i32 %"241", %"242"
  br i1 %"243", label %main_bb120, label %main_bb121

main_bb120:                                       ; preds = %main_bb119
  %"244" = load i32* @"'IPC", align 4
  store i32 %"244", i32* @"'s", align 4
  store i32 %returnVal2.0.i10.i, i32* @"'lowerDriverReturn", align 4
  br label %main_KbFilter_PnP.exit

main_bb121:                                       ; preds = %main_bb119
  %"245" = load i32* @"'s", align 4
  %"246" = load i32* @"'MPR1", align 4
  %"247" = icmp eq i32 %"245", %"246"
  br i1 %"247", label %main_bb122, label %main_bb125

main_bb122:                                       ; preds = %main_bb121
  %"248" = icmp eq i32 %returnVal2.0.i10.i, 259
  br i1 %"248", label %main_bb123, label %main_bb124

main_bb123:                                       ; preds = %main_bb122
  %"249" = load i32* @"'MPR3", align 4
  store i32 %"249", i32* @"'s", align 4
  store i32 %returnVal2.0.i10.i, i32* @"'lowerDriverReturn", align 4
  br label %main_KbFilter_PnP.exit

main_bb124:                                       ; preds = %main_bb122
  %"250" = load i32* @"'NP", align 4
  store i32 %"250", i32* @"'s", align 4
  store i32 %returnVal2.0.i10.i, i32* @"'lowerDriverReturn", align 4
  br label %main_KbFilter_PnP.exit

main_bb125:                                       ; preds = %main_bb121
  %"251" = load i32* @"'s", align 4
  %"252" = load i32* @"'SKIP1", align 4
  %"253" = icmp eq i32 %"251", %"252"
  br i1 %"253", label %main_bb126, label %main_bb127

main_bb126:                                       ; preds = %main_bb125
  %"254" = load i32* @"'SKIP2", align 4
  store i32 %"254", i32* @"'s", align 4
  store i32 %returnVal2.0.i10.i, i32* @"'lowerDriverReturn", align 4
  br label %main_KbFilter_PnP.exit

main_bb127:                                       ; preds = %main_bb125
  call void (...)* @__VERIFIER_error() #3
  unreachable

main_bb128:                                       ; preds = %main_bb113
  call void (...)* @__VERIFIER_error() #3
  unreachable

main_LeafBlock19.i:                               ; preds = %main_NodeBlock.i
  %SwitchLeaf20.i = icmp eq i32 %"172", 23
  br i1 %SwitchLeaf20.i, label %main_bb129, label %main_NewDefault.i

main_bb129:                                       ; preds = %main_LeafBlock19.i
  %"255" = load i32* @"'s", align 4
  %"256" = load i32* @"'NP", align 4
  %"257" = icmp eq i32 %"255", %"256"
  br i1 %"257", label %main_bb130, label %main_bb144

main_bb130:                                       ; preds = %main_bb129
  %"258" = load i32* @"'SKIP1", align 4
  store i32 %"258", i32* @"'s", align 4
  %"259" = call i32 @__VERIFIER_nondet_int() #4
  %"260" = load i32* @"'compRegistered", align 4
  %"261" = icmp ne i32 %"260", 0
  br i1 %"261", label %main_bb131, label %main_bb133

main_bb131:                                       ; preds = %main_bb130
  %"262" = call i32 @__VERIFIER_nondet_int() #4
  store i32 1, i32* @"'setEventCalled", align 4
  %"263" = load i32* @"'s", align 4
  %"264" = load i32* @"'NP", align 4
  %"265" = icmp eq i32 %"263", %"264"
  br i1 %"265", label %main_stubMoreProcessingRequired.exit.i3.i, label %main_bb132

main_stubMoreProcessingRequired.exit.i3.i:        ; preds = %main_bb131
  %"266" = load i32* @"'MPR1", align 4
  store i32 %"266", i32* @"'s", align 4
  br label %main_bb133

main_bb132:                                       ; preds = %main_bb131
  call void (...)* @__VERIFIER_error() #3
  unreachable

main_bb133:                                       ; preds = %main_stubMoreProcessingRequired.exit.i3.i, %main_bb130
  %"267" = call i32 @__VERIFIER_nondet_int() #4
  %"268" = icmp eq i32 %"267", 0
  br i1 %"268", label %main_bb135, label %main_bb134

main_bb134:                                       ; preds = %main_bb133
  %"269" = call i32 @__VERIFIER_nondet_int() #4
  %"270" = icmp eq i32 %"269", 1
  %..i4.i = select i1 %"270", i32 -1073741823, i32 259
  br label %main_bb135

main_bb135:                                       ; preds = %main_bb134, %main_bb133
  %returnVal2.0.i5.i = phi i32 [ 0, %main_bb133 ], [ %..i4.i, %main_bb134 ]
  %"271" = load i32* @"'s", align 4
  %"272" = load i32* @"'NP", align 4
  %"273" = icmp eq i32 %"271", %"272"
  br i1 %"273", label %main_bb136, label %main_bb137

main_bb136:                                       ; preds = %main_bb135
  %"274" = load i32* @"'IPC", align 4
  store i32 %"274", i32* @"'s", align 4
  store i32 %returnVal2.0.i5.i, i32* @"'lowerDriverReturn", align 4
  br label %main_KbFilter_PnP.exit

main_bb137:                                       ; preds = %main_bb135
  %"275" = load i32* @"'s", align 4
  %"276" = load i32* @"'MPR1", align 4
  %"277" = icmp eq i32 %"275", %"276"
  br i1 %"277", label %main_bb138, label %main_bb141

main_bb138:                                       ; preds = %main_bb137
  %"278" = icmp eq i32 %returnVal2.0.i5.i, 259
  br i1 %"278", label %main_bb139, label %main_bb140

main_bb139:                                       ; preds = %main_bb138
  %"279" = load i32* @"'MPR3", align 4
  store i32 %"279", i32* @"'s", align 4
  store i32 %returnVal2.0.i5.i, i32* @"'lowerDriverReturn", align 4
  br label %main_KbFilter_PnP.exit

main_bb140:                                       ; preds = %main_bb138
  %"280" = load i32* @"'NP", align 4
  store i32 %"280", i32* @"'s", align 4
  store i32 %returnVal2.0.i5.i, i32* @"'lowerDriverReturn", align 4
  br label %main_KbFilter_PnP.exit

main_bb141:                                       ; preds = %main_bb137
  %"281" = load i32* @"'s", align 4
  %"282" = load i32* @"'SKIP1", align 4
  %"283" = icmp eq i32 %"281", %"282"
  br i1 %"283", label %main_bb142, label %main_bb143

main_bb142:                                       ; preds = %main_bb141
  %"284" = load i32* @"'SKIP2", align 4
  store i32 %"284", i32* @"'s", align 4
  store i32 %returnVal2.0.i5.i, i32* @"'lowerDriverReturn", align 4
  br label %main_KbFilter_PnP.exit

main_bb143:                                       ; preds = %main_bb141
  call void (...)* @__VERIFIER_error() #3
  unreachable

main_bb144:                                       ; preds = %main_bb129
  call void (...)* @__VERIFIER_error() #3
  unreachable

main_NewDefault.i:                                ; preds = %main_LeafBlock19.i, %main_LeafBlock17.i, %main_LeafBlock.i
  %"285" = load i32* @"'s", align 4
  %"286" = load i32* @"'NP", align 4
  %"287" = icmp eq i32 %"285", %"286"
  br i1 %"287", label %main_bb145, label %main_bb159

main_bb145:                                       ; preds = %main_NewDefault.i
  %"288" = load i32* @"'SKIP1", align 4
  store i32 %"288", i32* @"'s", align 4
  %"289" = call i32 @__VERIFIER_nondet_int() #4
  %"290" = load i32* @"'compRegistered", align 4
  %"291" = icmp ne i32 %"290", 0
  br i1 %"291", label %main_bb146, label %main_bb148

main_bb146:                                       ; preds = %main_bb145
  %"292" = call i32 @__VERIFIER_nondet_int() #4
  store i32 1, i32* @"'setEventCalled", align 4
  %"293" = load i32* @"'s", align 4
  %"294" = load i32* @"'NP", align 4
  %"295" = icmp eq i32 %"293", %"294"
  br i1 %"295", label %main_stubMoreProcessingRequired.exit.i13.i, label %main_bb147

main_stubMoreProcessingRequired.exit.i13.i:       ; preds = %main_bb146
  %"296" = load i32* @"'MPR1", align 4
  store i32 %"296", i32* @"'s", align 4
  br label %main_bb148

main_bb147:                                       ; preds = %main_bb146
  call void (...)* @__VERIFIER_error() #3
  unreachable

main_bb148:                                       ; preds = %main_stubMoreProcessingRequired.exit.i13.i, %main_bb145
  %"297" = call i32 @__VERIFIER_nondet_int() #4
  %"298" = icmp eq i32 %"297", 0
  br i1 %"298", label %main_bb150, label %main_bb149

main_bb149:                                       ; preds = %main_bb148
  %"299" = call i32 @__VERIFIER_nondet_int() #4
  %"300" = icmp eq i32 %"299", 1
  %..i14.i = select i1 %"300", i32 -1073741823, i32 259
  br label %main_bb150

main_bb150:                                       ; preds = %main_bb149, %main_bb148
  %returnVal2.0.i15.i = phi i32 [ 0, %main_bb148 ], [ %..i14.i, %main_bb149 ]
  %"301" = load i32* @"'s", align 4
  %"302" = load i32* @"'NP", align 4
  %"303" = icmp eq i32 %"301", %"302"
  br i1 %"303", label %main_bb151, label %main_bb152

main_bb151:                                       ; preds = %main_bb150
  %"304" = load i32* @"'IPC", align 4
  store i32 %"304", i32* @"'s", align 4
  store i32 %returnVal2.0.i15.i, i32* @"'lowerDriverReturn", align 4
  br label %main_KbFilter_PnP.exit

main_bb152:                                       ; preds = %main_bb150
  %"305" = load i32* @"'s", align 4
  %"306" = load i32* @"'MPR1", align 4
  %"307" = icmp eq i32 %"305", %"306"
  br i1 %"307", label %main_bb153, label %main_bb156

main_bb153:                                       ; preds = %main_bb152
  %"308" = icmp eq i32 %returnVal2.0.i15.i, 259
  br i1 %"308", label %main_bb154, label %main_bb155

main_bb154:                                       ; preds = %main_bb153
  %"309" = load i32* @"'MPR3", align 4
  store i32 %"309", i32* @"'s", align 4
  store i32 %returnVal2.0.i15.i, i32* @"'lowerDriverReturn", align 4
  br label %main_KbFilter_PnP.exit

main_bb155:                                       ; preds = %main_bb153
  %"310" = load i32* @"'NP", align 4
  store i32 %"310", i32* @"'s", align 4
  store i32 %returnVal2.0.i15.i, i32* @"'lowerDriverReturn", align 4
  br label %main_KbFilter_PnP.exit

main_bb156:                                       ; preds = %main_bb152
  %"311" = load i32* @"'s", align 4
  %"312" = load i32* @"'SKIP1", align 4
  %"313" = icmp eq i32 %"311", %"312"
  br i1 %"313", label %main_bb157, label %main_bb158

main_bb157:                                       ; preds = %main_bb156
  %"314" = load i32* @"'SKIP2", align 4
  store i32 %"314", i32* @"'s", align 4
  store i32 %returnVal2.0.i15.i, i32* @"'lowerDriverReturn", align 4
  br label %main_KbFilter_PnP.exit

main_bb158:                                       ; preds = %main_bb156
  call void (...)* @__VERIFIER_error() #3
  unreachable

main_bb159:                                       ; preds = %main_NewDefault.i
  call void (...)* @__VERIFIER_error() #3
  unreachable

main_KbFilter_PnP.exit:                           ; preds = %main_IofCompleteRequest.exit.i, %main_bb120, %main_bb123, %main_bb124, %main_bb126, %main_bb136, %main_bb139, %main_bb140, %main_bb142, %main_bb151, %main_bb154, %main_bb155, %main_bb157, %main_bb83
  %status.0 = phi i32 [ 0, %main_bb83 ], [ %returnVal2.0.i.i, %main_IofCompleteRequest.exit.i ], [ %returnVal2.0.i5.i, %main_bb136 ], [ %returnVal2.0.i5.i, %main_bb139 ], [ %returnVal2.0.i5.i, %main_bb140 ], [ %returnVal2.0.i5.i, %main_bb142 ], [ 0, %main_bb120 ], [ 0, %main_bb123 ], [ 0, %main_bb124 ], [ 0, %main_bb126 ], [ %returnVal2.0.i15.i, %main_bb151 ], [ %returnVal2.0.i15.i, %main_bb154 ], [ %returnVal2.0.i15.i, %main_bb155 ], [ %returnVal2.0.i15.i, %main_bb157 ]
  %"315" = load i32* @"'pended", align 4
  %"316" = icmp eq i32 %"315", 1
  br i1 %"316", label %main_bb160, label %main_bb162

main_bb160:                                       ; preds = %main_KbFilter_PnP.exit
  %"317" = load i32* @"'s", align 4
  %"318" = load i32* @"'NP", align 4
  %"319" = icmp eq i32 %"317", %"318"
  br i1 %"319", label %main_bb161, label %main_bb162

main_bb161:                                       ; preds = %main_bb160
  %"320" = load i32* @"'NP", align 4
  store i32 %"320", i32* @"'s", align 4
  br label %main_bb175

main_bb162:                                       ; preds = %main_KbFilter_PnP.exit, %main_bb160
  %"321" = load i32* @"'pended", align 4
  %"322" = icmp eq i32 %"321", 1
  br i1 %"322", label %main_bb163, label %main_bb165

main_bb163:                                       ; preds = %main_bb162
  %"323" = load i32* @"'s", align 4
  %"324" = load i32* @"'MPR3", align 4
  %"325" = icmp eq i32 %"323", %"324"
  br i1 %"325", label %main_bb164, label %main_bb165

main_bb164:                                       ; preds = %main_bb163
  %"326" = load i32* @"'MPR3", align 4
  store i32 %"326", i32* @"'s", align 4
  br label %main_bb175

main_bb165:                                       ; preds = %main_bb162, %main_bb163
  %"327" = load i32* @"'s", align 4
  %"328" = load i32* @"'UNLOADED", align 4
  %"329" = icmp ne i32 %"327", %"328"
  %"330" = icmp ne i32 %status.0, -1
  %or.cond = and i1 %"329", %"330"
  br i1 %or.cond, label %main_bb166, label %main_bb175

main_bb166:                                       ; preds = %main_bb165
  %"331" = load i32* @"'s", align 4
  %"332" = load i32* @"'SKIP2", align 4
  %"333" = icmp ne i32 %"331", %"332"
  br i1 %"333", label %main_bb167, label %main_bb169

main_bb167:                                       ; preds = %main_bb166
  %"334" = load i32* @"'s", align 4
  %"335" = load i32* @"'IPC", align 4
  %"336" = icmp ne i32 %"334", %"335"
  br i1 %"336", label %main_bb168, label %main_bb169

main_bb168:                                       ; preds = %main_bb167
  %"337" = load i32* @"'s", align 4
  %"338" = load i32* @"'DC", align 4
  %"339" = icmp eq i32 %"337", %"338"
  br i1 %"339", label %main_bb169, label %main_bb175

main_bb169:                                       ; preds = %main_bb166, %main_bb167, %main_bb168
  %"340" = load i32* @"'pended", align 4
  %"341" = icmp eq i32 %"340", 1
  br i1 %"341", label %main_bb170, label %main_bb172

main_bb170:                                       ; preds = %main_bb169
  %"342" = icmp ne i32 %status.0, 259
  br i1 %"342", label %main_bb171, label %main_bb175

main_bb171:                                       ; preds = %main_bb170
  call void (...)* @__VERIFIER_error() #3
  unreachable

main_bb172:                                       ; preds = %main_bb169
  %"343" = load i32* @"'s", align 4
  %"344" = load i32* @"'DC", align 4
  %"345" = icmp eq i32 %"343", %"344"
  br i1 %"345", label %main_bb173, label %main_bb174

main_bb173:                                       ; preds = %main_bb172
  br label %main_bb175

main_bb174:                                       ; preds = %main_bb172
  br label %main_bb175

main_bb175:                                       ; preds = %main_bb161, %main_bb165, %main_bb168, %main_bb173, %main_bb174, %main_bb170, %main_bb164, %main_bb85, %main_bb84
  %.0 = phi i32 [ -1, %main_bb84 ], [ -1, %main_bb85 ], [ %status.0, %main_bb164 ], [ %status.0, %main_bb170 ], [ %status.0, %main_bb174 ], [ %status.0, %main_bb173 ], [ %status.0, %main_bb168 ], [ %status.0, %main_bb165 ], [ %status.0, %main_bb161 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @stubMoreProcessingRequired() #0 {
stubMoreProcessingRequired_bb176:
  %"346" = load i32* @"'s", align 4
  %"347" = load i32* @"'NP", align 4
  %"348" = icmp eq i32 %"346", %"347"
  br i1 %"348", label %stubMoreProcessingRequired_bb177, label %stubMoreProcessingRequired_bb178

stubMoreProcessingRequired_bb177:                 ; preds = %stubMoreProcessingRequired_bb176
  %"349" = load i32* @"'MPR1", align 4
  store i32 %"349", i32* @"'s", align 4
  ret void

stubMoreProcessingRequired_bb178:                 ; preds = %stubMoreProcessingRequired_bb176
  call void (...)* @__VERIFIER_error() #3
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @IofCallDriver(i32 %DeviceObject, i32 %Irp) #0 {
IofCallDriver_bb179:
  %"350" = call i32 @__VERIFIER_nondet_int()
  %"351" = load i32* @"'compRegistered", align 4
  %"352" = icmp ne i32 %"351", 0
  br i1 %"352", label %IofCallDriver_bb180, label %IofCallDriver_bb182

IofCallDriver_bb180:                              ; preds = %IofCallDriver_bb179
  %"353" = call i32 @__VERIFIER_nondet_int() #4
  store i32 1, i32* @"'setEventCalled", align 4
  %"354" = load i32* @"'s", align 4
  %"355" = load i32* @"'NP", align 4
  %"356" = icmp eq i32 %"354", %"355"
  br i1 %"356", label %IofCallDriver_stubMoreProcessingRequired.exit, label %IofCallDriver_bb181

IofCallDriver_stubMoreProcessingRequired.exit:    ; preds = %IofCallDriver_bb180
  %"357" = load i32* @"'MPR1", align 4
  store i32 %"357", i32* @"'s", align 4
  br label %IofCallDriver_bb182

IofCallDriver_bb181:                              ; preds = %IofCallDriver_bb180
  call void (...)* @__VERIFIER_error() #3
  unreachable

IofCallDriver_bb182:                              ; preds = %IofCallDriver_stubMoreProcessingRequired.exit, %IofCallDriver_bb179
  %"358" = call i32 @__VERIFIER_nondet_int()
  %"359" = icmp eq i32 %"358", 0
  br i1 %"359", label %IofCallDriver_bb184, label %IofCallDriver_bb183

IofCallDriver_bb183:                              ; preds = %IofCallDriver_bb182
  %"360" = call i32 @__VERIFIER_nondet_int()
  %"361" = icmp eq i32 %"360", 1
  %. = select i1 %"361", i32 -1073741823, i32 259
  br label %IofCallDriver_bb184

IofCallDriver_bb184:                              ; preds = %IofCallDriver_bb183, %IofCallDriver_bb182
  %returnVal2.0 = phi i32 [ 0, %IofCallDriver_bb182 ], [ %., %IofCallDriver_bb183 ]
  %"362" = load i32* @"'s", align 4
  %"363" = load i32* @"'NP", align 4
  %"364" = icmp eq i32 %"362", %"363"
  br i1 %"364", label %IofCallDriver_bb185, label %IofCallDriver_bb186

IofCallDriver_bb185:                              ; preds = %IofCallDriver_bb184
  %"365" = load i32* @"'IPC", align 4
  store i32 %"365", i32* @"'s", align 4
  store i32 %returnVal2.0, i32* @"'lowerDriverReturn", align 4
  br label %IofCallDriver_bb192

IofCallDriver_bb186:                              ; preds = %IofCallDriver_bb184
  %"366" = load i32* @"'s", align 4
  %"367" = load i32* @"'MPR1", align 4
  %"368" = icmp eq i32 %"366", %"367"
  br i1 %"368", label %IofCallDriver_bb187, label %IofCallDriver_bb190

IofCallDriver_bb187:                              ; preds = %IofCallDriver_bb186
  %"369" = icmp eq i32 %returnVal2.0, 259
  br i1 %"369", label %IofCallDriver_bb188, label %IofCallDriver_bb189

IofCallDriver_bb188:                              ; preds = %IofCallDriver_bb187
  %"370" = load i32* @"'MPR3", align 4
  store i32 %"370", i32* @"'s", align 4
  store i32 %returnVal2.0, i32* @"'lowerDriverReturn", align 4
  br label %IofCallDriver_bb192

IofCallDriver_bb189:                              ; preds = %IofCallDriver_bb187
  %"371" = load i32* @"'NP", align 4
  store i32 %"371", i32* @"'s", align 4
  store i32 %returnVal2.0, i32* @"'lowerDriverReturn", align 4
  br label %IofCallDriver_bb192

IofCallDriver_bb190:                              ; preds = %IofCallDriver_bb186
  %"372" = load i32* @"'s", align 4
  %"373" = load i32* @"'SKIP1", align 4
  %"374" = icmp eq i32 %"372", %"373"
  br i1 %"374", label %IofCallDriver_bb191, label %IofCallDriver_bb193

IofCallDriver_bb191:                              ; preds = %IofCallDriver_bb190
  %"375" = load i32* @"'SKIP2", align 4
  store i32 %"375", i32* @"'s", align 4
  store i32 %returnVal2.0, i32* @"'lowerDriverReturn", align 4
  br label %IofCallDriver_bb192

IofCallDriver_bb192:                              ; preds = %IofCallDriver_bb191, %IofCallDriver_bb189, %IofCallDriver_bb188, %IofCallDriver_bb185
  ret i32 %returnVal2.0

IofCallDriver_bb193:                              ; preds = %IofCallDriver_bb190
  call void (...)* @__VERIFIER_error() #3
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @KeSetEvent(i32 %Event, i32 %Increment, i32 %Wait) #0 {
KeSetEvent_bb194:
  %"376" = call i32 @__VERIFIER_nondet_int()
  store i32 1, i32* @"'setEventCalled", align 4
  ret i32 %"376"
}

; Function Attrs: nounwind uwtable
define i32 @KeWaitForSingleObject(i32 %Object, i32 %WaitReason, i32 %WaitMode, i32 %Alertable, i32 %Timeout) #0 {
KeWaitForSingleObject_bb195:
  %"377" = load i32* @"'s", align 4
  %"378" = load i32* @"'MPR3", align 4
  %"379" = icmp eq i32 %"377", %"378"
  %"380" = load i32* @"'setEventCalled", align 4
  %"381" = icmp eq i32 %"380", 1
  %or.cond = and i1 %"379", %"381"
  br i1 %or.cond, label %KeWaitForSingleObject_bb196, label %KeWaitForSingleObject_bb197

KeWaitForSingleObject_bb196:                      ; preds = %KeWaitForSingleObject_bb195
  %"382" = load i32* @"'NP", align 4
  store i32 %"382", i32* @"'s", align 4
  store i32 0, i32* @"'setEventCalled", align 4
  br label %KeWaitForSingleObject_bb201

KeWaitForSingleObject_bb197:                      ; preds = %KeWaitForSingleObject_bb195
  %"383" = load i32* @"'customIrp", align 4
  %"384" = icmp eq i32 %"383", 1
  br i1 %"384", label %KeWaitForSingleObject_bb198, label %KeWaitForSingleObject_bb199

KeWaitForSingleObject_bb198:                      ; preds = %KeWaitForSingleObject_bb197
  %"385" = load i32* @"'NP", align 4
  store i32 %"385", i32* @"'s", align 4
  store i32 0, i32* @"'customIrp", align 4
  br label %KeWaitForSingleObject_bb201

KeWaitForSingleObject_bb199:                      ; preds = %KeWaitForSingleObject_bb197
  %"386" = load i32* @"'s", align 4
  %"387" = load i32* @"'MPR3", align 4
  %"388" = icmp eq i32 %"386", %"387"
  br i1 %"388", label %KeWaitForSingleObject_bb200, label %KeWaitForSingleObject_bb201

KeWaitForSingleObject_bb200:                      ; preds = %KeWaitForSingleObject_bb199
  call void (...)* @__VERIFIER_error() #3
  unreachable

KeWaitForSingleObject_bb201:                      ; preds = %KeWaitForSingleObject_bb198, %KeWaitForSingleObject_bb199, %KeWaitForSingleObject_bb196
  %"389" = call i32 @__VERIFIER_nondet_int()
  %"390" = icmp eq i32 %"389", 0
  %.0 = select i1 %"390", i32 0, i32 -1073741823
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @KbFilter_Complete(i32 %DeviceObject, i32 %Irp, i32 %Context) #0 {
KbFilter_Complete_bb202:
  %"391" = call i32 @__VERIFIER_nondet_int() #4
  store i32 1, i32* @"'setEventCalled", align 4
  ret i32 -1073741802
}

; Function Attrs: noreturn
declare void @__VERIFIER_error(...) #2

declare i32 @__kittel_nondef.0()

declare i64 @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind }
attributes #4 = { nounwind }
attributes #5 = { noreturn }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

