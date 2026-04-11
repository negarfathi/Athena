; ModuleID = 'Benchmarks/TermCOMP/C/Hensel_22/nondet_ll_traverse-ptrdiff/nondet_ll_traverse-ptrdiff.bc'
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
define void @traverse(%struct.list* %head) #0 {
traverse_bb4:
  %"7" = getelementptr inbounds %struct.list* %head, i32 0, i32 1
  %"8" = bitcast %struct.list** %"7" to i8*
  %"9" = getelementptr inbounds %struct.list* %head, i32 0, i32 0
  %"10" = bitcast i32* %"9" to i8*
  %"11" = ptrtoint i8* %"8" to i64
  %"12" = ptrtoint i8* %"10" to i64
  %"13" = sub i64 %"11", %"12"
  br label %traverse_bb5

traverse_bb5:                                     ; preds = %traverse_bb6, %traverse_bb4
  %head.sink = phi %struct.list* [ %head, %traverse_bb4 ], [ %"18", %traverse_bb6 ]
  %"14" = bitcast %struct.list* %head.sink to i8*
  %"15" = icmp ne i8* %"14", null
  br i1 %"15", label %traverse_bb6, label %traverse_bb7

traverse_bb6:                                     ; preds = %traverse_bb5
  %"16" = getelementptr i8* %"14", i64 %"13"
  %"17" = bitcast i8* %"16" to %struct.list**
  %"18" = load %struct.list** %"17", align 8
  br label %traverse_bb5

traverse_bb7:                                     ; preds = %traverse_bb5
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb8:
  %"19" = call i32 (...)* @__VERIFIER_nondet_int()
  %"20" = icmp slt i32 %"19", 1
  br i1 %"20", label %main_traverse.exit, label %main_bb9

main_bb9:                                         ; preds = %main_bb8, %main_bb10
  %j.0.i = phi i32 [ %"27", %main_bb10 ], [ 0, %main_bb8 ]
  %tail.0.i = phi %struct.list* [ %"23", %main_bb10 ], [ null, %main_bb8 ]
  %"21" = icmp slt i32 %j.0.i, %"19"
  br i1 %"21", label %main_bb10, label %main_init_list.exit

main_bb10:                                        ; preds = %main_bb9
  %"22" = call noalias i8* @malloc(i64 16) #3
  %"23" = bitcast i8* %"22" to %struct.list*
  %"24" = call i32 (...)* @__VERIFIER_nondet_int() #3
  %"25" = getelementptr inbounds %struct.list* %"23", i32 0, i32 0
  store i32 %"24", i32* %"25", align 4
  %"26" = getelementptr inbounds %struct.list* %"23", i32 0, i32 1
  store %struct.list* %tail.0.i, %struct.list** %"26", align 8
  %"27" = add nsw i32 %j.0.i, 1
  br label %main_bb9

main_init_list.exit:                              ; preds = %main_bb9, %main_bb11
  %head.sink.i = phi %struct.list* [ %"32", %main_bb11 ], [ %tail.0.i, %main_bb9 ]
  %"28" = bitcast %struct.list* %head.sink.i to i8*
  %"29" = icmp ne i8* %"28", null
  br i1 %"29", label %main_bb11, label %main_traverse.exit

main_bb11:                                        ; preds = %main_init_list.exit
  %"30" = getelementptr i8* %"28", i64 8
  %"31" = bitcast i8* %"30" to %struct.list**
  %"32" = load %struct.list** %"31", align 8
  br label %main_init_list.exit

main_traverse.exit:                               ; preds = %main_init_list.exit, %main_bb8
  ret i32 0
}

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

