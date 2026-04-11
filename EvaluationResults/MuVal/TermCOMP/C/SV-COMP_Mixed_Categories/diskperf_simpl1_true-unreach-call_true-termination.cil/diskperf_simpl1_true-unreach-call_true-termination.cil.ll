; ModuleID = 'Benchmarks/TermCOMP/C/SV-COMP_Mixed_Categories/diskperf_simpl1_true-unreach-call_true-termination.cil/diskperf_simpl1_true-unreach-call_true-termination.cil.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"'UNLOADED" = common global i32 0, align 4
@"'NP" = common global i32 0, align 4
@"'DC" = common global i32 0, align 4
@"'SKIP1" = common global i32 0, align 4
@"'SKIP2" = common global i32 0, align 4
@"'MPR1" = common global i32 0, align 4
@"'MPR3" = common global i32 0, align 4
@"'IPC" = common global i32 0, align 4
@"'s" = common global i32 0, align 4
@"'pended" = common global i32 0, align 4
@"'compFptr" = common global i32 0, align 4
@"'compRegistered" = common global i32 0, align 4
@"'lowerDriverReturn" = common global i32 0, align 4
@"'setEventCalled" = common global i32 0, align 4
@"'customIrp" = common global i32 0, align 4
@"'myStatus" = common global i32 0, align 4
@"'routine" = common global i32 0, align 4
@"'Executive" = common global i32 0, align 4
@"'KernelMode" = common global i32 0, align 4
@"'pirp" = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define void @errorFn() #0 {
errorFn_bb0:
  call void (...)* @__VERIFIER_error() #3
  unreachable
}

; Function Attrs: noreturn
declare void @__VERIFIER_error(...) #1

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
  %"0" = load i32* @"'UNLOADED", align 4
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
define void @DiskPerfSyncFilterWithTarget(i32 %FilterDevice, i32 %TargetDevice) #0 {
DiskPerfSyncFilterWithTarget_bb2:
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @DiskPerfDispatchPnp(i32 %DeviceObject, i32 %Irp) #0 {
DiskPerfDispatchPnp_bb3:
  %"1" = call i32 @__VERIFIER_nondet_int()
  %"2" = call i32 @__VERIFIER_nondet_int()
  br label %DiskPerfDispatchPnp_NodeBlock

DiskPerfDispatchPnp_NodeBlock:                    ; preds = %DiskPerfDispatchPnp_bb3
  %Pivot = icmp slt i32 %"2", 2
  br i1 %Pivot, label %DiskPerfDispatchPnp_LeafBlock, label %DiskPerfDispatchPnp_LeafBlock12

DiskPerfDispatchPnp_LeafBlock:                    ; preds = %DiskPerfDispatchPnp_NodeBlock
  %SwitchLeaf = icmp eq i32 %"2", 0
  br i1 %SwitchLeaf, label %DiskPerfDispatchPnp_bb4, label %DiskPerfDispatchPnp_NewDefault

DiskPerfDispatchPnp_bb4:                          ; preds = %DiskPerfDispatchPnp_LeafBlock
  %"3" = call i32 @__VERIFIER_nondet_int() #4
  %"4" = call i32 @__VERIFIER_nondet_int() #4
  %"5" = call i32 @__VERIFIER_nondet_int() #4
  %"6" = call i32 @__VERIFIER_nondet_int() #4
  %"7" = call i32 @__VERIFIER_nondet_int() #4
  %"8" = call i32 @__VERIFIER_nondet_int() #4
  %"9" = load i32* @"'s", align 4
  %"10" = load i32* @"'NP", align 4
  %"11" = icmp ne i32 %"9", %"10"
  br i1 %"11", label %DiskPerfDispatchPnp_bb5, label %DiskPerfDispatchPnp_bb6

DiskPerfDispatchPnp_bb5:                          ; preds = %DiskPerfDispatchPnp_bb4
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfDispatchPnp_bb6:                          ; preds = %DiskPerfDispatchPnp_bb4
  %"12" = load i32* @"'compRegistered", align 4
  %"13" = icmp ne i32 %"12", 0
  br i1 %"13", label %DiskPerfDispatchPnp_bb7, label %DiskPerfDispatchPnp_bb8

DiskPerfDispatchPnp_bb7:                          ; preds = %DiskPerfDispatchPnp_bb6
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfDispatchPnp_bb8:                          ; preds = %DiskPerfDispatchPnp_bb6
  store i32 1, i32* @"'compRegistered", align 4
  store i32 0, i32* @"'routine", align 4
  %"14" = call i32 @__VERIFIER_nondet_int() #4
  %"15" = load i32* @"'compRegistered", align 4
  %"16" = icmp ne i32 %"15", 0
  br i1 %"16", label %DiskPerfDispatchPnp_bb9, label %DiskPerfDispatchPnp_bb17

DiskPerfDispatchPnp_bb9:                          ; preds = %DiskPerfDispatchPnp_bb8
  %"17" = load i32* @"'routine", align 4
  %"18" = icmp eq i32 %"17", 0
  %"19" = call i32 @__VERIFIER_nondet_int() #4
  br i1 %"18", label %DiskPerfDispatchPnp_bb10, label %DiskPerfDispatchPnp_bb11

DiskPerfDispatchPnp_bb10:                         ; preds = %DiskPerfDispatchPnp_bb9
  store i32 1, i32* @"'setEventCalled", align 4
  br label %DiskPerfDispatchPnp_DiskPerfIoCompletion.exit.i.i.i

DiskPerfDispatchPnp_bb11:                         ; preds = %DiskPerfDispatchPnp_bb9
  %"20" = call i32 @__VERIFIER_nondet_int() #4
  %"21" = call i32 @__VERIFIER_nondet_int() #4
  %"22" = call i32 @__VERIFIER_nondet_int() #4
  %"23" = call i32 @__VERIFIER_nondet_int() #4
  %"24" = call i32 @__VERIFIER_nondet_int() #4
  %"25" = call i32 @__VERIFIER_nondet_int() #4
  %"26" = call i32 @__VERIFIER_nondet_int() #4
  %"27" = call i32 @__VERIFIER_nondet_int() #4
  %"28" = call i32 @__VERIFIER_nondet_int() #4
  %"29" = call i32 @__VERIFIER_nondet_int() #4
  %"30" = call i32 @__VERIFIER_nondet_int() #4
  %"31" = call i32 @__VERIFIER_nondet_int() #4
  %"32" = call i32 @__VERIFIER_nondet_int() #4
  %"33" = icmp ne i32 %"31", 0
  %"34" = icmp ne i32 %"30", 0
  %or.cond.i.i.i = and i1 %"33", %"34"
  br i1 %or.cond.i.i.i, label %DiskPerfDispatchPnp_bb12, label %DiskPerfDispatchPnp_DiskPerfIoCompletion.exit.i.i.i

DiskPerfDispatchPnp_bb12:                         ; preds = %DiskPerfDispatchPnp_bb11
  %"35" = load i32* @"'pended", align 4
  %"36" = icmp eq i32 %"35", 0
  br i1 %"36", label %DiskPerfDispatchPnp_bb13, label %DiskPerfDispatchPnp_bb14

DiskPerfDispatchPnp_bb13:                         ; preds = %DiskPerfDispatchPnp_bb12
  store i32 1, i32* @"'pended", align 4
  br label %DiskPerfDispatchPnp_DiskPerfIoCompletion.exit.i.i.i

DiskPerfDispatchPnp_bb14:                         ; preds = %DiskPerfDispatchPnp_bb12
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfDispatchPnp_DiskPerfIoCompletion.exit.i.i.i: ; preds = %DiskPerfDispatchPnp_bb13, %DiskPerfDispatchPnp_bb11, %DiskPerfDispatchPnp_bb10
  %compRetStatus.0.i.i.i = phi i32 [ -1073741802, %DiskPerfDispatchPnp_bb10 ], [ 0, %DiskPerfDispatchPnp_bb11 ], [ 0, %DiskPerfDispatchPnp_bb13 ]
  %"37" = sext i32 %compRetStatus.0.i.i.i to i64
  %"38" = icmp eq i64 %"37", -1073741802
  br i1 %"38", label %DiskPerfDispatchPnp_bb15, label %DiskPerfDispatchPnp_bb17

DiskPerfDispatchPnp_bb15:                         ; preds = %DiskPerfDispatchPnp_DiskPerfIoCompletion.exit.i.i.i
  %"39" = load i32* @"'s", align 4
  %"40" = load i32* @"'NP", align 4
  %"41" = icmp eq i32 %"39", %"40"
  br i1 %"41", label %DiskPerfDispatchPnp_stubMoreProcessingRequired.exit.i.i.i, label %DiskPerfDispatchPnp_bb16

DiskPerfDispatchPnp_stubMoreProcessingRequired.exit.i.i.i: ; preds = %DiskPerfDispatchPnp_bb15
  %"42" = load i32* @"'MPR1", align 4
  store i32 %"42", i32* @"'s", align 4
  br label %DiskPerfDispatchPnp_bb17

DiskPerfDispatchPnp_bb16:                         ; preds = %DiskPerfDispatchPnp_bb15
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfDispatchPnp_bb17:                         ; preds = %DiskPerfDispatchPnp_stubMoreProcessingRequired.exit.i.i.i, %DiskPerfDispatchPnp_DiskPerfIoCompletion.exit.i.i.i, %DiskPerfDispatchPnp_bb8
  %"43" = call i32 @__VERIFIER_nondet_int() #4
  %"44" = icmp eq i32 %"43", 0
  br i1 %"44", label %DiskPerfDispatchPnp_bb19, label %DiskPerfDispatchPnp_bb18

DiskPerfDispatchPnp_bb18:                         ; preds = %DiskPerfDispatchPnp_bb17
  %"45" = call i32 @__VERIFIER_nondet_int() #4
  %"46" = icmp eq i32 %"45", 1
  %..i.i.i = select i1 %"46", i32 -1073741823, i32 259
  br label %DiskPerfDispatchPnp_bb19

DiskPerfDispatchPnp_bb19:                         ; preds = %DiskPerfDispatchPnp_bb18, %DiskPerfDispatchPnp_bb17
  %returnVal2.0.i.i.i = phi i32 [ 0, %DiskPerfDispatchPnp_bb17 ], [ %..i.i.i, %DiskPerfDispatchPnp_bb18 ]
  %"47" = load i32* @"'s", align 4
  %"48" = load i32* @"'NP", align 4
  %"49" = icmp eq i32 %"47", %"48"
  br i1 %"49", label %DiskPerfDispatchPnp_bb20, label %DiskPerfDispatchPnp_bb21

DiskPerfDispatchPnp_bb20:                         ; preds = %DiskPerfDispatchPnp_bb19
  %"50" = load i32* @"'IPC", align 4
  store i32 %"50", i32* @"'s", align 4
  store i32 %returnVal2.0.i.i.i, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfDispatchPnp_IofCallDriver.exit.i.i

DiskPerfDispatchPnp_bb21:                         ; preds = %DiskPerfDispatchPnp_bb19
  %"51" = load i32* @"'s", align 4
  %"52" = load i32* @"'MPR1", align 4
  %"53" = icmp eq i32 %"51", %"52"
  br i1 %"53", label %DiskPerfDispatchPnp_bb22, label %DiskPerfDispatchPnp_bb25

DiskPerfDispatchPnp_bb22:                         ; preds = %DiskPerfDispatchPnp_bb21
  %"54" = icmp eq i32 %returnVal2.0.i.i.i, 259
  br i1 %"54", label %DiskPerfDispatchPnp_bb23, label %DiskPerfDispatchPnp_bb24

DiskPerfDispatchPnp_bb23:                         ; preds = %DiskPerfDispatchPnp_bb22
  %"55" = load i32* @"'MPR3", align 4
  store i32 %"55", i32* @"'s", align 4
  store i32 %returnVal2.0.i.i.i, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfDispatchPnp_IofCallDriver.exit.i.i

DiskPerfDispatchPnp_bb24:                         ; preds = %DiskPerfDispatchPnp_bb22
  %"56" = load i32* @"'NP", align 4
  store i32 %"56", i32* @"'s", align 4
  store i32 %returnVal2.0.i.i.i, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfDispatchPnp_IofCallDriver.exit.i.i

DiskPerfDispatchPnp_bb25:                         ; preds = %DiskPerfDispatchPnp_bb21
  %"57" = load i32* @"'s", align 4
  %"58" = load i32* @"'SKIP1", align 4
  %"59" = icmp eq i32 %"57", %"58"
  br i1 %"59", label %DiskPerfDispatchPnp_bb26, label %DiskPerfDispatchPnp_bb145

DiskPerfDispatchPnp_bb26:                         ; preds = %DiskPerfDispatchPnp_bb25
  %"60" = load i32* @"'SKIP2", align 4
  store i32 %"60", i32* @"'s", align 4
  store i32 %returnVal2.0.i.i.i, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfDispatchPnp_IofCallDriver.exit.i.i

DiskPerfDispatchPnp_IofCallDriver.exit.i.i:       ; preds = %DiskPerfDispatchPnp_bb26, %DiskPerfDispatchPnp_bb24, %DiskPerfDispatchPnp_bb23, %DiskPerfDispatchPnp_bb20
  %"61" = sext i32 %returnVal2.0.i.i.i to i64
  %"62" = icmp eq i64 %"61", 259
  br i1 %"62", label %DiskPerfDispatchPnp_bb27, label %DiskPerfDispatchPnp_DiskPerfForwardIrpSynchronous.exit.i

DiskPerfDispatchPnp_bb27:                         ; preds = %DiskPerfDispatchPnp_IofCallDriver.exit.i.i
  %"63" = load i32* @"'s", align 4
  %"64" = load i32* @"'MPR3", align 4
  %"65" = icmp eq i32 %"63", %"64"
  %"66" = load i32* @"'setEventCalled", align 4
  %"67" = icmp eq i32 %"66", 1
  %or.cond.i2.i.i = and i1 %"65", %"67"
  br i1 %or.cond.i2.i.i, label %DiskPerfDispatchPnp_bb28, label %DiskPerfDispatchPnp_bb29

DiskPerfDispatchPnp_bb28:                         ; preds = %DiskPerfDispatchPnp_bb27
  %"68" = load i32* @"'NP", align 4
  store i32 %"68", i32* @"'s", align 4
  store i32 0, i32* @"'setEventCalled", align 4
  br label %DiskPerfDispatchPnp_KeWaitForSingleObject.exit.i.i

DiskPerfDispatchPnp_bb29:                         ; preds = %DiskPerfDispatchPnp_bb27
  %"69" = load i32* @"'customIrp", align 4
  %"70" = icmp eq i32 %"69", 1
  br i1 %"70", label %DiskPerfDispatchPnp_bb30, label %DiskPerfDispatchPnp_bb31

DiskPerfDispatchPnp_bb30:                         ; preds = %DiskPerfDispatchPnp_bb29
  %"71" = load i32* @"'NP", align 4
  store i32 %"71", i32* @"'s", align 4
  store i32 0, i32* @"'customIrp", align 4
  br label %DiskPerfDispatchPnp_KeWaitForSingleObject.exit.i.i

DiskPerfDispatchPnp_bb31:                         ; preds = %DiskPerfDispatchPnp_bb29
  %"72" = load i32* @"'s", align 4
  %"73" = load i32* @"'MPR3", align 4
  %"74" = icmp eq i32 %"72", %"73"
  br i1 %"74", label %DiskPerfDispatchPnp_bb32, label %DiskPerfDispatchPnp_KeWaitForSingleObject.exit.i.i

DiskPerfDispatchPnp_bb32:                         ; preds = %DiskPerfDispatchPnp_bb31
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfDispatchPnp_KeWaitForSingleObject.exit.i.i: ; preds = %DiskPerfDispatchPnp_bb31, %DiskPerfDispatchPnp_bb30, %DiskPerfDispatchPnp_bb28
  %"75" = call i32 @__VERIFIER_nondet_int() #4
  %"76" = load i32* @"'myStatus", align 4
  br label %DiskPerfDispatchPnp_DiskPerfForwardIrpSynchronous.exit.i

DiskPerfDispatchPnp_DiskPerfForwardIrpSynchronous.exit.i: ; preds = %DiskPerfDispatchPnp_KeWaitForSingleObject.exit.i.i, %DiskPerfDispatchPnp_IofCallDriver.exit.i.i
  %status.0.i.i = phi i32 [ %"76", %DiskPerfDispatchPnp_KeWaitForSingleObject.exit.i.i ], [ %returnVal2.0.i.i.i, %DiskPerfDispatchPnp_IofCallDriver.exit.i.i ]
  %"77" = call i32 @__VERIFIER_nondet_int() #4
  %"78" = call i32 @__VERIFIER_nondet_int() #4
  %"79" = call i32 @__VERIFIER_nondet_int() #4
  %"80" = call i32 @__VERIFIER_nondet_int() #4
  %"81" = call i32 @__VERIFIER_nondet_int() #4
  %"82" = call i32 @__VERIFIER_nondet_int() #4
  %"83" = call i32 @__VERIFIER_nondet_int() #4
  %"84" = call i32 @__VERIFIER_nondet_int() #4
  %"85" = call i32 @__VERIFIER_nondet_int() #4
  %"86" = call i32 @__VERIFIER_nondet_int() #4
  %"87" = call i32 @__VERIFIER_nondet_int() #4
  %"88" = call i32 @__VERIFIER_nondet_int() #4
  %"89" = call i32 @__VERIFIER_nondet_int() #4
  %"90" = call i32 @__VERIFIER_nondet_int() #4
  store i32 1, i32* @"'customIrp", align 4
  %"91" = call i32 @__VERIFIER_nondet_int() #4
  %"92" = icmp eq i32 %"91", 0
  %.0.i.i.i = select i1 %"92", i32 %"90", i32 0
  %"93" = icmp ne i32 %.0.i.i.i, 0
  br i1 %"93", label %DiskPerfDispatchPnp_bb33, label %DiskPerfDispatchPnp_DiskPerfRegisterDevice.exit.i

DiskPerfDispatchPnp_bb33:                         ; preds = %DiskPerfDispatchPnp_DiskPerfForwardIrpSynchronous.exit.i
  %"94" = call i32 @__VERIFIER_nondet_int() #4
  %"95" = load i32* @"'compRegistered", align 4
  %"96" = icmp ne i32 %"95", 0
  br i1 %"96", label %DiskPerfDispatchPnp_bb34, label %DiskPerfDispatchPnp_bb42

DiskPerfDispatchPnp_bb34:                         ; preds = %DiskPerfDispatchPnp_bb33
  %"97" = load i32* @"'routine", align 4
  %"98" = icmp eq i32 %"97", 0
  %"99" = call i32 @__VERIFIER_nondet_int() #4
  br i1 %"98", label %DiskPerfDispatchPnp_bb35, label %DiskPerfDispatchPnp_bb36

DiskPerfDispatchPnp_bb35:                         ; preds = %DiskPerfDispatchPnp_bb34
  store i32 1, i32* @"'setEventCalled", align 4
  br label %DiskPerfDispatchPnp_DiskPerfIoCompletion.exit.i.i3.i

DiskPerfDispatchPnp_bb36:                         ; preds = %DiskPerfDispatchPnp_bb34
  %"100" = call i32 @__VERIFIER_nondet_int() #4
  %"101" = call i32 @__VERIFIER_nondet_int() #4
  %"102" = call i32 @__VERIFIER_nondet_int() #4
  %"103" = call i32 @__VERIFIER_nondet_int() #4
  %"104" = call i32 @__VERIFIER_nondet_int() #4
  %"105" = call i32 @__VERIFIER_nondet_int() #4
  %"106" = call i32 @__VERIFIER_nondet_int() #4
  %"107" = call i32 @__VERIFIER_nondet_int() #4
  %"108" = call i32 @__VERIFIER_nondet_int() #4
  %"109" = call i32 @__VERIFIER_nondet_int() #4
  %"110" = call i32 @__VERIFIER_nondet_int() #4
  %"111" = call i32 @__VERIFIER_nondet_int() #4
  %"112" = call i32 @__VERIFIER_nondet_int() #4
  %"113" = icmp ne i32 %"111", 0
  %"114" = icmp ne i32 %"110", 0
  %or.cond.i.i1.i = and i1 %"113", %"114"
  br i1 %or.cond.i.i1.i, label %DiskPerfDispatchPnp_bb37, label %DiskPerfDispatchPnp_DiskPerfIoCompletion.exit.i.i3.i

DiskPerfDispatchPnp_bb37:                         ; preds = %DiskPerfDispatchPnp_bb36
  %"115" = load i32* @"'pended", align 4
  %"116" = icmp eq i32 %"115", 0
  br i1 %"116", label %DiskPerfDispatchPnp_bb38, label %DiskPerfDispatchPnp_bb39

DiskPerfDispatchPnp_bb38:                         ; preds = %DiskPerfDispatchPnp_bb37
  store i32 1, i32* @"'pended", align 4
  br label %DiskPerfDispatchPnp_DiskPerfIoCompletion.exit.i.i3.i

DiskPerfDispatchPnp_bb39:                         ; preds = %DiskPerfDispatchPnp_bb37
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfDispatchPnp_DiskPerfIoCompletion.exit.i.i3.i: ; preds = %DiskPerfDispatchPnp_bb38, %DiskPerfDispatchPnp_bb36, %DiskPerfDispatchPnp_bb35
  %compRetStatus.0.i.i2.i = phi i32 [ -1073741802, %DiskPerfDispatchPnp_bb35 ], [ 0, %DiskPerfDispatchPnp_bb36 ], [ 0, %DiskPerfDispatchPnp_bb38 ]
  %"117" = sext i32 %compRetStatus.0.i.i2.i to i64
  %"118" = icmp eq i64 %"117", -1073741802
  br i1 %"118", label %DiskPerfDispatchPnp_bb40, label %DiskPerfDispatchPnp_bb42

DiskPerfDispatchPnp_bb40:                         ; preds = %DiskPerfDispatchPnp_DiskPerfIoCompletion.exit.i.i3.i
  %"119" = load i32* @"'s", align 4
  %"120" = load i32* @"'NP", align 4
  %"121" = icmp eq i32 %"119", %"120"
  br i1 %"121", label %DiskPerfDispatchPnp_stubMoreProcessingRequired.exit.i.i4.i, label %DiskPerfDispatchPnp_bb41

DiskPerfDispatchPnp_stubMoreProcessingRequired.exit.i.i4.i: ; preds = %DiskPerfDispatchPnp_bb40
  %"122" = load i32* @"'MPR1", align 4
  store i32 %"122", i32* @"'s", align 4
  br label %DiskPerfDispatchPnp_bb42

DiskPerfDispatchPnp_bb41:                         ; preds = %DiskPerfDispatchPnp_bb40
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfDispatchPnp_bb42:                         ; preds = %DiskPerfDispatchPnp_stubMoreProcessingRequired.exit.i.i4.i, %DiskPerfDispatchPnp_DiskPerfIoCompletion.exit.i.i3.i, %DiskPerfDispatchPnp_bb33
  %"123" = call i32 @__VERIFIER_nondet_int() #4
  %"124" = icmp eq i32 %"123", 0
  br i1 %"124", label %DiskPerfDispatchPnp_bb44, label %DiskPerfDispatchPnp_bb43

DiskPerfDispatchPnp_bb43:                         ; preds = %DiskPerfDispatchPnp_bb42
  %"125" = call i32 @__VERIFIER_nondet_int() #4
  %"126" = icmp eq i32 %"125", 1
  %..i.i5.i = select i1 %"126", i32 -1073741823, i32 259
  br label %DiskPerfDispatchPnp_bb44

DiskPerfDispatchPnp_bb44:                         ; preds = %DiskPerfDispatchPnp_bb43, %DiskPerfDispatchPnp_bb42
  %returnVal2.0.i.i6.i = phi i32 [ 0, %DiskPerfDispatchPnp_bb42 ], [ %..i.i5.i, %DiskPerfDispatchPnp_bb43 ]
  %"127" = load i32* @"'s", align 4
  %"128" = load i32* @"'NP", align 4
  %"129" = icmp eq i32 %"127", %"128"
  br i1 %"129", label %DiskPerfDispatchPnp_bb45, label %DiskPerfDispatchPnp_bb46

DiskPerfDispatchPnp_bb45:                         ; preds = %DiskPerfDispatchPnp_bb44
  %"130" = load i32* @"'IPC", align 4
  store i32 %"130", i32* @"'s", align 4
  store i32 %returnVal2.0.i.i6.i, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfDispatchPnp_IofCallDriver.exit.i7.i

DiskPerfDispatchPnp_bb46:                         ; preds = %DiskPerfDispatchPnp_bb44
  %"131" = load i32* @"'s", align 4
  %"132" = load i32* @"'MPR1", align 4
  %"133" = icmp eq i32 %"131", %"132"
  br i1 %"133", label %DiskPerfDispatchPnp_bb47, label %DiskPerfDispatchPnp_bb50

DiskPerfDispatchPnp_bb47:                         ; preds = %DiskPerfDispatchPnp_bb46
  %"134" = icmp eq i32 %returnVal2.0.i.i6.i, 259
  br i1 %"134", label %DiskPerfDispatchPnp_bb48, label %DiskPerfDispatchPnp_bb49

DiskPerfDispatchPnp_bb48:                         ; preds = %DiskPerfDispatchPnp_bb47
  %"135" = load i32* @"'MPR3", align 4
  store i32 %"135", i32* @"'s", align 4
  store i32 %returnVal2.0.i.i6.i, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfDispatchPnp_IofCallDriver.exit.i7.i

DiskPerfDispatchPnp_bb49:                         ; preds = %DiskPerfDispatchPnp_bb47
  %"136" = load i32* @"'NP", align 4
  store i32 %"136", i32* @"'s", align 4
  store i32 %returnVal2.0.i.i6.i, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfDispatchPnp_IofCallDriver.exit.i7.i

DiskPerfDispatchPnp_bb50:                         ; preds = %DiskPerfDispatchPnp_bb46
  %"137" = load i32* @"'s", align 4
  %"138" = load i32* @"'SKIP1", align 4
  %"139" = icmp eq i32 %"137", %"138"
  br i1 %"139", label %DiskPerfDispatchPnp_bb51, label %DiskPerfDispatchPnp_bb143

DiskPerfDispatchPnp_bb51:                         ; preds = %DiskPerfDispatchPnp_bb50
  %"140" = load i32* @"'SKIP2", align 4
  store i32 %"140", i32* @"'s", align 4
  store i32 %returnVal2.0.i.i6.i, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfDispatchPnp_IofCallDriver.exit.i7.i

DiskPerfDispatchPnp_IofCallDriver.exit.i7.i:      ; preds = %DiskPerfDispatchPnp_bb51, %DiskPerfDispatchPnp_bb49, %DiskPerfDispatchPnp_bb48, %DiskPerfDispatchPnp_bb45
  %"141" = sext i32 %returnVal2.0.i.i6.i to i64
  %"142" = icmp eq i64 %"141", 259
  br i1 %"142", label %DiskPerfDispatchPnp_bb52, label %DiskPerfDispatchPnp_bb58

DiskPerfDispatchPnp_bb52:                         ; preds = %DiskPerfDispatchPnp_IofCallDriver.exit.i7.i
  %"143" = load i32* @"'s", align 4
  %"144" = load i32* @"'MPR3", align 4
  %"145" = icmp eq i32 %"143", %"144"
  %"146" = load i32* @"'setEventCalled", align 4
  %"147" = icmp eq i32 %"146", 1
  %or.cond.i1.i.i = and i1 %"145", %"147"
  br i1 %or.cond.i1.i.i, label %DiskPerfDispatchPnp_bb53, label %DiskPerfDispatchPnp_bb54

DiskPerfDispatchPnp_bb53:                         ; preds = %DiskPerfDispatchPnp_bb52
  %"148" = load i32* @"'NP", align 4
  store i32 %"148", i32* @"'s", align 4
  store i32 0, i32* @"'setEventCalled", align 4
  br label %DiskPerfDispatchPnp_KeWaitForSingleObject.exit.i8.i

DiskPerfDispatchPnp_bb54:                         ; preds = %DiskPerfDispatchPnp_bb52
  %"149" = load i32* @"'customIrp", align 4
  %"150" = icmp eq i32 %"149", 1
  br i1 %"150", label %DiskPerfDispatchPnp_bb55, label %DiskPerfDispatchPnp_bb56

DiskPerfDispatchPnp_bb55:                         ; preds = %DiskPerfDispatchPnp_bb54
  %"151" = load i32* @"'NP", align 4
  store i32 %"151", i32* @"'s", align 4
  store i32 0, i32* @"'customIrp", align 4
  br label %DiskPerfDispatchPnp_KeWaitForSingleObject.exit.i8.i

DiskPerfDispatchPnp_bb56:                         ; preds = %DiskPerfDispatchPnp_bb54
  %"152" = load i32* @"'s", align 4
  %"153" = load i32* @"'MPR3", align 4
  %"154" = icmp eq i32 %"152", %"153"
  br i1 %"154", label %DiskPerfDispatchPnp_bb57, label %DiskPerfDispatchPnp_KeWaitForSingleObject.exit.i8.i

DiskPerfDispatchPnp_bb57:                         ; preds = %DiskPerfDispatchPnp_bb56
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfDispatchPnp_KeWaitForSingleObject.exit.i8.i: ; preds = %DiskPerfDispatchPnp_bb56, %DiskPerfDispatchPnp_bb55, %DiskPerfDispatchPnp_bb53
  %"155" = call i32 @__VERIFIER_nondet_int() #4
  br label %DiskPerfDispatchPnp_bb58

DiskPerfDispatchPnp_bb58:                         ; preds = %DiskPerfDispatchPnp_KeWaitForSingleObject.exit.i8.i, %DiskPerfDispatchPnp_IofCallDriver.exit.i7.i
  %status.0.i9.i = phi i32 [ %"80", %DiskPerfDispatchPnp_KeWaitForSingleObject.exit.i8.i ], [ %returnVal2.0.i.i6.i, %DiskPerfDispatchPnp_IofCallDriver.exit.i7.i ]
  %"156" = icmp slt i32 %status.0.i9.i, 0
  %"157" = icmp ne i32 %"88", 0
  %or.cond.i = and i1 %"156", %"157"
  br i1 %or.cond.i, label %DiskPerfDispatchPnp_bb59, label %DiskPerfDispatchPnp_DiskPerfRegisterDevice.exit.i

DiskPerfDispatchPnp_bb59:                         ; preds = %DiskPerfDispatchPnp_bb58
  %"158" = call i32 @__VERIFIER_nondet_int() #4
  store i32 1, i32* @"'customIrp", align 4
  %"159" = call i32 @__VERIFIER_nondet_int() #4
  %"160" = icmp eq i32 %"159", 0
  %.0.i3.i.i = select i1 %"160", i32 %"158", i32 0
  %"161" = icmp ne i32 %.0.i3.i.i, 0
  br i1 %"161", label %DiskPerfDispatchPnp_bb60, label %DiskPerfDispatchPnp_DiskPerfRegisterDevice.exit.i

DiskPerfDispatchPnp_bb60:                         ; preds = %DiskPerfDispatchPnp_bb59
  %"162" = call i32 @__VERIFIER_nondet_int() #4
  %"163" = load i32* @"'compRegistered", align 4
  %"164" = icmp ne i32 %"163", 0
  br i1 %"164", label %DiskPerfDispatchPnp_bb61, label %DiskPerfDispatchPnp_bb69

DiskPerfDispatchPnp_bb61:                         ; preds = %DiskPerfDispatchPnp_bb60
  %"165" = load i32* @"'routine", align 4
  %"166" = icmp eq i32 %"165", 0
  %"167" = call i32 @__VERIFIER_nondet_int() #4
  br i1 %"166", label %DiskPerfDispatchPnp_bb62, label %DiskPerfDispatchPnp_bb63

DiskPerfDispatchPnp_bb62:                         ; preds = %DiskPerfDispatchPnp_bb61
  store i32 1, i32* @"'setEventCalled", align 4
  br label %DiskPerfDispatchPnp_DiskPerfIoCompletion.exit.i6.i.i

DiskPerfDispatchPnp_bb63:                         ; preds = %DiskPerfDispatchPnp_bb61
  %"168" = call i32 @__VERIFIER_nondet_int() #4
  %"169" = call i32 @__VERIFIER_nondet_int() #4
  %"170" = call i32 @__VERIFIER_nondet_int() #4
  %"171" = call i32 @__VERIFIER_nondet_int() #4
  %"172" = call i32 @__VERIFIER_nondet_int() #4
  %"173" = call i32 @__VERIFIER_nondet_int() #4
  %"174" = call i32 @__VERIFIER_nondet_int() #4
  %"175" = call i32 @__VERIFIER_nondet_int() #4
  %"176" = call i32 @__VERIFIER_nondet_int() #4
  %"177" = call i32 @__VERIFIER_nondet_int() #4
  %"178" = call i32 @__VERIFIER_nondet_int() #4
  %"179" = call i32 @__VERIFIER_nondet_int() #4
  %"180" = call i32 @__VERIFIER_nondet_int() #4
  %"181" = icmp ne i32 %"179", 0
  %"182" = icmp ne i32 %"178", 0
  %or.cond.i4.i.i = and i1 %"181", %"182"
  br i1 %or.cond.i4.i.i, label %DiskPerfDispatchPnp_bb64, label %DiskPerfDispatchPnp_DiskPerfIoCompletion.exit.i6.i.i

DiskPerfDispatchPnp_bb64:                         ; preds = %DiskPerfDispatchPnp_bb63
  %"183" = load i32* @"'pended", align 4
  %"184" = icmp eq i32 %"183", 0
  br i1 %"184", label %DiskPerfDispatchPnp_bb65, label %DiskPerfDispatchPnp_bb66

DiskPerfDispatchPnp_bb65:                         ; preds = %DiskPerfDispatchPnp_bb64
  store i32 1, i32* @"'pended", align 4
  br label %DiskPerfDispatchPnp_DiskPerfIoCompletion.exit.i6.i.i

DiskPerfDispatchPnp_bb66:                         ; preds = %DiskPerfDispatchPnp_bb64
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfDispatchPnp_DiskPerfIoCompletion.exit.i6.i.i: ; preds = %DiskPerfDispatchPnp_bb65, %DiskPerfDispatchPnp_bb63, %DiskPerfDispatchPnp_bb62
  %compRetStatus.0.i5.i.i = phi i32 [ -1073741802, %DiskPerfDispatchPnp_bb62 ], [ 0, %DiskPerfDispatchPnp_bb63 ], [ 0, %DiskPerfDispatchPnp_bb65 ]
  %"185" = sext i32 %compRetStatus.0.i5.i.i to i64
  %"186" = icmp eq i64 %"185", -1073741802
  br i1 %"186", label %DiskPerfDispatchPnp_bb67, label %DiskPerfDispatchPnp_bb69

DiskPerfDispatchPnp_bb67:                         ; preds = %DiskPerfDispatchPnp_DiskPerfIoCompletion.exit.i6.i.i
  %"187" = load i32* @"'s", align 4
  %"188" = load i32* @"'NP", align 4
  %"189" = icmp eq i32 %"187", %"188"
  br i1 %"189", label %DiskPerfDispatchPnp_stubMoreProcessingRequired.exit.i7.i.i, label %DiskPerfDispatchPnp_bb68

DiskPerfDispatchPnp_stubMoreProcessingRequired.exit.i7.i.i: ; preds = %DiskPerfDispatchPnp_bb67
  %"190" = load i32* @"'MPR1", align 4
  store i32 %"190", i32* @"'s", align 4
  br label %DiskPerfDispatchPnp_bb69

DiskPerfDispatchPnp_bb68:                         ; preds = %DiskPerfDispatchPnp_bb67
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfDispatchPnp_bb69:                         ; preds = %DiskPerfDispatchPnp_stubMoreProcessingRequired.exit.i7.i.i, %DiskPerfDispatchPnp_DiskPerfIoCompletion.exit.i6.i.i, %DiskPerfDispatchPnp_bb60
  %"191" = call i32 @__VERIFIER_nondet_int() #4
  %"192" = icmp eq i32 %"191", 0
  br i1 %"192", label %DiskPerfDispatchPnp_bb71, label %DiskPerfDispatchPnp_bb70

DiskPerfDispatchPnp_bb70:                         ; preds = %DiskPerfDispatchPnp_bb69
  %"193" = call i32 @__VERIFIER_nondet_int() #4
  %"194" = icmp eq i32 %"193", 1
  %..i8.i.i = select i1 %"194", i32 -1073741823, i32 259
  br label %DiskPerfDispatchPnp_bb71

DiskPerfDispatchPnp_bb71:                         ; preds = %DiskPerfDispatchPnp_bb70, %DiskPerfDispatchPnp_bb69
  %returnVal2.0.i9.i.i = phi i32 [ 0, %DiskPerfDispatchPnp_bb69 ], [ %..i8.i.i, %DiskPerfDispatchPnp_bb70 ]
  %"195" = load i32* @"'s", align 4
  %"196" = load i32* @"'NP", align 4
  %"197" = icmp eq i32 %"195", %"196"
  br i1 %"197", label %DiskPerfDispatchPnp_bb72, label %DiskPerfDispatchPnp_bb73

DiskPerfDispatchPnp_bb72:                         ; preds = %DiskPerfDispatchPnp_bb71
  %"198" = load i32* @"'IPC", align 4
  store i32 %"198", i32* @"'s", align 4
  store i32 %returnVal2.0.i9.i.i, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfDispatchPnp_IofCallDriver.exit10.i.i

DiskPerfDispatchPnp_bb73:                         ; preds = %DiskPerfDispatchPnp_bb71
  %"199" = load i32* @"'s", align 4
  %"200" = load i32* @"'MPR1", align 4
  %"201" = icmp eq i32 %"199", %"200"
  br i1 %"201", label %DiskPerfDispatchPnp_bb74, label %DiskPerfDispatchPnp_bb77

DiskPerfDispatchPnp_bb74:                         ; preds = %DiskPerfDispatchPnp_bb73
  %"202" = icmp eq i32 %returnVal2.0.i9.i.i, 259
  br i1 %"202", label %DiskPerfDispatchPnp_bb75, label %DiskPerfDispatchPnp_bb76

DiskPerfDispatchPnp_bb75:                         ; preds = %DiskPerfDispatchPnp_bb74
  %"203" = load i32* @"'MPR3", align 4
  store i32 %"203", i32* @"'s", align 4
  store i32 %returnVal2.0.i9.i.i, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfDispatchPnp_IofCallDriver.exit10.i.i

DiskPerfDispatchPnp_bb76:                         ; preds = %DiskPerfDispatchPnp_bb74
  %"204" = load i32* @"'NP", align 4
  store i32 %"204", i32* @"'s", align 4
  store i32 %returnVal2.0.i9.i.i, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfDispatchPnp_IofCallDriver.exit10.i.i

DiskPerfDispatchPnp_bb77:                         ; preds = %DiskPerfDispatchPnp_bb73
  %"205" = load i32* @"'s", align 4
  %"206" = load i32* @"'SKIP1", align 4
  %"207" = icmp eq i32 %"205", %"206"
  br i1 %"207", label %DiskPerfDispatchPnp_bb78, label %DiskPerfDispatchPnp_bb142

DiskPerfDispatchPnp_bb78:                         ; preds = %DiskPerfDispatchPnp_bb77
  %"208" = load i32* @"'SKIP2", align 4
  store i32 %"208", i32* @"'s", align 4
  store i32 %returnVal2.0.i9.i.i, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfDispatchPnp_IofCallDriver.exit10.i.i

DiskPerfDispatchPnp_IofCallDriver.exit10.i.i:     ; preds = %DiskPerfDispatchPnp_bb78, %DiskPerfDispatchPnp_bb76, %DiskPerfDispatchPnp_bb75, %DiskPerfDispatchPnp_bb72
  %"209" = sext i32 %returnVal2.0.i9.i.i to i64
  %"210" = icmp eq i64 %"209", 259
  br i1 %"210", label %DiskPerfDispatchPnp_bb79, label %DiskPerfDispatchPnp_bb85

DiskPerfDispatchPnp_bb79:                         ; preds = %DiskPerfDispatchPnp_IofCallDriver.exit10.i.i
  %"211" = load i32* @"'s", align 4
  %"212" = load i32* @"'MPR3", align 4
  %"213" = icmp eq i32 %"211", %"212"
  %"214" = load i32* @"'setEventCalled", align 4
  %"215" = icmp eq i32 %"214", 1
  %or.cond.i11.i.i = and i1 %"213", %"215"
  br i1 %or.cond.i11.i.i, label %DiskPerfDispatchPnp_bb80, label %DiskPerfDispatchPnp_bb81

DiskPerfDispatchPnp_bb80:                         ; preds = %DiskPerfDispatchPnp_bb79
  %"216" = load i32* @"'NP", align 4
  store i32 %"216", i32* @"'s", align 4
  store i32 0, i32* @"'setEventCalled", align 4
  br label %DiskPerfDispatchPnp_KeWaitForSingleObject.exit13.i.i

DiskPerfDispatchPnp_bb81:                         ; preds = %DiskPerfDispatchPnp_bb79
  %"217" = load i32* @"'customIrp", align 4
  %"218" = icmp eq i32 %"217", 1
  br i1 %"218", label %DiskPerfDispatchPnp_bb82, label %DiskPerfDispatchPnp_bb83

DiskPerfDispatchPnp_bb82:                         ; preds = %DiskPerfDispatchPnp_bb81
  %"219" = load i32* @"'NP", align 4
  store i32 %"219", i32* @"'s", align 4
  store i32 0, i32* @"'customIrp", align 4
  br label %DiskPerfDispatchPnp_KeWaitForSingleObject.exit13.i.i

DiskPerfDispatchPnp_bb83:                         ; preds = %DiskPerfDispatchPnp_bb81
  %"220" = load i32* @"'s", align 4
  %"221" = load i32* @"'MPR3", align 4
  %"222" = icmp eq i32 %"220", %"221"
  br i1 %"222", label %DiskPerfDispatchPnp_bb84, label %DiskPerfDispatchPnp_KeWaitForSingleObject.exit13.i.i

DiskPerfDispatchPnp_bb84:                         ; preds = %DiskPerfDispatchPnp_bb83
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfDispatchPnp_KeWaitForSingleObject.exit13.i.i: ; preds = %DiskPerfDispatchPnp_bb83, %DiskPerfDispatchPnp_bb82, %DiskPerfDispatchPnp_bb80
  %"223" = call i32 @__VERIFIER_nondet_int() #4
  br label %DiskPerfDispatchPnp_bb85

DiskPerfDispatchPnp_bb85:                         ; preds = %DiskPerfDispatchPnp_KeWaitForSingleObject.exit13.i.i, %DiskPerfDispatchPnp_IofCallDriver.exit10.i.i
  %status.1.i.i = phi i32 [ %"80", %DiskPerfDispatchPnp_KeWaitForSingleObject.exit13.i.i ], [ %returnVal2.0.i9.i.i, %DiskPerfDispatchPnp_IofCallDriver.exit10.i.i ]
  %"224" = sext i32 %status.1.i.i to i64
  %"225" = icmp eq i64 %"224", -2147483643
  br i1 %"225", label %DiskPerfDispatchPnp_bb86, label %DiskPerfDispatchPnp_bb114

DiskPerfDispatchPnp_bb86:                         ; preds = %DiskPerfDispatchPnp_bb85
  %"226" = icmp ne i32 %"88", 0
  br i1 %"226", label %DiskPerfDispatchPnp_bb87, label %DiskPerfDispatchPnp_DiskPerfRegisterDevice.exit.i

DiskPerfDispatchPnp_bb87:                         ; preds = %DiskPerfDispatchPnp_bb86
  %"227" = call i32 @__VERIFIER_nondet_int() #4
  store i32 1, i32* @"'customIrp", align 4
  %"228" = call i32 @__VERIFIER_nondet_int() #4
  %"229" = icmp eq i32 %"228", 0
  %.0.i14.i.i = select i1 %"229", i32 %"227", i32 0
  %"230" = icmp ne i32 %.0.i14.i.i, 0
  br i1 %"230", label %DiskPerfDispatchPnp_bb88, label %DiskPerfDispatchPnp_DiskPerfRegisterDevice.exit.i

DiskPerfDispatchPnp_bb88:                         ; preds = %DiskPerfDispatchPnp_bb87
  %"231" = call i32 @__VERIFIER_nondet_int() #4
  %"232" = load i32* @"'compRegistered", align 4
  %"233" = icmp ne i32 %"232", 0
  br i1 %"233", label %DiskPerfDispatchPnp_bb89, label %DiskPerfDispatchPnp_bb97

DiskPerfDispatchPnp_bb89:                         ; preds = %DiskPerfDispatchPnp_bb88
  %"234" = load i32* @"'routine", align 4
  %"235" = icmp eq i32 %"234", 0
  %"236" = call i32 @__VERIFIER_nondet_int() #4
  br i1 %"235", label %DiskPerfDispatchPnp_bb90, label %DiskPerfDispatchPnp_bb91

DiskPerfDispatchPnp_bb90:                         ; preds = %DiskPerfDispatchPnp_bb89
  store i32 1, i32* @"'setEventCalled", align 4
  br label %DiskPerfDispatchPnp_DiskPerfIoCompletion.exit.i17.i.i

DiskPerfDispatchPnp_bb91:                         ; preds = %DiskPerfDispatchPnp_bb89
  %"237" = call i32 @__VERIFIER_nondet_int() #4
  %"238" = call i32 @__VERIFIER_nondet_int() #4
  %"239" = call i32 @__VERIFIER_nondet_int() #4
  %"240" = call i32 @__VERIFIER_nondet_int() #4
  %"241" = call i32 @__VERIFIER_nondet_int() #4
  %"242" = call i32 @__VERIFIER_nondet_int() #4
  %"243" = call i32 @__VERIFIER_nondet_int() #4
  %"244" = call i32 @__VERIFIER_nondet_int() #4
  %"245" = call i32 @__VERIFIER_nondet_int() #4
  %"246" = call i32 @__VERIFIER_nondet_int() #4
  %"247" = call i32 @__VERIFIER_nondet_int() #4
  %"248" = call i32 @__VERIFIER_nondet_int() #4
  %"249" = call i32 @__VERIFIER_nondet_int() #4
  %"250" = icmp ne i32 %"248", 0
  %"251" = icmp ne i32 %"247", 0
  %or.cond.i15.i.i = and i1 %"250", %"251"
  br i1 %or.cond.i15.i.i, label %DiskPerfDispatchPnp_bb92, label %DiskPerfDispatchPnp_DiskPerfIoCompletion.exit.i17.i.i

DiskPerfDispatchPnp_bb92:                         ; preds = %DiskPerfDispatchPnp_bb91
  %"252" = load i32* @"'pended", align 4
  %"253" = icmp eq i32 %"252", 0
  br i1 %"253", label %DiskPerfDispatchPnp_bb93, label %DiskPerfDispatchPnp_bb94

DiskPerfDispatchPnp_bb93:                         ; preds = %DiskPerfDispatchPnp_bb92
  store i32 1, i32* @"'pended", align 4
  br label %DiskPerfDispatchPnp_DiskPerfIoCompletion.exit.i17.i.i

DiskPerfDispatchPnp_bb94:                         ; preds = %DiskPerfDispatchPnp_bb92
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfDispatchPnp_DiskPerfIoCompletion.exit.i17.i.i: ; preds = %DiskPerfDispatchPnp_bb93, %DiskPerfDispatchPnp_bb91, %DiskPerfDispatchPnp_bb90
  %compRetStatus.0.i16.i.i = phi i32 [ -1073741802, %DiskPerfDispatchPnp_bb90 ], [ 0, %DiskPerfDispatchPnp_bb91 ], [ 0, %DiskPerfDispatchPnp_bb93 ]
  %"254" = sext i32 %compRetStatus.0.i16.i.i to i64
  %"255" = icmp eq i64 %"254", -1073741802
  br i1 %"255", label %DiskPerfDispatchPnp_bb95, label %DiskPerfDispatchPnp_bb97

DiskPerfDispatchPnp_bb95:                         ; preds = %DiskPerfDispatchPnp_DiskPerfIoCompletion.exit.i17.i.i
  %"256" = load i32* @"'s", align 4
  %"257" = load i32* @"'NP", align 4
  %"258" = icmp eq i32 %"256", %"257"
  br i1 %"258", label %DiskPerfDispatchPnp_stubMoreProcessingRequired.exit.i18.i.i, label %DiskPerfDispatchPnp_bb96

DiskPerfDispatchPnp_stubMoreProcessingRequired.exit.i18.i.i: ; preds = %DiskPerfDispatchPnp_bb95
  %"259" = load i32* @"'MPR1", align 4
  store i32 %"259", i32* @"'s", align 4
  br label %DiskPerfDispatchPnp_bb97

DiskPerfDispatchPnp_bb96:                         ; preds = %DiskPerfDispatchPnp_bb95
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfDispatchPnp_bb97:                         ; preds = %DiskPerfDispatchPnp_stubMoreProcessingRequired.exit.i18.i.i, %DiskPerfDispatchPnp_DiskPerfIoCompletion.exit.i17.i.i, %DiskPerfDispatchPnp_bb88
  %"260" = call i32 @__VERIFIER_nondet_int() #4
  %"261" = icmp eq i32 %"260", 0
  br i1 %"261", label %DiskPerfDispatchPnp_bb99, label %DiskPerfDispatchPnp_bb98

DiskPerfDispatchPnp_bb98:                         ; preds = %DiskPerfDispatchPnp_bb97
  %"262" = call i32 @__VERIFIER_nondet_int() #4
  %"263" = icmp eq i32 %"262", 1
  %..i19.i.i = select i1 %"263", i32 -1073741823, i32 259
  br label %DiskPerfDispatchPnp_bb99

DiskPerfDispatchPnp_bb99:                         ; preds = %DiskPerfDispatchPnp_bb98, %DiskPerfDispatchPnp_bb97
  %returnVal2.0.i20.i.i = phi i32 [ 0, %DiskPerfDispatchPnp_bb97 ], [ %..i19.i.i, %DiskPerfDispatchPnp_bb98 ]
  %"264" = load i32* @"'s", align 4
  %"265" = load i32* @"'NP", align 4
  %"266" = icmp eq i32 %"264", %"265"
  br i1 %"266", label %DiskPerfDispatchPnp_bb100, label %DiskPerfDispatchPnp_bb101

DiskPerfDispatchPnp_bb100:                        ; preds = %DiskPerfDispatchPnp_bb99
  %"267" = load i32* @"'IPC", align 4
  store i32 %"267", i32* @"'s", align 4
  store i32 %returnVal2.0.i20.i.i, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfDispatchPnp_IofCallDriver.exit21.i.i

DiskPerfDispatchPnp_bb101:                        ; preds = %DiskPerfDispatchPnp_bb99
  %"268" = load i32* @"'s", align 4
  %"269" = load i32* @"'MPR1", align 4
  %"270" = icmp eq i32 %"268", %"269"
  br i1 %"270", label %DiskPerfDispatchPnp_bb102, label %DiskPerfDispatchPnp_bb105

DiskPerfDispatchPnp_bb102:                        ; preds = %DiskPerfDispatchPnp_bb101
  %"271" = icmp eq i32 %returnVal2.0.i20.i.i, 259
  br i1 %"271", label %DiskPerfDispatchPnp_bb103, label %DiskPerfDispatchPnp_bb104

DiskPerfDispatchPnp_bb103:                        ; preds = %DiskPerfDispatchPnp_bb102
  %"272" = load i32* @"'MPR3", align 4
  store i32 %"272", i32* @"'s", align 4
  store i32 %returnVal2.0.i20.i.i, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfDispatchPnp_IofCallDriver.exit21.i.i

DiskPerfDispatchPnp_bb104:                        ; preds = %DiskPerfDispatchPnp_bb102
  %"273" = load i32* @"'NP", align 4
  store i32 %"273", i32* @"'s", align 4
  store i32 %returnVal2.0.i20.i.i, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfDispatchPnp_IofCallDriver.exit21.i.i

DiskPerfDispatchPnp_bb105:                        ; preds = %DiskPerfDispatchPnp_bb101
  %"274" = load i32* @"'s", align 4
  %"275" = load i32* @"'SKIP1", align 4
  %"276" = icmp eq i32 %"274", %"275"
  br i1 %"276", label %DiskPerfDispatchPnp_bb106, label %DiskPerfDispatchPnp_bb113

DiskPerfDispatchPnp_bb106:                        ; preds = %DiskPerfDispatchPnp_bb105
  %"277" = load i32* @"'SKIP2", align 4
  store i32 %"277", i32* @"'s", align 4
  store i32 %returnVal2.0.i20.i.i, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfDispatchPnp_IofCallDriver.exit21.i.i

DiskPerfDispatchPnp_IofCallDriver.exit21.i.i:     ; preds = %DiskPerfDispatchPnp_bb106, %DiskPerfDispatchPnp_bb104, %DiskPerfDispatchPnp_bb103, %DiskPerfDispatchPnp_bb100
  %"278" = sext i32 %returnVal2.0.i20.i.i to i64
  %"279" = icmp eq i64 %"278", 259
  br i1 %"279", label %DiskPerfDispatchPnp_bb107, label %DiskPerfDispatchPnp_bb114

DiskPerfDispatchPnp_bb107:                        ; preds = %DiskPerfDispatchPnp_IofCallDriver.exit21.i.i
  %"280" = load i32* @"'s", align 4
  %"281" = load i32* @"'MPR3", align 4
  %"282" = icmp eq i32 %"280", %"281"
  %"283" = load i32* @"'setEventCalled", align 4
  %"284" = icmp eq i32 %"283", 1
  %or.cond.i22.i.i = and i1 %"282", %"284"
  br i1 %or.cond.i22.i.i, label %DiskPerfDispatchPnp_bb108, label %DiskPerfDispatchPnp_bb109

DiskPerfDispatchPnp_bb108:                        ; preds = %DiskPerfDispatchPnp_bb107
  %"285" = load i32* @"'NP", align 4
  store i32 %"285", i32* @"'s", align 4
  store i32 0, i32* @"'setEventCalled", align 4
  br label %DiskPerfDispatchPnp_KeWaitForSingleObject.exit24.i.i

DiskPerfDispatchPnp_bb109:                        ; preds = %DiskPerfDispatchPnp_bb107
  %"286" = load i32* @"'customIrp", align 4
  %"287" = icmp eq i32 %"286", 1
  br i1 %"287", label %DiskPerfDispatchPnp_bb110, label %DiskPerfDispatchPnp_bb111

DiskPerfDispatchPnp_bb110:                        ; preds = %DiskPerfDispatchPnp_bb109
  %"288" = load i32* @"'NP", align 4
  store i32 %"288", i32* @"'s", align 4
  store i32 0, i32* @"'customIrp", align 4
  br label %DiskPerfDispatchPnp_KeWaitForSingleObject.exit24.i.i

DiskPerfDispatchPnp_bb111:                        ; preds = %DiskPerfDispatchPnp_bb109
  %"289" = load i32* @"'s", align 4
  %"290" = load i32* @"'MPR3", align 4
  %"291" = icmp eq i32 %"289", %"290"
  br i1 %"291", label %DiskPerfDispatchPnp_bb112, label %DiskPerfDispatchPnp_KeWaitForSingleObject.exit24.i.i

DiskPerfDispatchPnp_bb112:                        ; preds = %DiskPerfDispatchPnp_bb111
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfDispatchPnp_KeWaitForSingleObject.exit24.i.i: ; preds = %DiskPerfDispatchPnp_bb111, %DiskPerfDispatchPnp_bb110, %DiskPerfDispatchPnp_bb108
  %"292" = call i32 @__VERIFIER_nondet_int() #4
  br label %DiskPerfDispatchPnp_bb114

DiskPerfDispatchPnp_bb113:                        ; preds = %DiskPerfDispatchPnp_bb105
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfDispatchPnp_bb114:                        ; preds = %DiskPerfDispatchPnp_KeWaitForSingleObject.exit24.i.i, %DiskPerfDispatchPnp_IofCallDriver.exit21.i.i, %DiskPerfDispatchPnp_bb85
  %status.3.i.i = phi i32 [ %status.1.i.i, %DiskPerfDispatchPnp_bb85 ], [ %"80", %DiskPerfDispatchPnp_KeWaitForSingleObject.exit24.i.i ], [ %returnVal2.0.i20.i.i, %DiskPerfDispatchPnp_IofCallDriver.exit21.i.i ]
  %"293" = icmp slt i32 %status.3.i.i, 0
  br i1 %"293", label %DiskPerfDispatchPnp_DiskPerfRegisterDevice.exit.i, label %DiskPerfDispatchPnp_bb115

DiskPerfDispatchPnp_bb115:                        ; preds = %DiskPerfDispatchPnp_bb114
  %"294" = call i32 @__VERIFIER_nondet_int() #4
  store i32 1, i32* @"'customIrp", align 4
  %"295" = call i32 @__VERIFIER_nondet_int() #4
  %"296" = icmp eq i32 %"295", 0
  %.0.i25.i.i = select i1 %"296", i32 %"294", i32 0
  %"297" = icmp ne i32 %.0.i25.i.i, 0
  br i1 %"297", label %DiskPerfDispatchPnp_bb116, label %DiskPerfDispatchPnp_DiskPerfRegisterDevice.exit.i

DiskPerfDispatchPnp_bb116:                        ; preds = %DiskPerfDispatchPnp_bb115
  %"298" = call i32 @__VERIFIER_nondet_int() #4
  %"299" = load i32* @"'compRegistered", align 4
  %"300" = icmp ne i32 %"299", 0
  br i1 %"300", label %DiskPerfDispatchPnp_bb117, label %DiskPerfDispatchPnp_bb125

DiskPerfDispatchPnp_bb117:                        ; preds = %DiskPerfDispatchPnp_bb116
  %"301" = load i32* @"'routine", align 4
  %"302" = icmp eq i32 %"301", 0
  %"303" = call i32 @__VERIFIER_nondet_int() #4
  br i1 %"302", label %DiskPerfDispatchPnp_bb118, label %DiskPerfDispatchPnp_bb119

DiskPerfDispatchPnp_bb118:                        ; preds = %DiskPerfDispatchPnp_bb117
  store i32 1, i32* @"'setEventCalled", align 4
  br label %DiskPerfDispatchPnp_DiskPerfIoCompletion.exit.i28.i.i

DiskPerfDispatchPnp_bb119:                        ; preds = %DiskPerfDispatchPnp_bb117
  %"304" = call i32 @__VERIFIER_nondet_int() #4
  %"305" = call i32 @__VERIFIER_nondet_int() #4
  %"306" = call i32 @__VERIFIER_nondet_int() #4
  %"307" = call i32 @__VERIFIER_nondet_int() #4
  %"308" = call i32 @__VERIFIER_nondet_int() #4
  %"309" = call i32 @__VERIFIER_nondet_int() #4
  %"310" = call i32 @__VERIFIER_nondet_int() #4
  %"311" = call i32 @__VERIFIER_nondet_int() #4
  %"312" = call i32 @__VERIFIER_nondet_int() #4
  %"313" = call i32 @__VERIFIER_nondet_int() #4
  %"314" = call i32 @__VERIFIER_nondet_int() #4
  %"315" = call i32 @__VERIFIER_nondet_int() #4
  %"316" = call i32 @__VERIFIER_nondet_int() #4
  %"317" = icmp ne i32 %"315", 0
  %"318" = icmp ne i32 %"314", 0
  %or.cond.i26.i.i = and i1 %"317", %"318"
  br i1 %or.cond.i26.i.i, label %DiskPerfDispatchPnp_bb120, label %DiskPerfDispatchPnp_DiskPerfIoCompletion.exit.i28.i.i

DiskPerfDispatchPnp_bb120:                        ; preds = %DiskPerfDispatchPnp_bb119
  %"319" = load i32* @"'pended", align 4
  %"320" = icmp eq i32 %"319", 0
  br i1 %"320", label %DiskPerfDispatchPnp_bb121, label %DiskPerfDispatchPnp_bb122

DiskPerfDispatchPnp_bb121:                        ; preds = %DiskPerfDispatchPnp_bb120
  store i32 1, i32* @"'pended", align 4
  br label %DiskPerfDispatchPnp_DiskPerfIoCompletion.exit.i28.i.i

DiskPerfDispatchPnp_bb122:                        ; preds = %DiskPerfDispatchPnp_bb120
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfDispatchPnp_DiskPerfIoCompletion.exit.i28.i.i: ; preds = %DiskPerfDispatchPnp_bb121, %DiskPerfDispatchPnp_bb119, %DiskPerfDispatchPnp_bb118
  %compRetStatus.0.i27.i.i = phi i32 [ -1073741802, %DiskPerfDispatchPnp_bb118 ], [ 0, %DiskPerfDispatchPnp_bb119 ], [ 0, %DiskPerfDispatchPnp_bb121 ]
  %"321" = sext i32 %compRetStatus.0.i27.i.i to i64
  %"322" = icmp eq i64 %"321", -1073741802
  br i1 %"322", label %DiskPerfDispatchPnp_bb123, label %DiskPerfDispatchPnp_bb125

DiskPerfDispatchPnp_bb123:                        ; preds = %DiskPerfDispatchPnp_DiskPerfIoCompletion.exit.i28.i.i
  %"323" = load i32* @"'s", align 4
  %"324" = load i32* @"'NP", align 4
  %"325" = icmp eq i32 %"323", %"324"
  br i1 %"325", label %DiskPerfDispatchPnp_stubMoreProcessingRequired.exit.i29.i.i, label %DiskPerfDispatchPnp_bb124

DiskPerfDispatchPnp_stubMoreProcessingRequired.exit.i29.i.i: ; preds = %DiskPerfDispatchPnp_bb123
  %"326" = load i32* @"'MPR1", align 4
  store i32 %"326", i32* @"'s", align 4
  br label %DiskPerfDispatchPnp_bb125

DiskPerfDispatchPnp_bb124:                        ; preds = %DiskPerfDispatchPnp_bb123
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfDispatchPnp_bb125:                        ; preds = %DiskPerfDispatchPnp_stubMoreProcessingRequired.exit.i29.i.i, %DiskPerfDispatchPnp_DiskPerfIoCompletion.exit.i28.i.i, %DiskPerfDispatchPnp_bb116
  %"327" = call i32 @__VERIFIER_nondet_int() #4
  %"328" = icmp eq i32 %"327", 0
  br i1 %"328", label %DiskPerfDispatchPnp_bb127, label %DiskPerfDispatchPnp_bb126

DiskPerfDispatchPnp_bb126:                        ; preds = %DiskPerfDispatchPnp_bb125
  %"329" = call i32 @__VERIFIER_nondet_int() #4
  %"330" = icmp eq i32 %"329", 1
  %..i30.i.i = select i1 %"330", i32 -1073741823, i32 259
  br label %DiskPerfDispatchPnp_bb127

DiskPerfDispatchPnp_bb127:                        ; preds = %DiskPerfDispatchPnp_bb126, %DiskPerfDispatchPnp_bb125
  %returnVal2.0.i31.i.i = phi i32 [ 0, %DiskPerfDispatchPnp_bb125 ], [ %..i30.i.i, %DiskPerfDispatchPnp_bb126 ]
  %"331" = load i32* @"'s", align 4
  %"332" = load i32* @"'NP", align 4
  %"333" = icmp eq i32 %"331", %"332"
  br i1 %"333", label %DiskPerfDispatchPnp_bb128, label %DiskPerfDispatchPnp_bb129

DiskPerfDispatchPnp_bb128:                        ; preds = %DiskPerfDispatchPnp_bb127
  %"334" = load i32* @"'IPC", align 4
  store i32 %"334", i32* @"'s", align 4
  store i32 %returnVal2.0.i31.i.i, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfDispatchPnp_IofCallDriver.exit32.i.i

DiskPerfDispatchPnp_bb129:                        ; preds = %DiskPerfDispatchPnp_bb127
  %"335" = load i32* @"'s", align 4
  %"336" = load i32* @"'MPR1", align 4
  %"337" = icmp eq i32 %"335", %"336"
  br i1 %"337", label %DiskPerfDispatchPnp_bb130, label %DiskPerfDispatchPnp_bb133

DiskPerfDispatchPnp_bb130:                        ; preds = %DiskPerfDispatchPnp_bb129
  %"338" = icmp eq i32 %returnVal2.0.i31.i.i, 259
  br i1 %"338", label %DiskPerfDispatchPnp_bb131, label %DiskPerfDispatchPnp_bb132

DiskPerfDispatchPnp_bb131:                        ; preds = %DiskPerfDispatchPnp_bb130
  %"339" = load i32* @"'MPR3", align 4
  store i32 %"339", i32* @"'s", align 4
  store i32 %returnVal2.0.i31.i.i, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfDispatchPnp_IofCallDriver.exit32.i.i

DiskPerfDispatchPnp_bb132:                        ; preds = %DiskPerfDispatchPnp_bb130
  %"340" = load i32* @"'NP", align 4
  store i32 %"340", i32* @"'s", align 4
  store i32 %returnVal2.0.i31.i.i, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfDispatchPnp_IofCallDriver.exit32.i.i

DiskPerfDispatchPnp_bb133:                        ; preds = %DiskPerfDispatchPnp_bb129
  %"341" = load i32* @"'s", align 4
  %"342" = load i32* @"'SKIP1", align 4
  %"343" = icmp eq i32 %"341", %"342"
  br i1 %"343", label %DiskPerfDispatchPnp_bb134, label %DiskPerfDispatchPnp_bb141

DiskPerfDispatchPnp_bb134:                        ; preds = %DiskPerfDispatchPnp_bb133
  %"344" = load i32* @"'SKIP2", align 4
  store i32 %"344", i32* @"'s", align 4
  store i32 %returnVal2.0.i31.i.i, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfDispatchPnp_IofCallDriver.exit32.i.i

DiskPerfDispatchPnp_IofCallDriver.exit32.i.i:     ; preds = %DiskPerfDispatchPnp_bb134, %DiskPerfDispatchPnp_bb132, %DiskPerfDispatchPnp_bb131, %DiskPerfDispatchPnp_bb128
  %"345" = sext i32 %returnVal2.0.i31.i.i to i64
  %"346" = icmp eq i64 %"345", 259
  br i1 %"346", label %DiskPerfDispatchPnp_bb135, label %DiskPerfDispatchPnp_DiskPerfRegisterDevice.exit.i

DiskPerfDispatchPnp_bb135:                        ; preds = %DiskPerfDispatchPnp_IofCallDriver.exit32.i.i
  %"347" = load i32* @"'s", align 4
  %"348" = load i32* @"'MPR3", align 4
  %"349" = icmp eq i32 %"347", %"348"
  %"350" = load i32* @"'setEventCalled", align 4
  %"351" = icmp eq i32 %"350", 1
  %or.cond.i33.i.i = and i1 %"349", %"351"
  br i1 %or.cond.i33.i.i, label %DiskPerfDispatchPnp_bb136, label %DiskPerfDispatchPnp_bb137

DiskPerfDispatchPnp_bb136:                        ; preds = %DiskPerfDispatchPnp_bb135
  %"352" = load i32* @"'NP", align 4
  store i32 %"352", i32* @"'s", align 4
  store i32 0, i32* @"'setEventCalled", align 4
  br label %DiskPerfDispatchPnp_KeWaitForSingleObject.exit35.i.i

DiskPerfDispatchPnp_bb137:                        ; preds = %DiskPerfDispatchPnp_bb135
  %"353" = load i32* @"'customIrp", align 4
  %"354" = icmp eq i32 %"353", 1
  br i1 %"354", label %DiskPerfDispatchPnp_bb138, label %DiskPerfDispatchPnp_bb139

DiskPerfDispatchPnp_bb138:                        ; preds = %DiskPerfDispatchPnp_bb137
  %"355" = load i32* @"'NP", align 4
  store i32 %"355", i32* @"'s", align 4
  store i32 0, i32* @"'customIrp", align 4
  br label %DiskPerfDispatchPnp_KeWaitForSingleObject.exit35.i.i

DiskPerfDispatchPnp_bb139:                        ; preds = %DiskPerfDispatchPnp_bb137
  %"356" = load i32* @"'s", align 4
  %"357" = load i32* @"'MPR3", align 4
  %"358" = icmp eq i32 %"356", %"357"
  br i1 %"358", label %DiskPerfDispatchPnp_bb140, label %DiskPerfDispatchPnp_KeWaitForSingleObject.exit35.i.i

DiskPerfDispatchPnp_bb140:                        ; preds = %DiskPerfDispatchPnp_bb139
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfDispatchPnp_KeWaitForSingleObject.exit35.i.i: ; preds = %DiskPerfDispatchPnp_bb139, %DiskPerfDispatchPnp_bb138, %DiskPerfDispatchPnp_bb136
  %"359" = call i32 @__VERIFIER_nondet_int() #4
  br label %DiskPerfDispatchPnp_DiskPerfRegisterDevice.exit.i

DiskPerfDispatchPnp_bb141:                        ; preds = %DiskPerfDispatchPnp_bb133
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfDispatchPnp_bb142:                        ; preds = %DiskPerfDispatchPnp_bb77
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfDispatchPnp_bb143:                        ; preds = %DiskPerfDispatchPnp_bb50
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfDispatchPnp_DiskPerfRegisterDevice.exit.i: ; preds = %DiskPerfDispatchPnp_KeWaitForSingleObject.exit35.i.i, %DiskPerfDispatchPnp_IofCallDriver.exit32.i.i, %DiskPerfDispatchPnp_bb115, %DiskPerfDispatchPnp_bb114, %DiskPerfDispatchPnp_bb87, %DiskPerfDispatchPnp_bb86, %DiskPerfDispatchPnp_bb59, %DiskPerfDispatchPnp_bb58, %DiskPerfDispatchPnp_DiskPerfForwardIrpSynchronous.exit.i
  store i32 %status.0.i.i, i32* @"'myStatus", align 4
  %"360" = load i32* @"'s", align 4
  %"361" = load i32* @"'NP", align 4
  %"362" = icmp eq i32 %"360", %"361"
  br i1 %"362", label %DiskPerfDispatchPnp_DiskPerfStartDevice.exit, label %DiskPerfDispatchPnp_bb144

DiskPerfDispatchPnp_DiskPerfStartDevice.exit:     ; preds = %DiskPerfDispatchPnp_DiskPerfRegisterDevice.exit.i
  %"363" = load i32* @"'DC", align 4
  store i32 %"363", i32* @"'s", align 4
  br label %DiskPerfDispatchPnp_DiskPerfSendToNextDriver.exit

DiskPerfDispatchPnp_bb144:                        ; preds = %DiskPerfDispatchPnp_DiskPerfRegisterDevice.exit.i
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfDispatchPnp_bb145:                        ; preds = %DiskPerfDispatchPnp_bb25
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfDispatchPnp_LeafBlock12:                  ; preds = %DiskPerfDispatchPnp_NodeBlock
  %SwitchLeaf13 = icmp eq i32 %"2", 2
  br i1 %SwitchLeaf13, label %DiskPerfDispatchPnp_bb146, label %DiskPerfDispatchPnp_NewDefault

DiskPerfDispatchPnp_bb146:                        ; preds = %DiskPerfDispatchPnp_LeafBlock12
  %"364" = call i32 @__VERIFIER_nondet_int() #4
  %"365" = call i32 @__VERIFIER_nondet_int() #4
  %"366" = call i32 @__VERIFIER_nondet_int() #4
  %"367" = call i32 @__VERIFIER_nondet_int() #4
  %"368" = call i32 @__VERIFIER_nondet_int() #4
  %"369" = call i32 @__VERIFIER_nondet_int() #4
  %"370" = load i32* @"'s", align 4
  %"371" = load i32* @"'NP", align 4
  %"372" = icmp ne i32 %"370", %"371"
  br i1 %"372", label %DiskPerfDispatchPnp_bb147, label %DiskPerfDispatchPnp_bb148

DiskPerfDispatchPnp_bb147:                        ; preds = %DiskPerfDispatchPnp_bb146
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfDispatchPnp_bb148:                        ; preds = %DiskPerfDispatchPnp_bb146
  %"373" = load i32* @"'compRegistered", align 4
  %"374" = icmp ne i32 %"373", 0
  br i1 %"374", label %DiskPerfDispatchPnp_bb149, label %DiskPerfDispatchPnp_bb150

DiskPerfDispatchPnp_bb149:                        ; preds = %DiskPerfDispatchPnp_bb148
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfDispatchPnp_bb150:                        ; preds = %DiskPerfDispatchPnp_bb148
  store i32 1, i32* @"'compRegistered", align 4
  store i32 0, i32* @"'routine", align 4
  %"375" = call i32 @__VERIFIER_nondet_int() #4
  %"376" = load i32* @"'compRegistered", align 4
  %"377" = icmp ne i32 %"376", 0
  br i1 %"377", label %DiskPerfDispatchPnp_bb151, label %DiskPerfDispatchPnp_bb159

DiskPerfDispatchPnp_bb151:                        ; preds = %DiskPerfDispatchPnp_bb150
  %"378" = load i32* @"'routine", align 4
  %"379" = icmp eq i32 %"378", 0
  %"380" = call i32 @__VERIFIER_nondet_int() #4
  br i1 %"379", label %DiskPerfDispatchPnp_bb152, label %DiskPerfDispatchPnp_bb153

DiskPerfDispatchPnp_bb152:                        ; preds = %DiskPerfDispatchPnp_bb151
  store i32 1, i32* @"'setEventCalled", align 4
  br label %DiskPerfDispatchPnp_DiskPerfIoCompletion.exit.i.i.i3

DiskPerfDispatchPnp_bb153:                        ; preds = %DiskPerfDispatchPnp_bb151
  %"381" = call i32 @__VERIFIER_nondet_int() #4
  %"382" = call i32 @__VERIFIER_nondet_int() #4
  %"383" = call i32 @__VERIFIER_nondet_int() #4
  %"384" = call i32 @__VERIFIER_nondet_int() #4
  %"385" = call i32 @__VERIFIER_nondet_int() #4
  %"386" = call i32 @__VERIFIER_nondet_int() #4
  %"387" = call i32 @__VERIFIER_nondet_int() #4
  %"388" = call i32 @__VERIFIER_nondet_int() #4
  %"389" = call i32 @__VERIFIER_nondet_int() #4
  %"390" = call i32 @__VERIFIER_nondet_int() #4
  %"391" = call i32 @__VERIFIER_nondet_int() #4
  %"392" = call i32 @__VERIFIER_nondet_int() #4
  %"393" = call i32 @__VERIFIER_nondet_int() #4
  %"394" = icmp ne i32 %"392", 0
  %"395" = icmp ne i32 %"391", 0
  %or.cond.i.i.i1 = and i1 %"394", %"395"
  br i1 %or.cond.i.i.i1, label %DiskPerfDispatchPnp_bb154, label %DiskPerfDispatchPnp_DiskPerfIoCompletion.exit.i.i.i3

DiskPerfDispatchPnp_bb154:                        ; preds = %DiskPerfDispatchPnp_bb153
  %"396" = load i32* @"'pended", align 4
  %"397" = icmp eq i32 %"396", 0
  br i1 %"397", label %DiskPerfDispatchPnp_bb155, label %DiskPerfDispatchPnp_bb156

DiskPerfDispatchPnp_bb155:                        ; preds = %DiskPerfDispatchPnp_bb154
  store i32 1, i32* @"'pended", align 4
  br label %DiskPerfDispatchPnp_DiskPerfIoCompletion.exit.i.i.i3

DiskPerfDispatchPnp_bb156:                        ; preds = %DiskPerfDispatchPnp_bb154
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfDispatchPnp_DiskPerfIoCompletion.exit.i.i.i3: ; preds = %DiskPerfDispatchPnp_bb155, %DiskPerfDispatchPnp_bb153, %DiskPerfDispatchPnp_bb152
  %compRetStatus.0.i.i.i2 = phi i32 [ -1073741802, %DiskPerfDispatchPnp_bb152 ], [ 0, %DiskPerfDispatchPnp_bb153 ], [ 0, %DiskPerfDispatchPnp_bb155 ]
  %"398" = sext i32 %compRetStatus.0.i.i.i2 to i64
  %"399" = icmp eq i64 %"398", -1073741802
  br i1 %"399", label %DiskPerfDispatchPnp_bb157, label %DiskPerfDispatchPnp_bb159

DiskPerfDispatchPnp_bb157:                        ; preds = %DiskPerfDispatchPnp_DiskPerfIoCompletion.exit.i.i.i3
  %"400" = load i32* @"'s", align 4
  %"401" = load i32* @"'NP", align 4
  %"402" = icmp eq i32 %"400", %"401"
  br i1 %"402", label %DiskPerfDispatchPnp_stubMoreProcessingRequired.exit.i.i.i4, label %DiskPerfDispatchPnp_bb158

DiskPerfDispatchPnp_stubMoreProcessingRequired.exit.i.i.i4: ; preds = %DiskPerfDispatchPnp_bb157
  %"403" = load i32* @"'MPR1", align 4
  store i32 %"403", i32* @"'s", align 4
  br label %DiskPerfDispatchPnp_bb159

DiskPerfDispatchPnp_bb158:                        ; preds = %DiskPerfDispatchPnp_bb157
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfDispatchPnp_bb159:                        ; preds = %DiskPerfDispatchPnp_stubMoreProcessingRequired.exit.i.i.i4, %DiskPerfDispatchPnp_DiskPerfIoCompletion.exit.i.i.i3, %DiskPerfDispatchPnp_bb150
  %"404" = call i32 @__VERIFIER_nondet_int() #4
  %"405" = icmp eq i32 %"404", 0
  br i1 %"405", label %DiskPerfDispatchPnp_bb161, label %DiskPerfDispatchPnp_bb160

DiskPerfDispatchPnp_bb160:                        ; preds = %DiskPerfDispatchPnp_bb159
  %"406" = call i32 @__VERIFIER_nondet_int() #4
  %"407" = icmp eq i32 %"406", 1
  %..i.i.i5 = select i1 %"407", i32 -1073741823, i32 259
  br label %DiskPerfDispatchPnp_bb161

DiskPerfDispatchPnp_bb161:                        ; preds = %DiskPerfDispatchPnp_bb160, %DiskPerfDispatchPnp_bb159
  %returnVal2.0.i.i.i6 = phi i32 [ 0, %DiskPerfDispatchPnp_bb159 ], [ %..i.i.i5, %DiskPerfDispatchPnp_bb160 ]
  %"408" = load i32* @"'s", align 4
  %"409" = load i32* @"'NP", align 4
  %"410" = icmp eq i32 %"408", %"409"
  br i1 %"410", label %DiskPerfDispatchPnp_bb162, label %DiskPerfDispatchPnp_bb163

DiskPerfDispatchPnp_bb162:                        ; preds = %DiskPerfDispatchPnp_bb161
  %"411" = load i32* @"'IPC", align 4
  store i32 %"411", i32* @"'s", align 4
  store i32 %returnVal2.0.i.i.i6, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfDispatchPnp_IofCallDriver.exit.i.i7

DiskPerfDispatchPnp_bb163:                        ; preds = %DiskPerfDispatchPnp_bb161
  %"412" = load i32* @"'s", align 4
  %"413" = load i32* @"'MPR1", align 4
  %"414" = icmp eq i32 %"412", %"413"
  br i1 %"414", label %DiskPerfDispatchPnp_bb164, label %DiskPerfDispatchPnp_bb167

DiskPerfDispatchPnp_bb164:                        ; preds = %DiskPerfDispatchPnp_bb163
  %"415" = icmp eq i32 %returnVal2.0.i.i.i6, 259
  br i1 %"415", label %DiskPerfDispatchPnp_bb165, label %DiskPerfDispatchPnp_bb166

DiskPerfDispatchPnp_bb165:                        ; preds = %DiskPerfDispatchPnp_bb164
  %"416" = load i32* @"'MPR3", align 4
  store i32 %"416", i32* @"'s", align 4
  store i32 %returnVal2.0.i.i.i6, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfDispatchPnp_IofCallDriver.exit.i.i7

DiskPerfDispatchPnp_bb166:                        ; preds = %DiskPerfDispatchPnp_bb164
  %"417" = load i32* @"'NP", align 4
  store i32 %"417", i32* @"'s", align 4
  store i32 %returnVal2.0.i.i.i6, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfDispatchPnp_IofCallDriver.exit.i.i7

DiskPerfDispatchPnp_bb167:                        ; preds = %DiskPerfDispatchPnp_bb163
  %"418" = load i32* @"'s", align 4
  %"419" = load i32* @"'SKIP1", align 4
  %"420" = icmp eq i32 %"418", %"419"
  br i1 %"420", label %DiskPerfDispatchPnp_bb168, label %DiskPerfDispatchPnp_bb176

DiskPerfDispatchPnp_bb168:                        ; preds = %DiskPerfDispatchPnp_bb167
  %"421" = load i32* @"'SKIP2", align 4
  store i32 %"421", i32* @"'s", align 4
  store i32 %returnVal2.0.i.i.i6, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfDispatchPnp_IofCallDriver.exit.i.i7

DiskPerfDispatchPnp_IofCallDriver.exit.i.i7:      ; preds = %DiskPerfDispatchPnp_bb168, %DiskPerfDispatchPnp_bb166, %DiskPerfDispatchPnp_bb165, %DiskPerfDispatchPnp_bb162
  %"422" = sext i32 %returnVal2.0.i.i.i6 to i64
  %"423" = icmp eq i64 %"422", 259
  br i1 %"423", label %DiskPerfDispatchPnp_bb169, label %DiskPerfDispatchPnp_DiskPerfForwardIrpSynchronous.exit.i11

DiskPerfDispatchPnp_bb169:                        ; preds = %DiskPerfDispatchPnp_IofCallDriver.exit.i.i7
  %"424" = load i32* @"'s", align 4
  %"425" = load i32* @"'MPR3", align 4
  %"426" = icmp eq i32 %"424", %"425"
  %"427" = load i32* @"'setEventCalled", align 4
  %"428" = icmp eq i32 %"427", 1
  %or.cond.i2.i.i8 = and i1 %"426", %"428"
  br i1 %or.cond.i2.i.i8, label %DiskPerfDispatchPnp_bb170, label %DiskPerfDispatchPnp_bb171

DiskPerfDispatchPnp_bb170:                        ; preds = %DiskPerfDispatchPnp_bb169
  %"429" = load i32* @"'NP", align 4
  store i32 %"429", i32* @"'s", align 4
  store i32 0, i32* @"'setEventCalled", align 4
  br label %DiskPerfDispatchPnp_KeWaitForSingleObject.exit.i.i9

DiskPerfDispatchPnp_bb171:                        ; preds = %DiskPerfDispatchPnp_bb169
  %"430" = load i32* @"'customIrp", align 4
  %"431" = icmp eq i32 %"430", 1
  br i1 %"431", label %DiskPerfDispatchPnp_bb172, label %DiskPerfDispatchPnp_bb173

DiskPerfDispatchPnp_bb172:                        ; preds = %DiskPerfDispatchPnp_bb171
  %"432" = load i32* @"'NP", align 4
  store i32 %"432", i32* @"'s", align 4
  store i32 0, i32* @"'customIrp", align 4
  br label %DiskPerfDispatchPnp_KeWaitForSingleObject.exit.i.i9

DiskPerfDispatchPnp_bb173:                        ; preds = %DiskPerfDispatchPnp_bb171
  %"433" = load i32* @"'s", align 4
  %"434" = load i32* @"'MPR3", align 4
  %"435" = icmp eq i32 %"433", %"434"
  br i1 %"435", label %DiskPerfDispatchPnp_bb174, label %DiskPerfDispatchPnp_KeWaitForSingleObject.exit.i.i9

DiskPerfDispatchPnp_bb174:                        ; preds = %DiskPerfDispatchPnp_bb173
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfDispatchPnp_KeWaitForSingleObject.exit.i.i9: ; preds = %DiskPerfDispatchPnp_bb173, %DiskPerfDispatchPnp_bb172, %DiskPerfDispatchPnp_bb170
  %"436" = call i32 @__VERIFIER_nondet_int() #4
  %"437" = load i32* @"'myStatus", align 4
  br label %DiskPerfDispatchPnp_DiskPerfForwardIrpSynchronous.exit.i11

DiskPerfDispatchPnp_DiskPerfForwardIrpSynchronous.exit.i11: ; preds = %DiskPerfDispatchPnp_KeWaitForSingleObject.exit.i.i9, %DiskPerfDispatchPnp_IofCallDriver.exit.i.i7
  %status.0.i.i10 = phi i32 [ %"437", %DiskPerfDispatchPnp_KeWaitForSingleObject.exit.i.i9 ], [ %returnVal2.0.i.i.i6, %DiskPerfDispatchPnp_IofCallDriver.exit.i.i7 ]
  store i32 %status.0.i.i10, i32* @"'myStatus", align 4
  %"438" = load i32* @"'s", align 4
  %"439" = load i32* @"'NP", align 4
  %"440" = icmp eq i32 %"438", %"439"
  br i1 %"440", label %DiskPerfDispatchPnp_DiskPerfRemoveDevice.exit, label %DiskPerfDispatchPnp_bb175

DiskPerfDispatchPnp_DiskPerfRemoveDevice.exit:    ; preds = %DiskPerfDispatchPnp_DiskPerfForwardIrpSynchronous.exit.i11
  %"441" = load i32* @"'DC", align 4
  store i32 %"441", i32* @"'s", align 4
  br label %DiskPerfDispatchPnp_DiskPerfSendToNextDriver.exit

DiskPerfDispatchPnp_bb175:                        ; preds = %DiskPerfDispatchPnp_DiskPerfForwardIrpSynchronous.exit.i11
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfDispatchPnp_bb176:                        ; preds = %DiskPerfDispatchPnp_bb167
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfDispatchPnp_NewDefault:                   ; preds = %DiskPerfDispatchPnp_LeafBlock12, %DiskPerfDispatchPnp_LeafBlock
  br label %DiskPerfDispatchPnp_bb177

DiskPerfDispatchPnp_bb177:                        ; preds = %DiskPerfDispatchPnp_NewDefault
  %"442" = call i32 @__VERIFIER_nondet_int() #4
  %"443" = call i32 @__VERIFIER_nondet_int() #4
  %"444" = call i32 @__VERIFIER_nondet_int() #4
  %"445" = call i32 @__VERIFIER_nondet_int() #4
  %"446" = load i32* @"'s", align 4
  %"447" = load i32* @"'NP", align 4
  %"448" = icmp eq i32 %"446", %"447"
  br i1 %"448", label %DiskPerfDispatchPnp_bb178, label %DiskPerfDispatchPnp_bb198

DiskPerfDispatchPnp_bb178:                        ; preds = %DiskPerfDispatchPnp_bb177
  %"449" = load i32* @"'SKIP1", align 4
  store i32 %"449", i32* @"'s", align 4
  %"450" = call i32 @__VERIFIER_nondet_int() #4
  %"451" = load i32* @"'compRegistered", align 4
  %"452" = icmp ne i32 %"451", 0
  br i1 %"452", label %DiskPerfDispatchPnp_bb179, label %DiskPerfDispatchPnp_bb187

DiskPerfDispatchPnp_bb179:                        ; preds = %DiskPerfDispatchPnp_bb178
  %"453" = load i32* @"'routine", align 4
  %"454" = icmp eq i32 %"453", 0
  %"455" = call i32 @__VERIFIER_nondet_int() #4
  br i1 %"454", label %DiskPerfDispatchPnp_bb180, label %DiskPerfDispatchPnp_bb181

DiskPerfDispatchPnp_bb180:                        ; preds = %DiskPerfDispatchPnp_bb179
  store i32 1, i32* @"'setEventCalled", align 4
  br label %DiskPerfDispatchPnp_DiskPerfIoCompletion.exit.i.i

DiskPerfDispatchPnp_bb181:                        ; preds = %DiskPerfDispatchPnp_bb179
  %"456" = call i32 @__VERIFIER_nondet_int() #4
  %"457" = call i32 @__VERIFIER_nondet_int() #4
  %"458" = call i32 @__VERIFIER_nondet_int() #4
  %"459" = call i32 @__VERIFIER_nondet_int() #4
  %"460" = call i32 @__VERIFIER_nondet_int() #4
  %"461" = call i32 @__VERIFIER_nondet_int() #4
  %"462" = call i32 @__VERIFIER_nondet_int() #4
  %"463" = call i32 @__VERIFIER_nondet_int() #4
  %"464" = call i32 @__VERIFIER_nondet_int() #4
  %"465" = call i32 @__VERIFIER_nondet_int() #4
  %"466" = call i32 @__VERIFIER_nondet_int() #4
  %"467" = call i32 @__VERIFIER_nondet_int() #4
  %"468" = call i32 @__VERIFIER_nondet_int() #4
  %"469" = icmp ne i32 %"467", 0
  %"470" = icmp ne i32 %"466", 0
  %or.cond.i.i = and i1 %"469", %"470"
  br i1 %or.cond.i.i, label %DiskPerfDispatchPnp_bb182, label %DiskPerfDispatchPnp_DiskPerfIoCompletion.exit.i.i

DiskPerfDispatchPnp_bb182:                        ; preds = %DiskPerfDispatchPnp_bb181
  %"471" = load i32* @"'pended", align 4
  %"472" = icmp eq i32 %"471", 0
  br i1 %"472", label %DiskPerfDispatchPnp_bb183, label %DiskPerfDispatchPnp_bb184

DiskPerfDispatchPnp_bb183:                        ; preds = %DiskPerfDispatchPnp_bb182
  store i32 1, i32* @"'pended", align 4
  br label %DiskPerfDispatchPnp_DiskPerfIoCompletion.exit.i.i

DiskPerfDispatchPnp_bb184:                        ; preds = %DiskPerfDispatchPnp_bb182
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfDispatchPnp_DiskPerfIoCompletion.exit.i.i: ; preds = %DiskPerfDispatchPnp_bb183, %DiskPerfDispatchPnp_bb181, %DiskPerfDispatchPnp_bb180
  %compRetStatus.0.i.i = phi i32 [ -1073741802, %DiskPerfDispatchPnp_bb180 ], [ 0, %DiskPerfDispatchPnp_bb181 ], [ 0, %DiskPerfDispatchPnp_bb183 ]
  %"473" = sext i32 %compRetStatus.0.i.i to i64
  %"474" = icmp eq i64 %"473", -1073741802
  br i1 %"474", label %DiskPerfDispatchPnp_bb185, label %DiskPerfDispatchPnp_bb187

DiskPerfDispatchPnp_bb185:                        ; preds = %DiskPerfDispatchPnp_DiskPerfIoCompletion.exit.i.i
  %"475" = load i32* @"'s", align 4
  %"476" = load i32* @"'NP", align 4
  %"477" = icmp eq i32 %"475", %"476"
  br i1 %"477", label %DiskPerfDispatchPnp_stubMoreProcessingRequired.exit.i.i, label %DiskPerfDispatchPnp_bb186

DiskPerfDispatchPnp_stubMoreProcessingRequired.exit.i.i: ; preds = %DiskPerfDispatchPnp_bb185
  %"478" = load i32* @"'MPR1", align 4
  store i32 %"478", i32* @"'s", align 4
  br label %DiskPerfDispatchPnp_bb187

DiskPerfDispatchPnp_bb186:                        ; preds = %DiskPerfDispatchPnp_bb185
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfDispatchPnp_bb187:                        ; preds = %DiskPerfDispatchPnp_stubMoreProcessingRequired.exit.i.i, %DiskPerfDispatchPnp_DiskPerfIoCompletion.exit.i.i, %DiskPerfDispatchPnp_bb178
  %"479" = call i32 @__VERIFIER_nondet_int() #4
  %"480" = icmp eq i32 %"479", 0
  br i1 %"480", label %DiskPerfDispatchPnp_bb189, label %DiskPerfDispatchPnp_bb188

DiskPerfDispatchPnp_bb188:                        ; preds = %DiskPerfDispatchPnp_bb187
  %"481" = call i32 @__VERIFIER_nondet_int() #4
  %"482" = icmp eq i32 %"481", 1
  %..i.i = select i1 %"482", i32 -1073741823, i32 259
  br label %DiskPerfDispatchPnp_bb189

DiskPerfDispatchPnp_bb189:                        ; preds = %DiskPerfDispatchPnp_bb188, %DiskPerfDispatchPnp_bb187
  %returnVal2.0.i.i = phi i32 [ 0, %DiskPerfDispatchPnp_bb187 ], [ %..i.i, %DiskPerfDispatchPnp_bb188 ]
  %"483" = load i32* @"'s", align 4
  %"484" = load i32* @"'NP", align 4
  %"485" = icmp eq i32 %"483", %"484"
  br i1 %"485", label %DiskPerfDispatchPnp_bb190, label %DiskPerfDispatchPnp_bb191

DiskPerfDispatchPnp_bb190:                        ; preds = %DiskPerfDispatchPnp_bb189
  %"486" = load i32* @"'IPC", align 4
  store i32 %"486", i32* @"'s", align 4
  store i32 %returnVal2.0.i.i, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfDispatchPnp_DiskPerfSendToNextDriver.exit

DiskPerfDispatchPnp_bb191:                        ; preds = %DiskPerfDispatchPnp_bb189
  %"487" = load i32* @"'s", align 4
  %"488" = load i32* @"'MPR1", align 4
  %"489" = icmp eq i32 %"487", %"488"
  br i1 %"489", label %DiskPerfDispatchPnp_bb192, label %DiskPerfDispatchPnp_bb195

DiskPerfDispatchPnp_bb192:                        ; preds = %DiskPerfDispatchPnp_bb191
  %"490" = icmp eq i32 %returnVal2.0.i.i, 259
  br i1 %"490", label %DiskPerfDispatchPnp_bb193, label %DiskPerfDispatchPnp_bb194

DiskPerfDispatchPnp_bb193:                        ; preds = %DiskPerfDispatchPnp_bb192
  %"491" = load i32* @"'MPR3", align 4
  store i32 %"491", i32* @"'s", align 4
  store i32 %returnVal2.0.i.i, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfDispatchPnp_DiskPerfSendToNextDriver.exit

DiskPerfDispatchPnp_bb194:                        ; preds = %DiskPerfDispatchPnp_bb192
  %"492" = load i32* @"'NP", align 4
  store i32 %"492", i32* @"'s", align 4
  store i32 %returnVal2.0.i.i, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfDispatchPnp_DiskPerfSendToNextDriver.exit

DiskPerfDispatchPnp_bb195:                        ; preds = %DiskPerfDispatchPnp_bb191
  %"493" = load i32* @"'s", align 4
  %"494" = load i32* @"'SKIP1", align 4
  %"495" = icmp eq i32 %"493", %"494"
  br i1 %"495", label %DiskPerfDispatchPnp_bb196, label %DiskPerfDispatchPnp_bb197

DiskPerfDispatchPnp_bb196:                        ; preds = %DiskPerfDispatchPnp_bb195
  %"496" = load i32* @"'SKIP2", align 4
  store i32 %"496", i32* @"'s", align 4
  store i32 %returnVal2.0.i.i, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfDispatchPnp_DiskPerfSendToNextDriver.exit

DiskPerfDispatchPnp_DiskPerfSendToNextDriver.exit: ; preds = %DiskPerfDispatchPnp_DiskPerfRemoveDevice.exit, %DiskPerfDispatchPnp_DiskPerfStartDevice.exit, %DiskPerfDispatchPnp_bb196, %DiskPerfDispatchPnp_bb194, %DiskPerfDispatchPnp_bb193, %DiskPerfDispatchPnp_bb190
  %.0 = phi i32 [ %returnVal2.0.i.i, %DiskPerfDispatchPnp_bb190 ], [ %returnVal2.0.i.i, %DiskPerfDispatchPnp_bb193 ], [ %returnVal2.0.i.i, %DiskPerfDispatchPnp_bb194 ], [ %returnVal2.0.i.i, %DiskPerfDispatchPnp_bb196 ], [ %status.0.i.i, %DiskPerfDispatchPnp_DiskPerfStartDevice.exit ], [ %status.0.i.i10, %DiskPerfDispatchPnp_DiskPerfRemoveDevice.exit ]
  ret i32 %.0

DiskPerfDispatchPnp_bb197:                        ; preds = %DiskPerfDispatchPnp_bb195
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfDispatchPnp_bb198:                        ; preds = %DiskPerfDispatchPnp_bb177
  call void (...)* @__VERIFIER_error() #5
  unreachable
}

declare i32 @__VERIFIER_nondet_int() #2

; Function Attrs: nounwind uwtable
define i32 @DiskPerfIrpCompletion(i32 %DeviceObject, i32 %Irp, i32 %Context) #0 {
DiskPerfIrpCompletion_bb199:
  %"497" = call i32 @__VERIFIER_nondet_int() #4
  store i32 1, i32* @"'setEventCalled", align 4
  ret i32 -1073741802
}

; Function Attrs: nounwind uwtable
define i32 @DiskPerfStartDevice(i32 %DeviceObject, i32 %Irp) #0 {
DiskPerfStartDevice_bb200:
  %"498" = call i32 @__VERIFIER_nondet_int()
  %"499" = call i32 @__VERIFIER_nondet_int()
  %"500" = call i32 @__VERIFIER_nondet_int() #4
  %"501" = call i32 @__VERIFIER_nondet_int() #4
  %"502" = call i32 @__VERIFIER_nondet_int() #4
  %"503" = call i32 @__VERIFIER_nondet_int() #4
  %"504" = load i32* @"'s", align 4
  %"505" = load i32* @"'NP", align 4
  %"506" = icmp ne i32 %"504", %"505"
  br i1 %"506", label %DiskPerfStartDevice_bb201, label %DiskPerfStartDevice_bb202

DiskPerfStartDevice_bb201:                        ; preds = %DiskPerfStartDevice_bb200
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfStartDevice_bb202:                        ; preds = %DiskPerfStartDevice_bb200
  %"507" = load i32* @"'compRegistered", align 4
  %"508" = icmp ne i32 %"507", 0
  br i1 %"508", label %DiskPerfStartDevice_bb203, label %DiskPerfStartDevice_bb204

DiskPerfStartDevice_bb203:                        ; preds = %DiskPerfStartDevice_bb202
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfStartDevice_bb204:                        ; preds = %DiskPerfStartDevice_bb202
  store i32 1, i32* @"'compRegistered", align 4
  store i32 0, i32* @"'routine", align 4
  %"509" = call i32 @__VERIFIER_nondet_int() #4
  %"510" = load i32* @"'compRegistered", align 4
  %"511" = icmp ne i32 %"510", 0
  br i1 %"511", label %DiskPerfStartDevice_bb205, label %DiskPerfStartDevice_bb213

DiskPerfStartDevice_bb205:                        ; preds = %DiskPerfStartDevice_bb204
  %"512" = load i32* @"'routine", align 4
  %"513" = icmp eq i32 %"512", 0
  %"514" = call i32 @__VERIFIER_nondet_int() #4
  br i1 %"513", label %DiskPerfStartDevice_bb206, label %DiskPerfStartDevice_bb207

DiskPerfStartDevice_bb206:                        ; preds = %DiskPerfStartDevice_bb205
  store i32 1, i32* @"'setEventCalled", align 4
  br label %DiskPerfStartDevice_DiskPerfIoCompletion.exit.i.i

DiskPerfStartDevice_bb207:                        ; preds = %DiskPerfStartDevice_bb205
  %"515" = call i32 @__VERIFIER_nondet_int() #4
  %"516" = call i32 @__VERIFIER_nondet_int() #4
  %"517" = call i32 @__VERIFIER_nondet_int() #4
  %"518" = call i32 @__VERIFIER_nondet_int() #4
  %"519" = call i32 @__VERIFIER_nondet_int() #4
  %"520" = call i32 @__VERIFIER_nondet_int() #4
  %"521" = call i32 @__VERIFIER_nondet_int() #4
  %"522" = call i32 @__VERIFIER_nondet_int() #4
  %"523" = call i32 @__VERIFIER_nondet_int() #4
  %"524" = call i32 @__VERIFIER_nondet_int() #4
  %"525" = call i32 @__VERIFIER_nondet_int() #4
  %"526" = call i32 @__VERIFIER_nondet_int() #4
  %"527" = call i32 @__VERIFIER_nondet_int() #4
  %"528" = icmp ne i32 %"526", 0
  %"529" = icmp ne i32 %"525", 0
  %or.cond.i.i = and i1 %"528", %"529"
  br i1 %or.cond.i.i, label %DiskPerfStartDevice_bb208, label %DiskPerfStartDevice_DiskPerfIoCompletion.exit.i.i

DiskPerfStartDevice_bb208:                        ; preds = %DiskPerfStartDevice_bb207
  %"530" = load i32* @"'pended", align 4
  %"531" = icmp eq i32 %"530", 0
  br i1 %"531", label %DiskPerfStartDevice_bb209, label %DiskPerfStartDevice_bb210

DiskPerfStartDevice_bb209:                        ; preds = %DiskPerfStartDevice_bb208
  store i32 1, i32* @"'pended", align 4
  br label %DiskPerfStartDevice_DiskPerfIoCompletion.exit.i.i

DiskPerfStartDevice_bb210:                        ; preds = %DiskPerfStartDevice_bb208
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfStartDevice_DiskPerfIoCompletion.exit.i.i: ; preds = %DiskPerfStartDevice_bb209, %DiskPerfStartDevice_bb207, %DiskPerfStartDevice_bb206
  %compRetStatus.0.i.i = phi i32 [ -1073741802, %DiskPerfStartDevice_bb206 ], [ 0, %DiskPerfStartDevice_bb207 ], [ 0, %DiskPerfStartDevice_bb209 ]
  %"532" = sext i32 %compRetStatus.0.i.i to i64
  %"533" = icmp eq i64 %"532", -1073741802
  br i1 %"533", label %DiskPerfStartDevice_bb211, label %DiskPerfStartDevice_bb213

DiskPerfStartDevice_bb211:                        ; preds = %DiskPerfStartDevice_DiskPerfIoCompletion.exit.i.i
  %"534" = load i32* @"'s", align 4
  %"535" = load i32* @"'NP", align 4
  %"536" = icmp eq i32 %"534", %"535"
  br i1 %"536", label %DiskPerfStartDevice_stubMoreProcessingRequired.exit.i.i, label %DiskPerfStartDevice_bb212

DiskPerfStartDevice_stubMoreProcessingRequired.exit.i.i: ; preds = %DiskPerfStartDevice_bb211
  %"537" = load i32* @"'MPR1", align 4
  store i32 %"537", i32* @"'s", align 4
  br label %DiskPerfStartDevice_bb213

DiskPerfStartDevice_bb212:                        ; preds = %DiskPerfStartDevice_bb211
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfStartDevice_bb213:                        ; preds = %DiskPerfStartDevice_stubMoreProcessingRequired.exit.i.i, %DiskPerfStartDevice_DiskPerfIoCompletion.exit.i.i, %DiskPerfStartDevice_bb204
  %"538" = call i32 @__VERIFIER_nondet_int() #4
  %"539" = icmp eq i32 %"538", 0
  br i1 %"539", label %DiskPerfStartDevice_bb215, label %DiskPerfStartDevice_bb214

DiskPerfStartDevice_bb214:                        ; preds = %DiskPerfStartDevice_bb213
  %"540" = call i32 @__VERIFIER_nondet_int() #4
  %"541" = icmp eq i32 %"540", 1
  %..i.i = select i1 %"541", i32 -1073741823, i32 259
  br label %DiskPerfStartDevice_bb215

DiskPerfStartDevice_bb215:                        ; preds = %DiskPerfStartDevice_bb214, %DiskPerfStartDevice_bb213
  %returnVal2.0.i.i = phi i32 [ 0, %DiskPerfStartDevice_bb213 ], [ %..i.i, %DiskPerfStartDevice_bb214 ]
  %"542" = load i32* @"'s", align 4
  %"543" = load i32* @"'NP", align 4
  %"544" = icmp eq i32 %"542", %"543"
  br i1 %"544", label %DiskPerfStartDevice_bb216, label %DiskPerfStartDevice_bb217

DiskPerfStartDevice_bb216:                        ; preds = %DiskPerfStartDevice_bb215
  %"545" = load i32* @"'IPC", align 4
  store i32 %"545", i32* @"'s", align 4
  store i32 %returnVal2.0.i.i, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfStartDevice_IofCallDriver.exit.i

DiskPerfStartDevice_bb217:                        ; preds = %DiskPerfStartDevice_bb215
  %"546" = load i32* @"'s", align 4
  %"547" = load i32* @"'MPR1", align 4
  %"548" = icmp eq i32 %"546", %"547"
  br i1 %"548", label %DiskPerfStartDevice_bb218, label %DiskPerfStartDevice_bb221

DiskPerfStartDevice_bb218:                        ; preds = %DiskPerfStartDevice_bb217
  %"549" = icmp eq i32 %returnVal2.0.i.i, 259
  br i1 %"549", label %DiskPerfStartDevice_bb219, label %DiskPerfStartDevice_bb220

DiskPerfStartDevice_bb219:                        ; preds = %DiskPerfStartDevice_bb218
  %"550" = load i32* @"'MPR3", align 4
  store i32 %"550", i32* @"'s", align 4
  store i32 %returnVal2.0.i.i, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfStartDevice_IofCallDriver.exit.i

DiskPerfStartDevice_bb220:                        ; preds = %DiskPerfStartDevice_bb218
  %"551" = load i32* @"'NP", align 4
  store i32 %"551", i32* @"'s", align 4
  store i32 %returnVal2.0.i.i, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfStartDevice_IofCallDriver.exit.i

DiskPerfStartDevice_bb221:                        ; preds = %DiskPerfStartDevice_bb217
  %"552" = load i32* @"'s", align 4
  %"553" = load i32* @"'SKIP1", align 4
  %"554" = icmp eq i32 %"552", %"553"
  br i1 %"554", label %DiskPerfStartDevice_bb222, label %DiskPerfStartDevice_bb341

DiskPerfStartDevice_bb222:                        ; preds = %DiskPerfStartDevice_bb221
  %"555" = load i32* @"'SKIP2", align 4
  store i32 %"555", i32* @"'s", align 4
  store i32 %returnVal2.0.i.i, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfStartDevice_IofCallDriver.exit.i

DiskPerfStartDevice_IofCallDriver.exit.i:         ; preds = %DiskPerfStartDevice_bb222, %DiskPerfStartDevice_bb220, %DiskPerfStartDevice_bb219, %DiskPerfStartDevice_bb216
  %"556" = sext i32 %returnVal2.0.i.i to i64
  %"557" = icmp eq i64 %"556", 259
  br i1 %"557", label %DiskPerfStartDevice_bb223, label %DiskPerfStartDevice_DiskPerfForwardIrpSynchronous.exit

DiskPerfStartDevice_bb223:                        ; preds = %DiskPerfStartDevice_IofCallDriver.exit.i
  %"558" = load i32* @"'s", align 4
  %"559" = load i32* @"'MPR3", align 4
  %"560" = icmp eq i32 %"558", %"559"
  %"561" = load i32* @"'setEventCalled", align 4
  %"562" = icmp eq i32 %"561", 1
  %or.cond.i2.i = and i1 %"560", %"562"
  br i1 %or.cond.i2.i, label %DiskPerfStartDevice_bb224, label %DiskPerfStartDevice_bb225

DiskPerfStartDevice_bb224:                        ; preds = %DiskPerfStartDevice_bb223
  %"563" = load i32* @"'NP", align 4
  store i32 %"563", i32* @"'s", align 4
  store i32 0, i32* @"'setEventCalled", align 4
  br label %DiskPerfStartDevice_KeWaitForSingleObject.exit.i

DiskPerfStartDevice_bb225:                        ; preds = %DiskPerfStartDevice_bb223
  %"564" = load i32* @"'customIrp", align 4
  %"565" = icmp eq i32 %"564", 1
  br i1 %"565", label %DiskPerfStartDevice_bb226, label %DiskPerfStartDevice_bb227

DiskPerfStartDevice_bb226:                        ; preds = %DiskPerfStartDevice_bb225
  %"566" = load i32* @"'NP", align 4
  store i32 %"566", i32* @"'s", align 4
  store i32 0, i32* @"'customIrp", align 4
  br label %DiskPerfStartDevice_KeWaitForSingleObject.exit.i

DiskPerfStartDevice_bb227:                        ; preds = %DiskPerfStartDevice_bb225
  %"567" = load i32* @"'s", align 4
  %"568" = load i32* @"'MPR3", align 4
  %"569" = icmp eq i32 %"567", %"568"
  br i1 %"569", label %DiskPerfStartDevice_bb228, label %DiskPerfStartDevice_KeWaitForSingleObject.exit.i

DiskPerfStartDevice_bb228:                        ; preds = %DiskPerfStartDevice_bb227
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfStartDevice_KeWaitForSingleObject.exit.i: ; preds = %DiskPerfStartDevice_bb227, %DiskPerfStartDevice_bb226, %DiskPerfStartDevice_bb224
  %"570" = call i32 @__VERIFIER_nondet_int() #4
  %"571" = load i32* @"'myStatus", align 4
  br label %DiskPerfStartDevice_DiskPerfForwardIrpSynchronous.exit

DiskPerfStartDevice_DiskPerfForwardIrpSynchronous.exit: ; preds = %DiskPerfStartDevice_IofCallDriver.exit.i, %DiskPerfStartDevice_KeWaitForSingleObject.exit.i
  %status.0.i = phi i32 [ %"571", %DiskPerfStartDevice_KeWaitForSingleObject.exit.i ], [ %returnVal2.0.i.i, %DiskPerfStartDevice_IofCallDriver.exit.i ]
  %"572" = call i32 @__VERIFIER_nondet_int() #4
  %"573" = call i32 @__VERIFIER_nondet_int() #4
  %"574" = call i32 @__VERIFIER_nondet_int() #4
  %"575" = call i32 @__VERIFIER_nondet_int() #4
  %"576" = call i32 @__VERIFIER_nondet_int() #4
  %"577" = call i32 @__VERIFIER_nondet_int() #4
  %"578" = call i32 @__VERIFIER_nondet_int() #4
  %"579" = call i32 @__VERIFIER_nondet_int() #4
  %"580" = call i32 @__VERIFIER_nondet_int() #4
  %"581" = call i32 @__VERIFIER_nondet_int() #4
  %"582" = call i32 @__VERIFIER_nondet_int() #4
  %"583" = call i32 @__VERIFIER_nondet_int() #4
  %"584" = call i32 @__VERIFIER_nondet_int() #4
  %"585" = call i32 @__VERIFIER_nondet_int() #4
  store i32 1, i32* @"'customIrp", align 4
  %"586" = call i32 @__VERIFIER_nondet_int() #4
  %"587" = icmp eq i32 %"586", 0
  %.0.i.i = select i1 %"587", i32 %"585", i32 0
  %"588" = icmp ne i32 %.0.i.i, 0
  br i1 %"588", label %DiskPerfStartDevice_bb229, label %DiskPerfStartDevice_DiskPerfRegisterDevice.exit

DiskPerfStartDevice_bb229:                        ; preds = %DiskPerfStartDevice_DiskPerfForwardIrpSynchronous.exit
  %"589" = call i32 @__VERIFIER_nondet_int() #4
  %"590" = load i32* @"'compRegistered", align 4
  %"591" = icmp ne i32 %"590", 0
  br i1 %"591", label %DiskPerfStartDevice_bb230, label %DiskPerfStartDevice_bb238

DiskPerfStartDevice_bb230:                        ; preds = %DiskPerfStartDevice_bb229
  %"592" = load i32* @"'routine", align 4
  %"593" = icmp eq i32 %"592", 0
  %"594" = call i32 @__VERIFIER_nondet_int() #4
  br i1 %"593", label %DiskPerfStartDevice_bb231, label %DiskPerfStartDevice_bb232

DiskPerfStartDevice_bb231:                        ; preds = %DiskPerfStartDevice_bb230
  store i32 1, i32* @"'setEventCalled", align 4
  br label %DiskPerfStartDevice_DiskPerfIoCompletion.exit.i.i3

DiskPerfStartDevice_bb232:                        ; preds = %DiskPerfStartDevice_bb230
  %"595" = call i32 @__VERIFIER_nondet_int() #4
  %"596" = call i32 @__VERIFIER_nondet_int() #4
  %"597" = call i32 @__VERIFIER_nondet_int() #4
  %"598" = call i32 @__VERIFIER_nondet_int() #4
  %"599" = call i32 @__VERIFIER_nondet_int() #4
  %"600" = call i32 @__VERIFIER_nondet_int() #4
  %"601" = call i32 @__VERIFIER_nondet_int() #4
  %"602" = call i32 @__VERIFIER_nondet_int() #4
  %"603" = call i32 @__VERIFIER_nondet_int() #4
  %"604" = call i32 @__VERIFIER_nondet_int() #4
  %"605" = call i32 @__VERIFIER_nondet_int() #4
  %"606" = call i32 @__VERIFIER_nondet_int() #4
  %"607" = call i32 @__VERIFIER_nondet_int() #4
  %"608" = icmp ne i32 %"606", 0
  %"609" = icmp ne i32 %"605", 0
  %or.cond.i.i1 = and i1 %"608", %"609"
  br i1 %or.cond.i.i1, label %DiskPerfStartDevice_bb233, label %DiskPerfStartDevice_DiskPerfIoCompletion.exit.i.i3

DiskPerfStartDevice_bb233:                        ; preds = %DiskPerfStartDevice_bb232
  %"610" = load i32* @"'pended", align 4
  %"611" = icmp eq i32 %"610", 0
  br i1 %"611", label %DiskPerfStartDevice_bb234, label %DiskPerfStartDevice_bb235

DiskPerfStartDevice_bb234:                        ; preds = %DiskPerfStartDevice_bb233
  store i32 1, i32* @"'pended", align 4
  br label %DiskPerfStartDevice_DiskPerfIoCompletion.exit.i.i3

DiskPerfStartDevice_bb235:                        ; preds = %DiskPerfStartDevice_bb233
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfStartDevice_DiskPerfIoCompletion.exit.i.i3: ; preds = %DiskPerfStartDevice_bb234, %DiskPerfStartDevice_bb232, %DiskPerfStartDevice_bb231
  %compRetStatus.0.i.i2 = phi i32 [ -1073741802, %DiskPerfStartDevice_bb231 ], [ 0, %DiskPerfStartDevice_bb232 ], [ 0, %DiskPerfStartDevice_bb234 ]
  %"612" = sext i32 %compRetStatus.0.i.i2 to i64
  %"613" = icmp eq i64 %"612", -1073741802
  br i1 %"613", label %DiskPerfStartDevice_bb236, label %DiskPerfStartDevice_bb238

DiskPerfStartDevice_bb236:                        ; preds = %DiskPerfStartDevice_DiskPerfIoCompletion.exit.i.i3
  %"614" = load i32* @"'s", align 4
  %"615" = load i32* @"'NP", align 4
  %"616" = icmp eq i32 %"614", %"615"
  br i1 %"616", label %DiskPerfStartDevice_stubMoreProcessingRequired.exit.i.i4, label %DiskPerfStartDevice_bb237

DiskPerfStartDevice_stubMoreProcessingRequired.exit.i.i4: ; preds = %DiskPerfStartDevice_bb236
  %"617" = load i32* @"'MPR1", align 4
  store i32 %"617", i32* @"'s", align 4
  br label %DiskPerfStartDevice_bb238

DiskPerfStartDevice_bb237:                        ; preds = %DiskPerfStartDevice_bb236
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfStartDevice_bb238:                        ; preds = %DiskPerfStartDevice_stubMoreProcessingRequired.exit.i.i4, %DiskPerfStartDevice_DiskPerfIoCompletion.exit.i.i3, %DiskPerfStartDevice_bb229
  %"618" = call i32 @__VERIFIER_nondet_int() #4
  %"619" = icmp eq i32 %"618", 0
  br i1 %"619", label %DiskPerfStartDevice_bb240, label %DiskPerfStartDevice_bb239

DiskPerfStartDevice_bb239:                        ; preds = %DiskPerfStartDevice_bb238
  %"620" = call i32 @__VERIFIER_nondet_int() #4
  %"621" = icmp eq i32 %"620", 1
  %..i.i5 = select i1 %"621", i32 -1073741823, i32 259
  br label %DiskPerfStartDevice_bb240

DiskPerfStartDevice_bb240:                        ; preds = %DiskPerfStartDevice_bb239, %DiskPerfStartDevice_bb238
  %returnVal2.0.i.i6 = phi i32 [ 0, %DiskPerfStartDevice_bb238 ], [ %..i.i5, %DiskPerfStartDevice_bb239 ]
  %"622" = load i32* @"'s", align 4
  %"623" = load i32* @"'NP", align 4
  %"624" = icmp eq i32 %"622", %"623"
  br i1 %"624", label %DiskPerfStartDevice_bb241, label %DiskPerfStartDevice_bb242

DiskPerfStartDevice_bb241:                        ; preds = %DiskPerfStartDevice_bb240
  %"625" = load i32* @"'IPC", align 4
  store i32 %"625", i32* @"'s", align 4
  store i32 %returnVal2.0.i.i6, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfStartDevice_IofCallDriver.exit.i7

DiskPerfStartDevice_bb242:                        ; preds = %DiskPerfStartDevice_bb240
  %"626" = load i32* @"'s", align 4
  %"627" = load i32* @"'MPR1", align 4
  %"628" = icmp eq i32 %"626", %"627"
  br i1 %"628", label %DiskPerfStartDevice_bb243, label %DiskPerfStartDevice_bb246

DiskPerfStartDevice_bb243:                        ; preds = %DiskPerfStartDevice_bb242
  %"629" = icmp eq i32 %returnVal2.0.i.i6, 259
  br i1 %"629", label %DiskPerfStartDevice_bb244, label %DiskPerfStartDevice_bb245

DiskPerfStartDevice_bb244:                        ; preds = %DiskPerfStartDevice_bb243
  %"630" = load i32* @"'MPR3", align 4
  store i32 %"630", i32* @"'s", align 4
  store i32 %returnVal2.0.i.i6, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfStartDevice_IofCallDriver.exit.i7

DiskPerfStartDevice_bb245:                        ; preds = %DiskPerfStartDevice_bb243
  %"631" = load i32* @"'NP", align 4
  store i32 %"631", i32* @"'s", align 4
  store i32 %returnVal2.0.i.i6, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfStartDevice_IofCallDriver.exit.i7

DiskPerfStartDevice_bb246:                        ; preds = %DiskPerfStartDevice_bb242
  %"632" = load i32* @"'s", align 4
  %"633" = load i32* @"'SKIP1", align 4
  %"634" = icmp eq i32 %"632", %"633"
  br i1 %"634", label %DiskPerfStartDevice_bb247, label %DiskPerfStartDevice_bb339

DiskPerfStartDevice_bb247:                        ; preds = %DiskPerfStartDevice_bb246
  %"635" = load i32* @"'SKIP2", align 4
  store i32 %"635", i32* @"'s", align 4
  store i32 %returnVal2.0.i.i6, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfStartDevice_IofCallDriver.exit.i7

DiskPerfStartDevice_IofCallDriver.exit.i7:        ; preds = %DiskPerfStartDevice_bb247, %DiskPerfStartDevice_bb245, %DiskPerfStartDevice_bb244, %DiskPerfStartDevice_bb241
  %"636" = sext i32 %returnVal2.0.i.i6 to i64
  %"637" = icmp eq i64 %"636", 259
  br i1 %"637", label %DiskPerfStartDevice_bb248, label %DiskPerfStartDevice_bb254

DiskPerfStartDevice_bb248:                        ; preds = %DiskPerfStartDevice_IofCallDriver.exit.i7
  %"638" = load i32* @"'s", align 4
  %"639" = load i32* @"'MPR3", align 4
  %"640" = icmp eq i32 %"638", %"639"
  %"641" = load i32* @"'setEventCalled", align 4
  %"642" = icmp eq i32 %"641", 1
  %or.cond.i1.i = and i1 %"640", %"642"
  br i1 %or.cond.i1.i, label %DiskPerfStartDevice_bb249, label %DiskPerfStartDevice_bb250

DiskPerfStartDevice_bb249:                        ; preds = %DiskPerfStartDevice_bb248
  %"643" = load i32* @"'NP", align 4
  store i32 %"643", i32* @"'s", align 4
  store i32 0, i32* @"'setEventCalled", align 4
  br label %DiskPerfStartDevice_KeWaitForSingleObject.exit.i8

DiskPerfStartDevice_bb250:                        ; preds = %DiskPerfStartDevice_bb248
  %"644" = load i32* @"'customIrp", align 4
  %"645" = icmp eq i32 %"644", 1
  br i1 %"645", label %DiskPerfStartDevice_bb251, label %DiskPerfStartDevice_bb252

DiskPerfStartDevice_bb251:                        ; preds = %DiskPerfStartDevice_bb250
  %"646" = load i32* @"'NP", align 4
  store i32 %"646", i32* @"'s", align 4
  store i32 0, i32* @"'customIrp", align 4
  br label %DiskPerfStartDevice_KeWaitForSingleObject.exit.i8

DiskPerfStartDevice_bb252:                        ; preds = %DiskPerfStartDevice_bb250
  %"647" = load i32* @"'s", align 4
  %"648" = load i32* @"'MPR3", align 4
  %"649" = icmp eq i32 %"647", %"648"
  br i1 %"649", label %DiskPerfStartDevice_bb253, label %DiskPerfStartDevice_KeWaitForSingleObject.exit.i8

DiskPerfStartDevice_bb253:                        ; preds = %DiskPerfStartDevice_bb252
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfStartDevice_KeWaitForSingleObject.exit.i8: ; preds = %DiskPerfStartDevice_bb252, %DiskPerfStartDevice_bb251, %DiskPerfStartDevice_bb249
  %"650" = call i32 @__VERIFIER_nondet_int() #4
  br label %DiskPerfStartDevice_bb254

DiskPerfStartDevice_bb254:                        ; preds = %DiskPerfStartDevice_KeWaitForSingleObject.exit.i8, %DiskPerfStartDevice_IofCallDriver.exit.i7
  %status.0.i9 = phi i32 [ %"575", %DiskPerfStartDevice_KeWaitForSingleObject.exit.i8 ], [ %returnVal2.0.i.i6, %DiskPerfStartDevice_IofCallDriver.exit.i7 ]
  %"651" = icmp slt i32 %status.0.i9, 0
  %"652" = icmp ne i32 %"583", 0
  %or.cond = and i1 %"651", %"652"
  br i1 %or.cond, label %DiskPerfStartDevice_bb255, label %DiskPerfStartDevice_DiskPerfRegisterDevice.exit

DiskPerfStartDevice_bb255:                        ; preds = %DiskPerfStartDevice_bb254
  %"653" = call i32 @__VERIFIER_nondet_int() #4
  store i32 1, i32* @"'customIrp", align 4
  %"654" = call i32 @__VERIFIER_nondet_int() #4
  %"655" = icmp eq i32 %"654", 0
  %.0.i3.i = select i1 %"655", i32 %"653", i32 0
  %"656" = icmp ne i32 %.0.i3.i, 0
  br i1 %"656", label %DiskPerfStartDevice_bb256, label %DiskPerfStartDevice_DiskPerfRegisterDevice.exit

DiskPerfStartDevice_bb256:                        ; preds = %DiskPerfStartDevice_bb255
  %"657" = call i32 @__VERIFIER_nondet_int() #4
  %"658" = load i32* @"'compRegistered", align 4
  %"659" = icmp ne i32 %"658", 0
  br i1 %"659", label %DiskPerfStartDevice_bb257, label %DiskPerfStartDevice_bb265

DiskPerfStartDevice_bb257:                        ; preds = %DiskPerfStartDevice_bb256
  %"660" = load i32* @"'routine", align 4
  %"661" = icmp eq i32 %"660", 0
  %"662" = call i32 @__VERIFIER_nondet_int() #4
  br i1 %"661", label %DiskPerfStartDevice_bb258, label %DiskPerfStartDevice_bb259

DiskPerfStartDevice_bb258:                        ; preds = %DiskPerfStartDevice_bb257
  store i32 1, i32* @"'setEventCalled", align 4
  br label %DiskPerfStartDevice_DiskPerfIoCompletion.exit.i6.i

DiskPerfStartDevice_bb259:                        ; preds = %DiskPerfStartDevice_bb257
  %"663" = call i32 @__VERIFIER_nondet_int() #4
  %"664" = call i32 @__VERIFIER_nondet_int() #4
  %"665" = call i32 @__VERIFIER_nondet_int() #4
  %"666" = call i32 @__VERIFIER_nondet_int() #4
  %"667" = call i32 @__VERIFIER_nondet_int() #4
  %"668" = call i32 @__VERIFIER_nondet_int() #4
  %"669" = call i32 @__VERIFIER_nondet_int() #4
  %"670" = call i32 @__VERIFIER_nondet_int() #4
  %"671" = call i32 @__VERIFIER_nondet_int() #4
  %"672" = call i32 @__VERIFIER_nondet_int() #4
  %"673" = call i32 @__VERIFIER_nondet_int() #4
  %"674" = call i32 @__VERIFIER_nondet_int() #4
  %"675" = call i32 @__VERIFIER_nondet_int() #4
  %"676" = icmp ne i32 %"674", 0
  %"677" = icmp ne i32 %"673", 0
  %or.cond.i4.i = and i1 %"676", %"677"
  br i1 %or.cond.i4.i, label %DiskPerfStartDevice_bb260, label %DiskPerfStartDevice_DiskPerfIoCompletion.exit.i6.i

DiskPerfStartDevice_bb260:                        ; preds = %DiskPerfStartDevice_bb259
  %"678" = load i32* @"'pended", align 4
  %"679" = icmp eq i32 %"678", 0
  br i1 %"679", label %DiskPerfStartDevice_bb261, label %DiskPerfStartDevice_bb262

DiskPerfStartDevice_bb261:                        ; preds = %DiskPerfStartDevice_bb260
  store i32 1, i32* @"'pended", align 4
  br label %DiskPerfStartDevice_DiskPerfIoCompletion.exit.i6.i

DiskPerfStartDevice_bb262:                        ; preds = %DiskPerfStartDevice_bb260
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfStartDevice_DiskPerfIoCompletion.exit.i6.i: ; preds = %DiskPerfStartDevice_bb261, %DiskPerfStartDevice_bb259, %DiskPerfStartDevice_bb258
  %compRetStatus.0.i5.i = phi i32 [ -1073741802, %DiskPerfStartDevice_bb258 ], [ 0, %DiskPerfStartDevice_bb259 ], [ 0, %DiskPerfStartDevice_bb261 ]
  %"680" = sext i32 %compRetStatus.0.i5.i to i64
  %"681" = icmp eq i64 %"680", -1073741802
  br i1 %"681", label %DiskPerfStartDevice_bb263, label %DiskPerfStartDevice_bb265

DiskPerfStartDevice_bb263:                        ; preds = %DiskPerfStartDevice_DiskPerfIoCompletion.exit.i6.i
  %"682" = load i32* @"'s", align 4
  %"683" = load i32* @"'NP", align 4
  %"684" = icmp eq i32 %"682", %"683"
  br i1 %"684", label %DiskPerfStartDevice_stubMoreProcessingRequired.exit.i7.i, label %DiskPerfStartDevice_bb264

DiskPerfStartDevice_stubMoreProcessingRequired.exit.i7.i: ; preds = %DiskPerfStartDevice_bb263
  %"685" = load i32* @"'MPR1", align 4
  store i32 %"685", i32* @"'s", align 4
  br label %DiskPerfStartDevice_bb265

DiskPerfStartDevice_bb264:                        ; preds = %DiskPerfStartDevice_bb263
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfStartDevice_bb265:                        ; preds = %DiskPerfStartDevice_stubMoreProcessingRequired.exit.i7.i, %DiskPerfStartDevice_DiskPerfIoCompletion.exit.i6.i, %DiskPerfStartDevice_bb256
  %"686" = call i32 @__VERIFIER_nondet_int() #4
  %"687" = icmp eq i32 %"686", 0
  br i1 %"687", label %DiskPerfStartDevice_bb267, label %DiskPerfStartDevice_bb266

DiskPerfStartDevice_bb266:                        ; preds = %DiskPerfStartDevice_bb265
  %"688" = call i32 @__VERIFIER_nondet_int() #4
  %"689" = icmp eq i32 %"688", 1
  %..i8.i = select i1 %"689", i32 -1073741823, i32 259
  br label %DiskPerfStartDevice_bb267

DiskPerfStartDevice_bb267:                        ; preds = %DiskPerfStartDevice_bb266, %DiskPerfStartDevice_bb265
  %returnVal2.0.i9.i = phi i32 [ 0, %DiskPerfStartDevice_bb265 ], [ %..i8.i, %DiskPerfStartDevice_bb266 ]
  %"690" = load i32* @"'s", align 4
  %"691" = load i32* @"'NP", align 4
  %"692" = icmp eq i32 %"690", %"691"
  br i1 %"692", label %DiskPerfStartDevice_bb268, label %DiskPerfStartDevice_bb269

DiskPerfStartDevice_bb268:                        ; preds = %DiskPerfStartDevice_bb267
  %"693" = load i32* @"'IPC", align 4
  store i32 %"693", i32* @"'s", align 4
  store i32 %returnVal2.0.i9.i, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfStartDevice_IofCallDriver.exit10.i

DiskPerfStartDevice_bb269:                        ; preds = %DiskPerfStartDevice_bb267
  %"694" = load i32* @"'s", align 4
  %"695" = load i32* @"'MPR1", align 4
  %"696" = icmp eq i32 %"694", %"695"
  br i1 %"696", label %DiskPerfStartDevice_bb270, label %DiskPerfStartDevice_bb273

DiskPerfStartDevice_bb270:                        ; preds = %DiskPerfStartDevice_bb269
  %"697" = icmp eq i32 %returnVal2.0.i9.i, 259
  br i1 %"697", label %DiskPerfStartDevice_bb271, label %DiskPerfStartDevice_bb272

DiskPerfStartDevice_bb271:                        ; preds = %DiskPerfStartDevice_bb270
  %"698" = load i32* @"'MPR3", align 4
  store i32 %"698", i32* @"'s", align 4
  store i32 %returnVal2.0.i9.i, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfStartDevice_IofCallDriver.exit10.i

DiskPerfStartDevice_bb272:                        ; preds = %DiskPerfStartDevice_bb270
  %"699" = load i32* @"'NP", align 4
  store i32 %"699", i32* @"'s", align 4
  store i32 %returnVal2.0.i9.i, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfStartDevice_IofCallDriver.exit10.i

DiskPerfStartDevice_bb273:                        ; preds = %DiskPerfStartDevice_bb269
  %"700" = load i32* @"'s", align 4
  %"701" = load i32* @"'SKIP1", align 4
  %"702" = icmp eq i32 %"700", %"701"
  br i1 %"702", label %DiskPerfStartDevice_bb274, label %DiskPerfStartDevice_bb338

DiskPerfStartDevice_bb274:                        ; preds = %DiskPerfStartDevice_bb273
  %"703" = load i32* @"'SKIP2", align 4
  store i32 %"703", i32* @"'s", align 4
  store i32 %returnVal2.0.i9.i, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfStartDevice_IofCallDriver.exit10.i

DiskPerfStartDevice_IofCallDriver.exit10.i:       ; preds = %DiskPerfStartDevice_bb274, %DiskPerfStartDevice_bb272, %DiskPerfStartDevice_bb271, %DiskPerfStartDevice_bb268
  %"704" = sext i32 %returnVal2.0.i9.i to i64
  %"705" = icmp eq i64 %"704", 259
  br i1 %"705", label %DiskPerfStartDevice_bb275, label %DiskPerfStartDevice_bb281

DiskPerfStartDevice_bb275:                        ; preds = %DiskPerfStartDevice_IofCallDriver.exit10.i
  %"706" = load i32* @"'s", align 4
  %"707" = load i32* @"'MPR3", align 4
  %"708" = icmp eq i32 %"706", %"707"
  %"709" = load i32* @"'setEventCalled", align 4
  %"710" = icmp eq i32 %"709", 1
  %or.cond.i11.i = and i1 %"708", %"710"
  br i1 %or.cond.i11.i, label %DiskPerfStartDevice_bb276, label %DiskPerfStartDevice_bb277

DiskPerfStartDevice_bb276:                        ; preds = %DiskPerfStartDevice_bb275
  %"711" = load i32* @"'NP", align 4
  store i32 %"711", i32* @"'s", align 4
  store i32 0, i32* @"'setEventCalled", align 4
  br label %DiskPerfStartDevice_KeWaitForSingleObject.exit13.i

DiskPerfStartDevice_bb277:                        ; preds = %DiskPerfStartDevice_bb275
  %"712" = load i32* @"'customIrp", align 4
  %"713" = icmp eq i32 %"712", 1
  br i1 %"713", label %DiskPerfStartDevice_bb278, label %DiskPerfStartDevice_bb279

DiskPerfStartDevice_bb278:                        ; preds = %DiskPerfStartDevice_bb277
  %"714" = load i32* @"'NP", align 4
  store i32 %"714", i32* @"'s", align 4
  store i32 0, i32* @"'customIrp", align 4
  br label %DiskPerfStartDevice_KeWaitForSingleObject.exit13.i

DiskPerfStartDevice_bb279:                        ; preds = %DiskPerfStartDevice_bb277
  %"715" = load i32* @"'s", align 4
  %"716" = load i32* @"'MPR3", align 4
  %"717" = icmp eq i32 %"715", %"716"
  br i1 %"717", label %DiskPerfStartDevice_bb280, label %DiskPerfStartDevice_KeWaitForSingleObject.exit13.i

DiskPerfStartDevice_bb280:                        ; preds = %DiskPerfStartDevice_bb279
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfStartDevice_KeWaitForSingleObject.exit13.i: ; preds = %DiskPerfStartDevice_bb279, %DiskPerfStartDevice_bb278, %DiskPerfStartDevice_bb276
  %"718" = call i32 @__VERIFIER_nondet_int() #4
  br label %DiskPerfStartDevice_bb281

DiskPerfStartDevice_bb281:                        ; preds = %DiskPerfStartDevice_KeWaitForSingleObject.exit13.i, %DiskPerfStartDevice_IofCallDriver.exit10.i
  %status.1.i = phi i32 [ %"575", %DiskPerfStartDevice_KeWaitForSingleObject.exit13.i ], [ %returnVal2.0.i9.i, %DiskPerfStartDevice_IofCallDriver.exit10.i ]
  %"719" = sext i32 %status.1.i to i64
  %"720" = icmp eq i64 %"719", -2147483643
  br i1 %"720", label %DiskPerfStartDevice_bb282, label %DiskPerfStartDevice_bb310

DiskPerfStartDevice_bb282:                        ; preds = %DiskPerfStartDevice_bb281
  %"721" = icmp ne i32 %"583", 0
  br i1 %"721", label %DiskPerfStartDevice_bb283, label %DiskPerfStartDevice_DiskPerfRegisterDevice.exit

DiskPerfStartDevice_bb283:                        ; preds = %DiskPerfStartDevice_bb282
  %"722" = call i32 @__VERIFIER_nondet_int() #4
  store i32 1, i32* @"'customIrp", align 4
  %"723" = call i32 @__VERIFIER_nondet_int() #4
  %"724" = icmp eq i32 %"723", 0
  %.0.i14.i = select i1 %"724", i32 %"722", i32 0
  %"725" = icmp ne i32 %.0.i14.i, 0
  br i1 %"725", label %DiskPerfStartDevice_bb284, label %DiskPerfStartDevice_DiskPerfRegisterDevice.exit

DiskPerfStartDevice_bb284:                        ; preds = %DiskPerfStartDevice_bb283
  %"726" = call i32 @__VERIFIER_nondet_int() #4
  %"727" = load i32* @"'compRegistered", align 4
  %"728" = icmp ne i32 %"727", 0
  br i1 %"728", label %DiskPerfStartDevice_bb285, label %DiskPerfStartDevice_bb293

DiskPerfStartDevice_bb285:                        ; preds = %DiskPerfStartDevice_bb284
  %"729" = load i32* @"'routine", align 4
  %"730" = icmp eq i32 %"729", 0
  %"731" = call i32 @__VERIFIER_nondet_int() #4
  br i1 %"730", label %DiskPerfStartDevice_bb286, label %DiskPerfStartDevice_bb287

DiskPerfStartDevice_bb286:                        ; preds = %DiskPerfStartDevice_bb285
  store i32 1, i32* @"'setEventCalled", align 4
  br label %DiskPerfStartDevice_DiskPerfIoCompletion.exit.i17.i

DiskPerfStartDevice_bb287:                        ; preds = %DiskPerfStartDevice_bb285
  %"732" = call i32 @__VERIFIER_nondet_int() #4
  %"733" = call i32 @__VERIFIER_nondet_int() #4
  %"734" = call i32 @__VERIFIER_nondet_int() #4
  %"735" = call i32 @__VERIFIER_nondet_int() #4
  %"736" = call i32 @__VERIFIER_nondet_int() #4
  %"737" = call i32 @__VERIFIER_nondet_int() #4
  %"738" = call i32 @__VERIFIER_nondet_int() #4
  %"739" = call i32 @__VERIFIER_nondet_int() #4
  %"740" = call i32 @__VERIFIER_nondet_int() #4
  %"741" = call i32 @__VERIFIER_nondet_int() #4
  %"742" = call i32 @__VERIFIER_nondet_int() #4
  %"743" = call i32 @__VERIFIER_nondet_int() #4
  %"744" = call i32 @__VERIFIER_nondet_int() #4
  %"745" = icmp ne i32 %"743", 0
  %"746" = icmp ne i32 %"742", 0
  %or.cond.i15.i = and i1 %"745", %"746"
  br i1 %or.cond.i15.i, label %DiskPerfStartDevice_bb288, label %DiskPerfStartDevice_DiskPerfIoCompletion.exit.i17.i

DiskPerfStartDevice_bb288:                        ; preds = %DiskPerfStartDevice_bb287
  %"747" = load i32* @"'pended", align 4
  %"748" = icmp eq i32 %"747", 0
  br i1 %"748", label %DiskPerfStartDevice_bb289, label %DiskPerfStartDevice_bb290

DiskPerfStartDevice_bb289:                        ; preds = %DiskPerfStartDevice_bb288
  store i32 1, i32* @"'pended", align 4
  br label %DiskPerfStartDevice_DiskPerfIoCompletion.exit.i17.i

DiskPerfStartDevice_bb290:                        ; preds = %DiskPerfStartDevice_bb288
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfStartDevice_DiskPerfIoCompletion.exit.i17.i: ; preds = %DiskPerfStartDevice_bb289, %DiskPerfStartDevice_bb287, %DiskPerfStartDevice_bb286
  %compRetStatus.0.i16.i = phi i32 [ -1073741802, %DiskPerfStartDevice_bb286 ], [ 0, %DiskPerfStartDevice_bb287 ], [ 0, %DiskPerfStartDevice_bb289 ]
  %"749" = sext i32 %compRetStatus.0.i16.i to i64
  %"750" = icmp eq i64 %"749", -1073741802
  br i1 %"750", label %DiskPerfStartDevice_bb291, label %DiskPerfStartDevice_bb293

DiskPerfStartDevice_bb291:                        ; preds = %DiskPerfStartDevice_DiskPerfIoCompletion.exit.i17.i
  %"751" = load i32* @"'s", align 4
  %"752" = load i32* @"'NP", align 4
  %"753" = icmp eq i32 %"751", %"752"
  br i1 %"753", label %DiskPerfStartDevice_stubMoreProcessingRequired.exit.i18.i, label %DiskPerfStartDevice_bb292

DiskPerfStartDevice_stubMoreProcessingRequired.exit.i18.i: ; preds = %DiskPerfStartDevice_bb291
  %"754" = load i32* @"'MPR1", align 4
  store i32 %"754", i32* @"'s", align 4
  br label %DiskPerfStartDevice_bb293

DiskPerfStartDevice_bb292:                        ; preds = %DiskPerfStartDevice_bb291
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfStartDevice_bb293:                        ; preds = %DiskPerfStartDevice_stubMoreProcessingRequired.exit.i18.i, %DiskPerfStartDevice_DiskPerfIoCompletion.exit.i17.i, %DiskPerfStartDevice_bb284
  %"755" = call i32 @__VERIFIER_nondet_int() #4
  %"756" = icmp eq i32 %"755", 0
  br i1 %"756", label %DiskPerfStartDevice_bb295, label %DiskPerfStartDevice_bb294

DiskPerfStartDevice_bb294:                        ; preds = %DiskPerfStartDevice_bb293
  %"757" = call i32 @__VERIFIER_nondet_int() #4
  %"758" = icmp eq i32 %"757", 1
  %..i19.i = select i1 %"758", i32 -1073741823, i32 259
  br label %DiskPerfStartDevice_bb295

DiskPerfStartDevice_bb295:                        ; preds = %DiskPerfStartDevice_bb294, %DiskPerfStartDevice_bb293
  %returnVal2.0.i20.i = phi i32 [ 0, %DiskPerfStartDevice_bb293 ], [ %..i19.i, %DiskPerfStartDevice_bb294 ]
  %"759" = load i32* @"'s", align 4
  %"760" = load i32* @"'NP", align 4
  %"761" = icmp eq i32 %"759", %"760"
  br i1 %"761", label %DiskPerfStartDevice_bb296, label %DiskPerfStartDevice_bb297

DiskPerfStartDevice_bb296:                        ; preds = %DiskPerfStartDevice_bb295
  %"762" = load i32* @"'IPC", align 4
  store i32 %"762", i32* @"'s", align 4
  store i32 %returnVal2.0.i20.i, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfStartDevice_IofCallDriver.exit21.i

DiskPerfStartDevice_bb297:                        ; preds = %DiskPerfStartDevice_bb295
  %"763" = load i32* @"'s", align 4
  %"764" = load i32* @"'MPR1", align 4
  %"765" = icmp eq i32 %"763", %"764"
  br i1 %"765", label %DiskPerfStartDevice_bb298, label %DiskPerfStartDevice_bb301

DiskPerfStartDevice_bb298:                        ; preds = %DiskPerfStartDevice_bb297
  %"766" = icmp eq i32 %returnVal2.0.i20.i, 259
  br i1 %"766", label %DiskPerfStartDevice_bb299, label %DiskPerfStartDevice_bb300

DiskPerfStartDevice_bb299:                        ; preds = %DiskPerfStartDevice_bb298
  %"767" = load i32* @"'MPR3", align 4
  store i32 %"767", i32* @"'s", align 4
  store i32 %returnVal2.0.i20.i, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfStartDevice_IofCallDriver.exit21.i

DiskPerfStartDevice_bb300:                        ; preds = %DiskPerfStartDevice_bb298
  %"768" = load i32* @"'NP", align 4
  store i32 %"768", i32* @"'s", align 4
  store i32 %returnVal2.0.i20.i, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfStartDevice_IofCallDriver.exit21.i

DiskPerfStartDevice_bb301:                        ; preds = %DiskPerfStartDevice_bb297
  %"769" = load i32* @"'s", align 4
  %"770" = load i32* @"'SKIP1", align 4
  %"771" = icmp eq i32 %"769", %"770"
  br i1 %"771", label %DiskPerfStartDevice_bb302, label %DiskPerfStartDevice_bb309

DiskPerfStartDevice_bb302:                        ; preds = %DiskPerfStartDevice_bb301
  %"772" = load i32* @"'SKIP2", align 4
  store i32 %"772", i32* @"'s", align 4
  store i32 %returnVal2.0.i20.i, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfStartDevice_IofCallDriver.exit21.i

DiskPerfStartDevice_IofCallDriver.exit21.i:       ; preds = %DiskPerfStartDevice_bb302, %DiskPerfStartDevice_bb300, %DiskPerfStartDevice_bb299, %DiskPerfStartDevice_bb296
  %"773" = sext i32 %returnVal2.0.i20.i to i64
  %"774" = icmp eq i64 %"773", 259
  br i1 %"774", label %DiskPerfStartDevice_bb303, label %DiskPerfStartDevice_bb310

DiskPerfStartDevice_bb303:                        ; preds = %DiskPerfStartDevice_IofCallDriver.exit21.i
  %"775" = load i32* @"'s", align 4
  %"776" = load i32* @"'MPR3", align 4
  %"777" = icmp eq i32 %"775", %"776"
  %"778" = load i32* @"'setEventCalled", align 4
  %"779" = icmp eq i32 %"778", 1
  %or.cond.i22.i = and i1 %"777", %"779"
  br i1 %or.cond.i22.i, label %DiskPerfStartDevice_bb304, label %DiskPerfStartDevice_bb305

DiskPerfStartDevice_bb304:                        ; preds = %DiskPerfStartDevice_bb303
  %"780" = load i32* @"'NP", align 4
  store i32 %"780", i32* @"'s", align 4
  store i32 0, i32* @"'setEventCalled", align 4
  br label %DiskPerfStartDevice_KeWaitForSingleObject.exit24.i

DiskPerfStartDevice_bb305:                        ; preds = %DiskPerfStartDevice_bb303
  %"781" = load i32* @"'customIrp", align 4
  %"782" = icmp eq i32 %"781", 1
  br i1 %"782", label %DiskPerfStartDevice_bb306, label %DiskPerfStartDevice_bb307

DiskPerfStartDevice_bb306:                        ; preds = %DiskPerfStartDevice_bb305
  %"783" = load i32* @"'NP", align 4
  store i32 %"783", i32* @"'s", align 4
  store i32 0, i32* @"'customIrp", align 4
  br label %DiskPerfStartDevice_KeWaitForSingleObject.exit24.i

DiskPerfStartDevice_bb307:                        ; preds = %DiskPerfStartDevice_bb305
  %"784" = load i32* @"'s", align 4
  %"785" = load i32* @"'MPR3", align 4
  %"786" = icmp eq i32 %"784", %"785"
  br i1 %"786", label %DiskPerfStartDevice_bb308, label %DiskPerfStartDevice_KeWaitForSingleObject.exit24.i

DiskPerfStartDevice_bb308:                        ; preds = %DiskPerfStartDevice_bb307
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfStartDevice_KeWaitForSingleObject.exit24.i: ; preds = %DiskPerfStartDevice_bb307, %DiskPerfStartDevice_bb306, %DiskPerfStartDevice_bb304
  %"787" = call i32 @__VERIFIER_nondet_int() #4
  br label %DiskPerfStartDevice_bb310

DiskPerfStartDevice_bb309:                        ; preds = %DiskPerfStartDevice_bb301
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfStartDevice_bb310:                        ; preds = %DiskPerfStartDevice_KeWaitForSingleObject.exit24.i, %DiskPerfStartDevice_IofCallDriver.exit21.i, %DiskPerfStartDevice_bb281
  %status.3.i = phi i32 [ %status.1.i, %DiskPerfStartDevice_bb281 ], [ %"575", %DiskPerfStartDevice_KeWaitForSingleObject.exit24.i ], [ %returnVal2.0.i20.i, %DiskPerfStartDevice_IofCallDriver.exit21.i ]
  %"788" = icmp slt i32 %status.3.i, 0
  br i1 %"788", label %DiskPerfStartDevice_DiskPerfRegisterDevice.exit, label %DiskPerfStartDevice_bb311

DiskPerfStartDevice_bb311:                        ; preds = %DiskPerfStartDevice_bb310
  %"789" = call i32 @__VERIFIER_nondet_int() #4
  store i32 1, i32* @"'customIrp", align 4
  %"790" = call i32 @__VERIFIER_nondet_int() #4
  %"791" = icmp eq i32 %"790", 0
  %.0.i25.i = select i1 %"791", i32 %"789", i32 0
  %"792" = icmp ne i32 %.0.i25.i, 0
  br i1 %"792", label %DiskPerfStartDevice_bb312, label %DiskPerfStartDevice_DiskPerfRegisterDevice.exit

DiskPerfStartDevice_bb312:                        ; preds = %DiskPerfStartDevice_bb311
  %"793" = call i32 @__VERIFIER_nondet_int() #4
  %"794" = load i32* @"'compRegistered", align 4
  %"795" = icmp ne i32 %"794", 0
  br i1 %"795", label %DiskPerfStartDevice_bb313, label %DiskPerfStartDevice_bb321

DiskPerfStartDevice_bb313:                        ; preds = %DiskPerfStartDevice_bb312
  %"796" = load i32* @"'routine", align 4
  %"797" = icmp eq i32 %"796", 0
  %"798" = call i32 @__VERIFIER_nondet_int() #4
  br i1 %"797", label %DiskPerfStartDevice_bb314, label %DiskPerfStartDevice_bb315

DiskPerfStartDevice_bb314:                        ; preds = %DiskPerfStartDevice_bb313
  store i32 1, i32* @"'setEventCalled", align 4
  br label %DiskPerfStartDevice_DiskPerfIoCompletion.exit.i28.i

DiskPerfStartDevice_bb315:                        ; preds = %DiskPerfStartDevice_bb313
  %"799" = call i32 @__VERIFIER_nondet_int() #4
  %"800" = call i32 @__VERIFIER_nondet_int() #4
  %"801" = call i32 @__VERIFIER_nondet_int() #4
  %"802" = call i32 @__VERIFIER_nondet_int() #4
  %"803" = call i32 @__VERIFIER_nondet_int() #4
  %"804" = call i32 @__VERIFIER_nondet_int() #4
  %"805" = call i32 @__VERIFIER_nondet_int() #4
  %"806" = call i32 @__VERIFIER_nondet_int() #4
  %"807" = call i32 @__VERIFIER_nondet_int() #4
  %"808" = call i32 @__VERIFIER_nondet_int() #4
  %"809" = call i32 @__VERIFIER_nondet_int() #4
  %"810" = call i32 @__VERIFIER_nondet_int() #4
  %"811" = call i32 @__VERIFIER_nondet_int() #4
  %"812" = icmp ne i32 %"810", 0
  %"813" = icmp ne i32 %"809", 0
  %or.cond.i26.i = and i1 %"812", %"813"
  br i1 %or.cond.i26.i, label %DiskPerfStartDevice_bb316, label %DiskPerfStartDevice_DiskPerfIoCompletion.exit.i28.i

DiskPerfStartDevice_bb316:                        ; preds = %DiskPerfStartDevice_bb315
  %"814" = load i32* @"'pended", align 4
  %"815" = icmp eq i32 %"814", 0
  br i1 %"815", label %DiskPerfStartDevice_bb317, label %DiskPerfStartDevice_bb318

DiskPerfStartDevice_bb317:                        ; preds = %DiskPerfStartDevice_bb316
  store i32 1, i32* @"'pended", align 4
  br label %DiskPerfStartDevice_DiskPerfIoCompletion.exit.i28.i

DiskPerfStartDevice_bb318:                        ; preds = %DiskPerfStartDevice_bb316
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfStartDevice_DiskPerfIoCompletion.exit.i28.i: ; preds = %DiskPerfStartDevice_bb317, %DiskPerfStartDevice_bb315, %DiskPerfStartDevice_bb314
  %compRetStatus.0.i27.i = phi i32 [ -1073741802, %DiskPerfStartDevice_bb314 ], [ 0, %DiskPerfStartDevice_bb315 ], [ 0, %DiskPerfStartDevice_bb317 ]
  %"816" = sext i32 %compRetStatus.0.i27.i to i64
  %"817" = icmp eq i64 %"816", -1073741802
  br i1 %"817", label %DiskPerfStartDevice_bb319, label %DiskPerfStartDevice_bb321

DiskPerfStartDevice_bb319:                        ; preds = %DiskPerfStartDevice_DiskPerfIoCompletion.exit.i28.i
  %"818" = load i32* @"'s", align 4
  %"819" = load i32* @"'NP", align 4
  %"820" = icmp eq i32 %"818", %"819"
  br i1 %"820", label %DiskPerfStartDevice_stubMoreProcessingRequired.exit.i29.i, label %DiskPerfStartDevice_bb320

DiskPerfStartDevice_stubMoreProcessingRequired.exit.i29.i: ; preds = %DiskPerfStartDevice_bb319
  %"821" = load i32* @"'MPR1", align 4
  store i32 %"821", i32* @"'s", align 4
  br label %DiskPerfStartDevice_bb321

DiskPerfStartDevice_bb320:                        ; preds = %DiskPerfStartDevice_bb319
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfStartDevice_bb321:                        ; preds = %DiskPerfStartDevice_stubMoreProcessingRequired.exit.i29.i, %DiskPerfStartDevice_DiskPerfIoCompletion.exit.i28.i, %DiskPerfStartDevice_bb312
  %"822" = call i32 @__VERIFIER_nondet_int() #4
  %"823" = icmp eq i32 %"822", 0
  br i1 %"823", label %DiskPerfStartDevice_bb323, label %DiskPerfStartDevice_bb322

DiskPerfStartDevice_bb322:                        ; preds = %DiskPerfStartDevice_bb321
  %"824" = call i32 @__VERIFIER_nondet_int() #4
  %"825" = icmp eq i32 %"824", 1
  %..i30.i = select i1 %"825", i32 -1073741823, i32 259
  br label %DiskPerfStartDevice_bb323

DiskPerfStartDevice_bb323:                        ; preds = %DiskPerfStartDevice_bb322, %DiskPerfStartDevice_bb321
  %returnVal2.0.i31.i = phi i32 [ 0, %DiskPerfStartDevice_bb321 ], [ %..i30.i, %DiskPerfStartDevice_bb322 ]
  %"826" = load i32* @"'s", align 4
  %"827" = load i32* @"'NP", align 4
  %"828" = icmp eq i32 %"826", %"827"
  br i1 %"828", label %DiskPerfStartDevice_bb324, label %DiskPerfStartDevice_bb325

DiskPerfStartDevice_bb324:                        ; preds = %DiskPerfStartDevice_bb323
  %"829" = load i32* @"'IPC", align 4
  store i32 %"829", i32* @"'s", align 4
  store i32 %returnVal2.0.i31.i, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfStartDevice_IofCallDriver.exit32.i

DiskPerfStartDevice_bb325:                        ; preds = %DiskPerfStartDevice_bb323
  %"830" = load i32* @"'s", align 4
  %"831" = load i32* @"'MPR1", align 4
  %"832" = icmp eq i32 %"830", %"831"
  br i1 %"832", label %DiskPerfStartDevice_bb326, label %DiskPerfStartDevice_bb329

DiskPerfStartDevice_bb326:                        ; preds = %DiskPerfStartDevice_bb325
  %"833" = icmp eq i32 %returnVal2.0.i31.i, 259
  br i1 %"833", label %DiskPerfStartDevice_bb327, label %DiskPerfStartDevice_bb328

DiskPerfStartDevice_bb327:                        ; preds = %DiskPerfStartDevice_bb326
  %"834" = load i32* @"'MPR3", align 4
  store i32 %"834", i32* @"'s", align 4
  store i32 %returnVal2.0.i31.i, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfStartDevice_IofCallDriver.exit32.i

DiskPerfStartDevice_bb328:                        ; preds = %DiskPerfStartDevice_bb326
  %"835" = load i32* @"'NP", align 4
  store i32 %"835", i32* @"'s", align 4
  store i32 %returnVal2.0.i31.i, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfStartDevice_IofCallDriver.exit32.i

DiskPerfStartDevice_bb329:                        ; preds = %DiskPerfStartDevice_bb325
  %"836" = load i32* @"'s", align 4
  %"837" = load i32* @"'SKIP1", align 4
  %"838" = icmp eq i32 %"836", %"837"
  br i1 %"838", label %DiskPerfStartDevice_bb330, label %DiskPerfStartDevice_bb337

DiskPerfStartDevice_bb330:                        ; preds = %DiskPerfStartDevice_bb329
  %"839" = load i32* @"'SKIP2", align 4
  store i32 %"839", i32* @"'s", align 4
  store i32 %returnVal2.0.i31.i, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfStartDevice_IofCallDriver.exit32.i

DiskPerfStartDevice_IofCallDriver.exit32.i:       ; preds = %DiskPerfStartDevice_bb330, %DiskPerfStartDevice_bb328, %DiskPerfStartDevice_bb327, %DiskPerfStartDevice_bb324
  %"840" = sext i32 %returnVal2.0.i31.i to i64
  %"841" = icmp eq i64 %"840", 259
  br i1 %"841", label %DiskPerfStartDevice_bb331, label %DiskPerfStartDevice_DiskPerfRegisterDevice.exit

DiskPerfStartDevice_bb331:                        ; preds = %DiskPerfStartDevice_IofCallDriver.exit32.i
  %"842" = load i32* @"'s", align 4
  %"843" = load i32* @"'MPR3", align 4
  %"844" = icmp eq i32 %"842", %"843"
  %"845" = load i32* @"'setEventCalled", align 4
  %"846" = icmp eq i32 %"845", 1
  %or.cond.i33.i = and i1 %"844", %"846"
  br i1 %or.cond.i33.i, label %DiskPerfStartDevice_bb332, label %DiskPerfStartDevice_bb333

DiskPerfStartDevice_bb332:                        ; preds = %DiskPerfStartDevice_bb331
  %"847" = load i32* @"'NP", align 4
  store i32 %"847", i32* @"'s", align 4
  store i32 0, i32* @"'setEventCalled", align 4
  br label %DiskPerfStartDevice_KeWaitForSingleObject.exit35.i

DiskPerfStartDevice_bb333:                        ; preds = %DiskPerfStartDevice_bb331
  %"848" = load i32* @"'customIrp", align 4
  %"849" = icmp eq i32 %"848", 1
  br i1 %"849", label %DiskPerfStartDevice_bb334, label %DiskPerfStartDevice_bb335

DiskPerfStartDevice_bb334:                        ; preds = %DiskPerfStartDevice_bb333
  %"850" = load i32* @"'NP", align 4
  store i32 %"850", i32* @"'s", align 4
  store i32 0, i32* @"'customIrp", align 4
  br label %DiskPerfStartDevice_KeWaitForSingleObject.exit35.i

DiskPerfStartDevice_bb335:                        ; preds = %DiskPerfStartDevice_bb333
  %"851" = load i32* @"'s", align 4
  %"852" = load i32* @"'MPR3", align 4
  %"853" = icmp eq i32 %"851", %"852"
  br i1 %"853", label %DiskPerfStartDevice_bb336, label %DiskPerfStartDevice_KeWaitForSingleObject.exit35.i

DiskPerfStartDevice_bb336:                        ; preds = %DiskPerfStartDevice_bb335
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfStartDevice_KeWaitForSingleObject.exit35.i: ; preds = %DiskPerfStartDevice_bb335, %DiskPerfStartDevice_bb334, %DiskPerfStartDevice_bb332
  %"854" = call i32 @__VERIFIER_nondet_int() #4
  br label %DiskPerfStartDevice_DiskPerfRegisterDevice.exit

DiskPerfStartDevice_bb337:                        ; preds = %DiskPerfStartDevice_bb329
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfStartDevice_bb338:                        ; preds = %DiskPerfStartDevice_bb273
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfStartDevice_bb339:                        ; preds = %DiskPerfStartDevice_bb246
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfStartDevice_DiskPerfRegisterDevice.exit:  ; preds = %DiskPerfStartDevice_IofCallDriver.exit32.i, %DiskPerfStartDevice_KeWaitForSingleObject.exit35.i, %DiskPerfStartDevice_bb254, %DiskPerfStartDevice_DiskPerfForwardIrpSynchronous.exit, %DiskPerfStartDevice_bb255, %DiskPerfStartDevice_bb282, %DiskPerfStartDevice_bb283, %DiskPerfStartDevice_bb310, %DiskPerfStartDevice_bb311
  store i32 %status.0.i, i32* @"'myStatus", align 4
  %"855" = load i32* @"'s", align 4
  %"856" = load i32* @"'NP", align 4
  %"857" = icmp eq i32 %"855", %"856"
  br i1 %"857", label %DiskPerfStartDevice_IofCompleteRequest.exit, label %DiskPerfStartDevice_bb340

DiskPerfStartDevice_IofCompleteRequest.exit:      ; preds = %DiskPerfStartDevice_DiskPerfRegisterDevice.exit
  %"858" = load i32* @"'DC", align 4
  store i32 %"858", i32* @"'s", align 4
  ret i32 %status.0.i

DiskPerfStartDevice_bb340:                        ; preds = %DiskPerfStartDevice_DiskPerfRegisterDevice.exit
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfStartDevice_bb341:                        ; preds = %DiskPerfStartDevice_bb221
  call void (...)* @__VERIFIER_error() #5
  unreachable
}

; Function Attrs: nounwind uwtable
define void @IofCompleteRequest(i32 %Irp, i32 %PriorityBoost) #0 {
IofCompleteRequest_bb342:
  %"859" = load i32* @"'s", align 4
  %"860" = load i32* @"'NP", align 4
  %"861" = icmp eq i32 %"859", %"860"
  br i1 %"861", label %IofCompleteRequest_bb343, label %IofCompleteRequest_bb344

IofCompleteRequest_bb343:                         ; preds = %IofCompleteRequest_bb342
  %"862" = load i32* @"'DC", align 4
  store i32 %"862", i32* @"'s", align 4
  ret void

IofCompleteRequest_bb344:                         ; preds = %IofCompleteRequest_bb342
  call void (...)* @__VERIFIER_error() #5
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @DiskPerfRemoveDevice(i32 %DeviceObject, i32 %Irp) #0 {
DiskPerfRemoveDevice_bb345:
  %"863" = call i32 @__VERIFIER_nondet_int()
  %"864" = call i32 @__VERIFIER_nondet_int()
  %"865" = call i32 @__VERIFIER_nondet_int() #4
  %"866" = call i32 @__VERIFIER_nondet_int() #4
  %"867" = call i32 @__VERIFIER_nondet_int() #4
  %"868" = call i32 @__VERIFIER_nondet_int() #4
  %"869" = load i32* @"'s", align 4
  %"870" = load i32* @"'NP", align 4
  %"871" = icmp ne i32 %"869", %"870"
  br i1 %"871", label %DiskPerfRemoveDevice_bb346, label %DiskPerfRemoveDevice_bb347

DiskPerfRemoveDevice_bb346:                       ; preds = %DiskPerfRemoveDevice_bb345
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfRemoveDevice_bb347:                       ; preds = %DiskPerfRemoveDevice_bb345
  %"872" = load i32* @"'compRegistered", align 4
  %"873" = icmp ne i32 %"872", 0
  br i1 %"873", label %DiskPerfRemoveDevice_bb348, label %DiskPerfRemoveDevice_bb349

DiskPerfRemoveDevice_bb348:                       ; preds = %DiskPerfRemoveDevice_bb347
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfRemoveDevice_bb349:                       ; preds = %DiskPerfRemoveDevice_bb347
  store i32 1, i32* @"'compRegistered", align 4
  store i32 0, i32* @"'routine", align 4
  %"874" = call i32 @__VERIFIER_nondet_int() #4
  %"875" = load i32* @"'compRegistered", align 4
  %"876" = icmp ne i32 %"875", 0
  br i1 %"876", label %DiskPerfRemoveDevice_bb350, label %DiskPerfRemoveDevice_bb358

DiskPerfRemoveDevice_bb350:                       ; preds = %DiskPerfRemoveDevice_bb349
  %"877" = load i32* @"'routine", align 4
  %"878" = icmp eq i32 %"877", 0
  %"879" = call i32 @__VERIFIER_nondet_int() #4
  br i1 %"878", label %DiskPerfRemoveDevice_bb351, label %DiskPerfRemoveDevice_bb352

DiskPerfRemoveDevice_bb351:                       ; preds = %DiskPerfRemoveDevice_bb350
  store i32 1, i32* @"'setEventCalled", align 4
  br label %DiskPerfRemoveDevice_DiskPerfIoCompletion.exit.i.i

DiskPerfRemoveDevice_bb352:                       ; preds = %DiskPerfRemoveDevice_bb350
  %"880" = call i32 @__VERIFIER_nondet_int() #4
  %"881" = call i32 @__VERIFIER_nondet_int() #4
  %"882" = call i32 @__VERIFIER_nondet_int() #4
  %"883" = call i32 @__VERIFIER_nondet_int() #4
  %"884" = call i32 @__VERIFIER_nondet_int() #4
  %"885" = call i32 @__VERIFIER_nondet_int() #4
  %"886" = call i32 @__VERIFIER_nondet_int() #4
  %"887" = call i32 @__VERIFIER_nondet_int() #4
  %"888" = call i32 @__VERIFIER_nondet_int() #4
  %"889" = call i32 @__VERIFIER_nondet_int() #4
  %"890" = call i32 @__VERIFIER_nondet_int() #4
  %"891" = call i32 @__VERIFIER_nondet_int() #4
  %"892" = call i32 @__VERIFIER_nondet_int() #4
  %"893" = icmp ne i32 %"891", 0
  %"894" = icmp ne i32 %"890", 0
  %or.cond.i.i = and i1 %"893", %"894"
  br i1 %or.cond.i.i, label %DiskPerfRemoveDevice_bb353, label %DiskPerfRemoveDevice_DiskPerfIoCompletion.exit.i.i

DiskPerfRemoveDevice_bb353:                       ; preds = %DiskPerfRemoveDevice_bb352
  %"895" = load i32* @"'pended", align 4
  %"896" = icmp eq i32 %"895", 0
  br i1 %"896", label %DiskPerfRemoveDevice_bb354, label %DiskPerfRemoveDevice_bb355

DiskPerfRemoveDevice_bb354:                       ; preds = %DiskPerfRemoveDevice_bb353
  store i32 1, i32* @"'pended", align 4
  br label %DiskPerfRemoveDevice_DiskPerfIoCompletion.exit.i.i

DiskPerfRemoveDevice_bb355:                       ; preds = %DiskPerfRemoveDevice_bb353
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfRemoveDevice_DiskPerfIoCompletion.exit.i.i: ; preds = %DiskPerfRemoveDevice_bb354, %DiskPerfRemoveDevice_bb352, %DiskPerfRemoveDevice_bb351
  %compRetStatus.0.i.i = phi i32 [ -1073741802, %DiskPerfRemoveDevice_bb351 ], [ 0, %DiskPerfRemoveDevice_bb352 ], [ 0, %DiskPerfRemoveDevice_bb354 ]
  %"897" = sext i32 %compRetStatus.0.i.i to i64
  %"898" = icmp eq i64 %"897", -1073741802
  br i1 %"898", label %DiskPerfRemoveDevice_bb356, label %DiskPerfRemoveDevice_bb358

DiskPerfRemoveDevice_bb356:                       ; preds = %DiskPerfRemoveDevice_DiskPerfIoCompletion.exit.i.i
  %"899" = load i32* @"'s", align 4
  %"900" = load i32* @"'NP", align 4
  %"901" = icmp eq i32 %"899", %"900"
  br i1 %"901", label %DiskPerfRemoveDevice_stubMoreProcessingRequired.exit.i.i, label %DiskPerfRemoveDevice_bb357

DiskPerfRemoveDevice_stubMoreProcessingRequired.exit.i.i: ; preds = %DiskPerfRemoveDevice_bb356
  %"902" = load i32* @"'MPR1", align 4
  store i32 %"902", i32* @"'s", align 4
  br label %DiskPerfRemoveDevice_bb358

DiskPerfRemoveDevice_bb357:                       ; preds = %DiskPerfRemoveDevice_bb356
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfRemoveDevice_bb358:                       ; preds = %DiskPerfRemoveDevice_stubMoreProcessingRequired.exit.i.i, %DiskPerfRemoveDevice_DiskPerfIoCompletion.exit.i.i, %DiskPerfRemoveDevice_bb349
  %"903" = call i32 @__VERIFIER_nondet_int() #4
  %"904" = icmp eq i32 %"903", 0
  br i1 %"904", label %DiskPerfRemoveDevice_bb360, label %DiskPerfRemoveDevice_bb359

DiskPerfRemoveDevice_bb359:                       ; preds = %DiskPerfRemoveDevice_bb358
  %"905" = call i32 @__VERIFIER_nondet_int() #4
  %"906" = icmp eq i32 %"905", 1
  %..i.i = select i1 %"906", i32 -1073741823, i32 259
  br label %DiskPerfRemoveDevice_bb360

DiskPerfRemoveDevice_bb360:                       ; preds = %DiskPerfRemoveDevice_bb359, %DiskPerfRemoveDevice_bb358
  %returnVal2.0.i.i = phi i32 [ 0, %DiskPerfRemoveDevice_bb358 ], [ %..i.i, %DiskPerfRemoveDevice_bb359 ]
  %"907" = load i32* @"'s", align 4
  %"908" = load i32* @"'NP", align 4
  %"909" = icmp eq i32 %"907", %"908"
  br i1 %"909", label %DiskPerfRemoveDevice_bb361, label %DiskPerfRemoveDevice_bb362

DiskPerfRemoveDevice_bb361:                       ; preds = %DiskPerfRemoveDevice_bb360
  %"910" = load i32* @"'IPC", align 4
  store i32 %"910", i32* @"'s", align 4
  store i32 %returnVal2.0.i.i, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfRemoveDevice_IofCallDriver.exit.i

DiskPerfRemoveDevice_bb362:                       ; preds = %DiskPerfRemoveDevice_bb360
  %"911" = load i32* @"'s", align 4
  %"912" = load i32* @"'MPR1", align 4
  %"913" = icmp eq i32 %"911", %"912"
  br i1 %"913", label %DiskPerfRemoveDevice_bb363, label %DiskPerfRemoveDevice_bb366

DiskPerfRemoveDevice_bb363:                       ; preds = %DiskPerfRemoveDevice_bb362
  %"914" = icmp eq i32 %returnVal2.0.i.i, 259
  br i1 %"914", label %DiskPerfRemoveDevice_bb364, label %DiskPerfRemoveDevice_bb365

DiskPerfRemoveDevice_bb364:                       ; preds = %DiskPerfRemoveDevice_bb363
  %"915" = load i32* @"'MPR3", align 4
  store i32 %"915", i32* @"'s", align 4
  store i32 %returnVal2.0.i.i, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfRemoveDevice_IofCallDriver.exit.i

DiskPerfRemoveDevice_bb365:                       ; preds = %DiskPerfRemoveDevice_bb363
  %"916" = load i32* @"'NP", align 4
  store i32 %"916", i32* @"'s", align 4
  store i32 %returnVal2.0.i.i, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfRemoveDevice_IofCallDriver.exit.i

DiskPerfRemoveDevice_bb366:                       ; preds = %DiskPerfRemoveDevice_bb362
  %"917" = load i32* @"'s", align 4
  %"918" = load i32* @"'SKIP1", align 4
  %"919" = icmp eq i32 %"917", %"918"
  br i1 %"919", label %DiskPerfRemoveDevice_bb367, label %DiskPerfRemoveDevice_bb375

DiskPerfRemoveDevice_bb367:                       ; preds = %DiskPerfRemoveDevice_bb366
  %"920" = load i32* @"'SKIP2", align 4
  store i32 %"920", i32* @"'s", align 4
  store i32 %returnVal2.0.i.i, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfRemoveDevice_IofCallDriver.exit.i

DiskPerfRemoveDevice_IofCallDriver.exit.i:        ; preds = %DiskPerfRemoveDevice_bb367, %DiskPerfRemoveDevice_bb365, %DiskPerfRemoveDevice_bb364, %DiskPerfRemoveDevice_bb361
  %"921" = sext i32 %returnVal2.0.i.i to i64
  %"922" = icmp eq i64 %"921", 259
  br i1 %"922", label %DiskPerfRemoveDevice_bb368, label %DiskPerfRemoveDevice_DiskPerfForwardIrpSynchronous.exit

DiskPerfRemoveDevice_bb368:                       ; preds = %DiskPerfRemoveDevice_IofCallDriver.exit.i
  %"923" = load i32* @"'s", align 4
  %"924" = load i32* @"'MPR3", align 4
  %"925" = icmp eq i32 %"923", %"924"
  %"926" = load i32* @"'setEventCalled", align 4
  %"927" = icmp eq i32 %"926", 1
  %or.cond.i2.i = and i1 %"925", %"927"
  br i1 %or.cond.i2.i, label %DiskPerfRemoveDevice_bb369, label %DiskPerfRemoveDevice_bb370

DiskPerfRemoveDevice_bb369:                       ; preds = %DiskPerfRemoveDevice_bb368
  %"928" = load i32* @"'NP", align 4
  store i32 %"928", i32* @"'s", align 4
  store i32 0, i32* @"'setEventCalled", align 4
  br label %DiskPerfRemoveDevice_KeWaitForSingleObject.exit.i

DiskPerfRemoveDevice_bb370:                       ; preds = %DiskPerfRemoveDevice_bb368
  %"929" = load i32* @"'customIrp", align 4
  %"930" = icmp eq i32 %"929", 1
  br i1 %"930", label %DiskPerfRemoveDevice_bb371, label %DiskPerfRemoveDevice_bb372

DiskPerfRemoveDevice_bb371:                       ; preds = %DiskPerfRemoveDevice_bb370
  %"931" = load i32* @"'NP", align 4
  store i32 %"931", i32* @"'s", align 4
  store i32 0, i32* @"'customIrp", align 4
  br label %DiskPerfRemoveDevice_KeWaitForSingleObject.exit.i

DiskPerfRemoveDevice_bb372:                       ; preds = %DiskPerfRemoveDevice_bb370
  %"932" = load i32* @"'s", align 4
  %"933" = load i32* @"'MPR3", align 4
  %"934" = icmp eq i32 %"932", %"933"
  br i1 %"934", label %DiskPerfRemoveDevice_bb373, label %DiskPerfRemoveDevice_KeWaitForSingleObject.exit.i

DiskPerfRemoveDevice_bb373:                       ; preds = %DiskPerfRemoveDevice_bb372
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfRemoveDevice_KeWaitForSingleObject.exit.i: ; preds = %DiskPerfRemoveDevice_bb372, %DiskPerfRemoveDevice_bb371, %DiskPerfRemoveDevice_bb369
  %"935" = call i32 @__VERIFIER_nondet_int() #4
  %"936" = load i32* @"'myStatus", align 4
  br label %DiskPerfRemoveDevice_DiskPerfForwardIrpSynchronous.exit

DiskPerfRemoveDevice_DiskPerfForwardIrpSynchronous.exit: ; preds = %DiskPerfRemoveDevice_IofCallDriver.exit.i, %DiskPerfRemoveDevice_KeWaitForSingleObject.exit.i
  %status.0.i = phi i32 [ %"936", %DiskPerfRemoveDevice_KeWaitForSingleObject.exit.i ], [ %returnVal2.0.i.i, %DiskPerfRemoveDevice_IofCallDriver.exit.i ]
  store i32 %status.0.i, i32* @"'myStatus", align 4
  %"937" = load i32* @"'s", align 4
  %"938" = load i32* @"'NP", align 4
  %"939" = icmp eq i32 %"937", %"938"
  br i1 %"939", label %DiskPerfRemoveDevice_IofCompleteRequest.exit, label %DiskPerfRemoveDevice_bb374

DiskPerfRemoveDevice_IofCompleteRequest.exit:     ; preds = %DiskPerfRemoveDevice_DiskPerfForwardIrpSynchronous.exit
  %"940" = load i32* @"'DC", align 4
  store i32 %"940", i32* @"'s", align 4
  ret i32 %status.0.i

DiskPerfRemoveDevice_bb374:                       ; preds = %DiskPerfRemoveDevice_DiskPerfForwardIrpSynchronous.exit
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfRemoveDevice_bb375:                       ; preds = %DiskPerfRemoveDevice_bb366
  call void (...)* @__VERIFIER_error() #5
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @DiskPerfSendToNextDriver(i32 %DeviceObject, i32 %Irp) #0 {
DiskPerfSendToNextDriver_bb376:
  %"941" = call i32 @__VERIFIER_nondet_int()
  %"942" = call i32 @__VERIFIER_nondet_int()
  %"943" = call i32 @__VERIFIER_nondet_int()
  %"944" = call i32 @__VERIFIER_nondet_int()
  %"945" = load i32* @"'s", align 4
  %"946" = load i32* @"'NP", align 4
  %"947" = icmp eq i32 %"945", %"946"
  br i1 %"947", label %DiskPerfSendToNextDriver_bb377, label %DiskPerfSendToNextDriver_bb397

DiskPerfSendToNextDriver_bb377:                   ; preds = %DiskPerfSendToNextDriver_bb376
  %"948" = load i32* @"'SKIP1", align 4
  store i32 %"948", i32* @"'s", align 4
  %"949" = call i32 @__VERIFIER_nondet_int() #4
  %"950" = load i32* @"'compRegistered", align 4
  %"951" = icmp ne i32 %"950", 0
  br i1 %"951", label %DiskPerfSendToNextDriver_bb378, label %DiskPerfSendToNextDriver_bb386

DiskPerfSendToNextDriver_bb378:                   ; preds = %DiskPerfSendToNextDriver_bb377
  %"952" = load i32* @"'routine", align 4
  %"953" = icmp eq i32 %"952", 0
  %"954" = call i32 @__VERIFIER_nondet_int() #4
  br i1 %"953", label %DiskPerfSendToNextDriver_bb379, label %DiskPerfSendToNextDriver_bb380

DiskPerfSendToNextDriver_bb379:                   ; preds = %DiskPerfSendToNextDriver_bb378
  store i32 1, i32* @"'setEventCalled", align 4
  br label %DiskPerfSendToNextDriver_DiskPerfIoCompletion.exit.i

DiskPerfSendToNextDriver_bb380:                   ; preds = %DiskPerfSendToNextDriver_bb378
  %"955" = call i32 @__VERIFIER_nondet_int() #4
  %"956" = call i32 @__VERIFIER_nondet_int() #4
  %"957" = call i32 @__VERIFIER_nondet_int() #4
  %"958" = call i32 @__VERIFIER_nondet_int() #4
  %"959" = call i32 @__VERIFIER_nondet_int() #4
  %"960" = call i32 @__VERIFIER_nondet_int() #4
  %"961" = call i32 @__VERIFIER_nondet_int() #4
  %"962" = call i32 @__VERIFIER_nondet_int() #4
  %"963" = call i32 @__VERIFIER_nondet_int() #4
  %"964" = call i32 @__VERIFIER_nondet_int() #4
  %"965" = call i32 @__VERIFIER_nondet_int() #4
  %"966" = call i32 @__VERIFIER_nondet_int() #4
  %"967" = call i32 @__VERIFIER_nondet_int() #4
  %"968" = icmp ne i32 %"966", 0
  %"969" = icmp ne i32 %"965", 0
  %or.cond.i = and i1 %"968", %"969"
  br i1 %or.cond.i, label %DiskPerfSendToNextDriver_bb381, label %DiskPerfSendToNextDriver_DiskPerfIoCompletion.exit.i

DiskPerfSendToNextDriver_bb381:                   ; preds = %DiskPerfSendToNextDriver_bb380
  %"970" = load i32* @"'pended", align 4
  %"971" = icmp eq i32 %"970", 0
  br i1 %"971", label %DiskPerfSendToNextDriver_bb382, label %DiskPerfSendToNextDriver_bb383

DiskPerfSendToNextDriver_bb382:                   ; preds = %DiskPerfSendToNextDriver_bb381
  store i32 1, i32* @"'pended", align 4
  br label %DiskPerfSendToNextDriver_DiskPerfIoCompletion.exit.i

DiskPerfSendToNextDriver_bb383:                   ; preds = %DiskPerfSendToNextDriver_bb381
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfSendToNextDriver_DiskPerfIoCompletion.exit.i: ; preds = %DiskPerfSendToNextDriver_bb382, %DiskPerfSendToNextDriver_bb380, %DiskPerfSendToNextDriver_bb379
  %compRetStatus.0.i = phi i32 [ -1073741802, %DiskPerfSendToNextDriver_bb379 ], [ 0, %DiskPerfSendToNextDriver_bb380 ], [ 0, %DiskPerfSendToNextDriver_bb382 ]
  %"972" = sext i32 %compRetStatus.0.i to i64
  %"973" = icmp eq i64 %"972", -1073741802
  br i1 %"973", label %DiskPerfSendToNextDriver_bb384, label %DiskPerfSendToNextDriver_bb386

DiskPerfSendToNextDriver_bb384:                   ; preds = %DiskPerfSendToNextDriver_DiskPerfIoCompletion.exit.i
  %"974" = load i32* @"'s", align 4
  %"975" = load i32* @"'NP", align 4
  %"976" = icmp eq i32 %"974", %"975"
  br i1 %"976", label %DiskPerfSendToNextDriver_stubMoreProcessingRequired.exit.i, label %DiskPerfSendToNextDriver_bb385

DiskPerfSendToNextDriver_stubMoreProcessingRequired.exit.i: ; preds = %DiskPerfSendToNextDriver_bb384
  %"977" = load i32* @"'MPR1", align 4
  store i32 %"977", i32* @"'s", align 4
  br label %DiskPerfSendToNextDriver_bb386

DiskPerfSendToNextDriver_bb385:                   ; preds = %DiskPerfSendToNextDriver_bb384
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfSendToNextDriver_bb386:                   ; preds = %DiskPerfSendToNextDriver_stubMoreProcessingRequired.exit.i, %DiskPerfSendToNextDriver_DiskPerfIoCompletion.exit.i, %DiskPerfSendToNextDriver_bb377
  %"978" = call i32 @__VERIFIER_nondet_int() #4
  %"979" = icmp eq i32 %"978", 0
  br i1 %"979", label %DiskPerfSendToNextDriver_bb388, label %DiskPerfSendToNextDriver_bb387

DiskPerfSendToNextDriver_bb387:                   ; preds = %DiskPerfSendToNextDriver_bb386
  %"980" = call i32 @__VERIFIER_nondet_int() #4
  %"981" = icmp eq i32 %"980", 1
  %..i = select i1 %"981", i32 -1073741823, i32 259
  br label %DiskPerfSendToNextDriver_bb388

DiskPerfSendToNextDriver_bb388:                   ; preds = %DiskPerfSendToNextDriver_bb387, %DiskPerfSendToNextDriver_bb386
  %returnVal2.0.i = phi i32 [ 0, %DiskPerfSendToNextDriver_bb386 ], [ %..i, %DiskPerfSendToNextDriver_bb387 ]
  %"982" = load i32* @"'s", align 4
  %"983" = load i32* @"'NP", align 4
  %"984" = icmp eq i32 %"982", %"983"
  br i1 %"984", label %DiskPerfSendToNextDriver_bb389, label %DiskPerfSendToNextDriver_bb390

DiskPerfSendToNextDriver_bb389:                   ; preds = %DiskPerfSendToNextDriver_bb388
  %"985" = load i32* @"'IPC", align 4
  store i32 %"985", i32* @"'s", align 4
  store i32 %returnVal2.0.i, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfSendToNextDriver_IofCallDriver.exit

DiskPerfSendToNextDriver_bb390:                   ; preds = %DiskPerfSendToNextDriver_bb388
  %"986" = load i32* @"'s", align 4
  %"987" = load i32* @"'MPR1", align 4
  %"988" = icmp eq i32 %"986", %"987"
  br i1 %"988", label %DiskPerfSendToNextDriver_bb391, label %DiskPerfSendToNextDriver_bb394

DiskPerfSendToNextDriver_bb391:                   ; preds = %DiskPerfSendToNextDriver_bb390
  %"989" = icmp eq i32 %returnVal2.0.i, 259
  br i1 %"989", label %DiskPerfSendToNextDriver_bb392, label %DiskPerfSendToNextDriver_bb393

DiskPerfSendToNextDriver_bb392:                   ; preds = %DiskPerfSendToNextDriver_bb391
  %"990" = load i32* @"'MPR3", align 4
  store i32 %"990", i32* @"'s", align 4
  store i32 %returnVal2.0.i, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfSendToNextDriver_IofCallDriver.exit

DiskPerfSendToNextDriver_bb393:                   ; preds = %DiskPerfSendToNextDriver_bb391
  %"991" = load i32* @"'NP", align 4
  store i32 %"991", i32* @"'s", align 4
  store i32 %returnVal2.0.i, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfSendToNextDriver_IofCallDriver.exit

DiskPerfSendToNextDriver_bb394:                   ; preds = %DiskPerfSendToNextDriver_bb390
  %"992" = load i32* @"'s", align 4
  %"993" = load i32* @"'SKIP1", align 4
  %"994" = icmp eq i32 %"992", %"993"
  br i1 %"994", label %DiskPerfSendToNextDriver_bb395, label %DiskPerfSendToNextDriver_bb396

DiskPerfSendToNextDriver_bb395:                   ; preds = %DiskPerfSendToNextDriver_bb394
  %"995" = load i32* @"'SKIP2", align 4
  store i32 %"995", i32* @"'s", align 4
  store i32 %returnVal2.0.i, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfSendToNextDriver_IofCallDriver.exit

DiskPerfSendToNextDriver_IofCallDriver.exit:      ; preds = %DiskPerfSendToNextDriver_bb389, %DiskPerfSendToNextDriver_bb392, %DiskPerfSendToNextDriver_bb393, %DiskPerfSendToNextDriver_bb395
  ret i32 %returnVal2.0.i

DiskPerfSendToNextDriver_bb396:                   ; preds = %DiskPerfSendToNextDriver_bb394
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfSendToNextDriver_bb397:                   ; preds = %DiskPerfSendToNextDriver_bb376
  call void (...)* @__VERIFIER_error() #5
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @DiskPerfDispatchPower(i32 %DeviceObject, i32 %Irp) #0 {
DiskPerfDispatchPower_bb398:
  %"996" = call i32 @__VERIFIER_nondet_int()
  %"997" = call i32 @__VERIFIER_nondet_int()
  %"998" = call i32 @__VERIFIER_nondet_int()
  %"999" = call i32 @__VERIFIER_nondet_int()
  %"1000" = load i32* @"'s", align 4
  %"1001" = load i32* @"'NP", align 4
  %"1002" = icmp eq i32 %"1000", %"1001"
  br i1 %"1002", label %DiskPerfDispatchPower_bb399, label %DiskPerfDispatchPower_bb420

DiskPerfDispatchPower_bb399:                      ; preds = %DiskPerfDispatchPower_bb398
  %"1003" = load i32* @"'SKIP1", align 4
  store i32 %"1003", i32* @"'s", align 4
  %"1004" = call i32 @__kittel_nondef.0() #4
  %"1005" = call i32 @__VERIFIER_nondet_int() #4
  %"1006" = load i32* @"'compRegistered", align 4
  %"1007" = icmp ne i32 %"1006", 0
  br i1 %"1007", label %DiskPerfDispatchPower_bb400, label %DiskPerfDispatchPower_bb409

DiskPerfDispatchPower_bb400:                      ; preds = %DiskPerfDispatchPower_bb399
  %"1008" = load i32* @"'routine", align 4
  %"1009" = icmp eq i32 %"1008", 0
  br i1 %"1009", label %DiskPerfDispatchPower_bb401, label %DiskPerfDispatchPower_bb402

DiskPerfDispatchPower_bb401:                      ; preds = %DiskPerfDispatchPower_bb400
  %"1010" = call i32 @__VERIFIER_nondet_int() #4
  store i32 1, i32* @"'setEventCalled", align 4
  br label %DiskPerfDispatchPower_DiskPerfIoCompletion.exit.i

DiskPerfDispatchPower_bb402:                      ; preds = %DiskPerfDispatchPower_bb400
  %"1011" = load i32* @"'routine", align 4
  %"1012" = icmp eq i32 %"1011", 1
  br i1 %"1012", label %DiskPerfDispatchPower_bb403, label %DiskPerfDispatchPower_DiskPerfIoCompletion.exit.i

DiskPerfDispatchPower_bb403:                      ; preds = %DiskPerfDispatchPower_bb402
  %"1013" = call i32 @__VERIFIER_nondet_int() #4
  %"1014" = call i32 @__VERIFIER_nondet_int() #4
  %"1015" = call i32 @__VERIFIER_nondet_int() #4
  %"1016" = call i32 @__VERIFIER_nondet_int() #4
  %"1017" = call i32 @__VERIFIER_nondet_int() #4
  %"1018" = call i32 @__VERIFIER_nondet_int() #4
  %"1019" = call i32 @__VERIFIER_nondet_int() #4
  %"1020" = call i32 @__VERIFIER_nondet_int() #4
  %"1021" = call i32 @__VERIFIER_nondet_int() #4
  %"1022" = call i32 @__VERIFIER_nondet_int() #4
  %"1023" = call i32 @__VERIFIER_nondet_int() #4
  %"1024" = call i32 @__VERIFIER_nondet_int() #4
  %"1025" = call i32 @__VERIFIER_nondet_int() #4
  %"1026" = call i32 @__VERIFIER_nondet_int() #4
  %"1027" = icmp ne i32 %"1025", 0
  %"1028" = icmp ne i32 %"1024", 0
  %or.cond.i = and i1 %"1027", %"1028"
  br i1 %or.cond.i, label %DiskPerfDispatchPower_bb404, label %DiskPerfDispatchPower_DiskPerfIoCompletion.exit.i

DiskPerfDispatchPower_bb404:                      ; preds = %DiskPerfDispatchPower_bb403
  %"1029" = load i32* @"'pended", align 4
  %"1030" = icmp eq i32 %"1029", 0
  br i1 %"1030", label %DiskPerfDispatchPower_bb405, label %DiskPerfDispatchPower_bb406

DiskPerfDispatchPower_bb405:                      ; preds = %DiskPerfDispatchPower_bb404
  store i32 1, i32* @"'pended", align 4
  br label %DiskPerfDispatchPower_DiskPerfIoCompletion.exit.i

DiskPerfDispatchPower_bb406:                      ; preds = %DiskPerfDispatchPower_bb404
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfDispatchPower_DiskPerfIoCompletion.exit.i: ; preds = %DiskPerfDispatchPower_bb405, %DiskPerfDispatchPower_bb403, %DiskPerfDispatchPower_bb402, %DiskPerfDispatchPower_bb401
  %compRetStatus.1.i = phi i32 [ -1073741802, %DiskPerfDispatchPower_bb401 ], [ %"1004", %DiskPerfDispatchPower_bb402 ], [ 0, %DiskPerfDispatchPower_bb403 ], [ 0, %DiskPerfDispatchPower_bb405 ]
  %"1031" = sext i32 %compRetStatus.1.i to i64
  %"1032" = icmp eq i64 %"1031", -1073741802
  br i1 %"1032", label %DiskPerfDispatchPower_bb407, label %DiskPerfDispatchPower_bb409

DiskPerfDispatchPower_bb407:                      ; preds = %DiskPerfDispatchPower_DiskPerfIoCompletion.exit.i
  %"1033" = load i32* @"'s", align 4
  %"1034" = load i32* @"'NP", align 4
  %"1035" = icmp eq i32 %"1033", %"1034"
  br i1 %"1035", label %DiskPerfDispatchPower_stubMoreProcessingRequired.exit.i, label %DiskPerfDispatchPower_bb408

DiskPerfDispatchPower_stubMoreProcessingRequired.exit.i: ; preds = %DiskPerfDispatchPower_bb407
  %"1036" = load i32* @"'MPR1", align 4
  store i32 %"1036", i32* @"'s", align 4
  br label %DiskPerfDispatchPower_bb409

DiskPerfDispatchPower_bb408:                      ; preds = %DiskPerfDispatchPower_bb407
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfDispatchPower_bb409:                      ; preds = %DiskPerfDispatchPower_stubMoreProcessingRequired.exit.i, %DiskPerfDispatchPower_DiskPerfIoCompletion.exit.i, %DiskPerfDispatchPower_bb399
  %"1037" = call i32 @__VERIFIER_nondet_int() #4
  %"1038" = icmp eq i32 %"1037", 0
  br i1 %"1038", label %DiskPerfDispatchPower_bb411, label %DiskPerfDispatchPower_bb410

DiskPerfDispatchPower_bb410:                      ; preds = %DiskPerfDispatchPower_bb409
  %"1039" = call i32 @__VERIFIER_nondet_int() #4
  %"1040" = icmp eq i32 %"1039", 1
  %..i = select i1 %"1040", i32 -1073741823, i32 259
  br label %DiskPerfDispatchPower_bb411

DiskPerfDispatchPower_bb411:                      ; preds = %DiskPerfDispatchPower_bb410, %DiskPerfDispatchPower_bb409
  %returnVal.0.i = phi i32 [ 0, %DiskPerfDispatchPower_bb409 ], [ %..i, %DiskPerfDispatchPower_bb410 ]
  %"1041" = load i32* @"'s", align 4
  %"1042" = load i32* @"'NP", align 4
  %"1043" = icmp eq i32 %"1041", %"1042"
  br i1 %"1043", label %DiskPerfDispatchPower_bb412, label %DiskPerfDispatchPower_bb413

DiskPerfDispatchPower_bb412:                      ; preds = %DiskPerfDispatchPower_bb411
  %"1044" = load i32* @"'IPC", align 4
  store i32 %"1044", i32* @"'s", align 4
  store i32 %returnVal.0.i, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfDispatchPower_PoCallDriver.exit

DiskPerfDispatchPower_bb413:                      ; preds = %DiskPerfDispatchPower_bb411
  %"1045" = load i32* @"'s", align 4
  %"1046" = load i32* @"'MPR1", align 4
  %"1047" = icmp eq i32 %"1045", %"1046"
  br i1 %"1047", label %DiskPerfDispatchPower_bb414, label %DiskPerfDispatchPower_bb417

DiskPerfDispatchPower_bb414:                      ; preds = %DiskPerfDispatchPower_bb413
  %"1048" = sext i32 %returnVal.0.i to i64
  %"1049" = icmp eq i64 %"1048", 259
  br i1 %"1049", label %DiskPerfDispatchPower_bb415, label %DiskPerfDispatchPower_bb416

DiskPerfDispatchPower_bb415:                      ; preds = %DiskPerfDispatchPower_bb414
  %"1050" = load i32* @"'MPR3", align 4
  store i32 %"1050", i32* @"'s", align 4
  store i32 %returnVal.0.i, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfDispatchPower_PoCallDriver.exit

DiskPerfDispatchPower_bb416:                      ; preds = %DiskPerfDispatchPower_bb414
  %"1051" = load i32* @"'NP", align 4
  store i32 %"1051", i32* @"'s", align 4
  store i32 %returnVal.0.i, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfDispatchPower_PoCallDriver.exit

DiskPerfDispatchPower_bb417:                      ; preds = %DiskPerfDispatchPower_bb413
  %"1052" = load i32* @"'s", align 4
  %"1053" = load i32* @"'SKIP1", align 4
  %"1054" = icmp eq i32 %"1052", %"1053"
  br i1 %"1054", label %DiskPerfDispatchPower_bb418, label %DiskPerfDispatchPower_bb419

DiskPerfDispatchPower_bb418:                      ; preds = %DiskPerfDispatchPower_bb417
  %"1055" = load i32* @"'SKIP2", align 4
  store i32 %"1055", i32* @"'s", align 4
  store i32 %returnVal.0.i, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfDispatchPower_PoCallDriver.exit

DiskPerfDispatchPower_PoCallDriver.exit:          ; preds = %DiskPerfDispatchPower_bb412, %DiskPerfDispatchPower_bb415, %DiskPerfDispatchPower_bb416, %DiskPerfDispatchPower_bb418
  ret i32 %returnVal.0.i

DiskPerfDispatchPower_bb419:                      ; preds = %DiskPerfDispatchPower_bb417
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfDispatchPower_bb420:                      ; preds = %DiskPerfDispatchPower_bb398
  call void (...)* @__VERIFIER_error() #5
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @DiskPerfForwardIrpSynchronous(i32 %DeviceObject, i32 %Irp) #0 {
DiskPerfForwardIrpSynchronous_bb421:
  %"1056" = call i32 @__VERIFIER_nondet_int()
  %"1057" = call i32 @__VERIFIER_nondet_int()
  %"1058" = call i32 @__VERIFIER_nondet_int()
  %"1059" = call i32 @__VERIFIER_nondet_int()
  %"1060" = load i32* @"'s", align 4
  %"1061" = load i32* @"'NP", align 4
  %"1062" = icmp ne i32 %"1060", %"1061"
  br i1 %"1062", label %DiskPerfForwardIrpSynchronous_bb422, label %DiskPerfForwardIrpSynchronous_bb423

DiskPerfForwardIrpSynchronous_bb422:              ; preds = %DiskPerfForwardIrpSynchronous_bb421
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfForwardIrpSynchronous_bb423:              ; preds = %DiskPerfForwardIrpSynchronous_bb421
  %"1063" = load i32* @"'compRegistered", align 4
  %"1064" = icmp ne i32 %"1063", 0
  br i1 %"1064", label %DiskPerfForwardIrpSynchronous_bb424, label %DiskPerfForwardIrpSynchronous_bb425

DiskPerfForwardIrpSynchronous_bb424:              ; preds = %DiskPerfForwardIrpSynchronous_bb423
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfForwardIrpSynchronous_bb425:              ; preds = %DiskPerfForwardIrpSynchronous_bb423
  store i32 1, i32* @"'compRegistered", align 4
  store i32 0, i32* @"'routine", align 4
  %"1065" = call i32 @__VERIFIER_nondet_int() #4
  %"1066" = load i32* @"'compRegistered", align 4
  %"1067" = icmp ne i32 %"1066", 0
  br i1 %"1067", label %DiskPerfForwardIrpSynchronous_bb426, label %DiskPerfForwardIrpSynchronous_bb434

DiskPerfForwardIrpSynchronous_bb426:              ; preds = %DiskPerfForwardIrpSynchronous_bb425
  %"1068" = load i32* @"'routine", align 4
  %"1069" = icmp eq i32 %"1068", 0
  %"1070" = call i32 @__VERIFIER_nondet_int() #4
  br i1 %"1069", label %DiskPerfForwardIrpSynchronous_bb427, label %DiskPerfForwardIrpSynchronous_bb428

DiskPerfForwardIrpSynchronous_bb427:              ; preds = %DiskPerfForwardIrpSynchronous_bb426
  store i32 1, i32* @"'setEventCalled", align 4
  br label %DiskPerfForwardIrpSynchronous_DiskPerfIoCompletion.exit.i

DiskPerfForwardIrpSynchronous_bb428:              ; preds = %DiskPerfForwardIrpSynchronous_bb426
  %"1071" = call i32 @__VERIFIER_nondet_int() #4
  %"1072" = call i32 @__VERIFIER_nondet_int() #4
  %"1073" = call i32 @__VERIFIER_nondet_int() #4
  %"1074" = call i32 @__VERIFIER_nondet_int() #4
  %"1075" = call i32 @__VERIFIER_nondet_int() #4
  %"1076" = call i32 @__VERIFIER_nondet_int() #4
  %"1077" = call i32 @__VERIFIER_nondet_int() #4
  %"1078" = call i32 @__VERIFIER_nondet_int() #4
  %"1079" = call i32 @__VERIFIER_nondet_int() #4
  %"1080" = call i32 @__VERIFIER_nondet_int() #4
  %"1081" = call i32 @__VERIFIER_nondet_int() #4
  %"1082" = call i32 @__VERIFIER_nondet_int() #4
  %"1083" = call i32 @__VERIFIER_nondet_int() #4
  %"1084" = icmp ne i32 %"1082", 0
  %"1085" = icmp ne i32 %"1081", 0
  %or.cond.i = and i1 %"1084", %"1085"
  br i1 %or.cond.i, label %DiskPerfForwardIrpSynchronous_bb429, label %DiskPerfForwardIrpSynchronous_DiskPerfIoCompletion.exit.i

DiskPerfForwardIrpSynchronous_bb429:              ; preds = %DiskPerfForwardIrpSynchronous_bb428
  %"1086" = load i32* @"'pended", align 4
  %"1087" = icmp eq i32 %"1086", 0
  br i1 %"1087", label %DiskPerfForwardIrpSynchronous_bb430, label %DiskPerfForwardIrpSynchronous_bb431

DiskPerfForwardIrpSynchronous_bb430:              ; preds = %DiskPerfForwardIrpSynchronous_bb429
  store i32 1, i32* @"'pended", align 4
  br label %DiskPerfForwardIrpSynchronous_DiskPerfIoCompletion.exit.i

DiskPerfForwardIrpSynchronous_bb431:              ; preds = %DiskPerfForwardIrpSynchronous_bb429
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfForwardIrpSynchronous_DiskPerfIoCompletion.exit.i: ; preds = %DiskPerfForwardIrpSynchronous_bb430, %DiskPerfForwardIrpSynchronous_bb428, %DiskPerfForwardIrpSynchronous_bb427
  %compRetStatus.0.i = phi i32 [ -1073741802, %DiskPerfForwardIrpSynchronous_bb427 ], [ 0, %DiskPerfForwardIrpSynchronous_bb428 ], [ 0, %DiskPerfForwardIrpSynchronous_bb430 ]
  %"1088" = sext i32 %compRetStatus.0.i to i64
  %"1089" = icmp eq i64 %"1088", -1073741802
  br i1 %"1089", label %DiskPerfForwardIrpSynchronous_bb432, label %DiskPerfForwardIrpSynchronous_bb434

DiskPerfForwardIrpSynchronous_bb432:              ; preds = %DiskPerfForwardIrpSynchronous_DiskPerfIoCompletion.exit.i
  %"1090" = load i32* @"'s", align 4
  %"1091" = load i32* @"'NP", align 4
  %"1092" = icmp eq i32 %"1090", %"1091"
  br i1 %"1092", label %DiskPerfForwardIrpSynchronous_stubMoreProcessingRequired.exit.i, label %DiskPerfForwardIrpSynchronous_bb433

DiskPerfForwardIrpSynchronous_stubMoreProcessingRequired.exit.i: ; preds = %DiskPerfForwardIrpSynchronous_bb432
  %"1093" = load i32* @"'MPR1", align 4
  store i32 %"1093", i32* @"'s", align 4
  br label %DiskPerfForwardIrpSynchronous_bb434

DiskPerfForwardIrpSynchronous_bb433:              ; preds = %DiskPerfForwardIrpSynchronous_bb432
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfForwardIrpSynchronous_bb434:              ; preds = %DiskPerfForwardIrpSynchronous_stubMoreProcessingRequired.exit.i, %DiskPerfForwardIrpSynchronous_DiskPerfIoCompletion.exit.i, %DiskPerfForwardIrpSynchronous_bb425
  %"1094" = call i32 @__VERIFIER_nondet_int() #4
  %"1095" = icmp eq i32 %"1094", 0
  br i1 %"1095", label %DiskPerfForwardIrpSynchronous_bb436, label %DiskPerfForwardIrpSynchronous_bb435

DiskPerfForwardIrpSynchronous_bb435:              ; preds = %DiskPerfForwardIrpSynchronous_bb434
  %"1096" = call i32 @__VERIFIER_nondet_int() #4
  %"1097" = icmp eq i32 %"1096", 1
  %..i = select i1 %"1097", i32 -1073741823, i32 259
  br label %DiskPerfForwardIrpSynchronous_bb436

DiskPerfForwardIrpSynchronous_bb436:              ; preds = %DiskPerfForwardIrpSynchronous_bb435, %DiskPerfForwardIrpSynchronous_bb434
  %returnVal2.0.i = phi i32 [ 0, %DiskPerfForwardIrpSynchronous_bb434 ], [ %..i, %DiskPerfForwardIrpSynchronous_bb435 ]
  %"1098" = load i32* @"'s", align 4
  %"1099" = load i32* @"'NP", align 4
  %"1100" = icmp eq i32 %"1098", %"1099"
  br i1 %"1100", label %DiskPerfForwardIrpSynchronous_bb437, label %DiskPerfForwardIrpSynchronous_bb438

DiskPerfForwardIrpSynchronous_bb437:              ; preds = %DiskPerfForwardIrpSynchronous_bb436
  %"1101" = load i32* @"'IPC", align 4
  store i32 %"1101", i32* @"'s", align 4
  store i32 %returnVal2.0.i, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfForwardIrpSynchronous_IofCallDriver.exit

DiskPerfForwardIrpSynchronous_bb438:              ; preds = %DiskPerfForwardIrpSynchronous_bb436
  %"1102" = load i32* @"'s", align 4
  %"1103" = load i32* @"'MPR1", align 4
  %"1104" = icmp eq i32 %"1102", %"1103"
  br i1 %"1104", label %DiskPerfForwardIrpSynchronous_bb439, label %DiskPerfForwardIrpSynchronous_bb442

DiskPerfForwardIrpSynchronous_bb439:              ; preds = %DiskPerfForwardIrpSynchronous_bb438
  %"1105" = icmp eq i32 %returnVal2.0.i, 259
  br i1 %"1105", label %DiskPerfForwardIrpSynchronous_bb440, label %DiskPerfForwardIrpSynchronous_bb441

DiskPerfForwardIrpSynchronous_bb440:              ; preds = %DiskPerfForwardIrpSynchronous_bb439
  %"1106" = load i32* @"'MPR3", align 4
  store i32 %"1106", i32* @"'s", align 4
  store i32 %returnVal2.0.i, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfForwardIrpSynchronous_IofCallDriver.exit

DiskPerfForwardIrpSynchronous_bb441:              ; preds = %DiskPerfForwardIrpSynchronous_bb439
  %"1107" = load i32* @"'NP", align 4
  store i32 %"1107", i32* @"'s", align 4
  store i32 %returnVal2.0.i, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfForwardIrpSynchronous_IofCallDriver.exit

DiskPerfForwardIrpSynchronous_bb442:              ; preds = %DiskPerfForwardIrpSynchronous_bb438
  %"1108" = load i32* @"'s", align 4
  %"1109" = load i32* @"'SKIP1", align 4
  %"1110" = icmp eq i32 %"1108", %"1109"
  br i1 %"1110", label %DiskPerfForwardIrpSynchronous_bb443, label %DiskPerfForwardIrpSynchronous_bb451

DiskPerfForwardIrpSynchronous_bb443:              ; preds = %DiskPerfForwardIrpSynchronous_bb442
  %"1111" = load i32* @"'SKIP2", align 4
  store i32 %"1111", i32* @"'s", align 4
  store i32 %returnVal2.0.i, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfForwardIrpSynchronous_IofCallDriver.exit

DiskPerfForwardIrpSynchronous_IofCallDriver.exit: ; preds = %DiskPerfForwardIrpSynchronous_bb437, %DiskPerfForwardIrpSynchronous_bb440, %DiskPerfForwardIrpSynchronous_bb441, %DiskPerfForwardIrpSynchronous_bb443
  %"1112" = sext i32 %returnVal2.0.i to i64
  %"1113" = icmp eq i64 %"1112", 259
  br i1 %"1113", label %DiskPerfForwardIrpSynchronous_bb444, label %DiskPerfForwardIrpSynchronous_bb450

DiskPerfForwardIrpSynchronous_bb444:              ; preds = %DiskPerfForwardIrpSynchronous_IofCallDriver.exit
  %"1114" = load i32* @"'s", align 4
  %"1115" = load i32* @"'MPR3", align 4
  %"1116" = icmp eq i32 %"1114", %"1115"
  %"1117" = load i32* @"'setEventCalled", align 4
  %"1118" = icmp eq i32 %"1117", 1
  %or.cond.i2 = and i1 %"1116", %"1118"
  br i1 %or.cond.i2, label %DiskPerfForwardIrpSynchronous_bb445, label %DiskPerfForwardIrpSynchronous_bb446

DiskPerfForwardIrpSynchronous_bb445:              ; preds = %DiskPerfForwardIrpSynchronous_bb444
  %"1119" = load i32* @"'NP", align 4
  store i32 %"1119", i32* @"'s", align 4
  store i32 0, i32* @"'setEventCalled", align 4
  br label %DiskPerfForwardIrpSynchronous_KeWaitForSingleObject.exit

DiskPerfForwardIrpSynchronous_bb446:              ; preds = %DiskPerfForwardIrpSynchronous_bb444
  %"1120" = load i32* @"'customIrp", align 4
  %"1121" = icmp eq i32 %"1120", 1
  br i1 %"1121", label %DiskPerfForwardIrpSynchronous_bb447, label %DiskPerfForwardIrpSynchronous_bb448

DiskPerfForwardIrpSynchronous_bb447:              ; preds = %DiskPerfForwardIrpSynchronous_bb446
  %"1122" = load i32* @"'NP", align 4
  store i32 %"1122", i32* @"'s", align 4
  store i32 0, i32* @"'customIrp", align 4
  br label %DiskPerfForwardIrpSynchronous_KeWaitForSingleObject.exit

DiskPerfForwardIrpSynchronous_bb448:              ; preds = %DiskPerfForwardIrpSynchronous_bb446
  %"1123" = load i32* @"'s", align 4
  %"1124" = load i32* @"'MPR3", align 4
  %"1125" = icmp eq i32 %"1123", %"1124"
  br i1 %"1125", label %DiskPerfForwardIrpSynchronous_bb449, label %DiskPerfForwardIrpSynchronous_KeWaitForSingleObject.exit

DiskPerfForwardIrpSynchronous_bb449:              ; preds = %DiskPerfForwardIrpSynchronous_bb448
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfForwardIrpSynchronous_KeWaitForSingleObject.exit: ; preds = %DiskPerfForwardIrpSynchronous_bb445, %DiskPerfForwardIrpSynchronous_bb447, %DiskPerfForwardIrpSynchronous_bb448
  %"1126" = call i32 @__VERIFIER_nondet_int() #4
  %"1127" = load i32* @"'myStatus", align 4
  br label %DiskPerfForwardIrpSynchronous_bb450

DiskPerfForwardIrpSynchronous_bb450:              ; preds = %DiskPerfForwardIrpSynchronous_KeWaitForSingleObject.exit, %DiskPerfForwardIrpSynchronous_IofCallDriver.exit
  %status.0 = phi i32 [ %"1127", %DiskPerfForwardIrpSynchronous_KeWaitForSingleObject.exit ], [ %returnVal2.0.i, %DiskPerfForwardIrpSynchronous_IofCallDriver.exit ]
  ret i32 %status.0

DiskPerfForwardIrpSynchronous_bb451:              ; preds = %DiskPerfForwardIrpSynchronous_bb442
  call void (...)* @__VERIFIER_error() #5
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @DiskPerfCreate(i32 %DeviceObject, i32 %Irp) #0 {
DiskPerfCreate_bb452:
  store i32 0, i32* @"'myStatus", align 4
  %"1128" = load i32* @"'s", align 4
  %"1129" = load i32* @"'NP", align 4
  %"1130" = icmp eq i32 %"1128", %"1129"
  br i1 %"1130", label %DiskPerfCreate_IofCompleteRequest.exit, label %DiskPerfCreate_bb453

DiskPerfCreate_IofCompleteRequest.exit:           ; preds = %DiskPerfCreate_bb452
  %"1131" = load i32* @"'DC", align 4
  store i32 %"1131", i32* @"'s", align 4
  ret i32 0

DiskPerfCreate_bb453:                             ; preds = %DiskPerfCreate_bb452
  call void (...)* @__VERIFIER_error() #5
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @DiskPerfIoCompletion(i32 %DeviceObject, i32 %Irp, i32 %Context) #0 {
DiskPerfIoCompletion_bb454:
  %"1132" = call i32 @__VERIFIER_nondet_int()
  %"1133" = call i32 @__VERIFIER_nondet_int()
  %"1134" = call i32 @__VERIFIER_nondet_int()
  %"1135" = call i32 @__VERIFIER_nondet_int()
  %"1136" = call i32 @__VERIFIER_nondet_int()
  %"1137" = call i32 @__VERIFIER_nondet_int()
  %"1138" = call i32 @__VERIFIER_nondet_int()
  %"1139" = call i32 @__VERIFIER_nondet_int()
  %"1140" = call i32 @__VERIFIER_nondet_int()
  %"1141" = call i32 @__VERIFIER_nondet_int()
  %"1142" = call i32 @__VERIFIER_nondet_int()
  %"1143" = call i32 @__VERIFIER_nondet_int()
  %"1144" = call i32 @__VERIFIER_nondet_int()
  %"1145" = call i32 @__VERIFIER_nondet_int()
  %"1146" = icmp eq i32 %"1144", 0
  br i1 %"1146", label %DiskPerfIoCompletion_bb459, label %DiskPerfIoCompletion_bb455

DiskPerfIoCompletion_bb455:                       ; preds = %DiskPerfIoCompletion_bb454
  %"1147" = icmp ne i32 %"1143", 0
  br i1 %"1147", label %DiskPerfIoCompletion_bb456, label %DiskPerfIoCompletion_bb459

DiskPerfIoCompletion_bb456:                       ; preds = %DiskPerfIoCompletion_bb455
  %"1148" = load i32* @"'pended", align 4
  %"1149" = icmp eq i32 %"1148", 0
  br i1 %"1149", label %DiskPerfIoCompletion_bb457, label %DiskPerfIoCompletion_bb458

DiskPerfIoCompletion_bb457:                       ; preds = %DiskPerfIoCompletion_bb456
  store i32 1, i32* @"'pended", align 4
  br label %DiskPerfIoCompletion_bb459

DiskPerfIoCompletion_bb458:                       ; preds = %DiskPerfIoCompletion_bb456
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfIoCompletion_bb459:                       ; preds = %DiskPerfIoCompletion_bb455, %DiskPerfIoCompletion_bb457, %DiskPerfIoCompletion_bb454
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @DiskPerfDeviceControl(i32 %DeviceObject, i32 %Irp) #0 {
DiskPerfDeviceControl_bb460:
  %"1150" = call i32 @__VERIFIER_nondet_int()
  %"1151" = call i32 @__VERIFIER_nondet_int()
  %"1152" = call i32 @__VERIFIER_nondet_int()
  %"1153" = call i32 @__VERIFIER_nondet_int()
  %"1154" = call i32 @__VERIFIER_nondet_int()
  %"1155" = call i32 @__VERIFIER_nondet_int()
  %"1156" = call i32 @__VERIFIER_nondet_int()
  %"1157" = call i32 @__VERIFIER_nondet_int()
  %"1158" = call i32 @__VERIFIER_nondet_int()
  %"1159" = call i32 @__VERIFIER_nondet_int()
  %"1160" = call i32 @__VERIFIER_nondet_int()
  %"1161" = icmp eq i32 %"1154", 458784
  br i1 %"1161", label %DiskPerfDeviceControl_bb461, label %DiskPerfDeviceControl_bb469

DiskPerfDeviceControl_bb461:                      ; preds = %DiskPerfDeviceControl_bb460
  %"1162" = icmp slt i32 %"1155", %"1156"
  br i1 %"1162", label %DiskPerfDeviceControl_bb466, label %DiskPerfDeviceControl_bb462

DiskPerfDeviceControl_bb462:                      ; preds = %DiskPerfDeviceControl_bb461
  %"1163" = icmp eq i32 %"1157", 0
  br i1 %"1163", label %DiskPerfDeviceControl_bb463, label %DiskPerfDeviceControl_bb465

DiskPerfDeviceControl_bb463:                      ; preds = %DiskPerfDeviceControl_bb462
  store i32 -1073741823, i32* @"'myStatus", align 4
  %"1164" = load i32* @"'s", align 4
  %"1165" = load i32* @"'NP", align 4
  %"1166" = icmp eq i32 %"1164", %"1165"
  br i1 %"1166", label %DiskPerfDeviceControl_IofCompleteRequest.exit, label %DiskPerfDeviceControl_bb464

DiskPerfDeviceControl_IofCompleteRequest.exit:    ; preds = %DiskPerfDeviceControl_bb463
  %"1167" = load i32* @"'DC", align 4
  store i32 %"1167", i32* @"'s", align 4
  br label %DiskPerfDeviceControl_IofCallDriver.exit

DiskPerfDeviceControl_bb464:                      ; preds = %DiskPerfDeviceControl_bb463
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfDeviceControl_bb465:                      ; preds = %DiskPerfDeviceControl_bb468, %DiskPerfDeviceControl_bb462
  %i.0 = phi i32 [ %"1173", %DiskPerfDeviceControl_bb468 ], [ 0, %DiskPerfDeviceControl_bb462 ]
  %"1168" = icmp sge i32 %i.0, %"1159"
  br i1 %"1168", label %DiskPerfDeviceControl_bb466, label %DiskPerfDeviceControl_bb468

DiskPerfDeviceControl_bb466:                      ; preds = %DiskPerfDeviceControl_bb465, %DiskPerfDeviceControl_bb461
  %status.0 = phi i32 [ -1073741789, %DiskPerfDeviceControl_bb461 ], [ 0, %DiskPerfDeviceControl_bb465 ]
  store i32 %status.0, i32* @"'myStatus", align 4
  %"1169" = load i32* @"'s", align 4
  %"1170" = load i32* @"'NP", align 4
  %"1171" = icmp eq i32 %"1169", %"1170"
  br i1 %"1171", label %DiskPerfDeviceControl_IofCompleteRequest.exit1, label %DiskPerfDeviceControl_bb467

DiskPerfDeviceControl_IofCompleteRequest.exit1:   ; preds = %DiskPerfDeviceControl_bb466
  %"1172" = load i32* @"'DC", align 4
  store i32 %"1172", i32* @"'s", align 4
  br label %DiskPerfDeviceControl_IofCallDriver.exit

DiskPerfDeviceControl_bb467:                      ; preds = %DiskPerfDeviceControl_bb466
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfDeviceControl_bb468:                      ; preds = %DiskPerfDeviceControl_bb465
  %"1173" = add nsw i32 %i.0, 1
  br label %DiskPerfDeviceControl_bb465

DiskPerfDeviceControl_bb469:                      ; preds = %DiskPerfDeviceControl_bb460
  %"1174" = call i32 @__VERIFIER_nondet_int() #4
  %"1175" = load i32* @"'compRegistered", align 4
  %"1176" = icmp ne i32 %"1175", 0
  br i1 %"1176", label %DiskPerfDeviceControl_bb470, label %DiskPerfDeviceControl_bb478

DiskPerfDeviceControl_bb470:                      ; preds = %DiskPerfDeviceControl_bb469
  %"1177" = load i32* @"'routine", align 4
  %"1178" = icmp eq i32 %"1177", 0
  %"1179" = call i32 @__VERIFIER_nondet_int() #4
  br i1 %"1178", label %DiskPerfDeviceControl_bb471, label %DiskPerfDeviceControl_bb472

DiskPerfDeviceControl_bb471:                      ; preds = %DiskPerfDeviceControl_bb470
  store i32 1, i32* @"'setEventCalled", align 4
  br label %DiskPerfDeviceControl_DiskPerfIoCompletion.exit.i

DiskPerfDeviceControl_bb472:                      ; preds = %DiskPerfDeviceControl_bb470
  %"1180" = call i32 @__VERIFIER_nondet_int() #4
  %"1181" = call i32 @__VERIFIER_nondet_int() #4
  %"1182" = call i32 @__VERIFIER_nondet_int() #4
  %"1183" = call i32 @__VERIFIER_nondet_int() #4
  %"1184" = call i32 @__VERIFIER_nondet_int() #4
  %"1185" = call i32 @__VERIFIER_nondet_int() #4
  %"1186" = call i32 @__VERIFIER_nondet_int() #4
  %"1187" = call i32 @__VERIFIER_nondet_int() #4
  %"1188" = call i32 @__VERIFIER_nondet_int() #4
  %"1189" = call i32 @__VERIFIER_nondet_int() #4
  %"1190" = call i32 @__VERIFIER_nondet_int() #4
  %"1191" = call i32 @__VERIFIER_nondet_int() #4
  %"1192" = call i32 @__VERIFIER_nondet_int() #4
  %"1193" = icmp ne i32 %"1191", 0
  %"1194" = icmp ne i32 %"1190", 0
  %or.cond.i = and i1 %"1193", %"1194"
  br i1 %or.cond.i, label %DiskPerfDeviceControl_bb473, label %DiskPerfDeviceControl_DiskPerfIoCompletion.exit.i

DiskPerfDeviceControl_bb473:                      ; preds = %DiskPerfDeviceControl_bb472
  %"1195" = load i32* @"'pended", align 4
  %"1196" = icmp eq i32 %"1195", 0
  br i1 %"1196", label %DiskPerfDeviceControl_bb474, label %DiskPerfDeviceControl_bb475

DiskPerfDeviceControl_bb474:                      ; preds = %DiskPerfDeviceControl_bb473
  store i32 1, i32* @"'pended", align 4
  br label %DiskPerfDeviceControl_DiskPerfIoCompletion.exit.i

DiskPerfDeviceControl_bb475:                      ; preds = %DiskPerfDeviceControl_bb473
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfDeviceControl_DiskPerfIoCompletion.exit.i: ; preds = %DiskPerfDeviceControl_bb474, %DiskPerfDeviceControl_bb472, %DiskPerfDeviceControl_bb471
  %compRetStatus.0.i = phi i32 [ -1073741802, %DiskPerfDeviceControl_bb471 ], [ 0, %DiskPerfDeviceControl_bb472 ], [ 0, %DiskPerfDeviceControl_bb474 ]
  %"1197" = sext i32 %compRetStatus.0.i to i64
  %"1198" = icmp eq i64 %"1197", -1073741802
  br i1 %"1198", label %DiskPerfDeviceControl_bb476, label %DiskPerfDeviceControl_bb478

DiskPerfDeviceControl_bb476:                      ; preds = %DiskPerfDeviceControl_DiskPerfIoCompletion.exit.i
  %"1199" = load i32* @"'s", align 4
  %"1200" = load i32* @"'NP", align 4
  %"1201" = icmp eq i32 %"1199", %"1200"
  br i1 %"1201", label %DiskPerfDeviceControl_stubMoreProcessingRequired.exit.i, label %DiskPerfDeviceControl_bb477

DiskPerfDeviceControl_stubMoreProcessingRequired.exit.i: ; preds = %DiskPerfDeviceControl_bb476
  %"1202" = load i32* @"'MPR1", align 4
  store i32 %"1202", i32* @"'s", align 4
  br label %DiskPerfDeviceControl_bb478

DiskPerfDeviceControl_bb477:                      ; preds = %DiskPerfDeviceControl_bb476
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfDeviceControl_bb478:                      ; preds = %DiskPerfDeviceControl_stubMoreProcessingRequired.exit.i, %DiskPerfDeviceControl_DiskPerfIoCompletion.exit.i, %DiskPerfDeviceControl_bb469
  %"1203" = call i32 @__VERIFIER_nondet_int() #4
  %"1204" = icmp eq i32 %"1203", 0
  br i1 %"1204", label %DiskPerfDeviceControl_bb480, label %DiskPerfDeviceControl_bb479

DiskPerfDeviceControl_bb479:                      ; preds = %DiskPerfDeviceControl_bb478
  %"1205" = call i32 @__VERIFIER_nondet_int() #4
  %"1206" = icmp eq i32 %"1205", 1
  %..i = select i1 %"1206", i32 -1073741823, i32 259
  br label %DiskPerfDeviceControl_bb480

DiskPerfDeviceControl_bb480:                      ; preds = %DiskPerfDeviceControl_bb479, %DiskPerfDeviceControl_bb478
  %returnVal2.0.i = phi i32 [ 0, %DiskPerfDeviceControl_bb478 ], [ %..i, %DiskPerfDeviceControl_bb479 ]
  %"1207" = load i32* @"'s", align 4
  %"1208" = load i32* @"'NP", align 4
  %"1209" = icmp eq i32 %"1207", %"1208"
  br i1 %"1209", label %DiskPerfDeviceControl_bb481, label %DiskPerfDeviceControl_bb482

DiskPerfDeviceControl_bb481:                      ; preds = %DiskPerfDeviceControl_bb480
  %"1210" = load i32* @"'IPC", align 4
  store i32 %"1210", i32* @"'s", align 4
  store i32 %returnVal2.0.i, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfDeviceControl_IofCallDriver.exit

DiskPerfDeviceControl_bb482:                      ; preds = %DiskPerfDeviceControl_bb480
  %"1211" = load i32* @"'s", align 4
  %"1212" = load i32* @"'MPR1", align 4
  %"1213" = icmp eq i32 %"1211", %"1212"
  br i1 %"1213", label %DiskPerfDeviceControl_bb483, label %DiskPerfDeviceControl_bb486

DiskPerfDeviceControl_bb483:                      ; preds = %DiskPerfDeviceControl_bb482
  %"1214" = icmp eq i32 %returnVal2.0.i, 259
  br i1 %"1214", label %DiskPerfDeviceControl_bb484, label %DiskPerfDeviceControl_bb485

DiskPerfDeviceControl_bb484:                      ; preds = %DiskPerfDeviceControl_bb483
  %"1215" = load i32* @"'MPR3", align 4
  store i32 %"1215", i32* @"'s", align 4
  store i32 %returnVal2.0.i, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfDeviceControl_IofCallDriver.exit

DiskPerfDeviceControl_bb485:                      ; preds = %DiskPerfDeviceControl_bb483
  %"1216" = load i32* @"'NP", align 4
  store i32 %"1216", i32* @"'s", align 4
  store i32 %returnVal2.0.i, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfDeviceControl_IofCallDriver.exit

DiskPerfDeviceControl_bb486:                      ; preds = %DiskPerfDeviceControl_bb482
  %"1217" = load i32* @"'s", align 4
  %"1218" = load i32* @"'SKIP1", align 4
  %"1219" = icmp eq i32 %"1217", %"1218"
  br i1 %"1219", label %DiskPerfDeviceControl_bb487, label %DiskPerfDeviceControl_bb488

DiskPerfDeviceControl_bb487:                      ; preds = %DiskPerfDeviceControl_bb486
  %"1220" = load i32* @"'SKIP2", align 4
  store i32 %"1220", i32* @"'s", align 4
  store i32 %returnVal2.0.i, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfDeviceControl_IofCallDriver.exit

DiskPerfDeviceControl_IofCallDriver.exit:         ; preds = %DiskPerfDeviceControl_bb487, %DiskPerfDeviceControl_bb485, %DiskPerfDeviceControl_bb484, %DiskPerfDeviceControl_bb481, %DiskPerfDeviceControl_IofCompleteRequest.exit1, %DiskPerfDeviceControl_IofCompleteRequest.exit
  %.0 = phi i32 [ %status.0, %DiskPerfDeviceControl_IofCompleteRequest.exit1 ], [ -1073741823, %DiskPerfDeviceControl_IofCompleteRequest.exit ], [ %returnVal2.0.i, %DiskPerfDeviceControl_bb481 ], [ %returnVal2.0.i, %DiskPerfDeviceControl_bb484 ], [ %returnVal2.0.i, %DiskPerfDeviceControl_bb485 ], [ %returnVal2.0.i, %DiskPerfDeviceControl_bb487 ]
  ret i32 %.0

DiskPerfDeviceControl_bb488:                      ; preds = %DiskPerfDeviceControl_bb486
  call void (...)* @__VERIFIER_error() #5
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @DiskPerfShutdownFlush(i32 %DeviceObject, i32 %Irp) #0 {
DiskPerfShutdownFlush_bb489:
  %"1221" = call i32 @__VERIFIER_nondet_int()
  %"1222" = call i32 @__VERIFIER_nondet_int()
  %"1223" = call i32 @__VERIFIER_nondet_int()
  %"1224" = call i32 @__VERIFIER_nondet_int()
  %"1225" = call i32 @__VERIFIER_nondet_int() #4
  %"1226" = load i32* @"'compRegistered", align 4
  %"1227" = icmp ne i32 %"1226", 0
  br i1 %"1227", label %DiskPerfShutdownFlush_bb490, label %DiskPerfShutdownFlush_bb498

DiskPerfShutdownFlush_bb490:                      ; preds = %DiskPerfShutdownFlush_bb489
  %"1228" = load i32* @"'routine", align 4
  %"1229" = icmp eq i32 %"1228", 0
  %"1230" = call i32 @__VERIFIER_nondet_int() #4
  br i1 %"1229", label %DiskPerfShutdownFlush_bb491, label %DiskPerfShutdownFlush_bb492

DiskPerfShutdownFlush_bb491:                      ; preds = %DiskPerfShutdownFlush_bb490
  store i32 1, i32* @"'setEventCalled", align 4
  br label %DiskPerfShutdownFlush_DiskPerfIoCompletion.exit.i

DiskPerfShutdownFlush_bb492:                      ; preds = %DiskPerfShutdownFlush_bb490
  %"1231" = call i32 @__VERIFIER_nondet_int() #4
  %"1232" = call i32 @__VERIFIER_nondet_int() #4
  %"1233" = call i32 @__VERIFIER_nondet_int() #4
  %"1234" = call i32 @__VERIFIER_nondet_int() #4
  %"1235" = call i32 @__VERIFIER_nondet_int() #4
  %"1236" = call i32 @__VERIFIER_nondet_int() #4
  %"1237" = call i32 @__VERIFIER_nondet_int() #4
  %"1238" = call i32 @__VERIFIER_nondet_int() #4
  %"1239" = call i32 @__VERIFIER_nondet_int() #4
  %"1240" = call i32 @__VERIFIER_nondet_int() #4
  %"1241" = call i32 @__VERIFIER_nondet_int() #4
  %"1242" = call i32 @__VERIFIER_nondet_int() #4
  %"1243" = call i32 @__VERIFIER_nondet_int() #4
  %"1244" = icmp ne i32 %"1242", 0
  %"1245" = icmp ne i32 %"1241", 0
  %or.cond.i = and i1 %"1244", %"1245"
  br i1 %or.cond.i, label %DiskPerfShutdownFlush_bb493, label %DiskPerfShutdownFlush_DiskPerfIoCompletion.exit.i

DiskPerfShutdownFlush_bb493:                      ; preds = %DiskPerfShutdownFlush_bb492
  %"1246" = load i32* @"'pended", align 4
  %"1247" = icmp eq i32 %"1246", 0
  br i1 %"1247", label %DiskPerfShutdownFlush_bb494, label %DiskPerfShutdownFlush_bb495

DiskPerfShutdownFlush_bb494:                      ; preds = %DiskPerfShutdownFlush_bb493
  store i32 1, i32* @"'pended", align 4
  br label %DiskPerfShutdownFlush_DiskPerfIoCompletion.exit.i

DiskPerfShutdownFlush_bb495:                      ; preds = %DiskPerfShutdownFlush_bb493
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfShutdownFlush_DiskPerfIoCompletion.exit.i: ; preds = %DiskPerfShutdownFlush_bb494, %DiskPerfShutdownFlush_bb492, %DiskPerfShutdownFlush_bb491
  %compRetStatus.0.i = phi i32 [ -1073741802, %DiskPerfShutdownFlush_bb491 ], [ 0, %DiskPerfShutdownFlush_bb492 ], [ 0, %DiskPerfShutdownFlush_bb494 ]
  %"1248" = sext i32 %compRetStatus.0.i to i64
  %"1249" = icmp eq i64 %"1248", -1073741802
  br i1 %"1249", label %DiskPerfShutdownFlush_bb496, label %DiskPerfShutdownFlush_bb498

DiskPerfShutdownFlush_bb496:                      ; preds = %DiskPerfShutdownFlush_DiskPerfIoCompletion.exit.i
  %"1250" = load i32* @"'s", align 4
  %"1251" = load i32* @"'NP", align 4
  %"1252" = icmp eq i32 %"1250", %"1251"
  br i1 %"1252", label %DiskPerfShutdownFlush_stubMoreProcessingRequired.exit.i, label %DiskPerfShutdownFlush_bb497

DiskPerfShutdownFlush_stubMoreProcessingRequired.exit.i: ; preds = %DiskPerfShutdownFlush_bb496
  %"1253" = load i32* @"'MPR1", align 4
  store i32 %"1253", i32* @"'s", align 4
  br label %DiskPerfShutdownFlush_bb498

DiskPerfShutdownFlush_bb497:                      ; preds = %DiskPerfShutdownFlush_bb496
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfShutdownFlush_bb498:                      ; preds = %DiskPerfShutdownFlush_stubMoreProcessingRequired.exit.i, %DiskPerfShutdownFlush_DiskPerfIoCompletion.exit.i, %DiskPerfShutdownFlush_bb489
  %"1254" = call i32 @__VERIFIER_nondet_int() #4
  %"1255" = icmp eq i32 %"1254", 0
  br i1 %"1255", label %DiskPerfShutdownFlush_bb500, label %DiskPerfShutdownFlush_bb499

DiskPerfShutdownFlush_bb499:                      ; preds = %DiskPerfShutdownFlush_bb498
  %"1256" = call i32 @__VERIFIER_nondet_int() #4
  %"1257" = icmp eq i32 %"1256", 1
  %..i = select i1 %"1257", i32 -1073741823, i32 259
  br label %DiskPerfShutdownFlush_bb500

DiskPerfShutdownFlush_bb500:                      ; preds = %DiskPerfShutdownFlush_bb499, %DiskPerfShutdownFlush_bb498
  %returnVal2.0.i = phi i32 [ 0, %DiskPerfShutdownFlush_bb498 ], [ %..i, %DiskPerfShutdownFlush_bb499 ]
  %"1258" = load i32* @"'s", align 4
  %"1259" = load i32* @"'NP", align 4
  %"1260" = icmp eq i32 %"1258", %"1259"
  br i1 %"1260", label %DiskPerfShutdownFlush_bb501, label %DiskPerfShutdownFlush_bb502

DiskPerfShutdownFlush_bb501:                      ; preds = %DiskPerfShutdownFlush_bb500
  %"1261" = load i32* @"'IPC", align 4
  store i32 %"1261", i32* @"'s", align 4
  store i32 %returnVal2.0.i, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfShutdownFlush_IofCallDriver.exit

DiskPerfShutdownFlush_bb502:                      ; preds = %DiskPerfShutdownFlush_bb500
  %"1262" = load i32* @"'s", align 4
  %"1263" = load i32* @"'MPR1", align 4
  %"1264" = icmp eq i32 %"1262", %"1263"
  br i1 %"1264", label %DiskPerfShutdownFlush_bb503, label %DiskPerfShutdownFlush_bb506

DiskPerfShutdownFlush_bb503:                      ; preds = %DiskPerfShutdownFlush_bb502
  %"1265" = icmp eq i32 %returnVal2.0.i, 259
  br i1 %"1265", label %DiskPerfShutdownFlush_bb504, label %DiskPerfShutdownFlush_bb505

DiskPerfShutdownFlush_bb504:                      ; preds = %DiskPerfShutdownFlush_bb503
  %"1266" = load i32* @"'MPR3", align 4
  store i32 %"1266", i32* @"'s", align 4
  store i32 %returnVal2.0.i, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfShutdownFlush_IofCallDriver.exit

DiskPerfShutdownFlush_bb505:                      ; preds = %DiskPerfShutdownFlush_bb503
  %"1267" = load i32* @"'NP", align 4
  store i32 %"1267", i32* @"'s", align 4
  store i32 %returnVal2.0.i, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfShutdownFlush_IofCallDriver.exit

DiskPerfShutdownFlush_bb506:                      ; preds = %DiskPerfShutdownFlush_bb502
  %"1268" = load i32* @"'s", align 4
  %"1269" = load i32* @"'SKIP1", align 4
  %"1270" = icmp eq i32 %"1268", %"1269"
  br i1 %"1270", label %DiskPerfShutdownFlush_bb507, label %DiskPerfShutdownFlush_bb508

DiskPerfShutdownFlush_bb507:                      ; preds = %DiskPerfShutdownFlush_bb506
  %"1271" = load i32* @"'SKIP2", align 4
  store i32 %"1271", i32* @"'s", align 4
  store i32 %returnVal2.0.i, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfShutdownFlush_IofCallDriver.exit

DiskPerfShutdownFlush_IofCallDriver.exit:         ; preds = %DiskPerfShutdownFlush_bb501, %DiskPerfShutdownFlush_bb504, %DiskPerfShutdownFlush_bb505, %DiskPerfShutdownFlush_bb507
  ret i32 %returnVal2.0.i

DiskPerfShutdownFlush_bb508:                      ; preds = %DiskPerfShutdownFlush_bb506
  call void (...)* @__VERIFIER_error() #5
  unreachable
}

; Function Attrs: nounwind uwtable
define void @DiskPerfUnload(i32 %DriverObject) #0 {
DiskPerfUnload_bb509:
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @DiskPerfRegisterDevice(i32 %DeviceObject) #0 {
DiskPerfRegisterDevice_bb510:
  %"1272" = call i32 @__VERIFIER_nondet_int()
  %"1273" = call i32 @__VERIFIER_nondet_int()
  %"1274" = call i32 @__VERIFIER_nondet_int()
  %"1275" = call i32 @__VERIFIER_nondet_int()
  %"1276" = call i32 @__VERIFIER_nondet_int()
  %"1277" = call i32 @__VERIFIER_nondet_int()
  %"1278" = call i32 @__VERIFIER_nondet_int()
  %"1279" = call i32 @__VERIFIER_nondet_int()
  %"1280" = call i32 @__VERIFIER_nondet_int()
  %"1281" = call i32 @__VERIFIER_nondet_int()
  %"1282" = call i32 @__VERIFIER_nondet_int()
  %"1283" = call i32 @__VERIFIER_nondet_int()
  %"1284" = call i32 @__VERIFIER_nondet_int()
  %"1285" = call i32 @__VERIFIER_nondet_int() #4
  store i32 1, i32* @"'customIrp", align 4
  %"1286" = call i32 @__VERIFIER_nondet_int() #4
  %"1287" = icmp eq i32 %"1286", 0
  %.0.i = select i1 %"1287", i32 %"1285", i32 0
  %"1288" = icmp ne i32 %.0.i, 0
  br i1 %"1288", label %DiskPerfRegisterDevice_bb511, label %DiskPerfRegisterDevice_bb626

DiskPerfRegisterDevice_bb511:                     ; preds = %DiskPerfRegisterDevice_bb510
  %"1289" = call i32 @__VERIFIER_nondet_int() #4
  %"1290" = load i32* @"'compRegistered", align 4
  %"1291" = icmp ne i32 %"1290", 0
  br i1 %"1291", label %DiskPerfRegisterDevice_bb512, label %DiskPerfRegisterDevice_bb520

DiskPerfRegisterDevice_bb512:                     ; preds = %DiskPerfRegisterDevice_bb511
  %"1292" = load i32* @"'routine", align 4
  %"1293" = icmp eq i32 %"1292", 0
  %"1294" = call i32 @__VERIFIER_nondet_int() #4
  br i1 %"1293", label %DiskPerfRegisterDevice_bb513, label %DiskPerfRegisterDevice_bb514

DiskPerfRegisterDevice_bb513:                     ; preds = %DiskPerfRegisterDevice_bb512
  store i32 1, i32* @"'setEventCalled", align 4
  br label %DiskPerfRegisterDevice_DiskPerfIoCompletion.exit.i

DiskPerfRegisterDevice_bb514:                     ; preds = %DiskPerfRegisterDevice_bb512
  %"1295" = call i32 @__VERIFIER_nondet_int() #4
  %"1296" = call i32 @__VERIFIER_nondet_int() #4
  %"1297" = call i32 @__VERIFIER_nondet_int() #4
  %"1298" = call i32 @__VERIFIER_nondet_int() #4
  %"1299" = call i32 @__VERIFIER_nondet_int() #4
  %"1300" = call i32 @__VERIFIER_nondet_int() #4
  %"1301" = call i32 @__VERIFIER_nondet_int() #4
  %"1302" = call i32 @__VERIFIER_nondet_int() #4
  %"1303" = call i32 @__VERIFIER_nondet_int() #4
  %"1304" = call i32 @__VERIFIER_nondet_int() #4
  %"1305" = call i32 @__VERIFIER_nondet_int() #4
  %"1306" = call i32 @__VERIFIER_nondet_int() #4
  %"1307" = call i32 @__VERIFIER_nondet_int() #4
  %"1308" = icmp ne i32 %"1306", 0
  %"1309" = icmp ne i32 %"1305", 0
  %or.cond.i = and i1 %"1308", %"1309"
  br i1 %or.cond.i, label %DiskPerfRegisterDevice_bb515, label %DiskPerfRegisterDevice_DiskPerfIoCompletion.exit.i

DiskPerfRegisterDevice_bb515:                     ; preds = %DiskPerfRegisterDevice_bb514
  %"1310" = load i32* @"'pended", align 4
  %"1311" = icmp eq i32 %"1310", 0
  br i1 %"1311", label %DiskPerfRegisterDevice_bb516, label %DiskPerfRegisterDevice_bb517

DiskPerfRegisterDevice_bb516:                     ; preds = %DiskPerfRegisterDevice_bb515
  store i32 1, i32* @"'pended", align 4
  br label %DiskPerfRegisterDevice_DiskPerfIoCompletion.exit.i

DiskPerfRegisterDevice_bb517:                     ; preds = %DiskPerfRegisterDevice_bb515
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfRegisterDevice_DiskPerfIoCompletion.exit.i: ; preds = %DiskPerfRegisterDevice_bb516, %DiskPerfRegisterDevice_bb514, %DiskPerfRegisterDevice_bb513
  %compRetStatus.0.i = phi i32 [ -1073741802, %DiskPerfRegisterDevice_bb513 ], [ 0, %DiskPerfRegisterDevice_bb514 ], [ 0, %DiskPerfRegisterDevice_bb516 ]
  %"1312" = sext i32 %compRetStatus.0.i to i64
  %"1313" = icmp eq i64 %"1312", -1073741802
  br i1 %"1313", label %DiskPerfRegisterDevice_bb518, label %DiskPerfRegisterDevice_bb520

DiskPerfRegisterDevice_bb518:                     ; preds = %DiskPerfRegisterDevice_DiskPerfIoCompletion.exit.i
  %"1314" = load i32* @"'s", align 4
  %"1315" = load i32* @"'NP", align 4
  %"1316" = icmp eq i32 %"1314", %"1315"
  br i1 %"1316", label %DiskPerfRegisterDevice_stubMoreProcessingRequired.exit.i, label %DiskPerfRegisterDevice_bb519

DiskPerfRegisterDevice_stubMoreProcessingRequired.exit.i: ; preds = %DiskPerfRegisterDevice_bb518
  %"1317" = load i32* @"'MPR1", align 4
  store i32 %"1317", i32* @"'s", align 4
  br label %DiskPerfRegisterDevice_bb520

DiskPerfRegisterDevice_bb519:                     ; preds = %DiskPerfRegisterDevice_bb518
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfRegisterDevice_bb520:                     ; preds = %DiskPerfRegisterDevice_stubMoreProcessingRequired.exit.i, %DiskPerfRegisterDevice_DiskPerfIoCompletion.exit.i, %DiskPerfRegisterDevice_bb511
  %"1318" = call i32 @__VERIFIER_nondet_int() #4
  %"1319" = icmp eq i32 %"1318", 0
  br i1 %"1319", label %DiskPerfRegisterDevice_bb522, label %DiskPerfRegisterDevice_bb521

DiskPerfRegisterDevice_bb521:                     ; preds = %DiskPerfRegisterDevice_bb520
  %"1320" = call i32 @__VERIFIER_nondet_int() #4
  %"1321" = icmp eq i32 %"1320", 1
  %..i = select i1 %"1321", i32 -1073741823, i32 259
  br label %DiskPerfRegisterDevice_bb522

DiskPerfRegisterDevice_bb522:                     ; preds = %DiskPerfRegisterDevice_bb521, %DiskPerfRegisterDevice_bb520
  %returnVal2.0.i = phi i32 [ 0, %DiskPerfRegisterDevice_bb520 ], [ %..i, %DiskPerfRegisterDevice_bb521 ]
  %"1322" = load i32* @"'s", align 4
  %"1323" = load i32* @"'NP", align 4
  %"1324" = icmp eq i32 %"1322", %"1323"
  br i1 %"1324", label %DiskPerfRegisterDevice_bb523, label %DiskPerfRegisterDevice_bb524

DiskPerfRegisterDevice_bb523:                     ; preds = %DiskPerfRegisterDevice_bb522
  %"1325" = load i32* @"'IPC", align 4
  store i32 %"1325", i32* @"'s", align 4
  store i32 %returnVal2.0.i, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfRegisterDevice_IofCallDriver.exit

DiskPerfRegisterDevice_bb524:                     ; preds = %DiskPerfRegisterDevice_bb522
  %"1326" = load i32* @"'s", align 4
  %"1327" = load i32* @"'MPR1", align 4
  %"1328" = icmp eq i32 %"1326", %"1327"
  br i1 %"1328", label %DiskPerfRegisterDevice_bb525, label %DiskPerfRegisterDevice_bb528

DiskPerfRegisterDevice_bb525:                     ; preds = %DiskPerfRegisterDevice_bb524
  %"1329" = icmp eq i32 %returnVal2.0.i, 259
  br i1 %"1329", label %DiskPerfRegisterDevice_bb526, label %DiskPerfRegisterDevice_bb527

DiskPerfRegisterDevice_bb526:                     ; preds = %DiskPerfRegisterDevice_bb525
  %"1330" = load i32* @"'MPR3", align 4
  store i32 %"1330", i32* @"'s", align 4
  store i32 %returnVal2.0.i, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfRegisterDevice_IofCallDriver.exit

DiskPerfRegisterDevice_bb527:                     ; preds = %DiskPerfRegisterDevice_bb525
  %"1331" = load i32* @"'NP", align 4
  store i32 %"1331", i32* @"'s", align 4
  store i32 %returnVal2.0.i, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfRegisterDevice_IofCallDriver.exit

DiskPerfRegisterDevice_bb528:                     ; preds = %DiskPerfRegisterDevice_bb524
  %"1332" = load i32* @"'s", align 4
  %"1333" = load i32* @"'SKIP1", align 4
  %"1334" = icmp eq i32 %"1332", %"1333"
  br i1 %"1334", label %DiskPerfRegisterDevice_bb529, label %DiskPerfRegisterDevice_bb625

DiskPerfRegisterDevice_bb529:                     ; preds = %DiskPerfRegisterDevice_bb528
  %"1335" = load i32* @"'SKIP2", align 4
  store i32 %"1335", i32* @"'s", align 4
  store i32 %returnVal2.0.i, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfRegisterDevice_IofCallDriver.exit

DiskPerfRegisterDevice_IofCallDriver.exit:        ; preds = %DiskPerfRegisterDevice_bb523, %DiskPerfRegisterDevice_bb526, %DiskPerfRegisterDevice_bb527, %DiskPerfRegisterDevice_bb529
  %"1336" = sext i32 %returnVal2.0.i to i64
  %"1337" = icmp eq i64 %"1336", 259
  br i1 %"1337", label %DiskPerfRegisterDevice_bb530, label %DiskPerfRegisterDevice_bb536

DiskPerfRegisterDevice_bb530:                     ; preds = %DiskPerfRegisterDevice_IofCallDriver.exit
  %"1338" = load i32* @"'s", align 4
  %"1339" = load i32* @"'MPR3", align 4
  %"1340" = icmp eq i32 %"1338", %"1339"
  %"1341" = load i32* @"'setEventCalled", align 4
  %"1342" = icmp eq i32 %"1341", 1
  %or.cond.i1 = and i1 %"1340", %"1342"
  br i1 %or.cond.i1, label %DiskPerfRegisterDevice_bb531, label %DiskPerfRegisterDevice_bb532

DiskPerfRegisterDevice_bb531:                     ; preds = %DiskPerfRegisterDevice_bb530
  %"1343" = load i32* @"'NP", align 4
  store i32 %"1343", i32* @"'s", align 4
  store i32 0, i32* @"'setEventCalled", align 4
  br label %DiskPerfRegisterDevice_KeWaitForSingleObject.exit

DiskPerfRegisterDevice_bb532:                     ; preds = %DiskPerfRegisterDevice_bb530
  %"1344" = load i32* @"'customIrp", align 4
  %"1345" = icmp eq i32 %"1344", 1
  br i1 %"1345", label %DiskPerfRegisterDevice_bb533, label %DiskPerfRegisterDevice_bb534

DiskPerfRegisterDevice_bb533:                     ; preds = %DiskPerfRegisterDevice_bb532
  %"1346" = load i32* @"'NP", align 4
  store i32 %"1346", i32* @"'s", align 4
  store i32 0, i32* @"'customIrp", align 4
  br label %DiskPerfRegisterDevice_KeWaitForSingleObject.exit

DiskPerfRegisterDevice_bb534:                     ; preds = %DiskPerfRegisterDevice_bb532
  %"1347" = load i32* @"'s", align 4
  %"1348" = load i32* @"'MPR3", align 4
  %"1349" = icmp eq i32 %"1347", %"1348"
  br i1 %"1349", label %DiskPerfRegisterDevice_bb535, label %DiskPerfRegisterDevice_KeWaitForSingleObject.exit

DiskPerfRegisterDevice_bb535:                     ; preds = %DiskPerfRegisterDevice_bb534
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfRegisterDevice_KeWaitForSingleObject.exit: ; preds = %DiskPerfRegisterDevice_bb531, %DiskPerfRegisterDevice_bb533, %DiskPerfRegisterDevice_bb534
  %"1350" = call i32 @__VERIFIER_nondet_int() #4
  br label %DiskPerfRegisterDevice_bb536

DiskPerfRegisterDevice_bb536:                     ; preds = %DiskPerfRegisterDevice_KeWaitForSingleObject.exit, %DiskPerfRegisterDevice_IofCallDriver.exit
  %status.0 = phi i32 [ %"1275", %DiskPerfRegisterDevice_KeWaitForSingleObject.exit ], [ %returnVal2.0.i, %DiskPerfRegisterDevice_IofCallDriver.exit ]
  %"1351" = icmp slt i32 %status.0, 0
  br i1 %"1351", label %DiskPerfRegisterDevice_bb537, label %DiskPerfRegisterDevice_bb624

DiskPerfRegisterDevice_bb537:                     ; preds = %DiskPerfRegisterDevice_bb536
  %"1352" = icmp ne i32 %"1283", 0
  br i1 %"1352", label %DiskPerfRegisterDevice_bb538, label %DiskPerfRegisterDevice_bb626

DiskPerfRegisterDevice_bb538:                     ; preds = %DiskPerfRegisterDevice_bb537
  %"1353" = call i32 @__VERIFIER_nondet_int() #4
  store i32 1, i32* @"'customIrp", align 4
  %"1354" = call i32 @__VERIFIER_nondet_int() #4
  %"1355" = icmp eq i32 %"1354", 0
  %.0.i3 = select i1 %"1355", i32 %"1353", i32 0
  %"1356" = icmp ne i32 %.0.i3, 0
  br i1 %"1356", label %DiskPerfRegisterDevice_bb539, label %DiskPerfRegisterDevice_bb626

DiskPerfRegisterDevice_bb539:                     ; preds = %DiskPerfRegisterDevice_bb538
  %"1357" = call i32 @__VERIFIER_nondet_int() #4
  %"1358" = load i32* @"'compRegistered", align 4
  %"1359" = icmp ne i32 %"1358", 0
  br i1 %"1359", label %DiskPerfRegisterDevice_bb540, label %DiskPerfRegisterDevice_bb548

DiskPerfRegisterDevice_bb540:                     ; preds = %DiskPerfRegisterDevice_bb539
  %"1360" = load i32* @"'routine", align 4
  %"1361" = icmp eq i32 %"1360", 0
  %"1362" = call i32 @__VERIFIER_nondet_int() #4
  br i1 %"1361", label %DiskPerfRegisterDevice_bb541, label %DiskPerfRegisterDevice_bb542

DiskPerfRegisterDevice_bb541:                     ; preds = %DiskPerfRegisterDevice_bb540
  store i32 1, i32* @"'setEventCalled", align 4
  br label %DiskPerfRegisterDevice_DiskPerfIoCompletion.exit.i6

DiskPerfRegisterDevice_bb542:                     ; preds = %DiskPerfRegisterDevice_bb540
  %"1363" = call i32 @__VERIFIER_nondet_int() #4
  %"1364" = call i32 @__VERIFIER_nondet_int() #4
  %"1365" = call i32 @__VERIFIER_nondet_int() #4
  %"1366" = call i32 @__VERIFIER_nondet_int() #4
  %"1367" = call i32 @__VERIFIER_nondet_int() #4
  %"1368" = call i32 @__VERIFIER_nondet_int() #4
  %"1369" = call i32 @__VERIFIER_nondet_int() #4
  %"1370" = call i32 @__VERIFIER_nondet_int() #4
  %"1371" = call i32 @__VERIFIER_nondet_int() #4
  %"1372" = call i32 @__VERIFIER_nondet_int() #4
  %"1373" = call i32 @__VERIFIER_nondet_int() #4
  %"1374" = call i32 @__VERIFIER_nondet_int() #4
  %"1375" = call i32 @__VERIFIER_nondet_int() #4
  %"1376" = icmp ne i32 %"1374", 0
  %"1377" = icmp ne i32 %"1373", 0
  %or.cond.i4 = and i1 %"1376", %"1377"
  br i1 %or.cond.i4, label %DiskPerfRegisterDevice_bb543, label %DiskPerfRegisterDevice_DiskPerfIoCompletion.exit.i6

DiskPerfRegisterDevice_bb543:                     ; preds = %DiskPerfRegisterDevice_bb542
  %"1378" = load i32* @"'pended", align 4
  %"1379" = icmp eq i32 %"1378", 0
  br i1 %"1379", label %DiskPerfRegisterDevice_bb544, label %DiskPerfRegisterDevice_bb545

DiskPerfRegisterDevice_bb544:                     ; preds = %DiskPerfRegisterDevice_bb543
  store i32 1, i32* @"'pended", align 4
  br label %DiskPerfRegisterDevice_DiskPerfIoCompletion.exit.i6

DiskPerfRegisterDevice_bb545:                     ; preds = %DiskPerfRegisterDevice_bb543
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfRegisterDevice_DiskPerfIoCompletion.exit.i6: ; preds = %DiskPerfRegisterDevice_bb544, %DiskPerfRegisterDevice_bb542, %DiskPerfRegisterDevice_bb541
  %compRetStatus.0.i5 = phi i32 [ -1073741802, %DiskPerfRegisterDevice_bb541 ], [ 0, %DiskPerfRegisterDevice_bb542 ], [ 0, %DiskPerfRegisterDevice_bb544 ]
  %"1380" = sext i32 %compRetStatus.0.i5 to i64
  %"1381" = icmp eq i64 %"1380", -1073741802
  br i1 %"1381", label %DiskPerfRegisterDevice_bb546, label %DiskPerfRegisterDevice_bb548

DiskPerfRegisterDevice_bb546:                     ; preds = %DiskPerfRegisterDevice_DiskPerfIoCompletion.exit.i6
  %"1382" = load i32* @"'s", align 4
  %"1383" = load i32* @"'NP", align 4
  %"1384" = icmp eq i32 %"1382", %"1383"
  br i1 %"1384", label %DiskPerfRegisterDevice_stubMoreProcessingRequired.exit.i7, label %DiskPerfRegisterDevice_bb547

DiskPerfRegisterDevice_stubMoreProcessingRequired.exit.i7: ; preds = %DiskPerfRegisterDevice_bb546
  %"1385" = load i32* @"'MPR1", align 4
  store i32 %"1385", i32* @"'s", align 4
  br label %DiskPerfRegisterDevice_bb548

DiskPerfRegisterDevice_bb547:                     ; preds = %DiskPerfRegisterDevice_bb546
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfRegisterDevice_bb548:                     ; preds = %DiskPerfRegisterDevice_stubMoreProcessingRequired.exit.i7, %DiskPerfRegisterDevice_DiskPerfIoCompletion.exit.i6, %DiskPerfRegisterDevice_bb539
  %"1386" = call i32 @__VERIFIER_nondet_int() #4
  %"1387" = icmp eq i32 %"1386", 0
  br i1 %"1387", label %DiskPerfRegisterDevice_bb550, label %DiskPerfRegisterDevice_bb549

DiskPerfRegisterDevice_bb549:                     ; preds = %DiskPerfRegisterDevice_bb548
  %"1388" = call i32 @__VERIFIER_nondet_int() #4
  %"1389" = icmp eq i32 %"1388", 1
  %..i8 = select i1 %"1389", i32 -1073741823, i32 259
  br label %DiskPerfRegisterDevice_bb550

DiskPerfRegisterDevice_bb550:                     ; preds = %DiskPerfRegisterDevice_bb549, %DiskPerfRegisterDevice_bb548
  %returnVal2.0.i9 = phi i32 [ 0, %DiskPerfRegisterDevice_bb548 ], [ %..i8, %DiskPerfRegisterDevice_bb549 ]
  %"1390" = load i32* @"'s", align 4
  %"1391" = load i32* @"'NP", align 4
  %"1392" = icmp eq i32 %"1390", %"1391"
  br i1 %"1392", label %DiskPerfRegisterDevice_bb551, label %DiskPerfRegisterDevice_bb552

DiskPerfRegisterDevice_bb551:                     ; preds = %DiskPerfRegisterDevice_bb550
  %"1393" = load i32* @"'IPC", align 4
  store i32 %"1393", i32* @"'s", align 4
  store i32 %returnVal2.0.i9, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfRegisterDevice_IofCallDriver.exit10

DiskPerfRegisterDevice_bb552:                     ; preds = %DiskPerfRegisterDevice_bb550
  %"1394" = load i32* @"'s", align 4
  %"1395" = load i32* @"'MPR1", align 4
  %"1396" = icmp eq i32 %"1394", %"1395"
  br i1 %"1396", label %DiskPerfRegisterDevice_bb553, label %DiskPerfRegisterDevice_bb556

DiskPerfRegisterDevice_bb553:                     ; preds = %DiskPerfRegisterDevice_bb552
  %"1397" = icmp eq i32 %returnVal2.0.i9, 259
  br i1 %"1397", label %DiskPerfRegisterDevice_bb554, label %DiskPerfRegisterDevice_bb555

DiskPerfRegisterDevice_bb554:                     ; preds = %DiskPerfRegisterDevice_bb553
  %"1398" = load i32* @"'MPR3", align 4
  store i32 %"1398", i32* @"'s", align 4
  store i32 %returnVal2.0.i9, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfRegisterDevice_IofCallDriver.exit10

DiskPerfRegisterDevice_bb555:                     ; preds = %DiskPerfRegisterDevice_bb553
  %"1399" = load i32* @"'NP", align 4
  store i32 %"1399", i32* @"'s", align 4
  store i32 %returnVal2.0.i9, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfRegisterDevice_IofCallDriver.exit10

DiskPerfRegisterDevice_bb556:                     ; preds = %DiskPerfRegisterDevice_bb552
  %"1400" = load i32* @"'s", align 4
  %"1401" = load i32* @"'SKIP1", align 4
  %"1402" = icmp eq i32 %"1400", %"1401"
  br i1 %"1402", label %DiskPerfRegisterDevice_bb557, label %DiskPerfRegisterDevice_bb623

DiskPerfRegisterDevice_bb557:                     ; preds = %DiskPerfRegisterDevice_bb556
  %"1403" = load i32* @"'SKIP2", align 4
  store i32 %"1403", i32* @"'s", align 4
  store i32 %returnVal2.0.i9, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfRegisterDevice_IofCallDriver.exit10

DiskPerfRegisterDevice_IofCallDriver.exit10:      ; preds = %DiskPerfRegisterDevice_bb551, %DiskPerfRegisterDevice_bb554, %DiskPerfRegisterDevice_bb555, %DiskPerfRegisterDevice_bb557
  %"1404" = sext i32 %returnVal2.0.i9 to i64
  %"1405" = icmp eq i64 %"1404", 259
  br i1 %"1405", label %DiskPerfRegisterDevice_bb558, label %DiskPerfRegisterDevice_bb564

DiskPerfRegisterDevice_bb558:                     ; preds = %DiskPerfRegisterDevice_IofCallDriver.exit10
  %"1406" = load i32* @"'s", align 4
  %"1407" = load i32* @"'MPR3", align 4
  %"1408" = icmp eq i32 %"1406", %"1407"
  %"1409" = load i32* @"'setEventCalled", align 4
  %"1410" = icmp eq i32 %"1409", 1
  %or.cond.i11 = and i1 %"1408", %"1410"
  br i1 %or.cond.i11, label %DiskPerfRegisterDevice_bb559, label %DiskPerfRegisterDevice_bb560

DiskPerfRegisterDevice_bb559:                     ; preds = %DiskPerfRegisterDevice_bb558
  %"1411" = load i32* @"'NP", align 4
  store i32 %"1411", i32* @"'s", align 4
  store i32 0, i32* @"'setEventCalled", align 4
  br label %DiskPerfRegisterDevice_KeWaitForSingleObject.exit13

DiskPerfRegisterDevice_bb560:                     ; preds = %DiskPerfRegisterDevice_bb558
  %"1412" = load i32* @"'customIrp", align 4
  %"1413" = icmp eq i32 %"1412", 1
  br i1 %"1413", label %DiskPerfRegisterDevice_bb561, label %DiskPerfRegisterDevice_bb562

DiskPerfRegisterDevice_bb561:                     ; preds = %DiskPerfRegisterDevice_bb560
  %"1414" = load i32* @"'NP", align 4
  store i32 %"1414", i32* @"'s", align 4
  store i32 0, i32* @"'customIrp", align 4
  br label %DiskPerfRegisterDevice_KeWaitForSingleObject.exit13

DiskPerfRegisterDevice_bb562:                     ; preds = %DiskPerfRegisterDevice_bb560
  %"1415" = load i32* @"'s", align 4
  %"1416" = load i32* @"'MPR3", align 4
  %"1417" = icmp eq i32 %"1415", %"1416"
  br i1 %"1417", label %DiskPerfRegisterDevice_bb563, label %DiskPerfRegisterDevice_KeWaitForSingleObject.exit13

DiskPerfRegisterDevice_bb563:                     ; preds = %DiskPerfRegisterDevice_bb562
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfRegisterDevice_KeWaitForSingleObject.exit13: ; preds = %DiskPerfRegisterDevice_bb559, %DiskPerfRegisterDevice_bb561, %DiskPerfRegisterDevice_bb562
  %"1418" = call i32 @__VERIFIER_nondet_int() #4
  br label %DiskPerfRegisterDevice_bb564

DiskPerfRegisterDevice_bb564:                     ; preds = %DiskPerfRegisterDevice_KeWaitForSingleObject.exit13, %DiskPerfRegisterDevice_IofCallDriver.exit10
  %status.1 = phi i32 [ %"1275", %DiskPerfRegisterDevice_KeWaitForSingleObject.exit13 ], [ %returnVal2.0.i9, %DiskPerfRegisterDevice_IofCallDriver.exit10 ]
  %"1419" = sext i32 %status.1 to i64
  %"1420" = icmp eq i64 %"1419", -2147483643
  br i1 %"1420", label %DiskPerfRegisterDevice_bb565, label %DiskPerfRegisterDevice_bb593

DiskPerfRegisterDevice_bb565:                     ; preds = %DiskPerfRegisterDevice_bb564
  %"1421" = icmp ne i32 %"1283", 0
  br i1 %"1421", label %DiskPerfRegisterDevice_bb566, label %DiskPerfRegisterDevice_bb626

DiskPerfRegisterDevice_bb566:                     ; preds = %DiskPerfRegisterDevice_bb565
  %"1422" = call i32 @__VERIFIER_nondet_int() #4
  store i32 1, i32* @"'customIrp", align 4
  %"1423" = call i32 @__VERIFIER_nondet_int() #4
  %"1424" = icmp eq i32 %"1423", 0
  %.0.i14 = select i1 %"1424", i32 %"1422", i32 0
  %"1425" = icmp ne i32 %.0.i14, 0
  br i1 %"1425", label %DiskPerfRegisterDevice_bb567, label %DiskPerfRegisterDevice_bb626

DiskPerfRegisterDevice_bb567:                     ; preds = %DiskPerfRegisterDevice_bb566
  %"1426" = call i32 @__VERIFIER_nondet_int() #4
  %"1427" = load i32* @"'compRegistered", align 4
  %"1428" = icmp ne i32 %"1427", 0
  br i1 %"1428", label %DiskPerfRegisterDevice_bb568, label %DiskPerfRegisterDevice_bb576

DiskPerfRegisterDevice_bb568:                     ; preds = %DiskPerfRegisterDevice_bb567
  %"1429" = load i32* @"'routine", align 4
  %"1430" = icmp eq i32 %"1429", 0
  %"1431" = call i32 @__VERIFIER_nondet_int() #4
  br i1 %"1430", label %DiskPerfRegisterDevice_bb569, label %DiskPerfRegisterDevice_bb570

DiskPerfRegisterDevice_bb569:                     ; preds = %DiskPerfRegisterDevice_bb568
  store i32 1, i32* @"'setEventCalled", align 4
  br label %DiskPerfRegisterDevice_DiskPerfIoCompletion.exit.i17

DiskPerfRegisterDevice_bb570:                     ; preds = %DiskPerfRegisterDevice_bb568
  %"1432" = call i32 @__VERIFIER_nondet_int() #4
  %"1433" = call i32 @__VERIFIER_nondet_int() #4
  %"1434" = call i32 @__VERIFIER_nondet_int() #4
  %"1435" = call i32 @__VERIFIER_nondet_int() #4
  %"1436" = call i32 @__VERIFIER_nondet_int() #4
  %"1437" = call i32 @__VERIFIER_nondet_int() #4
  %"1438" = call i32 @__VERIFIER_nondet_int() #4
  %"1439" = call i32 @__VERIFIER_nondet_int() #4
  %"1440" = call i32 @__VERIFIER_nondet_int() #4
  %"1441" = call i32 @__VERIFIER_nondet_int() #4
  %"1442" = call i32 @__VERIFIER_nondet_int() #4
  %"1443" = call i32 @__VERIFIER_nondet_int() #4
  %"1444" = call i32 @__VERIFIER_nondet_int() #4
  %"1445" = icmp ne i32 %"1443", 0
  %"1446" = icmp ne i32 %"1442", 0
  %or.cond.i15 = and i1 %"1445", %"1446"
  br i1 %or.cond.i15, label %DiskPerfRegisterDevice_bb571, label %DiskPerfRegisterDevice_DiskPerfIoCompletion.exit.i17

DiskPerfRegisterDevice_bb571:                     ; preds = %DiskPerfRegisterDevice_bb570
  %"1447" = load i32* @"'pended", align 4
  %"1448" = icmp eq i32 %"1447", 0
  br i1 %"1448", label %DiskPerfRegisterDevice_bb572, label %DiskPerfRegisterDevice_bb573

DiskPerfRegisterDevice_bb572:                     ; preds = %DiskPerfRegisterDevice_bb571
  store i32 1, i32* @"'pended", align 4
  br label %DiskPerfRegisterDevice_DiskPerfIoCompletion.exit.i17

DiskPerfRegisterDevice_bb573:                     ; preds = %DiskPerfRegisterDevice_bb571
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfRegisterDevice_DiskPerfIoCompletion.exit.i17: ; preds = %DiskPerfRegisterDevice_bb572, %DiskPerfRegisterDevice_bb570, %DiskPerfRegisterDevice_bb569
  %compRetStatus.0.i16 = phi i32 [ -1073741802, %DiskPerfRegisterDevice_bb569 ], [ 0, %DiskPerfRegisterDevice_bb570 ], [ 0, %DiskPerfRegisterDevice_bb572 ]
  %"1449" = sext i32 %compRetStatus.0.i16 to i64
  %"1450" = icmp eq i64 %"1449", -1073741802
  br i1 %"1450", label %DiskPerfRegisterDevice_bb574, label %DiskPerfRegisterDevice_bb576

DiskPerfRegisterDevice_bb574:                     ; preds = %DiskPerfRegisterDevice_DiskPerfIoCompletion.exit.i17
  %"1451" = load i32* @"'s", align 4
  %"1452" = load i32* @"'NP", align 4
  %"1453" = icmp eq i32 %"1451", %"1452"
  br i1 %"1453", label %DiskPerfRegisterDevice_stubMoreProcessingRequired.exit.i18, label %DiskPerfRegisterDevice_bb575

DiskPerfRegisterDevice_stubMoreProcessingRequired.exit.i18: ; preds = %DiskPerfRegisterDevice_bb574
  %"1454" = load i32* @"'MPR1", align 4
  store i32 %"1454", i32* @"'s", align 4
  br label %DiskPerfRegisterDevice_bb576

DiskPerfRegisterDevice_bb575:                     ; preds = %DiskPerfRegisterDevice_bb574
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfRegisterDevice_bb576:                     ; preds = %DiskPerfRegisterDevice_stubMoreProcessingRequired.exit.i18, %DiskPerfRegisterDevice_DiskPerfIoCompletion.exit.i17, %DiskPerfRegisterDevice_bb567
  %"1455" = call i32 @__VERIFIER_nondet_int() #4
  %"1456" = icmp eq i32 %"1455", 0
  br i1 %"1456", label %DiskPerfRegisterDevice_bb578, label %DiskPerfRegisterDevice_bb577

DiskPerfRegisterDevice_bb577:                     ; preds = %DiskPerfRegisterDevice_bb576
  %"1457" = call i32 @__VERIFIER_nondet_int() #4
  %"1458" = icmp eq i32 %"1457", 1
  %..i19 = select i1 %"1458", i32 -1073741823, i32 259
  br label %DiskPerfRegisterDevice_bb578

DiskPerfRegisterDevice_bb578:                     ; preds = %DiskPerfRegisterDevice_bb577, %DiskPerfRegisterDevice_bb576
  %returnVal2.0.i20 = phi i32 [ 0, %DiskPerfRegisterDevice_bb576 ], [ %..i19, %DiskPerfRegisterDevice_bb577 ]
  %"1459" = load i32* @"'s", align 4
  %"1460" = load i32* @"'NP", align 4
  %"1461" = icmp eq i32 %"1459", %"1460"
  br i1 %"1461", label %DiskPerfRegisterDevice_bb579, label %DiskPerfRegisterDevice_bb580

DiskPerfRegisterDevice_bb579:                     ; preds = %DiskPerfRegisterDevice_bb578
  %"1462" = load i32* @"'IPC", align 4
  store i32 %"1462", i32* @"'s", align 4
  store i32 %returnVal2.0.i20, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfRegisterDevice_IofCallDriver.exit21

DiskPerfRegisterDevice_bb580:                     ; preds = %DiskPerfRegisterDevice_bb578
  %"1463" = load i32* @"'s", align 4
  %"1464" = load i32* @"'MPR1", align 4
  %"1465" = icmp eq i32 %"1463", %"1464"
  br i1 %"1465", label %DiskPerfRegisterDevice_bb581, label %DiskPerfRegisterDevice_bb584

DiskPerfRegisterDevice_bb581:                     ; preds = %DiskPerfRegisterDevice_bb580
  %"1466" = icmp eq i32 %returnVal2.0.i20, 259
  br i1 %"1466", label %DiskPerfRegisterDevice_bb582, label %DiskPerfRegisterDevice_bb583

DiskPerfRegisterDevice_bb582:                     ; preds = %DiskPerfRegisterDevice_bb581
  %"1467" = load i32* @"'MPR3", align 4
  store i32 %"1467", i32* @"'s", align 4
  store i32 %returnVal2.0.i20, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfRegisterDevice_IofCallDriver.exit21

DiskPerfRegisterDevice_bb583:                     ; preds = %DiskPerfRegisterDevice_bb581
  %"1468" = load i32* @"'NP", align 4
  store i32 %"1468", i32* @"'s", align 4
  store i32 %returnVal2.0.i20, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfRegisterDevice_IofCallDriver.exit21

DiskPerfRegisterDevice_bb584:                     ; preds = %DiskPerfRegisterDevice_bb580
  %"1469" = load i32* @"'s", align 4
  %"1470" = load i32* @"'SKIP1", align 4
  %"1471" = icmp eq i32 %"1469", %"1470"
  br i1 %"1471", label %DiskPerfRegisterDevice_bb585, label %DiskPerfRegisterDevice_bb592

DiskPerfRegisterDevice_bb585:                     ; preds = %DiskPerfRegisterDevice_bb584
  %"1472" = load i32* @"'SKIP2", align 4
  store i32 %"1472", i32* @"'s", align 4
  store i32 %returnVal2.0.i20, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfRegisterDevice_IofCallDriver.exit21

DiskPerfRegisterDevice_IofCallDriver.exit21:      ; preds = %DiskPerfRegisterDevice_bb579, %DiskPerfRegisterDevice_bb582, %DiskPerfRegisterDevice_bb583, %DiskPerfRegisterDevice_bb585
  %"1473" = sext i32 %returnVal2.0.i20 to i64
  %"1474" = icmp eq i64 %"1473", 259
  br i1 %"1474", label %DiskPerfRegisterDevice_bb586, label %DiskPerfRegisterDevice_bb593

DiskPerfRegisterDevice_bb586:                     ; preds = %DiskPerfRegisterDevice_IofCallDriver.exit21
  %"1475" = load i32* @"'s", align 4
  %"1476" = load i32* @"'MPR3", align 4
  %"1477" = icmp eq i32 %"1475", %"1476"
  %"1478" = load i32* @"'setEventCalled", align 4
  %"1479" = icmp eq i32 %"1478", 1
  %or.cond.i22 = and i1 %"1477", %"1479"
  br i1 %or.cond.i22, label %DiskPerfRegisterDevice_bb587, label %DiskPerfRegisterDevice_bb588

DiskPerfRegisterDevice_bb587:                     ; preds = %DiskPerfRegisterDevice_bb586
  %"1480" = load i32* @"'NP", align 4
  store i32 %"1480", i32* @"'s", align 4
  store i32 0, i32* @"'setEventCalled", align 4
  br label %DiskPerfRegisterDevice_KeWaitForSingleObject.exit24

DiskPerfRegisterDevice_bb588:                     ; preds = %DiskPerfRegisterDevice_bb586
  %"1481" = load i32* @"'customIrp", align 4
  %"1482" = icmp eq i32 %"1481", 1
  br i1 %"1482", label %DiskPerfRegisterDevice_bb589, label %DiskPerfRegisterDevice_bb590

DiskPerfRegisterDevice_bb589:                     ; preds = %DiskPerfRegisterDevice_bb588
  %"1483" = load i32* @"'NP", align 4
  store i32 %"1483", i32* @"'s", align 4
  store i32 0, i32* @"'customIrp", align 4
  br label %DiskPerfRegisterDevice_KeWaitForSingleObject.exit24

DiskPerfRegisterDevice_bb590:                     ; preds = %DiskPerfRegisterDevice_bb588
  %"1484" = load i32* @"'s", align 4
  %"1485" = load i32* @"'MPR3", align 4
  %"1486" = icmp eq i32 %"1484", %"1485"
  br i1 %"1486", label %DiskPerfRegisterDevice_bb591, label %DiskPerfRegisterDevice_KeWaitForSingleObject.exit24

DiskPerfRegisterDevice_bb591:                     ; preds = %DiskPerfRegisterDevice_bb590
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfRegisterDevice_KeWaitForSingleObject.exit24: ; preds = %DiskPerfRegisterDevice_bb587, %DiskPerfRegisterDevice_bb589, %DiskPerfRegisterDevice_bb590
  %"1487" = call i32 @__VERIFIER_nondet_int() #4
  br label %DiskPerfRegisterDevice_bb593

DiskPerfRegisterDevice_bb592:                     ; preds = %DiskPerfRegisterDevice_bb584
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfRegisterDevice_bb593:                     ; preds = %DiskPerfRegisterDevice_IofCallDriver.exit21, %DiskPerfRegisterDevice_KeWaitForSingleObject.exit24, %DiskPerfRegisterDevice_bb564
  %status.3 = phi i32 [ %status.1, %DiskPerfRegisterDevice_bb564 ], [ %"1275", %DiskPerfRegisterDevice_KeWaitForSingleObject.exit24 ], [ %returnVal2.0.i20, %DiskPerfRegisterDevice_IofCallDriver.exit21 ]
  %"1488" = icmp slt i32 %status.3, 0
  br i1 %"1488", label %DiskPerfRegisterDevice_bb626, label %DiskPerfRegisterDevice_bb594

DiskPerfRegisterDevice_bb594:                     ; preds = %DiskPerfRegisterDevice_bb593
  %"1489" = call i32 @__VERIFIER_nondet_int() #4
  store i32 1, i32* @"'customIrp", align 4
  %"1490" = call i32 @__VERIFIER_nondet_int() #4
  %"1491" = icmp eq i32 %"1490", 0
  %.0.i25 = select i1 %"1491", i32 %"1489", i32 0
  %"1492" = icmp ne i32 %.0.i25, 0
  br i1 %"1492", label %DiskPerfRegisterDevice_bb595, label %DiskPerfRegisterDevice_bb626

DiskPerfRegisterDevice_bb595:                     ; preds = %DiskPerfRegisterDevice_bb594
  %"1493" = call i32 @__VERIFIER_nondet_int() #4
  %"1494" = load i32* @"'compRegistered", align 4
  %"1495" = icmp ne i32 %"1494", 0
  br i1 %"1495", label %DiskPerfRegisterDevice_bb596, label %DiskPerfRegisterDevice_bb604

DiskPerfRegisterDevice_bb596:                     ; preds = %DiskPerfRegisterDevice_bb595
  %"1496" = load i32* @"'routine", align 4
  %"1497" = icmp eq i32 %"1496", 0
  %"1498" = call i32 @__VERIFIER_nondet_int() #4
  br i1 %"1497", label %DiskPerfRegisterDevice_bb597, label %DiskPerfRegisterDevice_bb598

DiskPerfRegisterDevice_bb597:                     ; preds = %DiskPerfRegisterDevice_bb596
  store i32 1, i32* @"'setEventCalled", align 4
  br label %DiskPerfRegisterDevice_DiskPerfIoCompletion.exit.i28

DiskPerfRegisterDevice_bb598:                     ; preds = %DiskPerfRegisterDevice_bb596
  %"1499" = call i32 @__VERIFIER_nondet_int() #4
  %"1500" = call i32 @__VERIFIER_nondet_int() #4
  %"1501" = call i32 @__VERIFIER_nondet_int() #4
  %"1502" = call i32 @__VERIFIER_nondet_int() #4
  %"1503" = call i32 @__VERIFIER_nondet_int() #4
  %"1504" = call i32 @__VERIFIER_nondet_int() #4
  %"1505" = call i32 @__VERIFIER_nondet_int() #4
  %"1506" = call i32 @__VERIFIER_nondet_int() #4
  %"1507" = call i32 @__VERIFIER_nondet_int() #4
  %"1508" = call i32 @__VERIFIER_nondet_int() #4
  %"1509" = call i32 @__VERIFIER_nondet_int() #4
  %"1510" = call i32 @__VERIFIER_nondet_int() #4
  %"1511" = call i32 @__VERIFIER_nondet_int() #4
  %"1512" = icmp ne i32 %"1510", 0
  %"1513" = icmp ne i32 %"1509", 0
  %or.cond.i26 = and i1 %"1512", %"1513"
  br i1 %or.cond.i26, label %DiskPerfRegisterDevice_bb599, label %DiskPerfRegisterDevice_DiskPerfIoCompletion.exit.i28

DiskPerfRegisterDevice_bb599:                     ; preds = %DiskPerfRegisterDevice_bb598
  %"1514" = load i32* @"'pended", align 4
  %"1515" = icmp eq i32 %"1514", 0
  br i1 %"1515", label %DiskPerfRegisterDevice_bb600, label %DiskPerfRegisterDevice_bb601

DiskPerfRegisterDevice_bb600:                     ; preds = %DiskPerfRegisterDevice_bb599
  store i32 1, i32* @"'pended", align 4
  br label %DiskPerfRegisterDevice_DiskPerfIoCompletion.exit.i28

DiskPerfRegisterDevice_bb601:                     ; preds = %DiskPerfRegisterDevice_bb599
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfRegisterDevice_DiskPerfIoCompletion.exit.i28: ; preds = %DiskPerfRegisterDevice_bb600, %DiskPerfRegisterDevice_bb598, %DiskPerfRegisterDevice_bb597
  %compRetStatus.0.i27 = phi i32 [ -1073741802, %DiskPerfRegisterDevice_bb597 ], [ 0, %DiskPerfRegisterDevice_bb598 ], [ 0, %DiskPerfRegisterDevice_bb600 ]
  %"1516" = sext i32 %compRetStatus.0.i27 to i64
  %"1517" = icmp eq i64 %"1516", -1073741802
  br i1 %"1517", label %DiskPerfRegisterDevice_bb602, label %DiskPerfRegisterDevice_bb604

DiskPerfRegisterDevice_bb602:                     ; preds = %DiskPerfRegisterDevice_DiskPerfIoCompletion.exit.i28
  %"1518" = load i32* @"'s", align 4
  %"1519" = load i32* @"'NP", align 4
  %"1520" = icmp eq i32 %"1518", %"1519"
  br i1 %"1520", label %DiskPerfRegisterDevice_stubMoreProcessingRequired.exit.i29, label %DiskPerfRegisterDevice_bb603

DiskPerfRegisterDevice_stubMoreProcessingRequired.exit.i29: ; preds = %DiskPerfRegisterDevice_bb602
  %"1521" = load i32* @"'MPR1", align 4
  store i32 %"1521", i32* @"'s", align 4
  br label %DiskPerfRegisterDevice_bb604

DiskPerfRegisterDevice_bb603:                     ; preds = %DiskPerfRegisterDevice_bb602
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfRegisterDevice_bb604:                     ; preds = %DiskPerfRegisterDevice_stubMoreProcessingRequired.exit.i29, %DiskPerfRegisterDevice_DiskPerfIoCompletion.exit.i28, %DiskPerfRegisterDevice_bb595
  %"1522" = call i32 @__VERIFIER_nondet_int() #4
  %"1523" = icmp eq i32 %"1522", 0
  br i1 %"1523", label %DiskPerfRegisterDevice_bb606, label %DiskPerfRegisterDevice_bb605

DiskPerfRegisterDevice_bb605:                     ; preds = %DiskPerfRegisterDevice_bb604
  %"1524" = call i32 @__VERIFIER_nondet_int() #4
  %"1525" = icmp eq i32 %"1524", 1
  %..i30 = select i1 %"1525", i32 -1073741823, i32 259
  br label %DiskPerfRegisterDevice_bb606

DiskPerfRegisterDevice_bb606:                     ; preds = %DiskPerfRegisterDevice_bb605, %DiskPerfRegisterDevice_bb604
  %returnVal2.0.i31 = phi i32 [ 0, %DiskPerfRegisterDevice_bb604 ], [ %..i30, %DiskPerfRegisterDevice_bb605 ]
  %"1526" = load i32* @"'s", align 4
  %"1527" = load i32* @"'NP", align 4
  %"1528" = icmp eq i32 %"1526", %"1527"
  br i1 %"1528", label %DiskPerfRegisterDevice_bb607, label %DiskPerfRegisterDevice_bb608

DiskPerfRegisterDevice_bb607:                     ; preds = %DiskPerfRegisterDevice_bb606
  %"1529" = load i32* @"'IPC", align 4
  store i32 %"1529", i32* @"'s", align 4
  store i32 %returnVal2.0.i31, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfRegisterDevice_IofCallDriver.exit32

DiskPerfRegisterDevice_bb608:                     ; preds = %DiskPerfRegisterDevice_bb606
  %"1530" = load i32* @"'s", align 4
  %"1531" = load i32* @"'MPR1", align 4
  %"1532" = icmp eq i32 %"1530", %"1531"
  br i1 %"1532", label %DiskPerfRegisterDevice_bb609, label %DiskPerfRegisterDevice_bb612

DiskPerfRegisterDevice_bb609:                     ; preds = %DiskPerfRegisterDevice_bb608
  %"1533" = icmp eq i32 %returnVal2.0.i31, 259
  br i1 %"1533", label %DiskPerfRegisterDevice_bb610, label %DiskPerfRegisterDevice_bb611

DiskPerfRegisterDevice_bb610:                     ; preds = %DiskPerfRegisterDevice_bb609
  %"1534" = load i32* @"'MPR3", align 4
  store i32 %"1534", i32* @"'s", align 4
  store i32 %returnVal2.0.i31, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfRegisterDevice_IofCallDriver.exit32

DiskPerfRegisterDevice_bb611:                     ; preds = %DiskPerfRegisterDevice_bb609
  %"1535" = load i32* @"'NP", align 4
  store i32 %"1535", i32* @"'s", align 4
  store i32 %returnVal2.0.i31, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfRegisterDevice_IofCallDriver.exit32

DiskPerfRegisterDevice_bb612:                     ; preds = %DiskPerfRegisterDevice_bb608
  %"1536" = load i32* @"'s", align 4
  %"1537" = load i32* @"'SKIP1", align 4
  %"1538" = icmp eq i32 %"1536", %"1537"
  br i1 %"1538", label %DiskPerfRegisterDevice_bb613, label %DiskPerfRegisterDevice_bb622

DiskPerfRegisterDevice_bb613:                     ; preds = %DiskPerfRegisterDevice_bb612
  %"1539" = load i32* @"'SKIP2", align 4
  store i32 %"1539", i32* @"'s", align 4
  store i32 %returnVal2.0.i31, i32* @"'lowerDriverReturn", align 4
  br label %DiskPerfRegisterDevice_IofCallDriver.exit32

DiskPerfRegisterDevice_IofCallDriver.exit32:      ; preds = %DiskPerfRegisterDevice_bb607, %DiskPerfRegisterDevice_bb610, %DiskPerfRegisterDevice_bb611, %DiskPerfRegisterDevice_bb613
  %"1540" = sext i32 %returnVal2.0.i31 to i64
  %"1541" = icmp eq i64 %"1540", 259
  br i1 %"1541", label %DiskPerfRegisterDevice_bb614, label %DiskPerfRegisterDevice_bb620

DiskPerfRegisterDevice_bb614:                     ; preds = %DiskPerfRegisterDevice_IofCallDriver.exit32
  %"1542" = load i32* @"'s", align 4
  %"1543" = load i32* @"'MPR3", align 4
  %"1544" = icmp eq i32 %"1542", %"1543"
  %"1545" = load i32* @"'setEventCalled", align 4
  %"1546" = icmp eq i32 %"1545", 1
  %or.cond.i33 = and i1 %"1544", %"1546"
  br i1 %or.cond.i33, label %DiskPerfRegisterDevice_bb615, label %DiskPerfRegisterDevice_bb616

DiskPerfRegisterDevice_bb615:                     ; preds = %DiskPerfRegisterDevice_bb614
  %"1547" = load i32* @"'NP", align 4
  store i32 %"1547", i32* @"'s", align 4
  store i32 0, i32* @"'setEventCalled", align 4
  br label %DiskPerfRegisterDevice_KeWaitForSingleObject.exit35

DiskPerfRegisterDevice_bb616:                     ; preds = %DiskPerfRegisterDevice_bb614
  %"1548" = load i32* @"'customIrp", align 4
  %"1549" = icmp eq i32 %"1548", 1
  br i1 %"1549", label %DiskPerfRegisterDevice_bb617, label %DiskPerfRegisterDevice_bb618

DiskPerfRegisterDevice_bb617:                     ; preds = %DiskPerfRegisterDevice_bb616
  %"1550" = load i32* @"'NP", align 4
  store i32 %"1550", i32* @"'s", align 4
  store i32 0, i32* @"'customIrp", align 4
  br label %DiskPerfRegisterDevice_KeWaitForSingleObject.exit35

DiskPerfRegisterDevice_bb618:                     ; preds = %DiskPerfRegisterDevice_bb616
  %"1551" = load i32* @"'s", align 4
  %"1552" = load i32* @"'MPR3", align 4
  %"1553" = icmp eq i32 %"1551", %"1552"
  br i1 %"1553", label %DiskPerfRegisterDevice_bb619, label %DiskPerfRegisterDevice_KeWaitForSingleObject.exit35

DiskPerfRegisterDevice_bb619:                     ; preds = %DiskPerfRegisterDevice_bb618
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfRegisterDevice_KeWaitForSingleObject.exit35: ; preds = %DiskPerfRegisterDevice_bb615, %DiskPerfRegisterDevice_bb617, %DiskPerfRegisterDevice_bb618
  %"1554" = call i32 @__VERIFIER_nondet_int() #4
  br label %DiskPerfRegisterDevice_bb620

DiskPerfRegisterDevice_bb620:                     ; preds = %DiskPerfRegisterDevice_KeWaitForSingleObject.exit35, %DiskPerfRegisterDevice_IofCallDriver.exit32
  %status.4 = phi i32 [ %"1275", %DiskPerfRegisterDevice_KeWaitForSingleObject.exit35 ], [ %returnVal2.0.i31, %DiskPerfRegisterDevice_IofCallDriver.exit32 ]
  %"1555" = icmp slt i32 %status.4, 0
  %"1556" = icmp eq i32 %"1277", 0
  %or.cond = or i1 %"1555", %"1556"
  br i1 %or.cond, label %DiskPerfRegisterDevice_bb621, label %DiskPerfRegisterDevice_bb624

DiskPerfRegisterDevice_bb621:                     ; preds = %DiskPerfRegisterDevice_bb620
  br label %DiskPerfRegisterDevice_bb624

DiskPerfRegisterDevice_bb622:                     ; preds = %DiskPerfRegisterDevice_bb612
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfRegisterDevice_bb623:                     ; preds = %DiskPerfRegisterDevice_bb556
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfRegisterDevice_bb624:                     ; preds = %DiskPerfRegisterDevice_bb620, %DiskPerfRegisterDevice_bb621, %DiskPerfRegisterDevice_bb536
  %status.5 = phi i32 [ %status.0, %DiskPerfRegisterDevice_bb536 ], [ %status.4, %DiskPerfRegisterDevice_bb621 ], [ %status.4, %DiskPerfRegisterDevice_bb620 ]
  br label %DiskPerfRegisterDevice_bb626

DiskPerfRegisterDevice_bb625:                     ; preds = %DiskPerfRegisterDevice_bb528
  call void (...)* @__VERIFIER_error() #5
  unreachable

DiskPerfRegisterDevice_bb626:                     ; preds = %DiskPerfRegisterDevice_bb594, %DiskPerfRegisterDevice_bb593, %DiskPerfRegisterDevice_bb566, %DiskPerfRegisterDevice_bb565, %DiskPerfRegisterDevice_bb538, %DiskPerfRegisterDevice_bb537, %DiskPerfRegisterDevice_bb510, %DiskPerfRegisterDevice_bb624
  %.0 = phi i32 [ %status.5, %DiskPerfRegisterDevice_bb624 ], [ -1073741670, %DiskPerfRegisterDevice_bb510 ], [ -1073741670, %DiskPerfRegisterDevice_bb537 ], [ -1073741670, %DiskPerfRegisterDevice_bb538 ], [ -1073741670, %DiskPerfRegisterDevice_bb565 ], [ -1073741670, %DiskPerfRegisterDevice_bb566 ], [ %status.3, %DiskPerfRegisterDevice_bb593 ], [ -1073741670, %DiskPerfRegisterDevice_bb594 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @stub_driver_init() #0 {
stub_driver_init_bb627:
  %"1557" = load i32* @"'NP", align 4
  store i32 %"1557", i32* @"'s", align 4
  store i32 0, i32* @"'customIrp", align 4
  %"1558" = load i32* @"'customIrp", align 4
  store i32 %"1558", i32* @"'setEventCalled", align 4
  %"1559" = load i32* @"'setEventCalled", align 4
  store i32 %"1559", i32* @"'lowerDriverReturn", align 4
  %"1560" = load i32* @"'lowerDriverReturn", align 4
  store i32 %"1560", i32* @"'compRegistered", align 4
  %"1561" = load i32* @"'compRegistered", align 4
  store i32 %"1561", i32* @"'compFptr", align 4
  %"1562" = load i32* @"'compFptr", align 4
  store i32 %"1562", i32* @"'pended", align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb628:
  %"1563" = call i32 @__VERIFIER_nondet_int()
  %"1564" = call i32 @__VERIFIER_nondet_int()
  %"1565" = call i32 @__VERIFIER_nondet_int()
  %"1566" = call i32 @__VERIFIER_nondet_int()
  %"1567" = call i32 @__VERIFIER_nondet_int()
  %"1568" = call i32 @__VERIFIER_nondet_int()
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
  store i32 0, i32* @"'routine", align 4
  store i32 0, i32* @"'pirp", align 4
  store i32 0, i32* @"'Executive", align 4
  store i32 0, i32* @"'KernelMode", align 4
  store i32 %"1566", i32* @"'pirp", align 4
  store i32 0, i32* @"'UNLOADED", align 4
  store i32 1, i32* @"'NP", align 4
  store i32 2, i32* @"'DC", align 4
  store i32 3, i32* @"'SKIP1", align 4
  store i32 4, i32* @"'SKIP2", align 4
  store i32 5, i32* @"'MPR1", align 4
  store i32 6, i32* @"'MPR3", align 4
  store i32 7, i32* @"'IPC", align 4
  %"1569" = load i32* @"'UNLOADED", align 4
  store i32 %"1569", i32* @"'s", align 4
  store i32 0, i32* @"'pended", align 4
  store i32 0, i32* @"'compFptr", align 4
  store i32 0, i32* @"'compRegistered", align 4
  store i32 0, i32* @"'lowerDriverReturn", align 4
  store i32 0, i32* @"'setEventCalled", align 4
  store i32 0, i32* @"'customIrp", align 4
  %"1570" = icmp sge i32 %"1564", 0
  br i1 %"1570", label %main_bb629, label %main_bb904

main_bb629:                                       ; preds = %main_bb628
  %"1571" = load i32* @"'NP", align 4
  store i32 %"1571", i32* @"'s", align 4
  store i32 0, i32* @"'customIrp", align 4
  %"1572" = load i32* @"'customIrp", align 4
  store i32 %"1572", i32* @"'setEventCalled", align 4
  %"1573" = load i32* @"'setEventCalled", align 4
  store i32 %"1573", i32* @"'lowerDriverReturn", align 4
  %"1574" = load i32* @"'lowerDriverReturn", align 4
  store i32 %"1574", i32* @"'compRegistered", align 4
  %"1575" = load i32* @"'compRegistered", align 4
  store i32 %"1575", i32* @"'compFptr", align 4
  %"1576" = load i32* @"'compFptr", align 4
  store i32 %"1576", i32* @"'pended", align 4
  store i32 0, i32* @"'myStatus", align 4
  %"1577" = icmp eq i32 %"1567", 0
  %. = select i1 %"1577", i32 -1073741637, i32 0
  store i32 %., i32* @"'myStatus", align 4
  %"1578" = load i32* @"'NP", align 4
  store i32 %"1578", i32* @"'s", align 4
  store i32 0, i32* @"'customIrp", align 4
  %"1579" = load i32* @"'customIrp", align 4
  store i32 %"1579", i32* @"'setEventCalled", align 4
  %"1580" = load i32* @"'setEventCalled", align 4
  store i32 %"1580", i32* @"'lowerDriverReturn", align 4
  %"1581" = load i32* @"'lowerDriverReturn", align 4
  store i32 %"1581", i32* @"'compRegistered", align 4
  %"1582" = load i32* @"'compRegistered", align 4
  store i32 %"1582", i32* @"'compFptr", align 4
  %"1583" = load i32* @"'compFptr", align 4
  store i32 %"1583", i32* @"'pended", align 4
  %"1584" = icmp slt i32 %"1564", 0
  br i1 %"1584", label %main_bb923, label %main_bb630

main_bb630:                                       ; preds = %main_bb629
  %"1585" = call i32 @__VERIFIER_nondet_int()
  %"1586" = icmp eq i32 %"1585", 0
  br i1 %"1586", label %main_bb631, label %main_bb633

main_bb631:                                       ; preds = %main_bb630
  store i32 0, i32* @"'myStatus", align 4
  %"1587" = load i32* @"'s", align 4
  %"1588" = load i32* @"'NP", align 4
  %"1589" = icmp eq i32 %"1587", %"1588"
  br i1 %"1589", label %main_DiskPerfCreate.exit, label %main_bb632

main_DiskPerfCreate.exit:                         ; preds = %main_bb631
  %"1590" = load i32* @"'DC", align 4
  store i32 %"1590", i32* @"'s", align 4
  br label %main_DiskPerfDeviceControl.exit

main_bb632:                                       ; preds = %main_bb631
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_bb633:                                       ; preds = %main_bb630
  %"1591" = call i32 @__VERIFIER_nondet_int()
  %"1592" = icmp eq i32 %"1591", 2
  br i1 %"1592", label %main_bb634, label %main_bb663

main_bb634:                                       ; preds = %main_bb633
  %"1593" = call i32 @__VERIFIER_nondet_int() #4
  %"1594" = call i32 @__VERIFIER_nondet_int() #4
  %"1595" = call i32 @__VERIFIER_nondet_int() #4
  %"1596" = call i32 @__VERIFIER_nondet_int() #4
  %"1597" = call i32 @__VERIFIER_nondet_int() #4
  %"1598" = call i32 @__VERIFIER_nondet_int() #4
  %"1599" = call i32 @__VERIFIER_nondet_int() #4
  %"1600" = call i32 @__VERIFIER_nondet_int() #4
  %"1601" = call i32 @__VERIFIER_nondet_int() #4
  %"1602" = call i32 @__VERIFIER_nondet_int() #4
  %"1603" = call i32 @__VERIFIER_nondet_int() #4
  %"1604" = icmp eq i32 %"1597", 458784
  br i1 %"1604", label %main_bb635, label %main_bb643

main_bb635:                                       ; preds = %main_bb634
  %"1605" = icmp slt i32 %"1598", %"1599"
  br i1 %"1605", label %main_bb640, label %main_bb636

main_bb636:                                       ; preds = %main_bb635
  %"1606" = icmp eq i32 %"1600", 0
  br i1 %"1606", label %main_bb637, label %main_bb639

main_bb637:                                       ; preds = %main_bb636
  store i32 -1073741823, i32* @"'myStatus", align 4
  %"1607" = load i32* @"'s", align 4
  %"1608" = load i32* @"'NP", align 4
  %"1609" = icmp eq i32 %"1607", %"1608"
  br i1 %"1609", label %main_IofCompleteRequest.exit.i, label %main_bb638

main_IofCompleteRequest.exit.i:                   ; preds = %main_bb637
  %"1610" = load i32* @"'DC", align 4
  store i32 %"1610", i32* @"'s", align 4
  br label %main_DiskPerfDeviceControl.exit

main_bb638:                                       ; preds = %main_bb637
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_bb639:                                       ; preds = %main_bb642, %main_bb636
  %i.0.i = phi i32 [ %"1616", %main_bb642 ], [ 0, %main_bb636 ]
  %"1611" = icmp sge i32 %i.0.i, %"1602"
  br i1 %"1611", label %main_bb640, label %main_bb642

main_bb640:                                       ; preds = %main_bb639, %main_bb635
  %status.0.i = phi i32 [ -1073741789, %main_bb635 ], [ 0, %main_bb639 ]
  store i32 %status.0.i, i32* @"'myStatus", align 4
  %"1612" = load i32* @"'s", align 4
  %"1613" = load i32* @"'NP", align 4
  %"1614" = icmp eq i32 %"1612", %"1613"
  br i1 %"1614", label %main_IofCompleteRequest.exit1.i, label %main_bb641

main_IofCompleteRequest.exit1.i:                  ; preds = %main_bb640
  %"1615" = load i32* @"'DC", align 4
  store i32 %"1615", i32* @"'s", align 4
  br label %main_DiskPerfDeviceControl.exit

main_bb641:                                       ; preds = %main_bb640
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_bb642:                                       ; preds = %main_bb639
  %"1616" = add nsw i32 %i.0.i, 1
  br label %main_bb639

main_bb643:                                       ; preds = %main_bb634
  %"1617" = call i32 @__VERIFIER_nondet_int() #4
  %"1618" = load i32* @"'compRegistered", align 4
  %"1619" = icmp ne i32 %"1618", 0
  br i1 %"1619", label %main_bb644, label %main_bb652

main_bb644:                                       ; preds = %main_bb643
  %"1620" = load i32* @"'routine", align 4
  %"1621" = icmp eq i32 %"1620", 0
  %"1622" = call i32 @__VERIFIER_nondet_int() #4
  br i1 %"1621", label %main_bb645, label %main_bb646

main_bb645:                                       ; preds = %main_bb644
  store i32 1, i32* @"'setEventCalled", align 4
  br label %main_DiskPerfIoCompletion.exit.i.i

main_bb646:                                       ; preds = %main_bb644
  %"1623" = call i32 @__VERIFIER_nondet_int() #4
  %"1624" = call i32 @__VERIFIER_nondet_int() #4
  %"1625" = call i32 @__VERIFIER_nondet_int() #4
  %"1626" = call i32 @__VERIFIER_nondet_int() #4
  %"1627" = call i32 @__VERIFIER_nondet_int() #4
  %"1628" = call i32 @__VERIFIER_nondet_int() #4
  %"1629" = call i32 @__VERIFIER_nondet_int() #4
  %"1630" = call i32 @__VERIFIER_nondet_int() #4
  %"1631" = call i32 @__VERIFIER_nondet_int() #4
  %"1632" = call i32 @__VERIFIER_nondet_int() #4
  %"1633" = call i32 @__VERIFIER_nondet_int() #4
  %"1634" = call i32 @__VERIFIER_nondet_int() #4
  %"1635" = call i32 @__VERIFIER_nondet_int() #4
  %"1636" = icmp ne i32 %"1634", 0
  %"1637" = icmp ne i32 %"1633", 0
  %or.cond.i.i = and i1 %"1636", %"1637"
  br i1 %or.cond.i.i, label %main_bb647, label %main_DiskPerfIoCompletion.exit.i.i

main_bb647:                                       ; preds = %main_bb646
  %"1638" = load i32* @"'pended", align 4
  %"1639" = icmp eq i32 %"1638", 0
  br i1 %"1639", label %main_bb648, label %main_bb649

main_bb648:                                       ; preds = %main_bb647
  store i32 1, i32* @"'pended", align 4
  br label %main_DiskPerfIoCompletion.exit.i.i

main_bb649:                                       ; preds = %main_bb647
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_DiskPerfIoCompletion.exit.i.i:               ; preds = %main_bb648, %main_bb646, %main_bb645
  %compRetStatus.0.i.i = phi i32 [ -1073741802, %main_bb645 ], [ 0, %main_bb646 ], [ 0, %main_bb648 ]
  %"1640" = sext i32 %compRetStatus.0.i.i to i64
  %"1641" = icmp eq i64 %"1640", -1073741802
  br i1 %"1641", label %main_bb650, label %main_bb652

main_bb650:                                       ; preds = %main_DiskPerfIoCompletion.exit.i.i
  %"1642" = load i32* @"'s", align 4
  %"1643" = load i32* @"'NP", align 4
  %"1644" = icmp eq i32 %"1642", %"1643"
  br i1 %"1644", label %main_stubMoreProcessingRequired.exit.i.i, label %main_bb651

main_stubMoreProcessingRequired.exit.i.i:         ; preds = %main_bb650
  %"1645" = load i32* @"'MPR1", align 4
  store i32 %"1645", i32* @"'s", align 4
  br label %main_bb652

main_bb651:                                       ; preds = %main_bb650
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_bb652:                                       ; preds = %main_stubMoreProcessingRequired.exit.i.i, %main_DiskPerfIoCompletion.exit.i.i, %main_bb643
  %"1646" = call i32 @__VERIFIER_nondet_int() #4
  %"1647" = icmp eq i32 %"1646", 0
  br i1 %"1647", label %main_bb654, label %main_bb653

main_bb653:                                       ; preds = %main_bb652
  %"1648" = call i32 @__VERIFIER_nondet_int() #4
  %"1649" = icmp eq i32 %"1648", 1
  %..i.i = select i1 %"1649", i32 -1073741823, i32 259
  br label %main_bb654

main_bb654:                                       ; preds = %main_bb653, %main_bb652
  %returnVal2.0.i.i = phi i32 [ 0, %main_bb652 ], [ %..i.i, %main_bb653 ]
  %"1650" = load i32* @"'s", align 4
  %"1651" = load i32* @"'NP", align 4
  %"1652" = icmp eq i32 %"1650", %"1651"
  br i1 %"1652", label %main_bb655, label %main_bb656

main_bb655:                                       ; preds = %main_bb654
  %"1653" = load i32* @"'IPC", align 4
  store i32 %"1653", i32* @"'s", align 4
  store i32 %returnVal2.0.i.i, i32* @"'lowerDriverReturn", align 4
  br label %main_DiskPerfDeviceControl.exit

main_bb656:                                       ; preds = %main_bb654
  %"1654" = load i32* @"'s", align 4
  %"1655" = load i32* @"'MPR1", align 4
  %"1656" = icmp eq i32 %"1654", %"1655"
  br i1 %"1656", label %main_bb657, label %main_bb660

main_bb657:                                       ; preds = %main_bb656
  %"1657" = icmp eq i32 %returnVal2.0.i.i, 259
  br i1 %"1657", label %main_bb658, label %main_bb659

main_bb658:                                       ; preds = %main_bb657
  %"1658" = load i32* @"'MPR3", align 4
  store i32 %"1658", i32* @"'s", align 4
  store i32 %returnVal2.0.i.i, i32* @"'lowerDriverReturn", align 4
  br label %main_DiskPerfDeviceControl.exit

main_bb659:                                       ; preds = %main_bb657
  %"1659" = load i32* @"'NP", align 4
  store i32 %"1659", i32* @"'s", align 4
  store i32 %returnVal2.0.i.i, i32* @"'lowerDriverReturn", align 4
  br label %main_DiskPerfDeviceControl.exit

main_bb660:                                       ; preds = %main_bb656
  %"1660" = load i32* @"'s", align 4
  %"1661" = load i32* @"'SKIP1", align 4
  %"1662" = icmp eq i32 %"1660", %"1661"
  br i1 %"1662", label %main_bb661, label %main_bb662

main_bb661:                                       ; preds = %main_bb660
  %"1663" = load i32* @"'SKIP2", align 4
  store i32 %"1663", i32* @"'s", align 4
  store i32 %returnVal2.0.i.i, i32* @"'lowerDriverReturn", align 4
  br label %main_DiskPerfDeviceControl.exit

main_bb662:                                       ; preds = %main_bb660
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_bb663:                                       ; preds = %main_bb633
  %"1664" = call i32 @__VERIFIER_nondet_int()
  %"1665" = icmp eq i32 %"1664", 3
  br i1 %"1665", label %main_bb664, label %main_bb859

main_bb664:                                       ; preds = %main_bb663
  %"1666" = call i32 @__VERIFIER_nondet_int() #4
  %"1667" = call i32 @__VERIFIER_nondet_int() #4
  %Pivot.i = icmp slt i32 %"1667", 2
  br i1 %Pivot.i, label %main_LeafBlock.i, label %main_LeafBlock12.i

main_LeafBlock.i:                                 ; preds = %main_bb664
  %SwitchLeaf.i = icmp eq i32 %"1667", 0
  br i1 %SwitchLeaf.i, label %main_bb665, label %main_NewDefault.i

main_bb665:                                       ; preds = %main_LeafBlock.i
  %"1668" = call i32 @__VERIFIER_nondet_int() #4
  %"1669" = call i32 @__VERIFIER_nondet_int() #4
  %"1670" = call i32 @__VERIFIER_nondet_int() #4
  %"1671" = call i32 @__VERIFIER_nondet_int() #4
  %"1672" = call i32 @__VERIFIER_nondet_int() #4
  %"1673" = call i32 @__VERIFIER_nondet_int() #4
  %"1674" = load i32* @"'s", align 4
  %"1675" = load i32* @"'NP", align 4
  %"1676" = icmp ne i32 %"1674", %"1675"
  br i1 %"1676", label %main_bb666, label %main_bb667

main_bb666:                                       ; preds = %main_bb665
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_bb667:                                       ; preds = %main_bb665
  %"1677" = load i32* @"'compRegistered", align 4
  %"1678" = icmp ne i32 %"1677", 0
  br i1 %"1678", label %main_bb668, label %main_bb669

main_bb668:                                       ; preds = %main_bb667
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_bb669:                                       ; preds = %main_bb667
  store i32 1, i32* @"'compRegistered", align 4
  store i32 0, i32* @"'routine", align 4
  %"1679" = call i32 @__VERIFIER_nondet_int() #4
  %"1680" = load i32* @"'compRegistered", align 4
  %"1681" = icmp ne i32 %"1680", 0
  br i1 %"1681", label %main_bb670, label %main_bb678

main_bb670:                                       ; preds = %main_bb669
  %"1682" = load i32* @"'routine", align 4
  %"1683" = icmp eq i32 %"1682", 0
  %"1684" = call i32 @__VERIFIER_nondet_int() #4
  br i1 %"1683", label %main_bb671, label %main_bb672

main_bb671:                                       ; preds = %main_bb670
  store i32 1, i32* @"'setEventCalled", align 4
  br label %main_DiskPerfIoCompletion.exit.i.i.i.i

main_bb672:                                       ; preds = %main_bb670
  %"1685" = call i32 @__VERIFIER_nondet_int() #4
  %"1686" = call i32 @__VERIFIER_nondet_int() #4
  %"1687" = call i32 @__VERIFIER_nondet_int() #4
  %"1688" = call i32 @__VERIFIER_nondet_int() #4
  %"1689" = call i32 @__VERIFIER_nondet_int() #4
  %"1690" = call i32 @__VERIFIER_nondet_int() #4
  %"1691" = call i32 @__VERIFIER_nondet_int() #4
  %"1692" = call i32 @__VERIFIER_nondet_int() #4
  %"1693" = call i32 @__VERIFIER_nondet_int() #4
  %"1694" = call i32 @__VERIFIER_nondet_int() #4
  %"1695" = call i32 @__VERIFIER_nondet_int() #4
  %"1696" = call i32 @__VERIFIER_nondet_int() #4
  %"1697" = call i32 @__VERIFIER_nondet_int() #4
  %"1698" = icmp ne i32 %"1696", 0
  %"1699" = icmp ne i32 %"1695", 0
  %or.cond.i.i.i.i = and i1 %"1698", %"1699"
  br i1 %or.cond.i.i.i.i, label %main_bb673, label %main_DiskPerfIoCompletion.exit.i.i.i.i

main_bb673:                                       ; preds = %main_bb672
  %"1700" = load i32* @"'pended", align 4
  %"1701" = icmp eq i32 %"1700", 0
  br i1 %"1701", label %main_bb674, label %main_bb675

main_bb674:                                       ; preds = %main_bb673
  store i32 1, i32* @"'pended", align 4
  br label %main_DiskPerfIoCompletion.exit.i.i.i.i

main_bb675:                                       ; preds = %main_bb673
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_DiskPerfIoCompletion.exit.i.i.i.i:           ; preds = %main_bb674, %main_bb672, %main_bb671
  %compRetStatus.0.i.i.i.i = phi i32 [ -1073741802, %main_bb671 ], [ 0, %main_bb672 ], [ 0, %main_bb674 ]
  %"1702" = sext i32 %compRetStatus.0.i.i.i.i to i64
  %"1703" = icmp eq i64 %"1702", -1073741802
  br i1 %"1703", label %main_bb676, label %main_bb678

main_bb676:                                       ; preds = %main_DiskPerfIoCompletion.exit.i.i.i.i
  %"1704" = load i32* @"'s", align 4
  %"1705" = load i32* @"'NP", align 4
  %"1706" = icmp eq i32 %"1704", %"1705"
  br i1 %"1706", label %main_stubMoreProcessingRequired.exit.i.i.i.i, label %main_bb677

main_stubMoreProcessingRequired.exit.i.i.i.i:     ; preds = %main_bb676
  %"1707" = load i32* @"'MPR1", align 4
  store i32 %"1707", i32* @"'s", align 4
  br label %main_bb678

main_bb677:                                       ; preds = %main_bb676
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_bb678:                                       ; preds = %main_stubMoreProcessingRequired.exit.i.i.i.i, %main_DiskPerfIoCompletion.exit.i.i.i.i, %main_bb669
  %"1708" = call i32 @__VERIFIER_nondet_int() #4
  %"1709" = icmp eq i32 %"1708", 0
  br i1 %"1709", label %main_bb680, label %main_bb679

main_bb679:                                       ; preds = %main_bb678
  %"1710" = call i32 @__VERIFIER_nondet_int() #4
  %"1711" = icmp eq i32 %"1710", 1
  %..i.i.i.i = select i1 %"1711", i32 -1073741823, i32 259
  br label %main_bb680

main_bb680:                                       ; preds = %main_bb679, %main_bb678
  %returnVal2.0.i.i.i.i = phi i32 [ 0, %main_bb678 ], [ %..i.i.i.i, %main_bb679 ]
  %"1712" = load i32* @"'s", align 4
  %"1713" = load i32* @"'NP", align 4
  %"1714" = icmp eq i32 %"1712", %"1713"
  br i1 %"1714", label %main_bb681, label %main_bb682

main_bb681:                                       ; preds = %main_bb680
  %"1715" = load i32* @"'IPC", align 4
  store i32 %"1715", i32* @"'s", align 4
  store i32 %returnVal2.0.i.i.i.i, i32* @"'lowerDriverReturn", align 4
  br label %main_IofCallDriver.exit.i.i.i

main_bb682:                                       ; preds = %main_bb680
  %"1716" = load i32* @"'s", align 4
  %"1717" = load i32* @"'MPR1", align 4
  %"1718" = icmp eq i32 %"1716", %"1717"
  br i1 %"1718", label %main_bb683, label %main_bb686

main_bb683:                                       ; preds = %main_bb682
  %"1719" = icmp eq i32 %returnVal2.0.i.i.i.i, 259
  br i1 %"1719", label %main_bb684, label %main_bb685

main_bb684:                                       ; preds = %main_bb683
  %"1720" = load i32* @"'MPR3", align 4
  store i32 %"1720", i32* @"'s", align 4
  store i32 %returnVal2.0.i.i.i.i, i32* @"'lowerDriverReturn", align 4
  br label %main_IofCallDriver.exit.i.i.i

main_bb685:                                       ; preds = %main_bb683
  %"1721" = load i32* @"'NP", align 4
  store i32 %"1721", i32* @"'s", align 4
  store i32 %returnVal2.0.i.i.i.i, i32* @"'lowerDriverReturn", align 4
  br label %main_IofCallDriver.exit.i.i.i

main_bb686:                                       ; preds = %main_bb682
  %"1722" = load i32* @"'s", align 4
  %"1723" = load i32* @"'SKIP1", align 4
  %"1724" = icmp eq i32 %"1722", %"1723"
  br i1 %"1724", label %main_bb687, label %main_bb806

main_bb687:                                       ; preds = %main_bb686
  %"1725" = load i32* @"'SKIP2", align 4
  store i32 %"1725", i32* @"'s", align 4
  store i32 %returnVal2.0.i.i.i.i, i32* @"'lowerDriverReturn", align 4
  br label %main_IofCallDriver.exit.i.i.i

main_IofCallDriver.exit.i.i.i:                    ; preds = %main_bb687, %main_bb685, %main_bb684, %main_bb681
  %"1726" = sext i32 %returnVal2.0.i.i.i.i to i64
  %"1727" = icmp eq i64 %"1726", 259
  br i1 %"1727", label %main_bb688, label %main_DiskPerfForwardIrpSynchronous.exit.i.i

main_bb688:                                       ; preds = %main_IofCallDriver.exit.i.i.i
  %"1728" = load i32* @"'s", align 4
  %"1729" = load i32* @"'MPR3", align 4
  %"1730" = icmp eq i32 %"1728", %"1729"
  %"1731" = load i32* @"'setEventCalled", align 4
  %"1732" = icmp eq i32 %"1731", 1
  %or.cond.i2.i.i.i = and i1 %"1730", %"1732"
  br i1 %or.cond.i2.i.i.i, label %main_bb689, label %main_bb690

main_bb689:                                       ; preds = %main_bb688
  %"1733" = load i32* @"'NP", align 4
  store i32 %"1733", i32* @"'s", align 4
  store i32 0, i32* @"'setEventCalled", align 4
  br label %main_KeWaitForSingleObject.exit.i.i.i

main_bb690:                                       ; preds = %main_bb688
  %"1734" = load i32* @"'customIrp", align 4
  %"1735" = icmp eq i32 %"1734", 1
  br i1 %"1735", label %main_bb691, label %main_bb692

main_bb691:                                       ; preds = %main_bb690
  %"1736" = load i32* @"'NP", align 4
  store i32 %"1736", i32* @"'s", align 4
  store i32 0, i32* @"'customIrp", align 4
  br label %main_KeWaitForSingleObject.exit.i.i.i

main_bb692:                                       ; preds = %main_bb690
  %"1737" = load i32* @"'s", align 4
  %"1738" = load i32* @"'MPR3", align 4
  %"1739" = icmp eq i32 %"1737", %"1738"
  br i1 %"1739", label %main_bb693, label %main_KeWaitForSingleObject.exit.i.i.i

main_bb693:                                       ; preds = %main_bb692
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_KeWaitForSingleObject.exit.i.i.i:            ; preds = %main_bb692, %main_bb691, %main_bb689
  %"1740" = call i32 @__VERIFIER_nondet_int() #4
  %"1741" = load i32* @"'myStatus", align 4
  br label %main_DiskPerfForwardIrpSynchronous.exit.i.i

main_DiskPerfForwardIrpSynchronous.exit.i.i:      ; preds = %main_KeWaitForSingleObject.exit.i.i.i, %main_IofCallDriver.exit.i.i.i
  %status.0.i.i.i = phi i32 [ %"1741", %main_KeWaitForSingleObject.exit.i.i.i ], [ %returnVal2.0.i.i.i.i, %main_IofCallDriver.exit.i.i.i ]
  %"1742" = call i32 @__VERIFIER_nondet_int() #4
  %"1743" = call i32 @__VERIFIER_nondet_int() #4
  %"1744" = call i32 @__VERIFIER_nondet_int() #4
  %"1745" = call i32 @__VERIFIER_nondet_int() #4
  %"1746" = call i32 @__VERIFIER_nondet_int() #4
  %"1747" = call i32 @__VERIFIER_nondet_int() #4
  %"1748" = call i32 @__VERIFIER_nondet_int() #4
  %"1749" = call i32 @__VERIFIER_nondet_int() #4
  %"1750" = call i32 @__VERIFIER_nondet_int() #4
  %"1751" = call i32 @__VERIFIER_nondet_int() #4
  %"1752" = call i32 @__VERIFIER_nondet_int() #4
  %"1753" = call i32 @__VERIFIER_nondet_int() #4
  %"1754" = call i32 @__VERIFIER_nondet_int() #4
  %"1755" = call i32 @__VERIFIER_nondet_int() #4
  store i32 1, i32* @"'customIrp", align 4
  %"1756" = call i32 @__VERIFIER_nondet_int() #4
  %"1757" = icmp eq i32 %"1756", 0
  %.0.i.i.i.i = select i1 %"1757", i32 %"1755", i32 0
  %"1758" = icmp ne i32 %.0.i.i.i.i, 0
  br i1 %"1758", label %main_bb694, label %main_DiskPerfRegisterDevice.exit.i.i

main_bb694:                                       ; preds = %main_DiskPerfForwardIrpSynchronous.exit.i.i
  %"1759" = call i32 @__VERIFIER_nondet_int() #4
  %"1760" = load i32* @"'compRegistered", align 4
  %"1761" = icmp ne i32 %"1760", 0
  br i1 %"1761", label %main_bb695, label %main_bb703

main_bb695:                                       ; preds = %main_bb694
  %"1762" = load i32* @"'routine", align 4
  %"1763" = icmp eq i32 %"1762", 0
  %"1764" = call i32 @__VERIFIER_nondet_int() #4
  br i1 %"1763", label %main_bb696, label %main_bb697

main_bb696:                                       ; preds = %main_bb695
  store i32 1, i32* @"'setEventCalled", align 4
  br label %main_DiskPerfIoCompletion.exit.i.i3.i.i

main_bb697:                                       ; preds = %main_bb695
  %"1765" = call i32 @__VERIFIER_nondet_int() #4
  %"1766" = call i32 @__VERIFIER_nondet_int() #4
  %"1767" = call i32 @__VERIFIER_nondet_int() #4
  %"1768" = call i32 @__VERIFIER_nondet_int() #4
  %"1769" = call i32 @__VERIFIER_nondet_int() #4
  %"1770" = call i32 @__VERIFIER_nondet_int() #4
  %"1771" = call i32 @__VERIFIER_nondet_int() #4
  %"1772" = call i32 @__VERIFIER_nondet_int() #4
  %"1773" = call i32 @__VERIFIER_nondet_int() #4
  %"1774" = call i32 @__VERIFIER_nondet_int() #4
  %"1775" = call i32 @__VERIFIER_nondet_int() #4
  %"1776" = call i32 @__VERIFIER_nondet_int() #4
  %"1777" = call i32 @__VERIFIER_nondet_int() #4
  %"1778" = icmp ne i32 %"1776", 0
  %"1779" = icmp ne i32 %"1775", 0
  %or.cond.i.i1.i.i = and i1 %"1778", %"1779"
  br i1 %or.cond.i.i1.i.i, label %main_bb698, label %main_DiskPerfIoCompletion.exit.i.i3.i.i

main_bb698:                                       ; preds = %main_bb697
  %"1780" = load i32* @"'pended", align 4
  %"1781" = icmp eq i32 %"1780", 0
  br i1 %"1781", label %main_bb699, label %main_bb700

main_bb699:                                       ; preds = %main_bb698
  store i32 1, i32* @"'pended", align 4
  br label %main_DiskPerfIoCompletion.exit.i.i3.i.i

main_bb700:                                       ; preds = %main_bb698
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_DiskPerfIoCompletion.exit.i.i3.i.i:          ; preds = %main_bb699, %main_bb697, %main_bb696
  %compRetStatus.0.i.i2.i.i = phi i32 [ -1073741802, %main_bb696 ], [ 0, %main_bb697 ], [ 0, %main_bb699 ]
  %"1782" = sext i32 %compRetStatus.0.i.i2.i.i to i64
  %"1783" = icmp eq i64 %"1782", -1073741802
  br i1 %"1783", label %main_bb701, label %main_bb703

main_bb701:                                       ; preds = %main_DiskPerfIoCompletion.exit.i.i3.i.i
  %"1784" = load i32* @"'s", align 4
  %"1785" = load i32* @"'NP", align 4
  %"1786" = icmp eq i32 %"1784", %"1785"
  br i1 %"1786", label %main_stubMoreProcessingRequired.exit.i.i4.i.i, label %main_bb702

main_stubMoreProcessingRequired.exit.i.i4.i.i:    ; preds = %main_bb701
  %"1787" = load i32* @"'MPR1", align 4
  store i32 %"1787", i32* @"'s", align 4
  br label %main_bb703

main_bb702:                                       ; preds = %main_bb701
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_bb703:                                       ; preds = %main_stubMoreProcessingRequired.exit.i.i4.i.i, %main_DiskPerfIoCompletion.exit.i.i3.i.i, %main_bb694
  %"1788" = call i32 @__VERIFIER_nondet_int() #4
  %"1789" = icmp eq i32 %"1788", 0
  br i1 %"1789", label %main_bb705, label %main_bb704

main_bb704:                                       ; preds = %main_bb703
  %"1790" = call i32 @__VERIFIER_nondet_int() #4
  %"1791" = icmp eq i32 %"1790", 1
  %..i.i5.i.i = select i1 %"1791", i32 -1073741823, i32 259
  br label %main_bb705

main_bb705:                                       ; preds = %main_bb704, %main_bb703
  %returnVal2.0.i.i6.i.i = phi i32 [ 0, %main_bb703 ], [ %..i.i5.i.i, %main_bb704 ]
  %"1792" = load i32* @"'s", align 4
  %"1793" = load i32* @"'NP", align 4
  %"1794" = icmp eq i32 %"1792", %"1793"
  br i1 %"1794", label %main_bb706, label %main_bb707

main_bb706:                                       ; preds = %main_bb705
  %"1795" = load i32* @"'IPC", align 4
  store i32 %"1795", i32* @"'s", align 4
  store i32 %returnVal2.0.i.i6.i.i, i32* @"'lowerDriverReturn", align 4
  br label %main_IofCallDriver.exit.i7.i.i

main_bb707:                                       ; preds = %main_bb705
  %"1796" = load i32* @"'s", align 4
  %"1797" = load i32* @"'MPR1", align 4
  %"1798" = icmp eq i32 %"1796", %"1797"
  br i1 %"1798", label %main_bb708, label %main_bb711

main_bb708:                                       ; preds = %main_bb707
  %"1799" = icmp eq i32 %returnVal2.0.i.i6.i.i, 259
  br i1 %"1799", label %main_bb709, label %main_bb710

main_bb709:                                       ; preds = %main_bb708
  %"1800" = load i32* @"'MPR3", align 4
  store i32 %"1800", i32* @"'s", align 4
  store i32 %returnVal2.0.i.i6.i.i, i32* @"'lowerDriverReturn", align 4
  br label %main_IofCallDriver.exit.i7.i.i

main_bb710:                                       ; preds = %main_bb708
  %"1801" = load i32* @"'NP", align 4
  store i32 %"1801", i32* @"'s", align 4
  store i32 %returnVal2.0.i.i6.i.i, i32* @"'lowerDriverReturn", align 4
  br label %main_IofCallDriver.exit.i7.i.i

main_bb711:                                       ; preds = %main_bb707
  %"1802" = load i32* @"'s", align 4
  %"1803" = load i32* @"'SKIP1", align 4
  %"1804" = icmp eq i32 %"1802", %"1803"
  br i1 %"1804", label %main_bb712, label %main_bb804

main_bb712:                                       ; preds = %main_bb711
  %"1805" = load i32* @"'SKIP2", align 4
  store i32 %"1805", i32* @"'s", align 4
  store i32 %returnVal2.0.i.i6.i.i, i32* @"'lowerDriverReturn", align 4
  br label %main_IofCallDriver.exit.i7.i.i

main_IofCallDriver.exit.i7.i.i:                   ; preds = %main_bb712, %main_bb710, %main_bb709, %main_bb706
  %"1806" = sext i32 %returnVal2.0.i.i6.i.i to i64
  %"1807" = icmp eq i64 %"1806", 259
  br i1 %"1807", label %main_bb713, label %main_bb719

main_bb713:                                       ; preds = %main_IofCallDriver.exit.i7.i.i
  %"1808" = load i32* @"'s", align 4
  %"1809" = load i32* @"'MPR3", align 4
  %"1810" = icmp eq i32 %"1808", %"1809"
  %"1811" = load i32* @"'setEventCalled", align 4
  %"1812" = icmp eq i32 %"1811", 1
  %or.cond.i1.i.i.i = and i1 %"1810", %"1812"
  br i1 %or.cond.i1.i.i.i, label %main_bb714, label %main_bb715

main_bb714:                                       ; preds = %main_bb713
  %"1813" = load i32* @"'NP", align 4
  store i32 %"1813", i32* @"'s", align 4
  store i32 0, i32* @"'setEventCalled", align 4
  br label %main_KeWaitForSingleObject.exit.i8.i.i

main_bb715:                                       ; preds = %main_bb713
  %"1814" = load i32* @"'customIrp", align 4
  %"1815" = icmp eq i32 %"1814", 1
  br i1 %"1815", label %main_bb716, label %main_bb717

main_bb716:                                       ; preds = %main_bb715
  %"1816" = load i32* @"'NP", align 4
  store i32 %"1816", i32* @"'s", align 4
  store i32 0, i32* @"'customIrp", align 4
  br label %main_KeWaitForSingleObject.exit.i8.i.i

main_bb717:                                       ; preds = %main_bb715
  %"1817" = load i32* @"'s", align 4
  %"1818" = load i32* @"'MPR3", align 4
  %"1819" = icmp eq i32 %"1817", %"1818"
  br i1 %"1819", label %main_bb718, label %main_KeWaitForSingleObject.exit.i8.i.i

main_bb718:                                       ; preds = %main_bb717
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_KeWaitForSingleObject.exit.i8.i.i:           ; preds = %main_bb717, %main_bb716, %main_bb714
  %"1820" = call i32 @__VERIFIER_nondet_int() #4
  br label %main_bb719

main_bb719:                                       ; preds = %main_KeWaitForSingleObject.exit.i8.i.i, %main_IofCallDriver.exit.i7.i.i
  %status.0.i9.i.i = phi i32 [ %"1745", %main_KeWaitForSingleObject.exit.i8.i.i ], [ %returnVal2.0.i.i6.i.i, %main_IofCallDriver.exit.i7.i.i ]
  %"1821" = icmp slt i32 %status.0.i9.i.i, 0
  %"1822" = icmp ne i32 %"1753", 0
  %or.cond.i.i2 = and i1 %"1821", %"1822"
  br i1 %or.cond.i.i2, label %main_bb720, label %main_DiskPerfRegisterDevice.exit.i.i

main_bb720:                                       ; preds = %main_bb719
  %"1823" = call i32 @__VERIFIER_nondet_int() #4
  store i32 1, i32* @"'customIrp", align 4
  %"1824" = call i32 @__VERIFIER_nondet_int() #4
  %"1825" = icmp eq i32 %"1824", 0
  %.0.i3.i.i.i = select i1 %"1825", i32 %"1823", i32 0
  %"1826" = icmp ne i32 %.0.i3.i.i.i, 0
  br i1 %"1826", label %main_bb721, label %main_DiskPerfRegisterDevice.exit.i.i

main_bb721:                                       ; preds = %main_bb720
  %"1827" = call i32 @__VERIFIER_nondet_int() #4
  %"1828" = load i32* @"'compRegistered", align 4
  %"1829" = icmp ne i32 %"1828", 0
  br i1 %"1829", label %main_bb722, label %main_bb730

main_bb722:                                       ; preds = %main_bb721
  %"1830" = load i32* @"'routine", align 4
  %"1831" = icmp eq i32 %"1830", 0
  %"1832" = call i32 @__VERIFIER_nondet_int() #4
  br i1 %"1831", label %main_bb723, label %main_bb724

main_bb723:                                       ; preds = %main_bb722
  store i32 1, i32* @"'setEventCalled", align 4
  br label %main_DiskPerfIoCompletion.exit.i6.i.i.i

main_bb724:                                       ; preds = %main_bb722
  %"1833" = call i32 @__VERIFIER_nondet_int() #4
  %"1834" = call i32 @__VERIFIER_nondet_int() #4
  %"1835" = call i32 @__VERIFIER_nondet_int() #4
  %"1836" = call i32 @__VERIFIER_nondet_int() #4
  %"1837" = call i32 @__VERIFIER_nondet_int() #4
  %"1838" = call i32 @__VERIFIER_nondet_int() #4
  %"1839" = call i32 @__VERIFIER_nondet_int() #4
  %"1840" = call i32 @__VERIFIER_nondet_int() #4
  %"1841" = call i32 @__VERIFIER_nondet_int() #4
  %"1842" = call i32 @__VERIFIER_nondet_int() #4
  %"1843" = call i32 @__VERIFIER_nondet_int() #4
  %"1844" = call i32 @__VERIFIER_nondet_int() #4
  %"1845" = call i32 @__VERIFIER_nondet_int() #4
  %"1846" = icmp ne i32 %"1844", 0
  %"1847" = icmp ne i32 %"1843", 0
  %or.cond.i4.i.i.i = and i1 %"1846", %"1847"
  br i1 %or.cond.i4.i.i.i, label %main_bb725, label %main_DiskPerfIoCompletion.exit.i6.i.i.i

main_bb725:                                       ; preds = %main_bb724
  %"1848" = load i32* @"'pended", align 4
  %"1849" = icmp eq i32 %"1848", 0
  br i1 %"1849", label %main_bb726, label %main_bb727

main_bb726:                                       ; preds = %main_bb725
  store i32 1, i32* @"'pended", align 4
  br label %main_DiskPerfIoCompletion.exit.i6.i.i.i

main_bb727:                                       ; preds = %main_bb725
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_DiskPerfIoCompletion.exit.i6.i.i.i:          ; preds = %main_bb726, %main_bb724, %main_bb723
  %compRetStatus.0.i5.i.i.i = phi i32 [ -1073741802, %main_bb723 ], [ 0, %main_bb724 ], [ 0, %main_bb726 ]
  %"1850" = sext i32 %compRetStatus.0.i5.i.i.i to i64
  %"1851" = icmp eq i64 %"1850", -1073741802
  br i1 %"1851", label %main_bb728, label %main_bb730

main_bb728:                                       ; preds = %main_DiskPerfIoCompletion.exit.i6.i.i.i
  %"1852" = load i32* @"'s", align 4
  %"1853" = load i32* @"'NP", align 4
  %"1854" = icmp eq i32 %"1852", %"1853"
  br i1 %"1854", label %main_stubMoreProcessingRequired.exit.i7.i.i.i, label %main_bb729

main_stubMoreProcessingRequired.exit.i7.i.i.i:    ; preds = %main_bb728
  %"1855" = load i32* @"'MPR1", align 4
  store i32 %"1855", i32* @"'s", align 4
  br label %main_bb730

main_bb729:                                       ; preds = %main_bb728
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_bb730:                                       ; preds = %main_stubMoreProcessingRequired.exit.i7.i.i.i, %main_DiskPerfIoCompletion.exit.i6.i.i.i, %main_bb721
  %"1856" = call i32 @__VERIFIER_nondet_int() #4
  %"1857" = icmp eq i32 %"1856", 0
  br i1 %"1857", label %main_bb732, label %main_bb731

main_bb731:                                       ; preds = %main_bb730
  %"1858" = call i32 @__VERIFIER_nondet_int() #4
  %"1859" = icmp eq i32 %"1858", 1
  %..i8.i.i.i = select i1 %"1859", i32 -1073741823, i32 259
  br label %main_bb732

main_bb732:                                       ; preds = %main_bb731, %main_bb730
  %returnVal2.0.i9.i.i.i = phi i32 [ 0, %main_bb730 ], [ %..i8.i.i.i, %main_bb731 ]
  %"1860" = load i32* @"'s", align 4
  %"1861" = load i32* @"'NP", align 4
  %"1862" = icmp eq i32 %"1860", %"1861"
  br i1 %"1862", label %main_bb733, label %main_bb734

main_bb733:                                       ; preds = %main_bb732
  %"1863" = load i32* @"'IPC", align 4
  store i32 %"1863", i32* @"'s", align 4
  store i32 %returnVal2.0.i9.i.i.i, i32* @"'lowerDriverReturn", align 4
  br label %main_IofCallDriver.exit10.i.i.i

main_bb734:                                       ; preds = %main_bb732
  %"1864" = load i32* @"'s", align 4
  %"1865" = load i32* @"'MPR1", align 4
  %"1866" = icmp eq i32 %"1864", %"1865"
  br i1 %"1866", label %main_bb735, label %main_bb738

main_bb735:                                       ; preds = %main_bb734
  %"1867" = icmp eq i32 %returnVal2.0.i9.i.i.i, 259
  br i1 %"1867", label %main_bb736, label %main_bb737

main_bb736:                                       ; preds = %main_bb735
  %"1868" = load i32* @"'MPR3", align 4
  store i32 %"1868", i32* @"'s", align 4
  store i32 %returnVal2.0.i9.i.i.i, i32* @"'lowerDriverReturn", align 4
  br label %main_IofCallDriver.exit10.i.i.i

main_bb737:                                       ; preds = %main_bb735
  %"1869" = load i32* @"'NP", align 4
  store i32 %"1869", i32* @"'s", align 4
  store i32 %returnVal2.0.i9.i.i.i, i32* @"'lowerDriverReturn", align 4
  br label %main_IofCallDriver.exit10.i.i.i

main_bb738:                                       ; preds = %main_bb734
  %"1870" = load i32* @"'s", align 4
  %"1871" = load i32* @"'SKIP1", align 4
  %"1872" = icmp eq i32 %"1870", %"1871"
  br i1 %"1872", label %main_bb739, label %main_bb803

main_bb739:                                       ; preds = %main_bb738
  %"1873" = load i32* @"'SKIP2", align 4
  store i32 %"1873", i32* @"'s", align 4
  store i32 %returnVal2.0.i9.i.i.i, i32* @"'lowerDriverReturn", align 4
  br label %main_IofCallDriver.exit10.i.i.i

main_IofCallDriver.exit10.i.i.i:                  ; preds = %main_bb739, %main_bb737, %main_bb736, %main_bb733
  %"1874" = sext i32 %returnVal2.0.i9.i.i.i to i64
  %"1875" = icmp eq i64 %"1874", 259
  br i1 %"1875", label %main_bb740, label %main_bb746

main_bb740:                                       ; preds = %main_IofCallDriver.exit10.i.i.i
  %"1876" = load i32* @"'s", align 4
  %"1877" = load i32* @"'MPR3", align 4
  %"1878" = icmp eq i32 %"1876", %"1877"
  %"1879" = load i32* @"'setEventCalled", align 4
  %"1880" = icmp eq i32 %"1879", 1
  %or.cond.i11.i.i.i = and i1 %"1878", %"1880"
  br i1 %or.cond.i11.i.i.i, label %main_bb741, label %main_bb742

main_bb741:                                       ; preds = %main_bb740
  %"1881" = load i32* @"'NP", align 4
  store i32 %"1881", i32* @"'s", align 4
  store i32 0, i32* @"'setEventCalled", align 4
  br label %main_KeWaitForSingleObject.exit13.i.i.i

main_bb742:                                       ; preds = %main_bb740
  %"1882" = load i32* @"'customIrp", align 4
  %"1883" = icmp eq i32 %"1882", 1
  br i1 %"1883", label %main_bb743, label %main_bb744

main_bb743:                                       ; preds = %main_bb742
  %"1884" = load i32* @"'NP", align 4
  store i32 %"1884", i32* @"'s", align 4
  store i32 0, i32* @"'customIrp", align 4
  br label %main_KeWaitForSingleObject.exit13.i.i.i

main_bb744:                                       ; preds = %main_bb742
  %"1885" = load i32* @"'s", align 4
  %"1886" = load i32* @"'MPR3", align 4
  %"1887" = icmp eq i32 %"1885", %"1886"
  br i1 %"1887", label %main_bb745, label %main_KeWaitForSingleObject.exit13.i.i.i

main_bb745:                                       ; preds = %main_bb744
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_KeWaitForSingleObject.exit13.i.i.i:          ; preds = %main_bb744, %main_bb743, %main_bb741
  %"1888" = call i32 @__VERIFIER_nondet_int() #4
  br label %main_bb746

main_bb746:                                       ; preds = %main_KeWaitForSingleObject.exit13.i.i.i, %main_IofCallDriver.exit10.i.i.i
  %status.1.i.i.i = phi i32 [ %"1745", %main_KeWaitForSingleObject.exit13.i.i.i ], [ %returnVal2.0.i9.i.i.i, %main_IofCallDriver.exit10.i.i.i ]
  %"1889" = sext i32 %status.1.i.i.i to i64
  %"1890" = icmp eq i64 %"1889", -2147483643
  br i1 %"1890", label %main_bb747, label %main_bb775

main_bb747:                                       ; preds = %main_bb746
  %"1891" = icmp ne i32 %"1753", 0
  br i1 %"1891", label %main_bb748, label %main_DiskPerfRegisterDevice.exit.i.i

main_bb748:                                       ; preds = %main_bb747
  %"1892" = call i32 @__VERIFIER_nondet_int() #4
  store i32 1, i32* @"'customIrp", align 4
  %"1893" = call i32 @__VERIFIER_nondet_int() #4
  %"1894" = icmp eq i32 %"1893", 0
  %.0.i14.i.i.i = select i1 %"1894", i32 %"1892", i32 0
  %"1895" = icmp ne i32 %.0.i14.i.i.i, 0
  br i1 %"1895", label %main_bb749, label %main_DiskPerfRegisterDevice.exit.i.i

main_bb749:                                       ; preds = %main_bb748
  %"1896" = call i32 @__VERIFIER_nondet_int() #4
  %"1897" = load i32* @"'compRegistered", align 4
  %"1898" = icmp ne i32 %"1897", 0
  br i1 %"1898", label %main_bb750, label %main_bb758

main_bb750:                                       ; preds = %main_bb749
  %"1899" = load i32* @"'routine", align 4
  %"1900" = icmp eq i32 %"1899", 0
  %"1901" = call i32 @__VERIFIER_nondet_int() #4
  br i1 %"1900", label %main_bb751, label %main_bb752

main_bb751:                                       ; preds = %main_bb750
  store i32 1, i32* @"'setEventCalled", align 4
  br label %main_DiskPerfIoCompletion.exit.i17.i.i.i

main_bb752:                                       ; preds = %main_bb750
  %"1902" = call i32 @__VERIFIER_nondet_int() #4
  %"1903" = call i32 @__VERIFIER_nondet_int() #4
  %"1904" = call i32 @__VERIFIER_nondet_int() #4
  %"1905" = call i32 @__VERIFIER_nondet_int() #4
  %"1906" = call i32 @__VERIFIER_nondet_int() #4
  %"1907" = call i32 @__VERIFIER_nondet_int() #4
  %"1908" = call i32 @__VERIFIER_nondet_int() #4
  %"1909" = call i32 @__VERIFIER_nondet_int() #4
  %"1910" = call i32 @__VERIFIER_nondet_int() #4
  %"1911" = call i32 @__VERIFIER_nondet_int() #4
  %"1912" = call i32 @__VERIFIER_nondet_int() #4
  %"1913" = call i32 @__VERIFIER_nondet_int() #4
  %"1914" = call i32 @__VERIFIER_nondet_int() #4
  %"1915" = icmp ne i32 %"1913", 0
  %"1916" = icmp ne i32 %"1912", 0
  %or.cond.i15.i.i.i = and i1 %"1915", %"1916"
  br i1 %or.cond.i15.i.i.i, label %main_bb753, label %main_DiskPerfIoCompletion.exit.i17.i.i.i

main_bb753:                                       ; preds = %main_bb752
  %"1917" = load i32* @"'pended", align 4
  %"1918" = icmp eq i32 %"1917", 0
  br i1 %"1918", label %main_bb754, label %main_bb755

main_bb754:                                       ; preds = %main_bb753
  store i32 1, i32* @"'pended", align 4
  br label %main_DiskPerfIoCompletion.exit.i17.i.i.i

main_bb755:                                       ; preds = %main_bb753
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_DiskPerfIoCompletion.exit.i17.i.i.i:         ; preds = %main_bb754, %main_bb752, %main_bb751
  %compRetStatus.0.i16.i.i.i = phi i32 [ -1073741802, %main_bb751 ], [ 0, %main_bb752 ], [ 0, %main_bb754 ]
  %"1919" = sext i32 %compRetStatus.0.i16.i.i.i to i64
  %"1920" = icmp eq i64 %"1919", -1073741802
  br i1 %"1920", label %main_bb756, label %main_bb758

main_bb756:                                       ; preds = %main_DiskPerfIoCompletion.exit.i17.i.i.i
  %"1921" = load i32* @"'s", align 4
  %"1922" = load i32* @"'NP", align 4
  %"1923" = icmp eq i32 %"1921", %"1922"
  br i1 %"1923", label %main_stubMoreProcessingRequired.exit.i18.i.i.i, label %main_bb757

main_stubMoreProcessingRequired.exit.i18.i.i.i:   ; preds = %main_bb756
  %"1924" = load i32* @"'MPR1", align 4
  store i32 %"1924", i32* @"'s", align 4
  br label %main_bb758

main_bb757:                                       ; preds = %main_bb756
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_bb758:                                       ; preds = %main_stubMoreProcessingRequired.exit.i18.i.i.i, %main_DiskPerfIoCompletion.exit.i17.i.i.i, %main_bb749
  %"1925" = call i32 @__VERIFIER_nondet_int() #4
  %"1926" = icmp eq i32 %"1925", 0
  br i1 %"1926", label %main_bb760, label %main_bb759

main_bb759:                                       ; preds = %main_bb758
  %"1927" = call i32 @__VERIFIER_nondet_int() #4
  %"1928" = icmp eq i32 %"1927", 1
  %..i19.i.i.i = select i1 %"1928", i32 -1073741823, i32 259
  br label %main_bb760

main_bb760:                                       ; preds = %main_bb759, %main_bb758
  %returnVal2.0.i20.i.i.i = phi i32 [ 0, %main_bb758 ], [ %..i19.i.i.i, %main_bb759 ]
  %"1929" = load i32* @"'s", align 4
  %"1930" = load i32* @"'NP", align 4
  %"1931" = icmp eq i32 %"1929", %"1930"
  br i1 %"1931", label %main_bb761, label %main_bb762

main_bb761:                                       ; preds = %main_bb760
  %"1932" = load i32* @"'IPC", align 4
  store i32 %"1932", i32* @"'s", align 4
  store i32 %returnVal2.0.i20.i.i.i, i32* @"'lowerDriverReturn", align 4
  br label %main_IofCallDriver.exit21.i.i.i

main_bb762:                                       ; preds = %main_bb760
  %"1933" = load i32* @"'s", align 4
  %"1934" = load i32* @"'MPR1", align 4
  %"1935" = icmp eq i32 %"1933", %"1934"
  br i1 %"1935", label %main_bb763, label %main_bb766

main_bb763:                                       ; preds = %main_bb762
  %"1936" = icmp eq i32 %returnVal2.0.i20.i.i.i, 259
  br i1 %"1936", label %main_bb764, label %main_bb765

main_bb764:                                       ; preds = %main_bb763
  %"1937" = load i32* @"'MPR3", align 4
  store i32 %"1937", i32* @"'s", align 4
  store i32 %returnVal2.0.i20.i.i.i, i32* @"'lowerDriverReturn", align 4
  br label %main_IofCallDriver.exit21.i.i.i

main_bb765:                                       ; preds = %main_bb763
  %"1938" = load i32* @"'NP", align 4
  store i32 %"1938", i32* @"'s", align 4
  store i32 %returnVal2.0.i20.i.i.i, i32* @"'lowerDriverReturn", align 4
  br label %main_IofCallDriver.exit21.i.i.i

main_bb766:                                       ; preds = %main_bb762
  %"1939" = load i32* @"'s", align 4
  %"1940" = load i32* @"'SKIP1", align 4
  %"1941" = icmp eq i32 %"1939", %"1940"
  br i1 %"1941", label %main_bb767, label %main_bb774

main_bb767:                                       ; preds = %main_bb766
  %"1942" = load i32* @"'SKIP2", align 4
  store i32 %"1942", i32* @"'s", align 4
  store i32 %returnVal2.0.i20.i.i.i, i32* @"'lowerDriverReturn", align 4
  br label %main_IofCallDriver.exit21.i.i.i

main_IofCallDriver.exit21.i.i.i:                  ; preds = %main_bb767, %main_bb765, %main_bb764, %main_bb761
  %"1943" = sext i32 %returnVal2.0.i20.i.i.i to i64
  %"1944" = icmp eq i64 %"1943", 259
  br i1 %"1944", label %main_bb768, label %main_bb775

main_bb768:                                       ; preds = %main_IofCallDriver.exit21.i.i.i
  %"1945" = load i32* @"'s", align 4
  %"1946" = load i32* @"'MPR3", align 4
  %"1947" = icmp eq i32 %"1945", %"1946"
  %"1948" = load i32* @"'setEventCalled", align 4
  %"1949" = icmp eq i32 %"1948", 1
  %or.cond.i22.i.i.i = and i1 %"1947", %"1949"
  br i1 %or.cond.i22.i.i.i, label %main_bb769, label %main_bb770

main_bb769:                                       ; preds = %main_bb768
  %"1950" = load i32* @"'NP", align 4
  store i32 %"1950", i32* @"'s", align 4
  store i32 0, i32* @"'setEventCalled", align 4
  br label %main_KeWaitForSingleObject.exit24.i.i.i

main_bb770:                                       ; preds = %main_bb768
  %"1951" = load i32* @"'customIrp", align 4
  %"1952" = icmp eq i32 %"1951", 1
  br i1 %"1952", label %main_bb771, label %main_bb772

main_bb771:                                       ; preds = %main_bb770
  %"1953" = load i32* @"'NP", align 4
  store i32 %"1953", i32* @"'s", align 4
  store i32 0, i32* @"'customIrp", align 4
  br label %main_KeWaitForSingleObject.exit24.i.i.i

main_bb772:                                       ; preds = %main_bb770
  %"1954" = load i32* @"'s", align 4
  %"1955" = load i32* @"'MPR3", align 4
  %"1956" = icmp eq i32 %"1954", %"1955"
  br i1 %"1956", label %main_bb773, label %main_KeWaitForSingleObject.exit24.i.i.i

main_bb773:                                       ; preds = %main_bb772
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_KeWaitForSingleObject.exit24.i.i.i:          ; preds = %main_bb772, %main_bb771, %main_bb769
  %"1957" = call i32 @__VERIFIER_nondet_int() #4
  br label %main_bb775

main_bb774:                                       ; preds = %main_bb766
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_bb775:                                       ; preds = %main_KeWaitForSingleObject.exit24.i.i.i, %main_IofCallDriver.exit21.i.i.i, %main_bb746
  %status.3.i.i.i = phi i32 [ %status.1.i.i.i, %main_bb746 ], [ %"1745", %main_KeWaitForSingleObject.exit24.i.i.i ], [ %returnVal2.0.i20.i.i.i, %main_IofCallDriver.exit21.i.i.i ]
  %"1958" = icmp slt i32 %status.3.i.i.i, 0
  br i1 %"1958", label %main_DiskPerfRegisterDevice.exit.i.i, label %main_bb776

main_bb776:                                       ; preds = %main_bb775
  %"1959" = call i32 @__VERIFIER_nondet_int() #4
  store i32 1, i32* @"'customIrp", align 4
  %"1960" = call i32 @__VERIFIER_nondet_int() #4
  %"1961" = icmp eq i32 %"1960", 0
  %.0.i25.i.i.i = select i1 %"1961", i32 %"1959", i32 0
  %"1962" = icmp ne i32 %.0.i25.i.i.i, 0
  br i1 %"1962", label %main_bb777, label %main_DiskPerfRegisterDevice.exit.i.i

main_bb777:                                       ; preds = %main_bb776
  %"1963" = call i32 @__VERIFIER_nondet_int() #4
  %"1964" = load i32* @"'compRegistered", align 4
  %"1965" = icmp ne i32 %"1964", 0
  br i1 %"1965", label %main_bb778, label %main_bb786

main_bb778:                                       ; preds = %main_bb777
  %"1966" = load i32* @"'routine", align 4
  %"1967" = icmp eq i32 %"1966", 0
  %"1968" = call i32 @__VERIFIER_nondet_int() #4
  br i1 %"1967", label %main_bb779, label %main_bb780

main_bb779:                                       ; preds = %main_bb778
  store i32 1, i32* @"'setEventCalled", align 4
  br label %main_DiskPerfIoCompletion.exit.i28.i.i.i

main_bb780:                                       ; preds = %main_bb778
  %"1969" = call i32 @__VERIFIER_nondet_int() #4
  %"1970" = call i32 @__VERIFIER_nondet_int() #4
  %"1971" = call i32 @__VERIFIER_nondet_int() #4
  %"1972" = call i32 @__VERIFIER_nondet_int() #4
  %"1973" = call i32 @__VERIFIER_nondet_int() #4
  %"1974" = call i32 @__VERIFIER_nondet_int() #4
  %"1975" = call i32 @__VERIFIER_nondet_int() #4
  %"1976" = call i32 @__VERIFIER_nondet_int() #4
  %"1977" = call i32 @__VERIFIER_nondet_int() #4
  %"1978" = call i32 @__VERIFIER_nondet_int() #4
  %"1979" = call i32 @__VERIFIER_nondet_int() #4
  %"1980" = call i32 @__VERIFIER_nondet_int() #4
  %"1981" = call i32 @__VERIFIER_nondet_int() #4
  %"1982" = icmp ne i32 %"1980", 0
  %"1983" = icmp ne i32 %"1979", 0
  %or.cond.i26.i.i.i = and i1 %"1982", %"1983"
  br i1 %or.cond.i26.i.i.i, label %main_bb781, label %main_DiskPerfIoCompletion.exit.i28.i.i.i

main_bb781:                                       ; preds = %main_bb780
  %"1984" = load i32* @"'pended", align 4
  %"1985" = icmp eq i32 %"1984", 0
  br i1 %"1985", label %main_bb782, label %main_bb783

main_bb782:                                       ; preds = %main_bb781
  store i32 1, i32* @"'pended", align 4
  br label %main_DiskPerfIoCompletion.exit.i28.i.i.i

main_bb783:                                       ; preds = %main_bb781
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_DiskPerfIoCompletion.exit.i28.i.i.i:         ; preds = %main_bb782, %main_bb780, %main_bb779
  %compRetStatus.0.i27.i.i.i = phi i32 [ -1073741802, %main_bb779 ], [ 0, %main_bb780 ], [ 0, %main_bb782 ]
  %"1986" = sext i32 %compRetStatus.0.i27.i.i.i to i64
  %"1987" = icmp eq i64 %"1986", -1073741802
  br i1 %"1987", label %main_bb784, label %main_bb786

main_bb784:                                       ; preds = %main_DiskPerfIoCompletion.exit.i28.i.i.i
  %"1988" = load i32* @"'s", align 4
  %"1989" = load i32* @"'NP", align 4
  %"1990" = icmp eq i32 %"1988", %"1989"
  br i1 %"1990", label %main_stubMoreProcessingRequired.exit.i29.i.i.i, label %main_bb785

main_stubMoreProcessingRequired.exit.i29.i.i.i:   ; preds = %main_bb784
  %"1991" = load i32* @"'MPR1", align 4
  store i32 %"1991", i32* @"'s", align 4
  br label %main_bb786

main_bb785:                                       ; preds = %main_bb784
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_bb786:                                       ; preds = %main_stubMoreProcessingRequired.exit.i29.i.i.i, %main_DiskPerfIoCompletion.exit.i28.i.i.i, %main_bb777
  %"1992" = call i32 @__VERIFIER_nondet_int() #4
  %"1993" = icmp eq i32 %"1992", 0
  br i1 %"1993", label %main_bb788, label %main_bb787

main_bb787:                                       ; preds = %main_bb786
  %"1994" = call i32 @__VERIFIER_nondet_int() #4
  %"1995" = icmp eq i32 %"1994", 1
  %..i30.i.i.i = select i1 %"1995", i32 -1073741823, i32 259
  br label %main_bb788

main_bb788:                                       ; preds = %main_bb787, %main_bb786
  %returnVal2.0.i31.i.i.i = phi i32 [ 0, %main_bb786 ], [ %..i30.i.i.i, %main_bb787 ]
  %"1996" = load i32* @"'s", align 4
  %"1997" = load i32* @"'NP", align 4
  %"1998" = icmp eq i32 %"1996", %"1997"
  br i1 %"1998", label %main_bb789, label %main_bb790

main_bb789:                                       ; preds = %main_bb788
  %"1999" = load i32* @"'IPC", align 4
  store i32 %"1999", i32* @"'s", align 4
  store i32 %returnVal2.0.i31.i.i.i, i32* @"'lowerDriverReturn", align 4
  br label %main_IofCallDriver.exit32.i.i.i

main_bb790:                                       ; preds = %main_bb788
  %"2000" = load i32* @"'s", align 4
  %"2001" = load i32* @"'MPR1", align 4
  %"2002" = icmp eq i32 %"2000", %"2001"
  br i1 %"2002", label %main_bb791, label %main_bb794

main_bb791:                                       ; preds = %main_bb790
  %"2003" = icmp eq i32 %returnVal2.0.i31.i.i.i, 259
  br i1 %"2003", label %main_bb792, label %main_bb793

main_bb792:                                       ; preds = %main_bb791
  %"2004" = load i32* @"'MPR3", align 4
  store i32 %"2004", i32* @"'s", align 4
  store i32 %returnVal2.0.i31.i.i.i, i32* @"'lowerDriverReturn", align 4
  br label %main_IofCallDriver.exit32.i.i.i

main_bb793:                                       ; preds = %main_bb791
  %"2005" = load i32* @"'NP", align 4
  store i32 %"2005", i32* @"'s", align 4
  store i32 %returnVal2.0.i31.i.i.i, i32* @"'lowerDriverReturn", align 4
  br label %main_IofCallDriver.exit32.i.i.i

main_bb794:                                       ; preds = %main_bb790
  %"2006" = load i32* @"'s", align 4
  %"2007" = load i32* @"'SKIP1", align 4
  %"2008" = icmp eq i32 %"2006", %"2007"
  br i1 %"2008", label %main_bb795, label %main_bb802

main_bb795:                                       ; preds = %main_bb794
  %"2009" = load i32* @"'SKIP2", align 4
  store i32 %"2009", i32* @"'s", align 4
  store i32 %returnVal2.0.i31.i.i.i, i32* @"'lowerDriverReturn", align 4
  br label %main_IofCallDriver.exit32.i.i.i

main_IofCallDriver.exit32.i.i.i:                  ; preds = %main_bb795, %main_bb793, %main_bb792, %main_bb789
  %"2010" = sext i32 %returnVal2.0.i31.i.i.i to i64
  %"2011" = icmp eq i64 %"2010", 259
  br i1 %"2011", label %main_bb796, label %main_DiskPerfRegisterDevice.exit.i.i

main_bb796:                                       ; preds = %main_IofCallDriver.exit32.i.i.i
  %"2012" = load i32* @"'s", align 4
  %"2013" = load i32* @"'MPR3", align 4
  %"2014" = icmp eq i32 %"2012", %"2013"
  %"2015" = load i32* @"'setEventCalled", align 4
  %"2016" = icmp eq i32 %"2015", 1
  %or.cond.i33.i.i.i = and i1 %"2014", %"2016"
  br i1 %or.cond.i33.i.i.i, label %main_bb797, label %main_bb798

main_bb797:                                       ; preds = %main_bb796
  %"2017" = load i32* @"'NP", align 4
  store i32 %"2017", i32* @"'s", align 4
  store i32 0, i32* @"'setEventCalled", align 4
  br label %main_KeWaitForSingleObject.exit35.i.i.i

main_bb798:                                       ; preds = %main_bb796
  %"2018" = load i32* @"'customIrp", align 4
  %"2019" = icmp eq i32 %"2018", 1
  br i1 %"2019", label %main_bb799, label %main_bb800

main_bb799:                                       ; preds = %main_bb798
  %"2020" = load i32* @"'NP", align 4
  store i32 %"2020", i32* @"'s", align 4
  store i32 0, i32* @"'customIrp", align 4
  br label %main_KeWaitForSingleObject.exit35.i.i.i

main_bb800:                                       ; preds = %main_bb798
  %"2021" = load i32* @"'s", align 4
  %"2022" = load i32* @"'MPR3", align 4
  %"2023" = icmp eq i32 %"2021", %"2022"
  br i1 %"2023", label %main_bb801, label %main_KeWaitForSingleObject.exit35.i.i.i

main_bb801:                                       ; preds = %main_bb800
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_KeWaitForSingleObject.exit35.i.i.i:          ; preds = %main_bb800, %main_bb799, %main_bb797
  %"2024" = call i32 @__VERIFIER_nondet_int() #4
  br label %main_DiskPerfRegisterDevice.exit.i.i

main_bb802:                                       ; preds = %main_bb794
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_bb803:                                       ; preds = %main_bb738
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_bb804:                                       ; preds = %main_bb711
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_DiskPerfRegisterDevice.exit.i.i:             ; preds = %main_KeWaitForSingleObject.exit35.i.i.i, %main_IofCallDriver.exit32.i.i.i, %main_bb776, %main_bb775, %main_bb748, %main_bb747, %main_bb720, %main_bb719, %main_DiskPerfForwardIrpSynchronous.exit.i.i
  store i32 %status.0.i.i.i, i32* @"'myStatus", align 4
  %"2025" = load i32* @"'s", align 4
  %"2026" = load i32* @"'NP", align 4
  %"2027" = icmp eq i32 %"2025", %"2026"
  br i1 %"2027", label %main_DiskPerfStartDevice.exit.i, label %main_bb805

main_DiskPerfStartDevice.exit.i:                  ; preds = %main_DiskPerfRegisterDevice.exit.i.i
  %"2028" = load i32* @"'DC", align 4
  store i32 %"2028", i32* @"'s", align 4
  br label %main_DiskPerfDeviceControl.exit

main_bb805:                                       ; preds = %main_DiskPerfRegisterDevice.exit.i.i
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_bb806:                                       ; preds = %main_bb686
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_LeafBlock12.i:                               ; preds = %main_bb664
  %SwitchLeaf13.i = icmp eq i32 %"1667", 2
  br i1 %SwitchLeaf13.i, label %main_bb807, label %main_NewDefault.i

main_bb807:                                       ; preds = %main_LeafBlock12.i
  %"2029" = call i32 @__VERIFIER_nondet_int() #4
  %"2030" = call i32 @__VERIFIER_nondet_int() #4
  %"2031" = call i32 @__VERIFIER_nondet_int() #4
  %"2032" = call i32 @__VERIFIER_nondet_int() #4
  %"2033" = call i32 @__VERIFIER_nondet_int() #4
  %"2034" = call i32 @__VERIFIER_nondet_int() #4
  %"2035" = load i32* @"'s", align 4
  %"2036" = load i32* @"'NP", align 4
  %"2037" = icmp ne i32 %"2035", %"2036"
  br i1 %"2037", label %main_bb808, label %main_bb809

main_bb808:                                       ; preds = %main_bb807
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_bb809:                                       ; preds = %main_bb807
  %"2038" = load i32* @"'compRegistered", align 4
  %"2039" = icmp ne i32 %"2038", 0
  br i1 %"2039", label %main_bb810, label %main_bb811

main_bb810:                                       ; preds = %main_bb809
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_bb811:                                       ; preds = %main_bb809
  store i32 1, i32* @"'compRegistered", align 4
  store i32 0, i32* @"'routine", align 4
  %"2040" = call i32 @__VERIFIER_nondet_int() #4
  %"2041" = load i32* @"'compRegistered", align 4
  %"2042" = icmp ne i32 %"2041", 0
  br i1 %"2042", label %main_bb812, label %main_bb820

main_bb812:                                       ; preds = %main_bb811
  %"2043" = load i32* @"'routine", align 4
  %"2044" = icmp eq i32 %"2043", 0
  %"2045" = call i32 @__VERIFIER_nondet_int() #4
  br i1 %"2044", label %main_bb813, label %main_bb814

main_bb813:                                       ; preds = %main_bb812
  store i32 1, i32* @"'setEventCalled", align 4
  br label %main_DiskPerfIoCompletion.exit.i.i.i3.i

main_bb814:                                       ; preds = %main_bb812
  %"2046" = call i32 @__VERIFIER_nondet_int() #4
  %"2047" = call i32 @__VERIFIER_nondet_int() #4
  %"2048" = call i32 @__VERIFIER_nondet_int() #4
  %"2049" = call i32 @__VERIFIER_nondet_int() #4
  %"2050" = call i32 @__VERIFIER_nondet_int() #4
  %"2051" = call i32 @__VERIFIER_nondet_int() #4
  %"2052" = call i32 @__VERIFIER_nondet_int() #4
  %"2053" = call i32 @__VERIFIER_nondet_int() #4
  %"2054" = call i32 @__VERIFIER_nondet_int() #4
  %"2055" = call i32 @__VERIFIER_nondet_int() #4
  %"2056" = call i32 @__VERIFIER_nondet_int() #4
  %"2057" = call i32 @__VERIFIER_nondet_int() #4
  %"2058" = call i32 @__VERIFIER_nondet_int() #4
  %"2059" = icmp ne i32 %"2057", 0
  %"2060" = icmp ne i32 %"2056", 0
  %or.cond.i.i.i1.i = and i1 %"2059", %"2060"
  br i1 %or.cond.i.i.i1.i, label %main_bb815, label %main_DiskPerfIoCompletion.exit.i.i.i3.i

main_bb815:                                       ; preds = %main_bb814
  %"2061" = load i32* @"'pended", align 4
  %"2062" = icmp eq i32 %"2061", 0
  br i1 %"2062", label %main_bb816, label %main_bb817

main_bb816:                                       ; preds = %main_bb815
  store i32 1, i32* @"'pended", align 4
  br label %main_DiskPerfIoCompletion.exit.i.i.i3.i

main_bb817:                                       ; preds = %main_bb815
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_DiskPerfIoCompletion.exit.i.i.i3.i:          ; preds = %main_bb816, %main_bb814, %main_bb813
  %compRetStatus.0.i.i.i2.i = phi i32 [ -1073741802, %main_bb813 ], [ 0, %main_bb814 ], [ 0, %main_bb816 ]
  %"2063" = sext i32 %compRetStatus.0.i.i.i2.i to i64
  %"2064" = icmp eq i64 %"2063", -1073741802
  br i1 %"2064", label %main_bb818, label %main_bb820

main_bb818:                                       ; preds = %main_DiskPerfIoCompletion.exit.i.i.i3.i
  %"2065" = load i32* @"'s", align 4
  %"2066" = load i32* @"'NP", align 4
  %"2067" = icmp eq i32 %"2065", %"2066"
  br i1 %"2067", label %main_stubMoreProcessingRequired.exit.i.i.i4.i, label %main_bb819

main_stubMoreProcessingRequired.exit.i.i.i4.i:    ; preds = %main_bb818
  %"2068" = load i32* @"'MPR1", align 4
  store i32 %"2068", i32* @"'s", align 4
  br label %main_bb820

main_bb819:                                       ; preds = %main_bb818
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_bb820:                                       ; preds = %main_stubMoreProcessingRequired.exit.i.i.i4.i, %main_DiskPerfIoCompletion.exit.i.i.i3.i, %main_bb811
  %"2069" = call i32 @__VERIFIER_nondet_int() #4
  %"2070" = icmp eq i32 %"2069", 0
  br i1 %"2070", label %main_bb822, label %main_bb821

main_bb821:                                       ; preds = %main_bb820
  %"2071" = call i32 @__VERIFIER_nondet_int() #4
  %"2072" = icmp eq i32 %"2071", 1
  %..i.i.i5.i = select i1 %"2072", i32 -1073741823, i32 259
  br label %main_bb822

main_bb822:                                       ; preds = %main_bb821, %main_bb820
  %returnVal2.0.i.i.i6.i = phi i32 [ 0, %main_bb820 ], [ %..i.i.i5.i, %main_bb821 ]
  %"2073" = load i32* @"'s", align 4
  %"2074" = load i32* @"'NP", align 4
  %"2075" = icmp eq i32 %"2073", %"2074"
  br i1 %"2075", label %main_bb823, label %main_bb824

main_bb823:                                       ; preds = %main_bb822
  %"2076" = load i32* @"'IPC", align 4
  store i32 %"2076", i32* @"'s", align 4
  store i32 %returnVal2.0.i.i.i6.i, i32* @"'lowerDriverReturn", align 4
  br label %main_IofCallDriver.exit.i.i7.i

main_bb824:                                       ; preds = %main_bb822
  %"2077" = load i32* @"'s", align 4
  %"2078" = load i32* @"'MPR1", align 4
  %"2079" = icmp eq i32 %"2077", %"2078"
  br i1 %"2079", label %main_bb825, label %main_bb828

main_bb825:                                       ; preds = %main_bb824
  %"2080" = icmp eq i32 %returnVal2.0.i.i.i6.i, 259
  br i1 %"2080", label %main_bb826, label %main_bb827

main_bb826:                                       ; preds = %main_bb825
  %"2081" = load i32* @"'MPR3", align 4
  store i32 %"2081", i32* @"'s", align 4
  store i32 %returnVal2.0.i.i.i6.i, i32* @"'lowerDriverReturn", align 4
  br label %main_IofCallDriver.exit.i.i7.i

main_bb827:                                       ; preds = %main_bb825
  %"2082" = load i32* @"'NP", align 4
  store i32 %"2082", i32* @"'s", align 4
  store i32 %returnVal2.0.i.i.i6.i, i32* @"'lowerDriverReturn", align 4
  br label %main_IofCallDriver.exit.i.i7.i

main_bb828:                                       ; preds = %main_bb824
  %"2083" = load i32* @"'s", align 4
  %"2084" = load i32* @"'SKIP1", align 4
  %"2085" = icmp eq i32 %"2083", %"2084"
  br i1 %"2085", label %main_bb829, label %main_bb837

main_bb829:                                       ; preds = %main_bb828
  %"2086" = load i32* @"'SKIP2", align 4
  store i32 %"2086", i32* @"'s", align 4
  store i32 %returnVal2.0.i.i.i6.i, i32* @"'lowerDriverReturn", align 4
  br label %main_IofCallDriver.exit.i.i7.i

main_IofCallDriver.exit.i.i7.i:                   ; preds = %main_bb829, %main_bb827, %main_bb826, %main_bb823
  %"2087" = sext i32 %returnVal2.0.i.i.i6.i to i64
  %"2088" = icmp eq i64 %"2087", 259
  br i1 %"2088", label %main_bb830, label %main_DiskPerfForwardIrpSynchronous.exit.i11.i

main_bb830:                                       ; preds = %main_IofCallDriver.exit.i.i7.i
  %"2089" = load i32* @"'s", align 4
  %"2090" = load i32* @"'MPR3", align 4
  %"2091" = icmp eq i32 %"2089", %"2090"
  %"2092" = load i32* @"'setEventCalled", align 4
  %"2093" = icmp eq i32 %"2092", 1
  %or.cond.i2.i.i8.i = and i1 %"2091", %"2093"
  br i1 %or.cond.i2.i.i8.i, label %main_bb831, label %main_bb832

main_bb831:                                       ; preds = %main_bb830
  %"2094" = load i32* @"'NP", align 4
  store i32 %"2094", i32* @"'s", align 4
  store i32 0, i32* @"'setEventCalled", align 4
  br label %main_KeWaitForSingleObject.exit.i.i9.i

main_bb832:                                       ; preds = %main_bb830
  %"2095" = load i32* @"'customIrp", align 4
  %"2096" = icmp eq i32 %"2095", 1
  br i1 %"2096", label %main_bb833, label %main_bb834

main_bb833:                                       ; preds = %main_bb832
  %"2097" = load i32* @"'NP", align 4
  store i32 %"2097", i32* @"'s", align 4
  store i32 0, i32* @"'customIrp", align 4
  br label %main_KeWaitForSingleObject.exit.i.i9.i

main_bb834:                                       ; preds = %main_bb832
  %"2098" = load i32* @"'s", align 4
  %"2099" = load i32* @"'MPR3", align 4
  %"2100" = icmp eq i32 %"2098", %"2099"
  br i1 %"2100", label %main_bb835, label %main_KeWaitForSingleObject.exit.i.i9.i

main_bb835:                                       ; preds = %main_bb834
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_KeWaitForSingleObject.exit.i.i9.i:           ; preds = %main_bb834, %main_bb833, %main_bb831
  %"2101" = call i32 @__VERIFIER_nondet_int() #4
  %"2102" = load i32* @"'myStatus", align 4
  br label %main_DiskPerfForwardIrpSynchronous.exit.i11.i

main_DiskPerfForwardIrpSynchronous.exit.i11.i:    ; preds = %main_KeWaitForSingleObject.exit.i.i9.i, %main_IofCallDriver.exit.i.i7.i
  %status.0.i.i10.i = phi i32 [ %"2102", %main_KeWaitForSingleObject.exit.i.i9.i ], [ %returnVal2.0.i.i.i6.i, %main_IofCallDriver.exit.i.i7.i ]
  store i32 %status.0.i.i10.i, i32* @"'myStatus", align 4
  %"2103" = load i32* @"'s", align 4
  %"2104" = load i32* @"'NP", align 4
  %"2105" = icmp eq i32 %"2103", %"2104"
  br i1 %"2105", label %main_DiskPerfRemoveDevice.exit.i, label %main_bb836

main_DiskPerfRemoveDevice.exit.i:                 ; preds = %main_DiskPerfForwardIrpSynchronous.exit.i11.i
  %"2106" = load i32* @"'DC", align 4
  store i32 %"2106", i32* @"'s", align 4
  br label %main_DiskPerfDeviceControl.exit

main_bb836:                                       ; preds = %main_DiskPerfForwardIrpSynchronous.exit.i11.i
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_bb837:                                       ; preds = %main_bb828
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_NewDefault.i:                                ; preds = %main_LeafBlock12.i, %main_LeafBlock.i
  %"2107" = call i32 @__VERIFIER_nondet_int() #4
  %"2108" = call i32 @__VERIFIER_nondet_int() #4
  %"2109" = call i32 @__VERIFIER_nondet_int() #4
  %"2110" = call i32 @__VERIFIER_nondet_int() #4
  %"2111" = load i32* @"'s", align 4
  %"2112" = load i32* @"'NP", align 4
  %"2113" = icmp eq i32 %"2111", %"2112"
  br i1 %"2113", label %main_bb838, label %main_bb858

main_bb838:                                       ; preds = %main_NewDefault.i
  %"2114" = load i32* @"'SKIP1", align 4
  store i32 %"2114", i32* @"'s", align 4
  %"2115" = call i32 @__VERIFIER_nondet_int() #4
  %"2116" = load i32* @"'compRegistered", align 4
  %"2117" = icmp ne i32 %"2116", 0
  br i1 %"2117", label %main_bb839, label %main_bb847

main_bb839:                                       ; preds = %main_bb838
  %"2118" = load i32* @"'routine", align 4
  %"2119" = icmp eq i32 %"2118", 0
  %"2120" = call i32 @__VERIFIER_nondet_int() #4
  br i1 %"2119", label %main_bb840, label %main_bb841

main_bb840:                                       ; preds = %main_bb839
  store i32 1, i32* @"'setEventCalled", align 4
  br label %main_DiskPerfIoCompletion.exit.i.i.i

main_bb841:                                       ; preds = %main_bb839
  %"2121" = call i32 @__VERIFIER_nondet_int() #4
  %"2122" = call i32 @__VERIFIER_nondet_int() #4
  %"2123" = call i32 @__VERIFIER_nondet_int() #4
  %"2124" = call i32 @__VERIFIER_nondet_int() #4
  %"2125" = call i32 @__VERIFIER_nondet_int() #4
  %"2126" = call i32 @__VERIFIER_nondet_int() #4
  %"2127" = call i32 @__VERIFIER_nondet_int() #4
  %"2128" = call i32 @__VERIFIER_nondet_int() #4
  %"2129" = call i32 @__VERIFIER_nondet_int() #4
  %"2130" = call i32 @__VERIFIER_nondet_int() #4
  %"2131" = call i32 @__VERIFIER_nondet_int() #4
  %"2132" = call i32 @__VERIFIER_nondet_int() #4
  %"2133" = call i32 @__VERIFIER_nondet_int() #4
  %"2134" = icmp ne i32 %"2132", 0
  %"2135" = icmp ne i32 %"2131", 0
  %or.cond.i.i.i = and i1 %"2134", %"2135"
  br i1 %or.cond.i.i.i, label %main_bb842, label %main_DiskPerfIoCompletion.exit.i.i.i

main_bb842:                                       ; preds = %main_bb841
  %"2136" = load i32* @"'pended", align 4
  %"2137" = icmp eq i32 %"2136", 0
  br i1 %"2137", label %main_bb843, label %main_bb844

main_bb843:                                       ; preds = %main_bb842
  store i32 1, i32* @"'pended", align 4
  br label %main_DiskPerfIoCompletion.exit.i.i.i

main_bb844:                                       ; preds = %main_bb842
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_DiskPerfIoCompletion.exit.i.i.i:             ; preds = %main_bb843, %main_bb841, %main_bb840
  %compRetStatus.0.i.i.i = phi i32 [ -1073741802, %main_bb840 ], [ 0, %main_bb841 ], [ 0, %main_bb843 ]
  %"2138" = sext i32 %compRetStatus.0.i.i.i to i64
  %"2139" = icmp eq i64 %"2138", -1073741802
  br i1 %"2139", label %main_bb845, label %main_bb847

main_bb845:                                       ; preds = %main_DiskPerfIoCompletion.exit.i.i.i
  %"2140" = load i32* @"'s", align 4
  %"2141" = load i32* @"'NP", align 4
  %"2142" = icmp eq i32 %"2140", %"2141"
  br i1 %"2142", label %main_stubMoreProcessingRequired.exit.i.i.i, label %main_bb846

main_stubMoreProcessingRequired.exit.i.i.i:       ; preds = %main_bb845
  %"2143" = load i32* @"'MPR1", align 4
  store i32 %"2143", i32* @"'s", align 4
  br label %main_bb847

main_bb846:                                       ; preds = %main_bb845
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_bb847:                                       ; preds = %main_stubMoreProcessingRequired.exit.i.i.i, %main_DiskPerfIoCompletion.exit.i.i.i, %main_bb838
  %"2144" = call i32 @__VERIFIER_nondet_int() #4
  %"2145" = icmp eq i32 %"2144", 0
  br i1 %"2145", label %main_bb849, label %main_bb848

main_bb848:                                       ; preds = %main_bb847
  %"2146" = call i32 @__VERIFIER_nondet_int() #4
  %"2147" = icmp eq i32 %"2146", 1
  %..i.i.i = select i1 %"2147", i32 -1073741823, i32 259
  br label %main_bb849

main_bb849:                                       ; preds = %main_bb848, %main_bb847
  %returnVal2.0.i.i.i = phi i32 [ 0, %main_bb847 ], [ %..i.i.i, %main_bb848 ]
  %"2148" = load i32* @"'s", align 4
  %"2149" = load i32* @"'NP", align 4
  %"2150" = icmp eq i32 %"2148", %"2149"
  br i1 %"2150", label %main_bb850, label %main_bb851

main_bb850:                                       ; preds = %main_bb849
  %"2151" = load i32* @"'IPC", align 4
  store i32 %"2151", i32* @"'s", align 4
  store i32 %returnVal2.0.i.i.i, i32* @"'lowerDriverReturn", align 4
  br label %main_DiskPerfDeviceControl.exit

main_bb851:                                       ; preds = %main_bb849
  %"2152" = load i32* @"'s", align 4
  %"2153" = load i32* @"'MPR1", align 4
  %"2154" = icmp eq i32 %"2152", %"2153"
  br i1 %"2154", label %main_bb852, label %main_bb855

main_bb852:                                       ; preds = %main_bb851
  %"2155" = icmp eq i32 %returnVal2.0.i.i.i, 259
  br i1 %"2155", label %main_bb853, label %main_bb854

main_bb853:                                       ; preds = %main_bb852
  %"2156" = load i32* @"'MPR3", align 4
  store i32 %"2156", i32* @"'s", align 4
  store i32 %returnVal2.0.i.i.i, i32* @"'lowerDriverReturn", align 4
  br label %main_DiskPerfDeviceControl.exit

main_bb854:                                       ; preds = %main_bb852
  %"2157" = load i32* @"'NP", align 4
  store i32 %"2157", i32* @"'s", align 4
  store i32 %returnVal2.0.i.i.i, i32* @"'lowerDriverReturn", align 4
  br label %main_DiskPerfDeviceControl.exit

main_bb855:                                       ; preds = %main_bb851
  %"2158" = load i32* @"'s", align 4
  %"2159" = load i32* @"'SKIP1", align 4
  %"2160" = icmp eq i32 %"2158", %"2159"
  br i1 %"2160", label %main_bb856, label %main_bb857

main_bb856:                                       ; preds = %main_bb855
  %"2161" = load i32* @"'SKIP2", align 4
  store i32 %"2161", i32* @"'s", align 4
  store i32 %returnVal2.0.i.i.i, i32* @"'lowerDriverReturn", align 4
  br label %main_DiskPerfDeviceControl.exit

main_bb857:                                       ; preds = %main_bb855
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_bb858:                                       ; preds = %main_NewDefault.i
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_bb859:                                       ; preds = %main_bb663
  %"2162" = call i32 @__VERIFIER_nondet_int()
  %"2163" = icmp eq i32 %"2162", 4
  br i1 %"2163", label %main_bb860, label %main_bb883

main_bb860:                                       ; preds = %main_bb859
  %"2164" = call i32 @__VERIFIER_nondet_int() #4
  %"2165" = call i32 @__VERIFIER_nondet_int() #4
  %"2166" = call i32 @__VERIFIER_nondet_int() #4
  %"2167" = call i32 @__VERIFIER_nondet_int() #4
  %"2168" = load i32* @"'s", align 4
  %"2169" = load i32* @"'NP", align 4
  %"2170" = icmp eq i32 %"2168", %"2169"
  br i1 %"2170", label %main_bb861, label %main_bb882

main_bb861:                                       ; preds = %main_bb860
  %"2171" = load i32* @"'SKIP1", align 4
  store i32 %"2171", i32* @"'s", align 4
  %"2172" = call i32 @__kittel_nondef.0() #4
  %"2173" = call i32 @__VERIFIER_nondet_int() #4
  %"2174" = load i32* @"'compRegistered", align 4
  %"2175" = icmp ne i32 %"2174", 0
  br i1 %"2175", label %main_bb862, label %main_bb871

main_bb862:                                       ; preds = %main_bb861
  %"2176" = load i32* @"'routine", align 4
  %"2177" = icmp eq i32 %"2176", 0
  br i1 %"2177", label %main_bb863, label %main_bb864

main_bb863:                                       ; preds = %main_bb862
  %"2178" = call i32 @__VERIFIER_nondet_int() #4
  store i32 1, i32* @"'setEventCalled", align 4
  br label %main_DiskPerfIoCompletion.exit.i.i5

main_bb864:                                       ; preds = %main_bb862
  %"2179" = load i32* @"'routine", align 4
  %"2180" = icmp eq i32 %"2179", 1
  br i1 %"2180", label %main_bb865, label %main_DiskPerfIoCompletion.exit.i.i5

main_bb865:                                       ; preds = %main_bb864
  %"2181" = call i32 @__VERIFIER_nondet_int() #4
  %"2182" = call i32 @__VERIFIER_nondet_int() #4
  %"2183" = call i32 @__VERIFIER_nondet_int() #4
  %"2184" = call i32 @__VERIFIER_nondet_int() #4
  %"2185" = call i32 @__VERIFIER_nondet_int() #4
  %"2186" = call i32 @__VERIFIER_nondet_int() #4
  %"2187" = call i32 @__VERIFIER_nondet_int() #4
  %"2188" = call i32 @__VERIFIER_nondet_int() #4
  %"2189" = call i32 @__VERIFIER_nondet_int() #4
  %"2190" = call i32 @__VERIFIER_nondet_int() #4
  %"2191" = call i32 @__VERIFIER_nondet_int() #4
  %"2192" = call i32 @__VERIFIER_nondet_int() #4
  %"2193" = call i32 @__VERIFIER_nondet_int() #4
  %"2194" = call i32 @__VERIFIER_nondet_int() #4
  %"2195" = icmp ne i32 %"2193", 0
  %"2196" = icmp ne i32 %"2192", 0
  %or.cond.i.i4 = and i1 %"2195", %"2196"
  br i1 %or.cond.i.i4, label %main_bb866, label %main_DiskPerfIoCompletion.exit.i.i5

main_bb866:                                       ; preds = %main_bb865
  %"2197" = load i32* @"'pended", align 4
  %"2198" = icmp eq i32 %"2197", 0
  br i1 %"2198", label %main_bb867, label %main_bb868

main_bb867:                                       ; preds = %main_bb866
  store i32 1, i32* @"'pended", align 4
  br label %main_DiskPerfIoCompletion.exit.i.i5

main_bb868:                                       ; preds = %main_bb866
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_DiskPerfIoCompletion.exit.i.i5:              ; preds = %main_bb867, %main_bb865, %main_bb864, %main_bb863
  %compRetStatus.1.i.i = phi i32 [ -1073741802, %main_bb863 ], [ %"2172", %main_bb864 ], [ 0, %main_bb865 ], [ 0, %main_bb867 ]
  %"2199" = sext i32 %compRetStatus.1.i.i to i64
  %"2200" = icmp eq i64 %"2199", -1073741802
  br i1 %"2200", label %main_bb869, label %main_bb871

main_bb869:                                       ; preds = %main_DiskPerfIoCompletion.exit.i.i5
  %"2201" = load i32* @"'s", align 4
  %"2202" = load i32* @"'NP", align 4
  %"2203" = icmp eq i32 %"2201", %"2202"
  br i1 %"2203", label %main_stubMoreProcessingRequired.exit.i.i6, label %main_bb870

main_stubMoreProcessingRequired.exit.i.i6:        ; preds = %main_bb869
  %"2204" = load i32* @"'MPR1", align 4
  store i32 %"2204", i32* @"'s", align 4
  br label %main_bb871

main_bb870:                                       ; preds = %main_bb869
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_bb871:                                       ; preds = %main_stubMoreProcessingRequired.exit.i.i6, %main_DiskPerfIoCompletion.exit.i.i5, %main_bb861
  %"2205" = call i32 @__VERIFIER_nondet_int() #4
  %"2206" = icmp eq i32 %"2205", 0
  br i1 %"2206", label %main_bb873, label %main_bb872

main_bb872:                                       ; preds = %main_bb871
  %"2207" = call i32 @__VERIFIER_nondet_int() #4
  %"2208" = icmp eq i32 %"2207", 1
  %..i.i7 = select i1 %"2208", i32 -1073741823, i32 259
  br label %main_bb873

main_bb873:                                       ; preds = %main_bb872, %main_bb871
  %returnVal.0.i.i = phi i32 [ 0, %main_bb871 ], [ %..i.i7, %main_bb872 ]
  %"2209" = load i32* @"'s", align 4
  %"2210" = load i32* @"'NP", align 4
  %"2211" = icmp eq i32 %"2209", %"2210"
  br i1 %"2211", label %main_bb874, label %main_bb875

main_bb874:                                       ; preds = %main_bb873
  %"2212" = load i32* @"'IPC", align 4
  store i32 %"2212", i32* @"'s", align 4
  store i32 %returnVal.0.i.i, i32* @"'lowerDriverReturn", align 4
  br label %main_DiskPerfDeviceControl.exit

main_bb875:                                       ; preds = %main_bb873
  %"2213" = load i32* @"'s", align 4
  %"2214" = load i32* @"'MPR1", align 4
  %"2215" = icmp eq i32 %"2213", %"2214"
  br i1 %"2215", label %main_bb876, label %main_bb879

main_bb876:                                       ; preds = %main_bb875
  %"2216" = sext i32 %returnVal.0.i.i to i64
  %"2217" = icmp eq i64 %"2216", 259
  br i1 %"2217", label %main_bb877, label %main_bb878

main_bb877:                                       ; preds = %main_bb876
  %"2218" = load i32* @"'MPR3", align 4
  store i32 %"2218", i32* @"'s", align 4
  store i32 %returnVal.0.i.i, i32* @"'lowerDriverReturn", align 4
  br label %main_DiskPerfDeviceControl.exit

main_bb878:                                       ; preds = %main_bb876
  %"2219" = load i32* @"'NP", align 4
  store i32 %"2219", i32* @"'s", align 4
  store i32 %returnVal.0.i.i, i32* @"'lowerDriverReturn", align 4
  br label %main_DiskPerfDeviceControl.exit

main_bb879:                                       ; preds = %main_bb875
  %"2220" = load i32* @"'s", align 4
  %"2221" = load i32* @"'SKIP1", align 4
  %"2222" = icmp eq i32 %"2220", %"2221"
  br i1 %"2222", label %main_bb880, label %main_bb881

main_bb880:                                       ; preds = %main_bb879
  %"2223" = load i32* @"'SKIP2", align 4
  store i32 %"2223", i32* @"'s", align 4
  store i32 %returnVal.0.i.i, i32* @"'lowerDriverReturn", align 4
  br label %main_DiskPerfDeviceControl.exit

main_bb881:                                       ; preds = %main_bb879
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_bb882:                                       ; preds = %main_bb860
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_bb883:                                       ; preds = %main_bb859
  %"2224" = call i32 @__VERIFIER_nondet_int()
  %"2225" = icmp eq i32 %"2224", 12
  br i1 %"2225", label %main_bb884, label %main_bb923

main_bb884:                                       ; preds = %main_bb883
  %"2226" = call i32 @__VERIFIER_nondet_int() #4
  %"2227" = call i32 @__VERIFIER_nondet_int() #4
  %"2228" = call i32 @__VERIFIER_nondet_int() #4
  %"2229" = call i32 @__VERIFIER_nondet_int() #4
  %"2230" = call i32 @__VERIFIER_nondet_int() #4
  %"2231" = load i32* @"'compRegistered", align 4
  %"2232" = icmp ne i32 %"2231", 0
  br i1 %"2232", label %main_bb885, label %main_bb893

main_bb885:                                       ; preds = %main_bb884
  %"2233" = load i32* @"'routine", align 4
  %"2234" = icmp eq i32 %"2233", 0
  %"2235" = call i32 @__VERIFIER_nondet_int() #4
  br i1 %"2234", label %main_bb886, label %main_bb887

main_bb886:                                       ; preds = %main_bb885
  store i32 1, i32* @"'setEventCalled", align 4
  br label %main_DiskPerfIoCompletion.exit.i.i10

main_bb887:                                       ; preds = %main_bb885
  %"2236" = call i32 @__VERIFIER_nondet_int() #4
  %"2237" = call i32 @__VERIFIER_nondet_int() #4
  %"2238" = call i32 @__VERIFIER_nondet_int() #4
  %"2239" = call i32 @__VERIFIER_nondet_int() #4
  %"2240" = call i32 @__VERIFIER_nondet_int() #4
  %"2241" = call i32 @__VERIFIER_nondet_int() #4
  %"2242" = call i32 @__VERIFIER_nondet_int() #4
  %"2243" = call i32 @__VERIFIER_nondet_int() #4
  %"2244" = call i32 @__VERIFIER_nondet_int() #4
  %"2245" = call i32 @__VERIFIER_nondet_int() #4
  %"2246" = call i32 @__VERIFIER_nondet_int() #4
  %"2247" = call i32 @__VERIFIER_nondet_int() #4
  %"2248" = call i32 @__VERIFIER_nondet_int() #4
  %"2249" = icmp ne i32 %"2247", 0
  %"2250" = icmp ne i32 %"2246", 0
  %or.cond.i.i8 = and i1 %"2249", %"2250"
  br i1 %or.cond.i.i8, label %main_bb888, label %main_DiskPerfIoCompletion.exit.i.i10

main_bb888:                                       ; preds = %main_bb887
  %"2251" = load i32* @"'pended", align 4
  %"2252" = icmp eq i32 %"2251", 0
  br i1 %"2252", label %main_bb889, label %main_bb890

main_bb889:                                       ; preds = %main_bb888
  store i32 1, i32* @"'pended", align 4
  br label %main_DiskPerfIoCompletion.exit.i.i10

main_bb890:                                       ; preds = %main_bb888
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_DiskPerfIoCompletion.exit.i.i10:             ; preds = %main_bb889, %main_bb887, %main_bb886
  %compRetStatus.0.i.i9 = phi i32 [ -1073741802, %main_bb886 ], [ 0, %main_bb887 ], [ 0, %main_bb889 ]
  %"2253" = sext i32 %compRetStatus.0.i.i9 to i64
  %"2254" = icmp eq i64 %"2253", -1073741802
  br i1 %"2254", label %main_bb891, label %main_bb893

main_bb891:                                       ; preds = %main_DiskPerfIoCompletion.exit.i.i10
  %"2255" = load i32* @"'s", align 4
  %"2256" = load i32* @"'NP", align 4
  %"2257" = icmp eq i32 %"2255", %"2256"
  br i1 %"2257", label %main_stubMoreProcessingRequired.exit.i.i11, label %main_bb892

main_stubMoreProcessingRequired.exit.i.i11:       ; preds = %main_bb891
  %"2258" = load i32* @"'MPR1", align 4
  store i32 %"2258", i32* @"'s", align 4
  br label %main_bb893

main_bb892:                                       ; preds = %main_bb891
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_bb893:                                       ; preds = %main_stubMoreProcessingRequired.exit.i.i11, %main_DiskPerfIoCompletion.exit.i.i10, %main_bb884
  %"2259" = call i32 @__VERIFIER_nondet_int() #4
  %"2260" = icmp eq i32 %"2259", 0
  br i1 %"2260", label %main_bb895, label %main_bb894

main_bb894:                                       ; preds = %main_bb893
  %"2261" = call i32 @__VERIFIER_nondet_int() #4
  %"2262" = icmp eq i32 %"2261", 1
  %..i.i12 = select i1 %"2262", i32 -1073741823, i32 259
  br label %main_bb895

main_bb895:                                       ; preds = %main_bb894, %main_bb893
  %returnVal2.0.i.i13 = phi i32 [ 0, %main_bb893 ], [ %..i.i12, %main_bb894 ]
  %"2263" = load i32* @"'s", align 4
  %"2264" = load i32* @"'NP", align 4
  %"2265" = icmp eq i32 %"2263", %"2264"
  br i1 %"2265", label %main_bb896, label %main_bb897

main_bb896:                                       ; preds = %main_bb895
  %"2266" = load i32* @"'IPC", align 4
  store i32 %"2266", i32* @"'s", align 4
  store i32 %returnVal2.0.i.i13, i32* @"'lowerDriverReturn", align 4
  br label %main_DiskPerfDeviceControl.exit

main_bb897:                                       ; preds = %main_bb895
  %"2267" = load i32* @"'s", align 4
  %"2268" = load i32* @"'MPR1", align 4
  %"2269" = icmp eq i32 %"2267", %"2268"
  br i1 %"2269", label %main_bb898, label %main_bb901

main_bb898:                                       ; preds = %main_bb897
  %"2270" = icmp eq i32 %returnVal2.0.i.i13, 259
  br i1 %"2270", label %main_bb899, label %main_bb900

main_bb899:                                       ; preds = %main_bb898
  %"2271" = load i32* @"'MPR3", align 4
  store i32 %"2271", i32* @"'s", align 4
  store i32 %returnVal2.0.i.i13, i32* @"'lowerDriverReturn", align 4
  br label %main_DiskPerfDeviceControl.exit

main_bb900:                                       ; preds = %main_bb898
  %"2272" = load i32* @"'NP", align 4
  store i32 %"2272", i32* @"'s", align 4
  store i32 %returnVal2.0.i.i13, i32* @"'lowerDriverReturn", align 4
  br label %main_DiskPerfDeviceControl.exit

main_bb901:                                       ; preds = %main_bb897
  %"2273" = load i32* @"'s", align 4
  %"2274" = load i32* @"'SKIP1", align 4
  %"2275" = icmp eq i32 %"2273", %"2274"
  br i1 %"2275", label %main_bb902, label %main_bb903

main_bb902:                                       ; preds = %main_bb901
  %"2276" = load i32* @"'SKIP2", align 4
  store i32 %"2276", i32* @"'s", align 4
  store i32 %returnVal2.0.i.i13, i32* @"'lowerDriverReturn", align 4
  br label %main_DiskPerfDeviceControl.exit

main_DiskPerfDeviceControl.exit:                  ; preds = %main_bb902, %main_bb900, %main_bb899, %main_bb896, %main_bb880, %main_bb878, %main_bb877, %main_bb874, %main_bb856, %main_bb854, %main_bb853, %main_bb850, %main_DiskPerfRemoveDevice.exit.i, %main_DiskPerfStartDevice.exit.i, %main_bb661, %main_bb659, %main_bb658, %main_bb655, %main_IofCompleteRequest.exit1.i, %main_IofCompleteRequest.exit.i, %main_DiskPerfCreate.exit
  %status.0 = phi i32 [ 0, %main_DiskPerfCreate.exit ], [ %status.0.i, %main_IofCompleteRequest.exit1.i ], [ -1073741823, %main_IofCompleteRequest.exit.i ], [ %returnVal2.0.i.i, %main_bb655 ], [ %returnVal2.0.i.i, %main_bb658 ], [ %returnVal2.0.i.i, %main_bb659 ], [ %returnVal2.0.i.i, %main_bb661 ], [ %returnVal2.0.i.i.i, %main_bb850 ], [ %returnVal2.0.i.i.i, %main_bb853 ], [ %returnVal2.0.i.i.i, %main_bb854 ], [ %returnVal2.0.i.i.i, %main_bb856 ], [ %status.0.i.i.i, %main_DiskPerfStartDevice.exit.i ], [ %status.0.i.i10.i, %main_DiskPerfRemoveDevice.exit.i ], [ %returnVal.0.i.i, %main_bb874 ], [ %returnVal.0.i.i, %main_bb877 ], [ %returnVal.0.i.i, %main_bb878 ], [ %returnVal.0.i.i, %main_bb880 ], [ %returnVal2.0.i.i13, %main_bb896 ], [ %returnVal2.0.i.i13, %main_bb899 ], [ %returnVal2.0.i.i13, %main_bb900 ], [ %returnVal2.0.i.i13, %main_bb902 ]
  br label %main_bb904

main_bb903:                                       ; preds = %main_bb901
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_bb904:                                       ; preds = %main_DiskPerfDeviceControl.exit, %main_bb628
  %status.1 = phi i32 [ %status.0, %main_DiskPerfDeviceControl.exit ], [ %"1564", %main_bb628 ]
  %"2277" = load i32* @"'pended", align 4
  %"2278" = icmp eq i32 %"2277", 1
  br i1 %"2278", label %main_bb905, label %main_bb907

main_bb905:                                       ; preds = %main_bb904
  %"2279" = load i32* @"'s", align 4
  %"2280" = load i32* @"'NP", align 4
  %"2281" = icmp eq i32 %"2279", %"2280"
  br i1 %"2281", label %main_bb906, label %main_bb907

main_bb906:                                       ; preds = %main_bb905
  %"2282" = load i32* @"'NP", align 4
  store i32 %"2282", i32* @"'s", align 4
  br label %main_bb923

main_bb907:                                       ; preds = %main_bb904, %main_bb905
  %"2283" = load i32* @"'pended", align 4
  %"2284" = icmp eq i32 %"2283", 1
  br i1 %"2284", label %main_bb908, label %main_bb910

main_bb908:                                       ; preds = %main_bb907
  %"2285" = load i32* @"'s", align 4
  %"2286" = load i32* @"'MPR3", align 4
  %"2287" = icmp eq i32 %"2285", %"2286"
  br i1 %"2287", label %main_bb909, label %main_bb910

main_bb909:                                       ; preds = %main_bb908
  %"2288" = load i32* @"'MPR3", align 4
  store i32 %"2288", i32* @"'s", align 4
  br label %main_bb923

main_bb910:                                       ; preds = %main_bb907, %main_bb908
  %"2289" = load i32* @"'s", align 4
  %"2290" = load i32* @"'UNLOADED", align 4
  %"2291" = icmp ne i32 %"2289", %"2290"
  %"2292" = icmp ne i32 %status.1, -1
  %or.cond = and i1 %"2291", %"2292"
  br i1 %or.cond, label %main_bb911, label %main_bb923

main_bb911:                                       ; preds = %main_bb910
  %"2293" = load i32* @"'s", align 4
  %"2294" = load i32* @"'SKIP2", align 4
  %"2295" = icmp ne i32 %"2293", %"2294"
  br i1 %"2295", label %main_bb912, label %main_bb915

main_bb912:                                       ; preds = %main_bb911
  %"2296" = load i32* @"'s", align 4
  %"2297" = load i32* @"'IPC", align 4
  %"2298" = icmp ne i32 %"2296", %"2297"
  br i1 %"2298", label %main_bb913, label %main_bb915

main_bb913:                                       ; preds = %main_bb912
  %"2299" = load i32* @"'s", align 4
  %"2300" = load i32* @"'DC", align 4
  %"2301" = icmp ne i32 %"2299", %"2300"
  br i1 %"2301", label %main_bb914, label %main_bb915

main_bb914:                                       ; preds = %main_bb913
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_bb915:                                       ; preds = %main_bb911, %main_bb912, %main_bb913
  %"2302" = load i32* @"'pended", align 4
  %"2303" = icmp eq i32 %"2302", 1
  br i1 %"2303", label %main_bb916, label %main_bb918

main_bb916:                                       ; preds = %main_bb915
  %"2304" = icmp ne i32 %status.1, 259
  br i1 %"2304", label %main_bb917, label %main_bb923

main_bb917:                                       ; preds = %main_bb916
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_bb918:                                       ; preds = %main_bb915
  %"2305" = load i32* @"'s", align 4
  %"2306" = load i32* @"'DC", align 4
  %"2307" = icmp eq i32 %"2305", %"2306"
  br i1 %"2307", label %main_bb919, label %main_bb921

main_bb919:                                       ; preds = %main_bb918
  %"2308" = icmp eq i32 %status.1, 259
  br i1 %"2308", label %main_bb920, label %main_bb923

main_bb920:                                       ; preds = %main_bb919
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_bb921:                                       ; preds = %main_bb918
  %"2309" = load i32* @"'lowerDriverReturn", align 4
  %"2310" = icmp ne i32 %status.1, %"2309"
  br i1 %"2310", label %main_bb922, label %main_bb923

main_bb922:                                       ; preds = %main_bb921
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_bb923:                                       ; preds = %main_bb906, %main_bb910, %main_bb919, %main_bb921, %main_bb916, %main_bb909, %main_bb883, %main_bb629
  %.0 = phi i32 [ -1, %main_bb629 ], [ -1, %main_bb883 ], [ %status.1, %main_bb909 ], [ %status.1, %main_bb916 ], [ %status.1, %main_bb921 ], [ %status.1, %main_bb919 ], [ %status.1, %main_bb910 ], [ %status.1, %main_bb906 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @IoBuildDeviceIoControlRequest(i32 %IoControlCode, i32 %DeviceObject, i32 %InputBuffer, i32 %InputBufferLength, i32 %OutputBuffer, i32 %OutputBufferLength, i32 %InternalDeviceIoControl, i32 %Event, i32 %IoStatusBlock) #0 {
IoBuildDeviceIoControlRequest_bb924:
  %"2311" = call i32 @__VERIFIER_nondet_int()
  store i32 1, i32* @"'customIrp", align 4
  %"2312" = call i32 @__VERIFIER_nondet_int()
  %"2313" = icmp eq i32 %"2312", 0
  %.0 = select i1 %"2313", i32 %"2311", i32 0
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @stubMoreProcessingRequired() #0 {
stubMoreProcessingRequired_bb925:
  %"2314" = load i32* @"'s", align 4
  %"2315" = load i32* @"'NP", align 4
  %"2316" = icmp eq i32 %"2314", %"2315"
  br i1 %"2316", label %stubMoreProcessingRequired_bb926, label %stubMoreProcessingRequired_bb927

stubMoreProcessingRequired_bb926:                 ; preds = %stubMoreProcessingRequired_bb925
  %"2317" = load i32* @"'MPR1", align 4
  store i32 %"2317", i32* @"'s", align 4
  ret void

stubMoreProcessingRequired_bb927:                 ; preds = %stubMoreProcessingRequired_bb925
  call void (...)* @__VERIFIER_error() #5
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @IofCallDriver(i32 %DeviceObject, i32 %Irp) #0 {
IofCallDriver_bb928:
  %"2318" = call i32 @__VERIFIER_nondet_int()
  %"2319" = load i32* @"'compRegistered", align 4
  %"2320" = icmp ne i32 %"2319", 0
  br i1 %"2320", label %IofCallDriver_bb929, label %IofCallDriver_bb937

IofCallDriver_bb929:                              ; preds = %IofCallDriver_bb928
  %"2321" = load i32* @"'routine", align 4
  %"2322" = icmp eq i32 %"2321", 0
  %"2323" = call i32 @__VERIFIER_nondet_int() #4
  br i1 %"2322", label %IofCallDriver_bb930, label %IofCallDriver_bb931

IofCallDriver_bb930:                              ; preds = %IofCallDriver_bb929
  store i32 1, i32* @"'setEventCalled", align 4
  br label %IofCallDriver_DiskPerfIoCompletion.exit

IofCallDriver_bb931:                              ; preds = %IofCallDriver_bb929
  %"2324" = call i32 @__VERIFIER_nondet_int() #4
  %"2325" = call i32 @__VERIFIER_nondet_int() #4
  %"2326" = call i32 @__VERIFIER_nondet_int() #4
  %"2327" = call i32 @__VERIFIER_nondet_int() #4
  %"2328" = call i32 @__VERIFIER_nondet_int() #4
  %"2329" = call i32 @__VERIFIER_nondet_int() #4
  %"2330" = call i32 @__VERIFIER_nondet_int() #4
  %"2331" = call i32 @__VERIFIER_nondet_int() #4
  %"2332" = call i32 @__VERIFIER_nondet_int() #4
  %"2333" = call i32 @__VERIFIER_nondet_int() #4
  %"2334" = call i32 @__VERIFIER_nondet_int() #4
  %"2335" = call i32 @__VERIFIER_nondet_int() #4
  %"2336" = call i32 @__VERIFIER_nondet_int() #4
  %"2337" = icmp ne i32 %"2335", 0
  %"2338" = icmp ne i32 %"2334", 0
  %or.cond = and i1 %"2337", %"2338"
  br i1 %or.cond, label %IofCallDriver_bb932, label %IofCallDriver_DiskPerfIoCompletion.exit

IofCallDriver_bb932:                              ; preds = %IofCallDriver_bb931
  %"2339" = load i32* @"'pended", align 4
  %"2340" = icmp eq i32 %"2339", 0
  br i1 %"2340", label %IofCallDriver_bb933, label %IofCallDriver_bb934

IofCallDriver_bb933:                              ; preds = %IofCallDriver_bb932
  store i32 1, i32* @"'pended", align 4
  br label %IofCallDriver_DiskPerfIoCompletion.exit

IofCallDriver_bb934:                              ; preds = %IofCallDriver_bb932
  call void (...)* @__VERIFIER_error() #5
  unreachable

IofCallDriver_DiskPerfIoCompletion.exit:          ; preds = %IofCallDriver_bb933, %IofCallDriver_bb931, %IofCallDriver_bb930
  %compRetStatus.0 = phi i32 [ -1073741802, %IofCallDriver_bb930 ], [ 0, %IofCallDriver_bb931 ], [ 0, %IofCallDriver_bb933 ]
  %"2341" = sext i32 %compRetStatus.0 to i64
  %"2342" = icmp eq i64 %"2341", -1073741802
  br i1 %"2342", label %IofCallDriver_bb935, label %IofCallDriver_bb937

IofCallDriver_bb935:                              ; preds = %IofCallDriver_DiskPerfIoCompletion.exit
  %"2343" = load i32* @"'s", align 4
  %"2344" = load i32* @"'NP", align 4
  %"2345" = icmp eq i32 %"2343", %"2344"
  br i1 %"2345", label %IofCallDriver_stubMoreProcessingRequired.exit, label %IofCallDriver_bb936

IofCallDriver_stubMoreProcessingRequired.exit:    ; preds = %IofCallDriver_bb935
  %"2346" = load i32* @"'MPR1", align 4
  store i32 %"2346", i32* @"'s", align 4
  br label %IofCallDriver_bb937

IofCallDriver_bb936:                              ; preds = %IofCallDriver_bb935
  call void (...)* @__VERIFIER_error() #5
  unreachable

IofCallDriver_bb937:                              ; preds = %IofCallDriver_DiskPerfIoCompletion.exit, %IofCallDriver_stubMoreProcessingRequired.exit, %IofCallDriver_bb928
  %"2347" = call i32 @__VERIFIER_nondet_int()
  %"2348" = icmp eq i32 %"2347", 0
  br i1 %"2348", label %IofCallDriver_bb939, label %IofCallDriver_bb938

IofCallDriver_bb938:                              ; preds = %IofCallDriver_bb937
  %"2349" = call i32 @__VERIFIER_nondet_int()
  %"2350" = icmp eq i32 %"2349", 1
  %. = select i1 %"2350", i32 -1073741823, i32 259
  br label %IofCallDriver_bb939

IofCallDriver_bb939:                              ; preds = %IofCallDriver_bb938, %IofCallDriver_bb937
  %returnVal2.0 = phi i32 [ 0, %IofCallDriver_bb937 ], [ %., %IofCallDriver_bb938 ]
  %"2351" = load i32* @"'s", align 4
  %"2352" = load i32* @"'NP", align 4
  %"2353" = icmp eq i32 %"2351", %"2352"
  br i1 %"2353", label %IofCallDriver_bb940, label %IofCallDriver_bb941

IofCallDriver_bb940:                              ; preds = %IofCallDriver_bb939
  %"2354" = load i32* @"'IPC", align 4
  store i32 %"2354", i32* @"'s", align 4
  store i32 %returnVal2.0, i32* @"'lowerDriverReturn", align 4
  br label %IofCallDriver_bb947

IofCallDriver_bb941:                              ; preds = %IofCallDriver_bb939
  %"2355" = load i32* @"'s", align 4
  %"2356" = load i32* @"'MPR1", align 4
  %"2357" = icmp eq i32 %"2355", %"2356"
  br i1 %"2357", label %IofCallDriver_bb942, label %IofCallDriver_bb945

IofCallDriver_bb942:                              ; preds = %IofCallDriver_bb941
  %"2358" = icmp eq i32 %returnVal2.0, 259
  br i1 %"2358", label %IofCallDriver_bb943, label %IofCallDriver_bb944

IofCallDriver_bb943:                              ; preds = %IofCallDriver_bb942
  %"2359" = load i32* @"'MPR3", align 4
  store i32 %"2359", i32* @"'s", align 4
  store i32 %returnVal2.0, i32* @"'lowerDriverReturn", align 4
  br label %IofCallDriver_bb947

IofCallDriver_bb944:                              ; preds = %IofCallDriver_bb942
  %"2360" = load i32* @"'NP", align 4
  store i32 %"2360", i32* @"'s", align 4
  store i32 %returnVal2.0, i32* @"'lowerDriverReturn", align 4
  br label %IofCallDriver_bb947

IofCallDriver_bb945:                              ; preds = %IofCallDriver_bb941
  %"2361" = load i32* @"'s", align 4
  %"2362" = load i32* @"'SKIP1", align 4
  %"2363" = icmp eq i32 %"2361", %"2362"
  br i1 %"2363", label %IofCallDriver_bb946, label %IofCallDriver_bb948

IofCallDriver_bb946:                              ; preds = %IofCallDriver_bb945
  %"2364" = load i32* @"'SKIP2", align 4
  store i32 %"2364", i32* @"'s", align 4
  store i32 %returnVal2.0, i32* @"'lowerDriverReturn", align 4
  br label %IofCallDriver_bb947

IofCallDriver_bb947:                              ; preds = %IofCallDriver_bb946, %IofCallDriver_bb944, %IofCallDriver_bb943, %IofCallDriver_bb940
  ret i32 %returnVal2.0

IofCallDriver_bb948:                              ; preds = %IofCallDriver_bb945
  call void (...)* @__VERIFIER_error() #5
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @KeSetEvent(i32 %Event, i32 %Increment, i32 %Wait) #0 {
KeSetEvent_bb949:
  %"2365" = call i32 @__VERIFIER_nondet_int()
  store i32 1, i32* @"'setEventCalled", align 4
  ret i32 %"2365"
}

; Function Attrs: nounwind uwtable
define i32 @KeWaitForSingleObject(i32 %Object, i32 %WaitReason, i32 %WaitMode, i32 %Alertable, i32 %Timeout) #0 {
KeWaitForSingleObject_bb950:
  %"2366" = load i32* @"'s", align 4
  %"2367" = load i32* @"'MPR3", align 4
  %"2368" = icmp eq i32 %"2366", %"2367"
  %"2369" = load i32* @"'setEventCalled", align 4
  %"2370" = icmp eq i32 %"2369", 1
  %or.cond = and i1 %"2368", %"2370"
  br i1 %or.cond, label %KeWaitForSingleObject_bb951, label %KeWaitForSingleObject_bb952

KeWaitForSingleObject_bb951:                      ; preds = %KeWaitForSingleObject_bb950
  %"2371" = load i32* @"'NP", align 4
  store i32 %"2371", i32* @"'s", align 4
  store i32 0, i32* @"'setEventCalled", align 4
  br label %KeWaitForSingleObject_bb956

KeWaitForSingleObject_bb952:                      ; preds = %KeWaitForSingleObject_bb950
  %"2372" = load i32* @"'customIrp", align 4
  %"2373" = icmp eq i32 %"2372", 1
  br i1 %"2373", label %KeWaitForSingleObject_bb953, label %KeWaitForSingleObject_bb954

KeWaitForSingleObject_bb953:                      ; preds = %KeWaitForSingleObject_bb952
  %"2374" = load i32* @"'NP", align 4
  store i32 %"2374", i32* @"'s", align 4
  store i32 0, i32* @"'customIrp", align 4
  br label %KeWaitForSingleObject_bb956

KeWaitForSingleObject_bb954:                      ; preds = %KeWaitForSingleObject_bb952
  %"2375" = load i32* @"'s", align 4
  %"2376" = load i32* @"'MPR3", align 4
  %"2377" = icmp eq i32 %"2375", %"2376"
  br i1 %"2377", label %KeWaitForSingleObject_bb955, label %KeWaitForSingleObject_bb956

KeWaitForSingleObject_bb955:                      ; preds = %KeWaitForSingleObject_bb954
  call void (...)* @__VERIFIER_error() #5
  unreachable

KeWaitForSingleObject_bb956:                      ; preds = %KeWaitForSingleObject_bb953, %KeWaitForSingleObject_bb954, %KeWaitForSingleObject_bb951
  %"2378" = call i32 @__VERIFIER_nondet_int()
  %"2379" = icmp eq i32 %"2378", 0
  %.0 = select i1 %"2379", i32 0, i32 -1073741823
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @PoCallDriver(i32 %DeviceObject, i32 %Irp) #0 {
PoCallDriver_bb957:
  %"2380" = call i32 @__kittel_nondef.0()
  %"2381" = call i32 @__VERIFIER_nondet_int()
  %"2382" = load i32* @"'compRegistered", align 4
  %"2383" = icmp ne i32 %"2382", 0
  br i1 %"2383", label %PoCallDriver_bb958, label %PoCallDriver_bb967

PoCallDriver_bb958:                               ; preds = %PoCallDriver_bb957
  %"2384" = load i32* @"'routine", align 4
  %"2385" = icmp eq i32 %"2384", 0
  br i1 %"2385", label %PoCallDriver_bb959, label %PoCallDriver_bb960

PoCallDriver_bb959:                               ; preds = %PoCallDriver_bb958
  %"2386" = call i32 @__VERIFIER_nondet_int() #4
  store i32 1, i32* @"'setEventCalled", align 4
  br label %PoCallDriver_DiskPerfIoCompletion.exit

PoCallDriver_bb960:                               ; preds = %PoCallDriver_bb958
  %"2387" = load i32* @"'routine", align 4
  %"2388" = icmp eq i32 %"2387", 1
  br i1 %"2388", label %PoCallDriver_bb961, label %PoCallDriver_DiskPerfIoCompletion.exit

PoCallDriver_bb961:                               ; preds = %PoCallDriver_bb960
  %"2389" = call i32 @__VERIFIER_nondet_int() #4
  %"2390" = call i32 @__VERIFIER_nondet_int() #4
  %"2391" = call i32 @__VERIFIER_nondet_int() #4
  %"2392" = call i32 @__VERIFIER_nondet_int() #4
  %"2393" = call i32 @__VERIFIER_nondet_int() #4
  %"2394" = call i32 @__VERIFIER_nondet_int() #4
  %"2395" = call i32 @__VERIFIER_nondet_int() #4
  %"2396" = call i32 @__VERIFIER_nondet_int() #4
  %"2397" = call i32 @__VERIFIER_nondet_int() #4
  %"2398" = call i32 @__VERIFIER_nondet_int() #4
  %"2399" = call i32 @__VERIFIER_nondet_int() #4
  %"2400" = call i32 @__VERIFIER_nondet_int() #4
  %"2401" = call i32 @__VERIFIER_nondet_int() #4
  %"2402" = call i32 @__VERIFIER_nondet_int() #4
  %"2403" = icmp ne i32 %"2401", 0
  %"2404" = icmp ne i32 %"2400", 0
  %or.cond = and i1 %"2403", %"2404"
  br i1 %or.cond, label %PoCallDriver_bb962, label %PoCallDriver_DiskPerfIoCompletion.exit

PoCallDriver_bb962:                               ; preds = %PoCallDriver_bb961
  %"2405" = load i32* @"'pended", align 4
  %"2406" = icmp eq i32 %"2405", 0
  br i1 %"2406", label %PoCallDriver_bb963, label %PoCallDriver_bb964

PoCallDriver_bb963:                               ; preds = %PoCallDriver_bb962
  store i32 1, i32* @"'pended", align 4
  br label %PoCallDriver_DiskPerfIoCompletion.exit

PoCallDriver_bb964:                               ; preds = %PoCallDriver_bb962
  call void (...)* @__VERIFIER_error() #5
  unreachable

PoCallDriver_DiskPerfIoCompletion.exit:           ; preds = %PoCallDriver_bb960, %PoCallDriver_bb961, %PoCallDriver_bb963, %PoCallDriver_bb959
  %compRetStatus.1 = phi i32 [ -1073741802, %PoCallDriver_bb959 ], [ %"2380", %PoCallDriver_bb960 ], [ 0, %PoCallDriver_bb961 ], [ 0, %PoCallDriver_bb963 ]
  %"2407" = sext i32 %compRetStatus.1 to i64
  %"2408" = icmp eq i64 %"2407", -1073741802
  br i1 %"2408", label %PoCallDriver_bb965, label %PoCallDriver_bb967

PoCallDriver_bb965:                               ; preds = %PoCallDriver_DiskPerfIoCompletion.exit
  %"2409" = load i32* @"'s", align 4
  %"2410" = load i32* @"'NP", align 4
  %"2411" = icmp eq i32 %"2409", %"2410"
  br i1 %"2411", label %PoCallDriver_stubMoreProcessingRequired.exit, label %PoCallDriver_bb966

PoCallDriver_stubMoreProcessingRequired.exit:     ; preds = %PoCallDriver_bb965
  %"2412" = load i32* @"'MPR1", align 4
  store i32 %"2412", i32* @"'s", align 4
  br label %PoCallDriver_bb967

PoCallDriver_bb966:                               ; preds = %PoCallDriver_bb965
  call void (...)* @__VERIFIER_error() #5
  unreachable

PoCallDriver_bb967:                               ; preds = %PoCallDriver_DiskPerfIoCompletion.exit, %PoCallDriver_stubMoreProcessingRequired.exit, %PoCallDriver_bb957
  %"2413" = call i32 @__VERIFIER_nondet_int()
  %"2414" = icmp eq i32 %"2413", 0
  br i1 %"2414", label %PoCallDriver_bb969, label %PoCallDriver_bb968

PoCallDriver_bb968:                               ; preds = %PoCallDriver_bb967
  %"2415" = call i32 @__VERIFIER_nondet_int()
  %"2416" = icmp eq i32 %"2415", 1
  %. = select i1 %"2416", i32 -1073741823, i32 259
  br label %PoCallDriver_bb969

PoCallDriver_bb969:                               ; preds = %PoCallDriver_bb968, %PoCallDriver_bb967
  %returnVal.0 = phi i32 [ 0, %PoCallDriver_bb967 ], [ %., %PoCallDriver_bb968 ]
  %"2417" = load i32* @"'s", align 4
  %"2418" = load i32* @"'NP", align 4
  %"2419" = icmp eq i32 %"2417", %"2418"
  br i1 %"2419", label %PoCallDriver_bb970, label %PoCallDriver_bb971

PoCallDriver_bb970:                               ; preds = %PoCallDriver_bb969
  %"2420" = load i32* @"'IPC", align 4
  store i32 %"2420", i32* @"'s", align 4
  store i32 %returnVal.0, i32* @"'lowerDriverReturn", align 4
  br label %PoCallDriver_bb977

PoCallDriver_bb971:                               ; preds = %PoCallDriver_bb969
  %"2421" = load i32* @"'s", align 4
  %"2422" = load i32* @"'MPR1", align 4
  %"2423" = icmp eq i32 %"2421", %"2422"
  br i1 %"2423", label %PoCallDriver_bb972, label %PoCallDriver_bb975

PoCallDriver_bb972:                               ; preds = %PoCallDriver_bb971
  %"2424" = sext i32 %returnVal.0 to i64
  %"2425" = icmp eq i64 %"2424", 259
  br i1 %"2425", label %PoCallDriver_bb973, label %PoCallDriver_bb974

PoCallDriver_bb973:                               ; preds = %PoCallDriver_bb972
  %"2426" = load i32* @"'MPR3", align 4
  store i32 %"2426", i32* @"'s", align 4
  store i32 %returnVal.0, i32* @"'lowerDriverReturn", align 4
  br label %PoCallDriver_bb977

PoCallDriver_bb974:                               ; preds = %PoCallDriver_bb972
  %"2427" = load i32* @"'NP", align 4
  store i32 %"2427", i32* @"'s", align 4
  store i32 %returnVal.0, i32* @"'lowerDriverReturn", align 4
  br label %PoCallDriver_bb977

PoCallDriver_bb975:                               ; preds = %PoCallDriver_bb971
  %"2428" = load i32* @"'s", align 4
  %"2429" = load i32* @"'SKIP1", align 4
  %"2430" = icmp eq i32 %"2428", %"2429"
  br i1 %"2430", label %PoCallDriver_bb976, label %PoCallDriver_bb978

PoCallDriver_bb976:                               ; preds = %PoCallDriver_bb975
  %"2431" = load i32* @"'SKIP2", align 4
  store i32 %"2431", i32* @"'s", align 4
  store i32 %returnVal.0, i32* @"'lowerDriverReturn", align 4
  br label %PoCallDriver_bb977

PoCallDriver_bb977:                               ; preds = %PoCallDriver_bb976, %PoCallDriver_bb974, %PoCallDriver_bb973, %PoCallDriver_bb970
  ret i32 %returnVal.0

PoCallDriver_bb978:                               ; preds = %PoCallDriver_bb975
  call void (...)* @__VERIFIER_error() #5
  unreachable
}

declare i32 @__kittel_nondef.0()

declare i64 @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

