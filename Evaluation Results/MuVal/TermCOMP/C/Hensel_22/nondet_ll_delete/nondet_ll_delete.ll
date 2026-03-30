; ModuleID = 'Benchmarks/TermCOMP/C/Hensel_22/nondet_ll_delete/nondet_ll_delete.bc'
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
define void @delete(%struct.list** %head_ptr, i32 %m) #0 {
delete_bb4:
  %"7" = load %struct.list** %head_ptr, align 8
  %"8" = icmp eq %struct.list* %"7", null
  br i1 %"8", label %delete_bb11, label %delete_bb5

delete_bb5:                                       ; preds = %delete_bb7, %delete_bb6, %delete_bb4
  %curr.0 = phi %struct.list* [ %"7", %delete_bb4 ], [ %curr.0, %delete_bb7 ], [ %"18", %delete_bb6 ]
  %"9" = getelementptr inbounds %struct.list* %curr.0, i32 0, i32 1
  %"10" = load %struct.list** %"9", align 8
  %"11" = icmp ne %struct.list* %"10", null
  br i1 %"11", label %delete_bb6, label %delete_bb8

delete_bb6:                                       ; preds = %delete_bb5
  %"12" = getelementptr inbounds %struct.list* %curr.0, i32 0, i32 1
  %"13" = load %struct.list** %"12", align 8
  %"14" = getelementptr inbounds %struct.list* %"13", i32 0, i32 0
  %"15" = load i32* %"14", align 4
  %"16" = icmp eq i32 %"15", %m
  %"17" = getelementptr inbounds %struct.list* %curr.0, i32 0, i32 1
  %"18" = load %struct.list** %"17", align 8
  br i1 %"16", label %delete_bb7, label %delete_bb5

delete_bb7:                                       ; preds = %delete_bb6
  %"19" = getelementptr inbounds %struct.list* %"18", i32 0, i32 1
  %"20" = load %struct.list** %"19", align 8
  %"21" = getelementptr inbounds %struct.list* %curr.0, i32 0, i32 1
  store %struct.list* %"20", %struct.list** %"21", align 8
  br label %delete_bb5

delete_bb8:                                       ; preds = %delete_bb5
  %"22" = getelementptr inbounds %struct.list* %"7", i32 0, i32 0
  %"23" = load i32* %"22", align 4
  %"24" = icmp eq i32 %"23", %m
  br i1 %"24", label %delete_bb9, label %delete_bb10

delete_bb9:                                       ; preds = %delete_bb8
  %"25" = getelementptr inbounds %struct.list* %"7", i32 0, i32 1
  %"26" = load %struct.list** %"25", align 8
  br label %delete_bb10

delete_bb10:                                      ; preds = %delete_bb9, %delete_bb8
  %head.0 = phi %struct.list* [ %"26", %delete_bb9 ], [ %"7", %delete_bb8 ]
  store %struct.list* %head.0, %struct.list** %head_ptr, align 8
  br label %delete_bb11

delete_bb11:                                      ; preds = %delete_bb4, %delete_bb10
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb12:
  %"27" = call i32 (...)* @__VERIFIER_nondet_int()
  %"28" = call i32 (...)* @__VERIFIER_nondet_int()
  br label %main_bb13

main_bb13:                                        ; preds = %main_bb14, %main_bb12
  %j.0.i = phi i32 [ 0, %main_bb12 ], [ %"35", %main_bb14 ]
  %tail.0.i = phi %struct.list* [ null, %main_bb12 ], [ %"31", %main_bb14 ]
  %"29" = icmp slt i32 %j.0.i, %"27"
  br i1 %"29", label %main_bb14, label %main_init_list.exit

main_bb14:                                        ; preds = %main_bb13
  %"30" = call noalias i8* @malloc(i64 16) #3
  %"31" = bitcast i8* %"30" to %struct.list*
  %"32" = call i32 (...)* @__VERIFIER_nondet_int() #3
  %"33" = getelementptr inbounds %struct.list* %"31", i32 0, i32 0
  store i32 %"32", i32* %"33", align 4
  %"34" = getelementptr inbounds %struct.list* %"31", i32 0, i32 1
  store %struct.list* %tail.0.i, %struct.list** %"34", align 8
  %"35" = add nsw i32 %j.0.i, 1
  br label %main_bb13

main_init_list.exit:                              ; preds = %main_bb13
  %"36" = icmp eq %struct.list* %tail.0.i, null
  br i1 %"36", label %main_delete.exit, label %main_bb15

main_bb15:                                        ; preds = %main_bb17, %main_bb16, %main_init_list.exit
  %curr.0.i = phi %struct.list* [ %tail.0.i, %main_init_list.exit ], [ %curr.0.i, %main_bb17 ], [ %"46", %main_bb16 ]
  %"37" = getelementptr inbounds %struct.list* %curr.0.i, i32 0, i32 1
  %"38" = load %struct.list** %"37", align 8
  %"39" = icmp ne %struct.list* %"38", null
  br i1 %"39", label %main_bb16, label %main_bb18

main_bb16:                                        ; preds = %main_bb15
  %"40" = getelementptr inbounds %struct.list* %curr.0.i, i32 0, i32 1
  %"41" = load %struct.list** %"40", align 8
  %"42" = getelementptr inbounds %struct.list* %"41", i32 0, i32 0
  %"43" = load i32* %"42", align 4
  %"44" = icmp eq i32 %"43", %"28"
  %"45" = getelementptr inbounds %struct.list* %curr.0.i, i32 0, i32 1
  %"46" = load %struct.list** %"45", align 8
  br i1 %"44", label %main_bb17, label %main_bb15

main_bb17:                                        ; preds = %main_bb16
  %"47" = getelementptr inbounds %struct.list* %"46", i32 0, i32 1
  %"48" = load %struct.list** %"47", align 8
  %"49" = getelementptr inbounds %struct.list* %curr.0.i, i32 0, i32 1
  store %struct.list* %"48", %struct.list** %"49", align 8
  br label %main_bb15

main_bb18:                                        ; preds = %main_bb15
  br label %main_delete.exit

main_delete.exit:                                 ; preds = %main_init_list.exit, %main_bb18
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

