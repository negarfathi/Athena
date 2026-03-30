; ModuleID = 'Benchmarks/TermCOMP/C/SV-COMP_Mixed_Categories/floppy_simpl3_false-unreach-call_true-termination.cil/floppy_simpl3_false-unreach-call_true-termination.cil.bc'
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
@"'compRegistered" = common global i32 0, align 4
@"'lowerDriverReturn" = common global i32 0, align 4
@"'setEventCalled" = common global i32 0, align 4
@"'customIrp" = common global i32 0, align 4
@"'PagingReferenceCount" = global i32 0, align 4
@"'PagingMutex" = global i32 0, align 4
@"'myStatus" = common global i32 0, align 4
@"'FloppyThread" = common global i32 0, align 4
@"'KernelMode" = common global i32 0, align 4
@"'Executive" = common global i32 0, align 4
@"'DiskController" = common global i32 0, align 4
@"'FloppyDiskPeripheral" = common global i32 0, align 4
@"'MaximumInterfaceType" = common global i32 0, align 4
@"'FlConfigCallBack" = common global i32 0, align 4
@"'MOUNTDEV_MOUNTED_DEVICE_GUID" = common global i32 0, align 4
@"'Suspended" = common global i32 0, align 4

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
  store i32 0, i32* @"'compRegistered", align 4
  store i32 0, i32* @"'lowerDriverReturn", align 4
  store i32 0, i32* @"'setEventCalled", align 4
  store i32 0, i32* @"'customIrp", align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @FlAcpiConfigureFloppy(i32 %DisketteExtension, i32 %FdcInfo) #0 {
FlAcpiConfigureFloppy_bb2:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @FlQueueIrpToThread(i32 %Irp, i32 %DisketteExtension) #0 {
FlQueueIrpToThread_bb3:
  %"1" = call i32 @__VERIFIER_nondet_int()
  %"2" = call i32 @__VERIFIER_nondet_int()
  %"3" = call i32 @__VERIFIER_nondet_int()
  %"4" = call i32 @__VERIFIER_nondet_int()
  %"5" = call i32 @__VERIFIER_nondet_int()
  %"6" = icmp eq i32 %"2", 1
  br i1 %"6", label %FlQueueIrpToThread_bb4, label %FlQueueIrpToThread_bb5

FlQueueIrpToThread_bb4:                           ; preds = %FlQueueIrpToThread_bb3
  store i32 -1073741101, i32* @"'myStatus", align 4
  br label %FlQueueIrpToThread_bb11

FlQueueIrpToThread_bb5:                           ; preds = %FlQueueIrpToThread_bb3
  %"7" = add nsw i32 %"3", 1
  %"8" = icmp eq i32 %"7", 0
  br i1 %"8", label %FlQueueIrpToThread_bb6, label %FlQueueIrpToThread_bb9

FlQueueIrpToThread_bb6:                           ; preds = %FlQueueIrpToThread_bb5
  %"9" = load i32* @"'PagingReferenceCount", align 4
  %"10" = add nsw i32 %"9", 1
  store i32 %"10", i32* @"'PagingReferenceCount", align 4
  %"11" = call i32 @__VERIFIER_nondet_int() #4
  %"12" = icmp eq i32 %"11", 0
  %.0.i = select i1 %"12", i32 0, i32 -1073741823
  %"13" = icmp slt i32 %.0.i, 0
  br i1 %"13", label %FlQueueIrpToThread_bb7, label %FlQueueIrpToThread_bb8

FlQueueIrpToThread_bb7:                           ; preds = %FlQueueIrpToThread_bb6
  %"14" = load i32* @"'PagingReferenceCount", align 4
  %"15" = add nsw i32 %"14", -1
  store i32 %"15", i32* @"'PagingReferenceCount", align 4
  br label %FlQueueIrpToThread_bb11

FlQueueIrpToThread_bb8:                           ; preds = %FlQueueIrpToThread_bb6
  %"16" = call i32 @__VERIFIER_nondet_int() #4
  %"17" = icmp eq i32 %"16", 0
  %.0.i1 = select i1 %"17", i32 0, i32 -1073741823
  %"18" = call i32 @__VERIFIER_nondet_int() #4
  %"19" = icmp slt i32 %.0.i1, 0
  br i1 %"19", label %FlQueueIrpToThread_bb11, label %FlQueueIrpToThread_bb9

FlQueueIrpToThread_bb9:                           ; preds = %FlQueueIrpToThread_bb8, %FlQueueIrpToThread_bb5
  %"20" = load i32* @"'pended", align 4
  %"21" = icmp eq i32 %"20", 0
  br i1 %"21", label %FlQueueIrpToThread_bb10, label %FlQueueIrpToThread_bb12

FlQueueIrpToThread_bb10:                          ; preds = %FlQueueIrpToThread_bb9
  store i32 1, i32* @"'pended", align 4
  br label %FlQueueIrpToThread_bb11

FlQueueIrpToThread_bb11:                          ; preds = %FlQueueIrpToThread_bb8, %FlQueueIrpToThread_bb10, %FlQueueIrpToThread_bb7, %FlQueueIrpToThread_bb4
  %.0 = phi i32 [ -1073741101, %FlQueueIrpToThread_bb4 ], [ %.0.i, %FlQueueIrpToThread_bb7 ], [ 259, %FlQueueIrpToThread_bb10 ], [ %.0.i1, %FlQueueIrpToThread_bb8 ]
  ret i32 %.0

FlQueueIrpToThread_bb12:                          ; preds = %FlQueueIrpToThread_bb9
  call void (...)* @__VERIFIER_error() #5
  unreachable
}

declare i32 @__VERIFIER_nondet_int() #2

; Function Attrs: nounwind uwtable
define i32 @FloppyPnp(i32 %DeviceObject, i32 %Irp) #0 {
FloppyPnp_bb13:
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
  %"32" = call i32 @__VERIFIER_nondet_int()
  %"33" = call i32 @__VERIFIER_nondet_int()
  %"34" = call i32 @__VERIFIER_nondet_int()
  %"35" = call i32 @__VERIFIER_nondet_int()
  %"36" = load i32* @"'PagingReferenceCount", align 4
  %"37" = add nsw i32 %"36", 1
  store i32 %"37", i32* @"'PagingReferenceCount", align 4
  %"38" = icmp ne i32 %"25", 0
  br i1 %"38", label %FloppyPnp_bb14, label %FloppyPnp_bb16

FloppyPnp_bb14:                                   ; preds = %FloppyPnp_bb13
  store i32 -1073741738, i32* @"'myStatus", align 4
  %"39" = load i32* @"'s", align 4
  %"40" = load i32* @"'NP", align 4
  %"41" = icmp eq i32 %"39", %"40"
  br i1 %"41", label %FloppyPnp_IofCompleteRequest.exit, label %FloppyPnp_bb15

FloppyPnp_IofCompleteRequest.exit:                ; preds = %FloppyPnp_bb14
  %"42" = load i32* @"'DC", align 4
  store i32 %"42", i32* @"'s", align 4
  br label %FloppyPnp_IofCallDriver.exit

FloppyPnp_bb15:                                   ; preds = %FloppyPnp_bb14
  call void (...)* @__VERIFIER_error() #5
  unreachable

FloppyPnp_bb16:                                   ; preds = %FloppyPnp_bb13
  br label %FloppyPnp_NodeBlock51

FloppyPnp_NodeBlock51:                            ; preds = %FloppyPnp_bb16
  %Pivot52 = icmp slt i32 %"33", 3
  br i1 %Pivot52, label %FloppyPnp_NodeBlock41, label %FloppyPnp_NodeBlock49

FloppyPnp_NodeBlock41:                            ; preds = %FloppyPnp_NodeBlock51
  %Pivot42 = icmp slt i32 %"33", 1
  br i1 %Pivot42, label %FloppyPnp_LeafBlock, label %FloppyPnp_NodeBlock

FloppyPnp_LeafBlock:                              ; preds = %FloppyPnp_NodeBlock41
  %SwitchLeaf = icmp eq i32 %"33", 0
  br i1 %SwitchLeaf, label %FloppyPnp_bb17, label %FloppyPnp_NewDefault

FloppyPnp_bb17:                                   ; preds = %FloppyPnp_LeafBlock
  %"43" = call i32 @__VERIFIER_nondet_int() #4
  %"44" = call i32 @__VERIFIER_nondet_int() #4
  %"45" = call i32 @__VERIFIER_nondet_int() #4
  %"46" = call i32 @__VERIFIER_nondet_int() #4
  %"47" = call i32 @__VERIFIER_nondet_int() #4
  %"48" = call i32 @__VERIFIER_nondet_int() #4
  %"49" = call i32 @__VERIFIER_nondet_int() #4
  %"50" = call i32 @__VERIFIER_nondet_int() #4
  %"51" = call i32 @__VERIFIER_nondet_int() #4
  %"52" = call i32 @__VERIFIER_nondet_int() #4
  %"53" = call i32 @__VERIFIER_nondet_int() #4
  %"54" = call i32 @__VERIFIER_nondet_int() #4
  %"55" = call i32 @__VERIFIER_nondet_int() #4
  %"56" = call i32 @__VERIFIER_nondet_int() #4
  %"57" = call i32 @__VERIFIER_nondet_int() #4
  %"58" = call i32 @__VERIFIER_nondet_int() #4
  %"59" = load i32* @"'s", align 4
  %"60" = load i32* @"'NP", align 4
  %"61" = icmp ne i32 %"59", %"60"
  br i1 %"61", label %FloppyPnp_bb18, label %FloppyPnp_bb19

FloppyPnp_bb18:                                   ; preds = %FloppyPnp_bb17
  call void (...)* @__VERIFIER_error() #5
  unreachable

FloppyPnp_bb19:                                   ; preds = %FloppyPnp_bb17
  %"62" = load i32* @"'compRegistered", align 4
  %"63" = icmp ne i32 %"62", 0
  br i1 %"63", label %FloppyPnp_bb20, label %FloppyPnp_bb21

FloppyPnp_bb20:                                   ; preds = %FloppyPnp_bb19
  call void (...)* @__VERIFIER_error() #5
  unreachable

FloppyPnp_bb21:                                   ; preds = %FloppyPnp_bb19
  store i32 1, i32* @"'compRegistered", align 4
  %"64" = call i32 @__VERIFIER_nondet_int() #4
  %"65" = load i32* @"'compRegistered", align 4
  %"66" = icmp ne i32 %"65", 0
  br i1 %"66", label %FloppyPnp_bb22, label %FloppyPnp_bb24

FloppyPnp_bb22:                                   ; preds = %FloppyPnp_bb21
  %"67" = call i32 @__VERIFIER_nondet_int() #4
  store i32 1, i32* @"'setEventCalled", align 4
  %"68" = load i32* @"'s", align 4
  %"69" = load i32* @"'NP", align 4
  %"70" = icmp eq i32 %"68", %"69"
  br i1 %"70", label %FloppyPnp_stubMoreProcessingRequired.exit.i.i, label %FloppyPnp_bb23

FloppyPnp_stubMoreProcessingRequired.exit.i.i:    ; preds = %FloppyPnp_bb22
  %"71" = load i32* @"'MPR1", align 4
  store i32 %"71", i32* @"'s", align 4
  br label %FloppyPnp_bb24

FloppyPnp_bb23:                                   ; preds = %FloppyPnp_bb22
  call void (...)* @__VERIFIER_error() #5
  unreachable

FloppyPnp_bb24:                                   ; preds = %FloppyPnp_stubMoreProcessingRequired.exit.i.i, %FloppyPnp_bb21
  %"72" = call i32 @__VERIFIER_nondet_int() #4
  %"73" = icmp eq i32 %"72", 0
  br i1 %"73", label %FloppyPnp_bb26, label %FloppyPnp_bb25

FloppyPnp_bb25:                                   ; preds = %FloppyPnp_bb24
  %"74" = call i32 @__VERIFIER_nondet_int() #4
  %"75" = icmp eq i32 %"74", 1
  %..i.i = select i1 %"75", i32 -1073741823, i32 259
  br label %FloppyPnp_bb26

FloppyPnp_bb26:                                   ; preds = %FloppyPnp_bb25, %FloppyPnp_bb24
  %returnVal2.0.i.i = phi i32 [ 0, %FloppyPnp_bb24 ], [ %..i.i, %FloppyPnp_bb25 ]
  %"76" = load i32* @"'s", align 4
  %"77" = load i32* @"'NP", align 4
  %"78" = icmp eq i32 %"76", %"77"
  br i1 %"78", label %FloppyPnp_bb27, label %FloppyPnp_bb28

FloppyPnp_bb27:                                   ; preds = %FloppyPnp_bb26
  %"79" = load i32* @"'IPC", align 4
  store i32 %"79", i32* @"'s", align 4
  store i32 %returnVal2.0.i.i, i32* @"'lowerDriverReturn", align 4
  br label %FloppyPnp_IofCallDriver.exit.i

FloppyPnp_bb28:                                   ; preds = %FloppyPnp_bb26
  %"80" = load i32* @"'s", align 4
  %"81" = load i32* @"'MPR1", align 4
  %"82" = icmp eq i32 %"80", %"81"
  br i1 %"82", label %FloppyPnp_bb29, label %FloppyPnp_bb32

FloppyPnp_bb29:                                   ; preds = %FloppyPnp_bb28
  %"83" = icmp eq i32 %returnVal2.0.i.i, 259
  br i1 %"83", label %FloppyPnp_bb30, label %FloppyPnp_bb31

FloppyPnp_bb30:                                   ; preds = %FloppyPnp_bb29
  %"84" = load i32* @"'MPR3", align 4
  store i32 %"84", i32* @"'s", align 4
  store i32 %returnVal2.0.i.i, i32* @"'lowerDriverReturn", align 4
  br label %FloppyPnp_IofCallDriver.exit.i

FloppyPnp_bb31:                                   ; preds = %FloppyPnp_bb29
  %"85" = load i32* @"'NP", align 4
  store i32 %"85", i32* @"'s", align 4
  store i32 %returnVal2.0.i.i, i32* @"'lowerDriverReturn", align 4
  br label %FloppyPnp_IofCallDriver.exit.i

FloppyPnp_bb32:                                   ; preds = %FloppyPnp_bb28
  %"86" = load i32* @"'s", align 4
  %"87" = load i32* @"'SKIP1", align 4
  %"88" = icmp eq i32 %"86", %"87"
  br i1 %"88", label %FloppyPnp_bb33, label %FloppyPnp_bb70

FloppyPnp_bb33:                                   ; preds = %FloppyPnp_bb32
  %"89" = load i32* @"'SKIP2", align 4
  store i32 %"89", i32* @"'s", align 4
  store i32 %returnVal2.0.i.i, i32* @"'lowerDriverReturn", align 4
  br label %FloppyPnp_IofCallDriver.exit.i

FloppyPnp_IofCallDriver.exit.i:                   ; preds = %FloppyPnp_bb33, %FloppyPnp_bb31, %FloppyPnp_bb30, %FloppyPnp_bb27
  %"90" = sext i32 %returnVal2.0.i.i to i64
  %"91" = icmp eq i64 %"90", 259
  br i1 %"91", label %FloppyPnp_bb34, label %FloppyPnp_bb40

FloppyPnp_bb34:                                   ; preds = %FloppyPnp_IofCallDriver.exit.i
  %"92" = load i32* @"'s", align 4
  %"93" = load i32* @"'MPR3", align 4
  %"94" = icmp eq i32 %"92", %"93"
  %"95" = load i32* @"'setEventCalled", align 4
  %"96" = icmp eq i32 %"95", 1
  %or.cond.i.i = and i1 %"94", %"96"
  br i1 %or.cond.i.i, label %FloppyPnp_bb35, label %FloppyPnp_bb36

FloppyPnp_bb35:                                   ; preds = %FloppyPnp_bb34
  %"97" = load i32* @"'NP", align 4
  store i32 %"97", i32* @"'s", align 4
  store i32 0, i32* @"'setEventCalled", align 4
  br label %FloppyPnp_KeWaitForSingleObject.exit.i

FloppyPnp_bb36:                                   ; preds = %FloppyPnp_bb34
  %"98" = load i32* @"'customIrp", align 4
  %"99" = icmp eq i32 %"98", 1
  br i1 %"99", label %FloppyPnp_bb37, label %FloppyPnp_bb38

FloppyPnp_bb37:                                   ; preds = %FloppyPnp_bb36
  %"100" = load i32* @"'NP", align 4
  store i32 %"100", i32* @"'s", align 4
  store i32 0, i32* @"'customIrp", align 4
  br label %FloppyPnp_KeWaitForSingleObject.exit.i

FloppyPnp_bb38:                                   ; preds = %FloppyPnp_bb36
  %"101" = load i32* @"'s", align 4
  %"102" = load i32* @"'MPR3", align 4
  %"103" = icmp eq i32 %"101", %"102"
  br i1 %"103", label %FloppyPnp_bb39, label %FloppyPnp_KeWaitForSingleObject.exit.i

FloppyPnp_bb39:                                   ; preds = %FloppyPnp_bb38
  call void (...)* @__VERIFIER_error() #5
  unreachable

FloppyPnp_KeWaitForSingleObject.exit.i:           ; preds = %FloppyPnp_bb38, %FloppyPnp_bb37, %FloppyPnp_bb35
  %"104" = call i32 @__VERIFIER_nondet_int() #4
  br label %FloppyPnp_bb40

FloppyPnp_bb40:                                   ; preds = %FloppyPnp_KeWaitForSingleObject.exit.i, %FloppyPnp_IofCallDriver.exit.i
  %"105" = call i32 @__VERIFIER_nondet_int() #4
  %"106" = call i32 @__VERIFIER_nondet_int() #4
  %"107" = call i32 @__VERIFIER_nondet_int() #4
  %"108" = call i32 @__VERIFIER_nondet_int() #4
  store i32 1, i32* @"'customIrp", align 4
  %"109" = call i32 @__VERIFIER_nondet_int() #4
  %"110" = icmp eq i32 %"109", 0
  %.0.i.i.i = select i1 %"110", i32 %"108", i32 0
  %"111" = icmp eq i32 %.0.i.i.i, 0
  br i1 %"111", label %FloppyPnp_FlFdcDeviceIo.exit.i, label %FloppyPnp_bb41

FloppyPnp_bb41:                                   ; preds = %FloppyPnp_bb40
  %"112" = call i32 @__VERIFIER_nondet_int() #4
  %"113" = load i32* @"'compRegistered", align 4
  %"114" = icmp ne i32 %"113", 0
  br i1 %"114", label %FloppyPnp_bb42, label %FloppyPnp_bb44

FloppyPnp_bb42:                                   ; preds = %FloppyPnp_bb41
  %"115" = call i32 @__VERIFIER_nondet_int() #4
  store i32 1, i32* @"'setEventCalled", align 4
  %"116" = load i32* @"'s", align 4
  %"117" = load i32* @"'NP", align 4
  %"118" = icmp eq i32 %"116", %"117"
  br i1 %"118", label %FloppyPnp_stubMoreProcessingRequired.exit.i.i.i, label %FloppyPnp_bb43

FloppyPnp_stubMoreProcessingRequired.exit.i.i.i:  ; preds = %FloppyPnp_bb42
  %"119" = load i32* @"'MPR1", align 4
  store i32 %"119", i32* @"'s", align 4
  br label %FloppyPnp_bb44

FloppyPnp_bb43:                                   ; preds = %FloppyPnp_bb42
  call void (...)* @__VERIFIER_error() #5
  unreachable

FloppyPnp_bb44:                                   ; preds = %FloppyPnp_stubMoreProcessingRequired.exit.i.i.i, %FloppyPnp_bb41
  %"120" = call i32 @__VERIFIER_nondet_int() #4
  %"121" = icmp eq i32 %"120", 0
  br i1 %"121", label %FloppyPnp_bb46, label %FloppyPnp_bb45

FloppyPnp_bb45:                                   ; preds = %FloppyPnp_bb44
  %"122" = call i32 @__VERIFIER_nondet_int() #4
  %"123" = icmp eq i32 %"122", 1
  %..i.i.i = select i1 %"123", i32 -1073741823, i32 259
  br label %FloppyPnp_bb46

FloppyPnp_bb46:                                   ; preds = %FloppyPnp_bb45, %FloppyPnp_bb44
  %returnVal2.0.i.i.i = phi i32 [ 0, %FloppyPnp_bb44 ], [ %..i.i.i, %FloppyPnp_bb45 ]
  %"124" = load i32* @"'s", align 4
  %"125" = load i32* @"'NP", align 4
  %"126" = icmp eq i32 %"124", %"125"
  br i1 %"126", label %FloppyPnp_bb47, label %FloppyPnp_bb48

FloppyPnp_bb47:                                   ; preds = %FloppyPnp_bb46
  %"127" = load i32* @"'IPC", align 4
  store i32 %"127", i32* @"'s", align 4
  store i32 %returnVal2.0.i.i.i, i32* @"'lowerDriverReturn", align 4
  br label %FloppyPnp_IofCallDriver.exit.i.i

FloppyPnp_bb48:                                   ; preds = %FloppyPnp_bb46
  %"128" = load i32* @"'s", align 4
  %"129" = load i32* @"'MPR1", align 4
  %"130" = icmp eq i32 %"128", %"129"
  br i1 %"130", label %FloppyPnp_bb49, label %FloppyPnp_bb52

FloppyPnp_bb49:                                   ; preds = %FloppyPnp_bb48
  %"131" = icmp eq i32 %returnVal2.0.i.i.i, 259
  br i1 %"131", label %FloppyPnp_bb50, label %FloppyPnp_bb51

FloppyPnp_bb50:                                   ; preds = %FloppyPnp_bb49
  %"132" = load i32* @"'MPR3", align 4
  store i32 %"132", i32* @"'s", align 4
  store i32 %returnVal2.0.i.i.i, i32* @"'lowerDriverReturn", align 4
  br label %FloppyPnp_IofCallDriver.exit.i.i

FloppyPnp_bb51:                                   ; preds = %FloppyPnp_bb49
  %"133" = load i32* @"'NP", align 4
  store i32 %"133", i32* @"'s", align 4
  store i32 %returnVal2.0.i.i.i, i32* @"'lowerDriverReturn", align 4
  br label %FloppyPnp_IofCallDriver.exit.i.i

FloppyPnp_bb52:                                   ; preds = %FloppyPnp_bb48
  %"134" = load i32* @"'s", align 4
  %"135" = load i32* @"'SKIP1", align 4
  %"136" = icmp eq i32 %"134", %"135"
  br i1 %"136", label %FloppyPnp_bb53, label %FloppyPnp_bb69

FloppyPnp_bb53:                                   ; preds = %FloppyPnp_bb52
  %"137" = load i32* @"'SKIP2", align 4
  store i32 %"137", i32* @"'s", align 4
  store i32 %returnVal2.0.i.i.i, i32* @"'lowerDriverReturn", align 4
  br label %FloppyPnp_IofCallDriver.exit.i.i

FloppyPnp_IofCallDriver.exit.i.i:                 ; preds = %FloppyPnp_bb53, %FloppyPnp_bb51, %FloppyPnp_bb50, %FloppyPnp_bb47
  %"138" = sext i32 %returnVal2.0.i.i.i to i64
  %"139" = icmp eq i64 %"138", 259
  br i1 %"139", label %FloppyPnp_bb54, label %FloppyPnp_FlFdcDeviceIo.exit.i

FloppyPnp_bb54:                                   ; preds = %FloppyPnp_IofCallDriver.exit.i.i
  %"140" = load i32* @"'s", align 4
  %"141" = load i32* @"'MPR3", align 4
  %"142" = icmp eq i32 %"140", %"141"
  %"143" = load i32* @"'setEventCalled", align 4
  %"144" = icmp eq i32 %"143", 1
  %or.cond.i.i.i = and i1 %"142", %"144"
  br i1 %or.cond.i.i.i, label %FloppyPnp_bb55, label %FloppyPnp_bb56

FloppyPnp_bb55:                                   ; preds = %FloppyPnp_bb54
  %"145" = load i32* @"'NP", align 4
  store i32 %"145", i32* @"'s", align 4
  store i32 0, i32* @"'setEventCalled", align 4
  br label %FloppyPnp_KeWaitForSingleObject.exit.i.i

FloppyPnp_bb56:                                   ; preds = %FloppyPnp_bb54
  %"146" = load i32* @"'customIrp", align 4
  %"147" = icmp eq i32 %"146", 1
  br i1 %"147", label %FloppyPnp_bb57, label %FloppyPnp_bb58

FloppyPnp_bb57:                                   ; preds = %FloppyPnp_bb56
  %"148" = load i32* @"'NP", align 4
  store i32 %"148", i32* @"'s", align 4
  store i32 0, i32* @"'customIrp", align 4
  br label %FloppyPnp_KeWaitForSingleObject.exit.i.i

FloppyPnp_bb58:                                   ; preds = %FloppyPnp_bb56
  %"149" = load i32* @"'s", align 4
  %"150" = load i32* @"'MPR3", align 4
  %"151" = icmp eq i32 %"149", %"150"
  br i1 %"151", label %FloppyPnp_bb59, label %FloppyPnp_KeWaitForSingleObject.exit.i.i

FloppyPnp_bb59:                                   ; preds = %FloppyPnp_bb58
  call void (...)* @__VERIFIER_error() #5
  unreachable

FloppyPnp_KeWaitForSingleObject.exit.i.i:         ; preds = %FloppyPnp_bb58, %FloppyPnp_bb57, %FloppyPnp_bb55
  %"152" = call i32 @__VERIFIER_nondet_int() #4
  %"153" = load i32* @"'myStatus", align 4
  br label %FloppyPnp_FlFdcDeviceIo.exit.i

FloppyPnp_FlFdcDeviceIo.exit.i:                   ; preds = %FloppyPnp_KeWaitForSingleObject.exit.i.i, %FloppyPnp_IofCallDriver.exit.i.i, %FloppyPnp_bb40
  %.0.i2.i = phi i32 [ -1073741670, %FloppyPnp_bb40 ], [ %"153", %FloppyPnp_KeWaitForSingleObject.exit.i.i ], [ %returnVal2.0.i.i.i, %FloppyPnp_IofCallDriver.exit.i.i ]
  %"154" = icmp sge i32 %.0.i2.i, 0
  br i1 %"154", label %FloppyPnp_bb60, label %FloppyPnp_bb67

FloppyPnp_bb60:                                   ; preds = %FloppyPnp_FlFdcDeviceIo.exit.i
  %"155" = icmp ne i32 %"52", 0
  %"156" = icmp ne i32 %"53", 0
  %or.cond.i = and i1 %"155", %"156"
  br i1 %or.cond.i, label %FloppyPnp_bb63, label %FloppyPnp_bb61

FloppyPnp_bb61:                                   ; preds = %FloppyPnp_bb66, %FloppyPnp_bb60
  %InterfaceType.0.i = phi i32 [ %"165", %FloppyPnp_bb66 ], [ 0, %FloppyPnp_bb60 ]
  %ntStatus.0.i = phi i32 [ %.0.i3.i, %FloppyPnp_bb66 ], [ %.0.i2.i, %FloppyPnp_bb60 ]
  %"157" = load i32* @"'MaximumInterfaceType", align 4
  %"158" = icmp sge i32 %InterfaceType.0.i, %"157"
  br i1 %"158", label %FloppyPnp_bb63, label %FloppyPnp_bb62

FloppyPnp_bb62:                                   ; preds = %FloppyPnp_bb61
  %"159" = call i32 @__VERIFIER_nondet_int() #4
  %"160" = icmp eq i32 %"159", 0
  %.0.i3.i = select i1 %"160", i32 0, i32 -1073741823
  br i1 %"160", label %FloppyPnp_bb63, label %FloppyPnp_bb66

FloppyPnp_bb63:                                   ; preds = %FloppyPnp_bb62, %FloppyPnp_bb61, %FloppyPnp_bb60
  %ntStatus.2.i = phi i32 [ %ntStatus.0.i, %FloppyPnp_bb61 ], [ %.0.i3.i, %FloppyPnp_bb62 ], [ 0, %FloppyPnp_bb60 ]
  %"161" = icmp sge i32 %ntStatus.2.i, 0
  br i1 %"161", label %FloppyPnp_bb64, label %FloppyPnp_bb67

FloppyPnp_bb64:                                   ; preds = %FloppyPnp_bb63
  %"162" = call i32 @__VERIFIER_nondet_int() #4
  %"163" = icmp eq i32 %"162", 0
  br i1 %"163", label %FloppyPnp_bb65, label %FloppyPnp_bb67

FloppyPnp_bb65:                                   ; preds = %FloppyPnp_bb64
  %"164" = call i32 @__VERIFIER_nondet_int() #4
  br label %FloppyPnp_bb67

FloppyPnp_bb66:                                   ; preds = %FloppyPnp_bb62
  %"165" = add nsw i32 %InterfaceType.0.i, 1
  br label %FloppyPnp_bb61

FloppyPnp_bb67:                                   ; preds = %FloppyPnp_bb65, %FloppyPnp_bb64, %FloppyPnp_bb63, %FloppyPnp_FlFdcDeviceIo.exit.i
  %ntStatus.3.i = phi i32 [ %.0.i2.i, %FloppyPnp_FlFdcDeviceIo.exit.i ], [ %ntStatus.2.i, %FloppyPnp_bb64 ], [ %ntStatus.2.i, %FloppyPnp_bb65 ], [ %ntStatus.2.i, %FloppyPnp_bb63 ]
  store i32 %ntStatus.3.i, i32* @"'myStatus", align 4
  %"166" = load i32* @"'s", align 4
  %"167" = load i32* @"'NP", align 4
  %"168" = icmp eq i32 %"166", %"167"
  br i1 %"168", label %FloppyPnp_FloppyStartDevice.exit, label %FloppyPnp_bb68

FloppyPnp_FloppyStartDevice.exit:                 ; preds = %FloppyPnp_bb67
  %"169" = load i32* @"'DC", align 4
  store i32 %"169", i32* @"'s", align 4
  br label %FloppyPnp_IofCallDriver.exit40

FloppyPnp_bb68:                                   ; preds = %FloppyPnp_bb67
  call void (...)* @__VERIFIER_error() #5
  unreachable

FloppyPnp_bb69:                                   ; preds = %FloppyPnp_bb52
  call void (...)* @__VERIFIER_error() #5
  unreachable

FloppyPnp_bb70:                                   ; preds = %FloppyPnp_bb32
  call void (...)* @__VERIFIER_error() #5
  unreachable

FloppyPnp_NodeBlock:                              ; preds = %FloppyPnp_NodeBlock41
  %Pivot = icmp slt i32 %"33", 2
  br i1 %Pivot, label %FloppyPnp_bb106, label %FloppyPnp_bb71

FloppyPnp_bb71:                                   ; preds = %FloppyPnp_NodeBlock
  %"170" = load i32* @"'s", align 4
  %"171" = load i32* @"'NP", align 4
  %"172" = icmp eq i32 %"170", %"171"
  br i1 %"172", label %FloppyPnp_bb72, label %FloppyPnp_bb89

FloppyPnp_bb72:                                   ; preds = %FloppyPnp_bb71
  %"173" = load i32* @"'SKIP1", align 4
  store i32 %"173", i32* @"'s", align 4
  store i32 0, i32* @"'myStatus", align 4
  %"174" = call i32 @__VERIFIER_nondet_int() #4
  %"175" = load i32* @"'compRegistered", align 4
  %"176" = icmp ne i32 %"175", 0
  br i1 %"176", label %FloppyPnp_bb73, label %FloppyPnp_bb75

FloppyPnp_bb73:                                   ; preds = %FloppyPnp_bb72
  %"177" = call i32 @__VERIFIER_nondet_int() #4
  store i32 1, i32* @"'setEventCalled", align 4
  %"178" = load i32* @"'s", align 4
  %"179" = load i32* @"'NP", align 4
  %"180" = icmp eq i32 %"178", %"179"
  br i1 %"180", label %FloppyPnp_stubMoreProcessingRequired.exit.i30, label %FloppyPnp_bb74

FloppyPnp_stubMoreProcessingRequired.exit.i30:    ; preds = %FloppyPnp_bb73
  %"181" = load i32* @"'MPR1", align 4
  store i32 %"181", i32* @"'s", align 4
  br label %FloppyPnp_bb75

FloppyPnp_bb74:                                   ; preds = %FloppyPnp_bb73
  call void (...)* @__VERIFIER_error() #5
  unreachable

FloppyPnp_bb75:                                   ; preds = %FloppyPnp_stubMoreProcessingRequired.exit.i30, %FloppyPnp_bb72
  %"182" = call i32 @__VERIFIER_nondet_int() #4
  %"183" = icmp eq i32 %"182", 0
  br i1 %"183", label %FloppyPnp_bb77, label %FloppyPnp_bb76

FloppyPnp_bb76:                                   ; preds = %FloppyPnp_bb75
  %"184" = call i32 @__VERIFIER_nondet_int() #4
  %"185" = icmp eq i32 %"184", 1
  %..i31 = select i1 %"185", i32 -1073741823, i32 259
  br label %FloppyPnp_bb77

FloppyPnp_bb77:                                   ; preds = %FloppyPnp_bb76, %FloppyPnp_bb75
  %returnVal2.0.i32 = phi i32 [ 0, %FloppyPnp_bb75 ], [ %..i31, %FloppyPnp_bb76 ]
  %"186" = load i32* @"'s", align 4
  %"187" = load i32* @"'NP", align 4
  %"188" = icmp eq i32 %"186", %"187"
  br i1 %"188", label %FloppyPnp_bb78, label %FloppyPnp_bb79

FloppyPnp_bb78:                                   ; preds = %FloppyPnp_bb77
  %"189" = load i32* @"'IPC", align 4
  store i32 %"189", i32* @"'s", align 4
  store i32 %returnVal2.0.i32, i32* @"'lowerDriverReturn", align 4
  br label %FloppyPnp_IofCallDriver.exit33

FloppyPnp_bb79:                                   ; preds = %FloppyPnp_bb77
  %"190" = load i32* @"'s", align 4
  %"191" = load i32* @"'MPR1", align 4
  %"192" = icmp eq i32 %"190", %"191"
  br i1 %"192", label %FloppyPnp_bb80, label %FloppyPnp_bb83

FloppyPnp_bb80:                                   ; preds = %FloppyPnp_bb79
  %"193" = icmp eq i32 %returnVal2.0.i32, 259
  br i1 %"193", label %FloppyPnp_bb81, label %FloppyPnp_bb82

FloppyPnp_bb81:                                   ; preds = %FloppyPnp_bb80
  %"194" = load i32* @"'MPR3", align 4
  store i32 %"194", i32* @"'s", align 4
  store i32 %returnVal2.0.i32, i32* @"'lowerDriverReturn", align 4
  br label %FloppyPnp_IofCallDriver.exit33

FloppyPnp_bb82:                                   ; preds = %FloppyPnp_bb80
  %"195" = load i32* @"'NP", align 4
  store i32 %"195", i32* @"'s", align 4
  store i32 %returnVal2.0.i32, i32* @"'lowerDriverReturn", align 4
  br label %FloppyPnp_IofCallDriver.exit33

FloppyPnp_bb83:                                   ; preds = %FloppyPnp_bb79
  %"196" = load i32* @"'s", align 4
  %"197" = load i32* @"'SKIP1", align 4
  %"198" = icmp eq i32 %"196", %"197"
  br i1 %"198", label %FloppyPnp_bb84, label %FloppyPnp_bb88

FloppyPnp_bb84:                                   ; preds = %FloppyPnp_bb83
  %"199" = load i32* @"'SKIP2", align 4
  store i32 %"199", i32* @"'s", align 4
  store i32 %returnVal2.0.i32, i32* @"'lowerDriverReturn", align 4
  br label %FloppyPnp_IofCallDriver.exit33

FloppyPnp_IofCallDriver.exit33:                   ; preds = %FloppyPnp_bb78, %FloppyPnp_bb81, %FloppyPnp_bb82, %FloppyPnp_bb84
  %"200" = icmp ne i32 %"29", 0
  br i1 %"200", label %FloppyPnp_bb85, label %FloppyPnp_bb86

FloppyPnp_bb85:                                   ; preds = %FloppyPnp_IofCallDriver.exit33
  %"201" = call i32 @__VERIFIER_nondet_int() #4
  br label %FloppyPnp_bb86

FloppyPnp_bb86:                                   ; preds = %FloppyPnp_bb85, %FloppyPnp_IofCallDriver.exit33
  %"202" = icmp ne i32 %"31", 0
  br i1 %"202", label %FloppyPnp_bb87, label %FloppyPnp_IofCallDriver.exit40

FloppyPnp_bb87:                                   ; preds = %FloppyPnp_bb86
  %"203" = call i32 @__VERIFIER_nondet_int() #4
  br label %FloppyPnp_IofCallDriver.exit40

FloppyPnp_bb88:                                   ; preds = %FloppyPnp_bb83
  call void (...)* @__VERIFIER_error() #5
  unreachable

FloppyPnp_bb89:                                   ; preds = %FloppyPnp_bb71
  call void (...)* @__VERIFIER_error() #5
  unreachable

FloppyPnp_NodeBlock49:                            ; preds = %FloppyPnp_NodeBlock51
  %Pivot50 = icmp slt i32 %"33", 5
  br i1 %Pivot50, label %FloppyPnp_NodeBlock43, label %FloppyPnp_NodeBlock47

FloppyPnp_NodeBlock43:                            ; preds = %FloppyPnp_NodeBlock49
  %Pivot44 = icmp slt i32 %"33", 4
  br i1 %Pivot44, label %FloppyPnp_bb155, label %FloppyPnp_bb90

FloppyPnp_bb90:                                   ; preds = %FloppyPnp_NodeBlock43
  store i32 0, i32* @"'myStatus", align 4
  %"204" = load i32* @"'s", align 4
  %"205" = load i32* @"'NP", align 4
  %"206" = icmp eq i32 %"204", %"205"
  br i1 %"206", label %FloppyPnp_bb91, label %FloppyPnp_bb105

FloppyPnp_bb91:                                   ; preds = %FloppyPnp_bb90
  %"207" = load i32* @"'SKIP1", align 4
  store i32 %"207", i32* @"'s", align 4
  %"208" = call i32 @__VERIFIER_nondet_int() #4
  %"209" = load i32* @"'compRegistered", align 4
  %"210" = icmp ne i32 %"209", 0
  br i1 %"210", label %FloppyPnp_bb92, label %FloppyPnp_bb94

FloppyPnp_bb92:                                   ; preds = %FloppyPnp_bb91
  %"211" = call i32 @__VERIFIER_nondet_int() #4
  store i32 1, i32* @"'setEventCalled", align 4
  %"212" = load i32* @"'s", align 4
  %"213" = load i32* @"'NP", align 4
  %"214" = icmp eq i32 %"212", %"213"
  br i1 %"214", label %FloppyPnp_stubMoreProcessingRequired.exit.i25, label %FloppyPnp_bb93

FloppyPnp_stubMoreProcessingRequired.exit.i25:    ; preds = %FloppyPnp_bb92
  %"215" = load i32* @"'MPR1", align 4
  store i32 %"215", i32* @"'s", align 4
  br label %FloppyPnp_bb94

FloppyPnp_bb93:                                   ; preds = %FloppyPnp_bb92
  call void (...)* @__VERIFIER_error() #5
  unreachable

FloppyPnp_bb94:                                   ; preds = %FloppyPnp_stubMoreProcessingRequired.exit.i25, %FloppyPnp_bb91
  %"216" = call i32 @__VERIFIER_nondet_int() #4
  %"217" = icmp eq i32 %"216", 0
  br i1 %"217", label %FloppyPnp_bb96, label %FloppyPnp_bb95

FloppyPnp_bb95:                                   ; preds = %FloppyPnp_bb94
  %"218" = call i32 @__VERIFIER_nondet_int() #4
  %"219" = icmp eq i32 %"218", 1
  %..i26 = select i1 %"219", i32 -1073741823, i32 259
  br label %FloppyPnp_bb96

FloppyPnp_bb96:                                   ; preds = %FloppyPnp_bb95, %FloppyPnp_bb94
  %returnVal2.0.i27 = phi i32 [ 0, %FloppyPnp_bb94 ], [ %..i26, %FloppyPnp_bb95 ]
  %"220" = load i32* @"'s", align 4
  %"221" = load i32* @"'NP", align 4
  %"222" = icmp eq i32 %"220", %"221"
  br i1 %"222", label %FloppyPnp_bb97, label %FloppyPnp_bb98

FloppyPnp_bb97:                                   ; preds = %FloppyPnp_bb96
  %"223" = load i32* @"'IPC", align 4
  store i32 %"223", i32* @"'s", align 4
  store i32 %returnVal2.0.i27, i32* @"'lowerDriverReturn", align 4
  br label %FloppyPnp_IofCallDriver.exit40

FloppyPnp_bb98:                                   ; preds = %FloppyPnp_bb96
  %"224" = load i32* @"'s", align 4
  %"225" = load i32* @"'MPR1", align 4
  %"226" = icmp eq i32 %"224", %"225"
  br i1 %"226", label %FloppyPnp_bb99, label %FloppyPnp_bb102

FloppyPnp_bb99:                                   ; preds = %FloppyPnp_bb98
  %"227" = icmp eq i32 %returnVal2.0.i27, 259
  br i1 %"227", label %FloppyPnp_bb100, label %FloppyPnp_bb101

FloppyPnp_bb100:                                  ; preds = %FloppyPnp_bb99
  %"228" = load i32* @"'MPR3", align 4
  store i32 %"228", i32* @"'s", align 4
  store i32 %returnVal2.0.i27, i32* @"'lowerDriverReturn", align 4
  br label %FloppyPnp_IofCallDriver.exit40

FloppyPnp_bb101:                                  ; preds = %FloppyPnp_bb99
  %"229" = load i32* @"'NP", align 4
  store i32 %"229", i32* @"'s", align 4
  store i32 %returnVal2.0.i27, i32* @"'lowerDriverReturn", align 4
  br label %FloppyPnp_IofCallDriver.exit40

FloppyPnp_bb102:                                  ; preds = %FloppyPnp_bb98
  %"230" = load i32* @"'s", align 4
  %"231" = load i32* @"'SKIP1", align 4
  %"232" = icmp eq i32 %"230", %"231"
  br i1 %"232", label %FloppyPnp_bb103, label %FloppyPnp_bb104

FloppyPnp_bb103:                                  ; preds = %FloppyPnp_bb102
  %"233" = load i32* @"'SKIP2", align 4
  store i32 %"233", i32* @"'s", align 4
  store i32 %returnVal2.0.i27, i32* @"'lowerDriverReturn", align 4
  br label %FloppyPnp_IofCallDriver.exit40

FloppyPnp_bb104:                                  ; preds = %FloppyPnp_bb102
  call void (...)* @__VERIFIER_error() #5
  unreachable

FloppyPnp_bb105:                                  ; preds = %FloppyPnp_bb90
  call void (...)* @__VERIFIER_error() #5
  unreachable

FloppyPnp_NodeBlock47:                            ; preds = %FloppyPnp_NodeBlock49
  %Pivot48 = icmp slt i32 %"33", 6
  br i1 %Pivot48, label %FloppyPnp_bb106, label %FloppyPnp_LeafBlock45

FloppyPnp_bb106:                                  ; preds = %FloppyPnp_NodeBlock47, %FloppyPnp_NodeBlock
  %"234" = icmp ne i32 %"26", 0
  br i1 %"234", label %FloppyPnp_bb107, label %FloppyPnp_bb139

FloppyPnp_bb107:                                  ; preds = %FloppyPnp_bb106
  %"235" = call i32 @__VERIFIER_nondet_int() #4
  %"236" = call i32 @__VERIFIER_nondet_int() #4
  %"237" = call i32 @__VERIFIER_nondet_int() #4
  %"238" = call i32 @__VERIFIER_nondet_int() #4
  %"239" = call i32 @__VERIFIER_nondet_int() #4
  %"240" = icmp eq i32 %"236", 1
  br i1 %"240", label %FloppyPnp_bb108, label %FloppyPnp_bb109

FloppyPnp_bb108:                                  ; preds = %FloppyPnp_bb107
  store i32 -1073741101, i32* @"'myStatus", align 4
  br label %FloppyPnp_FlQueueIrpToThread.exit

FloppyPnp_bb109:                                  ; preds = %FloppyPnp_bb107
  %"241" = add nsw i32 %"237", 1
  %"242" = icmp eq i32 %"241", 0
  br i1 %"242", label %FloppyPnp_bb110, label %FloppyPnp_bb113

FloppyPnp_bb110:                                  ; preds = %FloppyPnp_bb109
  %"243" = load i32* @"'PagingReferenceCount", align 4
  %"244" = add nsw i32 %"243", 1
  store i32 %"244", i32* @"'PagingReferenceCount", align 4
  %"245" = call i32 @__VERIFIER_nondet_int() #4
  %"246" = icmp eq i32 %"245", 0
  %.0.i.i = select i1 %"246", i32 0, i32 -1073741823
  %"247" = icmp slt i32 %.0.i.i, 0
  br i1 %"247", label %FloppyPnp_bb111, label %FloppyPnp_bb112

FloppyPnp_bb111:                                  ; preds = %FloppyPnp_bb110
  %"248" = load i32* @"'PagingReferenceCount", align 4
  %"249" = add nsw i32 %"248", -1
  store i32 %"249", i32* @"'PagingReferenceCount", align 4
  br label %FloppyPnp_FlQueueIrpToThread.exit

FloppyPnp_bb112:                                  ; preds = %FloppyPnp_bb110
  %"250" = call i32 @__VERIFIER_nondet_int() #4
  %"251" = icmp eq i32 %"250", 0
  %.0.i1.i = select i1 %"251", i32 0, i32 -1073741823
  %"252" = call i32 @__VERIFIER_nondet_int() #4
  %"253" = icmp slt i32 %.0.i1.i, 0
  br i1 %"253", label %FloppyPnp_FlQueueIrpToThread.exit, label %FloppyPnp_bb113

FloppyPnp_bb113:                                  ; preds = %FloppyPnp_bb112, %FloppyPnp_bb109
  %"254" = load i32* @"'pended", align 4
  %"255" = icmp eq i32 %"254", 0
  br i1 %"255", label %FloppyPnp_bb114, label %FloppyPnp_bb138

FloppyPnp_bb114:                                  ; preds = %FloppyPnp_bb113
  store i32 1, i32* @"'pended", align 4
  br label %FloppyPnp_FlQueueIrpToThread.exit

FloppyPnp_FlQueueIrpToThread.exit:                ; preds = %FloppyPnp_bb108, %FloppyPnp_bb111, %FloppyPnp_bb112, %FloppyPnp_bb114
  %.0.i = phi i32 [ -1073741101, %FloppyPnp_bb108 ], [ %.0.i.i, %FloppyPnp_bb111 ], [ 259, %FloppyPnp_bb114 ], [ %.0.i1.i, %FloppyPnp_bb112 ]
  %"256" = sext i32 %.0.i to i64
  %"257" = icmp eq i64 %"256", 259
  br i1 %"257", label %FloppyPnp_bb115, label %FloppyPnp_bb136

FloppyPnp_bb115:                                  ; preds = %FloppyPnp_FlQueueIrpToThread.exit
  %"258" = load i32* @"'s", align 4
  %"259" = load i32* @"'MPR3", align 4
  %"260" = icmp eq i32 %"258", %"259"
  %"261" = load i32* @"'setEventCalled", align 4
  %"262" = icmp eq i32 %"261", 1
  %or.cond.i1 = and i1 %"260", %"262"
  br i1 %or.cond.i1, label %FloppyPnp_bb116, label %FloppyPnp_bb117

FloppyPnp_bb116:                                  ; preds = %FloppyPnp_bb115
  %"263" = load i32* @"'NP", align 4
  store i32 %"263", i32* @"'s", align 4
  store i32 0, i32* @"'setEventCalled", align 4
  br label %FloppyPnp_KeWaitForSingleObject.exit

FloppyPnp_bb117:                                  ; preds = %FloppyPnp_bb115
  %"264" = load i32* @"'customIrp", align 4
  %"265" = icmp eq i32 %"264", 1
  br i1 %"265", label %FloppyPnp_bb118, label %FloppyPnp_bb119

FloppyPnp_bb118:                                  ; preds = %FloppyPnp_bb117
  %"266" = load i32* @"'NP", align 4
  store i32 %"266", i32* @"'s", align 4
  store i32 0, i32* @"'customIrp", align 4
  br label %FloppyPnp_KeWaitForSingleObject.exit

FloppyPnp_bb119:                                  ; preds = %FloppyPnp_bb117
  %"267" = load i32* @"'s", align 4
  %"268" = load i32* @"'MPR3", align 4
  %"269" = icmp eq i32 %"267", %"268"
  br i1 %"269", label %FloppyPnp_bb120, label %FloppyPnp_KeWaitForSingleObject.exit

FloppyPnp_bb120:                                  ; preds = %FloppyPnp_bb119
  call void (...)* @__VERIFIER_error() #5
  unreachable

FloppyPnp_KeWaitForSingleObject.exit:             ; preds = %FloppyPnp_bb116, %FloppyPnp_bb118, %FloppyPnp_bb119
  %"270" = call i32 @__VERIFIER_nondet_int() #4
  store i32 0, i32* @"'myStatus", align 4
  %"271" = load i32* @"'s", align 4
  %"272" = load i32* @"'NP", align 4
  %"273" = icmp eq i32 %"271", %"272"
  br i1 %"273", label %FloppyPnp_bb121, label %FloppyPnp_bb135

FloppyPnp_bb121:                                  ; preds = %FloppyPnp_KeWaitForSingleObject.exit
  %"274" = load i32* @"'SKIP1", align 4
  store i32 %"274", i32* @"'s", align 4
  %"275" = call i32 @__VERIFIER_nondet_int() #4
  %"276" = load i32* @"'compRegistered", align 4
  %"277" = icmp ne i32 %"276", 0
  br i1 %"277", label %FloppyPnp_bb122, label %FloppyPnp_bb124

FloppyPnp_bb122:                                  ; preds = %FloppyPnp_bb121
  %"278" = call i32 @__VERIFIER_nondet_int() #4
  store i32 1, i32* @"'setEventCalled", align 4
  %"279" = load i32* @"'s", align 4
  %"280" = load i32* @"'NP", align 4
  %"281" = icmp eq i32 %"279", %"280"
  br i1 %"281", label %FloppyPnp_stubMoreProcessingRequired.exit.i4, label %FloppyPnp_bb123

FloppyPnp_stubMoreProcessingRequired.exit.i4:     ; preds = %FloppyPnp_bb122
  %"282" = load i32* @"'MPR1", align 4
  store i32 %"282", i32* @"'s", align 4
  br label %FloppyPnp_bb124

FloppyPnp_bb123:                                  ; preds = %FloppyPnp_bb122
  call void (...)* @__VERIFIER_error() #5
  unreachable

FloppyPnp_bb124:                                  ; preds = %FloppyPnp_stubMoreProcessingRequired.exit.i4, %FloppyPnp_bb121
  %"283" = call i32 @__VERIFIER_nondet_int() #4
  %"284" = icmp eq i32 %"283", 0
  br i1 %"284", label %FloppyPnp_bb126, label %FloppyPnp_bb125

FloppyPnp_bb125:                                  ; preds = %FloppyPnp_bb124
  %"285" = call i32 @__VERIFIER_nondet_int() #4
  %"286" = icmp eq i32 %"285", 1
  %..i5 = select i1 %"286", i32 -1073741823, i32 259
  br label %FloppyPnp_bb126

FloppyPnp_bb126:                                  ; preds = %FloppyPnp_bb125, %FloppyPnp_bb124
  %returnVal2.0.i6 = phi i32 [ 0, %FloppyPnp_bb124 ], [ %..i5, %FloppyPnp_bb125 ]
  %"287" = load i32* @"'s", align 4
  %"288" = load i32* @"'NP", align 4
  %"289" = icmp eq i32 %"287", %"288"
  br i1 %"289", label %FloppyPnp_bb127, label %FloppyPnp_bb128

FloppyPnp_bb127:                                  ; preds = %FloppyPnp_bb126
  %"290" = load i32* @"'IPC", align 4
  store i32 %"290", i32* @"'s", align 4
  store i32 %returnVal2.0.i6, i32* @"'lowerDriverReturn", align 4
  br label %FloppyPnp_IofCallDriver.exit40

FloppyPnp_bb128:                                  ; preds = %FloppyPnp_bb126
  %"291" = load i32* @"'s", align 4
  %"292" = load i32* @"'MPR1", align 4
  %"293" = icmp eq i32 %"291", %"292"
  br i1 %"293", label %FloppyPnp_bb129, label %FloppyPnp_bb132

FloppyPnp_bb129:                                  ; preds = %FloppyPnp_bb128
  %"294" = icmp eq i32 %returnVal2.0.i6, 259
  br i1 %"294", label %FloppyPnp_bb130, label %FloppyPnp_bb131

FloppyPnp_bb130:                                  ; preds = %FloppyPnp_bb129
  %"295" = load i32* @"'MPR3", align 4
  store i32 %"295", i32* @"'s", align 4
  store i32 %returnVal2.0.i6, i32* @"'lowerDriverReturn", align 4
  br label %FloppyPnp_IofCallDriver.exit40

FloppyPnp_bb131:                                  ; preds = %FloppyPnp_bb129
  %"296" = load i32* @"'NP", align 4
  store i32 %"296", i32* @"'s", align 4
  store i32 %returnVal2.0.i6, i32* @"'lowerDriverReturn", align 4
  br label %FloppyPnp_IofCallDriver.exit40

FloppyPnp_bb132:                                  ; preds = %FloppyPnp_bb128
  %"297" = load i32* @"'s", align 4
  %"298" = load i32* @"'SKIP1", align 4
  %"299" = icmp eq i32 %"297", %"298"
  br i1 %"299", label %FloppyPnp_bb133, label %FloppyPnp_bb134

FloppyPnp_bb133:                                  ; preds = %FloppyPnp_bb132
  %"300" = load i32* @"'SKIP2", align 4
  store i32 %"300", i32* @"'s", align 4
  store i32 %returnVal2.0.i6, i32* @"'lowerDriverReturn", align 4
  br label %FloppyPnp_IofCallDriver.exit40

FloppyPnp_bb134:                                  ; preds = %FloppyPnp_bb132
  call void (...)* @__VERIFIER_error() #5
  unreachable

FloppyPnp_bb135:                                  ; preds = %FloppyPnp_KeWaitForSingleObject.exit
  call void (...)* @__VERIFIER_error() #5
  unreachable

FloppyPnp_bb136:                                  ; preds = %FloppyPnp_FlQueueIrpToThread.exit
  store i32 -1073741823, i32* @"'myStatus", align 4
  %"301" = load i32* @"'s", align 4
  %"302" = load i32* @"'NP", align 4
  %"303" = icmp eq i32 %"301", %"302"
  br i1 %"303", label %FloppyPnp_IofCompleteRequest.exit8, label %FloppyPnp_bb137

FloppyPnp_IofCompleteRequest.exit8:               ; preds = %FloppyPnp_bb136
  %"304" = load i32* @"'DC", align 4
  store i32 %"304", i32* @"'s", align 4
  br label %FloppyPnp_IofCallDriver.exit40

FloppyPnp_bb137:                                  ; preds = %FloppyPnp_bb136
  call void (...)* @__VERIFIER_error() #5
  unreachable

FloppyPnp_bb138:                                  ; preds = %FloppyPnp_bb113
  call void (...)* @__VERIFIER_error() #5
  unreachable

FloppyPnp_bb139:                                  ; preds = %FloppyPnp_bb106
  %"305" = load i32* @"'s", align 4
  %"306" = load i32* @"'NP", align 4
  %"307" = icmp eq i32 %"305", %"306"
  br i1 %"307", label %FloppyPnp_bb140, label %FloppyPnp_bb154

FloppyPnp_bb140:                                  ; preds = %FloppyPnp_bb139
  %"308" = load i32* @"'SKIP1", align 4
  store i32 %"308", i32* @"'s", align 4
  %"309" = call i32 @__VERIFIER_nondet_int() #4
  %"310" = load i32* @"'compRegistered", align 4
  %"311" = icmp ne i32 %"310", 0
  br i1 %"311", label %FloppyPnp_bb141, label %FloppyPnp_bb143

FloppyPnp_bb141:                                  ; preds = %FloppyPnp_bb140
  %"312" = call i32 @__VERIFIER_nondet_int() #4
  store i32 1, i32* @"'setEventCalled", align 4
  %"313" = load i32* @"'s", align 4
  %"314" = load i32* @"'NP", align 4
  %"315" = icmp eq i32 %"313", %"314"
  br i1 %"315", label %FloppyPnp_stubMoreProcessingRequired.exit.i, label %FloppyPnp_bb142

FloppyPnp_stubMoreProcessingRequired.exit.i:      ; preds = %FloppyPnp_bb141
  %"316" = load i32* @"'MPR1", align 4
  store i32 %"316", i32* @"'s", align 4
  br label %FloppyPnp_bb143

FloppyPnp_bb142:                                  ; preds = %FloppyPnp_bb141
  call void (...)* @__VERIFIER_error() #5
  unreachable

FloppyPnp_bb143:                                  ; preds = %FloppyPnp_stubMoreProcessingRequired.exit.i, %FloppyPnp_bb140
  %"317" = call i32 @__VERIFIER_nondet_int() #4
  %"318" = icmp eq i32 %"317", 0
  br i1 %"318", label %FloppyPnp_bb145, label %FloppyPnp_bb144

FloppyPnp_bb144:                                  ; preds = %FloppyPnp_bb143
  %"319" = call i32 @__VERIFIER_nondet_int() #4
  %"320" = icmp eq i32 %"319", 1
  %..i = select i1 %"320", i32 -1073741823, i32 259
  br label %FloppyPnp_bb145

FloppyPnp_bb145:                                  ; preds = %FloppyPnp_bb144, %FloppyPnp_bb143
  %returnVal2.0.i = phi i32 [ 0, %FloppyPnp_bb143 ], [ %..i, %FloppyPnp_bb144 ]
  %"321" = load i32* @"'s", align 4
  %"322" = load i32* @"'NP", align 4
  %"323" = icmp eq i32 %"321", %"322"
  br i1 %"323", label %FloppyPnp_bb146, label %FloppyPnp_bb147

FloppyPnp_bb146:                                  ; preds = %FloppyPnp_bb145
  %"324" = load i32* @"'IPC", align 4
  store i32 %"324", i32* @"'s", align 4
  store i32 %returnVal2.0.i, i32* @"'lowerDriverReturn", align 4
  br label %FloppyPnp_IofCallDriver.exit

FloppyPnp_bb147:                                  ; preds = %FloppyPnp_bb145
  %"325" = load i32* @"'s", align 4
  %"326" = load i32* @"'MPR1", align 4
  %"327" = icmp eq i32 %"325", %"326"
  br i1 %"327", label %FloppyPnp_bb148, label %FloppyPnp_bb151

FloppyPnp_bb148:                                  ; preds = %FloppyPnp_bb147
  %"328" = icmp eq i32 %returnVal2.0.i, 259
  br i1 %"328", label %FloppyPnp_bb149, label %FloppyPnp_bb150

FloppyPnp_bb149:                                  ; preds = %FloppyPnp_bb148
  %"329" = load i32* @"'MPR3", align 4
  store i32 %"329", i32* @"'s", align 4
  store i32 %returnVal2.0.i, i32* @"'lowerDriverReturn", align 4
  br label %FloppyPnp_IofCallDriver.exit

FloppyPnp_bb150:                                  ; preds = %FloppyPnp_bb148
  %"330" = load i32* @"'NP", align 4
  store i32 %"330", i32* @"'s", align 4
  store i32 %returnVal2.0.i, i32* @"'lowerDriverReturn", align 4
  br label %FloppyPnp_IofCallDriver.exit

FloppyPnp_bb151:                                  ; preds = %FloppyPnp_bb147
  %"331" = load i32* @"'s", align 4
  %"332" = load i32* @"'SKIP1", align 4
  %"333" = icmp eq i32 %"331", %"332"
  br i1 %"333", label %FloppyPnp_bb152, label %FloppyPnp_bb153

FloppyPnp_bb152:                                  ; preds = %FloppyPnp_bb151
  %"334" = load i32* @"'SKIP2", align 4
  store i32 %"334", i32* @"'s", align 4
  store i32 %returnVal2.0.i, i32* @"'lowerDriverReturn", align 4
  br label %FloppyPnp_IofCallDriver.exit

FloppyPnp_bb153:                                  ; preds = %FloppyPnp_bb151
  call void (...)* @__VERIFIER_error() #5
  unreachable

FloppyPnp_bb154:                                  ; preds = %FloppyPnp_bb139
  call void (...)* @__VERIFIER_error() #5
  unreachable

FloppyPnp_LeafBlock45:                            ; preds = %FloppyPnp_NodeBlock47
  %SwitchLeaf46 = icmp eq i32 %"33", 6
  br i1 %SwitchLeaf46, label %FloppyPnp_bb155, label %FloppyPnp_NewDefault

FloppyPnp_bb155:                                  ; preds = %FloppyPnp_LeafBlock45, %FloppyPnp_NodeBlock43
  %"335" = icmp ne i32 %"26", 0
  store i32 0, i32* @"'myStatus", align 4
  %"336" = load i32* @"'s", align 4
  %"337" = load i32* @"'NP", align 4
  br i1 %"335", label %FloppyPnp_bb156, label %FloppyPnp_bb182

FloppyPnp_bb156:                                  ; preds = %FloppyPnp_bb155
  %"338" = icmp ne i32 %"336", %"337"
  br i1 %"338", label %FloppyPnp_bb157, label %FloppyPnp_bb158

FloppyPnp_bb157:                                  ; preds = %FloppyPnp_bb156
  call void (...)* @__VERIFIER_error() #5
  unreachable

FloppyPnp_bb158:                                  ; preds = %FloppyPnp_bb156
  %"339" = load i32* @"'compRegistered", align 4
  %"340" = icmp ne i32 %"339", 0
  br i1 %"340", label %FloppyPnp_bb159, label %FloppyPnp_bb160

FloppyPnp_bb159:                                  ; preds = %FloppyPnp_bb158
  call void (...)* @__VERIFIER_error() #5
  unreachable

FloppyPnp_bb160:                                  ; preds = %FloppyPnp_bb158
  store i32 1, i32* @"'compRegistered", align 4
  %"341" = call i32 @__VERIFIER_nondet_int() #4
  %"342" = load i32* @"'compRegistered", align 4
  %"343" = icmp ne i32 %"342", 0
  br i1 %"343", label %FloppyPnp_bb161, label %FloppyPnp_bb163

FloppyPnp_bb161:                                  ; preds = %FloppyPnp_bb160
  %"344" = call i32 @__VERIFIER_nondet_int() #4
  store i32 1, i32* @"'setEventCalled", align 4
  %"345" = load i32* @"'s", align 4
  %"346" = load i32* @"'NP", align 4
  %"347" = icmp eq i32 %"345", %"346"
  br i1 %"347", label %FloppyPnp_stubMoreProcessingRequired.exit.i16, label %FloppyPnp_bb162

FloppyPnp_stubMoreProcessingRequired.exit.i16:    ; preds = %FloppyPnp_bb161
  %"348" = load i32* @"'MPR1", align 4
  store i32 %"348", i32* @"'s", align 4
  br label %FloppyPnp_bb163

FloppyPnp_bb162:                                  ; preds = %FloppyPnp_bb161
  call void (...)* @__VERIFIER_error() #5
  unreachable

FloppyPnp_bb163:                                  ; preds = %FloppyPnp_stubMoreProcessingRequired.exit.i16, %FloppyPnp_bb160
  %"349" = call i32 @__VERIFIER_nondet_int() #4
  %"350" = icmp eq i32 %"349", 0
  br i1 %"350", label %FloppyPnp_bb165, label %FloppyPnp_bb164

FloppyPnp_bb164:                                  ; preds = %FloppyPnp_bb163
  %"351" = call i32 @__VERIFIER_nondet_int() #4
  %"352" = icmp eq i32 %"351", 1
  %..i17 = select i1 %"352", i32 -1073741823, i32 259
  br label %FloppyPnp_bb165

FloppyPnp_bb165:                                  ; preds = %FloppyPnp_bb164, %FloppyPnp_bb163
  %returnVal2.0.i18 = phi i32 [ 0, %FloppyPnp_bb163 ], [ %..i17, %FloppyPnp_bb164 ]
  %"353" = load i32* @"'s", align 4
  %"354" = load i32* @"'NP", align 4
  %"355" = icmp eq i32 %"353", %"354"
  br i1 %"355", label %FloppyPnp_bb166, label %FloppyPnp_bb167

FloppyPnp_bb166:                                  ; preds = %FloppyPnp_bb165
  %"356" = load i32* @"'IPC", align 4
  store i32 %"356", i32* @"'s", align 4
  store i32 %returnVal2.0.i18, i32* @"'lowerDriverReturn", align 4
  br label %FloppyPnp_IofCallDriver.exit19

FloppyPnp_bb167:                                  ; preds = %FloppyPnp_bb165
  %"357" = load i32* @"'s", align 4
  %"358" = load i32* @"'MPR1", align 4
  %"359" = icmp eq i32 %"357", %"358"
  br i1 %"359", label %FloppyPnp_bb168, label %FloppyPnp_bb171

FloppyPnp_bb168:                                  ; preds = %FloppyPnp_bb167
  %"360" = icmp eq i32 %returnVal2.0.i18, 259
  br i1 %"360", label %FloppyPnp_bb169, label %FloppyPnp_bb170

FloppyPnp_bb169:                                  ; preds = %FloppyPnp_bb168
  %"361" = load i32* @"'MPR3", align 4
  store i32 %"361", i32* @"'s", align 4
  store i32 %returnVal2.0.i18, i32* @"'lowerDriverReturn", align 4
  br label %FloppyPnp_IofCallDriver.exit19

FloppyPnp_bb170:                                  ; preds = %FloppyPnp_bb168
  %"362" = load i32* @"'NP", align 4
  store i32 %"362", i32* @"'s", align 4
  store i32 %returnVal2.0.i18, i32* @"'lowerDriverReturn", align 4
  br label %FloppyPnp_IofCallDriver.exit19

FloppyPnp_bb171:                                  ; preds = %FloppyPnp_bb167
  %"363" = load i32* @"'s", align 4
  %"364" = load i32* @"'SKIP1", align 4
  %"365" = icmp eq i32 %"363", %"364"
  br i1 %"365", label %FloppyPnp_bb172, label %FloppyPnp_bb181

FloppyPnp_bb172:                                  ; preds = %FloppyPnp_bb171
  %"366" = load i32* @"'SKIP2", align 4
  store i32 %"366", i32* @"'s", align 4
  store i32 %returnVal2.0.i18, i32* @"'lowerDriverReturn", align 4
  br label %FloppyPnp_IofCallDriver.exit19

FloppyPnp_IofCallDriver.exit19:                   ; preds = %FloppyPnp_bb166, %FloppyPnp_bb169, %FloppyPnp_bb170, %FloppyPnp_bb172
  %"367" = sext i32 %returnVal2.0.i18 to i64
  %"368" = icmp eq i64 %"367", 259
  br i1 %"368", label %FloppyPnp_bb173, label %FloppyPnp_bb179

FloppyPnp_bb173:                                  ; preds = %FloppyPnp_IofCallDriver.exit19
  %"369" = load i32* @"'s", align 4
  %"370" = load i32* @"'MPR3", align 4
  %"371" = icmp eq i32 %"369", %"370"
  %"372" = load i32* @"'setEventCalled", align 4
  %"373" = icmp eq i32 %"372", 1
  %or.cond.i20 = and i1 %"371", %"373"
  br i1 %or.cond.i20, label %FloppyPnp_bb174, label %FloppyPnp_bb175

FloppyPnp_bb174:                                  ; preds = %FloppyPnp_bb173
  %"374" = load i32* @"'NP", align 4
  store i32 %"374", i32* @"'s", align 4
  store i32 0, i32* @"'setEventCalled", align 4
  br label %FloppyPnp_KeWaitForSingleObject.exit22

FloppyPnp_bb175:                                  ; preds = %FloppyPnp_bb173
  %"375" = load i32* @"'customIrp", align 4
  %"376" = icmp eq i32 %"375", 1
  br i1 %"376", label %FloppyPnp_bb176, label %FloppyPnp_bb177

FloppyPnp_bb176:                                  ; preds = %FloppyPnp_bb175
  %"377" = load i32* @"'NP", align 4
  store i32 %"377", i32* @"'s", align 4
  store i32 0, i32* @"'customIrp", align 4
  br label %FloppyPnp_KeWaitForSingleObject.exit22

FloppyPnp_bb177:                                  ; preds = %FloppyPnp_bb175
  %"378" = load i32* @"'s", align 4
  %"379" = load i32* @"'MPR3", align 4
  %"380" = icmp eq i32 %"378", %"379"
  br i1 %"380", label %FloppyPnp_bb178, label %FloppyPnp_KeWaitForSingleObject.exit22

FloppyPnp_bb178:                                  ; preds = %FloppyPnp_bb177
  call void (...)* @__VERIFIER_error() #5
  unreachable

FloppyPnp_KeWaitForSingleObject.exit22:           ; preds = %FloppyPnp_bb174, %FloppyPnp_bb176, %FloppyPnp_bb177
  %"381" = call i32 @__VERIFIER_nondet_int() #4
  %"382" = load i32* @"'myStatus", align 4
  br label %FloppyPnp_bb179

FloppyPnp_bb179:                                  ; preds = %FloppyPnp_KeWaitForSingleObject.exit22, %FloppyPnp_IofCallDriver.exit19
  %ntStatus.1 = phi i32 [ %"382", %FloppyPnp_KeWaitForSingleObject.exit22 ], [ %returnVal2.0.i18, %FloppyPnp_IofCallDriver.exit19 ]
  store i32 %ntStatus.1, i32* @"'myStatus", align 4
  %"383" = load i32* @"'s", align 4
  %"384" = load i32* @"'NP", align 4
  %"385" = icmp eq i32 %"383", %"384"
  br i1 %"385", label %FloppyPnp_IofCompleteRequest.exit23, label %FloppyPnp_bb180

FloppyPnp_IofCompleteRequest.exit23:              ; preds = %FloppyPnp_bb179
  %"386" = load i32* @"'DC", align 4
  store i32 %"386", i32* @"'s", align 4
  br label %FloppyPnp_IofCallDriver.exit40

FloppyPnp_bb180:                                  ; preds = %FloppyPnp_bb179
  call void (...)* @__VERIFIER_error() #5
  unreachable

FloppyPnp_bb181:                                  ; preds = %FloppyPnp_bb171
  call void (...)* @__VERIFIER_error() #5
  unreachable

FloppyPnp_bb182:                                  ; preds = %FloppyPnp_bb155
  %"387" = icmp eq i32 %"336", %"337"
  br i1 %"387", label %FloppyPnp_bb183, label %FloppyPnp_bb197

FloppyPnp_bb183:                                  ; preds = %FloppyPnp_bb182
  %"388" = load i32* @"'SKIP1", align 4
  store i32 %"388", i32* @"'s", align 4
  %"389" = call i32 @__VERIFIER_nondet_int() #4
  %"390" = load i32* @"'compRegistered", align 4
  %"391" = icmp ne i32 %"390", 0
  br i1 %"391", label %FloppyPnp_bb184, label %FloppyPnp_bb186

FloppyPnp_bb184:                                  ; preds = %FloppyPnp_bb183
  %"392" = call i32 @__VERIFIER_nondet_int() #4
  store i32 1, i32* @"'setEventCalled", align 4
  %"393" = load i32* @"'s", align 4
  %"394" = load i32* @"'NP", align 4
  %"395" = icmp eq i32 %"393", %"394"
  br i1 %"395", label %FloppyPnp_stubMoreProcessingRequired.exit.i10, label %FloppyPnp_bb185

FloppyPnp_stubMoreProcessingRequired.exit.i10:    ; preds = %FloppyPnp_bb184
  %"396" = load i32* @"'MPR1", align 4
  store i32 %"396", i32* @"'s", align 4
  br label %FloppyPnp_bb186

FloppyPnp_bb185:                                  ; preds = %FloppyPnp_bb184
  call void (...)* @__VERIFIER_error() #5
  unreachable

FloppyPnp_bb186:                                  ; preds = %FloppyPnp_stubMoreProcessingRequired.exit.i10, %FloppyPnp_bb183
  %"397" = call i32 @__VERIFIER_nondet_int() #4
  %"398" = icmp eq i32 %"397", 0
  br i1 %"398", label %FloppyPnp_bb188, label %FloppyPnp_bb187

FloppyPnp_bb187:                                  ; preds = %FloppyPnp_bb186
  %"399" = call i32 @__VERIFIER_nondet_int() #4
  %"400" = icmp eq i32 %"399", 1
  %..i11 = select i1 %"400", i32 -1073741823, i32 259
  br label %FloppyPnp_bb188

FloppyPnp_bb188:                                  ; preds = %FloppyPnp_bb187, %FloppyPnp_bb186
  %returnVal2.0.i12 = phi i32 [ 0, %FloppyPnp_bb186 ], [ %..i11, %FloppyPnp_bb187 ]
  %"401" = load i32* @"'s", align 4
  %"402" = load i32* @"'NP", align 4
  %"403" = icmp eq i32 %"401", %"402"
  br i1 %"403", label %FloppyPnp_bb189, label %FloppyPnp_bb190

FloppyPnp_bb189:                                  ; preds = %FloppyPnp_bb188
  %"404" = load i32* @"'IPC", align 4
  store i32 %"404", i32* @"'s", align 4
  store i32 %returnVal2.0.i12, i32* @"'lowerDriverReturn", align 4
  br label %FloppyPnp_IofCallDriver.exit40

FloppyPnp_bb190:                                  ; preds = %FloppyPnp_bb188
  %"405" = load i32* @"'s", align 4
  %"406" = load i32* @"'MPR1", align 4
  %"407" = icmp eq i32 %"405", %"406"
  br i1 %"407", label %FloppyPnp_bb191, label %FloppyPnp_bb194

FloppyPnp_bb191:                                  ; preds = %FloppyPnp_bb190
  %"408" = icmp eq i32 %returnVal2.0.i12, 259
  br i1 %"408", label %FloppyPnp_bb192, label %FloppyPnp_bb193

FloppyPnp_bb192:                                  ; preds = %FloppyPnp_bb191
  %"409" = load i32* @"'MPR3", align 4
  store i32 %"409", i32* @"'s", align 4
  store i32 %returnVal2.0.i12, i32* @"'lowerDriverReturn", align 4
  br label %FloppyPnp_IofCallDriver.exit40

FloppyPnp_bb193:                                  ; preds = %FloppyPnp_bb191
  %"410" = load i32* @"'NP", align 4
  store i32 %"410", i32* @"'s", align 4
  store i32 %returnVal2.0.i12, i32* @"'lowerDriverReturn", align 4
  br label %FloppyPnp_IofCallDriver.exit40

FloppyPnp_bb194:                                  ; preds = %FloppyPnp_bb190
  %"411" = load i32* @"'s", align 4
  %"412" = load i32* @"'SKIP1", align 4
  %"413" = icmp eq i32 %"411", %"412"
  br i1 %"413", label %FloppyPnp_bb195, label %FloppyPnp_bb196

FloppyPnp_bb195:                                  ; preds = %FloppyPnp_bb194
  %"414" = load i32* @"'SKIP2", align 4
  store i32 %"414", i32* @"'s", align 4
  store i32 %returnVal2.0.i12, i32* @"'lowerDriverReturn", align 4
  br label %FloppyPnp_IofCallDriver.exit40

FloppyPnp_bb196:                                  ; preds = %FloppyPnp_bb194
  call void (...)* @__VERIFIER_error() #5
  unreachable

FloppyPnp_bb197:                                  ; preds = %FloppyPnp_bb182
  call void (...)* @__VERIFIER_error() #5
  unreachable

FloppyPnp_NewDefault:                             ; preds = %FloppyPnp_LeafBlock45, %FloppyPnp_LeafBlock
  br label %FloppyPnp_bb198

FloppyPnp_bb198:                                  ; preds = %FloppyPnp_NewDefault
  %"415" = load i32* @"'s", align 4
  %"416" = load i32* @"'NP", align 4
  %"417" = icmp eq i32 %"415", %"416"
  br i1 %"417", label %FloppyPnp_bb199, label %FloppyPnp_bb213

FloppyPnp_bb199:                                  ; preds = %FloppyPnp_bb198
  %"418" = load i32* @"'SKIP1", align 4
  store i32 %"418", i32* @"'s", align 4
  %"419" = call i32 @__VERIFIER_nondet_int() #4
  %"420" = load i32* @"'compRegistered", align 4
  %"421" = icmp ne i32 %"420", 0
  br i1 %"421", label %FloppyPnp_bb200, label %FloppyPnp_bb202

FloppyPnp_bb200:                                  ; preds = %FloppyPnp_bb199
  %"422" = call i32 @__VERIFIER_nondet_int() #4
  store i32 1, i32* @"'setEventCalled", align 4
  %"423" = load i32* @"'s", align 4
  %"424" = load i32* @"'NP", align 4
  %"425" = icmp eq i32 %"423", %"424"
  br i1 %"425", label %FloppyPnp_stubMoreProcessingRequired.exit.i37, label %FloppyPnp_bb201

FloppyPnp_stubMoreProcessingRequired.exit.i37:    ; preds = %FloppyPnp_bb200
  %"426" = load i32* @"'MPR1", align 4
  store i32 %"426", i32* @"'s", align 4
  br label %FloppyPnp_bb202

FloppyPnp_bb201:                                  ; preds = %FloppyPnp_bb200
  call void (...)* @__VERIFIER_error() #5
  unreachable

FloppyPnp_bb202:                                  ; preds = %FloppyPnp_stubMoreProcessingRequired.exit.i37, %FloppyPnp_bb199
  %"427" = call i32 @__VERIFIER_nondet_int() #4
  %"428" = icmp eq i32 %"427", 0
  br i1 %"428", label %FloppyPnp_bb204, label %FloppyPnp_bb203

FloppyPnp_bb203:                                  ; preds = %FloppyPnp_bb202
  %"429" = call i32 @__VERIFIER_nondet_int() #4
  %"430" = icmp eq i32 %"429", 1
  %..i38 = select i1 %"430", i32 -1073741823, i32 259
  br label %FloppyPnp_bb204

FloppyPnp_bb204:                                  ; preds = %FloppyPnp_bb203, %FloppyPnp_bb202
  %returnVal2.0.i39 = phi i32 [ 0, %FloppyPnp_bb202 ], [ %..i38, %FloppyPnp_bb203 ]
  %"431" = load i32* @"'s", align 4
  %"432" = load i32* @"'NP", align 4
  %"433" = icmp eq i32 %"431", %"432"
  br i1 %"433", label %FloppyPnp_bb205, label %FloppyPnp_bb206

FloppyPnp_bb205:                                  ; preds = %FloppyPnp_bb204
  %"434" = load i32* @"'IPC", align 4
  store i32 %"434", i32* @"'s", align 4
  store i32 %returnVal2.0.i39, i32* @"'lowerDriverReturn", align 4
  br label %FloppyPnp_IofCallDriver.exit40

FloppyPnp_bb206:                                  ; preds = %FloppyPnp_bb204
  %"435" = load i32* @"'s", align 4
  %"436" = load i32* @"'MPR1", align 4
  %"437" = icmp eq i32 %"435", %"436"
  br i1 %"437", label %FloppyPnp_bb207, label %FloppyPnp_bb210

FloppyPnp_bb207:                                  ; preds = %FloppyPnp_bb206
  %"438" = icmp eq i32 %returnVal2.0.i39, 259
  br i1 %"438", label %FloppyPnp_bb208, label %FloppyPnp_bb209

FloppyPnp_bb208:                                  ; preds = %FloppyPnp_bb207
  %"439" = load i32* @"'MPR3", align 4
  store i32 %"439", i32* @"'s", align 4
  store i32 %returnVal2.0.i39, i32* @"'lowerDriverReturn", align 4
  br label %FloppyPnp_IofCallDriver.exit40

FloppyPnp_bb209:                                  ; preds = %FloppyPnp_bb207
  %"440" = load i32* @"'NP", align 4
  store i32 %"440", i32* @"'s", align 4
  store i32 %returnVal2.0.i39, i32* @"'lowerDriverReturn", align 4
  br label %FloppyPnp_IofCallDriver.exit40

FloppyPnp_bb210:                                  ; preds = %FloppyPnp_bb206
  %"441" = load i32* @"'s", align 4
  %"442" = load i32* @"'SKIP1", align 4
  %"443" = icmp eq i32 %"441", %"442"
  br i1 %"443", label %FloppyPnp_bb211, label %FloppyPnp_bb212

FloppyPnp_bb211:                                  ; preds = %FloppyPnp_bb210
  %"444" = load i32* @"'SKIP2", align 4
  store i32 %"444", i32* @"'s", align 4
  store i32 %returnVal2.0.i39, i32* @"'lowerDriverReturn", align 4
  br label %FloppyPnp_IofCallDriver.exit40

FloppyPnp_IofCallDriver.exit40:                   ; preds = %FloppyPnp_bb205, %FloppyPnp_bb208, %FloppyPnp_bb209, %FloppyPnp_bb211, %FloppyPnp_bb86, %FloppyPnp_bb87, %FloppyPnp_bb103, %FloppyPnp_bb101, %FloppyPnp_bb100, %FloppyPnp_bb97, %FloppyPnp_IofCompleteRequest.exit23, %FloppyPnp_bb189, %FloppyPnp_bb192, %FloppyPnp_bb193, %FloppyPnp_bb195, %FloppyPnp_IofCompleteRequest.exit8, %FloppyPnp_bb127, %FloppyPnp_bb130, %FloppyPnp_bb131, %FloppyPnp_bb133, %FloppyPnp_FloppyStartDevice.exit
  %ntStatus.4 = phi i32 [ %returnVal2.0.i39, %FloppyPnp_bb205 ], [ %returnVal2.0.i39, %FloppyPnp_bb208 ], [ %returnVal2.0.i39, %FloppyPnp_bb209 ], [ %returnVal2.0.i39, %FloppyPnp_bb211 ], [ %ntStatus.3.i, %FloppyPnp_FloppyStartDevice.exit ], [ -1073741823, %FloppyPnp_IofCompleteRequest.exit8 ], [ %returnVal2.0.i6, %FloppyPnp_bb127 ], [ %returnVal2.0.i6, %FloppyPnp_bb130 ], [ %returnVal2.0.i6, %FloppyPnp_bb131 ], [ %returnVal2.0.i6, %FloppyPnp_bb133 ], [ %ntStatus.1, %FloppyPnp_IofCompleteRequest.exit23 ], [ %returnVal2.0.i12, %FloppyPnp_bb189 ], [ %returnVal2.0.i12, %FloppyPnp_bb192 ], [ %returnVal2.0.i12, %FloppyPnp_bb193 ], [ %returnVal2.0.i12, %FloppyPnp_bb195 ], [ %returnVal2.0.i27, %FloppyPnp_bb97 ], [ %returnVal2.0.i27, %FloppyPnp_bb100 ], [ %returnVal2.0.i27, %FloppyPnp_bb101 ], [ %returnVal2.0.i27, %FloppyPnp_bb103 ], [ %returnVal2.0.i32, %FloppyPnp_bb87 ], [ %returnVal2.0.i32, %FloppyPnp_bb86 ]
  %"445" = load i32* @"'PagingReferenceCount", align 4
  %"446" = add nsw i32 %"445", -1
  store i32 %"446", i32* @"'PagingReferenceCount", align 4
  br label %FloppyPnp_IofCallDriver.exit

FloppyPnp_IofCallDriver.exit:                     ; preds = %FloppyPnp_bb152, %FloppyPnp_bb150, %FloppyPnp_bb149, %FloppyPnp_bb146, %FloppyPnp_IofCallDriver.exit40, %FloppyPnp_IofCompleteRequest.exit
  %.0 = phi i32 [ -1073741738, %FloppyPnp_IofCompleteRequest.exit ], [ %ntStatus.4, %FloppyPnp_IofCallDriver.exit40 ], [ %returnVal2.0.i, %FloppyPnp_bb146 ], [ %returnVal2.0.i, %FloppyPnp_bb149 ], [ %returnVal2.0.i, %FloppyPnp_bb150 ], [ %returnVal2.0.i, %FloppyPnp_bb152 ]
  ret i32 %.0

FloppyPnp_bb212:                                  ; preds = %FloppyPnp_bb210
  call void (...)* @__VERIFIER_error() #5
  unreachable

FloppyPnp_bb213:                                  ; preds = %FloppyPnp_bb198
  call void (...)* @__VERIFIER_error() #5
  unreachable
}

; Function Attrs: nounwind uwtable
define void @IofCompleteRequest(i32 %Irp, i32 %PriorityBoost) #0 {
IofCompleteRequest_bb214:
  %"447" = load i32* @"'s", align 4
  %"448" = load i32* @"'NP", align 4
  %"449" = icmp eq i32 %"447", %"448"
  br i1 %"449", label %IofCompleteRequest_bb215, label %IofCompleteRequest_bb216

IofCompleteRequest_bb215:                         ; preds = %IofCompleteRequest_bb214
  %"450" = load i32* @"'DC", align 4
  store i32 %"450", i32* @"'s", align 4
  ret void

IofCompleteRequest_bb216:                         ; preds = %IofCompleteRequest_bb214
  call void (...)* @__VERIFIER_error() #5
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @FloppyStartDevice(i32 %DeviceObject, i32 %Irp) #0 {
FloppyStartDevice_bb217:
  %"451" = call i32 @__VERIFIER_nondet_int()
  %"452" = call i32 @__VERIFIER_nondet_int()
  %"453" = call i32 @__VERIFIER_nondet_int()
  %"454" = call i32 @__VERIFIER_nondet_int()
  %"455" = call i32 @__VERIFIER_nondet_int()
  %"456" = call i32 @__VERIFIER_nondet_int()
  %"457" = call i32 @__VERIFIER_nondet_int()
  %"458" = call i32 @__VERIFIER_nondet_int()
  %"459" = call i32 @__VERIFIER_nondet_int()
  %"460" = call i32 @__VERIFIER_nondet_int()
  %"461" = call i32 @__VERIFIER_nondet_int()
  %"462" = call i32 @__VERIFIER_nondet_int()
  %"463" = call i32 @__VERIFIER_nondet_int()
  %"464" = call i32 @__VERIFIER_nondet_int()
  %"465" = call i32 @__VERIFIER_nondet_int()
  %"466" = call i32 @__VERIFIER_nondet_int()
  %"467" = load i32* @"'s", align 4
  %"468" = load i32* @"'NP", align 4
  %"469" = icmp ne i32 %"467", %"468"
  br i1 %"469", label %FloppyStartDevice_bb218, label %FloppyStartDevice_bb219

FloppyStartDevice_bb218:                          ; preds = %FloppyStartDevice_bb217
  call void (...)* @__VERIFIER_error() #5
  unreachable

FloppyStartDevice_bb219:                          ; preds = %FloppyStartDevice_bb217
  %"470" = load i32* @"'compRegistered", align 4
  %"471" = icmp ne i32 %"470", 0
  br i1 %"471", label %FloppyStartDevice_bb220, label %FloppyStartDevice_bb221

FloppyStartDevice_bb220:                          ; preds = %FloppyStartDevice_bb219
  call void (...)* @__VERIFIER_error() #5
  unreachable

FloppyStartDevice_bb221:                          ; preds = %FloppyStartDevice_bb219
  store i32 1, i32* @"'compRegistered", align 4
  %"472" = call i32 @__VERIFIER_nondet_int() #4
  %"473" = load i32* @"'compRegistered", align 4
  %"474" = icmp ne i32 %"473", 0
  br i1 %"474", label %FloppyStartDevice_bb222, label %FloppyStartDevice_bb224

FloppyStartDevice_bb222:                          ; preds = %FloppyStartDevice_bb221
  %"475" = call i32 @__VERIFIER_nondet_int() #4
  store i32 1, i32* @"'setEventCalled", align 4
  %"476" = load i32* @"'s", align 4
  %"477" = load i32* @"'NP", align 4
  %"478" = icmp eq i32 %"476", %"477"
  br i1 %"478", label %FloppyStartDevice_stubMoreProcessingRequired.exit.i, label %FloppyStartDevice_bb223

FloppyStartDevice_stubMoreProcessingRequired.exit.i: ; preds = %FloppyStartDevice_bb222
  %"479" = load i32* @"'MPR1", align 4
  store i32 %"479", i32* @"'s", align 4
  br label %FloppyStartDevice_bb224

FloppyStartDevice_bb223:                          ; preds = %FloppyStartDevice_bb222
  call void (...)* @__VERIFIER_error() #5
  unreachable

FloppyStartDevice_bb224:                          ; preds = %FloppyStartDevice_stubMoreProcessingRequired.exit.i, %FloppyStartDevice_bb221
  %"480" = call i32 @__VERIFIER_nondet_int() #4
  %"481" = icmp eq i32 %"480", 0
  br i1 %"481", label %FloppyStartDevice_bb226, label %FloppyStartDevice_bb225

FloppyStartDevice_bb225:                          ; preds = %FloppyStartDevice_bb224
  %"482" = call i32 @__VERIFIER_nondet_int() #4
  %"483" = icmp eq i32 %"482", 1
  %..i = select i1 %"483", i32 -1073741823, i32 259
  br label %FloppyStartDevice_bb226

FloppyStartDevice_bb226:                          ; preds = %FloppyStartDevice_bb225, %FloppyStartDevice_bb224
  %returnVal2.0.i = phi i32 [ 0, %FloppyStartDevice_bb224 ], [ %..i, %FloppyStartDevice_bb225 ]
  %"484" = load i32* @"'s", align 4
  %"485" = load i32* @"'NP", align 4
  %"486" = icmp eq i32 %"484", %"485"
  br i1 %"486", label %FloppyStartDevice_bb227, label %FloppyStartDevice_bb228

FloppyStartDevice_bb227:                          ; preds = %FloppyStartDevice_bb226
  %"487" = load i32* @"'IPC", align 4
  store i32 %"487", i32* @"'s", align 4
  store i32 %returnVal2.0.i, i32* @"'lowerDriverReturn", align 4
  br label %FloppyStartDevice_IofCallDriver.exit

FloppyStartDevice_bb228:                          ; preds = %FloppyStartDevice_bb226
  %"488" = load i32* @"'s", align 4
  %"489" = load i32* @"'MPR1", align 4
  %"490" = icmp eq i32 %"488", %"489"
  br i1 %"490", label %FloppyStartDevice_bb229, label %FloppyStartDevice_bb232

FloppyStartDevice_bb229:                          ; preds = %FloppyStartDevice_bb228
  %"491" = icmp eq i32 %returnVal2.0.i, 259
  br i1 %"491", label %FloppyStartDevice_bb230, label %FloppyStartDevice_bb231

FloppyStartDevice_bb230:                          ; preds = %FloppyStartDevice_bb229
  %"492" = load i32* @"'MPR3", align 4
  store i32 %"492", i32* @"'s", align 4
  store i32 %returnVal2.0.i, i32* @"'lowerDriverReturn", align 4
  br label %FloppyStartDevice_IofCallDriver.exit

FloppyStartDevice_bb231:                          ; preds = %FloppyStartDevice_bb229
  %"493" = load i32* @"'NP", align 4
  store i32 %"493", i32* @"'s", align 4
  store i32 %returnVal2.0.i, i32* @"'lowerDriverReturn", align 4
  br label %FloppyStartDevice_IofCallDriver.exit

FloppyStartDevice_bb232:                          ; preds = %FloppyStartDevice_bb228
  %"494" = load i32* @"'s", align 4
  %"495" = load i32* @"'SKIP1", align 4
  %"496" = icmp eq i32 %"494", %"495"
  br i1 %"496", label %FloppyStartDevice_bb233, label %FloppyStartDevice_bb270

FloppyStartDevice_bb233:                          ; preds = %FloppyStartDevice_bb232
  %"497" = load i32* @"'SKIP2", align 4
  store i32 %"497", i32* @"'s", align 4
  store i32 %returnVal2.0.i, i32* @"'lowerDriverReturn", align 4
  br label %FloppyStartDevice_IofCallDriver.exit

FloppyStartDevice_IofCallDriver.exit:             ; preds = %FloppyStartDevice_bb227, %FloppyStartDevice_bb230, %FloppyStartDevice_bb231, %FloppyStartDevice_bb233
  %"498" = sext i32 %returnVal2.0.i to i64
  %"499" = icmp eq i64 %"498", 259
  br i1 %"499", label %FloppyStartDevice_bb234, label %FloppyStartDevice_bb240

FloppyStartDevice_bb234:                          ; preds = %FloppyStartDevice_IofCallDriver.exit
  %"500" = load i32* @"'s", align 4
  %"501" = load i32* @"'MPR3", align 4
  %"502" = icmp eq i32 %"500", %"501"
  %"503" = load i32* @"'setEventCalled", align 4
  %"504" = icmp eq i32 %"503", 1
  %or.cond.i = and i1 %"502", %"504"
  br i1 %or.cond.i, label %FloppyStartDevice_bb235, label %FloppyStartDevice_bb236

FloppyStartDevice_bb235:                          ; preds = %FloppyStartDevice_bb234
  %"505" = load i32* @"'NP", align 4
  store i32 %"505", i32* @"'s", align 4
  store i32 0, i32* @"'setEventCalled", align 4
  br label %FloppyStartDevice_KeWaitForSingleObject.exit

FloppyStartDevice_bb236:                          ; preds = %FloppyStartDevice_bb234
  %"506" = load i32* @"'customIrp", align 4
  %"507" = icmp eq i32 %"506", 1
  br i1 %"507", label %FloppyStartDevice_bb237, label %FloppyStartDevice_bb238

FloppyStartDevice_bb237:                          ; preds = %FloppyStartDevice_bb236
  %"508" = load i32* @"'NP", align 4
  store i32 %"508", i32* @"'s", align 4
  store i32 0, i32* @"'customIrp", align 4
  br label %FloppyStartDevice_KeWaitForSingleObject.exit

FloppyStartDevice_bb238:                          ; preds = %FloppyStartDevice_bb236
  %"509" = load i32* @"'s", align 4
  %"510" = load i32* @"'MPR3", align 4
  %"511" = icmp eq i32 %"509", %"510"
  br i1 %"511", label %FloppyStartDevice_bb239, label %FloppyStartDevice_KeWaitForSingleObject.exit

FloppyStartDevice_bb239:                          ; preds = %FloppyStartDevice_bb238
  call void (...)* @__VERIFIER_error() #5
  unreachable

FloppyStartDevice_KeWaitForSingleObject.exit:     ; preds = %FloppyStartDevice_bb235, %FloppyStartDevice_bb237, %FloppyStartDevice_bb238
  %"512" = call i32 @__VERIFIER_nondet_int() #4
  br label %FloppyStartDevice_bb240

FloppyStartDevice_bb240:                          ; preds = %FloppyStartDevice_KeWaitForSingleObject.exit, %FloppyStartDevice_IofCallDriver.exit
  %"513" = call i32 @__VERIFIER_nondet_int() #4
  %"514" = call i32 @__VERIFIER_nondet_int() #4
  %"515" = call i32 @__VERIFIER_nondet_int() #4
  %"516" = call i32 @__VERIFIER_nondet_int() #4
  store i32 1, i32* @"'customIrp", align 4
  %"517" = call i32 @__VERIFIER_nondet_int() #4
  %"518" = icmp eq i32 %"517", 0
  %.0.i.i = select i1 %"518", i32 %"516", i32 0
  %"519" = icmp eq i32 %.0.i.i, 0
  br i1 %"519", label %FloppyStartDevice_FlFdcDeviceIo.exit, label %FloppyStartDevice_bb241

FloppyStartDevice_bb241:                          ; preds = %FloppyStartDevice_bb240
  %"520" = call i32 @__VERIFIER_nondet_int() #4
  %"521" = load i32* @"'compRegistered", align 4
  %"522" = icmp ne i32 %"521", 0
  br i1 %"522", label %FloppyStartDevice_bb242, label %FloppyStartDevice_bb244

FloppyStartDevice_bb242:                          ; preds = %FloppyStartDevice_bb241
  %"523" = call i32 @__VERIFIER_nondet_int() #4
  store i32 1, i32* @"'setEventCalled", align 4
  %"524" = load i32* @"'s", align 4
  %"525" = load i32* @"'NP", align 4
  %"526" = icmp eq i32 %"524", %"525"
  br i1 %"526", label %FloppyStartDevice_stubMoreProcessingRequired.exit.i.i, label %FloppyStartDevice_bb243

FloppyStartDevice_stubMoreProcessingRequired.exit.i.i: ; preds = %FloppyStartDevice_bb242
  %"527" = load i32* @"'MPR1", align 4
  store i32 %"527", i32* @"'s", align 4
  br label %FloppyStartDevice_bb244

FloppyStartDevice_bb243:                          ; preds = %FloppyStartDevice_bb242
  call void (...)* @__VERIFIER_error() #5
  unreachable

FloppyStartDevice_bb244:                          ; preds = %FloppyStartDevice_stubMoreProcessingRequired.exit.i.i, %FloppyStartDevice_bb241
  %"528" = call i32 @__VERIFIER_nondet_int() #4
  %"529" = icmp eq i32 %"528", 0
  br i1 %"529", label %FloppyStartDevice_bb246, label %FloppyStartDevice_bb245

FloppyStartDevice_bb245:                          ; preds = %FloppyStartDevice_bb244
  %"530" = call i32 @__VERIFIER_nondet_int() #4
  %"531" = icmp eq i32 %"530", 1
  %..i.i = select i1 %"531", i32 -1073741823, i32 259
  br label %FloppyStartDevice_bb246

FloppyStartDevice_bb246:                          ; preds = %FloppyStartDevice_bb245, %FloppyStartDevice_bb244
  %returnVal2.0.i.i = phi i32 [ 0, %FloppyStartDevice_bb244 ], [ %..i.i, %FloppyStartDevice_bb245 ]
  %"532" = load i32* @"'s", align 4
  %"533" = load i32* @"'NP", align 4
  %"534" = icmp eq i32 %"532", %"533"
  br i1 %"534", label %FloppyStartDevice_bb247, label %FloppyStartDevice_bb248

FloppyStartDevice_bb247:                          ; preds = %FloppyStartDevice_bb246
  %"535" = load i32* @"'IPC", align 4
  store i32 %"535", i32* @"'s", align 4
  store i32 %returnVal2.0.i.i, i32* @"'lowerDriverReturn", align 4
  br label %FloppyStartDevice_IofCallDriver.exit.i

FloppyStartDevice_bb248:                          ; preds = %FloppyStartDevice_bb246
  %"536" = load i32* @"'s", align 4
  %"537" = load i32* @"'MPR1", align 4
  %"538" = icmp eq i32 %"536", %"537"
  br i1 %"538", label %FloppyStartDevice_bb249, label %FloppyStartDevice_bb252

FloppyStartDevice_bb249:                          ; preds = %FloppyStartDevice_bb248
  %"539" = icmp eq i32 %returnVal2.0.i.i, 259
  br i1 %"539", label %FloppyStartDevice_bb250, label %FloppyStartDevice_bb251

FloppyStartDevice_bb250:                          ; preds = %FloppyStartDevice_bb249
  %"540" = load i32* @"'MPR3", align 4
  store i32 %"540", i32* @"'s", align 4
  store i32 %returnVal2.0.i.i, i32* @"'lowerDriverReturn", align 4
  br label %FloppyStartDevice_IofCallDriver.exit.i

FloppyStartDevice_bb251:                          ; preds = %FloppyStartDevice_bb249
  %"541" = load i32* @"'NP", align 4
  store i32 %"541", i32* @"'s", align 4
  store i32 %returnVal2.0.i.i, i32* @"'lowerDriverReturn", align 4
  br label %FloppyStartDevice_IofCallDriver.exit.i

FloppyStartDevice_bb252:                          ; preds = %FloppyStartDevice_bb248
  %"542" = load i32* @"'s", align 4
  %"543" = load i32* @"'SKIP1", align 4
  %"544" = icmp eq i32 %"542", %"543"
  br i1 %"544", label %FloppyStartDevice_bb253, label %FloppyStartDevice_bb269

FloppyStartDevice_bb253:                          ; preds = %FloppyStartDevice_bb252
  %"545" = load i32* @"'SKIP2", align 4
  store i32 %"545", i32* @"'s", align 4
  store i32 %returnVal2.0.i.i, i32* @"'lowerDriverReturn", align 4
  br label %FloppyStartDevice_IofCallDriver.exit.i

FloppyStartDevice_IofCallDriver.exit.i:           ; preds = %FloppyStartDevice_bb253, %FloppyStartDevice_bb251, %FloppyStartDevice_bb250, %FloppyStartDevice_bb247
  %"546" = sext i32 %returnVal2.0.i.i to i64
  %"547" = icmp eq i64 %"546", 259
  br i1 %"547", label %FloppyStartDevice_bb254, label %FloppyStartDevice_FlFdcDeviceIo.exit

FloppyStartDevice_bb254:                          ; preds = %FloppyStartDevice_IofCallDriver.exit.i
  %"548" = load i32* @"'s", align 4
  %"549" = load i32* @"'MPR3", align 4
  %"550" = icmp eq i32 %"548", %"549"
  %"551" = load i32* @"'setEventCalled", align 4
  %"552" = icmp eq i32 %"551", 1
  %or.cond.i.i = and i1 %"550", %"552"
  br i1 %or.cond.i.i, label %FloppyStartDevice_bb255, label %FloppyStartDevice_bb256

FloppyStartDevice_bb255:                          ; preds = %FloppyStartDevice_bb254
  %"553" = load i32* @"'NP", align 4
  store i32 %"553", i32* @"'s", align 4
  store i32 0, i32* @"'setEventCalled", align 4
  br label %FloppyStartDevice_KeWaitForSingleObject.exit.i

FloppyStartDevice_bb256:                          ; preds = %FloppyStartDevice_bb254
  %"554" = load i32* @"'customIrp", align 4
  %"555" = icmp eq i32 %"554", 1
  br i1 %"555", label %FloppyStartDevice_bb257, label %FloppyStartDevice_bb258

FloppyStartDevice_bb257:                          ; preds = %FloppyStartDevice_bb256
  %"556" = load i32* @"'NP", align 4
  store i32 %"556", i32* @"'s", align 4
  store i32 0, i32* @"'customIrp", align 4
  br label %FloppyStartDevice_KeWaitForSingleObject.exit.i

FloppyStartDevice_bb258:                          ; preds = %FloppyStartDevice_bb256
  %"557" = load i32* @"'s", align 4
  %"558" = load i32* @"'MPR3", align 4
  %"559" = icmp eq i32 %"557", %"558"
  br i1 %"559", label %FloppyStartDevice_bb259, label %FloppyStartDevice_KeWaitForSingleObject.exit.i

FloppyStartDevice_bb259:                          ; preds = %FloppyStartDevice_bb258
  call void (...)* @__VERIFIER_error() #5
  unreachable

FloppyStartDevice_KeWaitForSingleObject.exit.i:   ; preds = %FloppyStartDevice_bb258, %FloppyStartDevice_bb257, %FloppyStartDevice_bb255
  %"560" = call i32 @__VERIFIER_nondet_int() #4
  %"561" = load i32* @"'myStatus", align 4
  br label %FloppyStartDevice_FlFdcDeviceIo.exit

FloppyStartDevice_FlFdcDeviceIo.exit:             ; preds = %FloppyStartDevice_bb240, %FloppyStartDevice_IofCallDriver.exit.i, %FloppyStartDevice_KeWaitForSingleObject.exit.i
  %.0.i2 = phi i32 [ -1073741670, %FloppyStartDevice_bb240 ], [ %"561", %FloppyStartDevice_KeWaitForSingleObject.exit.i ], [ %returnVal2.0.i.i, %FloppyStartDevice_IofCallDriver.exit.i ]
  %"562" = icmp sge i32 %.0.i2, 0
  br i1 %"562", label %FloppyStartDevice_bb260, label %FloppyStartDevice_bb267

FloppyStartDevice_bb260:                          ; preds = %FloppyStartDevice_FlFdcDeviceIo.exit
  %"563" = icmp ne i32 %"460", 0
  %"564" = icmp ne i32 %"461", 0
  %or.cond = and i1 %"563", %"564"
  br i1 %or.cond, label %FloppyStartDevice_bb263, label %FloppyStartDevice_bb261

FloppyStartDevice_bb261:                          ; preds = %FloppyStartDevice_bb260, %FloppyStartDevice_bb266
  %InterfaceType.0 = phi i32 [ %"575", %FloppyStartDevice_bb266 ], [ 0, %FloppyStartDevice_bb260 ]
  %ntStatus.0 = phi i32 [ %.0.i3, %FloppyStartDevice_bb266 ], [ %.0.i2, %FloppyStartDevice_bb260 ]
  %"565" = load i32* @"'MaximumInterfaceType", align 4
  %"566" = icmp sge i32 %InterfaceType.0, %"565"
  br i1 %"566", label %FloppyStartDevice_bb263, label %FloppyStartDevice_bb262

FloppyStartDevice_bb262:                          ; preds = %FloppyStartDevice_bb261
  %"567" = call i32 @__VERIFIER_nondet_int() #4
  %"568" = icmp eq i32 %"567", 0
  %.0.i3 = select i1 %"568", i32 0, i32 -1073741823
  %"569" = icmp sge i32 %.0.i3, 0
  br i1 %"569", label %FloppyStartDevice_bb263, label %FloppyStartDevice_bb266

FloppyStartDevice_bb263:                          ; preds = %FloppyStartDevice_bb260, %FloppyStartDevice_bb261, %FloppyStartDevice_bb262
  %ntStatus.2 = phi i32 [ %ntStatus.0, %FloppyStartDevice_bb261 ], [ %.0.i3, %FloppyStartDevice_bb262 ], [ 0, %FloppyStartDevice_bb260 ]
  %"570" = icmp sge i32 %ntStatus.2, 0
  br i1 %"570", label %FloppyStartDevice_bb264, label %FloppyStartDevice_bb267

FloppyStartDevice_bb264:                          ; preds = %FloppyStartDevice_bb263
  %"571" = call i32 @__VERIFIER_nondet_int() #4
  %"572" = icmp eq i32 %"571", 0
  %.0.i4 = select i1 %"572", i32 0, i32 -1073741808
  %"573" = icmp sge i32 %.0.i4, 0
  br i1 %"573", label %FloppyStartDevice_bb265, label %FloppyStartDevice_bb267

FloppyStartDevice_bb265:                          ; preds = %FloppyStartDevice_bb264
  %"574" = call i32 @__VERIFIER_nondet_int() #4
  br label %FloppyStartDevice_bb267

FloppyStartDevice_bb266:                          ; preds = %FloppyStartDevice_bb262
  %"575" = add nsw i32 %InterfaceType.0, 1
  br label %FloppyStartDevice_bb261

FloppyStartDevice_bb267:                          ; preds = %FloppyStartDevice_bb263, %FloppyStartDevice_bb265, %FloppyStartDevice_bb264, %FloppyStartDevice_FlFdcDeviceIo.exit
  %ntStatus.3 = phi i32 [ %.0.i2, %FloppyStartDevice_FlFdcDeviceIo.exit ], [ %ntStatus.2, %FloppyStartDevice_bb264 ], [ %ntStatus.2, %FloppyStartDevice_bb265 ], [ %ntStatus.2, %FloppyStartDevice_bb263 ]
  store i32 %ntStatus.3, i32* @"'myStatus", align 4
  %"576" = load i32* @"'s", align 4
  %"577" = load i32* @"'NP", align 4
  %"578" = icmp eq i32 %"576", %"577"
  br i1 %"578", label %FloppyStartDevice_IofCompleteRequest.exit, label %FloppyStartDevice_bb268

FloppyStartDevice_IofCompleteRequest.exit:        ; preds = %FloppyStartDevice_bb267
  %"579" = load i32* @"'DC", align 4
  store i32 %"579", i32* @"'s", align 4
  ret i32 %ntStatus.3

FloppyStartDevice_bb268:                          ; preds = %FloppyStartDevice_bb267
  call void (...)* @__VERIFIER_error() #5
  unreachable

FloppyStartDevice_bb269:                          ; preds = %FloppyStartDevice_bb252
  call void (...)* @__VERIFIER_error() #5
  unreachable

FloppyStartDevice_bb270:                          ; preds = %FloppyStartDevice_bb232
  call void (...)* @__VERIFIER_error() #5
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @FloppyPnpComplete(i32 %DeviceObject, i32 %Irp, i32 %Context) #0 {
FloppyPnpComplete_bb271:
  %"580" = call i32 @__VERIFIER_nondet_int() #4
  store i32 1, i32* @"'setEventCalled", align 4
  ret i32 -1073741802
}

; Function Attrs: nounwind uwtable
define i32 @FlFdcDeviceIo(i32 %DeviceObject, i32 %Ioctl, i32 %Data) #0 {
FlFdcDeviceIo_bb272:
  %"581" = call i32 @__VERIFIER_nondet_int()
  %"582" = call i32 @__VERIFIER_nondet_int()
  %"583" = call i32 @__VERIFIER_nondet_int()
  %"584" = call i32 @__VERIFIER_nondet_int() #4
  store i32 1, i32* @"'customIrp", align 4
  %"585" = call i32 @__VERIFIER_nondet_int() #4
  %"586" = icmp eq i32 %"585", 0
  %.0.i = select i1 %"586", i32 %"584", i32 0
  %"587" = icmp eq i32 %.0.i, 0
  br i1 %"587", label %FlFdcDeviceIo_bb292, label %FlFdcDeviceIo_bb273

FlFdcDeviceIo_bb273:                              ; preds = %FlFdcDeviceIo_bb272
  %"588" = call i32 @__VERIFIER_nondet_int() #4
  %"589" = load i32* @"'compRegistered", align 4
  %"590" = icmp ne i32 %"589", 0
  br i1 %"590", label %FlFdcDeviceIo_bb274, label %FlFdcDeviceIo_bb276

FlFdcDeviceIo_bb274:                              ; preds = %FlFdcDeviceIo_bb273
  %"591" = call i32 @__VERIFIER_nondet_int() #4
  store i32 1, i32* @"'setEventCalled", align 4
  %"592" = load i32* @"'s", align 4
  %"593" = load i32* @"'NP", align 4
  %"594" = icmp eq i32 %"592", %"593"
  br i1 %"594", label %FlFdcDeviceIo_stubMoreProcessingRequired.exit.i, label %FlFdcDeviceIo_bb275

FlFdcDeviceIo_stubMoreProcessingRequired.exit.i:  ; preds = %FlFdcDeviceIo_bb274
  %"595" = load i32* @"'MPR1", align 4
  store i32 %"595", i32* @"'s", align 4
  br label %FlFdcDeviceIo_bb276

FlFdcDeviceIo_bb275:                              ; preds = %FlFdcDeviceIo_bb274
  call void (...)* @__VERIFIER_error() #5
  unreachable

FlFdcDeviceIo_bb276:                              ; preds = %FlFdcDeviceIo_stubMoreProcessingRequired.exit.i, %FlFdcDeviceIo_bb273
  %"596" = call i32 @__VERIFIER_nondet_int() #4
  %"597" = icmp eq i32 %"596", 0
  br i1 %"597", label %FlFdcDeviceIo_bb278, label %FlFdcDeviceIo_bb277

FlFdcDeviceIo_bb277:                              ; preds = %FlFdcDeviceIo_bb276
  %"598" = call i32 @__VERIFIER_nondet_int() #4
  %"599" = icmp eq i32 %"598", 1
  %..i = select i1 %"599", i32 -1073741823, i32 259
  br label %FlFdcDeviceIo_bb278

FlFdcDeviceIo_bb278:                              ; preds = %FlFdcDeviceIo_bb277, %FlFdcDeviceIo_bb276
  %returnVal2.0.i = phi i32 [ 0, %FlFdcDeviceIo_bb276 ], [ %..i, %FlFdcDeviceIo_bb277 ]
  %"600" = load i32* @"'s", align 4
  %"601" = load i32* @"'NP", align 4
  %"602" = icmp eq i32 %"600", %"601"
  br i1 %"602", label %FlFdcDeviceIo_bb279, label %FlFdcDeviceIo_bb280

FlFdcDeviceIo_bb279:                              ; preds = %FlFdcDeviceIo_bb278
  %"603" = load i32* @"'IPC", align 4
  store i32 %"603", i32* @"'s", align 4
  store i32 %returnVal2.0.i, i32* @"'lowerDriverReturn", align 4
  br label %FlFdcDeviceIo_IofCallDriver.exit

FlFdcDeviceIo_bb280:                              ; preds = %FlFdcDeviceIo_bb278
  %"604" = load i32* @"'s", align 4
  %"605" = load i32* @"'MPR1", align 4
  %"606" = icmp eq i32 %"604", %"605"
  br i1 %"606", label %FlFdcDeviceIo_bb281, label %FlFdcDeviceIo_bb284

FlFdcDeviceIo_bb281:                              ; preds = %FlFdcDeviceIo_bb280
  %"607" = icmp eq i32 %returnVal2.0.i, 259
  br i1 %"607", label %FlFdcDeviceIo_bb282, label %FlFdcDeviceIo_bb283

FlFdcDeviceIo_bb282:                              ; preds = %FlFdcDeviceIo_bb281
  %"608" = load i32* @"'MPR3", align 4
  store i32 %"608", i32* @"'s", align 4
  store i32 %returnVal2.0.i, i32* @"'lowerDriverReturn", align 4
  br label %FlFdcDeviceIo_IofCallDriver.exit

FlFdcDeviceIo_bb283:                              ; preds = %FlFdcDeviceIo_bb281
  %"609" = load i32* @"'NP", align 4
  store i32 %"609", i32* @"'s", align 4
  store i32 %returnVal2.0.i, i32* @"'lowerDriverReturn", align 4
  br label %FlFdcDeviceIo_IofCallDriver.exit

FlFdcDeviceIo_bb284:                              ; preds = %FlFdcDeviceIo_bb280
  %"610" = load i32* @"'s", align 4
  %"611" = load i32* @"'SKIP1", align 4
  %"612" = icmp eq i32 %"610", %"611"
  br i1 %"612", label %FlFdcDeviceIo_bb285, label %FlFdcDeviceIo_bb293

FlFdcDeviceIo_bb285:                              ; preds = %FlFdcDeviceIo_bb284
  %"613" = load i32* @"'SKIP2", align 4
  store i32 %"613", i32* @"'s", align 4
  store i32 %returnVal2.0.i, i32* @"'lowerDriverReturn", align 4
  br label %FlFdcDeviceIo_IofCallDriver.exit

FlFdcDeviceIo_IofCallDriver.exit:                 ; preds = %FlFdcDeviceIo_bb279, %FlFdcDeviceIo_bb282, %FlFdcDeviceIo_bb283, %FlFdcDeviceIo_bb285
  %"614" = sext i32 %returnVal2.0.i to i64
  %"615" = icmp eq i64 %"614", 259
  br i1 %"615", label %FlFdcDeviceIo_bb286, label %FlFdcDeviceIo_bb292

FlFdcDeviceIo_bb286:                              ; preds = %FlFdcDeviceIo_IofCallDriver.exit
  %"616" = load i32* @"'s", align 4
  %"617" = load i32* @"'MPR3", align 4
  %"618" = icmp eq i32 %"616", %"617"
  %"619" = load i32* @"'setEventCalled", align 4
  %"620" = icmp eq i32 %"619", 1
  %or.cond.i = and i1 %"618", %"620"
  br i1 %or.cond.i, label %FlFdcDeviceIo_bb287, label %FlFdcDeviceIo_bb288

FlFdcDeviceIo_bb287:                              ; preds = %FlFdcDeviceIo_bb286
  %"621" = load i32* @"'NP", align 4
  store i32 %"621", i32* @"'s", align 4
  store i32 0, i32* @"'setEventCalled", align 4
  br label %FlFdcDeviceIo_KeWaitForSingleObject.exit

FlFdcDeviceIo_bb288:                              ; preds = %FlFdcDeviceIo_bb286
  %"622" = load i32* @"'customIrp", align 4
  %"623" = icmp eq i32 %"622", 1
  br i1 %"623", label %FlFdcDeviceIo_bb289, label %FlFdcDeviceIo_bb290

FlFdcDeviceIo_bb289:                              ; preds = %FlFdcDeviceIo_bb288
  %"624" = load i32* @"'NP", align 4
  store i32 %"624", i32* @"'s", align 4
  store i32 0, i32* @"'customIrp", align 4
  br label %FlFdcDeviceIo_KeWaitForSingleObject.exit

FlFdcDeviceIo_bb290:                              ; preds = %FlFdcDeviceIo_bb288
  %"625" = load i32* @"'s", align 4
  %"626" = load i32* @"'MPR3", align 4
  %"627" = icmp eq i32 %"625", %"626"
  br i1 %"627", label %FlFdcDeviceIo_bb291, label %FlFdcDeviceIo_KeWaitForSingleObject.exit

FlFdcDeviceIo_bb291:                              ; preds = %FlFdcDeviceIo_bb290
  call void (...)* @__VERIFIER_error() #5
  unreachable

FlFdcDeviceIo_KeWaitForSingleObject.exit:         ; preds = %FlFdcDeviceIo_bb287, %FlFdcDeviceIo_bb289, %FlFdcDeviceIo_bb290
  %"628" = call i32 @__VERIFIER_nondet_int() #4
  %"629" = load i32* @"'myStatus", align 4
  br label %FlFdcDeviceIo_bb292

FlFdcDeviceIo_bb292:                              ; preds = %FlFdcDeviceIo_IofCallDriver.exit, %FlFdcDeviceIo_KeWaitForSingleObject.exit, %FlFdcDeviceIo_bb272
  %.0 = phi i32 [ -1073741670, %FlFdcDeviceIo_bb272 ], [ %"629", %FlFdcDeviceIo_KeWaitForSingleObject.exit ], [ %returnVal2.0.i, %FlFdcDeviceIo_IofCallDriver.exit ]
  ret i32 %.0

FlFdcDeviceIo_bb293:                              ; preds = %FlFdcDeviceIo_bb284
  call void (...)* @__VERIFIER_error() #5
  unreachable
}

; Function Attrs: nounwind uwtable
define void @FloppyProcessQueuedRequests(i32 %DisketteExtension) #0 {
FloppyProcessQueuedRequests_bb294:
  ret void
}

; Function Attrs: nounwind uwtable
define void @stub_driver_init() #0 {
stub_driver_init_bb295:
  %"630" = load i32* @"'NP", align 4
  store i32 %"630", i32* @"'s", align 4
  store i32 0, i32* @"'pended", align 4
  store i32 0, i32* @"'compRegistered", align 4
  store i32 0, i32* @"'lowerDriverReturn", align 4
  store i32 0, i32* @"'setEventCalled", align 4
  store i32 0, i32* @"'customIrp", align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb296:
  %"631" = call i32 @__VERIFIER_nondet_int()
  %"632" = call i32 @__VERIFIER_nondet_int()
  %"633" = call i32 @__VERIFIER_nondet_int()
  store i32 0, i32* @"'FloppyThread", align 4
  store i32 0, i32* @"'KernelMode", align 4
  store i32 0, i32* @"'Suspended", align 4
  store i32 0, i32* @"'Executive", align 4
  store i32 0, i32* @"'DiskController", align 4
  store i32 0, i32* @"'FloppyDiskPeripheral", align 4
  store i32 0, i32* @"'FlConfigCallBack", align 4
  store i32 0, i32* @"'MaximumInterfaceType", align 4
  store i32 0, i32* @"'MOUNTDEV_MOUNTED_DEVICE_GUID", align 4
  store i32 0, i32* @"'myStatus", align 4
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
  store i32 0, i32* @"'compRegistered", align 4
  store i32 0, i32* @"'lowerDriverReturn", align 4
  store i32 0, i32* @"'setEventCalled", align 4
  store i32 0, i32* @"'customIrp", align 4
  store i32 0, i32* @"'UNLOADED", align 4
  store i32 1, i32* @"'NP", align 4
  store i32 2, i32* @"'DC", align 4
  store i32 3, i32* @"'SKIP1", align 4
  store i32 4, i32* @"'SKIP2", align 4
  store i32 5, i32* @"'MPR1", align 4
  store i32 6, i32* @"'MPR3", align 4
  store i32 7, i32* @"'IPC", align 4
  %"634" = load i32* @"'UNLOADED", align 4
  store i32 %"634", i32* @"'s", align 4
  store i32 0, i32* @"'pended", align 4
  store i32 0, i32* @"'compRegistered", align 4
  store i32 0, i32* @"'lowerDriverReturn", align 4
  store i32 0, i32* @"'setEventCalled", align 4
  store i32 0, i32* @"'customIrp", align 4
  %"635" = icmp sge i32 0, 0
  br i1 %"635", label %main_bb297, label %main_FloppyPnp.exit

main_bb297:                                       ; preds = %main_bb296
  %"636" = load i32* @"'NP", align 4
  store i32 %"636", i32* @"'s", align 4
  store i32 0, i32* @"'customIrp", align 4
  %"637" = load i32* @"'customIrp", align 4
  store i32 %"637", i32* @"'setEventCalled", align 4
  %"638" = load i32* @"'setEventCalled", align 4
  store i32 %"638", i32* @"'lowerDriverReturn", align 4
  %"639" = load i32* @"'lowerDriverReturn", align 4
  store i32 %"639", i32* @"'compRegistered", align 4
  %"640" = load i32* @"'compRegistered", align 4
  store i32 %"640", i32* @"'pended", align 4
  store i32 0, i32* @"'myStatus", align 4
  %"641" = icmp eq i32 %"632", 0
  %. = select i1 %"641", i32 -1073741637, i32 0
  store i32 %., i32* @"'myStatus", align 4
  %"642" = load i32* @"'NP", align 4
  store i32 %"642", i32* @"'s", align 4
  store i32 0, i32* @"'pended", align 4
  store i32 0, i32* @"'compRegistered", align 4
  store i32 0, i32* @"'lowerDriverReturn", align 4
  store i32 0, i32* @"'setEventCalled", align 4
  store i32 0, i32* @"'customIrp", align 4
  %"643" = icmp slt i32 0, 0
  br i1 %"643", label %main_bb517, label %main_bb298

main_bb298:                                       ; preds = %main_bb297
  %"644" = call i32 @__VERIFIER_nondet_int()
  %"645" = icmp eq i32 %"644", 3
  br i1 %"645", label %main_bb299, label %main_bb517

main_bb299:                                       ; preds = %main_bb298
  %"646" = call i32 @__VERIFIER_nondet_int() #4
  %"647" = call i32 @__VERIFIER_nondet_int() #4
  %"648" = call i32 @__VERIFIER_nondet_int() #4
  %"649" = call i32 @__VERIFIER_nondet_int() #4
  %"650" = call i32 @__VERIFIER_nondet_int() #4
  %"651" = call i32 @__VERIFIER_nondet_int() #4
  %"652" = call i32 @__VERIFIER_nondet_int() #4
  %"653" = call i32 @__VERIFIER_nondet_int() #4
  %"654" = call i32 @__VERIFIER_nondet_int() #4
  %"655" = call i32 @__VERIFIER_nondet_int() #4
  %"656" = call i32 @__VERIFIER_nondet_int() #4
  %"657" = call i32 @__VERIFIER_nondet_int() #4
  %"658" = call i32 @__VERIFIER_nondet_int() #4
  %"659" = call i32 @__VERIFIER_nondet_int() #4
  %"660" = load i32* @"'PagingReferenceCount", align 4
  %"661" = add nsw i32 %"660", 1
  store i32 %"661", i32* @"'PagingReferenceCount", align 4
  %"662" = icmp ne i32 %"649", 0
  br i1 %"662", label %main_bb300, label %main_bb302

main_bb300:                                       ; preds = %main_bb299
  store i32 -1073741738, i32* @"'myStatus", align 4
  %"663" = load i32* @"'s", align 4
  %"664" = load i32* @"'NP", align 4
  %"665" = icmp eq i32 %"663", %"664"
  br i1 %"665", label %main_IofCompleteRequest.exit.i, label %main_bb301

main_IofCompleteRequest.exit.i:                   ; preds = %main_bb300
  %"666" = load i32* @"'DC", align 4
  store i32 %"666", i32* @"'s", align 4
  br label %main_FloppyPnp.exit

main_bb301:                                       ; preds = %main_bb300
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_bb302:                                       ; preds = %main_bb299
  %Pivot52.i = icmp slt i32 %"657", 3
  br i1 %Pivot52.i, label %main_NodeBlock41.i, label %main_NodeBlock49.i

main_NodeBlock41.i:                               ; preds = %main_bb302
  %Pivot42.i = icmp slt i32 %"657", 1
  br i1 %Pivot42.i, label %main_LeafBlock.i, label %main_NodeBlock.i

main_LeafBlock.i:                                 ; preds = %main_NodeBlock41.i
  %SwitchLeaf.i = icmp eq i32 %"657", 0
  br i1 %SwitchLeaf.i, label %main_bb303, label %main_NewDefault.i

main_bb303:                                       ; preds = %main_LeafBlock.i
  %"667" = call i32 @__VERIFIER_nondet_int() #4
  %"668" = call i32 @__VERIFIER_nondet_int() #4
  %"669" = call i32 @__VERIFIER_nondet_int() #4
  %"670" = call i32 @__VERIFIER_nondet_int() #4
  %"671" = call i32 @__VERIFIER_nondet_int() #4
  %"672" = call i32 @__VERIFIER_nondet_int() #4
  %"673" = call i32 @__VERIFIER_nondet_int() #4
  %"674" = call i32 @__VERIFIER_nondet_int() #4
  %"675" = call i32 @__VERIFIER_nondet_int() #4
  %"676" = call i32 @__VERIFIER_nondet_int() #4
  %"677" = call i32 @__VERIFIER_nondet_int() #4
  %"678" = call i32 @__VERIFIER_nondet_int() #4
  %"679" = call i32 @__VERIFIER_nondet_int() #4
  %"680" = call i32 @__VERIFIER_nondet_int() #4
  %"681" = call i32 @__VERIFIER_nondet_int() #4
  %"682" = call i32 @__VERIFIER_nondet_int() #4
  %"683" = load i32* @"'s", align 4
  %"684" = load i32* @"'NP", align 4
  %"685" = icmp ne i32 %"683", %"684"
  br i1 %"685", label %main_bb304, label %main_bb305

main_bb304:                                       ; preds = %main_bb303
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_bb305:                                       ; preds = %main_bb303
  %"686" = load i32* @"'compRegistered", align 4
  %"687" = icmp ne i32 %"686", 0
  br i1 %"687", label %main_bb306, label %main_bb307

main_bb306:                                       ; preds = %main_bb305
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_bb307:                                       ; preds = %main_bb305
  store i32 1, i32* @"'compRegistered", align 4
  %"688" = call i32 @__VERIFIER_nondet_int() #4
  %"689" = load i32* @"'compRegistered", align 4
  %"690" = icmp ne i32 %"689", 0
  br i1 %"690", label %main_bb308, label %main_bb310

main_bb308:                                       ; preds = %main_bb307
  %"691" = call i32 @__VERIFIER_nondet_int() #4
  store i32 1, i32* @"'setEventCalled", align 4
  %"692" = load i32* @"'s", align 4
  %"693" = load i32* @"'NP", align 4
  %"694" = icmp eq i32 %"692", %"693"
  br i1 %"694", label %main_stubMoreProcessingRequired.exit.i.i.i, label %main_bb309

main_stubMoreProcessingRequired.exit.i.i.i:       ; preds = %main_bb308
  %"695" = load i32* @"'MPR1", align 4
  store i32 %"695", i32* @"'s", align 4
  br label %main_bb310

main_bb309:                                       ; preds = %main_bb308
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_bb310:                                       ; preds = %main_stubMoreProcessingRequired.exit.i.i.i, %main_bb307
  %"696" = call i32 @__VERIFIER_nondet_int() #4
  %"697" = icmp eq i32 %"696", 0
  br i1 %"697", label %main_bb312, label %main_bb311

main_bb311:                                       ; preds = %main_bb310
  %"698" = call i32 @__VERIFIER_nondet_int() #4
  %"699" = icmp eq i32 %"698", 1
  %..i.i.i = select i1 %"699", i32 -1073741823, i32 259
  br label %main_bb312

main_bb312:                                       ; preds = %main_bb311, %main_bb310
  %returnVal2.0.i.i.i = phi i32 [ 0, %main_bb310 ], [ %..i.i.i, %main_bb311 ]
  %"700" = load i32* @"'s", align 4
  %"701" = load i32* @"'NP", align 4
  %"702" = icmp eq i32 %"700", %"701"
  br i1 %"702", label %main_bb313, label %main_bb314

main_bb313:                                       ; preds = %main_bb312
  %"703" = load i32* @"'IPC", align 4
  store i32 %"703", i32* @"'s", align 4
  store i32 %returnVal2.0.i.i.i, i32* @"'lowerDriverReturn", align 4
  br label %main_IofCallDriver.exit.i.i

main_bb314:                                       ; preds = %main_bb312
  %"704" = load i32* @"'s", align 4
  %"705" = load i32* @"'MPR1", align 4
  %"706" = icmp eq i32 %"704", %"705"
  br i1 %"706", label %main_bb315, label %main_bb318

main_bb315:                                       ; preds = %main_bb314
  %"707" = icmp eq i32 %returnVal2.0.i.i.i, 259
  br i1 %"707", label %main_bb316, label %main_bb317

main_bb316:                                       ; preds = %main_bb315
  %"708" = load i32* @"'MPR3", align 4
  store i32 %"708", i32* @"'s", align 4
  store i32 %returnVal2.0.i.i.i, i32* @"'lowerDriverReturn", align 4
  br label %main_IofCallDriver.exit.i.i

main_bb317:                                       ; preds = %main_bb315
  %"709" = load i32* @"'NP", align 4
  store i32 %"709", i32* @"'s", align 4
  store i32 %returnVal2.0.i.i.i, i32* @"'lowerDriverReturn", align 4
  br label %main_IofCallDriver.exit.i.i

main_bb318:                                       ; preds = %main_bb314
  %"710" = load i32* @"'s", align 4
  %"711" = load i32* @"'SKIP1", align 4
  %"712" = icmp eq i32 %"710", %"711"
  br i1 %"712", label %main_bb319, label %main_bb356

main_bb319:                                       ; preds = %main_bb318
  %"713" = load i32* @"'SKIP2", align 4
  store i32 %"713", i32* @"'s", align 4
  store i32 %returnVal2.0.i.i.i, i32* @"'lowerDriverReturn", align 4
  br label %main_IofCallDriver.exit.i.i

main_IofCallDriver.exit.i.i:                      ; preds = %main_bb319, %main_bb317, %main_bb316, %main_bb313
  %"714" = sext i32 %returnVal2.0.i.i.i to i64
  %"715" = icmp eq i64 %"714", 259
  br i1 %"715", label %main_bb320, label %main_bb326

main_bb320:                                       ; preds = %main_IofCallDriver.exit.i.i
  %"716" = load i32* @"'s", align 4
  %"717" = load i32* @"'MPR3", align 4
  %"718" = icmp eq i32 %"716", %"717"
  %"719" = load i32* @"'setEventCalled", align 4
  %"720" = icmp eq i32 %"719", 1
  %or.cond.i.i.i = and i1 %"718", %"720"
  br i1 %or.cond.i.i.i, label %main_bb321, label %main_bb322

main_bb321:                                       ; preds = %main_bb320
  %"721" = load i32* @"'NP", align 4
  store i32 %"721", i32* @"'s", align 4
  store i32 0, i32* @"'setEventCalled", align 4
  br label %main_KeWaitForSingleObject.exit.i.i

main_bb322:                                       ; preds = %main_bb320
  %"722" = load i32* @"'customIrp", align 4
  %"723" = icmp eq i32 %"722", 1
  br i1 %"723", label %main_bb323, label %main_bb324

main_bb323:                                       ; preds = %main_bb322
  %"724" = load i32* @"'NP", align 4
  store i32 %"724", i32* @"'s", align 4
  store i32 0, i32* @"'customIrp", align 4
  br label %main_KeWaitForSingleObject.exit.i.i

main_bb324:                                       ; preds = %main_bb322
  %"725" = load i32* @"'s", align 4
  %"726" = load i32* @"'MPR3", align 4
  %"727" = icmp eq i32 %"725", %"726"
  br i1 %"727", label %main_bb325, label %main_KeWaitForSingleObject.exit.i.i

main_bb325:                                       ; preds = %main_bb324
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_KeWaitForSingleObject.exit.i.i:              ; preds = %main_bb324, %main_bb323, %main_bb321
  %"728" = call i32 @__VERIFIER_nondet_int() #4
  br label %main_bb326

main_bb326:                                       ; preds = %main_KeWaitForSingleObject.exit.i.i, %main_IofCallDriver.exit.i.i
  %"729" = call i32 @__VERIFIER_nondet_int() #4
  %"730" = call i32 @__VERIFIER_nondet_int() #4
  %"731" = call i32 @__VERIFIER_nondet_int() #4
  %"732" = call i32 @__VERIFIER_nondet_int() #4
  store i32 1, i32* @"'customIrp", align 4
  %"733" = call i32 @__VERIFIER_nondet_int() #4
  %"734" = icmp eq i32 %"733", 0
  %.0.i.i.i.i = select i1 %"734", i32 %"732", i32 0
  %"735" = icmp eq i32 %.0.i.i.i.i, 0
  br i1 %"735", label %main_FlFdcDeviceIo.exit.i.i, label %main_bb327

main_bb327:                                       ; preds = %main_bb326
  %"736" = call i32 @__VERIFIER_nondet_int() #4
  %"737" = load i32* @"'compRegistered", align 4
  %"738" = icmp ne i32 %"737", 0
  br i1 %"738", label %main_bb328, label %main_bb330

main_bb328:                                       ; preds = %main_bb327
  %"739" = call i32 @__VERIFIER_nondet_int() #4
  store i32 1, i32* @"'setEventCalled", align 4
  %"740" = load i32* @"'s", align 4
  %"741" = load i32* @"'NP", align 4
  %"742" = icmp eq i32 %"740", %"741"
  br i1 %"742", label %main_stubMoreProcessingRequired.exit.i.i.i.i, label %main_bb329

main_stubMoreProcessingRequired.exit.i.i.i.i:     ; preds = %main_bb328
  %"743" = load i32* @"'MPR1", align 4
  store i32 %"743", i32* @"'s", align 4
  br label %main_bb330

main_bb329:                                       ; preds = %main_bb328
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_bb330:                                       ; preds = %main_stubMoreProcessingRequired.exit.i.i.i.i, %main_bb327
  %"744" = call i32 @__VERIFIER_nondet_int() #4
  %"745" = icmp eq i32 %"744", 0
  br i1 %"745", label %main_bb332, label %main_bb331

main_bb331:                                       ; preds = %main_bb330
  %"746" = call i32 @__VERIFIER_nondet_int() #4
  %"747" = icmp eq i32 %"746", 1
  %..i.i.i.i = select i1 %"747", i32 -1073741823, i32 259
  br label %main_bb332

main_bb332:                                       ; preds = %main_bb331, %main_bb330
  %returnVal2.0.i.i.i.i = phi i32 [ 0, %main_bb330 ], [ %..i.i.i.i, %main_bb331 ]
  %"748" = load i32* @"'s", align 4
  %"749" = load i32* @"'NP", align 4
  %"750" = icmp eq i32 %"748", %"749"
  br i1 %"750", label %main_bb333, label %main_bb334

main_bb333:                                       ; preds = %main_bb332
  %"751" = load i32* @"'IPC", align 4
  store i32 %"751", i32* @"'s", align 4
  store i32 %returnVal2.0.i.i.i.i, i32* @"'lowerDriverReturn", align 4
  br label %main_IofCallDriver.exit.i.i.i

main_bb334:                                       ; preds = %main_bb332
  %"752" = load i32* @"'s", align 4
  %"753" = load i32* @"'MPR1", align 4
  %"754" = icmp eq i32 %"752", %"753"
  br i1 %"754", label %main_bb335, label %main_bb338

main_bb335:                                       ; preds = %main_bb334
  %"755" = icmp eq i32 %returnVal2.0.i.i.i.i, 259
  br i1 %"755", label %main_bb336, label %main_bb337

main_bb336:                                       ; preds = %main_bb335
  %"756" = load i32* @"'MPR3", align 4
  store i32 %"756", i32* @"'s", align 4
  store i32 %returnVal2.0.i.i.i.i, i32* @"'lowerDriverReturn", align 4
  br label %main_IofCallDriver.exit.i.i.i

main_bb337:                                       ; preds = %main_bb335
  %"757" = load i32* @"'NP", align 4
  store i32 %"757", i32* @"'s", align 4
  store i32 %returnVal2.0.i.i.i.i, i32* @"'lowerDriverReturn", align 4
  br label %main_IofCallDriver.exit.i.i.i

main_bb338:                                       ; preds = %main_bb334
  %"758" = load i32* @"'s", align 4
  %"759" = load i32* @"'SKIP1", align 4
  %"760" = icmp eq i32 %"758", %"759"
  br i1 %"760", label %main_bb339, label %main_bb355

main_bb339:                                       ; preds = %main_bb338
  %"761" = load i32* @"'SKIP2", align 4
  store i32 %"761", i32* @"'s", align 4
  store i32 %returnVal2.0.i.i.i.i, i32* @"'lowerDriverReturn", align 4
  br label %main_IofCallDriver.exit.i.i.i

main_IofCallDriver.exit.i.i.i:                    ; preds = %main_bb339, %main_bb337, %main_bb336, %main_bb333
  %"762" = sext i32 %returnVal2.0.i.i.i.i to i64
  %"763" = icmp eq i64 %"762", 259
  br i1 %"763", label %main_bb340, label %main_FlFdcDeviceIo.exit.i.i

main_bb340:                                       ; preds = %main_IofCallDriver.exit.i.i.i
  %"764" = load i32* @"'s", align 4
  %"765" = load i32* @"'MPR3", align 4
  %"766" = icmp eq i32 %"764", %"765"
  %"767" = load i32* @"'setEventCalled", align 4
  %"768" = icmp eq i32 %"767", 1
  %or.cond.i.i.i.i = and i1 %"766", %"768"
  br i1 %or.cond.i.i.i.i, label %main_bb341, label %main_bb342

main_bb341:                                       ; preds = %main_bb340
  %"769" = load i32* @"'NP", align 4
  store i32 %"769", i32* @"'s", align 4
  store i32 0, i32* @"'setEventCalled", align 4
  br label %main_KeWaitForSingleObject.exit.i.i.i

main_bb342:                                       ; preds = %main_bb340
  %"770" = load i32* @"'customIrp", align 4
  %"771" = icmp eq i32 %"770", 1
  br i1 %"771", label %main_bb343, label %main_bb344

main_bb343:                                       ; preds = %main_bb342
  %"772" = load i32* @"'NP", align 4
  store i32 %"772", i32* @"'s", align 4
  store i32 0, i32* @"'customIrp", align 4
  br label %main_KeWaitForSingleObject.exit.i.i.i

main_bb344:                                       ; preds = %main_bb342
  %"773" = load i32* @"'s", align 4
  %"774" = load i32* @"'MPR3", align 4
  %"775" = icmp eq i32 %"773", %"774"
  br i1 %"775", label %main_bb345, label %main_KeWaitForSingleObject.exit.i.i.i

main_bb345:                                       ; preds = %main_bb344
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_KeWaitForSingleObject.exit.i.i.i:            ; preds = %main_bb344, %main_bb343, %main_bb341
  %"776" = call i32 @__VERIFIER_nondet_int() #4
  %"777" = load i32* @"'myStatus", align 4
  br label %main_FlFdcDeviceIo.exit.i.i

main_FlFdcDeviceIo.exit.i.i:                      ; preds = %main_KeWaitForSingleObject.exit.i.i.i, %main_IofCallDriver.exit.i.i.i, %main_bb326
  %.0.i2.i.i = phi i32 [ -1073741670, %main_bb326 ], [ %"777", %main_KeWaitForSingleObject.exit.i.i.i ], [ %returnVal2.0.i.i.i.i, %main_IofCallDriver.exit.i.i.i ]
  %"778" = icmp sge i32 %.0.i2.i.i, 0
  br i1 %"778", label %main_bb346, label %main_bb353

main_bb346:                                       ; preds = %main_FlFdcDeviceIo.exit.i.i
  %"779" = icmp ne i32 %"676", 0
  %"780" = icmp ne i32 %"677", 0
  %or.cond.i.i = and i1 %"779", %"780"
  br i1 %or.cond.i.i, label %main_bb349, label %main_bb347

main_bb347:                                       ; preds = %main_bb352, %main_bb346
  %InterfaceType.0.i.i = phi i32 [ %"789", %main_bb352 ], [ 0, %main_bb346 ]
  %ntStatus.0.i.i = phi i32 [ %.0.i3.i.i, %main_bb352 ], [ %.0.i2.i.i, %main_bb346 ]
  %"781" = load i32* @"'MaximumInterfaceType", align 4
  %"782" = icmp sge i32 %InterfaceType.0.i.i, %"781"
  br i1 %"782", label %main_bb349, label %main_bb348

main_bb348:                                       ; preds = %main_bb347
  %"783" = call i32 @__VERIFIER_nondet_int() #4
  %"784" = icmp eq i32 %"783", 0
  %.0.i3.i.i = select i1 %"784", i32 0, i32 -1073741823
  br i1 %"784", label %main_bb349, label %main_bb352

main_bb349:                                       ; preds = %main_bb348, %main_bb347, %main_bb346
  %ntStatus.2.i.i = phi i32 [ %ntStatus.0.i.i, %main_bb347 ], [ %.0.i3.i.i, %main_bb348 ], [ 0, %main_bb346 ]
  %"785" = icmp sge i32 %ntStatus.2.i.i, 0
  br i1 %"785", label %main_bb350, label %main_bb353

main_bb350:                                       ; preds = %main_bb349
  %"786" = call i32 @__VERIFIER_nondet_int() #4
  %"787" = icmp eq i32 %"786", 0
  br i1 %"787", label %main_bb351, label %main_bb353

main_bb351:                                       ; preds = %main_bb350
  %"788" = call i32 @__VERIFIER_nondet_int() #4
  br label %main_bb353

main_bb352:                                       ; preds = %main_bb348
  %"789" = add nsw i32 %InterfaceType.0.i.i, 1
  br label %main_bb347

main_bb353:                                       ; preds = %main_bb351, %main_bb350, %main_bb349, %main_FlFdcDeviceIo.exit.i.i
  %ntStatus.3.i.i = phi i32 [ %.0.i2.i.i, %main_FlFdcDeviceIo.exit.i.i ], [ %ntStatus.2.i.i, %main_bb350 ], [ %ntStatus.2.i.i, %main_bb351 ], [ %ntStatus.2.i.i, %main_bb349 ]
  store i32 %ntStatus.3.i.i, i32* @"'myStatus", align 4
  %"790" = load i32* @"'s", align 4
  %"791" = load i32* @"'NP", align 4
  %"792" = icmp eq i32 %"790", %"791"
  br i1 %"792", label %main_FloppyStartDevice.exit.i, label %main_bb354

main_FloppyStartDevice.exit.i:                    ; preds = %main_bb353
  %"793" = load i32* @"'DC", align 4
  store i32 %"793", i32* @"'s", align 4
  br label %main_IofCallDriver.exit40.i

main_bb354:                                       ; preds = %main_bb353
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_bb355:                                       ; preds = %main_bb338
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_bb356:                                       ; preds = %main_bb318
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_NodeBlock.i:                                 ; preds = %main_NodeBlock41.i
  %Pivot.i = icmp slt i32 %"657", 2
  br i1 %Pivot.i, label %main_bb392, label %main_bb357

main_bb357:                                       ; preds = %main_NodeBlock.i
  %"794" = load i32* @"'s", align 4
  %"795" = load i32* @"'NP", align 4
  %"796" = icmp eq i32 %"794", %"795"
  br i1 %"796", label %main_bb358, label %main_bb375

main_bb358:                                       ; preds = %main_bb357
  %"797" = load i32* @"'SKIP1", align 4
  store i32 %"797", i32* @"'s", align 4
  store i32 0, i32* @"'myStatus", align 4
  %"798" = call i32 @__VERIFIER_nondet_int() #4
  %"799" = load i32* @"'compRegistered", align 4
  %"800" = icmp ne i32 %"799", 0
  br i1 %"800", label %main_bb359, label %main_bb361

main_bb359:                                       ; preds = %main_bb358
  %"801" = call i32 @__VERIFIER_nondet_int() #4
  store i32 1, i32* @"'setEventCalled", align 4
  %"802" = load i32* @"'s", align 4
  %"803" = load i32* @"'NP", align 4
  %"804" = icmp eq i32 %"802", %"803"
  br i1 %"804", label %main_stubMoreProcessingRequired.exit.i30.i, label %main_bb360

main_stubMoreProcessingRequired.exit.i30.i:       ; preds = %main_bb359
  %"805" = load i32* @"'MPR1", align 4
  store i32 %"805", i32* @"'s", align 4
  br label %main_bb361

main_bb360:                                       ; preds = %main_bb359
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_bb361:                                       ; preds = %main_stubMoreProcessingRequired.exit.i30.i, %main_bb358
  %"806" = call i32 @__VERIFIER_nondet_int() #4
  %"807" = icmp eq i32 %"806", 0
  br i1 %"807", label %main_bb363, label %main_bb362

main_bb362:                                       ; preds = %main_bb361
  %"808" = call i32 @__VERIFIER_nondet_int() #4
  %"809" = icmp eq i32 %"808", 1
  %..i31.i = select i1 %"809", i32 -1073741823, i32 259
  br label %main_bb363

main_bb363:                                       ; preds = %main_bb362, %main_bb361
  %returnVal2.0.i32.i = phi i32 [ 0, %main_bb361 ], [ %..i31.i, %main_bb362 ]
  %"810" = load i32* @"'s", align 4
  %"811" = load i32* @"'NP", align 4
  %"812" = icmp eq i32 %"810", %"811"
  br i1 %"812", label %main_bb364, label %main_bb365

main_bb364:                                       ; preds = %main_bb363
  %"813" = load i32* @"'IPC", align 4
  store i32 %"813", i32* @"'s", align 4
  store i32 %returnVal2.0.i32.i, i32* @"'lowerDriverReturn", align 4
  br label %main_IofCallDriver.exit33.i

main_bb365:                                       ; preds = %main_bb363
  %"814" = load i32* @"'s", align 4
  %"815" = load i32* @"'MPR1", align 4
  %"816" = icmp eq i32 %"814", %"815"
  br i1 %"816", label %main_bb366, label %main_bb369

main_bb366:                                       ; preds = %main_bb365
  %"817" = icmp eq i32 %returnVal2.0.i32.i, 259
  br i1 %"817", label %main_bb367, label %main_bb368

main_bb367:                                       ; preds = %main_bb366
  %"818" = load i32* @"'MPR3", align 4
  store i32 %"818", i32* @"'s", align 4
  store i32 %returnVal2.0.i32.i, i32* @"'lowerDriverReturn", align 4
  br label %main_IofCallDriver.exit33.i

main_bb368:                                       ; preds = %main_bb366
  %"819" = load i32* @"'NP", align 4
  store i32 %"819", i32* @"'s", align 4
  store i32 %returnVal2.0.i32.i, i32* @"'lowerDriverReturn", align 4
  br label %main_IofCallDriver.exit33.i

main_bb369:                                       ; preds = %main_bb365
  %"820" = load i32* @"'s", align 4
  %"821" = load i32* @"'SKIP1", align 4
  %"822" = icmp eq i32 %"820", %"821"
  br i1 %"822", label %main_bb370, label %main_bb374

main_bb370:                                       ; preds = %main_bb369
  %"823" = load i32* @"'SKIP2", align 4
  store i32 %"823", i32* @"'s", align 4
  store i32 %returnVal2.0.i32.i, i32* @"'lowerDriverReturn", align 4
  br label %main_IofCallDriver.exit33.i

main_IofCallDriver.exit33.i:                      ; preds = %main_bb370, %main_bb368, %main_bb367, %main_bb364
  %"824" = icmp ne i32 %"653", 0
  br i1 %"824", label %main_bb371, label %main_bb372

main_bb371:                                       ; preds = %main_IofCallDriver.exit33.i
  %"825" = call i32 @__VERIFIER_nondet_int() #4
  br label %main_bb372

main_bb372:                                       ; preds = %main_bb371, %main_IofCallDriver.exit33.i
  %"826" = icmp ne i32 %"655", 0
  br i1 %"826", label %main_bb373, label %main_IofCallDriver.exit40.i

main_bb373:                                       ; preds = %main_bb372
  %"827" = call i32 @__VERIFIER_nondet_int() #4
  br label %main_IofCallDriver.exit40.i

main_bb374:                                       ; preds = %main_bb369
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_bb375:                                       ; preds = %main_bb357
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_NodeBlock49.i:                               ; preds = %main_bb302
  %Pivot50.i = icmp slt i32 %"657", 5
  br i1 %Pivot50.i, label %main_NodeBlock43.i, label %main_NodeBlock47.i

main_NodeBlock43.i:                               ; preds = %main_NodeBlock49.i
  %Pivot44.i = icmp slt i32 %"657", 4
  br i1 %Pivot44.i, label %main_bb441, label %main_bb376

main_bb376:                                       ; preds = %main_NodeBlock43.i
  store i32 0, i32* @"'myStatus", align 4
  %"828" = load i32* @"'s", align 4
  %"829" = load i32* @"'NP", align 4
  %"830" = icmp eq i32 %"828", %"829"
  br i1 %"830", label %main_bb377, label %main_bb391

main_bb377:                                       ; preds = %main_bb376
  %"831" = load i32* @"'SKIP1", align 4
  store i32 %"831", i32* @"'s", align 4
  %"832" = call i32 @__VERIFIER_nondet_int() #4
  %"833" = load i32* @"'compRegistered", align 4
  %"834" = icmp ne i32 %"833", 0
  br i1 %"834", label %main_bb378, label %main_bb380

main_bb378:                                       ; preds = %main_bb377
  %"835" = call i32 @__VERIFIER_nondet_int() #4
  store i32 1, i32* @"'setEventCalled", align 4
  %"836" = load i32* @"'s", align 4
  %"837" = load i32* @"'NP", align 4
  %"838" = icmp eq i32 %"836", %"837"
  br i1 %"838", label %main_stubMoreProcessingRequired.exit.i25.i, label %main_bb379

main_stubMoreProcessingRequired.exit.i25.i:       ; preds = %main_bb378
  %"839" = load i32* @"'MPR1", align 4
  store i32 %"839", i32* @"'s", align 4
  br label %main_bb380

main_bb379:                                       ; preds = %main_bb378
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_bb380:                                       ; preds = %main_stubMoreProcessingRequired.exit.i25.i, %main_bb377
  %"840" = call i32 @__VERIFIER_nondet_int() #4
  %"841" = icmp eq i32 %"840", 0
  br i1 %"841", label %main_bb382, label %main_bb381

main_bb381:                                       ; preds = %main_bb380
  %"842" = call i32 @__VERIFIER_nondet_int() #4
  %"843" = icmp eq i32 %"842", 1
  %..i26.i = select i1 %"843", i32 -1073741823, i32 259
  br label %main_bb382

main_bb382:                                       ; preds = %main_bb381, %main_bb380
  %returnVal2.0.i27.i = phi i32 [ 0, %main_bb380 ], [ %..i26.i, %main_bb381 ]
  %"844" = load i32* @"'s", align 4
  %"845" = load i32* @"'NP", align 4
  %"846" = icmp eq i32 %"844", %"845"
  br i1 %"846", label %main_bb383, label %main_bb384

main_bb383:                                       ; preds = %main_bb382
  %"847" = load i32* @"'IPC", align 4
  store i32 %"847", i32* @"'s", align 4
  store i32 %returnVal2.0.i27.i, i32* @"'lowerDriverReturn", align 4
  br label %main_IofCallDriver.exit40.i

main_bb384:                                       ; preds = %main_bb382
  %"848" = load i32* @"'s", align 4
  %"849" = load i32* @"'MPR1", align 4
  %"850" = icmp eq i32 %"848", %"849"
  br i1 %"850", label %main_bb385, label %main_bb388

main_bb385:                                       ; preds = %main_bb384
  %"851" = icmp eq i32 %returnVal2.0.i27.i, 259
  br i1 %"851", label %main_bb386, label %main_bb387

main_bb386:                                       ; preds = %main_bb385
  %"852" = load i32* @"'MPR3", align 4
  store i32 %"852", i32* @"'s", align 4
  store i32 %returnVal2.0.i27.i, i32* @"'lowerDriverReturn", align 4
  br label %main_IofCallDriver.exit40.i

main_bb387:                                       ; preds = %main_bb385
  %"853" = load i32* @"'NP", align 4
  store i32 %"853", i32* @"'s", align 4
  store i32 %returnVal2.0.i27.i, i32* @"'lowerDriverReturn", align 4
  br label %main_IofCallDriver.exit40.i

main_bb388:                                       ; preds = %main_bb384
  %"854" = load i32* @"'s", align 4
  %"855" = load i32* @"'SKIP1", align 4
  %"856" = icmp eq i32 %"854", %"855"
  br i1 %"856", label %main_bb389, label %main_bb390

main_bb389:                                       ; preds = %main_bb388
  %"857" = load i32* @"'SKIP2", align 4
  store i32 %"857", i32* @"'s", align 4
  store i32 %returnVal2.0.i27.i, i32* @"'lowerDriverReturn", align 4
  br label %main_IofCallDriver.exit40.i

main_bb390:                                       ; preds = %main_bb388
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_bb391:                                       ; preds = %main_bb376
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_NodeBlock47.i:                               ; preds = %main_NodeBlock49.i
  %Pivot48.i = icmp slt i32 %"657", 6
  br i1 %Pivot48.i, label %main_bb392, label %main_LeafBlock45.i

main_bb392:                                       ; preds = %main_NodeBlock47.i, %main_NodeBlock.i
  %"858" = icmp ne i32 %"650", 0
  br i1 %"858", label %main_bb393, label %main_bb425

main_bb393:                                       ; preds = %main_bb392
  %"859" = call i32 @__VERIFIER_nondet_int() #4
  %"860" = call i32 @__VERIFIER_nondet_int() #4
  %"861" = call i32 @__VERIFIER_nondet_int() #4
  %"862" = call i32 @__VERIFIER_nondet_int() #4
  %"863" = call i32 @__VERIFIER_nondet_int() #4
  %"864" = icmp eq i32 %"860", 1
  br i1 %"864", label %main_bb394, label %main_bb395

main_bb394:                                       ; preds = %main_bb393
  store i32 -1073741101, i32* @"'myStatus", align 4
  br label %main_FlQueueIrpToThread.exit.i

main_bb395:                                       ; preds = %main_bb393
  %"865" = add nsw i32 %"861", 1
  %"866" = icmp eq i32 %"865", 0
  br i1 %"866", label %main_bb396, label %main_bb399

main_bb396:                                       ; preds = %main_bb395
  %"867" = load i32* @"'PagingReferenceCount", align 4
  %"868" = add nsw i32 %"867", 1
  store i32 %"868", i32* @"'PagingReferenceCount", align 4
  %"869" = call i32 @__VERIFIER_nondet_int() #4
  %"870" = icmp eq i32 %"869", 0
  %.0.i.i.i = select i1 %"870", i32 0, i32 -1073741823
  %"871" = icmp slt i32 %.0.i.i.i, 0
  br i1 %"871", label %main_bb397, label %main_bb398

main_bb397:                                       ; preds = %main_bb396
  %"872" = load i32* @"'PagingReferenceCount", align 4
  %"873" = add nsw i32 %"872", -1
  store i32 %"873", i32* @"'PagingReferenceCount", align 4
  br label %main_FlQueueIrpToThread.exit.i

main_bb398:                                       ; preds = %main_bb396
  %"874" = call i32 @__VERIFIER_nondet_int() #4
  %"875" = icmp eq i32 %"874", 0
  %.0.i1.i.i = select i1 %"875", i32 0, i32 -1073741823
  %"876" = call i32 @__VERIFIER_nondet_int() #4
  %"877" = icmp slt i32 %.0.i1.i.i, 0
  br i1 %"877", label %main_FlQueueIrpToThread.exit.i, label %main_bb399

main_bb399:                                       ; preds = %main_bb398, %main_bb395
  %"878" = load i32* @"'pended", align 4
  %"879" = icmp eq i32 %"878", 0
  br i1 %"879", label %main_bb400, label %main_bb424

main_bb400:                                       ; preds = %main_bb399
  store i32 1, i32* @"'pended", align 4
  br label %main_FlQueueIrpToThread.exit.i

main_FlQueueIrpToThread.exit.i:                   ; preds = %main_bb400, %main_bb398, %main_bb397, %main_bb394
  %.0.i.i = phi i32 [ -1073741101, %main_bb394 ], [ %.0.i.i.i, %main_bb397 ], [ 259, %main_bb400 ], [ %.0.i1.i.i, %main_bb398 ]
  %"880" = sext i32 %.0.i.i to i64
  %"881" = icmp eq i64 %"880", 259
  br i1 %"881", label %main_bb401, label %main_bb422

main_bb401:                                       ; preds = %main_FlQueueIrpToThread.exit.i
  %"882" = load i32* @"'s", align 4
  %"883" = load i32* @"'MPR3", align 4
  %"884" = icmp eq i32 %"882", %"883"
  %"885" = load i32* @"'setEventCalled", align 4
  %"886" = icmp eq i32 %"885", 1
  %or.cond.i1.i = and i1 %"884", %"886"
  br i1 %or.cond.i1.i, label %main_bb402, label %main_bb403

main_bb402:                                       ; preds = %main_bb401
  %"887" = load i32* @"'NP", align 4
  store i32 %"887", i32* @"'s", align 4
  store i32 0, i32* @"'setEventCalled", align 4
  br label %main_KeWaitForSingleObject.exit.i

main_bb403:                                       ; preds = %main_bb401
  %"888" = load i32* @"'customIrp", align 4
  %"889" = icmp eq i32 %"888", 1
  br i1 %"889", label %main_bb404, label %main_bb405

main_bb404:                                       ; preds = %main_bb403
  %"890" = load i32* @"'NP", align 4
  store i32 %"890", i32* @"'s", align 4
  store i32 0, i32* @"'customIrp", align 4
  br label %main_KeWaitForSingleObject.exit.i

main_bb405:                                       ; preds = %main_bb403
  %"891" = load i32* @"'s", align 4
  %"892" = load i32* @"'MPR3", align 4
  %"893" = icmp eq i32 %"891", %"892"
  br i1 %"893", label %main_bb406, label %main_KeWaitForSingleObject.exit.i

main_bb406:                                       ; preds = %main_bb405
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_KeWaitForSingleObject.exit.i:                ; preds = %main_bb405, %main_bb404, %main_bb402
  %"894" = call i32 @__VERIFIER_nondet_int() #4
  store i32 0, i32* @"'myStatus", align 4
  %"895" = load i32* @"'s", align 4
  %"896" = load i32* @"'NP", align 4
  %"897" = icmp eq i32 %"895", %"896"
  br i1 %"897", label %main_bb407, label %main_bb421

main_bb407:                                       ; preds = %main_KeWaitForSingleObject.exit.i
  %"898" = load i32* @"'SKIP1", align 4
  store i32 %"898", i32* @"'s", align 4
  %"899" = call i32 @__VERIFIER_nondet_int() #4
  %"900" = load i32* @"'compRegistered", align 4
  %"901" = icmp ne i32 %"900", 0
  br i1 %"901", label %main_bb408, label %main_bb410

main_bb408:                                       ; preds = %main_bb407
  %"902" = call i32 @__VERIFIER_nondet_int() #4
  store i32 1, i32* @"'setEventCalled", align 4
  %"903" = load i32* @"'s", align 4
  %"904" = load i32* @"'NP", align 4
  %"905" = icmp eq i32 %"903", %"904"
  br i1 %"905", label %main_stubMoreProcessingRequired.exit.i4.i, label %main_bb409

main_stubMoreProcessingRequired.exit.i4.i:        ; preds = %main_bb408
  %"906" = load i32* @"'MPR1", align 4
  store i32 %"906", i32* @"'s", align 4
  br label %main_bb410

main_bb409:                                       ; preds = %main_bb408
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_bb410:                                       ; preds = %main_stubMoreProcessingRequired.exit.i4.i, %main_bb407
  %"907" = call i32 @__VERIFIER_nondet_int() #4
  %"908" = icmp eq i32 %"907", 0
  br i1 %"908", label %main_bb412, label %main_bb411

main_bb411:                                       ; preds = %main_bb410
  %"909" = call i32 @__VERIFIER_nondet_int() #4
  %"910" = icmp eq i32 %"909", 1
  %..i5.i = select i1 %"910", i32 -1073741823, i32 259
  br label %main_bb412

main_bb412:                                       ; preds = %main_bb411, %main_bb410
  %returnVal2.0.i6.i = phi i32 [ 0, %main_bb410 ], [ %..i5.i, %main_bb411 ]
  %"911" = load i32* @"'s", align 4
  %"912" = load i32* @"'NP", align 4
  %"913" = icmp eq i32 %"911", %"912"
  br i1 %"913", label %main_bb413, label %main_bb414

main_bb413:                                       ; preds = %main_bb412
  %"914" = load i32* @"'IPC", align 4
  store i32 %"914", i32* @"'s", align 4
  store i32 %returnVal2.0.i6.i, i32* @"'lowerDriverReturn", align 4
  br label %main_IofCallDriver.exit40.i

main_bb414:                                       ; preds = %main_bb412
  %"915" = load i32* @"'s", align 4
  %"916" = load i32* @"'MPR1", align 4
  %"917" = icmp eq i32 %"915", %"916"
  br i1 %"917", label %main_bb415, label %main_bb418

main_bb415:                                       ; preds = %main_bb414
  %"918" = icmp eq i32 %returnVal2.0.i6.i, 259
  br i1 %"918", label %main_bb416, label %main_bb417

main_bb416:                                       ; preds = %main_bb415
  %"919" = load i32* @"'MPR3", align 4
  store i32 %"919", i32* @"'s", align 4
  store i32 %returnVal2.0.i6.i, i32* @"'lowerDriverReturn", align 4
  br label %main_IofCallDriver.exit40.i

main_bb417:                                       ; preds = %main_bb415
  %"920" = load i32* @"'NP", align 4
  store i32 %"920", i32* @"'s", align 4
  store i32 %returnVal2.0.i6.i, i32* @"'lowerDriverReturn", align 4
  br label %main_IofCallDriver.exit40.i

main_bb418:                                       ; preds = %main_bb414
  %"921" = load i32* @"'s", align 4
  %"922" = load i32* @"'SKIP1", align 4
  %"923" = icmp eq i32 %"921", %"922"
  br i1 %"923", label %main_bb419, label %main_bb420

main_bb419:                                       ; preds = %main_bb418
  %"924" = load i32* @"'SKIP2", align 4
  store i32 %"924", i32* @"'s", align 4
  store i32 %returnVal2.0.i6.i, i32* @"'lowerDriverReturn", align 4
  br label %main_IofCallDriver.exit40.i

main_bb420:                                       ; preds = %main_bb418
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_bb421:                                       ; preds = %main_KeWaitForSingleObject.exit.i
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_bb422:                                       ; preds = %main_FlQueueIrpToThread.exit.i
  store i32 -1073741823, i32* @"'myStatus", align 4
  %"925" = load i32* @"'s", align 4
  %"926" = load i32* @"'NP", align 4
  %"927" = icmp eq i32 %"925", %"926"
  br i1 %"927", label %main_IofCompleteRequest.exit8.i, label %main_bb423

main_IofCompleteRequest.exit8.i:                  ; preds = %main_bb422
  %"928" = load i32* @"'DC", align 4
  store i32 %"928", i32* @"'s", align 4
  br label %main_IofCallDriver.exit40.i

main_bb423:                                       ; preds = %main_bb422
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_bb424:                                       ; preds = %main_bb399
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_bb425:                                       ; preds = %main_bb392
  %"929" = load i32* @"'s", align 4
  %"930" = load i32* @"'NP", align 4
  %"931" = icmp eq i32 %"929", %"930"
  br i1 %"931", label %main_bb426, label %main_bb440

main_bb426:                                       ; preds = %main_bb425
  %"932" = load i32* @"'SKIP1", align 4
  store i32 %"932", i32* @"'s", align 4
  %"933" = call i32 @__VERIFIER_nondet_int() #4
  %"934" = load i32* @"'compRegistered", align 4
  %"935" = icmp ne i32 %"934", 0
  br i1 %"935", label %main_bb427, label %main_bb429

main_bb427:                                       ; preds = %main_bb426
  %"936" = call i32 @__VERIFIER_nondet_int() #4
  store i32 1, i32* @"'setEventCalled", align 4
  %"937" = load i32* @"'s", align 4
  %"938" = load i32* @"'NP", align 4
  %"939" = icmp eq i32 %"937", %"938"
  br i1 %"939", label %main_stubMoreProcessingRequired.exit.i.i, label %main_bb428

main_stubMoreProcessingRequired.exit.i.i:         ; preds = %main_bb427
  %"940" = load i32* @"'MPR1", align 4
  store i32 %"940", i32* @"'s", align 4
  br label %main_bb429

main_bb428:                                       ; preds = %main_bb427
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_bb429:                                       ; preds = %main_stubMoreProcessingRequired.exit.i.i, %main_bb426
  %"941" = call i32 @__VERIFIER_nondet_int() #4
  %"942" = icmp eq i32 %"941", 0
  br i1 %"942", label %main_bb431, label %main_bb430

main_bb430:                                       ; preds = %main_bb429
  %"943" = call i32 @__VERIFIER_nondet_int() #4
  %"944" = icmp eq i32 %"943", 1
  %..i.i = select i1 %"944", i32 -1073741823, i32 259
  br label %main_bb431

main_bb431:                                       ; preds = %main_bb430, %main_bb429
  %returnVal2.0.i.i = phi i32 [ 0, %main_bb429 ], [ %..i.i, %main_bb430 ]
  %"945" = load i32* @"'s", align 4
  %"946" = load i32* @"'NP", align 4
  %"947" = icmp eq i32 %"945", %"946"
  br i1 %"947", label %main_bb432, label %main_bb433

main_bb432:                                       ; preds = %main_bb431
  %"948" = load i32* @"'IPC", align 4
  store i32 %"948", i32* @"'s", align 4
  store i32 %returnVal2.0.i.i, i32* @"'lowerDriverReturn", align 4
  br label %main_FloppyPnp.exit

main_bb433:                                       ; preds = %main_bb431
  %"949" = load i32* @"'s", align 4
  %"950" = load i32* @"'MPR1", align 4
  %"951" = icmp eq i32 %"949", %"950"
  br i1 %"951", label %main_bb434, label %main_bb437

main_bb434:                                       ; preds = %main_bb433
  %"952" = icmp eq i32 %returnVal2.0.i.i, 259
  br i1 %"952", label %main_bb435, label %main_bb436

main_bb435:                                       ; preds = %main_bb434
  %"953" = load i32* @"'MPR3", align 4
  store i32 %"953", i32* @"'s", align 4
  store i32 %returnVal2.0.i.i, i32* @"'lowerDriverReturn", align 4
  br label %main_FloppyPnp.exit

main_bb436:                                       ; preds = %main_bb434
  %"954" = load i32* @"'NP", align 4
  store i32 %"954", i32* @"'s", align 4
  store i32 %returnVal2.0.i.i, i32* @"'lowerDriverReturn", align 4
  br label %main_FloppyPnp.exit

main_bb437:                                       ; preds = %main_bb433
  %"955" = load i32* @"'s", align 4
  %"956" = load i32* @"'SKIP1", align 4
  %"957" = icmp eq i32 %"955", %"956"
  br i1 %"957", label %main_bb438, label %main_bb439

main_bb438:                                       ; preds = %main_bb437
  %"958" = load i32* @"'SKIP2", align 4
  store i32 %"958", i32* @"'s", align 4
  store i32 %returnVal2.0.i.i, i32* @"'lowerDriverReturn", align 4
  br label %main_FloppyPnp.exit

main_bb439:                                       ; preds = %main_bb437
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_bb440:                                       ; preds = %main_bb425
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_LeafBlock45.i:                               ; preds = %main_NodeBlock47.i
  %SwitchLeaf46.i = icmp eq i32 %"657", 6
  br i1 %SwitchLeaf46.i, label %main_bb441, label %main_NewDefault.i

main_bb441:                                       ; preds = %main_LeafBlock45.i, %main_NodeBlock43.i
  %"959" = icmp ne i32 %"650", 0
  store i32 0, i32* @"'myStatus", align 4
  %"960" = load i32* @"'s", align 4
  %"961" = load i32* @"'NP", align 4
  br i1 %"959", label %main_bb442, label %main_bb468

main_bb442:                                       ; preds = %main_bb441
  %"962" = icmp ne i32 %"960", %"961"
  br i1 %"962", label %main_bb443, label %main_bb444

main_bb443:                                       ; preds = %main_bb442
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_bb444:                                       ; preds = %main_bb442
  %"963" = load i32* @"'compRegistered", align 4
  %"964" = icmp ne i32 %"963", 0
  br i1 %"964", label %main_bb445, label %main_bb446

main_bb445:                                       ; preds = %main_bb444
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_bb446:                                       ; preds = %main_bb444
  store i32 1, i32* @"'compRegistered", align 4
  %"965" = call i32 @__VERIFIER_nondet_int() #4
  %"966" = load i32* @"'compRegistered", align 4
  %"967" = icmp ne i32 %"966", 0
  br i1 %"967", label %main_bb447, label %main_bb449

main_bb447:                                       ; preds = %main_bb446
  %"968" = call i32 @__VERIFIER_nondet_int() #4
  store i32 1, i32* @"'setEventCalled", align 4
  %"969" = load i32* @"'s", align 4
  %"970" = load i32* @"'NP", align 4
  %"971" = icmp eq i32 %"969", %"970"
  br i1 %"971", label %main_stubMoreProcessingRequired.exit.i16.i, label %main_bb448

main_stubMoreProcessingRequired.exit.i16.i:       ; preds = %main_bb447
  %"972" = load i32* @"'MPR1", align 4
  store i32 %"972", i32* @"'s", align 4
  br label %main_bb449

main_bb448:                                       ; preds = %main_bb447
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_bb449:                                       ; preds = %main_stubMoreProcessingRequired.exit.i16.i, %main_bb446
  %"973" = call i32 @__VERIFIER_nondet_int() #4
  %"974" = icmp eq i32 %"973", 0
  br i1 %"974", label %main_bb451, label %main_bb450

main_bb450:                                       ; preds = %main_bb449
  %"975" = call i32 @__VERIFIER_nondet_int() #4
  %"976" = icmp eq i32 %"975", 1
  %..i17.i = select i1 %"976", i32 -1073741823, i32 259
  br label %main_bb451

main_bb451:                                       ; preds = %main_bb450, %main_bb449
  %returnVal2.0.i18.i = phi i32 [ 0, %main_bb449 ], [ %..i17.i, %main_bb450 ]
  %"977" = load i32* @"'s", align 4
  %"978" = load i32* @"'NP", align 4
  %"979" = icmp eq i32 %"977", %"978"
  br i1 %"979", label %main_bb452, label %main_bb453

main_bb452:                                       ; preds = %main_bb451
  %"980" = load i32* @"'IPC", align 4
  store i32 %"980", i32* @"'s", align 4
  store i32 %returnVal2.0.i18.i, i32* @"'lowerDriverReturn", align 4
  br label %main_IofCallDriver.exit19.i

main_bb453:                                       ; preds = %main_bb451
  %"981" = load i32* @"'s", align 4
  %"982" = load i32* @"'MPR1", align 4
  %"983" = icmp eq i32 %"981", %"982"
  br i1 %"983", label %main_bb454, label %main_bb457

main_bb454:                                       ; preds = %main_bb453
  %"984" = icmp eq i32 %returnVal2.0.i18.i, 259
  br i1 %"984", label %main_bb455, label %main_bb456

main_bb455:                                       ; preds = %main_bb454
  %"985" = load i32* @"'MPR3", align 4
  store i32 %"985", i32* @"'s", align 4
  store i32 %returnVal2.0.i18.i, i32* @"'lowerDriverReturn", align 4
  br label %main_IofCallDriver.exit19.i

main_bb456:                                       ; preds = %main_bb454
  %"986" = load i32* @"'NP", align 4
  store i32 %"986", i32* @"'s", align 4
  store i32 %returnVal2.0.i18.i, i32* @"'lowerDriverReturn", align 4
  br label %main_IofCallDriver.exit19.i

main_bb457:                                       ; preds = %main_bb453
  %"987" = load i32* @"'s", align 4
  %"988" = load i32* @"'SKIP1", align 4
  %"989" = icmp eq i32 %"987", %"988"
  br i1 %"989", label %main_bb458, label %main_bb467

main_bb458:                                       ; preds = %main_bb457
  %"990" = load i32* @"'SKIP2", align 4
  store i32 %"990", i32* @"'s", align 4
  store i32 %returnVal2.0.i18.i, i32* @"'lowerDriverReturn", align 4
  br label %main_IofCallDriver.exit19.i

main_IofCallDriver.exit19.i:                      ; preds = %main_bb458, %main_bb456, %main_bb455, %main_bb452
  %"991" = sext i32 %returnVal2.0.i18.i to i64
  %"992" = icmp eq i64 %"991", 259
  br i1 %"992", label %main_bb459, label %main_bb465

main_bb459:                                       ; preds = %main_IofCallDriver.exit19.i
  %"993" = load i32* @"'s", align 4
  %"994" = load i32* @"'MPR3", align 4
  %"995" = icmp eq i32 %"993", %"994"
  %"996" = load i32* @"'setEventCalled", align 4
  %"997" = icmp eq i32 %"996", 1
  %or.cond.i20.i = and i1 %"995", %"997"
  br i1 %or.cond.i20.i, label %main_bb460, label %main_bb461

main_bb460:                                       ; preds = %main_bb459
  %"998" = load i32* @"'NP", align 4
  store i32 %"998", i32* @"'s", align 4
  store i32 0, i32* @"'setEventCalled", align 4
  br label %main_KeWaitForSingleObject.exit22.i

main_bb461:                                       ; preds = %main_bb459
  %"999" = load i32* @"'customIrp", align 4
  %"1000" = icmp eq i32 %"999", 1
  br i1 %"1000", label %main_bb462, label %main_bb463

main_bb462:                                       ; preds = %main_bb461
  %"1001" = load i32* @"'NP", align 4
  store i32 %"1001", i32* @"'s", align 4
  store i32 0, i32* @"'customIrp", align 4
  br label %main_KeWaitForSingleObject.exit22.i

main_bb463:                                       ; preds = %main_bb461
  %"1002" = load i32* @"'s", align 4
  %"1003" = load i32* @"'MPR3", align 4
  %"1004" = icmp eq i32 %"1002", %"1003"
  br i1 %"1004", label %main_bb464, label %main_KeWaitForSingleObject.exit22.i

main_bb464:                                       ; preds = %main_bb463
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_KeWaitForSingleObject.exit22.i:              ; preds = %main_bb463, %main_bb462, %main_bb460
  %"1005" = call i32 @__VERIFIER_nondet_int() #4
  %"1006" = load i32* @"'myStatus", align 4
  br label %main_bb465

main_bb465:                                       ; preds = %main_KeWaitForSingleObject.exit22.i, %main_IofCallDriver.exit19.i
  %ntStatus.1.i = phi i32 [ %"1006", %main_KeWaitForSingleObject.exit22.i ], [ %returnVal2.0.i18.i, %main_IofCallDriver.exit19.i ]
  store i32 %ntStatus.1.i, i32* @"'myStatus", align 4
  %"1007" = load i32* @"'s", align 4
  %"1008" = load i32* @"'NP", align 4
  %"1009" = icmp eq i32 %"1007", %"1008"
  br i1 %"1009", label %main_IofCompleteRequest.exit23.i, label %main_bb466

main_IofCompleteRequest.exit23.i:                 ; preds = %main_bb465
  %"1010" = load i32* @"'DC", align 4
  store i32 %"1010", i32* @"'s", align 4
  br label %main_IofCallDriver.exit40.i

main_bb466:                                       ; preds = %main_bb465
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_bb467:                                       ; preds = %main_bb457
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_bb468:                                       ; preds = %main_bb441
  %"1011" = icmp eq i32 %"960", %"961"
  br i1 %"1011", label %main_bb469, label %main_bb483

main_bb469:                                       ; preds = %main_bb468
  %"1012" = load i32* @"'SKIP1", align 4
  store i32 %"1012", i32* @"'s", align 4
  %"1013" = call i32 @__VERIFIER_nondet_int() #4
  %"1014" = load i32* @"'compRegistered", align 4
  %"1015" = icmp ne i32 %"1014", 0
  br i1 %"1015", label %main_bb470, label %main_bb472

main_bb470:                                       ; preds = %main_bb469
  %"1016" = call i32 @__VERIFIER_nondet_int() #4
  store i32 1, i32* @"'setEventCalled", align 4
  %"1017" = load i32* @"'s", align 4
  %"1018" = load i32* @"'NP", align 4
  %"1019" = icmp eq i32 %"1017", %"1018"
  br i1 %"1019", label %main_stubMoreProcessingRequired.exit.i10.i, label %main_bb471

main_stubMoreProcessingRequired.exit.i10.i:       ; preds = %main_bb470
  %"1020" = load i32* @"'MPR1", align 4
  store i32 %"1020", i32* @"'s", align 4
  br label %main_bb472

main_bb471:                                       ; preds = %main_bb470
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_bb472:                                       ; preds = %main_stubMoreProcessingRequired.exit.i10.i, %main_bb469
  %"1021" = call i32 @__VERIFIER_nondet_int() #4
  %"1022" = icmp eq i32 %"1021", 0
  br i1 %"1022", label %main_bb474, label %main_bb473

main_bb473:                                       ; preds = %main_bb472
  %"1023" = call i32 @__VERIFIER_nondet_int() #4
  %"1024" = icmp eq i32 %"1023", 1
  %..i11.i = select i1 %"1024", i32 -1073741823, i32 259
  br label %main_bb474

main_bb474:                                       ; preds = %main_bb473, %main_bb472
  %returnVal2.0.i12.i = phi i32 [ 0, %main_bb472 ], [ %..i11.i, %main_bb473 ]
  %"1025" = load i32* @"'s", align 4
  %"1026" = load i32* @"'NP", align 4
  %"1027" = icmp eq i32 %"1025", %"1026"
  br i1 %"1027", label %main_bb475, label %main_bb476

main_bb475:                                       ; preds = %main_bb474
  %"1028" = load i32* @"'IPC", align 4
  store i32 %"1028", i32* @"'s", align 4
  store i32 %returnVal2.0.i12.i, i32* @"'lowerDriverReturn", align 4
  br label %main_IofCallDriver.exit40.i

main_bb476:                                       ; preds = %main_bb474
  %"1029" = load i32* @"'s", align 4
  %"1030" = load i32* @"'MPR1", align 4
  %"1031" = icmp eq i32 %"1029", %"1030"
  br i1 %"1031", label %main_bb477, label %main_bb480

main_bb477:                                       ; preds = %main_bb476
  %"1032" = icmp eq i32 %returnVal2.0.i12.i, 259
  br i1 %"1032", label %main_bb478, label %main_bb479

main_bb478:                                       ; preds = %main_bb477
  %"1033" = load i32* @"'MPR3", align 4
  store i32 %"1033", i32* @"'s", align 4
  store i32 %returnVal2.0.i12.i, i32* @"'lowerDriverReturn", align 4
  br label %main_IofCallDriver.exit40.i

main_bb479:                                       ; preds = %main_bb477
  %"1034" = load i32* @"'NP", align 4
  store i32 %"1034", i32* @"'s", align 4
  store i32 %returnVal2.0.i12.i, i32* @"'lowerDriverReturn", align 4
  br label %main_IofCallDriver.exit40.i

main_bb480:                                       ; preds = %main_bb476
  %"1035" = load i32* @"'s", align 4
  %"1036" = load i32* @"'SKIP1", align 4
  %"1037" = icmp eq i32 %"1035", %"1036"
  br i1 %"1037", label %main_bb481, label %main_bb482

main_bb481:                                       ; preds = %main_bb480
  %"1038" = load i32* @"'SKIP2", align 4
  store i32 %"1038", i32* @"'s", align 4
  store i32 %returnVal2.0.i12.i, i32* @"'lowerDriverReturn", align 4
  br label %main_IofCallDriver.exit40.i

main_bb482:                                       ; preds = %main_bb480
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_bb483:                                       ; preds = %main_bb468
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_NewDefault.i:                                ; preds = %main_LeafBlock45.i, %main_LeafBlock.i
  %"1039" = load i32* @"'s", align 4
  %"1040" = load i32* @"'NP", align 4
  %"1041" = icmp eq i32 %"1039", %"1040"
  br i1 %"1041", label %main_bb484, label %main_bb498

main_bb484:                                       ; preds = %main_NewDefault.i
  %"1042" = load i32* @"'SKIP1", align 4
  store i32 %"1042", i32* @"'s", align 4
  %"1043" = call i32 @__VERIFIER_nondet_int() #4
  %"1044" = load i32* @"'compRegistered", align 4
  %"1045" = icmp ne i32 %"1044", 0
  br i1 %"1045", label %main_bb485, label %main_bb487

main_bb485:                                       ; preds = %main_bb484
  %"1046" = call i32 @__VERIFIER_nondet_int() #4
  store i32 1, i32* @"'setEventCalled", align 4
  %"1047" = load i32* @"'s", align 4
  %"1048" = load i32* @"'NP", align 4
  %"1049" = icmp eq i32 %"1047", %"1048"
  br i1 %"1049", label %main_stubMoreProcessingRequired.exit.i37.i, label %main_bb486

main_stubMoreProcessingRequired.exit.i37.i:       ; preds = %main_bb485
  %"1050" = load i32* @"'MPR1", align 4
  store i32 %"1050", i32* @"'s", align 4
  br label %main_bb487

main_bb486:                                       ; preds = %main_bb485
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_bb487:                                       ; preds = %main_stubMoreProcessingRequired.exit.i37.i, %main_bb484
  %"1051" = call i32 @__VERIFIER_nondet_int() #4
  %"1052" = icmp eq i32 %"1051", 0
  br i1 %"1052", label %main_bb489, label %main_bb488

main_bb488:                                       ; preds = %main_bb487
  %"1053" = call i32 @__VERIFIER_nondet_int() #4
  %"1054" = icmp eq i32 %"1053", 1
  %..i38.i = select i1 %"1054", i32 -1073741823, i32 259
  br label %main_bb489

main_bb489:                                       ; preds = %main_bb488, %main_bb487
  %returnVal2.0.i39.i = phi i32 [ 0, %main_bb487 ], [ %..i38.i, %main_bb488 ]
  %"1055" = load i32* @"'s", align 4
  %"1056" = load i32* @"'NP", align 4
  %"1057" = icmp eq i32 %"1055", %"1056"
  br i1 %"1057", label %main_bb490, label %main_bb491

main_bb490:                                       ; preds = %main_bb489
  %"1058" = load i32* @"'IPC", align 4
  store i32 %"1058", i32* @"'s", align 4
  store i32 %returnVal2.0.i39.i, i32* @"'lowerDriverReturn", align 4
  br label %main_IofCallDriver.exit40.i

main_bb491:                                       ; preds = %main_bb489
  %"1059" = load i32* @"'s", align 4
  %"1060" = load i32* @"'MPR1", align 4
  %"1061" = icmp eq i32 %"1059", %"1060"
  br i1 %"1061", label %main_bb492, label %main_bb495

main_bb492:                                       ; preds = %main_bb491
  %"1062" = icmp eq i32 %returnVal2.0.i39.i, 259
  br i1 %"1062", label %main_bb493, label %main_bb494

main_bb493:                                       ; preds = %main_bb492
  %"1063" = load i32* @"'MPR3", align 4
  store i32 %"1063", i32* @"'s", align 4
  store i32 %returnVal2.0.i39.i, i32* @"'lowerDriverReturn", align 4
  br label %main_IofCallDriver.exit40.i

main_bb494:                                       ; preds = %main_bb492
  %"1064" = load i32* @"'NP", align 4
  store i32 %"1064", i32* @"'s", align 4
  store i32 %returnVal2.0.i39.i, i32* @"'lowerDriverReturn", align 4
  br label %main_IofCallDriver.exit40.i

main_bb495:                                       ; preds = %main_bb491
  %"1065" = load i32* @"'s", align 4
  %"1066" = load i32* @"'SKIP1", align 4
  %"1067" = icmp eq i32 %"1065", %"1066"
  br i1 %"1067", label %main_bb496, label %main_bb497

main_bb496:                                       ; preds = %main_bb495
  %"1068" = load i32* @"'SKIP2", align 4
  store i32 %"1068", i32* @"'s", align 4
  store i32 %returnVal2.0.i39.i, i32* @"'lowerDriverReturn", align 4
  br label %main_IofCallDriver.exit40.i

main_IofCallDriver.exit40.i:                      ; preds = %main_bb496, %main_bb494, %main_bb493, %main_bb490, %main_bb481, %main_bb479, %main_bb478, %main_bb475, %main_IofCompleteRequest.exit23.i, %main_IofCompleteRequest.exit8.i, %main_bb419, %main_bb417, %main_bb416, %main_bb413, %main_bb389, %main_bb387, %main_bb386, %main_bb383, %main_bb373, %main_bb372, %main_FloppyStartDevice.exit.i
  %ntStatus.4.i = phi i32 [ %returnVal2.0.i39.i, %main_bb490 ], [ %returnVal2.0.i39.i, %main_bb493 ], [ %returnVal2.0.i39.i, %main_bb494 ], [ %returnVal2.0.i39.i, %main_bb496 ], [ %ntStatus.3.i.i, %main_FloppyStartDevice.exit.i ], [ -1073741823, %main_IofCompleteRequest.exit8.i ], [ %returnVal2.0.i6.i, %main_bb413 ], [ %returnVal2.0.i6.i, %main_bb416 ], [ %returnVal2.0.i6.i, %main_bb417 ], [ %returnVal2.0.i6.i, %main_bb419 ], [ %ntStatus.1.i, %main_IofCompleteRequest.exit23.i ], [ %returnVal2.0.i12.i, %main_bb475 ], [ %returnVal2.0.i12.i, %main_bb478 ], [ %returnVal2.0.i12.i, %main_bb479 ], [ %returnVal2.0.i12.i, %main_bb481 ], [ %returnVal2.0.i27.i, %main_bb383 ], [ %returnVal2.0.i27.i, %main_bb386 ], [ %returnVal2.0.i27.i, %main_bb387 ], [ %returnVal2.0.i27.i, %main_bb389 ], [ %returnVal2.0.i32.i, %main_bb373 ], [ %returnVal2.0.i32.i, %main_bb372 ]
  %"1069" = load i32* @"'PagingReferenceCount", align 4
  %"1070" = add nsw i32 %"1069", -1
  store i32 %"1070", i32* @"'PagingReferenceCount", align 4
  br label %main_FloppyPnp.exit

main_bb497:                                       ; preds = %main_bb495
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_bb498:                                       ; preds = %main_NewDefault.i
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_FloppyPnp.exit:                              ; preds = %main_IofCompleteRequest.exit.i, %main_bb432, %main_bb435, %main_bb436, %main_bb438, %main_IofCallDriver.exit40.i, %main_bb296
  %status.0 = phi i32 [ 0, %main_bb296 ], [ -1073741738, %main_IofCompleteRequest.exit.i ], [ %ntStatus.4.i, %main_IofCallDriver.exit40.i ], [ %returnVal2.0.i.i, %main_bb432 ], [ %returnVal2.0.i.i, %main_bb435 ], [ %returnVal2.0.i.i, %main_bb436 ], [ %returnVal2.0.i.i, %main_bb438 ]
  %"1071" = load i32* @"'pended", align 4
  %"1072" = icmp eq i32 %"1071", 1
  br i1 %"1072", label %main_bb499, label %main_bb501

main_bb499:                                       ; preds = %main_FloppyPnp.exit
  %"1073" = load i32* @"'s", align 4
  %"1074" = load i32* @"'NP", align 4
  %"1075" = icmp eq i32 %"1073", %"1074"
  br i1 %"1075", label %main_bb500, label %main_bb501

main_bb500:                                       ; preds = %main_bb499
  %"1076" = load i32* @"'NP", align 4
  store i32 %"1076", i32* @"'s", align 4
  br label %main_bb517

main_bb501:                                       ; preds = %main_FloppyPnp.exit, %main_bb499
  %"1077" = load i32* @"'pended", align 4
  %"1078" = icmp eq i32 %"1077", 1
  br i1 %"1078", label %main_bb502, label %main_bb504

main_bb502:                                       ; preds = %main_bb501
  %"1079" = load i32* @"'s", align 4
  %"1080" = load i32* @"'MPR3", align 4
  %"1081" = icmp eq i32 %"1079", %"1080"
  br i1 %"1081", label %main_bb503, label %main_bb504

main_bb503:                                       ; preds = %main_bb502
  %"1082" = load i32* @"'MPR3", align 4
  store i32 %"1082", i32* @"'s", align 4
  br label %main_bb517

main_bb504:                                       ; preds = %main_bb501, %main_bb502
  %"1083" = load i32* @"'s", align 4
  %"1084" = load i32* @"'UNLOADED", align 4
  %"1085" = icmp ne i32 %"1083", %"1084"
  %"1086" = icmp ne i32 %status.0, -1
  %or.cond = and i1 %"1085", %"1086"
  br i1 %or.cond, label %main_bb505, label %main_bb517

main_bb505:                                       ; preds = %main_bb504
  %"1087" = load i32* @"'s", align 4
  %"1088" = load i32* @"'SKIP2", align 4
  %"1089" = icmp ne i32 %"1087", %"1088"
  br i1 %"1089", label %main_bb506, label %main_bb509

main_bb506:                                       ; preds = %main_bb505
  %"1090" = load i32* @"'s", align 4
  %"1091" = load i32* @"'IPC", align 4
  %"1092" = icmp ne i32 %"1090", %"1091"
  br i1 %"1092", label %main_bb507, label %main_bb509

main_bb507:                                       ; preds = %main_bb506
  %"1093" = load i32* @"'s", align 4
  %"1094" = load i32* @"'DC", align 4
  %"1095" = icmp ne i32 %"1093", %"1094"
  br i1 %"1095", label %main_bb508, label %main_bb509

main_bb508:                                       ; preds = %main_bb507
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_bb509:                                       ; preds = %main_bb505, %main_bb506, %main_bb507
  %"1096" = load i32* @"'pended", align 4
  %"1097" = icmp eq i32 %"1096", 1
  br i1 %"1097", label %main_bb510, label %main_bb512

main_bb510:                                       ; preds = %main_bb509
  %"1098" = icmp ne i32 %status.0, 259
  br i1 %"1098", label %main_bb511, label %main_bb517

main_bb511:                                       ; preds = %main_bb510
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_bb512:                                       ; preds = %main_bb509
  %"1099" = load i32* @"'s", align 4
  %"1100" = load i32* @"'DC", align 4
  %"1101" = icmp eq i32 %"1099", %"1100"
  br i1 %"1101", label %main_bb513, label %main_bb515

main_bb513:                                       ; preds = %main_bb512
  %"1102" = icmp eq i32 %status.0, 259
  br i1 %"1102", label %main_bb514, label %main_bb517

main_bb514:                                       ; preds = %main_bb513
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_bb515:                                       ; preds = %main_bb512
  %"1103" = load i32* @"'lowerDriverReturn", align 4
  %"1104" = icmp ne i32 %status.0, %"1103"
  br i1 %"1104", label %main_bb516, label %main_bb517

main_bb516:                                       ; preds = %main_bb515
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_bb517:                                       ; preds = %main_bb500, %main_bb504, %main_bb513, %main_bb515, %main_bb510, %main_bb503, %main_bb298, %main_bb297
  %.0 = phi i32 [ -1, %main_bb297 ], [ -1, %main_bb298 ], [ 0, %main_bb503 ], [ 0, %main_bb510 ], [ 0, %main_bb515 ], [ 0, %main_bb513 ], [ 0, %main_bb504 ], [ 0, %main_bb500 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @IoBuildDeviceIoControlRequest(i32 %IoControlCode, i32 %DeviceObject, i32 %InputBuffer, i32 %InputBufferLength, i32 %OutputBuffer, i32 %OutputBufferLength, i32 %InternalDeviceIoControl, i32 %Event, i32 %IoStatusBlock) #0 {
IoBuildDeviceIoControlRequest_bb518:
  %"1105" = call i32 @__VERIFIER_nondet_int()
  store i32 1, i32* @"'customIrp", align 4
  %"1106" = call i32 @__VERIFIER_nondet_int()
  %"1107" = icmp eq i32 %"1106", 0
  %.0 = select i1 %"1107", i32 %"1105", i32 0
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @IoDeleteSymbolicLink(i32 %SymbolicLinkName) #0 {
IoDeleteSymbolicLink_bb519:
  %"1108" = call i32 @__VERIFIER_nondet_int()
  %"1109" = icmp eq i32 %"1108", 0
  %.0 = select i1 %"1109", i32 0, i32 -1073741823
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @IoQueryDeviceDescription(i32 %BusType, i32 %BusNumber, i32 %ControllerType, i32 %ControllerNumber, i32 %PeripheralType, i32 %PeripheralNumber, i32 %CalloutRoutine, i32 %Context) #0 {
IoQueryDeviceDescription_bb520:
  %"1110" = call i32 @__VERIFIER_nondet_int()
  %"1111" = icmp eq i32 %"1110", 0
  %.0 = select i1 %"1111", i32 0, i32 -1073741823
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @IoRegisterDeviceInterface(i32 %PhysicalDeviceObject, i32 %InterfaceClassGuid, i32 %ReferenceString, i32 %SymbolicLinkName) #0 {
IoRegisterDeviceInterface_bb521:
  %"1112" = call i32 @__VERIFIER_nondet_int()
  %"1113" = icmp eq i32 %"1112", 0
  %.0 = select i1 %"1113", i32 0, i32 -1073741808
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @IoSetDeviceInterfaceState(i32 %SymbolicLinkName, i32 %Enable) #0 {
IoSetDeviceInterfaceState_bb522:
  %"1114" = call i32 @__VERIFIER_nondet_int()
  %"1115" = icmp eq i32 %"1114", 0
  %.0 = select i1 %"1115", i32 0, i32 -1073741823
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @stubMoreProcessingRequired() #0 {
stubMoreProcessingRequired_bb523:
  %"1116" = load i32* @"'s", align 4
  %"1117" = load i32* @"'NP", align 4
  %"1118" = icmp eq i32 %"1116", %"1117"
  br i1 %"1118", label %stubMoreProcessingRequired_bb524, label %stubMoreProcessingRequired_bb525

stubMoreProcessingRequired_bb524:                 ; preds = %stubMoreProcessingRequired_bb523
  %"1119" = load i32* @"'MPR1", align 4
  store i32 %"1119", i32* @"'s", align 4
  ret void

stubMoreProcessingRequired_bb525:                 ; preds = %stubMoreProcessingRequired_bb523
  call void (...)* @__VERIFIER_error() #5
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @IofCallDriver(i32 %DeviceObject, i32 %Irp) #0 {
IofCallDriver_bb526:
  %"1120" = call i32 @__VERIFIER_nondet_int()
  %"1121" = load i32* @"'compRegistered", align 4
  %"1122" = icmp ne i32 %"1121", 0
  br i1 %"1122", label %IofCallDriver_bb527, label %IofCallDriver_bb530

IofCallDriver_bb527:                              ; preds = %IofCallDriver_bb526
  %"1123" = call i32 @__VERIFIER_nondet_int() #4
  store i32 1, i32* @"'setEventCalled", align 4
  %"1124" = sext i32 -1073741802 to i64
  %"1125" = icmp eq i64 %"1124", -1073741802
  br i1 %"1125", label %IofCallDriver_bb528, label %IofCallDriver_bb530

IofCallDriver_bb528:                              ; preds = %IofCallDriver_bb527
  %"1126" = load i32* @"'s", align 4
  %"1127" = load i32* @"'NP", align 4
  %"1128" = icmp eq i32 %"1126", %"1127"
  br i1 %"1128", label %IofCallDriver_stubMoreProcessingRequired.exit, label %IofCallDriver_bb529

IofCallDriver_stubMoreProcessingRequired.exit:    ; preds = %IofCallDriver_bb528
  %"1129" = load i32* @"'MPR1", align 4
  store i32 %"1129", i32* @"'s", align 4
  br label %IofCallDriver_bb530

IofCallDriver_bb529:                              ; preds = %IofCallDriver_bb528
  call void (...)* @__VERIFIER_error() #5
  unreachable

IofCallDriver_bb530:                              ; preds = %IofCallDriver_bb527, %IofCallDriver_stubMoreProcessingRequired.exit, %IofCallDriver_bb526
  %"1130" = call i32 @__VERIFIER_nondet_int()
  %"1131" = icmp eq i32 %"1130", 0
  br i1 %"1131", label %IofCallDriver_bb532, label %IofCallDriver_bb531

IofCallDriver_bb531:                              ; preds = %IofCallDriver_bb530
  %"1132" = call i32 @__VERIFIER_nondet_int()
  %"1133" = icmp eq i32 %"1132", 1
  %. = select i1 %"1133", i32 -1073741823, i32 259
  br label %IofCallDriver_bb532

IofCallDriver_bb532:                              ; preds = %IofCallDriver_bb531, %IofCallDriver_bb530
  %returnVal2.0 = phi i32 [ 0, %IofCallDriver_bb530 ], [ %., %IofCallDriver_bb531 ]
  %"1134" = load i32* @"'s", align 4
  %"1135" = load i32* @"'NP", align 4
  %"1136" = icmp eq i32 %"1134", %"1135"
  br i1 %"1136", label %IofCallDriver_bb533, label %IofCallDriver_bb534

IofCallDriver_bb533:                              ; preds = %IofCallDriver_bb532
  %"1137" = load i32* @"'IPC", align 4
  store i32 %"1137", i32* @"'s", align 4
  store i32 %returnVal2.0, i32* @"'lowerDriverReturn", align 4
  br label %IofCallDriver_bb540

IofCallDriver_bb534:                              ; preds = %IofCallDriver_bb532
  %"1138" = load i32* @"'s", align 4
  %"1139" = load i32* @"'MPR1", align 4
  %"1140" = icmp eq i32 %"1138", %"1139"
  br i1 %"1140", label %IofCallDriver_bb535, label %IofCallDriver_bb538

IofCallDriver_bb535:                              ; preds = %IofCallDriver_bb534
  %"1141" = icmp eq i32 %returnVal2.0, 259
  br i1 %"1141", label %IofCallDriver_bb536, label %IofCallDriver_bb537

IofCallDriver_bb536:                              ; preds = %IofCallDriver_bb535
  %"1142" = load i32* @"'MPR3", align 4
  store i32 %"1142", i32* @"'s", align 4
  store i32 %returnVal2.0, i32* @"'lowerDriverReturn", align 4
  br label %IofCallDriver_bb540

IofCallDriver_bb537:                              ; preds = %IofCallDriver_bb535
  %"1143" = load i32* @"'NP", align 4
  store i32 %"1143", i32* @"'s", align 4
  store i32 %returnVal2.0, i32* @"'lowerDriverReturn", align 4
  br label %IofCallDriver_bb540

IofCallDriver_bb538:                              ; preds = %IofCallDriver_bb534
  %"1144" = load i32* @"'s", align 4
  %"1145" = load i32* @"'SKIP1", align 4
  %"1146" = icmp eq i32 %"1144", %"1145"
  br i1 %"1146", label %IofCallDriver_bb539, label %IofCallDriver_bb541

IofCallDriver_bb539:                              ; preds = %IofCallDriver_bb538
  %"1147" = load i32* @"'SKIP2", align 4
  store i32 %"1147", i32* @"'s", align 4
  store i32 %returnVal2.0, i32* @"'lowerDriverReturn", align 4
  br label %IofCallDriver_bb540

IofCallDriver_bb540:                              ; preds = %IofCallDriver_bb539, %IofCallDriver_bb537, %IofCallDriver_bb536, %IofCallDriver_bb533
  ret i32 %returnVal2.0

IofCallDriver_bb541:                              ; preds = %IofCallDriver_bb538
  call void (...)* @__VERIFIER_error() #5
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @KeSetEvent(i32 %Event, i32 %Increment, i32 %Wait) #0 {
KeSetEvent_bb542:
  %"1148" = call i32 @__VERIFIER_nondet_int()
  store i32 1, i32* @"'setEventCalled", align 4
  ret i32 %"1148"
}

; Function Attrs: nounwind uwtable
define i32 @KeWaitForSingleObject(i32 %Object, i32 %WaitReason, i32 %WaitMode, i32 %Alertable, i32 %Timeout) #0 {
KeWaitForSingleObject_bb543:
  %"1149" = load i32* @"'s", align 4
  %"1150" = load i32* @"'MPR3", align 4
  %"1151" = icmp eq i32 %"1149", %"1150"
  %"1152" = load i32* @"'setEventCalled", align 4
  %"1153" = icmp eq i32 %"1152", 1
  %or.cond = and i1 %"1151", %"1153"
  br i1 %or.cond, label %KeWaitForSingleObject_bb544, label %KeWaitForSingleObject_bb545

KeWaitForSingleObject_bb544:                      ; preds = %KeWaitForSingleObject_bb543
  %"1154" = load i32* @"'NP", align 4
  store i32 %"1154", i32* @"'s", align 4
  store i32 0, i32* @"'setEventCalled", align 4
  br label %KeWaitForSingleObject_bb549

KeWaitForSingleObject_bb545:                      ; preds = %KeWaitForSingleObject_bb543
  %"1155" = load i32* @"'customIrp", align 4
  %"1156" = icmp eq i32 %"1155", 1
  br i1 %"1156", label %KeWaitForSingleObject_bb546, label %KeWaitForSingleObject_bb547

KeWaitForSingleObject_bb546:                      ; preds = %KeWaitForSingleObject_bb545
  %"1157" = load i32* @"'NP", align 4
  store i32 %"1157", i32* @"'s", align 4
  store i32 0, i32* @"'customIrp", align 4
  br label %KeWaitForSingleObject_bb549

KeWaitForSingleObject_bb547:                      ; preds = %KeWaitForSingleObject_bb545
  %"1158" = load i32* @"'s", align 4
  %"1159" = load i32* @"'MPR3", align 4
  %"1160" = icmp eq i32 %"1158", %"1159"
  br i1 %"1160", label %KeWaitForSingleObject_bb548, label %KeWaitForSingleObject_bb549

KeWaitForSingleObject_bb548:                      ; preds = %KeWaitForSingleObject_bb547
  call void (...)* @__VERIFIER_error() #5
  unreachable

KeWaitForSingleObject_bb549:                      ; preds = %KeWaitForSingleObject_bb546, %KeWaitForSingleObject_bb547, %KeWaitForSingleObject_bb544
  %"1161" = call i32 @__VERIFIER_nondet_int()
  %"1162" = icmp eq i32 %"1161", 0
  %.0 = select i1 %"1162", i32 0, i32 -1073741823
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @ObReferenceObjectByHandle(i32 %Handle, i32 %DesiredAccess, i32 %ObjectType, i32 %AccessMode, i32 %Object, i32 %HandleInformation) #0 {
ObReferenceObjectByHandle_bb550:
  %"1163" = call i32 @__VERIFIER_nondet_int()
  %"1164" = icmp eq i32 %"1163", 0
  %.0 = select i1 %"1164", i32 0, i32 -1073741823
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @PsCreateSystemThread(i32 %ThreadHandle, i32 %DesiredAccess, i32 %ObjectAttributes, i32 %ProcessHandle, i32 %ClientId, i32 %StartRoutine, i32 %StartContext) #0 {
PsCreateSystemThread_bb551:
  %"1165" = call i32 @__VERIFIER_nondet_int()
  %"1166" = icmp eq i32 %"1165", 0
  %.0 = select i1 %"1166", i32 0, i32 -1073741823
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @ZwClose(i32 %Handle) #0 {
ZwClose_bb552:
  %"1167" = call i32 @__VERIFIER_nondet_int()
  %"1168" = icmp eq i32 %"1167", 0
  %.0 = select i1 %"1168", i32 0, i32 -1073741823
  ret i32 %.0
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

