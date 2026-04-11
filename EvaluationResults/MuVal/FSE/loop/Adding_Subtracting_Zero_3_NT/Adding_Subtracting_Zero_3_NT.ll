; ModuleID = 'Benchmarks/FSE/loop/Adding_Subtracting_Zero_3_NT/Adding_Subtracting_Zero_3_NT.bc'
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
  store i32 0, i32* @"'flag", align 4
  %"12" = icmp sle i32 %"11", 0
  %"13" = icmp sgt i32 %"11", 65536
  %or.cond = or i1 %"12", %"13"
  br i1 %or.cond, label %main_bb17, label %main_bb8

main_bb8:                                         ; preds = %main_bb15, %main_bb7, %main_bb16
  %errno.0 = phi i32 [ %errno.0, %main_bb16 ], [ 0, %main_bb7 ], [ %"28", %main_bb15 ]
  %pos.0 = phi i32 [ %"30", %main_bb16 ], [ 0, %main_bb7 ], [ %pos.0, %main_bb15 ]
  %"14" = icmp slt i32 %pos.0, %"11"
  br i1 %"14", label %main_bb9, label %main_bb17

main_bb9:                                         ; preds = %main_bb8
  %"15" = sub nsw i32 %"11", %pos.0
  %"16" = load i32* @"'flag", align 4
  %"17" = icmp eq i32 %"16", 1
  br i1 %"17", label %main_read.exit, label %main_bb10

main_bb10:                                        ; preds = %main_bb13, %main_bb9
  %count.0.i = phi i32 [ %"24", %main_bb13 ], [ 0, %main_bb9 ]
  %.01.i = phi i32 [ %"26", %main_bb13 ], [ %pos.0, %main_bb9 ]
  %"18" = icmp slt i32 %.01.i, %"15"
  br i1 %"18", label %main_bb11, label %main_read.exit

main_bb11:                                        ; preds = %main_bb10
  %"19" = call i32 @__VERIFIER_nondet_int() #2
  %"20" = icmp eq i32 %"19", 0
  br i1 %"20", label %main_read.exit, label %main_bb12

main_bb12:                                        ; preds = %main_bb11
  %"21" = icmp slt i32 %"19", 0
  %"22" = sub nsw i32 0, %"19"
  %..i = select i1 %"21", i32 %"22", i32 %"19"
  %"23" = srem i32 %..i, 1000
  %"24" = add nsw i32 %count.0.i, 1
  %"25" = icmp slt i32 %"23", 995
  br i1 %"25", label %main_bb13, label %main_bb14

main_bb13:                                        ; preds = %main_bb12
  %"26" = add nsw i32 %.01.i, 1
  br label %main_bb10

main_bb14:                                        ; preds = %main_bb12
  store i32 1, i32* @"'flag", align 4
  br label %main_read.exit

main_read.exit:                                   ; preds = %main_bb9, %main_bb10, %main_bb11, %main_bb14
  %.0.i = phi i32 [ %"24", %main_bb14 ], [ 0, %main_bb9 ], [ -1, %main_bb11 ], [ %count.0.i, %main_bb10 ]
  %"27" = icmp eq i32 %.0.i, -1
  br i1 %"27", label %main_bb15, label %main_bb16

main_bb15:                                        ; preds = %main_read.exit
  %"28" = add nsw i32 %errno.0, 1
  %"29" = icmp eq i32 %"28", 5
  br i1 %"29", label %main_bb17, label %main_bb8

main_bb16:                                        ; preds = %main_read.exit
  %"30" = add nsw i32 %pos.0, %.0.i
  br label %main_bb8

main_bb17:                                        ; preds = %main_bb8, %main_bb15, %main_bb7
  ret i32 0
}

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

