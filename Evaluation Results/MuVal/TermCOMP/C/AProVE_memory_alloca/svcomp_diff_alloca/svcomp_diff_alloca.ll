; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_alloca/svcomp_diff_alloca/svcomp_diff_alloca.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define void @diff(i32* %A, i32 %Alen, i32* %B, i32 %Blen, i32* %D) #0 {
diff_bb0:
  br label %diff_bb1

diff_bb1:                                         ; preds = %diff_bb6, %diff_bb0
  %i.0 = phi i32 [ 0, %diff_bb0 ], [ %"19", %diff_bb6 ]
  %k.0 = phi i32 [ 0, %diff_bb0 ], [ %k.1, %diff_bb6 ]
  %"0" = icmp slt i32 %i.0, %Alen
  br i1 %"0", label %diff_bb2, label %diff_bb7

diff_bb2:                                         ; preds = %diff_bb1
  %"1" = sext i32 %i.0 to i64
  %"2" = getelementptr inbounds i32* %A, i64 %"1"
  %"3" = load i32* %"2", align 4
  br label %diff_bb3

diff_bb3:                                         ; preds = %diff_bb4, %diff_bb2
  %found.0 = phi i32 [ 0, %diff_bb2 ], [ %found.1, %diff_bb4 ]
  %j.0 = phi i32 [ 0, %diff_bb2 ], [ %j.1, %diff_bb4 ]
  %"4" = icmp slt i32 %j.0, %Blen
  %"5" = icmp ne i32 %found.0, 0
  %"6" = xor i1 %"5", true
  %or.cond = and i1 %"4", %"6"
  br i1 %or.cond, label %diff_bb4, label %diff_.critedge

diff_bb4:                                         ; preds = %diff_bb3
  %"7" = sext i32 %j.0 to i64
  %"8" = getelementptr inbounds i32* %B, i64 %"7"
  %"9" = load i32* %"8", align 4
  %"10" = icmp eq i32 %"3", %"9"
  %"11" = add nsw i32 %j.0, 1
  %found.1 = select i1 %"10", i32 1, i32 %found.0
  %j.1 = select i1 %"10", i32 %j.0, i32 %"11"
  br label %diff_bb3

diff_.critedge:                                   ; preds = %diff_bb3
  %"12" = icmp ne i32 %found.0, 0
  br i1 %"12", label %diff_bb6, label %diff_bb5

diff_bb5:                                         ; preds = %diff_.critedge
  %"13" = sext i32 %i.0 to i64
  %"14" = getelementptr inbounds i32* %A, i64 %"13"
  %"15" = load i32* %"14", align 4
  %"16" = sext i32 %k.0 to i64
  %"17" = getelementptr inbounds i32* %D, i64 %"16"
  store i32 %"15", i32* %"17", align 4
  %"18" = add nsw i32 %k.0, 1
  br label %diff_bb6

diff_bb6:                                         ; preds = %diff_bb5, %diff_.critedge
  %k.1 = phi i32 [ %k.0, %diff_.critedge ], [ %"18", %diff_bb5 ]
  %"19" = add nsw i32 %i.0, 1
  br label %diff_bb1

diff_bb7:                                         ; preds = %diff_bb1
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb8:
  %"20" = call i32 @__VERIFIER_nondet_int()
  %"21" = call i32 @__VERIFIER_nondet_int()
  %"22" = icmp slt i32 %"20", 1
  %. = select i1 %"22", i32 1, i32 %"20"
  %"23" = icmp slt i32 %"21", 1
  %Blen.0 = select i1 %"23", i32 1, i32 %"21"
  %"24" = sext i32 %. to i64
  %"25" = mul i64 %"24", 4
  %"26" = alloca i8, i64 %"25"
  %"27" = bitcast i8* %"26" to i32*
  %"28" = sext i32 %Blen.0 to i64
  %"29" = mul i64 %"28", 4
  %"30" = alloca i8, i64 %"29"
  %"31" = bitcast i8* %"30" to i32*
  %"32" = sext i32 %. to i64
  %"33" = mul i64 %"32", 4
  %"34" = alloca i8, i64 %"33"
  %"35" = bitcast i8* %"34" to i32*
  br label %main_bb9

main_bb9:                                         ; preds = %main_bb14, %main_bb8
  %i.0.i = phi i32 [ 0, %main_bb8 ], [ %"55", %main_bb14 ]
  %k.0.i = phi i32 [ 0, %main_bb8 ], [ %k.1.i, %main_bb14 ]
  %"36" = icmp slt i32 %i.0.i, %.
  br i1 %"36", label %main_bb10, label %main_diff.exit

main_bb10:                                        ; preds = %main_bb9
  %"37" = sext i32 %i.0.i to i64
  %"38" = getelementptr inbounds i32* %"27", i64 %"37"
  %"39" = load i32* %"38", align 4
  br label %main_bb11

main_bb11:                                        ; preds = %main_bb12, %main_bb10
  %found.0.i = phi i32 [ 0, %main_bb10 ], [ %found.1.i, %main_bb12 ]
  %j.0.i = phi i32 [ 0, %main_bb10 ], [ %j.1.i, %main_bb12 ]
  %"40" = icmp slt i32 %j.0.i, %Blen.0
  %"41" = icmp ne i32 %found.0.i, 0
  %"42" = xor i1 %"41", true
  %or.cond.i = and i1 %"40", %"42"
  br i1 %or.cond.i, label %main_bb12, label %main_.critedge.i

main_bb12:                                        ; preds = %main_bb11
  %"43" = sext i32 %j.0.i to i64
  %"44" = getelementptr inbounds i32* %"31", i64 %"43"
  %"45" = load i32* %"44", align 4
  %"46" = icmp eq i32 %"39", %"45"
  %"47" = add nsw i32 %j.0.i, 1
  %found.1.i = select i1 %"46", i32 1, i32 %found.0.i
  %j.1.i = select i1 %"46", i32 %j.0.i, i32 %"47"
  br label %main_bb11

main_.critedge.i:                                 ; preds = %main_bb11
  %"48" = icmp ne i32 %found.0.i, 0
  br i1 %"48", label %main_bb14, label %main_bb13

main_bb13:                                        ; preds = %main_.critedge.i
  %"49" = sext i32 %i.0.i to i64
  %"50" = getelementptr inbounds i32* %"27", i64 %"49"
  %"51" = load i32* %"50", align 4
  %"52" = sext i32 %k.0.i to i64
  %"53" = getelementptr inbounds i32* %"35", i64 %"52"
  store i32 %"51", i32* %"53", align 4
  %"54" = add nsw i32 %k.0.i, 1
  br label %main_bb14

main_bb14:                                        ; preds = %main_bb13, %main_.critedge.i
  %k.1.i = phi i32 [ %k.0.i, %main_.critedge.i ], [ %"54", %main_bb13 ]
  %"55" = add nsw i32 %i.0.i, 1
  br label %main_bb9

main_diff.exit:                                   ; preds = %main_bb9
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32* @__kittel_nondef.0()

declare i32 @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

