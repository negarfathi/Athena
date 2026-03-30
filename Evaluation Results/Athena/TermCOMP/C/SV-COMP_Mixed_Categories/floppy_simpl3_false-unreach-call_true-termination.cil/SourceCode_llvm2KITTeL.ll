; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
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
  call void (...)* @__VERIFIER_error() #4, !dbg !88
  unreachable, !dbg !88
}

; Function Attrs: noreturn
declare void @__VERIFIER_error(...) #1

; Function Attrs: nounwind uwtable
define void @_BLAST_init() #0 {
_BLAST_init_bb1:
  store i32 0, i32* @"'UNLOADED", align 4, !dbg !90
  store i32 1, i32* @"'NP", align 4, !dbg !92
  store i32 2, i32* @"'DC", align 4, !dbg !93
  store i32 3, i32* @"'SKIP1", align 4, !dbg !94
  store i32 4, i32* @"'SKIP2", align 4, !dbg !95
  store i32 5, i32* @"'MPR1", align 4, !dbg !96
  store i32 6, i32* @"'MPR3", align 4, !dbg !97
  store i32 7, i32* @"'IPC", align 4, !dbg !98
  %"0" = load i32* @"'UNLOADED", align 4, !dbg !99
  store i32 %"0", i32* @"'s", align 4, !dbg !99
  store i32 0, i32* @"'pended", align 4, !dbg !100
  store i32 0, i32* @"'compRegistered", align 4, !dbg !101
  store i32 0, i32* @"'lowerDriverReturn", align 4, !dbg !102
  store i32 0, i32* @"'setEventCalled", align 4, !dbg !103
  store i32 0, i32* @"'customIrp", align 4, !dbg !104
  ret void, !dbg !105
}

; Function Attrs: nounwind uwtable
define i32 @FlAcpiConfigureFloppy(i32 %DisketteExtension, i32 %FdcInfo) #0 {
FlAcpiConfigureFloppy_bb2:
  call void @llvm.dbg.value(metadata !{i32 %DisketteExtension}, i64 0, metadata !106), !dbg !107
  call void @llvm.dbg.value(metadata !{i32 %FdcInfo}, i64 0, metadata !108), !dbg !109
  ret i32 0, !dbg !110
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #2

; Function Attrs: nounwind uwtable
define i32 @FlQueueIrpToThread(i32 %Irp, i32 %DisketteExtension) #0 {
FlQueueIrpToThread_bb3:
  call void @llvm.dbg.value(metadata !{i32 %Irp}, i64 0, metadata !112), !dbg !113
  call void @llvm.dbg.value(metadata !{i32 %DisketteExtension}, i64 0, metadata !114), !dbg !115
  %"1" = call i32 @__VERIFIER_nondet_int(), !dbg !116
  call void @llvm.dbg.value(metadata !{i32 %"1"}, i64 0, metadata !117), !dbg !118
  %"2" = call i32 @__VERIFIER_nondet_int(), !dbg !119
  call void @llvm.dbg.value(metadata !{i32 %"2"}, i64 0, metadata !120), !dbg !121
  %"3" = call i32 @__VERIFIER_nondet_int(), !dbg !122
  call void @llvm.dbg.value(metadata !{i32 %"3"}, i64 0, metadata !123), !dbg !124
  %"4" = call i32 @__VERIFIER_nondet_int(), !dbg !125
  call void @llvm.dbg.value(metadata !{i32 %"4"}, i64 0, metadata !126), !dbg !127
  %"5" = call i32 @__VERIFIER_nondet_int(), !dbg !128
  call void @llvm.dbg.value(metadata !{i32 %"5"}, i64 0, metadata !129), !dbg !130
  %"6" = icmp eq i32 %"2", 1, !dbg !131
  br i1 %"6", label %FlQueueIrpToThread_bb4, label %FlQueueIrpToThread_bb5, !dbg !131

FlQueueIrpToThread_bb4:                           ; preds = %FlQueueIrpToThread_bb3
  store i32 -1073741101, i32* @"'myStatus", align 4, !dbg !134
  call void @llvm.dbg.value(metadata !136, i64 0, metadata !137), !dbg !138
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !140), !dbg !141
  br label %FlQueueIrpToThread_bb11, !dbg !142

FlQueueIrpToThread_bb5:                           ; preds = %FlQueueIrpToThread_bb3
  %"7" = add nsw i32 %"3", 1, !dbg !143
  call void @llvm.dbg.value(metadata !{i32 %"7"}, i64 0, metadata !123), !dbg !124
  %"8" = icmp eq i32 %"7", 0, !dbg !144
  br i1 %"8", label %FlQueueIrpToThread_bb6, label %FlQueueIrpToThread_bb9, !dbg !144

FlQueueIrpToThread_bb6:                           ; preds = %FlQueueIrpToThread_bb5
  %"9" = load i32* @"'PagingReferenceCount", align 4, !dbg !146
  %"10" = add nsw i32 %"9", 1, !dbg !146
  store i32 %"10", i32* @"'PagingReferenceCount", align 4, !dbg !146
  call void @llvm.dbg.value(metadata !{i32 %"1"}, i64 0, metadata !148) #5, !dbg !151
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !152) #5, !dbg !153
  call void @llvm.dbg.value(metadata !{i32 %"5"}, i64 0, metadata !154) #5, !dbg !155
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !156) #5, !dbg !157
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !158) #5, !dbg !159
  call void @llvm.dbg.value(metadata !{i32 %DisketteExtension}, i64 0, metadata !160) #5, !dbg !161
  %"11" = call i32 @__VERIFIER_nondet_int() #5, !dbg !162
  call void @llvm.dbg.value(metadata !{i32 %"11"}, i64 0, metadata !164) #5, !dbg !165
  %"12" = icmp eq i32 %"11", 0, !dbg !166
  %.0.i = select i1 %"12", i32 0, i32 -1073741823, !dbg !166
  call void @llvm.dbg.value(metadata !{i32 %.0.i}, i64 0, metadata !168), !dbg !169
  %"13" = icmp slt i32 %.0.i, 0, !dbg !170
  br i1 %"13", label %FlQueueIrpToThread_bb7, label %FlQueueIrpToThread_bb8, !dbg !170

FlQueueIrpToThread_bb7:                           ; preds = %FlQueueIrpToThread_bb6
  call void @llvm.dbg.value(metadata !173, i64 0, metadata !123), !dbg !124
  %"14" = load i32* @"'PagingReferenceCount", align 4, !dbg !174
  %"15" = add nsw i32 %"14", -1, !dbg !174
  store i32 %"15", i32* @"'PagingReferenceCount", align 4, !dbg !174
  br label %FlQueueIrpToThread_bb11, !dbg !176

FlQueueIrpToThread_bb8:                           ; preds = %FlQueueIrpToThread_bb6
  call void @llvm.dbg.value(metadata !{i32 %"1"}, i64 0, metadata !177) #5, !dbg !180
  call void @llvm.dbg.value(metadata !181, i64 0, metadata !182) #5, !dbg !183
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !184) #5, !dbg !185
  call void @llvm.dbg.value(metadata !{i32 %"4"}, i64 0, metadata !186) #5, !dbg !187
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !188) #5, !dbg !189
  %"16" = call i32 @__VERIFIER_nondet_int() #5, !dbg !190
  call void @llvm.dbg.value(metadata !{i32 %"16"}, i64 0, metadata !192) #5, !dbg !193
  %"17" = icmp eq i32 %"16", 0, !dbg !194
  %.0.i1 = select i1 %"17", i32 0, i32 -1073741823, !dbg !194
  call void @llvm.dbg.value(metadata !{i32 %.0.i1}, i64 0, metadata !168), !dbg !169
  call void @llvm.dbg.value(metadata !{i32 %"1"}, i64 0, metadata !196) #5, !dbg !198
  %"18" = call i32 @__VERIFIER_nondet_int() #5, !dbg !199
  call void @llvm.dbg.value(metadata !{i32 %"18"}, i64 0, metadata !201) #5, !dbg !202
  %"19" = icmp slt i32 %.0.i1, 0, !dbg !203
  br i1 %"19", label %FlQueueIrpToThread_bb11, label %FlQueueIrpToThread_bb9, !dbg !203

FlQueueIrpToThread_bb9:                           ; preds = %FlQueueIrpToThread_bb8, %FlQueueIrpToThread_bb5
  %"20" = load i32* @"'pended", align 4, !dbg !206
  %"21" = icmp eq i32 %"20", 0, !dbg !206
  br i1 %"21", label %FlQueueIrpToThread_bb10, label %FlQueueIrpToThread_bb12, !dbg !206

FlQueueIrpToThread_bb10:                          ; preds = %FlQueueIrpToThread_bb9
  store i32 1, i32* @"'pended", align 4, !dbg !208
  br label %FlQueueIrpToThread_bb11, !dbg !210

FlQueueIrpToThread_bb11:                          ; preds = %FlQueueIrpToThread_bb8, %FlQueueIrpToThread_bb10, %FlQueueIrpToThread_bb7, %FlQueueIrpToThread_bb4
  %.0 = phi i32 [ -1073741101, %FlQueueIrpToThread_bb4 ], [ %.0.i, %FlQueueIrpToThread_bb7 ], [ 259, %FlQueueIrpToThread_bb10 ], [ %.0.i1, %FlQueueIrpToThread_bb8 ]
  ret i32 %.0, !dbg !211

FlQueueIrpToThread_bb12:                          ; preds = %FlQueueIrpToThread_bb9
  call void (...)* @__VERIFIER_error() #6, !dbg !212
  unreachable, !dbg !212
}

declare i32 @__VERIFIER_nondet_int() #3

; Function Attrs: nounwind uwtable
define i32 @FloppyPnp(i32 %DeviceObject, i32 %Irp) #0 {
FloppyPnp_bb13:
  call void @llvm.dbg.value(metadata !{i32 %DeviceObject}, i64 0, metadata !216), !dbg !217
  call void @llvm.dbg.value(metadata !{i32 %Irp}, i64 0, metadata !218), !dbg !219
  %"22" = call i32 @__VERIFIER_nondet_int(), !dbg !220
  call void @llvm.dbg.value(metadata !{i32 %"22"}, i64 0, metadata !221), !dbg !222
  %"23" = call i32 @__VERIFIER_nondet_int(), !dbg !223
  call void @llvm.dbg.value(metadata !{i32 %"23"}, i64 0, metadata !224), !dbg !225
  %"24" = call i32 @__VERIFIER_nondet_int(), !dbg !226
  call void @llvm.dbg.value(metadata !{i32 %"24"}, i64 0, metadata !227), !dbg !228
  %"25" = call i32 @__VERIFIER_nondet_int(), !dbg !229
  call void @llvm.dbg.value(metadata !{i32 %"25"}, i64 0, metadata !230), !dbg !231
  %"26" = call i32 @__VERIFIER_nondet_int(), !dbg !232
  call void @llvm.dbg.value(metadata !{i32 %"26"}, i64 0, metadata !233), !dbg !234
  %"27" = call i32 @__VERIFIER_nondet_int(), !dbg !235
  call void @llvm.dbg.value(metadata !{i32 %"27"}, i64 0, metadata !236), !dbg !237
  %"28" = call i32 @__VERIFIER_nondet_int(), !dbg !238
  call void @llvm.dbg.value(metadata !{i32 %"28"}, i64 0, metadata !239), !dbg !240
  %"29" = call i32 @__VERIFIER_nondet_int(), !dbg !241
  call void @llvm.dbg.value(metadata !{i32 %"29"}, i64 0, metadata !242), !dbg !243
  %"30" = call i32 @__VERIFIER_nondet_int(), !dbg !244
  call void @llvm.dbg.value(metadata !{i32 %"30"}, i64 0, metadata !245), !dbg !246
  %"31" = call i32 @__VERIFIER_nondet_int(), !dbg !247
  call void @llvm.dbg.value(metadata !{i32 %"31"}, i64 0, metadata !248), !dbg !249
  %"32" = call i32 @__VERIFIER_nondet_int(), !dbg !250
  call void @llvm.dbg.value(metadata !{i32 %"32"}, i64 0, metadata !251), !dbg !252
  %"33" = call i32 @__VERIFIER_nondet_int(), !dbg !253
  call void @llvm.dbg.value(metadata !{i32 %"33"}, i64 0, metadata !254), !dbg !255
  %"34" = call i32 @__VERIFIER_nondet_int(), !dbg !256
  call void @llvm.dbg.value(metadata !{i32 %"34"}, i64 0, metadata !257), !dbg !258
  %"35" = call i32 @__VERIFIER_nondet_int(), !dbg !259
  call void @llvm.dbg.value(metadata !{i32 %"35"}, i64 0, metadata !260), !dbg !261
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !262), !dbg !263
  %"36" = load i32* @"'PagingReferenceCount", align 4, !dbg !264
  %"37" = add nsw i32 %"36", 1, !dbg !264
  store i32 %"37", i32* @"'PagingReferenceCount", align 4, !dbg !264
  call void @llvm.dbg.value(metadata !{i32 %"22"}, i64 0, metadata !266), !dbg !267
  call void @llvm.dbg.value(metadata !{i32 %"23"}, i64 0, metadata !268), !dbg !269
  %"38" = icmp ne i32 %"25", 0, !dbg !270
  br i1 %"38", label %FloppyPnp_bb14, label %FloppyPnp_bb16, !dbg !270

FloppyPnp_bb14:                                   ; preds = %FloppyPnp_bb13
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !272), !dbg !273
  call void @llvm.dbg.value(metadata !274, i64 0, metadata !275), !dbg !276
  store i32 -1073741738, i32* @"'myStatus", align 4, !dbg !277
  call void @llvm.dbg.value(metadata !{i32 %Irp}, i64 0, metadata !280) #5, !dbg !282
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !283) #5, !dbg !284
  %"39" = load i32* @"'s", align 4, !dbg !285
  %"40" = load i32* @"'NP", align 4, !dbg !285
  %"41" = icmp eq i32 %"39", %"40", !dbg !285
  br i1 %"41", label %FloppyPnp_IofCompleteRequest.exit, label %FloppyPnp_bb15, !dbg !285

FloppyPnp_IofCompleteRequest.exit:                ; preds = %FloppyPnp_bb14
  %"42" = load i32* @"'DC", align 4, !dbg !288
  store i32 %"42", i32* @"'s", align 4, !dbg !288
  br label %FloppyPnp_IofCallDriver.exit, !dbg !290

FloppyPnp_bb15:                                   ; preds = %FloppyPnp_bb14
  call void (...)* @__VERIFIER_error() #6, !dbg !291
  unreachable, !dbg !291

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
  call void @llvm.dbg.value(metadata !{i32 %DeviceObject}, i64 0, metadata !295) #5, !dbg !314
  call void @llvm.dbg.value(metadata !{i32 %Irp}, i64 0, metadata !315) #5, !dbg !316
  %"43" = call i32 @__VERIFIER_nondet_int() #5, !dbg !317
  call void @llvm.dbg.value(metadata !{i32 %"43"}, i64 0, metadata !318) #5, !dbg !319
  %"44" = call i32 @__VERIFIER_nondet_int() #5, !dbg !320
  call void @llvm.dbg.value(metadata !{i32 %"44"}, i64 0, metadata !321) #5, !dbg !322
  %"45" = call i32 @__VERIFIER_nondet_int() #5, !dbg !323
  call void @llvm.dbg.value(metadata !{i32 %"45"}, i64 0, metadata !324) #5, !dbg !325
  %"46" = call i32 @__VERIFIER_nondet_int() #5, !dbg !326
  call void @llvm.dbg.value(metadata !{i32 %"46"}, i64 0, metadata !327) #5, !dbg !328
  %"47" = call i32 @__VERIFIER_nondet_int() #5, !dbg !329
  call void @llvm.dbg.value(metadata !{i32 %"47"}, i64 0, metadata !330) #5, !dbg !331
  %"48" = call i32 @__VERIFIER_nondet_int() #5, !dbg !332
  call void @llvm.dbg.value(metadata !{i32 %"48"}, i64 0, metadata !333) #5, !dbg !334
  %"49" = call i32 @__VERIFIER_nondet_int() #5, !dbg !335
  call void @llvm.dbg.value(metadata !{i32 %"49"}, i64 0, metadata !336) #5, !dbg !337
  %"50" = call i32 @__VERIFIER_nondet_int() #5, !dbg !338
  call void @llvm.dbg.value(metadata !{i32 %"50"}, i64 0, metadata !339) #5, !dbg !340
  %"51" = call i32 @__VERIFIER_nondet_int() #5, !dbg !341
  call void @llvm.dbg.value(metadata !{i32 %"51"}, i64 0, metadata !342) #5, !dbg !343
  %"52" = call i32 @__VERIFIER_nondet_int() #5, !dbg !344
  call void @llvm.dbg.value(metadata !{i32 %"52"}, i64 0, metadata !345) #5, !dbg !346
  %"53" = call i32 @__VERIFIER_nondet_int() #5, !dbg !347
  call void @llvm.dbg.value(metadata !{i32 %"53"}, i64 0, metadata !348) #5, !dbg !349
  %"54" = call i32 @__VERIFIER_nondet_int() #5, !dbg !350
  call void @llvm.dbg.value(metadata !{i32 %"54"}, i64 0, metadata !351) #5, !dbg !352
  %"55" = call i32 @__VERIFIER_nondet_int() #5, !dbg !353
  call void @llvm.dbg.value(metadata !{i32 %"55"}, i64 0, metadata !354) #5, !dbg !355
  %"56" = call i32 @__VERIFIER_nondet_int() #5, !dbg !356
  call void @llvm.dbg.value(metadata !{i32 %"56"}, i64 0, metadata !357) #5, !dbg !358
  %"57" = call i32 @__VERIFIER_nondet_int() #5, !dbg !359
  call void @llvm.dbg.value(metadata !{i32 %"57"}, i64 0, metadata !360) #5, !dbg !361
  %"58" = call i32 @__VERIFIER_nondet_int() #5, !dbg !362
  call void @llvm.dbg.value(metadata !{i32 %"58"}, i64 0, metadata !363) #5, !dbg !364
  call void @llvm.dbg.value(metadata !{i32 %"43"}, i64 0, metadata !365) #5, !dbg !366
  call void @llvm.dbg.value(metadata !{i32 %"44"}, i64 0, metadata !367) #5, !dbg !368
  call void @llvm.dbg.value(metadata !{i32 %"44"}, i64 0, metadata !369) #5, !dbg !370
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !371) #5, !dbg !372
  %"59" = load i32* @"'s", align 4, !dbg !373
  %"60" = load i32* @"'NP", align 4, !dbg !373
  %"61" = icmp ne i32 %"59", %"60", !dbg !373
  br i1 %"61", label %FloppyPnp_bb18, label %FloppyPnp_bb19, !dbg !373

FloppyPnp_bb18:                                   ; preds = %FloppyPnp_bb17
  call void (...)* @__VERIFIER_error() #6, !dbg !376
  unreachable, !dbg !376

FloppyPnp_bb19:                                   ; preds = %FloppyPnp_bb17
  %"62" = load i32* @"'compRegistered", align 4, !dbg !380
  %"63" = icmp ne i32 %"62", 0, !dbg !380
  br i1 %"63", label %FloppyPnp_bb20, label %FloppyPnp_bb21, !dbg !380

FloppyPnp_bb20:                                   ; preds = %FloppyPnp_bb19
  call void (...)* @__VERIFIER_error() #6, !dbg !383
  unreachable, !dbg !383

FloppyPnp_bb21:                                   ; preds = %FloppyPnp_bb19
  store i32 1, i32* @"'compRegistered", align 4, !dbg !387
  call void @llvm.dbg.value(metadata !{i32 %"49"}, i64 0, metadata !389) #5, !dbg !390
  call void @llvm.dbg.value(metadata !391, i64 0, metadata !392) #5, !dbg !393
  call void @llvm.dbg.value(metadata !{i32 %"45"}, i64 0, metadata !394) #5, !dbg !397
  call void @llvm.dbg.value(metadata !{i32 %Irp}, i64 0, metadata !398) #5, !dbg !399
  %"64" = call i32 @__VERIFIER_nondet_int() #5, !dbg !400
  call void @llvm.dbg.value(metadata !{i32 %"64"}, i64 0, metadata !401) #5, !dbg !402
  %"65" = load i32* @"'compRegistered", align 4, !dbg !403
  %"66" = icmp ne i32 %"65", 0, !dbg !403
  br i1 %"66", label %FloppyPnp_bb22, label %FloppyPnp_bb24, !dbg !403

FloppyPnp_bb22:                                   ; preds = %FloppyPnp_bb21
  call void @llvm.dbg.value(metadata !{i32 %"45"}, i64 0, metadata !406) #5, !dbg !410
  call void @llvm.dbg.value(metadata !{i32 %Irp}, i64 0, metadata !411) #5, !dbg !412
  call void @llvm.dbg.value(metadata !{i32 %"64"}, i64 0, metadata !413) #5, !dbg !414
  call void @llvm.dbg.value(metadata !{i32 %"64"}, i64 0, metadata !415) #5, !dbg !419
  call void @llvm.dbg.value(metadata !420, i64 0, metadata !421) #5, !dbg !422
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !423) #5, !dbg !424
  %"67" = call i32 @__VERIFIER_nondet_int() #5, !dbg !425
  call void @llvm.dbg.value(metadata !{i32 %"67"}, i64 0, metadata !426) #5, !dbg !427
  store i32 1, i32* @"'setEventCalled", align 4, !dbg !428
  call void @llvm.dbg.value(metadata !430, i64 0, metadata !431) #5, !dbg !432
  call void @llvm.dbg.value(metadata !433, i64 0, metadata !434) #5, !dbg !436
  %"68" = load i32* @"'s", align 4, !dbg !437
  %"69" = load i32* @"'NP", align 4, !dbg !437
  %"70" = icmp eq i32 %"68", %"69", !dbg !437
  br i1 %"70", label %FloppyPnp_stubMoreProcessingRequired.exit.i.i, label %FloppyPnp_bb23, !dbg !437

FloppyPnp_stubMoreProcessingRequired.exit.i.i:    ; preds = %FloppyPnp_bb22
  %"71" = load i32* @"'MPR1", align 4, !dbg !445
  store i32 %"71", i32* @"'s", align 4, !dbg !445
  br label %FloppyPnp_bb24, !dbg !447

FloppyPnp_bb23:                                   ; preds = %FloppyPnp_bb22
  call void (...)* @__VERIFIER_error() #6, !dbg !448
  unreachable, !dbg !448

FloppyPnp_bb24:                                   ; preds = %FloppyPnp_stubMoreProcessingRequired.exit.i.i, %FloppyPnp_bb21
  %"72" = call i32 @__VERIFIER_nondet_int() #5, !dbg !452
  call void @llvm.dbg.value(metadata !{i32 %"72"}, i64 0, metadata !453) #5, !dbg !454
  %"73" = icmp eq i32 %"72", 0, !dbg !455
  br i1 %"73", label %FloppyPnp_bb26, label %FloppyPnp_bb25, !dbg !455

FloppyPnp_bb25:                                   ; preds = %FloppyPnp_bb24
  %"74" = call i32 @__VERIFIER_nondet_int() #5, !dbg !457
  call void @llvm.dbg.value(metadata !{i32 %"74"}, i64 0, metadata !459) #5, !dbg !460
  %"75" = icmp eq i32 %"74", 1, !dbg !461
  call void @llvm.dbg.value(metadata !463, i64 0, metadata !464) #5, !dbg !465
  %..i.i = select i1 %"75", i32 -1073741823, i32 259, !dbg !461
  br label %FloppyPnp_bb26, !dbg !461

FloppyPnp_bb26:                                   ; preds = %FloppyPnp_bb25, %FloppyPnp_bb24
  %returnVal2.0.i.i = phi i32 [ 0, %FloppyPnp_bb24 ], [ %..i.i, %FloppyPnp_bb25 ], !dbg !395
  %"76" = load i32* @"'s", align 4, !dbg !466
  %"77" = load i32* @"'NP", align 4, !dbg !466
  %"78" = icmp eq i32 %"76", %"77", !dbg !466
  br i1 %"78", label %FloppyPnp_bb27, label %FloppyPnp_bb28, !dbg !466

FloppyPnp_bb27:                                   ; preds = %FloppyPnp_bb26
  %"79" = load i32* @"'IPC", align 4, !dbg !468
  store i32 %"79", i32* @"'s", align 4, !dbg !468
  store i32 %returnVal2.0.i.i, i32* @"'lowerDriverReturn", align 4, !dbg !470
  br label %FloppyPnp_IofCallDriver.exit.i, !dbg !471

FloppyPnp_bb28:                                   ; preds = %FloppyPnp_bb26
  %"80" = load i32* @"'s", align 4, !dbg !472
  %"81" = load i32* @"'MPR1", align 4, !dbg !472
  %"82" = icmp eq i32 %"80", %"81", !dbg !472
  br i1 %"82", label %FloppyPnp_bb29, label %FloppyPnp_bb32, !dbg !472

FloppyPnp_bb29:                                   ; preds = %FloppyPnp_bb28
  %"83" = icmp eq i32 %returnVal2.0.i.i, 259, !dbg !475
  br i1 %"83", label %FloppyPnp_bb30, label %FloppyPnp_bb31, !dbg !475

FloppyPnp_bb30:                                   ; preds = %FloppyPnp_bb29
  %"84" = load i32* @"'MPR3", align 4, !dbg !478
  store i32 %"84", i32* @"'s", align 4, !dbg !478
  store i32 %returnVal2.0.i.i, i32* @"'lowerDriverReturn", align 4, !dbg !480
  br label %FloppyPnp_IofCallDriver.exit.i, !dbg !481

FloppyPnp_bb31:                                   ; preds = %FloppyPnp_bb29
  %"85" = load i32* @"'NP", align 4, !dbg !482
  store i32 %"85", i32* @"'s", align 4, !dbg !482
  store i32 %returnVal2.0.i.i, i32* @"'lowerDriverReturn", align 4, !dbg !484
  br label %FloppyPnp_IofCallDriver.exit.i, !dbg !395

FloppyPnp_bb32:                                   ; preds = %FloppyPnp_bb28
  %"86" = load i32* @"'s", align 4, !dbg !485
  %"87" = load i32* @"'SKIP1", align 4, !dbg !485
  %"88" = icmp eq i32 %"86", %"87", !dbg !485
  br i1 %"88", label %FloppyPnp_bb33, label %FloppyPnp_bb70, !dbg !485

FloppyPnp_bb33:                                   ; preds = %FloppyPnp_bb32
  %"89" = load i32* @"'SKIP2", align 4, !dbg !488
  store i32 %"89", i32* @"'s", align 4, !dbg !488
  store i32 %returnVal2.0.i.i, i32* @"'lowerDriverReturn", align 4, !dbg !490
  br label %FloppyPnp_IofCallDriver.exit.i, !dbg !395

FloppyPnp_IofCallDriver.exit.i:                   ; preds = %FloppyPnp_bb33, %FloppyPnp_bb31, %FloppyPnp_bb30, %FloppyPnp_bb27
  call void @llvm.dbg.value(metadata !{i32 %returnVal2.0.i.i}, i64 0, metadata !491) #5, !dbg !492
  %"90" = sext i32 %returnVal2.0.i.i to i64, !dbg !493
  call void @llvm.dbg.value(metadata !{i64 %"90"}, i64 0, metadata !495) #5, !dbg !497
  %"91" = icmp eq i64 %"90", 259, !dbg !498
  br i1 %"91", label %FloppyPnp_bb34, label %FloppyPnp_bb40, !dbg !498

FloppyPnp_bb34:                                   ; preds = %FloppyPnp_IofCallDriver.exit.i
  call void @llvm.dbg.value(metadata !{i32 %"49"}, i64 0, metadata !500) #5, !dbg !504
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !505) #5, !dbg !506
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !507) #5, !dbg !508
  %"92" = load i32* @"'s", align 4, !dbg !509
  %"93" = load i32* @"'MPR3", align 4, !dbg !509
  %"94" = icmp eq i32 %"92", %"93", !dbg !509
  %"95" = load i32* @"'setEventCalled", align 4, !dbg !501
  %"96" = icmp eq i32 %"95", 1, !dbg !512
  %or.cond.i.i = and i1 %"94", %"96", !dbg !509
  br i1 %or.cond.i.i, label %FloppyPnp_bb35, label %FloppyPnp_bb36, !dbg !509

FloppyPnp_bb35:                                   ; preds = %FloppyPnp_bb34
  %"97" = load i32* @"'NP", align 4, !dbg !515
  store i32 %"97", i32* @"'s", align 4, !dbg !515
  store i32 0, i32* @"'setEventCalled", align 4, !dbg !517
  br label %FloppyPnp_KeWaitForSingleObject.exit.i, !dbg !518

FloppyPnp_bb36:                                   ; preds = %FloppyPnp_bb34
  %"98" = load i32* @"'customIrp", align 4, !dbg !519
  %"99" = icmp eq i32 %"98", 1, !dbg !519
  br i1 %"99", label %FloppyPnp_bb37, label %FloppyPnp_bb38, !dbg !519

FloppyPnp_bb37:                                   ; preds = %FloppyPnp_bb36
  %"100" = load i32* @"'NP", align 4, !dbg !522
  store i32 %"100", i32* @"'s", align 4, !dbg !522
  store i32 0, i32* @"'customIrp", align 4, !dbg !524
  br label %FloppyPnp_KeWaitForSingleObject.exit.i, !dbg !525

FloppyPnp_bb38:                                   ; preds = %FloppyPnp_bb36
  %"101" = load i32* @"'s", align 4, !dbg !526
  %"102" = load i32* @"'MPR3", align 4, !dbg !526
  %"103" = icmp eq i32 %"101", %"102", !dbg !526
  br i1 %"103", label %FloppyPnp_bb39, label %FloppyPnp_KeWaitForSingleObject.exit.i, !dbg !526

FloppyPnp_bb39:                                   ; preds = %FloppyPnp_bb38
  call void (...)* @__VERIFIER_error() #6, !dbg !529
  unreachable, !dbg !529

FloppyPnp_KeWaitForSingleObject.exit.i:           ; preds = %FloppyPnp_bb38, %FloppyPnp_bb37, %FloppyPnp_bb35
  %"104" = call i32 @__VERIFIER_nondet_int() #5, !dbg !533
  call void @llvm.dbg.value(metadata !{i32 %"104"}, i64 0, metadata !534) #5, !dbg !535
  br label %FloppyPnp_bb40, !dbg !536

FloppyPnp_bb40:                                   ; preds = %FloppyPnp_KeWaitForSingleObject.exit.i, %FloppyPnp_IofCallDriver.exit.i
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !537) #5, !dbg !538
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !539) #5, !dbg !540
  call void @llvm.dbg.value(metadata !541, i64 0, metadata !542) #5, !dbg !543
  call void @llvm.dbg.value(metadata !544, i64 0, metadata !545) #5, !dbg !546
  call void @llvm.dbg.value(metadata !547, i64 0, metadata !548) #5, !dbg !549
  call void @llvm.dbg.value(metadata !550, i64 0, metadata !551) #5, !dbg !552
  call void @llvm.dbg.value(metadata !{i32 %"45"}, i64 0, metadata !553) #5, !dbg !556
  call void @llvm.dbg.value(metadata !550, i64 0, metadata !557) #5, !dbg !558
  call void @llvm.dbg.value(metadata !{i32 %"50"}, i64 0, metadata !559) #5, !dbg !560
  %"105" = call i32 @__VERIFIER_nondet_int() #5, !dbg !561
  call void @llvm.dbg.value(metadata !{i32 %"105"}, i64 0, metadata !562) #5, !dbg !563
  %"106" = call i32 @__VERIFIER_nondet_int() #5, !dbg !564
  call void @llvm.dbg.value(metadata !{i32 %"106"}, i64 0, metadata !565) #5, !dbg !566
  %"107" = call i32 @__VERIFIER_nondet_int() #5, !dbg !567
  call void @llvm.dbg.value(metadata !{i32 %"107"}, i64 0, metadata !568) #5, !dbg !569
  call void @llvm.dbg.value(metadata !550, i64 0, metadata !570) #5, !dbg !574
  call void @llvm.dbg.value(metadata !{i32 %"45"}, i64 0, metadata !575) #5, !dbg !576
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !577) #5, !dbg !578
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !579) #5, !dbg !580
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !581) #5, !dbg !582
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !583) #5, !dbg !584
  call void @llvm.dbg.value(metadata !420, i64 0, metadata !585) #5, !dbg !586
  call void @llvm.dbg.value(metadata !{i32 %"105"}, i64 0, metadata !587) #5, !dbg !588
  call void @llvm.dbg.value(metadata !{i32 %"106"}, i64 0, metadata !589) #5, !dbg !590
  %"108" = call i32 @__VERIFIER_nondet_int() #5, !dbg !591
  call void @llvm.dbg.value(metadata !{i32 %"108"}, i64 0, metadata !592) #5, !dbg !593
  store i32 1, i32* @"'customIrp", align 4, !dbg !594
  %"109" = call i32 @__VERIFIER_nondet_int() #5, !dbg !596
  call void @llvm.dbg.value(metadata !{i32 %"109"}, i64 0, metadata !597) #5, !dbg !598
  %"110" = icmp eq i32 %"109", 0, !dbg !599
  %.0.i.i.i = select i1 %"110", i32 %"108", i32 0, !dbg !599
  call void @llvm.dbg.value(metadata !{i32 %.0.i.i.i}, i64 0, metadata !601) #5, !dbg !602
  %"111" = icmp eq i32 %.0.i.i.i, 0, !dbg !603
  br i1 %"111", label %FloppyPnp_FlFdcDeviceIo.exit.i, label %FloppyPnp_bb41, !dbg !603

FloppyPnp_bb41:                                   ; preds = %FloppyPnp_bb40
  call void @llvm.dbg.value(metadata !{i32 %"50"}, i64 0, metadata !605) #5, !dbg !606
  call void @llvm.dbg.value(metadata !{i32 %"45"}, i64 0, metadata !607) #5, !dbg !610
  call void @llvm.dbg.value(metadata !{i32 %.0.i.i.i}, i64 0, metadata !611) #5, !dbg !612
  %"112" = call i32 @__VERIFIER_nondet_int() #5, !dbg !613
  call void @llvm.dbg.value(metadata !{i32 %"112"}, i64 0, metadata !614) #5, !dbg !615
  %"113" = load i32* @"'compRegistered", align 4, !dbg !616
  %"114" = icmp ne i32 %"113", 0, !dbg !616
  br i1 %"114", label %FloppyPnp_bb42, label %FloppyPnp_bb44, !dbg !616

FloppyPnp_bb42:                                   ; preds = %FloppyPnp_bb41
  call void @llvm.dbg.value(metadata !{i32 %"45"}, i64 0, metadata !617) #5, !dbg !619
  call void @llvm.dbg.value(metadata !{i32 %.0.i.i.i}, i64 0, metadata !620) #5, !dbg !621
  call void @llvm.dbg.value(metadata !{i32 %"112"}, i64 0, metadata !622) #5, !dbg !623
  call void @llvm.dbg.value(metadata !{i32 %"112"}, i64 0, metadata !624) #5, !dbg !626
  call void @llvm.dbg.value(metadata !420, i64 0, metadata !627) #5, !dbg !628
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !629) #5, !dbg !630
  %"115" = call i32 @__VERIFIER_nondet_int() #5, !dbg !631
  call void @llvm.dbg.value(metadata !{i32 %"115"}, i64 0, metadata !632) #5, !dbg !633
  store i32 1, i32* @"'setEventCalled", align 4, !dbg !634
  call void @llvm.dbg.value(metadata !430, i64 0, metadata !635) #5, !dbg !636
  call void @llvm.dbg.value(metadata !433, i64 0, metadata !637) #5, !dbg !638
  %"116" = load i32* @"'s", align 4, !dbg !639
  %"117" = load i32* @"'NP", align 4, !dbg !639
  %"118" = icmp eq i32 %"116", %"117", !dbg !639
  br i1 %"118", label %FloppyPnp_stubMoreProcessingRequired.exit.i.i.i, label %FloppyPnp_bb43, !dbg !639

FloppyPnp_stubMoreProcessingRequired.exit.i.i.i:  ; preds = %FloppyPnp_bb42
  %"119" = load i32* @"'MPR1", align 4, !dbg !641
  store i32 %"119", i32* @"'s", align 4, !dbg !641
  br label %FloppyPnp_bb44, !dbg !642

FloppyPnp_bb43:                                   ; preds = %FloppyPnp_bb42
  call void (...)* @__VERIFIER_error() #6, !dbg !643
  unreachable, !dbg !643

FloppyPnp_bb44:                                   ; preds = %FloppyPnp_stubMoreProcessingRequired.exit.i.i.i, %FloppyPnp_bb41
  %"120" = call i32 @__VERIFIER_nondet_int() #5, !dbg !645
  call void @llvm.dbg.value(metadata !{i32 %"120"}, i64 0, metadata !646) #5, !dbg !647
  %"121" = icmp eq i32 %"120", 0, !dbg !648
  br i1 %"121", label %FloppyPnp_bb46, label %FloppyPnp_bb45, !dbg !648

FloppyPnp_bb45:                                   ; preds = %FloppyPnp_bb44
  %"122" = call i32 @__VERIFIER_nondet_int() #5, !dbg !649
  call void @llvm.dbg.value(metadata !{i32 %"122"}, i64 0, metadata !650) #5, !dbg !651
  %"123" = icmp eq i32 %"122", 1, !dbg !652
  call void @llvm.dbg.value(metadata !463, i64 0, metadata !653) #5, !dbg !654
  %..i.i.i = select i1 %"123", i32 -1073741823, i32 259, !dbg !652
  br label %FloppyPnp_bb46, !dbg !652

FloppyPnp_bb46:                                   ; preds = %FloppyPnp_bb45, %FloppyPnp_bb44
  %returnVal2.0.i.i.i = phi i32 [ 0, %FloppyPnp_bb44 ], [ %..i.i.i, %FloppyPnp_bb45 ], !dbg !608
  %"124" = load i32* @"'s", align 4, !dbg !655
  %"125" = load i32* @"'NP", align 4, !dbg !655
  %"126" = icmp eq i32 %"124", %"125", !dbg !655
  br i1 %"126", label %FloppyPnp_bb47, label %FloppyPnp_bb48, !dbg !655

FloppyPnp_bb47:                                   ; preds = %FloppyPnp_bb46
  %"127" = load i32* @"'IPC", align 4, !dbg !656
  store i32 %"127", i32* @"'s", align 4, !dbg !656
  store i32 %returnVal2.0.i.i.i, i32* @"'lowerDriverReturn", align 4, !dbg !657
  br label %FloppyPnp_IofCallDriver.exit.i.i, !dbg !658

FloppyPnp_bb48:                                   ; preds = %FloppyPnp_bb46
  %"128" = load i32* @"'s", align 4, !dbg !659
  %"129" = load i32* @"'MPR1", align 4, !dbg !659
  %"130" = icmp eq i32 %"128", %"129", !dbg !659
  br i1 %"130", label %FloppyPnp_bb49, label %FloppyPnp_bb52, !dbg !659

FloppyPnp_bb49:                                   ; preds = %FloppyPnp_bb48
  %"131" = icmp eq i32 %returnVal2.0.i.i.i, 259, !dbg !660
  br i1 %"131", label %FloppyPnp_bb50, label %FloppyPnp_bb51, !dbg !660

FloppyPnp_bb50:                                   ; preds = %FloppyPnp_bb49
  %"132" = load i32* @"'MPR3", align 4, !dbg !661
  store i32 %"132", i32* @"'s", align 4, !dbg !661
  store i32 %returnVal2.0.i.i.i, i32* @"'lowerDriverReturn", align 4, !dbg !662
  br label %FloppyPnp_IofCallDriver.exit.i.i, !dbg !663

FloppyPnp_bb51:                                   ; preds = %FloppyPnp_bb49
  %"133" = load i32* @"'NP", align 4, !dbg !664
  store i32 %"133", i32* @"'s", align 4, !dbg !664
  store i32 %returnVal2.0.i.i.i, i32* @"'lowerDriverReturn", align 4, !dbg !665
  br label %FloppyPnp_IofCallDriver.exit.i.i, !dbg !608

FloppyPnp_bb52:                                   ; preds = %FloppyPnp_bb48
  %"134" = load i32* @"'s", align 4, !dbg !666
  %"135" = load i32* @"'SKIP1", align 4, !dbg !666
  %"136" = icmp eq i32 %"134", %"135", !dbg !666
  br i1 %"136", label %FloppyPnp_bb53, label %FloppyPnp_bb69, !dbg !666

FloppyPnp_bb53:                                   ; preds = %FloppyPnp_bb52
  %"137" = load i32* @"'SKIP2", align 4, !dbg !667
  store i32 %"137", i32* @"'s", align 4, !dbg !667
  store i32 %returnVal2.0.i.i.i, i32* @"'lowerDriverReturn", align 4, !dbg !668
  br label %FloppyPnp_IofCallDriver.exit.i.i, !dbg !608

FloppyPnp_IofCallDriver.exit.i.i:                 ; preds = %FloppyPnp_bb53, %FloppyPnp_bb51, %FloppyPnp_bb50, %FloppyPnp_bb47
  call void @llvm.dbg.value(metadata !{i32 %returnVal2.0.i.i.i}, i64 0, metadata !669) #5, !dbg !670
  %"138" = sext i32 %returnVal2.0.i.i.i to i64, !dbg !671
  call void @llvm.dbg.value(metadata !{i64 %"138"}, i64 0, metadata !673) #5, !dbg !674
  %"139" = icmp eq i64 %"138", 259, !dbg !675
  br i1 %"139", label %FloppyPnp_bb54, label %FloppyPnp_FlFdcDeviceIo.exit.i, !dbg !675

FloppyPnp_bb54:                                   ; preds = %FloppyPnp_IofCallDriver.exit.i.i
  call void @llvm.dbg.value(metadata !{i32 %"105"}, i64 0, metadata !677) #5, !dbg !681
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !682) #5, !dbg !683
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !684) #5, !dbg !685
  %"140" = load i32* @"'s", align 4, !dbg !686
  %"141" = load i32* @"'MPR3", align 4, !dbg !686
  %"142" = icmp eq i32 %"140", %"141", !dbg !686
  %"143" = load i32* @"'setEventCalled", align 4, !dbg !678
  %"144" = icmp eq i32 %"143", 1, !dbg !687
  %or.cond.i.i.i = and i1 %"142", %"144", !dbg !686
  br i1 %or.cond.i.i.i, label %FloppyPnp_bb55, label %FloppyPnp_bb56, !dbg !686

FloppyPnp_bb55:                                   ; preds = %FloppyPnp_bb54
  %"145" = load i32* @"'NP", align 4, !dbg !688
  store i32 %"145", i32* @"'s", align 4, !dbg !688
  store i32 0, i32* @"'setEventCalled", align 4, !dbg !689
  br label %FloppyPnp_KeWaitForSingleObject.exit.i.i, !dbg !690

FloppyPnp_bb56:                                   ; preds = %FloppyPnp_bb54
  %"146" = load i32* @"'customIrp", align 4, !dbg !691
  %"147" = icmp eq i32 %"146", 1, !dbg !691
  br i1 %"147", label %FloppyPnp_bb57, label %FloppyPnp_bb58, !dbg !691

FloppyPnp_bb57:                                   ; preds = %FloppyPnp_bb56
  %"148" = load i32* @"'NP", align 4, !dbg !692
  store i32 %"148", i32* @"'s", align 4, !dbg !692
  store i32 0, i32* @"'customIrp", align 4, !dbg !693
  br label %FloppyPnp_KeWaitForSingleObject.exit.i.i, !dbg !694

FloppyPnp_bb58:                                   ; preds = %FloppyPnp_bb56
  %"149" = load i32* @"'s", align 4, !dbg !695
  %"150" = load i32* @"'MPR3", align 4, !dbg !695
  %"151" = icmp eq i32 %"149", %"150", !dbg !695
  br i1 %"151", label %FloppyPnp_bb59, label %FloppyPnp_KeWaitForSingleObject.exit.i.i, !dbg !695

FloppyPnp_bb59:                                   ; preds = %FloppyPnp_bb58
  call void (...)* @__VERIFIER_error() #6, !dbg !696
  unreachable, !dbg !696

FloppyPnp_KeWaitForSingleObject.exit.i.i:         ; preds = %FloppyPnp_bb58, %FloppyPnp_bb57, %FloppyPnp_bb55
  %"152" = call i32 @__VERIFIER_nondet_int() #5, !dbg !698
  call void @llvm.dbg.value(metadata !{i32 %"152"}, i64 0, metadata !699) #5, !dbg !700
  %"153" = load i32* @"'myStatus", align 4, !dbg !701
  call void @llvm.dbg.value(metadata !{i32 %"153"}, i64 0, metadata !669) #5, !dbg !670
  br label %FloppyPnp_FlFdcDeviceIo.exit.i, !dbg !702

FloppyPnp_FlFdcDeviceIo.exit.i:                   ; preds = %FloppyPnp_KeWaitForSingleObject.exit.i.i, %FloppyPnp_IofCallDriver.exit.i.i, %FloppyPnp_bb40
  %.0.i2.i = phi i32 [ -1073741670, %FloppyPnp_bb40 ], [ %"153", %FloppyPnp_KeWaitForSingleObject.exit.i.i ], [ %returnVal2.0.i.i.i, %FloppyPnp_IofCallDriver.exit.i.i ], !dbg !554
  call void @llvm.dbg.value(metadata !{i32 %.0.i2.i}, i64 0, metadata !491) #5, !dbg !492
  %"154" = icmp sge i32 %.0.i2.i, 0, !dbg !703
  br i1 %"154", label %FloppyPnp_bb60, label %FloppyPnp_bb67, !dbg !703

FloppyPnp_bb60:                                   ; preds = %FloppyPnp_FlFdcDeviceIo.exit.i
  call void @llvm.dbg.value(metadata !{i32 %"51"}, i64 0, metadata !705) #5, !dbg !706
  %"155" = icmp ne i32 %"52", 0, !dbg !707
  %"156" = icmp ne i32 %"53", 0, !dbg !710
  %or.cond.i = and i1 %"155", %"156", !dbg !707
  br i1 %or.cond.i, label %FloppyPnp_bb63, label %FloppyPnp_bb61, !dbg !707

FloppyPnp_bb61:                                   ; preds = %FloppyPnp_bb66, %FloppyPnp_bb60
  %InterfaceType.0.i = phi i32 [ %"165", %FloppyPnp_bb66 ], [ 0, %FloppyPnp_bb60 ], !dbg !296
  %ntStatus.0.i = phi i32 [ %.0.i3.i, %FloppyPnp_bb66 ], [ %.0.i2.i, %FloppyPnp_bb60 ], !dbg !296
  %"157" = load i32* @"'MaximumInterfaceType", align 4, !dbg !713
  %"158" = icmp sge i32 %InterfaceType.0.i, %"157", !dbg !713
  br i1 %"158", label %FloppyPnp_bb63, label %FloppyPnp_bb62, !dbg !713

FloppyPnp_bb62:                                   ; preds = %FloppyPnp_bb61
  %"159" = call i32 @__VERIFIER_nondet_int() #5, !dbg !718
  %"160" = icmp eq i32 %"159", 0, !dbg !722
  %.0.i3.i = select i1 %"160", i32 0, i32 -1073741823, !dbg !722
  br i1 %"160", label %FloppyPnp_bb63, label %FloppyPnp_bb66, !dbg !724

FloppyPnp_bb63:                                   ; preds = %FloppyPnp_bb62, %FloppyPnp_bb61, %FloppyPnp_bb60
  %ntStatus.2.i = phi i32 [ %ntStatus.0.i, %FloppyPnp_bb61 ], [ %.0.i3.i, %FloppyPnp_bb62 ], [ 0, %FloppyPnp_bb60 ], !dbg !296
  %"161" = icmp sge i32 %ntStatus.2.i, 0, !dbg !726
  br i1 %"161", label %FloppyPnp_bb64, label %FloppyPnp_bb67, !dbg !726

FloppyPnp_bb64:                                   ; preds = %FloppyPnp_bb63
  call void @llvm.dbg.value(metadata !{i32 %"47"}, i64 0, metadata !728) #5, !dbg !732
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !733) #5, !dbg !734
  call void @llvm.dbg.value(metadata !{i32 %"48"}, i64 0, metadata !735) #5, !dbg !736
  %"162" = call i32 @__VERIFIER_nondet_int() #5, !dbg !737
  call void @llvm.dbg.value(metadata !{i32 %"162"}, i64 0, metadata !739) #5, !dbg !740
  %"163" = icmp eq i32 %"162", 0, !dbg !741
  br i1 %"163", label %FloppyPnp_bb65, label %FloppyPnp_bb67, !dbg !743

FloppyPnp_bb65:                                   ; preds = %FloppyPnp_bb64
  call void @llvm.dbg.value(metadata !{i32 %"48"}, i64 0, metadata !745) #5, !dbg !749
  call void @llvm.dbg.value(metadata !420, i64 0, metadata !750) #5, !dbg !751
  %"164" = call i32 @__VERIFIER_nondet_int() #5, !dbg !752
  call void @llvm.dbg.value(metadata !{i32 %"164"}, i64 0, metadata !754) #5, !dbg !755
  br label %FloppyPnp_bb67, !dbg !756

FloppyPnp_bb66:                                   ; preds = %FloppyPnp_bb62
  %"165" = add nsw i32 %InterfaceType.0.i, 1, !dbg !757
  br label %FloppyPnp_bb61, !dbg !758

FloppyPnp_bb67:                                   ; preds = %FloppyPnp_bb65, %FloppyPnp_bb64, %FloppyPnp_bb63, %FloppyPnp_FlFdcDeviceIo.exit.i
  %ntStatus.3.i = phi i32 [ %.0.i2.i, %FloppyPnp_FlFdcDeviceIo.exit.i ], [ %ntStatus.2.i, %FloppyPnp_bb64 ], [ %ntStatus.2.i, %FloppyPnp_bb65 ], [ %ntStatus.2.i, %FloppyPnp_bb63 ], !dbg !296
  call void @llvm.dbg.value(metadata !{i32 %ntStatus.3.i}, i64 0, metadata !759) #5, !dbg !760
  store i32 %ntStatus.3.i, i32* @"'myStatus", align 4, !dbg !761
  call void @llvm.dbg.value(metadata !{i32 %Irp}, i64 0, metadata !763) #5, !dbg !765
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !766) #5, !dbg !767
  %"166" = load i32* @"'s", align 4, !dbg !768
  %"167" = load i32* @"'NP", align 4, !dbg !768
  %"168" = icmp eq i32 %"166", %"167", !dbg !768
  br i1 %"168", label %FloppyPnp_FloppyStartDevice.exit, label %FloppyPnp_bb68, !dbg !768

FloppyPnp_FloppyStartDevice.exit:                 ; preds = %FloppyPnp_bb67
  %"169" = load i32* @"'DC", align 4, !dbg !769
  store i32 %"169", i32* @"'s", align 4, !dbg !769
  call void @llvm.dbg.value(metadata !{i32 %ntStatus.3.i}, i64 0, metadata !262), !dbg !263
  br label %FloppyPnp_IofCallDriver.exit40, !dbg !770

FloppyPnp_bb68:                                   ; preds = %FloppyPnp_bb67
  call void (...)* @__VERIFIER_error() #6, !dbg !771
  unreachable, !dbg !771

FloppyPnp_bb69:                                   ; preds = %FloppyPnp_bb52
  call void (...)* @__VERIFIER_error() #6, !dbg !773
  unreachable, !dbg !773

FloppyPnp_bb70:                                   ; preds = %FloppyPnp_bb32
  call void (...)* @__VERIFIER_error() #6, !dbg !777
  unreachable, !dbg !777

FloppyPnp_NodeBlock:                              ; preds = %FloppyPnp_NodeBlock41
  %Pivot = icmp slt i32 %"33", 2
  br i1 %Pivot, label %FloppyPnp_bb106, label %FloppyPnp_bb71

FloppyPnp_bb71:                                   ; preds = %FloppyPnp_NodeBlock
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !779), !dbg !780
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !233), !dbg !234
  call void @llvm.dbg.value(metadata !420, i64 0, metadata !230), !dbg !231
  %"170" = load i32* @"'s", align 4, !dbg !781
  %"171" = load i32* @"'NP", align 4, !dbg !781
  %"172" = icmp eq i32 %"170", %"171", !dbg !781
  br i1 %"172", label %FloppyPnp_bb72, label %FloppyPnp_bb89, !dbg !781

FloppyPnp_bb72:                                   ; preds = %FloppyPnp_bb71
  %"173" = load i32* @"'SKIP1", align 4, !dbg !783
  store i32 %"173", i32* @"'s", align 4, !dbg !783
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !275), !dbg !276
  store i32 0, i32* @"'myStatus", align 4, !dbg !785
  call void @llvm.dbg.value(metadata !{i32 %"27"}, i64 0, metadata !787) #5, !dbg !789
  call void @llvm.dbg.value(metadata !{i32 %Irp}, i64 0, metadata !790) #5, !dbg !791
  %"174" = call i32 @__VERIFIER_nondet_int() #5, !dbg !792
  call void @llvm.dbg.value(metadata !{i32 %"174"}, i64 0, metadata !793) #5, !dbg !794
  %"175" = load i32* @"'compRegistered", align 4, !dbg !795
  %"176" = icmp ne i32 %"175", 0, !dbg !795
  br i1 %"176", label %FloppyPnp_bb73, label %FloppyPnp_bb75, !dbg !795

FloppyPnp_bb73:                                   ; preds = %FloppyPnp_bb72
  call void @llvm.dbg.value(metadata !{i32 %"27"}, i64 0, metadata !796) #5, !dbg !798
  call void @llvm.dbg.value(metadata !{i32 %Irp}, i64 0, metadata !799) #5, !dbg !800
  call void @llvm.dbg.value(metadata !{i32 %"174"}, i64 0, metadata !801) #5, !dbg !802
  call void @llvm.dbg.value(metadata !{i32 %"174"}, i64 0, metadata !803) #5, !dbg !805
  call void @llvm.dbg.value(metadata !420, i64 0, metadata !806) #5, !dbg !807
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !808) #5, !dbg !809
  %"177" = call i32 @__VERIFIER_nondet_int() #5, !dbg !810
  call void @llvm.dbg.value(metadata !{i32 %"177"}, i64 0, metadata !811) #5, !dbg !812
  store i32 1, i32* @"'setEventCalled", align 4, !dbg !813
  call void @llvm.dbg.value(metadata !430, i64 0, metadata !814) #5, !dbg !815
  call void @llvm.dbg.value(metadata !433, i64 0, metadata !816) #5, !dbg !817
  %"178" = load i32* @"'s", align 4, !dbg !818
  %"179" = load i32* @"'NP", align 4, !dbg !818
  %"180" = icmp eq i32 %"178", %"179", !dbg !818
  br i1 %"180", label %FloppyPnp_stubMoreProcessingRequired.exit.i30, label %FloppyPnp_bb74, !dbg !818

FloppyPnp_stubMoreProcessingRequired.exit.i30:    ; preds = %FloppyPnp_bb73
  %"181" = load i32* @"'MPR1", align 4, !dbg !820
  store i32 %"181", i32* @"'s", align 4, !dbg !820
  br label %FloppyPnp_bb75, !dbg !821

FloppyPnp_bb74:                                   ; preds = %FloppyPnp_bb73
  call void (...)* @__VERIFIER_error() #6, !dbg !822
  unreachable, !dbg !822

FloppyPnp_bb75:                                   ; preds = %FloppyPnp_stubMoreProcessingRequired.exit.i30, %FloppyPnp_bb72
  %"182" = call i32 @__VERIFIER_nondet_int() #5, !dbg !824
  call void @llvm.dbg.value(metadata !{i32 %"182"}, i64 0, metadata !825) #5, !dbg !826
  %"183" = icmp eq i32 %"182", 0, !dbg !827
  br i1 %"183", label %FloppyPnp_bb77, label %FloppyPnp_bb76, !dbg !827

FloppyPnp_bb76:                                   ; preds = %FloppyPnp_bb75
  %"184" = call i32 @__VERIFIER_nondet_int() #5, !dbg !828
  call void @llvm.dbg.value(metadata !{i32 %"184"}, i64 0, metadata !829) #5, !dbg !830
  %"185" = icmp eq i32 %"184", 1, !dbg !831
  call void @llvm.dbg.value(metadata !463, i64 0, metadata !832) #5, !dbg !833
  %..i31 = select i1 %"185", i32 -1073741823, i32 259, !dbg !831
  br label %FloppyPnp_bb77, !dbg !831

FloppyPnp_bb77:                                   ; preds = %FloppyPnp_bb76, %FloppyPnp_bb75
  %returnVal2.0.i32 = phi i32 [ 0, %FloppyPnp_bb75 ], [ %..i31, %FloppyPnp_bb76 ], !dbg !788
  %"186" = load i32* @"'s", align 4, !dbg !834
  %"187" = load i32* @"'NP", align 4, !dbg !834
  %"188" = icmp eq i32 %"186", %"187", !dbg !834
  br i1 %"188", label %FloppyPnp_bb78, label %FloppyPnp_bb79, !dbg !834

FloppyPnp_bb78:                                   ; preds = %FloppyPnp_bb77
  %"189" = load i32* @"'IPC", align 4, !dbg !835
  store i32 %"189", i32* @"'s", align 4, !dbg !835
  store i32 %returnVal2.0.i32, i32* @"'lowerDriverReturn", align 4, !dbg !836
  br label %FloppyPnp_IofCallDriver.exit33, !dbg !837

FloppyPnp_bb79:                                   ; preds = %FloppyPnp_bb77
  %"190" = load i32* @"'s", align 4, !dbg !838
  %"191" = load i32* @"'MPR1", align 4, !dbg !838
  %"192" = icmp eq i32 %"190", %"191", !dbg !838
  br i1 %"192", label %FloppyPnp_bb80, label %FloppyPnp_bb83, !dbg !838

FloppyPnp_bb80:                                   ; preds = %FloppyPnp_bb79
  %"193" = icmp eq i32 %returnVal2.0.i32, 259, !dbg !839
  br i1 %"193", label %FloppyPnp_bb81, label %FloppyPnp_bb82, !dbg !839

FloppyPnp_bb81:                                   ; preds = %FloppyPnp_bb80
  %"194" = load i32* @"'MPR3", align 4, !dbg !840
  store i32 %"194", i32* @"'s", align 4, !dbg !840
  store i32 %returnVal2.0.i32, i32* @"'lowerDriverReturn", align 4, !dbg !841
  br label %FloppyPnp_IofCallDriver.exit33, !dbg !842

FloppyPnp_bb82:                                   ; preds = %FloppyPnp_bb80
  %"195" = load i32* @"'NP", align 4, !dbg !843
  store i32 %"195", i32* @"'s", align 4, !dbg !843
  store i32 %returnVal2.0.i32, i32* @"'lowerDriverReturn", align 4, !dbg !844
  br label %FloppyPnp_IofCallDriver.exit33, !dbg !788

FloppyPnp_bb83:                                   ; preds = %FloppyPnp_bb79
  %"196" = load i32* @"'s", align 4, !dbg !845
  %"197" = load i32* @"'SKIP1", align 4, !dbg !845
  %"198" = icmp eq i32 %"196", %"197", !dbg !845
  br i1 %"198", label %FloppyPnp_bb84, label %FloppyPnp_bb88, !dbg !845

FloppyPnp_bb84:                                   ; preds = %FloppyPnp_bb83
  %"199" = load i32* @"'SKIP2", align 4, !dbg !846
  store i32 %"199", i32* @"'s", align 4, !dbg !846
  store i32 %returnVal2.0.i32, i32* @"'lowerDriverReturn", align 4, !dbg !847
  br label %FloppyPnp_IofCallDriver.exit33, !dbg !788

FloppyPnp_IofCallDriver.exit33:                   ; preds = %FloppyPnp_bb78, %FloppyPnp_bb81, %FloppyPnp_bb82, %FloppyPnp_bb84
  call void @llvm.dbg.value(metadata !{i32 %returnVal2.0.i32}, i64 0, metadata !262), !dbg !263
  %"200" = icmp ne i32 %"29", 0, !dbg !848
  br i1 %"200", label %FloppyPnp_bb85, label %FloppyPnp_bb86, !dbg !848

FloppyPnp_bb85:                                   ; preds = %FloppyPnp_IofCallDriver.exit33
  call void @llvm.dbg.value(metadata !{i32 %"30"}, i64 0, metadata !850) #5, !dbg !854
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !855) #5, !dbg !856
  %"201" = call i32 @__VERIFIER_nondet_int() #5, !dbg !857
  call void @llvm.dbg.value(metadata !{i32 %"201"}, i64 0, metadata !858) #5, !dbg !859
  br label %FloppyPnp_bb86, !dbg !860

FloppyPnp_bb86:                                   ; preds = %FloppyPnp_bb85, %FloppyPnp_IofCallDriver.exit33
  %"202" = icmp ne i32 %"31", 0, !dbg !861
  br i1 %"202", label %FloppyPnp_bb87, label %FloppyPnp_IofCallDriver.exit40, !dbg !861

FloppyPnp_bb87:                                   ; preds = %FloppyPnp_bb86
  call void @llvm.dbg.value(metadata !{i32 %"32"}, i64 0, metadata !863) #5, !dbg !867
  %"203" = call i32 @__VERIFIER_nondet_int() #5, !dbg !868
  call void @llvm.dbg.value(metadata !{i32 %"203"}, i64 0, metadata !870) #5, !dbg !871
  br label %FloppyPnp_IofCallDriver.exit40, !dbg !872

FloppyPnp_bb88:                                   ; preds = %FloppyPnp_bb83
  call void (...)* @__VERIFIER_error() #6, !dbg !873
  unreachable, !dbg !873

FloppyPnp_bb89:                                   ; preds = %FloppyPnp_bb71
  call void (...)* @__VERIFIER_error() #6, !dbg !875
  unreachable, !dbg !875

FloppyPnp_NodeBlock49:                            ; preds = %FloppyPnp_NodeBlock51
  %Pivot50 = icmp slt i32 %"33", 5
  br i1 %Pivot50, label %FloppyPnp_NodeBlock43, label %FloppyPnp_NodeBlock47

FloppyPnp_NodeBlock43:                            ; preds = %FloppyPnp_NodeBlock49
  %Pivot44 = icmp slt i32 %"33", 4
  br i1 %Pivot44, label %FloppyPnp_bb155, label %FloppyPnp_bb90

FloppyPnp_bb90:                                   ; preds = %FloppyPnp_NodeBlock43
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !233), !dbg !234
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !275), !dbg !276
  store i32 0, i32* @"'myStatus", align 4, !dbg !879
  %"204" = load i32* @"'s", align 4, !dbg !880
  %"205" = load i32* @"'NP", align 4, !dbg !880
  %"206" = icmp eq i32 %"204", %"205", !dbg !880
  br i1 %"206", label %FloppyPnp_bb91, label %FloppyPnp_bb105, !dbg !880

FloppyPnp_bb91:                                   ; preds = %FloppyPnp_bb90
  %"207" = load i32* @"'SKIP1", align 4, !dbg !882
  store i32 %"207", i32* @"'s", align 4, !dbg !882
  call void @llvm.dbg.value(metadata !{i32 %"27"}, i64 0, metadata !884) #5, !dbg !887
  call void @llvm.dbg.value(metadata !{i32 %Irp}, i64 0, metadata !888) #5, !dbg !889
  %"208" = call i32 @__VERIFIER_nondet_int() #5, !dbg !890
  call void @llvm.dbg.value(metadata !{i32 %"208"}, i64 0, metadata !891) #5, !dbg !892
  %"209" = load i32* @"'compRegistered", align 4, !dbg !893
  %"210" = icmp ne i32 %"209", 0, !dbg !893
  br i1 %"210", label %FloppyPnp_bb92, label %FloppyPnp_bb94, !dbg !893

FloppyPnp_bb92:                                   ; preds = %FloppyPnp_bb91
  call void @llvm.dbg.value(metadata !{i32 %"27"}, i64 0, metadata !894) #5, !dbg !896
  call void @llvm.dbg.value(metadata !{i32 %Irp}, i64 0, metadata !897) #5, !dbg !898
  call void @llvm.dbg.value(metadata !{i32 %"208"}, i64 0, metadata !899) #5, !dbg !900
  call void @llvm.dbg.value(metadata !{i32 %"208"}, i64 0, metadata !901) #5, !dbg !903
  call void @llvm.dbg.value(metadata !420, i64 0, metadata !904) #5, !dbg !905
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !906) #5, !dbg !907
  %"211" = call i32 @__VERIFIER_nondet_int() #5, !dbg !908
  call void @llvm.dbg.value(metadata !{i32 %"211"}, i64 0, metadata !909) #5, !dbg !910
  store i32 1, i32* @"'setEventCalled", align 4, !dbg !911
  call void @llvm.dbg.value(metadata !430, i64 0, metadata !912) #5, !dbg !913
  call void @llvm.dbg.value(metadata !433, i64 0, metadata !914) #5, !dbg !915
  %"212" = load i32* @"'s", align 4, !dbg !916
  %"213" = load i32* @"'NP", align 4, !dbg !916
  %"214" = icmp eq i32 %"212", %"213", !dbg !916
  br i1 %"214", label %FloppyPnp_stubMoreProcessingRequired.exit.i25, label %FloppyPnp_bb93, !dbg !916

FloppyPnp_stubMoreProcessingRequired.exit.i25:    ; preds = %FloppyPnp_bb92
  %"215" = load i32* @"'MPR1", align 4, !dbg !918
  store i32 %"215", i32* @"'s", align 4, !dbg !918
  br label %FloppyPnp_bb94, !dbg !919

FloppyPnp_bb93:                                   ; preds = %FloppyPnp_bb92
  call void (...)* @__VERIFIER_error() #6, !dbg !920
  unreachable, !dbg !920

FloppyPnp_bb94:                                   ; preds = %FloppyPnp_stubMoreProcessingRequired.exit.i25, %FloppyPnp_bb91
  %"216" = call i32 @__VERIFIER_nondet_int() #5, !dbg !922
  call void @llvm.dbg.value(metadata !{i32 %"216"}, i64 0, metadata !923) #5, !dbg !924
  %"217" = icmp eq i32 %"216", 0, !dbg !925
  br i1 %"217", label %FloppyPnp_bb96, label %FloppyPnp_bb95, !dbg !925

FloppyPnp_bb95:                                   ; preds = %FloppyPnp_bb94
  %"218" = call i32 @__VERIFIER_nondet_int() #5, !dbg !926
  call void @llvm.dbg.value(metadata !{i32 %"218"}, i64 0, metadata !927) #5, !dbg !928
  %"219" = icmp eq i32 %"218", 1, !dbg !929
  call void @llvm.dbg.value(metadata !463, i64 0, metadata !930) #5, !dbg !931
  %..i26 = select i1 %"219", i32 -1073741823, i32 259, !dbg !929
  br label %FloppyPnp_bb96, !dbg !929

FloppyPnp_bb96:                                   ; preds = %FloppyPnp_bb95, %FloppyPnp_bb94
  %returnVal2.0.i27 = phi i32 [ 0, %FloppyPnp_bb94 ], [ %..i26, %FloppyPnp_bb95 ], !dbg !885
  %"220" = load i32* @"'s", align 4, !dbg !932
  %"221" = load i32* @"'NP", align 4, !dbg !932
  %"222" = icmp eq i32 %"220", %"221", !dbg !932
  br i1 %"222", label %FloppyPnp_bb97, label %FloppyPnp_bb98, !dbg !932

FloppyPnp_bb97:                                   ; preds = %FloppyPnp_bb96
  %"223" = load i32* @"'IPC", align 4, !dbg !933
  store i32 %"223", i32* @"'s", align 4, !dbg !933
  store i32 %returnVal2.0.i27, i32* @"'lowerDriverReturn", align 4, !dbg !934
  br label %FloppyPnp_IofCallDriver.exit40, !dbg !935

FloppyPnp_bb98:                                   ; preds = %FloppyPnp_bb96
  %"224" = load i32* @"'s", align 4, !dbg !936
  %"225" = load i32* @"'MPR1", align 4, !dbg !936
  %"226" = icmp eq i32 %"224", %"225", !dbg !936
  br i1 %"226", label %FloppyPnp_bb99, label %FloppyPnp_bb102, !dbg !936

FloppyPnp_bb99:                                   ; preds = %FloppyPnp_bb98
  %"227" = icmp eq i32 %returnVal2.0.i27, 259, !dbg !937
  br i1 %"227", label %FloppyPnp_bb100, label %FloppyPnp_bb101, !dbg !937

FloppyPnp_bb100:                                  ; preds = %FloppyPnp_bb99
  %"228" = load i32* @"'MPR3", align 4, !dbg !938
  store i32 %"228", i32* @"'s", align 4, !dbg !938
  store i32 %returnVal2.0.i27, i32* @"'lowerDriverReturn", align 4, !dbg !939
  br label %FloppyPnp_IofCallDriver.exit40, !dbg !940

FloppyPnp_bb101:                                  ; preds = %FloppyPnp_bb99
  %"229" = load i32* @"'NP", align 4, !dbg !941
  store i32 %"229", i32* @"'s", align 4, !dbg !941
  store i32 %returnVal2.0.i27, i32* @"'lowerDriverReturn", align 4, !dbg !942
  br label %FloppyPnp_IofCallDriver.exit40, !dbg !885

FloppyPnp_bb102:                                  ; preds = %FloppyPnp_bb98
  %"230" = load i32* @"'s", align 4, !dbg !943
  %"231" = load i32* @"'SKIP1", align 4, !dbg !943
  %"232" = icmp eq i32 %"230", %"231", !dbg !943
  br i1 %"232", label %FloppyPnp_bb103, label %FloppyPnp_bb104, !dbg !943

FloppyPnp_bb103:                                  ; preds = %FloppyPnp_bb102
  %"233" = load i32* @"'SKIP2", align 4, !dbg !944
  store i32 %"233", i32* @"'s", align 4, !dbg !944
  store i32 %returnVal2.0.i27, i32* @"'lowerDriverReturn", align 4, !dbg !945
  br label %FloppyPnp_IofCallDriver.exit40, !dbg !885

FloppyPnp_bb104:                                  ; preds = %FloppyPnp_bb102
  call void (...)* @__VERIFIER_error() #6, !dbg !946
  unreachable, !dbg !946

FloppyPnp_bb105:                                  ; preds = %FloppyPnp_bb90
  call void (...)* @__VERIFIER_error() #6, !dbg !948
  unreachable, !dbg !948

FloppyPnp_NodeBlock47:                            ; preds = %FloppyPnp_NodeBlock49
  %Pivot48 = icmp slt i32 %"33", 6
  br i1 %Pivot48, label %FloppyPnp_bb106, label %FloppyPnp_LeafBlock45

FloppyPnp_bb106:                                  ; preds = %FloppyPnp_NodeBlock47, %FloppyPnp_NodeBlock
  %"234" = icmp ne i32 %"26", 0, !dbg !952
  br i1 %"234", label %FloppyPnp_bb107, label %FloppyPnp_bb139, !dbg !952

FloppyPnp_bb107:                                  ; preds = %FloppyPnp_bb106
  call void @llvm.dbg.value(metadata !420, i64 0, metadata !779), !dbg !780
  call void @llvm.dbg.value(metadata !{i32 %Irp}, i64 0, metadata !954) #5, !dbg !957
  call void @llvm.dbg.value(metadata !{i32 %"22"}, i64 0, metadata !958) #5, !dbg !959
  %"235" = call i32 @__VERIFIER_nondet_int() #5, !dbg !960
  call void @llvm.dbg.value(metadata !{i32 %"235"}, i64 0, metadata !961) #5, !dbg !962
  %"236" = call i32 @__VERIFIER_nondet_int() #5, !dbg !963
  call void @llvm.dbg.value(metadata !{i32 %"236"}, i64 0, metadata !964) #5, !dbg !965
  %"237" = call i32 @__VERIFIER_nondet_int() #5, !dbg !966
  call void @llvm.dbg.value(metadata !{i32 %"237"}, i64 0, metadata !967) #5, !dbg !968
  %"238" = call i32 @__VERIFIER_nondet_int() #5, !dbg !969
  call void @llvm.dbg.value(metadata !{i32 %"238"}, i64 0, metadata !970) #5, !dbg !971
  %"239" = call i32 @__VERIFIER_nondet_int() #5, !dbg !972
  call void @llvm.dbg.value(metadata !{i32 %"239"}, i64 0, metadata !973) #5, !dbg !974
  %"240" = icmp eq i32 %"236", 1, !dbg !975
  br i1 %"240", label %FloppyPnp_bb108, label %FloppyPnp_bb109, !dbg !975

FloppyPnp_bb108:                                  ; preds = %FloppyPnp_bb107
  store i32 -1073741101, i32* @"'myStatus", align 4, !dbg !976
  call void @llvm.dbg.value(metadata !136, i64 0, metadata !977) #5, !dbg !978
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !979) #5, !dbg !980
  br label %FloppyPnp_FlQueueIrpToThread.exit, !dbg !981

FloppyPnp_bb109:                                  ; preds = %FloppyPnp_bb107
  %"241" = add nsw i32 %"237", 1, !dbg !982
  call void @llvm.dbg.value(metadata !{i32 %"241"}, i64 0, metadata !967) #5, !dbg !968
  %"242" = icmp eq i32 %"241", 0, !dbg !983
  br i1 %"242", label %FloppyPnp_bb110, label %FloppyPnp_bb113, !dbg !983

FloppyPnp_bb110:                                  ; preds = %FloppyPnp_bb109
  %"243" = load i32* @"'PagingReferenceCount", align 4, !dbg !984
  %"244" = add nsw i32 %"243", 1, !dbg !984
  store i32 %"244", i32* @"'PagingReferenceCount", align 4, !dbg !984
  call void @llvm.dbg.value(metadata !{i32 %"235"}, i64 0, metadata !985) #5, !dbg !987
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !988) #5, !dbg !989
  call void @llvm.dbg.value(metadata !{i32 %"239"}, i64 0, metadata !990) #5, !dbg !991
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !992) #5, !dbg !993
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !994) #5, !dbg !995
  call void @llvm.dbg.value(metadata !{i32 %"22"}, i64 0, metadata !996) #5, !dbg !997
  %"245" = call i32 @__VERIFIER_nondet_int() #5, !dbg !998
  call void @llvm.dbg.value(metadata !{i32 %"245"}, i64 0, metadata !999) #5, !dbg !1000
  %"246" = icmp eq i32 %"245", 0, !dbg !1001
  %.0.i.i = select i1 %"246", i32 0, i32 -1073741823, !dbg !1001
  call void @llvm.dbg.value(metadata !{i32 %.0.i.i}, i64 0, metadata !1002) #5, !dbg !1003
  %"247" = icmp slt i32 %.0.i.i, 0, !dbg !1004
  br i1 %"247", label %FloppyPnp_bb111, label %FloppyPnp_bb112, !dbg !1004

FloppyPnp_bb111:                                  ; preds = %FloppyPnp_bb110
  call void @llvm.dbg.value(metadata !173, i64 0, metadata !967) #5, !dbg !968
  %"248" = load i32* @"'PagingReferenceCount", align 4, !dbg !1005
  %"249" = add nsw i32 %"248", -1, !dbg !1005
  store i32 %"249", i32* @"'PagingReferenceCount", align 4, !dbg !1005
  br label %FloppyPnp_FlQueueIrpToThread.exit, !dbg !1006

FloppyPnp_bb112:                                  ; preds = %FloppyPnp_bb110
  call void @llvm.dbg.value(metadata !{i32 %"235"}, i64 0, metadata !1007) #5, !dbg !1009
  call void @llvm.dbg.value(metadata !181, i64 0, metadata !1010) #5, !dbg !1011
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !1012) #5, !dbg !1013
  call void @llvm.dbg.value(metadata !{i32 %"238"}, i64 0, metadata !1014) #5, !dbg !1015
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !1016) #5, !dbg !1017
  %"250" = call i32 @__VERIFIER_nondet_int() #5, !dbg !1018
  call void @llvm.dbg.value(metadata !{i32 %"250"}, i64 0, metadata !1019) #5, !dbg !1020
  %"251" = icmp eq i32 %"250", 0, !dbg !1021
  %.0.i1.i = select i1 %"251", i32 0, i32 -1073741823, !dbg !1021
  call void @llvm.dbg.value(metadata !{i32 %.0.i1.i}, i64 0, metadata !1002) #5, !dbg !1003
  call void @llvm.dbg.value(metadata !{i32 %"235"}, i64 0, metadata !1022) #5, !dbg !1024
  %"252" = call i32 @__VERIFIER_nondet_int() #5, !dbg !1025
  call void @llvm.dbg.value(metadata !{i32 %"252"}, i64 0, metadata !1026) #5, !dbg !1027
  %"253" = icmp slt i32 %.0.i1.i, 0, !dbg !1028
  br i1 %"253", label %FloppyPnp_FlQueueIrpToThread.exit, label %FloppyPnp_bb113, !dbg !1028

FloppyPnp_bb113:                                  ; preds = %FloppyPnp_bb112, %FloppyPnp_bb109
  %"254" = load i32* @"'pended", align 4, !dbg !1029
  %"255" = icmp eq i32 %"254", 0, !dbg !1029
  br i1 %"255", label %FloppyPnp_bb114, label %FloppyPnp_bb138, !dbg !1029

FloppyPnp_bb114:                                  ; preds = %FloppyPnp_bb113
  store i32 1, i32* @"'pended", align 4, !dbg !1030
  br label %FloppyPnp_FlQueueIrpToThread.exit, !dbg !1031

FloppyPnp_FlQueueIrpToThread.exit:                ; preds = %FloppyPnp_bb108, %FloppyPnp_bb111, %FloppyPnp_bb112, %FloppyPnp_bb114
  %.0.i = phi i32 [ -1073741101, %FloppyPnp_bb108 ], [ %.0.i.i, %FloppyPnp_bb111 ], [ 259, %FloppyPnp_bb114 ], [ %.0.i1.i, %FloppyPnp_bb112 ], !dbg !955
  call void @llvm.dbg.value(metadata !{i32 %.0.i}, i64 0, metadata !262), !dbg !263
  %"256" = sext i32 %.0.i to i64, !dbg !1032
  call void @llvm.dbg.value(metadata !{i64 %"256"}, i64 0, metadata !1034), !dbg !1035
  %"257" = icmp eq i64 %"256", 259, !dbg !1036
  br i1 %"257", label %FloppyPnp_bb115, label %FloppyPnp_bb136, !dbg !1036

FloppyPnp_bb115:                                  ; preds = %FloppyPnp_FlQueueIrpToThread.exit
  call void @llvm.dbg.value(metadata !{i32 %"28"}, i64 0, metadata !1038) #5, !dbg !1042
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !1043) #5, !dbg !1044
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !1045) #5, !dbg !1046
  %"258" = load i32* @"'s", align 4, !dbg !1047
  %"259" = load i32* @"'MPR3", align 4, !dbg !1047
  %"260" = icmp eq i32 %"258", %"259", !dbg !1047
  %"261" = load i32* @"'setEventCalled", align 4, !dbg !1039
  %"262" = icmp eq i32 %"261", 1, !dbg !1048
  %or.cond.i1 = and i1 %"260", %"262", !dbg !1047
  br i1 %or.cond.i1, label %FloppyPnp_bb116, label %FloppyPnp_bb117, !dbg !1047

FloppyPnp_bb116:                                  ; preds = %FloppyPnp_bb115
  %"263" = load i32* @"'NP", align 4, !dbg !1049
  store i32 %"263", i32* @"'s", align 4, !dbg !1049
  store i32 0, i32* @"'setEventCalled", align 4, !dbg !1050
  br label %FloppyPnp_KeWaitForSingleObject.exit, !dbg !1051

FloppyPnp_bb117:                                  ; preds = %FloppyPnp_bb115
  %"264" = load i32* @"'customIrp", align 4, !dbg !1052
  %"265" = icmp eq i32 %"264", 1, !dbg !1052
  br i1 %"265", label %FloppyPnp_bb118, label %FloppyPnp_bb119, !dbg !1052

FloppyPnp_bb118:                                  ; preds = %FloppyPnp_bb117
  %"266" = load i32* @"'NP", align 4, !dbg !1053
  store i32 %"266", i32* @"'s", align 4, !dbg !1053
  store i32 0, i32* @"'customIrp", align 4, !dbg !1054
  br label %FloppyPnp_KeWaitForSingleObject.exit, !dbg !1055

FloppyPnp_bb119:                                  ; preds = %FloppyPnp_bb117
  %"267" = load i32* @"'s", align 4, !dbg !1056
  %"268" = load i32* @"'MPR3", align 4, !dbg !1056
  %"269" = icmp eq i32 %"267", %"268", !dbg !1056
  br i1 %"269", label %FloppyPnp_bb120, label %FloppyPnp_KeWaitForSingleObject.exit, !dbg !1056

FloppyPnp_bb120:                                  ; preds = %FloppyPnp_bb119
  call void (...)* @__VERIFIER_error() #6, !dbg !1057
  unreachable, !dbg !1057

FloppyPnp_KeWaitForSingleObject.exit:             ; preds = %FloppyPnp_bb116, %FloppyPnp_bb118, %FloppyPnp_bb119
  %"270" = call i32 @__VERIFIER_nondet_int() #5, !dbg !1059
  call void @llvm.dbg.value(metadata !{i32 %"270"}, i64 0, metadata !1060) #5, !dbg !1061
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !239), !dbg !240
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !275), !dbg !276
  store i32 0, i32* @"'myStatus", align 4, !dbg !1062
  %"271" = load i32* @"'s", align 4, !dbg !1063
  %"272" = load i32* @"'NP", align 4, !dbg !1063
  %"273" = icmp eq i32 %"271", %"272", !dbg !1063
  br i1 %"273", label %FloppyPnp_bb121, label %FloppyPnp_bb135, !dbg !1063

FloppyPnp_bb121:                                  ; preds = %FloppyPnp_KeWaitForSingleObject.exit
  %"274" = load i32* @"'SKIP1", align 4, !dbg !1065
  store i32 %"274", i32* @"'s", align 4, !dbg !1065
  call void @llvm.dbg.value(metadata !{i32 %"27"}, i64 0, metadata !1067) #5, !dbg !1070
  call void @llvm.dbg.value(metadata !{i32 %Irp}, i64 0, metadata !1071) #5, !dbg !1072
  %"275" = call i32 @__VERIFIER_nondet_int() #5, !dbg !1073
  call void @llvm.dbg.value(metadata !{i32 %"275"}, i64 0, metadata !1074) #5, !dbg !1075
  %"276" = load i32* @"'compRegistered", align 4, !dbg !1076
  %"277" = icmp ne i32 %"276", 0, !dbg !1076
  br i1 %"277", label %FloppyPnp_bb122, label %FloppyPnp_bb124, !dbg !1076

FloppyPnp_bb122:                                  ; preds = %FloppyPnp_bb121
  call void @llvm.dbg.value(metadata !{i32 %"27"}, i64 0, metadata !1077) #5, !dbg !1079
  call void @llvm.dbg.value(metadata !{i32 %Irp}, i64 0, metadata !1080) #5, !dbg !1081
  call void @llvm.dbg.value(metadata !{i32 %"275"}, i64 0, metadata !1082) #5, !dbg !1083
  call void @llvm.dbg.value(metadata !{i32 %"275"}, i64 0, metadata !1084) #5, !dbg !1086
  call void @llvm.dbg.value(metadata !420, i64 0, metadata !1087) #5, !dbg !1088
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !1089) #5, !dbg !1090
  %"278" = call i32 @__VERIFIER_nondet_int() #5, !dbg !1091
  call void @llvm.dbg.value(metadata !{i32 %"278"}, i64 0, metadata !1092) #5, !dbg !1093
  store i32 1, i32* @"'setEventCalled", align 4, !dbg !1094
  call void @llvm.dbg.value(metadata !430, i64 0, metadata !1095) #5, !dbg !1096
  call void @llvm.dbg.value(metadata !433, i64 0, metadata !1097) #5, !dbg !1098
  %"279" = load i32* @"'s", align 4, !dbg !1099
  %"280" = load i32* @"'NP", align 4, !dbg !1099
  %"281" = icmp eq i32 %"279", %"280", !dbg !1099
  br i1 %"281", label %FloppyPnp_stubMoreProcessingRequired.exit.i4, label %FloppyPnp_bb123, !dbg !1099

FloppyPnp_stubMoreProcessingRequired.exit.i4:     ; preds = %FloppyPnp_bb122
  %"282" = load i32* @"'MPR1", align 4, !dbg !1101
  store i32 %"282", i32* @"'s", align 4, !dbg !1101
  br label %FloppyPnp_bb124, !dbg !1102

FloppyPnp_bb123:                                  ; preds = %FloppyPnp_bb122
  call void (...)* @__VERIFIER_error() #6, !dbg !1103
  unreachable, !dbg !1103

FloppyPnp_bb124:                                  ; preds = %FloppyPnp_stubMoreProcessingRequired.exit.i4, %FloppyPnp_bb121
  %"283" = call i32 @__VERIFIER_nondet_int() #5, !dbg !1105
  call void @llvm.dbg.value(metadata !{i32 %"283"}, i64 0, metadata !1106) #5, !dbg !1107
  %"284" = icmp eq i32 %"283", 0, !dbg !1108
  br i1 %"284", label %FloppyPnp_bb126, label %FloppyPnp_bb125, !dbg !1108

FloppyPnp_bb125:                                  ; preds = %FloppyPnp_bb124
  %"285" = call i32 @__VERIFIER_nondet_int() #5, !dbg !1109
  call void @llvm.dbg.value(metadata !{i32 %"285"}, i64 0, metadata !1110) #5, !dbg !1111
  %"286" = icmp eq i32 %"285", 1, !dbg !1112
  call void @llvm.dbg.value(metadata !463, i64 0, metadata !1113) #5, !dbg !1114
  %..i5 = select i1 %"286", i32 -1073741823, i32 259, !dbg !1112
  br label %FloppyPnp_bb126, !dbg !1112

FloppyPnp_bb126:                                  ; preds = %FloppyPnp_bb125, %FloppyPnp_bb124
  %returnVal2.0.i6 = phi i32 [ 0, %FloppyPnp_bb124 ], [ %..i5, %FloppyPnp_bb125 ], !dbg !1068
  %"287" = load i32* @"'s", align 4, !dbg !1115
  %"288" = load i32* @"'NP", align 4, !dbg !1115
  %"289" = icmp eq i32 %"287", %"288", !dbg !1115
  br i1 %"289", label %FloppyPnp_bb127, label %FloppyPnp_bb128, !dbg !1115

FloppyPnp_bb127:                                  ; preds = %FloppyPnp_bb126
  %"290" = load i32* @"'IPC", align 4, !dbg !1116
  store i32 %"290", i32* @"'s", align 4, !dbg !1116
  store i32 %returnVal2.0.i6, i32* @"'lowerDriverReturn", align 4, !dbg !1117
  br label %FloppyPnp_IofCallDriver.exit40, !dbg !1118

FloppyPnp_bb128:                                  ; preds = %FloppyPnp_bb126
  %"291" = load i32* @"'s", align 4, !dbg !1119
  %"292" = load i32* @"'MPR1", align 4, !dbg !1119
  %"293" = icmp eq i32 %"291", %"292", !dbg !1119
  br i1 %"293", label %FloppyPnp_bb129, label %FloppyPnp_bb132, !dbg !1119

FloppyPnp_bb129:                                  ; preds = %FloppyPnp_bb128
  %"294" = icmp eq i32 %returnVal2.0.i6, 259, !dbg !1120
  br i1 %"294", label %FloppyPnp_bb130, label %FloppyPnp_bb131, !dbg !1120

FloppyPnp_bb130:                                  ; preds = %FloppyPnp_bb129
  %"295" = load i32* @"'MPR3", align 4, !dbg !1121
  store i32 %"295", i32* @"'s", align 4, !dbg !1121
  store i32 %returnVal2.0.i6, i32* @"'lowerDriverReturn", align 4, !dbg !1122
  br label %FloppyPnp_IofCallDriver.exit40, !dbg !1123

FloppyPnp_bb131:                                  ; preds = %FloppyPnp_bb129
  %"296" = load i32* @"'NP", align 4, !dbg !1124
  store i32 %"296", i32* @"'s", align 4, !dbg !1124
  store i32 %returnVal2.0.i6, i32* @"'lowerDriverReturn", align 4, !dbg !1125
  br label %FloppyPnp_IofCallDriver.exit40, !dbg !1068

FloppyPnp_bb132:                                  ; preds = %FloppyPnp_bb128
  %"297" = load i32* @"'s", align 4, !dbg !1126
  %"298" = load i32* @"'SKIP1", align 4, !dbg !1126
  %"299" = icmp eq i32 %"297", %"298", !dbg !1126
  br i1 %"299", label %FloppyPnp_bb133, label %FloppyPnp_bb134, !dbg !1126

FloppyPnp_bb133:                                  ; preds = %FloppyPnp_bb132
  %"300" = load i32* @"'SKIP2", align 4, !dbg !1127
  store i32 %"300", i32* @"'s", align 4, !dbg !1127
  store i32 %returnVal2.0.i6, i32* @"'lowerDriverReturn", align 4, !dbg !1128
  br label %FloppyPnp_IofCallDriver.exit40, !dbg !1068

FloppyPnp_bb134:                                  ; preds = %FloppyPnp_bb132
  call void (...)* @__VERIFIER_error() #6, !dbg !1129
  unreachable, !dbg !1129

FloppyPnp_bb135:                                  ; preds = %FloppyPnp_KeWaitForSingleObject.exit
  call void (...)* @__VERIFIER_error() #6, !dbg !1131
  unreachable, !dbg !1131

FloppyPnp_bb136:                                  ; preds = %FloppyPnp_FlQueueIrpToThread.exit
  call void @llvm.dbg.value(metadata !1135, i64 0, metadata !262), !dbg !263
  call void @llvm.dbg.value(metadata !1135, i64 0, metadata !275), !dbg !276
  store i32 -1073741823, i32* @"'myStatus", align 4, !dbg !1136
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !272), !dbg !273
  call void @llvm.dbg.value(metadata !{i32 %Irp}, i64 0, metadata !1139) #5, !dbg !1141
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !1142) #5, !dbg !1143
  %"301" = load i32* @"'s", align 4, !dbg !1144
  %"302" = load i32* @"'NP", align 4, !dbg !1144
  %"303" = icmp eq i32 %"301", %"302", !dbg !1144
  br i1 %"303", label %FloppyPnp_IofCompleteRequest.exit8, label %FloppyPnp_bb137, !dbg !1144

FloppyPnp_IofCompleteRequest.exit8:               ; preds = %FloppyPnp_bb136
  %"304" = load i32* @"'DC", align 4, !dbg !1145
  store i32 %"304", i32* @"'s", align 4, !dbg !1145
  br label %FloppyPnp_IofCallDriver.exit40

FloppyPnp_bb137:                                  ; preds = %FloppyPnp_bb136
  call void (...)* @__VERIFIER_error() #6, !dbg !1146
  unreachable, !dbg !1146

FloppyPnp_bb138:                                  ; preds = %FloppyPnp_bb113
  call void (...)* @__VERIFIER_error() #6, !dbg !1148
  unreachable, !dbg !1148

FloppyPnp_bb139:                                  ; preds = %FloppyPnp_bb106
  %"305" = load i32* @"'s", align 4, !dbg !1150
  %"306" = load i32* @"'NP", align 4, !dbg !1150
  %"307" = icmp eq i32 %"305", %"306", !dbg !1150
  br i1 %"307", label %FloppyPnp_bb140, label %FloppyPnp_bb154, !dbg !1150

FloppyPnp_bb140:                                  ; preds = %FloppyPnp_bb139
  %"308" = load i32* @"'SKIP1", align 4, !dbg !1153
  store i32 %"308", i32* @"'s", align 4, !dbg !1153
  call void @llvm.dbg.value(metadata !{i32 %"27"}, i64 0, metadata !1155) #5, !dbg !1158
  call void @llvm.dbg.value(metadata !{i32 %Irp}, i64 0, metadata !1159) #5, !dbg !1160
  %"309" = call i32 @__VERIFIER_nondet_int() #5, !dbg !1161
  call void @llvm.dbg.value(metadata !{i32 %"309"}, i64 0, metadata !1162) #5, !dbg !1163
  %"310" = load i32* @"'compRegistered", align 4, !dbg !1164
  %"311" = icmp ne i32 %"310", 0, !dbg !1164
  br i1 %"311", label %FloppyPnp_bb141, label %FloppyPnp_bb143, !dbg !1164

FloppyPnp_bb141:                                  ; preds = %FloppyPnp_bb140
  call void @llvm.dbg.value(metadata !{i32 %"27"}, i64 0, metadata !1165) #5, !dbg !1167
  call void @llvm.dbg.value(metadata !{i32 %Irp}, i64 0, metadata !1168) #5, !dbg !1169
  call void @llvm.dbg.value(metadata !{i32 %"309"}, i64 0, metadata !1170) #5, !dbg !1171
  call void @llvm.dbg.value(metadata !{i32 %"309"}, i64 0, metadata !1172) #5, !dbg !1174
  call void @llvm.dbg.value(metadata !420, i64 0, metadata !1175) #5, !dbg !1176
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !1177) #5, !dbg !1178
  %"312" = call i32 @__VERIFIER_nondet_int() #5, !dbg !1179
  call void @llvm.dbg.value(metadata !{i32 %"312"}, i64 0, metadata !1180) #5, !dbg !1181
  store i32 1, i32* @"'setEventCalled", align 4, !dbg !1182
  call void @llvm.dbg.value(metadata !430, i64 0, metadata !1183) #5, !dbg !1184
  call void @llvm.dbg.value(metadata !433, i64 0, metadata !1185) #5, !dbg !1186
  %"313" = load i32* @"'s", align 4, !dbg !1187
  %"314" = load i32* @"'NP", align 4, !dbg !1187
  %"315" = icmp eq i32 %"313", %"314", !dbg !1187
  br i1 %"315", label %FloppyPnp_stubMoreProcessingRequired.exit.i, label %FloppyPnp_bb142, !dbg !1187

FloppyPnp_stubMoreProcessingRequired.exit.i:      ; preds = %FloppyPnp_bb141
  %"316" = load i32* @"'MPR1", align 4, !dbg !1189
  store i32 %"316", i32* @"'s", align 4, !dbg !1189
  br label %FloppyPnp_bb143, !dbg !1190

FloppyPnp_bb142:                                  ; preds = %FloppyPnp_bb141
  call void (...)* @__VERIFIER_error() #6, !dbg !1191
  unreachable, !dbg !1191

FloppyPnp_bb143:                                  ; preds = %FloppyPnp_stubMoreProcessingRequired.exit.i, %FloppyPnp_bb140
  %"317" = call i32 @__VERIFIER_nondet_int() #5, !dbg !1193
  call void @llvm.dbg.value(metadata !{i32 %"317"}, i64 0, metadata !1194) #5, !dbg !1195
  %"318" = icmp eq i32 %"317", 0, !dbg !1196
  br i1 %"318", label %FloppyPnp_bb145, label %FloppyPnp_bb144, !dbg !1196

FloppyPnp_bb144:                                  ; preds = %FloppyPnp_bb143
  %"319" = call i32 @__VERIFIER_nondet_int() #5, !dbg !1197
  call void @llvm.dbg.value(metadata !{i32 %"319"}, i64 0, metadata !1198) #5, !dbg !1199
  %"320" = icmp eq i32 %"319", 1, !dbg !1200
  call void @llvm.dbg.value(metadata !463, i64 0, metadata !1201) #5, !dbg !1202
  %..i = select i1 %"320", i32 -1073741823, i32 259, !dbg !1200
  br label %FloppyPnp_bb145, !dbg !1200

FloppyPnp_bb145:                                  ; preds = %FloppyPnp_bb144, %FloppyPnp_bb143
  %returnVal2.0.i = phi i32 [ 0, %FloppyPnp_bb143 ], [ %..i, %FloppyPnp_bb144 ], !dbg !1156
  %"321" = load i32* @"'s", align 4, !dbg !1203
  %"322" = load i32* @"'NP", align 4, !dbg !1203
  %"323" = icmp eq i32 %"321", %"322", !dbg !1203
  br i1 %"323", label %FloppyPnp_bb146, label %FloppyPnp_bb147, !dbg !1203

FloppyPnp_bb146:                                  ; preds = %FloppyPnp_bb145
  %"324" = load i32* @"'IPC", align 4, !dbg !1204
  store i32 %"324", i32* @"'s", align 4, !dbg !1204
  store i32 %returnVal2.0.i, i32* @"'lowerDriverReturn", align 4, !dbg !1205
  br label %FloppyPnp_IofCallDriver.exit, !dbg !1206

FloppyPnp_bb147:                                  ; preds = %FloppyPnp_bb145
  %"325" = load i32* @"'s", align 4, !dbg !1207
  %"326" = load i32* @"'MPR1", align 4, !dbg !1207
  %"327" = icmp eq i32 %"325", %"326", !dbg !1207
  br i1 %"327", label %FloppyPnp_bb148, label %FloppyPnp_bb151, !dbg !1207

FloppyPnp_bb148:                                  ; preds = %FloppyPnp_bb147
  %"328" = icmp eq i32 %returnVal2.0.i, 259, !dbg !1208
  br i1 %"328", label %FloppyPnp_bb149, label %FloppyPnp_bb150, !dbg !1208

FloppyPnp_bb149:                                  ; preds = %FloppyPnp_bb148
  %"329" = load i32* @"'MPR3", align 4, !dbg !1209
  store i32 %"329", i32* @"'s", align 4, !dbg !1209
  store i32 %returnVal2.0.i, i32* @"'lowerDriverReturn", align 4, !dbg !1210
  br label %FloppyPnp_IofCallDriver.exit, !dbg !1211

FloppyPnp_bb150:                                  ; preds = %FloppyPnp_bb148
  %"330" = load i32* @"'NP", align 4, !dbg !1212
  store i32 %"330", i32* @"'s", align 4, !dbg !1212
  store i32 %returnVal2.0.i, i32* @"'lowerDriverReturn", align 4, !dbg !1213
  br label %FloppyPnp_IofCallDriver.exit, !dbg !1156

FloppyPnp_bb151:                                  ; preds = %FloppyPnp_bb147
  %"331" = load i32* @"'s", align 4, !dbg !1214
  %"332" = load i32* @"'SKIP1", align 4, !dbg !1214
  %"333" = icmp eq i32 %"331", %"332", !dbg !1214
  br i1 %"333", label %FloppyPnp_bb152, label %FloppyPnp_bb153, !dbg !1214

FloppyPnp_bb152:                                  ; preds = %FloppyPnp_bb151
  %"334" = load i32* @"'SKIP2", align 4, !dbg !1215
  store i32 %"334", i32* @"'s", align 4, !dbg !1215
  store i32 %returnVal2.0.i, i32* @"'lowerDriverReturn", align 4, !dbg !1216
  br label %FloppyPnp_IofCallDriver.exit, !dbg !1156

FloppyPnp_bb153:                                  ; preds = %FloppyPnp_bb151
  call void (...)* @__VERIFIER_error() #6, !dbg !1217
  unreachable, !dbg !1217

FloppyPnp_bb154:                                  ; preds = %FloppyPnp_bb139
  call void (...)* @__VERIFIER_error() #6, !dbg !1219
  unreachable, !dbg !1219

FloppyPnp_LeafBlock45:                            ; preds = %FloppyPnp_NodeBlock47
  %SwitchLeaf46 = icmp eq i32 %"33", 6
  br i1 %SwitchLeaf46, label %FloppyPnp_bb155, label %FloppyPnp_NewDefault

FloppyPnp_bb155:                                  ; preds = %FloppyPnp_LeafBlock45, %FloppyPnp_NodeBlock43
  %"335" = icmp ne i32 %"26", 0, !dbg !1223
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !275), !dbg !276
  store i32 0, i32* @"'myStatus", align 4, !dbg !1225
  %"336" = load i32* @"'s", align 4, !dbg !1227
  %"337" = load i32* @"'NP", align 4, !dbg !1227
  br i1 %"335", label %FloppyPnp_bb156, label %FloppyPnp_bb182, !dbg !1223

FloppyPnp_bb156:                                  ; preds = %FloppyPnp_bb155
  call void @llvm.dbg.value(metadata !{i32 %"23"}, i64 0, metadata !1229), !dbg !1230
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !1231), !dbg !1232
  %"338" = icmp ne i32 %"336", %"337", !dbg !1227
  br i1 %"338", label %FloppyPnp_bb157, label %FloppyPnp_bb158, !dbg !1227

FloppyPnp_bb157:                                  ; preds = %FloppyPnp_bb156
  call void (...)* @__VERIFIER_error() #6, !dbg !1233
  unreachable, !dbg !1233

FloppyPnp_bb158:                                  ; preds = %FloppyPnp_bb156
  %"339" = load i32* @"'compRegistered", align 4, !dbg !1237
  %"340" = icmp ne i32 %"339", 0, !dbg !1237
  br i1 %"340", label %FloppyPnp_bb159, label %FloppyPnp_bb160, !dbg !1237

FloppyPnp_bb159:                                  ; preds = %FloppyPnp_bb158
  call void (...)* @__VERIFIER_error() #6, !dbg !1240
  unreachable, !dbg !1240

FloppyPnp_bb160:                                  ; preds = %FloppyPnp_bb158
  store i32 1, i32* @"'compRegistered", align 4, !dbg !1244
  call void @llvm.dbg.value(metadata !{i32 %"35"}, i64 0, metadata !1246), !dbg !1247
  call void @llvm.dbg.value(metadata !391, i64 0, metadata !1248), !dbg !1249
  call void @llvm.dbg.value(metadata !{i32 %"27"}, i64 0, metadata !1250) #5, !dbg !1253
  call void @llvm.dbg.value(metadata !{i32 %Irp}, i64 0, metadata !1254) #5, !dbg !1255
  %"341" = call i32 @__VERIFIER_nondet_int() #5, !dbg !1256
  call void @llvm.dbg.value(metadata !{i32 %"341"}, i64 0, metadata !1257) #5, !dbg !1258
  %"342" = load i32* @"'compRegistered", align 4, !dbg !1259
  %"343" = icmp ne i32 %"342", 0, !dbg !1259
  br i1 %"343", label %FloppyPnp_bb161, label %FloppyPnp_bb163, !dbg !1259

FloppyPnp_bb161:                                  ; preds = %FloppyPnp_bb160
  call void @llvm.dbg.value(metadata !{i32 %"27"}, i64 0, metadata !1260) #5, !dbg !1262
  call void @llvm.dbg.value(metadata !{i32 %Irp}, i64 0, metadata !1263) #5, !dbg !1264
  call void @llvm.dbg.value(metadata !{i32 %"341"}, i64 0, metadata !1265) #5, !dbg !1266
  call void @llvm.dbg.value(metadata !{i32 %"341"}, i64 0, metadata !1267) #5, !dbg !1269
  call void @llvm.dbg.value(metadata !420, i64 0, metadata !1270) #5, !dbg !1271
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !1272) #5, !dbg !1273
  %"344" = call i32 @__VERIFIER_nondet_int() #5, !dbg !1274
  call void @llvm.dbg.value(metadata !{i32 %"344"}, i64 0, metadata !1275) #5, !dbg !1276
  store i32 1, i32* @"'setEventCalled", align 4, !dbg !1277
  call void @llvm.dbg.value(metadata !430, i64 0, metadata !1278) #5, !dbg !1279
  call void @llvm.dbg.value(metadata !433, i64 0, metadata !1280) #5, !dbg !1281
  %"345" = load i32* @"'s", align 4, !dbg !1282
  %"346" = load i32* @"'NP", align 4, !dbg !1282
  %"347" = icmp eq i32 %"345", %"346", !dbg !1282
  br i1 %"347", label %FloppyPnp_stubMoreProcessingRequired.exit.i16, label %FloppyPnp_bb162, !dbg !1282

FloppyPnp_stubMoreProcessingRequired.exit.i16:    ; preds = %FloppyPnp_bb161
  %"348" = load i32* @"'MPR1", align 4, !dbg !1284
  store i32 %"348", i32* @"'s", align 4, !dbg !1284
  br label %FloppyPnp_bb163, !dbg !1285

FloppyPnp_bb162:                                  ; preds = %FloppyPnp_bb161
  call void (...)* @__VERIFIER_error() #6, !dbg !1286
  unreachable, !dbg !1286

FloppyPnp_bb163:                                  ; preds = %FloppyPnp_stubMoreProcessingRequired.exit.i16, %FloppyPnp_bb160
  %"349" = call i32 @__VERIFIER_nondet_int() #5, !dbg !1288
  call void @llvm.dbg.value(metadata !{i32 %"349"}, i64 0, metadata !1289) #5, !dbg !1290
  %"350" = icmp eq i32 %"349", 0, !dbg !1291
  br i1 %"350", label %FloppyPnp_bb165, label %FloppyPnp_bb164, !dbg !1291

FloppyPnp_bb164:                                  ; preds = %FloppyPnp_bb163
  %"351" = call i32 @__VERIFIER_nondet_int() #5, !dbg !1292
  call void @llvm.dbg.value(metadata !{i32 %"351"}, i64 0, metadata !1293) #5, !dbg !1294
  %"352" = icmp eq i32 %"351", 1, !dbg !1295
  call void @llvm.dbg.value(metadata !463, i64 0, metadata !1296) #5, !dbg !1297
  %..i17 = select i1 %"352", i32 -1073741823, i32 259, !dbg !1295
  br label %FloppyPnp_bb165, !dbg !1295

FloppyPnp_bb165:                                  ; preds = %FloppyPnp_bb164, %FloppyPnp_bb163
  %returnVal2.0.i18 = phi i32 [ 0, %FloppyPnp_bb163 ], [ %..i17, %FloppyPnp_bb164 ], !dbg !1251
  %"353" = load i32* @"'s", align 4, !dbg !1298
  %"354" = load i32* @"'NP", align 4, !dbg !1298
  %"355" = icmp eq i32 %"353", %"354", !dbg !1298
  br i1 %"355", label %FloppyPnp_bb166, label %FloppyPnp_bb167, !dbg !1298

FloppyPnp_bb166:                                  ; preds = %FloppyPnp_bb165
  %"356" = load i32* @"'IPC", align 4, !dbg !1299
  store i32 %"356", i32* @"'s", align 4, !dbg !1299
  store i32 %returnVal2.0.i18, i32* @"'lowerDriverReturn", align 4, !dbg !1300
  br label %FloppyPnp_IofCallDriver.exit19, !dbg !1301

FloppyPnp_bb167:                                  ; preds = %FloppyPnp_bb165
  %"357" = load i32* @"'s", align 4, !dbg !1302
  %"358" = load i32* @"'MPR1", align 4, !dbg !1302
  %"359" = icmp eq i32 %"357", %"358", !dbg !1302
  br i1 %"359", label %FloppyPnp_bb168, label %FloppyPnp_bb171, !dbg !1302

FloppyPnp_bb168:                                  ; preds = %FloppyPnp_bb167
  %"360" = icmp eq i32 %returnVal2.0.i18, 259, !dbg !1303
  br i1 %"360", label %FloppyPnp_bb169, label %FloppyPnp_bb170, !dbg !1303

FloppyPnp_bb169:                                  ; preds = %FloppyPnp_bb168
  %"361" = load i32* @"'MPR3", align 4, !dbg !1304
  store i32 %"361", i32* @"'s", align 4, !dbg !1304
  store i32 %returnVal2.0.i18, i32* @"'lowerDriverReturn", align 4, !dbg !1305
  br label %FloppyPnp_IofCallDriver.exit19, !dbg !1306

FloppyPnp_bb170:                                  ; preds = %FloppyPnp_bb168
  %"362" = load i32* @"'NP", align 4, !dbg !1307
  store i32 %"362", i32* @"'s", align 4, !dbg !1307
  store i32 %returnVal2.0.i18, i32* @"'lowerDriverReturn", align 4, !dbg !1308
  br label %FloppyPnp_IofCallDriver.exit19, !dbg !1251

FloppyPnp_bb171:                                  ; preds = %FloppyPnp_bb167
  %"363" = load i32* @"'s", align 4, !dbg !1309
  %"364" = load i32* @"'SKIP1", align 4, !dbg !1309
  %"365" = icmp eq i32 %"363", %"364", !dbg !1309
  br i1 %"365", label %FloppyPnp_bb172, label %FloppyPnp_bb181, !dbg !1309

FloppyPnp_bb172:                                  ; preds = %FloppyPnp_bb171
  %"366" = load i32* @"'SKIP2", align 4, !dbg !1310
  store i32 %"366", i32* @"'s", align 4, !dbg !1310
  store i32 %returnVal2.0.i18, i32* @"'lowerDriverReturn", align 4, !dbg !1311
  br label %FloppyPnp_IofCallDriver.exit19, !dbg !1251

FloppyPnp_IofCallDriver.exit19:                   ; preds = %FloppyPnp_bb166, %FloppyPnp_bb169, %FloppyPnp_bb170, %FloppyPnp_bb172
  call void @llvm.dbg.value(metadata !{i32 %returnVal2.0.i18}, i64 0, metadata !262), !dbg !263
  %"367" = sext i32 %returnVal2.0.i18 to i64, !dbg !1312
  call void @llvm.dbg.value(metadata !{i64 %"367"}, i64 0, metadata !1314), !dbg !1315
  %"368" = icmp eq i64 %"367", 259, !dbg !1316
  br i1 %"368", label %FloppyPnp_bb173, label %FloppyPnp_bb179, !dbg !1316

FloppyPnp_bb173:                                  ; preds = %FloppyPnp_IofCallDriver.exit19
  call void @llvm.dbg.value(metadata !{i32 %"35"}, i64 0, metadata !1318) #5, !dbg !1322
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !1323) #5, !dbg !1324
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !1325) #5, !dbg !1326
  %"369" = load i32* @"'s", align 4, !dbg !1327
  %"370" = load i32* @"'MPR3", align 4, !dbg !1327
  %"371" = icmp eq i32 %"369", %"370", !dbg !1327
  %"372" = load i32* @"'setEventCalled", align 4, !dbg !1319
  %"373" = icmp eq i32 %"372", 1, !dbg !1328
  %or.cond.i20 = and i1 %"371", %"373", !dbg !1327
  br i1 %or.cond.i20, label %FloppyPnp_bb174, label %FloppyPnp_bb175, !dbg !1327

FloppyPnp_bb174:                                  ; preds = %FloppyPnp_bb173
  %"374" = load i32* @"'NP", align 4, !dbg !1329
  store i32 %"374", i32* @"'s", align 4, !dbg !1329
  store i32 0, i32* @"'setEventCalled", align 4, !dbg !1330
  br label %FloppyPnp_KeWaitForSingleObject.exit22, !dbg !1331

FloppyPnp_bb175:                                  ; preds = %FloppyPnp_bb173
  %"375" = load i32* @"'customIrp", align 4, !dbg !1332
  %"376" = icmp eq i32 %"375", 1, !dbg !1332
  br i1 %"376", label %FloppyPnp_bb176, label %FloppyPnp_bb177, !dbg !1332

FloppyPnp_bb176:                                  ; preds = %FloppyPnp_bb175
  %"377" = load i32* @"'NP", align 4, !dbg !1333
  store i32 %"377", i32* @"'s", align 4, !dbg !1333
  store i32 0, i32* @"'customIrp", align 4, !dbg !1334
  br label %FloppyPnp_KeWaitForSingleObject.exit22, !dbg !1335

FloppyPnp_bb177:                                  ; preds = %FloppyPnp_bb175
  %"378" = load i32* @"'s", align 4, !dbg !1336
  %"379" = load i32* @"'MPR3", align 4, !dbg !1336
  %"380" = icmp eq i32 %"378", %"379", !dbg !1336
  br i1 %"380", label %FloppyPnp_bb178, label %FloppyPnp_KeWaitForSingleObject.exit22, !dbg !1336

FloppyPnp_bb178:                                  ; preds = %FloppyPnp_bb177
  call void (...)* @__VERIFIER_error() #6, !dbg !1337
  unreachable, !dbg !1337

FloppyPnp_KeWaitForSingleObject.exit22:           ; preds = %FloppyPnp_bb174, %FloppyPnp_bb176, %FloppyPnp_bb177
  %"381" = call i32 @__VERIFIER_nondet_int() #5, !dbg !1339
  call void @llvm.dbg.value(metadata !{i32 %"381"}, i64 0, metadata !1340) #5, !dbg !1341
  %"382" = load i32* @"'myStatus", align 4, !dbg !1342
  call void @llvm.dbg.value(metadata !{i32 %"382"}, i64 0, metadata !262), !dbg !263
  br label %FloppyPnp_bb179, !dbg !1343

FloppyPnp_bb179:                                  ; preds = %FloppyPnp_KeWaitForSingleObject.exit22, %FloppyPnp_IofCallDriver.exit19
  %ntStatus.1 = phi i32 [ %"382", %FloppyPnp_KeWaitForSingleObject.exit22 ], [ %returnVal2.0.i18, %FloppyPnp_IofCallDriver.exit19 ]
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !779), !dbg !780
  call void @llvm.dbg.value(metadata !{i32 %ntStatus.1}, i64 0, metadata !275), !dbg !276
  store i32 %ntStatus.1, i32* @"'myStatus", align 4, !dbg !1344
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !272), !dbg !273
  call void @llvm.dbg.value(metadata !{i32 %Irp}, i64 0, metadata !1346) #5, !dbg !1348
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !1349) #5, !dbg !1350
  %"383" = load i32* @"'s", align 4, !dbg !1351
  %"384" = load i32* @"'NP", align 4, !dbg !1351
  %"385" = icmp eq i32 %"383", %"384", !dbg !1351
  br i1 %"385", label %FloppyPnp_IofCompleteRequest.exit23, label %FloppyPnp_bb180, !dbg !1351

FloppyPnp_IofCompleteRequest.exit23:              ; preds = %FloppyPnp_bb179
  %"386" = load i32* @"'DC", align 4, !dbg !1352
  store i32 %"386", i32* @"'s", align 4, !dbg !1352
  br label %FloppyPnp_IofCallDriver.exit40

FloppyPnp_bb180:                                  ; preds = %FloppyPnp_bb179
  call void (...)* @__VERIFIER_error() #6, !dbg !1353
  unreachable, !dbg !1353

FloppyPnp_bb181:                                  ; preds = %FloppyPnp_bb171
  call void (...)* @__VERIFIER_error() #6, !dbg !1355
  unreachable, !dbg !1355

FloppyPnp_bb182:                                  ; preds = %FloppyPnp_bb155
  %"387" = icmp eq i32 %"336", %"337", !dbg !1357
  br i1 %"387", label %FloppyPnp_bb183, label %FloppyPnp_bb197, !dbg !1357

FloppyPnp_bb183:                                  ; preds = %FloppyPnp_bb182
  %"388" = load i32* @"'SKIP1", align 4, !dbg !1360
  store i32 %"388", i32* @"'s", align 4, !dbg !1360
  call void @llvm.dbg.value(metadata !{i32 %"27"}, i64 0, metadata !1362) #5, !dbg !1365
  call void @llvm.dbg.value(metadata !{i32 %Irp}, i64 0, metadata !1366) #5, !dbg !1367
  %"389" = call i32 @__VERIFIER_nondet_int() #5, !dbg !1368
  call void @llvm.dbg.value(metadata !{i32 %"389"}, i64 0, metadata !1369) #5, !dbg !1370
  %"390" = load i32* @"'compRegistered", align 4, !dbg !1371
  %"391" = icmp ne i32 %"390", 0, !dbg !1371
  br i1 %"391", label %FloppyPnp_bb184, label %FloppyPnp_bb186, !dbg !1371

FloppyPnp_bb184:                                  ; preds = %FloppyPnp_bb183
  call void @llvm.dbg.value(metadata !{i32 %"27"}, i64 0, metadata !1372) #5, !dbg !1374
  call void @llvm.dbg.value(metadata !{i32 %Irp}, i64 0, metadata !1375) #5, !dbg !1376
  call void @llvm.dbg.value(metadata !{i32 %"389"}, i64 0, metadata !1377) #5, !dbg !1378
  call void @llvm.dbg.value(metadata !{i32 %"389"}, i64 0, metadata !1379) #5, !dbg !1381
  call void @llvm.dbg.value(metadata !420, i64 0, metadata !1382) #5, !dbg !1383
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !1384) #5, !dbg !1385
  %"392" = call i32 @__VERIFIER_nondet_int() #5, !dbg !1386
  call void @llvm.dbg.value(metadata !{i32 %"392"}, i64 0, metadata !1387) #5, !dbg !1388
  store i32 1, i32* @"'setEventCalled", align 4, !dbg !1389
  call void @llvm.dbg.value(metadata !430, i64 0, metadata !1390) #5, !dbg !1391
  call void @llvm.dbg.value(metadata !433, i64 0, metadata !1392) #5, !dbg !1393
  %"393" = load i32* @"'s", align 4, !dbg !1394
  %"394" = load i32* @"'NP", align 4, !dbg !1394
  %"395" = icmp eq i32 %"393", %"394", !dbg !1394
  br i1 %"395", label %FloppyPnp_stubMoreProcessingRequired.exit.i10, label %FloppyPnp_bb185, !dbg !1394

FloppyPnp_stubMoreProcessingRequired.exit.i10:    ; preds = %FloppyPnp_bb184
  %"396" = load i32* @"'MPR1", align 4, !dbg !1396
  store i32 %"396", i32* @"'s", align 4, !dbg !1396
  br label %FloppyPnp_bb186, !dbg !1397

FloppyPnp_bb185:                                  ; preds = %FloppyPnp_bb184
  call void (...)* @__VERIFIER_error() #6, !dbg !1398
  unreachable, !dbg !1398

FloppyPnp_bb186:                                  ; preds = %FloppyPnp_stubMoreProcessingRequired.exit.i10, %FloppyPnp_bb183
  %"397" = call i32 @__VERIFIER_nondet_int() #5, !dbg !1400
  call void @llvm.dbg.value(metadata !{i32 %"397"}, i64 0, metadata !1401) #5, !dbg !1402
  %"398" = icmp eq i32 %"397", 0, !dbg !1403
  br i1 %"398", label %FloppyPnp_bb188, label %FloppyPnp_bb187, !dbg !1403

FloppyPnp_bb187:                                  ; preds = %FloppyPnp_bb186
  %"399" = call i32 @__VERIFIER_nondet_int() #5, !dbg !1404
  call void @llvm.dbg.value(metadata !{i32 %"399"}, i64 0, metadata !1405) #5, !dbg !1406
  %"400" = icmp eq i32 %"399", 1, !dbg !1407
  call void @llvm.dbg.value(metadata !463, i64 0, metadata !1408) #5, !dbg !1409
  %..i11 = select i1 %"400", i32 -1073741823, i32 259, !dbg !1407
  br label %FloppyPnp_bb188, !dbg !1407

FloppyPnp_bb188:                                  ; preds = %FloppyPnp_bb187, %FloppyPnp_bb186
  %returnVal2.0.i12 = phi i32 [ 0, %FloppyPnp_bb186 ], [ %..i11, %FloppyPnp_bb187 ], !dbg !1363
  %"401" = load i32* @"'s", align 4, !dbg !1410
  %"402" = load i32* @"'NP", align 4, !dbg !1410
  %"403" = icmp eq i32 %"401", %"402", !dbg !1410
  br i1 %"403", label %FloppyPnp_bb189, label %FloppyPnp_bb190, !dbg !1410

FloppyPnp_bb189:                                  ; preds = %FloppyPnp_bb188
  %"404" = load i32* @"'IPC", align 4, !dbg !1411
  store i32 %"404", i32* @"'s", align 4, !dbg !1411
  store i32 %returnVal2.0.i12, i32* @"'lowerDriverReturn", align 4, !dbg !1412
  br label %FloppyPnp_IofCallDriver.exit40, !dbg !1413

FloppyPnp_bb190:                                  ; preds = %FloppyPnp_bb188
  %"405" = load i32* @"'s", align 4, !dbg !1414
  %"406" = load i32* @"'MPR1", align 4, !dbg !1414
  %"407" = icmp eq i32 %"405", %"406", !dbg !1414
  br i1 %"407", label %FloppyPnp_bb191, label %FloppyPnp_bb194, !dbg !1414

FloppyPnp_bb191:                                  ; preds = %FloppyPnp_bb190
  %"408" = icmp eq i32 %returnVal2.0.i12, 259, !dbg !1415
  br i1 %"408", label %FloppyPnp_bb192, label %FloppyPnp_bb193, !dbg !1415

FloppyPnp_bb192:                                  ; preds = %FloppyPnp_bb191
  %"409" = load i32* @"'MPR3", align 4, !dbg !1416
  store i32 %"409", i32* @"'s", align 4, !dbg !1416
  store i32 %returnVal2.0.i12, i32* @"'lowerDriverReturn", align 4, !dbg !1417
  br label %FloppyPnp_IofCallDriver.exit40, !dbg !1418

FloppyPnp_bb193:                                  ; preds = %FloppyPnp_bb191
  %"410" = load i32* @"'NP", align 4, !dbg !1419
  store i32 %"410", i32* @"'s", align 4, !dbg !1419
  store i32 %returnVal2.0.i12, i32* @"'lowerDriverReturn", align 4, !dbg !1420
  br label %FloppyPnp_IofCallDriver.exit40, !dbg !1363

FloppyPnp_bb194:                                  ; preds = %FloppyPnp_bb190
  %"411" = load i32* @"'s", align 4, !dbg !1421
  %"412" = load i32* @"'SKIP1", align 4, !dbg !1421
  %"413" = icmp eq i32 %"411", %"412", !dbg !1421
  br i1 %"413", label %FloppyPnp_bb195, label %FloppyPnp_bb196, !dbg !1421

FloppyPnp_bb195:                                  ; preds = %FloppyPnp_bb194
  %"414" = load i32* @"'SKIP2", align 4, !dbg !1422
  store i32 %"414", i32* @"'s", align 4, !dbg !1422
  store i32 %returnVal2.0.i12, i32* @"'lowerDriverReturn", align 4, !dbg !1423
  br label %FloppyPnp_IofCallDriver.exit40, !dbg !1363

FloppyPnp_bb196:                                  ; preds = %FloppyPnp_bb194
  call void (...)* @__VERIFIER_error() #6, !dbg !1424
  unreachable, !dbg !1424

FloppyPnp_bb197:                                  ; preds = %FloppyPnp_bb182
  call void (...)* @__VERIFIER_error() #6, !dbg !1426
  unreachable, !dbg !1426

FloppyPnp_NewDefault:                             ; preds = %FloppyPnp_LeafBlock45, %FloppyPnp_LeafBlock
  br label %FloppyPnp_bb198

FloppyPnp_bb198:                                  ; preds = %FloppyPnp_NewDefault
  %"415" = load i32* @"'s", align 4, !dbg !1430
  %"416" = load i32* @"'NP", align 4, !dbg !1430
  %"417" = icmp eq i32 %"415", %"416", !dbg !1430
  br i1 %"417", label %FloppyPnp_bb199, label %FloppyPnp_bb213, !dbg !1430

FloppyPnp_bb199:                                  ; preds = %FloppyPnp_bb198
  %"418" = load i32* @"'SKIP1", align 4, !dbg !1432
  store i32 %"418", i32* @"'s", align 4, !dbg !1432
  call void @llvm.dbg.value(metadata !{i32 %"27"}, i64 0, metadata !1434) #5, !dbg !1437
  call void @llvm.dbg.value(metadata !{i32 %Irp}, i64 0, metadata !1438) #5, !dbg !1439
  %"419" = call i32 @__VERIFIER_nondet_int() #5, !dbg !1440
  call void @llvm.dbg.value(metadata !{i32 %"419"}, i64 0, metadata !1441) #5, !dbg !1442
  %"420" = load i32* @"'compRegistered", align 4, !dbg !1443
  %"421" = icmp ne i32 %"420", 0, !dbg !1443
  br i1 %"421", label %FloppyPnp_bb200, label %FloppyPnp_bb202, !dbg !1443

FloppyPnp_bb200:                                  ; preds = %FloppyPnp_bb199
  call void @llvm.dbg.value(metadata !{i32 %"27"}, i64 0, metadata !1444) #5, !dbg !1446
  call void @llvm.dbg.value(metadata !{i32 %Irp}, i64 0, metadata !1447) #5, !dbg !1448
  call void @llvm.dbg.value(metadata !{i32 %"419"}, i64 0, metadata !1449) #5, !dbg !1450
  call void @llvm.dbg.value(metadata !{i32 %"419"}, i64 0, metadata !1451) #5, !dbg !1453
  call void @llvm.dbg.value(metadata !420, i64 0, metadata !1454) #5, !dbg !1455
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !1456) #5, !dbg !1457
  %"422" = call i32 @__VERIFIER_nondet_int() #5, !dbg !1458
  call void @llvm.dbg.value(metadata !{i32 %"422"}, i64 0, metadata !1459) #5, !dbg !1460
  store i32 1, i32* @"'setEventCalled", align 4, !dbg !1461
  call void @llvm.dbg.value(metadata !430, i64 0, metadata !1462) #5, !dbg !1463
  call void @llvm.dbg.value(metadata !433, i64 0, metadata !1464) #5, !dbg !1465
  %"423" = load i32* @"'s", align 4, !dbg !1466
  %"424" = load i32* @"'NP", align 4, !dbg !1466
  %"425" = icmp eq i32 %"423", %"424", !dbg !1466
  br i1 %"425", label %FloppyPnp_stubMoreProcessingRequired.exit.i37, label %FloppyPnp_bb201, !dbg !1466

FloppyPnp_stubMoreProcessingRequired.exit.i37:    ; preds = %FloppyPnp_bb200
  %"426" = load i32* @"'MPR1", align 4, !dbg !1468
  store i32 %"426", i32* @"'s", align 4, !dbg !1468
  br label %FloppyPnp_bb202, !dbg !1469

FloppyPnp_bb201:                                  ; preds = %FloppyPnp_bb200
  call void (...)* @__VERIFIER_error() #6, !dbg !1470
  unreachable, !dbg !1470

FloppyPnp_bb202:                                  ; preds = %FloppyPnp_stubMoreProcessingRequired.exit.i37, %FloppyPnp_bb199
  %"427" = call i32 @__VERIFIER_nondet_int() #5, !dbg !1472
  call void @llvm.dbg.value(metadata !{i32 %"427"}, i64 0, metadata !1473) #5, !dbg !1474
  %"428" = icmp eq i32 %"427", 0, !dbg !1475
  br i1 %"428", label %FloppyPnp_bb204, label %FloppyPnp_bb203, !dbg !1475

FloppyPnp_bb203:                                  ; preds = %FloppyPnp_bb202
  %"429" = call i32 @__VERIFIER_nondet_int() #5, !dbg !1476
  call void @llvm.dbg.value(metadata !{i32 %"429"}, i64 0, metadata !1477) #5, !dbg !1478
  %"430" = icmp eq i32 %"429", 1, !dbg !1479
  call void @llvm.dbg.value(metadata !463, i64 0, metadata !1480) #5, !dbg !1481
  %..i38 = select i1 %"430", i32 -1073741823, i32 259, !dbg !1479
  br label %FloppyPnp_bb204, !dbg !1479

FloppyPnp_bb204:                                  ; preds = %FloppyPnp_bb203, %FloppyPnp_bb202
  %returnVal2.0.i39 = phi i32 [ 0, %FloppyPnp_bb202 ], [ %..i38, %FloppyPnp_bb203 ], !dbg !1435
  %"431" = load i32* @"'s", align 4, !dbg !1482
  %"432" = load i32* @"'NP", align 4, !dbg !1482
  %"433" = icmp eq i32 %"431", %"432", !dbg !1482
  br i1 %"433", label %FloppyPnp_bb205, label %FloppyPnp_bb206, !dbg !1482

FloppyPnp_bb205:                                  ; preds = %FloppyPnp_bb204
  %"434" = load i32* @"'IPC", align 4, !dbg !1483
  store i32 %"434", i32* @"'s", align 4, !dbg !1483
  store i32 %returnVal2.0.i39, i32* @"'lowerDriverReturn", align 4, !dbg !1484
  br label %FloppyPnp_IofCallDriver.exit40, !dbg !1485

FloppyPnp_bb206:                                  ; preds = %FloppyPnp_bb204
  %"435" = load i32* @"'s", align 4, !dbg !1486
  %"436" = load i32* @"'MPR1", align 4, !dbg !1486
  %"437" = icmp eq i32 %"435", %"436", !dbg !1486
  br i1 %"437", label %FloppyPnp_bb207, label %FloppyPnp_bb210, !dbg !1486

FloppyPnp_bb207:                                  ; preds = %FloppyPnp_bb206
  %"438" = icmp eq i32 %returnVal2.0.i39, 259, !dbg !1487
  br i1 %"438", label %FloppyPnp_bb208, label %FloppyPnp_bb209, !dbg !1487

FloppyPnp_bb208:                                  ; preds = %FloppyPnp_bb207
  %"439" = load i32* @"'MPR3", align 4, !dbg !1488
  store i32 %"439", i32* @"'s", align 4, !dbg !1488
  store i32 %returnVal2.0.i39, i32* @"'lowerDriverReturn", align 4, !dbg !1489
  br label %FloppyPnp_IofCallDriver.exit40, !dbg !1490

FloppyPnp_bb209:                                  ; preds = %FloppyPnp_bb207
  %"440" = load i32* @"'NP", align 4, !dbg !1491
  store i32 %"440", i32* @"'s", align 4, !dbg !1491
  store i32 %returnVal2.0.i39, i32* @"'lowerDriverReturn", align 4, !dbg !1492
  br label %FloppyPnp_IofCallDriver.exit40, !dbg !1435

FloppyPnp_bb210:                                  ; preds = %FloppyPnp_bb206
  %"441" = load i32* @"'s", align 4, !dbg !1493
  %"442" = load i32* @"'SKIP1", align 4, !dbg !1493
  %"443" = icmp eq i32 %"441", %"442", !dbg !1493
  br i1 %"443", label %FloppyPnp_bb211, label %FloppyPnp_bb212, !dbg !1493

FloppyPnp_bb211:                                  ; preds = %FloppyPnp_bb210
  %"444" = load i32* @"'SKIP2", align 4, !dbg !1494
  store i32 %"444", i32* @"'s", align 4, !dbg !1494
  store i32 %returnVal2.0.i39, i32* @"'lowerDriverReturn", align 4, !dbg !1495
  br label %FloppyPnp_IofCallDriver.exit40, !dbg !1435

FloppyPnp_IofCallDriver.exit40:                   ; preds = %FloppyPnp_bb205, %FloppyPnp_bb208, %FloppyPnp_bb209, %FloppyPnp_bb211, %FloppyPnp_bb86, %FloppyPnp_bb87, %FloppyPnp_bb103, %FloppyPnp_bb101, %FloppyPnp_bb100, %FloppyPnp_bb97, %FloppyPnp_IofCompleteRequest.exit23, %FloppyPnp_bb189, %FloppyPnp_bb192, %FloppyPnp_bb193, %FloppyPnp_bb195, %FloppyPnp_IofCompleteRequest.exit8, %FloppyPnp_bb127, %FloppyPnp_bb130, %FloppyPnp_bb131, %FloppyPnp_bb133, %FloppyPnp_FloppyStartDevice.exit
  %ntStatus.4 = phi i32 [ %returnVal2.0.i39, %FloppyPnp_bb205 ], [ %returnVal2.0.i39, %FloppyPnp_bb208 ], [ %returnVal2.0.i39, %FloppyPnp_bb209 ], [ %returnVal2.0.i39, %FloppyPnp_bb211 ], [ %ntStatus.3.i, %FloppyPnp_FloppyStartDevice.exit ], [ -1073741823, %FloppyPnp_IofCompleteRequest.exit8 ], [ %returnVal2.0.i6, %FloppyPnp_bb127 ], [ %returnVal2.0.i6, %FloppyPnp_bb130 ], [ %returnVal2.0.i6, %FloppyPnp_bb131 ], [ %returnVal2.0.i6, %FloppyPnp_bb133 ], [ %ntStatus.1, %FloppyPnp_IofCompleteRequest.exit23 ], [ %returnVal2.0.i12, %FloppyPnp_bb189 ], [ %returnVal2.0.i12, %FloppyPnp_bb192 ], [ %returnVal2.0.i12, %FloppyPnp_bb193 ], [ %returnVal2.0.i12, %FloppyPnp_bb195 ], [ %returnVal2.0.i27, %FloppyPnp_bb97 ], [ %returnVal2.0.i27, %FloppyPnp_bb100 ], [ %returnVal2.0.i27, %FloppyPnp_bb101 ], [ %returnVal2.0.i27, %FloppyPnp_bb103 ], [ %returnVal2.0.i32, %FloppyPnp_bb87 ], [ %returnVal2.0.i32, %FloppyPnp_bb86 ]
  %"445" = load i32* @"'PagingReferenceCount", align 4, !dbg !1496
  %"446" = add nsw i32 %"445", -1, !dbg !1496
  store i32 %"446", i32* @"'PagingReferenceCount", align 4, !dbg !1496
  br label %FloppyPnp_IofCallDriver.exit, !dbg !1497

FloppyPnp_IofCallDriver.exit:                     ; preds = %FloppyPnp_bb152, %FloppyPnp_bb150, %FloppyPnp_bb149, %FloppyPnp_bb146, %FloppyPnp_IofCallDriver.exit40, %FloppyPnp_IofCompleteRequest.exit
  %.0 = phi i32 [ -1073741738, %FloppyPnp_IofCompleteRequest.exit ], [ %ntStatus.4, %FloppyPnp_IofCallDriver.exit40 ], [ %returnVal2.0.i, %FloppyPnp_bb146 ], [ %returnVal2.0.i, %FloppyPnp_bb149 ], [ %returnVal2.0.i, %FloppyPnp_bb150 ], [ %returnVal2.0.i, %FloppyPnp_bb152 ]
  ret i32 %.0, !dbg !1498

FloppyPnp_bb212:                                  ; preds = %FloppyPnp_bb210
  call void (...)* @__VERIFIER_error() #6, !dbg !1499
  unreachable, !dbg !1499

FloppyPnp_bb213:                                  ; preds = %FloppyPnp_bb198
  call void (...)* @__VERIFIER_error() #6, !dbg !1501
  unreachable, !dbg !1501
}

; Function Attrs: nounwind uwtable
define void @IofCompleteRequest(i32 %Irp, i32 %PriorityBoost) #0 {
IofCompleteRequest_bb214:
  call void @llvm.dbg.value(metadata !{i32 %Irp}, i64 0, metadata !1505), !dbg !1506
  call void @llvm.dbg.value(metadata !{i32 %PriorityBoost}, i64 0, metadata !1507), !dbg !1508
  %"447" = load i32* @"'s", align 4, !dbg !1509
  %"448" = load i32* @"'NP", align 4, !dbg !1509
  %"449" = icmp eq i32 %"447", %"448", !dbg !1509
  br i1 %"449", label %IofCompleteRequest_bb215, label %IofCompleteRequest_bb216, !dbg !1509

IofCompleteRequest_bb215:                         ; preds = %IofCompleteRequest_bb214
  %"450" = load i32* @"'DC", align 4, !dbg !1510
  store i32 %"450", i32* @"'s", align 4, !dbg !1510
  ret void, !dbg !1511

IofCompleteRequest_bb216:                         ; preds = %IofCompleteRequest_bb214
  call void (...)* @__VERIFIER_error() #6, !dbg !1512
  unreachable, !dbg !1512
}

; Function Attrs: nounwind uwtable
define i32 @FloppyStartDevice(i32 %DeviceObject, i32 %Irp) #0 {
FloppyStartDevice_bb217:
  call void @llvm.dbg.value(metadata !{i32 %DeviceObject}, i64 0, metadata !1514), !dbg !1515
  call void @llvm.dbg.value(metadata !{i32 %Irp}, i64 0, metadata !1516), !dbg !1517
  %"451" = call i32 @__VERIFIER_nondet_int(), !dbg !1518
  call void @llvm.dbg.value(metadata !{i32 %"451"}, i64 0, metadata !1519), !dbg !1520
  %"452" = call i32 @__VERIFIER_nondet_int(), !dbg !1521
  call void @llvm.dbg.value(metadata !{i32 %"452"}, i64 0, metadata !1522), !dbg !1523
  %"453" = call i32 @__VERIFIER_nondet_int(), !dbg !1524
  call void @llvm.dbg.value(metadata !{i32 %"453"}, i64 0, metadata !1525), !dbg !1526
  %"454" = call i32 @__VERIFIER_nondet_int(), !dbg !1527
  call void @llvm.dbg.value(metadata !{i32 %"454"}, i64 0, metadata !1528), !dbg !1529
  %"455" = call i32 @__VERIFIER_nondet_int(), !dbg !1530
  call void @llvm.dbg.value(metadata !{i32 %"455"}, i64 0, metadata !1531), !dbg !1532
  %"456" = call i32 @__VERIFIER_nondet_int(), !dbg !1533
  call void @llvm.dbg.value(metadata !{i32 %"456"}, i64 0, metadata !1534), !dbg !1535
  %"457" = call i32 @__VERIFIER_nondet_int(), !dbg !1536
  call void @llvm.dbg.value(metadata !{i32 %"457"}, i64 0, metadata !1537), !dbg !1538
  %"458" = call i32 @__VERIFIER_nondet_int(), !dbg !1539
  call void @llvm.dbg.value(metadata !{i32 %"458"}, i64 0, metadata !1540), !dbg !1541
  %"459" = call i32 @__VERIFIER_nondet_int(), !dbg !1542
  call void @llvm.dbg.value(metadata !{i32 %"459"}, i64 0, metadata !1543), !dbg !1544
  %"460" = call i32 @__VERIFIER_nondet_int(), !dbg !1545
  call void @llvm.dbg.value(metadata !{i32 %"460"}, i64 0, metadata !1546), !dbg !1547
  %"461" = call i32 @__VERIFIER_nondet_int(), !dbg !1548
  call void @llvm.dbg.value(metadata !{i32 %"461"}, i64 0, metadata !1549), !dbg !1550
  %"462" = call i32 @__VERIFIER_nondet_int(), !dbg !1551
  call void @llvm.dbg.value(metadata !{i32 %"462"}, i64 0, metadata !1552), !dbg !1553
  %"463" = call i32 @__VERIFIER_nondet_int(), !dbg !1554
  call void @llvm.dbg.value(metadata !{i32 %"463"}, i64 0, metadata !1555), !dbg !1556
  %"464" = call i32 @__VERIFIER_nondet_int(), !dbg !1557
  call void @llvm.dbg.value(metadata !{i32 %"464"}, i64 0, metadata !1558), !dbg !1559
  %"465" = call i32 @__VERIFIER_nondet_int(), !dbg !1560
  call void @llvm.dbg.value(metadata !{i32 %"465"}, i64 0, metadata !1561), !dbg !1562
  %"466" = call i32 @__VERIFIER_nondet_int(), !dbg !1563
  call void @llvm.dbg.value(metadata !{i32 %"466"}, i64 0, metadata !1564), !dbg !1565
  call void @llvm.dbg.value(metadata !{i32 %"451"}, i64 0, metadata !1566), !dbg !1567
  call void @llvm.dbg.value(metadata !{i32 %"452"}, i64 0, metadata !1568), !dbg !1569
  call void @llvm.dbg.value(metadata !{i32 %"452"}, i64 0, metadata !1570), !dbg !1571
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !1572), !dbg !1573
  %"467" = load i32* @"'s", align 4, !dbg !1574
  %"468" = load i32* @"'NP", align 4, !dbg !1574
  %"469" = icmp ne i32 %"467", %"468", !dbg !1574
  br i1 %"469", label %FloppyStartDevice_bb218, label %FloppyStartDevice_bb219, !dbg !1574

FloppyStartDevice_bb218:                          ; preds = %FloppyStartDevice_bb217
  call void (...)* @__VERIFIER_error() #6, !dbg !1575
  unreachable, !dbg !1575

FloppyStartDevice_bb219:                          ; preds = %FloppyStartDevice_bb217
  %"470" = load i32* @"'compRegistered", align 4, !dbg !1577
  %"471" = icmp ne i32 %"470", 0, !dbg !1577
  br i1 %"471", label %FloppyStartDevice_bb220, label %FloppyStartDevice_bb221, !dbg !1577

FloppyStartDevice_bb220:                          ; preds = %FloppyStartDevice_bb219
  call void (...)* @__VERIFIER_error() #6, !dbg !1578
  unreachable, !dbg !1578

FloppyStartDevice_bb221:                          ; preds = %FloppyStartDevice_bb219
  store i32 1, i32* @"'compRegistered", align 4, !dbg !1580
  call void @llvm.dbg.value(metadata !{i32 %"457"}, i64 0, metadata !1581), !dbg !1582
  call void @llvm.dbg.value(metadata !391, i64 0, metadata !1583), !dbg !1584
  call void @llvm.dbg.value(metadata !{i32 %"453"}, i64 0, metadata !1585) #5, !dbg !1587
  call void @llvm.dbg.value(metadata !{i32 %Irp}, i64 0, metadata !1588) #5, !dbg !1589
  %"472" = call i32 @__VERIFIER_nondet_int() #5, !dbg !1590
  call void @llvm.dbg.value(metadata !{i32 %"472"}, i64 0, metadata !1591) #5, !dbg !1592
  %"473" = load i32* @"'compRegistered", align 4, !dbg !1593
  %"474" = icmp ne i32 %"473", 0, !dbg !1593
  br i1 %"474", label %FloppyStartDevice_bb222, label %FloppyStartDevice_bb224, !dbg !1593

FloppyStartDevice_bb222:                          ; preds = %FloppyStartDevice_bb221
  call void @llvm.dbg.value(metadata !{i32 %"453"}, i64 0, metadata !1594) #5, !dbg !1596
  call void @llvm.dbg.value(metadata !{i32 %Irp}, i64 0, metadata !1597) #5, !dbg !1598
  call void @llvm.dbg.value(metadata !{i32 %"472"}, i64 0, metadata !1599) #5, !dbg !1600
  call void @llvm.dbg.value(metadata !{i32 %"472"}, i64 0, metadata !1601) #5, !dbg !1603
  call void @llvm.dbg.value(metadata !420, i64 0, metadata !1604) #5, !dbg !1605
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !1606) #5, !dbg !1607
  %"475" = call i32 @__VERIFIER_nondet_int() #5, !dbg !1608
  call void @llvm.dbg.value(metadata !{i32 %"475"}, i64 0, metadata !1609) #5, !dbg !1610
  store i32 1, i32* @"'setEventCalled", align 4, !dbg !1611
  call void @llvm.dbg.value(metadata !430, i64 0, metadata !1612) #5, !dbg !1613
  call void @llvm.dbg.value(metadata !433, i64 0, metadata !1614) #5, !dbg !1615
  %"476" = load i32* @"'s", align 4, !dbg !1616
  %"477" = load i32* @"'NP", align 4, !dbg !1616
  %"478" = icmp eq i32 %"476", %"477", !dbg !1616
  br i1 %"478", label %FloppyStartDevice_stubMoreProcessingRequired.exit.i, label %FloppyStartDevice_bb223, !dbg !1616

FloppyStartDevice_stubMoreProcessingRequired.exit.i: ; preds = %FloppyStartDevice_bb222
  %"479" = load i32* @"'MPR1", align 4, !dbg !1618
  store i32 %"479", i32* @"'s", align 4, !dbg !1618
  br label %FloppyStartDevice_bb224, !dbg !1619

FloppyStartDevice_bb223:                          ; preds = %FloppyStartDevice_bb222
  call void (...)* @__VERIFIER_error() #6, !dbg !1620
  unreachable, !dbg !1620

FloppyStartDevice_bb224:                          ; preds = %FloppyStartDevice_stubMoreProcessingRequired.exit.i, %FloppyStartDevice_bb221
  %"480" = call i32 @__VERIFIER_nondet_int() #5, !dbg !1622
  call void @llvm.dbg.value(metadata !{i32 %"480"}, i64 0, metadata !1623) #5, !dbg !1624
  %"481" = icmp eq i32 %"480", 0, !dbg !1625
  br i1 %"481", label %FloppyStartDevice_bb226, label %FloppyStartDevice_bb225, !dbg !1625

FloppyStartDevice_bb225:                          ; preds = %FloppyStartDevice_bb224
  %"482" = call i32 @__VERIFIER_nondet_int() #5, !dbg !1626
  call void @llvm.dbg.value(metadata !{i32 %"482"}, i64 0, metadata !1627) #5, !dbg !1628
  %"483" = icmp eq i32 %"482", 1, !dbg !1629
  call void @llvm.dbg.value(metadata !463, i64 0, metadata !1630) #5, !dbg !1631
  %..i = select i1 %"483", i32 -1073741823, i32 259, !dbg !1629
  br label %FloppyStartDevice_bb226, !dbg !1629

FloppyStartDevice_bb226:                          ; preds = %FloppyStartDevice_bb225, %FloppyStartDevice_bb224
  %returnVal2.0.i = phi i32 [ 0, %FloppyStartDevice_bb224 ], [ %..i, %FloppyStartDevice_bb225 ], !dbg !1586
  %"484" = load i32* @"'s", align 4, !dbg !1632
  %"485" = load i32* @"'NP", align 4, !dbg !1632
  %"486" = icmp eq i32 %"484", %"485", !dbg !1632
  br i1 %"486", label %FloppyStartDevice_bb227, label %FloppyStartDevice_bb228, !dbg !1632

FloppyStartDevice_bb227:                          ; preds = %FloppyStartDevice_bb226
  %"487" = load i32* @"'IPC", align 4, !dbg !1633
  store i32 %"487", i32* @"'s", align 4, !dbg !1633
  store i32 %returnVal2.0.i, i32* @"'lowerDriverReturn", align 4, !dbg !1634
  br label %FloppyStartDevice_IofCallDriver.exit, !dbg !1635

FloppyStartDevice_bb228:                          ; preds = %FloppyStartDevice_bb226
  %"488" = load i32* @"'s", align 4, !dbg !1636
  %"489" = load i32* @"'MPR1", align 4, !dbg !1636
  %"490" = icmp eq i32 %"488", %"489", !dbg !1636
  br i1 %"490", label %FloppyStartDevice_bb229, label %FloppyStartDevice_bb232, !dbg !1636

FloppyStartDevice_bb229:                          ; preds = %FloppyStartDevice_bb228
  %"491" = icmp eq i32 %returnVal2.0.i, 259, !dbg !1637
  br i1 %"491", label %FloppyStartDevice_bb230, label %FloppyStartDevice_bb231, !dbg !1637

FloppyStartDevice_bb230:                          ; preds = %FloppyStartDevice_bb229
  %"492" = load i32* @"'MPR3", align 4, !dbg !1638
  store i32 %"492", i32* @"'s", align 4, !dbg !1638
  store i32 %returnVal2.0.i, i32* @"'lowerDriverReturn", align 4, !dbg !1639
  br label %FloppyStartDevice_IofCallDriver.exit, !dbg !1640

FloppyStartDevice_bb231:                          ; preds = %FloppyStartDevice_bb229
  %"493" = load i32* @"'NP", align 4, !dbg !1641
  store i32 %"493", i32* @"'s", align 4, !dbg !1641
  store i32 %returnVal2.0.i, i32* @"'lowerDriverReturn", align 4, !dbg !1642
  br label %FloppyStartDevice_IofCallDriver.exit, !dbg !1586

FloppyStartDevice_bb232:                          ; preds = %FloppyStartDevice_bb228
  %"494" = load i32* @"'s", align 4, !dbg !1643
  %"495" = load i32* @"'SKIP1", align 4, !dbg !1643
  %"496" = icmp eq i32 %"494", %"495", !dbg !1643
  br i1 %"496", label %FloppyStartDevice_bb233, label %FloppyStartDevice_bb270, !dbg !1643

FloppyStartDevice_bb233:                          ; preds = %FloppyStartDevice_bb232
  %"497" = load i32* @"'SKIP2", align 4, !dbg !1644
  store i32 %"497", i32* @"'s", align 4, !dbg !1644
  store i32 %returnVal2.0.i, i32* @"'lowerDriverReturn", align 4, !dbg !1645
  br label %FloppyStartDevice_IofCallDriver.exit, !dbg !1586

FloppyStartDevice_IofCallDriver.exit:             ; preds = %FloppyStartDevice_bb227, %FloppyStartDevice_bb230, %FloppyStartDevice_bb231, %FloppyStartDevice_bb233
  call void @llvm.dbg.value(metadata !{i32 %returnVal2.0.i}, i64 0, metadata !1646), !dbg !1647
  %"498" = sext i32 %returnVal2.0.i to i64, !dbg !1648
  call void @llvm.dbg.value(metadata !{i64 %"498"}, i64 0, metadata !1649), !dbg !1650
  %"499" = icmp eq i64 %"498", 259, !dbg !1651
  br i1 %"499", label %FloppyStartDevice_bb234, label %FloppyStartDevice_bb240, !dbg !1651

FloppyStartDevice_bb234:                          ; preds = %FloppyStartDevice_IofCallDriver.exit
  call void @llvm.dbg.value(metadata !{i32 %"457"}, i64 0, metadata !1652) #5, !dbg !1654
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !1655) #5, !dbg !1656
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !1657) #5, !dbg !1658
  %"500" = load i32* @"'s", align 4, !dbg !1659
  %"501" = load i32* @"'MPR3", align 4, !dbg !1659
  %"502" = icmp eq i32 %"500", %"501", !dbg !1659
  %"503" = load i32* @"'setEventCalled", align 4, !dbg !1653
  %"504" = icmp eq i32 %"503", 1, !dbg !1660
  %or.cond.i = and i1 %"502", %"504", !dbg !1659
  br i1 %or.cond.i, label %FloppyStartDevice_bb235, label %FloppyStartDevice_bb236, !dbg !1659

FloppyStartDevice_bb235:                          ; preds = %FloppyStartDevice_bb234
  %"505" = load i32* @"'NP", align 4, !dbg !1661
  store i32 %"505", i32* @"'s", align 4, !dbg !1661
  store i32 0, i32* @"'setEventCalled", align 4, !dbg !1662
  br label %FloppyStartDevice_KeWaitForSingleObject.exit, !dbg !1663

FloppyStartDevice_bb236:                          ; preds = %FloppyStartDevice_bb234
  %"506" = load i32* @"'customIrp", align 4, !dbg !1664
  %"507" = icmp eq i32 %"506", 1, !dbg !1664
  br i1 %"507", label %FloppyStartDevice_bb237, label %FloppyStartDevice_bb238, !dbg !1664

FloppyStartDevice_bb237:                          ; preds = %FloppyStartDevice_bb236
  %"508" = load i32* @"'NP", align 4, !dbg !1665
  store i32 %"508", i32* @"'s", align 4, !dbg !1665
  store i32 0, i32* @"'customIrp", align 4, !dbg !1666
  br label %FloppyStartDevice_KeWaitForSingleObject.exit, !dbg !1667

FloppyStartDevice_bb238:                          ; preds = %FloppyStartDevice_bb236
  %"509" = load i32* @"'s", align 4, !dbg !1668
  %"510" = load i32* @"'MPR3", align 4, !dbg !1668
  %"511" = icmp eq i32 %"509", %"510", !dbg !1668
  br i1 %"511", label %FloppyStartDevice_bb239, label %FloppyStartDevice_KeWaitForSingleObject.exit, !dbg !1668

FloppyStartDevice_bb239:                          ; preds = %FloppyStartDevice_bb238
  call void (...)* @__VERIFIER_error() #6, !dbg !1669
  unreachable, !dbg !1669

FloppyStartDevice_KeWaitForSingleObject.exit:     ; preds = %FloppyStartDevice_bb235, %FloppyStartDevice_bb237, %FloppyStartDevice_bb238
  %"512" = call i32 @__VERIFIER_nondet_int() #5, !dbg !1671
  call void @llvm.dbg.value(metadata !{i32 %"512"}, i64 0, metadata !1672) #5, !dbg !1673
  br label %FloppyStartDevice_bb240, !dbg !1674

FloppyStartDevice_bb240:                          ; preds = %FloppyStartDevice_KeWaitForSingleObject.exit, %FloppyStartDevice_IofCallDriver.exit
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !1675), !dbg !1676
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !1677), !dbg !1678
  call void @llvm.dbg.value(metadata !541, i64 0, metadata !1679), !dbg !1680
  call void @llvm.dbg.value(metadata !544, i64 0, metadata !1681), !dbg !1682
  call void @llvm.dbg.value(metadata !547, i64 0, metadata !1683), !dbg !1684
  call void @llvm.dbg.value(metadata !550, i64 0, metadata !1685), !dbg !1686
  call void @llvm.dbg.value(metadata !{i32 %"453"}, i64 0, metadata !1687) #5, !dbg !1689
  call void @llvm.dbg.value(metadata !550, i64 0, metadata !1690) #5, !dbg !1691
  call void @llvm.dbg.value(metadata !{i32 %"458"}, i64 0, metadata !1692) #5, !dbg !1693
  %"513" = call i32 @__VERIFIER_nondet_int() #5, !dbg !1694
  call void @llvm.dbg.value(metadata !{i32 %"513"}, i64 0, metadata !1695) #5, !dbg !1696
  %"514" = call i32 @__VERIFIER_nondet_int() #5, !dbg !1697
  call void @llvm.dbg.value(metadata !{i32 %"514"}, i64 0, metadata !1698) #5, !dbg !1699
  %"515" = call i32 @__VERIFIER_nondet_int() #5, !dbg !1700
  call void @llvm.dbg.value(metadata !{i32 %"515"}, i64 0, metadata !1701) #5, !dbg !1702
  call void @llvm.dbg.value(metadata !550, i64 0, metadata !1703) #5, !dbg !1705
  call void @llvm.dbg.value(metadata !{i32 %"453"}, i64 0, metadata !1706) #5, !dbg !1707
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !1708) #5, !dbg !1709
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !1710) #5, !dbg !1711
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !1712) #5, !dbg !1713
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !1714) #5, !dbg !1715
  call void @llvm.dbg.value(metadata !420, i64 0, metadata !1716) #5, !dbg !1717
  call void @llvm.dbg.value(metadata !{i32 %"513"}, i64 0, metadata !1718) #5, !dbg !1719
  call void @llvm.dbg.value(metadata !{i32 %"514"}, i64 0, metadata !1720) #5, !dbg !1721
  %"516" = call i32 @__VERIFIER_nondet_int() #5, !dbg !1722
  call void @llvm.dbg.value(metadata !{i32 %"516"}, i64 0, metadata !1723) #5, !dbg !1724
  store i32 1, i32* @"'customIrp", align 4, !dbg !1725
  %"517" = call i32 @__VERIFIER_nondet_int() #5, !dbg !1726
  call void @llvm.dbg.value(metadata !{i32 %"517"}, i64 0, metadata !1727) #5, !dbg !1728
  %"518" = icmp eq i32 %"517", 0, !dbg !1729
  %.0.i.i = select i1 %"518", i32 %"516", i32 0, !dbg !1729
  call void @llvm.dbg.value(metadata !{i32 %.0.i.i}, i64 0, metadata !1730) #5, !dbg !1731
  %"519" = icmp eq i32 %.0.i.i, 0, !dbg !1732
  br i1 %"519", label %FloppyStartDevice_FlFdcDeviceIo.exit, label %FloppyStartDevice_bb241, !dbg !1732

FloppyStartDevice_bb241:                          ; preds = %FloppyStartDevice_bb240
  call void @llvm.dbg.value(metadata !{i32 %"458"}, i64 0, metadata !1733) #5, !dbg !1734
  call void @llvm.dbg.value(metadata !{i32 %"453"}, i64 0, metadata !1735) #5, !dbg !1737
  call void @llvm.dbg.value(metadata !{i32 %.0.i.i}, i64 0, metadata !1738) #5, !dbg !1739
  %"520" = call i32 @__VERIFIER_nondet_int() #5, !dbg !1740
  call void @llvm.dbg.value(metadata !{i32 %"520"}, i64 0, metadata !1741) #5, !dbg !1742
  %"521" = load i32* @"'compRegistered", align 4, !dbg !1743
  %"522" = icmp ne i32 %"521", 0, !dbg !1743
  br i1 %"522", label %FloppyStartDevice_bb242, label %FloppyStartDevice_bb244, !dbg !1743

FloppyStartDevice_bb242:                          ; preds = %FloppyStartDevice_bb241
  call void @llvm.dbg.value(metadata !{i32 %"453"}, i64 0, metadata !1744) #5, !dbg !1746
  call void @llvm.dbg.value(metadata !{i32 %.0.i.i}, i64 0, metadata !1747) #5, !dbg !1748
  call void @llvm.dbg.value(metadata !{i32 %"520"}, i64 0, metadata !1749) #5, !dbg !1750
  call void @llvm.dbg.value(metadata !{i32 %"520"}, i64 0, metadata !1751) #5, !dbg !1753
  call void @llvm.dbg.value(metadata !420, i64 0, metadata !1754) #5, !dbg !1755
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !1756) #5, !dbg !1757
  %"523" = call i32 @__VERIFIER_nondet_int() #5, !dbg !1758
  call void @llvm.dbg.value(metadata !{i32 %"523"}, i64 0, metadata !1759) #5, !dbg !1760
  store i32 1, i32* @"'setEventCalled", align 4, !dbg !1761
  call void @llvm.dbg.value(metadata !430, i64 0, metadata !1762) #5, !dbg !1763
  call void @llvm.dbg.value(metadata !433, i64 0, metadata !1764) #5, !dbg !1765
  %"524" = load i32* @"'s", align 4, !dbg !1766
  %"525" = load i32* @"'NP", align 4, !dbg !1766
  %"526" = icmp eq i32 %"524", %"525", !dbg !1766
  br i1 %"526", label %FloppyStartDevice_stubMoreProcessingRequired.exit.i.i, label %FloppyStartDevice_bb243, !dbg !1766

FloppyStartDevice_stubMoreProcessingRequired.exit.i.i: ; preds = %FloppyStartDevice_bb242
  %"527" = load i32* @"'MPR1", align 4, !dbg !1768
  store i32 %"527", i32* @"'s", align 4, !dbg !1768
  br label %FloppyStartDevice_bb244, !dbg !1769

FloppyStartDevice_bb243:                          ; preds = %FloppyStartDevice_bb242
  call void (...)* @__VERIFIER_error() #6, !dbg !1770
  unreachable, !dbg !1770

FloppyStartDevice_bb244:                          ; preds = %FloppyStartDevice_stubMoreProcessingRequired.exit.i.i, %FloppyStartDevice_bb241
  %"528" = call i32 @__VERIFIER_nondet_int() #5, !dbg !1772
  call void @llvm.dbg.value(metadata !{i32 %"528"}, i64 0, metadata !1773) #5, !dbg !1774
  %"529" = icmp eq i32 %"528", 0, !dbg !1775
  br i1 %"529", label %FloppyStartDevice_bb246, label %FloppyStartDevice_bb245, !dbg !1775

FloppyStartDevice_bb245:                          ; preds = %FloppyStartDevice_bb244
  %"530" = call i32 @__VERIFIER_nondet_int() #5, !dbg !1776
  call void @llvm.dbg.value(metadata !{i32 %"530"}, i64 0, metadata !1777) #5, !dbg !1778
  %"531" = icmp eq i32 %"530", 1, !dbg !1779
  call void @llvm.dbg.value(metadata !463, i64 0, metadata !1780) #5, !dbg !1781
  %..i.i = select i1 %"531", i32 -1073741823, i32 259, !dbg !1779
  br label %FloppyStartDevice_bb246, !dbg !1779

FloppyStartDevice_bb246:                          ; preds = %FloppyStartDevice_bb245, %FloppyStartDevice_bb244
  %returnVal2.0.i.i = phi i32 [ 0, %FloppyStartDevice_bb244 ], [ %..i.i, %FloppyStartDevice_bb245 ], !dbg !1736
  %"532" = load i32* @"'s", align 4, !dbg !1782
  %"533" = load i32* @"'NP", align 4, !dbg !1782
  %"534" = icmp eq i32 %"532", %"533", !dbg !1782
  br i1 %"534", label %FloppyStartDevice_bb247, label %FloppyStartDevice_bb248, !dbg !1782

FloppyStartDevice_bb247:                          ; preds = %FloppyStartDevice_bb246
  %"535" = load i32* @"'IPC", align 4, !dbg !1783
  store i32 %"535", i32* @"'s", align 4, !dbg !1783
  store i32 %returnVal2.0.i.i, i32* @"'lowerDriverReturn", align 4, !dbg !1784
  br label %FloppyStartDevice_IofCallDriver.exit.i, !dbg !1785

FloppyStartDevice_bb248:                          ; preds = %FloppyStartDevice_bb246
  %"536" = load i32* @"'s", align 4, !dbg !1786
  %"537" = load i32* @"'MPR1", align 4, !dbg !1786
  %"538" = icmp eq i32 %"536", %"537", !dbg !1786
  br i1 %"538", label %FloppyStartDevice_bb249, label %FloppyStartDevice_bb252, !dbg !1786

FloppyStartDevice_bb249:                          ; preds = %FloppyStartDevice_bb248
  %"539" = icmp eq i32 %returnVal2.0.i.i, 259, !dbg !1787
  br i1 %"539", label %FloppyStartDevice_bb250, label %FloppyStartDevice_bb251, !dbg !1787

FloppyStartDevice_bb250:                          ; preds = %FloppyStartDevice_bb249
  %"540" = load i32* @"'MPR3", align 4, !dbg !1788
  store i32 %"540", i32* @"'s", align 4, !dbg !1788
  store i32 %returnVal2.0.i.i, i32* @"'lowerDriverReturn", align 4, !dbg !1789
  br label %FloppyStartDevice_IofCallDriver.exit.i, !dbg !1790

FloppyStartDevice_bb251:                          ; preds = %FloppyStartDevice_bb249
  %"541" = load i32* @"'NP", align 4, !dbg !1791
  store i32 %"541", i32* @"'s", align 4, !dbg !1791
  store i32 %returnVal2.0.i.i, i32* @"'lowerDriverReturn", align 4, !dbg !1792
  br label %FloppyStartDevice_IofCallDriver.exit.i, !dbg !1736

FloppyStartDevice_bb252:                          ; preds = %FloppyStartDevice_bb248
  %"542" = load i32* @"'s", align 4, !dbg !1793
  %"543" = load i32* @"'SKIP1", align 4, !dbg !1793
  %"544" = icmp eq i32 %"542", %"543", !dbg !1793
  br i1 %"544", label %FloppyStartDevice_bb253, label %FloppyStartDevice_bb269, !dbg !1793

FloppyStartDevice_bb253:                          ; preds = %FloppyStartDevice_bb252
  %"545" = load i32* @"'SKIP2", align 4, !dbg !1794
  store i32 %"545", i32* @"'s", align 4, !dbg !1794
  store i32 %returnVal2.0.i.i, i32* @"'lowerDriverReturn", align 4, !dbg !1795
  br label %FloppyStartDevice_IofCallDriver.exit.i, !dbg !1736

FloppyStartDevice_IofCallDriver.exit.i:           ; preds = %FloppyStartDevice_bb253, %FloppyStartDevice_bb251, %FloppyStartDevice_bb250, %FloppyStartDevice_bb247
  call void @llvm.dbg.value(metadata !{i32 %returnVal2.0.i.i}, i64 0, metadata !1796) #5, !dbg !1797
  %"546" = sext i32 %returnVal2.0.i.i to i64, !dbg !1798
  call void @llvm.dbg.value(metadata !{i64 %"546"}, i64 0, metadata !1799) #5, !dbg !1800
  %"547" = icmp eq i64 %"546", 259, !dbg !1801
  br i1 %"547", label %FloppyStartDevice_bb254, label %FloppyStartDevice_FlFdcDeviceIo.exit, !dbg !1801

FloppyStartDevice_bb254:                          ; preds = %FloppyStartDevice_IofCallDriver.exit.i
  call void @llvm.dbg.value(metadata !{i32 %"513"}, i64 0, metadata !1802) #5, !dbg !1804
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !1805) #5, !dbg !1806
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !1807) #5, !dbg !1808
  %"548" = load i32* @"'s", align 4, !dbg !1809
  %"549" = load i32* @"'MPR3", align 4, !dbg !1809
  %"550" = icmp eq i32 %"548", %"549", !dbg !1809
  %"551" = load i32* @"'setEventCalled", align 4, !dbg !1803
  %"552" = icmp eq i32 %"551", 1, !dbg !1810
  %or.cond.i.i = and i1 %"550", %"552", !dbg !1809
  br i1 %or.cond.i.i, label %FloppyStartDevice_bb255, label %FloppyStartDevice_bb256, !dbg !1809

FloppyStartDevice_bb255:                          ; preds = %FloppyStartDevice_bb254
  %"553" = load i32* @"'NP", align 4, !dbg !1811
  store i32 %"553", i32* @"'s", align 4, !dbg !1811
  store i32 0, i32* @"'setEventCalled", align 4, !dbg !1812
  br label %FloppyStartDevice_KeWaitForSingleObject.exit.i, !dbg !1813

FloppyStartDevice_bb256:                          ; preds = %FloppyStartDevice_bb254
  %"554" = load i32* @"'customIrp", align 4, !dbg !1814
  %"555" = icmp eq i32 %"554", 1, !dbg !1814
  br i1 %"555", label %FloppyStartDevice_bb257, label %FloppyStartDevice_bb258, !dbg !1814

FloppyStartDevice_bb257:                          ; preds = %FloppyStartDevice_bb256
  %"556" = load i32* @"'NP", align 4, !dbg !1815
  store i32 %"556", i32* @"'s", align 4, !dbg !1815
  store i32 0, i32* @"'customIrp", align 4, !dbg !1816
  br label %FloppyStartDevice_KeWaitForSingleObject.exit.i, !dbg !1817

FloppyStartDevice_bb258:                          ; preds = %FloppyStartDevice_bb256
  %"557" = load i32* @"'s", align 4, !dbg !1818
  %"558" = load i32* @"'MPR3", align 4, !dbg !1818
  %"559" = icmp eq i32 %"557", %"558", !dbg !1818
  br i1 %"559", label %FloppyStartDevice_bb259, label %FloppyStartDevice_KeWaitForSingleObject.exit.i, !dbg !1818

FloppyStartDevice_bb259:                          ; preds = %FloppyStartDevice_bb258
  call void (...)* @__VERIFIER_error() #6, !dbg !1819
  unreachable, !dbg !1819

FloppyStartDevice_KeWaitForSingleObject.exit.i:   ; preds = %FloppyStartDevice_bb258, %FloppyStartDevice_bb257, %FloppyStartDevice_bb255
  %"560" = call i32 @__VERIFIER_nondet_int() #5, !dbg !1821
  call void @llvm.dbg.value(metadata !{i32 %"560"}, i64 0, metadata !1822) #5, !dbg !1823
  %"561" = load i32* @"'myStatus", align 4, !dbg !1824
  call void @llvm.dbg.value(metadata !{i32 %"561"}, i64 0, metadata !1796) #5, !dbg !1797
  br label %FloppyStartDevice_FlFdcDeviceIo.exit, !dbg !1825

FloppyStartDevice_FlFdcDeviceIo.exit:             ; preds = %FloppyStartDevice_bb240, %FloppyStartDevice_IofCallDriver.exit.i, %FloppyStartDevice_KeWaitForSingleObject.exit.i
  %.0.i2 = phi i32 [ -1073741670, %FloppyStartDevice_bb240 ], [ %"561", %FloppyStartDevice_KeWaitForSingleObject.exit.i ], [ %returnVal2.0.i.i, %FloppyStartDevice_IofCallDriver.exit.i ], !dbg !1688
  call void @llvm.dbg.value(metadata !{i32 %.0.i2}, i64 0, metadata !1646), !dbg !1647
  %"562" = icmp sge i32 %.0.i2, 0, !dbg !1826
  br i1 %"562", label %FloppyStartDevice_bb260, label %FloppyStartDevice_bb267, !dbg !1826

FloppyStartDevice_bb260:                          ; preds = %FloppyStartDevice_FlFdcDeviceIo.exit
  call void @llvm.dbg.value(metadata !{i32 %"459"}, i64 0, metadata !1827), !dbg !1828
  %"563" = icmp ne i32 %"460", 0, !dbg !1829
  %"564" = icmp ne i32 %"461", 0, !dbg !1830
  %or.cond = and i1 %"563", %"564", !dbg !1829
  br i1 %or.cond, label %FloppyStartDevice_bb263, label %FloppyStartDevice_bb261, !dbg !1829

FloppyStartDevice_bb261:                          ; preds = %FloppyStartDevice_bb260, %FloppyStartDevice_bb266
  %InterfaceType.0 = phi i32 [ %"575", %FloppyStartDevice_bb266 ], [ 0, %FloppyStartDevice_bb260 ]
  %ntStatus.0 = phi i32 [ %.0.i3, %FloppyStartDevice_bb266 ], [ %.0.i2, %FloppyStartDevice_bb260 ]
  %"565" = load i32* @"'MaximumInterfaceType", align 4, !dbg !1831
  %"566" = icmp sge i32 %InterfaceType.0, %"565", !dbg !1831
  br i1 %"566", label %FloppyStartDevice_bb263, label %FloppyStartDevice_bb262, !dbg !1831

FloppyStartDevice_bb262:                          ; preds = %FloppyStartDevice_bb261
  %"567" = call i32 @__VERIFIER_nondet_int() #5, !dbg !1832
  %"568" = icmp eq i32 %"567", 0, !dbg !1834
  %.0.i3 = select i1 %"568", i32 0, i32 -1073741823, !dbg !1834
  %"569" = icmp sge i32 %.0.i3, 0, !dbg !1835
  br i1 %"569", label %FloppyStartDevice_bb263, label %FloppyStartDevice_bb266, !dbg !1835

FloppyStartDevice_bb263:                          ; preds = %FloppyStartDevice_bb260, %FloppyStartDevice_bb261, %FloppyStartDevice_bb262
  %ntStatus.2 = phi i32 [ %ntStatus.0, %FloppyStartDevice_bb261 ], [ %.0.i3, %FloppyStartDevice_bb262 ], [ 0, %FloppyStartDevice_bb260 ]
  %"570" = icmp sge i32 %ntStatus.2, 0, !dbg !1836
  br i1 %"570", label %FloppyStartDevice_bb264, label %FloppyStartDevice_bb267, !dbg !1836

FloppyStartDevice_bb264:                          ; preds = %FloppyStartDevice_bb263
  call void @llvm.dbg.value(metadata !{i32 %"455"}, i64 0, metadata !1837) #5, !dbg !1839
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !1840) #5, !dbg !1841
  call void @llvm.dbg.value(metadata !{i32 %"456"}, i64 0, metadata !1842) #5, !dbg !1843
  %"571" = call i32 @__VERIFIER_nondet_int() #5, !dbg !1844
  call void @llvm.dbg.value(metadata !{i32 %"571"}, i64 0, metadata !1845) #5, !dbg !1846
  %"572" = icmp eq i32 %"571", 0, !dbg !1847
  %.0.i4 = select i1 %"572", i32 0, i32 -1073741808, !dbg !1847
  call void @llvm.dbg.value(metadata !{i32 %.0.i4}, i64 0, metadata !1848), !dbg !1849
  %"573" = icmp sge i32 %.0.i4, 0, !dbg !1850
  br i1 %"573", label %FloppyStartDevice_bb265, label %FloppyStartDevice_bb267, !dbg !1850

FloppyStartDevice_bb265:                          ; preds = %FloppyStartDevice_bb264
  call void @llvm.dbg.value(metadata !{i32 %"456"}, i64 0, metadata !1851) #5, !dbg !1853
  call void @llvm.dbg.value(metadata !420, i64 0, metadata !1854) #5, !dbg !1855
  %"574" = call i32 @__VERIFIER_nondet_int() #5, !dbg !1856
  call void @llvm.dbg.value(metadata !{i32 %"574"}, i64 0, metadata !1857) #5, !dbg !1858
  br label %FloppyStartDevice_bb267, !dbg !1859

FloppyStartDevice_bb266:                          ; preds = %FloppyStartDevice_bb262
  %"575" = add nsw i32 %InterfaceType.0, 1, !dbg !1860
  br label %FloppyStartDevice_bb261, !dbg !1861

FloppyStartDevice_bb267:                          ; preds = %FloppyStartDevice_bb263, %FloppyStartDevice_bb265, %FloppyStartDevice_bb264, %FloppyStartDevice_FlFdcDeviceIo.exit
  %ntStatus.3 = phi i32 [ %.0.i2, %FloppyStartDevice_FlFdcDeviceIo.exit ], [ %ntStatus.2, %FloppyStartDevice_bb264 ], [ %ntStatus.2, %FloppyStartDevice_bb265 ], [ %ntStatus.2, %FloppyStartDevice_bb263 ]
  call void @llvm.dbg.value(metadata !{i32 %ntStatus.3}, i64 0, metadata !1862), !dbg !1863
  store i32 %ntStatus.3, i32* @"'myStatus", align 4, !dbg !1864
  call void @llvm.dbg.value(metadata !{i32 %Irp}, i64 0, metadata !1865) #5, !dbg !1867
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !1868) #5, !dbg !1869
  %"576" = load i32* @"'s", align 4, !dbg !1870
  %"577" = load i32* @"'NP", align 4, !dbg !1870
  %"578" = icmp eq i32 %"576", %"577", !dbg !1870
  br i1 %"578", label %FloppyStartDevice_IofCompleteRequest.exit, label %FloppyStartDevice_bb268, !dbg !1870

FloppyStartDevice_IofCompleteRequest.exit:        ; preds = %FloppyStartDevice_bb267
  %"579" = load i32* @"'DC", align 4, !dbg !1871
  store i32 %"579", i32* @"'s", align 4, !dbg !1871
  ret i32 %ntStatus.3, !dbg !1872

FloppyStartDevice_bb268:                          ; preds = %FloppyStartDevice_bb267
  call void (...)* @__VERIFIER_error() #6, !dbg !1873
  unreachable, !dbg !1873

FloppyStartDevice_bb269:                          ; preds = %FloppyStartDevice_bb252
  call void (...)* @__VERIFIER_error() #6, !dbg !1875
  unreachable, !dbg !1875

FloppyStartDevice_bb270:                          ; preds = %FloppyStartDevice_bb232
  call void (...)* @__VERIFIER_error() #6, !dbg !1877
  unreachable, !dbg !1877
}

; Function Attrs: nounwind uwtable
define i32 @FloppyPnpComplete(i32 %DeviceObject, i32 %Irp, i32 %Context) #0 {
FloppyPnpComplete_bb271:
  call void @llvm.dbg.value(metadata !{i32 %DeviceObject}, i64 0, metadata !1879), !dbg !1880
  call void @llvm.dbg.value(metadata !{i32 %Irp}, i64 0, metadata !1881), !dbg !1882
  call void @llvm.dbg.value(metadata !{i32 %Context}, i64 0, metadata !1883), !dbg !1884
  call void @llvm.dbg.value(metadata !{i32 %Context}, i64 0, metadata !1885) #5, !dbg !1887
  call void @llvm.dbg.value(metadata !420, i64 0, metadata !1888) #5, !dbg !1889
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !1890) #5, !dbg !1891
  %"580" = call i32 @__VERIFIER_nondet_int() #5, !dbg !1892
  call void @llvm.dbg.value(metadata !{i32 %"580"}, i64 0, metadata !1893) #5, !dbg !1894
  store i32 1, i32* @"'setEventCalled", align 4, !dbg !1895
  ret i32 -1073741802, !dbg !1896
}

; Function Attrs: nounwind uwtable
define i32 @FlFdcDeviceIo(i32 %DeviceObject, i32 %Ioctl, i32 %Data) #0 {
FlFdcDeviceIo_bb272:
  call void @llvm.dbg.value(metadata !{i32 %DeviceObject}, i64 0, metadata !1897), !dbg !1898
  call void @llvm.dbg.value(metadata !{i32 %Ioctl}, i64 0, metadata !1899), !dbg !1900
  call void @llvm.dbg.value(metadata !{i32 %Data}, i64 0, metadata !1901), !dbg !1902
  %"581" = call i32 @__VERIFIER_nondet_int(), !dbg !1903
  call void @llvm.dbg.value(metadata !{i32 %"581"}, i64 0, metadata !1904), !dbg !1905
  %"582" = call i32 @__VERIFIER_nondet_int(), !dbg !1906
  call void @llvm.dbg.value(metadata !{i32 %"582"}, i64 0, metadata !1907), !dbg !1908
  %"583" = call i32 @__VERIFIER_nondet_int(), !dbg !1909
  call void @llvm.dbg.value(metadata !{i32 %"583"}, i64 0, metadata !1910), !dbg !1911
  call void @llvm.dbg.value(metadata !{i32 %Ioctl}, i64 0, metadata !1912) #5, !dbg !1914
  call void @llvm.dbg.value(metadata !{i32 %DeviceObject}, i64 0, metadata !1915) #5, !dbg !1916
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !1917) #5, !dbg !1918
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !1919) #5, !dbg !1920
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !1921) #5, !dbg !1922
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !1923) #5, !dbg !1924
  call void @llvm.dbg.value(metadata !420, i64 0, metadata !1925) #5, !dbg !1926
  call void @llvm.dbg.value(metadata !{i32 %"581"}, i64 0, metadata !1927) #5, !dbg !1928
  call void @llvm.dbg.value(metadata !{i32 %"582"}, i64 0, metadata !1929) #5, !dbg !1930
  %"584" = call i32 @__VERIFIER_nondet_int() #5, !dbg !1931
  call void @llvm.dbg.value(metadata !{i32 %"584"}, i64 0, metadata !1932) #5, !dbg !1933
  store i32 1, i32* @"'customIrp", align 4, !dbg !1934
  %"585" = call i32 @__VERIFIER_nondet_int() #5, !dbg !1935
  call void @llvm.dbg.value(metadata !{i32 %"585"}, i64 0, metadata !1936) #5, !dbg !1937
  %"586" = icmp eq i32 %"585", 0, !dbg !1938
  %.0.i = select i1 %"586", i32 %"584", i32 0, !dbg !1938
  call void @llvm.dbg.value(metadata !{i32 %.0.i}, i64 0, metadata !1939), !dbg !1940
  %"587" = icmp eq i32 %.0.i, 0, !dbg !1941
  br i1 %"587", label %FlFdcDeviceIo_bb292, label %FlFdcDeviceIo_bb273, !dbg !1941

FlFdcDeviceIo_bb273:                              ; preds = %FlFdcDeviceIo_bb272
  call void @llvm.dbg.value(metadata !{i32 %Data}, i64 0, metadata !1942), !dbg !1943
  call void @llvm.dbg.value(metadata !{i32 %DeviceObject}, i64 0, metadata !1944) #5, !dbg !1946
  call void @llvm.dbg.value(metadata !{i32 %.0.i}, i64 0, metadata !1947) #5, !dbg !1948
  %"588" = call i32 @__VERIFIER_nondet_int() #5, !dbg !1949
  call void @llvm.dbg.value(metadata !{i32 %"588"}, i64 0, metadata !1950) #5, !dbg !1951
  %"589" = load i32* @"'compRegistered", align 4, !dbg !1952
  %"590" = icmp ne i32 %"589", 0, !dbg !1952
  br i1 %"590", label %FlFdcDeviceIo_bb274, label %FlFdcDeviceIo_bb276, !dbg !1952

FlFdcDeviceIo_bb274:                              ; preds = %FlFdcDeviceIo_bb273
  call void @llvm.dbg.value(metadata !{i32 %DeviceObject}, i64 0, metadata !1953) #5, !dbg !1955
  call void @llvm.dbg.value(metadata !{i32 %.0.i}, i64 0, metadata !1956) #5, !dbg !1957
  call void @llvm.dbg.value(metadata !{i32 %"588"}, i64 0, metadata !1958) #5, !dbg !1959
  call void @llvm.dbg.value(metadata !{i32 %"588"}, i64 0, metadata !1960) #5, !dbg !1962
  call void @llvm.dbg.value(metadata !420, i64 0, metadata !1963) #5, !dbg !1964
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !1965) #5, !dbg !1966
  %"591" = call i32 @__VERIFIER_nondet_int() #5, !dbg !1967
  call void @llvm.dbg.value(metadata !{i32 %"591"}, i64 0, metadata !1968) #5, !dbg !1969
  store i32 1, i32* @"'setEventCalled", align 4, !dbg !1970
  call void @llvm.dbg.value(metadata !430, i64 0, metadata !1971) #5, !dbg !1972
  call void @llvm.dbg.value(metadata !433, i64 0, metadata !1973) #5, !dbg !1974
  %"592" = load i32* @"'s", align 4, !dbg !1975
  %"593" = load i32* @"'NP", align 4, !dbg !1975
  %"594" = icmp eq i32 %"592", %"593", !dbg !1975
  br i1 %"594", label %FlFdcDeviceIo_stubMoreProcessingRequired.exit.i, label %FlFdcDeviceIo_bb275, !dbg !1975

FlFdcDeviceIo_stubMoreProcessingRequired.exit.i:  ; preds = %FlFdcDeviceIo_bb274
  %"595" = load i32* @"'MPR1", align 4, !dbg !1977
  store i32 %"595", i32* @"'s", align 4, !dbg !1977
  br label %FlFdcDeviceIo_bb276, !dbg !1978

FlFdcDeviceIo_bb275:                              ; preds = %FlFdcDeviceIo_bb274
  call void (...)* @__VERIFIER_error() #6, !dbg !1979
  unreachable, !dbg !1979

FlFdcDeviceIo_bb276:                              ; preds = %FlFdcDeviceIo_stubMoreProcessingRequired.exit.i, %FlFdcDeviceIo_bb273
  %"596" = call i32 @__VERIFIER_nondet_int() #5, !dbg !1981
  call void @llvm.dbg.value(metadata !{i32 %"596"}, i64 0, metadata !1982) #5, !dbg !1983
  %"597" = icmp eq i32 %"596", 0, !dbg !1984
  br i1 %"597", label %FlFdcDeviceIo_bb278, label %FlFdcDeviceIo_bb277, !dbg !1984

FlFdcDeviceIo_bb277:                              ; preds = %FlFdcDeviceIo_bb276
  %"598" = call i32 @__VERIFIER_nondet_int() #5, !dbg !1985
  call void @llvm.dbg.value(metadata !{i32 %"598"}, i64 0, metadata !1986) #5, !dbg !1987
  %"599" = icmp eq i32 %"598", 1, !dbg !1988
  call void @llvm.dbg.value(metadata !463, i64 0, metadata !1989) #5, !dbg !1990
  %..i = select i1 %"599", i32 -1073741823, i32 259, !dbg !1988
  br label %FlFdcDeviceIo_bb278, !dbg !1988

FlFdcDeviceIo_bb278:                              ; preds = %FlFdcDeviceIo_bb277, %FlFdcDeviceIo_bb276
  %returnVal2.0.i = phi i32 [ 0, %FlFdcDeviceIo_bb276 ], [ %..i, %FlFdcDeviceIo_bb277 ], !dbg !1945
  %"600" = load i32* @"'s", align 4, !dbg !1991
  %"601" = load i32* @"'NP", align 4, !dbg !1991
  %"602" = icmp eq i32 %"600", %"601", !dbg !1991
  br i1 %"602", label %FlFdcDeviceIo_bb279, label %FlFdcDeviceIo_bb280, !dbg !1991

FlFdcDeviceIo_bb279:                              ; preds = %FlFdcDeviceIo_bb278
  %"603" = load i32* @"'IPC", align 4, !dbg !1992
  store i32 %"603", i32* @"'s", align 4, !dbg !1992
  store i32 %returnVal2.0.i, i32* @"'lowerDriverReturn", align 4, !dbg !1993
  br label %FlFdcDeviceIo_IofCallDriver.exit, !dbg !1994

FlFdcDeviceIo_bb280:                              ; preds = %FlFdcDeviceIo_bb278
  %"604" = load i32* @"'s", align 4, !dbg !1995
  %"605" = load i32* @"'MPR1", align 4, !dbg !1995
  %"606" = icmp eq i32 %"604", %"605", !dbg !1995
  br i1 %"606", label %FlFdcDeviceIo_bb281, label %FlFdcDeviceIo_bb284, !dbg !1995

FlFdcDeviceIo_bb281:                              ; preds = %FlFdcDeviceIo_bb280
  %"607" = icmp eq i32 %returnVal2.0.i, 259, !dbg !1996
  br i1 %"607", label %FlFdcDeviceIo_bb282, label %FlFdcDeviceIo_bb283, !dbg !1996

FlFdcDeviceIo_bb282:                              ; preds = %FlFdcDeviceIo_bb281
  %"608" = load i32* @"'MPR3", align 4, !dbg !1997
  store i32 %"608", i32* @"'s", align 4, !dbg !1997
  store i32 %returnVal2.0.i, i32* @"'lowerDriverReturn", align 4, !dbg !1998
  br label %FlFdcDeviceIo_IofCallDriver.exit, !dbg !1999

FlFdcDeviceIo_bb283:                              ; preds = %FlFdcDeviceIo_bb281
  %"609" = load i32* @"'NP", align 4, !dbg !2000
  store i32 %"609", i32* @"'s", align 4, !dbg !2000
  store i32 %returnVal2.0.i, i32* @"'lowerDriverReturn", align 4, !dbg !2001
  br label %FlFdcDeviceIo_IofCallDriver.exit, !dbg !1945

FlFdcDeviceIo_bb284:                              ; preds = %FlFdcDeviceIo_bb280
  %"610" = load i32* @"'s", align 4, !dbg !2002
  %"611" = load i32* @"'SKIP1", align 4, !dbg !2002
  %"612" = icmp eq i32 %"610", %"611", !dbg !2002
  br i1 %"612", label %FlFdcDeviceIo_bb285, label %FlFdcDeviceIo_bb293, !dbg !2002

FlFdcDeviceIo_bb285:                              ; preds = %FlFdcDeviceIo_bb284
  %"613" = load i32* @"'SKIP2", align 4, !dbg !2003
  store i32 %"613", i32* @"'s", align 4, !dbg !2003
  store i32 %returnVal2.0.i, i32* @"'lowerDriverReturn", align 4, !dbg !2004
  br label %FlFdcDeviceIo_IofCallDriver.exit, !dbg !1945

FlFdcDeviceIo_IofCallDriver.exit:                 ; preds = %FlFdcDeviceIo_bb279, %FlFdcDeviceIo_bb282, %FlFdcDeviceIo_bb283, %FlFdcDeviceIo_bb285
  call void @llvm.dbg.value(metadata !{i32 %returnVal2.0.i}, i64 0, metadata !2005), !dbg !2006
  %"614" = sext i32 %returnVal2.0.i to i64, !dbg !2007
  call void @llvm.dbg.value(metadata !{i64 %"614"}, i64 0, metadata !2008), !dbg !2009
  %"615" = icmp eq i64 %"614", 259, !dbg !2010
  br i1 %"615", label %FlFdcDeviceIo_bb286, label %FlFdcDeviceIo_bb292, !dbg !2010

FlFdcDeviceIo_bb286:                              ; preds = %FlFdcDeviceIo_IofCallDriver.exit
  call void @llvm.dbg.value(metadata !{i32 %"581"}, i64 0, metadata !2011) #5, !dbg !2013
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !2014) #5, !dbg !2015
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !2016) #5, !dbg !2017
  %"616" = load i32* @"'s", align 4, !dbg !2018
  %"617" = load i32* @"'MPR3", align 4, !dbg !2018
  %"618" = icmp eq i32 %"616", %"617", !dbg !2018
  %"619" = load i32* @"'setEventCalled", align 4, !dbg !2012
  %"620" = icmp eq i32 %"619", 1, !dbg !2019
  %or.cond.i = and i1 %"618", %"620", !dbg !2018
  br i1 %or.cond.i, label %FlFdcDeviceIo_bb287, label %FlFdcDeviceIo_bb288, !dbg !2018

FlFdcDeviceIo_bb287:                              ; preds = %FlFdcDeviceIo_bb286
  %"621" = load i32* @"'NP", align 4, !dbg !2020
  store i32 %"621", i32* @"'s", align 4, !dbg !2020
  store i32 0, i32* @"'setEventCalled", align 4, !dbg !2021
  br label %FlFdcDeviceIo_KeWaitForSingleObject.exit, !dbg !2022

FlFdcDeviceIo_bb288:                              ; preds = %FlFdcDeviceIo_bb286
  %"622" = load i32* @"'customIrp", align 4, !dbg !2023
  %"623" = icmp eq i32 %"622", 1, !dbg !2023
  br i1 %"623", label %FlFdcDeviceIo_bb289, label %FlFdcDeviceIo_bb290, !dbg !2023

FlFdcDeviceIo_bb289:                              ; preds = %FlFdcDeviceIo_bb288
  %"624" = load i32* @"'NP", align 4, !dbg !2024
  store i32 %"624", i32* @"'s", align 4, !dbg !2024
  store i32 0, i32* @"'customIrp", align 4, !dbg !2025
  br label %FlFdcDeviceIo_KeWaitForSingleObject.exit, !dbg !2026

FlFdcDeviceIo_bb290:                              ; preds = %FlFdcDeviceIo_bb288
  %"625" = load i32* @"'s", align 4, !dbg !2027
  %"626" = load i32* @"'MPR3", align 4, !dbg !2027
  %"627" = icmp eq i32 %"625", %"626", !dbg !2027
  br i1 %"627", label %FlFdcDeviceIo_bb291, label %FlFdcDeviceIo_KeWaitForSingleObject.exit, !dbg !2027

FlFdcDeviceIo_bb291:                              ; preds = %FlFdcDeviceIo_bb290
  call void (...)* @__VERIFIER_error() #6, !dbg !2028
  unreachable, !dbg !2028

FlFdcDeviceIo_KeWaitForSingleObject.exit:         ; preds = %FlFdcDeviceIo_bb287, %FlFdcDeviceIo_bb289, %FlFdcDeviceIo_bb290
  %"628" = call i32 @__VERIFIER_nondet_int() #5, !dbg !2030
  call void @llvm.dbg.value(metadata !{i32 %"628"}, i64 0, metadata !2031) #5, !dbg !2032
  %"629" = load i32* @"'myStatus", align 4, !dbg !2033
  call void @llvm.dbg.value(metadata !{i32 %"629"}, i64 0, metadata !2005), !dbg !2006
  br label %FlFdcDeviceIo_bb292, !dbg !2034

FlFdcDeviceIo_bb292:                              ; preds = %FlFdcDeviceIo_IofCallDriver.exit, %FlFdcDeviceIo_KeWaitForSingleObject.exit, %FlFdcDeviceIo_bb272
  %.0 = phi i32 [ -1073741670, %FlFdcDeviceIo_bb272 ], [ %"629", %FlFdcDeviceIo_KeWaitForSingleObject.exit ], [ %returnVal2.0.i, %FlFdcDeviceIo_IofCallDriver.exit ]
  ret i32 %.0, !dbg !2035

FlFdcDeviceIo_bb293:                              ; preds = %FlFdcDeviceIo_bb284
  call void (...)* @__VERIFIER_error() #6, !dbg !2036
  unreachable, !dbg !2036
}

; Function Attrs: nounwind uwtable
define void @FloppyProcessQueuedRequests(i32 %DisketteExtension) #0 {
FloppyProcessQueuedRequests_bb294:
  call void @llvm.dbg.value(metadata !{i32 %DisketteExtension}, i64 0, metadata !2038), !dbg !2039
  ret void, !dbg !2040
}

; Function Attrs: nounwind uwtable
define void @stub_driver_init() #0 {
stub_driver_init_bb295:
  %"630" = load i32* @"'NP", align 4, !dbg !2041
  store i32 %"630", i32* @"'s", align 4, !dbg !2041
  store i32 0, i32* @"'pended", align 4, !dbg !2043
  store i32 0, i32* @"'compRegistered", align 4, !dbg !2044
  store i32 0, i32* @"'lowerDriverReturn", align 4, !dbg !2045
  store i32 0, i32* @"'setEventCalled", align 4, !dbg !2046
  store i32 0, i32* @"'customIrp", align 4, !dbg !2047
  ret void, !dbg !2048
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb296:
  %"631" = call i32 @__VERIFIER_nondet_int(), !dbg !2049
  call void @llvm.dbg.value(metadata !{i32 %"631"}, i64 0, metadata !2050), !dbg !2051
  %"632" = call i32 @__VERIFIER_nondet_int(), !dbg !2052
  call void @llvm.dbg.value(metadata !{i32 %"632"}, i64 0, metadata !2053), !dbg !2054
  %"633" = call i32 @__VERIFIER_nondet_int(), !dbg !2055
  call void @llvm.dbg.value(metadata !{i32 %"633"}, i64 0, metadata !2056), !dbg !2057
  store i32 0, i32* @"'FloppyThread", align 4, !dbg !2058
  store i32 0, i32* @"'KernelMode", align 4, !dbg !2059
  store i32 0, i32* @"'Suspended", align 4, !dbg !2060
  store i32 0, i32* @"'Executive", align 4, !dbg !2061
  store i32 0, i32* @"'DiskController", align 4, !dbg !2062
  store i32 0, i32* @"'FloppyDiskPeripheral", align 4, !dbg !2063
  store i32 0, i32* @"'FlConfigCallBack", align 4, !dbg !2064
  store i32 0, i32* @"'MaximumInterfaceType", align 4, !dbg !2065
  store i32 0, i32* @"'MOUNTDEV_MOUNTED_DEVICE_GUID", align 4, !dbg !2066
  store i32 0, i32* @"'myStatus", align 4, !dbg !2067
  store i32 0, i32* @"'s", align 4, !dbg !2068
  store i32 0, i32* @"'UNLOADED", align 4, !dbg !2069
  store i32 0, i32* @"'NP", align 4, !dbg !2070
  store i32 0, i32* @"'DC", align 4, !dbg !2071
  store i32 0, i32* @"'SKIP1", align 4, !dbg !2072
  store i32 0, i32* @"'SKIP2", align 4, !dbg !2073
  store i32 0, i32* @"'MPR1", align 4, !dbg !2074
  store i32 0, i32* @"'MPR3", align 4, !dbg !2075
  store i32 0, i32* @"'IPC", align 4, !dbg !2076
  store i32 0, i32* @"'pended", align 4, !dbg !2077
  store i32 0, i32* @"'compRegistered", align 4, !dbg !2078
  store i32 0, i32* @"'lowerDriverReturn", align 4, !dbg !2079
  store i32 0, i32* @"'setEventCalled", align 4, !dbg !2080
  store i32 0, i32* @"'customIrp", align 4, !dbg !2081
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !2082), !dbg !2083
  call void @llvm.dbg.value(metadata !{i32 %"631"}, i64 0, metadata !2084), !dbg !2085
  store i32 0, i32* @"'UNLOADED", align 4, !dbg !2086
  store i32 1, i32* @"'NP", align 4, !dbg !2090
  store i32 2, i32* @"'DC", align 4, !dbg !2091
  store i32 3, i32* @"'SKIP1", align 4, !dbg !2092
  store i32 4, i32* @"'SKIP2", align 4, !dbg !2093
  store i32 5, i32* @"'MPR1", align 4, !dbg !2094
  store i32 6, i32* @"'MPR3", align 4, !dbg !2095
  store i32 7, i32* @"'IPC", align 4, !dbg !2096
  %"634" = load i32* @"'UNLOADED", align 4, !dbg !2097
  store i32 %"634", i32* @"'s", align 4, !dbg !2097
  store i32 0, i32* @"'pended", align 4, !dbg !2098
  store i32 0, i32* @"'compRegistered", align 4, !dbg !2099
  store i32 0, i32* @"'lowerDriverReturn", align 4, !dbg !2100
  store i32 0, i32* @"'setEventCalled", align 4, !dbg !2101
  store i32 0, i32* @"'customIrp", align 4, !dbg !2102
  %"635" = icmp sge i32 0, 0, !dbg !2103
  br i1 %"635", label %main_bb297, label %main_FloppyPnp.exit, !dbg !2103

main_bb297:                                       ; preds = %main_bb296
  %"636" = load i32* @"'NP", align 4, !dbg !2105
  store i32 %"636", i32* @"'s", align 4, !dbg !2105
  store i32 0, i32* @"'customIrp", align 4, !dbg !2107
  %"637" = load i32* @"'customIrp", align 4, !dbg !2108
  store i32 %"637", i32* @"'setEventCalled", align 4, !dbg !2108
  %"638" = load i32* @"'setEventCalled", align 4, !dbg !2109
  store i32 %"638", i32* @"'lowerDriverReturn", align 4, !dbg !2109
  %"639" = load i32* @"'lowerDriverReturn", align 4, !dbg !2110
  store i32 %"639", i32* @"'compRegistered", align 4, !dbg !2110
  %"640" = load i32* @"'compRegistered", align 4, !dbg !2111
  store i32 %"640", i32* @"'pended", align 4, !dbg !2111
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !2112), !dbg !2113
  store i32 0, i32* @"'myStatus", align 4, !dbg !2114
  %"641" = icmp eq i32 %"632", 0, !dbg !2115
  %. = select i1 %"641", i32 -1073741637, i32 0, !dbg !2115
  call void @llvm.dbg.value(metadata !2117, i64 0, metadata !2112), !dbg !2113
  store i32 %., i32* @"'myStatus", align 4, !dbg !2118
  %"642" = load i32* @"'NP", align 4, !dbg !2120
  store i32 %"642", i32* @"'s", align 4, !dbg !2120
  store i32 0, i32* @"'pended", align 4, !dbg !2123
  store i32 0, i32* @"'compRegistered", align 4, !dbg !2124
  store i32 0, i32* @"'lowerDriverReturn", align 4, !dbg !2125
  store i32 0, i32* @"'setEventCalled", align 4, !dbg !2126
  store i32 0, i32* @"'customIrp", align 4, !dbg !2127
  %"643" = icmp slt i32 0, 0, !dbg !2128
  br i1 %"643", label %main_bb517, label %main_bb298, !dbg !2128

main_bb298:                                       ; preds = %main_bb297
  %"644" = call i32 @__VERIFIER_nondet_int(), !dbg !2131
  call void @llvm.dbg.value(metadata !{i32 %"644"}, i64 0, metadata !2132), !dbg !2133
  %"645" = icmp eq i32 %"644", 3, !dbg !2134
  br i1 %"645", label %main_bb299, label %main_bb517, !dbg !2134

main_bb299:                                       ; preds = %main_bb298
  call void @llvm.dbg.value(metadata !{i32 %"633"}, i64 0, metadata !2136) #5, !dbg !2142
  call void @llvm.dbg.value(metadata !{i32 %"631"}, i64 0, metadata !2143) #5, !dbg !2144
  %"646" = call i32 @__VERIFIER_nondet_int() #5, !dbg !2145
  call void @llvm.dbg.value(metadata !{i32 %"646"}, i64 0, metadata !2146) #5, !dbg !2147
  %"647" = call i32 @__VERIFIER_nondet_int() #5, !dbg !2148
  call void @llvm.dbg.value(metadata !{i32 %"647"}, i64 0, metadata !2149) #5, !dbg !2150
  %"648" = call i32 @__VERIFIER_nondet_int() #5, !dbg !2151
  call void @llvm.dbg.value(metadata !{i32 %"648"}, i64 0, metadata !2152) #5, !dbg !2153
  %"649" = call i32 @__VERIFIER_nondet_int() #5, !dbg !2154
  call void @llvm.dbg.value(metadata !{i32 %"649"}, i64 0, metadata !2155) #5, !dbg !2156
  %"650" = call i32 @__VERIFIER_nondet_int() #5, !dbg !2157
  call void @llvm.dbg.value(metadata !{i32 %"650"}, i64 0, metadata !2158) #5, !dbg !2159
  %"651" = call i32 @__VERIFIER_nondet_int() #5, !dbg !2160
  call void @llvm.dbg.value(metadata !{i32 %"651"}, i64 0, metadata !2161) #5, !dbg !2162
  %"652" = call i32 @__VERIFIER_nondet_int() #5, !dbg !2163
  call void @llvm.dbg.value(metadata !{i32 %"652"}, i64 0, metadata !2164) #5, !dbg !2165
  %"653" = call i32 @__VERIFIER_nondet_int() #5, !dbg !2166
  call void @llvm.dbg.value(metadata !{i32 %"653"}, i64 0, metadata !2167) #5, !dbg !2168
  %"654" = call i32 @__VERIFIER_nondet_int() #5, !dbg !2169
  call void @llvm.dbg.value(metadata !{i32 %"654"}, i64 0, metadata !2170) #5, !dbg !2171
  %"655" = call i32 @__VERIFIER_nondet_int() #5, !dbg !2172
  call void @llvm.dbg.value(metadata !{i32 %"655"}, i64 0, metadata !2173) #5, !dbg !2174
  %"656" = call i32 @__VERIFIER_nondet_int() #5, !dbg !2175
  call void @llvm.dbg.value(metadata !{i32 %"656"}, i64 0, metadata !2176) #5, !dbg !2177
  %"657" = call i32 @__VERIFIER_nondet_int() #5, !dbg !2178
  call void @llvm.dbg.value(metadata !{i32 %"657"}, i64 0, metadata !2179) #5, !dbg !2180
  %"658" = call i32 @__VERIFIER_nondet_int() #5, !dbg !2181
  call void @llvm.dbg.value(metadata !{i32 %"658"}, i64 0, metadata !2182) #5, !dbg !2183
  %"659" = call i32 @__VERIFIER_nondet_int() #5, !dbg !2184
  call void @llvm.dbg.value(metadata !{i32 %"659"}, i64 0, metadata !2185) #5, !dbg !2186
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !2187) #5, !dbg !2188
  %"660" = load i32* @"'PagingReferenceCount", align 4, !dbg !2189
  %"661" = add nsw i32 %"660", 1, !dbg !2189
  store i32 %"661", i32* @"'PagingReferenceCount", align 4, !dbg !2189
  call void @llvm.dbg.value(metadata !{i32 %"646"}, i64 0, metadata !2190) #5, !dbg !2191
  call void @llvm.dbg.value(metadata !{i32 %"647"}, i64 0, metadata !2192) #5, !dbg !2193
  %"662" = icmp ne i32 %"649", 0, !dbg !2194
  br i1 %"662", label %main_bb300, label %main_bb302, !dbg !2194

main_bb300:                                       ; preds = %main_bb299
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !2195) #5, !dbg !2196
  call void @llvm.dbg.value(metadata !274, i64 0, metadata !2197) #5, !dbg !2198
  store i32 -1073741738, i32* @"'myStatus", align 4, !dbg !2199
  call void @llvm.dbg.value(metadata !{i32 %"631"}, i64 0, metadata !2200) #5, !dbg !2202
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !2203) #5, !dbg !2204
  %"663" = load i32* @"'s", align 4, !dbg !2205
  %"664" = load i32* @"'NP", align 4, !dbg !2205
  %"665" = icmp eq i32 %"663", %"664", !dbg !2205
  br i1 %"665", label %main_IofCompleteRequest.exit.i, label %main_bb301, !dbg !2205

main_IofCompleteRequest.exit.i:                   ; preds = %main_bb300
  %"666" = load i32* @"'DC", align 4, !dbg !2206
  store i32 %"666", i32* @"'s", align 4, !dbg !2206
  br label %main_FloppyPnp.exit, !dbg !2207

main_bb301:                                       ; preds = %main_bb300
  call void (...)* @__VERIFIER_error() #6, !dbg !2208
  unreachable, !dbg !2208

main_bb302:                                       ; preds = %main_bb299
  %Pivot52.i = icmp slt i32 %"657", 3, !dbg !2137
  br i1 %Pivot52.i, label %main_NodeBlock41.i, label %main_NodeBlock49.i, !dbg !2137

main_NodeBlock41.i:                               ; preds = %main_bb302
  %Pivot42.i = icmp slt i32 %"657", 1, !dbg !2137
  br i1 %Pivot42.i, label %main_LeafBlock.i, label %main_NodeBlock.i, !dbg !2137

main_LeafBlock.i:                                 ; preds = %main_NodeBlock41.i
  %SwitchLeaf.i = icmp eq i32 %"657", 0, !dbg !2137
  br i1 %SwitchLeaf.i, label %main_bb303, label %main_NewDefault.i, !dbg !2137

main_bb303:                                       ; preds = %main_LeafBlock.i
  call void @llvm.dbg.value(metadata !{i32 %"633"}, i64 0, metadata !2210) #5, !dbg !2212
  call void @llvm.dbg.value(metadata !{i32 %"631"}, i64 0, metadata !2213) #5, !dbg !2214
  %"667" = call i32 @__VERIFIER_nondet_int() #5, !dbg !2215
  call void @llvm.dbg.value(metadata !{i32 %"667"}, i64 0, metadata !2216) #5, !dbg !2217
  %"668" = call i32 @__VERIFIER_nondet_int() #5, !dbg !2218
  call void @llvm.dbg.value(metadata !{i32 %"668"}, i64 0, metadata !2219) #5, !dbg !2220
  %"669" = call i32 @__VERIFIER_nondet_int() #5, !dbg !2221
  call void @llvm.dbg.value(metadata !{i32 %"669"}, i64 0, metadata !2222) #5, !dbg !2223
  %"670" = call i32 @__VERIFIER_nondet_int() #5, !dbg !2224
  call void @llvm.dbg.value(metadata !{i32 %"670"}, i64 0, metadata !2225) #5, !dbg !2226
  %"671" = call i32 @__VERIFIER_nondet_int() #5, !dbg !2227
  call void @llvm.dbg.value(metadata !{i32 %"671"}, i64 0, metadata !2228) #5, !dbg !2229
  %"672" = call i32 @__VERIFIER_nondet_int() #5, !dbg !2230
  call void @llvm.dbg.value(metadata !{i32 %"672"}, i64 0, metadata !2231) #5, !dbg !2232
  %"673" = call i32 @__VERIFIER_nondet_int() #5, !dbg !2233
  call void @llvm.dbg.value(metadata !{i32 %"673"}, i64 0, metadata !2234) #5, !dbg !2235
  %"674" = call i32 @__VERIFIER_nondet_int() #5, !dbg !2236
  call void @llvm.dbg.value(metadata !{i32 %"674"}, i64 0, metadata !2237) #5, !dbg !2238
  %"675" = call i32 @__VERIFIER_nondet_int() #5, !dbg !2239
  call void @llvm.dbg.value(metadata !{i32 %"675"}, i64 0, metadata !2240) #5, !dbg !2241
  %"676" = call i32 @__VERIFIER_nondet_int() #5, !dbg !2242
  call void @llvm.dbg.value(metadata !{i32 %"676"}, i64 0, metadata !2243) #5, !dbg !2244
  %"677" = call i32 @__VERIFIER_nondet_int() #5, !dbg !2245
  call void @llvm.dbg.value(metadata !{i32 %"677"}, i64 0, metadata !2246) #5, !dbg !2247
  %"678" = call i32 @__VERIFIER_nondet_int() #5, !dbg !2248
  call void @llvm.dbg.value(metadata !{i32 %"678"}, i64 0, metadata !2249) #5, !dbg !2250
  %"679" = call i32 @__VERIFIER_nondet_int() #5, !dbg !2251
  call void @llvm.dbg.value(metadata !{i32 %"679"}, i64 0, metadata !2252) #5, !dbg !2253
  %"680" = call i32 @__VERIFIER_nondet_int() #5, !dbg !2254
  call void @llvm.dbg.value(metadata !{i32 %"680"}, i64 0, metadata !2255) #5, !dbg !2256
  %"681" = call i32 @__VERIFIER_nondet_int() #5, !dbg !2257
  call void @llvm.dbg.value(metadata !{i32 %"681"}, i64 0, metadata !2258) #5, !dbg !2259
  %"682" = call i32 @__VERIFIER_nondet_int() #5, !dbg !2260
  call void @llvm.dbg.value(metadata !{i32 %"682"}, i64 0, metadata !2261) #5, !dbg !2262
  call void @llvm.dbg.value(metadata !{i32 %"667"}, i64 0, metadata !2263) #5, !dbg !2264
  call void @llvm.dbg.value(metadata !{i32 %"668"}, i64 0, metadata !2265) #5, !dbg !2266
  call void @llvm.dbg.value(metadata !{i32 %"668"}, i64 0, metadata !2267) #5, !dbg !2268
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !2269) #5, !dbg !2270
  %"683" = load i32* @"'s", align 4, !dbg !2271
  %"684" = load i32* @"'NP", align 4, !dbg !2271
  %"685" = icmp ne i32 %"683", %"684", !dbg !2271
  br i1 %"685", label %main_bb304, label %main_bb305, !dbg !2271

main_bb304:                                       ; preds = %main_bb303
  call void (...)* @__VERIFIER_error() #6, !dbg !2272
  unreachable, !dbg !2272

main_bb305:                                       ; preds = %main_bb303
  %"686" = load i32* @"'compRegistered", align 4, !dbg !2274
  %"687" = icmp ne i32 %"686", 0, !dbg !2274
  br i1 %"687", label %main_bb306, label %main_bb307, !dbg !2274

main_bb306:                                       ; preds = %main_bb305
  call void (...)* @__VERIFIER_error() #6, !dbg !2275
  unreachable, !dbg !2275

main_bb307:                                       ; preds = %main_bb305
  store i32 1, i32* @"'compRegistered", align 4, !dbg !2277
  call void @llvm.dbg.value(metadata !{i32 %"673"}, i64 0, metadata !2278) #5, !dbg !2279
  call void @llvm.dbg.value(metadata !391, i64 0, metadata !2280) #5, !dbg !2281
  call void @llvm.dbg.value(metadata !{i32 %"669"}, i64 0, metadata !2282) #5, !dbg !2284
  call void @llvm.dbg.value(metadata !{i32 %"631"}, i64 0, metadata !2285) #5, !dbg !2286
  %"688" = call i32 @__VERIFIER_nondet_int() #5, !dbg !2287
  call void @llvm.dbg.value(metadata !{i32 %"688"}, i64 0, metadata !2288) #5, !dbg !2289
  %"689" = load i32* @"'compRegistered", align 4, !dbg !2290
  %"690" = icmp ne i32 %"689", 0, !dbg !2290
  br i1 %"690", label %main_bb308, label %main_bb310, !dbg !2290

main_bb308:                                       ; preds = %main_bb307
  call void @llvm.dbg.value(metadata !{i32 %"669"}, i64 0, metadata !2291) #5, !dbg !2293
  call void @llvm.dbg.value(metadata !{i32 %"631"}, i64 0, metadata !2294) #5, !dbg !2295
  call void @llvm.dbg.value(metadata !{i32 %"688"}, i64 0, metadata !2296) #5, !dbg !2297
  call void @llvm.dbg.value(metadata !{i32 %"688"}, i64 0, metadata !2298) #5, !dbg !2300
  call void @llvm.dbg.value(metadata !420, i64 0, metadata !2301) #5, !dbg !2302
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !2303) #5, !dbg !2304
  %"691" = call i32 @__VERIFIER_nondet_int() #5, !dbg !2305
  call void @llvm.dbg.value(metadata !{i32 %"691"}, i64 0, metadata !2306) #5, !dbg !2307
  store i32 1, i32* @"'setEventCalled", align 4, !dbg !2308
  call void @llvm.dbg.value(metadata !430, i64 0, metadata !2309) #5, !dbg !2310
  call void @llvm.dbg.value(metadata !433, i64 0, metadata !2311) #5, !dbg !2312
  %"692" = load i32* @"'s", align 4, !dbg !2313
  %"693" = load i32* @"'NP", align 4, !dbg !2313
  %"694" = icmp eq i32 %"692", %"693", !dbg !2313
  br i1 %"694", label %main_stubMoreProcessingRequired.exit.i.i.i, label %main_bb309, !dbg !2313

main_stubMoreProcessingRequired.exit.i.i.i:       ; preds = %main_bb308
  %"695" = load i32* @"'MPR1", align 4, !dbg !2315
  store i32 %"695", i32* @"'s", align 4, !dbg !2315
  br label %main_bb310, !dbg !2316

main_bb309:                                       ; preds = %main_bb308
  call void (...)* @__VERIFIER_error() #6, !dbg !2317
  unreachable, !dbg !2317

main_bb310:                                       ; preds = %main_stubMoreProcessingRequired.exit.i.i.i, %main_bb307
  %"696" = call i32 @__VERIFIER_nondet_int() #5, !dbg !2319
  call void @llvm.dbg.value(metadata !{i32 %"696"}, i64 0, metadata !2320) #5, !dbg !2321
  %"697" = icmp eq i32 %"696", 0, !dbg !2322
  br i1 %"697", label %main_bb312, label %main_bb311, !dbg !2322

main_bb311:                                       ; preds = %main_bb310
  %"698" = call i32 @__VERIFIER_nondet_int() #5, !dbg !2323
  call void @llvm.dbg.value(metadata !{i32 %"698"}, i64 0, metadata !2324) #5, !dbg !2325
  %"699" = icmp eq i32 %"698", 1, !dbg !2326
  call void @llvm.dbg.value(metadata !463, i64 0, metadata !2327) #5, !dbg !2328
  %..i.i.i = select i1 %"699", i32 -1073741823, i32 259, !dbg !2326
  br label %main_bb312, !dbg !2326

main_bb312:                                       ; preds = %main_bb311, %main_bb310
  %returnVal2.0.i.i.i = phi i32 [ 0, %main_bb310 ], [ %..i.i.i, %main_bb311 ], !dbg !2283
  %"700" = load i32* @"'s", align 4, !dbg !2329
  %"701" = load i32* @"'NP", align 4, !dbg !2329
  %"702" = icmp eq i32 %"700", %"701", !dbg !2329
  br i1 %"702", label %main_bb313, label %main_bb314, !dbg !2329

main_bb313:                                       ; preds = %main_bb312
  %"703" = load i32* @"'IPC", align 4, !dbg !2330
  store i32 %"703", i32* @"'s", align 4, !dbg !2330
  store i32 %returnVal2.0.i.i.i, i32* @"'lowerDriverReturn", align 4, !dbg !2331
  br label %main_IofCallDriver.exit.i.i, !dbg !2332

main_bb314:                                       ; preds = %main_bb312
  %"704" = load i32* @"'s", align 4, !dbg !2333
  %"705" = load i32* @"'MPR1", align 4, !dbg !2333
  %"706" = icmp eq i32 %"704", %"705", !dbg !2333
  br i1 %"706", label %main_bb315, label %main_bb318, !dbg !2333

main_bb315:                                       ; preds = %main_bb314
  %"707" = icmp eq i32 %returnVal2.0.i.i.i, 259, !dbg !2334
  br i1 %"707", label %main_bb316, label %main_bb317, !dbg !2334

main_bb316:                                       ; preds = %main_bb315
  %"708" = load i32* @"'MPR3", align 4, !dbg !2335
  store i32 %"708", i32* @"'s", align 4, !dbg !2335
  store i32 %returnVal2.0.i.i.i, i32* @"'lowerDriverReturn", align 4, !dbg !2336
  br label %main_IofCallDriver.exit.i.i, !dbg !2337

main_bb317:                                       ; preds = %main_bb315
  %"709" = load i32* @"'NP", align 4, !dbg !2338
  store i32 %"709", i32* @"'s", align 4, !dbg !2338
  store i32 %returnVal2.0.i.i.i, i32* @"'lowerDriverReturn", align 4, !dbg !2339
  br label %main_IofCallDriver.exit.i.i, !dbg !2283

main_bb318:                                       ; preds = %main_bb314
  %"710" = load i32* @"'s", align 4, !dbg !2340
  %"711" = load i32* @"'SKIP1", align 4, !dbg !2340
  %"712" = icmp eq i32 %"710", %"711", !dbg !2340
  br i1 %"712", label %main_bb319, label %main_bb356, !dbg !2340

main_bb319:                                       ; preds = %main_bb318
  %"713" = load i32* @"'SKIP2", align 4, !dbg !2341
  store i32 %"713", i32* @"'s", align 4, !dbg !2341
  store i32 %returnVal2.0.i.i.i, i32* @"'lowerDriverReturn", align 4, !dbg !2342
  br label %main_IofCallDriver.exit.i.i, !dbg !2283

main_IofCallDriver.exit.i.i:                      ; preds = %main_bb319, %main_bb317, %main_bb316, %main_bb313
  call void @llvm.dbg.value(metadata !{i32 %returnVal2.0.i.i.i}, i64 0, metadata !2343) #5, !dbg !2344
  %"714" = sext i32 %returnVal2.0.i.i.i to i64, !dbg !2345
  call void @llvm.dbg.value(metadata !{i64 %"714"}, i64 0, metadata !2346) #5, !dbg !2347
  %"715" = icmp eq i64 %"714", 259, !dbg !2348
  br i1 %"715", label %main_bb320, label %main_bb326, !dbg !2348

main_bb320:                                       ; preds = %main_IofCallDriver.exit.i.i
  call void @llvm.dbg.value(metadata !{i32 %"673"}, i64 0, metadata !2349) #5, !dbg !2351
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !2352) #5, !dbg !2353
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !2354) #5, !dbg !2355
  %"716" = load i32* @"'s", align 4, !dbg !2356
  %"717" = load i32* @"'MPR3", align 4, !dbg !2356
  %"718" = icmp eq i32 %"716", %"717", !dbg !2356
  %"719" = load i32* @"'setEventCalled", align 4, !dbg !2350
  %"720" = icmp eq i32 %"719", 1, !dbg !2357
  %or.cond.i.i.i = and i1 %"718", %"720", !dbg !2356
  br i1 %or.cond.i.i.i, label %main_bb321, label %main_bb322, !dbg !2356

main_bb321:                                       ; preds = %main_bb320
  %"721" = load i32* @"'NP", align 4, !dbg !2358
  store i32 %"721", i32* @"'s", align 4, !dbg !2358
  store i32 0, i32* @"'setEventCalled", align 4, !dbg !2359
  br label %main_KeWaitForSingleObject.exit.i.i, !dbg !2360

main_bb322:                                       ; preds = %main_bb320
  %"722" = load i32* @"'customIrp", align 4, !dbg !2361
  %"723" = icmp eq i32 %"722", 1, !dbg !2361
  br i1 %"723", label %main_bb323, label %main_bb324, !dbg !2361

main_bb323:                                       ; preds = %main_bb322
  %"724" = load i32* @"'NP", align 4, !dbg !2362
  store i32 %"724", i32* @"'s", align 4, !dbg !2362
  store i32 0, i32* @"'customIrp", align 4, !dbg !2363
  br label %main_KeWaitForSingleObject.exit.i.i, !dbg !2364

main_bb324:                                       ; preds = %main_bb322
  %"725" = load i32* @"'s", align 4, !dbg !2365
  %"726" = load i32* @"'MPR3", align 4, !dbg !2365
  %"727" = icmp eq i32 %"725", %"726", !dbg !2365
  br i1 %"727", label %main_bb325, label %main_KeWaitForSingleObject.exit.i.i, !dbg !2365

main_bb325:                                       ; preds = %main_bb324
  call void (...)* @__VERIFIER_error() #6, !dbg !2366
  unreachable, !dbg !2366

main_KeWaitForSingleObject.exit.i.i:              ; preds = %main_bb324, %main_bb323, %main_bb321
  %"728" = call i32 @__VERIFIER_nondet_int() #5, !dbg !2368
  call void @llvm.dbg.value(metadata !{i32 %"728"}, i64 0, metadata !2369) #5, !dbg !2370
  br label %main_bb326, !dbg !2371

main_bb326:                                       ; preds = %main_KeWaitForSingleObject.exit.i.i, %main_IofCallDriver.exit.i.i
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !2372) #5, !dbg !2373
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !2374) #5, !dbg !2375
  call void @llvm.dbg.value(metadata !541, i64 0, metadata !2376) #5, !dbg !2377
  call void @llvm.dbg.value(metadata !544, i64 0, metadata !2378) #5, !dbg !2379
  call void @llvm.dbg.value(metadata !547, i64 0, metadata !2380) #5, !dbg !2381
  call void @llvm.dbg.value(metadata !550, i64 0, metadata !2382) #5, !dbg !2383
  call void @llvm.dbg.value(metadata !{i32 %"669"}, i64 0, metadata !2384) #5, !dbg !2386
  call void @llvm.dbg.value(metadata !550, i64 0, metadata !2387) #5, !dbg !2388
  call void @llvm.dbg.value(metadata !{i32 %"674"}, i64 0, metadata !2389) #5, !dbg !2390
  %"729" = call i32 @__VERIFIER_nondet_int() #5, !dbg !2391
  call void @llvm.dbg.value(metadata !{i32 %"729"}, i64 0, metadata !2392) #5, !dbg !2393
  %"730" = call i32 @__VERIFIER_nondet_int() #5, !dbg !2394
  call void @llvm.dbg.value(metadata !{i32 %"730"}, i64 0, metadata !2395) #5, !dbg !2396
  %"731" = call i32 @__VERIFIER_nondet_int() #5, !dbg !2397
  call void @llvm.dbg.value(metadata !{i32 %"731"}, i64 0, metadata !2398) #5, !dbg !2399
  call void @llvm.dbg.value(metadata !550, i64 0, metadata !2400) #5, !dbg !2402
  call void @llvm.dbg.value(metadata !{i32 %"669"}, i64 0, metadata !2403) #5, !dbg !2404
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !2405) #5, !dbg !2406
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !2407) #5, !dbg !2408
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !2409) #5, !dbg !2410
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !2411) #5, !dbg !2412
  call void @llvm.dbg.value(metadata !420, i64 0, metadata !2413) #5, !dbg !2414
  call void @llvm.dbg.value(metadata !{i32 %"729"}, i64 0, metadata !2415) #5, !dbg !2416
  call void @llvm.dbg.value(metadata !{i32 %"730"}, i64 0, metadata !2417) #5, !dbg !2418
  %"732" = call i32 @__VERIFIER_nondet_int() #5, !dbg !2419
  call void @llvm.dbg.value(metadata !{i32 %"732"}, i64 0, metadata !2420) #5, !dbg !2421
  store i32 1, i32* @"'customIrp", align 4, !dbg !2422
  %"733" = call i32 @__VERIFIER_nondet_int() #5, !dbg !2423
  call void @llvm.dbg.value(metadata !{i32 %"733"}, i64 0, metadata !2424) #5, !dbg !2425
  %"734" = icmp eq i32 %"733", 0, !dbg !2426
  %.0.i.i.i.i = select i1 %"734", i32 %"732", i32 0, !dbg !2426
  call void @llvm.dbg.value(metadata !{i32 %.0.i.i.i.i}, i64 0, metadata !2427) #5, !dbg !2428
  %"735" = icmp eq i32 %.0.i.i.i.i, 0, !dbg !2429
  br i1 %"735", label %main_FlFdcDeviceIo.exit.i.i, label %main_bb327, !dbg !2429

main_bb327:                                       ; preds = %main_bb326
  call void @llvm.dbg.value(metadata !{i32 %"674"}, i64 0, metadata !2430) #5, !dbg !2431
  call void @llvm.dbg.value(metadata !{i32 %"669"}, i64 0, metadata !2432) #5, !dbg !2434
  call void @llvm.dbg.value(metadata !{i32 %.0.i.i.i.i}, i64 0, metadata !2435) #5, !dbg !2436
  %"736" = call i32 @__VERIFIER_nondet_int() #5, !dbg !2437
  call void @llvm.dbg.value(metadata !{i32 %"736"}, i64 0, metadata !2438) #5, !dbg !2439
  %"737" = load i32* @"'compRegistered", align 4, !dbg !2440
  %"738" = icmp ne i32 %"737", 0, !dbg !2440
  br i1 %"738", label %main_bb328, label %main_bb330, !dbg !2440

main_bb328:                                       ; preds = %main_bb327
  call void @llvm.dbg.value(metadata !{i32 %"669"}, i64 0, metadata !2441) #5, !dbg !2443
  call void @llvm.dbg.value(metadata !{i32 %.0.i.i.i.i}, i64 0, metadata !2444) #5, !dbg !2445
  call void @llvm.dbg.value(metadata !{i32 %"736"}, i64 0, metadata !2446) #5, !dbg !2447
  call void @llvm.dbg.value(metadata !{i32 %"736"}, i64 0, metadata !2448) #5, !dbg !2450
  call void @llvm.dbg.value(metadata !420, i64 0, metadata !2451) #5, !dbg !2452
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !2453) #5, !dbg !2454
  %"739" = call i32 @__VERIFIER_nondet_int() #5, !dbg !2455
  call void @llvm.dbg.value(metadata !{i32 %"739"}, i64 0, metadata !2456) #5, !dbg !2457
  store i32 1, i32* @"'setEventCalled", align 4, !dbg !2458
  call void @llvm.dbg.value(metadata !430, i64 0, metadata !2459) #5, !dbg !2460
  call void @llvm.dbg.value(metadata !433, i64 0, metadata !2461) #5, !dbg !2462
  %"740" = load i32* @"'s", align 4, !dbg !2463
  %"741" = load i32* @"'NP", align 4, !dbg !2463
  %"742" = icmp eq i32 %"740", %"741", !dbg !2463
  br i1 %"742", label %main_stubMoreProcessingRequired.exit.i.i.i.i, label %main_bb329, !dbg !2463

main_stubMoreProcessingRequired.exit.i.i.i.i:     ; preds = %main_bb328
  %"743" = load i32* @"'MPR1", align 4, !dbg !2465
  store i32 %"743", i32* @"'s", align 4, !dbg !2465
  br label %main_bb330, !dbg !2466

main_bb329:                                       ; preds = %main_bb328
  call void (...)* @__VERIFIER_error() #6, !dbg !2467
  unreachable, !dbg !2467

main_bb330:                                       ; preds = %main_stubMoreProcessingRequired.exit.i.i.i.i, %main_bb327
  %"744" = call i32 @__VERIFIER_nondet_int() #5, !dbg !2469
  call void @llvm.dbg.value(metadata !{i32 %"744"}, i64 0, metadata !2470) #5, !dbg !2471
  %"745" = icmp eq i32 %"744", 0, !dbg !2472
  br i1 %"745", label %main_bb332, label %main_bb331, !dbg !2472

main_bb331:                                       ; preds = %main_bb330
  %"746" = call i32 @__VERIFIER_nondet_int() #5, !dbg !2473
  call void @llvm.dbg.value(metadata !{i32 %"746"}, i64 0, metadata !2474) #5, !dbg !2475
  %"747" = icmp eq i32 %"746", 1, !dbg !2476
  call void @llvm.dbg.value(metadata !463, i64 0, metadata !2477) #5, !dbg !2478
  %..i.i.i.i = select i1 %"747", i32 -1073741823, i32 259, !dbg !2476
  br label %main_bb332, !dbg !2476

main_bb332:                                       ; preds = %main_bb331, %main_bb330
  %returnVal2.0.i.i.i.i = phi i32 [ 0, %main_bb330 ], [ %..i.i.i.i, %main_bb331 ], !dbg !2433
  %"748" = load i32* @"'s", align 4, !dbg !2479
  %"749" = load i32* @"'NP", align 4, !dbg !2479
  %"750" = icmp eq i32 %"748", %"749", !dbg !2479
  br i1 %"750", label %main_bb333, label %main_bb334, !dbg !2479

main_bb333:                                       ; preds = %main_bb332
  %"751" = load i32* @"'IPC", align 4, !dbg !2480
  store i32 %"751", i32* @"'s", align 4, !dbg !2480
  store i32 %returnVal2.0.i.i.i.i, i32* @"'lowerDriverReturn", align 4, !dbg !2481
  br label %main_IofCallDriver.exit.i.i.i, !dbg !2482

main_bb334:                                       ; preds = %main_bb332
  %"752" = load i32* @"'s", align 4, !dbg !2483
  %"753" = load i32* @"'MPR1", align 4, !dbg !2483
  %"754" = icmp eq i32 %"752", %"753", !dbg !2483
  br i1 %"754", label %main_bb335, label %main_bb338, !dbg !2483

main_bb335:                                       ; preds = %main_bb334
  %"755" = icmp eq i32 %returnVal2.0.i.i.i.i, 259, !dbg !2484
  br i1 %"755", label %main_bb336, label %main_bb337, !dbg !2484

main_bb336:                                       ; preds = %main_bb335
  %"756" = load i32* @"'MPR3", align 4, !dbg !2485
  store i32 %"756", i32* @"'s", align 4, !dbg !2485
  store i32 %returnVal2.0.i.i.i.i, i32* @"'lowerDriverReturn", align 4, !dbg !2486
  br label %main_IofCallDriver.exit.i.i.i, !dbg !2487

main_bb337:                                       ; preds = %main_bb335
  %"757" = load i32* @"'NP", align 4, !dbg !2488
  store i32 %"757", i32* @"'s", align 4, !dbg !2488
  store i32 %returnVal2.0.i.i.i.i, i32* @"'lowerDriverReturn", align 4, !dbg !2489
  br label %main_IofCallDriver.exit.i.i.i, !dbg !2433

main_bb338:                                       ; preds = %main_bb334
  %"758" = load i32* @"'s", align 4, !dbg !2490
  %"759" = load i32* @"'SKIP1", align 4, !dbg !2490
  %"760" = icmp eq i32 %"758", %"759", !dbg !2490
  br i1 %"760", label %main_bb339, label %main_bb355, !dbg !2490

main_bb339:                                       ; preds = %main_bb338
  %"761" = load i32* @"'SKIP2", align 4, !dbg !2491
  store i32 %"761", i32* @"'s", align 4, !dbg !2491
  store i32 %returnVal2.0.i.i.i.i, i32* @"'lowerDriverReturn", align 4, !dbg !2492
  br label %main_IofCallDriver.exit.i.i.i, !dbg !2433

main_IofCallDriver.exit.i.i.i:                    ; preds = %main_bb339, %main_bb337, %main_bb336, %main_bb333
  call void @llvm.dbg.value(metadata !{i32 %returnVal2.0.i.i.i.i}, i64 0, metadata !2493) #5, !dbg !2494
  %"762" = sext i32 %returnVal2.0.i.i.i.i to i64, !dbg !2495
  call void @llvm.dbg.value(metadata !{i64 %"762"}, i64 0, metadata !2496) #5, !dbg !2497
  %"763" = icmp eq i64 %"762", 259, !dbg !2498
  br i1 %"763", label %main_bb340, label %main_FlFdcDeviceIo.exit.i.i, !dbg !2498

main_bb340:                                       ; preds = %main_IofCallDriver.exit.i.i.i
  call void @llvm.dbg.value(metadata !{i32 %"729"}, i64 0, metadata !2499) #5, !dbg !2501
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !2502) #5, !dbg !2503
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !2504) #5, !dbg !2505
  %"764" = load i32* @"'s", align 4, !dbg !2506
  %"765" = load i32* @"'MPR3", align 4, !dbg !2506
  %"766" = icmp eq i32 %"764", %"765", !dbg !2506
  %"767" = load i32* @"'setEventCalled", align 4, !dbg !2500
  %"768" = icmp eq i32 %"767", 1, !dbg !2507
  %or.cond.i.i.i.i = and i1 %"766", %"768", !dbg !2506
  br i1 %or.cond.i.i.i.i, label %main_bb341, label %main_bb342, !dbg !2506

main_bb341:                                       ; preds = %main_bb340
  %"769" = load i32* @"'NP", align 4, !dbg !2508
  store i32 %"769", i32* @"'s", align 4, !dbg !2508
  store i32 0, i32* @"'setEventCalled", align 4, !dbg !2509
  br label %main_KeWaitForSingleObject.exit.i.i.i, !dbg !2510

main_bb342:                                       ; preds = %main_bb340
  %"770" = load i32* @"'customIrp", align 4, !dbg !2511
  %"771" = icmp eq i32 %"770", 1, !dbg !2511
  br i1 %"771", label %main_bb343, label %main_bb344, !dbg !2511

main_bb343:                                       ; preds = %main_bb342
  %"772" = load i32* @"'NP", align 4, !dbg !2512
  store i32 %"772", i32* @"'s", align 4, !dbg !2512
  store i32 0, i32* @"'customIrp", align 4, !dbg !2513
  br label %main_KeWaitForSingleObject.exit.i.i.i, !dbg !2514

main_bb344:                                       ; preds = %main_bb342
  %"773" = load i32* @"'s", align 4, !dbg !2515
  %"774" = load i32* @"'MPR3", align 4, !dbg !2515
  %"775" = icmp eq i32 %"773", %"774", !dbg !2515
  br i1 %"775", label %main_bb345, label %main_KeWaitForSingleObject.exit.i.i.i, !dbg !2515

main_bb345:                                       ; preds = %main_bb344
  call void (...)* @__VERIFIER_error() #6, !dbg !2516
  unreachable, !dbg !2516

main_KeWaitForSingleObject.exit.i.i.i:            ; preds = %main_bb344, %main_bb343, %main_bb341
  %"776" = call i32 @__VERIFIER_nondet_int() #5, !dbg !2518
  call void @llvm.dbg.value(metadata !{i32 %"776"}, i64 0, metadata !2519) #5, !dbg !2520
  %"777" = load i32* @"'myStatus", align 4, !dbg !2521
  call void @llvm.dbg.value(metadata !{i32 %"777"}, i64 0, metadata !2493) #5, !dbg !2494
  br label %main_FlFdcDeviceIo.exit.i.i, !dbg !2522

main_FlFdcDeviceIo.exit.i.i:                      ; preds = %main_KeWaitForSingleObject.exit.i.i.i, %main_IofCallDriver.exit.i.i.i, %main_bb326
  %.0.i2.i.i = phi i32 [ -1073741670, %main_bb326 ], [ %"777", %main_KeWaitForSingleObject.exit.i.i.i ], [ %returnVal2.0.i.i.i.i, %main_IofCallDriver.exit.i.i.i ], !dbg !2385
  call void @llvm.dbg.value(metadata !{i32 %.0.i2.i.i}, i64 0, metadata !2343) #5, !dbg !2344
  %"778" = icmp sge i32 %.0.i2.i.i, 0, !dbg !2523
  br i1 %"778", label %main_bb346, label %main_bb353, !dbg !2523

main_bb346:                                       ; preds = %main_FlFdcDeviceIo.exit.i.i
  call void @llvm.dbg.value(metadata !{i32 %"675"}, i64 0, metadata !2524) #5, !dbg !2525
  %"779" = icmp ne i32 %"676", 0, !dbg !2526
  %"780" = icmp ne i32 %"677", 0, !dbg !2527
  %or.cond.i.i = and i1 %"779", %"780", !dbg !2526
  br i1 %or.cond.i.i, label %main_bb349, label %main_bb347, !dbg !2526

main_bb347:                                       ; preds = %main_bb352, %main_bb346
  %InterfaceType.0.i.i = phi i32 [ %"789", %main_bb352 ], [ 0, %main_bb346 ], !dbg !2211
  %ntStatus.0.i.i = phi i32 [ %.0.i3.i.i, %main_bb352 ], [ %.0.i2.i.i, %main_bb346 ], !dbg !2211
  %"781" = load i32* @"'MaximumInterfaceType", align 4, !dbg !2528
  %"782" = icmp sge i32 %InterfaceType.0.i.i, %"781", !dbg !2528
  br i1 %"782", label %main_bb349, label %main_bb348, !dbg !2528

main_bb348:                                       ; preds = %main_bb347
  %"783" = call i32 @__VERIFIER_nondet_int() #5, !dbg !2529
  %"784" = icmp eq i32 %"783", 0, !dbg !2531
  %.0.i3.i.i = select i1 %"784", i32 0, i32 -1073741823, !dbg !2531
  br i1 %"784", label %main_bb349, label %main_bb352, !dbg !2532

main_bb349:                                       ; preds = %main_bb348, %main_bb347, %main_bb346
  %ntStatus.2.i.i = phi i32 [ %ntStatus.0.i.i, %main_bb347 ], [ %.0.i3.i.i, %main_bb348 ], [ 0, %main_bb346 ], !dbg !2211
  %"785" = icmp sge i32 %ntStatus.2.i.i, 0, !dbg !2533
  br i1 %"785", label %main_bb350, label %main_bb353, !dbg !2533

main_bb350:                                       ; preds = %main_bb349
  call void @llvm.dbg.value(metadata !{i32 %"671"}, i64 0, metadata !2534) #5, !dbg !2536
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !2537) #5, !dbg !2538
  call void @llvm.dbg.value(metadata !{i32 %"672"}, i64 0, metadata !2539) #5, !dbg !2540
  %"786" = call i32 @__VERIFIER_nondet_int() #5, !dbg !2541
  call void @llvm.dbg.value(metadata !{i32 %"786"}, i64 0, metadata !2542) #5, !dbg !2543
  %"787" = icmp eq i32 %"786", 0, !dbg !2544
  br i1 %"787", label %main_bb351, label %main_bb353, !dbg !2545

main_bb351:                                       ; preds = %main_bb350
  call void @llvm.dbg.value(metadata !{i32 %"672"}, i64 0, metadata !2546) #5, !dbg !2548
  call void @llvm.dbg.value(metadata !420, i64 0, metadata !2549) #5, !dbg !2550
  %"788" = call i32 @__VERIFIER_nondet_int() #5, !dbg !2551
  call void @llvm.dbg.value(metadata !{i32 %"788"}, i64 0, metadata !2552) #5, !dbg !2553
  br label %main_bb353, !dbg !2554

main_bb352:                                       ; preds = %main_bb348
  %"789" = add nsw i32 %InterfaceType.0.i.i, 1, !dbg !2555
  br label %main_bb347, !dbg !2556

main_bb353:                                       ; preds = %main_bb351, %main_bb350, %main_bb349, %main_FlFdcDeviceIo.exit.i.i
  %ntStatus.3.i.i = phi i32 [ %.0.i2.i.i, %main_FlFdcDeviceIo.exit.i.i ], [ %ntStatus.2.i.i, %main_bb350 ], [ %ntStatus.2.i.i, %main_bb351 ], [ %ntStatus.2.i.i, %main_bb349 ], !dbg !2211
  call void @llvm.dbg.value(metadata !{i32 %ntStatus.3.i.i}, i64 0, metadata !2557) #5, !dbg !2558
  store i32 %ntStatus.3.i.i, i32* @"'myStatus", align 4, !dbg !2559
  call void @llvm.dbg.value(metadata !{i32 %"631"}, i64 0, metadata !2560) #5, !dbg !2562
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !2563) #5, !dbg !2564
  %"790" = load i32* @"'s", align 4, !dbg !2565
  %"791" = load i32* @"'NP", align 4, !dbg !2565
  %"792" = icmp eq i32 %"790", %"791", !dbg !2565
  br i1 %"792", label %main_FloppyStartDevice.exit.i, label %main_bb354, !dbg !2565

main_FloppyStartDevice.exit.i:                    ; preds = %main_bb353
  %"793" = load i32* @"'DC", align 4, !dbg !2566
  store i32 %"793", i32* @"'s", align 4, !dbg !2566
  call void @llvm.dbg.value(metadata !{i32 %ntStatus.3.i.i}, i64 0, metadata !2187) #5, !dbg !2188
  br label %main_IofCallDriver.exit40.i, !dbg !2567

main_bb354:                                       ; preds = %main_bb353
  call void (...)* @__VERIFIER_error() #6, !dbg !2568
  unreachable, !dbg !2568

main_bb355:                                       ; preds = %main_bb338
  call void (...)* @__VERIFIER_error() #6, !dbg !2570
  unreachable, !dbg !2570

main_bb356:                                       ; preds = %main_bb318
  call void (...)* @__VERIFIER_error() #6, !dbg !2572
  unreachable, !dbg !2572

main_NodeBlock.i:                                 ; preds = %main_NodeBlock41.i
  %Pivot.i = icmp slt i32 %"657", 2, !dbg !2137
  br i1 %Pivot.i, label %main_bb392, label %main_bb357, !dbg !2137

main_bb357:                                       ; preds = %main_NodeBlock.i
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !2574) #5, !dbg !2575
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !2158) #5, !dbg !2159
  call void @llvm.dbg.value(metadata !420, i64 0, metadata !2155) #5, !dbg !2156
  %"794" = load i32* @"'s", align 4, !dbg !2576
  %"795" = load i32* @"'NP", align 4, !dbg !2576
  %"796" = icmp eq i32 %"794", %"795", !dbg !2576
  br i1 %"796", label %main_bb358, label %main_bb375, !dbg !2576

main_bb358:                                       ; preds = %main_bb357
  %"797" = load i32* @"'SKIP1", align 4, !dbg !2577
  store i32 %"797", i32* @"'s", align 4, !dbg !2577
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !2197) #5, !dbg !2198
  store i32 0, i32* @"'myStatus", align 4, !dbg !2578
  call void @llvm.dbg.value(metadata !{i32 %"651"}, i64 0, metadata !2579) #5, !dbg !2581
  call void @llvm.dbg.value(metadata !{i32 %"631"}, i64 0, metadata !2582) #5, !dbg !2583
  %"798" = call i32 @__VERIFIER_nondet_int() #5, !dbg !2584
  call void @llvm.dbg.value(metadata !{i32 %"798"}, i64 0, metadata !2585) #5, !dbg !2586
  %"799" = load i32* @"'compRegistered", align 4, !dbg !2587
  %"800" = icmp ne i32 %"799", 0, !dbg !2587
  br i1 %"800", label %main_bb359, label %main_bb361, !dbg !2587

main_bb359:                                       ; preds = %main_bb358
  call void @llvm.dbg.value(metadata !{i32 %"651"}, i64 0, metadata !2588) #5, !dbg !2590
  call void @llvm.dbg.value(metadata !{i32 %"631"}, i64 0, metadata !2591) #5, !dbg !2592
  call void @llvm.dbg.value(metadata !{i32 %"798"}, i64 0, metadata !2593) #5, !dbg !2594
  call void @llvm.dbg.value(metadata !{i32 %"798"}, i64 0, metadata !2595) #5, !dbg !2597
  call void @llvm.dbg.value(metadata !420, i64 0, metadata !2598) #5, !dbg !2599
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !2600) #5, !dbg !2601
  %"801" = call i32 @__VERIFIER_nondet_int() #5, !dbg !2602
  call void @llvm.dbg.value(metadata !{i32 %"801"}, i64 0, metadata !2603) #5, !dbg !2604
  store i32 1, i32* @"'setEventCalled", align 4, !dbg !2605
  call void @llvm.dbg.value(metadata !430, i64 0, metadata !2606) #5, !dbg !2607
  call void @llvm.dbg.value(metadata !433, i64 0, metadata !2608) #5, !dbg !2609
  %"802" = load i32* @"'s", align 4, !dbg !2610
  %"803" = load i32* @"'NP", align 4, !dbg !2610
  %"804" = icmp eq i32 %"802", %"803", !dbg !2610
  br i1 %"804", label %main_stubMoreProcessingRequired.exit.i30.i, label %main_bb360, !dbg !2610

main_stubMoreProcessingRequired.exit.i30.i:       ; preds = %main_bb359
  %"805" = load i32* @"'MPR1", align 4, !dbg !2612
  store i32 %"805", i32* @"'s", align 4, !dbg !2612
  br label %main_bb361, !dbg !2613

main_bb360:                                       ; preds = %main_bb359
  call void (...)* @__VERIFIER_error() #6, !dbg !2614
  unreachable, !dbg !2614

main_bb361:                                       ; preds = %main_stubMoreProcessingRequired.exit.i30.i, %main_bb358
  %"806" = call i32 @__VERIFIER_nondet_int() #5, !dbg !2616
  call void @llvm.dbg.value(metadata !{i32 %"806"}, i64 0, metadata !2617) #5, !dbg !2618
  %"807" = icmp eq i32 %"806", 0, !dbg !2619
  br i1 %"807", label %main_bb363, label %main_bb362, !dbg !2619

main_bb362:                                       ; preds = %main_bb361
  %"808" = call i32 @__VERIFIER_nondet_int() #5, !dbg !2620
  call void @llvm.dbg.value(metadata !{i32 %"808"}, i64 0, metadata !2621) #5, !dbg !2622
  %"809" = icmp eq i32 %"808", 1, !dbg !2623
  call void @llvm.dbg.value(metadata !463, i64 0, metadata !2624) #5, !dbg !2625
  %..i31.i = select i1 %"809", i32 -1073741823, i32 259, !dbg !2623
  br label %main_bb363, !dbg !2623

main_bb363:                                       ; preds = %main_bb362, %main_bb361
  %returnVal2.0.i32.i = phi i32 [ 0, %main_bb361 ], [ %..i31.i, %main_bb362 ], !dbg !2580
  %"810" = load i32* @"'s", align 4, !dbg !2626
  %"811" = load i32* @"'NP", align 4, !dbg !2626
  %"812" = icmp eq i32 %"810", %"811", !dbg !2626
  br i1 %"812", label %main_bb364, label %main_bb365, !dbg !2626

main_bb364:                                       ; preds = %main_bb363
  %"813" = load i32* @"'IPC", align 4, !dbg !2627
  store i32 %"813", i32* @"'s", align 4, !dbg !2627
  store i32 %returnVal2.0.i32.i, i32* @"'lowerDriverReturn", align 4, !dbg !2628
  br label %main_IofCallDriver.exit33.i, !dbg !2629

main_bb365:                                       ; preds = %main_bb363
  %"814" = load i32* @"'s", align 4, !dbg !2630
  %"815" = load i32* @"'MPR1", align 4, !dbg !2630
  %"816" = icmp eq i32 %"814", %"815", !dbg !2630
  br i1 %"816", label %main_bb366, label %main_bb369, !dbg !2630

main_bb366:                                       ; preds = %main_bb365
  %"817" = icmp eq i32 %returnVal2.0.i32.i, 259, !dbg !2631
  br i1 %"817", label %main_bb367, label %main_bb368, !dbg !2631

main_bb367:                                       ; preds = %main_bb366
  %"818" = load i32* @"'MPR3", align 4, !dbg !2632
  store i32 %"818", i32* @"'s", align 4, !dbg !2632
  store i32 %returnVal2.0.i32.i, i32* @"'lowerDriverReturn", align 4, !dbg !2633
  br label %main_IofCallDriver.exit33.i, !dbg !2634

main_bb368:                                       ; preds = %main_bb366
  %"819" = load i32* @"'NP", align 4, !dbg !2635
  store i32 %"819", i32* @"'s", align 4, !dbg !2635
  store i32 %returnVal2.0.i32.i, i32* @"'lowerDriverReturn", align 4, !dbg !2636
  br label %main_IofCallDriver.exit33.i, !dbg !2580

main_bb369:                                       ; preds = %main_bb365
  %"820" = load i32* @"'s", align 4, !dbg !2637
  %"821" = load i32* @"'SKIP1", align 4, !dbg !2637
  %"822" = icmp eq i32 %"820", %"821", !dbg !2637
  br i1 %"822", label %main_bb370, label %main_bb374, !dbg !2637

main_bb370:                                       ; preds = %main_bb369
  %"823" = load i32* @"'SKIP2", align 4, !dbg !2638
  store i32 %"823", i32* @"'s", align 4, !dbg !2638
  store i32 %returnVal2.0.i32.i, i32* @"'lowerDriverReturn", align 4, !dbg !2639
  br label %main_IofCallDriver.exit33.i, !dbg !2580

main_IofCallDriver.exit33.i:                      ; preds = %main_bb370, %main_bb368, %main_bb367, %main_bb364
  call void @llvm.dbg.value(metadata !{i32 %returnVal2.0.i32.i}, i64 0, metadata !2187) #5, !dbg !2188
  %"824" = icmp ne i32 %"653", 0, !dbg !2640
  br i1 %"824", label %main_bb371, label %main_bb372, !dbg !2640

main_bb371:                                       ; preds = %main_IofCallDriver.exit33.i
  call void @llvm.dbg.value(metadata !{i32 %"654"}, i64 0, metadata !2641) #5, !dbg !2643
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !2644) #5, !dbg !2645
  %"825" = call i32 @__VERIFIER_nondet_int() #5, !dbg !2646
  call void @llvm.dbg.value(metadata !{i32 %"825"}, i64 0, metadata !2647) #5, !dbg !2648
  br label %main_bb372, !dbg !2649

main_bb372:                                       ; preds = %main_bb371, %main_IofCallDriver.exit33.i
  %"826" = icmp ne i32 %"655", 0, !dbg !2650
  br i1 %"826", label %main_bb373, label %main_IofCallDriver.exit40.i, !dbg !2650

main_bb373:                                       ; preds = %main_bb372
  call void @llvm.dbg.value(metadata !{i32 %"656"}, i64 0, metadata !2651) #5, !dbg !2653
  %"827" = call i32 @__VERIFIER_nondet_int() #5, !dbg !2654
  call void @llvm.dbg.value(metadata !{i32 %"827"}, i64 0, metadata !2655) #5, !dbg !2656
  br label %main_IofCallDriver.exit40.i, !dbg !2657

main_bb374:                                       ; preds = %main_bb369
  call void (...)* @__VERIFIER_error() #6, !dbg !2658
  unreachable, !dbg !2658

main_bb375:                                       ; preds = %main_bb357
  call void (...)* @__VERIFIER_error() #6, !dbg !2660
  unreachable, !dbg !2660

main_NodeBlock49.i:                               ; preds = %main_bb302
  %Pivot50.i = icmp slt i32 %"657", 5, !dbg !2137
  br i1 %Pivot50.i, label %main_NodeBlock43.i, label %main_NodeBlock47.i, !dbg !2137

main_NodeBlock43.i:                               ; preds = %main_NodeBlock49.i
  %Pivot44.i = icmp slt i32 %"657", 4, !dbg !2137
  br i1 %Pivot44.i, label %main_bb441, label %main_bb376, !dbg !2137

main_bb376:                                       ; preds = %main_NodeBlock43.i
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !2158) #5, !dbg !2159
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !2197) #5, !dbg !2198
  store i32 0, i32* @"'myStatus", align 4, !dbg !2662
  %"828" = load i32* @"'s", align 4, !dbg !2663
  %"829" = load i32* @"'NP", align 4, !dbg !2663
  %"830" = icmp eq i32 %"828", %"829", !dbg !2663
  br i1 %"830", label %main_bb377, label %main_bb391, !dbg !2663

main_bb377:                                       ; preds = %main_bb376
  %"831" = load i32* @"'SKIP1", align 4, !dbg !2664
  store i32 %"831", i32* @"'s", align 4, !dbg !2664
  call void @llvm.dbg.value(metadata !{i32 %"651"}, i64 0, metadata !2665) #5, !dbg !2667
  call void @llvm.dbg.value(metadata !{i32 %"631"}, i64 0, metadata !2668) #5, !dbg !2669
  %"832" = call i32 @__VERIFIER_nondet_int() #5, !dbg !2670
  call void @llvm.dbg.value(metadata !{i32 %"832"}, i64 0, metadata !2671) #5, !dbg !2672
  %"833" = load i32* @"'compRegistered", align 4, !dbg !2673
  %"834" = icmp ne i32 %"833", 0, !dbg !2673
  br i1 %"834", label %main_bb378, label %main_bb380, !dbg !2673

main_bb378:                                       ; preds = %main_bb377
  call void @llvm.dbg.value(metadata !{i32 %"651"}, i64 0, metadata !2674) #5, !dbg !2676
  call void @llvm.dbg.value(metadata !{i32 %"631"}, i64 0, metadata !2677) #5, !dbg !2678
  call void @llvm.dbg.value(metadata !{i32 %"832"}, i64 0, metadata !2679) #5, !dbg !2680
  call void @llvm.dbg.value(metadata !{i32 %"832"}, i64 0, metadata !2681) #5, !dbg !2683
  call void @llvm.dbg.value(metadata !420, i64 0, metadata !2684) #5, !dbg !2685
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !2686) #5, !dbg !2687
  %"835" = call i32 @__VERIFIER_nondet_int() #5, !dbg !2688
  call void @llvm.dbg.value(metadata !{i32 %"835"}, i64 0, metadata !2689) #5, !dbg !2690
  store i32 1, i32* @"'setEventCalled", align 4, !dbg !2691
  call void @llvm.dbg.value(metadata !430, i64 0, metadata !2692) #5, !dbg !2693
  call void @llvm.dbg.value(metadata !433, i64 0, metadata !2694) #5, !dbg !2695
  %"836" = load i32* @"'s", align 4, !dbg !2696
  %"837" = load i32* @"'NP", align 4, !dbg !2696
  %"838" = icmp eq i32 %"836", %"837", !dbg !2696
  br i1 %"838", label %main_stubMoreProcessingRequired.exit.i25.i, label %main_bb379, !dbg !2696

main_stubMoreProcessingRequired.exit.i25.i:       ; preds = %main_bb378
  %"839" = load i32* @"'MPR1", align 4, !dbg !2698
  store i32 %"839", i32* @"'s", align 4, !dbg !2698
  br label %main_bb380, !dbg !2699

main_bb379:                                       ; preds = %main_bb378
  call void (...)* @__VERIFIER_error() #6, !dbg !2700
  unreachable, !dbg !2700

main_bb380:                                       ; preds = %main_stubMoreProcessingRequired.exit.i25.i, %main_bb377
  %"840" = call i32 @__VERIFIER_nondet_int() #5, !dbg !2702
  call void @llvm.dbg.value(metadata !{i32 %"840"}, i64 0, metadata !2703) #5, !dbg !2704
  %"841" = icmp eq i32 %"840", 0, !dbg !2705
  br i1 %"841", label %main_bb382, label %main_bb381, !dbg !2705

main_bb381:                                       ; preds = %main_bb380
  %"842" = call i32 @__VERIFIER_nondet_int() #5, !dbg !2706
  call void @llvm.dbg.value(metadata !{i32 %"842"}, i64 0, metadata !2707) #5, !dbg !2708
  %"843" = icmp eq i32 %"842", 1, !dbg !2709
  call void @llvm.dbg.value(metadata !463, i64 0, metadata !2710) #5, !dbg !2711
  %..i26.i = select i1 %"843", i32 -1073741823, i32 259, !dbg !2709
  br label %main_bb382, !dbg !2709

main_bb382:                                       ; preds = %main_bb381, %main_bb380
  %returnVal2.0.i27.i = phi i32 [ 0, %main_bb380 ], [ %..i26.i, %main_bb381 ], !dbg !2666
  %"844" = load i32* @"'s", align 4, !dbg !2712
  %"845" = load i32* @"'NP", align 4, !dbg !2712
  %"846" = icmp eq i32 %"844", %"845", !dbg !2712
  br i1 %"846", label %main_bb383, label %main_bb384, !dbg !2712

main_bb383:                                       ; preds = %main_bb382
  %"847" = load i32* @"'IPC", align 4, !dbg !2713
  store i32 %"847", i32* @"'s", align 4, !dbg !2713
  store i32 %returnVal2.0.i27.i, i32* @"'lowerDriverReturn", align 4, !dbg !2714
  br label %main_IofCallDriver.exit40.i, !dbg !2715

main_bb384:                                       ; preds = %main_bb382
  %"848" = load i32* @"'s", align 4, !dbg !2716
  %"849" = load i32* @"'MPR1", align 4, !dbg !2716
  %"850" = icmp eq i32 %"848", %"849", !dbg !2716
  br i1 %"850", label %main_bb385, label %main_bb388, !dbg !2716

main_bb385:                                       ; preds = %main_bb384
  %"851" = icmp eq i32 %returnVal2.0.i27.i, 259, !dbg !2717
  br i1 %"851", label %main_bb386, label %main_bb387, !dbg !2717

main_bb386:                                       ; preds = %main_bb385
  %"852" = load i32* @"'MPR3", align 4, !dbg !2718
  store i32 %"852", i32* @"'s", align 4, !dbg !2718
  store i32 %returnVal2.0.i27.i, i32* @"'lowerDriverReturn", align 4, !dbg !2719
  br label %main_IofCallDriver.exit40.i, !dbg !2720

main_bb387:                                       ; preds = %main_bb385
  %"853" = load i32* @"'NP", align 4, !dbg !2721
  store i32 %"853", i32* @"'s", align 4, !dbg !2721
  store i32 %returnVal2.0.i27.i, i32* @"'lowerDriverReturn", align 4, !dbg !2722
  br label %main_IofCallDriver.exit40.i, !dbg !2666

main_bb388:                                       ; preds = %main_bb384
  %"854" = load i32* @"'s", align 4, !dbg !2723
  %"855" = load i32* @"'SKIP1", align 4, !dbg !2723
  %"856" = icmp eq i32 %"854", %"855", !dbg !2723
  br i1 %"856", label %main_bb389, label %main_bb390, !dbg !2723

main_bb389:                                       ; preds = %main_bb388
  %"857" = load i32* @"'SKIP2", align 4, !dbg !2724
  store i32 %"857", i32* @"'s", align 4, !dbg !2724
  store i32 %returnVal2.0.i27.i, i32* @"'lowerDriverReturn", align 4, !dbg !2725
  br label %main_IofCallDriver.exit40.i, !dbg !2666

main_bb390:                                       ; preds = %main_bb388
  call void (...)* @__VERIFIER_error() #6, !dbg !2726
  unreachable, !dbg !2726

main_bb391:                                       ; preds = %main_bb376
  call void (...)* @__VERIFIER_error() #6, !dbg !2728
  unreachable, !dbg !2728

main_NodeBlock47.i:                               ; preds = %main_NodeBlock49.i
  %Pivot48.i = icmp slt i32 %"657", 6, !dbg !2137
  br i1 %Pivot48.i, label %main_bb392, label %main_LeafBlock45.i, !dbg !2137

main_bb392:                                       ; preds = %main_NodeBlock47.i, %main_NodeBlock.i
  %"858" = icmp ne i32 %"650", 0, !dbg !2730
  br i1 %"858", label %main_bb393, label %main_bb425, !dbg !2730

main_bb393:                                       ; preds = %main_bb392
  call void @llvm.dbg.value(metadata !420, i64 0, metadata !2574) #5, !dbg !2575
  call void @llvm.dbg.value(metadata !{i32 %"631"}, i64 0, metadata !2731) #5, !dbg !2733
  call void @llvm.dbg.value(metadata !{i32 %"646"}, i64 0, metadata !2734) #5, !dbg !2735
  %"859" = call i32 @__VERIFIER_nondet_int() #5, !dbg !2736
  call void @llvm.dbg.value(metadata !{i32 %"859"}, i64 0, metadata !2737) #5, !dbg !2738
  %"860" = call i32 @__VERIFIER_nondet_int() #5, !dbg !2739
  call void @llvm.dbg.value(metadata !{i32 %"860"}, i64 0, metadata !2740) #5, !dbg !2741
  %"861" = call i32 @__VERIFIER_nondet_int() #5, !dbg !2742
  call void @llvm.dbg.value(metadata !{i32 %"861"}, i64 0, metadata !2743) #5, !dbg !2744
  %"862" = call i32 @__VERIFIER_nondet_int() #5, !dbg !2745
  call void @llvm.dbg.value(metadata !{i32 %"862"}, i64 0, metadata !2746) #5, !dbg !2747
  %"863" = call i32 @__VERIFIER_nondet_int() #5, !dbg !2748
  call void @llvm.dbg.value(metadata !{i32 %"863"}, i64 0, metadata !2749) #5, !dbg !2750
  %"864" = icmp eq i32 %"860", 1, !dbg !2751
  br i1 %"864", label %main_bb394, label %main_bb395, !dbg !2751

main_bb394:                                       ; preds = %main_bb393
  store i32 -1073741101, i32* @"'myStatus", align 4, !dbg !2752
  call void @llvm.dbg.value(metadata !136, i64 0, metadata !2753) #5, !dbg !2754
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !2755) #5, !dbg !2756
  br label %main_FlQueueIrpToThread.exit.i, !dbg !2757

main_bb395:                                       ; preds = %main_bb393
  %"865" = add nsw i32 %"861", 1, !dbg !2758
  call void @llvm.dbg.value(metadata !{i32 %"865"}, i64 0, metadata !2743) #5, !dbg !2744
  %"866" = icmp eq i32 %"865", 0, !dbg !2759
  br i1 %"866", label %main_bb396, label %main_bb399, !dbg !2759

main_bb396:                                       ; preds = %main_bb395
  %"867" = load i32* @"'PagingReferenceCount", align 4, !dbg !2760
  %"868" = add nsw i32 %"867", 1, !dbg !2760
  store i32 %"868", i32* @"'PagingReferenceCount", align 4, !dbg !2760
  call void @llvm.dbg.value(metadata !{i32 %"859"}, i64 0, metadata !2761) #5, !dbg !2763
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !2764) #5, !dbg !2765
  call void @llvm.dbg.value(metadata !{i32 %"863"}, i64 0, metadata !2766) #5, !dbg !2767
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !2768) #5, !dbg !2769
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !2770) #5, !dbg !2771
  call void @llvm.dbg.value(metadata !{i32 %"646"}, i64 0, metadata !2772) #5, !dbg !2773
  %"869" = call i32 @__VERIFIER_nondet_int() #5, !dbg !2774
  call void @llvm.dbg.value(metadata !{i32 %"869"}, i64 0, metadata !2775) #5, !dbg !2776
  %"870" = icmp eq i32 %"869", 0, !dbg !2777
  %.0.i.i.i = select i1 %"870", i32 0, i32 -1073741823, !dbg !2777
  call void @llvm.dbg.value(metadata !{i32 %.0.i.i.i}, i64 0, metadata !2778) #5, !dbg !2779
  %"871" = icmp slt i32 %.0.i.i.i, 0, !dbg !2780
  br i1 %"871", label %main_bb397, label %main_bb398, !dbg !2780

main_bb397:                                       ; preds = %main_bb396
  call void @llvm.dbg.value(metadata !173, i64 0, metadata !2743) #5, !dbg !2744
  %"872" = load i32* @"'PagingReferenceCount", align 4, !dbg !2781
  %"873" = add nsw i32 %"872", -1, !dbg !2781
  store i32 %"873", i32* @"'PagingReferenceCount", align 4, !dbg !2781
  br label %main_FlQueueIrpToThread.exit.i, !dbg !2782

main_bb398:                                       ; preds = %main_bb396
  call void @llvm.dbg.value(metadata !{i32 %"859"}, i64 0, metadata !2783) #5, !dbg !2785
  call void @llvm.dbg.value(metadata !181, i64 0, metadata !2786) #5, !dbg !2787
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !2788) #5, !dbg !2789
  call void @llvm.dbg.value(metadata !{i32 %"862"}, i64 0, metadata !2790) #5, !dbg !2791
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !2792) #5, !dbg !2793
  %"874" = call i32 @__VERIFIER_nondet_int() #5, !dbg !2794
  call void @llvm.dbg.value(metadata !{i32 %"874"}, i64 0, metadata !2795) #5, !dbg !2796
  %"875" = icmp eq i32 %"874", 0, !dbg !2797
  %.0.i1.i.i = select i1 %"875", i32 0, i32 -1073741823, !dbg !2797
  call void @llvm.dbg.value(metadata !{i32 %.0.i1.i.i}, i64 0, metadata !2778) #5, !dbg !2779
  call void @llvm.dbg.value(metadata !{i32 %"859"}, i64 0, metadata !2798) #5, !dbg !2800
  %"876" = call i32 @__VERIFIER_nondet_int() #5, !dbg !2801
  call void @llvm.dbg.value(metadata !{i32 %"876"}, i64 0, metadata !2802) #5, !dbg !2803
  %"877" = icmp slt i32 %.0.i1.i.i, 0, !dbg !2804
  br i1 %"877", label %main_FlQueueIrpToThread.exit.i, label %main_bb399, !dbg !2804

main_bb399:                                       ; preds = %main_bb398, %main_bb395
  %"878" = load i32* @"'pended", align 4, !dbg !2805
  %"879" = icmp eq i32 %"878", 0, !dbg !2805
  br i1 %"879", label %main_bb400, label %main_bb424, !dbg !2805

main_bb400:                                       ; preds = %main_bb399
  store i32 1, i32* @"'pended", align 4, !dbg !2806
  br label %main_FlQueueIrpToThread.exit.i, !dbg !2807

main_FlQueueIrpToThread.exit.i:                   ; preds = %main_bb400, %main_bb398, %main_bb397, %main_bb394
  %.0.i.i = phi i32 [ -1073741101, %main_bb394 ], [ %.0.i.i.i, %main_bb397 ], [ 259, %main_bb400 ], [ %.0.i1.i.i, %main_bb398 ], !dbg !2732
  call void @llvm.dbg.value(metadata !{i32 %.0.i.i}, i64 0, metadata !2187) #5, !dbg !2188
  %"880" = sext i32 %.0.i.i to i64, !dbg !2808
  call void @llvm.dbg.value(metadata !{i64 %"880"}, i64 0, metadata !2809) #5, !dbg !2810
  %"881" = icmp eq i64 %"880", 259, !dbg !2811
  br i1 %"881", label %main_bb401, label %main_bb422, !dbg !2811

main_bb401:                                       ; preds = %main_FlQueueIrpToThread.exit.i
  call void @llvm.dbg.value(metadata !{i32 %"652"}, i64 0, metadata !2812) #5, !dbg !2814
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !2815) #5, !dbg !2816
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !2817) #5, !dbg !2818
  %"882" = load i32* @"'s", align 4, !dbg !2819
  %"883" = load i32* @"'MPR3", align 4, !dbg !2819
  %"884" = icmp eq i32 %"882", %"883", !dbg !2819
  %"885" = load i32* @"'setEventCalled", align 4, !dbg !2813
  %"886" = icmp eq i32 %"885", 1, !dbg !2820
  %or.cond.i1.i = and i1 %"884", %"886", !dbg !2819
  br i1 %or.cond.i1.i, label %main_bb402, label %main_bb403, !dbg !2819

main_bb402:                                       ; preds = %main_bb401
  %"887" = load i32* @"'NP", align 4, !dbg !2821
  store i32 %"887", i32* @"'s", align 4, !dbg !2821
  store i32 0, i32* @"'setEventCalled", align 4, !dbg !2822
  br label %main_KeWaitForSingleObject.exit.i, !dbg !2823

main_bb403:                                       ; preds = %main_bb401
  %"888" = load i32* @"'customIrp", align 4, !dbg !2824
  %"889" = icmp eq i32 %"888", 1, !dbg !2824
  br i1 %"889", label %main_bb404, label %main_bb405, !dbg !2824

main_bb404:                                       ; preds = %main_bb403
  %"890" = load i32* @"'NP", align 4, !dbg !2825
  store i32 %"890", i32* @"'s", align 4, !dbg !2825
  store i32 0, i32* @"'customIrp", align 4, !dbg !2826
  br label %main_KeWaitForSingleObject.exit.i, !dbg !2827

main_bb405:                                       ; preds = %main_bb403
  %"891" = load i32* @"'s", align 4, !dbg !2828
  %"892" = load i32* @"'MPR3", align 4, !dbg !2828
  %"893" = icmp eq i32 %"891", %"892", !dbg !2828
  br i1 %"893", label %main_bb406, label %main_KeWaitForSingleObject.exit.i, !dbg !2828

main_bb406:                                       ; preds = %main_bb405
  call void (...)* @__VERIFIER_error() #6, !dbg !2829
  unreachable, !dbg !2829

main_KeWaitForSingleObject.exit.i:                ; preds = %main_bb405, %main_bb404, %main_bb402
  %"894" = call i32 @__VERIFIER_nondet_int() #5, !dbg !2831
  call void @llvm.dbg.value(metadata !{i32 %"894"}, i64 0, metadata !2832) #5, !dbg !2833
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !2164) #5, !dbg !2165
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !2197) #5, !dbg !2198
  store i32 0, i32* @"'myStatus", align 4, !dbg !2834
  %"895" = load i32* @"'s", align 4, !dbg !2835
  %"896" = load i32* @"'NP", align 4, !dbg !2835
  %"897" = icmp eq i32 %"895", %"896", !dbg !2835
  br i1 %"897", label %main_bb407, label %main_bb421, !dbg !2835

main_bb407:                                       ; preds = %main_KeWaitForSingleObject.exit.i
  %"898" = load i32* @"'SKIP1", align 4, !dbg !2836
  store i32 %"898", i32* @"'s", align 4, !dbg !2836
  call void @llvm.dbg.value(metadata !{i32 %"651"}, i64 0, metadata !2837) #5, !dbg !2839
  call void @llvm.dbg.value(metadata !{i32 %"631"}, i64 0, metadata !2840) #5, !dbg !2841
  %"899" = call i32 @__VERIFIER_nondet_int() #5, !dbg !2842
  call void @llvm.dbg.value(metadata !{i32 %"899"}, i64 0, metadata !2843) #5, !dbg !2844
  %"900" = load i32* @"'compRegistered", align 4, !dbg !2845
  %"901" = icmp ne i32 %"900", 0, !dbg !2845
  br i1 %"901", label %main_bb408, label %main_bb410, !dbg !2845

main_bb408:                                       ; preds = %main_bb407
  call void @llvm.dbg.value(metadata !{i32 %"651"}, i64 0, metadata !2846) #5, !dbg !2848
  call void @llvm.dbg.value(metadata !{i32 %"631"}, i64 0, metadata !2849) #5, !dbg !2850
  call void @llvm.dbg.value(metadata !{i32 %"899"}, i64 0, metadata !2851) #5, !dbg !2852
  call void @llvm.dbg.value(metadata !{i32 %"899"}, i64 0, metadata !2853) #5, !dbg !2855
  call void @llvm.dbg.value(metadata !420, i64 0, metadata !2856) #5, !dbg !2857
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !2858) #5, !dbg !2859
  %"902" = call i32 @__VERIFIER_nondet_int() #5, !dbg !2860
  call void @llvm.dbg.value(metadata !{i32 %"902"}, i64 0, metadata !2861) #5, !dbg !2862
  store i32 1, i32* @"'setEventCalled", align 4, !dbg !2863
  call void @llvm.dbg.value(metadata !430, i64 0, metadata !2864) #5, !dbg !2865
  call void @llvm.dbg.value(metadata !433, i64 0, metadata !2866) #5, !dbg !2867
  %"903" = load i32* @"'s", align 4, !dbg !2868
  %"904" = load i32* @"'NP", align 4, !dbg !2868
  %"905" = icmp eq i32 %"903", %"904", !dbg !2868
  br i1 %"905", label %main_stubMoreProcessingRequired.exit.i4.i, label %main_bb409, !dbg !2868

main_stubMoreProcessingRequired.exit.i4.i:        ; preds = %main_bb408
  %"906" = load i32* @"'MPR1", align 4, !dbg !2870
  store i32 %"906", i32* @"'s", align 4, !dbg !2870
  br label %main_bb410, !dbg !2871

main_bb409:                                       ; preds = %main_bb408
  call void (...)* @__VERIFIER_error() #6, !dbg !2872
  unreachable, !dbg !2872

main_bb410:                                       ; preds = %main_stubMoreProcessingRequired.exit.i4.i, %main_bb407
  %"907" = call i32 @__VERIFIER_nondet_int() #5, !dbg !2874
  call void @llvm.dbg.value(metadata !{i32 %"907"}, i64 0, metadata !2875) #5, !dbg !2876
  %"908" = icmp eq i32 %"907", 0, !dbg !2877
  br i1 %"908", label %main_bb412, label %main_bb411, !dbg !2877

main_bb411:                                       ; preds = %main_bb410
  %"909" = call i32 @__VERIFIER_nondet_int() #5, !dbg !2878
  call void @llvm.dbg.value(metadata !{i32 %"909"}, i64 0, metadata !2879) #5, !dbg !2880
  %"910" = icmp eq i32 %"909", 1, !dbg !2881
  call void @llvm.dbg.value(metadata !463, i64 0, metadata !2882) #5, !dbg !2883
  %..i5.i = select i1 %"910", i32 -1073741823, i32 259, !dbg !2881
  br label %main_bb412, !dbg !2881

main_bb412:                                       ; preds = %main_bb411, %main_bb410
  %returnVal2.0.i6.i = phi i32 [ 0, %main_bb410 ], [ %..i5.i, %main_bb411 ], !dbg !2838
  %"911" = load i32* @"'s", align 4, !dbg !2884
  %"912" = load i32* @"'NP", align 4, !dbg !2884
  %"913" = icmp eq i32 %"911", %"912", !dbg !2884
  br i1 %"913", label %main_bb413, label %main_bb414, !dbg !2884

main_bb413:                                       ; preds = %main_bb412
  %"914" = load i32* @"'IPC", align 4, !dbg !2885
  store i32 %"914", i32* @"'s", align 4, !dbg !2885
  store i32 %returnVal2.0.i6.i, i32* @"'lowerDriverReturn", align 4, !dbg !2886
  br label %main_IofCallDriver.exit40.i, !dbg !2887

main_bb414:                                       ; preds = %main_bb412
  %"915" = load i32* @"'s", align 4, !dbg !2888
  %"916" = load i32* @"'MPR1", align 4, !dbg !2888
  %"917" = icmp eq i32 %"915", %"916", !dbg !2888
  br i1 %"917", label %main_bb415, label %main_bb418, !dbg !2888

main_bb415:                                       ; preds = %main_bb414
  %"918" = icmp eq i32 %returnVal2.0.i6.i, 259, !dbg !2889
  br i1 %"918", label %main_bb416, label %main_bb417, !dbg !2889

main_bb416:                                       ; preds = %main_bb415
  %"919" = load i32* @"'MPR3", align 4, !dbg !2890
  store i32 %"919", i32* @"'s", align 4, !dbg !2890
  store i32 %returnVal2.0.i6.i, i32* @"'lowerDriverReturn", align 4, !dbg !2891
  br label %main_IofCallDriver.exit40.i, !dbg !2892

main_bb417:                                       ; preds = %main_bb415
  %"920" = load i32* @"'NP", align 4, !dbg !2893
  store i32 %"920", i32* @"'s", align 4, !dbg !2893
  store i32 %returnVal2.0.i6.i, i32* @"'lowerDriverReturn", align 4, !dbg !2894
  br label %main_IofCallDriver.exit40.i, !dbg !2838

main_bb418:                                       ; preds = %main_bb414
  %"921" = load i32* @"'s", align 4, !dbg !2895
  %"922" = load i32* @"'SKIP1", align 4, !dbg !2895
  %"923" = icmp eq i32 %"921", %"922", !dbg !2895
  br i1 %"923", label %main_bb419, label %main_bb420, !dbg !2895

main_bb419:                                       ; preds = %main_bb418
  %"924" = load i32* @"'SKIP2", align 4, !dbg !2896
  store i32 %"924", i32* @"'s", align 4, !dbg !2896
  store i32 %returnVal2.0.i6.i, i32* @"'lowerDriverReturn", align 4, !dbg !2897
  br label %main_IofCallDriver.exit40.i, !dbg !2838

main_bb420:                                       ; preds = %main_bb418
  call void (...)* @__VERIFIER_error() #6, !dbg !2898
  unreachable, !dbg !2898

main_bb421:                                       ; preds = %main_KeWaitForSingleObject.exit.i
  call void (...)* @__VERIFIER_error() #6, !dbg !2900
  unreachable, !dbg !2900

main_bb422:                                       ; preds = %main_FlQueueIrpToThread.exit.i
  call void @llvm.dbg.value(metadata !1135, i64 0, metadata !2187) #5, !dbg !2188
  call void @llvm.dbg.value(metadata !1135, i64 0, metadata !2197) #5, !dbg !2198
  store i32 -1073741823, i32* @"'myStatus", align 4, !dbg !2902
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !2195) #5, !dbg !2196
  call void @llvm.dbg.value(metadata !{i32 %"631"}, i64 0, metadata !2903) #5, !dbg !2905
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !2906) #5, !dbg !2907
  %"925" = load i32* @"'s", align 4, !dbg !2908
  %"926" = load i32* @"'NP", align 4, !dbg !2908
  %"927" = icmp eq i32 %"925", %"926", !dbg !2908
  br i1 %"927", label %main_IofCompleteRequest.exit8.i, label %main_bb423, !dbg !2908

main_IofCompleteRequest.exit8.i:                  ; preds = %main_bb422
  %"928" = load i32* @"'DC", align 4, !dbg !2909
  store i32 %"928", i32* @"'s", align 4, !dbg !2909
  br label %main_IofCallDriver.exit40.i, !dbg !2137

main_bb423:                                       ; preds = %main_bb422
  call void (...)* @__VERIFIER_error() #6, !dbg !2910
  unreachable, !dbg !2910

main_bb424:                                       ; preds = %main_bb399
  call void (...)* @__VERIFIER_error() #6, !dbg !2912
  unreachable, !dbg !2912

main_bb425:                                       ; preds = %main_bb392
  %"929" = load i32* @"'s", align 4, !dbg !2914
  %"930" = load i32* @"'NP", align 4, !dbg !2914
  %"931" = icmp eq i32 %"929", %"930", !dbg !2914
  br i1 %"931", label %main_bb426, label %main_bb440, !dbg !2914

main_bb426:                                       ; preds = %main_bb425
  %"932" = load i32* @"'SKIP1", align 4, !dbg !2915
  store i32 %"932", i32* @"'s", align 4, !dbg !2915
  call void @llvm.dbg.value(metadata !{i32 %"651"}, i64 0, metadata !2916) #5, !dbg !2918
  call void @llvm.dbg.value(metadata !{i32 %"631"}, i64 0, metadata !2919) #5, !dbg !2920
  %"933" = call i32 @__VERIFIER_nondet_int() #5, !dbg !2921
  call void @llvm.dbg.value(metadata !{i32 %"933"}, i64 0, metadata !2922) #5, !dbg !2923
  %"934" = load i32* @"'compRegistered", align 4, !dbg !2924
  %"935" = icmp ne i32 %"934", 0, !dbg !2924
  br i1 %"935", label %main_bb427, label %main_bb429, !dbg !2924

main_bb427:                                       ; preds = %main_bb426
  call void @llvm.dbg.value(metadata !{i32 %"651"}, i64 0, metadata !2925) #5, !dbg !2927
  call void @llvm.dbg.value(metadata !{i32 %"631"}, i64 0, metadata !2928) #5, !dbg !2929
  call void @llvm.dbg.value(metadata !{i32 %"933"}, i64 0, metadata !2930) #5, !dbg !2931
  call void @llvm.dbg.value(metadata !{i32 %"933"}, i64 0, metadata !2932) #5, !dbg !2934
  call void @llvm.dbg.value(metadata !420, i64 0, metadata !2935) #5, !dbg !2936
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !2937) #5, !dbg !2938
  %"936" = call i32 @__VERIFIER_nondet_int() #5, !dbg !2939
  call void @llvm.dbg.value(metadata !{i32 %"936"}, i64 0, metadata !2940) #5, !dbg !2941
  store i32 1, i32* @"'setEventCalled", align 4, !dbg !2942
  call void @llvm.dbg.value(metadata !430, i64 0, metadata !2943) #5, !dbg !2944
  call void @llvm.dbg.value(metadata !433, i64 0, metadata !2945) #5, !dbg !2946
  %"937" = load i32* @"'s", align 4, !dbg !2947
  %"938" = load i32* @"'NP", align 4, !dbg !2947
  %"939" = icmp eq i32 %"937", %"938", !dbg !2947
  br i1 %"939", label %main_stubMoreProcessingRequired.exit.i.i, label %main_bb428, !dbg !2947

main_stubMoreProcessingRequired.exit.i.i:         ; preds = %main_bb427
  %"940" = load i32* @"'MPR1", align 4, !dbg !2949
  store i32 %"940", i32* @"'s", align 4, !dbg !2949
  br label %main_bb429, !dbg !2950

main_bb428:                                       ; preds = %main_bb427
  call void (...)* @__VERIFIER_error() #6, !dbg !2951
  unreachable, !dbg !2951

main_bb429:                                       ; preds = %main_stubMoreProcessingRequired.exit.i.i, %main_bb426
  %"941" = call i32 @__VERIFIER_nondet_int() #5, !dbg !2953
  call void @llvm.dbg.value(metadata !{i32 %"941"}, i64 0, metadata !2954) #5, !dbg !2955
  %"942" = icmp eq i32 %"941", 0, !dbg !2956
  br i1 %"942", label %main_bb431, label %main_bb430, !dbg !2956

main_bb430:                                       ; preds = %main_bb429
  %"943" = call i32 @__VERIFIER_nondet_int() #5, !dbg !2957
  call void @llvm.dbg.value(metadata !{i32 %"943"}, i64 0, metadata !2958) #5, !dbg !2959
  %"944" = icmp eq i32 %"943", 1, !dbg !2960
  call void @llvm.dbg.value(metadata !463, i64 0, metadata !2961) #5, !dbg !2962
  %..i.i = select i1 %"944", i32 -1073741823, i32 259, !dbg !2960
  br label %main_bb431, !dbg !2960

main_bb431:                                       ; preds = %main_bb430, %main_bb429
  %returnVal2.0.i.i = phi i32 [ 0, %main_bb429 ], [ %..i.i, %main_bb430 ], !dbg !2917
  %"945" = load i32* @"'s", align 4, !dbg !2963
  %"946" = load i32* @"'NP", align 4, !dbg !2963
  %"947" = icmp eq i32 %"945", %"946", !dbg !2963
  br i1 %"947", label %main_bb432, label %main_bb433, !dbg !2963

main_bb432:                                       ; preds = %main_bb431
  %"948" = load i32* @"'IPC", align 4, !dbg !2964
  store i32 %"948", i32* @"'s", align 4, !dbg !2964
  store i32 %returnVal2.0.i.i, i32* @"'lowerDriverReturn", align 4, !dbg !2965
  br label %main_FloppyPnp.exit, !dbg !2966

main_bb433:                                       ; preds = %main_bb431
  %"949" = load i32* @"'s", align 4, !dbg !2967
  %"950" = load i32* @"'MPR1", align 4, !dbg !2967
  %"951" = icmp eq i32 %"949", %"950", !dbg !2967
  br i1 %"951", label %main_bb434, label %main_bb437, !dbg !2967

main_bb434:                                       ; preds = %main_bb433
  %"952" = icmp eq i32 %returnVal2.0.i.i, 259, !dbg !2968
  br i1 %"952", label %main_bb435, label %main_bb436, !dbg !2968

main_bb435:                                       ; preds = %main_bb434
  %"953" = load i32* @"'MPR3", align 4, !dbg !2969
  store i32 %"953", i32* @"'s", align 4, !dbg !2969
  store i32 %returnVal2.0.i.i, i32* @"'lowerDriverReturn", align 4, !dbg !2970
  br label %main_FloppyPnp.exit, !dbg !2971

main_bb436:                                       ; preds = %main_bb434
  %"954" = load i32* @"'NP", align 4, !dbg !2972
  store i32 %"954", i32* @"'s", align 4, !dbg !2972
  store i32 %returnVal2.0.i.i, i32* @"'lowerDriverReturn", align 4, !dbg !2973
  br label %main_FloppyPnp.exit, !dbg !2917

main_bb437:                                       ; preds = %main_bb433
  %"955" = load i32* @"'s", align 4, !dbg !2974
  %"956" = load i32* @"'SKIP1", align 4, !dbg !2974
  %"957" = icmp eq i32 %"955", %"956", !dbg !2974
  br i1 %"957", label %main_bb438, label %main_bb439, !dbg !2974

main_bb438:                                       ; preds = %main_bb437
  %"958" = load i32* @"'SKIP2", align 4, !dbg !2975
  store i32 %"958", i32* @"'s", align 4, !dbg !2975
  store i32 %returnVal2.0.i.i, i32* @"'lowerDriverReturn", align 4, !dbg !2976
  br label %main_FloppyPnp.exit, !dbg !2917

main_bb439:                                       ; preds = %main_bb437
  call void (...)* @__VERIFIER_error() #6, !dbg !2977
  unreachable, !dbg !2977

main_bb440:                                       ; preds = %main_bb425
  call void (...)* @__VERIFIER_error() #6, !dbg !2979
  unreachable, !dbg !2979

main_LeafBlock45.i:                               ; preds = %main_NodeBlock47.i
  %SwitchLeaf46.i = icmp eq i32 %"657", 6, !dbg !2137
  br i1 %SwitchLeaf46.i, label %main_bb441, label %main_NewDefault.i, !dbg !2137

main_bb441:                                       ; preds = %main_LeafBlock45.i, %main_NodeBlock43.i
  %"959" = icmp ne i32 %"650", 0, !dbg !2981
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !2197) #5, !dbg !2198
  store i32 0, i32* @"'myStatus", align 4, !dbg !2982
  %"960" = load i32* @"'s", align 4, !dbg !2983
  %"961" = load i32* @"'NP", align 4, !dbg !2983
  br i1 %"959", label %main_bb442, label %main_bb468, !dbg !2981

main_bb442:                                       ; preds = %main_bb441
  call void @llvm.dbg.value(metadata !{i32 %"647"}, i64 0, metadata !2984) #5, !dbg !2985
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !2986) #5, !dbg !2987
  %"962" = icmp ne i32 %"960", %"961", !dbg !2983
  br i1 %"962", label %main_bb443, label %main_bb444, !dbg !2983

main_bb443:                                       ; preds = %main_bb442
  call void (...)* @__VERIFIER_error() #6, !dbg !2988
  unreachable, !dbg !2988

main_bb444:                                       ; preds = %main_bb442
  %"963" = load i32* @"'compRegistered", align 4, !dbg !2990
  %"964" = icmp ne i32 %"963", 0, !dbg !2990
  br i1 %"964", label %main_bb445, label %main_bb446, !dbg !2990

main_bb445:                                       ; preds = %main_bb444
  call void (...)* @__VERIFIER_error() #6, !dbg !2991
  unreachable, !dbg !2991

main_bb446:                                       ; preds = %main_bb444
  store i32 1, i32* @"'compRegistered", align 4, !dbg !2993
  call void @llvm.dbg.value(metadata !{i32 %"659"}, i64 0, metadata !2994) #5, !dbg !2995
  call void @llvm.dbg.value(metadata !391, i64 0, metadata !2996) #5, !dbg !2997
  call void @llvm.dbg.value(metadata !{i32 %"651"}, i64 0, metadata !2998) #5, !dbg !3000
  call void @llvm.dbg.value(metadata !{i32 %"631"}, i64 0, metadata !3001) #5, !dbg !3002
  %"965" = call i32 @__VERIFIER_nondet_int() #5, !dbg !3003
  call void @llvm.dbg.value(metadata !{i32 %"965"}, i64 0, metadata !3004) #5, !dbg !3005
  %"966" = load i32* @"'compRegistered", align 4, !dbg !3006
  %"967" = icmp ne i32 %"966", 0, !dbg !3006
  br i1 %"967", label %main_bb447, label %main_bb449, !dbg !3006

main_bb447:                                       ; preds = %main_bb446
  call void @llvm.dbg.value(metadata !{i32 %"651"}, i64 0, metadata !3007) #5, !dbg !3009
  call void @llvm.dbg.value(metadata !{i32 %"631"}, i64 0, metadata !3010) #5, !dbg !3011
  call void @llvm.dbg.value(metadata !{i32 %"965"}, i64 0, metadata !3012) #5, !dbg !3013
  call void @llvm.dbg.value(metadata !{i32 %"965"}, i64 0, metadata !3014) #5, !dbg !3016
  call void @llvm.dbg.value(metadata !420, i64 0, metadata !3017) #5, !dbg !3018
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !3019) #5, !dbg !3020
  %"968" = call i32 @__VERIFIER_nondet_int() #5, !dbg !3021
  call void @llvm.dbg.value(metadata !{i32 %"968"}, i64 0, metadata !3022) #5, !dbg !3023
  store i32 1, i32* @"'setEventCalled", align 4, !dbg !3024
  call void @llvm.dbg.value(metadata !430, i64 0, metadata !3025) #5, !dbg !3026
  call void @llvm.dbg.value(metadata !433, i64 0, metadata !3027) #5, !dbg !3028
  %"969" = load i32* @"'s", align 4, !dbg !3029
  %"970" = load i32* @"'NP", align 4, !dbg !3029
  %"971" = icmp eq i32 %"969", %"970", !dbg !3029
  br i1 %"971", label %main_stubMoreProcessingRequired.exit.i16.i, label %main_bb448, !dbg !3029

main_stubMoreProcessingRequired.exit.i16.i:       ; preds = %main_bb447
  %"972" = load i32* @"'MPR1", align 4, !dbg !3031
  store i32 %"972", i32* @"'s", align 4, !dbg !3031
  br label %main_bb449, !dbg !3032

main_bb448:                                       ; preds = %main_bb447
  call void (...)* @__VERIFIER_error() #6, !dbg !3033
  unreachable, !dbg !3033

main_bb449:                                       ; preds = %main_stubMoreProcessingRequired.exit.i16.i, %main_bb446
  %"973" = call i32 @__VERIFIER_nondet_int() #5, !dbg !3035
  call void @llvm.dbg.value(metadata !{i32 %"973"}, i64 0, metadata !3036) #5, !dbg !3037
  %"974" = icmp eq i32 %"973", 0, !dbg !3038
  br i1 %"974", label %main_bb451, label %main_bb450, !dbg !3038

main_bb450:                                       ; preds = %main_bb449
  %"975" = call i32 @__VERIFIER_nondet_int() #5, !dbg !3039
  call void @llvm.dbg.value(metadata !{i32 %"975"}, i64 0, metadata !3040) #5, !dbg !3041
  %"976" = icmp eq i32 %"975", 1, !dbg !3042
  call void @llvm.dbg.value(metadata !463, i64 0, metadata !3043) #5, !dbg !3044
  %..i17.i = select i1 %"976", i32 -1073741823, i32 259, !dbg !3042
  br label %main_bb451, !dbg !3042

main_bb451:                                       ; preds = %main_bb450, %main_bb449
  %returnVal2.0.i18.i = phi i32 [ 0, %main_bb449 ], [ %..i17.i, %main_bb450 ], !dbg !2999
  %"977" = load i32* @"'s", align 4, !dbg !3045
  %"978" = load i32* @"'NP", align 4, !dbg !3045
  %"979" = icmp eq i32 %"977", %"978", !dbg !3045
  br i1 %"979", label %main_bb452, label %main_bb453, !dbg !3045

main_bb452:                                       ; preds = %main_bb451
  %"980" = load i32* @"'IPC", align 4, !dbg !3046
  store i32 %"980", i32* @"'s", align 4, !dbg !3046
  store i32 %returnVal2.0.i18.i, i32* @"'lowerDriverReturn", align 4, !dbg !3047
  br label %main_IofCallDriver.exit19.i, !dbg !3048

main_bb453:                                       ; preds = %main_bb451
  %"981" = load i32* @"'s", align 4, !dbg !3049
  %"982" = load i32* @"'MPR1", align 4, !dbg !3049
  %"983" = icmp eq i32 %"981", %"982", !dbg !3049
  br i1 %"983", label %main_bb454, label %main_bb457, !dbg !3049

main_bb454:                                       ; preds = %main_bb453
  %"984" = icmp eq i32 %returnVal2.0.i18.i, 259, !dbg !3050
  br i1 %"984", label %main_bb455, label %main_bb456, !dbg !3050

main_bb455:                                       ; preds = %main_bb454
  %"985" = load i32* @"'MPR3", align 4, !dbg !3051
  store i32 %"985", i32* @"'s", align 4, !dbg !3051
  store i32 %returnVal2.0.i18.i, i32* @"'lowerDriverReturn", align 4, !dbg !3052
  br label %main_IofCallDriver.exit19.i, !dbg !3053

main_bb456:                                       ; preds = %main_bb454
  %"986" = load i32* @"'NP", align 4, !dbg !3054
  store i32 %"986", i32* @"'s", align 4, !dbg !3054
  store i32 %returnVal2.0.i18.i, i32* @"'lowerDriverReturn", align 4, !dbg !3055
  br label %main_IofCallDriver.exit19.i, !dbg !2999

main_bb457:                                       ; preds = %main_bb453
  %"987" = load i32* @"'s", align 4, !dbg !3056
  %"988" = load i32* @"'SKIP1", align 4, !dbg !3056
  %"989" = icmp eq i32 %"987", %"988", !dbg !3056
  br i1 %"989", label %main_bb458, label %main_bb467, !dbg !3056

main_bb458:                                       ; preds = %main_bb457
  %"990" = load i32* @"'SKIP2", align 4, !dbg !3057
  store i32 %"990", i32* @"'s", align 4, !dbg !3057
  store i32 %returnVal2.0.i18.i, i32* @"'lowerDriverReturn", align 4, !dbg !3058
  br label %main_IofCallDriver.exit19.i, !dbg !2999

main_IofCallDriver.exit19.i:                      ; preds = %main_bb458, %main_bb456, %main_bb455, %main_bb452
  call void @llvm.dbg.value(metadata !{i32 %returnVal2.0.i18.i}, i64 0, metadata !2187) #5, !dbg !2188
  %"991" = sext i32 %returnVal2.0.i18.i to i64, !dbg !3059
  call void @llvm.dbg.value(metadata !{i64 %"991"}, i64 0, metadata !3060) #5, !dbg !3061
  %"992" = icmp eq i64 %"991", 259, !dbg !3062
  br i1 %"992", label %main_bb459, label %main_bb465, !dbg !3062

main_bb459:                                       ; preds = %main_IofCallDriver.exit19.i
  call void @llvm.dbg.value(metadata !{i32 %"659"}, i64 0, metadata !3063) #5, !dbg !3065
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !3066) #5, !dbg !3067
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !3068) #5, !dbg !3069
  %"993" = load i32* @"'s", align 4, !dbg !3070
  %"994" = load i32* @"'MPR3", align 4, !dbg !3070
  %"995" = icmp eq i32 %"993", %"994", !dbg !3070
  %"996" = load i32* @"'setEventCalled", align 4, !dbg !3064
  %"997" = icmp eq i32 %"996", 1, !dbg !3071
  %or.cond.i20.i = and i1 %"995", %"997", !dbg !3070
  br i1 %or.cond.i20.i, label %main_bb460, label %main_bb461, !dbg !3070

main_bb460:                                       ; preds = %main_bb459
  %"998" = load i32* @"'NP", align 4, !dbg !3072
  store i32 %"998", i32* @"'s", align 4, !dbg !3072
  store i32 0, i32* @"'setEventCalled", align 4, !dbg !3073
  br label %main_KeWaitForSingleObject.exit22.i, !dbg !3074

main_bb461:                                       ; preds = %main_bb459
  %"999" = load i32* @"'customIrp", align 4, !dbg !3075
  %"1000" = icmp eq i32 %"999", 1, !dbg !3075
  br i1 %"1000", label %main_bb462, label %main_bb463, !dbg !3075

main_bb462:                                       ; preds = %main_bb461
  %"1001" = load i32* @"'NP", align 4, !dbg !3076
  store i32 %"1001", i32* @"'s", align 4, !dbg !3076
  store i32 0, i32* @"'customIrp", align 4, !dbg !3077
  br label %main_KeWaitForSingleObject.exit22.i, !dbg !3078

main_bb463:                                       ; preds = %main_bb461
  %"1002" = load i32* @"'s", align 4, !dbg !3079
  %"1003" = load i32* @"'MPR3", align 4, !dbg !3079
  %"1004" = icmp eq i32 %"1002", %"1003", !dbg !3079
  br i1 %"1004", label %main_bb464, label %main_KeWaitForSingleObject.exit22.i, !dbg !3079

main_bb464:                                       ; preds = %main_bb463
  call void (...)* @__VERIFIER_error() #6, !dbg !3080
  unreachable, !dbg !3080

main_KeWaitForSingleObject.exit22.i:              ; preds = %main_bb463, %main_bb462, %main_bb460
  %"1005" = call i32 @__VERIFIER_nondet_int() #5, !dbg !3082
  call void @llvm.dbg.value(metadata !{i32 %"1005"}, i64 0, metadata !3083) #5, !dbg !3084
  %"1006" = load i32* @"'myStatus", align 4, !dbg !3085
  call void @llvm.dbg.value(metadata !{i32 %"1006"}, i64 0, metadata !2187) #5, !dbg !2188
  br label %main_bb465, !dbg !3086

main_bb465:                                       ; preds = %main_KeWaitForSingleObject.exit22.i, %main_IofCallDriver.exit19.i
  %ntStatus.1.i = phi i32 [ %"1006", %main_KeWaitForSingleObject.exit22.i ], [ %returnVal2.0.i18.i, %main_IofCallDriver.exit19.i ], !dbg !2137
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !2574) #5, !dbg !2575
  call void @llvm.dbg.value(metadata !{i32 %ntStatus.1.i}, i64 0, metadata !2197) #5, !dbg !2198
  store i32 %ntStatus.1.i, i32* @"'myStatus", align 4, !dbg !3087
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !2195) #5, !dbg !2196
  call void @llvm.dbg.value(metadata !{i32 %"631"}, i64 0, metadata !3088) #5, !dbg !3090
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !3091) #5, !dbg !3092
  %"1007" = load i32* @"'s", align 4, !dbg !3093
  %"1008" = load i32* @"'NP", align 4, !dbg !3093
  %"1009" = icmp eq i32 %"1007", %"1008", !dbg !3093
  br i1 %"1009", label %main_IofCompleteRequest.exit23.i, label %main_bb466, !dbg !3093

main_IofCompleteRequest.exit23.i:                 ; preds = %main_bb465
  %"1010" = load i32* @"'DC", align 4, !dbg !3094
  store i32 %"1010", i32* @"'s", align 4, !dbg !3094
  br label %main_IofCallDriver.exit40.i, !dbg !2137

main_bb466:                                       ; preds = %main_bb465
  call void (...)* @__VERIFIER_error() #6, !dbg !3095
  unreachable, !dbg !3095

main_bb467:                                       ; preds = %main_bb457
  call void (...)* @__VERIFIER_error() #6, !dbg !3097
  unreachable, !dbg !3097

main_bb468:                                       ; preds = %main_bb441
  %"1011" = icmp eq i32 %"960", %"961", !dbg !3099
  br i1 %"1011", label %main_bb469, label %main_bb483, !dbg !3099

main_bb469:                                       ; preds = %main_bb468
  %"1012" = load i32* @"'SKIP1", align 4, !dbg !3100
  store i32 %"1012", i32* @"'s", align 4, !dbg !3100
  call void @llvm.dbg.value(metadata !{i32 %"651"}, i64 0, metadata !3101) #5, !dbg !3103
  call void @llvm.dbg.value(metadata !{i32 %"631"}, i64 0, metadata !3104) #5, !dbg !3105
  %"1013" = call i32 @__VERIFIER_nondet_int() #5, !dbg !3106
  call void @llvm.dbg.value(metadata !{i32 %"1013"}, i64 0, metadata !3107) #5, !dbg !3108
  %"1014" = load i32* @"'compRegistered", align 4, !dbg !3109
  %"1015" = icmp ne i32 %"1014", 0, !dbg !3109
  br i1 %"1015", label %main_bb470, label %main_bb472, !dbg !3109

main_bb470:                                       ; preds = %main_bb469
  call void @llvm.dbg.value(metadata !{i32 %"651"}, i64 0, metadata !3110) #5, !dbg !3112
  call void @llvm.dbg.value(metadata !{i32 %"631"}, i64 0, metadata !3113) #5, !dbg !3114
  call void @llvm.dbg.value(metadata !{i32 %"1013"}, i64 0, metadata !3115) #5, !dbg !3116
  call void @llvm.dbg.value(metadata !{i32 %"1013"}, i64 0, metadata !3117) #5, !dbg !3119
  call void @llvm.dbg.value(metadata !420, i64 0, metadata !3120) #5, !dbg !3121
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !3122) #5, !dbg !3123
  %"1016" = call i32 @__VERIFIER_nondet_int() #5, !dbg !3124
  call void @llvm.dbg.value(metadata !{i32 %"1016"}, i64 0, metadata !3125) #5, !dbg !3126
  store i32 1, i32* @"'setEventCalled", align 4, !dbg !3127
  call void @llvm.dbg.value(metadata !430, i64 0, metadata !3128) #5, !dbg !3129
  call void @llvm.dbg.value(metadata !433, i64 0, metadata !3130) #5, !dbg !3131
  %"1017" = load i32* @"'s", align 4, !dbg !3132
  %"1018" = load i32* @"'NP", align 4, !dbg !3132
  %"1019" = icmp eq i32 %"1017", %"1018", !dbg !3132
  br i1 %"1019", label %main_stubMoreProcessingRequired.exit.i10.i, label %main_bb471, !dbg !3132

main_stubMoreProcessingRequired.exit.i10.i:       ; preds = %main_bb470
  %"1020" = load i32* @"'MPR1", align 4, !dbg !3134
  store i32 %"1020", i32* @"'s", align 4, !dbg !3134
  br label %main_bb472, !dbg !3135

main_bb471:                                       ; preds = %main_bb470
  call void (...)* @__VERIFIER_error() #6, !dbg !3136
  unreachable, !dbg !3136

main_bb472:                                       ; preds = %main_stubMoreProcessingRequired.exit.i10.i, %main_bb469
  %"1021" = call i32 @__VERIFIER_nondet_int() #5, !dbg !3138
  call void @llvm.dbg.value(metadata !{i32 %"1021"}, i64 0, metadata !3139) #5, !dbg !3140
  %"1022" = icmp eq i32 %"1021", 0, !dbg !3141
  br i1 %"1022", label %main_bb474, label %main_bb473, !dbg !3141

main_bb473:                                       ; preds = %main_bb472
  %"1023" = call i32 @__VERIFIER_nondet_int() #5, !dbg !3142
  call void @llvm.dbg.value(metadata !{i32 %"1023"}, i64 0, metadata !3143) #5, !dbg !3144
  %"1024" = icmp eq i32 %"1023", 1, !dbg !3145
  call void @llvm.dbg.value(metadata !463, i64 0, metadata !3146) #5, !dbg !3147
  %..i11.i = select i1 %"1024", i32 -1073741823, i32 259, !dbg !3145
  br label %main_bb474, !dbg !3145

main_bb474:                                       ; preds = %main_bb473, %main_bb472
  %returnVal2.0.i12.i = phi i32 [ 0, %main_bb472 ], [ %..i11.i, %main_bb473 ], !dbg !3102
  %"1025" = load i32* @"'s", align 4, !dbg !3148
  %"1026" = load i32* @"'NP", align 4, !dbg !3148
  %"1027" = icmp eq i32 %"1025", %"1026", !dbg !3148
  br i1 %"1027", label %main_bb475, label %main_bb476, !dbg !3148

main_bb475:                                       ; preds = %main_bb474
  %"1028" = load i32* @"'IPC", align 4, !dbg !3149
  store i32 %"1028", i32* @"'s", align 4, !dbg !3149
  store i32 %returnVal2.0.i12.i, i32* @"'lowerDriverReturn", align 4, !dbg !3150
  br label %main_IofCallDriver.exit40.i, !dbg !3151

main_bb476:                                       ; preds = %main_bb474
  %"1029" = load i32* @"'s", align 4, !dbg !3152
  %"1030" = load i32* @"'MPR1", align 4, !dbg !3152
  %"1031" = icmp eq i32 %"1029", %"1030", !dbg !3152
  br i1 %"1031", label %main_bb477, label %main_bb480, !dbg !3152

main_bb477:                                       ; preds = %main_bb476
  %"1032" = icmp eq i32 %returnVal2.0.i12.i, 259, !dbg !3153
  br i1 %"1032", label %main_bb478, label %main_bb479, !dbg !3153

main_bb478:                                       ; preds = %main_bb477
  %"1033" = load i32* @"'MPR3", align 4, !dbg !3154
  store i32 %"1033", i32* @"'s", align 4, !dbg !3154
  store i32 %returnVal2.0.i12.i, i32* @"'lowerDriverReturn", align 4, !dbg !3155
  br label %main_IofCallDriver.exit40.i, !dbg !3156

main_bb479:                                       ; preds = %main_bb477
  %"1034" = load i32* @"'NP", align 4, !dbg !3157
  store i32 %"1034", i32* @"'s", align 4, !dbg !3157
  store i32 %returnVal2.0.i12.i, i32* @"'lowerDriverReturn", align 4, !dbg !3158
  br label %main_IofCallDriver.exit40.i, !dbg !3102

main_bb480:                                       ; preds = %main_bb476
  %"1035" = load i32* @"'s", align 4, !dbg !3159
  %"1036" = load i32* @"'SKIP1", align 4, !dbg !3159
  %"1037" = icmp eq i32 %"1035", %"1036", !dbg !3159
  br i1 %"1037", label %main_bb481, label %main_bb482, !dbg !3159

main_bb481:                                       ; preds = %main_bb480
  %"1038" = load i32* @"'SKIP2", align 4, !dbg !3160
  store i32 %"1038", i32* @"'s", align 4, !dbg !3160
  store i32 %returnVal2.0.i12.i, i32* @"'lowerDriverReturn", align 4, !dbg !3161
  br label %main_IofCallDriver.exit40.i, !dbg !3102

main_bb482:                                       ; preds = %main_bb480
  call void (...)* @__VERIFIER_error() #6, !dbg !3162
  unreachable, !dbg !3162

main_bb483:                                       ; preds = %main_bb468
  call void (...)* @__VERIFIER_error() #6, !dbg !3164
  unreachable, !dbg !3164

main_NewDefault.i:                                ; preds = %main_LeafBlock45.i, %main_LeafBlock.i
  %"1039" = load i32* @"'s", align 4, !dbg !3166
  %"1040" = load i32* @"'NP", align 4, !dbg !3166
  %"1041" = icmp eq i32 %"1039", %"1040", !dbg !3166
  br i1 %"1041", label %main_bb484, label %main_bb498, !dbg !3166

main_bb484:                                       ; preds = %main_NewDefault.i
  %"1042" = load i32* @"'SKIP1", align 4, !dbg !3167
  store i32 %"1042", i32* @"'s", align 4, !dbg !3167
  call void @llvm.dbg.value(metadata !{i32 %"651"}, i64 0, metadata !3168) #5, !dbg !3170
  call void @llvm.dbg.value(metadata !{i32 %"631"}, i64 0, metadata !3171) #5, !dbg !3172
  %"1043" = call i32 @__VERIFIER_nondet_int() #5, !dbg !3173
  call void @llvm.dbg.value(metadata !{i32 %"1043"}, i64 0, metadata !3174) #5, !dbg !3175
  %"1044" = load i32* @"'compRegistered", align 4, !dbg !3176
  %"1045" = icmp ne i32 %"1044", 0, !dbg !3176
  br i1 %"1045", label %main_bb485, label %main_bb487, !dbg !3176

main_bb485:                                       ; preds = %main_bb484
  call void @llvm.dbg.value(metadata !{i32 %"651"}, i64 0, metadata !3177) #5, !dbg !3179
  call void @llvm.dbg.value(metadata !{i32 %"631"}, i64 0, metadata !3180) #5, !dbg !3181
  call void @llvm.dbg.value(metadata !{i32 %"1043"}, i64 0, metadata !3182) #5, !dbg !3183
  call void @llvm.dbg.value(metadata !{i32 %"1043"}, i64 0, metadata !3184) #5, !dbg !3186
  call void @llvm.dbg.value(metadata !420, i64 0, metadata !3187) #5, !dbg !3188
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !3189) #5, !dbg !3190
  %"1046" = call i32 @__VERIFIER_nondet_int() #5, !dbg !3191
  call void @llvm.dbg.value(metadata !{i32 %"1046"}, i64 0, metadata !3192) #5, !dbg !3193
  store i32 1, i32* @"'setEventCalled", align 4, !dbg !3194
  call void @llvm.dbg.value(metadata !430, i64 0, metadata !3195) #5, !dbg !3196
  call void @llvm.dbg.value(metadata !433, i64 0, metadata !3197) #5, !dbg !3198
  %"1047" = load i32* @"'s", align 4, !dbg !3199
  %"1048" = load i32* @"'NP", align 4, !dbg !3199
  %"1049" = icmp eq i32 %"1047", %"1048", !dbg !3199
  br i1 %"1049", label %main_stubMoreProcessingRequired.exit.i37.i, label %main_bb486, !dbg !3199

main_stubMoreProcessingRequired.exit.i37.i:       ; preds = %main_bb485
  %"1050" = load i32* @"'MPR1", align 4, !dbg !3201
  store i32 %"1050", i32* @"'s", align 4, !dbg !3201
  br label %main_bb487, !dbg !3202

main_bb486:                                       ; preds = %main_bb485
  call void (...)* @__VERIFIER_error() #6, !dbg !3203
  unreachable, !dbg !3203

main_bb487:                                       ; preds = %main_stubMoreProcessingRequired.exit.i37.i, %main_bb484
  %"1051" = call i32 @__VERIFIER_nondet_int() #5, !dbg !3205
  call void @llvm.dbg.value(metadata !{i32 %"1051"}, i64 0, metadata !3206) #5, !dbg !3207
  %"1052" = icmp eq i32 %"1051", 0, !dbg !3208
  br i1 %"1052", label %main_bb489, label %main_bb488, !dbg !3208

main_bb488:                                       ; preds = %main_bb487
  %"1053" = call i32 @__VERIFIER_nondet_int() #5, !dbg !3209
  call void @llvm.dbg.value(metadata !{i32 %"1053"}, i64 0, metadata !3210) #5, !dbg !3211
  %"1054" = icmp eq i32 %"1053", 1, !dbg !3212
  call void @llvm.dbg.value(metadata !463, i64 0, metadata !3213) #5, !dbg !3214
  %..i38.i = select i1 %"1054", i32 -1073741823, i32 259, !dbg !3212
  br label %main_bb489, !dbg !3212

main_bb489:                                       ; preds = %main_bb488, %main_bb487
  %returnVal2.0.i39.i = phi i32 [ 0, %main_bb487 ], [ %..i38.i, %main_bb488 ], !dbg !3169
  %"1055" = load i32* @"'s", align 4, !dbg !3215
  %"1056" = load i32* @"'NP", align 4, !dbg !3215
  %"1057" = icmp eq i32 %"1055", %"1056", !dbg !3215
  br i1 %"1057", label %main_bb490, label %main_bb491, !dbg !3215

main_bb490:                                       ; preds = %main_bb489
  %"1058" = load i32* @"'IPC", align 4, !dbg !3216
  store i32 %"1058", i32* @"'s", align 4, !dbg !3216
  store i32 %returnVal2.0.i39.i, i32* @"'lowerDriverReturn", align 4, !dbg !3217
  br label %main_IofCallDriver.exit40.i, !dbg !3218

main_bb491:                                       ; preds = %main_bb489
  %"1059" = load i32* @"'s", align 4, !dbg !3219
  %"1060" = load i32* @"'MPR1", align 4, !dbg !3219
  %"1061" = icmp eq i32 %"1059", %"1060", !dbg !3219
  br i1 %"1061", label %main_bb492, label %main_bb495, !dbg !3219

main_bb492:                                       ; preds = %main_bb491
  %"1062" = icmp eq i32 %returnVal2.0.i39.i, 259, !dbg !3220
  br i1 %"1062", label %main_bb493, label %main_bb494, !dbg !3220

main_bb493:                                       ; preds = %main_bb492
  %"1063" = load i32* @"'MPR3", align 4, !dbg !3221
  store i32 %"1063", i32* @"'s", align 4, !dbg !3221
  store i32 %returnVal2.0.i39.i, i32* @"'lowerDriverReturn", align 4, !dbg !3222
  br label %main_IofCallDriver.exit40.i, !dbg !3223

main_bb494:                                       ; preds = %main_bb492
  %"1064" = load i32* @"'NP", align 4, !dbg !3224
  store i32 %"1064", i32* @"'s", align 4, !dbg !3224
  store i32 %returnVal2.0.i39.i, i32* @"'lowerDriverReturn", align 4, !dbg !3225
  br label %main_IofCallDriver.exit40.i, !dbg !3169

main_bb495:                                       ; preds = %main_bb491
  %"1065" = load i32* @"'s", align 4, !dbg !3226
  %"1066" = load i32* @"'SKIP1", align 4, !dbg !3226
  %"1067" = icmp eq i32 %"1065", %"1066", !dbg !3226
  br i1 %"1067", label %main_bb496, label %main_bb497, !dbg !3226

main_bb496:                                       ; preds = %main_bb495
  %"1068" = load i32* @"'SKIP2", align 4, !dbg !3227
  store i32 %"1068", i32* @"'s", align 4, !dbg !3227
  store i32 %returnVal2.0.i39.i, i32* @"'lowerDriverReturn", align 4, !dbg !3228
  br label %main_IofCallDriver.exit40.i, !dbg !3169

main_IofCallDriver.exit40.i:                      ; preds = %main_bb496, %main_bb494, %main_bb493, %main_bb490, %main_bb481, %main_bb479, %main_bb478, %main_bb475, %main_IofCompleteRequest.exit23.i, %main_IofCompleteRequest.exit8.i, %main_bb419, %main_bb417, %main_bb416, %main_bb413, %main_bb389, %main_bb387, %main_bb386, %main_bb383, %main_bb373, %main_bb372, %main_FloppyStartDevice.exit.i
  %ntStatus.4.i = phi i32 [ %returnVal2.0.i39.i, %main_bb490 ], [ %returnVal2.0.i39.i, %main_bb493 ], [ %returnVal2.0.i39.i, %main_bb494 ], [ %returnVal2.0.i39.i, %main_bb496 ], [ %ntStatus.3.i.i, %main_FloppyStartDevice.exit.i ], [ -1073741823, %main_IofCompleteRequest.exit8.i ], [ %returnVal2.0.i6.i, %main_bb413 ], [ %returnVal2.0.i6.i, %main_bb416 ], [ %returnVal2.0.i6.i, %main_bb417 ], [ %returnVal2.0.i6.i, %main_bb419 ], [ %ntStatus.1.i, %main_IofCompleteRequest.exit23.i ], [ %returnVal2.0.i12.i, %main_bb475 ], [ %returnVal2.0.i12.i, %main_bb478 ], [ %returnVal2.0.i12.i, %main_bb479 ], [ %returnVal2.0.i12.i, %main_bb481 ], [ %returnVal2.0.i27.i, %main_bb383 ], [ %returnVal2.0.i27.i, %main_bb386 ], [ %returnVal2.0.i27.i, %main_bb387 ], [ %returnVal2.0.i27.i, %main_bb389 ], [ %returnVal2.0.i32.i, %main_bb373 ], [ %returnVal2.0.i32.i, %main_bb372 ], !dbg !2137
  %"1069" = load i32* @"'PagingReferenceCount", align 4, !dbg !3229
  %"1070" = add nsw i32 %"1069", -1, !dbg !3229
  store i32 %"1070", i32* @"'PagingReferenceCount", align 4, !dbg !3229
  br label %main_FloppyPnp.exit, !dbg !3230

main_bb497:                                       ; preds = %main_bb495
  call void (...)* @__VERIFIER_error() #6, !dbg !3231
  unreachable, !dbg !3231

main_bb498:                                       ; preds = %main_NewDefault.i
  call void (...)* @__VERIFIER_error() #6, !dbg !3233
  unreachable, !dbg !3233

main_FloppyPnp.exit:                              ; preds = %main_IofCompleteRequest.exit.i, %main_bb432, %main_bb435, %main_bb436, %main_bb438, %main_IofCallDriver.exit40.i, %main_bb296
  %status.0 = phi i32 [ 0, %main_bb296 ], [ -1073741738, %main_IofCompleteRequest.exit.i ], [ %ntStatus.4.i, %main_IofCallDriver.exit40.i ], [ %returnVal2.0.i.i, %main_bb432 ], [ %returnVal2.0.i.i, %main_bb435 ], [ %returnVal2.0.i.i, %main_bb436 ], [ %returnVal2.0.i.i, %main_bb438 ]
  %"1071" = load i32* @"'pended", align 4, !dbg !3235
  %"1072" = icmp eq i32 %"1071", 1, !dbg !3235
  br i1 %"1072", label %main_bb499, label %main_bb501, !dbg !3235

main_bb499:                                       ; preds = %main_FloppyPnp.exit
  %"1073" = load i32* @"'s", align 4, !dbg !3237
  %"1074" = load i32* @"'NP", align 4, !dbg !3237
  %"1075" = icmp eq i32 %"1073", %"1074", !dbg !3237
  br i1 %"1075", label %main_bb500, label %main_bb501, !dbg !3237

main_bb500:                                       ; preds = %main_bb499
  %"1076" = load i32* @"'NP", align 4, !dbg !3240
  store i32 %"1076", i32* @"'s", align 4, !dbg !3240
  br label %main_bb517, !dbg !3242

main_bb501:                                       ; preds = %main_FloppyPnp.exit, %main_bb499
  %"1077" = load i32* @"'pended", align 4, !dbg !3243
  %"1078" = icmp eq i32 %"1077", 1, !dbg !3243
  br i1 %"1078", label %main_bb502, label %main_bb504, !dbg !3243

main_bb502:                                       ; preds = %main_bb501
  %"1079" = load i32* @"'s", align 4, !dbg !3246
  %"1080" = load i32* @"'MPR3", align 4, !dbg !3246
  %"1081" = icmp eq i32 %"1079", %"1080", !dbg !3246
  br i1 %"1081", label %main_bb503, label %main_bb504, !dbg !3246

main_bb503:                                       ; preds = %main_bb502
  %"1082" = load i32* @"'MPR3", align 4, !dbg !3249
  store i32 %"1082", i32* @"'s", align 4, !dbg !3249
  br label %main_bb517, !dbg !3251

main_bb504:                                       ; preds = %main_bb501, %main_bb502
  %"1083" = load i32* @"'s", align 4, !dbg !3252
  %"1084" = load i32* @"'UNLOADED", align 4, !dbg !3252
  %"1085" = icmp ne i32 %"1083", %"1084", !dbg !3252
  %"1086" = icmp ne i32 %status.0, -1, !dbg !3255
  %or.cond = and i1 %"1085", %"1086", !dbg !3252
  br i1 %or.cond, label %main_bb505, label %main_bb517, !dbg !3252

main_bb505:                                       ; preds = %main_bb504
  %"1087" = load i32* @"'s", align 4, !dbg !3258
  %"1088" = load i32* @"'SKIP2", align 4, !dbg !3258
  %"1089" = icmp ne i32 %"1087", %"1088", !dbg !3258
  br i1 %"1089", label %main_bb506, label %main_bb509, !dbg !3258

main_bb506:                                       ; preds = %main_bb505
  %"1090" = load i32* @"'s", align 4, !dbg !3261
  %"1091" = load i32* @"'IPC", align 4, !dbg !3261
  %"1092" = icmp ne i32 %"1090", %"1091", !dbg !3261
  br i1 %"1092", label %main_bb507, label %main_bb509, !dbg !3261

main_bb507:                                       ; preds = %main_bb506
  %"1093" = load i32* @"'s", align 4, !dbg !3264
  %"1094" = load i32* @"'DC", align 4, !dbg !3264
  %"1095" = icmp ne i32 %"1093", %"1094", !dbg !3264
  br i1 %"1095", label %main_bb508, label %main_bb509, !dbg !3264

main_bb508:                                       ; preds = %main_bb507
  call void (...)* @__VERIFIER_error() #6, !dbg !3267
  unreachable, !dbg !3267

main_bb509:                                       ; preds = %main_bb505, %main_bb506, %main_bb507
  %"1096" = load i32* @"'pended", align 4, !dbg !3271
  %"1097" = icmp eq i32 %"1096", 1, !dbg !3271
  br i1 %"1097", label %main_bb510, label %main_bb512, !dbg !3271

main_bb510:                                       ; preds = %main_bb509
  %"1098" = icmp ne i32 %status.0, 259, !dbg !3274
  br i1 %"1098", label %main_bb511, label %main_bb517, !dbg !3274

main_bb511:                                       ; preds = %main_bb510
  call void (...)* @__VERIFIER_error() #6, !dbg !3277
  unreachable, !dbg !3277

main_bb512:                                       ; preds = %main_bb509
  %"1099" = load i32* @"'s", align 4, !dbg !3280
  %"1100" = load i32* @"'DC", align 4, !dbg !3280
  %"1101" = icmp eq i32 %"1099", %"1100", !dbg !3280
  br i1 %"1101", label %main_bb513, label %main_bb515, !dbg !3280

main_bb513:                                       ; preds = %main_bb512
  %"1102" = icmp eq i32 %status.0, 259, !dbg !3283
  br i1 %"1102", label %main_bb514, label %main_bb517, !dbg !3283

main_bb514:                                       ; preds = %main_bb513
  call void (...)* @__VERIFIER_error() #6, !dbg !3286
  unreachable, !dbg !3286

main_bb515:                                       ; preds = %main_bb512
  %"1103" = load i32* @"'lowerDriverReturn", align 4, !dbg !3290
  %"1104" = icmp ne i32 %status.0, %"1103", !dbg !3290
  br i1 %"1104", label %main_bb516, label %main_bb517, !dbg !3290

main_bb516:                                       ; preds = %main_bb515
  call void (...)* @__VERIFIER_error() #6, !dbg !3293
  unreachable, !dbg !3293

main_bb517:                                       ; preds = %main_bb500, %main_bb504, %main_bb513, %main_bb515, %main_bb510, %main_bb503, %main_bb298, %main_bb297
  %.0 = phi i32 [ -1, %main_bb297 ], [ -1, %main_bb298 ], [ 0, %main_bb503 ], [ 0, %main_bb510 ], [ 0, %main_bb515 ], [ 0, %main_bb513 ], [ 0, %main_bb504 ], [ 0, %main_bb500 ]
  ret i32 %.0, !dbg !3297
}

; Function Attrs: nounwind uwtable
define i32 @IoBuildDeviceIoControlRequest(i32 %IoControlCode, i32 %DeviceObject, i32 %InputBuffer, i32 %InputBufferLength, i32 %OutputBuffer, i32 %OutputBufferLength, i32 %InternalDeviceIoControl, i32 %Event, i32 %IoStatusBlock) #0 {
IoBuildDeviceIoControlRequest_bb518:
  call void @llvm.dbg.value(metadata !{i32 %IoControlCode}, i64 0, metadata !3298), !dbg !3299
  call void @llvm.dbg.value(metadata !{i32 %DeviceObject}, i64 0, metadata !3300), !dbg !3301
  call void @llvm.dbg.value(metadata !{i32 %InputBuffer}, i64 0, metadata !3302), !dbg !3303
  call void @llvm.dbg.value(metadata !{i32 %InputBufferLength}, i64 0, metadata !3304), !dbg !3305
  call void @llvm.dbg.value(metadata !{i32 %OutputBuffer}, i64 0, metadata !3306), !dbg !3307
  call void @llvm.dbg.value(metadata !{i32 %OutputBufferLength}, i64 0, metadata !3308), !dbg !3309
  call void @llvm.dbg.value(metadata !{i32 %InternalDeviceIoControl}, i64 0, metadata !3310), !dbg !3311
  call void @llvm.dbg.value(metadata !{i32 %Event}, i64 0, metadata !3312), !dbg !3313
  call void @llvm.dbg.value(metadata !{i32 %IoStatusBlock}, i64 0, metadata !3314), !dbg !3315
  %"1105" = call i32 @__VERIFIER_nondet_int(), !dbg !3316
  call void @llvm.dbg.value(metadata !{i32 %"1105"}, i64 0, metadata !3317), !dbg !3318
  store i32 1, i32* @"'customIrp", align 4, !dbg !3319
  %"1106" = call i32 @__VERIFIER_nondet_int(), !dbg !3320
  call void @llvm.dbg.value(metadata !{i32 %"1106"}, i64 0, metadata !3321), !dbg !3322
  %"1107" = icmp eq i32 %"1106", 0, !dbg !3323
  %.0 = select i1 %"1107", i32 %"1105", i32 0, !dbg !3323
  ret i32 %.0, !dbg !3324
}

; Function Attrs: nounwind uwtable
define i32 @IoDeleteSymbolicLink(i32 %SymbolicLinkName) #0 {
IoDeleteSymbolicLink_bb519:
  call void @llvm.dbg.value(metadata !{i32 %SymbolicLinkName}, i64 0, metadata !3325), !dbg !3326
  %"1108" = call i32 @__VERIFIER_nondet_int(), !dbg !3327
  call void @llvm.dbg.value(metadata !{i32 %"1108"}, i64 0, metadata !3328), !dbg !3329
  %"1109" = icmp eq i32 %"1108", 0, !dbg !3330
  %.0 = select i1 %"1109", i32 0, i32 -1073741823, !dbg !3330
  ret i32 %.0, !dbg !3332
}

; Function Attrs: nounwind uwtable
define i32 @IoQueryDeviceDescription(i32 %BusType, i32 %BusNumber, i32 %ControllerType, i32 %ControllerNumber, i32 %PeripheralType, i32 %PeripheralNumber, i32 %CalloutRoutine, i32 %Context) #0 {
IoQueryDeviceDescription_bb520:
  call void @llvm.dbg.value(metadata !{i32 %BusType}, i64 0, metadata !3333), !dbg !3334
  call void @llvm.dbg.value(metadata !{i32 %BusNumber}, i64 0, metadata !3335), !dbg !3336
  call void @llvm.dbg.value(metadata !{i32 %ControllerType}, i64 0, metadata !3337), !dbg !3338
  call void @llvm.dbg.value(metadata !{i32 %ControllerNumber}, i64 0, metadata !3339), !dbg !3340
  call void @llvm.dbg.value(metadata !{i32 %PeripheralType}, i64 0, metadata !3341), !dbg !3342
  call void @llvm.dbg.value(metadata !{i32 %PeripheralNumber}, i64 0, metadata !3343), !dbg !3344
  call void @llvm.dbg.value(metadata !{i32 %CalloutRoutine}, i64 0, metadata !3345), !dbg !3346
  call void @llvm.dbg.value(metadata !{i32 %Context}, i64 0, metadata !3347), !dbg !3348
  %"1110" = call i32 @__VERIFIER_nondet_int(), !dbg !3349
  call void @llvm.dbg.value(metadata !{i32 %"1110"}, i64 0, metadata !3350), !dbg !3351
  %"1111" = icmp eq i32 %"1110", 0, !dbg !3352
  %.0 = select i1 %"1111", i32 0, i32 -1073741823, !dbg !3352
  ret i32 %.0, !dbg !3353
}

; Function Attrs: nounwind uwtable
define i32 @IoRegisterDeviceInterface(i32 %PhysicalDeviceObject, i32 %InterfaceClassGuid, i32 %ReferenceString, i32 %SymbolicLinkName) #0 {
IoRegisterDeviceInterface_bb521:
  call void @llvm.dbg.value(metadata !{i32 %PhysicalDeviceObject}, i64 0, metadata !3354), !dbg !3355
  call void @llvm.dbg.value(metadata !{i32 %InterfaceClassGuid}, i64 0, metadata !3356), !dbg !3357
  call void @llvm.dbg.value(metadata !{i32 %ReferenceString}, i64 0, metadata !3358), !dbg !3359
  call void @llvm.dbg.value(metadata !{i32 %SymbolicLinkName}, i64 0, metadata !3360), !dbg !3361
  %"1112" = call i32 @__VERIFIER_nondet_int(), !dbg !3362
  call void @llvm.dbg.value(metadata !{i32 %"1112"}, i64 0, metadata !3363), !dbg !3364
  %"1113" = icmp eq i32 %"1112", 0, !dbg !3365
  %.0 = select i1 %"1113", i32 0, i32 -1073741808, !dbg !3365
  ret i32 %.0, !dbg !3366
}

; Function Attrs: nounwind uwtable
define i32 @IoSetDeviceInterfaceState(i32 %SymbolicLinkName, i32 %Enable) #0 {
IoSetDeviceInterfaceState_bb522:
  call void @llvm.dbg.value(metadata !{i32 %SymbolicLinkName}, i64 0, metadata !3367), !dbg !3368
  call void @llvm.dbg.value(metadata !{i32 %Enable}, i64 0, metadata !3369), !dbg !3370
  %"1114" = call i32 @__VERIFIER_nondet_int(), !dbg !3371
  call void @llvm.dbg.value(metadata !{i32 %"1114"}, i64 0, metadata !3372), !dbg !3373
  %"1115" = icmp eq i32 %"1114", 0, !dbg !3374
  %.0 = select i1 %"1115", i32 0, i32 -1073741823, !dbg !3374
  ret i32 %.0, !dbg !3376
}

; Function Attrs: nounwind uwtable
define void @stubMoreProcessingRequired() #0 {
stubMoreProcessingRequired_bb523:
  %"1116" = load i32* @"'s", align 4, !dbg !3377
  %"1117" = load i32* @"'NP", align 4, !dbg !3377
  %"1118" = icmp eq i32 %"1116", %"1117", !dbg !3377
  br i1 %"1118", label %stubMoreProcessingRequired_bb524, label %stubMoreProcessingRequired_bb525, !dbg !3377

stubMoreProcessingRequired_bb524:                 ; preds = %stubMoreProcessingRequired_bb523
  %"1119" = load i32* @"'MPR1", align 4, !dbg !3378
  store i32 %"1119", i32* @"'s", align 4, !dbg !3378
  ret void, !dbg !3379

stubMoreProcessingRequired_bb525:                 ; preds = %stubMoreProcessingRequired_bb523
  call void (...)* @__VERIFIER_error() #6, !dbg !3380
  unreachable, !dbg !3380
}

; Function Attrs: nounwind uwtable
define i32 @IofCallDriver(i32 %DeviceObject, i32 %Irp) #0 {
IofCallDriver_bb526:
  call void @llvm.dbg.value(metadata !{i32 %DeviceObject}, i64 0, metadata !3382), !dbg !3383
  call void @llvm.dbg.value(metadata !{i32 %Irp}, i64 0, metadata !3384), !dbg !3385
  %"1120" = call i32 @__VERIFIER_nondet_int(), !dbg !3386
  call void @llvm.dbg.value(metadata !{i32 %"1120"}, i64 0, metadata !3387), !dbg !3388
  %"1121" = load i32* @"'compRegistered", align 4, !dbg !3389
  %"1122" = icmp ne i32 %"1121", 0, !dbg !3389
  br i1 %"1122", label %IofCallDriver_bb527, label %IofCallDriver_bb530, !dbg !3389

IofCallDriver_bb527:                              ; preds = %IofCallDriver_bb526
  call void @llvm.dbg.value(metadata !{i32 %DeviceObject}, i64 0, metadata !3390) #5, !dbg !3392
  call void @llvm.dbg.value(metadata !{i32 %Irp}, i64 0, metadata !3393) #5, !dbg !3394
  call void @llvm.dbg.value(metadata !{i32 %"1120"}, i64 0, metadata !3395) #5, !dbg !3396
  call void @llvm.dbg.value(metadata !{i32 %"1120"}, i64 0, metadata !3397) #5, !dbg !3399
  call void @llvm.dbg.value(metadata !420, i64 0, metadata !3400) #5, !dbg !3401
  call void @llvm.dbg.value(metadata !139, i64 0, metadata !3402) #5, !dbg !3403
  %"1123" = call i32 @__VERIFIER_nondet_int() #5, !dbg !3404
  call void @llvm.dbg.value(metadata !{i32 %"1123"}, i64 0, metadata !3405) #5, !dbg !3406
  store i32 1, i32* @"'setEventCalled", align 4, !dbg !3407
  call void @llvm.dbg.value(metadata !430, i64 0, metadata !3408), !dbg !3409
  %"1124" = sext i32 -1073741802 to i64, !dbg !3410
  call void @llvm.dbg.value(metadata !{i64 %"1124"}, i64 0, metadata !3411), !dbg !3412
  %"1125" = icmp eq i64 %"1124", -1073741802, !dbg !3413
  br i1 %"1125", label %IofCallDriver_bb528, label %IofCallDriver_bb530, !dbg !3413

IofCallDriver_bb528:                              ; preds = %IofCallDriver_bb527
  %"1126" = load i32* @"'s", align 4, !dbg !3414
  %"1127" = load i32* @"'NP", align 4, !dbg !3414
  %"1128" = icmp eq i32 %"1126", %"1127", !dbg !3414
  br i1 %"1128", label %IofCallDriver_stubMoreProcessingRequired.exit, label %IofCallDriver_bb529, !dbg !3414

IofCallDriver_stubMoreProcessingRequired.exit:    ; preds = %IofCallDriver_bb528
  %"1129" = load i32* @"'MPR1", align 4, !dbg !3416
  store i32 %"1129", i32* @"'s", align 4, !dbg !3416
  br label %IofCallDriver_bb530, !dbg !3417

IofCallDriver_bb529:                              ; preds = %IofCallDriver_bb528
  call void (...)* @__VERIFIER_error() #6, !dbg !3418
  unreachable, !dbg !3418

IofCallDriver_bb530:                              ; preds = %IofCallDriver_bb527, %IofCallDriver_stubMoreProcessingRequired.exit, %IofCallDriver_bb526
  %"1130" = call i32 @__VERIFIER_nondet_int(), !dbg !3420
  call void @llvm.dbg.value(metadata !{i32 %"1130"}, i64 0, metadata !3421), !dbg !3422
  %"1131" = icmp eq i32 %"1130", 0, !dbg !3423
  br i1 %"1131", label %IofCallDriver_bb532, label %IofCallDriver_bb531, !dbg !3423

IofCallDriver_bb531:                              ; preds = %IofCallDriver_bb530
  %"1132" = call i32 @__VERIFIER_nondet_int(), !dbg !3424
  call void @llvm.dbg.value(metadata !{i32 %"1132"}, i64 0, metadata !3425), !dbg !3426
  %"1133" = icmp eq i32 %"1132", 1, !dbg !3427
  call void @llvm.dbg.value(metadata !463, i64 0, metadata !3428), !dbg !3429
  %. = select i1 %"1133", i32 -1073741823, i32 259, !dbg !3427
  br label %IofCallDriver_bb532, !dbg !3427

IofCallDriver_bb532:                              ; preds = %IofCallDriver_bb531, %IofCallDriver_bb530
  %returnVal2.0 = phi i32 [ 0, %IofCallDriver_bb530 ], [ %., %IofCallDriver_bb531 ]
  %"1134" = load i32* @"'s", align 4, !dbg !3430
  %"1135" = load i32* @"'NP", align 4, !dbg !3430
  %"1136" = icmp eq i32 %"1134", %"1135", !dbg !3430
  br i1 %"1136", label %IofCallDriver_bb533, label %IofCallDriver_bb534, !dbg !3430

IofCallDriver_bb533:                              ; preds = %IofCallDriver_bb532
  %"1137" = load i32* @"'IPC", align 4, !dbg !3431
  store i32 %"1137", i32* @"'s", align 4, !dbg !3431
  store i32 %returnVal2.0, i32* @"'lowerDriverReturn", align 4, !dbg !3432
  br label %IofCallDriver_bb540, !dbg !3433

IofCallDriver_bb534:                              ; preds = %IofCallDriver_bb532
  %"1138" = load i32* @"'s", align 4, !dbg !3434
  %"1139" = load i32* @"'MPR1", align 4, !dbg !3434
  %"1140" = icmp eq i32 %"1138", %"1139", !dbg !3434
  br i1 %"1140", label %IofCallDriver_bb535, label %IofCallDriver_bb538, !dbg !3434

IofCallDriver_bb535:                              ; preds = %IofCallDriver_bb534
  %"1141" = icmp eq i32 %returnVal2.0, 259, !dbg !3435
  br i1 %"1141", label %IofCallDriver_bb536, label %IofCallDriver_bb537, !dbg !3435

IofCallDriver_bb536:                              ; preds = %IofCallDriver_bb535
  %"1142" = load i32* @"'MPR3", align 4, !dbg !3436
  store i32 %"1142", i32* @"'s", align 4, !dbg !3436
  store i32 %returnVal2.0, i32* @"'lowerDriverReturn", align 4, !dbg !3437
  br label %IofCallDriver_bb540, !dbg !3438

IofCallDriver_bb537:                              ; preds = %IofCallDriver_bb535
  %"1143" = load i32* @"'NP", align 4, !dbg !3439
  store i32 %"1143", i32* @"'s", align 4, !dbg !3439
  store i32 %returnVal2.0, i32* @"'lowerDriverReturn", align 4, !dbg !3440
  br label %IofCallDriver_bb540

IofCallDriver_bb538:                              ; preds = %IofCallDriver_bb534
  %"1144" = load i32* @"'s", align 4, !dbg !3441
  %"1145" = load i32* @"'SKIP1", align 4, !dbg !3441
  %"1146" = icmp eq i32 %"1144", %"1145", !dbg !3441
  br i1 %"1146", label %IofCallDriver_bb539, label %IofCallDriver_bb541, !dbg !3441

IofCallDriver_bb539:                              ; preds = %IofCallDriver_bb538
  %"1147" = load i32* @"'SKIP2", align 4, !dbg !3442
  store i32 %"1147", i32* @"'s", align 4, !dbg !3442
  store i32 %returnVal2.0, i32* @"'lowerDriverReturn", align 4, !dbg !3443
  br label %IofCallDriver_bb540

IofCallDriver_bb540:                              ; preds = %IofCallDriver_bb539, %IofCallDriver_bb537, %IofCallDriver_bb536, %IofCallDriver_bb533
  ret i32 %returnVal2.0, !dbg !3444

IofCallDriver_bb541:                              ; preds = %IofCallDriver_bb538
  call void (...)* @__VERIFIER_error() #6, !dbg !3445
  unreachable, !dbg !3445
}

; Function Attrs: nounwind uwtable
define i32 @KeSetEvent(i32 %Event, i32 %Increment, i32 %Wait) #0 {
KeSetEvent_bb542:
  call void @llvm.dbg.value(metadata !{i32 %Event}, i64 0, metadata !3447), !dbg !3448
  call void @llvm.dbg.value(metadata !{i32 %Increment}, i64 0, metadata !3449), !dbg !3450
  call void @llvm.dbg.value(metadata !{i32 %Wait}, i64 0, metadata !3451), !dbg !3452
  %"1148" = call i32 @__VERIFIER_nondet_int(), !dbg !3453
  call void @llvm.dbg.value(metadata !{i32 %"1148"}, i64 0, metadata !3454), !dbg !3455
  store i32 1, i32* @"'setEventCalled", align 4, !dbg !3456
  ret i32 %"1148", !dbg !3457
}

; Function Attrs: nounwind uwtable
define i32 @KeWaitForSingleObject(i32 %Object, i32 %WaitReason, i32 %WaitMode, i32 %Alertable, i32 %Timeout) #0 {
KeWaitForSingleObject_bb543:
  call void @llvm.dbg.value(metadata !{i32 %Object}, i64 0, metadata !3458), !dbg !3459
  call void @llvm.dbg.value(metadata !{i32 %WaitReason}, i64 0, metadata !3460), !dbg !3461
  call void @llvm.dbg.value(metadata !{i32 %WaitMode}, i64 0, metadata !3462), !dbg !3463
  call void @llvm.dbg.value(metadata !{i32 %Alertable}, i64 0, metadata !3464), !dbg !3465
  call void @llvm.dbg.value(metadata !{i32 %Timeout}, i64 0, metadata !3466), !dbg !3467
  %"1149" = load i32* @"'s", align 4, !dbg !3468
  %"1150" = load i32* @"'MPR3", align 4, !dbg !3468
  %"1151" = icmp eq i32 %"1149", %"1150", !dbg !3468
  %"1152" = load i32* @"'setEventCalled", align 4
  %"1153" = icmp eq i32 %"1152", 1, !dbg !3469
  %or.cond = and i1 %"1151", %"1153", !dbg !3468
  br i1 %or.cond, label %KeWaitForSingleObject_bb544, label %KeWaitForSingleObject_bb545, !dbg !3468

KeWaitForSingleObject_bb544:                      ; preds = %KeWaitForSingleObject_bb543
  %"1154" = load i32* @"'NP", align 4, !dbg !3470
  store i32 %"1154", i32* @"'s", align 4, !dbg !3470
  store i32 0, i32* @"'setEventCalled", align 4, !dbg !3471
  br label %KeWaitForSingleObject_bb549, !dbg !3472

KeWaitForSingleObject_bb545:                      ; preds = %KeWaitForSingleObject_bb543
  %"1155" = load i32* @"'customIrp", align 4, !dbg !3473
  %"1156" = icmp eq i32 %"1155", 1, !dbg !3473
  br i1 %"1156", label %KeWaitForSingleObject_bb546, label %KeWaitForSingleObject_bb547, !dbg !3473

KeWaitForSingleObject_bb546:                      ; preds = %KeWaitForSingleObject_bb545
  %"1157" = load i32* @"'NP", align 4, !dbg !3474
  store i32 %"1157", i32* @"'s", align 4, !dbg !3474
  store i32 0, i32* @"'customIrp", align 4, !dbg !3475
  br label %KeWaitForSingleObject_bb549, !dbg !3476

KeWaitForSingleObject_bb547:                      ; preds = %KeWaitForSingleObject_bb545
  %"1158" = load i32* @"'s", align 4, !dbg !3477
  %"1159" = load i32* @"'MPR3", align 4, !dbg !3477
  %"1160" = icmp eq i32 %"1158", %"1159", !dbg !3477
  br i1 %"1160", label %KeWaitForSingleObject_bb548, label %KeWaitForSingleObject_bb549, !dbg !3477

KeWaitForSingleObject_bb548:                      ; preds = %KeWaitForSingleObject_bb547
  call void (...)* @__VERIFIER_error() #6, !dbg !3478
  unreachable, !dbg !3478

KeWaitForSingleObject_bb549:                      ; preds = %KeWaitForSingleObject_bb546, %KeWaitForSingleObject_bb547, %KeWaitForSingleObject_bb544
  %"1161" = call i32 @__VERIFIER_nondet_int(), !dbg !3480
  call void @llvm.dbg.value(metadata !{i32 %"1161"}, i64 0, metadata !3481), !dbg !3482
  %"1162" = icmp eq i32 %"1161", 0, !dbg !3483
  %.0 = select i1 %"1162", i32 0, i32 -1073741823, !dbg !3483
  ret i32 %.0, !dbg !3485
}

; Function Attrs: nounwind uwtable
define i32 @ObReferenceObjectByHandle(i32 %Handle, i32 %DesiredAccess, i32 %ObjectType, i32 %AccessMode, i32 %Object, i32 %HandleInformation) #0 {
ObReferenceObjectByHandle_bb550:
  call void @llvm.dbg.value(metadata !{i32 %Handle}, i64 0, metadata !3486), !dbg !3487
  call void @llvm.dbg.value(metadata !{i32 %DesiredAccess}, i64 0, metadata !3488), !dbg !3489
  call void @llvm.dbg.value(metadata !{i32 %ObjectType}, i64 0, metadata !3490), !dbg !3491
  call void @llvm.dbg.value(metadata !{i32 %AccessMode}, i64 0, metadata !3492), !dbg !3493
  call void @llvm.dbg.value(metadata !{i32 %Object}, i64 0, metadata !3494), !dbg !3495
  call void @llvm.dbg.value(metadata !{i32 %HandleInformation}, i64 0, metadata !3496), !dbg !3497
  %"1163" = call i32 @__VERIFIER_nondet_int(), !dbg !3498
  call void @llvm.dbg.value(metadata !{i32 %"1163"}, i64 0, metadata !3499), !dbg !3500
  %"1164" = icmp eq i32 %"1163", 0, !dbg !3501
  %.0 = select i1 %"1164", i32 0, i32 -1073741823, !dbg !3501
  ret i32 %.0, !dbg !3502
}

; Function Attrs: nounwind uwtable
define i32 @PsCreateSystemThread(i32 %ThreadHandle, i32 %DesiredAccess, i32 %ObjectAttributes, i32 %ProcessHandle, i32 %ClientId, i32 %StartRoutine, i32 %StartContext) #0 {
PsCreateSystemThread_bb551:
  call void @llvm.dbg.value(metadata !{i32 %ThreadHandle}, i64 0, metadata !3503), !dbg !3504
  call void @llvm.dbg.value(metadata !{i32 %DesiredAccess}, i64 0, metadata !3505), !dbg !3506
  call void @llvm.dbg.value(metadata !{i32 %ObjectAttributes}, i64 0, metadata !3507), !dbg !3508
  call void @llvm.dbg.value(metadata !{i32 %ProcessHandle}, i64 0, metadata !3509), !dbg !3510
  call void @llvm.dbg.value(metadata !{i32 %ClientId}, i64 0, metadata !3511), !dbg !3512
  call void @llvm.dbg.value(metadata !{i32 %StartRoutine}, i64 0, metadata !3513), !dbg !3514
  call void @llvm.dbg.value(metadata !{i32 %StartContext}, i64 0, metadata !3515), !dbg !3516
  %"1165" = call i32 @__VERIFIER_nondet_int(), !dbg !3517
  call void @llvm.dbg.value(metadata !{i32 %"1165"}, i64 0, metadata !3518), !dbg !3519
  %"1166" = icmp eq i32 %"1165", 0, !dbg !3520
  %.0 = select i1 %"1166", i32 0, i32 -1073741823, !dbg !3520
  ret i32 %.0, !dbg !3521
}

; Function Attrs: nounwind uwtable
define i32 @ZwClose(i32 %Handle) #0 {
ZwClose_bb552:
  call void @llvm.dbg.value(metadata !{i32 %Handle}, i64 0, metadata !3522), !dbg !3523
  %"1167" = call i32 @__VERIFIER_nondet_int(), !dbg !3524
  call void @llvm.dbg.value(metadata !{i32 %"1167"}, i64 0, metadata !3525), !dbg !3526
  %"1168" = icmp eq i32 %"1167", 0, !dbg !3527
  %.0 = select i1 %"1168", i32 0, i32 -1073741823, !dbg !3527
  ret i32 %.0, !dbg !3529
}

declare i32 @__kittel_nondef.0()

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #2

declare i64 @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!85, !86}
!llvm.ident = !{!87}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !58, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [//FILES_DIR/SourceCode_SemanticAugmentor.c] [DW_LANG_C99]
!1 = metadata !{metadata !"FILES_DIR/SourceCode_SemanticAugmentor.c", metadata !"/"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !8, metadata !9, metadata !15, metadata !16, metadata !17, metadata !18, metadata !21, metadata !22, metadata !25, metadata !26, metadata !29, metadata !32, metadata !35, metadata !38, metadata !41, metadata !42, metadata !43, metadata !44, metadata !47, metadata !48, metadata !51, metadata !54, metadata !57}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"errorFn", metadata !"errorFn", metadata !"", i32 34, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @errorFn, null, null, metadata !2, i32 35} ; [ DW_TAG_subprogram ] [line 34] [def] [scope 35] [errorFn]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null}
!8 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"_BLAST_init", metadata !"_BLAST_init", metadata !"", i32 43, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @_BLAST_init, null, null, metadata !2, i32 44} ; [ DW_TAG_subprogram ] [line 43] [def] [scope 44] [_BLAST_init]
!9 = metadata !{i32 786478, metadata !10, metadata !11, metadata !"FlAcpiConfigureFloppy", metadata !"FlAcpiConfigureFloppy", metadata !"", i32 92, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32)* @FlAcpiConfigureFloppy, null, null, metadata !2, i32 93} ; [ DW_TAG_subprogram ] [line 92] [def] [scope 93] [FlAcpiConfigureFloppy]
!10 = metadata !{metadata !"floppy_simpl3.cil.c", metadata !"/"}
!11 = metadata !{i32 786473, metadata !10}        ; [ DW_TAG_file_type ] [//floppy_simpl3.cil.c]
!12 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !13, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!13 = metadata !{metadata !14, metadata !14, metadata !14}
!14 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!15 = metadata !{i32 786478, metadata !10, metadata !11, metadata !"FlQueueIrpToThread", metadata !"FlQueueIrpToThread", metadata !"", i32 99, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32)* @FlQueueIrpToThread, null, null, metadata !2, i32 100} ; [ DW_TAG_subprogram ] [line 99] [def] [scope 100] [FlQueueIrpToThread]
!16 = metadata !{i32 786478, metadata !10, metadata !11, metadata !"FloppyPnp", metadata !"FloppyPnp", metadata !"", i32 168, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32)* @FloppyPnp, null, null, metadata !2, i32 169} ; [ DW_TAG_subprogram ] [line 168] [def] [scope 169] [FloppyPnp]
!17 = metadata !{i32 786478, metadata !10, metadata !11, metadata !"FloppyStartDevice", metadata !"FloppyStartDevice", metadata !"", i32 461, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32)* @FloppyStartDevice, null, null, metadata !2, i32 462} ; [ DW_TAG_subprogram ] [line 461] [def] [scope 462] [FloppyStartDevice]
!18 = metadata !{i32 786478, metadata !10, metadata !11, metadata !"FloppyPnpComplete", metadata !"FloppyPnpComplete", metadata !"", i32 629, metadata !19, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32, i32)* @FloppyPnpComplete, null, null, metadata !2, i32 630} ; [ DW_TAG_subprogram ] [line 629] [def] [scope 630] [FloppyPnpComplete]
!19 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !20, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!20 = metadata !{metadata !14, metadata !14, metadata !14, metadata !14}
!21 = metadata !{i32 786478, metadata !10, metadata !11, metadata !"FlFdcDeviceIo", metadata !"FlFdcDeviceIo", metadata !"", i32 639, metadata !19, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32, i32)* @FlFdcDeviceIo, null, null, metadata !2, i32 640} ; [ DW_TAG_subprogram ] [line 639] [def] [scope 640] [FlFdcDeviceIo]
!22 = metadata !{i32 786478, metadata !10, metadata !11, metadata !"FloppyProcessQueuedRequests", metadata !"FloppyProcessQueuedRequests", metadata !"", i32 674, metadata !23, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32)* @FloppyProcessQueuedRequests, null, null, metadata !2, i32 675} ; [ DW_TAG_subprogram ] [line 674] [def] [scope 675] [FloppyProcessQueuedRequests]
!23 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !24, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!24 = metadata !{null, metadata !14}
!25 = metadata !{i32 786478, metadata !10, metadata !11, metadata !"stub_driver_init", metadata !"stub_driver_init", metadata !"", i32 681, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @stub_driver_init, null, null, metadata !2, i32 682} ; [ DW_TAG_subprogram ] [line 681] [def] [scope 682] [stub_driver_init]
!26 = metadata !{i32 786478, metadata !10, metadata !11, metadata !"main", metadata !"main", metadata !"", i32 694, metadata !27, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 ()* @main, null, null, metadata !2, i32 695} ; [ DW_TAG_subprogram ] [line 694] [def] [scope 695] [main]
!27 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !28, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!28 = metadata !{metadata !14}
!29 = metadata !{i32 786478, metadata !10, metadata !11, metadata !"IoBuildDeviceIoControlRequest", metadata !"IoBuildDeviceIoControlRequest", metadata !"", i32 823, metadata !30, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32, i32, i32, i32, i32, i32, i32, i32)* @IoBuildDeviceIoControlRequest, null, null, metadata !2, i32 826} ; [ DW_TAG_subprogram ] [line 823] [def] [scope 826] [IoBuildDeviceIoControlRequest]
!30 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !31, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!31 = metadata !{metadata !14, metadata !14, metadata !14, metadata !14, metadata !14, metadata !14, metadata !14, metadata !14, metadata !14, metadata !14}
!32 = metadata !{i32 786478, metadata !10, metadata !11, metadata !"IoDeleteSymbolicLink", metadata !"IoDeleteSymbolicLink", metadata !"", i32 848, metadata !33, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @IoDeleteSymbolicLink, null, null, metadata !2, i32 849} ; [ DW_TAG_subprogram ] [line 848] [def] [scope 849] [IoDeleteSymbolicLink]
!33 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !34, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!34 = metadata !{metadata !14, metadata !14}
!35 = metadata !{i32 786478, metadata !10, metadata !11, metadata !"IoQueryDeviceDescription", metadata !"IoQueryDeviceDescription", metadata !"", i32 869, metadata !36, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32, i32, i32, i32, i32, i32, i32)* @IoQueryDeviceDescription, null, null, metadata !2, i32 872} ; [ DW_TAG_subprogram ] [line 869] [def] [scope 872] [IoQueryDeviceDescription]
!36 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !37, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!37 = metadata !{metadata !14, metadata !14, metadata !14, metadata !14, metadata !14, metadata !14, metadata !14, metadata !14, metadata !14}
!38 = metadata !{i32 786478, metadata !10, metadata !11, metadata !"IoRegisterDeviceInterface", metadata !"IoRegisterDeviceInterface", metadata !"", i32 892, metadata !39, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32, i32, i32)* @IoRegisterDeviceInterface, null, null, metadata !2, i32 894} ; [ DW_TAG_subprogram ] [line 892] [def] [scope 894] [IoRegisterDeviceInterface]
!39 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !40, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!40 = metadata !{metadata !14, metadata !14, metadata !14, metadata !14, metadata !14}
!41 = metadata !{i32 786478, metadata !10, metadata !11, metadata !"IoSetDeviceInterfaceState", metadata !"IoSetDeviceInterfaceState", metadata !"", i32 914, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32)* @IoSetDeviceInterfaceState, null, null, metadata !2, i32 915} ; [ DW_TAG_subprogram ] [line 914] [def] [scope 915] [IoSetDeviceInterfaceState]
!42 = metadata !{i32 786478, metadata !10, metadata !11, metadata !"stubMoreProcessingRequired", metadata !"stubMoreProcessingRequired", metadata !"", i32 935, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @stubMoreProcessingRequired, null, null, metadata !2, i32 936} ; [ DW_TAG_subprogram ] [line 935] [def] [scope 936] [stubMoreProcessingRequired]
!43 = metadata !{i32 786478, metadata !10, metadata !11, metadata !"IofCallDriver", metadata !"IofCallDriver", metadata !"", i32 949, metadata !12, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32)* @IofCallDriver, null, null, metadata !2, i32 950} ; [ DW_TAG_subprogram ] [line 949] [def] [scope 950] [IofCallDriver]
!44 = metadata !{i32 786478, metadata !10, metadata !11, metadata !"IofCompleteRequest", metadata !"IofCompleteRequest", metadata !"", i32 1020, metadata !45, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void (i32, i32)* @IofCompleteRequest, null, null, metadata !2, i32 1021} ; [ DW_TAG_subprogram ] [line 1020] [def] [scope 1021] [IofCompleteRequest]
!45 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !46, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!46 = metadata !{null, metadata !14, metadata !14}
!47 = metadata !{i32 786478, metadata !10, metadata !11, metadata !"KeSetEvent", metadata !"KeSetEvent", metadata !"", i32 1034, metadata !19, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32, i32)* @KeSetEvent, null, null, metadata !2, i32 1035} ; [ DW_TAG_subprogram ] [line 1034] [def] [scope 1035] [KeSetEvent]
!48 = metadata !{i32 786478, metadata !10, metadata !11, metadata !"KeWaitForSingleObject", metadata !"KeWaitForSingleObject", metadata !"", i32 1042, metadata !49, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32, i32, i32, i32)* @KeWaitForSingleObject, null, null, metadata !2, i32 1044} ; [ DW_TAG_subprogram ] [line 1042] [def] [scope 1044] [KeWaitForSingleObject]
!49 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !50, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!50 = metadata !{metadata !14, metadata !14, metadata !14, metadata !14, metadata !14, metadata !14}
!51 = metadata !{i32 786478, metadata !10, metadata !11, metadata !"ObReferenceObjectByHandle", metadata !"ObReferenceObjectByHandle", metadata !"", i32 1086, metadata !52, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32, i32, i32, i32, i32)* @ObReferenceObjectByHandle, null, null, metadata !2, i32 1088} ; [ DW_TAG_subprogram ] [line 1086] [def] [scope 1088] [ObReferenceObjectByHandle]
!52 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !53, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!53 = metadata !{metadata !14, metadata !14, metadata !14, metadata !14, metadata !14, metadata !14, metadata !14}
!54 = metadata !{i32 786478, metadata !10, metadata !11, metadata !"PsCreateSystemThread", metadata !"PsCreateSystemThread", metadata !"", i32 1108, metadata !55, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32, i32, i32, i32, i32, i32, i32)* @PsCreateSystemThread, null, null, metadata !2, i32 1110} ; [ DW_TAG_subprogram ] [line 1108] [def] [scope 1110] [PsCreateSystemThread]
!55 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !56, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!56 = metadata !{metadata !14, metadata !14, metadata !14, metadata !14, metadata !14, metadata !14, metadata !14, metadata !14}
!57 = metadata !{i32 786478, metadata !10, metadata !11, metadata !"ZwClose", metadata !"ZwClose", metadata !"", i32 1130, metadata !33, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 (i32)* @ZwClose, null, null, metadata !2, i32 1131} ; [ DW_TAG_subprogram ] [line 1130] [def] [scope 1131] [ZwClose]
!58 = metadata !{metadata !59, metadata !60, metadata !61, metadata !62, metadata !63, metadata !64, metadata !65, metadata !66, metadata !67, metadata !68, metadata !69, metadata !70, metadata !71, metadata !72, metadata !73, metadata !74, metadata !75, metadata !76, metadata !77, metadata !78, metadata !79, metadata !80, metadata !81, metadata !82, metadata !83, metadata !84}
!59 = metadata !{i32 786484, i32 0, null, metadata !"PagingReferenceCount", metadata !"PagingReferenceCount", metadata !"", metadata !11, i32 90, metadata !14, i32 0, i32 1, i32* @"'PagingReferenceCount", null} ; [ DW_TAG_variable ] [PagingReferenceCount] [line 90] [def]
!60 = metadata !{i32 786484, i32 0, null, metadata !"PagingMutex", metadata !"PagingMutex", metadata !"", metadata !11, i32 91, metadata !14, i32 0, i32 1, i32* @"'PagingMutex", null} ; [ DW_TAG_variable ] [PagingMutex] [line 91] [def]
!61 = metadata !{i32 786484, i32 0, null, metadata !"FloppyThread", metadata !"FloppyThread", metadata !"", metadata !5, i32 9, metadata !14, i32 0, i32 1, i32* @"'FloppyThread", null} ; [ DW_TAG_variable ] [FloppyThread] [line 9] [def]
!62 = metadata !{i32 786484, i32 0, null, metadata !"KernelMode", metadata !"KernelMode", metadata !"", metadata !5, i32 10, metadata !14, i32 0, i32 1, i32* @"'KernelMode", null} ; [ DW_TAG_variable ] [KernelMode] [line 10] [def]
!63 = metadata !{i32 786484, i32 0, null, metadata !"Suspended", metadata !"Suspended", metadata !"", metadata !5, i32 11, metadata !14, i32 0, i32 1, i32* @"'Suspended", null} ; [ DW_TAG_variable ] [Suspended] [line 11] [def]
!64 = metadata !{i32 786484, i32 0, null, metadata !"Executive", metadata !"Executive", metadata !"", metadata !5, i32 12, metadata !14, i32 0, i32 1, i32* @"'Executive", null} ; [ DW_TAG_variable ] [Executive] [line 12] [def]
!65 = metadata !{i32 786484, i32 0, null, metadata !"DiskController", metadata !"DiskController", metadata !"", metadata !5, i32 13, metadata !14, i32 0, i32 1, i32* @"'DiskController", null} ; [ DW_TAG_variable ] [DiskController] [line 13] [def]
!66 = metadata !{i32 786484, i32 0, null, metadata !"FloppyDiskPeripheral", metadata !"FloppyDiskPeripheral", metadata !"", metadata !5, i32 14, metadata !14, i32 0, i32 1, i32* @"'FloppyDiskPeripheral", null} ; [ DW_TAG_variable ] [FloppyDiskPeripheral] [line 14] [def]
!67 = metadata !{i32 786484, i32 0, null, metadata !"FlConfigCallBack", metadata !"FlConfigCallBack", metadata !"", metadata !5, i32 15, metadata !14, i32 0, i32 1, i32* @"'FlConfigCallBack", null} ; [ DW_TAG_variable ] [FlConfigCallBack] [line 15] [def]
!68 = metadata !{i32 786484, i32 0, null, metadata !"MaximumInterfaceType", metadata !"MaximumInterfaceType", metadata !"", metadata !5, i32 16, metadata !14, i32 0, i32 1, i32* @"'MaximumInterfaceType", null} ; [ DW_TAG_variable ] [MaximumInterfaceType] [line 16] [def]
!69 = metadata !{i32 786484, i32 0, null, metadata !"MOUNTDEV_MOUNTED_DEVICE_GUID", metadata !"MOUNTDEV_MOUNTED_DEVICE_GUID", metadata !"", metadata !5, i32 17, metadata !14, i32 0, i32 1, i32* @"'MOUNTDEV_MOUNTED_DEVICE_GUID", null} ; [ DW_TAG_variable ] [MOUNTDEV_MOUNTED_DEVICE_GUID] [line 17] [def]
!70 = metadata !{i32 786484, i32 0, null, metadata !"myStatus", metadata !"myStatus", metadata !"", metadata !5, i32 18, metadata !14, i32 0, i32 1, i32* @"'myStatus", null} ; [ DW_TAG_variable ] [myStatus] [line 18] [def]
!71 = metadata !{i32 786484, i32 0, null, metadata !"s", metadata !"s", metadata !"", metadata !5, i32 19, metadata !14, i32 0, i32 1, i32* @"'s", null} ; [ DW_TAG_variable ] [s] [line 19] [def]
!72 = metadata !{i32 786484, i32 0, null, metadata !"UNLOADED", metadata !"UNLOADED", metadata !"", metadata !5, i32 20, metadata !14, i32 0, i32 1, i32* @"'UNLOADED", null} ; [ DW_TAG_variable ] [UNLOADED] [line 20] [def]
!73 = metadata !{i32 786484, i32 0, null, metadata !"NP", metadata !"NP", metadata !"", metadata !5, i32 21, metadata !14, i32 0, i32 1, i32* @"'NP", null} ; [ DW_TAG_variable ] [NP] [line 21] [def]
!74 = metadata !{i32 786484, i32 0, null, metadata !"DC", metadata !"DC", metadata !"", metadata !5, i32 22, metadata !14, i32 0, i32 1, i32* @"'DC", null} ; [ DW_TAG_variable ] [DC] [line 22] [def]
!75 = metadata !{i32 786484, i32 0, null, metadata !"SKIP1", metadata !"SKIP1", metadata !"", metadata !5, i32 23, metadata !14, i32 0, i32 1, i32* @"'SKIP1", null} ; [ DW_TAG_variable ] [SKIP1] [line 23] [def]
!76 = metadata !{i32 786484, i32 0, null, metadata !"SKIP2", metadata !"SKIP2", metadata !"", metadata !5, i32 24, metadata !14, i32 0, i32 1, i32* @"'SKIP2", null} ; [ DW_TAG_variable ] [SKIP2] [line 24] [def]
!77 = metadata !{i32 786484, i32 0, null, metadata !"MPR1", metadata !"MPR1", metadata !"", metadata !5, i32 25, metadata !14, i32 0, i32 1, i32* @"'MPR1", null} ; [ DW_TAG_variable ] [MPR1] [line 25] [def]
!78 = metadata !{i32 786484, i32 0, null, metadata !"MPR3", metadata !"MPR3", metadata !"", metadata !5, i32 26, metadata !14, i32 0, i32 1, i32* @"'MPR3", null} ; [ DW_TAG_variable ] [MPR3] [line 26] [def]
!79 = metadata !{i32 786484, i32 0, null, metadata !"IPC", metadata !"IPC", metadata !"", metadata !5, i32 27, metadata !14, i32 0, i32 1, i32* @"'IPC", null} ; [ DW_TAG_variable ] [IPC] [line 27] [def]
!80 = metadata !{i32 786484, i32 0, null, metadata !"pended", metadata !"pended", metadata !"", metadata !5, i32 28, metadata !14, i32 0, i32 1, i32* @"'pended", null} ; [ DW_TAG_variable ] [pended] [line 28] [def]
!81 = metadata !{i32 786484, i32 0, null, metadata !"compRegistered", metadata !"compRegistered", metadata !"", metadata !5, i32 29, metadata !14, i32 0, i32 1, i32* @"'compRegistered", null} ; [ DW_TAG_variable ] [compRegistered] [line 29] [def]
!82 = metadata !{i32 786484, i32 0, null, metadata !"lowerDriverReturn", metadata !"lowerDriverReturn", metadata !"", metadata !5, i32 30, metadata !14, i32 0, i32 1, i32* @"'lowerDriverReturn", null} ; [ DW_TAG_variable ] [lowerDriverReturn] [line 30] [def]
!83 = metadata !{i32 786484, i32 0, null, metadata !"setEventCalled", metadata !"setEventCalled", metadata !"", metadata !5, i32 31, metadata !14, i32 0, i32 1, i32* @"'setEventCalled", null} ; [ DW_TAG_variable ] [setEventCalled] [line 31] [def]
!84 = metadata !{i32 786484, i32 0, null, metadata !"customIrp", metadata !"customIrp", metadata !"", metadata !5, i32 32, metadata !14, i32 0, i32 1, i32* @"'customIrp", null} ; [ DW_TAG_variable ] [customIrp] [line 32] [def]
!85 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!86 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!87 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!88 = metadata !{i32 38, i32 10, metadata !89, null}
!89 = metadata !{i32 786443, metadata !1, metadata !4, i32 37, i32 3, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!90 = metadata !{i32 73, i32 3, metadata !91, null}
!91 = metadata !{i32 786443, metadata !1, metadata !8, i32 46, i32 3, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!92 = metadata !{i32 74, i32 3, metadata !91, null}
!93 = metadata !{i32 75, i32 3, metadata !91, null}
!94 = metadata !{i32 76, i32 3, metadata !91, null}
!95 = metadata !{i32 77, i32 3, metadata !91, null}
!96 = metadata !{i32 78, i32 3, metadata !91, null}
!97 = metadata !{i32 79, i32 3, metadata !91, null}
!98 = metadata !{i32 80, i32 3, metadata !91, null}
!99 = metadata !{i32 81, i32 3, metadata !91, null}
!100 = metadata !{i32 82, i32 3, metadata !91, null}
!101 = metadata !{i32 83, i32 3, metadata !91, null}
!102 = metadata !{i32 84, i32 3, metadata !91, null}
!103 = metadata !{i32 85, i32 3, metadata !91, null}
!104 = metadata !{i32 86, i32 3, metadata !91, null}
!105 = metadata !{i32 89, i32 1, metadata !8, null}
!106 = metadata !{i32 786689, metadata !9, metadata !"DisketteExtension", metadata !11, i32 16777308, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [DisketteExtension] [line 92]
!107 = metadata !{i32 92, i32 31, metadata !9, null}
!108 = metadata !{i32 786689, metadata !9, metadata !"FdcInfo", metadata !11, i32 33554524, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [FdcInfo] [line 92]
!109 = metadata !{i32 92, i32 55, metadata !9, null}
!110 = metadata !{i32 96, i32 3, metadata !111, null}
!111 = metadata !{i32 786443, metadata !10, metadata !9, i32 95, i32 3, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!112 = metadata !{i32 786689, metadata !15, metadata !"Irp", metadata !11, i32 16777315, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Irp] [line 99]
!113 = metadata !{i32 99, i32 28, metadata !15, null}
!114 = metadata !{i32 786689, metadata !15, metadata !"DisketteExtension", metadata !11, i32 33554531, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [DisketteExtension] [line 99]
!115 = metadata !{i32 99, i32 38, metadata !15, null}
!116 = metadata !{i32 101, i32 22, metadata !15, null}
!117 = metadata !{i32 786688, metadata !15, metadata !"threadHandle", metadata !11, i32 101, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [threadHandle] [line 101]
!118 = metadata !{i32 101, i32 7, metadata !15, null}
!119 = metadata !{i32 102, i32 41, metadata !15, null}
!120 = metadata !{i32 786688, metadata !15, metadata !"DisketteExtension__PoweringDown", metadata !11, i32 102, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [DisketteExtension__PoweringDown] [line 102]
!121 = metadata !{i32 102, i32 7, metadata !15, null}
!122 = metadata !{i32 103, i32 49, metadata !15, null}
!123 = metadata !{i32 786688, metadata !15, metadata !"DisketteExtension__ThreadReferenceCount", metadata !11, i32 103, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [DisketteExtension__ThreadReferenceCount] [line 103]
!124 = metadata !{i32 103, i32 7, metadata !15, null}
!125 = metadata !{i32 104, i32 41, metadata !15, null}
!126 = metadata !{i32 786688, metadata !15, metadata !"DisketteExtension__FloppyThread", metadata !11, i32 104, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [DisketteExtension__FloppyThread] [line 104]
!127 = metadata !{i32 104, i32 7, metadata !15, null}
!128 = metadata !{i32 108, i32 23, metadata !15, null}
!129 = metadata !{i32 786688, metadata !15, metadata !"ObjAttributes", metadata !11, i32 108, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ObjAttributes] [line 108]
!130 = metadata !{i32 108, i32 7, metadata !15, null}
!131 = metadata !{i32 111, i32 7, metadata !132, null}
!132 = metadata !{i32 786443, metadata !10, metadata !133, i32 111, i32 7, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!133 = metadata !{i32 786443, metadata !10, metadata !15, i32 112, i32 3, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!134 = metadata !{i32 112, i32 5, metadata !135, null}
!135 = metadata !{i32 786443, metadata !10, metadata !132, i32 111, i32 45, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!136 = metadata !{i32 -1073741101}
!137 = metadata !{i32 786688, metadata !15, metadata !"Irp__IoStatus__Status", metadata !11, i32 105, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Irp__IoStatus__Status] [line 105]
!138 = metadata !{i32 105, i32 7, metadata !15, null}
!139 = metadata !{i32 0}
!140 = metadata !{i32 786688, metadata !15, metadata !"Irp__IoStatus__Information", metadata !11, i32 106, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Irp__IoStatus__Information] [line 106]
!141 = metadata !{i32 106, i32 7, metadata !15, null}
!142 = metadata !{i32 115, i32 5, metadata !135, null}
!143 = metadata !{i32 119, i32 3, metadata !133, null}
!144 = metadata !{i32 120, i32 7, metadata !145, null}
!145 = metadata !{i32 786443, metadata !10, metadata !133, i32 120, i32 7, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!146 = metadata !{i32 122, i32 5, metadata !147, null}
!147 = metadata !{i32 786443, metadata !10, metadata !145, i32 120, i32 53, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!148 = metadata !{i32 786689, metadata !54, metadata !"ThreadHandle", metadata !11, i32 16778324, metadata !14, i32 0, metadata !149} ; [ DW_TAG_arg_variable ] [ThreadHandle] [line 1108]
!149 = metadata !{i32 129, i32 14, metadata !150, null}
!150 = metadata !{i32 786443, metadata !10, metadata !147, i32 126, i32 5, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!151 = metadata !{i32 1108, i32 30, metadata !54, metadata !149}
!152 = metadata !{i32 786689, metadata !54, metadata !"DesiredAccess", metadata !11, i32 33555540, metadata !14, i32 0, metadata !149} ; [ DW_TAG_arg_variable ] [DesiredAccess] [line 1108]
!153 = metadata !{i32 1108, i32 49, metadata !54, metadata !149}
!154 = metadata !{i32 786689, metadata !54, metadata !"ObjectAttributes", metadata !11, i32 50332756, metadata !14, i32 0, metadata !149} ; [ DW_TAG_arg_variable ] [ObjectAttributes] [line 1108]
!155 = metadata !{i32 1108, i32 69, metadata !54, metadata !149}
!156 = metadata !{i32 786689, metadata !54, metadata !"ProcessHandle", metadata !11, i32 67109973, metadata !14, i32 0, metadata !149} ; [ DW_TAG_arg_variable ] [ProcessHandle] [line 1109]
!157 = metadata !{i32 1109, i32 30, metadata !54, metadata !149}
!158 = metadata !{i32 786689, metadata !54, metadata !"ClientId", metadata !11, i32 83887189, metadata !14, i32 0, metadata !149} ; [ DW_TAG_arg_variable ] [ClientId] [line 1109]
!159 = metadata !{i32 1109, i32 50, metadata !54, metadata !149}
!160 = metadata !{i32 786689, metadata !54, metadata !"StartContext", metadata !11, i32 117441621, metadata !14, i32 0, metadata !149} ; [ DW_TAG_arg_variable ] [StartContext] [line 1109]
!161 = metadata !{i32 1109, i32 84, metadata !54, metadata !149}
!162 = metadata !{i32 1114, i32 16, metadata !163, metadata !149}
!163 = metadata !{i32 786443, metadata !10, metadata !54, i32 1112, i32 3, i32 0, i32 342} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!164 = metadata !{i32 786688, metadata !163, metadata !"tmp_ndt_10", metadata !11, i32 1113, metadata !14, i32 0, metadata !149} ; [ DW_TAG_auto_variable ] [tmp_ndt_10] [line 1113]
!165 = metadata !{i32 1113, i32 7, metadata !163, metadata !149}
!166 = metadata !{i32 1115, i32 7, metadata !167, metadata !149}
!167 = metadata !{i32 786443, metadata !10, metadata !163, i32 1115, i32 7, i32 0, i32 343} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!168 = metadata !{i32 786688, metadata !15, metadata !"status", metadata !11, i32 100, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [status] [line 100]
!169 = metadata !{i32 100, i32 7, metadata !15, null}
!170 = metadata !{i32 132, i32 9, metadata !171, null}
!171 = metadata !{i32 786443, metadata !10, metadata !172, i32 132, i32 9, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!172 = metadata !{i32 786443, metadata !10, metadata !147, i32 132, i32 5, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!173 = metadata !{i32 -1}
!174 = metadata !{i32 134, i32 7, metadata !175, null}
!175 = metadata !{i32 786443, metadata !10, metadata !171, i32 132, i32 21, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!176 = metadata !{i32 140, i32 7, metadata !175, null}
!177 = metadata !{i32 786689, metadata !51, metadata !"Handle", metadata !11, i32 16778302, metadata !14, i32 0, metadata !178} ; [ DW_TAG_arg_variable ] [Handle] [line 1086]
!178 = metadata !{i32 145, i32 14, metadata !179, null}
!179 = metadata !{i32 786443, metadata !10, metadata !147, i32 143, i32 5, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!180 = metadata !{i32 1086, i32 35, metadata !51, metadata !178}
!181 = metadata !{i32 1048576}
!182 = metadata !{i32 786689, metadata !51, metadata !"DesiredAccess", metadata !11, i32 33555518, metadata !14, i32 0, metadata !178} ; [ DW_TAG_arg_variable ] [DesiredAccess] [line 1086]
!183 = metadata !{i32 1086, i32 48, metadata !51, metadata !178}
!184 = metadata !{i32 786689, metadata !51, metadata !"ObjectType", metadata !11, i32 50332734, metadata !14, i32 0, metadata !178} ; [ DW_TAG_arg_variable ] [ObjectType] [line 1086]
!185 = metadata !{i32 1086, i32 68, metadata !51, metadata !178}
!186 = metadata !{i32 786689, metadata !51, metadata !"Object", metadata !11, i32 83887167, metadata !14, i32 0, metadata !178} ; [ DW_TAG_arg_variable ] [Object] [line 1087]
!187 = metadata !{i32 1087, i32 35, metadata !51, metadata !178}
!188 = metadata !{i32 786689, metadata !51, metadata !"HandleInformation", metadata !11, i32 100664383, metadata !14, i32 0, metadata !178} ; [ DW_TAG_arg_variable ] [HandleInformation] [line 1087]
!189 = metadata !{i32 1087, i32 48, metadata !51, metadata !178}
!190 = metadata !{i32 1092, i32 15, metadata !191, metadata !178}
!191 = metadata !{i32 786443, metadata !10, metadata !51, i32 1090, i32 3, i32 0, i32 335} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!192 = metadata !{i32 786688, metadata !191, metadata !"tmp_ndt_9", metadata !11, i32 1091, metadata !14, i32 0, metadata !178} ; [ DW_TAG_auto_variable ] [tmp_ndt_9] [line 1091]
!193 = metadata !{i32 1091, i32 7, metadata !191, metadata !178}
!194 = metadata !{i32 1093, i32 7, metadata !195, metadata !178}
!195 = metadata !{i32 786443, metadata !10, metadata !191, i32 1093, i32 7, i32 0, i32 336} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!196 = metadata !{i32 786689, metadata !57, metadata !"Handle", metadata !11, i32 16778346, metadata !14, i32 0, metadata !197} ; [ DW_TAG_arg_variable ] [Handle] [line 1130]
!197 = metadata !{i32 147, i32 5, metadata !179, null}
!198 = metadata !{i32 1130, i32 17, metadata !57, metadata !197}
!199 = metadata !{i32 1135, i32 16, metadata !200, metadata !197}
!200 = metadata !{i32 786443, metadata !10, metadata !57, i32 1133, i32 3, i32 0, i32 349} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!201 = metadata !{i32 786688, metadata !200, metadata !"tmp_ndt_11", metadata !11, i32 1134, metadata !14, i32 0, metadata !197} ; [ DW_TAG_auto_variable ] [tmp_ndt_11] [line 1134]
!202 = metadata !{i32 1134, i32 7, metadata !200, metadata !197}
!203 = metadata !{i32 149, i32 9, metadata !204, null}
!204 = metadata !{i32 786443, metadata !10, metadata !205, i32 149, i32 9, i32 0, i32 18} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!205 = metadata !{i32 786443, metadata !10, metadata !147, i32 149, i32 5, i32 0, i32 17} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!206 = metadata !{i32 158, i32 7, metadata !207, null}
!207 = metadata !{i32 786443, metadata !10, metadata !133, i32 158, i32 7, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!208 = metadata !{i32 159, i32 5, metadata !209, null}
!209 = metadata !{i32 786443, metadata !10, metadata !207, i32 158, i32 20, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!210 = metadata !{i32 165, i32 3, metadata !133, null}
!211 = metadata !{i32 167, i32 1, metadata !15, null}
!212 = metadata !{i32 38, i32 10, metadata !89, metadata !213}
!213 = metadata !{i32 162, i32 5, metadata !214, null}
!214 = metadata !{i32 786443, metadata !10, metadata !215, i32 161, i32 5, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!215 = metadata !{i32 786443, metadata !10, metadata !207, i32 160, i32 10, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!216 = metadata !{i32 786689, metadata !16, metadata !"DeviceObject", metadata !11, i32 16777384, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [DeviceObject] [line 168]
!217 = metadata !{i32 168, i32 19, metadata !16, null}
!218 = metadata !{i32 786689, metadata !16, metadata !"Irp", metadata !11, i32 33554600, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Irp] [line 168]
!219 = metadata !{i32 168, i32 38, metadata !16, null}
!220 = metadata !{i32 169, i32 39, metadata !16, null}
!221 = metadata !{i32 786688, metadata !16, metadata !"DeviceObject__DeviceExtension", metadata !11, i32 169, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [DeviceObject__DeviceExtension] [line 169]
!222 = metadata !{i32 169, i32 7, metadata !16, null}
!223 = metadata !{i32 170, i32 50, metadata !16, null}
!224 = metadata !{i32 786688, metadata !16, metadata !"Irp__Tail__Overlay__CurrentStackLocation", metadata !11, i32 170, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Irp__Tail__Overlay__CurrentStackLocation] [line 170]
!225 = metadata !{i32 170, i32 7, metadata !16, null}
!226 = metadata !{i32 173, i32 30, metadata !16, null}
!227 = metadata !{i32 786688, metadata !16, metadata !"Irp__CurrentLocation", metadata !11, i32 173, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Irp__CurrentLocation] [line 173]
!228 = metadata !{i32 173, i32 7, metadata !16, null}
!229 = metadata !{i32 174, i32 38, metadata !16, null}
!230 = metadata !{i32 786688, metadata !16, metadata !"disketteExtension__IsRemoved", metadata !11, i32 174, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [disketteExtension__IsRemoved] [line 174]
!231 = metadata !{i32 174, i32 7, metadata !16, null}
!232 = metadata !{i32 175, i32 38, metadata !16, null}
!233 = metadata !{i32 786688, metadata !16, metadata !"disketteExtension__IsStarted", metadata !11, i32 175, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [disketteExtension__IsStarted] [line 175]
!234 = metadata !{i32 175, i32 7, metadata !16, null}
!235 = metadata !{i32 176, i32 41, metadata !16, null}
!236 = metadata !{i32 786688, metadata !16, metadata !"disketteExtension__TargetObject", metadata !11, i32 176, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [disketteExtension__TargetObject] [line 176]
!237 = metadata !{i32 176, i32 7, metadata !16, null}
!238 = metadata !{i32 178, i32 41, metadata !16, null}
!239 = metadata !{i32 786688, metadata !16, metadata !"disketteExtension__FloppyThread", metadata !11, i32 178, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [disketteExtension__FloppyThread] [line 178]
!240 = metadata !{i32 178, i32 7, metadata !16, null}
!241 = metadata !{i32 179, i32 52, metadata !16, null}
!242 = metadata !{i32 786688, metadata !16, metadata !"disketteExtension__InterfaceString__Buffer", metadata !11, i32 179, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [disketteExtension__InterfaceString__Buffer] [line 179]
!243 = metadata !{i32 179, i32 7, metadata !16, null}
!244 = metadata !{i32 180, i32 44, metadata !16, null}
!245 = metadata !{i32 786688, metadata !16, metadata !"disketteExtension__InterfaceString", metadata !11, i32 180, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [disketteExtension__InterfaceString] [line 180]
!246 = metadata !{i32 180, i32 7, metadata !16, null}
!247 = metadata !{i32 181, i32 44, metadata !16, null}
!248 = metadata !{i32 786688, metadata !16, metadata !"disketteExtension__ArcName__Length", metadata !11, i32 181, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [disketteExtension__ArcName__Length] [line 181]
!249 = metadata !{i32 181, i32 7, metadata !16, null}
!250 = metadata !{i32 182, i32 36, metadata !16, null}
!251 = metadata !{i32 786688, metadata !16, metadata !"disketteExtension__ArcName", metadata !11, i32 182, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [disketteExtension__ArcName] [line 182]
!252 = metadata !{i32 182, i32 7, metadata !16, null}
!253 = metadata !{i32 183, i32 30, metadata !16, null}
!254 = metadata !{i32 786688, metadata !16, metadata !"irpSp__MinorFunction", metadata !11, i32 183, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irpSp__MinorFunction] [line 183]
!255 = metadata !{i32 183, i32 7, metadata !16, null}
!256 = metadata !{i32 184, i32 52, metadata !16, null}
!257 = metadata !{i32 786688, metadata !16, metadata !"IoGetConfigurationInformation__FloppyCount", metadata !11, i32 184, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [IoGetConfigurationInformation__FloppyCount] [line 184]
!258 = metadata !{i32 184, i32 7, metadata !16, null}
!259 = metadata !{i32 188, i32 19, metadata !16, null}
!260 = metadata !{i32 786688, metadata !16, metadata !"doneEvent", metadata !11, i32 188, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [doneEvent] [line 188]
!261 = metadata !{i32 188, i32 7, metadata !16, null}
!262 = metadata !{i32 786688, metadata !16, metadata !"ntStatus", metadata !11, i32 187, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ntStatus] [line 187]
!263 = metadata !{i32 187, i32 7, metadata !16, null}
!264 = metadata !{i32 198, i32 3, metadata !265, null}
!265 = metadata !{i32 786443, metadata !10, metadata !16, i32 198, i32 3, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!266 = metadata !{i32 786688, metadata !16, metadata !"disketteExtension", metadata !11, i32 186, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [disketteExtension] [line 186]
!267 = metadata !{i32 186, i32 7, metadata !16, null}
!268 = metadata !{i32 786688, metadata !16, metadata !"irpSp", metadata !11, i32 185, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irpSp] [line 185]
!269 = metadata !{i32 185, i32 7, metadata !16, null}
!270 = metadata !{i32 206, i32 7, metadata !271, null}
!271 = metadata !{i32 786443, metadata !10, metadata !265, i32 206, i32 7, i32 0, i32 27} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!272 = metadata !{i32 786688, metadata !16, metadata !"Irp__IoStatus__Information", metadata !11, i32 171, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Irp__IoStatus__Information] [line 171]
!273 = metadata !{i32 171, i32 7, metadata !16, null}
!274 = metadata !{i32 -1073741738}
!275 = metadata !{i32 786688, metadata !16, metadata !"Irp__IoStatus__Status", metadata !11, i32 172, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Irp__IoStatus__Status] [line 172]
!276 = metadata !{i32 172, i32 7, metadata !16, null}
!277 = metadata !{i32 210, i32 5, metadata !278, null}
!278 = metadata !{i32 786443, metadata !10, metadata !279, i32 207, i32 5, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!279 = metadata !{i32 786443, metadata !10, metadata !271, i32 206, i32 37, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!280 = metadata !{i32 786689, metadata !44, metadata !"Irp", metadata !11, i32 16778236, metadata !14, i32 0, metadata !281} ; [ DW_TAG_arg_variable ] [Irp] [line 1020]
!281 = metadata !{i32 211, i32 5, metadata !278, null}
!282 = metadata !{i32 1020, i32 29, metadata !44, metadata !281}
!283 = metadata !{i32 786689, metadata !44, metadata !"PriorityBoost", metadata !11, i32 33555452, metadata !14, i32 0, metadata !281} ; [ DW_TAG_arg_variable ] [PriorityBoost] [line 1020]
!284 = metadata !{i32 1020, i32 39, metadata !44, metadata !281}
!285 = metadata !{i32 1024, i32 7, metadata !286, metadata !281}
!286 = metadata !{i32 786443, metadata !10, metadata !287, i32 1024, i32 7, i32 0, i32 311} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!287 = metadata !{i32 786443, metadata !10, metadata !44, i32 1023, i32 3, i32 0, i32 310} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!288 = metadata !{i32 1025, i32 5, metadata !289, metadata !281}
!289 = metadata !{i32 786443, metadata !10, metadata !286, i32 1024, i32 16, i32 0, i32 312} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!290 = metadata !{i32 213, i32 5, metadata !279, null}
!291 = metadata !{i32 38, i32 10, metadata !89, metadata !292}
!292 = metadata !{i32 1028, i32 5, metadata !293, metadata !281}
!293 = metadata !{i32 786443, metadata !10, metadata !294, i32 1027, i32 5, i32 0, i32 314} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!294 = metadata !{i32 786443, metadata !10, metadata !286, i32 1026, i32 10, i32 0, i32 313} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!295 = metadata !{i32 786689, metadata !17, metadata !"DeviceObject", metadata !11, i32 16777677, metadata !14, i32 0, metadata !296} ; [ DW_TAG_arg_variable ] [DeviceObject] [line 461]
!296 = metadata !{i32 243, i32 30, metadata !297, null}
!297 = metadata !{i32 786443, metadata !10, metadata !298, i32 242, i32 19, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!298 = metadata !{i32 786443, metadata !10, metadata !299, i32 240, i32 24, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!299 = metadata !{i32 786443, metadata !10, metadata !300, i32 240, i32 21, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!300 = metadata !{i32 786443, metadata !10, metadata !301, i32 237, i32 22, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!301 = metadata !{i32 786443, metadata !10, metadata !302, i32 235, i32 19, i32 0, i32 48} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!302 = metadata !{i32 786443, metadata !10, metadata !303, i32 234, i32 20, i32 0, i32 47} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!303 = metadata !{i32 786443, metadata !10, metadata !304, i32 232, i32 17, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!304 = metadata !{i32 786443, metadata !10, metadata !305, i32 231, i32 18, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!305 = metadata !{i32 786443, metadata !10, metadata !306, i32 229, i32 15, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!306 = metadata !{i32 786443, metadata !10, metadata !307, i32 228, i32 16, i32 0, i32 41} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!307 = metadata !{i32 786443, metadata !10, metadata !308, i32 226, i32 13, i32 0, i32 39} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!308 = metadata !{i32 786443, metadata !10, metadata !309, i32 225, i32 14, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!309 = metadata !{i32 786443, metadata !10, metadata !310, i32 223, i32 11, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!310 = metadata !{i32 786443, metadata !10, metadata !311, i32 222, i32 12, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!311 = metadata !{i32 786443, metadata !10, metadata !312, i32 220, i32 9, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!312 = metadata !{i32 786443, metadata !10, metadata !313, i32 219, i32 10, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!313 = metadata !{i32 786443, metadata !10, metadata !265, i32 217, i32 7, i32 0, i32 30} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!314 = metadata !{i32 461, i32 27, metadata !17, metadata !296}
!315 = metadata !{i32 786689, metadata !17, metadata !"Irp", metadata !11, i32 33554893, metadata !14, i32 0, metadata !296} ; [ DW_TAG_arg_variable ] [Irp] [line 461]
!316 = metadata !{i32 461, i32 46, metadata !17, metadata !296}
!317 = metadata !{i32 462, i32 39, metadata !17, metadata !296}
!318 = metadata !{i32 786688, metadata !17, metadata !"DeviceObject__DeviceExtension", metadata !11, i32 462, metadata !14, i32 0, metadata !296} ; [ DW_TAG_auto_variable ] [DeviceObject__DeviceExtension] [line 462]
!319 = metadata !{i32 462, i32 7, metadata !17, metadata !296}
!320 = metadata !{i32 463, i32 50, metadata !17, metadata !296}
!321 = metadata !{i32 786688, metadata !17, metadata !"Irp__Tail__Overlay__CurrentStackLocation", metadata !11, i32 463, metadata !14, i32 0, metadata !296} ; [ DW_TAG_auto_variable ] [Irp__Tail__Overlay__CurrentStackLocation] [line 463]
!322 = metadata !{i32 463, i32 7, metadata !17, metadata !296}
!323 = metadata !{i32 465, i32 41, metadata !17, metadata !296}
!324 = metadata !{i32 786688, metadata !17, metadata !"disketteExtension__TargetObject", metadata !11, i32 465, metadata !14, i32 0, metadata !296} ; [ DW_TAG_auto_variable ] [disketteExtension__TargetObject] [line 465]
!325 = metadata !{i32 465, i32 7, metadata !17, metadata !296}
!326 = metadata !{i32 467, i32 38, metadata !17, metadata !296}
!327 = metadata !{i32 786688, metadata !17, metadata !"disketteExtension__DriveType", metadata !11, i32 467, metadata !14, i32 0, metadata !296} ; [ DW_TAG_auto_variable ] [disketteExtension__DriveType] [line 467]
!328 = metadata !{i32 467, i32 7, metadata !17, metadata !296}
!329 = metadata !{i32 471, i32 42, metadata !17, metadata !296}
!330 = metadata !{i32 786688, metadata !17, metadata !"disketteExtension__UnderlyingPDO", metadata !11, i32 471, metadata !14, i32 0, metadata !296} ; [ DW_TAG_auto_variable ] [disketteExtension__UnderlyingPDO] [line 471]
!331 = metadata !{i32 471, i32 7, metadata !17, metadata !296}
!332 = metadata !{i32 472, i32 44, metadata !17, metadata !296}
!333 = metadata !{i32 786688, metadata !17, metadata !"disketteExtension__InterfaceString", metadata !11, i32 472, metadata !14, i32 0, metadata !296} ; [ DW_TAG_auto_variable ] [disketteExtension__InterfaceString] [line 472]
!334 = metadata !{i32 472, i32 7, metadata !17, metadata !296}
!335 = metadata !{i32 477, i32 19, metadata !17, metadata !296}
!336 = metadata !{i32 786688, metadata !17, metadata !"doneEvent", metadata !11, i32 477, metadata !14, i32 0, metadata !296} ; [ DW_TAG_auto_variable ] [doneEvent] [line 477]
!337 = metadata !{i32 477, i32 7, metadata !17, metadata !296}
!338 = metadata !{i32 478, i32 17, metadata !17, metadata !296}
!339 = metadata !{i32 786688, metadata !17, metadata !"fdcInfo", metadata !11, i32 478, metadata !14, i32 0, metadata !296} ; [ DW_TAG_auto_variable ] [fdcInfo] [line 478]
!340 = metadata !{i32 478, i32 7, metadata !17, metadata !296}
!341 = metadata !{i32 481, i32 34, metadata !17, metadata !296}
!342 = metadata !{i32 786688, metadata !17, metadata !"fdcInfo__MaxTransferSize", metadata !11, i32 481, metadata !14, i32 0, metadata !296} ; [ DW_TAG_auto_variable ] [fdcInfo__MaxTransferSize] [line 481]
!343 = metadata !{i32 481, i32 7, metadata !17, metadata !296}
!344 = metadata !{i32 482, i32 27, metadata !17, metadata !296}
!345 = metadata !{i32 786688, metadata !17, metadata !"fdcInfo__AcpiBios", metadata !11, i32 482, metadata !14, i32 0, metadata !296} ; [ DW_TAG_auto_variable ] [fdcInfo__AcpiBios] [line 482]
!346 = metadata !{i32 482, i32 7, metadata !17, metadata !296}
!347 = metadata !{i32 483, i32 35, metadata !17, metadata !296}
!348 = metadata !{i32 786688, metadata !17, metadata !"fdcInfo__AcpiFdiSupported", metadata !11, i32 483, metadata !14, i32 0, metadata !296} ; [ DW_TAG_auto_variable ] [fdcInfo__AcpiFdiSupported] [line 483]
!349 = metadata !{i32 483, i32 7, metadata !17, metadata !296}
!350 = metadata !{i32 484, i32 35, metadata !17, metadata !296}
!351 = metadata !{i32 786688, metadata !17, metadata !"fdcInfo__PeripheralNumber", metadata !11, i32 484, metadata !14, i32 0, metadata !296} ; [ DW_TAG_auto_variable ] [fdcInfo__PeripheralNumber] [line 484]
!352 = metadata !{i32 484, i32 7, metadata !17, metadata !296}
!353 = metadata !{i32 486, i32 35, metadata !17, metadata !296}
!354 = metadata !{i32 786688, metadata !17, metadata !"fdcInfo__ControllerNumber", metadata !11, i32 486, metadata !14, i32 0, metadata !296} ; [ DW_TAG_auto_variable ] [fdcInfo__ControllerNumber] [line 486]
!355 = metadata !{i32 486, i32 7, metadata !17, metadata !296}
!356 = metadata !{i32 487, i32 29, metadata !17, metadata !296}
!357 = metadata !{i32 786688, metadata !17, metadata !"fdcInfo__UnitNumber", metadata !11, i32 487, metadata !14, i32 0, metadata !296} ; [ DW_TAG_auto_variable ] [fdcInfo__UnitNumber] [line 487]
!358 = metadata !{i32 487, i32 7, metadata !17, metadata !296}
!359 = metadata !{i32 488, i32 28, metadata !17, metadata !296}
!360 = metadata !{i32 786688, metadata !17, metadata !"fdcInfo__BusNumber", metadata !11, i32 488, metadata !14, i32 0, metadata !296} ; [ DW_TAG_auto_variable ] [fdcInfo__BusNumber] [line 488]
!361 = metadata !{i32 488, i32 7, metadata !17, metadata !296}
!362 = metadata !{i32 500, i32 61, metadata !17, metadata !296}
!363 = metadata !{i32 786688, metadata !17, metadata !"KUSER_SHARED_DATA__AlternativeArchitecture_NEC98x86", metadata !11, i32 500, metadata !14, i32 0, metadata !296} ; [ DW_TAG_auto_variable ] [KUSER_SHARED_DATA__AlternativeArchitecture_NEC98x86] [line 500]
!364 = metadata !{i32 500, i32 7, metadata !17, metadata !296}
!365 = metadata !{i32 786688, metadata !17, metadata !"disketteExtension", metadata !11, i32 491, metadata !14, i32 0, metadata !296} ; [ DW_TAG_auto_variable ] [disketteExtension] [line 491]
!366 = metadata !{i32 491, i32 7, metadata !17, metadata !296}
!367 = metadata !{i32 786688, metadata !17, metadata !"irpSp", metadata !11, i32 492, metadata !14, i32 0, metadata !296} ; [ DW_TAG_auto_variable ] [irpSp] [line 492]
!368 = metadata !{i32 492, i32 7, metadata !17, metadata !296}
!369 = metadata !{i32 786688, metadata !17, metadata !"irpSp___0", metadata !11, i32 493, metadata !14, i32 0, metadata !296} ; [ DW_TAG_auto_variable ] [irpSp___0] [line 493]
!370 = metadata !{i32 493, i32 7, metadata !17, metadata !296}
!371 = metadata !{i32 786688, metadata !17, metadata !"nextIrpSp__Control", metadata !11, i32 495, metadata !14, i32 0, metadata !296} ; [ DW_TAG_auto_variable ] [nextIrpSp__Control] [line 495]
!372 = metadata !{i32 495, i32 7, metadata !17, metadata !296}
!373 = metadata !{i32 510, i32 7, metadata !374, metadata !296}
!374 = metadata !{i32 786443, metadata !10, metadata !375, i32 510, i32 7, i32 0, i32 126} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!375 = metadata !{i32 786443, metadata !10, metadata !17, i32 510, i32 3, i32 0, i32 125} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!376 = metadata !{i32 38, i32 10, metadata !89, metadata !377}
!377 = metadata !{i32 512, i32 5, metadata !378, metadata !296}
!378 = metadata !{i32 786443, metadata !10, metadata !379, i32 511, i32 5, i32 0, i32 128} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!379 = metadata !{i32 786443, metadata !10, metadata !374, i32 510, i32 16, i32 0, i32 127} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!380 = metadata !{i32 515, i32 9, metadata !381, metadata !296}
!381 = metadata !{i32 786443, metadata !10, metadata !382, i32 515, i32 9, i32 0, i32 130} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!382 = metadata !{i32 786443, metadata !10, metadata !374, i32 514, i32 10, i32 0, i32 129} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!383 = metadata !{i32 38, i32 10, metadata !89, metadata !384}
!384 = metadata !{i32 517, i32 7, metadata !385, metadata !296}
!385 = metadata !{i32 786443, metadata !10, metadata !386, i32 516, i32 7, i32 0, i32 132} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!386 = metadata !{i32 786443, metadata !10, metadata !381, i32 515, i32 30, i32 0, i32 131} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!387 = metadata !{i32 520, i32 7, metadata !388, metadata !296}
!388 = metadata !{i32 786443, metadata !10, metadata !381, i32 519, i32 12, i32 0, i32 133} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!389 = metadata !{i32 786688, metadata !17, metadata !"irpSp__Context", metadata !11, i32 498, metadata !14, i32 0, metadata !296} ; [ DW_TAG_auto_variable ] [irpSp__Context] [line 498]
!390 = metadata !{i32 498, i32 7, metadata !17, metadata !296}
!391 = metadata !{i32 224}
!392 = metadata !{i32 786688, metadata !17, metadata !"irpSp__Control", metadata !11, i32 497, metadata !14, i32 0, metadata !296} ; [ DW_TAG_auto_variable ] [irpSp__Control] [line 497]
!393 = metadata !{i32 497, i32 7, metadata !17, metadata !296}
!394 = metadata !{i32 786689, metadata !43, metadata !"DeviceObject", metadata !11, i32 16778165, metadata !14, i32 0, metadata !395} ; [ DW_TAG_arg_variable ] [DeviceObject] [line 949]
!395 = metadata !{i32 530, i32 14, metadata !396, metadata !296}
!396 = metadata !{i32 786443, metadata !10, metadata !375, i32 523, i32 3, i32 0, i32 134} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!397 = metadata !{i32 949, i32 23, metadata !43, metadata !395}
!398 = metadata !{i32 786689, metadata !43, metadata !"Irp", metadata !11, i32 33555381, metadata !14, i32 0, metadata !395} ; [ DW_TAG_arg_variable ] [Irp] [line 949]
!399 = metadata !{i32 949, i32 42, metadata !43, metadata !395}
!400 = metadata !{i32 953, i32 18, metadata !43, metadata !395}
!401 = metadata !{i32 786688, metadata !43, metadata !"lcontext", metadata !11, i32 953, metadata !14, i32 0, metadata !395} ; [ DW_TAG_auto_variable ] [lcontext] [line 953]
!402 = metadata !{i32 953, i32 7, metadata !43, metadata !395}
!403 = metadata !{i32 956, i32 7, metadata !404, metadata !395}
!404 = metadata !{i32 786443, metadata !10, metadata !405, i32 956, i32 7, i32 0, i32 281} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!405 = metadata !{i32 786443, metadata !10, metadata !43, i32 956, i32 3, i32 0, i32 280} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!406 = metadata !{i32 786689, metadata !18, metadata !"DeviceObject", metadata !11, i32 16777845, metadata !14, i32 0, metadata !407} ; [ DW_TAG_arg_variable ] [DeviceObject] [line 629]
!407 = metadata !{i32 958, i32 22, metadata !408, metadata !395}
!408 = metadata !{i32 786443, metadata !10, metadata !409, i32 957, i32 5, i32 0, i32 283} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!409 = metadata !{i32 786443, metadata !10, metadata !404, i32 956, i32 23, i32 0, i32 282} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!410 = metadata !{i32 629, i32 27, metadata !18, metadata !407}
!411 = metadata !{i32 786689, metadata !18, metadata !"Irp", metadata !11, i32 33555061, metadata !14, i32 0, metadata !407} ; [ DW_TAG_arg_variable ] [Irp] [line 629]
!412 = metadata !{i32 629, i32 46, metadata !18, metadata !407}
!413 = metadata !{i32 786689, metadata !18, metadata !"Context", metadata !11, i32 50332277, metadata !14, i32 0, metadata !407} ; [ DW_TAG_arg_variable ] [Context] [line 629]
!414 = metadata !{i32 629, i32 56, metadata !18, metadata !407}
!415 = metadata !{i32 786689, metadata !47, metadata !"Event", metadata !11, i32 16778250, metadata !14, i32 0, metadata !416} ; [ DW_TAG_arg_variable ] [Event] [line 1034]
!416 = metadata !{i32 634, i32 3, metadata !417, metadata !407}
!417 = metadata !{i32 786443, metadata !10, metadata !418, i32 633, i32 3, i32 0, i32 171} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!418 = metadata !{i32 786443, metadata !10, metadata !18, i32 632, i32 3, i32 0, i32 170} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!419 = metadata !{i32 1034, i32 20, metadata !47, metadata !416}
!420 = metadata !{i32 1}
!421 = metadata !{i32 786689, metadata !47, metadata !"Increment", metadata !11, i32 33555466, metadata !14, i32 0, metadata !416} ; [ DW_TAG_arg_variable ] [Increment] [line 1034]
!422 = metadata !{i32 1034, i32 32, metadata !47, metadata !416}
!423 = metadata !{i32 786689, metadata !47, metadata !"Wait", metadata !11, i32 50332682, metadata !14, i32 0, metadata !416} ; [ DW_TAG_arg_variable ] [Wait] [line 1034]
!424 = metadata !{i32 1034, i32 48, metadata !47, metadata !416}
!425 = metadata !{i32 1035, i32 11, metadata !47, metadata !416}
!426 = metadata !{i32 786688, metadata !47, metadata !"l", metadata !11, i32 1035, metadata !14, i32 0, metadata !416} ; [ DW_TAG_auto_variable ] [l] [line 1035]
!427 = metadata !{i32 1035, i32 7, metadata !47, metadata !416}
!428 = metadata !{i32 1038, i32 3, metadata !429, metadata !416}
!429 = metadata !{i32 786443, metadata !10, metadata !47, i32 1037, i32 3, i32 0, i32 315} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!430 = metadata !{i32 -1073741802}
!431 = metadata !{i32 786688, metadata !43, metadata !"compRetStatus1", metadata !11, i32 952, metadata !14, i32 0, metadata !395} ; [ DW_TAG_auto_variable ] [compRetStatus1] [line 952]
!432 = metadata !{i32 952, i32 7, metadata !43, metadata !395}
!433 = metadata !{i64 -1073741802}
!434 = metadata !{i32 786688, metadata !43, metadata !"__cil_tmp7", metadata !11, i32 954, metadata !435, i32 0, metadata !395} ; [ DW_TAG_auto_variable ] [__cil_tmp7] [line 954]
!435 = metadata !{i32 786468, null, null, metadata !"long unsigned int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 7} ; [ DW_TAG_base_type ] [long unsigned int] [line 0, size 64, align 64, offset 0, enc DW_ATE_unsigned]
!436 = metadata !{i32 954, i32 17, metadata !43, metadata !395}
!437 = metadata !{i32 939, i32 7, metadata !438, metadata !440}
!438 = metadata !{i32 786443, metadata !10, metadata !439, i32 939, i32 7, i32 0, i32 276} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!439 = metadata !{i32 786443, metadata !10, metadata !42, i32 938, i32 3, i32 0, i32 275} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!440 = metadata !{i32 962, i32 7, metadata !441, metadata !395}
!441 = metadata !{i32 786443, metadata !10, metadata !442, i32 961, i32 7, i32 0, i32 287} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!442 = metadata !{i32 786443, metadata !10, metadata !443, i32 960, i32 36, i32 0, i32 286} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!443 = metadata !{i32 786443, metadata !10, metadata !444, i32 960, i32 9, i32 0, i32 285} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!444 = metadata !{i32 786443, metadata !10, metadata !409, i32 960, i32 5, i32 0, i32 284} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!445 = metadata !{i32 940, i32 5, metadata !446, metadata !440}
!446 = metadata !{i32 786443, metadata !10, metadata !438, i32 939, i32 16, i32 0, i32 277} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!447 = metadata !{i32 964, i32 5, metadata !442, metadata !395}
!448 = metadata !{i32 38, i32 10, metadata !89, metadata !449}
!449 = metadata !{i32 943, i32 5, metadata !450, metadata !440}
!450 = metadata !{i32 786443, metadata !10, metadata !451, i32 942, i32 5, i32 0, i32 279} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!451 = metadata !{i32 786443, metadata !10, metadata !438, i32 941, i32 10, i32 0, i32 278} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!452 = metadata !{i32 971, i32 16, metadata !405, metadata !395}
!453 = metadata !{i32 786688, metadata !405, metadata !"tmp_ndt_12", metadata !11, i32 970, metadata !14, i32 0, metadata !395} ; [ DW_TAG_auto_variable ] [tmp_ndt_12] [line 970]
!454 = metadata !{i32 970, i32 7, metadata !405, metadata !395}
!455 = metadata !{i32 972, i32 7, metadata !456, metadata !395}
!456 = metadata !{i32 786443, metadata !10, metadata !405, i32 972, i32 7, i32 0, i32 288} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!457 = metadata !{i32 974, i32 17, metadata !458, metadata !395}
!458 = metadata !{i32 786443, metadata !10, metadata !456, i32 974, i32 10, i32 0, i32 290} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!459 = metadata !{i32 786688, metadata !458, metadata !"tmp_ndt_7", metadata !11, i32 973, metadata !14, i32 0, metadata !395} ; [ DW_TAG_auto_variable ] [tmp_ndt_7] [line 973]
!460 = metadata !{i32 973, i32 9, metadata !458, metadata !395}
!461 = metadata !{i32 975, i32 9, metadata !462, metadata !395}
!462 = metadata !{i32 786443, metadata !10, metadata !458, i32 975, i32 9, i32 0, i32 291} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!463 = metadata !{i32 259}
!464 = metadata !{i32 786688, metadata !43, metadata !"returnVal2", metadata !11, i32 951, metadata !14, i32 0, metadata !395} ; [ DW_TAG_auto_variable ] [returnVal2] [line 951]
!465 = metadata !{i32 951, i32 7, metadata !43, metadata !395}
!466 = metadata !{i32 994, i32 7, metadata !467, metadata !395}
!467 = metadata !{i32 786443, metadata !10, metadata !405, i32 994, i32 7, i32 0, i32 297} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!468 = metadata !{i32 995, i32 5, metadata !469, metadata !395}
!469 = metadata !{i32 786443, metadata !10, metadata !467, i32 994, i32 16, i32 0, i32 298} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!470 = metadata !{i32 996, i32 5, metadata !469, metadata !395}
!471 = metadata !{i32 997, i32 3, metadata !469, metadata !395}
!472 = metadata !{i32 998, i32 9, metadata !473, metadata !395}
!473 = metadata !{i32 786443, metadata !10, metadata !474, i32 998, i32 9, i32 0, i32 300} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!474 = metadata !{i32 786443, metadata !10, metadata !467, i32 997, i32 10, i32 0, i32 299} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!475 = metadata !{i32 999, i32 11, metadata !476, metadata !395}
!476 = metadata !{i32 786443, metadata !10, metadata !477, i32 999, i32 11, i32 0, i32 302} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!477 = metadata !{i32 786443, metadata !10, metadata !473, i32 998, i32 20, i32 0, i32 301} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!478 = metadata !{i32 1000, i32 9, metadata !479, metadata !395}
!479 = metadata !{i32 786443, metadata !10, metadata !476, i32 999, i32 30, i32 0, i32 303} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!480 = metadata !{i32 1001, i32 9, metadata !479, metadata !395}
!481 = metadata !{i32 1002, i32 7, metadata !479, metadata !395}
!482 = metadata !{i32 1003, i32 9, metadata !483, metadata !395}
!483 = metadata !{i32 786443, metadata !10, metadata !476, i32 1002, i32 14, i32 0, i32 304} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!484 = metadata !{i32 1004, i32 9, metadata !483, metadata !395}
!485 = metadata !{i32 1007, i32 11, metadata !486, metadata !395}
!486 = metadata !{i32 786443, metadata !10, metadata !487, i32 1007, i32 11, i32 0, i32 306} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!487 = metadata !{i32 786443, metadata !10, metadata !473, i32 1006, i32 12, i32 0, i32 305} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!488 = metadata !{i32 1008, i32 9, metadata !489, metadata !395}
!489 = metadata !{i32 786443, metadata !10, metadata !486, i32 1007, i32 23, i32 0, i32 307} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!490 = metadata !{i32 1009, i32 9, metadata !489, metadata !395}
!491 = metadata !{i32 786688, metadata !17, metadata !"ntStatus", metadata !11, i32 475, metadata !14, i32 0, metadata !296} ; [ DW_TAG_auto_variable ] [ntStatus] [line 475]
!492 = metadata !{i32 475, i32 7, metadata !17, metadata !296}
!493 = metadata !{i32 532, i32 3, metadata !494, metadata !296}
!494 = metadata !{i32 786443, metadata !10, metadata !375, i32 532, i32 3, i32 0, i32 135} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!495 = metadata !{i32 786688, metadata !17, metadata !"__cil_tmp42", metadata !11, i32 501, metadata !496, i32 0, metadata !296} ; [ DW_TAG_auto_variable ] [__cil_tmp42] [line 501]
!496 = metadata !{i32 786468, null, null, metadata !"long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!497 = metadata !{i32 501, i32 8, metadata !17, metadata !296}
!498 = metadata !{i32 532, i32 7, metadata !499, metadata !296}
!499 = metadata !{i32 786443, metadata !10, metadata !494, i32 532, i32 7, i32 0, i32 136} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!500 = metadata !{i32 786689, metadata !48, metadata !"Object", metadata !11, i32 16778258, metadata !14, i32 0, metadata !501} ; [ DW_TAG_arg_variable ] [Object] [line 1042]
!501 = metadata !{i32 534, i32 16, metadata !502, metadata !296}
!502 = metadata !{i32 786443, metadata !10, metadata !503, i32 533, i32 5, i32 0, i32 138} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!503 = metadata !{i32 786443, metadata !10, metadata !499, i32 532, i32 28, i32 0, i32 137} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!504 = metadata !{i32 1042, i32 31, metadata !48, metadata !501}
!505 = metadata !{i32 786689, metadata !48, metadata !"Alertable", metadata !11, i32 67109906, metadata !14, i32 0, metadata !501} ; [ DW_TAG_arg_variable ] [Alertable] [line 1042]
!506 = metadata !{i32 1042, i32 76, metadata !48, metadata !501}
!507 = metadata !{i32 786689, metadata !48, metadata !"Timeout", metadata !11, i32 83887123, metadata !14, i32 0, metadata !501} ; [ DW_TAG_arg_variable ] [Timeout] [line 1043]
!508 = metadata !{i32 1043, i32 31, metadata !48, metadata !501}
!509 = metadata !{i32 1047, i32 7, metadata !510, metadata !501}
!510 = metadata !{i32 786443, metadata !10, metadata !511, i32 1047, i32 7, i32 0, i32 317} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!511 = metadata !{i32 786443, metadata !10, metadata !48, i32 1046, i32 3, i32 0, i32 316} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!512 = metadata !{i32 1048, i32 9, metadata !513, metadata !501}
!513 = metadata !{i32 786443, metadata !10, metadata !514, i32 1048, i32 9, i32 0, i32 319} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!514 = metadata !{i32 786443, metadata !10, metadata !510, i32 1047, i32 18, i32 0, i32 318} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!515 = metadata !{i32 1049, i32 7, metadata !516, metadata !501}
!516 = metadata !{i32 786443, metadata !10, metadata !513, i32 1048, i32 30, i32 0, i32 320} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!517 = metadata !{i32 1050, i32 7, metadata !516, metadata !501}
!518 = metadata !{i32 1054, i32 3, metadata !514, metadata !501}
!519 = metadata !{i32 1056, i32 9, metadata !520, metadata !501}
!520 = metadata !{i32 786443, metadata !10, metadata !521, i32 1056, i32 9, i32 0, i32 323} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!521 = metadata !{i32 786443, metadata !10, metadata !510, i32 1054, i32 10, i32 0, i32 322} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!522 = metadata !{i32 1057, i32 7, metadata !523, metadata !501}
!523 = metadata !{i32 786443, metadata !10, metadata !520, i32 1056, i32 25, i32 0, i32 324} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!524 = metadata !{i32 1058, i32 7, metadata !523, metadata !501}
!525 = metadata !{i32 1059, i32 5, metadata !523, metadata !501}
!526 = metadata !{i32 1060, i32 11, metadata !527, metadata !501}
!527 = metadata !{i32 786443, metadata !10, metadata !528, i32 1060, i32 11, i32 0, i32 326} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!528 = metadata !{i32 786443, metadata !10, metadata !520, i32 1059, i32 12, i32 0, i32 325} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!529 = metadata !{i32 38, i32 10, metadata !89, metadata !530}
!530 = metadata !{i32 1062, i32 9, metadata !531, metadata !501}
!531 = metadata !{i32 786443, metadata !10, metadata !532, i32 1061, i32 9, i32 0, i32 328} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!532 = metadata !{i32 786443, metadata !10, metadata !527, i32 1060, i32 22, i32 0, i32 327} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!533 = metadata !{i32 1070, i32 15, metadata !511, metadata !501}
!534 = metadata !{i32 786688, metadata !511, metadata !"tmp_ndt_8", metadata !11, i32 1069, metadata !14, i32 0, metadata !501} ; [ DW_TAG_auto_variable ] [tmp_ndt_8] [line 1069]
!535 = metadata !{i32 1069, i32 7, metadata !511, metadata !501}
!536 = metadata !{i32 537, i32 3, metadata !503, metadata !296}
!537 = metadata !{i32 786688, metadata !17, metadata !"fdcInfo__BufferCount", metadata !11, i32 479, metadata !14, i32 0, metadata !296} ; [ DW_TAG_auto_variable ] [fdcInfo__BufferCount] [line 479]
!538 = metadata !{i32 479, i32 7, metadata !17, metadata !296}
!539 = metadata !{i32 786688, metadata !17, metadata !"fdcInfo__BufferSize", metadata !11, i32 480, metadata !14, i32 0, metadata !296} ; [ DW_TAG_auto_variable ] [fdcInfo__BufferSize] [line 480]
!540 = metadata !{i32 480, i32 7, metadata !17, metadata !296}
!541 = metadata !{i32 3080}
!542 = metadata !{i32 786688, metadata !17, metadata !"__cil_tmp43", metadata !11, i32 502, metadata !14, i32 0, metadata !296} ; [ DW_TAG_auto_variable ] [__cil_tmp43] [line 502]
!543 = metadata !{i32 502, i32 7, metadata !17, metadata !296}
!544 = metadata !{i32 458752}
!545 = metadata !{i32 786688, metadata !17, metadata !"__cil_tmp44", metadata !11, i32 503, metadata !14, i32 0, metadata !296} ; [ DW_TAG_auto_variable ] [__cil_tmp44] [line 503]
!546 = metadata !{i32 503, i32 7, metadata !17, metadata !296}
!547 = metadata !{i32 461832}
!548 = metadata !{i32 786688, metadata !17, metadata !"__cil_tmp45", metadata !11, i32 504, metadata !14, i32 0, metadata !296} ; [ DW_TAG_auto_variable ] [__cil_tmp45] [line 504]
!549 = metadata !{i32 504, i32 7, metadata !17, metadata !296}
!550 = metadata !{i32 461835}
!551 = metadata !{i32 786688, metadata !17, metadata !"__cil_tmp46", metadata !11, i32 505, metadata !14, i32 0, metadata !296} ; [ DW_TAG_auto_variable ] [__cil_tmp46] [line 505]
!552 = metadata !{i32 505, i32 7, metadata !17, metadata !296}
!553 = metadata !{i32 786689, metadata !21, metadata !"DeviceObject", metadata !11, i32 16777855, metadata !14, i32 0, metadata !554} ; [ DW_TAG_arg_variable ] [DeviceObject] [line 639]
!554 = metadata !{i32 543, i32 14, metadata !555, metadata !296}
!555 = metadata !{i32 786443, metadata !10, metadata !375, i32 539, i32 3, i32 0, i32 139} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!556 = metadata !{i32 639, i32 23, metadata !21, metadata !554}
!557 = metadata !{i32 786689, metadata !21, metadata !"Ioctl", metadata !11, i32 33555071, metadata !14, i32 0, metadata !554} ; [ DW_TAG_arg_variable ] [Ioctl] [line 639]
!558 = metadata !{i32 639, i32 42, metadata !21, metadata !554}
!559 = metadata !{i32 786689, metadata !21, metadata !"Data", metadata !11, i32 50332287, metadata !14, i32 0, metadata !554} ; [ DW_TAG_arg_variable ] [Data] [line 639]
!560 = metadata !{i32 639, i32 54, metadata !21, metadata !554}
!561 = metadata !{i32 643, i32 19, metadata !21, metadata !554}
!562 = metadata !{i32 786688, metadata !21, metadata !"doneEvent", metadata !11, i32 643, metadata !14, i32 0, metadata !554} ; [ DW_TAG_auto_variable ] [doneEvent] [line 643]
!563 = metadata !{i32 643, i32 7, metadata !21, metadata !554}
!564 = metadata !{i32 644, i32 18, metadata !21, metadata !554}
!565 = metadata !{i32 786688, metadata !21, metadata !"ioStatus", metadata !11, i32 644, metadata !14, i32 0, metadata !554} ; [ DW_TAG_auto_variable ] [ioStatus] [line 644]
!566 = metadata !{i32 644, i32 7, metadata !21, metadata !554}
!567 = metadata !{i32 645, i32 50, metadata !21, metadata !554}
!568 = metadata !{i32 786688, metadata !21, metadata !"irp__Tail__Overlay__CurrentStackLocation", metadata !11, i32 645, metadata !14, i32 0, metadata !554} ; [ DW_TAG_auto_variable ] [irp__Tail__Overlay__CurrentStackLocation] [line 645]
!569 = metadata !{i32 645, i32 7, metadata !21, metadata !554}
!570 = metadata !{i32 786689, metadata !29, metadata !"IoControlCode", metadata !11, i32 16778039, metadata !14, i32 0, metadata !571} ; [ DW_TAG_arg_variable ] [IoControlCode] [line 823]
!571 = metadata !{i32 650, i32 9, metadata !572, metadata !554}
!572 = metadata !{i32 786443, metadata !10, metadata !573, i32 650, i32 3, i32 0, i32 173} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!573 = metadata !{i32 786443, metadata !10, metadata !21, i32 649, i32 3, i32 0, i32 172} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!574 = metadata !{i32 823, i32 39, metadata !29, metadata !571}
!575 = metadata !{i32 786689, metadata !29, metadata !"DeviceObject", metadata !11, i32 33555255, metadata !14, i32 0, metadata !571} ; [ DW_TAG_arg_variable ] [DeviceObject] [line 823]
!576 = metadata !{i32 823, i32 59, metadata !29, metadata !571}
!577 = metadata !{i32 786689, metadata !29, metadata !"InputBuffer", metadata !11, i32 50332471, metadata !14, i32 0, metadata !571} ; [ DW_TAG_arg_variable ] [InputBuffer] [line 823]
!578 = metadata !{i32 823, i32 78, metadata !29, metadata !571}
!579 = metadata !{i32 786689, metadata !29, metadata !"InputBufferLength", metadata !11, i32 67109688, metadata !14, i32 0, metadata !571} ; [ DW_TAG_arg_variable ] [InputBufferLength] [line 824]
!580 = metadata !{i32 824, i32 39, metadata !29, metadata !571}
!581 = metadata !{i32 786689, metadata !29, metadata !"OutputBuffer", metadata !11, i32 83886904, metadata !14, i32 0, metadata !571} ; [ DW_TAG_arg_variable ] [OutputBuffer] [line 824]
!582 = metadata !{i32 824, i32 63, metadata !29, metadata !571}
!583 = metadata !{i32 786689, metadata !29, metadata !"OutputBufferLength", metadata !11, i32 100664120, metadata !14, i32 0, metadata !571} ; [ DW_TAG_arg_variable ] [OutputBufferLength] [line 824]
!584 = metadata !{i32 824, i32 82, metadata !29, metadata !571}
!585 = metadata !{i32 786689, metadata !29, metadata !"InternalDeviceIoControl", metadata !11, i32 117441337, metadata !14, i32 0, metadata !571} ; [ DW_TAG_arg_variable ] [InternalDeviceIoControl] [line 825]
!586 = metadata !{i32 825, i32 39, metadata !29, metadata !571}
!587 = metadata !{i32 786689, metadata !29, metadata !"Event", metadata !11, i32 134218553, metadata !14, i32 0, metadata !571} ; [ DW_TAG_arg_variable ] [Event] [line 825]
!588 = metadata !{i32 825, i32 69, metadata !29, metadata !571}
!589 = metadata !{i32 786689, metadata !29, metadata !"IoStatusBlock", metadata !11, i32 150995769, metadata !14, i32 0, metadata !571} ; [ DW_TAG_arg_variable ] [IoStatusBlock] [line 825]
!590 = metadata !{i32 825, i32 81, metadata !29, metadata !571}
!591 = metadata !{i32 827, i32 16, metadata !29, metadata !571}
!592 = metadata !{i32 786688, metadata !29, metadata !"malloc", metadata !11, i32 827, metadata !14, i32 0, metadata !571} ; [ DW_TAG_auto_variable ] [malloc] [line 827]
!593 = metadata !{i32 827, i32 7, metadata !29, metadata !571}
!594 = metadata !{i32 830, i32 3, metadata !595, metadata !571}
!595 = metadata !{i32 786443, metadata !10, metadata !29, i32 829, i32 3, i32 0, i32 240} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!596 = metadata !{i32 832, i32 15, metadata !595, metadata !571}
!597 = metadata !{i32 786688, metadata !595, metadata !"tmp_ndt_2", metadata !11, i32 831, metadata !14, i32 0, metadata !571} ; [ DW_TAG_auto_variable ] [tmp_ndt_2] [line 831]
!598 = metadata !{i32 831, i32 7, metadata !595, metadata !571}
!599 = metadata !{i32 833, i32 7, metadata !600, metadata !571}
!600 = metadata !{i32 786443, metadata !10, metadata !595, i32 833, i32 7, i32 0, i32 241} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!601 = metadata !{i32 786688, metadata !21, metadata !"irp", metadata !11, i32 641, metadata !14, i32 0, metadata !554} ; [ DW_TAG_auto_variable ] [irp] [line 641]
!602 = metadata !{i32 641, i32 7, metadata !21, metadata !554}
!603 = metadata !{i32 653, i32 7, metadata !604, metadata !554}
!604 = metadata !{i32 786443, metadata !10, metadata !573, i32 653, i32 7, i32 0, i32 174} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!605 = metadata !{i32 786688, metadata !21, metadata !"irpStack__Parameters__DeviceIoControl__Type3InputBuffer", metadata !11, i32 646, metadata !14, i32 0, metadata !554} ; [ DW_TAG_auto_variable ] [irpStack__Parameters__DeviceIoControl__Type3InputBuffer] [line 646]
!606 = metadata !{i32 646, i32 7, metadata !21, metadata !554}
!607 = metadata !{i32 786689, metadata !43, metadata !"DeviceObject", metadata !11, i32 16778165, metadata !14, i32 0, metadata !608} ; [ DW_TAG_arg_variable ] [DeviceObject] [line 949]
!608 = metadata !{i32 661, i32 14, metadata !609, metadata !554}
!609 = metadata !{i32 786443, metadata !10, metadata !573, i32 656, i32 3, i32 0, i32 176} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!610 = metadata !{i32 949, i32 23, metadata !43, metadata !608}
!611 = metadata !{i32 786689, metadata !43, metadata !"Irp", metadata !11, i32 33555381, metadata !14, i32 0, metadata !608} ; [ DW_TAG_arg_variable ] [Irp] [line 949]
!612 = metadata !{i32 949, i32 42, metadata !43, metadata !608}
!613 = metadata !{i32 953, i32 18, metadata !43, metadata !608}
!614 = metadata !{i32 786688, metadata !43, metadata !"lcontext", metadata !11, i32 953, metadata !14, i32 0, metadata !608} ; [ DW_TAG_auto_variable ] [lcontext] [line 953]
!615 = metadata !{i32 953, i32 7, metadata !43, metadata !608}
!616 = metadata !{i32 956, i32 7, metadata !404, metadata !608}
!617 = metadata !{i32 786689, metadata !18, metadata !"DeviceObject", metadata !11, i32 16777845, metadata !14, i32 0, metadata !618} ; [ DW_TAG_arg_variable ] [DeviceObject] [line 629]
!618 = metadata !{i32 958, i32 22, metadata !408, metadata !608}
!619 = metadata !{i32 629, i32 27, metadata !18, metadata !618}
!620 = metadata !{i32 786689, metadata !18, metadata !"Irp", metadata !11, i32 33555061, metadata !14, i32 0, metadata !618} ; [ DW_TAG_arg_variable ] [Irp] [line 629]
!621 = metadata !{i32 629, i32 46, metadata !18, metadata !618}
!622 = metadata !{i32 786689, metadata !18, metadata !"Context", metadata !11, i32 50332277, metadata !14, i32 0, metadata !618} ; [ DW_TAG_arg_variable ] [Context] [line 629]
!623 = metadata !{i32 629, i32 56, metadata !18, metadata !618}
!624 = metadata !{i32 786689, metadata !47, metadata !"Event", metadata !11, i32 16778250, metadata !14, i32 0, metadata !625} ; [ DW_TAG_arg_variable ] [Event] [line 1034]
!625 = metadata !{i32 634, i32 3, metadata !417, metadata !618}
!626 = metadata !{i32 1034, i32 20, metadata !47, metadata !625}
!627 = metadata !{i32 786689, metadata !47, metadata !"Increment", metadata !11, i32 33555466, metadata !14, i32 0, metadata !625} ; [ DW_TAG_arg_variable ] [Increment] [line 1034]
!628 = metadata !{i32 1034, i32 32, metadata !47, metadata !625}
!629 = metadata !{i32 786689, metadata !47, metadata !"Wait", metadata !11, i32 50332682, metadata !14, i32 0, metadata !625} ; [ DW_TAG_arg_variable ] [Wait] [line 1034]
!630 = metadata !{i32 1034, i32 48, metadata !47, metadata !625}
!631 = metadata !{i32 1035, i32 11, metadata !47, metadata !625}
!632 = metadata !{i32 786688, metadata !47, metadata !"l", metadata !11, i32 1035, metadata !14, i32 0, metadata !625} ; [ DW_TAG_auto_variable ] [l] [line 1035]
!633 = metadata !{i32 1035, i32 7, metadata !47, metadata !625}
!634 = metadata !{i32 1038, i32 3, metadata !429, metadata !625}
!635 = metadata !{i32 786688, metadata !43, metadata !"compRetStatus1", metadata !11, i32 952, metadata !14, i32 0, metadata !608} ; [ DW_TAG_auto_variable ] [compRetStatus1] [line 952]
!636 = metadata !{i32 952, i32 7, metadata !43, metadata !608}
!637 = metadata !{i32 786688, metadata !43, metadata !"__cil_tmp7", metadata !11, i32 954, metadata !435, i32 0, metadata !608} ; [ DW_TAG_auto_variable ] [__cil_tmp7] [line 954]
!638 = metadata !{i32 954, i32 17, metadata !43, metadata !608}
!639 = metadata !{i32 939, i32 7, metadata !438, metadata !640}
!640 = metadata !{i32 962, i32 7, metadata !441, metadata !608}
!641 = metadata !{i32 940, i32 5, metadata !446, metadata !640}
!642 = metadata !{i32 964, i32 5, metadata !442, metadata !608}
!643 = metadata !{i32 38, i32 10, metadata !89, metadata !644}
!644 = metadata !{i32 943, i32 5, metadata !450, metadata !640}
!645 = metadata !{i32 971, i32 16, metadata !405, metadata !608}
!646 = metadata !{i32 786688, metadata !405, metadata !"tmp_ndt_12", metadata !11, i32 970, metadata !14, i32 0, metadata !608} ; [ DW_TAG_auto_variable ] [tmp_ndt_12] [line 970]
!647 = metadata !{i32 970, i32 7, metadata !405, metadata !608}
!648 = metadata !{i32 972, i32 7, metadata !456, metadata !608}
!649 = metadata !{i32 974, i32 17, metadata !458, metadata !608}
!650 = metadata !{i32 786688, metadata !458, metadata !"tmp_ndt_7", metadata !11, i32 973, metadata !14, i32 0, metadata !608} ; [ DW_TAG_auto_variable ] [tmp_ndt_7] [line 973]
!651 = metadata !{i32 973, i32 9, metadata !458, metadata !608}
!652 = metadata !{i32 975, i32 9, metadata !462, metadata !608}
!653 = metadata !{i32 786688, metadata !43, metadata !"returnVal2", metadata !11, i32 951, metadata !14, i32 0, metadata !608} ; [ DW_TAG_auto_variable ] [returnVal2] [line 951]
!654 = metadata !{i32 951, i32 7, metadata !43, metadata !608}
!655 = metadata !{i32 994, i32 7, metadata !467, metadata !608}
!656 = metadata !{i32 995, i32 5, metadata !469, metadata !608}
!657 = metadata !{i32 996, i32 5, metadata !469, metadata !608}
!658 = metadata !{i32 997, i32 3, metadata !469, metadata !608}
!659 = metadata !{i32 998, i32 9, metadata !473, metadata !608}
!660 = metadata !{i32 999, i32 11, metadata !476, metadata !608}
!661 = metadata !{i32 1000, i32 9, metadata !479, metadata !608}
!662 = metadata !{i32 1001, i32 9, metadata !479, metadata !608}
!663 = metadata !{i32 1002, i32 7, metadata !479, metadata !608}
!664 = metadata !{i32 1003, i32 9, metadata !483, metadata !608}
!665 = metadata !{i32 1004, i32 9, metadata !483, metadata !608}
!666 = metadata !{i32 1007, i32 11, metadata !486, metadata !608}
!667 = metadata !{i32 1008, i32 9, metadata !489, metadata !608}
!668 = metadata !{i32 1009, i32 9, metadata !489, metadata !608}
!669 = metadata !{i32 786688, metadata !21, metadata !"ntStatus", metadata !11, i32 640, metadata !14, i32 0, metadata !554} ; [ DW_TAG_auto_variable ] [ntStatus] [line 640]
!670 = metadata !{i32 640, i32 7, metadata !21, metadata !554}
!671 = metadata !{i32 663, i32 3, metadata !672, metadata !554}
!672 = metadata !{i32 786443, metadata !10, metadata !573, i32 663, i32 3, i32 0, i32 177} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!673 = metadata !{i32 786688, metadata !21, metadata !"__cil_tmp11", metadata !11, i32 647, metadata !496, i32 0, metadata !554} ; [ DW_TAG_auto_variable ] [__cil_tmp11] [line 647]
!674 = metadata !{i32 647, i32 8, metadata !21, metadata !554}
!675 = metadata !{i32 663, i32 7, metadata !676, metadata !554}
!676 = metadata !{i32 786443, metadata !10, metadata !672, i32 663, i32 7, i32 0, i32 178} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!677 = metadata !{i32 786689, metadata !48, metadata !"Object", metadata !11, i32 16778258, metadata !14, i32 0, metadata !678} ; [ DW_TAG_arg_variable ] [Object] [line 1042]
!678 = metadata !{i32 665, i32 5, metadata !679, metadata !554}
!679 = metadata !{i32 786443, metadata !10, metadata !680, i32 664, i32 5, i32 0, i32 180} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!680 = metadata !{i32 786443, metadata !10, metadata !676, i32 663, i32 28, i32 0, i32 179} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!681 = metadata !{i32 1042, i32 31, metadata !48, metadata !678}
!682 = metadata !{i32 786689, metadata !48, metadata !"Alertable", metadata !11, i32 67109906, metadata !14, i32 0, metadata !678} ; [ DW_TAG_arg_variable ] [Alertable] [line 1042]
!683 = metadata !{i32 1042, i32 76, metadata !48, metadata !678}
!684 = metadata !{i32 786689, metadata !48, metadata !"Timeout", metadata !11, i32 83887123, metadata !14, i32 0, metadata !678} ; [ DW_TAG_arg_variable ] [Timeout] [line 1043]
!685 = metadata !{i32 1043, i32 31, metadata !48, metadata !678}
!686 = metadata !{i32 1047, i32 7, metadata !510, metadata !678}
!687 = metadata !{i32 1048, i32 9, metadata !513, metadata !678}
!688 = metadata !{i32 1049, i32 7, metadata !516, metadata !678}
!689 = metadata !{i32 1050, i32 7, metadata !516, metadata !678}
!690 = metadata !{i32 1054, i32 3, metadata !514, metadata !678}
!691 = metadata !{i32 1056, i32 9, metadata !520, metadata !678}
!692 = metadata !{i32 1057, i32 7, metadata !523, metadata !678}
!693 = metadata !{i32 1058, i32 7, metadata !523, metadata !678}
!694 = metadata !{i32 1059, i32 5, metadata !523, metadata !678}
!695 = metadata !{i32 1060, i32 11, metadata !527, metadata !678}
!696 = metadata !{i32 38, i32 10, metadata !89, metadata !697}
!697 = metadata !{i32 1062, i32 9, metadata !531, metadata !678}
!698 = metadata !{i32 1070, i32 15, metadata !511, metadata !678}
!699 = metadata !{i32 786688, metadata !511, metadata !"tmp_ndt_8", metadata !11, i32 1069, metadata !14, i32 0, metadata !678} ; [ DW_TAG_auto_variable ] [tmp_ndt_8] [line 1069]
!700 = metadata !{i32 1069, i32 7, metadata !511, metadata !678}
!701 = metadata !{i32 666, i32 5, metadata !679, metadata !554}
!702 = metadata !{i32 668, i32 3, metadata !680, metadata !554}
!703 = metadata !{i32 546, i32 7, metadata !704, metadata !296}
!704 = metadata !{i32 786443, metadata !10, metadata !375, i32 546, i32 7, i32 0, i32 140} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!705 = metadata !{i32 786688, metadata !17, metadata !"disketteExtension__MaxTransferSize", metadata !11, i32 466, metadata !14, i32 0, metadata !296} ; [ DW_TAG_auto_variable ] [disketteExtension__MaxTransferSize] [line 466]
!706 = metadata !{i32 466, i32 7, metadata !17, metadata !296}
!707 = metadata !{i32 548, i32 9, metadata !708, metadata !296}
!708 = metadata !{i32 786443, metadata !10, metadata !709, i32 548, i32 9, i32 0, i32 142} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!709 = metadata !{i32 786443, metadata !10, metadata !704, i32 546, i32 22, i32 0, i32 141} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!710 = metadata !{i32 549, i32 11, metadata !711, metadata !296}
!711 = metadata !{i32 786443, metadata !10, metadata !712, i32 549, i32 11, i32 0, i32 144} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!712 = metadata !{i32 786443, metadata !10, metadata !708, i32 548, i32 28, i32 0, i32 143} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!713 = metadata !{i32 572, i32 13, metadata !714, metadata !296}
!714 = metadata !{i32 786443, metadata !10, metadata !715, i32 572, i32 13, i32 0, i32 155} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!715 = metadata !{i32 786443, metadata !10, metadata !716, i32 570, i32 17, i32 0, i32 154} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!716 = metadata !{i32 786443, metadata !10, metadata !717, i32 569, i32 7, i32 0, i32 153} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!717 = metadata !{i32 786443, metadata !10, metadata !708, i32 559, i32 12, i32 0, i32 150} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!718 = metadata !{i32 876, i32 15, metadata !719, metadata !720}
!719 = metadata !{i32 786443, metadata !10, metadata !35, i32 874, i32 3, i32 0, i32 254} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!720 = metadata !{i32 579, i32 20, metadata !721, metadata !296}
!721 = metadata !{i32 786443, metadata !10, metadata !715, i32 575, i32 9, i32 0, i32 157} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!722 = metadata !{i32 877, i32 7, metadata !723, metadata !720}
!723 = metadata !{i32 786443, metadata !10, metadata !719, i32 877, i32 7, i32 0, i32 255} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!724 = metadata !{i32 583, i32 13, metadata !725, metadata !296}
!725 = metadata !{i32 786443, metadata !10, metadata !715, i32 583, i32 13, i32 0, i32 158} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!726 = metadata !{i32 593, i32 9, metadata !727, metadata !296}
!727 = metadata !{i32 786443, metadata !10, metadata !709, i32 593, i32 9, i32 0, i32 160} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!728 = metadata !{i32 786689, metadata !38, metadata !"PhysicalDeviceObject", metadata !11, i32 16778108, metadata !14, i32 0, metadata !729} ; [ DW_TAG_arg_variable ] [PhysicalDeviceObject] [line 892]
!729 = metadata !{i32 602, i32 19, metadata !730, metadata !296}
!730 = metadata !{i32 786443, metadata !10, metadata !731, i32 601, i32 7, i32 0, i32 165} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!731 = metadata !{i32 786443, metadata !10, metadata !727, i32 593, i32 24, i32 0, i32 161} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!732 = metadata !{i32 892, i32 35, metadata !38, metadata !729}
!733 = metadata !{i32 786689, metadata !38, metadata !"ReferenceString", metadata !11, i32 50332541, metadata !14, i32 0, metadata !729} ; [ DW_TAG_arg_variable ] [ReferenceString] [line 893]
!734 = metadata !{i32 893, i32 35, metadata !38, metadata !729}
!735 = metadata !{i32 786689, metadata !38, metadata !"SymbolicLinkName", metadata !11, i32 67109757, metadata !14, i32 0, metadata !729} ; [ DW_TAG_arg_variable ] [SymbolicLinkName] [line 893]
!736 = metadata !{i32 893, i32 57, metadata !38, metadata !729}
!737 = metadata !{i32 898, i32 15, metadata !738, metadata !729}
!738 = metadata !{i32 786443, metadata !10, metadata !38, i32 896, i32 3, i32 0, i32 261} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!739 = metadata !{i32 786688, metadata !738, metadata !"tmp_ndt_5", metadata !11, i32 897, metadata !14, i32 0, metadata !729} ; [ DW_TAG_auto_variable ] [tmp_ndt_5] [line 897]
!740 = metadata !{i32 897, i32 7, metadata !738, metadata !729}
!741 = metadata !{i32 899, i32 7, metadata !742, metadata !729}
!742 = metadata !{i32 786443, metadata !10, metadata !738, i32 899, i32 7, i32 0, i32 262} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!743 = metadata !{i32 605, i32 11, metadata !744, metadata !296}
!744 = metadata !{i32 786443, metadata !10, metadata !731, i32 605, i32 11, i32 0, i32 166} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!745 = metadata !{i32 786689, metadata !41, metadata !"SymbolicLinkName", metadata !11, i32 16778130, metadata !14, i32 0, metadata !746} ; [ DW_TAG_arg_variable ] [SymbolicLinkName] [line 914]
!746 = metadata !{i32 607, i32 21, metadata !747, metadata !296}
!747 = metadata !{i32 786443, metadata !10, metadata !748, i32 606, i32 9, i32 0, i32 168} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!748 = metadata !{i32 786443, metadata !10, metadata !744, i32 605, i32 27, i32 0, i32 167} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!749 = metadata !{i32 914, i32 35, metadata !41, metadata !746}
!750 = metadata !{i32 786689, metadata !41, metadata !"Enable", metadata !11, i32 33555346, metadata !14, i32 0, metadata !746} ; [ DW_TAG_arg_variable ] [Enable] [line 914]
!751 = metadata !{i32 914, i32 58, metadata !41, metadata !746}
!752 = metadata !{i32 919, i32 15, metadata !753, metadata !746}
!753 = metadata !{i32 786443, metadata !10, metadata !41, i32 917, i32 3, i32 0, i32 268} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!754 = metadata !{i32 786688, metadata !753, metadata !"tmp_ndt_6", metadata !11, i32 918, metadata !14, i32 0, metadata !746} ; [ DW_TAG_auto_variable ] [tmp_ndt_6] [line 918]
!755 = metadata !{i32 918, i32 7, metadata !753, metadata !746}
!756 = metadata !{i32 610, i32 7, metadata !748, metadata !296}
!757 = metadata !{i32 588, i32 9, metadata !715, metadata !296}
!758 = metadata !{i32 589, i32 7, metadata !715, metadata !296}
!759 = metadata !{i32 786688, metadata !17, metadata !"Irp__IoStatus__Status", metadata !11, i32 464, metadata !14, i32 0, metadata !296} ; [ DW_TAG_auto_variable ] [Irp__IoStatus__Status] [line 464]
!760 = metadata !{i32 464, i32 7, metadata !17, metadata !296}
!761 = metadata !{i32 623, i32 3, metadata !762, metadata !296}
!762 = metadata !{i32 786443, metadata !10, metadata !375, i32 617, i32 3, i32 0, i32 169} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!763 = metadata !{i32 786689, metadata !44, metadata !"Irp", metadata !11, i32 16778236, metadata !14, i32 0, metadata !764} ; [ DW_TAG_arg_variable ] [Irp] [line 1020]
!764 = metadata !{i32 624, i32 3, metadata !762, metadata !296}
!765 = metadata !{i32 1020, i32 29, metadata !44, metadata !764}
!766 = metadata !{i32 786689, metadata !44, metadata !"PriorityBoost", metadata !11, i32 33555452, metadata !14, i32 0, metadata !764} ; [ DW_TAG_arg_variable ] [PriorityBoost] [line 1020]
!767 = metadata !{i32 1020, i32 39, metadata !44, metadata !764}
!768 = metadata !{i32 1024, i32 7, metadata !286, metadata !764}
!769 = metadata !{i32 1025, i32 5, metadata !289, metadata !764}
!770 = metadata !{i32 245, i32 19, metadata !298, null}
!771 = metadata !{i32 38, i32 10, metadata !89, metadata !772}
!772 = metadata !{i32 1028, i32 5, metadata !293, metadata !764}
!773 = metadata !{i32 38, i32 10, metadata !89, metadata !774}
!774 = metadata !{i32 1012, i32 9, metadata !775, metadata !608}
!775 = metadata !{i32 786443, metadata !10, metadata !776, i32 1011, i32 9, i32 0, i32 309} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!776 = metadata !{i32 786443, metadata !10, metadata !486, i32 1010, i32 14, i32 0, i32 308} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!777 = metadata !{i32 38, i32 10, metadata !89, metadata !778}
!778 = metadata !{i32 1012, i32 9, metadata !775, metadata !395}
!779 = metadata !{i32 786688, metadata !16, metadata !"disketteExtension__HoldNewRequests", metadata !11, i32 177, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [disketteExtension__HoldNewRequests] [line 177]
!780 = metadata !{i32 177, i32 7, metadata !16, null}
!781 = metadata !{i32 397, i32 23, metadata !782, null}
!782 = metadata !{i32 786443, metadata !10, metadata !298, i32 397, i32 23, i32 0, i32 106} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!783 = metadata !{i32 398, i32 21, metadata !784, null}
!784 = metadata !{i32 786443, metadata !10, metadata !782, i32 397, i32 32, i32 0, i32 107} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!785 = metadata !{i32 408, i32 19, metadata !786, null}
!786 = metadata !{i32 786443, metadata !10, metadata !298, i32 404, i32 19, i32 0, i32 110} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!787 = metadata !{i32 786689, metadata !43, metadata !"DeviceObject", metadata !11, i32 16778165, metadata !14, i32 0, metadata !788} ; [ DW_TAG_arg_variable ] [DeviceObject] [line 949]
!788 = metadata !{i32 409, i32 30, metadata !786, null}
!789 = metadata !{i32 949, i32 23, metadata !43, metadata !788}
!790 = metadata !{i32 786689, metadata !43, metadata !"Irp", metadata !11, i32 33555381, metadata !14, i32 0, metadata !788} ; [ DW_TAG_arg_variable ] [Irp] [line 949]
!791 = metadata !{i32 949, i32 42, metadata !43, metadata !788}
!792 = metadata !{i32 953, i32 18, metadata !43, metadata !788}
!793 = metadata !{i32 786688, metadata !43, metadata !"lcontext", metadata !11, i32 953, metadata !14, i32 0, metadata !788} ; [ DW_TAG_auto_variable ] [lcontext] [line 953]
!794 = metadata !{i32 953, i32 7, metadata !43, metadata !788}
!795 = metadata !{i32 956, i32 7, metadata !404, metadata !788}
!796 = metadata !{i32 786689, metadata !18, metadata !"DeviceObject", metadata !11, i32 16777845, metadata !14, i32 0, metadata !797} ; [ DW_TAG_arg_variable ] [DeviceObject] [line 629]
!797 = metadata !{i32 958, i32 22, metadata !408, metadata !788}
!798 = metadata !{i32 629, i32 27, metadata !18, metadata !797}
!799 = metadata !{i32 786689, metadata !18, metadata !"Irp", metadata !11, i32 33555061, metadata !14, i32 0, metadata !797} ; [ DW_TAG_arg_variable ] [Irp] [line 629]
!800 = metadata !{i32 629, i32 46, metadata !18, metadata !797}
!801 = metadata !{i32 786689, metadata !18, metadata !"Context", metadata !11, i32 50332277, metadata !14, i32 0, metadata !797} ; [ DW_TAG_arg_variable ] [Context] [line 629]
!802 = metadata !{i32 629, i32 56, metadata !18, metadata !797}
!803 = metadata !{i32 786689, metadata !47, metadata !"Event", metadata !11, i32 16778250, metadata !14, i32 0, metadata !804} ; [ DW_TAG_arg_variable ] [Event] [line 1034]
!804 = metadata !{i32 634, i32 3, metadata !417, metadata !797}
!805 = metadata !{i32 1034, i32 20, metadata !47, metadata !804}
!806 = metadata !{i32 786689, metadata !47, metadata !"Increment", metadata !11, i32 33555466, metadata !14, i32 0, metadata !804} ; [ DW_TAG_arg_variable ] [Increment] [line 1034]
!807 = metadata !{i32 1034, i32 32, metadata !47, metadata !804}
!808 = metadata !{i32 786689, metadata !47, metadata !"Wait", metadata !11, i32 50332682, metadata !14, i32 0, metadata !804} ; [ DW_TAG_arg_variable ] [Wait] [line 1034]
!809 = metadata !{i32 1034, i32 48, metadata !47, metadata !804}
!810 = metadata !{i32 1035, i32 11, metadata !47, metadata !804}
!811 = metadata !{i32 786688, metadata !47, metadata !"l", metadata !11, i32 1035, metadata !14, i32 0, metadata !804} ; [ DW_TAG_auto_variable ] [l] [line 1035]
!812 = metadata !{i32 1035, i32 7, metadata !47, metadata !804}
!813 = metadata !{i32 1038, i32 3, metadata !429, metadata !804}
!814 = metadata !{i32 786688, metadata !43, metadata !"compRetStatus1", metadata !11, i32 952, metadata !14, i32 0, metadata !788} ; [ DW_TAG_auto_variable ] [compRetStatus1] [line 952]
!815 = metadata !{i32 952, i32 7, metadata !43, metadata !788}
!816 = metadata !{i32 786688, metadata !43, metadata !"__cil_tmp7", metadata !11, i32 954, metadata !435, i32 0, metadata !788} ; [ DW_TAG_auto_variable ] [__cil_tmp7] [line 954]
!817 = metadata !{i32 954, i32 17, metadata !43, metadata !788}
!818 = metadata !{i32 939, i32 7, metadata !438, metadata !819}
!819 = metadata !{i32 962, i32 7, metadata !441, metadata !788}
!820 = metadata !{i32 940, i32 5, metadata !446, metadata !819}
!821 = metadata !{i32 964, i32 5, metadata !442, metadata !788}
!822 = metadata !{i32 38, i32 10, metadata !89, metadata !823}
!823 = metadata !{i32 943, i32 5, metadata !450, metadata !819}
!824 = metadata !{i32 971, i32 16, metadata !405, metadata !788}
!825 = metadata !{i32 786688, metadata !405, metadata !"tmp_ndt_12", metadata !11, i32 970, metadata !14, i32 0, metadata !788} ; [ DW_TAG_auto_variable ] [tmp_ndt_12] [line 970]
!826 = metadata !{i32 970, i32 7, metadata !405, metadata !788}
!827 = metadata !{i32 972, i32 7, metadata !456, metadata !788}
!828 = metadata !{i32 974, i32 17, metadata !458, metadata !788}
!829 = metadata !{i32 786688, metadata !458, metadata !"tmp_ndt_7", metadata !11, i32 973, metadata !14, i32 0, metadata !788} ; [ DW_TAG_auto_variable ] [tmp_ndt_7] [line 973]
!830 = metadata !{i32 973, i32 9, metadata !458, metadata !788}
!831 = metadata !{i32 975, i32 9, metadata !462, metadata !788}
!832 = metadata !{i32 786688, metadata !43, metadata !"returnVal2", metadata !11, i32 951, metadata !14, i32 0, metadata !788} ; [ DW_TAG_auto_variable ] [returnVal2] [line 951]
!833 = metadata !{i32 951, i32 7, metadata !43, metadata !788}
!834 = metadata !{i32 994, i32 7, metadata !467, metadata !788}
!835 = metadata !{i32 995, i32 5, metadata !469, metadata !788}
!836 = metadata !{i32 996, i32 5, metadata !469, metadata !788}
!837 = metadata !{i32 997, i32 3, metadata !469, metadata !788}
!838 = metadata !{i32 998, i32 9, metadata !473, metadata !788}
!839 = metadata !{i32 999, i32 11, metadata !476, metadata !788}
!840 = metadata !{i32 1000, i32 9, metadata !479, metadata !788}
!841 = metadata !{i32 1001, i32 9, metadata !479, metadata !788}
!842 = metadata !{i32 1002, i32 7, metadata !479, metadata !788}
!843 = metadata !{i32 1003, i32 9, metadata !483, metadata !788}
!844 = metadata !{i32 1004, i32 9, metadata !483, metadata !788}
!845 = metadata !{i32 1007, i32 11, metadata !486, metadata !788}
!846 = metadata !{i32 1008, i32 9, metadata !489, metadata !788}
!847 = metadata !{i32 1009, i32 9, metadata !489, metadata !788}
!848 = metadata !{i32 411, i32 23, metadata !849, null}
!849 = metadata !{i32 786443, metadata !10, metadata !298, i32 411, i32 23, i32 0, i32 111} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!850 = metadata !{i32 786689, metadata !41, metadata !"SymbolicLinkName", metadata !11, i32 16778130, metadata !14, i32 0, metadata !851} ; [ DW_TAG_arg_variable ] [SymbolicLinkName] [line 914]
!851 = metadata !{i32 413, i32 21, metadata !852, null}
!852 = metadata !{i32 786443, metadata !10, metadata !853, i32 412, i32 21, i32 0, i32 113} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!853 = metadata !{i32 786443, metadata !10, metadata !849, i32 411, i32 72, i32 0, i32 112} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!854 = metadata !{i32 914, i32 35, metadata !41, metadata !851}
!855 = metadata !{i32 786689, metadata !41, metadata !"Enable", metadata !11, i32 33555346, metadata !14, i32 0, metadata !851} ; [ DW_TAG_arg_variable ] [Enable] [line 914]
!856 = metadata !{i32 914, i32 58, metadata !41, metadata !851}
!857 = metadata !{i32 919, i32 15, metadata !753, metadata !851}
!858 = metadata !{i32 786688, metadata !753, metadata !"tmp_ndt_6", metadata !11, i32 918, metadata !14, i32 0, metadata !851} ; [ DW_TAG_auto_variable ] [tmp_ndt_6] [line 918]
!859 = metadata !{i32 918, i32 7, metadata !753, metadata !851}
!860 = metadata !{i32 416, i32 19, metadata !853, null}
!861 = metadata !{i32 419, i32 23, metadata !862, null}
!862 = metadata !{i32 786443, metadata !10, metadata !298, i32 419, i32 23, i32 0, i32 114} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!863 = metadata !{i32 786689, metadata !32, metadata !"SymbolicLinkName", metadata !11, i32 16778064, metadata !14, i32 0, metadata !864} ; [ DW_TAG_arg_variable ] [SymbolicLinkName] [line 848]
!864 = metadata !{i32 421, i32 21, metadata !865, null}
!865 = metadata !{i32 786443, metadata !10, metadata !866, i32 420, i32 21, i32 0, i32 116} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!866 = metadata !{i32 786443, metadata !10, metadata !862, i32 419, i32 64, i32 0, i32 115} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!867 = metadata !{i32 848, i32 30, metadata !32, metadata !864}
!868 = metadata !{i32 853, i32 15, metadata !869, metadata !864}
!869 = metadata !{i32 786443, metadata !10, metadata !32, i32 851, i32 3, i32 0, i32 247} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!870 = metadata !{i32 786688, metadata !869, metadata !"tmp_ndt_3", metadata !11, i32 852, metadata !14, i32 0, metadata !864} ; [ DW_TAG_auto_variable ] [tmp_ndt_3] [line 852]
!871 = metadata !{i32 852, i32 7, metadata !869, metadata !864}
!872 = metadata !{i32 423, i32 19, metadata !866, null}
!873 = metadata !{i32 38, i32 10, metadata !89, metadata !874}
!874 = metadata !{i32 1012, i32 9, metadata !775, metadata !788}
!875 = metadata !{i32 38, i32 10, metadata !89, metadata !876}
!876 = metadata !{i32 401, i32 21, metadata !877, null}
!877 = metadata !{i32 786443, metadata !10, metadata !878, i32 400, i32 21, i32 0, i32 109} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!878 = metadata !{i32 786443, metadata !10, metadata !782, i32 399, i32 26, i32 0, i32 108} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!879 = metadata !{i32 379, i32 19, metadata !298, null}
!880 = metadata !{i32 380, i32 23, metadata !881, null}
!881 = metadata !{i32 786443, metadata !10, metadata !298, i32 380, i32 23, i32 0, i32 101} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!882 = metadata !{i32 381, i32 21, metadata !883, null}
!883 = metadata !{i32 786443, metadata !10, metadata !881, i32 380, i32 32, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!884 = metadata !{i32 786689, metadata !43, metadata !"DeviceObject", metadata !11, i32 16778165, metadata !14, i32 0, metadata !885} ; [ DW_TAG_arg_variable ] [DeviceObject] [line 949]
!885 = metadata !{i32 390, i32 30, metadata !886, null}
!886 = metadata !{i32 786443, metadata !10, metadata !298, i32 387, i32 19, i32 0, i32 105} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!887 = metadata !{i32 949, i32 23, metadata !43, metadata !885}
!888 = metadata !{i32 786689, metadata !43, metadata !"Irp", metadata !11, i32 33555381, metadata !14, i32 0, metadata !885} ; [ DW_TAG_arg_variable ] [Irp] [line 949]
!889 = metadata !{i32 949, i32 42, metadata !43, metadata !885}
!890 = metadata !{i32 953, i32 18, metadata !43, metadata !885}
!891 = metadata !{i32 786688, metadata !43, metadata !"lcontext", metadata !11, i32 953, metadata !14, i32 0, metadata !885} ; [ DW_TAG_auto_variable ] [lcontext] [line 953]
!892 = metadata !{i32 953, i32 7, metadata !43, metadata !885}
!893 = metadata !{i32 956, i32 7, metadata !404, metadata !885}
!894 = metadata !{i32 786689, metadata !18, metadata !"DeviceObject", metadata !11, i32 16777845, metadata !14, i32 0, metadata !895} ; [ DW_TAG_arg_variable ] [DeviceObject] [line 629]
!895 = metadata !{i32 958, i32 22, metadata !408, metadata !885}
!896 = metadata !{i32 629, i32 27, metadata !18, metadata !895}
!897 = metadata !{i32 786689, metadata !18, metadata !"Irp", metadata !11, i32 33555061, metadata !14, i32 0, metadata !895} ; [ DW_TAG_arg_variable ] [Irp] [line 629]
!898 = metadata !{i32 629, i32 46, metadata !18, metadata !895}
!899 = metadata !{i32 786689, metadata !18, metadata !"Context", metadata !11, i32 50332277, metadata !14, i32 0, metadata !895} ; [ DW_TAG_arg_variable ] [Context] [line 629]
!900 = metadata !{i32 629, i32 56, metadata !18, metadata !895}
!901 = metadata !{i32 786689, metadata !47, metadata !"Event", metadata !11, i32 16778250, metadata !14, i32 0, metadata !902} ; [ DW_TAG_arg_variable ] [Event] [line 1034]
!902 = metadata !{i32 634, i32 3, metadata !417, metadata !895}
!903 = metadata !{i32 1034, i32 20, metadata !47, metadata !902}
!904 = metadata !{i32 786689, metadata !47, metadata !"Increment", metadata !11, i32 33555466, metadata !14, i32 0, metadata !902} ; [ DW_TAG_arg_variable ] [Increment] [line 1034]
!905 = metadata !{i32 1034, i32 32, metadata !47, metadata !902}
!906 = metadata !{i32 786689, metadata !47, metadata !"Wait", metadata !11, i32 50332682, metadata !14, i32 0, metadata !902} ; [ DW_TAG_arg_variable ] [Wait] [line 1034]
!907 = metadata !{i32 1034, i32 48, metadata !47, metadata !902}
!908 = metadata !{i32 1035, i32 11, metadata !47, metadata !902}
!909 = metadata !{i32 786688, metadata !47, metadata !"l", metadata !11, i32 1035, metadata !14, i32 0, metadata !902} ; [ DW_TAG_auto_variable ] [l] [line 1035]
!910 = metadata !{i32 1035, i32 7, metadata !47, metadata !902}
!911 = metadata !{i32 1038, i32 3, metadata !429, metadata !902}
!912 = metadata !{i32 786688, metadata !43, metadata !"compRetStatus1", metadata !11, i32 952, metadata !14, i32 0, metadata !885} ; [ DW_TAG_auto_variable ] [compRetStatus1] [line 952]
!913 = metadata !{i32 952, i32 7, metadata !43, metadata !885}
!914 = metadata !{i32 786688, metadata !43, metadata !"__cil_tmp7", metadata !11, i32 954, metadata !435, i32 0, metadata !885} ; [ DW_TAG_auto_variable ] [__cil_tmp7] [line 954]
!915 = metadata !{i32 954, i32 17, metadata !43, metadata !885}
!916 = metadata !{i32 939, i32 7, metadata !438, metadata !917}
!917 = metadata !{i32 962, i32 7, metadata !441, metadata !885}
!918 = metadata !{i32 940, i32 5, metadata !446, metadata !917}
!919 = metadata !{i32 964, i32 5, metadata !442, metadata !885}
!920 = metadata !{i32 38, i32 10, metadata !89, metadata !921}
!921 = metadata !{i32 943, i32 5, metadata !450, metadata !917}
!922 = metadata !{i32 971, i32 16, metadata !405, metadata !885}
!923 = metadata !{i32 786688, metadata !405, metadata !"tmp_ndt_12", metadata !11, i32 970, metadata !14, i32 0, metadata !885} ; [ DW_TAG_auto_variable ] [tmp_ndt_12] [line 970]
!924 = metadata !{i32 970, i32 7, metadata !405, metadata !885}
!925 = metadata !{i32 972, i32 7, metadata !456, metadata !885}
!926 = metadata !{i32 974, i32 17, metadata !458, metadata !885}
!927 = metadata !{i32 786688, metadata !458, metadata !"tmp_ndt_7", metadata !11, i32 973, metadata !14, i32 0, metadata !885} ; [ DW_TAG_auto_variable ] [tmp_ndt_7] [line 973]
!928 = metadata !{i32 973, i32 9, metadata !458, metadata !885}
!929 = metadata !{i32 975, i32 9, metadata !462, metadata !885}
!930 = metadata !{i32 786688, metadata !43, metadata !"returnVal2", metadata !11, i32 951, metadata !14, i32 0, metadata !885} ; [ DW_TAG_auto_variable ] [returnVal2] [line 951]
!931 = metadata !{i32 951, i32 7, metadata !43, metadata !885}
!932 = metadata !{i32 994, i32 7, metadata !467, metadata !885}
!933 = metadata !{i32 995, i32 5, metadata !469, metadata !885}
!934 = metadata !{i32 996, i32 5, metadata !469, metadata !885}
!935 = metadata !{i32 997, i32 3, metadata !469, metadata !885}
!936 = metadata !{i32 998, i32 9, metadata !473, metadata !885}
!937 = metadata !{i32 999, i32 11, metadata !476, metadata !885}
!938 = metadata !{i32 1000, i32 9, metadata !479, metadata !885}
!939 = metadata !{i32 1001, i32 9, metadata !479, metadata !885}
!940 = metadata !{i32 1002, i32 7, metadata !479, metadata !885}
!941 = metadata !{i32 1003, i32 9, metadata !483, metadata !885}
!942 = metadata !{i32 1004, i32 9, metadata !483, metadata !885}
!943 = metadata !{i32 1007, i32 11, metadata !486, metadata !885}
!944 = metadata !{i32 1008, i32 9, metadata !489, metadata !885}
!945 = metadata !{i32 1009, i32 9, metadata !489, metadata !885}
!946 = metadata !{i32 38, i32 10, metadata !89, metadata !947}
!947 = metadata !{i32 1012, i32 9, metadata !775, metadata !885}
!948 = metadata !{i32 38, i32 10, metadata !89, metadata !949}
!949 = metadata !{i32 384, i32 21, metadata !950, null}
!950 = metadata !{i32 786443, metadata !10, metadata !951, i32 383, i32 21, i32 0, i32 104} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!951 = metadata !{i32 786443, metadata !10, metadata !881, i32 382, i32 26, i32 0, i32 103} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!952 = metadata !{i32 253, i32 23, metadata !953, null}
!953 = metadata !{i32 786443, metadata !10, metadata !298, i32 253, i32 23, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!954 = metadata !{i32 786689, metadata !15, metadata !"Irp", metadata !11, i32 16777315, metadata !14, i32 0, metadata !955} ; [ DW_TAG_arg_variable ] [Irp] [line 99]
!955 = metadata !{i32 272, i32 30, metadata !956, null}
!956 = metadata !{i32 786443, metadata !10, metadata !298, i32 268, i32 19, i32 0, i32 63} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!957 = metadata !{i32 99, i32 28, metadata !15, metadata !955}
!958 = metadata !{i32 786689, metadata !15, metadata !"DisketteExtension", metadata !11, i32 33554531, metadata !14, i32 0, metadata !955} ; [ DW_TAG_arg_variable ] [DisketteExtension] [line 99]
!959 = metadata !{i32 99, i32 38, metadata !15, metadata !955}
!960 = metadata !{i32 101, i32 22, metadata !15, metadata !955}
!961 = metadata !{i32 786688, metadata !15, metadata !"threadHandle", metadata !11, i32 101, metadata !14, i32 0, metadata !955} ; [ DW_TAG_auto_variable ] [threadHandle] [line 101]
!962 = metadata !{i32 101, i32 7, metadata !15, metadata !955}
!963 = metadata !{i32 102, i32 41, metadata !15, metadata !955}
!964 = metadata !{i32 786688, metadata !15, metadata !"DisketteExtension__PoweringDown", metadata !11, i32 102, metadata !14, i32 0, metadata !955} ; [ DW_TAG_auto_variable ] [DisketteExtension__PoweringDown] [line 102]
!965 = metadata !{i32 102, i32 7, metadata !15, metadata !955}
!966 = metadata !{i32 103, i32 49, metadata !15, metadata !955}
!967 = metadata !{i32 786688, metadata !15, metadata !"DisketteExtension__ThreadReferenceCount", metadata !11, i32 103, metadata !14, i32 0, metadata !955} ; [ DW_TAG_auto_variable ] [DisketteExtension__ThreadReferenceCount] [line 103]
!968 = metadata !{i32 103, i32 7, metadata !15, metadata !955}
!969 = metadata !{i32 104, i32 41, metadata !15, metadata !955}
!970 = metadata !{i32 786688, metadata !15, metadata !"DisketteExtension__FloppyThread", metadata !11, i32 104, metadata !14, i32 0, metadata !955} ; [ DW_TAG_auto_variable ] [DisketteExtension__FloppyThread] [line 104]
!971 = metadata !{i32 104, i32 7, metadata !15, metadata !955}
!972 = metadata !{i32 108, i32 23, metadata !15, metadata !955}
!973 = metadata !{i32 786688, metadata !15, metadata !"ObjAttributes", metadata !11, i32 108, metadata !14, i32 0, metadata !955} ; [ DW_TAG_auto_variable ] [ObjAttributes] [line 108]
!974 = metadata !{i32 108, i32 7, metadata !15, metadata !955}
!975 = metadata !{i32 111, i32 7, metadata !132, metadata !955}
!976 = metadata !{i32 112, i32 5, metadata !135, metadata !955}
!977 = metadata !{i32 786688, metadata !15, metadata !"Irp__IoStatus__Status", metadata !11, i32 105, metadata !14, i32 0, metadata !955} ; [ DW_TAG_auto_variable ] [Irp__IoStatus__Status] [line 105]
!978 = metadata !{i32 105, i32 7, metadata !15, metadata !955}
!979 = metadata !{i32 786688, metadata !15, metadata !"Irp__IoStatus__Information", metadata !11, i32 106, metadata !14, i32 0, metadata !955} ; [ DW_TAG_auto_variable ] [Irp__IoStatus__Information] [line 106]
!980 = metadata !{i32 106, i32 7, metadata !15, metadata !955}
!981 = metadata !{i32 115, i32 5, metadata !135, metadata !955}
!982 = metadata !{i32 119, i32 3, metadata !133, metadata !955}
!983 = metadata !{i32 120, i32 7, metadata !145, metadata !955}
!984 = metadata !{i32 122, i32 5, metadata !147, metadata !955}
!985 = metadata !{i32 786689, metadata !54, metadata !"ThreadHandle", metadata !11, i32 16778324, metadata !14, i32 0, metadata !986} ; [ DW_TAG_arg_variable ] [ThreadHandle] [line 1108]
!986 = metadata !{i32 129, i32 14, metadata !150, metadata !955}
!987 = metadata !{i32 1108, i32 30, metadata !54, metadata !986}
!988 = metadata !{i32 786689, metadata !54, metadata !"DesiredAccess", metadata !11, i32 33555540, metadata !14, i32 0, metadata !986} ; [ DW_TAG_arg_variable ] [DesiredAccess] [line 1108]
!989 = metadata !{i32 1108, i32 49, metadata !54, metadata !986}
!990 = metadata !{i32 786689, metadata !54, metadata !"ObjectAttributes", metadata !11, i32 50332756, metadata !14, i32 0, metadata !986} ; [ DW_TAG_arg_variable ] [ObjectAttributes] [line 1108]
!991 = metadata !{i32 1108, i32 69, metadata !54, metadata !986}
!992 = metadata !{i32 786689, metadata !54, metadata !"ProcessHandle", metadata !11, i32 67109973, metadata !14, i32 0, metadata !986} ; [ DW_TAG_arg_variable ] [ProcessHandle] [line 1109]
!993 = metadata !{i32 1109, i32 30, metadata !54, metadata !986}
!994 = metadata !{i32 786689, metadata !54, metadata !"ClientId", metadata !11, i32 83887189, metadata !14, i32 0, metadata !986} ; [ DW_TAG_arg_variable ] [ClientId] [line 1109]
!995 = metadata !{i32 1109, i32 50, metadata !54, metadata !986}
!996 = metadata !{i32 786689, metadata !54, metadata !"StartContext", metadata !11, i32 117441621, metadata !14, i32 0, metadata !986} ; [ DW_TAG_arg_variable ] [StartContext] [line 1109]
!997 = metadata !{i32 1109, i32 84, metadata !54, metadata !986}
!998 = metadata !{i32 1114, i32 16, metadata !163, metadata !986}
!999 = metadata !{i32 786688, metadata !163, metadata !"tmp_ndt_10", metadata !11, i32 1113, metadata !14, i32 0, metadata !986} ; [ DW_TAG_auto_variable ] [tmp_ndt_10] [line 1113]
!1000 = metadata !{i32 1113, i32 7, metadata !163, metadata !986}
!1001 = metadata !{i32 1115, i32 7, metadata !167, metadata !986}
!1002 = metadata !{i32 786688, metadata !15, metadata !"status", metadata !11, i32 100, metadata !14, i32 0, metadata !955} ; [ DW_TAG_auto_variable ] [status] [line 100]
!1003 = metadata !{i32 100, i32 7, metadata !15, metadata !955}
!1004 = metadata !{i32 132, i32 9, metadata !171, metadata !955}
!1005 = metadata !{i32 134, i32 7, metadata !175, metadata !955}
!1006 = metadata !{i32 140, i32 7, metadata !175, metadata !955}
!1007 = metadata !{i32 786689, metadata !51, metadata !"Handle", metadata !11, i32 16778302, metadata !14, i32 0, metadata !1008} ; [ DW_TAG_arg_variable ] [Handle] [line 1086]
!1008 = metadata !{i32 145, i32 14, metadata !179, metadata !955}
!1009 = metadata !{i32 1086, i32 35, metadata !51, metadata !1008}
!1010 = metadata !{i32 786689, metadata !51, metadata !"DesiredAccess", metadata !11, i32 33555518, metadata !14, i32 0, metadata !1008} ; [ DW_TAG_arg_variable ] [DesiredAccess] [line 1086]
!1011 = metadata !{i32 1086, i32 48, metadata !51, metadata !1008}
!1012 = metadata !{i32 786689, metadata !51, metadata !"ObjectType", metadata !11, i32 50332734, metadata !14, i32 0, metadata !1008} ; [ DW_TAG_arg_variable ] [ObjectType] [line 1086]
!1013 = metadata !{i32 1086, i32 68, metadata !51, metadata !1008}
!1014 = metadata !{i32 786689, metadata !51, metadata !"Object", metadata !11, i32 83887167, metadata !14, i32 0, metadata !1008} ; [ DW_TAG_arg_variable ] [Object] [line 1087]
!1015 = metadata !{i32 1087, i32 35, metadata !51, metadata !1008}
!1016 = metadata !{i32 786689, metadata !51, metadata !"HandleInformation", metadata !11, i32 100664383, metadata !14, i32 0, metadata !1008} ; [ DW_TAG_arg_variable ] [HandleInformation] [line 1087]
!1017 = metadata !{i32 1087, i32 48, metadata !51, metadata !1008}
!1018 = metadata !{i32 1092, i32 15, metadata !191, metadata !1008}
!1019 = metadata !{i32 786688, metadata !191, metadata !"tmp_ndt_9", metadata !11, i32 1091, metadata !14, i32 0, metadata !1008} ; [ DW_TAG_auto_variable ] [tmp_ndt_9] [line 1091]
!1020 = metadata !{i32 1091, i32 7, metadata !191, metadata !1008}
!1021 = metadata !{i32 1093, i32 7, metadata !195, metadata !1008}
!1022 = metadata !{i32 786689, metadata !57, metadata !"Handle", metadata !11, i32 16778346, metadata !14, i32 0, metadata !1023} ; [ DW_TAG_arg_variable ] [Handle] [line 1130]
!1023 = metadata !{i32 147, i32 5, metadata !179, metadata !955}
!1024 = metadata !{i32 1130, i32 17, metadata !57, metadata !1023}
!1025 = metadata !{i32 1135, i32 16, metadata !200, metadata !1023}
!1026 = metadata !{i32 786688, metadata !200, metadata !"tmp_ndt_11", metadata !11, i32 1134, metadata !14, i32 0, metadata !1023} ; [ DW_TAG_auto_variable ] [tmp_ndt_11] [line 1134]
!1027 = metadata !{i32 1134, i32 7, metadata !200, metadata !1023}
!1028 = metadata !{i32 149, i32 9, metadata !204, metadata !955}
!1029 = metadata !{i32 158, i32 7, metadata !207, metadata !955}
!1030 = metadata !{i32 159, i32 5, metadata !209, metadata !955}
!1031 = metadata !{i32 165, i32 3, metadata !133, metadata !955}
!1032 = metadata !{i32 274, i32 19, metadata !1033, null}
!1033 = metadata !{i32 786443, metadata !10, metadata !298, i32 274, i32 19, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!1034 = metadata !{i32 786688, metadata !16, metadata !"__cil_tmp29", metadata !11, i32 195, metadata !496, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__cil_tmp29] [line 195]
!1035 = metadata !{i32 195, i32 8, metadata !16, null}
!1036 = metadata !{i32 274, i32 23, metadata !1037, null}
!1037 = metadata !{i32 786443, metadata !10, metadata !1033, i32 274, i32 23, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!1038 = metadata !{i32 786689, metadata !48, metadata !"Object", metadata !11, i32 16778258, metadata !14, i32 0, metadata !1039} ; [ DW_TAG_arg_variable ] [Object] [line 1042]
!1039 = metadata !{i32 276, i32 21, metadata !1040, null}
!1040 = metadata !{i32 786443, metadata !10, metadata !1041, i32 275, i32 21, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!1041 = metadata !{i32 786443, metadata !10, metadata !1037, i32 274, i32 44, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!1042 = metadata !{i32 1042, i32 31, metadata !48, metadata !1039}
!1043 = metadata !{i32 786689, metadata !48, metadata !"Alertable", metadata !11, i32 67109906, metadata !14, i32 0, metadata !1039} ; [ DW_TAG_arg_variable ] [Alertable] [line 1042]
!1044 = metadata !{i32 1042, i32 76, metadata !48, metadata !1039}
!1045 = metadata !{i32 786689, metadata !48, metadata !"Timeout", metadata !11, i32 83887123, metadata !14, i32 0, metadata !1039} ; [ DW_TAG_arg_variable ] [Timeout] [line 1043]
!1046 = metadata !{i32 1043, i32 31, metadata !48, metadata !1039}
!1047 = metadata !{i32 1047, i32 7, metadata !510, metadata !1039}
!1048 = metadata !{i32 1048, i32 9, metadata !513, metadata !1039}
!1049 = metadata !{i32 1049, i32 7, metadata !516, metadata !1039}
!1050 = metadata !{i32 1050, i32 7, metadata !516, metadata !1039}
!1051 = metadata !{i32 1054, i32 3, metadata !514, metadata !1039}
!1052 = metadata !{i32 1056, i32 9, metadata !520, metadata !1039}
!1053 = metadata !{i32 1057, i32 7, metadata !523, metadata !1039}
!1054 = metadata !{i32 1058, i32 7, metadata !523, metadata !1039}
!1055 = metadata !{i32 1059, i32 5, metadata !523, metadata !1039}
!1056 = metadata !{i32 1060, i32 11, metadata !527, metadata !1039}
!1057 = metadata !{i32 38, i32 10, metadata !89, metadata !1058}
!1058 = metadata !{i32 1062, i32 9, metadata !531, metadata !1039}
!1059 = metadata !{i32 1070, i32 15, metadata !511, metadata !1039}
!1060 = metadata !{i32 786688, metadata !511, metadata !"tmp_ndt_8", metadata !11, i32 1069, metadata !14, i32 0, metadata !1039} ; [ DW_TAG_auto_variable ] [tmp_ndt_8] [line 1069]
!1061 = metadata !{i32 1069, i32 7, metadata !511, metadata !1039}
!1062 = metadata !{i32 286, i32 21, metadata !1041, null}
!1063 = metadata !{i32 287, i32 25, metadata !1064, null}
!1064 = metadata !{i32 786443, metadata !10, metadata !1041, i32 287, i32 25, i32 0, i32 70} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!1065 = metadata !{i32 288, i32 23, metadata !1066, null}
!1066 = metadata !{i32 786443, metadata !10, metadata !1064, i32 287, i32 34, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!1067 = metadata !{i32 786689, metadata !43, metadata !"DeviceObject", metadata !11, i32 16778165, metadata !14, i32 0, metadata !1068} ; [ DW_TAG_arg_variable ] [DeviceObject] [line 949]
!1068 = metadata !{i32 297, i32 32, metadata !1069, null}
!1069 = metadata !{i32 786443, metadata !10, metadata !1041, i32 294, i32 21, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!1070 = metadata !{i32 949, i32 23, metadata !43, metadata !1068}
!1071 = metadata !{i32 786689, metadata !43, metadata !"Irp", metadata !11, i32 33555381, metadata !14, i32 0, metadata !1068} ; [ DW_TAG_arg_variable ] [Irp] [line 949]
!1072 = metadata !{i32 949, i32 42, metadata !43, metadata !1068}
!1073 = metadata !{i32 953, i32 18, metadata !43, metadata !1068}
!1074 = metadata !{i32 786688, metadata !43, metadata !"lcontext", metadata !11, i32 953, metadata !14, i32 0, metadata !1068} ; [ DW_TAG_auto_variable ] [lcontext] [line 953]
!1075 = metadata !{i32 953, i32 7, metadata !43, metadata !1068}
!1076 = metadata !{i32 956, i32 7, metadata !404, metadata !1068}
!1077 = metadata !{i32 786689, metadata !18, metadata !"DeviceObject", metadata !11, i32 16777845, metadata !14, i32 0, metadata !1078} ; [ DW_TAG_arg_variable ] [DeviceObject] [line 629]
!1078 = metadata !{i32 958, i32 22, metadata !408, metadata !1068}
!1079 = metadata !{i32 629, i32 27, metadata !18, metadata !1078}
!1080 = metadata !{i32 786689, metadata !18, metadata !"Irp", metadata !11, i32 33555061, metadata !14, i32 0, metadata !1078} ; [ DW_TAG_arg_variable ] [Irp] [line 629]
!1081 = metadata !{i32 629, i32 46, metadata !18, metadata !1078}
!1082 = metadata !{i32 786689, metadata !18, metadata !"Context", metadata !11, i32 50332277, metadata !14, i32 0, metadata !1078} ; [ DW_TAG_arg_variable ] [Context] [line 629]
!1083 = metadata !{i32 629, i32 56, metadata !18, metadata !1078}
!1084 = metadata !{i32 786689, metadata !47, metadata !"Event", metadata !11, i32 16778250, metadata !14, i32 0, metadata !1085} ; [ DW_TAG_arg_variable ] [Event] [line 1034]
!1085 = metadata !{i32 634, i32 3, metadata !417, metadata !1078}
!1086 = metadata !{i32 1034, i32 20, metadata !47, metadata !1085}
!1087 = metadata !{i32 786689, metadata !47, metadata !"Increment", metadata !11, i32 33555466, metadata !14, i32 0, metadata !1085} ; [ DW_TAG_arg_variable ] [Increment] [line 1034]
!1088 = metadata !{i32 1034, i32 32, metadata !47, metadata !1085}
!1089 = metadata !{i32 786689, metadata !47, metadata !"Wait", metadata !11, i32 50332682, metadata !14, i32 0, metadata !1085} ; [ DW_TAG_arg_variable ] [Wait] [line 1034]
!1090 = metadata !{i32 1034, i32 48, metadata !47, metadata !1085}
!1091 = metadata !{i32 1035, i32 11, metadata !47, metadata !1085}
!1092 = metadata !{i32 786688, metadata !47, metadata !"l", metadata !11, i32 1035, metadata !14, i32 0, metadata !1085} ; [ DW_TAG_auto_variable ] [l] [line 1035]
!1093 = metadata !{i32 1035, i32 7, metadata !47, metadata !1085}
!1094 = metadata !{i32 1038, i32 3, metadata !429, metadata !1085}
!1095 = metadata !{i32 786688, metadata !43, metadata !"compRetStatus1", metadata !11, i32 952, metadata !14, i32 0, metadata !1068} ; [ DW_TAG_auto_variable ] [compRetStatus1] [line 952]
!1096 = metadata !{i32 952, i32 7, metadata !43, metadata !1068}
!1097 = metadata !{i32 786688, metadata !43, metadata !"__cil_tmp7", metadata !11, i32 954, metadata !435, i32 0, metadata !1068} ; [ DW_TAG_auto_variable ] [__cil_tmp7] [line 954]
!1098 = metadata !{i32 954, i32 17, metadata !43, metadata !1068}
!1099 = metadata !{i32 939, i32 7, metadata !438, metadata !1100}
!1100 = metadata !{i32 962, i32 7, metadata !441, metadata !1068}
!1101 = metadata !{i32 940, i32 5, metadata !446, metadata !1100}
!1102 = metadata !{i32 964, i32 5, metadata !442, metadata !1068}
!1103 = metadata !{i32 38, i32 10, metadata !89, metadata !1104}
!1104 = metadata !{i32 943, i32 5, metadata !450, metadata !1100}
!1105 = metadata !{i32 971, i32 16, metadata !405, metadata !1068}
!1106 = metadata !{i32 786688, metadata !405, metadata !"tmp_ndt_12", metadata !11, i32 970, metadata !14, i32 0, metadata !1068} ; [ DW_TAG_auto_variable ] [tmp_ndt_12] [line 970]
!1107 = metadata !{i32 970, i32 7, metadata !405, metadata !1068}
!1108 = metadata !{i32 972, i32 7, metadata !456, metadata !1068}
!1109 = metadata !{i32 974, i32 17, metadata !458, metadata !1068}
!1110 = metadata !{i32 786688, metadata !458, metadata !"tmp_ndt_7", metadata !11, i32 973, metadata !14, i32 0, metadata !1068} ; [ DW_TAG_auto_variable ] [tmp_ndt_7] [line 973]
!1111 = metadata !{i32 973, i32 9, metadata !458, metadata !1068}
!1112 = metadata !{i32 975, i32 9, metadata !462, metadata !1068}
!1113 = metadata !{i32 786688, metadata !43, metadata !"returnVal2", metadata !11, i32 951, metadata !14, i32 0, metadata !1068} ; [ DW_TAG_auto_variable ] [returnVal2] [line 951]
!1114 = metadata !{i32 951, i32 7, metadata !43, metadata !1068}
!1115 = metadata !{i32 994, i32 7, metadata !467, metadata !1068}
!1116 = metadata !{i32 995, i32 5, metadata !469, metadata !1068}
!1117 = metadata !{i32 996, i32 5, metadata !469, metadata !1068}
!1118 = metadata !{i32 997, i32 3, metadata !469, metadata !1068}
!1119 = metadata !{i32 998, i32 9, metadata !473, metadata !1068}
!1120 = metadata !{i32 999, i32 11, metadata !476, metadata !1068}
!1121 = metadata !{i32 1000, i32 9, metadata !479, metadata !1068}
!1122 = metadata !{i32 1001, i32 9, metadata !479, metadata !1068}
!1123 = metadata !{i32 1002, i32 7, metadata !479, metadata !1068}
!1124 = metadata !{i32 1003, i32 9, metadata !483, metadata !1068}
!1125 = metadata !{i32 1004, i32 9, metadata !483, metadata !1068}
!1126 = metadata !{i32 1007, i32 11, metadata !486, metadata !1068}
!1127 = metadata !{i32 1008, i32 9, metadata !489, metadata !1068}
!1128 = metadata !{i32 1009, i32 9, metadata !489, metadata !1068}
!1129 = metadata !{i32 38, i32 10, metadata !89, metadata !1130}
!1130 = metadata !{i32 1012, i32 9, metadata !775, metadata !1068}
!1131 = metadata !{i32 38, i32 10, metadata !89, metadata !1132}
!1132 = metadata !{i32 291, i32 23, metadata !1133, null}
!1133 = metadata !{i32 786443, metadata !10, metadata !1134, i32 290, i32 23, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!1134 = metadata !{i32 786443, metadata !10, metadata !1064, i32 289, i32 28, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!1135 = metadata !{i32 -1073741823}
!1136 = metadata !{i32 303, i32 21, metadata !1137, null}
!1137 = metadata !{i32 786443, metadata !10, metadata !1138, i32 300, i32 21, i32 0, i32 76} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!1138 = metadata !{i32 786443, metadata !10, metadata !1037, i32 299, i32 26, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!1139 = metadata !{i32 786689, metadata !44, metadata !"Irp", metadata !11, i32 16778236, metadata !14, i32 0, metadata !1140} ; [ DW_TAG_arg_variable ] [Irp] [line 1020]
!1140 = metadata !{i32 305, i32 21, metadata !1137, null}
!1141 = metadata !{i32 1020, i32 29, metadata !44, metadata !1140}
!1142 = metadata !{i32 786689, metadata !44, metadata !"PriorityBoost", metadata !11, i32 33555452, metadata !14, i32 0, metadata !1140} ; [ DW_TAG_arg_variable ] [PriorityBoost] [line 1020]
!1143 = metadata !{i32 1020, i32 39, metadata !44, metadata !1140}
!1144 = metadata !{i32 1024, i32 7, metadata !286, metadata !1140}
!1145 = metadata !{i32 1025, i32 5, metadata !289, metadata !1140}
!1146 = metadata !{i32 38, i32 10, metadata !89, metadata !1147}
!1147 = metadata !{i32 1028, i32 5, metadata !293, metadata !1140}
!1148 = metadata !{i32 38, i32 10, metadata !89, metadata !1149}
!1149 = metadata !{i32 162, i32 5, metadata !214, metadata !955}
!1150 = metadata !{i32 254, i32 25, metadata !1151, null}
!1151 = metadata !{i32 786443, metadata !10, metadata !1152, i32 254, i32 25, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!1152 = metadata !{i32 786443, metadata !10, metadata !953, i32 253, i32 55, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!1153 = metadata !{i32 255, i32 23, metadata !1154, null}
!1154 = metadata !{i32 786443, metadata !10, metadata !1151, i32 254, i32 34, i32 0, i32 59} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!1155 = metadata !{i32 786689, metadata !43, metadata !"DeviceObject", metadata !11, i32 16778165, metadata !14, i32 0, metadata !1156} ; [ DW_TAG_arg_variable ] [DeviceObject] [line 949]
!1156 = metadata !{i32 264, i32 32, metadata !1157, null}
!1157 = metadata !{i32 786443, metadata !10, metadata !1152, i32 261, i32 21, i32 0, i32 62} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!1158 = metadata !{i32 949, i32 23, metadata !43, metadata !1156}
!1159 = metadata !{i32 786689, metadata !43, metadata !"Irp", metadata !11, i32 33555381, metadata !14, i32 0, metadata !1156} ; [ DW_TAG_arg_variable ] [Irp] [line 949]
!1160 = metadata !{i32 949, i32 42, metadata !43, metadata !1156}
!1161 = metadata !{i32 953, i32 18, metadata !43, metadata !1156}
!1162 = metadata !{i32 786688, metadata !43, metadata !"lcontext", metadata !11, i32 953, metadata !14, i32 0, metadata !1156} ; [ DW_TAG_auto_variable ] [lcontext] [line 953]
!1163 = metadata !{i32 953, i32 7, metadata !43, metadata !1156}
!1164 = metadata !{i32 956, i32 7, metadata !404, metadata !1156}
!1165 = metadata !{i32 786689, metadata !18, metadata !"DeviceObject", metadata !11, i32 16777845, metadata !14, i32 0, metadata !1166} ; [ DW_TAG_arg_variable ] [DeviceObject] [line 629]
!1166 = metadata !{i32 958, i32 22, metadata !408, metadata !1156}
!1167 = metadata !{i32 629, i32 27, metadata !18, metadata !1166}
!1168 = metadata !{i32 786689, metadata !18, metadata !"Irp", metadata !11, i32 33555061, metadata !14, i32 0, metadata !1166} ; [ DW_TAG_arg_variable ] [Irp] [line 629]
!1169 = metadata !{i32 629, i32 46, metadata !18, metadata !1166}
!1170 = metadata !{i32 786689, metadata !18, metadata !"Context", metadata !11, i32 50332277, metadata !14, i32 0, metadata !1166} ; [ DW_TAG_arg_variable ] [Context] [line 629]
!1171 = metadata !{i32 629, i32 56, metadata !18, metadata !1166}
!1172 = metadata !{i32 786689, metadata !47, metadata !"Event", metadata !11, i32 16778250, metadata !14, i32 0, metadata !1173} ; [ DW_TAG_arg_variable ] [Event] [line 1034]
!1173 = metadata !{i32 634, i32 3, metadata !417, metadata !1166}
!1174 = metadata !{i32 1034, i32 20, metadata !47, metadata !1173}
!1175 = metadata !{i32 786689, metadata !47, metadata !"Increment", metadata !11, i32 33555466, metadata !14, i32 0, metadata !1173} ; [ DW_TAG_arg_variable ] [Increment] [line 1034]
!1176 = metadata !{i32 1034, i32 32, metadata !47, metadata !1173}
!1177 = metadata !{i32 786689, metadata !47, metadata !"Wait", metadata !11, i32 50332682, metadata !14, i32 0, metadata !1173} ; [ DW_TAG_arg_variable ] [Wait] [line 1034]
!1178 = metadata !{i32 1034, i32 48, metadata !47, metadata !1173}
!1179 = metadata !{i32 1035, i32 11, metadata !47, metadata !1173}
!1180 = metadata !{i32 786688, metadata !47, metadata !"l", metadata !11, i32 1035, metadata !14, i32 0, metadata !1173} ; [ DW_TAG_auto_variable ] [l] [line 1035]
!1181 = metadata !{i32 1035, i32 7, metadata !47, metadata !1173}
!1182 = metadata !{i32 1038, i32 3, metadata !429, metadata !1173}
!1183 = metadata !{i32 786688, metadata !43, metadata !"compRetStatus1", metadata !11, i32 952, metadata !14, i32 0, metadata !1156} ; [ DW_TAG_auto_variable ] [compRetStatus1] [line 952]
!1184 = metadata !{i32 952, i32 7, metadata !43, metadata !1156}
!1185 = metadata !{i32 786688, metadata !43, metadata !"__cil_tmp7", metadata !11, i32 954, metadata !435, i32 0, metadata !1156} ; [ DW_TAG_auto_variable ] [__cil_tmp7] [line 954]
!1186 = metadata !{i32 954, i32 17, metadata !43, metadata !1156}
!1187 = metadata !{i32 939, i32 7, metadata !438, metadata !1188}
!1188 = metadata !{i32 962, i32 7, metadata !441, metadata !1156}
!1189 = metadata !{i32 940, i32 5, metadata !446, metadata !1188}
!1190 = metadata !{i32 964, i32 5, metadata !442, metadata !1156}
!1191 = metadata !{i32 38, i32 10, metadata !89, metadata !1192}
!1192 = metadata !{i32 943, i32 5, metadata !450, metadata !1188}
!1193 = metadata !{i32 971, i32 16, metadata !405, metadata !1156}
!1194 = metadata !{i32 786688, metadata !405, metadata !"tmp_ndt_12", metadata !11, i32 970, metadata !14, i32 0, metadata !1156} ; [ DW_TAG_auto_variable ] [tmp_ndt_12] [line 970]
!1195 = metadata !{i32 970, i32 7, metadata !405, metadata !1156}
!1196 = metadata !{i32 972, i32 7, metadata !456, metadata !1156}
!1197 = metadata !{i32 974, i32 17, metadata !458, metadata !1156}
!1198 = metadata !{i32 786688, metadata !458, metadata !"tmp_ndt_7", metadata !11, i32 973, metadata !14, i32 0, metadata !1156} ; [ DW_TAG_auto_variable ] [tmp_ndt_7] [line 973]
!1199 = metadata !{i32 973, i32 9, metadata !458, metadata !1156}
!1200 = metadata !{i32 975, i32 9, metadata !462, metadata !1156}
!1201 = metadata !{i32 786688, metadata !43, metadata !"returnVal2", metadata !11, i32 951, metadata !14, i32 0, metadata !1156} ; [ DW_TAG_auto_variable ] [returnVal2] [line 951]
!1202 = metadata !{i32 951, i32 7, metadata !43, metadata !1156}
!1203 = metadata !{i32 994, i32 7, metadata !467, metadata !1156}
!1204 = metadata !{i32 995, i32 5, metadata !469, metadata !1156}
!1205 = metadata !{i32 996, i32 5, metadata !469, metadata !1156}
!1206 = metadata !{i32 997, i32 3, metadata !469, metadata !1156}
!1207 = metadata !{i32 998, i32 9, metadata !473, metadata !1156}
!1208 = metadata !{i32 999, i32 11, metadata !476, metadata !1156}
!1209 = metadata !{i32 1000, i32 9, metadata !479, metadata !1156}
!1210 = metadata !{i32 1001, i32 9, metadata !479, metadata !1156}
!1211 = metadata !{i32 1002, i32 7, metadata !479, metadata !1156}
!1212 = metadata !{i32 1003, i32 9, metadata !483, metadata !1156}
!1213 = metadata !{i32 1004, i32 9, metadata !483, metadata !1156}
!1214 = metadata !{i32 1007, i32 11, metadata !486, metadata !1156}
!1215 = metadata !{i32 1008, i32 9, metadata !489, metadata !1156}
!1216 = metadata !{i32 1009, i32 9, metadata !489, metadata !1156}
!1217 = metadata !{i32 38, i32 10, metadata !89, metadata !1218}
!1218 = metadata !{i32 1012, i32 9, metadata !775, metadata !1156}
!1219 = metadata !{i32 38, i32 10, metadata !89, metadata !1220}
!1220 = metadata !{i32 258, i32 23, metadata !1221, null}
!1221 = metadata !{i32 786443, metadata !10, metadata !1222, i32 257, i32 23, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!1222 = metadata !{i32 786443, metadata !10, metadata !1151, i32 256, i32 28, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!1223 = metadata !{i32 316, i32 23, metadata !1224, null}
!1224 = metadata !{i32 786443, metadata !10, metadata !298, i32 316, i32 23, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!1225 = metadata !{i32 333, i32 21, metadata !1226, null}
!1226 = metadata !{i32 786443, metadata !10, metadata !1224, i32 331, i32 26, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!1227 = metadata !{i32 337, i32 25, metadata !1228, null}
!1228 = metadata !{i32 786443, metadata !10, metadata !1226, i32 337, i32 25, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!1229 = metadata !{i32 786688, metadata !16, metadata !"irpSp___0", metadata !11, i32 189, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irpSp___0] [line 189]
!1230 = metadata !{i32 189, i32 7, metadata !16, null}
!1231 = metadata !{i32 786688, metadata !16, metadata !"nextIrpSp__Control", metadata !11, i32 191, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nextIrpSp__Control] [line 191]
!1232 = metadata !{i32 191, i32 7, metadata !16, null}
!1233 = metadata !{i32 38, i32 10, metadata !89, metadata !1234}
!1234 = metadata !{i32 339, i32 23, metadata !1235, null}
!1235 = metadata !{i32 786443, metadata !10, metadata !1236, i32 338, i32 23, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!1236 = metadata !{i32 786443, metadata !10, metadata !1228, i32 337, i32 34, i32 0, i32 88} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!1237 = metadata !{i32 342, i32 27, metadata !1238, null}
!1238 = metadata !{i32 786443, metadata !10, metadata !1239, i32 342, i32 27, i32 0, i32 91} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!1239 = metadata !{i32 786443, metadata !10, metadata !1228, i32 341, i32 28, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!1240 = metadata !{i32 38, i32 10, metadata !89, metadata !1241}
!1241 = metadata !{i32 344, i32 25, metadata !1242, null}
!1242 = metadata !{i32 786443, metadata !10, metadata !1243, i32 343, i32 25, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!1243 = metadata !{i32 786443, metadata !10, metadata !1238, i32 342, i32 48, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!1244 = metadata !{i32 347, i32 25, metadata !1245, null}
!1245 = metadata !{i32 786443, metadata !10, metadata !1238, i32 346, i32 30, i32 0, i32 94} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!1246 = metadata !{i32 786688, metadata !16, metadata !"irpSp__Context", metadata !11, i32 193, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irpSp__Context] [line 193]
!1247 = metadata !{i32 193, i32 7, metadata !16, null}
!1248 = metadata !{i32 786688, metadata !16, metadata !"irpSp__Control", metadata !11, i32 194, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irpSp__Control] [line 194]
!1249 = metadata !{i32 194, i32 7, metadata !16, null}
!1250 = metadata !{i32 786689, metadata !43, metadata !"DeviceObject", metadata !11, i32 16778165, metadata !14, i32 0, metadata !1251} ; [ DW_TAG_arg_variable ] [DeviceObject] [line 949]
!1251 = metadata !{i32 357, i32 32, metadata !1252, null}
!1252 = metadata !{i32 786443, metadata !10, metadata !1226, i32 350, i32 21, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!1253 = metadata !{i32 949, i32 23, metadata !43, metadata !1251}
!1254 = metadata !{i32 786689, metadata !43, metadata !"Irp", metadata !11, i32 33555381, metadata !14, i32 0, metadata !1251} ; [ DW_TAG_arg_variable ] [Irp] [line 949]
!1255 = metadata !{i32 949, i32 42, metadata !43, metadata !1251}
!1256 = metadata !{i32 953, i32 18, metadata !43, metadata !1251}
!1257 = metadata !{i32 786688, metadata !43, metadata !"lcontext", metadata !11, i32 953, metadata !14, i32 0, metadata !1251} ; [ DW_TAG_auto_variable ] [lcontext] [line 953]
!1258 = metadata !{i32 953, i32 7, metadata !43, metadata !1251}
!1259 = metadata !{i32 956, i32 7, metadata !404, metadata !1251}
!1260 = metadata !{i32 786689, metadata !18, metadata !"DeviceObject", metadata !11, i32 16777845, metadata !14, i32 0, metadata !1261} ; [ DW_TAG_arg_variable ] [DeviceObject] [line 629]
!1261 = metadata !{i32 958, i32 22, metadata !408, metadata !1251}
!1262 = metadata !{i32 629, i32 27, metadata !18, metadata !1261}
!1263 = metadata !{i32 786689, metadata !18, metadata !"Irp", metadata !11, i32 33555061, metadata !14, i32 0, metadata !1261} ; [ DW_TAG_arg_variable ] [Irp] [line 629]
!1264 = metadata !{i32 629, i32 46, metadata !18, metadata !1261}
!1265 = metadata !{i32 786689, metadata !18, metadata !"Context", metadata !11, i32 50332277, metadata !14, i32 0, metadata !1261} ; [ DW_TAG_arg_variable ] [Context] [line 629]
!1266 = metadata !{i32 629, i32 56, metadata !18, metadata !1261}
!1267 = metadata !{i32 786689, metadata !47, metadata !"Event", metadata !11, i32 16778250, metadata !14, i32 0, metadata !1268} ; [ DW_TAG_arg_variable ] [Event] [line 1034]
!1268 = metadata !{i32 634, i32 3, metadata !417, metadata !1261}
!1269 = metadata !{i32 1034, i32 20, metadata !47, metadata !1268}
!1270 = metadata !{i32 786689, metadata !47, metadata !"Increment", metadata !11, i32 33555466, metadata !14, i32 0, metadata !1268} ; [ DW_TAG_arg_variable ] [Increment] [line 1034]
!1271 = metadata !{i32 1034, i32 32, metadata !47, metadata !1268}
!1272 = metadata !{i32 786689, metadata !47, metadata !"Wait", metadata !11, i32 50332682, metadata !14, i32 0, metadata !1268} ; [ DW_TAG_arg_variable ] [Wait] [line 1034]
!1273 = metadata !{i32 1034, i32 48, metadata !47, metadata !1268}
!1274 = metadata !{i32 1035, i32 11, metadata !47, metadata !1268}
!1275 = metadata !{i32 786688, metadata !47, metadata !"l", metadata !11, i32 1035, metadata !14, i32 0, metadata !1268} ; [ DW_TAG_auto_variable ] [l] [line 1035]
!1276 = metadata !{i32 1035, i32 7, metadata !47, metadata !1268}
!1277 = metadata !{i32 1038, i32 3, metadata !429, metadata !1268}
!1278 = metadata !{i32 786688, metadata !43, metadata !"compRetStatus1", metadata !11, i32 952, metadata !14, i32 0, metadata !1251} ; [ DW_TAG_auto_variable ] [compRetStatus1] [line 952]
!1279 = metadata !{i32 952, i32 7, metadata !43, metadata !1251}
!1280 = metadata !{i32 786688, metadata !43, metadata !"__cil_tmp7", metadata !11, i32 954, metadata !435, i32 0, metadata !1251} ; [ DW_TAG_auto_variable ] [__cil_tmp7] [line 954]
!1281 = metadata !{i32 954, i32 17, metadata !43, metadata !1251}
!1282 = metadata !{i32 939, i32 7, metadata !438, metadata !1283}
!1283 = metadata !{i32 962, i32 7, metadata !441, metadata !1251}
!1284 = metadata !{i32 940, i32 5, metadata !446, metadata !1283}
!1285 = metadata !{i32 964, i32 5, metadata !442, metadata !1251}
!1286 = metadata !{i32 38, i32 10, metadata !89, metadata !1287}
!1287 = metadata !{i32 943, i32 5, metadata !450, metadata !1283}
!1288 = metadata !{i32 971, i32 16, metadata !405, metadata !1251}
!1289 = metadata !{i32 786688, metadata !405, metadata !"tmp_ndt_12", metadata !11, i32 970, metadata !14, i32 0, metadata !1251} ; [ DW_TAG_auto_variable ] [tmp_ndt_12] [line 970]
!1290 = metadata !{i32 970, i32 7, metadata !405, metadata !1251}
!1291 = metadata !{i32 972, i32 7, metadata !456, metadata !1251}
!1292 = metadata !{i32 974, i32 17, metadata !458, metadata !1251}
!1293 = metadata !{i32 786688, metadata !458, metadata !"tmp_ndt_7", metadata !11, i32 973, metadata !14, i32 0, metadata !1251} ; [ DW_TAG_auto_variable ] [tmp_ndt_7] [line 973]
!1294 = metadata !{i32 973, i32 9, metadata !458, metadata !1251}
!1295 = metadata !{i32 975, i32 9, metadata !462, metadata !1251}
!1296 = metadata !{i32 786688, metadata !43, metadata !"returnVal2", metadata !11, i32 951, metadata !14, i32 0, metadata !1251} ; [ DW_TAG_auto_variable ] [returnVal2] [line 951]
!1297 = metadata !{i32 951, i32 7, metadata !43, metadata !1251}
!1298 = metadata !{i32 994, i32 7, metadata !467, metadata !1251}
!1299 = metadata !{i32 995, i32 5, metadata !469, metadata !1251}
!1300 = metadata !{i32 996, i32 5, metadata !469, metadata !1251}
!1301 = metadata !{i32 997, i32 3, metadata !469, metadata !1251}
!1302 = metadata !{i32 998, i32 9, metadata !473, metadata !1251}
!1303 = metadata !{i32 999, i32 11, metadata !476, metadata !1251}
!1304 = metadata !{i32 1000, i32 9, metadata !479, metadata !1251}
!1305 = metadata !{i32 1001, i32 9, metadata !479, metadata !1251}
!1306 = metadata !{i32 1002, i32 7, metadata !479, metadata !1251}
!1307 = metadata !{i32 1003, i32 9, metadata !483, metadata !1251}
!1308 = metadata !{i32 1004, i32 9, metadata !483, metadata !1251}
!1309 = metadata !{i32 1007, i32 11, metadata !486, metadata !1251}
!1310 = metadata !{i32 1008, i32 9, metadata !489, metadata !1251}
!1311 = metadata !{i32 1009, i32 9, metadata !489, metadata !1251}
!1312 = metadata !{i32 359, i32 21, metadata !1313, null}
!1313 = metadata !{i32 786443, metadata !10, metadata !1226, i32 359, i32 21, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!1314 = metadata !{i32 786688, metadata !16, metadata !"__cil_tmp30", metadata !11, i32 196, metadata !496, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__cil_tmp30] [line 196]
!1315 = metadata !{i32 196, i32 8, metadata !16, null}
!1316 = metadata !{i32 359, i32 25, metadata !1317, null}
!1317 = metadata !{i32 786443, metadata !10, metadata !1313, i32 359, i32 25, i32 0, i32 97} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!1318 = metadata !{i32 786689, metadata !48, metadata !"Object", metadata !11, i32 16778258, metadata !14, i32 0, metadata !1319} ; [ DW_TAG_arg_variable ] [Object] [line 1042]
!1319 = metadata !{i32 361, i32 23, metadata !1320, null}
!1320 = metadata !{i32 786443, metadata !10, metadata !1321, i32 360, i32 23, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!1321 = metadata !{i32 786443, metadata !10, metadata !1317, i32 359, i32 46, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!1322 = metadata !{i32 1042, i32 31, metadata !48, metadata !1319}
!1323 = metadata !{i32 786689, metadata !48, metadata !"Alertable", metadata !11, i32 67109906, metadata !14, i32 0, metadata !1319} ; [ DW_TAG_arg_variable ] [Alertable] [line 1042]
!1324 = metadata !{i32 1042, i32 76, metadata !48, metadata !1319}
!1325 = metadata !{i32 786689, metadata !48, metadata !"Timeout", metadata !11, i32 83887123, metadata !14, i32 0, metadata !1319} ; [ DW_TAG_arg_variable ] [Timeout] [line 1043]
!1326 = metadata !{i32 1043, i32 31, metadata !48, metadata !1319}
!1327 = metadata !{i32 1047, i32 7, metadata !510, metadata !1319}
!1328 = metadata !{i32 1048, i32 9, metadata !513, metadata !1319}
!1329 = metadata !{i32 1049, i32 7, metadata !516, metadata !1319}
!1330 = metadata !{i32 1050, i32 7, metadata !516, metadata !1319}
!1331 = metadata !{i32 1054, i32 3, metadata !514, metadata !1319}
!1332 = metadata !{i32 1056, i32 9, metadata !520, metadata !1319}
!1333 = metadata !{i32 1057, i32 7, metadata !523, metadata !1319}
!1334 = metadata !{i32 1058, i32 7, metadata !523, metadata !1319}
!1335 = metadata !{i32 1059, i32 5, metadata !523, metadata !1319}
!1336 = metadata !{i32 1060, i32 11, metadata !527, metadata !1319}
!1337 = metadata !{i32 38, i32 10, metadata !89, metadata !1338}
!1338 = metadata !{i32 1062, i32 9, metadata !531, metadata !1319}
!1339 = metadata !{i32 1070, i32 15, metadata !511, metadata !1319}
!1340 = metadata !{i32 786688, metadata !511, metadata !"tmp_ndt_8", metadata !11, i32 1069, metadata !14, i32 0, metadata !1319} ; [ DW_TAG_auto_variable ] [tmp_ndt_8] [line 1069]
!1341 = metadata !{i32 1069, i32 7, metadata !511, metadata !1319}
!1342 = metadata !{i32 362, i32 23, metadata !1320, null}
!1343 = metadata !{i32 364, i32 21, metadata !1321, null}
!1344 = metadata !{i32 370, i32 21, metadata !1345, null}
!1345 = metadata !{i32 786443, metadata !10, metadata !1226, i32 366, i32 21, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!1346 = metadata !{i32 786689, metadata !44, metadata !"Irp", metadata !11, i32 16778236, metadata !14, i32 0, metadata !1347} ; [ DW_TAG_arg_variable ] [Irp] [line 1020]
!1347 = metadata !{i32 372, i32 21, metadata !1345, null}
!1348 = metadata !{i32 1020, i32 29, metadata !44, metadata !1347}
!1349 = metadata !{i32 786689, metadata !44, metadata !"PriorityBoost", metadata !11, i32 33555452, metadata !14, i32 0, metadata !1347} ; [ DW_TAG_arg_variable ] [PriorityBoost] [line 1020]
!1350 = metadata !{i32 1020, i32 39, metadata !44, metadata !1347}
!1351 = metadata !{i32 1024, i32 7, metadata !286, metadata !1347}
!1352 = metadata !{i32 1025, i32 5, metadata !289, metadata !1347}
!1353 = metadata !{i32 38, i32 10, metadata !89, metadata !1354}
!1354 = metadata !{i32 1028, i32 5, metadata !293, metadata !1347}
!1355 = metadata !{i32 38, i32 10, metadata !89, metadata !1356}
!1356 = metadata !{i32 1012, i32 9, metadata !775, metadata !1251}
!1357 = metadata !{i32 319, i32 25, metadata !1358, null}
!1358 = metadata !{i32 786443, metadata !10, metadata !1359, i32 319, i32 25, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!1359 = metadata !{i32 786443, metadata !10, metadata !1224, i32 316, i32 55, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!1360 = metadata !{i32 320, i32 23, metadata !1361, null}
!1361 = metadata !{i32 786443, metadata !10, metadata !1358, i32 319, i32 34, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!1362 = metadata !{i32 786689, metadata !43, metadata !"DeviceObject", metadata !11, i32 16778165, metadata !14, i32 0, metadata !1363} ; [ DW_TAG_arg_variable ] [DeviceObject] [line 949]
!1363 = metadata !{i32 329, i32 32, metadata !1364, null}
!1364 = metadata !{i32 786443, metadata !10, metadata !1359, i32 326, i32 21, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!1365 = metadata !{i32 949, i32 23, metadata !43, metadata !1363}
!1366 = metadata !{i32 786689, metadata !43, metadata !"Irp", metadata !11, i32 33555381, metadata !14, i32 0, metadata !1363} ; [ DW_TAG_arg_variable ] [Irp] [line 949]
!1367 = metadata !{i32 949, i32 42, metadata !43, metadata !1363}
!1368 = metadata !{i32 953, i32 18, metadata !43, metadata !1363}
!1369 = metadata !{i32 786688, metadata !43, metadata !"lcontext", metadata !11, i32 953, metadata !14, i32 0, metadata !1363} ; [ DW_TAG_auto_variable ] [lcontext] [line 953]
!1370 = metadata !{i32 953, i32 7, metadata !43, metadata !1363}
!1371 = metadata !{i32 956, i32 7, metadata !404, metadata !1363}
!1372 = metadata !{i32 786689, metadata !18, metadata !"DeviceObject", metadata !11, i32 16777845, metadata !14, i32 0, metadata !1373} ; [ DW_TAG_arg_variable ] [DeviceObject] [line 629]
!1373 = metadata !{i32 958, i32 22, metadata !408, metadata !1363}
!1374 = metadata !{i32 629, i32 27, metadata !18, metadata !1373}
!1375 = metadata !{i32 786689, metadata !18, metadata !"Irp", metadata !11, i32 33555061, metadata !14, i32 0, metadata !1373} ; [ DW_TAG_arg_variable ] [Irp] [line 629]
!1376 = metadata !{i32 629, i32 46, metadata !18, metadata !1373}
!1377 = metadata !{i32 786689, metadata !18, metadata !"Context", metadata !11, i32 50332277, metadata !14, i32 0, metadata !1373} ; [ DW_TAG_arg_variable ] [Context] [line 629]
!1378 = metadata !{i32 629, i32 56, metadata !18, metadata !1373}
!1379 = metadata !{i32 786689, metadata !47, metadata !"Event", metadata !11, i32 16778250, metadata !14, i32 0, metadata !1380} ; [ DW_TAG_arg_variable ] [Event] [line 1034]
!1380 = metadata !{i32 634, i32 3, metadata !417, metadata !1373}
!1381 = metadata !{i32 1034, i32 20, metadata !47, metadata !1380}
!1382 = metadata !{i32 786689, metadata !47, metadata !"Increment", metadata !11, i32 33555466, metadata !14, i32 0, metadata !1380} ; [ DW_TAG_arg_variable ] [Increment] [line 1034]
!1383 = metadata !{i32 1034, i32 32, metadata !47, metadata !1380}
!1384 = metadata !{i32 786689, metadata !47, metadata !"Wait", metadata !11, i32 50332682, metadata !14, i32 0, metadata !1380} ; [ DW_TAG_arg_variable ] [Wait] [line 1034]
!1385 = metadata !{i32 1034, i32 48, metadata !47, metadata !1380}
!1386 = metadata !{i32 1035, i32 11, metadata !47, metadata !1380}
!1387 = metadata !{i32 786688, metadata !47, metadata !"l", metadata !11, i32 1035, metadata !14, i32 0, metadata !1380} ; [ DW_TAG_auto_variable ] [l] [line 1035]
!1388 = metadata !{i32 1035, i32 7, metadata !47, metadata !1380}
!1389 = metadata !{i32 1038, i32 3, metadata !429, metadata !1380}
!1390 = metadata !{i32 786688, metadata !43, metadata !"compRetStatus1", metadata !11, i32 952, metadata !14, i32 0, metadata !1363} ; [ DW_TAG_auto_variable ] [compRetStatus1] [line 952]
!1391 = metadata !{i32 952, i32 7, metadata !43, metadata !1363}
!1392 = metadata !{i32 786688, metadata !43, metadata !"__cil_tmp7", metadata !11, i32 954, metadata !435, i32 0, metadata !1363} ; [ DW_TAG_auto_variable ] [__cil_tmp7] [line 954]
!1393 = metadata !{i32 954, i32 17, metadata !43, metadata !1363}
!1394 = metadata !{i32 939, i32 7, metadata !438, metadata !1395}
!1395 = metadata !{i32 962, i32 7, metadata !441, metadata !1363}
!1396 = metadata !{i32 940, i32 5, metadata !446, metadata !1395}
!1397 = metadata !{i32 964, i32 5, metadata !442, metadata !1363}
!1398 = metadata !{i32 38, i32 10, metadata !89, metadata !1399}
!1399 = metadata !{i32 943, i32 5, metadata !450, metadata !1395}
!1400 = metadata !{i32 971, i32 16, metadata !405, metadata !1363}
!1401 = metadata !{i32 786688, metadata !405, metadata !"tmp_ndt_12", metadata !11, i32 970, metadata !14, i32 0, metadata !1363} ; [ DW_TAG_auto_variable ] [tmp_ndt_12] [line 970]
!1402 = metadata !{i32 970, i32 7, metadata !405, metadata !1363}
!1403 = metadata !{i32 972, i32 7, metadata !456, metadata !1363}
!1404 = metadata !{i32 974, i32 17, metadata !458, metadata !1363}
!1405 = metadata !{i32 786688, metadata !458, metadata !"tmp_ndt_7", metadata !11, i32 973, metadata !14, i32 0, metadata !1363} ; [ DW_TAG_auto_variable ] [tmp_ndt_7] [line 973]
!1406 = metadata !{i32 973, i32 9, metadata !458, metadata !1363}
!1407 = metadata !{i32 975, i32 9, metadata !462, metadata !1363}
!1408 = metadata !{i32 786688, metadata !43, metadata !"returnVal2", metadata !11, i32 951, metadata !14, i32 0, metadata !1363} ; [ DW_TAG_auto_variable ] [returnVal2] [line 951]
!1409 = metadata !{i32 951, i32 7, metadata !43, metadata !1363}
!1410 = metadata !{i32 994, i32 7, metadata !467, metadata !1363}
!1411 = metadata !{i32 995, i32 5, metadata !469, metadata !1363}
!1412 = metadata !{i32 996, i32 5, metadata !469, metadata !1363}
!1413 = metadata !{i32 997, i32 3, metadata !469, metadata !1363}
!1414 = metadata !{i32 998, i32 9, metadata !473, metadata !1363}
!1415 = metadata !{i32 999, i32 11, metadata !476, metadata !1363}
!1416 = metadata !{i32 1000, i32 9, metadata !479, metadata !1363}
!1417 = metadata !{i32 1001, i32 9, metadata !479, metadata !1363}
!1418 = metadata !{i32 1002, i32 7, metadata !479, metadata !1363}
!1419 = metadata !{i32 1003, i32 9, metadata !483, metadata !1363}
!1420 = metadata !{i32 1004, i32 9, metadata !483, metadata !1363}
!1421 = metadata !{i32 1007, i32 11, metadata !486, metadata !1363}
!1422 = metadata !{i32 1008, i32 9, metadata !489, metadata !1363}
!1423 = metadata !{i32 1009, i32 9, metadata !489, metadata !1363}
!1424 = metadata !{i32 38, i32 10, metadata !89, metadata !1425}
!1425 = metadata !{i32 1012, i32 9, metadata !775, metadata !1363}
!1426 = metadata !{i32 38, i32 10, metadata !89, metadata !1427}
!1427 = metadata !{i32 323, i32 23, metadata !1428, null}
!1428 = metadata !{i32 786443, metadata !10, metadata !1429, i32 322, i32 23, i32 0, i32 84} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!1429 = metadata !{i32 786443, metadata !10, metadata !1358, i32 321, i32 28, i32 0, i32 83} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!1430 = metadata !{i32 429, i32 23, metadata !1431, null}
!1431 = metadata !{i32 786443, metadata !10, metadata !298, i32 429, i32 23, i32 0, i32 117} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!1432 = metadata !{i32 430, i32 21, metadata !1433, null}
!1433 = metadata !{i32 786443, metadata !10, metadata !1431, i32 429, i32 32, i32 0, i32 118} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!1434 = metadata !{i32 786689, metadata !43, metadata !"DeviceObject", metadata !11, i32 16778165, metadata !14, i32 0, metadata !1435} ; [ DW_TAG_arg_variable ] [DeviceObject] [line 949]
!1435 = metadata !{i32 439, i32 30, metadata !1436, null}
!1436 = metadata !{i32 786443, metadata !10, metadata !298, i32 436, i32 19, i32 0, i32 121} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!1437 = metadata !{i32 949, i32 23, metadata !43, metadata !1435}
!1438 = metadata !{i32 786689, metadata !43, metadata !"Irp", metadata !11, i32 33555381, metadata !14, i32 0, metadata !1435} ; [ DW_TAG_arg_variable ] [Irp] [line 949]
!1439 = metadata !{i32 949, i32 42, metadata !43, metadata !1435}
!1440 = metadata !{i32 953, i32 18, metadata !43, metadata !1435}
!1441 = metadata !{i32 786688, metadata !43, metadata !"lcontext", metadata !11, i32 953, metadata !14, i32 0, metadata !1435} ; [ DW_TAG_auto_variable ] [lcontext] [line 953]
!1442 = metadata !{i32 953, i32 7, metadata !43, metadata !1435}
!1443 = metadata !{i32 956, i32 7, metadata !404, metadata !1435}
!1444 = metadata !{i32 786689, metadata !18, metadata !"DeviceObject", metadata !11, i32 16777845, metadata !14, i32 0, metadata !1445} ; [ DW_TAG_arg_variable ] [DeviceObject] [line 629]
!1445 = metadata !{i32 958, i32 22, metadata !408, metadata !1435}
!1446 = metadata !{i32 629, i32 27, metadata !18, metadata !1445}
!1447 = metadata !{i32 786689, metadata !18, metadata !"Irp", metadata !11, i32 33555061, metadata !14, i32 0, metadata !1445} ; [ DW_TAG_arg_variable ] [Irp] [line 629]
!1448 = metadata !{i32 629, i32 46, metadata !18, metadata !1445}
!1449 = metadata !{i32 786689, metadata !18, metadata !"Context", metadata !11, i32 50332277, metadata !14, i32 0, metadata !1445} ; [ DW_TAG_arg_variable ] [Context] [line 629]
!1450 = metadata !{i32 629, i32 56, metadata !18, metadata !1445}
!1451 = metadata !{i32 786689, metadata !47, metadata !"Event", metadata !11, i32 16778250, metadata !14, i32 0, metadata !1452} ; [ DW_TAG_arg_variable ] [Event] [line 1034]
!1452 = metadata !{i32 634, i32 3, metadata !417, metadata !1445}
!1453 = metadata !{i32 1034, i32 20, metadata !47, metadata !1452}
!1454 = metadata !{i32 786689, metadata !47, metadata !"Increment", metadata !11, i32 33555466, metadata !14, i32 0, metadata !1452} ; [ DW_TAG_arg_variable ] [Increment] [line 1034]
!1455 = metadata !{i32 1034, i32 32, metadata !47, metadata !1452}
!1456 = metadata !{i32 786689, metadata !47, metadata !"Wait", metadata !11, i32 50332682, metadata !14, i32 0, metadata !1452} ; [ DW_TAG_arg_variable ] [Wait] [line 1034]
!1457 = metadata !{i32 1034, i32 48, metadata !47, metadata !1452}
!1458 = metadata !{i32 1035, i32 11, metadata !47, metadata !1452}
!1459 = metadata !{i32 786688, metadata !47, metadata !"l", metadata !11, i32 1035, metadata !14, i32 0, metadata !1452} ; [ DW_TAG_auto_variable ] [l] [line 1035]
!1460 = metadata !{i32 1035, i32 7, metadata !47, metadata !1452}
!1461 = metadata !{i32 1038, i32 3, metadata !429, metadata !1452}
!1462 = metadata !{i32 786688, metadata !43, metadata !"compRetStatus1", metadata !11, i32 952, metadata !14, i32 0, metadata !1435} ; [ DW_TAG_auto_variable ] [compRetStatus1] [line 952]
!1463 = metadata !{i32 952, i32 7, metadata !43, metadata !1435}
!1464 = metadata !{i32 786688, metadata !43, metadata !"__cil_tmp7", metadata !11, i32 954, metadata !435, i32 0, metadata !1435} ; [ DW_TAG_auto_variable ] [__cil_tmp7] [line 954]
!1465 = metadata !{i32 954, i32 17, metadata !43, metadata !1435}
!1466 = metadata !{i32 939, i32 7, metadata !438, metadata !1467}
!1467 = metadata !{i32 962, i32 7, metadata !441, metadata !1435}
!1468 = metadata !{i32 940, i32 5, metadata !446, metadata !1467}
!1469 = metadata !{i32 964, i32 5, metadata !442, metadata !1435}
!1470 = metadata !{i32 38, i32 10, metadata !89, metadata !1471}
!1471 = metadata !{i32 943, i32 5, metadata !450, metadata !1467}
!1472 = metadata !{i32 971, i32 16, metadata !405, metadata !1435}
!1473 = metadata !{i32 786688, metadata !405, metadata !"tmp_ndt_12", metadata !11, i32 970, metadata !14, i32 0, metadata !1435} ; [ DW_TAG_auto_variable ] [tmp_ndt_12] [line 970]
!1474 = metadata !{i32 970, i32 7, metadata !405, metadata !1435}
!1475 = metadata !{i32 972, i32 7, metadata !456, metadata !1435}
!1476 = metadata !{i32 974, i32 17, metadata !458, metadata !1435}
!1477 = metadata !{i32 786688, metadata !458, metadata !"tmp_ndt_7", metadata !11, i32 973, metadata !14, i32 0, metadata !1435} ; [ DW_TAG_auto_variable ] [tmp_ndt_7] [line 973]
!1478 = metadata !{i32 973, i32 9, metadata !458, metadata !1435}
!1479 = metadata !{i32 975, i32 9, metadata !462, metadata !1435}
!1480 = metadata !{i32 786688, metadata !43, metadata !"returnVal2", metadata !11, i32 951, metadata !14, i32 0, metadata !1435} ; [ DW_TAG_auto_variable ] [returnVal2] [line 951]
!1481 = metadata !{i32 951, i32 7, metadata !43, metadata !1435}
!1482 = metadata !{i32 994, i32 7, metadata !467, metadata !1435}
!1483 = metadata !{i32 995, i32 5, metadata !469, metadata !1435}
!1484 = metadata !{i32 996, i32 5, metadata !469, metadata !1435}
!1485 = metadata !{i32 997, i32 3, metadata !469, metadata !1435}
!1486 = metadata !{i32 998, i32 9, metadata !473, metadata !1435}
!1487 = metadata !{i32 999, i32 11, metadata !476, metadata !1435}
!1488 = metadata !{i32 1000, i32 9, metadata !479, metadata !1435}
!1489 = metadata !{i32 1001, i32 9, metadata !479, metadata !1435}
!1490 = metadata !{i32 1002, i32 7, metadata !479, metadata !1435}
!1491 = metadata !{i32 1003, i32 9, metadata !483, metadata !1435}
!1492 = metadata !{i32 1004, i32 9, metadata !483, metadata !1435}
!1493 = metadata !{i32 1007, i32 11, metadata !486, metadata !1435}
!1494 = metadata !{i32 1008, i32 9, metadata !489, metadata !1435}
!1495 = metadata !{i32 1009, i32 9, metadata !489, metadata !1435}
!1496 = metadata !{i32 452, i32 3, metadata !265, null}
!1497 = metadata !{i32 458, i32 3, metadata !265, null}
!1498 = metadata !{i32 460, i32 1, metadata !16, null}
!1499 = metadata !{i32 38, i32 10, metadata !89, metadata !1500}
!1500 = metadata !{i32 1012, i32 9, metadata !775, metadata !1435}
!1501 = metadata !{i32 38, i32 10, metadata !89, metadata !1502}
!1502 = metadata !{i32 433, i32 21, metadata !1503, null}
!1503 = metadata !{i32 786443, metadata !10, metadata !1504, i32 432, i32 21, i32 0, i32 120} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!1504 = metadata !{i32 786443, metadata !10, metadata !1431, i32 431, i32 26, i32 0, i32 119} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!1505 = metadata !{i32 786689, metadata !44, metadata !"Irp", metadata !11, i32 16778236, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Irp] [line 1020]
!1506 = metadata !{i32 1020, i32 29, metadata !44, null}
!1507 = metadata !{i32 786689, metadata !44, metadata !"PriorityBoost", metadata !11, i32 33555452, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [PriorityBoost] [line 1020]
!1508 = metadata !{i32 1020, i32 39, metadata !44, null}
!1509 = metadata !{i32 1024, i32 7, metadata !286, null}
!1510 = metadata !{i32 1025, i32 5, metadata !289, null}
!1511 = metadata !{i32 1033, i32 1, metadata !44, null}
!1512 = metadata !{i32 38, i32 10, metadata !89, metadata !1513}
!1513 = metadata !{i32 1028, i32 5, metadata !293, null}
!1514 = metadata !{i32 786689, metadata !17, metadata !"DeviceObject", metadata !11, i32 16777677, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [DeviceObject] [line 461]
!1515 = metadata !{i32 461, i32 27, metadata !17, null}
!1516 = metadata !{i32 786689, metadata !17, metadata !"Irp", metadata !11, i32 33554893, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Irp] [line 461]
!1517 = metadata !{i32 461, i32 46, metadata !17, null}
!1518 = metadata !{i32 462, i32 39, metadata !17, null}
!1519 = metadata !{i32 786688, metadata !17, metadata !"DeviceObject__DeviceExtension", metadata !11, i32 462, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [DeviceObject__DeviceExtension] [line 462]
!1520 = metadata !{i32 462, i32 7, metadata !17, null}
!1521 = metadata !{i32 463, i32 50, metadata !17, null}
!1522 = metadata !{i32 786688, metadata !17, metadata !"Irp__Tail__Overlay__CurrentStackLocation", metadata !11, i32 463, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Irp__Tail__Overlay__CurrentStackLocation] [line 463]
!1523 = metadata !{i32 463, i32 7, metadata !17, null}
!1524 = metadata !{i32 465, i32 41, metadata !17, null}
!1525 = metadata !{i32 786688, metadata !17, metadata !"disketteExtension__TargetObject", metadata !11, i32 465, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [disketteExtension__TargetObject] [line 465]
!1526 = metadata !{i32 465, i32 7, metadata !17, null}
!1527 = metadata !{i32 467, i32 38, metadata !17, null}
!1528 = metadata !{i32 786688, metadata !17, metadata !"disketteExtension__DriveType", metadata !11, i32 467, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [disketteExtension__DriveType] [line 467]
!1529 = metadata !{i32 467, i32 7, metadata !17, null}
!1530 = metadata !{i32 471, i32 42, metadata !17, null}
!1531 = metadata !{i32 786688, metadata !17, metadata !"disketteExtension__UnderlyingPDO", metadata !11, i32 471, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [disketteExtension__UnderlyingPDO] [line 471]
!1532 = metadata !{i32 471, i32 7, metadata !17, null}
!1533 = metadata !{i32 472, i32 44, metadata !17, null}
!1534 = metadata !{i32 786688, metadata !17, metadata !"disketteExtension__InterfaceString", metadata !11, i32 472, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [disketteExtension__InterfaceString] [line 472]
!1535 = metadata !{i32 472, i32 7, metadata !17, null}
!1536 = metadata !{i32 477, i32 19, metadata !17, null}
!1537 = metadata !{i32 786688, metadata !17, metadata !"doneEvent", metadata !11, i32 477, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [doneEvent] [line 477]
!1538 = metadata !{i32 477, i32 7, metadata !17, null}
!1539 = metadata !{i32 478, i32 17, metadata !17, null}
!1540 = metadata !{i32 786688, metadata !17, metadata !"fdcInfo", metadata !11, i32 478, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fdcInfo] [line 478]
!1541 = metadata !{i32 478, i32 7, metadata !17, null}
!1542 = metadata !{i32 481, i32 34, metadata !17, null}
!1543 = metadata !{i32 786688, metadata !17, metadata !"fdcInfo__MaxTransferSize", metadata !11, i32 481, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fdcInfo__MaxTransferSize] [line 481]
!1544 = metadata !{i32 481, i32 7, metadata !17, null}
!1545 = metadata !{i32 482, i32 27, metadata !17, null}
!1546 = metadata !{i32 786688, metadata !17, metadata !"fdcInfo__AcpiBios", metadata !11, i32 482, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fdcInfo__AcpiBios] [line 482]
!1547 = metadata !{i32 482, i32 7, metadata !17, null}
!1548 = metadata !{i32 483, i32 35, metadata !17, null}
!1549 = metadata !{i32 786688, metadata !17, metadata !"fdcInfo__AcpiFdiSupported", metadata !11, i32 483, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fdcInfo__AcpiFdiSupported] [line 483]
!1550 = metadata !{i32 483, i32 7, metadata !17, null}
!1551 = metadata !{i32 484, i32 35, metadata !17, null}
!1552 = metadata !{i32 786688, metadata !17, metadata !"fdcInfo__PeripheralNumber", metadata !11, i32 484, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fdcInfo__PeripheralNumber] [line 484]
!1553 = metadata !{i32 484, i32 7, metadata !17, null}
!1554 = metadata !{i32 486, i32 35, metadata !17, null}
!1555 = metadata !{i32 786688, metadata !17, metadata !"fdcInfo__ControllerNumber", metadata !11, i32 486, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fdcInfo__ControllerNumber] [line 486]
!1556 = metadata !{i32 486, i32 7, metadata !17, null}
!1557 = metadata !{i32 487, i32 29, metadata !17, null}
!1558 = metadata !{i32 786688, metadata !17, metadata !"fdcInfo__UnitNumber", metadata !11, i32 487, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fdcInfo__UnitNumber] [line 487]
!1559 = metadata !{i32 487, i32 7, metadata !17, null}
!1560 = metadata !{i32 488, i32 28, metadata !17, null}
!1561 = metadata !{i32 786688, metadata !17, metadata !"fdcInfo__BusNumber", metadata !11, i32 488, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fdcInfo__BusNumber] [line 488]
!1562 = metadata !{i32 488, i32 7, metadata !17, null}
!1563 = metadata !{i32 500, i32 61, metadata !17, null}
!1564 = metadata !{i32 786688, metadata !17, metadata !"KUSER_SHARED_DATA__AlternativeArchitecture_NEC98x86", metadata !11, i32 500, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [KUSER_SHARED_DATA__AlternativeArchitecture_NEC98x86] [line 500]
!1565 = metadata !{i32 500, i32 7, metadata !17, null}
!1566 = metadata !{i32 786688, metadata !17, metadata !"disketteExtension", metadata !11, i32 491, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [disketteExtension] [line 491]
!1567 = metadata !{i32 491, i32 7, metadata !17, null}
!1568 = metadata !{i32 786688, metadata !17, metadata !"irpSp", metadata !11, i32 492, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irpSp] [line 492]
!1569 = metadata !{i32 492, i32 7, metadata !17, null}
!1570 = metadata !{i32 786688, metadata !17, metadata !"irpSp___0", metadata !11, i32 493, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irpSp___0] [line 493]
!1571 = metadata !{i32 493, i32 7, metadata !17, null}
!1572 = metadata !{i32 786688, metadata !17, metadata !"nextIrpSp__Control", metadata !11, i32 495, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [nextIrpSp__Control] [line 495]
!1573 = metadata !{i32 495, i32 7, metadata !17, null}
!1574 = metadata !{i32 510, i32 7, metadata !374, null}
!1575 = metadata !{i32 38, i32 10, metadata !89, metadata !1576}
!1576 = metadata !{i32 512, i32 5, metadata !378, null}
!1577 = metadata !{i32 515, i32 9, metadata !381, null}
!1578 = metadata !{i32 38, i32 10, metadata !89, metadata !1579}
!1579 = metadata !{i32 517, i32 7, metadata !385, null}
!1580 = metadata !{i32 520, i32 7, metadata !388, null}
!1581 = metadata !{i32 786688, metadata !17, metadata !"irpSp__Context", metadata !11, i32 498, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irpSp__Context] [line 498]
!1582 = metadata !{i32 498, i32 7, metadata !17, null}
!1583 = metadata !{i32 786688, metadata !17, metadata !"irpSp__Control", metadata !11, i32 497, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irpSp__Control] [line 497]
!1584 = metadata !{i32 497, i32 7, metadata !17, null}
!1585 = metadata !{i32 786689, metadata !43, metadata !"DeviceObject", metadata !11, i32 16778165, metadata !14, i32 0, metadata !1586} ; [ DW_TAG_arg_variable ] [DeviceObject] [line 949]
!1586 = metadata !{i32 530, i32 14, metadata !396, null}
!1587 = metadata !{i32 949, i32 23, metadata !43, metadata !1586}
!1588 = metadata !{i32 786689, metadata !43, metadata !"Irp", metadata !11, i32 33555381, metadata !14, i32 0, metadata !1586} ; [ DW_TAG_arg_variable ] [Irp] [line 949]
!1589 = metadata !{i32 949, i32 42, metadata !43, metadata !1586}
!1590 = metadata !{i32 953, i32 18, metadata !43, metadata !1586}
!1591 = metadata !{i32 786688, metadata !43, metadata !"lcontext", metadata !11, i32 953, metadata !14, i32 0, metadata !1586} ; [ DW_TAG_auto_variable ] [lcontext] [line 953]
!1592 = metadata !{i32 953, i32 7, metadata !43, metadata !1586}
!1593 = metadata !{i32 956, i32 7, metadata !404, metadata !1586}
!1594 = metadata !{i32 786689, metadata !18, metadata !"DeviceObject", metadata !11, i32 16777845, metadata !14, i32 0, metadata !1595} ; [ DW_TAG_arg_variable ] [DeviceObject] [line 629]
!1595 = metadata !{i32 958, i32 22, metadata !408, metadata !1586}
!1596 = metadata !{i32 629, i32 27, metadata !18, metadata !1595}
!1597 = metadata !{i32 786689, metadata !18, metadata !"Irp", metadata !11, i32 33555061, metadata !14, i32 0, metadata !1595} ; [ DW_TAG_arg_variable ] [Irp] [line 629]
!1598 = metadata !{i32 629, i32 46, metadata !18, metadata !1595}
!1599 = metadata !{i32 786689, metadata !18, metadata !"Context", metadata !11, i32 50332277, metadata !14, i32 0, metadata !1595} ; [ DW_TAG_arg_variable ] [Context] [line 629]
!1600 = metadata !{i32 629, i32 56, metadata !18, metadata !1595}
!1601 = metadata !{i32 786689, metadata !47, metadata !"Event", metadata !11, i32 16778250, metadata !14, i32 0, metadata !1602} ; [ DW_TAG_arg_variable ] [Event] [line 1034]
!1602 = metadata !{i32 634, i32 3, metadata !417, metadata !1595}
!1603 = metadata !{i32 1034, i32 20, metadata !47, metadata !1602}
!1604 = metadata !{i32 786689, metadata !47, metadata !"Increment", metadata !11, i32 33555466, metadata !14, i32 0, metadata !1602} ; [ DW_TAG_arg_variable ] [Increment] [line 1034]
!1605 = metadata !{i32 1034, i32 32, metadata !47, metadata !1602}
!1606 = metadata !{i32 786689, metadata !47, metadata !"Wait", metadata !11, i32 50332682, metadata !14, i32 0, metadata !1602} ; [ DW_TAG_arg_variable ] [Wait] [line 1034]
!1607 = metadata !{i32 1034, i32 48, metadata !47, metadata !1602}
!1608 = metadata !{i32 1035, i32 11, metadata !47, metadata !1602}
!1609 = metadata !{i32 786688, metadata !47, metadata !"l", metadata !11, i32 1035, metadata !14, i32 0, metadata !1602} ; [ DW_TAG_auto_variable ] [l] [line 1035]
!1610 = metadata !{i32 1035, i32 7, metadata !47, metadata !1602}
!1611 = metadata !{i32 1038, i32 3, metadata !429, metadata !1602}
!1612 = metadata !{i32 786688, metadata !43, metadata !"compRetStatus1", metadata !11, i32 952, metadata !14, i32 0, metadata !1586} ; [ DW_TAG_auto_variable ] [compRetStatus1] [line 952]
!1613 = metadata !{i32 952, i32 7, metadata !43, metadata !1586}
!1614 = metadata !{i32 786688, metadata !43, metadata !"__cil_tmp7", metadata !11, i32 954, metadata !435, i32 0, metadata !1586} ; [ DW_TAG_auto_variable ] [__cil_tmp7] [line 954]
!1615 = metadata !{i32 954, i32 17, metadata !43, metadata !1586}
!1616 = metadata !{i32 939, i32 7, metadata !438, metadata !1617}
!1617 = metadata !{i32 962, i32 7, metadata !441, metadata !1586}
!1618 = metadata !{i32 940, i32 5, metadata !446, metadata !1617}
!1619 = metadata !{i32 964, i32 5, metadata !442, metadata !1586}
!1620 = metadata !{i32 38, i32 10, metadata !89, metadata !1621}
!1621 = metadata !{i32 943, i32 5, metadata !450, metadata !1617}
!1622 = metadata !{i32 971, i32 16, metadata !405, metadata !1586}
!1623 = metadata !{i32 786688, metadata !405, metadata !"tmp_ndt_12", metadata !11, i32 970, metadata !14, i32 0, metadata !1586} ; [ DW_TAG_auto_variable ] [tmp_ndt_12] [line 970]
!1624 = metadata !{i32 970, i32 7, metadata !405, metadata !1586}
!1625 = metadata !{i32 972, i32 7, metadata !456, metadata !1586}
!1626 = metadata !{i32 974, i32 17, metadata !458, metadata !1586}
!1627 = metadata !{i32 786688, metadata !458, metadata !"tmp_ndt_7", metadata !11, i32 973, metadata !14, i32 0, metadata !1586} ; [ DW_TAG_auto_variable ] [tmp_ndt_7] [line 973]
!1628 = metadata !{i32 973, i32 9, metadata !458, metadata !1586}
!1629 = metadata !{i32 975, i32 9, metadata !462, metadata !1586}
!1630 = metadata !{i32 786688, metadata !43, metadata !"returnVal2", metadata !11, i32 951, metadata !14, i32 0, metadata !1586} ; [ DW_TAG_auto_variable ] [returnVal2] [line 951]
!1631 = metadata !{i32 951, i32 7, metadata !43, metadata !1586}
!1632 = metadata !{i32 994, i32 7, metadata !467, metadata !1586}
!1633 = metadata !{i32 995, i32 5, metadata !469, metadata !1586}
!1634 = metadata !{i32 996, i32 5, metadata !469, metadata !1586}
!1635 = metadata !{i32 997, i32 3, metadata !469, metadata !1586}
!1636 = metadata !{i32 998, i32 9, metadata !473, metadata !1586}
!1637 = metadata !{i32 999, i32 11, metadata !476, metadata !1586}
!1638 = metadata !{i32 1000, i32 9, metadata !479, metadata !1586}
!1639 = metadata !{i32 1001, i32 9, metadata !479, metadata !1586}
!1640 = metadata !{i32 1002, i32 7, metadata !479, metadata !1586}
!1641 = metadata !{i32 1003, i32 9, metadata !483, metadata !1586}
!1642 = metadata !{i32 1004, i32 9, metadata !483, metadata !1586}
!1643 = metadata !{i32 1007, i32 11, metadata !486, metadata !1586}
!1644 = metadata !{i32 1008, i32 9, metadata !489, metadata !1586}
!1645 = metadata !{i32 1009, i32 9, metadata !489, metadata !1586}
!1646 = metadata !{i32 786688, metadata !17, metadata !"ntStatus", metadata !11, i32 475, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ntStatus] [line 475]
!1647 = metadata !{i32 475, i32 7, metadata !17, null}
!1648 = metadata !{i32 532, i32 3, metadata !494, null}
!1649 = metadata !{i32 786688, metadata !17, metadata !"__cil_tmp42", metadata !11, i32 501, metadata !496, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__cil_tmp42] [line 501]
!1650 = metadata !{i32 501, i32 8, metadata !17, null}
!1651 = metadata !{i32 532, i32 7, metadata !499, null}
!1652 = metadata !{i32 786689, metadata !48, metadata !"Object", metadata !11, i32 16778258, metadata !14, i32 0, metadata !1653} ; [ DW_TAG_arg_variable ] [Object] [line 1042]
!1653 = metadata !{i32 534, i32 16, metadata !502, null}
!1654 = metadata !{i32 1042, i32 31, metadata !48, metadata !1653}
!1655 = metadata !{i32 786689, metadata !48, metadata !"Alertable", metadata !11, i32 67109906, metadata !14, i32 0, metadata !1653} ; [ DW_TAG_arg_variable ] [Alertable] [line 1042]
!1656 = metadata !{i32 1042, i32 76, metadata !48, metadata !1653}
!1657 = metadata !{i32 786689, metadata !48, metadata !"Timeout", metadata !11, i32 83887123, metadata !14, i32 0, metadata !1653} ; [ DW_TAG_arg_variable ] [Timeout] [line 1043]
!1658 = metadata !{i32 1043, i32 31, metadata !48, metadata !1653}
!1659 = metadata !{i32 1047, i32 7, metadata !510, metadata !1653}
!1660 = metadata !{i32 1048, i32 9, metadata !513, metadata !1653}
!1661 = metadata !{i32 1049, i32 7, metadata !516, metadata !1653}
!1662 = metadata !{i32 1050, i32 7, metadata !516, metadata !1653}
!1663 = metadata !{i32 1054, i32 3, metadata !514, metadata !1653}
!1664 = metadata !{i32 1056, i32 9, metadata !520, metadata !1653}
!1665 = metadata !{i32 1057, i32 7, metadata !523, metadata !1653}
!1666 = metadata !{i32 1058, i32 7, metadata !523, metadata !1653}
!1667 = metadata !{i32 1059, i32 5, metadata !523, metadata !1653}
!1668 = metadata !{i32 1060, i32 11, metadata !527, metadata !1653}
!1669 = metadata !{i32 38, i32 10, metadata !89, metadata !1670}
!1670 = metadata !{i32 1062, i32 9, metadata !531, metadata !1653}
!1671 = metadata !{i32 1070, i32 15, metadata !511, metadata !1653}
!1672 = metadata !{i32 786688, metadata !511, metadata !"tmp_ndt_8", metadata !11, i32 1069, metadata !14, i32 0, metadata !1653} ; [ DW_TAG_auto_variable ] [tmp_ndt_8] [line 1069]
!1673 = metadata !{i32 1069, i32 7, metadata !511, metadata !1653}
!1674 = metadata !{i32 537, i32 3, metadata !503, null}
!1675 = metadata !{i32 786688, metadata !17, metadata !"fdcInfo__BufferCount", metadata !11, i32 479, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fdcInfo__BufferCount] [line 479]
!1676 = metadata !{i32 479, i32 7, metadata !17, null}
!1677 = metadata !{i32 786688, metadata !17, metadata !"fdcInfo__BufferSize", metadata !11, i32 480, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [fdcInfo__BufferSize] [line 480]
!1678 = metadata !{i32 480, i32 7, metadata !17, null}
!1679 = metadata !{i32 786688, metadata !17, metadata !"__cil_tmp43", metadata !11, i32 502, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__cil_tmp43] [line 502]
!1680 = metadata !{i32 502, i32 7, metadata !17, null}
!1681 = metadata !{i32 786688, metadata !17, metadata !"__cil_tmp44", metadata !11, i32 503, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__cil_tmp44] [line 503]
!1682 = metadata !{i32 503, i32 7, metadata !17, null}
!1683 = metadata !{i32 786688, metadata !17, metadata !"__cil_tmp45", metadata !11, i32 504, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__cil_tmp45] [line 504]
!1684 = metadata !{i32 504, i32 7, metadata !17, null}
!1685 = metadata !{i32 786688, metadata !17, metadata !"__cil_tmp46", metadata !11, i32 505, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__cil_tmp46] [line 505]
!1686 = metadata !{i32 505, i32 7, metadata !17, null}
!1687 = metadata !{i32 786689, metadata !21, metadata !"DeviceObject", metadata !11, i32 16777855, metadata !14, i32 0, metadata !1688} ; [ DW_TAG_arg_variable ] [DeviceObject] [line 639]
!1688 = metadata !{i32 543, i32 14, metadata !555, null}
!1689 = metadata !{i32 639, i32 23, metadata !21, metadata !1688}
!1690 = metadata !{i32 786689, metadata !21, metadata !"Ioctl", metadata !11, i32 33555071, metadata !14, i32 0, metadata !1688} ; [ DW_TAG_arg_variable ] [Ioctl] [line 639]
!1691 = metadata !{i32 639, i32 42, metadata !21, metadata !1688}
!1692 = metadata !{i32 786689, metadata !21, metadata !"Data", metadata !11, i32 50332287, metadata !14, i32 0, metadata !1688} ; [ DW_TAG_arg_variable ] [Data] [line 639]
!1693 = metadata !{i32 639, i32 54, metadata !21, metadata !1688}
!1694 = metadata !{i32 643, i32 19, metadata !21, metadata !1688}
!1695 = metadata !{i32 786688, metadata !21, metadata !"doneEvent", metadata !11, i32 643, metadata !14, i32 0, metadata !1688} ; [ DW_TAG_auto_variable ] [doneEvent] [line 643]
!1696 = metadata !{i32 643, i32 7, metadata !21, metadata !1688}
!1697 = metadata !{i32 644, i32 18, metadata !21, metadata !1688}
!1698 = metadata !{i32 786688, metadata !21, metadata !"ioStatus", metadata !11, i32 644, metadata !14, i32 0, metadata !1688} ; [ DW_TAG_auto_variable ] [ioStatus] [line 644]
!1699 = metadata !{i32 644, i32 7, metadata !21, metadata !1688}
!1700 = metadata !{i32 645, i32 50, metadata !21, metadata !1688}
!1701 = metadata !{i32 786688, metadata !21, metadata !"irp__Tail__Overlay__CurrentStackLocation", metadata !11, i32 645, metadata !14, i32 0, metadata !1688} ; [ DW_TAG_auto_variable ] [irp__Tail__Overlay__CurrentStackLocation] [line 645]
!1702 = metadata !{i32 645, i32 7, metadata !21, metadata !1688}
!1703 = metadata !{i32 786689, metadata !29, metadata !"IoControlCode", metadata !11, i32 16778039, metadata !14, i32 0, metadata !1704} ; [ DW_TAG_arg_variable ] [IoControlCode] [line 823]
!1704 = metadata !{i32 650, i32 9, metadata !572, metadata !1688}
!1705 = metadata !{i32 823, i32 39, metadata !29, metadata !1704}
!1706 = metadata !{i32 786689, metadata !29, metadata !"DeviceObject", metadata !11, i32 33555255, metadata !14, i32 0, metadata !1704} ; [ DW_TAG_arg_variable ] [DeviceObject] [line 823]
!1707 = metadata !{i32 823, i32 59, metadata !29, metadata !1704}
!1708 = metadata !{i32 786689, metadata !29, metadata !"InputBuffer", metadata !11, i32 50332471, metadata !14, i32 0, metadata !1704} ; [ DW_TAG_arg_variable ] [InputBuffer] [line 823]
!1709 = metadata !{i32 823, i32 78, metadata !29, metadata !1704}
!1710 = metadata !{i32 786689, metadata !29, metadata !"InputBufferLength", metadata !11, i32 67109688, metadata !14, i32 0, metadata !1704} ; [ DW_TAG_arg_variable ] [InputBufferLength] [line 824]
!1711 = metadata !{i32 824, i32 39, metadata !29, metadata !1704}
!1712 = metadata !{i32 786689, metadata !29, metadata !"OutputBuffer", metadata !11, i32 83886904, metadata !14, i32 0, metadata !1704} ; [ DW_TAG_arg_variable ] [OutputBuffer] [line 824]
!1713 = metadata !{i32 824, i32 63, metadata !29, metadata !1704}
!1714 = metadata !{i32 786689, metadata !29, metadata !"OutputBufferLength", metadata !11, i32 100664120, metadata !14, i32 0, metadata !1704} ; [ DW_TAG_arg_variable ] [OutputBufferLength] [line 824]
!1715 = metadata !{i32 824, i32 82, metadata !29, metadata !1704}
!1716 = metadata !{i32 786689, metadata !29, metadata !"InternalDeviceIoControl", metadata !11, i32 117441337, metadata !14, i32 0, metadata !1704} ; [ DW_TAG_arg_variable ] [InternalDeviceIoControl] [line 825]
!1717 = metadata !{i32 825, i32 39, metadata !29, metadata !1704}
!1718 = metadata !{i32 786689, metadata !29, metadata !"Event", metadata !11, i32 134218553, metadata !14, i32 0, metadata !1704} ; [ DW_TAG_arg_variable ] [Event] [line 825]
!1719 = metadata !{i32 825, i32 69, metadata !29, metadata !1704}
!1720 = metadata !{i32 786689, metadata !29, metadata !"IoStatusBlock", metadata !11, i32 150995769, metadata !14, i32 0, metadata !1704} ; [ DW_TAG_arg_variable ] [IoStatusBlock] [line 825]
!1721 = metadata !{i32 825, i32 81, metadata !29, metadata !1704}
!1722 = metadata !{i32 827, i32 16, metadata !29, metadata !1704}
!1723 = metadata !{i32 786688, metadata !29, metadata !"malloc", metadata !11, i32 827, metadata !14, i32 0, metadata !1704} ; [ DW_TAG_auto_variable ] [malloc] [line 827]
!1724 = metadata !{i32 827, i32 7, metadata !29, metadata !1704}
!1725 = metadata !{i32 830, i32 3, metadata !595, metadata !1704}
!1726 = metadata !{i32 832, i32 15, metadata !595, metadata !1704}
!1727 = metadata !{i32 786688, metadata !595, metadata !"tmp_ndt_2", metadata !11, i32 831, metadata !14, i32 0, metadata !1704} ; [ DW_TAG_auto_variable ] [tmp_ndt_2] [line 831]
!1728 = metadata !{i32 831, i32 7, metadata !595, metadata !1704}
!1729 = metadata !{i32 833, i32 7, metadata !600, metadata !1704}
!1730 = metadata !{i32 786688, metadata !21, metadata !"irp", metadata !11, i32 641, metadata !14, i32 0, metadata !1688} ; [ DW_TAG_auto_variable ] [irp] [line 641]
!1731 = metadata !{i32 641, i32 7, metadata !21, metadata !1688}
!1732 = metadata !{i32 653, i32 7, metadata !604, metadata !1688}
!1733 = metadata !{i32 786688, metadata !21, metadata !"irpStack__Parameters__DeviceIoControl__Type3InputBuffer", metadata !11, i32 646, metadata !14, i32 0, metadata !1688} ; [ DW_TAG_auto_variable ] [irpStack__Parameters__DeviceIoControl__Type3InputBuffer] [line 646]
!1734 = metadata !{i32 646, i32 7, metadata !21, metadata !1688}
!1735 = metadata !{i32 786689, metadata !43, metadata !"DeviceObject", metadata !11, i32 16778165, metadata !14, i32 0, metadata !1736} ; [ DW_TAG_arg_variable ] [DeviceObject] [line 949]
!1736 = metadata !{i32 661, i32 14, metadata !609, metadata !1688}
!1737 = metadata !{i32 949, i32 23, metadata !43, metadata !1736}
!1738 = metadata !{i32 786689, metadata !43, metadata !"Irp", metadata !11, i32 33555381, metadata !14, i32 0, metadata !1736} ; [ DW_TAG_arg_variable ] [Irp] [line 949]
!1739 = metadata !{i32 949, i32 42, metadata !43, metadata !1736}
!1740 = metadata !{i32 953, i32 18, metadata !43, metadata !1736}
!1741 = metadata !{i32 786688, metadata !43, metadata !"lcontext", metadata !11, i32 953, metadata !14, i32 0, metadata !1736} ; [ DW_TAG_auto_variable ] [lcontext] [line 953]
!1742 = metadata !{i32 953, i32 7, metadata !43, metadata !1736}
!1743 = metadata !{i32 956, i32 7, metadata !404, metadata !1736}
!1744 = metadata !{i32 786689, metadata !18, metadata !"DeviceObject", metadata !11, i32 16777845, metadata !14, i32 0, metadata !1745} ; [ DW_TAG_arg_variable ] [DeviceObject] [line 629]
!1745 = metadata !{i32 958, i32 22, metadata !408, metadata !1736}
!1746 = metadata !{i32 629, i32 27, metadata !18, metadata !1745}
!1747 = metadata !{i32 786689, metadata !18, metadata !"Irp", metadata !11, i32 33555061, metadata !14, i32 0, metadata !1745} ; [ DW_TAG_arg_variable ] [Irp] [line 629]
!1748 = metadata !{i32 629, i32 46, metadata !18, metadata !1745}
!1749 = metadata !{i32 786689, metadata !18, metadata !"Context", metadata !11, i32 50332277, metadata !14, i32 0, metadata !1745} ; [ DW_TAG_arg_variable ] [Context] [line 629]
!1750 = metadata !{i32 629, i32 56, metadata !18, metadata !1745}
!1751 = metadata !{i32 786689, metadata !47, metadata !"Event", metadata !11, i32 16778250, metadata !14, i32 0, metadata !1752} ; [ DW_TAG_arg_variable ] [Event] [line 1034]
!1752 = metadata !{i32 634, i32 3, metadata !417, metadata !1745}
!1753 = metadata !{i32 1034, i32 20, metadata !47, metadata !1752}
!1754 = metadata !{i32 786689, metadata !47, metadata !"Increment", metadata !11, i32 33555466, metadata !14, i32 0, metadata !1752} ; [ DW_TAG_arg_variable ] [Increment] [line 1034]
!1755 = metadata !{i32 1034, i32 32, metadata !47, metadata !1752}
!1756 = metadata !{i32 786689, metadata !47, metadata !"Wait", metadata !11, i32 50332682, metadata !14, i32 0, metadata !1752} ; [ DW_TAG_arg_variable ] [Wait] [line 1034]
!1757 = metadata !{i32 1034, i32 48, metadata !47, metadata !1752}
!1758 = metadata !{i32 1035, i32 11, metadata !47, metadata !1752}
!1759 = metadata !{i32 786688, metadata !47, metadata !"l", metadata !11, i32 1035, metadata !14, i32 0, metadata !1752} ; [ DW_TAG_auto_variable ] [l] [line 1035]
!1760 = metadata !{i32 1035, i32 7, metadata !47, metadata !1752}
!1761 = metadata !{i32 1038, i32 3, metadata !429, metadata !1752}
!1762 = metadata !{i32 786688, metadata !43, metadata !"compRetStatus1", metadata !11, i32 952, metadata !14, i32 0, metadata !1736} ; [ DW_TAG_auto_variable ] [compRetStatus1] [line 952]
!1763 = metadata !{i32 952, i32 7, metadata !43, metadata !1736}
!1764 = metadata !{i32 786688, metadata !43, metadata !"__cil_tmp7", metadata !11, i32 954, metadata !435, i32 0, metadata !1736} ; [ DW_TAG_auto_variable ] [__cil_tmp7] [line 954]
!1765 = metadata !{i32 954, i32 17, metadata !43, metadata !1736}
!1766 = metadata !{i32 939, i32 7, metadata !438, metadata !1767}
!1767 = metadata !{i32 962, i32 7, metadata !441, metadata !1736}
!1768 = metadata !{i32 940, i32 5, metadata !446, metadata !1767}
!1769 = metadata !{i32 964, i32 5, metadata !442, metadata !1736}
!1770 = metadata !{i32 38, i32 10, metadata !89, metadata !1771}
!1771 = metadata !{i32 943, i32 5, metadata !450, metadata !1767}
!1772 = metadata !{i32 971, i32 16, metadata !405, metadata !1736}
!1773 = metadata !{i32 786688, metadata !405, metadata !"tmp_ndt_12", metadata !11, i32 970, metadata !14, i32 0, metadata !1736} ; [ DW_TAG_auto_variable ] [tmp_ndt_12] [line 970]
!1774 = metadata !{i32 970, i32 7, metadata !405, metadata !1736}
!1775 = metadata !{i32 972, i32 7, metadata !456, metadata !1736}
!1776 = metadata !{i32 974, i32 17, metadata !458, metadata !1736}
!1777 = metadata !{i32 786688, metadata !458, metadata !"tmp_ndt_7", metadata !11, i32 973, metadata !14, i32 0, metadata !1736} ; [ DW_TAG_auto_variable ] [tmp_ndt_7] [line 973]
!1778 = metadata !{i32 973, i32 9, metadata !458, metadata !1736}
!1779 = metadata !{i32 975, i32 9, metadata !462, metadata !1736}
!1780 = metadata !{i32 786688, metadata !43, metadata !"returnVal2", metadata !11, i32 951, metadata !14, i32 0, metadata !1736} ; [ DW_TAG_auto_variable ] [returnVal2] [line 951]
!1781 = metadata !{i32 951, i32 7, metadata !43, metadata !1736}
!1782 = metadata !{i32 994, i32 7, metadata !467, metadata !1736}
!1783 = metadata !{i32 995, i32 5, metadata !469, metadata !1736}
!1784 = metadata !{i32 996, i32 5, metadata !469, metadata !1736}
!1785 = metadata !{i32 997, i32 3, metadata !469, metadata !1736}
!1786 = metadata !{i32 998, i32 9, metadata !473, metadata !1736}
!1787 = metadata !{i32 999, i32 11, metadata !476, metadata !1736}
!1788 = metadata !{i32 1000, i32 9, metadata !479, metadata !1736}
!1789 = metadata !{i32 1001, i32 9, metadata !479, metadata !1736}
!1790 = metadata !{i32 1002, i32 7, metadata !479, metadata !1736}
!1791 = metadata !{i32 1003, i32 9, metadata !483, metadata !1736}
!1792 = metadata !{i32 1004, i32 9, metadata !483, metadata !1736}
!1793 = metadata !{i32 1007, i32 11, metadata !486, metadata !1736}
!1794 = metadata !{i32 1008, i32 9, metadata !489, metadata !1736}
!1795 = metadata !{i32 1009, i32 9, metadata !489, metadata !1736}
!1796 = metadata !{i32 786688, metadata !21, metadata !"ntStatus", metadata !11, i32 640, metadata !14, i32 0, metadata !1688} ; [ DW_TAG_auto_variable ] [ntStatus] [line 640]
!1797 = metadata !{i32 640, i32 7, metadata !21, metadata !1688}
!1798 = metadata !{i32 663, i32 3, metadata !672, metadata !1688}
!1799 = metadata !{i32 786688, metadata !21, metadata !"__cil_tmp11", metadata !11, i32 647, metadata !496, i32 0, metadata !1688} ; [ DW_TAG_auto_variable ] [__cil_tmp11] [line 647]
!1800 = metadata !{i32 647, i32 8, metadata !21, metadata !1688}
!1801 = metadata !{i32 663, i32 7, metadata !676, metadata !1688}
!1802 = metadata !{i32 786689, metadata !48, metadata !"Object", metadata !11, i32 16778258, metadata !14, i32 0, metadata !1803} ; [ DW_TAG_arg_variable ] [Object] [line 1042]
!1803 = metadata !{i32 665, i32 5, metadata !679, metadata !1688}
!1804 = metadata !{i32 1042, i32 31, metadata !48, metadata !1803}
!1805 = metadata !{i32 786689, metadata !48, metadata !"Alertable", metadata !11, i32 67109906, metadata !14, i32 0, metadata !1803} ; [ DW_TAG_arg_variable ] [Alertable] [line 1042]
!1806 = metadata !{i32 1042, i32 76, metadata !48, metadata !1803}
!1807 = metadata !{i32 786689, metadata !48, metadata !"Timeout", metadata !11, i32 83887123, metadata !14, i32 0, metadata !1803} ; [ DW_TAG_arg_variable ] [Timeout] [line 1043]
!1808 = metadata !{i32 1043, i32 31, metadata !48, metadata !1803}
!1809 = metadata !{i32 1047, i32 7, metadata !510, metadata !1803}
!1810 = metadata !{i32 1048, i32 9, metadata !513, metadata !1803}
!1811 = metadata !{i32 1049, i32 7, metadata !516, metadata !1803}
!1812 = metadata !{i32 1050, i32 7, metadata !516, metadata !1803}
!1813 = metadata !{i32 1054, i32 3, metadata !514, metadata !1803}
!1814 = metadata !{i32 1056, i32 9, metadata !520, metadata !1803}
!1815 = metadata !{i32 1057, i32 7, metadata !523, metadata !1803}
!1816 = metadata !{i32 1058, i32 7, metadata !523, metadata !1803}
!1817 = metadata !{i32 1059, i32 5, metadata !523, metadata !1803}
!1818 = metadata !{i32 1060, i32 11, metadata !527, metadata !1803}
!1819 = metadata !{i32 38, i32 10, metadata !89, metadata !1820}
!1820 = metadata !{i32 1062, i32 9, metadata !531, metadata !1803}
!1821 = metadata !{i32 1070, i32 15, metadata !511, metadata !1803}
!1822 = metadata !{i32 786688, metadata !511, metadata !"tmp_ndt_8", metadata !11, i32 1069, metadata !14, i32 0, metadata !1803} ; [ DW_TAG_auto_variable ] [tmp_ndt_8] [line 1069]
!1823 = metadata !{i32 1069, i32 7, metadata !511, metadata !1803}
!1824 = metadata !{i32 666, i32 5, metadata !679, metadata !1688}
!1825 = metadata !{i32 668, i32 3, metadata !680, metadata !1688}
!1826 = metadata !{i32 546, i32 7, metadata !704, null}
!1827 = metadata !{i32 786688, metadata !17, metadata !"disketteExtension__MaxTransferSize", metadata !11, i32 466, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [disketteExtension__MaxTransferSize] [line 466]
!1828 = metadata !{i32 466, i32 7, metadata !17, null}
!1829 = metadata !{i32 548, i32 9, metadata !708, null}
!1830 = metadata !{i32 549, i32 11, metadata !711, null}
!1831 = metadata !{i32 572, i32 13, metadata !714, null}
!1832 = metadata !{i32 876, i32 15, metadata !719, metadata !1833}
!1833 = metadata !{i32 579, i32 20, metadata !721, null}
!1834 = metadata !{i32 877, i32 7, metadata !723, metadata !1833}
!1835 = metadata !{i32 583, i32 13, metadata !725, null}
!1836 = metadata !{i32 593, i32 9, metadata !727, null}
!1837 = metadata !{i32 786689, metadata !38, metadata !"PhysicalDeviceObject", metadata !11, i32 16778108, metadata !14, i32 0, metadata !1838} ; [ DW_TAG_arg_variable ] [PhysicalDeviceObject] [line 892]
!1838 = metadata !{i32 602, i32 19, metadata !730, null}
!1839 = metadata !{i32 892, i32 35, metadata !38, metadata !1838}
!1840 = metadata !{i32 786689, metadata !38, metadata !"ReferenceString", metadata !11, i32 50332541, metadata !14, i32 0, metadata !1838} ; [ DW_TAG_arg_variable ] [ReferenceString] [line 893]
!1841 = metadata !{i32 893, i32 35, metadata !38, metadata !1838}
!1842 = metadata !{i32 786689, metadata !38, metadata !"SymbolicLinkName", metadata !11, i32 67109757, metadata !14, i32 0, metadata !1838} ; [ DW_TAG_arg_variable ] [SymbolicLinkName] [line 893]
!1843 = metadata !{i32 893, i32 57, metadata !38, metadata !1838}
!1844 = metadata !{i32 898, i32 15, metadata !738, metadata !1838}
!1845 = metadata !{i32 786688, metadata !738, metadata !"tmp_ndt_5", metadata !11, i32 897, metadata !14, i32 0, metadata !1838} ; [ DW_TAG_auto_variable ] [tmp_ndt_5] [line 897]
!1846 = metadata !{i32 897, i32 7, metadata !738, metadata !1838}
!1847 = metadata !{i32 899, i32 7, metadata !742, metadata !1838}
!1848 = metadata !{i32 786688, metadata !17, metadata !"pnpStatus", metadata !11, i32 476, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pnpStatus] [line 476]
!1849 = metadata !{i32 476, i32 7, metadata !17, null}
!1850 = metadata !{i32 605, i32 11, metadata !744, null}
!1851 = metadata !{i32 786689, metadata !41, metadata !"SymbolicLinkName", metadata !11, i32 16778130, metadata !14, i32 0, metadata !1852} ; [ DW_TAG_arg_variable ] [SymbolicLinkName] [line 914]
!1852 = metadata !{i32 607, i32 21, metadata !747, null}
!1853 = metadata !{i32 914, i32 35, metadata !41, metadata !1852}
!1854 = metadata !{i32 786689, metadata !41, metadata !"Enable", metadata !11, i32 33555346, metadata !14, i32 0, metadata !1852} ; [ DW_TAG_arg_variable ] [Enable] [line 914]
!1855 = metadata !{i32 914, i32 58, metadata !41, metadata !1852}
!1856 = metadata !{i32 919, i32 15, metadata !753, metadata !1852}
!1857 = metadata !{i32 786688, metadata !753, metadata !"tmp_ndt_6", metadata !11, i32 918, metadata !14, i32 0, metadata !1852} ; [ DW_TAG_auto_variable ] [tmp_ndt_6] [line 918]
!1858 = metadata !{i32 918, i32 7, metadata !753, metadata !1852}
!1859 = metadata !{i32 610, i32 7, metadata !748, null}
!1860 = metadata !{i32 588, i32 9, metadata !715, null}
!1861 = metadata !{i32 589, i32 7, metadata !715, null}
!1862 = metadata !{i32 786688, metadata !17, metadata !"Irp__IoStatus__Status", metadata !11, i32 464, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [Irp__IoStatus__Status] [line 464]
!1863 = metadata !{i32 464, i32 7, metadata !17, null}
!1864 = metadata !{i32 623, i32 3, metadata !762, null}
!1865 = metadata !{i32 786689, metadata !44, metadata !"Irp", metadata !11, i32 16778236, metadata !14, i32 0, metadata !1866} ; [ DW_TAG_arg_variable ] [Irp] [line 1020]
!1866 = metadata !{i32 624, i32 3, metadata !762, null}
!1867 = metadata !{i32 1020, i32 29, metadata !44, metadata !1866}
!1868 = metadata !{i32 786689, metadata !44, metadata !"PriorityBoost", metadata !11, i32 33555452, metadata !14, i32 0, metadata !1866} ; [ DW_TAG_arg_variable ] [PriorityBoost] [line 1020]
!1869 = metadata !{i32 1020, i32 39, metadata !44, metadata !1866}
!1870 = metadata !{i32 1024, i32 7, metadata !286, metadata !1866}
!1871 = metadata !{i32 1025, i32 5, metadata !289, metadata !1866}
!1872 = metadata !{i32 626, i32 3, metadata !375, null}
!1873 = metadata !{i32 38, i32 10, metadata !89, metadata !1874}
!1874 = metadata !{i32 1028, i32 5, metadata !293, metadata !1866}
!1875 = metadata !{i32 38, i32 10, metadata !89, metadata !1876}
!1876 = metadata !{i32 1012, i32 9, metadata !775, metadata !1736}
!1877 = metadata !{i32 38, i32 10, metadata !89, metadata !1878}
!1878 = metadata !{i32 1012, i32 9, metadata !775, metadata !1586}
!1879 = metadata !{i32 786689, metadata !18, metadata !"DeviceObject", metadata !11, i32 16777845, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [DeviceObject] [line 629]
!1880 = metadata !{i32 629, i32 27, metadata !18, null}
!1881 = metadata !{i32 786689, metadata !18, metadata !"Irp", metadata !11, i32 33555061, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Irp] [line 629]
!1882 = metadata !{i32 629, i32 46, metadata !18, null}
!1883 = metadata !{i32 786689, metadata !18, metadata !"Context", metadata !11, i32 50332277, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Context] [line 629]
!1884 = metadata !{i32 629, i32 56, metadata !18, null}
!1885 = metadata !{i32 786689, metadata !47, metadata !"Event", metadata !11, i32 16778250, metadata !14, i32 0, metadata !1886} ; [ DW_TAG_arg_variable ] [Event] [line 1034]
!1886 = metadata !{i32 634, i32 3, metadata !417, null}
!1887 = metadata !{i32 1034, i32 20, metadata !47, metadata !1886}
!1888 = metadata !{i32 786689, metadata !47, metadata !"Increment", metadata !11, i32 33555466, metadata !14, i32 0, metadata !1886} ; [ DW_TAG_arg_variable ] [Increment] [line 1034]
!1889 = metadata !{i32 1034, i32 32, metadata !47, metadata !1886}
!1890 = metadata !{i32 786689, metadata !47, metadata !"Wait", metadata !11, i32 50332682, metadata !14, i32 0, metadata !1886} ; [ DW_TAG_arg_variable ] [Wait] [line 1034]
!1891 = metadata !{i32 1034, i32 48, metadata !47, metadata !1886}
!1892 = metadata !{i32 1035, i32 11, metadata !47, metadata !1886}
!1893 = metadata !{i32 786688, metadata !47, metadata !"l", metadata !11, i32 1035, metadata !14, i32 0, metadata !1886} ; [ DW_TAG_auto_variable ] [l] [line 1035]
!1894 = metadata !{i32 1035, i32 7, metadata !47, metadata !1886}
!1895 = metadata !{i32 1038, i32 3, metadata !429, metadata !1886}
!1896 = metadata !{i32 636, i32 3, metadata !418, null}
!1897 = metadata !{i32 786689, metadata !21, metadata !"DeviceObject", metadata !11, i32 16777855, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [DeviceObject] [line 639]
!1898 = metadata !{i32 639, i32 23, metadata !21, null}
!1899 = metadata !{i32 786689, metadata !21, metadata !"Ioctl", metadata !11, i32 33555071, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Ioctl] [line 639]
!1900 = metadata !{i32 639, i32 42, metadata !21, null}
!1901 = metadata !{i32 786689, metadata !21, metadata !"Data", metadata !11, i32 50332287, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Data] [line 639]
!1902 = metadata !{i32 639, i32 54, metadata !21, null}
!1903 = metadata !{i32 643, i32 19, metadata !21, null}
!1904 = metadata !{i32 786688, metadata !21, metadata !"doneEvent", metadata !11, i32 643, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [doneEvent] [line 643]
!1905 = metadata !{i32 643, i32 7, metadata !21, null}
!1906 = metadata !{i32 644, i32 18, metadata !21, null}
!1907 = metadata !{i32 786688, metadata !21, metadata !"ioStatus", metadata !11, i32 644, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ioStatus] [line 644]
!1908 = metadata !{i32 644, i32 7, metadata !21, null}
!1909 = metadata !{i32 645, i32 50, metadata !21, null}
!1910 = metadata !{i32 786688, metadata !21, metadata !"irp__Tail__Overlay__CurrentStackLocation", metadata !11, i32 645, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irp__Tail__Overlay__CurrentStackLocation] [line 645]
!1911 = metadata !{i32 645, i32 7, metadata !21, null}
!1912 = metadata !{i32 786689, metadata !29, metadata !"IoControlCode", metadata !11, i32 16778039, metadata !14, i32 0, metadata !1913} ; [ DW_TAG_arg_variable ] [IoControlCode] [line 823]
!1913 = metadata !{i32 650, i32 9, metadata !572, null}
!1914 = metadata !{i32 823, i32 39, metadata !29, metadata !1913}
!1915 = metadata !{i32 786689, metadata !29, metadata !"DeviceObject", metadata !11, i32 33555255, metadata !14, i32 0, metadata !1913} ; [ DW_TAG_arg_variable ] [DeviceObject] [line 823]
!1916 = metadata !{i32 823, i32 59, metadata !29, metadata !1913}
!1917 = metadata !{i32 786689, metadata !29, metadata !"InputBuffer", metadata !11, i32 50332471, metadata !14, i32 0, metadata !1913} ; [ DW_TAG_arg_variable ] [InputBuffer] [line 823]
!1918 = metadata !{i32 823, i32 78, metadata !29, metadata !1913}
!1919 = metadata !{i32 786689, metadata !29, metadata !"InputBufferLength", metadata !11, i32 67109688, metadata !14, i32 0, metadata !1913} ; [ DW_TAG_arg_variable ] [InputBufferLength] [line 824]
!1920 = metadata !{i32 824, i32 39, metadata !29, metadata !1913}
!1921 = metadata !{i32 786689, metadata !29, metadata !"OutputBuffer", metadata !11, i32 83886904, metadata !14, i32 0, metadata !1913} ; [ DW_TAG_arg_variable ] [OutputBuffer] [line 824]
!1922 = metadata !{i32 824, i32 63, metadata !29, metadata !1913}
!1923 = metadata !{i32 786689, metadata !29, metadata !"OutputBufferLength", metadata !11, i32 100664120, metadata !14, i32 0, metadata !1913} ; [ DW_TAG_arg_variable ] [OutputBufferLength] [line 824]
!1924 = metadata !{i32 824, i32 82, metadata !29, metadata !1913}
!1925 = metadata !{i32 786689, metadata !29, metadata !"InternalDeviceIoControl", metadata !11, i32 117441337, metadata !14, i32 0, metadata !1913} ; [ DW_TAG_arg_variable ] [InternalDeviceIoControl] [line 825]
!1926 = metadata !{i32 825, i32 39, metadata !29, metadata !1913}
!1927 = metadata !{i32 786689, metadata !29, metadata !"Event", metadata !11, i32 134218553, metadata !14, i32 0, metadata !1913} ; [ DW_TAG_arg_variable ] [Event] [line 825]
!1928 = metadata !{i32 825, i32 69, metadata !29, metadata !1913}
!1929 = metadata !{i32 786689, metadata !29, metadata !"IoStatusBlock", metadata !11, i32 150995769, metadata !14, i32 0, metadata !1913} ; [ DW_TAG_arg_variable ] [IoStatusBlock] [line 825]
!1930 = metadata !{i32 825, i32 81, metadata !29, metadata !1913}
!1931 = metadata !{i32 827, i32 16, metadata !29, metadata !1913}
!1932 = metadata !{i32 786688, metadata !29, metadata !"malloc", metadata !11, i32 827, metadata !14, i32 0, metadata !1913} ; [ DW_TAG_auto_variable ] [malloc] [line 827]
!1933 = metadata !{i32 827, i32 7, metadata !29, metadata !1913}
!1934 = metadata !{i32 830, i32 3, metadata !595, metadata !1913}
!1935 = metadata !{i32 832, i32 15, metadata !595, metadata !1913}
!1936 = metadata !{i32 786688, metadata !595, metadata !"tmp_ndt_2", metadata !11, i32 831, metadata !14, i32 0, metadata !1913} ; [ DW_TAG_auto_variable ] [tmp_ndt_2] [line 831]
!1937 = metadata !{i32 831, i32 7, metadata !595, metadata !1913}
!1938 = metadata !{i32 833, i32 7, metadata !600, metadata !1913}
!1939 = metadata !{i32 786688, metadata !21, metadata !"irp", metadata !11, i32 641, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irp] [line 641]
!1940 = metadata !{i32 641, i32 7, metadata !21, null}
!1941 = metadata !{i32 653, i32 7, metadata !604, null}
!1942 = metadata !{i32 786688, metadata !21, metadata !"irpStack__Parameters__DeviceIoControl__Type3InputBuffer", metadata !11, i32 646, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irpStack__Parameters__DeviceIoControl__Type3InputBuffer] [line 646]
!1943 = metadata !{i32 646, i32 7, metadata !21, null}
!1944 = metadata !{i32 786689, metadata !43, metadata !"DeviceObject", metadata !11, i32 16778165, metadata !14, i32 0, metadata !1945} ; [ DW_TAG_arg_variable ] [DeviceObject] [line 949]
!1945 = metadata !{i32 661, i32 14, metadata !609, null}
!1946 = metadata !{i32 949, i32 23, metadata !43, metadata !1945}
!1947 = metadata !{i32 786689, metadata !43, metadata !"Irp", metadata !11, i32 33555381, metadata !14, i32 0, metadata !1945} ; [ DW_TAG_arg_variable ] [Irp] [line 949]
!1948 = metadata !{i32 949, i32 42, metadata !43, metadata !1945}
!1949 = metadata !{i32 953, i32 18, metadata !43, metadata !1945}
!1950 = metadata !{i32 786688, metadata !43, metadata !"lcontext", metadata !11, i32 953, metadata !14, i32 0, metadata !1945} ; [ DW_TAG_auto_variable ] [lcontext] [line 953]
!1951 = metadata !{i32 953, i32 7, metadata !43, metadata !1945}
!1952 = metadata !{i32 956, i32 7, metadata !404, metadata !1945}
!1953 = metadata !{i32 786689, metadata !18, metadata !"DeviceObject", metadata !11, i32 16777845, metadata !14, i32 0, metadata !1954} ; [ DW_TAG_arg_variable ] [DeviceObject] [line 629]
!1954 = metadata !{i32 958, i32 22, metadata !408, metadata !1945}
!1955 = metadata !{i32 629, i32 27, metadata !18, metadata !1954}
!1956 = metadata !{i32 786689, metadata !18, metadata !"Irp", metadata !11, i32 33555061, metadata !14, i32 0, metadata !1954} ; [ DW_TAG_arg_variable ] [Irp] [line 629]
!1957 = metadata !{i32 629, i32 46, metadata !18, metadata !1954}
!1958 = metadata !{i32 786689, metadata !18, metadata !"Context", metadata !11, i32 50332277, metadata !14, i32 0, metadata !1954} ; [ DW_TAG_arg_variable ] [Context] [line 629]
!1959 = metadata !{i32 629, i32 56, metadata !18, metadata !1954}
!1960 = metadata !{i32 786689, metadata !47, metadata !"Event", metadata !11, i32 16778250, metadata !14, i32 0, metadata !1961} ; [ DW_TAG_arg_variable ] [Event] [line 1034]
!1961 = metadata !{i32 634, i32 3, metadata !417, metadata !1954}
!1962 = metadata !{i32 1034, i32 20, metadata !47, metadata !1961}
!1963 = metadata !{i32 786689, metadata !47, metadata !"Increment", metadata !11, i32 33555466, metadata !14, i32 0, metadata !1961} ; [ DW_TAG_arg_variable ] [Increment] [line 1034]
!1964 = metadata !{i32 1034, i32 32, metadata !47, metadata !1961}
!1965 = metadata !{i32 786689, metadata !47, metadata !"Wait", metadata !11, i32 50332682, metadata !14, i32 0, metadata !1961} ; [ DW_TAG_arg_variable ] [Wait] [line 1034]
!1966 = metadata !{i32 1034, i32 48, metadata !47, metadata !1961}
!1967 = metadata !{i32 1035, i32 11, metadata !47, metadata !1961}
!1968 = metadata !{i32 786688, metadata !47, metadata !"l", metadata !11, i32 1035, metadata !14, i32 0, metadata !1961} ; [ DW_TAG_auto_variable ] [l] [line 1035]
!1969 = metadata !{i32 1035, i32 7, metadata !47, metadata !1961}
!1970 = metadata !{i32 1038, i32 3, metadata !429, metadata !1961}
!1971 = metadata !{i32 786688, metadata !43, metadata !"compRetStatus1", metadata !11, i32 952, metadata !14, i32 0, metadata !1945} ; [ DW_TAG_auto_variable ] [compRetStatus1] [line 952]
!1972 = metadata !{i32 952, i32 7, metadata !43, metadata !1945}
!1973 = metadata !{i32 786688, metadata !43, metadata !"__cil_tmp7", metadata !11, i32 954, metadata !435, i32 0, metadata !1945} ; [ DW_TAG_auto_variable ] [__cil_tmp7] [line 954]
!1974 = metadata !{i32 954, i32 17, metadata !43, metadata !1945}
!1975 = metadata !{i32 939, i32 7, metadata !438, metadata !1976}
!1976 = metadata !{i32 962, i32 7, metadata !441, metadata !1945}
!1977 = metadata !{i32 940, i32 5, metadata !446, metadata !1976}
!1978 = metadata !{i32 964, i32 5, metadata !442, metadata !1945}
!1979 = metadata !{i32 38, i32 10, metadata !89, metadata !1980}
!1980 = metadata !{i32 943, i32 5, metadata !450, metadata !1976}
!1981 = metadata !{i32 971, i32 16, metadata !405, metadata !1945}
!1982 = metadata !{i32 786688, metadata !405, metadata !"tmp_ndt_12", metadata !11, i32 970, metadata !14, i32 0, metadata !1945} ; [ DW_TAG_auto_variable ] [tmp_ndt_12] [line 970]
!1983 = metadata !{i32 970, i32 7, metadata !405, metadata !1945}
!1984 = metadata !{i32 972, i32 7, metadata !456, metadata !1945}
!1985 = metadata !{i32 974, i32 17, metadata !458, metadata !1945}
!1986 = metadata !{i32 786688, metadata !458, metadata !"tmp_ndt_7", metadata !11, i32 973, metadata !14, i32 0, metadata !1945} ; [ DW_TAG_auto_variable ] [tmp_ndt_7] [line 973]
!1987 = metadata !{i32 973, i32 9, metadata !458, metadata !1945}
!1988 = metadata !{i32 975, i32 9, metadata !462, metadata !1945}
!1989 = metadata !{i32 786688, metadata !43, metadata !"returnVal2", metadata !11, i32 951, metadata !14, i32 0, metadata !1945} ; [ DW_TAG_auto_variable ] [returnVal2] [line 951]
!1990 = metadata !{i32 951, i32 7, metadata !43, metadata !1945}
!1991 = metadata !{i32 994, i32 7, metadata !467, metadata !1945}
!1992 = metadata !{i32 995, i32 5, metadata !469, metadata !1945}
!1993 = metadata !{i32 996, i32 5, metadata !469, metadata !1945}
!1994 = metadata !{i32 997, i32 3, metadata !469, metadata !1945}
!1995 = metadata !{i32 998, i32 9, metadata !473, metadata !1945}
!1996 = metadata !{i32 999, i32 11, metadata !476, metadata !1945}
!1997 = metadata !{i32 1000, i32 9, metadata !479, metadata !1945}
!1998 = metadata !{i32 1001, i32 9, metadata !479, metadata !1945}
!1999 = metadata !{i32 1002, i32 7, metadata !479, metadata !1945}
!2000 = metadata !{i32 1003, i32 9, metadata !483, metadata !1945}
!2001 = metadata !{i32 1004, i32 9, metadata !483, metadata !1945}
!2002 = metadata !{i32 1007, i32 11, metadata !486, metadata !1945}
!2003 = metadata !{i32 1008, i32 9, metadata !489, metadata !1945}
!2004 = metadata !{i32 1009, i32 9, metadata !489, metadata !1945}
!2005 = metadata !{i32 786688, metadata !21, metadata !"ntStatus", metadata !11, i32 640, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [ntStatus] [line 640]
!2006 = metadata !{i32 640, i32 7, metadata !21, null}
!2007 = metadata !{i32 663, i32 3, metadata !672, null}
!2008 = metadata !{i32 786688, metadata !21, metadata !"__cil_tmp11", metadata !11, i32 647, metadata !496, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__cil_tmp11] [line 647]
!2009 = metadata !{i32 647, i32 8, metadata !21, null}
!2010 = metadata !{i32 663, i32 7, metadata !676, null}
!2011 = metadata !{i32 786689, metadata !48, metadata !"Object", metadata !11, i32 16778258, metadata !14, i32 0, metadata !2012} ; [ DW_TAG_arg_variable ] [Object] [line 1042]
!2012 = metadata !{i32 665, i32 5, metadata !679, null}
!2013 = metadata !{i32 1042, i32 31, metadata !48, metadata !2012}
!2014 = metadata !{i32 786689, metadata !48, metadata !"Alertable", metadata !11, i32 67109906, metadata !14, i32 0, metadata !2012} ; [ DW_TAG_arg_variable ] [Alertable] [line 1042]
!2015 = metadata !{i32 1042, i32 76, metadata !48, metadata !2012}
!2016 = metadata !{i32 786689, metadata !48, metadata !"Timeout", metadata !11, i32 83887123, metadata !14, i32 0, metadata !2012} ; [ DW_TAG_arg_variable ] [Timeout] [line 1043]
!2017 = metadata !{i32 1043, i32 31, metadata !48, metadata !2012}
!2018 = metadata !{i32 1047, i32 7, metadata !510, metadata !2012}
!2019 = metadata !{i32 1048, i32 9, metadata !513, metadata !2012}
!2020 = metadata !{i32 1049, i32 7, metadata !516, metadata !2012}
!2021 = metadata !{i32 1050, i32 7, metadata !516, metadata !2012}
!2022 = metadata !{i32 1054, i32 3, metadata !514, metadata !2012}
!2023 = metadata !{i32 1056, i32 9, metadata !520, metadata !2012}
!2024 = metadata !{i32 1057, i32 7, metadata !523, metadata !2012}
!2025 = metadata !{i32 1058, i32 7, metadata !523, metadata !2012}
!2026 = metadata !{i32 1059, i32 5, metadata !523, metadata !2012}
!2027 = metadata !{i32 1060, i32 11, metadata !527, metadata !2012}
!2028 = metadata !{i32 38, i32 10, metadata !89, metadata !2029}
!2029 = metadata !{i32 1062, i32 9, metadata !531, metadata !2012}
!2030 = metadata !{i32 1070, i32 15, metadata !511, metadata !2012}
!2031 = metadata !{i32 786688, metadata !511, metadata !"tmp_ndt_8", metadata !11, i32 1069, metadata !14, i32 0, metadata !2012} ; [ DW_TAG_auto_variable ] [tmp_ndt_8] [line 1069]
!2032 = metadata !{i32 1069, i32 7, metadata !511, metadata !2012}
!2033 = metadata !{i32 666, i32 5, metadata !679, null}
!2034 = metadata !{i32 668, i32 3, metadata !680, null}
!2035 = metadata !{i32 673, i32 1, metadata !21, null}
!2036 = metadata !{i32 38, i32 10, metadata !89, metadata !2037}
!2037 = metadata !{i32 1012, i32 9, metadata !775, metadata !1945}
!2038 = metadata !{i32 786689, metadata !22, metadata !"DisketteExtension", metadata !11, i32 16777890, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [DisketteExtension] [line 674]
!2039 = metadata !{i32 674, i32 38, metadata !22, null}
!2040 = metadata !{i32 680, i32 1, metadata !22, null}
!2041 = metadata !{i32 685, i32 3, metadata !2042, null}
!2042 = metadata !{i32 786443, metadata !10, metadata !25, i32 684, i32 3, i32 0, i32 182} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!2043 = metadata !{i32 686, i32 3, metadata !2042, null}
!2044 = metadata !{i32 687, i32 3, metadata !2042, null}
!2045 = metadata !{i32 688, i32 3, metadata !2042, null}
!2046 = metadata !{i32 689, i32 3, metadata !2042, null}
!2047 = metadata !{i32 690, i32 3, metadata !2042, null}
!2048 = metadata !{i32 693, i32 1, metadata !25, null}
!2049 = metadata !{i32 696, i32 13, metadata !26, null}
!2050 = metadata !{i32 786688, metadata !26, metadata !"irp", metadata !11, i32 696, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irp] [line 696]
!2051 = metadata !{i32 696, i32 7, metadata !26, null}
!2052 = metadata !{i32 699, i32 20, metadata !26, null}
!2053 = metadata !{i32 786688, metadata !26, metadata !"irp_choice", metadata !11, i32 699, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [irp_choice] [line 699]
!2054 = metadata !{i32 699, i32 7, metadata !26, null}
!2055 = metadata !{i32 700, i32 16, metadata !26, null}
!2056 = metadata !{i32 786688, metadata !26, metadata !"devobj", metadata !11, i32 700, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [devobj] [line 700]
!2057 = metadata !{i32 700, i32 7, metadata !26, null}
!2058 = metadata !{i32 703, i32 2, metadata !26, null}
!2059 = metadata !{i32 704, i32 2, metadata !26, null}
!2060 = metadata !{i32 705, i32 2, metadata !26, null}
!2061 = metadata !{i32 706, i32 2, metadata !26, null}
!2062 = metadata !{i32 707, i32 2, metadata !26, null}
!2063 = metadata !{i32 708, i32 2, metadata !26, null}
!2064 = metadata !{i32 709, i32 2, metadata !26, null}
!2065 = metadata !{i32 710, i32 2, metadata !26, null}
!2066 = metadata !{i32 711, i32 2, metadata !26, null}
!2067 = metadata !{i32 712, i32 2, metadata !26, null}
!2068 = metadata !{i32 713, i32 2, metadata !26, null}
!2069 = metadata !{i32 714, i32 2, metadata !26, null}
!2070 = metadata !{i32 715, i32 2, metadata !26, null}
!2071 = metadata !{i32 716, i32 2, metadata !26, null}
!2072 = metadata !{i32 717, i32 2, metadata !26, null}
!2073 = metadata !{i32 718, i32 2, metadata !26, null}
!2074 = metadata !{i32 719, i32 2, metadata !26, null}
!2075 = metadata !{i32 720, i32 2, metadata !26, null}
!2076 = metadata !{i32 721, i32 2, metadata !26, null}
!2077 = metadata !{i32 722, i32 2, metadata !26, null}
!2078 = metadata !{i32 723, i32 2, metadata !26, null}
!2079 = metadata !{i32 724, i32 2, metadata !26, null}
!2080 = metadata !{i32 725, i32 2, metadata !26, null}
!2081 = metadata !{i32 726, i32 2, metadata !26, null}
!2082 = metadata !{i32 786688, metadata !26, metadata !"status", metadata !11, i32 695, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [status] [line 695]
!2083 = metadata !{i32 695, i32 7, metadata !26, null}
!2084 = metadata !{i32 786688, metadata !26, metadata !"pirp", metadata !11, i32 697, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pirp] [line 697]
!2085 = metadata !{i32 697, i32 7, metadata !26, null}
!2086 = metadata !{i32 73, i32 3, metadata !91, metadata !2087}
!2087 = metadata !{i32 707, i32 3, metadata !2088, null}
!2088 = metadata !{i32 786443, metadata !10, metadata !2089, i32 729, i32 3, i32 0, i32 184} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!2089 = metadata !{i32 786443, metadata !10, metadata !26, i32 728, i32 3, i32 0, i32 183} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!2090 = metadata !{i32 74, i32 3, metadata !91, metadata !2087}
!2091 = metadata !{i32 75, i32 3, metadata !91, metadata !2087}
!2092 = metadata !{i32 76, i32 3, metadata !91, metadata !2087}
!2093 = metadata !{i32 77, i32 3, metadata !91, metadata !2087}
!2094 = metadata !{i32 78, i32 3, metadata !91, metadata !2087}
!2095 = metadata !{i32 79, i32 3, metadata !91, metadata !2087}
!2096 = metadata !{i32 80, i32 3, metadata !91, metadata !2087}
!2097 = metadata !{i32 81, i32 3, metadata !91, metadata !2087}
!2098 = metadata !{i32 82, i32 3, metadata !91, metadata !2087}
!2099 = metadata !{i32 83, i32 3, metadata !91, metadata !2087}
!2100 = metadata !{i32 84, i32 3, metadata !91, metadata !2087}
!2101 = metadata !{i32 85, i32 3, metadata !91, metadata !2087}
!2102 = metadata !{i32 86, i32 3, metadata !91, metadata !2087}
!2103 = metadata !{i32 709, i32 7, metadata !2104, null}
!2104 = metadata !{i32 786443, metadata !10, metadata !2089, i32 709, i32 7, i32 0, i32 185} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!2105 = metadata !{i32 710, i32 5, metadata !2106, null}
!2106 = metadata !{i32 786443, metadata !10, metadata !2104, i32 709, i32 20, i32 0, i32 186} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!2107 = metadata !{i32 711, i32 5, metadata !2106, null}
!2108 = metadata !{i32 712, i32 5, metadata !2106, null}
!2109 = metadata !{i32 713, i32 5, metadata !2106, null}
!2110 = metadata !{i32 714, i32 5, metadata !2106, null}
!2111 = metadata !{i32 715, i32 5, metadata !2106, null}
!2112 = metadata !{i32 786688, metadata !26, metadata !"pirp__IoStatus__Status", metadata !11, i32 698, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [pirp__IoStatus__Status] [line 698]
!2113 = metadata !{i32 698, i32 7, metadata !26, null}
!2114 = metadata !{i32 717, i32 5, metadata !2106, null}
!2115 = metadata !{i32 718, i32 9, metadata !2116, null}
!2116 = metadata !{i32 786443, metadata !10, metadata !2106, i32 718, i32 9, i32 0, i32 187} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!2117 = metadata !{i32 -1073741637}
!2118 = metadata !{i32 720, i32 7, metadata !2119, null}
!2119 = metadata !{i32 786443, metadata !10, metadata !2116, i32 718, i32 26, i32 0, i32 188} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!2120 = metadata !{i32 685, i32 3, metadata !2042, metadata !2121}
!2121 = metadata !{i32 725, i32 5, metadata !2122, null}
!2122 = metadata !{i32 786443, metadata !10, metadata !2106, i32 722, i32 5, i32 0, i32 189} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!2123 = metadata !{i32 686, i32 3, metadata !2042, metadata !2121}
!2124 = metadata !{i32 687, i32 3, metadata !2042, metadata !2121}
!2125 = metadata !{i32 688, i32 3, metadata !2042, metadata !2121}
!2126 = metadata !{i32 689, i32 3, metadata !2042, metadata !2121}
!2127 = metadata !{i32 690, i32 3, metadata !2042, metadata !2121}
!2128 = metadata !{i32 727, i32 9, metadata !2129, null}
!2129 = metadata !{i32 786443, metadata !10, metadata !2130, i32 727, i32 9, i32 0, i32 191} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!2130 = metadata !{i32 786443, metadata !10, metadata !2106, i32 727, i32 5, i32 0, i32 190} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!2131 = metadata !{i32 733, i32 17, metadata !2106, null}
!2132 = metadata !{i32 786688, metadata !2106, metadata !"tmp_ndt_1", metadata !11, i32 732, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp_ndt_1] [line 732]
!2133 = metadata !{i32 732, i32 9, metadata !2106, null}
!2134 = metadata !{i32 734, i32 9, metadata !2135, null}
!2135 = metadata !{i32 786443, metadata !10, metadata !2106, i32 734, i32 9, i32 0, i32 193} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!2136 = metadata !{i32 786689, metadata !16, metadata !"DeviceObject", metadata !11, i32 16777384, metadata !14, i32 0, metadata !2137} ; [ DW_TAG_arg_variable ] [DeviceObject] [line 168]
!2137 = metadata !{i32 740, i32 18, metadata !2138, null}
!2138 = metadata !{i32 786443, metadata !10, metadata !2139, i32 739, i32 9, i32 0, i32 198} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!2139 = metadata !{i32 786443, metadata !10, metadata !2140, i32 737, i32 14, i32 0, i32 197} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!2140 = metadata !{i32 786443, metadata !10, metadata !2141, i32 737, i32 11, i32 0, i32 196} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!2141 = metadata !{i32 786443, metadata !10, metadata !2135, i32 736, i32 12, i32 0, i32 195} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!2142 = metadata !{i32 168, i32 19, metadata !16, metadata !2137}
!2143 = metadata !{i32 786689, metadata !16, metadata !"Irp", metadata !11, i32 33554600, metadata !14, i32 0, metadata !2137} ; [ DW_TAG_arg_variable ] [Irp] [line 168]
!2144 = metadata !{i32 168, i32 38, metadata !16, metadata !2137}
!2145 = metadata !{i32 169, i32 39, metadata !16, metadata !2137}
!2146 = metadata !{i32 786688, metadata !16, metadata !"DeviceObject__DeviceExtension", metadata !11, i32 169, metadata !14, i32 0, metadata !2137} ; [ DW_TAG_auto_variable ] [DeviceObject__DeviceExtension] [line 169]
!2147 = metadata !{i32 169, i32 7, metadata !16, metadata !2137}
!2148 = metadata !{i32 170, i32 50, metadata !16, metadata !2137}
!2149 = metadata !{i32 786688, metadata !16, metadata !"Irp__Tail__Overlay__CurrentStackLocation", metadata !11, i32 170, metadata !14, i32 0, metadata !2137} ; [ DW_TAG_auto_variable ] [Irp__Tail__Overlay__CurrentStackLocation] [line 170]
!2150 = metadata !{i32 170, i32 7, metadata !16, metadata !2137}
!2151 = metadata !{i32 173, i32 30, metadata !16, metadata !2137}
!2152 = metadata !{i32 786688, metadata !16, metadata !"Irp__CurrentLocation", metadata !11, i32 173, metadata !14, i32 0, metadata !2137} ; [ DW_TAG_auto_variable ] [Irp__CurrentLocation] [line 173]
!2153 = metadata !{i32 173, i32 7, metadata !16, metadata !2137}
!2154 = metadata !{i32 174, i32 38, metadata !16, metadata !2137}
!2155 = metadata !{i32 786688, metadata !16, metadata !"disketteExtension__IsRemoved", metadata !11, i32 174, metadata !14, i32 0, metadata !2137} ; [ DW_TAG_auto_variable ] [disketteExtension__IsRemoved] [line 174]
!2156 = metadata !{i32 174, i32 7, metadata !16, metadata !2137}
!2157 = metadata !{i32 175, i32 38, metadata !16, metadata !2137}
!2158 = metadata !{i32 786688, metadata !16, metadata !"disketteExtension__IsStarted", metadata !11, i32 175, metadata !14, i32 0, metadata !2137} ; [ DW_TAG_auto_variable ] [disketteExtension__IsStarted] [line 175]
!2159 = metadata !{i32 175, i32 7, metadata !16, metadata !2137}
!2160 = metadata !{i32 176, i32 41, metadata !16, metadata !2137}
!2161 = metadata !{i32 786688, metadata !16, metadata !"disketteExtension__TargetObject", metadata !11, i32 176, metadata !14, i32 0, metadata !2137} ; [ DW_TAG_auto_variable ] [disketteExtension__TargetObject] [line 176]
!2162 = metadata !{i32 176, i32 7, metadata !16, metadata !2137}
!2163 = metadata !{i32 178, i32 41, metadata !16, metadata !2137}
!2164 = metadata !{i32 786688, metadata !16, metadata !"disketteExtension__FloppyThread", metadata !11, i32 178, metadata !14, i32 0, metadata !2137} ; [ DW_TAG_auto_variable ] [disketteExtension__FloppyThread] [line 178]
!2165 = metadata !{i32 178, i32 7, metadata !16, metadata !2137}
!2166 = metadata !{i32 179, i32 52, metadata !16, metadata !2137}
!2167 = metadata !{i32 786688, metadata !16, metadata !"disketteExtension__InterfaceString__Buffer", metadata !11, i32 179, metadata !14, i32 0, metadata !2137} ; [ DW_TAG_auto_variable ] [disketteExtension__InterfaceString__Buffer] [line 179]
!2168 = metadata !{i32 179, i32 7, metadata !16, metadata !2137}
!2169 = metadata !{i32 180, i32 44, metadata !16, metadata !2137}
!2170 = metadata !{i32 786688, metadata !16, metadata !"disketteExtension__InterfaceString", metadata !11, i32 180, metadata !14, i32 0, metadata !2137} ; [ DW_TAG_auto_variable ] [disketteExtension__InterfaceString] [line 180]
!2171 = metadata !{i32 180, i32 7, metadata !16, metadata !2137}
!2172 = metadata !{i32 181, i32 44, metadata !16, metadata !2137}
!2173 = metadata !{i32 786688, metadata !16, metadata !"disketteExtension__ArcName__Length", metadata !11, i32 181, metadata !14, i32 0, metadata !2137} ; [ DW_TAG_auto_variable ] [disketteExtension__ArcName__Length] [line 181]
!2174 = metadata !{i32 181, i32 7, metadata !16, metadata !2137}
!2175 = metadata !{i32 182, i32 36, metadata !16, metadata !2137}
!2176 = metadata !{i32 786688, metadata !16, metadata !"disketteExtension__ArcName", metadata !11, i32 182, metadata !14, i32 0, metadata !2137} ; [ DW_TAG_auto_variable ] [disketteExtension__ArcName] [line 182]
!2177 = metadata !{i32 182, i32 7, metadata !16, metadata !2137}
!2178 = metadata !{i32 183, i32 30, metadata !16, metadata !2137}
!2179 = metadata !{i32 786688, metadata !16, metadata !"irpSp__MinorFunction", metadata !11, i32 183, metadata !14, i32 0, metadata !2137} ; [ DW_TAG_auto_variable ] [irpSp__MinorFunction] [line 183]
!2180 = metadata !{i32 183, i32 7, metadata !16, metadata !2137}
!2181 = metadata !{i32 184, i32 52, metadata !16, metadata !2137}
!2182 = metadata !{i32 786688, metadata !16, metadata !"IoGetConfigurationInformation__FloppyCount", metadata !11, i32 184, metadata !14, i32 0, metadata !2137} ; [ DW_TAG_auto_variable ] [IoGetConfigurationInformation__FloppyCount] [line 184]
!2183 = metadata !{i32 184, i32 7, metadata !16, metadata !2137}
!2184 = metadata !{i32 188, i32 19, metadata !16, metadata !2137}
!2185 = metadata !{i32 786688, metadata !16, metadata !"doneEvent", metadata !11, i32 188, metadata !14, i32 0, metadata !2137} ; [ DW_TAG_auto_variable ] [doneEvent] [line 188]
!2186 = metadata !{i32 188, i32 7, metadata !16, metadata !2137}
!2187 = metadata !{i32 786688, metadata !16, metadata !"ntStatus", metadata !11, i32 187, metadata !14, i32 0, metadata !2137} ; [ DW_TAG_auto_variable ] [ntStatus] [line 187]
!2188 = metadata !{i32 187, i32 7, metadata !16, metadata !2137}
!2189 = metadata !{i32 198, i32 3, metadata !265, metadata !2137}
!2190 = metadata !{i32 786688, metadata !16, metadata !"disketteExtension", metadata !11, i32 186, metadata !14, i32 0, metadata !2137} ; [ DW_TAG_auto_variable ] [disketteExtension] [line 186]
!2191 = metadata !{i32 186, i32 7, metadata !16, metadata !2137}
!2192 = metadata !{i32 786688, metadata !16, metadata !"irpSp", metadata !11, i32 185, metadata !14, i32 0, metadata !2137} ; [ DW_TAG_auto_variable ] [irpSp] [line 185]
!2193 = metadata !{i32 185, i32 7, metadata !16, metadata !2137}
!2194 = metadata !{i32 206, i32 7, metadata !271, metadata !2137}
!2195 = metadata !{i32 786688, metadata !16, metadata !"Irp__IoStatus__Information", metadata !11, i32 171, metadata !14, i32 0, metadata !2137} ; [ DW_TAG_auto_variable ] [Irp__IoStatus__Information] [line 171]
!2196 = metadata !{i32 171, i32 7, metadata !16, metadata !2137}
!2197 = metadata !{i32 786688, metadata !16, metadata !"Irp__IoStatus__Status", metadata !11, i32 172, metadata !14, i32 0, metadata !2137} ; [ DW_TAG_auto_variable ] [Irp__IoStatus__Status] [line 172]
!2198 = metadata !{i32 172, i32 7, metadata !16, metadata !2137}
!2199 = metadata !{i32 210, i32 5, metadata !278, metadata !2137}
!2200 = metadata !{i32 786689, metadata !44, metadata !"Irp", metadata !11, i32 16778236, metadata !14, i32 0, metadata !2201} ; [ DW_TAG_arg_variable ] [Irp] [line 1020]
!2201 = metadata !{i32 211, i32 5, metadata !278, metadata !2137}
!2202 = metadata !{i32 1020, i32 29, metadata !44, metadata !2201}
!2203 = metadata !{i32 786689, metadata !44, metadata !"PriorityBoost", metadata !11, i32 33555452, metadata !14, i32 0, metadata !2201} ; [ DW_TAG_arg_variable ] [PriorityBoost] [line 1020]
!2204 = metadata !{i32 1020, i32 39, metadata !44, metadata !2201}
!2205 = metadata !{i32 1024, i32 7, metadata !286, metadata !2201}
!2206 = metadata !{i32 1025, i32 5, metadata !289, metadata !2201}
!2207 = metadata !{i32 213, i32 5, metadata !279, metadata !2137}
!2208 = metadata !{i32 38, i32 10, metadata !89, metadata !2209}
!2209 = metadata !{i32 1028, i32 5, metadata !293, metadata !2201}
!2210 = metadata !{i32 786689, metadata !17, metadata !"DeviceObject", metadata !11, i32 16777677, metadata !14, i32 0, metadata !2211} ; [ DW_TAG_arg_variable ] [DeviceObject] [line 461]
!2211 = metadata !{i32 243, i32 30, metadata !297, metadata !2137}
!2212 = metadata !{i32 461, i32 27, metadata !17, metadata !2211}
!2213 = metadata !{i32 786689, metadata !17, metadata !"Irp", metadata !11, i32 33554893, metadata !14, i32 0, metadata !2211} ; [ DW_TAG_arg_variable ] [Irp] [line 461]
!2214 = metadata !{i32 461, i32 46, metadata !17, metadata !2211}
!2215 = metadata !{i32 462, i32 39, metadata !17, metadata !2211}
!2216 = metadata !{i32 786688, metadata !17, metadata !"DeviceObject__DeviceExtension", metadata !11, i32 462, metadata !14, i32 0, metadata !2211} ; [ DW_TAG_auto_variable ] [DeviceObject__DeviceExtension] [line 462]
!2217 = metadata !{i32 462, i32 7, metadata !17, metadata !2211}
!2218 = metadata !{i32 463, i32 50, metadata !17, metadata !2211}
!2219 = metadata !{i32 786688, metadata !17, metadata !"Irp__Tail__Overlay__CurrentStackLocation", metadata !11, i32 463, metadata !14, i32 0, metadata !2211} ; [ DW_TAG_auto_variable ] [Irp__Tail__Overlay__CurrentStackLocation] [line 463]
!2220 = metadata !{i32 463, i32 7, metadata !17, metadata !2211}
!2221 = metadata !{i32 465, i32 41, metadata !17, metadata !2211}
!2222 = metadata !{i32 786688, metadata !17, metadata !"disketteExtension__TargetObject", metadata !11, i32 465, metadata !14, i32 0, metadata !2211} ; [ DW_TAG_auto_variable ] [disketteExtension__TargetObject] [line 465]
!2223 = metadata !{i32 465, i32 7, metadata !17, metadata !2211}
!2224 = metadata !{i32 467, i32 38, metadata !17, metadata !2211}
!2225 = metadata !{i32 786688, metadata !17, metadata !"disketteExtension__DriveType", metadata !11, i32 467, metadata !14, i32 0, metadata !2211} ; [ DW_TAG_auto_variable ] [disketteExtension__DriveType] [line 467]
!2226 = metadata !{i32 467, i32 7, metadata !17, metadata !2211}
!2227 = metadata !{i32 471, i32 42, metadata !17, metadata !2211}
!2228 = metadata !{i32 786688, metadata !17, metadata !"disketteExtension__UnderlyingPDO", metadata !11, i32 471, metadata !14, i32 0, metadata !2211} ; [ DW_TAG_auto_variable ] [disketteExtension__UnderlyingPDO] [line 471]
!2229 = metadata !{i32 471, i32 7, metadata !17, metadata !2211}
!2230 = metadata !{i32 472, i32 44, metadata !17, metadata !2211}
!2231 = metadata !{i32 786688, metadata !17, metadata !"disketteExtension__InterfaceString", metadata !11, i32 472, metadata !14, i32 0, metadata !2211} ; [ DW_TAG_auto_variable ] [disketteExtension__InterfaceString] [line 472]
!2232 = metadata !{i32 472, i32 7, metadata !17, metadata !2211}
!2233 = metadata !{i32 477, i32 19, metadata !17, metadata !2211}
!2234 = metadata !{i32 786688, metadata !17, metadata !"doneEvent", metadata !11, i32 477, metadata !14, i32 0, metadata !2211} ; [ DW_TAG_auto_variable ] [doneEvent] [line 477]
!2235 = metadata !{i32 477, i32 7, metadata !17, metadata !2211}
!2236 = metadata !{i32 478, i32 17, metadata !17, metadata !2211}
!2237 = metadata !{i32 786688, metadata !17, metadata !"fdcInfo", metadata !11, i32 478, metadata !14, i32 0, metadata !2211} ; [ DW_TAG_auto_variable ] [fdcInfo] [line 478]
!2238 = metadata !{i32 478, i32 7, metadata !17, metadata !2211}
!2239 = metadata !{i32 481, i32 34, metadata !17, metadata !2211}
!2240 = metadata !{i32 786688, metadata !17, metadata !"fdcInfo__MaxTransferSize", metadata !11, i32 481, metadata !14, i32 0, metadata !2211} ; [ DW_TAG_auto_variable ] [fdcInfo__MaxTransferSize] [line 481]
!2241 = metadata !{i32 481, i32 7, metadata !17, metadata !2211}
!2242 = metadata !{i32 482, i32 27, metadata !17, metadata !2211}
!2243 = metadata !{i32 786688, metadata !17, metadata !"fdcInfo__AcpiBios", metadata !11, i32 482, metadata !14, i32 0, metadata !2211} ; [ DW_TAG_auto_variable ] [fdcInfo__AcpiBios] [line 482]
!2244 = metadata !{i32 482, i32 7, metadata !17, metadata !2211}
!2245 = metadata !{i32 483, i32 35, metadata !17, metadata !2211}
!2246 = metadata !{i32 786688, metadata !17, metadata !"fdcInfo__AcpiFdiSupported", metadata !11, i32 483, metadata !14, i32 0, metadata !2211} ; [ DW_TAG_auto_variable ] [fdcInfo__AcpiFdiSupported] [line 483]
!2247 = metadata !{i32 483, i32 7, metadata !17, metadata !2211}
!2248 = metadata !{i32 484, i32 35, metadata !17, metadata !2211}
!2249 = metadata !{i32 786688, metadata !17, metadata !"fdcInfo__PeripheralNumber", metadata !11, i32 484, metadata !14, i32 0, metadata !2211} ; [ DW_TAG_auto_variable ] [fdcInfo__PeripheralNumber] [line 484]
!2250 = metadata !{i32 484, i32 7, metadata !17, metadata !2211}
!2251 = metadata !{i32 486, i32 35, metadata !17, metadata !2211}
!2252 = metadata !{i32 786688, metadata !17, metadata !"fdcInfo__ControllerNumber", metadata !11, i32 486, metadata !14, i32 0, metadata !2211} ; [ DW_TAG_auto_variable ] [fdcInfo__ControllerNumber] [line 486]
!2253 = metadata !{i32 486, i32 7, metadata !17, metadata !2211}
!2254 = metadata !{i32 487, i32 29, metadata !17, metadata !2211}
!2255 = metadata !{i32 786688, metadata !17, metadata !"fdcInfo__UnitNumber", metadata !11, i32 487, metadata !14, i32 0, metadata !2211} ; [ DW_TAG_auto_variable ] [fdcInfo__UnitNumber] [line 487]
!2256 = metadata !{i32 487, i32 7, metadata !17, metadata !2211}
!2257 = metadata !{i32 488, i32 28, metadata !17, metadata !2211}
!2258 = metadata !{i32 786688, metadata !17, metadata !"fdcInfo__BusNumber", metadata !11, i32 488, metadata !14, i32 0, metadata !2211} ; [ DW_TAG_auto_variable ] [fdcInfo__BusNumber] [line 488]
!2259 = metadata !{i32 488, i32 7, metadata !17, metadata !2211}
!2260 = metadata !{i32 500, i32 61, metadata !17, metadata !2211}
!2261 = metadata !{i32 786688, metadata !17, metadata !"KUSER_SHARED_DATA__AlternativeArchitecture_NEC98x86", metadata !11, i32 500, metadata !14, i32 0, metadata !2211} ; [ DW_TAG_auto_variable ] [KUSER_SHARED_DATA__AlternativeArchitecture_NEC98x86] [line 500]
!2262 = metadata !{i32 500, i32 7, metadata !17, metadata !2211}
!2263 = metadata !{i32 786688, metadata !17, metadata !"disketteExtension", metadata !11, i32 491, metadata !14, i32 0, metadata !2211} ; [ DW_TAG_auto_variable ] [disketteExtension] [line 491]
!2264 = metadata !{i32 491, i32 7, metadata !17, metadata !2211}
!2265 = metadata !{i32 786688, metadata !17, metadata !"irpSp", metadata !11, i32 492, metadata !14, i32 0, metadata !2211} ; [ DW_TAG_auto_variable ] [irpSp] [line 492]
!2266 = metadata !{i32 492, i32 7, metadata !17, metadata !2211}
!2267 = metadata !{i32 786688, metadata !17, metadata !"irpSp___0", metadata !11, i32 493, metadata !14, i32 0, metadata !2211} ; [ DW_TAG_auto_variable ] [irpSp___0] [line 493]
!2268 = metadata !{i32 493, i32 7, metadata !17, metadata !2211}
!2269 = metadata !{i32 786688, metadata !17, metadata !"nextIrpSp__Control", metadata !11, i32 495, metadata !14, i32 0, metadata !2211} ; [ DW_TAG_auto_variable ] [nextIrpSp__Control] [line 495]
!2270 = metadata !{i32 495, i32 7, metadata !17, metadata !2211}
!2271 = metadata !{i32 510, i32 7, metadata !374, metadata !2211}
!2272 = metadata !{i32 38, i32 10, metadata !89, metadata !2273}
!2273 = metadata !{i32 512, i32 5, metadata !378, metadata !2211}
!2274 = metadata !{i32 515, i32 9, metadata !381, metadata !2211}
!2275 = metadata !{i32 38, i32 10, metadata !89, metadata !2276}
!2276 = metadata !{i32 517, i32 7, metadata !385, metadata !2211}
!2277 = metadata !{i32 520, i32 7, metadata !388, metadata !2211}
!2278 = metadata !{i32 786688, metadata !17, metadata !"irpSp__Context", metadata !11, i32 498, metadata !14, i32 0, metadata !2211} ; [ DW_TAG_auto_variable ] [irpSp__Context] [line 498]
!2279 = metadata !{i32 498, i32 7, metadata !17, metadata !2211}
!2280 = metadata !{i32 786688, metadata !17, metadata !"irpSp__Control", metadata !11, i32 497, metadata !14, i32 0, metadata !2211} ; [ DW_TAG_auto_variable ] [irpSp__Control] [line 497]
!2281 = metadata !{i32 497, i32 7, metadata !17, metadata !2211}
!2282 = metadata !{i32 786689, metadata !43, metadata !"DeviceObject", metadata !11, i32 16778165, metadata !14, i32 0, metadata !2283} ; [ DW_TAG_arg_variable ] [DeviceObject] [line 949]
!2283 = metadata !{i32 530, i32 14, metadata !396, metadata !2211}
!2284 = metadata !{i32 949, i32 23, metadata !43, metadata !2283}
!2285 = metadata !{i32 786689, metadata !43, metadata !"Irp", metadata !11, i32 33555381, metadata !14, i32 0, metadata !2283} ; [ DW_TAG_arg_variable ] [Irp] [line 949]
!2286 = metadata !{i32 949, i32 42, metadata !43, metadata !2283}
!2287 = metadata !{i32 953, i32 18, metadata !43, metadata !2283}
!2288 = metadata !{i32 786688, metadata !43, metadata !"lcontext", metadata !11, i32 953, metadata !14, i32 0, metadata !2283} ; [ DW_TAG_auto_variable ] [lcontext] [line 953]
!2289 = metadata !{i32 953, i32 7, metadata !43, metadata !2283}
!2290 = metadata !{i32 956, i32 7, metadata !404, metadata !2283}
!2291 = metadata !{i32 786689, metadata !18, metadata !"DeviceObject", metadata !11, i32 16777845, metadata !14, i32 0, metadata !2292} ; [ DW_TAG_arg_variable ] [DeviceObject] [line 629]
!2292 = metadata !{i32 958, i32 22, metadata !408, metadata !2283}
!2293 = metadata !{i32 629, i32 27, metadata !18, metadata !2292}
!2294 = metadata !{i32 786689, metadata !18, metadata !"Irp", metadata !11, i32 33555061, metadata !14, i32 0, metadata !2292} ; [ DW_TAG_arg_variable ] [Irp] [line 629]
!2295 = metadata !{i32 629, i32 46, metadata !18, metadata !2292}
!2296 = metadata !{i32 786689, metadata !18, metadata !"Context", metadata !11, i32 50332277, metadata !14, i32 0, metadata !2292} ; [ DW_TAG_arg_variable ] [Context] [line 629]
!2297 = metadata !{i32 629, i32 56, metadata !18, metadata !2292}
!2298 = metadata !{i32 786689, metadata !47, metadata !"Event", metadata !11, i32 16778250, metadata !14, i32 0, metadata !2299} ; [ DW_TAG_arg_variable ] [Event] [line 1034]
!2299 = metadata !{i32 634, i32 3, metadata !417, metadata !2292}
!2300 = metadata !{i32 1034, i32 20, metadata !47, metadata !2299}
!2301 = metadata !{i32 786689, metadata !47, metadata !"Increment", metadata !11, i32 33555466, metadata !14, i32 0, metadata !2299} ; [ DW_TAG_arg_variable ] [Increment] [line 1034]
!2302 = metadata !{i32 1034, i32 32, metadata !47, metadata !2299}
!2303 = metadata !{i32 786689, metadata !47, metadata !"Wait", metadata !11, i32 50332682, metadata !14, i32 0, metadata !2299} ; [ DW_TAG_arg_variable ] [Wait] [line 1034]
!2304 = metadata !{i32 1034, i32 48, metadata !47, metadata !2299}
!2305 = metadata !{i32 1035, i32 11, metadata !47, metadata !2299}
!2306 = metadata !{i32 786688, metadata !47, metadata !"l", metadata !11, i32 1035, metadata !14, i32 0, metadata !2299} ; [ DW_TAG_auto_variable ] [l] [line 1035]
!2307 = metadata !{i32 1035, i32 7, metadata !47, metadata !2299}
!2308 = metadata !{i32 1038, i32 3, metadata !429, metadata !2299}
!2309 = metadata !{i32 786688, metadata !43, metadata !"compRetStatus1", metadata !11, i32 952, metadata !14, i32 0, metadata !2283} ; [ DW_TAG_auto_variable ] [compRetStatus1] [line 952]
!2310 = metadata !{i32 952, i32 7, metadata !43, metadata !2283}
!2311 = metadata !{i32 786688, metadata !43, metadata !"__cil_tmp7", metadata !11, i32 954, metadata !435, i32 0, metadata !2283} ; [ DW_TAG_auto_variable ] [__cil_tmp7] [line 954]
!2312 = metadata !{i32 954, i32 17, metadata !43, metadata !2283}
!2313 = metadata !{i32 939, i32 7, metadata !438, metadata !2314}
!2314 = metadata !{i32 962, i32 7, metadata !441, metadata !2283}
!2315 = metadata !{i32 940, i32 5, metadata !446, metadata !2314}
!2316 = metadata !{i32 964, i32 5, metadata !442, metadata !2283}
!2317 = metadata !{i32 38, i32 10, metadata !89, metadata !2318}
!2318 = metadata !{i32 943, i32 5, metadata !450, metadata !2314}
!2319 = metadata !{i32 971, i32 16, metadata !405, metadata !2283}
!2320 = metadata !{i32 786688, metadata !405, metadata !"tmp_ndt_12", metadata !11, i32 970, metadata !14, i32 0, metadata !2283} ; [ DW_TAG_auto_variable ] [tmp_ndt_12] [line 970]
!2321 = metadata !{i32 970, i32 7, metadata !405, metadata !2283}
!2322 = metadata !{i32 972, i32 7, metadata !456, metadata !2283}
!2323 = metadata !{i32 974, i32 17, metadata !458, metadata !2283}
!2324 = metadata !{i32 786688, metadata !458, metadata !"tmp_ndt_7", metadata !11, i32 973, metadata !14, i32 0, metadata !2283} ; [ DW_TAG_auto_variable ] [tmp_ndt_7] [line 973]
!2325 = metadata !{i32 973, i32 9, metadata !458, metadata !2283}
!2326 = metadata !{i32 975, i32 9, metadata !462, metadata !2283}
!2327 = metadata !{i32 786688, metadata !43, metadata !"returnVal2", metadata !11, i32 951, metadata !14, i32 0, metadata !2283} ; [ DW_TAG_auto_variable ] [returnVal2] [line 951]
!2328 = metadata !{i32 951, i32 7, metadata !43, metadata !2283}
!2329 = metadata !{i32 994, i32 7, metadata !467, metadata !2283}
!2330 = metadata !{i32 995, i32 5, metadata !469, metadata !2283}
!2331 = metadata !{i32 996, i32 5, metadata !469, metadata !2283}
!2332 = metadata !{i32 997, i32 3, metadata !469, metadata !2283}
!2333 = metadata !{i32 998, i32 9, metadata !473, metadata !2283}
!2334 = metadata !{i32 999, i32 11, metadata !476, metadata !2283}
!2335 = metadata !{i32 1000, i32 9, metadata !479, metadata !2283}
!2336 = metadata !{i32 1001, i32 9, metadata !479, metadata !2283}
!2337 = metadata !{i32 1002, i32 7, metadata !479, metadata !2283}
!2338 = metadata !{i32 1003, i32 9, metadata !483, metadata !2283}
!2339 = metadata !{i32 1004, i32 9, metadata !483, metadata !2283}
!2340 = metadata !{i32 1007, i32 11, metadata !486, metadata !2283}
!2341 = metadata !{i32 1008, i32 9, metadata !489, metadata !2283}
!2342 = metadata !{i32 1009, i32 9, metadata !489, metadata !2283}
!2343 = metadata !{i32 786688, metadata !17, metadata !"ntStatus", metadata !11, i32 475, metadata !14, i32 0, metadata !2211} ; [ DW_TAG_auto_variable ] [ntStatus] [line 475]
!2344 = metadata !{i32 475, i32 7, metadata !17, metadata !2211}
!2345 = metadata !{i32 532, i32 3, metadata !494, metadata !2211}
!2346 = metadata !{i32 786688, metadata !17, metadata !"__cil_tmp42", metadata !11, i32 501, metadata !496, i32 0, metadata !2211} ; [ DW_TAG_auto_variable ] [__cil_tmp42] [line 501]
!2347 = metadata !{i32 501, i32 8, metadata !17, metadata !2211}
!2348 = metadata !{i32 532, i32 7, metadata !499, metadata !2211}
!2349 = metadata !{i32 786689, metadata !48, metadata !"Object", metadata !11, i32 16778258, metadata !14, i32 0, metadata !2350} ; [ DW_TAG_arg_variable ] [Object] [line 1042]
!2350 = metadata !{i32 534, i32 16, metadata !502, metadata !2211}
!2351 = metadata !{i32 1042, i32 31, metadata !48, metadata !2350}
!2352 = metadata !{i32 786689, metadata !48, metadata !"Alertable", metadata !11, i32 67109906, metadata !14, i32 0, metadata !2350} ; [ DW_TAG_arg_variable ] [Alertable] [line 1042]
!2353 = metadata !{i32 1042, i32 76, metadata !48, metadata !2350}
!2354 = metadata !{i32 786689, metadata !48, metadata !"Timeout", metadata !11, i32 83887123, metadata !14, i32 0, metadata !2350} ; [ DW_TAG_arg_variable ] [Timeout] [line 1043]
!2355 = metadata !{i32 1043, i32 31, metadata !48, metadata !2350}
!2356 = metadata !{i32 1047, i32 7, metadata !510, metadata !2350}
!2357 = metadata !{i32 1048, i32 9, metadata !513, metadata !2350}
!2358 = metadata !{i32 1049, i32 7, metadata !516, metadata !2350}
!2359 = metadata !{i32 1050, i32 7, metadata !516, metadata !2350}
!2360 = metadata !{i32 1054, i32 3, metadata !514, metadata !2350}
!2361 = metadata !{i32 1056, i32 9, metadata !520, metadata !2350}
!2362 = metadata !{i32 1057, i32 7, metadata !523, metadata !2350}
!2363 = metadata !{i32 1058, i32 7, metadata !523, metadata !2350}
!2364 = metadata !{i32 1059, i32 5, metadata !523, metadata !2350}
!2365 = metadata !{i32 1060, i32 11, metadata !527, metadata !2350}
!2366 = metadata !{i32 38, i32 10, metadata !89, metadata !2367}
!2367 = metadata !{i32 1062, i32 9, metadata !531, metadata !2350}
!2368 = metadata !{i32 1070, i32 15, metadata !511, metadata !2350}
!2369 = metadata !{i32 786688, metadata !511, metadata !"tmp_ndt_8", metadata !11, i32 1069, metadata !14, i32 0, metadata !2350} ; [ DW_TAG_auto_variable ] [tmp_ndt_8] [line 1069]
!2370 = metadata !{i32 1069, i32 7, metadata !511, metadata !2350}
!2371 = metadata !{i32 537, i32 3, metadata !503, metadata !2211}
!2372 = metadata !{i32 786688, metadata !17, metadata !"fdcInfo__BufferCount", metadata !11, i32 479, metadata !14, i32 0, metadata !2211} ; [ DW_TAG_auto_variable ] [fdcInfo__BufferCount] [line 479]
!2373 = metadata !{i32 479, i32 7, metadata !17, metadata !2211}
!2374 = metadata !{i32 786688, metadata !17, metadata !"fdcInfo__BufferSize", metadata !11, i32 480, metadata !14, i32 0, metadata !2211} ; [ DW_TAG_auto_variable ] [fdcInfo__BufferSize] [line 480]
!2375 = metadata !{i32 480, i32 7, metadata !17, metadata !2211}
!2376 = metadata !{i32 786688, metadata !17, metadata !"__cil_tmp43", metadata !11, i32 502, metadata !14, i32 0, metadata !2211} ; [ DW_TAG_auto_variable ] [__cil_tmp43] [line 502]
!2377 = metadata !{i32 502, i32 7, metadata !17, metadata !2211}
!2378 = metadata !{i32 786688, metadata !17, metadata !"__cil_tmp44", metadata !11, i32 503, metadata !14, i32 0, metadata !2211} ; [ DW_TAG_auto_variable ] [__cil_tmp44] [line 503]
!2379 = metadata !{i32 503, i32 7, metadata !17, metadata !2211}
!2380 = metadata !{i32 786688, metadata !17, metadata !"__cil_tmp45", metadata !11, i32 504, metadata !14, i32 0, metadata !2211} ; [ DW_TAG_auto_variable ] [__cil_tmp45] [line 504]
!2381 = metadata !{i32 504, i32 7, metadata !17, metadata !2211}
!2382 = metadata !{i32 786688, metadata !17, metadata !"__cil_tmp46", metadata !11, i32 505, metadata !14, i32 0, metadata !2211} ; [ DW_TAG_auto_variable ] [__cil_tmp46] [line 505]
!2383 = metadata !{i32 505, i32 7, metadata !17, metadata !2211}
!2384 = metadata !{i32 786689, metadata !21, metadata !"DeviceObject", metadata !11, i32 16777855, metadata !14, i32 0, metadata !2385} ; [ DW_TAG_arg_variable ] [DeviceObject] [line 639]
!2385 = metadata !{i32 543, i32 14, metadata !555, metadata !2211}
!2386 = metadata !{i32 639, i32 23, metadata !21, metadata !2385}
!2387 = metadata !{i32 786689, metadata !21, metadata !"Ioctl", metadata !11, i32 33555071, metadata !14, i32 0, metadata !2385} ; [ DW_TAG_arg_variable ] [Ioctl] [line 639]
!2388 = metadata !{i32 639, i32 42, metadata !21, metadata !2385}
!2389 = metadata !{i32 786689, metadata !21, metadata !"Data", metadata !11, i32 50332287, metadata !14, i32 0, metadata !2385} ; [ DW_TAG_arg_variable ] [Data] [line 639]
!2390 = metadata !{i32 639, i32 54, metadata !21, metadata !2385}
!2391 = metadata !{i32 643, i32 19, metadata !21, metadata !2385}
!2392 = metadata !{i32 786688, metadata !21, metadata !"doneEvent", metadata !11, i32 643, metadata !14, i32 0, metadata !2385} ; [ DW_TAG_auto_variable ] [doneEvent] [line 643]
!2393 = metadata !{i32 643, i32 7, metadata !21, metadata !2385}
!2394 = metadata !{i32 644, i32 18, metadata !21, metadata !2385}
!2395 = metadata !{i32 786688, metadata !21, metadata !"ioStatus", metadata !11, i32 644, metadata !14, i32 0, metadata !2385} ; [ DW_TAG_auto_variable ] [ioStatus] [line 644]
!2396 = metadata !{i32 644, i32 7, metadata !21, metadata !2385}
!2397 = metadata !{i32 645, i32 50, metadata !21, metadata !2385}
!2398 = metadata !{i32 786688, metadata !21, metadata !"irp__Tail__Overlay__CurrentStackLocation", metadata !11, i32 645, metadata !14, i32 0, metadata !2385} ; [ DW_TAG_auto_variable ] [irp__Tail__Overlay__CurrentStackLocation] [line 645]
!2399 = metadata !{i32 645, i32 7, metadata !21, metadata !2385}
!2400 = metadata !{i32 786689, metadata !29, metadata !"IoControlCode", metadata !11, i32 16778039, metadata !14, i32 0, metadata !2401} ; [ DW_TAG_arg_variable ] [IoControlCode] [line 823]
!2401 = metadata !{i32 650, i32 9, metadata !572, metadata !2385}
!2402 = metadata !{i32 823, i32 39, metadata !29, metadata !2401}
!2403 = metadata !{i32 786689, metadata !29, metadata !"DeviceObject", metadata !11, i32 33555255, metadata !14, i32 0, metadata !2401} ; [ DW_TAG_arg_variable ] [DeviceObject] [line 823]
!2404 = metadata !{i32 823, i32 59, metadata !29, metadata !2401}
!2405 = metadata !{i32 786689, metadata !29, metadata !"InputBuffer", metadata !11, i32 50332471, metadata !14, i32 0, metadata !2401} ; [ DW_TAG_arg_variable ] [InputBuffer] [line 823]
!2406 = metadata !{i32 823, i32 78, metadata !29, metadata !2401}
!2407 = metadata !{i32 786689, metadata !29, metadata !"InputBufferLength", metadata !11, i32 67109688, metadata !14, i32 0, metadata !2401} ; [ DW_TAG_arg_variable ] [InputBufferLength] [line 824]
!2408 = metadata !{i32 824, i32 39, metadata !29, metadata !2401}
!2409 = metadata !{i32 786689, metadata !29, metadata !"OutputBuffer", metadata !11, i32 83886904, metadata !14, i32 0, metadata !2401} ; [ DW_TAG_arg_variable ] [OutputBuffer] [line 824]
!2410 = metadata !{i32 824, i32 63, metadata !29, metadata !2401}
!2411 = metadata !{i32 786689, metadata !29, metadata !"OutputBufferLength", metadata !11, i32 100664120, metadata !14, i32 0, metadata !2401} ; [ DW_TAG_arg_variable ] [OutputBufferLength] [line 824]
!2412 = metadata !{i32 824, i32 82, metadata !29, metadata !2401}
!2413 = metadata !{i32 786689, metadata !29, metadata !"InternalDeviceIoControl", metadata !11, i32 117441337, metadata !14, i32 0, metadata !2401} ; [ DW_TAG_arg_variable ] [InternalDeviceIoControl] [line 825]
!2414 = metadata !{i32 825, i32 39, metadata !29, metadata !2401}
!2415 = metadata !{i32 786689, metadata !29, metadata !"Event", metadata !11, i32 134218553, metadata !14, i32 0, metadata !2401} ; [ DW_TAG_arg_variable ] [Event] [line 825]
!2416 = metadata !{i32 825, i32 69, metadata !29, metadata !2401}
!2417 = metadata !{i32 786689, metadata !29, metadata !"IoStatusBlock", metadata !11, i32 150995769, metadata !14, i32 0, metadata !2401} ; [ DW_TAG_arg_variable ] [IoStatusBlock] [line 825]
!2418 = metadata !{i32 825, i32 81, metadata !29, metadata !2401}
!2419 = metadata !{i32 827, i32 16, metadata !29, metadata !2401}
!2420 = metadata !{i32 786688, metadata !29, metadata !"malloc", metadata !11, i32 827, metadata !14, i32 0, metadata !2401} ; [ DW_TAG_auto_variable ] [malloc] [line 827]
!2421 = metadata !{i32 827, i32 7, metadata !29, metadata !2401}
!2422 = metadata !{i32 830, i32 3, metadata !595, metadata !2401}
!2423 = metadata !{i32 832, i32 15, metadata !595, metadata !2401}
!2424 = metadata !{i32 786688, metadata !595, metadata !"tmp_ndt_2", metadata !11, i32 831, metadata !14, i32 0, metadata !2401} ; [ DW_TAG_auto_variable ] [tmp_ndt_2] [line 831]
!2425 = metadata !{i32 831, i32 7, metadata !595, metadata !2401}
!2426 = metadata !{i32 833, i32 7, metadata !600, metadata !2401}
!2427 = metadata !{i32 786688, metadata !21, metadata !"irp", metadata !11, i32 641, metadata !14, i32 0, metadata !2385} ; [ DW_TAG_auto_variable ] [irp] [line 641]
!2428 = metadata !{i32 641, i32 7, metadata !21, metadata !2385}
!2429 = metadata !{i32 653, i32 7, metadata !604, metadata !2385}
!2430 = metadata !{i32 786688, metadata !21, metadata !"irpStack__Parameters__DeviceIoControl__Type3InputBuffer", metadata !11, i32 646, metadata !14, i32 0, metadata !2385} ; [ DW_TAG_auto_variable ] [irpStack__Parameters__DeviceIoControl__Type3InputBuffer] [line 646]
!2431 = metadata !{i32 646, i32 7, metadata !21, metadata !2385}
!2432 = metadata !{i32 786689, metadata !43, metadata !"DeviceObject", metadata !11, i32 16778165, metadata !14, i32 0, metadata !2433} ; [ DW_TAG_arg_variable ] [DeviceObject] [line 949]
!2433 = metadata !{i32 661, i32 14, metadata !609, metadata !2385}
!2434 = metadata !{i32 949, i32 23, metadata !43, metadata !2433}
!2435 = metadata !{i32 786689, metadata !43, metadata !"Irp", metadata !11, i32 33555381, metadata !14, i32 0, metadata !2433} ; [ DW_TAG_arg_variable ] [Irp] [line 949]
!2436 = metadata !{i32 949, i32 42, metadata !43, metadata !2433}
!2437 = metadata !{i32 953, i32 18, metadata !43, metadata !2433}
!2438 = metadata !{i32 786688, metadata !43, metadata !"lcontext", metadata !11, i32 953, metadata !14, i32 0, metadata !2433} ; [ DW_TAG_auto_variable ] [lcontext] [line 953]
!2439 = metadata !{i32 953, i32 7, metadata !43, metadata !2433}
!2440 = metadata !{i32 956, i32 7, metadata !404, metadata !2433}
!2441 = metadata !{i32 786689, metadata !18, metadata !"DeviceObject", metadata !11, i32 16777845, metadata !14, i32 0, metadata !2442} ; [ DW_TAG_arg_variable ] [DeviceObject] [line 629]
!2442 = metadata !{i32 958, i32 22, metadata !408, metadata !2433}
!2443 = metadata !{i32 629, i32 27, metadata !18, metadata !2442}
!2444 = metadata !{i32 786689, metadata !18, metadata !"Irp", metadata !11, i32 33555061, metadata !14, i32 0, metadata !2442} ; [ DW_TAG_arg_variable ] [Irp] [line 629]
!2445 = metadata !{i32 629, i32 46, metadata !18, metadata !2442}
!2446 = metadata !{i32 786689, metadata !18, metadata !"Context", metadata !11, i32 50332277, metadata !14, i32 0, metadata !2442} ; [ DW_TAG_arg_variable ] [Context] [line 629]
!2447 = metadata !{i32 629, i32 56, metadata !18, metadata !2442}
!2448 = metadata !{i32 786689, metadata !47, metadata !"Event", metadata !11, i32 16778250, metadata !14, i32 0, metadata !2449} ; [ DW_TAG_arg_variable ] [Event] [line 1034]
!2449 = metadata !{i32 634, i32 3, metadata !417, metadata !2442}
!2450 = metadata !{i32 1034, i32 20, metadata !47, metadata !2449}
!2451 = metadata !{i32 786689, metadata !47, metadata !"Increment", metadata !11, i32 33555466, metadata !14, i32 0, metadata !2449} ; [ DW_TAG_arg_variable ] [Increment] [line 1034]
!2452 = metadata !{i32 1034, i32 32, metadata !47, metadata !2449}
!2453 = metadata !{i32 786689, metadata !47, metadata !"Wait", metadata !11, i32 50332682, metadata !14, i32 0, metadata !2449} ; [ DW_TAG_arg_variable ] [Wait] [line 1034]
!2454 = metadata !{i32 1034, i32 48, metadata !47, metadata !2449}
!2455 = metadata !{i32 1035, i32 11, metadata !47, metadata !2449}
!2456 = metadata !{i32 786688, metadata !47, metadata !"l", metadata !11, i32 1035, metadata !14, i32 0, metadata !2449} ; [ DW_TAG_auto_variable ] [l] [line 1035]
!2457 = metadata !{i32 1035, i32 7, metadata !47, metadata !2449}
!2458 = metadata !{i32 1038, i32 3, metadata !429, metadata !2449}
!2459 = metadata !{i32 786688, metadata !43, metadata !"compRetStatus1", metadata !11, i32 952, metadata !14, i32 0, metadata !2433} ; [ DW_TAG_auto_variable ] [compRetStatus1] [line 952]
!2460 = metadata !{i32 952, i32 7, metadata !43, metadata !2433}
!2461 = metadata !{i32 786688, metadata !43, metadata !"__cil_tmp7", metadata !11, i32 954, metadata !435, i32 0, metadata !2433} ; [ DW_TAG_auto_variable ] [__cil_tmp7] [line 954]
!2462 = metadata !{i32 954, i32 17, metadata !43, metadata !2433}
!2463 = metadata !{i32 939, i32 7, metadata !438, metadata !2464}
!2464 = metadata !{i32 962, i32 7, metadata !441, metadata !2433}
!2465 = metadata !{i32 940, i32 5, metadata !446, metadata !2464}
!2466 = metadata !{i32 964, i32 5, metadata !442, metadata !2433}
!2467 = metadata !{i32 38, i32 10, metadata !89, metadata !2468}
!2468 = metadata !{i32 943, i32 5, metadata !450, metadata !2464}
!2469 = metadata !{i32 971, i32 16, metadata !405, metadata !2433}
!2470 = metadata !{i32 786688, metadata !405, metadata !"tmp_ndt_12", metadata !11, i32 970, metadata !14, i32 0, metadata !2433} ; [ DW_TAG_auto_variable ] [tmp_ndt_12] [line 970]
!2471 = metadata !{i32 970, i32 7, metadata !405, metadata !2433}
!2472 = metadata !{i32 972, i32 7, metadata !456, metadata !2433}
!2473 = metadata !{i32 974, i32 17, metadata !458, metadata !2433}
!2474 = metadata !{i32 786688, metadata !458, metadata !"tmp_ndt_7", metadata !11, i32 973, metadata !14, i32 0, metadata !2433} ; [ DW_TAG_auto_variable ] [tmp_ndt_7] [line 973]
!2475 = metadata !{i32 973, i32 9, metadata !458, metadata !2433}
!2476 = metadata !{i32 975, i32 9, metadata !462, metadata !2433}
!2477 = metadata !{i32 786688, metadata !43, metadata !"returnVal2", metadata !11, i32 951, metadata !14, i32 0, metadata !2433} ; [ DW_TAG_auto_variable ] [returnVal2] [line 951]
!2478 = metadata !{i32 951, i32 7, metadata !43, metadata !2433}
!2479 = metadata !{i32 994, i32 7, metadata !467, metadata !2433}
!2480 = metadata !{i32 995, i32 5, metadata !469, metadata !2433}
!2481 = metadata !{i32 996, i32 5, metadata !469, metadata !2433}
!2482 = metadata !{i32 997, i32 3, metadata !469, metadata !2433}
!2483 = metadata !{i32 998, i32 9, metadata !473, metadata !2433}
!2484 = metadata !{i32 999, i32 11, metadata !476, metadata !2433}
!2485 = metadata !{i32 1000, i32 9, metadata !479, metadata !2433}
!2486 = metadata !{i32 1001, i32 9, metadata !479, metadata !2433}
!2487 = metadata !{i32 1002, i32 7, metadata !479, metadata !2433}
!2488 = metadata !{i32 1003, i32 9, metadata !483, metadata !2433}
!2489 = metadata !{i32 1004, i32 9, metadata !483, metadata !2433}
!2490 = metadata !{i32 1007, i32 11, metadata !486, metadata !2433}
!2491 = metadata !{i32 1008, i32 9, metadata !489, metadata !2433}
!2492 = metadata !{i32 1009, i32 9, metadata !489, metadata !2433}
!2493 = metadata !{i32 786688, metadata !21, metadata !"ntStatus", metadata !11, i32 640, metadata !14, i32 0, metadata !2385} ; [ DW_TAG_auto_variable ] [ntStatus] [line 640]
!2494 = metadata !{i32 640, i32 7, metadata !21, metadata !2385}
!2495 = metadata !{i32 663, i32 3, metadata !672, metadata !2385}
!2496 = metadata !{i32 786688, metadata !21, metadata !"__cil_tmp11", metadata !11, i32 647, metadata !496, i32 0, metadata !2385} ; [ DW_TAG_auto_variable ] [__cil_tmp11] [line 647]
!2497 = metadata !{i32 647, i32 8, metadata !21, metadata !2385}
!2498 = metadata !{i32 663, i32 7, metadata !676, metadata !2385}
!2499 = metadata !{i32 786689, metadata !48, metadata !"Object", metadata !11, i32 16778258, metadata !14, i32 0, metadata !2500} ; [ DW_TAG_arg_variable ] [Object] [line 1042]
!2500 = metadata !{i32 665, i32 5, metadata !679, metadata !2385}
!2501 = metadata !{i32 1042, i32 31, metadata !48, metadata !2500}
!2502 = metadata !{i32 786689, metadata !48, metadata !"Alertable", metadata !11, i32 67109906, metadata !14, i32 0, metadata !2500} ; [ DW_TAG_arg_variable ] [Alertable] [line 1042]
!2503 = metadata !{i32 1042, i32 76, metadata !48, metadata !2500}
!2504 = metadata !{i32 786689, metadata !48, metadata !"Timeout", metadata !11, i32 83887123, metadata !14, i32 0, metadata !2500} ; [ DW_TAG_arg_variable ] [Timeout] [line 1043]
!2505 = metadata !{i32 1043, i32 31, metadata !48, metadata !2500}
!2506 = metadata !{i32 1047, i32 7, metadata !510, metadata !2500}
!2507 = metadata !{i32 1048, i32 9, metadata !513, metadata !2500}
!2508 = metadata !{i32 1049, i32 7, metadata !516, metadata !2500}
!2509 = metadata !{i32 1050, i32 7, metadata !516, metadata !2500}
!2510 = metadata !{i32 1054, i32 3, metadata !514, metadata !2500}
!2511 = metadata !{i32 1056, i32 9, metadata !520, metadata !2500}
!2512 = metadata !{i32 1057, i32 7, metadata !523, metadata !2500}
!2513 = metadata !{i32 1058, i32 7, metadata !523, metadata !2500}
!2514 = metadata !{i32 1059, i32 5, metadata !523, metadata !2500}
!2515 = metadata !{i32 1060, i32 11, metadata !527, metadata !2500}
!2516 = metadata !{i32 38, i32 10, metadata !89, metadata !2517}
!2517 = metadata !{i32 1062, i32 9, metadata !531, metadata !2500}
!2518 = metadata !{i32 1070, i32 15, metadata !511, metadata !2500}
!2519 = metadata !{i32 786688, metadata !511, metadata !"tmp_ndt_8", metadata !11, i32 1069, metadata !14, i32 0, metadata !2500} ; [ DW_TAG_auto_variable ] [tmp_ndt_8] [line 1069]
!2520 = metadata !{i32 1069, i32 7, metadata !511, metadata !2500}
!2521 = metadata !{i32 666, i32 5, metadata !679, metadata !2385}
!2522 = metadata !{i32 668, i32 3, metadata !680, metadata !2385}
!2523 = metadata !{i32 546, i32 7, metadata !704, metadata !2211}
!2524 = metadata !{i32 786688, metadata !17, metadata !"disketteExtension__MaxTransferSize", metadata !11, i32 466, metadata !14, i32 0, metadata !2211} ; [ DW_TAG_auto_variable ] [disketteExtension__MaxTransferSize] [line 466]
!2525 = metadata !{i32 466, i32 7, metadata !17, metadata !2211}
!2526 = metadata !{i32 548, i32 9, metadata !708, metadata !2211}
!2527 = metadata !{i32 549, i32 11, metadata !711, metadata !2211}
!2528 = metadata !{i32 572, i32 13, metadata !714, metadata !2211}
!2529 = metadata !{i32 876, i32 15, metadata !719, metadata !2530}
!2530 = metadata !{i32 579, i32 20, metadata !721, metadata !2211}
!2531 = metadata !{i32 877, i32 7, metadata !723, metadata !2530}
!2532 = metadata !{i32 583, i32 13, metadata !725, metadata !2211}
!2533 = metadata !{i32 593, i32 9, metadata !727, metadata !2211}
!2534 = metadata !{i32 786689, metadata !38, metadata !"PhysicalDeviceObject", metadata !11, i32 16778108, metadata !14, i32 0, metadata !2535} ; [ DW_TAG_arg_variable ] [PhysicalDeviceObject] [line 892]
!2535 = metadata !{i32 602, i32 19, metadata !730, metadata !2211}
!2536 = metadata !{i32 892, i32 35, metadata !38, metadata !2535}
!2537 = metadata !{i32 786689, metadata !38, metadata !"ReferenceString", metadata !11, i32 50332541, metadata !14, i32 0, metadata !2535} ; [ DW_TAG_arg_variable ] [ReferenceString] [line 893]
!2538 = metadata !{i32 893, i32 35, metadata !38, metadata !2535}
!2539 = metadata !{i32 786689, metadata !38, metadata !"SymbolicLinkName", metadata !11, i32 67109757, metadata !14, i32 0, metadata !2535} ; [ DW_TAG_arg_variable ] [SymbolicLinkName] [line 893]
!2540 = metadata !{i32 893, i32 57, metadata !38, metadata !2535}
!2541 = metadata !{i32 898, i32 15, metadata !738, metadata !2535}
!2542 = metadata !{i32 786688, metadata !738, metadata !"tmp_ndt_5", metadata !11, i32 897, metadata !14, i32 0, metadata !2535} ; [ DW_TAG_auto_variable ] [tmp_ndt_5] [line 897]
!2543 = metadata !{i32 897, i32 7, metadata !738, metadata !2535}
!2544 = metadata !{i32 899, i32 7, metadata !742, metadata !2535}
!2545 = metadata !{i32 605, i32 11, metadata !744, metadata !2211}
!2546 = metadata !{i32 786689, metadata !41, metadata !"SymbolicLinkName", metadata !11, i32 16778130, metadata !14, i32 0, metadata !2547} ; [ DW_TAG_arg_variable ] [SymbolicLinkName] [line 914]
!2547 = metadata !{i32 607, i32 21, metadata !747, metadata !2211}
!2548 = metadata !{i32 914, i32 35, metadata !41, metadata !2547}
!2549 = metadata !{i32 786689, metadata !41, metadata !"Enable", metadata !11, i32 33555346, metadata !14, i32 0, metadata !2547} ; [ DW_TAG_arg_variable ] [Enable] [line 914]
!2550 = metadata !{i32 914, i32 58, metadata !41, metadata !2547}
!2551 = metadata !{i32 919, i32 15, metadata !753, metadata !2547}
!2552 = metadata !{i32 786688, metadata !753, metadata !"tmp_ndt_6", metadata !11, i32 918, metadata !14, i32 0, metadata !2547} ; [ DW_TAG_auto_variable ] [tmp_ndt_6] [line 918]
!2553 = metadata !{i32 918, i32 7, metadata !753, metadata !2547}
!2554 = metadata !{i32 610, i32 7, metadata !748, metadata !2211}
!2555 = metadata !{i32 588, i32 9, metadata !715, metadata !2211}
!2556 = metadata !{i32 589, i32 7, metadata !715, metadata !2211}
!2557 = metadata !{i32 786688, metadata !17, metadata !"Irp__IoStatus__Status", metadata !11, i32 464, metadata !14, i32 0, metadata !2211} ; [ DW_TAG_auto_variable ] [Irp__IoStatus__Status] [line 464]
!2558 = metadata !{i32 464, i32 7, metadata !17, metadata !2211}
!2559 = metadata !{i32 623, i32 3, metadata !762, metadata !2211}
!2560 = metadata !{i32 786689, metadata !44, metadata !"Irp", metadata !11, i32 16778236, metadata !14, i32 0, metadata !2561} ; [ DW_TAG_arg_variable ] [Irp] [line 1020]
!2561 = metadata !{i32 624, i32 3, metadata !762, metadata !2211}
!2562 = metadata !{i32 1020, i32 29, metadata !44, metadata !2561}
!2563 = metadata !{i32 786689, metadata !44, metadata !"PriorityBoost", metadata !11, i32 33555452, metadata !14, i32 0, metadata !2561} ; [ DW_TAG_arg_variable ] [PriorityBoost] [line 1020]
!2564 = metadata !{i32 1020, i32 39, metadata !44, metadata !2561}
!2565 = metadata !{i32 1024, i32 7, metadata !286, metadata !2561}
!2566 = metadata !{i32 1025, i32 5, metadata !289, metadata !2561}
!2567 = metadata !{i32 245, i32 19, metadata !298, metadata !2137}
!2568 = metadata !{i32 38, i32 10, metadata !89, metadata !2569}
!2569 = metadata !{i32 1028, i32 5, metadata !293, metadata !2561}
!2570 = metadata !{i32 38, i32 10, metadata !89, metadata !2571}
!2571 = metadata !{i32 1012, i32 9, metadata !775, metadata !2433}
!2572 = metadata !{i32 38, i32 10, metadata !89, metadata !2573}
!2573 = metadata !{i32 1012, i32 9, metadata !775, metadata !2283}
!2574 = metadata !{i32 786688, metadata !16, metadata !"disketteExtension__HoldNewRequests", metadata !11, i32 177, metadata !14, i32 0, metadata !2137} ; [ DW_TAG_auto_variable ] [disketteExtension__HoldNewRequests] [line 177]
!2575 = metadata !{i32 177, i32 7, metadata !16, metadata !2137}
!2576 = metadata !{i32 397, i32 23, metadata !782, metadata !2137}
!2577 = metadata !{i32 398, i32 21, metadata !784, metadata !2137}
!2578 = metadata !{i32 408, i32 19, metadata !786, metadata !2137}
!2579 = metadata !{i32 786689, metadata !43, metadata !"DeviceObject", metadata !11, i32 16778165, metadata !14, i32 0, metadata !2580} ; [ DW_TAG_arg_variable ] [DeviceObject] [line 949]
!2580 = metadata !{i32 409, i32 30, metadata !786, metadata !2137}
!2581 = metadata !{i32 949, i32 23, metadata !43, metadata !2580}
!2582 = metadata !{i32 786689, metadata !43, metadata !"Irp", metadata !11, i32 33555381, metadata !14, i32 0, metadata !2580} ; [ DW_TAG_arg_variable ] [Irp] [line 949]
!2583 = metadata !{i32 949, i32 42, metadata !43, metadata !2580}
!2584 = metadata !{i32 953, i32 18, metadata !43, metadata !2580}
!2585 = metadata !{i32 786688, metadata !43, metadata !"lcontext", metadata !11, i32 953, metadata !14, i32 0, metadata !2580} ; [ DW_TAG_auto_variable ] [lcontext] [line 953]
!2586 = metadata !{i32 953, i32 7, metadata !43, metadata !2580}
!2587 = metadata !{i32 956, i32 7, metadata !404, metadata !2580}
!2588 = metadata !{i32 786689, metadata !18, metadata !"DeviceObject", metadata !11, i32 16777845, metadata !14, i32 0, metadata !2589} ; [ DW_TAG_arg_variable ] [DeviceObject] [line 629]
!2589 = metadata !{i32 958, i32 22, metadata !408, metadata !2580}
!2590 = metadata !{i32 629, i32 27, metadata !18, metadata !2589}
!2591 = metadata !{i32 786689, metadata !18, metadata !"Irp", metadata !11, i32 33555061, metadata !14, i32 0, metadata !2589} ; [ DW_TAG_arg_variable ] [Irp] [line 629]
!2592 = metadata !{i32 629, i32 46, metadata !18, metadata !2589}
!2593 = metadata !{i32 786689, metadata !18, metadata !"Context", metadata !11, i32 50332277, metadata !14, i32 0, metadata !2589} ; [ DW_TAG_arg_variable ] [Context] [line 629]
!2594 = metadata !{i32 629, i32 56, metadata !18, metadata !2589}
!2595 = metadata !{i32 786689, metadata !47, metadata !"Event", metadata !11, i32 16778250, metadata !14, i32 0, metadata !2596} ; [ DW_TAG_arg_variable ] [Event] [line 1034]
!2596 = metadata !{i32 634, i32 3, metadata !417, metadata !2589}
!2597 = metadata !{i32 1034, i32 20, metadata !47, metadata !2596}
!2598 = metadata !{i32 786689, metadata !47, metadata !"Increment", metadata !11, i32 33555466, metadata !14, i32 0, metadata !2596} ; [ DW_TAG_arg_variable ] [Increment] [line 1034]
!2599 = metadata !{i32 1034, i32 32, metadata !47, metadata !2596}
!2600 = metadata !{i32 786689, metadata !47, metadata !"Wait", metadata !11, i32 50332682, metadata !14, i32 0, metadata !2596} ; [ DW_TAG_arg_variable ] [Wait] [line 1034]
!2601 = metadata !{i32 1034, i32 48, metadata !47, metadata !2596}
!2602 = metadata !{i32 1035, i32 11, metadata !47, metadata !2596}
!2603 = metadata !{i32 786688, metadata !47, metadata !"l", metadata !11, i32 1035, metadata !14, i32 0, metadata !2596} ; [ DW_TAG_auto_variable ] [l] [line 1035]
!2604 = metadata !{i32 1035, i32 7, metadata !47, metadata !2596}
!2605 = metadata !{i32 1038, i32 3, metadata !429, metadata !2596}
!2606 = metadata !{i32 786688, metadata !43, metadata !"compRetStatus1", metadata !11, i32 952, metadata !14, i32 0, metadata !2580} ; [ DW_TAG_auto_variable ] [compRetStatus1] [line 952]
!2607 = metadata !{i32 952, i32 7, metadata !43, metadata !2580}
!2608 = metadata !{i32 786688, metadata !43, metadata !"__cil_tmp7", metadata !11, i32 954, metadata !435, i32 0, metadata !2580} ; [ DW_TAG_auto_variable ] [__cil_tmp7] [line 954]
!2609 = metadata !{i32 954, i32 17, metadata !43, metadata !2580}
!2610 = metadata !{i32 939, i32 7, metadata !438, metadata !2611}
!2611 = metadata !{i32 962, i32 7, metadata !441, metadata !2580}
!2612 = metadata !{i32 940, i32 5, metadata !446, metadata !2611}
!2613 = metadata !{i32 964, i32 5, metadata !442, metadata !2580}
!2614 = metadata !{i32 38, i32 10, metadata !89, metadata !2615}
!2615 = metadata !{i32 943, i32 5, metadata !450, metadata !2611}
!2616 = metadata !{i32 971, i32 16, metadata !405, metadata !2580}
!2617 = metadata !{i32 786688, metadata !405, metadata !"tmp_ndt_12", metadata !11, i32 970, metadata !14, i32 0, metadata !2580} ; [ DW_TAG_auto_variable ] [tmp_ndt_12] [line 970]
!2618 = metadata !{i32 970, i32 7, metadata !405, metadata !2580}
!2619 = metadata !{i32 972, i32 7, metadata !456, metadata !2580}
!2620 = metadata !{i32 974, i32 17, metadata !458, metadata !2580}
!2621 = metadata !{i32 786688, metadata !458, metadata !"tmp_ndt_7", metadata !11, i32 973, metadata !14, i32 0, metadata !2580} ; [ DW_TAG_auto_variable ] [tmp_ndt_7] [line 973]
!2622 = metadata !{i32 973, i32 9, metadata !458, metadata !2580}
!2623 = metadata !{i32 975, i32 9, metadata !462, metadata !2580}
!2624 = metadata !{i32 786688, metadata !43, metadata !"returnVal2", metadata !11, i32 951, metadata !14, i32 0, metadata !2580} ; [ DW_TAG_auto_variable ] [returnVal2] [line 951]
!2625 = metadata !{i32 951, i32 7, metadata !43, metadata !2580}
!2626 = metadata !{i32 994, i32 7, metadata !467, metadata !2580}
!2627 = metadata !{i32 995, i32 5, metadata !469, metadata !2580}
!2628 = metadata !{i32 996, i32 5, metadata !469, metadata !2580}
!2629 = metadata !{i32 997, i32 3, metadata !469, metadata !2580}
!2630 = metadata !{i32 998, i32 9, metadata !473, metadata !2580}
!2631 = metadata !{i32 999, i32 11, metadata !476, metadata !2580}
!2632 = metadata !{i32 1000, i32 9, metadata !479, metadata !2580}
!2633 = metadata !{i32 1001, i32 9, metadata !479, metadata !2580}
!2634 = metadata !{i32 1002, i32 7, metadata !479, metadata !2580}
!2635 = metadata !{i32 1003, i32 9, metadata !483, metadata !2580}
!2636 = metadata !{i32 1004, i32 9, metadata !483, metadata !2580}
!2637 = metadata !{i32 1007, i32 11, metadata !486, metadata !2580}
!2638 = metadata !{i32 1008, i32 9, metadata !489, metadata !2580}
!2639 = metadata !{i32 1009, i32 9, metadata !489, metadata !2580}
!2640 = metadata !{i32 411, i32 23, metadata !849, metadata !2137}
!2641 = metadata !{i32 786689, metadata !41, metadata !"SymbolicLinkName", metadata !11, i32 16778130, metadata !14, i32 0, metadata !2642} ; [ DW_TAG_arg_variable ] [SymbolicLinkName] [line 914]
!2642 = metadata !{i32 413, i32 21, metadata !852, metadata !2137}
!2643 = metadata !{i32 914, i32 35, metadata !41, metadata !2642}
!2644 = metadata !{i32 786689, metadata !41, metadata !"Enable", metadata !11, i32 33555346, metadata !14, i32 0, metadata !2642} ; [ DW_TAG_arg_variable ] [Enable] [line 914]
!2645 = metadata !{i32 914, i32 58, metadata !41, metadata !2642}
!2646 = metadata !{i32 919, i32 15, metadata !753, metadata !2642}
!2647 = metadata !{i32 786688, metadata !753, metadata !"tmp_ndt_6", metadata !11, i32 918, metadata !14, i32 0, metadata !2642} ; [ DW_TAG_auto_variable ] [tmp_ndt_6] [line 918]
!2648 = metadata !{i32 918, i32 7, metadata !753, metadata !2642}
!2649 = metadata !{i32 416, i32 19, metadata !853, metadata !2137}
!2650 = metadata !{i32 419, i32 23, metadata !862, metadata !2137}
!2651 = metadata !{i32 786689, metadata !32, metadata !"SymbolicLinkName", metadata !11, i32 16778064, metadata !14, i32 0, metadata !2652} ; [ DW_TAG_arg_variable ] [SymbolicLinkName] [line 848]
!2652 = metadata !{i32 421, i32 21, metadata !865, metadata !2137}
!2653 = metadata !{i32 848, i32 30, metadata !32, metadata !2652}
!2654 = metadata !{i32 853, i32 15, metadata !869, metadata !2652}
!2655 = metadata !{i32 786688, metadata !869, metadata !"tmp_ndt_3", metadata !11, i32 852, metadata !14, i32 0, metadata !2652} ; [ DW_TAG_auto_variable ] [tmp_ndt_3] [line 852]
!2656 = metadata !{i32 852, i32 7, metadata !869, metadata !2652}
!2657 = metadata !{i32 423, i32 19, metadata !866, metadata !2137}
!2658 = metadata !{i32 38, i32 10, metadata !89, metadata !2659}
!2659 = metadata !{i32 1012, i32 9, metadata !775, metadata !2580}
!2660 = metadata !{i32 38, i32 10, metadata !89, metadata !2661}
!2661 = metadata !{i32 401, i32 21, metadata !877, metadata !2137}
!2662 = metadata !{i32 379, i32 19, metadata !298, metadata !2137}
!2663 = metadata !{i32 380, i32 23, metadata !881, metadata !2137}
!2664 = metadata !{i32 381, i32 21, metadata !883, metadata !2137}
!2665 = metadata !{i32 786689, metadata !43, metadata !"DeviceObject", metadata !11, i32 16778165, metadata !14, i32 0, metadata !2666} ; [ DW_TAG_arg_variable ] [DeviceObject] [line 949]
!2666 = metadata !{i32 390, i32 30, metadata !886, metadata !2137}
!2667 = metadata !{i32 949, i32 23, metadata !43, metadata !2666}
!2668 = metadata !{i32 786689, metadata !43, metadata !"Irp", metadata !11, i32 33555381, metadata !14, i32 0, metadata !2666} ; [ DW_TAG_arg_variable ] [Irp] [line 949]
!2669 = metadata !{i32 949, i32 42, metadata !43, metadata !2666}
!2670 = metadata !{i32 953, i32 18, metadata !43, metadata !2666}
!2671 = metadata !{i32 786688, metadata !43, metadata !"lcontext", metadata !11, i32 953, metadata !14, i32 0, metadata !2666} ; [ DW_TAG_auto_variable ] [lcontext] [line 953]
!2672 = metadata !{i32 953, i32 7, metadata !43, metadata !2666}
!2673 = metadata !{i32 956, i32 7, metadata !404, metadata !2666}
!2674 = metadata !{i32 786689, metadata !18, metadata !"DeviceObject", metadata !11, i32 16777845, metadata !14, i32 0, metadata !2675} ; [ DW_TAG_arg_variable ] [DeviceObject] [line 629]
!2675 = metadata !{i32 958, i32 22, metadata !408, metadata !2666}
!2676 = metadata !{i32 629, i32 27, metadata !18, metadata !2675}
!2677 = metadata !{i32 786689, metadata !18, metadata !"Irp", metadata !11, i32 33555061, metadata !14, i32 0, metadata !2675} ; [ DW_TAG_arg_variable ] [Irp] [line 629]
!2678 = metadata !{i32 629, i32 46, metadata !18, metadata !2675}
!2679 = metadata !{i32 786689, metadata !18, metadata !"Context", metadata !11, i32 50332277, metadata !14, i32 0, metadata !2675} ; [ DW_TAG_arg_variable ] [Context] [line 629]
!2680 = metadata !{i32 629, i32 56, metadata !18, metadata !2675}
!2681 = metadata !{i32 786689, metadata !47, metadata !"Event", metadata !11, i32 16778250, metadata !14, i32 0, metadata !2682} ; [ DW_TAG_arg_variable ] [Event] [line 1034]
!2682 = metadata !{i32 634, i32 3, metadata !417, metadata !2675}
!2683 = metadata !{i32 1034, i32 20, metadata !47, metadata !2682}
!2684 = metadata !{i32 786689, metadata !47, metadata !"Increment", metadata !11, i32 33555466, metadata !14, i32 0, metadata !2682} ; [ DW_TAG_arg_variable ] [Increment] [line 1034]
!2685 = metadata !{i32 1034, i32 32, metadata !47, metadata !2682}
!2686 = metadata !{i32 786689, metadata !47, metadata !"Wait", metadata !11, i32 50332682, metadata !14, i32 0, metadata !2682} ; [ DW_TAG_arg_variable ] [Wait] [line 1034]
!2687 = metadata !{i32 1034, i32 48, metadata !47, metadata !2682}
!2688 = metadata !{i32 1035, i32 11, metadata !47, metadata !2682}
!2689 = metadata !{i32 786688, metadata !47, metadata !"l", metadata !11, i32 1035, metadata !14, i32 0, metadata !2682} ; [ DW_TAG_auto_variable ] [l] [line 1035]
!2690 = metadata !{i32 1035, i32 7, metadata !47, metadata !2682}
!2691 = metadata !{i32 1038, i32 3, metadata !429, metadata !2682}
!2692 = metadata !{i32 786688, metadata !43, metadata !"compRetStatus1", metadata !11, i32 952, metadata !14, i32 0, metadata !2666} ; [ DW_TAG_auto_variable ] [compRetStatus1] [line 952]
!2693 = metadata !{i32 952, i32 7, metadata !43, metadata !2666}
!2694 = metadata !{i32 786688, metadata !43, metadata !"__cil_tmp7", metadata !11, i32 954, metadata !435, i32 0, metadata !2666} ; [ DW_TAG_auto_variable ] [__cil_tmp7] [line 954]
!2695 = metadata !{i32 954, i32 17, metadata !43, metadata !2666}
!2696 = metadata !{i32 939, i32 7, metadata !438, metadata !2697}
!2697 = metadata !{i32 962, i32 7, metadata !441, metadata !2666}
!2698 = metadata !{i32 940, i32 5, metadata !446, metadata !2697}
!2699 = metadata !{i32 964, i32 5, metadata !442, metadata !2666}
!2700 = metadata !{i32 38, i32 10, metadata !89, metadata !2701}
!2701 = metadata !{i32 943, i32 5, metadata !450, metadata !2697}
!2702 = metadata !{i32 971, i32 16, metadata !405, metadata !2666}
!2703 = metadata !{i32 786688, metadata !405, metadata !"tmp_ndt_12", metadata !11, i32 970, metadata !14, i32 0, metadata !2666} ; [ DW_TAG_auto_variable ] [tmp_ndt_12] [line 970]
!2704 = metadata !{i32 970, i32 7, metadata !405, metadata !2666}
!2705 = metadata !{i32 972, i32 7, metadata !456, metadata !2666}
!2706 = metadata !{i32 974, i32 17, metadata !458, metadata !2666}
!2707 = metadata !{i32 786688, metadata !458, metadata !"tmp_ndt_7", metadata !11, i32 973, metadata !14, i32 0, metadata !2666} ; [ DW_TAG_auto_variable ] [tmp_ndt_7] [line 973]
!2708 = metadata !{i32 973, i32 9, metadata !458, metadata !2666}
!2709 = metadata !{i32 975, i32 9, metadata !462, metadata !2666}
!2710 = metadata !{i32 786688, metadata !43, metadata !"returnVal2", metadata !11, i32 951, metadata !14, i32 0, metadata !2666} ; [ DW_TAG_auto_variable ] [returnVal2] [line 951]
!2711 = metadata !{i32 951, i32 7, metadata !43, metadata !2666}
!2712 = metadata !{i32 994, i32 7, metadata !467, metadata !2666}
!2713 = metadata !{i32 995, i32 5, metadata !469, metadata !2666}
!2714 = metadata !{i32 996, i32 5, metadata !469, metadata !2666}
!2715 = metadata !{i32 997, i32 3, metadata !469, metadata !2666}
!2716 = metadata !{i32 998, i32 9, metadata !473, metadata !2666}
!2717 = metadata !{i32 999, i32 11, metadata !476, metadata !2666}
!2718 = metadata !{i32 1000, i32 9, metadata !479, metadata !2666}
!2719 = metadata !{i32 1001, i32 9, metadata !479, metadata !2666}
!2720 = metadata !{i32 1002, i32 7, metadata !479, metadata !2666}
!2721 = metadata !{i32 1003, i32 9, metadata !483, metadata !2666}
!2722 = metadata !{i32 1004, i32 9, metadata !483, metadata !2666}
!2723 = metadata !{i32 1007, i32 11, metadata !486, metadata !2666}
!2724 = metadata !{i32 1008, i32 9, metadata !489, metadata !2666}
!2725 = metadata !{i32 1009, i32 9, metadata !489, metadata !2666}
!2726 = metadata !{i32 38, i32 10, metadata !89, metadata !2727}
!2727 = metadata !{i32 1012, i32 9, metadata !775, metadata !2666}
!2728 = metadata !{i32 38, i32 10, metadata !89, metadata !2729}
!2729 = metadata !{i32 384, i32 21, metadata !950, metadata !2137}
!2730 = metadata !{i32 253, i32 23, metadata !953, metadata !2137}
!2731 = metadata !{i32 786689, metadata !15, metadata !"Irp", metadata !11, i32 16777315, metadata !14, i32 0, metadata !2732} ; [ DW_TAG_arg_variable ] [Irp] [line 99]
!2732 = metadata !{i32 272, i32 30, metadata !956, metadata !2137}
!2733 = metadata !{i32 99, i32 28, metadata !15, metadata !2732}
!2734 = metadata !{i32 786689, metadata !15, metadata !"DisketteExtension", metadata !11, i32 33554531, metadata !14, i32 0, metadata !2732} ; [ DW_TAG_arg_variable ] [DisketteExtension] [line 99]
!2735 = metadata !{i32 99, i32 38, metadata !15, metadata !2732}
!2736 = metadata !{i32 101, i32 22, metadata !15, metadata !2732}
!2737 = metadata !{i32 786688, metadata !15, metadata !"threadHandle", metadata !11, i32 101, metadata !14, i32 0, metadata !2732} ; [ DW_TAG_auto_variable ] [threadHandle] [line 101]
!2738 = metadata !{i32 101, i32 7, metadata !15, metadata !2732}
!2739 = metadata !{i32 102, i32 41, metadata !15, metadata !2732}
!2740 = metadata !{i32 786688, metadata !15, metadata !"DisketteExtension__PoweringDown", metadata !11, i32 102, metadata !14, i32 0, metadata !2732} ; [ DW_TAG_auto_variable ] [DisketteExtension__PoweringDown] [line 102]
!2741 = metadata !{i32 102, i32 7, metadata !15, metadata !2732}
!2742 = metadata !{i32 103, i32 49, metadata !15, metadata !2732}
!2743 = metadata !{i32 786688, metadata !15, metadata !"DisketteExtension__ThreadReferenceCount", metadata !11, i32 103, metadata !14, i32 0, metadata !2732} ; [ DW_TAG_auto_variable ] [DisketteExtension__ThreadReferenceCount] [line 103]
!2744 = metadata !{i32 103, i32 7, metadata !15, metadata !2732}
!2745 = metadata !{i32 104, i32 41, metadata !15, metadata !2732}
!2746 = metadata !{i32 786688, metadata !15, metadata !"DisketteExtension__FloppyThread", metadata !11, i32 104, metadata !14, i32 0, metadata !2732} ; [ DW_TAG_auto_variable ] [DisketteExtension__FloppyThread] [line 104]
!2747 = metadata !{i32 104, i32 7, metadata !15, metadata !2732}
!2748 = metadata !{i32 108, i32 23, metadata !15, metadata !2732}
!2749 = metadata !{i32 786688, metadata !15, metadata !"ObjAttributes", metadata !11, i32 108, metadata !14, i32 0, metadata !2732} ; [ DW_TAG_auto_variable ] [ObjAttributes] [line 108]
!2750 = metadata !{i32 108, i32 7, metadata !15, metadata !2732}
!2751 = metadata !{i32 111, i32 7, metadata !132, metadata !2732}
!2752 = metadata !{i32 112, i32 5, metadata !135, metadata !2732}
!2753 = metadata !{i32 786688, metadata !15, metadata !"Irp__IoStatus__Status", metadata !11, i32 105, metadata !14, i32 0, metadata !2732} ; [ DW_TAG_auto_variable ] [Irp__IoStatus__Status] [line 105]
!2754 = metadata !{i32 105, i32 7, metadata !15, metadata !2732}
!2755 = metadata !{i32 786688, metadata !15, metadata !"Irp__IoStatus__Information", metadata !11, i32 106, metadata !14, i32 0, metadata !2732} ; [ DW_TAG_auto_variable ] [Irp__IoStatus__Information] [line 106]
!2756 = metadata !{i32 106, i32 7, metadata !15, metadata !2732}
!2757 = metadata !{i32 115, i32 5, metadata !135, metadata !2732}
!2758 = metadata !{i32 119, i32 3, metadata !133, metadata !2732}
!2759 = metadata !{i32 120, i32 7, metadata !145, metadata !2732}
!2760 = metadata !{i32 122, i32 5, metadata !147, metadata !2732}
!2761 = metadata !{i32 786689, metadata !54, metadata !"ThreadHandle", metadata !11, i32 16778324, metadata !14, i32 0, metadata !2762} ; [ DW_TAG_arg_variable ] [ThreadHandle] [line 1108]
!2762 = metadata !{i32 129, i32 14, metadata !150, metadata !2732}
!2763 = metadata !{i32 1108, i32 30, metadata !54, metadata !2762}
!2764 = metadata !{i32 786689, metadata !54, metadata !"DesiredAccess", metadata !11, i32 33555540, metadata !14, i32 0, metadata !2762} ; [ DW_TAG_arg_variable ] [DesiredAccess] [line 1108]
!2765 = metadata !{i32 1108, i32 49, metadata !54, metadata !2762}
!2766 = metadata !{i32 786689, metadata !54, metadata !"ObjectAttributes", metadata !11, i32 50332756, metadata !14, i32 0, metadata !2762} ; [ DW_TAG_arg_variable ] [ObjectAttributes] [line 1108]
!2767 = metadata !{i32 1108, i32 69, metadata !54, metadata !2762}
!2768 = metadata !{i32 786689, metadata !54, metadata !"ProcessHandle", metadata !11, i32 67109973, metadata !14, i32 0, metadata !2762} ; [ DW_TAG_arg_variable ] [ProcessHandle] [line 1109]
!2769 = metadata !{i32 1109, i32 30, metadata !54, metadata !2762}
!2770 = metadata !{i32 786689, metadata !54, metadata !"ClientId", metadata !11, i32 83887189, metadata !14, i32 0, metadata !2762} ; [ DW_TAG_arg_variable ] [ClientId] [line 1109]
!2771 = metadata !{i32 1109, i32 50, metadata !54, metadata !2762}
!2772 = metadata !{i32 786689, metadata !54, metadata !"StartContext", metadata !11, i32 117441621, metadata !14, i32 0, metadata !2762} ; [ DW_TAG_arg_variable ] [StartContext] [line 1109]
!2773 = metadata !{i32 1109, i32 84, metadata !54, metadata !2762}
!2774 = metadata !{i32 1114, i32 16, metadata !163, metadata !2762}
!2775 = metadata !{i32 786688, metadata !163, metadata !"tmp_ndt_10", metadata !11, i32 1113, metadata !14, i32 0, metadata !2762} ; [ DW_TAG_auto_variable ] [tmp_ndt_10] [line 1113]
!2776 = metadata !{i32 1113, i32 7, metadata !163, metadata !2762}
!2777 = metadata !{i32 1115, i32 7, metadata !167, metadata !2762}
!2778 = metadata !{i32 786688, metadata !15, metadata !"status", metadata !11, i32 100, metadata !14, i32 0, metadata !2732} ; [ DW_TAG_auto_variable ] [status] [line 100]
!2779 = metadata !{i32 100, i32 7, metadata !15, metadata !2732}
!2780 = metadata !{i32 132, i32 9, metadata !171, metadata !2732}
!2781 = metadata !{i32 134, i32 7, metadata !175, metadata !2732}
!2782 = metadata !{i32 140, i32 7, metadata !175, metadata !2732}
!2783 = metadata !{i32 786689, metadata !51, metadata !"Handle", metadata !11, i32 16778302, metadata !14, i32 0, metadata !2784} ; [ DW_TAG_arg_variable ] [Handle] [line 1086]
!2784 = metadata !{i32 145, i32 14, metadata !179, metadata !2732}
!2785 = metadata !{i32 1086, i32 35, metadata !51, metadata !2784}
!2786 = metadata !{i32 786689, metadata !51, metadata !"DesiredAccess", metadata !11, i32 33555518, metadata !14, i32 0, metadata !2784} ; [ DW_TAG_arg_variable ] [DesiredAccess] [line 1086]
!2787 = metadata !{i32 1086, i32 48, metadata !51, metadata !2784}
!2788 = metadata !{i32 786689, metadata !51, metadata !"ObjectType", metadata !11, i32 50332734, metadata !14, i32 0, metadata !2784} ; [ DW_TAG_arg_variable ] [ObjectType] [line 1086]
!2789 = metadata !{i32 1086, i32 68, metadata !51, metadata !2784}
!2790 = metadata !{i32 786689, metadata !51, metadata !"Object", metadata !11, i32 83887167, metadata !14, i32 0, metadata !2784} ; [ DW_TAG_arg_variable ] [Object] [line 1087]
!2791 = metadata !{i32 1087, i32 35, metadata !51, metadata !2784}
!2792 = metadata !{i32 786689, metadata !51, metadata !"HandleInformation", metadata !11, i32 100664383, metadata !14, i32 0, metadata !2784} ; [ DW_TAG_arg_variable ] [HandleInformation] [line 1087]
!2793 = metadata !{i32 1087, i32 48, metadata !51, metadata !2784}
!2794 = metadata !{i32 1092, i32 15, metadata !191, metadata !2784}
!2795 = metadata !{i32 786688, metadata !191, metadata !"tmp_ndt_9", metadata !11, i32 1091, metadata !14, i32 0, metadata !2784} ; [ DW_TAG_auto_variable ] [tmp_ndt_9] [line 1091]
!2796 = metadata !{i32 1091, i32 7, metadata !191, metadata !2784}
!2797 = metadata !{i32 1093, i32 7, metadata !195, metadata !2784}
!2798 = metadata !{i32 786689, metadata !57, metadata !"Handle", metadata !11, i32 16778346, metadata !14, i32 0, metadata !2799} ; [ DW_TAG_arg_variable ] [Handle] [line 1130]
!2799 = metadata !{i32 147, i32 5, metadata !179, metadata !2732}
!2800 = metadata !{i32 1130, i32 17, metadata !57, metadata !2799}
!2801 = metadata !{i32 1135, i32 16, metadata !200, metadata !2799}
!2802 = metadata !{i32 786688, metadata !200, metadata !"tmp_ndt_11", metadata !11, i32 1134, metadata !14, i32 0, metadata !2799} ; [ DW_TAG_auto_variable ] [tmp_ndt_11] [line 1134]
!2803 = metadata !{i32 1134, i32 7, metadata !200, metadata !2799}
!2804 = metadata !{i32 149, i32 9, metadata !204, metadata !2732}
!2805 = metadata !{i32 158, i32 7, metadata !207, metadata !2732}
!2806 = metadata !{i32 159, i32 5, metadata !209, metadata !2732}
!2807 = metadata !{i32 165, i32 3, metadata !133, metadata !2732}
!2808 = metadata !{i32 274, i32 19, metadata !1033, metadata !2137}
!2809 = metadata !{i32 786688, metadata !16, metadata !"__cil_tmp29", metadata !11, i32 195, metadata !496, i32 0, metadata !2137} ; [ DW_TAG_auto_variable ] [__cil_tmp29] [line 195]
!2810 = metadata !{i32 195, i32 8, metadata !16, metadata !2137}
!2811 = metadata !{i32 274, i32 23, metadata !1037, metadata !2137}
!2812 = metadata !{i32 786689, metadata !48, metadata !"Object", metadata !11, i32 16778258, metadata !14, i32 0, metadata !2813} ; [ DW_TAG_arg_variable ] [Object] [line 1042]
!2813 = metadata !{i32 276, i32 21, metadata !1040, metadata !2137}
!2814 = metadata !{i32 1042, i32 31, metadata !48, metadata !2813}
!2815 = metadata !{i32 786689, metadata !48, metadata !"Alertable", metadata !11, i32 67109906, metadata !14, i32 0, metadata !2813} ; [ DW_TAG_arg_variable ] [Alertable] [line 1042]
!2816 = metadata !{i32 1042, i32 76, metadata !48, metadata !2813}
!2817 = metadata !{i32 786689, metadata !48, metadata !"Timeout", metadata !11, i32 83887123, metadata !14, i32 0, metadata !2813} ; [ DW_TAG_arg_variable ] [Timeout] [line 1043]
!2818 = metadata !{i32 1043, i32 31, metadata !48, metadata !2813}
!2819 = metadata !{i32 1047, i32 7, metadata !510, metadata !2813}
!2820 = metadata !{i32 1048, i32 9, metadata !513, metadata !2813}
!2821 = metadata !{i32 1049, i32 7, metadata !516, metadata !2813}
!2822 = metadata !{i32 1050, i32 7, metadata !516, metadata !2813}
!2823 = metadata !{i32 1054, i32 3, metadata !514, metadata !2813}
!2824 = metadata !{i32 1056, i32 9, metadata !520, metadata !2813}
!2825 = metadata !{i32 1057, i32 7, metadata !523, metadata !2813}
!2826 = metadata !{i32 1058, i32 7, metadata !523, metadata !2813}
!2827 = metadata !{i32 1059, i32 5, metadata !523, metadata !2813}
!2828 = metadata !{i32 1060, i32 11, metadata !527, metadata !2813}
!2829 = metadata !{i32 38, i32 10, metadata !89, metadata !2830}
!2830 = metadata !{i32 1062, i32 9, metadata !531, metadata !2813}
!2831 = metadata !{i32 1070, i32 15, metadata !511, metadata !2813}
!2832 = metadata !{i32 786688, metadata !511, metadata !"tmp_ndt_8", metadata !11, i32 1069, metadata !14, i32 0, metadata !2813} ; [ DW_TAG_auto_variable ] [tmp_ndt_8] [line 1069]
!2833 = metadata !{i32 1069, i32 7, metadata !511, metadata !2813}
!2834 = metadata !{i32 286, i32 21, metadata !1041, metadata !2137}
!2835 = metadata !{i32 287, i32 25, metadata !1064, metadata !2137}
!2836 = metadata !{i32 288, i32 23, metadata !1066, metadata !2137}
!2837 = metadata !{i32 786689, metadata !43, metadata !"DeviceObject", metadata !11, i32 16778165, metadata !14, i32 0, metadata !2838} ; [ DW_TAG_arg_variable ] [DeviceObject] [line 949]
!2838 = metadata !{i32 297, i32 32, metadata !1069, metadata !2137}
!2839 = metadata !{i32 949, i32 23, metadata !43, metadata !2838}
!2840 = metadata !{i32 786689, metadata !43, metadata !"Irp", metadata !11, i32 33555381, metadata !14, i32 0, metadata !2838} ; [ DW_TAG_arg_variable ] [Irp] [line 949]
!2841 = metadata !{i32 949, i32 42, metadata !43, metadata !2838}
!2842 = metadata !{i32 953, i32 18, metadata !43, metadata !2838}
!2843 = metadata !{i32 786688, metadata !43, metadata !"lcontext", metadata !11, i32 953, metadata !14, i32 0, metadata !2838} ; [ DW_TAG_auto_variable ] [lcontext] [line 953]
!2844 = metadata !{i32 953, i32 7, metadata !43, metadata !2838}
!2845 = metadata !{i32 956, i32 7, metadata !404, metadata !2838}
!2846 = metadata !{i32 786689, metadata !18, metadata !"DeviceObject", metadata !11, i32 16777845, metadata !14, i32 0, metadata !2847} ; [ DW_TAG_arg_variable ] [DeviceObject] [line 629]
!2847 = metadata !{i32 958, i32 22, metadata !408, metadata !2838}
!2848 = metadata !{i32 629, i32 27, metadata !18, metadata !2847}
!2849 = metadata !{i32 786689, metadata !18, metadata !"Irp", metadata !11, i32 33555061, metadata !14, i32 0, metadata !2847} ; [ DW_TAG_arg_variable ] [Irp] [line 629]
!2850 = metadata !{i32 629, i32 46, metadata !18, metadata !2847}
!2851 = metadata !{i32 786689, metadata !18, metadata !"Context", metadata !11, i32 50332277, metadata !14, i32 0, metadata !2847} ; [ DW_TAG_arg_variable ] [Context] [line 629]
!2852 = metadata !{i32 629, i32 56, metadata !18, metadata !2847}
!2853 = metadata !{i32 786689, metadata !47, metadata !"Event", metadata !11, i32 16778250, metadata !14, i32 0, metadata !2854} ; [ DW_TAG_arg_variable ] [Event] [line 1034]
!2854 = metadata !{i32 634, i32 3, metadata !417, metadata !2847}
!2855 = metadata !{i32 1034, i32 20, metadata !47, metadata !2854}
!2856 = metadata !{i32 786689, metadata !47, metadata !"Increment", metadata !11, i32 33555466, metadata !14, i32 0, metadata !2854} ; [ DW_TAG_arg_variable ] [Increment] [line 1034]
!2857 = metadata !{i32 1034, i32 32, metadata !47, metadata !2854}
!2858 = metadata !{i32 786689, metadata !47, metadata !"Wait", metadata !11, i32 50332682, metadata !14, i32 0, metadata !2854} ; [ DW_TAG_arg_variable ] [Wait] [line 1034]
!2859 = metadata !{i32 1034, i32 48, metadata !47, metadata !2854}
!2860 = metadata !{i32 1035, i32 11, metadata !47, metadata !2854}
!2861 = metadata !{i32 786688, metadata !47, metadata !"l", metadata !11, i32 1035, metadata !14, i32 0, metadata !2854} ; [ DW_TAG_auto_variable ] [l] [line 1035]
!2862 = metadata !{i32 1035, i32 7, metadata !47, metadata !2854}
!2863 = metadata !{i32 1038, i32 3, metadata !429, metadata !2854}
!2864 = metadata !{i32 786688, metadata !43, metadata !"compRetStatus1", metadata !11, i32 952, metadata !14, i32 0, metadata !2838} ; [ DW_TAG_auto_variable ] [compRetStatus1] [line 952]
!2865 = metadata !{i32 952, i32 7, metadata !43, metadata !2838}
!2866 = metadata !{i32 786688, metadata !43, metadata !"__cil_tmp7", metadata !11, i32 954, metadata !435, i32 0, metadata !2838} ; [ DW_TAG_auto_variable ] [__cil_tmp7] [line 954]
!2867 = metadata !{i32 954, i32 17, metadata !43, metadata !2838}
!2868 = metadata !{i32 939, i32 7, metadata !438, metadata !2869}
!2869 = metadata !{i32 962, i32 7, metadata !441, metadata !2838}
!2870 = metadata !{i32 940, i32 5, metadata !446, metadata !2869}
!2871 = metadata !{i32 964, i32 5, metadata !442, metadata !2838}
!2872 = metadata !{i32 38, i32 10, metadata !89, metadata !2873}
!2873 = metadata !{i32 943, i32 5, metadata !450, metadata !2869}
!2874 = metadata !{i32 971, i32 16, metadata !405, metadata !2838}
!2875 = metadata !{i32 786688, metadata !405, metadata !"tmp_ndt_12", metadata !11, i32 970, metadata !14, i32 0, metadata !2838} ; [ DW_TAG_auto_variable ] [tmp_ndt_12] [line 970]
!2876 = metadata !{i32 970, i32 7, metadata !405, metadata !2838}
!2877 = metadata !{i32 972, i32 7, metadata !456, metadata !2838}
!2878 = metadata !{i32 974, i32 17, metadata !458, metadata !2838}
!2879 = metadata !{i32 786688, metadata !458, metadata !"tmp_ndt_7", metadata !11, i32 973, metadata !14, i32 0, metadata !2838} ; [ DW_TAG_auto_variable ] [tmp_ndt_7] [line 973]
!2880 = metadata !{i32 973, i32 9, metadata !458, metadata !2838}
!2881 = metadata !{i32 975, i32 9, metadata !462, metadata !2838}
!2882 = metadata !{i32 786688, metadata !43, metadata !"returnVal2", metadata !11, i32 951, metadata !14, i32 0, metadata !2838} ; [ DW_TAG_auto_variable ] [returnVal2] [line 951]
!2883 = metadata !{i32 951, i32 7, metadata !43, metadata !2838}
!2884 = metadata !{i32 994, i32 7, metadata !467, metadata !2838}
!2885 = metadata !{i32 995, i32 5, metadata !469, metadata !2838}
!2886 = metadata !{i32 996, i32 5, metadata !469, metadata !2838}
!2887 = metadata !{i32 997, i32 3, metadata !469, metadata !2838}
!2888 = metadata !{i32 998, i32 9, metadata !473, metadata !2838}
!2889 = metadata !{i32 999, i32 11, metadata !476, metadata !2838}
!2890 = metadata !{i32 1000, i32 9, metadata !479, metadata !2838}
!2891 = metadata !{i32 1001, i32 9, metadata !479, metadata !2838}
!2892 = metadata !{i32 1002, i32 7, metadata !479, metadata !2838}
!2893 = metadata !{i32 1003, i32 9, metadata !483, metadata !2838}
!2894 = metadata !{i32 1004, i32 9, metadata !483, metadata !2838}
!2895 = metadata !{i32 1007, i32 11, metadata !486, metadata !2838}
!2896 = metadata !{i32 1008, i32 9, metadata !489, metadata !2838}
!2897 = metadata !{i32 1009, i32 9, metadata !489, metadata !2838}
!2898 = metadata !{i32 38, i32 10, metadata !89, metadata !2899}
!2899 = metadata !{i32 1012, i32 9, metadata !775, metadata !2838}
!2900 = metadata !{i32 38, i32 10, metadata !89, metadata !2901}
!2901 = metadata !{i32 291, i32 23, metadata !1133, metadata !2137}
!2902 = metadata !{i32 303, i32 21, metadata !1137, metadata !2137}
!2903 = metadata !{i32 786689, metadata !44, metadata !"Irp", metadata !11, i32 16778236, metadata !14, i32 0, metadata !2904} ; [ DW_TAG_arg_variable ] [Irp] [line 1020]
!2904 = metadata !{i32 305, i32 21, metadata !1137, metadata !2137}
!2905 = metadata !{i32 1020, i32 29, metadata !44, metadata !2904}
!2906 = metadata !{i32 786689, metadata !44, metadata !"PriorityBoost", metadata !11, i32 33555452, metadata !14, i32 0, metadata !2904} ; [ DW_TAG_arg_variable ] [PriorityBoost] [line 1020]
!2907 = metadata !{i32 1020, i32 39, metadata !44, metadata !2904}
!2908 = metadata !{i32 1024, i32 7, metadata !286, metadata !2904}
!2909 = metadata !{i32 1025, i32 5, metadata !289, metadata !2904}
!2910 = metadata !{i32 38, i32 10, metadata !89, metadata !2911}
!2911 = metadata !{i32 1028, i32 5, metadata !293, metadata !2904}
!2912 = metadata !{i32 38, i32 10, metadata !89, metadata !2913}
!2913 = metadata !{i32 162, i32 5, metadata !214, metadata !2732}
!2914 = metadata !{i32 254, i32 25, metadata !1151, metadata !2137}
!2915 = metadata !{i32 255, i32 23, metadata !1154, metadata !2137}
!2916 = metadata !{i32 786689, metadata !43, metadata !"DeviceObject", metadata !11, i32 16778165, metadata !14, i32 0, metadata !2917} ; [ DW_TAG_arg_variable ] [DeviceObject] [line 949]
!2917 = metadata !{i32 264, i32 32, metadata !1157, metadata !2137}
!2918 = metadata !{i32 949, i32 23, metadata !43, metadata !2917}
!2919 = metadata !{i32 786689, metadata !43, metadata !"Irp", metadata !11, i32 33555381, metadata !14, i32 0, metadata !2917} ; [ DW_TAG_arg_variable ] [Irp] [line 949]
!2920 = metadata !{i32 949, i32 42, metadata !43, metadata !2917}
!2921 = metadata !{i32 953, i32 18, metadata !43, metadata !2917}
!2922 = metadata !{i32 786688, metadata !43, metadata !"lcontext", metadata !11, i32 953, metadata !14, i32 0, metadata !2917} ; [ DW_TAG_auto_variable ] [lcontext] [line 953]
!2923 = metadata !{i32 953, i32 7, metadata !43, metadata !2917}
!2924 = metadata !{i32 956, i32 7, metadata !404, metadata !2917}
!2925 = metadata !{i32 786689, metadata !18, metadata !"DeviceObject", metadata !11, i32 16777845, metadata !14, i32 0, metadata !2926} ; [ DW_TAG_arg_variable ] [DeviceObject] [line 629]
!2926 = metadata !{i32 958, i32 22, metadata !408, metadata !2917}
!2927 = metadata !{i32 629, i32 27, metadata !18, metadata !2926}
!2928 = metadata !{i32 786689, metadata !18, metadata !"Irp", metadata !11, i32 33555061, metadata !14, i32 0, metadata !2926} ; [ DW_TAG_arg_variable ] [Irp] [line 629]
!2929 = metadata !{i32 629, i32 46, metadata !18, metadata !2926}
!2930 = metadata !{i32 786689, metadata !18, metadata !"Context", metadata !11, i32 50332277, metadata !14, i32 0, metadata !2926} ; [ DW_TAG_arg_variable ] [Context] [line 629]
!2931 = metadata !{i32 629, i32 56, metadata !18, metadata !2926}
!2932 = metadata !{i32 786689, metadata !47, metadata !"Event", metadata !11, i32 16778250, metadata !14, i32 0, metadata !2933} ; [ DW_TAG_arg_variable ] [Event] [line 1034]
!2933 = metadata !{i32 634, i32 3, metadata !417, metadata !2926}
!2934 = metadata !{i32 1034, i32 20, metadata !47, metadata !2933}
!2935 = metadata !{i32 786689, metadata !47, metadata !"Increment", metadata !11, i32 33555466, metadata !14, i32 0, metadata !2933} ; [ DW_TAG_arg_variable ] [Increment] [line 1034]
!2936 = metadata !{i32 1034, i32 32, metadata !47, metadata !2933}
!2937 = metadata !{i32 786689, metadata !47, metadata !"Wait", metadata !11, i32 50332682, metadata !14, i32 0, metadata !2933} ; [ DW_TAG_arg_variable ] [Wait] [line 1034]
!2938 = metadata !{i32 1034, i32 48, metadata !47, metadata !2933}
!2939 = metadata !{i32 1035, i32 11, metadata !47, metadata !2933}
!2940 = metadata !{i32 786688, metadata !47, metadata !"l", metadata !11, i32 1035, metadata !14, i32 0, metadata !2933} ; [ DW_TAG_auto_variable ] [l] [line 1035]
!2941 = metadata !{i32 1035, i32 7, metadata !47, metadata !2933}
!2942 = metadata !{i32 1038, i32 3, metadata !429, metadata !2933}
!2943 = metadata !{i32 786688, metadata !43, metadata !"compRetStatus1", metadata !11, i32 952, metadata !14, i32 0, metadata !2917} ; [ DW_TAG_auto_variable ] [compRetStatus1] [line 952]
!2944 = metadata !{i32 952, i32 7, metadata !43, metadata !2917}
!2945 = metadata !{i32 786688, metadata !43, metadata !"__cil_tmp7", metadata !11, i32 954, metadata !435, i32 0, metadata !2917} ; [ DW_TAG_auto_variable ] [__cil_tmp7] [line 954]
!2946 = metadata !{i32 954, i32 17, metadata !43, metadata !2917}
!2947 = metadata !{i32 939, i32 7, metadata !438, metadata !2948}
!2948 = metadata !{i32 962, i32 7, metadata !441, metadata !2917}
!2949 = metadata !{i32 940, i32 5, metadata !446, metadata !2948}
!2950 = metadata !{i32 964, i32 5, metadata !442, metadata !2917}
!2951 = metadata !{i32 38, i32 10, metadata !89, metadata !2952}
!2952 = metadata !{i32 943, i32 5, metadata !450, metadata !2948}
!2953 = metadata !{i32 971, i32 16, metadata !405, metadata !2917}
!2954 = metadata !{i32 786688, metadata !405, metadata !"tmp_ndt_12", metadata !11, i32 970, metadata !14, i32 0, metadata !2917} ; [ DW_TAG_auto_variable ] [tmp_ndt_12] [line 970]
!2955 = metadata !{i32 970, i32 7, metadata !405, metadata !2917}
!2956 = metadata !{i32 972, i32 7, metadata !456, metadata !2917}
!2957 = metadata !{i32 974, i32 17, metadata !458, metadata !2917}
!2958 = metadata !{i32 786688, metadata !458, metadata !"tmp_ndt_7", metadata !11, i32 973, metadata !14, i32 0, metadata !2917} ; [ DW_TAG_auto_variable ] [tmp_ndt_7] [line 973]
!2959 = metadata !{i32 973, i32 9, metadata !458, metadata !2917}
!2960 = metadata !{i32 975, i32 9, metadata !462, metadata !2917}
!2961 = metadata !{i32 786688, metadata !43, metadata !"returnVal2", metadata !11, i32 951, metadata !14, i32 0, metadata !2917} ; [ DW_TAG_auto_variable ] [returnVal2] [line 951]
!2962 = metadata !{i32 951, i32 7, metadata !43, metadata !2917}
!2963 = metadata !{i32 994, i32 7, metadata !467, metadata !2917}
!2964 = metadata !{i32 995, i32 5, metadata !469, metadata !2917}
!2965 = metadata !{i32 996, i32 5, metadata !469, metadata !2917}
!2966 = metadata !{i32 997, i32 3, metadata !469, metadata !2917}
!2967 = metadata !{i32 998, i32 9, metadata !473, metadata !2917}
!2968 = metadata !{i32 999, i32 11, metadata !476, metadata !2917}
!2969 = metadata !{i32 1000, i32 9, metadata !479, metadata !2917}
!2970 = metadata !{i32 1001, i32 9, metadata !479, metadata !2917}
!2971 = metadata !{i32 1002, i32 7, metadata !479, metadata !2917}
!2972 = metadata !{i32 1003, i32 9, metadata !483, metadata !2917}
!2973 = metadata !{i32 1004, i32 9, metadata !483, metadata !2917}
!2974 = metadata !{i32 1007, i32 11, metadata !486, metadata !2917}
!2975 = metadata !{i32 1008, i32 9, metadata !489, metadata !2917}
!2976 = metadata !{i32 1009, i32 9, metadata !489, metadata !2917}
!2977 = metadata !{i32 38, i32 10, metadata !89, metadata !2978}
!2978 = metadata !{i32 1012, i32 9, metadata !775, metadata !2917}
!2979 = metadata !{i32 38, i32 10, metadata !89, metadata !2980}
!2980 = metadata !{i32 258, i32 23, metadata !1221, metadata !2137}
!2981 = metadata !{i32 316, i32 23, metadata !1224, metadata !2137}
!2982 = metadata !{i32 333, i32 21, metadata !1226, metadata !2137}
!2983 = metadata !{i32 337, i32 25, metadata !1228, metadata !2137}
!2984 = metadata !{i32 786688, metadata !16, metadata !"irpSp___0", metadata !11, i32 189, metadata !14, i32 0, metadata !2137} ; [ DW_TAG_auto_variable ] [irpSp___0] [line 189]
!2985 = metadata !{i32 189, i32 7, metadata !16, metadata !2137}
!2986 = metadata !{i32 786688, metadata !16, metadata !"nextIrpSp__Control", metadata !11, i32 191, metadata !14, i32 0, metadata !2137} ; [ DW_TAG_auto_variable ] [nextIrpSp__Control] [line 191]
!2987 = metadata !{i32 191, i32 7, metadata !16, metadata !2137}
!2988 = metadata !{i32 38, i32 10, metadata !89, metadata !2989}
!2989 = metadata !{i32 339, i32 23, metadata !1235, metadata !2137}
!2990 = metadata !{i32 342, i32 27, metadata !1238, metadata !2137}
!2991 = metadata !{i32 38, i32 10, metadata !89, metadata !2992}
!2992 = metadata !{i32 344, i32 25, metadata !1242, metadata !2137}
!2993 = metadata !{i32 347, i32 25, metadata !1245, metadata !2137}
!2994 = metadata !{i32 786688, metadata !16, metadata !"irpSp__Context", metadata !11, i32 193, metadata !14, i32 0, metadata !2137} ; [ DW_TAG_auto_variable ] [irpSp__Context] [line 193]
!2995 = metadata !{i32 193, i32 7, metadata !16, metadata !2137}
!2996 = metadata !{i32 786688, metadata !16, metadata !"irpSp__Control", metadata !11, i32 194, metadata !14, i32 0, metadata !2137} ; [ DW_TAG_auto_variable ] [irpSp__Control] [line 194]
!2997 = metadata !{i32 194, i32 7, metadata !16, metadata !2137}
!2998 = metadata !{i32 786689, metadata !43, metadata !"DeviceObject", metadata !11, i32 16778165, metadata !14, i32 0, metadata !2999} ; [ DW_TAG_arg_variable ] [DeviceObject] [line 949]
!2999 = metadata !{i32 357, i32 32, metadata !1252, metadata !2137}
!3000 = metadata !{i32 949, i32 23, metadata !43, metadata !2999}
!3001 = metadata !{i32 786689, metadata !43, metadata !"Irp", metadata !11, i32 33555381, metadata !14, i32 0, metadata !2999} ; [ DW_TAG_arg_variable ] [Irp] [line 949]
!3002 = metadata !{i32 949, i32 42, metadata !43, metadata !2999}
!3003 = metadata !{i32 953, i32 18, metadata !43, metadata !2999}
!3004 = metadata !{i32 786688, metadata !43, metadata !"lcontext", metadata !11, i32 953, metadata !14, i32 0, metadata !2999} ; [ DW_TAG_auto_variable ] [lcontext] [line 953]
!3005 = metadata !{i32 953, i32 7, metadata !43, metadata !2999}
!3006 = metadata !{i32 956, i32 7, metadata !404, metadata !2999}
!3007 = metadata !{i32 786689, metadata !18, metadata !"DeviceObject", metadata !11, i32 16777845, metadata !14, i32 0, metadata !3008} ; [ DW_TAG_arg_variable ] [DeviceObject] [line 629]
!3008 = metadata !{i32 958, i32 22, metadata !408, metadata !2999}
!3009 = metadata !{i32 629, i32 27, metadata !18, metadata !3008}
!3010 = metadata !{i32 786689, metadata !18, metadata !"Irp", metadata !11, i32 33555061, metadata !14, i32 0, metadata !3008} ; [ DW_TAG_arg_variable ] [Irp] [line 629]
!3011 = metadata !{i32 629, i32 46, metadata !18, metadata !3008}
!3012 = metadata !{i32 786689, metadata !18, metadata !"Context", metadata !11, i32 50332277, metadata !14, i32 0, metadata !3008} ; [ DW_TAG_arg_variable ] [Context] [line 629]
!3013 = metadata !{i32 629, i32 56, metadata !18, metadata !3008}
!3014 = metadata !{i32 786689, metadata !47, metadata !"Event", metadata !11, i32 16778250, metadata !14, i32 0, metadata !3015} ; [ DW_TAG_arg_variable ] [Event] [line 1034]
!3015 = metadata !{i32 634, i32 3, metadata !417, metadata !3008}
!3016 = metadata !{i32 1034, i32 20, metadata !47, metadata !3015}
!3017 = metadata !{i32 786689, metadata !47, metadata !"Increment", metadata !11, i32 33555466, metadata !14, i32 0, metadata !3015} ; [ DW_TAG_arg_variable ] [Increment] [line 1034]
!3018 = metadata !{i32 1034, i32 32, metadata !47, metadata !3015}
!3019 = metadata !{i32 786689, metadata !47, metadata !"Wait", metadata !11, i32 50332682, metadata !14, i32 0, metadata !3015} ; [ DW_TAG_arg_variable ] [Wait] [line 1034]
!3020 = metadata !{i32 1034, i32 48, metadata !47, metadata !3015}
!3021 = metadata !{i32 1035, i32 11, metadata !47, metadata !3015}
!3022 = metadata !{i32 786688, metadata !47, metadata !"l", metadata !11, i32 1035, metadata !14, i32 0, metadata !3015} ; [ DW_TAG_auto_variable ] [l] [line 1035]
!3023 = metadata !{i32 1035, i32 7, metadata !47, metadata !3015}
!3024 = metadata !{i32 1038, i32 3, metadata !429, metadata !3015}
!3025 = metadata !{i32 786688, metadata !43, metadata !"compRetStatus1", metadata !11, i32 952, metadata !14, i32 0, metadata !2999} ; [ DW_TAG_auto_variable ] [compRetStatus1] [line 952]
!3026 = metadata !{i32 952, i32 7, metadata !43, metadata !2999}
!3027 = metadata !{i32 786688, metadata !43, metadata !"__cil_tmp7", metadata !11, i32 954, metadata !435, i32 0, metadata !2999} ; [ DW_TAG_auto_variable ] [__cil_tmp7] [line 954]
!3028 = metadata !{i32 954, i32 17, metadata !43, metadata !2999}
!3029 = metadata !{i32 939, i32 7, metadata !438, metadata !3030}
!3030 = metadata !{i32 962, i32 7, metadata !441, metadata !2999}
!3031 = metadata !{i32 940, i32 5, metadata !446, metadata !3030}
!3032 = metadata !{i32 964, i32 5, metadata !442, metadata !2999}
!3033 = metadata !{i32 38, i32 10, metadata !89, metadata !3034}
!3034 = metadata !{i32 943, i32 5, metadata !450, metadata !3030}
!3035 = metadata !{i32 971, i32 16, metadata !405, metadata !2999}
!3036 = metadata !{i32 786688, metadata !405, metadata !"tmp_ndt_12", metadata !11, i32 970, metadata !14, i32 0, metadata !2999} ; [ DW_TAG_auto_variable ] [tmp_ndt_12] [line 970]
!3037 = metadata !{i32 970, i32 7, metadata !405, metadata !2999}
!3038 = metadata !{i32 972, i32 7, metadata !456, metadata !2999}
!3039 = metadata !{i32 974, i32 17, metadata !458, metadata !2999}
!3040 = metadata !{i32 786688, metadata !458, metadata !"tmp_ndt_7", metadata !11, i32 973, metadata !14, i32 0, metadata !2999} ; [ DW_TAG_auto_variable ] [tmp_ndt_7] [line 973]
!3041 = metadata !{i32 973, i32 9, metadata !458, metadata !2999}
!3042 = metadata !{i32 975, i32 9, metadata !462, metadata !2999}
!3043 = metadata !{i32 786688, metadata !43, metadata !"returnVal2", metadata !11, i32 951, metadata !14, i32 0, metadata !2999} ; [ DW_TAG_auto_variable ] [returnVal2] [line 951]
!3044 = metadata !{i32 951, i32 7, metadata !43, metadata !2999}
!3045 = metadata !{i32 994, i32 7, metadata !467, metadata !2999}
!3046 = metadata !{i32 995, i32 5, metadata !469, metadata !2999}
!3047 = metadata !{i32 996, i32 5, metadata !469, metadata !2999}
!3048 = metadata !{i32 997, i32 3, metadata !469, metadata !2999}
!3049 = metadata !{i32 998, i32 9, metadata !473, metadata !2999}
!3050 = metadata !{i32 999, i32 11, metadata !476, metadata !2999}
!3051 = metadata !{i32 1000, i32 9, metadata !479, metadata !2999}
!3052 = metadata !{i32 1001, i32 9, metadata !479, metadata !2999}
!3053 = metadata !{i32 1002, i32 7, metadata !479, metadata !2999}
!3054 = metadata !{i32 1003, i32 9, metadata !483, metadata !2999}
!3055 = metadata !{i32 1004, i32 9, metadata !483, metadata !2999}
!3056 = metadata !{i32 1007, i32 11, metadata !486, metadata !2999}
!3057 = metadata !{i32 1008, i32 9, metadata !489, metadata !2999}
!3058 = metadata !{i32 1009, i32 9, metadata !489, metadata !2999}
!3059 = metadata !{i32 359, i32 21, metadata !1313, metadata !2137}
!3060 = metadata !{i32 786688, metadata !16, metadata !"__cil_tmp30", metadata !11, i32 196, metadata !496, i32 0, metadata !2137} ; [ DW_TAG_auto_variable ] [__cil_tmp30] [line 196]
!3061 = metadata !{i32 196, i32 8, metadata !16, metadata !2137}
!3062 = metadata !{i32 359, i32 25, metadata !1317, metadata !2137}
!3063 = metadata !{i32 786689, metadata !48, metadata !"Object", metadata !11, i32 16778258, metadata !14, i32 0, metadata !3064} ; [ DW_TAG_arg_variable ] [Object] [line 1042]
!3064 = metadata !{i32 361, i32 23, metadata !1320, metadata !2137}
!3065 = metadata !{i32 1042, i32 31, metadata !48, metadata !3064}
!3066 = metadata !{i32 786689, metadata !48, metadata !"Alertable", metadata !11, i32 67109906, metadata !14, i32 0, metadata !3064} ; [ DW_TAG_arg_variable ] [Alertable] [line 1042]
!3067 = metadata !{i32 1042, i32 76, metadata !48, metadata !3064}
!3068 = metadata !{i32 786689, metadata !48, metadata !"Timeout", metadata !11, i32 83887123, metadata !14, i32 0, metadata !3064} ; [ DW_TAG_arg_variable ] [Timeout] [line 1043]
!3069 = metadata !{i32 1043, i32 31, metadata !48, metadata !3064}
!3070 = metadata !{i32 1047, i32 7, metadata !510, metadata !3064}
!3071 = metadata !{i32 1048, i32 9, metadata !513, metadata !3064}
!3072 = metadata !{i32 1049, i32 7, metadata !516, metadata !3064}
!3073 = metadata !{i32 1050, i32 7, metadata !516, metadata !3064}
!3074 = metadata !{i32 1054, i32 3, metadata !514, metadata !3064}
!3075 = metadata !{i32 1056, i32 9, metadata !520, metadata !3064}
!3076 = metadata !{i32 1057, i32 7, metadata !523, metadata !3064}
!3077 = metadata !{i32 1058, i32 7, metadata !523, metadata !3064}
!3078 = metadata !{i32 1059, i32 5, metadata !523, metadata !3064}
!3079 = metadata !{i32 1060, i32 11, metadata !527, metadata !3064}
!3080 = metadata !{i32 38, i32 10, metadata !89, metadata !3081}
!3081 = metadata !{i32 1062, i32 9, metadata !531, metadata !3064}
!3082 = metadata !{i32 1070, i32 15, metadata !511, metadata !3064}
!3083 = metadata !{i32 786688, metadata !511, metadata !"tmp_ndt_8", metadata !11, i32 1069, metadata !14, i32 0, metadata !3064} ; [ DW_TAG_auto_variable ] [tmp_ndt_8] [line 1069]
!3084 = metadata !{i32 1069, i32 7, metadata !511, metadata !3064}
!3085 = metadata !{i32 362, i32 23, metadata !1320, metadata !2137}
!3086 = metadata !{i32 364, i32 21, metadata !1321, metadata !2137}
!3087 = metadata !{i32 370, i32 21, metadata !1345, metadata !2137}
!3088 = metadata !{i32 786689, metadata !44, metadata !"Irp", metadata !11, i32 16778236, metadata !14, i32 0, metadata !3089} ; [ DW_TAG_arg_variable ] [Irp] [line 1020]
!3089 = metadata !{i32 372, i32 21, metadata !1345, metadata !2137}
!3090 = metadata !{i32 1020, i32 29, metadata !44, metadata !3089}
!3091 = metadata !{i32 786689, metadata !44, metadata !"PriorityBoost", metadata !11, i32 33555452, metadata !14, i32 0, metadata !3089} ; [ DW_TAG_arg_variable ] [PriorityBoost] [line 1020]
!3092 = metadata !{i32 1020, i32 39, metadata !44, metadata !3089}
!3093 = metadata !{i32 1024, i32 7, metadata !286, metadata !3089}
!3094 = metadata !{i32 1025, i32 5, metadata !289, metadata !3089}
!3095 = metadata !{i32 38, i32 10, metadata !89, metadata !3096}
!3096 = metadata !{i32 1028, i32 5, metadata !293, metadata !3089}
!3097 = metadata !{i32 38, i32 10, metadata !89, metadata !3098}
!3098 = metadata !{i32 1012, i32 9, metadata !775, metadata !2999}
!3099 = metadata !{i32 319, i32 25, metadata !1358, metadata !2137}
!3100 = metadata !{i32 320, i32 23, metadata !1361, metadata !2137}
!3101 = metadata !{i32 786689, metadata !43, metadata !"DeviceObject", metadata !11, i32 16778165, metadata !14, i32 0, metadata !3102} ; [ DW_TAG_arg_variable ] [DeviceObject] [line 949]
!3102 = metadata !{i32 329, i32 32, metadata !1364, metadata !2137}
!3103 = metadata !{i32 949, i32 23, metadata !43, metadata !3102}
!3104 = metadata !{i32 786689, metadata !43, metadata !"Irp", metadata !11, i32 33555381, metadata !14, i32 0, metadata !3102} ; [ DW_TAG_arg_variable ] [Irp] [line 949]
!3105 = metadata !{i32 949, i32 42, metadata !43, metadata !3102}
!3106 = metadata !{i32 953, i32 18, metadata !43, metadata !3102}
!3107 = metadata !{i32 786688, metadata !43, metadata !"lcontext", metadata !11, i32 953, metadata !14, i32 0, metadata !3102} ; [ DW_TAG_auto_variable ] [lcontext] [line 953]
!3108 = metadata !{i32 953, i32 7, metadata !43, metadata !3102}
!3109 = metadata !{i32 956, i32 7, metadata !404, metadata !3102}
!3110 = metadata !{i32 786689, metadata !18, metadata !"DeviceObject", metadata !11, i32 16777845, metadata !14, i32 0, metadata !3111} ; [ DW_TAG_arg_variable ] [DeviceObject] [line 629]
!3111 = metadata !{i32 958, i32 22, metadata !408, metadata !3102}
!3112 = metadata !{i32 629, i32 27, metadata !18, metadata !3111}
!3113 = metadata !{i32 786689, metadata !18, metadata !"Irp", metadata !11, i32 33555061, metadata !14, i32 0, metadata !3111} ; [ DW_TAG_arg_variable ] [Irp] [line 629]
!3114 = metadata !{i32 629, i32 46, metadata !18, metadata !3111}
!3115 = metadata !{i32 786689, metadata !18, metadata !"Context", metadata !11, i32 50332277, metadata !14, i32 0, metadata !3111} ; [ DW_TAG_arg_variable ] [Context] [line 629]
!3116 = metadata !{i32 629, i32 56, metadata !18, metadata !3111}
!3117 = metadata !{i32 786689, metadata !47, metadata !"Event", metadata !11, i32 16778250, metadata !14, i32 0, metadata !3118} ; [ DW_TAG_arg_variable ] [Event] [line 1034]
!3118 = metadata !{i32 634, i32 3, metadata !417, metadata !3111}
!3119 = metadata !{i32 1034, i32 20, metadata !47, metadata !3118}
!3120 = metadata !{i32 786689, metadata !47, metadata !"Increment", metadata !11, i32 33555466, metadata !14, i32 0, metadata !3118} ; [ DW_TAG_arg_variable ] [Increment] [line 1034]
!3121 = metadata !{i32 1034, i32 32, metadata !47, metadata !3118}
!3122 = metadata !{i32 786689, metadata !47, metadata !"Wait", metadata !11, i32 50332682, metadata !14, i32 0, metadata !3118} ; [ DW_TAG_arg_variable ] [Wait] [line 1034]
!3123 = metadata !{i32 1034, i32 48, metadata !47, metadata !3118}
!3124 = metadata !{i32 1035, i32 11, metadata !47, metadata !3118}
!3125 = metadata !{i32 786688, metadata !47, metadata !"l", metadata !11, i32 1035, metadata !14, i32 0, metadata !3118} ; [ DW_TAG_auto_variable ] [l] [line 1035]
!3126 = metadata !{i32 1035, i32 7, metadata !47, metadata !3118}
!3127 = metadata !{i32 1038, i32 3, metadata !429, metadata !3118}
!3128 = metadata !{i32 786688, metadata !43, metadata !"compRetStatus1", metadata !11, i32 952, metadata !14, i32 0, metadata !3102} ; [ DW_TAG_auto_variable ] [compRetStatus1] [line 952]
!3129 = metadata !{i32 952, i32 7, metadata !43, metadata !3102}
!3130 = metadata !{i32 786688, metadata !43, metadata !"__cil_tmp7", metadata !11, i32 954, metadata !435, i32 0, metadata !3102} ; [ DW_TAG_auto_variable ] [__cil_tmp7] [line 954]
!3131 = metadata !{i32 954, i32 17, metadata !43, metadata !3102}
!3132 = metadata !{i32 939, i32 7, metadata !438, metadata !3133}
!3133 = metadata !{i32 962, i32 7, metadata !441, metadata !3102}
!3134 = metadata !{i32 940, i32 5, metadata !446, metadata !3133}
!3135 = metadata !{i32 964, i32 5, metadata !442, metadata !3102}
!3136 = metadata !{i32 38, i32 10, metadata !89, metadata !3137}
!3137 = metadata !{i32 943, i32 5, metadata !450, metadata !3133}
!3138 = metadata !{i32 971, i32 16, metadata !405, metadata !3102}
!3139 = metadata !{i32 786688, metadata !405, metadata !"tmp_ndt_12", metadata !11, i32 970, metadata !14, i32 0, metadata !3102} ; [ DW_TAG_auto_variable ] [tmp_ndt_12] [line 970]
!3140 = metadata !{i32 970, i32 7, metadata !405, metadata !3102}
!3141 = metadata !{i32 972, i32 7, metadata !456, metadata !3102}
!3142 = metadata !{i32 974, i32 17, metadata !458, metadata !3102}
!3143 = metadata !{i32 786688, metadata !458, metadata !"tmp_ndt_7", metadata !11, i32 973, metadata !14, i32 0, metadata !3102} ; [ DW_TAG_auto_variable ] [tmp_ndt_7] [line 973]
!3144 = metadata !{i32 973, i32 9, metadata !458, metadata !3102}
!3145 = metadata !{i32 975, i32 9, metadata !462, metadata !3102}
!3146 = metadata !{i32 786688, metadata !43, metadata !"returnVal2", metadata !11, i32 951, metadata !14, i32 0, metadata !3102} ; [ DW_TAG_auto_variable ] [returnVal2] [line 951]
!3147 = metadata !{i32 951, i32 7, metadata !43, metadata !3102}
!3148 = metadata !{i32 994, i32 7, metadata !467, metadata !3102}
!3149 = metadata !{i32 995, i32 5, metadata !469, metadata !3102}
!3150 = metadata !{i32 996, i32 5, metadata !469, metadata !3102}
!3151 = metadata !{i32 997, i32 3, metadata !469, metadata !3102}
!3152 = metadata !{i32 998, i32 9, metadata !473, metadata !3102}
!3153 = metadata !{i32 999, i32 11, metadata !476, metadata !3102}
!3154 = metadata !{i32 1000, i32 9, metadata !479, metadata !3102}
!3155 = metadata !{i32 1001, i32 9, metadata !479, metadata !3102}
!3156 = metadata !{i32 1002, i32 7, metadata !479, metadata !3102}
!3157 = metadata !{i32 1003, i32 9, metadata !483, metadata !3102}
!3158 = metadata !{i32 1004, i32 9, metadata !483, metadata !3102}
!3159 = metadata !{i32 1007, i32 11, metadata !486, metadata !3102}
!3160 = metadata !{i32 1008, i32 9, metadata !489, metadata !3102}
!3161 = metadata !{i32 1009, i32 9, metadata !489, metadata !3102}
!3162 = metadata !{i32 38, i32 10, metadata !89, metadata !3163}
!3163 = metadata !{i32 1012, i32 9, metadata !775, metadata !3102}
!3164 = metadata !{i32 38, i32 10, metadata !89, metadata !3165}
!3165 = metadata !{i32 323, i32 23, metadata !1428, metadata !2137}
!3166 = metadata !{i32 429, i32 23, metadata !1431, metadata !2137}
!3167 = metadata !{i32 430, i32 21, metadata !1433, metadata !2137}
!3168 = metadata !{i32 786689, metadata !43, metadata !"DeviceObject", metadata !11, i32 16778165, metadata !14, i32 0, metadata !3169} ; [ DW_TAG_arg_variable ] [DeviceObject] [line 949]
!3169 = metadata !{i32 439, i32 30, metadata !1436, metadata !2137}
!3170 = metadata !{i32 949, i32 23, metadata !43, metadata !3169}
!3171 = metadata !{i32 786689, metadata !43, metadata !"Irp", metadata !11, i32 33555381, metadata !14, i32 0, metadata !3169} ; [ DW_TAG_arg_variable ] [Irp] [line 949]
!3172 = metadata !{i32 949, i32 42, metadata !43, metadata !3169}
!3173 = metadata !{i32 953, i32 18, metadata !43, metadata !3169}
!3174 = metadata !{i32 786688, metadata !43, metadata !"lcontext", metadata !11, i32 953, metadata !14, i32 0, metadata !3169} ; [ DW_TAG_auto_variable ] [lcontext] [line 953]
!3175 = metadata !{i32 953, i32 7, metadata !43, metadata !3169}
!3176 = metadata !{i32 956, i32 7, metadata !404, metadata !3169}
!3177 = metadata !{i32 786689, metadata !18, metadata !"DeviceObject", metadata !11, i32 16777845, metadata !14, i32 0, metadata !3178} ; [ DW_TAG_arg_variable ] [DeviceObject] [line 629]
!3178 = metadata !{i32 958, i32 22, metadata !408, metadata !3169}
!3179 = metadata !{i32 629, i32 27, metadata !18, metadata !3178}
!3180 = metadata !{i32 786689, metadata !18, metadata !"Irp", metadata !11, i32 33555061, metadata !14, i32 0, metadata !3178} ; [ DW_TAG_arg_variable ] [Irp] [line 629]
!3181 = metadata !{i32 629, i32 46, metadata !18, metadata !3178}
!3182 = metadata !{i32 786689, metadata !18, metadata !"Context", metadata !11, i32 50332277, metadata !14, i32 0, metadata !3178} ; [ DW_TAG_arg_variable ] [Context] [line 629]
!3183 = metadata !{i32 629, i32 56, metadata !18, metadata !3178}
!3184 = metadata !{i32 786689, metadata !47, metadata !"Event", metadata !11, i32 16778250, metadata !14, i32 0, metadata !3185} ; [ DW_TAG_arg_variable ] [Event] [line 1034]
!3185 = metadata !{i32 634, i32 3, metadata !417, metadata !3178}
!3186 = metadata !{i32 1034, i32 20, metadata !47, metadata !3185}
!3187 = metadata !{i32 786689, metadata !47, metadata !"Increment", metadata !11, i32 33555466, metadata !14, i32 0, metadata !3185} ; [ DW_TAG_arg_variable ] [Increment] [line 1034]
!3188 = metadata !{i32 1034, i32 32, metadata !47, metadata !3185}
!3189 = metadata !{i32 786689, metadata !47, metadata !"Wait", metadata !11, i32 50332682, metadata !14, i32 0, metadata !3185} ; [ DW_TAG_arg_variable ] [Wait] [line 1034]
!3190 = metadata !{i32 1034, i32 48, metadata !47, metadata !3185}
!3191 = metadata !{i32 1035, i32 11, metadata !47, metadata !3185}
!3192 = metadata !{i32 786688, metadata !47, metadata !"l", metadata !11, i32 1035, metadata !14, i32 0, metadata !3185} ; [ DW_TAG_auto_variable ] [l] [line 1035]
!3193 = metadata !{i32 1035, i32 7, metadata !47, metadata !3185}
!3194 = metadata !{i32 1038, i32 3, metadata !429, metadata !3185}
!3195 = metadata !{i32 786688, metadata !43, metadata !"compRetStatus1", metadata !11, i32 952, metadata !14, i32 0, metadata !3169} ; [ DW_TAG_auto_variable ] [compRetStatus1] [line 952]
!3196 = metadata !{i32 952, i32 7, metadata !43, metadata !3169}
!3197 = metadata !{i32 786688, metadata !43, metadata !"__cil_tmp7", metadata !11, i32 954, metadata !435, i32 0, metadata !3169} ; [ DW_TAG_auto_variable ] [__cil_tmp7] [line 954]
!3198 = metadata !{i32 954, i32 17, metadata !43, metadata !3169}
!3199 = metadata !{i32 939, i32 7, metadata !438, metadata !3200}
!3200 = metadata !{i32 962, i32 7, metadata !441, metadata !3169}
!3201 = metadata !{i32 940, i32 5, metadata !446, metadata !3200}
!3202 = metadata !{i32 964, i32 5, metadata !442, metadata !3169}
!3203 = metadata !{i32 38, i32 10, metadata !89, metadata !3204}
!3204 = metadata !{i32 943, i32 5, metadata !450, metadata !3200}
!3205 = metadata !{i32 971, i32 16, metadata !405, metadata !3169}
!3206 = metadata !{i32 786688, metadata !405, metadata !"tmp_ndt_12", metadata !11, i32 970, metadata !14, i32 0, metadata !3169} ; [ DW_TAG_auto_variable ] [tmp_ndt_12] [line 970]
!3207 = metadata !{i32 970, i32 7, metadata !405, metadata !3169}
!3208 = metadata !{i32 972, i32 7, metadata !456, metadata !3169}
!3209 = metadata !{i32 974, i32 17, metadata !458, metadata !3169}
!3210 = metadata !{i32 786688, metadata !458, metadata !"tmp_ndt_7", metadata !11, i32 973, metadata !14, i32 0, metadata !3169} ; [ DW_TAG_auto_variable ] [tmp_ndt_7] [line 973]
!3211 = metadata !{i32 973, i32 9, metadata !458, metadata !3169}
!3212 = metadata !{i32 975, i32 9, metadata !462, metadata !3169}
!3213 = metadata !{i32 786688, metadata !43, metadata !"returnVal2", metadata !11, i32 951, metadata !14, i32 0, metadata !3169} ; [ DW_TAG_auto_variable ] [returnVal2] [line 951]
!3214 = metadata !{i32 951, i32 7, metadata !43, metadata !3169}
!3215 = metadata !{i32 994, i32 7, metadata !467, metadata !3169}
!3216 = metadata !{i32 995, i32 5, metadata !469, metadata !3169}
!3217 = metadata !{i32 996, i32 5, metadata !469, metadata !3169}
!3218 = metadata !{i32 997, i32 3, metadata !469, metadata !3169}
!3219 = metadata !{i32 998, i32 9, metadata !473, metadata !3169}
!3220 = metadata !{i32 999, i32 11, metadata !476, metadata !3169}
!3221 = metadata !{i32 1000, i32 9, metadata !479, metadata !3169}
!3222 = metadata !{i32 1001, i32 9, metadata !479, metadata !3169}
!3223 = metadata !{i32 1002, i32 7, metadata !479, metadata !3169}
!3224 = metadata !{i32 1003, i32 9, metadata !483, metadata !3169}
!3225 = metadata !{i32 1004, i32 9, metadata !483, metadata !3169}
!3226 = metadata !{i32 1007, i32 11, metadata !486, metadata !3169}
!3227 = metadata !{i32 1008, i32 9, metadata !489, metadata !3169}
!3228 = metadata !{i32 1009, i32 9, metadata !489, metadata !3169}
!3229 = metadata !{i32 452, i32 3, metadata !265, metadata !2137}
!3230 = metadata !{i32 458, i32 3, metadata !265, metadata !2137}
!3231 = metadata !{i32 38, i32 10, metadata !89, metadata !3232}
!3232 = metadata !{i32 1012, i32 9, metadata !775, metadata !3169}
!3233 = metadata !{i32 38, i32 10, metadata !89, metadata !3234}
!3234 = metadata !{i32 433, i32 21, metadata !1503, metadata !2137}
!3235 = metadata !{i32 753, i32 7, metadata !3236, null}
!3236 = metadata !{i32 786443, metadata !10, metadata !2089, i32 753, i32 7, i32 0, i32 200} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!3237 = metadata !{i32 754, i32 9, metadata !3238, null}
!3238 = metadata !{i32 786443, metadata !10, metadata !3239, i32 754, i32 9, i32 0, i32 202} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!3239 = metadata !{i32 786443, metadata !10, metadata !3236, i32 753, i32 20, i32 0, i32 201} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!3240 = metadata !{i32 755, i32 7, metadata !3241, null}
!3241 = metadata !{i32 786443, metadata !10, metadata !3238, i32 754, i32 18, i32 0, i32 203} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!3242 = metadata !{i32 759, i32 3, metadata !3239, null}
!3243 = metadata !{i32 761, i32 9, metadata !3244, null}
!3244 = metadata !{i32 786443, metadata !10, metadata !3245, i32 761, i32 9, i32 0, i32 206} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!3245 = metadata !{i32 786443, metadata !10, metadata !3236, i32 759, i32 10, i32 0, i32 205} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!3246 = metadata !{i32 762, i32 11, metadata !3247, null}
!3247 = metadata !{i32 786443, metadata !10, metadata !3248, i32 762, i32 11, i32 0, i32 208} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!3248 = metadata !{i32 786443, metadata !10, metadata !3244, i32 761, i32 22, i32 0, i32 207} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!3249 = metadata !{i32 763, i32 9, metadata !3250, null}
!3250 = metadata !{i32 786443, metadata !10, metadata !3247, i32 762, i32 22, i32 0, i32 209} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!3251 = metadata !{i32 767, i32 5, metadata !3248, null}
!3252 = metadata !{i32 769, i32 11, metadata !3253, null}
!3253 = metadata !{i32 786443, metadata !10, metadata !3254, i32 769, i32 11, i32 0, i32 212} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!3254 = metadata !{i32 786443, metadata !10, metadata !3244, i32 767, i32 12, i32 0, i32 211} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!3255 = metadata !{i32 772, i32 13, metadata !3256, null}
!3256 = metadata !{i32 786443, metadata !10, metadata !3257, i32 772, i32 13, i32 0, i32 214} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!3257 = metadata !{i32 786443, metadata !10, metadata !3253, i32 769, i32 26, i32 0, i32 213} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!3258 = metadata !{i32 775, i32 15, metadata !3259, null}
!3259 = metadata !{i32 786443, metadata !10, metadata !3260, i32 775, i32 15, i32 0, i32 216} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!3260 = metadata !{i32 786443, metadata !10, metadata !3256, i32 772, i32 27, i32 0, i32 215} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!3261 = metadata !{i32 776, i32 17, metadata !3262, null}
!3262 = metadata !{i32 786443, metadata !10, metadata !3263, i32 776, i32 17, i32 0, i32 218} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!3263 = metadata !{i32 786443, metadata !10, metadata !3259, i32 775, i32 27, i32 0, i32 217} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!3264 = metadata !{i32 777, i32 19, metadata !3265, null}
!3265 = metadata !{i32 786443, metadata !10, metadata !3266, i32 777, i32 19, i32 0, i32 220} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!3266 = metadata !{i32 786443, metadata !10, metadata !3262, i32 776, i32 27, i32 0, i32 219} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!3267 = metadata !{i32 38, i32 10, metadata !89, metadata !3268}
!3268 = metadata !{i32 779, i32 17, metadata !3269, null}
!3269 = metadata !{i32 786443, metadata !10, metadata !3270, i32 778, i32 17, i32 0, i32 222} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!3270 = metadata !{i32 786443, metadata !10, metadata !3265, i32 777, i32 28, i32 0, i32 221} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!3271 = metadata !{i32 789, i32 17, metadata !3272, null}
!3272 = metadata !{i32 786443, metadata !10, metadata !3273, i32 789, i32 17, i32 0, i32 226} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!3273 = metadata !{i32 786443, metadata !10, metadata !3259, i32 787, i32 18, i32 0, i32 225} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!3274 = metadata !{i32 790, i32 19, metadata !3275, null}
!3275 = metadata !{i32 786443, metadata !10, metadata !3276, i32 790, i32 19, i32 0, i32 228} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!3276 = metadata !{i32 786443, metadata !10, metadata !3272, i32 789, i32 30, i32 0, i32 227} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!3277 = metadata !{i32 38, i32 10, metadata !89, metadata !3278}
!3278 = metadata !{i32 791, i32 17, metadata !3279, null}
!3279 = metadata !{i32 786443, metadata !10, metadata !3275, i32 790, i32 34, i32 0, i32 229} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!3280 = metadata !{i32 796, i32 19, metadata !3281, null}
!3281 = metadata !{i32 786443, metadata !10, metadata !3282, i32 796, i32 19, i32 0, i32 231} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!3282 = metadata !{i32 786443, metadata !10, metadata !3272, i32 793, i32 20, i32 0, i32 230} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!3283 = metadata !{i32 797, i32 21, metadata !3284, null}
!3284 = metadata !{i32 786443, metadata !10, metadata !3285, i32 797, i32 21, i32 0, i32 233} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!3285 = metadata !{i32 786443, metadata !10, metadata !3281, i32 796, i32 28, i32 0, i32 232} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!3286 = metadata !{i32 38, i32 10, metadata !89, metadata !3287}
!3287 = metadata !{i32 799, i32 19, metadata !3288, null}
!3288 = metadata !{i32 786443, metadata !10, metadata !3289, i32 798, i32 19, i32 0, i32 235} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!3289 = metadata !{i32 786443, metadata !10, metadata !3284, i32 797, i32 36, i32 0, i32 234} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!3290 = metadata !{i32 805, i32 21, metadata !3291, null}
!3291 = metadata !{i32 786443, metadata !10, metadata !3292, i32 805, i32 21, i32 0, i32 237} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!3292 = metadata !{i32 786443, metadata !10, metadata !3281, i32 802, i32 22, i32 0, i32 236} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!3293 = metadata !{i32 38, i32 10, metadata !89, metadata !3294}
!3294 = metadata !{i32 807, i32 19, metadata !3295, null}
!3295 = metadata !{i32 786443, metadata !10, metadata !3296, i32 806, i32 19, i32 0, i32 239} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!3296 = metadata !{i32 786443, metadata !10, metadata !3291, i32 805, i32 50, i32 0, i32 238} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!3297 = metadata !{i32 822, i32 1, metadata !26, null}
!3298 = metadata !{i32 786689, metadata !29, metadata !"IoControlCode", metadata !11, i32 16778039, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [IoControlCode] [line 823]
!3299 = metadata !{i32 823, i32 39, metadata !29, null}
!3300 = metadata !{i32 786689, metadata !29, metadata !"DeviceObject", metadata !11, i32 33555255, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [DeviceObject] [line 823]
!3301 = metadata !{i32 823, i32 59, metadata !29, null}
!3302 = metadata !{i32 786689, metadata !29, metadata !"InputBuffer", metadata !11, i32 50332471, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InputBuffer] [line 823]
!3303 = metadata !{i32 823, i32 78, metadata !29, null}
!3304 = metadata !{i32 786689, metadata !29, metadata !"InputBufferLength", metadata !11, i32 67109688, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InputBufferLength] [line 824]
!3305 = metadata !{i32 824, i32 39, metadata !29, null}
!3306 = metadata !{i32 786689, metadata !29, metadata !"OutputBuffer", metadata !11, i32 83886904, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [OutputBuffer] [line 824]
!3307 = metadata !{i32 824, i32 63, metadata !29, null}
!3308 = metadata !{i32 786689, metadata !29, metadata !"OutputBufferLength", metadata !11, i32 100664120, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [OutputBufferLength] [line 824]
!3309 = metadata !{i32 824, i32 82, metadata !29, null}
!3310 = metadata !{i32 786689, metadata !29, metadata !"InternalDeviceIoControl", metadata !11, i32 117441337, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InternalDeviceIoControl] [line 825]
!3311 = metadata !{i32 825, i32 39, metadata !29, null}
!3312 = metadata !{i32 786689, metadata !29, metadata !"Event", metadata !11, i32 134218553, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Event] [line 825]
!3313 = metadata !{i32 825, i32 69, metadata !29, null}
!3314 = metadata !{i32 786689, metadata !29, metadata !"IoStatusBlock", metadata !11, i32 150995769, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [IoStatusBlock] [line 825]
!3315 = metadata !{i32 825, i32 81, metadata !29, null}
!3316 = metadata !{i32 827, i32 16, metadata !29, null}
!3317 = metadata !{i32 786688, metadata !29, metadata !"malloc", metadata !11, i32 827, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [malloc] [line 827]
!3318 = metadata !{i32 827, i32 7, metadata !29, null}
!3319 = metadata !{i32 830, i32 3, metadata !595, null}
!3320 = metadata !{i32 832, i32 15, metadata !595, null}
!3321 = metadata !{i32 786688, metadata !595, metadata !"tmp_ndt_2", metadata !11, i32 831, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp_ndt_2] [line 831]
!3322 = metadata !{i32 831, i32 7, metadata !595, null}
!3323 = metadata !{i32 833, i32 7, metadata !600, null}
!3324 = metadata !{i32 846, i32 1, metadata !29, null}
!3325 = metadata !{i32 786689, metadata !32, metadata !"SymbolicLinkName", metadata !11, i32 16778064, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [SymbolicLinkName] [line 848]
!3326 = metadata !{i32 848, i32 30, metadata !32, null}
!3327 = metadata !{i32 853, i32 15, metadata !869, null}
!3328 = metadata !{i32 786688, metadata !869, metadata !"tmp_ndt_3", metadata !11, i32 852, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp_ndt_3] [line 852]
!3329 = metadata !{i32 852, i32 7, metadata !869, null}
!3330 = metadata !{i32 854, i32 7, metadata !3331, null}
!3331 = metadata !{i32 786443, metadata !10, metadata !869, i32 854, i32 7, i32 0, i32 248} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!3332 = metadata !{i32 867, i32 1, metadata !32, null}
!3333 = metadata !{i32 786689, metadata !35, metadata !"BusType", metadata !11, i32 16778085, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [BusType] [line 869]
!3334 = metadata !{i32 869, i32 34, metadata !35, null}
!3335 = metadata !{i32 786689, metadata !35, metadata !"BusNumber", metadata !11, i32 33555301, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [BusNumber] [line 869]
!3336 = metadata !{i32 869, i32 48, metadata !35, null}
!3337 = metadata !{i32 786689, metadata !35, metadata !"ControllerType", metadata !11, i32 50332517, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ControllerType] [line 869]
!3338 = metadata !{i32 869, i32 64, metadata !35, null}
!3339 = metadata !{i32 786689, metadata !35, metadata !"ControllerNumber", metadata !11, i32 67109733, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ControllerNumber] [line 869]
!3340 = metadata !{i32 869, i32 85, metadata !35, null}
!3341 = metadata !{i32 786689, metadata !35, metadata !"PeripheralType", metadata !11, i32 83886950, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [PeripheralType] [line 870]
!3342 = metadata !{i32 870, i32 34, metadata !35, null}
!3343 = metadata !{i32 786689, metadata !35, metadata !"PeripheralNumber", metadata !11, i32 100664166, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [PeripheralNumber] [line 870]
!3344 = metadata !{i32 870, i32 55, metadata !35, null}
!3345 = metadata !{i32 786689, metadata !35, metadata !"CalloutRoutine", metadata !11, i32 117441382, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [CalloutRoutine] [line 870]
!3346 = metadata !{i32 870, i32 78, metadata !35, null}
!3347 = metadata !{i32 786689, metadata !35, metadata !"Context", metadata !11, i32 134218599, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Context] [line 871]
!3348 = metadata !{i32 871, i32 34, metadata !35, null}
!3349 = metadata !{i32 876, i32 15, metadata !719, null}
!3350 = metadata !{i32 786688, metadata !719, metadata !"tmp_ndt_4", metadata !11, i32 875, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp_ndt_4] [line 875]
!3351 = metadata !{i32 875, i32 7, metadata !719, null}
!3352 = metadata !{i32 877, i32 7, metadata !723, null}
!3353 = metadata !{i32 890, i32 1, metadata !35, null}
!3354 = metadata !{i32 786689, metadata !38, metadata !"PhysicalDeviceObject", metadata !11, i32 16778108, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [PhysicalDeviceObject] [line 892]
!3355 = metadata !{i32 892, i32 35, metadata !38, null}
!3356 = metadata !{i32 786689, metadata !38, metadata !"InterfaceClassGuid", metadata !11, i32 33555324, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [InterfaceClassGuid] [line 892]
!3357 = metadata !{i32 892, i32 62, metadata !38, null}
!3358 = metadata !{i32 786689, metadata !38, metadata !"ReferenceString", metadata !11, i32 50332541, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ReferenceString] [line 893]
!3359 = metadata !{i32 893, i32 35, metadata !38, null}
!3360 = metadata !{i32 786689, metadata !38, metadata !"SymbolicLinkName", metadata !11, i32 67109757, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [SymbolicLinkName] [line 893]
!3361 = metadata !{i32 893, i32 57, metadata !38, null}
!3362 = metadata !{i32 898, i32 15, metadata !738, null}
!3363 = metadata !{i32 786688, metadata !738, metadata !"tmp_ndt_5", metadata !11, i32 897, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp_ndt_5] [line 897]
!3364 = metadata !{i32 897, i32 7, metadata !738, null}
!3365 = metadata !{i32 899, i32 7, metadata !742, null}
!3366 = metadata !{i32 912, i32 1, metadata !38, null}
!3367 = metadata !{i32 786689, metadata !41, metadata !"SymbolicLinkName", metadata !11, i32 16778130, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [SymbolicLinkName] [line 914]
!3368 = metadata !{i32 914, i32 35, metadata !41, null}
!3369 = metadata !{i32 786689, metadata !41, metadata !"Enable", metadata !11, i32 33555346, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Enable] [line 914]
!3370 = metadata !{i32 914, i32 58, metadata !41, null}
!3371 = metadata !{i32 919, i32 15, metadata !753, null}
!3372 = metadata !{i32 786688, metadata !753, metadata !"tmp_ndt_6", metadata !11, i32 918, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp_ndt_6] [line 918]
!3373 = metadata !{i32 918, i32 7, metadata !753, null}
!3374 = metadata !{i32 920, i32 7, metadata !3375, null}
!3375 = metadata !{i32 786443, metadata !10, metadata !753, i32 920, i32 7, i32 0, i32 269} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!3376 = metadata !{i32 933, i32 1, metadata !41, null}
!3377 = metadata !{i32 939, i32 7, metadata !438, null}
!3378 = metadata !{i32 940, i32 5, metadata !446, null}
!3379 = metadata !{i32 948, i32 1, metadata !42, null}
!3380 = metadata !{i32 38, i32 10, metadata !89, metadata !3381}
!3381 = metadata !{i32 943, i32 5, metadata !450, null}
!3382 = metadata !{i32 786689, metadata !43, metadata !"DeviceObject", metadata !11, i32 16778165, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [DeviceObject] [line 949]
!3383 = metadata !{i32 949, i32 23, metadata !43, null}
!3384 = metadata !{i32 786689, metadata !43, metadata !"Irp", metadata !11, i32 33555381, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Irp] [line 949]
!3385 = metadata !{i32 949, i32 42, metadata !43, null}
!3386 = metadata !{i32 953, i32 18, metadata !43, null}
!3387 = metadata !{i32 786688, metadata !43, metadata !"lcontext", metadata !11, i32 953, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [lcontext] [line 953]
!3388 = metadata !{i32 953, i32 7, metadata !43, null}
!3389 = metadata !{i32 956, i32 7, metadata !404, null}
!3390 = metadata !{i32 786689, metadata !18, metadata !"DeviceObject", metadata !11, i32 16777845, metadata !14, i32 0, metadata !3391} ; [ DW_TAG_arg_variable ] [DeviceObject] [line 629]
!3391 = metadata !{i32 958, i32 22, metadata !408, null}
!3392 = metadata !{i32 629, i32 27, metadata !18, metadata !3391}
!3393 = metadata !{i32 786689, metadata !18, metadata !"Irp", metadata !11, i32 33555061, metadata !14, i32 0, metadata !3391} ; [ DW_TAG_arg_variable ] [Irp] [line 629]
!3394 = metadata !{i32 629, i32 46, metadata !18, metadata !3391}
!3395 = metadata !{i32 786689, metadata !18, metadata !"Context", metadata !11, i32 50332277, metadata !14, i32 0, metadata !3391} ; [ DW_TAG_arg_variable ] [Context] [line 629]
!3396 = metadata !{i32 629, i32 56, metadata !18, metadata !3391}
!3397 = metadata !{i32 786689, metadata !47, metadata !"Event", metadata !11, i32 16778250, metadata !14, i32 0, metadata !3398} ; [ DW_TAG_arg_variable ] [Event] [line 1034]
!3398 = metadata !{i32 634, i32 3, metadata !417, metadata !3391}
!3399 = metadata !{i32 1034, i32 20, metadata !47, metadata !3398}
!3400 = metadata !{i32 786689, metadata !47, metadata !"Increment", metadata !11, i32 33555466, metadata !14, i32 0, metadata !3398} ; [ DW_TAG_arg_variable ] [Increment] [line 1034]
!3401 = metadata !{i32 1034, i32 32, metadata !47, metadata !3398}
!3402 = metadata !{i32 786689, metadata !47, metadata !"Wait", metadata !11, i32 50332682, metadata !14, i32 0, metadata !3398} ; [ DW_TAG_arg_variable ] [Wait] [line 1034]
!3403 = metadata !{i32 1034, i32 48, metadata !47, metadata !3398}
!3404 = metadata !{i32 1035, i32 11, metadata !47, metadata !3398}
!3405 = metadata !{i32 786688, metadata !47, metadata !"l", metadata !11, i32 1035, metadata !14, i32 0, metadata !3398} ; [ DW_TAG_auto_variable ] [l] [line 1035]
!3406 = metadata !{i32 1035, i32 7, metadata !47, metadata !3398}
!3407 = metadata !{i32 1038, i32 3, metadata !429, metadata !3398}
!3408 = metadata !{i32 786688, metadata !43, metadata !"compRetStatus1", metadata !11, i32 952, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [compRetStatus1] [line 952]
!3409 = metadata !{i32 952, i32 7, metadata !43, null}
!3410 = metadata !{i32 960, i32 5, metadata !444, null}
!3411 = metadata !{i32 786688, metadata !43, metadata !"__cil_tmp7", metadata !11, i32 954, metadata !435, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__cil_tmp7] [line 954]
!3412 = metadata !{i32 954, i32 17, metadata !43, null}
!3413 = metadata !{i32 960, i32 9, metadata !443, null}
!3414 = metadata !{i32 939, i32 7, metadata !438, metadata !3415}
!3415 = metadata !{i32 962, i32 7, metadata !441, null}
!3416 = metadata !{i32 940, i32 5, metadata !446, metadata !3415}
!3417 = metadata !{i32 964, i32 5, metadata !442, null}
!3418 = metadata !{i32 38, i32 10, metadata !89, metadata !3419}
!3419 = metadata !{i32 943, i32 5, metadata !450, metadata !3415}
!3420 = metadata !{i32 971, i32 16, metadata !405, null}
!3421 = metadata !{i32 786688, metadata !405, metadata !"tmp_ndt_12", metadata !11, i32 970, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp_ndt_12] [line 970]
!3422 = metadata !{i32 970, i32 7, metadata !405, null}
!3423 = metadata !{i32 972, i32 7, metadata !456, null}
!3424 = metadata !{i32 974, i32 17, metadata !458, null}
!3425 = metadata !{i32 786688, metadata !458, metadata !"tmp_ndt_7", metadata !11, i32 973, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp_ndt_7] [line 973]
!3426 = metadata !{i32 973, i32 9, metadata !458, null}
!3427 = metadata !{i32 975, i32 9, metadata !462, null}
!3428 = metadata !{i32 786688, metadata !43, metadata !"returnVal2", metadata !11, i32 951, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [returnVal2] [line 951]
!3429 = metadata !{i32 951, i32 7, metadata !43, null}
!3430 = metadata !{i32 994, i32 7, metadata !467, null}
!3431 = metadata !{i32 995, i32 5, metadata !469, null}
!3432 = metadata !{i32 996, i32 5, metadata !469, null}
!3433 = metadata !{i32 997, i32 3, metadata !469, null}
!3434 = metadata !{i32 998, i32 9, metadata !473, null}
!3435 = metadata !{i32 999, i32 11, metadata !476, null}
!3436 = metadata !{i32 1000, i32 9, metadata !479, null}
!3437 = metadata !{i32 1001, i32 9, metadata !479, null}
!3438 = metadata !{i32 1002, i32 7, metadata !479, null}
!3439 = metadata !{i32 1003, i32 9, metadata !483, null}
!3440 = metadata !{i32 1004, i32 9, metadata !483, null}
!3441 = metadata !{i32 1007, i32 11, metadata !486, null}
!3442 = metadata !{i32 1008, i32 9, metadata !489, null}
!3443 = metadata !{i32 1009, i32 9, metadata !489, null}
!3444 = metadata !{i32 1017, i32 3, metadata !405, null}
!3445 = metadata !{i32 38, i32 10, metadata !89, metadata !3446}
!3446 = metadata !{i32 1012, i32 9, metadata !775, null}
!3447 = metadata !{i32 786689, metadata !47, metadata !"Event", metadata !11, i32 16778250, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Event] [line 1034]
!3448 = metadata !{i32 1034, i32 20, metadata !47, null}
!3449 = metadata !{i32 786689, metadata !47, metadata !"Increment", metadata !11, i32 33555466, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Increment] [line 1034]
!3450 = metadata !{i32 1034, i32 32, metadata !47, null}
!3451 = metadata !{i32 786689, metadata !47, metadata !"Wait", metadata !11, i32 50332682, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Wait] [line 1034]
!3452 = metadata !{i32 1034, i32 48, metadata !47, null}
!3453 = metadata !{i32 1035, i32 11, metadata !47, null}
!3454 = metadata !{i32 786688, metadata !47, metadata !"l", metadata !11, i32 1035, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [l] [line 1035]
!3455 = metadata !{i32 1035, i32 7, metadata !47, null}
!3456 = metadata !{i32 1038, i32 3, metadata !429, null}
!3457 = metadata !{i32 1039, i32 3, metadata !429, null}
!3458 = metadata !{i32 786689, metadata !48, metadata !"Object", metadata !11, i32 16778258, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Object] [line 1042]
!3459 = metadata !{i32 1042, i32 31, metadata !48, null}
!3460 = metadata !{i32 786689, metadata !48, metadata !"WaitReason", metadata !11, i32 33555474, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [WaitReason] [line 1042]
!3461 = metadata !{i32 1042, i32 44, metadata !48, null}
!3462 = metadata !{i32 786689, metadata !48, metadata !"WaitMode", metadata !11, i32 50332690, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [WaitMode] [line 1042]
!3463 = metadata !{i32 1042, i32 61, metadata !48, null}
!3464 = metadata !{i32 786689, metadata !48, metadata !"Alertable", metadata !11, i32 67109906, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Alertable] [line 1042]
!3465 = metadata !{i32 1042, i32 76, metadata !48, null}
!3466 = metadata !{i32 786689, metadata !48, metadata !"Timeout", metadata !11, i32 83887123, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Timeout] [line 1043]
!3467 = metadata !{i32 1043, i32 31, metadata !48, null}
!3468 = metadata !{i32 1047, i32 7, metadata !510, null}
!3469 = metadata !{i32 1048, i32 9, metadata !513, null}
!3470 = metadata !{i32 1049, i32 7, metadata !516, null}
!3471 = metadata !{i32 1050, i32 7, metadata !516, null}
!3472 = metadata !{i32 1054, i32 3, metadata !514, null}
!3473 = metadata !{i32 1056, i32 9, metadata !520, null}
!3474 = metadata !{i32 1057, i32 7, metadata !523, null}
!3475 = metadata !{i32 1058, i32 7, metadata !523, null}
!3476 = metadata !{i32 1059, i32 5, metadata !523, null}
!3477 = metadata !{i32 1060, i32 11, metadata !527, null}
!3478 = metadata !{i32 38, i32 10, metadata !89, metadata !3479}
!3479 = metadata !{i32 1062, i32 9, metadata !531, null}
!3480 = metadata !{i32 1070, i32 15, metadata !511, null}
!3481 = metadata !{i32 786688, metadata !511, metadata !"tmp_ndt_8", metadata !11, i32 1069, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp_ndt_8] [line 1069]
!3482 = metadata !{i32 1069, i32 7, metadata !511, null}
!3483 = metadata !{i32 1071, i32 7, metadata !3484, null}
!3484 = metadata !{i32 786443, metadata !10, metadata !511, i32 1071, i32 7, i32 0, i32 329} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!3485 = metadata !{i32 1084, i32 1, metadata !48, null}
!3486 = metadata !{i32 786689, metadata !51, metadata !"Handle", metadata !11, i32 16778302, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Handle] [line 1086]
!3487 = metadata !{i32 1086, i32 35, metadata !51, null}
!3488 = metadata !{i32 786689, metadata !51, metadata !"DesiredAccess", metadata !11, i32 33555518, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [DesiredAccess] [line 1086]
!3489 = metadata !{i32 1086, i32 48, metadata !51, null}
!3490 = metadata !{i32 786689, metadata !51, metadata !"ObjectType", metadata !11, i32 50332734, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ObjectType] [line 1086]
!3491 = metadata !{i32 1086, i32 68, metadata !51, null}
!3492 = metadata !{i32 786689, metadata !51, metadata !"AccessMode", metadata !11, i32 67109950, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [AccessMode] [line 1086]
!3493 = metadata !{i32 1086, i32 85, metadata !51, null}
!3494 = metadata !{i32 786689, metadata !51, metadata !"Object", metadata !11, i32 83887167, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Object] [line 1087]
!3495 = metadata !{i32 1087, i32 35, metadata !51, null}
!3496 = metadata !{i32 786689, metadata !51, metadata !"HandleInformation", metadata !11, i32 100664383, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [HandleInformation] [line 1087]
!3497 = metadata !{i32 1087, i32 48, metadata !51, null}
!3498 = metadata !{i32 1092, i32 15, metadata !191, null}
!3499 = metadata !{i32 786688, metadata !191, metadata !"tmp_ndt_9", metadata !11, i32 1091, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp_ndt_9] [line 1091]
!3500 = metadata !{i32 1091, i32 7, metadata !191, null}
!3501 = metadata !{i32 1093, i32 7, metadata !195, null}
!3502 = metadata !{i32 1106, i32 1, metadata !51, null}
!3503 = metadata !{i32 786689, metadata !54, metadata !"ThreadHandle", metadata !11, i32 16778324, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ThreadHandle] [line 1108]
!3504 = metadata !{i32 1108, i32 30, metadata !54, null}
!3505 = metadata !{i32 786689, metadata !54, metadata !"DesiredAccess", metadata !11, i32 33555540, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [DesiredAccess] [line 1108]
!3506 = metadata !{i32 1108, i32 49, metadata !54, null}
!3507 = metadata !{i32 786689, metadata !54, metadata !"ObjectAttributes", metadata !11, i32 50332756, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ObjectAttributes] [line 1108]
!3508 = metadata !{i32 1108, i32 69, metadata !54, null}
!3509 = metadata !{i32 786689, metadata !54, metadata !"ProcessHandle", metadata !11, i32 67109973, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ProcessHandle] [line 1109]
!3510 = metadata !{i32 1109, i32 30, metadata !54, null}
!3511 = metadata !{i32 786689, metadata !54, metadata !"ClientId", metadata !11, i32 83887189, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [ClientId] [line 1109]
!3512 = metadata !{i32 1109, i32 50, metadata !54, null}
!3513 = metadata !{i32 786689, metadata !54, metadata !"StartRoutine", metadata !11, i32 100664405, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [StartRoutine] [line 1109]
!3514 = metadata !{i32 1109, i32 65, metadata !54, null}
!3515 = metadata !{i32 786689, metadata !54, metadata !"StartContext", metadata !11, i32 117441621, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [StartContext] [line 1109]
!3516 = metadata !{i32 1109, i32 84, metadata !54, null}
!3517 = metadata !{i32 1114, i32 16, metadata !163, null}
!3518 = metadata !{i32 786688, metadata !163, metadata !"tmp_ndt_10", metadata !11, i32 1113, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp_ndt_10] [line 1113]
!3519 = metadata !{i32 1113, i32 7, metadata !163, null}
!3520 = metadata !{i32 1115, i32 7, metadata !167, null}
!3521 = metadata !{i32 1128, i32 1, metadata !54, null}
!3522 = metadata !{i32 786689, metadata !57, metadata !"Handle", metadata !11, i32 16778346, metadata !14, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [Handle] [line 1130]
!3523 = metadata !{i32 1130, i32 17, metadata !57, null}
!3524 = metadata !{i32 1135, i32 16, metadata !200, null}
!3525 = metadata !{i32 786688, metadata !200, metadata !"tmp_ndt_11", metadata !11, i32 1134, metadata !14, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp_ndt_11] [line 1134]
!3526 = metadata !{i32 1134, i32 7, metadata !200, null}
!3527 = metadata !{i32 1136, i32 7, metadata !3528, null}
!3528 = metadata !{i32 786443, metadata !10, metadata !200, i32 1136, i32 7, i32 0, i32 350} ; [ DW_TAG_lexical_block ] [//floppy_simpl3.cil.c]
!3529 = metadata !{i32 1149, i32 1, metadata !57, null}

