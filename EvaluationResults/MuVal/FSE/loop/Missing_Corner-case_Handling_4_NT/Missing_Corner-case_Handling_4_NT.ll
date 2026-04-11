; ModuleID = 'Benchmarks/FSE/loop/Missing_Corner-case_Handling_4_NT/Missing_Corner-case_Handling_4_NT.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.NNode = type { i32, %struct.NNode* }

; Function Attrs: nounwind uwtable
define %struct.NNode* @initLink(i32 %n) #0 {
initLink_bb0:
  %"0" = call i8* @malloc(i64 16)
  %"1" = bitcast i8* %"0" to %struct.NNode*
  %"2" = getelementptr inbounds %struct.NNode* %"1", i32 0, i32 0
  store i32 1, i32* %"2", align 4
  %"3" = getelementptr inbounds %struct.NNode* %"1", i32 0, i32 1
  store %struct.NNode* null, %struct.NNode** %"3", align 8
  br label %initLink_bb1

initLink_bb1:                                     ; preds = %initLink_bb2, %initLink_bb0
  %i.0 = phi i32 [ 2, %initLink_bb0 ], [ %"12", %initLink_bb2 ]
  %cyclic.0 = phi %struct.NNode* [ %"1", %initLink_bb0 ], [ %"11", %initLink_bb2 ]
  %"4" = icmp sle i32 %i.0, %n
  br i1 %"4", label %initLink_bb2, label %initLink_bb3

initLink_bb2:                                     ; preds = %initLink_bb1
  %"5" = call i8* @malloc(i64 16)
  %"6" = bitcast i8* %"5" to %struct.NNode*
  %"7" = getelementptr inbounds %struct.NNode* %"6", i32 0, i32 0
  store i32 %i.0, i32* %"7", align 4
  %"8" = getelementptr inbounds %struct.NNode* %"6", i32 0, i32 1
  store %struct.NNode* null, %struct.NNode** %"8", align 8
  %"9" = getelementptr inbounds %struct.NNode* %cyclic.0, i32 0, i32 1
  store %struct.NNode* %"6", %struct.NNode** %"9", align 8
  %"10" = getelementptr inbounds %struct.NNode* %cyclic.0, i32 0, i32 1
  %"11" = load %struct.NNode** %"10", align 8
  %"12" = add nsw i32 %i.0, 1
  br label %initLink_bb1

initLink_bb3:                                     ; preds = %initLink_bb1
  %"13" = getelementptr inbounds %struct.NNode* %cyclic.0, i32 0, i32 1
  store %struct.NNode* %"1", %struct.NNode** %"13", align 8
  ret %struct.NNode* %"1"
}

declare i8* @malloc(i64) #1

; Function Attrs: nounwind uwtable
define %struct.NNode* @findEnd(%struct.NNode* %list) #0 {
findEnd_bb4:
  br label %findEnd_bb5

findEnd_bb5:                                      ; preds = %findEnd_bb6, %findEnd_bb4
  %begin.0 = phi %struct.NNode* [ %list, %findEnd_bb4 ], [ %"18", %findEnd_bb6 ]
  %"14" = getelementptr inbounds %struct.NNode* %begin.0, i32 0, i32 1
  %"15" = load %struct.NNode** %"14", align 8
  %"16" = icmp ne %struct.NNode* %"15", %list
  br i1 %"16", label %findEnd_bb6, label %findEnd_bb7

findEnd_bb6:                                      ; preds = %findEnd_bb5
  %"17" = getelementptr inbounds %struct.NNode* %begin.0, i32 0, i32 1
  %"18" = load %struct.NNode** %"17", align 8
  br label %findEnd_bb5

findEnd_bb7:                                      ; preds = %findEnd_bb5
  ret %struct.NNode* %begin.0
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb8:
  %"19" = call i32 @__VERIFIER_nondet_int()
  %"20" = icmp sle i32 %"19", 0
  %"21" = icmp sgt i32 %"19", 65534
  %or.cond = or i1 %"20", %"21"
  br i1 %or.cond, label %main_bb17, label %main_bb9

main_bb9:                                         ; preds = %main_bb8
  %"22" = call i8* @malloc(i64 16) #2
  %"23" = bitcast i8* %"22" to %struct.NNode*
  %"24" = getelementptr inbounds %struct.NNode* %"23", i32 0, i32 0
  store i32 1, i32* %"24", align 4
  %"25" = getelementptr inbounds %struct.NNode* %"23", i32 0, i32 1
  store %struct.NNode* null, %struct.NNode** %"25", align 8
  br label %main_bb10

main_bb10:                                        ; preds = %main_bb11, %main_bb9
  %i.0.i = phi i32 [ 2, %main_bb9 ], [ %"34", %main_bb11 ]
  %cyclic.0.i = phi %struct.NNode* [ %"23", %main_bb9 ], [ %"33", %main_bb11 ]
  %"26" = icmp sle i32 %i.0.i, %"19"
  br i1 %"26", label %main_bb11, label %main_initLink.exit

main_bb11:                                        ; preds = %main_bb10
  %"27" = call i8* @malloc(i64 16) #2
  %"28" = bitcast i8* %"27" to %struct.NNode*
  %"29" = getelementptr inbounds %struct.NNode* %"28", i32 0, i32 0
  store i32 %i.0.i, i32* %"29", align 4
  %"30" = getelementptr inbounds %struct.NNode* %"28", i32 0, i32 1
  store %struct.NNode* null, %struct.NNode** %"30", align 8
  %"31" = getelementptr inbounds %struct.NNode* %cyclic.0.i, i32 0, i32 1
  store %struct.NNode* %"28", %struct.NNode** %"31", align 8
  %"32" = getelementptr inbounds %struct.NNode* %cyclic.0.i, i32 0, i32 1
  %"33" = load %struct.NNode** %"32", align 8
  %"34" = add nsw i32 %i.0.i, 1
  br label %main_bb10

main_initLink.exit:                               ; preds = %main_bb10
  %"35" = getelementptr inbounds %struct.NNode* %cyclic.0.i, i32 0, i32 1
  store %struct.NNode* %"23", %struct.NNode** %"35", align 8
  br label %main_bb12

main_bb12:                                        ; preds = %main_bb13, %main_initLink.exit
  %begin.0.i = phi %struct.NNode* [ %"23", %main_initLink.exit ], [ %"40", %main_bb13 ]
  %"36" = getelementptr inbounds %struct.NNode* %begin.0.i, i32 0, i32 1
  %"37" = load %struct.NNode** %"36", align 8
  %"38" = icmp ne %struct.NNode* %"37", %"23"
  br i1 %"38", label %main_bb13, label %main_findEnd.exit

main_bb13:                                        ; preds = %main_bb12
  %"39" = getelementptr inbounds %struct.NNode* %begin.0.i, i32 0, i32 1
  %"40" = load %struct.NNode** %"39", align 8
  br label %main_bb12

main_findEnd.exit:                                ; preds = %main_bb12, %main_bb16
  %h.0 = phi float [ %h.1, %main_bb16 ], [ 0.000000e+00, %main_bb12 ]
  %node.0 = phi %struct.NNode* [ %"50", %main_bb16 ], [ %"23", %main_bb12 ]
  %"41" = icmp ne %struct.NNode* %node.0, null
  br i1 %"41", label %main_bb14, label %main_bb17

main_bb14:                                        ; preds = %main_findEnd.exit
  %"42" = getelementptr inbounds %struct.NNode* %node.0, i32 0, i32 0
  %"43" = load i32* %"42", align 4
  %"44" = sitofp i32 %"43" to float
  %"45" = fcmp ogt float %"44", %h.0
  br i1 %"45", label %main_bb15, label %main_bb16

main_bb15:                                        ; preds = %main_bb14
  %"46" = getelementptr inbounds %struct.NNode* %node.0, i32 0, i32 0
  %"47" = load i32* %"46", align 4
  %"48" = sitofp i32 %"47" to float
  br label %main_bb16

main_bb16:                                        ; preds = %main_bb15, %main_bb14
  %h.1 = phi float [ %"48", %main_bb15 ], [ %h.0, %main_bb14 ]
  %"49" = getelementptr inbounds %struct.NNode* %node.0, i32 0, i32 1
  %"50" = load %struct.NNode** %"49", align 8
  br label %main_findEnd.exit

main_bb17:                                        ; preds = %main_findEnd.exit, %main_bb8
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32 @__kittel_nondef.0()

declare %struct.NNode* @__kittel_nondef.1()

declare float @__kittel_nondef.2()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

