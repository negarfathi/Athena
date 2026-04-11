; ModuleID = 'FILES_DIR/SourceCode_llvm2KITTeL.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"'flag" = global i64 0, align 8

; Function Attrs: nounwind uwtable
define i64 @wrap_around(i64 %value, i64 %lower_bound, i64 %upper_bound) #0 {
wrap_around_bb0:
  call void @llvm.dbg.value(metadata !{i64 %value}, i64 0, metadata !24), !dbg !25
  call void @llvm.dbg.value(metadata !{i64 %lower_bound}, i64 0, metadata !26), !dbg !27
  call void @llvm.dbg.value(metadata !{i64 %upper_bound}, i64 0, metadata !28), !dbg !29
  %"0" = sub nsw i64 %upper_bound, %lower_bound, !dbg !30
  %"1" = add nsw i64 %"0", 1, !dbg !30
  call void @llvm.dbg.value(metadata !{i64 %"1"}, i64 0, metadata !31), !dbg !32
  %"2" = icmp sgt i64 %value, %upper_bound, !dbg !33
  br i1 %"2", label %wrap_around_bb1, label %wrap_around_bb2, !dbg !33

wrap_around_bb1:                                  ; preds = %wrap_around_bb0
  %"3" = sub nsw i64 %value, %upper_bound, !dbg !35
  %"4" = sub nsw i64 %"3", 1, !dbg !35
  %"5" = srem i64 %"4", %"1", !dbg !35
  %"6" = add nsw i64 %lower_bound, %"5", !dbg !35
  br label %wrap_around_bb4, !dbg !35

wrap_around_bb2:                                  ; preds = %wrap_around_bb0
  %"7" = icmp slt i64 %value, %lower_bound, !dbg !37
  br i1 %"7", label %wrap_around_bb3, label %wrap_around_bb4, !dbg !37

wrap_around_bb3:                                  ; preds = %wrap_around_bb2
  %"8" = sub nsw i64 %lower_bound, %value, !dbg !39
  %"9" = sub nsw i64 %"8", 1, !dbg !39
  %"10" = srem i64 %"9", %"1", !dbg !39
  %"11" = sub nsw i64 %upper_bound, %"10", !dbg !39
  br label %wrap_around_bb4, !dbg !39

wrap_around_bb4:                                  ; preds = %wrap_around_bb2, %wrap_around_bb3, %wrap_around_bb1
  %.0 = phi i64 [ %"6", %wrap_around_bb1 ], [ %"11", %wrap_around_bb3 ], [ %value, %wrap_around_bb2 ]
  ret i64 %.0, !dbg !41
}

; Function Attrs: nounwind readnone
declare void @llvm.dbg.declare(metadata, metadata) #1

; Function Attrs: nounwind uwtable
define i64 @matroska_deliver_packet(i64 %q) #0 {
matroska_deliver_packet_bb5:
  call void @llvm.dbg.value(metadata !{i64 %q}, i64 0, metadata !42), !dbg !43
  %"12" = icmp eq i64 %q, 1, !dbg !44
  %. = select i1 %"12", i64 0, i64 1, !dbg !46
  ret i64 %., !dbg !48
}

; Function Attrs: nounwind uwtable
define i64 @res_return() #0 {
res_return_bb6:
  %"13" = load i64* @"'flag", align 8, !dbg !49
  %"14" = add nsw i64 %"13", 1, !dbg !49
  store i64 %"14", i64* @"'flag", align 8, !dbg !49
  %"15" = icmp slt i64 %"13", 100, !dbg !49
  %"16" = load i64* @"'flag", align 8, !dbg !51
  %"17" = icmp sgt i64 %"16", 2147483647, !dbg !53
  br i1 %"15", label %res_return_bb7, label %res_return_bb11, !dbg !49

res_return_bb7:                                   ; preds = %res_return_bb6
  call void @llvm.dbg.value(metadata !{i64 %"16"}, i64 0, metadata !54), !dbg !55
  call void @llvm.dbg.value(metadata !56, i64 0, metadata !57), !dbg !58
  call void @llvm.dbg.value(metadata !59, i64 0, metadata !60), !dbg !61
  call void @llvm.dbg.value(metadata !62, i64 0, metadata !63), !dbg !64
  br i1 %"17", label %res_return_bb8, label %res_return_bb9, !dbg !53

res_return_bb8:                                   ; preds = %res_return_bb7
  %"18" = sub nsw i64 %"16", 2147483647, !dbg !65
  %"19" = sub nsw i64 %"18", 1, !dbg !65
  %"20" = srem i64 %"19", 4294967296, !dbg !65
  %"21" = add nsw i64 -2147483648, %"20", !dbg !65
  br label %res_return_wrap_around.exit, !dbg !65

res_return_bb9:                                   ; preds = %res_return_bb7
  %"22" = icmp slt i64 %"16", -2147483648, !dbg !66
  br i1 %"22", label %res_return_bb10, label %res_return_wrap_around.exit, !dbg !66

res_return_bb10:                                  ; preds = %res_return_bb9
  %"23" = sub nsw i64 -2147483648, %"16", !dbg !67
  %"24" = sub nsw i64 %"23", 1, !dbg !67
  %"25" = srem i64 %"24", 4294967296, !dbg !67
  %"26" = sub nsw i64 2147483647, %"25", !dbg !67
  br label %res_return_wrap_around.exit, !dbg !67

res_return_wrap_around.exit:                      ; preds = %res_return_bb8, %res_return_bb9, %res_return_bb10
  %.0.i = phi i64 [ %"21", %res_return_bb8 ], [ %"26", %res_return_bb10 ], [ %"16", %res_return_bb9 ], !dbg !51
  store i64 %.0.i, i64* @"'flag", align 8, !dbg !51
  %"27" = call i64 @__VERIFIER_nondet_int(), !dbg !68
  br label %res_return_bb15, !dbg !68

res_return_bb11:                                  ; preds = %res_return_bb6
  call void @llvm.dbg.value(metadata !{i64 %"16"}, i64 0, metadata !69), !dbg !71
  call void @llvm.dbg.value(metadata !56, i64 0, metadata !72), !dbg !73
  call void @llvm.dbg.value(metadata !59, i64 0, metadata !74), !dbg !75
  call void @llvm.dbg.value(metadata !62, i64 0, metadata !76), !dbg !77
  br i1 %"17", label %res_return_bb12, label %res_return_bb13, !dbg !78

res_return_bb12:                                  ; preds = %res_return_bb11
  %"28" = sub nsw i64 %"16", 2147483647, !dbg !79
  %"29" = sub nsw i64 %"28", 1, !dbg !79
  %"30" = srem i64 %"29", 4294967296, !dbg !79
  %"31" = add nsw i64 -2147483648, %"30", !dbg !79
  br label %res_return_wrap_around.exit2, !dbg !79

res_return_bb13:                                  ; preds = %res_return_bb11
  %"32" = icmp slt i64 %"16", -2147483648, !dbg !80
  br i1 %"32", label %res_return_bb14, label %res_return_wrap_around.exit2, !dbg !80

res_return_bb14:                                  ; preds = %res_return_bb13
  %"33" = sub nsw i64 -2147483648, %"16", !dbg !81
  %"34" = sub nsw i64 %"33", 1, !dbg !81
  %"35" = srem i64 %"34", 4294967296, !dbg !81
  %"36" = sub nsw i64 2147483647, %"35", !dbg !81
  br label %res_return_wrap_around.exit2, !dbg !81

res_return_wrap_around.exit2:                     ; preds = %res_return_bb12, %res_return_bb13, %res_return_bb14
  %.0.i1 = phi i64 [ %"31", %res_return_bb12 ], [ %"36", %res_return_bb14 ], [ %"16", %res_return_bb13 ], !dbg !70
  store i64 %.0.i1, i64* @"'flag", align 8, !dbg !70
  br label %res_return_bb15, !dbg !82

res_return_bb15:                                  ; preds = %res_return_wrap_around.exit2, %res_return_wrap_around.exit
  %.0 = phi i64 [ %"27", %res_return_wrap_around.exit ], [ -1, %res_return_wrap_around.exit2 ]
  ret i64 %.0, !dbg !83
}

declare i64 @__VERIFIER_nondet_int() #2

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb16:
  %"37" = call i64 @__VERIFIER_nondet_int(), !dbg !84
  call void @llvm.dbg.value(metadata !{i64 %"37"}, i64 0, metadata !85), !dbg !86
  call void @llvm.dbg.value(metadata !87, i64 0, metadata !88), !dbg !89
  call void @llvm.dbg.value(metadata !{i64 %matroska.0}, i64 0, metadata !90), !dbg !93
  call void @llvm.dbg.value(metadata !87, i64 0, metadata !88), !dbg !89
  call void @llvm.dbg.value(metadata !{i64 %"40"}, i64 0, metadata !94), !dbg !97
  call void @llvm.dbg.value(metadata !{i64 %"44"}, i64 0, metadata !98) #3, !dbg !102
  call void @llvm.dbg.value(metadata !56, i64 0, metadata !103) #3, !dbg !104
  call void @llvm.dbg.value(metadata !59, i64 0, metadata !105) #3, !dbg !106
  call void @llvm.dbg.value(metadata !62, i64 0, metadata !107) #3, !dbg !108
  call void @llvm.dbg.value(metadata !{i64 %"44"}, i64 0, metadata !109) #3, !dbg !111
  call void @llvm.dbg.value(metadata !56, i64 0, metadata !112) #3, !dbg !113
  call void @llvm.dbg.value(metadata !59, i64 0, metadata !114) #3, !dbg !115
  call void @llvm.dbg.value(metadata !62, i64 0, metadata !116) #3, !dbg !117
  call void @llvm.dbg.value(metadata !{i64 %"44"}, i64 0, metadata !118) #3, !dbg !122
  call void @llvm.dbg.value(metadata !56, i64 0, metadata !123) #3, !dbg !124
  call void @llvm.dbg.value(metadata !59, i64 0, metadata !125) #3, !dbg !126
  call void @llvm.dbg.value(metadata !62, i64 0, metadata !127) #3, !dbg !128
  call void @llvm.dbg.value(metadata !{i64 %"67"}, i64 0, metadata !88), !dbg !89
  call void @llvm.dbg.value(metadata !{i64 %"72"}, i64 0, metadata !129) #3, !dbg !133
  call void @llvm.dbg.value(metadata !56, i64 0, metadata !134) #3, !dbg !135
  call void @llvm.dbg.value(metadata !59, i64 0, metadata !136) #3, !dbg !137
  call void @llvm.dbg.value(metadata !62, i64 0, metadata !138) #3, !dbg !139
  call void @llvm.dbg.value(metadata !{i64 %"95"}, i64 0, metadata !88), !dbg !89
  call void @llvm.dbg.value(metadata !140, i64 0, metadata !88), !dbg !89
  call void @llvm.dbg.value(metadata !{i64 %"72"}, i64 0, metadata !141) #3, !dbg !143
  call void @llvm.dbg.value(metadata !56, i64 0, metadata !144) #3, !dbg !145
  call void @llvm.dbg.value(metadata !59, i64 0, metadata !146) #3, !dbg !147
  call void @llvm.dbg.value(metadata !62, i64 0, metadata !148) #3, !dbg !149
  call void @llvm.dbg.value(metadata !{i64 %"44"}, i64 0, metadata !150) #3, !dbg !152
  call void @llvm.dbg.value(metadata !56, i64 0, metadata !153) #3, !dbg !154
  call void @llvm.dbg.value(metadata !59, i64 0, metadata !155) #3, !dbg !156
  call void @llvm.dbg.value(metadata !62, i64 0, metadata !157) #3, !dbg !158
  br label %main_bb17, !dbg !159

main_bb17:                                        ; preds = %main_NewDefault, %main_bb18, %main_bb16
  %matroska.0 = phi i64 [ %"37", %main_bb16 ], [ 1, %main_bb18 ], [ %matroska.0, %main_NewDefault ]
  %"38" = icmp eq i64 %matroska.0, 1, !dbg !160
  %..i = select i1 %"38", i64 0, i64 1, !dbg !161
  %"39" = icmp ne i64 %..i, 0, !dbg !91
  br i1 %"39", label %main_res_return.exit, label %main_bb47, !dbg !91

main_res_return.exit:                             ; preds = %main_res_return.exit12, %main_res_return.exit6, %main_wrap_around.exit.i, %main_wrap_around.exit2.i, %main_bb17
  %res.0 = phi i64 [ 0, %main_bb17 ], [ %., %main_res_return.exit12 ], [ %"67", %main_res_return.exit6 ], [ %"106", %main_wrap_around.exit.i ], [ -1, %main_wrap_around.exit2.i ]
  br label %main_NodeBlock

main_NodeBlock:                                   ; preds = %main_res_return.exit
  %Pivot = icmp slt i64 %res.0, 0
  br i1 %Pivot, label %main_LeafBlock, label %main_LeafBlock13

main_LeafBlock:                                   ; preds = %main_NodeBlock
  %SwitchLeaf = icmp eq i64 %res.0, -1
  br i1 %SwitchLeaf, label %main_bb18, label %main_NewDefault

main_bb18:                                        ; preds = %main_LeafBlock
  call void @llvm.dbg.value(metadata !140, i64 0, metadata !85), !dbg !86
  br label %main_bb17, !dbg !162

main_LeafBlock13:                                 ; preds = %main_NodeBlock
  %SwitchLeaf14 = icmp eq i64 %res.0, 0
  br i1 %SwitchLeaf14, label %main_bb19, label %main_NewDefault

main_bb19:                                        ; preds = %main_LeafBlock13
  %"40" = call i64 @__VERIFIER_nondet_int(), !dbg !165
  %cond = icmp eq i64 %"40", 1, !dbg !166
  %"41" = load i64* @"'flag", align 8, !dbg !167
  %"42" = add nsw i64 %"41", 1, !dbg !167
  store i64 %"42", i64* @"'flag", align 8, !dbg !167
  %"43" = icmp slt i64 %"41", 100, !dbg !167
  %"44" = load i64* @"'flag", align 8, !dbg !119
  %"45" = icmp sgt i64 %"44", 2147483647, !dbg !168
  br i1 %cond, label %main_bb20, label %main_bb38, !dbg !166

main_bb20:                                        ; preds = %main_bb19
  br i1 %"43", label %main_bb21, label %main_bb25, !dbg !167

main_bb21:                                        ; preds = %main_bb20
  br i1 %"45", label %main_bb22, label %main_bb23, !dbg !168

main_bb22:                                        ; preds = %main_bb21
  %"46" = sub nsw i64 %"44", 2147483647, !dbg !169
  %"47" = sub nsw i64 %"46", 1, !dbg !169
  %"48" = srem i64 %"47", 4294967296, !dbg !169
  %"49" = add nsw i64 -2147483648, %"48", !dbg !169
  br label %main_wrap_around.exit.i2, !dbg !169

main_bb23:                                        ; preds = %main_bb21
  %"50" = icmp slt i64 %"44", -2147483648, !dbg !170
  br i1 %"50", label %main_bb24, label %main_wrap_around.exit.i2, !dbg !170

main_bb24:                                        ; preds = %main_bb23
  %"51" = sub nsw i64 -2147483648, %"44", !dbg !171
  %"52" = sub nsw i64 %"51", 1, !dbg !171
  %"53" = srem i64 %"52", 4294967296, !dbg !171
  %"54" = sub nsw i64 2147483647, %"53", !dbg !171
  br label %main_wrap_around.exit.i2, !dbg !171

main_wrap_around.exit.i2:                         ; preds = %main_bb24, %main_bb23, %main_bb22
  %.0.i.i1 = phi i64 [ %"49", %main_bb22 ], [ %"54", %main_bb24 ], [ %"44", %main_bb23 ], !dbg !119
  store i64 %.0.i.i1, i64* @"'flag", align 8, !dbg !119
  %"55" = call i64 @__VERIFIER_nondet_int() #3, !dbg !172
  br label %main_res_return.exit6, !dbg !172

main_bb25:                                        ; preds = %main_bb20
  br i1 %"45", label %main_bb26, label %main_bb27, !dbg !173

main_bb26:                                        ; preds = %main_bb25
  %"56" = sub nsw i64 %"44", 2147483647, !dbg !174
  %"57" = sub nsw i64 %"56", 1, !dbg !174
  %"58" = srem i64 %"57", 4294967296, !dbg !174
  %"59" = add nsw i64 -2147483648, %"58", !dbg !174
  br label %main_wrap_around.exit2.i4, !dbg !174

main_bb27:                                        ; preds = %main_bb25
  %"60" = icmp slt i64 %"44", -2147483648, !dbg !175
  br i1 %"60", label %main_bb28, label %main_wrap_around.exit2.i4, !dbg !175

main_bb28:                                        ; preds = %main_bb27
  %"61" = sub nsw i64 -2147483648, %"44", !dbg !176
  %"62" = sub nsw i64 %"61", 1, !dbg !176
  %"63" = srem i64 %"62", 4294967296, !dbg !176
  %"64" = sub nsw i64 2147483647, %"63", !dbg !176
  br label %main_wrap_around.exit2.i4, !dbg !176

main_wrap_around.exit2.i4:                        ; preds = %main_bb28, %main_bb27, %main_bb26
  %.0.i1.i3 = phi i64 [ %"59", %main_bb26 ], [ %"64", %main_bb28 ], [ %"44", %main_bb27 ], !dbg !151
  store i64 %.0.i1.i3, i64* @"'flag", align 8, !dbg !151
  br label %main_res_return.exit6, !dbg !177

main_res_return.exit6:                            ; preds = %main_wrap_around.exit.i2, %main_wrap_around.exit2.i4
  %.0.i5 = phi i64 [ %"55", %main_wrap_around.exit.i2 ], [ -1, %main_wrap_around.exit2.i4 ], !dbg !120
  %"65" = icmp slt i64 %.0.i5, 0, !dbg !120
  %"66" = zext i1 %"65" to i32, !dbg !120
  %"67" = sext i32 %"66" to i64, !dbg !120
  %"68" = icmp ne i64 %"67", 0, !dbg !120
  br i1 %"68", label %main_res_return.exit, label %main_bb29, !dbg !120

main_bb29:                                        ; preds = %main_res_return.exit6
  %"69" = load i64* @"'flag", align 8, !dbg !178
  %"70" = add nsw i64 %"69", 1, !dbg !178
  store i64 %"70", i64* @"'flag", align 8, !dbg !178
  %"71" = icmp slt i64 %"69", 100, !dbg !178
  %"72" = load i64* @"'flag", align 8, !dbg !130
  %"73" = icmp sgt i64 %"72", 2147483647, !dbg !179
  br i1 %"71", label %main_bb30, label %main_bb34, !dbg !178

main_bb30:                                        ; preds = %main_bb29
  br i1 %"73", label %main_bb31, label %main_bb32, !dbg !179

main_bb31:                                        ; preds = %main_bb30
  %"74" = sub nsw i64 %"72", 2147483647, !dbg !180
  %"75" = sub nsw i64 %"74", 1, !dbg !180
  %"76" = srem i64 %"75", 4294967296, !dbg !180
  %"77" = add nsw i64 -2147483648, %"76", !dbg !180
  br label %main_wrap_around.exit.i8, !dbg !180

main_bb32:                                        ; preds = %main_bb30
  %"78" = icmp slt i64 %"72", -2147483648, !dbg !181
  br i1 %"78", label %main_bb33, label %main_wrap_around.exit.i8, !dbg !181

main_bb33:                                        ; preds = %main_bb32
  %"79" = sub nsw i64 -2147483648, %"72", !dbg !182
  %"80" = sub nsw i64 %"79", 1, !dbg !182
  %"81" = srem i64 %"80", 4294967296, !dbg !182
  %"82" = sub nsw i64 2147483647, %"81", !dbg !182
  br label %main_wrap_around.exit.i8, !dbg !182

main_wrap_around.exit.i8:                         ; preds = %main_bb33, %main_bb32, %main_bb31
  %.0.i.i7 = phi i64 [ %"77", %main_bb31 ], [ %"82", %main_bb33 ], [ %"72", %main_bb32 ], !dbg !130
  store i64 %.0.i.i7, i64* @"'flag", align 8, !dbg !130
  %"83" = call i64 @__VERIFIER_nondet_int() #3, !dbg !183
  br label %main_res_return.exit12, !dbg !183

main_bb34:                                        ; preds = %main_bb29
  br i1 %"73", label %main_bb35, label %main_bb36, !dbg !184

main_bb35:                                        ; preds = %main_bb34
  %"84" = sub nsw i64 %"72", 2147483647, !dbg !185
  %"85" = sub nsw i64 %"84", 1, !dbg !185
  %"86" = srem i64 %"85", 4294967296, !dbg !185
  %"87" = add nsw i64 -2147483648, %"86", !dbg !185
  br label %main_wrap_around.exit2.i10, !dbg !185

main_bb36:                                        ; preds = %main_bb34
  %"88" = icmp slt i64 %"72", -2147483648, !dbg !186
  br i1 %"88", label %main_bb37, label %main_wrap_around.exit2.i10, !dbg !186

main_bb37:                                        ; preds = %main_bb36
  %"89" = sub nsw i64 -2147483648, %"72", !dbg !187
  %"90" = sub nsw i64 %"89", 1, !dbg !187
  %"91" = srem i64 %"90", 4294967296, !dbg !187
  %"92" = sub nsw i64 2147483647, %"91", !dbg !187
  br label %main_wrap_around.exit2.i10, !dbg !187

main_wrap_around.exit2.i10:                       ; preds = %main_bb37, %main_bb36, %main_bb35
  %.0.i1.i9 = phi i64 [ %"87", %main_bb35 ], [ %"92", %main_bb37 ], [ %"72", %main_bb36 ], !dbg !142
  store i64 %.0.i1.i9, i64* @"'flag", align 8, !dbg !142
  br label %main_res_return.exit12, !dbg !188

main_res_return.exit12:                           ; preds = %main_wrap_around.exit.i8, %main_wrap_around.exit2.i10
  %.0.i11 = phi i64 [ %"83", %main_wrap_around.exit.i8 ], [ -1, %main_wrap_around.exit2.i10 ], !dbg !131
  %"93" = icmp eq i64 %.0.i11, 0, !dbg !131
  %"94" = zext i1 %"93" to i32, !dbg !131
  %"95" = sext i32 %"94" to i64, !dbg !131
  %"96" = icmp ne i64 %"95", 0, !dbg !131
  %. = select i1 %"96", i64 1, i64 %"95", !dbg !131
  br label %main_res_return.exit, !dbg !189

main_bb38:                                        ; preds = %main_bb19
  br i1 %"43", label %main_bb39, label %main_bb43, !dbg !190

main_bb39:                                        ; preds = %main_bb38
  br i1 %"45", label %main_bb40, label %main_bb41, !dbg !191

main_bb40:                                        ; preds = %main_bb39
  %"97" = sub nsw i64 %"44", 2147483647, !dbg !192
  %"98" = sub nsw i64 %"97", 1, !dbg !192
  %"99" = srem i64 %"98", 4294967296, !dbg !192
  %"100" = add nsw i64 -2147483648, %"99", !dbg !192
  br label %main_wrap_around.exit.i, !dbg !192

main_bb41:                                        ; preds = %main_bb39
  %"101" = icmp slt i64 %"44", -2147483648, !dbg !193
  br i1 %"101", label %main_bb42, label %main_wrap_around.exit.i, !dbg !193

main_bb42:                                        ; preds = %main_bb41
  %"102" = sub nsw i64 -2147483648, %"44", !dbg !194
  %"103" = sub nsw i64 %"102", 1, !dbg !194
  %"104" = srem i64 %"103", 4294967296, !dbg !194
  %"105" = sub nsw i64 2147483647, %"104", !dbg !194
  br label %main_wrap_around.exit.i, !dbg !194

main_wrap_around.exit.i:                          ; preds = %main_bb42, %main_bb41, %main_bb40
  %.0.i.i = phi i64 [ %"100", %main_bb40 ], [ %"105", %main_bb42 ], [ %"44", %main_bb41 ], !dbg !99
  store i64 %.0.i.i, i64* @"'flag", align 8, !dbg !99
  %"106" = call i64 @__VERIFIER_nondet_int() #3, !dbg !195
  br label %main_res_return.exit, !dbg !195

main_bb43:                                        ; preds = %main_bb38
  br i1 %"45", label %main_bb44, label %main_bb45, !dbg !196

main_bb44:                                        ; preds = %main_bb43
  %"107" = sub nsw i64 %"44", 2147483647, !dbg !197
  %"108" = sub nsw i64 %"107", 1, !dbg !197
  %"109" = srem i64 %"108", 4294967296, !dbg !197
  %"110" = add nsw i64 -2147483648, %"109", !dbg !197
  br label %main_wrap_around.exit2.i, !dbg !197

main_bb45:                                        ; preds = %main_bb43
  %"111" = icmp slt i64 %"44", -2147483648, !dbg !198
  br i1 %"111", label %main_bb46, label %main_wrap_around.exit2.i, !dbg !198

main_bb46:                                        ; preds = %main_bb45
  %"112" = sub nsw i64 -2147483648, %"44", !dbg !199
  %"113" = sub nsw i64 %"112", 1, !dbg !199
  %"114" = srem i64 %"113", 4294967296, !dbg !199
  %"115" = sub nsw i64 2147483647, %"114", !dbg !199
  br label %main_wrap_around.exit2.i, !dbg !199

main_wrap_around.exit2.i:                         ; preds = %main_bb46, %main_bb45, %main_bb44
  %.0.i1.i = phi i64 [ %"110", %main_bb44 ], [ %"115", %main_bb46 ], [ %"44", %main_bb45 ], !dbg !110
  store i64 %.0.i1.i, i64* @"'flag", align 8, !dbg !110
  br label %main_res_return.exit, !dbg !200

main_NewDefault:                                  ; preds = %main_LeafBlock13, %main_LeafBlock
  br label %main_bb17

main_bb47:                                        ; preds = %main_bb17
  ret i32 0, !dbg !201
}

declare i64 @__kittel_nondef.0()

; Function Attrs: nounwind readnone
declare void @llvm.dbg.value(metadata, i64, metadata) #1

declare i32 @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!21, !22}
!llvm.ident = !{!23}

!0 = metadata !{i32 786449, metadata !1, i32 12, metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)", i1 false, metadata !"", i32 0, metadata !2, metadata !2, metadata !3, metadata !19, metadata !2, metadata !"", i32 1} ; [ DW_TAG_compile_unit ] [//FILES_DIR/SourceCode_SemanticAugmentor.c] [DW_LANG_C99]
!1 = metadata !{metadata !"FILES_DIR/SourceCode_SemanticAugmentor.c", metadata !"/"}
!2 = metadata !{}
!3 = metadata !{metadata !4, metadata !9, metadata !12, metadata !15}
!4 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"wrap_around", metadata !"wrap_around", metadata !"", i32 9, metadata !6, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (i64, i64, i64)* @wrap_around, null, null, metadata !2, i32 9} ; [ DW_TAG_subprogram ] [line 9] [def] [wrap_around]
!5 = metadata !{i32 786473, metadata !1}          ; [ DW_TAG_file_type ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!6 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !7, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!7 = metadata !{metadata !8, metadata !8, metadata !8, metadata !8}
!8 = metadata !{i32 786468, null, null, metadata !"long long int", i32 0, i64 64, i64 64, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [long long int] [line 0, size 64, align 64, offset 0, enc DW_ATE_signed]
!9 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"matroska_deliver_packet", metadata !"matroska_deliver_packet", metadata !"", i32 19, metadata !10, i1 false, i1 true, i32 0, i32 0, null, i32 256, i1 false, i64 (i64)* @matroska_deliver_packet, null, null, metadata !2, i32 20} ; [ DW_TAG_subprogram ] [line 19] [def] [scope 20] [matroska_deliver_packet]
!10 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !11, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!11 = metadata !{metadata !8, metadata !8}
!12 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"res_return", metadata !"res_return", metadata !"", i32 29, metadata !13, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i64 ()* @res_return, null, null, metadata !2, i32 30} ; [ DW_TAG_subprogram ] [line 29] [def] [scope 30] [res_return]
!13 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !14, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!14 = metadata !{metadata !8}
!15 = metadata !{i32 786478, metadata !1, metadata !5, metadata !"main", metadata !"main", metadata !"", i32 39, metadata !16, i1 false, i1 true, i32 0, i32 0, null, i32 0, i1 false, i32 ()* @main, null, null, metadata !2, i32 40} ; [ DW_TAG_subprogram ] [line 39] [def] [scope 40] [main]
!16 = metadata !{i32 786453, i32 0, null, metadata !"", i32 0, i64 0, i64 0, i64 0, i32 0, null, metadata !17, i32 0, null, null, null} ; [ DW_TAG_subroutine_type ] [line 0, size 0, align 0, offset 0] [from ]
!17 = metadata !{metadata !18}
!18 = metadata !{i32 786468, null, null, metadata !"int", i32 0, i64 32, i64 32, i64 0, i32 0, i32 5} ; [ DW_TAG_base_type ] [int] [line 0, size 32, align 32, offset 0, enc DW_ATE_signed]
!19 = metadata !{metadata !20}
!20 = metadata !{i32 786484, i32 0, null, metadata !"flag", metadata !"flag", metadata !"", metadata !5, i32 28, metadata !8, i32 0, i32 1, i64* @"'flag", null} ; [ DW_TAG_variable ] [flag] [line 28] [def]
!21 = metadata !{i32 2, metadata !"Dwarf Version", i32 4}
!22 = metadata !{i32 2, metadata !"Debug Info Version", i32 1}
!23 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}
!24 = metadata !{i32 786689, metadata !4, metadata !"value", metadata !5, i32 16777225, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [value] [line 9]
!25 = metadata !{i32 9, i32 33, metadata !4, null}
!26 = metadata !{i32 786689, metadata !4, metadata !"lower_bound", metadata !5, i32 33554441, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [lower_bound] [line 9]
!27 = metadata !{i32 9, i32 50, metadata !4, null}
!28 = metadata !{i32 786689, metadata !4, metadata !"upper_bound", metadata !5, i32 50331657, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [upper_bound] [line 9]
!29 = metadata !{i32 9, i32 73, metadata !4, null}
!30 = metadata !{i32 10, i32 5, metadata !4, null}
!31 = metadata !{i32 786688, metadata !4, metadata !"range", metadata !5, i32 10, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [range] [line 10]
!32 = metadata !{i32 10, i32 15, metadata !4, null}
!33 = metadata !{i32 11, i32 9, metadata !34, null}
!34 = metadata !{i32 786443, metadata !1, metadata !4, i32 11, i32 9, i32 0, i32 0} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!35 = metadata !{i32 12, i32 9, metadata !36, null}
!36 = metadata !{i32 786443, metadata !1, metadata !34, i32 11, i32 30, i32 0, i32 1} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!37 = metadata !{i32 14, i32 14, metadata !38, null}
!38 = metadata !{i32 786443, metadata !1, metadata !34, i32 14, i32 14, i32 0, i32 2} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!39 = metadata !{i32 15, i32 9, metadata !40, null}
!40 = metadata !{i32 786443, metadata !1, metadata !38, i32 14, i32 35, i32 0, i32 3} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!41 = metadata !{i32 18, i32 1, metadata !4, null}
!42 = metadata !{i32 786689, metadata !9, metadata !"q", metadata !5, i32 16777235, metadata !8, i32 0, i32 0} ; [ DW_TAG_arg_variable ] [q] [line 19]
!43 = metadata !{i32 19, i32 46, metadata !9, null}
!44 = metadata !{i32 21, i32 9, metadata !45, null}
!45 = metadata !{i32 786443, metadata !1, metadata !9, i32 21, i32 9, i32 0, i32 4} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!46 = metadata !{i32 23, i32 9, metadata !47, null}
!47 = metadata !{i32 786443, metadata !1, metadata !45, i32 22, i32 1, i32 0, i32 5} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!48 = metadata !{i32 27, i32 1, metadata !9, null}
!49 = metadata !{i32 31, i32 9, metadata !50, null}
!50 = metadata !{i32 786443, metadata !1, metadata !12, i32 31, i32 9, i32 0, i32 6} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!51 = metadata !{i32 33, i32 8, metadata !52, null}
!52 = metadata !{i32 786443, metadata !1, metadata !50, i32 32, i32 1, i32 0, i32 7} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!53 = metadata !{i32 11, i32 9, metadata !34, metadata !51}
!54 = metadata !{i32 786689, metadata !4, metadata !"value", metadata !5, i32 16777225, metadata !8, i32 0, metadata !51} ; [ DW_TAG_arg_variable ] [value] [line 9]
!55 = metadata !{i32 9, i32 33, metadata !4, metadata !51}
!56 = metadata !{i64 -2147483648}
!57 = metadata !{i32 786689, metadata !4, metadata !"lower_bound", metadata !5, i32 33554441, metadata !8, i32 0, metadata !51} ; [ DW_TAG_arg_variable ] [lower_bound] [line 9]
!58 = metadata !{i32 9, i32 50, metadata !4, metadata !51}
!59 = metadata !{i64 2147483647}
!60 = metadata !{i32 786689, metadata !4, metadata !"upper_bound", metadata !5, i32 50331657, metadata !8, i32 0, metadata !51} ; [ DW_TAG_arg_variable ] [upper_bound] [line 9]
!61 = metadata !{i32 9, i32 73, metadata !4, metadata !51}
!62 = metadata !{i64 4294967296}
!63 = metadata !{i32 786688, metadata !4, metadata !"range", metadata !5, i32 10, metadata !8, i32 0, metadata !51} ; [ DW_TAG_auto_variable ] [range] [line 10]
!64 = metadata !{i32 10, i32 15, metadata !4, metadata !51}
!65 = metadata !{i32 12, i32 9, metadata !36, metadata !51}
!66 = metadata !{i32 14, i32 14, metadata !38, metadata !51}
!67 = metadata !{i32 15, i32 9, metadata !40, metadata !51}
!68 = metadata !{i32 34, i32 16, metadata !52, null}
!69 = metadata !{i32 786689, metadata !4, metadata !"value", metadata !5, i32 16777225, metadata !8, i32 0, metadata !70} ; [ DW_TAG_arg_variable ] [value] [line 9]
!70 = metadata !{i32 36, i32 8, metadata !12, null}
!71 = metadata !{i32 9, i32 33, metadata !4, metadata !70}
!72 = metadata !{i32 786689, metadata !4, metadata !"lower_bound", metadata !5, i32 33554441, metadata !8, i32 0, metadata !70} ; [ DW_TAG_arg_variable ] [lower_bound] [line 9]
!73 = metadata !{i32 9, i32 50, metadata !4, metadata !70}
!74 = metadata !{i32 786689, metadata !4, metadata !"upper_bound", metadata !5, i32 50331657, metadata !8, i32 0, metadata !70} ; [ DW_TAG_arg_variable ] [upper_bound] [line 9]
!75 = metadata !{i32 9, i32 73, metadata !4, metadata !70}
!76 = metadata !{i32 786688, metadata !4, metadata !"range", metadata !5, i32 10, metadata !8, i32 0, metadata !70} ; [ DW_TAG_auto_variable ] [range] [line 10]
!77 = metadata !{i32 10, i32 15, metadata !4, metadata !70}
!78 = metadata !{i32 11, i32 9, metadata !34, metadata !70}
!79 = metadata !{i32 12, i32 9, metadata !36, metadata !70}
!80 = metadata !{i32 14, i32 14, metadata !38, metadata !70}
!81 = metadata !{i32 15, i32 9, metadata !40, metadata !70}
!82 = metadata !{i32 37, i32 5, metadata !12, null}
!83 = metadata !{i32 38, i32 1, metadata !12, null}
!84 = metadata !{i32 41, i32 27, metadata !15, null}
!85 = metadata !{i32 786688, metadata !15, metadata !"matroska", metadata !5, i32 41, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [matroska] [line 41]
!86 = metadata !{i32 41, i32 15, metadata !15, null}
!87 = metadata !{i64 0}
!88 = metadata !{i32 786688, metadata !15, metadata !"res", metadata !5, i32 42, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [res] [line 42]
!89 = metadata !{i32 42, i32 15, metadata !15, null}
!90 = metadata !{i32 786689, metadata !9, metadata !"q", metadata !5, i32 16777235, metadata !8, i32 0, metadata !91} ; [ DW_TAG_arg_variable ] [q] [line 19]
!91 = metadata !{i32 43, i32 12, metadata !92, null}
!92 = metadata !{i32 786443, metadata !1, metadata !15, i32 43, i32 12, i32 1, i32 17} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!93 = metadata !{i32 19, i32 46, metadata !9, metadata !91}
!94 = metadata !{i32 786688, metadata !95, metadata !"id", metadata !5, i32 48, metadata !8, i32 0, i32 0} ; [ DW_TAG_auto_variable ] [id] [line 48]
!95 = metadata !{i32 786443, metadata !1, metadata !96, i32 47, i32 9, i32 0, i32 9} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!96 = metadata !{i32 786443, metadata !1, metadata !15, i32 44, i32 5, i32 0, i32 8} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!97 = metadata !{i32 48, i32 23, metadata !95, null}
!98 = metadata !{i32 786689, metadata !4, metadata !"value", metadata !5, i32 16777225, metadata !8, i32 0, metadata !99} ; [ DW_TAG_arg_variable ] [value] [line 9]
!99 = metadata !{i32 33, i32 8, metadata !52, metadata !100}
!100 = metadata !{i32 63, i32 27, metadata !101, null}
!101 = metadata !{i32 786443, metadata !1, metadata !95, i32 49, i32 25, i32 0, i32 10} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!102 = metadata !{i32 9, i32 33, metadata !4, metadata !99}
!103 = metadata !{i32 786689, metadata !4, metadata !"lower_bound", metadata !5, i32 33554441, metadata !8, i32 0, metadata !99} ; [ DW_TAG_arg_variable ] [lower_bound] [line 9]
!104 = metadata !{i32 9, i32 50, metadata !4, metadata !99}
!105 = metadata !{i32 786689, metadata !4, metadata !"upper_bound", metadata !5, i32 50331657, metadata !8, i32 0, metadata !99} ; [ DW_TAG_arg_variable ] [upper_bound] [line 9]
!106 = metadata !{i32 9, i32 73, metadata !4, metadata !99}
!107 = metadata !{i32 786688, metadata !4, metadata !"range", metadata !5, i32 10, metadata !8, i32 0, metadata !99} ; [ DW_TAG_auto_variable ] [range] [line 10]
!108 = metadata !{i32 10, i32 15, metadata !4, metadata !99}
!109 = metadata !{i32 786689, metadata !4, metadata !"value", metadata !5, i32 16777225, metadata !8, i32 0, metadata !110} ; [ DW_TAG_arg_variable ] [value] [line 9]
!110 = metadata !{i32 36, i32 8, metadata !12, metadata !100}
!111 = metadata !{i32 9, i32 33, metadata !4, metadata !110}
!112 = metadata !{i32 786689, metadata !4, metadata !"lower_bound", metadata !5, i32 33554441, metadata !8, i32 0, metadata !110} ; [ DW_TAG_arg_variable ] [lower_bound] [line 9]
!113 = metadata !{i32 9, i32 50, metadata !4, metadata !110}
!114 = metadata !{i32 786689, metadata !4, metadata !"upper_bound", metadata !5, i32 50331657, metadata !8, i32 0, metadata !110} ; [ DW_TAG_arg_variable ] [upper_bound] [line 9]
!115 = metadata !{i32 9, i32 73, metadata !4, metadata !110}
!116 = metadata !{i32 786688, metadata !4, metadata !"range", metadata !5, i32 10, metadata !8, i32 0, metadata !110} ; [ DW_TAG_auto_variable ] [range] [line 10]
!117 = metadata !{i32 10, i32 15, metadata !4, metadata !110}
!118 = metadata !{i32 786689, metadata !4, metadata !"value", metadata !5, i32 16777225, metadata !8, i32 0, metadata !119} ; [ DW_TAG_arg_variable ] [value] [line 9]
!119 = metadata !{i32 33, i32 8, metadata !52, metadata !120}
!120 = metadata !{i32 51, i32 31, metadata !121, null}
!121 = metadata !{i32 786443, metadata !1, metadata !101, i32 51, i32 25, i32 0, i32 11} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!122 = metadata !{i32 9, i32 33, metadata !4, metadata !119}
!123 = metadata !{i32 786689, metadata !4, metadata !"lower_bound", metadata !5, i32 33554441, metadata !8, i32 0, metadata !119} ; [ DW_TAG_arg_variable ] [lower_bound] [line 9]
!124 = metadata !{i32 9, i32 50, metadata !4, metadata !119}
!125 = metadata !{i32 786689, metadata !4, metadata !"upper_bound", metadata !5, i32 50331657, metadata !8, i32 0, metadata !119} ; [ DW_TAG_arg_variable ] [upper_bound] [line 9]
!126 = metadata !{i32 9, i32 73, metadata !4, metadata !119}
!127 = metadata !{i32 786688, metadata !4, metadata !"range", metadata !5, i32 10, metadata !8, i32 0, metadata !119} ; [ DW_TAG_auto_variable ] [range] [line 10]
!128 = metadata !{i32 10, i32 15, metadata !4, metadata !119}
!129 = metadata !{i32 786689, metadata !4, metadata !"value", metadata !5, i32 16777225, metadata !8, i32 0, metadata !130} ; [ DW_TAG_arg_variable ] [value] [line 9]
!130 = metadata !{i32 33, i32 8, metadata !52, metadata !131}
!131 = metadata !{i32 55, i32 31, metadata !132, null}
!132 = metadata !{i32 786443, metadata !1, metadata !101, i32 55, i32 25, i32 0, i32 13} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!133 = metadata !{i32 9, i32 33, metadata !4, metadata !130}
!134 = metadata !{i32 786689, metadata !4, metadata !"lower_bound", metadata !5, i32 33554441, metadata !8, i32 0, metadata !130} ; [ DW_TAG_arg_variable ] [lower_bound] [line 9]
!135 = metadata !{i32 9, i32 50, metadata !4, metadata !130}
!136 = metadata !{i32 786689, metadata !4, metadata !"upper_bound", metadata !5, i32 50331657, metadata !8, i32 0, metadata !130} ; [ DW_TAG_arg_variable ] [upper_bound] [line 9]
!137 = metadata !{i32 9, i32 73, metadata !4, metadata !130}
!138 = metadata !{i32 786688, metadata !4, metadata !"range", metadata !5, i32 10, metadata !8, i32 0, metadata !130} ; [ DW_TAG_auto_variable ] [range] [line 10]
!139 = metadata !{i32 10, i32 15, metadata !4, metadata !130}
!140 = metadata !{i64 1}
!141 = metadata !{i32 786689, metadata !4, metadata !"value", metadata !5, i32 16777225, metadata !8, i32 0, metadata !142} ; [ DW_TAG_arg_variable ] [value] [line 9]
!142 = metadata !{i32 36, i32 8, metadata !12, metadata !131}
!143 = metadata !{i32 9, i32 33, metadata !4, metadata !142}
!144 = metadata !{i32 786689, metadata !4, metadata !"lower_bound", metadata !5, i32 33554441, metadata !8, i32 0, metadata !142} ; [ DW_TAG_arg_variable ] [lower_bound] [line 9]
!145 = metadata !{i32 9, i32 50, metadata !4, metadata !142}
!146 = metadata !{i32 786689, metadata !4, metadata !"upper_bound", metadata !5, i32 50331657, metadata !8, i32 0, metadata !142} ; [ DW_TAG_arg_variable ] [upper_bound] [line 9]
!147 = metadata !{i32 9, i32 73, metadata !4, metadata !142}
!148 = metadata !{i32 786688, metadata !4, metadata !"range", metadata !5, i32 10, metadata !8, i32 0, metadata !142} ; [ DW_TAG_auto_variable ] [range] [line 10]
!149 = metadata !{i32 10, i32 15, metadata !4, metadata !142}
!150 = metadata !{i32 786689, metadata !4, metadata !"value", metadata !5, i32 16777225, metadata !8, i32 0, metadata !151} ; [ DW_TAG_arg_variable ] [value] [line 9]
!151 = metadata !{i32 36, i32 8, metadata !12, metadata !120}
!152 = metadata !{i32 9, i32 33, metadata !4, metadata !151}
!153 = metadata !{i32 786689, metadata !4, metadata !"lower_bound", metadata !5, i32 33554441, metadata !8, i32 0, metadata !151} ; [ DW_TAG_arg_variable ] [lower_bound] [line 9]
!154 = metadata !{i32 9, i32 50, metadata !4, metadata !151}
!155 = metadata !{i32 786689, metadata !4, metadata !"upper_bound", metadata !5, i32 50331657, metadata !8, i32 0, metadata !151} ; [ DW_TAG_arg_variable ] [upper_bound] [line 9]
!156 = metadata !{i32 9, i32 73, metadata !4, metadata !151}
!157 = metadata !{i32 786688, metadata !4, metadata !"range", metadata !5, i32 10, metadata !8, i32 0, metadata !151} ; [ DW_TAG_auto_variable ] [range] [line 10]
!158 = metadata !{i32 10, i32 15, metadata !4, metadata !151}
!159 = metadata !{i32 43, i32 5, metadata !15, null}
!160 = metadata !{i32 21, i32 9, metadata !45, metadata !91}
!161 = metadata !{i32 23, i32 9, metadata !47, metadata !91}
!162 = metadata !{i32 70, i32 1, metadata !163, null}
!163 = metadata !{i32 786443, metadata !1, metadata !164, i32 68, i32 1, i32 0, i32 16} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!164 = metadata !{i32 786443, metadata !1, metadata !96, i32 67, i32 13, i32 0, i32 15} ; [ DW_TAG_lexical_block ] [//FILES_DIR/SourceCode_SemanticAugmentor.c]
!165 = metadata !{i32 48, i32 29, metadata !95, null}
!166 = metadata !{i32 49, i32 13, metadata !95, null}
!167 = metadata !{i32 31, i32 9, metadata !50, metadata !120}
!168 = metadata !{i32 11, i32 9, metadata !34, metadata !119}
!169 = metadata !{i32 12, i32 9, metadata !36, metadata !119}
!170 = metadata !{i32 14, i32 14, metadata !38, metadata !119}
!171 = metadata !{i32 15, i32 9, metadata !40, metadata !119}
!172 = metadata !{i32 34, i32 16, metadata !52, metadata !120}
!173 = metadata !{i32 11, i32 9, metadata !34, metadata !151}
!174 = metadata !{i32 12, i32 9, metadata !36, metadata !151}
!175 = metadata !{i32 14, i32 14, metadata !38, metadata !151}
!176 = metadata !{i32 15, i32 9, metadata !40, metadata !151}
!177 = metadata !{i32 37, i32 5, metadata !12, metadata !120}
!178 = metadata !{i32 31, i32 9, metadata !50, metadata !131}
!179 = metadata !{i32 11, i32 9, metadata !34, metadata !130}
!180 = metadata !{i32 12, i32 9, metadata !36, metadata !130}
!181 = metadata !{i32 14, i32 14, metadata !38, metadata !130}
!182 = metadata !{i32 15, i32 9, metadata !40, metadata !130}
!183 = metadata !{i32 34, i32 16, metadata !52, metadata !131}
!184 = metadata !{i32 11, i32 9, metadata !34, metadata !142}
!185 = metadata !{i32 12, i32 9, metadata !36, metadata !142}
!186 = metadata !{i32 14, i32 14, metadata !38, metadata !142}
!187 = metadata !{i32 15, i32 9, metadata !40, metadata !142}
!188 = metadata !{i32 37, i32 5, metadata !12, metadata !131}
!189 = metadata !{i32 59, i32 21, metadata !101, null}
!190 = metadata !{i32 31, i32 9, metadata !50, metadata !100}
!191 = metadata !{i32 11, i32 9, metadata !34, metadata !99}
!192 = metadata !{i32 12, i32 9, metadata !36, metadata !99}
!193 = metadata !{i32 14, i32 14, metadata !38, metadata !99}
!194 = metadata !{i32 15, i32 9, metadata !40, metadata !99}
!195 = metadata !{i32 34, i32 16, metadata !52, metadata !100}
!196 = metadata !{i32 11, i32 9, metadata !34, metadata !110}
!197 = metadata !{i32 12, i32 9, metadata !36, metadata !110}
!198 = metadata !{i32 14, i32 14, metadata !38, metadata !110}
!199 = metadata !{i32 15, i32 9, metadata !40, metadata !110}
!200 = metadata !{i32 37, i32 5, metadata !12, metadata !100}
!201 = metadata !{i32 72, i32 5, metadata !15, null}

