; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"'m_pc" = global i32 0, align 4
@"'t1_pc" = global i32 0, align 4
@"'M_E" = global i32 2, align 4
@"'T1_E" = global i32 2, align 4
@"'E_M" = global i32 2, align 4
@"'E_1" = global i32 2, align 4
@"'token" = common global i32 0, align 4
@"'local" = common global i32 0, align 4
@"'m_st" = common global i32 0, align 4
@"'t1_st" = common global i32 0, align 4
@"'m_i" = common global i32 0, align 4
@"'t1_i" = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define void @error() #0 {
error_bb0:
  call void (...)* @__VERIFIER_error() #4, !dbg !45
  unreachable, !dbg !45
}

; Function Attrs: noreturn
declare void @__VERIFIER_error(...) #1

; Function Attrs: nounwind uwtable
define void @master() #0 {
master_bb1:
  %"0" = call i32 @__kittel_nondef.0()
  call void @llvm.dbg.value(metadata !{i32 %"0"}, i64 0, metadata !47), !dbg !48
  %"1" = load i32* @"'m_pc", align 4, !dbg !49
  %"2" = icmp ne i32 %"1", 0, !dbg !49
  %"3" = load i32* @"'m_pc", align 4
  %"4" = icmp eq i32 %"3", 1, !dbg !52
  %or.cond = and i1 %"2", %"4", !dbg !49
  br i1 %or.cond, label %master_bb2, label %master_bb8, !dbg !49

master_bb2:                                       ; preds = %master_bb1
  %"5" = load i32* @"'token", align 4, !dbg !55
  %"6" = load i32* @"'local", align 4, !dbg !55
  %"7" = add nsw i32 %"6", 1, !dbg !55
  %"8" = icmp ne i32 %"5", %"7", !dbg !55
  br i1 %"8", label %master_bb3, label %master_bb4, !dbg !55

master_bb3:                                       ; preds = %master_bb2
  call void (...)* @__VERIFIER_error() #5, !dbg !59
  unreachable, !dbg !59

master_bb4:                                       ; preds = %master_bb2
  %"9" = icmp sle i32 %"0", 5, !dbg !63
  br i1 %"9", label %master_bb5, label %master_bb6, !dbg !63

master_bb5:                                       ; preds = %master_bb4
  br label %master_bb6, !dbg !66

master_bb6:                                       ; preds = %master_bb5, %master_bb4
  %"10" = icmp sle i32 %"0", 5, !dbg !68
  %"11" = icmp sge i32 %"0", 5, !dbg !70
  %or.cond3 = and i1 %"10", %"11", !dbg !68
  %"12" = icmp eq i32 %"0", 5, !dbg !73
  %or.cond4 = and i1 %or.cond3, %"12", !dbg !68
  br i1 %or.cond4, label %master_bb7, label %master_bb8, !dbg !68

master_bb7:                                       ; preds = %master_bb6
  call void (...)* @__VERIFIER_error() #5, !dbg !76
  unreachable, !dbg !76

master_bb8:                                       ; preds = %master_bb1, %master_bb6
  %"13" = call i32 (...)* @__VERIFIER_nondet_int(), !dbg !79
  store i32 %"13", i32* @"'token", align 4, !dbg !79
  %"14" = load i32* @"'token", align 4, !dbg !81
  store i32 %"14", i32* @"'local", align 4, !dbg !81
  store i32 1, i32* @"'E_1", align 4, !dbg !82
  %"15" = load i32* @"'m_pc", align 4, !dbg !83
  %"16" = icmp eq i32 %"15", 1, !dbg !83
  %"17" = load i32* @"'E_M", align 4, !dbg !86
  %"18" = icmp eq i32 %"17", 1, !dbg !93
  %or.cond.i.i.i = and i1 %"16", %"18", !dbg !83
  call void @llvm.dbg.value(metadata !96, i64 0, metadata !97), !dbg !98
  br i1 %or.cond.i.i.i, label %master_bb9, label %master_bb10, !dbg !99

master_bb9:                                       ; preds = %master_bb8
  store i32 0, i32* @"'m_st", align 4, !dbg !101
  br label %master_bb10, !dbg !103

master_bb10:                                      ; preds = %master_bb9, %master_bb8
  %"19" = load i32* @"'t1_pc", align 4, !dbg !104
  %"20" = icmp eq i32 %"19", 1, !dbg !104
  %"21" = load i32* @"'E_1", align 4, !dbg !107
  %"22" = icmp eq i32 %"21", 1, !dbg !109
  %or.cond.i1.i.i = and i1 %"20", %"22", !dbg !104
  call void @llvm.dbg.value(metadata !96, i64 0, metadata !112), !dbg !113
  br i1 %or.cond.i1.i.i, label %master_bb11, label %master_immediate_notify.exit, !dbg !114

master_bb11:                                      ; preds = %master_bb10
  store i32 0, i32* @"'t1_st", align 4, !dbg !116
  br label %master_immediate_notify.exit, !dbg !118

master_immediate_notify.exit:                     ; preds = %master_bb10, %master_bb11
  store i32 2, i32* @"'E_1", align 4, !dbg !119
  store i32 1, i32* @"'m_pc", align 4, !dbg !120
  store i32 2, i32* @"'m_st", align 4, !dbg !121
  ret void, !dbg !122
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #2

declare i32 @__VERIFIER_nondet_int(...) #3

; Function Attrs: nounwind uwtable
define void @immediate_notify() #0 {
immediate_notify_bb12:
  %"23" = load i32* @"'m_pc", align 4, !dbg !123
  %"24" = icmp eq i32 %"23", 1, !dbg !123
  %"25" = load i32* @"'E_M", align 4, !dbg !124
  %"26" = icmp eq i32 %"25", 1, !dbg !126
  %or.cond.i.i = and i1 %"24", %"26", !dbg !123
  call void @llvm.dbg.value(metadata !96, i64 0, metadata !127), !dbg !128
  br i1 %or.cond.i.i, label %immediate_notify_bb13, label %immediate_notify_bb14, !dbg !129

immediate_notify_bb13:                            ; preds = %immediate_notify_bb12
  store i32 0, i32* @"'m_st", align 4, !dbg !130
  br label %immediate_notify_bb14, !dbg !131

immediate_notify_bb14:                            ; preds = %immediate_notify_bb13, %immediate_notify_bb12
  %"27" = load i32* @"'t1_pc", align 4, !dbg !132
  %"28" = icmp eq i32 %"27", 1, !dbg !132
  %"29" = load i32* @"'E_1", align 4, !dbg !133
  %"30" = icmp eq i32 %"29", 1, !dbg !134
  %or.cond.i1.i = and i1 %"28", %"30", !dbg !132
  call void @llvm.dbg.value(metadata !96, i64 0, metadata !135), !dbg !136
  br i1 %or.cond.i1.i, label %immediate_notify_bb15, label %immediate_notify_activate_threads.exit, !dbg !137

immediate_notify_bb15:                            ; preds = %immediate_notify_bb14
  store i32 0, i32* @"'t1_st", align 4, !dbg !138
  br label %immediate_notify_activate_threads.exit, !dbg !139

immediate_notify_activate_threads.exit:           ; preds = %immediate_notify_bb14, %immediate_notify_bb15
  ret void, !dbg !140
}

; Function Attrs: nounwind uwtable
define void @transmit1() #0 {
transmit1_bb16:
  %"31" = load i32* @"'t1_pc", align 4, !dbg !141
  %"32" = icmp ne i32 %"31", 0, !dbg !141
  %"33" = load i32* @"'t1_pc", align 4
  %"34" = icmp eq i32 %"33", 1, !dbg !144
  %or.cond = and i1 %"32", %"34", !dbg !141
  br i1 %or.cond, label %transmit1_bb17, label %transmit1_bb21, !dbg !141

transmit1_bb17:                                   ; preds = %transmit1_bb16
  %"35" = load i32* @"'token", align 4, !dbg !147
  %"36" = add nsw i32 %"35", 1, !dbg !147
  store i32 %"36", i32* @"'token", align 4, !dbg !147
  store i32 1, i32* @"'E_M", align 4, !dbg !151
  %"37" = load i32* @"'m_pc", align 4, !dbg !152
  %"38" = icmp eq i32 %"37", 1, !dbg !152
  %"39" = load i32* @"'E_M", align 4, !dbg !153
  %"40" = icmp eq i32 %"39", 1, !dbg !156
  %or.cond.i.i.i = and i1 %"38", %"40", !dbg !152
  call void @llvm.dbg.value(metadata !96, i64 0, metadata !157), !dbg !158
  br i1 %or.cond.i.i.i, label %transmit1_bb18, label %transmit1_bb19, !dbg !159

transmit1_bb18:                                   ; preds = %transmit1_bb17
  store i32 0, i32* @"'m_st", align 4, !dbg !160
  br label %transmit1_bb19, !dbg !161

transmit1_bb19:                                   ; preds = %transmit1_bb18, %transmit1_bb17
  %"41" = load i32* @"'t1_pc", align 4, !dbg !162
  %"42" = icmp eq i32 %"41", 1, !dbg !162
  %"43" = load i32* @"'E_1", align 4, !dbg !163
  %"44" = icmp eq i32 %"43", 1, !dbg !164
  %or.cond.i1.i.i = and i1 %"42", %"44", !dbg !162
  call void @llvm.dbg.value(metadata !96, i64 0, metadata !165), !dbg !166
  br i1 %or.cond.i1.i.i, label %transmit1_bb20, label %transmit1_immediate_notify.exit, !dbg !167

transmit1_bb20:                                   ; preds = %transmit1_bb19
  store i32 0, i32* @"'t1_st", align 4, !dbg !168
  br label %transmit1_immediate_notify.exit, !dbg !169

transmit1_immediate_notify.exit:                  ; preds = %transmit1_bb19, %transmit1_bb20
  store i32 2, i32* @"'E_M", align 4, !dbg !170
  br label %transmit1_bb21, !dbg !171

transmit1_bb21:                                   ; preds = %transmit1_bb16, %transmit1_immediate_notify.exit
  store i32 1, i32* @"'t1_pc", align 4, !dbg !172
  store i32 2, i32* @"'t1_st", align 4, !dbg !173
  ret void, !dbg !174
}

; Function Attrs: nounwind uwtable
define i32 @is_master_triggered() #0 {
is_master_triggered_bb22:
  %"45" = load i32* @"'m_pc", align 4, !dbg !175
  %"46" = icmp eq i32 %"45", 1, !dbg !175
  %"47" = load i32* @"'E_M", align 4
  %"48" = icmp eq i32 %"47", 1, !dbg !176
  %or.cond = and i1 %"46", %"48", !dbg !175
  call void @llvm.dbg.value(metadata !96, i64 0, metadata !177), !dbg !178
  %__retres1.0 = select i1 %or.cond, i32 1, i32 0, !dbg !175
  ret i32 %__retres1.0, !dbg !179
}

; Function Attrs: nounwind uwtable
define i32 @is_transmit1_triggered() #0 {
is_transmit1_triggered_bb23:
  %"49" = load i32* @"'t1_pc", align 4, !dbg !180
  %"50" = icmp eq i32 %"49", 1, !dbg !180
  %"51" = load i32* @"'E_1", align 4
  %"52" = icmp eq i32 %"51", 1, !dbg !181
  %or.cond = and i1 %"50", %"52", !dbg !180
  call void @llvm.dbg.value(metadata !96, i64 0, metadata !182), !dbg !183
  %__retres1.0 = select i1 %or.cond, i32 1, i32 0, !dbg !180
  ret i32 %__retres1.0, !dbg !184
}

; Function Attrs: nounwind uwtable
define void @update_channels() #0 {
update_channels_bb24:
  ret void, !dbg !185
}

; Function Attrs: nounwind uwtable
define void @init_threads() #0 {
init_threads_bb25:
  %"53" = load i32* @"'m_i", align 4, !dbg !186
  %"54" = icmp eq i32 %"53", 1, !dbg !186
  br i1 %"54", label %init_threads_bb26, label %init_threads_bb27, !dbg !186

init_threads_bb26:                                ; preds = %init_threads_bb25
  store i32 0, i32* @"'m_st", align 4, !dbg !189
  br label %init_threads_bb28, !dbg !191

init_threads_bb27:                                ; preds = %init_threads_bb25
  store i32 2, i32* @"'m_st", align 4, !dbg !192
  br label %init_threads_bb28

init_threads_bb28:                                ; preds = %init_threads_bb27, %init_threads_bb26
  %"55" = load i32* @"'t1_i", align 4, !dbg !194
  %"56" = icmp eq i32 %"55", 1, !dbg !194
  br i1 %"56", label %init_threads_bb29, label %init_threads_bb30, !dbg !194

init_threads_bb29:                                ; preds = %init_threads_bb28
  store i32 0, i32* @"'t1_st", align 4, !dbg !196
  br label %init_threads_bb31, !dbg !198

init_threads_bb30:                                ; preds = %init_threads_bb28
  store i32 2, i32* @"'t1_st", align 4, !dbg !199
  br label %init_threads_bb31

init_threads_bb31:                                ; preds = %init_threads_bb30, %init_threads_bb29
  ret void, !dbg !201
}

; Function Attrs: nounwind uwtable
define i32 @exists_runnable_thread() #0 {
exists_runnable_thread_bb32:
  %"57" = load i32* @"'m_st", align 4, !dbg !202
  %"58" = icmp eq i32 %"57", 0, !dbg !202
  %"59" = load i32* @"'t1_st", align 4
  %"60" = icmp eq i32 %"59", 0, !dbg !205
  %or.cond = or i1 %"58", %"60", !dbg !202
  call void @llvm.dbg.value(metadata !96, i64 0, metadata !208), !dbg !209
  %__retres1.0 = select i1 %or.cond, i32 1, i32 0, !dbg !202
  ret i32 %__retres1.0, !dbg !210
}

; Function Attrs: nounwind uwtable
define void @eval() #0 {
eval_bb33:
  call void @llvm.dbg.value(metadata !96, i64 0, metadata !211), !dbg !217
  call void @llvm.dbg.value(metadata !{i32 %__retres1.0.i}, i64 0, metadata !218), !dbg !219
  call void @llvm.dbg.value(metadata !{i32 %"68"}, i64 0, metadata !220), !dbg !223
  call void @llvm.dbg.value(metadata !{i32 %"70"}, i64 0, metadata !224) #6, !dbg !229
  call void @llvm.dbg.value(metadata !96, i64 0, metadata !230) #6, !dbg !234
  call void @llvm.dbg.value(metadata !96, i64 0, metadata !235) #6, !dbg !237
  call void @llvm.dbg.value(metadata !{i32 %"94"}, i64 0, metadata !238), !dbg !241
  call void @llvm.dbg.value(metadata !96, i64 0, metadata !242), !dbg !250
  call void @llvm.dbg.value(metadata !96, i64 0, metadata !251), !dbg !253
  br label %eval_bb34, !dbg !254

eval_bb34:                                        ; preds = %eval_bb47, %eval_transmit1.exit, %eval_bb46, %eval_bb33
  %"61" = load i32* @"'m_st", align 4, !dbg !255
  %"62" = icmp eq i32 %"61", 0, !dbg !255
  %"63" = load i32* @"'t1_st", align 4, !dbg !212
  %"64" = icmp eq i32 %"63", 0, !dbg !256
  %or.cond.i = or i1 %"62", %"64", !dbg !255
  %__retres1.0.i = select i1 %or.cond.i, i32 1, i32 0, !dbg !255
  %"65" = icmp ne i32 %__retres1.0.i, 0, !dbg !257
  br i1 %"65", label %eval_bb35, label %eval_bb53, !dbg !257

eval_bb35:                                        ; preds = %eval_bb34
  %"66" = load i32* @"'m_st", align 4, !dbg !259
  %"67" = icmp eq i32 %"66", 0, !dbg !259
  br i1 %"67", label %eval_bb36, label %eval_bb46, !dbg !259

eval_bb36:                                        ; preds = %eval_bb35
  %"68" = call i32 (...)* @__VERIFIER_nondet_int(), !dbg !260
  %"69" = icmp ne i32 %"68", 0, !dbg !261
  br i1 %"69", label %eval_bb37, label %eval_bb46, !dbg !261

eval_bb37:                                        ; preds = %eval_bb36
  store i32 1, i32* @"'m_st", align 4, !dbg !262
  %"70" = call i32 @__kittel_nondef.0() #6, !dbg !225
  %"71" = load i32* @"'m_pc", align 4, !dbg !263
  %"72" = icmp ne i32 %"71", 0, !dbg !263
  %"73" = load i32* @"'m_pc", align 4, !dbg !225
  %"74" = icmp eq i32 %"73", 1, !dbg !264
  %or.cond.i2 = and i1 %"72", %"74", !dbg !263
  br i1 %or.cond.i2, label %eval_bb38, label %eval_bb42, !dbg !263

eval_bb38:                                        ; preds = %eval_bb37
  %"75" = load i32* @"'token", align 4, !dbg !265
  %"76" = load i32* @"'local", align 4, !dbg !265
  %"77" = add nsw i32 %"76", 1, !dbg !265
  %"78" = icmp ne i32 %"75", %"77", !dbg !265
  br i1 %"78", label %eval_bb39, label %eval_bb40, !dbg !265

eval_bb39:                                        ; preds = %eval_bb38
  call void (...)* @__VERIFIER_error() #5, !dbg !266
  unreachable, !dbg !266

eval_bb40:                                        ; preds = %eval_bb38
  %"79" = icmp sle i32 %"70", 5, !dbg !268
  %"80" = icmp sge i32 %"70", 5, !dbg !269
  %or.cond3.i = and i1 %"79", %"80", !dbg !268
  %"81" = icmp eq i32 %"70", 5, !dbg !270
  %or.cond4.i = and i1 %or.cond3.i, %"81", !dbg !268
  br i1 %or.cond4.i, label %eval_bb41, label %eval_bb42, !dbg !268

eval_bb41:                                        ; preds = %eval_bb40
  call void (...)* @__VERIFIER_error() #5, !dbg !271
  unreachable, !dbg !271

eval_bb42:                                        ; preds = %eval_bb40, %eval_bb37
  %"82" = call i32 (...)* @__VERIFIER_nondet_int() #6, !dbg !273
  store i32 %"82", i32* @"'token", align 4, !dbg !273
  %"83" = load i32* @"'token", align 4, !dbg !274
  store i32 %"83", i32* @"'local", align 4, !dbg !274
  store i32 1, i32* @"'E_1", align 4, !dbg !275
  %"84" = load i32* @"'m_pc", align 4, !dbg !276
  %"85" = icmp eq i32 %"84", 1, !dbg !276
  %"86" = load i32* @"'E_M", align 4, !dbg !231
  %"87" = icmp eq i32 %"86", 1, !dbg !277
  %or.cond.i.i.i.i3 = and i1 %"85", %"87", !dbg !276
  br i1 %or.cond.i.i.i.i3, label %eval_bb43, label %eval_bb44, !dbg !278

eval_bb43:                                        ; preds = %eval_bb42
  store i32 0, i32* @"'m_st", align 4, !dbg !279
  br label %eval_bb44, !dbg !280

eval_bb44:                                        ; preds = %eval_bb43, %eval_bb42
  %"88" = load i32* @"'t1_pc", align 4, !dbg !281
  %"89" = icmp eq i32 %"88", 1, !dbg !281
  %"90" = load i32* @"'E_1", align 4, !dbg !236
  %"91" = icmp eq i32 %"90", 1, !dbg !282
  %or.cond.i1.i.i.i4 = and i1 %"89", %"91", !dbg !281
  br i1 %or.cond.i1.i.i.i4, label %eval_bb45, label %eval_master.exit, !dbg !283

eval_bb45:                                        ; preds = %eval_bb44
  store i32 0, i32* @"'t1_st", align 4, !dbg !284
  br label %eval_master.exit, !dbg !285

eval_master.exit:                                 ; preds = %eval_bb44, %eval_bb45
  store i32 2, i32* @"'E_1", align 4, !dbg !286
  store i32 1, i32* @"'m_pc", align 4, !dbg !287
  store i32 2, i32* @"'m_st", align 4, !dbg !288
  br label %eval_bb46, !dbg !289

eval_bb46:                                        ; preds = %eval_bb35, %eval_master.exit, %eval_bb36
  %"92" = load i32* @"'t1_st", align 4, !dbg !290
  %"93" = icmp eq i32 %"92", 0, !dbg !290
  br i1 %"93", label %eval_bb47, label %eval_bb34, !dbg !290

eval_bb47:                                        ; preds = %eval_bb46
  %"94" = call i32 (...)* @__VERIFIER_nondet_int(), !dbg !291
  %"95" = icmp ne i32 %"94", 0, !dbg !292
  br i1 %"95", label %eval_bb48, label %eval_bb34, !dbg !292

eval_bb48:                                        ; preds = %eval_bb47
  store i32 1, i32* @"'t1_st", align 4, !dbg !293
  %"96" = load i32* @"'t1_pc", align 4, !dbg !294
  %"97" = icmp ne i32 %"96", 0, !dbg !294
  %"98" = load i32* @"'t1_pc", align 4, !dbg !246
  %"99" = icmp eq i32 %"98", 1, !dbg !295
  %or.cond.i1 = and i1 %"97", %"99", !dbg !294
  br i1 %or.cond.i1, label %eval_bb49, label %eval_transmit1.exit, !dbg !294

eval_bb49:                                        ; preds = %eval_bb48
  %"100" = load i32* @"'token", align 4, !dbg !296
  %"101" = add nsw i32 %"100", 1, !dbg !296
  store i32 %"101", i32* @"'token", align 4, !dbg !296
  store i32 1, i32* @"'E_M", align 4, !dbg !297
  %"102" = load i32* @"'m_pc", align 4, !dbg !298
  %"103" = icmp eq i32 %"102", 1, !dbg !298
  %"104" = load i32* @"'E_M", align 4, !dbg !243
  %"105" = icmp eq i32 %"104", 1, !dbg !299
  %or.cond.i.i.i.i = and i1 %"103", %"105", !dbg !298
  br i1 %or.cond.i.i.i.i, label %eval_bb50, label %eval_bb51, !dbg !300

eval_bb50:                                        ; preds = %eval_bb49
  store i32 0, i32* @"'m_st", align 4, !dbg !301
  br label %eval_bb51, !dbg !302

eval_bb51:                                        ; preds = %eval_bb50, %eval_bb49
  %"106" = load i32* @"'t1_pc", align 4, !dbg !303
  %"107" = icmp eq i32 %"106", 1, !dbg !303
  %"108" = load i32* @"'E_1", align 4, !dbg !252
  %"109" = icmp eq i32 %"108", 1, !dbg !304
  %or.cond.i1.i.i.i = and i1 %"107", %"109", !dbg !303
  br i1 %or.cond.i1.i.i.i, label %eval_bb52, label %eval_immediate_notify.exit.i, !dbg !305

eval_bb52:                                        ; preds = %eval_bb51
  store i32 0, i32* @"'t1_st", align 4, !dbg !306
  br label %eval_immediate_notify.exit.i, !dbg !307

eval_immediate_notify.exit.i:                     ; preds = %eval_bb52, %eval_bb51
  store i32 2, i32* @"'E_M", align 4, !dbg !308
  br label %eval_transmit1.exit, !dbg !309

eval_transmit1.exit:                              ; preds = %eval_bb48, %eval_immediate_notify.exit.i
  store i32 1, i32* @"'t1_pc", align 4, !dbg !310
  store i32 2, i32* @"'t1_st", align 4, !dbg !311
  br label %eval_bb34, !dbg !312

eval_bb53:                                        ; preds = %eval_bb34
  ret void, !dbg !313
}

; Function Attrs: nounwind uwtable
define void @fire_delta_events() #0 {
fire_delta_events_bb54:
  %"110" = load i32* @"'M_E", align 4, !dbg !314
  %"111" = icmp eq i32 %"110", 0, !dbg !314
  br i1 %"111", label %fire_delta_events_bb55, label %fire_delta_events_bb56, !dbg !314

fire_delta_events_bb55:                           ; preds = %fire_delta_events_bb54
  store i32 1, i32* @"'M_E", align 4, !dbg !317
  br label %fire_delta_events_bb56, !dbg !319

fire_delta_events_bb56:                           ; preds = %fire_delta_events_bb54, %fire_delta_events_bb55
  %"112" = load i32* @"'T1_E", align 4, !dbg !320
  %"113" = icmp eq i32 %"112", 0, !dbg !320
  br i1 %"113", label %fire_delta_events_bb57, label %fire_delta_events_bb58, !dbg !320

fire_delta_events_bb57:                           ; preds = %fire_delta_events_bb56
  store i32 1, i32* @"'T1_E", align 4, !dbg !322
  br label %fire_delta_events_bb58, !dbg !324

fire_delta_events_bb58:                           ; preds = %fire_delta_events_bb56, %fire_delta_events_bb57
  %"114" = load i32* @"'E_M", align 4, !dbg !325
  %"115" = icmp eq i32 %"114", 0, !dbg !325
  br i1 %"115", label %fire_delta_events_bb59, label %fire_delta_events_bb60, !dbg !325

fire_delta_events_bb59:                           ; preds = %fire_delta_events_bb58
  store i32 1, i32* @"'E_M", align 4, !dbg !327
  br label %fire_delta_events_bb60, !dbg !329

fire_delta_events_bb60:                           ; preds = %fire_delta_events_bb58, %fire_delta_events_bb59
  %"116" = load i32* @"'E_1", align 4, !dbg !330
  %"117" = icmp eq i32 %"116", 0, !dbg !330
  br i1 %"117", label %fire_delta_events_bb61, label %fire_delta_events_bb62, !dbg !330

fire_delta_events_bb61:                           ; preds = %fire_delta_events_bb60
  store i32 1, i32* @"'E_1", align 4, !dbg !332
  br label %fire_delta_events_bb62, !dbg !334

fire_delta_events_bb62:                           ; preds = %fire_delta_events_bb60, %fire_delta_events_bb61
  ret void, !dbg !335
}

; Function Attrs: nounwind uwtable
define void @reset_delta_events() #0 {
reset_delta_events_bb63:
  %"118" = load i32* @"'M_E", align 4, !dbg !336
  %"119" = icmp eq i32 %"118", 1, !dbg !336
  br i1 %"119", label %reset_delta_events_bb64, label %reset_delta_events_bb65, !dbg !336

reset_delta_events_bb64:                          ; preds = %reset_delta_events_bb63
  store i32 2, i32* @"'M_E", align 4, !dbg !339
  br label %reset_delta_events_bb65, !dbg !341

reset_delta_events_bb65:                          ; preds = %reset_delta_events_bb63, %reset_delta_events_bb64
  %"120" = load i32* @"'T1_E", align 4, !dbg !342
  %"121" = icmp eq i32 %"120", 1, !dbg !342
  br i1 %"121", label %reset_delta_events_bb66, label %reset_delta_events_bb67, !dbg !342

reset_delta_events_bb66:                          ; preds = %reset_delta_events_bb65
  store i32 2, i32* @"'T1_E", align 4, !dbg !344
  br label %reset_delta_events_bb67, !dbg !346

reset_delta_events_bb67:                          ; preds = %reset_delta_events_bb65, %reset_delta_events_bb66
  %"122" = load i32* @"'E_M", align 4, !dbg !347
  %"123" = icmp eq i32 %"122", 1, !dbg !347
  br i1 %"123", label %reset_delta_events_bb68, label %reset_delta_events_bb69, !dbg !347

reset_delta_events_bb68:                          ; preds = %reset_delta_events_bb67
  store i32 2, i32* @"'E_M", align 4, !dbg !349
  br label %reset_delta_events_bb69, !dbg !351

reset_delta_events_bb69:                          ; preds = %reset_delta_events_bb67, %reset_delta_events_bb68
  %"124" = load i32* @"'E_1", align 4, !dbg !352
  %"125" = icmp eq i32 %"124", 1, !dbg !352
  br i1 %"125", label %reset_delta_events_bb70, label %reset_delta_events_bb71, !dbg !352

reset_delta_events_bb70:                          ; preds = %reset_delta_events_bb69
  store i32 2, i32* @"'E_1", align 4, !dbg !354
  br label %reset_delta_events_bb71, !dbg !356

reset_delta_events_bb71:                          ; preds = %reset_delta_events_bb69, %reset_delta_events_bb70
  ret void, !dbg !357
}

; Function Attrs: nounwind uwtable
define void @activate_threads() #0 {
activate_threads_bb72:
  %"126" = load i32* @"'m_pc", align 4, !dbg !358
  %"127" = icmp eq i32 %"126", 1, !dbg !358
  %"128" = load i32* @"'E_M", align 4, !dbg !359
  %"129" = icmp eq i32 %"128", 1, !dbg !360
  %or.cond.i = and i1 %"127", %"129", !dbg !358
  call void @llvm.dbg.value(metadata !96, i64 0, metadata !361), !dbg !362
  %__retres1.0.i = select i1 %or.cond.i, i32 1, i32 0, !dbg !358
  call void @llvm.dbg.value(metadata !{i32 %__retres1.0.i}, i64 0, metadata !363), !dbg !364
  %"130" = icmp ne i32 %__retres1.0.i, 0, !dbg !365
  br i1 %"130", label %activate_threads_bb73, label %activate_threads_bb74, !dbg !365

activate_threads_bb73:                            ; preds = %activate_threads_bb72
  store i32 0, i32* @"'m_st", align 4, !dbg !366
  br label %activate_threads_bb74, !dbg !367

activate_threads_bb74:                            ; preds = %activate_threads_bb72, %activate_threads_bb73
  %"131" = load i32* @"'t1_pc", align 4, !dbg !368
  %"132" = icmp eq i32 %"131", 1, !dbg !368
  %"133" = load i32* @"'E_1", align 4, !dbg !369
  %"134" = icmp eq i32 %"133", 1, !dbg !370
  %or.cond.i1 = and i1 %"132", %"134", !dbg !368
  call void @llvm.dbg.value(metadata !96, i64 0, metadata !371), !dbg !372
  %__retres1.0.i2 = select i1 %or.cond.i1, i32 1, i32 0, !dbg !368
  call void @llvm.dbg.value(metadata !{i32 %__retres1.0.i2}, i64 0, metadata !373), !dbg !374
  %"135" = icmp ne i32 %__retres1.0.i2, 0, !dbg !375
  br i1 %"135", label %activate_threads_bb75, label %activate_threads_bb76, !dbg !375

activate_threads_bb75:                            ; preds = %activate_threads_bb74
  store i32 0, i32* @"'t1_st", align 4, !dbg !376
  br label %activate_threads_bb76, !dbg !377

activate_threads_bb76:                            ; preds = %activate_threads_bb74, %activate_threads_bb75
  ret void, !dbg !378
}

; Function Attrs: nounwind uwtable
define void @fire_time_events() #0 {
fire_time_events_bb77:
  store i32 1, i32* @"'M_E", align 4, !dbg !379
  ret void, !dbg !381
}

; Function Attrs: nounwind uwtable
define void @reset_time_events() #0 {
reset_time_events_bb78:
  %"136" = load i32* @"'M_E", align 4, !dbg !382
  %"137" = icmp eq i32 %"136", 1, !dbg !382
  br i1 %"137", label %reset_time_events_bb79, label %reset_time_events_bb80, !dbg !382

reset_time_events_bb79:                           ; preds = %reset_time_events_bb78
  store i32 2, i32* @"'M_E", align 4, !dbg !385
  br label %reset_time_events_bb80, !dbg !387

reset_time_events_bb80:                           ; preds = %reset_time_events_bb78, %reset_time_events_bb79
  %"138" = load i32* @"'T1_E", align 4, !dbg !388
  %"139" = icmp eq i32 %"138", 1, !dbg !388
  br i1 %"139", label %reset_time_events_bb81, label %reset_time_events_bb82, !dbg !388

reset_time_events_bb81:                           ; preds = %reset_time_events_bb80
  store i32 2, i32* @"'T1_E", align 4, !dbg !390
  br label %reset_time_events_bb82, !dbg !392

reset_time_events_bb82:                           ; preds = %reset_time_events_bb80, %reset_time_events_bb81
  %"140" = load i32* @"'E_M", align 4, !dbg !393
  %"141" = icmp eq i32 %"140", 1, !dbg !393
  br i1 %"141", label %reset_time_events_bb83, label %reset_time_events_bb84, !dbg !393

reset_time_events_bb83:                           ; preds = %reset_time_events_bb82
  store i32 2, i32* @"'E_M", align 4, !dbg !395
  br label %reset_time_events_bb84, !dbg !397

reset_time_events_bb84:                           ; preds = %reset_time_events_bb82, %reset_time_events_bb83
  %"142" = load i32* @"'E_1", align 4, !dbg !398
  %"143" = icmp eq i32 %"142", 1, !dbg !398
  br i1 %"143", label %reset_time_events_bb85, label %reset_time_events_bb86, !dbg !398

reset_time_events_bb85:                           ; preds = %reset_time_events_bb84
  store i32 2, i32* @"'E_1", align 4, !dbg !400
  br label %reset_time_events_bb86, !dbg !402

reset_time_events_bb86:                           ; preds = %reset_time_events_bb84, %reset_time_events_bb85
  ret void, !dbg !403
}

; Function Attrs: nounwind uwtable
define void @init_model() #0 {
init_model_bb87:
  store i32 1, i32* @"'m_i", align 4, !dbg !404
  store i32 1, i32* @"'t1_i", align 4, !dbg !406
  ret void, !dbg !407
}

; Function Attrs: nounwind uwtable
define i32 @stop_simulation() #0 {
stop_simulation_bb88:
  %"144" = load i32* @"'m_st", align 4, !dbg !408
  %"145" = icmp eq i32 %"144", 0, !dbg !408
  %"146" = load i32* @"'t1_st", align 4, !dbg !409
  %"147" = icmp eq i32 %"146", 0, !dbg !412
  %or.cond.i = or i1 %"145", %"147", !dbg !408
  call void @llvm.dbg.value(metadata !96, i64 0, metadata !413), !dbg !414
  %__retres1.0.i = select i1 %or.cond.i, i32 1, i32 0, !dbg !408
  call void @llvm.dbg.value(metadata !{i32 %__retres1.0.i}, i64 0, metadata !415), !dbg !416
  %"148" = icmp ne i32 %__retres1.0.i, 0, !dbg !417
  call void @llvm.dbg.value(metadata !419, i64 0, metadata !420), !dbg !421
  %__retres2.0 = select i1 %"148", i32 0, i32 1, !dbg !417
  ret i32 %__retres2.0, !dbg !422
}

; Function Attrs: nounwind uwtable
define void @start_simulation() #0 {
start_simulation_bb89:
  call void @llvm.dbg.value(metadata !96, i64 0, metadata !423), !dbg !424
  %"149" = load i32* @"'m_i", align 4, !dbg !425
  %"150" = icmp eq i32 %"149", 1, !dbg !425
  br i1 %"150", label %start_simulation_bb90, label %start_simulation_bb91, !dbg !425

start_simulation_bb90:                            ; preds = %start_simulation_bb89
  store i32 0, i32* @"'m_st", align 4, !dbg !429
  br label %start_simulation_bb92, !dbg !430

start_simulation_bb91:                            ; preds = %start_simulation_bb89
  store i32 2, i32* @"'m_st", align 4, !dbg !431
  br label %start_simulation_bb92, !dbg !426

start_simulation_bb92:                            ; preds = %start_simulation_bb91, %start_simulation_bb90
  %"151" = load i32* @"'t1_i", align 4, !dbg !432
  %"152" = icmp eq i32 %"151", 1, !dbg !432
  br i1 %"152", label %start_simulation_bb93, label %start_simulation_bb94, !dbg !432

start_simulation_bb93:                            ; preds = %start_simulation_bb92
  store i32 0, i32* @"'t1_st", align 4, !dbg !433
  br label %start_simulation_init_threads.exit, !dbg !434

start_simulation_bb94:                            ; preds = %start_simulation_bb92
  store i32 2, i32* @"'t1_st", align 4, !dbg !435
  br label %start_simulation_init_threads.exit, !dbg !426

start_simulation_init_threads.exit:               ; preds = %start_simulation_bb93, %start_simulation_bb94
  %"153" = load i32* @"'M_E", align 4, !dbg !436
  %"154" = icmp eq i32 %"153", 0, !dbg !436
  br i1 %"154", label %start_simulation_bb95, label %start_simulation_bb96, !dbg !436

start_simulation_bb95:                            ; preds = %start_simulation_init_threads.exit
  store i32 1, i32* @"'M_E", align 4, !dbg !438
  br label %start_simulation_bb96, !dbg !439

start_simulation_bb96:                            ; preds = %start_simulation_bb95, %start_simulation_init_threads.exit
  %"155" = load i32* @"'T1_E", align 4, !dbg !440
  %"156" = icmp eq i32 %"155", 0, !dbg !440
  br i1 %"156", label %start_simulation_bb97, label %start_simulation_bb98, !dbg !440

start_simulation_bb97:                            ; preds = %start_simulation_bb96
  store i32 1, i32* @"'T1_E", align 4, !dbg !441
  br label %start_simulation_bb98, !dbg !442

start_simulation_bb98:                            ; preds = %start_simulation_bb97, %start_simulation_bb96
  %"157" = load i32* @"'E_M", align 4, !dbg !443
  %"158" = icmp eq i32 %"157", 0, !dbg !443
  br i1 %"158", label %start_simulation_bb99, label %start_simulation_bb100, !dbg !443

start_simulation_bb99:                            ; preds = %start_simulation_bb98
  store i32 1, i32* @"'E_M", align 4, !dbg !444
  br label %start_simulation_bb100, !dbg !445

start_simulation_bb100:                           ; preds = %start_simulation_bb99, %start_simulation_bb98
  %"159" = load i32* @"'E_1", align 4, !dbg !446
  %"160" = icmp eq i32 %"159", 0, !dbg !446
  br i1 %"160", label %start_simulation_bb101, label %start_simulation_fire_delta_events.exit11, !dbg !446

start_simulation_bb101:                           ; preds = %start_simulation_bb100
  store i32 1, i32* @"'E_1", align 4, !dbg !447
  br label %start_simulation_fire_delta_events.exit11, !dbg !448

start_simulation_fire_delta_events.exit11:        ; preds = %start_simulation_bb100, %start_simulation_bb101
  %"161" = load i32* @"'m_pc", align 4, !dbg !449
  %"162" = icmp eq i32 %"161", 1, !dbg !449
  %"163" = load i32* @"'E_M", align 4, !dbg !450
  %"164" = icmp eq i32 %"163", 1, !dbg !452
  %or.cond.i.i12 = and i1 %"162", %"164", !dbg !449
  call void @llvm.dbg.value(metadata !96, i64 0, metadata !453), !dbg !454
  br i1 %or.cond.i.i12, label %start_simulation_bb102, label %start_simulation_bb103, !dbg !455

start_simulation_bb102:                           ; preds = %start_simulation_fire_delta_events.exit11
  store i32 0, i32* @"'m_st", align 4, !dbg !456
  br label %start_simulation_bb103, !dbg !457

start_simulation_bb103:                           ; preds = %start_simulation_bb102, %start_simulation_fire_delta_events.exit11
  %"165" = load i32* @"'t1_pc", align 4, !dbg !458
  %"166" = icmp eq i32 %"165", 1, !dbg !458
  %"167" = load i32* @"'E_1", align 4, !dbg !459
  %"168" = icmp eq i32 %"167", 1, !dbg !460
  %or.cond.i1.i14 = and i1 %"166", %"168", !dbg !458
  call void @llvm.dbg.value(metadata !96, i64 0, metadata !461), !dbg !462
  br i1 %or.cond.i1.i14, label %start_simulation_bb104, label %start_simulation_activate_threads.exit16, !dbg !463

start_simulation_bb104:                           ; preds = %start_simulation_bb103
  store i32 0, i32* @"'t1_st", align 4, !dbg !464
  br label %start_simulation_activate_threads.exit16, !dbg !465

start_simulation_activate_threads.exit16:         ; preds = %start_simulation_bb103, %start_simulation_bb104
  %"169" = load i32* @"'M_E", align 4, !dbg !466
  %"170" = icmp eq i32 %"169", 1, !dbg !466
  br i1 %"170", label %start_simulation_bb105, label %start_simulation_bb106, !dbg !466

start_simulation_bb105:                           ; preds = %start_simulation_activate_threads.exit16
  store i32 2, i32* @"'M_E", align 4, !dbg !468
  br label %start_simulation_bb106, !dbg !469

start_simulation_bb106:                           ; preds = %start_simulation_bb105, %start_simulation_activate_threads.exit16
  %"171" = load i32* @"'T1_E", align 4, !dbg !470
  %"172" = icmp eq i32 %"171", 1, !dbg !470
  br i1 %"172", label %start_simulation_bb107, label %start_simulation_bb108, !dbg !470

start_simulation_bb107:                           ; preds = %start_simulation_bb106
  store i32 2, i32* @"'T1_E", align 4, !dbg !471
  br label %start_simulation_bb108, !dbg !472

start_simulation_bb108:                           ; preds = %start_simulation_bb107, %start_simulation_bb106
  %"173" = load i32* @"'E_M", align 4, !dbg !473
  %"174" = icmp eq i32 %"173", 1, !dbg !473
  br i1 %"174", label %start_simulation_bb109, label %start_simulation_bb110, !dbg !473

start_simulation_bb109:                           ; preds = %start_simulation_bb108
  store i32 2, i32* @"'E_M", align 4, !dbg !474
  br label %start_simulation_bb110, !dbg !475

start_simulation_bb110:                           ; preds = %start_simulation_bb109, %start_simulation_bb108
  %"175" = load i32* @"'E_1", align 4, !dbg !476
  %"176" = icmp eq i32 %"175", 1, !dbg !476
  br i1 %"176", label %start_simulation_bb111, label %start_simulation_reset_delta_events.exit17, !dbg !476

start_simulation_bb111:                           ; preds = %start_simulation_bb110
  store i32 2, i32* @"'E_1", align 4, !dbg !477
  br label %start_simulation_reset_delta_events.exit17, !dbg !478

start_simulation_reset_delta_events.exit17:       ; preds = %start_simulation_reset_time_events.exit, %start_simulation_bb111, %start_simulation_bb110, %start_simulation_transmit1.exit.i, %start_simulation_bb124, %start_simulation_bb123
  %"177" = load i32* @"'m_st", align 4, !dbg !479
  %"178" = icmp eq i32 %"177", 0, !dbg !479
  %"179" = load i32* @"'t1_st", align 4, !dbg !480
  %"180" = icmp eq i32 %"179", 0, !dbg !485
  %or.cond.i.i8 = or i1 %"178", %"180", !dbg !479
  br i1 %or.cond.i.i8, label %start_simulation_bb112, label %start_simulation_eval.exit, !dbg !486

start_simulation_bb112:                           ; preds = %start_simulation_reset_delta_events.exit17
  %"181" = load i32* @"'m_st", align 4, !dbg !487
  %"182" = icmp eq i32 %"181", 0, !dbg !487
  br i1 %"182", label %start_simulation_bb113, label %start_simulation_bb123, !dbg !487

start_simulation_bb113:                           ; preds = %start_simulation_bb112
  %"183" = call i32 (...)* @__VERIFIER_nondet_int() #6, !dbg !488
  %"184" = icmp ne i32 %"183", 0, !dbg !489
  br i1 %"184", label %start_simulation_bb114, label %start_simulation_bb123, !dbg !489

start_simulation_bb114:                           ; preds = %start_simulation_bb113
  store i32 1, i32* @"'m_st", align 4, !dbg !490
  %"185" = call i32 @__kittel_nondef.0() #6, !dbg !491
  %"186" = load i32* @"'m_pc", align 4, !dbg !492
  %"187" = icmp ne i32 %"186", 0, !dbg !492
  %"188" = load i32* @"'m_pc", align 4, !dbg !491
  %"189" = icmp eq i32 %"188", 1, !dbg !493
  %or.cond.i2.i = and i1 %"187", %"189", !dbg !492
  br i1 %or.cond.i2.i, label %start_simulation_bb115, label %start_simulation_bb119, !dbg !492

start_simulation_bb115:                           ; preds = %start_simulation_bb114
  %"190" = load i32* @"'token", align 4, !dbg !494
  %"191" = load i32* @"'local", align 4, !dbg !494
  %"192" = add nsw i32 %"191", 1, !dbg !494
  %"193" = icmp ne i32 %"190", %"192", !dbg !494
  br i1 %"193", label %start_simulation_bb116, label %start_simulation_bb117, !dbg !494

start_simulation_bb116:                           ; preds = %start_simulation_bb115
  call void (...)* @__VERIFIER_error() #5, !dbg !495
  unreachable, !dbg !495

start_simulation_bb117:                           ; preds = %start_simulation_bb115
  %"194" = icmp sle i32 %"185", 5, !dbg !497
  %"195" = icmp sge i32 %"185", 5, !dbg !498
  %or.cond3.i.i = and i1 %"194", %"195", !dbg !497
  %"196" = icmp eq i32 %"185", 5, !dbg !499
  %or.cond4.i.i = and i1 %or.cond3.i.i, %"196", !dbg !497
  br i1 %or.cond4.i.i, label %start_simulation_bb118, label %start_simulation_bb119, !dbg !497

start_simulation_bb118:                           ; preds = %start_simulation_bb117
  call void (...)* @__VERIFIER_error() #5, !dbg !500
  unreachable, !dbg !500

start_simulation_bb119:                           ; preds = %start_simulation_bb117, %start_simulation_bb114
  %"197" = call i32 (...)* @__VERIFIER_nondet_int() #6, !dbg !502
  store i32 %"197", i32* @"'token", align 4, !dbg !502
  %"198" = load i32* @"'token", align 4, !dbg !503
  store i32 %"198", i32* @"'local", align 4, !dbg !503
  store i32 1, i32* @"'E_1", align 4, !dbg !504
  %"199" = load i32* @"'m_pc", align 4, !dbg !505
  %"200" = icmp eq i32 %"199", 1, !dbg !505
  %"201" = load i32* @"'E_M", align 4, !dbg !506
  %"202" = icmp eq i32 %"201", 1, !dbg !509
  %or.cond.i.i.i.i3.i = and i1 %"200", %"202", !dbg !505
  br i1 %or.cond.i.i.i.i3.i, label %start_simulation_bb120, label %start_simulation_bb121, !dbg !510

start_simulation_bb120:                           ; preds = %start_simulation_bb119
  store i32 0, i32* @"'m_st", align 4, !dbg !511
  br label %start_simulation_bb121, !dbg !512

start_simulation_bb121:                           ; preds = %start_simulation_bb120, %start_simulation_bb119
  %"203" = load i32* @"'t1_pc", align 4, !dbg !513
  %"204" = icmp eq i32 %"203", 1, !dbg !513
  %"205" = load i32* @"'E_1", align 4, !dbg !514
  %"206" = icmp eq i32 %"205", 1, !dbg !515
  %or.cond.i1.i.i.i4.i = and i1 %"204", %"206", !dbg !513
  br i1 %or.cond.i1.i.i.i4.i, label %start_simulation_bb122, label %start_simulation_master.exit.i, !dbg !516

start_simulation_bb122:                           ; preds = %start_simulation_bb121
  store i32 0, i32* @"'t1_st", align 4, !dbg !517
  br label %start_simulation_master.exit.i, !dbg !518

start_simulation_master.exit.i:                   ; preds = %start_simulation_bb122, %start_simulation_bb121
  store i32 2, i32* @"'E_1", align 4, !dbg !519
  store i32 1, i32* @"'m_pc", align 4, !dbg !520
  store i32 2, i32* @"'m_st", align 4, !dbg !521
  br label %start_simulation_bb123, !dbg !522

start_simulation_bb123:                           ; preds = %start_simulation_master.exit.i, %start_simulation_bb113, %start_simulation_bb112
  %"207" = load i32* @"'t1_st", align 4, !dbg !523
  %"208" = icmp eq i32 %"207", 0, !dbg !523
  br i1 %"208", label %start_simulation_bb124, label %start_simulation_reset_delta_events.exit17, !dbg !523

start_simulation_bb124:                           ; preds = %start_simulation_bb123
  %"209" = call i32 (...)* @__VERIFIER_nondet_int() #6, !dbg !524
  %"210" = icmp ne i32 %"209", 0, !dbg !525
  br i1 %"210", label %start_simulation_bb125, label %start_simulation_reset_delta_events.exit17, !dbg !525

start_simulation_bb125:                           ; preds = %start_simulation_bb124
  store i32 1, i32* @"'t1_st", align 4, !dbg !526
  %"211" = load i32* @"'t1_pc", align 4, !dbg !527
  %"212" = icmp ne i32 %"211", 0, !dbg !527
  %"213" = load i32* @"'t1_pc", align 4, !dbg !528
  %"214" = icmp eq i32 %"213", 1, !dbg !529
  %or.cond.i1.i10 = and i1 %"212", %"214", !dbg !527
  br i1 %or.cond.i1.i10, label %start_simulation_bb126, label %start_simulation_transmit1.exit.i, !dbg !527

start_simulation_bb126:                           ; preds = %start_simulation_bb125
  %"215" = load i32* @"'token", align 4, !dbg !530
  %"216" = add nsw i32 %"215", 1, !dbg !530
  store i32 %"216", i32* @"'token", align 4, !dbg !530
  store i32 1, i32* @"'E_M", align 4, !dbg !531
  %"217" = load i32* @"'m_pc", align 4, !dbg !532
  %"218" = icmp eq i32 %"217", 1, !dbg !532
  %"219" = load i32* @"'E_M", align 4, !dbg !533
  %"220" = icmp eq i32 %"219", 1, !dbg !536
  %or.cond.i.i.i.i.i = and i1 %"218", %"220", !dbg !532
  br i1 %or.cond.i.i.i.i.i, label %start_simulation_bb127, label %start_simulation_bb128, !dbg !537

start_simulation_bb127:                           ; preds = %start_simulation_bb126
  store i32 0, i32* @"'m_st", align 4, !dbg !538
  br label %start_simulation_bb128, !dbg !539

start_simulation_bb128:                           ; preds = %start_simulation_bb127, %start_simulation_bb126
  %"221" = load i32* @"'t1_pc", align 4, !dbg !540
  %"222" = icmp eq i32 %"221", 1, !dbg !540
  %"223" = load i32* @"'E_1", align 4, !dbg !541
  %"224" = icmp eq i32 %"223", 1, !dbg !542
  %or.cond.i1.i.i.i.i = and i1 %"222", %"224", !dbg !540
  br i1 %or.cond.i1.i.i.i.i, label %start_simulation_bb129, label %start_simulation_immediate_notify.exit.i.i, !dbg !543

start_simulation_bb129:                           ; preds = %start_simulation_bb128
  store i32 0, i32* @"'t1_st", align 4, !dbg !544
  br label %start_simulation_immediate_notify.exit.i.i, !dbg !545

start_simulation_immediate_notify.exit.i.i:       ; preds = %start_simulation_bb129, %start_simulation_bb128
  store i32 2, i32* @"'E_M", align 4, !dbg !546
  br label %start_simulation_transmit1.exit.i, !dbg !547

start_simulation_transmit1.exit.i:                ; preds = %start_simulation_immediate_notify.exit.i.i, %start_simulation_bb125
  store i32 1, i32* @"'t1_pc", align 4, !dbg !548
  store i32 2, i32* @"'t1_st", align 4, !dbg !549
  br label %start_simulation_reset_delta_events.exit17, !dbg !550

start_simulation_eval.exit:                       ; preds = %start_simulation_reset_delta_events.exit17
  call void @llvm.dbg.value(metadata !551, i64 0, metadata !423), !dbg !424
  call void @llvm.dbg.value(metadata !552, i64 0, metadata !423), !dbg !424
  %"225" = load i32* @"'M_E", align 4, !dbg !553
  %"226" = icmp eq i32 %"225", 0, !dbg !553
  br i1 %"226", label %start_simulation_bb130, label %start_simulation_bb131, !dbg !553

start_simulation_bb130:                           ; preds = %start_simulation_eval.exit
  store i32 1, i32* @"'M_E", align 4, !dbg !556
  br label %start_simulation_bb131, !dbg !557

start_simulation_bb131:                           ; preds = %start_simulation_bb130, %start_simulation_eval.exit
  %"227" = load i32* @"'T1_E", align 4, !dbg !558
  %"228" = icmp eq i32 %"227", 0, !dbg !558
  br i1 %"228", label %start_simulation_bb132, label %start_simulation_bb133, !dbg !558

start_simulation_bb132:                           ; preds = %start_simulation_bb131
  store i32 1, i32* @"'T1_E", align 4, !dbg !559
  br label %start_simulation_bb133, !dbg !560

start_simulation_bb133:                           ; preds = %start_simulation_bb132, %start_simulation_bb131
  %"229" = load i32* @"'E_M", align 4, !dbg !561
  %"230" = icmp eq i32 %"229", 0, !dbg !561
  br i1 %"230", label %start_simulation_bb134, label %start_simulation_bb135, !dbg !561

start_simulation_bb134:                           ; preds = %start_simulation_bb133
  store i32 1, i32* @"'E_M", align 4, !dbg !562
  br label %start_simulation_bb135, !dbg !563

start_simulation_bb135:                           ; preds = %start_simulation_bb134, %start_simulation_bb133
  %"231" = load i32* @"'E_1", align 4, !dbg !564
  %"232" = icmp eq i32 %"231", 0, !dbg !564
  br i1 %"232", label %start_simulation_bb136, label %start_simulation_fire_delta_events.exit, !dbg !564

start_simulation_bb136:                           ; preds = %start_simulation_bb135
  store i32 1, i32* @"'E_1", align 4, !dbg !565
  br label %start_simulation_fire_delta_events.exit, !dbg !566

start_simulation_fire_delta_events.exit:          ; preds = %start_simulation_bb135, %start_simulation_bb136
  %"233" = load i32* @"'m_pc", align 4, !dbg !567
  %"234" = icmp eq i32 %"233", 1, !dbg !567
  %"235" = load i32* @"'E_M", align 4, !dbg !568
  %"236" = icmp eq i32 %"235", 1, !dbg !570
  %or.cond.i.i3 = and i1 %"234", %"236", !dbg !567
  call void @llvm.dbg.value(metadata !96, i64 0, metadata !571), !dbg !572
  br i1 %or.cond.i.i3, label %start_simulation_bb137, label %start_simulation_bb138, !dbg !573

start_simulation_bb137:                           ; preds = %start_simulation_fire_delta_events.exit
  store i32 0, i32* @"'m_st", align 4, !dbg !574
  br label %start_simulation_bb138, !dbg !575

start_simulation_bb138:                           ; preds = %start_simulation_bb137, %start_simulation_fire_delta_events.exit
  %"237" = load i32* @"'t1_pc", align 4, !dbg !576
  %"238" = icmp eq i32 %"237", 1, !dbg !576
  %"239" = load i32* @"'E_1", align 4, !dbg !577
  %"240" = icmp eq i32 %"239", 1, !dbg !578
  %or.cond.i1.i5 = and i1 %"238", %"240", !dbg !576
  call void @llvm.dbg.value(metadata !96, i64 0, metadata !579), !dbg !580
  br i1 %or.cond.i1.i5, label %start_simulation_bb139, label %start_simulation_activate_threads.exit7, !dbg !581

start_simulation_bb139:                           ; preds = %start_simulation_bb138
  store i32 0, i32* @"'t1_st", align 4, !dbg !582
  br label %start_simulation_activate_threads.exit7, !dbg !583

start_simulation_activate_threads.exit7:          ; preds = %start_simulation_bb138, %start_simulation_bb139
  %"241" = load i32* @"'M_E", align 4, !dbg !584
  %"242" = icmp eq i32 %"241", 1, !dbg !584
  br i1 %"242", label %start_simulation_bb140, label %start_simulation_bb141, !dbg !584

start_simulation_bb140:                           ; preds = %start_simulation_activate_threads.exit7
  store i32 2, i32* @"'M_E", align 4, !dbg !586
  br label %start_simulation_bb141, !dbg !587

start_simulation_bb141:                           ; preds = %start_simulation_bb140, %start_simulation_activate_threads.exit7
  %"243" = load i32* @"'T1_E", align 4, !dbg !588
  %"244" = icmp eq i32 %"243", 1, !dbg !588
  br i1 %"244", label %start_simulation_bb142, label %start_simulation_bb143, !dbg !588

start_simulation_bb142:                           ; preds = %start_simulation_bb141
  store i32 2, i32* @"'T1_E", align 4, !dbg !589
  br label %start_simulation_bb143, !dbg !590

start_simulation_bb143:                           ; preds = %start_simulation_bb142, %start_simulation_bb141
  %"245" = load i32* @"'E_M", align 4, !dbg !591
  %"246" = icmp eq i32 %"245", 1, !dbg !591
  br i1 %"246", label %start_simulation_bb144, label %start_simulation_bb145, !dbg !591

start_simulation_bb144:                           ; preds = %start_simulation_bb143
  store i32 2, i32* @"'E_M", align 4, !dbg !592
  br label %start_simulation_bb145, !dbg !593

start_simulation_bb145:                           ; preds = %start_simulation_bb144, %start_simulation_bb143
  %"247" = load i32* @"'E_1", align 4, !dbg !594
  %"248" = icmp eq i32 %"247", 1, !dbg !594
  br i1 %"248", label %start_simulation_bb146, label %start_simulation_reset_delta_events.exit, !dbg !594

start_simulation_bb146:                           ; preds = %start_simulation_bb145
  store i32 2, i32* @"'E_1", align 4, !dbg !595
  br label %start_simulation_reset_delta_events.exit, !dbg !596

start_simulation_reset_delta_events.exit:         ; preds = %start_simulation_bb145, %start_simulation_bb146
  %"249" = load i32* @"'m_st", align 4, !dbg !597
  %"250" = icmp eq i32 %"249", 0, !dbg !597
  %"251" = load i32* @"'t1_st", align 4, !dbg !598
  %"252" = icmp eq i32 %"251", 0, !dbg !600
  %or.cond.i = or i1 %"250", %"252", !dbg !597
  call void @llvm.dbg.value(metadata !96, i64 0, metadata !601), !dbg !602
  %__retres1.0.i = select i1 %or.cond.i, i32 1, i32 0, !dbg !597
  call void @llvm.dbg.value(metadata !{i32 %__retres1.0.i}, i64 0, metadata !603), !dbg !604
  %"253" = icmp eq i32 %__retres1.0.i, 0, !dbg !605
  br i1 %"253", label %start_simulation_bb147, label %start_simulation_reset_time_events.exit, !dbg !605

start_simulation_bb147:                           ; preds = %start_simulation_reset_delta_events.exit
  call void @llvm.dbg.value(metadata !607, i64 0, metadata !423), !dbg !424
  store i32 1, i32* @"'M_E", align 4, !dbg !608
  %"254" = load i32* @"'m_pc", align 4, !dbg !612
  %"255" = icmp eq i32 %"254", 1, !dbg !612
  %"256" = load i32* @"'E_M", align 4, !dbg !613
  %"257" = icmp eq i32 %"256", 1, !dbg !615
  %or.cond.i.i1 = and i1 %"255", %"257", !dbg !612
  call void @llvm.dbg.value(metadata !96, i64 0, metadata !616), !dbg !617
  br i1 %or.cond.i.i1, label %start_simulation_bb148, label %start_simulation_bb149, !dbg !618

start_simulation_bb148:                           ; preds = %start_simulation_bb147
  store i32 0, i32* @"'m_st", align 4, !dbg !619
  br label %start_simulation_bb149, !dbg !620

start_simulation_bb149:                           ; preds = %start_simulation_bb148, %start_simulation_bb147
  %"258" = load i32* @"'t1_pc", align 4, !dbg !621
  %"259" = icmp eq i32 %"258", 1, !dbg !621
  %"260" = load i32* @"'E_1", align 4, !dbg !622
  %"261" = icmp eq i32 %"260", 1, !dbg !623
  %or.cond.i1.i = and i1 %"259", %"261", !dbg !621
  call void @llvm.dbg.value(metadata !96, i64 0, metadata !624), !dbg !625
  br i1 %or.cond.i1.i, label %start_simulation_bb150, label %start_simulation_activate_threads.exit, !dbg !626

start_simulation_bb150:                           ; preds = %start_simulation_bb149
  store i32 0, i32* @"'t1_st", align 4, !dbg !627
  br label %start_simulation_activate_threads.exit, !dbg !628

start_simulation_activate_threads.exit:           ; preds = %start_simulation_bb149, %start_simulation_bb150
  %"262" = load i32* @"'M_E", align 4, !dbg !629
  %"263" = icmp eq i32 %"262", 1, !dbg !629
  br i1 %"263", label %start_simulation_bb151, label %start_simulation_bb152, !dbg !629

start_simulation_bb151:                           ; preds = %start_simulation_activate_threads.exit
  store i32 2, i32* @"'M_E", align 4, !dbg !631
  br label %start_simulation_bb152, !dbg !632

start_simulation_bb152:                           ; preds = %start_simulation_bb151, %start_simulation_activate_threads.exit
  %"264" = load i32* @"'T1_E", align 4, !dbg !633
  %"265" = icmp eq i32 %"264", 1, !dbg !633
  br i1 %"265", label %start_simulation_bb153, label %start_simulation_bb154, !dbg !633

start_simulation_bb153:                           ; preds = %start_simulation_bb152
  store i32 2, i32* @"'T1_E", align 4, !dbg !634
  br label %start_simulation_bb154, !dbg !635

start_simulation_bb154:                           ; preds = %start_simulation_bb153, %start_simulation_bb152
  %"266" = load i32* @"'E_M", align 4, !dbg !636
  %"267" = icmp eq i32 %"266", 1, !dbg !636
  br i1 %"267", label %start_simulation_bb155, label %start_simulation_bb156, !dbg !636

start_simulation_bb155:                           ; preds = %start_simulation_bb154
  store i32 2, i32* @"'E_M", align 4, !dbg !637
  br label %start_simulation_bb156, !dbg !638

start_simulation_bb156:                           ; preds = %start_simulation_bb155, %start_simulation_bb154
  %"268" = load i32* @"'E_1", align 4, !dbg !639
  %"269" = icmp eq i32 %"268", 1, !dbg !639
  br i1 %"269", label %start_simulation_bb157, label %start_simulation_reset_time_events.exit, !dbg !639

start_simulation_bb157:                           ; preds = %start_simulation_bb156
  store i32 2, i32* @"'E_1", align 4, !dbg !640
  br label %start_simulation_reset_time_events.exit, !dbg !641

start_simulation_reset_time_events.exit:          ; preds = %start_simulation_reset_delta_events.exit, %start_simulation_bb157, %start_simulation_bb156
  %"270" = load i32* @"'m_st", align 4, !dbg !642
  %"271" = icmp eq i32 %"270", 0, !dbg !642
  %"272" = load i32* @"'t1_st", align 4, !dbg !643
  %"273" = icmp eq i32 %"272", 0, !dbg !646
  %or.cond.i.i = or i1 %"271", %"273", !dbg !642
  call void @llvm.dbg.value(metadata !96, i64 0, metadata !647), !dbg !648
  call void @llvm.dbg.value(metadata !419, i64 0, metadata !649), !dbg !650
  %__retres2.0.i = select i1 %or.cond.i.i, i32 0, i32 1, !dbg !651
  call void @llvm.dbg.value(metadata !{i32 %__retres2.0.i}, i64 0, metadata !652), !dbg !653
  %"274" = icmp ne i32 %__retres2.0.i, 0, !dbg !654
  br i1 %"274", label %start_simulation_bb158, label %start_simulation_reset_delta_events.exit17, !dbg !654

start_simulation_bb158:                           ; preds = %start_simulation_reset_time_events.exit
  ret void, !dbg !656
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb159:
  store i32 1, i32* @"'m_i", align 4, !dbg !657
  store i32 1, i32* @"'t1_i", align 4, !dbg !661
  call void @llvm.dbg.value(metadata !96, i64 0, metadata !662) #6, !dbg !664
  %"275" = load i32* @"'m_i", align 4, !dbg !665
  %"276" = icmp eq i32 %"275", 1, !dbg !665
  br i1 %"276", label %main_bb160, label %main_bb161, !dbg !665

main_bb160:                                       ; preds = %main_bb159
  store i32 0, i32* @"'m_st", align 4, !dbg !667
  br label %main_bb162, !dbg !668

main_bb161:                                       ; preds = %main_bb159
  store i32 2, i32* @"'m_st", align 4, !dbg !669
  br label %main_bb162, !dbg !666

main_bb162:                                       ; preds = %main_bb161, %main_bb160
  %"277" = load i32* @"'t1_i", align 4, !dbg !670
  %"278" = icmp eq i32 %"277", 1, !dbg !670
  br i1 %"278", label %main_bb163, label %main_bb164, !dbg !670

main_bb163:                                       ; preds = %main_bb162
  store i32 0, i32* @"'t1_st", align 4, !dbg !671
  br label %main_init_threads.exit.i, !dbg !672

main_bb164:                                       ; preds = %main_bb162
  store i32 2, i32* @"'t1_st", align 4, !dbg !673
  br label %main_init_threads.exit.i, !dbg !666

main_init_threads.exit.i:                         ; preds = %main_bb164, %main_bb163
  %"279" = load i32* @"'M_E", align 4, !dbg !674
  %"280" = icmp eq i32 %"279", 0, !dbg !674
  br i1 %"280", label %main_bb165, label %main_bb166, !dbg !674

main_bb165:                                       ; preds = %main_init_threads.exit.i
  store i32 1, i32* @"'M_E", align 4, !dbg !676
  br label %main_bb166, !dbg !677

main_bb166:                                       ; preds = %main_bb165, %main_init_threads.exit.i
  %"281" = load i32* @"'T1_E", align 4, !dbg !678
  %"282" = icmp eq i32 %"281", 0, !dbg !678
  br i1 %"282", label %main_bb167, label %main_bb168, !dbg !678

main_bb167:                                       ; preds = %main_bb166
  store i32 1, i32* @"'T1_E", align 4, !dbg !679
  br label %main_bb168, !dbg !680

main_bb168:                                       ; preds = %main_bb167, %main_bb166
  %"283" = load i32* @"'E_M", align 4, !dbg !681
  %"284" = icmp eq i32 %"283", 0, !dbg !681
  br i1 %"284", label %main_bb169, label %main_bb170, !dbg !681

main_bb169:                                       ; preds = %main_bb168
  store i32 1, i32* @"'E_M", align 4, !dbg !682
  br label %main_bb170, !dbg !683

main_bb170:                                       ; preds = %main_bb169, %main_bb168
  %"285" = load i32* @"'E_1", align 4, !dbg !684
  %"286" = icmp eq i32 %"285", 0, !dbg !684
  br i1 %"286", label %main_bb171, label %main_fire_delta_events.exit11.i, !dbg !684

main_bb171:                                       ; preds = %main_bb170
  store i32 1, i32* @"'E_1", align 4, !dbg !685
  br label %main_fire_delta_events.exit11.i, !dbg !686

main_fire_delta_events.exit11.i:                  ; preds = %main_bb171, %main_bb170
  %"287" = load i32* @"'m_pc", align 4, !dbg !687
  %"288" = icmp eq i32 %"287", 1, !dbg !687
  %"289" = load i32* @"'E_M", align 4, !dbg !688
  %"290" = icmp eq i32 %"289", 1, !dbg !690
  %or.cond.i.i12.i = and i1 %"288", %"290", !dbg !687
  call void @llvm.dbg.value(metadata !96, i64 0, metadata !691) #6, !dbg !692
  br i1 %or.cond.i.i12.i, label %main_bb172, label %main_bb173, !dbg !693

main_bb172:                                       ; preds = %main_fire_delta_events.exit11.i
  store i32 0, i32* @"'m_st", align 4, !dbg !694
  br label %main_bb173, !dbg !695

main_bb173:                                       ; preds = %main_bb172, %main_fire_delta_events.exit11.i
  %"291" = load i32* @"'t1_pc", align 4, !dbg !696
  %"292" = icmp eq i32 %"291", 1, !dbg !696
  %"293" = load i32* @"'E_1", align 4, !dbg !697
  %"294" = icmp eq i32 %"293", 1, !dbg !698
  %or.cond.i1.i14.i = and i1 %"292", %"294", !dbg !696
  call void @llvm.dbg.value(metadata !96, i64 0, metadata !699) #6, !dbg !700
  br i1 %or.cond.i1.i14.i, label %main_bb174, label %main_activate_threads.exit16.i, !dbg !701

main_bb174:                                       ; preds = %main_bb173
  store i32 0, i32* @"'t1_st", align 4, !dbg !702
  br label %main_activate_threads.exit16.i, !dbg !703

main_activate_threads.exit16.i:                   ; preds = %main_bb174, %main_bb173
  %"295" = load i32* @"'M_E", align 4, !dbg !704
  %"296" = icmp eq i32 %"295", 1, !dbg !704
  br i1 %"296", label %main_bb175, label %main_bb176, !dbg !704

main_bb175:                                       ; preds = %main_activate_threads.exit16.i
  store i32 2, i32* @"'M_E", align 4, !dbg !706
  br label %main_bb176, !dbg !707

main_bb176:                                       ; preds = %main_bb175, %main_activate_threads.exit16.i
  %"297" = load i32* @"'T1_E", align 4, !dbg !708
  %"298" = icmp eq i32 %"297", 1, !dbg !708
  br i1 %"298", label %main_bb177, label %main_bb178, !dbg !708

main_bb177:                                       ; preds = %main_bb176
  store i32 2, i32* @"'T1_E", align 4, !dbg !709
  br label %main_bb178, !dbg !710

main_bb178:                                       ; preds = %main_bb177, %main_bb176
  %"299" = load i32* @"'E_M", align 4, !dbg !711
  %"300" = icmp eq i32 %"299", 1, !dbg !711
  br i1 %"300", label %main_bb179, label %main_bb180, !dbg !711

main_bb179:                                       ; preds = %main_bb178
  store i32 2, i32* @"'E_M", align 4, !dbg !712
  br label %main_bb180, !dbg !713

main_bb180:                                       ; preds = %main_bb179, %main_bb178
  %"301" = load i32* @"'E_1", align 4, !dbg !714
  %"302" = icmp eq i32 %"301", 1, !dbg !714
  br i1 %"302", label %main_bb181, label %main_reset_delta_events.exit17.i, !dbg !714

main_bb181:                                       ; preds = %main_bb180
  store i32 2, i32* @"'E_1", align 4, !dbg !715
  br label %main_reset_delta_events.exit17.i, !dbg !716

main_reset_delta_events.exit17.i:                 ; preds = %main_reset_time_events.exit.i, %main_transmit1.exit.i.i, %main_bb194, %main_bb193, %main_bb181, %main_bb180
  %"303" = load i32* @"'m_st", align 4, !dbg !717
  %"304" = icmp eq i32 %"303", 0, !dbg !717
  %"305" = load i32* @"'t1_st", align 4, !dbg !718
  %"306" = icmp eq i32 %"305", 0, !dbg !720
  %or.cond.i.i8.i = or i1 %"304", %"306", !dbg !717
  br i1 %or.cond.i.i8.i, label %main_bb182, label %main_eval.exit.i, !dbg !721

main_bb182:                                       ; preds = %main_reset_delta_events.exit17.i
  %"307" = load i32* @"'m_st", align 4, !dbg !722
  %"308" = icmp eq i32 %"307", 0, !dbg !722
  br i1 %"308", label %main_bb183, label %main_bb193, !dbg !722

main_bb183:                                       ; preds = %main_bb182
  %"309" = call i32 (...)* @__VERIFIER_nondet_int() #6, !dbg !723
  %"310" = icmp ne i32 %"309", 0, !dbg !724
  br i1 %"310", label %main_bb184, label %main_bb193, !dbg !724

main_bb184:                                       ; preds = %main_bb183
  store i32 1, i32* @"'m_st", align 4, !dbg !725
  %"311" = call i32 @__kittel_nondef.0() #6, !dbg !726
  %"312" = load i32* @"'m_pc", align 4, !dbg !727
  %"313" = icmp ne i32 %"312", 0, !dbg !727
  %"314" = load i32* @"'m_pc", align 4, !dbg !726
  %"315" = icmp eq i32 %"314", 1, !dbg !728
  %or.cond.i2.i.i = and i1 %"313", %"315", !dbg !727
  br i1 %or.cond.i2.i.i, label %main_bb185, label %main_bb189, !dbg !727

main_bb185:                                       ; preds = %main_bb184
  %"316" = load i32* @"'token", align 4, !dbg !729
  %"317" = load i32* @"'local", align 4, !dbg !729
  %"318" = add nsw i32 %"317", 1, !dbg !729
  %"319" = icmp ne i32 %"316", %"318", !dbg !729
  br i1 %"319", label %main_bb186, label %main_bb187, !dbg !729

main_bb186:                                       ; preds = %main_bb185
  call void (...)* @__VERIFIER_error() #5, !dbg !730
  unreachable, !dbg !730

main_bb187:                                       ; preds = %main_bb185
  %"320" = icmp sle i32 %"311", 5, !dbg !732
  %"321" = icmp sge i32 %"311", 5, !dbg !733
  %or.cond3.i.i.i = and i1 %"320", %"321", !dbg !732
  %"322" = icmp eq i32 %"311", 5, !dbg !734
  %or.cond4.i.i.i = and i1 %or.cond3.i.i.i, %"322", !dbg !732
  br i1 %or.cond4.i.i.i, label %main_bb188, label %main_bb189, !dbg !732

main_bb188:                                       ; preds = %main_bb187
  call void (...)* @__VERIFIER_error() #5, !dbg !735
  unreachable, !dbg !735

main_bb189:                                       ; preds = %main_bb187, %main_bb184
  %"323" = call i32 (...)* @__VERIFIER_nondet_int() #6, !dbg !737
  store i32 %"323", i32* @"'token", align 4, !dbg !737
  %"324" = load i32* @"'token", align 4, !dbg !738
  store i32 %"324", i32* @"'local", align 4, !dbg !738
  store i32 1, i32* @"'E_1", align 4, !dbg !739
  %"325" = load i32* @"'m_pc", align 4, !dbg !740
  %"326" = icmp eq i32 %"325", 1, !dbg !740
  %"327" = load i32* @"'E_M", align 4, !dbg !741
  %"328" = icmp eq i32 %"327", 1, !dbg !744
  %or.cond.i.i.i.i3.i.i = and i1 %"326", %"328", !dbg !740
  br i1 %or.cond.i.i.i.i3.i.i, label %main_bb190, label %main_bb191, !dbg !745

main_bb190:                                       ; preds = %main_bb189
  store i32 0, i32* @"'m_st", align 4, !dbg !746
  br label %main_bb191, !dbg !747

main_bb191:                                       ; preds = %main_bb190, %main_bb189
  %"329" = load i32* @"'t1_pc", align 4, !dbg !748
  %"330" = icmp eq i32 %"329", 1, !dbg !748
  %"331" = load i32* @"'E_1", align 4, !dbg !749
  %"332" = icmp eq i32 %"331", 1, !dbg !750
  %or.cond.i1.i.i.i4.i.i = and i1 %"330", %"332", !dbg !748
  br i1 %or.cond.i1.i.i.i4.i.i, label %main_bb192, label %main_master.exit.i.i, !dbg !751

main_bb192:                                       ; preds = %main_bb191
  store i32 0, i32* @"'t1_st", align 4, !dbg !752
  br label %main_master.exit.i.i, !dbg !753

main_master.exit.i.i:                             ; preds = %main_bb192, %main_bb191
  store i32 2, i32* @"'E_1", align 4, !dbg !754
  store i32 1, i32* @"'m_pc", align 4, !dbg !755
  store i32 2, i32* @"'m_st", align 4, !dbg !756
  br label %main_bb193, !dbg !757

main_bb193:                                       ; preds = %main_master.exit.i.i, %main_bb183, %main_bb182
  %"333" = load i32* @"'t1_st", align 4, !dbg !758
  %"334" = icmp eq i32 %"333", 0, !dbg !758
  br i1 %"334", label %main_bb194, label %main_reset_delta_events.exit17.i, !dbg !758

main_bb194:                                       ; preds = %main_bb193
  %"335" = call i32 (...)* @__VERIFIER_nondet_int() #6, !dbg !759
  %"336" = icmp ne i32 %"335", 0, !dbg !760
  br i1 %"336", label %main_bb195, label %main_reset_delta_events.exit17.i, !dbg !760

main_bb195:                                       ; preds = %main_bb194
  store i32 1, i32* @"'t1_st", align 4, !dbg !761
  %"337" = load i32* @"'t1_pc", align 4, !dbg !762
  %"338" = icmp ne i32 %"337", 0, !dbg !762
  %"339" = load i32* @"'t1_pc", align 4, !dbg !763
  %"340" = icmp eq i32 %"339", 1, !dbg !764
  %or.cond.i1.i10.i = and i1 %"338", %"340", !dbg !762
  br i1 %or.cond.i1.i10.i, label %main_bb196, label %main_transmit1.exit.i.i, !dbg !762

main_bb196:                                       ; preds = %main_bb195
  %"341" = load i32* @"'token", align 4, !dbg !765
  %"342" = add nsw i32 %"341", 1, !dbg !765
  store i32 %"342", i32* @"'token", align 4, !dbg !765
  store i32 1, i32* @"'E_M", align 4, !dbg !766
  %"343" = load i32* @"'m_pc", align 4, !dbg !767
  %"344" = icmp eq i32 %"343", 1, !dbg !767
  %"345" = load i32* @"'E_M", align 4, !dbg !768
  %"346" = icmp eq i32 %"345", 1, !dbg !771
  %or.cond.i.i.i.i.i.i = and i1 %"344", %"346", !dbg !767
  br i1 %or.cond.i.i.i.i.i.i, label %main_bb197, label %main_bb198, !dbg !772

main_bb197:                                       ; preds = %main_bb196
  store i32 0, i32* @"'m_st", align 4, !dbg !773
  br label %main_bb198, !dbg !774

main_bb198:                                       ; preds = %main_bb197, %main_bb196
  %"347" = load i32* @"'t1_pc", align 4, !dbg !775
  %"348" = icmp eq i32 %"347", 1, !dbg !775
  %"349" = load i32* @"'E_1", align 4, !dbg !776
  %"350" = icmp eq i32 %"349", 1, !dbg !777
  %or.cond.i1.i.i.i.i.i = and i1 %"348", %"350", !dbg !775
  br i1 %or.cond.i1.i.i.i.i.i, label %main_bb199, label %main_immediate_notify.exit.i.i.i, !dbg !778

main_bb199:                                       ; preds = %main_bb198
  store i32 0, i32* @"'t1_st", align 4, !dbg !779
  br label %main_immediate_notify.exit.i.i.i, !dbg !780

main_immediate_notify.exit.i.i.i:                 ; preds = %main_bb199, %main_bb198
  store i32 2, i32* @"'E_M", align 4, !dbg !781
  br label %main_transmit1.exit.i.i, !dbg !782

main_transmit1.exit.i.i:                          ; preds = %main_immediate_notify.exit.i.i.i, %main_bb195
  store i32 1, i32* @"'t1_pc", align 4, !dbg !783
  store i32 2, i32* @"'t1_st", align 4, !dbg !784
  br label %main_reset_delta_events.exit17.i, !dbg !785

main_eval.exit.i:                                 ; preds = %main_reset_delta_events.exit17.i
  call void @llvm.dbg.value(metadata !551, i64 0, metadata !662) #6, !dbg !664
  call void @llvm.dbg.value(metadata !552, i64 0, metadata !662) #6, !dbg !664
  %"351" = load i32* @"'M_E", align 4, !dbg !786
  %"352" = icmp eq i32 %"351", 0, !dbg !786
  br i1 %"352", label %main_bb200, label %main_bb201, !dbg !786

main_bb200:                                       ; preds = %main_eval.exit.i
  store i32 1, i32* @"'M_E", align 4, !dbg !788
  br label %main_bb201, !dbg !789

main_bb201:                                       ; preds = %main_bb200, %main_eval.exit.i
  %"353" = load i32* @"'T1_E", align 4, !dbg !790
  %"354" = icmp eq i32 %"353", 0, !dbg !790
  br i1 %"354", label %main_bb202, label %main_bb203, !dbg !790

main_bb202:                                       ; preds = %main_bb201
  store i32 1, i32* @"'T1_E", align 4, !dbg !791
  br label %main_bb203, !dbg !792

main_bb203:                                       ; preds = %main_bb202, %main_bb201
  %"355" = load i32* @"'E_M", align 4, !dbg !793
  %"356" = icmp eq i32 %"355", 0, !dbg !793
  br i1 %"356", label %main_bb204, label %main_bb205, !dbg !793

main_bb204:                                       ; preds = %main_bb203
  store i32 1, i32* @"'E_M", align 4, !dbg !794
  br label %main_bb205, !dbg !795

main_bb205:                                       ; preds = %main_bb204, %main_bb203
  %"357" = load i32* @"'E_1", align 4, !dbg !796
  %"358" = icmp eq i32 %"357", 0, !dbg !796
  br i1 %"358", label %main_bb206, label %main_fire_delta_events.exit.i, !dbg !796

main_bb206:                                       ; preds = %main_bb205
  store i32 1, i32* @"'E_1", align 4, !dbg !797
  br label %main_fire_delta_events.exit.i, !dbg !798

main_fire_delta_events.exit.i:                    ; preds = %main_bb206, %main_bb205
  %"359" = load i32* @"'m_pc", align 4, !dbg !799
  %"360" = icmp eq i32 %"359", 1, !dbg !799
  %"361" = load i32* @"'E_M", align 4, !dbg !800
  %"362" = icmp eq i32 %"361", 1, !dbg !802
  %or.cond.i.i3.i = and i1 %"360", %"362", !dbg !799
  call void @llvm.dbg.value(metadata !96, i64 0, metadata !803) #6, !dbg !804
  br i1 %or.cond.i.i3.i, label %main_bb207, label %main_bb208, !dbg !805

main_bb207:                                       ; preds = %main_fire_delta_events.exit.i
  store i32 0, i32* @"'m_st", align 4, !dbg !806
  br label %main_bb208, !dbg !807

main_bb208:                                       ; preds = %main_bb207, %main_fire_delta_events.exit.i
  %"363" = load i32* @"'t1_pc", align 4, !dbg !808
  %"364" = icmp eq i32 %"363", 1, !dbg !808
  %"365" = load i32* @"'E_1", align 4, !dbg !809
  %"366" = icmp eq i32 %"365", 1, !dbg !810
  %or.cond.i1.i5.i = and i1 %"364", %"366", !dbg !808
  call void @llvm.dbg.value(metadata !96, i64 0, metadata !811) #6, !dbg !812
  br i1 %or.cond.i1.i5.i, label %main_bb209, label %main_activate_threads.exit7.i, !dbg !813

main_bb209:                                       ; preds = %main_bb208
  store i32 0, i32* @"'t1_st", align 4, !dbg !814
  br label %main_activate_threads.exit7.i, !dbg !815

main_activate_threads.exit7.i:                    ; preds = %main_bb209, %main_bb208
  %"367" = load i32* @"'M_E", align 4, !dbg !816
  %"368" = icmp eq i32 %"367", 1, !dbg !816
  br i1 %"368", label %main_bb210, label %main_bb211, !dbg !816

main_bb210:                                       ; preds = %main_activate_threads.exit7.i
  store i32 2, i32* @"'M_E", align 4, !dbg !818
  br label %main_bb211, !dbg !819

main_bb211:                                       ; preds = %main_bb210, %main_activate_threads.exit7.i
  %"369" = load i32* @"'T1_E", align 4, !dbg !820
  %"370" = icmp eq i32 %"369", 1, !dbg !820
  br i1 %"370", label %main_bb212, label %main_bb213, !dbg !820

main_bb212:                                       ; preds = %main_bb211
  store i32 2, i32* @"'T1_E", align 4, !dbg !821
  br label %main_bb213, !dbg !822

main_bb213:                                       ; preds = %main_bb212, %main_bb211
  %"371" = load i32* @"'E_M", align 4, !dbg !823
  %"372" = icmp eq i32 %"371", 1, !dbg !823
  br i1 %"372", label %main_bb214, label %main_bb215, !dbg !823

main_bb214:                                       ; preds = %main_bb213
  store i32 2, i32* @"'E_M", align 4, !dbg !824
  br label %main_bb215, !dbg !825

main_bb215:                                       ; preds = %main_bb214, %main_bb213
  %"373" = load i32* @"'E_1", align 4, !dbg !826
  %"374" = icmp eq i32 %"373", 1, !dbg !826
  br i1 %"374", label %main_bb216, label %main_reset_delta_events.exit.i, !dbg !826

main_bb216:                                       ; preds = %main_bb215
  store i32 2, i32* @"'E_1", align 4, !dbg !827
  br label %main_reset_delta_events.exit.i, !dbg !828

main_reset_delta_events.exit.i:                   ; preds = %main_bb216, %main_bb215
  %"375" = load i32* @"'m_st", align 4, !dbg !829
  %"376" = icmp eq i32 %"375", 0, !dbg !829
  %"377" = load i32* @"'t1_st", align 4, !dbg !830
  %"378" = icmp eq i32 %"377", 0, !dbg !831
  %or.cond.i.i = or i1 %"376", %"378", !dbg !829
  call void @llvm.dbg.value(metadata !96, i64 0, metadata !832) #6, !dbg !833
  %__retres1.0.i.i = select i1 %or.cond.i.i, i32 1, i32 0, !dbg !829
  call void @llvm.dbg.value(metadata !{i32 %__retres1.0.i.i}, i64 0, metadata !834) #6, !dbg !835
  %"379" = icmp eq i32 %__retres1.0.i.i, 0, !dbg !836
  br i1 %"379", label %main_bb217, label %main_reset_time_events.exit.i, !dbg !836

main_bb217:                                       ; preds = %main_reset_delta_events.exit.i
  call void @llvm.dbg.value(metadata !607, i64 0, metadata !662) #6, !dbg !664
  store i32 1, i32* @"'M_E", align 4, !dbg !837
  %"380" = load i32* @"'m_pc", align 4, !dbg !839
  %"381" = icmp eq i32 %"380", 1, !dbg !839
  %"382" = load i32* @"'E_M", align 4, !dbg !840
  %"383" = icmp eq i32 %"382", 1, !dbg !842
  %or.cond.i.i1.i = and i1 %"381", %"383", !dbg !839
  call void @llvm.dbg.value(metadata !96, i64 0, metadata !843) #6, !dbg !844
  br i1 %or.cond.i.i1.i, label %main_bb218, label %main_bb219, !dbg !845

main_bb218:                                       ; preds = %main_bb217
  store i32 0, i32* @"'m_st", align 4, !dbg !846
  br label %main_bb219, !dbg !847

main_bb219:                                       ; preds = %main_bb218, %main_bb217
  %"384" = load i32* @"'t1_pc", align 4, !dbg !848
  %"385" = icmp eq i32 %"384", 1, !dbg !848
  %"386" = load i32* @"'E_1", align 4, !dbg !849
  %"387" = icmp eq i32 %"386", 1, !dbg !850
  %or.cond.i1.i.i = and i1 %"385", %"387", !dbg !848
  call void @llvm.dbg.value(metadata !96, i64 0, metadata !851) #6, !dbg !852
  br i1 %or.cond.i1.i.i, label %main_bb220, label %main_activate_threads.exit.i, !dbg !853

main_bb220:                                       ; preds = %main_bb219
  store i32 0, i32* @"'t1_st", align 4, !dbg !854
  br label %main_activate_threads.exit.i, !dbg !855

main_activate_threads.exit.i:                     ; preds = %main_bb220, %main_bb219
  %"388" = load i32* @"'M_E", align 4, !dbg !856
  %"389" = icmp eq i32 %"388", 1, !dbg !856
  br i1 %"389", label %main_bb221, label %main_bb222, !dbg !856

main_bb221:                                       ; preds = %main_activate_threads.exit.i
  store i32 2, i32* @"'M_E", align 4, !dbg !858
  br label %main_bb222, !dbg !859

main_bb222:                                       ; preds = %main_bb221, %main_activate_threads.exit.i
  %"390" = load i32* @"'T1_E", align 4, !dbg !860
  %"391" = icmp eq i32 %"390", 1, !dbg !860
  br i1 %"391", label %main_bb223, label %main_bb224, !dbg !860

main_bb223:                                       ; preds = %main_bb222
  store i32 2, i32* @"'T1_E", align 4, !dbg !861
  br label %main_bb224, !dbg !862

main_bb224:                                       ; preds = %main_bb223, %main_bb222
  %"392" = load i32* @"'E_M", align 4, !dbg !863
  %"393" = icmp eq i32 %"392", 1, !dbg !863
  br i1 %"393", label %main_bb225, label %main_bb226, !dbg !863

main_bb225:                                       ; preds = %main_bb224
  store i32 2, i32* @"'E_M", align 4, !dbg !864
  br label %main_bb226, !dbg !865

main_bb226:                                       ; preds = %main_bb225, %main_bb224
  %"394" = load i32* @"'E_1", align 4, !dbg !866
  %"395" = icmp eq i32 %"394", 1, !dbg !866
  br i1 %"395", label %main_bb227, label %main_reset_time_events.exit.i, !dbg !866

main_bb227:                                       ; preds = %main_bb226
  store i32 2, i32* @"'E_1", align 4, !dbg !867
  br label %main_reset_time_events.exit.i, !dbg !868

main_reset_time_events.exit.i:                    ; preds = %main_bb227, %main_bb226, %main_reset_delta_events.exit.i
  %"396" = load i32* @"'m_st", align 4, !dbg !869
  %"397" = icmp eq i32 %"396", 0, !dbg !869
  %"398" = load i32* @"'t1_st", align 4, !dbg !870
  %"399" = icmp eq i32 %"398", 0, !dbg !872
  %or.cond.i.i.i = or i1 %"397", %"399", !dbg !869
  call void @llvm.dbg.value(metadata !96, i64 0, metadata !873) #6, !dbg !874
  call void @llvm.dbg.value(metadata !419, i64 0, metadata !875) #6, !dbg !876
  %__retres2.0.i.i = select i1 %or.cond.i.i.i, i32 0, i32 1, !dbg !877
  call void @llvm.dbg.value(metadata !{i32 %__retres2.0.i.i}, i64 0, metadata !878) #6, !dbg !879
  %"400" = icmp ne i32 %__retres2.0.i.i, 0, !dbg !880
  br i1 %"400", label %main_start_simulation.exit, label %main_reset_delta_events.exit17.i, !dbg !880

main_start_simulation.exit:                       ; preds = %main_reset_time_events.exit.i
  call void @llvm.dbg.value(metadata !96, i64 0, metadata !881), !dbg !882
  ret i32 0, !dbg !883
}

declare i32 @__kittel_nondef.0()

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #2

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind readnone }
attributes #3 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!42, !43}
!llvm.ident = !{!44}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !29, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [//FILES_DIR/SourceCode_SemanticAugmentor.c] [DW_LANG_C99]
!1 = metadata !{metadata !"FILES_DIR/SourceCode_SemanticAugmentor.c", metadata !"/"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !8, metadata !9, metadata !10, metadata !14, metadata !15, metadata !16, metadata !17, metadata !18, metadata !19, metadata !20, metadata !21, metadata !22, metadata !23, metadata !24, metadata !25, metadata !26, metadata !27, metadata !28}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"error", metadata !"error", metadata !"", i32 6, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @error, null, null, metadata !2, i32 7} ; [ DW_TAG_subprogram ] [line 6] [def] [scope 7] [error]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{null}
!8 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"master", metadata !"master", metadata !"", i32 30, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @master, null, null, metadata !2, i32 31} ; [ DW_TAG_subprogram ] [line 30] [def] [scope 31] [master]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"transmit1", metadata !"transmit1", metadata !"", i32 86, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @transmit1, null, null, metadata !2, i32 87} ; [ DW_TAG_subprogram ] [line 86] [def] [scope 87] [transmit1]
!10 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"is_master_triggered", metadata !"is_master_triggered", metadata !"", i32 122, metadata !11, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 ()* @is_master_triggered, null, null, metadata !2, i32 123} ; [ DW_TAG_subprogram ] [line 122] [def] [scope 123] [is_master_triggered]
!11 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !12, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!12 = metadata !{metadata !13}
!13 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!14 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"is_transmit1_triggered", metadata !"is_transmit1_triggered", metadata !"", i32 141, metadata !11, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 ()* @is_transmit1_triggered, null, null, metadata !2, i32 142} ; [ DW_TAG_subprogram ] [line 141] [def] [scope 142] [is_transmit1_triggered]
!15 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"update_channels", metadata !"update_channels", metadata !"", i32 160, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @update_channels, null, null, metadata !2, i32 161} ; [ DW_TAG_subprogram ] [line 160] [def] [scope 161] [update_channels]
!16 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"init_threads", metadata !"init_threads", metadata !"", i32 168, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @init_threads, null, null, metadata !2, i32 169} ; [ DW_TAG_subprogram ] [line 168] [def] [scope 169] [init_threads]
!17 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"exists_runnable_thread", metadata !"exists_runnable_thread", metadata !"", i32 186, metadata !11, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 ()* @exists_runnable_thread, null, null, metadata !2, i32 187} ; [ DW_TAG_subprogram ] [line 186] [def] [scope 187] [exists_runnable_thread]
!18 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"eval", metadata !"eval", metadata !"", i32 206, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @eval, null, null, metadata !2, i32 207} ; [ DW_TAG_subprogram ] [line 206] [def] [scope 207] [eval]
!19 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"fire_delta_events", metadata !"fire_delta_events", metadata !"", i32 257, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @fire_delta_events, null, null, metadata !2, i32 258} ; [ DW_TAG_subprogram ] [line 257] [def] [scope 258] [fire_delta_events]
!20 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"reset_delta_events", metadata !"reset_delta_events", metadata !"", i32 285, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @reset_delta_events, null, null, metadata !2, i32 286} ; [ DW_TAG_subprogram ] [line 285] [def] [scope 286] [reset_delta_events]
!21 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"activate_threads", metadata !"activate_threads", metadata !"", i32 313, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @activate_threads, null, null, metadata !2, i32 314} ; [ DW_TAG_subprogram ] [line 313] [def] [scope 314] [activate_threads]
!22 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"immediate_notify", metadata !"immediate_notify", metadata !"", i32 338, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @immediate_notify, null, null, metadata !2, i32 339} ; [ DW_TAG_subprogram ] [line 338] [def] [scope 339] [immediate_notify]
!23 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"fire_time_events", metadata !"fire_time_events", metadata !"", i32 349, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @fire_time_events, null, null, metadata !2, i32 350} ; [ DW_TAG_subprogram ] [line 349] [def] [scope 350] [fire_time_events]
!24 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"reset_time_events", metadata !"reset_time_events", metadata !"", i32 358, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @reset_time_events, null, null, metadata !2, i32 359} ; [ DW_TAG_subprogram ] [line 358] [def] [scope 359] [reset_time_events]
!25 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"init_model", metadata !"init_model", metadata !"", i32 386, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @init_model, null, null, metadata !2, i32 387} ; [ DW_TAG_subprogram ] [line 386] [def] [scope 387] [init_model]
!26 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"stop_simulation", metadata !"stop_simulation", metadata !"", i32 396, metadata !11, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 ()* @stop_simulation, null, null, metadata !2, i32 397} ; [ DW_TAG_subprogram ] [line 396] [def] [scope 397] [stop_simulation]
!27 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"start_simulation", metadata !"start_simulation", metadata !"", i32 415, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, void ()* @start_simulation, null, null, metadata !2, i32 416} ; [ DW_TAG_subprogram ] [line 415] [def] [scope 416] [start_simulation]
!28 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 474, metadata !11, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i32 ()* @main, null, null, metadata !2, i32 475} ; [ DW_TAG_subprogram ] [line 474] [def] [scope 475] [main]
!29 = metadata !{metadata !30, metadata !31, metadata !32, metadata !33, metadata !34, metadata !35, metadata !36, metadata !37, metadata !38, metadata !39, metadata !40, metadata !41}
!30 = metadata !{i32 786484, i32 0, null, metadata !"m_pc", metadata !"m_pc", metadata !"", metadata !5, i32 14, metadata !13, i32 0, i32 1, i32* @"'m_pc", null} ; [ DW_TAG_variable ] [m_pc] [line 14] [def]
!31 = metadata !{i32 786484, i32 0, null, metadata !"t1_pc", metadata !"t1_pc", metadata !"", metadata !5, i32 15, metadata !13, i32 0, i32 1, i32* @"'t1_pc", null} ; [ DW_TAG_variable ] [t1_pc] [line 15] [def]
!32 = metadata !{i32 786484, i32 0, null, metadata !"M_E", metadata !"M_E", metadata !"", metadata !5, i32 20, metadata !13, i32 0, i32 1, i32* @"'M_E", null} ; [ DW_TAG_variable ] [M_E] [line 20] [def]
!33 = metadata !{i32 786484, i32 0, null, metadata !"T1_E", metadata !"T1_E", metadata !"", metadata !5, i32 21, metadata !13, i32 0, i32 1, i32* @"'T1_E", null} ; [ DW_TAG_variable ] [T1_E] [line 21] [def]
!34 = metadata !{i32 786484, i32 0, null, metadata !"E_M", metadata !"E_M", metadata !"", metadata !5, i32 22, metadata !13, i32 0, i32 1, i32* @"'E_M", null} ; [ DW_TAG_variable ] [E_M] [line 22] [def]
!35 = metadata !{i32 786484, i32 0, null, metadata !"E_1", metadata !"E_1", metadata !"", metadata !5, i32 23, metadata !13, i32 0, i32 1, i32* @"'E_1", null} ; [ DW_TAG_variable ] [E_1] [line 23] [def]
!36 = metadata !{i32 786484, i32 0, null, metadata !"m_st", metadata !"m_st", metadata !"", metadata !5, i32 16, metadata !13, i32 0, i32 1, i32* @"'m_st", null} ; [ DW_TAG_variable ] [m_st] [line 16] [def]
!37 = metadata !{i32 786484, i32 0, null, metadata !"t1_st", metadata !"t1_st", metadata !"", metadata !5, i32 17, metadata !13, i32 0, i32 1, i32* @"'t1_st", null} ; [ DW_TAG_variable ] [t1_st] [line 17] [def]
!38 = metadata !{i32 786484, i32 0, null, metadata !"m_i", metadata !"m_i", metadata !"", metadata !5, i32 18, metadata !13, i32 0, i32 1, i32* @"'m_i", null} ; [ DW_TAG_variable ] [m_i] [line 18] [def]
!39 = metadata !{i32 786484, i32 0, null, metadata !"t1_i", metadata !"t1_i", metadata !"", metadata !5, i32 19, metadata !13, i32 0, i32 1, i32* @"'t1_i", null} ; [ DW_TAG_variable ] [t1_i] [line 19] [def]
!40 = metadata !{i32 786484, i32 0, null, metadata !"token", metadata !"token", metadata !"", metadata !5, i32 27, metadata !13, i32 0, i32 1, i32* @"'token", null} ; [ DW_TAG_variable ] [token] [line 27] [def]
!41 = metadata !{i32 786484, i32 0, null, metadata !"local", metadata !"local", metadata !"", metadata !5, i32 29, metadata !13, i32 0, i32 1, i32* @"'local", null} ; [ DW_TAG_variable ] [local] [line 29] [def]
!42 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!43 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!44 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!45 = metadata !{i32 10, i32 10, metadata !46, null}
!46 = metadata !{i32 786443, metadata !1, metadata !4, i32 9, i32 3, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!47 = metadata !{i32 786688, metadata !8, metadata !"tmp_var", metadata !5, i32 32, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp_var] [line 32]
!48 = metadata !{i32 32, i32 5, metadata !8, null}
!49 = metadata !{i32 34, i32 7, metadata !50, null}
!50 = metadata !{i32 786443, metadata !1, metadata !51, i32 34, i32 7, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!51 = metadata !{i32 786443, metadata !1, metadata !8, i32 33, i32 3, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!52 = metadata !{i32 37, i32 9, metadata !53, null}
!53 = metadata !{i32 786443, metadata !1, metadata !54, i32 37, i32 9, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!54 = metadata !{i32 786443, metadata !1, metadata !50, i32 36, i32 10, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!55 = metadata !{i32 59, i32 9, metadata !56, null}
!56 = metadata !{i32 786443, metadata !1, metadata !57, i32 59, i32 9, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!57 = metadata !{i32 786443, metadata !1, metadata !58, i32 45, i32 13, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!58 = metadata !{i32 786443, metadata !1, metadata !51, i32 44, i32 3, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!59 = metadata !{i32 10, i32 10, metadata !46, metadata !60}
!60 = metadata !{i32 61, i32 7, metadata !61, null}
!61 = metadata !{i32 786443, metadata !1, metadata !62, i32 60, i32 7, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!62 = metadata !{i32 786443, metadata !1, metadata !56, i32 59, i32 29, i32 0, i32 12} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!63 = metadata !{i32 64, i32 11, metadata !64, null}
!64 = metadata !{i32 786443, metadata !1, metadata !65, i32 64, i32 11, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!65 = metadata !{i32 786443, metadata !1, metadata !56, i32 63, i32 12, i32 0, i32 14} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!66 = metadata !{i32 68, i32 9, metadata !67, null}
!67 = metadata !{i32 786443, metadata !1, metadata !64, i32 64, i32 24, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!68 = metadata !{i32 70, i32 12, metadata !69, null}
!69 = metadata !{i32 786443, metadata !1, metadata !65, i32 70, i32 12, i32 0, i32 19} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!70 = metadata !{i32 71, i32 15, metadata !71, null}
!71 = metadata !{i32 786443, metadata !1, metadata !72, i32 71, i32 15, i32 0, i32 21} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!72 = metadata !{i32 786443, metadata !1, metadata !69, i32 70, i32 25, i32 0, i32 20} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!73 = metadata !{i32 72, i32 17, metadata !74, null}
!74 = metadata !{i32 786443, metadata !1, metadata !75, i32 72, i32 17, i32 0, i32 23} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!75 = metadata !{i32 786443, metadata !1, metadata !71, i32 71, i32 28, i32 0, i32 22} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!76 = metadata !{i32 10, i32 10, metadata !46, metadata !77}
!77 = metadata !{i32 73, i32 14, metadata !78, null}
!78 = metadata !{i32 786443, metadata !1, metadata !74, i32 72, i32 30, i32 0, i32 24} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!79 = metadata !{i32 48, i32 13, metadata !80, null}
!80 = metadata !{i32 786443, metadata !1, metadata !57, i32 47, i32 5, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!81 = metadata !{i32 49, i32 5, metadata !80, null}
!82 = metadata !{i32 50, i32 5, metadata !80, null}
!83 = metadata !{i32 126, i32 7, metadata !84, metadata !86}
!84 = metadata !{i32 786443, metadata !1, metadata !85, i32 126, i32 7, i32 0, i32 36} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!85 = metadata !{i32 786443, metadata !1, metadata !10, i32 125, i32 3, i32 0, i32 35} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!86 = metadata !{i32 319, i32 9, metadata !87, metadata !89}
!87 = metadata !{i32 786443, metadata !1, metadata !88, i32 318, i32 3, i32 0, i32 112} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!88 = metadata !{i32 786443, metadata !1, metadata !21, i32 317, i32 3, i32 0, i32 111} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!89 = metadata !{i32 343, i32 3, metadata !90, metadata !92}
!90 = metadata !{i32 786443, metadata !1, metadata !91, i32 342, i32 3, i32 0, i32 121} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!91 = metadata !{i32 786443, metadata !1, metadata !22, i32 341, i32 3, i32 0, i32 120} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!92 = metadata !{i32 51, i32 5, metadata !80, null}
!93 = metadata !{i32 127, i32 9, metadata !94, metadata !86}
!94 = metadata !{i32 786443, metadata !1, metadata !95, i32 127, i32 9, i32 0, i32 38} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!95 = metadata !{i32 786443, metadata !1, metadata !84, i32 126, i32 18, i32 0, i32 37} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!96 = metadata !{i32 0}
!97 = metadata !{i32 786688, metadata !10, metadata !"__retres1", metadata !5, i32 123, metadata !13, i32 0, metadata !86} ; [ DW_TAG_auto_variable ] [__retres1] [line 123]
!98 = metadata !{i32 123, i32 7, metadata !10, metadata !86}
!99 = metadata !{i32 321, i32 7, metadata !100, metadata !89}
!100 = metadata !{i32 786443, metadata !1, metadata !88, i32 321, i32 7, i32 0, i32 113} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!101 = metadata !{i32 322, i32 5, metadata !102, metadata !89}
!102 = metadata !{i32 786443, metadata !1, metadata !100, i32 321, i32 12, i32 0, i32 114} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!103 = metadata !{i32 323, i32 3, metadata !102, metadata !89}
!104 = metadata !{i32 145, i32 7, metadata !105, metadata !107}
!105 = metadata !{i32 786443, metadata !1, metadata !106, i32 145, i32 7, i32 0, i32 43} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!106 = metadata !{i32 786443, metadata !1, metadata !14, i32 144, i32 3, i32 0, i32 42} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!107 = metadata !{i32 327, i32 13, metadata !108, metadata !89}
!108 = metadata !{i32 786443, metadata !1, metadata !88, i32 326, i32 3, i32 0, i32 116} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!109 = metadata !{i32 146, i32 9, metadata !110, metadata !107}
!110 = metadata !{i32 786443, metadata !1, metadata !111, i32 146, i32 9, i32 0, i32 45} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!111 = metadata !{i32 786443, metadata !1, metadata !105, i32 145, i32 19, i32 0, i32 44} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!112 = metadata !{i32 786688, metadata !14, metadata !"__retres1", metadata !5, i32 142, metadata !13, i32 0, metadata !107} ; [ DW_TAG_auto_variable ] [__retres1] [line 142]
!113 = metadata !{i32 142, i32 7, metadata !14, metadata !107}
!114 = metadata !{i32 329, i32 7, metadata !115, metadata !89}
!115 = metadata !{i32 786443, metadata !1, metadata !88, i32 329, i32 7, i32 0, i32 117} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!116 = metadata !{i32 330, i32 5, metadata !117, metadata !89}
!117 = metadata !{i32 786443, metadata !1, metadata !115, i32 329, i32 16, i32 0, i32 118} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!118 = metadata !{i32 331, i32 3, metadata !117, metadata !89}
!119 = metadata !{i32 52, i32 5, metadata !80, null}
!120 = metadata !{i32 53, i32 5, metadata !80, null}
!121 = metadata !{i32 54, i32 5, metadata !80, null}
!122 = metadata !{i32 85, i32 1, metadata !8, null}
!123 = metadata !{i32 126, i32 7, metadata !84, metadata !124}
!124 = metadata !{i32 319, i32 9, metadata !87, metadata !125}
!125 = metadata !{i32 343, i32 3, metadata !90, null}
!126 = metadata !{i32 127, i32 9, metadata !94, metadata !124}
!127 = metadata !{i32 786688, metadata !10, metadata !"__retres1", metadata !5, i32 123, metadata !13, i32 0, metadata !124} ; [ DW_TAG_auto_variable ] [__retres1] [line 123]
!128 = metadata !{i32 123, i32 7, metadata !10, metadata !124}
!129 = metadata !{i32 321, i32 7, metadata !100, metadata !125}
!130 = metadata !{i32 322, i32 5, metadata !102, metadata !125}
!131 = metadata !{i32 323, i32 3, metadata !102, metadata !125}
!132 = metadata !{i32 145, i32 7, metadata !105, metadata !133}
!133 = metadata !{i32 327, i32 13, metadata !108, metadata !125}
!134 = metadata !{i32 146, i32 9, metadata !110, metadata !133}
!135 = metadata !{i32 786688, metadata !14, metadata !"__retres1", metadata !5, i32 142, metadata !13, i32 0, metadata !133} ; [ DW_TAG_auto_variable ] [__retres1] [line 142]
!136 = metadata !{i32 142, i32 7, metadata !14, metadata !133}
!137 = metadata !{i32 329, i32 7, metadata !115, metadata !125}
!138 = metadata !{i32 330, i32 5, metadata !117, metadata !125}
!139 = metadata !{i32 331, i32 3, metadata !117, metadata !125}
!140 = metadata !{i32 348, i32 1, metadata !22, null}
!141 = metadata !{i32 90, i32 7, metadata !142, null}
!142 = metadata !{i32 786443, metadata !1, metadata !143, i32 90, i32 7, i32 0, i32 26} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!143 = metadata !{i32 786443, metadata !1, metadata !9, i32 89, i32 3, i32 0, i32 25} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!144 = metadata !{i32 93, i32 9, metadata !145, null}
!145 = metadata !{i32 786443, metadata !1, metadata !146, i32 93, i32 9, i32 0, i32 29} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!146 = metadata !{i32 786443, metadata !1, metadata !142, i32 92, i32 10, i32 0, i32 28} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!147 = metadata !{i32 109, i32 5, metadata !148, null}
!148 = metadata !{i32 786443, metadata !1, metadata !149, i32 108, i32 5, i32 0, i32 34} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!149 = metadata !{i32 786443, metadata !1, metadata !150, i32 101, i32 13, i32 0, i32 33} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!150 = metadata !{i32 786443, metadata !1, metadata !143, i32 100, i32 3, i32 0, i32 32} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!151 = metadata !{i32 110, i32 5, metadata !148, null}
!152 = metadata !{i32 126, i32 7, metadata !84, metadata !153}
!153 = metadata !{i32 319, i32 9, metadata !87, metadata !154}
!154 = metadata !{i32 343, i32 3, metadata !90, metadata !155}
!155 = metadata !{i32 111, i32 5, metadata !148, null}
!156 = metadata !{i32 127, i32 9, metadata !94, metadata !153}
!157 = metadata !{i32 786688, metadata !10, metadata !"__retres1", metadata !5, i32 123, metadata !13, i32 0, metadata !153} ; [ DW_TAG_auto_variable ] [__retres1] [line 123]
!158 = metadata !{i32 123, i32 7, metadata !10, metadata !153}
!159 = metadata !{i32 321, i32 7, metadata !100, metadata !154}
!160 = metadata !{i32 322, i32 5, metadata !102, metadata !154}
!161 = metadata !{i32 323, i32 3, metadata !102, metadata !154}
!162 = metadata !{i32 145, i32 7, metadata !105, metadata !163}
!163 = metadata !{i32 327, i32 13, metadata !108, metadata !154}
!164 = metadata !{i32 146, i32 9, metadata !110, metadata !163}
!165 = metadata !{i32 786688, metadata !14, metadata !"__retres1", metadata !5, i32 142, metadata !13, i32 0, metadata !163} ; [ DW_TAG_auto_variable ] [__retres1] [line 142]
!166 = metadata !{i32 142, i32 7, metadata !14, metadata !163}
!167 = metadata !{i32 329, i32 7, metadata !115, metadata !154}
!168 = metadata !{i32 330, i32 5, metadata !117, metadata !154}
!169 = metadata !{i32 331, i32 3, metadata !117, metadata !154}
!170 = metadata !{i32 112, i32 5, metadata !148, null}
!171 = metadata !{i32 114, i32 3, metadata !149, null}
!172 = metadata !{i32 103, i32 5, metadata !149, null}
!173 = metadata !{i32 104, i32 5, metadata !149, null}
!174 = metadata !{i32 121, i32 1, metadata !9, null}
!175 = metadata !{i32 126, i32 7, metadata !84, null}
!176 = metadata !{i32 127, i32 9, metadata !94, null}
!177 = metadata !{i32 786688, metadata !10, metadata !"__retres1", metadata !5, i32 123, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__retres1] [line 123]
!178 = metadata !{i32 123, i32 7, metadata !10, null}
!179 = metadata !{i32 138, i32 3, metadata !85, null}
!180 = metadata !{i32 145, i32 7, metadata !105, null}
!181 = metadata !{i32 146, i32 9, metadata !110, null}
!182 = metadata !{i32 786688, metadata !14, metadata !"__retres1", metadata !5, i32 142, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__retres1] [line 142]
!183 = metadata !{i32 142, i32 7, metadata !14, null}
!184 = metadata !{i32 157, i32 3, metadata !106, null}
!185 = metadata !{i32 167, i32 1, metadata !15, null}
!186 = metadata !{i32 172, i32 7, metadata !187, null}
!187 = metadata !{i32 786443, metadata !1, metadata !188, i32 172, i32 7, i32 0, i32 51} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!188 = metadata !{i32 786443, metadata !1, metadata !16, i32 171, i32 3, i32 0, i32 50} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!189 = metadata !{i32 173, i32 5, metadata !190, null}
!190 = metadata !{i32 786443, metadata !1, metadata !187, i32 172, i32 17, i32 0, i32 52} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!191 = metadata !{i32 174, i32 3, metadata !190, null}
!192 = metadata !{i32 175, i32 5, metadata !193, null}
!193 = metadata !{i32 786443, metadata !1, metadata !187, i32 174, i32 10, i32 0, i32 53} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!194 = metadata !{i32 177, i32 7, metadata !195, null}
!195 = metadata !{i32 786443, metadata !1, metadata !188, i32 177, i32 7, i32 0, i32 54} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!196 = metadata !{i32 178, i32 5, metadata !197, null}
!197 = metadata !{i32 786443, metadata !1, metadata !195, i32 177, i32 18, i32 0, i32 55} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!198 = metadata !{i32 179, i32 3, metadata !197, null}
!199 = metadata !{i32 180, i32 5, metadata !200, null}
!200 = metadata !{i32 786443, metadata !1, metadata !195, i32 179, i32 10, i32 0, i32 56} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!201 = metadata !{i32 185, i32 1, metadata !16, null}
!202 = metadata !{i32 190, i32 7, metadata !203, null}
!203 = metadata !{i32 786443, metadata !1, metadata !204, i32 190, i32 7, i32 0, i32 58} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!204 = metadata !{i32 786443, metadata !1, metadata !17, i32 189, i32 3, i32 0, i32 57} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!205 = metadata !{i32 194, i32 9, metadata !206, null}
!206 = metadata !{i32 786443, metadata !1, metadata !207, i32 194, i32 9, i32 0, i32 61} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!207 = metadata !{i32 786443, metadata !1, metadata !203, i32 193, i32 10, i32 0, i32 60} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!208 = metadata !{i32 786688, metadata !17, metadata !"__retres1", metadata !5, i32 187, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__retres1] [line 187]
!209 = metadata !{i32 187, i32 7, metadata !17, null}
!210 = metadata !{i32 203, i32 3, metadata !204, null}
!211 = metadata !{i32 786688, metadata !17, metadata !"__retres1", metadata !5, i32 187, metadata !13, i32 0, metadata !212} ; [ DW_TAG_auto_variable ] [__retres1] [line 187]
!212 = metadata !{i32 215, i32 11, metadata !213, null}
!213 = metadata !{i32 786443, metadata !1, metadata !214, i32 214, i32 5, i32 0, i32 67} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!214 = metadata !{i32 786443, metadata !1, metadata !215, i32 212, i32 13, i32 0, i32 66} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!215 = metadata !{i32 786443, metadata !1, metadata !216, i32 211, i32 3, i32 0, i32 65} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!216 = metadata !{i32 786443, metadata !1, metadata !18, i32 210, i32 3, i32 0, i32 64} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!217 = metadata !{i32 187, i32 7, metadata !17, metadata !212}
!218 = metadata !{i32 786688, metadata !18, metadata !"tmp", metadata !5, i32 208, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp] [line 208]
!219 = metadata !{i32 208, i32 7, metadata !18, null}
!220 = metadata !{i32 786688, metadata !221, metadata !"tmp_ndt_1", metadata !5, i32 223, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp_ndt_1] [line 223]
!221 = metadata !{i32 786443, metadata !1, metadata !222, i32 222, i32 20, i32 0, i32 72} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!222 = metadata !{i32 786443, metadata !1, metadata !214, i32 222, i32 9, i32 0, i32 71} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!223 = metadata !{i32 223, i32 11, metadata !221, null}
!224 = metadata !{i32 786688, metadata !8, metadata !"tmp_var", metadata !5, i32 32, metadata !13, i32 0, metadata !225} ; [ DW_TAG_auto_variable ] [tmp_var] [line 32]
!225 = metadata !{i32 228, i32 9, metadata !226, null}
!226 = metadata !{i32 786443, metadata !1, metadata !227, i32 226, i32 9, i32 0, i32 75} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!227 = metadata !{i32 786443, metadata !1, metadata !228, i32 225, i32 22, i32 0, i32 74} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!228 = metadata !{i32 786443, metadata !1, metadata !221, i32 225, i32 11, i32 0, i32 73} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!229 = metadata !{i32 32, i32 5, metadata !8, metadata !225}
!230 = metadata !{i32 786688, metadata !10, metadata !"__retres1", metadata !5, i32 123, metadata !13, i32 0, metadata !231} ; [ DW_TAG_auto_variable ] [__retres1] [line 123]
!231 = metadata !{i32 319, i32 9, metadata !87, metadata !232}
!232 = metadata !{i32 343, i32 3, metadata !90, metadata !233}
!233 = metadata !{i32 51, i32 5, metadata !80, metadata !225}
!234 = metadata !{i32 123, i32 7, metadata !10, metadata !231}
!235 = metadata !{i32 786688, metadata !14, metadata !"__retres1", metadata !5, i32 142, metadata !13, i32 0, metadata !236} ; [ DW_TAG_auto_variable ] [__retres1] [line 142]
!236 = metadata !{i32 327, i32 13, metadata !108, metadata !232}
!237 = metadata !{i32 142, i32 7, metadata !14, metadata !236}
!238 = metadata !{i32 786688, metadata !239, metadata !"tmp_ndt_2", metadata !5, i32 237, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp_ndt_2] [line 237]
!239 = metadata !{i32 786443, metadata !1, metadata !240, i32 236, i32 21, i32 0, i32 79} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!240 = metadata !{i32 786443, metadata !1, metadata !214, i32 236, i32 9, i32 0, i32 78} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!241 = metadata !{i32 237, i32 11, metadata !239, null}
!242 = metadata !{i32 786688, metadata !10, metadata !"__retres1", metadata !5, i32 123, metadata !13, i32 0, metadata !243} ; [ DW_TAG_auto_variable ] [__retres1] [line 123]
!243 = metadata !{i32 319, i32 9, metadata !87, metadata !244}
!244 = metadata !{i32 343, i32 3, metadata !90, metadata !245}
!245 = metadata !{i32 111, i32 5, metadata !148, metadata !246}
!246 = metadata !{i32 242, i32 9, metadata !247, null}
!247 = metadata !{i32 786443, metadata !1, metadata !248, i32 240, i32 9, i32 0, i32 82} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!248 = metadata !{i32 786443, metadata !1, metadata !249, i32 239, i32 22, i32 0, i32 81} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!249 = metadata !{i32 786443, metadata !1, metadata !239, i32 239, i32 11, i32 0, i32 80} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!250 = metadata !{i32 123, i32 7, metadata !10, metadata !243}
!251 = metadata !{i32 786688, metadata !14, metadata !"__retres1", metadata !5, i32 142, metadata !13, i32 0, metadata !252} ; [ DW_TAG_auto_variable ] [__retres1] [line 142]
!252 = metadata !{i32 327, i32 13, metadata !108, metadata !244}
!253 = metadata !{i32 142, i32 7, metadata !14, metadata !252}
!254 = metadata !{i32 212, i32 3, metadata !215, null}
!255 = metadata !{i32 190, i32 7, metadata !203, metadata !212}
!256 = metadata !{i32 194, i32 9, metadata !206, metadata !212}
!257 = metadata !{i32 217, i32 9, metadata !258, null}
!258 = metadata !{i32 786443, metadata !1, metadata !214, i32 217, i32 9, i32 0, i32 68} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!259 = metadata !{i32 222, i32 9, metadata !222, null}
!260 = metadata !{i32 224, i32 19, metadata !221, null}
!261 = metadata !{i32 225, i32 11, metadata !228, null}
!262 = metadata !{i32 227, i32 9, metadata !226, null}
!263 = metadata !{i32 34, i32 7, metadata !50, metadata !225}
!264 = metadata !{i32 37, i32 9, metadata !53, metadata !225}
!265 = metadata !{i32 59, i32 9, metadata !56, metadata !225}
!266 = metadata !{i32 10, i32 10, metadata !46, metadata !267}
!267 = metadata !{i32 61, i32 7, metadata !61, metadata !225}
!268 = metadata !{i32 70, i32 12, metadata !69, metadata !225}
!269 = metadata !{i32 71, i32 15, metadata !71, metadata !225}
!270 = metadata !{i32 72, i32 17, metadata !74, metadata !225}
!271 = metadata !{i32 10, i32 10, metadata !46, metadata !272}
!272 = metadata !{i32 73, i32 14, metadata !78, metadata !225}
!273 = metadata !{i32 48, i32 13, metadata !80, metadata !225}
!274 = metadata !{i32 49, i32 5, metadata !80, metadata !225}
!275 = metadata !{i32 50, i32 5, metadata !80, metadata !225}
!276 = metadata !{i32 126, i32 7, metadata !84, metadata !231}
!277 = metadata !{i32 127, i32 9, metadata !94, metadata !231}
!278 = metadata !{i32 321, i32 7, metadata !100, metadata !232}
!279 = metadata !{i32 322, i32 5, metadata !102, metadata !232}
!280 = metadata !{i32 323, i32 3, metadata !102, metadata !232}
!281 = metadata !{i32 145, i32 7, metadata !105, metadata !236}
!282 = metadata !{i32 146, i32 9, metadata !110, metadata !236}
!283 = metadata !{i32 329, i32 7, metadata !115, metadata !232}
!284 = metadata !{i32 330, i32 5, metadata !117, metadata !232}
!285 = metadata !{i32 331, i32 3, metadata !117, metadata !232}
!286 = metadata !{i32 52, i32 5, metadata !80, metadata !225}
!287 = metadata !{i32 53, i32 5, metadata !80, metadata !225}
!288 = metadata !{i32 54, i32 5, metadata !80, metadata !225}
!289 = metadata !{i32 230, i32 7, metadata !227, null}
!290 = metadata !{i32 236, i32 9, metadata !240, null}
!291 = metadata !{i32 238, i32 19, metadata !239, null}
!292 = metadata !{i32 239, i32 11, metadata !249, null}
!293 = metadata !{i32 241, i32 9, metadata !247, null}
!294 = metadata !{i32 90, i32 7, metadata !142, metadata !246}
!295 = metadata !{i32 93, i32 9, metadata !145, metadata !246}
!296 = metadata !{i32 109, i32 5, metadata !148, metadata !246}
!297 = metadata !{i32 110, i32 5, metadata !148, metadata !246}
!298 = metadata !{i32 126, i32 7, metadata !84, metadata !243}
!299 = metadata !{i32 127, i32 9, metadata !94, metadata !243}
!300 = metadata !{i32 321, i32 7, metadata !100, metadata !244}
!301 = metadata !{i32 322, i32 5, metadata !102, metadata !244}
!302 = metadata !{i32 323, i32 3, metadata !102, metadata !244}
!303 = metadata !{i32 145, i32 7, metadata !105, metadata !252}
!304 = metadata !{i32 146, i32 9, metadata !110, metadata !252}
!305 = metadata !{i32 329, i32 7, metadata !115, metadata !244}
!306 = metadata !{i32 330, i32 5, metadata !117, metadata !244}
!307 = metadata !{i32 331, i32 3, metadata !117, metadata !244}
!308 = metadata !{i32 112, i32 5, metadata !148, metadata !246}
!309 = metadata !{i32 114, i32 3, metadata !149, metadata !246}
!310 = metadata !{i32 103, i32 5, metadata !149, metadata !246}
!311 = metadata !{i32 104, i32 5, metadata !149, metadata !246}
!312 = metadata !{i32 244, i32 7, metadata !248, null}
!313 = metadata !{i32 256, i32 1, metadata !18, null}
!314 = metadata !{i32 261, i32 7, metadata !315, null}
!315 = metadata !{i32 786443, metadata !1, metadata !316, i32 261, i32 7, i32 0, i32 86} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!316 = metadata !{i32 786443, metadata !1, metadata !19, i32 260, i32 3, i32 0, i32 85} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!317 = metadata !{i32 262, i32 5, metadata !318, null}
!318 = metadata !{i32 786443, metadata !1, metadata !315, i32 261, i32 17, i32 0, i32 87} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!319 = metadata !{i32 263, i32 3, metadata !318, null}
!320 = metadata !{i32 266, i32 7, metadata !321, null}
!321 = metadata !{i32 786443, metadata !1, metadata !316, i32 266, i32 7, i32 0, i32 89} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!322 = metadata !{i32 267, i32 5, metadata !323, null}
!323 = metadata !{i32 786443, metadata !1, metadata !321, i32 266, i32 18, i32 0, i32 90} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!324 = metadata !{i32 268, i32 3, metadata !323, null}
!325 = metadata !{i32 271, i32 7, metadata !326, null}
!326 = metadata !{i32 786443, metadata !1, metadata !316, i32 271, i32 7, i32 0, i32 92} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!327 = metadata !{i32 272, i32 5, metadata !328, null}
!328 = metadata !{i32 786443, metadata !1, metadata !326, i32 271, i32 17, i32 0, i32 93} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!329 = metadata !{i32 273, i32 3, metadata !328, null}
!330 = metadata !{i32 276, i32 7, metadata !331, null}
!331 = metadata !{i32 786443, metadata !1, metadata !316, i32 276, i32 7, i32 0, i32 95} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!332 = metadata !{i32 277, i32 5, metadata !333, null}
!333 = metadata !{i32 786443, metadata !1, metadata !331, i32 276, i32 17, i32 0, i32 96} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!334 = metadata !{i32 278, i32 3, metadata !333, null}
!335 = metadata !{i32 284, i32 1, metadata !19, null}
!336 = metadata !{i32 289, i32 7, metadata !337, null}
!337 = metadata !{i32 786443, metadata !1, metadata !338, i32 289, i32 7, i32 0, i32 99} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!338 = metadata !{i32 786443, metadata !1, metadata !20, i32 288, i32 3, i32 0, i32 98} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!339 = metadata !{i32 290, i32 5, metadata !340, null}
!340 = metadata !{i32 786443, metadata !1, metadata !337, i32 289, i32 17, i32 0, i32 100} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!341 = metadata !{i32 291, i32 3, metadata !340, null}
!342 = metadata !{i32 294, i32 7, metadata !343, null}
!343 = metadata !{i32 786443, metadata !1, metadata !338, i32 294, i32 7, i32 0, i32 102} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!344 = metadata !{i32 295, i32 5, metadata !345, null}
!345 = metadata !{i32 786443, metadata !1, metadata !343, i32 294, i32 18, i32 0, i32 103} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!346 = metadata !{i32 296, i32 3, metadata !345, null}
!347 = metadata !{i32 299, i32 7, metadata !348, null}
!348 = metadata !{i32 786443, metadata !1, metadata !338, i32 299, i32 7, i32 0, i32 105} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!349 = metadata !{i32 300, i32 5, metadata !350, null}
!350 = metadata !{i32 786443, metadata !1, metadata !348, i32 299, i32 17, i32 0, i32 106} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!351 = metadata !{i32 301, i32 3, metadata !350, null}
!352 = metadata !{i32 304, i32 7, metadata !353, null}
!353 = metadata !{i32 786443, metadata !1, metadata !338, i32 304, i32 7, i32 0, i32 108} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!354 = metadata !{i32 305, i32 5, metadata !355, null}
!355 = metadata !{i32 786443, metadata !1, metadata !353, i32 304, i32 17, i32 0, i32 109} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!356 = metadata !{i32 306, i32 3, metadata !355, null}
!357 = metadata !{i32 312, i32 1, metadata !20, null}
!358 = metadata !{i32 126, i32 7, metadata !84, metadata !359}
!359 = metadata !{i32 319, i32 9, metadata !87, null}
!360 = metadata !{i32 127, i32 9, metadata !94, metadata !359}
!361 = metadata !{i32 786688, metadata !10, metadata !"__retres1", metadata !5, i32 123, metadata !13, i32 0, metadata !359} ; [ DW_TAG_auto_variable ] [__retres1] [line 123]
!362 = metadata !{i32 123, i32 7, metadata !10, metadata !359}
!363 = metadata !{i32 786688, metadata !21, metadata !"tmp", metadata !5, i32 314, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp] [line 314]
!364 = metadata !{i32 314, i32 7, metadata !21, null}
!365 = metadata !{i32 321, i32 7, metadata !100, null}
!366 = metadata !{i32 322, i32 5, metadata !102, null}
!367 = metadata !{i32 323, i32 3, metadata !102, null}
!368 = metadata !{i32 145, i32 7, metadata !105, metadata !369}
!369 = metadata !{i32 327, i32 13, metadata !108, null}
!370 = metadata !{i32 146, i32 9, metadata !110, metadata !369}
!371 = metadata !{i32 786688, metadata !14, metadata !"__retres1", metadata !5, i32 142, metadata !13, i32 0, metadata !369} ; [ DW_TAG_auto_variable ] [__retres1] [line 142]
!372 = metadata !{i32 142, i32 7, metadata !14, metadata !369}
!373 = metadata !{i32 786688, metadata !21, metadata !"tmp___0", metadata !5, i32 315, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp___0] [line 315]
!374 = metadata !{i32 315, i32 7, metadata !21, null}
!375 = metadata !{i32 329, i32 7, metadata !115, null}
!376 = metadata !{i32 330, i32 5, metadata !117, null}
!377 = metadata !{i32 331, i32 3, metadata !117, null}
!378 = metadata !{i32 337, i32 1, metadata !21, null}
!379 = metadata !{i32 353, i32 3, metadata !380, null}
!380 = metadata !{i32 786443, metadata !1, metadata !23, i32 352, i32 3, i32 0, i32 122} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!381 = metadata !{i32 357, i32 1, metadata !23, null}
!382 = metadata !{i32 362, i32 7, metadata !383, null}
!383 = metadata !{i32 786443, metadata !1, metadata !384, i32 362, i32 7, i32 0, i32 124} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!384 = metadata !{i32 786443, metadata !1, metadata !24, i32 361, i32 3, i32 0, i32 123} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!385 = metadata !{i32 363, i32 5, metadata !386, null}
!386 = metadata !{i32 786443, metadata !1, metadata !383, i32 362, i32 17, i32 0, i32 125} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!387 = metadata !{i32 364, i32 3, metadata !386, null}
!388 = metadata !{i32 367, i32 7, metadata !389, null}
!389 = metadata !{i32 786443, metadata !1, metadata !384, i32 367, i32 7, i32 0, i32 127} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!390 = metadata !{i32 368, i32 5, metadata !391, null}
!391 = metadata !{i32 786443, metadata !1, metadata !389, i32 367, i32 18, i32 0, i32 128} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!392 = metadata !{i32 369, i32 3, metadata !391, null}
!393 = metadata !{i32 372, i32 7, metadata !394, null}
!394 = metadata !{i32 786443, metadata !1, metadata !384, i32 372, i32 7, i32 0, i32 130} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!395 = metadata !{i32 373, i32 5, metadata !396, null}
!396 = metadata !{i32 786443, metadata !1, metadata !394, i32 372, i32 17, i32 0, i32 131} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!397 = metadata !{i32 374, i32 3, metadata !396, null}
!398 = metadata !{i32 377, i32 7, metadata !399, null}
!399 = metadata !{i32 786443, metadata !1, metadata !384, i32 377, i32 7, i32 0, i32 133} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!400 = metadata !{i32 378, i32 5, metadata !401, null}
!401 = metadata !{i32 786443, metadata !1, metadata !399, i32 377, i32 17, i32 0, i32 134} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!402 = metadata !{i32 379, i32 3, metadata !401, null}
!403 = metadata !{i32 385, i32 1, metadata !24, null}
!404 = metadata !{i32 390, i32 3, metadata !405, null}
!405 = metadata !{i32 786443, metadata !1, metadata !25, i32 389, i32 3, i32 0, i32 136} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!406 = metadata !{i32 391, i32 3, metadata !405, null}
!407 = metadata !{i32 395, i32 1, metadata !25, null}
!408 = metadata !{i32 190, i32 7, metadata !203, metadata !409}
!409 = metadata !{i32 402, i32 9, metadata !410, null}
!410 = metadata !{i32 786443, metadata !1, metadata !411, i32 401, i32 3, i32 0, i32 138} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!411 = metadata !{i32 786443, metadata !1, metadata !26, i32 400, i32 3, i32 0, i32 137} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!412 = metadata !{i32 194, i32 9, metadata !206, metadata !409}
!413 = metadata !{i32 786688, metadata !17, metadata !"__retres1", metadata !5, i32 187, metadata !13, i32 0, metadata !409} ; [ DW_TAG_auto_variable ] [__retres1] [line 187]
!414 = metadata !{i32 187, i32 7, metadata !17, metadata !409}
!415 = metadata !{i32 786688, metadata !26, metadata !"tmp", metadata !5, i32 397, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp] [line 397]
!416 = metadata !{i32 397, i32 7, metadata !26, null}
!417 = metadata !{i32 404, i32 7, metadata !418, null}
!418 = metadata !{i32 786443, metadata !1, metadata !411, i32 404, i32 7, i32 0, i32 139} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!419 = metadata !{i32 1}
!420 = metadata !{i32 786688, metadata !26, metadata !"__retres2", metadata !5, i32 398, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__retres2] [line 398]
!421 = metadata !{i32 398, i32 7, metadata !26, null}
!422 = metadata !{i32 412, i32 3, metadata !411, null}
!423 = metadata !{i32 786688, metadata !27, metadata !"kernel_st", metadata !5, i32 416, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [kernel_st] [line 416]
!424 = metadata !{i32 416, i32 7, metadata !27, null}
!425 = metadata !{i32 172, i32 7, metadata !187, metadata !426}
!426 = metadata !{i32 424, i32 3, metadata !427, null}
!427 = metadata !{i32 786443, metadata !1, metadata !428, i32 421, i32 3, i32 0, i32 143} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!428 = metadata !{i32 786443, metadata !1, metadata !27, i32 420, i32 3, i32 0, i32 142} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!429 = metadata !{i32 173, i32 5, metadata !190, metadata !426}
!430 = metadata !{i32 174, i32 3, metadata !190, metadata !426}
!431 = metadata !{i32 175, i32 5, metadata !193, metadata !426}
!432 = metadata !{i32 177, i32 7, metadata !195, metadata !426}
!433 = metadata !{i32 178, i32 5, metadata !197, metadata !426}
!434 = metadata !{i32 179, i32 3, metadata !197, metadata !426}
!435 = metadata !{i32 180, i32 5, metadata !200, metadata !426}
!436 = metadata !{i32 261, i32 7, metadata !315, metadata !437}
!437 = metadata !{i32 425, i32 3, metadata !427, null}
!438 = metadata !{i32 262, i32 5, metadata !318, metadata !437}
!439 = metadata !{i32 263, i32 3, metadata !318, metadata !437}
!440 = metadata !{i32 266, i32 7, metadata !321, metadata !437}
!441 = metadata !{i32 267, i32 5, metadata !323, metadata !437}
!442 = metadata !{i32 268, i32 3, metadata !323, metadata !437}
!443 = metadata !{i32 271, i32 7, metadata !326, metadata !437}
!444 = metadata !{i32 272, i32 5, metadata !328, metadata !437}
!445 = metadata !{i32 273, i32 3, metadata !328, metadata !437}
!446 = metadata !{i32 276, i32 7, metadata !331, metadata !437}
!447 = metadata !{i32 277, i32 5, metadata !333, metadata !437}
!448 = metadata !{i32 278, i32 3, metadata !333, metadata !437}
!449 = metadata !{i32 126, i32 7, metadata !84, metadata !450}
!450 = metadata !{i32 319, i32 9, metadata !87, metadata !451}
!451 = metadata !{i32 426, i32 3, metadata !427, null}
!452 = metadata !{i32 127, i32 9, metadata !94, metadata !450}
!453 = metadata !{i32 786688, metadata !10, metadata !"__retres1", metadata !5, i32 123, metadata !13, i32 0, metadata !450} ; [ DW_TAG_auto_variable ] [__retres1] [line 123]
!454 = metadata !{i32 123, i32 7, metadata !10, metadata !450}
!455 = metadata !{i32 321, i32 7, metadata !100, metadata !451}
!456 = metadata !{i32 322, i32 5, metadata !102, metadata !451}
!457 = metadata !{i32 323, i32 3, metadata !102, metadata !451}
!458 = metadata !{i32 145, i32 7, metadata !105, metadata !459}
!459 = metadata !{i32 327, i32 13, metadata !108, metadata !451}
!460 = metadata !{i32 146, i32 9, metadata !110, metadata !459}
!461 = metadata !{i32 786688, metadata !14, metadata !"__retres1", metadata !5, i32 142, metadata !13, i32 0, metadata !459} ; [ DW_TAG_auto_variable ] [__retres1] [line 142]
!462 = metadata !{i32 142, i32 7, metadata !14, metadata !459}
!463 = metadata !{i32 329, i32 7, metadata !115, metadata !451}
!464 = metadata !{i32 330, i32 5, metadata !117, metadata !451}
!465 = metadata !{i32 331, i32 3, metadata !117, metadata !451}
!466 = metadata !{i32 289, i32 7, metadata !337, metadata !467}
!467 = metadata !{i32 427, i32 3, metadata !427, null}
!468 = metadata !{i32 290, i32 5, metadata !340, metadata !467}
!469 = metadata !{i32 291, i32 3, metadata !340, metadata !467}
!470 = metadata !{i32 294, i32 7, metadata !343, metadata !467}
!471 = metadata !{i32 295, i32 5, metadata !345, metadata !467}
!472 = metadata !{i32 296, i32 3, metadata !345, metadata !467}
!473 = metadata !{i32 299, i32 7, metadata !348, metadata !467}
!474 = metadata !{i32 300, i32 5, metadata !350, metadata !467}
!475 = metadata !{i32 301, i32 3, metadata !350, metadata !467}
!476 = metadata !{i32 304, i32 7, metadata !353, metadata !467}
!477 = metadata !{i32 305, i32 5, metadata !355, metadata !467}
!478 = metadata !{i32 306, i32 3, metadata !355, metadata !467}
!479 = metadata !{i32 190, i32 7, metadata !203, metadata !480}
!480 = metadata !{i32 215, i32 11, metadata !213, metadata !481}
!481 = metadata !{i32 434, i32 5, metadata !482, null}
!482 = metadata !{i32 786443, metadata !1, metadata !483, i32 432, i32 5, i32 0, i32 146} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!483 = metadata !{i32 786443, metadata !1, metadata !484, i32 430, i32 13, i32 0, i32 145} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!484 = metadata !{i32 786443, metadata !1, metadata !428, i32 429, i32 3, i32 0, i32 144} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!485 = metadata !{i32 194, i32 9, metadata !206, metadata !480}
!486 = metadata !{i32 217, i32 9, metadata !258, metadata !481}
!487 = metadata !{i32 222, i32 9, metadata !222, metadata !481}
!488 = metadata !{i32 224, i32 19, metadata !221, metadata !481}
!489 = metadata !{i32 225, i32 11, metadata !228, metadata !481}
!490 = metadata !{i32 227, i32 9, metadata !226, metadata !481}
!491 = metadata !{i32 228, i32 9, metadata !226, metadata !481}
!492 = metadata !{i32 34, i32 7, metadata !50, metadata !491}
!493 = metadata !{i32 37, i32 9, metadata !53, metadata !491}
!494 = metadata !{i32 59, i32 9, metadata !56, metadata !491}
!495 = metadata !{i32 10, i32 10, metadata !46, metadata !496}
!496 = metadata !{i32 61, i32 7, metadata !61, metadata !491}
!497 = metadata !{i32 70, i32 12, metadata !69, metadata !491}
!498 = metadata !{i32 71, i32 15, metadata !71, metadata !491}
!499 = metadata !{i32 72, i32 17, metadata !74, metadata !491}
!500 = metadata !{i32 10, i32 10, metadata !46, metadata !501}
!501 = metadata !{i32 73, i32 14, metadata !78, metadata !491}
!502 = metadata !{i32 48, i32 13, metadata !80, metadata !491}
!503 = metadata !{i32 49, i32 5, metadata !80, metadata !491}
!504 = metadata !{i32 50, i32 5, metadata !80, metadata !491}
!505 = metadata !{i32 126, i32 7, metadata !84, metadata !506}
!506 = metadata !{i32 319, i32 9, metadata !87, metadata !507}
!507 = metadata !{i32 343, i32 3, metadata !90, metadata !508}
!508 = metadata !{i32 51, i32 5, metadata !80, metadata !491}
!509 = metadata !{i32 127, i32 9, metadata !94, metadata !506}
!510 = metadata !{i32 321, i32 7, metadata !100, metadata !507}
!511 = metadata !{i32 322, i32 5, metadata !102, metadata !507}
!512 = metadata !{i32 323, i32 3, metadata !102, metadata !507}
!513 = metadata !{i32 145, i32 7, metadata !105, metadata !514}
!514 = metadata !{i32 327, i32 13, metadata !108, metadata !507}
!515 = metadata !{i32 146, i32 9, metadata !110, metadata !514}
!516 = metadata !{i32 329, i32 7, metadata !115, metadata !507}
!517 = metadata !{i32 330, i32 5, metadata !117, metadata !507}
!518 = metadata !{i32 331, i32 3, metadata !117, metadata !507}
!519 = metadata !{i32 52, i32 5, metadata !80, metadata !491}
!520 = metadata !{i32 53, i32 5, metadata !80, metadata !491}
!521 = metadata !{i32 54, i32 5, metadata !80, metadata !491}
!522 = metadata !{i32 230, i32 7, metadata !227, metadata !481}
!523 = metadata !{i32 236, i32 9, metadata !240, metadata !481}
!524 = metadata !{i32 238, i32 19, metadata !239, metadata !481}
!525 = metadata !{i32 239, i32 11, metadata !249, metadata !481}
!526 = metadata !{i32 241, i32 9, metadata !247, metadata !481}
!527 = metadata !{i32 90, i32 7, metadata !142, metadata !528}
!528 = metadata !{i32 242, i32 9, metadata !247, metadata !481}
!529 = metadata !{i32 93, i32 9, metadata !145, metadata !528}
!530 = metadata !{i32 109, i32 5, metadata !148, metadata !528}
!531 = metadata !{i32 110, i32 5, metadata !148, metadata !528}
!532 = metadata !{i32 126, i32 7, metadata !84, metadata !533}
!533 = metadata !{i32 319, i32 9, metadata !87, metadata !534}
!534 = metadata !{i32 343, i32 3, metadata !90, metadata !535}
!535 = metadata !{i32 111, i32 5, metadata !148, metadata !528}
!536 = metadata !{i32 127, i32 9, metadata !94, metadata !533}
!537 = metadata !{i32 321, i32 7, metadata !100, metadata !534}
!538 = metadata !{i32 322, i32 5, metadata !102, metadata !534}
!539 = metadata !{i32 323, i32 3, metadata !102, metadata !534}
!540 = metadata !{i32 145, i32 7, metadata !105, metadata !541}
!541 = metadata !{i32 327, i32 13, metadata !108, metadata !534}
!542 = metadata !{i32 146, i32 9, metadata !110, metadata !541}
!543 = metadata !{i32 329, i32 7, metadata !115, metadata !534}
!544 = metadata !{i32 330, i32 5, metadata !117, metadata !534}
!545 = metadata !{i32 331, i32 3, metadata !117, metadata !534}
!546 = metadata !{i32 112, i32 5, metadata !148, metadata !528}
!547 = metadata !{i32 114, i32 3, metadata !149, metadata !528}
!548 = metadata !{i32 103, i32 5, metadata !149, metadata !528}
!549 = metadata !{i32 104, i32 5, metadata !149, metadata !528}
!550 = metadata !{i32 244, i32 7, metadata !248, metadata !481}
!551 = metadata !{i32 2}
!552 = metadata !{i32 3}
!553 = metadata !{i32 261, i32 7, metadata !315, metadata !554}
!554 = metadata !{i32 442, i32 5, metadata !555, null}
!555 = metadata !{i32 786443, metadata !1, metadata !483, i32 440, i32 5, i32 0, i32 148} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!556 = metadata !{i32 262, i32 5, metadata !318, metadata !554}
!557 = metadata !{i32 263, i32 3, metadata !318, metadata !554}
!558 = metadata !{i32 266, i32 7, metadata !321, metadata !554}
!559 = metadata !{i32 267, i32 5, metadata !323, metadata !554}
!560 = metadata !{i32 268, i32 3, metadata !323, metadata !554}
!561 = metadata !{i32 271, i32 7, metadata !326, metadata !554}
!562 = metadata !{i32 272, i32 5, metadata !328, metadata !554}
!563 = metadata !{i32 273, i32 3, metadata !328, metadata !554}
!564 = metadata !{i32 276, i32 7, metadata !331, metadata !554}
!565 = metadata !{i32 277, i32 5, metadata !333, metadata !554}
!566 = metadata !{i32 278, i32 3, metadata !333, metadata !554}
!567 = metadata !{i32 126, i32 7, metadata !84, metadata !568}
!568 = metadata !{i32 319, i32 9, metadata !87, metadata !569}
!569 = metadata !{i32 443, i32 5, metadata !555, null}
!570 = metadata !{i32 127, i32 9, metadata !94, metadata !568}
!571 = metadata !{i32 786688, metadata !10, metadata !"__retres1", metadata !5, i32 123, metadata !13, i32 0, metadata !568} ; [ DW_TAG_auto_variable ] [__retres1] [line 123]
!572 = metadata !{i32 123, i32 7, metadata !10, metadata !568}
!573 = metadata !{i32 321, i32 7, metadata !100, metadata !569}
!574 = metadata !{i32 322, i32 5, metadata !102, metadata !569}
!575 = metadata !{i32 323, i32 3, metadata !102, metadata !569}
!576 = metadata !{i32 145, i32 7, metadata !105, metadata !577}
!577 = metadata !{i32 327, i32 13, metadata !108, metadata !569}
!578 = metadata !{i32 146, i32 9, metadata !110, metadata !577}
!579 = metadata !{i32 786688, metadata !14, metadata !"__retres1", metadata !5, i32 142, metadata !13, i32 0, metadata !577} ; [ DW_TAG_auto_variable ] [__retres1] [line 142]
!580 = metadata !{i32 142, i32 7, metadata !14, metadata !577}
!581 = metadata !{i32 329, i32 7, metadata !115, metadata !569}
!582 = metadata !{i32 330, i32 5, metadata !117, metadata !569}
!583 = metadata !{i32 331, i32 3, metadata !117, metadata !569}
!584 = metadata !{i32 289, i32 7, metadata !337, metadata !585}
!585 = metadata !{i32 444, i32 5, metadata !555, null}
!586 = metadata !{i32 290, i32 5, metadata !340, metadata !585}
!587 = metadata !{i32 291, i32 3, metadata !340, metadata !585}
!588 = metadata !{i32 294, i32 7, metadata !343, metadata !585}
!589 = metadata !{i32 295, i32 5, metadata !345, metadata !585}
!590 = metadata !{i32 296, i32 3, metadata !345, metadata !585}
!591 = metadata !{i32 299, i32 7, metadata !348, metadata !585}
!592 = metadata !{i32 300, i32 5, metadata !350, metadata !585}
!593 = metadata !{i32 301, i32 3, metadata !350, metadata !585}
!594 = metadata !{i32 304, i32 7, metadata !353, metadata !585}
!595 = metadata !{i32 305, i32 5, metadata !355, metadata !585}
!596 = metadata !{i32 306, i32 3, metadata !355, metadata !585}
!597 = metadata !{i32 190, i32 7, metadata !203, metadata !598}
!598 = metadata !{i32 447, i32 11, metadata !599, null}
!599 = metadata !{i32 786443, metadata !1, metadata !483, i32 446, i32 5, i32 0, i32 149} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!600 = metadata !{i32 194, i32 9, metadata !206, metadata !598}
!601 = metadata !{i32 786688, metadata !17, metadata !"__retres1", metadata !5, i32 187, metadata !13, i32 0, metadata !598} ; [ DW_TAG_auto_variable ] [__retres1] [line 187]
!602 = metadata !{i32 187, i32 7, metadata !17, metadata !598}
!603 = metadata !{i32 786688, metadata !27, metadata !"tmp", metadata !5, i32 417, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp] [line 417]
!604 = metadata !{i32 417, i32 7, metadata !27, null}
!605 = metadata !{i32 449, i32 9, metadata !606, null}
!606 = metadata !{i32 786443, metadata !1, metadata !483, i32 449, i32 9, i32 0, i32 150} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!607 = metadata !{i32 4}
!608 = metadata !{i32 353, i32 3, metadata !380, metadata !609}
!609 = metadata !{i32 452, i32 7, metadata !610, null}
!610 = metadata !{i32 786443, metadata !1, metadata !611, i32 450, i32 7, i32 0, i32 152} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!611 = metadata !{i32 786443, metadata !1, metadata !606, i32 449, i32 19, i32 0, i32 151} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!612 = metadata !{i32 126, i32 7, metadata !84, metadata !613}
!613 = metadata !{i32 319, i32 9, metadata !87, metadata !614}
!614 = metadata !{i32 453, i32 7, metadata !610, null}
!615 = metadata !{i32 127, i32 9, metadata !94, metadata !613}
!616 = metadata !{i32 786688, metadata !10, metadata !"__retres1", metadata !5, i32 123, metadata !13, i32 0, metadata !613} ; [ DW_TAG_auto_variable ] [__retres1] [line 123]
!617 = metadata !{i32 123, i32 7, metadata !10, metadata !613}
!618 = metadata !{i32 321, i32 7, metadata !100, metadata !614}
!619 = metadata !{i32 322, i32 5, metadata !102, metadata !614}
!620 = metadata !{i32 323, i32 3, metadata !102, metadata !614}
!621 = metadata !{i32 145, i32 7, metadata !105, metadata !622}
!622 = metadata !{i32 327, i32 13, metadata !108, metadata !614}
!623 = metadata !{i32 146, i32 9, metadata !110, metadata !622}
!624 = metadata !{i32 786688, metadata !14, metadata !"__retres1", metadata !5, i32 142, metadata !13, i32 0, metadata !622} ; [ DW_TAG_auto_variable ] [__retres1] [line 142]
!625 = metadata !{i32 142, i32 7, metadata !14, metadata !622}
!626 = metadata !{i32 329, i32 7, metadata !115, metadata !614}
!627 = metadata !{i32 330, i32 5, metadata !117, metadata !614}
!628 = metadata !{i32 331, i32 3, metadata !117, metadata !614}
!629 = metadata !{i32 362, i32 7, metadata !383, metadata !630}
!630 = metadata !{i32 454, i32 7, metadata !610, null}
!631 = metadata !{i32 363, i32 5, metadata !386, metadata !630}
!632 = metadata !{i32 364, i32 3, metadata !386, metadata !630}
!633 = metadata !{i32 367, i32 7, metadata !389, metadata !630}
!634 = metadata !{i32 368, i32 5, metadata !391, metadata !630}
!635 = metadata !{i32 369, i32 3, metadata !391, metadata !630}
!636 = metadata !{i32 372, i32 7, metadata !394, metadata !630}
!637 = metadata !{i32 373, i32 5, metadata !396, metadata !630}
!638 = metadata !{i32 374, i32 3, metadata !396, metadata !630}
!639 = metadata !{i32 377, i32 7, metadata !399, metadata !630}
!640 = metadata !{i32 378, i32 5, metadata !401, metadata !630}
!641 = metadata !{i32 379, i32 3, metadata !401, metadata !630}
!642 = metadata !{i32 190, i32 7, metadata !203, metadata !643}
!643 = metadata !{i32 402, i32 9, metadata !410, metadata !644}
!644 = metadata !{i32 460, i32 15, metadata !645, null}
!645 = metadata !{i32 786443, metadata !1, metadata !483, i32 459, i32 5, i32 0, i32 154} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!646 = metadata !{i32 194, i32 9, metadata !206, metadata !643}
!647 = metadata !{i32 786688, metadata !17, metadata !"__retres1", metadata !5, i32 187, metadata !13, i32 0, metadata !643} ; [ DW_TAG_auto_variable ] [__retres1] [line 187]
!648 = metadata !{i32 187, i32 7, metadata !17, metadata !643}
!649 = metadata !{i32 786688, metadata !26, metadata !"__retres2", metadata !5, i32 398, metadata !13, i32 0, metadata !644} ; [ DW_TAG_auto_variable ] [__retres2] [line 398]
!650 = metadata !{i32 398, i32 7, metadata !26, metadata !644}
!651 = metadata !{i32 404, i32 7, metadata !418, metadata !644}
!652 = metadata !{i32 786688, metadata !27, metadata !"tmp___0", metadata !5, i32 418, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [tmp___0] [line 418]
!653 = metadata !{i32 418, i32 7, metadata !27, null}
!654 = metadata !{i32 462, i32 9, metadata !655, null}
!655 = metadata !{i32 786443, metadata !1, metadata !483, i32 462, i32 9, i32 0, i32 155} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!656 = metadata !{i32 473, i32 1, metadata !27, null}
!657 = metadata !{i32 390, i32 3, metadata !405, metadata !658}
!658 = metadata !{i32 479, i32 3, metadata !659, null}
!659 = metadata !{i32 786443, metadata !1, metadata !660, i32 478, i32 3, i32 0, i32 159} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!660 = metadata !{i32 786443, metadata !1, metadata !28, i32 477, i32 3, i32 0, i32 158} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!661 = metadata !{i32 391, i32 3, metadata !405, metadata !658}
!662 = metadata !{i32 786688, metadata !27, metadata !"kernel_st", metadata !5, i32 416, metadata !13, i32 0, metadata !663} ; [ DW_TAG_auto_variable ] [kernel_st] [line 416]
!663 = metadata !{i32 480, i32 3, metadata !659, null}
!664 = metadata !{i32 416, i32 7, metadata !27, metadata !663}
!665 = metadata !{i32 172, i32 7, metadata !187, metadata !666}
!666 = metadata !{i32 424, i32 3, metadata !427, metadata !663}
!667 = metadata !{i32 173, i32 5, metadata !190, metadata !666}
!668 = metadata !{i32 174, i32 3, metadata !190, metadata !666}
!669 = metadata !{i32 175, i32 5, metadata !193, metadata !666}
!670 = metadata !{i32 177, i32 7, metadata !195, metadata !666}
!671 = metadata !{i32 178, i32 5, metadata !197, metadata !666}
!672 = metadata !{i32 179, i32 3, metadata !197, metadata !666}
!673 = metadata !{i32 180, i32 5, metadata !200, metadata !666}
!674 = metadata !{i32 261, i32 7, metadata !315, metadata !675}
!675 = metadata !{i32 425, i32 3, metadata !427, metadata !663}
!676 = metadata !{i32 262, i32 5, metadata !318, metadata !675}
!677 = metadata !{i32 263, i32 3, metadata !318, metadata !675}
!678 = metadata !{i32 266, i32 7, metadata !321, metadata !675}
!679 = metadata !{i32 267, i32 5, metadata !323, metadata !675}
!680 = metadata !{i32 268, i32 3, metadata !323, metadata !675}
!681 = metadata !{i32 271, i32 7, metadata !326, metadata !675}
!682 = metadata !{i32 272, i32 5, metadata !328, metadata !675}
!683 = metadata !{i32 273, i32 3, metadata !328, metadata !675}
!684 = metadata !{i32 276, i32 7, metadata !331, metadata !675}
!685 = metadata !{i32 277, i32 5, metadata !333, metadata !675}
!686 = metadata !{i32 278, i32 3, metadata !333, metadata !675}
!687 = metadata !{i32 126, i32 7, metadata !84, metadata !688}
!688 = metadata !{i32 319, i32 9, metadata !87, metadata !689}
!689 = metadata !{i32 426, i32 3, metadata !427, metadata !663}
!690 = metadata !{i32 127, i32 9, metadata !94, metadata !688}
!691 = metadata !{i32 786688, metadata !10, metadata !"__retres1", metadata !5, i32 123, metadata !13, i32 0, metadata !688} ; [ DW_TAG_auto_variable ] [__retres1] [line 123]
!692 = metadata !{i32 123, i32 7, metadata !10, metadata !688}
!693 = metadata !{i32 321, i32 7, metadata !100, metadata !689}
!694 = metadata !{i32 322, i32 5, metadata !102, metadata !689}
!695 = metadata !{i32 323, i32 3, metadata !102, metadata !689}
!696 = metadata !{i32 145, i32 7, metadata !105, metadata !697}
!697 = metadata !{i32 327, i32 13, metadata !108, metadata !689}
!698 = metadata !{i32 146, i32 9, metadata !110, metadata !697}
!699 = metadata !{i32 786688, metadata !14, metadata !"__retres1", metadata !5, i32 142, metadata !13, i32 0, metadata !697} ; [ DW_TAG_auto_variable ] [__retres1] [line 142]
!700 = metadata !{i32 142, i32 7, metadata !14, metadata !697}
!701 = metadata !{i32 329, i32 7, metadata !115, metadata !689}
!702 = metadata !{i32 330, i32 5, metadata !117, metadata !689}
!703 = metadata !{i32 331, i32 3, metadata !117, metadata !689}
!704 = metadata !{i32 289, i32 7, metadata !337, metadata !705}
!705 = metadata !{i32 427, i32 3, metadata !427, metadata !663}
!706 = metadata !{i32 290, i32 5, metadata !340, metadata !705}
!707 = metadata !{i32 291, i32 3, metadata !340, metadata !705}
!708 = metadata !{i32 294, i32 7, metadata !343, metadata !705}
!709 = metadata !{i32 295, i32 5, metadata !345, metadata !705}
!710 = metadata !{i32 296, i32 3, metadata !345, metadata !705}
!711 = metadata !{i32 299, i32 7, metadata !348, metadata !705}
!712 = metadata !{i32 300, i32 5, metadata !350, metadata !705}
!713 = metadata !{i32 301, i32 3, metadata !350, metadata !705}
!714 = metadata !{i32 304, i32 7, metadata !353, metadata !705}
!715 = metadata !{i32 305, i32 5, metadata !355, metadata !705}
!716 = metadata !{i32 306, i32 3, metadata !355, metadata !705}
!717 = metadata !{i32 190, i32 7, metadata !203, metadata !718}
!718 = metadata !{i32 215, i32 11, metadata !213, metadata !719}
!719 = metadata !{i32 434, i32 5, metadata !482, metadata !663}
!720 = metadata !{i32 194, i32 9, metadata !206, metadata !718}
!721 = metadata !{i32 217, i32 9, metadata !258, metadata !719}
!722 = metadata !{i32 222, i32 9, metadata !222, metadata !719}
!723 = metadata !{i32 224, i32 19, metadata !221, metadata !719}
!724 = metadata !{i32 225, i32 11, metadata !228, metadata !719}
!725 = metadata !{i32 227, i32 9, metadata !226, metadata !719}
!726 = metadata !{i32 228, i32 9, metadata !226, metadata !719}
!727 = metadata !{i32 34, i32 7, metadata !50, metadata !726}
!728 = metadata !{i32 37, i32 9, metadata !53, metadata !726}
!729 = metadata !{i32 59, i32 9, metadata !56, metadata !726}
!730 = metadata !{i32 10, i32 10, metadata !46, metadata !731}
!731 = metadata !{i32 61, i32 7, metadata !61, metadata !726}
!732 = metadata !{i32 70, i32 12, metadata !69, metadata !726}
!733 = metadata !{i32 71, i32 15, metadata !71, metadata !726}
!734 = metadata !{i32 72, i32 17, metadata !74, metadata !726}
!735 = metadata !{i32 10, i32 10, metadata !46, metadata !736}
!736 = metadata !{i32 73, i32 14, metadata !78, metadata !726}
!737 = metadata !{i32 48, i32 13, metadata !80, metadata !726}
!738 = metadata !{i32 49, i32 5, metadata !80, metadata !726}
!739 = metadata !{i32 50, i32 5, metadata !80, metadata !726}
!740 = metadata !{i32 126, i32 7, metadata !84, metadata !741}
!741 = metadata !{i32 319, i32 9, metadata !87, metadata !742}
!742 = metadata !{i32 343, i32 3, metadata !90, metadata !743}
!743 = metadata !{i32 51, i32 5, metadata !80, metadata !726}
!744 = metadata !{i32 127, i32 9, metadata !94, metadata !741}
!745 = metadata !{i32 321, i32 7, metadata !100, metadata !742}
!746 = metadata !{i32 322, i32 5, metadata !102, metadata !742}
!747 = metadata !{i32 323, i32 3, metadata !102, metadata !742}
!748 = metadata !{i32 145, i32 7, metadata !105, metadata !749}
!749 = metadata !{i32 327, i32 13, metadata !108, metadata !742}
!750 = metadata !{i32 146, i32 9, metadata !110, metadata !749}
!751 = metadata !{i32 329, i32 7, metadata !115, metadata !742}
!752 = metadata !{i32 330, i32 5, metadata !117, metadata !742}
!753 = metadata !{i32 331, i32 3, metadata !117, metadata !742}
!754 = metadata !{i32 52, i32 5, metadata !80, metadata !726}
!755 = metadata !{i32 53, i32 5, metadata !80, metadata !726}
!756 = metadata !{i32 54, i32 5, metadata !80, metadata !726}
!757 = metadata !{i32 230, i32 7, metadata !227, metadata !719}
!758 = metadata !{i32 236, i32 9, metadata !240, metadata !719}
!759 = metadata !{i32 238, i32 19, metadata !239, metadata !719}
!760 = metadata !{i32 239, i32 11, metadata !249, metadata !719}
!761 = metadata !{i32 241, i32 9, metadata !247, metadata !719}
!762 = metadata !{i32 90, i32 7, metadata !142, metadata !763}
!763 = metadata !{i32 242, i32 9, metadata !247, metadata !719}
!764 = metadata !{i32 93, i32 9, metadata !145, metadata !763}
!765 = metadata !{i32 109, i32 5, metadata !148, metadata !763}
!766 = metadata !{i32 110, i32 5, metadata !148, metadata !763}
!767 = metadata !{i32 126, i32 7, metadata !84, metadata !768}
!768 = metadata !{i32 319, i32 9, metadata !87, metadata !769}
!769 = metadata !{i32 343, i32 3, metadata !90, metadata !770}
!770 = metadata !{i32 111, i32 5, metadata !148, metadata !763}
!771 = metadata !{i32 127, i32 9, metadata !94, metadata !768}
!772 = metadata !{i32 321, i32 7, metadata !100, metadata !769}
!773 = metadata !{i32 322, i32 5, metadata !102, metadata !769}
!774 = metadata !{i32 323, i32 3, metadata !102, metadata !769}
!775 = metadata !{i32 145, i32 7, metadata !105, metadata !776}
!776 = metadata !{i32 327, i32 13, metadata !108, metadata !769}
!777 = metadata !{i32 146, i32 9, metadata !110, metadata !776}
!778 = metadata !{i32 329, i32 7, metadata !115, metadata !769}
!779 = metadata !{i32 330, i32 5, metadata !117, metadata !769}
!780 = metadata !{i32 331, i32 3, metadata !117, metadata !769}
!781 = metadata !{i32 112, i32 5, metadata !148, metadata !763}
!782 = metadata !{i32 114, i32 3, metadata !149, metadata !763}
!783 = metadata !{i32 103, i32 5, metadata !149, metadata !763}
!784 = metadata !{i32 104, i32 5, metadata !149, metadata !763}
!785 = metadata !{i32 244, i32 7, metadata !248, metadata !719}
!786 = metadata !{i32 261, i32 7, metadata !315, metadata !787}
!787 = metadata !{i32 442, i32 5, metadata !555, metadata !663}
!788 = metadata !{i32 262, i32 5, metadata !318, metadata !787}
!789 = metadata !{i32 263, i32 3, metadata !318, metadata !787}
!790 = metadata !{i32 266, i32 7, metadata !321, metadata !787}
!791 = metadata !{i32 267, i32 5, metadata !323, metadata !787}
!792 = metadata !{i32 268, i32 3, metadata !323, metadata !787}
!793 = metadata !{i32 271, i32 7, metadata !326, metadata !787}
!794 = metadata !{i32 272, i32 5, metadata !328, metadata !787}
!795 = metadata !{i32 273, i32 3, metadata !328, metadata !787}
!796 = metadata !{i32 276, i32 7, metadata !331, metadata !787}
!797 = metadata !{i32 277, i32 5, metadata !333, metadata !787}
!798 = metadata !{i32 278, i32 3, metadata !333, metadata !787}
!799 = metadata !{i32 126, i32 7, metadata !84, metadata !800}
!800 = metadata !{i32 319, i32 9, metadata !87, metadata !801}
!801 = metadata !{i32 443, i32 5, metadata !555, metadata !663}
!802 = metadata !{i32 127, i32 9, metadata !94, metadata !800}
!803 = metadata !{i32 786688, metadata !10, metadata !"__retres1", metadata !5, i32 123, metadata !13, i32 0, metadata !800} ; [ DW_TAG_auto_variable ] [__retres1] [line 123]
!804 = metadata !{i32 123, i32 7, metadata !10, metadata !800}
!805 = metadata !{i32 321, i32 7, metadata !100, metadata !801}
!806 = metadata !{i32 322, i32 5, metadata !102, metadata !801}
!807 = metadata !{i32 323, i32 3, metadata !102, metadata !801}
!808 = metadata !{i32 145, i32 7, metadata !105, metadata !809}
!809 = metadata !{i32 327, i32 13, metadata !108, metadata !801}
!810 = metadata !{i32 146, i32 9, metadata !110, metadata !809}
!811 = metadata !{i32 786688, metadata !14, metadata !"__retres1", metadata !5, i32 142, metadata !13, i32 0, metadata !809} ; [ DW_TAG_auto_variable ] [__retres1] [line 142]
!812 = metadata !{i32 142, i32 7, metadata !14, metadata !809}
!813 = metadata !{i32 329, i32 7, metadata !115, metadata !801}
!814 = metadata !{i32 330, i32 5, metadata !117, metadata !801}
!815 = metadata !{i32 331, i32 3, metadata !117, metadata !801}
!816 = metadata !{i32 289, i32 7, metadata !337, metadata !817}
!817 = metadata !{i32 444, i32 5, metadata !555, metadata !663}
!818 = metadata !{i32 290, i32 5, metadata !340, metadata !817}
!819 = metadata !{i32 291, i32 3, metadata !340, metadata !817}
!820 = metadata !{i32 294, i32 7, metadata !343, metadata !817}
!821 = metadata !{i32 295, i32 5, metadata !345, metadata !817}
!822 = metadata !{i32 296, i32 3, metadata !345, metadata !817}
!823 = metadata !{i32 299, i32 7, metadata !348, metadata !817}
!824 = metadata !{i32 300, i32 5, metadata !350, metadata !817}
!825 = metadata !{i32 301, i32 3, metadata !350, metadata !817}
!826 = metadata !{i32 304, i32 7, metadata !353, metadata !817}
!827 = metadata !{i32 305, i32 5, metadata !355, metadata !817}
!828 = metadata !{i32 306, i32 3, metadata !355, metadata !817}
!829 = metadata !{i32 190, i32 7, metadata !203, metadata !830}
!830 = metadata !{i32 447, i32 11, metadata !599, metadata !663}
!831 = metadata !{i32 194, i32 9, metadata !206, metadata !830}
!832 = metadata !{i32 786688, metadata !17, metadata !"__retres1", metadata !5, i32 187, metadata !13, i32 0, metadata !830} ; [ DW_TAG_auto_variable ] [__retres1] [line 187]
!833 = metadata !{i32 187, i32 7, metadata !17, metadata !830}
!834 = metadata !{i32 786688, metadata !27, metadata !"tmp", metadata !5, i32 417, metadata !13, i32 0, metadata !663} ; [ DW_TAG_auto_variable ] [tmp] [line 417]
!835 = metadata !{i32 417, i32 7, metadata !27, metadata !663}
!836 = metadata !{i32 449, i32 9, metadata !606, metadata !663}
!837 = metadata !{i32 353, i32 3, metadata !380, metadata !838}
!838 = metadata !{i32 452, i32 7, metadata !610, metadata !663}
!839 = metadata !{i32 126, i32 7, metadata !84, metadata !840}
!840 = metadata !{i32 319, i32 9, metadata !87, metadata !841}
!841 = metadata !{i32 453, i32 7, metadata !610, metadata !663}
!842 = metadata !{i32 127, i32 9, metadata !94, metadata !840}
!843 = metadata !{i32 786688, metadata !10, metadata !"__retres1", metadata !5, i32 123, metadata !13, i32 0, metadata !840} ; [ DW_TAG_auto_variable ] [__retres1] [line 123]
!844 = metadata !{i32 123, i32 7, metadata !10, metadata !840}
!845 = metadata !{i32 321, i32 7, metadata !100, metadata !841}
!846 = metadata !{i32 322, i32 5, metadata !102, metadata !841}
!847 = metadata !{i32 323, i32 3, metadata !102, metadata !841}
!848 = metadata !{i32 145, i32 7, metadata !105, metadata !849}
!849 = metadata !{i32 327, i32 13, metadata !108, metadata !841}
!850 = metadata !{i32 146, i32 9, metadata !110, metadata !849}
!851 = metadata !{i32 786688, metadata !14, metadata !"__retres1", metadata !5, i32 142, metadata !13, i32 0, metadata !849} ; [ DW_TAG_auto_variable ] [__retres1] [line 142]
!852 = metadata !{i32 142, i32 7, metadata !14, metadata !849}
!853 = metadata !{i32 329, i32 7, metadata !115, metadata !841}
!854 = metadata !{i32 330, i32 5, metadata !117, metadata !841}
!855 = metadata !{i32 331, i32 3, metadata !117, metadata !841}
!856 = metadata !{i32 362, i32 7, metadata !383, metadata !857}
!857 = metadata !{i32 454, i32 7, metadata !610, metadata !663}
!858 = metadata !{i32 363, i32 5, metadata !386, metadata !857}
!859 = metadata !{i32 364, i32 3, metadata !386, metadata !857}
!860 = metadata !{i32 367, i32 7, metadata !389, metadata !857}
!861 = metadata !{i32 368, i32 5, metadata !391, metadata !857}
!862 = metadata !{i32 369, i32 3, metadata !391, metadata !857}
!863 = metadata !{i32 372, i32 7, metadata !394, metadata !857}
!864 = metadata !{i32 373, i32 5, metadata !396, metadata !857}
!865 = metadata !{i32 374, i32 3, metadata !396, metadata !857}
!866 = metadata !{i32 377, i32 7, metadata !399, metadata !857}
!867 = metadata !{i32 378, i32 5, metadata !401, metadata !857}
!868 = metadata !{i32 379, i32 3, metadata !401, metadata !857}
!869 = metadata !{i32 190, i32 7, metadata !203, metadata !870}
!870 = metadata !{i32 402, i32 9, metadata !410, metadata !871}
!871 = metadata !{i32 460, i32 15, metadata !645, metadata !663}
!872 = metadata !{i32 194, i32 9, metadata !206, metadata !870}
!873 = metadata !{i32 786688, metadata !17, metadata !"__retres1", metadata !5, i32 187, metadata !13, i32 0, metadata !870} ; [ DW_TAG_auto_variable ] [__retres1] [line 187]
!874 = metadata !{i32 187, i32 7, metadata !17, metadata !870}
!875 = metadata !{i32 786688, metadata !26, metadata !"__retres2", metadata !5, i32 398, metadata !13, i32 0, metadata !871} ; [ DW_TAG_auto_variable ] [__retres2] [line 398]
!876 = metadata !{i32 398, i32 7, metadata !26, metadata !871}
!877 = metadata !{i32 404, i32 7, metadata !418, metadata !871}
!878 = metadata !{i32 786688, metadata !27, metadata !"tmp___0", metadata !5, i32 418, metadata !13, i32 0, metadata !663} ; [ DW_TAG_auto_variable ] [tmp___0] [line 418]
!879 = metadata !{i32 418, i32 7, metadata !27, metadata !663}
!880 = metadata !{i32 462, i32 9, metadata !655, metadata !663}
!881 = metadata !{i32 786688, metadata !28, metadata !"__retres1", metadata !5, i32 475, metadata !13, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [__retres1] [line 475]
!882 = metadata !{i32 475, i32 7, metadata !28, null}
!883 = metadata !{i32 483, i32 3, metadata !660, null}

