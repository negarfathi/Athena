; ModuleID = 'Benchmarks/TermCOMP/C/SV-COMP_Mixed_Categories/dll_extends_pointer_true-valid-memsafety/dll_extends_pointer_true-valid-memsafety.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TNode = type { %struct.TNode*, %struct.TNode*, %struct.TData*, %struct.TData }
%struct.TData = type { i8 }

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  %"0" = call noalias i8* @malloc(i64 32) #3
  %"1" = bitcast i8* %"0" to %struct.TNode*
  %"2" = getelementptr inbounds %struct.TNode* %"1", i32 0, i32 0
  store %struct.TNode* null, %struct.TNode** %"2", align 8
  %"3" = getelementptr inbounds %struct.TNode* %"1", i32 0, i32 1
  store %struct.TNode* null, %struct.TNode** %"3", align 8
  %"4" = getelementptr inbounds %struct.TNode* %"1", i32 0, i32 3
  %"5" = getelementptr inbounds %struct.TNode* %"1", i32 0, i32 2
  store %struct.TData* %"4", %struct.TData** %"5", align 8
  br label %main_bb1

main_bb1:                                         ; preds = %main_bb3, %main_bb4, %main_bb0
  %list.0 = phi %struct.TNode* [ %"1", %main_bb0 ], [ %"9", %main_bb4 ], [ %"9", %main_bb3 ]
  %"6" = call i32 (...)* @__VERIFIER_nondet_int()
  %"7" = icmp ne i32 %"6", 0
  br i1 %"7", label %main_bb2, label %main_bb5

main_bb2:                                         ; preds = %main_bb1
  %"8" = call noalias i8* @malloc(i64 32) #3
  %"9" = bitcast i8* %"8" to %struct.TNode*
  %"10" = getelementptr inbounds %struct.TNode* %"9", i32 0, i32 0
  store %struct.TNode* %list.0, %struct.TNode** %"10", align 8
  %"11" = getelementptr inbounds %struct.TNode* %list.0, i32 0, i32 1
  store %struct.TNode* %"9", %struct.TNode** %"11", align 8
  %"12" = call i32 (...)* @__VERIFIER_nondet_int()
  %"13" = icmp ne i32 %"12", 0
  br i1 %"13", label %main_bb3, label %main_bb4

main_bb3:                                         ; preds = %main_bb2
  %"14" = call noalias i8* @malloc(i64 1) #3
  %"15" = bitcast i8* %"14" to %struct.TData*
  %"16" = getelementptr inbounds %struct.TNode* %"9", i32 0, i32 2
  store %struct.TData* %"15", %struct.TData** %"16", align 8
  br label %main_bb1

main_bb4:                                         ; preds = %main_bb2
  %"17" = getelementptr inbounds %struct.TNode* %"9", i32 0, i32 3
  %"18" = getelementptr inbounds %struct.TNode* %"9", i32 0, i32 2
  store %struct.TData* %"17", %struct.TData** %"18", align 8
  br label %main_bb1

main_bb5:                                         ; preds = %main_bb1, %main_bb8
  %list.1 = phi %struct.TNode* [ %"21", %main_bb8 ], [ %list.0, %main_bb1 ]
  %"19" = icmp ne %struct.TNode* null, %list.1
  br i1 %"19", label %main_bb6, label %main_bb9

main_bb6:                                         ; preds = %main_bb5
  %"20" = getelementptr inbounds %struct.TNode* %list.1, i32 0, i32 0
  %"21" = load %struct.TNode** %"20", align 8
  %"22" = getelementptr inbounds %struct.TNode* %list.1, i32 0, i32 3
  %"23" = getelementptr inbounds %struct.TNode* %list.1, i32 0, i32 2
  %"24" = load %struct.TData** %"23", align 8
  %"25" = icmp ne %struct.TData* %"22", %"24"
  br i1 %"25", label %main_bb7, label %main_bb8

main_bb7:                                         ; preds = %main_bb6
  %"26" = getelementptr inbounds %struct.TNode* %list.1, i32 0, i32 2
  %"27" = load %struct.TData** %"26", align 8
  %"28" = bitcast %struct.TData* %"27" to i8*
  call void @free(i8* %"28") #3
  br label %main_bb8

main_bb8:                                         ; preds = %main_bb7, %main_bb6
  %"29" = bitcast %struct.TNode* %list.1 to i8*
  call void @free(i8* %"29") #3
  br label %main_bb5

main_bb9:                                         ; preds = %main_bb5
  ret i32 0
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

declare i32 @__VERIFIER_nondet_int(...) #2

; Function Attrs: nounwind
declare void @free(i8*) #1

declare i32 @__kittel_nondef.0()

declare %struct.TNode* @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

