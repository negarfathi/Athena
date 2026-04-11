; ModuleID = 'Benchmarks/FSE/loop/Missing_Iterator_Update_2_T/Missing_Iterator_Update_2_T.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@"'flag" = global i32 0, align 4

; Function Attrs: nounwind uwtable
define i32 @mdb_cursor_get() #0 {
mdb_cursor_get_bb0:
  %"0" = call i32 @__VERIFIER_nondet_int()
  %"1" = load i32* @"'flag", align 4
  %"2" = add nsw i32 %"1", 1
  store i32 %"2", i32* @"'flag", align 4
  %"3" = load i32* @"'flag", align 4
  %"4" = icmp sgt i32 %"3", 1000
  br i1 %"4", label %mdb_cursor_get_bb2, label %mdb_cursor_get_bb1

mdb_cursor_get_bb1:                               ; preds = %mdb_cursor_get_bb0
  %"5" = icmp sge i32 %"0", 0
  %. = select i1 %"5", i32 0, i32 1
  br label %mdb_cursor_get_bb2

mdb_cursor_get_bb2:                               ; preds = %mdb_cursor_get_bb1, %mdb_cursor_get_bb0
  %.0 = phi i32 [ 1, %mdb_cursor_get_bb0 ], [ %., %mdb_cursor_get_bb1 ]
  ret i32 %.0
}

declare i32 @__VERIFIER_nondet_int() #1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb3:
  %"6" = call i32 @__VERIFIER_nondet_int() #2
  %"7" = load i32* @"'flag", align 4
  %"8" = add nsw i32 %"7", 1
  store i32 %"8", i32* @"'flag", align 4
  %"9" = load i32* @"'flag", align 4
  %"10" = icmp sgt i32 %"9", 1000
  br i1 %"10", label %main_mdb_cursor_get.exit, label %main_bb4

main_bb4:                                         ; preds = %main_bb3
  %"11" = icmp sge i32 %"6", 0
  %..i = select i1 %"11", i32 0, i32 1
  br label %main_mdb_cursor_get.exit

main_mdb_cursor_get.exit:                         ; preds = %main_bb3, %main_bb4
  %.0.i = phi i32 [ 1, %main_bb3 ], [ %..i, %main_bb4 ]
  %"12" = call i32 @__VERIFIER_nondet_int()
  br label %main_mdb_cursor_get.exit3

main_mdb_cursor_get.exit3:                        ; preds = %main_bb9, %main_bb8, %main_bb7, %main_bb6, %main_mdb_cursor_get.exit
  %rc.0 = phi i32 [ %.0.i, %main_mdb_cursor_get.exit ], [ 1, %main_bb6 ], [ %..i1, %main_bb7 ], [ 1, %main_bb8 ], [ %..i4, %main_bb9 ]
  %"13" = icmp eq i32 %rc.0, 0
  br i1 %"13", label %main_bb5, label %main_bb10

main_bb5:                                         ; preds = %main_mdb_cursor_get.exit3
  %"14" = icmp sle i32 %"12", 0
  %"15" = call i32 @__VERIFIER_nondet_int() #2
  %"16" = load i32* @"'flag", align 4
  %"17" = add nsw i32 %"16", 1
  store i32 %"17", i32* @"'flag", align 4
  %"18" = load i32* @"'flag", align 4
  %"19" = icmp sgt i32 %"18", 1000
  br i1 %"14", label %main_bb6, label %main_bb8

main_bb6:                                         ; preds = %main_bb5
  br i1 %"19", label %main_mdb_cursor_get.exit3, label %main_bb7

main_bb7:                                         ; preds = %main_bb6
  %"20" = icmp sge i32 %"15", 0
  %..i1 = select i1 %"20", i32 0, i32 1
  br label %main_mdb_cursor_get.exit3

main_bb8:                                         ; preds = %main_bb5
  br i1 %"19", label %main_mdb_cursor_get.exit3, label %main_bb9

main_bb9:                                         ; preds = %main_bb8
  %"21" = icmp sge i32 %"15", 0
  %..i4 = select i1 %"21", i32 0, i32 1
  br label %main_mdb_cursor_get.exit3

main_bb10:                                        ; preds = %main_mdb_cursor_get.exit3
  ret i32 0
}

declare i32 @__kittel_nondef.0()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

