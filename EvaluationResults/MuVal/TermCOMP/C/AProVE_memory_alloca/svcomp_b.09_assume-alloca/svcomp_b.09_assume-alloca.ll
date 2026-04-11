; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_b.09_assume-alloca/svcomp_b.09_assume-alloca.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @test_fun(i32 %x, i32 %y) #0 {
test_fun_bb0:
  %"0" = alloca i8, i64 4
  %"1" = bitcast i8* %"0" to i32*
  %"2" = alloca i8, i64 4
  %"3" = bitcast i8* %"2" to i32*
  %"4" = alloca i8, i64 4
  %"5" = bitcast i8* %"4" to i32*
  store i32 %x, i32* %"1", align 4
  store i32 %y, i32* %"3", align 4
  store i32 0, i32* %"5", align 4
  %"6" = load i32* %"1", align 4
  %"7" = icmp sle i32 %"6", 0
  br i1 %"7", label %test_fun_bb2, label %test_fun_bb1

test_fun_bb1:                                     ; preds = %test_fun_bb0
  %"8" = load i32* %"3", align 4
  %"9" = icmp sle i32 %"8", 0
  br i1 %"9", label %test_fun_bb2, label %test_fun_bb3

test_fun_bb2:                                     ; preds = %test_fun_bb1, %test_fun_bb0
  %"10" = load i32* %"1", align 4
  %"11" = load i32* %"3", align 4
  %"12" = add nsw i32 %"10", %"11"
  br label %test_fun_bb11

test_fun_bb3:                                     ; preds = %test_fun_bb1
  %"13" = load i32* %"3", align 4
  %"14" = load i32* %"3", align 4
  br label %test_fun_bb4

test_fun_bb4:                                     ; preds = %test_fun_bb9, %test_fun_bb3
  %"15" = load i32* %"1", align 4
  %"16" = icmp eq i32 %"15", 0
  %"17" = xor i1 %"16", true
  br i1 %"17", label %test_fun_bb5, label %test_fun_bb10

test_fun_bb5:                                     ; preds = %test_fun_bb4
  %"18" = load i32* %"1", align 4
  %"19" = icmp sgt i32 %"18", %"13"
  br i1 %"19", label %test_fun_bb6, label %test_fun_bb7

test_fun_bb6:                                     ; preds = %test_fun_bb5
  store i32 %"14", i32* %"1", align 4
  br label %test_fun_bb9

test_fun_bb7:                                     ; preds = %test_fun_bb5
  %"20" = load i32* %"1", align 4
  %"21" = icmp sle i32 %"20", 0
  %"22" = load i32* %"1", align 4
  br i1 %"21", label %test_fun_bb11, label %test_fun_bb8

test_fun_bb8:                                     ; preds = %test_fun_bb7
  %"23" = sub nsw i32 %"22", 1
  store i32 %"23", i32* %"1", align 4
  br label %test_fun_bb9

test_fun_bb9:                                     ; preds = %test_fun_bb8, %test_fun_bb6
  %"24" = load i32* %"5", align 4
  %"25" = add nsw i32 %"24", 1
  store i32 %"25", i32* %"5", align 4
  br label %test_fun_bb4

test_fun_bb10:                                    ; preds = %test_fun_bb4
  %"26" = load i32* %"5", align 4
  br label %test_fun_bb11

test_fun_bb11:                                    ; preds = %test_fun_bb7, %test_fun_bb10, %test_fun_bb2
  %.0 = phi i32 [ %"12", %test_fun_bb2 ], [ %"26", %test_fun_bb10 ], [ %"22", %test_fun_bb7 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb12:
  %"27" = alloca i8, i64 4
  %"28" = alloca i8, i64 4
  %"29" = alloca i8, i64 4
  %"30" = call i32 @__VERIFIER_nondet_int()
  %"31" = call i32 @__VERIFIER_nondet_int()
  call void @llvm.lifetime.start(i64 4, i8* %"27")
  call void @llvm.lifetime.start(i64 4, i8* %"28")
  call void @llvm.lifetime.start(i64 4, i8* %"29")
  %"32" = bitcast i8* %"27" to i32*
  %"33" = bitcast i8* %"28" to i32*
  %"34" = bitcast i8* %"29" to i32*
  store i32 %"30", i32* %"32", align 4
  store i32 %"31", i32* %"33", align 4
  store i32 0, i32* %"34", align 4
  %"35" = load i32* %"32", align 4
  %"36" = icmp sle i32 %"35", 0
  br i1 %"36", label %main_bb14, label %main_bb13

main_bb13:                                        ; preds = %main_bb12
  %"37" = load i32* %"33", align 4
  %"38" = icmp sle i32 %"37", 0
  br i1 %"38", label %main_bb14, label %main_bb15

main_bb14:                                        ; preds = %main_bb13, %main_bb12
  %"39" = load i32* %"32", align 4
  %"40" = load i32* %"33", align 4
  %"41" = add nsw i32 %"39", %"40"
  br label %main_test_fun.exit

main_bb15:                                        ; preds = %main_bb13
  %"42" = load i32* %"33", align 4
  %"43" = load i32* %"33", align 4
  br label %main_bb16

main_bb16:                                        ; preds = %main_bb21, %main_bb15
  %"44" = load i32* %"32", align 4
  %"45" = icmp eq i32 %"44", 0
  %"46" = xor i1 %"45", true
  br i1 %"46", label %main_bb17, label %main_bb22

main_bb17:                                        ; preds = %main_bb16
  %"47" = load i32* %"32", align 4
  %"48" = icmp sgt i32 %"47", %"42"
  br i1 %"48", label %main_bb18, label %main_bb19

main_bb18:                                        ; preds = %main_bb17
  store i32 %"43", i32* %"32", align 4
  br label %main_bb21

main_bb19:                                        ; preds = %main_bb17
  %"49" = load i32* %"32", align 4
  %"50" = icmp sle i32 %"49", 0
  %"51" = load i32* %"32", align 4
  br i1 %"50", label %main_test_fun.exit, label %main_bb20

main_bb20:                                        ; preds = %main_bb19
  %"52" = sub nsw i32 %"51", 1
  store i32 %"52", i32* %"32", align 4
  br label %main_bb21

main_bb21:                                        ; preds = %main_bb20, %main_bb18
  %"53" = load i32* %"34", align 4
  %"54" = add nsw i32 %"53", 1
  store i32 %"54", i32* %"34", align 4
  br label %main_bb16

main_bb22:                                        ; preds = %main_bb16
  %"55" = load i32* %"34", align 4
  br label %main_test_fun.exit

main_test_fun.exit:                               ; preds = %main_bb14, %main_bb19, %main_bb22
  %.0.i = phi i32 [ %"41", %main_bb14 ], [ %"55", %main_bb22 ], [ %"51", %main_bb19 ]
  call void @llvm.lifetime.end(i64 4, i8* %"27")
  call void @llvm.lifetime.end(i64 4, i8* %"28")
  call void @llvm.lifetime.end(i64 4, i8* %"29")
  ret i32 %.0.i
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32 @__kittel_nondef.0()

declare i32* @__kittel_nondef.1()

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #2

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #2

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

