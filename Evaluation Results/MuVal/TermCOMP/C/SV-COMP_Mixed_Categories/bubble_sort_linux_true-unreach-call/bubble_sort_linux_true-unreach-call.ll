; ModuleID = 'Benchmarks/TermCOMP/C/SV-COMP_Mixed_Categories/bubble_sort_linux_true-unreach-call/bubble_sort_linux_true-unreach-call.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.node = type { i32, %struct.list_head, %struct.list_head }

@gl_list = global %struct.list_head { %struct.list_head* @gl_list, %struct.list_head* @gl_list }, align 8

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  br label %main_bb1

main_bb1:                                         ; preds = %main_gl_insert.exit.i, %main_bb0
  %"0" = call i32 @__VERIFIER_nondet_int() #5
  %"1" = call noalias i8* @malloc(i64 40) #5
  %"2" = bitcast i8* %"1" to %struct.node*
  %"3" = icmp ne %struct.node* %"2", null
  br i1 %"3", label %main_gl_insert.exit.i, label %main_bb62

main_gl_insert.exit.i:                            ; preds = %main_bb1
  %"4" = getelementptr inbounds %struct.node* %"2", i32 0, i32 0
  store i32 %"0", i32* %"4", align 4
  %"5" = getelementptr inbounds %struct.node* %"2", i32 0, i32 1
  %"6" = getelementptr %struct.list_head* @gl_list, i32 0, i32 0
  %"7" = load %struct.list_head** %"6", align 8
  %"8" = getelementptr inbounds %struct.list_head* %"7", i32 0, i32 1
  store %struct.list_head* %"5", %struct.list_head** %"8", align 8
  %"9" = getelementptr inbounds %struct.list_head* %"5", i32 0, i32 0
  store %struct.list_head* %"7", %struct.list_head** %"9", align 8
  %"10" = getelementptr inbounds %struct.list_head* %"5", i32 0, i32 1
  store %struct.list_head* @gl_list, %struct.list_head** %"10", align 8
  %"11" = getelementptr %struct.list_head* @gl_list, i32 0, i32 0
  store %struct.list_head* %"5", %struct.list_head** %"11", align 8
  %"12" = getelementptr inbounds %struct.node* %"2", i32 0, i32 2
  %"13" = getelementptr inbounds %struct.node* %"2", i32 0, i32 2
  %"14" = getelementptr inbounds %struct.list_head* %"13", i32 0, i32 0
  store %struct.list_head* %"12", %struct.list_head** %"14", align 8
  %"15" = getelementptr inbounds %struct.node* %"2", i32 0, i32 2
  %"16" = getelementptr inbounds %struct.node* %"2", i32 0, i32 2
  %"17" = getelementptr inbounds %struct.list_head* %"16", i32 0, i32 1
  store %struct.list_head* %"15", %struct.list_head** %"17", align 8
  %"18" = call i32 @__VERIFIER_nondet_int() #5
  %"19" = icmp ne i32 %"18", 0
  br i1 %"19", label %main_bb1, label %main_gl_read.exit

main_gl_read.exit:                                ; preds = %main_gl_insert.exit.i
  %"20" = getelementptr %struct.list_head* @gl_list, i32 0, i32 0
  %"21" = load %struct.list_head** %"20", align 8
  %"22" = icmp ne %struct.list_head* %"21", @gl_list
  br i1 %"22", label %main_bb2, label %main_bb61

main_bb2:                                         ; preds = %main_gl_read.exit
  %"23" = getelementptr %struct.list_head* @gl_list, i32 0, i32 1
  %"24" = load %struct.list_head** %"23", align 8
  %"25" = icmp ne %struct.list_head* %"24", @gl_list
  br i1 %"25", label %main_bb3, label %main_bb60

main_bb3:                                         ; preds = %main_bb2
  %"26" = getelementptr %struct.list_head* @gl_list, i32 0, i32 1
  %"27" = load %struct.list_head** %"26", align 8
  %"28" = icmp ne %struct.list_head* %"27", null
  br i1 %"28", label %main_bb4, label %main_bb59

main_bb4:                                         ; preds = %main_bb3
  %"29" = getelementptr inbounds %struct.list_head* %"27", i32 0, i32 0
  %"30" = load %struct.list_head** %"29", align 8
  %"31" = icmp ne %struct.list_head* %"30", %"27"
  br i1 %"31", label %main_bb5, label %main_bb58

main_bb5:                                         ; preds = %main_bb4
  %"32" = getelementptr inbounds %struct.list_head* %"27", i32 0, i32 1
  %"33" = load %struct.list_head** %"32", align 8
  %"34" = icmp ne %struct.list_head* %"33", %"27"
  br i1 %"34", label %main_bb6, label %main_bb57

main_bb6:                                         ; preds = %main_bb5
  %"35" = bitcast %struct.list_head* %"27" to i8*
  %"36" = getelementptr inbounds i8* %"35", i64 -8
  %"37" = bitcast i8* %"36" to %struct.node*
  %"38" = icmp ne %struct.node* %"37", null
  br i1 %"38", label %main_bb7, label %main_bb56

main_bb7:                                         ; preds = %main_bb6
  %"39" = getelementptr inbounds %struct.node* %"37", i32 0, i32 2
  %"40" = getelementptr inbounds %struct.list_head* %"39", i32 0, i32 0
  %"41" = load %struct.list_head** %"40", align 8
  %"42" = getelementptr inbounds %struct.node* %"37", i32 0, i32 2
  %"43" = icmp eq %struct.list_head* %"41", %"42"
  br i1 %"43", label %main_bb8, label %main_bb55

main_bb8:                                         ; preds = %main_bb7
  %"44" = getelementptr inbounds %struct.node* %"37", i32 0, i32 2
  %"45" = getelementptr inbounds %struct.list_head* %"44", i32 0, i32 1
  %"46" = load %struct.list_head** %"45", align 8
  %"47" = getelementptr inbounds %struct.node* %"37", i32 0, i32 2
  %"48" = icmp eq %struct.list_head* %"46", %"47"
  br i1 %"48", label %main_bb9, label %main_bb54

main_bb9:                                         ; preds = %main_bb8
  %"49" = getelementptr inbounds %struct.node* %"37", i32 0, i32 2
  %"50" = getelementptr inbounds %struct.list_head* %"49", i32 0, i32 0
  %"51" = load %struct.list_head** %"50", align 8
  %"52" = getelementptr inbounds %struct.node* %"37", i32 0, i32 1
  %"53" = icmp ne %struct.list_head* %"51", %"52"
  br i1 %"53", label %main_bb10, label %main_bb53

main_bb10:                                        ; preds = %main_bb9
  %"54" = getelementptr inbounds %struct.node* %"37", i32 0, i32 2
  %"55" = getelementptr inbounds %struct.list_head* %"54", i32 0, i32 1
  %"56" = load %struct.list_head** %"55", align 8
  %"57" = getelementptr inbounds %struct.node* %"37", i32 0, i32 1
  %"58" = icmp ne %struct.list_head* %"56", %"57"
  br i1 %"58", label %main_bb11, label %main_bb52

main_bb11:                                        ; preds = %main_bb10
  %"59" = getelementptr inbounds %struct.node* %"37", i32 0, i32 1
  %"60" = getelementptr inbounds %struct.list_head* %"59", i32 0, i32 0
  %"61" = load %struct.list_head** %"60", align 8
  %"62" = getelementptr inbounds %struct.list_head* %"61", i32 0, i32 1
  %"63" = load %struct.list_head** %"62", align 8
  %"64" = icmp eq %struct.list_head* %"27", %"63"
  br i1 %"64", label %main_bb12, label %main_bb51

main_bb12:                                        ; preds = %main_bb11
  %"65" = getelementptr inbounds %struct.node* %"37", i32 0, i32 1
  %"66" = getelementptr inbounds %struct.list_head* %"65", i32 0, i32 1
  %"67" = load %struct.list_head** %"66", align 8
  %"68" = getelementptr inbounds %struct.list_head* %"67", i32 0, i32 0
  %"69" = load %struct.list_head** %"68", align 8
  %"70" = icmp eq %struct.list_head* %"27", %"69"
  br i1 %"70", label %main_bb13, label %main_bb50

main_bb13:                                        ; preds = %main_bb12
  %"71" = getelementptr inbounds %struct.list_head* %"27", i32 0, i32 0
  %"72" = load %struct.list_head** %"71", align 8
  %"73" = getelementptr inbounds %struct.node* %"37", i32 0, i32 1
  br label %main_bb14

main_bb14:                                        ; preds = %main_bb15, %main_bb13
  %.0.i = phi %struct.list_head* [ %"72", %main_bb13 ], [ %"76", %main_bb15 ]
  %"74" = icmp ne %struct.list_head* %"73", %.0.i
  br i1 %"74", label %main_bb15, label %main_bb16

main_bb15:                                        ; preds = %main_bb14
  %"75" = getelementptr inbounds %struct.list_head* %.0.i, i32 0, i32 0
  %"76" = load %struct.list_head** %"75", align 8
  br label %main_bb14

main_bb16:                                        ; preds = %main_bb14
  %"77" = bitcast %struct.list_head* %.0.i to i8*
  %"78" = getelementptr inbounds i8* %"77", i64 -8
  %"79" = bitcast i8* %"78" to %struct.node*
  %"80" = icmp eq %struct.node* %"79", %"37"
  br i1 %"80", label %main_inspect.exit, label %main_bb49

main_inspect.exit:                                ; preds = %main_bb16, %main_gl_sort_pass.exit.i
  %"81" = getelementptr %struct.list_head* @gl_list, i32 0, i32 0
  %"82" = load %struct.list_head** %"81", align 8
  br label %main_bb17

main_bb17:                                        ; preds = %main_bb19, %main_bb18, %main_inspect.exit
  %pos0.0.i.i = phi %struct.list_head* [ %"82", %main_inspect.exit ], [ %pos0.0.i.i, %main_bb19 ], [ %"84", %main_bb18 ]
  %any_change.0.i.i = phi i8 [ 0, %main_inspect.exit ], [ 1, %main_bb19 ], [ %any_change.0.i.i, %main_bb18 ]
  %"83" = getelementptr inbounds %struct.list_head* %pos0.0.i.i, i32 0, i32 0
  %"84" = load %struct.list_head** %"83", align 8
  %"85" = icmp ne %struct.list_head* @gl_list, %"84"
  br i1 %"85", label %main_bb18, label %main_gl_sort_pass.exit.i

main_bb18:                                        ; preds = %main_bb17
  %"86" = bitcast %struct.list_head* %pos0.0.i.i to i8*
  %"87" = getelementptr inbounds i8* %"86", i64 -8
  %"88" = bitcast i8* %"87" to %struct.node*
  %"89" = getelementptr inbounds %struct.node* %"88", i32 0, i32 0
  %"90" = load i32* %"89", align 4
  %"91" = bitcast %struct.list_head* %"84" to i8*
  %"92" = getelementptr inbounds i8* %"91", i64 -8
  %"93" = bitcast i8* %"92" to %struct.node*
  %"94" = getelementptr inbounds %struct.node* %"93", i32 0, i32 0
  %"95" = load i32* %"94", align 4
  %"96" = icmp sle i32 %"90", %"95"
  br i1 %"96", label %main_bb17, label %main_bb19

main_bb19:                                        ; preds = %main_bb18
  %"97" = getelementptr inbounds %struct.list_head* %pos0.0.i.i, i32 0, i32 1
  %"98" = load %struct.list_head** %"97", align 8
  %"99" = getelementptr inbounds %struct.list_head* %pos0.0.i.i, i32 0, i32 0
  %"100" = load %struct.list_head** %"99", align 8
  %"101" = getelementptr inbounds %struct.list_head* %"100", i32 0, i32 1
  store %struct.list_head* %"98", %struct.list_head** %"101", align 8
  %"102" = getelementptr inbounds %struct.list_head* %"98", i32 0, i32 0
  store %struct.list_head* %"100", %struct.list_head** %"102", align 8
  %"103" = getelementptr inbounds %struct.list_head* %"84", i32 0, i32 0
  %"104" = load %struct.list_head** %"103", align 8
  %"105" = getelementptr inbounds %struct.list_head* %"104", i32 0, i32 1
  store %struct.list_head* %pos0.0.i.i, %struct.list_head** %"105", align 8
  %"106" = getelementptr inbounds %struct.list_head* %pos0.0.i.i, i32 0, i32 0
  store %struct.list_head* %"104", %struct.list_head** %"106", align 8
  %"107" = getelementptr inbounds %struct.list_head* %pos0.0.i.i, i32 0, i32 1
  store %struct.list_head* %"84", %struct.list_head** %"107", align 8
  %"108" = getelementptr inbounds %struct.list_head* %"84", i32 0, i32 0
  store %struct.list_head* %pos0.0.i.i, %struct.list_head** %"108", align 8
  br label %main_bb17

main_gl_sort_pass.exit.i:                         ; preds = %main_bb17
  %"109" = trunc i8 %any_change.0.i.i to i1
  br i1 %"109", label %main_inspect.exit, label %main_gl_sort.exit

main_gl_sort.exit:                                ; preds = %main_gl_sort_pass.exit.i
  %"110" = getelementptr %struct.list_head* @gl_list, i32 0, i32 0
  %"111" = load %struct.list_head** %"110", align 8
  %"112" = icmp ne %struct.list_head* %"111", @gl_list
  br i1 %"112", label %main_bb20, label %main_bb48

main_bb20:                                        ; preds = %main_gl_sort.exit
  %"113" = getelementptr %struct.list_head* @gl_list, i32 0, i32 1
  %"114" = load %struct.list_head** %"113", align 8
  %"115" = icmp ne %struct.list_head* %"114", @gl_list
  br i1 %"115", label %main_bb21, label %main_bb47

main_bb21:                                        ; preds = %main_bb20
  %"116" = getelementptr %struct.list_head* @gl_list, i32 0, i32 1
  %"117" = load %struct.list_head** %"116", align 8
  %"118" = icmp ne %struct.list_head* %"117", null
  br i1 %"118", label %main_bb22, label %main_bb46

main_bb22:                                        ; preds = %main_bb21
  %"119" = getelementptr inbounds %struct.list_head* %"117", i32 0, i32 0
  %"120" = load %struct.list_head** %"119", align 8
  %"121" = icmp ne %struct.list_head* %"120", %"117"
  br i1 %"121", label %main_bb23, label %main_bb45

main_bb23:                                        ; preds = %main_bb22
  %"122" = getelementptr inbounds %struct.list_head* %"117", i32 0, i32 1
  %"123" = load %struct.list_head** %"122", align 8
  %"124" = icmp ne %struct.list_head* %"123", %"117"
  br i1 %"124", label %main_bb24, label %main_bb44

main_bb24:                                        ; preds = %main_bb23
  %"125" = bitcast %struct.list_head* %"117" to i8*
  %"126" = getelementptr inbounds i8* %"125", i64 -8
  %"127" = bitcast i8* %"126" to %struct.node*
  %"128" = icmp ne %struct.node* %"127", null
  br i1 %"128", label %main_bb25, label %main_bb43

main_bb25:                                        ; preds = %main_bb24
  %"129" = getelementptr inbounds %struct.node* %"127", i32 0, i32 2
  %"130" = getelementptr inbounds %struct.list_head* %"129", i32 0, i32 0
  %"131" = load %struct.list_head** %"130", align 8
  %"132" = getelementptr inbounds %struct.node* %"127", i32 0, i32 2
  %"133" = icmp eq %struct.list_head* %"131", %"132"
  br i1 %"133", label %main_bb26, label %main_bb42

main_bb26:                                        ; preds = %main_bb25
  %"134" = getelementptr inbounds %struct.node* %"127", i32 0, i32 2
  %"135" = getelementptr inbounds %struct.list_head* %"134", i32 0, i32 1
  %"136" = load %struct.list_head** %"135", align 8
  %"137" = getelementptr inbounds %struct.node* %"127", i32 0, i32 2
  %"138" = icmp eq %struct.list_head* %"136", %"137"
  br i1 %"138", label %main_bb27, label %main_bb41

main_bb27:                                        ; preds = %main_bb26
  %"139" = getelementptr inbounds %struct.node* %"127", i32 0, i32 2
  %"140" = getelementptr inbounds %struct.list_head* %"139", i32 0, i32 0
  %"141" = load %struct.list_head** %"140", align 8
  %"142" = getelementptr inbounds %struct.node* %"127", i32 0, i32 1
  %"143" = icmp ne %struct.list_head* %"141", %"142"
  br i1 %"143", label %main_bb28, label %main_bb40

main_bb28:                                        ; preds = %main_bb27
  %"144" = getelementptr inbounds %struct.node* %"127", i32 0, i32 2
  %"145" = getelementptr inbounds %struct.list_head* %"144", i32 0, i32 1
  %"146" = load %struct.list_head** %"145", align 8
  %"147" = getelementptr inbounds %struct.node* %"127", i32 0, i32 1
  %"148" = icmp ne %struct.list_head* %"146", %"147"
  br i1 %"148", label %main_bb29, label %main_bb39

main_bb29:                                        ; preds = %main_bb28
  %"149" = getelementptr inbounds %struct.node* %"127", i32 0, i32 1
  %"150" = getelementptr inbounds %struct.list_head* %"149", i32 0, i32 0
  %"151" = load %struct.list_head** %"150", align 8
  %"152" = getelementptr inbounds %struct.list_head* %"151", i32 0, i32 1
  %"153" = load %struct.list_head** %"152", align 8
  %"154" = icmp eq %struct.list_head* %"117", %"153"
  br i1 %"154", label %main_bb30, label %main_bb38

main_bb30:                                        ; preds = %main_bb29
  %"155" = getelementptr inbounds %struct.node* %"127", i32 0, i32 1
  %"156" = getelementptr inbounds %struct.list_head* %"155", i32 0, i32 1
  %"157" = load %struct.list_head** %"156", align 8
  %"158" = getelementptr inbounds %struct.list_head* %"157", i32 0, i32 0
  %"159" = load %struct.list_head** %"158", align 8
  %"160" = icmp eq %struct.list_head* %"117", %"159"
  br i1 %"160", label %main_bb31, label %main_bb37

main_bb31:                                        ; preds = %main_bb30
  %"161" = getelementptr inbounds %struct.list_head* %"117", i32 0, i32 0
  %"162" = load %struct.list_head** %"161", align 8
  %"163" = getelementptr inbounds %struct.node* %"127", i32 0, i32 1
  br label %main_bb32

main_bb32:                                        ; preds = %main_bb33, %main_bb31
  %.0.i1 = phi %struct.list_head* [ %"162", %main_bb31 ], [ %"166", %main_bb33 ]
  %"164" = icmp ne %struct.list_head* %"163", %.0.i1
  br i1 %"164", label %main_bb33, label %main_bb34

main_bb33:                                        ; preds = %main_bb32
  %"165" = getelementptr inbounds %struct.list_head* %.0.i1, i32 0, i32 0
  %"166" = load %struct.list_head** %"165", align 8
  br label %main_bb32

main_bb34:                                        ; preds = %main_bb32
  %"167" = bitcast %struct.list_head* %.0.i1 to i8*
  %"168" = getelementptr inbounds i8* %"167", i64 -8
  %"169" = bitcast i8* %"168" to %struct.node*
  %"170" = icmp eq %struct.node* %"169", %"127"
  br i1 %"170", label %main_inspect.exit2, label %main_bb36

main_inspect.exit2:                               ; preds = %main_bb34, %main_bb35
  %"171" = getelementptr %struct.list_head* @gl_list, i32 0, i32 0
  %"172" = load %struct.list_head** %"171", align 8
  %"173" = icmp ne %struct.list_head* @gl_list, %"172"
  br i1 %"173", label %main_bb35, label %main_gl_destroy.exit

main_bb35:                                        ; preds = %main_inspect.exit2
  %"174" = getelementptr inbounds %struct.list_head* %"172", i32 0, i32 0
  %"175" = load %struct.list_head** %"174", align 8
  %"176" = getelementptr %struct.list_head* @gl_list, i32 0, i32 0
  store %struct.list_head* %"175", %struct.list_head** %"176", align 8
  %"177" = bitcast %struct.list_head* %"172" to i8*
  %"178" = getelementptr inbounds i8* %"177", i64 -8
  %"179" = bitcast i8* %"178" to %struct.node*
  %"180" = bitcast %struct.node* %"179" to i8*
  call void @free(i8* %"180") #5
  br label %main_inspect.exit2

main_gl_destroy.exit:                             ; preds = %main_inspect.exit2
  ret i32 0

main_bb36:                                        ; preds = %main_bb34
  call void (...)* @__VERIFIER_error() #6
  unreachable

main_bb37:                                        ; preds = %main_bb30
  call void (...)* @__VERIFIER_error() #6
  unreachable

main_bb38:                                        ; preds = %main_bb29
  call void (...)* @__VERIFIER_error() #6
  unreachable

main_bb39:                                        ; preds = %main_bb28
  call void (...)* @__VERIFIER_error() #6
  unreachable

main_bb40:                                        ; preds = %main_bb27
  call void (...)* @__VERIFIER_error() #6
  unreachable

main_bb41:                                        ; preds = %main_bb26
  call void (...)* @__VERIFIER_error() #6
  unreachable

main_bb42:                                        ; preds = %main_bb25
  call void (...)* @__VERIFIER_error() #6
  unreachable

main_bb43:                                        ; preds = %main_bb24
  call void (...)* @__VERIFIER_error() #6
  unreachable

main_bb44:                                        ; preds = %main_bb23
  call void (...)* @__VERIFIER_error() #6
  unreachable

main_bb45:                                        ; preds = %main_bb22
  call void (...)* @__VERIFIER_error() #6
  unreachable

main_bb46:                                        ; preds = %main_bb21
  call void (...)* @__VERIFIER_error() #6
  unreachable

main_bb47:                                        ; preds = %main_bb20
  call void (...)* @__VERIFIER_error() #6
  unreachable

main_bb48:                                        ; preds = %main_gl_sort.exit
  call void (...)* @__VERIFIER_error() #6
  unreachable

main_bb49:                                        ; preds = %main_bb16
  call void (...)* @__VERIFIER_error() #6
  unreachable

main_bb50:                                        ; preds = %main_bb12
  call void (...)* @__VERIFIER_error() #6
  unreachable

main_bb51:                                        ; preds = %main_bb11
  call void (...)* @__VERIFIER_error() #6
  unreachable

main_bb52:                                        ; preds = %main_bb10
  call void (...)* @__VERIFIER_error() #6
  unreachable

main_bb53:                                        ; preds = %main_bb9
  call void (...)* @__VERIFIER_error() #6
  unreachable

main_bb54:                                        ; preds = %main_bb8
  call void (...)* @__VERIFIER_error() #6
  unreachable

main_bb55:                                        ; preds = %main_bb7
  call void (...)* @__VERIFIER_error() #6
  unreachable

main_bb56:                                        ; preds = %main_bb6
  call void (...)* @__VERIFIER_error() #6
  unreachable

main_bb57:                                        ; preds = %main_bb5
  call void (...)* @__VERIFIER_error() #6
  unreachable

main_bb58:                                        ; preds = %main_bb4
  call void (...)* @__VERIFIER_error() #6
  unreachable

main_bb59:                                        ; preds = %main_bb3
  call void (...)* @__VERIFIER_error() #6
  unreachable

main_bb60:                                        ; preds = %main_bb2
  call void (...)* @__VERIFIER_error() #6
  unreachable

main_bb61:                                        ; preds = %main_gl_read.exit
  call void (...)* @__VERIFIER_error() #6
  unreachable

main_bb62:                                        ; preds = %main_bb1
  call void @abort() #6
  unreachable
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: noreturn
declare void @__VERIFIER_error(...) #2

declare i32 @__VERIFIER_nondet_int() #3

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: noreturn nounwind
declare void @abort() #4

declare %struct.list_head* @__kittel_nondef.0()

declare i32 @__kittel_nondef.1()

declare %struct.node* @__kittel_nondef.2()

declare i8 @__kittel_nondef.3()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

