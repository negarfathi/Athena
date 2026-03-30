; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_add_last_alloca/svcomp_add_last_alloca.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  %"0" = call i32 @__VERIFIER_nondet_int()
  %"1" = icmp slt i32 %"0", 1
  %. = select i1 %"1", i32 1, i32 %"0"
  %"2" = sext i32 %. to i64
  %"3" = mul i64 %"2", 4
  %"4" = alloca i8, i64 %"3"
  %"5" = bitcast i8* %"4" to i32*
  %"6" = icmp ne i32* %"5", null
  br i1 %"6", label %main_bb1, label %main_bb4

main_bb1:                                         ; preds = %main_bb0
  %"7" = sext i32 %. to i64
  %"8" = getelementptr inbounds i32* %"5", i64 %"7"
  %"9" = getelementptr inbounds i32* %"8", i64 -1
  %"10" = sext i32 %. to i64
  %"11" = getelementptr inbounds i32* %"5", i64 %"10"
  %"12" = getelementptr inbounds i32* %"11", i64 -1
  br label %main_bb2

main_bb2:                                         ; preds = %main_bb3, %main_bb1
  %a.0 = phi i32* [ %"5", %main_bb1 ], [ %"19", %main_bb3 ]
  %"13" = load i32* %a.0, align 4
  %"14" = load i32* %"9", align 4
  %"15" = icmp ne i32 %"13", %"14"
  br i1 %"15", label %main_bb3, label %main_bb4

main_bb3:                                         ; preds = %main_bb2
  %"16" = load i32* %"12", align 4
  %"17" = load i32* %a.0, align 4
  %"18" = add nsw i32 %"17", %"16"
  store i32 %"18", i32* %a.0, align 4
  %"19" = getelementptr inbounds i32* %a.0, i32 1
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

