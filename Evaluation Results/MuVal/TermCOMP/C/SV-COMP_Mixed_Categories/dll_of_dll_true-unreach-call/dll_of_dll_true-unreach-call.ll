; ModuleID = 'Benchmarks/TermCOMP/C/SV-COMP_Mixed_Categories/dll_of_dll_true-unreach-call/dll_of_dll_true-unreach-call.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slave_item = type { %struct.slave_item*, %struct.slave_item* }
%struct.master_item = type { %struct.master_item*, %struct.master_item*, %struct.slave_item* }

; Function Attrs: nounwind uwtable
define %struct.slave_item* @alloc_or_die_slave() #0 {
alloc_or_die_slave_bb0:
  %"0" = call noalias i8* @malloc(i64 16) #5
  %"1" = bitcast i8* %"0" to %struct.slave_item*
  %"2" = icmp ne %struct.slave_item* %"1", null
  br i1 %"2", label %alloc_or_die_slave_bb1, label %alloc_or_die_slave_bb2

alloc_or_die_slave_bb1:                           ; preds = %alloc_or_die_slave_bb0
  %"3" = getelementptr inbounds %struct.slave_item* %"1", i32 0, i32 0
  store %struct.slave_item* null, %struct.slave_item** %"3", align 8
  %"4" = getelementptr inbounds %struct.slave_item* %"1", i32 0, i32 1
  store %struct.slave_item* null, %struct.slave_item** %"4", align 8
  ret %struct.slave_item* %"1"

alloc_or_die_slave_bb2:                           ; preds = %alloc_or_die_slave_bb0
  call void @abort() #6
  unreachable
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: noreturn nounwind
declare void @abort() #2

; Function Attrs: nounwind uwtable
define %struct.master_item* @alloc_or_die_master() #0 {
alloc_or_die_master_bb3:
  %"5" = call noalias i8* @malloc(i64 24) #5
  %"6" = bitcast i8* %"5" to %struct.master_item*
  %"7" = icmp ne %struct.master_item* %"6", null
  br i1 %"7", label %alloc_or_die_master_bb4, label %alloc_or_die_master_bb5

alloc_or_die_master_bb4:                          ; preds = %alloc_or_die_master_bb3
  %"8" = getelementptr inbounds %struct.master_item* %"6", i32 0, i32 0
  store %struct.master_item* null, %struct.master_item** %"8", align 8
  %"9" = getelementptr inbounds %struct.master_item* %"6", i32 0, i32 1
  store %struct.master_item* null, %struct.master_item** %"9", align 8
  %"10" = getelementptr inbounds %struct.master_item* %"6", i32 0, i32 2
  store %struct.slave_item* null, %struct.slave_item** %"10", align 8
  ret %struct.master_item* %"6"

alloc_or_die_master_bb5:                          ; preds = %alloc_or_die_master_bb3
  call void @abort() #6
  unreachable
}

; Function Attrs: nounwind uwtable
define void @dll_insert_slave(%struct.slave_item** %dll) #0 {
dll_insert_slave_bb6:
  %"11" = call noalias i8* @malloc(i64 16) #5
  %"12" = bitcast i8* %"11" to %struct.slave_item*
  %"13" = icmp ne %struct.slave_item* %"12", null
  br i1 %"13", label %dll_insert_slave_alloc_or_die_slave.exit, label %dll_insert_slave_bb9

dll_insert_slave_alloc_or_die_slave.exit:         ; preds = %dll_insert_slave_bb6
  %"14" = getelementptr inbounds %struct.slave_item* %"12", i32 0, i32 0
  store %struct.slave_item* null, %struct.slave_item** %"14", align 8
  %"15" = getelementptr inbounds %struct.slave_item* %"12", i32 0, i32 1
  store %struct.slave_item* null, %struct.slave_item** %"15", align 8
  %"16" = load %struct.slave_item** %dll, align 8
  %"17" = getelementptr inbounds %struct.slave_item* %"12", i32 0, i32 0
  store %struct.slave_item* %"16", %struct.slave_item** %"17", align 8
  %"18" = icmp ne %struct.slave_item* %"16", null
  br i1 %"18", label %dll_insert_slave_bb7, label %dll_insert_slave_bb8

dll_insert_slave_bb7:                             ; preds = %dll_insert_slave_alloc_or_die_slave.exit
  %"19" = getelementptr inbounds %struct.slave_item* %"16", i32 0, i32 1
  store %struct.slave_item* %"12", %struct.slave_item** %"19", align 8
  br label %dll_insert_slave_bb8

dll_insert_slave_bb8:                             ; preds = %dll_insert_slave_bb7, %dll_insert_slave_alloc_or_die_slave.exit
  store %struct.slave_item* %"12", %struct.slave_item** %dll, align 8
  ret void

dll_insert_slave_bb9:                             ; preds = %dll_insert_slave_bb6
  call void @abort() #6
  unreachable
}

; Function Attrs: nounwind uwtable
define i8* @dll_create_generic(void (...)* %insert_fnc) #0 {
dll_create_generic_bb10:
  %dll = alloca i8*, align 8
  store i8* null, i8** %dll, align 8
  %"20" = bitcast void (...)* %insert_fnc to void (i8**, ...)*
  call void (i8**, ...)* %"20"(i8** %dll)
  %"21" = bitcast void (...)* %insert_fnc to void (i8**, ...)*
  call void (i8**, ...)* %"21"(i8** %dll)
  %"22" = bitcast void (...)* %insert_fnc to void (i8**, ...)*
  br label %dll_create_generic_bb11

dll_create_generic_bb11:                          ; preds = %dll_create_generic_bb12, %dll_create_generic_bb10
  %"23" = call i32 @__VERIFIER_nondet_int()
  %"24" = icmp ne i32 %"23", 0
  br i1 %"24", label %dll_create_generic_bb12, label %dll_create_generic_bb13

dll_create_generic_bb12:                          ; preds = %dll_create_generic_bb11
  call void (i8**, ...)* %"22"(i8** %dll)
  br label %dll_create_generic_bb11

dll_create_generic_bb13:                          ; preds = %dll_create_generic_bb11
  %"25" = load i8** %dll, align 8
  ret i8* %"25"
}

declare i32 @__VERIFIER_nondet_int() #3

; Function Attrs: nounwind uwtable
define %struct.slave_item* @dll_create_slave() #0 {
dll_create_slave_bb14:
  %dll.i = alloca i8*, align 8
  %"26" = bitcast i8** %dll.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %"26")
  store i8* null, i8** %dll.i, align 8
  %"27" = bitcast void (%struct.slave_item**)* @dll_insert_slave to void (i8**, ...)*
  call void (i8**, ...)* %"27"(i8** %dll.i) #5
  %"28" = bitcast void (%struct.slave_item**)* @dll_insert_slave to void (i8**, ...)*
  call void (i8**, ...)* %"28"(i8** %dll.i) #5
  br label %dll_create_slave_bb15

dll_create_slave_bb15:                            ; preds = %dll_create_slave_bb16, %dll_create_slave_bb14
  %"29" = call i32 @__VERIFIER_nondet_int() #5
  %"30" = icmp ne i32 %"29", 0
  br i1 %"30", label %dll_create_slave_bb16, label %dll_create_slave_dll_create_generic.exit

dll_create_slave_bb16:                            ; preds = %dll_create_slave_bb15
  %"31" = bitcast void (%struct.slave_item**)* @dll_insert_slave to void (i8**, ...)*
  call void (i8**, ...)* %"31"(i8** %dll.i) #5
  br label %dll_create_slave_bb15

dll_create_slave_dll_create_generic.exit:         ; preds = %dll_create_slave_bb15
  %"32" = load i8** %dll.i, align 8
  %"33" = bitcast i8** %dll.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %"33")
  %"34" = bitcast i8* %"32" to %struct.slave_item*
  ret %struct.slave_item* %"34"
}

; Function Attrs: nounwind uwtable
define void @dll_destroy_slave(%struct.slave_item* %dll) #0 {
dll_destroy_slave_bb17:
  br label %dll_destroy_slave_bb18

dll_destroy_slave_bb18:                           ; preds = %dll_destroy_slave_bb19, %dll_destroy_slave_bb17
  %.0 = phi %struct.slave_item* [ %dll, %dll_destroy_slave_bb17 ], [ %"37", %dll_destroy_slave_bb19 ]
  %"35" = icmp ne %struct.slave_item* %.0, null
  br i1 %"35", label %dll_destroy_slave_bb19, label %dll_destroy_slave_bb20

dll_destroy_slave_bb19:                           ; preds = %dll_destroy_slave_bb18
  %"36" = getelementptr inbounds %struct.slave_item* %.0, i32 0, i32 0
  %"37" = load %struct.slave_item** %"36", align 8
  %"38" = bitcast %struct.slave_item* %.0 to i8*
  call void @free(i8* %"38") #5
  br label %dll_destroy_slave_bb18

dll_destroy_slave_bb20:                           ; preds = %dll_destroy_slave_bb18
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define void @dll_destroy_nested_lists(%struct.master_item* %dll) #0 {
dll_destroy_nested_lists_bb21:
  br label %dll_destroy_nested_lists_bb22

dll_destroy_nested_lists_bb22:                    ; preds = %dll_destroy_nested_lists_dll_destroy_slave.exit, %dll_destroy_nested_lists_bb21
  %.0 = phi %struct.master_item* [ %dll, %dll_destroy_nested_lists_bb21 ], [ %"47", %dll_destroy_nested_lists_dll_destroy_slave.exit ]
  %"39" = icmp ne %struct.master_item* %.0, null
  br i1 %"39", label %dll_destroy_nested_lists_bb23, label %dll_destroy_nested_lists_bb26

dll_destroy_nested_lists_bb23:                    ; preds = %dll_destroy_nested_lists_bb22
  %"40" = getelementptr inbounds %struct.master_item* %.0, i32 0, i32 2
  %"41" = load %struct.slave_item** %"40", align 8
  br label %dll_destroy_nested_lists_bb24

dll_destroy_nested_lists_bb24:                    ; preds = %dll_destroy_nested_lists_bb25, %dll_destroy_nested_lists_bb23
  %.0.i = phi %struct.slave_item* [ %"41", %dll_destroy_nested_lists_bb23 ], [ %"44", %dll_destroy_nested_lists_bb25 ]
  %"42" = icmp ne %struct.slave_item* %.0.i, null
  br i1 %"42", label %dll_destroy_nested_lists_bb25, label %dll_destroy_nested_lists_dll_destroy_slave.exit

dll_destroy_nested_lists_bb25:                    ; preds = %dll_destroy_nested_lists_bb24
  %"43" = getelementptr inbounds %struct.slave_item* %.0.i, i32 0, i32 0
  %"44" = load %struct.slave_item** %"43", align 8
  %"45" = bitcast %struct.slave_item* %.0.i to i8*
  call void @free(i8* %"45") #5
  br label %dll_destroy_nested_lists_bb24

dll_destroy_nested_lists_dll_destroy_slave.exit:  ; preds = %dll_destroy_nested_lists_bb24
  %"46" = getelementptr inbounds %struct.master_item* %.0, i32 0, i32 0
  %"47" = load %struct.master_item** %"46", align 8
  br label %dll_destroy_nested_lists_bb22

dll_destroy_nested_lists_bb26:                    ; preds = %dll_destroy_nested_lists_bb22
  ret void
}

; Function Attrs: nounwind uwtable
define void @dll_reinit_nested_lists(%struct.master_item* %dll) #0 {
dll_reinit_nested_lists_bb27:
  br label %dll_reinit_nested_lists_bb28

dll_reinit_nested_lists_bb28:                     ; preds = %dll_reinit_nested_lists_bb29, %dll_reinit_nested_lists_bb27
  %.0 = phi %struct.master_item* [ %dll, %dll_reinit_nested_lists_bb27 ], [ %"51", %dll_reinit_nested_lists_bb29 ]
  %"48" = icmp ne %struct.master_item* %.0, null
  br i1 %"48", label %dll_reinit_nested_lists_bb29, label %dll_reinit_nested_lists_bb30

dll_reinit_nested_lists_bb29:                     ; preds = %dll_reinit_nested_lists_bb28
  %"49" = getelementptr inbounds %struct.master_item* %.0, i32 0, i32 2
  store %struct.slave_item* null, %struct.slave_item** %"49", align 8
  %"50" = getelementptr inbounds %struct.master_item* %.0, i32 0, i32 0
  %"51" = load %struct.master_item** %"50", align 8
  br label %dll_reinit_nested_lists_bb28

dll_reinit_nested_lists_bb30:                     ; preds = %dll_reinit_nested_lists_bb28
  ret void
}

; Function Attrs: nounwind uwtable
define void @dll_destroy_master(%struct.master_item* %dll) #0 {
dll_destroy_master_bb31:
  br label %dll_destroy_master_bb32

dll_destroy_master_bb32:                          ; preds = %dll_destroy_master_bb33, %dll_destroy_master_bb31
  %.0 = phi %struct.master_item* [ %dll, %dll_destroy_master_bb31 ], [ %"54", %dll_destroy_master_bb33 ]
  %"52" = icmp ne %struct.master_item* %.0, null
  br i1 %"52", label %dll_destroy_master_bb33, label %dll_destroy_master_bb34

dll_destroy_master_bb33:                          ; preds = %dll_destroy_master_bb32
  %"53" = getelementptr inbounds %struct.master_item* %.0, i32 0, i32 0
  %"54" = load %struct.master_item** %"53", align 8
  %"55" = bitcast %struct.master_item* %.0 to i8*
  call void @free(i8* %"55") #5
  br label %dll_destroy_master_bb32

dll_destroy_master_bb34:                          ; preds = %dll_destroy_master_bb32
  ret void
}

; Function Attrs: nounwind uwtable
define void @dll_insert_master(%struct.master_item** %dll) #0 {
dll_insert_master_bb35:
  %dll.i.i = alloca i8*, align 8
  %"56" = call noalias i8* @malloc(i64 24) #5
  %"57" = bitcast i8* %"56" to %struct.master_item*
  %"58" = icmp ne %struct.master_item* %"57", null
  br i1 %"58", label %dll_insert_master_alloc_or_die_master.exit, label %dll_insert_master_bb40

dll_insert_master_alloc_or_die_master.exit:       ; preds = %dll_insert_master_bb35
  %"59" = getelementptr inbounds %struct.master_item* %"57", i32 0, i32 0
  store %struct.master_item* null, %struct.master_item** %"59", align 8
  %"60" = getelementptr inbounds %struct.master_item* %"57", i32 0, i32 1
  store %struct.master_item* null, %struct.master_item** %"60", align 8
  %"61" = getelementptr inbounds %struct.master_item* %"57", i32 0, i32 2
  store %struct.slave_item* null, %struct.slave_item** %"61", align 8
  %"62" = load %struct.master_item** %dll, align 8
  %"63" = getelementptr inbounds %struct.master_item* %"57", i32 0, i32 0
  store %struct.master_item* %"62", %struct.master_item** %"63", align 8
  %"64" = icmp ne %struct.master_item* %"62", null
  br i1 %"64", label %dll_insert_master_bb36, label %dll_insert_master_bb37

dll_insert_master_bb36:                           ; preds = %dll_insert_master_alloc_or_die_master.exit
  %"65" = getelementptr inbounds %struct.master_item* %"62", i32 0, i32 1
  store %struct.master_item* %"57", %struct.master_item** %"65", align 8
  br label %dll_insert_master_bb37

dll_insert_master_bb37:                           ; preds = %dll_insert_master_bb36, %dll_insert_master_alloc_or_die_master.exit
  %"66" = bitcast i8** %dll.i.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %"66") #5
  store i8* null, i8** %dll.i.i, align 8
  %"67" = bitcast void (%struct.slave_item**)* @dll_insert_slave to void (i8**, ...)*
  call void (i8**, ...)* %"67"(i8** %dll.i.i) #5
  %"68" = bitcast void (%struct.slave_item**)* @dll_insert_slave to void (i8**, ...)*
  call void (i8**, ...)* %"68"(i8** %dll.i.i) #5
  br label %dll_insert_master_bb38

dll_insert_master_bb38:                           ; preds = %dll_insert_master_bb39, %dll_insert_master_bb37
  %"69" = call i32 @__VERIFIER_nondet_int() #5
  %"70" = icmp ne i32 %"69", 0
  br i1 %"70", label %dll_insert_master_bb39, label %dll_insert_master_dll_create_slave.exit

dll_insert_master_bb39:                           ; preds = %dll_insert_master_bb38
  %"71" = bitcast void (%struct.slave_item**)* @dll_insert_slave to void (i8**, ...)*
  call void (i8**, ...)* %"71"(i8** %dll.i.i) #5
  br label %dll_insert_master_bb38

dll_insert_master_dll_create_slave.exit:          ; preds = %dll_insert_master_bb38
  %"72" = load i8** %dll.i.i, align 8
  %"73" = bitcast i8** %dll.i.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %"73") #5
  %"74" = bitcast i8* %"72" to %struct.slave_item*
  %"75" = getelementptr inbounds %struct.master_item* %"57", i32 0, i32 2
  store %struct.slave_item* %"74", %struct.slave_item** %"75", align 8
  store %struct.master_item* %"57", %struct.master_item** %dll, align 8
  ret void

dll_insert_master_bb40:                           ; preds = %dll_insert_master_bb35
  call void @abort() #6
  unreachable
}

; Function Attrs: nounwind uwtable
define %struct.master_item* @dll_create_master() #0 {
dll_create_master_bb41:
  %dll.i = alloca i8*, align 8
  %"76" = bitcast i8** %dll.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %"76")
  store i8* null, i8** %dll.i, align 8
  %"77" = bitcast void (%struct.master_item**)* @dll_insert_master to void (i8**, ...)*
  call void (i8**, ...)* %"77"(i8** %dll.i) #5
  %"78" = bitcast void (%struct.master_item**)* @dll_insert_master to void (i8**, ...)*
  call void (i8**, ...)* %"78"(i8** %dll.i) #5
  br label %dll_create_master_bb42

dll_create_master_bb42:                           ; preds = %dll_create_master_bb43, %dll_create_master_bb41
  %"79" = call i32 @__VERIFIER_nondet_int() #5
  %"80" = icmp ne i32 %"79", 0
  br i1 %"80", label %dll_create_master_bb43, label %dll_create_master_dll_create_generic.exit

dll_create_master_bb43:                           ; preds = %dll_create_master_bb42
  %"81" = bitcast void (%struct.master_item**)* @dll_insert_master to void (i8**, ...)*
  call void (i8**, ...)* %"81"(i8** %dll.i) #5
  br label %dll_create_master_bb42

dll_create_master_dll_create_generic.exit:        ; preds = %dll_create_master_bb42
  %"82" = load i8** %dll.i, align 8
  %"83" = bitcast i8** %dll.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %"83")
  %"84" = bitcast i8* %"82" to %struct.master_item*
  ret %struct.master_item* %"84"
}

; Function Attrs: nounwind uwtable
define void @inspect_base(%struct.master_item* %dll) #0 {
inspect_base_bb44:
  %"85" = icmp ne %struct.master_item* %dll, null
  br i1 %"85", label %inspect_base_bb45, label %inspect_base_bb59

inspect_base_bb45:                                ; preds = %inspect_base_bb44
  %"86" = getelementptr inbounds %struct.master_item* %dll, i32 0, i32 0
  %"87" = load %struct.master_item** %"86", align 8
  %"88" = icmp ne %struct.master_item* %"87", null
  br i1 %"88", label %inspect_base_bb46, label %inspect_base_bb58

inspect_base_bb46:                                ; preds = %inspect_base_bb45
  %"89" = getelementptr inbounds %struct.master_item* %dll, i32 0, i32 1
  %"90" = load %struct.master_item** %"89", align 8
  %"91" = icmp ne %struct.master_item* %"90", null
  br i1 %"91", label %inspect_base_bb47, label %inspect_base_bb48

inspect_base_bb47:                                ; preds = %inspect_base_bb46
  call void (...)* @__VERIFIER_error() #6
  unreachable

inspect_base_bb48:                                ; preds = %inspect_base_bb46
  %"92" = getelementptr inbounds %struct.master_item* %dll, i32 0, i32 0
  %"93" = load %struct.master_item** %"92", align 8
  br label %inspect_base_bb49

inspect_base_bb49:                                ; preds = %inspect_base_bb53, %inspect_base_bb48
  %.0 = phi %struct.master_item* [ %"93", %inspect_base_bb48 ], [ %"109", %inspect_base_bb53 ]
  %"94" = icmp ne %struct.master_item* %.0, null
  br i1 %"94", label %inspect_base_bb50, label %inspect_base_bb57

inspect_base_bb50:                                ; preds = %inspect_base_bb49
  %"95" = getelementptr inbounds %struct.master_item* %.0, i32 0, i32 1
  %"96" = load %struct.master_item** %"95", align 8
  %"97" = icmp ne %struct.master_item* %"96", null
  br i1 %"97", label %inspect_base_bb51, label %inspect_base_bb56

inspect_base_bb51:                                ; preds = %inspect_base_bb50
  %"98" = getelementptr inbounds %struct.master_item* %.0, i32 0, i32 1
  %"99" = load %struct.master_item** %"98", align 8
  %"100" = getelementptr inbounds %struct.master_item* %"99", i32 0, i32 0
  %"101" = load %struct.master_item** %"100", align 8
  %"102" = icmp ne %struct.master_item* %"101", null
  br i1 %"102", label %inspect_base_bb52, label %inspect_base_bb55

inspect_base_bb52:                                ; preds = %inspect_base_bb51
  %"103" = getelementptr inbounds %struct.master_item* %.0, i32 0, i32 1
  %"104" = load %struct.master_item** %"103", align 8
  %"105" = getelementptr inbounds %struct.master_item* %"104", i32 0, i32 0
  %"106" = load %struct.master_item** %"105", align 8
  %"107" = icmp eq %struct.master_item* %"106", %.0
  br i1 %"107", label %inspect_base_bb53, label %inspect_base_bb54

inspect_base_bb53:                                ; preds = %inspect_base_bb52
  %"108" = getelementptr inbounds %struct.master_item* %.0, i32 0, i32 0
  %"109" = load %struct.master_item** %"108", align 8
  br label %inspect_base_bb49

inspect_base_bb54:                                ; preds = %inspect_base_bb52
  call void (...)* @__VERIFIER_error() #6
  unreachable

inspect_base_bb55:                                ; preds = %inspect_base_bb51
  call void (...)* @__VERIFIER_error() #6
  unreachable

inspect_base_bb56:                                ; preds = %inspect_base_bb50
  call void (...)* @__VERIFIER_error() #6
  unreachable

inspect_base_bb57:                                ; preds = %inspect_base_bb49
  ret void

inspect_base_bb58:                                ; preds = %inspect_base_bb45
  call void (...)* @__VERIFIER_error() #6
  unreachable

inspect_base_bb59:                                ; preds = %inspect_base_bb44
  call void (...)* @__VERIFIER_error() #6
  unreachable
}

; Function Attrs: nounwind uwtable
define void @inspect_full(%struct.master_item* %dll) #0 {
inspect_full_bb60:
  %"110" = icmp ne %struct.master_item* %dll, null
  br i1 %"110", label %inspect_full_bb61, label %inspect_full_bb91

inspect_full_bb61:                                ; preds = %inspect_full_bb60
  %"111" = getelementptr inbounds %struct.master_item* %dll, i32 0, i32 0
  %"112" = load %struct.master_item** %"111", align 8
  %"113" = icmp ne %struct.master_item* %"112", null
  br i1 %"113", label %inspect_full_bb62, label %inspect_full_bb90

inspect_full_bb62:                                ; preds = %inspect_full_bb61
  %"114" = getelementptr inbounds %struct.master_item* %dll, i32 0, i32 1
  %"115" = load %struct.master_item** %"114", align 8
  %"116" = icmp ne %struct.master_item* %"115", null
  br i1 %"116", label %inspect_full_bb63, label %inspect_full_bb64

inspect_full_bb63:                                ; preds = %inspect_full_bb62
  call void (...)* @__VERIFIER_error() #6
  unreachable

inspect_full_bb64:                                ; preds = %inspect_full_bb62
  %"117" = getelementptr inbounds %struct.master_item* %dll, i32 0, i32 0
  %"118" = load %struct.master_item** %"117", align 8
  br label %inspect_full_bb65

inspect_full_bb65:                                ; preds = %inspect_full_bb69, %inspect_full_bb64
  %.0.i = phi %struct.master_item* [ %"118", %inspect_full_bb64 ], [ %"134", %inspect_full_bb69 ]
  %"119" = icmp ne %struct.master_item* %.0.i, null
  br i1 %"119", label %inspect_full_bb66, label %inspect_full_inspect_base.exit

inspect_full_bb66:                                ; preds = %inspect_full_bb65
  %"120" = getelementptr inbounds %struct.master_item* %.0.i, i32 0, i32 1
  %"121" = load %struct.master_item** %"120", align 8
  %"122" = icmp ne %struct.master_item* %"121", null
  br i1 %"122", label %inspect_full_bb67, label %inspect_full_bb72

inspect_full_bb67:                                ; preds = %inspect_full_bb66
  %"123" = getelementptr inbounds %struct.master_item* %.0.i, i32 0, i32 1
  %"124" = load %struct.master_item** %"123", align 8
  %"125" = getelementptr inbounds %struct.master_item* %"124", i32 0, i32 0
  %"126" = load %struct.master_item** %"125", align 8
  %"127" = icmp ne %struct.master_item* %"126", null
  br i1 %"127", label %inspect_full_bb68, label %inspect_full_bb71

inspect_full_bb68:                                ; preds = %inspect_full_bb67
  %"128" = getelementptr inbounds %struct.master_item* %.0.i, i32 0, i32 1
  %"129" = load %struct.master_item** %"128", align 8
  %"130" = getelementptr inbounds %struct.master_item* %"129", i32 0, i32 0
  %"131" = load %struct.master_item** %"130", align 8
  %"132" = icmp eq %struct.master_item* %"131", %.0.i
  br i1 %"132", label %inspect_full_bb69, label %inspect_full_bb70

inspect_full_bb69:                                ; preds = %inspect_full_bb68
  %"133" = getelementptr inbounds %struct.master_item* %.0.i, i32 0, i32 0
  %"134" = load %struct.master_item** %"133", align 8
  br label %inspect_full_bb65

inspect_full_bb70:                                ; preds = %inspect_full_bb68
  call void (...)* @__VERIFIER_error() #6
  unreachable

inspect_full_bb71:                                ; preds = %inspect_full_bb67
  call void (...)* @__VERIFIER_error() #6
  unreachable

inspect_full_bb72:                                ; preds = %inspect_full_bb66
  call void (...)* @__VERIFIER_error() #6
  unreachable

inspect_full_inspect_base.exit:                   ; preds = %inspect_full_bb65, %inspect_full_bb86
  %.0 = phi %struct.master_item* [ %"164", %inspect_full_bb86 ], [ %dll, %inspect_full_bb65 ]
  %"135" = icmp ne %struct.master_item* %.0, null
  br i1 %"135", label %inspect_full_bb73, label %inspect_full_bb89

inspect_full_bb73:                                ; preds = %inspect_full_inspect_base.exit
  %"136" = getelementptr inbounds %struct.master_item* %.0, i32 0, i32 2
  %"137" = load %struct.slave_item** %"136", align 8
  %"138" = icmp ne %struct.slave_item* %"137", null
  br i1 %"138", label %inspect_full_bb74, label %inspect_full_bb88

inspect_full_bb74:                                ; preds = %inspect_full_bb73
  %"139" = getelementptr inbounds %struct.slave_item* %"137", i32 0, i32 0
  %"140" = load %struct.slave_item** %"139", align 8
  %"141" = icmp ne %struct.slave_item* %"140", null
  br i1 %"141", label %inspect_full_bb75, label %inspect_full_bb87

inspect_full_bb75:                                ; preds = %inspect_full_bb74
  %"142" = getelementptr inbounds %struct.slave_item* %"137", i32 0, i32 1
  %"143" = load %struct.slave_item** %"142", align 8
  %"144" = icmp ne %struct.slave_item* %"143", null
  br i1 %"144", label %inspect_full_bb76, label %inspect_full_bb77

inspect_full_bb76:                                ; preds = %inspect_full_bb75
  call void (...)* @__VERIFIER_error() #6
  unreachable

inspect_full_bb77:                                ; preds = %inspect_full_bb75
  %"145" = getelementptr inbounds %struct.slave_item* %"137", i32 0, i32 0
  %"146" = load %struct.slave_item** %"145", align 8
  br label %inspect_full_bb78

inspect_full_bb78:                                ; preds = %inspect_full_bb82, %inspect_full_bb77
  %pos.0 = phi %struct.slave_item* [ %"146", %inspect_full_bb77 ], [ %"162", %inspect_full_bb82 ]
  %"147" = icmp ne %struct.slave_item* %pos.0, null
  br i1 %"147", label %inspect_full_bb79, label %inspect_full_bb86

inspect_full_bb79:                                ; preds = %inspect_full_bb78
  %"148" = getelementptr inbounds %struct.slave_item* %pos.0, i32 0, i32 1
  %"149" = load %struct.slave_item** %"148", align 8
  %"150" = icmp ne %struct.slave_item* %"149", null
  br i1 %"150", label %inspect_full_bb80, label %inspect_full_bb85

inspect_full_bb80:                                ; preds = %inspect_full_bb79
  %"151" = getelementptr inbounds %struct.slave_item* %pos.0, i32 0, i32 1
  %"152" = load %struct.slave_item** %"151", align 8
  %"153" = getelementptr inbounds %struct.slave_item* %"152", i32 0, i32 0
  %"154" = load %struct.slave_item** %"153", align 8
  %"155" = icmp ne %struct.slave_item* %"154", null
  br i1 %"155", label %inspect_full_bb81, label %inspect_full_bb84

inspect_full_bb81:                                ; preds = %inspect_full_bb80
  %"156" = getelementptr inbounds %struct.slave_item* %pos.0, i32 0, i32 1
  %"157" = load %struct.slave_item** %"156", align 8
  %"158" = getelementptr inbounds %struct.slave_item* %"157", i32 0, i32 0
  %"159" = load %struct.slave_item** %"158", align 8
  %"160" = icmp eq %struct.slave_item* %"159", %pos.0
  br i1 %"160", label %inspect_full_bb82, label %inspect_full_bb83

inspect_full_bb82:                                ; preds = %inspect_full_bb81
  %"161" = getelementptr inbounds %struct.slave_item* %pos.0, i32 0, i32 0
  %"162" = load %struct.slave_item** %"161", align 8
  br label %inspect_full_bb78

inspect_full_bb83:                                ; preds = %inspect_full_bb81
  call void (...)* @__VERIFIER_error() #6
  unreachable

inspect_full_bb84:                                ; preds = %inspect_full_bb80
  call void (...)* @__VERIFIER_error() #6
  unreachable

inspect_full_bb85:                                ; preds = %inspect_full_bb79
  call void (...)* @__VERIFIER_error() #6
  unreachable

inspect_full_bb86:                                ; preds = %inspect_full_bb78
  %"163" = getelementptr inbounds %struct.master_item* %.0, i32 0, i32 0
  %"164" = load %struct.master_item** %"163", align 8
  br label %inspect_full_inspect_base.exit

inspect_full_bb87:                                ; preds = %inspect_full_bb74
  call void (...)* @__VERIFIER_error() #6
  unreachable

inspect_full_bb88:                                ; preds = %inspect_full_bb73
  call void (...)* @__VERIFIER_error() #6
  unreachable

inspect_full_bb89:                                ; preds = %inspect_full_inspect_base.exit
  ret void

inspect_full_bb90:                                ; preds = %inspect_full_bb61
  call void (...)* @__VERIFIER_error() #6
  unreachable

inspect_full_bb91:                                ; preds = %inspect_full_bb60
  call void (...)* @__VERIFIER_error() #6
  unreachable
}

; Function Attrs: nounwind uwtable
define void @inspect_dangling(%struct.master_item* %dll) #0 {
inspect_dangling_bb92:
  %"165" = icmp ne %struct.master_item* %dll, null
  br i1 %"165", label %inspect_dangling_bb93, label %inspect_dangling_bb110

inspect_dangling_bb93:                            ; preds = %inspect_dangling_bb92
  %"166" = getelementptr inbounds %struct.master_item* %dll, i32 0, i32 0
  %"167" = load %struct.master_item** %"166", align 8
  %"168" = icmp ne %struct.master_item* %"167", null
  br i1 %"168", label %inspect_dangling_bb94, label %inspect_dangling_bb109

inspect_dangling_bb94:                            ; preds = %inspect_dangling_bb93
  %"169" = getelementptr inbounds %struct.master_item* %dll, i32 0, i32 1
  %"170" = load %struct.master_item** %"169", align 8
  %"171" = icmp ne %struct.master_item* %"170", null
  br i1 %"171", label %inspect_dangling_bb95, label %inspect_dangling_bb96

inspect_dangling_bb95:                            ; preds = %inspect_dangling_bb94
  call void (...)* @__VERIFIER_error() #6
  unreachable

inspect_dangling_bb96:                            ; preds = %inspect_dangling_bb94
  %"172" = getelementptr inbounds %struct.master_item* %dll, i32 0, i32 0
  %"173" = load %struct.master_item** %"172", align 8
  br label %inspect_dangling_bb97

inspect_dangling_bb97:                            ; preds = %inspect_dangling_bb101, %inspect_dangling_bb96
  %.0.i = phi %struct.master_item* [ %"173", %inspect_dangling_bb96 ], [ %"189", %inspect_dangling_bb101 ]
  %"174" = icmp ne %struct.master_item* %.0.i, null
  br i1 %"174", label %inspect_dangling_bb98, label %inspect_dangling_inspect_base.exit

inspect_dangling_bb98:                            ; preds = %inspect_dangling_bb97
  %"175" = getelementptr inbounds %struct.master_item* %.0.i, i32 0, i32 1
  %"176" = load %struct.master_item** %"175", align 8
  %"177" = icmp ne %struct.master_item* %"176", null
  br i1 %"177", label %inspect_dangling_bb99, label %inspect_dangling_bb104

inspect_dangling_bb99:                            ; preds = %inspect_dangling_bb98
  %"178" = getelementptr inbounds %struct.master_item* %.0.i, i32 0, i32 1
  %"179" = load %struct.master_item** %"178", align 8
  %"180" = getelementptr inbounds %struct.master_item* %"179", i32 0, i32 0
  %"181" = load %struct.master_item** %"180", align 8
  %"182" = icmp ne %struct.master_item* %"181", null
  br i1 %"182", label %inspect_dangling_bb100, label %inspect_dangling_bb103

inspect_dangling_bb100:                           ; preds = %inspect_dangling_bb99
  %"183" = getelementptr inbounds %struct.master_item* %.0.i, i32 0, i32 1
  %"184" = load %struct.master_item** %"183", align 8
  %"185" = getelementptr inbounds %struct.master_item* %"184", i32 0, i32 0
  %"186" = load %struct.master_item** %"185", align 8
  %"187" = icmp eq %struct.master_item* %"186", %.0.i
  br i1 %"187", label %inspect_dangling_bb101, label %inspect_dangling_bb102

inspect_dangling_bb101:                           ; preds = %inspect_dangling_bb100
  %"188" = getelementptr inbounds %struct.master_item* %.0.i, i32 0, i32 0
  %"189" = load %struct.master_item** %"188", align 8
  br label %inspect_dangling_bb97

inspect_dangling_bb102:                           ; preds = %inspect_dangling_bb100
  call void (...)* @__VERIFIER_error() #6
  unreachable

inspect_dangling_bb103:                           ; preds = %inspect_dangling_bb99
  call void (...)* @__VERIFIER_error() #6
  unreachable

inspect_dangling_bb104:                           ; preds = %inspect_dangling_bb98
  call void (...)* @__VERIFIER_error() #6
  unreachable

inspect_dangling_inspect_base.exit:               ; preds = %inspect_dangling_bb97, %inspect_dangling_bb106
  %.0 = phi %struct.master_item* [ %"195", %inspect_dangling_bb106 ], [ %dll, %inspect_dangling_bb97 ]
  %"190" = icmp ne %struct.master_item* %.0, null
  br i1 %"190", label %inspect_dangling_bb105, label %inspect_dangling_bb108

inspect_dangling_bb105:                           ; preds = %inspect_dangling_inspect_base.exit
  %"191" = getelementptr inbounds %struct.master_item* %.0, i32 0, i32 2
  %"192" = load %struct.slave_item** %"191", align 8
  %"193" = icmp ne %struct.slave_item* %"192", null
  br i1 %"193", label %inspect_dangling_bb106, label %inspect_dangling_bb107

inspect_dangling_bb106:                           ; preds = %inspect_dangling_bb105
  %"194" = getelementptr inbounds %struct.master_item* %.0, i32 0, i32 0
  %"195" = load %struct.master_item** %"194", align 8
  br label %inspect_dangling_inspect_base.exit

inspect_dangling_bb107:                           ; preds = %inspect_dangling_bb105
  call void (...)* @__VERIFIER_error() #6
  unreachable

inspect_dangling_bb108:                           ; preds = %inspect_dangling_inspect_base.exit
  ret void

inspect_dangling_bb109:                           ; preds = %inspect_dangling_bb93
  call void (...)* @__VERIFIER_error() #6
  unreachable

inspect_dangling_bb110:                           ; preds = %inspect_dangling_bb92
  call void (...)* @__VERIFIER_error() #6
  unreachable
}

; Function Attrs: nounwind uwtable
define void @inspect_init(%struct.master_item* %dll) #0 {
inspect_init_bb111:
  %"196" = icmp ne %struct.master_item* %dll, null
  br i1 %"196", label %inspect_init_bb112, label %inspect_init_bb129

inspect_init_bb112:                               ; preds = %inspect_init_bb111
  %"197" = getelementptr inbounds %struct.master_item* %dll, i32 0, i32 0
  %"198" = load %struct.master_item** %"197", align 8
  %"199" = icmp ne %struct.master_item* %"198", null
  br i1 %"199", label %inspect_init_bb113, label %inspect_init_bb128

inspect_init_bb113:                               ; preds = %inspect_init_bb112
  %"200" = getelementptr inbounds %struct.master_item* %dll, i32 0, i32 1
  %"201" = load %struct.master_item** %"200", align 8
  %"202" = icmp ne %struct.master_item* %"201", null
  br i1 %"202", label %inspect_init_bb114, label %inspect_init_bb115

inspect_init_bb114:                               ; preds = %inspect_init_bb113
  call void (...)* @__VERIFIER_error() #6
  unreachable

inspect_init_bb115:                               ; preds = %inspect_init_bb113
  %"203" = getelementptr inbounds %struct.master_item* %dll, i32 0, i32 0
  %"204" = load %struct.master_item** %"203", align 8
  br label %inspect_init_bb116

inspect_init_bb116:                               ; preds = %inspect_init_bb120, %inspect_init_bb115
  %.0.i = phi %struct.master_item* [ %"204", %inspect_init_bb115 ], [ %"220", %inspect_init_bb120 ]
  %"205" = icmp ne %struct.master_item* %.0.i, null
  br i1 %"205", label %inspect_init_bb117, label %inspect_init_inspect_base.exit

inspect_init_bb117:                               ; preds = %inspect_init_bb116
  %"206" = getelementptr inbounds %struct.master_item* %.0.i, i32 0, i32 1
  %"207" = load %struct.master_item** %"206", align 8
  %"208" = icmp ne %struct.master_item* %"207", null
  br i1 %"208", label %inspect_init_bb118, label %inspect_init_bb123

inspect_init_bb118:                               ; preds = %inspect_init_bb117
  %"209" = getelementptr inbounds %struct.master_item* %.0.i, i32 0, i32 1
  %"210" = load %struct.master_item** %"209", align 8
  %"211" = getelementptr inbounds %struct.master_item* %"210", i32 0, i32 0
  %"212" = load %struct.master_item** %"211", align 8
  %"213" = icmp ne %struct.master_item* %"212", null
  br i1 %"213", label %inspect_init_bb119, label %inspect_init_bb122

inspect_init_bb119:                               ; preds = %inspect_init_bb118
  %"214" = getelementptr inbounds %struct.master_item* %.0.i, i32 0, i32 1
  %"215" = load %struct.master_item** %"214", align 8
  %"216" = getelementptr inbounds %struct.master_item* %"215", i32 0, i32 0
  %"217" = load %struct.master_item** %"216", align 8
  %"218" = icmp eq %struct.master_item* %"217", %.0.i
  br i1 %"218", label %inspect_init_bb120, label %inspect_init_bb121

inspect_init_bb120:                               ; preds = %inspect_init_bb119
  %"219" = getelementptr inbounds %struct.master_item* %.0.i, i32 0, i32 0
  %"220" = load %struct.master_item** %"219", align 8
  br label %inspect_init_bb116

inspect_init_bb121:                               ; preds = %inspect_init_bb119
  call void (...)* @__VERIFIER_error() #6
  unreachable

inspect_init_bb122:                               ; preds = %inspect_init_bb118
  call void (...)* @__VERIFIER_error() #6
  unreachable

inspect_init_bb123:                               ; preds = %inspect_init_bb117
  call void (...)* @__VERIFIER_error() #6
  unreachable

inspect_init_inspect_base.exit:                   ; preds = %inspect_init_bb116, %inspect_init_bb126
  %.0 = phi %struct.master_item* [ %"226", %inspect_init_bb126 ], [ %dll, %inspect_init_bb116 ]
  %"221" = icmp ne %struct.master_item* %.0, null
  br i1 %"221", label %inspect_init_bb124, label %inspect_init_bb127

inspect_init_bb124:                               ; preds = %inspect_init_inspect_base.exit
  %"222" = getelementptr inbounds %struct.master_item* %.0, i32 0, i32 2
  %"223" = load %struct.slave_item** %"222", align 8
  %"224" = icmp ne %struct.slave_item* %"223", null
  br i1 %"224", label %inspect_init_bb125, label %inspect_init_bb126

inspect_init_bb125:                               ; preds = %inspect_init_bb124
  call void (...)* @__VERIFIER_error() #6
  unreachable

inspect_init_bb126:                               ; preds = %inspect_init_bb124
  %"225" = getelementptr inbounds %struct.master_item* %.0, i32 0, i32 0
  %"226" = load %struct.master_item** %"225", align 8
  br label %inspect_init_inspect_base.exit

inspect_init_bb127:                               ; preds = %inspect_init_inspect_base.exit
  ret void

inspect_init_bb128:                               ; preds = %inspect_init_bb112
  call void (...)* @__VERIFIER_error() #6
  unreachable

inspect_init_bb129:                               ; preds = %inspect_init_bb111
  call void (...)* @__VERIFIER_error() #6
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb130:
  %dll.i.i = alloca i8*, align 8
  %"227" = bitcast i8** %dll.i.i to i8*
  call void @llvm.lifetime.start(i64 8, i8* %"227") #5
  store i8* null, i8** %dll.i.i, align 8
  %"228" = bitcast void (%struct.master_item**)* @dll_insert_master to void (i8**, ...)*
  call void (i8**, ...)* %"228"(i8** %dll.i.i) #5
  %"229" = bitcast void (%struct.master_item**)* @dll_insert_master to void (i8**, ...)*
  call void (i8**, ...)* %"229"(i8** %dll.i.i) #5
  br label %main_bb131

main_bb131:                                       ; preds = %main_bb132, %main_bb130
  %"230" = call i32 @__VERIFIER_nondet_int() #5
  %"231" = icmp ne i32 %"230", 0
  br i1 %"231", label %main_bb132, label %main_dll_create_master.exit

main_bb132:                                       ; preds = %main_bb131
  %"232" = bitcast void (%struct.master_item**)* @dll_insert_master to void (i8**, ...)*
  call void (i8**, ...)* %"232"(i8** %dll.i.i) #5
  br label %main_bb131

main_dll_create_master.exit:                      ; preds = %main_bb131
  %"233" = load i8** %dll.i.i, align 8
  %"234" = bitcast i8** %dll.i.i to i8*
  call void @llvm.lifetime.end(i64 8, i8* %"234") #5
  %"235" = bitcast i8* %"233" to %struct.master_item*
  %"236" = icmp ne %struct.master_item* %"235", null
  br i1 %"236", label %main_bb133, label %main_bb201

main_bb133:                                       ; preds = %main_dll_create_master.exit
  %"237" = getelementptr inbounds %struct.master_item* %"235", i32 0, i32 0
  %"238" = load %struct.master_item** %"237", align 8
  %"239" = icmp ne %struct.master_item* %"238", null
  br i1 %"239", label %main_bb134, label %main_bb200

main_bb134:                                       ; preds = %main_bb133
  %"240" = getelementptr inbounds %struct.master_item* %"235", i32 0, i32 1
  %"241" = load %struct.master_item** %"240", align 8
  %"242" = icmp ne %struct.master_item* %"241", null
  br i1 %"242", label %main_bb135, label %main_bb136

main_bb135:                                       ; preds = %main_bb134
  call void (...)* @__VERIFIER_error() #6
  unreachable

main_bb136:                                       ; preds = %main_bb134
  %"243" = getelementptr inbounds %struct.master_item* %"235", i32 0, i32 0
  %"244" = load %struct.master_item** %"243", align 8
  br label %main_bb137

main_bb137:                                       ; preds = %main_bb141, %main_bb136
  %.0.i.i = phi %struct.master_item* [ %"244", %main_bb136 ], [ %"260", %main_bb141 ]
  %"245" = icmp ne %struct.master_item* %.0.i.i, null
  br i1 %"245", label %main_bb138, label %main_inspect_base.exit.i

main_bb138:                                       ; preds = %main_bb137
  %"246" = getelementptr inbounds %struct.master_item* %.0.i.i, i32 0, i32 1
  %"247" = load %struct.master_item** %"246", align 8
  %"248" = icmp ne %struct.master_item* %"247", null
  br i1 %"248", label %main_bb139, label %main_bb144

main_bb139:                                       ; preds = %main_bb138
  %"249" = getelementptr inbounds %struct.master_item* %.0.i.i, i32 0, i32 1
  %"250" = load %struct.master_item** %"249", align 8
  %"251" = getelementptr inbounds %struct.master_item* %"250", i32 0, i32 0
  %"252" = load %struct.master_item** %"251", align 8
  %"253" = icmp ne %struct.master_item* %"252", null
  br i1 %"253", label %main_bb140, label %main_bb143

main_bb140:                                       ; preds = %main_bb139
  %"254" = getelementptr inbounds %struct.master_item* %.0.i.i, i32 0, i32 1
  %"255" = load %struct.master_item** %"254", align 8
  %"256" = getelementptr inbounds %struct.master_item* %"255", i32 0, i32 0
  %"257" = load %struct.master_item** %"256", align 8
  %"258" = icmp eq %struct.master_item* %"257", %.0.i.i
  br i1 %"258", label %main_bb141, label %main_bb142

main_bb141:                                       ; preds = %main_bb140
  %"259" = getelementptr inbounds %struct.master_item* %.0.i.i, i32 0, i32 0
  %"260" = load %struct.master_item** %"259", align 8
  br label %main_bb137

main_bb142:                                       ; preds = %main_bb140
  call void (...)* @__VERIFIER_error() #6
  unreachable

main_bb143:                                       ; preds = %main_bb139
  call void (...)* @__VERIFIER_error() #6
  unreachable

main_bb144:                                       ; preds = %main_bb138
  call void (...)* @__VERIFIER_error() #6
  unreachable

main_inspect_base.exit.i:                         ; preds = %main_bb158, %main_bb137
  %.0.i = phi %struct.master_item* [ %"290", %main_bb158 ], [ %"235", %main_bb137 ]
  %"261" = icmp ne %struct.master_item* %.0.i, null
  br i1 %"261", label %main_bb145, label %main_inspect_full.exit

main_bb145:                                       ; preds = %main_inspect_base.exit.i
  %"262" = getelementptr inbounds %struct.master_item* %.0.i, i32 0, i32 2
  %"263" = load %struct.slave_item** %"262", align 8
  %"264" = icmp ne %struct.slave_item* %"263", null
  br i1 %"264", label %main_bb146, label %main_bb160

main_bb146:                                       ; preds = %main_bb145
  %"265" = getelementptr inbounds %struct.slave_item* %"263", i32 0, i32 0
  %"266" = load %struct.slave_item** %"265", align 8
  %"267" = icmp ne %struct.slave_item* %"266", null
  br i1 %"267", label %main_bb147, label %main_bb159

main_bb147:                                       ; preds = %main_bb146
  %"268" = getelementptr inbounds %struct.slave_item* %"263", i32 0, i32 1
  %"269" = load %struct.slave_item** %"268", align 8
  %"270" = icmp ne %struct.slave_item* %"269", null
  br i1 %"270", label %main_bb148, label %main_bb149

main_bb148:                                       ; preds = %main_bb147
  call void (...)* @__VERIFIER_error() #6
  unreachable

main_bb149:                                       ; preds = %main_bb147
  %"271" = getelementptr inbounds %struct.slave_item* %"263", i32 0, i32 0
  %"272" = load %struct.slave_item** %"271", align 8
  br label %main_bb150

main_bb150:                                       ; preds = %main_bb154, %main_bb149
  %pos.0.i = phi %struct.slave_item* [ %"272", %main_bb149 ], [ %"288", %main_bb154 ]
  %"273" = icmp ne %struct.slave_item* %pos.0.i, null
  br i1 %"273", label %main_bb151, label %main_bb158

main_bb151:                                       ; preds = %main_bb150
  %"274" = getelementptr inbounds %struct.slave_item* %pos.0.i, i32 0, i32 1
  %"275" = load %struct.slave_item** %"274", align 8
  %"276" = icmp ne %struct.slave_item* %"275", null
  br i1 %"276", label %main_bb152, label %main_bb157

main_bb152:                                       ; preds = %main_bb151
  %"277" = getelementptr inbounds %struct.slave_item* %pos.0.i, i32 0, i32 1
  %"278" = load %struct.slave_item** %"277", align 8
  %"279" = getelementptr inbounds %struct.slave_item* %"278", i32 0, i32 0
  %"280" = load %struct.slave_item** %"279", align 8
  %"281" = icmp ne %struct.slave_item* %"280", null
  br i1 %"281", label %main_bb153, label %main_bb156

main_bb153:                                       ; preds = %main_bb152
  %"282" = getelementptr inbounds %struct.slave_item* %pos.0.i, i32 0, i32 1
  %"283" = load %struct.slave_item** %"282", align 8
  %"284" = getelementptr inbounds %struct.slave_item* %"283", i32 0, i32 0
  %"285" = load %struct.slave_item** %"284", align 8
  %"286" = icmp eq %struct.slave_item* %"285", %pos.0.i
  br i1 %"286", label %main_bb154, label %main_bb155

main_bb154:                                       ; preds = %main_bb153
  %"287" = getelementptr inbounds %struct.slave_item* %pos.0.i, i32 0, i32 0
  %"288" = load %struct.slave_item** %"287", align 8
  br label %main_bb150

main_bb155:                                       ; preds = %main_bb153
  call void (...)* @__VERIFIER_error() #6
  unreachable

main_bb156:                                       ; preds = %main_bb152
  call void (...)* @__VERIFIER_error() #6
  unreachable

main_bb157:                                       ; preds = %main_bb151
  call void (...)* @__VERIFIER_error() #6
  unreachable

main_bb158:                                       ; preds = %main_bb150
  %"289" = getelementptr inbounds %struct.master_item* %.0.i, i32 0, i32 0
  %"290" = load %struct.master_item** %"289", align 8
  br label %main_inspect_base.exit.i

main_bb159:                                       ; preds = %main_bb146
  call void (...)* @__VERIFIER_error() #6
  unreachable

main_bb160:                                       ; preds = %main_bb145
  call void (...)* @__VERIFIER_error() #6
  unreachable

main_inspect_full.exit:                           ; preds = %main_inspect_base.exit.i, %main_dll_destroy_slave.exit.i
  %.0.i1 = phi %struct.master_item* [ %"299", %main_dll_destroy_slave.exit.i ], [ %"235", %main_inspect_base.exit.i ]
  %"291" = icmp ne %struct.master_item* %.0.i1, null
  br i1 %"291", label %main_bb161, label %main_dll_destroy_nested_lists.exit

main_bb161:                                       ; preds = %main_inspect_full.exit
  %"292" = getelementptr inbounds %struct.master_item* %.0.i1, i32 0, i32 2
  %"293" = load %struct.slave_item** %"292", align 8
  br label %main_bb162

main_bb162:                                       ; preds = %main_bb163, %main_bb161
  %.0.i.i2 = phi %struct.slave_item* [ %"293", %main_bb161 ], [ %"296", %main_bb163 ]
  %"294" = icmp ne %struct.slave_item* %.0.i.i2, null
  br i1 %"294", label %main_bb163, label %main_dll_destroy_slave.exit.i

main_bb163:                                       ; preds = %main_bb162
  %"295" = getelementptr inbounds %struct.slave_item* %.0.i.i2, i32 0, i32 0
  %"296" = load %struct.slave_item** %"295", align 8
  %"297" = bitcast %struct.slave_item* %.0.i.i2 to i8*
  call void @free(i8* %"297") #5
  br label %main_bb162

main_dll_destroy_slave.exit.i:                    ; preds = %main_bb162
  %"298" = getelementptr inbounds %struct.master_item* %.0.i1, i32 0, i32 0
  %"299" = load %struct.master_item** %"298", align 8
  br label %main_inspect_full.exit

main_dll_destroy_nested_lists.exit:               ; preds = %main_inspect_full.exit
  %"300" = icmp ne %struct.master_item* %"235", null
  br i1 %"300", label %main_bb164, label %main_bb199

main_bb164:                                       ; preds = %main_dll_destroy_nested_lists.exit
  %"301" = getelementptr inbounds %struct.master_item* %"235", i32 0, i32 0
  %"302" = load %struct.master_item** %"301", align 8
  %"303" = icmp ne %struct.master_item* %"302", null
  br i1 %"303", label %main_bb165, label %main_bb198

main_bb165:                                       ; preds = %main_bb164
  %"304" = getelementptr inbounds %struct.master_item* %"235", i32 0, i32 1
  %"305" = load %struct.master_item** %"304", align 8
  %"306" = icmp ne %struct.master_item* %"305", null
  br i1 %"306", label %main_bb166, label %main_bb167

main_bb166:                                       ; preds = %main_bb165
  call void (...)* @__VERIFIER_error() #6
  unreachable

main_bb167:                                       ; preds = %main_bb165
  %"307" = getelementptr inbounds %struct.master_item* %"235", i32 0, i32 0
  %"308" = load %struct.master_item** %"307", align 8
  br label %main_bb168

main_bb168:                                       ; preds = %main_bb172, %main_bb167
  %.0.i.i3 = phi %struct.master_item* [ %"308", %main_bb167 ], [ %"324", %main_bb172 ]
  %"309" = icmp ne %struct.master_item* %.0.i.i3, null
  br i1 %"309", label %main_bb169, label %main_inspect_base.exit.i5

main_bb169:                                       ; preds = %main_bb168
  %"310" = getelementptr inbounds %struct.master_item* %.0.i.i3, i32 0, i32 1
  %"311" = load %struct.master_item** %"310", align 8
  %"312" = icmp ne %struct.master_item* %"311", null
  br i1 %"312", label %main_bb170, label %main_bb175

main_bb170:                                       ; preds = %main_bb169
  %"313" = getelementptr inbounds %struct.master_item* %.0.i.i3, i32 0, i32 1
  %"314" = load %struct.master_item** %"313", align 8
  %"315" = getelementptr inbounds %struct.master_item* %"314", i32 0, i32 0
  %"316" = load %struct.master_item** %"315", align 8
  %"317" = icmp ne %struct.master_item* %"316", null
  br i1 %"317", label %main_bb171, label %main_bb174

main_bb171:                                       ; preds = %main_bb170
  %"318" = getelementptr inbounds %struct.master_item* %.0.i.i3, i32 0, i32 1
  %"319" = load %struct.master_item** %"318", align 8
  %"320" = getelementptr inbounds %struct.master_item* %"319", i32 0, i32 0
  %"321" = load %struct.master_item** %"320", align 8
  %"322" = icmp eq %struct.master_item* %"321", %.0.i.i3
  br i1 %"322", label %main_bb172, label %main_bb173

main_bb172:                                       ; preds = %main_bb171
  %"323" = getelementptr inbounds %struct.master_item* %.0.i.i3, i32 0, i32 0
  %"324" = load %struct.master_item** %"323", align 8
  br label %main_bb168

main_bb173:                                       ; preds = %main_bb171
  call void (...)* @__VERIFIER_error() #6
  unreachable

main_bb174:                                       ; preds = %main_bb170
  call void (...)* @__VERIFIER_error() #6
  unreachable

main_bb175:                                       ; preds = %main_bb169
  call void (...)* @__VERIFIER_error() #6
  unreachable

main_inspect_base.exit.i5:                        ; preds = %main_bb177, %main_bb168
  %.0.i4 = phi %struct.master_item* [ %"330", %main_bb177 ], [ %"235", %main_bb168 ]
  %"325" = icmp ne %struct.master_item* %.0.i4, null
  br i1 %"325", label %main_bb176, label %main_inspect_dangling.exit

main_bb176:                                       ; preds = %main_inspect_base.exit.i5
  %"326" = getelementptr inbounds %struct.master_item* %.0.i4, i32 0, i32 2
  %"327" = load %struct.slave_item** %"326", align 8
  %"328" = icmp ne %struct.slave_item* %"327", null
  br i1 %"328", label %main_bb177, label %main_bb178

main_bb177:                                       ; preds = %main_bb176
  %"329" = getelementptr inbounds %struct.master_item* %.0.i4, i32 0, i32 0
  %"330" = load %struct.master_item** %"329", align 8
  br label %main_inspect_base.exit.i5

main_bb178:                                       ; preds = %main_bb176
  call void (...)* @__VERIFIER_error() #6
  unreachable

main_inspect_dangling.exit:                       ; preds = %main_inspect_base.exit.i5, %main_bb179
  %.0.i6 = phi %struct.master_item* [ %"334", %main_bb179 ], [ %"235", %main_inspect_base.exit.i5 ]
  %"331" = icmp ne %struct.master_item* %.0.i6, null
  br i1 %"331", label %main_bb179, label %main_dll_reinit_nested_lists.exit

main_bb179:                                       ; preds = %main_inspect_dangling.exit
  %"332" = getelementptr inbounds %struct.master_item* %.0.i6, i32 0, i32 2
  store %struct.slave_item* null, %struct.slave_item** %"332", align 8
  %"333" = getelementptr inbounds %struct.master_item* %.0.i6, i32 0, i32 0
  %"334" = load %struct.master_item** %"333", align 8
  br label %main_inspect_dangling.exit

main_dll_reinit_nested_lists.exit:                ; preds = %main_inspect_dangling.exit
  %"335" = icmp ne %struct.master_item* %"235", null
  br i1 %"335", label %main_bb180, label %main_bb197

main_bb180:                                       ; preds = %main_dll_reinit_nested_lists.exit
  %"336" = getelementptr inbounds %struct.master_item* %"235", i32 0, i32 0
  %"337" = load %struct.master_item** %"336", align 8
  %"338" = icmp ne %struct.master_item* %"337", null
  br i1 %"338", label %main_bb181, label %main_bb196

main_bb181:                                       ; preds = %main_bb180
  %"339" = getelementptr inbounds %struct.master_item* %"235", i32 0, i32 1
  %"340" = load %struct.master_item** %"339", align 8
  %"341" = icmp ne %struct.master_item* %"340", null
  br i1 %"341", label %main_bb182, label %main_bb183

main_bb182:                                       ; preds = %main_bb181
  call void (...)* @__VERIFIER_error() #6
  unreachable

main_bb183:                                       ; preds = %main_bb181
  %"342" = getelementptr inbounds %struct.master_item* %"235", i32 0, i32 0
  %"343" = load %struct.master_item** %"342", align 8
  br label %main_bb184

main_bb184:                                       ; preds = %main_bb188, %main_bb183
  %.0.i.i7 = phi %struct.master_item* [ %"343", %main_bb183 ], [ %"359", %main_bb188 ]
  %"344" = icmp ne %struct.master_item* %.0.i.i7, null
  br i1 %"344", label %main_bb185, label %main_inspect_base.exit.i9

main_bb185:                                       ; preds = %main_bb184
  %"345" = getelementptr inbounds %struct.master_item* %.0.i.i7, i32 0, i32 1
  %"346" = load %struct.master_item** %"345", align 8
  %"347" = icmp ne %struct.master_item* %"346", null
  br i1 %"347", label %main_bb186, label %main_bb191

main_bb186:                                       ; preds = %main_bb185
  %"348" = getelementptr inbounds %struct.master_item* %.0.i.i7, i32 0, i32 1
  %"349" = load %struct.master_item** %"348", align 8
  %"350" = getelementptr inbounds %struct.master_item* %"349", i32 0, i32 0
  %"351" = load %struct.master_item** %"350", align 8
  %"352" = icmp ne %struct.master_item* %"351", null
  br i1 %"352", label %main_bb187, label %main_bb190

main_bb187:                                       ; preds = %main_bb186
  %"353" = getelementptr inbounds %struct.master_item* %.0.i.i7, i32 0, i32 1
  %"354" = load %struct.master_item** %"353", align 8
  %"355" = getelementptr inbounds %struct.master_item* %"354", i32 0, i32 0
  %"356" = load %struct.master_item** %"355", align 8
  %"357" = icmp eq %struct.master_item* %"356", %.0.i.i7
  br i1 %"357", label %main_bb188, label %main_bb189

main_bb188:                                       ; preds = %main_bb187
  %"358" = getelementptr inbounds %struct.master_item* %.0.i.i7, i32 0, i32 0
  %"359" = load %struct.master_item** %"358", align 8
  br label %main_bb184

main_bb189:                                       ; preds = %main_bb187
  call void (...)* @__VERIFIER_error() #6
  unreachable

main_bb190:                                       ; preds = %main_bb186
  call void (...)* @__VERIFIER_error() #6
  unreachable

main_bb191:                                       ; preds = %main_bb185
  call void (...)* @__VERIFIER_error() #6
  unreachable

main_inspect_base.exit.i9:                        ; preds = %main_bb194, %main_bb184
  %.0.i8 = phi %struct.master_item* [ %"365", %main_bb194 ], [ %"235", %main_bb184 ]
  %"360" = icmp ne %struct.master_item* %.0.i8, null
  br i1 %"360", label %main_bb192, label %main_inspect_init.exit

main_bb192:                                       ; preds = %main_inspect_base.exit.i9
  %"361" = getelementptr inbounds %struct.master_item* %.0.i8, i32 0, i32 2
  %"362" = load %struct.slave_item** %"361", align 8
  %"363" = icmp ne %struct.slave_item* %"362", null
  br i1 %"363", label %main_bb193, label %main_bb194

main_bb193:                                       ; preds = %main_bb192
  call void (...)* @__VERIFIER_error() #6
  unreachable

main_bb194:                                       ; preds = %main_bb192
  %"364" = getelementptr inbounds %struct.master_item* %.0.i8, i32 0, i32 0
  %"365" = load %struct.master_item** %"364", align 8
  br label %main_inspect_base.exit.i9

main_inspect_init.exit:                           ; preds = %main_inspect_base.exit.i9, %main_bb195
  %.0.i10 = phi %struct.master_item* [ %"368", %main_bb195 ], [ %"235", %main_inspect_base.exit.i9 ]
  %"366" = icmp ne %struct.master_item* %.0.i10, null
  br i1 %"366", label %main_bb195, label %main_dll_destroy_master.exit

main_bb195:                                       ; preds = %main_inspect_init.exit
  %"367" = getelementptr inbounds %struct.master_item* %.0.i10, i32 0, i32 0
  %"368" = load %struct.master_item** %"367", align 8
  %"369" = bitcast %struct.master_item* %.0.i10 to i8*
  call void @free(i8* %"369") #5
  br label %main_inspect_init.exit

main_dll_destroy_master.exit:                     ; preds = %main_inspect_init.exit
  ret i32 0

main_bb196:                                       ; preds = %main_bb180
  call void (...)* @__VERIFIER_error() #6
  unreachable

main_bb197:                                       ; preds = %main_dll_reinit_nested_lists.exit
  call void (...)* @__VERIFIER_error() #6
  unreachable

main_bb198:                                       ; preds = %main_bb164
  call void (...)* @__VERIFIER_error() #6
  unreachable

main_bb199:                                       ; preds = %main_dll_destroy_nested_lists.exit
  call void (...)* @__VERIFIER_error() #6
  unreachable

main_bb200:                                       ; preds = %main_bb133
  call void (...)* @__VERIFIER_error() #6
  unreachable

main_bb201:                                       ; preds = %main_dll_create_master.exit
  call void (...)* @__VERIFIER_error() #6
  unreachable
}

; Function Attrs: noreturn
declare void @__VERIFIER_error(...) #4

declare %struct.slave_item* @__kittel_nondef.0()

declare %struct.master_item* @__kittel_nondef.1()

declare %struct.slave_item** @__kittel_nondef.2()

declare void (...)* @__kittel_nondef.3()

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #5

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #5

declare %struct.master_item** @__kittel_nondef.4()

declare i32 @__kittel_nondef.5()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

