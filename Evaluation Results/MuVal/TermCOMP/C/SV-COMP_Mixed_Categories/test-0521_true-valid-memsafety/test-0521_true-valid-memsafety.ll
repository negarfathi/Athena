; ModuleID = 'Benchmarks/TermCOMP/C/SV-COMP_Mixed_Categories/test-0521_true-valid-memsafety/test-0521_true-valid-memsafety.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iterator = type { %struct.list*, %struct.node* }
%struct.list = type { %struct.node*, %struct.list* }
%struct.node = type { i32, %struct.node* }

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  %iter = alloca %struct.iterator, align 8
  %sub1 = alloca %struct.node*, align 8
  %sub2 = alloca %struct.node*, align 8
  %iter6 = alloca %struct.iterator, align 8
  br label %main_bb1

main_bb1:                                         ; preds = %main_bb4, %main_bb0
  %data.0 = phi %struct.list* [ null, %main_bb0 ], [ %"9", %main_bb4 ]
  %"0" = call i32 @__VERIFIER_nondet_int()
  %"1" = icmp ne i32 %"0", 0
  br i1 %"1", label %main_bb2, label %main_bb7

main_bb2:                                         ; preds = %main_bb1
  %"2" = call noalias i8* @malloc(i64 16) #4
  %"3" = bitcast i8* %"2" to %struct.node*
  %"4" = icmp ne %struct.node* %"3", null
  br i1 %"4", label %main_bb3, label %main_bb6

main_bb3:                                         ; preds = %main_bb2
  %"5" = getelementptr inbounds %struct.node* %"3", i32 0, i32 1
  store %struct.node* null, %struct.node** %"5", align 8
  %"6" = call i32 @__VERIFIER_nondet_int()
  %"7" = getelementptr inbounds %struct.node* %"3", i32 0, i32 0
  store i32 %"6", i32* %"7", align 4
  %"8" = call noalias i8* @malloc(i64 16) #4
  %"9" = bitcast i8* %"8" to %struct.list*
  %"10" = icmp ne %struct.list* %"9", null
  br i1 %"10", label %main_bb4, label %main_bb5

main_bb4:                                         ; preds = %main_bb3
  %"11" = getelementptr inbounds %struct.list* %"9", i32 0, i32 0
  store %struct.node* %"3", %struct.node** %"11", align 8
  %"12" = getelementptr inbounds %struct.list* %"9", i32 0, i32 1
  store %struct.list* %data.0, %struct.list** %"12", align 8
  br label %main_bb1

main_bb5:                                         ; preds = %main_bb3
  call void @abort() #5
  unreachable

main_bb6:                                         ; preds = %main_bb2
  call void @abort() #5
  unreachable

main_bb7:                                         ; preds = %main_bb1
  %"13" = getelementptr inbounds %struct.iterator* %iter, i32 0, i32 0
  store %struct.list* %data.0, %struct.list** %"13", align 8
  %"14" = icmp ne %struct.list* %data.0, null
  br i1 %"14", label %main_bb8, label %main_bb9

main_bb8:                                         ; preds = %main_bb7
  %"15" = getelementptr inbounds %struct.list* %data.0, i32 0, i32 0
  %"16" = load %struct.node** %"15", align 8
  %"17" = getelementptr inbounds %struct.iterator* %iter, i32 0, i32 1
  store %struct.node* %"16", %struct.node** %"17", align 8
  br label %main_bb9

main_bb9:                                         ; preds = %main_bb8, %main_bb7
  %"18" = getelementptr inbounds %struct.iterator* %iter, i32 0, i32 0
  %"19" = load %struct.list** %"18", align 8
  %"20" = icmp ne %struct.list* %"19", null
  br i1 %"20", label %main_bb10, label %main_bb13

main_bb10:                                        ; preds = %main_bb9
  %"21" = getelementptr inbounds %struct.iterator* %iter, i32 0, i32 1
  %"22" = load %struct.node** %"21", align 8
  %"23" = getelementptr inbounds %struct.node* %"22", i32 0, i32 1
  %"24" = load %struct.node** %"23", align 8
  %"25" = getelementptr inbounds %struct.iterator* %iter, i32 0, i32 1
  store %struct.node* %"24", %struct.node** %"25", align 8
  %"26" = icmp ne %struct.node* %"24", null
  br i1 %"26", label %main_bb13, label %main_bb11

main_bb11:                                        ; preds = %main_bb10
  %"27" = getelementptr inbounds %struct.iterator* %iter, i32 0, i32 0
  %"28" = load %struct.list** %"27", align 8
  %"29" = getelementptr inbounds %struct.list* %"28", i32 0, i32 1
  %"30" = load %struct.list** %"29", align 8
  %"31" = getelementptr inbounds %struct.iterator* %iter, i32 0, i32 0
  store %struct.list* %"30", %struct.list** %"31", align 8
  %"32" = icmp ne %struct.list* %"30", null
  br i1 %"32", label %main_bb12, label %main_bb13

main_bb12:                                        ; preds = %main_bb11
  %"33" = getelementptr inbounds %struct.iterator* %iter, i32 0, i32 0
  %"34" = load %struct.list** %"33", align 8
  %"35" = getelementptr inbounds %struct.list* %"34", i32 0, i32 0
  %"36" = load %struct.node** %"35", align 8
  %"37" = getelementptr inbounds %struct.iterator* %iter, i32 0, i32 1
  store %struct.node* %"36", %struct.node** %"37", align 8
  br label %main_bb13

main_bb13:                                        ; preds = %main_bb10, %main_bb12, %main_bb11, %main_bb9
  %node1.1 = phi %struct.node* [ null, %main_bb9 ], [ %"22", %main_bb11 ], [ %"22", %main_bb12 ], [ %"22", %main_bb10 ]
  %"38" = getelementptr inbounds %struct.iterator* %iter, i32 0, i32 0
  %"39" = getelementptr inbounds %struct.iterator* %iter, i32 0, i32 1
  %"40" = getelementptr inbounds %struct.iterator* %iter, i32 0, i32 1
  %"41" = getelementptr inbounds %struct.iterator* %iter, i32 0, i32 0
  %"42" = getelementptr inbounds %struct.iterator* %iter, i32 0, i32 0
  %"43" = getelementptr inbounds %struct.iterator* %iter, i32 0, i32 0
  %"44" = getelementptr inbounds %struct.iterator* %iter, i32 0, i32 1
  br label %main_bb14

main_bb14:                                        ; preds = %main_bb15, %main_bb17, %main_bb18, %main_bb16, %main_bb13
  %node1.2 = phi %struct.node* [ %node1.1, %main_bb13 ], [ null, %main_bb15 ], [ %"48", %main_bb17 ], [ %"48", %main_bb18 ], [ %"48", %main_bb16 ]
  %"45" = icmp ne %struct.node* %node1.2, null
  br i1 %"45", label %main_bb15, label %main_bb19

main_bb15:                                        ; preds = %main_bb14
  %"46" = load %struct.list** %"38", align 8
  %"47" = icmp ne %struct.list* %"46", null
  br i1 %"47", label %main_bb16, label %main_bb14

main_bb16:                                        ; preds = %main_bb15
  %"48" = load %struct.node** %"39", align 8
  %"49" = getelementptr inbounds %struct.node* %"48", i32 0, i32 1
  %"50" = load %struct.node** %"49", align 8
  store %struct.node* %"50", %struct.node** %"40", align 8
  %"51" = icmp ne %struct.node* %"50", null
  br i1 %"51", label %main_bb14, label %main_bb17

main_bb17:                                        ; preds = %main_bb16
  %"52" = load %struct.list** %"41", align 8
  %"53" = getelementptr inbounds %struct.list* %"52", i32 0, i32 1
  %"54" = load %struct.list** %"53", align 8
  store %struct.list* %"54", %struct.list** %"42", align 8
  %"55" = icmp ne %struct.list* %"54", null
  br i1 %"55", label %main_bb18, label %main_bb14

main_bb18:                                        ; preds = %main_bb17
  %"56" = load %struct.list** %"43", align 8
  %"57" = getelementptr inbounds %struct.list* %"56", i32 0, i32 0
  %"58" = load %struct.node** %"57", align 8
  store %struct.node* %"58", %struct.node** %"44", align 8
  br label %main_bb14

main_bb19:                                        ; preds = %main_bb21, %main_bb30, %main_bb14
  %list3.0 = phi %struct.list* [ %data.0, %main_bb14 ], [ %list3.1, %main_bb30 ], [ %dst.0, %main_bb21 ]
  %"59" = icmp ne %struct.list* %list3.0, null
  br i1 %"59", label %main_bb20, label %main_.critedge

main_bb20:                                        ; preds = %main_bb19
  %"60" = getelementptr inbounds %struct.list* %list3.0, i32 0, i32 1
  %"61" = load %struct.list** %"60", align 8
  %"62" = icmp ne %struct.list* %"61", null
  br i1 %"62", label %main_bb21, label %main_.critedge

main_bb21:                                        ; preds = %main_bb20, %main_bb29
  %dst.0 = phi %struct.list* [ %list3.1, %main_bb29 ], [ null, %main_bb20 ]
  %list3.1 = phi %struct.list* [ %"89", %main_bb29 ], [ %list3.0, %main_bb20 ]
  %"63" = icmp ne %struct.list* %list3.1, null
  br i1 %"63", label %main_bb22, label %main_bb19

main_bb22:                                        ; preds = %main_bb21
  %"64" = getelementptr inbounds %struct.list* %list3.1, i32 0, i32 1
  %"65" = load %struct.list** %"64", align 8
  %"66" = icmp ne %struct.list* %"65", null
  br i1 %"66", label %main_bb23, label %main_bb30

main_bb23:                                        ; preds = %main_bb22
  %"67" = getelementptr inbounds %struct.list* %list3.1, i32 0, i32 0
  %"68" = getelementptr inbounds %struct.list* %list3.1, i32 0, i32 0
  %"69" = load %struct.node** %"68", align 8
  store %struct.node* %"69", %struct.node** %sub1, align 8
  %"70" = getelementptr inbounds %struct.list* %"65", i32 0, i32 0
  %"71" = load %struct.node** %"70", align 8
  store %struct.node* %"71", %struct.node** %sub2, align 8
  br label %main_bb24

main_bb24:                                        ; preds = %main_bb28, %main_bb23
  %dst4.0 = phi %struct.node** [ %"67", %main_bb23 ], [ %"86", %main_bb28 ]
  %"72" = load %struct.node** %sub1, align 8
  %"73" = icmp ne %struct.node* %"72", null
  %"74" = load %struct.node** %sub2, align 8
  %"75" = icmp ne %struct.node* %"74", null
  %or.cond = or i1 %"73", %"75"
  br i1 %or.cond, label %main_.critedge1, label %main_bb29

main_.critedge1:                                  ; preds = %main_bb24
  %"76" = load %struct.node** %sub2, align 8
  %"77" = icmp ne %struct.node* %"76", null
  br i1 %"77", label %main_bb25, label %main_bb28

main_bb25:                                        ; preds = %main_.critedge1
  %"78" = load %struct.node** %sub1, align 8
  %"79" = icmp ne %struct.node* %"78", null
  br i1 %"79", label %main_bb26, label %main_bb27

main_bb26:                                        ; preds = %main_bb25
  %"80" = call i32 @__VERIFIER_nondet_int()
  %"81" = icmp ne i32 %"80", 0
  br i1 %"81", label %main_bb28, label %main_bb27

main_bb27:                                        ; preds = %main_bb26, %main_bb25
  br label %main_bb28

main_bb28:                                        ; preds = %main_.critedge1, %main_bb26, %main_bb27
  %pdata.0 = phi %struct.node** [ %sub2, %main_bb27 ], [ %sub1, %main_bb26 ], [ %sub1, %main_.critedge1 ]
  %"82" = load %struct.node** %pdata.0, align 8
  %"83" = getelementptr inbounds %struct.node* %"82", i32 0, i32 1
  %"84" = load %struct.node** %"83", align 8
  store %struct.node* %"84", %struct.node** %pdata.0, align 8
  %"85" = getelementptr inbounds %struct.node* %"82", i32 0, i32 1
  store %struct.node* null, %struct.node** %"85", align 8
  store %struct.node* %"82", %struct.node** %dst4.0, align 8
  %"86" = getelementptr inbounds %struct.node* %"82", i32 0, i32 1
  br label %main_bb24

main_bb29:                                        ; preds = %main_bb24
  %"87" = getelementptr inbounds %struct.list* %list3.1, i32 0, i32 1
  store %struct.list* %dst.0, %struct.list** %"87", align 8
  %"88" = getelementptr inbounds %struct.list* %"65", i32 0, i32 1
  %"89" = load %struct.list** %"88", align 8
  %"90" = bitcast %struct.list* %"65" to i8*
  call void @free(i8* %"90") #4
  br label %main_bb21

main_bb30:                                        ; preds = %main_bb22
  %"91" = getelementptr inbounds %struct.list* %list3.1, i32 0, i32 1
  store %struct.list* %dst.0, %struct.list** %"91", align 8
  br label %main_bb19

main_.critedge:                                   ; preds = %main_bb19, %main_bb20
  %"92" = getelementptr inbounds %struct.iterator* %iter6, i32 0, i32 0
  store %struct.list* %list3.0, %struct.list** %"92", align 8
  %"93" = icmp ne %struct.list* %list3.0, null
  br i1 %"93", label %main_bb31, label %main_bb32

main_bb31:                                        ; preds = %main_.critedge
  %"94" = getelementptr inbounds %struct.list* %list3.0, i32 0, i32 0
  %"95" = load %struct.node** %"94", align 8
  %"96" = getelementptr inbounds %struct.iterator* %iter6, i32 0, i32 1
  store %struct.node* %"95", %struct.node** %"96", align 8
  br label %main_bb32

main_bb32:                                        ; preds = %main_bb31, %main_.critedge
  %"97" = getelementptr inbounds %struct.iterator* %iter6, i32 0, i32 0
  %"98" = load %struct.list** %"97", align 8
  %"99" = icmp ne %struct.list* %"98", null
  br i1 %"99", label %main_bb33, label %main_bb36

main_bb33:                                        ; preds = %main_bb32
  %"100" = getelementptr inbounds %struct.iterator* %iter6, i32 0, i32 1
  %"101" = load %struct.node** %"100", align 8
  %"102" = getelementptr inbounds %struct.node* %"101", i32 0, i32 1
  %"103" = load %struct.node** %"102", align 8
  %"104" = getelementptr inbounds %struct.iterator* %iter6, i32 0, i32 1
  store %struct.node* %"103", %struct.node** %"104", align 8
  %"105" = icmp ne %struct.node* %"103", null
  br i1 %"105", label %main_bb36, label %main_bb34

main_bb34:                                        ; preds = %main_bb33
  %"106" = getelementptr inbounds %struct.iterator* %iter6, i32 0, i32 0
  %"107" = load %struct.list** %"106", align 8
  %"108" = getelementptr inbounds %struct.list* %"107", i32 0, i32 1
  %"109" = load %struct.list** %"108", align 8
  %"110" = getelementptr inbounds %struct.iterator* %iter6, i32 0, i32 0
  store %struct.list* %"109", %struct.list** %"110", align 8
  %"111" = icmp ne %struct.list* %"109", null
  br i1 %"111", label %main_bb35, label %main_bb36

main_bb35:                                        ; preds = %main_bb34
  %"112" = getelementptr inbounds %struct.iterator* %iter6, i32 0, i32 0
  %"113" = load %struct.list** %"112", align 8
  %"114" = getelementptr inbounds %struct.list* %"113", i32 0, i32 0
  %"115" = load %struct.node** %"114", align 8
  %"116" = getelementptr inbounds %struct.iterator* %iter6, i32 0, i32 1
  store %struct.node* %"115", %struct.node** %"116", align 8
  br label %main_bb36

main_bb36:                                        ; preds = %main_bb33, %main_bb35, %main_bb34, %main_bb32
  %node8.1 = phi %struct.node* [ null, %main_bb32 ], [ %"101", %main_bb34 ], [ %"101", %main_bb35 ], [ %"101", %main_bb33 ]
  %"117" = getelementptr inbounds %struct.iterator* %iter6, i32 0, i32 0
  %"118" = getelementptr inbounds %struct.iterator* %iter6, i32 0, i32 1
  %"119" = getelementptr inbounds %struct.iterator* %iter6, i32 0, i32 1
  %"120" = getelementptr inbounds %struct.iterator* %iter6, i32 0, i32 0
  %"121" = getelementptr inbounds %struct.iterator* %iter6, i32 0, i32 0
  %"122" = getelementptr inbounds %struct.iterator* %iter6, i32 0, i32 0
  %"123" = getelementptr inbounds %struct.iterator* %iter6, i32 0, i32 1
  br label %main_bb37

main_bb37:                                        ; preds = %main_bb38, %main_bb40, %main_bb41, %main_bb39, %main_bb36
  %node8.2 = phi %struct.node* [ %node8.1, %main_bb36 ], [ null, %main_bb38 ], [ %"127", %main_bb40 ], [ %"127", %main_bb41 ], [ %"127", %main_bb39 ]
  %"124" = icmp ne %struct.node* %node8.2, null
  br i1 %"124", label %main_bb38, label %main_bb42

main_bb38:                                        ; preds = %main_bb37
  %"125" = load %struct.list** %"117", align 8
  %"126" = icmp ne %struct.list* %"125", null
  br i1 %"126", label %main_bb39, label %main_bb37

main_bb39:                                        ; preds = %main_bb38
  %"127" = load %struct.node** %"118", align 8
  %"128" = getelementptr inbounds %struct.node* %"127", i32 0, i32 1
  %"129" = load %struct.node** %"128", align 8
  store %struct.node* %"129", %struct.node** %"119", align 8
  %"130" = icmp ne %struct.node* %"129", null
  br i1 %"130", label %main_bb37, label %main_bb40

main_bb40:                                        ; preds = %main_bb39
  %"131" = load %struct.list** %"120", align 8
  %"132" = getelementptr inbounds %struct.list* %"131", i32 0, i32 1
  %"133" = load %struct.list** %"132", align 8
  store %struct.list* %"133", %struct.list** %"121", align 8
  %"134" = icmp ne %struct.list* %"133", null
  br i1 %"134", label %main_bb41, label %main_bb37

main_bb41:                                        ; preds = %main_bb40
  %"135" = load %struct.list** %"122", align 8
  %"136" = getelementptr inbounds %struct.list* %"135", i32 0, i32 0
  %"137" = load %struct.node** %"136", align 8
  store %struct.node* %"137", %struct.node** %"123", align 8
  br label %main_bb37

main_bb42:                                        ; preds = %main_bb37, %main_bb46
  %data.1 = phi %struct.list* [ %"140", %main_bb46 ], [ %list3.0, %main_bb37 ]
  %"138" = icmp ne %struct.list* %data.1, null
  br i1 %"138", label %main_bb43, label %main_bb47

main_bb43:                                        ; preds = %main_bb42
  %"139" = getelementptr inbounds %struct.list* %data.1, i32 0, i32 1
  %"140" = load %struct.list** %"139", align 8
  %"141" = getelementptr inbounds %struct.list* %data.1, i32 0, i32 0
  %"142" = load %struct.node** %"141", align 8
  br label %main_bb44

main_bb44:                                        ; preds = %main_bb45, %main_bb43
  %node12.0 = phi %struct.node* [ %"142", %main_bb43 ], [ %"145", %main_bb45 ]
  %"143" = icmp ne %struct.node* %node12.0, null
  br i1 %"143", label %main_bb45, label %main_bb46

main_bb45:                                        ; preds = %main_bb44
  %"144" = getelementptr inbounds %struct.node* %node12.0, i32 0, i32 1
  %"145" = load %struct.node** %"144", align 8
  %"146" = bitcast %struct.node* %node12.0 to i8*
  call void @free(i8* %"146") #4
  br label %main_bb44

main_bb46:                                        ; preds = %main_bb44
  %"147" = bitcast %struct.list* %data.1 to i8*
  call void @free(i8* %"147") #4
  br label %main_bb42

main_bb47:                                        ; preds = %main_bb42
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int() #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: noreturn nounwind
declare void @abort() #3

; Function Attrs: nounwind
declare void @free(i8*) #2

declare i32 @__kittel_nondef.0()

declare %struct.list* @__kittel_nondef.1()

declare %struct.node* @__kittel_nondef.2()

declare %struct.node*** @__kittel_nondef.3()

declare %struct.node** @__kittel_nondef.4()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

