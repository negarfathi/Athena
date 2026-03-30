; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_openbsd_cmemchr_alloca/svcomp_openbsd_cmemchr_alloca.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i8* @cmemchr(i8* %s, i32 %c, i32 %n) #0 {
cmemchr_bb0:
  %"0" = icmp ne i32 %n, 0
  br i1 %"0", label %cmemchr_bb1, label %cmemchr_bb5

cmemchr_bb1:                                      ; preds = %cmemchr_bb0
  %"1" = trunc i32 %c to i8
  %"2" = zext i8 %"1" to i32
  br label %cmemchr_bb2

cmemchr_bb2:                                      ; preds = %cmemchr_bb4, %cmemchr_bb1
  %p.0 = phi i8* [ %s, %cmemchr_bb1 ], [ %"3", %cmemchr_bb4 ]
  %.01 = phi i32 [ %n, %cmemchr_bb1 ], [ %"8", %cmemchr_bb4 ]
  %"3" = getelementptr inbounds i8* %p.0, i32 1
  %"4" = load i8* %p.0, align 1
  %"5" = zext i8 %"4" to i32
  %"6" = icmp eq i32 %"5", %"2"
  br i1 %"6", label %cmemchr_bb3, label %cmemchr_bb4

cmemchr_bb3:                                      ; preds = %cmemchr_bb2
  %"7" = getelementptr inbounds i8* %"3", i64 -1
  br label %cmemchr_bb5

cmemchr_bb4:                                      ; preds = %cmemchr_bb2
  %"8" = add nsw i32 %.01, -1
  %"9" = icmp ne i32 %"8", 0
  br i1 %"9", label %cmemchr_bb2, label %cmemchr_bb5

cmemchr_bb5:                                      ; preds = %cmemchr_bb0, %cmemchr_bb4, %cmemchr_bb3
  %.0 = phi i8* [ %"7", %cmemchr_bb3 ], [ null, %cmemchr_bb4 ], [ null, %cmemchr_bb0 ]
  ret i8* %.0
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb6:
  %"10" = call i32 @__VERIFIER_nondet_int()
  %"11" = call i32 @__VERIFIER_nondet_int()
  %"12" = call i32 @__VERIFIER_nondet_int()
  %"13" = icmp slt i32 %"11", 1
  %n.0 = select i1 %"13", i32 1, i32 %"11"
  %"14" = sext i32 %n.0 to i64
  %"15" = mul i64 %"14", 1
  %"16" = alloca i8, i64 %"15"
  %"17" = icmp ne i32 %n.0, 0
  br i1 %"17", label %main_bb7, label %main_cmemchr.exit

main_bb7:                                         ; preds = %main_bb6
  %"18" = trunc i32 %"12" to i8
  %"19" = zext i8 %"18" to i32
  br label %main_bb8

main_bb8:                                         ; preds = %main_bb9, %main_bb7
  %p.0.i = phi i8* [ %"16", %main_bb7 ], [ %"20", %main_bb9 ]
  %.01.i = phi i32 [ %n.0, %main_bb7 ], [ %"24", %main_bb9 ]
  %"20" = getelementptr inbounds i8* %p.0.i, i32 1
  %"21" = load i8* %p.0.i, align 1
  %"22" = zext i8 %"21" to i32
  %"23" = icmp eq i32 %"22", %"19"
  br i1 %"23", label %main_cmemchr.exit, label %main_bb9

main_bb9:                                         ; preds = %main_bb8
  %"24" = add nsw i32 %.01.i, -1
  %"25" = icmp ne i32 %"24", 0
  br i1 %"25", label %main_bb8, label %main_cmemchr.exit

main_cmemchr.exit:                                ; preds = %main_bb8, %main_bb6, %main_bb9
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int() #1

declare i8* @__kittel_nondef.0()

declare i32 @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

