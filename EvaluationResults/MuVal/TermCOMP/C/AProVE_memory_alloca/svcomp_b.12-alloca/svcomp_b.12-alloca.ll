; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_b.12-alloca/svcomp_b.12-alloca.bc'
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
  br label %test_fun_bb1

test_fun_bb1:                                     ; preds = %test_fun_bb6, %test_fun_bb0
  %"6" = load i32* %"1", align 4
  %"7" = icmp sgt i32 %"6", 0
  br i1 %"7", label %test_fun_.critedge, label %test_fun_bb2

test_fun_bb2:                                     ; preds = %test_fun_bb1
  %"8" = load i32* %"3", align 4
  %"9" = icmp sgt i32 %"8", 0
  br i1 %"9", label %test_fun_.critedge, label %test_fun_bb7

test_fun_.critedge:                               ; preds = %test_fun_bb1, %test_fun_bb2
  %"10" = load i32* %"1", align 4
  %"11" = icmp sgt i32 %"10", 0
  br i1 %"11", label %test_fun_bb3, label %test_fun_bb4

test_fun_bb3:                                     ; preds = %test_fun_.critedge
  %"12" = load i32* %"1", align 4
  %"13" = sub nsw i32 %"12", 1
  store i32 %"13", i32* %"1", align 4
  br label %test_fun_bb6

test_fun_bb4:                                     ; preds = %test_fun_.critedge
  %"14" = load i32* %"3", align 4
  %"15" = icmp sgt i32 %"14", 0
  br i1 %"15", label %test_fun_bb5, label %test_fun_bb6

test_fun_bb5:                                     ; preds = %test_fun_bb4
  %"16" = load i32* %"3", align 4
  %"17" = sub nsw i32 %"16", 1
  store i32 %"17", i32* %"3", align 4
  br label %test_fun_bb6

test_fun_bb6:                                     ; preds = %test_fun_bb5, %test_fun_bb4, %test_fun_bb3
  %"18" = load i32* %"5", align 4
  %"19" = add nsw i32 %"18", 1
  store i32 %"19", i32* %"5", align 4
  br label %test_fun_bb1

test_fun_bb7:                                     ; preds = %test_fun_bb2
  %"20" = load i32* %"5", align 4
  ret i32 %"20"
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb8:
  %"21" = alloca i8, i64 4
  %"22" = alloca i8, i64 4
  %"23" = alloca i8, i64 4
  %"24" = call i32 @__VERIFIER_nondet_int()
  %"25" = call i32 @__VERIFIER_nondet_int()
  call void @llvm.lifetime.start(i64 4, i8* %"21")
  call void @llvm.lifetime.start(i64 4, i8* %"22")
  call void @llvm.lifetime.start(i64 4, i8* %"23")
  %"26" = bitcast i8* %"21" to i32*
  %"27" = bitcast i8* %"22" to i32*
  %"28" = bitcast i8* %"23" to i32*
  store i32 %"24", i32* %"26", align 4
  store i32 %"25", i32* %"27", align 4
  store i32 0, i32* %"28", align 4
  br label %main_bb9

main_bb9:                                         ; preds = %main_bb14, %main_bb8
  %"29" = load i32* %"26", align 4
  %"30" = icmp sgt i32 %"29", 0
  br i1 %"30", label %main_.critedge.i, label %main_bb10

main_bb10:                                        ; preds = %main_bb9
  %"31" = load i32* %"27", align 4
  %"32" = icmp sgt i32 %"31", 0
  br i1 %"32", label %main_.critedge.i, label %main_test_fun.exit

main_.critedge.i:                                 ; preds = %main_bb10, %main_bb9
  %"33" = load i32* %"26", align 4
  %"34" = icmp sgt i32 %"33", 0
  br i1 %"34", label %main_bb11, label %main_bb12

main_bb11:                                        ; preds = %main_.critedge.i
  %"35" = load i32* %"26", align 4
  %"36" = sub nsw i32 %"35", 1
  store i32 %"36", i32* %"26", align 4
  br label %main_bb14

main_bb12:                                        ; preds = %main_.critedge.i
  %"37" = load i32* %"27", align 4
  %"38" = icmp sgt i32 %"37", 0
  br i1 %"38", label %main_bb13, label %main_bb14

main_bb13:                                        ; preds = %main_bb12
  %"39" = load i32* %"27", align 4
  %"40" = sub nsw i32 %"39", 1
  store i32 %"40", i32* %"27", align 4
  br label %main_bb14

main_bb14:                                        ; preds = %main_bb13, %main_bb12, %main_bb11
  %"41" = load i32* %"28", align 4
  %"42" = add nsw i32 %"41", 1
  store i32 %"42", i32* %"28", align 4
  br label %main_bb9

main_test_fun.exit:                               ; preds = %main_bb10
  %"43" = load i32* %"28", align 4
  call void @llvm.lifetime.end(i64 4, i8* %"21")
  call void @llvm.lifetime.end(i64 4, i8* %"22")
  call void @llvm.lifetime.end(i64 4, i8* %"23")
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

