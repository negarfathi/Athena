; ModuleID = 'Benchmarks/TermCOMP/C/SV-COMP_Mixed_Categories/test-0219_true-valid-memsafety/test-0219_true-valid-memsafety.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.L1 = type { %struct.L1*, %struct.L2* }
%struct.L2 = type { i8*, %struct.L2* }

@main.list = internal global %struct.L1* null, align 8

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  br label %main_bb1

main_bb1:                                         ; preds = %main_l1_insert.exit, %main_bb0
  %"0" = call noalias i8* @malloc(i64 16) #4
  call void @llvm.memset.p0i8.i64(i8* %"0", i8 0, i64 16, i32 1, i1 false) #4
  %"1" = bitcast i8* %"0" to %struct.L1*
  %"2" = icmp ne %struct.L1* %"1", null
  br i1 %"2", label %main_bb2, label %main_bb10

main_bb2:                                         ; preds = %main_bb1
  %"3" = getelementptr inbounds %struct.L1* %"1", i32 0, i32 1
  br label %main_bb3

main_bb3:                                         ; preds = %main_l2_insert.exit.i, %main_bb2
  %"4" = call noalias i8* @malloc(i64 16) #4
  call void @llvm.memset.p0i8.i64(i8* %"4", i8 0, i64 16, i32 1, i1 false) #4
  %"5" = bitcast i8* %"4" to %struct.L2*
  %"6" = icmp ne %struct.L2* %"5", null
  br i1 %"6", label %main_bb4, label %main_bb9

main_bb4:                                         ; preds = %main_bb3
  %"7" = call noalias i8* @malloc(i64 119) #4
  %"8" = getelementptr inbounds %struct.L2* %"5", i32 0, i32 0
  store i8* %"7", i8** %"8", align 8
  %"9" = getelementptr inbounds %struct.L2* %"5", i32 0, i32 0
  %"10" = load i8** %"9", align 8
  %"11" = icmp ne i8* %"10", null
  br i1 %"11", label %main_l2_insert.exit.i, label %main_bb8

main_l2_insert.exit.i:                            ; preds = %main_bb4
  %"12" = load %struct.L2** %"3", align 8
  %"13" = getelementptr inbounds %struct.L2* %"5", i32 0, i32 1
  store %struct.L2* %"12", %struct.L2** %"13", align 8
  store %struct.L2* %"5", %struct.L2** %"3", align 8
  %"14" = call i32 @__VERIFIER_nondet_int() #4
  %"15" = icmp ne i32 %"14", 0
  br i1 %"15", label %main_bb3, label %main_l1_insert.exit

main_l1_insert.exit:                              ; preds = %main_l2_insert.exit.i
  %"16" = load %struct.L1** @main.list, align 8
  %"17" = getelementptr inbounds %struct.L1* %"1", i32 0, i32 0
  store %struct.L1* %"16", %struct.L1** %"17", align 8
  store %struct.L1* %"1", %struct.L1** @main.list, align 8
  %"18" = call i32 @__VERIFIER_nondet_int()
  %"19" = icmp ne i32 %"18", 0
  br i1 %"19", label %main_bb1, label %main_bb5

main_bb5:                                         ; preds = %main_l1_insert.exit, %main_l2_destroy.exit
  %"20" = load %struct.L1** @main.list, align 8
  %"21" = getelementptr inbounds %struct.L1* %"20", i32 0, i32 0
  %"22" = load %struct.L1** %"21", align 8
  %"23" = load %struct.L1** @main.list, align 8
  %"24" = getelementptr inbounds %struct.L1* %"23", i32 0, i32 1
  %"25" = load %struct.L2** %"24", align 8
  br label %main_bb6

main_bb6:                                         ; preds = %main_bb6, %main_bb5
  %.0.i = phi %struct.L2* [ %"25", %main_bb5 ], [ %"27", %main_bb6 ]
  %"26" = getelementptr inbounds %struct.L2* %.0.i, i32 0, i32 1
  %"27" = load %struct.L2** %"26", align 8
  %"28" = getelementptr inbounds %struct.L2* %.0.i, i32 0, i32 0
  %"29" = load i8** %"28", align 8
  call void @free(i8* %"29") #4
  %"30" = bitcast %struct.L2* %.0.i to i8*
  call void @free(i8* %"30") #4
  %"31" = icmp ne %struct.L2* %"27", null
  br i1 %"31", label %main_bb6, label %main_l2_destroy.exit

main_l2_destroy.exit:                             ; preds = %main_bb6
  %"32" = load %struct.L1** @main.list, align 8
  %"33" = bitcast %struct.L1* %"32" to i8*
  call void @free(i8* %"33") #4
  store %struct.L1* %"22", %struct.L1** @main.list, align 8
  %"34" = load %struct.L1** @main.list, align 8
  %"35" = icmp ne %struct.L1* %"34", null
  br i1 %"35", label %main_bb5, label %main_bb7

main_bb7:                                         ; preds = %main_l2_destroy.exit
  ret i32 0

main_bb8:                                         ; preds = %main_bb4
  call void @abort() #5
  unreachable

main_bb9:                                         ; preds = %main_bb3
  call void @abort() #5
  unreachable

main_bb10:                                        ; preds = %main_bb1
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

declare %struct.L2** @__kittel_nondef.2()

declare %struct.L2* @__kittel_nondef.3()

declare %struct.L1** @__kittel_nondef.4()

declare %struct.L1* @__kittel_nondef.5()

declare i32 @__kittel_nondef.6()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

