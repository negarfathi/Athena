; ModuleID = 'Benchmarks/TermCOMP/C/SV-COMP_Mixed_Categories/cs_stateful_false-unreach-call/cs_stateful_false-unreach-call.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.__CS__u = type { [2 x i32] }

@"'__CS_round" = global i8 0, align 1
@"'__CS_ret" = global i8 0, align 1
@"'__CS_ret_PREEMPTED" = constant i8 1, align 1
@"'__CS_ret_ERROR" = constant i8 2, align 1
@"'__CS_ret_FINISHED" = constant i8 4, align 1
@"'__CS_error" = global i8 0, align 1
@"'__THREAD_UNUSED" = constant i8 0, align 1
@"'__THREAD_RUNNING" = constant i8 1, align 1
@"'__THREAD_FINISHED" = constant i8 2, align 1
@"'__CS_thread_index" = common global i8 0, align 1
@__CS_thread_lockedon = common global [2 x [3 x i8*]] zeroinitializer, align 16
@__CS_thread_status = common global [2 x [3 x i8]] zeroinitializer, align 1
@__CS_thread_allocated = common global [3 x i8] zeroinitializer, align 1
@__CS_thread_born_round = common global [3 x i8] zeroinitializer, align 1
@__CS_thread = common global [3 x i8* (i8*)*] zeroinitializer, align 16
@ma = common global [2 x i8] zeroinitializer, align 1
@data1 = common global [2 x i32] zeroinitializer, align 4
@data2 = common global [2 x i32] zeroinitializer, align 4
@mb = common global [2 x i8] zeroinitializer, align 1
@__CS_u = common global %union.__CS__u zeroinitializer, align 4

; Function Attrs: nounwind uwtable
define void @__VERIFIER_assert(i32 %cond) #0 {
__VERIFIER_assert_bb0:
  %"0" = icmp ne i32 %cond, 0
  br i1 %"0", label %__VERIFIER_assert_bb1, label %__VERIFIER_assert_bb2

__VERIFIER_assert_bb1:                            ; preds = %__VERIFIER_assert_bb0
  ret void

__VERIFIER_assert_bb2:                            ; preds = %__VERIFIER_assert_bb0
  call void (...)* @__VERIFIER_error() #3
  unreachable
}

; Function Attrs: noreturn
declare void @__VERIFIER_error(...) #1

; Function Attrs: nounwind uwtable
define void @__CS_cs() #0 {
__CS_cs_bb3:
  %"1" = call i8 @__kittel_nondef.1()
  %"2" = load i8* @"'__CS_round", align 1
  %"3" = zext i8 %"2" to i32
  %"4" = zext i8 %"1" to i32
  %"5" = add nsw i32 %"3", %"4"
  %"6" = icmp slt i32 %"5", 2
  %"7" = zext i1 %"6" to i32
  call void @__VERIFIER_assume(i32 %"7")
  %"8" = zext i8 %"1" to i32
  %"9" = load i8* @"'__CS_round", align 1
  %"10" = zext i8 %"9" to i32
  %"11" = add nsw i32 %"10", %"8"
  %"12" = trunc i32 %"11" to i8
  store i8 %"12", i8* @"'__CS_round", align 1
  %"13" = call i32 (...)* @nondet_int()
  %"14" = icmp ne i32 %"13", 0
  br i1 %"14", label %__CS_cs_bb4, label %__CS_cs_bb5

__CS_cs_bb4:                                      ; preds = %__CS_cs_bb3
  %"15" = load i8* @"'__CS_round", align 1
  %"16" = zext i8 %"15" to i32
  %"17" = icmp eq i32 %"16", 1
  br i1 %"17", label %__CS_cs_bb6, label %__CS_cs_bb5

__CS_cs_bb5:                                      ; preds = %__CS_cs_bb4, %__CS_cs_bb3
  %"18" = load i8* @"'__CS_ret", align 1
  %"19" = zext i8 %"18" to i32
  br label %__CS_cs_bb6

__CS_cs_bb6:                                      ; preds = %__CS_cs_bb4, %__CS_cs_bb5
  %"20" = phi i32 [ %"19", %__CS_cs_bb5 ], [ 1, %__CS_cs_bb4 ]
  %"21" = trunc i32 %"20" to i8
  store i8 %"21", i8* @"'__CS_ret", align 1
  ret void
}

declare void @__VERIFIER_assume(i32) #2

declare i32 @nondet_int(...) #2

; Function Attrs: nounwind uwtable
define i32 @__CS_pthread_mutex_init(i8* %mutex, i8* %attr) #0 {
__CS_pthread_mutex_init_bb7:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @__CS_pthread_mutex_destroy(i8* %lock) #0 {
__CS_pthread_mutex_destroy_bb8:
  %"22" = load i8* %lock, align 1
  %"23" = zext i8 %"22" to i32
  %"24" = load i8* @"'__CS_thread_index", align 1
  %"25" = zext i8 %"24" to i32
  %"26" = icmp ne i32 %"23", %"25"
  br i1 %"26", label %__CS_pthread_mutex_destroy_bb9, label %__CS_pthread_mutex_destroy_bb11

__CS_pthread_mutex_destroy_bb9:                   ; preds = %__CS_pthread_mutex_destroy_bb8
  %"27" = load i8* %lock, align 1
  %"28" = zext i8 %"27" to i32
  %"29" = icmp ne i32 %"28", 0
  br i1 %"29", label %__CS_pthread_mutex_destroy_bb10, label %__CS_pthread_mutex_destroy_bb11

__CS_pthread_mutex_destroy_bb10:                  ; preds = %__CS_pthread_mutex_destroy_bb9
  store i8 1, i8* @"'__CS_error", align 1
  store i8 2, i8* @"'__CS_ret", align 1
  br label %__CS_pthread_mutex_destroy_bb12

__CS_pthread_mutex_destroy_bb11:                  ; preds = %__CS_pthread_mutex_destroy_bb9, %__CS_pthread_mutex_destroy_bb8
  store i8 0, i8* %lock, align 1
  br label %__CS_pthread_mutex_destroy_bb12

__CS_pthread_mutex_destroy_bb12:                  ; preds = %__CS_pthread_mutex_destroy_bb11, %__CS_pthread_mutex_destroy_bb10
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @__CS_pthread_mutex_lock(i8* %lock) #0 {
__CS_pthread_mutex_lock_bb13:
  %"30" = load i8* %lock, align 1
  %"31" = zext i8 %"30" to i32
  %"32" = icmp eq i32 %"31", 0
  br i1 %"32", label %__CS_pthread_mutex_lock_bb14, label %__CS_pthread_mutex_lock_bb15

__CS_pthread_mutex_lock_bb14:                     ; preds = %__CS_pthread_mutex_lock_bb13
  %"33" = load i8* @"'__CS_thread_index", align 1
  %"34" = zext i8 %"33" to i32
  %"35" = add nsw i32 %"34", 1
  %"36" = trunc i32 %"35" to i8
  store i8 %"36", i8* %lock, align 1
  br label %__CS_pthread_mutex_lock_bb16

__CS_pthread_mutex_lock_bb15:                     ; preds = %__CS_pthread_mutex_lock_bb13
  store i8 1, i8* @"'__CS_ret", align 1
  br label %__CS_pthread_mutex_lock_bb16

__CS_pthread_mutex_lock_bb16:                     ; preds = %__CS_pthread_mutex_lock_bb14, %__CS_pthread_mutex_lock_bb15
  %.0 = phi i32 [ 0, %__CS_pthread_mutex_lock_bb14 ], [ 1, %__CS_pthread_mutex_lock_bb15 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @__CS_pthread_mutex_unlock(i8* %lock) #0 {
__CS_pthread_mutex_unlock_bb17:
  %"37" = load i8* %lock, align 1
  %"38" = zext i8 %"37" to i32
  %"39" = load i8* @"'__CS_thread_index", align 1
  %"40" = zext i8 %"39" to i32
  %"41" = add nsw i32 %"40", 1
  %"42" = icmp ne i32 %"38", %"41"
  br i1 %"42", label %__CS_pthread_mutex_unlock_bb18, label %__CS_pthread_mutex_unlock_bb19

__CS_pthread_mutex_unlock_bb18:                   ; preds = %__CS_pthread_mutex_unlock_bb17
  store i8 1, i8* @"'__CS_error", align 1
  store i8 2, i8* @"'__CS_ret", align 1
  br label %__CS_pthread_mutex_unlock_bb20

__CS_pthread_mutex_unlock_bb19:                   ; preds = %__CS_pthread_mutex_unlock_bb17
  store i8 0, i8* %lock, align 1
  br label %__CS_pthread_mutex_unlock_bb20

__CS_pthread_mutex_unlock_bb20:                   ; preds = %__CS_pthread_mutex_unlock_bb19, %__CS_pthread_mutex_unlock_bb18
  %.0 = phi i32 [ 1, %__CS_pthread_mutex_unlock_bb18 ], [ 0, %__CS_pthread_mutex_unlock_bb19 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @__CS_pthread_cond_init(i8* %cond, i8* %attr) #0 {
__CS_pthread_cond_init_bb21:
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @__CS_pthread_cond_signal(i8* %cond) #0 {
__CS_pthread_cond_signal_bb22:
  %"43" = load i8* @"'__CS_round", align 1
  %"44" = zext i8 %"43" to i64
  %"45" = getelementptr inbounds [2 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 %"44"
  %"46" = load i8* @"'__CS_round", align 1
  %"47" = zext i8 %"46" to i64
  %"48" = getelementptr inbounds [2 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 %"47"
  br label %__CS_pthread_cond_signal_bb23

__CS_pthread_cond_signal_bb23:                    ; preds = %__CS_pthread_cond_signal_bb26, %__CS_pthread_cond_signal_bb22
  %j.0 = phi i32 [ 0, %__CS_pthread_cond_signal_bb22 ], [ %"56", %__CS_pthread_cond_signal_bb26 ]
  %"49" = icmp sle i32 %j.0, 2
  br i1 %"49", label %__CS_pthread_cond_signal_bb24, label %__CS_pthread_cond_signal_bb27

__CS_pthread_cond_signal_bb24:                    ; preds = %__CS_pthread_cond_signal_bb23
  %"50" = sext i32 %j.0 to i64
  %"51" = getelementptr inbounds [3 x i8*]* %"45", i32 0, i64 %"50"
  %"52" = load i8** %"51", align 8
  %"53" = icmp eq i8* %"52", %cond
  br i1 %"53", label %__CS_pthread_cond_signal_bb25, label %__CS_pthread_cond_signal_bb26

__CS_pthread_cond_signal_bb25:                    ; preds = %__CS_pthread_cond_signal_bb24
  %"54" = sext i32 %j.0 to i64
  %"55" = getelementptr inbounds [3 x i8*]* %"48", i32 0, i64 %"54"
  store i8* null, i8** %"55", align 8
  br label %__CS_pthread_cond_signal_bb26

__CS_pthread_cond_signal_bb26:                    ; preds = %__CS_pthread_cond_signal_bb24, %__CS_pthread_cond_signal_bb25
  %"56" = add nsw i32 %j.0, 1
  br label %__CS_pthread_cond_signal_bb23

__CS_pthread_cond_signal_bb27:                    ; preds = %__CS_pthread_cond_signal_bb23
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @__CS_pthread_cond_broadcast(i8* %cond) #0 {
__CS_pthread_cond_broadcast_bb28:
  %"57" = load i8* @"'__CS_round", align 1
  %"58" = zext i8 %"57" to i64
  %"59" = getelementptr inbounds [2 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 %"58"
  %"60" = load i8* @"'__CS_round", align 1
  %"61" = zext i8 %"60" to i64
  %"62" = getelementptr inbounds [2 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 %"61"
  br label %__CS_pthread_cond_broadcast_bb29

__CS_pthread_cond_broadcast_bb29:                 ; preds = %__CS_pthread_cond_broadcast_bb32, %__CS_pthread_cond_broadcast_bb28
  %j.0 = phi i32 [ 0, %__CS_pthread_cond_broadcast_bb28 ], [ %"70", %__CS_pthread_cond_broadcast_bb32 ]
  %"63" = icmp sle i32 %j.0, 2
  br i1 %"63", label %__CS_pthread_cond_broadcast_bb30, label %__CS_pthread_cond_broadcast_bb33

__CS_pthread_cond_broadcast_bb30:                 ; preds = %__CS_pthread_cond_broadcast_bb29
  %"64" = sext i32 %j.0 to i64
  %"65" = getelementptr inbounds [3 x i8*]* %"59", i32 0, i64 %"64"
  %"66" = load i8** %"65", align 8
  %"67" = icmp eq i8* %"66", %cond
  br i1 %"67", label %__CS_pthread_cond_broadcast_bb31, label %__CS_pthread_cond_broadcast_bb32

__CS_pthread_cond_broadcast_bb31:                 ; preds = %__CS_pthread_cond_broadcast_bb30
  %"68" = sext i32 %j.0 to i64
  %"69" = getelementptr inbounds [3 x i8*]* %"62", i32 0, i64 %"68"
  store i8* null, i8** %"69", align 8
  br label %__CS_pthread_cond_broadcast_bb32

__CS_pthread_cond_broadcast_bb32:                 ; preds = %__CS_pthread_cond_broadcast_bb30, %__CS_pthread_cond_broadcast_bb31
  %"70" = add nsw i32 %j.0, 1
  br label %__CS_pthread_cond_broadcast_bb29

__CS_pthread_cond_broadcast_bb33:                 ; preds = %__CS_pthread_cond_broadcast_bb29
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @__CS_pthread_cond_wait(i8* %cond, i8* %lock) #0 {
__CS_pthread_cond_wait_bb34:
  %"71" = load i8* %lock, align 1
  %"72" = zext i8 %"71" to i32
  %"73" = load i8* @"'__CS_thread_index", align 1
  %"74" = zext i8 %"73" to i32
  %"75" = add nsw i32 %"74", 1
  %"76" = icmp ne i32 %"72", %"75"
  br i1 %"76", label %__CS_pthread_cond_wait_bb35, label %__CS_pthread_cond_wait_bb36

__CS_pthread_cond_wait_bb35:                      ; preds = %__CS_pthread_cond_wait_bb34
  store i8 1, i8* @"'__CS_error", align 1
  store i8 2, i8* @"'__CS_ret", align 1
  br label %__CS_pthread_cond_wait_bb39

__CS_pthread_cond_wait_bb36:                      ; preds = %__CS_pthread_cond_wait_bb34
  store i8 0, i8* %lock, align 1
  %"77" = load i8* @"'__CS_thread_index", align 1
  %"78" = zext i8 %"77" to i64
  %"79" = load i8* @"'__CS_round", align 1
  %"80" = zext i8 %"79" to i64
  %"81" = getelementptr inbounds [2 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 %"80"
  %"82" = getelementptr inbounds [3 x i8*]* %"81", i32 0, i64 %"78"
  store i8* %cond, i8** %"82", align 8
  store i8 1, i8* @"'__CS_ret", align 1
  %"83" = load i8* %lock, align 1
  %"84" = zext i8 %"83" to i32
  %"85" = icmp eq i32 %"84", 0
  br i1 %"85", label %__CS_pthread_cond_wait_bb37, label %__CS_pthread_cond_wait_bb38

__CS_pthread_cond_wait_bb37:                      ; preds = %__CS_pthread_cond_wait_bb36
  %"86" = load i8* @"'__CS_thread_index", align 1
  %"87" = zext i8 %"86" to i32
  %"88" = add nsw i32 %"87", 1
  %"89" = trunc i32 %"88" to i8
  store i8 %"89", i8* %lock, align 1
  br label %__CS_pthread_cond_wait_bb39

__CS_pthread_cond_wait_bb38:                      ; preds = %__CS_pthread_cond_wait_bb36
  store i8 1, i8* @"'__CS_ret", align 1
  br label %__CS_pthread_cond_wait_bb39

__CS_pthread_cond_wait_bb39:                      ; preds = %__CS_pthread_cond_wait_bb37, %__CS_pthread_cond_wait_bb38, %__CS_pthread_cond_wait_bb35
  %.0 = phi i32 [ 1, %__CS_pthread_cond_wait_bb35 ], [ 0, %__CS_pthread_cond_wait_bb37 ], [ 1, %__CS_pthread_cond_wait_bb38 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @__CS_assert(i32 %expr) #0 {
__CS_assert_bb40:
  %"90" = icmp ne i32 %expr, 0
  br i1 %"90", label %__CS_assert_bb42, label %__CS_assert_bb41

__CS_assert_bb41:                                 ; preds = %__CS_assert_bb40
  store i8 1, i8* @"'__CS_error", align 1
  store i8 2, i8* @"'__CS_ret", align 1
  br label %__CS_assert_bb42

__CS_assert_bb42:                                 ; preds = %__CS_assert_bb41, %__CS_assert_bb40
  ret void
}

; Function Attrs: nounwind uwtable
define void @__CS_assume(i32 %expr) #0 {
__CS_assume_bb43:
  %"91" = icmp ne i32 %expr, 0
  br i1 %"91", label %__CS_assume_bb45, label %__CS_assume_bb44

__CS_assume_bb44:                                 ; preds = %__CS_assume_bb43
  store i8 1, i8* @"'__CS_ret", align 1
  br label %__CS_assume_bb45

__CS_assume_bb45:                                 ; preds = %__CS_assume_bb44, %__CS_assume_bb43
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @__CS_pthread_join(i8 zeroext %thread, i8** %value_ptr) #0 {
__CS_pthread_join_bb46:
  %"92" = zext i8 %thread to i32
  %"93" = icmp ne i32 %"92", 123
  %"94" = zext i8 %thread to i32
  %"95" = icmp sgt i32 %"94", 3
  %or.cond = and i1 %"93", %"95"
  br i1 %or.cond, label %__CS_pthread_join_bb47, label %__CS_pthread_join_bb48

__CS_pthread_join_bb47:                           ; preds = %__CS_pthread_join_bb46
  store i8 1, i8* @"'__CS_error", align 1
  store i8 2, i8* @"'__CS_ret", align 1
  br label %__CS_pthread_join_bb54

__CS_pthread_join_bb48:                           ; preds = %__CS_pthread_join_bb46
  %"96" = zext i8 %thread to i32
  %"97" = icmp eq i32 %"96", 123
  br i1 %"97", label %__CS_pthread_join_bb50, label %__CS_pthread_join_bb49

__CS_pthread_join_bb49:                           ; preds = %__CS_pthread_join_bb48
  %"98" = zext i8 %thread to i64
  %"99" = load i8* @"'__CS_round", align 1
  %"100" = zext i8 %"99" to i64
  %"101" = getelementptr inbounds [2 x [3 x i8]]* @__CS_thread_status, i32 0, i64 %"100"
  %"102" = getelementptr inbounds [3 x i8]* %"101", i32 0, i64 %"98"
  %"103" = load i8* %"102", align 1
  %"104" = zext i8 %"103" to i32
  %"105" = icmp eq i32 %"104", 1
  br i1 %"105", label %__CS_pthread_join_bb50, label %__CS_pthread_join_bb51

__CS_pthread_join_bb50:                           ; preds = %__CS_pthread_join_bb49, %__CS_pthread_join_bb48
  store i8 1, i8* @"'__CS_ret", align 1
  br label %__CS_pthread_join_bb54

__CS_pthread_join_bb51:                           ; preds = %__CS_pthread_join_bb49
  %"106" = zext i8 %thread to i64
  %"107" = load i8* @"'__CS_round", align 1
  %"108" = zext i8 %"107" to i64
  %"109" = getelementptr inbounds [2 x [3 x i8]]* @__CS_thread_status, i32 0, i64 %"108"
  %"110" = getelementptr inbounds [3 x i8]* %"109", i32 0, i64 %"106"
  %"111" = load i8* %"110", align 1
  %"112" = zext i8 %"111" to i32
  %"113" = icmp eq i32 %"112", 0
  br i1 %"113", label %__CS_pthread_join_bb52, label %__CS_pthread_join_bb53

__CS_pthread_join_bb52:                           ; preds = %__CS_pthread_join_bb51
  store i8 1, i8* @"'__CS_error", align 1
  store i8 2, i8* @"'__CS_ret", align 1
  br label %__CS_pthread_join_bb54

__CS_pthread_join_bb53:                           ; preds = %__CS_pthread_join_bb51
  %"114" = zext i8 %thread to i64
  %"115" = load i8* @"'__CS_round", align 1
  %"116" = zext i8 %"115" to i64
  %"117" = getelementptr inbounds [2 x [3 x i8]]* @__CS_thread_status, i32 0, i64 %"116"
  %"118" = getelementptr inbounds [3 x i8]* %"117", i32 0, i64 %"114"
  %"119" = load i8* %"118", align 1
  %"120" = zext i8 %"119" to i32
  %"121" = icmp eq i32 %"120", 2
  %"122" = zext i1 %"121" to i32
  call void @__VERIFIER_assume(i32 %"122")
  br label %__CS_pthread_join_bb54

__CS_pthread_join_bb54:                           ; preds = %__CS_pthread_join_bb53, %__CS_pthread_join_bb52, %__CS_pthread_join_bb50, %__CS_pthread_join_bb47
  ret i32 0
}

; Function Attrs: nounwind uwtable
define i32 @__CS_pthread_create(i8* %id1, i8* %attr, i8* (i8*)* %t1, i8* %arg) #0 {
__CS_pthread_create_bb55:
  %"123" = load i8* @"'__CS_thread_index", align 1
  %"124" = zext i8 %"123" to i32
  %"125" = icmp eq i32 %"124", 2
  br i1 %"125", label %__CS_pthread_create_bb56, label %__CS_pthread_create_bb57

__CS_pthread_create_bb56:                         ; preds = %__CS_pthread_create_bb55
  store i8 123, i8* %id1, align 1
  br label %__CS_pthread_create_bb58

__CS_pthread_create_bb57:                         ; preds = %__CS_pthread_create_bb55
  %"126" = load i8* @"'__CS_thread_index", align 1
  %"127" = add i8 %"126", 1
  store i8 %"127", i8* @"'__CS_thread_index", align 1
  %"128" = load i8* @"'__CS_thread_index", align 1
  %"129" = zext i8 %"128" to i64
  %"130" = getelementptr inbounds [3 x i8]* @__CS_thread_allocated, i32 0, i64 %"129"
  store i8 1, i8* %"130", align 1
  %"131" = load i8* @"'__CS_round", align 1
  %"132" = load i8* @"'__CS_thread_index", align 1
  %"133" = zext i8 %"132" to i64
  %"134" = getelementptr inbounds [3 x i8]* @__CS_thread_born_round, i32 0, i64 %"133"
  store i8 %"131", i8* %"134", align 1
  %"135" = load i8* @"'__CS_thread_index", align 1
  %"136" = zext i8 %"135" to i64
  %"137" = getelementptr inbounds [3 x i8* (i8*)*]* @__CS_thread, i32 0, i64 %"136"
  store i8* (i8*)* %t1, i8* (i8*)** %"137", align 8
  %"138" = load i8* @"'__CS_thread_index", align 1
  %"139" = zext i8 %"138" to i64
  %"140" = load i8* @"'__CS_round", align 1
  %"141" = zext i8 %"140" to i64
  %"142" = getelementptr inbounds [2 x [3 x i8]]* @__CS_thread_status, i32 0, i64 %"141"
  %"143" = getelementptr inbounds [3 x i8]* %"142", i32 0, i64 %"139"
  store i8 1, i8* %"143", align 1
  %"144" = load i8* @"'__CS_thread_index", align 1
  store i8 %"144", i8* %id1, align 1
  %"145" = load i8* @"'__CS_thread_index", align 1
  %"146" = zext i8 %"145" to i32
  br label %__CS_pthread_create_bb58

__CS_pthread_create_bb58:                         ; preds = %__CS_pthread_create_bb57, %__CS_pthread_create_bb56
  %.0 = phi i32 [ -1, %__CS_pthread_create_bb56 ], [ %"146", %__CS_pthread_create_bb57 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i8* @thread1(i8* %arg) #0 {
thread1_bb59:
  %"147" = call i8* @__kittel_nondef.2()
  %"148" = call i8 @__kittel_nondef.1() #4
  %"149" = load i8* @"'__CS_round", align 1
  %"150" = zext i8 %"149" to i32
  %"151" = zext i8 %"148" to i32
  %"152" = add nsw i32 %"150", %"151"
  %"153" = icmp slt i32 %"152", 2
  %"154" = zext i1 %"153" to i32
  call void @__VERIFIER_assume(i32 %"154") #4
  %"155" = zext i8 %"148" to i32
  %"156" = load i8* @"'__CS_round", align 1
  %"157" = zext i8 %"156" to i32
  %"158" = add nsw i32 %"157", %"155"
  %"159" = trunc i32 %"158" to i8
  store i8 %"159", i8* @"'__CS_round", align 1
  %"160" = call i32 (...)* @nondet_int() #4
  %"161" = icmp ne i32 %"160", 0
  br i1 %"161", label %thread1_bb60, label %thread1_bb61

thread1_bb60:                                     ; preds = %thread1_bb59
  %"162" = load i8* @"'__CS_round", align 1
  %"163" = zext i8 %"162" to i32
  %"164" = icmp eq i32 %"163", 1
  br i1 %"164", label %thread1___CS_cs.exit, label %thread1_bb61

thread1_bb61:                                     ; preds = %thread1_bb60, %thread1_bb59
  %"165" = load i8* @"'__CS_ret", align 1
  %"166" = zext i8 %"165" to i32
  br label %thread1___CS_cs.exit

thread1___CS_cs.exit:                             ; preds = %thread1_bb60, %thread1_bb61
  %"167" = phi i32 [ %"166", %thread1_bb61 ], [ 1, %thread1_bb60 ]
  %"168" = trunc i32 %"167" to i8
  store i8 %"168", i8* @"'__CS_ret", align 1
  %"169" = load i8* @"'__CS_ret", align 1
  %"170" = zext i8 %"169" to i32
  %"171" = icmp ne i32 %"170", 0
  br i1 %"171", label %thread1_bb83, label %thread1_bb62

thread1_bb62:                                     ; preds = %thread1___CS_cs.exit
  %"172" = load i8* @"'__CS_round", align 1
  %"173" = zext i8 %"172" to i64
  %"174" = getelementptr inbounds [2 x i8]* @ma, i32 0, i64 %"173"
  %"175" = load i8* %"174", align 1
  %"176" = zext i8 %"175" to i32
  %"177" = icmp eq i32 %"176", 0
  br i1 %"177", label %thread1_bb63, label %thread1_bb64

thread1_bb63:                                     ; preds = %thread1_bb62
  %"178" = load i8* @"'__CS_thread_index", align 1
  %"179" = zext i8 %"178" to i32
  %"180" = add nsw i32 %"179", 1
  %"181" = trunc i32 %"180" to i8
  store i8 %"181", i8* %"174", align 1
  br label %thread1___CS_pthread_mutex_lock.exit

thread1_bb64:                                     ; preds = %thread1_bb62
  store i8 1, i8* @"'__CS_ret", align 1
  br label %thread1___CS_pthread_mutex_lock.exit

thread1___CS_pthread_mutex_lock.exit:             ; preds = %thread1_bb63, %thread1_bb64
  %"182" = call i8 @__kittel_nondef.1() #4
  %"183" = load i8* @"'__CS_round", align 1
  %"184" = zext i8 %"183" to i32
  %"185" = zext i8 %"182" to i32
  %"186" = add nsw i32 %"184", %"185"
  %"187" = icmp slt i32 %"186", 2
  %"188" = zext i1 %"187" to i32
  call void @__VERIFIER_assume(i32 %"188") #4
  %"189" = zext i8 %"182" to i32
  %"190" = load i8* @"'__CS_round", align 1
  %"191" = zext i8 %"190" to i32
  %"192" = add nsw i32 %"191", %"189"
  %"193" = trunc i32 %"192" to i8
  store i8 %"193", i8* @"'__CS_round", align 1
  %"194" = call i32 (...)* @nondet_int() #4
  %"195" = icmp ne i32 %"194", 0
  br i1 %"195", label %thread1_bb65, label %thread1_bb66

thread1_bb65:                                     ; preds = %thread1___CS_pthread_mutex_lock.exit
  %"196" = load i8* @"'__CS_round", align 1
  %"197" = zext i8 %"196" to i32
  %"198" = icmp eq i32 %"197", 1
  br i1 %"198", label %thread1___CS_cs.exit1, label %thread1_bb66

thread1_bb66:                                     ; preds = %thread1_bb65, %thread1___CS_pthread_mutex_lock.exit
  %"199" = load i8* @"'__CS_ret", align 1
  %"200" = zext i8 %"199" to i32
  br label %thread1___CS_cs.exit1

thread1___CS_cs.exit1:                            ; preds = %thread1_bb65, %thread1_bb66
  %"201" = phi i32 [ %"200", %thread1_bb66 ], [ 1, %thread1_bb65 ]
  %"202" = trunc i32 %"201" to i8
  store i8 %"202", i8* @"'__CS_ret", align 1
  %"203" = load i8* @"'__CS_ret", align 1
  %"204" = zext i8 %"203" to i32
  %"205" = icmp ne i32 %"204", 0
  br i1 %"205", label %thread1_bb83, label %thread1_bb67

thread1_bb67:                                     ; preds = %thread1___CS_cs.exit1
  %"206" = load i8* @"'__CS_round", align 1
  %"207" = zext i8 %"206" to i64
  %"208" = getelementptr inbounds [2 x i32]* @data1, i32 0, i64 %"207"
  %"209" = load i32* %"208", align 4
  %"210" = add nsw i32 %"209", 1
  store i32 %"210", i32* %"208", align 4
  %"211" = call i8 @__kittel_nondef.1() #4
  %"212" = load i8* @"'__CS_round", align 1
  %"213" = zext i8 %"212" to i32
  %"214" = zext i8 %"211" to i32
  %"215" = add nsw i32 %"213", %"214"
  %"216" = icmp slt i32 %"215", 2
  %"217" = zext i1 %"216" to i32
  call void @__VERIFIER_assume(i32 %"217") #4
  %"218" = zext i8 %"211" to i32
  %"219" = load i8* @"'__CS_round", align 1
  %"220" = zext i8 %"219" to i32
  %"221" = add nsw i32 %"220", %"218"
  %"222" = trunc i32 %"221" to i8
  store i8 %"222", i8* @"'__CS_round", align 1
  %"223" = call i32 (...)* @nondet_int() #4
  %"224" = icmp ne i32 %"223", 0
  br i1 %"224", label %thread1_bb68, label %thread1_bb69

thread1_bb68:                                     ; preds = %thread1_bb67
  %"225" = load i8* @"'__CS_round", align 1
  %"226" = zext i8 %"225" to i32
  %"227" = icmp eq i32 %"226", 1
  br i1 %"227", label %thread1___CS_cs.exit2, label %thread1_bb69

thread1_bb69:                                     ; preds = %thread1_bb68, %thread1_bb67
  %"228" = load i8* @"'__CS_ret", align 1
  %"229" = zext i8 %"228" to i32
  br label %thread1___CS_cs.exit2

thread1___CS_cs.exit2:                            ; preds = %thread1_bb68, %thread1_bb69
  %"230" = phi i32 [ %"229", %thread1_bb69 ], [ 1, %thread1_bb68 ]
  %"231" = trunc i32 %"230" to i8
  store i8 %"231", i8* @"'__CS_ret", align 1
  %"232" = load i8* @"'__CS_ret", align 1
  %"233" = zext i8 %"232" to i32
  %"234" = icmp ne i32 %"233", 0
  br i1 %"234", label %thread1_bb83, label %thread1_bb70

thread1_bb70:                                     ; preds = %thread1___CS_cs.exit2
  %"235" = load i8* @"'__CS_round", align 1
  %"236" = zext i8 %"235" to i64
  %"237" = getelementptr inbounds [2 x i8]* @ma, i32 0, i64 %"236"
  %"238" = load i8* %"237", align 1
  %"239" = zext i8 %"238" to i32
  %"240" = load i8* @"'__CS_thread_index", align 1
  %"241" = zext i8 %"240" to i32
  %"242" = add nsw i32 %"241", 1
  %"243" = icmp ne i32 %"239", %"242"
  br i1 %"243", label %thread1_bb71, label %thread1_bb72

thread1_bb71:                                     ; preds = %thread1_bb70
  store i8 1, i8* @"'__CS_error", align 1
  store i8 2, i8* @"'__CS_ret", align 1
  br label %thread1___CS_pthread_mutex_unlock.exit

thread1_bb72:                                     ; preds = %thread1_bb70
  store i8 0, i8* %"237", align 1
  br label %thread1___CS_pthread_mutex_unlock.exit

thread1___CS_pthread_mutex_unlock.exit:           ; preds = %thread1_bb71, %thread1_bb72
  %"244" = call i8 @__kittel_nondef.1() #4
  %"245" = load i8* @"'__CS_round", align 1
  %"246" = zext i8 %"245" to i32
  %"247" = zext i8 %"244" to i32
  %"248" = add nsw i32 %"246", %"247"
  %"249" = icmp slt i32 %"248", 2
  %"250" = zext i1 %"249" to i32
  call void @__VERIFIER_assume(i32 %"250") #4
  %"251" = zext i8 %"244" to i32
  %"252" = load i8* @"'__CS_round", align 1
  %"253" = zext i8 %"252" to i32
  %"254" = add nsw i32 %"253", %"251"
  %"255" = trunc i32 %"254" to i8
  store i8 %"255", i8* @"'__CS_round", align 1
  %"256" = call i32 (...)* @nondet_int() #4
  %"257" = icmp ne i32 %"256", 0
  br i1 %"257", label %thread1_bb73, label %thread1_bb74

thread1_bb73:                                     ; preds = %thread1___CS_pthread_mutex_unlock.exit
  %"258" = load i8* @"'__CS_round", align 1
  %"259" = zext i8 %"258" to i32
  %"260" = icmp eq i32 %"259", 1
  br i1 %"260", label %thread1___CS_cs.exit4, label %thread1_bb74

thread1_bb74:                                     ; preds = %thread1_bb73, %thread1___CS_pthread_mutex_unlock.exit
  %"261" = load i8* @"'__CS_ret", align 1
  %"262" = zext i8 %"261" to i32
  br label %thread1___CS_cs.exit4

thread1___CS_cs.exit4:                            ; preds = %thread1_bb73, %thread1_bb74
  %"263" = phi i32 [ %"262", %thread1_bb74 ], [ 1, %thread1_bb73 ]
  %"264" = trunc i32 %"263" to i8
  store i8 %"264", i8* @"'__CS_ret", align 1
  %"265" = load i8* @"'__CS_ret", align 1
  %"266" = zext i8 %"265" to i32
  %"267" = icmp ne i32 %"266", 0
  br i1 %"267", label %thread1_bb83, label %thread1_bb75

thread1_bb75:                                     ; preds = %thread1___CS_cs.exit4
  %"268" = load i8* @"'__CS_round", align 1
  %"269" = zext i8 %"268" to i64
  %"270" = getelementptr inbounds [2 x i8]* @ma, i32 0, i64 %"269"
  %"271" = load i8* %"270", align 1
  %"272" = zext i8 %"271" to i32
  %"273" = icmp eq i32 %"272", 0
  br i1 %"273", label %thread1_bb76, label %thread1_bb77

thread1_bb76:                                     ; preds = %thread1_bb75
  %"274" = load i8* @"'__CS_thread_index", align 1
  %"275" = zext i8 %"274" to i32
  %"276" = add nsw i32 %"275", 1
  %"277" = trunc i32 %"276" to i8
  store i8 %"277", i8* %"270", align 1
  br label %thread1___CS_pthread_mutex_lock.exit6

thread1_bb77:                                     ; preds = %thread1_bb75
  store i8 1, i8* @"'__CS_ret", align 1
  br label %thread1___CS_pthread_mutex_lock.exit6

thread1___CS_pthread_mutex_lock.exit6:            ; preds = %thread1_bb76, %thread1_bb77
  %"278" = call i8 @__kittel_nondef.1() #4
  %"279" = load i8* @"'__CS_round", align 1
  %"280" = zext i8 %"279" to i32
  %"281" = zext i8 %"278" to i32
  %"282" = add nsw i32 %"280", %"281"
  %"283" = icmp slt i32 %"282", 2
  %"284" = zext i1 %"283" to i32
  call void @__VERIFIER_assume(i32 %"284") #4
  %"285" = zext i8 %"278" to i32
  %"286" = load i8* @"'__CS_round", align 1
  %"287" = zext i8 %"286" to i32
  %"288" = add nsw i32 %"287", %"285"
  %"289" = trunc i32 %"288" to i8
  store i8 %"289", i8* @"'__CS_round", align 1
  %"290" = call i32 (...)* @nondet_int() #4
  %"291" = icmp ne i32 %"290", 0
  br i1 %"291", label %thread1_bb78, label %thread1_bb79

thread1_bb78:                                     ; preds = %thread1___CS_pthread_mutex_lock.exit6
  %"292" = load i8* @"'__CS_round", align 1
  %"293" = zext i8 %"292" to i32
  %"294" = icmp eq i32 %"293", 1
  br i1 %"294", label %thread1___CS_cs.exit7, label %thread1_bb79

thread1_bb79:                                     ; preds = %thread1_bb78, %thread1___CS_pthread_mutex_lock.exit6
  %"295" = load i8* @"'__CS_ret", align 1
  %"296" = zext i8 %"295" to i32
  br label %thread1___CS_cs.exit7

thread1___CS_cs.exit7:                            ; preds = %thread1_bb78, %thread1_bb79
  %"297" = phi i32 [ %"296", %thread1_bb79 ], [ 1, %thread1_bb78 ]
  %"298" = trunc i32 %"297" to i8
  store i8 %"298", i8* @"'__CS_ret", align 1
  %"299" = load i8* @"'__CS_ret", align 1
  %"300" = zext i8 %"299" to i32
  %"301" = icmp ne i32 %"300", 0
  br i1 %"301", label %thread1_bb83, label %thread1_bb80

thread1_bb80:                                     ; preds = %thread1___CS_cs.exit7
  %"302" = load i8* @"'__CS_round", align 1
  %"303" = zext i8 %"302" to i64
  %"304" = getelementptr inbounds [2 x i32]* @data2, i32 0, i64 %"303"
  %"305" = load i32* %"304", align 4
  %"306" = add nsw i32 %"305", 1
  store i32 %"306", i32* %"304", align 4
  %"307" = call i8 @__kittel_nondef.1() #4
  %"308" = load i8* @"'__CS_round", align 1
  %"309" = zext i8 %"308" to i32
  %"310" = zext i8 %"307" to i32
  %"311" = add nsw i32 %"309", %"310"
  %"312" = icmp slt i32 %"311", 2
  %"313" = zext i1 %"312" to i32
  call void @__VERIFIER_assume(i32 %"313") #4
  %"314" = zext i8 %"307" to i32
  %"315" = load i8* @"'__CS_round", align 1
  %"316" = zext i8 %"315" to i32
  %"317" = add nsw i32 %"316", %"314"
  %"318" = trunc i32 %"317" to i8
  store i8 %"318", i8* @"'__CS_round", align 1
  %"319" = call i32 (...)* @nondet_int() #4
  %"320" = icmp ne i32 %"319", 0
  br i1 %"320", label %thread1_bb81, label %thread1_bb82

thread1_bb81:                                     ; preds = %thread1_bb80
  %"321" = load i8* @"'__CS_round", align 1
  %"322" = zext i8 %"321" to i32
  %"323" = icmp eq i32 %"322", 1
  br i1 %"323", label %thread1___CS_cs.exit8, label %thread1_bb82

thread1_bb82:                                     ; preds = %thread1_bb81, %thread1_bb80
  %"324" = load i8* @"'__CS_ret", align 1
  %"325" = zext i8 %"324" to i32
  br label %thread1___CS_cs.exit8

thread1___CS_cs.exit8:                            ; preds = %thread1_bb81, %thread1_bb82
  %"326" = phi i32 [ %"325", %thread1_bb82 ], [ 1, %thread1_bb81 ]
  %"327" = trunc i32 %"326" to i8
  store i8 %"327", i8* @"'__CS_ret", align 1
  %"328" = load i8* @"'__CS_ret", align 1
  %"329" = zext i8 %"328" to i32
  %"330" = icmp ne i32 %"329", 0
  br i1 %"330", label %thread1_bb83, label %thread1_bb84

thread1_bb83:                                     ; preds = %thread1___CS_cs.exit8, %thread1___CS_cs.exit7, %thread1___CS_cs.exit4, %thread1___CS_cs.exit2, %thread1___CS_cs.exit1, %thread1___CS_cs.exit
  ret i8* null

thread1_bb84:                                     ; preds = %thread1___CS_cs.exit8
  %"331" = load i8* @"'__CS_round", align 1
  %"332" = zext i8 %"331" to i64
  %"333" = getelementptr inbounds [2 x i8]* @ma, i32 0, i64 %"332"
  %"334" = load i8* %"333", align 1
  %"335" = zext i8 %"334" to i32
  %"336" = load i8* @"'__CS_thread_index", align 1
  %"337" = zext i8 %"336" to i32
  %"338" = add nsw i32 %"337", 1
  %"339" = icmp ne i32 %"335", %"338"
  br i1 %"339", label %thread1_bb85, label %thread1_bb86

thread1_bb85:                                     ; preds = %thread1_bb84
  store i8 1, i8* @"'__CS_error", align 1
  store i8 2, i8* @"'__CS_ret", align 1
  br label %thread1___CS_pthread_mutex_unlock.exit10

thread1_bb86:                                     ; preds = %thread1_bb84
  store i8 0, i8* %"333", align 1
  br label %thread1___CS_pthread_mutex_unlock.exit10

thread1___CS_pthread_mutex_unlock.exit10:         ; preds = %thread1_bb85, %thread1_bb86
  %"340" = call i8 @__kittel_nondef.1() #4
  %"341" = load i8* @"'__CS_round", align 1
  %"342" = zext i8 %"341" to i32
  %"343" = zext i8 %"340" to i32
  %"344" = add nsw i32 %"342", %"343"
  %"345" = icmp slt i32 %"344", 2
  %"346" = zext i1 %"345" to i32
  call void @__VERIFIER_assume(i32 %"346") #4
  %"347" = zext i8 %"340" to i32
  %"348" = load i8* @"'__CS_round", align 1
  %"349" = zext i8 %"348" to i32
  %"350" = add nsw i32 %"349", %"347"
  %"351" = trunc i32 %"350" to i8
  store i8 %"351", i8* @"'__CS_round", align 1
  %"352" = call i32 (...)* @nondet_int() #4
  %"353" = icmp ne i32 %"352", 0
  br i1 %"353", label %thread1_bb87, label %thread1_bb88

thread1_bb87:                                     ; preds = %thread1___CS_pthread_mutex_unlock.exit10
  %"354" = load i8* @"'__CS_round", align 1
  %"355" = zext i8 %"354" to i32
  %"356" = icmp eq i32 %"355", 1
  br i1 %"356", label %thread1___CS_cs.exit11, label %thread1_bb88

thread1_bb88:                                     ; preds = %thread1_bb87, %thread1___CS_pthread_mutex_unlock.exit10
  %"357" = load i8* @"'__CS_ret", align 1
  %"358" = zext i8 %"357" to i32
  br label %thread1___CS_cs.exit11

thread1___CS_cs.exit11:                           ; preds = %thread1_bb87, %thread1_bb88
  %"359" = phi i32 [ %"358", %thread1_bb88 ], [ 1, %thread1_bb87 ]
  %"360" = trunc i32 %"359" to i8
  store i8 %"360", i8* @"'__CS_ret", align 1
  %"361" = load i8* @"'__CS_ret", align 1
  %"362" = zext i8 %"361" to i32
  %"363" = icmp ne i32 %"362", 0
  %. = select i1 %"363", i8* null, i8* %"147"
  ret i8* %.
}

; Function Attrs: nounwind uwtable
define i8* @thread2(i8* %arg) #0 {
thread2_bb89:
  %"364" = call i8* @__kittel_nondef.2()
  %"365" = call i8 @__kittel_nondef.1() #4
  %"366" = load i8* @"'__CS_round", align 1
  %"367" = zext i8 %"366" to i32
  %"368" = zext i8 %"365" to i32
  %"369" = add nsw i32 %"367", %"368"
  %"370" = icmp slt i32 %"369", 2
  %"371" = zext i1 %"370" to i32
  call void @__VERIFIER_assume(i32 %"371") #4
  %"372" = zext i8 %"365" to i32
  %"373" = load i8* @"'__CS_round", align 1
  %"374" = zext i8 %"373" to i32
  %"375" = add nsw i32 %"374", %"372"
  %"376" = trunc i32 %"375" to i8
  store i8 %"376", i8* @"'__CS_round", align 1
  %"377" = call i32 (...)* @nondet_int() #4
  %"378" = icmp ne i32 %"377", 0
  br i1 %"378", label %thread2_bb90, label %thread2_bb91

thread2_bb90:                                     ; preds = %thread2_bb89
  %"379" = load i8* @"'__CS_round", align 1
  %"380" = zext i8 %"379" to i32
  %"381" = icmp eq i32 %"380", 1
  br i1 %"381", label %thread2___CS_cs.exit, label %thread2_bb91

thread2_bb91:                                     ; preds = %thread2_bb90, %thread2_bb89
  %"382" = load i8* @"'__CS_ret", align 1
  %"383" = zext i8 %"382" to i32
  br label %thread2___CS_cs.exit

thread2___CS_cs.exit:                             ; preds = %thread2_bb90, %thread2_bb91
  %"384" = phi i32 [ %"383", %thread2_bb91 ], [ 1, %thread2_bb90 ]
  %"385" = trunc i32 %"384" to i8
  store i8 %"385", i8* @"'__CS_ret", align 1
  %"386" = load i8* @"'__CS_ret", align 1
  %"387" = zext i8 %"386" to i32
  %"388" = icmp ne i32 %"387", 0
  br i1 %"388", label %thread2_bb113, label %thread2_bb92

thread2_bb92:                                     ; preds = %thread2___CS_cs.exit
  %"389" = load i8* @"'__CS_round", align 1
  %"390" = zext i8 %"389" to i64
  %"391" = getelementptr inbounds [2 x i8]* @ma, i32 0, i64 %"390"
  %"392" = load i8* %"391", align 1
  %"393" = zext i8 %"392" to i32
  %"394" = icmp eq i32 %"393", 0
  br i1 %"394", label %thread2_bb93, label %thread2_bb94

thread2_bb93:                                     ; preds = %thread2_bb92
  %"395" = load i8* @"'__CS_thread_index", align 1
  %"396" = zext i8 %"395" to i32
  %"397" = add nsw i32 %"396", 1
  %"398" = trunc i32 %"397" to i8
  store i8 %"398", i8* %"391", align 1
  br label %thread2___CS_pthread_mutex_lock.exit

thread2_bb94:                                     ; preds = %thread2_bb92
  store i8 1, i8* @"'__CS_ret", align 1
  br label %thread2___CS_pthread_mutex_lock.exit

thread2___CS_pthread_mutex_lock.exit:             ; preds = %thread2_bb93, %thread2_bb94
  %"399" = call i8 @__kittel_nondef.1() #4
  %"400" = load i8* @"'__CS_round", align 1
  %"401" = zext i8 %"400" to i32
  %"402" = zext i8 %"399" to i32
  %"403" = add nsw i32 %"401", %"402"
  %"404" = icmp slt i32 %"403", 2
  %"405" = zext i1 %"404" to i32
  call void @__VERIFIER_assume(i32 %"405") #4
  %"406" = zext i8 %"399" to i32
  %"407" = load i8* @"'__CS_round", align 1
  %"408" = zext i8 %"407" to i32
  %"409" = add nsw i32 %"408", %"406"
  %"410" = trunc i32 %"409" to i8
  store i8 %"410", i8* @"'__CS_round", align 1
  %"411" = call i32 (...)* @nondet_int() #4
  %"412" = icmp ne i32 %"411", 0
  br i1 %"412", label %thread2_bb95, label %thread2_bb96

thread2_bb95:                                     ; preds = %thread2___CS_pthread_mutex_lock.exit
  %"413" = load i8* @"'__CS_round", align 1
  %"414" = zext i8 %"413" to i32
  %"415" = icmp eq i32 %"414", 1
  br i1 %"415", label %thread2___CS_cs.exit1, label %thread2_bb96

thread2_bb96:                                     ; preds = %thread2_bb95, %thread2___CS_pthread_mutex_lock.exit
  %"416" = load i8* @"'__CS_ret", align 1
  %"417" = zext i8 %"416" to i32
  br label %thread2___CS_cs.exit1

thread2___CS_cs.exit1:                            ; preds = %thread2_bb95, %thread2_bb96
  %"418" = phi i32 [ %"417", %thread2_bb96 ], [ 1, %thread2_bb95 ]
  %"419" = trunc i32 %"418" to i8
  store i8 %"419", i8* @"'__CS_ret", align 1
  %"420" = load i8* @"'__CS_ret", align 1
  %"421" = zext i8 %"420" to i32
  %"422" = icmp ne i32 %"421", 0
  br i1 %"422", label %thread2_bb113, label %thread2_bb97

thread2_bb97:                                     ; preds = %thread2___CS_cs.exit1
  %"423" = load i8* @"'__CS_round", align 1
  %"424" = zext i8 %"423" to i64
  %"425" = getelementptr inbounds [2 x i32]* @data1, i32 0, i64 %"424"
  %"426" = load i32* %"425", align 4
  %"427" = add nsw i32 %"426", 5
  store i32 %"427", i32* %"425", align 4
  %"428" = call i8 @__kittel_nondef.1() #4
  %"429" = load i8* @"'__CS_round", align 1
  %"430" = zext i8 %"429" to i32
  %"431" = zext i8 %"428" to i32
  %"432" = add nsw i32 %"430", %"431"
  %"433" = icmp slt i32 %"432", 2
  %"434" = zext i1 %"433" to i32
  call void @__VERIFIER_assume(i32 %"434") #4
  %"435" = zext i8 %"428" to i32
  %"436" = load i8* @"'__CS_round", align 1
  %"437" = zext i8 %"436" to i32
  %"438" = add nsw i32 %"437", %"435"
  %"439" = trunc i32 %"438" to i8
  store i8 %"439", i8* @"'__CS_round", align 1
  %"440" = call i32 (...)* @nondet_int() #4
  %"441" = icmp ne i32 %"440", 0
  br i1 %"441", label %thread2_bb98, label %thread2_bb99

thread2_bb98:                                     ; preds = %thread2_bb97
  %"442" = load i8* @"'__CS_round", align 1
  %"443" = zext i8 %"442" to i32
  %"444" = icmp eq i32 %"443", 1
  br i1 %"444", label %thread2___CS_cs.exit2, label %thread2_bb99

thread2_bb99:                                     ; preds = %thread2_bb98, %thread2_bb97
  %"445" = load i8* @"'__CS_ret", align 1
  %"446" = zext i8 %"445" to i32
  br label %thread2___CS_cs.exit2

thread2___CS_cs.exit2:                            ; preds = %thread2_bb98, %thread2_bb99
  %"447" = phi i32 [ %"446", %thread2_bb99 ], [ 1, %thread2_bb98 ]
  %"448" = trunc i32 %"447" to i8
  store i8 %"448", i8* @"'__CS_ret", align 1
  %"449" = load i8* @"'__CS_ret", align 1
  %"450" = zext i8 %"449" to i32
  %"451" = icmp ne i32 %"450", 0
  br i1 %"451", label %thread2_bb113, label %thread2_bb100

thread2_bb100:                                    ; preds = %thread2___CS_cs.exit2
  %"452" = load i8* @"'__CS_round", align 1
  %"453" = zext i8 %"452" to i64
  %"454" = getelementptr inbounds [2 x i8]* @ma, i32 0, i64 %"453"
  %"455" = load i8* %"454", align 1
  %"456" = zext i8 %"455" to i32
  %"457" = load i8* @"'__CS_thread_index", align 1
  %"458" = zext i8 %"457" to i32
  %"459" = add nsw i32 %"458", 1
  %"460" = icmp ne i32 %"456", %"459"
  br i1 %"460", label %thread2_bb101, label %thread2_bb102

thread2_bb101:                                    ; preds = %thread2_bb100
  store i8 1, i8* @"'__CS_error", align 1
  store i8 2, i8* @"'__CS_ret", align 1
  br label %thread2___CS_pthread_mutex_unlock.exit

thread2_bb102:                                    ; preds = %thread2_bb100
  store i8 0, i8* %"454", align 1
  br label %thread2___CS_pthread_mutex_unlock.exit

thread2___CS_pthread_mutex_unlock.exit:           ; preds = %thread2_bb101, %thread2_bb102
  %"461" = call i8 @__kittel_nondef.1() #4
  %"462" = load i8* @"'__CS_round", align 1
  %"463" = zext i8 %"462" to i32
  %"464" = zext i8 %"461" to i32
  %"465" = add nsw i32 %"463", %"464"
  %"466" = icmp slt i32 %"465", 2
  %"467" = zext i1 %"466" to i32
  call void @__VERIFIER_assume(i32 %"467") #4
  %"468" = zext i8 %"461" to i32
  %"469" = load i8* @"'__CS_round", align 1
  %"470" = zext i8 %"469" to i32
  %"471" = add nsw i32 %"470", %"468"
  %"472" = trunc i32 %"471" to i8
  store i8 %"472", i8* @"'__CS_round", align 1
  %"473" = call i32 (...)* @nondet_int() #4
  %"474" = icmp ne i32 %"473", 0
  br i1 %"474", label %thread2_bb103, label %thread2_bb104

thread2_bb103:                                    ; preds = %thread2___CS_pthread_mutex_unlock.exit
  %"475" = load i8* @"'__CS_round", align 1
  %"476" = zext i8 %"475" to i32
  %"477" = icmp eq i32 %"476", 1
  br i1 %"477", label %thread2___CS_cs.exit4, label %thread2_bb104

thread2_bb104:                                    ; preds = %thread2_bb103, %thread2___CS_pthread_mutex_unlock.exit
  %"478" = load i8* @"'__CS_ret", align 1
  %"479" = zext i8 %"478" to i32
  br label %thread2___CS_cs.exit4

thread2___CS_cs.exit4:                            ; preds = %thread2_bb103, %thread2_bb104
  %"480" = phi i32 [ %"479", %thread2_bb104 ], [ 1, %thread2_bb103 ]
  %"481" = trunc i32 %"480" to i8
  store i8 %"481", i8* @"'__CS_ret", align 1
  %"482" = load i8* @"'__CS_ret", align 1
  %"483" = zext i8 %"482" to i32
  %"484" = icmp ne i32 %"483", 0
  br i1 %"484", label %thread2_bb113, label %thread2_bb105

thread2_bb105:                                    ; preds = %thread2___CS_cs.exit4
  %"485" = load i8* @"'__CS_round", align 1
  %"486" = zext i8 %"485" to i64
  %"487" = getelementptr inbounds [2 x i8]* @ma, i32 0, i64 %"486"
  %"488" = load i8* %"487", align 1
  %"489" = zext i8 %"488" to i32
  %"490" = icmp eq i32 %"489", 0
  br i1 %"490", label %thread2_bb106, label %thread2_bb107

thread2_bb106:                                    ; preds = %thread2_bb105
  %"491" = load i8* @"'__CS_thread_index", align 1
  %"492" = zext i8 %"491" to i32
  %"493" = add nsw i32 %"492", 1
  %"494" = trunc i32 %"493" to i8
  store i8 %"494", i8* %"487", align 1
  br label %thread2___CS_pthread_mutex_lock.exit6

thread2_bb107:                                    ; preds = %thread2_bb105
  store i8 1, i8* @"'__CS_ret", align 1
  br label %thread2___CS_pthread_mutex_lock.exit6

thread2___CS_pthread_mutex_lock.exit6:            ; preds = %thread2_bb106, %thread2_bb107
  %"495" = call i8 @__kittel_nondef.1() #4
  %"496" = load i8* @"'__CS_round", align 1
  %"497" = zext i8 %"496" to i32
  %"498" = zext i8 %"495" to i32
  %"499" = add nsw i32 %"497", %"498"
  %"500" = icmp slt i32 %"499", 2
  %"501" = zext i1 %"500" to i32
  call void @__VERIFIER_assume(i32 %"501") #4
  %"502" = zext i8 %"495" to i32
  %"503" = load i8* @"'__CS_round", align 1
  %"504" = zext i8 %"503" to i32
  %"505" = add nsw i32 %"504", %"502"
  %"506" = trunc i32 %"505" to i8
  store i8 %"506", i8* @"'__CS_round", align 1
  %"507" = call i32 (...)* @nondet_int() #4
  %"508" = icmp ne i32 %"507", 0
  br i1 %"508", label %thread2_bb108, label %thread2_bb109

thread2_bb108:                                    ; preds = %thread2___CS_pthread_mutex_lock.exit6
  %"509" = load i8* @"'__CS_round", align 1
  %"510" = zext i8 %"509" to i32
  %"511" = icmp eq i32 %"510", 1
  br i1 %"511", label %thread2___CS_cs.exit7, label %thread2_bb109

thread2_bb109:                                    ; preds = %thread2_bb108, %thread2___CS_pthread_mutex_lock.exit6
  %"512" = load i8* @"'__CS_ret", align 1
  %"513" = zext i8 %"512" to i32
  br label %thread2___CS_cs.exit7

thread2___CS_cs.exit7:                            ; preds = %thread2_bb108, %thread2_bb109
  %"514" = phi i32 [ %"513", %thread2_bb109 ], [ 1, %thread2_bb108 ]
  %"515" = trunc i32 %"514" to i8
  store i8 %"515", i8* @"'__CS_ret", align 1
  %"516" = load i8* @"'__CS_ret", align 1
  %"517" = zext i8 %"516" to i32
  %"518" = icmp ne i32 %"517", 0
  br i1 %"518", label %thread2_bb113, label %thread2_bb110

thread2_bb110:                                    ; preds = %thread2___CS_cs.exit7
  %"519" = load i8* @"'__CS_round", align 1
  %"520" = zext i8 %"519" to i64
  %"521" = getelementptr inbounds [2 x i32]* @data2, i32 0, i64 %"520"
  %"522" = load i32* %"521", align 4
  %"523" = sub nsw i32 %"522", 6
  store i32 %"523", i32* %"521", align 4
  %"524" = call i8 @__kittel_nondef.1() #4
  %"525" = load i8* @"'__CS_round", align 1
  %"526" = zext i8 %"525" to i32
  %"527" = zext i8 %"524" to i32
  %"528" = add nsw i32 %"526", %"527"
  %"529" = icmp slt i32 %"528", 2
  %"530" = zext i1 %"529" to i32
  call void @__VERIFIER_assume(i32 %"530") #4
  %"531" = zext i8 %"524" to i32
  %"532" = load i8* @"'__CS_round", align 1
  %"533" = zext i8 %"532" to i32
  %"534" = add nsw i32 %"533", %"531"
  %"535" = trunc i32 %"534" to i8
  store i8 %"535", i8* @"'__CS_round", align 1
  %"536" = call i32 (...)* @nondet_int() #4
  %"537" = icmp ne i32 %"536", 0
  br i1 %"537", label %thread2_bb111, label %thread2_bb112

thread2_bb111:                                    ; preds = %thread2_bb110
  %"538" = load i8* @"'__CS_round", align 1
  %"539" = zext i8 %"538" to i32
  %"540" = icmp eq i32 %"539", 1
  br i1 %"540", label %thread2___CS_cs.exit8, label %thread2_bb112

thread2_bb112:                                    ; preds = %thread2_bb111, %thread2_bb110
  %"541" = load i8* @"'__CS_ret", align 1
  %"542" = zext i8 %"541" to i32
  br label %thread2___CS_cs.exit8

thread2___CS_cs.exit8:                            ; preds = %thread2_bb111, %thread2_bb112
  %"543" = phi i32 [ %"542", %thread2_bb112 ], [ 1, %thread2_bb111 ]
  %"544" = trunc i32 %"543" to i8
  store i8 %"544", i8* @"'__CS_ret", align 1
  %"545" = load i8* @"'__CS_ret", align 1
  %"546" = zext i8 %"545" to i32
  %"547" = icmp ne i32 %"546", 0
  br i1 %"547", label %thread2_bb113, label %thread2_bb114

thread2_bb113:                                    ; preds = %thread2___CS_cs.exit8, %thread2___CS_cs.exit7, %thread2___CS_cs.exit4, %thread2___CS_cs.exit2, %thread2___CS_cs.exit1, %thread2___CS_cs.exit
  ret i8* null

thread2_bb114:                                    ; preds = %thread2___CS_cs.exit8
  %"548" = load i8* @"'__CS_round", align 1
  %"549" = zext i8 %"548" to i64
  %"550" = getelementptr inbounds [2 x i8]* @ma, i32 0, i64 %"549"
  %"551" = load i8* %"550", align 1
  %"552" = zext i8 %"551" to i32
  %"553" = load i8* @"'__CS_thread_index", align 1
  %"554" = zext i8 %"553" to i32
  %"555" = add nsw i32 %"554", 1
  %"556" = icmp ne i32 %"552", %"555"
  br i1 %"556", label %thread2_bb115, label %thread2_bb116

thread2_bb115:                                    ; preds = %thread2_bb114
  store i8 1, i8* @"'__CS_error", align 1
  store i8 2, i8* @"'__CS_ret", align 1
  br label %thread2___CS_pthread_mutex_unlock.exit10

thread2_bb116:                                    ; preds = %thread2_bb114
  store i8 0, i8* %"550", align 1
  br label %thread2___CS_pthread_mutex_unlock.exit10

thread2___CS_pthread_mutex_unlock.exit10:         ; preds = %thread2_bb115, %thread2_bb116
  %"557" = call i8 @__kittel_nondef.1() #4
  %"558" = load i8* @"'__CS_round", align 1
  %"559" = zext i8 %"558" to i32
  %"560" = zext i8 %"557" to i32
  %"561" = add nsw i32 %"559", %"560"
  %"562" = icmp slt i32 %"561", 2
  %"563" = zext i1 %"562" to i32
  call void @__VERIFIER_assume(i32 %"563") #4
  %"564" = zext i8 %"557" to i32
  %"565" = load i8* @"'__CS_round", align 1
  %"566" = zext i8 %"565" to i32
  %"567" = add nsw i32 %"566", %"564"
  %"568" = trunc i32 %"567" to i8
  store i8 %"568", i8* @"'__CS_round", align 1
  %"569" = call i32 (...)* @nondet_int() #4
  %"570" = icmp ne i32 %"569", 0
  br i1 %"570", label %thread2_bb117, label %thread2_bb118

thread2_bb117:                                    ; preds = %thread2___CS_pthread_mutex_unlock.exit10
  %"571" = load i8* @"'__CS_round", align 1
  %"572" = zext i8 %"571" to i32
  %"573" = icmp eq i32 %"572", 1
  br i1 %"573", label %thread2___CS_cs.exit11, label %thread2_bb118

thread2_bb118:                                    ; preds = %thread2_bb117, %thread2___CS_pthread_mutex_unlock.exit10
  %"574" = load i8* @"'__CS_ret", align 1
  %"575" = zext i8 %"574" to i32
  br label %thread2___CS_cs.exit11

thread2___CS_cs.exit11:                           ; preds = %thread2_bb117, %thread2_bb118
  %"576" = phi i32 [ %"575", %thread2_bb118 ], [ 1, %thread2_bb117 ]
  %"577" = trunc i32 %"576" to i8
  store i8 %"577", i8* @"'__CS_ret", align 1
  %"578" = load i8* @"'__CS_ret", align 1
  %"579" = zext i8 %"578" to i32
  %"580" = icmp ne i32 %"579", 0
  %. = select i1 %"580", i8* null, i8* %"364"
  ret i8* %.
}

; Function Attrs: nounwind uwtable
define i8* @main_thread(i8* %arg) #0 {
main_thread_bb119:
  %"581" = call i8* @__kittel_nondef.2()
  %"582" = call i8 @__kittel_nondef.1() #4
  %"583" = load i8* @"'__CS_round", align 1
  %"584" = zext i8 %"583" to i32
  %"585" = zext i8 %"582" to i32
  %"586" = add nsw i32 %"584", %"585"
  %"587" = icmp slt i32 %"586", 2
  %"588" = zext i1 %"587" to i32
  call void @__VERIFIER_assume(i32 %"588") #4
  %"589" = zext i8 %"582" to i32
  %"590" = load i8* @"'__CS_round", align 1
  %"591" = zext i8 %"590" to i32
  %"592" = add nsw i32 %"591", %"589"
  %"593" = trunc i32 %"592" to i8
  store i8 %"593", i8* @"'__CS_round", align 1
  %"594" = call i32 (...)* @nondet_int() #4
  %"595" = icmp ne i32 %"594", 0
  br i1 %"595", label %main_thread_bb120, label %main_thread_bb121

main_thread_bb120:                                ; preds = %main_thread_bb119
  %"596" = load i8* @"'__CS_round", align 1
  %"597" = zext i8 %"596" to i32
  %"598" = icmp eq i32 %"597", 1
  br i1 %"598", label %main_thread___CS_cs.exit, label %main_thread_bb121

main_thread_bb121:                                ; preds = %main_thread_bb120, %main_thread_bb119
  %"599" = load i8* @"'__CS_ret", align 1
  %"600" = zext i8 %"599" to i32
  br label %main_thread___CS_cs.exit

main_thread___CS_cs.exit:                         ; preds = %main_thread_bb120, %main_thread_bb121
  %"601" = phi i32 [ %"600", %main_thread_bb121 ], [ 1, %main_thread_bb120 ]
  %"602" = trunc i32 %"601" to i8
  store i8 %"602", i8* @"'__CS_ret", align 1
  %"603" = load i8* @"'__CS_ret", align 1
  %"604" = zext i8 %"603" to i32
  %"605" = icmp ne i32 %"604", 0
  br i1 %"605", label %main_thread_bb168, label %main_thread_bb122

main_thread_bb122:                                ; preds = %main_thread___CS_cs.exit
  %"606" = call i8 @__kittel_nondef.1() #4
  %"607" = load i8* @"'__CS_round", align 1
  %"608" = zext i8 %"607" to i32
  %"609" = zext i8 %"606" to i32
  %"610" = add nsw i32 %"608", %"609"
  %"611" = icmp slt i32 %"610", 2
  %"612" = zext i1 %"611" to i32
  call void @__VERIFIER_assume(i32 %"612") #4
  %"613" = zext i8 %"606" to i32
  %"614" = load i8* @"'__CS_round", align 1
  %"615" = zext i8 %"614" to i32
  %"616" = add nsw i32 %"615", %"613"
  %"617" = trunc i32 %"616" to i8
  store i8 %"617", i8* @"'__CS_round", align 1
  %"618" = call i32 (...)* @nondet_int() #4
  %"619" = icmp ne i32 %"618", 0
  br i1 %"619", label %main_thread_bb123, label %main_thread_bb124

main_thread_bb123:                                ; preds = %main_thread_bb122
  %"620" = load i8* @"'__CS_round", align 1
  %"621" = zext i8 %"620" to i32
  %"622" = icmp eq i32 %"621", 1
  br i1 %"622", label %main_thread___CS_cs.exit1, label %main_thread_bb124

main_thread_bb124:                                ; preds = %main_thread_bb123, %main_thread_bb122
  %"623" = load i8* @"'__CS_ret", align 1
  %"624" = zext i8 %"623" to i32
  br label %main_thread___CS_cs.exit1

main_thread___CS_cs.exit1:                        ; preds = %main_thread_bb123, %main_thread_bb124
  %"625" = phi i32 [ %"624", %main_thread_bb124 ], [ 1, %main_thread_bb123 ]
  %"626" = trunc i32 %"625" to i8
  store i8 %"626", i8* @"'__CS_ret", align 1
  %"627" = load i8* @"'__CS_ret", align 1
  %"628" = zext i8 %"627" to i32
  %"629" = icmp ne i32 %"628", 0
  br i1 %"629", label %main_thread_bb168, label %main_thread_bb125

main_thread_bb125:                                ; preds = %main_thread___CS_cs.exit1
  %"630" = call i8 @__kittel_nondef.1() #4
  %"631" = load i8* @"'__CS_round", align 1
  %"632" = zext i8 %"631" to i32
  %"633" = zext i8 %"630" to i32
  %"634" = add nsw i32 %"632", %"633"
  %"635" = icmp slt i32 %"634", 2
  %"636" = zext i1 %"635" to i32
  call void @__VERIFIER_assume(i32 %"636") #4
  %"637" = zext i8 %"630" to i32
  %"638" = load i8* @"'__CS_round", align 1
  %"639" = zext i8 %"638" to i32
  %"640" = add nsw i32 %"639", %"637"
  %"641" = trunc i32 %"640" to i8
  store i8 %"641", i8* @"'__CS_round", align 1
  %"642" = call i32 (...)* @nondet_int() #4
  %"643" = icmp ne i32 %"642", 0
  br i1 %"643", label %main_thread_bb126, label %main_thread_bb127

main_thread_bb126:                                ; preds = %main_thread_bb125
  %"644" = load i8* @"'__CS_round", align 1
  %"645" = zext i8 %"644" to i32
  %"646" = icmp eq i32 %"645", 1
  br i1 %"646", label %main_thread___CS_cs.exit2, label %main_thread_bb127

main_thread_bb127:                                ; preds = %main_thread_bb126, %main_thread_bb125
  %"647" = load i8* @"'__CS_ret", align 1
  %"648" = zext i8 %"647" to i32
  br label %main_thread___CS_cs.exit2

main_thread___CS_cs.exit2:                        ; preds = %main_thread_bb126, %main_thread_bb127
  %"649" = phi i32 [ %"648", %main_thread_bb127 ], [ 1, %main_thread_bb126 ]
  %"650" = trunc i32 %"649" to i8
  store i8 %"650", i8* @"'__CS_ret", align 1
  %"651" = load i8* @"'__CS_ret", align 1
  %"652" = zext i8 %"651" to i32
  %"653" = icmp ne i32 %"652", 0
  br i1 %"653", label %main_thread_bb168, label %main_thread_bb128

main_thread_bb128:                                ; preds = %main_thread___CS_cs.exit2
  %"654" = load i8* @"'__CS_round", align 1
  %"655" = zext i8 %"654" to i64
  %"656" = getelementptr inbounds [2 x i32]* @data1, i32 0, i64 %"655"
  store i32 10, i32* %"656", align 4
  %"657" = call i8 @__kittel_nondef.1() #4
  %"658" = load i8* @"'__CS_round", align 1
  %"659" = zext i8 %"658" to i32
  %"660" = zext i8 %"657" to i32
  %"661" = add nsw i32 %"659", %"660"
  %"662" = icmp slt i32 %"661", 2
  %"663" = zext i1 %"662" to i32
  call void @__VERIFIER_assume(i32 %"663") #4
  %"664" = zext i8 %"657" to i32
  %"665" = load i8* @"'__CS_round", align 1
  %"666" = zext i8 %"665" to i32
  %"667" = add nsw i32 %"666", %"664"
  %"668" = trunc i32 %"667" to i8
  store i8 %"668", i8* @"'__CS_round", align 1
  %"669" = call i32 (...)* @nondet_int() #4
  %"670" = icmp ne i32 %"669", 0
  br i1 %"670", label %main_thread_bb129, label %main_thread_bb130

main_thread_bb129:                                ; preds = %main_thread_bb128
  %"671" = load i8* @"'__CS_round", align 1
  %"672" = zext i8 %"671" to i32
  %"673" = icmp eq i32 %"672", 1
  br i1 %"673", label %main_thread___CS_cs.exit3, label %main_thread_bb130

main_thread_bb130:                                ; preds = %main_thread_bb129, %main_thread_bb128
  %"674" = load i8* @"'__CS_ret", align 1
  %"675" = zext i8 %"674" to i32
  br label %main_thread___CS_cs.exit3

main_thread___CS_cs.exit3:                        ; preds = %main_thread_bb129, %main_thread_bb130
  %"676" = phi i32 [ %"675", %main_thread_bb130 ], [ 1, %main_thread_bb129 ]
  %"677" = trunc i32 %"676" to i8
  store i8 %"677", i8* @"'__CS_ret", align 1
  %"678" = load i8* @"'__CS_ret", align 1
  %"679" = zext i8 %"678" to i32
  %"680" = icmp ne i32 %"679", 0
  br i1 %"680", label %main_thread_bb168, label %main_thread_bb131

main_thread_bb131:                                ; preds = %main_thread___CS_cs.exit3
  %"681" = load i8* @"'__CS_round", align 1
  %"682" = zext i8 %"681" to i64
  %"683" = getelementptr inbounds [2 x i32]* @data2, i32 0, i64 %"682"
  store i32 10, i32* %"683", align 4
  %"684" = call i8 @__kittel_nondef.1() #4
  %"685" = load i8* @"'__CS_round", align 1
  %"686" = zext i8 %"685" to i32
  %"687" = zext i8 %"684" to i32
  %"688" = add nsw i32 %"686", %"687"
  %"689" = icmp slt i32 %"688", 2
  %"690" = zext i1 %"689" to i32
  call void @__VERIFIER_assume(i32 %"690") #4
  %"691" = zext i8 %"684" to i32
  %"692" = load i8* @"'__CS_round", align 1
  %"693" = zext i8 %"692" to i32
  %"694" = add nsw i32 %"693", %"691"
  %"695" = trunc i32 %"694" to i8
  store i8 %"695", i8* @"'__CS_round", align 1
  %"696" = call i32 (...)* @nondet_int() #4
  %"697" = icmp ne i32 %"696", 0
  br i1 %"697", label %main_thread_bb132, label %main_thread_bb133

main_thread_bb132:                                ; preds = %main_thread_bb131
  %"698" = load i8* @"'__CS_round", align 1
  %"699" = zext i8 %"698" to i32
  %"700" = icmp eq i32 %"699", 1
  br i1 %"700", label %main_thread___CS_cs.exit4, label %main_thread_bb133

main_thread_bb133:                                ; preds = %main_thread_bb132, %main_thread_bb131
  %"701" = load i8* @"'__CS_ret", align 1
  %"702" = zext i8 %"701" to i32
  br label %main_thread___CS_cs.exit4

main_thread___CS_cs.exit4:                        ; preds = %main_thread_bb132, %main_thread_bb133
  %"703" = phi i32 [ %"702", %main_thread_bb133 ], [ 1, %main_thread_bb132 ]
  %"704" = trunc i32 %"703" to i8
  store i8 %"704", i8* @"'__CS_ret", align 1
  %"705" = load i8* @"'__CS_ret", align 1
  %"706" = zext i8 %"705" to i32
  %"707" = icmp ne i32 %"706", 0
  br i1 %"707", label %main_thread_bb168, label %main_thread_bb134

main_thread_bb134:                                ; preds = %main_thread___CS_cs.exit4
  %"708" = load i8* @"'__CS_thread_index", align 1
  %"709" = zext i8 %"708" to i32
  %"710" = icmp eq i32 %"709", 2
  br i1 %"710", label %main_thread___CS_pthread_create.exit, label %main_thread_bb135

main_thread_bb135:                                ; preds = %main_thread_bb134
  %"711" = load i8* @"'__CS_thread_index", align 1
  %"712" = add i8 %"711", 1
  store i8 %"712", i8* @"'__CS_thread_index", align 1
  %"713" = load i8* @"'__CS_thread_index", align 1
  %"714" = zext i8 %"713" to i64
  %"715" = getelementptr inbounds [3 x i8]* @__CS_thread_allocated, i32 0, i64 %"714"
  store i8 1, i8* %"715", align 1
  %"716" = load i8* @"'__CS_round", align 1
  %"717" = load i8* @"'__CS_thread_index", align 1
  %"718" = zext i8 %"717" to i64
  %"719" = getelementptr inbounds [3 x i8]* @__CS_thread_born_round, i32 0, i64 %"718"
  store i8 %"716", i8* %"719", align 1
  %"720" = load i8* @"'__CS_thread_index", align 1
  %"721" = zext i8 %"720" to i64
  %"722" = getelementptr inbounds [3 x i8* (i8*)*]* @__CS_thread, i32 0, i64 %"721"
  store i8* (i8*)* @thread1, i8* (i8*)** %"722", align 8
  %"723" = load i8* @"'__CS_thread_index", align 1
  %"724" = zext i8 %"723" to i64
  %"725" = load i8* @"'__CS_round", align 1
  %"726" = zext i8 %"725" to i64
  %"727" = getelementptr inbounds [2 x [3 x i8]]* @__CS_thread_status, i32 0, i64 %"726"
  %"728" = getelementptr inbounds [3 x i8]* %"727", i32 0, i64 %"724"
  store i8 1, i8* %"728", align 1
  %"729" = load i8* @"'__CS_thread_index", align 1
  br label %main_thread___CS_pthread_create.exit

main_thread___CS_pthread_create.exit:             ; preds = %main_thread_bb134, %main_thread_bb135
  %t1.0 = phi i8 [ %"729", %main_thread_bb135 ], [ 123, %main_thread_bb134 ]
  %"730" = call i8 @__kittel_nondef.1() #4
  %"731" = load i8* @"'__CS_round", align 1
  %"732" = zext i8 %"731" to i32
  %"733" = zext i8 %"730" to i32
  %"734" = add nsw i32 %"732", %"733"
  %"735" = icmp slt i32 %"734", 2
  %"736" = zext i1 %"735" to i32
  call void @__VERIFIER_assume(i32 %"736") #4
  %"737" = zext i8 %"730" to i32
  %"738" = load i8* @"'__CS_round", align 1
  %"739" = zext i8 %"738" to i32
  %"740" = add nsw i32 %"739", %"737"
  %"741" = trunc i32 %"740" to i8
  store i8 %"741", i8* @"'__CS_round", align 1
  %"742" = call i32 (...)* @nondet_int() #4
  %"743" = icmp ne i32 %"742", 0
  br i1 %"743", label %main_thread_bb136, label %main_thread_bb137

main_thread_bb136:                                ; preds = %main_thread___CS_pthread_create.exit
  %"744" = load i8* @"'__CS_round", align 1
  %"745" = zext i8 %"744" to i32
  %"746" = icmp eq i32 %"745", 1
  br i1 %"746", label %main_thread___CS_cs.exit5, label %main_thread_bb137

main_thread_bb137:                                ; preds = %main_thread_bb136, %main_thread___CS_pthread_create.exit
  %"747" = load i8* @"'__CS_ret", align 1
  %"748" = zext i8 %"747" to i32
  br label %main_thread___CS_cs.exit5

main_thread___CS_cs.exit5:                        ; preds = %main_thread_bb136, %main_thread_bb137
  %"749" = phi i32 [ %"748", %main_thread_bb137 ], [ 1, %main_thread_bb136 ]
  %"750" = trunc i32 %"749" to i8
  store i8 %"750", i8* @"'__CS_ret", align 1
  %"751" = load i8* @"'__CS_ret", align 1
  %"752" = zext i8 %"751" to i32
  %"753" = icmp ne i32 %"752", 0
  br i1 %"753", label %main_thread_bb168, label %main_thread_bb138

main_thread_bb138:                                ; preds = %main_thread___CS_cs.exit5
  %"754" = load i8* @"'__CS_thread_index", align 1
  %"755" = zext i8 %"754" to i32
  %"756" = icmp eq i32 %"755", 2
  br i1 %"756", label %main_thread___CS_pthread_create.exit7, label %main_thread_bb139

main_thread_bb139:                                ; preds = %main_thread_bb138
  %"757" = load i8* @"'__CS_thread_index", align 1
  %"758" = add i8 %"757", 1
  store i8 %"758", i8* @"'__CS_thread_index", align 1
  %"759" = load i8* @"'__CS_thread_index", align 1
  %"760" = zext i8 %"759" to i64
  %"761" = getelementptr inbounds [3 x i8]* @__CS_thread_allocated, i32 0, i64 %"760"
  store i8 1, i8* %"761", align 1
  %"762" = load i8* @"'__CS_round", align 1
  %"763" = load i8* @"'__CS_thread_index", align 1
  %"764" = zext i8 %"763" to i64
  %"765" = getelementptr inbounds [3 x i8]* @__CS_thread_born_round, i32 0, i64 %"764"
  store i8 %"762", i8* %"765", align 1
  %"766" = load i8* @"'__CS_thread_index", align 1
  %"767" = zext i8 %"766" to i64
  %"768" = getelementptr inbounds [3 x i8* (i8*)*]* @__CS_thread, i32 0, i64 %"767"
  store i8* (i8*)* @thread2, i8* (i8*)** %"768", align 8
  %"769" = load i8* @"'__CS_thread_index", align 1
  %"770" = zext i8 %"769" to i64
  %"771" = load i8* @"'__CS_round", align 1
  %"772" = zext i8 %"771" to i64
  %"773" = getelementptr inbounds [2 x [3 x i8]]* @__CS_thread_status, i32 0, i64 %"772"
  %"774" = getelementptr inbounds [3 x i8]* %"773", i32 0, i64 %"770"
  store i8 1, i8* %"774", align 1
  %"775" = load i8* @"'__CS_thread_index", align 1
  br label %main_thread___CS_pthread_create.exit7

main_thread___CS_pthread_create.exit7:            ; preds = %main_thread_bb138, %main_thread_bb139
  %t2.0 = phi i8 [ %"775", %main_thread_bb139 ], [ 123, %main_thread_bb138 ]
  %"776" = call i8 @__kittel_nondef.1() #4
  %"777" = load i8* @"'__CS_round", align 1
  %"778" = zext i8 %"777" to i32
  %"779" = zext i8 %"776" to i32
  %"780" = add nsw i32 %"778", %"779"
  %"781" = icmp slt i32 %"780", 2
  %"782" = zext i1 %"781" to i32
  call void @__VERIFIER_assume(i32 %"782") #4
  %"783" = zext i8 %"776" to i32
  %"784" = load i8* @"'__CS_round", align 1
  %"785" = zext i8 %"784" to i32
  %"786" = add nsw i32 %"785", %"783"
  %"787" = trunc i32 %"786" to i8
  store i8 %"787", i8* @"'__CS_round", align 1
  %"788" = call i32 (...)* @nondet_int() #4
  %"789" = icmp ne i32 %"788", 0
  br i1 %"789", label %main_thread_bb140, label %main_thread_bb141

main_thread_bb140:                                ; preds = %main_thread___CS_pthread_create.exit7
  %"790" = load i8* @"'__CS_round", align 1
  %"791" = zext i8 %"790" to i32
  %"792" = icmp eq i32 %"791", 1
  br i1 %"792", label %main_thread___CS_cs.exit8, label %main_thread_bb141

main_thread_bb141:                                ; preds = %main_thread_bb140, %main_thread___CS_pthread_create.exit7
  %"793" = load i8* @"'__CS_ret", align 1
  %"794" = zext i8 %"793" to i32
  br label %main_thread___CS_cs.exit8

main_thread___CS_cs.exit8:                        ; preds = %main_thread_bb140, %main_thread_bb141
  %"795" = phi i32 [ %"794", %main_thread_bb141 ], [ 1, %main_thread_bb140 ]
  %"796" = trunc i32 %"795" to i8
  store i8 %"796", i8* @"'__CS_ret", align 1
  %"797" = load i8* @"'__CS_ret", align 1
  %"798" = zext i8 %"797" to i32
  %"799" = icmp ne i32 %"798", 0
  br i1 %"799", label %main_thread_bb168, label %main_thread_bb142

main_thread_bb142:                                ; preds = %main_thread___CS_cs.exit8
  %"800" = zext i8 %t1.0 to i32
  %"801" = icmp ne i32 %"800", 123
  %"802" = zext i8 %t1.0 to i32
  %"803" = icmp sgt i32 %"802", 3
  %or.cond.i = and i1 %"801", %"803"
  br i1 %or.cond.i, label %main_thread_bb143, label %main_thread_bb144

main_thread_bb143:                                ; preds = %main_thread_bb142
  store i8 1, i8* @"'__CS_error", align 1
  store i8 2, i8* @"'__CS_ret", align 1
  br label %main_thread___CS_pthread_join.exit

main_thread_bb144:                                ; preds = %main_thread_bb142
  %"804" = zext i8 %t1.0 to i32
  %"805" = icmp eq i32 %"804", 123
  br i1 %"805", label %main_thread_bb146, label %main_thread_bb145

main_thread_bb145:                                ; preds = %main_thread_bb144
  %"806" = zext i8 %t1.0 to i64
  %"807" = load i8* @"'__CS_round", align 1
  %"808" = zext i8 %"807" to i64
  %"809" = getelementptr inbounds [2 x [3 x i8]]* @__CS_thread_status, i32 0, i64 %"808"
  %"810" = getelementptr inbounds [3 x i8]* %"809", i32 0, i64 %"806"
  %"811" = load i8* %"810", align 1
  %"812" = zext i8 %"811" to i32
  %"813" = icmp eq i32 %"812", 1
  br i1 %"813", label %main_thread_bb146, label %main_thread_bb147

main_thread_bb146:                                ; preds = %main_thread_bb145, %main_thread_bb144
  store i8 1, i8* @"'__CS_ret", align 1
  br label %main_thread___CS_pthread_join.exit

main_thread_bb147:                                ; preds = %main_thread_bb145
  %"814" = zext i8 %t1.0 to i64
  %"815" = load i8* @"'__CS_round", align 1
  %"816" = zext i8 %"815" to i64
  %"817" = getelementptr inbounds [2 x [3 x i8]]* @__CS_thread_status, i32 0, i64 %"816"
  %"818" = getelementptr inbounds [3 x i8]* %"817", i32 0, i64 %"814"
  %"819" = load i8* %"818", align 1
  %"820" = zext i8 %"819" to i32
  %"821" = icmp eq i32 %"820", 0
  br i1 %"821", label %main_thread_bb148, label %main_thread_bb149

main_thread_bb148:                                ; preds = %main_thread_bb147
  store i8 1, i8* @"'__CS_error", align 1
  store i8 2, i8* @"'__CS_ret", align 1
  br label %main_thread___CS_pthread_join.exit

main_thread_bb149:                                ; preds = %main_thread_bb147
  %"822" = zext i8 %t1.0 to i64
  %"823" = load i8* @"'__CS_round", align 1
  %"824" = zext i8 %"823" to i64
  %"825" = getelementptr inbounds [2 x [3 x i8]]* @__CS_thread_status, i32 0, i64 %"824"
  %"826" = getelementptr inbounds [3 x i8]* %"825", i32 0, i64 %"822"
  %"827" = load i8* %"826", align 1
  %"828" = zext i8 %"827" to i32
  %"829" = icmp eq i32 %"828", 2
  %"830" = zext i1 %"829" to i32
  call void @__VERIFIER_assume(i32 %"830") #4
  br label %main_thread___CS_pthread_join.exit

main_thread___CS_pthread_join.exit:               ; preds = %main_thread_bb143, %main_thread_bb146, %main_thread_bb148, %main_thread_bb149
  %"831" = call i8 @__kittel_nondef.1() #4
  %"832" = load i8* @"'__CS_round", align 1
  %"833" = zext i8 %"832" to i32
  %"834" = zext i8 %"831" to i32
  %"835" = add nsw i32 %"833", %"834"
  %"836" = icmp slt i32 %"835", 2
  %"837" = zext i1 %"836" to i32
  call void @__VERIFIER_assume(i32 %"837") #4
  %"838" = zext i8 %"831" to i32
  %"839" = load i8* @"'__CS_round", align 1
  %"840" = zext i8 %"839" to i32
  %"841" = add nsw i32 %"840", %"838"
  %"842" = trunc i32 %"841" to i8
  store i8 %"842", i8* @"'__CS_round", align 1
  %"843" = call i32 (...)* @nondet_int() #4
  %"844" = icmp ne i32 %"843", 0
  br i1 %"844", label %main_thread_bb150, label %main_thread_bb151

main_thread_bb150:                                ; preds = %main_thread___CS_pthread_join.exit
  %"845" = load i8* @"'__CS_round", align 1
  %"846" = zext i8 %"845" to i32
  %"847" = icmp eq i32 %"846", 1
  br i1 %"847", label %main_thread___CS_cs.exit9, label %main_thread_bb151

main_thread_bb151:                                ; preds = %main_thread_bb150, %main_thread___CS_pthread_join.exit
  %"848" = load i8* @"'__CS_ret", align 1
  %"849" = zext i8 %"848" to i32
  br label %main_thread___CS_cs.exit9

main_thread___CS_cs.exit9:                        ; preds = %main_thread_bb150, %main_thread_bb151
  %"850" = phi i32 [ %"849", %main_thread_bb151 ], [ 1, %main_thread_bb150 ]
  %"851" = trunc i32 %"850" to i8
  store i8 %"851", i8* @"'__CS_ret", align 1
  %"852" = load i8* @"'__CS_ret", align 1
  %"853" = zext i8 %"852" to i32
  %"854" = icmp ne i32 %"853", 0
  br i1 %"854", label %main_thread_bb168, label %main_thread_bb152

main_thread_bb152:                                ; preds = %main_thread___CS_cs.exit9
  %"855" = zext i8 %t2.0 to i32
  %"856" = icmp ne i32 %"855", 123
  %"857" = zext i8 %t2.0 to i32
  %"858" = icmp sgt i32 %"857", 3
  %or.cond.i10 = and i1 %"856", %"858"
  br i1 %or.cond.i10, label %main_thread_bb153, label %main_thread_bb154

main_thread_bb153:                                ; preds = %main_thread_bb152
  store i8 1, i8* @"'__CS_error", align 1
  store i8 2, i8* @"'__CS_ret", align 1
  br label %main_thread___CS_pthread_join.exit11

main_thread_bb154:                                ; preds = %main_thread_bb152
  %"859" = zext i8 %t2.0 to i32
  %"860" = icmp eq i32 %"859", 123
  br i1 %"860", label %main_thread_bb156, label %main_thread_bb155

main_thread_bb155:                                ; preds = %main_thread_bb154
  %"861" = zext i8 %t2.0 to i64
  %"862" = load i8* @"'__CS_round", align 1
  %"863" = zext i8 %"862" to i64
  %"864" = getelementptr inbounds [2 x [3 x i8]]* @__CS_thread_status, i32 0, i64 %"863"
  %"865" = getelementptr inbounds [3 x i8]* %"864", i32 0, i64 %"861"
  %"866" = load i8* %"865", align 1
  %"867" = zext i8 %"866" to i32
  %"868" = icmp eq i32 %"867", 1
  br i1 %"868", label %main_thread_bb156, label %main_thread_bb157

main_thread_bb156:                                ; preds = %main_thread_bb155, %main_thread_bb154
  store i8 1, i8* @"'__CS_ret", align 1
  br label %main_thread___CS_pthread_join.exit11

main_thread_bb157:                                ; preds = %main_thread_bb155
  %"869" = zext i8 %t2.0 to i64
  %"870" = load i8* @"'__CS_round", align 1
  %"871" = zext i8 %"870" to i64
  %"872" = getelementptr inbounds [2 x [3 x i8]]* @__CS_thread_status, i32 0, i64 %"871"
  %"873" = getelementptr inbounds [3 x i8]* %"872", i32 0, i64 %"869"
  %"874" = load i8* %"873", align 1
  %"875" = zext i8 %"874" to i32
  %"876" = icmp eq i32 %"875", 0
  br i1 %"876", label %main_thread_bb158, label %main_thread_bb159

main_thread_bb158:                                ; preds = %main_thread_bb157
  store i8 1, i8* @"'__CS_error", align 1
  store i8 2, i8* @"'__CS_ret", align 1
  br label %main_thread___CS_pthread_join.exit11

main_thread_bb159:                                ; preds = %main_thread_bb157
  %"877" = zext i8 %t2.0 to i64
  %"878" = load i8* @"'__CS_round", align 1
  %"879" = zext i8 %"878" to i64
  %"880" = getelementptr inbounds [2 x [3 x i8]]* @__CS_thread_status, i32 0, i64 %"879"
  %"881" = getelementptr inbounds [3 x i8]* %"880", i32 0, i64 %"877"
  %"882" = load i8* %"881", align 1
  %"883" = zext i8 %"882" to i32
  %"884" = icmp eq i32 %"883", 2
  %"885" = zext i1 %"884" to i32
  call void @__VERIFIER_assume(i32 %"885") #4
  br label %main_thread___CS_pthread_join.exit11

main_thread___CS_pthread_join.exit11:             ; preds = %main_thread_bb153, %main_thread_bb156, %main_thread_bb158, %main_thread_bb159
  %"886" = call i8 @__kittel_nondef.1() #4
  %"887" = load i8* @"'__CS_round", align 1
  %"888" = zext i8 %"887" to i32
  %"889" = zext i8 %"886" to i32
  %"890" = add nsw i32 %"888", %"889"
  %"891" = icmp slt i32 %"890", 2
  %"892" = zext i1 %"891" to i32
  call void @__VERIFIER_assume(i32 %"892") #4
  %"893" = zext i8 %"886" to i32
  %"894" = load i8* @"'__CS_round", align 1
  %"895" = zext i8 %"894" to i32
  %"896" = add nsw i32 %"895", %"893"
  %"897" = trunc i32 %"896" to i8
  store i8 %"897", i8* @"'__CS_round", align 1
  %"898" = call i32 (...)* @nondet_int() #4
  %"899" = icmp ne i32 %"898", 0
  br i1 %"899", label %main_thread_bb160, label %main_thread_bb161

main_thread_bb160:                                ; preds = %main_thread___CS_pthread_join.exit11
  %"900" = load i8* @"'__CS_round", align 1
  %"901" = zext i8 %"900" to i32
  %"902" = icmp eq i32 %"901", 1
  br i1 %"902", label %main_thread___CS_cs.exit12, label %main_thread_bb161

main_thread_bb161:                                ; preds = %main_thread_bb160, %main_thread___CS_pthread_join.exit11
  %"903" = load i8* @"'__CS_ret", align 1
  %"904" = zext i8 %"903" to i32
  br label %main_thread___CS_cs.exit12

main_thread___CS_cs.exit12:                       ; preds = %main_thread_bb160, %main_thread_bb161
  %"905" = phi i32 [ %"904", %main_thread_bb161 ], [ 1, %main_thread_bb160 ]
  %"906" = trunc i32 %"905" to i8
  store i8 %"906", i8* @"'__CS_ret", align 1
  %"907" = load i8* @"'__CS_ret", align 1
  %"908" = zext i8 %"907" to i32
  %"909" = icmp ne i32 %"908", 0
  br i1 %"909", label %main_thread_bb168, label %main_thread_bb162

main_thread_bb162:                                ; preds = %main_thread___CS_cs.exit12
  %"910" = load i8* @"'__CS_round", align 1
  %"911" = zext i8 %"910" to i64
  %"912" = getelementptr inbounds [2 x i32]* @data1, i32 0, i64 %"911"
  %"913" = load i32* %"912", align 4
  %"914" = icmp eq i32 %"913", 16
  br i1 %"914", label %main_thread_bb163, label %main_thread_bb169

main_thread_bb163:                                ; preds = %main_thread_bb162
  %"915" = load i8* @"'__CS_round", align 1
  %"916" = zext i8 %"915" to i64
  %"917" = getelementptr inbounds [2 x i32]* @data2, i32 0, i64 %"916"
  %"918" = load i32* %"917", align 4
  %"919" = icmp eq i32 %"918", 5
  br i1 %"919", label %main_thread_bb164, label %main_thread_bb169

main_thread_bb164:                                ; preds = %main_thread_bb163
  %"920" = call i8 @__kittel_nondef.1() #4
  %"921" = load i8* @"'__CS_round", align 1
  %"922" = zext i8 %"921" to i32
  %"923" = zext i8 %"920" to i32
  %"924" = add nsw i32 %"922", %"923"
  %"925" = icmp slt i32 %"924", 2
  %"926" = zext i1 %"925" to i32
  call void @__VERIFIER_assume(i32 %"926") #4
  %"927" = zext i8 %"920" to i32
  %"928" = load i8* @"'__CS_round", align 1
  %"929" = zext i8 %"928" to i32
  %"930" = add nsw i32 %"929", %"927"
  %"931" = trunc i32 %"930" to i8
  store i8 %"931", i8* @"'__CS_round", align 1
  %"932" = call i32 (...)* @nondet_int() #4
  %"933" = icmp ne i32 %"932", 0
  br i1 %"933", label %main_thread_bb165, label %main_thread_bb166

main_thread_bb165:                                ; preds = %main_thread_bb164
  %"934" = load i8* @"'__CS_round", align 1
  %"935" = zext i8 %"934" to i32
  %"936" = icmp eq i32 %"935", 1
  br i1 %"936", label %main_thread___CS_cs.exit13, label %main_thread_bb166

main_thread_bb166:                                ; preds = %main_thread_bb165, %main_thread_bb164
  %"937" = load i8* @"'__CS_ret", align 1
  %"938" = zext i8 %"937" to i32
  br label %main_thread___CS_cs.exit13

main_thread___CS_cs.exit13:                       ; preds = %main_thread_bb165, %main_thread_bb166
  %"939" = phi i32 [ %"938", %main_thread_bb166 ], [ 1, %main_thread_bb165 ]
  %"940" = trunc i32 %"939" to i8
  store i8 %"940", i8* @"'__CS_ret", align 1
  %"941" = load i8* @"'__CS_ret", align 1
  %"942" = zext i8 %"941" to i32
  %"943" = icmp ne i32 %"942", 0
  br i1 %"943", label %main_thread_bb168, label %main_thread_bb167

main_thread_bb167:                                ; preds = %main_thread___CS_cs.exit13
  store i8 1, i8* @"'__CS_error", align 1
  store i8 2, i8* @"'__CS_ret", align 1
  br label %main_thread_bb168

main_thread_bb168:                                ; preds = %main_thread___CS_cs.exit13, %main_thread___CS_cs.exit12, %main_thread___CS_cs.exit9, %main_thread___CS_cs.exit8, %main_thread___CS_cs.exit5, %main_thread___CS_cs.exit4, %main_thread___CS_cs.exit3, %main_thread___CS_cs.exit2, %main_thread___CS_cs.exit1, %main_thread___CS_cs.exit, %main_thread_bb167
  ret i8* null

main_thread_bb169:                                ; preds = %main_thread_bb163, %main_thread_bb162
  %"944" = call i8 @__kittel_nondef.1() #4
  %"945" = load i8* @"'__CS_round", align 1
  %"946" = zext i8 %"945" to i32
  %"947" = zext i8 %"944" to i32
  %"948" = add nsw i32 %"946", %"947"
  %"949" = icmp slt i32 %"948", 2
  %"950" = zext i1 %"949" to i32
  call void @__VERIFIER_assume(i32 %"950") #4
  %"951" = zext i8 %"944" to i32
  %"952" = load i8* @"'__CS_round", align 1
  %"953" = zext i8 %"952" to i32
  %"954" = add nsw i32 %"953", %"951"
  %"955" = trunc i32 %"954" to i8
  store i8 %"955", i8* @"'__CS_round", align 1
  %"956" = call i32 (...)* @nondet_int() #4
  %"957" = icmp ne i32 %"956", 0
  br i1 %"957", label %main_thread_bb170, label %main_thread_bb171

main_thread_bb170:                                ; preds = %main_thread_bb169
  %"958" = load i8* @"'__CS_round", align 1
  %"959" = zext i8 %"958" to i32
  %"960" = icmp eq i32 %"959", 1
  br i1 %"960", label %main_thread___CS_cs.exit14, label %main_thread_bb171

main_thread_bb171:                                ; preds = %main_thread_bb170, %main_thread_bb169
  %"961" = load i8* @"'__CS_ret", align 1
  %"962" = zext i8 %"961" to i32
  br label %main_thread___CS_cs.exit14

main_thread___CS_cs.exit14:                       ; preds = %main_thread_bb170, %main_thread_bb171
  %"963" = phi i32 [ %"962", %main_thread_bb171 ], [ 1, %main_thread_bb170 ]
  %"964" = trunc i32 %"963" to i8
  store i8 %"964", i8* @"'__CS_ret", align 1
  %"965" = load i8* @"'__CS_ret", align 1
  %"966" = zext i8 %"965" to i32
  %"967" = icmp ne i32 %"966", 0
  %. = select i1 %"967", i8* null, i8* %"581"
  ret i8* %.
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb172:
  %__CS_cp___CS_thread_status = alloca [2 x [3 x i8]], align 1
  %__CS_cp___CS_thread_lockedon = alloca [2 x [3 x i8*]], align 16
  %__CS_cp_ma = alloca [2 x i8], align 1
  %__CS_cp_mb = alloca [2 x i8], align 1
  %__CS_cp_data1 = alloca [2 x i32], align 4
  %__CS_cp_data2 = alloca [2 x i32], align 4
  %"968" = getelementptr inbounds [2 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 1
  %"969" = getelementptr inbounds [3 x i8]* %"968", i32 0, i64 0
  %"970" = load i8* %"969", align 1
  %"971" = getelementptr [2 x [3 x i8]]* @__CS_thread_status, i32 0, i64 1, i64 0
  store i8 %"970", i8* %"971", align 1
  %"972" = getelementptr inbounds [2 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 1
  %"973" = getelementptr inbounds [3 x i8]* %"972", i32 0, i64 1
  %"974" = load i8* %"973", align 1
  %"975" = getelementptr [2 x [3 x i8]]* @__CS_thread_status, i32 0, i64 1, i64 1
  store i8 %"974", i8* %"975", align 1
  %"976" = getelementptr inbounds [2 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 1
  %"977" = getelementptr inbounds [3 x i8]* %"976", i32 0, i64 2
  %"978" = load i8* %"977", align 1
  %"979" = getelementptr [2 x [3 x i8]]* @__CS_thread_status, i32 0, i64 1, i64 2
  store i8 %"978", i8* %"979", align 1
  %"980" = getelementptr inbounds [2 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 1
  %"981" = getelementptr inbounds [3 x i8*]* %"980", i32 0, i64 0
  %"982" = load i8** %"981", align 8
  %"983" = getelementptr [2 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 1, i64 0
  store i8* %"982", i8** %"983", align 8
  %"984" = getelementptr inbounds [2 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 1
  %"985" = getelementptr inbounds [3 x i8*]* %"984", i32 0, i64 1
  %"986" = load i8** %"985", align 8
  %"987" = getelementptr [2 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 1, i64 1
  store i8* %"986", i8** %"987", align 8
  %"988" = getelementptr inbounds [2 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 1
  %"989" = getelementptr inbounds [3 x i8*]* %"988", i32 0, i64 2
  %"990" = load i8** %"989", align 8
  %"991" = getelementptr [2 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 1, i64 2
  store i8* %"990", i8** %"991", align 8
  %"992" = getelementptr inbounds [2 x i8]* %__CS_cp_ma, i32 0, i64 1
  %"993" = load i8* %"992", align 1
  %"994" = getelementptr [2 x i8]* @ma, i32 0, i64 1
  store i8 %"993", i8* %"994", align 1
  %"995" = getelementptr inbounds [2 x i8]* %__CS_cp_mb, i32 0, i64 1
  %"996" = load i8* %"995", align 1
  %"997" = getelementptr [2 x i8]* @mb, i32 0, i64 1
  store i8 %"996", i8* %"997", align 1
  %"998" = getelementptr inbounds [2 x i32]* %__CS_cp_data1, i32 0, i64 1
  %"999" = load i32* %"998", align 4
  %"1000" = getelementptr [2 x i32]* @data1, i32 0, i64 1
  store i32 %"999", i32* %"1000", align 4
  %"1001" = getelementptr inbounds [2 x i32]* %__CS_cp_data2, i32 0, i64 1
  %"1002" = load i32* %"1001", align 4
  %"1003" = getelementptr [2 x i32]* @data2, i32 0, i64 1
  store i32 %"1002", i32* %"1003", align 4
  store i8 0, i8* @"'__CS_round", align 1
  store i8 0, i8* @"'__CS_thread_index", align 1
  %"1004" = load i8* @"'__CS_round", align 1
  %"1005" = getelementptr [3 x i8]* @__CS_thread_born_round, i32 0, i64 0
  store i8 %"1004", i8* %"1005", align 1
  %"1006" = getelementptr [2 x [3 x i8]]* @__CS_thread_status, i32 0, i64 0, i64 0
  store i8 1, i8* %"1006", align 1
  %"1007" = getelementptr [3 x i8* (i8*)*]* @__CS_thread, i32 0, i64 0
  store i8* (i8*)* @main_thread, i8* (i8*)** %"1007", align 8
  %"1008" = getelementptr [3 x i8]* @__CS_thread_allocated, i32 0, i64 0
  store i8 1, i8* %"1008", align 1
  %"1009" = getelementptr [3 x i8]* @__CS_thread_allocated, i32 0, i64 0
  %"1010" = load i8* %"1009", align 1
  %"1011" = zext i8 %"1010" to i32
  %"1012" = icmp eq i32 %"1011", 1
  br i1 %"1012", label %main_bb173, label %main_bb175

main_bb173:                                       ; preds = %main_bb172
  %"1013" = getelementptr [3 x i8]* @__CS_thread_born_round, i32 0, i64 0
  %"1014" = load i8* %"1013", align 1
  store i8 %"1014", i8* @"'__CS_round", align 1
  store i8 0, i8* @"'__CS_ret", align 1
  %"1015" = getelementptr [3 x i8* (i8*)*]* @__CS_thread, i32 0, i64 0
  %"1016" = load i8* (i8*)** %"1015", align 8
  %"1017" = call i8* %"1016"(i8* null)
  %"1018" = load i8* @"'__CS_ret", align 1
  %"1019" = zext i8 %"1018" to i32
  %"1020" = icmp ne i32 %"1019", 1
  br i1 %"1020", label %main_bb174, label %main_bb175

main_bb174:                                       ; preds = %main_bb173
  %"1021" = load i8* @"'__CS_round", align 1
  %"1022" = zext i8 %"1021" to i64
  %"1023" = getelementptr inbounds [2 x [3 x i8]]* @__CS_thread_status, i32 0, i64 %"1022"
  %"1024" = getelementptr inbounds [3 x i8]* %"1023", i32 0, i64 0
  store i8 2, i8* %"1024", align 1
  br label %main_bb175

main_bb175:                                       ; preds = %main_bb173, %main_bb174, %main_bb172
  %"1025" = getelementptr [3 x i8]* @__CS_thread_allocated, i32 0, i64 1
  %"1026" = load i8* %"1025", align 1
  %"1027" = zext i8 %"1026" to i32
  %"1028" = icmp eq i32 %"1027", 1
  br i1 %"1028", label %main_bb176, label %main_bb178

main_bb176:                                       ; preds = %main_bb175
  %"1029" = getelementptr [3 x i8]* @__CS_thread_born_round, i32 0, i64 1
  %"1030" = load i8* %"1029", align 1
  store i8 %"1030", i8* @"'__CS_round", align 1
  store i8 0, i8* @"'__CS_ret", align 1
  %"1031" = getelementptr [3 x i8* (i8*)*]* @__CS_thread, i32 0, i64 1
  %"1032" = load i8* (i8*)** %"1031", align 8
  %"1033" = call i8* %"1032"(i8* null)
  %"1034" = load i8* @"'__CS_ret", align 1
  %"1035" = zext i8 %"1034" to i32
  %"1036" = icmp ne i32 %"1035", 1
  br i1 %"1036", label %main_bb177, label %main_bb178

main_bb177:                                       ; preds = %main_bb176
  %"1037" = load i8* @"'__CS_round", align 1
  %"1038" = zext i8 %"1037" to i64
  %"1039" = getelementptr inbounds [2 x [3 x i8]]* @__CS_thread_status, i32 0, i64 %"1038"
  %"1040" = getelementptr inbounds [3 x i8]* %"1039", i32 0, i64 1
  store i8 2, i8* %"1040", align 1
  br label %main_bb178

main_bb178:                                       ; preds = %main_bb176, %main_bb177, %main_bb175
  %"1041" = getelementptr [3 x i8]* @__CS_thread_allocated, i32 0, i64 2
  %"1042" = load i8* %"1041", align 1
  %"1043" = zext i8 %"1042" to i32
  %"1044" = icmp eq i32 %"1043", 1
  br i1 %"1044", label %main_bb179, label %main_bb181

main_bb179:                                       ; preds = %main_bb178
  %"1045" = getelementptr [3 x i8]* @__CS_thread_born_round, i32 0, i64 2
  %"1046" = load i8* %"1045", align 1
  store i8 %"1046", i8* @"'__CS_round", align 1
  store i8 0, i8* @"'__CS_ret", align 1
  %"1047" = getelementptr [3 x i8* (i8*)*]* @__CS_thread, i32 0, i64 2
  %"1048" = load i8* (i8*)** %"1047", align 8
  %"1049" = call i8* %"1048"(i8* null)
  %"1050" = load i8* @"'__CS_ret", align 1
  %"1051" = zext i8 %"1050" to i32
  %"1052" = icmp ne i32 %"1051", 1
  br i1 %"1052", label %main_bb180, label %main_bb181

main_bb180:                                       ; preds = %main_bb179
  %"1053" = load i8* @"'__CS_round", align 1
  %"1054" = zext i8 %"1053" to i64
  %"1055" = getelementptr inbounds [2 x [3 x i8]]* @__CS_thread_status, i32 0, i64 %"1054"
  %"1056" = getelementptr inbounds [3 x i8]* %"1055", i32 0, i64 2
  store i8 2, i8* %"1056", align 1
  br label %main_bb181

main_bb181:                                       ; preds = %main_bb179, %main_bb180, %main_bb178
  %"1057" = getelementptr [2 x [3 x i8]]* @__CS_thread_status, i32 0, i64 0, i64 0
  %"1058" = load i8* %"1057", align 1
  %"1059" = zext i8 %"1058" to i32
  %"1060" = getelementptr inbounds [2 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 1
  %"1061" = getelementptr inbounds [3 x i8]* %"1060", i32 0, i64 0
  %"1062" = load i8* %"1061", align 1
  %"1063" = zext i8 %"1062" to i32
  %"1064" = icmp eq i32 %"1059", %"1063"
  %"1065" = zext i1 %"1064" to i32
  call void @__VERIFIER_assume(i32 %"1065")
  %"1066" = getelementptr [2 x [3 x i8]]* @__CS_thread_status, i32 0, i64 0, i64 1
  %"1067" = load i8* %"1066", align 1
  %"1068" = zext i8 %"1067" to i32
  %"1069" = getelementptr inbounds [2 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 1
  %"1070" = getelementptr inbounds [3 x i8]* %"1069", i32 0, i64 1
  %"1071" = load i8* %"1070", align 1
  %"1072" = zext i8 %"1071" to i32
  %"1073" = icmp eq i32 %"1068", %"1072"
  %"1074" = zext i1 %"1073" to i32
  call void @__VERIFIER_assume(i32 %"1074")
  %"1075" = getelementptr [2 x [3 x i8]]* @__CS_thread_status, i32 0, i64 0, i64 2
  %"1076" = load i8* %"1075", align 1
  %"1077" = zext i8 %"1076" to i32
  %"1078" = getelementptr inbounds [2 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 1
  %"1079" = getelementptr inbounds [3 x i8]* %"1078", i32 0, i64 2
  %"1080" = load i8* %"1079", align 1
  %"1081" = zext i8 %"1080" to i32
  %"1082" = icmp eq i32 %"1077", %"1081"
  %"1083" = zext i1 %"1082" to i32
  call void @__VERIFIER_assume(i32 %"1083")
  %"1084" = getelementptr [2 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 0, i64 0
  %"1085" = load i8** %"1084", align 8
  %"1086" = getelementptr inbounds [2 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 1
  %"1087" = getelementptr inbounds [3 x i8*]* %"1086", i32 0, i64 0
  %"1088" = load i8** %"1087", align 8
  %"1089" = icmp eq i8* %"1085", %"1088"
  %"1090" = zext i1 %"1089" to i32
  call void @__VERIFIER_assume(i32 %"1090")
  %"1091" = getelementptr [2 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 0, i64 1
  %"1092" = load i8** %"1091", align 8
  %"1093" = getelementptr inbounds [2 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 1
  %"1094" = getelementptr inbounds [3 x i8*]* %"1093", i32 0, i64 1
  %"1095" = load i8** %"1094", align 8
  %"1096" = icmp eq i8* %"1092", %"1095"
  %"1097" = zext i1 %"1096" to i32
  call void @__VERIFIER_assume(i32 %"1097")
  %"1098" = getelementptr [2 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 0, i64 2
  %"1099" = load i8** %"1098", align 8
  %"1100" = getelementptr inbounds [2 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 1
  %"1101" = getelementptr inbounds [3 x i8*]* %"1100", i32 0, i64 2
  %"1102" = load i8** %"1101", align 8
  %"1103" = icmp eq i8* %"1099", %"1102"
  %"1104" = zext i1 %"1103" to i32
  call void @__VERIFIER_assume(i32 %"1104")
  %"1105" = getelementptr [2 x i8]* @ma, i32 0, i64 0
  %"1106" = load i8* %"1105", align 1
  %"1107" = zext i8 %"1106" to i32
  %"1108" = getelementptr inbounds [2 x i8]* %__CS_cp_ma, i32 0, i64 1
  %"1109" = load i8* %"1108", align 1
  %"1110" = zext i8 %"1109" to i32
  %"1111" = icmp eq i32 %"1107", %"1110"
  %"1112" = zext i1 %"1111" to i32
  call void @__VERIFIER_assume(i32 %"1112")
  %"1113" = getelementptr [2 x i8]* @mb, i32 0, i64 0
  %"1114" = load i8* %"1113", align 1
  %"1115" = zext i8 %"1114" to i32
  %"1116" = getelementptr inbounds [2 x i8]* %__CS_cp_mb, i32 0, i64 1
  %"1117" = load i8* %"1116", align 1
  %"1118" = zext i8 %"1117" to i32
  %"1119" = icmp eq i32 %"1115", %"1118"
  %"1120" = zext i1 %"1119" to i32
  call void @__VERIFIER_assume(i32 %"1120")
  %"1121" = getelementptr [2 x i32]* @data1, i32 0, i64 0
  %"1122" = load i32* %"1121", align 4
  %"1123" = getelementptr inbounds [2 x i32]* %__CS_cp_data1, i32 0, i64 1
  %"1124" = load i32* %"1123", align 4
  %"1125" = icmp eq i32 %"1122", %"1124"
  %"1126" = zext i1 %"1125" to i32
  call void @__VERIFIER_assume(i32 %"1126")
  %"1127" = getelementptr [2 x i32]* @data2, i32 0, i64 0
  %"1128" = load i32* %"1127", align 4
  %"1129" = getelementptr inbounds [2 x i32]* %__CS_cp_data2, i32 0, i64 1
  %"1130" = load i32* %"1129", align 4
  %"1131" = icmp eq i32 %"1128", %"1130"
  %"1132" = zext i1 %"1131" to i32
  call void @__VERIFIER_assume(i32 %"1132")
  %"1133" = load i8* @"'__CS_error", align 1
  %"1134" = zext i8 %"1133" to i32
  %"1135" = icmp ne i32 %"1134", 1
  br i1 %"1135", label %main___VERIFIER_assert.exit, label %main_bb182

main___VERIFIER_assert.exit:                      ; preds = %main_bb181
  ret i32 0

main_bb182:                                       ; preds = %main_bb181
  call void (...)* @__VERIFIER_error() #5
  unreachable
}

declare i32 @__kittel_nondef.0()

declare i8 @__kittel_nondef.1()

declare i8* @__kittel_nondef.2()

declare i8** @__kittel_nondef.3()

declare i8* (i8*)* @__kittel_nondef.4()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }
attributes #4 = { nounwind }
attributes #5 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

