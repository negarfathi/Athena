; ModuleID = 'Benchmarks/TermCOMP/C/Hensel_22/nondet_ll_insert/nondet_ll_insert.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list = type { i32, %struct.list* }

; Function Attrs: nounwind uwtable
define %struct.list* @init_list(i32 %n) #0 {
init_list_bb0:
  br label %init_list_bb1

init_list_bb1:                                    ; preds = %init_list_bb2, %init_list_bb0
  %j.0 = phi i32 [ 0, %init_list_bb0 ], [ %"6", %init_list_bb2 ]
  %tail.0 = phi %struct.list* [ null, %init_list_bb0 ], [ %"2", %init_list_bb2 ]
  %"0" = icmp slt i32 %j.0, %n
  br i1 %"0", label %init_list_bb2, label %init_list_bb3

init_list_bb2:                                    ; preds = %init_list_bb1
  %"1" = call noalias i8* @malloc(i64 16) #3
  %"2" = bitcast i8* %"1" to %struct.list*
  %"3" = call i32 (...)* @__VERIFIER_nondet_int()
  %"4" = getelementptr inbounds %struct.list* %"2", i32 0, i32 0
  store i32 %"3", i32* %"4", align 4
  %"5" = getelementptr inbounds %struct.list* %"2", i32 0, i32 1
  store %struct.list* %tail.0, %struct.list** %"5", align 8
  %"6" = add nsw i32 %j.0, 1
  br label %init_list_bb1

init_list_bb3:                                    ; preds = %init_list_bb1
  ret %struct.list* %tail.0
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare i32 @__VERIFIER_nondet_int(...) #2

; Function Attrs: nounwind uwtable
define void @insert(%struct.list** %head_ptr, i32 %m) #0 {
insert_bb4:
  %"7" = load %struct.list** %head_ptr, align 8
  %"8" = call noalias i8* @malloc(i64 16) #3
  %"9" = bitcast i8* %"8" to %struct.list*
  %"10" = getelementptr inbounds %struct.list* %"9", i32 0, i32 0
  store i32 %m, i32* %"10", align 4
  %"11" = icmp eq %struct.list* %"7", null
  br i1 %"11", label %insert_bb6, label %insert_bb5

insert_bb5:                                       ; preds = %insert_bb4
  %"12" = getelementptr inbounds %struct.list* %"7", i32 0, i32 0
  %"13" = load i32* %"12", align 4
  %"14" = icmp sge i32 %"13", %m
  br i1 %"14", label %insert_bb6, label %insert_bb7

insert_bb6:                                       ; preds = %insert_bb5, %insert_bb4
  %"15" = getelementptr inbounds %struct.list* %"9", i32 0, i32 1
  store %struct.list* %"7", %struct.list** %"15", align 8
  store %struct.list* %"9", %struct.list** %head_ptr, align 8
  br label %insert_bb11

insert_bb7:                                       ; preds = %insert_bb9, %insert_bb5
  %curr.0 = phi %struct.list* [ %"7", %insert_bb5 ], [ %"26", %insert_bb9 ]
  %"16" = getelementptr inbounds %struct.list* %curr.0, i32 0, i32 1
  %"17" = load %struct.list** %"16", align 8
  %"18" = icmp ne %struct.list* %"17", null
  br i1 %"18", label %insert_bb8, label %insert_bb9

insert_bb8:                                       ; preds = %insert_bb7
  %"19" = getelementptr inbounds %struct.list* %curr.0, i32 0, i32 1
  %"20" = load %struct.list** %"19", align 8
  %"21" = getelementptr inbounds %struct.list* %"20", i32 0, i32 0
  %"22" = load i32* %"21", align 4
  %"23" = icmp slt i32 %"22", %m
  br label %insert_bb9

insert_bb9:                                       ; preds = %insert_bb8, %insert_bb7
  %"24" = phi i1 [ false, %insert_bb7 ], [ %"23", %insert_bb8 ]
  %"25" = getelementptr inbounds %struct.list* %curr.0, i32 0, i32 1
  %"26" = load %struct.list** %"25", align 8
  br i1 %"24", label %insert_bb7, label %insert_bb10

insert_bb10:                                      ; preds = %insert_bb9
  %"27" = getelementptr inbounds %struct.list* %"9", i32 0, i32 1
  store %struct.list* %"26", %struct.list** %"27", align 8
  %"28" = getelementptr inbounds %struct.list* %curr.0, i32 0, i32 1
  store %struct.list* %"9", %struct.list** %"28", align 8
  store %struct.list* %"7", %struct.list** %head_ptr, align 8
  br label %insert_bb11

insert_bb11:                                      ; preds = %insert_bb10, %insert_bb6
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb12:
  %"29" = call i32 (...)* @__VERIFIER_nondet_int()
  %"30" = icmp slt i32 %"29", 1
  br i1 %"30", label %main_insert.exit, label %main_bb13

main_bb13:                                        ; preds = %main_bb12
  %"31" = call i32 (...)* @__VERIFIER_nondet_int()
  br label %main_bb14

main_bb14:                                        ; preds = %main_bb15, %main_bb13
  %j.0.i = phi i32 [ 0, %main_bb13 ], [ %"38", %main_bb15 ]
  %tail.0.i = phi %struct.list* [ null, %main_bb13 ], [ %"34", %main_bb15 ]
  %"32" = icmp slt i32 %j.0.i, %"29"
  %"33" = call noalias i8* @malloc(i64 16) #3
  %"34" = bitcast i8* %"33" to %struct.list*
  br i1 %"32", label %main_bb15, label %main_init_list.exit

main_bb15:                                        ; preds = %main_bb14
  %"35" = call i32 (...)* @__VERIFIER_nondet_int() #3
  %"36" = getelementptr inbounds %struct.list* %"34", i32 0, i32 0
  store i32 %"35", i32* %"36", align 4
  %"37" = getelementptr inbounds %struct.list* %"34", i32 0, i32 1
  store %struct.list* %tail.0.i, %struct.list** %"37", align 8
  %"38" = add nsw i32 %j.0.i, 1
  br label %main_bb14

main_init_list.exit:                              ; preds = %main_bb14
  %"39" = getelementptr inbounds %struct.list* %"34", i32 0, i32 0
  store i32 %"31", i32* %"39", align 4
  %"40" = icmp eq %struct.list* %tail.0.i, null
  br i1 %"40", label %main_bb17, label %main_bb16

main_bb16:                                        ; preds = %main_init_list.exit
  %"41" = getelementptr inbounds %struct.list* %tail.0.i, i32 0, i32 0
  %"42" = load i32* %"41", align 4
  %"43" = icmp sge i32 %"42", %"31"
  br i1 %"43", label %main_bb17, label %main_bb18

main_bb17:                                        ; preds = %main_bb16, %main_init_list.exit
  %"44" = getelementptr inbounds %struct.list* %"34", i32 0, i32 1
  store %struct.list* %tail.0.i, %struct.list** %"44", align 8
  br label %main_insert.exit

main_bb18:                                        ; preds = %main_bb20, %main_bb16
  %curr.0.i = phi %struct.list* [ %tail.0.i, %main_bb16 ], [ %"55", %main_bb20 ]
  %"45" = getelementptr inbounds %struct.list* %curr.0.i, i32 0, i32 1
  %"46" = load %struct.list** %"45", align 8
  %"47" = icmp ne %struct.list* %"46", null
  br i1 %"47", label %main_bb19, label %main_bb20

main_bb19:                                        ; preds = %main_bb18
  %"48" = getelementptr inbounds %struct.list* %curr.0.i, i32 0, i32 1
  %"49" = load %struct.list** %"48", align 8
  %"50" = getelementptr inbounds %struct.list* %"49", i32 0, i32 0
  %"51" = load i32* %"50", align 4
  %"52" = icmp slt i32 %"51", %"31"
  br label %main_bb20

main_bb20:                                        ; preds = %main_bb19, %main_bb18
  %"53" = phi i1 [ false, %main_bb18 ], [ %"52", %main_bb19 ]
  %"54" = getelementptr inbounds %struct.list* %curr.0.i, i32 0, i32 1
  %"55" = load %struct.list** %"54", align 8
  br i1 %"53", label %main_bb18, label %main_bb21

main_bb21:                                        ; preds = %main_bb20
  %"56" = getelementptr inbounds %struct.list* %"34", i32 0, i32 1
  store %struct.list* %"55", %struct.list** %"56", align 8
  %"57" = getelementptr inbounds %struct.list* %curr.0.i, i32 0, i32 1
  store %struct.list* %"34", %struct.list** %"57", align 8
  br label %main_insert.exit

main_insert.exit:                                 ; preds = %main_bb21, %main_bb17, %main_bb12
  ret i32 0
}

declare i32 @__kittel_nondef.0()

declare %struct.list* @__kittel_nondef.1()

declare %struct.list** @__kittel_nondef.2()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

