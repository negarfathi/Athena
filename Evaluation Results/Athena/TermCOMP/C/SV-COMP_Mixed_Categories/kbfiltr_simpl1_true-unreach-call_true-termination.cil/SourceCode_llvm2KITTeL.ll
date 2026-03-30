; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
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
  %"0" = load i32* @"'NP", align 4, !dbg !53
  store i32 %"0", i32* @"'s", align 4, !dbg !53
  store i32 0, i32* @"'pended", align 4, !dbg !55
  store i32 0, i32* @"'compFptr", align 4, !dbg !56
  store i32 0, i32* @"'compRegistered", align 4, !dbg !57
  store i32 0, i32* @"'lowerDriverReturn", align 4, !dbg !58
  store i32 0, i32* @"'setEventCalled", align 4, !dbg !59
  store i32 0, i32* @"'customIrp", align 4, !dbg !60
  ret void, !dbg !61
}

; Function Attrs: nounwind uwtable
define void @_BLAST_init() #0 {
_BLAST_init_bb1:
  store i32 0, i32* @"'UNLOADED", align 4, !dbg !62
  store i32 1, i32* @"'NP", align 4, !dbg !64
  store i32 2, i32* @"'DC", align 4, !dbg !65
  store i32 3, i32* @"'SKIP1", align 4, !dbg !66
  store i32 4, i32* @"'SKIP2", align 4, !dbg !67
  store i32 5, i32* @"'MPR1", align 4, !dbg !68
  store i32 6, i32* @"'MPR3", align 4, !dbg !69
  store i32 7, i32* @"'IPC", align 4, !dbg !70
  %"1" = load i32* @"'UNLOADED", align 4, !dbg !71
  store i32 %"1", i32* @"'s", align 4, !dbg !71
  store i32 0, i32* @"'pended", align 4, !dbg !72
  store i32 0, i32* @"'compFptr", align 4, !dbg !73
  store i32 0, i32* @"'compRegistered", align 4, !dbg !74
  store i32 0, i32* @"'lowerDriverReturn", align 4, !dbg !75
  store i32 0, i32* @"'setEventCalled", align 4, !dbg !76
  store i32 0, i32* @"'customIrp", align 4, !dbg !77
  ret void, !dbg !78
}

; Function Attrs: nounwind uwtable
define i32 @KbFilter_PnP(i32 %DeviceObject, i32 %Irp) #0 {
KbFilter_PnP_bb2:
  call void @llvm.dbg.value(metadata !{i32 %DeviceObject}, i64 0, metadata !79), !dbg !80
  call void @llvm.dbg.value(metadata !{i32 %Irp}, i64 0, metadata !81), !dbg !82
  %"2" = call i32 @__VERIFIER_nondet_int(), !dbg !83
  call void @llvm.dbg.value(metadata !{i32 %"2"}, i64 0, metadata !84), !dbg !85
  %"3" = call i32 @__VERIFIER_nondet_int(), !dbg !86
  call void @llvm.dbg.value(metadata !{i32 %"3"}, i64 0, metadata !87), !dbg !88
  %"4" = call i32 @__VERIFIER_nondet_int(), !dbg !89
  call void @llvm.dbg.value(metadata !{i32 %"4"}, i64 0, metadata !90), !dbg !91
  %"5" = call i32 @__VERIFIER_nondet_int(), !dbg !92
  call void @llvm.dbg.value(metadata !{i32 %"5"}, i64 0, metadata !93), !dbg !94
  %"6" = call i32 @__VERIFIER_nondet_int(), !dbg !95
  call void @llvm.dbg.value(metadata !{i32 %"6"}, i64 0, metadata !96), !dbg !97
  %"7" = call i32 @__VERIFIER_nondet_int(), !dbg !98
  call void @llvm.dbg.value(metadata !{i32 %"7"}, i64 0, metadata !99), !dbg !100
  call void @llvm.dbg.value(metadata !101, i64 0, metadata !102), !dbg !103
  call void @llvm.dbg.value(metadata !{i32 %"3"}, i64 0, metadata !104), !dbg !105
  call void @llvm.dbg.value(metadata !{i32 %"4"}, i64 0, metadata !106), !dbg !107
  br label %KbFilter_PnP_NodeBlock21

KbFilter_PnP_NodeBlock21:                         ; preds = %KbFilter_PnP_bb2
  %Pivot22 = icmp slt i32 %"5", 2
  br i1 %Pivot22, label %KbFilter_PnP_LeafBlock, label %KbFilter_PnP_NodeBlock

KbFilter_PnP_LeafBlock:                           ; preds = %KbFilter_PnP_NodeBlock21
  %SwitchLeaf = icmp eq i32 %"5", 0
  br i1 %SwitchLeaf, label %KbFilter_PnP_bb3, label %KbFilter_PnP_NewDefault

KbFilter_PnP_bb3:                                 ; preds = %KbFilter_PnP_LeafBlock
  call void @llvm.dbg.value(metadata !{i32 %"4"}, i64 0, metadata !108), !dbg !109
  call void @llvm.dbg.value(metadata !101, i64 0, metadata !110), !dbg !111
  %"8" = load i32* @"'s", align 4, !dbg !112
  %"9" = load i32* @"'NP", align 4, !dbg !112
  %"10" = icmp ne i32 %"8", %"9", !dbg !112
  br i1 %"10", label %KbFilter_PnP_bb4, label %KbFilter_PnP_bb5, !dbg !112

KbFilter_PnP_bb4:                                 ; preds = %KbFilter_PnP_bb3
  call void (...)* @__VERIFIER_error() #4, !dbg !159
  unreachable, !dbg !159

KbFilter_PnP_bb5:                                 ; preds = %KbFilter_PnP_bb3
  %"11" = load i32* @"'compRegistered", align 4, !dbg !164
  %"12" = icmp ne i32 %"11", 0, !dbg !164
  br i1 %"12", label %KbFilter_PnP_bb6, label %KbFilter_PnP_bb7, !dbg !164

KbFilter_PnP_bb6:                                 ; preds = %KbFilter_PnP_bb5
  call void (...)* @__VERIFIER_error() #4, !dbg !167
  unreachable, !dbg !167

KbFilter_PnP_bb7:                                 ; preds = %KbFilter_PnP_bb5
  store i32 1, i32* @"'compRegistered", align 4, !dbg !171
  call void @llvm.dbg.value(metadata !173, i64 0, metadata !174), !dbg !175
  call void @llvm.dbg.value(metadata !{i32 %"6"}, i64 0, metadata !176) #5, !dbg !179
  call void @llvm.dbg.value(metadata !{i32 %Irp}, i64 0, metadata !180) #5, !dbg !181
  %"13" = call i32 @__VERIFIER_nondet_int() #5, !dbg !182
  call void @llvm.dbg.value(metadata !{i32 %"13"}, i64 0, metadata !183) #5, !dbg !184
  %"14" = load i32* @"'compRegistered", align 4, !dbg !185
  %"15" = icmp ne i32 %"14", 0, !dbg !185
  br i1 %"15", label %KbFilter_PnP_bb8, label %KbFilter_PnP_bb10, !dbg !185

KbFilter_PnP_bb8:                                 ; preds = %KbFilter_PnP_bb7
  call void @llvm.dbg.value(metadata !{i32 %"6"}, i64 0, metadata !188) #5, !dbg !191
  call void @llvm.dbg.value(metadata !{i32 %Irp}, i64 0, metadata !192) #5, !dbg !193
  call void @llvm.dbg.value(metadata !{i32 %"13"}, i64 0, metadata !194) #5, !dbg !195
  call void @llvm.dbg.value(metadata !{i32 %"13"}, i64 0, metadata !196) #5, !dbg !197
  call void @llvm.dbg.value(metadata !{i32 %"13"}, i64 0, metadata !198) #5, !dbg !202
  call void @llvm.dbg.value(metadata !101, i64 0, metadata !203) #5, !dbg !204
  call void @llvm.dbg.value(metadata !101, i64 0, metadata !205) #5, !dbg !206
  %"16" = call i32 @__VERIFIER_nondet_int() #5, !dbg !207
  call void @llvm.dbg.value(metadata !{i32 %"16"}, i64 0, metadata !208) #5, !dbg !209
  store i32 1, i32* @"'setEventCalled", align 4, !dbg !210
  call void @llvm.dbg.value(metadata !212, i64 0, metadata !213) #5, !dbg !214
  %"17" = load i32* @"'s", align 4, !dbg !215
  %"18" = load i32* @"'NP", align 4, !dbg !215
  %"19" = icmp eq i32 %"17", %"18", !dbg !215
  br i1 %"19", label %KbFilter_PnP_stubMoreProcessingRequired.exit.i, label %KbFilter_PnP_bb9, !dbg !215

KbFilter_PnP_stubMoreProcessingRequired.exit.i:   ; preds = %KbFilter_PnP_bb8
  %"20" = load i32* @"'MPR1", align 4, !dbg !219
  store i32 %"20", i32* @"'s", align 4, !dbg !219
  br label %KbFilter_PnP_bb10, !dbg !221

KbFilter_PnP_bb9:                                 ; preds = %KbFilter_PnP_bb8
  call void (...)* @__VERIFIER_error() #4, !dbg !222
  unreachable, !dbg !222

KbFilter_PnP_bb10:                                ; preds = %KbFilter_PnP_stubMoreProcessingRequired.exit.i, %KbFilter_PnP_bb7
  %"21" = call i32 @__VERIFIER_nondet_int() #5, !dbg !226
  call void @llvm.dbg.value(metadata !{i32 %"21"}, i64 0, metadata !227) #5, !dbg !228
  %"22" = icmp eq i32 %"21", 0, !dbg !229
  br i1 %"22", label %KbFilter_PnP_bb12, label %KbFilter_PnP_bb11, !dbg !229

KbFilter_PnP_bb11:                                ; preds = %KbFilter_PnP_bb10
  %"23" = call i32 @__VERIFIER_nondet_int() #5, !dbg !231
  call void @llvm.dbg.value(metadata !{i32 %"23"}, i64 0, metadata !233) #5, !dbg !234
  %"24" = icmp eq i32 %"23", 1, !dbg !235
  call void @llvm.dbg.value(metadata !237, i64 0, metadata !238) #5, !dbg !239
  %..i = select i1 %"24", i32 -1073741823, i32 259, !dbg !235
  br label %KbFilter_PnP_bb12, !dbg !235

KbFilter_PnP_bb12:                                ; preds = %KbFilter_PnP_bb11, %KbFilter_PnP_bb10
  %returnVal2.0.i = phi i32 [ 0, %KbFilter_PnP_bb10 ], [ %..i, %KbFilter_PnP_bb11 ], !dbg !177
  %"25" = load i32* @"'s", align 4, !dbg !240
  %"26" = load i32* @"'NP", align 4, !dbg !240
  %"27" = icmp eq i32 %"25", %"26", !dbg !240
  br i1 %"27", label %KbFilter_PnP_bb13, label %KbFilter_PnP_bb14, !dbg !240

KbFilter_PnP_bb13:                                ; preds = %KbFilter_PnP_bb12
  %"28" = load i32* @"'IPC", align 4, !dbg !242
  store i32 %"28", i32* @"'s", align 4, !dbg !242
  store i32 %returnVal2.0.i, i32* @"'lowerDriverReturn", align 4, !dbg !244
  br label %KbFilter_PnP_IofCallDriver.exit, !dbg !245

KbFilter_PnP_bb14:                                ; preds = %KbFilter_PnP_bb12
  %"29" = load i32* @"'s", align 4, !dbg !246
  %"30" = load i32* @"'MPR1", align 4, !dbg !246
  %"31" = icmp eq i32 %"29", %"30", !dbg !246
  br i1 %"31", label %KbFilter_PnP_bb15, label %KbFilter_PnP_bb18, !dbg !246

KbFilter_PnP_bb15:                                ; preds = %KbFilter_PnP_bb14
  %"32" = icmp eq i32 %returnVal2.0.i, 259, !dbg !249
  br i1 %"32", label %KbFilter_PnP_bb16, label %KbFilter_PnP_bb17, !dbg !249

KbFilter_PnP_bb16:                                ; preds = %KbFilter_PnP_bb15
  %"33" = load i32* @"'MPR3", align 4, !dbg !252
  store i32 %"33", i32* @"'s", align 4, !dbg !252
  store i32 %returnVal2.0.i, i32* @"'lowerDriverReturn", align 4, !dbg !254
  br label %KbFilter_PnP_IofCallDriver.exit, !dbg !255

KbFilter_PnP_bb17:                                ; preds = %KbFilter_PnP_bb15
  %"34" = load i32* @"'NP", align 4, !dbg !256
  store i32 %"34", i32* @"'s", align 4, !dbg !256
  store i32 %returnVal2.0.i, i32* @"'lowerDriverReturn", align 4, !dbg !258
  br label %KbFilter_PnP_IofCallDriver.exit, !dbg !177

KbFilter_PnP_bb18:                                ; preds = %KbFilter_PnP_bb14
  %"35" = load i32* @"'s", align 4, !dbg !259
  %"36" = load i32* @"'SKIP1", align 4, !dbg !259
  %"37" = icmp eq i32 %"35", %"36", !dbg !259
  br i1 %"37", label %KbFilter_PnP_bb19, label %KbFilter_PnP_bb30, !dbg !259

KbFilter_PnP_bb19:                                ; preds = %KbFilter_PnP_bb18
  %"38" = load i32* @"'SKIP2", align 4, !dbg !262
  store i32 %"38", i32* @"'s", align 4, !dbg !262
  store i32 %returnVal2.0.i, i32* @"'lowerDriverReturn", align 4, !dbg !264
  br label %KbFilter_PnP_IofCallDriver.exit, !dbg !177

KbFilter_PnP_IofCallDriver.exit:                  ; preds = %KbFilter_PnP_bb13, %KbFilter_PnP_bb16, %KbFilter_PnP_bb17, %KbFilter_PnP_bb19
  call void @llvm.dbg.value(metadata !{i32 %returnVal2.0.i}, i64 0, metadata !102), !dbg !103
  %"39" = sext i32 %returnVal2.0.i to i64, !dbg !265
  call void @llvm.dbg.value(metadata !{i64 %"39"}, i64 0, metadata !267), !dbg !269
  %"40" = icmp eq i64 %"39", 259, !dbg !270
  br i1 %"40", label %KbFilter_PnP_bb20, label %KbFilter_PnP_bb26, !dbg !270

KbFilter_PnP_bb20:                                ; preds = %KbFilter_PnP_IofCallDriver.exit
  call void @llvm.dbg.value(metadata !{i32 %"2"}, i64 0, metadata !272) #5, !dbg !276
  call void @llvm.dbg.value(metadata !101, i64 0, metadata !277) #5, !dbg !278
  call void @llvm.dbg.value(metadata !101, i64 0, metadata !279) #5, !dbg !280
  %"41" = load i32* @"'s", align 4, !dbg !281
  %"42" = load i32* @"'MPR3", align 4, !dbg !281
  %"43" = icmp eq i32 %"41", %"42", !dbg !281
  %"44" = load i32* @"'setEventCalled", align 4, !dbg !273
  %"45" = icmp eq i32 %"44", 1, !dbg !284
  %or.cond.i = and i1 %"43", %"45", !dbg !281
  br i1 %or.cond.i, label %KbFilter_PnP_bb21, label %KbFilter_PnP_bb22, !dbg !281

KbFilter_PnP_bb21:                                ; preds = %KbFilter_PnP_bb20
  %"46" = load i32* @"'NP", align 4, !dbg !287
  store i32 %"46", i32* @"'s", align 4, !dbg !287
  store i32 0, i32* @"'setEventCalled", align 4, !dbg !289
  br label %KbFilter_PnP_KeWaitForSingleObject.exit, !dbg !290

KbFilter_PnP_bb22:                                ; preds = %KbFilter_PnP_bb20
  %"47" = load i32* @"'customIrp", align 4, !dbg !291
  %"48" = icmp eq i32 %"47", 1, !dbg !291
  br i1 %"48", label %KbFilter_PnP_bb23, label %KbFilter_PnP_bb24, !dbg !291

KbFilter_PnP_bb23:                                ; preds = %KbFilter_PnP_bb22
  %"49" = load i32* @"'NP", align 4, !dbg !294
  store i32 %"49", i32* @"'s", align 4, !dbg !294
  store i32 0, i32* @"'customIrp", align 4, !dbg !296
  br label %KbFilter_PnP_KeWaitForSingleObject.exit, !dbg !297

KbFilter_PnP_bb24:                                ; preds = %KbFilter_PnP_bb22
  %"50" = load i32* @"'s", align 4, !dbg !298
  %"51" = load i32* @"'MPR3", align 4, !dbg !298
  %"52" = icmp eq i32 %"50", %"51", !dbg !298
  br i1 %"52", label %KbFilter_PnP_bb25, label %KbFilter_PnP_KeWaitForSingleObject.exit, !dbg !298

KbFilter_PnP_bb25:                                ; preds = %KbFilter_PnP_bb24
  call void (...)* @__VERIFIER_error() #4, !dbg !301
  unreachable, !dbg !301

KbFilter_PnP_KeWaitForSingleObject.exit:          ; preds = %KbFilter_PnP_bb21, %KbFilter_PnP_bb23, %KbFilter_PnP_bb24
  %"53" = call i32 @__VERIFIER_nondet_int() #5, !dbg !305
  call void @llvm.dbg.value(metadata !{i32 %"53"}, i64 0, metadata !306) #5, !dbg !307
  br label %KbFilter_PnP_bb26, !dbg !308

KbFilter_PnP_bb26:                                ; preds = %KbFilter_PnP_KeWaitForSingleObject.exit, %KbFilter_PnP_IofCallDriver.exit
  %"54" = icmp sge i32 %returnVal2.0.i, 0, !dbg !309
  br i1 %"54", label %KbFilter_PnP_bb27, label %KbFilter_PnP_bb28, !dbg !309

KbFilter_PnP_bb27:                                ; preds = %KbFilter_PnP_bb26
  br label %KbFilter_PnP_bb28, !dbg !311

KbFilter_PnP_bb28:                                ; preds = %KbFilter_PnP_bb27, %KbFilter_PnP_bb26
  call void @llvm.dbg.value(metadata !{i32 %returnVal2.0.i}, i64 0, metadata !313), !dbg !314
  store i32 %returnVal2.0.i, i32* @"'myStatus", align 4, !dbg !315
  call void @llvm.dbg.value(metadata !101, i64 0, metadata !317), !dbg !318
  call void @llvm.dbg.value(metadata !{i32 %Irp}, i64 0, metadata !319) #5, !dbg !321
  call void @llvm.dbg.value(metadata !101, i64 0, metadata !322) #5, !dbg !323
  %"55" = load i32* @"'s", align 4, !dbg !324
  %"56" = load i32* @"'NP", align 4, !dbg !324
  %"57" = icmp eq i32 %"55", %"56", !dbg !324
  br i1 %"57", label %KbFilter_PnP_IofCompleteRequest.exit, label %KbFilter_PnP_bb29, !dbg !324

KbFilter_PnP_IofCompleteRequest.exit:             ; preds = %KbFilter_PnP_bb28
  %"58" = load i32* @"'DC", align 4, !dbg !327
  store i32 %"58", i32* @"'s", align 4, !dbg !327
  br label %KbFilter_PnP_IofCallDriver.exit6, !dbg !329

KbFilter_PnP_bb29:                                ; preds = %KbFilter_PnP_bb28
  call void (...)* @__VERIFIER_error() #4, !dbg !330
  unreachable, !dbg !330

KbFilter_PnP_bb30:                                ; preds = %KbFilter_PnP_bb18
  call void (...)* @__VERIFIER_error() #4, !dbg !334
  unreachable, !dbg !334

KbFilter_PnP_NodeBlock:                           ; preds = %KbFilter_PnP_NodeBlock21
  %Pivot = icmp slt i32 %"5", 23
  br i1 %Pivot, label %KbFilter_PnP_LeafBlock17, label %KbFilter_PnP_LeafBlock19

KbFilter_PnP_LeafBlock17:                         ; preds = %KbFilter_PnP_NodeBlock
  %SwitchLeaf18 = icmp eq i32 %"5", 2
  br i1 %SwitchLeaf18, label %KbFilter_PnP_bb31, label %KbFilter_PnP_NewDefault

KbFilter_PnP_bb31:                                ; preds = %KbFilter_PnP_LeafBlock17
  call void @llvm.dbg.value(metadata !338, i64 0, metadata !339), !dbg !340
  %"59" = load i32* @"'s", align 4, !dbg !341
  %"60" = load i32* @"'NP", align 4, !dbg !341
  %"61" = icmp eq i32 %"59", %"60", !dbg !341
  br i1 %"61", label %KbFilter_PnP_bb32, label %KbFilter_PnP_bb46, !dbg !341

KbFilter_PnP_bb32:                                ; preds = %KbFilter_PnP_bb31
  %"62" = load i32* @"'SKIP1", align 4, !dbg !343
  store i32 %"62", i32* @"'s", align 4, !dbg !343
  call void @llvm.dbg.value(metadata !{i32 %"6"}, i64 0, metadata !345) #5, !dbg !348
  call void @llvm.dbg.value(metadata !{i32 %Irp}, i64 0, metadata !349) #5, !dbg !350
  %"63" = call i32 @__VERIFIER_nondet_int() #5, !dbg !351
  call void @llvm.dbg.value(metadata !{i32 %"63"}, i64 0, metadata !352) #5, !dbg !353
  %"64" = load i32* @"'compRegistered", align 4, !dbg !354
  %"65" = icmp ne i32 %"64", 0, !dbg !354
  br i1 %"65", label %KbFilter_PnP_bb33, label %KbFilter_PnP_bb35, !dbg !354

KbFilter_PnP_bb33:                                ; preds = %KbFilter_PnP_bb32
  call void @llvm.dbg.value(metadata !{i32 %"6"}, i64 0, metadata !355) #5, !dbg !357
  call void @llvm.dbg.value(metadata !{i32 %Irp}, i64 0, metadata !358) #5, !dbg !359
  call void @llvm.dbg.value(metadata !{i32 %"63"}, i64 0, metadata !360) #5, !dbg !361
  call void @llvm.dbg.value(metadata !{i32 %"63"}, i64 0, metadata !362) #5, !dbg !363
  call void @llvm.dbg.value(metadata !{i32 %"63"}, i64 0, metadata !364) #5, !dbg !366
  call void @llvm.dbg.value(metadata !101, i64 0, metadata !367) #5, !dbg !368
  call void @llvm.dbg.value(metadata !101, i64 0, metadata !369) #5, !dbg !370
  %"66" = call i32 @__VERIFIER_nondet_int() #5, !dbg !371
  call void @llvm.dbg.value(metadata !{i32 %"66"}, i64 0, metadata !372) #5, !dbg !373
  store i32 1, i32* @"'setEventCalled", align 4, !dbg !374
  call void @llvm.dbg.value(metadata !212, i64 0, metadata !375) #5, !dbg !376
  %"67" = load i32* @"'s", align 4, !dbg !377
  %"68" = load i32* @"'NP", align 4, !dbg !377
  %"69" = icmp eq i32 %"67", %"68", !dbg !377
  br i1 %"69", label %KbFilter_PnP_stubMoreProcessingRequired.exit.i8, label %KbFilter_PnP_bb34, !dbg !377

KbFilter_PnP_stubMoreProcessingRequired.exit.i8:  ; preds = %KbFilter_PnP_bb33
  %"70" = load i32* @"'MPR1", align 4, !dbg !379
  store i32 %"70", i32* @"'s", align 4, !dbg !379
  br label %KbFilter_PnP_bb35, !dbg !380

KbFilter_PnP_bb34:                                ; preds = %KbFilter_PnP_bb33
  call void (...)* @__VERIFIER_error() #4, !dbg !381
  unreachable, !dbg !381

KbFilter_PnP_bb35:                                ; preds = %KbFilter_PnP_stubMoreProcessingRequired.exit.i8, %KbFilter_PnP_bb32
  %"71" = call i32 @__VERIFIER_nondet_int() #5, !dbg !383
  call void @llvm.dbg.value(metadata !{i32 %"71"}, i64 0, metadata !384) #5, !dbg !385
  %"72" = icmp eq i32 %"71", 0, !dbg !386
  br i1 %"72", label %KbFilter_PnP_bb37, label %KbFilter_PnP_bb36, !dbg !386

KbFilter_PnP_bb36:                                ; preds = %KbFilter_PnP_bb35
  %"73" = call i32 @__VERIFIER_nondet_int() #5, !dbg !387
  call void @llvm.dbg.value(metadata !{i32 %"73"}, i64 0, metadata !388) #5, !dbg !389
  %"74" = icmp eq i32 %"73", 1, !dbg !390
  call void @llvm.dbg.value(metadata !237, i64 0, metadata !391) #5, !dbg !392
  %..i9 = select i1 %"74", i32 -1073741823, i32 259, !dbg !390
  br label %KbFilter_PnP_bb37, !dbg !390

KbFilter_PnP_bb37:                                ; preds = %KbFilter_PnP_bb36, %KbFilter_PnP_bb35
  %returnVal2.0.i10 = phi i32 [ 0, %KbFilter_PnP_bb35 ], [ %..i9, %KbFilter_PnP_bb36 ], !dbg !346
  %"75" = load i32* @"'s", align 4, !dbg !393
  %"76" = load i32* @"'NP", align 4, !dbg !393
  %"77" = icmp eq i32 %"75", %"76", !dbg !393
  br i1 %"77", label %KbFilter_PnP_bb38, label %KbFilter_PnP_bb39, !dbg !393

KbFilter_PnP_bb38:                                ; preds = %KbFilter_PnP_bb37
  %"78" = load i32* @"'IPC", align 4, !dbg !394
  store i32 %"78", i32* @"'s", align 4, !dbg !394
  store i32 %returnVal2.0.i10, i32* @"'lowerDriverReturn", align 4, !dbg !395
  br label %KbFilter_PnP_IofCallDriver.exit6, !dbg !396

KbFilter_PnP_bb39:                                ; preds = %KbFilter_PnP_bb37
  %"79" = load i32* @"'s", align 4, !dbg !397
  %"80" = load i32* @"'MPR1", align 4, !dbg !397
  %"81" = icmp eq i32 %"79", %"80", !dbg !397
  br i1 %"81", label %KbFilter_PnP_bb40, label %KbFilter_PnP_bb43, !dbg !397

KbFilter_PnP_bb40:                                ; preds = %KbFilter_PnP_bb39
  %"82" = icmp eq i32 %returnVal2.0.i10, 259, !dbg !398
  br i1 %"82", label %KbFilter_PnP_bb41, label %KbFilter_PnP_bb42, !dbg !398

KbFilter_PnP_bb41:                                ; preds = %KbFilter_PnP_bb40
  %"83" = load i32* @"'MPR3", align 4, !dbg !399
  store i32 %"83", i32* @"'s", align 4, !dbg !399
  store i32 %returnVal2.0.i10, i32* @"'lowerDriverReturn", align 4, !dbg !400
  br label %KbFilter_PnP_IofCallDriver.exit6, !dbg !401

KbFilter_PnP_bb42:                                ; preds = %KbFilter_PnP_bb40
  %"84" = load i32* @"'NP", align 4, !dbg !402
  store i32 %"84", i32* @"'s", align 4, !dbg !402
  store i32 %returnVal2.0.i10, i32* @"'lowerDriverReturn", align 4, !dbg !403
  br label %KbFilter_PnP_IofCallDriver.exit6, !dbg !346

KbFilter_PnP_bb43:                                ; preds = %KbFilter_PnP_bb39
  %"85" = load i32* @"'s", align 4, !dbg !404
  %"86" = load i32* @"'SKIP1", align 4, !dbg !404
  %"87" = icmp eq i32 %"85", %"86", !dbg !404
  br i1 %"87", label %KbFilter_PnP_bb44, label %KbFilter_PnP_bb45, !dbg !404

KbFilter_PnP_bb44:                                ; preds = %KbFilter_PnP_bb43
  %"88" = load i32* @"'SKIP2", align 4, !dbg !405
  store i32 %"88", i32* @"'s", align 4, !dbg !405
  store i32 %returnVal2.0.i10, i32* @"'lowerDriverReturn", align 4, !dbg !406
  br label %KbFilter_PnP_IofCallDriver.exit6, !dbg !346

KbFilter_PnP_bb45:                                ; preds = %KbFilter_PnP_bb43
  call void (...)* @__VERIFIER_error() #4, !dbg !407
  unreachable, !dbg !407

KbFilter_PnP_bb46:                                ; preds = %KbFilter_PnP_bb31
  call void (...)* @__VERIFIER_error() #4, !dbg !409
  unreachable, !dbg !409

KbFilter_PnP_LeafBlock19:                         ; preds = %KbFilter_PnP_NodeBlock
  %SwitchLeaf20 = icmp eq i32 %"5", 23
  br i1 %SwitchLeaf20, label %KbFilter_PnP_bb47, label %KbFilter_PnP_NewDefault

KbFilter_PnP_bb47:                                ; preds = %KbFilter_PnP_LeafBlock19
  call void @llvm.dbg.value(metadata !338, i64 0, metadata !413), !dbg !414
  %"89" = load i32* @"'s", align 4, !dbg !415
  %"90" = load i32* @"'NP", align 4, !dbg !415
  %"91" = icmp eq i32 %"89", %"90", !dbg !415
  br i1 %"91", label %KbFilter_PnP_bb48, label %KbFilter_PnP_bb62, !dbg !415

KbFilter_PnP_bb48:                                ; preds = %KbFilter_PnP_bb47
  %"92" = load i32* @"'SKIP1", align 4, !dbg !417
  store i32 %"92", i32* @"'s", align 4, !dbg !417
  call void @llvm.dbg.value(metadata !{i32 %"6"}, i64 0, metadata !419) #5, !dbg !422
  call void @llvm.dbg.value(metadata !{i32 %Irp}, i64 0, metadata !423) #5, !dbg !424
  %"93" = call i32 @__VERIFIER_nondet_int() #5, !dbg !425
  call void @llvm.dbg.value(metadata !{i32 %"93"}, i64 0, metadata !426) #5, !dbg !427
  %"94" = load i32* @"'compRegistered", align 4, !dbg !428
  %"95" = icmp ne i32 %"94", 0, !dbg !428
  br i1 %"95", label %KbFilter_PnP_bb49, label %KbFilter_PnP_bb51, !dbg !428

KbFilter_PnP_bb49:                                ; preds = %KbFilter_PnP_bb48
  call void @llvm.dbg.value(metadata !{i32 %"6"}, i64 0, metadata !429) #5, !dbg !431
  call void @llvm.dbg.value(metadata !{i32 %Irp}, i64 0, metadata !432) #5, !dbg !433
  call void @llvm.dbg.value(metadata !{i32 %"93"}, i64 0, metadata !434) #5, !dbg !435
  call void @llvm.dbg.value(metadata !{i32 %"93"}, i64 0, metadata !436) #5, !dbg !437
  call void @llvm.dbg.value(metadata !{i32 %"93"}, i64 0, metadata !438) #5, !dbg !440
  call void @llvm.dbg.value(metadata !101, i64 0, metadata !441) #5, !dbg !442
  call void @llvm.dbg.value(metadata !101, i64 0, metadata !443) #5, !dbg !444
  %"96" = call i32 @__VERIFIER_nondet_int() #5, !dbg !445
  call void @llvm.dbg.value(metadata !{i32 %"96"}, i64 0, metadata !446) #5, !dbg !447
  store i32 1, i32* @"'setEventCalled", align 4, !dbg !448
  call void @llvm.dbg.value(metadata !212, i64 0, metadata !449) #5, !dbg !450
  %"97" = load i32* @"'s", align 4, !dbg !451
  %"98" = load i32* @"'NP", align 4, !dbg !451
  %"99" = icmp eq i32 %"97", %"98", !dbg !451
  br i1 %"99", label %KbFilter_PnP_stubMoreProcessingRequired.exit.i3, label %KbFilter_PnP_bb50, !dbg !451

KbFilter_PnP_stubMoreProcessingRequired.exit.i3:  ; preds = %KbFilter_PnP_bb49
  %"100" = load i32* @"'MPR1", align 4, !dbg !453
  store i32 %"100", i32* @"'s", align 4, !dbg !453
  br label %KbFilter_PnP_bb51, !dbg !454

KbFilter_PnP_bb50:                                ; preds = %KbFilter_PnP_bb49
  call void (...)* @__VERIFIER_error() #4, !dbg !455
  unreachable, !dbg !455

KbFilter_PnP_bb51:                                ; preds = %KbFilter_PnP_stubMoreProcessingRequired.exit.i3, %KbFilter_PnP_bb48
  %"101" = call i32 @__VERIFIER_nondet_int() #5, !dbg !457
  call void @llvm.dbg.value(metadata !{i32 %"101"}, i64 0, metadata !458) #5, !dbg !459
  %"102" = icmp eq i32 %"101", 0, !dbg !460
  br i1 %"102", label %KbFilter_PnP_bb53, label %KbFilter_PnP_bb52, !dbg !460

KbFilter_PnP_bb52:                                ; preds = %KbFilter_PnP_bb51
  %"103" = call i32 @__VERIFIER_nondet_int() #5, !dbg !461
  call void @llvm.dbg.value(metadata !{i32 %"103"}, i64 0, metadata !462) #5, !dbg !463
  %"104" = icmp eq i32 %"103", 1, !dbg !464
  call void @llvm.dbg.value(metadata !237, i64 0, metadata !465) #5, !dbg !466
  %..i4 = select i1 %"104", i32 -1073741823, i32 259, !dbg !464
  br label %KbFilter_PnP_bb53, !dbg !464

KbFilter_PnP_bb53:                                ; preds = %KbFilter_PnP_bb52, %KbFilter_PnP_bb51
  %returnVal2.0.i5 = phi i32 [ 0, %KbFilter_PnP_bb51 ], [ %..i4, %KbFilter_PnP_bb52 ], !dbg !420
  %"105" = load i32* @"'s", align 4, !dbg !467
  %"106" = load i32* @"'NP", align 4, !dbg !467
  %"107" = icmp eq i32 %"105", %"106", !dbg !467
  br i1 %"107", label %KbFilter_PnP_bb54, label %KbFilter_PnP_bb55, !dbg !467

KbFilter_PnP_bb54:                                ; preds = %KbFilter_PnP_bb53
  %"108" = load i32* @"'IPC", align 4, !dbg !468
  store i32 %"108", i32* @"'s", align 4, !dbg !468
  store i32 %returnVal2.0.i5, i32* @"'lowerDriverReturn", align 4, !dbg !469
  br label %KbFilter_PnP_IofCallDriver.exit6, !dbg !470

KbFilter_PnP_bb55:                                ; preds = %KbFilter_PnP_bb53
  %"109" = load i32* @"'s", align 4, !dbg !471
  %"110" = load i32* @"'MPR1", align 4, !dbg !471
  %"111" = icmp eq i32 %"109", %"110", !dbg !471
  br i1 %"111", label %KbFilter_PnP_bb56, label %KbFilter_PnP_bb59, !dbg !471

KbFilter_PnP_bb56:                                ; preds = %KbFilter_PnP_bb55
  %"112" = icmp eq i32 %returnVal2.0.i5, 259, !dbg !472
  br i1 %"112", label %KbFilter_PnP_bb57, label %KbFilter_PnP_bb58, !dbg !472

KbFilter_PnP_bb57:                                ; preds = %KbFilter_PnP_bb56
  %"113" = load i32* @"'MPR3", align 4, !dbg !473
  store i32 %"113", i32* @"'s", align 4, !dbg !473
  store i32 %returnVal2.0.i5, i32* @"'lowerDriverReturn", align 4, !dbg !474
  br label %KbFilter_PnP_IofCallDriver.exit6, !dbg !475

KbFilter_PnP_bb58:                                ; preds = %KbFilter_PnP_bb56
  %"114" = load i32* @"'NP", align 4, !dbg !476
  store i32 %"114", i32* @"'s", align 4, !dbg !476
  store i32 %returnVal2.0.i5, i32* @"'lowerDriverReturn", align 4, !dbg !477
  br label %KbFilter_PnP_IofCallDriver.exit6, !dbg !420

KbFilter_PnP_bb59:                                ; preds = %KbFilter_PnP_bb55
  %"115" = load i32* @"'s", align 4, !dbg !478
  %"116" = load i32* @"'SKIP1", align 4, !dbg !478
  %"117" = icmp eq i32 %"115", %"116", !dbg !478
  br i1 %"117", label %KbFilter_PnP_bb60, label %KbFilter_PnP_bb61, !dbg !478

KbFilter_PnP_bb60:                                ; preds = %KbFilter_PnP_bb59
  %"118" = load i32* @"'SKIP2", align 4, !dbg !479
  store i32 %"118", i32* @"'s", align 4, !dbg !479
  store i32 %returnVal2.0.i5, i32* @"'lowerDriverReturn", align 4, !dbg !480
  br label %KbFilter_PnP_IofCallDriver.exit6, !dbg !420

KbFilter_PnP_bb61:                                ; preds = %KbFilter_PnP_bb59
  call void (...)* @__VERIFIER_error() #4, !dbg !481
  unreachable, !dbg !481

KbFilter_PnP_bb62:                                ; preds = %KbFilter_PnP_bb47
  call void (...)* @__VERIFIER_error() #4, !dbg !483
  unreachable, !dbg !483

KbFilter_PnP_NewDefault:                          ; preds = %KbFilter_PnP_LeafBlock19, %KbFilter_PnP_LeafBlock17, %KbFilter_PnP_LeafBlock
  br label %KbFilter_PnP_bb63

KbFilter_PnP_bb63:                                ; preds = %KbFilter_PnP_NewDefault
  %"119" = load i32* @"'s", align 4, !dbg !487
  %"120" = load i32* @"'NP", align 4, !dbg !487
  %"121" = icmp eq i32 %"119", %"120", !dbg !487
  br i1 %"121", label %KbFilter_PnP_bb64, label %KbFilter_PnP_bb78, !dbg !487

KbFilter_PnP_bb64:                                ; preds = %KbFilter_PnP_bb63
  %"122" = load i32* @"'SKIP1", align 4, !dbg !489
  store i32 %"122", i32* @"'s", align 4, !dbg !489
  call void @llvm.dbg.value(metadata !{i32 %"6"}, i64 0, metadata !491) #5, !dbg !494
  call void @llvm.dbg.value(metadata !{i32 %Irp}, i64 0, metadata !495) #5, !dbg !496
  %"123" = call i32 @__VERIFIER_nondet_int() #5, !dbg !497
  call void @llvm.dbg.value(metadata !{i32 %"123"}, i64 0, metadata !498) #5, !dbg !499
  %"124" = load i32* @"'compRegistered", align 4, !dbg !500
  %"125" = icmp ne i32 %"124", 0, !dbg !500
  br i1 %"125", label %KbFilter_PnP_bb65, label %KbFilter_PnP_bb67, !dbg !500

KbFilter_PnP_bb65:                                ; preds = %KbFilter_PnP_bb64
  call void @llvm.dbg.value(metadata !{i32 %"6"}, i64 0, metadata !501) #5, !dbg !503
  call void @llvm.dbg.value(metadata !{i32 %Irp}, i64 0, metadata !504) #5, !dbg !505
  call void @llvm.dbg.value(metadata !{i32 %"123"}, i64 0, metadata !506) #5, !dbg !507
  call void @llvm.dbg.value(metadata !{i32 %"123"}, i64 0, metadata !508) #5, !dbg !509
  call void @llvm.dbg.value(metadata !{i32 %"123"}, i64 0, metadata !510) #5, !dbg !512
  call void @llvm.dbg.value(metadata !101, i64 0, metadata !513) #5, !dbg !514
  call void @llvm.dbg.value(metadata !101, i64 0, metadata !515) #5, !dbg !516
  %"126" = call i32 @__VERIFIER_nondet_int() #5, !dbg !517
  call void @llvm.dbg.value(metadata !{i32 %"126"}, i64 0, metadata !518) #5, !dbg !519
  store i32 1, i32* @"'setEventCalled", align 4, !dbg !520
  call void @llvm.dbg.value(metadata !212, i64 0, metadata !521) #5, !dbg !522
  %"127" = load i32* @"'s", align 4, !dbg !523
  %"128" = load i32* @"'NP", align 4, !dbg !523
  %"129" = icmp eq i32 %"127", %"128", !dbg !523
  br i1 %"129", label %KbFilter_PnP_stubMoreProcessingRequired.exit.i13, label %KbFilter_PnP_bb66, !dbg !523

KbFilter_PnP_stubMoreProcessingRequired.exit.i13: ; preds = %KbFilter_PnP_bb65
  %"130" = load i32* @"'MPR1", align 4, !dbg !525
  store i32 %"130", i32* @"'s", align 4, !dbg !525
  br label %KbFilter_PnP_bb67, !dbg !526

KbFilter_PnP_bb66:                                ; preds = %KbFilter_PnP_bb65
  call void (...)* @__VERIFIER_error() #4, !dbg !527
  unreachable, !dbg !527

KbFilter_PnP_bb67:                                ; preds = %KbFilter_PnP_stubMoreProcessingRequired.exit.i13, %KbFilter_PnP_bb64
  %"131" = call i32 @__VERIFIER_nondet_int() #5, !dbg !529
  call void @llvm.dbg.value(metadata !{i32 %"131"}, i64 0, metadata !530) #5, !dbg !531
  %"132" = icmp eq i32 %"131", 0, !dbg !532
  br i1 %"132", label %KbFilter_PnP_bb69, label %KbFilter_PnP_bb68, !dbg !532

KbFilter_PnP_bb68:                                ; preds = %KbFilter_PnP_bb67
  %"133" = call i32 @__VERIFIER_nondet_int() #5, !dbg !533
  call void @llvm.dbg.value(metadata !{i32 %"133"}, i64 0, metadata !534) #5, !dbg !535
  %"134" = icmp eq i32 %"133", 1, !dbg !536
  call void @llvm.dbg.value(metadata !237, i64 0, metadata !537) #5, !dbg !538
  %..i14 = select i1 %"134", i32 -1073741823, i32 259, !dbg !536
  br label %KbFilter_PnP_bb69, !dbg !536

KbFilter_PnP_bb69:                                ; preds = %KbFilter_PnP_bb68, %KbFilter_PnP_bb67
  %returnVal2.0.i15 = phi i32 [ 0, %KbFilter_PnP_bb67 ], [ %..i14, %KbFilter_PnP_bb68 ], !dbg !492
  %"135" = load i32* @"'s", align 4, !dbg !539
  %"136" = load i32* @"'NP", align 4, !dbg !539
  %"137" = icmp eq i32 %"135", %"136", !dbg !539
  br i1 %"137", label %KbFilter_PnP_bb70, label %KbFilter_PnP_bb71, !dbg !539

KbFilter_PnP_bb70:                                ; preds = %KbFilter_PnP_bb69
  %"138" = load i32* @"'IPC", align 4, !dbg !540
  store i32 %"138", i32* @"'s", align 4, !dbg !540
  store i32 %returnVal2.0.i15, i32* @"'lowerDriverReturn", align 4, !dbg !541
  br label %KbFilter_PnP_IofCallDriver.exit6, !dbg !542

KbFilter_PnP_bb71:                                ; preds = %KbFilter_PnP_bb69
  %"139" = load i32* @"'s", align 4, !dbg !543
  %"140" = load i32* @"'MPR1", align 4, !dbg !543
  %"141" = icmp eq i32 %"139", %"140", !dbg !543
  br i1 %"141", label %KbFilter_PnP_bb72, label %KbFilter_PnP_bb75, !dbg !543

KbFilter_PnP_bb72:                                ; preds = %KbFilter_PnP_bb71
  %"142" = icmp eq i32 %returnVal2.0.i15, 259, !dbg !544
  br i1 %"142", label %KbFilter_PnP_bb73, label %KbFilter_PnP_bb74, !dbg !544

KbFilter_PnP_bb73:                                ; preds = %KbFilter_PnP_bb72
  %"143" = load i32* @"'MPR3", align 4, !dbg !545
  store i32 %"143", i32* @"'s", align 4, !dbg !545
  store i32 %returnVal2.0.i15, i32* @"'lowerDriverReturn", align 4, !dbg !546
  br label %KbFilter_PnP_IofCallDriver.exit6, !dbg !547

KbFilter_PnP_bb74:                                ; preds = %KbFilter_PnP_bb72
  %"144" = load i32* @"'NP", align 4, !dbg !548
  store i32 %"144", i32* @"'s", align 4, !dbg !548
  store i32 %returnVal2.0.i15, i32* @"'lowerDriverReturn", align 4, !dbg !549
  br label %KbFilter_PnP_IofCallDriver.exit6, !dbg !492

KbFilter_PnP_bb75:                                ; preds = %KbFilter_PnP_bb71
  %"145" = load i32* @"'s", align 4, !dbg !550
  %"146" = load i32* @"'SKIP1", align 4, !dbg !550
  %"147" = icmp eq i32 %"145", %"146", !dbg !550
  br i1 %"147", label %KbFilter_PnP_bb76, label %KbFilter_PnP_bb77, !dbg !550

KbFilter_PnP_bb76:                                ; preds = %KbFilter_PnP_bb75
  %"148" = load i32* @"'SKIP2", align 4, !dbg !551
  store i32 %"148", i32* @"'s", align 4, !dbg !551
  store i32 %returnVal2.0.i15, i32* @"'lowerDriverReturn", align 4, !dbg !552
  br label %KbFilter_PnP_IofCallDriver.exit6, !dbg !492

KbFilter_PnP_IofCallDriver.exit6:                 ; preds = %KbFilter_PnP_bb76, %KbFilter_PnP_bb74, %KbFilter_PnP_bb73, %KbFilter_PnP_bb70, %KbFilter_PnP_bb44, %KbFilter_PnP_bb42, %KbFilter_PnP_bb41, %KbFilter_PnP_bb38, %KbFilter_PnP_bb60, %KbFilter_PnP_bb58, %KbFilter_PnP_bb57, %KbFilter_PnP_bb54, %KbFilter_PnP_IofCompleteRequest.exit
  %status.0 = phi i32 [ %returnVal2.0.i, %KbFilter_PnP_IofCompleteRequest.exit ], [ %returnVal2.0.i5, %KbFilter_PnP_bb54 ], [ %returnVal2.0.i5, %KbFilter_PnP_bb57 ], [ %returnVal2.0.i5, %KbFilter_PnP_bb58 ], [ %returnVal2.0.i5, %KbFilter_PnP_bb60 ], [ 0, %KbFilter_PnP_bb38 ], [ 0, %KbFilter_PnP_bb41 ], [ 0, %KbFilter_PnP_bb42 ], [ 0, %KbFilter_PnP_bb44 ], [ %returnVal2.0.i15, %KbFilter_PnP_bb70 ], [ %returnVal2.0.i15, %KbFilter_PnP_bb73 ], [ %returnVal2.0.i15, %KbFilter_PnP_bb74 ], [ %returnVal2.0.i15, %KbFilter_PnP_bb76 ]
  ret i32 %status.0, !dbg !553

KbFilter_PnP_bb77:                                ; preds = %KbFilter_PnP_bb75
  call void (...)* @__VERIFIER_error() #4, !dbg !554
  unreachable, !dbg !554

KbFilter_PnP_bb78:                                ; preds = %KbFilter_PnP_bb63
  call void (...)* @__VERIFIER_error() #4, !dbg !556
  unreachable, !dbg !556
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

declare i32 @__VERIFIER_nondet_int() #2

; Function Attrs: nounwind uwtable
define void @errorFn() #0 {
errorFn_bb79:
  call void (...)* @__VERIFIER_error() #6, !dbg !560
  unreachable, !dbg !560
}

; Function Attrs: nounwind uwtable
define void @IofCompleteRequest(i32 %Irp, i32 %PriorityBoost) #0 {
IofCompleteRequest_bb80:
  call void @llvm.dbg.value(metadata !{i32 %Irp}, i64 0, metadata !561), !dbg !562
  call void @llvm.dbg.value(metadata !{i32 %PriorityBoost}, i64 0, metadata !563), !dbg !564
  %"149" = load i32* @"'s", align 4, !dbg !565
  %"150" = load i32* @"'NP", align 4, !dbg !565
  %"151" = icmp eq i32 %"149", %"150", !dbg !565
  br i1 %"151", label %IofCompleteRequest_bb81, label %IofCompleteRequest_bb82, !dbg !565

IofCompleteRequest_bb81:                          ; preds = %IofCompleteRequest_bb80
  %"152" = load i32* @"'DC", align 4, !dbg !566
  store i32 %"152", i32* @"'s", align 4, !dbg !566
  ret void, !dbg !567

IofCompleteRequest_bb82:                          ; preds = %IofCompleteRequest_bb80
  call void (...)* @__VERIFIER_error() #4, !dbg !568
  unreachable, !dbg !568
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb83:
  %"153" = call i32 @__VERIFIER_nondet_int(), !dbg !570
  call void @llvm.dbg.value(metadata !{i32 %"153"}, i64 0, metadata !571), !dbg !572
  %"154" = call i32 @__VERIFIER_nondet_int(), !dbg !573
  call void @llvm.dbg.value(metadata !{i32 %"154"}, i64 0, metadata !574), !dbg !575
  %"155" = call i32 @__VERIFIER_nondet_int(), !dbg !576
  call void @llvm.dbg.value(metadata !{i32 %"155"}, i64 0, metadata !577), !dbg !578
  store i32 0, i32* @"'KernelMode", align 4, !dbg !579
  store i32 0, i32* @"'Executive", align 4, !dbg !582
  store i32 0, i32* @"'s", align 4, !dbg !583
  store i32 0, i32* @"'UNLOADED", align 4, !dbg !584
  store i32 0, i32* @"'NP", align 4, !dbg !585
  store i32 0, i32* @"'DC", align 4, !dbg !586
  store i32 0, i32* @"'SKIP1", align 4, !dbg !587
  store i32 0, i32* @"'SKIP2", align 4, !dbg !588
  store i32 0, i32* @"'MPR1", align 4, !dbg !589
  store i32 0, i32* @"'MPR3", align 4, !dbg !590
  store i32 0, i32* @"'IPC", align 4, !dbg !591
  store i32 0, i32* @"'pended", align 4, !dbg !592
  store i32 0, i32* @"'compFptr", align 4, !dbg !593
  store i32 0, i32* @"'compRegistered", align 4, !dbg !594
  store i32 0, i32* @"'lowerDriverReturn", align 4, !dbg !595
  store i32 0, i32* @"'setEventCalled", align 4, !dbg !596
  store i32 0, i32* @"'customIrp", align 4, !dbg !597
  store i32 0, i32* @"'myStatus", align 4, !dbg !598
  call void @llvm.dbg.value(metadata !101, i64 0, metadata !599), !dbg !600
  call void @llvm.dbg.value(metadata !{i32 %"153"}, i64 0, metadata !601), !dbg !602
  store i32 0, i32* @"'UNLOADED", align 4, !dbg !603
  store i32 1, i32* @"'NP", align 4, !dbg !605
  store i32 2, i32* @"'DC", align 4, !dbg !606
  store i32 3, i32* @"'SKIP1", align 4, !dbg !607
  store i32 4, i32* @"'SKIP2", align 4, !dbg !608
  store i32 5, i32* @"'MPR1", align 4, !dbg !609
  store i32 6, i32* @"'MPR3", align 4, !dbg !610
  store i32 7, i32* @"'IPC", align 4, !dbg !611
  %"156" = load i32* @"'UNLOADED", align 4, !dbg !612
  store i32 %"156", i32* @"'s", align 4, !dbg !612
  store i32 0, i32* @"'pended", align 4, !dbg !613
  store i32 0, i32* @"'compFptr", align 4, !dbg !614
  store i32 0, i32* @"'compRegistered", align 4, !dbg !615
  store i32 0, i32* @"'lowerDriverReturn", align 4, !dbg !616
  store i32 0, i32* @"'setEventCalled", align 4, !dbg !617
  store i32 0, i32* @"'customIrp", align 4, !dbg !618
  %"157" = icmp sge i32 0, 0, !dbg !619
  br i1 %"157", label %main_bb84, label %main_KbFilter_PnP.exit, !dbg !619

main_bb84:                                        ; preds = %main_bb83
  %"158" = load i32* @"'NP", align 4, !dbg !621
  store i32 %"158", i32* @"'s", align 4, !dbg !621
  store i32 0, i32* @"'customIrp", align 4, !dbg !623
  %"159" = load i32* @"'customIrp", align 4, !dbg !624
  store i32 %"159", i32* @"'setEventCalled", align 4, !dbg !624
  %"160" = load i32* @"'setEventCalled", align 4, !dbg !625
  store i32 %"160", i32* @"'lowerDriverReturn", align 4, !dbg !625
  %"161" = load i32* @"'lowerDriverReturn", align 4, !dbg !626
  store i32 %"161", i32* @"'compRegistered", align 4, !dbg !626
  %"162" = load i32* @"'compRegistered", align 4, !dbg !627
  store i32 %"162", i32* @"'pended", align 4, !dbg !627
  call void @llvm.dbg.value(metadata !101, i64 0, metadata !628), !dbg !629
  store i32 0, i32* @"'myStatus", align 4, !dbg !630
  %"163" = icmp eq i32 %"154", 0, !dbg !631
  %. = select i1 %"163", i32 -1073741637, i32 0, !dbg !631
  call void @llvm.dbg.value(metadata !633, i64 0, metadata !628), !dbg !629
  store i32 %., i32* @"'myStatus", align 4, !dbg !634
  %"164" = load i32* @"'NP", align 4, !dbg !636
  store i32 %"164", i32* @"'s", align 4, !dbg !636
  store i32 0, i32* @"'pended", align 4, !dbg !639
  store i32 0, i32* @"'compFptr", align 4, !dbg !640
  store i32 0, i32* @"'compRegistered", align 4, !dbg !641
  store i32 0, i32* @"'lowerDriverReturn", align 4, !dbg !642
  store i32 0, i32* @"'setEventCalled", align 4, !dbg !643
  store i32 0, i32* @"'customIrp", align 4, !dbg !644
  %"165" = icmp sge i32 0, 0, !dbg !645
  call void @llvm.dbg.value(metadata !101, i64 0, metadata !648), !dbg !649
  %__cil_tmp8.0 = select i1 %"165", i32 1, i32 0, !dbg !645
  %"166" = icmp ne i32 %__cil_tmp8.0, 0, !dbg !650
  br i1 %"166", label %main_bb85, label %main_bb175, !dbg !650

main_bb85:                                        ; preds = %main_bb84
  %"167" = call i32 @__VERIFIER_nondet_int(), !dbg !652
  call void @llvm.dbg.value(metadata !{i32 %"167"}, i64 0, metadata !653), !dbg !654
  %"168" = icmp eq i32 %"167", 3, !dbg !655
  br i1 %"168", label %main_bb86, label %main_bb175, !dbg !655

main_bb86:                                        ; preds = %main_bb85
  call void @llvm.dbg.value(metadata !{i32 %"155"}, i64 0, metadata !657) #5, !dbg !663
  call void @llvm.dbg.value(metadata !{i32 %"153"}, i64 0, metadata !664) #5, !dbg !665
  %"169" = call i32 @__VERIFIER_nondet_int() #5, !dbg !666
  call void @llvm.dbg.value(metadata !{i32 %"169"}, i64 0, metadata !667) #5, !dbg !668
  %"170" = call i32 @__VERIFIER_nondet_int() #5, !dbg !669
  call void @llvm.dbg.value(metadata !{i32 %"170"}, i64 0, metadata !670) #5, !dbg !671
  %"171" = call i32 @__VERIFIER_nondet_int() #5, !dbg !672
  call void @llvm.dbg.value(metadata !{i32 %"171"}, i64 0, metadata !673) #5, !dbg !674
  %"172" = call i32 @__VERIFIER_nondet_int() #5, !dbg !675
  call void @llvm.dbg.value(metadata !{i32 %"172"}, i64 0, metadata !676) #5, !dbg !677
  %"173" = call i32 @__VERIFIER_nondet_int() #5, !dbg !678
  call void @llvm.dbg.value(metadata !{i32 %"173"}, i64 0, metadata !679) #5, !dbg !680
  %"174" = call i32 @__VERIFIER_nondet_int() #5, !dbg !681
  call void @llvm.dbg.value(metadata !{i32 %"174"}, i64 0, metadata !682) #5, !dbg !683
  call void @llvm.dbg.value(metadata !101, i64 0, metadata !684) #5, !dbg !685
  call void @llvm.dbg.value(metadata !{i32 %"170"}, i64 0, metadata !686) #5, !dbg !687
  call void @llvm.dbg.value(metadata !{i32 %"171"}, i64 0, metadata !688) #5, !dbg !689
  %Pivot22.i = icmp slt i32 %"172", 2, !dbg !658
  br i1 %Pivot22.i, label %main_LeafBlock.i, label %main_NodeBlock.i, !dbg !658

main_LeafBlock.i:                                 ; preds = %main_bb86
  %SwitchLeaf.i = icmp eq i32 %"172", 0, !dbg !658
  br i1 %SwitchLeaf.i, label %main_bb87, label %main_NewDefault.i, !dbg !658

main_bb87:                                        ; preds = %main_LeafBlock.i
  call void @llvm.dbg.value(metadata !{i32 %"171"}, i64 0, metadata !690) #5, !dbg !691
  call void @llvm.dbg.value(metadata !101, i64 0, metadata !692) #5, !dbg !693
  %"175" = load i32* @"'s", align 4, !dbg !694
  %"176" = load i32* @"'NP", align 4, !dbg !694
  %"177" = icmp ne i32 %"175", %"176", !dbg !694
  br i1 %"177", label %main_bb88, label %main_bb89, !dbg !694

main_bb88:                                        ; preds = %main_bb87
  call void (...)* @__VERIFIER_error() #4, !dbg !695
  unreachable, !dbg !695

main_bb89:                                        ; preds = %main_bb87
  %"178" = load i32* @"'compRegistered", align 4, !dbg !697
  %"179" = icmp ne i32 %"178", 0, !dbg !697
  br i1 %"179", label %main_bb90, label %main_bb91, !dbg !697

main_bb90:                                        ; preds = %main_bb89
  call void (...)* @__VERIFIER_error() #4, !dbg !698
  unreachable, !dbg !698

main_bb91:                                        ; preds = %main_bb89
  store i32 1, i32* @"'compRegistered", align 4, !dbg !700
  call void @llvm.dbg.value(metadata !173, i64 0, metadata !701) #5, !dbg !702
  call void @llvm.dbg.value(metadata !{i32 %"173"}, i64 0, metadata !703) #5, !dbg !705
  call void @llvm.dbg.value(metadata !{i32 %"153"}, i64 0, metadata !706) #5, !dbg !707
  %"180" = call i32 @__VERIFIER_nondet_int() #5, !dbg !708
  call void @llvm.dbg.value(metadata !{i32 %"180"}, i64 0, metadata !709) #5, !dbg !710
  %"181" = load i32* @"'compRegistered", align 4, !dbg !711
  %"182" = icmp ne i32 %"181", 0, !dbg !711
  br i1 %"182", label %main_bb92, label %main_bb94, !dbg !711

main_bb92:                                        ; preds = %main_bb91
  call void @llvm.dbg.value(metadata !{i32 %"173"}, i64 0, metadata !712) #5, !dbg !714
  call void @llvm.dbg.value(metadata !{i32 %"153"}, i64 0, metadata !715) #5, !dbg !716
  call void @llvm.dbg.value(metadata !{i32 %"180"}, i64 0, metadata !717) #5, !dbg !718
  call void @llvm.dbg.value(metadata !{i32 %"180"}, i64 0, metadata !719) #5, !dbg !720
  call void @llvm.dbg.value(metadata !{i32 %"180"}, i64 0, metadata !721) #5, !dbg !723
  call void @llvm.dbg.value(metadata !101, i64 0, metadata !724) #5, !dbg !725
  call void @llvm.dbg.value(metadata !101, i64 0, metadata !726) #5, !dbg !727
  %"183" = call i32 @__VERIFIER_nondet_int() #5, !dbg !728
  call void @llvm.dbg.value(metadata !{i32 %"183"}, i64 0, metadata !729) #5, !dbg !730
  store i32 1, i32* @"'setEventCalled", align 4, !dbg !731
  call void @llvm.dbg.value(metadata !212, i64 0, metadata !732) #5, !dbg !733
  %"184" = load i32* @"'s", align 4, !dbg !734
  %"185" = load i32* @"'NP", align 4, !dbg !734
  %"186" = icmp eq i32 %"184", %"185", !dbg !734
  br i1 %"186", label %main_stubMoreProcessingRequired.exit.i.i, label %main_bb93, !dbg !734

main_stubMoreProcessingRequired.exit.i.i:         ; preds = %main_bb92
  %"187" = load i32* @"'MPR1", align 4, !dbg !736
  store i32 %"187", i32* @"'s", align 4, !dbg !736
  br label %main_bb94, !dbg !737

main_bb93:                                        ; preds = %main_bb92
  call void (...)* @__VERIFIER_error() #4, !dbg !738
  unreachable, !dbg !738

main_bb94:                                        ; preds = %main_stubMoreProcessingRequired.exit.i.i, %main_bb91
  %"188" = call i32 @__VERIFIER_nondet_int() #5, !dbg !740
  call void @llvm.dbg.value(metadata !{i32 %"188"}, i64 0, metadata !741) #5, !dbg !742
  %"189" = icmp eq i32 %"188", 0, !dbg !743
  br i1 %"189", label %main_bb96, label %main_bb95, !dbg !743

main_bb95:                                        ; preds = %main_bb94
  %"190" = call i32 @__VERIFIER_nondet_int() #5, !dbg !744
  call void @llvm.dbg.value(metadata !{i32 %"190"}, i64 0, metadata !745) #5, !dbg !746
  %"191" = icmp eq i32 %"190", 1, !dbg !747
  call void @llvm.dbg.value(metadata !237, i64 0, metadata !748) #5, !dbg !749
  %..i.i = select i1 %"191", i32 -1073741823, i32 259, !dbg !747
  br label %main_bb96, !dbg !747

main_bb96:                                        ; preds = %main_bb95, %main_bb94
  %returnVal2.0.i.i = phi i32 [ 0, %main_bb94 ], [ %..i.i, %main_bb95 ], !dbg !704
  %"192" = load i32* @"'s", align 4, !dbg !750
  %"193" = load i32* @"'NP", align 4, !dbg !750
  %"194" = icmp eq i32 %"192", %"193", !dbg !750
  br i1 %"194", label %main_bb97, label %main_bb98, !dbg !750

main_bb97:                                        ; preds = %main_bb96
  %"195" = load i32* @"'IPC", align 4, !dbg !751
  store i32 %"195", i32* @"'s", align 4, !dbg !751
  store i32 %returnVal2.0.i.i, i32* @"'lowerDriverReturn", align 4, !dbg !752
  br label %main_IofCallDriver.exit.i, !dbg !753

main_bb98:                                        ; preds = %main_bb96
  %"196" = load i32* @"'s", align 4, !dbg !754
  %"197" = load i32* @"'MPR1", align 4, !dbg !754
  %"198" = icmp eq i32 %"196", %"197", !dbg !754
  br i1 %"198", label %main_bb99, label %main_bb102, !dbg !754

main_bb99:                                        ; preds = %main_bb98
  %"199" = icmp eq i32 %returnVal2.0.i.i, 259, !dbg !755
  br i1 %"199", label %main_bb100, label %main_bb101, !dbg !755

main_bb100:                                       ; preds = %main_bb99
  %"200" = load i32* @"'MPR3", align 4, !dbg !756
  store i32 %"200", i32* @"'s", align 4, !dbg !756
  store i32 %returnVal2.0.i.i, i32* @"'lowerDriverReturn", align 4, !dbg !757
  br label %main_IofCallDriver.exit.i, !dbg !758

main_bb101:                                       ; preds = %main_bb99
  %"201" = load i32* @"'NP", align 4, !dbg !759
  store i32 %"201", i32* @"'s", align 4, !dbg !759
  store i32 %returnVal2.0.i.i, i32* @"'lowerDriverReturn", align 4, !dbg !760
  br label %main_IofCallDriver.exit.i, !dbg !704

main_bb102:                                       ; preds = %main_bb98
  %"202" = load i32* @"'s", align 4, !dbg !761
  %"203" = load i32* @"'SKIP1", align 4, !dbg !761
  %"204" = icmp eq i32 %"202", %"203", !dbg !761
  br i1 %"204", label %main_bb103, label %main_bb112, !dbg !761

main_bb103:                                       ; preds = %main_bb102
  %"205" = load i32* @"'SKIP2", align 4, !dbg !762
  store i32 %"205", i32* @"'s", align 4, !dbg !762
  store i32 %returnVal2.0.i.i, i32* @"'lowerDriverReturn", align 4, !dbg !763
  br label %main_IofCallDriver.exit.i, !dbg !704

main_IofCallDriver.exit.i:                        ; preds = %main_bb103, %main_bb101, %main_bb100, %main_bb97
  call void @llvm.dbg.value(metadata !{i32 %returnVal2.0.i.i}, i64 0, metadata !684) #5, !dbg !685
  %"206" = sext i32 %returnVal2.0.i.i to i64, !dbg !764
  call void @llvm.dbg.value(metadata !{i64 %"206"}, i64 0, metadata !765) #5, !dbg !766
  %"207" = icmp eq i64 %"206", 259, !dbg !767
  br i1 %"207", label %main_bb104, label %main_bb110, !dbg !767

main_bb104:                                       ; preds = %main_IofCallDriver.exit.i
  call void @llvm.dbg.value(metadata !{i32 %"169"}, i64 0, metadata !768) #5, !dbg !770
  call void @llvm.dbg.value(metadata !101, i64 0, metadata !771) #5, !dbg !772
  call void @llvm.dbg.value(metadata !101, i64 0, metadata !773) #5, !dbg !774
  %"208" = load i32* @"'s", align 4, !dbg !775
  %"209" = load i32* @"'MPR3", align 4, !dbg !775
  %"210" = icmp eq i32 %"208", %"209", !dbg !775
  %"211" = load i32* @"'setEventCalled", align 4, !dbg !769
  %"212" = icmp eq i32 %"211", 1, !dbg !776
  %or.cond.i.i = and i1 %"210", %"212", !dbg !775
  br i1 %or.cond.i.i, label %main_bb105, label %main_bb106, !dbg !775

main_bb105:                                       ; preds = %main_bb104
  %"213" = load i32* @"'NP", align 4, !dbg !777
  store i32 %"213", i32* @"'s", align 4, !dbg !777
  store i32 0, i32* @"'setEventCalled", align 4, !dbg !778
  br label %main_KeWaitForSingleObject.exit.i, !dbg !779

main_bb106:                                       ; preds = %main_bb104
  %"214" = load i32* @"'customIrp", align 4, !dbg !780
  %"215" = icmp eq i32 %"214", 1, !dbg !780
  br i1 %"215", label %main_bb107, label %main_bb108, !dbg !780

main_bb107:                                       ; preds = %main_bb106
  %"216" = load i32* @"'NP", align 4, !dbg !781
  store i32 %"216", i32* @"'s", align 4, !dbg !781
  store i32 0, i32* @"'customIrp", align 4, !dbg !782
  br label %main_KeWaitForSingleObject.exit.i, !dbg !783

main_bb108:                                       ; preds = %main_bb106
  %"217" = load i32* @"'s", align 4, !dbg !784
  %"218" = load i32* @"'MPR3", align 4, !dbg !784
  %"219" = icmp eq i32 %"217", %"218", !dbg !784
  br i1 %"219", label %main_bb109, label %main_KeWaitForSingleObject.exit.i, !dbg !784

main_bb109:                                       ; preds = %main_bb108
  call void (...)* @__VERIFIER_error() #4, !dbg !785
  unreachable, !dbg !785

main_KeWaitForSingleObject.exit.i:                ; preds = %main_bb108, %main_bb107, %main_bb105
  %"220" = call i32 @__VERIFIER_nondet_int() #5, !dbg !787
  call void @llvm.dbg.value(metadata !{i32 %"220"}, i64 0, metadata !788) #5, !dbg !789
  br label %main_bb110, !dbg !790

main_bb110:                                       ; preds = %main_KeWaitForSingleObject.exit.i, %main_IofCallDriver.exit.i
  call void @llvm.dbg.value(metadata !{i32 %returnVal2.0.i.i}, i64 0, metadata !791) #5, !dbg !792
  store i32 %returnVal2.0.i.i, i32* @"'myStatus", align 4, !dbg !793
  call void @llvm.dbg.value(metadata !101, i64 0, metadata !794) #5, !dbg !795
  call void @llvm.dbg.value(metadata !{i32 %"153"}, i64 0, metadata !796) #5, !dbg !798
  call void @llvm.dbg.value(metadata !101, i64 0, metadata !799) #5, !dbg !800
  %"221" = load i32* @"'s", align 4, !dbg !801
  %"222" = load i32* @"'NP", align 4, !dbg !801
  %"223" = icmp eq i32 %"221", %"222", !dbg !801
  br i1 %"223", label %main_IofCompleteRequest.exit.i, label %main_bb111, !dbg !801

main_IofCompleteRequest.exit.i:                   ; preds = %main_bb110
  %"224" = load i32* @"'DC", align 4, !dbg !802
  store i32 %"224", i32* @"'s", align 4, !dbg !802
  br label %main_KbFilter_PnP.exit, !dbg !803

main_bb111:                                       ; preds = %main_bb110
  call void (...)* @__VERIFIER_error() #4, !dbg !804
  unreachable, !dbg !804

main_bb112:                                       ; preds = %main_bb102
  call void (...)* @__VERIFIER_error() #4, !dbg !806
  unreachable, !dbg !806

main_NodeBlock.i:                                 ; preds = %main_bb86
  %Pivot.i = icmp slt i32 %"172", 23, !dbg !658
  br i1 %Pivot.i, label %main_LeafBlock17.i, label %main_LeafBlock19.i, !dbg !658

main_LeafBlock17.i:                               ; preds = %main_NodeBlock.i
  %SwitchLeaf18.i = icmp eq i32 %"172", 2, !dbg !658
  br i1 %SwitchLeaf18.i, label %main_bb113, label %main_NewDefault.i, !dbg !658

main_bb113:                                       ; preds = %main_LeafBlock17.i
  call void @llvm.dbg.value(metadata !338, i64 0, metadata !808) #5, !dbg !809
  %"225" = load i32* @"'s", align 4, !dbg !810
  %"226" = load i32* @"'NP", align 4, !dbg !810
  %"227" = icmp eq i32 %"225", %"226", !dbg !810
  br i1 %"227", label %main_bb114, label %main_bb128, !dbg !810

main_bb114:                                       ; preds = %main_bb113
  %"228" = load i32* @"'SKIP1", align 4, !dbg !811
  store i32 %"228", i32* @"'s", align 4, !dbg !811
  call void @llvm.dbg.value(metadata !{i32 %"173"}, i64 0, metadata !812) #5, !dbg !814
  call void @llvm.dbg.value(metadata !{i32 %"153"}, i64 0, metadata !815) #5, !dbg !816
  %"229" = call i32 @__VERIFIER_nondet_int() #5, !dbg !817
  call void @llvm.dbg.value(metadata !{i32 %"229"}, i64 0, metadata !818) #5, !dbg !819
  %"230" = load i32* @"'compRegistered", align 4, !dbg !820
  %"231" = icmp ne i32 %"230", 0, !dbg !820
  br i1 %"231", label %main_bb115, label %main_bb117, !dbg !820

main_bb115:                                       ; preds = %main_bb114
  call void @llvm.dbg.value(metadata !{i32 %"173"}, i64 0, metadata !821) #5, !dbg !823
  call void @llvm.dbg.value(metadata !{i32 %"153"}, i64 0, metadata !824) #5, !dbg !825
  call void @llvm.dbg.value(metadata !{i32 %"229"}, i64 0, metadata !826) #5, !dbg !827
  call void @llvm.dbg.value(metadata !{i32 %"229"}, i64 0, metadata !828) #5, !dbg !829
  call void @llvm.dbg.value(metadata !{i32 %"229"}, i64 0, metadata !830) #5, !dbg !832
  call void @llvm.dbg.value(metadata !101, i64 0, metadata !833) #5, !dbg !834
  call void @llvm.dbg.value(metadata !101, i64 0, metadata !835) #5, !dbg !836
  %"232" = call i32 @__VERIFIER_nondet_int() #5, !dbg !837
  call void @llvm.dbg.value(metadata !{i32 %"232"}, i64 0, metadata !838) #5, !dbg !839
  store i32 1, i32* @"'setEventCalled", align 4, !dbg !840
  call void @llvm.dbg.value(metadata !212, i64 0, metadata !841) #5, !dbg !842
  %"233" = load i32* @"'s", align 4, !dbg !843
  %"234" = load i32* @"'NP", align 4, !dbg !843
  %"235" = icmp eq i32 %"233", %"234", !dbg !843
  br i1 %"235", label %main_stubMoreProcessingRequired.exit.i8.i, label %main_bb116, !dbg !843

main_stubMoreProcessingRequired.exit.i8.i:        ; preds = %main_bb115
  %"236" = load i32* @"'MPR1", align 4, !dbg !845
  store i32 %"236", i32* @"'s", align 4, !dbg !845
  br label %main_bb117, !dbg !846

main_bb116:                                       ; preds = %main_bb115
  call void (...)* @__VERIFIER_error() #4, !dbg !847
  unreachable, !dbg !847

main_bb117:                                       ; preds = %main_stubMoreProcessingRequired.exit.i8.i, %main_bb114
  %"237" = call i32 @__VERIFIER_nondet_int() #5, !dbg !849
  call void @llvm.dbg.value(metadata !{i32 %"237"}, i64 0, metadata !850) #5, !dbg !851
  %"238" = icmp eq i32 %"237", 0, !dbg !852
  br i1 %"238", label %main_bb119, label %main_bb118, !dbg !852

main_bb118:                                       ; preds = %main_bb117
  %"239" = call i32 @__VERIFIER_nondet_int() #5, !dbg !853
  call void @llvm.dbg.value(metadata !{i32 %"239"}, i64 0, metadata !854) #5, !dbg !855
  %"240" = icmp eq i32 %"239", 1, !dbg !856
  call void @llvm.dbg.value(metadata !237, i64 0, metadata !857) #5, !dbg !858
  %..i9.i = select i1 %"240", i32 -1073741823, i32 259, !dbg !856
  br label %main_bb119, !dbg !856

main_bb119:                                       ; preds = %main_bb118, %main_bb117
  %returnVal2.0.i10.i = phi i32 [ 0, %main_bb117 ], [ %..i9.i, %main_bb118 ], !dbg !813
  %"241" = load i32* @"'s", align 4, !dbg !859
  %"242" = load i32* @"'NP", align 4, !dbg !859
  %"243" = icmp eq i32 %"241", %"242", !dbg !859
  br i1 %"243", label %main_bb120, label %main_bb121, !dbg !859

main_bb120:                                       ; preds = %main_bb119
  %"244" = load i32* @"'IPC", align 4, !dbg !860
  store i32 %"244", i32* @"'s", align 4, !dbg !860
  store i32 %returnVal2.0.i10.i, i32* @"'lowerDriverReturn", align 4, !dbg !861
  br label %main_KbFilter_PnP.exit, !dbg !862

main_bb121:                                       ; preds = %main_bb119
  %"245" = load i32* @"'s", align 4, !dbg !863
  %"246" = load i32* @"'MPR1", align 4, !dbg !863
  %"247" = icmp eq i32 %"245", %"246", !dbg !863
  br i1 %"247", label %main_bb122, label %main_bb125, !dbg !863

main_bb122:                                       ; preds = %main_bb121
  %"248" = icmp eq i32 %returnVal2.0.i10.i, 259, !dbg !864
  br i1 %"248", label %main_bb123, label %main_bb124, !dbg !864

main_bb123:                                       ; preds = %main_bb122
  %"249" = load i32* @"'MPR3", align 4, !dbg !865
  store i32 %"249", i32* @"'s", align 4, !dbg !865
  store i32 %returnVal2.0.i10.i, i32* @"'lowerDriverReturn", align 4, !dbg !866
  br label %main_KbFilter_PnP.exit, !dbg !867

main_bb124:                                       ; preds = %main_bb122
  %"250" = load i32* @"'NP", align 4, !dbg !868
  store i32 %"250", i32* @"'s", align 4, !dbg !868
  store i32 %returnVal2.0.i10.i, i32* @"'lowerDriverReturn", align 4, !dbg !869
  br label %main_KbFilter_PnP.exit, !dbg !813

main_bb125:                                       ; preds = %main_bb121
  %"251" = load i32* @"'s", align 4, !dbg !870
  %"252" = load i32* @"'SKIP1", align 4, !dbg !870
  %"253" = icmp eq i32 %"251", %"252", !dbg !870
  br i1 %"253", label %main_bb126, label %main_bb127, !dbg !870

main_bb126:                                       ; preds = %main_bb125
  %"254" = load i32* @"'SKIP2", align 4, !dbg !871
  store i32 %"254", i32* @"'s", align 4, !dbg !871
  store i32 %returnVal2.0.i10.i, i32* @"'lowerDriverReturn", align 4, !dbg !872
  br label %main_KbFilter_PnP.exit, !dbg !813

main_bb127:                                       ; preds = %main_bb125
  call void (...)* @__VERIFIER_error() #4, !dbg !873
  unreachable, !dbg !873

main_bb128:                                       ; preds = %main_bb113
  call void (...)* @__VERIFIER_error() #4, !dbg !875
  unreachable, !dbg !875

main_LeafBlock19.i:                               ; preds = %main_NodeBlock.i
  %SwitchLeaf20.i = icmp eq i32 %"172", 23, !dbg !658
  br i1 %SwitchLeaf20.i, label %main_bb129, label %main_NewDefault.i, !dbg !658

main_bb129:                                       ; preds = %main_LeafBlock19.i
  call void @llvm.dbg.value(metadata !338, i64 0, metadata !877) #5, !dbg !878
  %"255" = load i32* @"'s", align 4, !dbg !879
  %"256" = load i32* @"'NP", align 4, !dbg !879
  %"257" = icmp eq i32 %"255", %"256", !dbg !879
  br i1 %"257", label %main_bb130, label %main_bb144, !dbg !879

main_bb130:                                       ; preds = %main_bb129
  %"258" = load i32* @"'SKIP1", align 4, !dbg !880
  store i32 %"258", i32* @"'s", align 4, !dbg !880
  call void @llvm.dbg.value(metadata !{i32 %"173"}, i64 0, metadata !881) #5, !dbg !883
  call void @llvm.dbg.value(metadata !{i32 %"153"}, i64 0, metadata !884) #5, !dbg !885
  %"259" = call i32 @__VERIFIER_nondet_int() #5, !dbg !886
  call void @llvm.dbg.value(metadata !{i32 %"259"}, i64 0, metadata !887) #5, !dbg !888
  %"260" = load i32* @"'compRegistered", align 4, !dbg !889
  %"261" = icmp ne i32 %"260", 0, !dbg !889
  br i1 %"261", label %main_bb131, label %main_bb133, !dbg !889

main_bb131:                                       ; preds = %main_bb130
  call void @llvm.dbg.value(metadata !{i32 %"173"}, i64 0, metadata !890) #5, !dbg !892
  call void @llvm.dbg.value(metadata !{i32 %"153"}, i64 0, metadata !893) #5, !dbg !894
  call void @llvm.dbg.value(metadata !{i32 %"259"}, i64 0, metadata !895) #5, !dbg !896
  call void @llvm.dbg.value(metadata !{i32 %"259"}, i64 0, metadata !897) #5, !dbg !898
  call void @llvm.dbg.value(metadata !{i32 %"259"}, i64 0, metadata !899) #5, !dbg !901
  call void @llvm.dbg.value(metadata !101, i64 0, metadata !902) #5, !dbg !903
  call void @llvm.dbg.value(metadata !101, i64 0, metadata !904) #5, !dbg !905
  %"262" = call i32 @__VERIFIER_nondet_int() #5, !dbg !906
  call void @llvm.dbg.value(metadata !{i32 %"262"}, i64 0, metadata !907) #5, !dbg !908
  store i32 1, i32* @"'setEventCalled", align 4, !dbg !909
  call void @llvm.dbg.value(metadata !212, i64 0, metadata !910) #5, !dbg !911
  %"263" = load i32* @"'s", align 4, !dbg !912
  %"264" = load i32* @"'NP", align 4, !dbg !912
  %"265" = icmp eq i32 %"263", %"264", !dbg !912
  br i1 %"265", label %main_stubMoreProcessingRequired.exit.i3.i, label %main_bb132, !dbg !912

main_stubMoreProcessingRequired.exit.i3.i:        ; preds = %main_bb131
  %"266" = load i32* @"'MPR1", align 4, !dbg !914
  store i32 %"266", i32* @"'s", align 4, !dbg !914
  br label %main_bb133, !dbg !915

main_bb132:                                       ; preds = %main_bb131
  call void (...)* @__VERIFIER_error() #4, !dbg !916
  unreachable, !dbg !916

main_bb133:                                       ; preds = %main_stubMoreProcessingRequired.exit.i3.i, %main_bb130
  %"267" = call i32 @__VERIFIER_nondet_int() #5, !dbg !918
  call void @llvm.dbg.value(metadata !{i32 %"267"}, i64 0, metadata !919) #5, !dbg !920
  %"268" = icmp eq i32 %"267", 0, !dbg !921
  br i1 %"268", label %main_bb135, label %main_bb134, !dbg !921

main_bb134:                                       ; preds = %main_bb133
  %"269" = call i32 @__VERIFIER_nondet_int() #5, !dbg !922
  call void @llvm.dbg.value(metadata !{i32 %"269"}, i64 0, metadata !923) #5, !dbg !924
  %"270" = icmp eq i32 %"269", 1, !dbg !925
  call void @llvm.dbg.value(metadata !237, i64 0, metadata !926) #5, !dbg !927
  %..i4.i = select i1 %"270", i32 -1073741823, i32 259, !dbg !925
  br label %main_bb135, !dbg !925

main_bb135:                                       ; preds = %main_bb134, %main_bb133
  %returnVal2.0.i5.i = phi i32 [ 0, %main_bb133 ], [ %..i4.i, %main_bb134 ], !dbg !882
  %"271" = load i32* @"'s", align 4, !dbg !928
  %"272" = load i32* @"'NP", align 4, !dbg !928
  %"273" = icmp eq i32 %"271", %"272", !dbg !928
  br i1 %"273", label %main_bb136, label %main_bb137, !dbg !928

main_bb136:                                       ; preds = %main_bb135
  %"274" = load i32* @"'IPC", align 4, !dbg !929
  store i32 %"274", i32* @"'s", align 4, !dbg !929
  store i32 %returnVal2.0.i5.i, i32* @"'lowerDriverReturn", align 4, !dbg !930
  br label %main_KbFilter_PnP.exit, !dbg !931

main_bb137:                                       ; preds = %main_bb135
  %"275" = load i32* @"'s", align 4, !dbg !932
  %"276" = load i32* @"'MPR1", align 4, !dbg !932
  %"277" = icmp eq i32 %"275", %"276", !dbg !932
  br i1 %"277", label %main_bb138, label %main_bb141, !dbg !932

main_bb138:                                       ; preds = %main_bb137
  %"278" = icmp eq i32 %returnVal2.0.i5.i, 259, !dbg !933
  br i1 %"278", label %main_bb139, label %main_bb140, !dbg !933

main_bb139:                                       ; preds = %main_bb138
  %"279" = load i32* @"'MPR3", align 4, !dbg !934
  store i32 %"279", i32* @"'s", align 4, !dbg !934
  store i32 %returnVal2.0.i5.i, i32* @"'lowerDriverReturn", align 4, !dbg !935
  br label %main_KbFilter_PnP.exit, !dbg !936

main_bb140:                                       ; preds = %main_bb138
  %"280" = load i32* @"'NP", align 4, !dbg !937
  store i32 %"280", i32* @"'s", align 4, !dbg !937
  store i32 %returnVal2.0.i5.i, i32* @"'lowerDriverReturn", align 4, !dbg !938
  br label %main_KbFilter_PnP.exit, !dbg !882

main_bb141:                                       ; preds = %main_bb137
  %"281" = load i32* @"'s", align 4, !dbg !939
  %"282" = load i32* @"'SKIP1", align 4, !dbg !939
  %"283" = icmp eq i32 %"281", %"282", !dbg !939
  br i1 %"283", label %main_bb142, label %main_bb143, !dbg !939

main_bb142:                                       ; preds = %main_bb141
  %"284" = load i32* @"'SKIP2", align 4, !dbg !940
  store i32 %"284", i32* @"'s", align 4, !dbg !940
  store i32 %returnVal2.0.i5.i, i32* @"'lowerDriverReturn", align 4, !dbg !941
  br label %main_KbFilter_PnP.exit, !dbg !882

main_bb143:                                       ; preds = %main_bb141
  call void (...)* @__VERIFIER_error() #4, !dbg !942
  unreachable, !dbg !942

main_bb144:                                       ; preds = %main_bb129
  call void (...)* @__VERIFIER_error() #4, !dbg !944
  unreachable, !dbg !944

main_NewDefault.i:                                ; preds = %main_LeafBlock19.i, %main_LeafBlock17.i, %main_LeafBlock.i
  %"285" = load i32* @"'s", align 4, !dbg !946
  %"286" = load i32* @"'NP", align 4, !dbg !946
  %"287" = icmp eq i32 %"285", %"286", !dbg !946
  br i1 %"287", label %main_bb145, label %main_bb159, !dbg !946

main_bb145:                                       ; preds = %main_NewDefault.i
  %"288" = load i32* @"'SKIP1", align 4, !dbg !947
  store i32 %"288", i32* @"'s", align 4, !dbg !947
  call void @llvm.dbg.value(metadata !{i32 %"173"}, i64 0, metadata !948) #5, !dbg !950
  call void @llvm.dbg.value(metadata !{i32 %"153"}, i64 0, metadata !951) #5, !dbg !952
  %"289" = call i32 @__VERIFIER_nondet_int() #5, !dbg !953
  call void @llvm.dbg.value(metadata !{i32 %"289"}, i64 0, metadata !954) #5, !dbg !955
  %"290" = load i32* @"'compRegistered", align 4, !dbg !956
  %"291" = icmp ne i32 %"290", 0, !dbg !956
  br i1 %"291", label %main_bb146, label %main_bb148, !dbg !956

main_bb146:                                       ; preds = %main_bb145
  call void @llvm.dbg.value(metadata !{i32 %"173"}, i64 0, metadata !957) #5, !dbg !959
  call void @llvm.dbg.value(metadata !{i32 %"153"}, i64 0, metadata !960) #5, !dbg !961
  call void @llvm.dbg.value(metadata !{i32 %"289"}, i64 0, metadata !962) #5, !dbg !963
  call void @llvm.dbg.value(metadata !{i32 %"289"}, i64 0, metadata !964) #5, !dbg !965
  call void @llvm.dbg.value(metadata !{i32 %"289"}, i64 0, metadata !966) #5, !dbg !968
  call void @llvm.dbg.value(metadata !101, i64 0, metadata !969) #5, !dbg !970
  call void @llvm.dbg.value(metadata !101, i64 0, metadata !971) #5, !dbg !972
  %"292" = call i32 @__VERIFIER_nondet_int() #5, !dbg !973
  call void @llvm.dbg.value(metadata !{i32 %"292"}, i64 0, metadata !974) #5, !dbg !975
  store i32 1, i32* @"'setEventCalled", align 4, !dbg !976
  call void @llvm.dbg.value(metadata !212, i64 0, metadata !977) #5, !dbg !978
  %"293" = load i32* @"'s", align 4, !dbg !979
  %"294" = load i32* @"'NP", align 4, !dbg !979
  %"295" = icmp eq i32 %"293", %"294", !dbg !979
  br i1 %"295", label %main_stubMoreProcessingRequired.exit.i13.i, label %main_bb147, !dbg !979

main_stubMoreProcessingRequired.exit.i13.i:       ; preds = %main_bb146
  %"296" = load i32* @"'MPR1", align 4, !dbg !981
  store i32 %"296", i32* @"'s", align 4, !dbg !981
  br label %main_bb148, !dbg !982

main_bb147:                                       ; preds = %main_bb146
  call void (...)* @__VERIFIER_error() #4, !dbg !983
  unreachable, !dbg !983

main_bb148:                                       ; preds = %main_stubMoreProcessingRequired.exit.i13.i, %main_bb145
  %"297" = call i32 @__VERIFIER_nondet_int() #5, !dbg !985
  call void @llvm.dbg.value(metadata !{i32 %"297"}, i64 0, metadata !986) #5, !dbg !987
  %"298" = icmp eq i32 %"297", 0, !dbg !988
  br i1 %"298", label %main_bb150, label %main_bb149, !dbg !988

main_bb149:                                       ; preds = %main_bb148
  %"299" = call i32 @__VERIFIER_nondet_int() #5, !dbg !989
  call void @llvm.dbg.value(metadata !{i32 %"299"}, i64 0, metadata !990) #5, !dbg !991
  %"300" = icmp eq i32 %"299", 1, !dbg !992
  call void @llvm.dbg.value(metadata !237, i64 0, metadata !993) #5, !dbg !994
  %..i14.i = select i1 %"300", i32 -1073741823, i32 259, !dbg !992
  br label %main_bb150, !dbg !992

main_bb150:                                       ; preds = %main_bb149, %main_bb148
  %returnVal2.0.i15.i = phi i32 [ 0, %main_bb148 ], [ %..i14.i, %main_bb149 ], !dbg !949
  %"301" = load i32* @"'s", align 4, !dbg !995
  %"302" = load i32* @"'NP", align 4, !dbg !995
  %"303" = icmp eq i32 %"301", %"302", !dbg !995
  br i1 %"303", label %main_bb151, label %main_bb152, !dbg !995

main_bb151:                                       ; preds = %main_bb150
  %"304" = load i32* @"'IPC", align 4, !dbg !996
  store i32 %"304", i32* @"'s", align 4, !dbg !996
  store i32 %returnVal2.0.i15.i, i32* @"'lowerDriverReturn", align 4, !dbg !997
  br label %main_KbFilter_PnP.exit, !dbg !998

main_bb152:                                       ; preds = %main_bb150
  %"305" = load i32* @"'s", align 4, !dbg !999
  %"306" = load i32* @"'MPR1", align 4, !dbg !999
  %"307" = icmp eq i32 %"305", %"306", !dbg !999
  br i1 %"307", label %main_bb153, label %main_bb156, !dbg !999

main_bb153:                                       ; preds = %main_bb152
  %"308" = icmp eq i32 %returnVal2.0.i15.i, 259, !dbg !1000
  br i1 %"308", label %main_bb154, label %main_bb155, !dbg !1000

main_bb154:                                       ; preds = %main_bb153
  %"309" = load i32* @"'MPR3", align 4, !dbg !1001
  store i32 %"309", i32* @"'s", align 4, !dbg !1001
  store i32 %returnVal2.0.i15.i, i32* @"'lowerDriverReturn", align 4, !dbg !1002
  br label %main_KbFilter_PnP.exit, !dbg !1003

main_bb155:                                       ; preds = %main_bb153
  %"310" = load i32* @"'NP", align 4, !dbg !1004
  store i32 %"310", i32* @"'s", align 4, !dbg !1004
  store i32 %returnVal2.0.i15.i, i32* @"'lowerDriverReturn", align 4, !dbg !1005
  br label %main_KbFilter_PnP.exit, !dbg !949

main_bb156:                                       ; preds = %main_bb152
  %"311" = load i32* @"'s", align 4, !dbg !1006
  %"312" = load i32* @"'SKIP1", align 4, !dbg !1006
  %"313" = icmp eq i32 %"311", %"312", !dbg !1006
  br i1 %"313", label %main_bb157, label %main_bb158, !dbg !1006

main_bb157:                                       ; preds = %main_bb156
  %"314" = load i32* @"'SKIP2", align 4, !dbg !1007
  store i32 %"314", i32* @"'s", align 4, !dbg !1007
  store i32 %returnVal2.0.i15.i, i32* @"'lowerDriverReturn", align 4, !dbg !1008
  br label %main_KbFilter_PnP.exit, !dbg !949

main_bb158:                                       ; preds = %main_bb156
  call void (...)* @__VERIFIER_error() #4, !dbg !1009
  unreachable, !dbg !1009

main_bb159:                                       ; preds = %main_NewDefault.i
  call void (...)* @__VERIFIER_error() #4, !dbg !1011
  unreachable, !dbg !1011

main_KbFilter_PnP.exit:                           ; preds = %main_IofCompleteRequest.exit.i, %main_bb120, %main_bb123, %main_bb124, %main_bb126, %main_bb136, %main_bb139, %main_bb140, %main_bb142, %main_bb151, %main_bb154, %main_bb155, %main_bb157, %main_bb83
  %status.0 = phi i32 [ 0, %main_bb83 ], [ %returnVal2.0.i.i, %main_IofCompleteRequest.exit.i ], [ %returnVal2.0.i5.i, %main_bb136 ], [ %returnVal2.0.i5.i, %main_bb139 ], [ %returnVal2.0.i5.i, %main_bb140 ], [ %returnVal2.0.i5.i, %main_bb142 ], [ 0, %main_bb120 ], [ 0, %main_bb123 ], [ 0, %main_bb124 ], [ 0, %main_bb126 ], [ %returnVal2.0.i15.i, %main_bb151 ], [ %returnVal2.0.i15.i, %main_bb154 ], [ %returnVal2.0.i15.i, %main_bb155 ], [ %returnVal2.0.i15.i, %main_bb157 ]
  %"315" = load i32* @"'pended", align 4, !dbg !1013
  %"316" = icmp eq i32 %"315", 1, !dbg !1013
  br i1 %"316", label %main_bb160, label %main_bb162, !dbg !1013

main_bb160:                                       ; preds = %main_KbFilter_PnP.exit
  %"317" = load i32* @"'s", align 4, !dbg !1015
  %"318" = load i32* @"'NP", align 4, !dbg !1015
  %"319" = icmp eq i32 %"317", %"318", !dbg !1015
  br i1 %"319", label %main_bb161, label %main_bb162, !dbg !1015

main_bb161:                                       ; preds = %main_bb160
  %"320" = load i32* @"'NP", align 4, !dbg !1018
  store i32 %"320", i32* @"'s", align 4, !dbg !1018
  br label %main_bb175, !dbg !1020

main_bb162:                                       ; preds = %main_KbFilter_PnP.exit, %main_bb160
  %"321" = load i32* @"'pended", align 4, !dbg !1021
  %"322" = icmp eq i32 %"321", 1, !dbg !1021
  br i1 %"322", label %main_bb163, label %main_bb165, !dbg !1021

main_bb163:                                       ; preds = %main_bb162
  %"323" = load i32* @"'s", align 4, !dbg !1024
  %"324" = load i32* @"'MPR3", align 4, !dbg !1024
  %"325" = icmp eq i32 %"323", %"324", !dbg !1024
  br i1 %"325", label %main_bb164, label %main_bb165, !dbg !1024

main_bb164:                                       ; preds = %main_bb163
  %"326" = load i32* @"'MPR3", align 4, !dbg !1027
  store i32 %"326", i32* @"'s", align 4, !dbg !1027
  br label %main_bb175, !dbg !1029

main_bb165:                                       ; preds = %main_bb162, %main_bb163
  %"327" = load i32* @"'s", align 4, !dbg !1030
  %"328" = load i32* @"'UNLOADED", align 4, !dbg !1030
  %"329" = icmp ne i32 %"327", %"328", !dbg !1030
  %"330" = icmp ne i32 %status.0, -1, !dbg !1033
  %or.cond = and i1 %"329", %"330", !dbg !1030
  br i1 %or.cond, label %main_bb166, label %main_bb175, !dbg !1030

main_bb166:                                       ; preds = %main_bb165
  %"331" = load i32* @"'s", align 4, !dbg !1036
  %"332" = load i32* @"'SKIP2", align 4, !dbg !1036
  %"333" = icmp ne i32 %"331", %"332", !dbg !1036
  br i1 %"333", label %main_bb167, label %main_bb169, !dbg !1036

main_bb167:                                       ; preds = %main_bb166
  %"334" = load i32* @"'s", align 4, !dbg !1039
  %"335" = load i32* @"'IPC", align 4, !dbg !1039
  %"336" = icmp ne i32 %"334", %"335", !dbg !1039
  br i1 %"336", label %main_bb168, label %main_bb169, !dbg !1039

main_bb168:                                       ; preds = %main_bb167
  %"337" = load i32* @"'s", align 4, !dbg !1042
  %"338" = load i32* @"'DC", align 4, !dbg !1042
  %"339" = icmp eq i32 %"337", %"338", !dbg !1042
  br i1 %"339", label %main_bb169, label %main_bb175, !dbg !1042

main_bb169:                                       ; preds = %main_bb166, %main_bb167, %main_bb168
  %"340" = load i32* @"'pended", align 4, !dbg !1045
  %"341" = icmp eq i32 %"340", 1, !dbg !1045
  br i1 %"341", label %main_bb170, label %main_bb172, !dbg !1045

main_bb170:                                       ; preds = %main_bb169
  %"342" = icmp ne i32 %status.0, 259, !dbg !1048
  br i1 %"342", label %main_bb171, label %main_bb175, !dbg !1048

main_bb171:                                       ; preds = %main_bb170
  call void (...)* @__VERIFIER_error() #4, !dbg !1051
  unreachable, !dbg !1051

main_bb172:                                       ; preds = %main_bb169
  %"343" = load i32* @"'s", align 4, !dbg !1055
  %"344" = load i32* @"'DC", align 4, !dbg !1055
  %"345" = icmp eq i32 %"343", %"344", !dbg !1055
  br i1 %"345", label %main_bb173, label %main_bb174, !dbg !1055

main_bb173:                                       ; preds = %main_bb172
  br label %main_bb175, !dbg !1058

main_bb174:                                       ; preds = %main_bb172
  br label %main_bb175

main_bb175:                                       ; preds = %main_bb161, %main_bb165, %main_bb168, %main_bb173, %main_bb174, %main_bb170, %main_bb164, %main_bb85, %main_bb84
  %.0 = phi i32 [ -1, %main_bb84 ], [ -1, %main_bb85 ], [ %status.0, %main_bb164 ], [ %status.0, %main_bb170 ], [ %status.0, %main_bb174 ], [ %status.0, %main_bb173 ], [ %status.0, %main_bb168 ], [ %status.0, %main_bb165 ], [ %status.0, %main_bb161 ]
  ret i32 %.0, !dbg !1060
}

; Function Attrs: nounwind uwtable
define void @stubMoreProcessingRequired() #0 {
stubMoreProcessingRequired_bb176:
  %"346" = load i32* @"'s", align 4, !dbg !1061
  %"347" = load i32* @"'NP", align 4, !dbg !1061
  %"348" = icmp eq i32 %"346", %"347", !dbg !1061
  br i1 %"348", label %stubMoreProcessingRequired_bb177, label %stubMoreProcessingRequired_bb178, !dbg !1061

stubMoreProcessingRequired_bb177:                 ; preds = %stubMoreProcessingRequired_bb176
  %"349" = load i32* @"'MPR1", align 4, !dbg !1062
  store i32 %"349", i32* @"'s", align 4, !dbg !1062
  ret void, !dbg !1063

stubMoreProcessingRequired_bb178:                 ; preds = %stubMoreProcessingRequired_bb176
  call void (...)* @__VERIFIER_error() #4, !dbg !1064
  unreachable, !dbg !1064
}

; Function Attrs: nounwind uwtable
define i32 @IofCallDriver(i32 %DeviceObject, i32 %Irp) #0 {
IofCallDriver_bb179:
  call void @llvm.dbg.value(metadata !{i32 %DeviceObject}, i64 0, metadata !1066), !dbg !1067
  call void @llvm.dbg.value(metadata !{i32 %Irp}, i64 0, metadata !1068), !dbg !1069
  %"350" = call i32 @__VERIFIER_nondet_int(), !dbg !1070
  call void @llvm.dbg.value(metadata !{i32 %"350"}, i64 0, metadata !1071), !dbg !1072
  %"351" = load i32* @"'compRegistered", align 4, !dbg !1073
  %"352" = icmp ne i32 %"351", 0, !dbg !1073
  br i1 %"352", label %IofCallDriver_bb180, label %IofCallDriver_bb182, !dbg !1073

IofCallDriver_bb180:                              ; preds = %IofCallDriver_bb179
  call void @llvm.dbg.value(metadata !{i32 %DeviceObject}, i64 0, metadata !1074) #5, !dbg !1076
  call void @llvm.dbg.value(metadata !{i32 %Irp}, i64 0, metadata !1077) #5, !dbg !1078
  call void @llvm.dbg.value(metadata !{i32 %"350"}, i64 0, metadata !1079) #5, !dbg !1080
  call void @llvm.dbg.value(metadata !{i32 %"350"}, i64 0, metadata !1081) #5, !dbg !1082
  call void @llvm.dbg.value(metadata !{i32 %"350"}, i64 0, metadata !1083) #5, !dbg !1085
  call void @llvm.dbg.value(metadata !101, i64 0, metadata !1086) #5, !dbg !1087
  call void @llvm.dbg.value(metadata !101, i64 0, metadata !1088) #5, !dbg !1089
  %"353" = call i32 @__VERIFIER_nondet_int() #5, !dbg !1090
  call void @llvm.dbg.value(metadata !{i32 %"353"}, i64 0, metadata !1091) #5, !dbg !1092
  store i32 1, i32* @"'setEventCalled", align 4, !dbg !1093
  call void @llvm.dbg.value(metadata !212, i64 0, metadata !1094), !dbg !1095
  %"354" = load i32* @"'s", align 4, !dbg !1096
  %"355" = load i32* @"'NP", align 4, !dbg !1096
  %"356" = icmp eq i32 %"354", %"355", !dbg !1096
  br i1 %"356", label %IofCallDriver_stubMoreProcessingRequired.exit, label %IofCallDriver_bb181, !dbg !1096

IofCallDriver_stubMoreProcessingRequired.exit:    ; preds = %IofCallDriver_bb180
  %"357" = load i32* @"'MPR1", align 4, !dbg !1098
  store i32 %"357", i32* @"'s", align 4, !dbg !1098
  br label %IofCallDriver_bb182, !dbg !1099

IofCallDriver_bb181:                              ; preds = %IofCallDriver_bb180
  call void (...)* @__VERIFIER_error() #4, !dbg !1100
  unreachable, !dbg !1100

IofCallDriver_bb182:                              ; preds = %IofCallDriver_stubMoreProcessingRequired.exit, %IofCallDriver_bb179
  %"358" = call i32 @__VERIFIER_nondet_int(), !dbg !1102
  call void @llvm.dbg.value(metadata !{i32 %"358"}, i64 0, metadata !1103), !dbg !1104
  %"359" = icmp eq i32 %"358", 0, !dbg !1105
  br i1 %"359", label %IofCallDriver_bb184, label %IofCallDriver_bb183, !dbg !1105

IofCallDriver_bb183:                              ; preds = %IofCallDriver_bb182
  %"360" = call i32 @__VERIFIER_nondet_int(), !dbg !1106
  call void @llvm.dbg.value(metadata !{i32 %"360"}, i64 0, metadata !1107), !dbg !1108
  %"361" = icmp eq i32 %"360", 1, !dbg !1109
  call void @llvm.dbg.value(metadata !237, i64 0, metadata !1110), !dbg !1111
  %. = select i1 %"361", i32 -1073741823, i32 259, !dbg !1109
  br label %IofCallDriver_bb184, !dbg !1109

IofCallDriver_bb184:                              ; preds = %IofCallDriver_bb183, %IofCallDriver_bb182
  %returnVal2.0 = phi i32 [ 0, %IofCallDriver_bb182 ], [ %., %IofCallDriver_bb183 ]
  %"362" = load i32* @"'s", align 4, !dbg !1112
  %"363" = load i32* @"'NP", align 4, !dbg !1112
  %"364" = icmp eq i32 %"362", %"363", !dbg !1112
  br i1 %"364", label %IofCallDriver_bb185, label %IofCallDriver_bb186, !dbg !1112

IofCallDriver_bb185:                              ; preds = %IofCallDriver_bb184
  %"365" = load i32* @"'IPC", align 4, !dbg !1113
  store i32 %"365", i32* @"'s", align 4, !dbg !1113
  store i32 %returnVal2.0, i32* @"'lowerDriverReturn", align 4, !dbg !1114
  br label %IofCallDriver_bb192, !dbg !1115

IofCallDriver_bb186:                              ; preds = %IofCallDriver_bb184
  %"366" = load i32* @"'s", align 4, !dbg !1116
  %"367" = load i32* @"'MPR1", align 4, !dbg !1116
  %"368" = icmp eq i32 %"366", %"367", !dbg !1116
  br i1 %"368", label %IofCallDriver_bb187, label %IofCallDriver_bb190, !dbg !1116

IofCallDriver_bb187:                              ; preds = %IofCallDriver_bb186
  %"369" = icmp eq i32 %returnVal2.0, 259, !dbg !1117
  br i1 %"369", label %IofCallDriver_bb188, label %IofCallDriver_bb189, !dbg !1117

IofCallDriver_bb188:                              ; preds = %IofCallDriver_bb187
  %"370" = load i32* @"'MPR3", align 4, !dbg !1118
  store i32 %"370", i32* @"'s", align 4, !dbg !1118
  store i32 %returnVal2.0, i32* @"'lowerDriverReturn", align 4, !dbg !1119
  br label %IofCallDriver_bb192, !dbg !1120

IofCallDriver_bb189:                              ; preds = %IofCallDriver_bb187
  %"371" = load i32* @"'NP", align 4, !dbg !1121
  store i32 %"371", i32* @"'s", align 4, !dbg !1121
  store i32 %returnVal2.0, i32* @"'lowerDriverReturn", align 4, !dbg !1122
  br label %IofCallDriver_bb192

IofCallDriver_bb190:                              ; preds = %IofCallDriver_bb186
  %"372" = load i32* @"'s", align 4, !dbg !1123
  %"373" = load i32* @"'SKIP1", align 4, !dbg !1123
  %"374" = icmp eq i32 %"372", %"373", !dbg !1123
  br i1 %"374", label %IofCallDriver_bb191, label %IofCallDriver_bb193, !dbg !1123

IofCallDriver_bb191:                              ; preds = %IofCallDriver_bb190
  %"375" = load i32* @"'SKIP2", align 4, !dbg !1124
  store i32 %"375", i32* @"'s", align 4, !dbg !1124
  store i32 %returnVal2.0, i32* @"'lowerDriverReturn", align 4, !dbg !1125
  br label %IofCallDriver_bb192

IofCallDriver_bb192:                              ; preds = %IofCallDriver_bb191, %IofCallDriver_bb189, %IofCallDriver_bb188, %IofCallDriver_bb185
  ret i32 %returnVal2.0, !dbg !1126

IofCallDriver_bb193:                              ; preds = %IofCallDriver_bb190
  call void (...)* @__VERIFIER_error() #4, !dbg !1127
  unreachable, !dbg !1127
}

; Function Attrs: nounwind uwtable
define i32 @KeSetEvent(i32 %Event, i32 %Increment, i32 %Wait) #0 {
KeSetEvent_bb194:
  call void @llvm.dbg.value(metadata !{i32 %Event}, i64 0, metadata !1129), !dbg !1130
  call void @llvm.dbg.value(metadata !{i32 %Increment}, i64 0, metadata !1131), !dbg !1132
  call void @llvm.dbg.value(metadata !{i32 %Wait}, i64 0, metadata !1133), !dbg !1134
  %"376" = call i32 @__VERIFIER_nondet_int(), !dbg !1135
  call void @llvm.dbg.value(metadata !{i32 %"376"}, i64 0, metadata !1136), !dbg !1137
  store i32 1, i32* @"'setEventCalled", align 4, !dbg !1138
  ret i32 %"376", !dbg !1139
}

; Function Attrs: nounwind uwtable
define i32 @KeWaitForSingleObject(i32 %Object, i32 %WaitReason, i32 %WaitMode, i32 %Alertable, i32 %Timeout) #0 {
KeWaitForSingleObject_bb195:
  call void @llvm.dbg.value(metadata !{i32 %Object}, i64 0, metadata !1140), !dbg !1141
  call void @llvm.dbg.value(metadata !{i32 %WaitReason}, i64 0, metadata !1142), !dbg !1143
  call void @llvm.dbg.value(metadata !{i32 %WaitMode}, i64 0, metadata !1144), !dbg !1145
  call void @llvm.dbg.value(metadata !{i32 %Alertable}, i64 0, metadata !1146), !dbg !1147
  call void @llvm.dbg.value(metadata !{i32 %Timeout}, i64 0, metadata !1148), !dbg !1149
  %"377" = load i32* @"'s", align 4, !dbg !1150
  %"378" = load i32* @"'MPR3", align 4, !dbg !1150
  %"379" = icmp eq i32 %"377", %"378", !dbg !1150
  %"380" = load i32* @"'setEventCalled", align 4
  %"381" = icmp eq i32 %"380", 1, !dbg !1151
  %or.cond = and i1 %"379", %"381", !dbg !1150
  br i1 %or.cond, label %KeWaitForSingleObject_bb196, label %KeWaitForSingleObject_bb197, !dbg !1150

KeWaitForSingleObject_bb196:                      ; preds = %KeWaitForSingleObject_bb195
  %"382" = load i32* @"'NP", align 4, !dbg !1152
  store i32 %"382", i32* @"'s", align 4, !dbg !1152
  store i32 0, i32* @"'setEventCalled", align 4, !dbg !1153
  br label %KeWaitForSingleObject_bb201, !dbg !1154

KeWaitForSingleObject_bb197:                      ; preds = %KeWaitForSingleObject_bb195
  %"383" = load i32* @"'customIrp", align 4, !dbg !1155
  %"384" = icmp eq i32 %"383", 1, !dbg !1155
  br i1 %"384", label %KeWaitForSingleObject_bb198, label %KeWaitForSingleObject_bb199, !dbg !1155

KeWaitForSingleObject_bb198:                      ; preds = %KeWaitForSingleObject_bb197
  %"385" = load i32* @"'NP", align 4, !dbg !1156
  store i32 %"385", i32* @"'s", align 4, !dbg !1156
  store i32 0, i32* @"'customIrp", align 4, !dbg !1157
  br label %KeWaitForSingleObject_bb201, !dbg !1158

KeWaitForSingleObject_bb199:                      ; preds = %KeWaitForSingleObject_bb197
  %"386" = load i32* @"'s", align 4, !dbg !1159
  %"387" = load i32* @"'MPR3", align 4, !dbg !1159
  %"388" = icmp eq i32 %"386", %"387", !dbg !1159
  br i1 %"388", label %KeWaitForSingleObject_bb200, label %KeWaitForSingleObject_bb201, !dbg !1159

KeWaitForSingleObject_bb200:                      ; preds = %KeWaitForSingleObject_bb199
  call void (...)* @__VERIFIER_error() #4, !dbg !1160
  unreachable, !dbg !1160

KeWaitForSingleObject_bb201:                      ; preds = %KeWaitForSingleObject_bb198, %KeWaitForSingleObject_bb199, %KeWaitForSingleObject_bb196
  %"389" = call i32 @__VERIFIER_nondet_int(), !dbg !1162
  call void @llvm.dbg.value(metadata !{i32 %"389"}, i64 0, metadata !1163), !dbg !1164
  %"390" = icmp eq i32 %"389", 0, !dbg !1165
  %.0 = select i1 %"390", i32 0, i32 -1073741823, !dbg !1165
  ret i32 %.0, !dbg !1167
}

; Function Attrs: nounwind uwtable
define i32 @KbFilter_Complete(i32 %DeviceObject, i32 %Irp, i32 %Context) #0 {
KbFilter_Complete_bb202:
  call void @llvm.dbg.value(metadata !{i32 %DeviceObject}, i64 0, metadata !1168), !dbg !1169
  call void @llvm.dbg.value(metadata !{i32 %Irp}, i64 0, metadata !1170), !dbg !1171
  call void @llvm.dbg.value(metadata !{i32 %Context}, i64 0, metadata !1172), !dbg !1173
  call void @llvm.dbg.value(metadata !{i32 %Context}, i64 0, metadata !1174), !dbg !1175
  call void @llvm.dbg.value(metadata !{i32 %Context}, i64 0, metadata !1176) #5, !dbg !1178
  call void @llvm.dbg.value(metadata !101, i64 0, metadata !1179) #5, !dbg !1180
  call void @llvm.dbg.value(metadata !101, i64 0, metadata !1181) #5, !dbg !1182
  %"391" = call i32 @__VERIFIER_nondet_int() #5, !dbg !1183
  call void @llvm.dbg.value(metadata !{i32 %"391"}, i64 0, metadata !1184) #5, !dbg !1185
  store i32 1, i32* @"'setEventCalled", align 4, !dbg !1186
  ret i32 -1073741802, !dbg !1187
}

; Function Attrs: noreturn
declare void @__VERIFIER_error(...) #3

declare i32 @__kittel_nondef.0()

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

declare i64 @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind }
attributes #5 = { nounwind }
attributes #6 = { noreturn }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!50, !51}
!llvm.ident = !{!52}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !31, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [//FILES_DIR/SourceCode_SemanticAugmentor.c] [DW_LANG_C99]
!1 = metadata !{metadata !"FILES_DIR/SourceCode_SemanticAugmentor.c", metadata !"/"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !8, metadata !11, metadata !15, metadata !18, metadata !19, metadata !20, metadata !23, metadata !26, metadata !29, metadata !30}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"stub_driver_init", metadata !"stub_driver_init", metadata !"", i32 30, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @stub_driver_init, null, null, metadata !2, i32 31} ; [ DW_TAG_subprogram ] [line 30] [def] [scope 31] [stub_driver_init]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null}
!8 = metadata !{i32 786478, metadata !9, metadata !10, metadata !"_BLAST_init", metadata !"_BLAST_init", metadata !"", i32 56, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @_BLAST_init, null, null, metadata !2, i32 57} ; [ DW_TAG_subprogram ] [line 56] [def] [scope 57] [_BLAST_init]
!9 = metadata !{metadata !"kbfiltr_simpl1.cil.c", metadata !"/"}
!10 = metadata !{i32 786473, metadata !9}         ; [ DW_TAG_file_type ] [//kbfiltr_simpl1.cil.c]
!11 = metadata !{i32 786478, metadata !9, metadata !10, metadata !"KbFilter_PnP", metadata !"KbFilter_PnP", metadata !"", i32 80, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32)* @KbFilter_PnP, null, null, metadata !2, i32 81} ; [ DW_TAG_subprogram ] [line 80] [def] [scope 81] [KbFilter_PnP]
!12 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !14, metadata !14, metadata !14}
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786478, metadata !9, metadata !10, metadata !"main", metadata !"main", metadata !"", i32 317, metadata !16, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 ()* @main, null, null, metadata !2, i32 318} ; [ DW_TAG_subprogram ] [line 317] [def] [scope 318] [main]
!16 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !17, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!17 = metadata !{metadata !14}
!18 = metadata !{i32 786478, metadata !9, metadata !10, metadata !"stubMoreProcessingRequired", metadata !"stubMoreProcessingRequired", metadata !"", i32 441, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @stubMoreProcessingRequired, null, null, metadata !2, i32 442} ; [ DW_TAG_subprogram ] [line 441] [def] [scope 442] [stubMoreProcessingRequired]
!19 = metadata !{i32 786478, metadata !9, metadata !10, metadata !"IofCallDriver", metadata !"IofCallDriver", metadata !"", i32 455, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32)* @IofCallDriver, null, null, metadata !2, i32 456} ; [ DW_TAG_subprogram ] [line 455] [def] [scope 456] [IofCallDriver]
!20 = metadata !{i32 786478, metadata !9, metadata !10, metadata !"IofCompleteRequest", metadata !"IofCompleteRequest", metadata !"", i32 526, metadata !21, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, i32)* @IofCompleteRequest, null, null, metadata !2, i32 527} ; [ DW_TAG_subprogram ] [line 526] [def] [scope 527] [IofCompleteRequest]
!21 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !22, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!22 = metadata !{null, metadata !14, metadata !14}
!23 = metadata !{i32 786478, metadata !9, metadata !10, metadata !"KeSetEvent", metadata !"KeSetEvent", metadata !"", i32 540, metadata !24, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32, i32)* @KeSetEvent, null, null, metadata !2, i32 541} ; [ DW_TAG_subprogram ] [line 540] [def] [scope 541] [KeSetEvent]
!24 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !25, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!25 = metadata !{metadata !14, metadata !14, metadata !14, metadata !14}
!26 = metadata !{i32 786478, metadata !9, metadata !10, metadata !"KeWaitForSingleObject", metadata !"KeWaitForSingleObject", metadata !"", i32 548, metadata !27, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32, i32, i32, i32)* @KeWaitForSingleObject, null, null, metadata !2, i32 550} ; [ DW_TAG_subprogram ] [line 548] [def] [scope 550] [KeWaitForSingleObject]
!27 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !28, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!28 = metadata !{metadata !14, metadata !14, metadata !14, metadata !14, metadata !14, metadata !14}
!29 = metadata !{i32 786478, metadata !9, metadata !10, metadata !"KbFilter_Complete", metadata !"KbFilter_Complete", metadata !"", i32 592, metadata !24, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32, i32)* @KbFilter_Complete, null, null, metadata !2, i32 593} ; [ DW_TAG_subprogram ] [line 592] [def] [scope 593] [KbFilter_Complete]
!30 = metadata !{i32 786478, metadata !9, metadata !10, metadata !"errorFn", metadata !"errorFn", metadata !"", i32 604, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @errorFn, null, null, metadata !2, i32 605} ; [ DW_TAG_subprogram ] [line 604] [def] [scope 605] [errorFn]
!31 = metadata !{metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41, metadata !42, metadata !43, metadata !44, metadata !45, metadata !46, metadata !47, metadata !48, metadata !49}
!32 = metadata !{i32 786484, i32 0, null, metadata !"KernelMode", metadata !"KernelMode", metadata !"", metadata !5, i32 11, metadata !14, i32 0, i32 1, i32* @"'KernelMode", null} ; [ DW_TAG_variable ] [KernelMode] [line 11] [def]
!33 = metadata !{i32 786484, i32 0, null, metadata !"Executive", metadata !"Executive", metadata !"", metadata !5, i32 12, metadata !14, i32 0, i32 1, i32* @"'Executive", null} ; [ DW_TAG_variable ] [Executive] [line 12] [def]
!34 = metadata !{i32 786484, i32 0, null, metadata !"s", metadata !"s", metadata !"", metadata !5, i32 13, metadata !14, i32 0, i32 1, i32* @"'s", null} ; [ DW_TAG_variable ] [s] [line 13] [def]
!35 = metadata !{i32 786484, i32 0, null, metadata !"UNLOADED", metadata !"UNLOADED", metadata !"", metadata !5, i32 14, metadata !14, i32 0, i32 1, i32* @"'UNLOADED", null} ; [ DW_TAG_variable ] [UNLOADED] [line 14] [def]
!36 = metadata !{i32 786484, i32 0, null, metadata !"NP", metadata !"NP", metadata !"", metadata !5, i32 15, metadata !14, i32 0, i32 1, i32* @"'NP", null} ; [ DW_TAG_variable ] [NP] [line 15] [def]
!37 = metadata !{i32 786484, i32 0, null, metadata !"DC", metadata !"DC", metadata !"", metadata !5, i32 16, metadata !14, i32 0, i32 1, i32* @"'DC", null} ; [ DW_TAG_variable ] [DC] [line 16] [def]
!38 = metadata !{i32 786484, i32 0, null, metadata !"SKIP1", metadata !"SKIP1", metadata !"", metadata !5, i32 17, metadata !14, i32 0, i32 1, i32* @"'SKIP1", null} ; [ DW_TAG_variable ] [SKIP1] [line 17] [def]
!39 = metadata !{i32 786484, i32 0, null, metadata !"SKIP2", metadata !"SKIP2", metadata !"", metadata !5, i32 18, metadata !14, i32 0, i32 1, i32* @"'SKIP2", null} ; [ DW_TAG_variable ] [SKIP2] [line 18] [def]
!40 = metadata !{i32 786484, i32 0, null, metadata !"MPR1", metadata !"MPR1", metadata !"", metadata !5, i32 19, metadata !14, i32 0, i32 1, i32* @"'MPR1", null} ; [ DW_TAG_variable ] [MPR1] [line 19] [def]
!41 = metadata !{i32 786484, i32 0, null, metadata !"MPR3", metadata !"MPR3", metadata !"", metadata !5, i32 20, metadata !14, i32 0, i32 1, i32* @"'MPR3", null} ; [ DW_TAG_variable ] [MPR3] [line 20] [def]
!42 = metadata !{i32 786484, i32 0, null, metadata !"IPC", metadata !"IPC", metadata !"", metadata !5, i32 21, metadata !14, i32 0, i32 1, i32* @"'IPC", null} ; [ DW_TAG_variable ] [IPC] [line 21] [def]
!43 = metadata !{i32 786484, i32 0, null, metadata !"pended", metadata !"pended", metadata !"", metadata !5, i32 22, metadata !14, i32 0, i32 1, i32* @"'pended", null} ; [ DW_TAG_variable ] [pended] [line 22] [def]
!44 = metadata !{i32 786484, i32 0, null, metadata !"compFptr", metadata !"compFptr", metadata !"", metadata !5, i32 23, metadata !14, i32 0, i32 1, i32* @"'compFptr", null} ; [ DW_TAG_variable ] [compFptr] [line 23] [def]
!45 = metadata !{i32 786484, i32 0, null, metadata !"compRegistered", metadata !"compRegistered", metadata !"", metadata !5, i32 24, metadata !14, i32 0, i32 1, i32* @"'compRegistered", null} ; [ DW_TAG_variable ] [compRegistered] [line 24] [def]
!46 = metadata !{i32 786484, i32 0, null, metadata !"lowerDriverReturn", metadata !"lowerDriverReturn", metadata !"", metadata !5, i32 25, metadata !14, i32 0, i32 1, i32* @"'lowerDriverReturn", null} ; [ DW_TAG_variable ] [lowerDriverReturn] [line 25] [def]
!47 = metadata !{i32 786484, i32 0, null, metadata !"setEventCalled", metadata !"setEventCalled", metadata !"", metadata !5, i32 26, metadata !14, i32 0, i32 1, i32* @"'setEventCalled", null} ; [ DW_TAG_variable ] [setEventCalled] [line 26] [def]
!48 = metadata !{i32 786484, i32 0, null, metadata !"customIrp", metadata !"customIrp", metadata !"", metadata !5, i32 27, metadata !14, i32 0, i32 1, i32* @"'customIrp", null} ; [ DW_TAG_variable ] [customIrp] [line 27] [def]
!49 = metadata !{i32 786484, i32 0, null, metadata !"myStatus", metadata !"myStatus", metadata !"", metadata !5, i32 28, metadata !14, i32 0, i32 1, i32* @"'myStatus", null} ; [ DW_TAG_variable ] [myStatus] [line 28] [def]
!50 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!51 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!52 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!53 = metadata !{i32 46, i32 3, metadata !54, null}
!54 = metadata !{i32 786443, metadata !1, metadata !4, i32 33, i32 3, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!55 = metadata !{i32 47, i32 3, metadata !54, null}
!56 = metadata !{i32 48, i32 3, metadata !54, null}
!57 = metadata !{i32 49, i32 3, metadata !54, null}
!58 = metadata !{i32 50, i32 3, metadata !54, null}
!59 = metadata !{i32 51, i32 3, metadata !54, null}
!60 = metadata !{i32 52, i32 3, metadata !54, null}
!61 = metadata !{i32 55, i32 1, metadata !4, null}
!62 = metadata !{i32 60, i32 3, metadata !63, null}
!63 = metadata !{i32 786443, metadata !9, metadata !8, i32 59, i32 3, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!64 = metadata !{i32 61, i32 3, metadata !63, null}
!65 = metadata !{i32 62, i32 3, metadata !63, null}
!66 = metadata !{i32 63, i32 3, metadata !63, null}
!67 = metadata !{i32 64, i32 3, metadata !63, null}
!68 = metadata !{i32 65, i32 3, metadata !63, null}
!69 = metadata !{i32 66, i32 3, metadata !63, null}
!70 = metadata !{i32 67, i32 3, metadata !63, null}
!71 = metadata !{i32 68, i32 3, metadata !63, null}
!72 = metadata !{i32 69, i32 3, metadata !63, null}
!73 = metadata !{i32 70, i32 3, metadata !63, null}
!74 = metadata !{i32 71, i32 3, metadata !63, null}
!75 = metadata !{i32 72, i32 3, metadata !63, null}
!76 = metadata !{i32 73, i32 3, metadata !63, null}
!77 = metadata !{i32 74, i32 3, metadata !63, null}
!78 = metadata !{i32 77, i32 1, metadata !8, null}
!79 = metadata !{i32 786689, metadata !11, metadata !"DeviceObject", metadata !10, i32 16777296, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [DeviceObject] [line 80]
!80 = metadata !{i32 80, i32 22, metadata !11, null}
!81 = metadata !{i32 786689, metadata !11, metadata !"Irp", metadata !10, i32 33554512, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Irp] [line 80]
!82 = metadata !{i32 80, i32 41, metadata !11, null}
!83 = metadata !{i32 84, i32 15, metadata !11, null}
!84 = metadata !{i32 786688, metadata !11, metadata !"event", metadata !10, i32 84, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [event] [line 84]
!85 = metadata !{i32 84, i32 7, metadata !11, null}
!86 = metadata !{i32 85, i32 39, metadata !11, null}
!87 = metadata !{i32 786688, metadata !11, metadata !"DeviceObject__DeviceExtension", metadata !10, i32 85, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [DeviceObject__DeviceExtension] [line 85]
!88 = metadata !{i32 85, i32 7, metadata !11, null}
!89 = metadata !{i32 86, i32 50, metadata !11, null}
!90 = metadata !{i32 786688, metadata !11, metadata !"Irp__Tail__Overlay__CurrentStackLocation", metadata !10, i32 86, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Irp__Tail__Overlay__CurrentStackLocation] [line 86]
!91 = metadata !{i32 86, i32 7, metadata !11, null}
!92 = metadata !{i32 87, i32 33, metadata !11, null}
!93 = metadata !{i32 786688, metadata !11, metadata !"irpStack__MinorFunction", metadata !10, i32 87, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irpStack__MinorFunction] [line 87]
!94 = metadata !{i32 87, i32 7, metadata !11, null}
!95 = metadata !{i32 88, i32 28, metadata !11, null}
!96 = metadata !{i32 786688, metadata !11, metadata !"devExt__TopOfStack", metadata !10, i32 88, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [devExt__TopOfStack] [line 88]
!97 = metadata !{i32 88, i32 7, metadata !11, null}
!98 = metadata !{i32 94, i32 30, metadata !11, null}
!99 = metadata !{i32 786688, metadata !11, metadata !"Irp__CurrentLocation", metadata !10, i32 94, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Irp__CurrentLocation] [line 94]
!100 = metadata !{i32 94, i32 7, metadata !11, null}
!101 = metadata !{i32 0}
!102 = metadata !{i32 786688, metadata !11, metadata !"status", metadata !10, i32 83, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [status] [line 83]
!103 = metadata !{i32 83, i32 7, metadata !11, null}
!104 = metadata !{i32 786688, metadata !11, metadata !"devExt", metadata !10, i32 81, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [devExt] [line 81]
!105 = metadata !{i32 81, i32 7, metadata !11, null}
!106 = metadata !{i32 786688, metadata !11, metadata !"irpStack", metadata !10, i32 82, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irpStack] [line 82]
!107 = metadata !{i32 82, i32 7, metadata !11, null}
!108 = metadata !{i32 786688, metadata !11, metadata !"irpSp", metadata !10, i32 95, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irpSp] [line 95]
!109 = metadata !{i32 95, i32 7, metadata !11, null}
!110 = metadata !{i32 786688, metadata !11, metadata !"nextIrpSp__Control", metadata !10, i32 97, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nextIrpSp__Control] [line 97]
!111 = metadata !{i32 97, i32 7, metadata !11, null}
!112 = metadata !{i32 174, i32 51, metadata !113, null}
!113 = metadata !{i32 786443, metadata !9, metadata !114, i32 174, i32 51, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!114 = metadata !{i32 786443, metadata !9, metadata !115, i32 169, i32 52, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!115 = metadata !{i32 786443, metadata !9, metadata !116, i32 169, i32 49, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!116 = metadata !{i32 786443, metadata !9, metadata !117, i32 166, i32 50, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!117 = metadata !{i32 786443, metadata !9, metadata !118, i32 164, i32 47, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!118 = metadata !{i32 786443, metadata !9, metadata !119, i32 163, i32 48, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!119 = metadata !{i32 786443, metadata !9, metadata !120, i32 161, i32 45, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!120 = metadata !{i32 786443, metadata !9, metadata !121, i32 160, i32 46, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!121 = metadata !{i32 786443, metadata !9, metadata !122, i32 158, i32 43, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!122 = metadata !{i32 786443, metadata !9, metadata !123, i32 157, i32 44, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!123 = metadata !{i32 786443, metadata !9, metadata !124, i32 155, i32 41, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!124 = metadata !{i32 786443, metadata !9, metadata !125, i32 154, i32 42, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!125 = metadata !{i32 786443, metadata !9, metadata !126, i32 152, i32 39, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!126 = metadata !{i32 786443, metadata !9, metadata !127, i32 151, i32 40, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!127 = metadata !{i32 786443, metadata !9, metadata !128, i32 149, i32 37, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!128 = metadata !{i32 786443, metadata !9, metadata !129, i32 148, i32 38, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!129 = metadata !{i32 786443, metadata !9, metadata !130, i32 146, i32 35, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!130 = metadata !{i32 786443, metadata !9, metadata !131, i32 145, i32 36, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!131 = metadata !{i32 786443, metadata !9, metadata !132, i32 143, i32 33, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!132 = metadata !{i32 786443, metadata !9, metadata !133, i32 142, i32 34, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!133 = metadata !{i32 786443, metadata !9, metadata !134, i32 140, i32 31, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!134 = metadata !{i32 786443, metadata !9, metadata !135, i32 139, i32 32, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!135 = metadata !{i32 786443, metadata !9, metadata !136, i32 137, i32 29, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!136 = metadata !{i32 786443, metadata !9, metadata !137, i32 136, i32 30, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!137 = metadata !{i32 786443, metadata !9, metadata !138, i32 134, i32 27, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!138 = metadata !{i32 786443, metadata !9, metadata !139, i32 133, i32 28, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!139 = metadata !{i32 786443, metadata !9, metadata !140, i32 131, i32 25, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!140 = metadata !{i32 786443, metadata !9, metadata !141, i32 130, i32 26, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!141 = metadata !{i32 786443, metadata !9, metadata !142, i32 128, i32 23, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!142 = metadata !{i32 786443, metadata !9, metadata !143, i32 127, i32 24, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!143 = metadata !{i32 786443, metadata !9, metadata !144, i32 125, i32 21, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!144 = metadata !{i32 786443, metadata !9, metadata !145, i32 124, i32 22, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!145 = metadata !{i32 786443, metadata !9, metadata !146, i32 122, i32 19, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!146 = metadata !{i32 786443, metadata !9, metadata !147, i32 121, i32 20, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!147 = metadata !{i32 786443, metadata !9, metadata !148, i32 119, i32 17, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!148 = metadata !{i32 786443, metadata !9, metadata !149, i32 118, i32 18, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!149 = metadata !{i32 786443, metadata !9, metadata !150, i32 116, i32 15, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!150 = metadata !{i32 786443, metadata !9, metadata !151, i32 115, i32 16, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!151 = metadata !{i32 786443, metadata !9, metadata !152, i32 113, i32 13, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!152 = metadata !{i32 786443, metadata !9, metadata !153, i32 112, i32 14, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!153 = metadata !{i32 786443, metadata !9, metadata !154, i32 110, i32 11, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!154 = metadata !{i32 786443, metadata !9, metadata !155, i32 109, i32 12, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!155 = metadata !{i32 786443, metadata !9, metadata !156, i32 107, i32 9, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!156 = metadata !{i32 786443, metadata !9, metadata !157, i32 106, i32 10, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!157 = metadata !{i32 786443, metadata !9, metadata !158, i32 104, i32 7, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!158 = metadata !{i32 786443, metadata !9, metadata !11, i32 103, i32 3, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!159 = metadata !{i32 608, i32 10, metadata !160, metadata !161}
!160 = metadata !{i32 786443, metadata !9, metadata !30, i32 607, i32 3, i32 0, i32 216} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!161 = metadata !{i32 176, i32 49, metadata !162, null}
!162 = metadata !{i32 786443, metadata !9, metadata !163, i32 175, i32 49, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!163 = metadata !{i32 786443, metadata !9, metadata !113, i32 174, i32 60, i32 0, i32 69} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!164 = metadata !{i32 179, i32 53, metadata !165, null}
!165 = metadata !{i32 786443, metadata !9, metadata !166, i32 179, i32 53, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!166 = metadata !{i32 786443, metadata !9, metadata !113, i32 178, i32 54, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!167 = metadata !{i32 608, i32 10, metadata !160, metadata !168}
!168 = metadata !{i32 181, i32 51, metadata !169, null}
!169 = metadata !{i32 786443, metadata !9, metadata !170, i32 180, i32 51, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!170 = metadata !{i32 786443, metadata !9, metadata !165, i32 179, i32 74, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!171 = metadata !{i32 184, i32 51, metadata !172, null}
!172 = metadata !{i32 786443, metadata !9, metadata !165, i32 183, i32 56, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!173 = metadata !{i32 224}
!174 = metadata !{i32 786688, metadata !11, metadata !"irpSp__Control", metadata !10, i32 100, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irpSp__Control] [line 100]
!175 = metadata !{i32 100, i32 7, metadata !11, null}
!176 = metadata !{i32 786689, metadata !19, metadata !"DeviceObject", metadata !10, i32 16777671, metadata !14, i32 0, metadata !177} ; [ DW_TAG_arg_variable ] [DeviceObject] [line 455]
!177 = metadata !{i32 192, i32 56, metadata !178, null}
!178 = metadata !{i32 786443, metadata !9, metadata !114, i32 187, i32 47, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!179 = metadata !{i32 455, i32 23, metadata !19, metadata !177}
!180 = metadata !{i32 786689, metadata !19, metadata !"Irp", metadata !10, i32 33554887, metadata !14, i32 0, metadata !177} ; [ DW_TAG_arg_variable ] [Irp] [line 455]
!181 = metadata !{i32 455, i32 42, metadata !19, metadata !177}
!182 = metadata !{i32 459, i32 18, metadata !19, metadata !177}
!183 = metadata !{i32 786688, metadata !19, metadata !"lcontext", metadata !10, i32 459, metadata !14, i32 0, metadata !177} ; [ DW_TAG_auto_variable ] [lcontext] [line 459]
!184 = metadata !{i32 459, i32 7, metadata !19, metadata !177}
!185 = metadata !{i32 462, i32 7, metadata !186, metadata !177}
!186 = metadata !{i32 786443, metadata !9, metadata !187, i32 462, i32 7, i32 0, i32 165} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!187 = metadata !{i32 786443, metadata !9, metadata !19, i32 462, i32 3, i32 0, i32 164} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!188 = metadata !{i32 786689, metadata !29, metadata !"DeviceObject", metadata !10, i32 16777808, metadata !14, i32 0, metadata !189} ; [ DW_TAG_arg_variable ] [DeviceObject] [line 592]
!189 = metadata !{i32 463, i32 21, metadata !190, metadata !177}
!190 = metadata !{i32 786443, metadata !9, metadata !186, i32 462, i32 23, i32 0, i32 166} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!191 = metadata !{i32 592, i32 27, metadata !29, metadata !189}
!192 = metadata !{i32 786689, metadata !29, metadata !"Irp", metadata !10, i32 33555024, metadata !14, i32 0, metadata !189} ; [ DW_TAG_arg_variable ] [Irp] [line 592]
!193 = metadata !{i32 592, i32 46, metadata !29, metadata !189}
!194 = metadata !{i32 786689, metadata !29, metadata !"Context", metadata !10, i32 50332240, metadata !14, i32 0, metadata !189} ; [ DW_TAG_arg_variable ] [Context] [line 592]
!195 = metadata !{i32 592, i32 56, metadata !29, metadata !189}
!196 = metadata !{i32 786688, metadata !29, metadata !"event", metadata !10, i32 593, metadata !14, i32 0, metadata !189} ; [ DW_TAG_auto_variable ] [event] [line 593]
!197 = metadata !{i32 593, i32 7, metadata !29, metadata !189}
!198 = metadata !{i32 786689, metadata !23, metadata !"Event", metadata !10, i32 16777756, metadata !14, i32 0, metadata !199} ; [ DW_TAG_arg_variable ] [Event] [line 540]
!199 = metadata !{i32 598, i32 3, metadata !200, metadata !189}
!200 = metadata !{i32 786443, metadata !9, metadata !201, i32 596, i32 3, i32 0, i32 215} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!201 = metadata !{i32 786443, metadata !9, metadata !29, i32 595, i32 3, i32 0, i32 214} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!202 = metadata !{i32 540, i32 20, metadata !23, metadata !199}
!203 = metadata !{i32 786689, metadata !23, metadata !"Increment", metadata !10, i32 33554972, metadata !14, i32 0, metadata !199} ; [ DW_TAG_arg_variable ] [Increment] [line 540]
!204 = metadata !{i32 540, i32 32, metadata !23, metadata !199}
!205 = metadata !{i32 786689, metadata !23, metadata !"Wait", metadata !10, i32 50332188, metadata !14, i32 0, metadata !199} ; [ DW_TAG_arg_variable ] [Wait] [line 540]
!206 = metadata !{i32 540, i32 48, metadata !23, metadata !199}
!207 = metadata !{i32 541, i32 11, metadata !23, metadata !199}
!208 = metadata !{i32 786688, metadata !23, metadata !"l", metadata !10, i32 541, metadata !14, i32 0, metadata !199} ; [ DW_TAG_auto_variable ] [l] [line 541]
!209 = metadata !{i32 541, i32 7, metadata !23, metadata !199}
!210 = metadata !{i32 544, i32 3, metadata !211, metadata !199}
!211 = metadata !{i32 786443, metadata !9, metadata !23, i32 543, i32 3, i32 0, i32 194} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!212 = metadata !{i32 -1073741802}
!213 = metadata !{i32 786688, metadata !19, metadata !"compRetStatus", metadata !10, i32 458, metadata !14, i32 0, metadata !177} ; [ DW_TAG_auto_variable ] [compRetStatus] [line 458]
!214 = metadata !{i32 458, i32 7, metadata !19, metadata !177}
!215 = metadata !{i32 445, i32 7, metadata !216, metadata !218}
!216 = metadata !{i32 786443, metadata !9, metadata !217, i32 445, i32 7, i32 0, i32 160} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!217 = metadata !{i32 786443, metadata !9, metadata !18, i32 444, i32 3, i32 0, i32 159} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!218 = metadata !{i32 464, i32 5, metadata !190, metadata !177}
!219 = metadata !{i32 446, i32 5, metadata !220, metadata !218}
!220 = metadata !{i32 786443, metadata !9, metadata !216, i32 445, i32 16, i32 0, i32 161} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!221 = metadata !{i32 465, i32 3, metadata !190, metadata !177}
!222 = metadata !{i32 608, i32 10, metadata !160, metadata !223}
!223 = metadata !{i32 449, i32 5, metadata !224, metadata !218}
!224 = metadata !{i32 786443, metadata !9, metadata !225, i32 448, i32 5, i32 0, i32 163} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!225 = metadata !{i32 786443, metadata !9, metadata !216, i32 447, i32 10, i32 0, i32 162} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!226 = metadata !{i32 477, i32 15, metadata !187, metadata !177}
!227 = metadata !{i32 786688, metadata !187, metadata !"tmp_ndt_2", metadata !10, i32 476, metadata !14, i32 0, metadata !177} ; [ DW_TAG_auto_variable ] [tmp_ndt_2] [line 476]
!228 = metadata !{i32 476, i32 7, metadata !187, metadata !177}
!229 = metadata !{i32 478, i32 7, metadata !230, metadata !177}
!230 = metadata !{i32 786443, metadata !9, metadata !187, i32 478, i32 7, i32 0, i32 167} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!231 = metadata !{i32 480, i32 17, metadata !232, metadata !177}
!232 = metadata !{i32 786443, metadata !9, metadata !230, i32 480, i32 10, i32 0, i32 169} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!233 = metadata !{i32 786688, metadata !232, metadata !"tmp_ndt_3", metadata !10, i32 479, metadata !14, i32 0, metadata !177} ; [ DW_TAG_auto_variable ] [tmp_ndt_3] [line 479]
!234 = metadata !{i32 479, i32 9, metadata !232, metadata !177}
!235 = metadata !{i32 481, i32 9, metadata !236, metadata !177}
!236 = metadata !{i32 786443, metadata !9, metadata !232, i32 481, i32 9, i32 0, i32 170} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!237 = metadata !{i32 259}
!238 = metadata !{i32 786688, metadata !19, metadata !"returnVal2", metadata !10, i32 457, metadata !14, i32 0, metadata !177} ; [ DW_TAG_auto_variable ] [returnVal2] [line 457]
!239 = metadata !{i32 457, i32 7, metadata !19, metadata !177}
!240 = metadata !{i32 500, i32 7, metadata !241, metadata !177}
!241 = metadata !{i32 786443, metadata !9, metadata !187, i32 500, i32 7, i32 0, i32 176} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!242 = metadata !{i32 501, i32 5, metadata !243, metadata !177}
!243 = metadata !{i32 786443, metadata !9, metadata !241, i32 500, i32 16, i32 0, i32 177} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!244 = metadata !{i32 502, i32 5, metadata !243, metadata !177}
!245 = metadata !{i32 503, i32 3, metadata !243, metadata !177}
!246 = metadata !{i32 504, i32 9, metadata !247, metadata !177}
!247 = metadata !{i32 786443, metadata !9, metadata !248, i32 504, i32 9, i32 0, i32 179} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!248 = metadata !{i32 786443, metadata !9, metadata !241, i32 503, i32 10, i32 0, i32 178} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!249 = metadata !{i32 505, i32 11, metadata !250, metadata !177}
!250 = metadata !{i32 786443, metadata !9, metadata !251, i32 505, i32 11, i32 0, i32 181} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!251 = metadata !{i32 786443, metadata !9, metadata !247, i32 504, i32 20, i32 0, i32 180} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!252 = metadata !{i32 506, i32 9, metadata !253, metadata !177}
!253 = metadata !{i32 786443, metadata !9, metadata !250, i32 505, i32 30, i32 0, i32 182} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!254 = metadata !{i32 507, i32 9, metadata !253, metadata !177}
!255 = metadata !{i32 508, i32 7, metadata !253, metadata !177}
!256 = metadata !{i32 509, i32 9, metadata !257, metadata !177}
!257 = metadata !{i32 786443, metadata !9, metadata !250, i32 508, i32 14, i32 0, i32 183} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!258 = metadata !{i32 510, i32 9, metadata !257, metadata !177}
!259 = metadata !{i32 513, i32 11, metadata !260, metadata !177}
!260 = metadata !{i32 786443, metadata !9, metadata !261, i32 513, i32 11, i32 0, i32 185} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!261 = metadata !{i32 786443, metadata !9, metadata !247, i32 512, i32 12, i32 0, i32 184} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!262 = metadata !{i32 514, i32 9, metadata !263, metadata !177}
!263 = metadata !{i32 786443, metadata !9, metadata !260, i32 513, i32 23, i32 0, i32 186} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!264 = metadata !{i32 515, i32 9, metadata !263, metadata !177}
!265 = metadata !{i32 197, i32 47, metadata !266, null}
!266 = metadata !{i32 786443, metadata !9, metadata !114, i32 195, i32 47, i32 0, i32 77} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!267 = metadata !{i32 786688, metadata !11, metadata !"__cil_tmp23", metadata !10, i32 101, metadata !268, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__cil_tmp23] [line 101]
!268 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!269 = metadata !{i32 101, i32 8, metadata !11, null}
!270 = metadata !{i32 197, i32 51, metadata !271, null}
!271 = metadata !{i32 786443, metadata !9, metadata !266, i32 197, i32 51, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!272 = metadata !{i32 786689, metadata !26, metadata !"Object", metadata !10, i32 16777764, metadata !14, i32 0, metadata !273} ; [ DW_TAG_arg_variable ] [Object] [line 548]
!273 = metadata !{i32 199, i32 49, metadata !274, null}
!274 = metadata !{i32 786443, metadata !9, metadata !275, i32 198, i32 49, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!275 = metadata !{i32 786443, metadata !9, metadata !271, i32 197, i32 72, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!276 = metadata !{i32 548, i32 31, metadata !26, metadata !273}
!277 = metadata !{i32 786689, metadata !26, metadata !"Alertable", metadata !10, i32 67109412, metadata !14, i32 0, metadata !273} ; [ DW_TAG_arg_variable ] [Alertable] [line 548]
!278 = metadata !{i32 548, i32 76, metadata !26, metadata !273}
!279 = metadata !{i32 786689, metadata !26, metadata !"Timeout", metadata !10, i32 83886629, metadata !14, i32 0, metadata !273} ; [ DW_TAG_arg_variable ] [Timeout] [line 549]
!280 = metadata !{i32 549, i32 31, metadata !26, metadata !273}
!281 = metadata !{i32 553, i32 7, metadata !282, metadata !273}
!282 = metadata !{i32 786443, metadata !9, metadata !283, i32 553, i32 7, i32 0, i32 196} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!283 = metadata !{i32 786443, metadata !9, metadata !26, i32 552, i32 3, i32 0, i32 195} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!284 = metadata !{i32 554, i32 9, metadata !285, metadata !273}
!285 = metadata !{i32 786443, metadata !9, metadata !286, i32 554, i32 9, i32 0, i32 198} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!286 = metadata !{i32 786443, metadata !9, metadata !282, i32 553, i32 18, i32 0, i32 197} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!287 = metadata !{i32 555, i32 7, metadata !288, metadata !273}
!288 = metadata !{i32 786443, metadata !9, metadata !285, i32 554, i32 30, i32 0, i32 199} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!289 = metadata !{i32 556, i32 7, metadata !288, metadata !273}
!290 = metadata !{i32 560, i32 3, metadata !286, metadata !273}
!291 = metadata !{i32 562, i32 9, metadata !292, metadata !273}
!292 = metadata !{i32 786443, metadata !9, metadata !293, i32 562, i32 9, i32 0, i32 202} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!293 = metadata !{i32 786443, metadata !9, metadata !282, i32 560, i32 10, i32 0, i32 201} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!294 = metadata !{i32 563, i32 7, metadata !295, metadata !273}
!295 = metadata !{i32 786443, metadata !9, metadata !292, i32 562, i32 25, i32 0, i32 203} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!296 = metadata !{i32 564, i32 7, metadata !295, metadata !273}
!297 = metadata !{i32 565, i32 5, metadata !295, metadata !273}
!298 = metadata !{i32 566, i32 11, metadata !299, metadata !273}
!299 = metadata !{i32 786443, metadata !9, metadata !300, i32 566, i32 11, i32 0, i32 205} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!300 = metadata !{i32 786443, metadata !9, metadata !292, i32 565, i32 12, i32 0, i32 204} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!301 = metadata !{i32 608, i32 10, metadata !160, metadata !302}
!302 = metadata !{i32 568, i32 9, metadata !303, metadata !273}
!303 = metadata !{i32 786443, metadata !9, metadata !304, i32 567, i32 9, i32 0, i32 207} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!304 = metadata !{i32 786443, metadata !9, metadata !299, i32 566, i32 22, i32 0, i32 206} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!305 = metadata !{i32 576, i32 15, metadata !283, metadata !273}
!306 = metadata !{i32 786688, metadata !283, metadata !"tmp_ndt_4", metadata !10, i32 575, metadata !14, i32 0, metadata !273} ; [ DW_TAG_auto_variable ] [tmp_ndt_4] [line 575]
!307 = metadata !{i32 575, i32 7, metadata !283, metadata !273}
!308 = metadata !{i32 203, i32 47, metadata !275, null}
!309 = metadata !{i32 206, i32 51, metadata !310, null}
!310 = metadata !{i32 786443, metadata !9, metadata !114, i32 206, i32 51, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!311 = metadata !{i32 212, i32 47, metadata !312, null}
!312 = metadata !{i32 786443, metadata !9, metadata !310, i32 206, i32 64, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!313 = metadata !{i32 786688, metadata !11, metadata !"Irp__IoStatus__Status", metadata !10, i32 92, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Irp__IoStatus__Status] [line 92]
!314 = metadata !{i32 92, i32 7, metadata !11, null}
!315 = metadata !{i32 219, i32 47, metadata !316, null}
!316 = metadata !{i32 786443, metadata !9, metadata !114, i32 213, i32 47, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!317 = metadata !{i32 786688, metadata !11, metadata !"Irp__IoStatus__Information", metadata !10, i32 93, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Irp__IoStatus__Information] [line 93]
!318 = metadata !{i32 93, i32 7, metadata !11, null}
!319 = metadata !{i32 786689, metadata !20, metadata !"Irp", metadata !10, i32 16777742, metadata !14, i32 0, metadata !320} ; [ DW_TAG_arg_variable ] [Irp] [line 526]
!320 = metadata !{i32 221, i32 47, metadata !316, null}
!321 = metadata !{i32 526, i32 29, metadata !20, metadata !320}
!322 = metadata !{i32 786689, metadata !20, metadata !"PriorityBoost", metadata !10, i32 33554958, metadata !14, i32 0, metadata !320} ; [ DW_TAG_arg_variable ] [PriorityBoost] [line 526]
!323 = metadata !{i32 526, i32 39, metadata !20, metadata !320}
!324 = metadata !{i32 530, i32 7, metadata !325, metadata !320}
!325 = metadata !{i32 786443, metadata !9, metadata !326, i32 530, i32 7, i32 0, i32 190} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!326 = metadata !{i32 786443, metadata !9, metadata !20, i32 529, i32 3, i32 0, i32 189} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!327 = metadata !{i32 531, i32 5, metadata !328, metadata !320}
!328 = metadata !{i32 786443, metadata !9, metadata !325, i32 530, i32 16, i32 0, i32 191} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!329 = metadata !{i32 223, i32 47, metadata !114, null}
!330 = metadata !{i32 608, i32 10, metadata !160, metadata !331}
!331 = metadata !{i32 534, i32 5, metadata !332, metadata !320}
!332 = metadata !{i32 786443, metadata !9, metadata !333, i32 533, i32 5, i32 0, i32 193} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!333 = metadata !{i32 786443, metadata !9, metadata !325, i32 532, i32 10, i32 0, i32 192} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!334 = metadata !{i32 608, i32 10, metadata !160, metadata !335}
!335 = metadata !{i32 518, i32 9, metadata !336, metadata !177}
!336 = metadata !{i32 786443, metadata !9, metadata !337, i32 517, i32 9, i32 0, i32 188} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!337 = metadata !{i32 786443, metadata !9, metadata !260, i32 516, i32 14, i32 0, i32 187} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!338 = metadata !{i32 1}
!339 = metadata !{i32 786688, metadata !11, metadata !"devExt__Removed", metadata !10, i32 90, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [devExt__Removed] [line 90]
!340 = metadata !{i32 90, i32 7, metadata !11, null}
!341 = metadata !{i32 242, i32 51, metadata !342, null}
!342 = metadata !{i32 786443, metadata !9, metadata !114, i32 242, i32 51, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!343 = metadata !{i32 243, i32 49, metadata !344, null}
!344 = metadata !{i32 786443, metadata !9, metadata !342, i32 242, i32 60, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!345 = metadata !{i32 786689, metadata !19, metadata !"DeviceObject", metadata !10, i32 16777671, metadata !14, i32 0, metadata !346} ; [ DW_TAG_arg_variable ] [DeviceObject] [line 455]
!346 = metadata !{i32 252, i32 47, metadata !347, null}
!347 = metadata !{i32 786443, metadata !9, metadata !114, i32 249, i32 47, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!348 = metadata !{i32 455, i32 23, metadata !19, metadata !346}
!349 = metadata !{i32 786689, metadata !19, metadata !"Irp", metadata !10, i32 33554887, metadata !14, i32 0, metadata !346} ; [ DW_TAG_arg_variable ] [Irp] [line 455]
!350 = metadata !{i32 455, i32 42, metadata !19, metadata !346}
!351 = metadata !{i32 459, i32 18, metadata !19, metadata !346}
!352 = metadata !{i32 786688, metadata !19, metadata !"lcontext", metadata !10, i32 459, metadata !14, i32 0, metadata !346} ; [ DW_TAG_auto_variable ] [lcontext] [line 459]
!353 = metadata !{i32 459, i32 7, metadata !19, metadata !346}
!354 = metadata !{i32 462, i32 7, metadata !186, metadata !346}
!355 = metadata !{i32 786689, metadata !29, metadata !"DeviceObject", metadata !10, i32 16777808, metadata !14, i32 0, metadata !356} ; [ DW_TAG_arg_variable ] [DeviceObject] [line 592]
!356 = metadata !{i32 463, i32 21, metadata !190, metadata !346}
!357 = metadata !{i32 592, i32 27, metadata !29, metadata !356}
!358 = metadata !{i32 786689, metadata !29, metadata !"Irp", metadata !10, i32 33555024, metadata !14, i32 0, metadata !356} ; [ DW_TAG_arg_variable ] [Irp] [line 592]
!359 = metadata !{i32 592, i32 46, metadata !29, metadata !356}
!360 = metadata !{i32 786689, metadata !29, metadata !"Context", metadata !10, i32 50332240, metadata !14, i32 0, metadata !356} ; [ DW_TAG_arg_variable ] [Context] [line 592]
!361 = metadata !{i32 592, i32 56, metadata !29, metadata !356}
!362 = metadata !{i32 786688, metadata !29, metadata !"event", metadata !10, i32 593, metadata !14, i32 0, metadata !356} ; [ DW_TAG_auto_variable ] [event] [line 593]
!363 = metadata !{i32 593, i32 7, metadata !29, metadata !356}
!364 = metadata !{i32 786689, metadata !23, metadata !"Event", metadata !10, i32 16777756, metadata !14, i32 0, metadata !365} ; [ DW_TAG_arg_variable ] [Event] [line 540]
!365 = metadata !{i32 598, i32 3, metadata !200, metadata !356}
!366 = metadata !{i32 540, i32 20, metadata !23, metadata !365}
!367 = metadata !{i32 786689, metadata !23, metadata !"Increment", metadata !10, i32 33554972, metadata !14, i32 0, metadata !365} ; [ DW_TAG_arg_variable ] [Increment] [line 540]
!368 = metadata !{i32 540, i32 32, metadata !23, metadata !365}
!369 = metadata !{i32 786689, metadata !23, metadata !"Wait", metadata !10, i32 50332188, metadata !14, i32 0, metadata !365} ; [ DW_TAG_arg_variable ] [Wait] [line 540]
!370 = metadata !{i32 540, i32 48, metadata !23, metadata !365}
!371 = metadata !{i32 541, i32 11, metadata !23, metadata !365}
!372 = metadata !{i32 786688, metadata !23, metadata !"l", metadata !10, i32 541, metadata !14, i32 0, metadata !365} ; [ DW_TAG_auto_variable ] [l] [line 541]
!373 = metadata !{i32 541, i32 7, metadata !23, metadata !365}
!374 = metadata !{i32 544, i32 3, metadata !211, metadata !365}
!375 = metadata !{i32 786688, metadata !19, metadata !"compRetStatus", metadata !10, i32 458, metadata !14, i32 0, metadata !346} ; [ DW_TAG_auto_variable ] [compRetStatus] [line 458]
!376 = metadata !{i32 458, i32 7, metadata !19, metadata !346}
!377 = metadata !{i32 445, i32 7, metadata !216, metadata !378}
!378 = metadata !{i32 464, i32 5, metadata !190, metadata !346}
!379 = metadata !{i32 446, i32 5, metadata !220, metadata !378}
!380 = metadata !{i32 465, i32 3, metadata !190, metadata !346}
!381 = metadata !{i32 608, i32 10, metadata !160, metadata !382}
!382 = metadata !{i32 449, i32 5, metadata !224, metadata !378}
!383 = metadata !{i32 477, i32 15, metadata !187, metadata !346}
!384 = metadata !{i32 786688, metadata !187, metadata !"tmp_ndt_2", metadata !10, i32 476, metadata !14, i32 0, metadata !346} ; [ DW_TAG_auto_variable ] [tmp_ndt_2] [line 476]
!385 = metadata !{i32 476, i32 7, metadata !187, metadata !346}
!386 = metadata !{i32 478, i32 7, metadata !230, metadata !346}
!387 = metadata !{i32 480, i32 17, metadata !232, metadata !346}
!388 = metadata !{i32 786688, metadata !232, metadata !"tmp_ndt_3", metadata !10, i32 479, metadata !14, i32 0, metadata !346} ; [ DW_TAG_auto_variable ] [tmp_ndt_3] [line 479]
!389 = metadata !{i32 479, i32 9, metadata !232, metadata !346}
!390 = metadata !{i32 481, i32 9, metadata !236, metadata !346}
!391 = metadata !{i32 786688, metadata !19, metadata !"returnVal2", metadata !10, i32 457, metadata !14, i32 0, metadata !346} ; [ DW_TAG_auto_variable ] [returnVal2] [line 457]
!392 = metadata !{i32 457, i32 7, metadata !19, metadata !346}
!393 = metadata !{i32 500, i32 7, metadata !241, metadata !346}
!394 = metadata !{i32 501, i32 5, metadata !243, metadata !346}
!395 = metadata !{i32 502, i32 5, metadata !243, metadata !346}
!396 = metadata !{i32 503, i32 3, metadata !243, metadata !346}
!397 = metadata !{i32 504, i32 9, metadata !247, metadata !346}
!398 = metadata !{i32 505, i32 11, metadata !250, metadata !346}
!399 = metadata !{i32 506, i32 9, metadata !253, metadata !346}
!400 = metadata !{i32 507, i32 9, metadata !253, metadata !346}
!401 = metadata !{i32 508, i32 7, metadata !253, metadata !346}
!402 = metadata !{i32 509, i32 9, metadata !257, metadata !346}
!403 = metadata !{i32 510, i32 9, metadata !257, metadata !346}
!404 = metadata !{i32 513, i32 11, metadata !260, metadata !346}
!405 = metadata !{i32 514, i32 9, metadata !263, metadata !346}
!406 = metadata !{i32 515, i32 9, metadata !263, metadata !346}
!407 = metadata !{i32 608, i32 10, metadata !160, metadata !408}
!408 = metadata !{i32 518, i32 9, metadata !336, metadata !346}
!409 = metadata !{i32 608, i32 10, metadata !160, metadata !410}
!410 = metadata !{i32 246, i32 49, metadata !411, null}
!411 = metadata !{i32 786443, metadata !9, metadata !412, i32 245, i32 49, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!412 = metadata !{i32 786443, metadata !9, metadata !342, i32 244, i32 54, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!413 = metadata !{i32 786688, metadata !11, metadata !"devExt__SurpriseRemoved", metadata !10, i32 91, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [devExt__SurpriseRemoved] [line 91]
!414 = metadata !{i32 91, i32 7, metadata !11, null}
!415 = metadata !{i32 226, i32 51, metadata !416, null}
!416 = metadata !{i32 786443, metadata !9, metadata !114, i32 226, i32 51, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!417 = metadata !{i32 227, i32 49, metadata !418, null}
!418 = metadata !{i32 786443, metadata !9, metadata !416, i32 226, i32 60, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!419 = metadata !{i32 786689, metadata !19, metadata !"DeviceObject", metadata !10, i32 16777671, metadata !14, i32 0, metadata !420} ; [ DW_TAG_arg_variable ] [DeviceObject] [line 455]
!420 = metadata !{i32 236, i32 56, metadata !421, null}
!421 = metadata !{i32 786443, metadata !9, metadata !114, i32 233, i32 47, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!422 = metadata !{i32 455, i32 23, metadata !19, metadata !420}
!423 = metadata !{i32 786689, metadata !19, metadata !"Irp", metadata !10, i32 33554887, metadata !14, i32 0, metadata !420} ; [ DW_TAG_arg_variable ] [Irp] [line 455]
!424 = metadata !{i32 455, i32 42, metadata !19, metadata !420}
!425 = metadata !{i32 459, i32 18, metadata !19, metadata !420}
!426 = metadata !{i32 786688, metadata !19, metadata !"lcontext", metadata !10, i32 459, metadata !14, i32 0, metadata !420} ; [ DW_TAG_auto_variable ] [lcontext] [line 459]
!427 = metadata !{i32 459, i32 7, metadata !19, metadata !420}
!428 = metadata !{i32 462, i32 7, metadata !186, metadata !420}
!429 = metadata !{i32 786689, metadata !29, metadata !"DeviceObject", metadata !10, i32 16777808, metadata !14, i32 0, metadata !430} ; [ DW_TAG_arg_variable ] [DeviceObject] [line 592]
!430 = metadata !{i32 463, i32 21, metadata !190, metadata !420}
!431 = metadata !{i32 592, i32 27, metadata !29, metadata !430}
!432 = metadata !{i32 786689, metadata !29, metadata !"Irp", metadata !10, i32 33555024, metadata !14, i32 0, metadata !430} ; [ DW_TAG_arg_variable ] [Irp] [line 592]
!433 = metadata !{i32 592, i32 46, metadata !29, metadata !430}
!434 = metadata !{i32 786689, metadata !29, metadata !"Context", metadata !10, i32 50332240, metadata !14, i32 0, metadata !430} ; [ DW_TAG_arg_variable ] [Context] [line 592]
!435 = metadata !{i32 592, i32 56, metadata !29, metadata !430}
!436 = metadata !{i32 786688, metadata !29, metadata !"event", metadata !10, i32 593, metadata !14, i32 0, metadata !430} ; [ DW_TAG_auto_variable ] [event] [line 593]
!437 = metadata !{i32 593, i32 7, metadata !29, metadata !430}
!438 = metadata !{i32 786689, metadata !23, metadata !"Event", metadata !10, i32 16777756, metadata !14, i32 0, metadata !439} ; [ DW_TAG_arg_variable ] [Event] [line 540]
!439 = metadata !{i32 598, i32 3, metadata !200, metadata !430}
!440 = metadata !{i32 540, i32 20, metadata !23, metadata !439}
!441 = metadata !{i32 786689, metadata !23, metadata !"Increment", metadata !10, i32 33554972, metadata !14, i32 0, metadata !439} ; [ DW_TAG_arg_variable ] [Increment] [line 540]
!442 = metadata !{i32 540, i32 32, metadata !23, metadata !439}
!443 = metadata !{i32 786689, metadata !23, metadata !"Wait", metadata !10, i32 50332188, metadata !14, i32 0, metadata !439} ; [ DW_TAG_arg_variable ] [Wait] [line 540]
!444 = metadata !{i32 540, i32 48, metadata !23, metadata !439}
!445 = metadata !{i32 541, i32 11, metadata !23, metadata !439}
!446 = metadata !{i32 786688, metadata !23, metadata !"l", metadata !10, i32 541, metadata !14, i32 0, metadata !439} ; [ DW_TAG_auto_variable ] [l] [line 541]
!447 = metadata !{i32 541, i32 7, metadata !23, metadata !439}
!448 = metadata !{i32 544, i32 3, metadata !211, metadata !439}
!449 = metadata !{i32 786688, metadata !19, metadata !"compRetStatus", metadata !10, i32 458, metadata !14, i32 0, metadata !420} ; [ DW_TAG_auto_variable ] [compRetStatus] [line 458]
!450 = metadata !{i32 458, i32 7, metadata !19, metadata !420}
!451 = metadata !{i32 445, i32 7, metadata !216, metadata !452}
!452 = metadata !{i32 464, i32 5, metadata !190, metadata !420}
!453 = metadata !{i32 446, i32 5, metadata !220, metadata !452}
!454 = metadata !{i32 465, i32 3, metadata !190, metadata !420}
!455 = metadata !{i32 608, i32 10, metadata !160, metadata !456}
!456 = metadata !{i32 449, i32 5, metadata !224, metadata !452}
!457 = metadata !{i32 477, i32 15, metadata !187, metadata !420}
!458 = metadata !{i32 786688, metadata !187, metadata !"tmp_ndt_2", metadata !10, i32 476, metadata !14, i32 0, metadata !420} ; [ DW_TAG_auto_variable ] [tmp_ndt_2] [line 476]
!459 = metadata !{i32 476, i32 7, metadata !187, metadata !420}
!460 = metadata !{i32 478, i32 7, metadata !230, metadata !420}
!461 = metadata !{i32 480, i32 17, metadata !232, metadata !420}
!462 = metadata !{i32 786688, metadata !232, metadata !"tmp_ndt_3", metadata !10, i32 479, metadata !14, i32 0, metadata !420} ; [ DW_TAG_auto_variable ] [tmp_ndt_3] [line 479]
!463 = metadata !{i32 479, i32 9, metadata !232, metadata !420}
!464 = metadata !{i32 481, i32 9, metadata !236, metadata !420}
!465 = metadata !{i32 786688, metadata !19, metadata !"returnVal2", metadata !10, i32 457, metadata !14, i32 0, metadata !420} ; [ DW_TAG_auto_variable ] [returnVal2] [line 457]
!466 = metadata !{i32 457, i32 7, metadata !19, metadata !420}
!467 = metadata !{i32 500, i32 7, metadata !241, metadata !420}
!468 = metadata !{i32 501, i32 5, metadata !243, metadata !420}
!469 = metadata !{i32 502, i32 5, metadata !243, metadata !420}
!470 = metadata !{i32 503, i32 3, metadata !243, metadata !420}
!471 = metadata !{i32 504, i32 9, metadata !247, metadata !420}
!472 = metadata !{i32 505, i32 11, metadata !250, metadata !420}
!473 = metadata !{i32 506, i32 9, metadata !253, metadata !420}
!474 = metadata !{i32 507, i32 9, metadata !253, metadata !420}
!475 = metadata !{i32 508, i32 7, metadata !253, metadata !420}
!476 = metadata !{i32 509, i32 9, metadata !257, metadata !420}
!477 = metadata !{i32 510, i32 9, metadata !257, metadata !420}
!478 = metadata !{i32 513, i32 11, metadata !260, metadata !420}
!479 = metadata !{i32 514, i32 9, metadata !263, metadata !420}
!480 = metadata !{i32 515, i32 9, metadata !263, metadata !420}
!481 = metadata !{i32 608, i32 10, metadata !160, metadata !482}
!482 = metadata !{i32 518, i32 9, metadata !336, metadata !420}
!483 = metadata !{i32 608, i32 10, metadata !160, metadata !484}
!484 = metadata !{i32 230, i32 49, metadata !485, null}
!485 = metadata !{i32 786443, metadata !9, metadata !486, i32 229, i32 49, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!486 = metadata !{i32 786443, metadata !9, metadata !416, i32 228, i32 54, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!487 = metadata !{i32 275, i32 51, metadata !488, null}
!488 = metadata !{i32 786443, metadata !9, metadata !114, i32 275, i32 51, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!489 = metadata !{i32 276, i32 49, metadata !490, null}
!490 = metadata !{i32 786443, metadata !9, metadata !488, i32 275, i32 60, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!491 = metadata !{i32 786689, metadata !19, metadata !"DeviceObject", metadata !10, i32 16777671, metadata !14, i32 0, metadata !492} ; [ DW_TAG_arg_variable ] [DeviceObject] [line 455]
!492 = metadata !{i32 285, i32 56, metadata !493, null}
!493 = metadata !{i32 786443, metadata !9, metadata !114, i32 282, i32 47, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!494 = metadata !{i32 455, i32 23, metadata !19, metadata !492}
!495 = metadata !{i32 786689, metadata !19, metadata !"Irp", metadata !10, i32 33554887, metadata !14, i32 0, metadata !492} ; [ DW_TAG_arg_variable ] [Irp] [line 455]
!496 = metadata !{i32 455, i32 42, metadata !19, metadata !492}
!497 = metadata !{i32 459, i32 18, metadata !19, metadata !492}
!498 = metadata !{i32 786688, metadata !19, metadata !"lcontext", metadata !10, i32 459, metadata !14, i32 0, metadata !492} ; [ DW_TAG_auto_variable ] [lcontext] [line 459]
!499 = metadata !{i32 459, i32 7, metadata !19, metadata !492}
!500 = metadata !{i32 462, i32 7, metadata !186, metadata !492}
!501 = metadata !{i32 786689, metadata !29, metadata !"DeviceObject", metadata !10, i32 16777808, metadata !14, i32 0, metadata !502} ; [ DW_TAG_arg_variable ] [DeviceObject] [line 592]
!502 = metadata !{i32 463, i32 21, metadata !190, metadata !492}
!503 = metadata !{i32 592, i32 27, metadata !29, metadata !502}
!504 = metadata !{i32 786689, metadata !29, metadata !"Irp", metadata !10, i32 33555024, metadata !14, i32 0, metadata !502} ; [ DW_TAG_arg_variable ] [Irp] [line 592]
!505 = metadata !{i32 592, i32 46, metadata !29, metadata !502}
!506 = metadata !{i32 786689, metadata !29, metadata !"Context", metadata !10, i32 50332240, metadata !14, i32 0, metadata !502} ; [ DW_TAG_arg_variable ] [Context] [line 592]
!507 = metadata !{i32 592, i32 56, metadata !29, metadata !502}
!508 = metadata !{i32 786688, metadata !29, metadata !"event", metadata !10, i32 593, metadata !14, i32 0, metadata !502} ; [ DW_TAG_auto_variable ] [event] [line 593]
!509 = metadata !{i32 593, i32 7, metadata !29, metadata !502}
!510 = metadata !{i32 786689, metadata !23, metadata !"Event", metadata !10, i32 16777756, metadata !14, i32 0, metadata !511} ; [ DW_TAG_arg_variable ] [Event] [line 540]
!511 = metadata !{i32 598, i32 3, metadata !200, metadata !502}
!512 = metadata !{i32 540, i32 20, metadata !23, metadata !511}
!513 = metadata !{i32 786689, metadata !23, metadata !"Increment", metadata !10, i32 33554972, metadata !14, i32 0, metadata !511} ; [ DW_TAG_arg_variable ] [Increment] [line 540]
!514 = metadata !{i32 540, i32 32, metadata !23, metadata !511}
!515 = metadata !{i32 786689, metadata !23, metadata !"Wait", metadata !10, i32 50332188, metadata !14, i32 0, metadata !511} ; [ DW_TAG_arg_variable ] [Wait] [line 540]
!516 = metadata !{i32 540, i32 48, metadata !23, metadata !511}
!517 = metadata !{i32 541, i32 11, metadata !23, metadata !511}
!518 = metadata !{i32 786688, metadata !23, metadata !"l", metadata !10, i32 541, metadata !14, i32 0, metadata !511} ; [ DW_TAG_auto_variable ] [l] [line 541]
!519 = metadata !{i32 541, i32 7, metadata !23, metadata !511}
!520 = metadata !{i32 544, i32 3, metadata !211, metadata !511}
!521 = metadata !{i32 786688, metadata !19, metadata !"compRetStatus", metadata !10, i32 458, metadata !14, i32 0, metadata !492} ; [ DW_TAG_auto_variable ] [compRetStatus] [line 458]
!522 = metadata !{i32 458, i32 7, metadata !19, metadata !492}
!523 = metadata !{i32 445, i32 7, metadata !216, metadata !524}
!524 = metadata !{i32 464, i32 5, metadata !190, metadata !492}
!525 = metadata !{i32 446, i32 5, metadata !220, metadata !524}
!526 = metadata !{i32 465, i32 3, metadata !190, metadata !492}
!527 = metadata !{i32 608, i32 10, metadata !160, metadata !528}
!528 = metadata !{i32 449, i32 5, metadata !224, metadata !524}
!529 = metadata !{i32 477, i32 15, metadata !187, metadata !492}
!530 = metadata !{i32 786688, metadata !187, metadata !"tmp_ndt_2", metadata !10, i32 476, metadata !14, i32 0, metadata !492} ; [ DW_TAG_auto_variable ] [tmp_ndt_2] [line 476]
!531 = metadata !{i32 476, i32 7, metadata !187, metadata !492}
!532 = metadata !{i32 478, i32 7, metadata !230, metadata !492}
!533 = metadata !{i32 480, i32 17, metadata !232, metadata !492}
!534 = metadata !{i32 786688, metadata !232, metadata !"tmp_ndt_3", metadata !10, i32 479, metadata !14, i32 0, metadata !492} ; [ DW_TAG_auto_variable ] [tmp_ndt_3] [line 479]
!535 = metadata !{i32 479, i32 9, metadata !232, metadata !492}
!536 = metadata !{i32 481, i32 9, metadata !236, metadata !492}
!537 = metadata !{i32 786688, metadata !19, metadata !"returnVal2", metadata !10, i32 457, metadata !14, i32 0, metadata !492} ; [ DW_TAG_auto_variable ] [returnVal2] [line 457]
!538 = metadata !{i32 457, i32 7, metadata !19, metadata !492}
!539 = metadata !{i32 500, i32 7, metadata !241, metadata !492}
!540 = metadata !{i32 501, i32 5, metadata !243, metadata !492}
!541 = metadata !{i32 502, i32 5, metadata !243, metadata !492}
!542 = metadata !{i32 503, i32 3, metadata !243, metadata !492}
!543 = metadata !{i32 504, i32 9, metadata !247, metadata !492}
!544 = metadata !{i32 505, i32 11, metadata !250, metadata !492}
!545 = metadata !{i32 506, i32 9, metadata !253, metadata !492}
!546 = metadata !{i32 507, i32 9, metadata !253, metadata !492}
!547 = metadata !{i32 508, i32 7, metadata !253, metadata !492}
!548 = metadata !{i32 509, i32 9, metadata !257, metadata !492}
!549 = metadata !{i32 510, i32 9, metadata !257, metadata !492}
!550 = metadata !{i32 513, i32 11, metadata !260, metadata !492}
!551 = metadata !{i32 514, i32 9, metadata !263, metadata !492}
!552 = metadata !{i32 515, i32 9, metadata !263, metadata !492}
!553 = metadata !{i32 314, i32 3, metadata !158, null}
!554 = metadata !{i32 608, i32 10, metadata !160, metadata !555}
!555 = metadata !{i32 518, i32 9, metadata !336, metadata !492}
!556 = metadata !{i32 608, i32 10, metadata !160, metadata !557}
!557 = metadata !{i32 279, i32 49, metadata !558, null}
!558 = metadata !{i32 786443, metadata !9, metadata !559, i32 278, i32 49, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!559 = metadata !{i32 786443, metadata !9, metadata !488, i32 277, i32 54, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!560 = metadata !{i32 608, i32 10, metadata !160, null}
!561 = metadata !{i32 786689, metadata !20, metadata !"Irp", metadata !10, i32 16777742, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Irp] [line 526]
!562 = metadata !{i32 526, i32 29, metadata !20, null}
!563 = metadata !{i32 786689, metadata !20, metadata !"PriorityBoost", metadata !10, i32 33554958, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [PriorityBoost] [line 526]
!564 = metadata !{i32 526, i32 39, metadata !20, null}
!565 = metadata !{i32 530, i32 7, metadata !325, null}
!566 = metadata !{i32 531, i32 5, metadata !328, null}
!567 = metadata !{i32 539, i32 1, metadata !20, null}
!568 = metadata !{i32 608, i32 10, metadata !160, metadata !569}
!569 = metadata !{i32 534, i32 5, metadata !332, null}
!570 = metadata !{i32 319, i32 13, metadata !15, null}
!571 = metadata !{i32 786688, metadata !15, metadata !"irp", metadata !10, i32 319, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irp] [line 319]
!572 = metadata !{i32 319, i32 7, metadata !15, null}
!573 = metadata !{i32 322, i32 20, metadata !15, null}
!574 = metadata !{i32 786688, metadata !15, metadata !"irp_choice", metadata !10, i32 322, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irp_choice] [line 322]
!575 = metadata !{i32 322, i32 7, metadata !15, null}
!576 = metadata !{i32 323, i32 16, metadata !15, null}
!577 = metadata !{i32 786688, metadata !15, metadata !"devobj", metadata !10, i32 323, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [devobj] [line 323]
!578 = metadata !{i32 323, i32 7, metadata !15, null}
!579 = metadata !{i32 329, i32 1, metadata !580, null}
!580 = metadata !{i32 786443, metadata !9, metadata !581, i32 327, i32 3, i32 0, i32 103} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!581 = metadata !{i32 786443, metadata !9, metadata !15, i32 326, i32 3, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!582 = metadata !{i32 330, i32 2, metadata !580, null}
!583 = metadata !{i32 331, i32 1, metadata !580, null}
!584 = metadata !{i32 332, i32 1, metadata !580, null}
!585 = metadata !{i32 333, i32 1, metadata !580, null}
!586 = metadata !{i32 334, i32 2, metadata !580, null}
!587 = metadata !{i32 335, i32 2, metadata !580, null}
!588 = metadata !{i32 336, i32 2, metadata !580, null}
!589 = metadata !{i32 337, i32 2, metadata !580, null}
!590 = metadata !{i32 338, i32 2, metadata !580, null}
!591 = metadata !{i32 339, i32 2, metadata !580, null}
!592 = metadata !{i32 340, i32 2, metadata !580, null}
!593 = metadata !{i32 341, i32 2, metadata !580, null}
!594 = metadata !{i32 342, i32 2, metadata !580, null}
!595 = metadata !{i32 343, i32 2, metadata !580, null}
!596 = metadata !{i32 344, i32 2, metadata !580, null}
!597 = metadata !{i32 345, i32 2, metadata !580, null}
!598 = metadata !{i32 346, i32 2, metadata !580, null}
!599 = metadata !{i32 786688, metadata !15, metadata !"status", metadata !10, i32 318, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [status] [line 318]
!600 = metadata !{i32 318, i32 7, metadata !15, null}
!601 = metadata !{i32 786688, metadata !15, metadata !"pirp", metadata !10, i32 320, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pirp] [line 320]
!602 = metadata !{i32 320, i32 7, metadata !15, null}
!603 = metadata !{i32 60, i32 3, metadata !63, metadata !604}
!604 = metadata !{i32 330, i32 3, metadata !580, null}
!605 = metadata !{i32 61, i32 3, metadata !63, metadata !604}
!606 = metadata !{i32 62, i32 3, metadata !63, metadata !604}
!607 = metadata !{i32 63, i32 3, metadata !63, metadata !604}
!608 = metadata !{i32 64, i32 3, metadata !63, metadata !604}
!609 = metadata !{i32 65, i32 3, metadata !63, metadata !604}
!610 = metadata !{i32 66, i32 3, metadata !63, metadata !604}
!611 = metadata !{i32 67, i32 3, metadata !63, metadata !604}
!612 = metadata !{i32 68, i32 3, metadata !63, metadata !604}
!613 = metadata !{i32 69, i32 3, metadata !63, metadata !604}
!614 = metadata !{i32 70, i32 3, metadata !63, metadata !604}
!615 = metadata !{i32 71, i32 3, metadata !63, metadata !604}
!616 = metadata !{i32 72, i32 3, metadata !63, metadata !604}
!617 = metadata !{i32 73, i32 3, metadata !63, metadata !604}
!618 = metadata !{i32 74, i32 3, metadata !63, metadata !604}
!619 = metadata !{i32 332, i32 7, metadata !620, null}
!620 = metadata !{i32 786443, metadata !9, metadata !581, i32 332, i32 7, i32 0, i32 104} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!621 = metadata !{i32 333, i32 5, metadata !622, null}
!622 = metadata !{i32 786443, metadata !9, metadata !620, i32 332, i32 20, i32 0, i32 105} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!623 = metadata !{i32 334, i32 5, metadata !622, null}
!624 = metadata !{i32 335, i32 5, metadata !622, null}
!625 = metadata !{i32 336, i32 5, metadata !622, null}
!626 = metadata !{i32 337, i32 5, metadata !622, null}
!627 = metadata !{i32 338, i32 5, metadata !622, null}
!628 = metadata !{i32 786688, metadata !15, metadata !"pirp__IoStatus__Status", metadata !10, i32 321, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pirp__IoStatus__Status] [line 321]
!629 = metadata !{i32 321, i32 7, metadata !15, null}
!630 = metadata !{i32 340, i32 5, metadata !622, null}
!631 = metadata !{i32 341, i32 9, metadata !632, null}
!632 = metadata !{i32 786443, metadata !9, metadata !622, i32 341, i32 9, i32 0, i32 106} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!633 = metadata !{i32 -1073741637}
!634 = metadata !{i32 343, i32 7, metadata !635, null}
!635 = metadata !{i32 786443, metadata !9, metadata !632, i32 341, i32 26, i32 0, i32 107} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!636 = metadata !{i32 46, i32 3, metadata !54, metadata !637}
!637 = metadata !{i32 348, i32 5, metadata !638, null}
!638 = metadata !{i32 786443, metadata !9, metadata !622, i32 345, i32 5, i32 0, i32 108} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!639 = metadata !{i32 47, i32 3, metadata !54, metadata !637}
!640 = metadata !{i32 48, i32 3, metadata !54, metadata !637}
!641 = metadata !{i32 49, i32 3, metadata !54, metadata !637}
!642 = metadata !{i32 50, i32 3, metadata !54, metadata !637}
!643 = metadata !{i32 51, i32 3, metadata !54, metadata !637}
!644 = metadata !{i32 52, i32 3, metadata !54, metadata !637}
!645 = metadata !{i32 350, i32 8, metadata !646, null}
!646 = metadata !{i32 786443, metadata !9, metadata !647, i32 350, i32 8, i32 0, i32 110} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!647 = metadata !{i32 786443, metadata !9, metadata !622, i32 350, i32 5, i32 0, i32 109} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!648 = metadata !{i32 786688, metadata !15, metadata !"__cil_tmp8", metadata !10, i32 324, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__cil_tmp8] [line 324]
!649 = metadata !{i32 324, i32 7, metadata !15, null}
!650 = metadata !{i32 350, i32 9, metadata !651, null}
!651 = metadata !{i32 786443, metadata !9, metadata !647, i32 350, i32 9, i32 0, i32 113} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!652 = metadata !{i32 356, i32 17, metadata !622, null}
!653 = metadata !{i32 786688, metadata !622, metadata !"tmp_ndt_1", metadata !10, i32 355, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp_ndt_1] [line 355]
!654 = metadata !{i32 355, i32 9, metadata !622, null}
!655 = metadata !{i32 357, i32 9, metadata !656, null}
!656 = metadata !{i32 786443, metadata !9, metadata !622, i32 357, i32 9, i32 0, i32 115} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!657 = metadata !{i32 786689, metadata !11, metadata !"DeviceObject", metadata !10, i32 16777296, metadata !14, i32 0, metadata !658} ; [ DW_TAG_arg_variable ] [DeviceObject] [line 80]
!658 = metadata !{i32 363, i32 18, metadata !659, null}
!659 = metadata !{i32 786443, metadata !9, metadata !660, i32 362, i32 9, i32 0, i32 120} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!660 = metadata !{i32 786443, metadata !9, metadata !661, i32 360, i32 14, i32 0, i32 119} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!661 = metadata !{i32 786443, metadata !9, metadata !662, i32 360, i32 11, i32 0, i32 118} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!662 = metadata !{i32 786443, metadata !9, metadata !656, i32 359, i32 12, i32 0, i32 117} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!663 = metadata !{i32 80, i32 22, metadata !11, metadata !658}
!664 = metadata !{i32 786689, metadata !11, metadata !"Irp", metadata !10, i32 33554512, metadata !14, i32 0, metadata !658} ; [ DW_TAG_arg_variable ] [Irp] [line 80]
!665 = metadata !{i32 80, i32 41, metadata !11, metadata !658}
!666 = metadata !{i32 84, i32 15, metadata !11, metadata !658}
!667 = metadata !{i32 786688, metadata !11, metadata !"event", metadata !10, i32 84, metadata !14, i32 0, metadata !658} ; [ DW_TAG_auto_variable ] [event] [line 84]
!668 = metadata !{i32 84, i32 7, metadata !11, metadata !658}
!669 = metadata !{i32 85, i32 39, metadata !11, metadata !658}
!670 = metadata !{i32 786688, metadata !11, metadata !"DeviceObject__DeviceExtension", metadata !10, i32 85, metadata !14, i32 0, metadata !658} ; [ DW_TAG_auto_variable ] [DeviceObject__DeviceExtension] [line 85]
!671 = metadata !{i32 85, i32 7, metadata !11, metadata !658}
!672 = metadata !{i32 86, i32 50, metadata !11, metadata !658}
!673 = metadata !{i32 786688, metadata !11, metadata !"Irp__Tail__Overlay__CurrentStackLocation", metadata !10, i32 86, metadata !14, i32 0, metadata !658} ; [ DW_TAG_auto_variable ] [Irp__Tail__Overlay__CurrentStackLocation] [line 86]
!674 = metadata !{i32 86, i32 7, metadata !11, metadata !658}
!675 = metadata !{i32 87, i32 33, metadata !11, metadata !658}
!676 = metadata !{i32 786688, metadata !11, metadata !"irpStack__MinorFunction", metadata !10, i32 87, metadata !14, i32 0, metadata !658} ; [ DW_TAG_auto_variable ] [irpStack__MinorFunction] [line 87]
!677 = metadata !{i32 87, i32 7, metadata !11, metadata !658}
!678 = metadata !{i32 88, i32 28, metadata !11, metadata !658}
!679 = metadata !{i32 786688, metadata !11, metadata !"devExt__TopOfStack", metadata !10, i32 88, metadata !14, i32 0, metadata !658} ; [ DW_TAG_auto_variable ] [devExt__TopOfStack] [line 88]
!680 = metadata !{i32 88, i32 7, metadata !11, metadata !658}
!681 = metadata !{i32 94, i32 30, metadata !11, metadata !658}
!682 = metadata !{i32 786688, metadata !11, metadata !"Irp__CurrentLocation", metadata !10, i32 94, metadata !14, i32 0, metadata !658} ; [ DW_TAG_auto_variable ] [Irp__CurrentLocation] [line 94]
!683 = metadata !{i32 94, i32 7, metadata !11, metadata !658}
!684 = metadata !{i32 786688, metadata !11, metadata !"status", metadata !10, i32 83, metadata !14, i32 0, metadata !658} ; [ DW_TAG_auto_variable ] [status] [line 83]
!685 = metadata !{i32 83, i32 7, metadata !11, metadata !658}
!686 = metadata !{i32 786688, metadata !11, metadata !"devExt", metadata !10, i32 81, metadata !14, i32 0, metadata !658} ; [ DW_TAG_auto_variable ] [devExt] [line 81]
!687 = metadata !{i32 81, i32 7, metadata !11, metadata !658}
!688 = metadata !{i32 786688, metadata !11, metadata !"irpStack", metadata !10, i32 82, metadata !14, i32 0, metadata !658} ; [ DW_TAG_auto_variable ] [irpStack] [line 82]
!689 = metadata !{i32 82, i32 7, metadata !11, metadata !658}
!690 = metadata !{i32 786688, metadata !11, metadata !"irpSp", metadata !10, i32 95, metadata !14, i32 0, metadata !658} ; [ DW_TAG_auto_variable ] [irpSp] [line 95]
!691 = metadata !{i32 95, i32 7, metadata !11, metadata !658}
!692 = metadata !{i32 786688, metadata !11, metadata !"nextIrpSp__Control", metadata !10, i32 97, metadata !14, i32 0, metadata !658} ; [ DW_TAG_auto_variable ] [nextIrpSp__Control] [line 97]
!693 = metadata !{i32 97, i32 7, metadata !11, metadata !658}
!694 = metadata !{i32 174, i32 51, metadata !113, metadata !658}
!695 = metadata !{i32 608, i32 10, metadata !160, metadata !696}
!696 = metadata !{i32 176, i32 49, metadata !162, metadata !658}
!697 = metadata !{i32 179, i32 53, metadata !165, metadata !658}
!698 = metadata !{i32 608, i32 10, metadata !160, metadata !699}
!699 = metadata !{i32 181, i32 51, metadata !169, metadata !658}
!700 = metadata !{i32 184, i32 51, metadata !172, metadata !658}
!701 = metadata !{i32 786688, metadata !11, metadata !"irpSp__Control", metadata !10, i32 100, metadata !14, i32 0, metadata !658} ; [ DW_TAG_auto_variable ] [irpSp__Control] [line 100]
!702 = metadata !{i32 100, i32 7, metadata !11, metadata !658}
!703 = metadata !{i32 786689, metadata !19, metadata !"DeviceObject", metadata !10, i32 16777671, metadata !14, i32 0, metadata !704} ; [ DW_TAG_arg_variable ] [DeviceObject] [line 455]
!704 = metadata !{i32 192, i32 56, metadata !178, metadata !658}
!705 = metadata !{i32 455, i32 23, metadata !19, metadata !704}
!706 = metadata !{i32 786689, metadata !19, metadata !"Irp", metadata !10, i32 33554887, metadata !14, i32 0, metadata !704} ; [ DW_TAG_arg_variable ] [Irp] [line 455]
!707 = metadata !{i32 455, i32 42, metadata !19, metadata !704}
!708 = metadata !{i32 459, i32 18, metadata !19, metadata !704}
!709 = metadata !{i32 786688, metadata !19, metadata !"lcontext", metadata !10, i32 459, metadata !14, i32 0, metadata !704} ; [ DW_TAG_auto_variable ] [lcontext] [line 459]
!710 = metadata !{i32 459, i32 7, metadata !19, metadata !704}
!711 = metadata !{i32 462, i32 7, metadata !186, metadata !704}
!712 = metadata !{i32 786689, metadata !29, metadata !"DeviceObject", metadata !10, i32 16777808, metadata !14, i32 0, metadata !713} ; [ DW_TAG_arg_variable ] [DeviceObject] [line 592]
!713 = metadata !{i32 463, i32 21, metadata !190, metadata !704}
!714 = metadata !{i32 592, i32 27, metadata !29, metadata !713}
!715 = metadata !{i32 786689, metadata !29, metadata !"Irp", metadata !10, i32 33555024, metadata !14, i32 0, metadata !713} ; [ DW_TAG_arg_variable ] [Irp] [line 592]
!716 = metadata !{i32 592, i32 46, metadata !29, metadata !713}
!717 = metadata !{i32 786689, metadata !29, metadata !"Context", metadata !10, i32 50332240, metadata !14, i32 0, metadata !713} ; [ DW_TAG_arg_variable ] [Context] [line 592]
!718 = metadata !{i32 592, i32 56, metadata !29, metadata !713}
!719 = metadata !{i32 786688, metadata !29, metadata !"event", metadata !10, i32 593, metadata !14, i32 0, metadata !713} ; [ DW_TAG_auto_variable ] [event] [line 593]
!720 = metadata !{i32 593, i32 7, metadata !29, metadata !713}
!721 = metadata !{i32 786689, metadata !23, metadata !"Event", metadata !10, i32 16777756, metadata !14, i32 0, metadata !722} ; [ DW_TAG_arg_variable ] [Event] [line 540]
!722 = metadata !{i32 598, i32 3, metadata !200, metadata !713}
!723 = metadata !{i32 540, i32 20, metadata !23, metadata !722}
!724 = metadata !{i32 786689, metadata !23, metadata !"Increment", metadata !10, i32 33554972, metadata !14, i32 0, metadata !722} ; [ DW_TAG_arg_variable ] [Increment] [line 540]
!725 = metadata !{i32 540, i32 32, metadata !23, metadata !722}
!726 = metadata !{i32 786689, metadata !23, metadata !"Wait", metadata !10, i32 50332188, metadata !14, i32 0, metadata !722} ; [ DW_TAG_arg_variable ] [Wait] [line 540]
!727 = metadata !{i32 540, i32 48, metadata !23, metadata !722}
!728 = metadata !{i32 541, i32 11, metadata !23, metadata !722}
!729 = metadata !{i32 786688, metadata !23, metadata !"l", metadata !10, i32 541, metadata !14, i32 0, metadata !722} ; [ DW_TAG_auto_variable ] [l] [line 541]
!730 = metadata !{i32 541, i32 7, metadata !23, metadata !722}
!731 = metadata !{i32 544, i32 3, metadata !211, metadata !722}
!732 = metadata !{i32 786688, metadata !19, metadata !"compRetStatus", metadata !10, i32 458, metadata !14, i32 0, metadata !704} ; [ DW_TAG_auto_variable ] [compRetStatus] [line 458]
!733 = metadata !{i32 458, i32 7, metadata !19, metadata !704}
!734 = metadata !{i32 445, i32 7, metadata !216, metadata !735}
!735 = metadata !{i32 464, i32 5, metadata !190, metadata !704}
!736 = metadata !{i32 446, i32 5, metadata !220, metadata !735}
!737 = metadata !{i32 465, i32 3, metadata !190, metadata !704}
!738 = metadata !{i32 608, i32 10, metadata !160, metadata !739}
!739 = metadata !{i32 449, i32 5, metadata !224, metadata !735}
!740 = metadata !{i32 477, i32 15, metadata !187, metadata !704}
!741 = metadata !{i32 786688, metadata !187, metadata !"tmp_ndt_2", metadata !10, i32 476, metadata !14, i32 0, metadata !704} ; [ DW_TAG_auto_variable ] [tmp_ndt_2] [line 476]
!742 = metadata !{i32 476, i32 7, metadata !187, metadata !704}
!743 = metadata !{i32 478, i32 7, metadata !230, metadata !704}
!744 = metadata !{i32 480, i32 17, metadata !232, metadata !704}
!745 = metadata !{i32 786688, metadata !232, metadata !"tmp_ndt_3", metadata !10, i32 479, metadata !14, i32 0, metadata !704} ; [ DW_TAG_auto_variable ] [tmp_ndt_3] [line 479]
!746 = metadata !{i32 479, i32 9, metadata !232, metadata !704}
!747 = metadata !{i32 481, i32 9, metadata !236, metadata !704}
!748 = metadata !{i32 786688, metadata !19, metadata !"returnVal2", metadata !10, i32 457, metadata !14, i32 0, metadata !704} ; [ DW_TAG_auto_variable ] [returnVal2] [line 457]
!749 = metadata !{i32 457, i32 7, metadata !19, metadata !704}
!750 = metadata !{i32 500, i32 7, metadata !241, metadata !704}
!751 = metadata !{i32 501, i32 5, metadata !243, metadata !704}
!752 = metadata !{i32 502, i32 5, metadata !243, metadata !704}
!753 = metadata !{i32 503, i32 3, metadata !243, metadata !704}
!754 = metadata !{i32 504, i32 9, metadata !247, metadata !704}
!755 = metadata !{i32 505, i32 11, metadata !250, metadata !704}
!756 = metadata !{i32 506, i32 9, metadata !253, metadata !704}
!757 = metadata !{i32 507, i32 9, metadata !253, metadata !704}
!758 = metadata !{i32 508, i32 7, metadata !253, metadata !704}
!759 = metadata !{i32 509, i32 9, metadata !257, metadata !704}
!760 = metadata !{i32 510, i32 9, metadata !257, metadata !704}
!761 = metadata !{i32 513, i32 11, metadata !260, metadata !704}
!762 = metadata !{i32 514, i32 9, metadata !263, metadata !704}
!763 = metadata !{i32 515, i32 9, metadata !263, metadata !704}
!764 = metadata !{i32 197, i32 47, metadata !266, metadata !658}
!765 = metadata !{i32 786688, metadata !11, metadata !"__cil_tmp23", metadata !10, i32 101, metadata !268, i32 0, metadata !658} ; [ DW_TAG_auto_variable ] [__cil_tmp23] [line 101]
!766 = metadata !{i32 101, i32 8, metadata !11, metadata !658}
!767 = metadata !{i32 197, i32 51, metadata !271, metadata !658}
!768 = metadata !{i32 786689, metadata !26, metadata !"Object", metadata !10, i32 16777764, metadata !14, i32 0, metadata !769} ; [ DW_TAG_arg_variable ] [Object] [line 548]
!769 = metadata !{i32 199, i32 49, metadata !274, metadata !658}
!770 = metadata !{i32 548, i32 31, metadata !26, metadata !769}
!771 = metadata !{i32 786689, metadata !26, metadata !"Alertable", metadata !10, i32 67109412, metadata !14, i32 0, metadata !769} ; [ DW_TAG_arg_variable ] [Alertable] [line 548]
!772 = metadata !{i32 548, i32 76, metadata !26, metadata !769}
!773 = metadata !{i32 786689, metadata !26, metadata !"Timeout", metadata !10, i32 83886629, metadata !14, i32 0, metadata !769} ; [ DW_TAG_arg_variable ] [Timeout] [line 549]
!774 = metadata !{i32 549, i32 31, metadata !26, metadata !769}
!775 = metadata !{i32 553, i32 7, metadata !282, metadata !769}
!776 = metadata !{i32 554, i32 9, metadata !285, metadata !769}
!777 = metadata !{i32 555, i32 7, metadata !288, metadata !769}
!778 = metadata !{i32 556, i32 7, metadata !288, metadata !769}
!779 = metadata !{i32 560, i32 3, metadata !286, metadata !769}
!780 = metadata !{i32 562, i32 9, metadata !292, metadata !769}
!781 = metadata !{i32 563, i32 7, metadata !295, metadata !769}
!782 = metadata !{i32 564, i32 7, metadata !295, metadata !769}
!783 = metadata !{i32 565, i32 5, metadata !295, metadata !769}
!784 = metadata !{i32 566, i32 11, metadata !299, metadata !769}
!785 = metadata !{i32 608, i32 10, metadata !160, metadata !786}
!786 = metadata !{i32 568, i32 9, metadata !303, metadata !769}
!787 = metadata !{i32 576, i32 15, metadata !283, metadata !769}
!788 = metadata !{i32 786688, metadata !283, metadata !"tmp_ndt_4", metadata !10, i32 575, metadata !14, i32 0, metadata !769} ; [ DW_TAG_auto_variable ] [tmp_ndt_4] [line 575]
!789 = metadata !{i32 575, i32 7, metadata !283, metadata !769}
!790 = metadata !{i32 203, i32 47, metadata !275, metadata !658}
!791 = metadata !{i32 786688, metadata !11, metadata !"Irp__IoStatus__Status", metadata !10, i32 92, metadata !14, i32 0, metadata !658} ; [ DW_TAG_auto_variable ] [Irp__IoStatus__Status] [line 92]
!792 = metadata !{i32 92, i32 7, metadata !11, metadata !658}
!793 = metadata !{i32 219, i32 47, metadata !316, metadata !658}
!794 = metadata !{i32 786688, metadata !11, metadata !"Irp__IoStatus__Information", metadata !10, i32 93, metadata !14, i32 0, metadata !658} ; [ DW_TAG_auto_variable ] [Irp__IoStatus__Information] [line 93]
!795 = metadata !{i32 93, i32 7, metadata !11, metadata !658}
!796 = metadata !{i32 786689, metadata !20, metadata !"Irp", metadata !10, i32 16777742, metadata !14, i32 0, metadata !797} ; [ DW_TAG_arg_variable ] [Irp] [line 526]
!797 = metadata !{i32 221, i32 47, metadata !316, metadata !658}
!798 = metadata !{i32 526, i32 29, metadata !20, metadata !797}
!799 = metadata !{i32 786689, metadata !20, metadata !"PriorityBoost", metadata !10, i32 33554958, metadata !14, i32 0, metadata !797} ; [ DW_TAG_arg_variable ] [PriorityBoost] [line 526]
!800 = metadata !{i32 526, i32 39, metadata !20, metadata !797}
!801 = metadata !{i32 530, i32 7, metadata !325, metadata !797}
!802 = metadata !{i32 531, i32 5, metadata !328, metadata !797}
!803 = metadata !{i32 223, i32 47, metadata !114, metadata !658}
!804 = metadata !{i32 608, i32 10, metadata !160, metadata !805}
!805 = metadata !{i32 534, i32 5, metadata !332, metadata !797}
!806 = metadata !{i32 608, i32 10, metadata !160, metadata !807}
!807 = metadata !{i32 518, i32 9, metadata !336, metadata !704}
!808 = metadata !{i32 786688, metadata !11, metadata !"devExt__Removed", metadata !10, i32 90, metadata !14, i32 0, metadata !658} ; [ DW_TAG_auto_variable ] [devExt__Removed] [line 90]
!809 = metadata !{i32 90, i32 7, metadata !11, metadata !658}
!810 = metadata !{i32 242, i32 51, metadata !342, metadata !658}
!811 = metadata !{i32 243, i32 49, metadata !344, metadata !658}
!812 = metadata !{i32 786689, metadata !19, metadata !"DeviceObject", metadata !10, i32 16777671, metadata !14, i32 0, metadata !813} ; [ DW_TAG_arg_variable ] [DeviceObject] [line 455]
!813 = metadata !{i32 252, i32 47, metadata !347, metadata !658}
!814 = metadata !{i32 455, i32 23, metadata !19, metadata !813}
!815 = metadata !{i32 786689, metadata !19, metadata !"Irp", metadata !10, i32 33554887, metadata !14, i32 0, metadata !813} ; [ DW_TAG_arg_variable ] [Irp] [line 455]
!816 = metadata !{i32 455, i32 42, metadata !19, metadata !813}
!817 = metadata !{i32 459, i32 18, metadata !19, metadata !813}
!818 = metadata !{i32 786688, metadata !19, metadata !"lcontext", metadata !10, i32 459, metadata !14, i32 0, metadata !813} ; [ DW_TAG_auto_variable ] [lcontext] [line 459]
!819 = metadata !{i32 459, i32 7, metadata !19, metadata !813}
!820 = metadata !{i32 462, i32 7, metadata !186, metadata !813}
!821 = metadata !{i32 786689, metadata !29, metadata !"DeviceObject", metadata !10, i32 16777808, metadata !14, i32 0, metadata !822} ; [ DW_TAG_arg_variable ] [DeviceObject] [line 592]
!822 = metadata !{i32 463, i32 21, metadata !190, metadata !813}
!823 = metadata !{i32 592, i32 27, metadata !29, metadata !822}
!824 = metadata !{i32 786689, metadata !29, metadata !"Irp", metadata !10, i32 33555024, metadata !14, i32 0, metadata !822} ; [ DW_TAG_arg_variable ] [Irp] [line 592]
!825 = metadata !{i32 592, i32 46, metadata !29, metadata !822}
!826 = metadata !{i32 786689, metadata !29, metadata !"Context", metadata !10, i32 50332240, metadata !14, i32 0, metadata !822} ; [ DW_TAG_arg_variable ] [Context] [line 592]
!827 = metadata !{i32 592, i32 56, metadata !29, metadata !822}
!828 = metadata !{i32 786688, metadata !29, metadata !"event", metadata !10, i32 593, metadata !14, i32 0, metadata !822} ; [ DW_TAG_auto_variable ] [event] [line 593]
!829 = metadata !{i32 593, i32 7, metadata !29, metadata !822}
!830 = metadata !{i32 786689, metadata !23, metadata !"Event", metadata !10, i32 16777756, metadata !14, i32 0, metadata !831} ; [ DW_TAG_arg_variable ] [Event] [line 540]
!831 = metadata !{i32 598, i32 3, metadata !200, metadata !822}
!832 = metadata !{i32 540, i32 20, metadata !23, metadata !831}
!833 = metadata !{i32 786689, metadata !23, metadata !"Increment", metadata !10, i32 33554972, metadata !14, i32 0, metadata !831} ; [ DW_TAG_arg_variable ] [Increment] [line 540]
!834 = metadata !{i32 540, i32 32, metadata !23, metadata !831}
!835 = metadata !{i32 786689, metadata !23, metadata !"Wait", metadata !10, i32 50332188, metadata !14, i32 0, metadata !831} ; [ DW_TAG_arg_variable ] [Wait] [line 540]
!836 = metadata !{i32 540, i32 48, metadata !23, metadata !831}
!837 = metadata !{i32 541, i32 11, metadata !23, metadata !831}
!838 = metadata !{i32 786688, metadata !23, metadata !"l", metadata !10, i32 541, metadata !14, i32 0, metadata !831} ; [ DW_TAG_auto_variable ] [l] [line 541]
!839 = metadata !{i32 541, i32 7, metadata !23, metadata !831}
!840 = metadata !{i32 544, i32 3, metadata !211, metadata !831}
!841 = metadata !{i32 786688, metadata !19, metadata !"compRetStatus", metadata !10, i32 458, metadata !14, i32 0, metadata !813} ; [ DW_TAG_auto_variable ] [compRetStatus] [line 458]
!842 = metadata !{i32 458, i32 7, metadata !19, metadata !813}
!843 = metadata !{i32 445, i32 7, metadata !216, metadata !844}
!844 = metadata !{i32 464, i32 5, metadata !190, metadata !813}
!845 = metadata !{i32 446, i32 5, metadata !220, metadata !844}
!846 = metadata !{i32 465, i32 3, metadata !190, metadata !813}
!847 = metadata !{i32 608, i32 10, metadata !160, metadata !848}
!848 = metadata !{i32 449, i32 5, metadata !224, metadata !844}
!849 = metadata !{i32 477, i32 15, metadata !187, metadata !813}
!850 = metadata !{i32 786688, metadata !187, metadata !"tmp_ndt_2", metadata !10, i32 476, metadata !14, i32 0, metadata !813} ; [ DW_TAG_auto_variable ] [tmp_ndt_2] [line 476]
!851 = metadata !{i32 476, i32 7, metadata !187, metadata !813}
!852 = metadata !{i32 478, i32 7, metadata !230, metadata !813}
!853 = metadata !{i32 480, i32 17, metadata !232, metadata !813}
!854 = metadata !{i32 786688, metadata !232, metadata !"tmp_ndt_3", metadata !10, i32 479, metadata !14, i32 0, metadata !813} ; [ DW_TAG_auto_variable ] [tmp_ndt_3] [line 479]
!855 = metadata !{i32 479, i32 9, metadata !232, metadata !813}
!856 = metadata !{i32 481, i32 9, metadata !236, metadata !813}
!857 = metadata !{i32 786688, metadata !19, metadata !"returnVal2", metadata !10, i32 457, metadata !14, i32 0, metadata !813} ; [ DW_TAG_auto_variable ] [returnVal2] [line 457]
!858 = metadata !{i32 457, i32 7, metadata !19, metadata !813}
!859 = metadata !{i32 500, i32 7, metadata !241, metadata !813}
!860 = metadata !{i32 501, i32 5, metadata !243, metadata !813}
!861 = metadata !{i32 502, i32 5, metadata !243, metadata !813}
!862 = metadata !{i32 503, i32 3, metadata !243, metadata !813}
!863 = metadata !{i32 504, i32 9, metadata !247, metadata !813}
!864 = metadata !{i32 505, i32 11, metadata !250, metadata !813}
!865 = metadata !{i32 506, i32 9, metadata !253, metadata !813}
!866 = metadata !{i32 507, i32 9, metadata !253, metadata !813}
!867 = metadata !{i32 508, i32 7, metadata !253, metadata !813}
!868 = metadata !{i32 509, i32 9, metadata !257, metadata !813}
!869 = metadata !{i32 510, i32 9, metadata !257, metadata !813}
!870 = metadata !{i32 513, i32 11, metadata !260, metadata !813}
!871 = metadata !{i32 514, i32 9, metadata !263, metadata !813}
!872 = metadata !{i32 515, i32 9, metadata !263, metadata !813}
!873 = metadata !{i32 608, i32 10, metadata !160, metadata !874}
!874 = metadata !{i32 518, i32 9, metadata !336, metadata !813}
!875 = metadata !{i32 608, i32 10, metadata !160, metadata !876}
!876 = metadata !{i32 246, i32 49, metadata !411, metadata !658}
!877 = metadata !{i32 786688, metadata !11, metadata !"devExt__SurpriseRemoved", metadata !10, i32 91, metadata !14, i32 0, metadata !658} ; [ DW_TAG_auto_variable ] [devExt__SurpriseRemoved] [line 91]
!878 = metadata !{i32 91, i32 7, metadata !11, metadata !658}
!879 = metadata !{i32 226, i32 51, metadata !416, metadata !658}
!880 = metadata !{i32 227, i32 49, metadata !418, metadata !658}
!881 = metadata !{i32 786689, metadata !19, metadata !"DeviceObject", metadata !10, i32 16777671, metadata !14, i32 0, metadata !882} ; [ DW_TAG_arg_variable ] [DeviceObject] [line 455]
!882 = metadata !{i32 236, i32 56, metadata !421, metadata !658}
!883 = metadata !{i32 455, i32 23, metadata !19, metadata !882}
!884 = metadata !{i32 786689, metadata !19, metadata !"Irp", metadata !10, i32 33554887, metadata !14, i32 0, metadata !882} ; [ DW_TAG_arg_variable ] [Irp] [line 455]
!885 = metadata !{i32 455, i32 42, metadata !19, metadata !882}
!886 = metadata !{i32 459, i32 18, metadata !19, metadata !882}
!887 = metadata !{i32 786688, metadata !19, metadata !"lcontext", metadata !10, i32 459, metadata !14, i32 0, metadata !882} ; [ DW_TAG_auto_variable ] [lcontext] [line 459]
!888 = metadata !{i32 459, i32 7, metadata !19, metadata !882}
!889 = metadata !{i32 462, i32 7, metadata !186, metadata !882}
!890 = metadata !{i32 786689, metadata !29, metadata !"DeviceObject", metadata !10, i32 16777808, metadata !14, i32 0, metadata !891} ; [ DW_TAG_arg_variable ] [DeviceObject] [line 592]
!891 = metadata !{i32 463, i32 21, metadata !190, metadata !882}
!892 = metadata !{i32 592, i32 27, metadata !29, metadata !891}
!893 = metadata !{i32 786689, metadata !29, metadata !"Irp", metadata !10, i32 33555024, metadata !14, i32 0, metadata !891} ; [ DW_TAG_arg_variable ] [Irp] [line 592]
!894 = metadata !{i32 592, i32 46, metadata !29, metadata !891}
!895 = metadata !{i32 786689, metadata !29, metadata !"Context", metadata !10, i32 50332240, metadata !14, i32 0, metadata !891} ; [ DW_TAG_arg_variable ] [Context] [line 592]
!896 = metadata !{i32 592, i32 56, metadata !29, metadata !891}
!897 = metadata !{i32 786688, metadata !29, metadata !"event", metadata !10, i32 593, metadata !14, i32 0, metadata !891} ; [ DW_TAG_auto_variable ] [event] [line 593]
!898 = metadata !{i32 593, i32 7, metadata !29, metadata !891}
!899 = metadata !{i32 786689, metadata !23, metadata !"Event", metadata !10, i32 16777756, metadata !14, i32 0, metadata !900} ; [ DW_TAG_arg_variable ] [Event] [line 540]
!900 = metadata !{i32 598, i32 3, metadata !200, metadata !891}
!901 = metadata !{i32 540, i32 20, metadata !23, metadata !900}
!902 = metadata !{i32 786689, metadata !23, metadata !"Increment", metadata !10, i32 33554972, metadata !14, i32 0, metadata !900} ; [ DW_TAG_arg_variable ] [Increment] [line 540]
!903 = metadata !{i32 540, i32 32, metadata !23, metadata !900}
!904 = metadata !{i32 786689, metadata !23, metadata !"Wait", metadata !10, i32 50332188, metadata !14, i32 0, metadata !900} ; [ DW_TAG_arg_variable ] [Wait] [line 540]
!905 = metadata !{i32 540, i32 48, metadata !23, metadata !900}
!906 = metadata !{i32 541, i32 11, metadata !23, metadata !900}
!907 = metadata !{i32 786688, metadata !23, metadata !"l", metadata !10, i32 541, metadata !14, i32 0, metadata !900} ; [ DW_TAG_auto_variable ] [l] [line 541]
!908 = metadata !{i32 541, i32 7, metadata !23, metadata !900}
!909 = metadata !{i32 544, i32 3, metadata !211, metadata !900}
!910 = metadata !{i32 786688, metadata !19, metadata !"compRetStatus", metadata !10, i32 458, metadata !14, i32 0, metadata !882} ; [ DW_TAG_auto_variable ] [compRetStatus] [line 458]
!911 = metadata !{i32 458, i32 7, metadata !19, metadata !882}
!912 = metadata !{i32 445, i32 7, metadata !216, metadata !913}
!913 = metadata !{i32 464, i32 5, metadata !190, metadata !882}
!914 = metadata !{i32 446, i32 5, metadata !220, metadata !913}
!915 = metadata !{i32 465, i32 3, metadata !190, metadata !882}
!916 = metadata !{i32 608, i32 10, metadata !160, metadata !917}
!917 = metadata !{i32 449, i32 5, metadata !224, metadata !913}
!918 = metadata !{i32 477, i32 15, metadata !187, metadata !882}
!919 = metadata !{i32 786688, metadata !187, metadata !"tmp_ndt_2", metadata !10, i32 476, metadata !14, i32 0, metadata !882} ; [ DW_TAG_auto_variable ] [tmp_ndt_2] [line 476]
!920 = metadata !{i32 476, i32 7, metadata !187, metadata !882}
!921 = metadata !{i32 478, i32 7, metadata !230, metadata !882}
!922 = metadata !{i32 480, i32 17, metadata !232, metadata !882}
!923 = metadata !{i32 786688, metadata !232, metadata !"tmp_ndt_3", metadata !10, i32 479, metadata !14, i32 0, metadata !882} ; [ DW_TAG_auto_variable ] [tmp_ndt_3] [line 479]
!924 = metadata !{i32 479, i32 9, metadata !232, metadata !882}
!925 = metadata !{i32 481, i32 9, metadata !236, metadata !882}
!926 = metadata !{i32 786688, metadata !19, metadata !"returnVal2", metadata !10, i32 457, metadata !14, i32 0, metadata !882} ; [ DW_TAG_auto_variable ] [returnVal2] [line 457]
!927 = metadata !{i32 457, i32 7, metadata !19, metadata !882}
!928 = metadata !{i32 500, i32 7, metadata !241, metadata !882}
!929 = metadata !{i32 501, i32 5, metadata !243, metadata !882}
!930 = metadata !{i32 502, i32 5, metadata !243, metadata !882}
!931 = metadata !{i32 503, i32 3, metadata !243, metadata !882}
!932 = metadata !{i32 504, i32 9, metadata !247, metadata !882}
!933 = metadata !{i32 505, i32 11, metadata !250, metadata !882}
!934 = metadata !{i32 506, i32 9, metadata !253, metadata !882}
!935 = metadata !{i32 507, i32 9, metadata !253, metadata !882}
!936 = metadata !{i32 508, i32 7, metadata !253, metadata !882}
!937 = metadata !{i32 509, i32 9, metadata !257, metadata !882}
!938 = metadata !{i32 510, i32 9, metadata !257, metadata !882}
!939 = metadata !{i32 513, i32 11, metadata !260, metadata !882}
!940 = metadata !{i32 514, i32 9, metadata !263, metadata !882}
!941 = metadata !{i32 515, i32 9, metadata !263, metadata !882}
!942 = metadata !{i32 608, i32 10, metadata !160, metadata !943}
!943 = metadata !{i32 518, i32 9, metadata !336, metadata !882}
!944 = metadata !{i32 608, i32 10, metadata !160, metadata !945}
!945 = metadata !{i32 230, i32 49, metadata !485, metadata !658}
!946 = metadata !{i32 275, i32 51, metadata !488, metadata !658}
!947 = metadata !{i32 276, i32 49, metadata !490, metadata !658}
!948 = metadata !{i32 786689, metadata !19, metadata !"DeviceObject", metadata !10, i32 16777671, metadata !14, i32 0, metadata !949} ; [ DW_TAG_arg_variable ] [DeviceObject] [line 455]
!949 = metadata !{i32 285, i32 56, metadata !493, metadata !658}
!950 = metadata !{i32 455, i32 23, metadata !19, metadata !949}
!951 = metadata !{i32 786689, metadata !19, metadata !"Irp", metadata !10, i32 33554887, metadata !14, i32 0, metadata !949} ; [ DW_TAG_arg_variable ] [Irp] [line 455]
!952 = metadata !{i32 455, i32 42, metadata !19, metadata !949}
!953 = metadata !{i32 459, i32 18, metadata !19, metadata !949}
!954 = metadata !{i32 786688, metadata !19, metadata !"lcontext", metadata !10, i32 459, metadata !14, i32 0, metadata !949} ; [ DW_TAG_auto_variable ] [lcontext] [line 459]
!955 = metadata !{i32 459, i32 7, metadata !19, metadata !949}
!956 = metadata !{i32 462, i32 7, metadata !186, metadata !949}
!957 = metadata !{i32 786689, metadata !29, metadata !"DeviceObject", metadata !10, i32 16777808, metadata !14, i32 0, metadata !958} ; [ DW_TAG_arg_variable ] [DeviceObject] [line 592]
!958 = metadata !{i32 463, i32 21, metadata !190, metadata !949}
!959 = metadata !{i32 592, i32 27, metadata !29, metadata !958}
!960 = metadata !{i32 786689, metadata !29, metadata !"Irp", metadata !10, i32 33555024, metadata !14, i32 0, metadata !958} ; [ DW_TAG_arg_variable ] [Irp] [line 592]
!961 = metadata !{i32 592, i32 46, metadata !29, metadata !958}
!962 = metadata !{i32 786689, metadata !29, metadata !"Context", metadata !10, i32 50332240, metadata !14, i32 0, metadata !958} ; [ DW_TAG_arg_variable ] [Context] [line 592]
!963 = metadata !{i32 592, i32 56, metadata !29, metadata !958}
!964 = metadata !{i32 786688, metadata !29, metadata !"event", metadata !10, i32 593, metadata !14, i32 0, metadata !958} ; [ DW_TAG_auto_variable ] [event] [line 593]
!965 = metadata !{i32 593, i32 7, metadata !29, metadata !958}
!966 = metadata !{i32 786689, metadata !23, metadata !"Event", metadata !10, i32 16777756, metadata !14, i32 0, metadata !967} ; [ DW_TAG_arg_variable ] [Event] [line 540]
!967 = metadata !{i32 598, i32 3, metadata !200, metadata !958}
!968 = metadata !{i32 540, i32 20, metadata !23, metadata !967}
!969 = metadata !{i32 786689, metadata !23, metadata !"Increment", metadata !10, i32 33554972, metadata !14, i32 0, metadata !967} ; [ DW_TAG_arg_variable ] [Increment] [line 540]
!970 = metadata !{i32 540, i32 32, metadata !23, metadata !967}
!971 = metadata !{i32 786689, metadata !23, metadata !"Wait", metadata !10, i32 50332188, metadata !14, i32 0, metadata !967} ; [ DW_TAG_arg_variable ] [Wait] [line 540]
!972 = metadata !{i32 540, i32 48, metadata !23, metadata !967}
!973 = metadata !{i32 541, i32 11, metadata !23, metadata !967}
!974 = metadata !{i32 786688, metadata !23, metadata !"l", metadata !10, i32 541, metadata !14, i32 0, metadata !967} ; [ DW_TAG_auto_variable ] [l] [line 541]
!975 = metadata !{i32 541, i32 7, metadata !23, metadata !967}
!976 = metadata !{i32 544, i32 3, metadata !211, metadata !967}
!977 = metadata !{i32 786688, metadata !19, metadata !"compRetStatus", metadata !10, i32 458, metadata !14, i32 0, metadata !949} ; [ DW_TAG_auto_variable ] [compRetStatus] [line 458]
!978 = metadata !{i32 458, i32 7, metadata !19, metadata !949}
!979 = metadata !{i32 445, i32 7, metadata !216, metadata !980}
!980 = metadata !{i32 464, i32 5, metadata !190, metadata !949}
!981 = metadata !{i32 446, i32 5, metadata !220, metadata !980}
!982 = metadata !{i32 465, i32 3, metadata !190, metadata !949}
!983 = metadata !{i32 608, i32 10, metadata !160, metadata !984}
!984 = metadata !{i32 449, i32 5, metadata !224, metadata !980}
!985 = metadata !{i32 477, i32 15, metadata !187, metadata !949}
!986 = metadata !{i32 786688, metadata !187, metadata !"tmp_ndt_2", metadata !10, i32 476, metadata !14, i32 0, metadata !949} ; [ DW_TAG_auto_variable ] [tmp_ndt_2] [line 476]
!987 = metadata !{i32 476, i32 7, metadata !187, metadata !949}
!988 = metadata !{i32 478, i32 7, metadata !230, metadata !949}
!989 = metadata !{i32 480, i32 17, metadata !232, metadata !949}
!990 = metadata !{i32 786688, metadata !232, metadata !"tmp_ndt_3", metadata !10, i32 479, metadata !14, i32 0, metadata !949} ; [ DW_TAG_auto_variable ] [tmp_ndt_3] [line 479]
!991 = metadata !{i32 479, i32 9, metadata !232, metadata !949}
!992 = metadata !{i32 481, i32 9, metadata !236, metadata !949}
!993 = metadata !{i32 786688, metadata !19, metadata !"returnVal2", metadata !10, i32 457, metadata !14, i32 0, metadata !949} ; [ DW_TAG_auto_variable ] [returnVal2] [line 457]
!994 = metadata !{i32 457, i32 7, metadata !19, metadata !949}
!995 = metadata !{i32 500, i32 7, metadata !241, metadata !949}
!996 = metadata !{i32 501, i32 5, metadata !243, metadata !949}
!997 = metadata !{i32 502, i32 5, metadata !243, metadata !949}
!998 = metadata !{i32 503, i32 3, metadata !243, metadata !949}
!999 = metadata !{i32 504, i32 9, metadata !247, metadata !949}
!1000 = metadata !{i32 505, i32 11, metadata !250, metadata !949}
!1001 = metadata !{i32 506, i32 9, metadata !253, metadata !949}
!1002 = metadata !{i32 507, i32 9, metadata !253, metadata !949}
!1003 = metadata !{i32 508, i32 7, metadata !253, metadata !949}
!1004 = metadata !{i32 509, i32 9, metadata !257, metadata !949}
!1005 = metadata !{i32 510, i32 9, metadata !257, metadata !949}
!1006 = metadata !{i32 513, i32 11, metadata !260, metadata !949}
!1007 = metadata !{i32 514, i32 9, metadata !263, metadata !949}
!1008 = metadata !{i32 515, i32 9, metadata !263, metadata !949}
!1009 = metadata !{i32 608, i32 10, metadata !160, metadata !1010}
!1010 = metadata !{i32 518, i32 9, metadata !336, metadata !949}
!1011 = metadata !{i32 608, i32 10, metadata !160, metadata !1012}
!1012 = metadata !{i32 279, i32 49, metadata !558, metadata !658}
!1013 = metadata !{i32 376, i32 7, metadata !1014, null}
!1014 = metadata !{i32 786443, metadata !9, metadata !581, i32 376, i32 7, i32 0, i32 122} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!1015 = metadata !{i32 377, i32 9, metadata !1016, null}
!1016 = metadata !{i32 786443, metadata !9, metadata !1017, i32 377, i32 9, i32 0, i32 124} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!1017 = metadata !{i32 786443, metadata !9, metadata !1014, i32 376, i32 20, i32 0, i32 123} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!1018 = metadata !{i32 378, i32 7, metadata !1019, null}
!1019 = metadata !{i32 786443, metadata !9, metadata !1016, i32 377, i32 18, i32 0, i32 125} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!1020 = metadata !{i32 382, i32 3, metadata !1017, null}
!1021 = metadata !{i32 384, i32 9, metadata !1022, null}
!1022 = metadata !{i32 786443, metadata !9, metadata !1023, i32 384, i32 9, i32 0, i32 128} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!1023 = metadata !{i32 786443, metadata !9, metadata !1014, i32 382, i32 10, i32 0, i32 127} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!1024 = metadata !{i32 385, i32 11, metadata !1025, null}
!1025 = metadata !{i32 786443, metadata !9, metadata !1026, i32 385, i32 11, i32 0, i32 130} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!1026 = metadata !{i32 786443, metadata !9, metadata !1022, i32 384, i32 22, i32 0, i32 129} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!1027 = metadata !{i32 386, i32 9, metadata !1028, null}
!1028 = metadata !{i32 786443, metadata !9, metadata !1025, i32 385, i32 22, i32 0, i32 131} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!1029 = metadata !{i32 390, i32 5, metadata !1026, null}
!1030 = metadata !{i32 392, i32 11, metadata !1031, null}
!1031 = metadata !{i32 786443, metadata !9, metadata !1032, i32 392, i32 11, i32 0, i32 134} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!1032 = metadata !{i32 786443, metadata !9, metadata !1022, i32 390, i32 12, i32 0, i32 133} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!1033 = metadata !{i32 395, i32 13, metadata !1034, null}
!1034 = metadata !{i32 786443, metadata !9, metadata !1035, i32 395, i32 13, i32 0, i32 136} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!1035 = metadata !{i32 786443, metadata !9, metadata !1031, i32 392, i32 26, i32 0, i32 135} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!1036 = metadata !{i32 398, i32 15, metadata !1037, null}
!1037 = metadata !{i32 786443, metadata !9, metadata !1038, i32 398, i32 15, i32 0, i32 138} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!1038 = metadata !{i32 786443, metadata !9, metadata !1034, i32 395, i32 27, i32 0, i32 137} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!1039 = metadata !{i32 399, i32 17, metadata !1040, null}
!1040 = metadata !{i32 786443, metadata !9, metadata !1041, i32 399, i32 17, i32 0, i32 140} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!1041 = metadata !{i32 786443, metadata !9, metadata !1037, i32 398, i32 27, i32 0, i32 139} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!1042 = metadata !{i32 400, i32 19, metadata !1043, null}
!1043 = metadata !{i32 786443, metadata !9, metadata !1044, i32 400, i32 19, i32 0, i32 142} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!1044 = metadata !{i32 786443, metadata !9, metadata !1040, i32 399, i32 27, i32 0, i32 141} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!1045 = metadata !{i32 410, i32 17, metadata !1046, null}
!1046 = metadata !{i32 786443, metadata !9, metadata !1047, i32 410, i32 17, i32 0, i32 146} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!1047 = metadata !{i32 786443, metadata !9, metadata !1037, i32 406, i32 18, i32 0, i32 145} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!1048 = metadata !{i32 411, i32 19, metadata !1049, null}
!1049 = metadata !{i32 786443, metadata !9, metadata !1050, i32 411, i32 19, i32 0, i32 148} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!1050 = metadata !{i32 786443, metadata !9, metadata !1046, i32 410, i32 30, i32 0, i32 147} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!1051 = metadata !{i32 608, i32 10, metadata !160, metadata !1052}
!1052 = metadata !{i32 413, i32 17, metadata !1053, null}
!1053 = metadata !{i32 786443, metadata !9, metadata !1054, i32 412, i32 17, i32 0, i32 150} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!1054 = metadata !{i32 786443, metadata !9, metadata !1049, i32 411, i32 34, i32 0, i32 149} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!1055 = metadata !{i32 419, i32 19, metadata !1056, null}
!1056 = metadata !{i32 786443, metadata !9, metadata !1057, i32 419, i32 19, i32 0, i32 152} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!1057 = metadata !{i32 786443, metadata !9, metadata !1046, i32 416, i32 20, i32 0, i32 151} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!1058 = metadata !{i32 423, i32 15, metadata !1059, null}
!1059 = metadata !{i32 786443, metadata !9, metadata !1056, i32 419, i32 28, i32 0, i32 153} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!1060 = metadata !{i32 439, i32 1, metadata !15, null}
!1061 = metadata !{i32 445, i32 7, metadata !216, null}
!1062 = metadata !{i32 446, i32 5, metadata !220, null}
!1063 = metadata !{i32 454, i32 1, metadata !18, null}
!1064 = metadata !{i32 608, i32 10, metadata !160, metadata !1065}
!1065 = metadata !{i32 449, i32 5, metadata !224, null}
!1066 = metadata !{i32 786689, metadata !19, metadata !"DeviceObject", metadata !10, i32 16777671, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [DeviceObject] [line 455]
!1067 = metadata !{i32 455, i32 23, metadata !19, null}
!1068 = metadata !{i32 786689, metadata !19, metadata !"Irp", metadata !10, i32 33554887, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Irp] [line 455]
!1069 = metadata !{i32 455, i32 42, metadata !19, null}
!1070 = metadata !{i32 459, i32 18, metadata !19, null}
!1071 = metadata !{i32 786688, metadata !19, metadata !"lcontext", metadata !10, i32 459, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lcontext] [line 459]
!1072 = metadata !{i32 459, i32 7, metadata !19, null}
!1073 = metadata !{i32 462, i32 7, metadata !186, null}
!1074 = metadata !{i32 786689, metadata !29, metadata !"DeviceObject", metadata !10, i32 16777808, metadata !14, i32 0, metadata !1075} ; [ DW_TAG_arg_variable ] [DeviceObject] [line 592]
!1075 = metadata !{i32 463, i32 21, metadata !190, null}
!1076 = metadata !{i32 592, i32 27, metadata !29, metadata !1075}
!1077 = metadata !{i32 786689, metadata !29, metadata !"Irp", metadata !10, i32 33555024, metadata !14, i32 0, metadata !1075} ; [ DW_TAG_arg_variable ] [Irp] [line 592]
!1078 = metadata !{i32 592, i32 46, metadata !29, metadata !1075}
!1079 = metadata !{i32 786689, metadata !29, metadata !"Context", metadata !10, i32 50332240, metadata !14, i32 0, metadata !1075} ; [ DW_TAG_arg_variable ] [Context] [line 592]
!1080 = metadata !{i32 592, i32 56, metadata !29, metadata !1075}
!1081 = metadata !{i32 786688, metadata !29, metadata !"event", metadata !10, i32 593, metadata !14, i32 0, metadata !1075} ; [ DW_TAG_auto_variable ] [event] [line 593]
!1082 = metadata !{i32 593, i32 7, metadata !29, metadata !1075}
!1083 = metadata !{i32 786689, metadata !23, metadata !"Event", metadata !10, i32 16777756, metadata !14, i32 0, metadata !1084} ; [ DW_TAG_arg_variable ] [Event] [line 540]
!1084 = metadata !{i32 598, i32 3, metadata !200, metadata !1075}
!1085 = metadata !{i32 540, i32 20, metadata !23, metadata !1084}
!1086 = metadata !{i32 786689, metadata !23, metadata !"Increment", metadata !10, i32 33554972, metadata !14, i32 0, metadata !1084} ; [ DW_TAG_arg_variable ] [Increment] [line 540]
!1087 = metadata !{i32 540, i32 32, metadata !23, metadata !1084}
!1088 = metadata !{i32 786689, metadata !23, metadata !"Wait", metadata !10, i32 50332188, metadata !14, i32 0, metadata !1084} ; [ DW_TAG_arg_variable ] [Wait] [line 540]
!1089 = metadata !{i32 540, i32 48, metadata !23, metadata !1084}
!1090 = metadata !{i32 541, i32 11, metadata !23, metadata !1084}
!1091 = metadata !{i32 786688, metadata !23, metadata !"l", metadata !10, i32 541, metadata !14, i32 0, metadata !1084} ; [ DW_TAG_auto_variable ] [l] [line 541]
!1092 = metadata !{i32 541, i32 7, metadata !23, metadata !1084}
!1093 = metadata !{i32 544, i32 3, metadata !211, metadata !1084}
!1094 = metadata !{i32 786688, metadata !19, metadata !"compRetStatus", metadata !10, i32 458, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [compRetStatus] [line 458]
!1095 = metadata !{i32 458, i32 7, metadata !19, null}
!1096 = metadata !{i32 445, i32 7, metadata !216, metadata !1097}
!1097 = metadata !{i32 464, i32 5, metadata !190, null}
!1098 = metadata !{i32 446, i32 5, metadata !220, metadata !1097}
!1099 = metadata !{i32 465, i32 3, metadata !190, null}
!1100 = metadata !{i32 608, i32 10, metadata !160, metadata !1101}
!1101 = metadata !{i32 449, i32 5, metadata !224, metadata !1097}
!1102 = metadata !{i32 477, i32 15, metadata !187, null}
!1103 = metadata !{i32 786688, metadata !187, metadata !"tmp_ndt_2", metadata !10, i32 476, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp_ndt_2] [line 476]
!1104 = metadata !{i32 476, i32 7, metadata !187, null}
!1105 = metadata !{i32 478, i32 7, metadata !230, null}
!1106 = metadata !{i32 480, i32 17, metadata !232, null}
!1107 = metadata !{i32 786688, metadata !232, metadata !"tmp_ndt_3", metadata !10, i32 479, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp_ndt_3] [line 479]
!1108 = metadata !{i32 479, i32 9, metadata !232, null}
!1109 = metadata !{i32 481, i32 9, metadata !236, null}
!1110 = metadata !{i32 786688, metadata !19, metadata !"returnVal2", metadata !10, i32 457, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [returnVal2] [line 457]
!1111 = metadata !{i32 457, i32 7, metadata !19, null}
!1112 = metadata !{i32 500, i32 7, metadata !241, null}
!1113 = metadata !{i32 501, i32 5, metadata !243, null}
!1114 = metadata !{i32 502, i32 5, metadata !243, null}
!1115 = metadata !{i32 503, i32 3, metadata !243, null}
!1116 = metadata !{i32 504, i32 9, metadata !247, null}
!1117 = metadata !{i32 505, i32 11, metadata !250, null}
!1118 = metadata !{i32 506, i32 9, metadata !253, null}
!1119 = metadata !{i32 507, i32 9, metadata !253, null}
!1120 = metadata !{i32 508, i32 7, metadata !253, null}
!1121 = metadata !{i32 509, i32 9, metadata !257, null}
!1122 = metadata !{i32 510, i32 9, metadata !257, null}
!1123 = metadata !{i32 513, i32 11, metadata !260, null}
!1124 = metadata !{i32 514, i32 9, metadata !263, null}
!1125 = metadata !{i32 515, i32 9, metadata !263, null}
!1126 = metadata !{i32 523, i32 3, metadata !187, null}
!1127 = metadata !{i32 608, i32 10, metadata !160, metadata !1128}
!1128 = metadata !{i32 518, i32 9, metadata !336, null}
!1129 = metadata !{i32 786689, metadata !23, metadata !"Event", metadata !10, i32 16777756, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Event] [line 540]
!1130 = metadata !{i32 540, i32 20, metadata !23, null}
!1131 = metadata !{i32 786689, metadata !23, metadata !"Increment", metadata !10, i32 33554972, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Increment] [line 540]
!1132 = metadata !{i32 540, i32 32, metadata !23, null}
!1133 = metadata !{i32 786689, metadata !23, metadata !"Wait", metadata !10, i32 50332188, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Wait] [line 540]
!1134 = metadata !{i32 540, i32 48, metadata !23, null}
!1135 = metadata !{i32 541, i32 11, metadata !23, null}
!1136 = metadata !{i32 786688, metadata !23, metadata !"l", metadata !10, i32 541, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 541]
!1137 = metadata !{i32 541, i32 7, metadata !23, null}
!1138 = metadata !{i32 544, i32 3, metadata !211, null}
!1139 = metadata !{i32 545, i32 3, metadata !211, null}
!1140 = metadata !{i32 786689, metadata !26, metadata !"Object", metadata !10, i32 16777764, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Object] [line 548]
!1141 = metadata !{i32 548, i32 31, metadata !26, null}
!1142 = metadata !{i32 786689, metadata !26, metadata !"WaitReason", metadata !10, i32 33554980, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [WaitReason] [line 548]
!1143 = metadata !{i32 548, i32 44, metadata !26, null}
!1144 = metadata !{i32 786689, metadata !26, metadata !"WaitMode", metadata !10, i32 50332196, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [WaitMode] [line 548]
!1145 = metadata !{i32 548, i32 61, metadata !26, null}
!1146 = metadata !{i32 786689, metadata !26, metadata !"Alertable", metadata !10, i32 67109412, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Alertable] [line 548]
!1147 = metadata !{i32 548, i32 76, metadata !26, null}
!1148 = metadata !{i32 786689, metadata !26, metadata !"Timeout", metadata !10, i32 83886629, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Timeout] [line 549]
!1149 = metadata !{i32 549, i32 31, metadata !26, null}
!1150 = metadata !{i32 553, i32 7, metadata !282, null}
!1151 = metadata !{i32 554, i32 9, metadata !285, null}
!1152 = metadata !{i32 555, i32 7, metadata !288, null}
!1153 = metadata !{i32 556, i32 7, metadata !288, null}
!1154 = metadata !{i32 560, i32 3, metadata !286, null}
!1155 = metadata !{i32 562, i32 9, metadata !292, null}
!1156 = metadata !{i32 563, i32 7, metadata !295, null}
!1157 = metadata !{i32 564, i32 7, metadata !295, null}
!1158 = metadata !{i32 565, i32 5, metadata !295, null}
!1159 = metadata !{i32 566, i32 11, metadata !299, null}
!1160 = metadata !{i32 608, i32 10, metadata !160, metadata !1161}
!1161 = metadata !{i32 568, i32 9, metadata !303, null}
!1162 = metadata !{i32 576, i32 15, metadata !283, null}
!1163 = metadata !{i32 786688, metadata !283, metadata !"tmp_ndt_4", metadata !10, i32 575, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp_ndt_4] [line 575]
!1164 = metadata !{i32 575, i32 7, metadata !283, null}
!1165 = metadata !{i32 577, i32 7, metadata !1166, null}
!1166 = metadata !{i32 786443, metadata !9, metadata !283, i32 577, i32 7, i32 0, i32 208} ; [ DW_TAG_lexical_block ] [//kbfiltr_simpl1.cil.c]
!1167 = metadata !{i32 590, i32 1, metadata !26, null}
!1168 = metadata !{i32 786689, metadata !29, metadata !"DeviceObject", metadata !10, i32 16777808, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [DeviceObject] [line 592]
!1169 = metadata !{i32 592, i32 27, metadata !29, null}
!1170 = metadata !{i32 786689, metadata !29, metadata !"Irp", metadata !10, i32 33555024, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Irp] [line 592]
!1171 = metadata !{i32 592, i32 46, metadata !29, null}
!1172 = metadata !{i32 786689, metadata !29, metadata !"Context", metadata !10, i32 50332240, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Context] [line 592]
!1173 = metadata !{i32 592, i32 56, metadata !29, null}
!1174 = metadata !{i32 786688, metadata !29, metadata !"event", metadata !10, i32 593, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [event] [line 593]
!1175 = metadata !{i32 593, i32 7, metadata !29, null}
!1176 = metadata !{i32 786689, metadata !23, metadata !"Event", metadata !10, i32 16777756, metadata !14, i32 0, metadata !1177} ; [ DW_TAG_arg_variable ] [Event] [line 540]
!1177 = metadata !{i32 598, i32 3, metadata !200, null}
!1178 = metadata !{i32 540, i32 20, metadata !23, metadata !1177}
!1179 = metadata !{i32 786689, metadata !23, metadata !"Increment", metadata !10, i32 33554972, metadata !14, i32 0, metadata !1177} ; [ DW_TAG_arg_variable ] [Increment] [line 540]
!1180 = metadata !{i32 540, i32 32, metadata !23, metadata !1177}
!1181 = metadata !{i32 786689, metadata !23, metadata !"Wait", metadata !10, i32 50332188, metadata !14, i32 0, metadata !1177} ; [ DW_TAG_arg_variable ] [Wait] [line 540]
!1182 = metadata !{i32 540, i32 48, metadata !23, metadata !1177}
!1183 = metadata !{i32 541, i32 11, metadata !23, metadata !1177}
!1184 = metadata !{i32 786688, metadata !23, metadata !"l", metadata !10, i32 541, metadata !14, i32 0, metadata !1177} ; [ DW_TAG_auto_variable ] [l] [line 541]
!1185 = metadata !{i32 541, i32 7, metadata !23, metadata !1177}
!1186 = metadata !{i32 544, i32 3, metadata !211, metadata !1177}
!1187 = metadata !{i32 600, i32 3, metadata !201, null}

