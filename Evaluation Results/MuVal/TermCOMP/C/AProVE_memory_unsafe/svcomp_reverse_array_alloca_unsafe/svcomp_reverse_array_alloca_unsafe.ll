; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_unsafe/svcomp_reverse_array_alloca_unsafe/svcomp_reverse_array_alloca_unsafe.bc'
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
  %"6" = mul i64 %"5", 4
  %"7" = alloca i8, i64 %"6"
  %"8" = bitcast i8* %"7" to i32*
  br label %main_bb1

main_bb1:                                         ; preds = %main_bb4, %main_bb0
  %i.0 = phi i32 [ 0, %main_bb0 ], [ %"18", %main_bb4 ]
  %"9" = icmp slt i32 %i.0, %length.1
  br i1 %"9", label %main_bb2, label %main_bb5

main_bb2:                                         ; preds = %main_bb1
  %"10" = sext i32 %i.0 to i64
  %"11" = getelementptr inbounds i32* %"8", i64 %"10"
  %"12" = load i32* %"11", align 4
  %"13" = icmp eq i32 %"12", 0
  br i1 %"13", label %main_bb3, label %main_bb4

main_bb3:                                         ; preds = %main_bb2
  %"14" = sext i32 %i.0 to i64
  %"15" = getelementptr inbounds i32* %"8", i64 %"14"
  %"16" = load i32* %"15", align 4
  %"17" = add nsw i32 %"16", 1
  store i32 %"17", i32* %"15", align 4
  br label %main_bb4

main_bb4:                                         ; preds = %main_bb2, %main_bb3
  %"18" = add nsw i32 %i.0, 1
  br label %main_bb1

main_bb5:                                         ; preds = %main_bb1
  %"19" = sdiv i32 %length.1, 2
  %"20" = add nsw i32 %"19", 1
  %"21" = sext i32 %"20" to i64
  %"22" = getelementptr inbounds i32* %"8", i64 %"21"
  store i32 0, i32* %"22", align 4
  %"23" = sext i32 %length.1 to i64
  %"24" = getelementptr inbounds i32* %"8", i64 %"23"
  %"25" = getelementptr inbounds i32* %"24", i64 -1
  br label %main_bb6

main_bb6:                                         ; preds = %main_bb8, %main_bb5
  %a.0 = phi i32* [ %"8", %main_bb5 ], [ %"32", %main_bb8 ]
  %b.0 = phi i32* [ %"25", %main_bb5 ], [ %"33", %main_bb8 ]
  %"26" = load i32* %a.0, align 4
  %"27" = icmp ne i32 %"26", 0
  br i1 %"27", label %main_bb7, label %main_.critedge

main_bb7:                                         ; preds = %main_bb6
  %"28" = load i32* %b.0, align 4
  %"29" = icmp ne i32 %"28", 0
  br i1 %"29", label %main_bb8, label %main_.critedge

main_bb8:                                         ; preds = %main_bb7
  %"30" = load i32* %a.0, align 4
  %"31" = load i32* %b.0, align 4
  store i32 %"31", i32* %a.0, align 4
  store i32 %"30", i32* %b.0, align 4
  %"32" = getelementptr inbounds i32* %a.0, i32 1
  %"33" = getelementptr inbounds i32* %b.0, i32 -1
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

