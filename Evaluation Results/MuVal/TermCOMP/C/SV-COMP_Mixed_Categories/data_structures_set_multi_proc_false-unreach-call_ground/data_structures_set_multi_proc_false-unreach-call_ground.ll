; ModuleID = 'Benchmarks/TermCOMP/C/SV-COMP_Mixed_Categories/data_structures_set_multi_proc_false-unreach-call_ground/data_structures_set_multi_proc_false-unreach-call_ground.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define void @__VERIFIER_assert(i32 %cond) #0 {
__VERIFIER_assert_bb0:
  %"0" = icmp ne i32 %cond, 0
  br i1 %"0", label %__VERIFIER_assert_bb1, label %__VERIFIER_assert_bb2

__VERIFIER_assert_bb1:                            ; preds = %__VERIFIER_assert_bb0
  ret void

__VERIFIER_assert_bb2:                            ; preds = %__VERIFIER_assert_bb0
  call void (...)* @__VERIFIER_error() #2
  unreachable
}

; Function Attrs: noreturn
declare void @__VERIFIER_error(...) #1

; Function Attrs: nounwind uwtable
define i32 @insert(i32* %set, i32 %size, i32 %value) #0 {
insert_bb3:
  %"1" = sext i32 %size to i64
  %"2" = getelementptr inbounds i32* %set, i64 %"1"
  store i32 %value, i32* %"2", align 4
  %"3" = add nsw i32 %size, 1
  ret i32 %"3"
}

; Function Attrs: nounwind uwtable
define i32 @elem_exists(i32* %set, i32 %size, i32 %value) #0 {
elem_exists_bb4:
  br label %elem_exists_bb5

elem_exists_bb5:                                  ; preds = %elem_exists_bb7, %elem_exists_bb4
  %i.0 = phi i32 [ 0, %elem_exists_bb4 ], [ %"9", %elem_exists_bb7 ]
  %"4" = icmp slt i32 %i.0, %size
  br i1 %"4", label %elem_exists_bb6, label %elem_exists_bb8

elem_exists_bb6:                                  ; preds = %elem_exists_bb5
  %"5" = sext i32 %i.0 to i64
  %"6" = getelementptr inbounds i32* %set, i64 %"5"
  %"7" = load i32* %"6", align 4
  %"8" = icmp eq i32 %"7", %value
  br i1 %"8", label %elem_exists_bb8, label %elem_exists_bb7

elem_exists_bb7:                                  ; preds = %elem_exists_bb6
  %"9" = add nsw i32 %i.0, 1
  br label %elem_exists_bb5

elem_exists_bb8:                                  ; preds = %elem_exists_bb5, %elem_exists_bb6
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb9:
  %set = alloca [100000 x i32], align 16
  %values = alloca [100000 x i32], align 16
  br label %main_bb10

main_bb10:                                        ; preds = %main_bb15, %main_bb9
  %x.0 = phi i32 [ 0, %main_bb9 ], [ %"21", %main_bb15 ]
  %"10" = icmp slt i32 %x.0, 0
  br i1 %"10", label %main_bb11, label %main_bb16

main_bb11:                                        ; preds = %main_bb10
  %"11" = add nsw i32 %x.0, 1
  %"12" = sext i32 %x.0 to i64
  %"13" = getelementptr inbounds [100000 x i32]* %set, i32 0, i64 %"12"
  %"14" = load i32* %"13", align 4
  br label %main_bb12

main_bb12:                                        ; preds = %main___VERIFIER_assert.exit, %main_bb11
  %y.0 = phi i32 [ %"11", %main_bb11 ], [ %"20", %main___VERIFIER_assert.exit ]
  %"15" = icmp slt i32 %y.0, 0
  br i1 %"15", label %main_bb13, label %main_bb15

main_bb13:                                        ; preds = %main_bb12
  %"16" = sext i32 %y.0 to i64
  %"17" = getelementptr inbounds [100000 x i32]* %set, i32 0, i64 %"16"
  %"18" = load i32* %"17", align 4
  %"19" = icmp ne i32 %"14", %"18"
  br i1 %"19", label %main___VERIFIER_assert.exit, label %main_bb14

main___VERIFIER_assert.exit:                      ; preds = %main_bb13
  %"20" = add nsw i32 %y.0, 1
  br label %main_bb12

main_bb14:                                        ; preds = %main_bb13
  call void (...)* @__VERIFIER_error() #3
  unreachable

main_bb15:                                        ; preds = %main_bb12
  %"21" = add nsw i32 %x.0, 1
  br label %main_bb10

main_bb16:                                        ; preds = %main_bb10
  %"22" = getelementptr inbounds [100000 x i32]* %set, i32 0, i32 0
  br label %main_bb17

main_bb17:                                        ; preds = %main_bb23, %main_bb16
  %n.0 = phi i32 [ 0, %main_bb16 ], [ %n.1, %main_bb23 ]
  %v.0 = phi i32 [ 0, %main_bb16 ], [ %"41", %main_bb23 ]
  %"23" = icmp slt i32 %v.0, 100000
  br i1 %"23", label %main_bb18, label %main_bb24

main_bb18:                                        ; preds = %main_bb17
  %"24" = sext i32 %v.0 to i64
  %"25" = getelementptr inbounds [100000 x i32]* %values, i32 0, i64 %"24"
  %"26" = load i32* %"25", align 4
  br label %main_bb19

main_bb19:                                        ; preds = %main_bb21, %main_bb18
  %i.0.i = phi i32 [ 0, %main_bb18 ], [ %"32", %main_bb21 ]
  %"27" = icmp slt i32 %i.0.i, %n.0
  br i1 %"27", label %main_bb20, label %main_elem_exists.exit

main_bb20:                                        ; preds = %main_bb19
  %"28" = sext i32 %i.0.i to i64
  %"29" = getelementptr inbounds i32* %"22", i64 %"28"
  %"30" = load i32* %"29", align 4
  %"31" = icmp eq i32 %"30", %"26"
  br i1 %"31", label %main_elem_exists.exit, label %main_bb21

main_bb21:                                        ; preds = %main_bb20
  %"32" = add nsw i32 %i.0.i, 1
  br label %main_bb19

main_elem_exists.exit:                            ; preds = %main_bb19, %main_bb20
  %"33" = icmp ne i32 0, 0
  br i1 %"33", label %main_bb23, label %main_bb22

main_bb22:                                        ; preds = %main_elem_exists.exit
  %"34" = getelementptr inbounds [100000 x i32]* %set, i32 0, i32 0
  %"35" = sext i32 %v.0 to i64
  %"36" = getelementptr inbounds [100000 x i32]* %values, i32 0, i64 %"35"
  %"37" = load i32* %"36", align 4
  %"38" = sext i32 %n.0 to i64
  %"39" = getelementptr inbounds i32* %"34", i64 %"38"
  store i32 %"37", i32* %"39", align 4
  %"40" = add nsw i32 %n.0, 1
  br label %main_bb23

main_bb23:                                        ; preds = %main_elem_exists.exit, %main_bb22
  %n.1 = phi i32 [ %n.0, %main_elem_exists.exit ], [ %"40", %main_bb22 ]
  %"41" = add nsw i32 %v.0, 1
  br label %main_bb17

main_bb24:                                        ; preds = %main_bb17, %main_bb29
  %x.1 = phi i32 [ %"53", %main_bb29 ], [ 0, %main_bb17 ]
  %"42" = icmp slt i32 %x.1, %n.0
  br i1 %"42", label %main_bb25, label %main_bb30

main_bb25:                                        ; preds = %main_bb24
  %"43" = add nsw i32 %x.1, 1
  %"44" = sext i32 %x.1 to i64
  %"45" = getelementptr inbounds [100000 x i32]* %set, i32 0, i64 %"44"
  %"46" = load i32* %"45", align 4
  br label %main_bb26

main_bb26:                                        ; preds = %main___VERIFIER_assert.exit1, %main_bb25
  %y.1 = phi i32 [ %"43", %main_bb25 ], [ %"52", %main___VERIFIER_assert.exit1 ]
  %"47" = icmp slt i32 %y.1, %n.0
  br i1 %"47", label %main_bb27, label %main_bb29

main_bb27:                                        ; preds = %main_bb26
  %"48" = sext i32 %y.1 to i64
  %"49" = getelementptr inbounds [100000 x i32]* %set, i32 0, i64 %"48"
  %"50" = load i32* %"49", align 4
  %"51" = icmp ne i32 %"46", %"50"
  br i1 %"51", label %main___VERIFIER_assert.exit1, label %main_bb28

main___VERIFIER_assert.exit1:                     ; preds = %main_bb27
  %"52" = add nsw i32 %y.1, 1
  br label %main_bb26

main_bb28:                                        ; preds = %main_bb27
  call void (...)* @__VERIFIER_error() #3
  unreachable

main_bb29:                                        ; preds = %main_bb26
  %"53" = add nsw i32 %x.1, 1
  br label %main_bb24

main_bb30:                                        ; preds = %main_bb24
  ret i32 0
}

declare i32 @__kittel_nondef.0()

declare i32* @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn }
attributes #3 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

