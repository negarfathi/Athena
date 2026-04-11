; ModuleID = 'Benchmarks/FSE/loop/Adding_Subtracting_Zero_2_T/Adding_Subtracting_Zero_2_T.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"'flag" = global i32 0, align 4

; Function Attrs: nounwind uwtable
define i32 @ff_subtitles_next_line() #0 {
ff_subtitles_next_line_bb0:
  %"0" = call i32 @__VERIFIER_nondet_int()
  %"1" = srem i32 %"0", 1000
  %"2" = load i32* @"'flag", align 4
  %"3" = icmp eq i32 %"2", 1
  br i1 %"3", label %ff_subtitles_next_line_bb3, label %ff_subtitles_next_line_bb1

ff_subtitles_next_line_bb1:                       ; preds = %ff_subtitles_next_line_bb0
  %"4" = icmp eq i32 %"1", 0
  br i1 %"4", label %ff_subtitles_next_line_bb2, label %ff_subtitles_next_line_bb4

ff_subtitles_next_line_bb2:                       ; preds = %ff_subtitles_next_line_bb1
  store i32 1, i32* @"'flag", align 4
  br label %ff_subtitles_next_line_bb3

ff_subtitles_next_line_bb3:                       ; preds = %ff_subtitles_next_line_bb0, %ff_subtitles_next_line_bb2
  ret i32 0

ff_subtitles_next_line_bb4:                       ; preds = %ff_subtitles_next_line_bb1
  %"5" = icmp slt i32 %"1", 0
  %"6" = sub nsw i32 0, %"1"
  %. = select i1 %"5", i32 %"6", i32 %"1"
  ret i32 %.
}

declare i32 @__VERIFIER_nondet_int() #1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb5:
  %"7" = call i32 @__VERIFIER_nondet_int()
  %"8" = call i32 @__VERIFIER_nondet_int()
  %"9" = icmp slt i32 %"7", 0
  %"10" = icmp slt i32 %"8", 0
  %or.cond = or i1 %"9", %"10"
  br i1 %or.cond, label %main_bb12, label %main_bb6

main_bb6:                                         ; preds = %main_bb11, %main_bb5
  %b.0 = phi i32 [ %"7", %main_bb5 ], [ %"21", %main_bb11 ]
  %"11" = icmp slt i32 %b.0, %"8"
  br i1 %"11", label %main_bb7, label %main_bb12

main_bb7:                                         ; preds = %main_bb6
  %"12" = call i32 @__VERIFIER_nondet_int() #2
  %"13" = srem i32 %"12", 1000
  %"14" = load i32* @"'flag", align 4
  %"15" = icmp eq i32 %"14", 1
  br i1 %"15", label %main_ff_subtitles_next_line.exit, label %main_bb8

main_bb8:                                         ; preds = %main_bb7
  %"16" = icmp eq i32 %"13", 0
  br i1 %"16", label %main_bb9, label %main_bb10

main_bb9:                                         ; preds = %main_bb8
  store i32 1, i32* @"'flag", align 4
  br label %main_ff_subtitles_next_line.exit

main_bb10:                                        ; preds = %main_bb8
  %"17" = icmp slt i32 %"13", 0
  %"18" = sub nsw i32 0, %"13"
  %..i = select i1 %"17", i32 %"18", i32 %"13"
  br label %main_ff_subtitles_next_line.exit

main_ff_subtitles_next_line.exit:                 ; preds = %main_bb7, %main_bb9, %main_bb10
  %"19" = phi i32 [ %..i, %main_bb10 ], [ 0, %main_bb9 ], [ 0, %main_bb7 ]
  %"20" = icmp ne i32 %"19", 0
  br i1 %"20", label %main_bb11, label %main_bb12

main_bb11:                                        ; preds = %main_ff_subtitles_next_line.exit
  %"21" = add nsw i32 %b.0, %"19"
  %"22" = sub nsw i32 %"8", 4
  %"23" = icmp sge i32 %"21", %"22"
  br i1 %"23", label %main_bb12, label %main_bb6

main_bb12:                                        ; preds = %main_bb6, %main_ff_subtitles_next_line.exit, %main_bb11, %main_bb5
  ret i32 0
}

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

