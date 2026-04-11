; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_openbsd_cstrnlen_alloca/svcomp_openbsd_cstrnlen_alloca.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @cstrnlen(i8* %str, i32 %maxlen) #0 {
cstrnlen_bb0:
  br label %cstrnlen_bb1

cstrnlen_bb1:                                     ; preds = %cstrnlen_bb3, %cstrnlen_bb0
  %cp.0 = phi i8* [ %str, %cstrnlen_bb0 ], [ %"4", %cstrnlen_bb3 ]
  %.0 = phi i32 [ %maxlen, %cstrnlen_bb0 ], [ %"5", %cstrnlen_bb3 ]
  %"0" = icmp ne i32 %.0, 0
  br i1 %"0", label %cstrnlen_bb2, label %cstrnlen_.critedge

cstrnlen_bb2:                                     ; preds = %cstrnlen_bb1
  %"1" = load i8* %cp.0, align 1
  %"2" = sext i8 %"1" to i32
  %"3" = icmp ne i32 %"2", 0
  br i1 %"3", label %cstrnlen_bb3, label %cstrnlen_.critedge

cstrnlen_bb3:                                     ; preds = %cstrnlen_bb2
  %"4" = getelementptr inbounds i8* %cp.0, i32 1
  %"5" = add nsw i32 %.0, -1
  br label %cstrnlen_bb1

cstrnlen_.critedge:                               ; preds = %cstrnlen_bb1, %cstrnlen_bb2
  %"6" = ptrtoint i8* %cp.0 to i64
  %"7" = ptrtoint i8* %str to i64
  %"8" = sub i64 %"6", %"7"
  %"9" = trunc i64 %"8" to i32
  ret i32 %"9"
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb4:
  %"10" = call i32 @__VERIFIER_nondet_int()
  %"11" = call i32 @__VERIFIER_nondet_int()
  %"12" = icmp slt i32 %"10", 1
  %. = select i1 %"12", i32 1, i32 %"10"
  %"13" = icmp slt i32 %"11", 1
  %n.0 = select i1 %"13", i32 1, i32 %"11"
  %"14" = sext i32 %. to i64
  %"15" = mul i64 %"14", 1
  %"16" = alloca i8, i64 %"15"
  %"17" = sub nsw i32 %., 1
  %"18" = sext i32 %"17" to i64
  %"19" = getelementptr inbounds i8* %"16", i64 %"18"
  store i8 0, i8* %"19", align 1
  br label %main_bb5

main_bb5:                                         ; preds = %main_bb7, %main_bb4
  %cp.0.i = phi i8* [ %"16", %main_bb4 ], [ %"24", %main_bb7 ]
  %.0.i = phi i32 [ %n.0, %main_bb4 ], [ %"25", %main_bb7 ]
  %"20" = icmp ne i32 %.0.i, 0
  br i1 %"20", label %main_bb6, label %main_cstrnlen.exit

main_bb6:                                         ; preds = %main_bb5
  %"21" = load i8* %cp.0.i, align 1
  %"22" = sext i8 %"21" to i32
  %"23" = icmp ne i32 %"22", 0
  br i1 %"23", label %main_bb7, label %main_cstrnlen.exit

main_bb7:                                         ; preds = %main_bb6
  %"24" = getelementptr inbounds i8* %cp.0.i, i32 1
  %"25" = add nsw i32 %.0.i, -1
  br label %main_bb5

main_cstrnlen.exit:                               ; preds = %main_bb5, %main_bb6
  %"26" = ptrtoint i8* %cp.0.i to i64
  %"27" = ptrtoint i8* %"16" to i64
  %"28" = sub i64 %"26", %"27"
  %"29" = trunc i64 %"28" to i32
  ret i32 %"29"
}

declare i32 @__VERIFIER_nondet_int() #1

declare i8* @__kittel_nondef.0()

declare i32 @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

