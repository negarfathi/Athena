; ModuleID = 'Benchmarks/FSE/recursion/Misusing_Method_Overloading_1_T/Misusing_Method_Overloading_1_T.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.QMetaObject = type { i8 }

; Function Attrs: uwtable
define void @_ZN11QMetaObject8activateEfiid(%struct.QMetaObject* %this, float %sender, i32 %from_signal_index, i32 %to_signal_index, double %argv) #0 align 2 {
_ZN11QMetaObject8activateEfiid_bb0:
  ret void
}

; Function Attrs: uwtable
define void @_ZN11QMetaObject8activateEfid(%struct.QMetaObject* %this, float %sender, i32 %signal_index, double %argv) #0 align 2 {
_ZN11QMetaObject8activateEfid_bb1:
  ret void
}

; Function Attrs: nounwind uwtable
define void @_ZN11QMetaObject8activateEfPKS_id(%struct.QMetaObject* %this, float %sender, %struct.QMetaObject* %m, i32 %local_signal_index, double %argv) #1 align 2 {
_ZN11QMetaObject8activateEfPKS_id_bb2:
  ret void
}

; Function Attrs: uwtable
define void @_ZN11QMetaObject8activateEfPKS_iid(%struct.QMetaObject* %this, float %sender, %struct.QMetaObject* %m, i32 %from_local_signal_index, i32 %to_local_signal_index, double %argv) #0 align 2 {
_ZN11QMetaObject8activateEfPKS_iid_bb3:
  ret void
}

; Function Attrs: uwtable
define i32 @main() #0 {
main_bb4:
  ret i32 0
}

declare %struct.QMetaObject* @__kittel_nondef.0()

declare float @__kittel_nondef.1()

declare i32 @__kittel_nondef.2()

declare double @__kittel_nondef.3()

declare %struct.QMetaObject @__kittel_nondef.4()

attributes #0 = { uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

