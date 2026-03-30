; ModuleID = 'Benchmarks/TermCOMP/C/SV-COMP_Mixed_Categories/merge_sort_true-unreach-call/merge_sort_true-unreach-call.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list = type { %struct.node*, %struct.list* }
%struct.node = type { %struct.node*, i32 }

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  br label %main_bb1

main_bb1:                                         ; preds = %main_bb4, %main_bb0
  %data.0 = phi %struct.list* [ null, %main_bb0 ], [ %"9", %main_bb4 ]
  %"0" = call i32 @__VERIFIER_nondet_int()
  %"1" = icmp ne i32 %"0", 0
  br i1 %"1", label %main_bb2, label %main_bb7

main_bb2:                                         ; preds = %main_bb1
  %"2" = call noalias i8* @malloc(i64 16) #5
  %"3" = bitcast i8* %"2" to %struct.node*
  %"4" = icmp ne %struct.node* %"3", null
  br i1 %"4", label %main_bb3, label %main_bb6

main_bb3:                                         ; preds = %main_bb2
  %"5" = getelementptr inbounds %struct.node* %"3", i32 0, i32 0
  store %struct.node* null, %struct.node** %"5", align 8
  %"6" = call i32 @__VERIFIER_nondet_int()
  %"7" = getelementptr inbounds %struct.node* %"3", i32 0, i32 1
  store i32 %"6", i32* %"7", align 4
  %"8" = call noalias i8* @malloc(i64 16) #5
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
  call void @abort() #6
  unreachable

main_bb6:                                         ; preds = %main_bb2
  call void @abort() #6
  unreachable

main_bb7:                                         ; preds = %main_bb1
  %"13" = icmp ne %struct.list* %data.0, null
  br i1 %"13", label %main_bb8, label %main_bb49

main_bb8:                                         ; preds = %main_bb7, %main_bb13
  %.0.i = phi %struct.list* [ %"30", %main_bb13 ], [ %data.0, %main_bb7 ]
  %"14" = getelementptr inbounds %struct.list* %.0.i, i32 0, i32 1
  %"15" = load %struct.list** %"14", align 8
  %"16" = icmp ne %struct.list* %"15", null
  %"17" = icmp ne %struct.list* %.0.i, null
  br i1 %"16", label %main_bb9, label %main_bb18

main_bb9:                                         ; preds = %main_bb8
  br i1 %"17", label %main_bb10, label %main_bb17

main_bb10:                                        ; preds = %main_bb9
  %"18" = getelementptr inbounds %struct.list* %.0.i, i32 0, i32 1
  %"19" = load %struct.list** %"18", align 8
  %"20" = icmp ne %struct.list* %"19", null
  br i1 %"20", label %main_bb11, label %main_bb16

main_bb11:                                        ; preds = %main_bb10
  %"21" = getelementptr inbounds %struct.list* %.0.i, i32 0, i32 0
  %"22" = load %struct.node** %"21", align 8
  %"23" = icmp ne %struct.node* %"22", null
  br i1 %"23", label %main_bb12, label %main_bb15

main_bb12:                                        ; preds = %main_bb11
  %"24" = getelementptr inbounds %struct.list* %.0.i, i32 0, i32 0
  %"25" = load %struct.node** %"24", align 8
  %"26" = getelementptr inbounds %struct.node* %"25", i32 0, i32 0
  %"27" = load %struct.node** %"26", align 8
  %"28" = icmp eq %struct.node* %"27", null
  br i1 %"28", label %main_bb13, label %main_bb14

main_bb13:                                        ; preds = %main_bb12
  %"29" = getelementptr inbounds %struct.list* %.0.i, i32 0, i32 1
  %"30" = load %struct.list** %"29", align 8
  br label %main_bb8

main_bb14:                                        ; preds = %main_bb12
  call void (...)* @__VERIFIER_error() #6
  unreachable

main_bb15:                                        ; preds = %main_bb11
  call void (...)* @__VERIFIER_error() #6
  unreachable

main_bb16:                                        ; preds = %main_bb10
  call void (...)* @__VERIFIER_error() #6
  unreachable

main_bb17:                                        ; preds = %main_bb9
  call void (...)* @__VERIFIER_error() #6
  unreachable

main_bb18:                                        ; preds = %main_bb8
  br i1 %"17", label %main_bb19, label %main_bb48

main_bb19:                                        ; preds = %main_bb18
  %"31" = getelementptr inbounds %struct.list* %.0.i, i32 0, i32 1
  %"32" = load %struct.list** %"31", align 8
  %"33" = icmp eq %struct.list* %"32", null
  br i1 %"33", label %main_bb20, label %main_bb47

main_bb20:                                        ; preds = %main_bb19
  %"34" = getelementptr inbounds %struct.list* %.0.i, i32 0, i32 0
  %"35" = load %struct.node** %"34", align 8
  %"36" = icmp ne %struct.node* %"35", null
  br i1 %"36", label %main_bb21, label %main_bb46

main_bb21:                                        ; preds = %main_bb20
  %"37" = getelementptr inbounds %struct.list* %.0.i, i32 0, i32 0
  %"38" = load %struct.node** %"37", align 8
  %"39" = getelementptr inbounds %struct.node* %"38", i32 0, i32 0
  %"40" = load %struct.node** %"39", align 8
  %"41" = icmp eq %struct.node* %"40", null
  br i1 %"41", label %main_inspect_before.exit, label %main_bb45

main_inspect_before.exit:                         ; preds = %main_bb32, %main_bb22, %main_bb21
  %data.1 = phi %struct.list* [ %data.0, %main_bb21 ], [ %.0.i1, %main_bb32 ], [ %dst.0.i, %main_bb22 ]
  %"42" = getelementptr inbounds %struct.list* %data.1, i32 0, i32 1
  %"43" = load %struct.list** %"42", align 8
  %"44" = icmp ne %struct.list* %"43", null
  br i1 %"44", label %main_bb22, label %main_bb33

main_bb22:                                        ; preds = %main_inspect_before.exit, %main_merge_pair.exit.i
  %dst.0.i = phi %struct.list* [ %.0.i1, %main_merge_pair.exit.i ], [ null, %main_inspect_before.exit ]
  %.0.i1 = phi %struct.list* [ %"72", %main_merge_pair.exit.i ], [ %data.1, %main_inspect_before.exit ]
  %"45" = icmp ne %struct.list* %.0.i1, null
  br i1 %"45", label %main_bb23, label %main_inspect_before.exit

main_bb23:                                        ; preds = %main_bb22
  %"46" = getelementptr inbounds %struct.list* %.0.i1, i32 0, i32 1
  %"47" = load %struct.list** %"46", align 8
  %"48" = icmp ne %struct.list* %"47", null
  br i1 %"48", label %main_bb24, label %main_bb32

main_bb24:                                        ; preds = %main_bb23
  %"49" = getelementptr inbounds %struct.list* %.0.i1, i32 0, i32 0
  %"50" = getelementptr inbounds %struct.list* %.0.i1, i32 0, i32 0
  %"51" = load %struct.node** %"50", align 8
  %"52" = getelementptr inbounds %struct.list* %"47", i32 0, i32 0
  %"53" = load %struct.node** %"52", align 8
  br label %main_bb25

main_bb25:                                        ; preds = %main_bb31, %main_bb24
  %.03.i.i = phi %struct.node* [ %"53", %main_bb24 ], [ %.14.i.i, %main_bb31 ]
  %.01.i.i = phi %struct.node* [ %"51", %main_bb24 ], [ %.12.i.i, %main_bb31 ]
  %.0.i.i = phi %struct.node** [ %"49", %main_bb24 ], [ %"69", %main_bb31 ]
  %"54" = icmp ne %struct.node* %.01.i.i, null
  %"55" = icmp ne %struct.node* %.03.i.i, null
  %..i.i = select i1 %"54", i1 true, i1 %"55"
  br i1 %..i.i, label %main_bb26, label %main_merge_pair.exit.i

main_bb26:                                        ; preds = %main_bb25
  %"56" = icmp ne %struct.node* %.03.i.i, null
  br i1 %"56", label %main_bb27, label %main_bb30

main_bb27:                                        ; preds = %main_bb26
  %"57" = icmp ne %struct.node* %.01.i.i, null
  br i1 %"57", label %main_bb28, label %main_bb29

main_bb28:                                        ; preds = %main_bb27
  %"58" = getelementptr inbounds %struct.node* %.01.i.i, i32 0, i32 1
  %"59" = load i32* %"58", align 4
  %"60" = getelementptr inbounds %struct.node* %.03.i.i, i32 0, i32 1
  %"61" = load i32* %"60", align 4
  %"62" = icmp slt i32 %"59", %"61"
  br i1 %"62", label %main_bb30, label %main_bb29

main_bb29:                                        ; preds = %main_bb28, %main_bb27
  %"63" = getelementptr inbounds %struct.node* %.03.i.i, i32 0, i32 0
  %"64" = load %struct.node** %"63", align 8
  %"65" = getelementptr inbounds %struct.node* %.03.i.i, i32 0, i32 0
  store %struct.node* null, %struct.node** %"65", align 8
  store %struct.node* %.03.i.i, %struct.node** %.0.i.i, align 8
  br label %main_bb31

main_bb30:                                        ; preds = %main_bb28, %main_bb26
  %"66" = getelementptr inbounds %struct.node* %.01.i.i, i32 0, i32 0
  %"67" = load %struct.node** %"66", align 8
  %"68" = getelementptr inbounds %struct.node* %.01.i.i, i32 0, i32 0
  store %struct.node* null, %struct.node** %"68", align 8
  store %struct.node* %.01.i.i, %struct.node** %.0.i.i, align 8
  br label %main_bb31

main_bb31:                                        ; preds = %main_bb30, %main_bb29
  %.01.sink.i.i = phi %struct.node* [ %.01.i.i, %main_bb30 ], [ %.03.i.i, %main_bb29 ]
  %.14.i.i = phi %struct.node* [ %.03.i.i, %main_bb30 ], [ %"64", %main_bb29 ]
  %.12.i.i = phi %struct.node* [ %"67", %main_bb30 ], [ %.01.i.i, %main_bb29 ]
  %"69" = getelementptr inbounds %struct.node* %.01.sink.i.i, i32 0, i32 0
  br label %main_bb25

main_merge_pair.exit.i:                           ; preds = %main_bb25
  %"70" = getelementptr inbounds %struct.list* %.0.i1, i32 0, i32 1
  store %struct.list* %dst.0.i, %struct.list** %"70", align 8
  %"71" = getelementptr inbounds %struct.list* %"47", i32 0, i32 1
  %"72" = load %struct.list** %"71", align 8
  %"73" = bitcast %struct.list* %"47" to i8*
  call void @free(i8* %"73") #5
  br label %main_bb22

main_bb32:                                        ; preds = %main_bb23
  %"74" = getelementptr inbounds %struct.list* %.0.i1, i32 0, i32 1
  store %struct.list* %dst.0.i, %struct.list** %"74", align 8
  br label %main_inspect_before.exit

main_bb33:                                        ; preds = %main_inspect_before.exit
  %"75" = icmp ne %struct.list* %data.1, null
  br i1 %"75", label %main_bb34, label %main_bb44

main_bb34:                                        ; preds = %main_bb33
  %"76" = getelementptr inbounds %struct.list* %data.1, i32 0, i32 1
  %"77" = load %struct.list** %"76", align 8
  %"78" = icmp eq %struct.list* %"77", null
  br i1 %"78", label %main_bb35, label %main_bb43

main_bb35:                                        ; preds = %main_bb34
  %"79" = getelementptr inbounds %struct.list* %data.1, i32 0, i32 0
  %"80" = load %struct.node** %"79", align 8
  %"81" = icmp ne %struct.node* %"80", null
  br i1 %"81", label %main_bb36, label %main_bb42

main_bb36:                                        ; preds = %main_bb35
  %"82" = getelementptr inbounds %struct.list* %data.1, i32 0, i32 0
  %"83" = load %struct.node** %"82", align 8
  br label %main_bb37

main_bb37:                                        ; preds = %main_bb37, %main_bb36
  %pos.0.i = phi %struct.node* [ %"83", %main_bb36 ], [ %"88", %main_bb37 ]
  %"84" = getelementptr inbounds %struct.node* %pos.0.i, i32 0, i32 0
  %"85" = load %struct.node** %"84", align 8
  %"86" = icmp ne %struct.node* %"85", null
  %"87" = getelementptr inbounds %struct.node* %pos.0.i, i32 0, i32 0
  %"88" = load %struct.node** %"87", align 8
  br i1 %"86", label %main_bb37, label %main_bb38

main_bb38:                                        ; preds = %main_bb37
  %"89" = icmp ne %struct.node* %"88", null
  br i1 %"89", label %main_bb39, label %main_inspect_after.exit

main_bb39:                                        ; preds = %main_bb38
  call void (...)* @__VERIFIER_error() #6
  unreachable

main_inspect_after.exit:                          ; preds = %main_bb38
  %"90" = getelementptr inbounds %struct.list* %data.1, i32 0, i32 0
  %"91" = load %struct.node** %"90", align 8
  %"92" = bitcast %struct.list* %data.1 to i8*
  call void @free(i8* %"92") #5
  br label %main_bb40

main_bb40:                                        ; preds = %main_bb41, %main_inspect_after.exit
  %node1.0 = phi %struct.node* [ %"91", %main_inspect_after.exit ], [ %"95", %main_bb41 ]
  %"93" = icmp ne %struct.node* %node1.0, null
  br i1 %"93", label %main_bb41, label %main_bb49

main_bb41:                                        ; preds = %main_bb40
  %"94" = getelementptr inbounds %struct.node* %node1.0, i32 0, i32 0
  %"95" = load %struct.node** %"94", align 8
  %"96" = bitcast %struct.node* %node1.0 to i8*
  call void @free(i8* %"96") #5
  br label %main_bb40

main_bb42:                                        ; preds = %main_bb35
  call void (...)* @__VERIFIER_error() #6
  unreachable

main_bb43:                                        ; preds = %main_bb34
  call void (...)* @__VERIFIER_error() #6
  unreachable

main_bb44:                                        ; preds = %main_bb33
  call void (...)* @__VERIFIER_error() #6
  unreachable

main_bb45:                                        ; preds = %main_bb21
  call void (...)* @__VERIFIER_error() #6
  unreachable

main_bb46:                                        ; preds = %main_bb20
  call void (...)* @__VERIFIER_error() #6
  unreachable

main_bb47:                                        ; preds = %main_bb19
  call void (...)* @__VERIFIER_error() #6
  unreachable

main_bb48:                                        ; preds = %main_bb18
  call void (...)* @__VERIFIER_error() #6
  unreachable

main_bb49:                                        ; preds = %main_bb40, %main_bb7
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int() #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: noreturn nounwind
declare void @abort() #3

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: noreturn
declare void @__VERIFIER_error(...) #4

declare %struct.list* @__kittel_nondef.0()

declare %struct.node*** @__kittel_nondef.1()

declare %struct.node** @__kittel_nondef.2()

declare %struct.node* @__kittel_nondef.3()

declare i32 @__kittel_nondef.4()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

