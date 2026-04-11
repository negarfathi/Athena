; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_openbsd_cstrncpy_alloca/svcomp_openbsd_cstrncpy_alloca.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i8* @cstrncpy(i8* %dst, i8* %src, i64 %n) #0 {
cstrncpy_bb0:
  %"0" = icmp ne i64 %n, 0
  br i1 %"0", label %cstrncpy_bb1, label %cstrncpy_bb5

cstrncpy_bb1:                                     ; preds = %cstrncpy_bb0, %cstrncpy_bb4
  %s.0 = phi i8* [ %"1", %cstrncpy_bb4 ], [ %src, %cstrncpy_bb0 ]
  %d.0 = phi i8* [ %"3", %cstrncpy_bb4 ], [ %dst, %cstrncpy_bb0 ]
  %.0 = phi i64 [ %"9", %cstrncpy_bb4 ], [ %n, %cstrncpy_bb0 ]
  %"1" = getelementptr inbounds i8* %s.0, i32 1
  %"2" = load i8* %s.0, align 1
  %"3" = getelementptr inbounds i8* %d.0, i32 1
  store i8 %"2", i8* %d.0, align 1
  %"4" = sext i8 %"2" to i32
  %"5" = icmp eq i32 %"4", 0
  br i1 %"5", label %cstrncpy_bb2, label %cstrncpy_bb4

cstrncpy_bb2:                                     ; preds = %cstrncpy_bb1, %cstrncpy_bb3
  %d.1 = phi i8* [ %"8", %cstrncpy_bb3 ], [ %"3", %cstrncpy_bb1 ]
  %.1 = phi i64 [ %"6", %cstrncpy_bb3 ], [ %.0, %cstrncpy_bb1 ]
  %"6" = add i64 %.1, -1
  %"7" = icmp ne i64 %"6", 0
  br i1 %"7", label %cstrncpy_bb3, label %cstrncpy_bb5

cstrncpy_bb3:                                     ; preds = %cstrncpy_bb2
  %"8" = getelementptr inbounds i8* %d.1, i32 1
  store i8 0, i8* %d.1, align 1
  br label %cstrncpy_bb2

cstrncpy_bb4:                                     ; preds = %cstrncpy_bb1
  %"9" = add i64 %.0, -1
  %"10" = icmp ne i64 %"9", 0
  br i1 %"10", label %cstrncpy_bb1, label %cstrncpy_bb5

cstrncpy_bb5:                                     ; preds = %cstrncpy_bb4, %cstrncpy_bb2, %cstrncpy_bb0
  ret i8* %dst
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb6:
  %"11" = call i32 @__VERIFIER_nondet_int()
  %"12" = call i32 @__VERIFIER_nondet_int()
  %"13" = icmp slt i32 %"11", 1
  %. = select i1 %"13", i32 1, i32 %"11"
  %"14" = icmp slt i32 %"12", 1
  %n.0 = select i1 %"14", i32 1, i32 %"12"
  %"15" = sext i32 %n.0 to i64
  %"16" = mul i64 %"15", 1
  %"17" = alloca i8, i64 %"16"
  %"18" = sext i32 %. to i64
  %"19" = mul i64 %"18", 1
  %"20" = alloca i8, i64 %"19"
  %"21" = sub nsw i32 %., 1
  %"22" = sext i32 %"21" to i64
  %"23" = getelementptr inbounds i8* %"20", i64 %"22"
  store i8 0, i8* %"23", align 1
  %"24" = sext i32 %n.0 to i64
  %"25" = icmp ne i64 %"24", 0
  br i1 %"25", label %main_bb7, label %main_cstrncpy.exit

main_bb7:                                         ; preds = %main_bb10, %main_bb6
  %s.0.i = phi i8* [ %"26", %main_bb10 ], [ %"20", %main_bb6 ]
  %d.0.i = phi i8* [ %"28", %main_bb10 ], [ %"17", %main_bb6 ]
  %.0.i = phi i64 [ %"34", %main_bb10 ], [ %"24", %main_bb6 ]
  %"26" = getelementptr inbounds i8* %s.0.i, i32 1
  %"27" = load i8* %s.0.i, align 1
  %"28" = getelementptr inbounds i8* %d.0.i, i32 1
  store i8 %"27", i8* %d.0.i, align 1
  %"29" = sext i8 %"27" to i32
  %"30" = icmp eq i32 %"29", 0
  br i1 %"30", label %main_bb8, label %main_bb10

main_bb8:                                         ; preds = %main_bb9, %main_bb7
  %d.1.i = phi i8* [ %"33", %main_bb9 ], [ %"28", %main_bb7 ]
  %.1.i = phi i64 [ %"31", %main_bb9 ], [ %.0.i, %main_bb7 ]
  %"31" = add i64 %.1.i, -1
  %"32" = icmp ne i64 %"31", 0
  br i1 %"32", label %main_bb9, label %main_cstrncpy.exit

main_bb9:                                         ; preds = %main_bb8
  %"33" = getelementptr inbounds i8* %d.1.i, i32 1
  store i8 0, i8* %d.1.i, align 1
  br label %main_bb8

main_bb10:                                        ; preds = %main_bb7
  %"34" = add i64 %.0.i, -1
  %"35" = icmp ne i64 %"34", 0
  br i1 %"35", label %main_bb7, label %main_cstrncpy.exit

main_cstrncpy.exit:                               ; preds = %main_bb6, %main_bb8, %main_bb10
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int() #1

declare i8* @__kittel_nondef.0()

declare i64 @__kittel_nondef.1()

declare i32 @__kittel_nondef.2()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

