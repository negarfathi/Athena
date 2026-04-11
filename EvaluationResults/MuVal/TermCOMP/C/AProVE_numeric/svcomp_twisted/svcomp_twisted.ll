; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_numeric/svcomp_twisted/svcomp_twisted.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @f(i32 %k, i32 %l) #0 {
f_bb0:
  br label %f_bb1

f_bb1:                                            ; preds = %f_bb6, %f_bb0
  %j.0 = phi i32 [ 0, %f_bb0 ], [ %"6", %f_bb6 ]
  %i.0 = phi i32 [ 0, %f_bb0 ], [ %i.2, %f_bb6 ]
  br label %f_bb2

f_bb2:                                            ; preds = %f_bb3, %f_bb1
  %i.1 = phi i32 [ %i.0, %f_bb1 ], [ %"1", %f_bb3 ]
  %"0" = icmp slt i32 %i.1, %k
  br i1 %"0", label %f_bb3, label %f_bb4

f_bb3:                                            ; preds = %f_bb2
  %"1" = add nsw i32 %i.1, 1
  %"2" = srem i32 %"1", 2
  %"3" = icmp ne i32 %"2", 0
  br i1 %"3", label %f_bb2, label %f_bb4

f_bb4:                                            ; preds = %f_bb2, %f_bb3
  %i.2 = phi i32 [ %"1", %f_bb3 ], [ %i.1, %f_bb2 ]
  %"4" = srem i32 %i.2, 2
  br label %f_bb5

f_bb5:                                            ; preds = %f_bb6, %f_bb4
  %j.1 = phi i32 [ %j.0, %f_bb4 ], [ %"6", %f_bb6 ]
  %"5" = icmp slt i32 %j.1, %l
  br i1 %"5", label %f_bb6, label %f_bb7

f_bb6:                                            ; preds = %f_bb5
  %"6" = add nsw i32 %j.1, 1
  %"7" = icmp ne i32 %"4", 0
  br i1 %"7", label %f_bb5, label %f_bb1

f_bb7:                                            ; preds = %f_bb5
  %"8" = add nsw i32 %i.2, %j.1
  ret i32 %"8"
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb8:
  %"9" = call i32 @__VERIFIER_nondet_int()
  %"10" = call i32 @__VERIFIER_nondet_int()
  br label %main_bb9

main_bb9:                                         ; preds = %main_bb14, %main_bb8
  %j.0.i = phi i32 [ 0, %main_bb8 ], [ %"17", %main_bb14 ]
  %i.0.i = phi i32 [ 0, %main_bb8 ], [ %i.2.i, %main_bb14 ]
  br label %main_bb10

main_bb10:                                        ; preds = %main_bb11, %main_bb9
  %i.1.i = phi i32 [ %i.0.i, %main_bb9 ], [ %"12", %main_bb11 ]
  %"11" = icmp slt i32 %i.1.i, %"9"
  br i1 %"11", label %main_bb11, label %main_bb12

main_bb11:                                        ; preds = %main_bb10
  %"12" = add nsw i32 %i.1.i, 1
  %"13" = srem i32 %"12", 2
  %"14" = icmp ne i32 %"13", 0
  br i1 %"14", label %main_bb10, label %main_bb12

main_bb12:                                        ; preds = %main_bb11, %main_bb10
  %i.2.i = phi i32 [ %"12", %main_bb11 ], [ %i.1.i, %main_bb10 ]
  %"15" = srem i32 %i.2.i, 2
  br label %main_bb13

main_bb13:                                        ; preds = %main_bb14, %main_bb12
  %j.1.i = phi i32 [ %j.0.i, %main_bb12 ], [ %"17", %main_bb14 ]
  %"16" = icmp slt i32 %j.1.i, %"10"
  br i1 %"16", label %main_bb14, label %main_f.exit

main_bb14:                                        ; preds = %main_bb13
  %"17" = add nsw i32 %j.1.i, 1
  %"18" = icmp ne i32 %"15", 0
  br i1 %"18", label %main_bb13, label %main_bb9

main_f.exit:                                      ; preds = %main_bb13
  %"19" = add nsw i32 %i.2.i, %j.1.i
  ret i32 %"19"
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

