; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_unsafe/svcomp_add_last_unsafe/svcomp_add_last_unsafe.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  %"0" = call i32 @__VERIFIER_nondet_int()
  %"1" = icmp slt i32 %"0", 1
  %. = select i1 %"1", i32 1, i32 %"0"
  %"2" = sext i32 %. to i64
  %"3" = alloca i8, i64 %"2"
  %"4" = bitcast i8* %"3" to i32*
  %"5" = icmp ne i32* %"4", null
  br i1 %"5", label %main_bb1, label %main_bb4

main_bb1:                                         ; preds = %main_bb0
  %"6" = sext i32 %. to i64
  %"7" = getelementptr inbounds i32* %"4", i64 %"6"
  %"8" = getelementptr inbounds i32* %"7", i64 -1
  %"9" = sext i32 %. to i64
  %"10" = getelementptr inbounds i32* %"4", i64 %"9"
  %"11" = getelementptr inbounds i32* %"10", i64 -1
  br label %main_bb2

main_bb2:                                         ; preds = %main_bb3, %main_bb1
  %a.0 = phi i32* [ %"4", %main_bb1 ], [ %"18", %main_bb3 ]
  %"12" = load i32* %a.0, align 4
  %"13" = load i32* %"8", align 4
  %"14" = icmp ne i32 %"12", %"13"
  br i1 %"14", label %main_bb3, label %main_bb4

main_bb3:                                         ; preds = %main_bb2
  %"15" = load i32* %"11", align 4
  %"16" = load i32* %a.0, align 4
  %"17" = add nsw i32 %"16", %"15"
  store i32 %"17", i32* %a.0, align 4
  %"18" = getelementptr inbounds i32* %a.0, i32 1
  br label %main_bb2

main_bb4:                                         ; preds = %main_bb2, %main_bb0
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32 @__kittel_nondef.0()

declare i32* @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

