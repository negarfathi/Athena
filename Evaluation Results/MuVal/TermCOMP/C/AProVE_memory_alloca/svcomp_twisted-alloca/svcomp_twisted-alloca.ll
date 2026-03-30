; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_twisted-alloca/svcomp_twisted-alloca.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @f(i32 %k, i32 %l) #0 {
f_bb0:
  %"0" = alloca i8, i64 4
  %"1" = bitcast i8* %"0" to i32*
  %"2" = alloca i8, i64 4
  %"3" = bitcast i8* %"2" to i32*
  %"4" = alloca i8, i64 4
  %"5" = bitcast i8* %"4" to i32*
  %"6" = alloca i8, i64 4
  %"7" = bitcast i8* %"6" to i32*
  store i32 %k, i32* %"1", align 4
  store i32 %l, i32* %"3", align 4
  store i32 0, i32* %"5", align 4
  store i32 0, i32* %"7", align 4
  %"8" = load i32* %"1", align 4
  br label %f_bb1

f_bb1:                                            ; preds = %f_bb5, %f_bb2, %f_bb0
  %"9" = load i32* %"5", align 4
  %"10" = icmp slt i32 %"9", %"8"
  br i1 %"10", label %f_bb2, label %f_bb3

f_bb2:                                            ; preds = %f_bb1
  %"11" = load i32* %"5", align 4
  %"12" = add nsw i32 %"11", 1
  store i32 %"12", i32* %"5", align 4
  %"13" = load i32* %"5", align 4
  %"14" = srem i32 %"13", 2
  %"15" = icmp ne i32 %"14", 0
  br i1 %"15", label %f_bb1, label %f_bb3

f_bb3:                                            ; preds = %f_bb1, %f_bb2
  %"16" = load i32* %"5", align 4
  %"17" = srem i32 %"16", 2
  br label %f_bb4

f_bb4:                                            ; preds = %f_bb5, %f_bb3
  %"18" = load i32* %"7", align 4
  %"19" = icmp slt i32 %"18", 1
  br i1 %"19", label %f_bb5, label %f_bb6

f_bb5:                                            ; preds = %f_bb4
  %"20" = load i32* %"7", align 4
  %"21" = add nsw i32 %"20", 1
  store i32 %"21", i32* %"7", align 4
  %"22" = icmp ne i32 %"17", 0
  br i1 %"22", label %f_bb4, label %f_bb1

f_bb6:                                            ; preds = %f_bb4
  %"23" = load i32* %"5", align 4
  %"24" = load i32* %"7", align 4
  %"25" = add nsw i32 %"23", %"24"
  ret i32 %"25"
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb7:
  %"26" = alloca i8, i64 4
  %"27" = alloca i8, i64 4
  %"28" = alloca i8, i64 4
  %"29" = alloca i8, i64 4
  %"30" = call i32 @__VERIFIER_nondet_int()
  %"31" = call i32 @__VERIFIER_nondet_int()
  call void @llvm.lifetime.start(i64 4, i8* %"26")
  call void @llvm.lifetime.start(i64 4, i8* %"27")
  call void @llvm.lifetime.start(i64 4, i8* %"28")
  call void @llvm.lifetime.start(i64 4, i8* %"29")
  %"32" = bitcast i8* %"26" to i32*
  %"33" = bitcast i8* %"27" to i32*
  %"34" = bitcast i8* %"28" to i32*
  %"35" = bitcast i8* %"29" to i32*
  store i32 %"30", i32* %"32", align 4
  store i32 %"31", i32* %"33", align 4
  store i32 0, i32* %"34", align 4
  store i32 0, i32* %"35", align 4
  %"36" = load i32* %"32", align 4
  br label %main_bb8

main_bb8:                                         ; preds = %main_bb12, %main_bb9, %main_bb7
  %"37" = load i32* %"34", align 4
  %"38" = icmp slt i32 %"37", %"36"
  br i1 %"38", label %main_bb9, label %main_bb10

main_bb9:                                         ; preds = %main_bb8
  %"39" = load i32* %"34", align 4
  %"40" = add nsw i32 %"39", 1
  store i32 %"40", i32* %"34", align 4
  %"41" = load i32* %"34", align 4
  %"42" = srem i32 %"41", 2
  %"43" = icmp ne i32 %"42", 0
  br i1 %"43", label %main_bb8, label %main_bb10

main_bb10:                                        ; preds = %main_bb9, %main_bb8
  %"44" = load i32* %"34", align 4
  %"45" = srem i32 %"44", 2
  br label %main_bb11

main_bb11:                                        ; preds = %main_bb12, %main_bb10
  %"46" = load i32* %"35", align 4
  %"47" = icmp slt i32 %"46", 1
  br i1 %"47", label %main_bb12, label %main_f.exit

main_bb12:                                        ; preds = %main_bb11
  %"48" = load i32* %"35", align 4
  %"49" = add nsw i32 %"48", 1
  store i32 %"49", i32* %"35", align 4
  %"50" = icmp ne i32 %"45", 0
  br i1 %"50", label %main_bb11, label %main_bb8

main_f.exit:                                      ; preds = %main_bb11
  %"51" = load i32* %"34", align 4
  %"52" = load i32* %"35", align 4
  %"53" = add nsw i32 %"51", %"52"
  call void @llvm.lifetime.end(i64 4, i8* %"26")
  call void @llvm.lifetime.end(i64 4, i8* %"27")
  call void @llvm.lifetime.end(i64 4, i8* %"28")
  call void @llvm.lifetime.end(i64 4, i8* %"29")
  ret i32 %"53"
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

