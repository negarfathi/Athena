; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_Avery-2006FLOPS-Tabel1_true-alloca/svcomp_Avery-2006FLOPS-Tabel1_true-alloca.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @subxy(i32 %x, i32 %y) #0 {
subxy_bb0:
  %"0" = alloca i8, i64 4
  %"1" = bitcast i8* %"0" to i32*
  %"2" = alloca i8, i64 4
  %"3" = bitcast i8* %"2" to i32*
  %"4" = alloca i8, i64 4
  %"5" = bitcast i8* %"4" to i32*
  %"6" = alloca i8, i64 4
  %"7" = bitcast i8* %"6" to i32*
  store i32 %x, i32* %"1", align 4
  store i32 %y, i32* %"3", align 4
  store i32 0, i32* %"5", align 4
  %"8" = load i32* %"1", align 4
  store i32 %"8", i32* %"7", align 4
  %"9" = load i32* %"3", align 4
  %"10" = icmp sle i32 %"9", 0
  br i1 %"10", label %subxy_bb8, label %subxy_bb1

subxy_bb1:                                        ; preds = %subxy_bb0
  %"11" = load i32* %"1", align 4
  %"12" = icmp sle i32 %"11", 0
  br i1 %"12", label %subxy_bb8, label %subxy_bb2

subxy_bb2:                                        ; preds = %subxy_bb1, %subxy_bb3
  %"13" = load i32* %"7", align 4
  %"14" = icmp sgt i32 %"13", 0
  br i1 %"14", label %subxy_bb3, label %subxy_bb4

subxy_bb3:                                        ; preds = %subxy_bb2
  %"15" = load i32* %"7", align 4
  %"16" = add nsw i32 %"15", -1
  store i32 %"16", i32* %"7", align 4
  %"17" = load i32* %"5", align 4
  %"18" = add nsw i32 %"17", 1
  store i32 %"18", i32* %"5", align 4
  br label %subxy_bb2

subxy_bb4:                                        ; preds = %subxy_bb2
  %"19" = load i32* %"3", align 4
  br label %subxy_bb5

subxy_bb5:                                        ; preds = %subxy_bb6, %subxy_bb4
  %"20" = load i32* %"7", align 4
  %"21" = icmp slt i32 %"20", %"19"
  br i1 %"21", label %subxy_bb6, label %subxy_bb7

subxy_bb6:                                        ; preds = %subxy_bb5
  %"22" = load i32* %"7", align 4
  %"23" = add nsw i32 %"22", 1
  store i32 %"23", i32* %"7", align 4
  %"24" = load i32* %"5", align 4
  %"25" = add nsw i32 %"24", -1
  store i32 %"25", i32* %"5", align 4
  br label %subxy_bb5

subxy_bb7:                                        ; preds = %subxy_bb5
  %"26" = load i32* %"5", align 4
  br label %subxy_bb8

subxy_bb8:                                        ; preds = %subxy_bb0, %subxy_bb1, %subxy_bb7
  %.0 = phi i32 [ %"26", %subxy_bb7 ], [ 0, %subxy_bb1 ], [ 0, %subxy_bb0 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb9:
  %"27" = alloca i8, i64 4
  %"28" = alloca i8, i64 4
  %"29" = alloca i8, i64 4
  %"30" = alloca i8, i64 4
  %"31" = call i32 @__VERIFIER_nondet_int()
  %"32" = call i32 @__VERIFIER_nondet_int()
  call void @llvm.lifetime.start(i64 4, i8* %"27")
  call void @llvm.lifetime.start(i64 4, i8* %"28")
  call void @llvm.lifetime.start(i64 4, i8* %"29")
  call void @llvm.lifetime.start(i64 4, i8* %"30")
  %"33" = bitcast i8* %"27" to i32*
  %"34" = bitcast i8* %"28" to i32*
  %"35" = bitcast i8* %"29" to i32*
  %"36" = bitcast i8* %"30" to i32*
  store i32 %"31", i32* %"33", align 4
  store i32 %"32", i32* %"34", align 4
  store i32 0, i32* %"35", align 4
  %"37" = load i32* %"33", align 4
  store i32 %"37", i32* %"36", align 4
  %"38" = load i32* %"34", align 4
  %"39" = icmp sle i32 %"38", 0
  br i1 %"39", label %main_subxy.exit, label %main_bb10

main_bb10:                                        ; preds = %main_bb9
  %"40" = load i32* %"33", align 4
  %"41" = icmp sle i32 %"40", 0
  br i1 %"41", label %main_subxy.exit, label %main_bb11

main_bb11:                                        ; preds = %main_bb12, %main_bb10
  %"42" = load i32* %"36", align 4
  %"43" = icmp sgt i32 %"42", 0
  br i1 %"43", label %main_bb12, label %main_bb13

main_bb12:                                        ; preds = %main_bb11
  %"44" = load i32* %"36", align 4
  %"45" = add nsw i32 %"44", -1
  store i32 %"45", i32* %"36", align 4
  %"46" = load i32* %"35", align 4
  %"47" = add nsw i32 %"46", 1
  store i32 %"47", i32* %"35", align 4
  br label %main_bb11

main_bb13:                                        ; preds = %main_bb11
  %"48" = load i32* %"34", align 4
  br label %main_bb14

main_bb14:                                        ; preds = %main_bb15, %main_bb13
  %"49" = load i32* %"36", align 4
  %"50" = icmp slt i32 %"49", %"48"
  br i1 %"50", label %main_bb15, label %main_subxy.exit

main_bb15:                                        ; preds = %main_bb14
  %"51" = load i32* %"36", align 4
  %"52" = add nsw i32 %"51", 1
  store i32 %"52", i32* %"36", align 4
  %"53" = load i32* %"35", align 4
  %"54" = add nsw i32 %"53", -1
  store i32 %"54", i32* %"35", align 4
  br label %main_bb14

main_subxy.exit:                                  ; preds = %main_bb14, %main_bb9, %main_bb10
  call void @llvm.lifetime.end(i64 4, i8* %"27")
  call void @llvm.lifetime.end(i64 4, i8* %"28")
  call void @llvm.lifetime.end(i64 4, i8* %"29")
  call void @llvm.lifetime.end(i64 4, i8* %"30")
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

