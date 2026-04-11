; ModuleID = 'Benchmarks/TermCOMP/C/Hensel_22/nondet_ll_search_last_zero/nondet_ll_search_last_zero.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list = type { i32, %struct.list* }

; Function Attrs: nounwind uwtable
define %struct.list* @init_list(i32 %n) #0 {
init_list_bb0:
  %"0" = call noalias i8* @malloc(i64 16) #3
  %"1" = bitcast i8* %"0" to %struct.list*
  %"2" = getelementptr inbounds %struct.list* %"1", i32 0, i32 0
  store i32 0, i32* %"2", align 4
  %"3" = getelementptr inbounds %struct.list* %"1", i32 0, i32 1
  store %struct.list* null, %struct.list** %"3", align 8
  br label %init_list_bb1

init_list_bb1:                                    ; preds = %init_list_bb2, %init_list_bb0
  %j.0 = phi i32 [ 1, %init_list_bb0 ], [ %"10", %init_list_bb2 ]
  %curr.0 = phi %struct.list* [ %"1", %init_list_bb0 ], [ %"6", %init_list_bb2 ]
  %"4" = icmp slt i32 %j.0, %n
  br i1 %"4", label %init_list_bb2, label %init_list_bb3

init_list_bb2:                                    ; preds = %init_list_bb1
  %"5" = call noalias i8* @malloc(i64 16) #3
  %"6" = bitcast i8* %"5" to %struct.list*
  %"7" = call i32 (...)* @__VERIFIER_nondet_int()
  %"8" = getelementptr inbounds %struct.list* %"6", i32 0, i32 0
  store i32 %"7", i32* %"8", align 4
  %"9" = getelementptr inbounds %struct.list* %"6", i32 0, i32 1
  store %struct.list* %curr.0, %struct.list** %"9", align 8
  %"10" = add nsw i32 %j.0, 1
  br label %init_list_bb1

init_list_bb3:                                    ; preds = %init_list_bb1
  ret %struct.list* %curr.0
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare i32 @__VERIFIER_nondet_int(...) #2

; Function Attrs: nounwind uwtable
define void @search(%struct.list* %head, i32 %m) #0 {
search_bb4:
  br label %search_bb5

search_bb5:                                       ; preds = %search_bb6, %search_bb4
  %curr.0 = phi %struct.list* [ %head, %search_bb4 ], [ %"15", %search_bb6 ]
  %"11" = getelementptr inbounds %struct.list* %curr.0, i32 0, i32 0
  %"12" = load i32* %"11", align 4
  %"13" = icmp ne i32 %"12", %m
  br i1 %"13", label %search_bb6, label %search_bb7

search_bb6:                                       ; preds = %search_bb5
  %"14" = getelementptr inbounds %struct.list* %curr.0, i32 0, i32 1
  %"15" = load %struct.list** %"14", align 8
  br label %search_bb5

search_bb7:                                       ; preds = %search_bb5
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb8:
  %"16" = call i32 (...)* @__VERIFIER_nondet_int()
  %"17" = icmp slt i32 %"16", 1
  br i1 %"17", label %main_search.exit, label %main_bb9

main_bb9:                                         ; preds = %main_bb8
  %"18" = call noalias i8* @malloc(i64 16) #3
  %"19" = bitcast i8* %"18" to %struct.list*
  %"20" = getelementptr inbounds %struct.list* %"19", i32 0, i32 0
  store i32 0, i32* %"20", align 4
  %"21" = getelementptr inbounds %struct.list* %"19", i32 0, i32 1
  store %struct.list* null, %struct.list** %"21", align 8
  br label %main_bb10

main_bb10:                                        ; preds = %main_bb11, %main_bb9
  %j.0.i = phi i32 [ 1, %main_bb9 ], [ %"28", %main_bb11 ]
  %curr.0.i = phi %struct.list* [ %"19", %main_bb9 ], [ %"24", %main_bb11 ]
  %"22" = icmp slt i32 %j.0.i, %"16"
  br i1 %"22", label %main_bb11, label %main_init_list.exit

main_bb11:                                        ; preds = %main_bb10
  %"23" = call noalias i8* @malloc(i64 16) #3
  %"24" = bitcast i8* %"23" to %struct.list*
  %"25" = call i32 (...)* @__VERIFIER_nondet_int() #3
  %"26" = getelementptr inbounds %struct.list* %"24", i32 0, i32 0
  store i32 %"25", i32* %"26", align 4
  %"27" = getelementptr inbounds %struct.list* %"24", i32 0, i32 1
  store %struct.list* %curr.0.i, %struct.list** %"27", align 8
  %"28" = add nsw i32 %j.0.i, 1
  br label %main_bb10

main_init_list.exit:                              ; preds = %main_bb10, %main_bb12
  %curr.0.i1 = phi %struct.list* [ %"33", %main_bb12 ], [ %curr.0.i, %main_bb10 ]
  %"29" = getelementptr inbounds %struct.list* %curr.0.i1, i32 0, i32 0
  %"30" = load i32* %"29", align 4
  %"31" = icmp ne i32 %"30", 0
  br i1 %"31", label %main_bb12, label %main_search.exit

main_bb12:                                        ; preds = %main_init_list.exit
  %"32" = getelementptr inbounds %struct.list* %curr.0.i1, i32 0, i32 1
  %"33" = load %struct.list** %"32", align 8
  br label %main_init_list.exit

main_search.exit:                                 ; preds = %main_init_list.exit, %main_bb8
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

