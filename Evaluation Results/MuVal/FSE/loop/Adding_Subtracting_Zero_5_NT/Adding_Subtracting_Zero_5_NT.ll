; ModuleID = 'Benchmarks/FSE/loop/Adding_Subtracting_Zero_5_NT/Adding_Subtracting_Zero_5_NT.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.NNode = type { %struct.NNode* }

; Function Attrs: nounwind uwtable
define %struct.NNode* @initLink(i32 %n) #0 {
initLink_bb0:
  %"0" = call i8* @malloc(i64 8)
  %"1" = bitcast i8* %"0" to %struct.NNode*
  %"2" = getelementptr inbounds %struct.NNode* %"1", i32 0, i32 0
  store %struct.NNode* %"1", %struct.NNode** %"2", align 8
  br label %initLink_bb1

initLink_bb1:                                     ; preds = %initLink_bb2, %initLink_bb0
  %i.0 = phi i32 [ 2, %initLink_bb0 ], [ %"10", %initLink_bb2 ]
  %cyclic.0 = phi %struct.NNode* [ %"1", %initLink_bb0 ], [ %"9", %initLink_bb2 ]
  %"3" = icmp sle i32 %i.0, %n
  br i1 %"3", label %initLink_bb2, label %initLink_bb3

initLink_bb2:                                     ; preds = %initLink_bb1
  %"4" = call i8* @malloc(i64 8)
  %"5" = bitcast i8* %"4" to %struct.NNode*
  %"6" = getelementptr inbounds %struct.NNode* %"5", i32 0, i32 0
  store %struct.NNode* %"5", %struct.NNode** %"6", align 8
  %"7" = getelementptr inbounds %struct.NNode* %cyclic.0, i32 0, i32 0
  store %struct.NNode* %"5", %struct.NNode** %"7", align 8
  %"8" = getelementptr inbounds %struct.NNode* %cyclic.0, i32 0, i32 0
  %"9" = load %struct.NNode** %"8", align 8
  %"10" = add nsw i32 %i.0, 1
  br label %initLink_bb1

initLink_bb3:                                     ; preds = %initLink_bb1
  %"11" = getelementptr inbounds %struct.NNode* %cyclic.0, i32 0, i32 0
  store %struct.NNode* %cyclic.0, %struct.NNode** %"11", align 8
  ret %struct.NNode* %"1"
}

declare i8* @malloc(i64) #1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb4:
  %"12" = call i32 @__VERIFIER_nondet_int()
  %"13" = icmp sle i32 %"12", 0
  %"14" = icmp sgt i32 %"12", 65534
  %or.cond = or i1 %"13", %"14"
  br i1 %or.cond, label %main_bb10, label %main_bb5

main_bb5:                                         ; preds = %main_bb4
  %"15" = call i8* @malloc(i64 8) #2
  %"16" = bitcast i8* %"15" to %struct.NNode*
  %"17" = getelementptr inbounds %struct.NNode* %"16", i32 0, i32 0
  store %struct.NNode* %"16", %struct.NNode** %"17", align 8
  br label %main_bb6

main_bb6:                                         ; preds = %main_bb7, %main_bb5
  %i.0.i = phi i32 [ 2, %main_bb5 ], [ %"25", %main_bb7 ]
  %cyclic.0.i = phi %struct.NNode* [ %"16", %main_bb5 ], [ %"24", %main_bb7 ]
  %"18" = icmp sle i32 %i.0.i, %"12"
  br i1 %"18", label %main_bb7, label %main_initLink.exit

main_bb7:                                         ; preds = %main_bb6
  %"19" = call i8* @malloc(i64 8) #2
  %"20" = bitcast i8* %"19" to %struct.NNode*
  %"21" = getelementptr inbounds %struct.NNode* %"20", i32 0, i32 0
  store %struct.NNode* %"20", %struct.NNode** %"21", align 8
  %"22" = getelementptr inbounds %struct.NNode* %cyclic.0.i, i32 0, i32 0
  store %struct.NNode* %"20", %struct.NNode** %"22", align 8
  %"23" = getelementptr inbounds %struct.NNode* %cyclic.0.i, i32 0, i32 0
  %"24" = load %struct.NNode** %"23", align 8
  %"25" = add nsw i32 %i.0.i, 1
  br label %main_bb6

main_initLink.exit:                               ; preds = %main_bb6
  %"26" = getelementptr inbounds %struct.NNode* %cyclic.0.i, i32 0, i32 0
  store %struct.NNode* %cyclic.0.i, %struct.NNode** %"26", align 8
  br label %main_bb8

main_bb8:                                         ; preds = %main_bb9, %main_initLink.exit
  %ip.0 = phi %struct.NNode* [ %"16", %main_initLink.exit ], [ %"29", %main_bb9 ]
  %"27" = icmp ne %struct.NNode* %ip.0, null
  br i1 %"27", label %main_bb9, label %main_bb10

main_bb9:                                         ; preds = %main_bb8
  %"28" = getelementptr inbounds %struct.NNode* %ip.0, i32 0, i32 0
  %"29" = load %struct.NNode** %"28", align 8
  br label %main_bb8

main_bb10:                                        ; preds = %main_bb8, %main_bb4
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32 @__kittel_nondef.0()

declare %struct.NNode* @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

