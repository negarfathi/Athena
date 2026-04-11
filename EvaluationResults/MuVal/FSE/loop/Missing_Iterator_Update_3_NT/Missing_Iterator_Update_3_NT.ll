; ModuleID = 'Benchmarks/FSE/loop/Missing_Iterator_Update_3_NT/Missing_Iterator_Update_3_NT.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"'flag" = global i32 0, align 4

; Function Attrs: nounwind uwtable
define i32 @fopen_or_warn() #0 {
fopen_or_warn_bb0:
  %"0" = load i32* @"'flag", align 4
  %"1" = add nsw i32 %"0", 1
  store i32 %"1", i32* @"'flag", align 4
  %"2" = load i32* @"'flag", align 4
  %"3" = icmp sgt i32 %"2", 10
  br i1 %"3", label %fopen_or_warn_bb2, label %fopen_or_warn_bb1

fopen_or_warn_bb1:                                ; preds = %fopen_or_warn_bb0
  %"4" = call i32 @__VERIFIER_nondet_int()
  %"5" = icmp sge i32 %"4", 0
  %. = select i1 %"5", i32 0, i32 %"4"
  br label %fopen_or_warn_bb2

fopen_or_warn_bb2:                                ; preds = %fopen_or_warn_bb1, %fopen_or_warn_bb0
  %.0 = phi i32 [ 0, %fopen_or_warn_bb0 ], [ %., %fopen_or_warn_bb1 ]
  ret i32 %.0
}

declare i32 @__VERIFIER_nondet_int() #1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb3:
  %"6" = call i32 @__VERIFIER_nondet_int()
  %"7" = icmp sle i32 %"6", 0
  br i1 %"7", label %main_bb15, label %main_bb4

main_bb4:                                         ; preds = %main_bb3
  %"8" = zext i32 %"6" to i64
  %"9" = call i8* @llvm.stacksave()
  %"10" = alloca i32, i64 %"8", align 16
  br label %main_bb5

main_bb5:                                         ; preds = %main_bb6, %main_bb4
  %i.0 = phi i32 [ 0, %main_bb4 ], [ %"16", %main_bb6 ]
  %"11" = sub nsw i32 %"6", 1
  %"12" = icmp slt i32 %i.0, %"11"
  br i1 %"12", label %main_bb6, label %main_bb7

main_bb6:                                         ; preds = %main_bb5
  %"13" = call i32 @__VERIFIER_nondet_int()
  %"14" = sext i32 %i.0 to i64
  %"15" = getelementptr inbounds i32* %"10", i64 %"14"
  store i32 %"13", i32* %"15", align 4
  %"16" = add nsw i32 %i.0, 1
  br label %main_bb5

main_bb7:                                         ; preds = %main_bb5
  %"17" = sub nsw i32 %"6", 1
  %"18" = sext i32 %"17" to i64
  %"19" = getelementptr inbounds i32* %"10", i64 %"18"
  store i32 0, i32* %"19", align 4
  br label %main_bb8

main_bb8:                                         ; preds = %main_bb13, %main_bb7
  %fp.1 = phi i32 [ 0, %main_bb7 ], [ %fp.0, %main_bb13 ]
  %argv.0 = phi i32* [ %"10", %main_bb7 ], [ %"32", %main_bb13 ]
  %"20" = add nsw i32 %fp.1, 1
  br label %main_bb9

main_bb9:                                         ; preds = %main_fopen_or_warn.exit, %main_bb8
  %fp.2 = phi i32 [ %"20", %main_bb8 ], [ %.0.i, %main_fopen_or_warn.exit ]
  %"21" = load i32* %argv.0, align 4
  %"22" = icmp ne i32 %"21", 0
  br i1 %"22", label %main_bb10, label %main_bb14

main_bb10:                                        ; preds = %main_bb9
  %"23" = load i32* %argv.0, align 4
  %"24" = icmp sgt i32 %"23", 0
  br i1 %"24", label %main_bb11, label %main_bb13

main_bb11:                                        ; preds = %main_bb10
  %"25" = load i32* @"'flag", align 4
  %"26" = add nsw i32 %"25", 1
  store i32 %"26", i32* @"'flag", align 4
  %"27" = load i32* @"'flag", align 4
  %"28" = icmp sgt i32 %"27", 10
  br i1 %"28", label %main_fopen_or_warn.exit, label %main_bb12

main_bb12:                                        ; preds = %main_bb11
  %"29" = call i32 @__VERIFIER_nondet_int() #2
  %"30" = icmp sge i32 %"29", 0
  %..i = select i1 %"30", i32 0, i32 %"29"
  br label %main_fopen_or_warn.exit

main_fopen_or_warn.exit:                          ; preds = %main_bb11, %main_bb12
  %.0.i = phi i32 [ 0, %main_bb11 ], [ %..i, %main_bb12 ]
  %"31" = icmp eq i32 %.0.i, 0
  br i1 %"31", label %main_bb9, label %main_bb13

main_bb13:                                        ; preds = %main_fopen_or_warn.exit, %main_bb10
  %fp.0 = phi i32 [ %fp.2, %main_bb10 ], [ %.0.i, %main_fopen_or_warn.exit ]
  %"32" = getelementptr inbounds i32* %argv.0, i32 1
  br label %main_bb8

main_bb14:                                        ; preds = %main_bb9
  call void @llvm.stackrestore(i8* %"9")
  br label %main_bb15

main_bb15:                                        ; preds = %main_bb3, %main_bb14
  ret i32 0
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare i32 @__kittel_nondef.0()

declare i8* @__kittel_nondef.1()

declare i32* @__kittel_nondef.2()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

