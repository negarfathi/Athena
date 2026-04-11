; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_ex2-alloca/svcomp_ex2-alloca.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @test_fun(i32 %x, i32 %y, i32 %z, i32 %flag) #0 {
test_fun_bb0:
  %"0" = alloca i8, i64 4
  %"1" = bitcast i8* %"0" to i32*
  %"2" = alloca i8, i64 4
  %"3" = bitcast i8* %"2" to i32*
  %"4" = alloca i8, i64 4
  %"5" = bitcast i8* %"4" to i32*
  %"6" = alloca i8, i64 4
  %"7" = bitcast i8* %"6" to i32*
  %"8" = alloca i8, i64 4
  %"9" = bitcast i8* %"8" to i32*
  store i32 %x, i32* %"1", align 4
  store i32 %y, i32* %"3", align 4
  store i32 %z, i32* %"5", align 4
  store i32 1, i32* %"7", align 4
  store i32 0, i32* %"9", align 4
  %"10" = load i32* %"5", align 4
  %"11" = load i32* %"1", align 4
  %"12" = load i32* %"1", align 4
  %"13" = load i32* %"1", align 4
  %"14" = load i32* %"1", align 4
  br label %test_fun_bb1

test_fun_bb1:                                     ; preds = %test_fun_bb8, %test_fun_bb0
  %"15" = load i32* %"3", align 4
  %"16" = icmp slt i32 %"15", %"10"
  br i1 %"16", label %test_fun_bb2, label %test_fun_.critedge

test_fun_bb2:                                     ; preds = %test_fun_bb1
  %"17" = load i32* %"7", align 4
  %"18" = icmp sgt i32 %"17", 0
  br i1 %"18", label %test_fun_bb3, label %test_fun_.critedge

test_fun_bb3:                                     ; preds = %test_fun_bb2
  %"19" = load i32* %"3", align 4
  %"20" = icmp sgt i32 %"19", 0
  %"21" = icmp sgt i32 %"11", 1
  %or.cond = and i1 %"20", %"21"
  %"22" = load i32* %"3", align 4
  br i1 %or.cond, label %test_fun_bb4, label %test_fun_bb5

test_fun_bb4:                                     ; preds = %test_fun_bb3
  %"23" = mul nsw i32 %"12", %"22"
  store i32 %"23", i32* %"3", align 4
  br label %test_fun_bb8

test_fun_bb5:                                     ; preds = %test_fun_bb3
  %"24" = icmp sgt i32 %"22", 0
  %"25" = icmp slt i32 %"13", -1
  %or.cond1 = and i1 %"24", %"25"
  br i1 %or.cond1, label %test_fun_bb6, label %test_fun_bb7

test_fun_bb6:                                     ; preds = %test_fun_bb5
  %"26" = sub nsw i32 0, %"14"
  %"27" = load i32* %"3", align 4
  %"28" = mul nsw i32 %"26", %"27"
  store i32 %"28", i32* %"3", align 4
  br label %test_fun_bb8

test_fun_bb7:                                     ; preds = %test_fun_bb5
  store i32 0, i32* %"7", align 4
  br label %test_fun_bb8

test_fun_bb8:                                     ; preds = %test_fun_bb6, %test_fun_bb7, %test_fun_bb4
  %"29" = load i32* %"9", align 4
  %"30" = add nsw i32 %"29", 1
  store i32 %"30", i32* %"9", align 4
  br label %test_fun_bb1

test_fun_.critedge:                               ; preds = %test_fun_bb1, %test_fun_bb2
  %"31" = load i32* %"9", align 4
  ret i32 %"31"
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb9:
  %"32" = alloca i8, i64 4
  %"33" = alloca i8, i64 4
  %"34" = alloca i8, i64 4
  %"35" = alloca i8, i64 4
  %"36" = alloca i8, i64 4
  %"37" = call i32 @__VERIFIER_nondet_int()
  %"38" = call i32 @__VERIFIER_nondet_int()
  %"39" = call i32 @__VERIFIER_nondet_int()
  %"40" = call i32 @__VERIFIER_nondet_int()
  call void @llvm.lifetime.start(i64 4, i8* %"32")
  call void @llvm.lifetime.start(i64 4, i8* %"33")
  call void @llvm.lifetime.start(i64 4, i8* %"34")
  call void @llvm.lifetime.start(i64 4, i8* %"35")
  call void @llvm.lifetime.start(i64 4, i8* %"36")
  %"41" = bitcast i8* %"32" to i32*
  %"42" = bitcast i8* %"33" to i32*
  %"43" = bitcast i8* %"34" to i32*
  %"44" = bitcast i8* %"35" to i32*
  %"45" = bitcast i8* %"36" to i32*
  store i32 %"37", i32* %"41", align 4
  store i32 %"38", i32* %"42", align 4
  store i32 %"39", i32* %"43", align 4
  store i32 1, i32* %"44", align 4
  store i32 0, i32* %"45", align 4
  %"46" = load i32* %"43", align 4
  %"47" = load i32* %"41", align 4
  %"48" = load i32* %"41", align 4
  %"49" = load i32* %"41", align 4
  %"50" = load i32* %"41", align 4
  br label %main_bb10

main_bb10:                                        ; preds = %main_bb17, %main_bb9
  %"51" = load i32* %"42", align 4
  %"52" = icmp slt i32 %"51", %"46"
  br i1 %"52", label %main_bb11, label %main_test_fun.exit

main_bb11:                                        ; preds = %main_bb10
  %"53" = load i32* %"44", align 4
  %"54" = icmp sgt i32 %"53", 0
  br i1 %"54", label %main_bb12, label %main_test_fun.exit

main_bb12:                                        ; preds = %main_bb11
  %"55" = load i32* %"42", align 4
  %"56" = icmp sgt i32 %"55", 0
  %"57" = icmp sgt i32 %"47", 1
  %or.cond.i = and i1 %"56", %"57"
  %"58" = load i32* %"42", align 4
  br i1 %or.cond.i, label %main_bb13, label %main_bb14

main_bb13:                                        ; preds = %main_bb12
  %"59" = mul nsw i32 %"48", %"58"
  store i32 %"59", i32* %"42", align 4
  br label %main_bb17

main_bb14:                                        ; preds = %main_bb12
  %"60" = icmp sgt i32 %"58", 0
  %"61" = icmp slt i32 %"49", -1
  %or.cond1.i = and i1 %"60", %"61"
  br i1 %or.cond1.i, label %main_bb15, label %main_bb16

main_bb15:                                        ; preds = %main_bb14
  %"62" = sub nsw i32 0, %"50"
  %"63" = load i32* %"42", align 4
  %"64" = mul nsw i32 %"62", %"63"
  store i32 %"64", i32* %"42", align 4
  br label %main_bb17

main_bb16:                                        ; preds = %main_bb14
  store i32 0, i32* %"44", align 4
  br label %main_bb17

main_bb17:                                        ; preds = %main_bb16, %main_bb15, %main_bb13
  %"65" = load i32* %"45", align 4
  %"66" = add nsw i32 %"65", 1
  store i32 %"66", i32* %"45", align 4
  br label %main_bb10

main_test_fun.exit:                               ; preds = %main_bb10, %main_bb11
  %"67" = load i32* %"45", align 4
  call void @llvm.lifetime.end(i64 4, i8* %"32")
  call void @llvm.lifetime.end(i64 4, i8* %"33")
  call void @llvm.lifetime.end(i64 4, i8* %"34")
  call void @llvm.lifetime.end(i64 4, i8* %"35")
  call void @llvm.lifetime.end(i64 4, i8* %"36")
  ret i32 %"67"
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

