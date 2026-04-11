; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_openbsd_cbzero_alloca/svcomp_openbsd_cbzero_alloca.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define void @cbzero(i8* %b, i64 %length) #0 {
cbzero_bb0:
  br label %cbzero_bb1

cbzero_bb1:                                       ; preds = %cbzero_bb2, %cbzero_bb0
  %.0 = phi i64 [ %length, %cbzero_bb0 ], [ %"0", %cbzero_bb2 ]
  %p.0 = phi i8* [ %b, %cbzero_bb0 ], [ %"2", %cbzero_bb2 ]
  %"0" = add i64 %.0, -1
  %"1" = icmp ne i64 %.0, 0
  br i1 %"1", label %cbzero_bb2, label %cbzero_bb3

cbzero_bb2:                                       ; preds = %cbzero_bb1
  %"2" = getelementptr inbounds i8* %p.0, i32 1
  store i8 0, i8* %p.0, align 1
  br label %cbzero_bb1

cbzero_bb3:                                       ; preds = %cbzero_bb1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb4:
  %"3" = call i32 @__VERIFIER_nondet_int()
  %"4" = call i32 @__VERIFIER_nondet_int()
  %"5" = icmp slt i32 %"3", 1
  %. = select i1 %"5", i32 1, i32 %"3"
  %"6" = icmp slt i32 %"4", 1
  %n.0 = select i1 %"6", i32 1, i32 %"4"
  %"7" = icmp sgt i32 %n.0, %.
  br i1 %"7", label %main_cbzero.exit, label %main_bb5

main_bb5:                                         ; preds = %main_bb4
  %"8" = sext i32 %. to i64
  %"9" = mul i64 %"8", 1
  %"10" = alloca i8, i64 %"9"
  %"11" = sext i32 %n.0 to i64
  br label %main_bb6

main_bb6:                                         ; preds = %main_bb7, %main_bb5
  %.0.i = phi i64 [ %"11", %main_bb5 ], [ %"12", %main_bb7 ]
  %p.0.i = phi i8* [ %"10", %main_bb5 ], [ %"14", %main_bb7 ]
  %"12" = add i64 %.0.i, -1
  %"13" = icmp ne i64 %.0.i, 0
  br i1 %"13", label %main_bb7, label %main_cbzero.exit

main_bb7:                                         ; preds = %main_bb6
  %"14" = getelementptr inbounds i8* %p.0.i, i32 1
  store i8 0, i8* %p.0.i, align 1
  br label %main_bb6

main_cbzero.exit:                                 ; preds = %main_bb6, %main_bb4
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int() #1

declare i8* @__kittel_nondef.0()

declare i64 @__kittel_nondef.1()

declare i32 @__kittel_nondef.2()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

