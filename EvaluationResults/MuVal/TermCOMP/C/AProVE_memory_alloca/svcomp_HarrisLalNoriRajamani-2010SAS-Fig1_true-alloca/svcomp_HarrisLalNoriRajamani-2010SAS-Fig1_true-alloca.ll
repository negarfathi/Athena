; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_HarrisLalNoriRajamani-2010SAS-Fig1_true-alloca/svcomp_HarrisLalNoriRajamani-2010SAS-Fig1_true-alloca.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define void @f(i32 %d) #0 {
f_bb0:
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
  store i32 %d, i32* %"1", align 4
  store i32 1, i32* %"3", align 4
  store i32 1, i32* %"5", align 4
  store i32 1, i32* %"7", align 4
  store i32 1, i32* %"9", align 4
  %"10" = load i32* %"7", align 4
  %"11" = icmp sgt i32 %"10", 1073741823
  br i1 %"11", label %f_.critedge, label %f_bb1

f_bb1:                                            ; preds = %f_bb0
  %"12" = load i32* %"7", align 4
  br label %f_bb2

f_bb2:                                            ; preds = %f_bb3, %f_bb1
  %"13" = load i32* %"9", align 4
  %"14" = icmp slt i32 %"13", %"12"
  br i1 %"14", label %f_bb3, label %f_bb4

f_bb3:                                            ; preds = %f_bb2
  %"15" = load i32* %"9", align 4
  %"16" = mul nsw i32 2, %"15"
  store i32 %"16", i32* %"9", align 4
  br label %f_bb2

f_bb4:                                            ; preds = %f_bb2
  %"17" = load i32* %"1", align 4
  %"18" = load i32* %"1", align 4
  br label %f_bb5

f_bb5:                                            ; preds = %f_bb8, %f_bb9, %f_bb4
  %"19" = load i32* %"3", align 4
  %"20" = icmp sgt i32 %"19", 0
  br i1 %"20", label %f_bb6, label %f_.critedge

f_bb6:                                            ; preds = %f_bb5
  %"21" = load i32* %"5", align 4
  %"22" = icmp sgt i32 %"21", 0
  br i1 %"22", label %f_bb7, label %f_.critedge

f_bb7:                                            ; preds = %f_bb6
  %"23" = call i32 @__VERIFIER_nondet_int()
  %"24" = icmp ne i32 %"23", 0
  br i1 %"24", label %f_bb8, label %f_bb9

f_bb8:                                            ; preds = %f_bb7
  %"25" = load i32* %"3", align 4
  %"26" = sub nsw i32 %"25", %"17"
  store i32 %"26", i32* %"3", align 4
  %"27" = call i32 @__VERIFIER_nondet_int()
  store i32 %"27", i32* %"5", align 4
  %"28" = load i32* %"9", align 4
  %"29" = sub nsw i32 %"28", 1
  store i32 %"29", i32* %"9", align 4
  br label %f_bb5

f_bb9:                                            ; preds = %f_bb7
  %"30" = load i32* %"5", align 4
  %"31" = sub nsw i32 %"30", %"18"
  store i32 %"31", i32* %"5", align 4
  br label %f_bb5

f_.critedge:                                      ; preds = %f_bb5, %f_bb0, %f_bb6
  ret void
}

declare i32 @__VERIFIER_nondet_int() #1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb10:
  %"32" = alloca i8, i64 4
  %"33" = alloca i8, i64 4
  %"34" = alloca i8, i64 4
  %"35" = alloca i8, i64 4
  %"36" = alloca i8, i64 4
  %"37" = alloca i8, i64 4
  %"38" = alloca i8, i64 4
  %"39" = alloca i8, i64 4
  %"40" = alloca i8, i64 4
  %"41" = alloca i8, i64 4
  %"42" = call i32 @__VERIFIER_nondet_int()
  %"43" = icmp ne i32 %"42", 0
  br i1 %"43", label %main_bb11, label %main_bb21

main_bb11:                                        ; preds = %main_bb10
  call void @llvm.lifetime.start(i64 4, i8* %"37")
  call void @llvm.lifetime.start(i64 4, i8* %"38")
  call void @llvm.lifetime.start(i64 4, i8* %"39")
  call void @llvm.lifetime.start(i64 4, i8* %"40")
  call void @llvm.lifetime.start(i64 4, i8* %"41")
  %"44" = bitcast i8* %"37" to i32*
  %"45" = bitcast i8* %"38" to i32*
  %"46" = bitcast i8* %"39" to i32*
  %"47" = bitcast i8* %"40" to i32*
  %"48" = bitcast i8* %"41" to i32*
  store i32 1, i32* %"44", align 4
  store i32 1, i32* %"45", align 4
  store i32 1, i32* %"46", align 4
  store i32 1, i32* %"47", align 4
  store i32 1, i32* %"48", align 4
  %"49" = load i32* %"47", align 4
  %"50" = icmp sgt i32 %"49", 1073741823
  br i1 %"50", label %main_f.exit, label %main_bb12

main_bb12:                                        ; preds = %main_bb11
  %"51" = load i32* %"47", align 4
  br label %main_bb13

main_bb13:                                        ; preds = %main_bb14, %main_bb12
  %"52" = load i32* %"48", align 4
  %"53" = icmp slt i32 %"52", %"51"
  br i1 %"53", label %main_bb14, label %main_bb15

main_bb14:                                        ; preds = %main_bb13
  %"54" = load i32* %"48", align 4
  %"55" = mul nsw i32 2, %"54"
  store i32 %"55", i32* %"48", align 4
  br label %main_bb13

main_bb15:                                        ; preds = %main_bb13
  %"56" = load i32* %"44", align 4
  %"57" = load i32* %"44", align 4
  br label %main_bb16

main_bb16:                                        ; preds = %main_bb20, %main_bb19, %main_bb15
  %"58" = load i32* %"45", align 4
  %"59" = icmp sgt i32 %"58", 0
  br i1 %"59", label %main_bb17, label %main_f.exit

main_bb17:                                        ; preds = %main_bb16
  %"60" = load i32* %"46", align 4
  %"61" = icmp sgt i32 %"60", 0
  br i1 %"61", label %main_bb18, label %main_f.exit

main_bb18:                                        ; preds = %main_bb17
  %"62" = call i32 @__VERIFIER_nondet_int() #2
  %"63" = icmp ne i32 %"62", 0
  br i1 %"63", label %main_bb19, label %main_bb20

main_bb19:                                        ; preds = %main_bb18
  %"64" = load i32* %"45", align 4
  %"65" = sub nsw i32 %"64", %"56"
  store i32 %"65", i32* %"45", align 4
  %"66" = call i32 @__VERIFIER_nondet_int() #2
  store i32 %"66", i32* %"46", align 4
  %"67" = load i32* %"48", align 4
  %"68" = sub nsw i32 %"67", 1
  store i32 %"68", i32* %"48", align 4
  br label %main_bb16

main_bb20:                                        ; preds = %main_bb18
  %"69" = load i32* %"46", align 4
  %"70" = sub nsw i32 %"69", %"57"
  store i32 %"70", i32* %"46", align 4
  br label %main_bb16

main_f.exit:                                      ; preds = %main_bb11, %main_bb16, %main_bb17
  call void @llvm.lifetime.end(i64 4, i8* %"37")
  call void @llvm.lifetime.end(i64 4, i8* %"38")
  call void @llvm.lifetime.end(i64 4, i8* %"39")
  call void @llvm.lifetime.end(i64 4, i8* %"40")
  call void @llvm.lifetime.end(i64 4, i8* %"41")
  br label %main_bb31

main_bb21:                                        ; preds = %main_bb10
  call void @llvm.lifetime.start(i64 4, i8* %"32")
  call void @llvm.lifetime.start(i64 4, i8* %"33")
  call void @llvm.lifetime.start(i64 4, i8* %"34")
  call void @llvm.lifetime.start(i64 4, i8* %"35")
  call void @llvm.lifetime.start(i64 4, i8* %"36")
  %"71" = bitcast i8* %"32" to i32*
  %"72" = bitcast i8* %"33" to i32*
  %"73" = bitcast i8* %"34" to i32*
  %"74" = bitcast i8* %"35" to i32*
  %"75" = bitcast i8* %"36" to i32*
  store i32 2, i32* %"71", align 4
  store i32 1, i32* %"72", align 4
  store i32 1, i32* %"73", align 4
  store i32 1, i32* %"74", align 4
  store i32 1, i32* %"75", align 4
  %"76" = load i32* %"74", align 4
  %"77" = icmp sgt i32 %"76", 1073741823
  br i1 %"77", label %main_f.exit1, label %main_bb22

main_bb22:                                        ; preds = %main_bb21
  %"78" = load i32* %"74", align 4
  br label %main_bb23

main_bb23:                                        ; preds = %main_bb24, %main_bb22
  %"79" = load i32* %"75", align 4
  %"80" = icmp slt i32 %"79", %"78"
  br i1 %"80", label %main_bb24, label %main_bb25

main_bb24:                                        ; preds = %main_bb23
  %"81" = load i32* %"75", align 4
  %"82" = mul nsw i32 2, %"81"
  store i32 %"82", i32* %"75", align 4
  br label %main_bb23

main_bb25:                                        ; preds = %main_bb23
  %"83" = load i32* %"71", align 4
  %"84" = load i32* %"71", align 4
  br label %main_bb26

main_bb26:                                        ; preds = %main_bb30, %main_bb29, %main_bb25
  %"85" = load i32* %"72", align 4
  %"86" = icmp sgt i32 %"85", 0
  br i1 %"86", label %main_bb27, label %main_f.exit1

main_bb27:                                        ; preds = %main_bb26
  %"87" = load i32* %"73", align 4
  %"88" = icmp sgt i32 %"87", 0
  br i1 %"88", label %main_bb28, label %main_f.exit1

main_bb28:                                        ; preds = %main_bb27
  %"89" = call i32 @__VERIFIER_nondet_int() #2
  %"90" = icmp ne i32 %"89", 0
  br i1 %"90", label %main_bb29, label %main_bb30

main_bb29:                                        ; preds = %main_bb28
  %"91" = load i32* %"72", align 4
  %"92" = sub nsw i32 %"91", %"83"
  store i32 %"92", i32* %"72", align 4
  %"93" = call i32 @__VERIFIER_nondet_int() #2
  store i32 %"93", i32* %"73", align 4
  %"94" = load i32* %"75", align 4
  %"95" = sub nsw i32 %"94", 1
  store i32 %"95", i32* %"75", align 4
  br label %main_bb26

main_bb30:                                        ; preds = %main_bb28
  %"96" = load i32* %"73", align 4
  %"97" = sub nsw i32 %"96", %"84"
  store i32 %"97", i32* %"73", align 4
  br label %main_bb26

main_f.exit1:                                     ; preds = %main_bb21, %main_bb26, %main_bb27
  call void @llvm.lifetime.end(i64 4, i8* %"32")
  call void @llvm.lifetime.end(i64 4, i8* %"33")
  call void @llvm.lifetime.end(i64 4, i8* %"34")
  call void @llvm.lifetime.end(i64 4, i8* %"35")
  call void @llvm.lifetime.end(i64 4, i8* %"36")
  br label %main_bb31

main_bb31:                                        ; preds = %main_f.exit1, %main_f.exit
  ret i32 0
}

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

