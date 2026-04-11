; ModuleID = 'Benchmarks/TermCOMP/C/Stroeder_15/ComplxStruc/ComplxStruc.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  %"0" = call i32 @__VERIFIER_nondet_int()
  br label %main_bb1

main_bb1:                                         ; preds = %main_bb4, %main_bb5, %main_bb8, %main_bb7, %main_bb0
  %i.0 = phi i32 [ %"0", %main_bb0 ], [ %"3", %main_bb5 ], [ %i.1, %main_bb4 ], [ %i.3, %main_bb7 ], [ %"17", %main_bb8 ]
  %j.0 = phi i32 [ %"0", %main_bb0 ], [ %"10", %main_bb5 ], [ %j.1, %main_bb4 ], [ %j.3, %main_bb7 ], [ %j.4, %main_bb8 ]
  %"1" = icmp sgt i32 %i.0, 0
  br i1 %"1", label %main_bb2, label %main_bb9

main_bb2:                                         ; preds = %main_bb1
  %"2" = icmp sge i32 %i.0, %j.0
  br i1 %"2", label %main_bb3, label %main_bb6

main_bb3:                                         ; preds = %main_bb2
  %"3" = add nsw i32 %i.0, 1
  %"4" = icmp slt i32 %j.0, 5
  br i1 %"4", label %main_bb4, label %main_bb5

main_bb4:                                         ; preds = %main_bb3
  %"5" = add nsw i32 %j.0, 1
  %"6" = sub nsw i32 %"3", %"5"
  %"7" = icmp sgt i32 %"6", 2
  %"8" = add nsw i32 %"3", 1
  %"9" = add nsw i32 %"5", 1
  %i.1 = select i1 %"7", i32 %"8", i32 %"3"
  %j.1 = select i1 %"7", i32 %"5", i32 %"9"
  br label %main_bb1

main_bb5:                                         ; preds = %main_bb3
  %"10" = sub nsw i32 %j.0, 1
  br label %main_bb1

main_bb6:                                         ; preds = %main_bb2
  %"11" = icmp sgt i32 %i.0, 0
  %"12" = icmp slt i32 %j.0, 0
  %or.cond = and i1 %"11", %"12"
  br i1 %or.cond, label %main_bb7, label %main_bb8

main_bb7:                                         ; preds = %main_bb6
  %"13" = sub nsw i32 %i.0, 1
  %"14" = icmp slt i32 %j.0, -1
  %"15" = add nsw i32 %j.0, 1
  %"16" = add nsw i32 %"13", 1
  %i.3 = select i1 %"14", i32 %"13", i32 %"16"
  %j.3 = select i1 %"14", i32 %"15", i32 %j.0
  br label %main_bb1

main_bb8:                                         ; preds = %main_bb6
  %"17" = add nsw i32 %i.0, 1
  %"18" = mul nsw i32 %j.0, 2
  %"19" = icmp sgt i32 %"18", %"17"
  %"20" = sub nsw i32 %j.0, 1
  %"21" = add nsw i32 %j.0, 1
  %j.4 = select i1 %"19", i32 %"20", i32 %"21"
  br label %main_bb1

main_bb9:                                         ; preds = %main_bb1
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

