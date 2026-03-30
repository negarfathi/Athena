; ModuleID = 'Benchmarks/TermCOMP/C/SV-COMP_Mixed_Categories/test-0513_1_true-valid-memsafety/test-0513_1_true-valid-memsafety.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TLItem = type { %struct.TLItem*, %struct.DItem* }
%struct.DItem = type { %struct.DItem*, i32 }

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  br label %main_bb1

main_bb1:                                         ; preds = %main_bb13, %main_bb0
  %c1.0 = phi i32 [ 0, %main_bb0 ], [ %"3", %main_bb13 ]
  %data.0 = phi %struct.TLItem* [ null, %main_bb0 ], [ %data.1, %main_bb13 ]
  %"0" = icmp slt i32 %c1.0, 5
  br i1 %"0", label %main_bb2, label %main_.critedge

main_bb2:                                         ; preds = %main_bb1
  %"1" = call i32 @__VERIFIER_nondet_int()
  %"2" = icmp ne i32 %"1", 0
  br i1 %"2", label %main_bb3, label %main_.critedge

main_bb3:                                         ; preds = %main_bb2
  %"3" = add nsw i32 %c1.0, 1
  %"4" = call noalias i8* @malloc(i64 16) #4
  %"5" = bitcast i8* %"4" to %struct.DItem*
  %"6" = icmp ne %struct.DItem* %"5", null
  br i1 %"6", label %main_bb4, label %main_bb14

main_bb4:                                         ; preds = %main_bb3
  %"7" = getelementptr inbounds %struct.DItem* %"5", i32 0, i32 0
  store %struct.DItem* null, %struct.DItem** %"7", align 8
  %"8" = icmp slt i32 %"3", 2
  br i1 %"8", label %main_bb5, label %main_bb6

main_bb5:                                         ; preds = %main_bb4
  %"9" = getelementptr inbounds %struct.DItem* %"5", i32 0, i32 1
  store i32 2, i32* %"9", align 4
  br label %main_bb6

main_bb6:                                         ; preds = %main_bb5, %main_bb4
  %"10" = icmp slt i32 %"3", 4
  br i1 %"10", label %main_bb7, label %main_bb8

main_bb7:                                         ; preds = %main_bb6
  %"11" = add nsw i32 %"3", 2
  %"12" = getelementptr inbounds %struct.DItem* %"5", i32 0, i32 1
  store i32 %"11", i32* %"12", align 4
  br label %main_bb8

main_bb8:                                         ; preds = %main_bb7, %main_bb6
  %"13" = icmp slt i32 %"3", 6
  br i1 %"13", label %main_bb9, label %main_bb10

main_bb9:                                         ; preds = %main_bb8
  %"14" = mul nsw i32 2, %"3"
  %"15" = add nsw i32 %"14", 4
  %"16" = getelementptr inbounds %struct.DItem* %"5", i32 0, i32 1
  store i32 %"15", i32* %"16", align 4
  br label %main_bb10

main_bb10:                                        ; preds = %main_bb9, %main_bb8
  %"17" = call noalias i8* @malloc(i64 16) #4
  %"18" = bitcast i8* %"17" to %struct.TLItem*
  %"19" = icmp ne %struct.TLItem* %data.0, null
  br i1 %"19", label %main_bb11, label %main_bb12

main_bb11:                                        ; preds = %main_bb10
  %"20" = getelementptr inbounds %struct.TLItem* %data.0, i32 0, i32 0
  %"21" = load %struct.TLItem** %"20", align 8
  %"22" = getelementptr inbounds %struct.TLItem* %"18", i32 0, i32 0
  store %struct.TLItem* %"21", %struct.TLItem** %"22", align 8
  %"23" = getelementptr inbounds %struct.TLItem* %data.0, i32 0, i32 0
  store %struct.TLItem* %"18", %struct.TLItem** %"23", align 8
  br label %main_bb13

main_bb12:                                        ; preds = %main_bb10
  %"24" = getelementptr inbounds %struct.TLItem* %"18", i32 0, i32 0
  store %struct.TLItem* %"18", %struct.TLItem** %"24", align 8
  br label %main_bb13

main_bb13:                                        ; preds = %main_bb12, %main_bb11
  %data.1 = phi %struct.TLItem* [ %data.0, %main_bb11 ], [ %"18", %main_bb12 ]
  %"25" = getelementptr inbounds %struct.TLItem* %"18", i32 0, i32 1
  store %struct.DItem* %"5", %struct.DItem** %"25", align 8
  br label %main_bb1

main_bb14:                                        ; preds = %main_bb3
  call void @abort() #5
  unreachable

main_.critedge:                                   ; preds = %main_bb1, %main_bb2
  %"26" = icmp ne %struct.TLItem* %data.0, null
  br i1 %"26", label %main_bb15, label %main_bb32

main_bb15:                                        ; preds = %main_.critedge, %main_bb26
  %data.2 = phi %struct.TLItem* [ %"59", %main_bb26 ], [ %data.0, %main_.critedge ]
  %"27" = getelementptr inbounds %struct.TLItem* %data.2, i32 0, i32 0
  %"28" = load %struct.TLItem** %"27", align 8
  %"29" = icmp ne %struct.TLItem* %"28", %data.2
  %"30" = getelementptr inbounds %struct.TLItem* %data.2, i32 0, i32 1
  %"31" = load %struct.DItem** %"30", align 8
  br i1 %"29", label %main_bb16, label %main_bb27

main_bb16:                                        ; preds = %main_bb15
  %"32" = getelementptr inbounds %struct.TLItem* %data.2, i32 0, i32 0
  %"33" = load %struct.TLItem** %"32", align 8
  %"34" = getelementptr inbounds %struct.TLItem* %"33", i32 0, i32 1
  %"35" = load %struct.DItem** %"34", align 8
  %"36" = getelementptr inbounds %struct.TLItem* %data.2, i32 0, i32 0
  %"37" = load %struct.TLItem** %"36", align 8
  %"38" = getelementptr inbounds %struct.TLItem* %"37", i32 0, i32 0
  %"39" = load %struct.TLItem** %"38", align 8
  %"40" = getelementptr inbounds %struct.TLItem* %data.2, i32 0, i32 0
  store %struct.TLItem* %"39", %struct.TLItem** %"40", align 8
  %"41" = bitcast %struct.TLItem* %"37" to i8*
  call void @free(i8* %"41") #4
  %"42" = getelementptr inbounds %struct.TLItem* %data.2, i32 0, i32 1
  br label %main_bb17

main_bb17:                                        ; preds = %main_bb21, %main_bb16
  %dst.0 = phi %struct.DItem** [ %"42", %main_bb16 ], [ %"55", %main_bb21 ]
  %item2.0 = phi %struct.DItem* [ %"35", %main_bb16 ], [ %item2.1, %main_bb21 ]
  %item.0 = phi %struct.DItem* [ %"31", %main_bb16 ], [ %item.1, %main_bb21 ]
  %"43" = icmp ne %struct.DItem* %item.0, null
  %"44" = icmp ne %struct.DItem* %item2.0, null
  %. = select i1 %"43", i1 %"44", i1 false
  br i1 %., label %main_bb18, label %main_bb22

main_bb18:                                        ; preds = %main_bb17
  %"45" = getelementptr inbounds %struct.DItem* %item.0, i32 0, i32 1
  %"46" = load i32* %"45", align 4
  %"47" = getelementptr inbounds %struct.DItem* %item2.0, i32 0, i32 1
  %"48" = load i32* %"47", align 4
  %"49" = icmp sgt i32 %"46", %"48"
  br i1 %"49", label %main_bb19, label %main_bb20

main_bb19:                                        ; preds = %main_bb18
  store %struct.DItem* %item.0, %struct.DItem** %dst.0, align 8
  %"50" = getelementptr inbounds %struct.DItem* %item.0, i32 0, i32 0
  %"51" = load %struct.DItem** %"50", align 8
  br label %main_bb21

main_bb20:                                        ; preds = %main_bb18
  store %struct.DItem* %item2.0, %struct.DItem** %dst.0, align 8
  %"52" = getelementptr inbounds %struct.DItem* %item2.0, i32 0, i32 0
  %"53" = load %struct.DItem** %"52", align 8
  br label %main_bb21

main_bb21:                                        ; preds = %main_bb20, %main_bb19
  %item2.1 = phi %struct.DItem* [ %item2.0, %main_bb19 ], [ %"53", %main_bb20 ]
  %item.1 = phi %struct.DItem* [ %"51", %main_bb19 ], [ %item.0, %main_bb20 ]
  %"54" = load %struct.DItem** %dst.0, align 8
  %"55" = getelementptr inbounds %struct.DItem* %"54", i32 0, i32 0
  br label %main_bb17

main_bb22:                                        ; preds = %main_bb17
  %"56" = icmp ne %struct.DItem* %item.0, null
  br i1 %"56", label %main_bb23, label %main_bb24

main_bb23:                                        ; preds = %main_bb22
  store %struct.DItem* %item.0, %struct.DItem** %dst.0, align 8
  br label %main_bb26

main_bb24:                                        ; preds = %main_bb22
  %"57" = icmp ne %struct.DItem* %item2.0, null
  br i1 %"57", label %main_bb25, label %main_bb26

main_bb25:                                        ; preds = %main_bb24
  store %struct.DItem* %item2.0, %struct.DItem** %dst.0, align 8
  br label %main_bb26

main_bb26:                                        ; preds = %main_bb24, %main_bb25, %main_bb23
  %"58" = getelementptr inbounds %struct.TLItem* %data.2, i32 0, i32 0
  %"59" = load %struct.TLItem** %"58", align 8
  br label %main_bb15

main_bb27:                                        ; preds = %main_bb15
  %"60" = bitcast %struct.TLItem* %data.2 to i8*
  call void @free(i8* %"60") #4
  br label %main_bb28

main_bb28:                                        ; preds = %main_bb29, %main_bb30, %main_bb31, %main_bb27
  %item.2 = phi %struct.DItem* [ %"31", %main_bb27 ], [ %"63", %main_bb31 ], [ %"63", %main_bb30 ], [ %"63", %main_bb29 ]
  %"61" = icmp ne %struct.DItem* %item.2, null
  br i1 %"61", label %main_bb29, label %main_bb32

main_bb29:                                        ; preds = %main_bb28
  %"62" = getelementptr inbounds %struct.DItem* %item.2, i32 0, i32 0
  %"63" = load %struct.DItem** %"62", align 8
  %"64" = getelementptr inbounds %struct.DItem* %item.2, i32 0, i32 1
  %"65" = load i32* %"64", align 4
  %"66" = icmp sgt i32 %"65", 1
  br i1 %"66", label %main_bb30, label %main_bb28

main_bb30:                                        ; preds = %main_bb29
  %"67" = getelementptr inbounds %struct.DItem* %item.2, i32 0, i32 1
  %"68" = load i32* %"67", align 4
  %"69" = icmp slt i32 %"68", 15
  br i1 %"69", label %main_bb31, label %main_bb28

main_bb31:                                        ; preds = %main_bb30
  %"70" = bitcast %struct.DItem* %item.2 to i8*
  call void @free(i8* %"70") #4
  br label %main_bb28

main_bb32:                                        ; preds = %main_bb28, %main_.critedge
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int() #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: noreturn nounwind
declare void @abort() #3

; Function Attrs: nounwind
declare void @free(i8*) #2

declare i32 @__kittel_nondef.0()

declare %struct.TLItem* @__kittel_nondef.1()

declare %struct.DItem* @__kittel_nondef.2()

declare %struct.DItem** @__kittel_nondef.3()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

