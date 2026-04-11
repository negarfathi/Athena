; ModuleID = 'Benchmarks/TermCOMP/C/SV-COMP_Termination_Category/svcomp_cstrlen_true-termination/svcomp_cstrlen_true-termination.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i8* @__VERIFIER_nondet_String() #0 {
__VERIFIER_nondet_String_bb0:
  %"0" = call i32 @__VERIFIER_nondet_int()
  %"1" = icmp slt i32 %"0", 1
  %. = select i1 %"1", i32 1, i32 %"0"
  %"2" = sext i32 %. to i64
  %"3" = mul i64 %"2", 1
  %"4" = call noalias i8* @malloc(i64 %"3") #3
  %"5" = sub nsw i32 %., 1
  %"6" = sext i32 %"5" to i64
  %"7" = getelementptr inbounds i8* %"4", i64 %"6"
  store i8 0, i8* %"7", align 1
  ret i8* %"4"
}

declare i32 @__VERIFIER_nondet_int() #1

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #2

; Function Attrs: nounwind uwtable
define i32 @cstrlen(i8* %s) #0 {
cstrlen_bb1:
  br label %cstrlen_bb2

cstrlen_bb2:                                      ; preds = %cstrlen_bb3, %cstrlen_bb1
  %p.0 = phi i8* [ %s, %cstrlen_bb1 ], [ %"11", %cstrlen_bb3 ]
  %"8" = load i8* %p.0, align 1
  %"9" = sext i8 %"8" to i32
  %"10" = icmp ne i32 %"9", 0
  br i1 %"10", label %cstrlen_bb3, label %cstrlen_bb4

cstrlen_bb3:                                      ; preds = %cstrlen_bb2
  %"11" = getelementptr inbounds i8* %p.0, i32 1
  br label %cstrlen_bb2

cstrlen_bb4:                                      ; preds = %cstrlen_bb2
  %"12" = ptrtoint i8* %p.0 to i64
  %"13" = ptrtoint i8* %s to i64
  %"14" = sub i64 %"12", %"13"
  %"15" = trunc i64 %"14" to i32
  ret i32 %"15"
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb5:
  %"16" = call i32 @__VERIFIER_nondet_int() #3
  %"17" = icmp slt i32 %"16", 1
  %..i = select i1 %"17", i32 1, i32 %"16"
  %"18" = sext i32 %..i to i64
  %"19" = call noalias i8* @malloc(i64 %"18") #3
  %"20" = sub nsw i32 %..i, 1
  %"21" = sext i32 %"20" to i64
  %"22" = getelementptr inbounds i8* %"19", i64 %"21"
  store i8 0, i8* %"22", align 1
  br label %main_bb6

main_bb6:                                         ; preds = %main_bb7, %main_bb5
  %p.0.i = phi i8* [ %"19", %main_bb5 ], [ %"26", %main_bb7 ]
  %"23" = load i8* %p.0.i, align 1
  %"24" = sext i8 %"23" to i32
  %"25" = icmp ne i32 %"24", 0
  br i1 %"25", label %main_bb7, label %main_cstrlen.exit

main_bb7:                                         ; preds = %main_bb6
  %"26" = getelementptr inbounds i8* %p.0.i, i32 1
  br label %main_bb6

main_cstrlen.exit:                                ; preds = %main_bb6
  %"27" = ptrtoint i8* %p.0.i to i64
  %"28" = ptrtoint i8* %"19" to i64
  %"29" = sub i64 %"27", %"28"
  %"30" = trunc i64 %"29" to i32
  ret i32 %"30"
}

declare i32 @__kittel_nondef.0()

declare i8* @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

