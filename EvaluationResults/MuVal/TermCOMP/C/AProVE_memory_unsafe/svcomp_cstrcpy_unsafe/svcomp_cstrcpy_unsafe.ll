; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_unsafe/svcomp_cstrcpy_unsafe/svcomp_cstrcpy_unsafe.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i8* @cstrcpy(i8* %s1, i8* %s2) #0 {
cstrcpy_bb0:
  br label %cstrcpy_bb1

cstrcpy_bb1:                                      ; preds = %cstrcpy_bb1, %cstrcpy_bb0
  %dst.0 = phi i8* [ %s1, %cstrcpy_bb0 ], [ %"2", %cstrcpy_bb1 ]
  %src.0 = phi i8* [ %s2, %cstrcpy_bb0 ], [ %"0", %cstrcpy_bb1 ]
  %"0" = getelementptr inbounds i8* %src.0, i32 1
  %"1" = load i8* %src.0, align 1
  %"2" = getelementptr inbounds i8* %dst.0, i32 1
  store i8 %"1", i8* %dst.0, align 1
  %"3" = sext i8 %"1" to i32
  %"4" = icmp ne i32 %"3", 0
  br i1 %"4", label %cstrcpy_bb1, label %cstrcpy_bb2

cstrcpy_bb2:                                      ; preds = %cstrcpy_bb1
  ret i8* %s1
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb3:
  %"5" = call i8* @__kittel_nondef.0()
  %"6" = call i8* @__kittel_nondef.0()
  br label %main_bb4

main_bb4:                                         ; preds = %main_bb4, %main_bb3
  %dst.0.i = phi i8* [ %"6", %main_bb3 ], [ %"9", %main_bb4 ]
  %src.0.i = phi i8* [ %"5", %main_bb3 ], [ %"7", %main_bb4 ]
  %"7" = getelementptr inbounds i8* %src.0.i, i32 1
  %"8" = load i8* %src.0.i, align 1
  %"9" = getelementptr inbounds i8* %dst.0.i, i32 1
  store i8 %"8", i8* %dst.0.i, align 1
  %"10" = sext i8 %"8" to i32
  %"11" = icmp ne i32 %"10", 0
  br i1 %"11", label %main_bb4, label %main_cstrcpy.exit

main_cstrcpy.exit:                                ; preds = %main_bb4
  ret i32 0
}

declare i8* @__kittel_nondef.0()

declare i32 @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

