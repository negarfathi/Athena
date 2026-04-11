; ModuleID = 'Benchmarks/TermCOMP/C/SV-COMP_Mixed_Categories/test-0234_true-valid-memsafety/test-0234_true-valid-memsafety.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.L0 = type { %struct.L0*, %struct.L1* }
%struct.L1 = type { %struct.L2*, %struct.L1* }
%struct.L2 = type { %struct.L2*, %struct.L3* }
%struct.L3 = type { %struct.L4*, %struct.L3* }
%struct.L4 = type { %struct.L4*, %struct.L5* }
%struct.L5 = type opaque

@main.list = internal global %struct.L0* null, align 8

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  br label %main_bb1

main_bb1:                                         ; preds = %main_l0_insert.exit, %main_bb0
  %"0" = call noalias i8* @malloc(i64 16) #4
  call void @llvm.memset.p0i8.i64(i8* %"0", i8 0, i64 16, i32 1, i1 false) #4
  %"1" = icmp ne i8* %"0", null
  br i1 %"1", label %main_zalloc_or_die.exit.i, label %main_bb17

main_zalloc_or_die.exit.i:                        ; preds = %main_bb1
  %"2" = bitcast i8* %"0" to %struct.L0*
  %"3" = getelementptr inbounds %struct.L0* %"2", i32 0, i32 1
  br label %main_bb2

main_bb2:                                         ; preds = %main_l1_insert.exit.i, %main_zalloc_or_die.exit.i
  %"4" = call noalias i8* @malloc(i64 16) #4
  call void @llvm.memset.p0i8.i64(i8* %"4", i8 0, i64 16, i32 1, i1 false) #4
  %"5" = icmp ne i8* %"4", null
  br i1 %"5", label %main_zalloc_or_die.exit.i.i, label %main_bb16

main_zalloc_or_die.exit.i.i:                      ; preds = %main_bb2
  %"6" = bitcast i8* %"4" to %struct.L1*
  %"7" = getelementptr inbounds %struct.L1* %"6", i32 0, i32 0
  br label %main_bb3

main_bb3:                                         ; preds = %main_l2_insert.exit.i.i, %main_zalloc_or_die.exit.i.i
  %"8" = call noalias i8* @malloc(i64 16) #4
  call void @llvm.memset.p0i8.i64(i8* %"8", i8 0, i64 16, i32 1, i1 false) #4
  %"9" = icmp ne i8* %"8", null
  br i1 %"9", label %main_zalloc_or_die.exit.i.i.i, label %main_bb15

main_zalloc_or_die.exit.i.i.i:                    ; preds = %main_bb3
  %"10" = bitcast i8* %"8" to %struct.L2*
  %"11" = getelementptr inbounds %struct.L2* %"10", i32 0, i32 1
  br label %main_bb4

main_bb4:                                         ; preds = %main_l3_insert.exit.i.i.i, %main_zalloc_or_die.exit.i.i.i
  %"12" = call noalias i8* @malloc(i64 16) #4
  call void @llvm.memset.p0i8.i64(i8* %"12", i8 0, i64 16, i32 1, i1 false) #4
  %"13" = icmp ne i8* %"12", null
  br i1 %"13", label %main_zalloc_or_die.exit.i.i.i.i, label %main_bb14

main_zalloc_or_die.exit.i.i.i.i:                  ; preds = %main_bb4
  %"14" = bitcast i8* %"12" to %struct.L3*
  %"15" = getelementptr inbounds %struct.L3* %"14", i32 0, i32 0
  br label %main_bb5

main_bb5:                                         ; preds = %main_l4_insert.exit.i.i.i.i, %main_zalloc_or_die.exit.i.i.i.i
  %"16" = call noalias i8* @malloc(i64 16) #4
  call void @llvm.memset.p0i8.i64(i8* %"16", i8 0, i64 16, i32 1, i1 false) #4
  %"17" = icmp ne i8* %"16", null
  br i1 %"17", label %main_zalloc_or_die.exit.i.i.i.i.i, label %main_bb13

main_zalloc_or_die.exit.i.i.i.i.i:                ; preds = %main_bb5
  %"18" = bitcast i8* %"16" to %struct.L4*
  %"19" = call noalias i8* @malloc(i64 119) #4
  call void @llvm.memset.p0i8.i64(i8* %"19", i8 0, i64 119, i32 1, i1 false) #4
  %"20" = icmp ne i8* %"19", null
  br i1 %"20", label %main_l4_insert.exit.i.i.i.i, label %main_bb12

main_l4_insert.exit.i.i.i.i:                      ; preds = %main_zalloc_or_die.exit.i.i.i.i.i
  %"21" = bitcast i8* %"19" to %struct.L5*
  %"22" = getelementptr inbounds %struct.L4* %"18", i32 0, i32 1
  store %struct.L5* %"21", %struct.L5** %"22", align 8
  %"23" = load %struct.L4** %"15", align 8
  %"24" = getelementptr inbounds %struct.L4* %"18", i32 0, i32 0
  store %struct.L4* %"23", %struct.L4** %"24", align 8
  store %struct.L4* %"18", %struct.L4** %"15", align 8
  %"25" = call i32 @__VERIFIER_nondet_int() #4
  %"26" = icmp ne i32 %"25", 0
  br i1 %"26", label %main_bb5, label %main_l3_insert.exit.i.i.i

main_l3_insert.exit.i.i.i:                        ; preds = %main_l4_insert.exit.i.i.i.i
  %"27" = load %struct.L3** %"11", align 8
  %"28" = getelementptr inbounds %struct.L3* %"14", i32 0, i32 1
  store %struct.L3* %"27", %struct.L3** %"28", align 8
  store %struct.L3* %"14", %struct.L3** %"11", align 8
  %"29" = call i32 @__VERIFIER_nondet_int() #4
  %"30" = icmp ne i32 %"29", 0
  br i1 %"30", label %main_bb4, label %main_l2_insert.exit.i.i

main_l2_insert.exit.i.i:                          ; preds = %main_l3_insert.exit.i.i.i
  %"31" = load %struct.L2** %"7", align 8
  %"32" = getelementptr inbounds %struct.L2* %"10", i32 0, i32 0
  store %struct.L2* %"31", %struct.L2** %"32", align 8
  store %struct.L2* %"10", %struct.L2** %"7", align 8
  %"33" = call i32 @__VERIFIER_nondet_int() #4
  %"34" = icmp ne i32 %"33", 0
  br i1 %"34", label %main_bb3, label %main_l1_insert.exit.i

main_l1_insert.exit.i:                            ; preds = %main_l2_insert.exit.i.i
  %"35" = load %struct.L1** %"3", align 8
  %"36" = getelementptr inbounds %struct.L1* %"6", i32 0, i32 1
  store %struct.L1* %"35", %struct.L1** %"36", align 8
  store %struct.L1* %"6", %struct.L1** %"3", align 8
  %"37" = call i32 @__VERIFIER_nondet_int() #4
  %"38" = icmp ne i32 %"37", 0
  br i1 %"38", label %main_bb2, label %main_l0_insert.exit

main_l0_insert.exit:                              ; preds = %main_l1_insert.exit.i
  %"39" = load %struct.L0** @main.list, align 8
  %"40" = getelementptr inbounds %struct.L0* %"2", i32 0, i32 0
  store %struct.L0* %"39", %struct.L0** %"40", align 8
  store %struct.L0* %"2", %struct.L0** @main.list, align 8
  %"41" = call i32 @__VERIFIER_nondet_int()
  %"42" = icmp ne i32 %"41", 0
  br i1 %"42", label %main_bb1, label %main_bb6

main_bb6:                                         ; preds = %main_l0_insert.exit
  %"43" = load %struct.L0** @main.list, align 8
  br label %main_bb7

main_bb7:                                         ; preds = %main_l1_destroy.exit.i, %main_bb6
  %.0.i = phi %struct.L0* [ %"43", %main_bb6 ], [ %"72", %main_l1_destroy.exit.i ]
  %"44" = getelementptr inbounds %struct.L0* %.0.i, i32 0, i32 1
  %"45" = load %struct.L1** %"44", align 8
  br label %main_bb8

main_bb8:                                         ; preds = %main_l2_destroy.exit.i.i, %main_bb7
  %.0.i.i = phi %struct.L1* [ %"45", %main_bb7 ], [ %"68", %main_l2_destroy.exit.i.i ]
  %"46" = getelementptr inbounds %struct.L1* %.0.i.i, i32 0, i32 0
  %"47" = load %struct.L2** %"46", align 8
  br label %main_bb9

main_bb9:                                         ; preds = %main_l3_destroy.exit.i.i.i, %main_bb8
  %.0.i.i.i = phi %struct.L2* [ %"47", %main_bb8 ], [ %"64", %main_l3_destroy.exit.i.i.i ]
  %"48" = getelementptr inbounds %struct.L2* %.0.i.i.i, i32 0, i32 1
  %"49" = load %struct.L3** %"48", align 8
  br label %main_bb10

main_bb10:                                        ; preds = %main_l4_destroy.exit.i.i.i.i, %main_bb9
  %.0.i.i.i.i = phi %struct.L3* [ %"49", %main_bb9 ], [ %"60", %main_l4_destroy.exit.i.i.i.i ]
  %"50" = getelementptr inbounds %struct.L3* %.0.i.i.i.i, i32 0, i32 0
  %"51" = load %struct.L4** %"50", align 8
  br label %main_bb11

main_bb11:                                        ; preds = %main_bb11, %main_bb10
  %.0.i.i.i.i.i = phi %struct.L4* [ %"51", %main_bb10 ], [ %"56", %main_bb11 ]
  %"52" = getelementptr inbounds %struct.L4* %.0.i.i.i.i.i, i32 0, i32 1
  %"53" = load %struct.L5** %"52", align 8
  %"54" = bitcast %struct.L5* %"53" to i8*
  call void @free(i8* %"54") #4
  %"55" = getelementptr inbounds %struct.L4* %.0.i.i.i.i.i, i32 0, i32 0
  %"56" = load %struct.L4** %"55", align 8
  %"57" = bitcast %struct.L4* %.0.i.i.i.i.i to i8*
  call void @free(i8* %"57") #4
  %"58" = icmp ne %struct.L4* %"56", null
  br i1 %"58", label %main_bb11, label %main_l4_destroy.exit.i.i.i.i

main_l4_destroy.exit.i.i.i.i:                     ; preds = %main_bb11
  %"59" = getelementptr inbounds %struct.L3* %.0.i.i.i.i, i32 0, i32 1
  %"60" = load %struct.L3** %"59", align 8
  %"61" = bitcast %struct.L3* %.0.i.i.i.i to i8*
  call void @free(i8* %"61") #4
  %"62" = icmp ne %struct.L3* %"60", null
  br i1 %"62", label %main_bb10, label %main_l3_destroy.exit.i.i.i

main_l3_destroy.exit.i.i.i:                       ; preds = %main_l4_destroy.exit.i.i.i.i
  %"63" = getelementptr inbounds %struct.L2* %.0.i.i.i, i32 0, i32 0
  %"64" = load %struct.L2** %"63", align 8
  %"65" = bitcast %struct.L2* %.0.i.i.i to i8*
  call void @free(i8* %"65") #4
  %"66" = icmp ne %struct.L2* %"64", null
  br i1 %"66", label %main_bb9, label %main_l2_destroy.exit.i.i

main_l2_destroy.exit.i.i:                         ; preds = %main_l3_destroy.exit.i.i.i
  %"67" = getelementptr inbounds %struct.L1* %.0.i.i, i32 0, i32 1
  %"68" = load %struct.L1** %"67", align 8
  %"69" = bitcast %struct.L1* %.0.i.i to i8*
  call void @free(i8* %"69") #4
  %"70" = icmp ne %struct.L1* %"68", null
  br i1 %"70", label %main_bb8, label %main_l1_destroy.exit.i

main_l1_destroy.exit.i:                           ; preds = %main_l2_destroy.exit.i.i
  %"71" = getelementptr inbounds %struct.L0* %.0.i, i32 0, i32 0
  %"72" = load %struct.L0** %"71", align 8
  %"73" = bitcast %struct.L0* %.0.i to i8*
  call void @free(i8* %"73") #4
  %"74" = icmp ne %struct.L0* %"72", null
  br i1 %"74", label %main_bb7, label %main_l0_destroy.exit

main_l0_destroy.exit:                             ; preds = %main_l1_destroy.exit.i
  ret i32 0

main_bb12:                                        ; preds = %main_zalloc_or_die.exit.i.i.i.i.i
  call void @abort() #5
  unreachable

main_bb13:                                        ; preds = %main_bb5
  call void @abort() #5
  unreachable

main_bb14:                                        ; preds = %main_bb4
  call void @abort() #5
  unreachable

main_bb15:                                        ; preds = %main_bb3
  call void @abort() #5
  unreachable

main_bb16:                                        ; preds = %main_bb2
  call void @abort() #5
  unreachable

main_bb17:                                        ; preds = %main_bb1
  call void @abort() #5
  unreachable
}

declare i32 @__VERIFIER_nondet_int() #1

; Function Attrs: nounwind
declare void @free(i8*) #2

; Function Attrs: noreturn nounwind
declare void @abort() #3

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind
declare void @llvm.memset.p0i8.i64(i8* nocapture, i8, i64, i32, i1) #4

declare i64 @__kittel_nondef.0()

declare i8* @__kittel_nondef.1()

declare i32 @__kittel_nondef.2()

declare %struct.L4** @__kittel_nondef.3()

declare %struct.L4* @__kittel_nondef.4()

declare %struct.L3** @__kittel_nondef.5()

declare %struct.L3* @__kittel_nondef.6()

declare %struct.L2** @__kittel_nondef.7()

declare %struct.L2* @__kittel_nondef.8()

declare %struct.L1** @__kittel_nondef.9()

declare %struct.L1* @__kittel_nondef.10()

declare %struct.L0** @__kittel_nondef.11()

declare %struct.L0* @__kittel_nondef.12()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

