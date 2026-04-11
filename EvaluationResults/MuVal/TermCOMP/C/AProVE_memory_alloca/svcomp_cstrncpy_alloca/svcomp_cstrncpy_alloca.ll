; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_cstrncpy_alloca/svcomp_cstrncpy_alloca.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i8* @cstrncpy(i8* %s1, i8* %s2, i32 %n) #0 {
cstrncpy_bb0:
  br label %cstrncpy_bb1

cstrncpy_bb1:                                     ; preds = %cstrncpy_bb2, %cstrncpy_bb0
  %src.0 = phi i8* [ %s2, %cstrncpy_bb0 ], [ %"2", %cstrncpy_bb2 ]
  %dst.0 = phi i8* [ %s1, %cstrncpy_bb0 ], [ %"4", %cstrncpy_bb2 ]
  %.0 = phi i32 [ %n, %cstrncpy_bb0 ], [ %"1", %cstrncpy_bb2 ]
  %"0" = icmp sgt i32 %.0, 0
  br i1 %"0", label %cstrncpy_bb2, label %cstrncpy_bb5

cstrncpy_bb2:                                     ; preds = %cstrncpy_bb1
  %"1" = add nsw i32 %.0, -1
  %"2" = getelementptr inbounds i8* %src.0, i32 1
  %"3" = load i8* %src.0, align 1
  %"4" = getelementptr inbounds i8* %dst.0, i32 1
  store i8 %"3", i8* %dst.0, align 1
  %"5" = sext i8 %"3" to i32
  %"6" = icmp eq i32 %"5", 0
  br i1 %"6", label %cstrncpy_bb3, label %cstrncpy_bb1

cstrncpy_bb3:                                     ; preds = %cstrncpy_bb2, %cstrncpy_bb4
  %us.0 = phi i8* [ %"9", %cstrncpy_bb4 ], [ %"4", %cstrncpy_bb2 ]
  %n2.0 = phi i32 [ %"7", %cstrncpy_bb4 ], [ %"1", %cstrncpy_bb2 ]
  %"7" = add nsw i32 %n2.0, -1
  %"8" = icmp ne i32 %n2.0, 0
  br i1 %"8", label %cstrncpy_bb4, label %cstrncpy_bb5

cstrncpy_bb4:                                     ; preds = %cstrncpy_bb3
  %"9" = getelementptr inbounds i8* %us.0, i32 1
  store i8 0, i8* %us.0, align 1
  br label %cstrncpy_bb3

cstrncpy_bb5:                                     ; preds = %cstrncpy_bb3, %cstrncpy_bb1
  ret i8* %s1
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb6:
  %"10" = call i32 @__VERIFIER_nondet_int()
  %"11" = call i32 @__VERIFIER_nondet_int()
  %"12" = icmp slt i32 %"10", 1
  %. = select i1 %"12", i32 1, i32 %"10"
  %"13" = icmp slt i32 %"11", 1
  %n.0 = select i1 %"13", i32 1, i32 %"11"
  %"14" = sext i32 %n.0 to i64
  %"15" = mul i64 %"14", 1
  %"16" = alloca i8, i64 %"15"
  %"17" = sext i32 %. to i64
  %"18" = mul i64 %"17", 1
  %"19" = alloca i8, i64 %"18"
  %"20" = sub nsw i32 %., 1
  %"21" = sext i32 %"20" to i64
  %"22" = getelementptr inbounds i8* %"19", i64 %"21"
  store i8 0, i8* %"22", align 1
  br label %main_bb7

main_bb7:                                         ; preds = %main_bb8, %main_bb6
  %src.0.i = phi i8* [ %"19", %main_bb6 ], [ %"25", %main_bb8 ]
  %dst.0.i = phi i8* [ %"16", %main_bb6 ], [ %"27", %main_bb8 ]
  %.0.i = phi i32 [ %n.0, %main_bb6 ], [ %"24", %main_bb8 ]
  %"23" = icmp sgt i32 %.0.i, 0
  br i1 %"23", label %main_bb8, label %main_cstrncpy.exit

main_bb8:                                         ; preds = %main_bb7
  %"24" = add nsw i32 %.0.i, -1
  %"25" = getelementptr inbounds i8* %src.0.i, i32 1
  %"26" = load i8* %src.0.i, align 1
  %"27" = getelementptr inbounds i8* %dst.0.i, i32 1
  store i8 %"26", i8* %dst.0.i, align 1
  %"28" = sext i8 %"26" to i32
  %"29" = icmp eq i32 %"28", 0
  br i1 %"29", label %main_bb9, label %main_bb7

main_bb9:                                         ; preds = %main_bb10, %main_bb8
  %us.0.i = phi i8* [ %"32", %main_bb10 ], [ %"27", %main_bb8 ]
  %n2.0.i = phi i32 [ %"30", %main_bb10 ], [ %"24", %main_bb8 ]
  %"30" = add nsw i32 %n2.0.i, -1
  %"31" = icmp ne i32 %n2.0.i, 0
  br i1 %"31", label %main_bb10, label %main_cstrncpy.exit

main_bb10:                                        ; preds = %main_bb9
  %"32" = getelementptr inbounds i8* %us.0.i, i32 1
  store i8 0, i8* %us.0.i, align 1
  br label %main_bb9

main_cstrncpy.exit:                               ; preds = %main_bb7, %main_bb9
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int() #1

declare i8* @__kittel_nondef.0()

declare i32 @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

