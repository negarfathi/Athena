; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_openbsd_cstpncpy_alloca/svcomp_openbsd_cstpncpy_alloca.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i8* @cstpncpy(i8* %dst, i8* %src, i64 %n) #0 {
cstpncpy_bb0:
  %"0" = icmp ne i64 %n, 0
  br i1 %"0", label %cstpncpy_bb1, label %cstpncpy_bb7

cstpncpy_bb1:                                     ; preds = %cstpncpy_bb0
  %"1" = getelementptr inbounds i8* %dst, i64 %n
  br label %cstpncpy_bb2

cstpncpy_bb2:                                     ; preds = %cstpncpy_bb6, %cstpncpy_bb1
  %s.0 = phi i8* [ %src, %cstpncpy_bb1 ], [ %"2", %cstpncpy_bb6 ]
  %d.0 = phi i8* [ %dst, %cstpncpy_bb1 ], [ %"4", %cstpncpy_bb6 ]
  %.01 = phi i64 [ %n, %cstpncpy_bb1 ], [ %"11", %cstpncpy_bb6 ]
  %"2" = getelementptr inbounds i8* %s.0, i32 1
  %"3" = load i8* %s.0, align 1
  %"4" = getelementptr inbounds i8* %d.0, i32 1
  store i8 %"3", i8* %d.0, align 1
  %"5" = sext i8 %"3" to i32
  %"6" = icmp eq i32 %"5", 0
  br i1 %"6", label %cstpncpy_bb3, label %cstpncpy_bb6

cstpncpy_bb3:                                     ; preds = %cstpncpy_bb2
  %"7" = getelementptr inbounds i8* %"4", i64 -1
  br label %cstpncpy_bb4

cstpncpy_bb4:                                     ; preds = %cstpncpy_bb5, %cstpncpy_bb3
  %d.1 = phi i8* [ %"4", %cstpncpy_bb3 ], [ %"10", %cstpncpy_bb5 ]
  %.12 = phi i64 [ %.01, %cstpncpy_bb3 ], [ %"8", %cstpncpy_bb5 ]
  %"8" = add i64 %.12, -1
  %"9" = icmp ne i64 %"8", 0
  br i1 %"9", label %cstpncpy_bb5, label %cstpncpy_bb7

cstpncpy_bb5:                                     ; preds = %cstpncpy_bb4
  %"10" = getelementptr inbounds i8* %d.1, i32 1
  store i8 0, i8* %d.1, align 1
  br label %cstpncpy_bb4

cstpncpy_bb6:                                     ; preds = %cstpncpy_bb2
  %"11" = add i64 %.01, -1
  %"12" = icmp ne i64 %"11", 0
  br i1 %"12", label %cstpncpy_bb2, label %cstpncpy_bb7

cstpncpy_bb7:                                     ; preds = %cstpncpy_bb6, %cstpncpy_bb4, %cstpncpy_bb0
  %.1 = phi i8* [ %dst, %cstpncpy_bb0 ], [ %"1", %cstpncpy_bb6 ], [ %"7", %cstpncpy_bb4 ]
  ret i8* %.1
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb8:
  %"13" = call i32 @__VERIFIER_nondet_int()
  %"14" = call i32 @__VERIFIER_nondet_int()
  %"15" = icmp slt i32 %"13", 1
  %. = select i1 %"15", i32 1, i32 %"13"
  %"16" = icmp slt i32 %"14", 1
  %n.0 = select i1 %"16", i32 1, i32 %"14"
  %"17" = sext i32 %n.0 to i64
  %"18" = mul i64 %"17", 1
  %"19" = alloca i8, i64 %"18"
  %"20" = sext i32 %. to i64
  %"21" = mul i64 %"20", 1
  %"22" = alloca i8, i64 %"21"
  %"23" = sub nsw i32 %., 1
  %"24" = sext i32 %"23" to i64
  %"25" = getelementptr inbounds i8* %"22", i64 %"24"
  store i8 0, i8* %"25", align 1
  %"26" = sext i32 %n.0 to i64
  %"27" = icmp ne i64 %"26", 0
  br i1 %"27", label %main_bb9, label %main_cstpncpy.exit

main_bb9:                                         ; preds = %main_bb8, %main_bb12
  %s.0.i = phi i8* [ %"28", %main_bb12 ], [ %"22", %main_bb8 ]
  %d.0.i = phi i8* [ %"30", %main_bb12 ], [ %"19", %main_bb8 ]
  %.01.i = phi i64 [ %"36", %main_bb12 ], [ %"26", %main_bb8 ]
  %"28" = getelementptr inbounds i8* %s.0.i, i32 1
  %"29" = load i8* %s.0.i, align 1
  %"30" = getelementptr inbounds i8* %d.0.i, i32 1
  store i8 %"29", i8* %d.0.i, align 1
  %"31" = sext i8 %"29" to i32
  %"32" = icmp eq i32 %"31", 0
  br i1 %"32", label %main_bb10, label %main_bb12

main_bb10:                                        ; preds = %main_bb9, %main_bb11
  %d.1.i = phi i8* [ %"35", %main_bb11 ], [ %"30", %main_bb9 ]
  %.12.i = phi i64 [ %"33", %main_bb11 ], [ %.01.i, %main_bb9 ]
  %"33" = add i64 %.12.i, -1
  %"34" = icmp ne i64 %"33", 0
  br i1 %"34", label %main_bb11, label %main_cstpncpy.exit

main_bb11:                                        ; preds = %main_bb10
  %"35" = getelementptr inbounds i8* %d.1.i, i32 1
  store i8 0, i8* %d.1.i, align 1
  br label %main_bb10

main_bb12:                                        ; preds = %main_bb9
  %"36" = add i64 %.01.i, -1
  %"37" = icmp ne i64 %"36", 0
  br i1 %"37", label %main_bb9, label %main_cstpncpy.exit

main_cstpncpy.exit:                               ; preds = %main_bb8, %main_bb10, %main_bb12
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

