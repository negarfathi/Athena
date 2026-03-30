; ModuleID = 'Benchmarks/TermCOMP/C/Hensel_22/desc_ll_with_offset_search/desc_ll_with_offset_search.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list = type { i32, %struct.list* }

; Function Attrs: nounwind uwtable
define %struct.list* @init_list(i32 %n, i32 %start) #0 {
init_list_bb0:
  br label %init_list_bb1

init_list_bb1:                                    ; preds = %init_list_bb2, %init_list_bb0
  %j.0 = phi i32 [ %start, %init_list_bb0 ], [ %"6", %init_list_bb2 ]
  %tail.0 = phi %struct.list* [ null, %init_list_bb0 ], [ %"3", %init_list_bb2 ]
  %"0" = add nsw i32 %start, %n
  %"1" = icmp slt i32 %j.0, %"0"
  br i1 %"1", label %init_list_bb2, label %init_list_bb3

init_list_bb2:                                    ; preds = %init_list_bb1
  %"2" = call noalias i8* @malloc(i64 16) #3
  %"3" = bitcast i8* %"2" to %struct.list*
  %"4" = getelementptr inbounds %struct.list* %"3", i32 0, i32 0
  store i32 %j.0, i32* %"4", align 4
  %"5" = getelementptr inbounds %struct.list* %"3", i32 0, i32 1
  store %struct.list* %tail.0, %struct.list** %"5", align 8
  %"6" = add nsw i32 %j.0, 1
  br label %init_list_bb1

init_list_bb3:                                    ; preds = %init_list_bb1
  ret %struct.list* %tail.0
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind uwtable
define void @search(%struct.list* %head, i32 %m) #0 {
search_bb4:
  br label %search_bb5

search_bb5:                                       ; preds = %search_bb6, %search_bb4
  %curr.0 = phi %struct.list* [ %head, %search_bb4 ], [ %"11", %search_bb6 ]
  %"7" = getelementptr inbounds %struct.list* %curr.0, i32 0, i32 0
  %"8" = load i32* %"7", align 4
  %"9" = icmp ne i32 %"8", %m
  br i1 %"9", label %search_bb6, label %search_bb7

search_bb6:                                       ; preds = %search_bb5
  %"10" = getelementptr inbounds %struct.list* %curr.0, i32 0, i32 1
  %"11" = load %struct.list** %"10", align 8
  br label %search_bb5

search_bb7:                                       ; preds = %search_bb5
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb8:
  %"12" = call i32 (...)* @__VERIFIER_nondet_int()
  %"13" = icmp slt i32 %"12", 1
  br i1 %"13", label %main_search.exit, label %main_bb9

main_bb9:                                         ; preds = %main_bb8
  %"14" = call i32 (...)* @__VERIFIER_nondet_int()
  %"15" = icmp slt i32 %"14", 1
  %"16" = icmp sge i32 %"14", %"12"
  %or.cond = or i1 %"15", %"16"
  br i1 %or.cond, label %main_search.exit, label %main_bb10

main_bb10:                                        ; preds = %main_bb9
  %"17" = call i32 (...)* @__VERIFIER_nondet_int()
  br label %main_bb11

main_bb11:                                        ; preds = %main_bb12, %main_bb10
  %j.0.i = phi i32 [ %"17", %main_bb10 ], [ %"24", %main_bb12 ]
  %tail.0.i = phi %struct.list* [ null, %main_bb10 ], [ %"21", %main_bb12 ]
  %"18" = add nsw i32 %"17", %"12"
  %"19" = icmp slt i32 %j.0.i, %"18"
  br i1 %"19", label %main_bb12, label %main_init_list.exit

main_bb12:                                        ; preds = %main_bb11
  %"20" = call noalias i8* @malloc(i64 16) #3
  %"21" = bitcast i8* %"20" to %struct.list*
  %"22" = getelementptr inbounds %struct.list* %"21", i32 0, i32 0
  store i32 %j.0.i, i32* %"22", align 4
  %"23" = getelementptr inbounds %struct.list* %"21", i32 0, i32 1
  store %struct.list* %tail.0.i, %struct.list** %"23", align 8
  %"24" = add nsw i32 %j.0.i, 1
  br label %main_bb11

main_init_list.exit:                              ; preds = %main_bb11
  %"25" = add nsw i32 %"17", %"14"
  br label %main_bb13

main_bb13:                                        ; preds = %main_bb14, %main_init_list.exit
  %curr.0.i = phi %struct.list* [ %tail.0.i, %main_init_list.exit ], [ %"30", %main_bb14 ]
  %"26" = getelementptr inbounds %struct.list* %curr.0.i, i32 0, i32 0
  %"27" = load i32* %"26", align 4
  %"28" = icmp ne i32 %"27", %"25"
  br i1 %"28", label %main_bb14, label %main_search.exit

main_bb14:                                        ; preds = %main_bb13
  %"29" = getelementptr inbounds %struct.list* %curr.0.i, i32 0, i32 1
  %"30" = load %struct.list** %"29", align 8
  br label %main_bb13

main_search.exit:                                 ; preds = %main_bb13, %main_bb9, %main_bb8
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

