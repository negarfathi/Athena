; ModuleID = 'Benchmarks/FSE/loop/Missing_Iterator_Update_1_NT/Missing_Iterator_Update_1_NT.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"'errno" = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define i32 @waitpid() #0 {
waitpid_bb0:
  %"0" = call i32 @__VERIFIER_nondet_int()
  %"1" = icmp slt i32 %"0", 0
  br i1 %"1", label %waitpid_bb1, label %waitpid_bb4

waitpid_bb1:                                      ; preds = %waitpid_bb0
  %"2" = call i32 @__VERIFIER_nondet_int()
  %"3" = icmp ne i32 %"2", 0
  %"4" = load i32* @"'errno", align 4
  %"5" = icmp ne i32 %"4", 1
  %or.cond = and i1 %"3", %"5"
  br i1 %or.cond, label %waitpid_bb2, label %waitpid_bb3

waitpid_bb2:                                      ; preds = %waitpid_bb1
  store i32 1, i32* @"'errno", align 4
  br label %waitpid_bb4

waitpid_bb3:                                      ; preds = %waitpid_bb1
  store i32 2, i32* @"'errno", align 4
  br label %waitpid_bb4

waitpid_bb4:                                      ; preds = %waitpid_bb0, %waitpid_bb2, %waitpid_bb3
  ret i32 %"0"
}

declare i32 @__VERIFIER_nondet_int() #1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb5:
  %"6" = call i32 @__VERIFIER_nondet_int() #2
  %"7" = icmp slt i32 %"6", 0
  br i1 %"7", label %main_bb6, label %main_waitpid.exit

main_bb6:                                         ; preds = %main_bb5
  %"8" = call i32 @__VERIFIER_nondet_int() #2
  %"9" = icmp ne i32 %"8", 0
  %"10" = load i32* @"'errno", align 4
  %"11" = icmp ne i32 %"10", 1
  %or.cond.i = and i1 %"9", %"11"
  br i1 %or.cond.i, label %main_bb7, label %main_bb8

main_bb7:                                         ; preds = %main_bb6
  store i32 1, i32* @"'errno", align 4
  br label %main_waitpid.exit

main_bb8:                                         ; preds = %main_bb6
  store i32 2, i32* @"'errno", align 4
  br label %main_waitpid.exit

main_waitpid.exit:                                ; preds = %main_waitpid.exit2, %main_bb8, %main_bb7, %main_bb5
  %ret.0 = phi i32 [ %"6", %main_bb5 ], [ %"6", %main_bb7 ], [ %"6", %main_bb8 ], [ %ret.1, %main_waitpid.exit2 ]
  %"12" = icmp eq i32 %ret.0, 0
  br i1 %"12", label %main_bb9, label %main_waitpid.exit2

main_bb9:                                         ; preds = %main_waitpid.exit
  %"13" = call i32 @__VERIFIER_nondet_int() #2
  %"14" = icmp slt i32 %"13", 0
  br i1 %"14", label %main_bb10, label %main_waitpid.exit2

main_bb10:                                        ; preds = %main_bb9
  %"15" = call i32 @__VERIFIER_nondet_int() #2
  %"16" = icmp ne i32 %"15", 0
  %"17" = load i32* @"'errno", align 4
  %"18" = icmp ne i32 %"17", 1
  %or.cond.i1 = and i1 %"16", %"18"
  br i1 %or.cond.i1, label %main_bb11, label %main_bb12

main_bb11:                                        ; preds = %main_bb10
  store i32 1, i32* @"'errno", align 4
  br label %main_waitpid.exit2

main_bb12:                                        ; preds = %main_bb10
  store i32 2, i32* @"'errno", align 4
  br label %main_waitpid.exit2

main_waitpid.exit2:                               ; preds = %main_bb12, %main_bb11, %main_bb9, %main_waitpid.exit
  %ret.1 = phi i32 [ %ret.0, %main_waitpid.exit ], [ %"13", %main_bb9 ], [ %"13", %main_bb11 ], [ %"13", %main_bb12 ]
  %"19" = icmp slt i32 %ret.1, 0
  %"20" = load i32* @"'errno", align 4
  %"21" = icmp eq i32 %"20", 1
  %or.cond = and i1 %"19", %"21"
  br i1 %or.cond, label %main_waitpid.exit, label %main_bb13

main_bb13:                                        ; preds = %main_waitpid.exit2
  ret i32 0
}

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

