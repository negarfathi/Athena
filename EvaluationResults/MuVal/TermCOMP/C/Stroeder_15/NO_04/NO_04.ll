; ModuleID = 'Benchmarks/TermCOMP/C/Stroeder_15/NO_04/NO_04.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  br label %main_bb1

main_bb1:                                         ; preds = %main_bb14, %main_bb0
  %i.0 = phi i32 [ 0, %main_bb0 ], [ %"19", %main_bb14 ]
  %"0" = icmp slt i32 %i.0, 100
  br i1 %"0", label %main_bb2, label %main_bb15

main_bb2:                                         ; preds = %main_bb1
  %"1" = add nsw i32 %i.0, 2
  br label %main_bb3

main_bb3:                                         ; preds = %main_bb13, %main_bb2
  %j.0 = phi i32 [ 0, %main_bb2 ], [ %"18", %main_bb13 ]
  %"2" = icmp slt i32 %j.0, %"1"
  br i1 %"2", label %main_bb4, label %main_bb14

main_bb4:                                         ; preds = %main_bb3
  %"3" = add nsw i32 %i.0, %j.0
  %"4" = add nsw i32 %"3", 3
  br label %main_bb5

main_bb5:                                         ; preds = %main_bb12, %main_bb4
  %k.0 = phi i32 [ %"4", %main_bb4 ], [ %"17", %main_bb12 ]
  %"5" = icmp sge i32 %k.0, 0
  br i1 %"5", label %main_bb6, label %main_bb13

main_bb6:                                         ; preds = %main_bb5
  %"6" = add nsw i32 %i.0, %j.0
  %"7" = add nsw i32 %"6", %k.0
  %"8" = add nsw i32 %"7", 4
  br label %main_bb7

main_bb7:                                         ; preds = %main_bb11, %main_bb6
  %l.0 = phi i32 [ 0, %main_bb6 ], [ %"16", %main_bb11 ]
  %"9" = icmp slt i32 %l.0, %"8"
  br i1 %"9", label %main_bb8, label %main_bb12

main_bb8:                                         ; preds = %main_bb7
  %"10" = add nsw i32 %i.0, %j.0
  %"11" = add nsw i32 %"10", %k.0
  %"12" = add nsw i32 %"11", %l.0
  %"13" = add nsw i32 %"12", 1000
  br label %main_bb9

main_bb9:                                         ; preds = %main_bb10, %main_bb8
  %m.0 = phi i32 [ %"13", %main_bb8 ], [ %"15", %main_bb10 ]
  %"14" = icmp sge i32 %m.0, 0
  br i1 %"14", label %main_bb10, label %main_bb11

main_bb10:                                        ; preds = %main_bb9
  %"15" = sub nsw i32 %m.0, 0
  br label %main_bb9

main_bb11:                                        ; preds = %main_bb9
  %"16" = add nsw i32 %l.0, 1
  br label %main_bb7

main_bb12:                                        ; preds = %main_bb7
  %"17" = sub nsw i32 %k.0, 1
  br label %main_bb5

main_bb13:                                        ; preds = %main_bb5
  %"18" = add nsw i32 %j.0, 1
  br label %main_bb3

main_bb14:                                        ; preds = %main_bb3
  %"19" = add nsw i32 %i.0, 1
  br label %main_bb1

main_bb15:                                        ; preds = %main_bb1
  ret i32 0
}

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

