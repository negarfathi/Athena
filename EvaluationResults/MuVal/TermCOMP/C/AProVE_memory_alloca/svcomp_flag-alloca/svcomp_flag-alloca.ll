; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_flag-alloca/svcomp_flag-alloca.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @f(i32 %x, i32 %y) #0 {
f_bb0:
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
  store i32 1, i32* %"5", align 4
  store i32 0, i32* %"7", align 4
  %"8" = load i32* %"3", align 4
  br label %f_bb1

f_bb1:                                            ; preds = %f_bb2, %f_bb0
  %"9" = load i32* %"5", align 4
  %"10" = icmp ne i32 %"9", 0
  br i1 %"10", label %f_bb2, label %f_bb3

f_bb2:                                            ; preds = %f_bb1
  %"11" = load i32* %"1", align 4
  %"12" = add nsw i32 %"11", 1
  store i32 %"12", i32* %"1", align 4
  %"13" = icmp slt i32 %"11", %"8"
  %"14" = zext i1 %"13" to i32
  store i32 %"14", i32* %"5", align 4
  %"15" = load i32* %"7", align 4
  %"16" = add nsw i32 %"15", 1
  store i32 %"16", i32* %"7", align 4
  br label %f_bb1

f_bb3:                                            ; preds = %f_bb1
  %"17" = load i32* %"7", align 4
  ret i32 %"17"
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb4:
  %"18" = alloca i8, i64 4
  %"19" = alloca i8, i64 4
  %"20" = alloca i8, i64 4
  %"21" = alloca i8, i64 4
  %"22" = call i32 @__VERIFIER_nondet_int()
  %"23" = call i32 @__VERIFIER_nondet_int()
  call void @llvm.lifetime.start(i64 4, i8* %"18")
  call void @llvm.lifetime.start(i64 4, i8* %"19")
  call void @llvm.lifetime.start(i64 4, i8* %"20")
  call void @llvm.lifetime.start(i64 4, i8* %"21")
  %"24" = bitcast i8* %"18" to i32*
  %"25" = bitcast i8* %"19" to i32*
  %"26" = bitcast i8* %"20" to i32*
  %"27" = bitcast i8* %"21" to i32*
  store i32 %"22", i32* %"24", align 4
  store i32 %"23", i32* %"25", align 4
  store i32 1, i32* %"26", align 4
  store i32 0, i32* %"27", align 4
  %"28" = load i32* %"25", align 4
  br label %main_bb5

main_bb5:                                         ; preds = %main_bb6, %main_bb4
  %"29" = load i32* %"26", align 4
  %"30" = icmp ne i32 %"29", 0
  br i1 %"30", label %main_bb6, label %main_f.exit

main_bb6:                                         ; preds = %main_bb5
  %"31" = load i32* %"24", align 4
  %"32" = add nsw i32 %"31", 1
  store i32 %"32", i32* %"24", align 4
  %"33" = icmp slt i32 %"31", %"28"
  %"34" = zext i1 %"33" to i32
  store i32 %"34", i32* %"26", align 4
  %"35" = load i32* %"27", align 4
  %"36" = add nsw i32 %"35", 1
  store i32 %"36", i32* %"27", align 4
  br label %main_bb5

main_f.exit:                                      ; preds = %main_bb5
  %"37" = load i32* %"27", align 4
  call void @llvm.lifetime.end(i64 4, i8* %"18")
  call void @llvm.lifetime.end(i64 4, i8* %"19")
  call void @llvm.lifetime.end(i64 4, i8* %"20")
  call void @llvm.lifetime.end(i64 4, i8* %"21")
  ret i32 %"37"
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

