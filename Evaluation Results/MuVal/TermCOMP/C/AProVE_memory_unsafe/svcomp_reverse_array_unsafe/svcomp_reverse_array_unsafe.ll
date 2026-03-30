; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_unsafe/svcomp_reverse_array_unsafe/svcomp_reverse_array_unsafe.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  %"0" = call i32 @__VERIFIER_nondet_int()
  %"1" = icmp slt i32 %"0", 1
  %. = select i1 %"1", i32 1, i32 %"0"
  %"2" = srem i32 %., 2
  %"3" = icmp eq i32 %"2", 0
  %"4" = add nsw i32 %., 1
  %length.1 = select i1 %"3", i32 %"4", i32 %.
  %"5" = sext i32 %length.1 to i64
  %"6" = alloca i8, i64 %"5"
  %"7" = bitcast i8* %"6" to i32*
  br label %main_bb1

main_bb1:                                         ; preds = %main_bb4, %main_bb0
  %i.0 = phi i32 [ 0, %main_bb0 ], [ %"17", %main_bb4 ]
  %"8" = icmp slt i32 %i.0, %length.1
  br i1 %"8", label %main_bb2, label %main_bb5

main_bb2:                                         ; preds = %main_bb1
  %"9" = sext i32 %i.0 to i64
  %"10" = getelementptr inbounds i32* %"7", i64 %"9"
  %"11" = load i32* %"10", align 4
  %"12" = icmp eq i32 %"11", 0
  br i1 %"12", label %main_bb3, label %main_bb4

main_bb3:                                         ; preds = %main_bb2
  %"13" = sext i32 %i.0 to i64
  %"14" = getelementptr inbounds i32* %"7", i64 %"13"
  %"15" = load i32* %"14", align 4
  %"16" = add nsw i32 %"15", 1
  store i32 %"16", i32* %"14", align 4
  br label %main_bb4

main_bb4:                                         ; preds = %main_bb2, %main_bb3
  %"17" = add nsw i32 %i.0, 1
  br label %main_bb1

main_bb5:                                         ; preds = %main_bb1
  %"18" = sdiv i32 %length.1, 2
  %"19" = add nsw i32 %"18", 1
  %"20" = sext i32 %"19" to i64
  %"21" = getelementptr inbounds i32* %"7", i64 %"20"
  store i32 0, i32* %"21", align 4
  %"22" = sext i32 %length.1 to i64
  %"23" = getelementptr inbounds i32* %"7", i64 %"22"
  %"24" = getelementptr inbounds i32* %"23", i64 -1
  br label %main_bb6

main_bb6:                                         ; preds = %main_bb8, %main_bb5
  %a.0 = phi i32* [ %"7", %main_bb5 ], [ %"31", %main_bb8 ]
  %b.0 = phi i32* [ %"24", %main_bb5 ], [ %"32", %main_bb8 ]
  %"25" = load i32* %a.0, align 4
  %"26" = icmp ne i32 %"25", 0
  br i1 %"26", label %main_bb7, label %main_.critedge

main_bb7:                                         ; preds = %main_bb6
  %"27" = load i32* %b.0, align 4
  %"28" = icmp ne i32 %"27", 0
  br i1 %"28", label %main_bb8, label %main_.critedge

main_bb8:                                         ; preds = %main_bb7
  %"29" = load i32* %a.0, align 4
  %"30" = load i32* %b.0, align 4
  store i32 %"30", i32* %a.0, align 4
  store i32 %"29", i32* %b.0, align 4
  %"31" = getelementptr inbounds i32* %a.0, i32 1
  %"32" = getelementptr inbounds i32* %b.0, i32 -1
  br label %main_bb6

main_.critedge:                                   ; preds = %main_bb6, %main_bb7
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32 @__kittel_nondef.0()

declare i32* @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

