; ModuleID = 'Benchmarks/TermCOMP/C/SV-COMP_Mixed_Categories/list_true-unreach-call/list_true-unreach-call.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.node = type { i32, %struct.node* }

; Function Attrs: noreturn nounwind uwtable
define void @exit(i32 %s) #0 {
exit_bb0:
  br label %exit_bb1

exit_bb1:                                         ; preds = %exit_bb1, %exit_bb0
  br label %exit_bb1
}

; Function Attrs: nounwind uwtable
define i32 @main() #1 {
main_bb2:
  %"0" = call noalias i8* @malloc(i64 16) #5
  %"1" = bitcast i8* %"0" to %struct.node*
  %"2" = icmp eq %struct.node* %"1", null
  br i1 %"2", label %main_bb3, label %main_bb4

main_bb3:                                         ; preds = %main_bb2, %main_bb3
  br label %main_bb3

main_bb4:                                         ; preds = %main_bb2, %main_bb7
  %p.0 = phi %struct.node* [ %"11", %main_bb7 ], [ %"1", %main_bb2 ]
  %"3" = call i32 (...)* @__VERIFIER_nondet_int()
  %"4" = icmp ne i32 %"3", 0
  br i1 %"4", label %main_bb5, label %main_bb8

main_bb5:                                         ; preds = %main_bb4
  %"5" = getelementptr inbounds %struct.node* %p.0, i32 0, i32 0
  store i32 1, i32* %"5", align 4
  %"6" = call noalias i8* @malloc(i64 16) #5
  %"7" = bitcast i8* %"6" to %struct.node*
  %"8" = icmp eq %struct.node* %"7", null
  br i1 %"8", label %main_bb6, label %main_bb7

main_bb6:                                         ; preds = %main_bb5, %main_bb6
  br label %main_bb6

main_bb7:                                         ; preds = %main_bb5
  %"9" = getelementptr inbounds %struct.node* %p.0, i32 0, i32 1
  store %struct.node* %"7", %struct.node** %"9", align 8
  %"10" = getelementptr inbounds %struct.node* %p.0, i32 0, i32 1
  %"11" = load %struct.node** %"10", align 8
  br label %main_bb4

main_bb8:                                         ; preds = %main_bb4, %main_bb11
  %p.1 = phi %struct.node* [ %"20", %main_bb11 ], [ %p.0, %main_bb4 ]
  %"12" = call i32 (...)* @__VERIFIER_nondet_int()
  %"13" = icmp ne i32 %"12", 0
  %"14" = getelementptr inbounds %struct.node* %p.1, i32 0, i32 0
  br i1 %"13", label %main_bb9, label %main_bb12

main_bb9:                                         ; preds = %main_bb8
  store i32 2, i32* %"14", align 4
  %"15" = call noalias i8* @malloc(i64 16) #5
  %"16" = bitcast i8* %"15" to %struct.node*
  %"17" = icmp eq %struct.node* %"16", null
  br i1 %"17", label %main_bb10, label %main_bb11

main_bb10:                                        ; preds = %main_bb9, %main_bb10
  br label %main_bb10

main_bb11:                                        ; preds = %main_bb9
  %"18" = getelementptr inbounds %struct.node* %p.1, i32 0, i32 1
  store %struct.node* %"16", %struct.node** %"18", align 8
  %"19" = getelementptr inbounds %struct.node* %p.1, i32 0, i32 1
  %"20" = load %struct.node** %"19", align 8
  br label %main_bb8

main_bb12:                                        ; preds = %main_bb8
  store i32 3, i32* %"14", align 4
  br label %main_bb13

main_bb13:                                        ; preds = %main_bb14, %main_bb12
  %p.2 = phi %struct.node* [ %"1", %main_bb12 ], [ %"25", %main_bb14 ]
  %"21" = getelementptr inbounds %struct.node* %p.2, i32 0, i32 0
  %"22" = load i32* %"21", align 4
  %"23" = icmp eq i32 %"22", 1
  br i1 %"23", label %main_bb14, label %main_bb15

main_bb14:                                        ; preds = %main_bb13
  %"24" = getelementptr inbounds %struct.node* %p.2, i32 0, i32 1
  %"25" = load %struct.node** %"24", align 8
  br label %main_bb13

main_bb15:                                        ; preds = %main_bb13, %main_bb16
  %p.3 = phi %struct.node* [ %"30", %main_bb16 ], [ %p.2, %main_bb13 ]
  %"26" = getelementptr inbounds %struct.node* %p.3, i32 0, i32 0
  %"27" = load i32* %"26", align 4
  %"28" = icmp eq i32 %"27", 2
  br i1 %"28", label %main_bb16, label %main_bb17

main_bb16:                                        ; preds = %main_bb15
  %"29" = getelementptr inbounds %struct.node* %p.3, i32 0, i32 1
  %"30" = load %struct.node** %"29", align 8
  br label %main_bb15

main_bb17:                                        ; preds = %main_bb15
  %"31" = getelementptr inbounds %struct.node* %p.3, i32 0, i32 0
  %"32" = load i32* %"31", align 4
  %"33" = icmp ne i32 %"32", 3
  br i1 %"33", label %main_bb18, label %main_bb19

main_bb18:                                        ; preds = %main_bb17
  call void (...)* @__VERIFIER_error() #6
  unreachable

main_bb19:                                        ; preds = %main_bb17
  ret i32 0
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

declare i32 @__VERIFIER_nondet_int(...) #3

; Function Attrs: noreturn
declare void @__VERIFIER_error(...) #4

declare i32 @__kittel_nondef.0()

declare %struct.node* @__kittel_nondef.1()

attributes #0 = { noreturn nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

