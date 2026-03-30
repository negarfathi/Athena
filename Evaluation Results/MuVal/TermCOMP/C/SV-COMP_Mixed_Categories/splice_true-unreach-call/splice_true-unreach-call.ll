; ModuleID = 'Benchmarks/TermCOMP/C/SV-COMP_Mixed_Categories/splice_true-unreach-call/splice_true-unreach-call.bc'
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

main_bb4:                                         ; preds = %main_bb2, %main_bb10
  %p.0 = phi %struct.node* [ %"12", %main_bb10 ], [ %"1", %main_bb2 ]
  %flag.0 = phi i32 [ %flag.1, %main_bb10 ], [ 1, %main_bb2 ]
  %"3" = call i32 (...)* @__VERIFIER_nondet_int()
  %"4" = icmp ne i32 %"3", 0
  br i1 %"4", label %main_bb5, label %main_bb11

main_bb5:                                         ; preds = %main_bb4
  %"5" = icmp ne i32 %flag.0, 0
  %"6" = getelementptr inbounds %struct.node* %p.0, i32 0, i32 0
  br i1 %"5", label %main_bb6, label %main_bb7

main_bb6:                                         ; preds = %main_bb5
  store i32 1, i32* %"6", align 4
  br label %main_bb8

main_bb7:                                         ; preds = %main_bb5
  store i32 2, i32* %"6", align 4
  br label %main_bb8

main_bb8:                                         ; preds = %main_bb7, %main_bb6
  %flag.1 = phi i32 [ 0, %main_bb6 ], [ 1, %main_bb7 ]
  %"7" = call noalias i8* @malloc(i64 16) #5
  %"8" = bitcast i8* %"7" to %struct.node*
  %"9" = icmp eq %struct.node* %"8", null
  br i1 %"9", label %main_bb9, label %main_bb10

main_bb9:                                         ; preds = %main_bb8, %main_bb9
  br label %main_bb9

main_bb10:                                        ; preds = %main_bb8
  %"10" = getelementptr inbounds %struct.node* %p.0, i32 0, i32 1
  store %struct.node* %"8", %struct.node** %"10", align 8
  %"11" = getelementptr inbounds %struct.node* %p.0, i32 0, i32 1
  %"12" = load %struct.node** %"11", align 8
  br label %main_bb4

main_bb11:                                        ; preds = %main_bb4
  %"13" = getelementptr inbounds %struct.node* %p.0, i32 0, i32 0
  store i32 3, i32* %"13", align 4
  %"14" = getelementptr inbounds %struct.node* %"1", i32 0, i32 0
  %"15" = load i32* %"14", align 4
  %"16" = icmp eq i32 %"15", 3
  br i1 %"16", label %main_bb23, label %main_bb12

main_bb12:                                        ; preds = %main_bb14, %main_bb15, %main_bb11
  %p.1 = phi %struct.node* [ %"1", %main_bb11 ], [ %"21", %main_bb15 ], [ %"21", %main_bb14 ]
  %l2.0 = phi %struct.node* [ null, %main_bb11 ], [ %l2.0, %main_bb14 ], [ %p.1, %main_bb15 ]
  %l1.0 = phi %struct.node* [ null, %main_bb11 ], [ %p.1, %main_bb14 ], [ %l1.0, %main_bb15 ]
  %flag.2 = phi i32 [ 1, %main_bb11 ], [ 0, %main_bb14 ], [ 1, %main_bb15 ]
  %"17" = getelementptr inbounds %struct.node* %p.1, i32 0, i32 0
  %"18" = load i32* %"17", align 4
  %"19" = icmp ne i32 %"18", 3
  br i1 %"19", label %main_bb13, label %main_bb16

main_bb13:                                        ; preds = %main_bb12
  %"20" = getelementptr inbounds %struct.node* %p.1, i32 0, i32 1
  %"21" = load %struct.node** %"20", align 8
  %"22" = icmp ne i32 %flag.2, 0
  %"23" = getelementptr inbounds %struct.node* %p.1, i32 0, i32 1
  br i1 %"22", label %main_bb14, label %main_bb15

main_bb14:                                        ; preds = %main_bb13
  store %struct.node* %l1.0, %struct.node** %"23", align 8
  br label %main_bb12

main_bb15:                                        ; preds = %main_bb13
  store %struct.node* %l2.0, %struct.node** %"23", align 8
  br label %main_bb12

main_bb16:                                        ; preds = %main_bb12, %main_bb18
  %p.2 = phi %struct.node* [ %"29", %main_bb18 ], [ %l1.0, %main_bb12 ]
  %"24" = icmp ne %struct.node* %p.2, null
  br i1 %"24", label %main_bb17, label %main_bb19

main_bb17:                                        ; preds = %main_bb16
  %"25" = getelementptr inbounds %struct.node* %p.2, i32 0, i32 0
  %"26" = load i32* %"25", align 4
  %"27" = icmp ne i32 %"26", 1
  br i1 %"27", label %main_bb21, label %main_bb18

main_bb18:                                        ; preds = %main_bb17
  %"28" = getelementptr inbounds %struct.node* %p.2, i32 0, i32 1
  %"29" = load %struct.node** %"28", align 8
  br label %main_bb16

main_bb19:                                        ; preds = %main_bb16, %main_bb22
  %p.3 = phi %struct.node* [ %"35", %main_bb22 ], [ %l2.0, %main_bb16 ]
  %"30" = icmp ne %struct.node* %p.3, null
  br i1 %"30", label %main_bb20, label %main_bb23

main_bb20:                                        ; preds = %main_bb19
  %"31" = getelementptr inbounds %struct.node* %p.3, i32 0, i32 0
  %"32" = load i32* %"31", align 4
  %"33" = icmp ne i32 %"32", 2
  br i1 %"33", label %main_bb21, label %main_bb22

main_bb21:                                        ; preds = %main_bb20, %main_bb17
  call void (...)* @__VERIFIER_error() #6
  unreachable

main_bb22:                                        ; preds = %main_bb20
  %"34" = getelementptr inbounds %struct.node* %p.3, i32 0, i32 1
  %"35" = load %struct.node** %"34", align 8
  br label %main_bb19

main_bb23:                                        ; preds = %main_bb19, %main_bb11
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

