; ModuleID = 'Benchmarks/TermCOMP/C/Stroeder_15/Toulouse-MultiBranchesToLoop_true-termination/Toulouse-MultiBranchesToLoop_true-termination.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  %"0" = call i32 @__VERIFIER_nondet_int()
  %"1" = call i32 @__VERIFIER_nondet_int()
  %"2" = call i32 @__VERIFIER_nondet_int()
  %"3" = icmp ne i32 %"2", 0
  %. = select i1 %"3", i32 1, i32 -1
  %"4" = icmp sgt i32 %., 0
  %"5" = add nsw i32 %., 1
  %"6" = sub nsw i32 %., 1
  %x.1 = select i1 %"4", i32 %"5", i32 %"6"
  %"7" = icmp sgt i32 %x.1, 0
  %"8" = add nsw i32 %x.1, 1
  %"9" = sub nsw i32 %x.1, 1
  %x.2 = select i1 %"7", i32 %"8", i32 %"9"
  %"10" = icmp sgt i32 %x.2, 0
  %"11" = add nsw i32 %x.2, 1
  %"12" = sub nsw i32 %x.2, 1
  %x.3 = select i1 %"10", i32 %"11", i32 %"12"
  %"13" = icmp sgt i32 %x.3, 0
  %"14" = add nsw i32 %x.3, 1
  %"15" = sub nsw i32 %x.3, 1
  %x.4 = select i1 %"13", i32 %"14", i32 %"15"
  %"16" = icmp sgt i32 %x.4, 0
  %"17" = add nsw i32 %x.4, 1
  %"18" = sub nsw i32 %x.4, 1
  %x.5 = select i1 %"16", i32 %"17", i32 %"18"
  %"19" = icmp sgt i32 %x.5, 0
  %"20" = add nsw i32 %x.5, 1
  %"21" = sub nsw i32 %x.5, 1
  %x.6 = select i1 %"19", i32 %"20", i32 %"21"
  %"22" = icmp sgt i32 %x.6, 0
  %"23" = add nsw i32 %x.6, 1
  %"24" = sub nsw i32 %x.6, 1
  %x.7 = select i1 %"22", i32 %"23", i32 %"24"
  %"25" = icmp sgt i32 %x.7, 0
  %"26" = add nsw i32 %x.7, 1
  %"27" = sub nsw i32 %x.7, 1
  %x.8 = select i1 %"25", i32 %"26", i32 %"27"
  br label %main_bb1

main_bb1:                                         ; preds = %main_bb0, %main_bb2
  %y.0 = phi i32 [ %"30", %main_bb2 ], [ %"0", %main_bb0 ]
  %z.0 = phi i32 [ %"31", %main_bb2 ], [ %"1", %main_bb0 ]
  %"28" = icmp slt i32 %y.0, 100
  %"29" = icmp slt i32 %z.0, 100
  %.1 = select i1 %"28", i1 %"29", i1 false
  br i1 %.1, label %main_bb2, label %main_bb3

main_bb2:                                         ; preds = %main_bb1
  %"30" = add nsw i32 %y.0, %x.8
  %"31" = sub nsw i32 %z.0, %x.8
  br label %main_bb1

main_bb3:                                         ; preds = %main_bb1
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

