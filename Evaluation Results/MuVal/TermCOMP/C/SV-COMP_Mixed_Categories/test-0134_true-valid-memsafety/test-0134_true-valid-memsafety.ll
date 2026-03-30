; ModuleID = 'Benchmarks/TermCOMP/C/SV-COMP_Mixed_Categories/test-0134_true-valid-memsafety/test-0134_true-valid-memsafety.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.node = type { i32, %struct.list_head }

@gl_list = global %struct.list_head { %struct.list_head* @gl_list, %struct.list_head* @gl_list }, align 8

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb0:
  %dst.i = alloca %struct.list_head, align 8
  br label %main_bb1

main_bb1:                                         ; preds = %main_gl_insert.exit.i, %main_bb0
  %"0" = call i32 @__VERIFIER_nondet_int() #4
  %"1" = call noalias i8* @malloc(i64 24) #4
  %"2" = bitcast i8* %"1" to %struct.node*
  %"3" = icmp ne %struct.node* %"2", null
  br i1 %"3", label %main_gl_insert.exit.i, label %main_bb11

main_gl_insert.exit.i:                            ; preds = %main_bb1
  %"4" = getelementptr inbounds %struct.node* %"2", i32 0, i32 0
  store i32 %"0", i32* %"4", align 4
  %"5" = getelementptr inbounds %struct.node* %"2", i32 0, i32 1
  %"6" = getelementptr %struct.list_head* @gl_list, i32 0, i32 0
  %"7" = load %struct.list_head** %"6", align 8
  %"8" = getelementptr inbounds %struct.list_head* %"7", i32 0, i32 1
  store %struct.list_head* %"5", %struct.list_head** %"8", align 8
  %"9" = getelementptr inbounds %struct.list_head* %"5", i32 0, i32 0
  store %struct.list_head* %"7", %struct.list_head** %"9", align 8
  %"10" = getelementptr inbounds %struct.list_head* %"5", i32 0, i32 1
  store %struct.list_head* @gl_list, %struct.list_head** %"10", align 8
  %"11" = getelementptr %struct.list_head* @gl_list, i32 0, i32 0
  store %struct.list_head* %"5", %struct.list_head** %"11", align 8
  %"12" = call i32 @__VERIFIER_nondet_int() #4
  %"13" = icmp ne i32 %"12", 0
  br i1 %"13", label %main_bb1, label %main_gl_read.exit

main_gl_read.exit:                                ; preds = %main_gl_insert.exit.i
  %"14" = bitcast %struct.list_head* %dst.i to i8*
  call void @llvm.lifetime.start(i64 16, i8* %"14")
  %"15" = getelementptr %struct.list_head* @gl_list, i32 0, i32 0
  %"16" = load %struct.list_head** %"15", align 8
  %"17" = icmp eq %struct.list_head* %"16", @gl_list
  br i1 %"17", label %main_gl_sort.exit, label %main_bb2

main_bb2:                                         ; preds = %main_gl_read.exit
  %"18" = getelementptr inbounds %struct.list_head* %dst.i, i32 0, i32 0
  store %struct.list_head* %dst.i, %struct.list_head** %"18", align 8
  %"19" = getelementptr inbounds %struct.list_head* %dst.i, i32 0, i32 1
  store %struct.list_head* %dst.i, %struct.list_head** %"19", align 8
  %"20" = getelementptr inbounds %struct.list_head* %dst.i, i32 0, i32 0
  %"21" = getelementptr inbounds %struct.list_head* %dst.i, i32 0, i32 0
  br label %main_bb3

main_bb3:                                         ; preds = %main_bb7, %main_bb2
  %"22" = getelementptr %struct.list_head* @gl_list, i32 0, i32 0
  %"23" = load %struct.list_head** %"22", align 8
  %"24" = icmp eq %struct.list_head* %"23", @gl_list
  br i1 %"24", label %main_gl_seek_max.exit.i, label %main_bb4

main_bb4:                                         ; preds = %main_bb3
  %"25" = getelementptr %struct.list_head* @gl_list, i32 0, i32 0
  %"26" = load %struct.list_head** %"25", align 8
  %"27" = bitcast %struct.list_head* %"26" to i8*
  %"28" = getelementptr inbounds i8* %"27", i64 -8
  %"29" = bitcast i8* %"28" to %struct.node*
  %"30" = getelementptr inbounds %struct.node* %"29", i32 0, i32 0
  %"31" = load i32* %"30", align 4
  %"32" = getelementptr inbounds %struct.list_head* %"26", i32 0, i32 0
  %"33" = load %struct.list_head** %"32", align 8
  br label %main_bb5

main_bb5:                                         ; preds = %main_bb6, %main_bb4
  %max.0.i.i = phi i32 [ %"31", %main_bb4 ], [ %max.0..i.i, %main_bb6 ]
  %max_pos.0.i.i = phi %struct.list_head* [ %"26", %main_bb4 ], [ %max_pos.0.pos.0.i.i, %main_bb6 ]
  %pos.0.i.i = phi %struct.list_head* [ %"33", %main_bb4 ], [ %"42", %main_bb6 ]
  %"34" = icmp ne %struct.list_head* @gl_list, %pos.0.i.i
  br i1 %"34", label %main_bb6, label %main_gl_seek_max.exit.i

main_bb6:                                         ; preds = %main_bb5
  %"35" = bitcast %struct.list_head* %pos.0.i.i to i8*
  %"36" = getelementptr inbounds i8* %"35", i64 -8
  %"37" = bitcast i8* %"36" to %struct.node*
  %"38" = getelementptr inbounds %struct.node* %"37", i32 0, i32 0
  %"39" = load i32* %"38", align 4
  %"40" = icmp slt i32 %"39", %max.0.i.i
  %max.0..i.i = select i1 %"40", i32 %max.0.i.i, i32 %"39"
  %max_pos.0.pos.0.i.i = select i1 %"40", %struct.list_head* %max_pos.0.i.i, %struct.list_head* %pos.0.i.i
  %"41" = getelementptr inbounds %struct.list_head* %pos.0.i.i, i32 0, i32 0
  %"42" = load %struct.list_head** %"41", align 8
  br label %main_bb5

main_gl_seek_max.exit.i:                          ; preds = %main_bb5, %main_bb3
  %.0.i.i = phi %struct.list_head* [ null, %main_bb3 ], [ %max_pos.0.i.i, %main_bb5 ]
  %"43" = icmp ne %struct.list_head* %.0.i.i, null
  br i1 %"43", label %main_bb7, label %main_bb8

main_bb7:                                         ; preds = %main_gl_seek_max.exit.i
  %"44" = getelementptr inbounds %struct.list_head* %.0.i.i, i32 0, i32 1
  %"45" = load %struct.list_head** %"44", align 8
  %"46" = getelementptr inbounds %struct.list_head* %.0.i.i, i32 0, i32 0
  %"47" = load %struct.list_head** %"46", align 8
  %"48" = getelementptr inbounds %struct.list_head* %"47", i32 0, i32 1
  store %struct.list_head* %"45", %struct.list_head** %"48", align 8
  %"49" = getelementptr inbounds %struct.list_head* %"45", i32 0, i32 0
  store %struct.list_head* %"47", %struct.list_head** %"49", align 8
  %"50" = load %struct.list_head** %"20", align 8
  %"51" = getelementptr inbounds %struct.list_head* %"50", i32 0, i32 1
  store %struct.list_head* %.0.i.i, %struct.list_head** %"51", align 8
  %"52" = getelementptr inbounds %struct.list_head* %.0.i.i, i32 0, i32 0
  store %struct.list_head* %"50", %struct.list_head** %"52", align 8
  %"53" = getelementptr inbounds %struct.list_head* %.0.i.i, i32 0, i32 1
  store %struct.list_head* %dst.i, %struct.list_head** %"53", align 8
  store %struct.list_head* %.0.i.i, %struct.list_head** %"21", align 8
  br label %main_bb3

main_bb8:                                         ; preds = %main_gl_seek_max.exit.i
  %"54" = getelementptr inbounds %struct.list_head* %dst.i, i32 0, i32 0
  %"55" = load %struct.list_head** %"54", align 8
  %"56" = getelementptr inbounds %struct.list_head* %"55", i32 0, i32 1
  store %struct.list_head* @gl_list, %struct.list_head** %"56", align 8
  %"57" = getelementptr %struct.list_head* @gl_list, i32 0, i32 0
  store %struct.list_head* %"55", %struct.list_head** %"57", align 8
  %"58" = getelementptr %struct.list_head* @gl_list, i32 0, i32 1
  store %struct.list_head* %dst.i, %struct.list_head** %"58", align 8
  %"59" = getelementptr inbounds %struct.list_head* %dst.i, i32 0, i32 0
  store %struct.list_head* @gl_list, %struct.list_head** %"59", align 8
  %"60" = getelementptr inbounds %struct.list_head* %dst.i, i32 0, i32 1
  %"61" = load %struct.list_head** %"60", align 8
  %"62" = getelementptr inbounds %struct.list_head* %dst.i, i32 0, i32 0
  %"63" = load %struct.list_head** %"62", align 8
  %"64" = getelementptr inbounds %struct.list_head* %"63", i32 0, i32 1
  store %struct.list_head* %"61", %struct.list_head** %"64", align 8
  %"65" = getelementptr inbounds %struct.list_head* %"61", i32 0, i32 0
  store %struct.list_head* %"63", %struct.list_head** %"65", align 8
  %"66" = getelementptr inbounds %struct.list_head* %dst.i, i32 0, i32 0
  store %struct.list_head* null, %struct.list_head** %"66", align 8
  %"67" = getelementptr inbounds %struct.list_head* %dst.i, i32 0, i32 1
  store %struct.list_head* null, %struct.list_head** %"67", align 8
  br label %main_gl_sort.exit

main_gl_sort.exit:                                ; preds = %main_gl_read.exit, %main_bb8
  %"68" = bitcast %struct.list_head* %dst.i to i8*
  call void @llvm.lifetime.end(i64 16, i8* %"68")
  br label %main_bb9

main_bb9:                                         ; preds = %main_bb10, %main_gl_sort.exit
  %"69" = getelementptr %struct.list_head* @gl_list, i32 0, i32 0
  %"70" = load %struct.list_head** %"69", align 8
  %"71" = icmp ne %struct.list_head* @gl_list, %"70"
  br i1 %"71", label %main_bb10, label %main_gl_destroy.exit

main_bb10:                                        ; preds = %main_bb9
  %"72" = getelementptr inbounds %struct.list_head* %"70", i32 0, i32 0
  %"73" = load %struct.list_head** %"72", align 8
  %"74" = getelementptr %struct.list_head* @gl_list, i32 0, i32 0
  store %struct.list_head* %"73", %struct.list_head** %"74", align 8
  %"75" = bitcast %struct.list_head* %"70" to i8*
  %"76" = getelementptr inbounds i8* %"75", i64 -8
  %"77" = bitcast i8* %"76" to %struct.node*
  %"78" = bitcast %struct.node* %"77" to i8*
  call void @free(i8* %"78") #4
  br label %main_bb9

main_gl_destroy.exit:                             ; preds = %main_bb9
  ret i32 0

main_bb11:                                        ; preds = %main_bb1
  call void @abort() #5
  unreachable
}

; Function Attrs: nounwind
declare void @free(i8*) #1

declare i32 @__VERIFIER_nondet_int() #2

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #1

; Function Attrs: noreturn nounwind
declare void @abort() #3

declare %struct.list_head* @__kittel_nondef.0()

declare i32 @__kittel_nondef.1()

declare %struct.node* @__kittel_nondef.2()

; Function Attrs: nounwind
declare void @llvm.lifetime.start(i64, i8* nocapture) #4

; Function Attrs: nounwind
declare void @llvm.lifetime.end(i64, i8* nocapture) #4

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

