; ModuleID = 'Benchmarks/FSE/recursion/Misusing_Method_Overloading_2_T/Misusing_Method_Overloading_2_T.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%class.resolver_query_base = type { i8 }

; Function Attrs: uwtable
define i32 @main() #0 {
main_bb0:
  ret i32 0
}

declare i32 @__kittel_nondef.0()

declare %class.resolver_query_base* @__kittel_nondef.1()

declare %class.resolver_query_base @__kittel_nondef.2()

attributes #0 = { uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

