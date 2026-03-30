; ModuleID = 'Benchmarks/TermCOMP/C/Hensel_22/asc_ll_search_last/asc_ll_search_last.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list = type { i32, %struct.list* }

; Function Attrs: nounwind uwtable
define %struct.list* @init_list(i32 %n) #0 {
init_list_bb0:
  br label %init_list_bb1

init_list_bb1:                                    ; preds = %init_list_bb2, %init_list_bb0
  %tail.0 = phi %struct.list* [ null, %init_list_bb0 ], [ %"2", %init_list_bb2 ]
  %j.0 = phi i32 [ %n, %init_list_bb0 ], [ %"5", %init_list_bb2 ]
  %"0" = icmp sge i32 %j.0, 0
  br i1 %"0", label %init_list_bb2, label %init_list_bb3

init_list_bb2:                                    ; preds = %init_list_bb1
  %"1" = call noalias i8* @malloc(i64 16) #3
  %"2" = bitcast i8* %"1" to %struct.list*
  %"3" = getelementptr inbounds %struct.list* %"2", i32 0, i32 0
  store i32 %j.0, i32* %"3", align 4
  %"4" = getelementptr inbounds %struct.list* %"2", i32 0, i32 1
  store %struct.list* %tail.0, %struct.list** %"4", align 8
  %"5" = add nsw i32 %j.0, -1
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
  %curr.0 = phi %struct.list* [ %head, %search_bb4 ], [ %"10", %search_bb6 ]
  %"6" = getelementptr inbounds %struct.list* %curr.0, i32 0, i32 0
  %"7" = load i32* %"6", align 4
  %"8" = icmp ne i32 %"7", %m
  br i1 %"8", label %search_bb6, label %search_bb7

search_bb6:                                       ; preds = %search_bb5
  %"9" = getelementptr inbounds %struct.list* %curr.0, i32 0, i32 1
  %"10" = load %struct.list** %"9", align 8
  br label %search_bb5

search_bb7:                                       ; preds = %search_bb5
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb8:
  %"11" = call i32 (...)* @__VERIFIER_nondet_int()
  %"12" = icmp slt i32 %"11", 0
  br i1 %"12", label %main_search.exit, label %main_bb9

main_bb9:                                         ; preds = %main_bb8, %main_bb10
  %tail.0.i = phi %struct.list* [ %"15", %main_bb10 ], [ null, %main_bb8 ]
  %j.0.i = phi i32 [ %"18", %main_bb10 ], [ %"11", %main_bb8 ]
  %"13" = icmp sge i32 %j.0.i, 0
  br i1 %"13", label %main_bb10, label %main_init_list.exit

main_bb10:                                        ; preds = %main_bb9
  %"14" = call noalias i8* @malloc(i64 16) #3
  %"15" = bitcast i8* %"14" to %struct.list*
  %"16" = getelementptr inbounds %struct.list* %"15", i32 0, i32 0
  store i32 %j.0.i, i32* %"16", align 4
  %"17" = getelementptr inbounds %struct.list* %"15", i32 0, i32 1
  store %struct.list* %tail.0.i, %struct.list** %"17", align 8
  %"18" = add nsw i32 %j.0.i, -1
  br label %main_bb9

main_init_list.exit:                              ; preds = %main_bb9, %main_bb11
  %curr.0.i = phi %struct.list* [ %"23", %main_bb11 ], [ %tail.0.i, %main_bb9 ]
  %"19" = getelementptr inbounds %struct.list* %curr.0.i, i32 0, i32 0
  %"20" = load i32* %"19", align 4
  %"21" = icmp ne i32 %"20", %"11"
  br i1 %"21", label %main_bb11, label %main_search.exit

main_bb11:                                        ; preds = %main_init_list.exit
  %"22" = getelementptr inbounds %struct.list* %curr.0.i, i32 0, i32 1
  %"23" = load %struct.list** %"22", align 8
  br label %main_init_list.exit

main_search.exit:                                 ; preds = %main_init_list.exit, %main_bb8
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

