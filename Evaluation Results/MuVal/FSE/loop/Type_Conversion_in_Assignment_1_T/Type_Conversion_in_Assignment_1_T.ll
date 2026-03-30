; ModuleID = 'Benchmarks/FSE/loop/Type_Conversion_in_Assignment_1_T/Type_Conversion_in_Assignment_1_T.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"'flag" = global i32 0, align 4

; Function Attrs: nounwind uwtable
define i32 @fgetc() #0 {
fgetc_bb0:
  %"0" = load i32* @"'flag", align 4
  %"1" = icmp sgt i32 %"0", 1000
  br i1 %"1", label %fgetc_bb2, label %fgetc_bb1

fgetc_bb1:                                        ; preds = %fgetc_bb0
  %"2" = load i32* @"'flag", align 4
  %"3" = add nsw i32 %"2", 1
  store i32 %"3", i32* @"'flag", align 4
  %"4" = call i32 @__VERIFIER_nondet_int()
  %"5" = icmp slt i32 %"4", 0
  %"6" = sub nsw i32 0, %"4"
  %. = select i1 %"5", i32 %"6", i32 %"4"
  %"7" = srem i32 %., 256
  br label %fgetc_bb2

fgetc_bb2:                                        ; preds = %fgetc_bb0, %fgetc_bb1
  %.0 = phi i32 [ %"7", %fgetc_bb1 ], [ -1, %fgetc_bb0 ]
  ret i32 %.0
}

declare i32 @__VERIFIER_nondet_int() #1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb3:
  br label %main_bb4

main_bb4:                                         ; preds = %main_NewDefault, %main_bb3
  %"8" = load i32* @"'flag", align 4
  %"9" = icmp sgt i32 %"8", 1000
  br i1 %"9", label %main_fgetc.exit, label %main_bb5

main_bb5:                                         ; preds = %main_bb4
  %"10" = load i32* @"'flag", align 4
  %"11" = add nsw i32 %"10", 1
  store i32 %"11", i32* @"'flag", align 4
  %"12" = call i32 @__VERIFIER_nondet_int() #2
  %"13" = icmp slt i32 %"12", 0
  %"14" = sub nsw i32 0, %"12"
  %..i = select i1 %"13", i32 %"14", i32 %"12"
  %"15" = srem i32 %..i, 256
  br label %main_fgetc.exit

main_fgetc.exit:                                  ; preds = %main_bb4, %main_bb5
  %.0.i = phi i32 [ %"15", %main_bb5 ], [ -1, %main_bb4 ]
  br label %main_LeafBlock

main_LeafBlock:                                   ; preds = %main_fgetc.exit
  %.0.i.off = add i32 %.0.i, 1
  %SwitchLeaf = icmp ule i32 %.0.i.off, 1
  br i1 %SwitchLeaf, label %main_bb6, label %main_NewDefault

main_bb6:                                         ; preds = %main_LeafBlock
  ret i32 0

main_NewDefault:                                  ; preds = %main_LeafBlock
  br label %main_bb4
}

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

