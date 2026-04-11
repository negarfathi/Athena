; ModuleID = 'Benchmarks/FSE/loop/Adding_Subtracting_Zero_4_NT/Adding_Subtracting_Zero_4_NT.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"'flag" = global i32 0, align 4

; Function Attrs: nounwind uwtable
define i32 @read(i32 %loc, i32 %len) #0 {
read_bb0:
  %"0" = load i32* @"'flag", align 4
  %"1" = icmp eq i32 %"0", 1
  br i1 %"1", label %read_bb6, label %read_bb1

read_bb1:                                         ; preds = %read_bb0, %read_bb4
  %count.0 = phi i32 [ %"8", %read_bb4 ], [ 0, %read_bb0 ]
  %.01 = phi i32 [ %"10", %read_bb4 ], [ %loc, %read_bb0 ]
  %"2" = icmp slt i32 %.01, %len
  br i1 %"2", label %read_bb2, label %read_bb6

read_bb2:                                         ; preds = %read_bb1
  %"3" = call i32 @__VERIFIER_nondet_int()
  %"4" = icmp eq i32 %"3", 0
  br i1 %"4", label %read_bb6, label %read_bb3

read_bb3:                                         ; preds = %read_bb2
  %"5" = icmp slt i32 %"3", 0
  %"6" = sub nsw i32 0, %"3"
  %. = select i1 %"5", i32 %"6", i32 %"3"
  %"7" = srem i32 %., 1000
  %"8" = add nsw i32 %count.0, 1
  %"9" = icmp slt i32 %"7", 995
  br i1 %"9", label %read_bb4, label %read_bb5

read_bb4:                                         ; preds = %read_bb3
  %"10" = add nsw i32 %.01, 1
  br label %read_bb1

read_bb5:                                         ; preds = %read_bb3
  store i32 1, i32* @"'flag", align 4
  br label %read_bb6

read_bb6:                                         ; preds = %read_bb1, %read_bb2, %read_bb0, %read_bb5
  %.0 = phi i32 [ %"8", %read_bb5 ], [ 0, %read_bb0 ], [ -1, %read_bb2 ], [ %count.0, %read_bb1 ]
  ret i32 %.0
}

declare i32 @__VERIFIER_nondet_int() #1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb7:
  %"11" = call i32 @__VERIFIER_nondet_int()
  %"12" = icmp sle i32 %"11", 0
  br i1 %"12", label %main_bb16, label %main_bb8

main_bb8:                                         ; preds = %main_bb7, %main_bb15
  %buf.0 = phi i32 [ %"27", %main_bb15 ], [ 0, %main_bb7 ]
  %count.0 = phi i32 [ %"26", %main_bb15 ], [ %"11", %main_bb7 ]
  %"13" = icmp sgt i32 %count.0, 0
  br i1 %"13", label %main_bb9, label %main_bb16

main_bb9:                                         ; preds = %main_bb8
  %"14" = load i32* @"'flag", align 4
  %"15" = icmp eq i32 %"14", 1
  br i1 %"15", label %main_read.exit, label %main_bb10

main_bb10:                                        ; preds = %main_bb13, %main_bb9
  %count.0.i = phi i32 [ %"22", %main_bb13 ], [ 0, %main_bb9 ]
  %.01.i = phi i32 [ %"24", %main_bb13 ], [ %buf.0, %main_bb9 ]
  %"16" = icmp slt i32 %.01.i, %count.0
  br i1 %"16", label %main_bb11, label %main_read.exit

main_bb11:                                        ; preds = %main_bb10
  %"17" = call i32 @__VERIFIER_nondet_int() #2
  %"18" = icmp eq i32 %"17", 0
  br i1 %"18", label %main_read.exit, label %main_bb12

main_bb12:                                        ; preds = %main_bb11
  %"19" = icmp slt i32 %"17", 0
  %"20" = sub nsw i32 0, %"17"
  %..i = select i1 %"19", i32 %"20", i32 %"17"
  %"21" = srem i32 %..i, 1000
  %"22" = add nsw i32 %count.0.i, 1
  %"23" = icmp slt i32 %"21", 995
  br i1 %"23", label %main_bb13, label %main_bb14

main_bb13:                                        ; preds = %main_bb12
  %"24" = add nsw i32 %.01.i, 1
  br label %main_bb10

main_bb14:                                        ; preds = %main_bb12
  store i32 1, i32* @"'flag", align 4
  br label %main_read.exit

main_read.exit:                                   ; preds = %main_bb9, %main_bb10, %main_bb11, %main_bb14
  %.0.i = phi i32 [ %"22", %main_bb14 ], [ 0, %main_bb9 ], [ -1, %main_bb11 ], [ %count.0.i, %main_bb10 ]
  %"25" = icmp slt i32 %.0.i, 0
  br i1 %"25", label %main_bb16, label %main_bb15

main_bb15:                                        ; preds = %main_read.exit
  %"26" = sub nsw i32 %count.0, %.0.i
  %"27" = add nsw i32 %buf.0, %.0.i
  br label %main_bb8

main_bb16:                                        ; preds = %main_bb8, %main_read.exit, %main_bb7
  ret i32 0
}

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

