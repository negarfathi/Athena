; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_openbsd_cstrlcpy_alloca/svcomp_openbsd_cstrlcpy_alloca.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i64 @cstrlcpy(i8* %dst, i8* %src, i64 %siz) #0 {
cstrlcpy_bb0:
  %"0" = icmp ne i64 %siz, 0
  br i1 %"0", label %cstrlcpy_bb1, label %cstrlcpy_bb3

cstrlcpy_bb1:                                     ; preds = %cstrlcpy_bb2, %cstrlcpy_bb0
  %s.0 = phi i8* [ %src, %cstrlcpy_bb0 ], [ %"3", %cstrlcpy_bb2 ]
  %d.0 = phi i8* [ %dst, %cstrlcpy_bb0 ], [ %"5", %cstrlcpy_bb2 ]
  %n.0 = phi i64 [ %siz, %cstrlcpy_bb0 ], [ %"1", %cstrlcpy_bb2 ]
  %"1" = add i64 %n.0, -1
  %"2" = icmp ne i64 %"1", 0
  br i1 %"2", label %cstrlcpy_bb2, label %cstrlcpy_bb3

cstrlcpy_bb2:                                     ; preds = %cstrlcpy_bb1
  %"3" = getelementptr inbounds i8* %s.0, i32 1
  %"4" = load i8* %s.0, align 1
  %"5" = getelementptr inbounds i8* %d.0, i32 1
  store i8 %"4", i8* %d.0, align 1
  %"6" = sext i8 %"4" to i32
  %"7" = icmp eq i32 %"6", 0
  br i1 %"7", label %cstrlcpy_bb3, label %cstrlcpy_bb1

cstrlcpy_bb3:                                     ; preds = %cstrlcpy_bb1, %cstrlcpy_bb2, %cstrlcpy_bb0
  %s.2 = phi i8* [ %src, %cstrlcpy_bb0 ], [ %s.0, %cstrlcpy_bb1 ], [ %"3", %cstrlcpy_bb2 ]
  %d.2 = phi i8* [ %dst, %cstrlcpy_bb0 ], [ %d.0, %cstrlcpy_bb1 ], [ %"5", %cstrlcpy_bb2 ]
  %n.1 = phi i64 [ %siz, %cstrlcpy_bb0 ], [ %"1", %cstrlcpy_bb2 ], [ %"1", %cstrlcpy_bb1 ]
  %"8" = icmp eq i64 %n.1, 0
  br i1 %"8", label %cstrlcpy_bb4, label %cstrlcpy_bb7

cstrlcpy_bb4:                                     ; preds = %cstrlcpy_bb3
  %"9" = icmp ne i64 %siz, 0
  br i1 %"9", label %cstrlcpy_bb5, label %cstrlcpy_bb6

cstrlcpy_bb5:                                     ; preds = %cstrlcpy_bb4
  store i8 0, i8* %d.2, align 1
  br label %cstrlcpy_bb6

cstrlcpy_bb6:                                     ; preds = %cstrlcpy_bb6, %cstrlcpy_bb4, %cstrlcpy_bb5
  %s.3 = phi i8* [ %s.2, %cstrlcpy_bb5 ], [ %s.2, %cstrlcpy_bb4 ], [ %"10", %cstrlcpy_bb6 ]
  %"10" = getelementptr inbounds i8* %s.3, i32 1
  %"11" = load i8* %s.3, align 1
  %"12" = icmp ne i8 %"11", 0
  br i1 %"12", label %cstrlcpy_bb6, label %cstrlcpy_bb7

cstrlcpy_bb7:                                     ; preds = %cstrlcpy_bb6, %cstrlcpy_bb3
  %s.4 = phi i8* [ %s.2, %cstrlcpy_bb3 ], [ %"10", %cstrlcpy_bb6 ]
  %"13" = ptrtoint i8* %s.4 to i64
  %"14" = ptrtoint i8* %src to i64
  %"15" = sub i64 %"13", %"14"
  %"16" = sub nsw i64 %"15", 1
  ret i64 %"16"
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb8:
  %"17" = call i32 @__VERIFIER_nondet_int()
  %"18" = call i32 @__VERIFIER_nondet_int()
  %"19" = icmp slt i32 %"17", 1
  %. = select i1 %"19", i32 1, i32 %"17"
  %"20" = icmp slt i32 %"18", 1
  %n.0 = select i1 %"20", i32 1, i32 %"18"
  %"21" = sext i32 %n.0 to i64
  %"22" = mul i64 %"21", 1
  %"23" = alloca i8, i64 %"22"
  %"24" = sext i32 %. to i64
  %"25" = mul i64 %"24", 1
  %"26" = alloca i8, i64 %"25"
  %"27" = sub nsw i32 %n.0, 1
  %"28" = sext i32 %"27" to i64
  %"29" = getelementptr inbounds i8* %"23", i64 %"28"
  store i8 0, i8* %"29", align 1
  %"30" = sub nsw i32 %., 1
  %"31" = sext i32 %"30" to i64
  %"32" = getelementptr inbounds i8* %"26", i64 %"31"
  store i8 0, i8* %"32", align 1
  %"33" = sext i32 %n.0 to i64
  %"34" = icmp ne i64 %"33", 0
  br i1 %"34", label %main_bb9, label %main_bb11

main_bb9:                                         ; preds = %main_bb10, %main_bb8
  %s.0.i = phi i8* [ %"26", %main_bb8 ], [ %"37", %main_bb10 ]
  %d.0.i = phi i8* [ %"23", %main_bb8 ], [ %"39", %main_bb10 ]
  %n.0.i = phi i64 [ %"33", %main_bb8 ], [ %"35", %main_bb10 ]
  %"35" = add i64 %n.0.i, -1
  %"36" = icmp ne i64 %"35", 0
  br i1 %"36", label %main_bb10, label %main_bb11

main_bb10:                                        ; preds = %main_bb9
  %"37" = getelementptr inbounds i8* %s.0.i, i32 1
  %"38" = load i8* %s.0.i, align 1
  %"39" = getelementptr inbounds i8* %d.0.i, i32 1
  store i8 %"38", i8* %d.0.i, align 1
  %"40" = sext i8 %"38" to i32
  %"41" = icmp eq i32 %"40", 0
  br i1 %"41", label %main_bb11, label %main_bb9

main_bb11:                                        ; preds = %main_bb10, %main_bb9, %main_bb8
  %s.2.i = phi i8* [ %"26", %main_bb8 ], [ %s.0.i, %main_bb9 ], [ %"37", %main_bb10 ]
  %d.2.i = phi i8* [ %"23", %main_bb8 ], [ %d.0.i, %main_bb9 ], [ %"39", %main_bb10 ]
  %n.1.i = phi i64 [ %"33", %main_bb8 ], [ %"35", %main_bb10 ], [ %"35", %main_bb9 ]
  %"42" = icmp eq i64 %n.1.i, 0
  br i1 %"42", label %main_bb12, label %main_cstrlcpy.exit

main_bb12:                                        ; preds = %main_bb11
  %"43" = icmp ne i64 %"33", 0
  br i1 %"43", label %main_bb13, label %main_bb14

main_bb13:                                        ; preds = %main_bb12
  store i8 0, i8* %d.2.i, align 1
  br label %main_bb14

main_bb14:                                        ; preds = %main_bb14, %main_bb13, %main_bb12
  %s.3.i = phi i8* [ %s.2.i, %main_bb13 ], [ %s.2.i, %main_bb12 ], [ %"44", %main_bb14 ]
  %"44" = getelementptr inbounds i8* %s.3.i, i32 1
  %"45" = load i8* %s.3.i, align 1
  %"46" = icmp ne i8 %"45", 0
  br i1 %"46", label %main_bb14, label %main_cstrlcpy.exit

main_cstrlcpy.exit:                               ; preds = %main_bb11, %main_bb14
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

