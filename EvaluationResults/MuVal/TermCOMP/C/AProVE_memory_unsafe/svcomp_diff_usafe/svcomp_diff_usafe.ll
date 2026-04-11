; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_unsafe/svcomp_diff_usafe/svcomp_diff_usafe.bc'
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
  %"20" = call i32* @__kittel_nondef.0()
  %"21" = call i32* @__kittel_nondef.0()
  %"22" = call i32* @__kittel_nondef.0()
  %"23" = call i32 @__VERIFIER_nondet_int()
  %"24" = call i32 @__VERIFIER_nondet_int()
  br label %main_bb9

main_bb9:                                         ; preds = %main_bb14, %main_bb8
  %i.0.i = phi i32 [ 0, %main_bb8 ], [ %"44", %main_bb14 ]
  %k.0.i = phi i32 [ 0, %main_bb8 ], [ %k.1.i, %main_bb14 ]
  %"25" = icmp slt i32 %i.0.i, %"23"
  br i1 %"25", label %main_bb10, label %main_diff.exit

main_bb10:                                        ; preds = %main_bb9
  %"26" = sext i32 %i.0.i to i64
  %"27" = getelementptr inbounds i32* %"20", i64 %"26"
  %"28" = load i32* %"27", align 4
  br label %main_bb11

main_bb11:                                        ; preds = %main_bb12, %main_bb10
  %found.0.i = phi i32 [ 0, %main_bb10 ], [ %found.1.i, %main_bb12 ]
  %j.0.i = phi i32 [ 0, %main_bb10 ], [ %j.1.i, %main_bb12 ]
  %"29" = icmp slt i32 %j.0.i, %"24"
  %"30" = icmp ne i32 %found.0.i, 0
  %"31" = xor i1 %"30", true
  %or.cond.i = and i1 %"29", %"31"
  br i1 %or.cond.i, label %main_bb12, label %main_.critedge.i

main_bb12:                                        ; preds = %main_bb11
  %"32" = sext i32 %j.0.i to i64
  %"33" = getelementptr inbounds i32* %"21", i64 %"32"
  %"34" = load i32* %"33", align 4
  %"35" = icmp eq i32 %"28", %"34"
  %"36" = add nsw i32 %j.0.i, 1
  %found.1.i = select i1 %"35", i32 1, i32 %found.0.i
  %j.1.i = select i1 %"35", i32 %j.0.i, i32 %"36"
  br label %main_bb11

main_.critedge.i:                                 ; preds = %main_bb11
  %"37" = icmp ne i32 %found.0.i, 0
  br i1 %"37", label %main_bb14, label %main_bb13

main_bb13:                                        ; preds = %main_.critedge.i
  %"38" = sext i32 %i.0.i to i64
  %"39" = getelementptr inbounds i32* %"20", i64 %"38"
  %"40" = load i32* %"39", align 4
  %"41" = sext i32 %k.0.i to i64
  %"42" = getelementptr inbounds i32* %"22", i64 %"41"
  store i32 %"40", i32* %"42", align 4
  %"43" = add nsw i32 %k.0.i, 1
  br label %main_bb14

main_bb14:                                        ; preds = %main_bb13, %main_.critedge.i
  %k.1.i = phi i32 [ %k.0.i, %main_.critedge.i ], [ %"43", %main_bb13 ]
  %"44" = add nsw i32 %i.0.i, 1
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

