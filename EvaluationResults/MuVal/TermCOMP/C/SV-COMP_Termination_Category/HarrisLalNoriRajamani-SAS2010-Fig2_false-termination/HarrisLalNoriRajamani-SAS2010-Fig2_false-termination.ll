; ModuleID = 'Benchmarks/TermCOMP/C/SV-COMP_Termination_Category/HarrisLalNoriRajamani-SAS2010-Fig2_false-termination/HarrisLalNoriRajamani-SAS2010-Fig2_false-termination.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @foo() #0 {
foo_bb0:
  %"0" = call i32 @__VERIFIER_nondet_int()
  %"1" = call i32 @__VERIFIER_nondet_int()
  %"2" = icmp ne i32 %"1", 0
  %"3" = call i32 @__VERIFIER_nondet_int()
  %"4" = icmp ne i32 %"3", 0
  %"5" = call i32 @__VERIFIER_nondet_int()
  %"6" = icmp ne i32 %"5", 0
  br i1 %"2", label %foo_bb1, label %foo_bb4

foo_bb1:                                          ; preds = %foo_bb0
  br i1 %"4", label %foo_bb2, label %foo_bb3

foo_bb2:                                          ; preds = %foo_bb1
  %. = select i1 %"6", i32 0, i32 1
  br label %foo_bb7

foo_bb3:                                          ; preds = %foo_bb1
  %.1 = select i1 %"6", i32 2, i32 3
  br label %foo_bb7

foo_bb4:                                          ; preds = %foo_bb0
  br i1 %"4", label %foo_bb5, label %foo_bb6

foo_bb5:                                          ; preds = %foo_bb4
  %.2 = select i1 %"6", i32 4, i32 5
  br label %foo_bb7

foo_bb6:                                          ; preds = %foo_bb4
  %.3 = select i1 %"6", i32 6, i32 7
  br label %foo_bb7

foo_bb7:                                          ; preds = %foo_bb5, %foo_bb6, %foo_bb2, %foo_bb3
  %y.6 = phi i32 [ %., %foo_bb2 ], [ %.1, %foo_bb3 ], [ %.2, %foo_bb5 ], [ %.3, %foo_bb6 ]
  ret i32 %y.6
}

declare i32 @__VERIFIER_nondet_int() #1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb8:
  %"7" = call i32 @__VERIFIER_nondet_int()
  %"8" = call i32 @__VERIFIER_nondet_int()
  %"9" = icmp ne i32 %"8", 0
  %"10" = sub nsw i32 1, 1
  %. = select i1 %"9", i32 %"10", i32 1
  %"11" = call i32 @__VERIFIER_nondet_int()
  %"12" = icmp ne i32 %"11", 0
  br i1 %"12", label %main_foo.exit, label %main_bb9

main_foo.exit:                                    ; preds = %main_bb8
  %"13" = call i32 @__VERIFIER_nondet_int() #2
  %"14" = call i32 @__VERIFIER_nondet_int() #2
  %"15" = call i32 @__VERIFIER_nondet_int() #2
  %"16" = call i32 @__VERIFIER_nondet_int() #2
  br label %main_bb9

main_bb9:                                         ; preds = %main_foo.exit, %main_bb8
  %"17" = call i32 @__VERIFIER_nondet_int()
  %"18" = icmp ne i32 %"17", 0
  br i1 %"18", label %main_foo.exit6, label %main_bb10

main_foo.exit6:                                   ; preds = %main_bb9
  %"19" = call i32 @__VERIFIER_nondet_int() #2
  %"20" = call i32 @__VERIFIER_nondet_int() #2
  %"21" = call i32 @__VERIFIER_nondet_int() #2
  %"22" = call i32 @__VERIFIER_nondet_int() #2
  br label %main_bb10

main_bb10:                                        ; preds = %main_foo.exit6, %main_bb9
  %"23" = call i32 @__VERIFIER_nondet_int()
  %"24" = icmp ne i32 %"23", 0
  br i1 %"24", label %main_foo.exit12, label %main_bb11

main_foo.exit12:                                  ; preds = %main_bb10
  %"25" = call i32 @__VERIFIER_nondet_int() #2
  %"26" = call i32 @__VERIFIER_nondet_int() #2
  %"27" = call i32 @__VERIFIER_nondet_int() #2
  %"28" = call i32 @__VERIFIER_nondet_int() #2
  br label %main_bb11

main_bb11:                                        ; preds = %main_foo.exit12, %main_bb10
  %"29" = call i32 @__VERIFIER_nondet_int()
  %"30" = icmp ne i32 %"29", 0
  br i1 %"30", label %main_foo.exit18, label %main_bb12

main_foo.exit18:                                  ; preds = %main_bb11
  %"31" = call i32 @__VERIFIER_nondet_int() #2
  %"32" = call i32 @__VERIFIER_nondet_int() #2
  %"33" = call i32 @__VERIFIER_nondet_int() #2
  %"34" = call i32 @__VERIFIER_nondet_int() #2
  br label %main_bb12

main_bb12:                                        ; preds = %main_foo.exit18, %main_bb11
  %"35" = call i32 @__VERIFIER_nondet_int()
  %"36" = icmp ne i32 %"35", 0
  %"37" = sub nsw i32 %., 1
  %.. = select i1 %"36", i32 %"37", i32 %.
  br label %main_bb13

main_bb13:                                        ; preds = %main_bb14, %main_bb12
  %x.0 = phi i32 [ %"7", %main_bb12 ], [ %"39", %main_bb14 ]
  %"38" = icmp sgt i32 %x.0, 0
  br i1 %"38", label %main_bb14, label %main_bb15

main_bb14:                                        ; preds = %main_bb13
  %"39" = sub nsw i32 %x.0, %..
  br label %main_bb13

main_bb15:                                        ; preds = %main_bb13
  ret i32 0
}

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

