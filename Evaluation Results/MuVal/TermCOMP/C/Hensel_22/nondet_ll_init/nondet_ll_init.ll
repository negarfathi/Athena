; ModuleID = 'Benchmarks/TermCOMP/C/Hensel_22/nondet_ll_init/nondet_ll_init.bc'
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
define i32 @main() #0 {
main_bb4:
  %"7" = call i32 (...)* @__VERIFIER_nondet_int()
  br label %main_bb5

main_bb5:                                         ; preds = %main_bb6, %main_bb4
  %j.0.i = phi i32 [ 0, %main_bb4 ], [ %"14", %main_bb6 ]
  %tail.0.i = phi %struct.list* [ null, %main_bb4 ], [ %"10", %main_bb6 ]
  %"8" = icmp slt i32 %j.0.i, %"7"
  br i1 %"8", label %main_bb6, label %main_init_list.exit

main_bb6:                                         ; preds = %main_bb5
  %"9" = call noalias i8* @malloc(i64 16) #3
  %"10" = bitcast i8* %"9" to %struct.list*
  %"11" = call i32 (...)* @__VERIFIER_nondet_int() #3
  %"12" = getelementptr inbounds %struct.list* %"10", i32 0, i32 0
  store i32 %"11", i32* %"12", align 4
  %"13" = getelementptr inbounds %struct.list* %"10", i32 0, i32 1
  store %struct.list* %tail.0.i, %struct.list** %"13", align 8
  %"14" = add nsw i32 %j.0.i, 1
  br label %main_bb5

main_init_list.exit:                              ; preds = %main_bb5
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

