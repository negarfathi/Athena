; ModuleID = 'Benchmarks/TermCOMP/C/SV-COMP_Mixed_Categories/cs_time_var_mutex_true-unreach-call/cs_time_var_mutex_true-unreach-call.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.__CS__u = type { [3 x i32] }

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
@__CS_thread_lockedon = common global [3 x [3 x i8*]] zeroinitializer, align 16
@__CS_thread_status = common global [3 x [3 x i8]] zeroinitializer, align 1
@__CS_thread_allocated = common global [3 x i8] zeroinitializer, align 1
@__CS_thread_born_round = common global [3 x i8] zeroinitializer, align 1
@__CS_thread = common global [3 x i8* (i8*)*] zeroinitializer, align 16
@m_inode = common global [3 x i8] zeroinitializer, align 1
@inode = common global [3 x i32] zeroinitializer, align 4
@m_busy = common global [3 x i8] zeroinitializer, align 1
@busy = common global [3 x i32] zeroinitializer, align 4
@block = common global [3 x i32] zeroinitializer, align 4
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
  %"6" = icmp slt i32 %"5", 3
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
  %"17" = icmp eq i32 %"16", 2
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
  %"45" = getelementptr inbounds [3 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 %"44"
  %"46" = load i8* @"'__CS_round", align 1
  %"47" = zext i8 %"46" to i64
  %"48" = getelementptr inbounds [3 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 %"47"
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
  %"59" = getelementptr inbounds [3 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 %"58"
  %"60" = load i8* @"'__CS_round", align 1
  %"61" = zext i8 %"60" to i64
  %"62" = getelementptr inbounds [3 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 %"61"
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
  %"81" = getelementptr inbounds [3 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 %"80"
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
  %"101" = getelementptr inbounds [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 %"100"
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
  %"109" = getelementptr inbounds [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 %"108"
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
  %"117" = getelementptr inbounds [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 %"116"
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
  %"142" = getelementptr inbounds [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 %"141"
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
define i8* @allocator() #0 {
allocator_bb59:
  %"147" = call i8 @__kittel_nondef.1() #4
  %"148" = load i8* @"'__CS_round", align 1
  %"149" = zext i8 %"148" to i32
  %"150" = zext i8 %"147" to i32
  %"151" = add nsw i32 %"149", %"150"
  %"152" = icmp slt i32 %"151", 3
  %"153" = zext i1 %"152" to i32
  call void @__VERIFIER_assume(i32 %"153") #4
  %"154" = zext i8 %"147" to i32
  %"155" = load i8* @"'__CS_round", align 1
  %"156" = zext i8 %"155" to i32
  %"157" = add nsw i32 %"156", %"154"
  %"158" = trunc i32 %"157" to i8
  store i8 %"158", i8* @"'__CS_round", align 1
  %"159" = call i32 (...)* @nondet_int() #4
  %"160" = icmp ne i32 %"159", 0
  br i1 %"160", label %allocator_bb60, label %allocator_bb61

allocator_bb60:                                   ; preds = %allocator_bb59
  %"161" = load i8* @"'__CS_round", align 1
  %"162" = zext i8 %"161" to i32
  %"163" = icmp eq i32 %"162", 2
  br i1 %"163", label %allocator___CS_cs.exit, label %allocator_bb61

allocator_bb61:                                   ; preds = %allocator_bb60, %allocator_bb59
  %"164" = load i8* @"'__CS_ret", align 1
  %"165" = zext i8 %"164" to i32
  br label %allocator___CS_cs.exit

allocator___CS_cs.exit:                           ; preds = %allocator_bb60, %allocator_bb61
  %"166" = phi i32 [ %"165", %allocator_bb61 ], [ 1, %allocator_bb60 ]
  %"167" = trunc i32 %"166" to i8
  store i8 %"167", i8* @"'__CS_ret", align 1
  %"168" = load i8* @"'__CS_ret", align 1
  %"169" = zext i8 %"168" to i32
  %"170" = icmp ne i32 %"169", 0
  br i1 %"170", label %allocator_bb109, label %allocator_bb62

allocator_bb62:                                   ; preds = %allocator___CS_cs.exit
  %"171" = load i8* @"'__CS_round", align 1
  %"172" = zext i8 %"171" to i64
  %"173" = getelementptr inbounds [3 x i8]* @m_inode, i32 0, i64 %"172"
  %"174" = load i8* %"173", align 1
  %"175" = zext i8 %"174" to i32
  %"176" = icmp eq i32 %"175", 0
  br i1 %"176", label %allocator_bb63, label %allocator_bb64

allocator_bb63:                                   ; preds = %allocator_bb62
  %"177" = load i8* @"'__CS_thread_index", align 1
  %"178" = zext i8 %"177" to i32
  %"179" = add nsw i32 %"178", 1
  %"180" = trunc i32 %"179" to i8
  store i8 %"180", i8* %"173", align 1
  br label %allocator___CS_pthread_mutex_lock.exit

allocator_bb64:                                   ; preds = %allocator_bb62
  store i8 1, i8* @"'__CS_ret", align 1
  br label %allocator___CS_pthread_mutex_lock.exit

allocator___CS_pthread_mutex_lock.exit:           ; preds = %allocator_bb63, %allocator_bb64
  %"181" = call i8 @__kittel_nondef.1() #4
  %"182" = load i8* @"'__CS_round", align 1
  %"183" = zext i8 %"182" to i32
  %"184" = zext i8 %"181" to i32
  %"185" = add nsw i32 %"183", %"184"
  %"186" = icmp slt i32 %"185", 3
  %"187" = zext i1 %"186" to i32
  call void @__VERIFIER_assume(i32 %"187") #4
  %"188" = zext i8 %"181" to i32
  %"189" = load i8* @"'__CS_round", align 1
  %"190" = zext i8 %"189" to i32
  %"191" = add nsw i32 %"190", %"188"
  %"192" = trunc i32 %"191" to i8
  store i8 %"192", i8* @"'__CS_round", align 1
  %"193" = call i32 (...)* @nondet_int() #4
  %"194" = icmp ne i32 %"193", 0
  br i1 %"194", label %allocator_bb65, label %allocator_bb66

allocator_bb65:                                   ; preds = %allocator___CS_pthread_mutex_lock.exit
  %"195" = load i8* @"'__CS_round", align 1
  %"196" = zext i8 %"195" to i32
  %"197" = icmp eq i32 %"196", 2
  br i1 %"197", label %allocator___CS_cs.exit1, label %allocator_bb66

allocator_bb66:                                   ; preds = %allocator_bb65, %allocator___CS_pthread_mutex_lock.exit
  %"198" = load i8* @"'__CS_ret", align 1
  %"199" = zext i8 %"198" to i32
  br label %allocator___CS_cs.exit1

allocator___CS_cs.exit1:                          ; preds = %allocator_bb65, %allocator_bb66
  %"200" = phi i32 [ %"199", %allocator_bb66 ], [ 1, %allocator_bb65 ]
  %"201" = trunc i32 %"200" to i8
  store i8 %"201", i8* @"'__CS_ret", align 1
  %"202" = load i8* @"'__CS_ret", align 1
  %"203" = zext i8 %"202" to i32
  %"204" = icmp ne i32 %"203", 0
  br i1 %"204", label %allocator_bb109, label %allocator_bb67

allocator_bb67:                                   ; preds = %allocator___CS_cs.exit1
  %"205" = load i8* @"'__CS_round", align 1
  %"206" = zext i8 %"205" to i64
  %"207" = getelementptr inbounds [3 x i32]* @inode, i32 0, i64 %"206"
  %"208" = load i32* %"207", align 4
  %"209" = icmp eq i32 %"208", 0
  br i1 %"209", label %allocator_bb68, label %allocator_bb87

allocator_bb68:                                   ; preds = %allocator_bb67
  %"210" = call i8 @__kittel_nondef.1() #4
  %"211" = load i8* @"'__CS_round", align 1
  %"212" = zext i8 %"211" to i32
  %"213" = zext i8 %"210" to i32
  %"214" = add nsw i32 %"212", %"213"
  %"215" = icmp slt i32 %"214", 3
  %"216" = zext i1 %"215" to i32
  call void @__VERIFIER_assume(i32 %"216") #4
  %"217" = zext i8 %"210" to i32
  %"218" = load i8* @"'__CS_round", align 1
  %"219" = zext i8 %"218" to i32
  %"220" = add nsw i32 %"219", %"217"
  %"221" = trunc i32 %"220" to i8
  store i8 %"221", i8* @"'__CS_round", align 1
  %"222" = call i32 (...)* @nondet_int() #4
  %"223" = icmp ne i32 %"222", 0
  br i1 %"223", label %allocator_bb69, label %allocator_bb70

allocator_bb69:                                   ; preds = %allocator_bb68
  %"224" = load i8* @"'__CS_round", align 1
  %"225" = zext i8 %"224" to i32
  %"226" = icmp eq i32 %"225", 2
  br i1 %"226", label %allocator___CS_cs.exit2, label %allocator_bb70

allocator_bb70:                                   ; preds = %allocator_bb69, %allocator_bb68
  %"227" = load i8* @"'__CS_ret", align 1
  %"228" = zext i8 %"227" to i32
  br label %allocator___CS_cs.exit2

allocator___CS_cs.exit2:                          ; preds = %allocator_bb69, %allocator_bb70
  %"229" = phi i32 [ %"228", %allocator_bb70 ], [ 1, %allocator_bb69 ]
  %"230" = trunc i32 %"229" to i8
  store i8 %"230", i8* @"'__CS_ret", align 1
  %"231" = load i8* @"'__CS_ret", align 1
  %"232" = zext i8 %"231" to i32
  %"233" = icmp ne i32 %"232", 0
  br i1 %"233", label %allocator_bb109, label %allocator_bb71

allocator_bb71:                                   ; preds = %allocator___CS_cs.exit2
  %"234" = load i8* @"'__CS_round", align 1
  %"235" = zext i8 %"234" to i64
  %"236" = getelementptr inbounds [3 x i8]* @m_busy, i32 0, i64 %"235"
  %"237" = load i8* %"236", align 1
  %"238" = zext i8 %"237" to i32
  %"239" = icmp eq i32 %"238", 0
  br i1 %"239", label %allocator_bb72, label %allocator_bb73

allocator_bb72:                                   ; preds = %allocator_bb71
  %"240" = load i8* @"'__CS_thread_index", align 1
  %"241" = zext i8 %"240" to i32
  %"242" = add nsw i32 %"241", 1
  %"243" = trunc i32 %"242" to i8
  store i8 %"243", i8* %"236", align 1
  br label %allocator___CS_pthread_mutex_lock.exit4

allocator_bb73:                                   ; preds = %allocator_bb71
  store i8 1, i8* @"'__CS_ret", align 1
  br label %allocator___CS_pthread_mutex_lock.exit4

allocator___CS_pthread_mutex_lock.exit4:          ; preds = %allocator_bb72, %allocator_bb73
  %"244" = call i8 @__kittel_nondef.1() #4
  %"245" = load i8* @"'__CS_round", align 1
  %"246" = zext i8 %"245" to i32
  %"247" = zext i8 %"244" to i32
  %"248" = add nsw i32 %"246", %"247"
  %"249" = icmp slt i32 %"248", 3
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
  br i1 %"257", label %allocator_bb74, label %allocator_bb75

allocator_bb74:                                   ; preds = %allocator___CS_pthread_mutex_lock.exit4
  %"258" = load i8* @"'__CS_round", align 1
  %"259" = zext i8 %"258" to i32
  %"260" = icmp eq i32 %"259", 2
  br i1 %"260", label %allocator___CS_cs.exit5, label %allocator_bb75

allocator_bb75:                                   ; preds = %allocator_bb74, %allocator___CS_pthread_mutex_lock.exit4
  %"261" = load i8* @"'__CS_ret", align 1
  %"262" = zext i8 %"261" to i32
  br label %allocator___CS_cs.exit5

allocator___CS_cs.exit5:                          ; preds = %allocator_bb74, %allocator_bb75
  %"263" = phi i32 [ %"262", %allocator_bb75 ], [ 1, %allocator_bb74 ]
  %"264" = trunc i32 %"263" to i8
  store i8 %"264", i8* @"'__CS_ret", align 1
  %"265" = load i8* @"'__CS_ret", align 1
  %"266" = zext i8 %"265" to i32
  %"267" = icmp ne i32 %"266", 0
  br i1 %"267", label %allocator_bb109, label %allocator_bb76

allocator_bb76:                                   ; preds = %allocator___CS_cs.exit5
  %"268" = load i8* @"'__CS_round", align 1
  %"269" = zext i8 %"268" to i64
  %"270" = getelementptr inbounds [3 x i32]* @busy, i32 0, i64 %"269"
  store i32 1, i32* %"270", align 4
  %"271" = call i8 @__kittel_nondef.1() #4
  %"272" = load i8* @"'__CS_round", align 1
  %"273" = zext i8 %"272" to i32
  %"274" = zext i8 %"271" to i32
  %"275" = add nsw i32 %"273", %"274"
  %"276" = icmp slt i32 %"275", 3
  %"277" = zext i1 %"276" to i32
  call void @__VERIFIER_assume(i32 %"277") #4
  %"278" = zext i8 %"271" to i32
  %"279" = load i8* @"'__CS_round", align 1
  %"280" = zext i8 %"279" to i32
  %"281" = add nsw i32 %"280", %"278"
  %"282" = trunc i32 %"281" to i8
  store i8 %"282", i8* @"'__CS_round", align 1
  %"283" = call i32 (...)* @nondet_int() #4
  %"284" = icmp ne i32 %"283", 0
  br i1 %"284", label %allocator_bb77, label %allocator_bb78

allocator_bb77:                                   ; preds = %allocator_bb76
  %"285" = load i8* @"'__CS_round", align 1
  %"286" = zext i8 %"285" to i32
  %"287" = icmp eq i32 %"286", 2
  br i1 %"287", label %allocator___CS_cs.exit6, label %allocator_bb78

allocator_bb78:                                   ; preds = %allocator_bb77, %allocator_bb76
  %"288" = load i8* @"'__CS_ret", align 1
  %"289" = zext i8 %"288" to i32
  br label %allocator___CS_cs.exit6

allocator___CS_cs.exit6:                          ; preds = %allocator_bb77, %allocator_bb78
  %"290" = phi i32 [ %"289", %allocator_bb78 ], [ 1, %allocator_bb77 ]
  %"291" = trunc i32 %"290" to i8
  store i8 %"291", i8* @"'__CS_ret", align 1
  %"292" = load i8* @"'__CS_ret", align 1
  %"293" = zext i8 %"292" to i32
  %"294" = icmp ne i32 %"293", 0
  br i1 %"294", label %allocator_bb109, label %allocator_bb79

allocator_bb79:                                   ; preds = %allocator___CS_cs.exit6
  %"295" = load i8* @"'__CS_round", align 1
  %"296" = zext i8 %"295" to i64
  %"297" = getelementptr inbounds [3 x i8]* @m_busy, i32 0, i64 %"296"
  %"298" = load i8* %"297", align 1
  %"299" = zext i8 %"298" to i32
  %"300" = load i8* @"'__CS_thread_index", align 1
  %"301" = zext i8 %"300" to i32
  %"302" = add nsw i32 %"301", 1
  %"303" = icmp ne i32 %"299", %"302"
  br i1 %"303", label %allocator_bb80, label %allocator_bb81

allocator_bb80:                                   ; preds = %allocator_bb79
  store i8 1, i8* @"'__CS_error", align 1
  store i8 2, i8* @"'__CS_ret", align 1
  br label %allocator___CS_pthread_mutex_unlock.exit

allocator_bb81:                                   ; preds = %allocator_bb79
  store i8 0, i8* %"297", align 1
  br label %allocator___CS_pthread_mutex_unlock.exit

allocator___CS_pthread_mutex_unlock.exit:         ; preds = %allocator_bb80, %allocator_bb81
  %"304" = call i8 @__kittel_nondef.1() #4
  %"305" = load i8* @"'__CS_round", align 1
  %"306" = zext i8 %"305" to i32
  %"307" = zext i8 %"304" to i32
  %"308" = add nsw i32 %"306", %"307"
  %"309" = icmp slt i32 %"308", 3
  %"310" = zext i1 %"309" to i32
  call void @__VERIFIER_assume(i32 %"310") #4
  %"311" = zext i8 %"304" to i32
  %"312" = load i8* @"'__CS_round", align 1
  %"313" = zext i8 %"312" to i32
  %"314" = add nsw i32 %"313", %"311"
  %"315" = trunc i32 %"314" to i8
  store i8 %"315", i8* @"'__CS_round", align 1
  %"316" = call i32 (...)* @nondet_int() #4
  %"317" = icmp ne i32 %"316", 0
  br i1 %"317", label %allocator_bb82, label %allocator_bb83

allocator_bb82:                                   ; preds = %allocator___CS_pthread_mutex_unlock.exit
  %"318" = load i8* @"'__CS_round", align 1
  %"319" = zext i8 %"318" to i32
  %"320" = icmp eq i32 %"319", 2
  br i1 %"320", label %allocator___CS_cs.exit8, label %allocator_bb83

allocator_bb83:                                   ; preds = %allocator_bb82, %allocator___CS_pthread_mutex_unlock.exit
  %"321" = load i8* @"'__CS_ret", align 1
  %"322" = zext i8 %"321" to i32
  br label %allocator___CS_cs.exit8

allocator___CS_cs.exit8:                          ; preds = %allocator_bb82, %allocator_bb83
  %"323" = phi i32 [ %"322", %allocator_bb83 ], [ 1, %allocator_bb82 ]
  %"324" = trunc i32 %"323" to i8
  store i8 %"324", i8* @"'__CS_ret", align 1
  %"325" = load i8* @"'__CS_ret", align 1
  %"326" = zext i8 %"325" to i32
  %"327" = icmp ne i32 %"326", 0
  br i1 %"327", label %allocator_bb109, label %allocator_bb84

allocator_bb84:                                   ; preds = %allocator___CS_cs.exit8
  %"328" = load i8* @"'__CS_round", align 1
  %"329" = zext i8 %"328" to i64
  %"330" = getelementptr inbounds [3 x i32]* @inode, i32 0, i64 %"329"
  store i32 1, i32* %"330", align 4
  %"331" = call i8 @__kittel_nondef.1() #4
  %"332" = load i8* @"'__CS_round", align 1
  %"333" = zext i8 %"332" to i32
  %"334" = zext i8 %"331" to i32
  %"335" = add nsw i32 %"333", %"334"
  %"336" = icmp slt i32 %"335", 3
  %"337" = zext i1 %"336" to i32
  call void @__VERIFIER_assume(i32 %"337") #4
  %"338" = zext i8 %"331" to i32
  %"339" = load i8* @"'__CS_round", align 1
  %"340" = zext i8 %"339" to i32
  %"341" = add nsw i32 %"340", %"338"
  %"342" = trunc i32 %"341" to i8
  store i8 %"342", i8* @"'__CS_round", align 1
  %"343" = call i32 (...)* @nondet_int() #4
  %"344" = icmp ne i32 %"343", 0
  br i1 %"344", label %allocator_bb85, label %allocator_bb86

allocator_bb85:                                   ; preds = %allocator_bb84
  %"345" = load i8* @"'__CS_round", align 1
  %"346" = zext i8 %"345" to i32
  %"347" = icmp eq i32 %"346", 2
  br i1 %"347", label %allocator___CS_cs.exit9, label %allocator_bb86

allocator_bb86:                                   ; preds = %allocator_bb85, %allocator_bb84
  %"348" = load i8* @"'__CS_ret", align 1
  %"349" = zext i8 %"348" to i32
  br label %allocator___CS_cs.exit9

allocator___CS_cs.exit9:                          ; preds = %allocator_bb85, %allocator_bb86
  %"350" = phi i32 [ %"349", %allocator_bb86 ], [ 1, %allocator_bb85 ]
  %"351" = trunc i32 %"350" to i8
  store i8 %"351", i8* @"'__CS_ret", align 1
  %"352" = load i8* @"'__CS_ret", align 1
  %"353" = zext i8 %"352" to i32
  %"354" = icmp ne i32 %"353", 0
  br i1 %"354", label %allocator_bb109, label %allocator_bb87

allocator_bb87:                                   ; preds = %allocator___CS_cs.exit9, %allocator_bb67
  %"355" = call i8 @__kittel_nondef.1() #4
  %"356" = load i8* @"'__CS_round", align 1
  %"357" = zext i8 %"356" to i32
  %"358" = zext i8 %"355" to i32
  %"359" = add nsw i32 %"357", %"358"
  %"360" = icmp slt i32 %"359", 3
  %"361" = zext i1 %"360" to i32
  call void @__VERIFIER_assume(i32 %"361") #4
  %"362" = zext i8 %"355" to i32
  %"363" = load i8* @"'__CS_round", align 1
  %"364" = zext i8 %"363" to i32
  %"365" = add nsw i32 %"364", %"362"
  %"366" = trunc i32 %"365" to i8
  store i8 %"366", i8* @"'__CS_round", align 1
  %"367" = call i32 (...)* @nondet_int() #4
  %"368" = icmp ne i32 %"367", 0
  br i1 %"368", label %allocator_bb88, label %allocator_bb89

allocator_bb88:                                   ; preds = %allocator_bb87
  %"369" = load i8* @"'__CS_round", align 1
  %"370" = zext i8 %"369" to i32
  %"371" = icmp eq i32 %"370", 2
  br i1 %"371", label %allocator___CS_cs.exit10, label %allocator_bb89

allocator_bb89:                                   ; preds = %allocator_bb88, %allocator_bb87
  %"372" = load i8* @"'__CS_ret", align 1
  %"373" = zext i8 %"372" to i32
  br label %allocator___CS_cs.exit10

allocator___CS_cs.exit10:                         ; preds = %allocator_bb88, %allocator_bb89
  %"374" = phi i32 [ %"373", %allocator_bb89 ], [ 1, %allocator_bb88 ]
  %"375" = trunc i32 %"374" to i8
  store i8 %"375", i8* @"'__CS_ret", align 1
  %"376" = load i8* @"'__CS_ret", align 1
  %"377" = zext i8 %"376" to i32
  %"378" = icmp ne i32 %"377", 0
  br i1 %"378", label %allocator_bb109, label %allocator_bb90

allocator_bb90:                                   ; preds = %allocator___CS_cs.exit10
  %"379" = load i8* @"'__CS_round", align 1
  %"380" = zext i8 %"379" to i64
  %"381" = getelementptr inbounds [3 x i32]* @block, i32 0, i64 %"380"
  store i32 1, i32* %"381", align 4
  %"382" = call i8 @__kittel_nondef.1() #4
  %"383" = load i8* @"'__CS_round", align 1
  %"384" = zext i8 %"383" to i32
  %"385" = zext i8 %"382" to i32
  %"386" = add nsw i32 %"384", %"385"
  %"387" = icmp slt i32 %"386", 3
  %"388" = zext i1 %"387" to i32
  call void @__VERIFIER_assume(i32 %"388") #4
  %"389" = zext i8 %"382" to i32
  %"390" = load i8* @"'__CS_round", align 1
  %"391" = zext i8 %"390" to i32
  %"392" = add nsw i32 %"391", %"389"
  %"393" = trunc i32 %"392" to i8
  store i8 %"393", i8* @"'__CS_round", align 1
  %"394" = call i32 (...)* @nondet_int() #4
  %"395" = icmp ne i32 %"394", 0
  br i1 %"395", label %allocator_bb91, label %allocator_bb92

allocator_bb91:                                   ; preds = %allocator_bb90
  %"396" = load i8* @"'__CS_round", align 1
  %"397" = zext i8 %"396" to i32
  %"398" = icmp eq i32 %"397", 2
  br i1 %"398", label %allocator___CS_cs.exit11, label %allocator_bb92

allocator_bb92:                                   ; preds = %allocator_bb91, %allocator_bb90
  %"399" = load i8* @"'__CS_ret", align 1
  %"400" = zext i8 %"399" to i32
  br label %allocator___CS_cs.exit11

allocator___CS_cs.exit11:                         ; preds = %allocator_bb91, %allocator_bb92
  %"401" = phi i32 [ %"400", %allocator_bb92 ], [ 1, %allocator_bb91 ]
  %"402" = trunc i32 %"401" to i8
  store i8 %"402", i8* @"'__CS_ret", align 1
  %"403" = load i8* @"'__CS_ret", align 1
  %"404" = zext i8 %"403" to i32
  %"405" = icmp ne i32 %"404", 0
  br i1 %"405", label %allocator_bb109, label %allocator_bb93

allocator_bb93:                                   ; preds = %allocator___CS_cs.exit11
  %"406" = load i8* @"'__CS_round", align 1
  %"407" = zext i8 %"406" to i64
  %"408" = getelementptr inbounds [3 x i32]* @block, i32 0, i64 %"407"
  %"409" = load i32* %"408", align 4
  %"410" = icmp eq i32 %"409", 1
  %"411" = call i8 @__kittel_nondef.1() #4
  %"412" = load i8* @"'__CS_round", align 1
  %"413" = zext i8 %"412" to i32
  %"414" = zext i8 %"411" to i32
  %"415" = add nsw i32 %"413", %"414"
  %"416" = icmp slt i32 %"415", 3
  %"417" = zext i1 %"416" to i32
  call void @__VERIFIER_assume(i32 %"417") #4
  %"418" = zext i8 %"411" to i32
  %"419" = load i8* @"'__CS_round", align 1
  %"420" = zext i8 %"419" to i32
  %"421" = add nsw i32 %"420", %"418"
  %"422" = trunc i32 %"421" to i8
  store i8 %"422", i8* @"'__CS_round", align 1
  %"423" = call i32 (...)* @nondet_int() #4
  %"424" = icmp ne i32 %"423", 0
  br i1 %"410", label %allocator_bb94, label %allocator_bb105

allocator_bb94:                                   ; preds = %allocator_bb93
  br i1 %"424", label %allocator_bb95, label %allocator_bb96

allocator_bb95:                                   ; preds = %allocator_bb94
  %"425" = load i8* @"'__CS_round", align 1
  %"426" = zext i8 %"425" to i32
  %"427" = icmp eq i32 %"426", 2
  br i1 %"427", label %allocator___CS_cs.exit13, label %allocator_bb96

allocator_bb96:                                   ; preds = %allocator_bb95, %allocator_bb94
  %"428" = load i8* @"'__CS_ret", align 1
  %"429" = zext i8 %"428" to i32
  br label %allocator___CS_cs.exit13

allocator___CS_cs.exit13:                         ; preds = %allocator_bb95, %allocator_bb96
  %"430" = phi i32 [ %"429", %allocator_bb96 ], [ 1, %allocator_bb95 ]
  %"431" = trunc i32 %"430" to i8
  store i8 %"431", i8* @"'__CS_ret", align 1
  %"432" = load i8* @"'__CS_ret", align 1
  %"433" = zext i8 %"432" to i32
  %"434" = icmp ne i32 %"433", 0
  br i1 %"434", label %allocator_bb109, label %allocator_bb97

allocator_bb97:                                   ; preds = %allocator___CS_cs.exit13
  %"435" = call i8 @__kittel_nondef.1() #4
  %"436" = load i8* @"'__CS_round", align 1
  %"437" = zext i8 %"436" to i32
  %"438" = zext i8 %"435" to i32
  %"439" = add nsw i32 %"437", %"438"
  %"440" = icmp slt i32 %"439", 3
  %"441" = zext i1 %"440" to i32
  call void @__VERIFIER_assume(i32 %"441") #4
  %"442" = zext i8 %"435" to i32
  %"443" = load i8* @"'__CS_round", align 1
  %"444" = zext i8 %"443" to i32
  %"445" = add nsw i32 %"444", %"442"
  %"446" = trunc i32 %"445" to i8
  store i8 %"446", i8* @"'__CS_round", align 1
  %"447" = call i32 (...)* @nondet_int() #4
  %"448" = icmp ne i32 %"447", 0
  br i1 %"448", label %allocator_bb98, label %allocator_bb99

allocator_bb98:                                   ; preds = %allocator_bb97
  %"449" = load i8* @"'__CS_round", align 1
  %"450" = zext i8 %"449" to i32
  %"451" = icmp eq i32 %"450", 2
  br i1 %"451", label %allocator___CS_cs.exit14, label %allocator_bb99

allocator_bb99:                                   ; preds = %allocator_bb98, %allocator_bb97
  %"452" = load i8* @"'__CS_ret", align 1
  %"453" = zext i8 %"452" to i32
  br label %allocator___CS_cs.exit14

allocator___CS_cs.exit14:                         ; preds = %allocator_bb98, %allocator_bb99
  %"454" = phi i32 [ %"453", %allocator_bb99 ], [ 1, %allocator_bb98 ]
  %"455" = trunc i32 %"454" to i8
  store i8 %"455", i8* @"'__CS_ret", align 1
  %"456" = load i8* @"'__CS_ret", align 1
  %"457" = zext i8 %"456" to i32
  %"458" = icmp ne i32 %"457", 0
  br i1 %"458", label %allocator_bb109, label %allocator_bb100

allocator_bb100:                                  ; preds = %allocator___CS_cs.exit14
  %"459" = load i8* @"'__CS_round", align 1
  %"460" = zext i8 %"459" to i64
  %"461" = getelementptr inbounds [3 x i8]* @m_inode, i32 0, i64 %"460"
  %"462" = load i8* %"461", align 1
  %"463" = zext i8 %"462" to i32
  %"464" = load i8* @"'__CS_thread_index", align 1
  %"465" = zext i8 %"464" to i32
  %"466" = add nsw i32 %"465", 1
  %"467" = icmp ne i32 %"463", %"466"
  br i1 %"467", label %allocator_bb101, label %allocator_bb102

allocator_bb101:                                  ; preds = %allocator_bb100
  store i8 1, i8* @"'__CS_error", align 1
  store i8 2, i8* @"'__CS_ret", align 1
  br label %allocator___CS_pthread_mutex_unlock.exit16

allocator_bb102:                                  ; preds = %allocator_bb100
  store i8 0, i8* %"461", align 1
  br label %allocator___CS_pthread_mutex_unlock.exit16

allocator___CS_pthread_mutex_unlock.exit16:       ; preds = %allocator_bb101, %allocator_bb102
  %"468" = call i8 @__kittel_nondef.1() #4
  %"469" = load i8* @"'__CS_round", align 1
  %"470" = zext i8 %"469" to i32
  %"471" = zext i8 %"468" to i32
  %"472" = add nsw i32 %"470", %"471"
  %"473" = icmp slt i32 %"472", 3
  %"474" = zext i1 %"473" to i32
  call void @__VERIFIER_assume(i32 %"474") #4
  %"475" = zext i8 %"468" to i32
  %"476" = load i8* @"'__CS_round", align 1
  %"477" = zext i8 %"476" to i32
  %"478" = add nsw i32 %"477", %"475"
  %"479" = trunc i32 %"478" to i8
  store i8 %"479", i8* @"'__CS_round", align 1
  %"480" = call i32 (...)* @nondet_int() #4
  %"481" = icmp ne i32 %"480", 0
  br i1 %"481", label %allocator_bb103, label %allocator_bb104

allocator_bb103:                                  ; preds = %allocator___CS_pthread_mutex_unlock.exit16
  %"482" = load i8* @"'__CS_round", align 1
  %"483" = zext i8 %"482" to i32
  %"484" = icmp eq i32 %"483", 2
  br i1 %"484", label %allocator___CS_cs.exit17, label %allocator_bb104

allocator_bb104:                                  ; preds = %allocator_bb103, %allocator___CS_pthread_mutex_unlock.exit16
  %"485" = load i8* @"'__CS_ret", align 1
  %"486" = zext i8 %"485" to i32
  br label %allocator___CS_cs.exit17

allocator___CS_cs.exit17:                         ; preds = %allocator_bb103, %allocator_bb104
  %"487" = phi i32 [ %"486", %allocator_bb104 ], [ 1, %allocator_bb103 ]
  %"488" = trunc i32 %"487" to i8
  store i8 %"488", i8* @"'__CS_ret", align 1
  br label %allocator_bb109

allocator_bb105:                                  ; preds = %allocator_bb93
  br i1 %"424", label %allocator_bb106, label %allocator_bb107

allocator_bb106:                                  ; preds = %allocator_bb105
  %"489" = load i8* @"'__CS_round", align 1
  %"490" = zext i8 %"489" to i32
  %"491" = icmp eq i32 %"490", 2
  br i1 %"491", label %allocator___CS_cs.exit12, label %allocator_bb107

allocator_bb107:                                  ; preds = %allocator_bb106, %allocator_bb105
  %"492" = load i8* @"'__CS_ret", align 1
  %"493" = zext i8 %"492" to i32
  br label %allocator___CS_cs.exit12

allocator___CS_cs.exit12:                         ; preds = %allocator_bb106, %allocator_bb107
  %"494" = phi i32 [ %"493", %allocator_bb107 ], [ 1, %allocator_bb106 ]
  %"495" = trunc i32 %"494" to i8
  store i8 %"495", i8* @"'__CS_ret", align 1
  %"496" = load i8* @"'__CS_ret", align 1
  %"497" = zext i8 %"496" to i32
  %"498" = icmp ne i32 %"497", 0
  br i1 %"498", label %allocator_bb109, label %allocator_bb108

allocator_bb108:                                  ; preds = %allocator___CS_cs.exit12
  store i8 1, i8* @"'__CS_error", align 1
  store i8 2, i8* @"'__CS_ret", align 1
  br label %allocator_bb109

allocator_bb109:                                  ; preds = %allocator___CS_cs.exit17, %allocator___CS_cs.exit14, %allocator___CS_cs.exit13, %allocator___CS_cs.exit12, %allocator___CS_cs.exit11, %allocator___CS_cs.exit10, %allocator___CS_cs.exit9, %allocator___CS_cs.exit8, %allocator___CS_cs.exit6, %allocator___CS_cs.exit5, %allocator___CS_cs.exit2, %allocator___CS_cs.exit1, %allocator___CS_cs.exit, %allocator_bb108
  ret i8* null
}

; Function Attrs: nounwind uwtable
define i8* @de_allocator() #0 {
de_allocator_bb110:
  %"499" = call i8 @__kittel_nondef.1() #4
  %"500" = load i8* @"'__CS_round", align 1
  %"501" = zext i8 %"500" to i32
  %"502" = zext i8 %"499" to i32
  %"503" = add nsw i32 %"501", %"502"
  %"504" = icmp slt i32 %"503", 3
  %"505" = zext i1 %"504" to i32
  call void @__VERIFIER_assume(i32 %"505") #4
  %"506" = zext i8 %"499" to i32
  %"507" = load i8* @"'__CS_round", align 1
  %"508" = zext i8 %"507" to i32
  %"509" = add nsw i32 %"508", %"506"
  %"510" = trunc i32 %"509" to i8
  store i8 %"510", i8* @"'__CS_round", align 1
  %"511" = call i32 (...)* @nondet_int() #4
  %"512" = icmp ne i32 %"511", 0
  br i1 %"512", label %de_allocator_bb111, label %de_allocator_bb112

de_allocator_bb111:                               ; preds = %de_allocator_bb110
  %"513" = load i8* @"'__CS_round", align 1
  %"514" = zext i8 %"513" to i32
  %"515" = icmp eq i32 %"514", 2
  br i1 %"515", label %de_allocator___CS_cs.exit, label %de_allocator_bb112

de_allocator_bb112:                               ; preds = %de_allocator_bb111, %de_allocator_bb110
  %"516" = load i8* @"'__CS_ret", align 1
  %"517" = zext i8 %"516" to i32
  br label %de_allocator___CS_cs.exit

de_allocator___CS_cs.exit:                        ; preds = %de_allocator_bb111, %de_allocator_bb112
  %"518" = phi i32 [ %"517", %de_allocator_bb112 ], [ 1, %de_allocator_bb111 ]
  %"519" = trunc i32 %"518" to i8
  store i8 %"519", i8* @"'__CS_ret", align 1
  %"520" = load i8* @"'__CS_ret", align 1
  %"521" = zext i8 %"520" to i32
  %"522" = icmp ne i32 %"521", 0
  br i1 %"522", label %de_allocator_bb144, label %de_allocator_bb113

de_allocator_bb113:                               ; preds = %de_allocator___CS_cs.exit
  %"523" = load i8* @"'__CS_round", align 1
  %"524" = zext i8 %"523" to i64
  %"525" = getelementptr inbounds [3 x i8]* @m_busy, i32 0, i64 %"524"
  %"526" = load i8* %"525", align 1
  %"527" = zext i8 %"526" to i32
  %"528" = icmp eq i32 %"527", 0
  br i1 %"528", label %de_allocator_bb114, label %de_allocator_bb115

de_allocator_bb114:                               ; preds = %de_allocator_bb113
  %"529" = load i8* @"'__CS_thread_index", align 1
  %"530" = zext i8 %"529" to i32
  %"531" = add nsw i32 %"530", 1
  %"532" = trunc i32 %"531" to i8
  store i8 %"532", i8* %"525", align 1
  br label %de_allocator___CS_pthread_mutex_lock.exit

de_allocator_bb115:                               ; preds = %de_allocator_bb113
  store i8 1, i8* @"'__CS_ret", align 1
  br label %de_allocator___CS_pthread_mutex_lock.exit

de_allocator___CS_pthread_mutex_lock.exit:        ; preds = %de_allocator_bb114, %de_allocator_bb115
  %"533" = call i8 @__kittel_nondef.1() #4
  %"534" = load i8* @"'__CS_round", align 1
  %"535" = zext i8 %"534" to i32
  %"536" = zext i8 %"533" to i32
  %"537" = add nsw i32 %"535", %"536"
  %"538" = icmp slt i32 %"537", 3
  %"539" = zext i1 %"538" to i32
  call void @__VERIFIER_assume(i32 %"539") #4
  %"540" = zext i8 %"533" to i32
  %"541" = load i8* @"'__CS_round", align 1
  %"542" = zext i8 %"541" to i32
  %"543" = add nsw i32 %"542", %"540"
  %"544" = trunc i32 %"543" to i8
  store i8 %"544", i8* @"'__CS_round", align 1
  %"545" = call i32 (...)* @nondet_int() #4
  %"546" = icmp ne i32 %"545", 0
  br i1 %"546", label %de_allocator_bb116, label %de_allocator_bb117

de_allocator_bb116:                               ; preds = %de_allocator___CS_pthread_mutex_lock.exit
  %"547" = load i8* @"'__CS_round", align 1
  %"548" = zext i8 %"547" to i32
  %"549" = icmp eq i32 %"548", 2
  br i1 %"549", label %de_allocator___CS_cs.exit1, label %de_allocator_bb117

de_allocator_bb117:                               ; preds = %de_allocator_bb116, %de_allocator___CS_pthread_mutex_lock.exit
  %"550" = load i8* @"'__CS_ret", align 1
  %"551" = zext i8 %"550" to i32
  br label %de_allocator___CS_cs.exit1

de_allocator___CS_cs.exit1:                       ; preds = %de_allocator_bb116, %de_allocator_bb117
  %"552" = phi i32 [ %"551", %de_allocator_bb117 ], [ 1, %de_allocator_bb116 ]
  %"553" = trunc i32 %"552" to i8
  store i8 %"553", i8* @"'__CS_ret", align 1
  %"554" = load i8* @"'__CS_ret", align 1
  %"555" = zext i8 %"554" to i32
  %"556" = icmp ne i32 %"555", 0
  br i1 %"556", label %de_allocator_bb144, label %de_allocator_bb118

de_allocator_bb118:                               ; preds = %de_allocator___CS_cs.exit1
  %"557" = load i8* @"'__CS_round", align 1
  %"558" = zext i8 %"557" to i64
  %"559" = getelementptr inbounds [3 x i32]* @busy, i32 0, i64 %"558"
  %"560" = load i32* %"559", align 4
  %"561" = icmp eq i32 %"560", 0
  br i1 %"561", label %de_allocator_bb119, label %de_allocator_bb136

de_allocator_bb119:                               ; preds = %de_allocator_bb118
  %"562" = call i8 @__kittel_nondef.1() #4
  %"563" = load i8* @"'__CS_round", align 1
  %"564" = zext i8 %"563" to i32
  %"565" = zext i8 %"562" to i32
  %"566" = add nsw i32 %"564", %"565"
  %"567" = icmp slt i32 %"566", 3
  %"568" = zext i1 %"567" to i32
  call void @__VERIFIER_assume(i32 %"568") #4
  %"569" = zext i8 %"562" to i32
  %"570" = load i8* @"'__CS_round", align 1
  %"571" = zext i8 %"570" to i32
  %"572" = add nsw i32 %"571", %"569"
  %"573" = trunc i32 %"572" to i8
  store i8 %"573", i8* @"'__CS_round", align 1
  %"574" = call i32 (...)* @nondet_int() #4
  %"575" = icmp ne i32 %"574", 0
  br i1 %"575", label %de_allocator_bb120, label %de_allocator_bb121

de_allocator_bb120:                               ; preds = %de_allocator_bb119
  %"576" = load i8* @"'__CS_round", align 1
  %"577" = zext i8 %"576" to i32
  %"578" = icmp eq i32 %"577", 2
  br i1 %"578", label %de_allocator___CS_cs.exit2, label %de_allocator_bb121

de_allocator_bb121:                               ; preds = %de_allocator_bb120, %de_allocator_bb119
  %"579" = load i8* @"'__CS_ret", align 1
  %"580" = zext i8 %"579" to i32
  br label %de_allocator___CS_cs.exit2

de_allocator___CS_cs.exit2:                       ; preds = %de_allocator_bb120, %de_allocator_bb121
  %"581" = phi i32 [ %"580", %de_allocator_bb121 ], [ 1, %de_allocator_bb120 ]
  %"582" = trunc i32 %"581" to i8
  store i8 %"582", i8* @"'__CS_ret", align 1
  %"583" = load i8* @"'__CS_ret", align 1
  %"584" = zext i8 %"583" to i32
  %"585" = icmp ne i32 %"584", 0
  br i1 %"585", label %de_allocator_bb144, label %de_allocator_bb122

de_allocator_bb122:                               ; preds = %de_allocator___CS_cs.exit2
  %"586" = load i8* @"'__CS_round", align 1
  %"587" = zext i8 %"586" to i64
  %"588" = getelementptr inbounds [3 x i32]* @block, i32 0, i64 %"587"
  store i32 0, i32* %"588", align 4
  %"589" = call i8 @__kittel_nondef.1() #4
  %"590" = load i8* @"'__CS_round", align 1
  %"591" = zext i8 %"590" to i32
  %"592" = zext i8 %"589" to i32
  %"593" = add nsw i32 %"591", %"592"
  %"594" = icmp slt i32 %"593", 3
  %"595" = zext i1 %"594" to i32
  call void @__VERIFIER_assume(i32 %"595") #4
  %"596" = zext i8 %"589" to i32
  %"597" = load i8* @"'__CS_round", align 1
  %"598" = zext i8 %"597" to i32
  %"599" = add nsw i32 %"598", %"596"
  %"600" = trunc i32 %"599" to i8
  store i8 %"600", i8* @"'__CS_round", align 1
  %"601" = call i32 (...)* @nondet_int() #4
  %"602" = icmp ne i32 %"601", 0
  br i1 %"602", label %de_allocator_bb123, label %de_allocator_bb124

de_allocator_bb123:                               ; preds = %de_allocator_bb122
  %"603" = load i8* @"'__CS_round", align 1
  %"604" = zext i8 %"603" to i32
  %"605" = icmp eq i32 %"604", 2
  br i1 %"605", label %de_allocator___CS_cs.exit3, label %de_allocator_bb124

de_allocator_bb124:                               ; preds = %de_allocator_bb123, %de_allocator_bb122
  %"606" = load i8* @"'__CS_ret", align 1
  %"607" = zext i8 %"606" to i32
  br label %de_allocator___CS_cs.exit3

de_allocator___CS_cs.exit3:                       ; preds = %de_allocator_bb123, %de_allocator_bb124
  %"608" = phi i32 [ %"607", %de_allocator_bb124 ], [ 1, %de_allocator_bb123 ]
  %"609" = trunc i32 %"608" to i8
  store i8 %"609", i8* @"'__CS_ret", align 1
  %"610" = load i8* @"'__CS_ret", align 1
  %"611" = zext i8 %"610" to i32
  %"612" = icmp ne i32 %"611", 0
  br i1 %"612", label %de_allocator_bb144, label %de_allocator_bb125

de_allocator_bb125:                               ; preds = %de_allocator___CS_cs.exit3
  %"613" = load i8* @"'__CS_round", align 1
  %"614" = zext i8 %"613" to i64
  %"615" = getelementptr inbounds [3 x i32]* @block, i32 0, i64 %"614"
  %"616" = load i32* %"615", align 4
  %"617" = icmp eq i32 %"616", 0
  %"618" = call i8 @__kittel_nondef.1() #4
  %"619" = load i8* @"'__CS_round", align 1
  %"620" = zext i8 %"619" to i32
  %"621" = zext i8 %"618" to i32
  %"622" = add nsw i32 %"620", %"621"
  %"623" = icmp slt i32 %"622", 3
  %"624" = zext i1 %"623" to i32
  call void @__VERIFIER_assume(i32 %"624") #4
  %"625" = zext i8 %"618" to i32
  %"626" = load i8* @"'__CS_round", align 1
  %"627" = zext i8 %"626" to i32
  %"628" = add nsw i32 %"627", %"625"
  %"629" = trunc i32 %"628" to i8
  store i8 %"629", i8* @"'__CS_round", align 1
  %"630" = call i32 (...)* @nondet_int() #4
  %"631" = icmp ne i32 %"630", 0
  br i1 %"617", label %de_allocator_bb126, label %de_allocator_bb132

de_allocator_bb126:                               ; preds = %de_allocator_bb125
  br i1 %"631", label %de_allocator_bb127, label %de_allocator_bb128

de_allocator_bb127:                               ; preds = %de_allocator_bb126
  %"632" = load i8* @"'__CS_round", align 1
  %"633" = zext i8 %"632" to i32
  %"634" = icmp eq i32 %"633", 2
  br i1 %"634", label %de_allocator___CS_cs.exit5, label %de_allocator_bb128

de_allocator_bb128:                               ; preds = %de_allocator_bb127, %de_allocator_bb126
  %"635" = load i8* @"'__CS_ret", align 1
  %"636" = zext i8 %"635" to i32
  br label %de_allocator___CS_cs.exit5

de_allocator___CS_cs.exit5:                       ; preds = %de_allocator_bb127, %de_allocator_bb128
  %"637" = phi i32 [ %"636", %de_allocator_bb128 ], [ 1, %de_allocator_bb127 ]
  %"638" = trunc i32 %"637" to i8
  store i8 %"638", i8* @"'__CS_ret", align 1
  %"639" = load i8* @"'__CS_ret", align 1
  %"640" = zext i8 %"639" to i32
  %"641" = icmp ne i32 %"640", 0
  br i1 %"641", label %de_allocator_bb144, label %de_allocator_bb129

de_allocator_bb129:                               ; preds = %de_allocator___CS_cs.exit5
  %"642" = call i8 @__kittel_nondef.1() #4
  %"643" = load i8* @"'__CS_round", align 1
  %"644" = zext i8 %"643" to i32
  %"645" = zext i8 %"642" to i32
  %"646" = add nsw i32 %"644", %"645"
  %"647" = icmp slt i32 %"646", 3
  %"648" = zext i1 %"647" to i32
  call void @__VERIFIER_assume(i32 %"648") #4
  %"649" = zext i8 %"642" to i32
  %"650" = load i8* @"'__CS_round", align 1
  %"651" = zext i8 %"650" to i32
  %"652" = add nsw i32 %"651", %"649"
  %"653" = trunc i32 %"652" to i8
  store i8 %"653", i8* @"'__CS_round", align 1
  %"654" = call i32 (...)* @nondet_int() #4
  %"655" = icmp ne i32 %"654", 0
  br i1 %"655", label %de_allocator_bb130, label %de_allocator_bb131

de_allocator_bb130:                               ; preds = %de_allocator_bb129
  %"656" = load i8* @"'__CS_round", align 1
  %"657" = zext i8 %"656" to i32
  %"658" = icmp eq i32 %"657", 2
  br i1 %"658", label %de_allocator___CS_cs.exit6, label %de_allocator_bb131

de_allocator_bb131:                               ; preds = %de_allocator_bb130, %de_allocator_bb129
  %"659" = load i8* @"'__CS_ret", align 1
  %"660" = zext i8 %"659" to i32
  br label %de_allocator___CS_cs.exit6

de_allocator___CS_cs.exit6:                       ; preds = %de_allocator_bb130, %de_allocator_bb131
  %"661" = phi i32 [ %"660", %de_allocator_bb131 ], [ 1, %de_allocator_bb130 ]
  %"662" = trunc i32 %"661" to i8
  store i8 %"662", i8* @"'__CS_ret", align 1
  %"663" = load i8* @"'__CS_ret", align 1
  %"664" = zext i8 %"663" to i32
  %"665" = icmp ne i32 %"664", 0
  br i1 %"665", label %de_allocator_bb144, label %de_allocator_bb136

de_allocator_bb132:                               ; preds = %de_allocator_bb125
  br i1 %"631", label %de_allocator_bb133, label %de_allocator_bb134

de_allocator_bb133:                               ; preds = %de_allocator_bb132
  %"666" = load i8* @"'__CS_round", align 1
  %"667" = zext i8 %"666" to i32
  %"668" = icmp eq i32 %"667", 2
  br i1 %"668", label %de_allocator___CS_cs.exit4, label %de_allocator_bb134

de_allocator_bb134:                               ; preds = %de_allocator_bb133, %de_allocator_bb132
  %"669" = load i8* @"'__CS_ret", align 1
  %"670" = zext i8 %"669" to i32
  br label %de_allocator___CS_cs.exit4

de_allocator___CS_cs.exit4:                       ; preds = %de_allocator_bb133, %de_allocator_bb134
  %"671" = phi i32 [ %"670", %de_allocator_bb134 ], [ 1, %de_allocator_bb133 ]
  %"672" = trunc i32 %"671" to i8
  store i8 %"672", i8* @"'__CS_ret", align 1
  %"673" = load i8* @"'__CS_ret", align 1
  %"674" = zext i8 %"673" to i32
  %"675" = icmp ne i32 %"674", 0
  br i1 %"675", label %de_allocator_bb144, label %de_allocator_bb135

de_allocator_bb135:                               ; preds = %de_allocator___CS_cs.exit4
  store i8 1, i8* @"'__CS_error", align 1
  store i8 2, i8* @"'__CS_ret", align 1
  br label %de_allocator_bb144

de_allocator_bb136:                               ; preds = %de_allocator___CS_cs.exit6, %de_allocator_bb118
  %"676" = call i8 @__kittel_nondef.1() #4
  %"677" = load i8* @"'__CS_round", align 1
  %"678" = zext i8 %"677" to i32
  %"679" = zext i8 %"676" to i32
  %"680" = add nsw i32 %"678", %"679"
  %"681" = icmp slt i32 %"680", 3
  %"682" = zext i1 %"681" to i32
  call void @__VERIFIER_assume(i32 %"682") #4
  %"683" = zext i8 %"676" to i32
  %"684" = load i8* @"'__CS_round", align 1
  %"685" = zext i8 %"684" to i32
  %"686" = add nsw i32 %"685", %"683"
  %"687" = trunc i32 %"686" to i8
  store i8 %"687", i8* @"'__CS_round", align 1
  %"688" = call i32 (...)* @nondet_int() #4
  %"689" = icmp ne i32 %"688", 0
  br i1 %"689", label %de_allocator_bb137, label %de_allocator_bb138

de_allocator_bb137:                               ; preds = %de_allocator_bb136
  %"690" = load i8* @"'__CS_round", align 1
  %"691" = zext i8 %"690" to i32
  %"692" = icmp eq i32 %"691", 2
  br i1 %"692", label %de_allocator___CS_cs.exit7, label %de_allocator_bb138

de_allocator_bb138:                               ; preds = %de_allocator_bb137, %de_allocator_bb136
  %"693" = load i8* @"'__CS_ret", align 1
  %"694" = zext i8 %"693" to i32
  br label %de_allocator___CS_cs.exit7

de_allocator___CS_cs.exit7:                       ; preds = %de_allocator_bb137, %de_allocator_bb138
  %"695" = phi i32 [ %"694", %de_allocator_bb138 ], [ 1, %de_allocator_bb137 ]
  %"696" = trunc i32 %"695" to i8
  store i8 %"696", i8* @"'__CS_ret", align 1
  %"697" = load i8* @"'__CS_ret", align 1
  %"698" = zext i8 %"697" to i32
  %"699" = icmp ne i32 %"698", 0
  br i1 %"699", label %de_allocator_bb144, label %de_allocator_bb139

de_allocator_bb139:                               ; preds = %de_allocator___CS_cs.exit7
  %"700" = load i8* @"'__CS_round", align 1
  %"701" = zext i8 %"700" to i64
  %"702" = getelementptr inbounds [3 x i8]* @m_busy, i32 0, i64 %"701"
  %"703" = load i8* %"702", align 1
  %"704" = zext i8 %"703" to i32
  %"705" = load i8* @"'__CS_thread_index", align 1
  %"706" = zext i8 %"705" to i32
  %"707" = add nsw i32 %"706", 1
  %"708" = icmp ne i32 %"704", %"707"
  br i1 %"708", label %de_allocator_bb140, label %de_allocator_bb141

de_allocator_bb140:                               ; preds = %de_allocator_bb139
  store i8 1, i8* @"'__CS_error", align 1
  store i8 2, i8* @"'__CS_ret", align 1
  br label %de_allocator___CS_pthread_mutex_unlock.exit

de_allocator_bb141:                               ; preds = %de_allocator_bb139
  store i8 0, i8* %"702", align 1
  br label %de_allocator___CS_pthread_mutex_unlock.exit

de_allocator___CS_pthread_mutex_unlock.exit:      ; preds = %de_allocator_bb140, %de_allocator_bb141
  %"709" = call i8 @__kittel_nondef.1() #4
  %"710" = load i8* @"'__CS_round", align 1
  %"711" = zext i8 %"710" to i32
  %"712" = zext i8 %"709" to i32
  %"713" = add nsw i32 %"711", %"712"
  %"714" = icmp slt i32 %"713", 3
  %"715" = zext i1 %"714" to i32
  call void @__VERIFIER_assume(i32 %"715") #4
  %"716" = zext i8 %"709" to i32
  %"717" = load i8* @"'__CS_round", align 1
  %"718" = zext i8 %"717" to i32
  %"719" = add nsw i32 %"718", %"716"
  %"720" = trunc i32 %"719" to i8
  store i8 %"720", i8* @"'__CS_round", align 1
  %"721" = call i32 (...)* @nondet_int() #4
  %"722" = icmp ne i32 %"721", 0
  br i1 %"722", label %de_allocator_bb142, label %de_allocator_bb143

de_allocator_bb142:                               ; preds = %de_allocator___CS_pthread_mutex_unlock.exit
  %"723" = load i8* @"'__CS_round", align 1
  %"724" = zext i8 %"723" to i32
  %"725" = icmp eq i32 %"724", 2
  br i1 %"725", label %de_allocator___CS_cs.exit9, label %de_allocator_bb143

de_allocator_bb143:                               ; preds = %de_allocator_bb142, %de_allocator___CS_pthread_mutex_unlock.exit
  %"726" = load i8* @"'__CS_ret", align 1
  %"727" = zext i8 %"726" to i32
  br label %de_allocator___CS_cs.exit9

de_allocator___CS_cs.exit9:                       ; preds = %de_allocator_bb142, %de_allocator_bb143
  %"728" = phi i32 [ %"727", %de_allocator_bb143 ], [ 1, %de_allocator_bb142 ]
  %"729" = trunc i32 %"728" to i8
  store i8 %"729", i8* @"'__CS_ret", align 1
  br label %de_allocator_bb144

de_allocator_bb144:                               ; preds = %de_allocator___CS_cs.exit9, %de_allocator___CS_cs.exit7, %de_allocator___CS_cs.exit6, %de_allocator___CS_cs.exit5, %de_allocator___CS_cs.exit4, %de_allocator___CS_cs.exit3, %de_allocator___CS_cs.exit2, %de_allocator___CS_cs.exit1, %de_allocator___CS_cs.exit, %de_allocator_bb135
  ret i8* null
}

; Function Attrs: nounwind uwtable
define i8* @main_thread(i8* %arg) #0 {
main_thread_bb145:
  %"730" = call i8* @__kittel_nondef.2()
  %"731" = call i8 @__kittel_nondef.1() #4
  %"732" = load i8* @"'__CS_round", align 1
  %"733" = zext i8 %"732" to i32
  %"734" = zext i8 %"731" to i32
  %"735" = add nsw i32 %"733", %"734"
  %"736" = icmp slt i32 %"735", 3
  %"737" = zext i1 %"736" to i32
  call void @__VERIFIER_assume(i32 %"737") #4
  %"738" = zext i8 %"731" to i32
  %"739" = load i8* @"'__CS_round", align 1
  %"740" = zext i8 %"739" to i32
  %"741" = add nsw i32 %"740", %"738"
  %"742" = trunc i32 %"741" to i8
  store i8 %"742", i8* @"'__CS_round", align 1
  %"743" = call i32 (...)* @nondet_int() #4
  %"744" = icmp ne i32 %"743", 0
  br i1 %"744", label %main_thread_bb146, label %main_thread_bb147

main_thread_bb146:                                ; preds = %main_thread_bb145
  %"745" = load i8* @"'__CS_round", align 1
  %"746" = zext i8 %"745" to i32
  %"747" = icmp eq i32 %"746", 2
  br i1 %"747", label %main_thread___CS_cs.exit, label %main_thread_bb147

main_thread_bb147:                                ; preds = %main_thread_bb146, %main_thread_bb145
  %"748" = load i8* @"'__CS_ret", align 1
  %"749" = zext i8 %"748" to i32
  br label %main_thread___CS_cs.exit

main_thread___CS_cs.exit:                         ; preds = %main_thread_bb146, %main_thread_bb147
  %"750" = phi i32 [ %"749", %main_thread_bb147 ], [ 1, %main_thread_bb146 ]
  %"751" = trunc i32 %"750" to i8
  store i8 %"751", i8* @"'__CS_ret", align 1
  %"752" = load i8* @"'__CS_ret", align 1
  %"753" = zext i8 %"752" to i32
  %"754" = icmp ne i32 %"753", 0
  br i1 %"754", label %main_thread_bb192, label %main_thread_bb148

main_thread_bb148:                                ; preds = %main_thread___CS_cs.exit
  %"755" = load i8* @"'__CS_round", align 1
  %"756" = zext i8 %"755" to i64
  %"757" = getelementptr inbounds [3 x i32]* @inode, i32 0, i64 %"756"
  %"758" = load i32* %"757", align 4
  %"759" = load i8* @"'__CS_round", align 1
  %"760" = zext i8 %"759" to i64
  %"761" = getelementptr inbounds [3 x i32]* @busy, i32 0, i64 %"760"
  %"762" = load i32* %"761", align 4
  %"763" = icmp eq i32 %"758", %"762"
  br i1 %"763", label %main_thread___CS_assume.exit, label %main_thread_bb149

main_thread_bb149:                                ; preds = %main_thread_bb148
  store i8 1, i8* @"'__CS_ret", align 1
  br label %main_thread___CS_assume.exit

main_thread___CS_assume.exit:                     ; preds = %main_thread_bb148, %main_thread_bb149
  %"764" = call i8 @__kittel_nondef.1() #4
  %"765" = load i8* @"'__CS_round", align 1
  %"766" = zext i8 %"765" to i32
  %"767" = zext i8 %"764" to i32
  %"768" = add nsw i32 %"766", %"767"
  %"769" = icmp slt i32 %"768", 3
  %"770" = zext i1 %"769" to i32
  call void @__VERIFIER_assume(i32 %"770") #4
  %"771" = zext i8 %"764" to i32
  %"772" = load i8* @"'__CS_round", align 1
  %"773" = zext i8 %"772" to i32
  %"774" = add nsw i32 %"773", %"771"
  %"775" = trunc i32 %"774" to i8
  store i8 %"775", i8* @"'__CS_round", align 1
  %"776" = call i32 (...)* @nondet_int() #4
  %"777" = icmp ne i32 %"776", 0
  br i1 %"777", label %main_thread_bb150, label %main_thread_bb151

main_thread_bb150:                                ; preds = %main_thread___CS_assume.exit
  %"778" = load i8* @"'__CS_round", align 1
  %"779" = zext i8 %"778" to i32
  %"780" = icmp eq i32 %"779", 2
  br i1 %"780", label %main_thread___CS_cs.exit1, label %main_thread_bb151

main_thread_bb151:                                ; preds = %main_thread_bb150, %main_thread___CS_assume.exit
  %"781" = load i8* @"'__CS_ret", align 1
  %"782" = zext i8 %"781" to i32
  br label %main_thread___CS_cs.exit1

main_thread___CS_cs.exit1:                        ; preds = %main_thread_bb150, %main_thread_bb151
  %"783" = phi i32 [ %"782", %main_thread_bb151 ], [ 1, %main_thread_bb150 ]
  %"784" = trunc i32 %"783" to i8
  store i8 %"784", i8* @"'__CS_ret", align 1
  %"785" = load i8* @"'__CS_ret", align 1
  %"786" = zext i8 %"785" to i32
  %"787" = icmp ne i32 %"786", 0
  br i1 %"787", label %main_thread_bb192, label %main_thread_bb152

main_thread_bb152:                                ; preds = %main_thread___CS_cs.exit1
  %"788" = call i8 @__kittel_nondef.1() #4
  %"789" = load i8* @"'__CS_round", align 1
  %"790" = zext i8 %"789" to i32
  %"791" = zext i8 %"788" to i32
  %"792" = add nsw i32 %"790", %"791"
  %"793" = icmp slt i32 %"792", 3
  %"794" = zext i1 %"793" to i32
  call void @__VERIFIER_assume(i32 %"794") #4
  %"795" = zext i8 %"788" to i32
  %"796" = load i8* @"'__CS_round", align 1
  %"797" = zext i8 %"796" to i32
  %"798" = add nsw i32 %"797", %"795"
  %"799" = trunc i32 %"798" to i8
  store i8 %"799", i8* @"'__CS_round", align 1
  %"800" = call i32 (...)* @nondet_int() #4
  %"801" = icmp ne i32 %"800", 0
  br i1 %"801", label %main_thread_bb153, label %main_thread_bb154

main_thread_bb153:                                ; preds = %main_thread_bb152
  %"802" = load i8* @"'__CS_round", align 1
  %"803" = zext i8 %"802" to i32
  %"804" = icmp eq i32 %"803", 2
  br i1 %"804", label %main_thread___CS_cs.exit2, label %main_thread_bb154

main_thread_bb154:                                ; preds = %main_thread_bb153, %main_thread_bb152
  %"805" = load i8* @"'__CS_ret", align 1
  %"806" = zext i8 %"805" to i32
  br label %main_thread___CS_cs.exit2

main_thread___CS_cs.exit2:                        ; preds = %main_thread_bb153, %main_thread_bb154
  %"807" = phi i32 [ %"806", %main_thread_bb154 ], [ 1, %main_thread_bb153 ]
  %"808" = trunc i32 %"807" to i8
  store i8 %"808", i8* @"'__CS_ret", align 1
  %"809" = load i8* @"'__CS_ret", align 1
  %"810" = zext i8 %"809" to i32
  %"811" = icmp ne i32 %"810", 0
  br i1 %"811", label %main_thread_bb192, label %main_thread_bb155

main_thread_bb155:                                ; preds = %main_thread___CS_cs.exit2
  %"812" = call i8 @__kittel_nondef.1() #4
  %"813" = load i8* @"'__CS_round", align 1
  %"814" = zext i8 %"813" to i32
  %"815" = zext i8 %"812" to i32
  %"816" = add nsw i32 %"814", %"815"
  %"817" = icmp slt i32 %"816", 3
  %"818" = zext i1 %"817" to i32
  call void @__VERIFIER_assume(i32 %"818") #4
  %"819" = zext i8 %"812" to i32
  %"820" = load i8* @"'__CS_round", align 1
  %"821" = zext i8 %"820" to i32
  %"822" = add nsw i32 %"821", %"819"
  %"823" = trunc i32 %"822" to i8
  store i8 %"823", i8* @"'__CS_round", align 1
  %"824" = call i32 (...)* @nondet_int() #4
  %"825" = icmp ne i32 %"824", 0
  br i1 %"825", label %main_thread_bb156, label %main_thread_bb157

main_thread_bb156:                                ; preds = %main_thread_bb155
  %"826" = load i8* @"'__CS_round", align 1
  %"827" = zext i8 %"826" to i32
  %"828" = icmp eq i32 %"827", 2
  br i1 %"828", label %main_thread___CS_cs.exit3, label %main_thread_bb157

main_thread_bb157:                                ; preds = %main_thread_bb156, %main_thread_bb155
  %"829" = load i8* @"'__CS_ret", align 1
  %"830" = zext i8 %"829" to i32
  br label %main_thread___CS_cs.exit3

main_thread___CS_cs.exit3:                        ; preds = %main_thread_bb156, %main_thread_bb157
  %"831" = phi i32 [ %"830", %main_thread_bb157 ], [ 1, %main_thread_bb156 ]
  %"832" = trunc i32 %"831" to i8
  store i8 %"832", i8* @"'__CS_ret", align 1
  %"833" = load i8* @"'__CS_ret", align 1
  %"834" = zext i8 %"833" to i32
  %"835" = icmp ne i32 %"834", 0
  br i1 %"835", label %main_thread_bb192, label %main_thread_bb158

main_thread_bb158:                                ; preds = %main_thread___CS_cs.exit3
  %"836" = load i8* @"'__CS_thread_index", align 1
  %"837" = zext i8 %"836" to i32
  %"838" = icmp eq i32 %"837", 2
  br i1 %"838", label %main_thread___CS_pthread_create.exit, label %main_thread_bb159

main_thread_bb159:                                ; preds = %main_thread_bb158
  %"839" = load i8* @"'__CS_thread_index", align 1
  %"840" = add i8 %"839", 1
  store i8 %"840", i8* @"'__CS_thread_index", align 1
  %"841" = load i8* @"'__CS_thread_index", align 1
  %"842" = zext i8 %"841" to i64
  %"843" = getelementptr inbounds [3 x i8]* @__CS_thread_allocated, i32 0, i64 %"842"
  store i8 1, i8* %"843", align 1
  %"844" = load i8* @"'__CS_round", align 1
  %"845" = load i8* @"'__CS_thread_index", align 1
  %"846" = zext i8 %"845" to i64
  %"847" = getelementptr inbounds [3 x i8]* @__CS_thread_born_round, i32 0, i64 %"846"
  store i8 %"844", i8* %"847", align 1
  %"848" = load i8* @"'__CS_thread_index", align 1
  %"849" = zext i8 %"848" to i64
  %"850" = getelementptr inbounds [3 x i8* (i8*)*]* @__CS_thread, i32 0, i64 %"849"
  %"851" = bitcast i8* ()* @allocator to i8* (i8*)*
  store i8* (i8*)* %"851", i8* (i8*)** %"850", align 8
  %"852" = load i8* @"'__CS_thread_index", align 1
  %"853" = zext i8 %"852" to i64
  %"854" = load i8* @"'__CS_round", align 1
  %"855" = zext i8 %"854" to i64
  %"856" = getelementptr inbounds [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 %"855"
  %"857" = getelementptr inbounds [3 x i8]* %"856", i32 0, i64 %"853"
  store i8 1, i8* %"857", align 1
  %"858" = load i8* @"'__CS_thread_index", align 1
  br label %main_thread___CS_pthread_create.exit

main_thread___CS_pthread_create.exit:             ; preds = %main_thread_bb158, %main_thread_bb159
  %t1.0 = phi i8 [ %"858", %main_thread_bb159 ], [ 123, %main_thread_bb158 ]
  %"859" = call i8 @__kittel_nondef.1() #4
  %"860" = load i8* @"'__CS_round", align 1
  %"861" = zext i8 %"860" to i32
  %"862" = zext i8 %"859" to i32
  %"863" = add nsw i32 %"861", %"862"
  %"864" = icmp slt i32 %"863", 3
  %"865" = zext i1 %"864" to i32
  call void @__VERIFIER_assume(i32 %"865") #4
  %"866" = zext i8 %"859" to i32
  %"867" = load i8* @"'__CS_round", align 1
  %"868" = zext i8 %"867" to i32
  %"869" = add nsw i32 %"868", %"866"
  %"870" = trunc i32 %"869" to i8
  store i8 %"870", i8* @"'__CS_round", align 1
  %"871" = call i32 (...)* @nondet_int() #4
  %"872" = icmp ne i32 %"871", 0
  br i1 %"872", label %main_thread_bb160, label %main_thread_bb161

main_thread_bb160:                                ; preds = %main_thread___CS_pthread_create.exit
  %"873" = load i8* @"'__CS_round", align 1
  %"874" = zext i8 %"873" to i32
  %"875" = icmp eq i32 %"874", 2
  br i1 %"875", label %main_thread___CS_cs.exit4, label %main_thread_bb161

main_thread_bb161:                                ; preds = %main_thread_bb160, %main_thread___CS_pthread_create.exit
  %"876" = load i8* @"'__CS_ret", align 1
  %"877" = zext i8 %"876" to i32
  br label %main_thread___CS_cs.exit4

main_thread___CS_cs.exit4:                        ; preds = %main_thread_bb160, %main_thread_bb161
  %"878" = phi i32 [ %"877", %main_thread_bb161 ], [ 1, %main_thread_bb160 ]
  %"879" = trunc i32 %"878" to i8
  store i8 %"879", i8* @"'__CS_ret", align 1
  %"880" = load i8* @"'__CS_ret", align 1
  %"881" = zext i8 %"880" to i32
  %"882" = icmp ne i32 %"881", 0
  br i1 %"882", label %main_thread_bb192, label %main_thread_bb162

main_thread_bb162:                                ; preds = %main_thread___CS_cs.exit4
  %"883" = load i8* @"'__CS_thread_index", align 1
  %"884" = zext i8 %"883" to i32
  %"885" = icmp eq i32 %"884", 2
  br i1 %"885", label %main_thread___CS_pthread_create.exit6, label %main_thread_bb163

main_thread_bb163:                                ; preds = %main_thread_bb162
  %"886" = load i8* @"'__CS_thread_index", align 1
  %"887" = add i8 %"886", 1
  store i8 %"887", i8* @"'__CS_thread_index", align 1
  %"888" = load i8* @"'__CS_thread_index", align 1
  %"889" = zext i8 %"888" to i64
  %"890" = getelementptr inbounds [3 x i8]* @__CS_thread_allocated, i32 0, i64 %"889"
  store i8 1, i8* %"890", align 1
  %"891" = load i8* @"'__CS_round", align 1
  %"892" = load i8* @"'__CS_thread_index", align 1
  %"893" = zext i8 %"892" to i64
  %"894" = getelementptr inbounds [3 x i8]* @__CS_thread_born_round, i32 0, i64 %"893"
  store i8 %"891", i8* %"894", align 1
  %"895" = load i8* @"'__CS_thread_index", align 1
  %"896" = zext i8 %"895" to i64
  %"897" = getelementptr inbounds [3 x i8* (i8*)*]* @__CS_thread, i32 0, i64 %"896"
  %"898" = bitcast i8* ()* @de_allocator to i8* (i8*)*
  store i8* (i8*)* %"898", i8* (i8*)** %"897", align 8
  %"899" = load i8* @"'__CS_thread_index", align 1
  %"900" = zext i8 %"899" to i64
  %"901" = load i8* @"'__CS_round", align 1
  %"902" = zext i8 %"901" to i64
  %"903" = getelementptr inbounds [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 %"902"
  %"904" = getelementptr inbounds [3 x i8]* %"903", i32 0, i64 %"900"
  store i8 1, i8* %"904", align 1
  %"905" = load i8* @"'__CS_thread_index", align 1
  br label %main_thread___CS_pthread_create.exit6

main_thread___CS_pthread_create.exit6:            ; preds = %main_thread_bb162, %main_thread_bb163
  %t2.0 = phi i8 [ %"905", %main_thread_bb163 ], [ 123, %main_thread_bb162 ]
  %"906" = call i8 @__kittel_nondef.1() #4
  %"907" = load i8* @"'__CS_round", align 1
  %"908" = zext i8 %"907" to i32
  %"909" = zext i8 %"906" to i32
  %"910" = add nsw i32 %"908", %"909"
  %"911" = icmp slt i32 %"910", 3
  %"912" = zext i1 %"911" to i32
  call void @__VERIFIER_assume(i32 %"912") #4
  %"913" = zext i8 %"906" to i32
  %"914" = load i8* @"'__CS_round", align 1
  %"915" = zext i8 %"914" to i32
  %"916" = add nsw i32 %"915", %"913"
  %"917" = trunc i32 %"916" to i8
  store i8 %"917", i8* @"'__CS_round", align 1
  %"918" = call i32 (...)* @nondet_int() #4
  %"919" = icmp ne i32 %"918", 0
  br i1 %"919", label %main_thread_bb164, label %main_thread_bb165

main_thread_bb164:                                ; preds = %main_thread___CS_pthread_create.exit6
  %"920" = load i8* @"'__CS_round", align 1
  %"921" = zext i8 %"920" to i32
  %"922" = icmp eq i32 %"921", 2
  br i1 %"922", label %main_thread___CS_cs.exit7, label %main_thread_bb165

main_thread_bb165:                                ; preds = %main_thread_bb164, %main_thread___CS_pthread_create.exit6
  %"923" = load i8* @"'__CS_ret", align 1
  %"924" = zext i8 %"923" to i32
  br label %main_thread___CS_cs.exit7

main_thread___CS_cs.exit7:                        ; preds = %main_thread_bb164, %main_thread_bb165
  %"925" = phi i32 [ %"924", %main_thread_bb165 ], [ 1, %main_thread_bb164 ]
  %"926" = trunc i32 %"925" to i8
  store i8 %"926", i8* @"'__CS_ret", align 1
  %"927" = load i8* @"'__CS_ret", align 1
  %"928" = zext i8 %"927" to i32
  %"929" = icmp ne i32 %"928", 0
  br i1 %"929", label %main_thread_bb192, label %main_thread_bb166

main_thread_bb166:                                ; preds = %main_thread___CS_cs.exit7
  %"930" = zext i8 %t1.0 to i32
  %"931" = icmp ne i32 %"930", 123
  %"932" = zext i8 %t1.0 to i32
  %"933" = icmp sgt i32 %"932", 3
  %or.cond.i = and i1 %"931", %"933"
  br i1 %or.cond.i, label %main_thread_bb167, label %main_thread_bb168

main_thread_bb167:                                ; preds = %main_thread_bb166
  store i8 1, i8* @"'__CS_error", align 1
  store i8 2, i8* @"'__CS_ret", align 1
  br label %main_thread___CS_pthread_join.exit

main_thread_bb168:                                ; preds = %main_thread_bb166
  %"934" = zext i8 %t1.0 to i32
  %"935" = icmp eq i32 %"934", 123
  br i1 %"935", label %main_thread_bb170, label %main_thread_bb169

main_thread_bb169:                                ; preds = %main_thread_bb168
  %"936" = zext i8 %t1.0 to i64
  %"937" = load i8* @"'__CS_round", align 1
  %"938" = zext i8 %"937" to i64
  %"939" = getelementptr inbounds [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 %"938"
  %"940" = getelementptr inbounds [3 x i8]* %"939", i32 0, i64 %"936"
  %"941" = load i8* %"940", align 1
  %"942" = zext i8 %"941" to i32
  %"943" = icmp eq i32 %"942", 1
  br i1 %"943", label %main_thread_bb170, label %main_thread_bb171

main_thread_bb170:                                ; preds = %main_thread_bb169, %main_thread_bb168
  store i8 1, i8* @"'__CS_ret", align 1
  br label %main_thread___CS_pthread_join.exit

main_thread_bb171:                                ; preds = %main_thread_bb169
  %"944" = zext i8 %t1.0 to i64
  %"945" = load i8* @"'__CS_round", align 1
  %"946" = zext i8 %"945" to i64
  %"947" = getelementptr inbounds [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 %"946"
  %"948" = getelementptr inbounds [3 x i8]* %"947", i32 0, i64 %"944"
  %"949" = load i8* %"948", align 1
  %"950" = zext i8 %"949" to i32
  %"951" = icmp eq i32 %"950", 0
  br i1 %"951", label %main_thread_bb172, label %main_thread_bb173

main_thread_bb172:                                ; preds = %main_thread_bb171
  store i8 1, i8* @"'__CS_error", align 1
  store i8 2, i8* @"'__CS_ret", align 1
  br label %main_thread___CS_pthread_join.exit

main_thread_bb173:                                ; preds = %main_thread_bb171
  %"952" = zext i8 %t1.0 to i64
  %"953" = load i8* @"'__CS_round", align 1
  %"954" = zext i8 %"953" to i64
  %"955" = getelementptr inbounds [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 %"954"
  %"956" = getelementptr inbounds [3 x i8]* %"955", i32 0, i64 %"952"
  %"957" = load i8* %"956", align 1
  %"958" = zext i8 %"957" to i32
  %"959" = icmp eq i32 %"958", 2
  %"960" = zext i1 %"959" to i32
  call void @__VERIFIER_assume(i32 %"960") #4
  br label %main_thread___CS_pthread_join.exit

main_thread___CS_pthread_join.exit:               ; preds = %main_thread_bb167, %main_thread_bb170, %main_thread_bb172, %main_thread_bb173
  %"961" = call i8 @__kittel_nondef.1() #4
  %"962" = load i8* @"'__CS_round", align 1
  %"963" = zext i8 %"962" to i32
  %"964" = zext i8 %"961" to i32
  %"965" = add nsw i32 %"963", %"964"
  %"966" = icmp slt i32 %"965", 3
  %"967" = zext i1 %"966" to i32
  call void @__VERIFIER_assume(i32 %"967") #4
  %"968" = zext i8 %"961" to i32
  %"969" = load i8* @"'__CS_round", align 1
  %"970" = zext i8 %"969" to i32
  %"971" = add nsw i32 %"970", %"968"
  %"972" = trunc i32 %"971" to i8
  store i8 %"972", i8* @"'__CS_round", align 1
  %"973" = call i32 (...)* @nondet_int() #4
  %"974" = icmp ne i32 %"973", 0
  br i1 %"974", label %main_thread_bb174, label %main_thread_bb175

main_thread_bb174:                                ; preds = %main_thread___CS_pthread_join.exit
  %"975" = load i8* @"'__CS_round", align 1
  %"976" = zext i8 %"975" to i32
  %"977" = icmp eq i32 %"976", 2
  br i1 %"977", label %main_thread___CS_cs.exit8, label %main_thread_bb175

main_thread_bb175:                                ; preds = %main_thread_bb174, %main_thread___CS_pthread_join.exit
  %"978" = load i8* @"'__CS_ret", align 1
  %"979" = zext i8 %"978" to i32
  br label %main_thread___CS_cs.exit8

main_thread___CS_cs.exit8:                        ; preds = %main_thread_bb174, %main_thread_bb175
  %"980" = phi i32 [ %"979", %main_thread_bb175 ], [ 1, %main_thread_bb174 ]
  %"981" = trunc i32 %"980" to i8
  store i8 %"981", i8* @"'__CS_ret", align 1
  %"982" = load i8* @"'__CS_ret", align 1
  %"983" = zext i8 %"982" to i32
  %"984" = icmp ne i32 %"983", 0
  br i1 %"984", label %main_thread_bb192, label %main_thread_bb176

main_thread_bb176:                                ; preds = %main_thread___CS_cs.exit8
  %"985" = zext i8 %t2.0 to i32
  %"986" = icmp ne i32 %"985", 123
  %"987" = zext i8 %t2.0 to i32
  %"988" = icmp sgt i32 %"987", 3
  %or.cond.i9 = and i1 %"986", %"988"
  br i1 %or.cond.i9, label %main_thread_bb177, label %main_thread_bb178

main_thread_bb177:                                ; preds = %main_thread_bb176
  store i8 1, i8* @"'__CS_error", align 1
  store i8 2, i8* @"'__CS_ret", align 1
  br label %main_thread___CS_pthread_join.exit10

main_thread_bb178:                                ; preds = %main_thread_bb176
  %"989" = zext i8 %t2.0 to i32
  %"990" = icmp eq i32 %"989", 123
  br i1 %"990", label %main_thread_bb180, label %main_thread_bb179

main_thread_bb179:                                ; preds = %main_thread_bb178
  %"991" = zext i8 %t2.0 to i64
  %"992" = load i8* @"'__CS_round", align 1
  %"993" = zext i8 %"992" to i64
  %"994" = getelementptr inbounds [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 %"993"
  %"995" = getelementptr inbounds [3 x i8]* %"994", i32 0, i64 %"991"
  %"996" = load i8* %"995", align 1
  %"997" = zext i8 %"996" to i32
  %"998" = icmp eq i32 %"997", 1
  br i1 %"998", label %main_thread_bb180, label %main_thread_bb181

main_thread_bb180:                                ; preds = %main_thread_bb179, %main_thread_bb178
  store i8 1, i8* @"'__CS_ret", align 1
  br label %main_thread___CS_pthread_join.exit10

main_thread_bb181:                                ; preds = %main_thread_bb179
  %"999" = zext i8 %t2.0 to i64
  %"1000" = load i8* @"'__CS_round", align 1
  %"1001" = zext i8 %"1000" to i64
  %"1002" = getelementptr inbounds [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 %"1001"
  %"1003" = getelementptr inbounds [3 x i8]* %"1002", i32 0, i64 %"999"
  %"1004" = load i8* %"1003", align 1
  %"1005" = zext i8 %"1004" to i32
  %"1006" = icmp eq i32 %"1005", 0
  br i1 %"1006", label %main_thread_bb182, label %main_thread_bb183

main_thread_bb182:                                ; preds = %main_thread_bb181
  store i8 1, i8* @"'__CS_error", align 1
  store i8 2, i8* @"'__CS_ret", align 1
  br label %main_thread___CS_pthread_join.exit10

main_thread_bb183:                                ; preds = %main_thread_bb181
  %"1007" = zext i8 %t2.0 to i64
  %"1008" = load i8* @"'__CS_round", align 1
  %"1009" = zext i8 %"1008" to i64
  %"1010" = getelementptr inbounds [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 %"1009"
  %"1011" = getelementptr inbounds [3 x i8]* %"1010", i32 0, i64 %"1007"
  %"1012" = load i8* %"1011", align 1
  %"1013" = zext i8 %"1012" to i32
  %"1014" = icmp eq i32 %"1013", 2
  %"1015" = zext i1 %"1014" to i32
  call void @__VERIFIER_assume(i32 %"1015") #4
  br label %main_thread___CS_pthread_join.exit10

main_thread___CS_pthread_join.exit10:             ; preds = %main_thread_bb177, %main_thread_bb180, %main_thread_bb182, %main_thread_bb183
  %"1016" = call i8 @__kittel_nondef.1() #4
  %"1017" = load i8* @"'__CS_round", align 1
  %"1018" = zext i8 %"1017" to i32
  %"1019" = zext i8 %"1016" to i32
  %"1020" = add nsw i32 %"1018", %"1019"
  %"1021" = icmp slt i32 %"1020", 3
  %"1022" = zext i1 %"1021" to i32
  call void @__VERIFIER_assume(i32 %"1022") #4
  %"1023" = zext i8 %"1016" to i32
  %"1024" = load i8* @"'__CS_round", align 1
  %"1025" = zext i8 %"1024" to i32
  %"1026" = add nsw i32 %"1025", %"1023"
  %"1027" = trunc i32 %"1026" to i8
  store i8 %"1027", i8* @"'__CS_round", align 1
  %"1028" = call i32 (...)* @nondet_int() #4
  %"1029" = icmp ne i32 %"1028", 0
  br i1 %"1029", label %main_thread_bb184, label %main_thread_bb185

main_thread_bb184:                                ; preds = %main_thread___CS_pthread_join.exit10
  %"1030" = load i8* @"'__CS_round", align 1
  %"1031" = zext i8 %"1030" to i32
  %"1032" = icmp eq i32 %"1031", 2
  br i1 %"1032", label %main_thread___CS_cs.exit11, label %main_thread_bb185

main_thread_bb185:                                ; preds = %main_thread_bb184, %main_thread___CS_pthread_join.exit10
  %"1033" = load i8* @"'__CS_ret", align 1
  %"1034" = zext i8 %"1033" to i32
  br label %main_thread___CS_cs.exit11

main_thread___CS_cs.exit11:                       ; preds = %main_thread_bb184, %main_thread_bb185
  %"1035" = phi i32 [ %"1034", %main_thread_bb185 ], [ 1, %main_thread_bb184 ]
  %"1036" = trunc i32 %"1035" to i8
  store i8 %"1036", i8* @"'__CS_ret", align 1
  %"1037" = load i8* @"'__CS_ret", align 1
  %"1038" = zext i8 %"1037" to i32
  %"1039" = icmp ne i32 %"1038", 0
  br i1 %"1039", label %main_thread_bb192, label %main_thread_bb186

main_thread_bb186:                                ; preds = %main_thread___CS_cs.exit11
  %"1040" = load i8* @"'__CS_round", align 1
  %"1041" = zext i8 %"1040" to i64
  %"1042" = getelementptr inbounds [3 x i8]* @m_inode, i32 0, i64 %"1041"
  %"1043" = load i8* %"1042", align 1
  %"1044" = zext i8 %"1043" to i32
  %"1045" = load i8* @"'__CS_thread_index", align 1
  %"1046" = zext i8 %"1045" to i32
  %"1047" = icmp ne i32 %"1044", %"1046"
  br i1 %"1047", label %main_thread_bb187, label %main_thread_bb189

main_thread_bb187:                                ; preds = %main_thread_bb186
  %"1048" = load i8* %"1042", align 1
  %"1049" = zext i8 %"1048" to i32
  %"1050" = icmp ne i32 %"1049", 0
  br i1 %"1050", label %main_thread_bb188, label %main_thread_bb189

main_thread_bb188:                                ; preds = %main_thread_bb187
  store i8 1, i8* @"'__CS_error", align 1
  store i8 2, i8* @"'__CS_ret", align 1
  br label %main_thread___CS_pthread_mutex_destroy.exit

main_thread_bb189:                                ; preds = %main_thread_bb187, %main_thread_bb186
  store i8 0, i8* %"1042", align 1
  br label %main_thread___CS_pthread_mutex_destroy.exit

main_thread___CS_pthread_mutex_destroy.exit:      ; preds = %main_thread_bb188, %main_thread_bb189
  %"1051" = call i8 @__kittel_nondef.1() #4
  %"1052" = load i8* @"'__CS_round", align 1
  %"1053" = zext i8 %"1052" to i32
  %"1054" = zext i8 %"1051" to i32
  %"1055" = add nsw i32 %"1053", %"1054"
  %"1056" = icmp slt i32 %"1055", 3
  %"1057" = zext i1 %"1056" to i32
  call void @__VERIFIER_assume(i32 %"1057") #4
  %"1058" = zext i8 %"1051" to i32
  %"1059" = load i8* @"'__CS_round", align 1
  %"1060" = zext i8 %"1059" to i32
  %"1061" = add nsw i32 %"1060", %"1058"
  %"1062" = trunc i32 %"1061" to i8
  store i8 %"1062", i8* @"'__CS_round", align 1
  %"1063" = call i32 (...)* @nondet_int() #4
  %"1064" = icmp ne i32 %"1063", 0
  br i1 %"1064", label %main_thread_bb190, label %main_thread_bb191

main_thread_bb190:                                ; preds = %main_thread___CS_pthread_mutex_destroy.exit
  %"1065" = load i8* @"'__CS_round", align 1
  %"1066" = zext i8 %"1065" to i32
  %"1067" = icmp eq i32 %"1066", 2
  br i1 %"1067", label %main_thread___CS_cs.exit12, label %main_thread_bb191

main_thread_bb191:                                ; preds = %main_thread_bb190, %main_thread___CS_pthread_mutex_destroy.exit
  %"1068" = load i8* @"'__CS_ret", align 1
  %"1069" = zext i8 %"1068" to i32
  br label %main_thread___CS_cs.exit12

main_thread___CS_cs.exit12:                       ; preds = %main_thread_bb190, %main_thread_bb191
  %"1070" = phi i32 [ %"1069", %main_thread_bb191 ], [ 1, %main_thread_bb190 ]
  %"1071" = trunc i32 %"1070" to i8
  store i8 %"1071", i8* @"'__CS_ret", align 1
  %"1072" = load i8* @"'__CS_ret", align 1
  %"1073" = zext i8 %"1072" to i32
  %"1074" = icmp ne i32 %"1073", 0
  br i1 %"1074", label %main_thread_bb192, label %main_thread_bb193

main_thread_bb192:                                ; preds = %main_thread___CS_cs.exit12, %main_thread___CS_cs.exit11, %main_thread___CS_cs.exit8, %main_thread___CS_cs.exit7, %main_thread___CS_cs.exit4, %main_thread___CS_cs.exit3, %main_thread___CS_cs.exit2, %main_thread___CS_cs.exit1, %main_thread___CS_cs.exit
  ret i8* null

main_thread_bb193:                                ; preds = %main_thread___CS_cs.exit12
  %"1075" = load i8* @"'__CS_round", align 1
  %"1076" = zext i8 %"1075" to i64
  %"1077" = getelementptr inbounds [3 x i8]* @m_busy, i32 0, i64 %"1076"
  %"1078" = load i8* %"1077", align 1
  %"1079" = zext i8 %"1078" to i32
  %"1080" = load i8* @"'__CS_thread_index", align 1
  %"1081" = zext i8 %"1080" to i32
  %"1082" = icmp ne i32 %"1079", %"1081"
  br i1 %"1082", label %main_thread_bb194, label %main_thread_bb196

main_thread_bb194:                                ; preds = %main_thread_bb193
  %"1083" = load i8* %"1077", align 1
  %"1084" = zext i8 %"1083" to i32
  %"1085" = icmp ne i32 %"1084", 0
  br i1 %"1085", label %main_thread_bb195, label %main_thread_bb196

main_thread_bb195:                                ; preds = %main_thread_bb194
  store i8 1, i8* @"'__CS_error", align 1
  store i8 2, i8* @"'__CS_ret", align 1
  br label %main_thread___CS_pthread_mutex_destroy.exit13

main_thread_bb196:                                ; preds = %main_thread_bb194, %main_thread_bb193
  store i8 0, i8* %"1077", align 1
  br label %main_thread___CS_pthread_mutex_destroy.exit13

main_thread___CS_pthread_mutex_destroy.exit13:    ; preds = %main_thread_bb195, %main_thread_bb196
  %"1086" = call i8 @__kittel_nondef.1() #4
  %"1087" = load i8* @"'__CS_round", align 1
  %"1088" = zext i8 %"1087" to i32
  %"1089" = zext i8 %"1086" to i32
  %"1090" = add nsw i32 %"1088", %"1089"
  %"1091" = icmp slt i32 %"1090", 3
  %"1092" = zext i1 %"1091" to i32
  call void @__VERIFIER_assume(i32 %"1092") #4
  %"1093" = zext i8 %"1086" to i32
  %"1094" = load i8* @"'__CS_round", align 1
  %"1095" = zext i8 %"1094" to i32
  %"1096" = add nsw i32 %"1095", %"1093"
  %"1097" = trunc i32 %"1096" to i8
  store i8 %"1097", i8* @"'__CS_round", align 1
  %"1098" = call i32 (...)* @nondet_int() #4
  %"1099" = icmp ne i32 %"1098", 0
  br i1 %"1099", label %main_thread_bb197, label %main_thread_bb198

main_thread_bb197:                                ; preds = %main_thread___CS_pthread_mutex_destroy.exit13
  %"1100" = load i8* @"'__CS_round", align 1
  %"1101" = zext i8 %"1100" to i32
  %"1102" = icmp eq i32 %"1101", 2
  br i1 %"1102", label %main_thread___CS_cs.exit14, label %main_thread_bb198

main_thread_bb198:                                ; preds = %main_thread_bb197, %main_thread___CS_pthread_mutex_destroy.exit13
  %"1103" = load i8* @"'__CS_ret", align 1
  %"1104" = zext i8 %"1103" to i32
  br label %main_thread___CS_cs.exit14

main_thread___CS_cs.exit14:                       ; preds = %main_thread_bb197, %main_thread_bb198
  %"1105" = phi i32 [ %"1104", %main_thread_bb198 ], [ 1, %main_thread_bb197 ]
  %"1106" = trunc i32 %"1105" to i8
  store i8 %"1106", i8* @"'__CS_ret", align 1
  %"1107" = load i8* @"'__CS_ret", align 1
  %"1108" = zext i8 %"1107" to i32
  %"1109" = icmp ne i32 %"1108", 0
  %. = select i1 %"1109", i8* null, i8* %"730"
  ret i8* %.
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb199:
  %__CS_cp___CS_thread_status = alloca [3 x [3 x i8]], align 1
  %__CS_cp___CS_thread_lockedon = alloca [3 x [3 x i8*]], align 16
  %__CS_cp_block = alloca [3 x i32], align 4
  %__CS_cp_busy = alloca [3 x i32], align 4
  %__CS_cp_inode = alloca [3 x i32], align 4
  %__CS_cp_m_inode = alloca [3 x i8], align 1
  %__CS_cp_m_busy = alloca [3 x i8], align 1
  %"1110" = getelementptr inbounds [3 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 1
  %"1111" = getelementptr inbounds [3 x i8]* %"1110", i32 0, i64 0
  %"1112" = load i8* %"1111", align 1
  %"1113" = getelementptr [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 1, i64 0
  store i8 %"1112", i8* %"1113", align 1
  %"1114" = getelementptr inbounds [3 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 2
  %"1115" = getelementptr inbounds [3 x i8]* %"1114", i32 0, i64 0
  %"1116" = load i8* %"1115", align 1
  %"1117" = getelementptr [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 2, i64 0
  store i8 %"1116", i8* %"1117", align 1
  %"1118" = getelementptr inbounds [3 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 1
  %"1119" = getelementptr inbounds [3 x i8]* %"1118", i32 0, i64 1
  %"1120" = load i8* %"1119", align 1
  %"1121" = getelementptr [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 1, i64 1
  store i8 %"1120", i8* %"1121", align 1
  %"1122" = getelementptr inbounds [3 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 2
  %"1123" = getelementptr inbounds [3 x i8]* %"1122", i32 0, i64 1
  %"1124" = load i8* %"1123", align 1
  %"1125" = getelementptr [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 2, i64 1
  store i8 %"1124", i8* %"1125", align 1
  %"1126" = getelementptr inbounds [3 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 1
  %"1127" = getelementptr inbounds [3 x i8]* %"1126", i32 0, i64 2
  %"1128" = load i8* %"1127", align 1
  %"1129" = getelementptr [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 1, i64 2
  store i8 %"1128", i8* %"1129", align 1
  %"1130" = getelementptr inbounds [3 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 2
  %"1131" = getelementptr inbounds [3 x i8]* %"1130", i32 0, i64 2
  %"1132" = load i8* %"1131", align 1
  %"1133" = getelementptr [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 2, i64 2
  store i8 %"1132", i8* %"1133", align 1
  %"1134" = getelementptr inbounds [3 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 1
  %"1135" = getelementptr inbounds [3 x i8*]* %"1134", i32 0, i64 0
  %"1136" = load i8** %"1135", align 8
  %"1137" = getelementptr [3 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 1, i64 0
  store i8* %"1136", i8** %"1137", align 8
  %"1138" = getelementptr inbounds [3 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 2
  %"1139" = getelementptr inbounds [3 x i8*]* %"1138", i32 0, i64 0
  %"1140" = load i8** %"1139", align 8
  %"1141" = getelementptr [3 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 2, i64 0
  store i8* %"1140", i8** %"1141", align 8
  %"1142" = getelementptr inbounds [3 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 1
  %"1143" = getelementptr inbounds [3 x i8*]* %"1142", i32 0, i64 1
  %"1144" = load i8** %"1143", align 8
  %"1145" = getelementptr [3 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 1, i64 1
  store i8* %"1144", i8** %"1145", align 8
  %"1146" = getelementptr inbounds [3 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 2
  %"1147" = getelementptr inbounds [3 x i8*]* %"1146", i32 0, i64 1
  %"1148" = load i8** %"1147", align 8
  %"1149" = getelementptr [3 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 2, i64 1
  store i8* %"1148", i8** %"1149", align 8
  %"1150" = getelementptr inbounds [3 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 1
  %"1151" = getelementptr inbounds [3 x i8*]* %"1150", i32 0, i64 2
  %"1152" = load i8** %"1151", align 8
  %"1153" = getelementptr [3 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 1, i64 2
  store i8* %"1152", i8** %"1153", align 8
  %"1154" = getelementptr inbounds [3 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 2
  %"1155" = getelementptr inbounds [3 x i8*]* %"1154", i32 0, i64 2
  %"1156" = load i8** %"1155", align 8
  %"1157" = getelementptr [3 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 2, i64 2
  store i8* %"1156", i8** %"1157", align 8
  %"1158" = getelementptr inbounds [3 x i32]* %__CS_cp_block, i32 0, i64 1
  %"1159" = load i32* %"1158", align 4
  %"1160" = getelementptr [3 x i32]* @block, i32 0, i64 1
  store i32 %"1159", i32* %"1160", align 4
  %"1161" = getelementptr inbounds [3 x i32]* %__CS_cp_block, i32 0, i64 2
  %"1162" = load i32* %"1161", align 4
  %"1163" = getelementptr [3 x i32]* @block, i32 0, i64 2
  store i32 %"1162", i32* %"1163", align 4
  %"1164" = getelementptr inbounds [3 x i32]* %__CS_cp_busy, i32 0, i64 1
  %"1165" = load i32* %"1164", align 4
  %"1166" = getelementptr [3 x i32]* @busy, i32 0, i64 1
  store i32 %"1165", i32* %"1166", align 4
  %"1167" = getelementptr inbounds [3 x i32]* %__CS_cp_busy, i32 0, i64 2
  %"1168" = load i32* %"1167", align 4
  %"1169" = getelementptr [3 x i32]* @busy, i32 0, i64 2
  store i32 %"1168", i32* %"1169", align 4
  %"1170" = getelementptr inbounds [3 x i32]* %__CS_cp_inode, i32 0, i64 1
  %"1171" = load i32* %"1170", align 4
  %"1172" = getelementptr [3 x i32]* @inode, i32 0, i64 1
  store i32 %"1171", i32* %"1172", align 4
  %"1173" = getelementptr inbounds [3 x i32]* %__CS_cp_inode, i32 0, i64 2
  %"1174" = load i32* %"1173", align 4
  %"1175" = getelementptr [3 x i32]* @inode, i32 0, i64 2
  store i32 %"1174", i32* %"1175", align 4
  %"1176" = getelementptr inbounds [3 x i8]* %__CS_cp_m_inode, i32 0, i64 1
  %"1177" = load i8* %"1176", align 1
  %"1178" = getelementptr [3 x i8]* @m_inode, i32 0, i64 1
  store i8 %"1177", i8* %"1178", align 1
  %"1179" = getelementptr inbounds [3 x i8]* %__CS_cp_m_inode, i32 0, i64 2
  %"1180" = load i8* %"1179", align 1
  %"1181" = getelementptr [3 x i8]* @m_inode, i32 0, i64 2
  store i8 %"1180", i8* %"1181", align 1
  %"1182" = getelementptr inbounds [3 x i8]* %__CS_cp_m_busy, i32 0, i64 1
  %"1183" = load i8* %"1182", align 1
  %"1184" = getelementptr [3 x i8]* @m_busy, i32 0, i64 1
  store i8 %"1183", i8* %"1184", align 1
  %"1185" = getelementptr inbounds [3 x i8]* %__CS_cp_m_busy, i32 0, i64 2
  %"1186" = load i8* %"1185", align 1
  %"1187" = getelementptr [3 x i8]* @m_busy, i32 0, i64 2
  store i8 %"1186", i8* %"1187", align 1
  store i8 0, i8* @"'__CS_round", align 1
  store i8 0, i8* @"'__CS_thread_index", align 1
  %"1188" = load i8* @"'__CS_round", align 1
  %"1189" = getelementptr [3 x i8]* @__CS_thread_born_round, i32 0, i64 0
  store i8 %"1188", i8* %"1189", align 1
  %"1190" = getelementptr [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 0, i64 0
  store i8 1, i8* %"1190", align 1
  %"1191" = getelementptr [3 x i8* (i8*)*]* @__CS_thread, i32 0, i64 0
  store i8* (i8*)* @main_thread, i8* (i8*)** %"1191", align 8
  %"1192" = getelementptr [3 x i8]* @__CS_thread_allocated, i32 0, i64 0
  store i8 1, i8* %"1192", align 1
  %"1193" = getelementptr [3 x i8]* @__CS_thread_allocated, i32 0, i64 0
  %"1194" = load i8* %"1193", align 1
  %"1195" = zext i8 %"1194" to i32
  %"1196" = icmp eq i32 %"1195", 1
  br i1 %"1196", label %main_bb200, label %main_bb202

main_bb200:                                       ; preds = %main_bb199
  %"1197" = getelementptr [3 x i8]* @__CS_thread_born_round, i32 0, i64 0
  %"1198" = load i8* %"1197", align 1
  store i8 %"1198", i8* @"'__CS_round", align 1
  store i8 0, i8* @"'__CS_ret", align 1
  %"1199" = getelementptr [3 x i8* (i8*)*]* @__CS_thread, i32 0, i64 0
  %"1200" = load i8* (i8*)** %"1199", align 8
  %"1201" = call i8* %"1200"(i8* null)
  %"1202" = load i8* @"'__CS_ret", align 1
  %"1203" = zext i8 %"1202" to i32
  %"1204" = icmp ne i32 %"1203", 1
  br i1 %"1204", label %main_bb201, label %main_bb202

main_bb201:                                       ; preds = %main_bb200
  %"1205" = load i8* @"'__CS_round", align 1
  %"1206" = zext i8 %"1205" to i64
  %"1207" = getelementptr inbounds [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 %"1206"
  %"1208" = getelementptr inbounds [3 x i8]* %"1207", i32 0, i64 0
  store i8 2, i8* %"1208", align 1
  br label %main_bb202

main_bb202:                                       ; preds = %main_bb200, %main_bb201, %main_bb199
  %"1209" = getelementptr [3 x i8]* @__CS_thread_allocated, i32 0, i64 1
  %"1210" = load i8* %"1209", align 1
  %"1211" = zext i8 %"1210" to i32
  %"1212" = icmp eq i32 %"1211", 1
  br i1 %"1212", label %main_bb203, label %main_bb205

main_bb203:                                       ; preds = %main_bb202
  %"1213" = getelementptr [3 x i8]* @__CS_thread_born_round, i32 0, i64 1
  %"1214" = load i8* %"1213", align 1
  store i8 %"1214", i8* @"'__CS_round", align 1
  store i8 0, i8* @"'__CS_ret", align 1
  %"1215" = getelementptr [3 x i8* (i8*)*]* @__CS_thread, i32 0, i64 1
  %"1216" = load i8* (i8*)** %"1215", align 8
  %"1217" = call i8* %"1216"(i8* null)
  %"1218" = load i8* @"'__CS_ret", align 1
  %"1219" = zext i8 %"1218" to i32
  %"1220" = icmp ne i32 %"1219", 1
  br i1 %"1220", label %main_bb204, label %main_bb205

main_bb204:                                       ; preds = %main_bb203
  %"1221" = load i8* @"'__CS_round", align 1
  %"1222" = zext i8 %"1221" to i64
  %"1223" = getelementptr inbounds [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 %"1222"
  %"1224" = getelementptr inbounds [3 x i8]* %"1223", i32 0, i64 1
  store i8 2, i8* %"1224", align 1
  br label %main_bb205

main_bb205:                                       ; preds = %main_bb203, %main_bb204, %main_bb202
  %"1225" = getelementptr [3 x i8]* @__CS_thread_allocated, i32 0, i64 2
  %"1226" = load i8* %"1225", align 1
  %"1227" = zext i8 %"1226" to i32
  %"1228" = icmp eq i32 %"1227", 1
  br i1 %"1228", label %main_bb206, label %main_bb208

main_bb206:                                       ; preds = %main_bb205
  %"1229" = getelementptr [3 x i8]* @__CS_thread_born_round, i32 0, i64 2
  %"1230" = load i8* %"1229", align 1
  store i8 %"1230", i8* @"'__CS_round", align 1
  store i8 0, i8* @"'__CS_ret", align 1
  %"1231" = getelementptr [3 x i8* (i8*)*]* @__CS_thread, i32 0, i64 2
  %"1232" = load i8* (i8*)** %"1231", align 8
  %"1233" = call i8* %"1232"(i8* null)
  %"1234" = load i8* @"'__CS_ret", align 1
  %"1235" = zext i8 %"1234" to i32
  %"1236" = icmp ne i32 %"1235", 1
  br i1 %"1236", label %main_bb207, label %main_bb208

main_bb207:                                       ; preds = %main_bb206
  %"1237" = load i8* @"'__CS_round", align 1
  %"1238" = zext i8 %"1237" to i64
  %"1239" = getelementptr inbounds [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 %"1238"
  %"1240" = getelementptr inbounds [3 x i8]* %"1239", i32 0, i64 2
  store i8 2, i8* %"1240", align 1
  br label %main_bb208

main_bb208:                                       ; preds = %main_bb206, %main_bb207, %main_bb205
  %"1241" = getelementptr [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 0, i64 0
  %"1242" = load i8* %"1241", align 1
  %"1243" = zext i8 %"1242" to i32
  %"1244" = getelementptr inbounds [3 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 1
  %"1245" = getelementptr inbounds [3 x i8]* %"1244", i32 0, i64 0
  %"1246" = load i8* %"1245", align 1
  %"1247" = zext i8 %"1246" to i32
  %"1248" = icmp eq i32 %"1243", %"1247"
  %"1249" = zext i1 %"1248" to i32
  call void @__VERIFIER_assume(i32 %"1249")
  %"1250" = getelementptr [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 1, i64 0
  %"1251" = load i8* %"1250", align 1
  %"1252" = zext i8 %"1251" to i32
  %"1253" = getelementptr inbounds [3 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 2
  %"1254" = getelementptr inbounds [3 x i8]* %"1253", i32 0, i64 0
  %"1255" = load i8* %"1254", align 1
  %"1256" = zext i8 %"1255" to i32
  %"1257" = icmp eq i32 %"1252", %"1256"
  %"1258" = zext i1 %"1257" to i32
  call void @__VERIFIER_assume(i32 %"1258")
  %"1259" = getelementptr [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 0, i64 1
  %"1260" = load i8* %"1259", align 1
  %"1261" = zext i8 %"1260" to i32
  %"1262" = getelementptr inbounds [3 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 1
  %"1263" = getelementptr inbounds [3 x i8]* %"1262", i32 0, i64 1
  %"1264" = load i8* %"1263", align 1
  %"1265" = zext i8 %"1264" to i32
  %"1266" = icmp eq i32 %"1261", %"1265"
  %"1267" = zext i1 %"1266" to i32
  call void @__VERIFIER_assume(i32 %"1267")
  %"1268" = getelementptr [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 1, i64 1
  %"1269" = load i8* %"1268", align 1
  %"1270" = zext i8 %"1269" to i32
  %"1271" = getelementptr inbounds [3 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 2
  %"1272" = getelementptr inbounds [3 x i8]* %"1271", i32 0, i64 1
  %"1273" = load i8* %"1272", align 1
  %"1274" = zext i8 %"1273" to i32
  %"1275" = icmp eq i32 %"1270", %"1274"
  %"1276" = zext i1 %"1275" to i32
  call void @__VERIFIER_assume(i32 %"1276")
  %"1277" = getelementptr [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 0, i64 2
  %"1278" = load i8* %"1277", align 1
  %"1279" = zext i8 %"1278" to i32
  %"1280" = getelementptr inbounds [3 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 1
  %"1281" = getelementptr inbounds [3 x i8]* %"1280", i32 0, i64 2
  %"1282" = load i8* %"1281", align 1
  %"1283" = zext i8 %"1282" to i32
  %"1284" = icmp eq i32 %"1279", %"1283"
  %"1285" = zext i1 %"1284" to i32
  call void @__VERIFIER_assume(i32 %"1285")
  %"1286" = getelementptr [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 1, i64 2
  %"1287" = load i8* %"1286", align 1
  %"1288" = zext i8 %"1287" to i32
  %"1289" = getelementptr inbounds [3 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 2
  %"1290" = getelementptr inbounds [3 x i8]* %"1289", i32 0, i64 2
  %"1291" = load i8* %"1290", align 1
  %"1292" = zext i8 %"1291" to i32
  %"1293" = icmp eq i32 %"1288", %"1292"
  %"1294" = zext i1 %"1293" to i32
  call void @__VERIFIER_assume(i32 %"1294")
  %"1295" = getelementptr [3 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 0, i64 0
  %"1296" = load i8** %"1295", align 8
  %"1297" = getelementptr inbounds [3 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 1
  %"1298" = getelementptr inbounds [3 x i8*]* %"1297", i32 0, i64 0
  %"1299" = load i8** %"1298", align 8
  %"1300" = icmp eq i8* %"1296", %"1299"
  %"1301" = zext i1 %"1300" to i32
  call void @__VERIFIER_assume(i32 %"1301")
  %"1302" = getelementptr [3 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 1, i64 0
  %"1303" = load i8** %"1302", align 8
  %"1304" = getelementptr inbounds [3 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 2
  %"1305" = getelementptr inbounds [3 x i8*]* %"1304", i32 0, i64 0
  %"1306" = load i8** %"1305", align 8
  %"1307" = icmp eq i8* %"1303", %"1306"
  %"1308" = zext i1 %"1307" to i32
  call void @__VERIFIER_assume(i32 %"1308")
  %"1309" = getelementptr [3 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 0, i64 1
  %"1310" = load i8** %"1309", align 8
  %"1311" = getelementptr inbounds [3 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 1
  %"1312" = getelementptr inbounds [3 x i8*]* %"1311", i32 0, i64 1
  %"1313" = load i8** %"1312", align 8
  %"1314" = icmp eq i8* %"1310", %"1313"
  %"1315" = zext i1 %"1314" to i32
  call void @__VERIFIER_assume(i32 %"1315")
  %"1316" = getelementptr [3 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 1, i64 1
  %"1317" = load i8** %"1316", align 8
  %"1318" = getelementptr inbounds [3 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 2
  %"1319" = getelementptr inbounds [3 x i8*]* %"1318", i32 0, i64 1
  %"1320" = load i8** %"1319", align 8
  %"1321" = icmp eq i8* %"1317", %"1320"
  %"1322" = zext i1 %"1321" to i32
  call void @__VERIFIER_assume(i32 %"1322")
  %"1323" = getelementptr [3 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 0, i64 2
  %"1324" = load i8** %"1323", align 8
  %"1325" = getelementptr inbounds [3 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 1
  %"1326" = getelementptr inbounds [3 x i8*]* %"1325", i32 0, i64 2
  %"1327" = load i8** %"1326", align 8
  %"1328" = icmp eq i8* %"1324", %"1327"
  %"1329" = zext i1 %"1328" to i32
  call void @__VERIFIER_assume(i32 %"1329")
  %"1330" = getelementptr [3 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 1, i64 2
  %"1331" = load i8** %"1330", align 8
  %"1332" = getelementptr inbounds [3 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 2
  %"1333" = getelementptr inbounds [3 x i8*]* %"1332", i32 0, i64 2
  %"1334" = load i8** %"1333", align 8
  %"1335" = icmp eq i8* %"1331", %"1334"
  %"1336" = zext i1 %"1335" to i32
  call void @__VERIFIER_assume(i32 %"1336")
  %"1337" = getelementptr [3 x i32]* @block, i32 0, i64 0
  %"1338" = load i32* %"1337", align 4
  %"1339" = getelementptr inbounds [3 x i32]* %__CS_cp_block, i32 0, i64 1
  %"1340" = load i32* %"1339", align 4
  %"1341" = icmp eq i32 %"1338", %"1340"
  %"1342" = zext i1 %"1341" to i32
  call void @__VERIFIER_assume(i32 %"1342")
  %"1343" = getelementptr [3 x i32]* @block, i32 0, i64 1
  %"1344" = load i32* %"1343", align 4
  %"1345" = getelementptr inbounds [3 x i32]* %__CS_cp_block, i32 0, i64 2
  %"1346" = load i32* %"1345", align 4
  %"1347" = icmp eq i32 %"1344", %"1346"
  %"1348" = zext i1 %"1347" to i32
  call void @__VERIFIER_assume(i32 %"1348")
  %"1349" = getelementptr [3 x i32]* @busy, i32 0, i64 0
  %"1350" = load i32* %"1349", align 4
  %"1351" = getelementptr inbounds [3 x i32]* %__CS_cp_busy, i32 0, i64 1
  %"1352" = load i32* %"1351", align 4
  %"1353" = icmp eq i32 %"1350", %"1352"
  %"1354" = zext i1 %"1353" to i32
  call void @__VERIFIER_assume(i32 %"1354")
  %"1355" = getelementptr [3 x i32]* @busy, i32 0, i64 1
  %"1356" = load i32* %"1355", align 4
  %"1357" = getelementptr inbounds [3 x i32]* %__CS_cp_busy, i32 0, i64 2
  %"1358" = load i32* %"1357", align 4
  %"1359" = icmp eq i32 %"1356", %"1358"
  %"1360" = zext i1 %"1359" to i32
  call void @__VERIFIER_assume(i32 %"1360")
  %"1361" = getelementptr [3 x i32]* @inode, i32 0, i64 0
  %"1362" = load i32* %"1361", align 4
  %"1363" = getelementptr inbounds [3 x i32]* %__CS_cp_inode, i32 0, i64 1
  %"1364" = load i32* %"1363", align 4
  %"1365" = icmp eq i32 %"1362", %"1364"
  %"1366" = zext i1 %"1365" to i32
  call void @__VERIFIER_assume(i32 %"1366")
  %"1367" = getelementptr [3 x i32]* @inode, i32 0, i64 1
  %"1368" = load i32* %"1367", align 4
  %"1369" = getelementptr inbounds [3 x i32]* %__CS_cp_inode, i32 0, i64 2
  %"1370" = load i32* %"1369", align 4
  %"1371" = icmp eq i32 %"1368", %"1370"
  %"1372" = zext i1 %"1371" to i32
  call void @__VERIFIER_assume(i32 %"1372")
  %"1373" = getelementptr [3 x i8]* @m_inode, i32 0, i64 0
  %"1374" = load i8* %"1373", align 1
  %"1375" = zext i8 %"1374" to i32
  %"1376" = getelementptr inbounds [3 x i8]* %__CS_cp_m_inode, i32 0, i64 1
  %"1377" = load i8* %"1376", align 1
  %"1378" = zext i8 %"1377" to i32
  %"1379" = icmp eq i32 %"1375", %"1378"
  %"1380" = zext i1 %"1379" to i32
  call void @__VERIFIER_assume(i32 %"1380")
  %"1381" = getelementptr [3 x i8]* @m_inode, i32 0, i64 1
  %"1382" = load i8* %"1381", align 1
  %"1383" = zext i8 %"1382" to i32
  %"1384" = getelementptr inbounds [3 x i8]* %__CS_cp_m_inode, i32 0, i64 2
  %"1385" = load i8* %"1384", align 1
  %"1386" = zext i8 %"1385" to i32
  %"1387" = icmp eq i32 %"1383", %"1386"
  %"1388" = zext i1 %"1387" to i32
  call void @__VERIFIER_assume(i32 %"1388")
  %"1389" = getelementptr [3 x i8]* @m_busy, i32 0, i64 0
  %"1390" = load i8* %"1389", align 1
  %"1391" = zext i8 %"1390" to i32
  %"1392" = getelementptr inbounds [3 x i8]* %__CS_cp_m_busy, i32 0, i64 1
  %"1393" = load i8* %"1392", align 1
  %"1394" = zext i8 %"1393" to i32
  %"1395" = icmp eq i32 %"1391", %"1394"
  %"1396" = zext i1 %"1395" to i32
  call void @__VERIFIER_assume(i32 %"1396")
  %"1397" = getelementptr [3 x i8]* @m_busy, i32 0, i64 1
  %"1398" = load i8* %"1397", align 1
  %"1399" = zext i8 %"1398" to i32
  %"1400" = getelementptr inbounds [3 x i8]* %__CS_cp_m_busy, i32 0, i64 2
  %"1401" = load i8* %"1400", align 1
  %"1402" = zext i8 %"1401" to i32
  %"1403" = icmp eq i32 %"1399", %"1402"
  %"1404" = zext i1 %"1403" to i32
  call void @__VERIFIER_assume(i32 %"1404")
  %"1405" = load i8* @"'__CS_error", align 1
  %"1406" = zext i8 %"1405" to i32
  %"1407" = icmp ne i32 %"1406", 1
  br i1 %"1407", label %main___VERIFIER_assert.exit, label %main_bb209

main___VERIFIER_assert.exit:                      ; preds = %main_bb208
  ret i32 0

main_bb209:                                       ; preds = %main_bb208
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

