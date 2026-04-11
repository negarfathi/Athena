; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_BradleyMannaSipma-2005ICALP-Fig1_true-alloca/svcomp_BradleyMannaSipma-2005ICALP-Fig1_true-alloca.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @gcd(i32 %y1, i32 %y2) #0 {
gcd_bb0:
  %"0" = alloca i8, i64 4
  %"1" = bitcast i8* %"0" to i32*
  %"2" = alloca i8, i64 4
  %"3" = bitcast i8* %"2" to i32*
  store i32 %y1, i32* %"1", align 4
  store i32 %y2, i32* %"3", align 4
  br label %gcd_bb1

gcd_bb1:                                          ; preds = %gcd_bb3, %gcd_bb4, %gcd_bb0
  %"4" = load i32* %"1", align 4
  %"5" = load i32* %"3", align 4
  %"6" = icmp ne i32 %"4", %"5"
  %"7" = load i32* %"1", align 4
  br i1 %"6", label %gcd_bb2, label %gcd_bb5

gcd_bb2:                                          ; preds = %gcd_bb1
  %"8" = load i32* %"3", align 4
  %"9" = icmp sgt i32 %"7", %"8"
  br i1 %"9", label %gcd_bb3, label %gcd_bb4

gcd_bb3:                                          ; preds = %gcd_bb2
  %"10" = load i32* %"1", align 4
  %"11" = load i32* %"3", align 4
  %"12" = sub nsw i32 %"10", %"11"
  store i32 %"12", i32* %"1", align 4
  br label %gcd_bb1

gcd_bb4:                                          ; preds = %gcd_bb2
  %"13" = load i32* %"3", align 4
  %"14" = load i32* %"1", align 4
  %"15" = sub nsw i32 %"13", %"14"
  store i32 %"15", i32* %"3", align 4
  br label %gcd_bb1

gcd_bb5:                                          ; preds = %gcd_bb1
  ret i32 %"7"
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb6:
  %"16" = alloca i8, i64 4
  %"17" = alloca i8, i64 4
  %"18" = call i32 @__VERIFIER_nondet_int()
  %"19" = call i32 @__VERIFIER_nondet_int()
  %"20" = icmp sge i32 %"18", 0
  %"21" = icmp sge i32 %"19", 0
  %or.cond = and i1 %"20", %"21"
  br i1 %or.cond, label %main_bb7, label %main_bb12

main_bb7:                                         ; preds = %main_bb6
  call void @llvm.lifetime.start(i64 4, i8* %"16")
  call void @llvm.lifetime.start(i64 4, i8* %"17")
  %"22" = bitcast i8* %"16" to i32*
  %"23" = bitcast i8* %"17" to i32*
  store i32 %"18", i32* %"22", align 4
  store i32 %"19", i32* %"23", align 4
  br label %main_bb8

main_bb8:                                         ; preds = %main_bb11, %main_bb10, %main_bb7
  %"24" = load i32* %"22", align 4
  %"25" = load i32* %"23", align 4
  %"26" = icmp ne i32 %"24", %"25"
  %"27" = load i32* %"22", align 4
  br i1 %"26", label %main_bb9, label %main_gcd.exit

main_bb9:                                         ; preds = %main_bb8
  %"28" = load i32* %"23", align 4
  %"29" = icmp sgt i32 %"27", %"28"
  br i1 %"29", label %main_bb10, label %main_bb11

main_bb10:                                        ; preds = %main_bb9
  %"30" = load i32* %"22", align 4
  %"31" = load i32* %"23", align 4
  %"32" = sub nsw i32 %"30", %"31"
  store i32 %"32", i32* %"22", align 4
  br label %main_bb8

main_bb11:                                        ; preds = %main_bb9
  %"33" = load i32* %"23", align 4
  %"34" = load i32* %"22", align 4
  %"35" = sub nsw i32 %"33", %"34"
  store i32 %"35", i32* %"23", align 4
  br label %main_bb8

main_gcd.exit:                                    ; preds = %main_bb8
  call void @llvm.lifetime.end(i64 4, i8* %"16")
  call void @llvm.lifetime.end(i64 4, i8* %"17")
  br label %main_bb12

main_bb12:                                        ; preds = %main_gcd.exit, %main_bb6
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32 @__kittel_nondef.0()

declare i32* @__kittel_nondef.1()

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

