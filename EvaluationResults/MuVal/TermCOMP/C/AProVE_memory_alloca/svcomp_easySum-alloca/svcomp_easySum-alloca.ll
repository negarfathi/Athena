; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_easySum-alloca/svcomp_easySum-alloca.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @iterate(i32 %bound) #0 {
iterate_bb0:
  %"0" = alloca i8, i64 4
  %"1" = bitcast i8* %"0" to i32*
  %"2" = alloca i8, i64 4
  %"3" = bitcast i8* %"2" to i32*
  %"4" = alloca i8, i64 4
  %"5" = bitcast i8* %"4" to i32*
  store i32 %bound, i32* %"1", align 4
  store i32 0, i32* %"5", align 4
  store i32 0, i32* %"3", align 4
  %"6" = load i32* %"1", align 4
  br label %iterate_bb1

iterate_bb1:                                      ; preds = %iterate_bb2, %iterate_bb0
  %"7" = load i32* %"3", align 4
  %"8" = icmp slt i32 %"7", %"6"
  br i1 %"8", label %iterate_bb2, label %iterate_bb3

iterate_bb2:                                      ; preds = %iterate_bb1
  %"9" = load i32* %"3", align 4
  %"10" = load i32* %"5", align 4
  %"11" = add nsw i32 %"10", %"9"
  store i32 %"11", i32* %"5", align 4
  %"12" = load i32* %"3", align 4
  %"13" = add nsw i32 %"12", 1
  store i32 %"13", i32* %"3", align 4
  br label %iterate_bb1

iterate_bb3:                                      ; preds = %iterate_bb1
  %"14" = load i32* %"5", align 4
  ret i32 %"14"
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb4:
  %"15" = alloca i8, i64 4
  %"16" = alloca i8, i64 4
  %"17" = alloca i8, i64 4
  %"18" = call i32 @__VERIFIER_nondet_int()
  call void @llvm.lifetime.start(i64 4, i8* %"15")
  call void @llvm.lifetime.start(i64 4, i8* %"16")
  call void @llvm.lifetime.start(i64 4, i8* %"17")
  %"19" = bitcast i8* %"15" to i32*
  %"20" = bitcast i8* %"16" to i32*
  %"21" = bitcast i8* %"17" to i32*
  store i32 %"18", i32* %"19", align 4
  store i32 0, i32* %"21", align 4
  store i32 0, i32* %"20", align 4
  %"22" = load i32* %"19", align 4
  br label %main_bb5

main_bb5:                                         ; preds = %main_bb6, %main_bb4
  %"23" = load i32* %"20", align 4
  %"24" = icmp slt i32 %"23", %"22"
  br i1 %"24", label %main_bb6, label %main_iterate.exit

main_bb6:                                         ; preds = %main_bb5
  %"25" = load i32* %"20", align 4
  %"26" = load i32* %"21", align 4
  %"27" = add nsw i32 %"26", %"25"
  store i32 %"27", i32* %"21", align 4
  %"28" = load i32* %"20", align 4
  %"29" = add nsw i32 %"28", 1
  store i32 %"29", i32* %"20", align 4
  br label %main_bb5

main_iterate.exit:                                ; preds = %main_bb5
  %"30" = load i32* %"21", align 4
  call void @llvm.lifetime.end(i64 4, i8* %"15")
  call void @llvm.lifetime.end(i64 4, i8* %"16")
  call void @llvm.lifetime.end(i64 4, i8* %"17")
  ret i32 %"30"
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

