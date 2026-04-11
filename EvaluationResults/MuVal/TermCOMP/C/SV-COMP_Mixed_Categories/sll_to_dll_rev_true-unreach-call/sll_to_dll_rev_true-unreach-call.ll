; ModuleID = 'Benchmarks/TermCOMP/C/SV-COMP_Mixed_Categories/sll_to_dll_rev_true-unreach-call/sll_to_dll_rev_true-unreach-call.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { %struct.node*, %struct.node* }

; Function Attrs: nounwind uwtable
define void @init_back_link(%struct.node* %list) #0 {
init_back_link_bb0:
  br label %init_back_link_bb1

init_back_link_bb1:                               ; preds = %init_back_link_bb2, %init_back_link_bb0
  %.0 = phi %struct.node* [ %list, %init_back_link_bb0 ], [ %"1", %init_back_link_bb2 ]
  %"0" = getelementptr inbounds %struct.node* %.0, i32 0, i32 0
  %"1" = load %struct.node** %"0", align 8
  %"2" = icmp ne %struct.node* %"1", null
  br i1 %"2", label %init_back_link_bb2, label %init_back_link_bb3

init_back_link_bb2:                               ; preds = %init_back_link_bb1
  %"3" = getelementptr inbounds %struct.node* %"1", i32 0, i32 1
  store %struct.node* %.0, %struct.node** %"3", align 8
  br label %init_back_link_bb1

init_back_link_bb3:                               ; preds = %init_back_link_bb1
  ret void
}

; Function Attrs: nounwind uwtable
define void @reverse_dll(%struct.node* %list) #0 {
reverse_dll_bb4:
  br label %reverse_dll_bb5

reverse_dll_bb5:                                  ; preds = %reverse_dll_bb6, %reverse_dll_bb4
  %.0 = phi %struct.node* [ %list, %reverse_dll_bb4 ], [ %"6", %reverse_dll_bb6 ]
  %"4" = icmp ne %struct.node* %.0, null
  br i1 %"4", label %reverse_dll_bb6, label %reverse_dll_bb7

reverse_dll_bb6:                                  ; preds = %reverse_dll_bb5
  %"5" = getelementptr inbounds %struct.node* %.0, i32 0, i32 0
  %"6" = load %struct.node** %"5", align 8
  %"7" = getelementptr inbounds %struct.node* %.0, i32 0, i32 1
  %"8" = load %struct.node** %"7", align 8
  %"9" = getelementptr inbounds %struct.node* %.0, i32 0, i32 0
  store %struct.node* %"8", %struct.node** %"9", align 8
  %"10" = getelementptr inbounds %struct.node* %.0, i32 0, i32 1
  store %struct.node* %"6", %struct.node** %"10", align 8
  br label %reverse_dll_bb5

reverse_dll_bb7:                                  ; preds = %reverse_dll_bb5
  ret void
}

; Function Attrs: nounwind uwtable
define void @remove_fw_link(%struct.node* %list) #0 {
remove_fw_link_bb8:
  br label %remove_fw_link_bb9

remove_fw_link_bb9:                               ; preds = %remove_fw_link_bb10, %remove_fw_link_bb8
  %.0 = phi %struct.node* [ %list, %remove_fw_link_bb8 ], [ %"13", %remove_fw_link_bb10 ]
  %"11" = icmp ne %struct.node* %.0, null
  br i1 %"11", label %remove_fw_link_bb10, label %remove_fw_link_bb11

remove_fw_link_bb10:                              ; preds = %remove_fw_link_bb9
  %"12" = getelementptr inbounds %struct.node* %.0, i32 0, i32 0
  %"13" = load %struct.node** %"12", align 8
  %"14" = getelementptr inbounds %struct.node* %.0, i32 0, i32 0
  store %struct.node* null, %struct.node** %"14", align 8
  br label %remove_fw_link_bb9

remove_fw_link_bb11:                              ; preds = %remove_fw_link_bb9
  ret void
}

; Function Attrs: nounwind uwtable
define void @check_seq_next(%struct.node* %beg, %struct.node* %end) #0 {
check_seq_next_bb12:
  %"15" = icmp ne %struct.node* %beg, null
  br i1 %"15", label %check_seq_next_bb13, label %check_seq_next_bb21

check_seq_next_bb13:                              ; preds = %check_seq_next_bb12
  %"16" = icmp ne %struct.node* %end, null
  br i1 %"16", label %check_seq_next_bb14, label %check_seq_next_bb20

check_seq_next_bb14:                              ; preds = %check_seq_next_bb13
  %"17" = getelementptr inbounds %struct.node* %beg, i32 0, i32 0
  %"18" = load %struct.node** %"17", align 8
  br label %check_seq_next_bb15

check_seq_next_bb15:                              ; preds = %check_seq_next_bb17, %check_seq_next_bb14
  %.0 = phi %struct.node* [ %"18", %check_seq_next_bb14 ], [ %"22", %check_seq_next_bb17 ]
  %"19" = icmp ne %struct.node* %end, %.0
  br i1 %"19", label %check_seq_next_bb16, label %check_seq_next_bb19

check_seq_next_bb16:                              ; preds = %check_seq_next_bb15
  %"20" = icmp ne %struct.node* %.0, null
  br i1 %"20", label %check_seq_next_bb17, label %check_seq_next_bb18

check_seq_next_bb17:                              ; preds = %check_seq_next_bb16
  %"21" = getelementptr inbounds %struct.node* %.0, i32 0, i32 0
  %"22" = load %struct.node** %"21", align 8
  br label %check_seq_next_bb15

check_seq_next_bb18:                              ; preds = %check_seq_next_bb16
  call void (...)* @__VERIFIER_error() #5
  unreachable

check_seq_next_bb19:                              ; preds = %check_seq_next_bb15
  ret void

check_seq_next_bb20:                              ; preds = %check_seq_next_bb13
  call void (...)* @__VERIFIER_error() #5
  unreachable

check_seq_next_bb21:                              ; preds = %check_seq_next_bb12
  call void (...)* @__VERIFIER_error() #5
  unreachable
}

; Function Attrs: nounwind uwtable
define void @check_seq_prev(%struct.node* %beg, %struct.node* %end) #0 {
check_seq_prev_bb22:
  %"23" = icmp ne %struct.node* %beg, null
  br i1 %"23", label %check_seq_prev_bb23, label %check_seq_prev_bb31

check_seq_prev_bb23:                              ; preds = %check_seq_prev_bb22
  %"24" = icmp ne %struct.node* %end, null
  br i1 %"24", label %check_seq_prev_bb24, label %check_seq_prev_bb30

check_seq_prev_bb24:                              ; preds = %check_seq_prev_bb23
  %"25" = getelementptr inbounds %struct.node* %beg, i32 0, i32 1
  %"26" = load %struct.node** %"25", align 8
  br label %check_seq_prev_bb25

check_seq_prev_bb25:                              ; preds = %check_seq_prev_bb27, %check_seq_prev_bb24
  %.0 = phi %struct.node* [ %"26", %check_seq_prev_bb24 ], [ %"30", %check_seq_prev_bb27 ]
  %"27" = icmp ne %struct.node* %end, %.0
  br i1 %"27", label %check_seq_prev_bb26, label %check_seq_prev_bb29

check_seq_prev_bb26:                              ; preds = %check_seq_prev_bb25
  %"28" = icmp ne %struct.node* %.0, null
  br i1 %"28", label %check_seq_prev_bb27, label %check_seq_prev_bb28

check_seq_prev_bb27:                              ; preds = %check_seq_prev_bb26
  %"29" = getelementptr inbounds %struct.node* %.0, i32 0, i32 1
  %"30" = load %struct.node** %"29", align 8
  br label %check_seq_prev_bb25

check_seq_prev_bb28:                              ; preds = %check_seq_prev_bb26
  call void (...)* @__VERIFIER_error() #5
  unreachable

check_seq_prev_bb29:                              ; preds = %check_seq_prev_bb25
  ret void

check_seq_prev_bb30:                              ; preds = %check_seq_prev_bb23
  call void (...)* @__VERIFIER_error() #5
  unreachable

check_seq_prev_bb31:                              ; preds = %check_seq_prev_bb22
  call void (...)* @__VERIFIER_error() #5
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb32:
  br label %main_bb33

main_bb33:                                        ; preds = %main_chain_node.exit.i, %main_bb32
  %list.0.i = phi %struct.node* [ null, %main_bb32 ], [ %"32", %main_chain_node.exit.i ]
  %"31" = call noalias i8* @malloc(i64 16) #6
  %"32" = bitcast i8* %"31" to %struct.node*
  %"33" = icmp ne %struct.node* %"32", null
  br i1 %"33", label %main_chain_node.exit.i, label %main_bb95

main_chain_node.exit.i:                           ; preds = %main_bb33
  %"34" = getelementptr inbounds %struct.node* %"32", i32 0, i32 0
  store %struct.node* null, %struct.node** %"34", align 8
  %"35" = getelementptr inbounds %struct.node* %"32", i32 0, i32 1
  store %struct.node* null, %struct.node** %"35", align 8
  %"36" = getelementptr inbounds %struct.node* %"32", i32 0, i32 0
  store %struct.node* %list.0.i, %struct.node** %"36", align 8
  %"37" = call i32 @__VERIFIER_nondet_int() #6
  %"38" = icmp ne i32 %"37", 0
  br i1 %"38", label %main_bb33, label %main_bb34

main_bb34:                                        ; preds = %main_chain_node.exit.i, %main_chain_node.exit1.i
  %list.1.i = phi %struct.node* [ %"40", %main_chain_node.exit1.i ], [ %"32", %main_chain_node.exit.i ]
  %"39" = call noalias i8* @malloc(i64 16) #6
  %"40" = bitcast i8* %"39" to %struct.node*
  %"41" = icmp ne %struct.node* %"40", null
  br i1 %"41", label %main_chain_node.exit1.i, label %main_bb94

main_chain_node.exit1.i:                          ; preds = %main_bb34
  %"42" = getelementptr inbounds %struct.node* %"40", i32 0, i32 0
  store %struct.node* null, %struct.node** %"42", align 8
  %"43" = getelementptr inbounds %struct.node* %"40", i32 0, i32 1
  store %struct.node* null, %struct.node** %"43", align 8
  %"44" = getelementptr inbounds %struct.node* %"40", i32 0, i32 0
  store %struct.node* %list.1.i, %struct.node** %"44", align 8
  %"45" = call i32 @__VERIFIER_nondet_int() #6
  %"46" = icmp ne i32 %"45", 0
  br i1 %"46", label %main_bb34, label %main_bb35

main_bb35:                                        ; preds = %main_chain_node.exit1.i, %main_chain_node.exit2.i
  %list.2.i = phi %struct.node* [ %"48", %main_chain_node.exit2.i ], [ %"40", %main_chain_node.exit1.i ]
  %"47" = call noalias i8* @malloc(i64 16) #6
  %"48" = bitcast i8* %"47" to %struct.node*
  %"49" = icmp ne %struct.node* %"48", null
  br i1 %"49", label %main_chain_node.exit2.i, label %main_bb93

main_chain_node.exit2.i:                          ; preds = %main_bb35
  %"50" = getelementptr inbounds %struct.node* %"48", i32 0, i32 0
  store %struct.node* null, %struct.node** %"50", align 8
  %"51" = getelementptr inbounds %struct.node* %"48", i32 0, i32 1
  store %struct.node* null, %struct.node** %"51", align 8
  %"52" = getelementptr inbounds %struct.node* %"48", i32 0, i32 0
  store %struct.node* %list.2.i, %struct.node** %"52", align 8
  %"53" = call i32 @__VERIFIER_nondet_int() #6
  %"54" = icmp ne i32 %"53", 0
  br i1 %"54", label %main_bb35, label %main_create_sll.exit

main_create_sll.exit:                             ; preds = %main_chain_node.exit2.i
  %"55" = icmp ne %struct.node* %"40", null
  br i1 %"55", label %main_bb36, label %main_bb92

main_bb36:                                        ; preds = %main_create_sll.exit
  %"56" = icmp ne %struct.node* %"32", null
  br i1 %"56", label %main_bb37, label %main_bb91

main_bb37:                                        ; preds = %main_bb36
  %"57" = getelementptr inbounds %struct.node* %"40", i32 0, i32 0
  %"58" = load %struct.node** %"57", align 8
  br label %main_bb38

main_bb38:                                        ; preds = %main_bb40, %main_bb37
  %.0.i = phi %struct.node* [ %"58", %main_bb37 ], [ %"62", %main_bb40 ]
  %"59" = icmp ne %struct.node* %"32", %.0.i
  br i1 %"59", label %main_bb39, label %main_check_seq_next.exit

main_bb39:                                        ; preds = %main_bb38
  %"60" = icmp ne %struct.node* %.0.i, null
  br i1 %"60", label %main_bb40, label %main_bb41

main_bb40:                                        ; preds = %main_bb39
  %"61" = getelementptr inbounds %struct.node* %.0.i, i32 0, i32 0
  %"62" = load %struct.node** %"61", align 8
  br label %main_bb38

main_bb41:                                        ; preds = %main_bb39
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_check_seq_next.exit:                         ; preds = %main_bb38
  %"63" = getelementptr inbounds %struct.node* %"40", i32 0, i32 1
  %"64" = load %struct.node** %"63", align 8
  %"65" = icmp ne %struct.node* %"64", null
  br i1 %"65", label %main_bb42, label %main_bb43

main_bb42:                                        ; preds = %main_check_seq_next.exit
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_bb43:                                        ; preds = %main_check_seq_next.exit
  %"66" = getelementptr inbounds %struct.node* %"32", i32 0, i32 1
  %"67" = load %struct.node** %"66", align 8
  %"68" = icmp ne %struct.node* %"67", null
  br i1 %"68", label %main_bb44, label %main_bb45

main_bb44:                                        ; preds = %main_bb43
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_bb45:                                        ; preds = %main_bb43, %main_bb46
  %.0.i2 = phi %struct.node* [ %"70", %main_bb46 ], [ %"48", %main_bb43 ]
  %"69" = getelementptr inbounds %struct.node* %.0.i2, i32 0, i32 0
  %"70" = load %struct.node** %"69", align 8
  %"71" = icmp ne %struct.node* %"70", null
  br i1 %"71", label %main_bb46, label %main_init_back_link.exit

main_bb46:                                        ; preds = %main_bb45
  %"72" = getelementptr inbounds %struct.node* %"70", i32 0, i32 1
  store %struct.node* %.0.i2, %struct.node** %"72", align 8
  br label %main_bb45

main_init_back_link.exit:                         ; preds = %main_bb45
  %"73" = icmp ne %struct.node* %"40", null
  br i1 %"73", label %main_bb47, label %main_bb90

main_bb47:                                        ; preds = %main_init_back_link.exit
  %"74" = icmp ne %struct.node* %"32", null
  br i1 %"74", label %main_bb48, label %main_bb89

main_bb48:                                        ; preds = %main_bb47
  %"75" = getelementptr inbounds %struct.node* %"40", i32 0, i32 0
  %"76" = load %struct.node** %"75", align 8
  br label %main_bb49

main_bb49:                                        ; preds = %main_bb51, %main_bb48
  %.0.i3 = phi %struct.node* [ %"76", %main_bb48 ], [ %"80", %main_bb51 ]
  %"77" = icmp ne %struct.node* %"32", %.0.i3
  br i1 %"77", label %main_bb50, label %main_check_seq_next.exit4

main_bb50:                                        ; preds = %main_bb49
  %"78" = icmp ne %struct.node* %.0.i3, null
  br i1 %"78", label %main_bb51, label %main_bb52

main_bb51:                                        ; preds = %main_bb50
  %"79" = getelementptr inbounds %struct.node* %.0.i3, i32 0, i32 0
  %"80" = load %struct.node** %"79", align 8
  br label %main_bb49

main_bb52:                                        ; preds = %main_bb50
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_check_seq_next.exit4:                        ; preds = %main_bb49
  %"81" = icmp ne %struct.node* %"32", null
  br i1 %"81", label %main_bb53, label %main_bb88

main_bb53:                                        ; preds = %main_check_seq_next.exit4
  %"82" = icmp ne %struct.node* %"40", null
  br i1 %"82", label %main_bb54, label %main_bb87

main_bb54:                                        ; preds = %main_bb53
  %"83" = getelementptr inbounds %struct.node* %"32", i32 0, i32 1
  %"84" = load %struct.node** %"83", align 8
  br label %main_bb55

main_bb55:                                        ; preds = %main_bb57, %main_bb54
  %.0.i5 = phi %struct.node* [ %"84", %main_bb54 ], [ %"88", %main_bb57 ]
  %"85" = icmp ne %struct.node* %"40", %.0.i5
  br i1 %"85", label %main_bb56, label %main_check_seq_prev.exit

main_bb56:                                        ; preds = %main_bb55
  %"86" = icmp ne %struct.node* %.0.i5, null
  br i1 %"86", label %main_bb57, label %main_bb58

main_bb57:                                        ; preds = %main_bb56
  %"87" = getelementptr inbounds %struct.node* %.0.i5, i32 0, i32 1
  %"88" = load %struct.node** %"87", align 8
  br label %main_bb55

main_bb58:                                        ; preds = %main_bb56
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_check_seq_prev.exit:                         ; preds = %main_bb55, %main_bb59
  %.0.i6 = phi %struct.node* [ %"91", %main_bb59 ], [ %"48", %main_bb55 ]
  %"89" = icmp ne %struct.node* %.0.i6, null
  br i1 %"89", label %main_bb59, label %main_reverse_dll.exit

main_bb59:                                        ; preds = %main_check_seq_prev.exit
  %"90" = getelementptr inbounds %struct.node* %.0.i6, i32 0, i32 0
  %"91" = load %struct.node** %"90", align 8
  %"92" = getelementptr inbounds %struct.node* %.0.i6, i32 0, i32 1
  %"93" = load %struct.node** %"92", align 8
  %"94" = getelementptr inbounds %struct.node* %.0.i6, i32 0, i32 0
  store %struct.node* %"93", %struct.node** %"94", align 8
  %"95" = getelementptr inbounds %struct.node* %.0.i6, i32 0, i32 1
  store %struct.node* %"91", %struct.node** %"95", align 8
  br label %main_check_seq_prev.exit

main_reverse_dll.exit:                            ; preds = %main_check_seq_prev.exit
  %"96" = icmp ne %struct.node* %"40", null
  br i1 %"96", label %main_bb60, label %main_bb86

main_bb60:                                        ; preds = %main_reverse_dll.exit
  %"97" = icmp ne %struct.node* %"32", null
  br i1 %"97", label %main_bb61, label %main_bb85

main_bb61:                                        ; preds = %main_bb60
  %"98" = getelementptr inbounds %struct.node* %"40", i32 0, i32 1
  %"99" = load %struct.node** %"98", align 8
  br label %main_bb62

main_bb62:                                        ; preds = %main_bb64, %main_bb61
  %.0.i7 = phi %struct.node* [ %"99", %main_bb61 ], [ %"103", %main_bb64 ]
  %"100" = icmp ne %struct.node* %"32", %.0.i7
  br i1 %"100", label %main_bb63, label %main_check_seq_prev.exit8

main_bb63:                                        ; preds = %main_bb62
  %"101" = icmp ne %struct.node* %.0.i7, null
  br i1 %"101", label %main_bb64, label %main_bb65

main_bb64:                                        ; preds = %main_bb63
  %"102" = getelementptr inbounds %struct.node* %.0.i7, i32 0, i32 1
  %"103" = load %struct.node** %"102", align 8
  br label %main_bb62

main_bb65:                                        ; preds = %main_bb63
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_check_seq_prev.exit8:                        ; preds = %main_bb62
  %"104" = icmp ne %struct.node* %"32", null
  br i1 %"104", label %main_bb66, label %main_bb84

main_bb66:                                        ; preds = %main_check_seq_prev.exit8
  %"105" = icmp ne %struct.node* %"40", null
  br i1 %"105", label %main_bb67, label %main_bb83

main_bb67:                                        ; preds = %main_bb66
  %"106" = getelementptr inbounds %struct.node* %"32", i32 0, i32 0
  %"107" = load %struct.node** %"106", align 8
  br label %main_bb68

main_bb68:                                        ; preds = %main_bb70, %main_bb67
  %.0.i9 = phi %struct.node* [ %"107", %main_bb67 ], [ %"111", %main_bb70 ]
  %"108" = icmp ne %struct.node* %"40", %.0.i9
  br i1 %"108", label %main_bb69, label %main_check_seq_next.exit10

main_bb69:                                        ; preds = %main_bb68
  %"109" = icmp ne %struct.node* %.0.i9, null
  br i1 %"109", label %main_bb70, label %main_bb71

main_bb70:                                        ; preds = %main_bb69
  %"110" = getelementptr inbounds %struct.node* %.0.i9, i32 0, i32 0
  %"111" = load %struct.node** %"110", align 8
  br label %main_bb68

main_bb71:                                        ; preds = %main_bb69
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_check_seq_next.exit10:                       ; preds = %main_bb68, %main_bb72
  %.0.i11 = phi %struct.node* [ %"114", %main_bb72 ], [ %"48", %main_bb68 ]
  %"112" = icmp ne %struct.node* %.0.i11, null
  br i1 %"112", label %main_bb72, label %main_remove_fw_link.exit

main_bb72:                                        ; preds = %main_check_seq_next.exit10
  %"113" = getelementptr inbounds %struct.node* %.0.i11, i32 0, i32 0
  %"114" = load %struct.node** %"113", align 8
  %"115" = getelementptr inbounds %struct.node* %.0.i11, i32 0, i32 0
  store %struct.node* null, %struct.node** %"115", align 8
  br label %main_check_seq_next.exit10

main_remove_fw_link.exit:                         ; preds = %main_check_seq_next.exit10
  %"116" = icmp ne %struct.node* %"40", null
  br i1 %"116", label %main_bb73, label %main_bb82

main_bb73:                                        ; preds = %main_remove_fw_link.exit
  %"117" = icmp ne %struct.node* %"32", null
  br i1 %"117", label %main_bb74, label %main_bb81

main_bb74:                                        ; preds = %main_bb73
  %"118" = getelementptr inbounds %struct.node* %"40", i32 0, i32 1
  %"119" = load %struct.node** %"118", align 8
  br label %main_bb75

main_bb75:                                        ; preds = %main_bb77, %main_bb74
  %.0.i12 = phi %struct.node* [ %"119", %main_bb74 ], [ %"123", %main_bb77 ]
  %"120" = icmp ne %struct.node* %"32", %.0.i12
  br i1 %"120", label %main_bb76, label %main_check_seq_prev.exit13

main_bb76:                                        ; preds = %main_bb75
  %"121" = icmp ne %struct.node* %.0.i12, null
  br i1 %"121", label %main_bb77, label %main_bb78

main_bb77:                                        ; preds = %main_bb76
  %"122" = getelementptr inbounds %struct.node* %.0.i12, i32 0, i32 1
  %"123" = load %struct.node** %"122", align 8
  br label %main_bb75

main_bb78:                                        ; preds = %main_bb76
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_check_seq_prev.exit13:                       ; preds = %main_bb75, %main_bb79
  %list.0 = phi %struct.node* [ %"126", %main_bb79 ], [ %"48", %main_bb75 ]
  %"124" = icmp ne %struct.node* %list.0, null
  br i1 %"124", label %main_bb79, label %main_bb80

main_bb79:                                        ; preds = %main_check_seq_prev.exit13
  %"125" = getelementptr inbounds %struct.node* %list.0, i32 0, i32 1
  %"126" = load %struct.node** %"125", align 8
  %"127" = bitcast %struct.node* %list.0 to i8*
  call void @free(i8* %"127") #6
  br label %main_check_seq_prev.exit13

main_bb80:                                        ; preds = %main_check_seq_prev.exit13
  ret i32 0

main_bb81:                                        ; preds = %main_bb73
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_bb82:                                        ; preds = %main_remove_fw_link.exit
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_bb83:                                        ; preds = %main_bb66
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_bb84:                                        ; preds = %main_check_seq_prev.exit8
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_bb85:                                        ; preds = %main_bb60
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_bb86:                                        ; preds = %main_reverse_dll.exit
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_bb87:                                        ; preds = %main_bb53
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_bb88:                                        ; preds = %main_check_seq_next.exit4
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_bb89:                                        ; preds = %main_bb47
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_bb90:                                        ; preds = %main_init_back_link.exit
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_bb91:                                        ; preds = %main_bb36
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_bb92:                                        ; preds = %main_create_sll.exit
  call void (...)* @__VERIFIER_error() #5
  unreachable

main_bb93:                                        ; preds = %main_bb35
  call void @abort() #5
  unreachable

main_bb94:                                        ; preds = %main_bb34
  call void @abort() #5
  unreachable

main_bb95:                                        ; preds = %main_bb33
  call void @abort() #5
  unreachable
}

; Function Attrs: nounwind
declare void @free(i8*) #1

declare i32 @__VERIFIER_nondet_int() #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: noreturn nounwind
declare void @abort() #3

; Function Attrs: noreturn
declare void @__VERIFIER_error(...) #4

declare %struct.node* @__kittel_nondef.0()

declare %struct.node** @__kittel_nondef.1()

declare i32 @__kittel_nondef.2()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { noreturn nounwind }
attributes #6 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

