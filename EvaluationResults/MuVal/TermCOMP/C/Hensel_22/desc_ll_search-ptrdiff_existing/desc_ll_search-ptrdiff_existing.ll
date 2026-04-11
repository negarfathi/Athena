; ModuleID = 'Benchmarks/TermCOMP/C/Hensel_22/desc_ll_search-ptrdiff_existing/desc_ll_search-ptrdiff_existing.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list = type { i32, %struct.list* }

; Function Attrs: nounwind uwtable
define %struct.list* @init_list(i32 %n) #0 {
init_list_bb0:
  br label %init_list_bb1

init_list_bb1:                                    ; preds = %init_list_bb2, %init_list_bb0
  %j.0 = phi i32 [ 0, %init_list_bb0 ], [ %"5", %init_list_bb2 ]
  %tail.0 = phi %struct.list* [ null, %init_list_bb0 ], [ %"2", %init_list_bb2 ]
  %"0" = icmp slt i32 %j.0, %n
  br i1 %"0", label %init_list_bb2, label %init_list_bb3

init_list_bb2:                                    ; preds = %init_list_bb1
  %"1" = call noalias i8* @malloc(i64 16) #3
  %"2" = bitcast i8* %"1" to %struct.list*
  %"3" = getelementptr inbounds %struct.list* %"2", i32 0, i32 0
  store i32 %j.0, i32* %"3", align 4
  %"4" = getelementptr inbounds %struct.list* %"2", i32 0, i32 1
  store %struct.list* %tail.0, %struct.list** %"4", align 8
  %"5" = add nsw i32 %j.0, 1
  br label %init_list_bb1

init_list_bb3:                                    ; preds = %init_list_bb1
  ret %struct.list* %tail.0
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: nounwind uwtable
define void @search(%struct.list* %head, i32 %m) #0 {
search_bb4:
  %"6" = getelementptr inbounds %struct.list* %head, i32 0, i32 1
  %"7" = bitcast %struct.list** %"6" to i8*
  %"8" = getelementptr inbounds %struct.list* %head, i32 0, i32 0
  %"9" = bitcast i32* %"8" to i8*
  %"10" = ptrtoint i8* %"7" to i64
  %"11" = ptrtoint i8* %"9" to i64
  %"12" = sub i64 %"10", %"11"
  br label %search_bb5

search_bb5:                                       ; preds = %search_bb6, %search_bb4
  %head.sink = phi %struct.list* [ %head, %search_bb4 ], [ %"19", %search_bb6 ]
  %"13" = bitcast %struct.list* %head.sink to i8*
  %"14" = bitcast i8* %"13" to i32*
  %"15" = load i32* %"14", align 4
  %"16" = icmp ne i32 %"15", %m
  br i1 %"16", label %search_bb6, label %search_bb7

search_bb6:                                       ; preds = %search_bb5
  %"17" = getelementptr i8* %"13", i64 %"12"
  %"18" = bitcast i8* %"17" to %struct.list**
  %"19" = load %struct.list** %"18", align 8
  br label %search_bb5

search_bb7:                                       ; preds = %search_bb5
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb8:
  %"20" = call i32 (...)* @__VERIFIER_nondet_int()
  %"21" = icmp slt i32 %"20", 1
  br i1 %"21", label %main_search.exit, label %main_bb9

main_bb9:                                         ; preds = %main_bb8
  %"22" = call i32 (...)* @__VERIFIER_nondet_int()
  %"23" = icmp slt i32 %"22", 1
  %"24" = icmp sge i32 %"22", %"20"
  %or.cond = or i1 %"23", %"24"
  br i1 %or.cond, label %main_search.exit, label %main_bb10

main_bb10:                                        ; preds = %main_bb9, %main_bb11
  %j.0.i = phi i32 [ %"30", %main_bb11 ], [ 0, %main_bb9 ]
  %tail.0.i = phi %struct.list* [ %"27", %main_bb11 ], [ null, %main_bb9 ]
  %"25" = icmp slt i32 %j.0.i, %"20"
  br i1 %"25", label %main_bb11, label %main_init_list.exit

main_bb11:                                        ; preds = %main_bb10
  %"26" = call noalias i8* @malloc(i64 16) #3
  %"27" = bitcast i8* %"26" to %struct.list*
  %"28" = getelementptr inbounds %struct.list* %"27", i32 0, i32 0
  store i32 %j.0.i, i32* %"28", align 4
  %"29" = getelementptr inbounds %struct.list* %"27", i32 0, i32 1
  store %struct.list* %tail.0.i, %struct.list** %"29", align 8
  %"30" = add nsw i32 %j.0.i, 1
  br label %main_bb10

main_init_list.exit:                              ; preds = %main_bb10, %main_bb12
  %head.sink.i = phi %struct.list* [ %"37", %main_bb12 ], [ %tail.0.i, %main_bb10 ]
  %"31" = bitcast %struct.list* %head.sink.i to i8*
  %"32" = bitcast i8* %"31" to i32*
  %"33" = load i32* %"32", align 4
  %"34" = icmp ne i32 %"33", %"22"
  br i1 %"34", label %main_bb12, label %main_search.exit

main_bb12:                                        ; preds = %main_init_list.exit
  %"35" = getelementptr i8* %"31", i64 8
  %"36" = bitcast i8* %"35" to %struct.list**
  %"37" = load %struct.list** %"36", align 8
  br label %main_init_list.exit

main_search.exit:                                 ; preds = %main_init_list.exit, %main_bb9, %main_bb8
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int(...) #2

declare i32 @__kittel_nondef.0()

declare %struct.list* @__kittel_nondef.1()

declare i64 @__kittel_nondef.2()

declare i8* @__kittel_nondef.3()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

