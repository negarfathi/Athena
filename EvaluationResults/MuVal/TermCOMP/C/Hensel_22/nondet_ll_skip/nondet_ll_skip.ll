; ModuleID = 'Benchmarks/TermCOMP/C/Hensel_22/nondet_ll_skip/nondet_ll_skip.bc'
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
define void @skip(%struct.list** %head_ptr, i32 %m) #0 {
skip_bb4:
  %"7" = load %struct.list** %head_ptr, align 8
  %"8" = icmp eq %struct.list* %"7", null
  br i1 %"8", label %skip_bb10, label %skip_bb5

skip_bb5:                                         ; preds = %skip_bb4, %skip_bb7
  %head.0 = phi %struct.list* [ %"16", %skip_bb7 ], [ %"7", %skip_bb4 ]
  %"9" = getelementptr inbounds %struct.list* %head.0, i32 0, i32 0
  %"10" = load i32* %"9", align 4
  %"11" = icmp eq i32 %"10", %m
  br i1 %"11", label %skip_bb6, label %skip_bb9

skip_bb6:                                         ; preds = %skip_bb5
  %"12" = getelementptr inbounds %struct.list* %head.0, i32 0, i32 1
  %"13" = load %struct.list** %"12", align 8
  %"14" = icmp ne %struct.list* %"13", null
  br i1 %"14", label %skip_bb7, label %skip_bb8

skip_bb7:                                         ; preds = %skip_bb6
  %"15" = getelementptr inbounds %struct.list* %head.0, i32 0, i32 1
  %"16" = load %struct.list** %"15", align 8
  br label %skip_bb5

skip_bb8:                                         ; preds = %skip_bb6
  store %struct.list* null, %struct.list** %head_ptr, align 8
  br label %skip_bb10

skip_bb9:                                         ; preds = %skip_bb5
  store %struct.list* %head.0, %struct.list** %head_ptr, align 8
  br label %skip_bb10

skip_bb10:                                        ; preds = %skip_bb4, %skip_bb9, %skip_bb8
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb11:
  %"17" = call i32 (...)* @__VERIFIER_nondet_int()
  %"18" = call i32 (...)* @__VERIFIER_nondet_int()
  br label %main_bb12

main_bb12:                                        ; preds = %main_bb13, %main_bb11
  %j.0.i = phi i32 [ 0, %main_bb11 ], [ %"25", %main_bb13 ]
  %tail.0.i = phi %struct.list* [ null, %main_bb11 ], [ %"21", %main_bb13 ]
  %"19" = icmp slt i32 %j.0.i, %"17"
  br i1 %"19", label %main_bb13, label %main_init_list.exit

main_bb13:                                        ; preds = %main_bb12
  %"20" = call noalias i8* @malloc(i64 16) #3
  %"21" = bitcast i8* %"20" to %struct.list*
  %"22" = call i32 (...)* @__VERIFIER_nondet_int() #3
  %"23" = getelementptr inbounds %struct.list* %"21", i32 0, i32 0
  store i32 %"22", i32* %"23", align 4
  %"24" = getelementptr inbounds %struct.list* %"21", i32 0, i32 1
  store %struct.list* %tail.0.i, %struct.list** %"24", align 8
  %"25" = add nsw i32 %j.0.i, 1
  br label %main_bb12

main_init_list.exit:                              ; preds = %main_bb12
  %"26" = icmp eq %struct.list* %tail.0.i, null
  br i1 %"26", label %main_skip.exit, label %main_bb14

main_bb14:                                        ; preds = %main_bb16, %main_init_list.exit
  %head.0.i = phi %struct.list* [ %"34", %main_bb16 ], [ %tail.0.i, %main_init_list.exit ]
  %"27" = getelementptr inbounds %struct.list* %head.0.i, i32 0, i32 0
  %"28" = load i32* %"27", align 4
  %"29" = icmp eq i32 %"28", %"18"
  br i1 %"29", label %main_bb15, label %main_skip.exit

main_bb15:                                        ; preds = %main_bb14
  %"30" = getelementptr inbounds %struct.list* %head.0.i, i32 0, i32 1
  %"31" = load %struct.list** %"30", align 8
  %"32" = icmp ne %struct.list* %"31", null
  br i1 %"32", label %main_bb16, label %main_skip.exit

main_bb16:                                        ; preds = %main_bb15
  %"33" = getelementptr inbounds %struct.list* %head.0.i, i32 0, i32 1
  %"34" = load %struct.list** %"33", align 8
  br label %main_bb14

main_skip.exit:                                   ; preds = %main_bb14, %main_bb15, %main_init_list.exit
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

