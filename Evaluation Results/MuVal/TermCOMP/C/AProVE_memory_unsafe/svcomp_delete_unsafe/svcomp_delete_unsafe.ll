; ModuleID = 'Benchmarks/TermCOMP/C/AProVE_memory_unsafe/svcomp_delete_unsafe/svcomp_delete_unsafe.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

; Function Attrs: nounwind uwtable
define void @_delete(i8* %x, i8* %y) #0 {
_delete_bb0:
  store i8 0, i8* %y, align 1
  %"0" = icmp ult i8* null, %x
  %"1" = icmp ult i8* %x, %y
  %or.cond = and i1 %"0", %"1"
  br i1 %or.cond, label %_delete_bb1, label %_delete_bb3

_delete_bb1:                                      ; preds = %_delete_bb0, %_delete_bb2
  %.0 = phi i8* [ %"5", %_delete_bb2 ], [ %x, %_delete_bb0 ]
  %"2" = load i8* %.0, align 1
  %"3" = sext i8 %"2" to i32
  %"4" = icmp ne i32 %"3", 0
  br i1 %"4", label %_delete_bb2, label %_delete_bb3

_delete_bb2:                                      ; preds = %_delete_bb1
  store i8 0, i8* %.0, align 1
  %"5" = getelementptr inbounds i8* %.0, i32 1
  br label %_delete_bb1

_delete_bb3:                                      ; preds = %_delete_bb1, %_delete_bb0
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb4:
  %"6" = call i8* @__kittel_nondef.0()
  %"7" = call i8* @__kittel_nondef.0()
  store i8 0, i8* %"7", align 1
  %"8" = icmp ult i8* null, %"6"
  %"9" = icmp ult i8* %"6", %"7"
  %or.cond.i = and i1 %"8", %"9"
  br i1 %or.cond.i, label %main_bb5, label %main__delete.exit

main_bb5:                                         ; preds = %main_bb6, %main_bb4
  %.0.i = phi i8* [ %"13", %main_bb6 ], [ %"6", %main_bb4 ]
  %"10" = load i8* %.0.i, align 1
  %"11" = sext i8 %"10" to i32
  %"12" = icmp ne i32 %"11", 0
  br i1 %"12", label %main_bb6, label %main__delete.exit

main_bb6:                                         ; preds = %main_bb5
  store i8 0, i8* %.0.i, align 1
  %"13" = getelementptr inbounds i8* %.0.i, i32 1
  br label %main_bb5

main__delete.exit:                                ; preds = %main_bb4, %main_bb5
  ret i32 0
}

declare i8* @__kittel_nondef.0()

declare i32 @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

