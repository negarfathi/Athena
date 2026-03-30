; ModuleID = 'Benchmarks/TermCOMP/C/SV-COMP_Mixed_Categories/simple-ext_1_true-valid-memsafety/simple-ext_1_true-valid-memsafety.bc'
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

main_bb4:                                         ; preds = %main_bb2, %main_bb8
  %p.0 = phi %struct.node* [ %"12", %main_bb8 ], [ %"1", %main_bb2 ]
  %i.0 = phi i32 [ %"13", %main_bb8 ], [ 0, %main_bb2 ]
  %"3" = icmp slt i32 %i.0, 30
  br i1 %"3", label %main_bb5, label %main_.critedge

main_bb5:                                         ; preds = %main_bb4
  %"4" = call i32 (...)* @__VERIFIER_nondet_int()
  %"5" = icmp ne i32 %"4", 0
  %"6" = getelementptr inbounds %struct.node* %p.0, i32 0, i32 0
  store i32 %i.0, i32* %"6", align 4
  br i1 %"5", label %main_bb6, label %main_bb9

main_bb6:                                         ; preds = %main_bb5
  %"7" = call noalias i8* @malloc(i64 16) #5
  %"8" = bitcast i8* %"7" to %struct.node*
  %"9" = icmp eq %struct.node* %"8", null
  br i1 %"9", label %main_bb7, label %main_bb8

main_bb7:                                         ; preds = %main_bb6, %main_bb7
  br label %main_bb7

main_bb8:                                         ; preds = %main_bb6
  %"10" = getelementptr inbounds %struct.node* %p.0, i32 0, i32 1
  store %struct.node* %"8", %struct.node** %"10", align 8
  %"11" = getelementptr inbounds %struct.node* %p.0, i32 0, i32 1
  %"12" = load %struct.node** %"11", align 8
  %"13" = add nsw i32 %i.0, 1
  br label %main_bb4

main_.critedge:                                   ; preds = %main_bb4
  %"14" = getelementptr inbounds %struct.node* %p.0, i32 0, i32 0
  store i32 %i.0, i32* %"14", align 4
  br label %main_bb9

main_bb9:                                         ; preds = %main_.critedge, %main_bb5
  %"15" = getelementptr inbounds %struct.node* %p.0, i32 0, i32 1
  store %struct.node* null, %struct.node** %"15", align 8
  br label %main_bb10

main_bb10:                                        ; preds = %main_bb13, %main_bb9
  %p.1 = phi %struct.node* [ %"1", %main_bb9 ], [ %"21", %main_bb13 ]
  %i.1 = phi i32 [ 0, %main_bb9 ], [ %"22", %main_bb13 ]
  %"16" = icmp ne %struct.node* %p.1, null
  br i1 %"16", label %main_bb11, label %main_bb14

main_bb11:                                        ; preds = %main_bb10
  %"17" = getelementptr inbounds %struct.node* %p.1, i32 0, i32 0
  %"18" = load i32* %"17", align 4
  %"19" = icmp ne i32 %"18", %i.1
  br i1 %"19", label %main_bb12, label %main_bb13

main_bb12:                                        ; preds = %main_bb11
  call void (...)* @__VERIFIER_error() #6
  unreachable

main_bb13:                                        ; preds = %main_bb11
  %"20" = getelementptr inbounds %struct.node* %p.1, i32 0, i32 1
  %"21" = load %struct.node** %"20", align 8
  %"22" = add nsw i32 %i.1, 1
  br label %main_bb10

main_bb14:                                        ; preds = %main_bb10, %main_bb15
  %p.2 = phi %struct.node* [ %"25", %main_bb15 ], [ %"1", %main_bb10 ]
  %"23" = icmp ne %struct.node* %p.2, null
  br i1 %"23", label %main_bb15, label %main_bb16

main_bb15:                                        ; preds = %main_bb14
  %"24" = getelementptr inbounds %struct.node* %p.2, i32 0, i32 1
  %"25" = load %struct.node** %"24", align 8
  %"26" = bitcast %struct.node* %p.2 to i8*
  call void @free(i8* %"26") #5
  br label %main_bb14

main_bb16:                                        ; preds = %main_bb14
  ret i32 0
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

declare i32 @__VERIFIER_nondet_int(...) #3

; Function Attrs: noreturn
declare void @__VERIFIER_error(...) #4

; Function Attrs: nounwind
declare void @free(i8*) #2

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

