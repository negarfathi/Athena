; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_aviad_true-alloca/svcomp_aviad_true-alloca.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @f(i32 %a) #0 {
f_bb0:
  %"0" = alloca i8, i64 4
  %"1" = bitcast i8* %"0" to i32*
  %"2" = alloca i8, i64 4
  %"3" = bitcast i8* %"2" to i32*
  %"4" = alloca i8, i64 4
  %"5" = bitcast i8* %"4" to i32*
  store i32 %a, i32* %"1", align 4
  store i32 0, i32* %"3", align 4
  store i32 0, i32* %"5", align 4
  br label %f_bb1

f_bb1:                                            ; preds = %f_bb5, %f_bb0
  %"6" = load i32* %"1", align 4
  %"7" = icmp sgt i32 %"6", 1
  br i1 %"7", label %f_bb2, label %f_bb6

f_bb2:                                            ; preds = %f_bb1
  %"8" = load i32* %"1", align 4
  %"9" = srem i32 %"8", 2
  store i32 %"9", i32* %"3", align 4
  %"10" = load i32* %"3", align 4
  %"11" = icmp eq i32 %"10", 0
  %"12" = load i32* %"1", align 4
  br i1 %"11", label %f_bb3, label %f_bb4

f_bb3:                                            ; preds = %f_bb2
  %"13" = sdiv i32 %"12", 2
  store i32 %"13", i32* %"1", align 4
  br label %f_bb5

f_bb4:                                            ; preds = %f_bb2
  %"14" = sub nsw i32 %"12", 1
  store i32 %"14", i32* %"1", align 4
  br label %f_bb5

f_bb5:                                            ; preds = %f_bb4, %f_bb3
  %"15" = load i32* %"5", align 4
  %"16" = add nsw i32 %"15", 1
  store i32 %"16", i32* %"5", align 4
  br label %f_bb1

f_bb6:                                            ; preds = %f_bb1
  %"17" = load i32* %"5", align 4
  ret i32 %"17"
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb7:
  %"18" = alloca i8, i64 4
  %"19" = alloca i8, i64 4
  %"20" = alloca i8, i64 4
  %"21" = call i32 @__VERIFIER_nondet_int()
  call void @llvm.lifetime.start(i64 4, i8* %"18")
  call void @llvm.lifetime.start(i64 4, i8* %"19")
  call void @llvm.lifetime.start(i64 4, i8* %"20")
  %"22" = bitcast i8* %"18" to i32*
  %"23" = bitcast i8* %"19" to i32*
  %"24" = bitcast i8* %"20" to i32*
  store i32 %"21", i32* %"22", align 4
  store i32 0, i32* %"23", align 4
  store i32 0, i32* %"24", align 4
  br label %main_bb8

main_bb8:                                         ; preds = %main_bb12, %main_bb7
  %"25" = load i32* %"22", align 4
  %"26" = icmp sgt i32 %"25", 1
  br i1 %"26", label %main_bb9, label %main_f.exit

main_bb9:                                         ; preds = %main_bb8
  %"27" = load i32* %"22", align 4
  %"28" = srem i32 %"27", 2
  store i32 %"28", i32* %"23", align 4
  %"29" = load i32* %"23", align 4
  %"30" = icmp eq i32 %"29", 0
  %"31" = load i32* %"22", align 4
  br i1 %"30", label %main_bb10, label %main_bb11

main_bb10:                                        ; preds = %main_bb9
  %"32" = sdiv i32 %"31", 2
  store i32 %"32", i32* %"22", align 4
  br label %main_bb12

main_bb11:                                        ; preds = %main_bb9
  %"33" = sub nsw i32 %"31", 1
  store i32 %"33", i32* %"22", align 4
  br label %main_bb12

main_bb12:                                        ; preds = %main_bb11, %main_bb10
  %"34" = load i32* %"24", align 4
  %"35" = add nsw i32 %"34", 1
  store i32 %"35", i32* %"24", align 4
  br label %main_bb8

main_f.exit:                                      ; preds = %main_bb8
  %"36" = load i32* %"24", align 4
  call void @llvm.lifetime.end(i64 4, i8* %"18")
  call void @llvm.lifetime.end(i64 4, i8* %"19")
  call void @llvm.lifetime.end(i64 4, i8* %"20")
  ret i32 %"36"
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

