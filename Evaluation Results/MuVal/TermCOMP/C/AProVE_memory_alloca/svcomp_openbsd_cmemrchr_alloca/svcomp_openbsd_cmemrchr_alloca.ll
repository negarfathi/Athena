; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_openbsd_cmemrchr_alloca/svcomp_openbsd_cmemrchr_alloca.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i8* @cmemrchr(i8* %s, i32 %c, i32 %n) #0 {
cmemrchr_bb0:
  %"0" = icmp ne i32 %n, 0
  br i1 %"0", label %cmemrchr_bb1, label %cmemrchr_bb4

cmemrchr_bb1:                                     ; preds = %cmemrchr_bb0
  %"1" = sext i32 %n to i64
  %"2" = getelementptr inbounds i8* %s, i64 %"1"
  %"3" = trunc i32 %c to i8
  %"4" = zext i8 %"3" to i32
  br label %cmemrchr_bb2

cmemrchr_bb2:                                     ; preds = %cmemrchr_bb3, %cmemrchr_bb1
  %cp.0 = phi i8* [ %"2", %cmemrchr_bb1 ], [ %"5", %cmemrchr_bb3 ]
  %.01 = phi i32 [ %n, %cmemrchr_bb1 ], [ %"9", %cmemrchr_bb3 ]
  %"5" = getelementptr inbounds i8* %cp.0, i32 -1
  %"6" = load i8* %"5", align 1
  %"7" = zext i8 %"6" to i32
  %"8" = icmp eq i32 %"7", %"4"
  br i1 %"8", label %cmemrchr_bb4, label %cmemrchr_bb3

cmemrchr_bb3:                                     ; preds = %cmemrchr_bb2
  %"9" = add nsw i32 %.01, -1
  %"10" = icmp ne i32 %"9", 0
  br i1 %"10", label %cmemrchr_bb2, label %cmemrchr_bb4

cmemrchr_bb4:                                     ; preds = %cmemrchr_bb0, %cmemrchr_bb3, %cmemrchr_bb2
  %.0 = phi i8* [ %"5", %cmemrchr_bb2 ], [ null, %cmemrchr_bb3 ], [ null, %cmemrchr_bb0 ]
  ret i8* %.0
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb5:
  %"11" = call i32 @__VERIFIER_nondet_int()
  %"12" = call i32 @__VERIFIER_nondet_int()
  %"13" = call i32 @__VERIFIER_nondet_int()
  %"14" = icmp slt i32 %"12", 1
  %n.0 = select i1 %"14", i32 1, i32 %"12"
  %"15" = sext i32 %n.0 to i64
  %"16" = mul i64 %"15", 1
  %"17" = alloca i8, i64 %"16"
  %"18" = icmp ne i32 %n.0, 0
  br i1 %"18", label %main_bb6, label %main_cmemrchr.exit

main_bb6:                                         ; preds = %main_bb5
  %"19" = sext i32 %n.0 to i64
  %"20" = getelementptr inbounds i8* %"17", i64 %"19"
  %"21" = trunc i32 %"13" to i8
  %"22" = zext i8 %"21" to i32
  br label %main_bb7

main_bb7:                                         ; preds = %main_bb8, %main_bb6
  %cp.0.i = phi i8* [ %"20", %main_bb6 ], [ %"23", %main_bb8 ]
  %.01.i = phi i32 [ %n.0, %main_bb6 ], [ %"27", %main_bb8 ]
  %"23" = getelementptr inbounds i8* %cp.0.i, i32 -1
  %"24" = load i8* %"23", align 1
  %"25" = zext i8 %"24" to i32
  %"26" = icmp eq i32 %"25", %"22"
  br i1 %"26", label %main_cmemrchr.exit, label %main_bb8

main_bb8:                                         ; preds = %main_bb7
  %"27" = add nsw i32 %.01.i, -1
  %"28" = icmp ne i32 %"27", 0
  br i1 %"28", label %main_bb7, label %main_cmemrchr.exit

main_cmemrchr.exit:                               ; preds = %main_bb5, %main_bb7, %main_bb8
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int() #1

declare i8* @__kittel_nondef.0()

declare i32 @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

