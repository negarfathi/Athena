; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_b.13-alloca/svcomp_b.13-alloca.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @test_fun(i32 %x, i32 %y, i32 %z) #0 {
test_fun_bb0:
  %"0" = alloca i8, i64 4
  %"1" = bitcast i8* %"0" to i32*
  %"2" = alloca i8, i64 4
  %"3" = bitcast i8* %"2" to i32*
  %"4" = alloca i8, i64 4
  %"5" = bitcast i8* %"4" to i32*
  %"6" = alloca i8, i64 4
  %"7" = bitcast i8* %"6" to i32*
  store i32 %x, i32* %"1", align 4
  store i32 %y, i32* %"3", align 4
  store i32 %z, i32* %"5", align 4
  store i32 0, i32* %"7", align 4
  %"8" = load i32* %"5", align 4
  %"9" = load i32* %"5", align 4
  %"10" = load i32* %"5", align 4
  %"11" = load i32* %"5", align 4
  br label %test_fun_bb1

test_fun_bb1:                                     ; preds = %test_fun_bb6, %test_fun_bb0
  %"12" = load i32* %"1", align 4
  %"13" = icmp sgt i32 %"12", %"8"
  br i1 %"13", label %test_fun_.critedge, label %test_fun_bb2

test_fun_bb2:                                     ; preds = %test_fun_bb1
  %"14" = load i32* %"3", align 4
  %"15" = icmp sgt i32 %"14", %"11"
  br i1 %"15", label %test_fun_.critedge, label %test_fun_bb7

test_fun_.critedge:                               ; preds = %test_fun_bb1, %test_fun_bb2
  %"16" = load i32* %"1", align 4
  %"17" = icmp sgt i32 %"16", %"9"
  br i1 %"17", label %test_fun_bb3, label %test_fun_bb4

test_fun_bb3:                                     ; preds = %test_fun_.critedge
  %"18" = load i32* %"1", align 4
  %"19" = sub nsw i32 %"18", 1
  store i32 %"19", i32* %"1", align 4
  br label %test_fun_bb6

test_fun_bb4:                                     ; preds = %test_fun_.critedge
  %"20" = load i32* %"3", align 4
  %"21" = icmp sgt i32 %"20", %"10"
  br i1 %"21", label %test_fun_bb5, label %test_fun_bb6

test_fun_bb5:                                     ; preds = %test_fun_bb4
  %"22" = load i32* %"3", align 4
  %"23" = sub nsw i32 %"22", 1
  store i32 %"23", i32* %"3", align 4
  br label %test_fun_bb6

test_fun_bb6:                                     ; preds = %test_fun_bb5, %test_fun_bb4, %test_fun_bb3
  %"24" = load i32* %"7", align 4
  %"25" = add nsw i32 %"24", 1
  store i32 %"25", i32* %"7", align 4
  br label %test_fun_bb1

test_fun_bb7:                                     ; preds = %test_fun_bb2
  %"26" = load i32* %"7", align 4
  ret i32 %"26"
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb8:
  %"27" = alloca i8, i64 4
  %"28" = alloca i8, i64 4
  %"29" = alloca i8, i64 4
  %"30" = alloca i8, i64 4
  %"31" = call i32 @__VERIFIER_nondet_int()
  %"32" = call i32 @__VERIFIER_nondet_int()
  %"33" = call i32 @__VERIFIER_nondet_int()
  call void @llvm.lifetime.start(i64 4, i8* %"27")
  call void @llvm.lifetime.start(i64 4, i8* %"28")
  call void @llvm.lifetime.start(i64 4, i8* %"29")
  call void @llvm.lifetime.start(i64 4, i8* %"30")
  %"34" = bitcast i8* %"27" to i32*
  %"35" = bitcast i8* %"28" to i32*
  %"36" = bitcast i8* %"29" to i32*
  %"37" = bitcast i8* %"30" to i32*
  store i32 %"31", i32* %"34", align 4
  store i32 %"32", i32* %"35", align 4
  store i32 %"33", i32* %"36", align 4
  store i32 0, i32* %"37", align 4
  %"38" = load i32* %"36", align 4
  %"39" = load i32* %"36", align 4
  %"40" = load i32* %"36", align 4
  %"41" = load i32* %"36", align 4
  br label %main_bb9

main_bb9:                                         ; preds = %main_bb14, %main_bb8
  %"42" = load i32* %"34", align 4
  %"43" = icmp sgt i32 %"42", %"38"
  br i1 %"43", label %main_.critedge.i, label %main_bb10

main_bb10:                                        ; preds = %main_bb9
  %"44" = load i32* %"35", align 4
  %"45" = icmp sgt i32 %"44", %"41"
  br i1 %"45", label %main_.critedge.i, label %main_test_fun.exit

main_.critedge.i:                                 ; preds = %main_bb10, %main_bb9
  %"46" = load i32* %"34", align 4
  %"47" = icmp sgt i32 %"46", %"39"
  br i1 %"47", label %main_bb11, label %main_bb12

main_bb11:                                        ; preds = %main_.critedge.i
  %"48" = load i32* %"34", align 4
  %"49" = sub nsw i32 %"48", 1
  store i32 %"49", i32* %"34", align 4
  br label %main_bb14

main_bb12:                                        ; preds = %main_.critedge.i
  %"50" = load i32* %"35", align 4
  %"51" = icmp sgt i32 %"50", %"40"
  br i1 %"51", label %main_bb13, label %main_bb14

main_bb13:                                        ; preds = %main_bb12
  %"52" = load i32* %"35", align 4
  %"53" = sub nsw i32 %"52", 1
  store i32 %"53", i32* %"35", align 4
  br label %main_bb14

main_bb14:                                        ; preds = %main_bb13, %main_bb12, %main_bb11
  %"54" = load i32* %"37", align 4
  %"55" = add nsw i32 %"54", 1
  store i32 %"55", i32* %"37", align 4
  br label %main_bb9

main_test_fun.exit:                               ; preds = %main_bb10
  %"56" = load i32* %"37", align 4
  call void @llvm.lifetime.end(i64 4, i8* %"27")
  call void @llvm.lifetime.end(i64 4, i8* %"28")
  call void @llvm.lifetime.end(i64 4, i8* %"29")
  call void @llvm.lifetime.end(i64 4, i8* %"30")
  ret i32 %"56"
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

