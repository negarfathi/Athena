; ModuleID = 'Benchmarks/FSE/recursion/Incorrect_Cyclic_Invoking_1_T/Incorrect_Cyclic_Invoking_1_T.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifsTconInfo = type { i32 }

@cifsTconInfo = common global %struct.cifsTconInfo zeroinitializer, align 4

; Function Attrs: nounwind uwtable
define i32 @CIFSSMBQFSUnixInfo(i32 %xid, %struct.cifsTconInfo* %tcon) #0 {
CIFSSMBQFSUnixInfo_bb0:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define void @reset_cifs_unix_caps(i32 %xid, %struct.cifsTconInfo* %tcon) #0 {
reset_cifs_unix_caps_bb1:
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_smb_init.exit:
  %t1 = alloca %struct.cifsTconInfo, align 4
  %"0" = call i32 @__VERIFIER_nondet_int()
  %"1" = getelementptr inbounds %struct.cifsTconInfo* %t1, i32 0, i32 0
  store i32 %"0", i32* %"1", align 4
  %"2" = call i32 @__VERIFIER_nondet_int()
  ret i32 0
}

declare i32 @__VERIFIER_nondet_int() #1

declare i32 @__kittel_nondef.0()

declare %struct.cifsTconInfo* @__kittel_nondef.1()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

