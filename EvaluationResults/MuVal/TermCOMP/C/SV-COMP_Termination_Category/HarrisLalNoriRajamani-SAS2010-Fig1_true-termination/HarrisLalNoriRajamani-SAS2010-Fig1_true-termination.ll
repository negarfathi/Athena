; ModuleID = 'Benchmarks/TermCOMP/C/SV-COMP_Termination_Category/HarrisLalNoriRajamani-SAS2010-Fig1_true-termination/HarrisLalNoriRajamani-SAS2010-Fig1_true-termination.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define void @f(i32 %d) #0 {
f_bb0:
  %"0" = call i32 @__VERIFIER_nondet_int()
  %"1" = call i32 @__VERIFIER_nondet_int()
  %"2" = call i32 @__VERIFIER_nondet_int()
  %"3" = icmp sgt i32 %"2", 1073741823
  br i1 %"3", label %f_bb7, label %f_bb1

f_bb1:                                            ; preds = %f_bb0, %f_bb2
  %z.0 = phi i32 [ %"5", %f_bb2 ], [ 1, %f_bb0 ]
  %"4" = icmp slt i32 %z.0, %"2"
  br i1 %"4", label %f_bb2, label %f_bb3

f_bb2:                                            ; preds = %f_bb1
  %"5" = mul nsw i32 2, %z.0
  br label %f_bb1

f_bb3:                                            ; preds = %f_bb5, %f_bb6, %f_bb1
  %z.1 = phi i32 [ %z.0, %f_bb1 ], [ %"12", %f_bb5 ], [ %z.1, %f_bb6 ]
  %y.0 = phi i32 [ %"1", %f_bb1 ], [ %"11", %f_bb5 ], [ %"13", %f_bb6 ]
  %x.0 = phi i32 [ %"0", %f_bb1 ], [ %"10", %f_bb5 ], [ %x.0, %f_bb6 ]
  %"6" = icmp sgt i32 %x.0, 0
  %"7" = icmp sgt i32 %y.0, 0
  %. = select i1 %"6", i1 %"7", i1 false
  br i1 %., label %f_bb4, label %f_bb7

f_bb4:                                            ; preds = %f_bb3
  %"8" = call i32 @__VERIFIER_nondet_int()
  %"9" = icmp ne i32 %"8", 0
  br i1 %"9", label %f_bb5, label %f_bb6

f_bb5:                                            ; preds = %f_bb4
  %"10" = sub nsw i32 %x.0, %d
  %"11" = call i32 @__VERIFIER_nondet_int()
  %"12" = sub nsw i32 %z.1, 1
  br label %f_bb3

f_bb6:                                            ; preds = %f_bb4
  %"13" = sub nsw i32 %y.0, %d
  br label %f_bb3

f_bb7:                                            ; preds = %f_bb0, %f_bb3
  ret void
}

declare i32 @__VERIFIER_nondet_int() #1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb8:
  %"14" = call i32 @__VERIFIER_nondet_int()
  %"15" = icmp ne i32 %"14", 0
  %"16" = call i32 @__VERIFIER_nondet_int() #2
  %"17" = call i32 @__VERIFIER_nondet_int() #2
  %"18" = call i32 @__VERIFIER_nondet_int() #2
  %"19" = icmp sgt i32 %"18", 1073741823
  br i1 %"15", label %main_bb9, label %main_bb16

main_bb9:                                         ; preds = %main_bb8
  br i1 %"19", label %main_f.exit, label %main_bb10

main_bb10:                                        ; preds = %main_bb11, %main_bb9
  %z.0.i = phi i32 [ %"21", %main_bb11 ], [ 1, %main_bb9 ]
  %"20" = icmp slt i32 %z.0.i, %"18"
  br i1 %"20", label %main_bb11, label %main_bb12

main_bb11:                                        ; preds = %main_bb10
  %"21" = mul nsw i32 2, %z.0.i
  br label %main_bb10

main_bb12:                                        ; preds = %main_bb15, %main_bb14, %main_bb10
  %z.1.i = phi i32 [ %z.0.i, %main_bb10 ], [ %"28", %main_bb14 ], [ %z.1.i, %main_bb15 ]
  %y.0.i = phi i32 [ %"17", %main_bb10 ], [ %"27", %main_bb14 ], [ %"29", %main_bb15 ]
  %x.0.i = phi i32 [ %"16", %main_bb10 ], [ %"26", %main_bb14 ], [ %x.0.i, %main_bb15 ]
  %"22" = icmp sgt i32 %x.0.i, 0
  %"23" = icmp sgt i32 %y.0.i, 0
  %..i = select i1 %"22", i1 %"23", i1 false
  br i1 %..i, label %main_bb13, label %main_f.exit

main_bb13:                                        ; preds = %main_bb12
  %"24" = call i32 @__VERIFIER_nondet_int() #2
  %"25" = icmp ne i32 %"24", 0
  br i1 %"25", label %main_bb14, label %main_bb15

main_bb14:                                        ; preds = %main_bb13
  %"26" = sub nsw i32 %x.0.i, 1
  %"27" = call i32 @__VERIFIER_nondet_int() #2
  %"28" = sub nsw i32 %z.1.i, 1
  br label %main_bb12

main_bb15:                                        ; preds = %main_bb13
  %"29" = sub nsw i32 %y.0.i, 1
  br label %main_bb12

main_bb16:                                        ; preds = %main_bb8
  br i1 %"19", label %main_f.exit, label %main_bb17

main_bb17:                                        ; preds = %main_bb18, %main_bb16
  %z.0.i1 = phi i32 [ %"31", %main_bb18 ], [ 1, %main_bb16 ]
  %"30" = icmp slt i32 %z.0.i1, %"18"
  br i1 %"30", label %main_bb18, label %main_bb19

main_bb18:                                        ; preds = %main_bb17
  %"31" = mul nsw i32 2, %z.0.i1
  br label %main_bb17

main_bb19:                                        ; preds = %main_bb22, %main_bb21, %main_bb17
  %z.1.i2 = phi i32 [ %z.0.i1, %main_bb17 ], [ %"38", %main_bb21 ], [ %z.1.i2, %main_bb22 ]
  %y.0.i3 = phi i32 [ %"17", %main_bb17 ], [ %"37", %main_bb21 ], [ %"39", %main_bb22 ]
  %x.0.i4 = phi i32 [ %"16", %main_bb17 ], [ %"36", %main_bb21 ], [ %x.0.i4, %main_bb22 ]
  %"32" = icmp sgt i32 %x.0.i4, 0
  %"33" = icmp sgt i32 %y.0.i3, 0
  %..i5 = select i1 %"32", i1 %"33", i1 false
  br i1 %..i5, label %main_bb20, label %main_f.exit

main_bb20:                                        ; preds = %main_bb19
  %"34" = call i32 @__VERIFIER_nondet_int() #2
  %"35" = icmp ne i32 %"34", 0
  br i1 %"35", label %main_bb21, label %main_bb22

main_bb21:                                        ; preds = %main_bb20
  %"36" = sub nsw i32 %x.0.i4, 2
  %"37" = call i32 @__VERIFIER_nondet_int() #2
  %"38" = sub nsw i32 %z.1.i2, 1
  br label %main_bb19

main_bb22:                                        ; preds = %main_bb20
  %"39" = sub nsw i32 %y.0.i3, 2
  br label %main_bb19

main_f.exit:                                      ; preds = %main_bb19, %main_bb16, %main_bb12, %main_bb9
  ret i32 0
}

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

