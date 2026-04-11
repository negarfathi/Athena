; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_openbsd_cstrstr_alloca/svcomp_openbsd_cstrstr_alloca.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @cstrlen(i8* %str) #0 {
cstrlen_bb0:
  br label %cstrlen_bb1

cstrlen_bb1:                                      ; preds = %cstrlen_bb2, %cstrlen_bb0
  %s.0 = phi i8* [ %str, %cstrlen_bb0 ], [ %"2", %cstrlen_bb2 ]
  %"0" = load i8* %s.0, align 1
  %"1" = icmp ne i8 %"0", 0
  br i1 %"1", label %cstrlen_bb2, label %cstrlen_bb3

cstrlen_bb2:                                      ; preds = %cstrlen_bb1
  %"2" = getelementptr inbounds i8* %s.0, i32 1
  br label %cstrlen_bb1

cstrlen_bb3:                                      ; preds = %cstrlen_bb1
  %"3" = ptrtoint i8* %s.0 to i64
  %"4" = ptrtoint i8* %str to i64
  %"5" = sub i64 %"3", %"4"
  %"6" = trunc i64 %"5" to i32
  ret i32 %"6"
}

; Function Attrs: nounwind uwtable
define i32 @cstrncmp(i8* %s1, i8* %s2, i32 %n) #0 {
cstrncmp_bb4:
  %"7" = icmp eq i32 %n, 0
  br i1 %"7", label %cstrncmp_bb9, label %cstrncmp_bb5

cstrncmp_bb5:                                     ; preds = %cstrncmp_bb4, %cstrncmp_bb8
  %.03 = phi i32 [ %"24", %cstrncmp_bb8 ], [ %n, %cstrncmp_bb4 ]
  %.02 = phi i8* [ %"10", %cstrncmp_bb8 ], [ %s2, %cstrncmp_bb4 ]
  %.01 = phi i8* [ %"20", %cstrncmp_bb8 ], [ %s1, %cstrncmp_bb4 ]
  %"8" = load i8* %.01, align 1
  %"9" = sext i8 %"8" to i32
  %"10" = getelementptr inbounds i8* %.02, i32 1
  %"11" = load i8* %.02, align 1
  %"12" = sext i8 %"11" to i32
  %"13" = icmp ne i32 %"9", %"12"
  br i1 %"13", label %cstrncmp_bb6, label %cstrncmp_bb7

cstrncmp_bb6:                                     ; preds = %cstrncmp_bb5
  %"14" = load i8* %.01, align 1
  %"15" = zext i8 %"14" to i32
  %"16" = getelementptr inbounds i8* %"10", i32 -1
  %"17" = load i8* %"16", align 1
  %"18" = zext i8 %"17" to i32
  %"19" = sub nsw i32 %"15", %"18"
  br label %cstrncmp_bb9

cstrncmp_bb7:                                     ; preds = %cstrncmp_bb5
  %"20" = getelementptr inbounds i8* %.01, i32 1
  %"21" = load i8* %.01, align 1
  %"22" = sext i8 %"21" to i32
  %"23" = icmp eq i32 %"22", 0
  br i1 %"23", label %cstrncmp_bb9, label %cstrncmp_bb8

cstrncmp_bb8:                                     ; preds = %cstrncmp_bb7
  %"24" = add nsw i32 %.03, -1
  %"25" = icmp ne i32 %"24", 0
  br i1 %"25", label %cstrncmp_bb5, label %cstrncmp_bb9

cstrncmp_bb9:                                     ; preds = %cstrncmp_bb8, %cstrncmp_bb7, %cstrncmp_bb4, %cstrncmp_bb6
  %.0 = phi i32 [ %"19", %cstrncmp_bb6 ], [ 0, %cstrncmp_bb4 ], [ 0, %cstrncmp_bb7 ], [ 0, %cstrncmp_bb8 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i8* @cstrstr(i8* %s, i8* %find) #0 {
cstrstr_bb10:
  %"26" = getelementptr inbounds i8* %find, i32 1
  %"27" = load i8* %find, align 1
  %"28" = sext i8 %"27" to i32
  %"29" = icmp ne i32 %"28", 0
  br i1 %"29", label %cstrstr_bb11, label %cstrstr_bb21

cstrstr_bb11:                                     ; preds = %cstrstr_bb10, %cstrstr_bb12
  %s.0.i = phi i8* [ %"32", %cstrstr_bb12 ], [ %"26", %cstrstr_bb10 ]
  %"30" = load i8* %s.0.i, align 1
  %"31" = icmp ne i8 %"30", 0
  br i1 %"31", label %cstrstr_bb12, label %cstrstr_cstrlen.exit

cstrstr_bb12:                                     ; preds = %cstrstr_bb11
  %"32" = getelementptr inbounds i8* %s.0.i, i32 1
  br label %cstrstr_bb11

cstrstr_cstrlen.exit:                             ; preds = %cstrstr_bb11
  %"33" = ptrtoint i8* %s.0.i to i64
  %"34" = ptrtoint i8* %"26" to i64
  %"35" = sub i64 %"33", %"34"
  %"36" = trunc i64 %"35" to i32
  %"37" = sext i8 %"27" to i32
  br label %cstrstr_bb13

cstrstr_bb13:                                     ; preds = %cstrstr_cstrlen.exit, %cstrstr_cstrncmp.exit, %cstrstr_bb14
  %.1 = phi i8* [ %"38", %cstrstr_bb14 ], [ %s, %cstrstr_cstrlen.exit ], [ %"38", %cstrstr_cstrncmp.exit ]
  %"38" = getelementptr inbounds i8* %.1, i32 1
  %"39" = load i8* %.1, align 1
  %"40" = sext i8 %"39" to i32
  %"41" = icmp eq i32 %"40", 0
  br i1 %"41", label %cstrstr_bb21, label %cstrstr_bb14

cstrstr_bb14:                                     ; preds = %cstrstr_bb13
  %"42" = sext i8 %"39" to i32
  %"43" = icmp ne i32 %"42", %"37"
  br i1 %"43", label %cstrstr_bb13, label %cstrstr_bb15

cstrstr_bb15:                                     ; preds = %cstrstr_bb14
  %"44" = icmp eq i32 %"36", 0
  br i1 %"44", label %cstrstr_cstrncmp.exit, label %cstrstr_bb16

cstrstr_bb16:                                     ; preds = %cstrstr_bb19, %cstrstr_bb15
  %.03.i = phi i32 [ %"61", %cstrstr_bb19 ], [ %"36", %cstrstr_bb15 ]
  %.02.i = phi i8* [ %"47", %cstrstr_bb19 ], [ %"26", %cstrstr_bb15 ]
  %.01.i = phi i8* [ %"57", %cstrstr_bb19 ], [ %"38", %cstrstr_bb15 ]
  %"45" = load i8* %.01.i, align 1
  %"46" = sext i8 %"45" to i32
  %"47" = getelementptr inbounds i8* %.02.i, i32 1
  %"48" = load i8* %.02.i, align 1
  %"49" = sext i8 %"48" to i32
  %"50" = icmp ne i32 %"46", %"49"
  br i1 %"50", label %cstrstr_bb17, label %cstrstr_bb18

cstrstr_bb17:                                     ; preds = %cstrstr_bb16
  %"51" = load i8* %.01.i, align 1
  %"52" = zext i8 %"51" to i32
  %"53" = getelementptr inbounds i8* %"47", i32 -1
  %"54" = load i8* %"53", align 1
  %"55" = zext i8 %"54" to i32
  %"56" = sub nsw i32 %"52", %"55"
  br label %cstrstr_cstrncmp.exit

cstrstr_bb18:                                     ; preds = %cstrstr_bb16
  %"57" = getelementptr inbounds i8* %.01.i, i32 1
  %"58" = load i8* %.01.i, align 1
  %"59" = sext i8 %"58" to i32
  %"60" = icmp eq i32 %"59", 0
  br i1 %"60", label %cstrstr_cstrncmp.exit, label %cstrstr_bb19

cstrstr_bb19:                                     ; preds = %cstrstr_bb18
  %"61" = add nsw i32 %.03.i, -1
  %"62" = icmp ne i32 %"61", 0
  br i1 %"62", label %cstrstr_bb16, label %cstrstr_cstrncmp.exit

cstrstr_cstrncmp.exit:                            ; preds = %cstrstr_bb15, %cstrstr_bb17, %cstrstr_bb18, %cstrstr_bb19
  %.0.i = phi i32 [ %"56", %cstrstr_bb17 ], [ 0, %cstrstr_bb15 ], [ 0, %cstrstr_bb18 ], [ 0, %cstrstr_bb19 ]
  %"63" = icmp ne i32 %.0.i, 0
  br i1 %"63", label %cstrstr_bb13, label %cstrstr_bb20

cstrstr_bb20:                                     ; preds = %cstrstr_cstrncmp.exit
  %"64" = getelementptr inbounds i8* %"38", i32 -1
  br label %cstrstr_bb21

cstrstr_bb21:                                     ; preds = %cstrstr_bb10, %cstrstr_bb20, %cstrstr_bb13
  %.0 = phi i8* [ null, %cstrstr_bb13 ], [ %"64", %cstrstr_bb20 ], [ %s, %cstrstr_bb10 ]
  ret i8* %.0
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb22:
  %"65" = call i32 @__VERIFIER_nondet_int()
  %"66" = call i32 @__VERIFIER_nondet_int()
  %"67" = icmp slt i32 %"65", 1
  %. = select i1 %"67", i32 1, i32 %"65"
  %"68" = icmp slt i32 %"66", 1
  %length2.0 = select i1 %"68", i32 1, i32 %"66"
  %"69" = sext i32 %. to i64
  %"70" = mul i64 %"69", 1
  %"71" = alloca i8, i64 %"70"
  %"72" = sext i32 %length2.0 to i64
  %"73" = mul i64 %"72", 1
  %"74" = alloca i8, i64 %"73"
  %"75" = sub nsw i32 %., 1
  %"76" = sext i32 %"75" to i64
  %"77" = getelementptr inbounds i8* %"71", i64 %"76"
  store i8 0, i8* %"77", align 1
  %"78" = sub nsw i32 %length2.0, 1
  %"79" = sext i32 %"78" to i64
  %"80" = getelementptr inbounds i8* %"74", i64 %"79"
  store i8 0, i8* %"80", align 1
  %"81" = getelementptr inbounds i8* %"74", i32 1
  %"82" = load i8* %"74", align 1
  %"83" = sext i8 %"82" to i32
  %"84" = icmp ne i32 %"83", 0
  br i1 %"84", label %main_bb23, label %main_cstrstr.exit

main_bb23:                                        ; preds = %main_bb24, %main_bb22
  %s.0.i.i = phi i8* [ %"87", %main_bb24 ], [ %"81", %main_bb22 ]
  %"85" = load i8* %s.0.i.i, align 1
  %"86" = icmp ne i8 %"85", 0
  br i1 %"86", label %main_bb24, label %main_cstrlen.exit.i

main_bb24:                                        ; preds = %main_bb23
  %"87" = getelementptr inbounds i8* %s.0.i.i, i32 1
  br label %main_bb23

main_cstrlen.exit.i:                              ; preds = %main_bb23
  %"88" = ptrtoint i8* %s.0.i.i to i64
  %"89" = ptrtoint i8* %"81" to i64
  %"90" = sub i64 %"88", %"89"
  %"91" = trunc i64 %"90" to i32
  %"92" = sext i8 %"82" to i32
  br label %main_bb25

main_bb25:                                        ; preds = %main_cstrncmp.exit.i, %main_bb26, %main_cstrlen.exit.i
  %.1.i = phi i8* [ %"93", %main_bb26 ], [ %"71", %main_cstrlen.exit.i ], [ %"93", %main_cstrncmp.exit.i ]
  %"93" = getelementptr inbounds i8* %.1.i, i32 1
  %"94" = load i8* %.1.i, align 1
  %"95" = sext i8 %"94" to i32
  %"96" = icmp eq i32 %"95", 0
  br i1 %"96", label %main_cstrstr.exit, label %main_bb26

main_bb26:                                        ; preds = %main_bb25
  %"97" = sext i8 %"94" to i32
  %"98" = icmp ne i32 %"97", %"92"
  br i1 %"98", label %main_bb25, label %main_bb27

main_bb27:                                        ; preds = %main_bb26
  %"99" = icmp eq i32 %"91", 0
  br i1 %"99", label %main_cstrncmp.exit.i, label %main_bb28

main_bb28:                                        ; preds = %main_bb31, %main_bb27
  %.03.i.i = phi i32 [ %"116", %main_bb31 ], [ %"91", %main_bb27 ]
  %.02.i.i = phi i8* [ %"102", %main_bb31 ], [ %"81", %main_bb27 ]
  %.01.i.i = phi i8* [ %"112", %main_bb31 ], [ %"93", %main_bb27 ]
  %"100" = load i8* %.01.i.i, align 1
  %"101" = sext i8 %"100" to i32
  %"102" = getelementptr inbounds i8* %.02.i.i, i32 1
  %"103" = load i8* %.02.i.i, align 1
  %"104" = sext i8 %"103" to i32
  %"105" = icmp ne i32 %"101", %"104"
  br i1 %"105", label %main_bb29, label %main_bb30

main_bb29:                                        ; preds = %main_bb28
  %"106" = load i8* %.01.i.i, align 1
  %"107" = zext i8 %"106" to i32
  %"108" = getelementptr inbounds i8* %"102", i32 -1
  %"109" = load i8* %"108", align 1
  %"110" = zext i8 %"109" to i32
  %"111" = sub nsw i32 %"107", %"110"
  br label %main_cstrncmp.exit.i

main_bb30:                                        ; preds = %main_bb28
  %"112" = getelementptr inbounds i8* %.01.i.i, i32 1
  %"113" = load i8* %.01.i.i, align 1
  %"114" = sext i8 %"113" to i32
  %"115" = icmp eq i32 %"114", 0
  br i1 %"115", label %main_cstrncmp.exit.i, label %main_bb31

main_bb31:                                        ; preds = %main_bb30
  %"116" = add nsw i32 %.03.i.i, -1
  %"117" = icmp ne i32 %"116", 0
  br i1 %"117", label %main_bb28, label %main_cstrncmp.exit.i

main_cstrncmp.exit.i:                             ; preds = %main_bb31, %main_bb30, %main_bb29, %main_bb27
  %.0.i.i = phi i32 [ %"111", %main_bb29 ], [ 0, %main_bb27 ], [ 0, %main_bb30 ], [ 0, %main_bb31 ]
  %"118" = icmp ne i32 %.0.i.i, 0
  br i1 %"118", label %main_bb25, label %main_bb32

main_bb32:                                        ; preds = %main_cstrncmp.exit.i
  %"119" = getelementptr inbounds i8* %"93", i32 -1
  br label %main_cstrstr.exit

main_cstrstr.exit:                                ; preds = %main_bb22, %main_bb25, %main_bb32
  %.0.i = phi i8* [ null, %main_bb25 ], [ %"119", %main_bb32 ], [ %"71", %main_bb22 ]
  %"120" = ptrtoint i8* %.0.i to i32
  ret i32 %"120"
}

declare i32 @__VERIFIER_nondet_int() #1

declare i8* @__kittel_nondef.0()

declare i32 @__kittel_nondef.1()

declare i8 @__kittel_nondef.2()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

