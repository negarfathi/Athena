; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_strreplace_alloca/svcomp_strreplace_alloca.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @cstrreplace(i8* %s, i8 signext %old, i8 signext %_new) #0 {
cstrreplace_bb0:
  %"0" = sext i8 %old to i32
  br label %cstrreplace_bb1

cstrreplace_bb1:                                  ; preds = %cstrreplace_bb4, %cstrreplace_bb0
  %p.0 = phi i8* [ %s, %cstrreplace_bb0 ], [ %"8", %cstrreplace_bb4 ]
  %numReplaced.0 = phi i32 [ 0, %cstrreplace_bb0 ], [ %numReplaced.1, %cstrreplace_bb4 ]
  %"1" = load i8* %p.0, align 1
  %"2" = sext i8 %"1" to i32
  %"3" = icmp ne i32 %"2", 0
  br i1 %"3", label %cstrreplace_bb2, label %cstrreplace_bb5

cstrreplace_bb2:                                  ; preds = %cstrreplace_bb1
  %"4" = load i8* %p.0, align 1
  %"5" = sext i8 %"4" to i32
  %"6" = icmp eq i32 %"5", %"0"
  br i1 %"6", label %cstrreplace_bb3, label %cstrreplace_bb4

cstrreplace_bb3:                                  ; preds = %cstrreplace_bb2
  store i8 %_new, i8* %p.0, align 1
  %"7" = add nsw i32 %numReplaced.0, 1
  br label %cstrreplace_bb4

cstrreplace_bb4:                                  ; preds = %cstrreplace_bb3, %cstrreplace_bb2
  %numReplaced.1 = phi i32 [ %"7", %cstrreplace_bb3 ], [ %numReplaced.0, %cstrreplace_bb2 ]
  %"8" = getelementptr inbounds i8* %p.0, i32 1
  br label %cstrreplace_bb1

cstrreplace_bb5:                                  ; preds = %cstrreplace_bb1
  ret i32 %numReplaced.0
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb6:
  %"9" = call i32 @__VERIFIER_nondet_int()
  %"10" = icmp slt i32 %"9", 1
  %. = select i1 %"10", i32 1, i32 %"9"
  %"11" = sext i32 %. to i64
  %"12" = mul i64 %"11", 1
  %"13" = alloca i8, i64 %"12"
  %"14" = sub nsw i32 %., 1
  %"15" = sext i32 %"14" to i64
  %"16" = getelementptr inbounds i8* %"13", i64 %"15"
  store i8 0, i8* %"16", align 1
  %"17" = call i32 @__VERIFIER_nondet_int()
  %"18" = trunc i32 %"17" to i8
  %"19" = call i32 @__VERIFIER_nondet_int()
  %"20" = trunc i32 %"19" to i8
  %"21" = sext i8 %"18" to i32
  br label %main_bb7

main_bb7:                                         ; preds = %main_bb10, %main_bb6
  %p.0.i = phi i8* [ %"13", %main_bb6 ], [ %"29", %main_bb10 ]
  %numReplaced.0.i = phi i32 [ 0, %main_bb6 ], [ %numReplaced.1.i, %main_bb10 ]
  %"22" = load i8* %p.0.i, align 1
  %"23" = sext i8 %"22" to i32
  %"24" = icmp ne i32 %"23", 0
  br i1 %"24", label %main_bb8, label %main_cstrreplace.exit

main_bb8:                                         ; preds = %main_bb7
  %"25" = load i8* %p.0.i, align 1
  %"26" = sext i8 %"25" to i32
  %"27" = icmp eq i32 %"26", %"21"
  br i1 %"27", label %main_bb9, label %main_bb10

main_bb9:                                         ; preds = %main_bb8
  store i8 %"20", i8* %p.0.i, align 1
  %"28" = add nsw i32 %numReplaced.0.i, 1
  br label %main_bb10

main_bb10:                                        ; preds = %main_bb9, %main_bb8
  %numReplaced.1.i = phi i32 [ %"28", %main_bb9 ], [ %numReplaced.0.i, %main_bb8 ]
  %"29" = getelementptr inbounds i8* %p.0.i, i32 1
  br label %main_bb7

main_cstrreplace.exit:                            ; preds = %main_bb7
  ret i32 %numReplaced.0.i
}

declare i32 @__VERIFIER_nondet_int() #1

declare i8* @__kittel_nondef.0()

declare i8 @__kittel_nondef.1()

declare i32 @__kittel_nondef.2()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

