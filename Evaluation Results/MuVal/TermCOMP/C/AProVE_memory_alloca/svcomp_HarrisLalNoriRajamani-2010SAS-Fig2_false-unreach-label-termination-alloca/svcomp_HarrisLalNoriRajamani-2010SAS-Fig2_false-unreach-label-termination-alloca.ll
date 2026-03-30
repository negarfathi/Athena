; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_HarrisLalNoriRajamani-2010SAS-Fig2_false-unreach-label-termination-alloca/svcomp_HarrisLalNoriRajamani-2010SAS-Fig2_false-unreach-label-termination-alloca.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @foo() #0 {
foo_bb0:
  %"0" = alloca i8, i64 4
  %"1" = bitcast i8* %"0" to i32*
  %"2" = call i32 @__VERIFIER_nondet_int()
  %"3" = icmp ne i32 %"2", 0
  %"4" = call i32 @__VERIFIER_nondet_int()
  %"5" = icmp ne i32 %"4", 0
  %"6" = call i32 @__VERIFIER_nondet_int()
  %"7" = icmp ne i32 %"6", 0
  br i1 %"3", label %foo_bb1, label %foo_bb8

foo_bb1:                                          ; preds = %foo_bb0
  br i1 %"5", label %foo_bb2, label %foo_bb5

foo_bb2:                                          ; preds = %foo_bb1
  br i1 %"7", label %foo_bb3, label %foo_bb4

foo_bb3:                                          ; preds = %foo_bb2
  store i32 0, i32* %"1", align 4
  br label %foo_bb15

foo_bb4:                                          ; preds = %foo_bb2
  store i32 1, i32* %"1", align 4
  br label %foo_bb15

foo_bb5:                                          ; preds = %foo_bb1
  br i1 %"7", label %foo_bb6, label %foo_bb7

foo_bb6:                                          ; preds = %foo_bb5
  store i32 2, i32* %"1", align 4
  br label %foo_bb15

foo_bb7:                                          ; preds = %foo_bb5
  store i32 3, i32* %"1", align 4
  br label %foo_bb15

foo_bb8:                                          ; preds = %foo_bb0
  br i1 %"5", label %foo_bb9, label %foo_bb12

foo_bb9:                                          ; preds = %foo_bb8
  br i1 %"7", label %foo_bb10, label %foo_bb11

foo_bb10:                                         ; preds = %foo_bb9
  store i32 4, i32* %"1", align 4
  br label %foo_bb15

foo_bb11:                                         ; preds = %foo_bb9
  store i32 5, i32* %"1", align 4
  br label %foo_bb15

foo_bb12:                                         ; preds = %foo_bb8
  br i1 %"7", label %foo_bb13, label %foo_bb14

foo_bb13:                                         ; preds = %foo_bb12
  store i32 6, i32* %"1", align 4
  br label %foo_bb15

foo_bb14:                                         ; preds = %foo_bb12
  store i32 7, i32* %"1", align 4
  br label %foo_bb15

foo_bb15:                                         ; preds = %foo_bb11, %foo_bb10, %foo_bb14, %foo_bb13, %foo_bb4, %foo_bb3, %foo_bb7, %foo_bb6
  %"8" = load i32* %"1", align 4
  ret i32 %"8"
}

declare i32 @__VERIFIER_nondet_int() #1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb16:
  %"9" = alloca i8, i64 4
  %"10" = alloca i8, i64 4
  %"11" = alloca i8, i64 4
  %"12" = alloca i8, i64 4
  %"13" = alloca i8, i64 4
  %"14" = bitcast i8* %"13" to i32*
  %"15" = alloca i8, i64 4
  %"16" = bitcast i8* %"15" to i32*
  store i32 1, i32* %"14", align 4
  %"17" = call i32 @__VERIFIER_nondet_int()
  %"18" = icmp ne i32 %"17", 0
  br i1 %"18", label %main_bb17, label %main_bb18

main_bb17:                                        ; preds = %main_bb16
  %"19" = load i32* %"14", align 4
  %"20" = sub nsw i32 %"19", 1
  store i32 %"20", i32* %"14", align 4
  br label %main_bb18

main_bb18:                                        ; preds = %main_bb17, %main_bb16
  %"21" = call i32 @__VERIFIER_nondet_int()
  %"22" = icmp ne i32 %"21", 0
  br i1 %"22", label %main_bb19, label %main_bb34

main_bb19:                                        ; preds = %main_bb18
  call void @llvm.lifetime.start(i64 4, i8* %"12")
  %"23" = bitcast i8* %"12" to i32*
  %"24" = call i32 @__VERIFIER_nondet_int() #2
  %"25" = icmp ne i32 %"24", 0
  %"26" = call i32 @__VERIFIER_nondet_int() #2
  %"27" = icmp ne i32 %"26", 0
  %"28" = call i32 @__VERIFIER_nondet_int() #2
  %"29" = icmp ne i32 %"28", 0
  br i1 %"25", label %main_bb20, label %main_bb27

main_bb20:                                        ; preds = %main_bb19
  br i1 %"27", label %main_bb21, label %main_bb24

main_bb21:                                        ; preds = %main_bb20
  br i1 %"29", label %main_bb22, label %main_bb23

main_bb22:                                        ; preds = %main_bb21
  store i32 0, i32* %"23", align 4
  br label %main_foo.exit

main_bb23:                                        ; preds = %main_bb21
  store i32 1, i32* %"23", align 4
  br label %main_foo.exit

main_bb24:                                        ; preds = %main_bb20
  br i1 %"29", label %main_bb25, label %main_bb26

main_bb25:                                        ; preds = %main_bb24
  store i32 2, i32* %"23", align 4
  br label %main_foo.exit

main_bb26:                                        ; preds = %main_bb24
  store i32 3, i32* %"23", align 4
  br label %main_foo.exit

main_bb27:                                        ; preds = %main_bb19
  br i1 %"27", label %main_bb28, label %main_bb31

main_bb28:                                        ; preds = %main_bb27
  br i1 %"29", label %main_bb29, label %main_bb30

main_bb29:                                        ; preds = %main_bb28
  store i32 4, i32* %"23", align 4
  br label %main_foo.exit

main_bb30:                                        ; preds = %main_bb28
  store i32 5, i32* %"23", align 4
  br label %main_foo.exit

main_bb31:                                        ; preds = %main_bb27
  br i1 %"29", label %main_bb32, label %main_bb33

main_bb32:                                        ; preds = %main_bb31
  store i32 6, i32* %"23", align 4
  br label %main_foo.exit

main_bb33:                                        ; preds = %main_bb31
  store i32 7, i32* %"23", align 4
  br label %main_foo.exit

main_foo.exit:                                    ; preds = %main_bb22, %main_bb23, %main_bb25, %main_bb26, %main_bb29, %main_bb30, %main_bb32, %main_bb33
  call void @llvm.lifetime.end(i64 4, i8* %"12")
  br label %main_bb34

main_bb34:                                        ; preds = %main_foo.exit, %main_bb18
  %"30" = call i32 @__VERIFIER_nondet_int()
  %"31" = icmp ne i32 %"30", 0
  br i1 %"31", label %main_bb35, label %main_bb50

main_bb35:                                        ; preds = %main_bb34
  call void @llvm.lifetime.start(i64 4, i8* %"11")
  %"32" = bitcast i8* %"11" to i32*
  %"33" = call i32 @__VERIFIER_nondet_int() #2
  %"34" = icmp ne i32 %"33", 0
  %"35" = call i32 @__VERIFIER_nondet_int() #2
  %"36" = icmp ne i32 %"35", 0
  %"37" = call i32 @__VERIFIER_nondet_int() #2
  %"38" = icmp ne i32 %"37", 0
  br i1 %"34", label %main_bb36, label %main_bb43

main_bb36:                                        ; preds = %main_bb35
  br i1 %"36", label %main_bb37, label %main_bb40

main_bb37:                                        ; preds = %main_bb36
  br i1 %"38", label %main_bb38, label %main_bb39

main_bb38:                                        ; preds = %main_bb37
  store i32 0, i32* %"32", align 4
  br label %main_foo.exit1

main_bb39:                                        ; preds = %main_bb37
  store i32 1, i32* %"32", align 4
  br label %main_foo.exit1

main_bb40:                                        ; preds = %main_bb36
  br i1 %"38", label %main_bb41, label %main_bb42

main_bb41:                                        ; preds = %main_bb40
  store i32 2, i32* %"32", align 4
  br label %main_foo.exit1

main_bb42:                                        ; preds = %main_bb40
  store i32 3, i32* %"32", align 4
  br label %main_foo.exit1

main_bb43:                                        ; preds = %main_bb35
  br i1 %"36", label %main_bb44, label %main_bb47

main_bb44:                                        ; preds = %main_bb43
  br i1 %"38", label %main_bb45, label %main_bb46

main_bb45:                                        ; preds = %main_bb44
  store i32 4, i32* %"32", align 4
  br label %main_foo.exit1

main_bb46:                                        ; preds = %main_bb44
  store i32 5, i32* %"32", align 4
  br label %main_foo.exit1

main_bb47:                                        ; preds = %main_bb43
  br i1 %"38", label %main_bb48, label %main_bb49

main_bb48:                                        ; preds = %main_bb47
  store i32 6, i32* %"32", align 4
  br label %main_foo.exit1

main_bb49:                                        ; preds = %main_bb47
  store i32 7, i32* %"32", align 4
  br label %main_foo.exit1

main_foo.exit1:                                   ; preds = %main_bb38, %main_bb39, %main_bb41, %main_bb42, %main_bb45, %main_bb46, %main_bb48, %main_bb49
  call void @llvm.lifetime.end(i64 4, i8* %"11")
  br label %main_bb50

main_bb50:                                        ; preds = %main_foo.exit1, %main_bb34
  %"39" = call i32 @__VERIFIER_nondet_int()
  %"40" = icmp ne i32 %"39", 0
  br i1 %"40", label %main_bb51, label %main_bb66

main_bb51:                                        ; preds = %main_bb50
  call void @llvm.lifetime.start(i64 4, i8* %"10")
  %"41" = bitcast i8* %"10" to i32*
  %"42" = call i32 @__VERIFIER_nondet_int() #2
  %"43" = icmp ne i32 %"42", 0
  %"44" = call i32 @__VERIFIER_nondet_int() #2
  %"45" = icmp ne i32 %"44", 0
  %"46" = call i32 @__VERIFIER_nondet_int() #2
  %"47" = icmp ne i32 %"46", 0
  br i1 %"43", label %main_bb52, label %main_bb59

main_bb52:                                        ; preds = %main_bb51
  br i1 %"45", label %main_bb53, label %main_bb56

main_bb53:                                        ; preds = %main_bb52
  br i1 %"47", label %main_bb54, label %main_bb55

main_bb54:                                        ; preds = %main_bb53
  store i32 0, i32* %"41", align 4
  br label %main_foo.exit2

main_bb55:                                        ; preds = %main_bb53
  store i32 1, i32* %"41", align 4
  br label %main_foo.exit2

main_bb56:                                        ; preds = %main_bb52
  br i1 %"47", label %main_bb57, label %main_bb58

main_bb57:                                        ; preds = %main_bb56
  store i32 2, i32* %"41", align 4
  br label %main_foo.exit2

main_bb58:                                        ; preds = %main_bb56
  store i32 3, i32* %"41", align 4
  br label %main_foo.exit2

main_bb59:                                        ; preds = %main_bb51
  br i1 %"45", label %main_bb60, label %main_bb63

main_bb60:                                        ; preds = %main_bb59
  br i1 %"47", label %main_bb61, label %main_bb62

main_bb61:                                        ; preds = %main_bb60
  store i32 4, i32* %"41", align 4
  br label %main_foo.exit2

main_bb62:                                        ; preds = %main_bb60
  store i32 5, i32* %"41", align 4
  br label %main_foo.exit2

main_bb63:                                        ; preds = %main_bb59
  br i1 %"47", label %main_bb64, label %main_bb65

main_bb64:                                        ; preds = %main_bb63
  store i32 6, i32* %"41", align 4
  br label %main_foo.exit2

main_bb65:                                        ; preds = %main_bb63
  store i32 7, i32* %"41", align 4
  br label %main_foo.exit2

main_foo.exit2:                                   ; preds = %main_bb54, %main_bb55, %main_bb57, %main_bb58, %main_bb61, %main_bb62, %main_bb64, %main_bb65
  call void @llvm.lifetime.end(i64 4, i8* %"10")
  br label %main_bb66

main_bb66:                                        ; preds = %main_foo.exit2, %main_bb50
  %"48" = call i32 @__VERIFIER_nondet_int()
  %"49" = icmp ne i32 %"48", 0
  br i1 %"49", label %main_bb67, label %main_bb82

main_bb67:                                        ; preds = %main_bb66
  call void @llvm.lifetime.start(i64 4, i8* %"9")
  %"50" = bitcast i8* %"9" to i32*
  %"51" = call i32 @__VERIFIER_nondet_int() #2
  %"52" = icmp ne i32 %"51", 0
  %"53" = call i32 @__VERIFIER_nondet_int() #2
  %"54" = icmp ne i32 %"53", 0
  %"55" = call i32 @__VERIFIER_nondet_int() #2
  %"56" = icmp ne i32 %"55", 0
  br i1 %"52", label %main_bb68, label %main_bb75

main_bb68:                                        ; preds = %main_bb67
  br i1 %"54", label %main_bb69, label %main_bb72

main_bb69:                                        ; preds = %main_bb68
  br i1 %"56", label %main_bb70, label %main_bb71

main_bb70:                                        ; preds = %main_bb69
  store i32 0, i32* %"50", align 4
  br label %main_foo.exit3

main_bb71:                                        ; preds = %main_bb69
  store i32 1, i32* %"50", align 4
  br label %main_foo.exit3

main_bb72:                                        ; preds = %main_bb68
  br i1 %"56", label %main_bb73, label %main_bb74

main_bb73:                                        ; preds = %main_bb72
  store i32 2, i32* %"50", align 4
  br label %main_foo.exit3

main_bb74:                                        ; preds = %main_bb72
  store i32 3, i32* %"50", align 4
  br label %main_foo.exit3

main_bb75:                                        ; preds = %main_bb67
  br i1 %"54", label %main_bb76, label %main_bb79

main_bb76:                                        ; preds = %main_bb75
  br i1 %"56", label %main_bb77, label %main_bb78

main_bb77:                                        ; preds = %main_bb76
  store i32 4, i32* %"50", align 4
  br label %main_foo.exit3

main_bb78:                                        ; preds = %main_bb76
  store i32 5, i32* %"50", align 4
  br label %main_foo.exit3

main_bb79:                                        ; preds = %main_bb75
  br i1 %"56", label %main_bb80, label %main_bb81

main_bb80:                                        ; preds = %main_bb79
  store i32 6, i32* %"50", align 4
  br label %main_foo.exit3

main_bb81:                                        ; preds = %main_bb79
  store i32 7, i32* %"50", align 4
  br label %main_foo.exit3

main_foo.exit3:                                   ; preds = %main_bb70, %main_bb71, %main_bb73, %main_bb74, %main_bb77, %main_bb78, %main_bb80, %main_bb81
  call void @llvm.lifetime.end(i64 4, i8* %"9")
  br label %main_bb82

main_bb82:                                        ; preds = %main_foo.exit3, %main_bb66
  %"57" = call i32 @__VERIFIER_nondet_int()
  %"58" = icmp ne i32 %"57", 0
  br i1 %"58", label %main_bb83, label %main_bb84

main_bb83:                                        ; preds = %main_bb82
  %"59" = load i32* %"14", align 4
  %"60" = sub nsw i32 %"59", 1
  store i32 %"60", i32* %"14", align 4
  br label %main_bb84

main_bb84:                                        ; preds = %main_bb83, %main_bb82
  %"61" = load i32* %"14", align 4
  br label %main_bb85

main_bb85:                                        ; preds = %main_bb86, %main_bb84
  %"62" = load i32* %"16", align 4
  %"63" = icmp sgt i32 %"62", 0
  br i1 %"63", label %main_bb86, label %main_bb87

main_bb86:                                        ; preds = %main_bb85
  %"64" = load i32* %"16", align 4
  %"65" = sub nsw i32 %"64", %"61"
  store i32 %"65", i32* %"16", align 4
  br label %main_bb85

main_bb87:                                        ; preds = %main_bb85
  ret i32 0
}

declare i32* @__kittel_nondef.0()

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

declare i32 @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

