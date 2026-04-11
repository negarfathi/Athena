; ModuleID = 'Benchmarks/FSE/loop/Missing_Corner-case_Handling_1_NT/Missing_Corner-case_Handling_1_NT.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"'flag" = global i32 0, align 4
@"'count" = global i32 0, align 4

; Function Attrs: nounwind uwtable
define i32 @read() #0 {
read_bb0:
  %"0" = load i32* @"'flag", align 4
  %"1" = icmp eq i32 %"0", 1
  %"2" = load i32* @"'count", align 4
  %"3" = icmp sgt i32 %"2", 100
  %or.cond = or i1 %"1", %"3"
  br i1 %or.cond, label %read_bb5, label %read_bb1

read_bb1:                                         ; preds = %read_bb0
  %"4" = call i32 @__VERIFIER_nondet_int()
  %"5" = icmp sle i32 %"4", 0
  br i1 %"5", label %read_bb5, label %read_bb2

read_bb2:                                         ; preds = %read_bb1
  %"6" = srem i32 %"4", 1000
  %"7" = icmp slt i32 %"6", 995
  br i1 %"7", label %read_bb3, label %read_bb4

read_bb3:                                         ; preds = %read_bb2
  %"8" = load i32* @"'count", align 4
  %"9" = add nsw i32 %"8", 1
  store i32 %"9", i32* @"'count", align 4
  br label %read_bb5

read_bb4:                                         ; preds = %read_bb2
  store i32 1, i32* @"'flag", align 4
  br label %read_bb5

read_bb5:                                         ; preds = %read_bb1, %read_bb0, %read_bb4, %read_bb3
  %.0 = phi i32 [ %"6", %read_bb3 ], [ 0, %read_bb4 ], [ 0, %read_bb0 ], [ -1, %read_bb1 ]
  ret i32 %.0
}

declare i32 @__VERIFIER_nondet_int() #1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb6:
  br label %main_bb7

main_bb7:                                         ; preds = %main_read.exit, %main_bb6
  %"10" = load i32* @"'flag", align 4
  %"11" = icmp eq i32 %"10", 1
  %"12" = load i32* @"'count", align 4
  %"13" = icmp sgt i32 %"12", 100
  %or.cond.i = or i1 %"11", %"13"
  br i1 %or.cond.i, label %main_read.exit, label %main_bb8

main_bb8:                                         ; preds = %main_bb7
  %"14" = call i32 @__VERIFIER_nondet_int() #2
  %"15" = icmp sle i32 %"14", 0
  br i1 %"15", label %main_read.exit, label %main_bb9

main_bb9:                                         ; preds = %main_bb8
  %"16" = srem i32 %"14", 1000
  %"17" = icmp slt i32 %"16", 995
  br i1 %"17", label %main_bb10, label %main_bb11

main_bb10:                                        ; preds = %main_bb9
  %"18" = load i32* @"'count", align 4
  %"19" = add nsw i32 %"18", 1
  store i32 %"19", i32* @"'count", align 4
  br label %main_read.exit

main_bb11:                                        ; preds = %main_bb9
  store i32 1, i32* @"'flag", align 4
  br label %main_read.exit

main_read.exit:                                   ; preds = %main_bb7, %main_bb8, %main_bb10, %main_bb11
  %.0.i = phi i32 [ %"16", %main_bb10 ], [ 0, %main_bb11 ], [ 0, %main_bb7 ], [ -1, %main_bb8 ]
  %"20" = icmp slt i32 %.0.i, 0
  br i1 %"20", label %main_bb12, label %main_bb7

main_bb12:                                        ; preds = %main_read.exit
  ret i32 0
}

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

