; ModuleID = 'Benchmarks/TermCOMP/C/Hensel_22/cyclic_ll_search_last/cyclic_ll_search_last.bc'
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
  br label %init_list_bb1

init_list_bb1:                                    ; preds = %init_list_bb2, %init_list_bb0
  %j.0 = phi i32 [ 1, %init_list_bb0 ], [ %"8", %init_list_bb2 ]
  %tail.0 = phi %struct.list* [ %"1", %init_list_bb0 ], [ %"5", %init_list_bb2 ]
  %"3" = icmp slt i32 %j.0, %n
  br i1 %"3", label %init_list_bb2, label %init_list_bb3

init_list_bb2:                                    ; preds = %init_list_bb1
  %"4" = call noalias i8* @malloc(i64 16) #3
  %"5" = bitcast i8* %"4" to %struct.list*
  %"6" = getelementptr inbounds %struct.list* %"5", i32 0, i32 0
  store i32 %j.0, i32* %"6", align 4
  %"7" = getelementptr inbounds %struct.list* %"5", i32 0, i32 1
  store %struct.list* %tail.0, %struct.list** %"7", align 8
  %"8" = add nsw i32 %j.0, 1
  br label %init_list_bb1

init_list_bb3:                                    ; preds = %init_list_bb1
  %"9" = getelementptr inbounds %struct.list* %"1", i32 0, i32 1
  store %struct.list* %tail.0, %struct.list** %"9", align 8
  ret %struct.list* %tail.0
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind uwtable
define void @search(%struct.list* %head, i32 %m) #0 {
search_bb4:
  br label %search_bb5

search_bb5:                                       ; preds = %search_bb6, %search_bb4
  %curr.0 = phi %struct.list* [ %head, %search_bb4 ], [ %"14", %search_bb6 ]
  %"10" = getelementptr inbounds %struct.list* %curr.0, i32 0, i32 0
  %"11" = load i32* %"10", align 4
  %"12" = icmp ne i32 %"11", %m
  br i1 %"12", label %search_bb6, label %search_bb7

search_bb6:                                       ; preds = %search_bb5
  %"13" = getelementptr inbounds %struct.list* %curr.0, i32 0, i32 1
  %"14" = load %struct.list** %"13", align 8
  br label %search_bb5

search_bb7:                                       ; preds = %search_bb5
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb8:
  %"15" = call i32 (...)* @__VERIFIER_nondet_int()
  %"16" = icmp slt i32 %"15", 1
  br i1 %"16", label %main_search.exit, label %main_bb9

main_bb9:                                         ; preds = %main_bb8
  %"17" = call noalias i8* @malloc(i64 16) #3
  %"18" = bitcast i8* %"17" to %struct.list*
  %"19" = getelementptr inbounds %struct.list* %"18", i32 0, i32 0
  store i32 0, i32* %"19", align 4
  br label %main_bb10

main_bb10:                                        ; preds = %main_bb11, %main_bb9
  %j.0.i = phi i32 [ 1, %main_bb9 ], [ %"25", %main_bb11 ]
  %tail.0.i = phi %struct.list* [ %"18", %main_bb9 ], [ %"22", %main_bb11 ]
  %"20" = icmp slt i32 %j.0.i, %"15"
  br i1 %"20", label %main_bb11, label %main_init_list.exit

main_bb11:                                        ; preds = %main_bb10
  %"21" = call noalias i8* @malloc(i64 16) #3
  %"22" = bitcast i8* %"21" to %struct.list*
  %"23" = getelementptr inbounds %struct.list* %"22", i32 0, i32 0
  store i32 %j.0.i, i32* %"23", align 4
  %"24" = getelementptr inbounds %struct.list* %"22", i32 0, i32 1
  store %struct.list* %tail.0.i, %struct.list** %"24", align 8
  %"25" = add nsw i32 %j.0.i, 1
  br label %main_bb10

main_init_list.exit:                              ; preds = %main_bb10
  %"26" = getelementptr inbounds %struct.list* %"18", i32 0, i32 1
  store %struct.list* %tail.0.i, %struct.list** %"26", align 8
  br label %main_bb12

main_bb12:                                        ; preds = %main_bb13, %main_init_list.exit
  %curr.0.i = phi %struct.list* [ %tail.0.i, %main_init_list.exit ], [ %"31", %main_bb13 ]
  %"27" = getelementptr inbounds %struct.list* %curr.0.i, i32 0, i32 0
  %"28" = load i32* %"27", align 4
  %"29" = icmp ne i32 %"28", 0
  br i1 %"29", label %main_bb13, label %main_search.exit

main_bb13:                                        ; preds = %main_bb12
  %"30" = getelementptr inbounds %struct.list* %curr.0.i, i32 0, i32 1
  %"31" = load %struct.list** %"30", align 8
  br label %main_bb12

main_search.exit:                                 ; preds = %main_bb12, %main_bb8
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int(...) #2

declare i32 @__kittel_nondef.0()

declare %struct.list* @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

