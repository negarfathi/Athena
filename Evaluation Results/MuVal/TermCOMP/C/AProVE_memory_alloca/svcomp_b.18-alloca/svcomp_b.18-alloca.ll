; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_b.18-alloca/svcomp_b.18-alloca.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @test_fun(i32 %x, i32 %y) #0 {
test_fun_bb0:
  %"0" = alloca i8, i64 4
  %"1" = bitcast i8* %"0" to i32*
  %"2" = alloca i8, i64 4
  %"3" = bitcast i8* %"2" to i32*
  store i32 %x, i32* %"1", align 4
  store i32 %y, i32* %"3", align 4
  br label %test_fun_bb1

test_fun_bb1:                                     ; preds = %test_fun_bb5, %test_fun_bb7, %test_fun_bb0
  %"4" = load i32* %"1", align 4
  %"5" = icmp sgt i32 %"4", 0
  br i1 %"5", label %test_fun_bb2, label %test_fun_bb3

test_fun_bb2:                                     ; preds = %test_fun_bb1
  %"6" = load i32* %"3", align 4
  %"7" = icmp sgt i32 %"6", 0
  br label %test_fun_bb3

test_fun_bb3:                                     ; preds = %test_fun_bb2, %test_fun_bb1
  %"8" = phi i1 [ false, %test_fun_bb1 ], [ %"7", %test_fun_bb2 ]
  %"9" = load i32* %"1", align 4
  %"10" = load i32* %"3", align 4
  br i1 %"8", label %test_fun_bb4, label %test_fun_bb9

test_fun_bb4:                                     ; preds = %test_fun_bb3
  %"11" = icmp sgt i32 %"9", %"10"
  br i1 %"11", label %test_fun_bb5, label %test_fun_bb7

test_fun_bb5:                                     ; preds = %test_fun_bb4, %test_fun_bb6
  %"12" = load i32* %"1", align 4
  %"13" = icmp sgt i32 %"12", 0
  br i1 %"13", label %test_fun_bb6, label %test_fun_bb1

test_fun_bb6:                                     ; preds = %test_fun_bb5
  %"14" = load i32* %"1", align 4
  %"15" = sub nsw i32 %"14", 1
  store i32 %"15", i32* %"1", align 4
  br label %test_fun_bb5

test_fun_bb7:                                     ; preds = %test_fun_bb4, %test_fun_bb8
  %"16" = load i32* %"3", align 4
  %"17" = icmp sgt i32 %"16", 0
  br i1 %"17", label %test_fun_bb8, label %test_fun_bb1

test_fun_bb8:                                     ; preds = %test_fun_bb7
  %"18" = load i32* %"3", align 4
  %"19" = sub nsw i32 %"18", 1
  store i32 %"19", i32* %"3", align 4
  br label %test_fun_bb7

test_fun_bb9:                                     ; preds = %test_fun_bb3
  %"20" = add nsw i32 %"9", %"10"
  ret i32 %"20"
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb10:
  %"21" = alloca i8, i64 4
  %"22" = alloca i8, i64 4
  %"23" = call i32 @__VERIFIER_nondet_int()
  %"24" = call i32 @__VERIFIER_nondet_int()
  call void @llvm.lifetime.start(i64 4, i8* %"21")
  call void @llvm.lifetime.start(i64 4, i8* %"22")
  %"25" = bitcast i8* %"21" to i32*
  %"26" = bitcast i8* %"22" to i32*
  store i32 %"23", i32* %"25", align 4
  store i32 %"24", i32* %"26", align 4
  br label %main_bb11

main_bb11:                                        ; preds = %main_bb17, %main_bb15, %main_bb10
  %"27" = load i32* %"25", align 4
  %"28" = icmp sgt i32 %"27", 0
  br i1 %"28", label %main_bb12, label %main_bb13

main_bb12:                                        ; preds = %main_bb11
  %"29" = load i32* %"26", align 4
  %"30" = icmp sgt i32 %"29", 0
  br label %main_bb13

main_bb13:                                        ; preds = %main_bb12, %main_bb11
  %"31" = phi i1 [ false, %main_bb11 ], [ %"30", %main_bb12 ]
  %"32" = load i32* %"25", align 4
  %"33" = load i32* %"26", align 4
  br i1 %"31", label %main_bb14, label %main_test_fun.exit

main_bb14:                                        ; preds = %main_bb13
  %"34" = icmp sgt i32 %"32", %"33"
  br i1 %"34", label %main_bb15, label %main_bb17

main_bb15:                                        ; preds = %main_bb16, %main_bb14
  %"35" = load i32* %"25", align 4
  %"36" = icmp sgt i32 %"35", 0
  br i1 %"36", label %main_bb16, label %main_bb11

main_bb16:                                        ; preds = %main_bb15
  %"37" = load i32* %"25", align 4
  %"38" = sub nsw i32 %"37", 1
  store i32 %"38", i32* %"25", align 4
  br label %main_bb15

main_bb17:                                        ; preds = %main_bb18, %main_bb14
  %"39" = load i32* %"26", align 4
  %"40" = icmp sgt i32 %"39", 0
  br i1 %"40", label %main_bb18, label %main_bb11

main_bb18:                                        ; preds = %main_bb17
  %"41" = load i32* %"26", align 4
  %"42" = sub nsw i32 %"41", 1
  store i32 %"42", i32* %"26", align 4
  br label %main_bb17

main_test_fun.exit:                               ; preds = %main_bb13
  %"43" = add nsw i32 %"32", %"33"
  call void @llvm.lifetime.end(i64 4, i8* %"21")
  call void @llvm.lifetime.end(i64 4, i8* %"22")
  ret i32 %"43"
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

