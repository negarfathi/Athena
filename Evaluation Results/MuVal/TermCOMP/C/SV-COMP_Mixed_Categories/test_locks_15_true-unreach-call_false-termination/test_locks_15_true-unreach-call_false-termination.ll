; ModuleID = 'Benchmarks/TermCOMP/C/SV-COMP_Mixed_Categories/test_locks_15_true-unreach-call_false-termination/test_locks_15_true-unreach-call_false-termination.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  %"0" = call i32 (...)* @__VERIFIER_nondet_int()
  %"1" = call i32 (...)* @__VERIFIER_nondet_int()
  %"2" = call i32 (...)* @__VERIFIER_nondet_int()
  %"3" = call i32 (...)* @__VERIFIER_nondet_int()
  %"4" = call i32 (...)* @__VERIFIER_nondet_int()
  %"5" = call i32 (...)* @__VERIFIER_nondet_int()
  %"6" = call i32 (...)* @__VERIFIER_nondet_int()
  %"7" = call i32 (...)* @__VERIFIER_nondet_int()
  %"8" = call i32 (...)* @__VERIFIER_nondet_int()
  %"9" = call i32 (...)* @__VERIFIER_nondet_int()
  %"10" = call i32 (...)* @__VERIFIER_nondet_int()
  %"11" = call i32 (...)* @__VERIFIER_nondet_int()
  %"12" = call i32 (...)* @__VERIFIER_nondet_int()
  %"13" = call i32 (...)* @__VERIFIER_nondet_int()
  %"14" = call i32 (...)* @__VERIFIER_nondet_int()
  br label %main_bb1

main_bb1:                                         ; preds = %main_bb17, %main_bb0
  %"15" = call i32 (...)* @__VERIFIER_nondet_int()
  %"16" = icmp eq i32 %"15", 0
  br i1 %"16", label %main_bb2, label %main_bb3

main_bb2:                                         ; preds = %main_bb1
  ret i32 0

main_bb3:                                         ; preds = %main_bb1
  %"17" = icmp ne i32 %"0", 0
  %. = select i1 %"17", i32 1, i32 0
  %"18" = icmp ne i32 %"1", 0
  %lk2.0 = select i1 %"18", i32 1, i32 0
  %"19" = icmp ne i32 %"2", 0
  %.1 = select i1 %"19", i32 1, i32 0
  %"20" = icmp ne i32 %"3", 0
  %lk4.0 = select i1 %"20", i32 1, i32 0
  %"21" = icmp ne i32 %"4", 0
  %.2 = select i1 %"21", i32 1, i32 0
  %"22" = icmp ne i32 %"5", 0
  %lk6.0 = select i1 %"22", i32 1, i32 0
  %"23" = icmp ne i32 %"6", 0
  %.3 = select i1 %"23", i32 1, i32 0
  %"24" = icmp ne i32 %"7", 0
  %lk8.0 = select i1 %"24", i32 1, i32 0
  %"25" = icmp ne i32 %"8", 0
  %.4 = select i1 %"25", i32 1, i32 0
  %"26" = icmp ne i32 %"9", 0
  %lk10.0 = select i1 %"26", i32 1, i32 0
  %"27" = icmp ne i32 %"10", 0
  %.5 = select i1 %"27", i32 1, i32 0
  %"28" = icmp ne i32 %"11", 0
  %lk12.0 = select i1 %"28", i32 1, i32 0
  %"29" = icmp ne i32 %"12", 0
  %.6 = select i1 %"29", i32 1, i32 0
  %"30" = icmp ne i32 %"13", 0
  %lk14.0 = select i1 %"30", i32 1, i32 0
  %"31" = icmp ne i32 %"14", 0
  %.7 = select i1 %"31", i32 1, i32 0
  %"32" = icmp ne i32 %"0", 0
  %"33" = icmp ne i32 %., 1
  %or.cond = and i1 %"32", %"33"
  br i1 %or.cond, label %main_bb18, label %main_bb4

main_bb4:                                         ; preds = %main_bb3
  %"34" = icmp ne i32 %"1", 0
  %"35" = icmp ne i32 %lk2.0, 1
  %or.cond8 = and i1 %"34", %"35"
  br i1 %or.cond8, label %main_bb18, label %main_bb5

main_bb5:                                         ; preds = %main_bb4
  %"36" = icmp ne i32 %"2", 0
  %"37" = icmp ne i32 %.1, 1
  %or.cond9 = and i1 %"36", %"37"
  br i1 %or.cond9, label %main_bb18, label %main_bb6

main_bb6:                                         ; preds = %main_bb5
  %"38" = icmp ne i32 %"3", 0
  %"39" = icmp ne i32 %lk4.0, 1
  %or.cond10 = and i1 %"38", %"39"
  br i1 %or.cond10, label %main_bb18, label %main_bb7

main_bb7:                                         ; preds = %main_bb6
  %"40" = icmp ne i32 %"4", 0
  %"41" = icmp ne i32 %.2, 1
  %or.cond11 = and i1 %"40", %"41"
  br i1 %or.cond11, label %main_bb18, label %main_bb8

main_bb8:                                         ; preds = %main_bb7
  %"42" = icmp ne i32 %"5", 0
  %"43" = icmp ne i32 %lk6.0, 1
  %or.cond12 = and i1 %"42", %"43"
  br i1 %or.cond12, label %main_bb18, label %main_bb9

main_bb9:                                         ; preds = %main_bb8
  %"44" = icmp ne i32 %"6", 0
  %"45" = icmp ne i32 %.3, 1
  %or.cond13 = and i1 %"44", %"45"
  br i1 %or.cond13, label %main_bb18, label %main_bb10

main_bb10:                                        ; preds = %main_bb9
  %"46" = icmp ne i32 %"7", 0
  %"47" = icmp ne i32 %lk8.0, 1
  %or.cond14 = and i1 %"46", %"47"
  br i1 %or.cond14, label %main_bb18, label %main_bb11

main_bb11:                                        ; preds = %main_bb10
  %"48" = icmp ne i32 %"8", 0
  %"49" = icmp ne i32 %.4, 1
  %or.cond15 = and i1 %"48", %"49"
  br i1 %or.cond15, label %main_bb18, label %main_bb12

main_bb12:                                        ; preds = %main_bb11
  %"50" = icmp ne i32 %"9", 0
  %"51" = icmp ne i32 %lk10.0, 1
  %or.cond16 = and i1 %"50", %"51"
  br i1 %or.cond16, label %main_bb18, label %main_bb13

main_bb13:                                        ; preds = %main_bb12
  %"52" = icmp ne i32 %"10", 0
  %"53" = icmp ne i32 %.5, 1
  %or.cond17 = and i1 %"52", %"53"
  br i1 %or.cond17, label %main_bb18, label %main_bb14

main_bb14:                                        ; preds = %main_bb13
  %"54" = icmp ne i32 %"11", 0
  %"55" = icmp ne i32 %lk12.0, 1
  %or.cond18 = and i1 %"54", %"55"
  br i1 %or.cond18, label %main_bb18, label %main_bb15

main_bb15:                                        ; preds = %main_bb14
  %"56" = icmp ne i32 %"12", 0
  %"57" = icmp ne i32 %.6, 1
  %or.cond19 = and i1 %"56", %"57"
  br i1 %or.cond19, label %main_bb18, label %main_bb16

main_bb16:                                        ; preds = %main_bb15
  %"58" = icmp ne i32 %"13", 0
  %"59" = icmp ne i32 %lk14.0, 1
  %or.cond20 = and i1 %"58", %"59"
  br i1 %or.cond20, label %main_bb18, label %main_bb17

main_bb17:                                        ; preds = %main_bb16
  %"60" = icmp ne i32 %"14", 0
  %"61" = icmp ne i32 %.7, 1
  %or.cond21 = and i1 %"60", %"61"
  br i1 %or.cond21, label %main_bb18, label %main_bb1

main_bb18:                                        ; preds = %main_bb17, %main_bb16, %main_bb15, %main_bb14, %main_bb13, %main_bb12, %main_bb11, %main_bb10, %main_bb9, %main_bb8, %main_bb7, %main_bb6, %main_bb5, %main_bb4, %main_bb3
  call void (...)* @__VERIFIER_error() #3
  unreachable
}

declare i32 @__VERIFIER_nondet_int(...) #1

; Function Attrs: noreturn
declare void @__VERIFIER_error(...) #2

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

