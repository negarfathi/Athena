; ModuleID = 'Benchmarks/TermCOMP/C/SV-COMP_Mixed_Categories/standard_compare_true-unreach-call_ground/standard_compare_true-unreach-call_ground.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define void @__VERIFIER_assert(i32 %cond) #0 {
__VERIFIER_assert_bb0:
  %"0" = icmp ne i32 %cond, 0
  br i1 %"0", label %__VERIFIER_assert_bb1, label %__VERIFIER_assert_bb2

__VERIFIER_assert_bb1:                            ; preds = %__VERIFIER_assert_bb0
  ret void

__VERIFIER_assert_bb2:                            ; preds = %__VERIFIER_assert_bb0
  call void (...)* @__VERIFIER_error() #2
  unreachable
}

; Function Attrs: noreturn
declare void @__VERIFIER_error(...) #1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb3:
  %a = alloca [100000 x i32], align 16
  %b = alloca [100000 x i32], align 16
  br label %main_bb4

main_bb4:                                         ; preds = %main_bb5, %main_bb3
  %rv.0 = phi i32 [ 1, %main_bb3 ], [ %.rv.0, %main_bb5 ]
  %i.0 = phi i32 [ 0, %main_bb3 ], [ %"9", %main_bb5 ]
  %"1" = icmp slt i32 %i.0, 100000
  br i1 %"1", label %main_bb5, label %main_bb6

main_bb5:                                         ; preds = %main_bb4
  %"2" = sext i32 %i.0 to i64
  %"3" = getelementptr inbounds [100000 x i32]* %a, i32 0, i64 %"2"
  %"4" = load i32* %"3", align 4
  %"5" = sext i32 %i.0 to i64
  %"6" = getelementptr inbounds [100000 x i32]* %b, i32 0, i64 %"5"
  %"7" = load i32* %"6", align 4
  %"8" = icmp ne i32 %"4", %"7"
  %.rv.0 = select i1 %"8", i32 0, i32 %rv.0
  %"9" = add nsw i32 %i.0, 1
  br label %main_bb4

main_bb6:                                         ; preds = %main_bb4
  %"10" = icmp ne i32 %rv.0, 0
  br i1 %"10", label %main_bb7, label %main_bb10

main_bb7:                                         ; preds = %main_bb6, %main___VERIFIER_assert.exit
  %x.0 = phi i32 [ %"19", %main___VERIFIER_assert.exit ], [ 0, %main_bb6 ]
  %"11" = icmp slt i32 %x.0, 100000
  br i1 %"11", label %main_bb8, label %main_bb10

main_bb8:                                         ; preds = %main_bb7
  %"12" = sext i32 %x.0 to i64
  %"13" = getelementptr inbounds [100000 x i32]* %a, i32 0, i64 %"12"
  %"14" = load i32* %"13", align 4
  %"15" = sext i32 %x.0 to i64
  %"16" = getelementptr inbounds [100000 x i32]* %b, i32 0, i64 %"15"
  %"17" = load i32* %"16", align 4
  %"18" = icmp eq i32 %"14", %"17"
  br i1 %"18", label %main___VERIFIER_assert.exit, label %main_bb9

main___VERIFIER_assert.exit:                      ; preds = %main_bb8
  %"19" = add nsw i32 %x.0, 1
  br label %main_bb7

main_bb9:                                         ; preds = %main_bb8
  call void (...)* @__VERIFIER_error() #3
  unreachable

main_bb10:                                        ; preds = %main_bb7, %main_bb6
  ret i32 0
}

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn }
attributes #3 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

