; ModuleID = 'Benchmarks/TermCOMP/C/SV-COMP_Mixed_Categories/cdaudio_simpl1_false-unreach-call_true-termination.cil/cdaudio_simpl1_false-unreach-call_true-termination.cil.bc'
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
@"'Executive" = common global i32 0, align 4
@"'KernelMode" = common global i32 0, align 4
@"'myStatus" = common global i32 0, align 4
@"'DeviceUsageTypePaging" = common global i32 0, align 4
@"'Suspended" = common global i32 0, align 4
@"'routine" = common global i32 0, align 4
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
define i32 @SendSrbSynchronous(i32 %Extension, i32 %Srb, i32 %Buffer, i32 %BufferLength) #0 {
SendSrbSynchronous_bb2:
  %"1" = call i32 @__VERIFIER_nondet_int()
  %"2" = call i32 @__VERIFIER_nondet_int()
  %"3" = call i32 @__VERIFIER_nondet_int()
  %"4" = icmp ne i32 0, 0
  br i1 %"4", label %SendSrbSynchronous_bb3, label %SendSrbSynchronous_bb10

SendSrbSynchronous_bb3:                           ; preds = %SendSrbSynchronous_bb2
  %"5" = sext i32 %"3" to i64
  %"6" = icmp eq i64 %"5", 259
  br i1 %"6", label %SendSrbSynchronous_bb4, label %SendSrbSynchronous_bb10

SendSrbSynchronous_bb4:                           ; preds = %SendSrbSynchronous_bb3
  %"7" = load i32* @"'s", align 4
  %"8" = load i32* @"'MPR3", align 4
  %"9" = icmp eq i32 %"7", %"8"
  %"10" = load i32* @"'setEventCalled", align 4
  %"11" = icmp eq i32 %"10", 1
  %or.cond.i = and i1 %"9", %"11"
  br i1 %or.cond.i, label %SendSrbSynchronous_bb5, label %SendSrbSynchronous_bb6

SendSrbSynchronous_bb5:                           ; preds = %SendSrbSynchronous_bb4
  %"12" = load i32* @"'NP", align 4
  store i32 %"12", i32* @"'s", align 4
  store i32 0, i32* @"'setEventCalled", align 4
  br label %SendSrbSynchronous_KeWaitForSingleObject.exit

SendSrbSynchronous_bb6:                           ; preds = %SendSrbSynchronous_bb4
  %"13" = load i32* @"'customIrp", align 4
  %"14" = icmp eq i32 %"13", 1
  br i1 %"14", label %SendSrbSynchronous_bb7, label %SendSrbSynchronous_bb8

SendSrbSynchronous_bb7:                           ; preds = %SendSrbSynchronous_bb6
  %"15" = load i32* @"'NP", align 4
  store i32 %"15", i32* @"'s", align 4
  store i32 0, i32* @"'customIrp", align 4
  br label %SendSrbSynchronous_KeWaitForSingleObject.exit

SendSrbSynchronous_bb8:                           ; preds = %SendSrbSynchronous_bb6
  %"16" = load i32* @"'s", align 4
  %"17" = load i32* @"'MPR3", align 4
  %"18" = icmp eq i32 %"16", %"17"
  br i1 %"18", label %SendSrbSynchronous_bb9, label %SendSrbSynchronous_KeWaitForSingleObject.exit

SendSrbSynchronous_bb9:                           ; preds = %SendSrbSynchronous_bb8
  call void (...)* @__VERIFIER_error() #4
  unreachable

SendSrbSynchronous_KeWaitForSingleObject.exit:    ; preds = %SendSrbSynchronous_bb5, %SendSrbSynchronous_bb7, %SendSrbSynchronous_bb8
  %"19" = call i32 @__VERIFIER_nondet_int() #5
  br label %SendSrbSynchronous_bb10

SendSrbSynchronous_bb10:                          ; preds = %SendSrbSynchronous_bb3, %SendSrbSynchronous_KeWaitForSingleObject.exit, %SendSrbSynchronous_bb2
  %.0 = phi i32 [ -1073741670, %SendSrbSynchronous_bb2 ], [ %"1", %SendSrbSynchronous_KeWaitForSingleObject.exit ], [ %"3", %SendSrbSynchronous_bb3 ]
  ret i32 %.0
}

declare i32 @__VERIFIER_nondet_int() #2

; Function Attrs: nounwind uwtable
define i32 @CdAudioSignalCompletion(i32 %DeviceObject, i32 %Irp, i32 %Event) #0 {
CdAudioSignalCompletion_bb11:
  %"20" = call i32 @__VERIFIER_nondet_int() #5
  store i32 1, i32* @"'setEventCalled", align 4
  ret i32 -1073741802
}

; Function Attrs: nounwind uwtable
define i32 @CdAudioStartDevice(i32 %DeviceObject, i32 %Irp) #0 {
CdAudioStartDevice_bb12:
  %"21" = call i32 @__VERIFIER_nondet_int()
  %"22" = call i32 @__VERIFIER_nondet_int()
  %"23" = call i32 @__VERIFIER_nondet_int()
  %"24" = call i32 @__VERIFIER_nondet_int()
  %"25" = call i32 @__VERIFIER_nondet_int()
  %"26" = call i32 @__VERIFIER_nondet_int() #5
  %"27" = call i32 @__VERIFIER_nondet_int() #5
  %"28" = load i32* @"'s", align 4
  %"29" = load i32* @"'NP", align 4
  %"30" = icmp ne i32 %"28", %"29"
  br i1 %"30", label %CdAudioStartDevice_bb13, label %CdAudioStartDevice_bb14

CdAudioStartDevice_bb13:                          ; preds = %CdAudioStartDevice_bb12
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioStartDevice_bb14:                          ; preds = %CdAudioStartDevice_bb12
  %"31" = load i32* @"'compRegistered", align 4
  %"32" = icmp ne i32 %"31", 0
  br i1 %"32", label %CdAudioStartDevice_bb15, label %CdAudioStartDevice_bb16

CdAudioStartDevice_bb15:                          ; preds = %CdAudioStartDevice_bb14
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioStartDevice_bb16:                          ; preds = %CdAudioStartDevice_bb14
  store i32 1, i32* @"'compRegistered", align 4
  store i32 1, i32* @"'routine", align 4
  %"33" = call i32 @__kittel_nondef.0() #5
  %"34" = call i32 @__VERIFIER_nondet_int() #5
  %"35" = call i32 @__VERIFIER_nondet_int() #5
  %"36" = load i32* @"'compRegistered", align 4
  %"37" = icmp ne i32 %"36", 0
  br i1 %"37", label %CdAudioStartDevice_bb17, label %CdAudioStartDevice_bb29

CdAudioStartDevice_bb17:                          ; preds = %CdAudioStartDevice_bb16
  %"38" = load i32* @"'routine", align 4
  %"39" = icmp eq i32 %"38", 0
  br i1 %"39", label %CdAudioStartDevice_bb18, label %CdAudioStartDevice_bb24

CdAudioStartDevice_bb18:                          ; preds = %CdAudioStartDevice_bb17
  %"40" = call i32 @__VERIFIER_nondet_int() #5
  %"41" = call i32 @__VERIFIER_nondet_int() #5
  %"42" = icmp ne i32 %"40", 0
  br i1 %"42", label %CdAudioStartDevice_bb19, label %CdAudioStartDevice_bb22

CdAudioStartDevice_bb19:                          ; preds = %CdAudioStartDevice_bb18
  %"43" = load i32* @"'pended", align 4
  %"44" = icmp eq i32 %"43", 0
  br i1 %"44", label %CdAudioStartDevice_bb20, label %CdAudioStartDevice_bb21

CdAudioStartDevice_bb20:                          ; preds = %CdAudioStartDevice_bb19
  store i32 1, i32* @"'pended", align 4
  br label %CdAudioStartDevice_bb22

CdAudioStartDevice_bb21:                          ; preds = %CdAudioStartDevice_bb19
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioStartDevice_bb22:                          ; preds = %CdAudioStartDevice_bb20, %CdAudioStartDevice_bb18
  %"45" = load i32* @"'myStatus", align 4
  %"46" = icmp sge i32 %"45", 0
  br i1 %"46", label %CdAudioStartDevice_bb23, label %CdAudioStartDevice_HPCdrCompletion.exit.i.i

CdAudioStartDevice_bb23:                          ; preds = %CdAudioStartDevice_bb22
  %"47" = call i32 @__VERIFIER_nondet_int() #5
  br label %CdAudioStartDevice_HPCdrCompletion.exit.i.i

CdAudioStartDevice_HPCdrCompletion.exit.i.i:      ; preds = %CdAudioStartDevice_bb23, %CdAudioStartDevice_bb22
  %"48" = load i32* @"'myStatus", align 4
  br label %CdAudioStartDevice_bb26

CdAudioStartDevice_bb24:                          ; preds = %CdAudioStartDevice_bb17
  %"49" = load i32* @"'routine", align 4
  %"50" = icmp eq i32 %"49", 1
  br i1 %"50", label %CdAudioStartDevice_bb25, label %CdAudioStartDevice_bb26

CdAudioStartDevice_bb25:                          ; preds = %CdAudioStartDevice_bb24
  %"51" = call i32 @__VERIFIER_nondet_int() #5
  store i32 1, i32* @"'setEventCalled", align 4
  br label %CdAudioStartDevice_bb26

CdAudioStartDevice_bb26:                          ; preds = %CdAudioStartDevice_bb25, %CdAudioStartDevice_bb24, %CdAudioStartDevice_HPCdrCompletion.exit.i.i
  %compRetStatus.1.i.i = phi i32 [ %"48", %CdAudioStartDevice_HPCdrCompletion.exit.i.i ], [ -1073741802, %CdAudioStartDevice_bb25 ], [ %"33", %CdAudioStartDevice_bb24 ]
  %"52" = sext i32 %compRetStatus.1.i.i to i64
  %"53" = icmp eq i64 %"52", -1073741802
  br i1 %"53", label %CdAudioStartDevice_bb27, label %CdAudioStartDevice_bb29

CdAudioStartDevice_bb27:                          ; preds = %CdAudioStartDevice_bb26
  %"54" = load i32* @"'s", align 4
  %"55" = load i32* @"'NP", align 4
  %"56" = icmp eq i32 %"54", %"55"
  br i1 %"56", label %CdAudioStartDevice_stubMoreProcessingRequired.exit.i.i, label %CdAudioStartDevice_bb28

CdAudioStartDevice_stubMoreProcessingRequired.exit.i.i: ; preds = %CdAudioStartDevice_bb27
  %"57" = load i32* @"'MPR1", align 4
  store i32 %"57", i32* @"'s", align 4
  br label %CdAudioStartDevice_bb29

CdAudioStartDevice_bb28:                          ; preds = %CdAudioStartDevice_bb27
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioStartDevice_bb29:                          ; preds = %CdAudioStartDevice_stubMoreProcessingRequired.exit.i.i, %CdAudioStartDevice_bb26, %CdAudioStartDevice_bb16
  %"58" = icmp ne i32 %"34", 0
  br i1 %"58", label %CdAudioStartDevice_bb32, label %CdAudioStartDevice_bb30

CdAudioStartDevice_bb30:                          ; preds = %CdAudioStartDevice_bb29
  %"59" = call i32 @__VERIFIER_nondet_int() #5
  %"60" = icmp eq i32 %"59", 0
  br i1 %"60", label %CdAudioStartDevice_bb32, label %CdAudioStartDevice_bb31

CdAudioStartDevice_bb31:                          ; preds = %CdAudioStartDevice_bb30
  %"61" = call i32 @__VERIFIER_nondet_int() #5
  %"62" = icmp eq i32 %"61", 1
  %..i.i = select i1 %"62", i32 -1073741823, i32 259
  br label %CdAudioStartDevice_bb32

CdAudioStartDevice_bb32:                          ; preds = %CdAudioStartDevice_bb31, %CdAudioStartDevice_bb30, %CdAudioStartDevice_bb29
  %returnVal2.1.i.i = phi i32 [ 259, %CdAudioStartDevice_bb29 ], [ 0, %CdAudioStartDevice_bb30 ], [ %..i.i, %CdAudioStartDevice_bb31 ]
  %"63" = load i32* @"'s", align 4
  %"64" = load i32* @"'NP", align 4
  %"65" = icmp eq i32 %"63", %"64"
  br i1 %"65", label %CdAudioStartDevice_bb33, label %CdAudioStartDevice_bb34

CdAudioStartDevice_bb33:                          ; preds = %CdAudioStartDevice_bb32
  %"66" = load i32* @"'IPC", align 4
  store i32 %"66", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i, i32* @"'lowerDriverReturn", align 4
  br label %CdAudioStartDevice_IofCallDriver.exit.i

CdAudioStartDevice_bb34:                          ; preds = %CdAudioStartDevice_bb32
  %"67" = load i32* @"'s", align 4
  %"68" = load i32* @"'MPR1", align 4
  %"69" = icmp eq i32 %"67", %"68"
  br i1 %"69", label %CdAudioStartDevice_bb35, label %CdAudioStartDevice_bb38

CdAudioStartDevice_bb35:                          ; preds = %CdAudioStartDevice_bb34
  %"70" = icmp eq i32 %returnVal2.1.i.i, 259
  br i1 %"70", label %CdAudioStartDevice_bb36, label %CdAudioStartDevice_bb37

CdAudioStartDevice_bb36:                          ; preds = %CdAudioStartDevice_bb35
  %"71" = load i32* @"'MPR3", align 4
  store i32 %"71", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i, i32* @"'lowerDriverReturn", align 4
  br label %CdAudioStartDevice_IofCallDriver.exit.i

CdAudioStartDevice_bb37:                          ; preds = %CdAudioStartDevice_bb35
  %"72" = load i32* @"'NP", align 4
  store i32 %"72", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i, i32* @"'lowerDriverReturn", align 4
  br label %CdAudioStartDevice_IofCallDriver.exit.i

CdAudioStartDevice_bb38:                          ; preds = %CdAudioStartDevice_bb34
  %"73" = load i32* @"'s", align 4
  %"74" = load i32* @"'SKIP1", align 4
  %"75" = icmp eq i32 %"73", %"74"
  br i1 %"75", label %CdAudioStartDevice_bb39, label %CdAudioStartDevice_bb54

CdAudioStartDevice_bb39:                          ; preds = %CdAudioStartDevice_bb38
  %"76" = load i32* @"'SKIP2", align 4
  store i32 %"76", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i, i32* @"'lowerDriverReturn", align 4
  br label %CdAudioStartDevice_IofCallDriver.exit.i

CdAudioStartDevice_IofCallDriver.exit.i:          ; preds = %CdAudioStartDevice_bb39, %CdAudioStartDevice_bb37, %CdAudioStartDevice_bb36, %CdAudioStartDevice_bb33
  %"77" = load i32* @"'s", align 4
  %"78" = load i32* @"'MPR3", align 4
  %"79" = icmp eq i32 %"77", %"78"
  %"80" = load i32* @"'setEventCalled", align 4
  %"81" = icmp eq i32 %"80", 1
  %or.cond.i.i = and i1 %"79", %"81"
  br i1 %or.cond.i.i, label %CdAudioStartDevice_bb40, label %CdAudioStartDevice_bb41

CdAudioStartDevice_bb40:                          ; preds = %CdAudioStartDevice_IofCallDriver.exit.i
  %"82" = load i32* @"'NP", align 4
  store i32 %"82", i32* @"'s", align 4
  store i32 0, i32* @"'setEventCalled", align 4
  br label %CdAudioStartDevice_CdAudioForwardIrpSynchronous.exit

CdAudioStartDevice_bb41:                          ; preds = %CdAudioStartDevice_IofCallDriver.exit.i
  %"83" = load i32* @"'customIrp", align 4
  %"84" = icmp eq i32 %"83", 1
  br i1 %"84", label %CdAudioStartDevice_bb42, label %CdAudioStartDevice_bb43

CdAudioStartDevice_bb42:                          ; preds = %CdAudioStartDevice_bb41
  %"85" = load i32* @"'NP", align 4
  store i32 %"85", i32* @"'s", align 4
  store i32 0, i32* @"'customIrp", align 4
  br label %CdAudioStartDevice_CdAudioForwardIrpSynchronous.exit

CdAudioStartDevice_bb43:                          ; preds = %CdAudioStartDevice_bb41
  %"86" = load i32* @"'s", align 4
  %"87" = load i32* @"'MPR3", align 4
  %"88" = icmp eq i32 %"86", %"87"
  br i1 %"88", label %CdAudioStartDevice_bb44, label %CdAudioStartDevice_CdAudioForwardIrpSynchronous.exit

CdAudioStartDevice_bb44:                          ; preds = %CdAudioStartDevice_bb43
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioStartDevice_CdAudioForwardIrpSynchronous.exit: ; preds = %CdAudioStartDevice_bb40, %CdAudioStartDevice_bb42, %CdAudioStartDevice_bb43
  %"89" = call i32 @__VERIFIER_nondet_int() #5
  %"90" = load i32* @"'myStatus", align 4
  %"91" = icmp slt i32 %"90", 0
  br i1 %"91", label %CdAudioStartDevice_bb53, label %CdAudioStartDevice_bb45

CdAudioStartDevice_bb45:                          ; preds = %CdAudioStartDevice_CdAudioForwardIrpSynchronous.exit
  %"92" = icmp eq i32 %"21", 255
  br i1 %"92", label %CdAudioStartDevice_bb46, label %CdAudioStartDevice_bb51

CdAudioStartDevice_bb46:                          ; preds = %CdAudioStartDevice_bb45
  %"93" = icmp ne i32 0, 0
  br i1 %"93", label %CdAudioStartDevice_bb47, label %CdAudioStartDevice_bb53

CdAudioStartDevice_bb47:                          ; preds = %CdAudioStartDevice_bb49, %CdAudioStartDevice_bb46
  %attempt.0 = phi i32 [ %"95", %CdAudioStartDevice_bb49 ], [ 0, %CdAudioStartDevice_bb46 ]
  %status.0 = phi i32 [ -1073741670, %CdAudioStartDevice_bb49 ], [ -1073741823, %CdAudioStartDevice_bb46 ]
  %"94" = icmp slt i32 %status.0, 0
  br i1 %"94", label %CdAudioStartDevice_bb48, label %CdAudioStartDevice_bb50

CdAudioStartDevice_bb48:                          ; preds = %CdAudioStartDevice_bb47
  %"95" = add nsw i32 %attempt.0, 1
  %"96" = icmp sge i32 %attempt.0, 4
  br i1 %"96", label %CdAudioStartDevice_bb50, label %CdAudioStartDevice_bb49

CdAudioStartDevice_bb49:                          ; preds = %CdAudioStartDevice_bb48
  %"97" = call i32 @__VERIFIER_nondet_int() #5
  %"98" = call i32 @__VERIFIER_nondet_int() #5
  %"99" = call i32 @__VERIFIER_nondet_int() #5
  br label %CdAudioStartDevice_bb47

CdAudioStartDevice_bb50:                          ; preds = %CdAudioStartDevice_bb47, %CdAudioStartDevice_bb48
  %"100" = icmp slt i32 %status.0, 0
  br i1 %"100", label %CdAudioStartDevice_bb53, label %CdAudioStartDevice_bb51

CdAudioStartDevice_bb51:                          ; preds = %CdAudioStartDevice_bb50, %CdAudioStartDevice_bb45
  %status.1 = phi i32 [ %"90", %CdAudioStartDevice_bb45 ], [ %status.0, %CdAudioStartDevice_bb50 ]
  %"101" = icmp slt i32 %status.1, 0
  br i1 %"101", label %CdAudioStartDevice_bb53, label %CdAudioStartDevice_bb52

CdAudioStartDevice_bb52:                          ; preds = %CdAudioStartDevice_bb51
  %"102" = call i32 @__VERIFIER_nondet_int() #5
  br label %CdAudioStartDevice_bb53

CdAudioStartDevice_bb53:                          ; preds = %CdAudioStartDevice_bb51, %CdAudioStartDevice_bb50, %CdAudioStartDevice_bb46, %CdAudioStartDevice_CdAudioForwardIrpSynchronous.exit, %CdAudioStartDevice_bb52
  %.0 = phi i32 [ 0, %CdAudioStartDevice_bb52 ], [ %"90", %CdAudioStartDevice_CdAudioForwardIrpSynchronous.exit ], [ 0, %CdAudioStartDevice_bb46 ], [ 0, %CdAudioStartDevice_bb50 ], [ 0, %CdAudioStartDevice_bb51 ]
  ret i32 %.0

CdAudioStartDevice_bb54:                          ; preds = %CdAudioStartDevice_bb38
  call void (...)* @__VERIFIER_error() #4
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @CdAudioPnp(i32 %DeviceObject, i32 %Irp) #0 {
CdAudioPnp_bb55:
  %"103" = call i32 @__VERIFIER_nondet_int()
  %"104" = call i32 @__VERIFIER_nondet_int()
  %"105" = call i32 @__VERIFIER_nondet_int()
  %"106" = call i32 @__VERIFIER_nondet_int()
  %"107" = call i32 @__VERIFIER_nondet_int()
  %"108" = call i32 @__VERIFIER_nondet_int()
  br label %CdAudioPnp_NodeBlock

CdAudioPnp_NodeBlock:                             ; preds = %CdAudioPnp_bb55
  %Pivot = icmp slt i32 %"104", 22
  br i1 %Pivot, label %CdAudioPnp_LeafBlock, label %CdAudioPnp_LeafBlock16

CdAudioPnp_LeafBlock:                             ; preds = %CdAudioPnp_NodeBlock
  %SwitchLeaf = icmp eq i32 %"104", 0
  br i1 %SwitchLeaf, label %CdAudioPnp_bb56, label %CdAudioPnp_NewDefault

CdAudioPnp_bb56:                                  ; preds = %CdAudioPnp_LeafBlock
  %"109" = call i32 @__VERIFIER_nondet_int() #5
  %"110" = call i32 @__VERIFIER_nondet_int() #5
  %"111" = call i32 @__VERIFIER_nondet_int() #5
  %"112" = call i32 @__VERIFIER_nondet_int() #5
  %"113" = call i32 @__VERIFIER_nondet_int() #5
  %"114" = call i32 @__VERIFIER_nondet_int() #5
  %"115" = call i32 @__VERIFIER_nondet_int() #5
  %"116" = load i32* @"'s", align 4
  %"117" = load i32* @"'NP", align 4
  %"118" = icmp ne i32 %"116", %"117"
  br i1 %"118", label %CdAudioPnp_bb57, label %CdAudioPnp_bb58

CdAudioPnp_bb57:                                  ; preds = %CdAudioPnp_bb56
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioPnp_bb58:                                  ; preds = %CdAudioPnp_bb56
  %"119" = load i32* @"'compRegistered", align 4
  %"120" = icmp ne i32 %"119", 0
  br i1 %"120", label %CdAudioPnp_bb59, label %CdAudioPnp_bb60

CdAudioPnp_bb59:                                  ; preds = %CdAudioPnp_bb58
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioPnp_bb60:                                  ; preds = %CdAudioPnp_bb58
  store i32 1, i32* @"'compRegistered", align 4
  store i32 1, i32* @"'routine", align 4
  %"121" = call i32 @__kittel_nondef.0() #5
  %"122" = call i32 @__VERIFIER_nondet_int() #5
  %"123" = call i32 @__VERIFIER_nondet_int() #5
  %"124" = load i32* @"'compRegistered", align 4
  %"125" = icmp ne i32 %"124", 0
  br i1 %"125", label %CdAudioPnp_bb61, label %CdAudioPnp_bb73

CdAudioPnp_bb61:                                  ; preds = %CdAudioPnp_bb60
  %"126" = load i32* @"'routine", align 4
  %"127" = icmp eq i32 %"126", 0
  br i1 %"127", label %CdAudioPnp_bb62, label %CdAudioPnp_bb68

CdAudioPnp_bb62:                                  ; preds = %CdAudioPnp_bb61
  %"128" = call i32 @__VERIFIER_nondet_int() #5
  %"129" = call i32 @__VERIFIER_nondet_int() #5
  %"130" = icmp ne i32 %"128", 0
  br i1 %"130", label %CdAudioPnp_bb63, label %CdAudioPnp_bb66

CdAudioPnp_bb63:                                  ; preds = %CdAudioPnp_bb62
  %"131" = load i32* @"'pended", align 4
  %"132" = icmp eq i32 %"131", 0
  br i1 %"132", label %CdAudioPnp_bb64, label %CdAudioPnp_bb65

CdAudioPnp_bb64:                                  ; preds = %CdAudioPnp_bb63
  store i32 1, i32* @"'pended", align 4
  br label %CdAudioPnp_bb66

CdAudioPnp_bb65:                                  ; preds = %CdAudioPnp_bb63
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioPnp_bb66:                                  ; preds = %CdAudioPnp_bb64, %CdAudioPnp_bb62
  %"133" = load i32* @"'myStatus", align 4
  %"134" = icmp sge i32 %"133", 0
  br i1 %"134", label %CdAudioPnp_bb67, label %CdAudioPnp_HPCdrCompletion.exit.i.i.i

CdAudioPnp_bb67:                                  ; preds = %CdAudioPnp_bb66
  %"135" = call i32 @__VERIFIER_nondet_int() #5
  br label %CdAudioPnp_HPCdrCompletion.exit.i.i.i

CdAudioPnp_HPCdrCompletion.exit.i.i.i:            ; preds = %CdAudioPnp_bb67, %CdAudioPnp_bb66
  %"136" = load i32* @"'myStatus", align 4
  br label %CdAudioPnp_bb70

CdAudioPnp_bb68:                                  ; preds = %CdAudioPnp_bb61
  %"137" = load i32* @"'routine", align 4
  %"138" = icmp eq i32 %"137", 1
  br i1 %"138", label %CdAudioPnp_bb69, label %CdAudioPnp_bb70

CdAudioPnp_bb69:                                  ; preds = %CdAudioPnp_bb68
  %"139" = call i32 @__VERIFIER_nondet_int() #5
  store i32 1, i32* @"'setEventCalled", align 4
  br label %CdAudioPnp_bb70

CdAudioPnp_bb70:                                  ; preds = %CdAudioPnp_bb69, %CdAudioPnp_bb68, %CdAudioPnp_HPCdrCompletion.exit.i.i.i
  %compRetStatus.1.i.i.i = phi i32 [ %"136", %CdAudioPnp_HPCdrCompletion.exit.i.i.i ], [ -1073741802, %CdAudioPnp_bb69 ], [ %"121", %CdAudioPnp_bb68 ]
  %"140" = sext i32 %compRetStatus.1.i.i.i to i64
  %"141" = icmp eq i64 %"140", -1073741802
  br i1 %"141", label %CdAudioPnp_bb71, label %CdAudioPnp_bb73

CdAudioPnp_bb71:                                  ; preds = %CdAudioPnp_bb70
  %"142" = load i32* @"'s", align 4
  %"143" = load i32* @"'NP", align 4
  %"144" = icmp eq i32 %"142", %"143"
  br i1 %"144", label %CdAudioPnp_stubMoreProcessingRequired.exit.i.i.i, label %CdAudioPnp_bb72

CdAudioPnp_stubMoreProcessingRequired.exit.i.i.i: ; preds = %CdAudioPnp_bb71
  %"145" = load i32* @"'MPR1", align 4
  store i32 %"145", i32* @"'s", align 4
  br label %CdAudioPnp_bb73

CdAudioPnp_bb72:                                  ; preds = %CdAudioPnp_bb71
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioPnp_bb73:                                  ; preds = %CdAudioPnp_stubMoreProcessingRequired.exit.i.i.i, %CdAudioPnp_bb70, %CdAudioPnp_bb60
  %"146" = icmp ne i32 %"122", 0
  br i1 %"146", label %CdAudioPnp_bb76, label %CdAudioPnp_bb74

CdAudioPnp_bb74:                                  ; preds = %CdAudioPnp_bb73
  %"147" = call i32 @__VERIFIER_nondet_int() #5
  %"148" = icmp eq i32 %"147", 0
  br i1 %"148", label %CdAudioPnp_bb76, label %CdAudioPnp_bb75

CdAudioPnp_bb75:                                  ; preds = %CdAudioPnp_bb74
  %"149" = call i32 @__VERIFIER_nondet_int() #5
  %"150" = icmp eq i32 %"149", 1
  %..i.i.i = select i1 %"150", i32 -1073741823, i32 259
  br label %CdAudioPnp_bb76

CdAudioPnp_bb76:                                  ; preds = %CdAudioPnp_bb75, %CdAudioPnp_bb74, %CdAudioPnp_bb73
  %returnVal2.1.i.i.i = phi i32 [ 259, %CdAudioPnp_bb73 ], [ 0, %CdAudioPnp_bb74 ], [ %..i.i.i, %CdAudioPnp_bb75 ]
  %"151" = load i32* @"'s", align 4
  %"152" = load i32* @"'NP", align 4
  %"153" = icmp eq i32 %"151", %"152"
  br i1 %"153", label %CdAudioPnp_bb77, label %CdAudioPnp_bb78

CdAudioPnp_bb77:                                  ; preds = %CdAudioPnp_bb76
  %"154" = load i32* @"'IPC", align 4
  store i32 %"154", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i.i, i32* @"'lowerDriverReturn", align 4
  br label %CdAudioPnp_IofCallDriver.exit.i.i

CdAudioPnp_bb78:                                  ; preds = %CdAudioPnp_bb76
  %"155" = load i32* @"'s", align 4
  %"156" = load i32* @"'MPR1", align 4
  %"157" = icmp eq i32 %"155", %"156"
  br i1 %"157", label %CdAudioPnp_bb79, label %CdAudioPnp_bb82

CdAudioPnp_bb79:                                  ; preds = %CdAudioPnp_bb78
  %"158" = icmp eq i32 %returnVal2.1.i.i.i, 259
  br i1 %"158", label %CdAudioPnp_bb80, label %CdAudioPnp_bb81

CdAudioPnp_bb80:                                  ; preds = %CdAudioPnp_bb79
  %"159" = load i32* @"'MPR3", align 4
  store i32 %"159", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i.i, i32* @"'lowerDriverReturn", align 4
  br label %CdAudioPnp_IofCallDriver.exit.i.i

CdAudioPnp_bb81:                                  ; preds = %CdAudioPnp_bb79
  %"160" = load i32* @"'NP", align 4
  store i32 %"160", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i.i, i32* @"'lowerDriverReturn", align 4
  br label %CdAudioPnp_IofCallDriver.exit.i.i

CdAudioPnp_bb82:                                  ; preds = %CdAudioPnp_bb78
  %"161" = load i32* @"'s", align 4
  %"162" = load i32* @"'SKIP1", align 4
  %"163" = icmp eq i32 %"161", %"162"
  br i1 %"163", label %CdAudioPnp_bb83, label %CdAudioPnp_bb92

CdAudioPnp_bb83:                                  ; preds = %CdAudioPnp_bb82
  %"164" = load i32* @"'SKIP2", align 4
  store i32 %"164", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i.i, i32* @"'lowerDriverReturn", align 4
  br label %CdAudioPnp_IofCallDriver.exit.i.i

CdAudioPnp_IofCallDriver.exit.i.i:                ; preds = %CdAudioPnp_bb83, %CdAudioPnp_bb81, %CdAudioPnp_bb80, %CdAudioPnp_bb77
  %"165" = load i32* @"'s", align 4
  %"166" = load i32* @"'MPR3", align 4
  %"167" = icmp eq i32 %"165", %"166"
  %"168" = load i32* @"'setEventCalled", align 4
  %"169" = icmp eq i32 %"168", 1
  %or.cond.i.i.i = and i1 %"167", %"169"
  br i1 %or.cond.i.i.i, label %CdAudioPnp_bb84, label %CdAudioPnp_bb85

CdAudioPnp_bb84:                                  ; preds = %CdAudioPnp_IofCallDriver.exit.i.i
  %"170" = load i32* @"'NP", align 4
  store i32 %"170", i32* @"'s", align 4
  store i32 0, i32* @"'setEventCalled", align 4
  br label %CdAudioPnp_CdAudioForwardIrpSynchronous.exit.i

CdAudioPnp_bb85:                                  ; preds = %CdAudioPnp_IofCallDriver.exit.i.i
  %"171" = load i32* @"'customIrp", align 4
  %"172" = icmp eq i32 %"171", 1
  br i1 %"172", label %CdAudioPnp_bb86, label %CdAudioPnp_bb87

CdAudioPnp_bb86:                                  ; preds = %CdAudioPnp_bb85
  %"173" = load i32* @"'NP", align 4
  store i32 %"173", i32* @"'s", align 4
  store i32 0, i32* @"'customIrp", align 4
  br label %CdAudioPnp_CdAudioForwardIrpSynchronous.exit.i

CdAudioPnp_bb87:                                  ; preds = %CdAudioPnp_bb85
  %"174" = load i32* @"'s", align 4
  %"175" = load i32* @"'MPR3", align 4
  %"176" = icmp eq i32 %"174", %"175"
  br i1 %"176", label %CdAudioPnp_bb88, label %CdAudioPnp_CdAudioForwardIrpSynchronous.exit.i

CdAudioPnp_bb88:                                  ; preds = %CdAudioPnp_bb87
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioPnp_CdAudioForwardIrpSynchronous.exit.i:   ; preds = %CdAudioPnp_bb87, %CdAudioPnp_bb86, %CdAudioPnp_bb84
  %"177" = call i32 @__VERIFIER_nondet_int() #5
  %"178" = load i32* @"'myStatus", align 4
  %"179" = icmp slt i32 %"178", 0
  br i1 %"179", label %CdAudioPnp_CdAudioStartDevice.exit, label %CdAudioPnp_bb89

CdAudioPnp_bb89:                                  ; preds = %CdAudioPnp_CdAudioForwardIrpSynchronous.exit.i
  %"180" = icmp eq i32 %"109", 255
  %"181" = icmp slt i32 %"178", 0
  %or.cond = or i1 %"180", %"181"
  br i1 %or.cond, label %CdAudioPnp_CdAudioStartDevice.exit, label %CdAudioPnp_bb90

CdAudioPnp_bb90:                                  ; preds = %CdAudioPnp_bb89
  %"182" = call i32 @__VERIFIER_nondet_int() #5
  br label %CdAudioPnp_CdAudioStartDevice.exit

CdAudioPnp_CdAudioStartDevice.exit:               ; preds = %CdAudioPnp_bb89, %CdAudioPnp_CdAudioForwardIrpSynchronous.exit.i, %CdAudioPnp_bb90
  %.0.i = phi i32 [ 0, %CdAudioPnp_bb90 ], [ %"178", %CdAudioPnp_CdAudioForwardIrpSynchronous.exit.i ], [ 0, %CdAudioPnp_bb89 ]
  store i32 %.0.i, i32* @"'myStatus", align 4
  %"183" = load i32* @"'s", align 4
  %"184" = load i32* @"'NP", align 4
  %"185" = icmp eq i32 %"183", %"184"
  br i1 %"185", label %CdAudioPnp_IofCompleteRequest.exit, label %CdAudioPnp_bb91

CdAudioPnp_IofCompleteRequest.exit:               ; preds = %CdAudioPnp_CdAudioStartDevice.exit
  %"186" = load i32* @"'DC", align 4
  store i32 %"186", i32* @"'s", align 4
  br label %CdAudioPnp_CdAudioSendToNextDriver.exit

CdAudioPnp_bb91:                                  ; preds = %CdAudioPnp_CdAudioStartDevice.exit
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioPnp_bb92:                                  ; preds = %CdAudioPnp_bb82
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioPnp_LeafBlock16:                           ; preds = %CdAudioPnp_NodeBlock
  %SwitchLeaf17 = icmp eq i32 %"104", 22
  br i1 %SwitchLeaf17, label %CdAudioPnp_bb93, label %CdAudioPnp_NewDefault

CdAudioPnp_bb93:                                  ; preds = %CdAudioPnp_LeafBlock16
  %"187" = load i32* @"'DeviceUsageTypePaging", align 4
  %"188" = icmp ne i32 %"105", %"187"
  br i1 %"188", label %CdAudioPnp_bb94, label %CdAudioPnp_bb121

CdAudioPnp_bb94:                                  ; preds = %CdAudioPnp_bb93
  %"189" = call i32 @__VERIFIER_nondet_int() #5
  %"190" = call i32 @__VERIFIER_nondet_int() #5
  %"191" = call i32 @__VERIFIER_nondet_int() #5
  %"192" = load i32* @"'s", align 4
  %"193" = load i32* @"'NP", align 4
  %"194" = icmp eq i32 %"192", %"193"
  br i1 %"194", label %CdAudioPnp_bb95, label %CdAudioPnp_bb120

CdAudioPnp_bb95:                                  ; preds = %CdAudioPnp_bb94
  %"195" = load i32* @"'SKIP1", align 4
  store i32 %"195", i32* @"'s", align 4
  %"196" = call i32 @__kittel_nondef.0() #5
  %"197" = call i32 @__VERIFIER_nondet_int() #5
  %"198" = call i32 @__VERIFIER_nondet_int() #5
  %"199" = load i32* @"'compRegistered", align 4
  %"200" = icmp ne i32 %"199", 0
  br i1 %"200", label %CdAudioPnp_bb96, label %CdAudioPnp_bb108

CdAudioPnp_bb96:                                  ; preds = %CdAudioPnp_bb95
  %"201" = load i32* @"'routine", align 4
  %"202" = icmp eq i32 %"201", 0
  br i1 %"202", label %CdAudioPnp_bb97, label %CdAudioPnp_bb103

CdAudioPnp_bb97:                                  ; preds = %CdAudioPnp_bb96
  %"203" = call i32 @__VERIFIER_nondet_int() #5
  %"204" = call i32 @__VERIFIER_nondet_int() #5
  %"205" = icmp ne i32 %"203", 0
  br i1 %"205", label %CdAudioPnp_bb98, label %CdAudioPnp_bb101

CdAudioPnp_bb98:                                  ; preds = %CdAudioPnp_bb97
  %"206" = load i32* @"'pended", align 4
  %"207" = icmp eq i32 %"206", 0
  br i1 %"207", label %CdAudioPnp_bb99, label %CdAudioPnp_bb100

CdAudioPnp_bb99:                                  ; preds = %CdAudioPnp_bb98
  store i32 1, i32* @"'pended", align 4
  br label %CdAudioPnp_bb101

CdAudioPnp_bb100:                                 ; preds = %CdAudioPnp_bb98
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioPnp_bb101:                                 ; preds = %CdAudioPnp_bb99, %CdAudioPnp_bb97
  %"208" = load i32* @"'myStatus", align 4
  %"209" = icmp sge i32 %"208", 0
  br i1 %"209", label %CdAudioPnp_bb102, label %CdAudioPnp_HPCdrCompletion.exit.i.i

CdAudioPnp_bb102:                                 ; preds = %CdAudioPnp_bb101
  %"210" = call i32 @__VERIFIER_nondet_int() #5
  br label %CdAudioPnp_HPCdrCompletion.exit.i.i

CdAudioPnp_HPCdrCompletion.exit.i.i:              ; preds = %CdAudioPnp_bb102, %CdAudioPnp_bb101
  %"211" = load i32* @"'myStatus", align 4
  br label %CdAudioPnp_bb105

CdAudioPnp_bb103:                                 ; preds = %CdAudioPnp_bb96
  %"212" = load i32* @"'routine", align 4
  %"213" = icmp eq i32 %"212", 1
  br i1 %"213", label %CdAudioPnp_bb104, label %CdAudioPnp_bb105

CdAudioPnp_bb104:                                 ; preds = %CdAudioPnp_bb103
  %"214" = call i32 @__VERIFIER_nondet_int() #5
  store i32 1, i32* @"'setEventCalled", align 4
  br label %CdAudioPnp_bb105

CdAudioPnp_bb105:                                 ; preds = %CdAudioPnp_bb104, %CdAudioPnp_bb103, %CdAudioPnp_HPCdrCompletion.exit.i.i
  %compRetStatus.1.i.i = phi i32 [ %"211", %CdAudioPnp_HPCdrCompletion.exit.i.i ], [ -1073741802, %CdAudioPnp_bb104 ], [ %"196", %CdAudioPnp_bb103 ]
  %"215" = sext i32 %compRetStatus.1.i.i to i64
  %"216" = icmp eq i64 %"215", -1073741802
  br i1 %"216", label %CdAudioPnp_bb106, label %CdAudioPnp_bb108

CdAudioPnp_bb106:                                 ; preds = %CdAudioPnp_bb105
  %"217" = load i32* @"'s", align 4
  %"218" = load i32* @"'NP", align 4
  %"219" = icmp eq i32 %"217", %"218"
  br i1 %"219", label %CdAudioPnp_stubMoreProcessingRequired.exit.i.i, label %CdAudioPnp_bb107

CdAudioPnp_stubMoreProcessingRequired.exit.i.i:   ; preds = %CdAudioPnp_bb106
  %"220" = load i32* @"'MPR1", align 4
  store i32 %"220", i32* @"'s", align 4
  br label %CdAudioPnp_bb108

CdAudioPnp_bb107:                                 ; preds = %CdAudioPnp_bb106
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioPnp_bb108:                                 ; preds = %CdAudioPnp_stubMoreProcessingRequired.exit.i.i, %CdAudioPnp_bb105, %CdAudioPnp_bb95
  %"221" = icmp ne i32 %"197", 0
  br i1 %"221", label %CdAudioPnp_bb111, label %CdAudioPnp_bb109

CdAudioPnp_bb109:                                 ; preds = %CdAudioPnp_bb108
  %"222" = call i32 @__VERIFIER_nondet_int() #5
  %"223" = icmp eq i32 %"222", 0
  br i1 %"223", label %CdAudioPnp_bb111, label %CdAudioPnp_bb110

CdAudioPnp_bb110:                                 ; preds = %CdAudioPnp_bb109
  %"224" = call i32 @__VERIFIER_nondet_int() #5
  %"225" = icmp eq i32 %"224", 1
  %..i.i = select i1 %"225", i32 -1073741823, i32 259
  br label %CdAudioPnp_bb111

CdAudioPnp_bb111:                                 ; preds = %CdAudioPnp_bb110, %CdAudioPnp_bb109, %CdAudioPnp_bb108
  %returnVal2.1.i.i = phi i32 [ 259, %CdAudioPnp_bb108 ], [ 0, %CdAudioPnp_bb109 ], [ %..i.i, %CdAudioPnp_bb110 ]
  %"226" = load i32* @"'s", align 4
  %"227" = load i32* @"'NP", align 4
  %"228" = icmp eq i32 %"226", %"227"
  br i1 %"228", label %CdAudioPnp_bb112, label %CdAudioPnp_bb113

CdAudioPnp_bb112:                                 ; preds = %CdAudioPnp_bb111
  %"229" = load i32* @"'IPC", align 4
  store i32 %"229", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i, i32* @"'lowerDriverReturn", align 4
  br label %CdAudioPnp_CdAudioSendToNextDriver.exit

CdAudioPnp_bb113:                                 ; preds = %CdAudioPnp_bb111
  %"230" = load i32* @"'s", align 4
  %"231" = load i32* @"'MPR1", align 4
  %"232" = icmp eq i32 %"230", %"231"
  br i1 %"232", label %CdAudioPnp_bb114, label %CdAudioPnp_bb117

CdAudioPnp_bb114:                                 ; preds = %CdAudioPnp_bb113
  %"233" = icmp eq i32 %returnVal2.1.i.i, 259
  br i1 %"233", label %CdAudioPnp_bb115, label %CdAudioPnp_bb116

CdAudioPnp_bb115:                                 ; preds = %CdAudioPnp_bb114
  %"234" = load i32* @"'MPR3", align 4
  store i32 %"234", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i, i32* @"'lowerDriverReturn", align 4
  br label %CdAudioPnp_CdAudioSendToNextDriver.exit

CdAudioPnp_bb116:                                 ; preds = %CdAudioPnp_bb114
  %"235" = load i32* @"'NP", align 4
  store i32 %"235", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i, i32* @"'lowerDriverReturn", align 4
  br label %CdAudioPnp_CdAudioSendToNextDriver.exit

CdAudioPnp_bb117:                                 ; preds = %CdAudioPnp_bb113
  %"236" = load i32* @"'s", align 4
  %"237" = load i32* @"'SKIP1", align 4
  %"238" = icmp eq i32 %"236", %"237"
  br i1 %"238", label %CdAudioPnp_bb118, label %CdAudioPnp_bb119

CdAudioPnp_bb118:                                 ; preds = %CdAudioPnp_bb117
  %"239" = load i32* @"'SKIP2", align 4
  store i32 %"239", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i, i32* @"'lowerDriverReturn", align 4
  br label %CdAudioPnp_CdAudioSendToNextDriver.exit

CdAudioPnp_bb119:                                 ; preds = %CdAudioPnp_bb117
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioPnp_bb120:                                 ; preds = %CdAudioPnp_bb94
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioPnp_bb121:                                 ; preds = %CdAudioPnp_bb93
  %"240" = load i32* @"'s", align 4
  %"241" = load i32* @"'MPR3", align 4
  %"242" = icmp eq i32 %"240", %"241"
  %"243" = load i32* @"'setEventCalled", align 4
  %"244" = icmp eq i32 %"243", 1
  %or.cond.i = and i1 %"242", %"244"
  br i1 %or.cond.i, label %CdAudioPnp_bb122, label %CdAudioPnp_bb123

CdAudioPnp_bb122:                                 ; preds = %CdAudioPnp_bb121
  %"245" = load i32* @"'NP", align 4
  store i32 %"245", i32* @"'s", align 4
  store i32 0, i32* @"'setEventCalled", align 4
  br label %CdAudioPnp_KeWaitForSingleObject.exit

CdAudioPnp_bb123:                                 ; preds = %CdAudioPnp_bb121
  %"246" = load i32* @"'customIrp", align 4
  %"247" = icmp eq i32 %"246", 1
  br i1 %"247", label %CdAudioPnp_bb124, label %CdAudioPnp_bb125

CdAudioPnp_bb124:                                 ; preds = %CdAudioPnp_bb123
  %"248" = load i32* @"'NP", align 4
  store i32 %"248", i32* @"'s", align 4
  store i32 0, i32* @"'customIrp", align 4
  br label %CdAudioPnp_KeWaitForSingleObject.exit

CdAudioPnp_bb125:                                 ; preds = %CdAudioPnp_bb123
  %"249" = load i32* @"'s", align 4
  %"250" = load i32* @"'MPR3", align 4
  %"251" = icmp eq i32 %"249", %"250"
  br i1 %"251", label %CdAudioPnp_bb126, label %CdAudioPnp_KeWaitForSingleObject.exit

CdAudioPnp_bb126:                                 ; preds = %CdAudioPnp_bb125
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioPnp_KeWaitForSingleObject.exit:            ; preds = %CdAudioPnp_bb122, %CdAudioPnp_bb124, %CdAudioPnp_bb125
  %"252" = call i32 @__VERIFIER_nondet_int() #5
  %"253" = icmp eq i32 %"107", 0
  %"254" = icmp ne i32 %"108", 1
  %or.cond15 = or i1 %"253", %"254"
  br i1 %or.cond15, label %CdAudioPnp_bb127, label %CdAudioPnp_bb128

CdAudioPnp_bb127:                                 ; preds = %CdAudioPnp_KeWaitForSingleObject.exit
  br label %CdAudioPnp_bb128

CdAudioPnp_bb128:                                 ; preds = %CdAudioPnp_KeWaitForSingleObject.exit, %CdAudioPnp_bb127
  %"255" = call i32 @__VERIFIER_nondet_int() #5
  %"256" = call i32 @__VERIFIER_nondet_int() #5
  %"257" = load i32* @"'s", align 4
  %"258" = load i32* @"'NP", align 4
  %"259" = icmp ne i32 %"257", %"258"
  br i1 %"259", label %CdAudioPnp_bb129, label %CdAudioPnp_bb130

CdAudioPnp_bb129:                                 ; preds = %CdAudioPnp_bb128
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioPnp_bb130:                                 ; preds = %CdAudioPnp_bb128
  %"260" = load i32* @"'compRegistered", align 4
  %"261" = icmp ne i32 %"260", 0
  br i1 %"261", label %CdAudioPnp_bb131, label %CdAudioPnp_bb132

CdAudioPnp_bb131:                                 ; preds = %CdAudioPnp_bb130
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioPnp_bb132:                                 ; preds = %CdAudioPnp_bb130
  store i32 1, i32* @"'compRegistered", align 4
  store i32 1, i32* @"'routine", align 4
  %"262" = call i32 @__kittel_nondef.0() #5
  %"263" = call i32 @__VERIFIER_nondet_int() #5
  %"264" = call i32 @__VERIFIER_nondet_int() #5
  %"265" = load i32* @"'compRegistered", align 4
  %"266" = icmp ne i32 %"265", 0
  br i1 %"266", label %CdAudioPnp_bb133, label %CdAudioPnp_bb145

CdAudioPnp_bb133:                                 ; preds = %CdAudioPnp_bb132
  %"267" = load i32* @"'routine", align 4
  %"268" = icmp eq i32 %"267", 0
  br i1 %"268", label %CdAudioPnp_bb134, label %CdAudioPnp_bb140

CdAudioPnp_bb134:                                 ; preds = %CdAudioPnp_bb133
  %"269" = call i32 @__VERIFIER_nondet_int() #5
  %"270" = call i32 @__VERIFIER_nondet_int() #5
  %"271" = icmp ne i32 %"269", 0
  br i1 %"271", label %CdAudioPnp_bb135, label %CdAudioPnp_bb138

CdAudioPnp_bb135:                                 ; preds = %CdAudioPnp_bb134
  %"272" = load i32* @"'pended", align 4
  %"273" = icmp eq i32 %"272", 0
  br i1 %"273", label %CdAudioPnp_bb136, label %CdAudioPnp_bb137

CdAudioPnp_bb136:                                 ; preds = %CdAudioPnp_bb135
  store i32 1, i32* @"'pended", align 4
  br label %CdAudioPnp_bb138

CdAudioPnp_bb137:                                 ; preds = %CdAudioPnp_bb135
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioPnp_bb138:                                 ; preds = %CdAudioPnp_bb136, %CdAudioPnp_bb134
  %"274" = load i32* @"'myStatus", align 4
  %"275" = icmp sge i32 %"274", 0
  br i1 %"275", label %CdAudioPnp_bb139, label %CdAudioPnp_HPCdrCompletion.exit.i.i2

CdAudioPnp_bb139:                                 ; preds = %CdAudioPnp_bb138
  %"276" = call i32 @__VERIFIER_nondet_int() #5
  br label %CdAudioPnp_HPCdrCompletion.exit.i.i2

CdAudioPnp_HPCdrCompletion.exit.i.i2:             ; preds = %CdAudioPnp_bb139, %CdAudioPnp_bb138
  %"277" = load i32* @"'myStatus", align 4
  br label %CdAudioPnp_bb142

CdAudioPnp_bb140:                                 ; preds = %CdAudioPnp_bb133
  %"278" = load i32* @"'routine", align 4
  %"279" = icmp eq i32 %"278", 1
  br i1 %"279", label %CdAudioPnp_bb141, label %CdAudioPnp_bb142

CdAudioPnp_bb141:                                 ; preds = %CdAudioPnp_bb140
  %"280" = call i32 @__VERIFIER_nondet_int() #5
  store i32 1, i32* @"'setEventCalled", align 4
  br label %CdAudioPnp_bb142

CdAudioPnp_bb142:                                 ; preds = %CdAudioPnp_bb141, %CdAudioPnp_bb140, %CdAudioPnp_HPCdrCompletion.exit.i.i2
  %compRetStatus.1.i.i3 = phi i32 [ %"277", %CdAudioPnp_HPCdrCompletion.exit.i.i2 ], [ -1073741802, %CdAudioPnp_bb141 ], [ %"262", %CdAudioPnp_bb140 ]
  %"281" = sext i32 %compRetStatus.1.i.i3 to i64
  %"282" = icmp eq i64 %"281", -1073741802
  br i1 %"282", label %CdAudioPnp_bb143, label %CdAudioPnp_bb145

CdAudioPnp_bb143:                                 ; preds = %CdAudioPnp_bb142
  %"283" = load i32* @"'s", align 4
  %"284" = load i32* @"'NP", align 4
  %"285" = icmp eq i32 %"283", %"284"
  br i1 %"285", label %CdAudioPnp_stubMoreProcessingRequired.exit.i.i4, label %CdAudioPnp_bb144

CdAudioPnp_stubMoreProcessingRequired.exit.i.i4:  ; preds = %CdAudioPnp_bb143
  %"286" = load i32* @"'MPR1", align 4
  store i32 %"286", i32* @"'s", align 4
  br label %CdAudioPnp_bb145

CdAudioPnp_bb144:                                 ; preds = %CdAudioPnp_bb143
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioPnp_bb145:                                 ; preds = %CdAudioPnp_stubMoreProcessingRequired.exit.i.i4, %CdAudioPnp_bb142, %CdAudioPnp_bb132
  %"287" = icmp ne i32 %"263", 0
  br i1 %"287", label %CdAudioPnp_bb148, label %CdAudioPnp_bb146

CdAudioPnp_bb146:                                 ; preds = %CdAudioPnp_bb145
  %"288" = call i32 @__VERIFIER_nondet_int() #5
  %"289" = icmp eq i32 %"288", 0
  br i1 %"289", label %CdAudioPnp_bb148, label %CdAudioPnp_bb147

CdAudioPnp_bb147:                                 ; preds = %CdAudioPnp_bb146
  %"290" = call i32 @__VERIFIER_nondet_int() #5
  %"291" = icmp eq i32 %"290", 1
  %..i.i5 = select i1 %"291", i32 -1073741823, i32 259
  br label %CdAudioPnp_bb148

CdAudioPnp_bb148:                                 ; preds = %CdAudioPnp_bb147, %CdAudioPnp_bb146, %CdAudioPnp_bb145
  %returnVal2.1.i.i6 = phi i32 [ 259, %CdAudioPnp_bb145 ], [ 0, %CdAudioPnp_bb146 ], [ %..i.i5, %CdAudioPnp_bb147 ]
  %"292" = load i32* @"'s", align 4
  %"293" = load i32* @"'NP", align 4
  %"294" = icmp eq i32 %"292", %"293"
  br i1 %"294", label %CdAudioPnp_bb149, label %CdAudioPnp_bb150

CdAudioPnp_bb149:                                 ; preds = %CdAudioPnp_bb148
  %"295" = load i32* @"'IPC", align 4
  store i32 %"295", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i6, i32* @"'lowerDriverReturn", align 4
  br label %CdAudioPnp_IofCallDriver.exit.i

CdAudioPnp_bb150:                                 ; preds = %CdAudioPnp_bb148
  %"296" = load i32* @"'s", align 4
  %"297" = load i32* @"'MPR1", align 4
  %"298" = icmp eq i32 %"296", %"297"
  br i1 %"298", label %CdAudioPnp_bb151, label %CdAudioPnp_bb154

CdAudioPnp_bb151:                                 ; preds = %CdAudioPnp_bb150
  %"299" = icmp eq i32 %returnVal2.1.i.i6, 259
  br i1 %"299", label %CdAudioPnp_bb152, label %CdAudioPnp_bb153

CdAudioPnp_bb152:                                 ; preds = %CdAudioPnp_bb151
  %"300" = load i32* @"'MPR3", align 4
  store i32 %"300", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i6, i32* @"'lowerDriverReturn", align 4
  br label %CdAudioPnp_IofCallDriver.exit.i

CdAudioPnp_bb153:                                 ; preds = %CdAudioPnp_bb151
  %"301" = load i32* @"'NP", align 4
  store i32 %"301", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i6, i32* @"'lowerDriverReturn", align 4
  br label %CdAudioPnp_IofCallDriver.exit.i

CdAudioPnp_bb154:                                 ; preds = %CdAudioPnp_bb150
  %"302" = load i32* @"'s", align 4
  %"303" = load i32* @"'SKIP1", align 4
  %"304" = icmp eq i32 %"302", %"303"
  br i1 %"304", label %CdAudioPnp_bb155, label %CdAudioPnp_bb166

CdAudioPnp_bb155:                                 ; preds = %CdAudioPnp_bb154
  %"305" = load i32* @"'SKIP2", align 4
  store i32 %"305", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i6, i32* @"'lowerDriverReturn", align 4
  br label %CdAudioPnp_IofCallDriver.exit.i

CdAudioPnp_IofCallDriver.exit.i:                  ; preds = %CdAudioPnp_bb155, %CdAudioPnp_bb153, %CdAudioPnp_bb152, %CdAudioPnp_bb149
  %"306" = load i32* @"'s", align 4
  %"307" = load i32* @"'MPR3", align 4
  %"308" = icmp eq i32 %"306", %"307"
  %"309" = load i32* @"'setEventCalled", align 4
  %"310" = icmp eq i32 %"309", 1
  %or.cond.i.i = and i1 %"308", %"310"
  br i1 %or.cond.i.i, label %CdAudioPnp_bb156, label %CdAudioPnp_bb157

CdAudioPnp_bb156:                                 ; preds = %CdAudioPnp_IofCallDriver.exit.i
  %"311" = load i32* @"'NP", align 4
  store i32 %"311", i32* @"'s", align 4
  store i32 0, i32* @"'setEventCalled", align 4
  br label %CdAudioPnp_CdAudioForwardIrpSynchronous.exit

CdAudioPnp_bb157:                                 ; preds = %CdAudioPnp_IofCallDriver.exit.i
  %"312" = load i32* @"'customIrp", align 4
  %"313" = icmp eq i32 %"312", 1
  br i1 %"313", label %CdAudioPnp_bb158, label %CdAudioPnp_bb159

CdAudioPnp_bb158:                                 ; preds = %CdAudioPnp_bb157
  %"314" = load i32* @"'NP", align 4
  store i32 %"314", i32* @"'s", align 4
  store i32 0, i32* @"'customIrp", align 4
  br label %CdAudioPnp_CdAudioForwardIrpSynchronous.exit

CdAudioPnp_bb159:                                 ; preds = %CdAudioPnp_bb157
  %"315" = load i32* @"'s", align 4
  %"316" = load i32* @"'MPR3", align 4
  %"317" = icmp eq i32 %"315", %"316"
  br i1 %"317", label %CdAudioPnp_bb160, label %CdAudioPnp_CdAudioForwardIrpSynchronous.exit

CdAudioPnp_bb160:                                 ; preds = %CdAudioPnp_bb159
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioPnp_CdAudioForwardIrpSynchronous.exit:     ; preds = %CdAudioPnp_bb156, %CdAudioPnp_bb158, %CdAudioPnp_bb159
  %"318" = call i32 @__VERIFIER_nondet_int() #5
  %"319" = load i32* @"'myStatus", align 4
  %"320" = icmp sge i32 %"319", 0
  br i1 %"320", label %CdAudioPnp_bb161, label %CdAudioPnp_bb163

CdAudioPnp_bb161:                                 ; preds = %CdAudioPnp_CdAudioForwardIrpSynchronous.exit
  %"321" = icmp ne i32 %"107", 0
  br i1 %"321", label %CdAudioPnp_bb162, label %CdAudioPnp_bb164

CdAudioPnp_bb162:                                 ; preds = %CdAudioPnp_bb161
  br label %CdAudioPnp_bb164

CdAudioPnp_bb163:                                 ; preds = %CdAudioPnp_CdAudioForwardIrpSynchronous.exit
  br label %CdAudioPnp_bb164

CdAudioPnp_bb164:                                 ; preds = %CdAudioPnp_bb161, %CdAudioPnp_bb162, %CdAudioPnp_bb163
  %"322" = call i32 @__VERIFIER_nondet_int() #5
  store i32 1, i32* @"'setEventCalled", align 4
  %"323" = load i32* @"'s", align 4
  %"324" = load i32* @"'NP", align 4
  %"325" = icmp eq i32 %"323", %"324"
  br i1 %"325", label %CdAudioPnp_IofCompleteRequest.exit7, label %CdAudioPnp_bb165

CdAudioPnp_IofCompleteRequest.exit7:              ; preds = %CdAudioPnp_bb164
  %"326" = load i32* @"'DC", align 4
  store i32 %"326", i32* @"'s", align 4
  br label %CdAudioPnp_CdAudioSendToNextDriver.exit

CdAudioPnp_bb165:                                 ; preds = %CdAudioPnp_bb164
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioPnp_bb166:                                 ; preds = %CdAudioPnp_bb154
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioPnp_NewDefault:                            ; preds = %CdAudioPnp_LeafBlock16, %CdAudioPnp_LeafBlock
  br label %CdAudioPnp_bb167

CdAudioPnp_bb167:                                 ; preds = %CdAudioPnp_NewDefault
  %"327" = call i32 @__VERIFIER_nondet_int() #5
  %"328" = call i32 @__VERIFIER_nondet_int() #5
  %"329" = call i32 @__VERIFIER_nondet_int() #5
  %"330" = load i32* @"'s", align 4
  %"331" = load i32* @"'NP", align 4
  %"332" = icmp eq i32 %"330", %"331"
  br i1 %"332", label %CdAudioPnp_bb168, label %CdAudioPnp_bb193

CdAudioPnp_bb168:                                 ; preds = %CdAudioPnp_bb167
  %"333" = load i32* @"'SKIP1", align 4
  store i32 %"333", i32* @"'s", align 4
  %"334" = call i32 @__kittel_nondef.0() #5
  %"335" = call i32 @__VERIFIER_nondet_int() #5
  %"336" = call i32 @__VERIFIER_nondet_int() #5
  %"337" = load i32* @"'compRegistered", align 4
  %"338" = icmp ne i32 %"337", 0
  br i1 %"338", label %CdAudioPnp_bb169, label %CdAudioPnp_bb181

CdAudioPnp_bb169:                                 ; preds = %CdAudioPnp_bb168
  %"339" = load i32* @"'routine", align 4
  %"340" = icmp eq i32 %"339", 0
  br i1 %"340", label %CdAudioPnp_bb170, label %CdAudioPnp_bb176

CdAudioPnp_bb170:                                 ; preds = %CdAudioPnp_bb169
  %"341" = call i32 @__VERIFIER_nondet_int() #5
  %"342" = call i32 @__VERIFIER_nondet_int() #5
  %"343" = icmp ne i32 %"341", 0
  br i1 %"343", label %CdAudioPnp_bb171, label %CdAudioPnp_bb174

CdAudioPnp_bb171:                                 ; preds = %CdAudioPnp_bb170
  %"344" = load i32* @"'pended", align 4
  %"345" = icmp eq i32 %"344", 0
  br i1 %"345", label %CdAudioPnp_bb172, label %CdAudioPnp_bb173

CdAudioPnp_bb172:                                 ; preds = %CdAudioPnp_bb171
  store i32 1, i32* @"'pended", align 4
  br label %CdAudioPnp_bb174

CdAudioPnp_bb173:                                 ; preds = %CdAudioPnp_bb171
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioPnp_bb174:                                 ; preds = %CdAudioPnp_bb172, %CdAudioPnp_bb170
  %"346" = load i32* @"'myStatus", align 4
  %"347" = icmp sge i32 %"346", 0
  br i1 %"347", label %CdAudioPnp_bb175, label %CdAudioPnp_HPCdrCompletion.exit.i.i8

CdAudioPnp_bb175:                                 ; preds = %CdAudioPnp_bb174
  %"348" = call i32 @__VERIFIER_nondet_int() #5
  br label %CdAudioPnp_HPCdrCompletion.exit.i.i8

CdAudioPnp_HPCdrCompletion.exit.i.i8:             ; preds = %CdAudioPnp_bb175, %CdAudioPnp_bb174
  %"349" = load i32* @"'myStatus", align 4
  br label %CdAudioPnp_bb178

CdAudioPnp_bb176:                                 ; preds = %CdAudioPnp_bb169
  %"350" = load i32* @"'routine", align 4
  %"351" = icmp eq i32 %"350", 1
  br i1 %"351", label %CdAudioPnp_bb177, label %CdAudioPnp_bb178

CdAudioPnp_bb177:                                 ; preds = %CdAudioPnp_bb176
  %"352" = call i32 @__VERIFIER_nondet_int() #5
  store i32 1, i32* @"'setEventCalled", align 4
  br label %CdAudioPnp_bb178

CdAudioPnp_bb178:                                 ; preds = %CdAudioPnp_bb177, %CdAudioPnp_bb176, %CdAudioPnp_HPCdrCompletion.exit.i.i8
  %compRetStatus.1.i.i9 = phi i32 [ %"349", %CdAudioPnp_HPCdrCompletion.exit.i.i8 ], [ -1073741802, %CdAudioPnp_bb177 ], [ %"334", %CdAudioPnp_bb176 ]
  %"353" = sext i32 %compRetStatus.1.i.i9 to i64
  %"354" = icmp eq i64 %"353", -1073741802
  br i1 %"354", label %CdAudioPnp_bb179, label %CdAudioPnp_bb181

CdAudioPnp_bb179:                                 ; preds = %CdAudioPnp_bb178
  %"355" = load i32* @"'s", align 4
  %"356" = load i32* @"'NP", align 4
  %"357" = icmp eq i32 %"355", %"356"
  br i1 %"357", label %CdAudioPnp_stubMoreProcessingRequired.exit.i.i10, label %CdAudioPnp_bb180

CdAudioPnp_stubMoreProcessingRequired.exit.i.i10: ; preds = %CdAudioPnp_bb179
  %"358" = load i32* @"'MPR1", align 4
  store i32 %"358", i32* @"'s", align 4
  br label %CdAudioPnp_bb181

CdAudioPnp_bb180:                                 ; preds = %CdAudioPnp_bb179
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioPnp_bb181:                                 ; preds = %CdAudioPnp_stubMoreProcessingRequired.exit.i.i10, %CdAudioPnp_bb178, %CdAudioPnp_bb168
  %"359" = icmp ne i32 %"335", 0
  br i1 %"359", label %CdAudioPnp_bb184, label %CdAudioPnp_bb182

CdAudioPnp_bb182:                                 ; preds = %CdAudioPnp_bb181
  %"360" = call i32 @__VERIFIER_nondet_int() #5
  %"361" = icmp eq i32 %"360", 0
  br i1 %"361", label %CdAudioPnp_bb184, label %CdAudioPnp_bb183

CdAudioPnp_bb183:                                 ; preds = %CdAudioPnp_bb182
  %"362" = call i32 @__VERIFIER_nondet_int() #5
  %"363" = icmp eq i32 %"362", 1
  %..i.i11 = select i1 %"363", i32 -1073741823, i32 259
  br label %CdAudioPnp_bb184

CdAudioPnp_bb184:                                 ; preds = %CdAudioPnp_bb183, %CdAudioPnp_bb182, %CdAudioPnp_bb181
  %returnVal2.1.i.i12 = phi i32 [ 259, %CdAudioPnp_bb181 ], [ 0, %CdAudioPnp_bb182 ], [ %..i.i11, %CdAudioPnp_bb183 ]
  %"364" = load i32* @"'s", align 4
  %"365" = load i32* @"'NP", align 4
  %"366" = icmp eq i32 %"364", %"365"
  br i1 %"366", label %CdAudioPnp_bb185, label %CdAudioPnp_bb186

CdAudioPnp_bb185:                                 ; preds = %CdAudioPnp_bb184
  %"367" = load i32* @"'IPC", align 4
  store i32 %"367", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i12, i32* @"'lowerDriverReturn", align 4
  br label %CdAudioPnp_CdAudioSendToNextDriver.exit

CdAudioPnp_bb186:                                 ; preds = %CdAudioPnp_bb184
  %"368" = load i32* @"'s", align 4
  %"369" = load i32* @"'MPR1", align 4
  %"370" = icmp eq i32 %"368", %"369"
  br i1 %"370", label %CdAudioPnp_bb187, label %CdAudioPnp_bb190

CdAudioPnp_bb187:                                 ; preds = %CdAudioPnp_bb186
  %"371" = icmp eq i32 %returnVal2.1.i.i12, 259
  br i1 %"371", label %CdAudioPnp_bb188, label %CdAudioPnp_bb189

CdAudioPnp_bb188:                                 ; preds = %CdAudioPnp_bb187
  %"372" = load i32* @"'MPR3", align 4
  store i32 %"372", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i12, i32* @"'lowerDriverReturn", align 4
  br label %CdAudioPnp_CdAudioSendToNextDriver.exit

CdAudioPnp_bb189:                                 ; preds = %CdAudioPnp_bb187
  %"373" = load i32* @"'NP", align 4
  store i32 %"373", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i12, i32* @"'lowerDriverReturn", align 4
  br label %CdAudioPnp_CdAudioSendToNextDriver.exit

CdAudioPnp_bb190:                                 ; preds = %CdAudioPnp_bb186
  %"374" = load i32* @"'s", align 4
  %"375" = load i32* @"'SKIP1", align 4
  %"376" = icmp eq i32 %"374", %"375"
  br i1 %"376", label %CdAudioPnp_bb191, label %CdAudioPnp_bb192

CdAudioPnp_bb191:                                 ; preds = %CdAudioPnp_bb190
  %"377" = load i32* @"'SKIP2", align 4
  store i32 %"377", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i12, i32* @"'lowerDriverReturn", align 4
  br label %CdAudioPnp_CdAudioSendToNextDriver.exit

CdAudioPnp_CdAudioSendToNextDriver.exit:          ; preds = %CdAudioPnp_bb191, %CdAudioPnp_bb189, %CdAudioPnp_bb188, %CdAudioPnp_bb185, %CdAudioPnp_bb118, %CdAudioPnp_bb116, %CdAudioPnp_bb115, %CdAudioPnp_bb112, %CdAudioPnp_IofCompleteRequest.exit7, %CdAudioPnp_IofCompleteRequest.exit
  %.0 = phi i32 [ %.0.i, %CdAudioPnp_IofCompleteRequest.exit ], [ %"319", %CdAudioPnp_IofCompleteRequest.exit7 ], [ %returnVal2.1.i.i, %CdAudioPnp_bb112 ], [ %returnVal2.1.i.i, %CdAudioPnp_bb115 ], [ %returnVal2.1.i.i, %CdAudioPnp_bb116 ], [ %returnVal2.1.i.i, %CdAudioPnp_bb118 ], [ %returnVal2.1.i.i12, %CdAudioPnp_bb185 ], [ %returnVal2.1.i.i12, %CdAudioPnp_bb188 ], [ %returnVal2.1.i.i12, %CdAudioPnp_bb189 ], [ %returnVal2.1.i.i12, %CdAudioPnp_bb191 ]
  ret i32 %.0

CdAudioPnp_bb192:                                 ; preds = %CdAudioPnp_bb190
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioPnp_bb193:                                 ; preds = %CdAudioPnp_bb167
  call void (...)* @__VERIFIER_error() #4
  unreachable
}

; Function Attrs: nounwind uwtable
define void @IofCompleteRequest(i32 %Irp, i32 %PriorityBoost) #0 {
IofCompleteRequest_bb194:
  %"378" = load i32* @"'s", align 4
  %"379" = load i32* @"'NP", align 4
  %"380" = icmp eq i32 %"378", %"379"
  br i1 %"380", label %IofCompleteRequest_bb195, label %IofCompleteRequest_bb196

IofCompleteRequest_bb195:                         ; preds = %IofCompleteRequest_bb194
  %"381" = load i32* @"'DC", align 4
  store i32 %"381", i32* @"'s", align 4
  ret void

IofCompleteRequest_bb196:                         ; preds = %IofCompleteRequest_bb194
  call void (...)* @__VERIFIER_error() #4
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @CdAudioDeviceControl(i32 %DeviceObject, i32 %Irp) #0 {
CdAudioDeviceControl_bb197:
  %"382" = call i32 @__VERIFIER_nondet_int()
  br label %CdAudioDeviceControl_NodeBlock45

CdAudioDeviceControl_NodeBlock45:                 ; preds = %CdAudioDeviceControl_bb197
  %Pivot46 = icmp slt i32 %"382", 3
  br i1 %Pivot46, label %CdAudioDeviceControl_NodeBlock, label %CdAudioDeviceControl_NodeBlock43

CdAudioDeviceControl_NodeBlock:                   ; preds = %CdAudioDeviceControl_NodeBlock45
  %Pivot = icmp slt i32 %"382", 2
  br i1 %Pivot, label %CdAudioDeviceControl_LeafBlock, label %CdAudioDeviceControl_bb228

CdAudioDeviceControl_LeafBlock:                   ; preds = %CdAudioDeviceControl_NodeBlock
  %SwitchLeaf = icmp eq i32 %"382", 1
  br i1 %SwitchLeaf, label %CdAudioDeviceControl_bb198, label %CdAudioDeviceControl_NewDefault

CdAudioDeviceControl_bb198:                       ; preds = %CdAudioDeviceControl_LeafBlock
  %"383" = call i32 @__VERIFIER_nondet_int() #5
  %"384" = call i32 @__VERIFIER_nondet_int() #5
  %"385" = call i32 @__VERIFIER_nondet_int() #5
  %"386" = icmp eq i32 %"383", 147464
  %"387" = call i32 @__VERIFIER_nondet_int() #5
  %"388" = call i32 @__VERIFIER_nondet_int() #5
  %"389" = call i32 @__VERIFIER_nondet_int() #5
  br i1 %"386", label %CdAudioDeviceControl_bb199, label %CdAudioDeviceControl_bb201

CdAudioDeviceControl_bb199:                       ; preds = %CdAudioDeviceControl_bb198
  store i32 -1073741670, i32* @"'myStatus", align 4
  %"390" = load i32* @"'s", align 4
  %"391" = load i32* @"'NP", align 4
  %"392" = icmp eq i32 %"390", %"391"
  br i1 %"392", label %CdAudioDeviceControl_IofCompleteRequest.exit.i20, label %CdAudioDeviceControl_bb200

CdAudioDeviceControl_IofCompleteRequest.exit.i20: ; preds = %CdAudioDeviceControl_bb199
  %"393" = load i32* @"'DC", align 4
  store i32 %"393", i32* @"'s", align 4
  br label %CdAudioDeviceControl_CdAudioSendToNextDriver.exit

CdAudioDeviceControl_bb200:                       ; preds = %CdAudioDeviceControl_bb199
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioDeviceControl_bb201:                       ; preds = %CdAudioDeviceControl_bb198
  %"394" = load i32* @"'s", align 4
  %"395" = load i32* @"'NP", align 4
  %"396" = icmp eq i32 %"394", %"395"
  br i1 %"396", label %CdAudioDeviceControl_bb202, label %CdAudioDeviceControl_bb227

CdAudioDeviceControl_bb202:                       ; preds = %CdAudioDeviceControl_bb201
  %"397" = load i32* @"'SKIP1", align 4
  store i32 %"397", i32* @"'s", align 4
  %"398" = call i32 @__kittel_nondef.0() #5
  %"399" = call i32 @__VERIFIER_nondet_int() #5
  %"400" = call i32 @__VERIFIER_nondet_int() #5
  %"401" = load i32* @"'compRegistered", align 4
  %"402" = icmp ne i32 %"401", 0
  br i1 %"402", label %CdAudioDeviceControl_bb203, label %CdAudioDeviceControl_bb215

CdAudioDeviceControl_bb203:                       ; preds = %CdAudioDeviceControl_bb202
  %"403" = load i32* @"'routine", align 4
  %"404" = icmp eq i32 %"403", 0
  br i1 %"404", label %CdAudioDeviceControl_bb204, label %CdAudioDeviceControl_bb210

CdAudioDeviceControl_bb204:                       ; preds = %CdAudioDeviceControl_bb203
  %"405" = call i32 @__VERIFIER_nondet_int() #5
  %"406" = call i32 @__VERIFIER_nondet_int() #5
  %"407" = icmp ne i32 %"405", 0
  br i1 %"407", label %CdAudioDeviceControl_bb205, label %CdAudioDeviceControl_bb208

CdAudioDeviceControl_bb205:                       ; preds = %CdAudioDeviceControl_bb204
  %"408" = load i32* @"'pended", align 4
  %"409" = icmp eq i32 %"408", 0
  br i1 %"409", label %CdAudioDeviceControl_bb206, label %CdAudioDeviceControl_bb207

CdAudioDeviceControl_bb206:                       ; preds = %CdAudioDeviceControl_bb205
  store i32 1, i32* @"'pended", align 4
  br label %CdAudioDeviceControl_bb208

CdAudioDeviceControl_bb207:                       ; preds = %CdAudioDeviceControl_bb205
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioDeviceControl_bb208:                       ; preds = %CdAudioDeviceControl_bb206, %CdAudioDeviceControl_bb204
  %"410" = load i32* @"'myStatus", align 4
  %"411" = icmp sge i32 %"410", 0
  br i1 %"411", label %CdAudioDeviceControl_bb209, label %CdAudioDeviceControl_HPCdrCompletion.exit.i.i.i21

CdAudioDeviceControl_bb209:                       ; preds = %CdAudioDeviceControl_bb208
  %"412" = call i32 @__VERIFIER_nondet_int() #5
  br label %CdAudioDeviceControl_HPCdrCompletion.exit.i.i.i21

CdAudioDeviceControl_HPCdrCompletion.exit.i.i.i21: ; preds = %CdAudioDeviceControl_bb209, %CdAudioDeviceControl_bb208
  %"413" = load i32* @"'myStatus", align 4
  br label %CdAudioDeviceControl_bb212

CdAudioDeviceControl_bb210:                       ; preds = %CdAudioDeviceControl_bb203
  %"414" = load i32* @"'routine", align 4
  %"415" = icmp eq i32 %"414", 1
  br i1 %"415", label %CdAudioDeviceControl_bb211, label %CdAudioDeviceControl_bb212

CdAudioDeviceControl_bb211:                       ; preds = %CdAudioDeviceControl_bb210
  %"416" = call i32 @__VERIFIER_nondet_int() #5
  store i32 1, i32* @"'setEventCalled", align 4
  br label %CdAudioDeviceControl_bb212

CdAudioDeviceControl_bb212:                       ; preds = %CdAudioDeviceControl_bb211, %CdAudioDeviceControl_bb210, %CdAudioDeviceControl_HPCdrCompletion.exit.i.i.i21
  %compRetStatus.1.i.i.i22 = phi i32 [ %"413", %CdAudioDeviceControl_HPCdrCompletion.exit.i.i.i21 ], [ -1073741802, %CdAudioDeviceControl_bb211 ], [ %"398", %CdAudioDeviceControl_bb210 ]
  %"417" = sext i32 %compRetStatus.1.i.i.i22 to i64
  %"418" = icmp eq i64 %"417", -1073741802
  br i1 %"418", label %CdAudioDeviceControl_bb213, label %CdAudioDeviceControl_bb215

CdAudioDeviceControl_bb213:                       ; preds = %CdAudioDeviceControl_bb212
  %"419" = load i32* @"'s", align 4
  %"420" = load i32* @"'NP", align 4
  %"421" = icmp eq i32 %"419", %"420"
  br i1 %"421", label %CdAudioDeviceControl_stubMoreProcessingRequired.exit.i.i.i23, label %CdAudioDeviceControl_bb214

CdAudioDeviceControl_stubMoreProcessingRequired.exit.i.i.i23: ; preds = %CdAudioDeviceControl_bb213
  %"422" = load i32* @"'MPR1", align 4
  store i32 %"422", i32* @"'s", align 4
  br label %CdAudioDeviceControl_bb215

CdAudioDeviceControl_bb214:                       ; preds = %CdAudioDeviceControl_bb213
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioDeviceControl_bb215:                       ; preds = %CdAudioDeviceControl_stubMoreProcessingRequired.exit.i.i.i23, %CdAudioDeviceControl_bb212, %CdAudioDeviceControl_bb202
  %"423" = icmp ne i32 %"399", 0
  br i1 %"423", label %CdAudioDeviceControl_bb218, label %CdAudioDeviceControl_bb216

CdAudioDeviceControl_bb216:                       ; preds = %CdAudioDeviceControl_bb215
  %"424" = call i32 @__VERIFIER_nondet_int() #5
  %"425" = icmp eq i32 %"424", 0
  br i1 %"425", label %CdAudioDeviceControl_bb218, label %CdAudioDeviceControl_bb217

CdAudioDeviceControl_bb217:                       ; preds = %CdAudioDeviceControl_bb216
  %"426" = call i32 @__VERIFIER_nondet_int() #5
  %"427" = icmp eq i32 %"426", 1
  %..i.i.i24 = select i1 %"427", i32 -1073741823, i32 259
  br label %CdAudioDeviceControl_bb218

CdAudioDeviceControl_bb218:                       ; preds = %CdAudioDeviceControl_bb217, %CdAudioDeviceControl_bb216, %CdAudioDeviceControl_bb215
  %returnVal2.1.i.i.i25 = phi i32 [ 259, %CdAudioDeviceControl_bb215 ], [ 0, %CdAudioDeviceControl_bb216 ], [ %..i.i.i24, %CdAudioDeviceControl_bb217 ]
  %"428" = load i32* @"'s", align 4
  %"429" = load i32* @"'NP", align 4
  %"430" = icmp eq i32 %"428", %"429"
  br i1 %"430", label %CdAudioDeviceControl_bb219, label %CdAudioDeviceControl_bb220

CdAudioDeviceControl_bb219:                       ; preds = %CdAudioDeviceControl_bb218
  %"431" = load i32* @"'IPC", align 4
  store i32 %"431", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i.i25, i32* @"'lowerDriverReturn", align 4
  br label %CdAudioDeviceControl_CdAudioSendToNextDriver.exit

CdAudioDeviceControl_bb220:                       ; preds = %CdAudioDeviceControl_bb218
  %"432" = load i32* @"'s", align 4
  %"433" = load i32* @"'MPR1", align 4
  %"434" = icmp eq i32 %"432", %"433"
  br i1 %"434", label %CdAudioDeviceControl_bb221, label %CdAudioDeviceControl_bb224

CdAudioDeviceControl_bb221:                       ; preds = %CdAudioDeviceControl_bb220
  %"435" = icmp eq i32 %returnVal2.1.i.i.i25, 259
  br i1 %"435", label %CdAudioDeviceControl_bb222, label %CdAudioDeviceControl_bb223

CdAudioDeviceControl_bb222:                       ; preds = %CdAudioDeviceControl_bb221
  %"436" = load i32* @"'MPR3", align 4
  store i32 %"436", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i.i25, i32* @"'lowerDriverReturn", align 4
  br label %CdAudioDeviceControl_CdAudioSendToNextDriver.exit

CdAudioDeviceControl_bb223:                       ; preds = %CdAudioDeviceControl_bb221
  %"437" = load i32* @"'NP", align 4
  store i32 %"437", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i.i25, i32* @"'lowerDriverReturn", align 4
  br label %CdAudioDeviceControl_CdAudioSendToNextDriver.exit

CdAudioDeviceControl_bb224:                       ; preds = %CdAudioDeviceControl_bb220
  %"438" = load i32* @"'s", align 4
  %"439" = load i32* @"'SKIP1", align 4
  %"440" = icmp eq i32 %"438", %"439"
  br i1 %"440", label %CdAudioDeviceControl_bb225, label %CdAudioDeviceControl_bb226

CdAudioDeviceControl_bb225:                       ; preds = %CdAudioDeviceControl_bb224
  %"441" = load i32* @"'SKIP2", align 4
  store i32 %"441", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i.i25, i32* @"'lowerDriverReturn", align 4
  br label %CdAudioDeviceControl_CdAudioSendToNextDriver.exit

CdAudioDeviceControl_bb226:                       ; preds = %CdAudioDeviceControl_bb224
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioDeviceControl_bb227:                       ; preds = %CdAudioDeviceControl_bb201
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioDeviceControl_bb228:                       ; preds = %CdAudioDeviceControl_NodeBlock
  %"442" = call i32 @__VERIFIER_nondet_int() #5
  %"443" = call i32 @__VERIFIER_nondet_int() #5
  %"444" = call i32 @__VERIFIER_nondet_int() #5
  %"445" = call i32 @__VERIFIER_nondet_int() #5
  %"446" = call i32 @__VERIFIER_nondet_int() #5
  %"447" = call i32 @__VERIFIER_nondet_int() #5
  %"448" = call i32 @__VERIFIER_nondet_int() #5
  %"449" = call i32 @__VERIFIER_nondet_int() #5
  %"450" = call i32 @__VERIFIER_nondet_int() #5
  %"451" = call i32 @__VERIFIER_nondet_int() #5
  %"452" = call i32 @__VERIFIER_nondet_int() #5
  %"453" = call i32 @__VERIFIER_nondet_int() #5
  %"454" = call i32 @__VERIFIER_nondet_int() #5
  %"455" = call i32 @__VERIFIER_nondet_int() #5
  %"456" = call i32 @__VERIFIER_nondet_int() #5
  %"457" = call i32 @__VERIFIER_nondet_int() #5
  %"458" = call i32 @__VERIFIER_nondet_int() #5
  %"459" = call i32 @__VERIFIER_nondet_int() #5
  %"460" = call i32 @__VERIFIER_nondet_int() #5
  %"461" = call i32 @__VERIFIER_nondet_int() #5
  %"462" = call i32 @__VERIFIER_nondet_int() #5
  %"463" = call i32 @__VERIFIER_nondet_int() #5
  %"464" = call i32 @__VERIFIER_nondet_int() #5
  %"465" = call i32 @__VERIFIER_nondet_int() #5
  %"466" = call i32 @__VERIFIER_nondet_int() #5
  %"467" = call i32 @__VERIFIER_nondet_int() #5
  %"468" = call i32 @__VERIFIER_nondet_int() #5
  %"469" = call i32 @__VERIFIER_nondet_int() #5
  %"470" = call i32 @__VERIFIER_nondet_int() #5
  %"471" = call i32 @__VERIFIER_nondet_int() #5
  %Pivot66.i = icmp slt i32 %"447", 147500
  br i1 %Pivot66.i, label %CdAudioDeviceControl_NodeBlock45.i, label %CdAudioDeviceControl_NodeBlock63.i

CdAudioDeviceControl_NodeBlock45.i:               ; preds = %CdAudioDeviceControl_bb228
  %Pivot46.i = icmp slt i32 %"447", 147476
  br i1 %Pivot46.i, label %CdAudioDeviceControl_NodeBlock.i, label %CdAudioDeviceControl_NodeBlock43.i

CdAudioDeviceControl_NodeBlock.i:                 ; preds = %CdAudioDeviceControl_NodeBlock45.i
  %Pivot.i = icmp slt i32 %"447", 147460
  br i1 %Pivot.i, label %CdAudioDeviceControl_LeafBlock.i, label %CdAudioDeviceControl_LeafBlock33.i

CdAudioDeviceControl_LeafBlock.i:                 ; preds = %CdAudioDeviceControl_NodeBlock.i
  %SwitchLeaf.i = icmp eq i32 %"447", 147456
  br i1 %SwitchLeaf.i, label %CdAudioDeviceControl_bb229, label %CdAudioDeviceControl_CdAudioIsPlayActive.exit27.i

CdAudioDeviceControl_bb229:                       ; preds = %CdAudioDeviceControl_LeafBlock.i
  %"472" = icmp ne i32 %"448", 0
  br i1 %"472", label %CdAudioDeviceControl_bb281, label %CdAudioDeviceControl_bb230

CdAudioDeviceControl_bb230:                       ; preds = %CdAudioDeviceControl_bb229
  %"473" = call i32 @__VERIFIER_nondet_int() #5
  %"474" = call i32 @__VERIFIER_nondet_int() #5
  %"475" = call i32 @__VERIFIER_nondet_int() #5
  %"476" = call i32 @__VERIFIER_nondet_int() #5
  %"477" = call i32 @__VERIFIER_nondet_int() #5
  %"478" = call i32 @__VERIFIER_nondet_int() #5
  %"479" = call i32 @__VERIFIER_nondet_int() #5
  %"480" = icmp eq i32 %"473", 0
  %"481" = icmp eq i32 %"479", 0
  %or.cond.i3.i = or i1 %"480", %"481"
  %"482" = icmp eq i32 %"476", 0
  %or.cond1.i4.i = or i1 %or.cond.i3.i, %"482"
  br i1 %or.cond1.i4.i, label %CdAudioDeviceControl_CdAudioIsPlayActive.exit10.i, label %CdAudioDeviceControl_bb231

CdAudioDeviceControl_bb231:                       ; preds = %CdAudioDeviceControl_bb230
  %"483" = sext i32 %"478" to i64
  %"484" = icmp eq i64 %"483", 259
  br i1 %"484", label %CdAudioDeviceControl_bb232, label %CdAudioDeviceControl_bb238

CdAudioDeviceControl_bb232:                       ; preds = %CdAudioDeviceControl_bb231
  %"485" = load i32* @"'s", align 4
  %"486" = load i32* @"'MPR3", align 4
  %"487" = icmp eq i32 %"485", %"486"
  %"488" = load i32* @"'setEventCalled", align 4
  %"489" = icmp eq i32 %"488", 1
  %or.cond.i.i5.i = and i1 %"487", %"489"
  br i1 %or.cond.i.i5.i, label %CdAudioDeviceControl_bb233, label %CdAudioDeviceControl_bb234

CdAudioDeviceControl_bb233:                       ; preds = %CdAudioDeviceControl_bb232
  %"490" = load i32* @"'NP", align 4
  store i32 %"490", i32* @"'s", align 4
  store i32 0, i32* @"'setEventCalled", align 4
  br label %CdAudioDeviceControl_KeWaitForSingleObject.exit.i6.i

CdAudioDeviceControl_bb234:                       ; preds = %CdAudioDeviceControl_bb232
  %"491" = load i32* @"'customIrp", align 4
  %"492" = icmp eq i32 %"491", 1
  br i1 %"492", label %CdAudioDeviceControl_bb235, label %CdAudioDeviceControl_bb236

CdAudioDeviceControl_bb235:                       ; preds = %CdAudioDeviceControl_bb234
  %"493" = load i32* @"'NP", align 4
  store i32 %"493", i32* @"'s", align 4
  store i32 0, i32* @"'customIrp", align 4
  br label %CdAudioDeviceControl_KeWaitForSingleObject.exit.i6.i

CdAudioDeviceControl_bb236:                       ; preds = %CdAudioDeviceControl_bb234
  %"494" = load i32* @"'s", align 4
  %"495" = load i32* @"'MPR3", align 4
  %"496" = icmp eq i32 %"494", %"495"
  br i1 %"496", label %CdAudioDeviceControl_bb237, label %CdAudioDeviceControl_KeWaitForSingleObject.exit.i6.i

CdAudioDeviceControl_bb237:                       ; preds = %CdAudioDeviceControl_bb236
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioDeviceControl_KeWaitForSingleObject.exit.i6.i: ; preds = %CdAudioDeviceControl_bb236, %CdAudioDeviceControl_bb235, %CdAudioDeviceControl_bb233
  %"497" = call i32 @__VERIFIER_nondet_int() #5
  br label %CdAudioDeviceControl_bb238

CdAudioDeviceControl_bb238:                       ; preds = %CdAudioDeviceControl_KeWaitForSingleObject.exit.i6.i, %CdAudioDeviceControl_bb231
  %status.0.i7.i = phi i32 [ %"474", %CdAudioDeviceControl_KeWaitForSingleObject.exit.i6.i ], [ %"478", %CdAudioDeviceControl_bb231 ]
  %"498" = icmp slt i32 %status.0.i7.i, 0
  br i1 %"498", label %CdAudioDeviceControl_CdAudioIsPlayActive.exit10.i, label %CdAudioDeviceControl_bb239

CdAudioDeviceControl_bb239:                       ; preds = %CdAudioDeviceControl_bb238
  %"499" = icmp eq i32 %"475", 17
  %..i8.i = select i1 %"499", i32 1, i32 0
  br label %CdAudioDeviceControl_CdAudioIsPlayActive.exit10.i

CdAudioDeviceControl_CdAudioIsPlayActive.exit10.i: ; preds = %CdAudioDeviceControl_bb239, %CdAudioDeviceControl_bb238, %CdAudioDeviceControl_bb230
  %.0.i9.i = phi i32 [ %..i8.i, %CdAudioDeviceControl_bb239 ], [ 0, %CdAudioDeviceControl_bb230 ], [ 0, %CdAudioDeviceControl_bb238 ]
  %"500" = icmp ne i32 %.0.i9.i, 0
  br i1 %"500", label %CdAudioDeviceControl_bb281, label %CdAudioDeviceControl_bb240

CdAudioDeviceControl_bb240:                       ; preds = %CdAudioDeviceControl_CdAudioIsPlayActive.exit10.i
  %"501" = icmp eq i32 %"470", 0
  br i1 %"501", label %CdAudioDeviceControl_bb241, label %CdAudioDeviceControl_bb243

CdAudioDeviceControl_bb241:                       ; preds = %CdAudioDeviceControl_bb240
  store i32 -1073741670, i32* @"'myStatus", align 4
  %"502" = load i32* @"'s", align 4
  %"503" = load i32* @"'NP", align 4
  %"504" = icmp eq i32 %"502", %"503"
  br i1 %"504", label %CdAudioDeviceControl_AG_SetStatusAndReturn.exit11.i, label %CdAudioDeviceControl_bb242

CdAudioDeviceControl_AG_SetStatusAndReturn.exit11.i: ; preds = %CdAudioDeviceControl_bb241
  %"505" = load i32* @"'DC", align 4
  store i32 %"505", i32* @"'s", align 4
  br label %CdAudioDeviceControl_CdAudioSendToNextDriver.exit

CdAudioDeviceControl_bb242:                       ; preds = %CdAudioDeviceControl_bb241
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioDeviceControl_bb243:                       ; preds = %CdAudioDeviceControl_bb240
  %"506" = call i32 @__VERIFIER_nondet_int() #5
  %"507" = call i32 @__VERIFIER_nondet_int() #5
  %"508" = call i32 @__VERIFIER_nondet_int() #5
  store i32 -1073741670, i32* @"'myStatus", align 4
  %"509" = load i32* @"'s", align 4
  %"510" = load i32* @"'NP", align 4
  %"511" = icmp eq i32 %"509", %"510"
  br i1 %"511", label %CdAudioDeviceControl_AG_SetStatusAndReturn.exit13.i, label %CdAudioDeviceControl_bb244

CdAudioDeviceControl_AG_SetStatusAndReturn.exit13.i: ; preds = %CdAudioDeviceControl_bb243
  %"512" = load i32* @"'DC", align 4
  store i32 %"512", i32* @"'s", align 4
  br label %CdAudioDeviceControl_CdAudioSendToNextDriver.exit

CdAudioDeviceControl_bb244:                       ; preds = %CdAudioDeviceControl_bb243
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioDeviceControl_LeafBlock33.i:               ; preds = %CdAudioDeviceControl_NodeBlock.i
  %SwitchLeaf34.i = icmp eq i32 %"447", 147460
  br i1 %SwitchLeaf34.i, label %CdAudioDeviceControl_bb245, label %CdAudioDeviceControl_CdAudioIsPlayActive.exit27.i

CdAudioDeviceControl_bb245:                       ; preds = %CdAudioDeviceControl_LeafBlock33.i
  %"513" = icmp slt i32 %"449", %"465"
  br i1 %"513", label %CdAudioDeviceControl_bb281, label %CdAudioDeviceControl_bb246

CdAudioDeviceControl_bb246:                       ; preds = %CdAudioDeviceControl_bb245
  %"514" = call i32 @__VERIFIER_nondet_int() #5
  %"515" = call i32 @__VERIFIER_nondet_int() #5
  %"516" = call i32 @__VERIFIER_nondet_int() #5
  br label %CdAudioDeviceControl_bb281

CdAudioDeviceControl_NodeBlock43.i:               ; preds = %CdAudioDeviceControl_NodeBlock45.i
  %Pivot44.i = icmp slt i32 %"447", 147480
  br i1 %Pivot44.i, label %CdAudioDeviceControl_LeafBlock35.i, label %CdAudioDeviceControl_NodeBlock41.i

CdAudioDeviceControl_LeafBlock35.i:               ; preds = %CdAudioDeviceControl_NodeBlock43.i
  %SwitchLeaf36.i = icmp eq i32 %"447", 147476
  br i1 %SwitchLeaf36.i, label %CdAudioDeviceControl_bb281, label %CdAudioDeviceControl_CdAudioIsPlayActive.exit27.i

CdAudioDeviceControl_NodeBlock41.i:               ; preds = %CdAudioDeviceControl_NodeBlock43.i
  %Pivot42.i = icmp slt i32 %"447", 147496
  br i1 %Pivot42.i, label %CdAudioDeviceControl_LeafBlock37.i, label %CdAudioDeviceControl_LeafBlock39.i

CdAudioDeviceControl_LeafBlock37.i:               ; preds = %CdAudioDeviceControl_NodeBlock41.i
  %SwitchLeaf38.i = icmp eq i32 %"447", 147480
  br i1 %SwitchLeaf38.i, label %CdAudioDeviceControl_bb247, label %CdAudioDeviceControl_CdAudioIsPlayActive.exit27.i

CdAudioDeviceControl_bb247:                       ; preds = %CdAudioDeviceControl_LeafBlock37.i
  %"517" = icmp slt i32 %"449", %"457"
  br i1 %"517", label %CdAudioDeviceControl_bb281, label %CdAudioDeviceControl_bb248

CdAudioDeviceControl_bb248:                       ; preds = %CdAudioDeviceControl_bb247
  %"518" = call i32 @__VERIFIER_nondet_int() #5
  %"519" = call i32 @__VERIFIER_nondet_int() #5
  %"520" = call i32 @__VERIFIER_nondet_int() #5
  br label %CdAudioDeviceControl_bb281

CdAudioDeviceControl_LeafBlock39.i:               ; preds = %CdAudioDeviceControl_NodeBlock41.i
  %SwitchLeaf40.i = icmp eq i32 %"447", 147496
  br i1 %SwitchLeaf40.i, label %CdAudioDeviceControl_bb281, label %CdAudioDeviceControl_CdAudioIsPlayActive.exit27.i

CdAudioDeviceControl_NodeBlock63.i:               ; preds = %CdAudioDeviceControl_bb228
  %Pivot64.i = icmp slt i32 %"447", 147512
  br i1 %Pivot64.i, label %CdAudioDeviceControl_NodeBlock51.i, label %CdAudioDeviceControl_NodeBlock61.i

CdAudioDeviceControl_NodeBlock51.i:               ; preds = %CdAudioDeviceControl_NodeBlock63.i
  %Pivot52.i = icmp slt i32 %"447", 147508
  br i1 %Pivot52.i, label %CdAudioDeviceControl_LeafBlock47.i, label %CdAudioDeviceControl_LeafBlock49.i

CdAudioDeviceControl_LeafBlock47.i:               ; preds = %CdAudioDeviceControl_NodeBlock51.i
  %SwitchLeaf48.i = icmp eq i32 %"447", 147500
  br i1 %SwitchLeaf48.i, label %CdAudioDeviceControl_bb249, label %CdAudioDeviceControl_CdAudioIsPlayActive.exit27.i

CdAudioDeviceControl_bb249:                       ; preds = %CdAudioDeviceControl_LeafBlock47.i
  %"521" = icmp slt i32 %"448", %"455"
  br i1 %"521", label %CdAudioDeviceControl_bb281, label %CdAudioDeviceControl_bb250

CdAudioDeviceControl_bb250:                       ; preds = %CdAudioDeviceControl_bb249
  %"522" = icmp eq i32 %"471", 0
  br i1 %"522", label %CdAudioDeviceControl_bb251, label %CdAudioDeviceControl_bb253

CdAudioDeviceControl_bb251:                       ; preds = %CdAudioDeviceControl_bb250
  store i32 -1073741670, i32* @"'myStatus", align 4
  %"523" = load i32* @"'s", align 4
  %"524" = load i32* @"'NP", align 4
  %"525" = icmp eq i32 %"523", %"524"
  br i1 %"525", label %CdAudioDeviceControl_AG_SetStatusAndReturn.exit14.i, label %CdAudioDeviceControl_bb252

CdAudioDeviceControl_AG_SetStatusAndReturn.exit14.i: ; preds = %CdAudioDeviceControl_bb251
  %"526" = load i32* @"'DC", align 4
  store i32 %"526", i32* @"'s", align 4
  br label %CdAudioDeviceControl_CdAudioSendToNextDriver.exit

CdAudioDeviceControl_bb252:                       ; preds = %CdAudioDeviceControl_bb251
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioDeviceControl_bb253:                       ; preds = %CdAudioDeviceControl_bb250
  %"527" = icmp ne i32 %"456", 1
  br i1 %"527", label %CdAudioDeviceControl_bb254, label %CdAudioDeviceControl_bb256

CdAudioDeviceControl_bb254:                       ; preds = %CdAudioDeviceControl_bb253
  store i32 -1073741823, i32* @"'myStatus", align 4
  %"528" = load i32* @"'s", align 4
  %"529" = load i32* @"'NP", align 4
  %"530" = icmp eq i32 %"528", %"529"
  br i1 %"530", label %CdAudioDeviceControl_AG_SetStatusAndReturn.exit15.i, label %CdAudioDeviceControl_bb255

CdAudioDeviceControl_AG_SetStatusAndReturn.exit15.i: ; preds = %CdAudioDeviceControl_bb254
  %"531" = load i32* @"'DC", align 4
  store i32 %"531", i32* @"'s", align 4
  br label %CdAudioDeviceControl_CdAudioSendToNextDriver.exit

CdAudioDeviceControl_bb255:                       ; preds = %CdAudioDeviceControl_bb254
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioDeviceControl_bb256:                       ; preds = %CdAudioDeviceControl_bb253
  %"532" = call i32 @__VERIFIER_nondet_int() #5
  %"533" = call i32 @__VERIFIER_nondet_int() #5
  %"534" = call i32 @__VERIFIER_nondet_int() #5
  br label %CdAudioDeviceControl_bb281

CdAudioDeviceControl_LeafBlock49.i:               ; preds = %CdAudioDeviceControl_NodeBlock51.i
  %SwitchLeaf50.i = icmp eq i32 %"447", 147508
  br i1 %SwitchLeaf50.i, label %CdAudioDeviceControl_bb281, label %CdAudioDeviceControl_CdAudioIsPlayActive.exit27.i

CdAudioDeviceControl_NodeBlock61.i:               ; preds = %CdAudioDeviceControl_NodeBlock63.i
  %Pivot62.i = icmp slt i32 %"447", 149504
  br i1 %Pivot62.i, label %CdAudioDeviceControl_LeafBlock53.i, label %CdAudioDeviceControl_NodeBlock59.i

CdAudioDeviceControl_LeafBlock53.i:               ; preds = %CdAudioDeviceControl_NodeBlock61.i
  %SwitchLeaf54.i = icmp eq i32 %"447", 147512
  br i1 %SwitchLeaf54.i, label %CdAudioDeviceControl_bb257, label %CdAudioDeviceControl_CdAudioIsPlayActive.exit27.i

CdAudioDeviceControl_bb257:                       ; preds = %CdAudioDeviceControl_LeafBlock53.i
  %"535" = call i32 @__VERIFIER_nondet_int() #5
  %"536" = call i32 @__VERIFIER_nondet_int() #5
  %"537" = call i32 @__VERIFIER_nondet_int() #5
  %"538" = call i32 @__VERIFIER_nondet_int() #5
  %"539" = call i32 @__VERIFIER_nondet_int() #5
  %"540" = call i32 @__VERIFIER_nondet_int() #5
  %"541" = call i32 @__VERIFIER_nondet_int() #5
  %"542" = icmp eq i32 %"535", 0
  %"543" = icmp eq i32 %"541", 0
  %or.cond.i.i = or i1 %"542", %"543"
  %"544" = icmp eq i32 %"538", 0
  %or.cond1.i.i = or i1 %or.cond.i.i, %"544"
  br i1 %or.cond1.i.i, label %CdAudioDeviceControl_CdAudioIsPlayActive.exit.i, label %CdAudioDeviceControl_bb258

CdAudioDeviceControl_bb258:                       ; preds = %CdAudioDeviceControl_bb257
  %"545" = sext i32 %"540" to i64
  %"546" = icmp eq i64 %"545", 259
  br i1 %"546", label %CdAudioDeviceControl_bb259, label %CdAudioDeviceControl_bb265

CdAudioDeviceControl_bb259:                       ; preds = %CdAudioDeviceControl_bb258
  %"547" = load i32* @"'s", align 4
  %"548" = load i32* @"'MPR3", align 4
  %"549" = icmp eq i32 %"547", %"548"
  %"550" = load i32* @"'setEventCalled", align 4
  %"551" = icmp eq i32 %"550", 1
  %or.cond.i.i.i = and i1 %"549", %"551"
  br i1 %or.cond.i.i.i, label %CdAudioDeviceControl_bb260, label %CdAudioDeviceControl_bb261

CdAudioDeviceControl_bb260:                       ; preds = %CdAudioDeviceControl_bb259
  %"552" = load i32* @"'NP", align 4
  store i32 %"552", i32* @"'s", align 4
  store i32 0, i32* @"'setEventCalled", align 4
  br label %CdAudioDeviceControl_KeWaitForSingleObject.exit.i.i

CdAudioDeviceControl_bb261:                       ; preds = %CdAudioDeviceControl_bb259
  %"553" = load i32* @"'customIrp", align 4
  %"554" = icmp eq i32 %"553", 1
  br i1 %"554", label %CdAudioDeviceControl_bb262, label %CdAudioDeviceControl_bb263

CdAudioDeviceControl_bb262:                       ; preds = %CdAudioDeviceControl_bb261
  %"555" = load i32* @"'NP", align 4
  store i32 %"555", i32* @"'s", align 4
  store i32 0, i32* @"'customIrp", align 4
  br label %CdAudioDeviceControl_KeWaitForSingleObject.exit.i.i

CdAudioDeviceControl_bb263:                       ; preds = %CdAudioDeviceControl_bb261
  %"556" = load i32* @"'s", align 4
  %"557" = load i32* @"'MPR3", align 4
  %"558" = icmp eq i32 %"556", %"557"
  br i1 %"558", label %CdAudioDeviceControl_bb264, label %CdAudioDeviceControl_KeWaitForSingleObject.exit.i.i

CdAudioDeviceControl_bb264:                       ; preds = %CdAudioDeviceControl_bb263
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioDeviceControl_KeWaitForSingleObject.exit.i.i: ; preds = %CdAudioDeviceControl_bb263, %CdAudioDeviceControl_bb262, %CdAudioDeviceControl_bb260
  %"559" = call i32 @__VERIFIER_nondet_int() #5
  br label %CdAudioDeviceControl_bb265

CdAudioDeviceControl_bb265:                       ; preds = %CdAudioDeviceControl_KeWaitForSingleObject.exit.i.i, %CdAudioDeviceControl_bb258
  %status.0.i.i = phi i32 [ %"536", %CdAudioDeviceControl_KeWaitForSingleObject.exit.i.i ], [ %"540", %CdAudioDeviceControl_bb258 ]
  %"560" = icmp slt i32 %status.0.i.i, 0
  br i1 %"560", label %CdAudioDeviceControl_CdAudioIsPlayActive.exit.i, label %CdAudioDeviceControl_bb266

CdAudioDeviceControl_bb266:                       ; preds = %CdAudioDeviceControl_bb265
  %"561" = icmp eq i32 %"537", 17
  %..i.i = select i1 %"561", i32 1, i32 0
  br label %CdAudioDeviceControl_CdAudioIsPlayActive.exit.i

CdAudioDeviceControl_CdAudioIsPlayActive.exit.i:  ; preds = %CdAudioDeviceControl_bb266, %CdAudioDeviceControl_bb265, %CdAudioDeviceControl_bb257
  %.0.i.i = phi i32 [ %..i.i, %CdAudioDeviceControl_bb266 ], [ 0, %CdAudioDeviceControl_bb257 ], [ 0, %CdAudioDeviceControl_bb265 ]
  %"562" = icmp ne i32 %.0.i.i, 0
  br i1 %"562", label %CdAudioDeviceControl_bb281, label %CdAudioDeviceControl_bb267

CdAudioDeviceControl_bb267:                       ; preds = %CdAudioDeviceControl_CdAudioIsPlayActive.exit.i
  %"563" = icmp ne i32 %"448", 0
  br i1 %"563", label %CdAudioDeviceControl_bb281, label %CdAudioDeviceControl_bb268

CdAudioDeviceControl_bb268:                       ; preds = %CdAudioDeviceControl_bb267
  %"564" = icmp eq i32 %"467", 0
  br i1 %"564", label %CdAudioDeviceControl_bb269, label %CdAudioDeviceControl_bb271

CdAudioDeviceControl_bb269:                       ; preds = %CdAudioDeviceControl_bb268
  store i32 -1073741670, i32* @"'myStatus", align 4
  %"565" = load i32* @"'s", align 4
  %"566" = load i32* @"'NP", align 4
  %"567" = icmp eq i32 %"565", %"566"
  br i1 %"567", label %CdAudioDeviceControl_AG_SetStatusAndReturn.exit.i, label %CdAudioDeviceControl_bb270

CdAudioDeviceControl_AG_SetStatusAndReturn.exit.i: ; preds = %CdAudioDeviceControl_bb269
  %"568" = load i32* @"'DC", align 4
  store i32 %"568", i32* @"'s", align 4
  br label %CdAudioDeviceControl_CdAudioSendToNextDriver.exit

CdAudioDeviceControl_bb270:                       ; preds = %CdAudioDeviceControl_bb269
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioDeviceControl_bb271:                       ; preds = %CdAudioDeviceControl_bb268
  %"569" = call i32 @__VERIFIER_nondet_int() #5
  %"570" = call i32 @__VERIFIER_nondet_int() #5
  %"571" = call i32 @__VERIFIER_nondet_int() #5
  store i32 -1073741670, i32* @"'myStatus", align 4
  %"572" = load i32* @"'s", align 4
  %"573" = load i32* @"'NP", align 4
  %"574" = icmp eq i32 %"572", %"573"
  br i1 %"574", label %CdAudioDeviceControl_AG_SetStatusAndReturn.exit2.i, label %CdAudioDeviceControl_bb272

CdAudioDeviceControl_AG_SetStatusAndReturn.exit2.i: ; preds = %CdAudioDeviceControl_bb271
  %"575" = load i32* @"'DC", align 4
  store i32 %"575", i32* @"'s", align 4
  br label %CdAudioDeviceControl_CdAudioSendToNextDriver.exit

CdAudioDeviceControl_bb272:                       ; preds = %CdAudioDeviceControl_bb271
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioDeviceControl_NodeBlock59.i:               ; preds = %CdAudioDeviceControl_NodeBlock61.i
  %Pivot60.i = icmp slt i32 %"447", 149512
  br i1 %Pivot60.i, label %CdAudioDeviceControl_LeafBlock55.i, label %CdAudioDeviceControl_LeafBlock57.i

CdAudioDeviceControl_LeafBlock55.i:               ; preds = %CdAudioDeviceControl_NodeBlock59.i
  %SwitchLeaf56.i = icmp eq i32 %"447", 149504
  br i1 %SwitchLeaf56.i, label %CdAudioDeviceControl_bb273, label %CdAudioDeviceControl_CdAudioIsPlayActive.exit27.i

CdAudioDeviceControl_bb273:                       ; preds = %CdAudioDeviceControl_LeafBlock55.i
  %"576" = call i32 @__VERIFIER_nondet_int() #5
  %"577" = call i32 @__VERIFIER_nondet_int() #5
  %"578" = call i32 @__VERIFIER_nondet_int() #5
  %"579" = call i32 @__VERIFIER_nondet_int() #5
  %"580" = call i32 @__VERIFIER_nondet_int() #5
  %"581" = call i32 @__VERIFIER_nondet_int() #5
  %"582" = call i32 @__VERIFIER_nondet_int() #5
  %"583" = icmp eq i32 %"576", 0
  %"584" = icmp eq i32 %"582", 0
  %or.cond.i20.i = or i1 %"583", %"584"
  %"585" = icmp eq i32 %"579", 0
  %or.cond1.i21.i = or i1 %or.cond.i20.i, %"585"
  %or.cond1.i21.not.i = xor i1 %or.cond1.i21.i, true
  %"586" = sext i32 %"581" to i64
  %"587" = icmp eq i64 %"586", 259
  %or.cond32.i = and i1 %or.cond1.i21.not.i, %"587"
  br i1 %or.cond32.i, label %CdAudioDeviceControl_bb274, label %CdAudioDeviceControl_CdAudioIsPlayActive.exit27.i

CdAudioDeviceControl_bb274:                       ; preds = %CdAudioDeviceControl_bb273
  %"588" = load i32* @"'s", align 4
  %"589" = load i32* @"'MPR3", align 4
  %"590" = icmp eq i32 %"588", %"589"
  %"591" = load i32* @"'setEventCalled", align 4
  %"592" = icmp eq i32 %"591", 1
  %or.cond.i.i22.i = and i1 %"590", %"592"
  br i1 %or.cond.i.i22.i, label %CdAudioDeviceControl_bb275, label %CdAudioDeviceControl_bb276

CdAudioDeviceControl_bb275:                       ; preds = %CdAudioDeviceControl_bb274
  %"593" = load i32* @"'NP", align 4
  store i32 %"593", i32* @"'s", align 4
  store i32 0, i32* @"'setEventCalled", align 4
  br label %CdAudioDeviceControl_KeWaitForSingleObject.exit.i23.i

CdAudioDeviceControl_bb276:                       ; preds = %CdAudioDeviceControl_bb274
  %"594" = load i32* @"'customIrp", align 4
  %"595" = icmp eq i32 %"594", 1
  br i1 %"595", label %CdAudioDeviceControl_bb277, label %CdAudioDeviceControl_bb278

CdAudioDeviceControl_bb277:                       ; preds = %CdAudioDeviceControl_bb276
  %"596" = load i32* @"'NP", align 4
  store i32 %"596", i32* @"'s", align 4
  store i32 0, i32* @"'customIrp", align 4
  br label %CdAudioDeviceControl_KeWaitForSingleObject.exit.i23.i

CdAudioDeviceControl_bb278:                       ; preds = %CdAudioDeviceControl_bb276
  %"597" = load i32* @"'s", align 4
  %"598" = load i32* @"'MPR3", align 4
  %"599" = icmp eq i32 %"597", %"598"
  br i1 %"599", label %CdAudioDeviceControl_bb279, label %CdAudioDeviceControl_KeWaitForSingleObject.exit.i23.i

CdAudioDeviceControl_bb279:                       ; preds = %CdAudioDeviceControl_bb278
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioDeviceControl_KeWaitForSingleObject.exit.i23.i: ; preds = %CdAudioDeviceControl_bb278, %CdAudioDeviceControl_bb277, %CdAudioDeviceControl_bb275
  %"600" = call i32 @__VERIFIER_nondet_int() #5
  br label %CdAudioDeviceControl_CdAudioIsPlayActive.exit27.i

CdAudioDeviceControl_LeafBlock57.i:               ; preds = %CdAudioDeviceControl_NodeBlock59.i
  %SwitchLeaf58.i = icmp eq i32 %"447", 149512
  br i1 %SwitchLeaf58.i, label %CdAudioDeviceControl_bb280, label %CdAudioDeviceControl_CdAudioIsPlayActive.exit27.i

CdAudioDeviceControl_bb280:                       ; preds = %CdAudioDeviceControl_LeafBlock57.i
  %"601" = call i32 @__VERIFIER_nondet_int() #5
  %"602" = call i32 @__VERIFIER_nondet_int() #5
  %"603" = call i32 @__VERIFIER_nondet_int() #5
  br label %CdAudioDeviceControl_bb281

CdAudioDeviceControl_bb281:                       ; preds = %CdAudioDeviceControl_bb280, %CdAudioDeviceControl_bb267, %CdAudioDeviceControl_CdAudioIsPlayActive.exit.i, %CdAudioDeviceControl_LeafBlock49.i, %CdAudioDeviceControl_bb256, %CdAudioDeviceControl_bb249, %CdAudioDeviceControl_LeafBlock39.i, %CdAudioDeviceControl_bb248, %CdAudioDeviceControl_bb247, %CdAudioDeviceControl_LeafBlock35.i, %CdAudioDeviceControl_bb246, %CdAudioDeviceControl_bb245, %CdAudioDeviceControl_CdAudioIsPlayActive.exit10.i, %CdAudioDeviceControl_bb229
  %status.1.i = phi i32 [ -1073741670, %CdAudioDeviceControl_bb256 ], [ -1073741670, %CdAudioDeviceControl_bb246 ], [ -1073741670, %CdAudioDeviceControl_bb280 ], [ -2147483631, %CdAudioDeviceControl_CdAudioIsPlayActive.exit.i ], [ -1073741789, %CdAudioDeviceControl_bb267 ], [ -1073741789, %CdAudioDeviceControl_bb229 ], [ -2147483631, %CdAudioDeviceControl_CdAudioIsPlayActive.exit10.i ], [ -1073741789, %CdAudioDeviceControl_bb249 ], [ -1073741820, %CdAudioDeviceControl_bb247 ], [ -1073741670, %CdAudioDeviceControl_bb248 ], [ -1073741820, %CdAudioDeviceControl_bb245 ], [ -1073741808, %CdAudioDeviceControl_LeafBlock35.i ], [ -1073741808, %CdAudioDeviceControl_LeafBlock39.i ], [ -1073741808, %CdAudioDeviceControl_LeafBlock49.i ]
  store i32 %status.1.i, i32* @"'myStatus", align 4
  %"604" = load i32* @"'s", align 4
  %"605" = load i32* @"'NP", align 4
  %"606" = icmp eq i32 %"604", %"605"
  br i1 %"606", label %CdAudioDeviceControl_AG_SetStatusAndReturn.exit28.i, label %CdAudioDeviceControl_bb282

CdAudioDeviceControl_AG_SetStatusAndReturn.exit28.i: ; preds = %CdAudioDeviceControl_bb281
  %"607" = load i32* @"'DC", align 4
  store i32 %"607", i32* @"'s", align 4
  br label %CdAudioDeviceControl_CdAudioSendToNextDriver.exit

CdAudioDeviceControl_bb282:                       ; preds = %CdAudioDeviceControl_bb281
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioDeviceControl_CdAudioIsPlayActive.exit27.i: ; preds = %CdAudioDeviceControl_LeafBlock.i, %CdAudioDeviceControl_LeafBlock33.i, %CdAudioDeviceControl_LeafBlock35.i, %CdAudioDeviceControl_LeafBlock37.i, %CdAudioDeviceControl_LeafBlock39.i, %CdAudioDeviceControl_LeafBlock47.i, %CdAudioDeviceControl_LeafBlock49.i, %CdAudioDeviceControl_LeafBlock53.i, %CdAudioDeviceControl_LeafBlock55.i, %CdAudioDeviceControl_LeafBlock57.i, %CdAudioDeviceControl_KeWaitForSingleObject.exit.i23.i, %CdAudioDeviceControl_bb273
  %"608" = call i32 @__VERIFIER_nondet_int() #5
  %"609" = call i32 @__VERIFIER_nondet_int() #5
  %"610" = call i32 @__VERIFIER_nondet_int() #5
  %"611" = load i32* @"'s", align 4
  %"612" = load i32* @"'NP", align 4
  %"613" = icmp eq i32 %"611", %"612"
  br i1 %"613", label %CdAudioDeviceControl_bb283, label %CdAudioDeviceControl_bb308

CdAudioDeviceControl_bb283:                       ; preds = %CdAudioDeviceControl_CdAudioIsPlayActive.exit27.i
  %"614" = load i32* @"'SKIP1", align 4
  store i32 %"614", i32* @"'s", align 4
  %"615" = call i32 @__kittel_nondef.0() #5
  %"616" = call i32 @__VERIFIER_nondet_int() #5
  %"617" = call i32 @__VERIFIER_nondet_int() #5
  %"618" = load i32* @"'compRegistered", align 4
  %"619" = icmp ne i32 %"618", 0
  br i1 %"619", label %CdAudioDeviceControl_bb284, label %CdAudioDeviceControl_bb296

CdAudioDeviceControl_bb284:                       ; preds = %CdAudioDeviceControl_bb283
  %"620" = load i32* @"'routine", align 4
  %"621" = icmp eq i32 %"620", 0
  br i1 %"621", label %CdAudioDeviceControl_bb285, label %CdAudioDeviceControl_bb291

CdAudioDeviceControl_bb285:                       ; preds = %CdAudioDeviceControl_bb284
  %"622" = call i32 @__VERIFIER_nondet_int() #5
  %"623" = call i32 @__VERIFIER_nondet_int() #5
  %"624" = icmp ne i32 %"622", 0
  br i1 %"624", label %CdAudioDeviceControl_bb286, label %CdAudioDeviceControl_bb289

CdAudioDeviceControl_bb286:                       ; preds = %CdAudioDeviceControl_bb285
  %"625" = load i32* @"'pended", align 4
  %"626" = icmp eq i32 %"625", 0
  br i1 %"626", label %CdAudioDeviceControl_bb287, label %CdAudioDeviceControl_bb288

CdAudioDeviceControl_bb287:                       ; preds = %CdAudioDeviceControl_bb286
  store i32 1, i32* @"'pended", align 4
  br label %CdAudioDeviceControl_bb289

CdAudioDeviceControl_bb288:                       ; preds = %CdAudioDeviceControl_bb286
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioDeviceControl_bb289:                       ; preds = %CdAudioDeviceControl_bb287, %CdAudioDeviceControl_bb285
  %"627" = load i32* @"'myStatus", align 4
  %"628" = icmp sge i32 %"627", 0
  br i1 %"628", label %CdAudioDeviceControl_bb290, label %CdAudioDeviceControl_HPCdrCompletion.exit.i.i.i

CdAudioDeviceControl_bb290:                       ; preds = %CdAudioDeviceControl_bb289
  %"629" = call i32 @__VERIFIER_nondet_int() #5
  br label %CdAudioDeviceControl_HPCdrCompletion.exit.i.i.i

CdAudioDeviceControl_HPCdrCompletion.exit.i.i.i:  ; preds = %CdAudioDeviceControl_bb290, %CdAudioDeviceControl_bb289
  %"630" = load i32* @"'myStatus", align 4
  br label %CdAudioDeviceControl_bb293

CdAudioDeviceControl_bb291:                       ; preds = %CdAudioDeviceControl_bb284
  %"631" = load i32* @"'routine", align 4
  %"632" = icmp eq i32 %"631", 1
  br i1 %"632", label %CdAudioDeviceControl_bb292, label %CdAudioDeviceControl_bb293

CdAudioDeviceControl_bb292:                       ; preds = %CdAudioDeviceControl_bb291
  %"633" = call i32 @__VERIFIER_nondet_int() #5
  store i32 1, i32* @"'setEventCalled", align 4
  br label %CdAudioDeviceControl_bb293

CdAudioDeviceControl_bb293:                       ; preds = %CdAudioDeviceControl_bb292, %CdAudioDeviceControl_bb291, %CdAudioDeviceControl_HPCdrCompletion.exit.i.i.i
  %compRetStatus.1.i.i.i = phi i32 [ %"630", %CdAudioDeviceControl_HPCdrCompletion.exit.i.i.i ], [ -1073741802, %CdAudioDeviceControl_bb292 ], [ %"615", %CdAudioDeviceControl_bb291 ]
  %"634" = sext i32 %compRetStatus.1.i.i.i to i64
  %"635" = icmp eq i64 %"634", -1073741802
  br i1 %"635", label %CdAudioDeviceControl_bb294, label %CdAudioDeviceControl_bb296

CdAudioDeviceControl_bb294:                       ; preds = %CdAudioDeviceControl_bb293
  %"636" = load i32* @"'s", align 4
  %"637" = load i32* @"'NP", align 4
  %"638" = icmp eq i32 %"636", %"637"
  br i1 %"638", label %CdAudioDeviceControl_stubMoreProcessingRequired.exit.i.i.i, label %CdAudioDeviceControl_bb295

CdAudioDeviceControl_stubMoreProcessingRequired.exit.i.i.i: ; preds = %CdAudioDeviceControl_bb294
  %"639" = load i32* @"'MPR1", align 4
  store i32 %"639", i32* @"'s", align 4
  br label %CdAudioDeviceControl_bb296

CdAudioDeviceControl_bb295:                       ; preds = %CdAudioDeviceControl_bb294
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioDeviceControl_bb296:                       ; preds = %CdAudioDeviceControl_stubMoreProcessingRequired.exit.i.i.i, %CdAudioDeviceControl_bb293, %CdAudioDeviceControl_bb283
  %"640" = icmp ne i32 %"616", 0
  br i1 %"640", label %CdAudioDeviceControl_bb299, label %CdAudioDeviceControl_bb297

CdAudioDeviceControl_bb297:                       ; preds = %CdAudioDeviceControl_bb296
  %"641" = call i32 @__VERIFIER_nondet_int() #5
  %"642" = icmp eq i32 %"641", 0
  br i1 %"642", label %CdAudioDeviceControl_bb299, label %CdAudioDeviceControl_bb298

CdAudioDeviceControl_bb298:                       ; preds = %CdAudioDeviceControl_bb297
  %"643" = call i32 @__VERIFIER_nondet_int() #5
  %"644" = icmp eq i32 %"643", 1
  %..i.i.i = select i1 %"644", i32 -1073741823, i32 259
  br label %CdAudioDeviceControl_bb299

CdAudioDeviceControl_bb299:                       ; preds = %CdAudioDeviceControl_bb298, %CdAudioDeviceControl_bb297, %CdAudioDeviceControl_bb296
  %returnVal2.1.i.i.i = phi i32 [ 259, %CdAudioDeviceControl_bb296 ], [ 0, %CdAudioDeviceControl_bb297 ], [ %..i.i.i, %CdAudioDeviceControl_bb298 ]
  %"645" = load i32* @"'s", align 4
  %"646" = load i32* @"'NP", align 4
  %"647" = icmp eq i32 %"645", %"646"
  br i1 %"647", label %CdAudioDeviceControl_bb300, label %CdAudioDeviceControl_bb301

CdAudioDeviceControl_bb300:                       ; preds = %CdAudioDeviceControl_bb299
  %"648" = load i32* @"'IPC", align 4
  store i32 %"648", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i.i, i32* @"'lowerDriverReturn", align 4
  br label %CdAudioDeviceControl_CdAudioSendToNextDriver.exit

CdAudioDeviceControl_bb301:                       ; preds = %CdAudioDeviceControl_bb299
  %"649" = load i32* @"'s", align 4
  %"650" = load i32* @"'MPR1", align 4
  %"651" = icmp eq i32 %"649", %"650"
  br i1 %"651", label %CdAudioDeviceControl_bb302, label %CdAudioDeviceControl_bb305

CdAudioDeviceControl_bb302:                       ; preds = %CdAudioDeviceControl_bb301
  %"652" = icmp eq i32 %returnVal2.1.i.i.i, 259
  br i1 %"652", label %CdAudioDeviceControl_bb303, label %CdAudioDeviceControl_bb304

CdAudioDeviceControl_bb303:                       ; preds = %CdAudioDeviceControl_bb302
  %"653" = load i32* @"'MPR3", align 4
  store i32 %"653", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i.i, i32* @"'lowerDriverReturn", align 4
  br label %CdAudioDeviceControl_CdAudioSendToNextDriver.exit

CdAudioDeviceControl_bb304:                       ; preds = %CdAudioDeviceControl_bb302
  %"654" = load i32* @"'NP", align 4
  store i32 %"654", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i.i, i32* @"'lowerDriverReturn", align 4
  br label %CdAudioDeviceControl_CdAudioSendToNextDriver.exit

CdAudioDeviceControl_bb305:                       ; preds = %CdAudioDeviceControl_bb301
  %"655" = load i32* @"'s", align 4
  %"656" = load i32* @"'SKIP1", align 4
  %"657" = icmp eq i32 %"655", %"656"
  br i1 %"657", label %CdAudioDeviceControl_bb306, label %CdAudioDeviceControl_bb307

CdAudioDeviceControl_bb306:                       ; preds = %CdAudioDeviceControl_bb305
  %"658" = load i32* @"'SKIP2", align 4
  store i32 %"658", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i.i, i32* @"'lowerDriverReturn", align 4
  br label %CdAudioDeviceControl_CdAudioSendToNextDriver.exit

CdAudioDeviceControl_bb307:                       ; preds = %CdAudioDeviceControl_bb305
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioDeviceControl_bb308:                       ; preds = %CdAudioDeviceControl_CdAudioIsPlayActive.exit27.i
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioDeviceControl_NodeBlock43:                 ; preds = %CdAudioDeviceControl_NodeBlock45
  %Pivot44 = icmp slt i32 %"382", 7
  br i1 %Pivot44, label %CdAudioDeviceControl_LeafBlock39, label %CdAudioDeviceControl_LeafBlock41

CdAudioDeviceControl_LeafBlock39:                 ; preds = %CdAudioDeviceControl_NodeBlock43
  %SwitchLeaf40 = icmp eq i32 %"382", 3
  br i1 %SwitchLeaf40, label %CdAudioDeviceControl_bb309, label %CdAudioDeviceControl_NewDefault

CdAudioDeviceControl_bb309:                       ; preds = %CdAudioDeviceControl_LeafBlock39
  %"659" = call i32 @__VERIFIER_nondet_int() #5
  %"660" = call i32 @__VERIFIER_nondet_int() #5
  %"661" = call i32 @__VERIFIER_nondet_int() #5
  %"662" = call i32 @__VERIFIER_nondet_int() #5
  %"663" = call i32 @__VERIFIER_nondet_int() #5
  %"664" = call i32 @__VERIFIER_nondet_int() #5
  %"665" = call i32 @__VERIFIER_nondet_int() #5
  %"666" = call i32 @__VERIFIER_nondet_int() #5
  %"667" = call i32 @__VERIFIER_nondet_int() #5
  %"668" = call i32 @__VERIFIER_nondet_int() #5
  %"669" = call i32 @__VERIFIER_nondet_int() #5
  %"670" = call i32 @__VERIFIER_nondet_int() #5
  %"671" = call i32 @__VERIFIER_nondet_int() #5
  %"672" = call i32 @__VERIFIER_nondet_int() #5
  %"673" = call i32 @__VERIFIER_nondet_int() #5
  %"674" = call i32 @__VERIFIER_nondet_int() #5
  %"675" = call i32 @__VERIFIER_nondet_int() #5
  %"676" = call i32 @__VERIFIER_nondet_int() #5
  %"677" = call i32 @__VERIFIER_nondet_int() #5
  %Pivot77.i = icmp slt i32 %"659", 147480
  br i1 %Pivot77.i, label %CdAudioDeviceControl_NodeBlock52.i, label %CdAudioDeviceControl_NodeBlock74.i

CdAudioDeviceControl_NodeBlock52.i:               ; preds = %CdAudioDeviceControl_bb309
  %Pivot53.i = icmp slt i32 %"659", 147468
  br i1 %Pivot53.i, label %CdAudioDeviceControl_NodeBlock40.i, label %CdAudioDeviceControl_NodeBlock50.i

CdAudioDeviceControl_NodeBlock40.i:               ; preds = %CdAudioDeviceControl_NodeBlock52.i
  %Pivot41.i = icmp slt i32 %"659", 147460
  br i1 %Pivot41.i, label %CdAudioDeviceControl_LeafBlock.i2, label %CdAudioDeviceControl_NodeBlock.i12

CdAudioDeviceControl_LeafBlock.i2:                ; preds = %CdAudioDeviceControl_NodeBlock40.i
  %SwitchLeaf.i1 = icmp eq i32 %"659", 147456
  br i1 %SwitchLeaf.i1, label %CdAudioDeviceControl_bb310, label %CdAudioDeviceControl_NewDefault.i18

CdAudioDeviceControl_bb310:                       ; preds = %CdAudioDeviceControl_LeafBlock.i2
  %"678" = icmp slt i32 %"660", %"662"
  br i1 %"678", label %CdAudioDeviceControl_bb393, label %CdAudioDeviceControl_bb311

CdAudioDeviceControl_bb311:                       ; preds = %CdAudioDeviceControl_bb310
  %"679" = call i32 @__VERIFIER_nondet_int() #5
  %"680" = call i32 @__VERIFIER_nondet_int() #5
  %"681" = call i32 @__VERIFIER_nondet_int() #5
  %"682" = call i32 @__VERIFIER_nondet_int() #5
  %"683" = call i32 @__VERIFIER_nondet_int() #5
  %"684" = call i32 @__VERIFIER_nondet_int() #5
  %"685" = call i32 @__VERIFIER_nondet_int() #5
  %"686" = icmp eq i32 %"679", 0
  %"687" = icmp eq i32 %"685", 0
  %or.cond.i.i3 = or i1 %"686", %"687"
  %"688" = icmp eq i32 %"682", 0
  %or.cond1.i.i4 = or i1 %or.cond.i.i3, %"688"
  br i1 %or.cond1.i.i4, label %CdAudioDeviceControl_CdAudioIsPlayActive.exit.i10, label %CdAudioDeviceControl_bb312

CdAudioDeviceControl_bb312:                       ; preds = %CdAudioDeviceControl_bb311
  %"689" = sext i32 %"684" to i64
  %"690" = icmp eq i64 %"689", 259
  br i1 %"690", label %CdAudioDeviceControl_bb313, label %CdAudioDeviceControl_bb319

CdAudioDeviceControl_bb313:                       ; preds = %CdAudioDeviceControl_bb312
  %"691" = load i32* @"'s", align 4
  %"692" = load i32* @"'MPR3", align 4
  %"693" = icmp eq i32 %"691", %"692"
  %"694" = load i32* @"'setEventCalled", align 4
  %"695" = icmp eq i32 %"694", 1
  %or.cond.i.i.i5 = and i1 %"693", %"695"
  br i1 %or.cond.i.i.i5, label %CdAudioDeviceControl_bb314, label %CdAudioDeviceControl_bb315

CdAudioDeviceControl_bb314:                       ; preds = %CdAudioDeviceControl_bb313
  %"696" = load i32* @"'NP", align 4
  store i32 %"696", i32* @"'s", align 4
  store i32 0, i32* @"'setEventCalled", align 4
  br label %CdAudioDeviceControl_KeWaitForSingleObject.exit.i.i6

CdAudioDeviceControl_bb315:                       ; preds = %CdAudioDeviceControl_bb313
  %"697" = load i32* @"'customIrp", align 4
  %"698" = icmp eq i32 %"697", 1
  br i1 %"698", label %CdAudioDeviceControl_bb316, label %CdAudioDeviceControl_bb317

CdAudioDeviceControl_bb316:                       ; preds = %CdAudioDeviceControl_bb315
  %"699" = load i32* @"'NP", align 4
  store i32 %"699", i32* @"'s", align 4
  store i32 0, i32* @"'customIrp", align 4
  br label %CdAudioDeviceControl_KeWaitForSingleObject.exit.i.i6

CdAudioDeviceControl_bb317:                       ; preds = %CdAudioDeviceControl_bb315
  %"700" = load i32* @"'s", align 4
  %"701" = load i32* @"'MPR3", align 4
  %"702" = icmp eq i32 %"700", %"701"
  br i1 %"702", label %CdAudioDeviceControl_bb318, label %CdAudioDeviceControl_KeWaitForSingleObject.exit.i.i6

CdAudioDeviceControl_bb318:                       ; preds = %CdAudioDeviceControl_bb317
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioDeviceControl_KeWaitForSingleObject.exit.i.i6: ; preds = %CdAudioDeviceControl_bb317, %CdAudioDeviceControl_bb316, %CdAudioDeviceControl_bb314
  %"703" = call i32 @__VERIFIER_nondet_int() #5
  br label %CdAudioDeviceControl_bb319

CdAudioDeviceControl_bb319:                       ; preds = %CdAudioDeviceControl_KeWaitForSingleObject.exit.i.i6, %CdAudioDeviceControl_bb312
  %status.0.i.i7 = phi i32 [ %"680", %CdAudioDeviceControl_KeWaitForSingleObject.exit.i.i6 ], [ %"684", %CdAudioDeviceControl_bb312 ]
  %"704" = icmp slt i32 %status.0.i.i7, 0
  br i1 %"704", label %CdAudioDeviceControl_CdAudioIsPlayActive.exit.i10, label %CdAudioDeviceControl_bb320

CdAudioDeviceControl_bb320:                       ; preds = %CdAudioDeviceControl_bb319
  %"705" = icmp eq i32 %"681", 17
  %..i.i8 = select i1 %"705", i32 1, i32 0
  br label %CdAudioDeviceControl_CdAudioIsPlayActive.exit.i10

CdAudioDeviceControl_CdAudioIsPlayActive.exit.i10: ; preds = %CdAudioDeviceControl_bb320, %CdAudioDeviceControl_bb319, %CdAudioDeviceControl_bb311
  %.0.i.i9 = phi i32 [ %..i.i8, %CdAudioDeviceControl_bb320 ], [ 0, %CdAudioDeviceControl_bb311 ], [ 0, %CdAudioDeviceControl_bb319 ]
  %"706" = icmp ne i32 %.0.i.i9, 0
  br i1 %"706", label %CdAudioDeviceControl_bb393, label %CdAudioDeviceControl_bb321

CdAudioDeviceControl_bb321:                       ; preds = %CdAudioDeviceControl_CdAudioIsPlayActive.exit.i10
  %"707" = icmp eq i32 %"674", 0
  br i1 %"707", label %CdAudioDeviceControl_bb322, label %CdAudioDeviceControl_bb324

CdAudioDeviceControl_bb322:                       ; preds = %CdAudioDeviceControl_bb321
  store i32 -1073741670, i32* @"'myStatus", align 4
  %"708" = load i32* @"'s", align 4
  %"709" = load i32* @"'NP", align 4
  %"710" = icmp eq i32 %"708", %"709"
  br i1 %"710", label %CdAudioDeviceControl_IofCompleteRequest.exit.i, label %CdAudioDeviceControl_bb323

CdAudioDeviceControl_IofCompleteRequest.exit.i:   ; preds = %CdAudioDeviceControl_bb322
  %"711" = load i32* @"'DC", align 4
  store i32 %"711", i32* @"'s", align 4
  br label %CdAudioDeviceControl_CdAudioSendToNextDriver.exit

CdAudioDeviceControl_bb323:                       ; preds = %CdAudioDeviceControl_bb322
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioDeviceControl_bb324:                       ; preds = %CdAudioDeviceControl_bb321
  %"712" = call i32 @__VERIFIER_nondet_int() #5
  %"713" = call i32 @__VERIFIER_nondet_int() #5
  %"714" = call i32 @__VERIFIER_nondet_int() #5
  store i32 -1073741670, i32* @"'myStatus", align 4
  %"715" = load i32* @"'s", align 4
  %"716" = load i32* @"'NP", align 4
  %"717" = icmp eq i32 %"715", %"716"
  br i1 %"717", label %CdAudioDeviceControl_IofCompleteRequest.exit2.i, label %CdAudioDeviceControl_bb325

CdAudioDeviceControl_IofCompleteRequest.exit2.i:  ; preds = %CdAudioDeviceControl_bb324
  %"718" = load i32* @"'DC", align 4
  store i32 %"718", i32* @"'s", align 4
  br label %CdAudioDeviceControl_CdAudioSendToNextDriver.exit

CdAudioDeviceControl_bb325:                       ; preds = %CdAudioDeviceControl_bb324
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioDeviceControl_NodeBlock.i12:               ; preds = %CdAudioDeviceControl_NodeBlock40.i
  %Pivot.i11 = icmp slt i32 %"659", 147464
  br i1 %Pivot.i11, label %CdAudioDeviceControl_LeafBlock36.i, label %CdAudioDeviceControl_LeafBlock38.i

CdAudioDeviceControl_LeafBlock36.i:               ; preds = %CdAudioDeviceControl_NodeBlock.i12
  %SwitchLeaf37.i = icmp eq i32 %"659", 147460
  br i1 %SwitchLeaf37.i, label %CdAudioDeviceControl_bb326, label %CdAudioDeviceControl_NewDefault.i18

CdAudioDeviceControl_bb326:                       ; preds = %CdAudioDeviceControl_LeafBlock36.i
  %"719" = icmp slt i32 %"661", %"667"
  br i1 %"719", label %CdAudioDeviceControl_bb393, label %CdAudioDeviceControl_bb327

CdAudioDeviceControl_bb327:                       ; preds = %CdAudioDeviceControl_bb326
  %"720" = call i32 @__VERIFIER_nondet_int() #5
  %"721" = call i32 @__VERIFIER_nondet_int() #5
  %"722" = call i32 @__VERIFIER_nondet_int() #5
  br label %CdAudioDeviceControl_bb393

CdAudioDeviceControl_LeafBlock38.i:               ; preds = %CdAudioDeviceControl_NodeBlock.i12
  %SwitchLeaf39.i = icmp eq i32 %"659", 147464
  br i1 %SwitchLeaf39.i, label %CdAudioDeviceControl_bb340, label %CdAudioDeviceControl_NewDefault.i18

CdAudioDeviceControl_NodeBlock50.i:               ; preds = %CdAudioDeviceControl_NodeBlock52.i
  %Pivot51.i = icmp slt i32 %"659", 147472
  br i1 %Pivot51.i, label %CdAudioDeviceControl_LeafBlock42.i, label %CdAudioDeviceControl_NodeBlock48.i

CdAudioDeviceControl_LeafBlock42.i:               ; preds = %CdAudioDeviceControl_NodeBlock50.i
  %SwitchLeaf43.i = icmp eq i32 %"659", 147468
  br i1 %SwitchLeaf43.i, label %CdAudioDeviceControl_bb328, label %CdAudioDeviceControl_NewDefault.i18

CdAudioDeviceControl_bb328:                       ; preds = %CdAudioDeviceControl_LeafBlock42.i
  %"723" = icmp eq i32 %"675", 0
  br i1 %"723", label %CdAudioDeviceControl_bb329, label %CdAudioDeviceControl_bb331

CdAudioDeviceControl_bb329:                       ; preds = %CdAudioDeviceControl_bb328
  store i32 -1073741670, i32* @"'myStatus", align 4
  %"724" = load i32* @"'s", align 4
  %"725" = load i32* @"'NP", align 4
  %"726" = icmp eq i32 %"724", %"725"
  br i1 %"726", label %CdAudioDeviceControl_IofCompleteRequest.exit7.i, label %CdAudioDeviceControl_bb330

CdAudioDeviceControl_IofCompleteRequest.exit7.i:  ; preds = %CdAudioDeviceControl_bb329
  %"727" = load i32* @"'DC", align 4
  store i32 %"727", i32* @"'s", align 4
  br label %CdAudioDeviceControl_CdAudioSendToNextDriver.exit

CdAudioDeviceControl_bb330:                       ; preds = %CdAudioDeviceControl_bb329
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioDeviceControl_bb331:                       ; preds = %CdAudioDeviceControl_bb328
  %"728" = icmp eq i32 %"668", 1
  br i1 %"728", label %CdAudioDeviceControl_bb332, label %CdAudioDeviceControl_bb334

CdAudioDeviceControl_bb332:                       ; preds = %CdAudioDeviceControl_bb331
  store i32 0, i32* @"'myStatus", align 4
  %"729" = load i32* @"'s", align 4
  %"730" = load i32* @"'NP", align 4
  %"731" = icmp eq i32 %"729", %"730"
  br i1 %"731", label %CdAudioDeviceControl_IofCompleteRequest.exit8.i, label %CdAudioDeviceControl_bb333

CdAudioDeviceControl_IofCompleteRequest.exit8.i:  ; preds = %CdAudioDeviceControl_bb332
  %"732" = load i32* @"'DC", align 4
  store i32 %"732", i32* @"'s", align 4
  br label %CdAudioDeviceControl_CdAudioSendToNextDriver.exit

CdAudioDeviceControl_bb333:                       ; preds = %CdAudioDeviceControl_bb332
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioDeviceControl_bb334:                       ; preds = %CdAudioDeviceControl_bb331
  %"733" = call i32 @__VERIFIER_nondet_int() #5
  %"734" = call i32 @__VERIFIER_nondet_int() #5
  %"735" = call i32 @__VERIFIER_nondet_int() #5
  store i32 -1073741670, i32* @"'myStatus", align 4
  %"736" = load i32* @"'s", align 4
  %"737" = load i32* @"'NP", align 4
  %"738" = icmp eq i32 %"736", %"737"
  br i1 %"738", label %CdAudioDeviceControl_IofCompleteRequest.exit10.i, label %CdAudioDeviceControl_bb335

CdAudioDeviceControl_IofCompleteRequest.exit10.i: ; preds = %CdAudioDeviceControl_bb334
  %"739" = load i32* @"'DC", align 4
  store i32 %"739", i32* @"'s", align 4
  br label %CdAudioDeviceControl_CdAudioSendToNextDriver.exit

CdAudioDeviceControl_bb335:                       ; preds = %CdAudioDeviceControl_bb334
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioDeviceControl_NodeBlock48.i:               ; preds = %CdAudioDeviceControl_NodeBlock50.i
  %Pivot49.i = icmp slt i32 %"659", 147476
  br i1 %Pivot49.i, label %CdAudioDeviceControl_LeafBlock44.i, label %CdAudioDeviceControl_LeafBlock46.i

CdAudioDeviceControl_LeafBlock44.i:               ; preds = %CdAudioDeviceControl_NodeBlock48.i
  %SwitchLeaf45.i = icmp eq i32 %"659", 147472
  br i1 %SwitchLeaf45.i, label %CdAudioDeviceControl_bb336, label %CdAudioDeviceControl_NewDefault.i18

CdAudioDeviceControl_bb336:                       ; preds = %CdAudioDeviceControl_LeafBlock44.i
  %"740" = icmp eq i32 %"668", 0
  br i1 %"740", label %CdAudioDeviceControl_bb337, label %CdAudioDeviceControl_bb339

CdAudioDeviceControl_bb337:                       ; preds = %CdAudioDeviceControl_bb336
  store i32 -1073741823, i32* @"'myStatus", align 4
  %"741" = load i32* @"'s", align 4
  %"742" = load i32* @"'NP", align 4
  %"743" = icmp eq i32 %"741", %"742"
  br i1 %"743", label %CdAudioDeviceControl_IofCompleteRequest.exit13.i, label %CdAudioDeviceControl_bb338

CdAudioDeviceControl_IofCompleteRequest.exit13.i: ; preds = %CdAudioDeviceControl_bb337
  %"744" = load i32* @"'DC", align 4
  store i32 %"744", i32* @"'s", align 4
  br label %CdAudioDeviceControl_CdAudioSendToNextDriver.exit

CdAudioDeviceControl_bb338:                       ; preds = %CdAudioDeviceControl_bb337
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioDeviceControl_bb339:                       ; preds = %CdAudioDeviceControl_bb336
  %"745" = call i32 @__VERIFIER_nondet_int() #5
  %"746" = call i32 @__VERIFIER_nondet_int() #5
  %"747" = call i32 @__VERIFIER_nondet_int() #5
  br label %CdAudioDeviceControl_bb393

CdAudioDeviceControl_LeafBlock46.i:               ; preds = %CdAudioDeviceControl_NodeBlock48.i
  %SwitchLeaf47.i = icmp eq i32 %"659", 147476
  br i1 %SwitchLeaf47.i, label %CdAudioDeviceControl_bb393, label %CdAudioDeviceControl_NewDefault.i18

CdAudioDeviceControl_NodeBlock74.i:               ; preds = %CdAudioDeviceControl_bb309
  %Pivot75.i = icmp slt i32 %"659", 147508
  br i1 %Pivot75.i, label %CdAudioDeviceControl_NodeBlock62.i, label %CdAudioDeviceControl_NodeBlock72.i

CdAudioDeviceControl_NodeBlock62.i:               ; preds = %CdAudioDeviceControl_NodeBlock74.i
  %Pivot63.i = icmp slt i32 %"659", 147496
  br i1 %Pivot63.i, label %CdAudioDeviceControl_LeafBlock54.i, label %CdAudioDeviceControl_NodeBlock60.i

CdAudioDeviceControl_LeafBlock54.i:               ; preds = %CdAudioDeviceControl_NodeBlock62.i
  %SwitchLeaf55.i = icmp eq i32 %"659", 147480
  br i1 %SwitchLeaf55.i, label %CdAudioDeviceControl_bb340, label %CdAudioDeviceControl_NewDefault.i18

CdAudioDeviceControl_bb340:                       ; preds = %CdAudioDeviceControl_LeafBlock54.i, %CdAudioDeviceControl_LeafBlock38.i
  %"748" = call i32 @__VERIFIER_nondet_int() #5
  %"749" = call i32 @__VERIFIER_nondet_int() #5
  %"750" = call i32 @__VERIFIER_nondet_int() #5
  %"751" = icmp eq i32 %"659", 147464
  br i1 %"751", label %CdAudioDeviceControl_bb341, label %CdAudioDeviceControl_bb343

CdAudioDeviceControl_bb341:                       ; preds = %CdAudioDeviceControl_bb340
  store i32 -1073741670, i32* @"'myStatus", align 4
  %"752" = load i32* @"'s", align 4
  %"753" = load i32* @"'NP", align 4
  %"754" = icmp eq i32 %"752", %"753"
  br i1 %"754", label %CdAudioDeviceControl_IofCompleteRequest.exit4.i, label %CdAudioDeviceControl_bb342

CdAudioDeviceControl_IofCompleteRequest.exit4.i:  ; preds = %CdAudioDeviceControl_bb341
  %"755" = load i32* @"'DC", align 4
  store i32 %"755", i32* @"'s", align 4
  br label %CdAudioDeviceControl_CdAudioSendToNextDriver.exit

CdAudioDeviceControl_bb342:                       ; preds = %CdAudioDeviceControl_bb341
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioDeviceControl_bb343:                       ; preds = %CdAudioDeviceControl_bb340
  %"756" = icmp slt i32 %"661", %"666"
  br i1 %"756", label %CdAudioDeviceControl_bb393, label %CdAudioDeviceControl_bb344

CdAudioDeviceControl_bb344:                       ; preds = %CdAudioDeviceControl_bb343
  %"757" = call i32 @__VERIFIER_nondet_int() #5
  %"758" = call i32 @__VERIFIER_nondet_int() #5
  %"759" = call i32 @__VERIFIER_nondet_int() #5
  br label %CdAudioDeviceControl_bb393

CdAudioDeviceControl_NodeBlock60.i:               ; preds = %CdAudioDeviceControl_NodeBlock62.i
  %Pivot61.i = icmp slt i32 %"659", 147500
  br i1 %Pivot61.i, label %CdAudioDeviceControl_LeafBlock56.i, label %CdAudioDeviceControl_LeafBlock58.i

CdAudioDeviceControl_LeafBlock56.i:               ; preds = %CdAudioDeviceControl_NodeBlock60.i
  %SwitchLeaf57.i = icmp eq i32 %"659", 147496
  br i1 %SwitchLeaf57.i, label %CdAudioDeviceControl_bb393, label %CdAudioDeviceControl_NewDefault.i18

CdAudioDeviceControl_LeafBlock58.i:               ; preds = %CdAudioDeviceControl_NodeBlock60.i
  %SwitchLeaf59.i = icmp eq i32 %"659", 147500
  br i1 %SwitchLeaf59.i, label %CdAudioDeviceControl_bb345, label %CdAudioDeviceControl_NewDefault.i18

CdAudioDeviceControl_bb345:                       ; preds = %CdAudioDeviceControl_LeafBlock58.i
  %"760" = icmp slt i32 %"660", %"670"
  br i1 %"760", label %CdAudioDeviceControl_bb393, label %CdAudioDeviceControl_bb346

CdAudioDeviceControl_bb346:                       ; preds = %CdAudioDeviceControl_bb345
  %"761" = icmp eq i32 %"677", 0
  br i1 %"761", label %CdAudioDeviceControl_bb347, label %CdAudioDeviceControl_bb349

CdAudioDeviceControl_bb347:                       ; preds = %CdAudioDeviceControl_bb346
  store i32 -1073741670, i32* @"'myStatus", align 4
  %"762" = load i32* @"'s", align 4
  %"763" = load i32* @"'NP", align 4
  %"764" = icmp eq i32 %"762", %"763"
  br i1 %"764", label %CdAudioDeviceControl_IofCompleteRequest.exit15.i, label %CdAudioDeviceControl_bb348

CdAudioDeviceControl_IofCompleteRequest.exit15.i: ; preds = %CdAudioDeviceControl_bb347
  %"765" = load i32* @"'DC", align 4
  store i32 %"765", i32* @"'s", align 4
  br label %CdAudioDeviceControl_CdAudioSendToNextDriver.exit

CdAudioDeviceControl_bb348:                       ; preds = %CdAudioDeviceControl_bb347
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioDeviceControl_bb349:                       ; preds = %CdAudioDeviceControl_bb346
  %"766" = icmp ne i32 %"676", 1
  br i1 %"766", label %CdAudioDeviceControl_bb350, label %CdAudioDeviceControl_bb352

CdAudioDeviceControl_bb350:                       ; preds = %CdAudioDeviceControl_bb349
  store i32 -1073741823, i32* @"'myStatus", align 4
  %"767" = load i32* @"'s", align 4
  %"768" = load i32* @"'NP", align 4
  %"769" = icmp eq i32 %"767", %"768"
  br i1 %"769", label %CdAudioDeviceControl_IofCompleteRequest.exit16.i, label %CdAudioDeviceControl_bb351

CdAudioDeviceControl_IofCompleteRequest.exit16.i: ; preds = %CdAudioDeviceControl_bb350
  %"770" = load i32* @"'DC", align 4
  store i32 %"770", i32* @"'s", align 4
  br label %CdAudioDeviceControl_CdAudioSendToNextDriver.exit

CdAudioDeviceControl_bb351:                       ; preds = %CdAudioDeviceControl_bb350
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioDeviceControl_bb352:                       ; preds = %CdAudioDeviceControl_bb349
  %"771" = call i32 @__VERIFIER_nondet_int() #5
  %"772" = call i32 @__VERIFIER_nondet_int() #5
  %"773" = call i32 @__VERIFIER_nondet_int() #5
  br label %CdAudioDeviceControl_bb393

CdAudioDeviceControl_NodeBlock72.i:               ; preds = %CdAudioDeviceControl_NodeBlock74.i
  %Pivot73.i = icmp slt i32 %"659", 149504
  br i1 %Pivot73.i, label %CdAudioDeviceControl_LeafBlock64.i, label %CdAudioDeviceControl_NodeBlock70.i

CdAudioDeviceControl_LeafBlock64.i:               ; preds = %CdAudioDeviceControl_NodeBlock72.i
  %SwitchLeaf65.i = icmp eq i32 %"659", 147508
  br i1 %SwitchLeaf65.i, label %CdAudioDeviceControl_bb393, label %CdAudioDeviceControl_NewDefault.i18

CdAudioDeviceControl_NodeBlock70.i:               ; preds = %CdAudioDeviceControl_NodeBlock72.i
  %Pivot71.i = icmp slt i32 %"659", 149512
  br i1 %Pivot71.i, label %CdAudioDeviceControl_LeafBlock66.i, label %CdAudioDeviceControl_LeafBlock68.i

CdAudioDeviceControl_LeafBlock66.i:               ; preds = %CdAudioDeviceControl_NodeBlock70.i
  %SwitchLeaf67.i = icmp eq i32 %"659", 149504
  br i1 %SwitchLeaf67.i, label %CdAudioDeviceControl_bb353, label %CdAudioDeviceControl_NewDefault.i18

CdAudioDeviceControl_bb353:                       ; preds = %CdAudioDeviceControl_LeafBlock66.i
  %"774" = call i32 @__VERIFIER_nondet_int() #5
  %"775" = call i32 @__VERIFIER_nondet_int() #5
  %"776" = call i32 @__VERIFIER_nondet_int() #5
  %"777" = call i32 @__VERIFIER_nondet_int() #5
  %"778" = call i32 @__VERIFIER_nondet_int() #5
  %"779" = call i32 @__VERIFIER_nondet_int() #5
  %"780" = call i32 @__VERIFIER_nondet_int() #5
  %"781" = icmp eq i32 %"774", 0
  %"782" = icmp eq i32 %"780", 0
  %or.cond.i19.i = or i1 %"781", %"782"
  %"783" = icmp eq i32 %"777", 0
  %or.cond1.i20.i = or i1 %or.cond.i19.i, %"783"
  br i1 %or.cond1.i20.i, label %CdAudioDeviceControl_CdAudioIsPlayActive.exit26.i, label %CdAudioDeviceControl_bb354

CdAudioDeviceControl_bb354:                       ; preds = %CdAudioDeviceControl_bb353
  %"784" = sext i32 %"779" to i64
  %"785" = icmp eq i64 %"784", 259
  br i1 %"785", label %CdAudioDeviceControl_bb355, label %CdAudioDeviceControl_bb361

CdAudioDeviceControl_bb355:                       ; preds = %CdAudioDeviceControl_bb354
  %"786" = load i32* @"'s", align 4
  %"787" = load i32* @"'MPR3", align 4
  %"788" = icmp eq i32 %"786", %"787"
  %"789" = load i32* @"'setEventCalled", align 4
  %"790" = icmp eq i32 %"789", 1
  %or.cond.i.i21.i = and i1 %"788", %"790"
  br i1 %or.cond.i.i21.i, label %CdAudioDeviceControl_bb356, label %CdAudioDeviceControl_bb357

CdAudioDeviceControl_bb356:                       ; preds = %CdAudioDeviceControl_bb355
  %"791" = load i32* @"'NP", align 4
  store i32 %"791", i32* @"'s", align 4
  store i32 0, i32* @"'setEventCalled", align 4
  br label %CdAudioDeviceControl_KeWaitForSingleObject.exit.i22.i

CdAudioDeviceControl_bb357:                       ; preds = %CdAudioDeviceControl_bb355
  %"792" = load i32* @"'customIrp", align 4
  %"793" = icmp eq i32 %"792", 1
  br i1 %"793", label %CdAudioDeviceControl_bb358, label %CdAudioDeviceControl_bb359

CdAudioDeviceControl_bb358:                       ; preds = %CdAudioDeviceControl_bb357
  %"794" = load i32* @"'NP", align 4
  store i32 %"794", i32* @"'s", align 4
  store i32 0, i32* @"'customIrp", align 4
  br label %CdAudioDeviceControl_KeWaitForSingleObject.exit.i22.i

CdAudioDeviceControl_bb359:                       ; preds = %CdAudioDeviceControl_bb357
  %"795" = load i32* @"'s", align 4
  %"796" = load i32* @"'MPR3", align 4
  %"797" = icmp eq i32 %"795", %"796"
  br i1 %"797", label %CdAudioDeviceControl_bb360, label %CdAudioDeviceControl_KeWaitForSingleObject.exit.i22.i

CdAudioDeviceControl_bb360:                       ; preds = %CdAudioDeviceControl_bb359
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioDeviceControl_KeWaitForSingleObject.exit.i22.i: ; preds = %CdAudioDeviceControl_bb359, %CdAudioDeviceControl_bb358, %CdAudioDeviceControl_bb356
  %"798" = call i32 @__VERIFIER_nondet_int() #5
  br label %CdAudioDeviceControl_bb361

CdAudioDeviceControl_bb361:                       ; preds = %CdAudioDeviceControl_KeWaitForSingleObject.exit.i22.i, %CdAudioDeviceControl_bb354
  %status.0.i23.i = phi i32 [ %"775", %CdAudioDeviceControl_KeWaitForSingleObject.exit.i22.i ], [ %"779", %CdAudioDeviceControl_bb354 ]
  %"799" = icmp slt i32 %status.0.i23.i, 0
  br i1 %"799", label %CdAudioDeviceControl_CdAudioIsPlayActive.exit26.i, label %CdAudioDeviceControl_bb362

CdAudioDeviceControl_bb362:                       ; preds = %CdAudioDeviceControl_bb361
  %"800" = icmp eq i32 %"776", 17
  %..i24.i = select i1 %"800", i32 1, i32 0
  br label %CdAudioDeviceControl_CdAudioIsPlayActive.exit26.i

CdAudioDeviceControl_CdAudioIsPlayActive.exit26.i: ; preds = %CdAudioDeviceControl_bb362, %CdAudioDeviceControl_bb361, %CdAudioDeviceControl_bb353
  %.0.i25.i = phi i32 [ %..i24.i, %CdAudioDeviceControl_bb362 ], [ 0, %CdAudioDeviceControl_bb353 ], [ 0, %CdAudioDeviceControl_bb361 ]
  %"801" = icmp eq i32 %.0.i25.i, 1
  br i1 %"801", label %CdAudioDeviceControl_bb363, label %CdAudioDeviceControl_bb365

CdAudioDeviceControl_bb363:                       ; preds = %CdAudioDeviceControl_CdAudioIsPlayActive.exit26.i
  store i32 0, i32* @"'myStatus", align 4
  %"802" = load i32* @"'s", align 4
  %"803" = load i32* @"'NP", align 4
  %"804" = icmp eq i32 %"802", %"803"
  br i1 %"804", label %CdAudioDeviceControl_IofCompleteRequest.exit27.i, label %CdAudioDeviceControl_bb364

CdAudioDeviceControl_IofCompleteRequest.exit27.i: ; preds = %CdAudioDeviceControl_bb363
  %"805" = load i32* @"'DC", align 4
  store i32 %"805", i32* @"'s", align 4
  br label %CdAudioDeviceControl_CdAudioSendToNextDriver.exit

CdAudioDeviceControl_bb364:                       ; preds = %CdAudioDeviceControl_bb363
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioDeviceControl_bb365:                       ; preds = %CdAudioDeviceControl_CdAudioIsPlayActive.exit26.i
  %"806" = call i32 @__VERIFIER_nondet_int() #5
  %"807" = call i32 @__VERIFIER_nondet_int() #5
  %"808" = call i32 @__VERIFIER_nondet_int() #5
  %"809" = load i32* @"'s", align 4
  %"810" = load i32* @"'NP", align 4
  %"811" = icmp eq i32 %"809", %"810"
  br i1 %"811", label %CdAudioDeviceControl_bb366, label %CdAudioDeviceControl_bb391

CdAudioDeviceControl_bb366:                       ; preds = %CdAudioDeviceControl_bb365
  %"812" = load i32* @"'SKIP1", align 4
  store i32 %"812", i32* @"'s", align 4
  %"813" = call i32 @__kittel_nondef.0() #5
  %"814" = call i32 @__VERIFIER_nondet_int() #5
  %"815" = call i32 @__VERIFIER_nondet_int() #5
  %"816" = load i32* @"'compRegistered", align 4
  %"817" = icmp ne i32 %"816", 0
  br i1 %"817", label %CdAudioDeviceControl_bb367, label %CdAudioDeviceControl_bb379

CdAudioDeviceControl_bb367:                       ; preds = %CdAudioDeviceControl_bb366
  %"818" = load i32* @"'routine", align 4
  %"819" = icmp eq i32 %"818", 0
  br i1 %"819", label %CdAudioDeviceControl_bb368, label %CdAudioDeviceControl_bb374

CdAudioDeviceControl_bb368:                       ; preds = %CdAudioDeviceControl_bb367
  %"820" = call i32 @__VERIFIER_nondet_int() #5
  %"821" = call i32 @__VERIFIER_nondet_int() #5
  %"822" = icmp ne i32 %"820", 0
  br i1 %"822", label %CdAudioDeviceControl_bb369, label %CdAudioDeviceControl_bb372

CdAudioDeviceControl_bb369:                       ; preds = %CdAudioDeviceControl_bb368
  %"823" = load i32* @"'pended", align 4
  %"824" = icmp eq i32 %"823", 0
  br i1 %"824", label %CdAudioDeviceControl_bb370, label %CdAudioDeviceControl_bb371

CdAudioDeviceControl_bb370:                       ; preds = %CdAudioDeviceControl_bb369
  store i32 1, i32* @"'pended", align 4
  br label %CdAudioDeviceControl_bb372

CdAudioDeviceControl_bb371:                       ; preds = %CdAudioDeviceControl_bb369
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioDeviceControl_bb372:                       ; preds = %CdAudioDeviceControl_bb370, %CdAudioDeviceControl_bb368
  %"825" = load i32* @"'myStatus", align 4
  %"826" = icmp sge i32 %"825", 0
  br i1 %"826", label %CdAudioDeviceControl_bb373, label %CdAudioDeviceControl_HPCdrCompletion.exit.i.i.i13

CdAudioDeviceControl_bb373:                       ; preds = %CdAudioDeviceControl_bb372
  %"827" = call i32 @__VERIFIER_nondet_int() #5
  br label %CdAudioDeviceControl_HPCdrCompletion.exit.i.i.i13

CdAudioDeviceControl_HPCdrCompletion.exit.i.i.i13: ; preds = %CdAudioDeviceControl_bb373, %CdAudioDeviceControl_bb372
  %"828" = load i32* @"'myStatus", align 4
  br label %CdAudioDeviceControl_bb376

CdAudioDeviceControl_bb374:                       ; preds = %CdAudioDeviceControl_bb367
  %"829" = load i32* @"'routine", align 4
  %"830" = icmp eq i32 %"829", 1
  br i1 %"830", label %CdAudioDeviceControl_bb375, label %CdAudioDeviceControl_bb376

CdAudioDeviceControl_bb375:                       ; preds = %CdAudioDeviceControl_bb374
  %"831" = call i32 @__VERIFIER_nondet_int() #5
  store i32 1, i32* @"'setEventCalled", align 4
  br label %CdAudioDeviceControl_bb376

CdAudioDeviceControl_bb376:                       ; preds = %CdAudioDeviceControl_bb375, %CdAudioDeviceControl_bb374, %CdAudioDeviceControl_HPCdrCompletion.exit.i.i.i13
  %compRetStatus.1.i.i.i14 = phi i32 [ %"828", %CdAudioDeviceControl_HPCdrCompletion.exit.i.i.i13 ], [ -1073741802, %CdAudioDeviceControl_bb375 ], [ %"813", %CdAudioDeviceControl_bb374 ]
  %"832" = sext i32 %compRetStatus.1.i.i.i14 to i64
  %"833" = icmp eq i64 %"832", -1073741802
  br i1 %"833", label %CdAudioDeviceControl_bb377, label %CdAudioDeviceControl_bb379

CdAudioDeviceControl_bb377:                       ; preds = %CdAudioDeviceControl_bb376
  %"834" = load i32* @"'s", align 4
  %"835" = load i32* @"'NP", align 4
  %"836" = icmp eq i32 %"834", %"835"
  br i1 %"836", label %CdAudioDeviceControl_stubMoreProcessingRequired.exit.i.i.i15, label %CdAudioDeviceControl_bb378

CdAudioDeviceControl_stubMoreProcessingRequired.exit.i.i.i15: ; preds = %CdAudioDeviceControl_bb377
  %"837" = load i32* @"'MPR1", align 4
  store i32 %"837", i32* @"'s", align 4
  br label %CdAudioDeviceControl_bb379

CdAudioDeviceControl_bb378:                       ; preds = %CdAudioDeviceControl_bb377
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioDeviceControl_bb379:                       ; preds = %CdAudioDeviceControl_stubMoreProcessingRequired.exit.i.i.i15, %CdAudioDeviceControl_bb376, %CdAudioDeviceControl_bb366
  %"838" = icmp ne i32 %"814", 0
  br i1 %"838", label %CdAudioDeviceControl_bb382, label %CdAudioDeviceControl_bb380

CdAudioDeviceControl_bb380:                       ; preds = %CdAudioDeviceControl_bb379
  %"839" = call i32 @__VERIFIER_nondet_int() #5
  %"840" = icmp eq i32 %"839", 0
  br i1 %"840", label %CdAudioDeviceControl_bb382, label %CdAudioDeviceControl_bb381

CdAudioDeviceControl_bb381:                       ; preds = %CdAudioDeviceControl_bb380
  %"841" = call i32 @__VERIFIER_nondet_int() #5
  %"842" = icmp eq i32 %"841", 1
  %..i.i.i16 = select i1 %"842", i32 -1073741823, i32 259
  br label %CdAudioDeviceControl_bb382

CdAudioDeviceControl_bb382:                       ; preds = %CdAudioDeviceControl_bb381, %CdAudioDeviceControl_bb380, %CdAudioDeviceControl_bb379
  %returnVal2.1.i.i.i17 = phi i32 [ 259, %CdAudioDeviceControl_bb379 ], [ 0, %CdAudioDeviceControl_bb380 ], [ %..i.i.i16, %CdAudioDeviceControl_bb381 ]
  %"843" = load i32* @"'s", align 4
  %"844" = load i32* @"'NP", align 4
  %"845" = icmp eq i32 %"843", %"844"
  br i1 %"845", label %CdAudioDeviceControl_bb383, label %CdAudioDeviceControl_bb384

CdAudioDeviceControl_bb383:                       ; preds = %CdAudioDeviceControl_bb382
  %"846" = load i32* @"'IPC", align 4
  store i32 %"846", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i.i17, i32* @"'lowerDriverReturn", align 4
  br label %CdAudioDeviceControl_CdAudioSendToNextDriver.exit

CdAudioDeviceControl_bb384:                       ; preds = %CdAudioDeviceControl_bb382
  %"847" = load i32* @"'s", align 4
  %"848" = load i32* @"'MPR1", align 4
  %"849" = icmp eq i32 %"847", %"848"
  br i1 %"849", label %CdAudioDeviceControl_bb385, label %CdAudioDeviceControl_bb388

CdAudioDeviceControl_bb385:                       ; preds = %CdAudioDeviceControl_bb384
  %"850" = icmp eq i32 %returnVal2.1.i.i.i17, 259
  br i1 %"850", label %CdAudioDeviceControl_bb386, label %CdAudioDeviceControl_bb387

CdAudioDeviceControl_bb386:                       ; preds = %CdAudioDeviceControl_bb385
  %"851" = load i32* @"'MPR3", align 4
  store i32 %"851", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i.i17, i32* @"'lowerDriverReturn", align 4
  br label %CdAudioDeviceControl_CdAudioSendToNextDriver.exit

CdAudioDeviceControl_bb387:                       ; preds = %CdAudioDeviceControl_bb385
  %"852" = load i32* @"'NP", align 4
  store i32 %"852", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i.i17, i32* @"'lowerDriverReturn", align 4
  br label %CdAudioDeviceControl_CdAudioSendToNextDriver.exit

CdAudioDeviceControl_bb388:                       ; preds = %CdAudioDeviceControl_bb384
  %"853" = load i32* @"'s", align 4
  %"854" = load i32* @"'SKIP1", align 4
  %"855" = icmp eq i32 %"853", %"854"
  br i1 %"855", label %CdAudioDeviceControl_bb389, label %CdAudioDeviceControl_bb390

CdAudioDeviceControl_bb389:                       ; preds = %CdAudioDeviceControl_bb388
  %"856" = load i32* @"'SKIP2", align 4
  store i32 %"856", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i.i17, i32* @"'lowerDriverReturn", align 4
  br label %CdAudioDeviceControl_CdAudioSendToNextDriver.exit

CdAudioDeviceControl_bb390:                       ; preds = %CdAudioDeviceControl_bb388
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioDeviceControl_bb391:                       ; preds = %CdAudioDeviceControl_bb365
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioDeviceControl_LeafBlock68.i:               ; preds = %CdAudioDeviceControl_NodeBlock70.i
  %SwitchLeaf69.i = icmp eq i32 %"659", 149512
  br i1 %SwitchLeaf69.i, label %CdAudioDeviceControl_bb392, label %CdAudioDeviceControl_NewDefault.i18

CdAudioDeviceControl_bb392:                       ; preds = %CdAudioDeviceControl_LeafBlock68.i
  %"857" = call i32 @__VERIFIER_nondet_int() #5
  %"858" = call i32 @__VERIFIER_nondet_int() #5
  %"859" = call i32 @__VERIFIER_nondet_int() #5
  br label %CdAudioDeviceControl_bb393

CdAudioDeviceControl_bb393:                       ; preds = %CdAudioDeviceControl_bb392, %CdAudioDeviceControl_LeafBlock64.i, %CdAudioDeviceControl_bb352, %CdAudioDeviceControl_bb345, %CdAudioDeviceControl_LeafBlock56.i, %CdAudioDeviceControl_bb344, %CdAudioDeviceControl_bb343, %CdAudioDeviceControl_LeafBlock46.i, %CdAudioDeviceControl_bb339, %CdAudioDeviceControl_bb327, %CdAudioDeviceControl_bb326, %CdAudioDeviceControl_CdAudioIsPlayActive.exit.i10, %CdAudioDeviceControl_bb310
  %status.4.i = phi i32 [ -1073741670, %CdAudioDeviceControl_bb344 ], [ -1073741670, %CdAudioDeviceControl_bb339 ], [ -1073741670, %CdAudioDeviceControl_bb392 ], [ -1073741789, %CdAudioDeviceControl_bb310 ], [ -2147483631, %CdAudioDeviceControl_CdAudioIsPlayActive.exit.i10 ], [ -1073741820, %CdAudioDeviceControl_bb343 ], [ -1073741820, %CdAudioDeviceControl_bb326 ], [ -1073741670, %CdAudioDeviceControl_bb327 ], [ -1073741789, %CdAudioDeviceControl_bb345 ], [ -1073741670, %CdAudioDeviceControl_bb352 ], [ -1073741808, %CdAudioDeviceControl_LeafBlock46.i ], [ -1073741808, %CdAudioDeviceControl_LeafBlock56.i ], [ -1073741808, %CdAudioDeviceControl_LeafBlock64.i ]
  store i32 %status.4.i, i32* @"'myStatus", align 4
  %"860" = load i32* @"'s", align 4
  %"861" = load i32* @"'NP", align 4
  %"862" = icmp eq i32 %"860", %"861"
  br i1 %"862", label %CdAudioDeviceControl_IofCompleteRequest.exit34.i, label %CdAudioDeviceControl_bb394

CdAudioDeviceControl_IofCompleteRequest.exit34.i: ; preds = %CdAudioDeviceControl_bb393
  %"863" = load i32* @"'DC", align 4
  store i32 %"863", i32* @"'s", align 4
  br label %CdAudioDeviceControl_CdAudioSendToNextDriver.exit

CdAudioDeviceControl_bb394:                       ; preds = %CdAudioDeviceControl_bb393
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioDeviceControl_NewDefault.i18:              ; preds = %CdAudioDeviceControl_LeafBlock68.i, %CdAudioDeviceControl_LeafBlock66.i, %CdAudioDeviceControl_LeafBlock64.i, %CdAudioDeviceControl_LeafBlock58.i, %CdAudioDeviceControl_LeafBlock56.i, %CdAudioDeviceControl_LeafBlock54.i, %CdAudioDeviceControl_LeafBlock46.i, %CdAudioDeviceControl_LeafBlock44.i, %CdAudioDeviceControl_LeafBlock42.i, %CdAudioDeviceControl_LeafBlock38.i, %CdAudioDeviceControl_LeafBlock36.i, %CdAudioDeviceControl_LeafBlock.i2
  %"864" = call i32 @__VERIFIER_nondet_int() #5
  %"865" = call i32 @__VERIFIER_nondet_int() #5
  %"866" = call i32 @__VERIFIER_nondet_int() #5
  %"867" = load i32* @"'s", align 4
  %"868" = load i32* @"'NP", align 4
  %"869" = icmp eq i32 %"867", %"868"
  br i1 %"869", label %CdAudioDeviceControl_bb395, label %CdAudioDeviceControl_bb420

CdAudioDeviceControl_bb395:                       ; preds = %CdAudioDeviceControl_NewDefault.i18
  %"870" = load i32* @"'SKIP1", align 4
  store i32 %"870", i32* @"'s", align 4
  %"871" = call i32 @__kittel_nondef.0() #5
  %"872" = call i32 @__VERIFIER_nondet_int() #5
  %"873" = call i32 @__VERIFIER_nondet_int() #5
  %"874" = load i32* @"'compRegistered", align 4
  %"875" = icmp ne i32 %"874", 0
  br i1 %"875", label %CdAudioDeviceControl_bb396, label %CdAudioDeviceControl_bb408

CdAudioDeviceControl_bb396:                       ; preds = %CdAudioDeviceControl_bb395
  %"876" = load i32* @"'routine", align 4
  %"877" = icmp eq i32 %"876", 0
  br i1 %"877", label %CdAudioDeviceControl_bb397, label %CdAudioDeviceControl_bb403

CdAudioDeviceControl_bb397:                       ; preds = %CdAudioDeviceControl_bb396
  %"878" = call i32 @__VERIFIER_nondet_int() #5
  %"879" = call i32 @__VERIFIER_nondet_int() #5
  %"880" = icmp ne i32 %"878", 0
  br i1 %"880", label %CdAudioDeviceControl_bb398, label %CdAudioDeviceControl_bb401

CdAudioDeviceControl_bb398:                       ; preds = %CdAudioDeviceControl_bb397
  %"881" = load i32* @"'pended", align 4
  %"882" = icmp eq i32 %"881", 0
  br i1 %"882", label %CdAudioDeviceControl_bb399, label %CdAudioDeviceControl_bb400

CdAudioDeviceControl_bb399:                       ; preds = %CdAudioDeviceControl_bb398
  store i32 1, i32* @"'pended", align 4
  br label %CdAudioDeviceControl_bb401

CdAudioDeviceControl_bb400:                       ; preds = %CdAudioDeviceControl_bb398
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioDeviceControl_bb401:                       ; preds = %CdAudioDeviceControl_bb399, %CdAudioDeviceControl_bb397
  %"883" = load i32* @"'myStatus", align 4
  %"884" = icmp sge i32 %"883", 0
  br i1 %"884", label %CdAudioDeviceControl_bb402, label %CdAudioDeviceControl_HPCdrCompletion.exit.i.i28.i

CdAudioDeviceControl_bb402:                       ; preds = %CdAudioDeviceControl_bb401
  %"885" = call i32 @__VERIFIER_nondet_int() #5
  br label %CdAudioDeviceControl_HPCdrCompletion.exit.i.i28.i

CdAudioDeviceControl_HPCdrCompletion.exit.i.i28.i: ; preds = %CdAudioDeviceControl_bb402, %CdAudioDeviceControl_bb401
  %"886" = load i32* @"'myStatus", align 4
  br label %CdAudioDeviceControl_bb405

CdAudioDeviceControl_bb403:                       ; preds = %CdAudioDeviceControl_bb396
  %"887" = load i32* @"'routine", align 4
  %"888" = icmp eq i32 %"887", 1
  br i1 %"888", label %CdAudioDeviceControl_bb404, label %CdAudioDeviceControl_bb405

CdAudioDeviceControl_bb404:                       ; preds = %CdAudioDeviceControl_bb403
  %"889" = call i32 @__VERIFIER_nondet_int() #5
  store i32 1, i32* @"'setEventCalled", align 4
  br label %CdAudioDeviceControl_bb405

CdAudioDeviceControl_bb405:                       ; preds = %CdAudioDeviceControl_bb404, %CdAudioDeviceControl_bb403, %CdAudioDeviceControl_HPCdrCompletion.exit.i.i28.i
  %compRetStatus.1.i.i29.i = phi i32 [ %"886", %CdAudioDeviceControl_HPCdrCompletion.exit.i.i28.i ], [ -1073741802, %CdAudioDeviceControl_bb404 ], [ %"871", %CdAudioDeviceControl_bb403 ]
  %"890" = sext i32 %compRetStatus.1.i.i29.i to i64
  %"891" = icmp eq i64 %"890", -1073741802
  br i1 %"891", label %CdAudioDeviceControl_bb406, label %CdAudioDeviceControl_bb408

CdAudioDeviceControl_bb406:                       ; preds = %CdAudioDeviceControl_bb405
  %"892" = load i32* @"'s", align 4
  %"893" = load i32* @"'NP", align 4
  %"894" = icmp eq i32 %"892", %"893"
  br i1 %"894", label %CdAudioDeviceControl_stubMoreProcessingRequired.exit.i.i30.i, label %CdAudioDeviceControl_bb407

CdAudioDeviceControl_stubMoreProcessingRequired.exit.i.i30.i: ; preds = %CdAudioDeviceControl_bb406
  %"895" = load i32* @"'MPR1", align 4
  store i32 %"895", i32* @"'s", align 4
  br label %CdAudioDeviceControl_bb408

CdAudioDeviceControl_bb407:                       ; preds = %CdAudioDeviceControl_bb406
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioDeviceControl_bb408:                       ; preds = %CdAudioDeviceControl_stubMoreProcessingRequired.exit.i.i30.i, %CdAudioDeviceControl_bb405, %CdAudioDeviceControl_bb395
  %"896" = icmp ne i32 %"872", 0
  br i1 %"896", label %CdAudioDeviceControl_bb411, label %CdAudioDeviceControl_bb409

CdAudioDeviceControl_bb409:                       ; preds = %CdAudioDeviceControl_bb408
  %"897" = call i32 @__VERIFIER_nondet_int() #5
  %"898" = icmp eq i32 %"897", 0
  br i1 %"898", label %CdAudioDeviceControl_bb411, label %CdAudioDeviceControl_bb410

CdAudioDeviceControl_bb410:                       ; preds = %CdAudioDeviceControl_bb409
  %"899" = call i32 @__VERIFIER_nondet_int() #5
  %"900" = icmp eq i32 %"899", 1
  %..i.i31.i = select i1 %"900", i32 -1073741823, i32 259
  br label %CdAudioDeviceControl_bb411

CdAudioDeviceControl_bb411:                       ; preds = %CdAudioDeviceControl_bb410, %CdAudioDeviceControl_bb409, %CdAudioDeviceControl_bb408
  %returnVal2.1.i.i32.i = phi i32 [ 259, %CdAudioDeviceControl_bb408 ], [ 0, %CdAudioDeviceControl_bb409 ], [ %..i.i31.i, %CdAudioDeviceControl_bb410 ]
  %"901" = load i32* @"'s", align 4
  %"902" = load i32* @"'NP", align 4
  %"903" = icmp eq i32 %"901", %"902"
  br i1 %"903", label %CdAudioDeviceControl_bb412, label %CdAudioDeviceControl_bb413

CdAudioDeviceControl_bb412:                       ; preds = %CdAudioDeviceControl_bb411
  %"904" = load i32* @"'IPC", align 4
  store i32 %"904", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i32.i, i32* @"'lowerDriverReturn", align 4
  br label %CdAudioDeviceControl_CdAudioSendToNextDriver.exit

CdAudioDeviceControl_bb413:                       ; preds = %CdAudioDeviceControl_bb411
  %"905" = load i32* @"'s", align 4
  %"906" = load i32* @"'MPR1", align 4
  %"907" = icmp eq i32 %"905", %"906"
  br i1 %"907", label %CdAudioDeviceControl_bb414, label %CdAudioDeviceControl_bb417

CdAudioDeviceControl_bb414:                       ; preds = %CdAudioDeviceControl_bb413
  %"908" = icmp eq i32 %returnVal2.1.i.i32.i, 259
  br i1 %"908", label %CdAudioDeviceControl_bb415, label %CdAudioDeviceControl_bb416

CdAudioDeviceControl_bb415:                       ; preds = %CdAudioDeviceControl_bb414
  %"909" = load i32* @"'MPR3", align 4
  store i32 %"909", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i32.i, i32* @"'lowerDriverReturn", align 4
  br label %CdAudioDeviceControl_CdAudioSendToNextDriver.exit

CdAudioDeviceControl_bb416:                       ; preds = %CdAudioDeviceControl_bb414
  %"910" = load i32* @"'NP", align 4
  store i32 %"910", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i32.i, i32* @"'lowerDriverReturn", align 4
  br label %CdAudioDeviceControl_CdAudioSendToNextDriver.exit

CdAudioDeviceControl_bb417:                       ; preds = %CdAudioDeviceControl_bb413
  %"911" = load i32* @"'s", align 4
  %"912" = load i32* @"'SKIP1", align 4
  %"913" = icmp eq i32 %"911", %"912"
  br i1 %"913", label %CdAudioDeviceControl_bb418, label %CdAudioDeviceControl_bb419

CdAudioDeviceControl_bb418:                       ; preds = %CdAudioDeviceControl_bb417
  %"914" = load i32* @"'SKIP2", align 4
  store i32 %"914", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i32.i, i32* @"'lowerDriverReturn", align 4
  br label %CdAudioDeviceControl_CdAudioSendToNextDriver.exit

CdAudioDeviceControl_bb419:                       ; preds = %CdAudioDeviceControl_bb417
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioDeviceControl_bb420:                       ; preds = %CdAudioDeviceControl_NewDefault.i18
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioDeviceControl_LeafBlock41:                 ; preds = %CdAudioDeviceControl_NodeBlock43
  %SwitchLeaf42 = icmp eq i32 %"382", 7
  br i1 %SwitchLeaf42, label %CdAudioDeviceControl_bb421, label %CdAudioDeviceControl_NewDefault

CdAudioDeviceControl_bb421:                       ; preds = %CdAudioDeviceControl_LeafBlock41
  %"915" = call i32 @__VERIFIER_nondet_int() #5
  %"916" = call i32 @__VERIFIER_nondet_int() #5
  %"917" = icmp eq i32 %"915", 147512
  br i1 %"917", label %CdAudioDeviceControl_bb422, label %CdAudioDeviceControl_bb451

CdAudioDeviceControl_bb422:                       ; preds = %CdAudioDeviceControl_bb421
  %"918" = load i32* @"'s", align 4
  %"919" = load i32* @"'NP", align 4
  %"920" = icmp ne i32 %"918", %"919"
  br i1 %"920", label %CdAudioDeviceControl_bb423, label %CdAudioDeviceControl_bb424

CdAudioDeviceControl_bb423:                       ; preds = %CdAudioDeviceControl_bb422
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioDeviceControl_bb424:                       ; preds = %CdAudioDeviceControl_bb422
  %"921" = load i32* @"'compRegistered", align 4
  %"922" = icmp ne i32 %"921", 0
  br i1 %"922", label %CdAudioDeviceControl_bb425, label %CdAudioDeviceControl_bb426

CdAudioDeviceControl_bb425:                       ; preds = %CdAudioDeviceControl_bb424
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioDeviceControl_bb426:                       ; preds = %CdAudioDeviceControl_bb424
  store i32 1, i32* @"'compRegistered", align 4
  store i32 0, i32* @"'routine", align 4
  %"923" = call i32 @__kittel_nondef.0() #5
  %"924" = call i32 @__VERIFIER_nondet_int() #5
  %"925" = call i32 @__VERIFIER_nondet_int() #5
  %"926" = load i32* @"'compRegistered", align 4
  %"927" = icmp ne i32 %"926", 0
  br i1 %"927", label %CdAudioDeviceControl_bb427, label %CdAudioDeviceControl_bb439

CdAudioDeviceControl_bb427:                       ; preds = %CdAudioDeviceControl_bb426
  %"928" = load i32* @"'routine", align 4
  %"929" = icmp eq i32 %"928", 0
  br i1 %"929", label %CdAudioDeviceControl_bb428, label %CdAudioDeviceControl_bb434

CdAudioDeviceControl_bb428:                       ; preds = %CdAudioDeviceControl_bb427
  %"930" = call i32 @__VERIFIER_nondet_int() #5
  %"931" = call i32 @__VERIFIER_nondet_int() #5
  %"932" = icmp ne i32 %"930", 0
  br i1 %"932", label %CdAudioDeviceControl_bb429, label %CdAudioDeviceControl_bb432

CdAudioDeviceControl_bb429:                       ; preds = %CdAudioDeviceControl_bb428
  %"933" = load i32* @"'pended", align 4
  %"934" = icmp eq i32 %"933", 0
  br i1 %"934", label %CdAudioDeviceControl_bb430, label %CdAudioDeviceControl_bb431

CdAudioDeviceControl_bb430:                       ; preds = %CdAudioDeviceControl_bb429
  store i32 1, i32* @"'pended", align 4
  br label %CdAudioDeviceControl_bb432

CdAudioDeviceControl_bb431:                       ; preds = %CdAudioDeviceControl_bb429
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioDeviceControl_bb432:                       ; preds = %CdAudioDeviceControl_bb430, %CdAudioDeviceControl_bb428
  %"935" = load i32* @"'myStatus", align 4
  %"936" = icmp sge i32 %"935", 0
  br i1 %"936", label %CdAudioDeviceControl_bb433, label %CdAudioDeviceControl_HPCdrCompletion.exit.i.i

CdAudioDeviceControl_bb433:                       ; preds = %CdAudioDeviceControl_bb432
  %"937" = call i32 @__VERIFIER_nondet_int() #5
  br label %CdAudioDeviceControl_HPCdrCompletion.exit.i.i

CdAudioDeviceControl_HPCdrCompletion.exit.i.i:    ; preds = %CdAudioDeviceControl_bb433, %CdAudioDeviceControl_bb432
  %"938" = load i32* @"'myStatus", align 4
  br label %CdAudioDeviceControl_bb436

CdAudioDeviceControl_bb434:                       ; preds = %CdAudioDeviceControl_bb427
  %"939" = load i32* @"'routine", align 4
  %"940" = icmp eq i32 %"939", 1
  br i1 %"940", label %CdAudioDeviceControl_bb435, label %CdAudioDeviceControl_bb436

CdAudioDeviceControl_bb435:                       ; preds = %CdAudioDeviceControl_bb434
  %"941" = call i32 @__VERIFIER_nondet_int() #5
  store i32 1, i32* @"'setEventCalled", align 4
  br label %CdAudioDeviceControl_bb436

CdAudioDeviceControl_bb436:                       ; preds = %CdAudioDeviceControl_bb435, %CdAudioDeviceControl_bb434, %CdAudioDeviceControl_HPCdrCompletion.exit.i.i
  %compRetStatus.1.i.i = phi i32 [ %"938", %CdAudioDeviceControl_HPCdrCompletion.exit.i.i ], [ -1073741802, %CdAudioDeviceControl_bb435 ], [ %"923", %CdAudioDeviceControl_bb434 ]
  %"942" = sext i32 %compRetStatus.1.i.i to i64
  %"943" = icmp eq i64 %"942", -1073741802
  br i1 %"943", label %CdAudioDeviceControl_bb437, label %CdAudioDeviceControl_bb439

CdAudioDeviceControl_bb437:                       ; preds = %CdAudioDeviceControl_bb436
  %"944" = load i32* @"'s", align 4
  %"945" = load i32* @"'NP", align 4
  %"946" = icmp eq i32 %"944", %"945"
  br i1 %"946", label %CdAudioDeviceControl_stubMoreProcessingRequired.exit.i.i, label %CdAudioDeviceControl_bb438

CdAudioDeviceControl_stubMoreProcessingRequired.exit.i.i: ; preds = %CdAudioDeviceControl_bb437
  %"947" = load i32* @"'MPR1", align 4
  store i32 %"947", i32* @"'s", align 4
  br label %CdAudioDeviceControl_bb439

CdAudioDeviceControl_bb438:                       ; preds = %CdAudioDeviceControl_bb437
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioDeviceControl_bb439:                       ; preds = %CdAudioDeviceControl_stubMoreProcessingRequired.exit.i.i, %CdAudioDeviceControl_bb436, %CdAudioDeviceControl_bb426
  %"948" = icmp ne i32 %"924", 0
  br i1 %"948", label %CdAudioDeviceControl_bb442, label %CdAudioDeviceControl_bb440

CdAudioDeviceControl_bb440:                       ; preds = %CdAudioDeviceControl_bb439
  %"949" = call i32 @__VERIFIER_nondet_int() #5
  %"950" = icmp eq i32 %"949", 0
  br i1 %"950", label %CdAudioDeviceControl_bb442, label %CdAudioDeviceControl_bb441

CdAudioDeviceControl_bb441:                       ; preds = %CdAudioDeviceControl_bb440
  %"951" = call i32 @__VERIFIER_nondet_int() #5
  %"952" = icmp eq i32 %"951", 1
  %..i.i27 = select i1 %"952", i32 -1073741823, i32 259
  br label %CdAudioDeviceControl_bb442

CdAudioDeviceControl_bb442:                       ; preds = %CdAudioDeviceControl_bb441, %CdAudioDeviceControl_bb440, %CdAudioDeviceControl_bb439
  %returnVal2.1.i.i = phi i32 [ 259, %CdAudioDeviceControl_bb439 ], [ 0, %CdAudioDeviceControl_bb440 ], [ %..i.i27, %CdAudioDeviceControl_bb441 ]
  %"953" = load i32* @"'s", align 4
  %"954" = load i32* @"'NP", align 4
  %"955" = icmp eq i32 %"953", %"954"
  br i1 %"955", label %CdAudioDeviceControl_bb443, label %CdAudioDeviceControl_bb444

CdAudioDeviceControl_bb443:                       ; preds = %CdAudioDeviceControl_bb442
  %"956" = load i32* @"'IPC", align 4
  store i32 %"956", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i, i32* @"'lowerDriverReturn", align 4
  br label %CdAudioDeviceControl_CdAudioSendToNextDriver.exit

CdAudioDeviceControl_bb444:                       ; preds = %CdAudioDeviceControl_bb442
  %"957" = load i32* @"'s", align 4
  %"958" = load i32* @"'MPR1", align 4
  %"959" = icmp eq i32 %"957", %"958"
  br i1 %"959", label %CdAudioDeviceControl_bb445, label %CdAudioDeviceControl_bb448

CdAudioDeviceControl_bb445:                       ; preds = %CdAudioDeviceControl_bb444
  %"960" = icmp eq i32 %returnVal2.1.i.i, 259
  br i1 %"960", label %CdAudioDeviceControl_bb446, label %CdAudioDeviceControl_bb447

CdAudioDeviceControl_bb446:                       ; preds = %CdAudioDeviceControl_bb445
  %"961" = load i32* @"'MPR3", align 4
  store i32 %"961", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i, i32* @"'lowerDriverReturn", align 4
  br label %CdAudioDeviceControl_CdAudioSendToNextDriver.exit

CdAudioDeviceControl_bb447:                       ; preds = %CdAudioDeviceControl_bb445
  %"962" = load i32* @"'NP", align 4
  store i32 %"962", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i, i32* @"'lowerDriverReturn", align 4
  br label %CdAudioDeviceControl_CdAudioSendToNextDriver.exit

CdAudioDeviceControl_bb448:                       ; preds = %CdAudioDeviceControl_bb444
  %"963" = load i32* @"'s", align 4
  %"964" = load i32* @"'SKIP1", align 4
  %"965" = icmp eq i32 %"963", %"964"
  br i1 %"965", label %CdAudioDeviceControl_bb449, label %CdAudioDeviceControl_bb450

CdAudioDeviceControl_bb449:                       ; preds = %CdAudioDeviceControl_bb448
  %"966" = load i32* @"'SKIP2", align 4
  store i32 %"966", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i, i32* @"'lowerDriverReturn", align 4
  br label %CdAudioDeviceControl_CdAudioSendToNextDriver.exit

CdAudioDeviceControl_bb450:                       ; preds = %CdAudioDeviceControl_bb448
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioDeviceControl_bb451:                       ; preds = %CdAudioDeviceControl_bb421
  %"967" = call i32 @__VERIFIER_nondet_int() #5
  %"968" = call i32 @__VERIFIER_nondet_int() #5
  %"969" = call i32 @__VERIFIER_nondet_int() #5
  %"970" = load i32* @"'s", align 4
  %"971" = load i32* @"'NP", align 4
  %"972" = icmp eq i32 %"970", %"971"
  br i1 %"972", label %CdAudioDeviceControl_bb452, label %CdAudioDeviceControl_bb477

CdAudioDeviceControl_bb452:                       ; preds = %CdAudioDeviceControl_bb451
  %"973" = load i32* @"'SKIP1", align 4
  store i32 %"973", i32* @"'s", align 4
  %"974" = call i32 @__kittel_nondef.0() #5
  %"975" = call i32 @__VERIFIER_nondet_int() #5
  %"976" = call i32 @__VERIFIER_nondet_int() #5
  %"977" = load i32* @"'compRegistered", align 4
  %"978" = icmp ne i32 %"977", 0
  br i1 %"978", label %CdAudioDeviceControl_bb453, label %CdAudioDeviceControl_bb465

CdAudioDeviceControl_bb453:                       ; preds = %CdAudioDeviceControl_bb452
  %"979" = load i32* @"'routine", align 4
  %"980" = icmp eq i32 %"979", 0
  br i1 %"980", label %CdAudioDeviceControl_bb454, label %CdAudioDeviceControl_bb460

CdAudioDeviceControl_bb454:                       ; preds = %CdAudioDeviceControl_bb453
  %"981" = call i32 @__VERIFIER_nondet_int() #5
  %"982" = call i32 @__VERIFIER_nondet_int() #5
  %"983" = icmp ne i32 %"981", 0
  br i1 %"983", label %CdAudioDeviceControl_bb455, label %CdAudioDeviceControl_bb458

CdAudioDeviceControl_bb455:                       ; preds = %CdAudioDeviceControl_bb454
  %"984" = load i32* @"'pended", align 4
  %"985" = icmp eq i32 %"984", 0
  br i1 %"985", label %CdAudioDeviceControl_bb456, label %CdAudioDeviceControl_bb457

CdAudioDeviceControl_bb456:                       ; preds = %CdAudioDeviceControl_bb455
  store i32 1, i32* @"'pended", align 4
  br label %CdAudioDeviceControl_bb458

CdAudioDeviceControl_bb457:                       ; preds = %CdAudioDeviceControl_bb455
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioDeviceControl_bb458:                       ; preds = %CdAudioDeviceControl_bb456, %CdAudioDeviceControl_bb454
  %"986" = load i32* @"'myStatus", align 4
  %"987" = icmp sge i32 %"986", 0
  br i1 %"987", label %CdAudioDeviceControl_bb459, label %CdAudioDeviceControl_HPCdrCompletion.exit.i.i.i28

CdAudioDeviceControl_bb459:                       ; preds = %CdAudioDeviceControl_bb458
  %"988" = call i32 @__VERIFIER_nondet_int() #5
  br label %CdAudioDeviceControl_HPCdrCompletion.exit.i.i.i28

CdAudioDeviceControl_HPCdrCompletion.exit.i.i.i28: ; preds = %CdAudioDeviceControl_bb459, %CdAudioDeviceControl_bb458
  %"989" = load i32* @"'myStatus", align 4
  br label %CdAudioDeviceControl_bb462

CdAudioDeviceControl_bb460:                       ; preds = %CdAudioDeviceControl_bb453
  %"990" = load i32* @"'routine", align 4
  %"991" = icmp eq i32 %"990", 1
  br i1 %"991", label %CdAudioDeviceControl_bb461, label %CdAudioDeviceControl_bb462

CdAudioDeviceControl_bb461:                       ; preds = %CdAudioDeviceControl_bb460
  %"992" = call i32 @__VERIFIER_nondet_int() #5
  store i32 1, i32* @"'setEventCalled", align 4
  br label %CdAudioDeviceControl_bb462

CdAudioDeviceControl_bb462:                       ; preds = %CdAudioDeviceControl_bb461, %CdAudioDeviceControl_bb460, %CdAudioDeviceControl_HPCdrCompletion.exit.i.i.i28
  %compRetStatus.1.i.i.i29 = phi i32 [ %"989", %CdAudioDeviceControl_HPCdrCompletion.exit.i.i.i28 ], [ -1073741802, %CdAudioDeviceControl_bb461 ], [ %"974", %CdAudioDeviceControl_bb460 ]
  %"993" = sext i32 %compRetStatus.1.i.i.i29 to i64
  %"994" = icmp eq i64 %"993", -1073741802
  br i1 %"994", label %CdAudioDeviceControl_bb463, label %CdAudioDeviceControl_bb465

CdAudioDeviceControl_bb463:                       ; preds = %CdAudioDeviceControl_bb462
  %"995" = load i32* @"'s", align 4
  %"996" = load i32* @"'NP", align 4
  %"997" = icmp eq i32 %"995", %"996"
  br i1 %"997", label %CdAudioDeviceControl_stubMoreProcessingRequired.exit.i.i.i30, label %CdAudioDeviceControl_bb464

CdAudioDeviceControl_stubMoreProcessingRequired.exit.i.i.i30: ; preds = %CdAudioDeviceControl_bb463
  %"998" = load i32* @"'MPR1", align 4
  store i32 %"998", i32* @"'s", align 4
  br label %CdAudioDeviceControl_bb465

CdAudioDeviceControl_bb464:                       ; preds = %CdAudioDeviceControl_bb463
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioDeviceControl_bb465:                       ; preds = %CdAudioDeviceControl_stubMoreProcessingRequired.exit.i.i.i30, %CdAudioDeviceControl_bb462, %CdAudioDeviceControl_bb452
  %"999" = icmp ne i32 %"975", 0
  br i1 %"999", label %CdAudioDeviceControl_bb468, label %CdAudioDeviceControl_bb466

CdAudioDeviceControl_bb466:                       ; preds = %CdAudioDeviceControl_bb465
  %"1000" = call i32 @__VERIFIER_nondet_int() #5
  %"1001" = icmp eq i32 %"1000", 0
  br i1 %"1001", label %CdAudioDeviceControl_bb468, label %CdAudioDeviceControl_bb467

CdAudioDeviceControl_bb467:                       ; preds = %CdAudioDeviceControl_bb466
  %"1002" = call i32 @__VERIFIER_nondet_int() #5
  %"1003" = icmp eq i32 %"1002", 1
  %..i.i.i31 = select i1 %"1003", i32 -1073741823, i32 259
  br label %CdAudioDeviceControl_bb468

CdAudioDeviceControl_bb468:                       ; preds = %CdAudioDeviceControl_bb467, %CdAudioDeviceControl_bb466, %CdAudioDeviceControl_bb465
  %returnVal2.1.i.i.i32 = phi i32 [ 259, %CdAudioDeviceControl_bb465 ], [ 0, %CdAudioDeviceControl_bb466 ], [ %..i.i.i31, %CdAudioDeviceControl_bb467 ]
  %"1004" = load i32* @"'s", align 4
  %"1005" = load i32* @"'NP", align 4
  %"1006" = icmp eq i32 %"1004", %"1005"
  br i1 %"1006", label %CdAudioDeviceControl_bb469, label %CdAudioDeviceControl_bb470

CdAudioDeviceControl_bb469:                       ; preds = %CdAudioDeviceControl_bb468
  %"1007" = load i32* @"'IPC", align 4
  store i32 %"1007", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i.i32, i32* @"'lowerDriverReturn", align 4
  br label %CdAudioDeviceControl_CdAudioSendToNextDriver.exit

CdAudioDeviceControl_bb470:                       ; preds = %CdAudioDeviceControl_bb468
  %"1008" = load i32* @"'s", align 4
  %"1009" = load i32* @"'MPR1", align 4
  %"1010" = icmp eq i32 %"1008", %"1009"
  br i1 %"1010", label %CdAudioDeviceControl_bb471, label %CdAudioDeviceControl_bb474

CdAudioDeviceControl_bb471:                       ; preds = %CdAudioDeviceControl_bb470
  %"1011" = icmp eq i32 %returnVal2.1.i.i.i32, 259
  br i1 %"1011", label %CdAudioDeviceControl_bb472, label %CdAudioDeviceControl_bb473

CdAudioDeviceControl_bb472:                       ; preds = %CdAudioDeviceControl_bb471
  %"1012" = load i32* @"'MPR3", align 4
  store i32 %"1012", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i.i32, i32* @"'lowerDriverReturn", align 4
  br label %CdAudioDeviceControl_CdAudioSendToNextDriver.exit

CdAudioDeviceControl_bb473:                       ; preds = %CdAudioDeviceControl_bb471
  %"1013" = load i32* @"'NP", align 4
  store i32 %"1013", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i.i32, i32* @"'lowerDriverReturn", align 4
  br label %CdAudioDeviceControl_CdAudioSendToNextDriver.exit

CdAudioDeviceControl_bb474:                       ; preds = %CdAudioDeviceControl_bb470
  %"1014" = load i32* @"'s", align 4
  %"1015" = load i32* @"'SKIP1", align 4
  %"1016" = icmp eq i32 %"1014", %"1015"
  br i1 %"1016", label %CdAudioDeviceControl_bb475, label %CdAudioDeviceControl_bb476

CdAudioDeviceControl_bb475:                       ; preds = %CdAudioDeviceControl_bb474
  %"1017" = load i32* @"'SKIP2", align 4
  store i32 %"1017", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i.i32, i32* @"'lowerDriverReturn", align 4
  br label %CdAudioDeviceControl_CdAudioSendToNextDriver.exit

CdAudioDeviceControl_bb476:                       ; preds = %CdAudioDeviceControl_bb474
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioDeviceControl_bb477:                       ; preds = %CdAudioDeviceControl_bb451
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioDeviceControl_NewDefault:                  ; preds = %CdAudioDeviceControl_LeafBlock41, %CdAudioDeviceControl_LeafBlock39, %CdAudioDeviceControl_LeafBlock
  br label %CdAudioDeviceControl_bb478

CdAudioDeviceControl_bb478:                       ; preds = %CdAudioDeviceControl_NewDefault
  %"1018" = call i32 @__VERIFIER_nondet_int() #5
  %"1019" = call i32 @__VERIFIER_nondet_int() #5
  %"1020" = call i32 @__VERIFIER_nondet_int() #5
  %"1021" = load i32* @"'s", align 4
  %"1022" = load i32* @"'NP", align 4
  %"1023" = icmp eq i32 %"1021", %"1022"
  br i1 %"1023", label %CdAudioDeviceControl_bb479, label %CdAudioDeviceControl_bb504

CdAudioDeviceControl_bb479:                       ; preds = %CdAudioDeviceControl_bb478
  %"1024" = load i32* @"'SKIP1", align 4
  store i32 %"1024", i32* @"'s", align 4
  %"1025" = call i32 @__kittel_nondef.0() #5
  %"1026" = call i32 @__VERIFIER_nondet_int() #5
  %"1027" = call i32 @__VERIFIER_nondet_int() #5
  %"1028" = load i32* @"'compRegistered", align 4
  %"1029" = icmp ne i32 %"1028", 0
  br i1 %"1029", label %CdAudioDeviceControl_bb480, label %CdAudioDeviceControl_bb492

CdAudioDeviceControl_bb480:                       ; preds = %CdAudioDeviceControl_bb479
  %"1030" = load i32* @"'routine", align 4
  %"1031" = icmp eq i32 %"1030", 0
  br i1 %"1031", label %CdAudioDeviceControl_bb481, label %CdAudioDeviceControl_bb487

CdAudioDeviceControl_bb481:                       ; preds = %CdAudioDeviceControl_bb480
  %"1032" = call i32 @__VERIFIER_nondet_int() #5
  %"1033" = call i32 @__VERIFIER_nondet_int() #5
  %"1034" = icmp ne i32 %"1032", 0
  br i1 %"1034", label %CdAudioDeviceControl_bb482, label %CdAudioDeviceControl_bb485

CdAudioDeviceControl_bb482:                       ; preds = %CdAudioDeviceControl_bb481
  %"1035" = load i32* @"'pended", align 4
  %"1036" = icmp eq i32 %"1035", 0
  br i1 %"1036", label %CdAudioDeviceControl_bb483, label %CdAudioDeviceControl_bb484

CdAudioDeviceControl_bb483:                       ; preds = %CdAudioDeviceControl_bb482
  store i32 1, i32* @"'pended", align 4
  br label %CdAudioDeviceControl_bb485

CdAudioDeviceControl_bb484:                       ; preds = %CdAudioDeviceControl_bb482
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioDeviceControl_bb485:                       ; preds = %CdAudioDeviceControl_bb483, %CdAudioDeviceControl_bb481
  %"1037" = load i32* @"'myStatus", align 4
  %"1038" = icmp sge i32 %"1037", 0
  br i1 %"1038", label %CdAudioDeviceControl_bb486, label %CdAudioDeviceControl_HPCdrCompletion.exit.i.i34

CdAudioDeviceControl_bb486:                       ; preds = %CdAudioDeviceControl_bb485
  %"1039" = call i32 @__VERIFIER_nondet_int() #5
  br label %CdAudioDeviceControl_HPCdrCompletion.exit.i.i34

CdAudioDeviceControl_HPCdrCompletion.exit.i.i34:  ; preds = %CdAudioDeviceControl_bb486, %CdAudioDeviceControl_bb485
  %"1040" = load i32* @"'myStatus", align 4
  br label %CdAudioDeviceControl_bb489

CdAudioDeviceControl_bb487:                       ; preds = %CdAudioDeviceControl_bb480
  %"1041" = load i32* @"'routine", align 4
  %"1042" = icmp eq i32 %"1041", 1
  br i1 %"1042", label %CdAudioDeviceControl_bb488, label %CdAudioDeviceControl_bb489

CdAudioDeviceControl_bb488:                       ; preds = %CdAudioDeviceControl_bb487
  %"1043" = call i32 @__VERIFIER_nondet_int() #5
  store i32 1, i32* @"'setEventCalled", align 4
  br label %CdAudioDeviceControl_bb489

CdAudioDeviceControl_bb489:                       ; preds = %CdAudioDeviceControl_bb488, %CdAudioDeviceControl_bb487, %CdAudioDeviceControl_HPCdrCompletion.exit.i.i34
  %compRetStatus.1.i.i35 = phi i32 [ %"1040", %CdAudioDeviceControl_HPCdrCompletion.exit.i.i34 ], [ -1073741802, %CdAudioDeviceControl_bb488 ], [ %"1025", %CdAudioDeviceControl_bb487 ]
  %"1044" = sext i32 %compRetStatus.1.i.i35 to i64
  %"1045" = icmp eq i64 %"1044", -1073741802
  br i1 %"1045", label %CdAudioDeviceControl_bb490, label %CdAudioDeviceControl_bb492

CdAudioDeviceControl_bb490:                       ; preds = %CdAudioDeviceControl_bb489
  %"1046" = load i32* @"'s", align 4
  %"1047" = load i32* @"'NP", align 4
  %"1048" = icmp eq i32 %"1046", %"1047"
  br i1 %"1048", label %CdAudioDeviceControl_stubMoreProcessingRequired.exit.i.i36, label %CdAudioDeviceControl_bb491

CdAudioDeviceControl_stubMoreProcessingRequired.exit.i.i36: ; preds = %CdAudioDeviceControl_bb490
  %"1049" = load i32* @"'MPR1", align 4
  store i32 %"1049", i32* @"'s", align 4
  br label %CdAudioDeviceControl_bb492

CdAudioDeviceControl_bb491:                       ; preds = %CdAudioDeviceControl_bb490
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioDeviceControl_bb492:                       ; preds = %CdAudioDeviceControl_stubMoreProcessingRequired.exit.i.i36, %CdAudioDeviceControl_bb489, %CdAudioDeviceControl_bb479
  %"1050" = icmp ne i32 %"1026", 0
  br i1 %"1050", label %CdAudioDeviceControl_bb495, label %CdAudioDeviceControl_bb493

CdAudioDeviceControl_bb493:                       ; preds = %CdAudioDeviceControl_bb492
  %"1051" = call i32 @__VERIFIER_nondet_int() #5
  %"1052" = icmp eq i32 %"1051", 0
  br i1 %"1052", label %CdAudioDeviceControl_bb495, label %CdAudioDeviceControl_bb494

CdAudioDeviceControl_bb494:                       ; preds = %CdAudioDeviceControl_bb493
  %"1053" = call i32 @__VERIFIER_nondet_int() #5
  %"1054" = icmp eq i32 %"1053", 1
  %..i.i37 = select i1 %"1054", i32 -1073741823, i32 259
  br label %CdAudioDeviceControl_bb495

CdAudioDeviceControl_bb495:                       ; preds = %CdAudioDeviceControl_bb494, %CdAudioDeviceControl_bb493, %CdAudioDeviceControl_bb492
  %returnVal2.1.i.i38 = phi i32 [ 259, %CdAudioDeviceControl_bb492 ], [ 0, %CdAudioDeviceControl_bb493 ], [ %..i.i37, %CdAudioDeviceControl_bb494 ]
  %"1055" = load i32* @"'s", align 4
  %"1056" = load i32* @"'NP", align 4
  %"1057" = icmp eq i32 %"1055", %"1056"
  br i1 %"1057", label %CdAudioDeviceControl_bb496, label %CdAudioDeviceControl_bb497

CdAudioDeviceControl_bb496:                       ; preds = %CdAudioDeviceControl_bb495
  %"1058" = load i32* @"'IPC", align 4
  store i32 %"1058", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i38, i32* @"'lowerDriverReturn", align 4
  br label %CdAudioDeviceControl_CdAudioSendToNextDriver.exit

CdAudioDeviceControl_bb497:                       ; preds = %CdAudioDeviceControl_bb495
  %"1059" = load i32* @"'s", align 4
  %"1060" = load i32* @"'MPR1", align 4
  %"1061" = icmp eq i32 %"1059", %"1060"
  br i1 %"1061", label %CdAudioDeviceControl_bb498, label %CdAudioDeviceControl_bb501

CdAudioDeviceControl_bb498:                       ; preds = %CdAudioDeviceControl_bb497
  %"1062" = icmp eq i32 %returnVal2.1.i.i38, 259
  br i1 %"1062", label %CdAudioDeviceControl_bb499, label %CdAudioDeviceControl_bb500

CdAudioDeviceControl_bb499:                       ; preds = %CdAudioDeviceControl_bb498
  %"1063" = load i32* @"'MPR3", align 4
  store i32 %"1063", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i38, i32* @"'lowerDriverReturn", align 4
  br label %CdAudioDeviceControl_CdAudioSendToNextDriver.exit

CdAudioDeviceControl_bb500:                       ; preds = %CdAudioDeviceControl_bb498
  %"1064" = load i32* @"'NP", align 4
  store i32 %"1064", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i38, i32* @"'lowerDriverReturn", align 4
  br label %CdAudioDeviceControl_CdAudioSendToNextDriver.exit

CdAudioDeviceControl_bb501:                       ; preds = %CdAudioDeviceControl_bb497
  %"1065" = load i32* @"'s", align 4
  %"1066" = load i32* @"'SKIP1", align 4
  %"1067" = icmp eq i32 %"1065", %"1066"
  br i1 %"1067", label %CdAudioDeviceControl_bb502, label %CdAudioDeviceControl_bb503

CdAudioDeviceControl_bb502:                       ; preds = %CdAudioDeviceControl_bb501
  %"1068" = load i32* @"'SKIP2", align 4
  store i32 %"1068", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i38, i32* @"'lowerDriverReturn", align 4
  br label %CdAudioDeviceControl_CdAudioSendToNextDriver.exit

CdAudioDeviceControl_CdAudioSendToNextDriver.exit: ; preds = %CdAudioDeviceControl_AG_SetStatusAndReturn.exit11.i, %CdAudioDeviceControl_AG_SetStatusAndReturn.exit13.i, %CdAudioDeviceControl_AG_SetStatusAndReturn.exit14.i, %CdAudioDeviceControl_AG_SetStatusAndReturn.exit15.i, %CdAudioDeviceControl_AG_SetStatusAndReturn.exit.i, %CdAudioDeviceControl_AG_SetStatusAndReturn.exit2.i, %CdAudioDeviceControl_AG_SetStatusAndReturn.exit28.i, %CdAudioDeviceControl_bb300, %CdAudioDeviceControl_bb303, %CdAudioDeviceControl_bb304, %CdAudioDeviceControl_bb306, %CdAudioDeviceControl_IofCompleteRequest.exit.i, %CdAudioDeviceControl_IofCompleteRequest.exit2.i, %CdAudioDeviceControl_IofCompleteRequest.exit7.i, %CdAudioDeviceControl_IofCompleteRequest.exit8.i, %CdAudioDeviceControl_IofCompleteRequest.exit10.i, %CdAudioDeviceControl_IofCompleteRequest.exit13.i, %CdAudioDeviceControl_IofCompleteRequest.exit4.i, %CdAudioDeviceControl_IofCompleteRequest.exit15.i, %CdAudioDeviceControl_IofCompleteRequest.exit16.i, %CdAudioDeviceControl_IofCompleteRequest.exit27.i, %CdAudioDeviceControl_bb383, %CdAudioDeviceControl_bb386, %CdAudioDeviceControl_bb387, %CdAudioDeviceControl_bb389, %CdAudioDeviceControl_IofCompleteRequest.exit34.i, %CdAudioDeviceControl_bb412, %CdAudioDeviceControl_bb415, %CdAudioDeviceControl_bb416, %CdAudioDeviceControl_bb418, %CdAudioDeviceControl_IofCompleteRequest.exit.i20, %CdAudioDeviceControl_bb219, %CdAudioDeviceControl_bb222, %CdAudioDeviceControl_bb223, %CdAudioDeviceControl_bb225, %CdAudioDeviceControl_bb443, %CdAudioDeviceControl_bb446, %CdAudioDeviceControl_bb447, %CdAudioDeviceControl_bb449, %CdAudioDeviceControl_bb469, %CdAudioDeviceControl_bb472, %CdAudioDeviceControl_bb473, %CdAudioDeviceControl_bb475, %CdAudioDeviceControl_bb502, %CdAudioDeviceControl_bb500, %CdAudioDeviceControl_bb499, %CdAudioDeviceControl_bb496
  %status.1 = phi i32 [ %returnVal2.1.i.i38, %CdAudioDeviceControl_bb496 ], [ %returnVal2.1.i.i38, %CdAudioDeviceControl_bb499 ], [ %returnVal2.1.i.i38, %CdAudioDeviceControl_bb500 ], [ %returnVal2.1.i.i38, %CdAudioDeviceControl_bb502 ], [ %status.1.i, %CdAudioDeviceControl_AG_SetStatusAndReturn.exit28.i ], [ -1073741670, %CdAudioDeviceControl_AG_SetStatusAndReturn.exit.i ], [ -1073741670, %CdAudioDeviceControl_AG_SetStatusAndReturn.exit2.i ], [ -1073741670, %CdAudioDeviceControl_AG_SetStatusAndReturn.exit11.i ], [ -1073741670, %CdAudioDeviceControl_AG_SetStatusAndReturn.exit13.i ], [ -1073741670, %CdAudioDeviceControl_AG_SetStatusAndReturn.exit14.i ], [ -1073741823, %CdAudioDeviceControl_AG_SetStatusAndReturn.exit15.i ], [ %returnVal2.1.i.i.i, %CdAudioDeviceControl_bb300 ], [ %returnVal2.1.i.i.i, %CdAudioDeviceControl_bb303 ], [ %returnVal2.1.i.i.i, %CdAudioDeviceControl_bb304 ], [ %returnVal2.1.i.i.i, %CdAudioDeviceControl_bb306 ], [ %status.4.i, %CdAudioDeviceControl_IofCompleteRequest.exit34.i ], [ -1073741670, %CdAudioDeviceControl_IofCompleteRequest.exit.i ], [ -1073741670, %CdAudioDeviceControl_IofCompleteRequest.exit2.i ], [ -1073741670, %CdAudioDeviceControl_IofCompleteRequest.exit4.i ], [ -1073741670, %CdAudioDeviceControl_IofCompleteRequest.exit7.i ], [ 0, %CdAudioDeviceControl_IofCompleteRequest.exit8.i ], [ -1073741670, %CdAudioDeviceControl_IofCompleteRequest.exit10.i ], [ -1073741823, %CdAudioDeviceControl_IofCompleteRequest.exit13.i ], [ -1073741670, %CdAudioDeviceControl_IofCompleteRequest.exit15.i ], [ -1073741823, %CdAudioDeviceControl_IofCompleteRequest.exit16.i ], [ 0, %CdAudioDeviceControl_IofCompleteRequest.exit27.i ], [ %returnVal2.1.i.i.i17, %CdAudioDeviceControl_bb383 ], [ %returnVal2.1.i.i.i17, %CdAudioDeviceControl_bb386 ], [ %returnVal2.1.i.i.i17, %CdAudioDeviceControl_bb387 ], [ %returnVal2.1.i.i.i17, %CdAudioDeviceControl_bb389 ], [ %returnVal2.1.i.i32.i, %CdAudioDeviceControl_bb412 ], [ %returnVal2.1.i.i32.i, %CdAudioDeviceControl_bb415 ], [ %returnVal2.1.i.i32.i, %CdAudioDeviceControl_bb416 ], [ %returnVal2.1.i.i32.i, %CdAudioDeviceControl_bb418 ], [ -1073741670, %CdAudioDeviceControl_IofCompleteRequest.exit.i20 ], [ %returnVal2.1.i.i.i25, %CdAudioDeviceControl_bb219 ], [ %returnVal2.1.i.i.i25, %CdAudioDeviceControl_bb222 ], [ %returnVal2.1.i.i.i25, %CdAudioDeviceControl_bb223 ], [ %returnVal2.1.i.i.i25, %CdAudioDeviceControl_bb225 ], [ %returnVal2.1.i.i, %CdAudioDeviceControl_bb443 ], [ %returnVal2.1.i.i, %CdAudioDeviceControl_bb446 ], [ %returnVal2.1.i.i, %CdAudioDeviceControl_bb447 ], [ %returnVal2.1.i.i, %CdAudioDeviceControl_bb449 ], [ %returnVal2.1.i.i.i32, %CdAudioDeviceControl_bb469 ], [ %returnVal2.1.i.i.i32, %CdAudioDeviceControl_bb472 ], [ %returnVal2.1.i.i.i32, %CdAudioDeviceControl_bb473 ], [ %returnVal2.1.i.i.i32, %CdAudioDeviceControl_bb475 ]
  ret i32 %status.1

CdAudioDeviceControl_bb503:                       ; preds = %CdAudioDeviceControl_bb501
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioDeviceControl_bb504:                       ; preds = %CdAudioDeviceControl_bb478
  call void (...)* @__VERIFIER_error() #4
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @CdAudioSendToNextDriver(i32 %DeviceObject, i32 %Irp) #0 {
CdAudioSendToNextDriver_bb505:
  %"1069" = call i32 @__VERIFIER_nondet_int()
  %"1070" = call i32 @__VERIFIER_nondet_int()
  %"1071" = call i32 @__VERIFIER_nondet_int()
  %"1072" = load i32* @"'s", align 4
  %"1073" = load i32* @"'NP", align 4
  %"1074" = icmp eq i32 %"1072", %"1073"
  br i1 %"1074", label %CdAudioSendToNextDriver_bb506, label %CdAudioSendToNextDriver_bb531

CdAudioSendToNextDriver_bb506:                    ; preds = %CdAudioSendToNextDriver_bb505
  %"1075" = load i32* @"'SKIP1", align 4
  store i32 %"1075", i32* @"'s", align 4
  %"1076" = call i32 @__kittel_nondef.0() #5
  %"1077" = call i32 @__VERIFIER_nondet_int() #5
  %"1078" = call i32 @__VERIFIER_nondet_int() #5
  %"1079" = load i32* @"'compRegistered", align 4
  %"1080" = icmp ne i32 %"1079", 0
  br i1 %"1080", label %CdAudioSendToNextDriver_bb507, label %CdAudioSendToNextDriver_bb519

CdAudioSendToNextDriver_bb507:                    ; preds = %CdAudioSendToNextDriver_bb506
  %"1081" = load i32* @"'routine", align 4
  %"1082" = icmp eq i32 %"1081", 0
  br i1 %"1082", label %CdAudioSendToNextDriver_bb508, label %CdAudioSendToNextDriver_bb514

CdAudioSendToNextDriver_bb508:                    ; preds = %CdAudioSendToNextDriver_bb507
  %"1083" = call i32 @__VERIFIER_nondet_int() #5
  %"1084" = call i32 @__VERIFIER_nondet_int() #5
  %"1085" = icmp ne i32 %"1083", 0
  br i1 %"1085", label %CdAudioSendToNextDriver_bb509, label %CdAudioSendToNextDriver_bb512

CdAudioSendToNextDriver_bb509:                    ; preds = %CdAudioSendToNextDriver_bb508
  %"1086" = load i32* @"'pended", align 4
  %"1087" = icmp eq i32 %"1086", 0
  br i1 %"1087", label %CdAudioSendToNextDriver_bb510, label %CdAudioSendToNextDriver_bb511

CdAudioSendToNextDriver_bb510:                    ; preds = %CdAudioSendToNextDriver_bb509
  store i32 1, i32* @"'pended", align 4
  br label %CdAudioSendToNextDriver_bb512

CdAudioSendToNextDriver_bb511:                    ; preds = %CdAudioSendToNextDriver_bb509
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioSendToNextDriver_bb512:                    ; preds = %CdAudioSendToNextDriver_bb510, %CdAudioSendToNextDriver_bb508
  %"1088" = load i32* @"'myStatus", align 4
  %"1089" = icmp sge i32 %"1088", 0
  br i1 %"1089", label %CdAudioSendToNextDriver_bb513, label %CdAudioSendToNextDriver_HPCdrCompletion.exit.i

CdAudioSendToNextDriver_bb513:                    ; preds = %CdAudioSendToNextDriver_bb512
  %"1090" = call i32 @__VERIFIER_nondet_int() #5
  br label %CdAudioSendToNextDriver_HPCdrCompletion.exit.i

CdAudioSendToNextDriver_HPCdrCompletion.exit.i:   ; preds = %CdAudioSendToNextDriver_bb513, %CdAudioSendToNextDriver_bb512
  %"1091" = load i32* @"'myStatus", align 4
  br label %CdAudioSendToNextDriver_bb516

CdAudioSendToNextDriver_bb514:                    ; preds = %CdAudioSendToNextDriver_bb507
  %"1092" = load i32* @"'routine", align 4
  %"1093" = icmp eq i32 %"1092", 1
  br i1 %"1093", label %CdAudioSendToNextDriver_bb515, label %CdAudioSendToNextDriver_bb516

CdAudioSendToNextDriver_bb515:                    ; preds = %CdAudioSendToNextDriver_bb514
  %"1094" = call i32 @__VERIFIER_nondet_int() #5
  store i32 1, i32* @"'setEventCalled", align 4
  br label %CdAudioSendToNextDriver_bb516

CdAudioSendToNextDriver_bb516:                    ; preds = %CdAudioSendToNextDriver_bb515, %CdAudioSendToNextDriver_bb514, %CdAudioSendToNextDriver_HPCdrCompletion.exit.i
  %compRetStatus.1.i = phi i32 [ %"1091", %CdAudioSendToNextDriver_HPCdrCompletion.exit.i ], [ -1073741802, %CdAudioSendToNextDriver_bb515 ], [ %"1076", %CdAudioSendToNextDriver_bb514 ]
  %"1095" = sext i32 %compRetStatus.1.i to i64
  %"1096" = icmp eq i64 %"1095", -1073741802
  br i1 %"1096", label %CdAudioSendToNextDriver_bb517, label %CdAudioSendToNextDriver_bb519

CdAudioSendToNextDriver_bb517:                    ; preds = %CdAudioSendToNextDriver_bb516
  %"1097" = load i32* @"'s", align 4
  %"1098" = load i32* @"'NP", align 4
  %"1099" = icmp eq i32 %"1097", %"1098"
  br i1 %"1099", label %CdAudioSendToNextDriver_stubMoreProcessingRequired.exit.i, label %CdAudioSendToNextDriver_bb518

CdAudioSendToNextDriver_stubMoreProcessingRequired.exit.i: ; preds = %CdAudioSendToNextDriver_bb517
  %"1100" = load i32* @"'MPR1", align 4
  store i32 %"1100", i32* @"'s", align 4
  br label %CdAudioSendToNextDriver_bb519

CdAudioSendToNextDriver_bb518:                    ; preds = %CdAudioSendToNextDriver_bb517
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioSendToNextDriver_bb519:                    ; preds = %CdAudioSendToNextDriver_stubMoreProcessingRequired.exit.i, %CdAudioSendToNextDriver_bb516, %CdAudioSendToNextDriver_bb506
  %"1101" = icmp ne i32 %"1077", 0
  br i1 %"1101", label %CdAudioSendToNextDriver_bb522, label %CdAudioSendToNextDriver_bb520

CdAudioSendToNextDriver_bb520:                    ; preds = %CdAudioSendToNextDriver_bb519
  %"1102" = call i32 @__VERIFIER_nondet_int() #5
  %"1103" = icmp eq i32 %"1102", 0
  br i1 %"1103", label %CdAudioSendToNextDriver_bb522, label %CdAudioSendToNextDriver_bb521

CdAudioSendToNextDriver_bb521:                    ; preds = %CdAudioSendToNextDriver_bb520
  %"1104" = call i32 @__VERIFIER_nondet_int() #5
  %"1105" = icmp eq i32 %"1104", 1
  %..i = select i1 %"1105", i32 -1073741823, i32 259
  br label %CdAudioSendToNextDriver_bb522

CdAudioSendToNextDriver_bb522:                    ; preds = %CdAudioSendToNextDriver_bb521, %CdAudioSendToNextDriver_bb520, %CdAudioSendToNextDriver_bb519
  %returnVal2.1.i = phi i32 [ 259, %CdAudioSendToNextDriver_bb519 ], [ 0, %CdAudioSendToNextDriver_bb520 ], [ %..i, %CdAudioSendToNextDriver_bb521 ]
  %"1106" = load i32* @"'s", align 4
  %"1107" = load i32* @"'NP", align 4
  %"1108" = icmp eq i32 %"1106", %"1107"
  br i1 %"1108", label %CdAudioSendToNextDriver_bb523, label %CdAudioSendToNextDriver_bb524

CdAudioSendToNextDriver_bb523:                    ; preds = %CdAudioSendToNextDriver_bb522
  %"1109" = load i32* @"'IPC", align 4
  store i32 %"1109", i32* @"'s", align 4
  store i32 %returnVal2.1.i, i32* @"'lowerDriverReturn", align 4
  br label %CdAudioSendToNextDriver_IofCallDriver.exit

CdAudioSendToNextDriver_bb524:                    ; preds = %CdAudioSendToNextDriver_bb522
  %"1110" = load i32* @"'s", align 4
  %"1111" = load i32* @"'MPR1", align 4
  %"1112" = icmp eq i32 %"1110", %"1111"
  br i1 %"1112", label %CdAudioSendToNextDriver_bb525, label %CdAudioSendToNextDriver_bb528

CdAudioSendToNextDriver_bb525:                    ; preds = %CdAudioSendToNextDriver_bb524
  %"1113" = icmp eq i32 %returnVal2.1.i, 259
  br i1 %"1113", label %CdAudioSendToNextDriver_bb526, label %CdAudioSendToNextDriver_bb527

CdAudioSendToNextDriver_bb526:                    ; preds = %CdAudioSendToNextDriver_bb525
  %"1114" = load i32* @"'MPR3", align 4
  store i32 %"1114", i32* @"'s", align 4
  store i32 %returnVal2.1.i, i32* @"'lowerDriverReturn", align 4
  br label %CdAudioSendToNextDriver_IofCallDriver.exit

CdAudioSendToNextDriver_bb527:                    ; preds = %CdAudioSendToNextDriver_bb525
  %"1115" = load i32* @"'NP", align 4
  store i32 %"1115", i32* @"'s", align 4
  store i32 %returnVal2.1.i, i32* @"'lowerDriverReturn", align 4
  br label %CdAudioSendToNextDriver_IofCallDriver.exit

CdAudioSendToNextDriver_bb528:                    ; preds = %CdAudioSendToNextDriver_bb524
  %"1116" = load i32* @"'s", align 4
  %"1117" = load i32* @"'SKIP1", align 4
  %"1118" = icmp eq i32 %"1116", %"1117"
  br i1 %"1118", label %CdAudioSendToNextDriver_bb529, label %CdAudioSendToNextDriver_bb530

CdAudioSendToNextDriver_bb529:                    ; preds = %CdAudioSendToNextDriver_bb528
  %"1119" = load i32* @"'SKIP2", align 4
  store i32 %"1119", i32* @"'s", align 4
  store i32 %returnVal2.1.i, i32* @"'lowerDriverReturn", align 4
  br label %CdAudioSendToNextDriver_IofCallDriver.exit

CdAudioSendToNextDriver_IofCallDriver.exit:       ; preds = %CdAudioSendToNextDriver_bb523, %CdAudioSendToNextDriver_bb526, %CdAudioSendToNextDriver_bb527, %CdAudioSendToNextDriver_bb529
  ret i32 %returnVal2.1.i

CdAudioSendToNextDriver_bb530:                    ; preds = %CdAudioSendToNextDriver_bb528
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioSendToNextDriver_bb531:                    ; preds = %CdAudioSendToNextDriver_bb505
  call void (...)* @__VERIFIER_error() #4
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @CdAudioIsPlayActive(i32 %DeviceObject) #0 {
CdAudioIsPlayActive_bb532:
  %"1120" = call i32 @__VERIFIER_nondet_int()
  %"1121" = call i32 @__VERIFIER_nondet_int()
  %"1122" = call i32 @__VERIFIER_nondet_int()
  %"1123" = call i32 @__VERIFIER_nondet_int()
  %"1124" = call i32 @__VERIFIER_nondet_int()
  %"1125" = call i32 @__VERIFIER_nondet_int()
  %"1126" = call i32 @__VERIFIER_nondet_int()
  %"1127" = icmp eq i32 %"1120", 0
  %"1128" = icmp eq i32 %"1126", 0
  %or.cond = or i1 %"1127", %"1128"
  %"1129" = icmp eq i32 %"1123", 0
  %or.cond1 = or i1 %or.cond, %"1129"
  br i1 %or.cond1, label %CdAudioIsPlayActive_bb542, label %CdAudioIsPlayActive_bb533

CdAudioIsPlayActive_bb533:                        ; preds = %CdAudioIsPlayActive_bb532
  %"1130" = sext i32 %"1125" to i64
  %"1131" = icmp eq i64 %"1130", 259
  br i1 %"1131", label %CdAudioIsPlayActive_bb534, label %CdAudioIsPlayActive_bb540

CdAudioIsPlayActive_bb534:                        ; preds = %CdAudioIsPlayActive_bb533
  %"1132" = load i32* @"'s", align 4
  %"1133" = load i32* @"'MPR3", align 4
  %"1134" = icmp eq i32 %"1132", %"1133"
  %"1135" = load i32* @"'setEventCalled", align 4
  %"1136" = icmp eq i32 %"1135", 1
  %or.cond.i = and i1 %"1134", %"1136"
  br i1 %or.cond.i, label %CdAudioIsPlayActive_bb535, label %CdAudioIsPlayActive_bb536

CdAudioIsPlayActive_bb535:                        ; preds = %CdAudioIsPlayActive_bb534
  %"1137" = load i32* @"'NP", align 4
  store i32 %"1137", i32* @"'s", align 4
  store i32 0, i32* @"'setEventCalled", align 4
  br label %CdAudioIsPlayActive_KeWaitForSingleObject.exit

CdAudioIsPlayActive_bb536:                        ; preds = %CdAudioIsPlayActive_bb534
  %"1138" = load i32* @"'customIrp", align 4
  %"1139" = icmp eq i32 %"1138", 1
  br i1 %"1139", label %CdAudioIsPlayActive_bb537, label %CdAudioIsPlayActive_bb538

CdAudioIsPlayActive_bb537:                        ; preds = %CdAudioIsPlayActive_bb536
  %"1140" = load i32* @"'NP", align 4
  store i32 %"1140", i32* @"'s", align 4
  store i32 0, i32* @"'customIrp", align 4
  br label %CdAudioIsPlayActive_KeWaitForSingleObject.exit

CdAudioIsPlayActive_bb538:                        ; preds = %CdAudioIsPlayActive_bb536
  %"1141" = load i32* @"'s", align 4
  %"1142" = load i32* @"'MPR3", align 4
  %"1143" = icmp eq i32 %"1141", %"1142"
  br i1 %"1143", label %CdAudioIsPlayActive_bb539, label %CdAudioIsPlayActive_KeWaitForSingleObject.exit

CdAudioIsPlayActive_bb539:                        ; preds = %CdAudioIsPlayActive_bb538
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioIsPlayActive_KeWaitForSingleObject.exit:   ; preds = %CdAudioIsPlayActive_bb535, %CdAudioIsPlayActive_bb537, %CdAudioIsPlayActive_bb538
  %"1144" = call i32 @__VERIFIER_nondet_int() #5
  br label %CdAudioIsPlayActive_bb540

CdAudioIsPlayActive_bb540:                        ; preds = %CdAudioIsPlayActive_KeWaitForSingleObject.exit, %CdAudioIsPlayActive_bb533
  %status.0 = phi i32 [ %"1121", %CdAudioIsPlayActive_KeWaitForSingleObject.exit ], [ %"1125", %CdAudioIsPlayActive_bb533 ]
  %"1145" = icmp slt i32 %status.0, 0
  br i1 %"1145", label %CdAudioIsPlayActive_bb542, label %CdAudioIsPlayActive_bb541

CdAudioIsPlayActive_bb541:                        ; preds = %CdAudioIsPlayActive_bb540
  %"1146" = icmp eq i32 %"1122", 17
  %. = select i1 %"1146", i32 1, i32 0
  br label %CdAudioIsPlayActive_bb542

CdAudioIsPlayActive_bb542:                        ; preds = %CdAudioIsPlayActive_bb532, %CdAudioIsPlayActive_bb540, %CdAudioIsPlayActive_bb541
  %.0 = phi i32 [ %., %CdAudioIsPlayActive_bb541 ], [ 0, %CdAudioIsPlayActive_bb532 ], [ 0, %CdAudioIsPlayActive_bb540 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @CdAudio535DeviceControl(i32 %DeviceObject, i32 %Irp) #0 {
CdAudio535DeviceControl_bb543:
  %"1147" = call i32 @__VERIFIER_nondet_int()
  %"1148" = call i32 @__VERIFIER_nondet_int()
  %"1149" = call i32 @__VERIFIER_nondet_int()
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
  %"1161" = call i32 @__VERIFIER_nondet_int()
  %"1162" = call i32 @__VERIFIER_nondet_int()
  %"1163" = call i32 @__VERIFIER_nondet_int()
  %"1164" = call i32 @__VERIFIER_nondet_int()
  %"1165" = call i32 @__VERIFIER_nondet_int()
  %"1166" = call i32 @__VERIFIER_nondet_int()
  %"1167" = call i32 @__VERIFIER_nondet_int()
  %"1168" = call i32 @__VERIFIER_nondet_int()
  %"1169" = call i32 @__VERIFIER_nondet_int()
  %"1170" = call i32 @__VERIFIER_nondet_int()
  %"1171" = call i32 @__VERIFIER_nondet_int()
  %"1172" = call i32 @__VERIFIER_nondet_int()
  %"1173" = call i32 @__VERIFIER_nondet_int()
  %"1174" = call i32 @__VERIFIER_nondet_int()
  %"1175" = call i32 @__VERIFIER_nondet_int()
  %"1176" = call i32 @__VERIFIER_nondet_int()
  br label %CdAudio535DeviceControl_NodeBlock65

CdAudio535DeviceControl_NodeBlock65:              ; preds = %CdAudio535DeviceControl_bb543
  %Pivot66 = icmp slt i32 %"1152", 147500
  br i1 %Pivot66, label %CdAudio535DeviceControl_NodeBlock45, label %CdAudio535DeviceControl_NodeBlock63

CdAudio535DeviceControl_NodeBlock45:              ; preds = %CdAudio535DeviceControl_NodeBlock65
  %Pivot46 = icmp slt i32 %"1152", 147476
  br i1 %Pivot46, label %CdAudio535DeviceControl_NodeBlock, label %CdAudio535DeviceControl_NodeBlock43

CdAudio535DeviceControl_NodeBlock:                ; preds = %CdAudio535DeviceControl_NodeBlock45
  %Pivot = icmp slt i32 %"1152", 147460
  br i1 %Pivot, label %CdAudio535DeviceControl_LeafBlock, label %CdAudio535DeviceControl_LeafBlock33

CdAudio535DeviceControl_LeafBlock:                ; preds = %CdAudio535DeviceControl_NodeBlock
  %SwitchLeaf = icmp eq i32 %"1152", 147456
  br i1 %SwitchLeaf, label %CdAudio535DeviceControl_bb544, label %CdAudio535DeviceControl_NewDefault

CdAudio535DeviceControl_bb544:                    ; preds = %CdAudio535DeviceControl_LeafBlock
  %"1177" = icmp ne i32 %"1153", 0
  br i1 %"1177", label %CdAudio535DeviceControl_bb603, label %CdAudio535DeviceControl_bb545

CdAudio535DeviceControl_bb545:                    ; preds = %CdAudio535DeviceControl_bb544
  %"1178" = call i32 @__VERIFIER_nondet_int() #5
  %"1179" = call i32 @__VERIFIER_nondet_int() #5
  %"1180" = call i32 @__VERIFIER_nondet_int() #5
  %"1181" = call i32 @__VERIFIER_nondet_int() #5
  %"1182" = call i32 @__VERIFIER_nondet_int() #5
  %"1183" = call i32 @__VERIFIER_nondet_int() #5
  %"1184" = call i32 @__VERIFIER_nondet_int() #5
  %"1185" = icmp eq i32 %"1178", 0
  %"1186" = icmp eq i32 %"1184", 0
  %or.cond.i3 = or i1 %"1185", %"1186"
  %"1187" = icmp eq i32 %"1181", 0
  %or.cond1.i4 = or i1 %or.cond.i3, %"1187"
  br i1 %or.cond1.i4, label %CdAudio535DeviceControl_CdAudioIsPlayActive.exit10, label %CdAudio535DeviceControl_bb546

CdAudio535DeviceControl_bb546:                    ; preds = %CdAudio535DeviceControl_bb545
  %"1188" = sext i32 %"1183" to i64
  %"1189" = icmp eq i64 %"1188", 259
  br i1 %"1189", label %CdAudio535DeviceControl_bb547, label %CdAudio535DeviceControl_bb553

CdAudio535DeviceControl_bb547:                    ; preds = %CdAudio535DeviceControl_bb546
  %"1190" = load i32* @"'s", align 4
  %"1191" = load i32* @"'MPR3", align 4
  %"1192" = icmp eq i32 %"1190", %"1191"
  %"1193" = load i32* @"'setEventCalled", align 4
  %"1194" = icmp eq i32 %"1193", 1
  %or.cond.i.i5 = and i1 %"1192", %"1194"
  br i1 %or.cond.i.i5, label %CdAudio535DeviceControl_bb548, label %CdAudio535DeviceControl_bb549

CdAudio535DeviceControl_bb548:                    ; preds = %CdAudio535DeviceControl_bb547
  %"1195" = load i32* @"'NP", align 4
  store i32 %"1195", i32* @"'s", align 4
  store i32 0, i32* @"'setEventCalled", align 4
  br label %CdAudio535DeviceControl_KeWaitForSingleObject.exit.i6

CdAudio535DeviceControl_bb549:                    ; preds = %CdAudio535DeviceControl_bb547
  %"1196" = load i32* @"'customIrp", align 4
  %"1197" = icmp eq i32 %"1196", 1
  br i1 %"1197", label %CdAudio535DeviceControl_bb550, label %CdAudio535DeviceControl_bb551

CdAudio535DeviceControl_bb550:                    ; preds = %CdAudio535DeviceControl_bb549
  %"1198" = load i32* @"'NP", align 4
  store i32 %"1198", i32* @"'s", align 4
  store i32 0, i32* @"'customIrp", align 4
  br label %CdAudio535DeviceControl_KeWaitForSingleObject.exit.i6

CdAudio535DeviceControl_bb551:                    ; preds = %CdAudio535DeviceControl_bb549
  %"1199" = load i32* @"'s", align 4
  %"1200" = load i32* @"'MPR3", align 4
  %"1201" = icmp eq i32 %"1199", %"1200"
  br i1 %"1201", label %CdAudio535DeviceControl_bb552, label %CdAudio535DeviceControl_KeWaitForSingleObject.exit.i6

CdAudio535DeviceControl_bb552:                    ; preds = %CdAudio535DeviceControl_bb551
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudio535DeviceControl_KeWaitForSingleObject.exit.i6: ; preds = %CdAudio535DeviceControl_bb551, %CdAudio535DeviceControl_bb550, %CdAudio535DeviceControl_bb548
  %"1202" = call i32 @__VERIFIER_nondet_int() #5
  br label %CdAudio535DeviceControl_bb553

CdAudio535DeviceControl_bb553:                    ; preds = %CdAudio535DeviceControl_KeWaitForSingleObject.exit.i6, %CdAudio535DeviceControl_bb546
  %status.0.i7 = phi i32 [ %"1179", %CdAudio535DeviceControl_KeWaitForSingleObject.exit.i6 ], [ %"1183", %CdAudio535DeviceControl_bb546 ]
  %"1203" = icmp slt i32 %status.0.i7, 0
  br i1 %"1203", label %CdAudio535DeviceControl_CdAudioIsPlayActive.exit10, label %CdAudio535DeviceControl_bb554

CdAudio535DeviceControl_bb554:                    ; preds = %CdAudio535DeviceControl_bb553
  %"1204" = icmp eq i32 %"1180", 17
  %..i8 = select i1 %"1204", i32 1, i32 0
  br label %CdAudio535DeviceControl_CdAudioIsPlayActive.exit10

CdAudio535DeviceControl_CdAudioIsPlayActive.exit10: ; preds = %CdAudio535DeviceControl_bb545, %CdAudio535DeviceControl_bb553, %CdAudio535DeviceControl_bb554
  %.0.i9 = phi i32 [ %..i8, %CdAudio535DeviceControl_bb554 ], [ 0, %CdAudio535DeviceControl_bb545 ], [ 0, %CdAudio535DeviceControl_bb553 ]
  %"1205" = icmp ne i32 %.0.i9, 0
  br i1 %"1205", label %CdAudio535DeviceControl_bb603, label %CdAudio535DeviceControl_bb555

CdAudio535DeviceControl_bb555:                    ; preds = %CdAudio535DeviceControl_CdAudioIsPlayActive.exit10
  %"1206" = icmp eq i32 %"1175", 0
  br i1 %"1206", label %CdAudio535DeviceControl_bb556, label %CdAudio535DeviceControl_bb558

CdAudio535DeviceControl_bb556:                    ; preds = %CdAudio535DeviceControl_bb555
  store i32 -1073741670, i32* @"'myStatus", align 4
  %"1207" = load i32* @"'s", align 4
  %"1208" = load i32* @"'NP", align 4
  %"1209" = icmp eq i32 %"1207", %"1208"
  br i1 %"1209", label %CdAudio535DeviceControl_AG_SetStatusAndReturn.exit11, label %CdAudio535DeviceControl_bb557

CdAudio535DeviceControl_AG_SetStatusAndReturn.exit11: ; preds = %CdAudio535DeviceControl_bb556
  %"1210" = load i32* @"'DC", align 4
  store i32 %"1210", i32* @"'s", align 4
  br label %CdAudio535DeviceControl_CdAudioSendToNextDriver.exit

CdAudio535DeviceControl_bb557:                    ; preds = %CdAudio535DeviceControl_bb556
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudio535DeviceControl_bb558:                    ; preds = %CdAudio535DeviceControl_bb555
  %"1211" = call i32 @__VERIFIER_nondet_int() #5
  %"1212" = call i32 @__VERIFIER_nondet_int() #5
  %"1213" = call i32 @__VERIFIER_nondet_int() #5
  %"1214" = icmp sge i32 -1073741670, 0
  %"1215" = sext i32 -1073741670 to i64
  %"1216" = icmp ne i64 %"1215", -1073741764
  %or.cond = and i1 %"1214", %"1216"
  br i1 %or.cond, label %CdAudio535DeviceControl_bb562, label %CdAudio535DeviceControl_bb559

CdAudio535DeviceControl_bb559:                    ; preds = %CdAudio535DeviceControl_bb558
  %"1217" = sext i32 -1073741670 to i64
  %"1218" = icmp ne i64 %"1217", -1073741764
  br i1 %"1218", label %CdAudio535DeviceControl_bb560, label %CdAudio535DeviceControl_bb562

CdAudio535DeviceControl_bb560:                    ; preds = %CdAudio535DeviceControl_bb559
  store i32 -1073741670, i32* @"'myStatus", align 4
  %"1219" = load i32* @"'s", align 4
  %"1220" = load i32* @"'NP", align 4
  %"1221" = icmp eq i32 %"1219", %"1220"
  br i1 %"1221", label %CdAudio535DeviceControl_AG_SetStatusAndReturn.exit13, label %CdAudio535DeviceControl_bb561

CdAudio535DeviceControl_AG_SetStatusAndReturn.exit13: ; preds = %CdAudio535DeviceControl_bb560
  %"1222" = load i32* @"'DC", align 4
  store i32 %"1222", i32* @"'s", align 4
  br label %CdAudio535DeviceControl_CdAudioSendToNextDriver.exit

CdAudio535DeviceControl_bb561:                    ; preds = %CdAudio535DeviceControl_bb560
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudio535DeviceControl_bb562:                    ; preds = %CdAudio535DeviceControl_bb558, %CdAudio535DeviceControl_bb559
  %status.0 = phi i32 [ -1073741670, %CdAudio535DeviceControl_bb559 ], [ 0, %CdAudio535DeviceControl_bb558 ]
  br label %CdAudio535DeviceControl_bb603

CdAudio535DeviceControl_LeafBlock33:              ; preds = %CdAudio535DeviceControl_NodeBlock
  %SwitchLeaf34 = icmp eq i32 %"1152", 147460
  br i1 %SwitchLeaf34, label %CdAudio535DeviceControl_bb563, label %CdAudio535DeviceControl_NewDefault

CdAudio535DeviceControl_bb563:                    ; preds = %CdAudio535DeviceControl_LeafBlock33
  %"1223" = icmp slt i32 %"1154", %"1170"
  br i1 %"1223", label %CdAudio535DeviceControl_bb603, label %CdAudio535DeviceControl_bb564

CdAudio535DeviceControl_bb564:                    ; preds = %CdAudio535DeviceControl_bb563
  %"1224" = call i32 @__VERIFIER_nondet_int() #5
  %"1225" = call i32 @__VERIFIER_nondet_int() #5
  %"1226" = call i32 @__VERIFIER_nondet_int() #5
  br label %CdAudio535DeviceControl_bb603

CdAudio535DeviceControl_NodeBlock43:              ; preds = %CdAudio535DeviceControl_NodeBlock45
  %Pivot44 = icmp slt i32 %"1152", 147480
  br i1 %Pivot44, label %CdAudio535DeviceControl_LeafBlock35, label %CdAudio535DeviceControl_NodeBlock41

CdAudio535DeviceControl_LeafBlock35:              ; preds = %CdAudio535DeviceControl_NodeBlock43
  %SwitchLeaf36 = icmp eq i32 %"1152", 147476
  br i1 %SwitchLeaf36, label %CdAudio535DeviceControl_bb603, label %CdAudio535DeviceControl_NewDefault

CdAudio535DeviceControl_NodeBlock41:              ; preds = %CdAudio535DeviceControl_NodeBlock43
  %Pivot42 = icmp slt i32 %"1152", 147496
  br i1 %Pivot42, label %CdAudio535DeviceControl_LeafBlock37, label %CdAudio535DeviceControl_LeafBlock39

CdAudio535DeviceControl_LeafBlock37:              ; preds = %CdAudio535DeviceControl_NodeBlock41
  %SwitchLeaf38 = icmp eq i32 %"1152", 147480
  br i1 %SwitchLeaf38, label %CdAudio535DeviceControl_bb565, label %CdAudio535DeviceControl_NewDefault

CdAudio535DeviceControl_bb565:                    ; preds = %CdAudio535DeviceControl_LeafBlock37
  %"1227" = icmp slt i32 %"1154", %"1162"
  br i1 %"1227", label %CdAudio535DeviceControl_bb603, label %CdAudio535DeviceControl_bb566

CdAudio535DeviceControl_bb566:                    ; preds = %CdAudio535DeviceControl_bb565
  %"1228" = icmp eq i32 %"1163", %"1164"
  %"1229" = icmp eq i32 %"1165", %"1166"
  %or.cond30 = and i1 %"1228", %"1229"
  br i1 %or.cond30, label %CdAudio535DeviceControl_bb567, label %CdAudio535DeviceControl_bb568

CdAudio535DeviceControl_bb567:                    ; preds = %CdAudio535DeviceControl_bb566
  br label %CdAudio535DeviceControl_bb568

CdAudio535DeviceControl_bb568:                    ; preds = %CdAudio535DeviceControl_bb567, %CdAudio535DeviceControl_bb566
  %"1230" = call i32 @__VERIFIER_nondet_int() #5
  %"1231" = call i32 @__VERIFIER_nondet_int() #5
  %"1232" = call i32 @__VERIFIER_nondet_int() #5
  %"1233" = icmp sge i32 -1073741670, 0
  br i1 %"1233", label %CdAudio535DeviceControl_bb569, label %CdAudio535DeviceControl_bb603

CdAudio535DeviceControl_bb569:                    ; preds = %CdAudio535DeviceControl_bb568
  br label %CdAudio535DeviceControl_bb603

CdAudio535DeviceControl_LeafBlock39:              ; preds = %CdAudio535DeviceControl_NodeBlock41
  %SwitchLeaf40 = icmp eq i32 %"1152", 147496
  br i1 %SwitchLeaf40, label %CdAudio535DeviceControl_bb603, label %CdAudio535DeviceControl_NewDefault

CdAudio535DeviceControl_NodeBlock63:              ; preds = %CdAudio535DeviceControl_NodeBlock65
  %Pivot64 = icmp slt i32 %"1152", 147512
  br i1 %Pivot64, label %CdAudio535DeviceControl_NodeBlock51, label %CdAudio535DeviceControl_NodeBlock61

CdAudio535DeviceControl_NodeBlock51:              ; preds = %CdAudio535DeviceControl_NodeBlock63
  %Pivot52 = icmp slt i32 %"1152", 147508
  br i1 %Pivot52, label %CdAudio535DeviceControl_LeafBlock47, label %CdAudio535DeviceControl_LeafBlock49

CdAudio535DeviceControl_LeafBlock47:              ; preds = %CdAudio535DeviceControl_NodeBlock51
  %SwitchLeaf48 = icmp eq i32 %"1152", 147500
  br i1 %SwitchLeaf48, label %CdAudio535DeviceControl_bb570, label %CdAudio535DeviceControl_NewDefault

CdAudio535DeviceControl_bb570:                    ; preds = %CdAudio535DeviceControl_LeafBlock47
  %"1234" = icmp slt i32 %"1153", %"1160"
  br i1 %"1234", label %CdAudio535DeviceControl_bb603, label %CdAudio535DeviceControl_bb571

CdAudio535DeviceControl_bb571:                    ; preds = %CdAudio535DeviceControl_bb570
  %"1235" = icmp eq i32 %"1176", 0
  br i1 %"1235", label %CdAudio535DeviceControl_bb572, label %CdAudio535DeviceControl_bb574

CdAudio535DeviceControl_bb572:                    ; preds = %CdAudio535DeviceControl_bb571
  store i32 -1073741670, i32* @"'myStatus", align 4
  %"1236" = load i32* @"'s", align 4
  %"1237" = load i32* @"'NP", align 4
  %"1238" = icmp eq i32 %"1236", %"1237"
  br i1 %"1238", label %CdAudio535DeviceControl_AG_SetStatusAndReturn.exit14, label %CdAudio535DeviceControl_bb573

CdAudio535DeviceControl_AG_SetStatusAndReturn.exit14: ; preds = %CdAudio535DeviceControl_bb572
  %"1239" = load i32* @"'DC", align 4
  store i32 %"1239", i32* @"'s", align 4
  br label %CdAudio535DeviceControl_CdAudioSendToNextDriver.exit

CdAudio535DeviceControl_bb573:                    ; preds = %CdAudio535DeviceControl_bb572
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudio535DeviceControl_bb574:                    ; preds = %CdAudio535DeviceControl_bb571
  %"1240" = icmp ne i32 %"1161", 1
  br i1 %"1240", label %CdAudio535DeviceControl_bb575, label %CdAudio535DeviceControl_bb577

CdAudio535DeviceControl_bb575:                    ; preds = %CdAudio535DeviceControl_bb574
  store i32 -1073741823, i32* @"'myStatus", align 4
  %"1241" = load i32* @"'s", align 4
  %"1242" = load i32* @"'NP", align 4
  %"1243" = icmp eq i32 %"1241", %"1242"
  br i1 %"1243", label %CdAudio535DeviceControl_AG_SetStatusAndReturn.exit15, label %CdAudio535DeviceControl_bb576

CdAudio535DeviceControl_AG_SetStatusAndReturn.exit15: ; preds = %CdAudio535DeviceControl_bb575
  %"1244" = load i32* @"'DC", align 4
  store i32 %"1244", i32* @"'s", align 4
  br label %CdAudio535DeviceControl_CdAudioSendToNextDriver.exit

CdAudio535DeviceControl_bb576:                    ; preds = %CdAudio535DeviceControl_bb575
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudio535DeviceControl_bb577:                    ; preds = %CdAudio535DeviceControl_bb574
  %"1245" = call i32 @__VERIFIER_nondet_int() #5
  %"1246" = call i32 @__VERIFIER_nondet_int() #5
  %"1247" = call i32 @__VERIFIER_nondet_int() #5
  br label %CdAudio535DeviceControl_bb603

CdAudio535DeviceControl_LeafBlock49:              ; preds = %CdAudio535DeviceControl_NodeBlock51
  %SwitchLeaf50 = icmp eq i32 %"1152", 147508
  br i1 %SwitchLeaf50, label %CdAudio535DeviceControl_bb603, label %CdAudio535DeviceControl_NewDefault

CdAudio535DeviceControl_NodeBlock61:              ; preds = %CdAudio535DeviceControl_NodeBlock63
  %Pivot62 = icmp slt i32 %"1152", 149504
  br i1 %Pivot62, label %CdAudio535DeviceControl_LeafBlock53, label %CdAudio535DeviceControl_NodeBlock59

CdAudio535DeviceControl_LeafBlock53:              ; preds = %CdAudio535DeviceControl_NodeBlock61
  %SwitchLeaf54 = icmp eq i32 %"1152", 147512
  br i1 %SwitchLeaf54, label %CdAudio535DeviceControl_bb578, label %CdAudio535DeviceControl_NewDefault

CdAudio535DeviceControl_bb578:                    ; preds = %CdAudio535DeviceControl_LeafBlock53
  %"1248" = call i32 @__VERIFIER_nondet_int() #5
  %"1249" = call i32 @__VERIFIER_nondet_int() #5
  %"1250" = call i32 @__VERIFIER_nondet_int() #5
  %"1251" = call i32 @__VERIFIER_nondet_int() #5
  %"1252" = call i32 @__VERIFIER_nondet_int() #5
  %"1253" = call i32 @__VERIFIER_nondet_int() #5
  %"1254" = call i32 @__VERIFIER_nondet_int() #5
  %"1255" = icmp eq i32 %"1248", 0
  %"1256" = icmp eq i32 %"1254", 0
  %or.cond.i = or i1 %"1255", %"1256"
  %"1257" = icmp eq i32 %"1251", 0
  %or.cond1.i = or i1 %or.cond.i, %"1257"
  br i1 %or.cond1.i, label %CdAudio535DeviceControl_CdAudioIsPlayActive.exit, label %CdAudio535DeviceControl_bb579

CdAudio535DeviceControl_bb579:                    ; preds = %CdAudio535DeviceControl_bb578
  %"1258" = sext i32 %"1253" to i64
  %"1259" = icmp eq i64 %"1258", 259
  br i1 %"1259", label %CdAudio535DeviceControl_bb580, label %CdAudio535DeviceControl_bb586

CdAudio535DeviceControl_bb580:                    ; preds = %CdAudio535DeviceControl_bb579
  %"1260" = load i32* @"'s", align 4
  %"1261" = load i32* @"'MPR3", align 4
  %"1262" = icmp eq i32 %"1260", %"1261"
  %"1263" = load i32* @"'setEventCalled", align 4
  %"1264" = icmp eq i32 %"1263", 1
  %or.cond.i.i = and i1 %"1262", %"1264"
  br i1 %or.cond.i.i, label %CdAudio535DeviceControl_bb581, label %CdAudio535DeviceControl_bb582

CdAudio535DeviceControl_bb581:                    ; preds = %CdAudio535DeviceControl_bb580
  %"1265" = load i32* @"'NP", align 4
  store i32 %"1265", i32* @"'s", align 4
  store i32 0, i32* @"'setEventCalled", align 4
  br label %CdAudio535DeviceControl_KeWaitForSingleObject.exit.i

CdAudio535DeviceControl_bb582:                    ; preds = %CdAudio535DeviceControl_bb580
  %"1266" = load i32* @"'customIrp", align 4
  %"1267" = icmp eq i32 %"1266", 1
  br i1 %"1267", label %CdAudio535DeviceControl_bb583, label %CdAudio535DeviceControl_bb584

CdAudio535DeviceControl_bb583:                    ; preds = %CdAudio535DeviceControl_bb582
  %"1268" = load i32* @"'NP", align 4
  store i32 %"1268", i32* @"'s", align 4
  store i32 0, i32* @"'customIrp", align 4
  br label %CdAudio535DeviceControl_KeWaitForSingleObject.exit.i

CdAudio535DeviceControl_bb584:                    ; preds = %CdAudio535DeviceControl_bb582
  %"1269" = load i32* @"'s", align 4
  %"1270" = load i32* @"'MPR3", align 4
  %"1271" = icmp eq i32 %"1269", %"1270"
  br i1 %"1271", label %CdAudio535DeviceControl_bb585, label %CdAudio535DeviceControl_KeWaitForSingleObject.exit.i

CdAudio535DeviceControl_bb585:                    ; preds = %CdAudio535DeviceControl_bb584
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudio535DeviceControl_KeWaitForSingleObject.exit.i: ; preds = %CdAudio535DeviceControl_bb584, %CdAudio535DeviceControl_bb583, %CdAudio535DeviceControl_bb581
  %"1272" = call i32 @__VERIFIER_nondet_int() #5
  br label %CdAudio535DeviceControl_bb586

CdAudio535DeviceControl_bb586:                    ; preds = %CdAudio535DeviceControl_KeWaitForSingleObject.exit.i, %CdAudio535DeviceControl_bb579
  %status.0.i = phi i32 [ %"1249", %CdAudio535DeviceControl_KeWaitForSingleObject.exit.i ], [ %"1253", %CdAudio535DeviceControl_bb579 ]
  %"1273" = icmp slt i32 %status.0.i, 0
  br i1 %"1273", label %CdAudio535DeviceControl_CdAudioIsPlayActive.exit, label %CdAudio535DeviceControl_bb587

CdAudio535DeviceControl_bb587:                    ; preds = %CdAudio535DeviceControl_bb586
  %"1274" = icmp eq i32 %"1250", 17
  %..i = select i1 %"1274", i32 1, i32 0
  br label %CdAudio535DeviceControl_CdAudioIsPlayActive.exit

CdAudio535DeviceControl_CdAudioIsPlayActive.exit: ; preds = %CdAudio535DeviceControl_bb578, %CdAudio535DeviceControl_bb586, %CdAudio535DeviceControl_bb587
  %.0.i = phi i32 [ %..i, %CdAudio535DeviceControl_bb587 ], [ 0, %CdAudio535DeviceControl_bb578 ], [ 0, %CdAudio535DeviceControl_bb586 ]
  %"1275" = icmp ne i32 %.0.i, 0
  br i1 %"1275", label %CdAudio535DeviceControl_bb603, label %CdAudio535DeviceControl_bb588

CdAudio535DeviceControl_bb588:                    ; preds = %CdAudio535DeviceControl_CdAudioIsPlayActive.exit
  %"1276" = icmp ne i32 %"1153", 0
  br i1 %"1276", label %CdAudio535DeviceControl_bb603, label %CdAudio535DeviceControl_bb589

CdAudio535DeviceControl_bb589:                    ; preds = %CdAudio535DeviceControl_bb588
  %"1277" = icmp eq i32 %"1172", 0
  br i1 %"1277", label %CdAudio535DeviceControl_bb590, label %CdAudio535DeviceControl_bb592

CdAudio535DeviceControl_bb590:                    ; preds = %CdAudio535DeviceControl_bb589
  store i32 -1073741670, i32* @"'myStatus", align 4
  %"1278" = load i32* @"'s", align 4
  %"1279" = load i32* @"'NP", align 4
  %"1280" = icmp eq i32 %"1278", %"1279"
  br i1 %"1280", label %CdAudio535DeviceControl_AG_SetStatusAndReturn.exit, label %CdAudio535DeviceControl_bb591

CdAudio535DeviceControl_AG_SetStatusAndReturn.exit: ; preds = %CdAudio535DeviceControl_bb590
  %"1281" = load i32* @"'DC", align 4
  store i32 %"1281", i32* @"'s", align 4
  br label %CdAudio535DeviceControl_CdAudioSendToNextDriver.exit

CdAudio535DeviceControl_bb591:                    ; preds = %CdAudio535DeviceControl_bb590
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudio535DeviceControl_bb592:                    ; preds = %CdAudio535DeviceControl_bb589
  %"1282" = call i32 @__VERIFIER_nondet_int() #5
  %"1283" = call i32 @__VERIFIER_nondet_int() #5
  %"1284" = call i32 @__VERIFIER_nondet_int() #5
  %"1285" = icmp slt i32 -1073741670, 0
  br i1 %"1285", label %CdAudio535DeviceControl_bb593, label %CdAudio535DeviceControl_bb603

CdAudio535DeviceControl_bb593:                    ; preds = %CdAudio535DeviceControl_bb592
  store i32 -1073741670, i32* @"'myStatus", align 4
  %"1286" = load i32* @"'s", align 4
  %"1287" = load i32* @"'NP", align 4
  %"1288" = icmp eq i32 %"1286", %"1287"
  br i1 %"1288", label %CdAudio535DeviceControl_AG_SetStatusAndReturn.exit2, label %CdAudio535DeviceControl_bb594

CdAudio535DeviceControl_AG_SetStatusAndReturn.exit2: ; preds = %CdAudio535DeviceControl_bb593
  %"1289" = load i32* @"'DC", align 4
  store i32 %"1289", i32* @"'s", align 4
  br label %CdAudio535DeviceControl_CdAudioSendToNextDriver.exit

CdAudio535DeviceControl_bb594:                    ; preds = %CdAudio535DeviceControl_bb593
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudio535DeviceControl_NodeBlock59:              ; preds = %CdAudio535DeviceControl_NodeBlock61
  %Pivot60 = icmp slt i32 %"1152", 149512
  br i1 %Pivot60, label %CdAudio535DeviceControl_LeafBlock55, label %CdAudio535DeviceControl_LeafBlock57

CdAudio535DeviceControl_LeafBlock55:              ; preds = %CdAudio535DeviceControl_NodeBlock59
  %SwitchLeaf56 = icmp eq i32 %"1152", 149504
  br i1 %SwitchLeaf56, label %CdAudio535DeviceControl_bb595, label %CdAudio535DeviceControl_NewDefault

CdAudio535DeviceControl_bb595:                    ; preds = %CdAudio535DeviceControl_LeafBlock55
  %"1290" = call i32 @__VERIFIER_nondet_int() #5
  %"1291" = call i32 @__VERIFIER_nondet_int() #5
  %"1292" = call i32 @__VERIFIER_nondet_int() #5
  %"1293" = call i32 @__VERIFIER_nondet_int() #5
  %"1294" = call i32 @__VERIFIER_nondet_int() #5
  %"1295" = call i32 @__VERIFIER_nondet_int() #5
  %"1296" = call i32 @__VERIFIER_nondet_int() #5
  %"1297" = icmp eq i32 %"1290", 0
  %"1298" = icmp eq i32 %"1296", 0
  %or.cond.i20 = or i1 %"1297", %"1298"
  %"1299" = icmp eq i32 %"1293", 0
  %or.cond1.i21 = or i1 %or.cond.i20, %"1299"
  %or.cond1.i21.not = xor i1 %or.cond1.i21, true
  %"1300" = sext i32 %"1295" to i64
  %"1301" = icmp eq i64 %"1300", 259
  %or.cond32 = and i1 %or.cond1.i21.not, %"1301"
  br i1 %or.cond32, label %CdAudio535DeviceControl_bb596, label %CdAudio535DeviceControl_CdAudioIsPlayActive.exit27

CdAudio535DeviceControl_bb596:                    ; preds = %CdAudio535DeviceControl_bb595
  %"1302" = load i32* @"'s", align 4
  %"1303" = load i32* @"'MPR3", align 4
  %"1304" = icmp eq i32 %"1302", %"1303"
  %"1305" = load i32* @"'setEventCalled", align 4
  %"1306" = icmp eq i32 %"1305", 1
  %or.cond.i.i22 = and i1 %"1304", %"1306"
  br i1 %or.cond.i.i22, label %CdAudio535DeviceControl_bb597, label %CdAudio535DeviceControl_bb598

CdAudio535DeviceControl_bb597:                    ; preds = %CdAudio535DeviceControl_bb596
  %"1307" = load i32* @"'NP", align 4
  store i32 %"1307", i32* @"'s", align 4
  store i32 0, i32* @"'setEventCalled", align 4
  br label %CdAudio535DeviceControl_KeWaitForSingleObject.exit.i23

CdAudio535DeviceControl_bb598:                    ; preds = %CdAudio535DeviceControl_bb596
  %"1308" = load i32* @"'customIrp", align 4
  %"1309" = icmp eq i32 %"1308", 1
  br i1 %"1309", label %CdAudio535DeviceControl_bb599, label %CdAudio535DeviceControl_bb600

CdAudio535DeviceControl_bb599:                    ; preds = %CdAudio535DeviceControl_bb598
  %"1310" = load i32* @"'NP", align 4
  store i32 %"1310", i32* @"'s", align 4
  store i32 0, i32* @"'customIrp", align 4
  br label %CdAudio535DeviceControl_KeWaitForSingleObject.exit.i23

CdAudio535DeviceControl_bb600:                    ; preds = %CdAudio535DeviceControl_bb598
  %"1311" = load i32* @"'s", align 4
  %"1312" = load i32* @"'MPR3", align 4
  %"1313" = icmp eq i32 %"1311", %"1312"
  br i1 %"1313", label %CdAudio535DeviceControl_bb601, label %CdAudio535DeviceControl_KeWaitForSingleObject.exit.i23

CdAudio535DeviceControl_bb601:                    ; preds = %CdAudio535DeviceControl_bb600
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudio535DeviceControl_KeWaitForSingleObject.exit.i23: ; preds = %CdAudio535DeviceControl_bb600, %CdAudio535DeviceControl_bb599, %CdAudio535DeviceControl_bb597
  %"1314" = call i32 @__VERIFIER_nondet_int() #5
  br label %CdAudio535DeviceControl_CdAudioIsPlayActive.exit27

CdAudio535DeviceControl_LeafBlock57:              ; preds = %CdAudio535DeviceControl_NodeBlock59
  %SwitchLeaf58 = icmp eq i32 %"1152", 149512
  br i1 %SwitchLeaf58, label %CdAudio535DeviceControl_bb602, label %CdAudio535DeviceControl_NewDefault

CdAudio535DeviceControl_bb602:                    ; preds = %CdAudio535DeviceControl_LeafBlock57
  %"1315" = call i32 @__VERIFIER_nondet_int() #5
  %"1316" = call i32 @__VERIFIER_nondet_int() #5
  %"1317" = call i32 @__VERIFIER_nondet_int() #5
  br label %CdAudio535DeviceControl_bb603

CdAudio535DeviceControl_bb603:                    ; preds = %CdAudio535DeviceControl_LeafBlock49, %CdAudio535DeviceControl_LeafBlock39, %CdAudio535DeviceControl_LeafBlock35, %CdAudio535DeviceControl_bb562, %CdAudio535DeviceControl_bb577, %CdAudio535DeviceControl_bb564, %CdAudio535DeviceControl_bb602, %CdAudio535DeviceControl_CdAudioIsPlayActive.exit, %CdAudio535DeviceControl_bb588, %CdAudio535DeviceControl_bb592, %CdAudio535DeviceControl_bb544, %CdAudio535DeviceControl_CdAudioIsPlayActive.exit10, %CdAudio535DeviceControl_bb570, %CdAudio535DeviceControl_bb565, %CdAudio535DeviceControl_bb569, %CdAudio535DeviceControl_bb568, %CdAudio535DeviceControl_bb563
  %status.1 = phi i32 [ %status.0, %CdAudio535DeviceControl_bb562 ], [ -1073741670, %CdAudio535DeviceControl_bb577 ], [ -1073741670, %CdAudio535DeviceControl_bb564 ], [ -1073741670, %CdAudio535DeviceControl_bb602 ], [ -2147483631, %CdAudio535DeviceControl_CdAudioIsPlayActive.exit ], [ -1073741789, %CdAudio535DeviceControl_bb588 ], [ 0, %CdAudio535DeviceControl_bb592 ], [ -1073741789, %CdAudio535DeviceControl_bb544 ], [ -2147483631, %CdAudio535DeviceControl_CdAudioIsPlayActive.exit10 ], [ -1073741789, %CdAudio535DeviceControl_bb570 ], [ -1073741820, %CdAudio535DeviceControl_bb565 ], [ -1073741670, %CdAudio535DeviceControl_bb569 ], [ -1073741670, %CdAudio535DeviceControl_bb568 ], [ -1073741820, %CdAudio535DeviceControl_bb563 ], [ -1073741808, %CdAudio535DeviceControl_LeafBlock35 ], [ -1073741808, %CdAudio535DeviceControl_LeafBlock39 ], [ -1073741808, %CdAudio535DeviceControl_LeafBlock49 ]
  store i32 %status.1, i32* @"'myStatus", align 4
  %"1318" = load i32* @"'s", align 4
  %"1319" = load i32* @"'NP", align 4
  %"1320" = icmp eq i32 %"1318", %"1319"
  br i1 %"1320", label %CdAudio535DeviceControl_AG_SetStatusAndReturn.exit28, label %CdAudio535DeviceControl_bb604

CdAudio535DeviceControl_AG_SetStatusAndReturn.exit28: ; preds = %CdAudio535DeviceControl_bb603
  %"1321" = load i32* @"'DC", align 4
  store i32 %"1321", i32* @"'s", align 4
  br label %CdAudio535DeviceControl_CdAudioSendToNextDriver.exit

CdAudio535DeviceControl_bb604:                    ; preds = %CdAudio535DeviceControl_bb603
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudio535DeviceControl_NewDefault:               ; preds = %CdAudio535DeviceControl_LeafBlock57, %CdAudio535DeviceControl_LeafBlock55, %CdAudio535DeviceControl_LeafBlock53, %CdAudio535DeviceControl_LeafBlock49, %CdAudio535DeviceControl_LeafBlock47, %CdAudio535DeviceControl_LeafBlock39, %CdAudio535DeviceControl_LeafBlock37, %CdAudio535DeviceControl_LeafBlock35, %CdAudio535DeviceControl_LeafBlock33, %CdAudio535DeviceControl_LeafBlock
  br label %CdAudio535DeviceControl_CdAudioIsPlayActive.exit27

CdAudio535DeviceControl_CdAudioIsPlayActive.exit27: ; preds = %CdAudio535DeviceControl_NewDefault, %CdAudio535DeviceControl_bb595, %CdAudio535DeviceControl_KeWaitForSingleObject.exit.i23
  %"1322" = call i32 @__VERIFIER_nondet_int() #5
  %"1323" = call i32 @__VERIFIER_nondet_int() #5
  %"1324" = call i32 @__VERIFIER_nondet_int() #5
  %"1325" = load i32* @"'s", align 4
  %"1326" = load i32* @"'NP", align 4
  %"1327" = icmp eq i32 %"1325", %"1326"
  br i1 %"1327", label %CdAudio535DeviceControl_bb605, label %CdAudio535DeviceControl_bb630

CdAudio535DeviceControl_bb605:                    ; preds = %CdAudio535DeviceControl_CdAudioIsPlayActive.exit27
  %"1328" = load i32* @"'SKIP1", align 4
  store i32 %"1328", i32* @"'s", align 4
  %"1329" = call i32 @__kittel_nondef.0() #5
  %"1330" = call i32 @__VERIFIER_nondet_int() #5
  %"1331" = call i32 @__VERIFIER_nondet_int() #5
  %"1332" = load i32* @"'compRegistered", align 4
  %"1333" = icmp ne i32 %"1332", 0
  br i1 %"1333", label %CdAudio535DeviceControl_bb606, label %CdAudio535DeviceControl_bb618

CdAudio535DeviceControl_bb606:                    ; preds = %CdAudio535DeviceControl_bb605
  %"1334" = load i32* @"'routine", align 4
  %"1335" = icmp eq i32 %"1334", 0
  br i1 %"1335", label %CdAudio535DeviceControl_bb607, label %CdAudio535DeviceControl_bb613

CdAudio535DeviceControl_bb607:                    ; preds = %CdAudio535DeviceControl_bb606
  %"1336" = call i32 @__VERIFIER_nondet_int() #5
  %"1337" = call i32 @__VERIFIER_nondet_int() #5
  %"1338" = icmp ne i32 %"1336", 0
  br i1 %"1338", label %CdAudio535DeviceControl_bb608, label %CdAudio535DeviceControl_bb611

CdAudio535DeviceControl_bb608:                    ; preds = %CdAudio535DeviceControl_bb607
  %"1339" = load i32* @"'pended", align 4
  %"1340" = icmp eq i32 %"1339", 0
  br i1 %"1340", label %CdAudio535DeviceControl_bb609, label %CdAudio535DeviceControl_bb610

CdAudio535DeviceControl_bb609:                    ; preds = %CdAudio535DeviceControl_bb608
  store i32 1, i32* @"'pended", align 4
  br label %CdAudio535DeviceControl_bb611

CdAudio535DeviceControl_bb610:                    ; preds = %CdAudio535DeviceControl_bb608
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudio535DeviceControl_bb611:                    ; preds = %CdAudio535DeviceControl_bb609, %CdAudio535DeviceControl_bb607
  %"1341" = load i32* @"'myStatus", align 4
  %"1342" = icmp sge i32 %"1341", 0
  br i1 %"1342", label %CdAudio535DeviceControl_bb612, label %CdAudio535DeviceControl_HPCdrCompletion.exit.i.i

CdAudio535DeviceControl_bb612:                    ; preds = %CdAudio535DeviceControl_bb611
  %"1343" = call i32 @__VERIFIER_nondet_int() #5
  br label %CdAudio535DeviceControl_HPCdrCompletion.exit.i.i

CdAudio535DeviceControl_HPCdrCompletion.exit.i.i: ; preds = %CdAudio535DeviceControl_bb612, %CdAudio535DeviceControl_bb611
  %"1344" = load i32* @"'myStatus", align 4
  br label %CdAudio535DeviceControl_bb615

CdAudio535DeviceControl_bb613:                    ; preds = %CdAudio535DeviceControl_bb606
  %"1345" = load i32* @"'routine", align 4
  %"1346" = icmp eq i32 %"1345", 1
  br i1 %"1346", label %CdAudio535DeviceControl_bb614, label %CdAudio535DeviceControl_bb615

CdAudio535DeviceControl_bb614:                    ; preds = %CdAudio535DeviceControl_bb613
  %"1347" = call i32 @__VERIFIER_nondet_int() #5
  store i32 1, i32* @"'setEventCalled", align 4
  br label %CdAudio535DeviceControl_bb615

CdAudio535DeviceControl_bb615:                    ; preds = %CdAudio535DeviceControl_bb614, %CdAudio535DeviceControl_bb613, %CdAudio535DeviceControl_HPCdrCompletion.exit.i.i
  %compRetStatus.1.i.i = phi i32 [ %"1344", %CdAudio535DeviceControl_HPCdrCompletion.exit.i.i ], [ -1073741802, %CdAudio535DeviceControl_bb614 ], [ %"1329", %CdAudio535DeviceControl_bb613 ]
  %"1348" = sext i32 %compRetStatus.1.i.i to i64
  %"1349" = icmp eq i64 %"1348", -1073741802
  br i1 %"1349", label %CdAudio535DeviceControl_bb616, label %CdAudio535DeviceControl_bb618

CdAudio535DeviceControl_bb616:                    ; preds = %CdAudio535DeviceControl_bb615
  %"1350" = load i32* @"'s", align 4
  %"1351" = load i32* @"'NP", align 4
  %"1352" = icmp eq i32 %"1350", %"1351"
  br i1 %"1352", label %CdAudio535DeviceControl_stubMoreProcessingRequired.exit.i.i, label %CdAudio535DeviceControl_bb617

CdAudio535DeviceControl_stubMoreProcessingRequired.exit.i.i: ; preds = %CdAudio535DeviceControl_bb616
  %"1353" = load i32* @"'MPR1", align 4
  store i32 %"1353", i32* @"'s", align 4
  br label %CdAudio535DeviceControl_bb618

CdAudio535DeviceControl_bb617:                    ; preds = %CdAudio535DeviceControl_bb616
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudio535DeviceControl_bb618:                    ; preds = %CdAudio535DeviceControl_stubMoreProcessingRequired.exit.i.i, %CdAudio535DeviceControl_bb615, %CdAudio535DeviceControl_bb605
  %"1354" = icmp ne i32 %"1330", 0
  br i1 %"1354", label %CdAudio535DeviceControl_bb621, label %CdAudio535DeviceControl_bb619

CdAudio535DeviceControl_bb619:                    ; preds = %CdAudio535DeviceControl_bb618
  %"1355" = call i32 @__VERIFIER_nondet_int() #5
  %"1356" = icmp eq i32 %"1355", 0
  br i1 %"1356", label %CdAudio535DeviceControl_bb621, label %CdAudio535DeviceControl_bb620

CdAudio535DeviceControl_bb620:                    ; preds = %CdAudio535DeviceControl_bb619
  %"1357" = call i32 @__VERIFIER_nondet_int() #5
  %"1358" = icmp eq i32 %"1357", 1
  %..i.i = select i1 %"1358", i32 -1073741823, i32 259
  br label %CdAudio535DeviceControl_bb621

CdAudio535DeviceControl_bb621:                    ; preds = %CdAudio535DeviceControl_bb620, %CdAudio535DeviceControl_bb619, %CdAudio535DeviceControl_bb618
  %returnVal2.1.i.i = phi i32 [ 259, %CdAudio535DeviceControl_bb618 ], [ 0, %CdAudio535DeviceControl_bb619 ], [ %..i.i, %CdAudio535DeviceControl_bb620 ]
  %"1359" = load i32* @"'s", align 4
  %"1360" = load i32* @"'NP", align 4
  %"1361" = icmp eq i32 %"1359", %"1360"
  br i1 %"1361", label %CdAudio535DeviceControl_bb622, label %CdAudio535DeviceControl_bb623

CdAudio535DeviceControl_bb622:                    ; preds = %CdAudio535DeviceControl_bb621
  %"1362" = load i32* @"'IPC", align 4
  store i32 %"1362", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i, i32* @"'lowerDriverReturn", align 4
  br label %CdAudio535DeviceControl_CdAudioSendToNextDriver.exit

CdAudio535DeviceControl_bb623:                    ; preds = %CdAudio535DeviceControl_bb621
  %"1363" = load i32* @"'s", align 4
  %"1364" = load i32* @"'MPR1", align 4
  %"1365" = icmp eq i32 %"1363", %"1364"
  br i1 %"1365", label %CdAudio535DeviceControl_bb624, label %CdAudio535DeviceControl_bb627

CdAudio535DeviceControl_bb624:                    ; preds = %CdAudio535DeviceControl_bb623
  %"1366" = icmp eq i32 %returnVal2.1.i.i, 259
  br i1 %"1366", label %CdAudio535DeviceControl_bb625, label %CdAudio535DeviceControl_bb626

CdAudio535DeviceControl_bb625:                    ; preds = %CdAudio535DeviceControl_bb624
  %"1367" = load i32* @"'MPR3", align 4
  store i32 %"1367", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i, i32* @"'lowerDriverReturn", align 4
  br label %CdAudio535DeviceControl_CdAudioSendToNextDriver.exit

CdAudio535DeviceControl_bb626:                    ; preds = %CdAudio535DeviceControl_bb624
  %"1368" = load i32* @"'NP", align 4
  store i32 %"1368", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i, i32* @"'lowerDriverReturn", align 4
  br label %CdAudio535DeviceControl_CdAudioSendToNextDriver.exit

CdAudio535DeviceControl_bb627:                    ; preds = %CdAudio535DeviceControl_bb623
  %"1369" = load i32* @"'s", align 4
  %"1370" = load i32* @"'SKIP1", align 4
  %"1371" = icmp eq i32 %"1369", %"1370"
  br i1 %"1371", label %CdAudio535DeviceControl_bb628, label %CdAudio535DeviceControl_bb629

CdAudio535DeviceControl_bb628:                    ; preds = %CdAudio535DeviceControl_bb627
  %"1372" = load i32* @"'SKIP2", align 4
  store i32 %"1372", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i, i32* @"'lowerDriverReturn", align 4
  br label %CdAudio535DeviceControl_CdAudioSendToNextDriver.exit

CdAudio535DeviceControl_CdAudioSendToNextDriver.exit: ; preds = %CdAudio535DeviceControl_bb628, %CdAudio535DeviceControl_bb626, %CdAudio535DeviceControl_bb625, %CdAudio535DeviceControl_bb622, %CdAudio535DeviceControl_AG_SetStatusAndReturn.exit28, %CdAudio535DeviceControl_AG_SetStatusAndReturn.exit15, %CdAudio535DeviceControl_AG_SetStatusAndReturn.exit14, %CdAudio535DeviceControl_AG_SetStatusAndReturn.exit13, %CdAudio535DeviceControl_AG_SetStatusAndReturn.exit11, %CdAudio535DeviceControl_AG_SetStatusAndReturn.exit2, %CdAudio535DeviceControl_AG_SetStatusAndReturn.exit
  %.0 = phi i32 [ %status.1, %CdAudio535DeviceControl_AG_SetStatusAndReturn.exit28 ], [ -1073741670, %CdAudio535DeviceControl_AG_SetStatusAndReturn.exit ], [ -1073741670, %CdAudio535DeviceControl_AG_SetStatusAndReturn.exit2 ], [ -1073741670, %CdAudio535DeviceControl_AG_SetStatusAndReturn.exit11 ], [ -1073741670, %CdAudio535DeviceControl_AG_SetStatusAndReturn.exit13 ], [ -1073741670, %CdAudio535DeviceControl_AG_SetStatusAndReturn.exit14 ], [ -1073741823, %CdAudio535DeviceControl_AG_SetStatusAndReturn.exit15 ], [ %returnVal2.1.i.i, %CdAudio535DeviceControl_bb622 ], [ %returnVal2.1.i.i, %CdAudio535DeviceControl_bb625 ], [ %returnVal2.1.i.i, %CdAudio535DeviceControl_bb626 ], [ %returnVal2.1.i.i, %CdAudio535DeviceControl_bb628 ]
  ret i32 %.0

CdAudio535DeviceControl_bb629:                    ; preds = %CdAudio535DeviceControl_bb627
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudio535DeviceControl_bb630:                    ; preds = %CdAudio535DeviceControl_CdAudioIsPlayActive.exit27
  call void (...)* @__VERIFIER_error() #4
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @AG_SetStatusAndReturn(i32 %status, i32 %Irp, i32 %deviceExtension__TargetDeviceObject) #0 {
AG_SetStatusAndReturn_bb631:
  store i32 %status, i32* @"'myStatus", align 4
  %"1373" = load i32* @"'s", align 4
  %"1374" = load i32* @"'NP", align 4
  %"1375" = icmp eq i32 %"1373", %"1374"
  br i1 %"1375", label %AG_SetStatusAndReturn_IofCompleteRequest.exit, label %AG_SetStatusAndReturn_bb632

AG_SetStatusAndReturn_IofCompleteRequest.exit:    ; preds = %AG_SetStatusAndReturn_bb631
  %"1376" = load i32* @"'DC", align 4
  store i32 %"1376", i32* @"'s", align 4
  ret i32 %status

AG_SetStatusAndReturn_bb632:                      ; preds = %AG_SetStatusAndReturn_bb631
  call void (...)* @__VERIFIER_error() #4
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @CdAudio435DeviceControl(i32 %DeviceObject, i32 %Irp) #0 {
CdAudio435DeviceControl_bb633:
  %"1377" = call i32 @__VERIFIER_nondet_int()
  %"1378" = call i32 @__VERIFIER_nondet_int()
  %"1379" = call i32 @__VERIFIER_nondet_int()
  %"1380" = call i32 @__VERIFIER_nondet_int()
  %"1381" = call i32 @__VERIFIER_nondet_int()
  %"1382" = call i32 @__VERIFIER_nondet_int()
  %"1383" = call i32 @__VERIFIER_nondet_int()
  %"1384" = call i32 @__VERIFIER_nondet_int()
  %"1385" = call i32 @__VERIFIER_nondet_int()
  %"1386" = call i32 @__VERIFIER_nondet_int()
  %"1387" = call i32 @__VERIFIER_nondet_int()
  %"1388" = call i32 @__VERIFIER_nondet_int()
  %"1389" = call i32 @__VERIFIER_nondet_int()
  %"1390" = call i32 @__VERIFIER_nondet_int()
  %"1391" = call i32 @__VERIFIER_nondet_int()
  %"1392" = call i32 @__VERIFIER_nondet_int()
  %"1393" = call i32 @__VERIFIER_nondet_int()
  %"1394" = call i32 @__VERIFIER_nondet_int()
  %"1395" = call i32 @__VERIFIER_nondet_int()
  br label %CdAudio435DeviceControl_NodeBlock76

CdAudio435DeviceControl_NodeBlock76:              ; preds = %CdAudio435DeviceControl_bb633
  %Pivot77 = icmp slt i32 %"1377", 147480
  br i1 %Pivot77, label %CdAudio435DeviceControl_NodeBlock52, label %CdAudio435DeviceControl_NodeBlock74

CdAudio435DeviceControl_NodeBlock52:              ; preds = %CdAudio435DeviceControl_NodeBlock76
  %Pivot53 = icmp slt i32 %"1377", 147468
  br i1 %Pivot53, label %CdAudio435DeviceControl_NodeBlock40, label %CdAudio435DeviceControl_NodeBlock50

CdAudio435DeviceControl_NodeBlock40:              ; preds = %CdAudio435DeviceControl_NodeBlock52
  %Pivot41 = icmp slt i32 %"1377", 147460
  br i1 %Pivot41, label %CdAudio435DeviceControl_LeafBlock, label %CdAudio435DeviceControl_NodeBlock

CdAudio435DeviceControl_LeafBlock:                ; preds = %CdAudio435DeviceControl_NodeBlock40
  %SwitchLeaf = icmp eq i32 %"1377", 147456
  br i1 %SwitchLeaf, label %CdAudio435DeviceControl_bb634, label %CdAudio435DeviceControl_NewDefault

CdAudio435DeviceControl_bb634:                    ; preds = %CdAudio435DeviceControl_LeafBlock
  %"1396" = icmp slt i32 %"1378", %"1380"
  br i1 %"1396", label %CdAudio435DeviceControl_bb726, label %CdAudio435DeviceControl_bb635

CdAudio435DeviceControl_bb635:                    ; preds = %CdAudio435DeviceControl_bb634
  %"1397" = call i32 @__VERIFIER_nondet_int() #5
  %"1398" = call i32 @__VERIFIER_nondet_int() #5
  %"1399" = call i32 @__VERIFIER_nondet_int() #5
  %"1400" = call i32 @__VERIFIER_nondet_int() #5
  %"1401" = call i32 @__VERIFIER_nondet_int() #5
  %"1402" = call i32 @__VERIFIER_nondet_int() #5
  %"1403" = call i32 @__VERIFIER_nondet_int() #5
  %"1404" = icmp eq i32 %"1397", 0
  %"1405" = icmp eq i32 %"1403", 0
  %or.cond.i = or i1 %"1404", %"1405"
  %"1406" = icmp eq i32 %"1400", 0
  %or.cond1.i = or i1 %or.cond.i, %"1406"
  br i1 %or.cond1.i, label %CdAudio435DeviceControl_CdAudioIsPlayActive.exit, label %CdAudio435DeviceControl_bb636

CdAudio435DeviceControl_bb636:                    ; preds = %CdAudio435DeviceControl_bb635
  %"1407" = sext i32 %"1402" to i64
  %"1408" = icmp eq i64 %"1407", 259
  br i1 %"1408", label %CdAudio435DeviceControl_bb637, label %CdAudio435DeviceControl_bb643

CdAudio435DeviceControl_bb637:                    ; preds = %CdAudio435DeviceControl_bb636
  %"1409" = load i32* @"'s", align 4
  %"1410" = load i32* @"'MPR3", align 4
  %"1411" = icmp eq i32 %"1409", %"1410"
  %"1412" = load i32* @"'setEventCalled", align 4
  %"1413" = icmp eq i32 %"1412", 1
  %or.cond.i.i = and i1 %"1411", %"1413"
  br i1 %or.cond.i.i, label %CdAudio435DeviceControl_bb638, label %CdAudio435DeviceControl_bb639

CdAudio435DeviceControl_bb638:                    ; preds = %CdAudio435DeviceControl_bb637
  %"1414" = load i32* @"'NP", align 4
  store i32 %"1414", i32* @"'s", align 4
  store i32 0, i32* @"'setEventCalled", align 4
  br label %CdAudio435DeviceControl_KeWaitForSingleObject.exit.i

CdAudio435DeviceControl_bb639:                    ; preds = %CdAudio435DeviceControl_bb637
  %"1415" = load i32* @"'customIrp", align 4
  %"1416" = icmp eq i32 %"1415", 1
  br i1 %"1416", label %CdAudio435DeviceControl_bb640, label %CdAudio435DeviceControl_bb641

CdAudio435DeviceControl_bb640:                    ; preds = %CdAudio435DeviceControl_bb639
  %"1417" = load i32* @"'NP", align 4
  store i32 %"1417", i32* @"'s", align 4
  store i32 0, i32* @"'customIrp", align 4
  br label %CdAudio435DeviceControl_KeWaitForSingleObject.exit.i

CdAudio435DeviceControl_bb641:                    ; preds = %CdAudio435DeviceControl_bb639
  %"1418" = load i32* @"'s", align 4
  %"1419" = load i32* @"'MPR3", align 4
  %"1420" = icmp eq i32 %"1418", %"1419"
  br i1 %"1420", label %CdAudio435DeviceControl_bb642, label %CdAudio435DeviceControl_KeWaitForSingleObject.exit.i

CdAudio435DeviceControl_bb642:                    ; preds = %CdAudio435DeviceControl_bb641
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudio435DeviceControl_KeWaitForSingleObject.exit.i: ; preds = %CdAudio435DeviceControl_bb641, %CdAudio435DeviceControl_bb640, %CdAudio435DeviceControl_bb638
  %"1421" = call i32 @__VERIFIER_nondet_int() #5
  br label %CdAudio435DeviceControl_bb643

CdAudio435DeviceControl_bb643:                    ; preds = %CdAudio435DeviceControl_KeWaitForSingleObject.exit.i, %CdAudio435DeviceControl_bb636
  %status.0.i = phi i32 [ %"1398", %CdAudio435DeviceControl_KeWaitForSingleObject.exit.i ], [ %"1402", %CdAudio435DeviceControl_bb636 ]
  %"1422" = icmp slt i32 %status.0.i, 0
  br i1 %"1422", label %CdAudio435DeviceControl_CdAudioIsPlayActive.exit, label %CdAudio435DeviceControl_bb644

CdAudio435DeviceControl_bb644:                    ; preds = %CdAudio435DeviceControl_bb643
  %"1423" = icmp eq i32 %"1399", 17
  %..i = select i1 %"1423", i32 1, i32 0
  br label %CdAudio435DeviceControl_CdAudioIsPlayActive.exit

CdAudio435DeviceControl_CdAudioIsPlayActive.exit: ; preds = %CdAudio435DeviceControl_bb635, %CdAudio435DeviceControl_bb643, %CdAudio435DeviceControl_bb644
  %.0.i = phi i32 [ %..i, %CdAudio435DeviceControl_bb644 ], [ 0, %CdAudio435DeviceControl_bb635 ], [ 0, %CdAudio435DeviceControl_bb643 ]
  %"1424" = icmp ne i32 %.0.i, 0
  br i1 %"1424", label %CdAudio435DeviceControl_bb726, label %CdAudio435DeviceControl_bb645

CdAudio435DeviceControl_bb645:                    ; preds = %CdAudio435DeviceControl_CdAudioIsPlayActive.exit
  %"1425" = icmp eq i32 %"1392", 0
  br i1 %"1425", label %CdAudio435DeviceControl_bb646, label %CdAudio435DeviceControl_bb648

CdAudio435DeviceControl_bb646:                    ; preds = %CdAudio435DeviceControl_bb645
  store i32 -1073741670, i32* @"'myStatus", align 4
  %"1426" = load i32* @"'s", align 4
  %"1427" = load i32* @"'NP", align 4
  %"1428" = icmp eq i32 %"1426", %"1427"
  br i1 %"1428", label %CdAudio435DeviceControl_IofCompleteRequest.exit, label %CdAudio435DeviceControl_bb647

CdAudio435DeviceControl_IofCompleteRequest.exit:  ; preds = %CdAudio435DeviceControl_bb646
  %"1429" = load i32* @"'DC", align 4
  store i32 %"1429", i32* @"'s", align 4
  br label %CdAudio435DeviceControl_CdAudioSendToNextDriver.exit

CdAudio435DeviceControl_bb647:                    ; preds = %CdAudio435DeviceControl_bb646
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudio435DeviceControl_bb648:                    ; preds = %CdAudio435DeviceControl_bb645
  %"1430" = call i32 @__VERIFIER_nondet_int() #5
  %"1431" = call i32 @__VERIFIER_nondet_int() #5
  %"1432" = call i32 @__VERIFIER_nondet_int() #5
  %"1433" = icmp slt i32 -1073741670, 0
  %"1434" = sext i32 -1073741670 to i64
  %"1435" = icmp ne i64 %"1434", -1073741764
  %or.cond = and i1 %"1433", %"1435"
  br i1 %or.cond, label %CdAudio435DeviceControl_bb649, label %CdAudio435DeviceControl_bb652

CdAudio435DeviceControl_bb649:                    ; preds = %CdAudio435DeviceControl_bb648
  %"1436" = sext i32 -1073741670 to i64
  %"1437" = icmp ne i64 %"1436", -1073741764
  br i1 %"1437", label %CdAudio435DeviceControl_bb650, label %CdAudio435DeviceControl_bb652

CdAudio435DeviceControl_bb650:                    ; preds = %CdAudio435DeviceControl_bb649
  store i32 -1073741670, i32* @"'myStatus", align 4
  %"1438" = load i32* @"'s", align 4
  %"1439" = load i32* @"'NP", align 4
  %"1440" = icmp eq i32 %"1438", %"1439"
  br i1 %"1440", label %CdAudio435DeviceControl_IofCompleteRequest.exit2, label %CdAudio435DeviceControl_bb651

CdAudio435DeviceControl_IofCompleteRequest.exit2: ; preds = %CdAudio435DeviceControl_bb650
  %"1441" = load i32* @"'DC", align 4
  store i32 %"1441", i32* @"'s", align 4
  br label %CdAudio435DeviceControl_CdAudioSendToNextDriver.exit

CdAudio435DeviceControl_bb651:                    ; preds = %CdAudio435DeviceControl_bb650
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudio435DeviceControl_bb652:                    ; preds = %CdAudio435DeviceControl_bb648, %CdAudio435DeviceControl_bb649
  %status.1 = phi i32 [ -1073741670, %CdAudio435DeviceControl_bb649 ], [ 0, %CdAudio435DeviceControl_bb648 ]
  br label %CdAudio435DeviceControl_bb726

CdAudio435DeviceControl_NodeBlock:                ; preds = %CdAudio435DeviceControl_NodeBlock40
  %Pivot = icmp slt i32 %"1377", 147464
  br i1 %Pivot, label %CdAudio435DeviceControl_LeafBlock36, label %CdAudio435DeviceControl_LeafBlock38

CdAudio435DeviceControl_LeafBlock36:              ; preds = %CdAudio435DeviceControl_NodeBlock
  %SwitchLeaf37 = icmp eq i32 %"1377", 147460
  br i1 %SwitchLeaf37, label %CdAudio435DeviceControl_bb653, label %CdAudio435DeviceControl_NewDefault

CdAudio435DeviceControl_bb653:                    ; preds = %CdAudio435DeviceControl_LeafBlock36
  %"1442" = icmp slt i32 %"1379", %"1385"
  br i1 %"1442", label %CdAudio435DeviceControl_bb726, label %CdAudio435DeviceControl_bb654

CdAudio435DeviceControl_bb654:                    ; preds = %CdAudio435DeviceControl_bb653
  %"1443" = call i32 @__VERIFIER_nondet_int() #5
  %"1444" = call i32 @__VERIFIER_nondet_int() #5
  %"1445" = call i32 @__VERIFIER_nondet_int() #5
  %"1446" = icmp slt i32 -1073741670, 0
  br i1 %"1446", label %CdAudio435DeviceControl_bb655, label %CdAudio435DeviceControl_bb726

CdAudio435DeviceControl_bb655:                    ; preds = %CdAudio435DeviceControl_bb654
  %"1447" = sext i32 -1073741670 to i64
  %"1448" = icmp eq i64 %"1447", -1073741808
  %. = select i1 %"1448", i32 -1073741803, i32 -1073741670
  br label %CdAudio435DeviceControl_bb726

CdAudio435DeviceControl_LeafBlock38:              ; preds = %CdAudio435DeviceControl_NodeBlock
  %SwitchLeaf39 = icmp eq i32 %"1377", 147464
  br i1 %SwitchLeaf39, label %CdAudio435DeviceControl_bb672, label %CdAudio435DeviceControl_NewDefault

CdAudio435DeviceControl_NodeBlock50:              ; preds = %CdAudio435DeviceControl_NodeBlock52
  %Pivot51 = icmp slt i32 %"1377", 147472
  br i1 %Pivot51, label %CdAudio435DeviceControl_LeafBlock42, label %CdAudio435DeviceControl_NodeBlock48

CdAudio435DeviceControl_LeafBlock42:              ; preds = %CdAudio435DeviceControl_NodeBlock50
  %SwitchLeaf43 = icmp eq i32 %"1377", 147468
  br i1 %SwitchLeaf43, label %CdAudio435DeviceControl_bb656, label %CdAudio435DeviceControl_NewDefault

CdAudio435DeviceControl_bb656:                    ; preds = %CdAudio435DeviceControl_LeafBlock42
  %"1449" = icmp eq i32 %"1393", 0
  br i1 %"1449", label %CdAudio435DeviceControl_bb657, label %CdAudio435DeviceControl_bb659

CdAudio435DeviceControl_bb657:                    ; preds = %CdAudio435DeviceControl_bb656
  store i32 -1073741670, i32* @"'myStatus", align 4
  %"1450" = load i32* @"'s", align 4
  %"1451" = load i32* @"'NP", align 4
  %"1452" = icmp eq i32 %"1450", %"1451"
  br i1 %"1452", label %CdAudio435DeviceControl_IofCompleteRequest.exit7, label %CdAudio435DeviceControl_bb658

CdAudio435DeviceControl_IofCompleteRequest.exit7: ; preds = %CdAudio435DeviceControl_bb657
  %"1453" = load i32* @"'DC", align 4
  store i32 %"1453", i32* @"'s", align 4
  br label %CdAudio435DeviceControl_CdAudioSendToNextDriver.exit

CdAudio435DeviceControl_bb658:                    ; preds = %CdAudio435DeviceControl_bb657
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudio435DeviceControl_bb659:                    ; preds = %CdAudio435DeviceControl_bb656
  %"1454" = icmp eq i32 %"1386", 1
  br i1 %"1454", label %CdAudio435DeviceControl_bb660, label %CdAudio435DeviceControl_bb662

CdAudio435DeviceControl_bb660:                    ; preds = %CdAudio435DeviceControl_bb659
  store i32 0, i32* @"'myStatus", align 4
  %"1455" = load i32* @"'s", align 4
  %"1456" = load i32* @"'NP", align 4
  %"1457" = icmp eq i32 %"1455", %"1456"
  br i1 %"1457", label %CdAudio435DeviceControl_IofCompleteRequest.exit8, label %CdAudio435DeviceControl_bb661

CdAudio435DeviceControl_IofCompleteRequest.exit8: ; preds = %CdAudio435DeviceControl_bb660
  %"1458" = load i32* @"'DC", align 4
  store i32 %"1458", i32* @"'s", align 4
  br label %CdAudio435DeviceControl_CdAudioSendToNextDriver.exit

CdAudio435DeviceControl_bb661:                    ; preds = %CdAudio435DeviceControl_bb660
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudio435DeviceControl_bb662:                    ; preds = %CdAudio435DeviceControl_bb659
  %"1459" = call i32 @__VERIFIER_nondet_int() #5
  %"1460" = call i32 @__VERIFIER_nondet_int() #5
  %"1461" = call i32 @__VERIFIER_nondet_int() #5
  %"1462" = icmp slt i32 -1073741670, 0
  br i1 %"1462", label %CdAudio435DeviceControl_bb663, label %CdAudio435DeviceControl_bb665

CdAudio435DeviceControl_bb663:                    ; preds = %CdAudio435DeviceControl_bb662
  store i32 -1073741670, i32* @"'myStatus", align 4
  %"1463" = load i32* @"'s", align 4
  %"1464" = load i32* @"'NP", align 4
  %"1465" = icmp eq i32 %"1463", %"1464"
  br i1 %"1465", label %CdAudio435DeviceControl_IofCompleteRequest.exit10, label %CdAudio435DeviceControl_bb664

CdAudio435DeviceControl_IofCompleteRequest.exit10: ; preds = %CdAudio435DeviceControl_bb663
  %"1466" = load i32* @"'DC", align 4
  store i32 %"1466", i32* @"'s", align 4
  br label %CdAudio435DeviceControl_CdAudioSendToNextDriver.exit

CdAudio435DeviceControl_bb664:                    ; preds = %CdAudio435DeviceControl_bb663
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudio435DeviceControl_bb665:                    ; preds = %CdAudio435DeviceControl_bb662
  %"1467" = call i32 @__VERIFIER_nondet_int() #5
  %"1468" = call i32 @__VERIFIER_nondet_int() #5
  %"1469" = call i32 @__VERIFIER_nondet_int() #5
  %"1470" = icmp slt i32 -1073741670, 0
  br i1 %"1470", label %CdAudio435DeviceControl_bb666, label %CdAudio435DeviceControl_bb726

CdAudio435DeviceControl_bb666:                    ; preds = %CdAudio435DeviceControl_bb665
  store i32 -1073741670, i32* @"'myStatus", align 4
  %"1471" = load i32* @"'s", align 4
  %"1472" = load i32* @"'NP", align 4
  %"1473" = icmp eq i32 %"1471", %"1472"
  br i1 %"1473", label %CdAudio435DeviceControl_IofCompleteRequest.exit12, label %CdAudio435DeviceControl_bb667

CdAudio435DeviceControl_IofCompleteRequest.exit12: ; preds = %CdAudio435DeviceControl_bb666
  %"1474" = load i32* @"'DC", align 4
  store i32 %"1474", i32* @"'s", align 4
  br label %CdAudio435DeviceControl_CdAudioSendToNextDriver.exit

CdAudio435DeviceControl_bb667:                    ; preds = %CdAudio435DeviceControl_bb666
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudio435DeviceControl_NodeBlock48:              ; preds = %CdAudio435DeviceControl_NodeBlock50
  %Pivot49 = icmp slt i32 %"1377", 147476
  br i1 %Pivot49, label %CdAudio435DeviceControl_LeafBlock44, label %CdAudio435DeviceControl_LeafBlock46

CdAudio435DeviceControl_LeafBlock44:              ; preds = %CdAudio435DeviceControl_NodeBlock48
  %SwitchLeaf45 = icmp eq i32 %"1377", 147472
  br i1 %SwitchLeaf45, label %CdAudio435DeviceControl_bb668, label %CdAudio435DeviceControl_NewDefault

CdAudio435DeviceControl_bb668:                    ; preds = %CdAudio435DeviceControl_LeafBlock44
  %"1475" = icmp eq i32 %"1386", 0
  br i1 %"1475", label %CdAudio435DeviceControl_bb669, label %CdAudio435DeviceControl_bb671

CdAudio435DeviceControl_bb669:                    ; preds = %CdAudio435DeviceControl_bb668
  store i32 -1073741823, i32* @"'myStatus", align 4
  %"1476" = load i32* @"'s", align 4
  %"1477" = load i32* @"'NP", align 4
  %"1478" = icmp eq i32 %"1476", %"1477"
  br i1 %"1478", label %CdAudio435DeviceControl_IofCompleteRequest.exit13, label %CdAudio435DeviceControl_bb670

CdAudio435DeviceControl_IofCompleteRequest.exit13: ; preds = %CdAudio435DeviceControl_bb669
  %"1479" = load i32* @"'DC", align 4
  store i32 %"1479", i32* @"'s", align 4
  br label %CdAudio435DeviceControl_CdAudioSendToNextDriver.exit

CdAudio435DeviceControl_bb670:                    ; preds = %CdAudio435DeviceControl_bb669
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudio435DeviceControl_bb671:                    ; preds = %CdAudio435DeviceControl_bb668
  %"1480" = call i32 @__VERIFIER_nondet_int() #5
  %"1481" = call i32 @__VERIFIER_nondet_int() #5
  %"1482" = call i32 @__VERIFIER_nondet_int() #5
  br label %CdAudio435DeviceControl_bb726

CdAudio435DeviceControl_LeafBlock46:              ; preds = %CdAudio435DeviceControl_NodeBlock48
  %SwitchLeaf47 = icmp eq i32 %"1377", 147476
  br i1 %SwitchLeaf47, label %CdAudio435DeviceControl_bb726, label %CdAudio435DeviceControl_NewDefault

CdAudio435DeviceControl_NodeBlock74:              ; preds = %CdAudio435DeviceControl_NodeBlock76
  %Pivot75 = icmp slt i32 %"1377", 147508
  br i1 %Pivot75, label %CdAudio435DeviceControl_NodeBlock62, label %CdAudio435DeviceControl_NodeBlock72

CdAudio435DeviceControl_NodeBlock62:              ; preds = %CdAudio435DeviceControl_NodeBlock74
  %Pivot63 = icmp slt i32 %"1377", 147496
  br i1 %Pivot63, label %CdAudio435DeviceControl_LeafBlock54, label %CdAudio435DeviceControl_NodeBlock60

CdAudio435DeviceControl_LeafBlock54:              ; preds = %CdAudio435DeviceControl_NodeBlock62
  %SwitchLeaf55 = icmp eq i32 %"1377", 147480
  br i1 %SwitchLeaf55, label %CdAudio435DeviceControl_bb672, label %CdAudio435DeviceControl_NewDefault

CdAudio435DeviceControl_bb672:                    ; preds = %CdAudio435DeviceControl_LeafBlock54, %CdAudio435DeviceControl_LeafBlock38
  %"1483" = call i32 @__VERIFIER_nondet_int() #5
  %"1484" = call i32 @__VERIFIER_nondet_int() #5
  %"1485" = call i32 @__VERIFIER_nondet_int() #5
  %"1486" = icmp eq i32 %"1377", 147464
  br i1 %"1486", label %CdAudio435DeviceControl_bb673, label %CdAudio435DeviceControl_bb675

CdAudio435DeviceControl_bb673:                    ; preds = %CdAudio435DeviceControl_bb672
  store i32 -1073741670, i32* @"'myStatus", align 4
  %"1487" = load i32* @"'s", align 4
  %"1488" = load i32* @"'NP", align 4
  %"1489" = icmp eq i32 %"1487", %"1488"
  br i1 %"1489", label %CdAudio435DeviceControl_IofCompleteRequest.exit4, label %CdAudio435DeviceControl_bb674

CdAudio435DeviceControl_IofCompleteRequest.exit4: ; preds = %CdAudio435DeviceControl_bb673
  %"1490" = load i32* @"'DC", align 4
  store i32 %"1490", i32* @"'s", align 4
  br label %CdAudio435DeviceControl_CdAudioSendToNextDriver.exit

CdAudio435DeviceControl_bb674:                    ; preds = %CdAudio435DeviceControl_bb673
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudio435DeviceControl_bb675:                    ; preds = %CdAudio435DeviceControl_bb672
  %"1491" = icmp slt i32 %"1379", %"1384"
  br i1 %"1491", label %CdAudio435DeviceControl_bb726, label %CdAudio435DeviceControl_bb676

CdAudio435DeviceControl_bb676:                    ; preds = %CdAudio435DeviceControl_bb675
  %"1492" = call i32 @__VERIFIER_nondet_int() #5
  %"1493" = call i32 @__VERIFIER_nondet_int() #5
  %"1494" = call i32 @__VERIFIER_nondet_int() #5
  br label %CdAudio435DeviceControl_bb726

CdAudio435DeviceControl_NodeBlock60:              ; preds = %CdAudio435DeviceControl_NodeBlock62
  %Pivot61 = icmp slt i32 %"1377", 147500
  br i1 %Pivot61, label %CdAudio435DeviceControl_LeafBlock56, label %CdAudio435DeviceControl_LeafBlock58

CdAudio435DeviceControl_LeafBlock56:              ; preds = %CdAudio435DeviceControl_NodeBlock60
  %SwitchLeaf57 = icmp eq i32 %"1377", 147496
  br i1 %SwitchLeaf57, label %CdAudio435DeviceControl_bb726, label %CdAudio435DeviceControl_NewDefault

CdAudio435DeviceControl_LeafBlock58:              ; preds = %CdAudio435DeviceControl_NodeBlock60
  %SwitchLeaf59 = icmp eq i32 %"1377", 147500
  br i1 %SwitchLeaf59, label %CdAudio435DeviceControl_bb677, label %CdAudio435DeviceControl_NewDefault

CdAudio435DeviceControl_bb677:                    ; preds = %CdAudio435DeviceControl_LeafBlock58
  %"1495" = icmp slt i32 %"1378", %"1388"
  br i1 %"1495", label %CdAudio435DeviceControl_bb726, label %CdAudio435DeviceControl_bb678

CdAudio435DeviceControl_bb678:                    ; preds = %CdAudio435DeviceControl_bb677
  %"1496" = icmp eq i32 %"1395", 0
  br i1 %"1496", label %CdAudio435DeviceControl_bb679, label %CdAudio435DeviceControl_bb681

CdAudio435DeviceControl_bb679:                    ; preds = %CdAudio435DeviceControl_bb678
  store i32 -1073741670, i32* @"'myStatus", align 4
  %"1497" = load i32* @"'s", align 4
  %"1498" = load i32* @"'NP", align 4
  %"1499" = icmp eq i32 %"1497", %"1498"
  br i1 %"1499", label %CdAudio435DeviceControl_IofCompleteRequest.exit15, label %CdAudio435DeviceControl_bb680

CdAudio435DeviceControl_IofCompleteRequest.exit15: ; preds = %CdAudio435DeviceControl_bb679
  %"1500" = load i32* @"'DC", align 4
  store i32 %"1500", i32* @"'s", align 4
  br label %CdAudio435DeviceControl_CdAudioSendToNextDriver.exit

CdAudio435DeviceControl_bb680:                    ; preds = %CdAudio435DeviceControl_bb679
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudio435DeviceControl_bb681:                    ; preds = %CdAudio435DeviceControl_bb678
  %"1501" = icmp ne i32 %"1394", 1
  br i1 %"1501", label %CdAudio435DeviceControl_bb682, label %CdAudio435DeviceControl_bb684

CdAudio435DeviceControl_bb682:                    ; preds = %CdAudio435DeviceControl_bb681
  store i32 -1073741823, i32* @"'myStatus", align 4
  %"1502" = load i32* @"'s", align 4
  %"1503" = load i32* @"'NP", align 4
  %"1504" = icmp eq i32 %"1502", %"1503"
  br i1 %"1504", label %CdAudio435DeviceControl_IofCompleteRequest.exit16, label %CdAudio435DeviceControl_bb683

CdAudio435DeviceControl_IofCompleteRequest.exit16: ; preds = %CdAudio435DeviceControl_bb682
  %"1505" = load i32* @"'DC", align 4
  store i32 %"1505", i32* @"'s", align 4
  br label %CdAudio435DeviceControl_CdAudioSendToNextDriver.exit

CdAudio435DeviceControl_bb683:                    ; preds = %CdAudio435DeviceControl_bb682
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudio435DeviceControl_bb684:                    ; preds = %CdAudio435DeviceControl_bb681
  %"1506" = call i32 @__VERIFIER_nondet_int() #5
  %"1507" = call i32 @__VERIFIER_nondet_int() #5
  %"1508" = call i32 @__VERIFIER_nondet_int() #5
  %"1509" = icmp sge i32 -1073741670, 0
  br i1 %"1509", label %CdAudio435DeviceControl_bb685, label %CdAudio435DeviceControl_bb726

CdAudio435DeviceControl_bb685:                    ; preds = %CdAudio435DeviceControl_bb684
  br label %CdAudio435DeviceControl_bb726

CdAudio435DeviceControl_NodeBlock72:              ; preds = %CdAudio435DeviceControl_NodeBlock74
  %Pivot73 = icmp slt i32 %"1377", 149504
  br i1 %Pivot73, label %CdAudio435DeviceControl_LeafBlock64, label %CdAudio435DeviceControl_NodeBlock70

CdAudio435DeviceControl_LeafBlock64:              ; preds = %CdAudio435DeviceControl_NodeBlock72
  %SwitchLeaf65 = icmp eq i32 %"1377", 147508
  br i1 %SwitchLeaf65, label %CdAudio435DeviceControl_bb726, label %CdAudio435DeviceControl_NewDefault

CdAudio435DeviceControl_NodeBlock70:              ; preds = %CdAudio435DeviceControl_NodeBlock72
  %Pivot71 = icmp slt i32 %"1377", 149512
  br i1 %Pivot71, label %CdAudio435DeviceControl_LeafBlock66, label %CdAudio435DeviceControl_LeafBlock68

CdAudio435DeviceControl_LeafBlock66:              ; preds = %CdAudio435DeviceControl_NodeBlock70
  %SwitchLeaf67 = icmp eq i32 %"1377", 149504
  br i1 %SwitchLeaf67, label %CdAudio435DeviceControl_bb686, label %CdAudio435DeviceControl_NewDefault

CdAudio435DeviceControl_bb686:                    ; preds = %CdAudio435DeviceControl_LeafBlock66
  %"1510" = call i32 @__VERIFIER_nondet_int() #5
  %"1511" = call i32 @__VERIFIER_nondet_int() #5
  %"1512" = call i32 @__VERIFIER_nondet_int() #5
  %"1513" = call i32 @__VERIFIER_nondet_int() #5
  %"1514" = call i32 @__VERIFIER_nondet_int() #5
  %"1515" = call i32 @__VERIFIER_nondet_int() #5
  %"1516" = call i32 @__VERIFIER_nondet_int() #5
  %"1517" = icmp eq i32 %"1510", 0
  %"1518" = icmp eq i32 %"1516", 0
  %or.cond.i19 = or i1 %"1517", %"1518"
  %"1519" = icmp eq i32 %"1513", 0
  %or.cond1.i20 = or i1 %or.cond.i19, %"1519"
  br i1 %or.cond1.i20, label %CdAudio435DeviceControl_CdAudioIsPlayActive.exit26, label %CdAudio435DeviceControl_bb687

CdAudio435DeviceControl_bb687:                    ; preds = %CdAudio435DeviceControl_bb686
  %"1520" = sext i32 %"1515" to i64
  %"1521" = icmp eq i64 %"1520", 259
  br i1 %"1521", label %CdAudio435DeviceControl_bb688, label %CdAudio435DeviceControl_bb694

CdAudio435DeviceControl_bb688:                    ; preds = %CdAudio435DeviceControl_bb687
  %"1522" = load i32* @"'s", align 4
  %"1523" = load i32* @"'MPR3", align 4
  %"1524" = icmp eq i32 %"1522", %"1523"
  %"1525" = load i32* @"'setEventCalled", align 4
  %"1526" = icmp eq i32 %"1525", 1
  %or.cond.i.i21 = and i1 %"1524", %"1526"
  br i1 %or.cond.i.i21, label %CdAudio435DeviceControl_bb689, label %CdAudio435DeviceControl_bb690

CdAudio435DeviceControl_bb689:                    ; preds = %CdAudio435DeviceControl_bb688
  %"1527" = load i32* @"'NP", align 4
  store i32 %"1527", i32* @"'s", align 4
  store i32 0, i32* @"'setEventCalled", align 4
  br label %CdAudio435DeviceControl_KeWaitForSingleObject.exit.i22

CdAudio435DeviceControl_bb690:                    ; preds = %CdAudio435DeviceControl_bb688
  %"1528" = load i32* @"'customIrp", align 4
  %"1529" = icmp eq i32 %"1528", 1
  br i1 %"1529", label %CdAudio435DeviceControl_bb691, label %CdAudio435DeviceControl_bb692

CdAudio435DeviceControl_bb691:                    ; preds = %CdAudio435DeviceControl_bb690
  %"1530" = load i32* @"'NP", align 4
  store i32 %"1530", i32* @"'s", align 4
  store i32 0, i32* @"'customIrp", align 4
  br label %CdAudio435DeviceControl_KeWaitForSingleObject.exit.i22

CdAudio435DeviceControl_bb692:                    ; preds = %CdAudio435DeviceControl_bb690
  %"1531" = load i32* @"'s", align 4
  %"1532" = load i32* @"'MPR3", align 4
  %"1533" = icmp eq i32 %"1531", %"1532"
  br i1 %"1533", label %CdAudio435DeviceControl_bb693, label %CdAudio435DeviceControl_KeWaitForSingleObject.exit.i22

CdAudio435DeviceControl_bb693:                    ; preds = %CdAudio435DeviceControl_bb692
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudio435DeviceControl_KeWaitForSingleObject.exit.i22: ; preds = %CdAudio435DeviceControl_bb692, %CdAudio435DeviceControl_bb691, %CdAudio435DeviceControl_bb689
  %"1534" = call i32 @__VERIFIER_nondet_int() #5
  br label %CdAudio435DeviceControl_bb694

CdAudio435DeviceControl_bb694:                    ; preds = %CdAudio435DeviceControl_KeWaitForSingleObject.exit.i22, %CdAudio435DeviceControl_bb687
  %status.0.i23 = phi i32 [ %"1511", %CdAudio435DeviceControl_KeWaitForSingleObject.exit.i22 ], [ %"1515", %CdAudio435DeviceControl_bb687 ]
  %"1535" = icmp slt i32 %status.0.i23, 0
  br i1 %"1535", label %CdAudio435DeviceControl_CdAudioIsPlayActive.exit26, label %CdAudio435DeviceControl_bb695

CdAudio435DeviceControl_bb695:                    ; preds = %CdAudio435DeviceControl_bb694
  %"1536" = icmp eq i32 %"1512", 17
  %..i24 = select i1 %"1536", i32 1, i32 0
  br label %CdAudio435DeviceControl_CdAudioIsPlayActive.exit26

CdAudio435DeviceControl_CdAudioIsPlayActive.exit26: ; preds = %CdAudio435DeviceControl_bb686, %CdAudio435DeviceControl_bb694, %CdAudio435DeviceControl_bb695
  %.0.i25 = phi i32 [ %..i24, %CdAudio435DeviceControl_bb695 ], [ 0, %CdAudio435DeviceControl_bb686 ], [ 0, %CdAudio435DeviceControl_bb694 ]
  %"1537" = icmp eq i32 %.0.i25, 1
  br i1 %"1537", label %CdAudio435DeviceControl_bb696, label %CdAudio435DeviceControl_bb698

CdAudio435DeviceControl_bb696:                    ; preds = %CdAudio435DeviceControl_CdAudioIsPlayActive.exit26
  store i32 0, i32* @"'myStatus", align 4
  %"1538" = load i32* @"'s", align 4
  %"1539" = load i32* @"'NP", align 4
  %"1540" = icmp eq i32 %"1538", %"1539"
  br i1 %"1540", label %CdAudio435DeviceControl_IofCompleteRequest.exit27, label %CdAudio435DeviceControl_bb697

CdAudio435DeviceControl_IofCompleteRequest.exit27: ; preds = %CdAudio435DeviceControl_bb696
  %"1541" = load i32* @"'DC", align 4
  store i32 %"1541", i32* @"'s", align 4
  br label %CdAudio435DeviceControl_CdAudioSendToNextDriver.exit

CdAudio435DeviceControl_bb697:                    ; preds = %CdAudio435DeviceControl_bb696
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudio435DeviceControl_bb698:                    ; preds = %CdAudio435DeviceControl_CdAudioIsPlayActive.exit26
  %"1542" = call i32 @__VERIFIER_nondet_int() #5
  %"1543" = call i32 @__VERIFIER_nondet_int() #5
  %"1544" = call i32 @__VERIFIER_nondet_int() #5
  %"1545" = load i32* @"'s", align 4
  %"1546" = load i32* @"'NP", align 4
  %"1547" = icmp eq i32 %"1545", %"1546"
  br i1 %"1547", label %CdAudio435DeviceControl_bb699, label %CdAudio435DeviceControl_bb724

CdAudio435DeviceControl_bb699:                    ; preds = %CdAudio435DeviceControl_bb698
  %"1548" = load i32* @"'SKIP1", align 4
  store i32 %"1548", i32* @"'s", align 4
  %"1549" = call i32 @__kittel_nondef.0() #5
  %"1550" = call i32 @__VERIFIER_nondet_int() #5
  %"1551" = call i32 @__VERIFIER_nondet_int() #5
  %"1552" = load i32* @"'compRegistered", align 4
  %"1553" = icmp ne i32 %"1552", 0
  br i1 %"1553", label %CdAudio435DeviceControl_bb700, label %CdAudio435DeviceControl_bb712

CdAudio435DeviceControl_bb700:                    ; preds = %CdAudio435DeviceControl_bb699
  %"1554" = load i32* @"'routine", align 4
  %"1555" = icmp eq i32 %"1554", 0
  br i1 %"1555", label %CdAudio435DeviceControl_bb701, label %CdAudio435DeviceControl_bb707

CdAudio435DeviceControl_bb701:                    ; preds = %CdAudio435DeviceControl_bb700
  %"1556" = call i32 @__VERIFIER_nondet_int() #5
  %"1557" = call i32 @__VERIFIER_nondet_int() #5
  %"1558" = icmp ne i32 %"1556", 0
  br i1 %"1558", label %CdAudio435DeviceControl_bb702, label %CdAudio435DeviceControl_bb705

CdAudio435DeviceControl_bb702:                    ; preds = %CdAudio435DeviceControl_bb701
  %"1559" = load i32* @"'pended", align 4
  %"1560" = icmp eq i32 %"1559", 0
  br i1 %"1560", label %CdAudio435DeviceControl_bb703, label %CdAudio435DeviceControl_bb704

CdAudio435DeviceControl_bb703:                    ; preds = %CdAudio435DeviceControl_bb702
  store i32 1, i32* @"'pended", align 4
  br label %CdAudio435DeviceControl_bb705

CdAudio435DeviceControl_bb704:                    ; preds = %CdAudio435DeviceControl_bb702
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudio435DeviceControl_bb705:                    ; preds = %CdAudio435DeviceControl_bb703, %CdAudio435DeviceControl_bb701
  %"1561" = load i32* @"'myStatus", align 4
  %"1562" = icmp sge i32 %"1561", 0
  br i1 %"1562", label %CdAudio435DeviceControl_bb706, label %CdAudio435DeviceControl_HPCdrCompletion.exit.i.i

CdAudio435DeviceControl_bb706:                    ; preds = %CdAudio435DeviceControl_bb705
  %"1563" = call i32 @__VERIFIER_nondet_int() #5
  br label %CdAudio435DeviceControl_HPCdrCompletion.exit.i.i

CdAudio435DeviceControl_HPCdrCompletion.exit.i.i: ; preds = %CdAudio435DeviceControl_bb706, %CdAudio435DeviceControl_bb705
  %"1564" = load i32* @"'myStatus", align 4
  br label %CdAudio435DeviceControl_bb709

CdAudio435DeviceControl_bb707:                    ; preds = %CdAudio435DeviceControl_bb700
  %"1565" = load i32* @"'routine", align 4
  %"1566" = icmp eq i32 %"1565", 1
  br i1 %"1566", label %CdAudio435DeviceControl_bb708, label %CdAudio435DeviceControl_bb709

CdAudio435DeviceControl_bb708:                    ; preds = %CdAudio435DeviceControl_bb707
  %"1567" = call i32 @__VERIFIER_nondet_int() #5
  store i32 1, i32* @"'setEventCalled", align 4
  br label %CdAudio435DeviceControl_bb709

CdAudio435DeviceControl_bb709:                    ; preds = %CdAudio435DeviceControl_bb708, %CdAudio435DeviceControl_bb707, %CdAudio435DeviceControl_HPCdrCompletion.exit.i.i
  %compRetStatus.1.i.i = phi i32 [ %"1564", %CdAudio435DeviceControl_HPCdrCompletion.exit.i.i ], [ -1073741802, %CdAudio435DeviceControl_bb708 ], [ %"1549", %CdAudio435DeviceControl_bb707 ]
  %"1568" = sext i32 %compRetStatus.1.i.i to i64
  %"1569" = icmp eq i64 %"1568", -1073741802
  br i1 %"1569", label %CdAudio435DeviceControl_bb710, label %CdAudio435DeviceControl_bb712

CdAudio435DeviceControl_bb710:                    ; preds = %CdAudio435DeviceControl_bb709
  %"1570" = load i32* @"'s", align 4
  %"1571" = load i32* @"'NP", align 4
  %"1572" = icmp eq i32 %"1570", %"1571"
  br i1 %"1572", label %CdAudio435DeviceControl_stubMoreProcessingRequired.exit.i.i, label %CdAudio435DeviceControl_bb711

CdAudio435DeviceControl_stubMoreProcessingRequired.exit.i.i: ; preds = %CdAudio435DeviceControl_bb710
  %"1573" = load i32* @"'MPR1", align 4
  store i32 %"1573", i32* @"'s", align 4
  br label %CdAudio435DeviceControl_bb712

CdAudio435DeviceControl_bb711:                    ; preds = %CdAudio435DeviceControl_bb710
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudio435DeviceControl_bb712:                    ; preds = %CdAudio435DeviceControl_stubMoreProcessingRequired.exit.i.i, %CdAudio435DeviceControl_bb709, %CdAudio435DeviceControl_bb699
  %"1574" = icmp ne i32 %"1550", 0
  br i1 %"1574", label %CdAudio435DeviceControl_bb715, label %CdAudio435DeviceControl_bb713

CdAudio435DeviceControl_bb713:                    ; preds = %CdAudio435DeviceControl_bb712
  %"1575" = call i32 @__VERIFIER_nondet_int() #5
  %"1576" = icmp eq i32 %"1575", 0
  br i1 %"1576", label %CdAudio435DeviceControl_bb715, label %CdAudio435DeviceControl_bb714

CdAudio435DeviceControl_bb714:                    ; preds = %CdAudio435DeviceControl_bb713
  %"1577" = call i32 @__VERIFIER_nondet_int() #5
  %"1578" = icmp eq i32 %"1577", 1
  %..i.i = select i1 %"1578", i32 -1073741823, i32 259
  br label %CdAudio435DeviceControl_bb715

CdAudio435DeviceControl_bb715:                    ; preds = %CdAudio435DeviceControl_bb714, %CdAudio435DeviceControl_bb713, %CdAudio435DeviceControl_bb712
  %returnVal2.1.i.i = phi i32 [ 259, %CdAudio435DeviceControl_bb712 ], [ 0, %CdAudio435DeviceControl_bb713 ], [ %..i.i, %CdAudio435DeviceControl_bb714 ]
  %"1579" = load i32* @"'s", align 4
  %"1580" = load i32* @"'NP", align 4
  %"1581" = icmp eq i32 %"1579", %"1580"
  br i1 %"1581", label %CdAudio435DeviceControl_bb716, label %CdAudio435DeviceControl_bb717

CdAudio435DeviceControl_bb716:                    ; preds = %CdAudio435DeviceControl_bb715
  %"1582" = load i32* @"'IPC", align 4
  store i32 %"1582", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i, i32* @"'lowerDriverReturn", align 4
  br label %CdAudio435DeviceControl_CdAudioSendToNextDriver.exit

CdAudio435DeviceControl_bb717:                    ; preds = %CdAudio435DeviceControl_bb715
  %"1583" = load i32* @"'s", align 4
  %"1584" = load i32* @"'MPR1", align 4
  %"1585" = icmp eq i32 %"1583", %"1584"
  br i1 %"1585", label %CdAudio435DeviceControl_bb718, label %CdAudio435DeviceControl_bb721

CdAudio435DeviceControl_bb718:                    ; preds = %CdAudio435DeviceControl_bb717
  %"1586" = icmp eq i32 %returnVal2.1.i.i, 259
  br i1 %"1586", label %CdAudio435DeviceControl_bb719, label %CdAudio435DeviceControl_bb720

CdAudio435DeviceControl_bb719:                    ; preds = %CdAudio435DeviceControl_bb718
  %"1587" = load i32* @"'MPR3", align 4
  store i32 %"1587", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i, i32* @"'lowerDriverReturn", align 4
  br label %CdAudio435DeviceControl_CdAudioSendToNextDriver.exit

CdAudio435DeviceControl_bb720:                    ; preds = %CdAudio435DeviceControl_bb718
  %"1588" = load i32* @"'NP", align 4
  store i32 %"1588", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i, i32* @"'lowerDriverReturn", align 4
  br label %CdAudio435DeviceControl_CdAudioSendToNextDriver.exit

CdAudio435DeviceControl_bb721:                    ; preds = %CdAudio435DeviceControl_bb717
  %"1589" = load i32* @"'s", align 4
  %"1590" = load i32* @"'SKIP1", align 4
  %"1591" = icmp eq i32 %"1589", %"1590"
  br i1 %"1591", label %CdAudio435DeviceControl_bb722, label %CdAudio435DeviceControl_bb723

CdAudio435DeviceControl_bb722:                    ; preds = %CdAudio435DeviceControl_bb721
  %"1592" = load i32* @"'SKIP2", align 4
  store i32 %"1592", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i, i32* @"'lowerDriverReturn", align 4
  br label %CdAudio435DeviceControl_CdAudioSendToNextDriver.exit

CdAudio435DeviceControl_bb723:                    ; preds = %CdAudio435DeviceControl_bb721
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudio435DeviceControl_bb724:                    ; preds = %CdAudio435DeviceControl_bb698
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudio435DeviceControl_LeafBlock68:              ; preds = %CdAudio435DeviceControl_NodeBlock70
  %SwitchLeaf69 = icmp eq i32 %"1377", 149512
  br i1 %SwitchLeaf69, label %CdAudio435DeviceControl_bb725, label %CdAudio435DeviceControl_NewDefault

CdAudio435DeviceControl_bb725:                    ; preds = %CdAudio435DeviceControl_LeafBlock68
  %"1593" = call i32 @__VERIFIER_nondet_int() #5
  %"1594" = call i32 @__VERIFIER_nondet_int() #5
  %"1595" = call i32 @__VERIFIER_nondet_int() #5
  br label %CdAudio435DeviceControl_bb726

CdAudio435DeviceControl_bb726:                    ; preds = %CdAudio435DeviceControl_LeafBlock64, %CdAudio435DeviceControl_LeafBlock56, %CdAudio435DeviceControl_LeafBlock46, %CdAudio435DeviceControl_bb652, %CdAudio435DeviceControl_bb676, %CdAudio435DeviceControl_bb671, %CdAudio435DeviceControl_bb725, %CdAudio435DeviceControl_bb634, %CdAudio435DeviceControl_CdAudioIsPlayActive.exit, %CdAudio435DeviceControl_bb675, %CdAudio435DeviceControl_bb653, %CdAudio435DeviceControl_bb655, %CdAudio435DeviceControl_bb654, %CdAudio435DeviceControl_bb665, %CdAudio435DeviceControl_bb677, %CdAudio435DeviceControl_bb684, %CdAudio435DeviceControl_bb685
  %status.4 = phi i32 [ %status.1, %CdAudio435DeviceControl_bb652 ], [ -1073741670, %CdAudio435DeviceControl_bb676 ], [ -1073741670, %CdAudio435DeviceControl_bb671 ], [ -1073741670, %CdAudio435DeviceControl_bb725 ], [ -1073741789, %CdAudio435DeviceControl_bb634 ], [ -2147483631, %CdAudio435DeviceControl_CdAudioIsPlayActive.exit ], [ -1073741820, %CdAudio435DeviceControl_bb675 ], [ -1073741820, %CdAudio435DeviceControl_bb653 ], [ %., %CdAudio435DeviceControl_bb655 ], [ -1073741670, %CdAudio435DeviceControl_bb654 ], [ -1073741670, %CdAudio435DeviceControl_bb665 ], [ -1073741789, %CdAudio435DeviceControl_bb677 ], [ -1073741670, %CdAudio435DeviceControl_bb684 ], [ -1073741670, %CdAudio435DeviceControl_bb685 ], [ -1073741808, %CdAudio435DeviceControl_LeafBlock46 ], [ -1073741808, %CdAudio435DeviceControl_LeafBlock56 ], [ -1073741808, %CdAudio435DeviceControl_LeafBlock64 ]
  store i32 %status.4, i32* @"'myStatus", align 4
  %"1596" = load i32* @"'s", align 4
  %"1597" = load i32* @"'NP", align 4
  %"1598" = icmp eq i32 %"1596", %"1597"
  br i1 %"1598", label %CdAudio435DeviceControl_IofCompleteRequest.exit34, label %CdAudio435DeviceControl_bb727

CdAudio435DeviceControl_IofCompleteRequest.exit34: ; preds = %CdAudio435DeviceControl_bb726
  %"1599" = load i32* @"'DC", align 4
  store i32 %"1599", i32* @"'s", align 4
  br label %CdAudio435DeviceControl_CdAudioSendToNextDriver.exit

CdAudio435DeviceControl_bb727:                    ; preds = %CdAudio435DeviceControl_bb726
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudio435DeviceControl_NewDefault:               ; preds = %CdAudio435DeviceControl_LeafBlock68, %CdAudio435DeviceControl_LeafBlock66, %CdAudio435DeviceControl_LeafBlock64, %CdAudio435DeviceControl_LeafBlock58, %CdAudio435DeviceControl_LeafBlock56, %CdAudio435DeviceControl_LeafBlock54, %CdAudio435DeviceControl_LeafBlock46, %CdAudio435DeviceControl_LeafBlock44, %CdAudio435DeviceControl_LeafBlock42, %CdAudio435DeviceControl_LeafBlock38, %CdAudio435DeviceControl_LeafBlock36, %CdAudio435DeviceControl_LeafBlock
  br label %CdAudio435DeviceControl_bb728

CdAudio435DeviceControl_bb728:                    ; preds = %CdAudio435DeviceControl_NewDefault
  %"1600" = call i32 @__VERIFIER_nondet_int() #5
  %"1601" = call i32 @__VERIFIER_nondet_int() #5
  %"1602" = call i32 @__VERIFIER_nondet_int() #5
  %"1603" = load i32* @"'s", align 4
  %"1604" = load i32* @"'NP", align 4
  %"1605" = icmp eq i32 %"1603", %"1604"
  br i1 %"1605", label %CdAudio435DeviceControl_bb729, label %CdAudio435DeviceControl_bb754

CdAudio435DeviceControl_bb729:                    ; preds = %CdAudio435DeviceControl_bb728
  %"1606" = load i32* @"'SKIP1", align 4
  store i32 %"1606", i32* @"'s", align 4
  %"1607" = call i32 @__kittel_nondef.0() #5
  %"1608" = call i32 @__VERIFIER_nondet_int() #5
  %"1609" = call i32 @__VERIFIER_nondet_int() #5
  %"1610" = load i32* @"'compRegistered", align 4
  %"1611" = icmp ne i32 %"1610", 0
  br i1 %"1611", label %CdAudio435DeviceControl_bb730, label %CdAudio435DeviceControl_bb742

CdAudio435DeviceControl_bb730:                    ; preds = %CdAudio435DeviceControl_bb729
  %"1612" = load i32* @"'routine", align 4
  %"1613" = icmp eq i32 %"1612", 0
  br i1 %"1613", label %CdAudio435DeviceControl_bb731, label %CdAudio435DeviceControl_bb737

CdAudio435DeviceControl_bb731:                    ; preds = %CdAudio435DeviceControl_bb730
  %"1614" = call i32 @__VERIFIER_nondet_int() #5
  %"1615" = call i32 @__VERIFIER_nondet_int() #5
  %"1616" = icmp ne i32 %"1614", 0
  br i1 %"1616", label %CdAudio435DeviceControl_bb732, label %CdAudio435DeviceControl_bb735

CdAudio435DeviceControl_bb732:                    ; preds = %CdAudio435DeviceControl_bb731
  %"1617" = load i32* @"'pended", align 4
  %"1618" = icmp eq i32 %"1617", 0
  br i1 %"1618", label %CdAudio435DeviceControl_bb733, label %CdAudio435DeviceControl_bb734

CdAudio435DeviceControl_bb733:                    ; preds = %CdAudio435DeviceControl_bb732
  store i32 1, i32* @"'pended", align 4
  br label %CdAudio435DeviceControl_bb735

CdAudio435DeviceControl_bb734:                    ; preds = %CdAudio435DeviceControl_bb732
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudio435DeviceControl_bb735:                    ; preds = %CdAudio435DeviceControl_bb733, %CdAudio435DeviceControl_bb731
  %"1619" = load i32* @"'myStatus", align 4
  %"1620" = icmp sge i32 %"1619", 0
  br i1 %"1620", label %CdAudio435DeviceControl_bb736, label %CdAudio435DeviceControl_HPCdrCompletion.exit.i.i28

CdAudio435DeviceControl_bb736:                    ; preds = %CdAudio435DeviceControl_bb735
  %"1621" = call i32 @__VERIFIER_nondet_int() #5
  br label %CdAudio435DeviceControl_HPCdrCompletion.exit.i.i28

CdAudio435DeviceControl_HPCdrCompletion.exit.i.i28: ; preds = %CdAudio435DeviceControl_bb736, %CdAudio435DeviceControl_bb735
  %"1622" = load i32* @"'myStatus", align 4
  br label %CdAudio435DeviceControl_bb739

CdAudio435DeviceControl_bb737:                    ; preds = %CdAudio435DeviceControl_bb730
  %"1623" = load i32* @"'routine", align 4
  %"1624" = icmp eq i32 %"1623", 1
  br i1 %"1624", label %CdAudio435DeviceControl_bb738, label %CdAudio435DeviceControl_bb739

CdAudio435DeviceControl_bb738:                    ; preds = %CdAudio435DeviceControl_bb737
  %"1625" = call i32 @__VERIFIER_nondet_int() #5
  store i32 1, i32* @"'setEventCalled", align 4
  br label %CdAudio435DeviceControl_bb739

CdAudio435DeviceControl_bb739:                    ; preds = %CdAudio435DeviceControl_bb738, %CdAudio435DeviceControl_bb737, %CdAudio435DeviceControl_HPCdrCompletion.exit.i.i28
  %compRetStatus.1.i.i29 = phi i32 [ %"1622", %CdAudio435DeviceControl_HPCdrCompletion.exit.i.i28 ], [ -1073741802, %CdAudio435DeviceControl_bb738 ], [ %"1607", %CdAudio435DeviceControl_bb737 ]
  %"1626" = sext i32 %compRetStatus.1.i.i29 to i64
  %"1627" = icmp eq i64 %"1626", -1073741802
  br i1 %"1627", label %CdAudio435DeviceControl_bb740, label %CdAudio435DeviceControl_bb742

CdAudio435DeviceControl_bb740:                    ; preds = %CdAudio435DeviceControl_bb739
  %"1628" = load i32* @"'s", align 4
  %"1629" = load i32* @"'NP", align 4
  %"1630" = icmp eq i32 %"1628", %"1629"
  br i1 %"1630", label %CdAudio435DeviceControl_stubMoreProcessingRequired.exit.i.i30, label %CdAudio435DeviceControl_bb741

CdAudio435DeviceControl_stubMoreProcessingRequired.exit.i.i30: ; preds = %CdAudio435DeviceControl_bb740
  %"1631" = load i32* @"'MPR1", align 4
  store i32 %"1631", i32* @"'s", align 4
  br label %CdAudio435DeviceControl_bb742

CdAudio435DeviceControl_bb741:                    ; preds = %CdAudio435DeviceControl_bb740
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudio435DeviceControl_bb742:                    ; preds = %CdAudio435DeviceControl_stubMoreProcessingRequired.exit.i.i30, %CdAudio435DeviceControl_bb739, %CdAudio435DeviceControl_bb729
  %"1632" = icmp ne i32 %"1608", 0
  br i1 %"1632", label %CdAudio435DeviceControl_bb745, label %CdAudio435DeviceControl_bb743

CdAudio435DeviceControl_bb743:                    ; preds = %CdAudio435DeviceControl_bb742
  %"1633" = call i32 @__VERIFIER_nondet_int() #5
  %"1634" = icmp eq i32 %"1633", 0
  br i1 %"1634", label %CdAudio435DeviceControl_bb745, label %CdAudio435DeviceControl_bb744

CdAudio435DeviceControl_bb744:                    ; preds = %CdAudio435DeviceControl_bb743
  %"1635" = call i32 @__VERIFIER_nondet_int() #5
  %"1636" = icmp eq i32 %"1635", 1
  %..i.i31 = select i1 %"1636", i32 -1073741823, i32 259
  br label %CdAudio435DeviceControl_bb745

CdAudio435DeviceControl_bb745:                    ; preds = %CdAudio435DeviceControl_bb744, %CdAudio435DeviceControl_bb743, %CdAudio435DeviceControl_bb742
  %returnVal2.1.i.i32 = phi i32 [ 259, %CdAudio435DeviceControl_bb742 ], [ 0, %CdAudio435DeviceControl_bb743 ], [ %..i.i31, %CdAudio435DeviceControl_bb744 ]
  %"1637" = load i32* @"'s", align 4
  %"1638" = load i32* @"'NP", align 4
  %"1639" = icmp eq i32 %"1637", %"1638"
  br i1 %"1639", label %CdAudio435DeviceControl_bb746, label %CdAudio435DeviceControl_bb747

CdAudio435DeviceControl_bb746:                    ; preds = %CdAudio435DeviceControl_bb745
  %"1640" = load i32* @"'IPC", align 4
  store i32 %"1640", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i32, i32* @"'lowerDriverReturn", align 4
  br label %CdAudio435DeviceControl_CdAudioSendToNextDriver.exit

CdAudio435DeviceControl_bb747:                    ; preds = %CdAudio435DeviceControl_bb745
  %"1641" = load i32* @"'s", align 4
  %"1642" = load i32* @"'MPR1", align 4
  %"1643" = icmp eq i32 %"1641", %"1642"
  br i1 %"1643", label %CdAudio435DeviceControl_bb748, label %CdAudio435DeviceControl_bb751

CdAudio435DeviceControl_bb748:                    ; preds = %CdAudio435DeviceControl_bb747
  %"1644" = icmp eq i32 %returnVal2.1.i.i32, 259
  br i1 %"1644", label %CdAudio435DeviceControl_bb749, label %CdAudio435DeviceControl_bb750

CdAudio435DeviceControl_bb749:                    ; preds = %CdAudio435DeviceControl_bb748
  %"1645" = load i32* @"'MPR3", align 4
  store i32 %"1645", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i32, i32* @"'lowerDriverReturn", align 4
  br label %CdAudio435DeviceControl_CdAudioSendToNextDriver.exit

CdAudio435DeviceControl_bb750:                    ; preds = %CdAudio435DeviceControl_bb748
  %"1646" = load i32* @"'NP", align 4
  store i32 %"1646", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i32, i32* @"'lowerDriverReturn", align 4
  br label %CdAudio435DeviceControl_CdAudioSendToNextDriver.exit

CdAudio435DeviceControl_bb751:                    ; preds = %CdAudio435DeviceControl_bb747
  %"1647" = load i32* @"'s", align 4
  %"1648" = load i32* @"'SKIP1", align 4
  %"1649" = icmp eq i32 %"1647", %"1648"
  br i1 %"1649", label %CdAudio435DeviceControl_bb752, label %CdAudio435DeviceControl_bb753

CdAudio435DeviceControl_bb752:                    ; preds = %CdAudio435DeviceControl_bb751
  %"1650" = load i32* @"'SKIP2", align 4
  store i32 %"1650", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i32, i32* @"'lowerDriverReturn", align 4
  br label %CdAudio435DeviceControl_CdAudioSendToNextDriver.exit

CdAudio435DeviceControl_CdAudioSendToNextDriver.exit: ; preds = %CdAudio435DeviceControl_bb752, %CdAudio435DeviceControl_bb750, %CdAudio435DeviceControl_bb749, %CdAudio435DeviceControl_bb746, %CdAudio435DeviceControl_bb722, %CdAudio435DeviceControl_bb720, %CdAudio435DeviceControl_bb719, %CdAudio435DeviceControl_bb716, %CdAudio435DeviceControl_IofCompleteRequest.exit34, %CdAudio435DeviceControl_IofCompleteRequest.exit27, %CdAudio435DeviceControl_IofCompleteRequest.exit16, %CdAudio435DeviceControl_IofCompleteRequest.exit15, %CdAudio435DeviceControl_IofCompleteRequest.exit13, %CdAudio435DeviceControl_IofCompleteRequest.exit12, %CdAudio435DeviceControl_IofCompleteRequest.exit10, %CdAudio435DeviceControl_IofCompleteRequest.exit8, %CdAudio435DeviceControl_IofCompleteRequest.exit7, %CdAudio435DeviceControl_IofCompleteRequest.exit4, %CdAudio435DeviceControl_IofCompleteRequest.exit2, %CdAudio435DeviceControl_IofCompleteRequest.exit
  %.0 = phi i32 [ %status.4, %CdAudio435DeviceControl_IofCompleteRequest.exit34 ], [ -1073741670, %CdAudio435DeviceControl_IofCompleteRequest.exit ], [ -1073741670, %CdAudio435DeviceControl_IofCompleteRequest.exit2 ], [ -1073741670, %CdAudio435DeviceControl_IofCompleteRequest.exit4 ], [ -1073741670, %CdAudio435DeviceControl_IofCompleteRequest.exit7 ], [ 0, %CdAudio435DeviceControl_IofCompleteRequest.exit8 ], [ -1073741670, %CdAudio435DeviceControl_IofCompleteRequest.exit10 ], [ -1073741670, %CdAudio435DeviceControl_IofCompleteRequest.exit12 ], [ -1073741823, %CdAudio435DeviceControl_IofCompleteRequest.exit13 ], [ -1073741670, %CdAudio435DeviceControl_IofCompleteRequest.exit15 ], [ -1073741823, %CdAudio435DeviceControl_IofCompleteRequest.exit16 ], [ 0, %CdAudio435DeviceControl_IofCompleteRequest.exit27 ], [ %returnVal2.1.i.i, %CdAudio435DeviceControl_bb716 ], [ %returnVal2.1.i.i, %CdAudio435DeviceControl_bb719 ], [ %returnVal2.1.i.i, %CdAudio435DeviceControl_bb720 ], [ %returnVal2.1.i.i, %CdAudio435DeviceControl_bb722 ], [ %returnVal2.1.i.i32, %CdAudio435DeviceControl_bb746 ], [ %returnVal2.1.i.i32, %CdAudio435DeviceControl_bb749 ], [ %returnVal2.1.i.i32, %CdAudio435DeviceControl_bb750 ], [ %returnVal2.1.i.i32, %CdAudio435DeviceControl_bb752 ]
  ret i32 %.0

CdAudio435DeviceControl_bb753:                    ; preds = %CdAudio435DeviceControl_bb751
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudio435DeviceControl_bb754:                    ; preds = %CdAudio435DeviceControl_bb728
  call void (...)* @__VERIFIER_error() #4
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @CdAudioAtapiDeviceControl(i32 %DeviceObject, i32 %Irp) #0 {
CdAudioAtapiDeviceControl_bb755:
  %"1651" = call i32 @__VERIFIER_nondet_int()
  %"1652" = call i32 @__VERIFIER_nondet_int()
  %"1653" = call i32 @__VERIFIER_nondet_int()
  %"1654" = icmp eq i32 %"1651", 147464
  %"1655" = call i32 @__VERIFIER_nondet_int() #5
  %"1656" = call i32 @__VERIFIER_nondet_int() #5
  %"1657" = call i32 @__VERIFIER_nondet_int() #5
  br i1 %"1654", label %CdAudioAtapiDeviceControl_bb756, label %CdAudioAtapiDeviceControl_bb761

CdAudioAtapiDeviceControl_bb756:                  ; preds = %CdAudioAtapiDeviceControl_bb755
  %"1658" = icmp slt i32 -1073741670, 0
  store i32 -1073741670, i32* @"'myStatus", align 4
  %"1659" = load i32* @"'s", align 4
  %"1660" = load i32* @"'NP", align 4
  %"1661" = icmp eq i32 %"1659", %"1660"
  br i1 %"1658", label %CdAudioAtapiDeviceControl_bb757, label %CdAudioAtapiDeviceControl_bb759

CdAudioAtapiDeviceControl_bb757:                  ; preds = %CdAudioAtapiDeviceControl_bb756
  br i1 %"1661", label %CdAudioAtapiDeviceControl_IofCompleteRequest.exit, label %CdAudioAtapiDeviceControl_bb758

CdAudioAtapiDeviceControl_IofCompleteRequest.exit: ; preds = %CdAudioAtapiDeviceControl_bb757
  %"1662" = load i32* @"'DC", align 4
  store i32 %"1662", i32* @"'s", align 4
  br label %CdAudioAtapiDeviceControl_CdAudioSendToNextDriver.exit

CdAudioAtapiDeviceControl_bb758:                  ; preds = %CdAudioAtapiDeviceControl_bb757
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioAtapiDeviceControl_bb759:                  ; preds = %CdAudioAtapiDeviceControl_bb756
  br i1 %"1661", label %CdAudioAtapiDeviceControl_IofCompleteRequest.exit1, label %CdAudioAtapiDeviceControl_bb760

CdAudioAtapiDeviceControl_IofCompleteRequest.exit1: ; preds = %CdAudioAtapiDeviceControl_bb759
  %"1663" = load i32* @"'DC", align 4
  store i32 %"1663", i32* @"'s", align 4
  br label %CdAudioAtapiDeviceControl_CdAudioSendToNextDriver.exit

CdAudioAtapiDeviceControl_bb760:                  ; preds = %CdAudioAtapiDeviceControl_bb759
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioAtapiDeviceControl_bb761:                  ; preds = %CdAudioAtapiDeviceControl_bb755
  %"1664" = load i32* @"'s", align 4
  %"1665" = load i32* @"'NP", align 4
  %"1666" = icmp eq i32 %"1664", %"1665"
  br i1 %"1666", label %CdAudioAtapiDeviceControl_bb762, label %CdAudioAtapiDeviceControl_bb787

CdAudioAtapiDeviceControl_bb762:                  ; preds = %CdAudioAtapiDeviceControl_bb761
  %"1667" = load i32* @"'SKIP1", align 4
  store i32 %"1667", i32* @"'s", align 4
  %"1668" = call i32 @__kittel_nondef.0() #5
  %"1669" = call i32 @__VERIFIER_nondet_int() #5
  %"1670" = call i32 @__VERIFIER_nondet_int() #5
  %"1671" = load i32* @"'compRegistered", align 4
  %"1672" = icmp ne i32 %"1671", 0
  br i1 %"1672", label %CdAudioAtapiDeviceControl_bb763, label %CdAudioAtapiDeviceControl_bb775

CdAudioAtapiDeviceControl_bb763:                  ; preds = %CdAudioAtapiDeviceControl_bb762
  %"1673" = load i32* @"'routine", align 4
  %"1674" = icmp eq i32 %"1673", 0
  br i1 %"1674", label %CdAudioAtapiDeviceControl_bb764, label %CdAudioAtapiDeviceControl_bb770

CdAudioAtapiDeviceControl_bb764:                  ; preds = %CdAudioAtapiDeviceControl_bb763
  %"1675" = call i32 @__VERIFIER_nondet_int() #5
  %"1676" = call i32 @__VERIFIER_nondet_int() #5
  %"1677" = icmp ne i32 %"1675", 0
  br i1 %"1677", label %CdAudioAtapiDeviceControl_bb765, label %CdAudioAtapiDeviceControl_bb768

CdAudioAtapiDeviceControl_bb765:                  ; preds = %CdAudioAtapiDeviceControl_bb764
  %"1678" = load i32* @"'pended", align 4
  %"1679" = icmp eq i32 %"1678", 0
  br i1 %"1679", label %CdAudioAtapiDeviceControl_bb766, label %CdAudioAtapiDeviceControl_bb767

CdAudioAtapiDeviceControl_bb766:                  ; preds = %CdAudioAtapiDeviceControl_bb765
  store i32 1, i32* @"'pended", align 4
  br label %CdAudioAtapiDeviceControl_bb768

CdAudioAtapiDeviceControl_bb767:                  ; preds = %CdAudioAtapiDeviceControl_bb765
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioAtapiDeviceControl_bb768:                  ; preds = %CdAudioAtapiDeviceControl_bb766, %CdAudioAtapiDeviceControl_bb764
  %"1680" = load i32* @"'myStatus", align 4
  %"1681" = icmp sge i32 %"1680", 0
  br i1 %"1681", label %CdAudioAtapiDeviceControl_bb769, label %CdAudioAtapiDeviceControl_HPCdrCompletion.exit.i.i

CdAudioAtapiDeviceControl_bb769:                  ; preds = %CdAudioAtapiDeviceControl_bb768
  %"1682" = call i32 @__VERIFIER_nondet_int() #5
  br label %CdAudioAtapiDeviceControl_HPCdrCompletion.exit.i.i

CdAudioAtapiDeviceControl_HPCdrCompletion.exit.i.i: ; preds = %CdAudioAtapiDeviceControl_bb769, %CdAudioAtapiDeviceControl_bb768
  %"1683" = load i32* @"'myStatus", align 4
  br label %CdAudioAtapiDeviceControl_bb772

CdAudioAtapiDeviceControl_bb770:                  ; preds = %CdAudioAtapiDeviceControl_bb763
  %"1684" = load i32* @"'routine", align 4
  %"1685" = icmp eq i32 %"1684", 1
  br i1 %"1685", label %CdAudioAtapiDeviceControl_bb771, label %CdAudioAtapiDeviceControl_bb772

CdAudioAtapiDeviceControl_bb771:                  ; preds = %CdAudioAtapiDeviceControl_bb770
  %"1686" = call i32 @__VERIFIER_nondet_int() #5
  store i32 1, i32* @"'setEventCalled", align 4
  br label %CdAudioAtapiDeviceControl_bb772

CdAudioAtapiDeviceControl_bb772:                  ; preds = %CdAudioAtapiDeviceControl_bb771, %CdAudioAtapiDeviceControl_bb770, %CdAudioAtapiDeviceControl_HPCdrCompletion.exit.i.i
  %compRetStatus.1.i.i = phi i32 [ %"1683", %CdAudioAtapiDeviceControl_HPCdrCompletion.exit.i.i ], [ -1073741802, %CdAudioAtapiDeviceControl_bb771 ], [ %"1668", %CdAudioAtapiDeviceControl_bb770 ]
  %"1687" = sext i32 %compRetStatus.1.i.i to i64
  %"1688" = icmp eq i64 %"1687", -1073741802
  br i1 %"1688", label %CdAudioAtapiDeviceControl_bb773, label %CdAudioAtapiDeviceControl_bb775

CdAudioAtapiDeviceControl_bb773:                  ; preds = %CdAudioAtapiDeviceControl_bb772
  %"1689" = load i32* @"'s", align 4
  %"1690" = load i32* @"'NP", align 4
  %"1691" = icmp eq i32 %"1689", %"1690"
  br i1 %"1691", label %CdAudioAtapiDeviceControl_stubMoreProcessingRequired.exit.i.i, label %CdAudioAtapiDeviceControl_bb774

CdAudioAtapiDeviceControl_stubMoreProcessingRequired.exit.i.i: ; preds = %CdAudioAtapiDeviceControl_bb773
  %"1692" = load i32* @"'MPR1", align 4
  store i32 %"1692", i32* @"'s", align 4
  br label %CdAudioAtapiDeviceControl_bb775

CdAudioAtapiDeviceControl_bb774:                  ; preds = %CdAudioAtapiDeviceControl_bb773
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioAtapiDeviceControl_bb775:                  ; preds = %CdAudioAtapiDeviceControl_stubMoreProcessingRequired.exit.i.i, %CdAudioAtapiDeviceControl_bb772, %CdAudioAtapiDeviceControl_bb762
  %"1693" = icmp ne i32 %"1669", 0
  br i1 %"1693", label %CdAudioAtapiDeviceControl_bb778, label %CdAudioAtapiDeviceControl_bb776

CdAudioAtapiDeviceControl_bb776:                  ; preds = %CdAudioAtapiDeviceControl_bb775
  %"1694" = call i32 @__VERIFIER_nondet_int() #5
  %"1695" = icmp eq i32 %"1694", 0
  br i1 %"1695", label %CdAudioAtapiDeviceControl_bb778, label %CdAudioAtapiDeviceControl_bb777

CdAudioAtapiDeviceControl_bb777:                  ; preds = %CdAudioAtapiDeviceControl_bb776
  %"1696" = call i32 @__VERIFIER_nondet_int() #5
  %"1697" = icmp eq i32 %"1696", 1
  %..i.i = select i1 %"1697", i32 -1073741823, i32 259
  br label %CdAudioAtapiDeviceControl_bb778

CdAudioAtapiDeviceControl_bb778:                  ; preds = %CdAudioAtapiDeviceControl_bb777, %CdAudioAtapiDeviceControl_bb776, %CdAudioAtapiDeviceControl_bb775
  %returnVal2.1.i.i = phi i32 [ 259, %CdAudioAtapiDeviceControl_bb775 ], [ 0, %CdAudioAtapiDeviceControl_bb776 ], [ %..i.i, %CdAudioAtapiDeviceControl_bb777 ]
  %"1698" = load i32* @"'s", align 4
  %"1699" = load i32* @"'NP", align 4
  %"1700" = icmp eq i32 %"1698", %"1699"
  br i1 %"1700", label %CdAudioAtapiDeviceControl_bb779, label %CdAudioAtapiDeviceControl_bb780

CdAudioAtapiDeviceControl_bb779:                  ; preds = %CdAudioAtapiDeviceControl_bb778
  %"1701" = load i32* @"'IPC", align 4
  store i32 %"1701", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i, i32* @"'lowerDriverReturn", align 4
  br label %CdAudioAtapiDeviceControl_CdAudioSendToNextDriver.exit

CdAudioAtapiDeviceControl_bb780:                  ; preds = %CdAudioAtapiDeviceControl_bb778
  %"1702" = load i32* @"'s", align 4
  %"1703" = load i32* @"'MPR1", align 4
  %"1704" = icmp eq i32 %"1702", %"1703"
  br i1 %"1704", label %CdAudioAtapiDeviceControl_bb781, label %CdAudioAtapiDeviceControl_bb784

CdAudioAtapiDeviceControl_bb781:                  ; preds = %CdAudioAtapiDeviceControl_bb780
  %"1705" = icmp eq i32 %returnVal2.1.i.i, 259
  br i1 %"1705", label %CdAudioAtapiDeviceControl_bb782, label %CdAudioAtapiDeviceControl_bb783

CdAudioAtapiDeviceControl_bb782:                  ; preds = %CdAudioAtapiDeviceControl_bb781
  %"1706" = load i32* @"'MPR3", align 4
  store i32 %"1706", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i, i32* @"'lowerDriverReturn", align 4
  br label %CdAudioAtapiDeviceControl_CdAudioSendToNextDriver.exit

CdAudioAtapiDeviceControl_bb783:                  ; preds = %CdAudioAtapiDeviceControl_bb781
  %"1707" = load i32* @"'NP", align 4
  store i32 %"1707", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i, i32* @"'lowerDriverReturn", align 4
  br label %CdAudioAtapiDeviceControl_CdAudioSendToNextDriver.exit

CdAudioAtapiDeviceControl_bb784:                  ; preds = %CdAudioAtapiDeviceControl_bb780
  %"1708" = load i32* @"'s", align 4
  %"1709" = load i32* @"'SKIP1", align 4
  %"1710" = icmp eq i32 %"1708", %"1709"
  br i1 %"1710", label %CdAudioAtapiDeviceControl_bb785, label %CdAudioAtapiDeviceControl_bb786

CdAudioAtapiDeviceControl_bb785:                  ; preds = %CdAudioAtapiDeviceControl_bb784
  %"1711" = load i32* @"'SKIP2", align 4
  store i32 %"1711", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i, i32* @"'lowerDriverReturn", align 4
  br label %CdAudioAtapiDeviceControl_CdAudioSendToNextDriver.exit

CdAudioAtapiDeviceControl_CdAudioSendToNextDriver.exit: ; preds = %CdAudioAtapiDeviceControl_bb785, %CdAudioAtapiDeviceControl_bb783, %CdAudioAtapiDeviceControl_bb782, %CdAudioAtapiDeviceControl_bb779, %CdAudioAtapiDeviceControl_IofCompleteRequest.exit1, %CdAudioAtapiDeviceControl_IofCompleteRequest.exit
  %.0 = phi i32 [ -1073741670, %CdAudioAtapiDeviceControl_IofCompleteRequest.exit ], [ -1073741670, %CdAudioAtapiDeviceControl_IofCompleteRequest.exit1 ], [ %returnVal2.1.i.i, %CdAudioAtapiDeviceControl_bb779 ], [ %returnVal2.1.i.i, %CdAudioAtapiDeviceControl_bb782 ], [ %returnVal2.1.i.i, %CdAudioAtapiDeviceControl_bb783 ], [ %returnVal2.1.i.i, %CdAudioAtapiDeviceControl_bb785 ]
  ret i32 %.0

CdAudioAtapiDeviceControl_bb786:                  ; preds = %CdAudioAtapiDeviceControl_bb784
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioAtapiDeviceControl_bb787:                  ; preds = %CdAudioAtapiDeviceControl_bb761
  call void (...)* @__VERIFIER_error() #4
  unreachable
}

; Function Attrs: nounwind uwtable
define void @HpCdrProcessLastSession(i32 %Toc) #0 {
HpCdrProcessLastSession_bb788:
  %"1712" = call i32 @__VERIFIER_nondet_int()
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @HPCdrCompletion(i32 %DeviceObject, i32 %Irp, i32 %Context) #0 {
HPCdrCompletion_bb789:
  %"1713" = call i32 @__VERIFIER_nondet_int()
  %"1714" = call i32 @__VERIFIER_nondet_int()
  %"1715" = icmp ne i32 %"1713", 0
  br i1 %"1715", label %HPCdrCompletion_bb790, label %HPCdrCompletion_bb793

HPCdrCompletion_bb790:                            ; preds = %HPCdrCompletion_bb789
  %"1716" = load i32* @"'pended", align 4
  %"1717" = icmp eq i32 %"1716", 0
  br i1 %"1717", label %HPCdrCompletion_bb791, label %HPCdrCompletion_bb792

HPCdrCompletion_bb791:                            ; preds = %HPCdrCompletion_bb790
  store i32 1, i32* @"'pended", align 4
  br label %HPCdrCompletion_bb793

HPCdrCompletion_bb792:                            ; preds = %HPCdrCompletion_bb790
  call void (...)* @__VERIFIER_error() #4
  unreachable

HPCdrCompletion_bb793:                            ; preds = %HPCdrCompletion_bb791, %HPCdrCompletion_bb789
  %"1718" = load i32* @"'myStatus", align 4
  %"1719" = icmp sge i32 %"1718", 0
  br i1 %"1719", label %HPCdrCompletion_bb794, label %HPCdrCompletion_bb795

HPCdrCompletion_bb794:                            ; preds = %HPCdrCompletion_bb793
  %"1720" = call i32 @__VERIFIER_nondet_int() #5
  br label %HPCdrCompletion_bb795

HPCdrCompletion_bb795:                            ; preds = %HPCdrCompletion_bb794, %HPCdrCompletion_bb793
  %"1721" = load i32* @"'myStatus", align 4
  ret i32 %"1721"
}

; Function Attrs: nounwind uwtable
define i32 @CdAudioHPCdrDeviceControl(i32 %DeviceObject, i32 %Irp) #0 {
CdAudioHPCdrDeviceControl_bb796:
  %"1722" = call i32 @__VERIFIER_nondet_int()
  %"1723" = call i32 @__VERIFIER_nondet_int()
  %"1724" = icmp eq i32 %"1722", 147512
  br i1 %"1724", label %CdAudioHPCdrDeviceControl_bb797, label %CdAudioHPCdrDeviceControl_bb826

CdAudioHPCdrDeviceControl_bb797:                  ; preds = %CdAudioHPCdrDeviceControl_bb796
  %"1725" = load i32* @"'s", align 4
  %"1726" = load i32* @"'NP", align 4
  %"1727" = icmp ne i32 %"1725", %"1726"
  br i1 %"1727", label %CdAudioHPCdrDeviceControl_bb798, label %CdAudioHPCdrDeviceControl_bb799

CdAudioHPCdrDeviceControl_bb798:                  ; preds = %CdAudioHPCdrDeviceControl_bb797
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioHPCdrDeviceControl_bb799:                  ; preds = %CdAudioHPCdrDeviceControl_bb797
  %"1728" = load i32* @"'compRegistered", align 4
  %"1729" = icmp ne i32 %"1728", 0
  br i1 %"1729", label %CdAudioHPCdrDeviceControl_bb800, label %CdAudioHPCdrDeviceControl_bb801

CdAudioHPCdrDeviceControl_bb800:                  ; preds = %CdAudioHPCdrDeviceControl_bb799
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioHPCdrDeviceControl_bb801:                  ; preds = %CdAudioHPCdrDeviceControl_bb799
  store i32 1, i32* @"'compRegistered", align 4
  store i32 0, i32* @"'routine", align 4
  %"1730" = call i32 @__kittel_nondef.0() #5
  %"1731" = call i32 @__VERIFIER_nondet_int() #5
  %"1732" = call i32 @__VERIFIER_nondet_int() #5
  %"1733" = load i32* @"'compRegistered", align 4
  %"1734" = icmp ne i32 %"1733", 0
  br i1 %"1734", label %CdAudioHPCdrDeviceControl_bb802, label %CdAudioHPCdrDeviceControl_bb814

CdAudioHPCdrDeviceControl_bb802:                  ; preds = %CdAudioHPCdrDeviceControl_bb801
  %"1735" = load i32* @"'routine", align 4
  %"1736" = icmp eq i32 %"1735", 0
  br i1 %"1736", label %CdAudioHPCdrDeviceControl_bb803, label %CdAudioHPCdrDeviceControl_bb809

CdAudioHPCdrDeviceControl_bb803:                  ; preds = %CdAudioHPCdrDeviceControl_bb802
  %"1737" = call i32 @__VERIFIER_nondet_int() #5
  %"1738" = call i32 @__VERIFIER_nondet_int() #5
  %"1739" = icmp ne i32 %"1737", 0
  br i1 %"1739", label %CdAudioHPCdrDeviceControl_bb804, label %CdAudioHPCdrDeviceControl_bb807

CdAudioHPCdrDeviceControl_bb804:                  ; preds = %CdAudioHPCdrDeviceControl_bb803
  %"1740" = load i32* @"'pended", align 4
  %"1741" = icmp eq i32 %"1740", 0
  br i1 %"1741", label %CdAudioHPCdrDeviceControl_bb805, label %CdAudioHPCdrDeviceControl_bb806

CdAudioHPCdrDeviceControl_bb805:                  ; preds = %CdAudioHPCdrDeviceControl_bb804
  store i32 1, i32* @"'pended", align 4
  br label %CdAudioHPCdrDeviceControl_bb807

CdAudioHPCdrDeviceControl_bb806:                  ; preds = %CdAudioHPCdrDeviceControl_bb804
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioHPCdrDeviceControl_bb807:                  ; preds = %CdAudioHPCdrDeviceControl_bb805, %CdAudioHPCdrDeviceControl_bb803
  %"1742" = load i32* @"'myStatus", align 4
  %"1743" = icmp sge i32 %"1742", 0
  br i1 %"1743", label %CdAudioHPCdrDeviceControl_bb808, label %CdAudioHPCdrDeviceControl_HPCdrCompletion.exit.i

CdAudioHPCdrDeviceControl_bb808:                  ; preds = %CdAudioHPCdrDeviceControl_bb807
  %"1744" = call i32 @__VERIFIER_nondet_int() #5
  br label %CdAudioHPCdrDeviceControl_HPCdrCompletion.exit.i

CdAudioHPCdrDeviceControl_HPCdrCompletion.exit.i: ; preds = %CdAudioHPCdrDeviceControl_bb808, %CdAudioHPCdrDeviceControl_bb807
  %"1745" = load i32* @"'myStatus", align 4
  br label %CdAudioHPCdrDeviceControl_bb811

CdAudioHPCdrDeviceControl_bb809:                  ; preds = %CdAudioHPCdrDeviceControl_bb802
  %"1746" = load i32* @"'routine", align 4
  %"1747" = icmp eq i32 %"1746", 1
  br i1 %"1747", label %CdAudioHPCdrDeviceControl_bb810, label %CdAudioHPCdrDeviceControl_bb811

CdAudioHPCdrDeviceControl_bb810:                  ; preds = %CdAudioHPCdrDeviceControl_bb809
  %"1748" = call i32 @__VERIFIER_nondet_int() #5
  store i32 1, i32* @"'setEventCalled", align 4
  br label %CdAudioHPCdrDeviceControl_bb811

CdAudioHPCdrDeviceControl_bb811:                  ; preds = %CdAudioHPCdrDeviceControl_bb810, %CdAudioHPCdrDeviceControl_bb809, %CdAudioHPCdrDeviceControl_HPCdrCompletion.exit.i
  %compRetStatus.1.i = phi i32 [ %"1745", %CdAudioHPCdrDeviceControl_HPCdrCompletion.exit.i ], [ -1073741802, %CdAudioHPCdrDeviceControl_bb810 ], [ %"1730", %CdAudioHPCdrDeviceControl_bb809 ]
  %"1749" = sext i32 %compRetStatus.1.i to i64
  %"1750" = icmp eq i64 %"1749", -1073741802
  br i1 %"1750", label %CdAudioHPCdrDeviceControl_bb812, label %CdAudioHPCdrDeviceControl_bb814

CdAudioHPCdrDeviceControl_bb812:                  ; preds = %CdAudioHPCdrDeviceControl_bb811
  %"1751" = load i32* @"'s", align 4
  %"1752" = load i32* @"'NP", align 4
  %"1753" = icmp eq i32 %"1751", %"1752"
  br i1 %"1753", label %CdAudioHPCdrDeviceControl_stubMoreProcessingRequired.exit.i, label %CdAudioHPCdrDeviceControl_bb813

CdAudioHPCdrDeviceControl_stubMoreProcessingRequired.exit.i: ; preds = %CdAudioHPCdrDeviceControl_bb812
  %"1754" = load i32* @"'MPR1", align 4
  store i32 %"1754", i32* @"'s", align 4
  br label %CdAudioHPCdrDeviceControl_bb814

CdAudioHPCdrDeviceControl_bb813:                  ; preds = %CdAudioHPCdrDeviceControl_bb812
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioHPCdrDeviceControl_bb814:                  ; preds = %CdAudioHPCdrDeviceControl_stubMoreProcessingRequired.exit.i, %CdAudioHPCdrDeviceControl_bb811, %CdAudioHPCdrDeviceControl_bb801
  %"1755" = icmp ne i32 %"1731", 0
  br i1 %"1755", label %CdAudioHPCdrDeviceControl_bb817, label %CdAudioHPCdrDeviceControl_bb815

CdAudioHPCdrDeviceControl_bb815:                  ; preds = %CdAudioHPCdrDeviceControl_bb814
  %"1756" = call i32 @__VERIFIER_nondet_int() #5
  %"1757" = icmp eq i32 %"1756", 0
  br i1 %"1757", label %CdAudioHPCdrDeviceControl_bb817, label %CdAudioHPCdrDeviceControl_bb816

CdAudioHPCdrDeviceControl_bb816:                  ; preds = %CdAudioHPCdrDeviceControl_bb815
  %"1758" = call i32 @__VERIFIER_nondet_int() #5
  %"1759" = icmp eq i32 %"1758", 1
  %..i = select i1 %"1759", i32 -1073741823, i32 259
  br label %CdAudioHPCdrDeviceControl_bb817

CdAudioHPCdrDeviceControl_bb817:                  ; preds = %CdAudioHPCdrDeviceControl_bb816, %CdAudioHPCdrDeviceControl_bb815, %CdAudioHPCdrDeviceControl_bb814
  %returnVal2.1.i = phi i32 [ 259, %CdAudioHPCdrDeviceControl_bb814 ], [ 0, %CdAudioHPCdrDeviceControl_bb815 ], [ %..i, %CdAudioHPCdrDeviceControl_bb816 ]
  %"1760" = load i32* @"'s", align 4
  %"1761" = load i32* @"'NP", align 4
  %"1762" = icmp eq i32 %"1760", %"1761"
  br i1 %"1762", label %CdAudioHPCdrDeviceControl_bb818, label %CdAudioHPCdrDeviceControl_bb819

CdAudioHPCdrDeviceControl_bb818:                  ; preds = %CdAudioHPCdrDeviceControl_bb817
  %"1763" = load i32* @"'IPC", align 4
  store i32 %"1763", i32* @"'s", align 4
  store i32 %returnVal2.1.i, i32* @"'lowerDriverReturn", align 4
  br label %CdAudioHPCdrDeviceControl_IofCallDriver.exit

CdAudioHPCdrDeviceControl_bb819:                  ; preds = %CdAudioHPCdrDeviceControl_bb817
  %"1764" = load i32* @"'s", align 4
  %"1765" = load i32* @"'MPR1", align 4
  %"1766" = icmp eq i32 %"1764", %"1765"
  br i1 %"1766", label %CdAudioHPCdrDeviceControl_bb820, label %CdAudioHPCdrDeviceControl_bb823

CdAudioHPCdrDeviceControl_bb820:                  ; preds = %CdAudioHPCdrDeviceControl_bb819
  %"1767" = icmp eq i32 %returnVal2.1.i, 259
  br i1 %"1767", label %CdAudioHPCdrDeviceControl_bb821, label %CdAudioHPCdrDeviceControl_bb822

CdAudioHPCdrDeviceControl_bb821:                  ; preds = %CdAudioHPCdrDeviceControl_bb820
  %"1768" = load i32* @"'MPR3", align 4
  store i32 %"1768", i32* @"'s", align 4
  store i32 %returnVal2.1.i, i32* @"'lowerDriverReturn", align 4
  br label %CdAudioHPCdrDeviceControl_IofCallDriver.exit

CdAudioHPCdrDeviceControl_bb822:                  ; preds = %CdAudioHPCdrDeviceControl_bb820
  %"1769" = load i32* @"'NP", align 4
  store i32 %"1769", i32* @"'s", align 4
  store i32 %returnVal2.1.i, i32* @"'lowerDriverReturn", align 4
  br label %CdAudioHPCdrDeviceControl_IofCallDriver.exit

CdAudioHPCdrDeviceControl_bb823:                  ; preds = %CdAudioHPCdrDeviceControl_bb819
  %"1770" = load i32* @"'s", align 4
  %"1771" = load i32* @"'SKIP1", align 4
  %"1772" = icmp eq i32 %"1770", %"1771"
  br i1 %"1772", label %CdAudioHPCdrDeviceControl_bb824, label %CdAudioHPCdrDeviceControl_bb825

CdAudioHPCdrDeviceControl_bb824:                  ; preds = %CdAudioHPCdrDeviceControl_bb823
  %"1773" = load i32* @"'SKIP2", align 4
  store i32 %"1773", i32* @"'s", align 4
  store i32 %returnVal2.1.i, i32* @"'lowerDriverReturn", align 4
  br label %CdAudioHPCdrDeviceControl_IofCallDriver.exit

CdAudioHPCdrDeviceControl_bb825:                  ; preds = %CdAudioHPCdrDeviceControl_bb823
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioHPCdrDeviceControl_bb826:                  ; preds = %CdAudioHPCdrDeviceControl_bb796
  %"1774" = call i32 @__VERIFIER_nondet_int() #5
  %"1775" = call i32 @__VERIFIER_nondet_int() #5
  %"1776" = call i32 @__VERIFIER_nondet_int() #5
  %"1777" = load i32* @"'s", align 4
  %"1778" = load i32* @"'NP", align 4
  %"1779" = icmp eq i32 %"1777", %"1778"
  br i1 %"1779", label %CdAudioHPCdrDeviceControl_bb827, label %CdAudioHPCdrDeviceControl_bb852

CdAudioHPCdrDeviceControl_bb827:                  ; preds = %CdAudioHPCdrDeviceControl_bb826
  %"1780" = load i32* @"'SKIP1", align 4
  store i32 %"1780", i32* @"'s", align 4
  %"1781" = call i32 @__kittel_nondef.0() #5
  %"1782" = call i32 @__VERIFIER_nondet_int() #5
  %"1783" = call i32 @__VERIFIER_nondet_int() #5
  %"1784" = load i32* @"'compRegistered", align 4
  %"1785" = icmp ne i32 %"1784", 0
  br i1 %"1785", label %CdAudioHPCdrDeviceControl_bb828, label %CdAudioHPCdrDeviceControl_bb840

CdAudioHPCdrDeviceControl_bb828:                  ; preds = %CdAudioHPCdrDeviceControl_bb827
  %"1786" = load i32* @"'routine", align 4
  %"1787" = icmp eq i32 %"1786", 0
  br i1 %"1787", label %CdAudioHPCdrDeviceControl_bb829, label %CdAudioHPCdrDeviceControl_bb835

CdAudioHPCdrDeviceControl_bb829:                  ; preds = %CdAudioHPCdrDeviceControl_bb828
  %"1788" = call i32 @__VERIFIER_nondet_int() #5
  %"1789" = call i32 @__VERIFIER_nondet_int() #5
  %"1790" = icmp ne i32 %"1788", 0
  br i1 %"1790", label %CdAudioHPCdrDeviceControl_bb830, label %CdAudioHPCdrDeviceControl_bb833

CdAudioHPCdrDeviceControl_bb830:                  ; preds = %CdAudioHPCdrDeviceControl_bb829
  %"1791" = load i32* @"'pended", align 4
  %"1792" = icmp eq i32 %"1791", 0
  br i1 %"1792", label %CdAudioHPCdrDeviceControl_bb831, label %CdAudioHPCdrDeviceControl_bb832

CdAudioHPCdrDeviceControl_bb831:                  ; preds = %CdAudioHPCdrDeviceControl_bb830
  store i32 1, i32* @"'pended", align 4
  br label %CdAudioHPCdrDeviceControl_bb833

CdAudioHPCdrDeviceControl_bb832:                  ; preds = %CdAudioHPCdrDeviceControl_bb830
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioHPCdrDeviceControl_bb833:                  ; preds = %CdAudioHPCdrDeviceControl_bb831, %CdAudioHPCdrDeviceControl_bb829
  %"1793" = load i32* @"'myStatus", align 4
  %"1794" = icmp sge i32 %"1793", 0
  br i1 %"1794", label %CdAudioHPCdrDeviceControl_bb834, label %CdAudioHPCdrDeviceControl_HPCdrCompletion.exit.i.i

CdAudioHPCdrDeviceControl_bb834:                  ; preds = %CdAudioHPCdrDeviceControl_bb833
  %"1795" = call i32 @__VERIFIER_nondet_int() #5
  br label %CdAudioHPCdrDeviceControl_HPCdrCompletion.exit.i.i

CdAudioHPCdrDeviceControl_HPCdrCompletion.exit.i.i: ; preds = %CdAudioHPCdrDeviceControl_bb834, %CdAudioHPCdrDeviceControl_bb833
  %"1796" = load i32* @"'myStatus", align 4
  br label %CdAudioHPCdrDeviceControl_bb837

CdAudioHPCdrDeviceControl_bb835:                  ; preds = %CdAudioHPCdrDeviceControl_bb828
  %"1797" = load i32* @"'routine", align 4
  %"1798" = icmp eq i32 %"1797", 1
  br i1 %"1798", label %CdAudioHPCdrDeviceControl_bb836, label %CdAudioHPCdrDeviceControl_bb837

CdAudioHPCdrDeviceControl_bb836:                  ; preds = %CdAudioHPCdrDeviceControl_bb835
  %"1799" = call i32 @__VERIFIER_nondet_int() #5
  store i32 1, i32* @"'setEventCalled", align 4
  br label %CdAudioHPCdrDeviceControl_bb837

CdAudioHPCdrDeviceControl_bb837:                  ; preds = %CdAudioHPCdrDeviceControl_bb836, %CdAudioHPCdrDeviceControl_bb835, %CdAudioHPCdrDeviceControl_HPCdrCompletion.exit.i.i
  %compRetStatus.1.i.i = phi i32 [ %"1796", %CdAudioHPCdrDeviceControl_HPCdrCompletion.exit.i.i ], [ -1073741802, %CdAudioHPCdrDeviceControl_bb836 ], [ %"1781", %CdAudioHPCdrDeviceControl_bb835 ]
  %"1800" = sext i32 %compRetStatus.1.i.i to i64
  %"1801" = icmp eq i64 %"1800", -1073741802
  br i1 %"1801", label %CdAudioHPCdrDeviceControl_bb838, label %CdAudioHPCdrDeviceControl_bb840

CdAudioHPCdrDeviceControl_bb838:                  ; preds = %CdAudioHPCdrDeviceControl_bb837
  %"1802" = load i32* @"'s", align 4
  %"1803" = load i32* @"'NP", align 4
  %"1804" = icmp eq i32 %"1802", %"1803"
  br i1 %"1804", label %CdAudioHPCdrDeviceControl_stubMoreProcessingRequired.exit.i.i, label %CdAudioHPCdrDeviceControl_bb839

CdAudioHPCdrDeviceControl_stubMoreProcessingRequired.exit.i.i: ; preds = %CdAudioHPCdrDeviceControl_bb838
  %"1805" = load i32* @"'MPR1", align 4
  store i32 %"1805", i32* @"'s", align 4
  br label %CdAudioHPCdrDeviceControl_bb840

CdAudioHPCdrDeviceControl_bb839:                  ; preds = %CdAudioHPCdrDeviceControl_bb838
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioHPCdrDeviceControl_bb840:                  ; preds = %CdAudioHPCdrDeviceControl_stubMoreProcessingRequired.exit.i.i, %CdAudioHPCdrDeviceControl_bb837, %CdAudioHPCdrDeviceControl_bb827
  %"1806" = icmp ne i32 %"1782", 0
  br i1 %"1806", label %CdAudioHPCdrDeviceControl_bb843, label %CdAudioHPCdrDeviceControl_bb841

CdAudioHPCdrDeviceControl_bb841:                  ; preds = %CdAudioHPCdrDeviceControl_bb840
  %"1807" = call i32 @__VERIFIER_nondet_int() #5
  %"1808" = icmp eq i32 %"1807", 0
  br i1 %"1808", label %CdAudioHPCdrDeviceControl_bb843, label %CdAudioHPCdrDeviceControl_bb842

CdAudioHPCdrDeviceControl_bb842:                  ; preds = %CdAudioHPCdrDeviceControl_bb841
  %"1809" = call i32 @__VERIFIER_nondet_int() #5
  %"1810" = icmp eq i32 %"1809", 1
  %..i.i = select i1 %"1810", i32 -1073741823, i32 259
  br label %CdAudioHPCdrDeviceControl_bb843

CdAudioHPCdrDeviceControl_bb843:                  ; preds = %CdAudioHPCdrDeviceControl_bb842, %CdAudioHPCdrDeviceControl_bb841, %CdAudioHPCdrDeviceControl_bb840
  %returnVal2.1.i.i = phi i32 [ 259, %CdAudioHPCdrDeviceControl_bb840 ], [ 0, %CdAudioHPCdrDeviceControl_bb841 ], [ %..i.i, %CdAudioHPCdrDeviceControl_bb842 ]
  %"1811" = load i32* @"'s", align 4
  %"1812" = load i32* @"'NP", align 4
  %"1813" = icmp eq i32 %"1811", %"1812"
  br i1 %"1813", label %CdAudioHPCdrDeviceControl_bb844, label %CdAudioHPCdrDeviceControl_bb845

CdAudioHPCdrDeviceControl_bb844:                  ; preds = %CdAudioHPCdrDeviceControl_bb843
  %"1814" = load i32* @"'IPC", align 4
  store i32 %"1814", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i, i32* @"'lowerDriverReturn", align 4
  br label %CdAudioHPCdrDeviceControl_IofCallDriver.exit

CdAudioHPCdrDeviceControl_bb845:                  ; preds = %CdAudioHPCdrDeviceControl_bb843
  %"1815" = load i32* @"'s", align 4
  %"1816" = load i32* @"'MPR1", align 4
  %"1817" = icmp eq i32 %"1815", %"1816"
  br i1 %"1817", label %CdAudioHPCdrDeviceControl_bb846, label %CdAudioHPCdrDeviceControl_bb849

CdAudioHPCdrDeviceControl_bb846:                  ; preds = %CdAudioHPCdrDeviceControl_bb845
  %"1818" = icmp eq i32 %returnVal2.1.i.i, 259
  br i1 %"1818", label %CdAudioHPCdrDeviceControl_bb847, label %CdAudioHPCdrDeviceControl_bb848

CdAudioHPCdrDeviceControl_bb847:                  ; preds = %CdAudioHPCdrDeviceControl_bb846
  %"1819" = load i32* @"'MPR3", align 4
  store i32 %"1819", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i, i32* @"'lowerDriverReturn", align 4
  br label %CdAudioHPCdrDeviceControl_IofCallDriver.exit

CdAudioHPCdrDeviceControl_bb848:                  ; preds = %CdAudioHPCdrDeviceControl_bb846
  %"1820" = load i32* @"'NP", align 4
  store i32 %"1820", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i, i32* @"'lowerDriverReturn", align 4
  br label %CdAudioHPCdrDeviceControl_IofCallDriver.exit

CdAudioHPCdrDeviceControl_bb849:                  ; preds = %CdAudioHPCdrDeviceControl_bb845
  %"1821" = load i32* @"'s", align 4
  %"1822" = load i32* @"'SKIP1", align 4
  %"1823" = icmp eq i32 %"1821", %"1822"
  br i1 %"1823", label %CdAudioHPCdrDeviceControl_bb850, label %CdAudioHPCdrDeviceControl_bb851

CdAudioHPCdrDeviceControl_bb850:                  ; preds = %CdAudioHPCdrDeviceControl_bb849
  %"1824" = load i32* @"'SKIP2", align 4
  store i32 %"1824", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i, i32* @"'lowerDriverReturn", align 4
  br label %CdAudioHPCdrDeviceControl_IofCallDriver.exit

CdAudioHPCdrDeviceControl_IofCallDriver.exit:     ; preds = %CdAudioHPCdrDeviceControl_bb850, %CdAudioHPCdrDeviceControl_bb848, %CdAudioHPCdrDeviceControl_bb847, %CdAudioHPCdrDeviceControl_bb844, %CdAudioHPCdrDeviceControl_bb824, %CdAudioHPCdrDeviceControl_bb822, %CdAudioHPCdrDeviceControl_bb821, %CdAudioHPCdrDeviceControl_bb818
  %.0 = phi i32 [ %returnVal2.1.i, %CdAudioHPCdrDeviceControl_bb818 ], [ %returnVal2.1.i, %CdAudioHPCdrDeviceControl_bb821 ], [ %returnVal2.1.i, %CdAudioHPCdrDeviceControl_bb822 ], [ %returnVal2.1.i, %CdAudioHPCdrDeviceControl_bb824 ], [ %returnVal2.1.i.i, %CdAudioHPCdrDeviceControl_bb844 ], [ %returnVal2.1.i.i, %CdAudioHPCdrDeviceControl_bb847 ], [ %returnVal2.1.i.i, %CdAudioHPCdrDeviceControl_bb848 ], [ %returnVal2.1.i.i, %CdAudioHPCdrDeviceControl_bb850 ]
  ret i32 %.0

CdAudioHPCdrDeviceControl_bb851:                  ; preds = %CdAudioHPCdrDeviceControl_bb849
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioHPCdrDeviceControl_bb852:                  ; preds = %CdAudioHPCdrDeviceControl_bb826
  call void (...)* @__VERIFIER_error() #4
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @CdAudioForwardIrpSynchronous(i32 %DeviceObject, i32 %Irp) #0 {
CdAudioForwardIrpSynchronous_bb853:
  %"1825" = call i32 @__VERIFIER_nondet_int()
  %"1826" = call i32 @__VERIFIER_nondet_int()
  %"1827" = load i32* @"'s", align 4
  %"1828" = load i32* @"'NP", align 4
  %"1829" = icmp ne i32 %"1827", %"1828"
  br i1 %"1829", label %CdAudioForwardIrpSynchronous_bb854, label %CdAudioForwardIrpSynchronous_bb855

CdAudioForwardIrpSynchronous_bb854:               ; preds = %CdAudioForwardIrpSynchronous_bb853
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioForwardIrpSynchronous_bb855:               ; preds = %CdAudioForwardIrpSynchronous_bb853
  %"1830" = load i32* @"'compRegistered", align 4
  %"1831" = icmp ne i32 %"1830", 0
  br i1 %"1831", label %CdAudioForwardIrpSynchronous_bb856, label %CdAudioForwardIrpSynchronous_bb857

CdAudioForwardIrpSynchronous_bb856:               ; preds = %CdAudioForwardIrpSynchronous_bb855
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioForwardIrpSynchronous_bb857:               ; preds = %CdAudioForwardIrpSynchronous_bb855
  store i32 1, i32* @"'compRegistered", align 4
  store i32 1, i32* @"'routine", align 4
  %"1832" = call i32 @__kittel_nondef.0() #5
  %"1833" = call i32 @__VERIFIER_nondet_int() #5
  %"1834" = call i32 @__VERIFIER_nondet_int() #5
  %"1835" = load i32* @"'compRegistered", align 4
  %"1836" = icmp ne i32 %"1835", 0
  br i1 %"1836", label %CdAudioForwardIrpSynchronous_bb858, label %CdAudioForwardIrpSynchronous_bb870

CdAudioForwardIrpSynchronous_bb858:               ; preds = %CdAudioForwardIrpSynchronous_bb857
  %"1837" = load i32* @"'routine", align 4
  %"1838" = icmp eq i32 %"1837", 0
  br i1 %"1838", label %CdAudioForwardIrpSynchronous_bb859, label %CdAudioForwardIrpSynchronous_bb865

CdAudioForwardIrpSynchronous_bb859:               ; preds = %CdAudioForwardIrpSynchronous_bb858
  %"1839" = call i32 @__VERIFIER_nondet_int() #5
  %"1840" = call i32 @__VERIFIER_nondet_int() #5
  %"1841" = icmp ne i32 %"1839", 0
  br i1 %"1841", label %CdAudioForwardIrpSynchronous_bb860, label %CdAudioForwardIrpSynchronous_bb863

CdAudioForwardIrpSynchronous_bb860:               ; preds = %CdAudioForwardIrpSynchronous_bb859
  %"1842" = load i32* @"'pended", align 4
  %"1843" = icmp eq i32 %"1842", 0
  br i1 %"1843", label %CdAudioForwardIrpSynchronous_bb861, label %CdAudioForwardIrpSynchronous_bb862

CdAudioForwardIrpSynchronous_bb861:               ; preds = %CdAudioForwardIrpSynchronous_bb860
  store i32 1, i32* @"'pended", align 4
  br label %CdAudioForwardIrpSynchronous_bb863

CdAudioForwardIrpSynchronous_bb862:               ; preds = %CdAudioForwardIrpSynchronous_bb860
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioForwardIrpSynchronous_bb863:               ; preds = %CdAudioForwardIrpSynchronous_bb861, %CdAudioForwardIrpSynchronous_bb859
  %"1844" = load i32* @"'myStatus", align 4
  %"1845" = icmp sge i32 %"1844", 0
  br i1 %"1845", label %CdAudioForwardIrpSynchronous_bb864, label %CdAudioForwardIrpSynchronous_HPCdrCompletion.exit.i

CdAudioForwardIrpSynchronous_bb864:               ; preds = %CdAudioForwardIrpSynchronous_bb863
  %"1846" = call i32 @__VERIFIER_nondet_int() #5
  br label %CdAudioForwardIrpSynchronous_HPCdrCompletion.exit.i

CdAudioForwardIrpSynchronous_HPCdrCompletion.exit.i: ; preds = %CdAudioForwardIrpSynchronous_bb864, %CdAudioForwardIrpSynchronous_bb863
  %"1847" = load i32* @"'myStatus", align 4
  br label %CdAudioForwardIrpSynchronous_bb867

CdAudioForwardIrpSynchronous_bb865:               ; preds = %CdAudioForwardIrpSynchronous_bb858
  %"1848" = load i32* @"'routine", align 4
  %"1849" = icmp eq i32 %"1848", 1
  br i1 %"1849", label %CdAudioForwardIrpSynchronous_bb866, label %CdAudioForwardIrpSynchronous_bb867

CdAudioForwardIrpSynchronous_bb866:               ; preds = %CdAudioForwardIrpSynchronous_bb865
  %"1850" = call i32 @__VERIFIER_nondet_int() #5
  store i32 1, i32* @"'setEventCalled", align 4
  br label %CdAudioForwardIrpSynchronous_bb867

CdAudioForwardIrpSynchronous_bb867:               ; preds = %CdAudioForwardIrpSynchronous_bb866, %CdAudioForwardIrpSynchronous_bb865, %CdAudioForwardIrpSynchronous_HPCdrCompletion.exit.i
  %compRetStatus.1.i = phi i32 [ %"1847", %CdAudioForwardIrpSynchronous_HPCdrCompletion.exit.i ], [ -1073741802, %CdAudioForwardIrpSynchronous_bb866 ], [ %"1832", %CdAudioForwardIrpSynchronous_bb865 ]
  %"1851" = sext i32 %compRetStatus.1.i to i64
  %"1852" = icmp eq i64 %"1851", -1073741802
  br i1 %"1852", label %CdAudioForwardIrpSynchronous_bb868, label %CdAudioForwardIrpSynchronous_bb870

CdAudioForwardIrpSynchronous_bb868:               ; preds = %CdAudioForwardIrpSynchronous_bb867
  %"1853" = load i32* @"'s", align 4
  %"1854" = load i32* @"'NP", align 4
  %"1855" = icmp eq i32 %"1853", %"1854"
  br i1 %"1855", label %CdAudioForwardIrpSynchronous_stubMoreProcessingRequired.exit.i, label %CdAudioForwardIrpSynchronous_bb869

CdAudioForwardIrpSynchronous_stubMoreProcessingRequired.exit.i: ; preds = %CdAudioForwardIrpSynchronous_bb868
  %"1856" = load i32* @"'MPR1", align 4
  store i32 %"1856", i32* @"'s", align 4
  br label %CdAudioForwardIrpSynchronous_bb870

CdAudioForwardIrpSynchronous_bb869:               ; preds = %CdAudioForwardIrpSynchronous_bb868
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioForwardIrpSynchronous_bb870:               ; preds = %CdAudioForwardIrpSynchronous_stubMoreProcessingRequired.exit.i, %CdAudioForwardIrpSynchronous_bb867, %CdAudioForwardIrpSynchronous_bb857
  %"1857" = icmp ne i32 %"1833", 0
  br i1 %"1857", label %CdAudioForwardIrpSynchronous_bb873, label %CdAudioForwardIrpSynchronous_bb871

CdAudioForwardIrpSynchronous_bb871:               ; preds = %CdAudioForwardIrpSynchronous_bb870
  %"1858" = call i32 @__VERIFIER_nondet_int() #5
  %"1859" = icmp eq i32 %"1858", 0
  br i1 %"1859", label %CdAudioForwardIrpSynchronous_bb873, label %CdAudioForwardIrpSynchronous_bb872

CdAudioForwardIrpSynchronous_bb872:               ; preds = %CdAudioForwardIrpSynchronous_bb871
  %"1860" = call i32 @__VERIFIER_nondet_int() #5
  %"1861" = icmp eq i32 %"1860", 1
  %..i = select i1 %"1861", i32 -1073741823, i32 259
  br label %CdAudioForwardIrpSynchronous_bb873

CdAudioForwardIrpSynchronous_bb873:               ; preds = %CdAudioForwardIrpSynchronous_bb872, %CdAudioForwardIrpSynchronous_bb871, %CdAudioForwardIrpSynchronous_bb870
  %returnVal2.1.i = phi i32 [ 259, %CdAudioForwardIrpSynchronous_bb870 ], [ 0, %CdAudioForwardIrpSynchronous_bb871 ], [ %..i, %CdAudioForwardIrpSynchronous_bb872 ]
  %"1862" = load i32* @"'s", align 4
  %"1863" = load i32* @"'NP", align 4
  %"1864" = icmp eq i32 %"1862", %"1863"
  br i1 %"1864", label %CdAudioForwardIrpSynchronous_bb874, label %CdAudioForwardIrpSynchronous_bb875

CdAudioForwardIrpSynchronous_bb874:               ; preds = %CdAudioForwardIrpSynchronous_bb873
  %"1865" = load i32* @"'IPC", align 4
  store i32 %"1865", i32* @"'s", align 4
  store i32 %returnVal2.1.i, i32* @"'lowerDriverReturn", align 4
  br label %CdAudioForwardIrpSynchronous_IofCallDriver.exit

CdAudioForwardIrpSynchronous_bb875:               ; preds = %CdAudioForwardIrpSynchronous_bb873
  %"1866" = load i32* @"'s", align 4
  %"1867" = load i32* @"'MPR1", align 4
  %"1868" = icmp eq i32 %"1866", %"1867"
  br i1 %"1868", label %CdAudioForwardIrpSynchronous_bb876, label %CdAudioForwardIrpSynchronous_bb879

CdAudioForwardIrpSynchronous_bb876:               ; preds = %CdAudioForwardIrpSynchronous_bb875
  %"1869" = icmp eq i32 %returnVal2.1.i, 259
  br i1 %"1869", label %CdAudioForwardIrpSynchronous_bb877, label %CdAudioForwardIrpSynchronous_bb878

CdAudioForwardIrpSynchronous_bb877:               ; preds = %CdAudioForwardIrpSynchronous_bb876
  %"1870" = load i32* @"'MPR3", align 4
  store i32 %"1870", i32* @"'s", align 4
  store i32 %returnVal2.1.i, i32* @"'lowerDriverReturn", align 4
  br label %CdAudioForwardIrpSynchronous_IofCallDriver.exit

CdAudioForwardIrpSynchronous_bb878:               ; preds = %CdAudioForwardIrpSynchronous_bb876
  %"1871" = load i32* @"'NP", align 4
  store i32 %"1871", i32* @"'s", align 4
  store i32 %returnVal2.1.i, i32* @"'lowerDriverReturn", align 4
  br label %CdAudioForwardIrpSynchronous_IofCallDriver.exit

CdAudioForwardIrpSynchronous_bb879:               ; preds = %CdAudioForwardIrpSynchronous_bb875
  %"1872" = load i32* @"'s", align 4
  %"1873" = load i32* @"'SKIP1", align 4
  %"1874" = icmp eq i32 %"1872", %"1873"
  br i1 %"1874", label %CdAudioForwardIrpSynchronous_bb880, label %CdAudioForwardIrpSynchronous_bb888

CdAudioForwardIrpSynchronous_bb880:               ; preds = %CdAudioForwardIrpSynchronous_bb879
  %"1875" = load i32* @"'SKIP2", align 4
  store i32 %"1875", i32* @"'s", align 4
  store i32 %returnVal2.1.i, i32* @"'lowerDriverReturn", align 4
  br label %CdAudioForwardIrpSynchronous_IofCallDriver.exit

CdAudioForwardIrpSynchronous_IofCallDriver.exit:  ; preds = %CdAudioForwardIrpSynchronous_bb874, %CdAudioForwardIrpSynchronous_bb877, %CdAudioForwardIrpSynchronous_bb878, %CdAudioForwardIrpSynchronous_bb880
  %"1876" = icmp ne i32 259, 0
  br i1 %"1876", label %CdAudioForwardIrpSynchronous_bb881, label %CdAudioForwardIrpSynchronous_bb887

CdAudioForwardIrpSynchronous_bb881:               ; preds = %CdAudioForwardIrpSynchronous_IofCallDriver.exit
  %"1877" = load i32* @"'s", align 4
  %"1878" = load i32* @"'MPR3", align 4
  %"1879" = icmp eq i32 %"1877", %"1878"
  %"1880" = load i32* @"'setEventCalled", align 4
  %"1881" = icmp eq i32 %"1880", 1
  %or.cond.i = and i1 %"1879", %"1881"
  br i1 %or.cond.i, label %CdAudioForwardIrpSynchronous_bb882, label %CdAudioForwardIrpSynchronous_bb883

CdAudioForwardIrpSynchronous_bb882:               ; preds = %CdAudioForwardIrpSynchronous_bb881
  %"1882" = load i32* @"'NP", align 4
  store i32 %"1882", i32* @"'s", align 4
  store i32 0, i32* @"'setEventCalled", align 4
  br label %CdAudioForwardIrpSynchronous_KeWaitForSingleObject.exit

CdAudioForwardIrpSynchronous_bb883:               ; preds = %CdAudioForwardIrpSynchronous_bb881
  %"1883" = load i32* @"'customIrp", align 4
  %"1884" = icmp eq i32 %"1883", 1
  br i1 %"1884", label %CdAudioForwardIrpSynchronous_bb884, label %CdAudioForwardIrpSynchronous_bb885

CdAudioForwardIrpSynchronous_bb884:               ; preds = %CdAudioForwardIrpSynchronous_bb883
  %"1885" = load i32* @"'NP", align 4
  store i32 %"1885", i32* @"'s", align 4
  store i32 0, i32* @"'customIrp", align 4
  br label %CdAudioForwardIrpSynchronous_KeWaitForSingleObject.exit

CdAudioForwardIrpSynchronous_bb885:               ; preds = %CdAudioForwardIrpSynchronous_bb883
  %"1886" = load i32* @"'s", align 4
  %"1887" = load i32* @"'MPR3", align 4
  %"1888" = icmp eq i32 %"1886", %"1887"
  br i1 %"1888", label %CdAudioForwardIrpSynchronous_bb886, label %CdAudioForwardIrpSynchronous_KeWaitForSingleObject.exit

CdAudioForwardIrpSynchronous_bb886:               ; preds = %CdAudioForwardIrpSynchronous_bb885
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioForwardIrpSynchronous_KeWaitForSingleObject.exit: ; preds = %CdAudioForwardIrpSynchronous_bb882, %CdAudioForwardIrpSynchronous_bb884, %CdAudioForwardIrpSynchronous_bb885
  %"1889" = call i32 @__VERIFIER_nondet_int() #5
  %"1890" = load i32* @"'myStatus", align 4
  br label %CdAudioForwardIrpSynchronous_bb887

CdAudioForwardIrpSynchronous_bb887:               ; preds = %CdAudioForwardIrpSynchronous_KeWaitForSingleObject.exit, %CdAudioForwardIrpSynchronous_IofCallDriver.exit
  %status.0 = phi i32 [ %"1890", %CdAudioForwardIrpSynchronous_KeWaitForSingleObject.exit ], [ 259, %CdAudioForwardIrpSynchronous_IofCallDriver.exit ]
  ret i32 %status.0

CdAudioForwardIrpSynchronous_bb888:               ; preds = %CdAudioForwardIrpSynchronous_bb879
  call void (...)* @__VERIFIER_error() #4
  unreachable
}

; Function Attrs: nounwind uwtable
define void @CdAudioUnload(i32 %DriverObject) #0 {
CdAudioUnload_bb889:
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @CdAudioPower(i32 %DeviceObject, i32 %Irp) #0 {
CdAudioPower_bb890:
  %"1891" = call i32 @__VERIFIER_nondet_int()
  %"1892" = call i32 @__VERIFIER_nondet_int()
  %"1893" = call i32 @__VERIFIER_nondet_int()
  %"1894" = load i32* @"'s", align 4
  %"1895" = load i32* @"'NP", align 4
  %"1896" = icmp eq i32 %"1894", %"1895"
  br i1 %"1896", label %CdAudioPower_bb891, label %CdAudioPower_bb915

CdAudioPower_bb891:                               ; preds = %CdAudioPower_bb890
  %"1897" = load i32* @"'SKIP1", align 4
  store i32 %"1897", i32* @"'s", align 4
  %"1898" = call i32 @__kittel_nondef.0() #5
  %"1899" = call i32 @__VERIFIER_nondet_int() #5
  %"1900" = load i32* @"'compRegistered", align 4
  %"1901" = icmp ne i32 %"1900", 0
  br i1 %"1901", label %CdAudioPower_bb892, label %CdAudioPower_bb904

CdAudioPower_bb892:                               ; preds = %CdAudioPower_bb891
  %"1902" = load i32* @"'routine", align 4
  %"1903" = icmp eq i32 %"1902", 0
  br i1 %"1903", label %CdAudioPower_bb893, label %CdAudioPower_bb899

CdAudioPower_bb893:                               ; preds = %CdAudioPower_bb892
  %"1904" = call i32 @__VERIFIER_nondet_int() #5
  %"1905" = call i32 @__VERIFIER_nondet_int() #5
  %"1906" = icmp ne i32 %"1904", 0
  br i1 %"1906", label %CdAudioPower_bb894, label %CdAudioPower_bb897

CdAudioPower_bb894:                               ; preds = %CdAudioPower_bb893
  %"1907" = load i32* @"'pended", align 4
  %"1908" = icmp eq i32 %"1907", 0
  br i1 %"1908", label %CdAudioPower_bb895, label %CdAudioPower_bb896

CdAudioPower_bb895:                               ; preds = %CdAudioPower_bb894
  store i32 1, i32* @"'pended", align 4
  br label %CdAudioPower_bb897

CdAudioPower_bb896:                               ; preds = %CdAudioPower_bb894
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioPower_bb897:                               ; preds = %CdAudioPower_bb895, %CdAudioPower_bb893
  %"1909" = load i32* @"'myStatus", align 4
  %"1910" = icmp sge i32 %"1909", 0
  br i1 %"1910", label %CdAudioPower_bb898, label %CdAudioPower_HPCdrCompletion.exit.i

CdAudioPower_bb898:                               ; preds = %CdAudioPower_bb897
  %"1911" = call i32 @__VERIFIER_nondet_int() #5
  br label %CdAudioPower_HPCdrCompletion.exit.i

CdAudioPower_HPCdrCompletion.exit.i:              ; preds = %CdAudioPower_bb898, %CdAudioPower_bb897
  %"1912" = load i32* @"'myStatus", align 4
  br label %CdAudioPower_bb901

CdAudioPower_bb899:                               ; preds = %CdAudioPower_bb892
  %"1913" = load i32* @"'routine", align 4
  %"1914" = icmp eq i32 %"1913", 1
  br i1 %"1914", label %CdAudioPower_bb900, label %CdAudioPower_bb901

CdAudioPower_bb900:                               ; preds = %CdAudioPower_bb899
  %"1915" = call i32 @__VERIFIER_nondet_int() #5
  store i32 1, i32* @"'setEventCalled", align 4
  br label %CdAudioPower_bb901

CdAudioPower_bb901:                               ; preds = %CdAudioPower_bb900, %CdAudioPower_bb899, %CdAudioPower_HPCdrCompletion.exit.i
  %compRetStatus.1.i = phi i32 [ %"1912", %CdAudioPower_HPCdrCompletion.exit.i ], [ -1073741802, %CdAudioPower_bb900 ], [ %"1898", %CdAudioPower_bb899 ]
  %"1916" = sext i32 %compRetStatus.1.i to i64
  %"1917" = icmp eq i64 %"1916", -1073741802
  br i1 %"1917", label %CdAudioPower_bb902, label %CdAudioPower_bb904

CdAudioPower_bb902:                               ; preds = %CdAudioPower_bb901
  %"1918" = load i32* @"'s", align 4
  %"1919" = load i32* @"'NP", align 4
  %"1920" = icmp eq i32 %"1918", %"1919"
  br i1 %"1920", label %CdAudioPower_stubMoreProcessingRequired.exit.i, label %CdAudioPower_bb903

CdAudioPower_stubMoreProcessingRequired.exit.i:   ; preds = %CdAudioPower_bb902
  %"1921" = load i32* @"'MPR1", align 4
  store i32 %"1921", i32* @"'s", align 4
  br label %CdAudioPower_bb904

CdAudioPower_bb903:                               ; preds = %CdAudioPower_bb902
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioPower_bb904:                               ; preds = %CdAudioPower_stubMoreProcessingRequired.exit.i, %CdAudioPower_bb901, %CdAudioPower_bb891
  %"1922" = call i32 @__VERIFIER_nondet_int() #5
  %"1923" = icmp eq i32 %"1922", 0
  br i1 %"1923", label %CdAudioPower_bb906, label %CdAudioPower_bb905

CdAudioPower_bb905:                               ; preds = %CdAudioPower_bb904
  %"1924" = call i32 @__VERIFIER_nondet_int() #5
  %"1925" = icmp eq i32 %"1924", 1
  %..i = select i1 %"1925", i32 -1073741823, i32 259
  br label %CdAudioPower_bb906

CdAudioPower_bb906:                               ; preds = %CdAudioPower_bb905, %CdAudioPower_bb904
  %returnVal.0.i = phi i32 [ 0, %CdAudioPower_bb904 ], [ %..i, %CdAudioPower_bb905 ]
  %"1926" = load i32* @"'s", align 4
  %"1927" = load i32* @"'NP", align 4
  %"1928" = icmp eq i32 %"1926", %"1927"
  br i1 %"1928", label %CdAudioPower_bb907, label %CdAudioPower_bb908

CdAudioPower_bb907:                               ; preds = %CdAudioPower_bb906
  %"1929" = load i32* @"'IPC", align 4
  store i32 %"1929", i32* @"'s", align 4
  store i32 %returnVal.0.i, i32* @"'lowerDriverReturn", align 4
  br label %CdAudioPower_PoCallDriver.exit

CdAudioPower_bb908:                               ; preds = %CdAudioPower_bb906
  %"1930" = load i32* @"'s", align 4
  %"1931" = load i32* @"'MPR1", align 4
  %"1932" = icmp eq i32 %"1930", %"1931"
  br i1 %"1932", label %CdAudioPower_bb909, label %CdAudioPower_bb912

CdAudioPower_bb909:                               ; preds = %CdAudioPower_bb908
  %"1933" = sext i32 %returnVal.0.i to i64
  %"1934" = icmp eq i64 %"1933", 259
  br i1 %"1934", label %CdAudioPower_bb910, label %CdAudioPower_bb911

CdAudioPower_bb910:                               ; preds = %CdAudioPower_bb909
  %"1935" = load i32* @"'MPR3", align 4
  store i32 %"1935", i32* @"'s", align 4
  store i32 %returnVal.0.i, i32* @"'lowerDriverReturn", align 4
  br label %CdAudioPower_PoCallDriver.exit

CdAudioPower_bb911:                               ; preds = %CdAudioPower_bb909
  %"1936" = load i32* @"'NP", align 4
  store i32 %"1936", i32* @"'s", align 4
  store i32 %returnVal.0.i, i32* @"'lowerDriverReturn", align 4
  br label %CdAudioPower_PoCallDriver.exit

CdAudioPower_bb912:                               ; preds = %CdAudioPower_bb908
  %"1937" = load i32* @"'s", align 4
  %"1938" = load i32* @"'SKIP1", align 4
  %"1939" = icmp eq i32 %"1937", %"1938"
  br i1 %"1939", label %CdAudioPower_bb913, label %CdAudioPower_bb914

CdAudioPower_bb913:                               ; preds = %CdAudioPower_bb912
  %"1940" = load i32* @"'SKIP2", align 4
  store i32 %"1940", i32* @"'s", align 4
  store i32 %returnVal.0.i, i32* @"'lowerDriverReturn", align 4
  br label %CdAudioPower_PoCallDriver.exit

CdAudioPower_PoCallDriver.exit:                   ; preds = %CdAudioPower_bb907, %CdAudioPower_bb910, %CdAudioPower_bb911, %CdAudioPower_bb913
  ret i32 %returnVal.0.i

CdAudioPower_bb914:                               ; preds = %CdAudioPower_bb912
  call void (...)* @__VERIFIER_error() #4
  unreachable

CdAudioPower_bb915:                               ; preds = %CdAudioPower_bb890
  call void (...)* @__VERIFIER_error() #4
  unreachable
}

; Function Attrs: nounwind uwtable
define void @stub_driver_init() #0 {
stub_driver_init_bb916:
  %"1941" = load i32* @"'NP", align 4
  store i32 %"1941", i32* @"'s", align 4
  store i32 0, i32* @"'customIrp", align 4
  %"1942" = load i32* @"'customIrp", align 4
  store i32 %"1942", i32* @"'setEventCalled", align 4
  %"1943" = load i32* @"'setEventCalled", align 4
  store i32 %"1943", i32* @"'lowerDriverReturn", align 4
  %"1944" = load i32* @"'lowerDriverReturn", align 4
  store i32 %"1944", i32* @"'compRegistered", align 4
  %"1945" = load i32* @"'compRegistered", align 4
  store i32 %"1945", i32* @"'compFptr", align 4
  %"1946" = load i32* @"'compFptr", align 4
  store i32 %"1946", i32* @"'pended", align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb917:
  %"1947" = call i32 @__VERIFIER_nondet_int()
  %"1948" = call i32 @__VERIFIER_nondet_int()
  %"1949" = call i32 @__VERIFIER_nondet_int()
  %"1950" = call i32 @__VERIFIER_nondet_int()
  %"1951" = call i32 @__VERIFIER_nondet_int()
  %"1952" = call i32 @__VERIFIER_nondet_int()
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
  store i32 0, i32* @"'routine", align 4
  store i32 0, i32* @"'myStatus", align 4
  store i32 0, i32* @"'pirp", align 4
  store i32 0, i32* @"'Executive", align 4
  store i32 5, i32* @"'Suspended", align 4
  store i32 0, i32* @"'KernelMode", align 4
  store i32 1, i32* @"'DeviceUsageTypePaging", align 4
  store i32 %"1949", i32* @"'pirp", align 4
  store i32 0, i32* @"'UNLOADED", align 4
  store i32 1, i32* @"'NP", align 4
  store i32 2, i32* @"'DC", align 4
  store i32 3, i32* @"'SKIP1", align 4
  store i32 4, i32* @"'SKIP2", align 4
  store i32 5, i32* @"'MPR1", align 4
  store i32 6, i32* @"'MPR3", align 4
  store i32 7, i32* @"'IPC", align 4
  %"1953" = load i32* @"'UNLOADED", align 4
  store i32 %"1953", i32* @"'s", align 4
  store i32 0, i32* @"'pended", align 4
  store i32 0, i32* @"'compFptr", align 4
  store i32 0, i32* @"'compRegistered", align 4
  store i32 0, i32* @"'lowerDriverReturn", align 4
  store i32 0, i32* @"'setEventCalled", align 4
  store i32 0, i32* @"'customIrp", align 4
  %"1954" = icmp sge i32 %"1948", 0
  br i1 %"1954", label %main_bb918, label %main_bb1387

main_bb918:                                       ; preds = %main_bb917
  %"1955" = load i32* @"'NP", align 4
  store i32 %"1955", i32* @"'s", align 4
  store i32 0, i32* @"'customIrp", align 4
  %"1956" = load i32* @"'customIrp", align 4
  store i32 %"1956", i32* @"'setEventCalled", align 4
  %"1957" = load i32* @"'setEventCalled", align 4
  store i32 %"1957", i32* @"'lowerDriverReturn", align 4
  %"1958" = load i32* @"'lowerDriverReturn", align 4
  store i32 %"1958", i32* @"'compRegistered", align 4
  %"1959" = load i32* @"'compRegistered", align 4
  store i32 %"1959", i32* @"'compFptr", align 4
  %"1960" = load i32* @"'compFptr", align 4
  store i32 %"1960", i32* @"'pended", align 4
  store i32 0, i32* @"'myStatus", align 4
  %"1961" = icmp eq i32 %"1951", 0
  %. = select i1 %"1961", i32 -1073741637, i32 0
  store i32 %., i32* @"'myStatus", align 4
  %"1962" = load i32* @"'NP", align 4
  store i32 %"1962", i32* @"'s", align 4
  store i32 0, i32* @"'customIrp", align 4
  %"1963" = load i32* @"'customIrp", align 4
  store i32 %"1963", i32* @"'setEventCalled", align 4
  %"1964" = load i32* @"'setEventCalled", align 4
  store i32 %"1964", i32* @"'lowerDriverReturn", align 4
  %"1965" = load i32* @"'lowerDriverReturn", align 4
  store i32 %"1965", i32* @"'compRegistered", align 4
  %"1966" = load i32* @"'compRegistered", align 4
  store i32 %"1966", i32* @"'compFptr", align 4
  %"1967" = load i32* @"'compFptr", align 4
  store i32 %"1967", i32* @"'pended", align 4
  %"1968" = icmp slt i32 %"1948", 0
  br i1 %"1968", label %main_bb1406, label %main_bb919

main_bb919:                                       ; preds = %main_bb918
  %"1969" = call i32 @__VERIFIER_nondet_int()
  %"1970" = icmp eq i32 %"1969", 2
  br i1 %"1970", label %main_bb920, label %main_bb1227

main_bb920:                                       ; preds = %main_bb919
  %"1971" = call i32 @__VERIFIER_nondet_int() #5
  %Pivot46.i = icmp slt i32 %"1971", 3
  br i1 %Pivot46.i, label %main_NodeBlock.i, label %main_NodeBlock43.i

main_NodeBlock.i:                                 ; preds = %main_bb920
  %Pivot.i = icmp slt i32 %"1971", 2
  br i1 %Pivot.i, label %main_LeafBlock.i, label %main_bb951

main_LeafBlock.i:                                 ; preds = %main_NodeBlock.i
  %SwitchLeaf.i = icmp eq i32 %"1971", 1
  br i1 %SwitchLeaf.i, label %main_bb921, label %main_NewDefault.i

main_bb921:                                       ; preds = %main_LeafBlock.i
  %"1972" = call i32 @__VERIFIER_nondet_int() #5
  %"1973" = call i32 @__VERIFIER_nondet_int() #5
  %"1974" = call i32 @__VERIFIER_nondet_int() #5
  %"1975" = icmp eq i32 %"1972", 147464
  %"1976" = call i32 @__VERIFIER_nondet_int() #5
  %"1977" = call i32 @__VERIFIER_nondet_int() #5
  %"1978" = call i32 @__VERIFIER_nondet_int() #5
  br i1 %"1975", label %main_bb922, label %main_bb924

main_bb922:                                       ; preds = %main_bb921
  store i32 -1073741670, i32* @"'myStatus", align 4
  %"1979" = load i32* @"'s", align 4
  %"1980" = load i32* @"'NP", align 4
  %"1981" = icmp eq i32 %"1979", %"1980"
  br i1 %"1981", label %main_IofCompleteRequest.exit.i20.i, label %main_bb923

main_IofCompleteRequest.exit.i20.i:               ; preds = %main_bb922
  %"1982" = load i32* @"'DC", align 4
  store i32 %"1982", i32* @"'s", align 4
  br label %main_CdAudioDeviceControl.exit

main_bb923:                                       ; preds = %main_bb922
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_bb924:                                       ; preds = %main_bb921
  %"1983" = load i32* @"'s", align 4
  %"1984" = load i32* @"'NP", align 4
  %"1985" = icmp eq i32 %"1983", %"1984"
  br i1 %"1985", label %main_bb925, label %main_bb950

main_bb925:                                       ; preds = %main_bb924
  %"1986" = load i32* @"'SKIP1", align 4
  store i32 %"1986", i32* @"'s", align 4
  %"1987" = call i32 @__kittel_nondef.0() #5
  %"1988" = call i32 @__VERIFIER_nondet_int() #5
  %"1989" = call i32 @__VERIFIER_nondet_int() #5
  %"1990" = load i32* @"'compRegistered", align 4
  %"1991" = icmp ne i32 %"1990", 0
  br i1 %"1991", label %main_bb926, label %main_bb938

main_bb926:                                       ; preds = %main_bb925
  %"1992" = load i32* @"'routine", align 4
  %"1993" = icmp eq i32 %"1992", 0
  br i1 %"1993", label %main_bb927, label %main_bb933

main_bb927:                                       ; preds = %main_bb926
  %"1994" = call i32 @__VERIFIER_nondet_int() #5
  %"1995" = call i32 @__VERIFIER_nondet_int() #5
  %"1996" = icmp ne i32 %"1994", 0
  br i1 %"1996", label %main_bb928, label %main_bb931

main_bb928:                                       ; preds = %main_bb927
  %"1997" = load i32* @"'pended", align 4
  %"1998" = icmp eq i32 %"1997", 0
  br i1 %"1998", label %main_bb929, label %main_bb930

main_bb929:                                       ; preds = %main_bb928
  store i32 1, i32* @"'pended", align 4
  br label %main_bb931

main_bb930:                                       ; preds = %main_bb928
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_bb931:                                       ; preds = %main_bb929, %main_bb927
  %"1999" = load i32* @"'myStatus", align 4
  %"2000" = icmp sge i32 %"1999", 0
  br i1 %"2000", label %main_bb932, label %main_HPCdrCompletion.exit.i.i.i21.i

main_bb932:                                       ; preds = %main_bb931
  %"2001" = call i32 @__VERIFIER_nondet_int() #5
  br label %main_HPCdrCompletion.exit.i.i.i21.i

main_HPCdrCompletion.exit.i.i.i21.i:              ; preds = %main_bb932, %main_bb931
  %"2002" = load i32* @"'myStatus", align 4
  br label %main_bb935

main_bb933:                                       ; preds = %main_bb926
  %"2003" = load i32* @"'routine", align 4
  %"2004" = icmp eq i32 %"2003", 1
  br i1 %"2004", label %main_bb934, label %main_bb935

main_bb934:                                       ; preds = %main_bb933
  %"2005" = call i32 @__VERIFIER_nondet_int() #5
  store i32 1, i32* @"'setEventCalled", align 4
  br label %main_bb935

main_bb935:                                       ; preds = %main_bb934, %main_bb933, %main_HPCdrCompletion.exit.i.i.i21.i
  %compRetStatus.1.i.i.i22.i = phi i32 [ %"2002", %main_HPCdrCompletion.exit.i.i.i21.i ], [ -1073741802, %main_bb934 ], [ %"1987", %main_bb933 ]
  %"2006" = sext i32 %compRetStatus.1.i.i.i22.i to i64
  %"2007" = icmp eq i64 %"2006", -1073741802
  br i1 %"2007", label %main_bb936, label %main_bb938

main_bb936:                                       ; preds = %main_bb935
  %"2008" = load i32* @"'s", align 4
  %"2009" = load i32* @"'NP", align 4
  %"2010" = icmp eq i32 %"2008", %"2009"
  br i1 %"2010", label %main_stubMoreProcessingRequired.exit.i.i.i23.i, label %main_bb937

main_stubMoreProcessingRequired.exit.i.i.i23.i:   ; preds = %main_bb936
  %"2011" = load i32* @"'MPR1", align 4
  store i32 %"2011", i32* @"'s", align 4
  br label %main_bb938

main_bb937:                                       ; preds = %main_bb936
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_bb938:                                       ; preds = %main_stubMoreProcessingRequired.exit.i.i.i23.i, %main_bb935, %main_bb925
  %"2012" = icmp ne i32 %"1988", 0
  br i1 %"2012", label %main_bb941, label %main_bb939

main_bb939:                                       ; preds = %main_bb938
  %"2013" = call i32 @__VERIFIER_nondet_int() #5
  %"2014" = icmp eq i32 %"2013", 0
  br i1 %"2014", label %main_bb941, label %main_bb940

main_bb940:                                       ; preds = %main_bb939
  %"2015" = call i32 @__VERIFIER_nondet_int() #5
  %"2016" = icmp eq i32 %"2015", 1
  %..i.i.i24.i = select i1 %"2016", i32 -1073741823, i32 259
  br label %main_bb941

main_bb941:                                       ; preds = %main_bb940, %main_bb939, %main_bb938
  %returnVal2.1.i.i.i25.i = phi i32 [ 259, %main_bb938 ], [ 0, %main_bb939 ], [ %..i.i.i24.i, %main_bb940 ]
  %"2017" = load i32* @"'s", align 4
  %"2018" = load i32* @"'NP", align 4
  %"2019" = icmp eq i32 %"2017", %"2018"
  br i1 %"2019", label %main_bb942, label %main_bb943

main_bb942:                                       ; preds = %main_bb941
  %"2020" = load i32* @"'IPC", align 4
  store i32 %"2020", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i.i25.i, i32* @"'lowerDriverReturn", align 4
  br label %main_CdAudioDeviceControl.exit

main_bb943:                                       ; preds = %main_bb941
  %"2021" = load i32* @"'s", align 4
  %"2022" = load i32* @"'MPR1", align 4
  %"2023" = icmp eq i32 %"2021", %"2022"
  br i1 %"2023", label %main_bb944, label %main_bb947

main_bb944:                                       ; preds = %main_bb943
  %"2024" = icmp eq i32 %returnVal2.1.i.i.i25.i, 259
  br i1 %"2024", label %main_bb945, label %main_bb946

main_bb945:                                       ; preds = %main_bb944
  %"2025" = load i32* @"'MPR3", align 4
  store i32 %"2025", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i.i25.i, i32* @"'lowerDriverReturn", align 4
  br label %main_CdAudioDeviceControl.exit

main_bb946:                                       ; preds = %main_bb944
  %"2026" = load i32* @"'NP", align 4
  store i32 %"2026", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i.i25.i, i32* @"'lowerDriverReturn", align 4
  br label %main_CdAudioDeviceControl.exit

main_bb947:                                       ; preds = %main_bb943
  %"2027" = load i32* @"'s", align 4
  %"2028" = load i32* @"'SKIP1", align 4
  %"2029" = icmp eq i32 %"2027", %"2028"
  br i1 %"2029", label %main_bb948, label %main_bb949

main_bb948:                                       ; preds = %main_bb947
  %"2030" = load i32* @"'SKIP2", align 4
  store i32 %"2030", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i.i25.i, i32* @"'lowerDriverReturn", align 4
  br label %main_CdAudioDeviceControl.exit

main_bb949:                                       ; preds = %main_bb947
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_bb950:                                       ; preds = %main_bb924
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_bb951:                                       ; preds = %main_NodeBlock.i
  %"2031" = call i32 @__VERIFIER_nondet_int() #5
  %"2032" = call i32 @__VERIFIER_nondet_int() #5
  %"2033" = call i32 @__VERIFIER_nondet_int() #5
  %"2034" = call i32 @__VERIFIER_nondet_int() #5
  %"2035" = call i32 @__VERIFIER_nondet_int() #5
  %"2036" = call i32 @__VERIFIER_nondet_int() #5
  %"2037" = call i32 @__VERIFIER_nondet_int() #5
  %"2038" = call i32 @__VERIFIER_nondet_int() #5
  %"2039" = call i32 @__VERIFIER_nondet_int() #5
  %"2040" = call i32 @__VERIFIER_nondet_int() #5
  %"2041" = call i32 @__VERIFIER_nondet_int() #5
  %"2042" = call i32 @__VERIFIER_nondet_int() #5
  %"2043" = call i32 @__VERIFIER_nondet_int() #5
  %"2044" = call i32 @__VERIFIER_nondet_int() #5
  %"2045" = call i32 @__VERIFIER_nondet_int() #5
  %"2046" = call i32 @__VERIFIER_nondet_int() #5
  %"2047" = call i32 @__VERIFIER_nondet_int() #5
  %"2048" = call i32 @__VERIFIER_nondet_int() #5
  %"2049" = call i32 @__VERIFIER_nondet_int() #5
  %"2050" = call i32 @__VERIFIER_nondet_int() #5
  %"2051" = call i32 @__VERIFIER_nondet_int() #5
  %"2052" = call i32 @__VERIFIER_nondet_int() #5
  %"2053" = call i32 @__VERIFIER_nondet_int() #5
  %"2054" = call i32 @__VERIFIER_nondet_int() #5
  %"2055" = call i32 @__VERIFIER_nondet_int() #5
  %"2056" = call i32 @__VERIFIER_nondet_int() #5
  %"2057" = call i32 @__VERIFIER_nondet_int() #5
  %"2058" = call i32 @__VERIFIER_nondet_int() #5
  %"2059" = call i32 @__VERIFIER_nondet_int() #5
  %"2060" = call i32 @__VERIFIER_nondet_int() #5
  %Pivot66.i.i = icmp slt i32 %"2036", 147500
  br i1 %Pivot66.i.i, label %main_NodeBlock45.i.i, label %main_NodeBlock63.i.i

main_NodeBlock45.i.i:                             ; preds = %main_bb951
  %Pivot46.i.i = icmp slt i32 %"2036", 147476
  br i1 %Pivot46.i.i, label %main_NodeBlock.i.i, label %main_NodeBlock43.i.i

main_NodeBlock.i.i:                               ; preds = %main_NodeBlock45.i.i
  %Pivot.i.i = icmp slt i32 %"2036", 147460
  br i1 %Pivot.i.i, label %main_LeafBlock.i.i, label %main_LeafBlock33.i.i

main_LeafBlock.i.i:                               ; preds = %main_NodeBlock.i.i
  %SwitchLeaf.i.i = icmp eq i32 %"2036", 147456
  br i1 %SwitchLeaf.i.i, label %main_bb952, label %main_CdAudioIsPlayActive.exit27.i.i

main_bb952:                                       ; preds = %main_LeafBlock.i.i
  %"2061" = icmp ne i32 %"2037", 0
  br i1 %"2061", label %main_bb1004, label %main_bb953

main_bb953:                                       ; preds = %main_bb952
  %"2062" = call i32 @__VERIFIER_nondet_int() #5
  %"2063" = call i32 @__VERIFIER_nondet_int() #5
  %"2064" = call i32 @__VERIFIER_nondet_int() #5
  %"2065" = call i32 @__VERIFIER_nondet_int() #5
  %"2066" = call i32 @__VERIFIER_nondet_int() #5
  %"2067" = call i32 @__VERIFIER_nondet_int() #5
  %"2068" = call i32 @__VERIFIER_nondet_int() #5
  %"2069" = icmp eq i32 %"2062", 0
  %"2070" = icmp eq i32 %"2068", 0
  %or.cond.i3.i.i = or i1 %"2069", %"2070"
  %"2071" = icmp eq i32 %"2065", 0
  %or.cond1.i4.i.i = or i1 %or.cond.i3.i.i, %"2071"
  br i1 %or.cond1.i4.i.i, label %main_CdAudioIsPlayActive.exit10.i.i, label %main_bb954

main_bb954:                                       ; preds = %main_bb953
  %"2072" = sext i32 %"2067" to i64
  %"2073" = icmp eq i64 %"2072", 259
  br i1 %"2073", label %main_bb955, label %main_bb961

main_bb955:                                       ; preds = %main_bb954
  %"2074" = load i32* @"'s", align 4
  %"2075" = load i32* @"'MPR3", align 4
  %"2076" = icmp eq i32 %"2074", %"2075"
  %"2077" = load i32* @"'setEventCalled", align 4
  %"2078" = icmp eq i32 %"2077", 1
  %or.cond.i.i5.i.i = and i1 %"2076", %"2078"
  br i1 %or.cond.i.i5.i.i, label %main_bb956, label %main_bb957

main_bb956:                                       ; preds = %main_bb955
  %"2079" = load i32* @"'NP", align 4
  store i32 %"2079", i32* @"'s", align 4
  store i32 0, i32* @"'setEventCalled", align 4
  br label %main_KeWaitForSingleObject.exit.i6.i.i

main_bb957:                                       ; preds = %main_bb955
  %"2080" = load i32* @"'customIrp", align 4
  %"2081" = icmp eq i32 %"2080", 1
  br i1 %"2081", label %main_bb958, label %main_bb959

main_bb958:                                       ; preds = %main_bb957
  %"2082" = load i32* @"'NP", align 4
  store i32 %"2082", i32* @"'s", align 4
  store i32 0, i32* @"'customIrp", align 4
  br label %main_KeWaitForSingleObject.exit.i6.i.i

main_bb959:                                       ; preds = %main_bb957
  %"2083" = load i32* @"'s", align 4
  %"2084" = load i32* @"'MPR3", align 4
  %"2085" = icmp eq i32 %"2083", %"2084"
  br i1 %"2085", label %main_bb960, label %main_KeWaitForSingleObject.exit.i6.i.i

main_bb960:                                       ; preds = %main_bb959
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_KeWaitForSingleObject.exit.i6.i.i:           ; preds = %main_bb959, %main_bb958, %main_bb956
  %"2086" = call i32 @__VERIFIER_nondet_int() #5
  br label %main_bb961

main_bb961:                                       ; preds = %main_KeWaitForSingleObject.exit.i6.i.i, %main_bb954
  %status.0.i7.i.i = phi i32 [ %"2063", %main_KeWaitForSingleObject.exit.i6.i.i ], [ %"2067", %main_bb954 ]
  %"2087" = icmp slt i32 %status.0.i7.i.i, 0
  br i1 %"2087", label %main_CdAudioIsPlayActive.exit10.i.i, label %main_bb962

main_bb962:                                       ; preds = %main_bb961
  %"2088" = icmp eq i32 %"2064", 17
  %..i8.i.i = select i1 %"2088", i32 1, i32 0
  br label %main_CdAudioIsPlayActive.exit10.i.i

main_CdAudioIsPlayActive.exit10.i.i:              ; preds = %main_bb962, %main_bb961, %main_bb953
  %.0.i9.i.i = phi i32 [ %..i8.i.i, %main_bb962 ], [ 0, %main_bb953 ], [ 0, %main_bb961 ]
  %"2089" = icmp ne i32 %.0.i9.i.i, 0
  br i1 %"2089", label %main_bb1004, label %main_bb963

main_bb963:                                       ; preds = %main_CdAudioIsPlayActive.exit10.i.i
  %"2090" = icmp eq i32 %"2059", 0
  br i1 %"2090", label %main_bb964, label %main_bb966

main_bb964:                                       ; preds = %main_bb963
  store i32 -1073741670, i32* @"'myStatus", align 4
  %"2091" = load i32* @"'s", align 4
  %"2092" = load i32* @"'NP", align 4
  %"2093" = icmp eq i32 %"2091", %"2092"
  br i1 %"2093", label %main_AG_SetStatusAndReturn.exit11.i.i, label %main_bb965

main_AG_SetStatusAndReturn.exit11.i.i:            ; preds = %main_bb964
  %"2094" = load i32* @"'DC", align 4
  store i32 %"2094", i32* @"'s", align 4
  br label %main_CdAudioDeviceControl.exit

main_bb965:                                       ; preds = %main_bb964
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_bb966:                                       ; preds = %main_bb963
  %"2095" = call i32 @__VERIFIER_nondet_int() #5
  %"2096" = call i32 @__VERIFIER_nondet_int() #5
  %"2097" = call i32 @__VERIFIER_nondet_int() #5
  store i32 -1073741670, i32* @"'myStatus", align 4
  %"2098" = load i32* @"'s", align 4
  %"2099" = load i32* @"'NP", align 4
  %"2100" = icmp eq i32 %"2098", %"2099"
  br i1 %"2100", label %main_AG_SetStatusAndReturn.exit13.i.i, label %main_bb967

main_AG_SetStatusAndReturn.exit13.i.i:            ; preds = %main_bb966
  %"2101" = load i32* @"'DC", align 4
  store i32 %"2101", i32* @"'s", align 4
  br label %main_CdAudioDeviceControl.exit

main_bb967:                                       ; preds = %main_bb966
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_LeafBlock33.i.i:                             ; preds = %main_NodeBlock.i.i
  %SwitchLeaf34.i.i = icmp eq i32 %"2036", 147460
  br i1 %SwitchLeaf34.i.i, label %main_bb968, label %main_CdAudioIsPlayActive.exit27.i.i

main_bb968:                                       ; preds = %main_LeafBlock33.i.i
  %"2102" = icmp slt i32 %"2038", %"2054"
  br i1 %"2102", label %main_bb1004, label %main_bb969

main_bb969:                                       ; preds = %main_bb968
  %"2103" = call i32 @__VERIFIER_nondet_int() #5
  %"2104" = call i32 @__VERIFIER_nondet_int() #5
  %"2105" = call i32 @__VERIFIER_nondet_int() #5
  br label %main_bb1004

main_NodeBlock43.i.i:                             ; preds = %main_NodeBlock45.i.i
  %Pivot44.i.i = icmp slt i32 %"2036", 147480
  br i1 %Pivot44.i.i, label %main_LeafBlock35.i.i, label %main_NodeBlock41.i.i

main_LeafBlock35.i.i:                             ; preds = %main_NodeBlock43.i.i
  %SwitchLeaf36.i.i = icmp eq i32 %"2036", 147476
  br i1 %SwitchLeaf36.i.i, label %main_bb1004, label %main_CdAudioIsPlayActive.exit27.i.i

main_NodeBlock41.i.i:                             ; preds = %main_NodeBlock43.i.i
  %Pivot42.i.i = icmp slt i32 %"2036", 147496
  br i1 %Pivot42.i.i, label %main_LeafBlock37.i.i, label %main_LeafBlock39.i.i

main_LeafBlock37.i.i:                             ; preds = %main_NodeBlock41.i.i
  %SwitchLeaf38.i.i = icmp eq i32 %"2036", 147480
  br i1 %SwitchLeaf38.i.i, label %main_bb970, label %main_CdAudioIsPlayActive.exit27.i.i

main_bb970:                                       ; preds = %main_LeafBlock37.i.i
  %"2106" = icmp slt i32 %"2038", %"2046"
  br i1 %"2106", label %main_bb1004, label %main_bb971

main_bb971:                                       ; preds = %main_bb970
  %"2107" = call i32 @__VERIFIER_nondet_int() #5
  %"2108" = call i32 @__VERIFIER_nondet_int() #5
  %"2109" = call i32 @__VERIFIER_nondet_int() #5
  br label %main_bb1004

main_LeafBlock39.i.i:                             ; preds = %main_NodeBlock41.i.i
  %SwitchLeaf40.i.i = icmp eq i32 %"2036", 147496
  br i1 %SwitchLeaf40.i.i, label %main_bb1004, label %main_CdAudioIsPlayActive.exit27.i.i

main_NodeBlock63.i.i:                             ; preds = %main_bb951
  %Pivot64.i.i = icmp slt i32 %"2036", 147512
  br i1 %Pivot64.i.i, label %main_NodeBlock51.i.i, label %main_NodeBlock61.i.i

main_NodeBlock51.i.i:                             ; preds = %main_NodeBlock63.i.i
  %Pivot52.i.i = icmp slt i32 %"2036", 147508
  br i1 %Pivot52.i.i, label %main_LeafBlock47.i.i, label %main_LeafBlock49.i.i

main_LeafBlock47.i.i:                             ; preds = %main_NodeBlock51.i.i
  %SwitchLeaf48.i.i = icmp eq i32 %"2036", 147500
  br i1 %SwitchLeaf48.i.i, label %main_bb972, label %main_CdAudioIsPlayActive.exit27.i.i

main_bb972:                                       ; preds = %main_LeafBlock47.i.i
  %"2110" = icmp slt i32 %"2037", %"2044"
  br i1 %"2110", label %main_bb1004, label %main_bb973

main_bb973:                                       ; preds = %main_bb972
  %"2111" = icmp eq i32 %"2060", 0
  br i1 %"2111", label %main_bb974, label %main_bb976

main_bb974:                                       ; preds = %main_bb973
  store i32 -1073741670, i32* @"'myStatus", align 4
  %"2112" = load i32* @"'s", align 4
  %"2113" = load i32* @"'NP", align 4
  %"2114" = icmp eq i32 %"2112", %"2113"
  br i1 %"2114", label %main_AG_SetStatusAndReturn.exit14.i.i, label %main_bb975

main_AG_SetStatusAndReturn.exit14.i.i:            ; preds = %main_bb974
  %"2115" = load i32* @"'DC", align 4
  store i32 %"2115", i32* @"'s", align 4
  br label %main_CdAudioDeviceControl.exit

main_bb975:                                       ; preds = %main_bb974
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_bb976:                                       ; preds = %main_bb973
  %"2116" = icmp ne i32 %"2045", 1
  br i1 %"2116", label %main_bb977, label %main_bb979

main_bb977:                                       ; preds = %main_bb976
  store i32 -1073741823, i32* @"'myStatus", align 4
  %"2117" = load i32* @"'s", align 4
  %"2118" = load i32* @"'NP", align 4
  %"2119" = icmp eq i32 %"2117", %"2118"
  br i1 %"2119", label %main_AG_SetStatusAndReturn.exit15.i.i, label %main_bb978

main_AG_SetStatusAndReturn.exit15.i.i:            ; preds = %main_bb977
  %"2120" = load i32* @"'DC", align 4
  store i32 %"2120", i32* @"'s", align 4
  br label %main_CdAudioDeviceControl.exit

main_bb978:                                       ; preds = %main_bb977
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_bb979:                                       ; preds = %main_bb976
  %"2121" = call i32 @__VERIFIER_nondet_int() #5
  %"2122" = call i32 @__VERIFIER_nondet_int() #5
  %"2123" = call i32 @__VERIFIER_nondet_int() #5
  br label %main_bb1004

main_LeafBlock49.i.i:                             ; preds = %main_NodeBlock51.i.i
  %SwitchLeaf50.i.i = icmp eq i32 %"2036", 147508
  br i1 %SwitchLeaf50.i.i, label %main_bb1004, label %main_CdAudioIsPlayActive.exit27.i.i

main_NodeBlock61.i.i:                             ; preds = %main_NodeBlock63.i.i
  %Pivot62.i.i = icmp slt i32 %"2036", 149504
  br i1 %Pivot62.i.i, label %main_LeafBlock53.i.i, label %main_NodeBlock59.i.i

main_LeafBlock53.i.i:                             ; preds = %main_NodeBlock61.i.i
  %SwitchLeaf54.i.i = icmp eq i32 %"2036", 147512
  br i1 %SwitchLeaf54.i.i, label %main_bb980, label %main_CdAudioIsPlayActive.exit27.i.i

main_bb980:                                       ; preds = %main_LeafBlock53.i.i
  %"2124" = call i32 @__VERIFIER_nondet_int() #5
  %"2125" = call i32 @__VERIFIER_nondet_int() #5
  %"2126" = call i32 @__VERIFIER_nondet_int() #5
  %"2127" = call i32 @__VERIFIER_nondet_int() #5
  %"2128" = call i32 @__VERIFIER_nondet_int() #5
  %"2129" = call i32 @__VERIFIER_nondet_int() #5
  %"2130" = call i32 @__VERIFIER_nondet_int() #5
  %"2131" = icmp eq i32 %"2124", 0
  %"2132" = icmp eq i32 %"2130", 0
  %or.cond.i.i.i = or i1 %"2131", %"2132"
  %"2133" = icmp eq i32 %"2127", 0
  %or.cond1.i.i.i = or i1 %or.cond.i.i.i, %"2133"
  br i1 %or.cond1.i.i.i, label %main_CdAudioIsPlayActive.exit.i.i, label %main_bb981

main_bb981:                                       ; preds = %main_bb980
  %"2134" = sext i32 %"2129" to i64
  %"2135" = icmp eq i64 %"2134", 259
  br i1 %"2135", label %main_bb982, label %main_bb988

main_bb982:                                       ; preds = %main_bb981
  %"2136" = load i32* @"'s", align 4
  %"2137" = load i32* @"'MPR3", align 4
  %"2138" = icmp eq i32 %"2136", %"2137"
  %"2139" = load i32* @"'setEventCalled", align 4
  %"2140" = icmp eq i32 %"2139", 1
  %or.cond.i.i.i.i = and i1 %"2138", %"2140"
  br i1 %or.cond.i.i.i.i, label %main_bb983, label %main_bb984

main_bb983:                                       ; preds = %main_bb982
  %"2141" = load i32* @"'NP", align 4
  store i32 %"2141", i32* @"'s", align 4
  store i32 0, i32* @"'setEventCalled", align 4
  br label %main_KeWaitForSingleObject.exit.i.i.i

main_bb984:                                       ; preds = %main_bb982
  %"2142" = load i32* @"'customIrp", align 4
  %"2143" = icmp eq i32 %"2142", 1
  br i1 %"2143", label %main_bb985, label %main_bb986

main_bb985:                                       ; preds = %main_bb984
  %"2144" = load i32* @"'NP", align 4
  store i32 %"2144", i32* @"'s", align 4
  store i32 0, i32* @"'customIrp", align 4
  br label %main_KeWaitForSingleObject.exit.i.i.i

main_bb986:                                       ; preds = %main_bb984
  %"2145" = load i32* @"'s", align 4
  %"2146" = load i32* @"'MPR3", align 4
  %"2147" = icmp eq i32 %"2145", %"2146"
  br i1 %"2147", label %main_bb987, label %main_KeWaitForSingleObject.exit.i.i.i

main_bb987:                                       ; preds = %main_bb986
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_KeWaitForSingleObject.exit.i.i.i:            ; preds = %main_bb986, %main_bb985, %main_bb983
  %"2148" = call i32 @__VERIFIER_nondet_int() #5
  br label %main_bb988

main_bb988:                                       ; preds = %main_KeWaitForSingleObject.exit.i.i.i, %main_bb981
  %status.0.i.i.i = phi i32 [ %"2125", %main_KeWaitForSingleObject.exit.i.i.i ], [ %"2129", %main_bb981 ]
  %"2149" = icmp slt i32 %status.0.i.i.i, 0
  br i1 %"2149", label %main_CdAudioIsPlayActive.exit.i.i, label %main_bb989

main_bb989:                                       ; preds = %main_bb988
  %"2150" = icmp eq i32 %"2126", 17
  %..i.i.i = select i1 %"2150", i32 1, i32 0
  br label %main_CdAudioIsPlayActive.exit.i.i

main_CdAudioIsPlayActive.exit.i.i:                ; preds = %main_bb989, %main_bb988, %main_bb980
  %.0.i.i.i = phi i32 [ %..i.i.i, %main_bb989 ], [ 0, %main_bb980 ], [ 0, %main_bb988 ]
  %"2151" = icmp ne i32 %.0.i.i.i, 0
  br i1 %"2151", label %main_bb1004, label %main_bb990

main_bb990:                                       ; preds = %main_CdAudioIsPlayActive.exit.i.i
  %"2152" = icmp ne i32 %"2037", 0
  br i1 %"2152", label %main_bb1004, label %main_bb991

main_bb991:                                       ; preds = %main_bb990
  %"2153" = icmp eq i32 %"2056", 0
  br i1 %"2153", label %main_bb992, label %main_bb994

main_bb992:                                       ; preds = %main_bb991
  store i32 -1073741670, i32* @"'myStatus", align 4
  %"2154" = load i32* @"'s", align 4
  %"2155" = load i32* @"'NP", align 4
  %"2156" = icmp eq i32 %"2154", %"2155"
  br i1 %"2156", label %main_AG_SetStatusAndReturn.exit.i.i, label %main_bb993

main_AG_SetStatusAndReturn.exit.i.i:              ; preds = %main_bb992
  %"2157" = load i32* @"'DC", align 4
  store i32 %"2157", i32* @"'s", align 4
  br label %main_CdAudioDeviceControl.exit

main_bb993:                                       ; preds = %main_bb992
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_bb994:                                       ; preds = %main_bb991
  %"2158" = call i32 @__VERIFIER_nondet_int() #5
  %"2159" = call i32 @__VERIFIER_nondet_int() #5
  %"2160" = call i32 @__VERIFIER_nondet_int() #5
  store i32 -1073741670, i32* @"'myStatus", align 4
  %"2161" = load i32* @"'s", align 4
  %"2162" = load i32* @"'NP", align 4
  %"2163" = icmp eq i32 %"2161", %"2162"
  br i1 %"2163", label %main_AG_SetStatusAndReturn.exit2.i.i, label %main_bb995

main_AG_SetStatusAndReturn.exit2.i.i:             ; preds = %main_bb994
  %"2164" = load i32* @"'DC", align 4
  store i32 %"2164", i32* @"'s", align 4
  br label %main_CdAudioDeviceControl.exit

main_bb995:                                       ; preds = %main_bb994
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_NodeBlock59.i.i:                             ; preds = %main_NodeBlock61.i.i
  %Pivot60.i.i = icmp slt i32 %"2036", 149512
  br i1 %Pivot60.i.i, label %main_LeafBlock55.i.i, label %main_LeafBlock57.i.i

main_LeafBlock55.i.i:                             ; preds = %main_NodeBlock59.i.i
  %SwitchLeaf56.i.i = icmp eq i32 %"2036", 149504
  br i1 %SwitchLeaf56.i.i, label %main_bb996, label %main_CdAudioIsPlayActive.exit27.i.i

main_bb996:                                       ; preds = %main_LeafBlock55.i.i
  %"2165" = call i32 @__VERIFIER_nondet_int() #5
  %"2166" = call i32 @__VERIFIER_nondet_int() #5
  %"2167" = call i32 @__VERIFIER_nondet_int() #5
  %"2168" = call i32 @__VERIFIER_nondet_int() #5
  %"2169" = call i32 @__VERIFIER_nondet_int() #5
  %"2170" = call i32 @__VERIFIER_nondet_int() #5
  %"2171" = call i32 @__VERIFIER_nondet_int() #5
  %"2172" = icmp eq i32 %"2165", 0
  %"2173" = icmp eq i32 %"2171", 0
  %or.cond.i20.i.i = or i1 %"2172", %"2173"
  %"2174" = icmp eq i32 %"2168", 0
  %or.cond1.i21.i.i = or i1 %or.cond.i20.i.i, %"2174"
  %or.cond1.i21.not.i.i = xor i1 %or.cond1.i21.i.i, true
  %"2175" = sext i32 %"2170" to i64
  %"2176" = icmp eq i64 %"2175", 259
  %or.cond32.i.i = and i1 %or.cond1.i21.not.i.i, %"2176"
  br i1 %or.cond32.i.i, label %main_bb997, label %main_CdAudioIsPlayActive.exit27.i.i

main_bb997:                                       ; preds = %main_bb996
  %"2177" = load i32* @"'s", align 4
  %"2178" = load i32* @"'MPR3", align 4
  %"2179" = icmp eq i32 %"2177", %"2178"
  %"2180" = load i32* @"'setEventCalled", align 4
  %"2181" = icmp eq i32 %"2180", 1
  %or.cond.i.i22.i.i = and i1 %"2179", %"2181"
  br i1 %or.cond.i.i22.i.i, label %main_bb998, label %main_bb999

main_bb998:                                       ; preds = %main_bb997
  %"2182" = load i32* @"'NP", align 4
  store i32 %"2182", i32* @"'s", align 4
  store i32 0, i32* @"'setEventCalled", align 4
  br label %main_KeWaitForSingleObject.exit.i23.i.i

main_bb999:                                       ; preds = %main_bb997
  %"2183" = load i32* @"'customIrp", align 4
  %"2184" = icmp eq i32 %"2183", 1
  br i1 %"2184", label %main_bb1000, label %main_bb1001

main_bb1000:                                      ; preds = %main_bb999
  %"2185" = load i32* @"'NP", align 4
  store i32 %"2185", i32* @"'s", align 4
  store i32 0, i32* @"'customIrp", align 4
  br label %main_KeWaitForSingleObject.exit.i23.i.i

main_bb1001:                                      ; preds = %main_bb999
  %"2186" = load i32* @"'s", align 4
  %"2187" = load i32* @"'MPR3", align 4
  %"2188" = icmp eq i32 %"2186", %"2187"
  br i1 %"2188", label %main_bb1002, label %main_KeWaitForSingleObject.exit.i23.i.i

main_bb1002:                                      ; preds = %main_bb1001
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_KeWaitForSingleObject.exit.i23.i.i:          ; preds = %main_bb1001, %main_bb1000, %main_bb998
  %"2189" = call i32 @__VERIFIER_nondet_int() #5
  br label %main_CdAudioIsPlayActive.exit27.i.i

main_LeafBlock57.i.i:                             ; preds = %main_NodeBlock59.i.i
  %SwitchLeaf58.i.i = icmp eq i32 %"2036", 149512
  br i1 %SwitchLeaf58.i.i, label %main_bb1003, label %main_CdAudioIsPlayActive.exit27.i.i

main_bb1003:                                      ; preds = %main_LeafBlock57.i.i
  %"2190" = call i32 @__VERIFIER_nondet_int() #5
  %"2191" = call i32 @__VERIFIER_nondet_int() #5
  %"2192" = call i32 @__VERIFIER_nondet_int() #5
  br label %main_bb1004

main_bb1004:                                      ; preds = %main_bb1003, %main_bb990, %main_CdAudioIsPlayActive.exit.i.i, %main_LeafBlock49.i.i, %main_bb979, %main_bb972, %main_LeafBlock39.i.i, %main_bb971, %main_bb970, %main_LeafBlock35.i.i, %main_bb969, %main_bb968, %main_CdAudioIsPlayActive.exit10.i.i, %main_bb952
  %status.1.i.i = phi i32 [ -1073741670, %main_bb979 ], [ -1073741670, %main_bb969 ], [ -1073741670, %main_bb1003 ], [ -2147483631, %main_CdAudioIsPlayActive.exit.i.i ], [ -1073741789, %main_bb990 ], [ -1073741789, %main_bb952 ], [ -2147483631, %main_CdAudioIsPlayActive.exit10.i.i ], [ -1073741789, %main_bb972 ], [ -1073741820, %main_bb970 ], [ -1073741670, %main_bb971 ], [ -1073741820, %main_bb968 ], [ -1073741808, %main_LeafBlock35.i.i ], [ -1073741808, %main_LeafBlock39.i.i ], [ -1073741808, %main_LeafBlock49.i.i ]
  store i32 %status.1.i.i, i32* @"'myStatus", align 4
  %"2193" = load i32* @"'s", align 4
  %"2194" = load i32* @"'NP", align 4
  %"2195" = icmp eq i32 %"2193", %"2194"
  br i1 %"2195", label %main_AG_SetStatusAndReturn.exit28.i.i, label %main_bb1005

main_AG_SetStatusAndReturn.exit28.i.i:            ; preds = %main_bb1004
  %"2196" = load i32* @"'DC", align 4
  store i32 %"2196", i32* @"'s", align 4
  br label %main_CdAudioDeviceControl.exit

main_bb1005:                                      ; preds = %main_bb1004
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_CdAudioIsPlayActive.exit27.i.i:              ; preds = %main_LeafBlock57.i.i, %main_KeWaitForSingleObject.exit.i23.i.i, %main_bb996, %main_LeafBlock55.i.i, %main_LeafBlock53.i.i, %main_LeafBlock49.i.i, %main_LeafBlock47.i.i, %main_LeafBlock39.i.i, %main_LeafBlock37.i.i, %main_LeafBlock35.i.i, %main_LeafBlock33.i.i, %main_LeafBlock.i.i
  %"2197" = call i32 @__VERIFIER_nondet_int() #5
  %"2198" = call i32 @__VERIFIER_nondet_int() #5
  %"2199" = call i32 @__VERIFIER_nondet_int() #5
  %"2200" = load i32* @"'s", align 4
  %"2201" = load i32* @"'NP", align 4
  %"2202" = icmp eq i32 %"2200", %"2201"
  br i1 %"2202", label %main_bb1006, label %main_bb1031

main_bb1006:                                      ; preds = %main_CdAudioIsPlayActive.exit27.i.i
  %"2203" = load i32* @"'SKIP1", align 4
  store i32 %"2203", i32* @"'s", align 4
  %"2204" = call i32 @__kittel_nondef.0() #5
  %"2205" = call i32 @__VERIFIER_nondet_int() #5
  %"2206" = call i32 @__VERIFIER_nondet_int() #5
  %"2207" = load i32* @"'compRegistered", align 4
  %"2208" = icmp ne i32 %"2207", 0
  br i1 %"2208", label %main_bb1007, label %main_bb1019

main_bb1007:                                      ; preds = %main_bb1006
  %"2209" = load i32* @"'routine", align 4
  %"2210" = icmp eq i32 %"2209", 0
  br i1 %"2210", label %main_bb1008, label %main_bb1014

main_bb1008:                                      ; preds = %main_bb1007
  %"2211" = call i32 @__VERIFIER_nondet_int() #5
  %"2212" = call i32 @__VERIFIER_nondet_int() #5
  %"2213" = icmp ne i32 %"2211", 0
  br i1 %"2213", label %main_bb1009, label %main_bb1012

main_bb1009:                                      ; preds = %main_bb1008
  %"2214" = load i32* @"'pended", align 4
  %"2215" = icmp eq i32 %"2214", 0
  br i1 %"2215", label %main_bb1010, label %main_bb1011

main_bb1010:                                      ; preds = %main_bb1009
  store i32 1, i32* @"'pended", align 4
  br label %main_bb1012

main_bb1011:                                      ; preds = %main_bb1009
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_bb1012:                                      ; preds = %main_bb1010, %main_bb1008
  %"2216" = load i32* @"'myStatus", align 4
  %"2217" = icmp sge i32 %"2216", 0
  br i1 %"2217", label %main_bb1013, label %main_HPCdrCompletion.exit.i.i.i.i

main_bb1013:                                      ; preds = %main_bb1012
  %"2218" = call i32 @__VERIFIER_nondet_int() #5
  br label %main_HPCdrCompletion.exit.i.i.i.i

main_HPCdrCompletion.exit.i.i.i.i:                ; preds = %main_bb1013, %main_bb1012
  %"2219" = load i32* @"'myStatus", align 4
  br label %main_bb1016

main_bb1014:                                      ; preds = %main_bb1007
  %"2220" = load i32* @"'routine", align 4
  %"2221" = icmp eq i32 %"2220", 1
  br i1 %"2221", label %main_bb1015, label %main_bb1016

main_bb1015:                                      ; preds = %main_bb1014
  %"2222" = call i32 @__VERIFIER_nondet_int() #5
  store i32 1, i32* @"'setEventCalled", align 4
  br label %main_bb1016

main_bb1016:                                      ; preds = %main_bb1015, %main_bb1014, %main_HPCdrCompletion.exit.i.i.i.i
  %compRetStatus.1.i.i.i.i = phi i32 [ %"2219", %main_HPCdrCompletion.exit.i.i.i.i ], [ -1073741802, %main_bb1015 ], [ %"2204", %main_bb1014 ]
  %"2223" = sext i32 %compRetStatus.1.i.i.i.i to i64
  %"2224" = icmp eq i64 %"2223", -1073741802
  br i1 %"2224", label %main_bb1017, label %main_bb1019

main_bb1017:                                      ; preds = %main_bb1016
  %"2225" = load i32* @"'s", align 4
  %"2226" = load i32* @"'NP", align 4
  %"2227" = icmp eq i32 %"2225", %"2226"
  br i1 %"2227", label %main_stubMoreProcessingRequired.exit.i.i.i.i, label %main_bb1018

main_stubMoreProcessingRequired.exit.i.i.i.i:     ; preds = %main_bb1017
  %"2228" = load i32* @"'MPR1", align 4
  store i32 %"2228", i32* @"'s", align 4
  br label %main_bb1019

main_bb1018:                                      ; preds = %main_bb1017
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_bb1019:                                      ; preds = %main_stubMoreProcessingRequired.exit.i.i.i.i, %main_bb1016, %main_bb1006
  %"2229" = icmp ne i32 %"2205", 0
  br i1 %"2229", label %main_bb1022, label %main_bb1020

main_bb1020:                                      ; preds = %main_bb1019
  %"2230" = call i32 @__VERIFIER_nondet_int() #5
  %"2231" = icmp eq i32 %"2230", 0
  br i1 %"2231", label %main_bb1022, label %main_bb1021

main_bb1021:                                      ; preds = %main_bb1020
  %"2232" = call i32 @__VERIFIER_nondet_int() #5
  %"2233" = icmp eq i32 %"2232", 1
  %..i.i.i.i = select i1 %"2233", i32 -1073741823, i32 259
  br label %main_bb1022

main_bb1022:                                      ; preds = %main_bb1021, %main_bb1020, %main_bb1019
  %returnVal2.1.i.i.i.i = phi i32 [ 259, %main_bb1019 ], [ 0, %main_bb1020 ], [ %..i.i.i.i, %main_bb1021 ]
  %"2234" = load i32* @"'s", align 4
  %"2235" = load i32* @"'NP", align 4
  %"2236" = icmp eq i32 %"2234", %"2235"
  br i1 %"2236", label %main_bb1023, label %main_bb1024

main_bb1023:                                      ; preds = %main_bb1022
  %"2237" = load i32* @"'IPC", align 4
  store i32 %"2237", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i.i.i, i32* @"'lowerDriverReturn", align 4
  br label %main_CdAudioDeviceControl.exit

main_bb1024:                                      ; preds = %main_bb1022
  %"2238" = load i32* @"'s", align 4
  %"2239" = load i32* @"'MPR1", align 4
  %"2240" = icmp eq i32 %"2238", %"2239"
  br i1 %"2240", label %main_bb1025, label %main_bb1028

main_bb1025:                                      ; preds = %main_bb1024
  %"2241" = icmp eq i32 %returnVal2.1.i.i.i.i, 259
  br i1 %"2241", label %main_bb1026, label %main_bb1027

main_bb1026:                                      ; preds = %main_bb1025
  %"2242" = load i32* @"'MPR3", align 4
  store i32 %"2242", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i.i.i, i32* @"'lowerDriverReturn", align 4
  br label %main_CdAudioDeviceControl.exit

main_bb1027:                                      ; preds = %main_bb1025
  %"2243" = load i32* @"'NP", align 4
  store i32 %"2243", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i.i.i, i32* @"'lowerDriverReturn", align 4
  br label %main_CdAudioDeviceControl.exit

main_bb1028:                                      ; preds = %main_bb1024
  %"2244" = load i32* @"'s", align 4
  %"2245" = load i32* @"'SKIP1", align 4
  %"2246" = icmp eq i32 %"2244", %"2245"
  br i1 %"2246", label %main_bb1029, label %main_bb1030

main_bb1029:                                      ; preds = %main_bb1028
  %"2247" = load i32* @"'SKIP2", align 4
  store i32 %"2247", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i.i.i, i32* @"'lowerDriverReturn", align 4
  br label %main_CdAudioDeviceControl.exit

main_bb1030:                                      ; preds = %main_bb1028
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_bb1031:                                      ; preds = %main_CdAudioIsPlayActive.exit27.i.i
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_NodeBlock43.i:                               ; preds = %main_bb920
  %Pivot44.i = icmp slt i32 %"1971", 7
  br i1 %Pivot44.i, label %main_LeafBlock39.i, label %main_LeafBlock41.i

main_LeafBlock39.i:                               ; preds = %main_NodeBlock43.i
  %SwitchLeaf40.i = icmp eq i32 %"1971", 3
  br i1 %SwitchLeaf40.i, label %main_bb1032, label %main_NewDefault.i

main_bb1032:                                      ; preds = %main_LeafBlock39.i
  %"2248" = call i32 @__VERIFIER_nondet_int() #5
  %"2249" = call i32 @__VERIFIER_nondet_int() #5
  %"2250" = call i32 @__VERIFIER_nondet_int() #5
  %"2251" = call i32 @__VERIFIER_nondet_int() #5
  %"2252" = call i32 @__VERIFIER_nondet_int() #5
  %"2253" = call i32 @__VERIFIER_nondet_int() #5
  %"2254" = call i32 @__VERIFIER_nondet_int() #5
  %"2255" = call i32 @__VERIFIER_nondet_int() #5
  %"2256" = call i32 @__VERIFIER_nondet_int() #5
  %"2257" = call i32 @__VERIFIER_nondet_int() #5
  %"2258" = call i32 @__VERIFIER_nondet_int() #5
  %"2259" = call i32 @__VERIFIER_nondet_int() #5
  %"2260" = call i32 @__VERIFIER_nondet_int() #5
  %"2261" = call i32 @__VERIFIER_nondet_int() #5
  %"2262" = call i32 @__VERIFIER_nondet_int() #5
  %"2263" = call i32 @__VERIFIER_nondet_int() #5
  %"2264" = call i32 @__VERIFIER_nondet_int() #5
  %"2265" = call i32 @__VERIFIER_nondet_int() #5
  %"2266" = call i32 @__VERIFIER_nondet_int() #5
  %Pivot77.i.i = icmp slt i32 %"2248", 147480
  br i1 %Pivot77.i.i, label %main_NodeBlock52.i.i, label %main_NodeBlock74.i.i

main_NodeBlock52.i.i:                             ; preds = %main_bb1032
  %Pivot53.i.i = icmp slt i32 %"2248", 147468
  br i1 %Pivot53.i.i, label %main_NodeBlock40.i.i, label %main_NodeBlock50.i.i

main_NodeBlock40.i.i:                             ; preds = %main_NodeBlock52.i.i
  %Pivot41.i.i = icmp slt i32 %"2248", 147460
  br i1 %Pivot41.i.i, label %main_LeafBlock.i2.i, label %main_NodeBlock.i12.i

main_LeafBlock.i2.i:                              ; preds = %main_NodeBlock40.i.i
  %SwitchLeaf.i1.i = icmp eq i32 %"2248", 147456
  br i1 %SwitchLeaf.i1.i, label %main_bb1033, label %main_NewDefault.i18.i

main_bb1033:                                      ; preds = %main_LeafBlock.i2.i
  %"2267" = icmp slt i32 %"2249", %"2251"
  br i1 %"2267", label %main_bb1116, label %main_bb1034

main_bb1034:                                      ; preds = %main_bb1033
  %"2268" = call i32 @__VERIFIER_nondet_int() #5
  %"2269" = call i32 @__VERIFIER_nondet_int() #5
  %"2270" = call i32 @__VERIFIER_nondet_int() #5
  %"2271" = call i32 @__VERIFIER_nondet_int() #5
  %"2272" = call i32 @__VERIFIER_nondet_int() #5
  %"2273" = call i32 @__VERIFIER_nondet_int() #5
  %"2274" = call i32 @__VERIFIER_nondet_int() #5
  %"2275" = icmp eq i32 %"2268", 0
  %"2276" = icmp eq i32 %"2274", 0
  %or.cond.i.i3.i = or i1 %"2275", %"2276"
  %"2277" = icmp eq i32 %"2271", 0
  %or.cond1.i.i4.i = or i1 %or.cond.i.i3.i, %"2277"
  br i1 %or.cond1.i.i4.i, label %main_CdAudioIsPlayActive.exit.i10.i, label %main_bb1035

main_bb1035:                                      ; preds = %main_bb1034
  %"2278" = sext i32 %"2273" to i64
  %"2279" = icmp eq i64 %"2278", 259
  br i1 %"2279", label %main_bb1036, label %main_bb1042

main_bb1036:                                      ; preds = %main_bb1035
  %"2280" = load i32* @"'s", align 4
  %"2281" = load i32* @"'MPR3", align 4
  %"2282" = icmp eq i32 %"2280", %"2281"
  %"2283" = load i32* @"'setEventCalled", align 4
  %"2284" = icmp eq i32 %"2283", 1
  %or.cond.i.i.i5.i = and i1 %"2282", %"2284"
  br i1 %or.cond.i.i.i5.i, label %main_bb1037, label %main_bb1038

main_bb1037:                                      ; preds = %main_bb1036
  %"2285" = load i32* @"'NP", align 4
  store i32 %"2285", i32* @"'s", align 4
  store i32 0, i32* @"'setEventCalled", align 4
  br label %main_KeWaitForSingleObject.exit.i.i6.i

main_bb1038:                                      ; preds = %main_bb1036
  %"2286" = load i32* @"'customIrp", align 4
  %"2287" = icmp eq i32 %"2286", 1
  br i1 %"2287", label %main_bb1039, label %main_bb1040

main_bb1039:                                      ; preds = %main_bb1038
  %"2288" = load i32* @"'NP", align 4
  store i32 %"2288", i32* @"'s", align 4
  store i32 0, i32* @"'customIrp", align 4
  br label %main_KeWaitForSingleObject.exit.i.i6.i

main_bb1040:                                      ; preds = %main_bb1038
  %"2289" = load i32* @"'s", align 4
  %"2290" = load i32* @"'MPR3", align 4
  %"2291" = icmp eq i32 %"2289", %"2290"
  br i1 %"2291", label %main_bb1041, label %main_KeWaitForSingleObject.exit.i.i6.i

main_bb1041:                                      ; preds = %main_bb1040
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_KeWaitForSingleObject.exit.i.i6.i:           ; preds = %main_bb1040, %main_bb1039, %main_bb1037
  %"2292" = call i32 @__VERIFIER_nondet_int() #5
  br label %main_bb1042

main_bb1042:                                      ; preds = %main_KeWaitForSingleObject.exit.i.i6.i, %main_bb1035
  %status.0.i.i7.i = phi i32 [ %"2269", %main_KeWaitForSingleObject.exit.i.i6.i ], [ %"2273", %main_bb1035 ]
  %"2293" = icmp slt i32 %status.0.i.i7.i, 0
  br i1 %"2293", label %main_CdAudioIsPlayActive.exit.i10.i, label %main_bb1043

main_bb1043:                                      ; preds = %main_bb1042
  %"2294" = icmp eq i32 %"2270", 17
  %..i.i8.i = select i1 %"2294", i32 1, i32 0
  br label %main_CdAudioIsPlayActive.exit.i10.i

main_CdAudioIsPlayActive.exit.i10.i:              ; preds = %main_bb1043, %main_bb1042, %main_bb1034
  %.0.i.i9.i = phi i32 [ %..i.i8.i, %main_bb1043 ], [ 0, %main_bb1034 ], [ 0, %main_bb1042 ]
  %"2295" = icmp ne i32 %.0.i.i9.i, 0
  br i1 %"2295", label %main_bb1116, label %main_bb1044

main_bb1044:                                      ; preds = %main_CdAudioIsPlayActive.exit.i10.i
  %"2296" = icmp eq i32 %"2263", 0
  br i1 %"2296", label %main_bb1045, label %main_bb1047

main_bb1045:                                      ; preds = %main_bb1044
  store i32 -1073741670, i32* @"'myStatus", align 4
  %"2297" = load i32* @"'s", align 4
  %"2298" = load i32* @"'NP", align 4
  %"2299" = icmp eq i32 %"2297", %"2298"
  br i1 %"2299", label %main_IofCompleteRequest.exit.i.i, label %main_bb1046

main_IofCompleteRequest.exit.i.i:                 ; preds = %main_bb1045
  %"2300" = load i32* @"'DC", align 4
  store i32 %"2300", i32* @"'s", align 4
  br label %main_CdAudioDeviceControl.exit

main_bb1046:                                      ; preds = %main_bb1045
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_bb1047:                                      ; preds = %main_bb1044
  %"2301" = call i32 @__VERIFIER_nondet_int() #5
  %"2302" = call i32 @__VERIFIER_nondet_int() #5
  %"2303" = call i32 @__VERIFIER_nondet_int() #5
  store i32 -1073741670, i32* @"'myStatus", align 4
  %"2304" = load i32* @"'s", align 4
  %"2305" = load i32* @"'NP", align 4
  %"2306" = icmp eq i32 %"2304", %"2305"
  br i1 %"2306", label %main_IofCompleteRequest.exit2.i.i, label %main_bb1048

main_IofCompleteRequest.exit2.i.i:                ; preds = %main_bb1047
  %"2307" = load i32* @"'DC", align 4
  store i32 %"2307", i32* @"'s", align 4
  br label %main_CdAudioDeviceControl.exit

main_bb1048:                                      ; preds = %main_bb1047
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_NodeBlock.i12.i:                             ; preds = %main_NodeBlock40.i.i
  %Pivot.i11.i = icmp slt i32 %"2248", 147464
  br i1 %Pivot.i11.i, label %main_LeafBlock36.i.i, label %main_LeafBlock38.i.i

main_LeafBlock36.i.i:                             ; preds = %main_NodeBlock.i12.i
  %SwitchLeaf37.i.i = icmp eq i32 %"2248", 147460
  br i1 %SwitchLeaf37.i.i, label %main_bb1049, label %main_NewDefault.i18.i

main_bb1049:                                      ; preds = %main_LeafBlock36.i.i
  %"2308" = icmp slt i32 %"2250", %"2256"
  br i1 %"2308", label %main_bb1116, label %main_bb1050

main_bb1050:                                      ; preds = %main_bb1049
  %"2309" = call i32 @__VERIFIER_nondet_int() #5
  %"2310" = call i32 @__VERIFIER_nondet_int() #5
  %"2311" = call i32 @__VERIFIER_nondet_int() #5
  br label %main_bb1116

main_LeafBlock38.i.i:                             ; preds = %main_NodeBlock.i12.i
  %SwitchLeaf39.i.i = icmp eq i32 %"2248", 147464
  br i1 %SwitchLeaf39.i.i, label %main_bb1063, label %main_NewDefault.i18.i

main_NodeBlock50.i.i:                             ; preds = %main_NodeBlock52.i.i
  %Pivot51.i.i = icmp slt i32 %"2248", 147472
  br i1 %Pivot51.i.i, label %main_LeafBlock42.i.i, label %main_NodeBlock48.i.i

main_LeafBlock42.i.i:                             ; preds = %main_NodeBlock50.i.i
  %SwitchLeaf43.i.i = icmp eq i32 %"2248", 147468
  br i1 %SwitchLeaf43.i.i, label %main_bb1051, label %main_NewDefault.i18.i

main_bb1051:                                      ; preds = %main_LeafBlock42.i.i
  %"2312" = icmp eq i32 %"2264", 0
  br i1 %"2312", label %main_bb1052, label %main_bb1054

main_bb1052:                                      ; preds = %main_bb1051
  store i32 -1073741670, i32* @"'myStatus", align 4
  %"2313" = load i32* @"'s", align 4
  %"2314" = load i32* @"'NP", align 4
  %"2315" = icmp eq i32 %"2313", %"2314"
  br i1 %"2315", label %main_IofCompleteRequest.exit7.i.i, label %main_bb1053

main_IofCompleteRequest.exit7.i.i:                ; preds = %main_bb1052
  %"2316" = load i32* @"'DC", align 4
  store i32 %"2316", i32* @"'s", align 4
  br label %main_CdAudioDeviceControl.exit

main_bb1053:                                      ; preds = %main_bb1052
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_bb1054:                                      ; preds = %main_bb1051
  %"2317" = icmp eq i32 %"2257", 1
  br i1 %"2317", label %main_bb1055, label %main_bb1057

main_bb1055:                                      ; preds = %main_bb1054
  store i32 0, i32* @"'myStatus", align 4
  %"2318" = load i32* @"'s", align 4
  %"2319" = load i32* @"'NP", align 4
  %"2320" = icmp eq i32 %"2318", %"2319"
  br i1 %"2320", label %main_IofCompleteRequest.exit8.i.i, label %main_bb1056

main_IofCompleteRequest.exit8.i.i:                ; preds = %main_bb1055
  %"2321" = load i32* @"'DC", align 4
  store i32 %"2321", i32* @"'s", align 4
  br label %main_CdAudioDeviceControl.exit

main_bb1056:                                      ; preds = %main_bb1055
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_bb1057:                                      ; preds = %main_bb1054
  %"2322" = call i32 @__VERIFIER_nondet_int() #5
  %"2323" = call i32 @__VERIFIER_nondet_int() #5
  %"2324" = call i32 @__VERIFIER_nondet_int() #5
  store i32 -1073741670, i32* @"'myStatus", align 4
  %"2325" = load i32* @"'s", align 4
  %"2326" = load i32* @"'NP", align 4
  %"2327" = icmp eq i32 %"2325", %"2326"
  br i1 %"2327", label %main_IofCompleteRequest.exit10.i.i, label %main_bb1058

main_IofCompleteRequest.exit10.i.i:               ; preds = %main_bb1057
  %"2328" = load i32* @"'DC", align 4
  store i32 %"2328", i32* @"'s", align 4
  br label %main_CdAudioDeviceControl.exit

main_bb1058:                                      ; preds = %main_bb1057
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_NodeBlock48.i.i:                             ; preds = %main_NodeBlock50.i.i
  %Pivot49.i.i = icmp slt i32 %"2248", 147476
  br i1 %Pivot49.i.i, label %main_LeafBlock44.i.i, label %main_LeafBlock46.i.i

main_LeafBlock44.i.i:                             ; preds = %main_NodeBlock48.i.i
  %SwitchLeaf45.i.i = icmp eq i32 %"2248", 147472
  br i1 %SwitchLeaf45.i.i, label %main_bb1059, label %main_NewDefault.i18.i

main_bb1059:                                      ; preds = %main_LeafBlock44.i.i
  %"2329" = icmp eq i32 %"2257", 0
  br i1 %"2329", label %main_bb1060, label %main_bb1062

main_bb1060:                                      ; preds = %main_bb1059
  store i32 -1073741823, i32* @"'myStatus", align 4
  %"2330" = load i32* @"'s", align 4
  %"2331" = load i32* @"'NP", align 4
  %"2332" = icmp eq i32 %"2330", %"2331"
  br i1 %"2332", label %main_IofCompleteRequest.exit13.i.i, label %main_bb1061

main_IofCompleteRequest.exit13.i.i:               ; preds = %main_bb1060
  %"2333" = load i32* @"'DC", align 4
  store i32 %"2333", i32* @"'s", align 4
  br label %main_CdAudioDeviceControl.exit

main_bb1061:                                      ; preds = %main_bb1060
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_bb1062:                                      ; preds = %main_bb1059
  %"2334" = call i32 @__VERIFIER_nondet_int() #5
  %"2335" = call i32 @__VERIFIER_nondet_int() #5
  %"2336" = call i32 @__VERIFIER_nondet_int() #5
  br label %main_bb1116

main_LeafBlock46.i.i:                             ; preds = %main_NodeBlock48.i.i
  %SwitchLeaf47.i.i = icmp eq i32 %"2248", 147476
  br i1 %SwitchLeaf47.i.i, label %main_bb1116, label %main_NewDefault.i18.i

main_NodeBlock74.i.i:                             ; preds = %main_bb1032
  %Pivot75.i.i = icmp slt i32 %"2248", 147508
  br i1 %Pivot75.i.i, label %main_NodeBlock62.i.i, label %main_NodeBlock72.i.i

main_NodeBlock62.i.i:                             ; preds = %main_NodeBlock74.i.i
  %Pivot63.i.i = icmp slt i32 %"2248", 147496
  br i1 %Pivot63.i.i, label %main_LeafBlock54.i.i, label %main_NodeBlock60.i.i

main_LeafBlock54.i.i:                             ; preds = %main_NodeBlock62.i.i
  %SwitchLeaf55.i.i = icmp eq i32 %"2248", 147480
  br i1 %SwitchLeaf55.i.i, label %main_bb1063, label %main_NewDefault.i18.i

main_bb1063:                                      ; preds = %main_LeafBlock54.i.i, %main_LeafBlock38.i.i
  %"2337" = call i32 @__VERIFIER_nondet_int() #5
  %"2338" = call i32 @__VERIFIER_nondet_int() #5
  %"2339" = call i32 @__VERIFIER_nondet_int() #5
  %"2340" = icmp eq i32 %"2248", 147464
  br i1 %"2340", label %main_bb1064, label %main_bb1066

main_bb1064:                                      ; preds = %main_bb1063
  store i32 -1073741670, i32* @"'myStatus", align 4
  %"2341" = load i32* @"'s", align 4
  %"2342" = load i32* @"'NP", align 4
  %"2343" = icmp eq i32 %"2341", %"2342"
  br i1 %"2343", label %main_IofCompleteRequest.exit4.i.i, label %main_bb1065

main_IofCompleteRequest.exit4.i.i:                ; preds = %main_bb1064
  %"2344" = load i32* @"'DC", align 4
  store i32 %"2344", i32* @"'s", align 4
  br label %main_CdAudioDeviceControl.exit

main_bb1065:                                      ; preds = %main_bb1064
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_bb1066:                                      ; preds = %main_bb1063
  %"2345" = icmp slt i32 %"2250", %"2255"
  br i1 %"2345", label %main_bb1116, label %main_bb1067

main_bb1067:                                      ; preds = %main_bb1066
  %"2346" = call i32 @__VERIFIER_nondet_int() #5
  %"2347" = call i32 @__VERIFIER_nondet_int() #5
  %"2348" = call i32 @__VERIFIER_nondet_int() #5
  br label %main_bb1116

main_NodeBlock60.i.i:                             ; preds = %main_NodeBlock62.i.i
  %Pivot61.i.i = icmp slt i32 %"2248", 147500
  br i1 %Pivot61.i.i, label %main_LeafBlock56.i.i, label %main_LeafBlock58.i.i

main_LeafBlock56.i.i:                             ; preds = %main_NodeBlock60.i.i
  %SwitchLeaf57.i.i = icmp eq i32 %"2248", 147496
  br i1 %SwitchLeaf57.i.i, label %main_bb1116, label %main_NewDefault.i18.i

main_LeafBlock58.i.i:                             ; preds = %main_NodeBlock60.i.i
  %SwitchLeaf59.i.i = icmp eq i32 %"2248", 147500
  br i1 %SwitchLeaf59.i.i, label %main_bb1068, label %main_NewDefault.i18.i

main_bb1068:                                      ; preds = %main_LeafBlock58.i.i
  %"2349" = icmp slt i32 %"2249", %"2259"
  br i1 %"2349", label %main_bb1116, label %main_bb1069

main_bb1069:                                      ; preds = %main_bb1068
  %"2350" = icmp eq i32 %"2266", 0
  br i1 %"2350", label %main_bb1070, label %main_bb1072

main_bb1070:                                      ; preds = %main_bb1069
  store i32 -1073741670, i32* @"'myStatus", align 4
  %"2351" = load i32* @"'s", align 4
  %"2352" = load i32* @"'NP", align 4
  %"2353" = icmp eq i32 %"2351", %"2352"
  br i1 %"2353", label %main_IofCompleteRequest.exit15.i.i, label %main_bb1071

main_IofCompleteRequest.exit15.i.i:               ; preds = %main_bb1070
  %"2354" = load i32* @"'DC", align 4
  store i32 %"2354", i32* @"'s", align 4
  br label %main_CdAudioDeviceControl.exit

main_bb1071:                                      ; preds = %main_bb1070
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_bb1072:                                      ; preds = %main_bb1069
  %"2355" = icmp ne i32 %"2265", 1
  br i1 %"2355", label %main_bb1073, label %main_bb1075

main_bb1073:                                      ; preds = %main_bb1072
  store i32 -1073741823, i32* @"'myStatus", align 4
  %"2356" = load i32* @"'s", align 4
  %"2357" = load i32* @"'NP", align 4
  %"2358" = icmp eq i32 %"2356", %"2357"
  br i1 %"2358", label %main_IofCompleteRequest.exit16.i.i, label %main_bb1074

main_IofCompleteRequest.exit16.i.i:               ; preds = %main_bb1073
  %"2359" = load i32* @"'DC", align 4
  store i32 %"2359", i32* @"'s", align 4
  br label %main_CdAudioDeviceControl.exit

main_bb1074:                                      ; preds = %main_bb1073
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_bb1075:                                      ; preds = %main_bb1072
  %"2360" = call i32 @__VERIFIER_nondet_int() #5
  %"2361" = call i32 @__VERIFIER_nondet_int() #5
  %"2362" = call i32 @__VERIFIER_nondet_int() #5
  br label %main_bb1116

main_NodeBlock72.i.i:                             ; preds = %main_NodeBlock74.i.i
  %Pivot73.i.i = icmp slt i32 %"2248", 149504
  br i1 %Pivot73.i.i, label %main_LeafBlock64.i.i, label %main_NodeBlock70.i.i

main_LeafBlock64.i.i:                             ; preds = %main_NodeBlock72.i.i
  %SwitchLeaf65.i.i = icmp eq i32 %"2248", 147508
  br i1 %SwitchLeaf65.i.i, label %main_bb1116, label %main_NewDefault.i18.i

main_NodeBlock70.i.i:                             ; preds = %main_NodeBlock72.i.i
  %Pivot71.i.i = icmp slt i32 %"2248", 149512
  br i1 %Pivot71.i.i, label %main_LeafBlock66.i.i, label %main_LeafBlock68.i.i

main_LeafBlock66.i.i:                             ; preds = %main_NodeBlock70.i.i
  %SwitchLeaf67.i.i = icmp eq i32 %"2248", 149504
  br i1 %SwitchLeaf67.i.i, label %main_bb1076, label %main_NewDefault.i18.i

main_bb1076:                                      ; preds = %main_LeafBlock66.i.i
  %"2363" = call i32 @__VERIFIER_nondet_int() #5
  %"2364" = call i32 @__VERIFIER_nondet_int() #5
  %"2365" = call i32 @__VERIFIER_nondet_int() #5
  %"2366" = call i32 @__VERIFIER_nondet_int() #5
  %"2367" = call i32 @__VERIFIER_nondet_int() #5
  %"2368" = call i32 @__VERIFIER_nondet_int() #5
  %"2369" = call i32 @__VERIFIER_nondet_int() #5
  %"2370" = icmp eq i32 %"2363", 0
  %"2371" = icmp eq i32 %"2369", 0
  %or.cond.i19.i.i = or i1 %"2370", %"2371"
  %"2372" = icmp eq i32 %"2366", 0
  %or.cond1.i20.i.i = or i1 %or.cond.i19.i.i, %"2372"
  br i1 %or.cond1.i20.i.i, label %main_CdAudioIsPlayActive.exit26.i.i, label %main_bb1077

main_bb1077:                                      ; preds = %main_bb1076
  %"2373" = sext i32 %"2368" to i64
  %"2374" = icmp eq i64 %"2373", 259
  br i1 %"2374", label %main_bb1078, label %main_bb1084

main_bb1078:                                      ; preds = %main_bb1077
  %"2375" = load i32* @"'s", align 4
  %"2376" = load i32* @"'MPR3", align 4
  %"2377" = icmp eq i32 %"2375", %"2376"
  %"2378" = load i32* @"'setEventCalled", align 4
  %"2379" = icmp eq i32 %"2378", 1
  %or.cond.i.i21.i.i = and i1 %"2377", %"2379"
  br i1 %or.cond.i.i21.i.i, label %main_bb1079, label %main_bb1080

main_bb1079:                                      ; preds = %main_bb1078
  %"2380" = load i32* @"'NP", align 4
  store i32 %"2380", i32* @"'s", align 4
  store i32 0, i32* @"'setEventCalled", align 4
  br label %main_KeWaitForSingleObject.exit.i22.i.i

main_bb1080:                                      ; preds = %main_bb1078
  %"2381" = load i32* @"'customIrp", align 4
  %"2382" = icmp eq i32 %"2381", 1
  br i1 %"2382", label %main_bb1081, label %main_bb1082

main_bb1081:                                      ; preds = %main_bb1080
  %"2383" = load i32* @"'NP", align 4
  store i32 %"2383", i32* @"'s", align 4
  store i32 0, i32* @"'customIrp", align 4
  br label %main_KeWaitForSingleObject.exit.i22.i.i

main_bb1082:                                      ; preds = %main_bb1080
  %"2384" = load i32* @"'s", align 4
  %"2385" = load i32* @"'MPR3", align 4
  %"2386" = icmp eq i32 %"2384", %"2385"
  br i1 %"2386", label %main_bb1083, label %main_KeWaitForSingleObject.exit.i22.i.i

main_bb1083:                                      ; preds = %main_bb1082
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_KeWaitForSingleObject.exit.i22.i.i:          ; preds = %main_bb1082, %main_bb1081, %main_bb1079
  %"2387" = call i32 @__VERIFIER_nondet_int() #5
  br label %main_bb1084

main_bb1084:                                      ; preds = %main_KeWaitForSingleObject.exit.i22.i.i, %main_bb1077
  %status.0.i23.i.i = phi i32 [ %"2364", %main_KeWaitForSingleObject.exit.i22.i.i ], [ %"2368", %main_bb1077 ]
  %"2388" = icmp slt i32 %status.0.i23.i.i, 0
  br i1 %"2388", label %main_CdAudioIsPlayActive.exit26.i.i, label %main_bb1085

main_bb1085:                                      ; preds = %main_bb1084
  %"2389" = icmp eq i32 %"2365", 17
  %..i24.i.i = select i1 %"2389", i32 1, i32 0
  br label %main_CdAudioIsPlayActive.exit26.i.i

main_CdAudioIsPlayActive.exit26.i.i:              ; preds = %main_bb1085, %main_bb1084, %main_bb1076
  %.0.i25.i.i = phi i32 [ %..i24.i.i, %main_bb1085 ], [ 0, %main_bb1076 ], [ 0, %main_bb1084 ]
  %"2390" = icmp eq i32 %.0.i25.i.i, 1
  br i1 %"2390", label %main_bb1086, label %main_bb1088

main_bb1086:                                      ; preds = %main_CdAudioIsPlayActive.exit26.i.i
  store i32 0, i32* @"'myStatus", align 4
  %"2391" = load i32* @"'s", align 4
  %"2392" = load i32* @"'NP", align 4
  %"2393" = icmp eq i32 %"2391", %"2392"
  br i1 %"2393", label %main_IofCompleteRequest.exit27.i.i, label %main_bb1087

main_IofCompleteRequest.exit27.i.i:               ; preds = %main_bb1086
  %"2394" = load i32* @"'DC", align 4
  store i32 %"2394", i32* @"'s", align 4
  br label %main_CdAudioDeviceControl.exit

main_bb1087:                                      ; preds = %main_bb1086
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_bb1088:                                      ; preds = %main_CdAudioIsPlayActive.exit26.i.i
  %"2395" = call i32 @__VERIFIER_nondet_int() #5
  %"2396" = call i32 @__VERIFIER_nondet_int() #5
  %"2397" = call i32 @__VERIFIER_nondet_int() #5
  %"2398" = load i32* @"'s", align 4
  %"2399" = load i32* @"'NP", align 4
  %"2400" = icmp eq i32 %"2398", %"2399"
  br i1 %"2400", label %main_bb1089, label %main_bb1114

main_bb1089:                                      ; preds = %main_bb1088
  %"2401" = load i32* @"'SKIP1", align 4
  store i32 %"2401", i32* @"'s", align 4
  %"2402" = call i32 @__kittel_nondef.0() #5
  %"2403" = call i32 @__VERIFIER_nondet_int() #5
  %"2404" = call i32 @__VERIFIER_nondet_int() #5
  %"2405" = load i32* @"'compRegistered", align 4
  %"2406" = icmp ne i32 %"2405", 0
  br i1 %"2406", label %main_bb1090, label %main_bb1102

main_bb1090:                                      ; preds = %main_bb1089
  %"2407" = load i32* @"'routine", align 4
  %"2408" = icmp eq i32 %"2407", 0
  br i1 %"2408", label %main_bb1091, label %main_bb1097

main_bb1091:                                      ; preds = %main_bb1090
  %"2409" = call i32 @__VERIFIER_nondet_int() #5
  %"2410" = call i32 @__VERIFIER_nondet_int() #5
  %"2411" = icmp ne i32 %"2409", 0
  br i1 %"2411", label %main_bb1092, label %main_bb1095

main_bb1092:                                      ; preds = %main_bb1091
  %"2412" = load i32* @"'pended", align 4
  %"2413" = icmp eq i32 %"2412", 0
  br i1 %"2413", label %main_bb1093, label %main_bb1094

main_bb1093:                                      ; preds = %main_bb1092
  store i32 1, i32* @"'pended", align 4
  br label %main_bb1095

main_bb1094:                                      ; preds = %main_bb1092
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_bb1095:                                      ; preds = %main_bb1093, %main_bb1091
  %"2414" = load i32* @"'myStatus", align 4
  %"2415" = icmp sge i32 %"2414", 0
  br i1 %"2415", label %main_bb1096, label %main_HPCdrCompletion.exit.i.i.i13.i

main_bb1096:                                      ; preds = %main_bb1095
  %"2416" = call i32 @__VERIFIER_nondet_int() #5
  br label %main_HPCdrCompletion.exit.i.i.i13.i

main_HPCdrCompletion.exit.i.i.i13.i:              ; preds = %main_bb1096, %main_bb1095
  %"2417" = load i32* @"'myStatus", align 4
  br label %main_bb1099

main_bb1097:                                      ; preds = %main_bb1090
  %"2418" = load i32* @"'routine", align 4
  %"2419" = icmp eq i32 %"2418", 1
  br i1 %"2419", label %main_bb1098, label %main_bb1099

main_bb1098:                                      ; preds = %main_bb1097
  %"2420" = call i32 @__VERIFIER_nondet_int() #5
  store i32 1, i32* @"'setEventCalled", align 4
  br label %main_bb1099

main_bb1099:                                      ; preds = %main_bb1098, %main_bb1097, %main_HPCdrCompletion.exit.i.i.i13.i
  %compRetStatus.1.i.i.i14.i = phi i32 [ %"2417", %main_HPCdrCompletion.exit.i.i.i13.i ], [ -1073741802, %main_bb1098 ], [ %"2402", %main_bb1097 ]
  %"2421" = sext i32 %compRetStatus.1.i.i.i14.i to i64
  %"2422" = icmp eq i64 %"2421", -1073741802
  br i1 %"2422", label %main_bb1100, label %main_bb1102

main_bb1100:                                      ; preds = %main_bb1099
  %"2423" = load i32* @"'s", align 4
  %"2424" = load i32* @"'NP", align 4
  %"2425" = icmp eq i32 %"2423", %"2424"
  br i1 %"2425", label %main_stubMoreProcessingRequired.exit.i.i.i15.i, label %main_bb1101

main_stubMoreProcessingRequired.exit.i.i.i15.i:   ; preds = %main_bb1100
  %"2426" = load i32* @"'MPR1", align 4
  store i32 %"2426", i32* @"'s", align 4
  br label %main_bb1102

main_bb1101:                                      ; preds = %main_bb1100
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_bb1102:                                      ; preds = %main_stubMoreProcessingRequired.exit.i.i.i15.i, %main_bb1099, %main_bb1089
  %"2427" = icmp ne i32 %"2403", 0
  br i1 %"2427", label %main_bb1105, label %main_bb1103

main_bb1103:                                      ; preds = %main_bb1102
  %"2428" = call i32 @__VERIFIER_nondet_int() #5
  %"2429" = icmp eq i32 %"2428", 0
  br i1 %"2429", label %main_bb1105, label %main_bb1104

main_bb1104:                                      ; preds = %main_bb1103
  %"2430" = call i32 @__VERIFIER_nondet_int() #5
  %"2431" = icmp eq i32 %"2430", 1
  %..i.i.i16.i = select i1 %"2431", i32 -1073741823, i32 259
  br label %main_bb1105

main_bb1105:                                      ; preds = %main_bb1104, %main_bb1103, %main_bb1102
  %returnVal2.1.i.i.i17.i = phi i32 [ 259, %main_bb1102 ], [ 0, %main_bb1103 ], [ %..i.i.i16.i, %main_bb1104 ]
  %"2432" = load i32* @"'s", align 4
  %"2433" = load i32* @"'NP", align 4
  %"2434" = icmp eq i32 %"2432", %"2433"
  br i1 %"2434", label %main_bb1106, label %main_bb1107

main_bb1106:                                      ; preds = %main_bb1105
  %"2435" = load i32* @"'IPC", align 4
  store i32 %"2435", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i.i17.i, i32* @"'lowerDriverReturn", align 4
  br label %main_CdAudioDeviceControl.exit

main_bb1107:                                      ; preds = %main_bb1105
  %"2436" = load i32* @"'s", align 4
  %"2437" = load i32* @"'MPR1", align 4
  %"2438" = icmp eq i32 %"2436", %"2437"
  br i1 %"2438", label %main_bb1108, label %main_bb1111

main_bb1108:                                      ; preds = %main_bb1107
  %"2439" = icmp eq i32 %returnVal2.1.i.i.i17.i, 259
  br i1 %"2439", label %main_bb1109, label %main_bb1110

main_bb1109:                                      ; preds = %main_bb1108
  %"2440" = load i32* @"'MPR3", align 4
  store i32 %"2440", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i.i17.i, i32* @"'lowerDriverReturn", align 4
  br label %main_CdAudioDeviceControl.exit

main_bb1110:                                      ; preds = %main_bb1108
  %"2441" = load i32* @"'NP", align 4
  store i32 %"2441", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i.i17.i, i32* @"'lowerDriverReturn", align 4
  br label %main_CdAudioDeviceControl.exit

main_bb1111:                                      ; preds = %main_bb1107
  %"2442" = load i32* @"'s", align 4
  %"2443" = load i32* @"'SKIP1", align 4
  %"2444" = icmp eq i32 %"2442", %"2443"
  br i1 %"2444", label %main_bb1112, label %main_bb1113

main_bb1112:                                      ; preds = %main_bb1111
  %"2445" = load i32* @"'SKIP2", align 4
  store i32 %"2445", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i.i17.i, i32* @"'lowerDriverReturn", align 4
  br label %main_CdAudioDeviceControl.exit

main_bb1113:                                      ; preds = %main_bb1111
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_bb1114:                                      ; preds = %main_bb1088
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_LeafBlock68.i.i:                             ; preds = %main_NodeBlock70.i.i
  %SwitchLeaf69.i.i = icmp eq i32 %"2248", 149512
  br i1 %SwitchLeaf69.i.i, label %main_bb1115, label %main_NewDefault.i18.i

main_bb1115:                                      ; preds = %main_LeafBlock68.i.i
  %"2446" = call i32 @__VERIFIER_nondet_int() #5
  %"2447" = call i32 @__VERIFIER_nondet_int() #5
  %"2448" = call i32 @__VERIFIER_nondet_int() #5
  br label %main_bb1116

main_bb1116:                                      ; preds = %main_bb1115, %main_LeafBlock64.i.i, %main_bb1075, %main_bb1068, %main_LeafBlock56.i.i, %main_bb1067, %main_bb1066, %main_LeafBlock46.i.i, %main_bb1062, %main_bb1050, %main_bb1049, %main_CdAudioIsPlayActive.exit.i10.i, %main_bb1033
  %status.4.i.i = phi i32 [ -1073741670, %main_bb1067 ], [ -1073741670, %main_bb1062 ], [ -1073741670, %main_bb1115 ], [ -1073741789, %main_bb1033 ], [ -2147483631, %main_CdAudioIsPlayActive.exit.i10.i ], [ -1073741820, %main_bb1066 ], [ -1073741820, %main_bb1049 ], [ -1073741670, %main_bb1050 ], [ -1073741789, %main_bb1068 ], [ -1073741670, %main_bb1075 ], [ -1073741808, %main_LeafBlock46.i.i ], [ -1073741808, %main_LeafBlock56.i.i ], [ -1073741808, %main_LeafBlock64.i.i ]
  store i32 %status.4.i.i, i32* @"'myStatus", align 4
  %"2449" = load i32* @"'s", align 4
  %"2450" = load i32* @"'NP", align 4
  %"2451" = icmp eq i32 %"2449", %"2450"
  br i1 %"2451", label %main_IofCompleteRequest.exit34.i.i, label %main_bb1117

main_IofCompleteRequest.exit34.i.i:               ; preds = %main_bb1116
  %"2452" = load i32* @"'DC", align 4
  store i32 %"2452", i32* @"'s", align 4
  br label %main_CdAudioDeviceControl.exit

main_bb1117:                                      ; preds = %main_bb1116
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_NewDefault.i18.i:                            ; preds = %main_LeafBlock68.i.i, %main_LeafBlock66.i.i, %main_LeafBlock64.i.i, %main_LeafBlock58.i.i, %main_LeafBlock56.i.i, %main_LeafBlock54.i.i, %main_LeafBlock46.i.i, %main_LeafBlock44.i.i, %main_LeafBlock42.i.i, %main_LeafBlock38.i.i, %main_LeafBlock36.i.i, %main_LeafBlock.i2.i
  %"2453" = call i32 @__VERIFIER_nondet_int() #5
  %"2454" = call i32 @__VERIFIER_nondet_int() #5
  %"2455" = call i32 @__VERIFIER_nondet_int() #5
  %"2456" = load i32* @"'s", align 4
  %"2457" = load i32* @"'NP", align 4
  %"2458" = icmp eq i32 %"2456", %"2457"
  br i1 %"2458", label %main_bb1118, label %main_bb1143

main_bb1118:                                      ; preds = %main_NewDefault.i18.i
  %"2459" = load i32* @"'SKIP1", align 4
  store i32 %"2459", i32* @"'s", align 4
  %"2460" = call i32 @__kittel_nondef.0() #5
  %"2461" = call i32 @__VERIFIER_nondet_int() #5
  %"2462" = call i32 @__VERIFIER_nondet_int() #5
  %"2463" = load i32* @"'compRegistered", align 4
  %"2464" = icmp ne i32 %"2463", 0
  br i1 %"2464", label %main_bb1119, label %main_bb1131

main_bb1119:                                      ; preds = %main_bb1118
  %"2465" = load i32* @"'routine", align 4
  %"2466" = icmp eq i32 %"2465", 0
  br i1 %"2466", label %main_bb1120, label %main_bb1126

main_bb1120:                                      ; preds = %main_bb1119
  %"2467" = call i32 @__VERIFIER_nondet_int() #5
  %"2468" = call i32 @__VERIFIER_nondet_int() #5
  %"2469" = icmp ne i32 %"2467", 0
  br i1 %"2469", label %main_bb1121, label %main_bb1124

main_bb1121:                                      ; preds = %main_bb1120
  %"2470" = load i32* @"'pended", align 4
  %"2471" = icmp eq i32 %"2470", 0
  br i1 %"2471", label %main_bb1122, label %main_bb1123

main_bb1122:                                      ; preds = %main_bb1121
  store i32 1, i32* @"'pended", align 4
  br label %main_bb1124

main_bb1123:                                      ; preds = %main_bb1121
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_bb1124:                                      ; preds = %main_bb1122, %main_bb1120
  %"2472" = load i32* @"'myStatus", align 4
  %"2473" = icmp sge i32 %"2472", 0
  br i1 %"2473", label %main_bb1125, label %main_HPCdrCompletion.exit.i.i28.i.i

main_bb1125:                                      ; preds = %main_bb1124
  %"2474" = call i32 @__VERIFIER_nondet_int() #5
  br label %main_HPCdrCompletion.exit.i.i28.i.i

main_HPCdrCompletion.exit.i.i28.i.i:              ; preds = %main_bb1125, %main_bb1124
  %"2475" = load i32* @"'myStatus", align 4
  br label %main_bb1128

main_bb1126:                                      ; preds = %main_bb1119
  %"2476" = load i32* @"'routine", align 4
  %"2477" = icmp eq i32 %"2476", 1
  br i1 %"2477", label %main_bb1127, label %main_bb1128

main_bb1127:                                      ; preds = %main_bb1126
  %"2478" = call i32 @__VERIFIER_nondet_int() #5
  store i32 1, i32* @"'setEventCalled", align 4
  br label %main_bb1128

main_bb1128:                                      ; preds = %main_bb1127, %main_bb1126, %main_HPCdrCompletion.exit.i.i28.i.i
  %compRetStatus.1.i.i29.i.i = phi i32 [ %"2475", %main_HPCdrCompletion.exit.i.i28.i.i ], [ -1073741802, %main_bb1127 ], [ %"2460", %main_bb1126 ]
  %"2479" = sext i32 %compRetStatus.1.i.i29.i.i to i64
  %"2480" = icmp eq i64 %"2479", -1073741802
  br i1 %"2480", label %main_bb1129, label %main_bb1131

main_bb1129:                                      ; preds = %main_bb1128
  %"2481" = load i32* @"'s", align 4
  %"2482" = load i32* @"'NP", align 4
  %"2483" = icmp eq i32 %"2481", %"2482"
  br i1 %"2483", label %main_stubMoreProcessingRequired.exit.i.i30.i.i, label %main_bb1130

main_stubMoreProcessingRequired.exit.i.i30.i.i:   ; preds = %main_bb1129
  %"2484" = load i32* @"'MPR1", align 4
  store i32 %"2484", i32* @"'s", align 4
  br label %main_bb1131

main_bb1130:                                      ; preds = %main_bb1129
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_bb1131:                                      ; preds = %main_stubMoreProcessingRequired.exit.i.i30.i.i, %main_bb1128, %main_bb1118
  %"2485" = icmp ne i32 %"2461", 0
  br i1 %"2485", label %main_bb1134, label %main_bb1132

main_bb1132:                                      ; preds = %main_bb1131
  %"2486" = call i32 @__VERIFIER_nondet_int() #5
  %"2487" = icmp eq i32 %"2486", 0
  br i1 %"2487", label %main_bb1134, label %main_bb1133

main_bb1133:                                      ; preds = %main_bb1132
  %"2488" = call i32 @__VERIFIER_nondet_int() #5
  %"2489" = icmp eq i32 %"2488", 1
  %..i.i31.i.i = select i1 %"2489", i32 -1073741823, i32 259
  br label %main_bb1134

main_bb1134:                                      ; preds = %main_bb1133, %main_bb1132, %main_bb1131
  %returnVal2.1.i.i32.i.i = phi i32 [ 259, %main_bb1131 ], [ 0, %main_bb1132 ], [ %..i.i31.i.i, %main_bb1133 ]
  %"2490" = load i32* @"'s", align 4
  %"2491" = load i32* @"'NP", align 4
  %"2492" = icmp eq i32 %"2490", %"2491"
  br i1 %"2492", label %main_bb1135, label %main_bb1136

main_bb1135:                                      ; preds = %main_bb1134
  %"2493" = load i32* @"'IPC", align 4
  store i32 %"2493", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i32.i.i, i32* @"'lowerDriverReturn", align 4
  br label %main_CdAudioDeviceControl.exit

main_bb1136:                                      ; preds = %main_bb1134
  %"2494" = load i32* @"'s", align 4
  %"2495" = load i32* @"'MPR1", align 4
  %"2496" = icmp eq i32 %"2494", %"2495"
  br i1 %"2496", label %main_bb1137, label %main_bb1140

main_bb1137:                                      ; preds = %main_bb1136
  %"2497" = icmp eq i32 %returnVal2.1.i.i32.i.i, 259
  br i1 %"2497", label %main_bb1138, label %main_bb1139

main_bb1138:                                      ; preds = %main_bb1137
  %"2498" = load i32* @"'MPR3", align 4
  store i32 %"2498", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i32.i.i, i32* @"'lowerDriverReturn", align 4
  br label %main_CdAudioDeviceControl.exit

main_bb1139:                                      ; preds = %main_bb1137
  %"2499" = load i32* @"'NP", align 4
  store i32 %"2499", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i32.i.i, i32* @"'lowerDriverReturn", align 4
  br label %main_CdAudioDeviceControl.exit

main_bb1140:                                      ; preds = %main_bb1136
  %"2500" = load i32* @"'s", align 4
  %"2501" = load i32* @"'SKIP1", align 4
  %"2502" = icmp eq i32 %"2500", %"2501"
  br i1 %"2502", label %main_bb1141, label %main_bb1142

main_bb1141:                                      ; preds = %main_bb1140
  %"2503" = load i32* @"'SKIP2", align 4
  store i32 %"2503", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i32.i.i, i32* @"'lowerDriverReturn", align 4
  br label %main_CdAudioDeviceControl.exit

main_bb1142:                                      ; preds = %main_bb1140
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_bb1143:                                      ; preds = %main_NewDefault.i18.i
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_LeafBlock41.i:                               ; preds = %main_NodeBlock43.i
  %SwitchLeaf42.i = icmp eq i32 %"1971", 7
  br i1 %SwitchLeaf42.i, label %main_bb1144, label %main_NewDefault.i

main_bb1144:                                      ; preds = %main_LeafBlock41.i
  %"2504" = call i32 @__VERIFIER_nondet_int() #5
  %"2505" = call i32 @__VERIFIER_nondet_int() #5
  %"2506" = icmp eq i32 %"2504", 147512
  br i1 %"2506", label %main_bb1145, label %main_bb1174

main_bb1145:                                      ; preds = %main_bb1144
  %"2507" = load i32* @"'s", align 4
  %"2508" = load i32* @"'NP", align 4
  %"2509" = icmp ne i32 %"2507", %"2508"
  br i1 %"2509", label %main_bb1146, label %main_bb1147

main_bb1146:                                      ; preds = %main_bb1145
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_bb1147:                                      ; preds = %main_bb1145
  %"2510" = load i32* @"'compRegistered", align 4
  %"2511" = icmp ne i32 %"2510", 0
  br i1 %"2511", label %main_bb1148, label %main_bb1149

main_bb1148:                                      ; preds = %main_bb1147
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_bb1149:                                      ; preds = %main_bb1147
  store i32 1, i32* @"'compRegistered", align 4
  store i32 0, i32* @"'routine", align 4
  %"2512" = call i32 @__kittel_nondef.0() #5
  %"2513" = call i32 @__VERIFIER_nondet_int() #5
  %"2514" = call i32 @__VERIFIER_nondet_int() #5
  %"2515" = load i32* @"'compRegistered", align 4
  %"2516" = icmp ne i32 %"2515", 0
  br i1 %"2516", label %main_bb1150, label %main_bb1162

main_bb1150:                                      ; preds = %main_bb1149
  %"2517" = load i32* @"'routine", align 4
  %"2518" = icmp eq i32 %"2517", 0
  br i1 %"2518", label %main_bb1151, label %main_bb1157

main_bb1151:                                      ; preds = %main_bb1150
  %"2519" = call i32 @__VERIFIER_nondet_int() #5
  %"2520" = call i32 @__VERIFIER_nondet_int() #5
  %"2521" = icmp ne i32 %"2519", 0
  br i1 %"2521", label %main_bb1152, label %main_bb1155

main_bb1152:                                      ; preds = %main_bb1151
  %"2522" = load i32* @"'pended", align 4
  %"2523" = icmp eq i32 %"2522", 0
  br i1 %"2523", label %main_bb1153, label %main_bb1154

main_bb1153:                                      ; preds = %main_bb1152
  store i32 1, i32* @"'pended", align 4
  br label %main_bb1155

main_bb1154:                                      ; preds = %main_bb1152
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_bb1155:                                      ; preds = %main_bb1153, %main_bb1151
  %"2524" = load i32* @"'myStatus", align 4
  %"2525" = icmp sge i32 %"2524", 0
  br i1 %"2525", label %main_bb1156, label %main_HPCdrCompletion.exit.i.i.i

main_bb1156:                                      ; preds = %main_bb1155
  %"2526" = call i32 @__VERIFIER_nondet_int() #5
  br label %main_HPCdrCompletion.exit.i.i.i

main_HPCdrCompletion.exit.i.i.i:                  ; preds = %main_bb1156, %main_bb1155
  %"2527" = load i32* @"'myStatus", align 4
  br label %main_bb1159

main_bb1157:                                      ; preds = %main_bb1150
  %"2528" = load i32* @"'routine", align 4
  %"2529" = icmp eq i32 %"2528", 1
  br i1 %"2529", label %main_bb1158, label %main_bb1159

main_bb1158:                                      ; preds = %main_bb1157
  %"2530" = call i32 @__VERIFIER_nondet_int() #5
  store i32 1, i32* @"'setEventCalled", align 4
  br label %main_bb1159

main_bb1159:                                      ; preds = %main_bb1158, %main_bb1157, %main_HPCdrCompletion.exit.i.i.i
  %compRetStatus.1.i.i.i = phi i32 [ %"2527", %main_HPCdrCompletion.exit.i.i.i ], [ -1073741802, %main_bb1158 ], [ %"2512", %main_bb1157 ]
  %"2531" = sext i32 %compRetStatus.1.i.i.i to i64
  %"2532" = icmp eq i64 %"2531", -1073741802
  br i1 %"2532", label %main_bb1160, label %main_bb1162

main_bb1160:                                      ; preds = %main_bb1159
  %"2533" = load i32* @"'s", align 4
  %"2534" = load i32* @"'NP", align 4
  %"2535" = icmp eq i32 %"2533", %"2534"
  br i1 %"2535", label %main_stubMoreProcessingRequired.exit.i.i.i, label %main_bb1161

main_stubMoreProcessingRequired.exit.i.i.i:       ; preds = %main_bb1160
  %"2536" = load i32* @"'MPR1", align 4
  store i32 %"2536", i32* @"'s", align 4
  br label %main_bb1162

main_bb1161:                                      ; preds = %main_bb1160
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_bb1162:                                      ; preds = %main_stubMoreProcessingRequired.exit.i.i.i, %main_bb1159, %main_bb1149
  %"2537" = icmp ne i32 %"2513", 0
  br i1 %"2537", label %main_bb1165, label %main_bb1163

main_bb1163:                                      ; preds = %main_bb1162
  %"2538" = call i32 @__VERIFIER_nondet_int() #5
  %"2539" = icmp eq i32 %"2538", 0
  br i1 %"2539", label %main_bb1165, label %main_bb1164

main_bb1164:                                      ; preds = %main_bb1163
  %"2540" = call i32 @__VERIFIER_nondet_int() #5
  %"2541" = icmp eq i32 %"2540", 1
  %..i.i27.i = select i1 %"2541", i32 -1073741823, i32 259
  br label %main_bb1165

main_bb1165:                                      ; preds = %main_bb1164, %main_bb1163, %main_bb1162
  %returnVal2.1.i.i.i = phi i32 [ 259, %main_bb1162 ], [ 0, %main_bb1163 ], [ %..i.i27.i, %main_bb1164 ]
  %"2542" = load i32* @"'s", align 4
  %"2543" = load i32* @"'NP", align 4
  %"2544" = icmp eq i32 %"2542", %"2543"
  br i1 %"2544", label %main_bb1166, label %main_bb1167

main_bb1166:                                      ; preds = %main_bb1165
  %"2545" = load i32* @"'IPC", align 4
  store i32 %"2545", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i.i, i32* @"'lowerDriverReturn", align 4
  br label %main_CdAudioDeviceControl.exit

main_bb1167:                                      ; preds = %main_bb1165
  %"2546" = load i32* @"'s", align 4
  %"2547" = load i32* @"'MPR1", align 4
  %"2548" = icmp eq i32 %"2546", %"2547"
  br i1 %"2548", label %main_bb1168, label %main_bb1171

main_bb1168:                                      ; preds = %main_bb1167
  %"2549" = icmp eq i32 %returnVal2.1.i.i.i, 259
  br i1 %"2549", label %main_bb1169, label %main_bb1170

main_bb1169:                                      ; preds = %main_bb1168
  %"2550" = load i32* @"'MPR3", align 4
  store i32 %"2550", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i.i, i32* @"'lowerDriverReturn", align 4
  br label %main_CdAudioDeviceControl.exit

main_bb1170:                                      ; preds = %main_bb1168
  %"2551" = load i32* @"'NP", align 4
  store i32 %"2551", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i.i, i32* @"'lowerDriverReturn", align 4
  br label %main_CdAudioDeviceControl.exit

main_bb1171:                                      ; preds = %main_bb1167
  %"2552" = load i32* @"'s", align 4
  %"2553" = load i32* @"'SKIP1", align 4
  %"2554" = icmp eq i32 %"2552", %"2553"
  br i1 %"2554", label %main_bb1172, label %main_bb1173

main_bb1172:                                      ; preds = %main_bb1171
  %"2555" = load i32* @"'SKIP2", align 4
  store i32 %"2555", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i.i, i32* @"'lowerDriverReturn", align 4
  br label %main_CdAudioDeviceControl.exit

main_bb1173:                                      ; preds = %main_bb1171
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_bb1174:                                      ; preds = %main_bb1144
  %"2556" = call i32 @__VERIFIER_nondet_int() #5
  %"2557" = call i32 @__VERIFIER_nondet_int() #5
  %"2558" = call i32 @__VERIFIER_nondet_int() #5
  %"2559" = load i32* @"'s", align 4
  %"2560" = load i32* @"'NP", align 4
  %"2561" = icmp eq i32 %"2559", %"2560"
  br i1 %"2561", label %main_bb1175, label %main_bb1200

main_bb1175:                                      ; preds = %main_bb1174
  %"2562" = load i32* @"'SKIP1", align 4
  store i32 %"2562", i32* @"'s", align 4
  %"2563" = call i32 @__kittel_nondef.0() #5
  %"2564" = call i32 @__VERIFIER_nondet_int() #5
  %"2565" = call i32 @__VERIFIER_nondet_int() #5
  %"2566" = load i32* @"'compRegistered", align 4
  %"2567" = icmp ne i32 %"2566", 0
  br i1 %"2567", label %main_bb1176, label %main_bb1188

main_bb1176:                                      ; preds = %main_bb1175
  %"2568" = load i32* @"'routine", align 4
  %"2569" = icmp eq i32 %"2568", 0
  br i1 %"2569", label %main_bb1177, label %main_bb1183

main_bb1177:                                      ; preds = %main_bb1176
  %"2570" = call i32 @__VERIFIER_nondet_int() #5
  %"2571" = call i32 @__VERIFIER_nondet_int() #5
  %"2572" = icmp ne i32 %"2570", 0
  br i1 %"2572", label %main_bb1178, label %main_bb1181

main_bb1178:                                      ; preds = %main_bb1177
  %"2573" = load i32* @"'pended", align 4
  %"2574" = icmp eq i32 %"2573", 0
  br i1 %"2574", label %main_bb1179, label %main_bb1180

main_bb1179:                                      ; preds = %main_bb1178
  store i32 1, i32* @"'pended", align 4
  br label %main_bb1181

main_bb1180:                                      ; preds = %main_bb1178
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_bb1181:                                      ; preds = %main_bb1179, %main_bb1177
  %"2575" = load i32* @"'myStatus", align 4
  %"2576" = icmp sge i32 %"2575", 0
  br i1 %"2576", label %main_bb1182, label %main_HPCdrCompletion.exit.i.i.i28.i

main_bb1182:                                      ; preds = %main_bb1181
  %"2577" = call i32 @__VERIFIER_nondet_int() #5
  br label %main_HPCdrCompletion.exit.i.i.i28.i

main_HPCdrCompletion.exit.i.i.i28.i:              ; preds = %main_bb1182, %main_bb1181
  %"2578" = load i32* @"'myStatus", align 4
  br label %main_bb1185

main_bb1183:                                      ; preds = %main_bb1176
  %"2579" = load i32* @"'routine", align 4
  %"2580" = icmp eq i32 %"2579", 1
  br i1 %"2580", label %main_bb1184, label %main_bb1185

main_bb1184:                                      ; preds = %main_bb1183
  %"2581" = call i32 @__VERIFIER_nondet_int() #5
  store i32 1, i32* @"'setEventCalled", align 4
  br label %main_bb1185

main_bb1185:                                      ; preds = %main_bb1184, %main_bb1183, %main_HPCdrCompletion.exit.i.i.i28.i
  %compRetStatus.1.i.i.i29.i = phi i32 [ %"2578", %main_HPCdrCompletion.exit.i.i.i28.i ], [ -1073741802, %main_bb1184 ], [ %"2563", %main_bb1183 ]
  %"2582" = sext i32 %compRetStatus.1.i.i.i29.i to i64
  %"2583" = icmp eq i64 %"2582", -1073741802
  br i1 %"2583", label %main_bb1186, label %main_bb1188

main_bb1186:                                      ; preds = %main_bb1185
  %"2584" = load i32* @"'s", align 4
  %"2585" = load i32* @"'NP", align 4
  %"2586" = icmp eq i32 %"2584", %"2585"
  br i1 %"2586", label %main_stubMoreProcessingRequired.exit.i.i.i30.i, label %main_bb1187

main_stubMoreProcessingRequired.exit.i.i.i30.i:   ; preds = %main_bb1186
  %"2587" = load i32* @"'MPR1", align 4
  store i32 %"2587", i32* @"'s", align 4
  br label %main_bb1188

main_bb1187:                                      ; preds = %main_bb1186
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_bb1188:                                      ; preds = %main_stubMoreProcessingRequired.exit.i.i.i30.i, %main_bb1185, %main_bb1175
  %"2588" = icmp ne i32 %"2564", 0
  br i1 %"2588", label %main_bb1191, label %main_bb1189

main_bb1189:                                      ; preds = %main_bb1188
  %"2589" = call i32 @__VERIFIER_nondet_int() #5
  %"2590" = icmp eq i32 %"2589", 0
  br i1 %"2590", label %main_bb1191, label %main_bb1190

main_bb1190:                                      ; preds = %main_bb1189
  %"2591" = call i32 @__VERIFIER_nondet_int() #5
  %"2592" = icmp eq i32 %"2591", 1
  %..i.i.i31.i = select i1 %"2592", i32 -1073741823, i32 259
  br label %main_bb1191

main_bb1191:                                      ; preds = %main_bb1190, %main_bb1189, %main_bb1188
  %returnVal2.1.i.i.i32.i = phi i32 [ 259, %main_bb1188 ], [ 0, %main_bb1189 ], [ %..i.i.i31.i, %main_bb1190 ]
  %"2593" = load i32* @"'s", align 4
  %"2594" = load i32* @"'NP", align 4
  %"2595" = icmp eq i32 %"2593", %"2594"
  br i1 %"2595", label %main_bb1192, label %main_bb1193

main_bb1192:                                      ; preds = %main_bb1191
  %"2596" = load i32* @"'IPC", align 4
  store i32 %"2596", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i.i32.i, i32* @"'lowerDriverReturn", align 4
  br label %main_CdAudioDeviceControl.exit

main_bb1193:                                      ; preds = %main_bb1191
  %"2597" = load i32* @"'s", align 4
  %"2598" = load i32* @"'MPR1", align 4
  %"2599" = icmp eq i32 %"2597", %"2598"
  br i1 %"2599", label %main_bb1194, label %main_bb1197

main_bb1194:                                      ; preds = %main_bb1193
  %"2600" = icmp eq i32 %returnVal2.1.i.i.i32.i, 259
  br i1 %"2600", label %main_bb1195, label %main_bb1196

main_bb1195:                                      ; preds = %main_bb1194
  %"2601" = load i32* @"'MPR3", align 4
  store i32 %"2601", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i.i32.i, i32* @"'lowerDriverReturn", align 4
  br label %main_CdAudioDeviceControl.exit

main_bb1196:                                      ; preds = %main_bb1194
  %"2602" = load i32* @"'NP", align 4
  store i32 %"2602", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i.i32.i, i32* @"'lowerDriverReturn", align 4
  br label %main_CdAudioDeviceControl.exit

main_bb1197:                                      ; preds = %main_bb1193
  %"2603" = load i32* @"'s", align 4
  %"2604" = load i32* @"'SKIP1", align 4
  %"2605" = icmp eq i32 %"2603", %"2604"
  br i1 %"2605", label %main_bb1198, label %main_bb1199

main_bb1198:                                      ; preds = %main_bb1197
  %"2606" = load i32* @"'SKIP2", align 4
  store i32 %"2606", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i.i32.i, i32* @"'lowerDriverReturn", align 4
  br label %main_CdAudioDeviceControl.exit

main_bb1199:                                      ; preds = %main_bb1197
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_bb1200:                                      ; preds = %main_bb1174
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_NewDefault.i:                                ; preds = %main_LeafBlock41.i, %main_LeafBlock39.i, %main_LeafBlock.i
  %"2607" = call i32 @__VERIFIER_nondet_int() #5
  %"2608" = call i32 @__VERIFIER_nondet_int() #5
  %"2609" = call i32 @__VERIFIER_nondet_int() #5
  %"2610" = load i32* @"'s", align 4
  %"2611" = load i32* @"'NP", align 4
  %"2612" = icmp eq i32 %"2610", %"2611"
  br i1 %"2612", label %main_bb1201, label %main_bb1226

main_bb1201:                                      ; preds = %main_NewDefault.i
  %"2613" = load i32* @"'SKIP1", align 4
  store i32 %"2613", i32* @"'s", align 4
  %"2614" = call i32 @__kittel_nondef.0() #5
  %"2615" = call i32 @__VERIFIER_nondet_int() #5
  %"2616" = call i32 @__VERIFIER_nondet_int() #5
  %"2617" = load i32* @"'compRegistered", align 4
  %"2618" = icmp ne i32 %"2617", 0
  br i1 %"2618", label %main_bb1202, label %main_bb1214

main_bb1202:                                      ; preds = %main_bb1201
  %"2619" = load i32* @"'routine", align 4
  %"2620" = icmp eq i32 %"2619", 0
  br i1 %"2620", label %main_bb1203, label %main_bb1209

main_bb1203:                                      ; preds = %main_bb1202
  %"2621" = call i32 @__VERIFIER_nondet_int() #5
  %"2622" = call i32 @__VERIFIER_nondet_int() #5
  %"2623" = icmp ne i32 %"2621", 0
  br i1 %"2623", label %main_bb1204, label %main_bb1207

main_bb1204:                                      ; preds = %main_bb1203
  %"2624" = load i32* @"'pended", align 4
  %"2625" = icmp eq i32 %"2624", 0
  br i1 %"2625", label %main_bb1205, label %main_bb1206

main_bb1205:                                      ; preds = %main_bb1204
  store i32 1, i32* @"'pended", align 4
  br label %main_bb1207

main_bb1206:                                      ; preds = %main_bb1204
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_bb1207:                                      ; preds = %main_bb1205, %main_bb1203
  %"2626" = load i32* @"'myStatus", align 4
  %"2627" = icmp sge i32 %"2626", 0
  br i1 %"2627", label %main_bb1208, label %main_HPCdrCompletion.exit.i.i34.i

main_bb1208:                                      ; preds = %main_bb1207
  %"2628" = call i32 @__VERIFIER_nondet_int() #5
  br label %main_HPCdrCompletion.exit.i.i34.i

main_HPCdrCompletion.exit.i.i34.i:                ; preds = %main_bb1208, %main_bb1207
  %"2629" = load i32* @"'myStatus", align 4
  br label %main_bb1211

main_bb1209:                                      ; preds = %main_bb1202
  %"2630" = load i32* @"'routine", align 4
  %"2631" = icmp eq i32 %"2630", 1
  br i1 %"2631", label %main_bb1210, label %main_bb1211

main_bb1210:                                      ; preds = %main_bb1209
  %"2632" = call i32 @__VERIFIER_nondet_int() #5
  store i32 1, i32* @"'setEventCalled", align 4
  br label %main_bb1211

main_bb1211:                                      ; preds = %main_bb1210, %main_bb1209, %main_HPCdrCompletion.exit.i.i34.i
  %compRetStatus.1.i.i35.i = phi i32 [ %"2629", %main_HPCdrCompletion.exit.i.i34.i ], [ -1073741802, %main_bb1210 ], [ %"2614", %main_bb1209 ]
  %"2633" = sext i32 %compRetStatus.1.i.i35.i to i64
  %"2634" = icmp eq i64 %"2633", -1073741802
  br i1 %"2634", label %main_bb1212, label %main_bb1214

main_bb1212:                                      ; preds = %main_bb1211
  %"2635" = load i32* @"'s", align 4
  %"2636" = load i32* @"'NP", align 4
  %"2637" = icmp eq i32 %"2635", %"2636"
  br i1 %"2637", label %main_stubMoreProcessingRequired.exit.i.i36.i, label %main_bb1213

main_stubMoreProcessingRequired.exit.i.i36.i:     ; preds = %main_bb1212
  %"2638" = load i32* @"'MPR1", align 4
  store i32 %"2638", i32* @"'s", align 4
  br label %main_bb1214

main_bb1213:                                      ; preds = %main_bb1212
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_bb1214:                                      ; preds = %main_stubMoreProcessingRequired.exit.i.i36.i, %main_bb1211, %main_bb1201
  %"2639" = icmp ne i32 %"2615", 0
  br i1 %"2639", label %main_bb1217, label %main_bb1215

main_bb1215:                                      ; preds = %main_bb1214
  %"2640" = call i32 @__VERIFIER_nondet_int() #5
  %"2641" = icmp eq i32 %"2640", 0
  br i1 %"2641", label %main_bb1217, label %main_bb1216

main_bb1216:                                      ; preds = %main_bb1215
  %"2642" = call i32 @__VERIFIER_nondet_int() #5
  %"2643" = icmp eq i32 %"2642", 1
  %..i.i37.i = select i1 %"2643", i32 -1073741823, i32 259
  br label %main_bb1217

main_bb1217:                                      ; preds = %main_bb1216, %main_bb1215, %main_bb1214
  %returnVal2.1.i.i38.i = phi i32 [ 259, %main_bb1214 ], [ 0, %main_bb1215 ], [ %..i.i37.i, %main_bb1216 ]
  %"2644" = load i32* @"'s", align 4
  %"2645" = load i32* @"'NP", align 4
  %"2646" = icmp eq i32 %"2644", %"2645"
  br i1 %"2646", label %main_bb1218, label %main_bb1219

main_bb1218:                                      ; preds = %main_bb1217
  %"2647" = load i32* @"'IPC", align 4
  store i32 %"2647", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i38.i, i32* @"'lowerDriverReturn", align 4
  br label %main_CdAudioDeviceControl.exit

main_bb1219:                                      ; preds = %main_bb1217
  %"2648" = load i32* @"'s", align 4
  %"2649" = load i32* @"'MPR1", align 4
  %"2650" = icmp eq i32 %"2648", %"2649"
  br i1 %"2650", label %main_bb1220, label %main_bb1223

main_bb1220:                                      ; preds = %main_bb1219
  %"2651" = icmp eq i32 %returnVal2.1.i.i38.i, 259
  br i1 %"2651", label %main_bb1221, label %main_bb1222

main_bb1221:                                      ; preds = %main_bb1220
  %"2652" = load i32* @"'MPR3", align 4
  store i32 %"2652", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i38.i, i32* @"'lowerDriverReturn", align 4
  br label %main_CdAudioDeviceControl.exit

main_bb1222:                                      ; preds = %main_bb1220
  %"2653" = load i32* @"'NP", align 4
  store i32 %"2653", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i38.i, i32* @"'lowerDriverReturn", align 4
  br label %main_CdAudioDeviceControl.exit

main_bb1223:                                      ; preds = %main_bb1219
  %"2654" = load i32* @"'s", align 4
  %"2655" = load i32* @"'SKIP1", align 4
  %"2656" = icmp eq i32 %"2654", %"2655"
  br i1 %"2656", label %main_bb1224, label %main_bb1225

main_bb1224:                                      ; preds = %main_bb1223
  %"2657" = load i32* @"'SKIP2", align 4
  store i32 %"2657", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i38.i, i32* @"'lowerDriverReturn", align 4
  br label %main_CdAudioDeviceControl.exit

main_bb1225:                                      ; preds = %main_bb1223
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_bb1226:                                      ; preds = %main_NewDefault.i
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_bb1227:                                      ; preds = %main_bb919
  %"2658" = call i32 @__VERIFIER_nondet_int()
  %"2659" = icmp eq i32 %"2658", 3
  br i1 %"2659", label %main_bb1228, label %main_bb1360

main_bb1228:                                      ; preds = %main_bb1227
  %"2660" = call i32 @__VERIFIER_nondet_int() #5
  %"2661" = call i32 @__VERIFIER_nondet_int() #5
  %"2662" = call i32 @__VERIFIER_nondet_int() #5
  %"2663" = call i32 @__VERIFIER_nondet_int() #5
  %"2664" = call i32 @__VERIFIER_nondet_int() #5
  %"2665" = call i32 @__VERIFIER_nondet_int() #5
  %Pivot.i2 = icmp slt i32 %"2661", 22
  br i1 %Pivot.i2, label %main_LeafBlock.i5, label %main_LeafBlock16.i

main_LeafBlock.i5:                                ; preds = %main_bb1228
  %SwitchLeaf.i4 = icmp eq i32 %"2661", 0
  br i1 %SwitchLeaf.i4, label %main_bb1229, label %main_NewDefault.i18

main_bb1229:                                      ; preds = %main_LeafBlock.i5
  %"2666" = call i32 @__VERIFIER_nondet_int() #5
  %"2667" = call i32 @__VERIFIER_nondet_int() #5
  %"2668" = call i32 @__VERIFIER_nondet_int() #5
  %"2669" = call i32 @__VERIFIER_nondet_int() #5
  %"2670" = call i32 @__VERIFIER_nondet_int() #5
  %"2671" = call i32 @__VERIFIER_nondet_int() #5
  %"2672" = call i32 @__VERIFIER_nondet_int() #5
  %"2673" = load i32* @"'s", align 4
  %"2674" = load i32* @"'NP", align 4
  %"2675" = icmp ne i32 %"2673", %"2674"
  br i1 %"2675", label %main_bb1230, label %main_bb1231

main_bb1230:                                      ; preds = %main_bb1229
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_bb1231:                                      ; preds = %main_bb1229
  %"2676" = load i32* @"'compRegistered", align 4
  %"2677" = icmp ne i32 %"2676", 0
  br i1 %"2677", label %main_bb1232, label %main_bb1233

main_bb1232:                                      ; preds = %main_bb1231
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_bb1233:                                      ; preds = %main_bb1231
  store i32 1, i32* @"'compRegistered", align 4
  store i32 1, i32* @"'routine", align 4
  %"2678" = call i32 @__kittel_nondef.0() #5
  %"2679" = call i32 @__VERIFIER_nondet_int() #5
  %"2680" = call i32 @__VERIFIER_nondet_int() #5
  %"2681" = load i32* @"'compRegistered", align 4
  %"2682" = icmp ne i32 %"2681", 0
  br i1 %"2682", label %main_bb1234, label %main_bb1246

main_bb1234:                                      ; preds = %main_bb1233
  %"2683" = load i32* @"'routine", align 4
  %"2684" = icmp eq i32 %"2683", 0
  br i1 %"2684", label %main_bb1235, label %main_bb1241

main_bb1235:                                      ; preds = %main_bb1234
  %"2685" = call i32 @__VERIFIER_nondet_int() #5
  %"2686" = call i32 @__VERIFIER_nondet_int() #5
  %"2687" = icmp ne i32 %"2685", 0
  br i1 %"2687", label %main_bb1236, label %main_bb1239

main_bb1236:                                      ; preds = %main_bb1235
  %"2688" = load i32* @"'pended", align 4
  %"2689" = icmp eq i32 %"2688", 0
  br i1 %"2689", label %main_bb1237, label %main_bb1238

main_bb1237:                                      ; preds = %main_bb1236
  store i32 1, i32* @"'pended", align 4
  br label %main_bb1239

main_bb1238:                                      ; preds = %main_bb1236
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_bb1239:                                      ; preds = %main_bb1237, %main_bb1235
  %"2690" = load i32* @"'myStatus", align 4
  %"2691" = icmp sge i32 %"2690", 0
  br i1 %"2691", label %main_bb1240, label %main_HPCdrCompletion.exit.i.i.i.i6

main_bb1240:                                      ; preds = %main_bb1239
  %"2692" = call i32 @__VERIFIER_nondet_int() #5
  br label %main_HPCdrCompletion.exit.i.i.i.i6

main_HPCdrCompletion.exit.i.i.i.i6:               ; preds = %main_bb1240, %main_bb1239
  %"2693" = load i32* @"'myStatus", align 4
  br label %main_bb1243

main_bb1241:                                      ; preds = %main_bb1234
  %"2694" = load i32* @"'routine", align 4
  %"2695" = icmp eq i32 %"2694", 1
  br i1 %"2695", label %main_bb1242, label %main_bb1243

main_bb1242:                                      ; preds = %main_bb1241
  %"2696" = call i32 @__VERIFIER_nondet_int() #5
  store i32 1, i32* @"'setEventCalled", align 4
  br label %main_bb1243

main_bb1243:                                      ; preds = %main_bb1242, %main_bb1241, %main_HPCdrCompletion.exit.i.i.i.i6
  %compRetStatus.1.i.i.i.i7 = phi i32 [ %"2693", %main_HPCdrCompletion.exit.i.i.i.i6 ], [ -1073741802, %main_bb1242 ], [ %"2678", %main_bb1241 ]
  %"2697" = sext i32 %compRetStatus.1.i.i.i.i7 to i64
  %"2698" = icmp eq i64 %"2697", -1073741802
  br i1 %"2698", label %main_bb1244, label %main_bb1246

main_bb1244:                                      ; preds = %main_bb1243
  %"2699" = load i32* @"'s", align 4
  %"2700" = load i32* @"'NP", align 4
  %"2701" = icmp eq i32 %"2699", %"2700"
  br i1 %"2701", label %main_stubMoreProcessingRequired.exit.i.i.i.i8, label %main_bb1245

main_stubMoreProcessingRequired.exit.i.i.i.i8:    ; preds = %main_bb1244
  %"2702" = load i32* @"'MPR1", align 4
  store i32 %"2702", i32* @"'s", align 4
  br label %main_bb1246

main_bb1245:                                      ; preds = %main_bb1244
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_bb1246:                                      ; preds = %main_stubMoreProcessingRequired.exit.i.i.i.i8, %main_bb1243, %main_bb1233
  %"2703" = icmp ne i32 %"2679", 0
  br i1 %"2703", label %main_bb1249, label %main_bb1247

main_bb1247:                                      ; preds = %main_bb1246
  %"2704" = call i32 @__VERIFIER_nondet_int() #5
  %"2705" = icmp eq i32 %"2704", 0
  br i1 %"2705", label %main_bb1249, label %main_bb1248

main_bb1248:                                      ; preds = %main_bb1247
  %"2706" = call i32 @__VERIFIER_nondet_int() #5
  %"2707" = icmp eq i32 %"2706", 1
  %..i.i.i.i9 = select i1 %"2707", i32 -1073741823, i32 259
  br label %main_bb1249

main_bb1249:                                      ; preds = %main_bb1248, %main_bb1247, %main_bb1246
  %returnVal2.1.i.i.i.i10 = phi i32 [ 259, %main_bb1246 ], [ 0, %main_bb1247 ], [ %..i.i.i.i9, %main_bb1248 ]
  %"2708" = load i32* @"'s", align 4
  %"2709" = load i32* @"'NP", align 4
  %"2710" = icmp eq i32 %"2708", %"2709"
  br i1 %"2710", label %main_bb1250, label %main_bb1251

main_bb1250:                                      ; preds = %main_bb1249
  %"2711" = load i32* @"'IPC", align 4
  store i32 %"2711", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i.i.i10, i32* @"'lowerDriverReturn", align 4
  br label %main_IofCallDriver.exit.i.i.i

main_bb1251:                                      ; preds = %main_bb1249
  %"2712" = load i32* @"'s", align 4
  %"2713" = load i32* @"'MPR1", align 4
  %"2714" = icmp eq i32 %"2712", %"2713"
  br i1 %"2714", label %main_bb1252, label %main_bb1255

main_bb1252:                                      ; preds = %main_bb1251
  %"2715" = icmp eq i32 %returnVal2.1.i.i.i.i10, 259
  br i1 %"2715", label %main_bb1253, label %main_bb1254

main_bb1253:                                      ; preds = %main_bb1252
  %"2716" = load i32* @"'MPR3", align 4
  store i32 %"2716", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i.i.i10, i32* @"'lowerDriverReturn", align 4
  br label %main_IofCallDriver.exit.i.i.i

main_bb1254:                                      ; preds = %main_bb1252
  %"2717" = load i32* @"'NP", align 4
  store i32 %"2717", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i.i.i10, i32* @"'lowerDriverReturn", align 4
  br label %main_IofCallDriver.exit.i.i.i

main_bb1255:                                      ; preds = %main_bb1251
  %"2718" = load i32* @"'s", align 4
  %"2719" = load i32* @"'SKIP1", align 4
  %"2720" = icmp eq i32 %"2718", %"2719"
  br i1 %"2720", label %main_bb1256, label %main_bb1265

main_bb1256:                                      ; preds = %main_bb1255
  %"2721" = load i32* @"'SKIP2", align 4
  store i32 %"2721", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i.i.i10, i32* @"'lowerDriverReturn", align 4
  br label %main_IofCallDriver.exit.i.i.i

main_IofCallDriver.exit.i.i.i:                    ; preds = %main_bb1256, %main_bb1254, %main_bb1253, %main_bb1250
  %"2722" = load i32* @"'s", align 4
  %"2723" = load i32* @"'MPR3", align 4
  %"2724" = icmp eq i32 %"2722", %"2723"
  %"2725" = load i32* @"'setEventCalled", align 4
  %"2726" = icmp eq i32 %"2725", 1
  %or.cond.i.i.i.i11 = and i1 %"2724", %"2726"
  br i1 %or.cond.i.i.i.i11, label %main_bb1257, label %main_bb1258

main_bb1257:                                      ; preds = %main_IofCallDriver.exit.i.i.i
  %"2727" = load i32* @"'NP", align 4
  store i32 %"2727", i32* @"'s", align 4
  store i32 0, i32* @"'setEventCalled", align 4
  br label %main_CdAudioForwardIrpSynchronous.exit.i.i

main_bb1258:                                      ; preds = %main_IofCallDriver.exit.i.i.i
  %"2728" = load i32* @"'customIrp", align 4
  %"2729" = icmp eq i32 %"2728", 1
  br i1 %"2729", label %main_bb1259, label %main_bb1260

main_bb1259:                                      ; preds = %main_bb1258
  %"2730" = load i32* @"'NP", align 4
  store i32 %"2730", i32* @"'s", align 4
  store i32 0, i32* @"'customIrp", align 4
  br label %main_CdAudioForwardIrpSynchronous.exit.i.i

main_bb1260:                                      ; preds = %main_bb1258
  %"2731" = load i32* @"'s", align 4
  %"2732" = load i32* @"'MPR3", align 4
  %"2733" = icmp eq i32 %"2731", %"2732"
  br i1 %"2733", label %main_bb1261, label %main_CdAudioForwardIrpSynchronous.exit.i.i

main_bb1261:                                      ; preds = %main_bb1260
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_CdAudioForwardIrpSynchronous.exit.i.i:       ; preds = %main_bb1260, %main_bb1259, %main_bb1257
  %"2734" = call i32 @__VERIFIER_nondet_int() #5
  %"2735" = load i32* @"'myStatus", align 4
  %"2736" = icmp slt i32 %"2735", 0
  br i1 %"2736", label %main_CdAudioStartDevice.exit.i, label %main_bb1262

main_bb1262:                                      ; preds = %main_CdAudioForwardIrpSynchronous.exit.i.i
  %"2737" = icmp eq i32 %"2666", 255
  %"2738" = icmp slt i32 %"2735", 0
  %or.cond.i = or i1 %"2737", %"2738"
  br i1 %or.cond.i, label %main_CdAudioStartDevice.exit.i, label %main_bb1263

main_bb1263:                                      ; preds = %main_bb1262
  %"2739" = call i32 @__VERIFIER_nondet_int() #5
  br label %main_CdAudioStartDevice.exit.i

main_CdAudioStartDevice.exit.i:                   ; preds = %main_bb1263, %main_bb1262, %main_CdAudioForwardIrpSynchronous.exit.i.i
  %.0.i.i = phi i32 [ 0, %main_bb1263 ], [ %"2735", %main_CdAudioForwardIrpSynchronous.exit.i.i ], [ 0, %main_bb1262 ]
  store i32 %.0.i.i, i32* @"'myStatus", align 4
  %"2740" = load i32* @"'s", align 4
  %"2741" = load i32* @"'NP", align 4
  %"2742" = icmp eq i32 %"2740", %"2741"
  br i1 %"2742", label %main_IofCompleteRequest.exit.i, label %main_bb1264

main_IofCompleteRequest.exit.i:                   ; preds = %main_CdAudioStartDevice.exit.i
  %"2743" = load i32* @"'DC", align 4
  store i32 %"2743", i32* @"'s", align 4
  br label %main_CdAudioDeviceControl.exit

main_bb1264:                                      ; preds = %main_CdAudioStartDevice.exit.i
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_bb1265:                                      ; preds = %main_bb1255
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_LeafBlock16.i:                               ; preds = %main_bb1228
  %SwitchLeaf17.i = icmp eq i32 %"2661", 22
  br i1 %SwitchLeaf17.i, label %main_bb1266, label %main_NewDefault.i18

main_bb1266:                                      ; preds = %main_LeafBlock16.i
  %"2744" = load i32* @"'DeviceUsageTypePaging", align 4
  %"2745" = icmp ne i32 %"2662", %"2744"
  br i1 %"2745", label %main_bb1267, label %main_bb1294

main_bb1267:                                      ; preds = %main_bb1266
  %"2746" = call i32 @__VERIFIER_nondet_int() #5
  %"2747" = call i32 @__VERIFIER_nondet_int() #5
  %"2748" = call i32 @__VERIFIER_nondet_int() #5
  %"2749" = load i32* @"'s", align 4
  %"2750" = load i32* @"'NP", align 4
  %"2751" = icmp eq i32 %"2749", %"2750"
  br i1 %"2751", label %main_bb1268, label %main_bb1293

main_bb1268:                                      ; preds = %main_bb1267
  %"2752" = load i32* @"'SKIP1", align 4
  store i32 %"2752", i32* @"'s", align 4
  %"2753" = call i32 @__kittel_nondef.0() #5
  %"2754" = call i32 @__VERIFIER_nondet_int() #5
  %"2755" = call i32 @__VERIFIER_nondet_int() #5
  %"2756" = load i32* @"'compRegistered", align 4
  %"2757" = icmp ne i32 %"2756", 0
  br i1 %"2757", label %main_bb1269, label %main_bb1281

main_bb1269:                                      ; preds = %main_bb1268
  %"2758" = load i32* @"'routine", align 4
  %"2759" = icmp eq i32 %"2758", 0
  br i1 %"2759", label %main_bb1270, label %main_bb1276

main_bb1270:                                      ; preds = %main_bb1269
  %"2760" = call i32 @__VERIFIER_nondet_int() #5
  %"2761" = call i32 @__VERIFIER_nondet_int() #5
  %"2762" = icmp ne i32 %"2760", 0
  br i1 %"2762", label %main_bb1271, label %main_bb1274

main_bb1271:                                      ; preds = %main_bb1270
  %"2763" = load i32* @"'pended", align 4
  %"2764" = icmp eq i32 %"2763", 0
  br i1 %"2764", label %main_bb1272, label %main_bb1273

main_bb1272:                                      ; preds = %main_bb1271
  store i32 1, i32* @"'pended", align 4
  br label %main_bb1274

main_bb1273:                                      ; preds = %main_bb1271
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_bb1274:                                      ; preds = %main_bb1272, %main_bb1270
  %"2765" = load i32* @"'myStatus", align 4
  %"2766" = icmp sge i32 %"2765", 0
  br i1 %"2766", label %main_bb1275, label %main_HPCdrCompletion.exit.i.i.i12

main_bb1275:                                      ; preds = %main_bb1274
  %"2767" = call i32 @__VERIFIER_nondet_int() #5
  br label %main_HPCdrCompletion.exit.i.i.i12

main_HPCdrCompletion.exit.i.i.i12:                ; preds = %main_bb1275, %main_bb1274
  %"2768" = load i32* @"'myStatus", align 4
  br label %main_bb1278

main_bb1276:                                      ; preds = %main_bb1269
  %"2769" = load i32* @"'routine", align 4
  %"2770" = icmp eq i32 %"2769", 1
  br i1 %"2770", label %main_bb1277, label %main_bb1278

main_bb1277:                                      ; preds = %main_bb1276
  %"2771" = call i32 @__VERIFIER_nondet_int() #5
  store i32 1, i32* @"'setEventCalled", align 4
  br label %main_bb1278

main_bb1278:                                      ; preds = %main_bb1277, %main_bb1276, %main_HPCdrCompletion.exit.i.i.i12
  %compRetStatus.1.i.i.i13 = phi i32 [ %"2768", %main_HPCdrCompletion.exit.i.i.i12 ], [ -1073741802, %main_bb1277 ], [ %"2753", %main_bb1276 ]
  %"2772" = sext i32 %compRetStatus.1.i.i.i13 to i64
  %"2773" = icmp eq i64 %"2772", -1073741802
  br i1 %"2773", label %main_bb1279, label %main_bb1281

main_bb1279:                                      ; preds = %main_bb1278
  %"2774" = load i32* @"'s", align 4
  %"2775" = load i32* @"'NP", align 4
  %"2776" = icmp eq i32 %"2774", %"2775"
  br i1 %"2776", label %main_stubMoreProcessingRequired.exit.i.i.i14, label %main_bb1280

main_stubMoreProcessingRequired.exit.i.i.i14:     ; preds = %main_bb1279
  %"2777" = load i32* @"'MPR1", align 4
  store i32 %"2777", i32* @"'s", align 4
  br label %main_bb1281

main_bb1280:                                      ; preds = %main_bb1279
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_bb1281:                                      ; preds = %main_stubMoreProcessingRequired.exit.i.i.i14, %main_bb1278, %main_bb1268
  %"2778" = icmp ne i32 %"2754", 0
  br i1 %"2778", label %main_bb1284, label %main_bb1282

main_bb1282:                                      ; preds = %main_bb1281
  %"2779" = call i32 @__VERIFIER_nondet_int() #5
  %"2780" = icmp eq i32 %"2779", 0
  br i1 %"2780", label %main_bb1284, label %main_bb1283

main_bb1283:                                      ; preds = %main_bb1282
  %"2781" = call i32 @__VERIFIER_nondet_int() #5
  %"2782" = icmp eq i32 %"2781", 1
  %..i.i.i15 = select i1 %"2782", i32 -1073741823, i32 259
  br label %main_bb1284

main_bb1284:                                      ; preds = %main_bb1283, %main_bb1282, %main_bb1281
  %returnVal2.1.i.i.i16 = phi i32 [ 259, %main_bb1281 ], [ 0, %main_bb1282 ], [ %..i.i.i15, %main_bb1283 ]
  %"2783" = load i32* @"'s", align 4
  %"2784" = load i32* @"'NP", align 4
  %"2785" = icmp eq i32 %"2783", %"2784"
  br i1 %"2785", label %main_bb1285, label %main_bb1286

main_bb1285:                                      ; preds = %main_bb1284
  %"2786" = load i32* @"'IPC", align 4
  store i32 %"2786", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i.i16, i32* @"'lowerDriverReturn", align 4
  br label %main_CdAudioDeviceControl.exit

main_bb1286:                                      ; preds = %main_bb1284
  %"2787" = load i32* @"'s", align 4
  %"2788" = load i32* @"'MPR1", align 4
  %"2789" = icmp eq i32 %"2787", %"2788"
  br i1 %"2789", label %main_bb1287, label %main_bb1290

main_bb1287:                                      ; preds = %main_bb1286
  %"2790" = icmp eq i32 %returnVal2.1.i.i.i16, 259
  br i1 %"2790", label %main_bb1288, label %main_bb1289

main_bb1288:                                      ; preds = %main_bb1287
  %"2791" = load i32* @"'MPR3", align 4
  store i32 %"2791", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i.i16, i32* @"'lowerDriverReturn", align 4
  br label %main_CdAudioDeviceControl.exit

main_bb1289:                                      ; preds = %main_bb1287
  %"2792" = load i32* @"'NP", align 4
  store i32 %"2792", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i.i16, i32* @"'lowerDriverReturn", align 4
  br label %main_CdAudioDeviceControl.exit

main_bb1290:                                      ; preds = %main_bb1286
  %"2793" = load i32* @"'s", align 4
  %"2794" = load i32* @"'SKIP1", align 4
  %"2795" = icmp eq i32 %"2793", %"2794"
  br i1 %"2795", label %main_bb1291, label %main_bb1292

main_bb1291:                                      ; preds = %main_bb1290
  %"2796" = load i32* @"'SKIP2", align 4
  store i32 %"2796", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i.i16, i32* @"'lowerDriverReturn", align 4
  br label %main_CdAudioDeviceControl.exit

main_bb1292:                                      ; preds = %main_bb1290
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_bb1293:                                      ; preds = %main_bb1267
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_bb1294:                                      ; preds = %main_bb1266
  %"2797" = load i32* @"'s", align 4
  %"2798" = load i32* @"'MPR3", align 4
  %"2799" = icmp eq i32 %"2797", %"2798"
  %"2800" = load i32* @"'setEventCalled", align 4
  %"2801" = icmp eq i32 %"2800", 1
  %or.cond.i.i = and i1 %"2799", %"2801"
  br i1 %or.cond.i.i, label %main_bb1295, label %main_bb1296

main_bb1295:                                      ; preds = %main_bb1294
  %"2802" = load i32* @"'NP", align 4
  store i32 %"2802", i32* @"'s", align 4
  store i32 0, i32* @"'setEventCalled", align 4
  br label %main_KeWaitForSingleObject.exit.i

main_bb1296:                                      ; preds = %main_bb1294
  %"2803" = load i32* @"'customIrp", align 4
  %"2804" = icmp eq i32 %"2803", 1
  br i1 %"2804", label %main_bb1297, label %main_bb1298

main_bb1297:                                      ; preds = %main_bb1296
  %"2805" = load i32* @"'NP", align 4
  store i32 %"2805", i32* @"'s", align 4
  store i32 0, i32* @"'customIrp", align 4
  br label %main_KeWaitForSingleObject.exit.i

main_bb1298:                                      ; preds = %main_bb1296
  %"2806" = load i32* @"'s", align 4
  %"2807" = load i32* @"'MPR3", align 4
  %"2808" = icmp eq i32 %"2806", %"2807"
  br i1 %"2808", label %main_bb1299, label %main_KeWaitForSingleObject.exit.i

main_bb1299:                                      ; preds = %main_bb1298
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_KeWaitForSingleObject.exit.i:                ; preds = %main_bb1298, %main_bb1297, %main_bb1295
  %"2809" = call i32 @__VERIFIER_nondet_int() #5
  %"2810" = call i32 @__VERIFIER_nondet_int() #5
  %"2811" = call i32 @__VERIFIER_nondet_int() #5
  %"2812" = load i32* @"'s", align 4
  %"2813" = load i32* @"'NP", align 4
  %"2814" = icmp ne i32 %"2812", %"2813"
  br i1 %"2814", label %main_bb1300, label %main_bb1301

main_bb1300:                                      ; preds = %main_KeWaitForSingleObject.exit.i
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_bb1301:                                      ; preds = %main_KeWaitForSingleObject.exit.i
  %"2815" = load i32* @"'compRegistered", align 4
  %"2816" = icmp ne i32 %"2815", 0
  br i1 %"2816", label %main_bb1302, label %main_bb1303

main_bb1302:                                      ; preds = %main_bb1301
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_bb1303:                                      ; preds = %main_bb1301
  store i32 1, i32* @"'compRegistered", align 4
  store i32 1, i32* @"'routine", align 4
  %"2817" = call i32 @__kittel_nondef.0() #5
  %"2818" = call i32 @__VERIFIER_nondet_int() #5
  %"2819" = call i32 @__VERIFIER_nondet_int() #5
  %"2820" = load i32* @"'compRegistered", align 4
  %"2821" = icmp ne i32 %"2820", 0
  br i1 %"2821", label %main_bb1304, label %main_bb1316

main_bb1304:                                      ; preds = %main_bb1303
  %"2822" = load i32* @"'routine", align 4
  %"2823" = icmp eq i32 %"2822", 0
  br i1 %"2823", label %main_bb1305, label %main_bb1311

main_bb1305:                                      ; preds = %main_bb1304
  %"2824" = call i32 @__VERIFIER_nondet_int() #5
  %"2825" = call i32 @__VERIFIER_nondet_int() #5
  %"2826" = icmp ne i32 %"2824", 0
  br i1 %"2826", label %main_bb1306, label %main_bb1309

main_bb1306:                                      ; preds = %main_bb1305
  %"2827" = load i32* @"'pended", align 4
  %"2828" = icmp eq i32 %"2827", 0
  br i1 %"2828", label %main_bb1307, label %main_bb1308

main_bb1307:                                      ; preds = %main_bb1306
  store i32 1, i32* @"'pended", align 4
  br label %main_bb1309

main_bb1308:                                      ; preds = %main_bb1306
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_bb1309:                                      ; preds = %main_bb1307, %main_bb1305
  %"2829" = load i32* @"'myStatus", align 4
  %"2830" = icmp sge i32 %"2829", 0
  br i1 %"2830", label %main_bb1310, label %main_HPCdrCompletion.exit.i.i2.i

main_bb1310:                                      ; preds = %main_bb1309
  %"2831" = call i32 @__VERIFIER_nondet_int() #5
  br label %main_HPCdrCompletion.exit.i.i2.i

main_HPCdrCompletion.exit.i.i2.i:                 ; preds = %main_bb1310, %main_bb1309
  %"2832" = load i32* @"'myStatus", align 4
  br label %main_bb1313

main_bb1311:                                      ; preds = %main_bb1304
  %"2833" = load i32* @"'routine", align 4
  %"2834" = icmp eq i32 %"2833", 1
  br i1 %"2834", label %main_bb1312, label %main_bb1313

main_bb1312:                                      ; preds = %main_bb1311
  %"2835" = call i32 @__VERIFIER_nondet_int() #5
  store i32 1, i32* @"'setEventCalled", align 4
  br label %main_bb1313

main_bb1313:                                      ; preds = %main_bb1312, %main_bb1311, %main_HPCdrCompletion.exit.i.i2.i
  %compRetStatus.1.i.i3.i = phi i32 [ %"2832", %main_HPCdrCompletion.exit.i.i2.i ], [ -1073741802, %main_bb1312 ], [ %"2817", %main_bb1311 ]
  %"2836" = sext i32 %compRetStatus.1.i.i3.i to i64
  %"2837" = icmp eq i64 %"2836", -1073741802
  br i1 %"2837", label %main_bb1314, label %main_bb1316

main_bb1314:                                      ; preds = %main_bb1313
  %"2838" = load i32* @"'s", align 4
  %"2839" = load i32* @"'NP", align 4
  %"2840" = icmp eq i32 %"2838", %"2839"
  br i1 %"2840", label %main_stubMoreProcessingRequired.exit.i.i4.i, label %main_bb1315

main_stubMoreProcessingRequired.exit.i.i4.i:      ; preds = %main_bb1314
  %"2841" = load i32* @"'MPR1", align 4
  store i32 %"2841", i32* @"'s", align 4
  br label %main_bb1316

main_bb1315:                                      ; preds = %main_bb1314
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_bb1316:                                      ; preds = %main_stubMoreProcessingRequired.exit.i.i4.i, %main_bb1313, %main_bb1303
  %"2842" = icmp ne i32 %"2818", 0
  br i1 %"2842", label %main_bb1319, label %main_bb1317

main_bb1317:                                      ; preds = %main_bb1316
  %"2843" = call i32 @__VERIFIER_nondet_int() #5
  %"2844" = icmp eq i32 %"2843", 0
  br i1 %"2844", label %main_bb1319, label %main_bb1318

main_bb1318:                                      ; preds = %main_bb1317
  %"2845" = call i32 @__VERIFIER_nondet_int() #5
  %"2846" = icmp eq i32 %"2845", 1
  %..i.i5.i = select i1 %"2846", i32 -1073741823, i32 259
  br label %main_bb1319

main_bb1319:                                      ; preds = %main_bb1318, %main_bb1317, %main_bb1316
  %returnVal2.1.i.i6.i = phi i32 [ 259, %main_bb1316 ], [ 0, %main_bb1317 ], [ %..i.i5.i, %main_bb1318 ]
  %"2847" = load i32* @"'s", align 4
  %"2848" = load i32* @"'NP", align 4
  %"2849" = icmp eq i32 %"2847", %"2848"
  br i1 %"2849", label %main_bb1320, label %main_bb1321

main_bb1320:                                      ; preds = %main_bb1319
  %"2850" = load i32* @"'IPC", align 4
  store i32 %"2850", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i6.i, i32* @"'lowerDriverReturn", align 4
  br label %main_IofCallDriver.exit.i.i

main_bb1321:                                      ; preds = %main_bb1319
  %"2851" = load i32* @"'s", align 4
  %"2852" = load i32* @"'MPR1", align 4
  %"2853" = icmp eq i32 %"2851", %"2852"
  br i1 %"2853", label %main_bb1322, label %main_bb1325

main_bb1322:                                      ; preds = %main_bb1321
  %"2854" = icmp eq i32 %returnVal2.1.i.i6.i, 259
  br i1 %"2854", label %main_bb1323, label %main_bb1324

main_bb1323:                                      ; preds = %main_bb1322
  %"2855" = load i32* @"'MPR3", align 4
  store i32 %"2855", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i6.i, i32* @"'lowerDriverReturn", align 4
  br label %main_IofCallDriver.exit.i.i

main_bb1324:                                      ; preds = %main_bb1322
  %"2856" = load i32* @"'NP", align 4
  store i32 %"2856", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i6.i, i32* @"'lowerDriverReturn", align 4
  br label %main_IofCallDriver.exit.i.i

main_bb1325:                                      ; preds = %main_bb1321
  %"2857" = load i32* @"'s", align 4
  %"2858" = load i32* @"'SKIP1", align 4
  %"2859" = icmp eq i32 %"2857", %"2858"
  br i1 %"2859", label %main_bb1326, label %main_bb1333

main_bb1326:                                      ; preds = %main_bb1325
  %"2860" = load i32* @"'SKIP2", align 4
  store i32 %"2860", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i6.i, i32* @"'lowerDriverReturn", align 4
  br label %main_IofCallDriver.exit.i.i

main_IofCallDriver.exit.i.i:                      ; preds = %main_bb1326, %main_bb1324, %main_bb1323, %main_bb1320
  %"2861" = load i32* @"'s", align 4
  %"2862" = load i32* @"'MPR3", align 4
  %"2863" = icmp eq i32 %"2861", %"2862"
  %"2864" = load i32* @"'setEventCalled", align 4
  %"2865" = icmp eq i32 %"2864", 1
  %or.cond.i.i.i17 = and i1 %"2863", %"2865"
  br i1 %or.cond.i.i.i17, label %main_bb1327, label %main_bb1328

main_bb1327:                                      ; preds = %main_IofCallDriver.exit.i.i
  %"2866" = load i32* @"'NP", align 4
  store i32 %"2866", i32* @"'s", align 4
  store i32 0, i32* @"'setEventCalled", align 4
  br label %main_CdAudioForwardIrpSynchronous.exit.i

main_bb1328:                                      ; preds = %main_IofCallDriver.exit.i.i
  %"2867" = load i32* @"'customIrp", align 4
  %"2868" = icmp eq i32 %"2867", 1
  br i1 %"2868", label %main_bb1329, label %main_bb1330

main_bb1329:                                      ; preds = %main_bb1328
  %"2869" = load i32* @"'NP", align 4
  store i32 %"2869", i32* @"'s", align 4
  store i32 0, i32* @"'customIrp", align 4
  br label %main_CdAudioForwardIrpSynchronous.exit.i

main_bb1330:                                      ; preds = %main_bb1328
  %"2870" = load i32* @"'s", align 4
  %"2871" = load i32* @"'MPR3", align 4
  %"2872" = icmp eq i32 %"2870", %"2871"
  br i1 %"2872", label %main_bb1331, label %main_CdAudioForwardIrpSynchronous.exit.i

main_bb1331:                                      ; preds = %main_bb1330
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_CdAudioForwardIrpSynchronous.exit.i:         ; preds = %main_bb1330, %main_bb1329, %main_bb1327
  %"2873" = call i32 @__VERIFIER_nondet_int() #5
  %"2874" = load i32* @"'myStatus", align 4
  %"2875" = call i32 @__VERIFIER_nondet_int() #5
  store i32 1, i32* @"'setEventCalled", align 4
  %"2876" = load i32* @"'s", align 4
  %"2877" = load i32* @"'NP", align 4
  %"2878" = icmp eq i32 %"2876", %"2877"
  br i1 %"2878", label %main_IofCompleteRequest.exit7.i, label %main_bb1332

main_IofCompleteRequest.exit7.i:                  ; preds = %main_CdAudioForwardIrpSynchronous.exit.i
  %"2879" = load i32* @"'DC", align 4
  store i32 %"2879", i32* @"'s", align 4
  br label %main_CdAudioDeviceControl.exit

main_bb1332:                                      ; preds = %main_CdAudioForwardIrpSynchronous.exit.i
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_bb1333:                                      ; preds = %main_bb1325
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_NewDefault.i18:                              ; preds = %main_LeafBlock16.i, %main_LeafBlock.i5
  %"2880" = call i32 @__VERIFIER_nondet_int() #5
  %"2881" = call i32 @__VERIFIER_nondet_int() #5
  %"2882" = call i32 @__VERIFIER_nondet_int() #5
  %"2883" = load i32* @"'s", align 4
  %"2884" = load i32* @"'NP", align 4
  %"2885" = icmp eq i32 %"2883", %"2884"
  br i1 %"2885", label %main_bb1334, label %main_bb1359

main_bb1334:                                      ; preds = %main_NewDefault.i18
  %"2886" = load i32* @"'SKIP1", align 4
  store i32 %"2886", i32* @"'s", align 4
  %"2887" = call i32 @__kittel_nondef.0() #5
  %"2888" = call i32 @__VERIFIER_nondet_int() #5
  %"2889" = call i32 @__VERIFIER_nondet_int() #5
  %"2890" = load i32* @"'compRegistered", align 4
  %"2891" = icmp ne i32 %"2890", 0
  br i1 %"2891", label %main_bb1335, label %main_bb1347

main_bb1335:                                      ; preds = %main_bb1334
  %"2892" = load i32* @"'routine", align 4
  %"2893" = icmp eq i32 %"2892", 0
  br i1 %"2893", label %main_bb1336, label %main_bb1342

main_bb1336:                                      ; preds = %main_bb1335
  %"2894" = call i32 @__VERIFIER_nondet_int() #5
  %"2895" = call i32 @__VERIFIER_nondet_int() #5
  %"2896" = icmp ne i32 %"2894", 0
  br i1 %"2896", label %main_bb1337, label %main_bb1340

main_bb1337:                                      ; preds = %main_bb1336
  %"2897" = load i32* @"'pended", align 4
  %"2898" = icmp eq i32 %"2897", 0
  br i1 %"2898", label %main_bb1338, label %main_bb1339

main_bb1338:                                      ; preds = %main_bb1337
  store i32 1, i32* @"'pended", align 4
  br label %main_bb1340

main_bb1339:                                      ; preds = %main_bb1337
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_bb1340:                                      ; preds = %main_bb1338, %main_bb1336
  %"2899" = load i32* @"'myStatus", align 4
  %"2900" = icmp sge i32 %"2899", 0
  br i1 %"2900", label %main_bb1341, label %main_HPCdrCompletion.exit.i.i8.i

main_bb1341:                                      ; preds = %main_bb1340
  %"2901" = call i32 @__VERIFIER_nondet_int() #5
  br label %main_HPCdrCompletion.exit.i.i8.i

main_HPCdrCompletion.exit.i.i8.i:                 ; preds = %main_bb1341, %main_bb1340
  %"2902" = load i32* @"'myStatus", align 4
  br label %main_bb1344

main_bb1342:                                      ; preds = %main_bb1335
  %"2903" = load i32* @"'routine", align 4
  %"2904" = icmp eq i32 %"2903", 1
  br i1 %"2904", label %main_bb1343, label %main_bb1344

main_bb1343:                                      ; preds = %main_bb1342
  %"2905" = call i32 @__VERIFIER_nondet_int() #5
  store i32 1, i32* @"'setEventCalled", align 4
  br label %main_bb1344

main_bb1344:                                      ; preds = %main_bb1343, %main_bb1342, %main_HPCdrCompletion.exit.i.i8.i
  %compRetStatus.1.i.i9.i = phi i32 [ %"2902", %main_HPCdrCompletion.exit.i.i8.i ], [ -1073741802, %main_bb1343 ], [ %"2887", %main_bb1342 ]
  %"2906" = sext i32 %compRetStatus.1.i.i9.i to i64
  %"2907" = icmp eq i64 %"2906", -1073741802
  br i1 %"2907", label %main_bb1345, label %main_bb1347

main_bb1345:                                      ; preds = %main_bb1344
  %"2908" = load i32* @"'s", align 4
  %"2909" = load i32* @"'NP", align 4
  %"2910" = icmp eq i32 %"2908", %"2909"
  br i1 %"2910", label %main_stubMoreProcessingRequired.exit.i.i10.i, label %main_bb1346

main_stubMoreProcessingRequired.exit.i.i10.i:     ; preds = %main_bb1345
  %"2911" = load i32* @"'MPR1", align 4
  store i32 %"2911", i32* @"'s", align 4
  br label %main_bb1347

main_bb1346:                                      ; preds = %main_bb1345
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_bb1347:                                      ; preds = %main_stubMoreProcessingRequired.exit.i.i10.i, %main_bb1344, %main_bb1334
  %"2912" = icmp ne i32 %"2888", 0
  br i1 %"2912", label %main_bb1350, label %main_bb1348

main_bb1348:                                      ; preds = %main_bb1347
  %"2913" = call i32 @__VERIFIER_nondet_int() #5
  %"2914" = icmp eq i32 %"2913", 0
  br i1 %"2914", label %main_bb1350, label %main_bb1349

main_bb1349:                                      ; preds = %main_bb1348
  %"2915" = call i32 @__VERIFIER_nondet_int() #5
  %"2916" = icmp eq i32 %"2915", 1
  %..i.i11.i = select i1 %"2916", i32 -1073741823, i32 259
  br label %main_bb1350

main_bb1350:                                      ; preds = %main_bb1349, %main_bb1348, %main_bb1347
  %returnVal2.1.i.i12.i = phi i32 [ 259, %main_bb1347 ], [ 0, %main_bb1348 ], [ %..i.i11.i, %main_bb1349 ]
  %"2917" = load i32* @"'s", align 4
  %"2918" = load i32* @"'NP", align 4
  %"2919" = icmp eq i32 %"2917", %"2918"
  br i1 %"2919", label %main_bb1351, label %main_bb1352

main_bb1351:                                      ; preds = %main_bb1350
  %"2920" = load i32* @"'IPC", align 4
  store i32 %"2920", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i12.i, i32* @"'lowerDriverReturn", align 4
  br label %main_CdAudioDeviceControl.exit

main_bb1352:                                      ; preds = %main_bb1350
  %"2921" = load i32* @"'s", align 4
  %"2922" = load i32* @"'MPR1", align 4
  %"2923" = icmp eq i32 %"2921", %"2922"
  br i1 %"2923", label %main_bb1353, label %main_bb1356

main_bb1353:                                      ; preds = %main_bb1352
  %"2924" = icmp eq i32 %returnVal2.1.i.i12.i, 259
  br i1 %"2924", label %main_bb1354, label %main_bb1355

main_bb1354:                                      ; preds = %main_bb1353
  %"2925" = load i32* @"'MPR3", align 4
  store i32 %"2925", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i12.i, i32* @"'lowerDriverReturn", align 4
  br label %main_CdAudioDeviceControl.exit

main_bb1355:                                      ; preds = %main_bb1353
  %"2926" = load i32* @"'NP", align 4
  store i32 %"2926", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i12.i, i32* @"'lowerDriverReturn", align 4
  br label %main_CdAudioDeviceControl.exit

main_bb1356:                                      ; preds = %main_bb1352
  %"2927" = load i32* @"'s", align 4
  %"2928" = load i32* @"'SKIP1", align 4
  %"2929" = icmp eq i32 %"2927", %"2928"
  br i1 %"2929", label %main_bb1357, label %main_bb1358

main_bb1357:                                      ; preds = %main_bb1356
  %"2930" = load i32* @"'SKIP2", align 4
  store i32 %"2930", i32* @"'s", align 4
  store i32 %returnVal2.1.i.i12.i, i32* @"'lowerDriverReturn", align 4
  br label %main_CdAudioDeviceControl.exit

main_bb1358:                                      ; preds = %main_bb1356
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_bb1359:                                      ; preds = %main_NewDefault.i18
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_bb1360:                                      ; preds = %main_bb1227
  %"2931" = call i32 @__VERIFIER_nondet_int()
  %"2932" = icmp eq i32 %"2931", 4
  br i1 %"2932", label %main_bb1361, label %main_bb1406

main_bb1361:                                      ; preds = %main_bb1360
  %"2933" = call i32 @__VERIFIER_nondet_int() #5
  %"2934" = call i32 @__VERIFIER_nondet_int() #5
  %"2935" = call i32 @__VERIFIER_nondet_int() #5
  %"2936" = load i32* @"'s", align 4
  %"2937" = load i32* @"'NP", align 4
  %"2938" = icmp eq i32 %"2936", %"2937"
  br i1 %"2938", label %main_bb1362, label %main_bb1386

main_bb1362:                                      ; preds = %main_bb1361
  %"2939" = load i32* @"'SKIP1", align 4
  store i32 %"2939", i32* @"'s", align 4
  %"2940" = call i32 @__kittel_nondef.0() #5
  %"2941" = call i32 @__VERIFIER_nondet_int() #5
  %"2942" = load i32* @"'compRegistered", align 4
  %"2943" = icmp ne i32 %"2942", 0
  br i1 %"2943", label %main_bb1363, label %main_bb1375

main_bb1363:                                      ; preds = %main_bb1362
  %"2944" = load i32* @"'routine", align 4
  %"2945" = icmp eq i32 %"2944", 0
  br i1 %"2945", label %main_bb1364, label %main_bb1370

main_bb1364:                                      ; preds = %main_bb1363
  %"2946" = call i32 @__VERIFIER_nondet_int() #5
  %"2947" = call i32 @__VERIFIER_nondet_int() #5
  %"2948" = icmp ne i32 %"2946", 0
  br i1 %"2948", label %main_bb1365, label %main_bb1368

main_bb1365:                                      ; preds = %main_bb1364
  %"2949" = load i32* @"'pended", align 4
  %"2950" = icmp eq i32 %"2949", 0
  br i1 %"2950", label %main_bb1366, label %main_bb1367

main_bb1366:                                      ; preds = %main_bb1365
  store i32 1, i32* @"'pended", align 4
  br label %main_bb1368

main_bb1367:                                      ; preds = %main_bb1365
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_bb1368:                                      ; preds = %main_bb1366, %main_bb1364
  %"2951" = load i32* @"'myStatus", align 4
  %"2952" = icmp sge i32 %"2951", 0
  br i1 %"2952", label %main_bb1369, label %main_HPCdrCompletion.exit.i.i

main_bb1369:                                      ; preds = %main_bb1368
  %"2953" = call i32 @__VERIFIER_nondet_int() #5
  br label %main_HPCdrCompletion.exit.i.i

main_HPCdrCompletion.exit.i.i:                    ; preds = %main_bb1369, %main_bb1368
  %"2954" = load i32* @"'myStatus", align 4
  br label %main_bb1372

main_bb1370:                                      ; preds = %main_bb1363
  %"2955" = load i32* @"'routine", align 4
  %"2956" = icmp eq i32 %"2955", 1
  br i1 %"2956", label %main_bb1371, label %main_bb1372

main_bb1371:                                      ; preds = %main_bb1370
  %"2957" = call i32 @__VERIFIER_nondet_int() #5
  store i32 1, i32* @"'setEventCalled", align 4
  br label %main_bb1372

main_bb1372:                                      ; preds = %main_bb1371, %main_bb1370, %main_HPCdrCompletion.exit.i.i
  %compRetStatus.1.i.i = phi i32 [ %"2954", %main_HPCdrCompletion.exit.i.i ], [ -1073741802, %main_bb1371 ], [ %"2940", %main_bb1370 ]
  %"2958" = sext i32 %compRetStatus.1.i.i to i64
  %"2959" = icmp eq i64 %"2958", -1073741802
  br i1 %"2959", label %main_bb1373, label %main_bb1375

main_bb1373:                                      ; preds = %main_bb1372
  %"2960" = load i32* @"'s", align 4
  %"2961" = load i32* @"'NP", align 4
  %"2962" = icmp eq i32 %"2960", %"2961"
  br i1 %"2962", label %main_stubMoreProcessingRequired.exit.i.i, label %main_bb1374

main_stubMoreProcessingRequired.exit.i.i:         ; preds = %main_bb1373
  %"2963" = load i32* @"'MPR1", align 4
  store i32 %"2963", i32* @"'s", align 4
  br label %main_bb1375

main_bb1374:                                      ; preds = %main_bb1373
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_bb1375:                                      ; preds = %main_stubMoreProcessingRequired.exit.i.i, %main_bb1372, %main_bb1362
  %"2964" = call i32 @__VERIFIER_nondet_int() #5
  %"2965" = icmp eq i32 %"2964", 0
  br i1 %"2965", label %main_bb1377, label %main_bb1376

main_bb1376:                                      ; preds = %main_bb1375
  %"2966" = call i32 @__VERIFIER_nondet_int() #5
  %"2967" = icmp eq i32 %"2966", 1
  %..i.i = select i1 %"2967", i32 -1073741823, i32 259
  br label %main_bb1377

main_bb1377:                                      ; preds = %main_bb1376, %main_bb1375
  %returnVal.0.i.i = phi i32 [ 0, %main_bb1375 ], [ %..i.i, %main_bb1376 ]
  %"2968" = load i32* @"'s", align 4
  %"2969" = load i32* @"'NP", align 4
  %"2970" = icmp eq i32 %"2968", %"2969"
  br i1 %"2970", label %main_bb1378, label %main_bb1379

main_bb1378:                                      ; preds = %main_bb1377
  %"2971" = load i32* @"'IPC", align 4
  store i32 %"2971", i32* @"'s", align 4
  store i32 %returnVal.0.i.i, i32* @"'lowerDriverReturn", align 4
  br label %main_CdAudioDeviceControl.exit

main_bb1379:                                      ; preds = %main_bb1377
  %"2972" = load i32* @"'s", align 4
  %"2973" = load i32* @"'MPR1", align 4
  %"2974" = icmp eq i32 %"2972", %"2973"
  br i1 %"2974", label %main_bb1380, label %main_bb1383

main_bb1380:                                      ; preds = %main_bb1379
  %"2975" = sext i32 %returnVal.0.i.i to i64
  %"2976" = icmp eq i64 %"2975", 259
  br i1 %"2976", label %main_bb1381, label %main_bb1382

main_bb1381:                                      ; preds = %main_bb1380
  %"2977" = load i32* @"'MPR3", align 4
  store i32 %"2977", i32* @"'s", align 4
  store i32 %returnVal.0.i.i, i32* @"'lowerDriverReturn", align 4
  br label %main_CdAudioDeviceControl.exit

main_bb1382:                                      ; preds = %main_bb1380
  %"2978" = load i32* @"'NP", align 4
  store i32 %"2978", i32* @"'s", align 4
  store i32 %returnVal.0.i.i, i32* @"'lowerDriverReturn", align 4
  br label %main_CdAudioDeviceControl.exit

main_bb1383:                                      ; preds = %main_bb1379
  %"2979" = load i32* @"'s", align 4
  %"2980" = load i32* @"'SKIP1", align 4
  %"2981" = icmp eq i32 %"2979", %"2980"
  br i1 %"2981", label %main_bb1384, label %main_bb1385

main_bb1384:                                      ; preds = %main_bb1383
  %"2982" = load i32* @"'SKIP2", align 4
  store i32 %"2982", i32* @"'s", align 4
  store i32 %returnVal.0.i.i, i32* @"'lowerDriverReturn", align 4
  br label %main_CdAudioDeviceControl.exit

main_CdAudioDeviceControl.exit:                   ; preds = %main_bb1384, %main_bb1382, %main_bb1381, %main_bb1378, %main_bb1357, %main_bb1355, %main_bb1354, %main_bb1351, %main_IofCompleteRequest.exit7.i, %main_bb1291, %main_bb1289, %main_bb1288, %main_bb1285, %main_IofCompleteRequest.exit.i, %main_bb1224, %main_bb1222, %main_bb1221, %main_bb1218, %main_bb1198, %main_bb1196, %main_bb1195, %main_bb1192, %main_bb1172, %main_bb1170, %main_bb1169, %main_bb1166, %main_bb1141, %main_bb1139, %main_bb1138, %main_bb1135, %main_IofCompleteRequest.exit34.i.i, %main_bb1112, %main_bb1110, %main_bb1109, %main_bb1106, %main_IofCompleteRequest.exit27.i.i, %main_IofCompleteRequest.exit16.i.i, %main_IofCompleteRequest.exit15.i.i, %main_IofCompleteRequest.exit4.i.i, %main_IofCompleteRequest.exit13.i.i, %main_IofCompleteRequest.exit10.i.i, %main_IofCompleteRequest.exit8.i.i, %main_IofCompleteRequest.exit7.i.i, %main_IofCompleteRequest.exit2.i.i, %main_IofCompleteRequest.exit.i.i, %main_bb1029, %main_bb1027, %main_bb1026, %main_bb1023, %main_AG_SetStatusAndReturn.exit28.i.i, %main_AG_SetStatusAndReturn.exit2.i.i, %main_AG_SetStatusAndReturn.exit.i.i, %main_AG_SetStatusAndReturn.exit15.i.i, %main_AG_SetStatusAndReturn.exit14.i.i, %main_AG_SetStatusAndReturn.exit13.i.i, %main_AG_SetStatusAndReturn.exit11.i.i, %main_bb948, %main_bb946, %main_bb945, %main_bb942, %main_IofCompleteRequest.exit.i20.i
  %status.0 = phi i32 [ %returnVal2.1.i.i38.i, %main_bb1218 ], [ %returnVal2.1.i.i38.i, %main_bb1221 ], [ %returnVal2.1.i.i38.i, %main_bb1222 ], [ %returnVal2.1.i.i38.i, %main_bb1224 ], [ %status.1.i.i, %main_AG_SetStatusAndReturn.exit28.i.i ], [ -1073741670, %main_AG_SetStatusAndReturn.exit.i.i ], [ -1073741670, %main_AG_SetStatusAndReturn.exit2.i.i ], [ -1073741670, %main_AG_SetStatusAndReturn.exit11.i.i ], [ -1073741670, %main_AG_SetStatusAndReturn.exit13.i.i ], [ -1073741670, %main_AG_SetStatusAndReturn.exit14.i.i ], [ -1073741823, %main_AG_SetStatusAndReturn.exit15.i.i ], [ %returnVal2.1.i.i.i.i, %main_bb1023 ], [ %returnVal2.1.i.i.i.i, %main_bb1026 ], [ %returnVal2.1.i.i.i.i, %main_bb1027 ], [ %returnVal2.1.i.i.i.i, %main_bb1029 ], [ %status.4.i.i, %main_IofCompleteRequest.exit34.i.i ], [ -1073741670, %main_IofCompleteRequest.exit.i.i ], [ -1073741670, %main_IofCompleteRequest.exit2.i.i ], [ -1073741670, %main_IofCompleteRequest.exit4.i.i ], [ -1073741670, %main_IofCompleteRequest.exit7.i.i ], [ 0, %main_IofCompleteRequest.exit8.i.i ], [ -1073741670, %main_IofCompleteRequest.exit10.i.i ], [ -1073741823, %main_IofCompleteRequest.exit13.i.i ], [ -1073741670, %main_IofCompleteRequest.exit15.i.i ], [ -1073741823, %main_IofCompleteRequest.exit16.i.i ], [ 0, %main_IofCompleteRequest.exit27.i.i ], [ %returnVal2.1.i.i.i17.i, %main_bb1106 ], [ %returnVal2.1.i.i.i17.i, %main_bb1109 ], [ %returnVal2.1.i.i.i17.i, %main_bb1110 ], [ %returnVal2.1.i.i.i17.i, %main_bb1112 ], [ %returnVal2.1.i.i32.i.i, %main_bb1135 ], [ %returnVal2.1.i.i32.i.i, %main_bb1138 ], [ %returnVal2.1.i.i32.i.i, %main_bb1139 ], [ %returnVal2.1.i.i32.i.i, %main_bb1141 ], [ -1073741670, %main_IofCompleteRequest.exit.i20.i ], [ %returnVal2.1.i.i.i25.i, %main_bb942 ], [ %returnVal2.1.i.i.i25.i, %main_bb945 ], [ %returnVal2.1.i.i.i25.i, %main_bb946 ], [ %returnVal2.1.i.i.i25.i, %main_bb948 ], [ %returnVal2.1.i.i.i, %main_bb1166 ], [ %returnVal2.1.i.i.i, %main_bb1169 ], [ %returnVal2.1.i.i.i, %main_bb1170 ], [ %returnVal2.1.i.i.i, %main_bb1172 ], [ %returnVal2.1.i.i.i32.i, %main_bb1192 ], [ %returnVal2.1.i.i.i32.i, %main_bb1195 ], [ %returnVal2.1.i.i.i32.i, %main_bb1196 ], [ %returnVal2.1.i.i.i32.i, %main_bb1198 ], [ %.0.i.i, %main_IofCompleteRequest.exit.i ], [ %"2874", %main_IofCompleteRequest.exit7.i ], [ %returnVal2.1.i.i.i16, %main_bb1285 ], [ %returnVal2.1.i.i.i16, %main_bb1288 ], [ %returnVal2.1.i.i.i16, %main_bb1289 ], [ %returnVal2.1.i.i.i16, %main_bb1291 ], [ %returnVal2.1.i.i12.i, %main_bb1351 ], [ %returnVal2.1.i.i12.i, %main_bb1354 ], [ %returnVal2.1.i.i12.i, %main_bb1355 ], [ %returnVal2.1.i.i12.i, %main_bb1357 ], [ %returnVal.0.i.i, %main_bb1378 ], [ %returnVal.0.i.i, %main_bb1381 ], [ %returnVal.0.i.i, %main_bb1382 ], [ %returnVal.0.i.i, %main_bb1384 ]
  br label %main_bb1387

main_bb1385:                                      ; preds = %main_bb1383
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_bb1386:                                      ; preds = %main_bb1361
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_bb1387:                                      ; preds = %main_CdAudioDeviceControl.exit, %main_bb917
  %status.1 = phi i32 [ %status.0, %main_CdAudioDeviceControl.exit ], [ %"1948", %main_bb917 ]
  %"2983" = load i32* @"'pended", align 4
  %"2984" = icmp eq i32 %"2983", 1
  br i1 %"2984", label %main_bb1388, label %main_bb1390

main_bb1388:                                      ; preds = %main_bb1387
  %"2985" = load i32* @"'s", align 4
  %"2986" = load i32* @"'NP", align 4
  %"2987" = icmp eq i32 %"2985", %"2986"
  br i1 %"2987", label %main_bb1389, label %main_bb1390

main_bb1389:                                      ; preds = %main_bb1388
  %"2988" = load i32* @"'NP", align 4
  store i32 %"2988", i32* @"'s", align 4
  br label %main_bb1406

main_bb1390:                                      ; preds = %main_bb1387, %main_bb1388
  %"2989" = load i32* @"'pended", align 4
  %"2990" = icmp eq i32 %"2989", 1
  br i1 %"2990", label %main_bb1391, label %main_bb1393

main_bb1391:                                      ; preds = %main_bb1390
  %"2991" = load i32* @"'s", align 4
  %"2992" = load i32* @"'MPR3", align 4
  %"2993" = icmp eq i32 %"2991", %"2992"
  br i1 %"2993", label %main_bb1392, label %main_bb1393

main_bb1392:                                      ; preds = %main_bb1391
  %"2994" = load i32* @"'MPR3", align 4
  store i32 %"2994", i32* @"'s", align 4
  br label %main_bb1406

main_bb1393:                                      ; preds = %main_bb1390, %main_bb1391
  %"2995" = load i32* @"'s", align 4
  %"2996" = load i32* @"'UNLOADED", align 4
  %"2997" = icmp ne i32 %"2995", %"2996"
  %"2998" = icmp ne i32 %status.1, -1
  %or.cond = and i1 %"2997", %"2998"
  br i1 %or.cond, label %main_bb1394, label %main_bb1406

main_bb1394:                                      ; preds = %main_bb1393
  %"2999" = load i32* @"'s", align 4
  %"3000" = load i32* @"'SKIP2", align 4
  %"3001" = icmp ne i32 %"2999", %"3000"
  br i1 %"3001", label %main_bb1395, label %main_bb1398

main_bb1395:                                      ; preds = %main_bb1394
  %"3002" = load i32* @"'s", align 4
  %"3003" = load i32* @"'IPC", align 4
  %"3004" = icmp ne i32 %"3002", %"3003"
  br i1 %"3004", label %main_bb1396, label %main_bb1398

main_bb1396:                                      ; preds = %main_bb1395
  %"3005" = load i32* @"'s", align 4
  %"3006" = load i32* @"'DC", align 4
  %"3007" = icmp ne i32 %"3005", %"3006"
  br i1 %"3007", label %main_bb1397, label %main_bb1398

main_bb1397:                                      ; preds = %main_bb1396
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_bb1398:                                      ; preds = %main_bb1394, %main_bb1395, %main_bb1396
  %"3008" = load i32* @"'pended", align 4
  %"3009" = icmp ne i32 %"3008", 1
  br i1 %"3009", label %main_bb1399, label %main_bb1404

main_bb1399:                                      ; preds = %main_bb1398
  %"3010" = load i32* @"'s", align 4
  %"3011" = load i32* @"'DC", align 4
  %"3012" = icmp eq i32 %"3010", %"3011"
  br i1 %"3012", label %main_bb1400, label %main_bb1402

main_bb1400:                                      ; preds = %main_bb1399
  %"3013" = icmp eq i32 %status.1, 259
  br i1 %"3013", label %main_bb1401, label %main_bb1406

main_bb1401:                                      ; preds = %main_bb1400
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_bb1402:                                      ; preds = %main_bb1399
  %"3014" = load i32* @"'lowerDriverReturn", align 4
  %"3015" = icmp ne i32 %status.1, %"3014"
  br i1 %"3015", label %main_bb1403, label %main_bb1406

main_bb1403:                                      ; preds = %main_bb1402
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_bb1404:                                      ; preds = %main_bb1398
  %"3016" = icmp ne i32 %status.1, 259
  br i1 %"3016", label %main_bb1405, label %main_bb1406

main_bb1405:                                      ; preds = %main_bb1404
  call void (...)* @__VERIFIER_error() #4
  unreachable

main_bb1406:                                      ; preds = %main_bb1389, %main_bb1393, %main_bb1404, %main_bb1400, %main_bb1402, %main_bb1392, %main_bb1360, %main_bb918
  %.0 = phi i32 [ -1, %main_bb918 ], [ -1, %main_bb1360 ], [ %status.1, %main_bb1392 ], [ %status.1, %main_bb1402 ], [ %status.1, %main_bb1400 ], [ %status.1, %main_bb1404 ], [ %status.1, %main_bb1393 ], [ %status.1, %main_bb1389 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @stubMoreProcessingRequired() #0 {
stubMoreProcessingRequired_bb1407:
  %"3017" = load i32* @"'s", align 4
  %"3018" = load i32* @"'NP", align 4
  %"3019" = icmp eq i32 %"3017", %"3018"
  br i1 %"3019", label %stubMoreProcessingRequired_bb1408, label %stubMoreProcessingRequired_bb1409

stubMoreProcessingRequired_bb1408:                ; preds = %stubMoreProcessingRequired_bb1407
  %"3020" = load i32* @"'MPR1", align 4
  store i32 %"3020", i32* @"'s", align 4
  ret void

stubMoreProcessingRequired_bb1409:                ; preds = %stubMoreProcessingRequired_bb1407
  call void (...)* @__VERIFIER_error() #4
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @IofCallDriver(i32 %DeviceObject, i32 %Irp) #0 {
IofCallDriver_bb1410:
  %"3021" = call i32 @__kittel_nondef.0()
  %"3022" = call i32 @__VERIFIER_nondet_int()
  %"3023" = call i32 @__VERIFIER_nondet_int()
  %"3024" = load i32* @"'compRegistered", align 4
  %"3025" = icmp ne i32 %"3024", 0
  br i1 %"3025", label %IofCallDriver_bb1411, label %IofCallDriver_bb1423

IofCallDriver_bb1411:                             ; preds = %IofCallDriver_bb1410
  %"3026" = load i32* @"'routine", align 4
  %"3027" = icmp eq i32 %"3026", 0
  br i1 %"3027", label %IofCallDriver_bb1412, label %IofCallDriver_bb1418

IofCallDriver_bb1412:                             ; preds = %IofCallDriver_bb1411
  %"3028" = call i32 @__VERIFIER_nondet_int() #5
  %"3029" = call i32 @__VERIFIER_nondet_int() #5
  %"3030" = icmp ne i32 %"3028", 0
  br i1 %"3030", label %IofCallDriver_bb1413, label %IofCallDriver_bb1416

IofCallDriver_bb1413:                             ; preds = %IofCallDriver_bb1412
  %"3031" = load i32* @"'pended", align 4
  %"3032" = icmp eq i32 %"3031", 0
  br i1 %"3032", label %IofCallDriver_bb1414, label %IofCallDriver_bb1415

IofCallDriver_bb1414:                             ; preds = %IofCallDriver_bb1413
  store i32 1, i32* @"'pended", align 4
  br label %IofCallDriver_bb1416

IofCallDriver_bb1415:                             ; preds = %IofCallDriver_bb1413
  call void (...)* @__VERIFIER_error() #4
  unreachable

IofCallDriver_bb1416:                             ; preds = %IofCallDriver_bb1414, %IofCallDriver_bb1412
  %"3033" = load i32* @"'myStatus", align 4
  %"3034" = icmp sge i32 %"3033", 0
  br i1 %"3034", label %IofCallDriver_bb1417, label %IofCallDriver_HPCdrCompletion.exit

IofCallDriver_bb1417:                             ; preds = %IofCallDriver_bb1416
  %"3035" = call i32 @__VERIFIER_nondet_int() #5
  br label %IofCallDriver_HPCdrCompletion.exit

IofCallDriver_HPCdrCompletion.exit:               ; preds = %IofCallDriver_bb1416, %IofCallDriver_bb1417
  %"3036" = load i32* @"'myStatus", align 4
  br label %IofCallDriver_bb1420

IofCallDriver_bb1418:                             ; preds = %IofCallDriver_bb1411
  %"3037" = load i32* @"'routine", align 4
  %"3038" = icmp eq i32 %"3037", 1
  br i1 %"3038", label %IofCallDriver_bb1419, label %IofCallDriver_bb1420

IofCallDriver_bb1419:                             ; preds = %IofCallDriver_bb1418
  %"3039" = call i32 @__VERIFIER_nondet_int() #5
  store i32 1, i32* @"'setEventCalled", align 4
  br label %IofCallDriver_bb1420

IofCallDriver_bb1420:                             ; preds = %IofCallDriver_bb1418, %IofCallDriver_bb1419, %IofCallDriver_HPCdrCompletion.exit
  %compRetStatus.1 = phi i32 [ %"3036", %IofCallDriver_HPCdrCompletion.exit ], [ -1073741802, %IofCallDriver_bb1419 ], [ %"3021", %IofCallDriver_bb1418 ]
  %"3040" = sext i32 %compRetStatus.1 to i64
  %"3041" = icmp eq i64 %"3040", -1073741802
  br i1 %"3041", label %IofCallDriver_bb1421, label %IofCallDriver_bb1423

IofCallDriver_bb1421:                             ; preds = %IofCallDriver_bb1420
  %"3042" = load i32* @"'s", align 4
  %"3043" = load i32* @"'NP", align 4
  %"3044" = icmp eq i32 %"3042", %"3043"
  br i1 %"3044", label %IofCallDriver_stubMoreProcessingRequired.exit, label %IofCallDriver_bb1422

IofCallDriver_stubMoreProcessingRequired.exit:    ; preds = %IofCallDriver_bb1421
  %"3045" = load i32* @"'MPR1", align 4
  store i32 %"3045", i32* @"'s", align 4
  br label %IofCallDriver_bb1423

IofCallDriver_bb1422:                             ; preds = %IofCallDriver_bb1421
  call void (...)* @__VERIFIER_error() #4
  unreachable

IofCallDriver_bb1423:                             ; preds = %IofCallDriver_bb1420, %IofCallDriver_stubMoreProcessingRequired.exit, %IofCallDriver_bb1410
  %"3046" = icmp ne i32 %"3022", 0
  br i1 %"3046", label %IofCallDriver_bb1426, label %IofCallDriver_bb1424

IofCallDriver_bb1424:                             ; preds = %IofCallDriver_bb1423
  %"3047" = call i32 @__VERIFIER_nondet_int()
  %"3048" = icmp eq i32 %"3047", 0
  br i1 %"3048", label %IofCallDriver_bb1426, label %IofCallDriver_bb1425

IofCallDriver_bb1425:                             ; preds = %IofCallDriver_bb1424
  %"3049" = call i32 @__VERIFIER_nondet_int()
  %"3050" = icmp eq i32 %"3049", 1
  %. = select i1 %"3050", i32 -1073741823, i32 259
  br label %IofCallDriver_bb1426

IofCallDriver_bb1426:                             ; preds = %IofCallDriver_bb1425, %IofCallDriver_bb1424, %IofCallDriver_bb1423
  %returnVal2.1 = phi i32 [ 259, %IofCallDriver_bb1423 ], [ 0, %IofCallDriver_bb1424 ], [ %., %IofCallDriver_bb1425 ]
  %"3051" = load i32* @"'s", align 4
  %"3052" = load i32* @"'NP", align 4
  %"3053" = icmp eq i32 %"3051", %"3052"
  br i1 %"3053", label %IofCallDriver_bb1427, label %IofCallDriver_bb1428

IofCallDriver_bb1427:                             ; preds = %IofCallDriver_bb1426
  %"3054" = load i32* @"'IPC", align 4
  store i32 %"3054", i32* @"'s", align 4
  store i32 %returnVal2.1, i32* @"'lowerDriverReturn", align 4
  br label %IofCallDriver_bb1434

IofCallDriver_bb1428:                             ; preds = %IofCallDriver_bb1426
  %"3055" = load i32* @"'s", align 4
  %"3056" = load i32* @"'MPR1", align 4
  %"3057" = icmp eq i32 %"3055", %"3056"
  br i1 %"3057", label %IofCallDriver_bb1429, label %IofCallDriver_bb1432

IofCallDriver_bb1429:                             ; preds = %IofCallDriver_bb1428
  %"3058" = icmp eq i32 %returnVal2.1, 259
  br i1 %"3058", label %IofCallDriver_bb1430, label %IofCallDriver_bb1431

IofCallDriver_bb1430:                             ; preds = %IofCallDriver_bb1429
  %"3059" = load i32* @"'MPR3", align 4
  store i32 %"3059", i32* @"'s", align 4
  store i32 %returnVal2.1, i32* @"'lowerDriverReturn", align 4
  br label %IofCallDriver_bb1434

IofCallDriver_bb1431:                             ; preds = %IofCallDriver_bb1429
  %"3060" = load i32* @"'NP", align 4
  store i32 %"3060", i32* @"'s", align 4
  store i32 %returnVal2.1, i32* @"'lowerDriverReturn", align 4
  br label %IofCallDriver_bb1434

IofCallDriver_bb1432:                             ; preds = %IofCallDriver_bb1428
  %"3061" = load i32* @"'s", align 4
  %"3062" = load i32* @"'SKIP1", align 4
  %"3063" = icmp eq i32 %"3061", %"3062"
  br i1 %"3063", label %IofCallDriver_bb1433, label %IofCallDriver_bb1435

IofCallDriver_bb1433:                             ; preds = %IofCallDriver_bb1432
  %"3064" = load i32* @"'SKIP2", align 4
  store i32 %"3064", i32* @"'s", align 4
  store i32 %returnVal2.1, i32* @"'lowerDriverReturn", align 4
  br label %IofCallDriver_bb1434

IofCallDriver_bb1434:                             ; preds = %IofCallDriver_bb1433, %IofCallDriver_bb1431, %IofCallDriver_bb1430, %IofCallDriver_bb1427
  ret i32 %returnVal2.1

IofCallDriver_bb1435:                             ; preds = %IofCallDriver_bb1432
  call void (...)* @__VERIFIER_error() #4
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @KeSetEvent(i32 %Event, i32 %Increment, i32 %Wait) #0 {
KeSetEvent_bb1436:
  %"3065" = call i32 @__VERIFIER_nondet_int()
  store i32 1, i32* @"'setEventCalled", align 4
  ret i32 %"3065"
}

; Function Attrs: nounwind uwtable
define i32 @KeWaitForSingleObject(i32 %Object, i32 %WaitReason, i32 %WaitMode, i32 %Alertable, i32 %Timeout) #0 {
KeWaitForSingleObject_bb1437:
  %"3066" = load i32* @"'s", align 4
  %"3067" = load i32* @"'MPR3", align 4
  %"3068" = icmp eq i32 %"3066", %"3067"
  %"3069" = load i32* @"'setEventCalled", align 4
  %"3070" = icmp eq i32 %"3069", 1
  %or.cond = and i1 %"3068", %"3070"
  br i1 %or.cond, label %KeWaitForSingleObject_bb1438, label %KeWaitForSingleObject_bb1439

KeWaitForSingleObject_bb1438:                     ; preds = %KeWaitForSingleObject_bb1437
  %"3071" = load i32* @"'NP", align 4
  store i32 %"3071", i32* @"'s", align 4
  store i32 0, i32* @"'setEventCalled", align 4
  br label %KeWaitForSingleObject_bb1443

KeWaitForSingleObject_bb1439:                     ; preds = %KeWaitForSingleObject_bb1437
  %"3072" = load i32* @"'customIrp", align 4
  %"3073" = icmp eq i32 %"3072", 1
  br i1 %"3073", label %KeWaitForSingleObject_bb1440, label %KeWaitForSingleObject_bb1441

KeWaitForSingleObject_bb1440:                     ; preds = %KeWaitForSingleObject_bb1439
  %"3074" = load i32* @"'NP", align 4
  store i32 %"3074", i32* @"'s", align 4
  store i32 0, i32* @"'customIrp", align 4
  br label %KeWaitForSingleObject_bb1443

KeWaitForSingleObject_bb1441:                     ; preds = %KeWaitForSingleObject_bb1439
  %"3075" = load i32* @"'s", align 4
  %"3076" = load i32* @"'MPR3", align 4
  %"3077" = icmp eq i32 %"3075", %"3076"
  br i1 %"3077", label %KeWaitForSingleObject_bb1442, label %KeWaitForSingleObject_bb1443

KeWaitForSingleObject_bb1442:                     ; preds = %KeWaitForSingleObject_bb1441
  call void (...)* @__VERIFIER_error() #4
  unreachable

KeWaitForSingleObject_bb1443:                     ; preds = %KeWaitForSingleObject_bb1440, %KeWaitForSingleObject_bb1441, %KeWaitForSingleObject_bb1438
  %"3078" = call i32 @__VERIFIER_nondet_int()
  %"3079" = icmp eq i32 %"3078", 0
  %.0 = select i1 %"3079", i32 0, i32 -1073741823
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @PoCallDriver(i32 %DeviceObject, i32 %Irp) #0 {
PoCallDriver_bb1444:
  %"3080" = call i32 @__kittel_nondef.0()
  %"3081" = call i32 @__VERIFIER_nondet_int()
  %"3082" = load i32* @"'compRegistered", align 4
  %"3083" = icmp ne i32 %"3082", 0
  br i1 %"3083", label %PoCallDriver_bb1445, label %PoCallDriver_bb1457

PoCallDriver_bb1445:                              ; preds = %PoCallDriver_bb1444
  %"3084" = load i32* @"'routine", align 4
  %"3085" = icmp eq i32 %"3084", 0
  br i1 %"3085", label %PoCallDriver_bb1446, label %PoCallDriver_bb1452

PoCallDriver_bb1446:                              ; preds = %PoCallDriver_bb1445
  %"3086" = call i32 @__VERIFIER_nondet_int() #5
  %"3087" = call i32 @__VERIFIER_nondet_int() #5
  %"3088" = icmp ne i32 %"3086", 0
  br i1 %"3088", label %PoCallDriver_bb1447, label %PoCallDriver_bb1450

PoCallDriver_bb1447:                              ; preds = %PoCallDriver_bb1446
  %"3089" = load i32* @"'pended", align 4
  %"3090" = icmp eq i32 %"3089", 0
  br i1 %"3090", label %PoCallDriver_bb1448, label %PoCallDriver_bb1449

PoCallDriver_bb1448:                              ; preds = %PoCallDriver_bb1447
  store i32 1, i32* @"'pended", align 4
  br label %PoCallDriver_bb1450

PoCallDriver_bb1449:                              ; preds = %PoCallDriver_bb1447
  call void (...)* @__VERIFIER_error() #4
  unreachable

PoCallDriver_bb1450:                              ; preds = %PoCallDriver_bb1448, %PoCallDriver_bb1446
  %"3091" = load i32* @"'myStatus", align 4
  %"3092" = icmp sge i32 %"3091", 0
  br i1 %"3092", label %PoCallDriver_bb1451, label %PoCallDriver_HPCdrCompletion.exit

PoCallDriver_bb1451:                              ; preds = %PoCallDriver_bb1450
  %"3093" = call i32 @__VERIFIER_nondet_int() #5
  br label %PoCallDriver_HPCdrCompletion.exit

PoCallDriver_HPCdrCompletion.exit:                ; preds = %PoCallDriver_bb1450, %PoCallDriver_bb1451
  %"3094" = load i32* @"'myStatus", align 4
  br label %PoCallDriver_bb1454

PoCallDriver_bb1452:                              ; preds = %PoCallDriver_bb1445
  %"3095" = load i32* @"'routine", align 4
  %"3096" = icmp eq i32 %"3095", 1
  br i1 %"3096", label %PoCallDriver_bb1453, label %PoCallDriver_bb1454

PoCallDriver_bb1453:                              ; preds = %PoCallDriver_bb1452
  %"3097" = call i32 @__VERIFIER_nondet_int() #5
  store i32 1, i32* @"'setEventCalled", align 4
  br label %PoCallDriver_bb1454

PoCallDriver_bb1454:                              ; preds = %PoCallDriver_bb1452, %PoCallDriver_bb1453, %PoCallDriver_HPCdrCompletion.exit
  %compRetStatus.1 = phi i32 [ %"3094", %PoCallDriver_HPCdrCompletion.exit ], [ -1073741802, %PoCallDriver_bb1453 ], [ %"3080", %PoCallDriver_bb1452 ]
  %"3098" = sext i32 %compRetStatus.1 to i64
  %"3099" = icmp eq i64 %"3098", -1073741802
  br i1 %"3099", label %PoCallDriver_bb1455, label %PoCallDriver_bb1457

PoCallDriver_bb1455:                              ; preds = %PoCallDriver_bb1454
  %"3100" = load i32* @"'s", align 4
  %"3101" = load i32* @"'NP", align 4
  %"3102" = icmp eq i32 %"3100", %"3101"
  br i1 %"3102", label %PoCallDriver_stubMoreProcessingRequired.exit, label %PoCallDriver_bb1456

PoCallDriver_stubMoreProcessingRequired.exit:     ; preds = %PoCallDriver_bb1455
  %"3103" = load i32* @"'MPR1", align 4
  store i32 %"3103", i32* @"'s", align 4
  br label %PoCallDriver_bb1457

PoCallDriver_bb1456:                              ; preds = %PoCallDriver_bb1455
  call void (...)* @__VERIFIER_error() #4
  unreachable

PoCallDriver_bb1457:                              ; preds = %PoCallDriver_bb1454, %PoCallDriver_stubMoreProcessingRequired.exit, %PoCallDriver_bb1444
  %"3104" = call i32 @__VERIFIER_nondet_int()
  %"3105" = icmp eq i32 %"3104", 0
  br i1 %"3105", label %PoCallDriver_bb1459, label %PoCallDriver_bb1458

PoCallDriver_bb1458:                              ; preds = %PoCallDriver_bb1457
  %"3106" = call i32 @__VERIFIER_nondet_int()
  %"3107" = icmp eq i32 %"3106", 1
  %. = select i1 %"3107", i32 -1073741823, i32 259
  br label %PoCallDriver_bb1459

PoCallDriver_bb1459:                              ; preds = %PoCallDriver_bb1458, %PoCallDriver_bb1457
  %returnVal.0 = phi i32 [ 0, %PoCallDriver_bb1457 ], [ %., %PoCallDriver_bb1458 ]
  %"3108" = load i32* @"'s", align 4
  %"3109" = load i32* @"'NP", align 4
  %"3110" = icmp eq i32 %"3108", %"3109"
  br i1 %"3110", label %PoCallDriver_bb1460, label %PoCallDriver_bb1461

PoCallDriver_bb1460:                              ; preds = %PoCallDriver_bb1459
  %"3111" = load i32* @"'IPC", align 4
  store i32 %"3111", i32* @"'s", align 4
  store i32 %returnVal.0, i32* @"'lowerDriverReturn", align 4
  br label %PoCallDriver_bb1467

PoCallDriver_bb1461:                              ; preds = %PoCallDriver_bb1459
  %"3112" = load i32* @"'s", align 4
  %"3113" = load i32* @"'MPR1", align 4
  %"3114" = icmp eq i32 %"3112", %"3113"
  br i1 %"3114", label %PoCallDriver_bb1462, label %PoCallDriver_bb1465

PoCallDriver_bb1462:                              ; preds = %PoCallDriver_bb1461
  %"3115" = sext i32 %returnVal.0 to i64
  %"3116" = icmp eq i64 %"3115", 259
  br i1 %"3116", label %PoCallDriver_bb1463, label %PoCallDriver_bb1464

PoCallDriver_bb1463:                              ; preds = %PoCallDriver_bb1462
  %"3117" = load i32* @"'MPR3", align 4
  store i32 %"3117", i32* @"'s", align 4
  store i32 %returnVal.0, i32* @"'lowerDriverReturn", align 4
  br label %PoCallDriver_bb1467

PoCallDriver_bb1464:                              ; preds = %PoCallDriver_bb1462
  %"3118" = load i32* @"'NP", align 4
  store i32 %"3118", i32* @"'s", align 4
  store i32 %returnVal.0, i32* @"'lowerDriverReturn", align 4
  br label %PoCallDriver_bb1467

PoCallDriver_bb1465:                              ; preds = %PoCallDriver_bb1461
  %"3119" = load i32* @"'s", align 4
  %"3120" = load i32* @"'SKIP1", align 4
  %"3121" = icmp eq i32 %"3119", %"3120"
  br i1 %"3121", label %PoCallDriver_bb1466, label %PoCallDriver_bb1468

PoCallDriver_bb1466:                              ; preds = %PoCallDriver_bb1465
  %"3122" = load i32* @"'SKIP2", align 4
  store i32 %"3122", i32* @"'s", align 4
  store i32 %returnVal.0, i32* @"'lowerDriverReturn", align 4
  br label %PoCallDriver_bb1467

PoCallDriver_bb1467:                              ; preds = %PoCallDriver_bb1466, %PoCallDriver_bb1464, %PoCallDriver_bb1463, %PoCallDriver_bb1460
  ret i32 %returnVal.0

PoCallDriver_bb1468:                              ; preds = %PoCallDriver_bb1465
  call void (...)* @__VERIFIER_error() #4
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @ZwClose(i32 %Handle) #0 {
ZwClose_bb1469:
  %"3123" = call i32 @__VERIFIER_nondet_int()
  %"3124" = icmp eq i32 %"3123", 0
  %.0 = select i1 %"3124", i32 0, i32 -1073741823
  ret i32 %.0
}

declare i32 @__kittel_nondef.0()

declare i64 @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

