; ModuleID = 'Benchmarks/TermCOMP/C/SV-COMP_Mixed_Categories/skiplist_3lvl_true-valid-memsafety/skiplist_3lvl_true-valid-memsafety.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sl_item = type { %struct.sl_item*, %struct.sl_item*, %struct.sl_item* }
%struct.sl = type { %struct.sl_item*, %struct.sl_item* }

; Function Attrs: nounwind uwtable
define %struct.sl_item* @alloc_or_die() #0 {
alloc_or_die_bb0:
  %"0" = call noalias i8* @malloc(i64 24) #3
  %"1" = bitcast i8* %"0" to %struct.sl_item*
  ret %struct.sl_item* %"1"
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind uwtable
define %struct.sl* @create_sl_with_head_and_tail() #0 {
create_sl_with_head_and_tail_bb1:
  %"2" = call noalias i8* @malloc(i64 16) #3
  %"3" = bitcast i8* %"2" to %struct.sl*
  %"4" = call noalias i8* @malloc(i64 24) #3
  %"5" = bitcast i8* %"4" to %struct.sl_item*
  %"6" = getelementptr inbounds %struct.sl* %"3", i32 0, i32 0
  store %struct.sl_item* %"5", %struct.sl_item** %"6", align 8
  %"7" = call noalias i8* @malloc(i64 24) #3
  %"8" = bitcast i8* %"7" to %struct.sl_item*
  %"9" = getelementptr inbounds %struct.sl* %"3", i32 0, i32 1
  store %struct.sl_item* %"8", %struct.sl_item** %"9", align 8
  %"10" = getelementptr inbounds %struct.sl* %"3", i32 0, i32 1
  %"11" = load %struct.sl_item** %"10", align 8
  %"12" = getelementptr inbounds %struct.sl* %"3", i32 0, i32 0
  %"13" = load %struct.sl_item** %"12", align 8
  %"14" = getelementptr inbounds %struct.sl_item* %"13", i32 0, i32 0
  store %struct.sl_item* %"11", %struct.sl_item** %"14", align 8
  %"15" = getelementptr inbounds %struct.sl* %"3", i32 0, i32 0
  %"16" = load %struct.sl_item** %"15", align 8
  %"17" = getelementptr inbounds %struct.sl_item* %"16", i32 0, i32 1
  store %struct.sl_item* %"11", %struct.sl_item** %"17", align 8
  %"18" = getelementptr inbounds %struct.sl* %"3", i32 0, i32 0
  %"19" = load %struct.sl_item** %"18", align 8
  %"20" = getelementptr inbounds %struct.sl_item* %"19", i32 0, i32 2
  store %struct.sl_item* %"11", %struct.sl_item** %"20", align 8
  %"21" = getelementptr inbounds %struct.sl* %"3", i32 0, i32 1
  %"22" = load %struct.sl_item** %"21", align 8
  %"23" = getelementptr inbounds %struct.sl_item* %"22", i32 0, i32 0
  store %struct.sl_item* null, %struct.sl_item** %"23", align 8
  %"24" = getelementptr inbounds %struct.sl* %"3", i32 0, i32 1
  %"25" = load %struct.sl_item** %"24", align 8
  %"26" = getelementptr inbounds %struct.sl_item* %"25", i32 0, i32 1
  store %struct.sl_item* null, %struct.sl_item** %"26", align 8
  %"27" = getelementptr inbounds %struct.sl* %"3", i32 0, i32 1
  %"28" = load %struct.sl_item** %"27", align 8
  %"29" = getelementptr inbounds %struct.sl_item* %"28", i32 0, i32 2
  store %struct.sl_item* null, %struct.sl_item** %"29", align 8
  ret %struct.sl* %"3"
}

; Function Attrs: nounwind uwtable
define void @sl_random_insert(%struct.sl* %sl) #0 {
sl_random_insert_bb2:
  %"30" = getelementptr inbounds %struct.sl* %sl, i32 0, i32 0
  %"31" = load %struct.sl_item** %"30", align 8
  %"32" = getelementptr inbounds %struct.sl* %sl, i32 0, i32 1
  br label %sl_random_insert_bb3

sl_random_insert_bb3:                             ; preds = %sl_random_insert_bb6, %sl_random_insert_bb2
  %a3.0 = phi %struct.sl_item* [ %"31", %sl_random_insert_bb2 ], [ %"41", %sl_random_insert_bb6 ]
  %"33" = getelementptr inbounds %struct.sl_item* %a3.0, i32 0, i32 2
  %"34" = load %struct.sl_item** %"33", align 8
  %"35" = load %struct.sl_item** %"32", align 8
  %"36" = icmp ne %struct.sl_item* %"34", %"35"
  br i1 %"36", label %sl_random_insert_bb4, label %sl_random_insert_bb5

sl_random_insert_bb4:                             ; preds = %sl_random_insert_bb3
  %"37" = call i32 (...)* @__VERIFIER_nondet_int()
  %"38" = icmp ne i32 %"37", 0
  br label %sl_random_insert_bb5

sl_random_insert_bb5:                             ; preds = %sl_random_insert_bb4, %sl_random_insert_bb3
  %"39" = phi i1 [ false, %sl_random_insert_bb3 ], [ %"38", %sl_random_insert_bb4 ]
  %"40" = getelementptr inbounds %struct.sl_item* %a3.0, i32 0, i32 2
  br i1 %"39", label %sl_random_insert_bb6, label %sl_random_insert_bb7

sl_random_insert_bb6:                             ; preds = %sl_random_insert_bb5
  %"41" = load %struct.sl_item** %"40", align 8
  br label %sl_random_insert_bb3

sl_random_insert_bb7:                             ; preds = %sl_random_insert_bb5, %sl_random_insert_bb10
  %a2.0 = phi %struct.sl_item* [ %"50", %sl_random_insert_bb10 ], [ %a3.0, %sl_random_insert_bb5 ]
  %"42" = getelementptr inbounds %struct.sl_item* %a2.0, i32 0, i32 1
  %"43" = load %struct.sl_item** %"42", align 8
  %"44" = load %struct.sl_item** %"40", align 8
  %"45" = icmp ne %struct.sl_item* %"43", %"44"
  br i1 %"45", label %sl_random_insert_bb8, label %sl_random_insert_bb9

sl_random_insert_bb8:                             ; preds = %sl_random_insert_bb7
  %"46" = call i32 (...)* @__VERIFIER_nondet_int()
  %"47" = icmp ne i32 %"46", 0
  br label %sl_random_insert_bb9

sl_random_insert_bb9:                             ; preds = %sl_random_insert_bb8, %sl_random_insert_bb7
  %"48" = phi i1 [ false, %sl_random_insert_bb7 ], [ %"47", %sl_random_insert_bb8 ]
  %"49" = getelementptr inbounds %struct.sl_item* %a2.0, i32 0, i32 1
  br i1 %"48", label %sl_random_insert_bb10, label %sl_random_insert_bb11

sl_random_insert_bb10:                            ; preds = %sl_random_insert_bb9
  %"50" = load %struct.sl_item** %"49", align 8
  br label %sl_random_insert_bb7

sl_random_insert_bb11:                            ; preds = %sl_random_insert_bb9, %sl_random_insert_bb13
  %a1.0 = phi %struct.sl_item* [ %"58", %sl_random_insert_bb13 ], [ %a2.0, %sl_random_insert_bb9 ]
  %"51" = getelementptr inbounds %struct.sl_item* %a1.0, i32 0, i32 0
  %"52" = load %struct.sl_item** %"51", align 8
  %"53" = load %struct.sl_item** %"49", align 8
  %"54" = icmp ne %struct.sl_item* %"52", %"53"
  br i1 %"54", label %sl_random_insert_bb12, label %sl_random_insert_.critedge

sl_random_insert_bb12:                            ; preds = %sl_random_insert_bb11
  %"55" = call i32 (...)* @__VERIFIER_nondet_int()
  %"56" = icmp ne i32 %"55", 0
  br i1 %"56", label %sl_random_insert_bb13, label %sl_random_insert_.critedge

sl_random_insert_bb13:                            ; preds = %sl_random_insert_bb12
  %"57" = getelementptr inbounds %struct.sl_item* %a1.0, i32 0, i32 0
  %"58" = load %struct.sl_item** %"57", align 8
  br label %sl_random_insert_bb11

sl_random_insert_.critedge:                       ; preds = %sl_random_insert_bb11, %sl_random_insert_bb12
  %"59" = call noalias i8* @malloc(i64 24) #3
  %"60" = bitcast i8* %"59" to %struct.sl_item*
  %"61" = getelementptr inbounds %struct.sl_item* %a1.0, i32 0, i32 0
  %"62" = load %struct.sl_item** %"61", align 8
  %"63" = getelementptr inbounds %struct.sl_item* %"60", i32 0, i32 0
  store %struct.sl_item* %"62", %struct.sl_item** %"63", align 8
  %"64" = getelementptr inbounds %struct.sl_item* %a1.0, i32 0, i32 0
  store %struct.sl_item* %"60", %struct.sl_item** %"64", align 8
  %"65" = call i32 (...)* @__VERIFIER_nondet_int()
  %"66" = icmp ne i32 %"65", 0
  br i1 %"66", label %sl_random_insert_bb14, label %sl_random_insert_bb16

sl_random_insert_bb14:                            ; preds = %sl_random_insert_.critedge
  %"67" = getelementptr inbounds %struct.sl_item* %a2.0, i32 0, i32 1
  %"68" = load %struct.sl_item** %"67", align 8
  %"69" = getelementptr inbounds %struct.sl_item* %"60", i32 0, i32 1
  store %struct.sl_item* %"68", %struct.sl_item** %"69", align 8
  %"70" = getelementptr inbounds %struct.sl_item* %a2.0, i32 0, i32 1
  store %struct.sl_item* %"60", %struct.sl_item** %"70", align 8
  %"71" = call i32 (...)* @__VERIFIER_nondet_int()
  %"72" = icmp ne i32 %"71", 0
  br i1 %"72", label %sl_random_insert_bb15, label %sl_random_insert_bb16

sl_random_insert_bb15:                            ; preds = %sl_random_insert_bb14
  %"73" = getelementptr inbounds %struct.sl_item* %a3.0, i32 0, i32 2
  %"74" = load %struct.sl_item** %"73", align 8
  %"75" = getelementptr inbounds %struct.sl_item* %"60", i32 0, i32 2
  store %struct.sl_item* %"74", %struct.sl_item** %"75", align 8
  %"76" = getelementptr inbounds %struct.sl_item* %a3.0, i32 0, i32 2
  store %struct.sl_item* %"60", %struct.sl_item** %"76", align 8
  br label %sl_random_insert_bb16

sl_random_insert_bb16:                            ; preds = %sl_random_insert_bb14, %sl_random_insert_bb15, %sl_random_insert_.critedge
  ret void
}

declare i32 @__VERIFIER_nondet_int(...) #2

; Function Attrs: nounwind uwtable
define void @destroy_sl(%struct.sl* %sl) #0 {
destroy_sl_bb17:
  %"77" = getelementptr inbounds %struct.sl* %sl, i32 0, i32 0
  %"78" = getelementptr inbounds %struct.sl* %sl, i32 0, i32 0
  %"79" = getelementptr inbounds %struct.sl* %sl, i32 0, i32 0
  %"80" = getelementptr inbounds %struct.sl* %sl, i32 0, i32 0
  br label %destroy_sl_bb18

destroy_sl_bb18:                                  ; preds = %destroy_sl_bb19, %destroy_sl_bb17
  %"81" = load %struct.sl_item** %"77", align 8
  %"82" = icmp ne %struct.sl_item* %"81", null
  br i1 %"82", label %destroy_sl_bb19, label %destroy_sl_bb20

destroy_sl_bb19:                                  ; preds = %destroy_sl_bb18
  %"83" = load %struct.sl_item** %"78", align 8
  %"84" = load %struct.sl_item** %"79", align 8
  %"85" = getelementptr inbounds %struct.sl_item* %"84", i32 0, i32 0
  %"86" = load %struct.sl_item** %"85", align 8
  store %struct.sl_item* %"86", %struct.sl_item** %"80", align 8
  %"87" = bitcast %struct.sl_item* %"83" to i8*
  call void @free(i8* %"87") #3
  br label %destroy_sl_bb18

destroy_sl_bb20:                                  ; preds = %destroy_sl_bb18
  %"88" = bitcast %struct.sl* %sl to i8*
  call void @free(i8* %"88") #3
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb21:
  %"89" = call noalias i8* @malloc(i64 16) #3
  %"90" = bitcast i8* %"89" to %struct.sl*
  %"91" = call noalias i8* @malloc(i64 24) #3
  %"92" = bitcast i8* %"91" to %struct.sl_item*
  %"93" = getelementptr inbounds %struct.sl* %"90", i32 0, i32 0
  store %struct.sl_item* %"92", %struct.sl_item** %"93", align 8
  %"94" = call noalias i8* @malloc(i64 24) #3
  %"95" = bitcast i8* %"94" to %struct.sl_item*
  %"96" = getelementptr inbounds %struct.sl* %"90", i32 0, i32 1
  store %struct.sl_item* %"95", %struct.sl_item** %"96", align 8
  %"97" = getelementptr inbounds %struct.sl* %"90", i32 0, i32 1
  %"98" = load %struct.sl_item** %"97", align 8
  %"99" = getelementptr inbounds %struct.sl* %"90", i32 0, i32 0
  %"100" = load %struct.sl_item** %"99", align 8
  %"101" = getelementptr inbounds %struct.sl_item* %"100", i32 0, i32 0
  store %struct.sl_item* %"98", %struct.sl_item** %"101", align 8
  %"102" = getelementptr inbounds %struct.sl* %"90", i32 0, i32 0
  %"103" = load %struct.sl_item** %"102", align 8
  %"104" = getelementptr inbounds %struct.sl_item* %"103", i32 0, i32 1
  store %struct.sl_item* %"98", %struct.sl_item** %"104", align 8
  %"105" = getelementptr inbounds %struct.sl* %"90", i32 0, i32 0
  %"106" = load %struct.sl_item** %"105", align 8
  %"107" = getelementptr inbounds %struct.sl_item* %"106", i32 0, i32 2
  store %struct.sl_item* %"98", %struct.sl_item** %"107", align 8
  %"108" = getelementptr inbounds %struct.sl* %"90", i32 0, i32 1
  %"109" = load %struct.sl_item** %"108", align 8
  %"110" = getelementptr inbounds %struct.sl_item* %"109", i32 0, i32 0
  store %struct.sl_item* null, %struct.sl_item** %"110", align 8
  %"111" = getelementptr inbounds %struct.sl* %"90", i32 0, i32 1
  %"112" = load %struct.sl_item** %"111", align 8
  %"113" = getelementptr inbounds %struct.sl_item* %"112", i32 0, i32 1
  store %struct.sl_item* null, %struct.sl_item** %"113", align 8
  %"114" = getelementptr inbounds %struct.sl* %"90", i32 0, i32 1
  %"115" = load %struct.sl_item** %"114", align 8
  %"116" = getelementptr inbounds %struct.sl_item* %"115", i32 0, i32 2
  store %struct.sl_item* null, %struct.sl_item** %"116", align 8
  %"117" = getelementptr inbounds %struct.sl* %"90", i32 0, i32 0
  %"118" = getelementptr inbounds %struct.sl* %"90", i32 0, i32 1
  br label %main_sl_random_insert.exit

main_sl_random_insert.exit:                       ; preds = %main_bb35, %main_bb34, %main_.critedge.i, %main_bb21
  %"119" = call i32 (...)* @__VERIFIER_nondet_int()
  %"120" = icmp ne i32 %"119", 0
  br i1 %"120", label %main_bb22, label %main_bb36

main_bb22:                                        ; preds = %main_sl_random_insert.exit
  %"121" = load %struct.sl_item** %"117", align 8
  br label %main_bb23

main_bb23:                                        ; preds = %main_bb26, %main_bb22
  %a3.0.i = phi %struct.sl_item* [ %"121", %main_bb22 ], [ %"130", %main_bb26 ]
  %"122" = getelementptr inbounds %struct.sl_item* %a3.0.i, i32 0, i32 2
  %"123" = load %struct.sl_item** %"122", align 8
  %"124" = load %struct.sl_item** %"118", align 8
  %"125" = icmp ne %struct.sl_item* %"123", %"124"
  br i1 %"125", label %main_bb24, label %main_bb25

main_bb24:                                        ; preds = %main_bb23
  %"126" = call i32 (...)* @__VERIFIER_nondet_int() #3
  %"127" = icmp ne i32 %"126", 0
  br label %main_bb25

main_bb25:                                        ; preds = %main_bb24, %main_bb23
  %"128" = phi i1 [ false, %main_bb23 ], [ %"127", %main_bb24 ]
  %"129" = getelementptr inbounds %struct.sl_item* %a3.0.i, i32 0, i32 2
  br i1 %"128", label %main_bb26, label %main_bb27

main_bb26:                                        ; preds = %main_bb25
  %"130" = load %struct.sl_item** %"129", align 8
  br label %main_bb23

main_bb27:                                        ; preds = %main_bb30, %main_bb25
  %a2.0.i = phi %struct.sl_item* [ %"139", %main_bb30 ], [ %a3.0.i, %main_bb25 ]
  %"131" = getelementptr inbounds %struct.sl_item* %a2.0.i, i32 0, i32 1
  %"132" = load %struct.sl_item** %"131", align 8
  %"133" = load %struct.sl_item** %"129", align 8
  %"134" = icmp ne %struct.sl_item* %"132", %"133"
  br i1 %"134", label %main_bb28, label %main_bb29

main_bb28:                                        ; preds = %main_bb27
  %"135" = call i32 (...)* @__VERIFIER_nondet_int() #3
  %"136" = icmp ne i32 %"135", 0
  br label %main_bb29

main_bb29:                                        ; preds = %main_bb28, %main_bb27
  %"137" = phi i1 [ false, %main_bb27 ], [ %"136", %main_bb28 ]
  %"138" = getelementptr inbounds %struct.sl_item* %a2.0.i, i32 0, i32 1
  br i1 %"137", label %main_bb30, label %main_bb31

main_bb30:                                        ; preds = %main_bb29
  %"139" = load %struct.sl_item** %"138", align 8
  br label %main_bb27

main_bb31:                                        ; preds = %main_bb33, %main_bb29
  %a1.0.i = phi %struct.sl_item* [ %"147", %main_bb33 ], [ %a2.0.i, %main_bb29 ]
  %"140" = getelementptr inbounds %struct.sl_item* %a1.0.i, i32 0, i32 0
  %"141" = load %struct.sl_item** %"140", align 8
  %"142" = load %struct.sl_item** %"138", align 8
  %"143" = icmp ne %struct.sl_item* %"141", %"142"
  br i1 %"143", label %main_bb32, label %main_.critedge.i

main_bb32:                                        ; preds = %main_bb31
  %"144" = call i32 (...)* @__VERIFIER_nondet_int() #3
  %"145" = icmp ne i32 %"144", 0
  br i1 %"145", label %main_bb33, label %main_.critedge.i

main_bb33:                                        ; preds = %main_bb32
  %"146" = getelementptr inbounds %struct.sl_item* %a1.0.i, i32 0, i32 0
  %"147" = load %struct.sl_item** %"146", align 8
  br label %main_bb31

main_.critedge.i:                                 ; preds = %main_bb32, %main_bb31
  %"148" = call noalias i8* @malloc(i64 24) #3
  %"149" = bitcast i8* %"148" to %struct.sl_item*
  %"150" = getelementptr inbounds %struct.sl_item* %a1.0.i, i32 0, i32 0
  %"151" = load %struct.sl_item** %"150", align 8
  %"152" = getelementptr inbounds %struct.sl_item* %"149", i32 0, i32 0
  store %struct.sl_item* %"151", %struct.sl_item** %"152", align 8
  %"153" = getelementptr inbounds %struct.sl_item* %a1.0.i, i32 0, i32 0
  store %struct.sl_item* %"149", %struct.sl_item** %"153", align 8
  %"154" = call i32 (...)* @__VERIFIER_nondet_int() #3
  %"155" = icmp ne i32 %"154", 0
  br i1 %"155", label %main_bb34, label %main_sl_random_insert.exit

main_bb34:                                        ; preds = %main_.critedge.i
  %"156" = getelementptr inbounds %struct.sl_item* %a2.0.i, i32 0, i32 1
  %"157" = load %struct.sl_item** %"156", align 8
  %"158" = getelementptr inbounds %struct.sl_item* %"149", i32 0, i32 1
  store %struct.sl_item* %"157", %struct.sl_item** %"158", align 8
  %"159" = getelementptr inbounds %struct.sl_item* %a2.0.i, i32 0, i32 1
  store %struct.sl_item* %"149", %struct.sl_item** %"159", align 8
  %"160" = call i32 (...)* @__VERIFIER_nondet_int() #3
  %"161" = icmp ne i32 %"160", 0
  br i1 %"161", label %main_bb35, label %main_sl_random_insert.exit

main_bb35:                                        ; preds = %main_bb34
  %"162" = getelementptr inbounds %struct.sl_item* %a3.0.i, i32 0, i32 2
  %"163" = load %struct.sl_item** %"162", align 8
  %"164" = getelementptr inbounds %struct.sl_item* %"149", i32 0, i32 2
  store %struct.sl_item* %"163", %struct.sl_item** %"164", align 8
  %"165" = getelementptr inbounds %struct.sl_item* %a3.0.i, i32 0, i32 2
  store %struct.sl_item* %"149", %struct.sl_item** %"165", align 8
  br label %main_sl_random_insert.exit

main_bb36:                                        ; preds = %main_sl_random_insert.exit
  %"166" = getelementptr inbounds %struct.sl* %"90", i32 0, i32 0
  %"167" = getelementptr inbounds %struct.sl* %"90", i32 0, i32 0
  %"168" = getelementptr inbounds %struct.sl* %"90", i32 0, i32 0
  %"169" = getelementptr inbounds %struct.sl* %"90", i32 0, i32 0
  br label %main_bb37

main_bb37:                                        ; preds = %main_bb38, %main_bb36
  %"170" = load %struct.sl_item** %"166", align 8
  %"171" = icmp ne %struct.sl_item* %"170", null
  br i1 %"171", label %main_bb38, label %main_destroy_sl.exit

main_bb38:                                        ; preds = %main_bb37
  %"172" = load %struct.sl_item** %"167", align 8
  %"173" = load %struct.sl_item** %"168", align 8
  %"174" = getelementptr inbounds %struct.sl_item* %"173", i32 0, i32 0
  %"175" = load %struct.sl_item** %"174", align 8
  store %struct.sl_item* %"175", %struct.sl_item** %"169", align 8
  %"176" = bitcast %struct.sl_item* %"172" to i8*
  call void @free(i8* %"176") #3
  br label %main_bb37

main_destroy_sl.exit:                             ; preds = %main_bb37
  %"177" = bitcast %struct.sl* %"90" to i8*
  call void @free(i8* %"177") #3
  ret i32 0
}

declare %struct.sl_item* @__kittel_nondef.0()

declare %struct.sl* @__kittel_nondef.1()

declare i32 @__kittel_nondef.2()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

