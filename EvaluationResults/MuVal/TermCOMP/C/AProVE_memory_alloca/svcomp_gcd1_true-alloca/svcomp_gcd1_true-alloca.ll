; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_gcd1_true-alloca/svcomp_gcd1_true-alloca.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @gcd(i32 %x, i32 %y) #0 {
gcd_bb0:
  %"0" = alloca i8, i64 4
  %"1" = bitcast i8* %"0" to i32*
  %"2" = alloca i8, i64 4
  %"3" = bitcast i8* %"2" to i32*
  %"4" = alloca i8, i64 4
  %"5" = bitcast i8* %"4" to i32*
  store i32 %x, i32* %"1", align 4
  store i32 %y, i32* %"3", align 4
  %"6" = load i32* %"1", align 4
  %"7" = icmp slt i32 %"6", 0
  br i1 %"7", label %gcd_bb1, label %gcd_bb2

gcd_bb1:                                          ; preds = %gcd_bb0
  %"8" = load i32* %"1", align 4
  %"9" = sub nsw i32 0, %"8"
  store i32 %"9", i32* %"1", align 4
  br label %gcd_bb2

gcd_bb2:                                          ; preds = %gcd_bb1, %gcd_bb0
  %"10" = load i32* %"3", align 4
  %"11" = icmp slt i32 %"10", 0
  br i1 %"11", label %gcd_bb3, label %gcd_bb4

gcd_bb3:                                          ; preds = %gcd_bb2
  %"12" = load i32* %"3", align 4
  %"13" = sub nsw i32 0, %"12"
  store i32 %"13", i32* %"3", align 4
  br label %gcd_bb4

gcd_bb4:                                          ; preds = %gcd_bb2, %gcd_bb3, %gcd_bb8
  %"14" = load i32* %"3", align 4
  %"15" = icmp sgt i32 %"14", 0
  %"16" = load i32* %"1", align 4
  br i1 %"15", label %gcd_bb5, label %gcd_bb9

gcd_bb5:                                          ; preds = %gcd_bb4
  store i32 %"16", i32* %"5", align 4
  %"17" = load i32* %"3", align 4
  %"18" = load i32* %"3", align 4
  br label %gcd_bb6

gcd_bb6:                                          ; preds = %gcd_bb7, %gcd_bb5
  %"19" = load i32* %"5", align 4
  %"20" = icmp sge i32 %"19", %"17"
  br i1 %"20", label %gcd_bb7, label %gcd_bb8

gcd_bb7:                                          ; preds = %gcd_bb6
  %"21" = load i32* %"5", align 4
  %"22" = sub nsw i32 %"21", %"18"
  store i32 %"22", i32* %"5", align 4
  br label %gcd_bb6

gcd_bb8:                                          ; preds = %gcd_bb6
  %"23" = load i32* %"3", align 4
  store i32 %"23", i32* %"1", align 4
  %"24" = load i32* %"5", align 4
  store i32 %"24", i32* %"3", align 4
  br label %gcd_bb4

gcd_bb9:                                          ; preds = %gcd_bb4
  ret i32 %"16"
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb10:
  %"25" = alloca i8, i64 4
  %"26" = alloca i8, i64 4
  %"27" = alloca i8, i64 4
  %"28" = call i32 @__VERIFIER_nondet_int()
  %"29" = call i32 @__VERIFIER_nondet_int()
  call void @llvm.lifetime.start(i64 4, i8* %"25")
  call void @llvm.lifetime.start(i64 4, i8* %"26")
  call void @llvm.lifetime.start(i64 4, i8* %"27")
  %"30" = bitcast i8* %"25" to i32*
  %"31" = bitcast i8* %"26" to i32*
  %"32" = bitcast i8* %"27" to i32*
  store i32 %"28", i32* %"30", align 4
  store i32 %"29", i32* %"31", align 4
  %"33" = load i32* %"30", align 4
  %"34" = icmp slt i32 %"33", 0
  br i1 %"34", label %main_bb11, label %main_bb12

main_bb11:                                        ; preds = %main_bb10
  %"35" = load i32* %"30", align 4
  %"36" = sub nsw i32 0, %"35"
  store i32 %"36", i32* %"30", align 4
  br label %main_bb12

main_bb12:                                        ; preds = %main_bb11, %main_bb10
  %"37" = load i32* %"31", align 4
  %"38" = icmp slt i32 %"37", 0
  br i1 %"38", label %main_bb13, label %main_bb14

main_bb13:                                        ; preds = %main_bb12
  %"39" = load i32* %"31", align 4
  %"40" = sub nsw i32 0, %"39"
  store i32 %"40", i32* %"31", align 4
  br label %main_bb14

main_bb14:                                        ; preds = %main_bb18, %main_bb13, %main_bb12
  %"41" = load i32* %"31", align 4
  %"42" = icmp sgt i32 %"41", 0
  %"43" = load i32* %"30", align 4
  br i1 %"42", label %main_bb15, label %main_gcd.exit

main_bb15:                                        ; preds = %main_bb14
  store i32 %"43", i32* %"32", align 4
  %"44" = load i32* %"31", align 4
  %"45" = load i32* %"31", align 4
  br label %main_bb16

main_bb16:                                        ; preds = %main_bb17, %main_bb15
  %"46" = load i32* %"32", align 4
  %"47" = icmp sge i32 %"46", %"44"
  br i1 %"47", label %main_bb17, label %main_bb18

main_bb17:                                        ; preds = %main_bb16
  %"48" = load i32* %"32", align 4
  %"49" = sub nsw i32 %"48", %"45"
  store i32 %"49", i32* %"32", align 4
  br label %main_bb16

main_bb18:                                        ; preds = %main_bb16
  %"50" = load i32* %"31", align 4
  store i32 %"50", i32* %"30", align 4
  %"51" = load i32* %"32", align 4
  store i32 %"51", i32* %"31", align 4
  br label %main_bb14

main_gcd.exit:                                    ; preds = %main_bb14
  call void @llvm.lifetime.end(i64 4, i8* %"25")
  call void @llvm.lifetime.end(i64 4, i8* %"26")
  call void @llvm.lifetime.end(i64 4, i8* %"27")
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

