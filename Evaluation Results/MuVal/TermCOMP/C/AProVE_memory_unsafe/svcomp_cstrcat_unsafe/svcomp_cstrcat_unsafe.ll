; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_unsafe/svcomp_cstrcat_unsafe/svcomp_cstrcat_unsafe.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i8* @cstrcat(i8* %s1, i8* %s2) #0 {
cstrcat_bb0:
  br label %cstrcat_bb1

cstrcat_bb1:                                      ; preds = %cstrcat_bb2, %cstrcat_bb0
  %s.0 = phi i8* [ %s1, %cstrcat_bb0 ], [ %"3", %cstrcat_bb2 ]
  %"0" = load i8* %s.0, align 1
  %"1" = sext i8 %"0" to i32
  %"2" = icmp ne i32 %"1", 0
  br i1 %"2", label %cstrcat_bb2, label %cstrcat_bb3

cstrcat_bb2:                                      ; preds = %cstrcat_bb1
  %"3" = getelementptr inbounds i8* %s.0, i32 1
  br label %cstrcat_bb1

cstrcat_bb3:                                      ; preds = %cstrcat_bb3, %cstrcat_bb1
  %s.1 = phi i8* [ %s.0, %cstrcat_bb1 ], [ %"6", %cstrcat_bb3 ]
  %.0 = phi i8* [ %s2, %cstrcat_bb1 ], [ %"4", %cstrcat_bb3 ]
  %"4" = getelementptr inbounds i8* %.0, i32 1
  %"5" = load i8* %.0, align 1
  %"6" = getelementptr inbounds i8* %s.1, i32 1
  store i8 %"5", i8* %s.1, align 1
  %"7" = sext i8 %"5" to i32
  %"8" = icmp ne i32 %"7", 0
  br i1 %"8", label %cstrcat_bb3, label %cstrcat_bb4

cstrcat_bb4:                                      ; preds = %cstrcat_bb3
  ret i8* %s1
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb5:
  %"9" = call i8* @__kittel_nondef.0()
  %"10" = call i8* @__kittel_nondef.0()
  br label %main_bb6

main_bb6:                                         ; preds = %main_bb7, %main_bb5
  %s.0.i = phi i8* [ %"9", %main_bb5 ], [ %"14", %main_bb7 ]
  %"11" = load i8* %s.0.i, align 1
  %"12" = sext i8 %"11" to i32
  %"13" = icmp ne i32 %"12", 0
  br i1 %"13", label %main_bb7, label %main_bb8

main_bb7:                                         ; preds = %main_bb6
  %"14" = getelementptr inbounds i8* %s.0.i, i32 1
  br label %main_bb6

main_bb8:                                         ; preds = %main_bb8, %main_bb6
  %s.1.i = phi i8* [ %s.0.i, %main_bb6 ], [ %"17", %main_bb8 ]
  %.0.i = phi i8* [ %"10", %main_bb6 ], [ %"15", %main_bb8 ]
  %"15" = getelementptr inbounds i8* %.0.i, i32 1
  %"16" = load i8* %.0.i, align 1
  %"17" = getelementptr inbounds i8* %s.1.i, i32 1
  store i8 %"16", i8* %s.1.i, align 1
  %"18" = sext i8 %"16" to i32
  %"19" = icmp ne i32 %"18", 0
  br i1 %"19", label %main_bb8, label %main_cstrcat.exit

main_cstrcat.exit:                                ; preds = %main_bb8
  ret i32 0
}

declare i8* @__kittel_nondef.0()

declare i32 @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

