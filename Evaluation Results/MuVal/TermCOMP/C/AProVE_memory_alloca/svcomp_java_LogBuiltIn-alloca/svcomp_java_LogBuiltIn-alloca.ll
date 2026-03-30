; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_java_LogBuiltIn-alloca/svcomp_java_LogBuiltIn-alloca.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @mlog(i32 %x) #0 {
mlog_bb0:
  %"0" = alloca i8, i64 4
  %"1" = bitcast i8* %"0" to i32*
  %"2" = alloca i8, i64 4
  %"3" = bitcast i8* %"2" to i32*
  store i32 %x, i32* %"1", align 4
  store i32 0, i32* %"3", align 4
  br label %mlog_bb1

mlog_bb1:                                         ; preds = %mlog_bb2, %mlog_bb0
  %"4" = load i32* %"1", align 4
  %"5" = icmp sgt i32 %"4", 1
  br i1 %"5", label %mlog_bb2, label %mlog_bb3

mlog_bb2:                                         ; preds = %mlog_bb1
  %"6" = load i32* %"1", align 4
  %"7" = sdiv i32 %"6", 2
  store i32 %"7", i32* %"1", align 4
  %"8" = load i32* %"3", align 4
  %"9" = add nsw i32 %"8", 1
  store i32 %"9", i32* %"3", align 4
  br label %mlog_bb1

mlog_bb3:                                         ; preds = %mlog_bb1
  %"10" = load i32* %"3", align 4
  ret i32 %"10"
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb4:
  %"11" = alloca i8, i64 4
  %"12" = alloca i8, i64 4
  %"13" = call i32 @__VERIFIER_nondet_int()
  call void @llvm.lifetime.start(i64 4, i8* %"11")
  call void @llvm.lifetime.start(i64 4, i8* %"12")
  %"14" = bitcast i8* %"11" to i32*
  %"15" = bitcast i8* %"12" to i32*
  store i32 %"13", i32* %"14", align 4
  store i32 0, i32* %"15", align 4
  br label %main_bb5

main_bb5:                                         ; preds = %main_bb6, %main_bb4
  %"16" = load i32* %"14", align 4
  %"17" = icmp sgt i32 %"16", 1
  br i1 %"17", label %main_bb6, label %main_mlog.exit

main_bb6:                                         ; preds = %main_bb5
  %"18" = load i32* %"14", align 4
  %"19" = sdiv i32 %"18", 2
  store i32 %"19", i32* %"14", align 4
  %"20" = load i32* %"15", align 4
  %"21" = add nsw i32 %"20", 1
  store i32 %"21", i32* %"15", align 4
  br label %main_bb5

main_mlog.exit:                                   ; preds = %main_bb5
  %"22" = load i32* %"15", align 4
  call void @llvm.lifetime.end(i64 4, i8* %"11")
  call void @llvm.lifetime.end(i64 4, i8* %"12")
  ret i32 %"22"
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

