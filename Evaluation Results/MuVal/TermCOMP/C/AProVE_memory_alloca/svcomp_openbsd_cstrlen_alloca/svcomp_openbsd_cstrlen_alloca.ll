; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_openbsd_cstrlen_alloca/svcomp_openbsd_cstrlen_alloca.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @cstrlen(i8* %str) #0 {
cstrlen_bb0:
  br label %cstrlen_bb1

cstrlen_bb1:                                      ; preds = %cstrlen_bb2, %cstrlen_bb0
  %s.0 = phi i8* [ %str, %cstrlen_bb0 ], [ %"2", %cstrlen_bb2 ]
  %"0" = load i8* %s.0, align 1
  %"1" = icmp ne i8 %"0", 0
  br i1 %"1", label %cstrlen_bb2, label %cstrlen_bb3

cstrlen_bb2:                                      ; preds = %cstrlen_bb1
  %"2" = getelementptr inbounds i8* %s.0, i32 1
  br label %cstrlen_bb1

cstrlen_bb3:                                      ; preds = %cstrlen_bb1
  %"3" = ptrtoint i8* %s.0 to i64
  %"4" = ptrtoint i8* %str to i64
  %"5" = sub i64 %"3", %"4"
  %"6" = trunc i64 %"5" to i32
  ret i32 %"6"
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb4:
  %"7" = call i32 @__VERIFIER_nondet_int()
  %"8" = icmp slt i32 %"7", 1
  %. = select i1 %"8", i32 1, i32 %"7"
  %"9" = sext i32 %. to i64
  %"10" = mul i64 %"9", 1
  %"11" = alloca i8, i64 %"10"
  %"12" = sub nsw i32 %., 1
  %"13" = sext i32 %"12" to i64
  %"14" = getelementptr inbounds i8* %"11", i64 %"13"
  store i8 0, i8* %"14", align 1
  br label %main_bb5

main_bb5:                                         ; preds = %main_bb6, %main_bb4
  %s.0.i = phi i8* [ %"11", %main_bb4 ], [ %"17", %main_bb6 ]
  %"15" = load i8* %s.0.i, align 1
  %"16" = icmp ne i8 %"15", 0
  br i1 %"16", label %main_bb6, label %main_cstrlen.exit

main_bb6:                                         ; preds = %main_bb5
  %"17" = getelementptr inbounds i8* %s.0.i, i32 1
  br label %main_bb5

main_cstrlen.exit:                                ; preds = %main_bb5
  %"18" = ptrtoint i8* %s.0.i to i64
  %"19" = ptrtoint i8* %"11" to i64
  %"20" = sub i64 %"18", %"19"
  %"21" = trunc i64 %"20" to i32
  ret i32 %"21"
}

declare i32 @__VERIFIER_nondet_int() #1

declare i8* @__kittel_nondef.0()

declare i32 @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

