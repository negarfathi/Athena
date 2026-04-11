; ModuleID = 'Benchmarks/TermCOMP/C/SV-COMP_Mixed_Categories/list-ext_1_true-valid-memsafety/list-ext_1_true-valid-memsafety.bc'
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
  %i.0 = phi i32 [ %"6", %main_bb8 ], [ 0, %main_bb2 ]
  %p.0 = phi %struct.node* [ %"13", %main_bb8 ], [ %"1", %main_bb2 ]
  %"3" = icmp slt i32 %i.0, 10
  br i1 %"3", label %main_bb5, label %main_.critedge

main_bb5:                                         ; preds = %main_bb4
  %"4" = call i32 (...)* @__VERIFIER_nondet_int()
  %"5" = icmp ne i32 %"4", 0
  br i1 %"5", label %main_bb6, label %main_.critedge

main_bb6:                                         ; preds = %main_bb5
  %"6" = add nsw i32 %i.0, 1
  %"7" = getelementptr inbounds %struct.node* %p.0, i32 0, i32 0
  store i32 1, i32* %"7", align 4
  %"8" = call noalias i8* @malloc(i64 16) #5
  %"9" = bitcast i8* %"8" to %struct.node*
  %"10" = icmp eq %struct.node* %"9", null
  br i1 %"10", label %main_bb7, label %main_bb8

main_bb7:                                         ; preds = %main_bb6, %main_bb7
  br label %main_bb7

main_bb8:                                         ; preds = %main_bb6
  %"11" = getelementptr inbounds %struct.node* %p.0, i32 0, i32 1
  store %struct.node* %"9", %struct.node** %"11", align 8
  %"12" = getelementptr inbounds %struct.node* %p.0, i32 0, i32 1
  %"13" = load %struct.node** %"12", align 8
  br label %main_bb4

main_.critedge:                                   ; preds = %main_bb5, %main_bb4, %main_bb12
  %y.0 = phi i32 [ %"17", %main_bb12 ], [ 0, %main_bb4 ], [ 0, %main_bb5 ]
  %p.1 = phi %struct.node* [ %"24", %main_bb12 ], [ %p.0, %main_bb4 ], [ %p.0, %main_bb5 ]
  %"14" = icmp slt i32 %y.0, 10
  br i1 %"14", label %main_bb9, label %main_.critedge3

main_bb9:                                         ; preds = %main_.critedge
  %"15" = call i32 (...)* @__VERIFIER_nondet_int()
  %"16" = icmp ne i32 %"15", 0
  br i1 %"16", label %main_bb10, label %main_.critedge3

main_bb10:                                        ; preds = %main_bb9
  %"17" = add nsw i32 %y.0, 1
  %"18" = getelementptr inbounds %struct.node* %p.1, i32 0, i32 0
  store i32 2, i32* %"18", align 4
  %"19" = call noalias i8* @malloc(i64 16) #5
  %"20" = bitcast i8* %"19" to %struct.node*
  %"21" = icmp eq %struct.node* %"20", null
  br i1 %"21", label %main_bb11, label %main_bb12

main_bb11:                                        ; preds = %main_bb10, %main_bb11
  br label %main_bb11

main_bb12:                                        ; preds = %main_bb10
  %"22" = getelementptr inbounds %struct.node* %p.1, i32 0, i32 1
  store %struct.node* %"20", %struct.node** %"22", align 8
  %"23" = getelementptr inbounds %struct.node* %p.1, i32 0, i32 1
  %"24" = load %struct.node** %"23", align 8
  br label %main_.critedge

main_.critedge3:                                  ; preds = %main_.critedge, %main_bb9
  %"25" = getelementptr inbounds %struct.node* %p.1, i32 0, i32 0
  store i32 3, i32* %"25", align 4
  %"26" = getelementptr inbounds %struct.node* %p.1, i32 0, i32 1
  store %struct.node* null, %struct.node** %"26", align 8
  br label %main_bb13

main_bb13:                                        ; preds = %main_bb14, %main_.critedge3
  %i.1 = phi i32 [ 0, %main_.critedge3 ], [ %"30", %main_bb14 ]
  %p.2 = phi %struct.node* [ %"1", %main_.critedge3 ], [ %"32", %main_bb14 ]
  %"27" = getelementptr inbounds %struct.node* %p.2, i32 0, i32 0
  %"28" = load i32* %"27", align 4
  %"29" = icmp eq i32 %"28", 1
  br i1 %"29", label %main_bb14, label %main_bb15

main_bb14:                                        ; preds = %main_bb13
  %"30" = add nsw i32 %i.1, 1
  %"31" = getelementptr inbounds %struct.node* %p.2, i32 0, i32 1
  %"32" = load %struct.node** %"31", align 8
  br label %main_bb13

main_bb15:                                        ; preds = %main_bb13, %main_bb16
  %y.1 = phi i32 [ %"36", %main_bb16 ], [ 0, %main_bb13 ]
  %p.3 = phi %struct.node* [ %"38", %main_bb16 ], [ %p.2, %main_bb13 ]
  %"33" = getelementptr inbounds %struct.node* %p.3, i32 0, i32 0
  %"34" = load i32* %"33", align 4
  %"35" = icmp eq i32 %"34", 2
  br i1 %"35", label %main_bb16, label %main_bb17

main_bb16:                                        ; preds = %main_bb15
  %"36" = add nsw i32 %y.1, 1
  %"37" = getelementptr inbounds %struct.node* %p.3, i32 0, i32 1
  %"38" = load %struct.node** %"37", align 8
  br label %main_bb15

main_bb17:                                        ; preds = %main_bb15
  %"39" = getelementptr inbounds %struct.node* %p.3, i32 0, i32 0
  %"40" = load i32* %"39", align 4
  %"41" = icmp ne i32 %"40", 3
  %"42" = add nsw i32 %i.1, %y.1
  %"43" = icmp sgt i32 %"42", 20
  %or.cond = or i1 %"41", %"43"
  br i1 %or.cond, label %main_bb18, label %main_bb19

main_bb18:                                        ; preds = %main_bb17
  call void (...)* @__VERIFIER_error() #6
  unreachable

main_bb19:                                        ; preds = %main_bb17, %main_bb20
  %p.4 = phi %struct.node* [ %"48", %main_bb20 ], [ %"1", %main_bb17 ]
  %"44" = getelementptr inbounds %struct.node* %p.4, i32 0, i32 1
  %"45" = load %struct.node** %"44", align 8
  %"46" = icmp ne %struct.node* %"45", null
  br i1 %"46", label %main_bb20, label %main_bb21

main_bb20:                                        ; preds = %main_bb19
  %"47" = getelementptr inbounds %struct.node* %p.4, i32 0, i32 1
  %"48" = load %struct.node** %"47", align 8
  %"49" = bitcast %struct.node* %p.4 to i8*
  call void @free(i8* %"49") #5
  br label %main_bb19

main_bb21:                                        ; preds = %main_bb19
  %"50" = bitcast %struct.node* %p.4 to i8*
  call void @free(i8* %"50") #5
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

