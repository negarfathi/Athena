; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_cstrlen_true_alloca/svcomp_cstrlen_true_alloca.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @cstrlen(i8* %s) #0 {
cstrlen_bb0:
  br label %cstrlen_bb1

cstrlen_bb1:                                      ; preds = %cstrlen_bb2, %cstrlen_bb0
  %p.0 = phi i8* [ %s, %cstrlen_bb0 ], [ %"3", %cstrlen_bb2 ]
  %"0" = load i8* %p.0, align 1
  %"1" = sext i8 %"0" to i32
  %"2" = icmp ne i32 %"1", 0
  br i1 %"2", label %cstrlen_bb2, label %cstrlen_bb3

cstrlen_bb2:                                      ; preds = %cstrlen_bb1
  %"3" = getelementptr inbounds i8* %p.0, i32 1
  br label %cstrlen_bb1

cstrlen_bb3:                                      ; preds = %cstrlen_bb1
  %"4" = ptrtoint i8* %p.0 to i64
  %"5" = ptrtoint i8* %s to i64
  %"6" = sub i64 %"4", %"5"
  %"7" = trunc i64 %"6" to i32
  ret i32 %"7"
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb4:
  %"8" = call i32 @__VERIFIER_nondet_int()
  %"9" = icmp slt i32 %"8", 1
  %. = select i1 %"9", i32 1, i32 %"8"
  %"10" = sext i32 %. to i64
  %"11" = mul i64 %"10", 1
  %"12" = alloca i8, i64 %"11"
  %"13" = sub nsw i32 %., 1
  %"14" = sext i32 %"13" to i64
  %"15" = getelementptr inbounds i8* %"12", i64 %"14"
  store i8 0, i8* %"15", align 1
  br label %main_bb5

main_bb5:                                         ; preds = %main_bb6, %main_bb4
  %p.0.i = phi i8* [ %"12", %main_bb4 ], [ %"19", %main_bb6 ]
  %"16" = load i8* %p.0.i, align 1
  %"17" = sext i8 %"16" to i32
  %"18" = icmp ne i32 %"17", 0
  br i1 %"18", label %main_bb6, label %main_cstrlen.exit

main_bb6:                                         ; preds = %main_bb5
  %"19" = getelementptr inbounds i8* %p.0.i, i32 1
  br label %main_bb5

main_cstrlen.exit:                                ; preds = %main_bb5
  %"20" = ptrtoint i8* %p.0.i to i64
  %"21" = ptrtoint i8* %"12" to i64
  %"22" = sub i64 %"20", %"21"
  %"23" = trunc i64 %"22" to i32
  ret i32 %"23"
}

declare i32 @__VERIFIER_nondet_int() #1

declare i8* @__kittel_nondef.0()

declare i32 @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

