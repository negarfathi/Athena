; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_openbsd_cmemset_alloca/svcomp_openbsd_cmemset_alloca.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i8* @cmemset(i8* %dst, i32 %c, i64 %n) #0 {
cmemset_bb0:
  %"0" = icmp ne i64 %n, 0
  br i1 %"0", label %cmemset_bb1, label %cmemset_bb3

cmemset_bb1:                                      ; preds = %cmemset_bb0
  %"1" = trunc i32 %c to i8
  br label %cmemset_bb2

cmemset_bb2:                                      ; preds = %cmemset_bb2, %cmemset_bb1
  %d.0 = phi i8* [ %dst, %cmemset_bb1 ], [ %"2", %cmemset_bb2 ]
  %.0 = phi i64 [ %n, %cmemset_bb1 ], [ %"3", %cmemset_bb2 ]
  %"2" = getelementptr inbounds i8* %d.0, i32 1
  store i8 %"1", i8* %d.0, align 1
  %"3" = add i64 %.0, -1
  %"4" = icmp ne i64 %"3", 0
  br i1 %"4", label %cmemset_bb2, label %cmemset_bb3

cmemset_bb3:                                      ; preds = %cmemset_bb2, %cmemset_bb0
  ret i8* %dst
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb4:
  %"5" = call i32 @__VERIFIER_nondet_int()
  %"6" = call i32 @__VERIFIER_nondet_int()
  %"7" = call i32 @__VERIFIER_nondet_int()
  %"8" = icmp slt i32 %"6", 1
  %n.0 = select i1 %"8", i32 1, i32 %"6"
  %"9" = sext i32 %n.0 to i64
  %"10" = mul i64 %"9", 1
  %"11" = alloca i8, i64 %"10"
  %"12" = sext i32 %n.0 to i64
  %"13" = icmp ne i64 %"12", 0
  br i1 %"13", label %main_bb5, label %main_cmemset.exit

main_bb5:                                         ; preds = %main_bb4
  %"14" = trunc i32 %"7" to i8
  br label %main_bb6

main_bb6:                                         ; preds = %main_bb6, %main_bb5
  %d.0.i = phi i8* [ %"11", %main_bb5 ], [ %"15", %main_bb6 ]
  %.0.i = phi i64 [ %"12", %main_bb5 ], [ %"16", %main_bb6 ]
  %"15" = getelementptr inbounds i8* %d.0.i, i32 1
  store i8 %"14", i8* %d.0.i, align 1
  %"16" = add i64 %.0.i, -1
  %"17" = icmp ne i64 %"16", 0
  br i1 %"17", label %main_bb6, label %main_cmemset.exit

main_cmemset.exit:                                ; preds = %main_bb4, %main_bb6
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int() #1

declare i8* @__kittel_nondef.0()

declare i32 @__kittel_nondef.1()

declare i64 @__kittel_nondef.2()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

