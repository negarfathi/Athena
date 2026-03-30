; ModuleID = 'Benchmarks/TermCOMP/C/SV-COMP_Termination_Category/HenzingerJhalaMajumdarSutre-POPL2002-LockingExample_false-termination/HenzingerJhalaMajumdarSutre-POPL2002-LockingExample_false-termination.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"'LOCK" = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define void @lock() #0 {
lock_bb0:
  %"0" = load i32* @"'LOCK", align 4
  %"1" = icmp eq i32 %"0", 0
  br i1 %"1", label %lock_bb1, label %lock_bb2

lock_bb1:                                         ; preds = %lock_bb0
  store i32 1, i32* @"'LOCK", align 4
  br label %lock_bb2

lock_bb2:                                         ; preds = %lock_bb0, %lock_bb1
  ret void
}

; Function Attrs: nounwind uwtable
define void @unlock() #0 {
unlock_bb3:
  %"2" = load i32* @"'LOCK", align 4
  %"3" = icmp eq i32 %"2", 1
  br i1 %"3", label %unlock_bb4, label %unlock_bb5

unlock_bb4:                                       ; preds = %unlock_bb3
  store i32 0, i32* @"'LOCK", align 4
  br label %unlock_bb5

unlock_bb5:                                       ; preds = %unlock_bb3, %unlock_bb4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb6:
  %"4" = call i32 @__VERIFIER_nondet_int()
  %"5" = icmp ne i32 %"4", 0
  br i1 %"5", label %main_bb7, label %main_bb12

main_bb7:                                         ; preds = %main_bb6, %main_unlock.exit3
  %"6" = call i32 @__VERIFIER_nondet_int()
  %"7" = icmp ne i32 %"6", 0
  br i1 %"7", label %main_bb8, label %main_bb10

main_bb8:                                         ; preds = %main_bb7
  %"8" = load i32* @"'LOCK", align 4
  %"9" = icmp eq i32 %"8", 0
  br i1 %"9", label %main_bb9, label %main_lock.exit

main_bb9:                                         ; preds = %main_bb8
  store i32 1, i32* @"'LOCK", align 4
  br label %main_lock.exit

main_lock.exit:                                   ; preds = %main_bb8, %main_bb9
  %"10" = add nsw i32 0, 1
  br label %main_bb10

main_bb10:                                        ; preds = %main_lock.exit, %main_bb7
  %got_lock.0 = phi i32 [ %"10", %main_lock.exit ], [ 0, %main_bb7 ]
  %"11" = icmp ne i32 %got_lock.0, 0
  %"12" = load i32* @"'LOCK", align 4
  %"13" = icmp eq i32 %"12", 1
  %or.cond = and i1 %"11", %"13"
  br i1 %or.cond, label %main_bb11, label %main_unlock.exit3

main_bb11:                                        ; preds = %main_bb10
  store i32 0, i32* @"'LOCK", align 4
  br label %main_unlock.exit3

main_unlock.exit3:                                ; preds = %main_bb10, %main_bb11
  %"14" = call i32 @__VERIFIER_nondet_int()
  %"15" = icmp ne i32 %"14", 0
  br i1 %"15", label %main_bb7, label %main_bb12

main_bb12:                                        ; preds = %main_bb6, %main_unlock.exit3, %main_bb16
  %new.0 = phi i32 [ %new.1, %main_bb16 ], [ 0, %main_unlock.exit3 ], [ 0, %main_bb6 ]
  %"16" = load i32* @"'LOCK", align 4
  %"17" = icmp eq i32 %"16", 0
  br i1 %"17", label %main_bb13, label %main_lock.exit2

main_bb13:                                        ; preds = %main_bb12
  store i32 1, i32* @"'LOCK", align 4
  br label %main_lock.exit2

main_lock.exit2:                                  ; preds = %main_bb12, %main_bb13
  %"18" = call i32 @__VERIFIER_nondet_int()
  %"19" = icmp ne i32 %"18", 0
  br i1 %"19", label %main_bb14, label %main_bb16

main_bb14:                                        ; preds = %main_lock.exit2
  %"20" = load i32* @"'LOCK", align 4
  %"21" = icmp eq i32 %"20", 1
  br i1 %"21", label %main_bb15, label %main_unlock.exit1

main_bb15:                                        ; preds = %main_bb14
  store i32 0, i32* @"'LOCK", align 4
  br label %main_unlock.exit1

main_unlock.exit1:                                ; preds = %main_bb14, %main_bb15
  %"22" = add nsw i32 %new.0, 1
  br label %main_bb16

main_bb16:                                        ; preds = %main_lock.exit2, %main_unlock.exit1
  %new.1 = phi i32 [ %"22", %main_unlock.exit1 ], [ %new.0, %main_lock.exit2 ]
  %"23" = icmp ne i32 %new.1, %new.0
  br i1 %"23", label %main_bb12, label %main_bb17

main_bb17:                                        ; preds = %main_bb16
  %"24" = load i32* @"'LOCK", align 4
  %"25" = icmp eq i32 %"24", 1
  br i1 %"25", label %main_bb18, label %main_unlock.exit

main_bb18:                                        ; preds = %main_bb17
  store i32 0, i32* @"'LOCK", align 4
  br label %main_unlock.exit

main_unlock.exit:                                 ; preds = %main_bb17, %main_bb18
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

