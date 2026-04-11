; ModuleID = 'Benchmarks/TermCOMP/C/SV-COMP_Mixed_Categories/cs_peterson_true-unreach-call/cs_peterson_true-unreach-call.bc'
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
@flag1 = global [3 x i32] zeroinitializer, align 4
@flag2 = global [3 x i32] zeroinitializer, align 4
@turn = common global [3 x i32] zeroinitializer, align 4
@x = common global [3 x i32] zeroinitializer, align 4
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
define i8* @thr1() #0 {
thr1_bb59:
  %"147" = call i8* @__kittel_nondef.2()
  %"148" = call i8 @__kittel_nondef.1() #4
  %"149" = load i8* @"'__CS_round", align 1
  %"150" = zext i8 %"149" to i32
  %"151" = zext i8 %"148" to i32
  %"152" = add nsw i32 %"150", %"151"
  %"153" = icmp slt i32 %"152", 3
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
  br i1 %"161", label %thr1_bb60, label %thr1_bb61

thr1_bb60:                                        ; preds = %thr1_bb59
  %"162" = load i8* @"'__CS_round", align 1
  %"163" = zext i8 %"162" to i32
  %"164" = icmp eq i32 %"163", 2
  br i1 %"164", label %thr1___CS_cs.exit, label %thr1_bb61

thr1_bb61:                                        ; preds = %thr1_bb60, %thr1_bb59
  %"165" = load i8* @"'__CS_ret", align 1
  %"166" = zext i8 %"165" to i32
  br label %thr1___CS_cs.exit

thr1___CS_cs.exit:                                ; preds = %thr1_bb60, %thr1_bb61
  %"167" = phi i32 [ %"166", %thr1_bb61 ], [ 1, %thr1_bb60 ]
  %"168" = trunc i32 %"167" to i8
  store i8 %"168", i8* @"'__CS_ret", align 1
  %"169" = load i8* @"'__CS_ret", align 1
  %"170" = zext i8 %"169" to i32
  %"171" = icmp ne i32 %"170", 0
  br i1 %"171", label %thr1_bb97, label %thr1_bb62

thr1_bb62:                                        ; preds = %thr1___CS_cs.exit
  %"172" = load i8* @"'__CS_round", align 1
  %"173" = zext i8 %"172" to i64
  %"174" = getelementptr inbounds [3 x i32]* @flag1, i32 0, i64 %"173"
  store i32 1, i32* %"174", align 4
  %"175" = call i8 @__kittel_nondef.1() #4
  %"176" = load i8* @"'__CS_round", align 1
  %"177" = zext i8 %"176" to i32
  %"178" = zext i8 %"175" to i32
  %"179" = add nsw i32 %"177", %"178"
  %"180" = icmp slt i32 %"179", 3
  %"181" = zext i1 %"180" to i32
  call void @__VERIFIER_assume(i32 %"181") #4
  %"182" = zext i8 %"175" to i32
  %"183" = load i8* @"'__CS_round", align 1
  %"184" = zext i8 %"183" to i32
  %"185" = add nsw i32 %"184", %"182"
  %"186" = trunc i32 %"185" to i8
  store i8 %"186", i8* @"'__CS_round", align 1
  %"187" = call i32 (...)* @nondet_int() #4
  %"188" = icmp ne i32 %"187", 0
  br i1 %"188", label %thr1_bb63, label %thr1_bb64

thr1_bb63:                                        ; preds = %thr1_bb62
  %"189" = load i8* @"'__CS_round", align 1
  %"190" = zext i8 %"189" to i32
  %"191" = icmp eq i32 %"190", 2
  br i1 %"191", label %thr1___CS_cs.exit1, label %thr1_bb64

thr1_bb64:                                        ; preds = %thr1_bb63, %thr1_bb62
  %"192" = load i8* @"'__CS_ret", align 1
  %"193" = zext i8 %"192" to i32
  br label %thr1___CS_cs.exit1

thr1___CS_cs.exit1:                               ; preds = %thr1_bb63, %thr1_bb64
  %"194" = phi i32 [ %"193", %thr1_bb64 ], [ 1, %thr1_bb63 ]
  %"195" = trunc i32 %"194" to i8
  store i8 %"195", i8* @"'__CS_ret", align 1
  %"196" = load i8* @"'__CS_ret", align 1
  %"197" = zext i8 %"196" to i32
  %"198" = icmp ne i32 %"197", 0
  br i1 %"198", label %thr1_bb97, label %thr1_bb65

thr1_bb65:                                        ; preds = %thr1___CS_cs.exit1
  %"199" = load i8* @"'__CS_round", align 1
  %"200" = zext i8 %"199" to i64
  %"201" = getelementptr inbounds [3 x i32]* @turn, i32 0, i64 %"200"
  store i32 1, i32* %"201", align 4
  %"202" = call i8 @__kittel_nondef.1() #4
  %"203" = load i8* @"'__CS_round", align 1
  %"204" = zext i8 %"203" to i32
  %"205" = zext i8 %"202" to i32
  %"206" = add nsw i32 %"204", %"205"
  %"207" = icmp slt i32 %"206", 3
  %"208" = zext i1 %"207" to i32
  call void @__VERIFIER_assume(i32 %"208") #4
  %"209" = zext i8 %"202" to i32
  %"210" = load i8* @"'__CS_round", align 1
  %"211" = zext i8 %"210" to i32
  %"212" = add nsw i32 %"211", %"209"
  %"213" = trunc i32 %"212" to i8
  store i8 %"213", i8* @"'__CS_round", align 1
  %"214" = call i32 (...)* @nondet_int() #4
  %"215" = icmp ne i32 %"214", 0
  br i1 %"215", label %thr1_bb66, label %thr1_bb67

thr1_bb66:                                        ; preds = %thr1_bb65
  %"216" = load i8* @"'__CS_round", align 1
  %"217" = zext i8 %"216" to i32
  %"218" = icmp eq i32 %"217", 2
  br i1 %"218", label %thr1___CS_cs.exit2, label %thr1_bb67

thr1_bb67:                                        ; preds = %thr1_bb66, %thr1_bb65
  %"219" = load i8* @"'__CS_ret", align 1
  %"220" = zext i8 %"219" to i32
  br label %thr1___CS_cs.exit2

thr1___CS_cs.exit2:                               ; preds = %thr1_bb66, %thr1_bb67
  %"221" = phi i32 [ %"220", %thr1_bb67 ], [ 1, %thr1_bb66 ]
  %"222" = trunc i32 %"221" to i8
  store i8 %"222", i8* @"'__CS_ret", align 1
  %"223" = load i8* @"'__CS_ret", align 1
  %"224" = zext i8 %"223" to i32
  %"225" = icmp ne i32 %"224", 0
  br i1 %"225", label %thr1_bb97, label %thr1_bb68

thr1_bb68:                                        ; preds = %thr1___CS_cs.exit3, %thr1___CS_cs.exit2
  %"226" = load i8* @"'__CS_round", align 1
  %"227" = zext i8 %"226" to i64
  %"228" = getelementptr inbounds [3 x i32]* @flag2, i32 0, i64 %"227"
  %"229" = load i32* %"228", align 4
  %"230" = icmp eq i32 %"229", 1
  br i1 %"230", label %thr1_bb69, label %thr1_bb70

thr1_bb69:                                        ; preds = %thr1_bb68
  %"231" = load i8* @"'__CS_round", align 1
  %"232" = zext i8 %"231" to i64
  %"233" = getelementptr inbounds [3 x i32]* @turn, i32 0, i64 %"232"
  %"234" = load i32* %"233", align 4
  %"235" = icmp eq i32 %"234", 1
  br label %thr1_bb70

thr1_bb70:                                        ; preds = %thr1_bb69, %thr1_bb68
  %"236" = phi i1 [ false, %thr1_bb68 ], [ %"235", %thr1_bb69 ]
  %"237" = call i8 @__kittel_nondef.1() #4
  %"238" = load i8* @"'__CS_round", align 1
  %"239" = zext i8 %"238" to i32
  %"240" = zext i8 %"237" to i32
  %"241" = add nsw i32 %"239", %"240"
  %"242" = icmp slt i32 %"241", 3
  %"243" = zext i1 %"242" to i32
  call void @__VERIFIER_assume(i32 %"243") #4
  %"244" = zext i8 %"237" to i32
  %"245" = load i8* @"'__CS_round", align 1
  %"246" = zext i8 %"245" to i32
  %"247" = add nsw i32 %"246", %"244"
  %"248" = trunc i32 %"247" to i8
  store i8 %"248", i8* @"'__CS_round", align 1
  %"249" = call i32 (...)* @nondet_int() #4
  %"250" = icmp ne i32 %"249", 0
  br i1 %"236", label %thr1_bb71, label %thr1_bb74

thr1_bb71:                                        ; preds = %thr1_bb70
  br i1 %"250", label %thr1_bb72, label %thr1_bb73

thr1_bb72:                                        ; preds = %thr1_bb71
  %"251" = load i8* @"'__CS_round", align 1
  %"252" = zext i8 %"251" to i32
  %"253" = icmp eq i32 %"252", 2
  br i1 %"253", label %thr1___CS_cs.exit3, label %thr1_bb73

thr1_bb73:                                        ; preds = %thr1_bb72, %thr1_bb71
  %"254" = load i8* @"'__CS_ret", align 1
  %"255" = zext i8 %"254" to i32
  br label %thr1___CS_cs.exit3

thr1___CS_cs.exit3:                               ; preds = %thr1_bb72, %thr1_bb73
  %"256" = phi i32 [ %"255", %thr1_bb73 ], [ 1, %thr1_bb72 ]
  %"257" = trunc i32 %"256" to i8
  store i8 %"257", i8* @"'__CS_ret", align 1
  %"258" = load i8* @"'__CS_ret", align 1
  %"259" = zext i8 %"258" to i32
  %"260" = icmp ne i32 %"259", 0
  br i1 %"260", label %thr1_bb97, label %thr1_bb68

thr1_bb74:                                        ; preds = %thr1_bb70
  br i1 %"250", label %thr1_bb75, label %thr1_bb76

thr1_bb75:                                        ; preds = %thr1_bb74
  %"261" = load i8* @"'__CS_round", align 1
  %"262" = zext i8 %"261" to i32
  %"263" = icmp eq i32 %"262", 2
  br i1 %"263", label %thr1___CS_cs.exit4, label %thr1_bb76

thr1_bb76:                                        ; preds = %thr1_bb75, %thr1_bb74
  %"264" = load i8* @"'__CS_ret", align 1
  %"265" = zext i8 %"264" to i32
  br label %thr1___CS_cs.exit4

thr1___CS_cs.exit4:                               ; preds = %thr1_bb75, %thr1_bb76
  %"266" = phi i32 [ %"265", %thr1_bb76 ], [ 1, %thr1_bb75 ]
  %"267" = trunc i32 %"266" to i8
  store i8 %"267", i8* @"'__CS_ret", align 1
  %"268" = load i8* @"'__CS_ret", align 1
  %"269" = zext i8 %"268" to i32
  %"270" = icmp ne i32 %"269", 0
  br i1 %"270", label %thr1_bb97, label %thr1_bb77

thr1_bb77:                                        ; preds = %thr1___CS_cs.exit4
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
  br i1 %"284", label %thr1_bb78, label %thr1_bb79

thr1_bb78:                                        ; preds = %thr1_bb77
  %"285" = load i8* @"'__CS_round", align 1
  %"286" = zext i8 %"285" to i32
  %"287" = icmp eq i32 %"286", 2
  br i1 %"287", label %thr1___CS_cs.exit5, label %thr1_bb79

thr1_bb79:                                        ; preds = %thr1_bb78, %thr1_bb77
  %"288" = load i8* @"'__CS_ret", align 1
  %"289" = zext i8 %"288" to i32
  br label %thr1___CS_cs.exit5

thr1___CS_cs.exit5:                               ; preds = %thr1_bb78, %thr1_bb79
  %"290" = phi i32 [ %"289", %thr1_bb79 ], [ 1, %thr1_bb78 ]
  %"291" = trunc i32 %"290" to i8
  store i8 %"291", i8* @"'__CS_ret", align 1
  %"292" = load i8* @"'__CS_ret", align 1
  %"293" = zext i8 %"292" to i32
  %"294" = icmp ne i32 %"293", 0
  br i1 %"294", label %thr1_bb97, label %thr1_bb80

thr1_bb80:                                        ; preds = %thr1___CS_cs.exit5
  %"295" = load i8* @"'__CS_round", align 1
  %"296" = zext i8 %"295" to i64
  %"297" = getelementptr inbounds [3 x i32]* @x, i32 0, i64 %"296"
  store i32 0, i32* %"297", align 4
  %"298" = call i8 @__kittel_nondef.1() #4
  %"299" = load i8* @"'__CS_round", align 1
  %"300" = zext i8 %"299" to i32
  %"301" = zext i8 %"298" to i32
  %"302" = add nsw i32 %"300", %"301"
  %"303" = icmp slt i32 %"302", 3
  %"304" = zext i1 %"303" to i32
  call void @__VERIFIER_assume(i32 %"304") #4
  %"305" = zext i8 %"298" to i32
  %"306" = load i8* @"'__CS_round", align 1
  %"307" = zext i8 %"306" to i32
  %"308" = add nsw i32 %"307", %"305"
  %"309" = trunc i32 %"308" to i8
  store i8 %"309", i8* @"'__CS_round", align 1
  %"310" = call i32 (...)* @nondet_int() #4
  %"311" = icmp ne i32 %"310", 0
  br i1 %"311", label %thr1_bb81, label %thr1_bb82

thr1_bb81:                                        ; preds = %thr1_bb80
  %"312" = load i8* @"'__CS_round", align 1
  %"313" = zext i8 %"312" to i32
  %"314" = icmp eq i32 %"313", 2
  br i1 %"314", label %thr1___CS_cs.exit6, label %thr1_bb82

thr1_bb82:                                        ; preds = %thr1_bb81, %thr1_bb80
  %"315" = load i8* @"'__CS_ret", align 1
  %"316" = zext i8 %"315" to i32
  br label %thr1___CS_cs.exit6

thr1___CS_cs.exit6:                               ; preds = %thr1_bb81, %thr1_bb82
  %"317" = phi i32 [ %"316", %thr1_bb82 ], [ 1, %thr1_bb81 ]
  %"318" = trunc i32 %"317" to i8
  store i8 %"318", i8* @"'__CS_ret", align 1
  %"319" = load i8* @"'__CS_ret", align 1
  %"320" = zext i8 %"319" to i32
  %"321" = icmp ne i32 %"320", 0
  br i1 %"321", label %thr1_bb97, label %thr1_bb83

thr1_bb83:                                        ; preds = %thr1___CS_cs.exit6
  %"322" = load i8* @"'__CS_round", align 1
  %"323" = zext i8 %"322" to i64
  %"324" = getelementptr inbounds [3 x i32]* @x, i32 0, i64 %"323"
  %"325" = load i32* %"324", align 4
  %"326" = icmp sle i32 %"325", 0
  %"327" = call i8 @__kittel_nondef.1() #4
  %"328" = load i8* @"'__CS_round", align 1
  %"329" = zext i8 %"328" to i32
  %"330" = zext i8 %"327" to i32
  %"331" = add nsw i32 %"329", %"330"
  %"332" = icmp slt i32 %"331", 3
  %"333" = zext i1 %"332" to i32
  call void @__VERIFIER_assume(i32 %"333") #4
  %"334" = zext i8 %"327" to i32
  %"335" = load i8* @"'__CS_round", align 1
  %"336" = zext i8 %"335" to i32
  %"337" = add nsw i32 %"336", %"334"
  %"338" = trunc i32 %"337" to i8
  store i8 %"338", i8* @"'__CS_round", align 1
  %"339" = call i32 (...)* @nondet_int() #4
  %"340" = icmp ne i32 %"339", 0
  br i1 %"326", label %thr1_bb84, label %thr1_bb93

thr1_bb84:                                        ; preds = %thr1_bb83
  br i1 %"340", label %thr1_bb85, label %thr1_bb86

thr1_bb85:                                        ; preds = %thr1_bb84
  %"341" = load i8* @"'__CS_round", align 1
  %"342" = zext i8 %"341" to i32
  %"343" = icmp eq i32 %"342", 2
  br i1 %"343", label %thr1___CS_cs.exit8, label %thr1_bb86

thr1_bb86:                                        ; preds = %thr1_bb85, %thr1_bb84
  %"344" = load i8* @"'__CS_ret", align 1
  %"345" = zext i8 %"344" to i32
  br label %thr1___CS_cs.exit8

thr1___CS_cs.exit8:                               ; preds = %thr1_bb85, %thr1_bb86
  %"346" = phi i32 [ %"345", %thr1_bb86 ], [ 1, %thr1_bb85 ]
  %"347" = trunc i32 %"346" to i8
  store i8 %"347", i8* @"'__CS_ret", align 1
  %"348" = load i8* @"'__CS_ret", align 1
  %"349" = zext i8 %"348" to i32
  %"350" = icmp ne i32 %"349", 0
  br i1 %"350", label %thr1_bb97, label %thr1_bb87

thr1_bb87:                                        ; preds = %thr1___CS_cs.exit8
  %"351" = call i8 @__kittel_nondef.1() #4
  %"352" = load i8* @"'__CS_round", align 1
  %"353" = zext i8 %"352" to i32
  %"354" = zext i8 %"351" to i32
  %"355" = add nsw i32 %"353", %"354"
  %"356" = icmp slt i32 %"355", 3
  %"357" = zext i1 %"356" to i32
  call void @__VERIFIER_assume(i32 %"357") #4
  %"358" = zext i8 %"351" to i32
  %"359" = load i8* @"'__CS_round", align 1
  %"360" = zext i8 %"359" to i32
  %"361" = add nsw i32 %"360", %"358"
  %"362" = trunc i32 %"361" to i8
  store i8 %"362", i8* @"'__CS_round", align 1
  %"363" = call i32 (...)* @nondet_int() #4
  %"364" = icmp ne i32 %"363", 0
  br i1 %"364", label %thr1_bb88, label %thr1_bb89

thr1_bb88:                                        ; preds = %thr1_bb87
  %"365" = load i8* @"'__CS_round", align 1
  %"366" = zext i8 %"365" to i32
  %"367" = icmp eq i32 %"366", 2
  br i1 %"367", label %thr1___CS_cs.exit9, label %thr1_bb89

thr1_bb89:                                        ; preds = %thr1_bb88, %thr1_bb87
  %"368" = load i8* @"'__CS_ret", align 1
  %"369" = zext i8 %"368" to i32
  br label %thr1___CS_cs.exit9

thr1___CS_cs.exit9:                               ; preds = %thr1_bb88, %thr1_bb89
  %"370" = phi i32 [ %"369", %thr1_bb89 ], [ 1, %thr1_bb88 ]
  %"371" = trunc i32 %"370" to i8
  store i8 %"371", i8* @"'__CS_ret", align 1
  %"372" = load i8* @"'__CS_ret", align 1
  %"373" = zext i8 %"372" to i32
  %"374" = icmp ne i32 %"373", 0
  br i1 %"374", label %thr1_bb97, label %thr1_bb90

thr1_bb90:                                        ; preds = %thr1___CS_cs.exit9
  %"375" = load i8* @"'__CS_round", align 1
  %"376" = zext i8 %"375" to i64
  %"377" = getelementptr inbounds [3 x i32]* @flag1, i32 0, i64 %"376"
  store i32 0, i32* %"377", align 4
  %"378" = call i8 @__kittel_nondef.1() #4
  %"379" = load i8* @"'__CS_round", align 1
  %"380" = zext i8 %"379" to i32
  %"381" = zext i8 %"378" to i32
  %"382" = add nsw i32 %"380", %"381"
  %"383" = icmp slt i32 %"382", 3
  %"384" = zext i1 %"383" to i32
  call void @__VERIFIER_assume(i32 %"384") #4
  %"385" = zext i8 %"378" to i32
  %"386" = load i8* @"'__CS_round", align 1
  %"387" = zext i8 %"386" to i32
  %"388" = add nsw i32 %"387", %"385"
  %"389" = trunc i32 %"388" to i8
  store i8 %"389", i8* @"'__CS_round", align 1
  %"390" = call i32 (...)* @nondet_int() #4
  %"391" = icmp ne i32 %"390", 0
  br i1 %"391", label %thr1_bb91, label %thr1_bb92

thr1_bb91:                                        ; preds = %thr1_bb90
  %"392" = load i8* @"'__CS_round", align 1
  %"393" = zext i8 %"392" to i32
  %"394" = icmp eq i32 %"393", 2
  br i1 %"394", label %thr1___CS_cs.exit10, label %thr1_bb92

thr1_bb92:                                        ; preds = %thr1_bb91, %thr1_bb90
  %"395" = load i8* @"'__CS_ret", align 1
  %"396" = zext i8 %"395" to i32
  br label %thr1___CS_cs.exit10

thr1___CS_cs.exit10:                              ; preds = %thr1_bb91, %thr1_bb92
  %"397" = phi i32 [ %"396", %thr1_bb92 ], [ 1, %thr1_bb91 ]
  %"398" = trunc i32 %"397" to i8
  store i8 %"398", i8* @"'__CS_ret", align 1
  %"399" = load i8* @"'__CS_ret", align 1
  %"400" = zext i8 %"399" to i32
  %"401" = icmp ne i32 %"400", 0
  %. = select i1 %"401", i8* null, i8* %"147"
  ret i8* %.

thr1_bb93:                                        ; preds = %thr1_bb83
  br i1 %"340", label %thr1_bb94, label %thr1_bb95

thr1_bb94:                                        ; preds = %thr1_bb93
  %"402" = load i8* @"'__CS_round", align 1
  %"403" = zext i8 %"402" to i32
  %"404" = icmp eq i32 %"403", 2
  br i1 %"404", label %thr1___CS_cs.exit7, label %thr1_bb95

thr1_bb95:                                        ; preds = %thr1_bb94, %thr1_bb93
  %"405" = load i8* @"'__CS_ret", align 1
  %"406" = zext i8 %"405" to i32
  br label %thr1___CS_cs.exit7

thr1___CS_cs.exit7:                               ; preds = %thr1_bb94, %thr1_bb95
  %"407" = phi i32 [ %"406", %thr1_bb95 ], [ 1, %thr1_bb94 ]
  %"408" = trunc i32 %"407" to i8
  store i8 %"408", i8* @"'__CS_ret", align 1
  %"409" = load i8* @"'__CS_ret", align 1
  %"410" = zext i8 %"409" to i32
  %"411" = icmp ne i32 %"410", 0
  br i1 %"411", label %thr1_bb97, label %thr1_bb96

thr1_bb96:                                        ; preds = %thr1___CS_cs.exit7
  store i8 1, i8* @"'__CS_error", align 1
  store i8 2, i8* @"'__CS_ret", align 1
  br label %thr1_bb97

thr1_bb97:                                        ; preds = %thr1___CS_cs.exit9, %thr1___CS_cs.exit8, %thr1___CS_cs.exit7, %thr1___CS_cs.exit6, %thr1___CS_cs.exit5, %thr1___CS_cs.exit4, %thr1___CS_cs.exit3, %thr1___CS_cs.exit2, %thr1___CS_cs.exit1, %thr1___CS_cs.exit, %thr1_bb96
  ret i8* null
}

; Function Attrs: nounwind uwtable
define i8* @thr2() #0 {
thr2_bb98:
  %"412" = call i8* @__kittel_nondef.2()
  %"413" = call i8 @__kittel_nondef.1() #4
  %"414" = load i8* @"'__CS_round", align 1
  %"415" = zext i8 %"414" to i32
  %"416" = zext i8 %"413" to i32
  %"417" = add nsw i32 %"415", %"416"
  %"418" = icmp slt i32 %"417", 3
  %"419" = zext i1 %"418" to i32
  call void @__VERIFIER_assume(i32 %"419") #4
  %"420" = zext i8 %"413" to i32
  %"421" = load i8* @"'__CS_round", align 1
  %"422" = zext i8 %"421" to i32
  %"423" = add nsw i32 %"422", %"420"
  %"424" = trunc i32 %"423" to i8
  store i8 %"424", i8* @"'__CS_round", align 1
  %"425" = call i32 (...)* @nondet_int() #4
  %"426" = icmp ne i32 %"425", 0
  br i1 %"426", label %thr2_bb99, label %thr2_bb100

thr2_bb99:                                        ; preds = %thr2_bb98
  %"427" = load i8* @"'__CS_round", align 1
  %"428" = zext i8 %"427" to i32
  %"429" = icmp eq i32 %"428", 2
  br i1 %"429", label %thr2___CS_cs.exit, label %thr2_bb100

thr2_bb100:                                       ; preds = %thr2_bb99, %thr2_bb98
  %"430" = load i8* @"'__CS_ret", align 1
  %"431" = zext i8 %"430" to i32
  br label %thr2___CS_cs.exit

thr2___CS_cs.exit:                                ; preds = %thr2_bb99, %thr2_bb100
  %"432" = phi i32 [ %"431", %thr2_bb100 ], [ 1, %thr2_bb99 ]
  %"433" = trunc i32 %"432" to i8
  store i8 %"433", i8* @"'__CS_ret", align 1
  %"434" = load i8* @"'__CS_ret", align 1
  %"435" = zext i8 %"434" to i32
  %"436" = icmp ne i32 %"435", 0
  br i1 %"436", label %thr2_bb136, label %thr2_bb101

thr2_bb101:                                       ; preds = %thr2___CS_cs.exit
  %"437" = load i8* @"'__CS_round", align 1
  %"438" = zext i8 %"437" to i64
  %"439" = getelementptr inbounds [3 x i32]* @flag2, i32 0, i64 %"438"
  store i32 1, i32* %"439", align 4
  %"440" = call i8 @__kittel_nondef.1() #4
  %"441" = load i8* @"'__CS_round", align 1
  %"442" = zext i8 %"441" to i32
  %"443" = zext i8 %"440" to i32
  %"444" = add nsw i32 %"442", %"443"
  %"445" = icmp slt i32 %"444", 3
  %"446" = zext i1 %"445" to i32
  call void @__VERIFIER_assume(i32 %"446") #4
  %"447" = zext i8 %"440" to i32
  %"448" = load i8* @"'__CS_round", align 1
  %"449" = zext i8 %"448" to i32
  %"450" = add nsw i32 %"449", %"447"
  %"451" = trunc i32 %"450" to i8
  store i8 %"451", i8* @"'__CS_round", align 1
  %"452" = call i32 (...)* @nondet_int() #4
  %"453" = icmp ne i32 %"452", 0
  br i1 %"453", label %thr2_bb102, label %thr2_bb103

thr2_bb102:                                       ; preds = %thr2_bb101
  %"454" = load i8* @"'__CS_round", align 1
  %"455" = zext i8 %"454" to i32
  %"456" = icmp eq i32 %"455", 2
  br i1 %"456", label %thr2___CS_cs.exit1, label %thr2_bb103

thr2_bb103:                                       ; preds = %thr2_bb102, %thr2_bb101
  %"457" = load i8* @"'__CS_ret", align 1
  %"458" = zext i8 %"457" to i32
  br label %thr2___CS_cs.exit1

thr2___CS_cs.exit1:                               ; preds = %thr2_bb102, %thr2_bb103
  %"459" = phi i32 [ %"458", %thr2_bb103 ], [ 1, %thr2_bb102 ]
  %"460" = trunc i32 %"459" to i8
  store i8 %"460", i8* @"'__CS_ret", align 1
  %"461" = load i8* @"'__CS_ret", align 1
  %"462" = zext i8 %"461" to i32
  %"463" = icmp ne i32 %"462", 0
  br i1 %"463", label %thr2_bb136, label %thr2_bb104

thr2_bb104:                                       ; preds = %thr2___CS_cs.exit1
  %"464" = load i8* @"'__CS_round", align 1
  %"465" = zext i8 %"464" to i64
  %"466" = getelementptr inbounds [3 x i32]* @turn, i32 0, i64 %"465"
  store i32 0, i32* %"466", align 4
  %"467" = call i8 @__kittel_nondef.1() #4
  %"468" = load i8* @"'__CS_round", align 1
  %"469" = zext i8 %"468" to i32
  %"470" = zext i8 %"467" to i32
  %"471" = add nsw i32 %"469", %"470"
  %"472" = icmp slt i32 %"471", 3
  %"473" = zext i1 %"472" to i32
  call void @__VERIFIER_assume(i32 %"473") #4
  %"474" = zext i8 %"467" to i32
  %"475" = load i8* @"'__CS_round", align 1
  %"476" = zext i8 %"475" to i32
  %"477" = add nsw i32 %"476", %"474"
  %"478" = trunc i32 %"477" to i8
  store i8 %"478", i8* @"'__CS_round", align 1
  %"479" = call i32 (...)* @nondet_int() #4
  %"480" = icmp ne i32 %"479", 0
  br i1 %"480", label %thr2_bb105, label %thr2_bb106

thr2_bb105:                                       ; preds = %thr2_bb104
  %"481" = load i8* @"'__CS_round", align 1
  %"482" = zext i8 %"481" to i32
  %"483" = icmp eq i32 %"482", 2
  br i1 %"483", label %thr2___CS_cs.exit2, label %thr2_bb106

thr2_bb106:                                       ; preds = %thr2_bb105, %thr2_bb104
  %"484" = load i8* @"'__CS_ret", align 1
  %"485" = zext i8 %"484" to i32
  br label %thr2___CS_cs.exit2

thr2___CS_cs.exit2:                               ; preds = %thr2_bb105, %thr2_bb106
  %"486" = phi i32 [ %"485", %thr2_bb106 ], [ 1, %thr2_bb105 ]
  %"487" = trunc i32 %"486" to i8
  store i8 %"487", i8* @"'__CS_ret", align 1
  %"488" = load i8* @"'__CS_ret", align 1
  %"489" = zext i8 %"488" to i32
  %"490" = icmp ne i32 %"489", 0
  br i1 %"490", label %thr2_bb136, label %thr2_bb107

thr2_bb107:                                       ; preds = %thr2___CS_cs.exit3, %thr2___CS_cs.exit2
  %"491" = load i8* @"'__CS_round", align 1
  %"492" = zext i8 %"491" to i64
  %"493" = getelementptr inbounds [3 x i32]* @flag1, i32 0, i64 %"492"
  %"494" = load i32* %"493", align 4
  %"495" = icmp eq i32 %"494", 1
  br i1 %"495", label %thr2_bb108, label %thr2_bb109

thr2_bb108:                                       ; preds = %thr2_bb107
  %"496" = load i8* @"'__CS_round", align 1
  %"497" = zext i8 %"496" to i64
  %"498" = getelementptr inbounds [3 x i32]* @turn, i32 0, i64 %"497"
  %"499" = load i32* %"498", align 4
  %"500" = icmp eq i32 %"499", 0
  br label %thr2_bb109

thr2_bb109:                                       ; preds = %thr2_bb108, %thr2_bb107
  %"501" = phi i1 [ false, %thr2_bb107 ], [ %"500", %thr2_bb108 ]
  %"502" = call i8 @__kittel_nondef.1() #4
  %"503" = load i8* @"'__CS_round", align 1
  %"504" = zext i8 %"503" to i32
  %"505" = zext i8 %"502" to i32
  %"506" = add nsw i32 %"504", %"505"
  %"507" = icmp slt i32 %"506", 3
  %"508" = zext i1 %"507" to i32
  call void @__VERIFIER_assume(i32 %"508") #4
  %"509" = zext i8 %"502" to i32
  %"510" = load i8* @"'__CS_round", align 1
  %"511" = zext i8 %"510" to i32
  %"512" = add nsw i32 %"511", %"509"
  %"513" = trunc i32 %"512" to i8
  store i8 %"513", i8* @"'__CS_round", align 1
  %"514" = call i32 (...)* @nondet_int() #4
  %"515" = icmp ne i32 %"514", 0
  br i1 %"501", label %thr2_bb110, label %thr2_bb113

thr2_bb110:                                       ; preds = %thr2_bb109
  br i1 %"515", label %thr2_bb111, label %thr2_bb112

thr2_bb111:                                       ; preds = %thr2_bb110
  %"516" = load i8* @"'__CS_round", align 1
  %"517" = zext i8 %"516" to i32
  %"518" = icmp eq i32 %"517", 2
  br i1 %"518", label %thr2___CS_cs.exit3, label %thr2_bb112

thr2_bb112:                                       ; preds = %thr2_bb111, %thr2_bb110
  %"519" = load i8* @"'__CS_ret", align 1
  %"520" = zext i8 %"519" to i32
  br label %thr2___CS_cs.exit3

thr2___CS_cs.exit3:                               ; preds = %thr2_bb111, %thr2_bb112
  %"521" = phi i32 [ %"520", %thr2_bb112 ], [ 1, %thr2_bb111 ]
  %"522" = trunc i32 %"521" to i8
  store i8 %"522", i8* @"'__CS_ret", align 1
  %"523" = load i8* @"'__CS_ret", align 1
  %"524" = zext i8 %"523" to i32
  %"525" = icmp ne i32 %"524", 0
  br i1 %"525", label %thr2_bb136, label %thr2_bb107

thr2_bb113:                                       ; preds = %thr2_bb109
  br i1 %"515", label %thr2_bb114, label %thr2_bb115

thr2_bb114:                                       ; preds = %thr2_bb113
  %"526" = load i8* @"'__CS_round", align 1
  %"527" = zext i8 %"526" to i32
  %"528" = icmp eq i32 %"527", 2
  br i1 %"528", label %thr2___CS_cs.exit4, label %thr2_bb115

thr2_bb115:                                       ; preds = %thr2_bb114, %thr2_bb113
  %"529" = load i8* @"'__CS_ret", align 1
  %"530" = zext i8 %"529" to i32
  br label %thr2___CS_cs.exit4

thr2___CS_cs.exit4:                               ; preds = %thr2_bb114, %thr2_bb115
  %"531" = phi i32 [ %"530", %thr2_bb115 ], [ 1, %thr2_bb114 ]
  %"532" = trunc i32 %"531" to i8
  store i8 %"532", i8* @"'__CS_ret", align 1
  %"533" = load i8* @"'__CS_ret", align 1
  %"534" = zext i8 %"533" to i32
  %"535" = icmp ne i32 %"534", 0
  br i1 %"535", label %thr2_bb136, label %thr2_bb116

thr2_bb116:                                       ; preds = %thr2___CS_cs.exit4
  %"536" = call i8 @__kittel_nondef.1() #4
  %"537" = load i8* @"'__CS_round", align 1
  %"538" = zext i8 %"537" to i32
  %"539" = zext i8 %"536" to i32
  %"540" = add nsw i32 %"538", %"539"
  %"541" = icmp slt i32 %"540", 3
  %"542" = zext i1 %"541" to i32
  call void @__VERIFIER_assume(i32 %"542") #4
  %"543" = zext i8 %"536" to i32
  %"544" = load i8* @"'__CS_round", align 1
  %"545" = zext i8 %"544" to i32
  %"546" = add nsw i32 %"545", %"543"
  %"547" = trunc i32 %"546" to i8
  store i8 %"547", i8* @"'__CS_round", align 1
  %"548" = call i32 (...)* @nondet_int() #4
  %"549" = icmp ne i32 %"548", 0
  br i1 %"549", label %thr2_bb117, label %thr2_bb118

thr2_bb117:                                       ; preds = %thr2_bb116
  %"550" = load i8* @"'__CS_round", align 1
  %"551" = zext i8 %"550" to i32
  %"552" = icmp eq i32 %"551", 2
  br i1 %"552", label %thr2___CS_cs.exit5, label %thr2_bb118

thr2_bb118:                                       ; preds = %thr2_bb117, %thr2_bb116
  %"553" = load i8* @"'__CS_ret", align 1
  %"554" = zext i8 %"553" to i32
  br label %thr2___CS_cs.exit5

thr2___CS_cs.exit5:                               ; preds = %thr2_bb117, %thr2_bb118
  %"555" = phi i32 [ %"554", %thr2_bb118 ], [ 1, %thr2_bb117 ]
  %"556" = trunc i32 %"555" to i8
  store i8 %"556", i8* @"'__CS_ret", align 1
  %"557" = load i8* @"'__CS_ret", align 1
  %"558" = zext i8 %"557" to i32
  %"559" = icmp ne i32 %"558", 0
  br i1 %"559", label %thr2_bb136, label %thr2_bb119

thr2_bb119:                                       ; preds = %thr2___CS_cs.exit5
  %"560" = load i8* @"'__CS_round", align 1
  %"561" = zext i8 %"560" to i64
  %"562" = getelementptr inbounds [3 x i32]* @x, i32 0, i64 %"561"
  store i32 1, i32* %"562", align 4
  %"563" = call i8 @__kittel_nondef.1() #4
  %"564" = load i8* @"'__CS_round", align 1
  %"565" = zext i8 %"564" to i32
  %"566" = zext i8 %"563" to i32
  %"567" = add nsw i32 %"565", %"566"
  %"568" = icmp slt i32 %"567", 3
  %"569" = zext i1 %"568" to i32
  call void @__VERIFIER_assume(i32 %"569") #4
  %"570" = zext i8 %"563" to i32
  %"571" = load i8* @"'__CS_round", align 1
  %"572" = zext i8 %"571" to i32
  %"573" = add nsw i32 %"572", %"570"
  %"574" = trunc i32 %"573" to i8
  store i8 %"574", i8* @"'__CS_round", align 1
  %"575" = call i32 (...)* @nondet_int() #4
  %"576" = icmp ne i32 %"575", 0
  br i1 %"576", label %thr2_bb120, label %thr2_bb121

thr2_bb120:                                       ; preds = %thr2_bb119
  %"577" = load i8* @"'__CS_round", align 1
  %"578" = zext i8 %"577" to i32
  %"579" = icmp eq i32 %"578", 2
  br i1 %"579", label %thr2___CS_cs.exit6, label %thr2_bb121

thr2_bb121:                                       ; preds = %thr2_bb120, %thr2_bb119
  %"580" = load i8* @"'__CS_ret", align 1
  %"581" = zext i8 %"580" to i32
  br label %thr2___CS_cs.exit6

thr2___CS_cs.exit6:                               ; preds = %thr2_bb120, %thr2_bb121
  %"582" = phi i32 [ %"581", %thr2_bb121 ], [ 1, %thr2_bb120 ]
  %"583" = trunc i32 %"582" to i8
  store i8 %"583", i8* @"'__CS_ret", align 1
  %"584" = load i8* @"'__CS_ret", align 1
  %"585" = zext i8 %"584" to i32
  %"586" = icmp ne i32 %"585", 0
  br i1 %"586", label %thr2_bb136, label %thr2_bb122

thr2_bb122:                                       ; preds = %thr2___CS_cs.exit6
  %"587" = load i8* @"'__CS_round", align 1
  %"588" = zext i8 %"587" to i64
  %"589" = getelementptr inbounds [3 x i32]* @x, i32 0, i64 %"588"
  %"590" = load i32* %"589", align 4
  %"591" = icmp sge i32 %"590", 1
  %"592" = call i8 @__kittel_nondef.1() #4
  %"593" = load i8* @"'__CS_round", align 1
  %"594" = zext i8 %"593" to i32
  %"595" = zext i8 %"592" to i32
  %"596" = add nsw i32 %"594", %"595"
  %"597" = icmp slt i32 %"596", 3
  %"598" = zext i1 %"597" to i32
  call void @__VERIFIER_assume(i32 %"598") #4
  %"599" = zext i8 %"592" to i32
  %"600" = load i8* @"'__CS_round", align 1
  %"601" = zext i8 %"600" to i32
  %"602" = add nsw i32 %"601", %"599"
  %"603" = trunc i32 %"602" to i8
  store i8 %"603", i8* @"'__CS_round", align 1
  %"604" = call i32 (...)* @nondet_int() #4
  %"605" = icmp ne i32 %"604", 0
  br i1 %"591", label %thr2_bb123, label %thr2_bb132

thr2_bb123:                                       ; preds = %thr2_bb122
  br i1 %"605", label %thr2_bb124, label %thr2_bb125

thr2_bb124:                                       ; preds = %thr2_bb123
  %"606" = load i8* @"'__CS_round", align 1
  %"607" = zext i8 %"606" to i32
  %"608" = icmp eq i32 %"607", 2
  br i1 %"608", label %thr2___CS_cs.exit8, label %thr2_bb125

thr2_bb125:                                       ; preds = %thr2_bb124, %thr2_bb123
  %"609" = load i8* @"'__CS_ret", align 1
  %"610" = zext i8 %"609" to i32
  br label %thr2___CS_cs.exit8

thr2___CS_cs.exit8:                               ; preds = %thr2_bb124, %thr2_bb125
  %"611" = phi i32 [ %"610", %thr2_bb125 ], [ 1, %thr2_bb124 ]
  %"612" = trunc i32 %"611" to i8
  store i8 %"612", i8* @"'__CS_ret", align 1
  %"613" = load i8* @"'__CS_ret", align 1
  %"614" = zext i8 %"613" to i32
  %"615" = icmp ne i32 %"614", 0
  br i1 %"615", label %thr2_bb136, label %thr2_bb126

thr2_bb126:                                       ; preds = %thr2___CS_cs.exit8
  %"616" = call i8 @__kittel_nondef.1() #4
  %"617" = load i8* @"'__CS_round", align 1
  %"618" = zext i8 %"617" to i32
  %"619" = zext i8 %"616" to i32
  %"620" = add nsw i32 %"618", %"619"
  %"621" = icmp slt i32 %"620", 3
  %"622" = zext i1 %"621" to i32
  call void @__VERIFIER_assume(i32 %"622") #4
  %"623" = zext i8 %"616" to i32
  %"624" = load i8* @"'__CS_round", align 1
  %"625" = zext i8 %"624" to i32
  %"626" = add nsw i32 %"625", %"623"
  %"627" = trunc i32 %"626" to i8
  store i8 %"627", i8* @"'__CS_round", align 1
  %"628" = call i32 (...)* @nondet_int() #4
  %"629" = icmp ne i32 %"628", 0
  br i1 %"629", label %thr2_bb127, label %thr2_bb128

thr2_bb127:                                       ; preds = %thr2_bb126
  %"630" = load i8* @"'__CS_round", align 1
  %"631" = zext i8 %"630" to i32
  %"632" = icmp eq i32 %"631", 2
  br i1 %"632", label %thr2___CS_cs.exit9, label %thr2_bb128

thr2_bb128:                                       ; preds = %thr2_bb127, %thr2_bb126
  %"633" = load i8* @"'__CS_ret", align 1
  %"634" = zext i8 %"633" to i32
  br label %thr2___CS_cs.exit9

thr2___CS_cs.exit9:                               ; preds = %thr2_bb127, %thr2_bb128
  %"635" = phi i32 [ %"634", %thr2_bb128 ], [ 1, %thr2_bb127 ]
  %"636" = trunc i32 %"635" to i8
  store i8 %"636", i8* @"'__CS_ret", align 1
  %"637" = load i8* @"'__CS_ret", align 1
  %"638" = zext i8 %"637" to i32
  %"639" = icmp ne i32 %"638", 0
  br i1 %"639", label %thr2_bb136, label %thr2_bb129

thr2_bb129:                                       ; preds = %thr2___CS_cs.exit9
  %"640" = load i8* @"'__CS_round", align 1
  %"641" = zext i8 %"640" to i64
  %"642" = getelementptr inbounds [3 x i32]* @flag2, i32 0, i64 %"641"
  store i32 0, i32* %"642", align 4
  %"643" = call i8 @__kittel_nondef.1() #4
  %"644" = load i8* @"'__CS_round", align 1
  %"645" = zext i8 %"644" to i32
  %"646" = zext i8 %"643" to i32
  %"647" = add nsw i32 %"645", %"646"
  %"648" = icmp slt i32 %"647", 3
  %"649" = zext i1 %"648" to i32
  call void @__VERIFIER_assume(i32 %"649") #4
  %"650" = zext i8 %"643" to i32
  %"651" = load i8* @"'__CS_round", align 1
  %"652" = zext i8 %"651" to i32
  %"653" = add nsw i32 %"652", %"650"
  %"654" = trunc i32 %"653" to i8
  store i8 %"654", i8* @"'__CS_round", align 1
  %"655" = call i32 (...)* @nondet_int() #4
  %"656" = icmp ne i32 %"655", 0
  br i1 %"656", label %thr2_bb130, label %thr2_bb131

thr2_bb130:                                       ; preds = %thr2_bb129
  %"657" = load i8* @"'__CS_round", align 1
  %"658" = zext i8 %"657" to i32
  %"659" = icmp eq i32 %"658", 2
  br i1 %"659", label %thr2___CS_cs.exit10, label %thr2_bb131

thr2_bb131:                                       ; preds = %thr2_bb130, %thr2_bb129
  %"660" = load i8* @"'__CS_ret", align 1
  %"661" = zext i8 %"660" to i32
  br label %thr2___CS_cs.exit10

thr2___CS_cs.exit10:                              ; preds = %thr2_bb130, %thr2_bb131
  %"662" = phi i32 [ %"661", %thr2_bb131 ], [ 1, %thr2_bb130 ]
  %"663" = trunc i32 %"662" to i8
  store i8 %"663", i8* @"'__CS_ret", align 1
  %"664" = load i8* @"'__CS_ret", align 1
  %"665" = zext i8 %"664" to i32
  %"666" = icmp ne i32 %"665", 0
  %. = select i1 %"666", i8* null, i8* %"412"
  ret i8* %.

thr2_bb132:                                       ; preds = %thr2_bb122
  br i1 %"605", label %thr2_bb133, label %thr2_bb134

thr2_bb133:                                       ; preds = %thr2_bb132
  %"667" = load i8* @"'__CS_round", align 1
  %"668" = zext i8 %"667" to i32
  %"669" = icmp eq i32 %"668", 2
  br i1 %"669", label %thr2___CS_cs.exit7, label %thr2_bb134

thr2_bb134:                                       ; preds = %thr2_bb133, %thr2_bb132
  %"670" = load i8* @"'__CS_ret", align 1
  %"671" = zext i8 %"670" to i32
  br label %thr2___CS_cs.exit7

thr2___CS_cs.exit7:                               ; preds = %thr2_bb133, %thr2_bb134
  %"672" = phi i32 [ %"671", %thr2_bb134 ], [ 1, %thr2_bb133 ]
  %"673" = trunc i32 %"672" to i8
  store i8 %"673", i8* @"'__CS_ret", align 1
  %"674" = load i8* @"'__CS_ret", align 1
  %"675" = zext i8 %"674" to i32
  %"676" = icmp ne i32 %"675", 0
  br i1 %"676", label %thr2_bb136, label %thr2_bb135

thr2_bb135:                                       ; preds = %thr2___CS_cs.exit7
  store i8 1, i8* @"'__CS_error", align 1
  store i8 2, i8* @"'__CS_ret", align 1
  br label %thr2_bb136

thr2_bb136:                                       ; preds = %thr2___CS_cs.exit9, %thr2___CS_cs.exit8, %thr2___CS_cs.exit7, %thr2___CS_cs.exit6, %thr2___CS_cs.exit5, %thr2___CS_cs.exit4, %thr2___CS_cs.exit3, %thr2___CS_cs.exit2, %thr2___CS_cs.exit1, %thr2___CS_cs.exit, %thr2_bb135
  ret i8* null
}

; Function Attrs: nounwind uwtable
define i8* @main_thread(i8* %arg) #0 {
main_thread_bb137:
  %"677" = call i8* @__kittel_nondef.2()
  %"678" = call i8 @__kittel_nondef.1() #4
  %"679" = load i8* @"'__CS_round", align 1
  %"680" = zext i8 %"679" to i32
  %"681" = zext i8 %"678" to i32
  %"682" = add nsw i32 %"680", %"681"
  %"683" = icmp slt i32 %"682", 3
  %"684" = zext i1 %"683" to i32
  call void @__VERIFIER_assume(i32 %"684") #4
  %"685" = zext i8 %"678" to i32
  %"686" = load i8* @"'__CS_round", align 1
  %"687" = zext i8 %"686" to i32
  %"688" = add nsw i32 %"687", %"685"
  %"689" = trunc i32 %"688" to i8
  store i8 %"689", i8* @"'__CS_round", align 1
  %"690" = call i32 (...)* @nondet_int() #4
  %"691" = icmp ne i32 %"690", 0
  br i1 %"691", label %main_thread_bb138, label %main_thread_bb139

main_thread_bb138:                                ; preds = %main_thread_bb137
  %"692" = load i8* @"'__CS_round", align 1
  %"693" = zext i8 %"692" to i32
  %"694" = icmp eq i32 %"693", 2
  br i1 %"694", label %main_thread___CS_cs.exit, label %main_thread_bb139

main_thread_bb139:                                ; preds = %main_thread_bb138, %main_thread_bb137
  %"695" = load i8* @"'__CS_ret", align 1
  %"696" = zext i8 %"695" to i32
  br label %main_thread___CS_cs.exit

main_thread___CS_cs.exit:                         ; preds = %main_thread_bb138, %main_thread_bb139
  %"697" = phi i32 [ %"696", %main_thread_bb139 ], [ 1, %main_thread_bb138 ]
  %"698" = trunc i32 %"697" to i8
  store i8 %"698", i8* @"'__CS_ret", align 1
  %"699" = load i8* @"'__CS_ret", align 1
  %"700" = zext i8 %"699" to i32
  %"701" = icmp ne i32 %"700", 0
  br i1 %"701", label %main_thread_bb158, label %main_thread_bb140

main_thread_bb140:                                ; preds = %main_thread___CS_cs.exit
  %"702" = load i8* @"'__CS_thread_index", align 1
  %"703" = zext i8 %"702" to i32
  %"704" = icmp eq i32 %"703", 2
  br i1 %"704", label %main_thread___CS_pthread_create.exit, label %main_thread_bb141

main_thread_bb141:                                ; preds = %main_thread_bb140
  %"705" = load i8* @"'__CS_thread_index", align 1
  %"706" = add i8 %"705", 1
  store i8 %"706", i8* @"'__CS_thread_index", align 1
  %"707" = load i8* @"'__CS_thread_index", align 1
  %"708" = zext i8 %"707" to i64
  %"709" = getelementptr inbounds [3 x i8]* @__CS_thread_allocated, i32 0, i64 %"708"
  store i8 1, i8* %"709", align 1
  %"710" = load i8* @"'__CS_round", align 1
  %"711" = load i8* @"'__CS_thread_index", align 1
  %"712" = zext i8 %"711" to i64
  %"713" = getelementptr inbounds [3 x i8]* @__CS_thread_born_round, i32 0, i64 %"712"
  store i8 %"710", i8* %"713", align 1
  %"714" = load i8* @"'__CS_thread_index", align 1
  %"715" = zext i8 %"714" to i64
  %"716" = getelementptr inbounds [3 x i8* (i8*)*]* @__CS_thread, i32 0, i64 %"715"
  %"717" = bitcast i8* ()* @thr1 to i8* (i8*)*
  store i8* (i8*)* %"717", i8* (i8*)** %"716", align 8
  %"718" = load i8* @"'__CS_thread_index", align 1
  %"719" = zext i8 %"718" to i64
  %"720" = load i8* @"'__CS_round", align 1
  %"721" = zext i8 %"720" to i64
  %"722" = getelementptr inbounds [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 %"721"
  %"723" = getelementptr inbounds [3 x i8]* %"722", i32 0, i64 %"719"
  store i8 1, i8* %"723", align 1
  %"724" = load i8* @"'__CS_thread_index", align 1
  br label %main_thread___CS_pthread_create.exit

main_thread___CS_pthread_create.exit:             ; preds = %main_thread_bb140, %main_thread_bb141
  %t1.0 = phi i8 [ %"724", %main_thread_bb141 ], [ 123, %main_thread_bb140 ]
  %"725" = call i8 @__kittel_nondef.1() #4
  %"726" = load i8* @"'__CS_round", align 1
  %"727" = zext i8 %"726" to i32
  %"728" = zext i8 %"725" to i32
  %"729" = add nsw i32 %"727", %"728"
  %"730" = icmp slt i32 %"729", 3
  %"731" = zext i1 %"730" to i32
  call void @__VERIFIER_assume(i32 %"731") #4
  %"732" = zext i8 %"725" to i32
  %"733" = load i8* @"'__CS_round", align 1
  %"734" = zext i8 %"733" to i32
  %"735" = add nsw i32 %"734", %"732"
  %"736" = trunc i32 %"735" to i8
  store i8 %"736", i8* @"'__CS_round", align 1
  %"737" = call i32 (...)* @nondet_int() #4
  %"738" = icmp ne i32 %"737", 0
  br i1 %"738", label %main_thread_bb142, label %main_thread_bb143

main_thread_bb142:                                ; preds = %main_thread___CS_pthread_create.exit
  %"739" = load i8* @"'__CS_round", align 1
  %"740" = zext i8 %"739" to i32
  %"741" = icmp eq i32 %"740", 2
  br i1 %"741", label %main_thread___CS_cs.exit1, label %main_thread_bb143

main_thread_bb143:                                ; preds = %main_thread_bb142, %main_thread___CS_pthread_create.exit
  %"742" = load i8* @"'__CS_ret", align 1
  %"743" = zext i8 %"742" to i32
  br label %main_thread___CS_cs.exit1

main_thread___CS_cs.exit1:                        ; preds = %main_thread_bb142, %main_thread_bb143
  %"744" = phi i32 [ %"743", %main_thread_bb143 ], [ 1, %main_thread_bb142 ]
  %"745" = trunc i32 %"744" to i8
  store i8 %"745", i8* @"'__CS_ret", align 1
  %"746" = load i8* @"'__CS_ret", align 1
  %"747" = zext i8 %"746" to i32
  %"748" = icmp ne i32 %"747", 0
  br i1 %"748", label %main_thread_bb158, label %main_thread_bb144

main_thread_bb144:                                ; preds = %main_thread___CS_cs.exit1
  %"749" = load i8* @"'__CS_thread_index", align 1
  %"750" = zext i8 %"749" to i32
  %"751" = icmp eq i32 %"750", 2
  br i1 %"751", label %main_thread___CS_pthread_create.exit3, label %main_thread_bb145

main_thread_bb145:                                ; preds = %main_thread_bb144
  %"752" = load i8* @"'__CS_thread_index", align 1
  %"753" = add i8 %"752", 1
  store i8 %"753", i8* @"'__CS_thread_index", align 1
  %"754" = load i8* @"'__CS_thread_index", align 1
  %"755" = zext i8 %"754" to i64
  %"756" = getelementptr inbounds [3 x i8]* @__CS_thread_allocated, i32 0, i64 %"755"
  store i8 1, i8* %"756", align 1
  %"757" = load i8* @"'__CS_round", align 1
  %"758" = load i8* @"'__CS_thread_index", align 1
  %"759" = zext i8 %"758" to i64
  %"760" = getelementptr inbounds [3 x i8]* @__CS_thread_born_round, i32 0, i64 %"759"
  store i8 %"757", i8* %"760", align 1
  %"761" = load i8* @"'__CS_thread_index", align 1
  %"762" = zext i8 %"761" to i64
  %"763" = getelementptr inbounds [3 x i8* (i8*)*]* @__CS_thread, i32 0, i64 %"762"
  %"764" = bitcast i8* ()* @thr2 to i8* (i8*)*
  store i8* (i8*)* %"764", i8* (i8*)** %"763", align 8
  %"765" = load i8* @"'__CS_thread_index", align 1
  %"766" = zext i8 %"765" to i64
  %"767" = load i8* @"'__CS_round", align 1
  %"768" = zext i8 %"767" to i64
  %"769" = getelementptr inbounds [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 %"768"
  %"770" = getelementptr inbounds [3 x i8]* %"769", i32 0, i64 %"766"
  store i8 1, i8* %"770", align 1
  %"771" = load i8* @"'__CS_thread_index", align 1
  br label %main_thread___CS_pthread_create.exit3

main_thread___CS_pthread_create.exit3:            ; preds = %main_thread_bb144, %main_thread_bb145
  %t2.0 = phi i8 [ %"771", %main_thread_bb145 ], [ 123, %main_thread_bb144 ]
  %"772" = call i8 @__kittel_nondef.1() #4
  %"773" = load i8* @"'__CS_round", align 1
  %"774" = zext i8 %"773" to i32
  %"775" = zext i8 %"772" to i32
  %"776" = add nsw i32 %"774", %"775"
  %"777" = icmp slt i32 %"776", 3
  %"778" = zext i1 %"777" to i32
  call void @__VERIFIER_assume(i32 %"778") #4
  %"779" = zext i8 %"772" to i32
  %"780" = load i8* @"'__CS_round", align 1
  %"781" = zext i8 %"780" to i32
  %"782" = add nsw i32 %"781", %"779"
  %"783" = trunc i32 %"782" to i8
  store i8 %"783", i8* @"'__CS_round", align 1
  %"784" = call i32 (...)* @nondet_int() #4
  %"785" = icmp ne i32 %"784", 0
  br i1 %"785", label %main_thread_bb146, label %main_thread_bb147

main_thread_bb146:                                ; preds = %main_thread___CS_pthread_create.exit3
  %"786" = load i8* @"'__CS_round", align 1
  %"787" = zext i8 %"786" to i32
  %"788" = icmp eq i32 %"787", 2
  br i1 %"788", label %main_thread___CS_cs.exit4, label %main_thread_bb147

main_thread_bb147:                                ; preds = %main_thread_bb146, %main_thread___CS_pthread_create.exit3
  %"789" = load i8* @"'__CS_ret", align 1
  %"790" = zext i8 %"789" to i32
  br label %main_thread___CS_cs.exit4

main_thread___CS_cs.exit4:                        ; preds = %main_thread_bb146, %main_thread_bb147
  %"791" = phi i32 [ %"790", %main_thread_bb147 ], [ 1, %main_thread_bb146 ]
  %"792" = trunc i32 %"791" to i8
  store i8 %"792", i8* @"'__CS_ret", align 1
  %"793" = load i8* @"'__CS_ret", align 1
  %"794" = zext i8 %"793" to i32
  %"795" = icmp ne i32 %"794", 0
  br i1 %"795", label %main_thread_bb158, label %main_thread_bb148

main_thread_bb148:                                ; preds = %main_thread___CS_cs.exit4
  %"796" = zext i8 %t1.0 to i32
  %"797" = icmp ne i32 %"796", 123
  %"798" = zext i8 %t1.0 to i32
  %"799" = icmp sgt i32 %"798", 3
  %or.cond.i = and i1 %"797", %"799"
  br i1 %or.cond.i, label %main_thread_bb149, label %main_thread_bb150

main_thread_bb149:                                ; preds = %main_thread_bb148
  store i8 1, i8* @"'__CS_error", align 1
  store i8 2, i8* @"'__CS_ret", align 1
  br label %main_thread___CS_pthread_join.exit

main_thread_bb150:                                ; preds = %main_thread_bb148
  %"800" = zext i8 %t1.0 to i32
  %"801" = icmp eq i32 %"800", 123
  br i1 %"801", label %main_thread_bb152, label %main_thread_bb151

main_thread_bb151:                                ; preds = %main_thread_bb150
  %"802" = zext i8 %t1.0 to i64
  %"803" = load i8* @"'__CS_round", align 1
  %"804" = zext i8 %"803" to i64
  %"805" = getelementptr inbounds [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 %"804"
  %"806" = getelementptr inbounds [3 x i8]* %"805", i32 0, i64 %"802"
  %"807" = load i8* %"806", align 1
  %"808" = zext i8 %"807" to i32
  %"809" = icmp eq i32 %"808", 1
  br i1 %"809", label %main_thread_bb152, label %main_thread_bb153

main_thread_bb152:                                ; preds = %main_thread_bb151, %main_thread_bb150
  store i8 1, i8* @"'__CS_ret", align 1
  br label %main_thread___CS_pthread_join.exit

main_thread_bb153:                                ; preds = %main_thread_bb151
  %"810" = zext i8 %t1.0 to i64
  %"811" = load i8* @"'__CS_round", align 1
  %"812" = zext i8 %"811" to i64
  %"813" = getelementptr inbounds [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 %"812"
  %"814" = getelementptr inbounds [3 x i8]* %"813", i32 0, i64 %"810"
  %"815" = load i8* %"814", align 1
  %"816" = zext i8 %"815" to i32
  %"817" = icmp eq i32 %"816", 0
  br i1 %"817", label %main_thread_bb154, label %main_thread_bb155

main_thread_bb154:                                ; preds = %main_thread_bb153
  store i8 1, i8* @"'__CS_error", align 1
  store i8 2, i8* @"'__CS_ret", align 1
  br label %main_thread___CS_pthread_join.exit

main_thread_bb155:                                ; preds = %main_thread_bb153
  %"818" = zext i8 %t1.0 to i64
  %"819" = load i8* @"'__CS_round", align 1
  %"820" = zext i8 %"819" to i64
  %"821" = getelementptr inbounds [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 %"820"
  %"822" = getelementptr inbounds [3 x i8]* %"821", i32 0, i64 %"818"
  %"823" = load i8* %"822", align 1
  %"824" = zext i8 %"823" to i32
  %"825" = icmp eq i32 %"824", 2
  %"826" = zext i1 %"825" to i32
  call void @__VERIFIER_assume(i32 %"826") #4
  br label %main_thread___CS_pthread_join.exit

main_thread___CS_pthread_join.exit:               ; preds = %main_thread_bb149, %main_thread_bb152, %main_thread_bb154, %main_thread_bb155
  %"827" = call i8 @__kittel_nondef.1() #4
  %"828" = load i8* @"'__CS_round", align 1
  %"829" = zext i8 %"828" to i32
  %"830" = zext i8 %"827" to i32
  %"831" = add nsw i32 %"829", %"830"
  %"832" = icmp slt i32 %"831", 3
  %"833" = zext i1 %"832" to i32
  call void @__VERIFIER_assume(i32 %"833") #4
  %"834" = zext i8 %"827" to i32
  %"835" = load i8* @"'__CS_round", align 1
  %"836" = zext i8 %"835" to i32
  %"837" = add nsw i32 %"836", %"834"
  %"838" = trunc i32 %"837" to i8
  store i8 %"838", i8* @"'__CS_round", align 1
  %"839" = call i32 (...)* @nondet_int() #4
  %"840" = icmp ne i32 %"839", 0
  br i1 %"840", label %main_thread_bb156, label %main_thread_bb157

main_thread_bb156:                                ; preds = %main_thread___CS_pthread_join.exit
  %"841" = load i8* @"'__CS_round", align 1
  %"842" = zext i8 %"841" to i32
  %"843" = icmp eq i32 %"842", 2
  br i1 %"843", label %main_thread___CS_cs.exit5, label %main_thread_bb157

main_thread_bb157:                                ; preds = %main_thread_bb156, %main_thread___CS_pthread_join.exit
  %"844" = load i8* @"'__CS_ret", align 1
  %"845" = zext i8 %"844" to i32
  br label %main_thread___CS_cs.exit5

main_thread___CS_cs.exit5:                        ; preds = %main_thread_bb156, %main_thread_bb157
  %"846" = phi i32 [ %"845", %main_thread_bb157 ], [ 1, %main_thread_bb156 ]
  %"847" = trunc i32 %"846" to i8
  store i8 %"847", i8* @"'__CS_ret", align 1
  %"848" = load i8* @"'__CS_ret", align 1
  %"849" = zext i8 %"848" to i32
  %"850" = icmp ne i32 %"849", 0
  br i1 %"850", label %main_thread_bb158, label %main_thread_bb159

main_thread_bb158:                                ; preds = %main_thread___CS_cs.exit5, %main_thread___CS_cs.exit4, %main_thread___CS_cs.exit1, %main_thread___CS_cs.exit
  ret i8* null

main_thread_bb159:                                ; preds = %main_thread___CS_cs.exit5
  %"851" = zext i8 %t2.0 to i32
  %"852" = icmp ne i32 %"851", 123
  %"853" = zext i8 %t2.0 to i32
  %"854" = icmp sgt i32 %"853", 3
  %or.cond.i6 = and i1 %"852", %"854"
  br i1 %or.cond.i6, label %main_thread_bb160, label %main_thread_bb161

main_thread_bb160:                                ; preds = %main_thread_bb159
  store i8 1, i8* @"'__CS_error", align 1
  store i8 2, i8* @"'__CS_ret", align 1
  br label %main_thread___CS_pthread_join.exit7

main_thread_bb161:                                ; preds = %main_thread_bb159
  %"855" = zext i8 %t2.0 to i32
  %"856" = icmp eq i32 %"855", 123
  br i1 %"856", label %main_thread_bb163, label %main_thread_bb162

main_thread_bb162:                                ; preds = %main_thread_bb161
  %"857" = zext i8 %t2.0 to i64
  %"858" = load i8* @"'__CS_round", align 1
  %"859" = zext i8 %"858" to i64
  %"860" = getelementptr inbounds [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 %"859"
  %"861" = getelementptr inbounds [3 x i8]* %"860", i32 0, i64 %"857"
  %"862" = load i8* %"861", align 1
  %"863" = zext i8 %"862" to i32
  %"864" = icmp eq i32 %"863", 1
  br i1 %"864", label %main_thread_bb163, label %main_thread_bb164

main_thread_bb163:                                ; preds = %main_thread_bb162, %main_thread_bb161
  store i8 1, i8* @"'__CS_ret", align 1
  br label %main_thread___CS_pthread_join.exit7

main_thread_bb164:                                ; preds = %main_thread_bb162
  %"865" = zext i8 %t2.0 to i64
  %"866" = load i8* @"'__CS_round", align 1
  %"867" = zext i8 %"866" to i64
  %"868" = getelementptr inbounds [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 %"867"
  %"869" = getelementptr inbounds [3 x i8]* %"868", i32 0, i64 %"865"
  %"870" = load i8* %"869", align 1
  %"871" = zext i8 %"870" to i32
  %"872" = icmp eq i32 %"871", 0
  br i1 %"872", label %main_thread_bb165, label %main_thread_bb166

main_thread_bb165:                                ; preds = %main_thread_bb164
  store i8 1, i8* @"'__CS_error", align 1
  store i8 2, i8* @"'__CS_ret", align 1
  br label %main_thread___CS_pthread_join.exit7

main_thread_bb166:                                ; preds = %main_thread_bb164
  %"873" = zext i8 %t2.0 to i64
  %"874" = load i8* @"'__CS_round", align 1
  %"875" = zext i8 %"874" to i64
  %"876" = getelementptr inbounds [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 %"875"
  %"877" = getelementptr inbounds [3 x i8]* %"876", i32 0, i64 %"873"
  %"878" = load i8* %"877", align 1
  %"879" = zext i8 %"878" to i32
  %"880" = icmp eq i32 %"879", 2
  %"881" = zext i1 %"880" to i32
  call void @__VERIFIER_assume(i32 %"881") #4
  br label %main_thread___CS_pthread_join.exit7

main_thread___CS_pthread_join.exit7:              ; preds = %main_thread_bb160, %main_thread_bb163, %main_thread_bb165, %main_thread_bb166
  %"882" = call i8 @__kittel_nondef.1() #4
  %"883" = load i8* @"'__CS_round", align 1
  %"884" = zext i8 %"883" to i32
  %"885" = zext i8 %"882" to i32
  %"886" = add nsw i32 %"884", %"885"
  %"887" = icmp slt i32 %"886", 3
  %"888" = zext i1 %"887" to i32
  call void @__VERIFIER_assume(i32 %"888") #4
  %"889" = zext i8 %"882" to i32
  %"890" = load i8* @"'__CS_round", align 1
  %"891" = zext i8 %"890" to i32
  %"892" = add nsw i32 %"891", %"889"
  %"893" = trunc i32 %"892" to i8
  store i8 %"893", i8* @"'__CS_round", align 1
  %"894" = call i32 (...)* @nondet_int() #4
  %"895" = icmp ne i32 %"894", 0
  br i1 %"895", label %main_thread_bb167, label %main_thread_bb168

main_thread_bb167:                                ; preds = %main_thread___CS_pthread_join.exit7
  %"896" = load i8* @"'__CS_round", align 1
  %"897" = zext i8 %"896" to i32
  %"898" = icmp eq i32 %"897", 2
  br i1 %"898", label %main_thread___CS_cs.exit8, label %main_thread_bb168

main_thread_bb168:                                ; preds = %main_thread_bb167, %main_thread___CS_pthread_join.exit7
  %"899" = load i8* @"'__CS_ret", align 1
  %"900" = zext i8 %"899" to i32
  br label %main_thread___CS_cs.exit8

main_thread___CS_cs.exit8:                        ; preds = %main_thread_bb167, %main_thread_bb168
  %"901" = phi i32 [ %"900", %main_thread_bb168 ], [ 1, %main_thread_bb167 ]
  %"902" = trunc i32 %"901" to i8
  store i8 %"902", i8* @"'__CS_ret", align 1
  %"903" = load i8* @"'__CS_ret", align 1
  %"904" = zext i8 %"903" to i32
  %"905" = icmp ne i32 %"904", 0
  %. = select i1 %"905", i8* null, i8* %"677"
  ret i8* %.
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb169:
  %__CS_cp___CS_thread_status = alloca [3 x [3 x i8]], align 1
  %__CS_cp___CS_thread_lockedon = alloca [3 x [3 x i8*]], align 16
  %__CS_cp_flag1 = alloca [3 x i32], align 4
  %__CS_cp_flag2 = alloca [3 x i32], align 4
  %__CS_cp_turn = alloca [3 x i32], align 4
  %__CS_cp_x = alloca [3 x i32], align 4
  %"906" = getelementptr inbounds [3 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 1
  %"907" = getelementptr inbounds [3 x i8]* %"906", i32 0, i64 0
  %"908" = load i8* %"907", align 1
  %"909" = getelementptr [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 1, i64 0
  store i8 %"908", i8* %"909", align 1
  %"910" = getelementptr inbounds [3 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 2
  %"911" = getelementptr inbounds [3 x i8]* %"910", i32 0, i64 0
  %"912" = load i8* %"911", align 1
  %"913" = getelementptr [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 2, i64 0
  store i8 %"912", i8* %"913", align 1
  %"914" = getelementptr inbounds [3 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 1
  %"915" = getelementptr inbounds [3 x i8]* %"914", i32 0, i64 1
  %"916" = load i8* %"915", align 1
  %"917" = getelementptr [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 1, i64 1
  store i8 %"916", i8* %"917", align 1
  %"918" = getelementptr inbounds [3 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 2
  %"919" = getelementptr inbounds [3 x i8]* %"918", i32 0, i64 1
  %"920" = load i8* %"919", align 1
  %"921" = getelementptr [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 2, i64 1
  store i8 %"920", i8* %"921", align 1
  %"922" = getelementptr inbounds [3 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 1
  %"923" = getelementptr inbounds [3 x i8]* %"922", i32 0, i64 2
  %"924" = load i8* %"923", align 1
  %"925" = getelementptr [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 1, i64 2
  store i8 %"924", i8* %"925", align 1
  %"926" = getelementptr inbounds [3 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 2
  %"927" = getelementptr inbounds [3 x i8]* %"926", i32 0, i64 2
  %"928" = load i8* %"927", align 1
  %"929" = getelementptr [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 2, i64 2
  store i8 %"928", i8* %"929", align 1
  %"930" = getelementptr inbounds [3 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 1
  %"931" = getelementptr inbounds [3 x i8*]* %"930", i32 0, i64 0
  %"932" = load i8** %"931", align 8
  %"933" = getelementptr [3 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 1, i64 0
  store i8* %"932", i8** %"933", align 8
  %"934" = getelementptr inbounds [3 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 2
  %"935" = getelementptr inbounds [3 x i8*]* %"934", i32 0, i64 0
  %"936" = load i8** %"935", align 8
  %"937" = getelementptr [3 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 2, i64 0
  store i8* %"936", i8** %"937", align 8
  %"938" = getelementptr inbounds [3 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 1
  %"939" = getelementptr inbounds [3 x i8*]* %"938", i32 0, i64 1
  %"940" = load i8** %"939", align 8
  %"941" = getelementptr [3 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 1, i64 1
  store i8* %"940", i8** %"941", align 8
  %"942" = getelementptr inbounds [3 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 2
  %"943" = getelementptr inbounds [3 x i8*]* %"942", i32 0, i64 1
  %"944" = load i8** %"943", align 8
  %"945" = getelementptr [3 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 2, i64 1
  store i8* %"944", i8** %"945", align 8
  %"946" = getelementptr inbounds [3 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 1
  %"947" = getelementptr inbounds [3 x i8*]* %"946", i32 0, i64 2
  %"948" = load i8** %"947", align 8
  %"949" = getelementptr [3 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 1, i64 2
  store i8* %"948", i8** %"949", align 8
  %"950" = getelementptr inbounds [3 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 2
  %"951" = getelementptr inbounds [3 x i8*]* %"950", i32 0, i64 2
  %"952" = load i8** %"951", align 8
  %"953" = getelementptr [3 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 2, i64 2
  store i8* %"952", i8** %"953", align 8
  %"954" = getelementptr inbounds [3 x i32]* %__CS_cp_flag1, i32 0, i64 1
  %"955" = load i32* %"954", align 4
  %"956" = getelementptr [3 x i32]* @flag1, i32 0, i64 1
  store i32 %"955", i32* %"956", align 4
  %"957" = getelementptr inbounds [3 x i32]* %__CS_cp_flag1, i32 0, i64 2
  %"958" = load i32* %"957", align 4
  %"959" = getelementptr [3 x i32]* @flag1, i32 0, i64 2
  store i32 %"958", i32* %"959", align 4
  %"960" = getelementptr inbounds [3 x i32]* %__CS_cp_flag2, i32 0, i64 1
  %"961" = load i32* %"960", align 4
  %"962" = getelementptr [3 x i32]* @flag2, i32 0, i64 1
  store i32 %"961", i32* %"962", align 4
  %"963" = getelementptr inbounds [3 x i32]* %__CS_cp_flag2, i32 0, i64 2
  %"964" = load i32* %"963", align 4
  %"965" = getelementptr [3 x i32]* @flag2, i32 0, i64 2
  store i32 %"964", i32* %"965", align 4
  %"966" = getelementptr inbounds [3 x i32]* %__CS_cp_turn, i32 0, i64 1
  %"967" = load i32* %"966", align 4
  %"968" = getelementptr [3 x i32]* @turn, i32 0, i64 1
  store i32 %"967", i32* %"968", align 4
  %"969" = getelementptr inbounds [3 x i32]* %__CS_cp_turn, i32 0, i64 2
  %"970" = load i32* %"969", align 4
  %"971" = getelementptr [3 x i32]* @turn, i32 0, i64 2
  store i32 %"970", i32* %"971", align 4
  %"972" = getelementptr inbounds [3 x i32]* %__CS_cp_x, i32 0, i64 1
  %"973" = load i32* %"972", align 4
  %"974" = getelementptr [3 x i32]* @x, i32 0, i64 1
  store i32 %"973", i32* %"974", align 4
  %"975" = getelementptr inbounds [3 x i32]* %__CS_cp_x, i32 0, i64 2
  %"976" = load i32* %"975", align 4
  %"977" = getelementptr [3 x i32]* @x, i32 0, i64 2
  store i32 %"976", i32* %"977", align 4
  store i8 0, i8* @"'__CS_round", align 1
  store i8 0, i8* @"'__CS_thread_index", align 1
  %"978" = load i8* @"'__CS_round", align 1
  %"979" = getelementptr [3 x i8]* @__CS_thread_born_round, i32 0, i64 0
  store i8 %"978", i8* %"979", align 1
  %"980" = getelementptr [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 0, i64 0
  store i8 1, i8* %"980", align 1
  %"981" = getelementptr [3 x i8* (i8*)*]* @__CS_thread, i32 0, i64 0
  store i8* (i8*)* @main_thread, i8* (i8*)** %"981", align 8
  %"982" = getelementptr [3 x i8]* @__CS_thread_allocated, i32 0, i64 0
  store i8 1, i8* %"982", align 1
  %"983" = getelementptr [3 x i8]* @__CS_thread_allocated, i32 0, i64 0
  %"984" = load i8* %"983", align 1
  %"985" = zext i8 %"984" to i32
  %"986" = icmp eq i32 %"985", 1
  br i1 %"986", label %main_bb170, label %main_bb172

main_bb170:                                       ; preds = %main_bb169
  %"987" = getelementptr [3 x i8]* @__CS_thread_born_round, i32 0, i64 0
  %"988" = load i8* %"987", align 1
  store i8 %"988", i8* @"'__CS_round", align 1
  store i8 0, i8* @"'__CS_ret", align 1
  %"989" = getelementptr [3 x i8* (i8*)*]* @__CS_thread, i32 0, i64 0
  %"990" = load i8* (i8*)** %"989", align 8
  %"991" = call i8* %"990"(i8* null)
  %"992" = load i8* @"'__CS_ret", align 1
  %"993" = zext i8 %"992" to i32
  %"994" = icmp ne i32 %"993", 1
  br i1 %"994", label %main_bb171, label %main_bb172

main_bb171:                                       ; preds = %main_bb170
  %"995" = load i8* @"'__CS_round", align 1
  %"996" = zext i8 %"995" to i64
  %"997" = getelementptr inbounds [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 %"996"
  %"998" = getelementptr inbounds [3 x i8]* %"997", i32 0, i64 0
  store i8 2, i8* %"998", align 1
  br label %main_bb172

main_bb172:                                       ; preds = %main_bb170, %main_bb171, %main_bb169
  %"999" = getelementptr [3 x i8]* @__CS_thread_allocated, i32 0, i64 1
  %"1000" = load i8* %"999", align 1
  %"1001" = zext i8 %"1000" to i32
  %"1002" = icmp eq i32 %"1001", 1
  br i1 %"1002", label %main_bb173, label %main_bb175

main_bb173:                                       ; preds = %main_bb172
  %"1003" = getelementptr [3 x i8]* @__CS_thread_born_round, i32 0, i64 1
  %"1004" = load i8* %"1003", align 1
  store i8 %"1004", i8* @"'__CS_round", align 1
  store i8 0, i8* @"'__CS_ret", align 1
  %"1005" = getelementptr [3 x i8* (i8*)*]* @__CS_thread, i32 0, i64 1
  %"1006" = load i8* (i8*)** %"1005", align 8
  %"1007" = call i8* %"1006"(i8* null)
  %"1008" = load i8* @"'__CS_ret", align 1
  %"1009" = zext i8 %"1008" to i32
  %"1010" = icmp ne i32 %"1009", 1
  br i1 %"1010", label %main_bb174, label %main_bb175

main_bb174:                                       ; preds = %main_bb173
  %"1011" = load i8* @"'__CS_round", align 1
  %"1012" = zext i8 %"1011" to i64
  %"1013" = getelementptr inbounds [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 %"1012"
  %"1014" = getelementptr inbounds [3 x i8]* %"1013", i32 0, i64 1
  store i8 2, i8* %"1014", align 1
  br label %main_bb175

main_bb175:                                       ; preds = %main_bb173, %main_bb174, %main_bb172
  %"1015" = getelementptr [3 x i8]* @__CS_thread_allocated, i32 0, i64 2
  %"1016" = load i8* %"1015", align 1
  %"1017" = zext i8 %"1016" to i32
  %"1018" = icmp eq i32 %"1017", 1
  br i1 %"1018", label %main_bb176, label %main_bb178

main_bb176:                                       ; preds = %main_bb175
  %"1019" = getelementptr [3 x i8]* @__CS_thread_born_round, i32 0, i64 2
  %"1020" = load i8* %"1019", align 1
  store i8 %"1020", i8* @"'__CS_round", align 1
  store i8 0, i8* @"'__CS_ret", align 1
  %"1021" = getelementptr [3 x i8* (i8*)*]* @__CS_thread, i32 0, i64 2
  %"1022" = load i8* (i8*)** %"1021", align 8
  %"1023" = call i8* %"1022"(i8* null)
  %"1024" = load i8* @"'__CS_ret", align 1
  %"1025" = zext i8 %"1024" to i32
  %"1026" = icmp ne i32 %"1025", 1
  br i1 %"1026", label %main_bb177, label %main_bb178

main_bb177:                                       ; preds = %main_bb176
  %"1027" = load i8* @"'__CS_round", align 1
  %"1028" = zext i8 %"1027" to i64
  %"1029" = getelementptr inbounds [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 %"1028"
  %"1030" = getelementptr inbounds [3 x i8]* %"1029", i32 0, i64 2
  store i8 2, i8* %"1030", align 1
  br label %main_bb178

main_bb178:                                       ; preds = %main_bb176, %main_bb177, %main_bb175
  %"1031" = getelementptr [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 0, i64 0
  %"1032" = load i8* %"1031", align 1
  %"1033" = zext i8 %"1032" to i32
  %"1034" = getelementptr inbounds [3 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 1
  %"1035" = getelementptr inbounds [3 x i8]* %"1034", i32 0, i64 0
  %"1036" = load i8* %"1035", align 1
  %"1037" = zext i8 %"1036" to i32
  %"1038" = icmp eq i32 %"1033", %"1037"
  %"1039" = zext i1 %"1038" to i32
  call void @__VERIFIER_assume(i32 %"1039")
  %"1040" = getelementptr [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 1, i64 0
  %"1041" = load i8* %"1040", align 1
  %"1042" = zext i8 %"1041" to i32
  %"1043" = getelementptr inbounds [3 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 2
  %"1044" = getelementptr inbounds [3 x i8]* %"1043", i32 0, i64 0
  %"1045" = load i8* %"1044", align 1
  %"1046" = zext i8 %"1045" to i32
  %"1047" = icmp eq i32 %"1042", %"1046"
  %"1048" = zext i1 %"1047" to i32
  call void @__VERIFIER_assume(i32 %"1048")
  %"1049" = getelementptr [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 0, i64 1
  %"1050" = load i8* %"1049", align 1
  %"1051" = zext i8 %"1050" to i32
  %"1052" = getelementptr inbounds [3 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 1
  %"1053" = getelementptr inbounds [3 x i8]* %"1052", i32 0, i64 1
  %"1054" = load i8* %"1053", align 1
  %"1055" = zext i8 %"1054" to i32
  %"1056" = icmp eq i32 %"1051", %"1055"
  %"1057" = zext i1 %"1056" to i32
  call void @__VERIFIER_assume(i32 %"1057")
  %"1058" = getelementptr [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 1, i64 1
  %"1059" = load i8* %"1058", align 1
  %"1060" = zext i8 %"1059" to i32
  %"1061" = getelementptr inbounds [3 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 2
  %"1062" = getelementptr inbounds [3 x i8]* %"1061", i32 0, i64 1
  %"1063" = load i8* %"1062", align 1
  %"1064" = zext i8 %"1063" to i32
  %"1065" = icmp eq i32 %"1060", %"1064"
  %"1066" = zext i1 %"1065" to i32
  call void @__VERIFIER_assume(i32 %"1066")
  %"1067" = getelementptr [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 0, i64 2
  %"1068" = load i8* %"1067", align 1
  %"1069" = zext i8 %"1068" to i32
  %"1070" = getelementptr inbounds [3 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 1
  %"1071" = getelementptr inbounds [3 x i8]* %"1070", i32 0, i64 2
  %"1072" = load i8* %"1071", align 1
  %"1073" = zext i8 %"1072" to i32
  %"1074" = icmp eq i32 %"1069", %"1073"
  %"1075" = zext i1 %"1074" to i32
  call void @__VERIFIER_assume(i32 %"1075")
  %"1076" = getelementptr [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 1, i64 2
  %"1077" = load i8* %"1076", align 1
  %"1078" = zext i8 %"1077" to i32
  %"1079" = getelementptr inbounds [3 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 2
  %"1080" = getelementptr inbounds [3 x i8]* %"1079", i32 0, i64 2
  %"1081" = load i8* %"1080", align 1
  %"1082" = zext i8 %"1081" to i32
  %"1083" = icmp eq i32 %"1078", %"1082"
  %"1084" = zext i1 %"1083" to i32
  call void @__VERIFIER_assume(i32 %"1084")
  %"1085" = getelementptr [3 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 0, i64 0
  %"1086" = load i8** %"1085", align 8
  %"1087" = getelementptr inbounds [3 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 1
  %"1088" = getelementptr inbounds [3 x i8*]* %"1087", i32 0, i64 0
  %"1089" = load i8** %"1088", align 8
  %"1090" = icmp eq i8* %"1086", %"1089"
  %"1091" = zext i1 %"1090" to i32
  call void @__VERIFIER_assume(i32 %"1091")
  %"1092" = getelementptr [3 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 1, i64 0
  %"1093" = load i8** %"1092", align 8
  %"1094" = getelementptr inbounds [3 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 2
  %"1095" = getelementptr inbounds [3 x i8*]* %"1094", i32 0, i64 0
  %"1096" = load i8** %"1095", align 8
  %"1097" = icmp eq i8* %"1093", %"1096"
  %"1098" = zext i1 %"1097" to i32
  call void @__VERIFIER_assume(i32 %"1098")
  %"1099" = getelementptr [3 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 0, i64 1
  %"1100" = load i8** %"1099", align 8
  %"1101" = getelementptr inbounds [3 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 1
  %"1102" = getelementptr inbounds [3 x i8*]* %"1101", i32 0, i64 1
  %"1103" = load i8** %"1102", align 8
  %"1104" = icmp eq i8* %"1100", %"1103"
  %"1105" = zext i1 %"1104" to i32
  call void @__VERIFIER_assume(i32 %"1105")
  %"1106" = getelementptr [3 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 1, i64 1
  %"1107" = load i8** %"1106", align 8
  %"1108" = getelementptr inbounds [3 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 2
  %"1109" = getelementptr inbounds [3 x i8*]* %"1108", i32 0, i64 1
  %"1110" = load i8** %"1109", align 8
  %"1111" = icmp eq i8* %"1107", %"1110"
  %"1112" = zext i1 %"1111" to i32
  call void @__VERIFIER_assume(i32 %"1112")
  %"1113" = getelementptr [3 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 0, i64 2
  %"1114" = load i8** %"1113", align 8
  %"1115" = getelementptr inbounds [3 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 1
  %"1116" = getelementptr inbounds [3 x i8*]* %"1115", i32 0, i64 2
  %"1117" = load i8** %"1116", align 8
  %"1118" = icmp eq i8* %"1114", %"1117"
  %"1119" = zext i1 %"1118" to i32
  call void @__VERIFIER_assume(i32 %"1119")
  %"1120" = getelementptr [3 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 1, i64 2
  %"1121" = load i8** %"1120", align 8
  %"1122" = getelementptr inbounds [3 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 2
  %"1123" = getelementptr inbounds [3 x i8*]* %"1122", i32 0, i64 2
  %"1124" = load i8** %"1123", align 8
  %"1125" = icmp eq i8* %"1121", %"1124"
  %"1126" = zext i1 %"1125" to i32
  call void @__VERIFIER_assume(i32 %"1126")
  %"1127" = getelementptr [3 x i32]* @flag1, i32 0, i64 0
  %"1128" = load i32* %"1127", align 4
  %"1129" = getelementptr inbounds [3 x i32]* %__CS_cp_flag1, i32 0, i64 1
  %"1130" = load i32* %"1129", align 4
  %"1131" = icmp eq i32 %"1128", %"1130"
  %"1132" = zext i1 %"1131" to i32
  call void @__VERIFIER_assume(i32 %"1132")
  %"1133" = getelementptr [3 x i32]* @flag1, i32 0, i64 1
  %"1134" = load i32* %"1133", align 4
  %"1135" = getelementptr inbounds [3 x i32]* %__CS_cp_flag1, i32 0, i64 2
  %"1136" = load i32* %"1135", align 4
  %"1137" = icmp eq i32 %"1134", %"1136"
  %"1138" = zext i1 %"1137" to i32
  call void @__VERIFIER_assume(i32 %"1138")
  %"1139" = getelementptr [3 x i32]* @flag2, i32 0, i64 0
  %"1140" = load i32* %"1139", align 4
  %"1141" = getelementptr inbounds [3 x i32]* %__CS_cp_flag2, i32 0, i64 1
  %"1142" = load i32* %"1141", align 4
  %"1143" = icmp eq i32 %"1140", %"1142"
  %"1144" = zext i1 %"1143" to i32
  call void @__VERIFIER_assume(i32 %"1144")
  %"1145" = getelementptr [3 x i32]* @flag2, i32 0, i64 1
  %"1146" = load i32* %"1145", align 4
  %"1147" = getelementptr inbounds [3 x i32]* %__CS_cp_flag2, i32 0, i64 2
  %"1148" = load i32* %"1147", align 4
  %"1149" = icmp eq i32 %"1146", %"1148"
  %"1150" = zext i1 %"1149" to i32
  call void @__VERIFIER_assume(i32 %"1150")
  %"1151" = getelementptr [3 x i32]* @turn, i32 0, i64 0
  %"1152" = load i32* %"1151", align 4
  %"1153" = getelementptr inbounds [3 x i32]* %__CS_cp_turn, i32 0, i64 1
  %"1154" = load i32* %"1153", align 4
  %"1155" = icmp eq i32 %"1152", %"1154"
  %"1156" = zext i1 %"1155" to i32
  call void @__VERIFIER_assume(i32 %"1156")
  %"1157" = getelementptr [3 x i32]* @turn, i32 0, i64 1
  %"1158" = load i32* %"1157", align 4
  %"1159" = getelementptr inbounds [3 x i32]* %__CS_cp_turn, i32 0, i64 2
  %"1160" = load i32* %"1159", align 4
  %"1161" = icmp eq i32 %"1158", %"1160"
  %"1162" = zext i1 %"1161" to i32
  call void @__VERIFIER_assume(i32 %"1162")
  %"1163" = getelementptr [3 x i32]* @x, i32 0, i64 0
  %"1164" = load i32* %"1163", align 4
  %"1165" = getelementptr inbounds [3 x i32]* %__CS_cp_x, i32 0, i64 1
  %"1166" = load i32* %"1165", align 4
  %"1167" = icmp eq i32 %"1164", %"1166"
  %"1168" = zext i1 %"1167" to i32
  call void @__VERIFIER_assume(i32 %"1168")
  %"1169" = getelementptr [3 x i32]* @x, i32 0, i64 1
  %"1170" = load i32* %"1169", align 4
  %"1171" = getelementptr inbounds [3 x i32]* %__CS_cp_x, i32 0, i64 2
  %"1172" = load i32* %"1171", align 4
  %"1173" = icmp eq i32 %"1170", %"1172"
  %"1174" = zext i1 %"1173" to i32
  call void @__VERIFIER_assume(i32 %"1174")
  %"1175" = load i8* @"'__CS_error", align 1
  %"1176" = zext i8 %"1175" to i32
  %"1177" = icmp ne i32 %"1176", 1
  br i1 %"1177", label %main___VERIFIER_assert.exit, label %main_bb179

main___VERIFIER_assert.exit:                      ; preds = %main_bb178
  ret i32 0

main_bb179:                                       ; preds = %main_bb178
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

