; ModuleID = 'Benchmarks/TermCOMP/C/Hensel_22/nondet_ll_search_zero/nondet_ll_search_zero.bc'
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
define void @search(%struct.list* %head, i32 %m) #0 {
search_bb4:
  br label %search_bb5

search_bb5:                                       ; preds = %search_bb7, %search_bb4
  %curr.0 = phi %struct.list* [ %head, %search_bb4 ], [ %"14", %search_bb7 ]
  %"7" = getelementptr inbounds %struct.list* %curr.0, i32 0, i32 1
  %"8" = load %struct.list** %"7", align 8
  %"9" = icmp ne %struct.list* %"8", null
  br i1 %"9", label %search_bb6, label %search_.critedge

search_bb6:                                       ; preds = %search_bb5
  %"10" = getelementptr inbounds %struct.list* %curr.0, i32 0, i32 0
  %"11" = load i32* %"10", align 4
  %"12" = icmp ne i32 %"11", %m
  br i1 %"12", label %search_bb7, label %search_.critedge

search_bb7:                                       ; preds = %search_bb6
  %"13" = getelementptr inbounds %struct.list* %curr.0, i32 0, i32 1
  %"14" = load %struct.list** %"13", align 8
  br label %search_bb5

search_.critedge:                                 ; preds = %search_bb5, %search_bb6
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb8:
  %"15" = call i32 (...)* @__VERIFIER_nondet_int()
  %"16" = icmp slt i32 %"15", 1
  br i1 %"16", label %main_search.exit, label %main_bb9

main_bb9:                                         ; preds = %main_bb8, %main_bb10
  %j.0.i = phi i32 [ %"23", %main_bb10 ], [ 0, %main_bb8 ]
  %tail.0.i = phi %struct.list* [ %"19", %main_bb10 ], [ null, %main_bb8 ]
  %"17" = icmp slt i32 %j.0.i, %"15"
  br i1 %"17", label %main_bb10, label %main_init_list.exit

main_bb10:                                        ; preds = %main_bb9
  %"18" = call noalias i8* @malloc(i64 16) #3
  %"19" = bitcast i8* %"18" to %struct.list*
  %"20" = call i32 (...)* @__VERIFIER_nondet_int() #3
  %"21" = getelementptr inbounds %struct.list* %"19", i32 0, i32 0
  store i32 %"20", i32* %"21", align 4
  %"22" = getelementptr inbounds %struct.list* %"19", i32 0, i32 1
  store %struct.list* %tail.0.i, %struct.list** %"22", align 8
  %"23" = add nsw i32 %j.0.i, 1
  br label %main_bb9

main_init_list.exit:                              ; preds = %main_bb9, %main_bb12
  %curr.0.i = phi %struct.list* [ %"31", %main_bb12 ], [ %tail.0.i, %main_bb9 ]
  %"24" = getelementptr inbounds %struct.list* %curr.0.i, i32 0, i32 1
  %"25" = load %struct.list** %"24", align 8
  %"26" = icmp ne %struct.list* %"25", null
  br i1 %"26", label %main_bb11, label %main_search.exit

main_bb11:                                        ; preds = %main_init_list.exit
  %"27" = getelementptr inbounds %struct.list* %curr.0.i, i32 0, i32 0
  %"28" = load i32* %"27", align 4
  %"29" = icmp ne i32 %"28", 0
  br i1 %"29", label %main_bb12, label %main_search.exit

main_bb12:                                        ; preds = %main_bb11
  %"30" = getelementptr inbounds %struct.list* %curr.0.i, i32 0, i32 1
  %"31" = load %struct.list** %"30", align 8
  br label %main_init_list.exit

main_search.exit:                                 ; preds = %main_bb11, %main_init_list.exit, %main_bb8
  ret i32 0
}

declare i32 @__kittel_nondef.0()

declare %struct.list* @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

