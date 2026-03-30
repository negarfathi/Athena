; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_java_AG313-alloca/svcomp_java_AG313-alloca.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @quot(i32 %x, i32 %y) #0 {
quot_bb0:
  %"0" = alloca i8, i64 4
  %"1" = bitcast i8* %"0" to i32*
  %"2" = alloca i8, i64 4
  %"3" = bitcast i8* %"2" to i32*
  %"4" = alloca i8, i64 4
  %"5" = bitcast i8* %"4" to i32*
  store i32 %x, i32* %"1", align 4
  store i32 %y, i32* %"3", align 4
  store i32 0, i32* %"5", align 4
  %"6" = load i32* %"1", align 4
  %"7" = icmp eq i32 %"6", 0
  br i1 %"7", label %quot_bb4, label %quot_bb1

quot_bb1:                                         ; preds = %quot_bb0
  %"8" = load i32* %"3", align 4
  %"9" = load i32* %"3", align 4
  br label %quot_bb2

quot_bb2:                                         ; preds = %quot_bb3, %quot_bb1
  %"10" = load i32* %"1", align 4
  %"11" = icmp sgt i32 %"10", 0
  %"12" = icmp sgt i32 %"8", 0
  %. = select i1 %"11", i1 %"12", i1 false
  %"13" = load i32* %"5", align 4
  br i1 %., label %quot_bb3, label %quot_bb4

quot_bb3:                                         ; preds = %quot_bb2
  %"14" = add nsw i32 %"13", 1
  store i32 %"14", i32* %"5", align 4
  %"15" = load i32* %"1", align 4
  %"16" = sub nsw i32 %"15", 1
  %"17" = sub nsw i32 %"9", 1
  %"18" = sub nsw i32 %"16", %"17"
  store i32 %"18", i32* %"1", align 4
  br label %quot_bb2

quot_bb4:                                         ; preds = %quot_bb2, %quot_bb0
  %.0 = phi i32 [ 0, %quot_bb0 ], [ %"13", %quot_bb2 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb5:
  %"19" = alloca i8, i64 4
  %"20" = alloca i8, i64 4
  %"21" = alloca i8, i64 4
  %"22" = call i32 @__VERIFIER_nondet_int()
  %"23" = call i32 @__VERIFIER_nondet_int()
  call void @llvm.lifetime.start(i64 4, i8* %"19")
  call void @llvm.lifetime.start(i64 4, i8* %"20")
  call void @llvm.lifetime.start(i64 4, i8* %"21")
  %"24" = bitcast i8* %"19" to i32*
  %"25" = bitcast i8* %"20" to i32*
  %"26" = bitcast i8* %"21" to i32*
  store i32 %"22", i32* %"24", align 4
  store i32 %"23", i32* %"25", align 4
  store i32 0, i32* %"26", align 4
  %"27" = load i32* %"24", align 4
  %"28" = icmp eq i32 %"27", 0
  br i1 %"28", label %main_quot.exit, label %main_bb6

main_bb6:                                         ; preds = %main_bb5
  %"29" = load i32* %"25", align 4
  %"30" = load i32* %"25", align 4
  br label %main_bb7

main_bb7:                                         ; preds = %main_bb8, %main_bb6
  %"31" = load i32* %"24", align 4
  %"32" = icmp sgt i32 %"31", 0
  %"33" = icmp sgt i32 %"29", 0
  %..i = select i1 %"32", i1 %"33", i1 false
  %"34" = load i32* %"26", align 4
  br i1 %..i, label %main_bb8, label %main_quot.exit

main_bb8:                                         ; preds = %main_bb7
  %"35" = add nsw i32 %"34", 1
  store i32 %"35", i32* %"26", align 4
  %"36" = load i32* %"24", align 4
  %"37" = sub nsw i32 %"36", 1
  %"38" = sub nsw i32 %"30", 1
  %"39" = sub nsw i32 %"37", %"38"
  store i32 %"39", i32* %"24", align 4
  br label %main_bb7

main_quot.exit:                                   ; preds = %main_bb5, %main_bb7
  %.0.i = phi i32 [ 0, %main_bb5 ], [ %"34", %main_bb7 ]
  call void @llvm.lifetime.end(i64 4, i8* %"19")
  call void @llvm.lifetime.end(i64 4, i8* %"20")
  call void @llvm.lifetime.end(i64 4, i8* %"21")
  ret i32 %.0.i
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

