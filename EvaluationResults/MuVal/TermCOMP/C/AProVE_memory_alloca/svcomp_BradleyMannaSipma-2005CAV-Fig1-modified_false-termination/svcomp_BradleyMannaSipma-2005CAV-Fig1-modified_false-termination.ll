; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_BradleyMannaSipma-2005CAV-Fig1-modified_false-termination/svcomp_BradleyMannaSipma-2005CAV-Fig1-modified_false-termination.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @gcd(i32* %y1, i32* %y2) #0 {
gcd_bb0:
  br label %gcd_bb1

gcd_bb1:                                          ; preds = %gcd_bb3, %gcd_bb4, %gcd_bb0
  %"0" = load i32* %y1, align 4
  %"1" = load i32* %y2, align 4
  %"2" = icmp ne i32 %"0", %"1"
  %"3" = load i32* %y1, align 4
  br i1 %"2", label %gcd_bb2, label %gcd_bb5

gcd_bb2:                                          ; preds = %gcd_bb1
  %"4" = load i32* %y2, align 4
  %"5" = icmp sgt i32 %"3", %"4"
  br i1 %"5", label %gcd_bb3, label %gcd_bb4

gcd_bb3:                                          ; preds = %gcd_bb2
  %"6" = load i32* %y1, align 4
  %"7" = load i32* %y2, align 4
  %"8" = sub nsw i32 %"6", %"7"
  store i32 %"8", i32* %y1, align 4
  br label %gcd_bb1

gcd_bb4:                                          ; preds = %gcd_bb2
  %"9" = load i32* %y2, align 4
  %"10" = load i32* %y1, align 4
  %"11" = sub nsw i32 %"9", %"10"
  store i32 %"11", i32* %y2, align 4
  br label %gcd_bb1

gcd_bb5:                                          ; preds = %gcd_bb1
  ret i32 %"3"
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb6:
  %"12" = alloca i8, i64 4
  %"13" = bitcast i8* %"12" to i32*
  %"14" = alloca i8, i64 4
  %"15" = bitcast i8* %"14" to i32*
  %"16" = call i32 @__VERIFIER_nondet_int()
  store i32 %"16", i32* %"13", align 4
  %"17" = call i32 @__VERIFIER_nondet_int()
  store i32 %"17", i32* %"15", align 4
  %"18" = load i32* %"13", align 4
  %"19" = icmp sge i32 %"18", 0
  br i1 %"19", label %main_bb7, label %main_gcd.exit

main_bb7:                                         ; preds = %main_bb6
  %"20" = load i32* %"15", align 4
  %"21" = icmp sge i32 %"20", 0
  br i1 %"21", label %main_bb8, label %main_gcd.exit

main_bb8:                                         ; preds = %main_bb7, %main_bb11, %main_bb10
  %"22" = load i32* %"13", align 4
  %"23" = load i32* %"15", align 4
  %"24" = icmp ne i32 %"22", %"23"
  %"25" = load i32* %"13", align 4
  br i1 %"24", label %main_bb9, label %main_gcd.exit

main_bb9:                                         ; preds = %main_bb8
  %"26" = load i32* %"15", align 4
  %"27" = icmp sgt i32 %"25", %"26"
  br i1 %"27", label %main_bb10, label %main_bb11

main_bb10:                                        ; preds = %main_bb9
  %"28" = load i32* %"13", align 4
  %"29" = load i32* %"15", align 4
  %"30" = sub nsw i32 %"28", %"29"
  store i32 %"30", i32* %"13", align 4
  br label %main_bb8

main_bb11:                                        ; preds = %main_bb9
  %"31" = load i32* %"15", align 4
  %"32" = load i32* %"13", align 4
  %"33" = sub nsw i32 %"31", %"32"
  store i32 %"33", i32* %"15", align 4
  br label %main_bb8

main_gcd.exit:                                    ; preds = %main_bb8, %main_bb7, %main_bb6
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32* @__kittel_nondef.0()

declare i32 @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

