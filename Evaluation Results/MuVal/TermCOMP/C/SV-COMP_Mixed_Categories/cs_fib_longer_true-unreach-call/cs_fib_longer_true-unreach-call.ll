; ModuleID = 'Benchmarks/TermCOMP/C/SV-COMP_Mixed_Categories/cs_fib_longer_true-unreach-call/cs_fib_longer_true-unreach-call.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.__CS__u = type { [7 x i32] }

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
@__CS_thread_lockedon = common global [7 x [3 x i8*]] zeroinitializer, align 16
@__CS_thread_status = common global [7 x [3 x i8]] zeroinitializer, align 16
@__CS_thread_allocated = common global [3 x i8] zeroinitializer, align 1
@__CS_thread_born_round = common global [3 x i8] zeroinitializer, align 1
@__CS_thread = common global [3 x i8* (i8*)*] zeroinitializer, align 16
@i = global [7 x i32] [i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
@j = global [7 x i32] [i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0], align 16
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
  %"6" = icmp slt i32 %"5", 7
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
  %"17" = icmp eq i32 %"16", 6
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
  %"45" = getelementptr inbounds [7 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 %"44"
  %"46" = load i8* @"'__CS_round", align 1
  %"47" = zext i8 %"46" to i64
  %"48" = getelementptr inbounds [7 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 %"47"
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
  %"59" = getelementptr inbounds [7 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 %"58"
  %"60" = load i8* @"'__CS_round", align 1
  %"61" = zext i8 %"60" to i64
  %"62" = getelementptr inbounds [7 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 %"61"
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
  %"81" = getelementptr inbounds [7 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 %"80"
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
  %"101" = getelementptr inbounds [7 x [3 x i8]]* @__CS_thread_status, i32 0, i64 %"100"
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
  %"109" = getelementptr inbounds [7 x [3 x i8]]* @__CS_thread_status, i32 0, i64 %"108"
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
  %"117" = getelementptr inbounds [7 x [3 x i8]]* @__CS_thread_status, i32 0, i64 %"116"
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
  %"142" = getelementptr inbounds [7 x [3 x i8]]* @__CS_thread_status, i32 0, i64 %"141"
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
define i8* @t1(i8* %arg) #0 {
t1_bb59:
  %"147" = call i8* @__kittel_nondef.2()
  %"148" = call i8 @__kittel_nondef.1() #4
  %"149" = load i8* @"'__CS_round", align 1
  %"150" = zext i8 %"149" to i32
  %"151" = zext i8 %"148" to i32
  %"152" = add nsw i32 %"150", %"151"
  %"153" = icmp slt i32 %"152", 7
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
  br i1 %"161", label %t1_bb60, label %t1_bb61

t1_bb60:                                          ; preds = %t1_bb59
  %"162" = load i8* @"'__CS_round", align 1
  %"163" = zext i8 %"162" to i32
  %"164" = icmp eq i32 %"163", 6
  br i1 %"164", label %t1___CS_cs.exit, label %t1_bb61

t1_bb61:                                          ; preds = %t1_bb60, %t1_bb59
  %"165" = load i8* @"'__CS_ret", align 1
  %"166" = zext i8 %"165" to i32
  br label %t1___CS_cs.exit

t1___CS_cs.exit:                                  ; preds = %t1_bb60, %t1_bb61
  %"167" = phi i32 [ %"166", %t1_bb61 ], [ 1, %t1_bb60 ]
  %"168" = trunc i32 %"167" to i8
  store i8 %"168", i8* @"'__CS_ret", align 1
  %"169" = load i8* @"'__CS_ret", align 1
  %"170" = zext i8 %"169" to i32
  %"171" = icmp ne i32 %"170", 0
  br i1 %"171", label %t1_bb72, label %t1_bb62

t1_bb62:                                          ; preds = %t1___CS_cs.exit, %t1_bb68
  %k.0 = phi i32 [ %"224", %t1_bb68 ], [ 0, %t1___CS_cs.exit ]
  %"172" = icmp slt i32 %k.0, 6
  %"173" = call i8 @__kittel_nondef.1() #4
  %"174" = load i8* @"'__CS_round", align 1
  %"175" = zext i8 %"174" to i32
  %"176" = zext i8 %"173" to i32
  %"177" = add nsw i32 %"175", %"176"
  %"178" = icmp slt i32 %"177", 7
  %"179" = zext i1 %"178" to i32
  call void @__VERIFIER_assume(i32 %"179") #4
  %"180" = zext i8 %"173" to i32
  %"181" = load i8* @"'__CS_round", align 1
  %"182" = zext i8 %"181" to i32
  %"183" = add nsw i32 %"182", %"180"
  %"184" = trunc i32 %"183" to i8
  store i8 %"184", i8* @"'__CS_round", align 1
  %"185" = call i32 (...)* @nondet_int() #4
  %"186" = icmp ne i32 %"185", 0
  br i1 %"172", label %t1_bb63, label %t1_bb69

t1_bb63:                                          ; preds = %t1_bb62
  br i1 %"186", label %t1_bb64, label %t1_bb65

t1_bb64:                                          ; preds = %t1_bb63
  %"187" = load i8* @"'__CS_round", align 1
  %"188" = zext i8 %"187" to i32
  %"189" = icmp eq i32 %"188", 6
  br i1 %"189", label %t1___CS_cs.exit1, label %t1_bb65

t1_bb65:                                          ; preds = %t1_bb64, %t1_bb63
  %"190" = load i8* @"'__CS_ret", align 1
  %"191" = zext i8 %"190" to i32
  br label %t1___CS_cs.exit1

t1___CS_cs.exit1:                                 ; preds = %t1_bb64, %t1_bb65
  %"192" = phi i32 [ %"191", %t1_bb65 ], [ 1, %t1_bb64 ]
  %"193" = trunc i32 %"192" to i8
  store i8 %"193", i8* @"'__CS_ret", align 1
  %"194" = load i8* @"'__CS_ret", align 1
  %"195" = zext i8 %"194" to i32
  %"196" = icmp ne i32 %"195", 0
  br i1 %"196", label %t1_bb72, label %t1_bb66

t1_bb66:                                          ; preds = %t1___CS_cs.exit1
  %"197" = load i8* @"'__CS_round", align 1
  %"198" = zext i8 %"197" to i64
  %"199" = getelementptr inbounds [7 x i32]* @i, i32 0, i64 %"198"
  %"200" = load i32* %"199", align 4
  %"201" = load i8* @"'__CS_round", align 1
  %"202" = zext i8 %"201" to i64
  %"203" = getelementptr %union.__CS__u* @__CS_u, i32 0, i32 0
  %"204" = getelementptr inbounds [7 x i32]* %"203", i32 0, i64 %"202"
  store i32 %"200", i32* %"204", align 4
  %"205" = load i8* @"'__CS_round", align 1
  %"206" = zext i8 %"205" to i64
  %"207" = getelementptr inbounds [7 x i32]* @j, i32 0, i64 %"206"
  %"208" = load i32* %"207", align 4
  %"209" = load i8* @"'__CS_round", align 1
  %"210" = zext i8 %"209" to i64
  %"211" = getelementptr inbounds [7 x i32]* @i, i32 0, i64 %"210"
  %"212" = load i32* %"211", align 4
  %"213" = add nsw i32 %"212", %"208"
  store i32 %"213", i32* %"211", align 4
  %"214" = load i8* @"'__CS_ret", align 1
  %"215" = icmp ne i8 %"214", 0
  br i1 %"215", label %t1_bb67, label %t1_bb68

t1_bb67:                                          ; preds = %t1_bb66
  %"216" = load i8* @"'__CS_round", align 1
  %"217" = zext i8 %"216" to i64
  %"218" = getelementptr %union.__CS__u* @__CS_u, i32 0, i32 0
  %"219" = getelementptr inbounds [7 x i32]* %"218", i32 0, i64 %"217"
  %"220" = load i32* %"219", align 4
  %"221" = load i8* @"'__CS_round", align 1
  %"222" = zext i8 %"221" to i64
  %"223" = getelementptr inbounds [7 x i32]* @i, i32 0, i64 %"222"
  store i32 %"220", i32* %"223", align 4
  br label %t1_bb68

t1_bb68:                                          ; preds = %t1_bb66, %t1_bb67
  %"224" = add nsw i32 %k.0, 1
  br label %t1_bb62

t1_bb69:                                          ; preds = %t1_bb62
  br i1 %"186", label %t1_bb70, label %t1_bb71

t1_bb70:                                          ; preds = %t1_bb69
  %"225" = load i8* @"'__CS_round", align 1
  %"226" = zext i8 %"225" to i32
  %"227" = icmp eq i32 %"226", 6
  br i1 %"227", label %t1___CS_cs.exit2, label %t1_bb71

t1_bb71:                                          ; preds = %t1_bb70, %t1_bb69
  %"228" = load i8* @"'__CS_ret", align 1
  %"229" = zext i8 %"228" to i32
  br label %t1___CS_cs.exit2

t1___CS_cs.exit2:                                 ; preds = %t1_bb70, %t1_bb71
  %"230" = phi i32 [ %"229", %t1_bb71 ], [ 1, %t1_bb70 ]
  %"231" = trunc i32 %"230" to i8
  store i8 %"231", i8* @"'__CS_ret", align 1
  %"232" = load i8* @"'__CS_ret", align 1
  %"233" = zext i8 %"232" to i32
  %"234" = icmp ne i32 %"233", 0
  br i1 %"234", label %t1_bb72, label %t1_bb73

t1_bb72:                                          ; preds = %t1___CS_cs.exit2, %t1___CS_cs.exit1, %t1___CS_cs.exit
  ret i8* null

t1_bb73:                                          ; preds = %t1___CS_cs.exit2
  %"235" = call i8 @__kittel_nondef.1() #4
  %"236" = load i8* @"'__CS_round", align 1
  %"237" = zext i8 %"236" to i32
  %"238" = zext i8 %"235" to i32
  %"239" = add nsw i32 %"237", %"238"
  %"240" = icmp slt i32 %"239", 7
  %"241" = zext i1 %"240" to i32
  call void @__VERIFIER_assume(i32 %"241") #4
  %"242" = zext i8 %"235" to i32
  %"243" = load i8* @"'__CS_round", align 1
  %"244" = zext i8 %"243" to i32
  %"245" = add nsw i32 %"244", %"242"
  %"246" = trunc i32 %"245" to i8
  store i8 %"246", i8* @"'__CS_round", align 1
  %"247" = call i32 (...)* @nondet_int() #4
  %"248" = icmp ne i32 %"247", 0
  br i1 %"248", label %t1_bb74, label %t1_bb75

t1_bb74:                                          ; preds = %t1_bb73
  %"249" = load i8* @"'__CS_round", align 1
  %"250" = zext i8 %"249" to i32
  %"251" = icmp eq i32 %"250", 6
  br i1 %"251", label %t1___CS_cs.exit3, label %t1_bb75

t1_bb75:                                          ; preds = %t1_bb74, %t1_bb73
  %"252" = load i8* @"'__CS_ret", align 1
  %"253" = zext i8 %"252" to i32
  br label %t1___CS_cs.exit3

t1___CS_cs.exit3:                                 ; preds = %t1_bb74, %t1_bb75
  %"254" = phi i32 [ %"253", %t1_bb75 ], [ 1, %t1_bb74 ]
  %"255" = trunc i32 %"254" to i8
  store i8 %"255", i8* @"'__CS_ret", align 1
  %"256" = load i8* @"'__CS_ret", align 1
  %"257" = zext i8 %"256" to i32
  %"258" = icmp ne i32 %"257", 0
  %. = select i1 %"258", i8* null, i8* %"147"
  ret i8* %.
}

; Function Attrs: nounwind uwtable
define i8* @t2(i8* %arg) #0 {
t2_bb76:
  %"259" = call i8* @__kittel_nondef.2()
  %"260" = call i8 @__kittel_nondef.1() #4
  %"261" = load i8* @"'__CS_round", align 1
  %"262" = zext i8 %"261" to i32
  %"263" = zext i8 %"260" to i32
  %"264" = add nsw i32 %"262", %"263"
  %"265" = icmp slt i32 %"264", 7
  %"266" = zext i1 %"265" to i32
  call void @__VERIFIER_assume(i32 %"266") #4
  %"267" = zext i8 %"260" to i32
  %"268" = load i8* @"'__CS_round", align 1
  %"269" = zext i8 %"268" to i32
  %"270" = add nsw i32 %"269", %"267"
  %"271" = trunc i32 %"270" to i8
  store i8 %"271", i8* @"'__CS_round", align 1
  %"272" = call i32 (...)* @nondet_int() #4
  %"273" = icmp ne i32 %"272", 0
  br i1 %"273", label %t2_bb77, label %t2_bb78

t2_bb77:                                          ; preds = %t2_bb76
  %"274" = load i8* @"'__CS_round", align 1
  %"275" = zext i8 %"274" to i32
  %"276" = icmp eq i32 %"275", 6
  br i1 %"276", label %t2___CS_cs.exit, label %t2_bb78

t2_bb78:                                          ; preds = %t2_bb77, %t2_bb76
  %"277" = load i8* @"'__CS_ret", align 1
  %"278" = zext i8 %"277" to i32
  br label %t2___CS_cs.exit

t2___CS_cs.exit:                                  ; preds = %t2_bb77, %t2_bb78
  %"279" = phi i32 [ %"278", %t2_bb78 ], [ 1, %t2_bb77 ]
  %"280" = trunc i32 %"279" to i8
  store i8 %"280", i8* @"'__CS_ret", align 1
  %"281" = load i8* @"'__CS_ret", align 1
  %"282" = zext i8 %"281" to i32
  %"283" = icmp ne i32 %"282", 0
  br i1 %"283", label %t2_bb89, label %t2_bb79

t2_bb79:                                          ; preds = %t2___CS_cs.exit, %t2_bb85
  %k.0 = phi i32 [ %"336", %t2_bb85 ], [ 0, %t2___CS_cs.exit ]
  %"284" = icmp slt i32 %k.0, 6
  %"285" = call i8 @__kittel_nondef.1() #4
  %"286" = load i8* @"'__CS_round", align 1
  %"287" = zext i8 %"286" to i32
  %"288" = zext i8 %"285" to i32
  %"289" = add nsw i32 %"287", %"288"
  %"290" = icmp slt i32 %"289", 7
  %"291" = zext i1 %"290" to i32
  call void @__VERIFIER_assume(i32 %"291") #4
  %"292" = zext i8 %"285" to i32
  %"293" = load i8* @"'__CS_round", align 1
  %"294" = zext i8 %"293" to i32
  %"295" = add nsw i32 %"294", %"292"
  %"296" = trunc i32 %"295" to i8
  store i8 %"296", i8* @"'__CS_round", align 1
  %"297" = call i32 (...)* @nondet_int() #4
  %"298" = icmp ne i32 %"297", 0
  br i1 %"284", label %t2_bb80, label %t2_bb86

t2_bb80:                                          ; preds = %t2_bb79
  br i1 %"298", label %t2_bb81, label %t2_bb82

t2_bb81:                                          ; preds = %t2_bb80
  %"299" = load i8* @"'__CS_round", align 1
  %"300" = zext i8 %"299" to i32
  %"301" = icmp eq i32 %"300", 6
  br i1 %"301", label %t2___CS_cs.exit1, label %t2_bb82

t2_bb82:                                          ; preds = %t2_bb81, %t2_bb80
  %"302" = load i8* @"'__CS_ret", align 1
  %"303" = zext i8 %"302" to i32
  br label %t2___CS_cs.exit1

t2___CS_cs.exit1:                                 ; preds = %t2_bb81, %t2_bb82
  %"304" = phi i32 [ %"303", %t2_bb82 ], [ 1, %t2_bb81 ]
  %"305" = trunc i32 %"304" to i8
  store i8 %"305", i8* @"'__CS_ret", align 1
  %"306" = load i8* @"'__CS_ret", align 1
  %"307" = zext i8 %"306" to i32
  %"308" = icmp ne i32 %"307", 0
  br i1 %"308", label %t2_bb89, label %t2_bb83

t2_bb83:                                          ; preds = %t2___CS_cs.exit1
  %"309" = load i8* @"'__CS_round", align 1
  %"310" = zext i8 %"309" to i64
  %"311" = getelementptr inbounds [7 x i32]* @j, i32 0, i64 %"310"
  %"312" = load i32* %"311", align 4
  %"313" = load i8* @"'__CS_round", align 1
  %"314" = zext i8 %"313" to i64
  %"315" = getelementptr %union.__CS__u* @__CS_u, i32 0, i32 0
  %"316" = getelementptr inbounds [7 x i32]* %"315", i32 0, i64 %"314"
  store i32 %"312", i32* %"316", align 4
  %"317" = load i8* @"'__CS_round", align 1
  %"318" = zext i8 %"317" to i64
  %"319" = getelementptr inbounds [7 x i32]* @i, i32 0, i64 %"318"
  %"320" = load i32* %"319", align 4
  %"321" = load i8* @"'__CS_round", align 1
  %"322" = zext i8 %"321" to i64
  %"323" = getelementptr inbounds [7 x i32]* @j, i32 0, i64 %"322"
  %"324" = load i32* %"323", align 4
  %"325" = add nsw i32 %"324", %"320"
  store i32 %"325", i32* %"323", align 4
  %"326" = load i8* @"'__CS_ret", align 1
  %"327" = icmp ne i8 %"326", 0
  br i1 %"327", label %t2_bb84, label %t2_bb85

t2_bb84:                                          ; preds = %t2_bb83
  %"328" = load i8* @"'__CS_round", align 1
  %"329" = zext i8 %"328" to i64
  %"330" = getelementptr %union.__CS__u* @__CS_u, i32 0, i32 0
  %"331" = getelementptr inbounds [7 x i32]* %"330", i32 0, i64 %"329"
  %"332" = load i32* %"331", align 4
  %"333" = load i8* @"'__CS_round", align 1
  %"334" = zext i8 %"333" to i64
  %"335" = getelementptr inbounds [7 x i32]* @j, i32 0, i64 %"334"
  store i32 %"332", i32* %"335", align 4
  br label %t2_bb85

t2_bb85:                                          ; preds = %t2_bb83, %t2_bb84
  %"336" = add nsw i32 %k.0, 1
  br label %t2_bb79

t2_bb86:                                          ; preds = %t2_bb79
  br i1 %"298", label %t2_bb87, label %t2_bb88

t2_bb87:                                          ; preds = %t2_bb86
  %"337" = load i8* @"'__CS_round", align 1
  %"338" = zext i8 %"337" to i32
  %"339" = icmp eq i32 %"338", 6
  br i1 %"339", label %t2___CS_cs.exit2, label %t2_bb88

t2_bb88:                                          ; preds = %t2_bb87, %t2_bb86
  %"340" = load i8* @"'__CS_ret", align 1
  %"341" = zext i8 %"340" to i32
  br label %t2___CS_cs.exit2

t2___CS_cs.exit2:                                 ; preds = %t2_bb87, %t2_bb88
  %"342" = phi i32 [ %"341", %t2_bb88 ], [ 1, %t2_bb87 ]
  %"343" = trunc i32 %"342" to i8
  store i8 %"343", i8* @"'__CS_ret", align 1
  %"344" = load i8* @"'__CS_ret", align 1
  %"345" = zext i8 %"344" to i32
  %"346" = icmp ne i32 %"345", 0
  br i1 %"346", label %t2_bb89, label %t2_bb90

t2_bb89:                                          ; preds = %t2___CS_cs.exit2, %t2___CS_cs.exit1, %t2___CS_cs.exit
  ret i8* null

t2_bb90:                                          ; preds = %t2___CS_cs.exit2
  %"347" = call i8 @__kittel_nondef.1() #4
  %"348" = load i8* @"'__CS_round", align 1
  %"349" = zext i8 %"348" to i32
  %"350" = zext i8 %"347" to i32
  %"351" = add nsw i32 %"349", %"350"
  %"352" = icmp slt i32 %"351", 7
  %"353" = zext i1 %"352" to i32
  call void @__VERIFIER_assume(i32 %"353") #4
  %"354" = zext i8 %"347" to i32
  %"355" = load i8* @"'__CS_round", align 1
  %"356" = zext i8 %"355" to i32
  %"357" = add nsw i32 %"356", %"354"
  %"358" = trunc i32 %"357" to i8
  store i8 %"358", i8* @"'__CS_round", align 1
  %"359" = call i32 (...)* @nondet_int() #4
  %"360" = icmp ne i32 %"359", 0
  br i1 %"360", label %t2_bb91, label %t2_bb92

t2_bb91:                                          ; preds = %t2_bb90
  %"361" = load i8* @"'__CS_round", align 1
  %"362" = zext i8 %"361" to i32
  %"363" = icmp eq i32 %"362", 6
  br i1 %"363", label %t2___CS_cs.exit3, label %t2_bb92

t2_bb92:                                          ; preds = %t2_bb91, %t2_bb90
  %"364" = load i8* @"'__CS_ret", align 1
  %"365" = zext i8 %"364" to i32
  br label %t2___CS_cs.exit3

t2___CS_cs.exit3:                                 ; preds = %t2_bb91, %t2_bb92
  %"366" = phi i32 [ %"365", %t2_bb92 ], [ 1, %t2_bb91 ]
  %"367" = trunc i32 %"366" to i8
  store i8 %"367", i8* @"'__CS_ret", align 1
  %"368" = load i8* @"'__CS_ret", align 1
  %"369" = zext i8 %"368" to i32
  %"370" = icmp ne i32 %"369", 0
  %. = select i1 %"370", i8* null, i8* %"259"
  ret i8* %.
}

; Function Attrs: nounwind uwtable
define i8* @main_thread(i8* %arg) #0 {
main_thread_bb93:
  %"371" = call i8* @__kittel_nondef.2()
  %"372" = call i8 @__kittel_nondef.1() #4
  %"373" = load i8* @"'__CS_round", align 1
  %"374" = zext i8 %"373" to i32
  %"375" = zext i8 %"372" to i32
  %"376" = add nsw i32 %"374", %"375"
  %"377" = icmp slt i32 %"376", 7
  %"378" = zext i1 %"377" to i32
  call void @__VERIFIER_assume(i32 %"378") #4
  %"379" = zext i8 %"372" to i32
  %"380" = load i8* @"'__CS_round", align 1
  %"381" = zext i8 %"380" to i32
  %"382" = add nsw i32 %"381", %"379"
  %"383" = trunc i32 %"382" to i8
  store i8 %"383", i8* @"'__CS_round", align 1
  %"384" = call i32 (...)* @nondet_int() #4
  %"385" = icmp ne i32 %"384", 0
  br i1 %"385", label %main_thread_bb94, label %main_thread_bb95

main_thread_bb94:                                 ; preds = %main_thread_bb93
  %"386" = load i8* @"'__CS_round", align 1
  %"387" = zext i8 %"386" to i32
  %"388" = icmp eq i32 %"387", 6
  br i1 %"388", label %main_thread___CS_cs.exit, label %main_thread_bb95

main_thread_bb95:                                 ; preds = %main_thread_bb94, %main_thread_bb93
  %"389" = load i8* @"'__CS_ret", align 1
  %"390" = zext i8 %"389" to i32
  br label %main_thread___CS_cs.exit

main_thread___CS_cs.exit:                         ; preds = %main_thread_bb94, %main_thread_bb95
  %"391" = phi i32 [ %"390", %main_thread_bb95 ], [ 1, %main_thread_bb94 ]
  %"392" = trunc i32 %"391" to i8
  store i8 %"392", i8* @"'__CS_ret", align 1
  %"393" = load i8* @"'__CS_ret", align 1
  %"394" = zext i8 %"393" to i32
  %"395" = icmp ne i32 %"394", 0
  br i1 %"395", label %main_thread_bb110, label %main_thread_bb96

main_thread_bb96:                                 ; preds = %main_thread___CS_cs.exit
  %"396" = load i8* @"'__CS_thread_index", align 1
  %"397" = zext i8 %"396" to i32
  %"398" = icmp eq i32 %"397", 2
  br i1 %"398", label %main_thread___CS_pthread_create.exit, label %main_thread_bb97

main_thread_bb97:                                 ; preds = %main_thread_bb96
  %"399" = load i8* @"'__CS_thread_index", align 1
  %"400" = add i8 %"399", 1
  store i8 %"400", i8* @"'__CS_thread_index", align 1
  %"401" = load i8* @"'__CS_thread_index", align 1
  %"402" = zext i8 %"401" to i64
  %"403" = getelementptr inbounds [3 x i8]* @__CS_thread_allocated, i32 0, i64 %"402"
  store i8 1, i8* %"403", align 1
  %"404" = load i8* @"'__CS_round", align 1
  %"405" = load i8* @"'__CS_thread_index", align 1
  %"406" = zext i8 %"405" to i64
  %"407" = getelementptr inbounds [3 x i8]* @__CS_thread_born_round, i32 0, i64 %"406"
  store i8 %"404", i8* %"407", align 1
  %"408" = load i8* @"'__CS_thread_index", align 1
  %"409" = zext i8 %"408" to i64
  %"410" = getelementptr inbounds [3 x i8* (i8*)*]* @__CS_thread, i32 0, i64 %"409"
  store i8* (i8*)* @t1, i8* (i8*)** %"410", align 8
  %"411" = load i8* @"'__CS_thread_index", align 1
  %"412" = zext i8 %"411" to i64
  %"413" = load i8* @"'__CS_round", align 1
  %"414" = zext i8 %"413" to i64
  %"415" = getelementptr inbounds [7 x [3 x i8]]* @__CS_thread_status, i32 0, i64 %"414"
  %"416" = getelementptr inbounds [3 x i8]* %"415", i32 0, i64 %"412"
  store i8 1, i8* %"416", align 1
  br label %main_thread___CS_pthread_create.exit

main_thread___CS_pthread_create.exit:             ; preds = %main_thread_bb96, %main_thread_bb97
  %"417" = call i8 @__kittel_nondef.1() #4
  %"418" = load i8* @"'__CS_round", align 1
  %"419" = zext i8 %"418" to i32
  %"420" = zext i8 %"417" to i32
  %"421" = add nsw i32 %"419", %"420"
  %"422" = icmp slt i32 %"421", 7
  %"423" = zext i1 %"422" to i32
  call void @__VERIFIER_assume(i32 %"423") #4
  %"424" = zext i8 %"417" to i32
  %"425" = load i8* @"'__CS_round", align 1
  %"426" = zext i8 %"425" to i32
  %"427" = add nsw i32 %"426", %"424"
  %"428" = trunc i32 %"427" to i8
  store i8 %"428", i8* @"'__CS_round", align 1
  %"429" = call i32 (...)* @nondet_int() #4
  %"430" = icmp ne i32 %"429", 0
  br i1 %"430", label %main_thread_bb98, label %main_thread_bb99

main_thread_bb98:                                 ; preds = %main_thread___CS_pthread_create.exit
  %"431" = load i8* @"'__CS_round", align 1
  %"432" = zext i8 %"431" to i32
  %"433" = icmp eq i32 %"432", 6
  br i1 %"433", label %main_thread___CS_cs.exit1, label %main_thread_bb99

main_thread_bb99:                                 ; preds = %main_thread_bb98, %main_thread___CS_pthread_create.exit
  %"434" = load i8* @"'__CS_ret", align 1
  %"435" = zext i8 %"434" to i32
  br label %main_thread___CS_cs.exit1

main_thread___CS_cs.exit1:                        ; preds = %main_thread_bb98, %main_thread_bb99
  %"436" = phi i32 [ %"435", %main_thread_bb99 ], [ 1, %main_thread_bb98 ]
  %"437" = trunc i32 %"436" to i8
  store i8 %"437", i8* @"'__CS_ret", align 1
  %"438" = load i8* @"'__CS_ret", align 1
  %"439" = zext i8 %"438" to i32
  %"440" = icmp ne i32 %"439", 0
  br i1 %"440", label %main_thread_bb110, label %main_thread_bb100

main_thread_bb100:                                ; preds = %main_thread___CS_cs.exit1
  %"441" = load i8* @"'__CS_thread_index", align 1
  %"442" = zext i8 %"441" to i32
  %"443" = icmp eq i32 %"442", 2
  br i1 %"443", label %main_thread___CS_pthread_create.exit3, label %main_thread_bb101

main_thread_bb101:                                ; preds = %main_thread_bb100
  %"444" = load i8* @"'__CS_thread_index", align 1
  %"445" = add i8 %"444", 1
  store i8 %"445", i8* @"'__CS_thread_index", align 1
  %"446" = load i8* @"'__CS_thread_index", align 1
  %"447" = zext i8 %"446" to i64
  %"448" = getelementptr inbounds [3 x i8]* @__CS_thread_allocated, i32 0, i64 %"447"
  store i8 1, i8* %"448", align 1
  %"449" = load i8* @"'__CS_round", align 1
  %"450" = load i8* @"'__CS_thread_index", align 1
  %"451" = zext i8 %"450" to i64
  %"452" = getelementptr inbounds [3 x i8]* @__CS_thread_born_round, i32 0, i64 %"451"
  store i8 %"449", i8* %"452", align 1
  %"453" = load i8* @"'__CS_thread_index", align 1
  %"454" = zext i8 %"453" to i64
  %"455" = getelementptr inbounds [3 x i8* (i8*)*]* @__CS_thread, i32 0, i64 %"454"
  store i8* (i8*)* @t2, i8* (i8*)** %"455", align 8
  %"456" = load i8* @"'__CS_thread_index", align 1
  %"457" = zext i8 %"456" to i64
  %"458" = load i8* @"'__CS_round", align 1
  %"459" = zext i8 %"458" to i64
  %"460" = getelementptr inbounds [7 x [3 x i8]]* @__CS_thread_status, i32 0, i64 %"459"
  %"461" = getelementptr inbounds [3 x i8]* %"460", i32 0, i64 %"457"
  store i8 1, i8* %"461", align 1
  br label %main_thread___CS_pthread_create.exit3

main_thread___CS_pthread_create.exit3:            ; preds = %main_thread_bb100, %main_thread_bb101
  %"462" = call i8 @__kittel_nondef.1() #4
  %"463" = load i8* @"'__CS_round", align 1
  %"464" = zext i8 %"463" to i32
  %"465" = zext i8 %"462" to i32
  %"466" = add nsw i32 %"464", %"465"
  %"467" = icmp slt i32 %"466", 7
  %"468" = zext i1 %"467" to i32
  call void @__VERIFIER_assume(i32 %"468") #4
  %"469" = zext i8 %"462" to i32
  %"470" = load i8* @"'__CS_round", align 1
  %"471" = zext i8 %"470" to i32
  %"472" = add nsw i32 %"471", %"469"
  %"473" = trunc i32 %"472" to i8
  store i8 %"473", i8* @"'__CS_round", align 1
  %"474" = call i32 (...)* @nondet_int() #4
  %"475" = icmp ne i32 %"474", 0
  br i1 %"475", label %main_thread_bb102, label %main_thread_bb103

main_thread_bb102:                                ; preds = %main_thread___CS_pthread_create.exit3
  %"476" = load i8* @"'__CS_round", align 1
  %"477" = zext i8 %"476" to i32
  %"478" = icmp eq i32 %"477", 6
  br i1 %"478", label %main_thread___CS_cs.exit4, label %main_thread_bb103

main_thread_bb103:                                ; preds = %main_thread_bb102, %main_thread___CS_pthread_create.exit3
  %"479" = load i8* @"'__CS_ret", align 1
  %"480" = zext i8 %"479" to i32
  br label %main_thread___CS_cs.exit4

main_thread___CS_cs.exit4:                        ; preds = %main_thread_bb102, %main_thread_bb103
  %"481" = phi i32 [ %"480", %main_thread_bb103 ], [ 1, %main_thread_bb102 ]
  %"482" = trunc i32 %"481" to i8
  store i8 %"482", i8* @"'__CS_ret", align 1
  %"483" = load i8* @"'__CS_ret", align 1
  %"484" = zext i8 %"483" to i32
  %"485" = icmp ne i32 %"484", 0
  br i1 %"485", label %main_thread_bb110, label %main_thread_bb104

main_thread_bb104:                                ; preds = %main_thread___CS_cs.exit4
  %"486" = load i8* @"'__CS_round", align 1
  %"487" = zext i8 %"486" to i64
  %"488" = getelementptr inbounds [7 x i32]* @i, i32 0, i64 %"487"
  %"489" = load i32* %"488", align 4
  %"490" = icmp sgt i32 %"489", 377
  br i1 %"490", label %main_thread_bb106, label %main_thread_bb105

main_thread_bb105:                                ; preds = %main_thread_bb104
  %"491" = load i8* @"'__CS_round", align 1
  %"492" = zext i8 %"491" to i64
  %"493" = getelementptr inbounds [7 x i32]* @j, i32 0, i64 %"492"
  %"494" = load i32* %"493", align 4
  %"495" = icmp sgt i32 %"494", 377
  br i1 %"495", label %main_thread_bb106, label %main_thread_bb111

main_thread_bb106:                                ; preds = %main_thread_bb105, %main_thread_bb104
  %"496" = call i8 @__kittel_nondef.1() #4
  %"497" = load i8* @"'__CS_round", align 1
  %"498" = zext i8 %"497" to i32
  %"499" = zext i8 %"496" to i32
  %"500" = add nsw i32 %"498", %"499"
  %"501" = icmp slt i32 %"500", 7
  %"502" = zext i1 %"501" to i32
  call void @__VERIFIER_assume(i32 %"502") #4
  %"503" = zext i8 %"496" to i32
  %"504" = load i8* @"'__CS_round", align 1
  %"505" = zext i8 %"504" to i32
  %"506" = add nsw i32 %"505", %"503"
  %"507" = trunc i32 %"506" to i8
  store i8 %"507", i8* @"'__CS_round", align 1
  %"508" = call i32 (...)* @nondet_int() #4
  %"509" = icmp ne i32 %"508", 0
  br i1 %"509", label %main_thread_bb107, label %main_thread_bb108

main_thread_bb107:                                ; preds = %main_thread_bb106
  %"510" = load i8* @"'__CS_round", align 1
  %"511" = zext i8 %"510" to i32
  %"512" = icmp eq i32 %"511", 6
  br i1 %"512", label %main_thread___CS_cs.exit5, label %main_thread_bb108

main_thread_bb108:                                ; preds = %main_thread_bb107, %main_thread_bb106
  %"513" = load i8* @"'__CS_ret", align 1
  %"514" = zext i8 %"513" to i32
  br label %main_thread___CS_cs.exit5

main_thread___CS_cs.exit5:                        ; preds = %main_thread_bb107, %main_thread_bb108
  %"515" = phi i32 [ %"514", %main_thread_bb108 ], [ 1, %main_thread_bb107 ]
  %"516" = trunc i32 %"515" to i8
  store i8 %"516", i8* @"'__CS_ret", align 1
  %"517" = load i8* @"'__CS_ret", align 1
  %"518" = zext i8 %"517" to i32
  %"519" = icmp ne i32 %"518", 0
  br i1 %"519", label %main_thread_bb110, label %main_thread_bb109

main_thread_bb109:                                ; preds = %main_thread___CS_cs.exit5
  store i8 1, i8* @"'__CS_error", align 1
  store i8 2, i8* @"'__CS_ret", align 1
  br label %main_thread_bb110

main_thread_bb110:                                ; preds = %main_thread___CS_cs.exit5, %main_thread___CS_cs.exit4, %main_thread___CS_cs.exit1, %main_thread___CS_cs.exit, %main_thread_bb109
  ret i8* null

main_thread_bb111:                                ; preds = %main_thread_bb105
  %"520" = call i8 @__kittel_nondef.1() #4
  %"521" = load i8* @"'__CS_round", align 1
  %"522" = zext i8 %"521" to i32
  %"523" = zext i8 %"520" to i32
  %"524" = add nsw i32 %"522", %"523"
  %"525" = icmp slt i32 %"524", 7
  %"526" = zext i1 %"525" to i32
  call void @__VERIFIER_assume(i32 %"526") #4
  %"527" = zext i8 %"520" to i32
  %"528" = load i8* @"'__CS_round", align 1
  %"529" = zext i8 %"528" to i32
  %"530" = add nsw i32 %"529", %"527"
  %"531" = trunc i32 %"530" to i8
  store i8 %"531", i8* @"'__CS_round", align 1
  %"532" = call i32 (...)* @nondet_int() #4
  %"533" = icmp ne i32 %"532", 0
  br i1 %"533", label %main_thread_bb112, label %main_thread_bb113

main_thread_bb112:                                ; preds = %main_thread_bb111
  %"534" = load i8* @"'__CS_round", align 1
  %"535" = zext i8 %"534" to i32
  %"536" = icmp eq i32 %"535", 6
  br i1 %"536", label %main_thread___CS_cs.exit6, label %main_thread_bb113

main_thread_bb113:                                ; preds = %main_thread_bb112, %main_thread_bb111
  %"537" = load i8* @"'__CS_ret", align 1
  %"538" = zext i8 %"537" to i32
  br label %main_thread___CS_cs.exit6

main_thread___CS_cs.exit6:                        ; preds = %main_thread_bb112, %main_thread_bb113
  %"539" = phi i32 [ %"538", %main_thread_bb113 ], [ 1, %main_thread_bb112 ]
  %"540" = trunc i32 %"539" to i8
  store i8 %"540", i8* @"'__CS_ret", align 1
  %"541" = load i8* @"'__CS_ret", align 1
  %"542" = zext i8 %"541" to i32
  %"543" = icmp ne i32 %"542", 0
  %. = select i1 %"543", i8* null, i8* %"371"
  ret i8* %.
}

; Function Attrs: nounwind uwtable
define i32 @main(i32 %argc, i8** %argv) #0 {
main_bb114:
  %__CS_cp___CS_thread_status = alloca [7 x [3 x i8]], align 16
  %__CS_cp___CS_thread_lockedon = alloca [7 x [3 x i8*]], align 16
  %__CS_cp_i = alloca [7 x i32], align 16
  %__CS_cp_j = alloca [7 x i32], align 16
  %"544" = getelementptr inbounds [7 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 1
  %"545" = getelementptr inbounds [3 x i8]* %"544", i32 0, i64 0
  %"546" = load i8* %"545", align 1
  %"547" = getelementptr [7 x [3 x i8]]* @__CS_thread_status, i32 0, i64 1, i64 0
  store i8 %"546", i8* %"547", align 1
  %"548" = getelementptr inbounds [7 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 2
  %"549" = getelementptr inbounds [3 x i8]* %"548", i32 0, i64 0
  %"550" = load i8* %"549", align 1
  %"551" = getelementptr [7 x [3 x i8]]* @__CS_thread_status, i32 0, i64 2, i64 0
  store i8 %"550", i8* %"551", align 1
  %"552" = getelementptr inbounds [7 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 3
  %"553" = getelementptr inbounds [3 x i8]* %"552", i32 0, i64 0
  %"554" = load i8* %"553", align 1
  %"555" = getelementptr [7 x [3 x i8]]* @__CS_thread_status, i32 0, i64 3, i64 0
  store i8 %"554", i8* %"555", align 1
  %"556" = getelementptr inbounds [7 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 4
  %"557" = getelementptr inbounds [3 x i8]* %"556", i32 0, i64 0
  %"558" = load i8* %"557", align 1
  %"559" = getelementptr [7 x [3 x i8]]* @__CS_thread_status, i32 0, i64 4, i64 0
  store i8 %"558", i8* %"559", align 1
  %"560" = getelementptr inbounds [7 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 5
  %"561" = getelementptr inbounds [3 x i8]* %"560", i32 0, i64 0
  %"562" = load i8* %"561", align 1
  %"563" = getelementptr [7 x [3 x i8]]* @__CS_thread_status, i32 0, i64 5, i64 0
  store i8 %"562", i8* %"563", align 1
  %"564" = getelementptr inbounds [7 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 6
  %"565" = getelementptr inbounds [3 x i8]* %"564", i32 0, i64 0
  %"566" = load i8* %"565", align 1
  %"567" = getelementptr [7 x [3 x i8]]* @__CS_thread_status, i32 0, i64 6, i64 0
  store i8 %"566", i8* %"567", align 1
  %"568" = getelementptr inbounds [7 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 1
  %"569" = getelementptr inbounds [3 x i8]* %"568", i32 0, i64 1
  %"570" = load i8* %"569", align 1
  %"571" = getelementptr [7 x [3 x i8]]* @__CS_thread_status, i32 0, i64 1, i64 1
  store i8 %"570", i8* %"571", align 1
  %"572" = getelementptr inbounds [7 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 2
  %"573" = getelementptr inbounds [3 x i8]* %"572", i32 0, i64 1
  %"574" = load i8* %"573", align 1
  %"575" = getelementptr [7 x [3 x i8]]* @__CS_thread_status, i32 0, i64 2, i64 1
  store i8 %"574", i8* %"575", align 1
  %"576" = getelementptr inbounds [7 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 3
  %"577" = getelementptr inbounds [3 x i8]* %"576", i32 0, i64 1
  %"578" = load i8* %"577", align 1
  %"579" = getelementptr [7 x [3 x i8]]* @__CS_thread_status, i32 0, i64 3, i64 1
  store i8 %"578", i8* %"579", align 1
  %"580" = getelementptr inbounds [7 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 4
  %"581" = getelementptr inbounds [3 x i8]* %"580", i32 0, i64 1
  %"582" = load i8* %"581", align 1
  %"583" = getelementptr [7 x [3 x i8]]* @__CS_thread_status, i32 0, i64 4, i64 1
  store i8 %"582", i8* %"583", align 1
  %"584" = getelementptr inbounds [7 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 5
  %"585" = getelementptr inbounds [3 x i8]* %"584", i32 0, i64 1
  %"586" = load i8* %"585", align 1
  %"587" = getelementptr [7 x [3 x i8]]* @__CS_thread_status, i32 0, i64 5, i64 1
  store i8 %"586", i8* %"587", align 1
  %"588" = getelementptr inbounds [7 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 6
  %"589" = getelementptr inbounds [3 x i8]* %"588", i32 0, i64 1
  %"590" = load i8* %"589", align 1
  %"591" = getelementptr [7 x [3 x i8]]* @__CS_thread_status, i32 0, i64 6, i64 1
  store i8 %"590", i8* %"591", align 1
  %"592" = getelementptr inbounds [7 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 1
  %"593" = getelementptr inbounds [3 x i8]* %"592", i32 0, i64 2
  %"594" = load i8* %"593", align 1
  %"595" = getelementptr [7 x [3 x i8]]* @__CS_thread_status, i32 0, i64 1, i64 2
  store i8 %"594", i8* %"595", align 1
  %"596" = getelementptr inbounds [7 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 2
  %"597" = getelementptr inbounds [3 x i8]* %"596", i32 0, i64 2
  %"598" = load i8* %"597", align 1
  %"599" = getelementptr [7 x [3 x i8]]* @__CS_thread_status, i32 0, i64 2, i64 2
  store i8 %"598", i8* %"599", align 1
  %"600" = getelementptr inbounds [7 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 3
  %"601" = getelementptr inbounds [3 x i8]* %"600", i32 0, i64 2
  %"602" = load i8* %"601", align 1
  %"603" = getelementptr [7 x [3 x i8]]* @__CS_thread_status, i32 0, i64 3, i64 2
  store i8 %"602", i8* %"603", align 1
  %"604" = getelementptr inbounds [7 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 4
  %"605" = getelementptr inbounds [3 x i8]* %"604", i32 0, i64 2
  %"606" = load i8* %"605", align 1
  %"607" = getelementptr [7 x [3 x i8]]* @__CS_thread_status, i32 0, i64 4, i64 2
  store i8 %"606", i8* %"607", align 1
  %"608" = getelementptr inbounds [7 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 5
  %"609" = getelementptr inbounds [3 x i8]* %"608", i32 0, i64 2
  %"610" = load i8* %"609", align 1
  %"611" = getelementptr [7 x [3 x i8]]* @__CS_thread_status, i32 0, i64 5, i64 2
  store i8 %"610", i8* %"611", align 1
  %"612" = getelementptr inbounds [7 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 6
  %"613" = getelementptr inbounds [3 x i8]* %"612", i32 0, i64 2
  %"614" = load i8* %"613", align 1
  %"615" = getelementptr [7 x [3 x i8]]* @__CS_thread_status, i32 0, i64 6, i64 2
  store i8 %"614", i8* %"615", align 1
  %"616" = getelementptr inbounds [7 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 1
  %"617" = getelementptr inbounds [3 x i8*]* %"616", i32 0, i64 0
  %"618" = load i8** %"617", align 8
  %"619" = getelementptr [7 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 1, i64 0
  store i8* %"618", i8** %"619", align 8
  %"620" = getelementptr inbounds [7 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 2
  %"621" = getelementptr inbounds [3 x i8*]* %"620", i32 0, i64 0
  %"622" = load i8** %"621", align 8
  %"623" = getelementptr [7 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 2, i64 0
  store i8* %"622", i8** %"623", align 8
  %"624" = getelementptr inbounds [7 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 3
  %"625" = getelementptr inbounds [3 x i8*]* %"624", i32 0, i64 0
  %"626" = load i8** %"625", align 8
  %"627" = getelementptr [7 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 3, i64 0
  store i8* %"626", i8** %"627", align 8
  %"628" = getelementptr inbounds [7 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 4
  %"629" = getelementptr inbounds [3 x i8*]* %"628", i32 0, i64 0
  %"630" = load i8** %"629", align 8
  %"631" = getelementptr [7 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 4, i64 0
  store i8* %"630", i8** %"631", align 8
  %"632" = getelementptr inbounds [7 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 5
  %"633" = getelementptr inbounds [3 x i8*]* %"632", i32 0, i64 0
  %"634" = load i8** %"633", align 8
  %"635" = getelementptr [7 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 5, i64 0
  store i8* %"634", i8** %"635", align 8
  %"636" = getelementptr inbounds [7 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 6
  %"637" = getelementptr inbounds [3 x i8*]* %"636", i32 0, i64 0
  %"638" = load i8** %"637", align 8
  %"639" = getelementptr [7 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 6, i64 0
  store i8* %"638", i8** %"639", align 8
  %"640" = getelementptr inbounds [7 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 1
  %"641" = getelementptr inbounds [3 x i8*]* %"640", i32 0, i64 1
  %"642" = load i8** %"641", align 8
  %"643" = getelementptr [7 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 1, i64 1
  store i8* %"642", i8** %"643", align 8
  %"644" = getelementptr inbounds [7 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 2
  %"645" = getelementptr inbounds [3 x i8*]* %"644", i32 0, i64 1
  %"646" = load i8** %"645", align 8
  %"647" = getelementptr [7 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 2, i64 1
  store i8* %"646", i8** %"647", align 8
  %"648" = getelementptr inbounds [7 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 3
  %"649" = getelementptr inbounds [3 x i8*]* %"648", i32 0, i64 1
  %"650" = load i8** %"649", align 8
  %"651" = getelementptr [7 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 3, i64 1
  store i8* %"650", i8** %"651", align 8
  %"652" = getelementptr inbounds [7 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 4
  %"653" = getelementptr inbounds [3 x i8*]* %"652", i32 0, i64 1
  %"654" = load i8** %"653", align 8
  %"655" = getelementptr [7 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 4, i64 1
  store i8* %"654", i8** %"655", align 8
  %"656" = getelementptr inbounds [7 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 5
  %"657" = getelementptr inbounds [3 x i8*]* %"656", i32 0, i64 1
  %"658" = load i8** %"657", align 8
  %"659" = getelementptr [7 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 5, i64 1
  store i8* %"658", i8** %"659", align 8
  %"660" = getelementptr inbounds [7 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 6
  %"661" = getelementptr inbounds [3 x i8*]* %"660", i32 0, i64 1
  %"662" = load i8** %"661", align 8
  %"663" = getelementptr [7 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 6, i64 1
  store i8* %"662", i8** %"663", align 8
  %"664" = getelementptr inbounds [7 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 1
  %"665" = getelementptr inbounds [3 x i8*]* %"664", i32 0, i64 2
  %"666" = load i8** %"665", align 8
  %"667" = getelementptr [7 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 1, i64 2
  store i8* %"666", i8** %"667", align 8
  %"668" = getelementptr inbounds [7 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 2
  %"669" = getelementptr inbounds [3 x i8*]* %"668", i32 0, i64 2
  %"670" = load i8** %"669", align 8
  %"671" = getelementptr [7 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 2, i64 2
  store i8* %"670", i8** %"671", align 8
  %"672" = getelementptr inbounds [7 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 3
  %"673" = getelementptr inbounds [3 x i8*]* %"672", i32 0, i64 2
  %"674" = load i8** %"673", align 8
  %"675" = getelementptr [7 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 3, i64 2
  store i8* %"674", i8** %"675", align 8
  %"676" = getelementptr inbounds [7 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 4
  %"677" = getelementptr inbounds [3 x i8*]* %"676", i32 0, i64 2
  %"678" = load i8** %"677", align 8
  %"679" = getelementptr [7 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 4, i64 2
  store i8* %"678", i8** %"679", align 8
  %"680" = getelementptr inbounds [7 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 5
  %"681" = getelementptr inbounds [3 x i8*]* %"680", i32 0, i64 2
  %"682" = load i8** %"681", align 8
  %"683" = getelementptr [7 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 5, i64 2
  store i8* %"682", i8** %"683", align 8
  %"684" = getelementptr inbounds [7 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 6
  %"685" = getelementptr inbounds [3 x i8*]* %"684", i32 0, i64 2
  %"686" = load i8** %"685", align 8
  %"687" = getelementptr [7 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 6, i64 2
  store i8* %"686", i8** %"687", align 8
  %"688" = getelementptr inbounds [7 x i32]* %__CS_cp_i, i32 0, i64 1
  %"689" = load i32* %"688", align 4
  %"690" = getelementptr [7 x i32]* @i, i32 0, i64 1
  store i32 %"689", i32* %"690", align 4
  %"691" = getelementptr inbounds [7 x i32]* %__CS_cp_i, i32 0, i64 2
  %"692" = load i32* %"691", align 4
  %"693" = getelementptr [7 x i32]* @i, i32 0, i64 2
  store i32 %"692", i32* %"693", align 4
  %"694" = getelementptr inbounds [7 x i32]* %__CS_cp_i, i32 0, i64 3
  %"695" = load i32* %"694", align 4
  %"696" = getelementptr [7 x i32]* @i, i32 0, i64 3
  store i32 %"695", i32* %"696", align 4
  %"697" = getelementptr inbounds [7 x i32]* %__CS_cp_i, i32 0, i64 4
  %"698" = load i32* %"697", align 4
  %"699" = getelementptr [7 x i32]* @i, i32 0, i64 4
  store i32 %"698", i32* %"699", align 4
  %"700" = getelementptr inbounds [7 x i32]* %__CS_cp_i, i32 0, i64 5
  %"701" = load i32* %"700", align 4
  %"702" = getelementptr [7 x i32]* @i, i32 0, i64 5
  store i32 %"701", i32* %"702", align 4
  %"703" = getelementptr inbounds [7 x i32]* %__CS_cp_i, i32 0, i64 6
  %"704" = load i32* %"703", align 4
  %"705" = getelementptr [7 x i32]* @i, i32 0, i64 6
  store i32 %"704", i32* %"705", align 4
  %"706" = getelementptr inbounds [7 x i32]* %__CS_cp_j, i32 0, i64 1
  %"707" = load i32* %"706", align 4
  %"708" = getelementptr [7 x i32]* @j, i32 0, i64 1
  store i32 %"707", i32* %"708", align 4
  %"709" = getelementptr inbounds [7 x i32]* %__CS_cp_j, i32 0, i64 2
  %"710" = load i32* %"709", align 4
  %"711" = getelementptr [7 x i32]* @j, i32 0, i64 2
  store i32 %"710", i32* %"711", align 4
  %"712" = getelementptr inbounds [7 x i32]* %__CS_cp_j, i32 0, i64 3
  %"713" = load i32* %"712", align 4
  %"714" = getelementptr [7 x i32]* @j, i32 0, i64 3
  store i32 %"713", i32* %"714", align 4
  %"715" = getelementptr inbounds [7 x i32]* %__CS_cp_j, i32 0, i64 4
  %"716" = load i32* %"715", align 4
  %"717" = getelementptr [7 x i32]* @j, i32 0, i64 4
  store i32 %"716", i32* %"717", align 4
  %"718" = getelementptr inbounds [7 x i32]* %__CS_cp_j, i32 0, i64 5
  %"719" = load i32* %"718", align 4
  %"720" = getelementptr [7 x i32]* @j, i32 0, i64 5
  store i32 %"719", i32* %"720", align 4
  %"721" = getelementptr inbounds [7 x i32]* %__CS_cp_j, i32 0, i64 6
  %"722" = load i32* %"721", align 4
  %"723" = getelementptr [7 x i32]* @j, i32 0, i64 6
  store i32 %"722", i32* %"723", align 4
  store i8 0, i8* @"'__CS_round", align 1
  store i8 0, i8* @"'__CS_thread_index", align 1
  %"724" = load i8* @"'__CS_round", align 1
  %"725" = getelementptr [3 x i8]* @__CS_thread_born_round, i32 0, i64 0
  store i8 %"724", i8* %"725", align 1
  %"726" = getelementptr [7 x [3 x i8]]* @__CS_thread_status, i32 0, i64 0, i64 0
  store i8 1, i8* %"726", align 1
  %"727" = getelementptr [3 x i8* (i8*)*]* @__CS_thread, i32 0, i64 0
  store i8* (i8*)* @main_thread, i8* (i8*)** %"727", align 8
  %"728" = getelementptr [3 x i8]* @__CS_thread_allocated, i32 0, i64 0
  store i8 1, i8* %"728", align 1
  %"729" = getelementptr [3 x i8]* @__CS_thread_allocated, i32 0, i64 0
  %"730" = load i8* %"729", align 1
  %"731" = zext i8 %"730" to i32
  %"732" = icmp eq i32 %"731", 1
  br i1 %"732", label %main_bb115, label %main_bb117

main_bb115:                                       ; preds = %main_bb114
  %"733" = getelementptr [3 x i8]* @__CS_thread_born_round, i32 0, i64 0
  %"734" = load i8* %"733", align 1
  store i8 %"734", i8* @"'__CS_round", align 1
  store i8 0, i8* @"'__CS_ret", align 1
  %"735" = getelementptr [3 x i8* (i8*)*]* @__CS_thread, i32 0, i64 0
  %"736" = load i8* (i8*)** %"735", align 8
  %"737" = call i8* %"736"(i8* null)
  %"738" = load i8* @"'__CS_ret", align 1
  %"739" = zext i8 %"738" to i32
  %"740" = icmp ne i32 %"739", 1
  br i1 %"740", label %main_bb116, label %main_bb117

main_bb116:                                       ; preds = %main_bb115
  %"741" = load i8* @"'__CS_round", align 1
  %"742" = zext i8 %"741" to i64
  %"743" = getelementptr inbounds [7 x [3 x i8]]* @__CS_thread_status, i32 0, i64 %"742"
  %"744" = getelementptr inbounds [3 x i8]* %"743", i32 0, i64 0
  store i8 2, i8* %"744", align 1
  br label %main_bb117

main_bb117:                                       ; preds = %main_bb115, %main_bb116, %main_bb114
  %"745" = getelementptr [3 x i8]* @__CS_thread_allocated, i32 0, i64 1
  %"746" = load i8* %"745", align 1
  %"747" = zext i8 %"746" to i32
  %"748" = icmp eq i32 %"747", 1
  br i1 %"748", label %main_bb118, label %main_bb120

main_bb118:                                       ; preds = %main_bb117
  %"749" = getelementptr [3 x i8]* @__CS_thread_born_round, i32 0, i64 1
  %"750" = load i8* %"749", align 1
  store i8 %"750", i8* @"'__CS_round", align 1
  store i8 0, i8* @"'__CS_ret", align 1
  %"751" = getelementptr [3 x i8* (i8*)*]* @__CS_thread, i32 0, i64 1
  %"752" = load i8* (i8*)** %"751", align 8
  %"753" = call i8* %"752"(i8* null)
  %"754" = load i8* @"'__CS_ret", align 1
  %"755" = zext i8 %"754" to i32
  %"756" = icmp ne i32 %"755", 1
  br i1 %"756", label %main_bb119, label %main_bb120

main_bb119:                                       ; preds = %main_bb118
  %"757" = load i8* @"'__CS_round", align 1
  %"758" = zext i8 %"757" to i64
  %"759" = getelementptr inbounds [7 x [3 x i8]]* @__CS_thread_status, i32 0, i64 %"758"
  %"760" = getelementptr inbounds [3 x i8]* %"759", i32 0, i64 1
  store i8 2, i8* %"760", align 1
  br label %main_bb120

main_bb120:                                       ; preds = %main_bb118, %main_bb119, %main_bb117
  %"761" = getelementptr [3 x i8]* @__CS_thread_allocated, i32 0, i64 2
  %"762" = load i8* %"761", align 1
  %"763" = zext i8 %"762" to i32
  %"764" = icmp eq i32 %"763", 1
  br i1 %"764", label %main_bb121, label %main_bb123

main_bb121:                                       ; preds = %main_bb120
  %"765" = getelementptr [3 x i8]* @__CS_thread_born_round, i32 0, i64 2
  %"766" = load i8* %"765", align 1
  store i8 %"766", i8* @"'__CS_round", align 1
  store i8 0, i8* @"'__CS_ret", align 1
  %"767" = getelementptr [3 x i8* (i8*)*]* @__CS_thread, i32 0, i64 2
  %"768" = load i8* (i8*)** %"767", align 8
  %"769" = call i8* %"768"(i8* null)
  %"770" = load i8* @"'__CS_ret", align 1
  %"771" = zext i8 %"770" to i32
  %"772" = icmp ne i32 %"771", 1
  br i1 %"772", label %main_bb122, label %main_bb123

main_bb122:                                       ; preds = %main_bb121
  %"773" = load i8* @"'__CS_round", align 1
  %"774" = zext i8 %"773" to i64
  %"775" = getelementptr inbounds [7 x [3 x i8]]* @__CS_thread_status, i32 0, i64 %"774"
  %"776" = getelementptr inbounds [3 x i8]* %"775", i32 0, i64 2
  store i8 2, i8* %"776", align 1
  br label %main_bb123

main_bb123:                                       ; preds = %main_bb121, %main_bb122, %main_bb120
  %"777" = getelementptr [7 x [3 x i8]]* @__CS_thread_status, i32 0, i64 0, i64 0
  %"778" = load i8* %"777", align 1
  %"779" = zext i8 %"778" to i32
  %"780" = getelementptr inbounds [7 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 1
  %"781" = getelementptr inbounds [3 x i8]* %"780", i32 0, i64 0
  %"782" = load i8* %"781", align 1
  %"783" = zext i8 %"782" to i32
  %"784" = icmp eq i32 %"779", %"783"
  %"785" = zext i1 %"784" to i32
  call void @__VERIFIER_assume(i32 %"785")
  %"786" = getelementptr [7 x [3 x i8]]* @__CS_thread_status, i32 0, i64 1, i64 0
  %"787" = load i8* %"786", align 1
  %"788" = zext i8 %"787" to i32
  %"789" = getelementptr inbounds [7 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 2
  %"790" = getelementptr inbounds [3 x i8]* %"789", i32 0, i64 0
  %"791" = load i8* %"790", align 1
  %"792" = zext i8 %"791" to i32
  %"793" = icmp eq i32 %"788", %"792"
  %"794" = zext i1 %"793" to i32
  call void @__VERIFIER_assume(i32 %"794")
  %"795" = getelementptr [7 x [3 x i8]]* @__CS_thread_status, i32 0, i64 2, i64 0
  %"796" = load i8* %"795", align 1
  %"797" = zext i8 %"796" to i32
  %"798" = getelementptr inbounds [7 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 3
  %"799" = getelementptr inbounds [3 x i8]* %"798", i32 0, i64 0
  %"800" = load i8* %"799", align 1
  %"801" = zext i8 %"800" to i32
  %"802" = icmp eq i32 %"797", %"801"
  %"803" = zext i1 %"802" to i32
  call void @__VERIFIER_assume(i32 %"803")
  %"804" = getelementptr [7 x [3 x i8]]* @__CS_thread_status, i32 0, i64 3, i64 0
  %"805" = load i8* %"804", align 1
  %"806" = zext i8 %"805" to i32
  %"807" = getelementptr inbounds [7 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 4
  %"808" = getelementptr inbounds [3 x i8]* %"807", i32 0, i64 0
  %"809" = load i8* %"808", align 1
  %"810" = zext i8 %"809" to i32
  %"811" = icmp eq i32 %"806", %"810"
  %"812" = zext i1 %"811" to i32
  call void @__VERIFIER_assume(i32 %"812")
  %"813" = getelementptr [7 x [3 x i8]]* @__CS_thread_status, i32 0, i64 4, i64 0
  %"814" = load i8* %"813", align 1
  %"815" = zext i8 %"814" to i32
  %"816" = getelementptr inbounds [7 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 5
  %"817" = getelementptr inbounds [3 x i8]* %"816", i32 0, i64 0
  %"818" = load i8* %"817", align 1
  %"819" = zext i8 %"818" to i32
  %"820" = icmp eq i32 %"815", %"819"
  %"821" = zext i1 %"820" to i32
  call void @__VERIFIER_assume(i32 %"821")
  %"822" = getelementptr [7 x [3 x i8]]* @__CS_thread_status, i32 0, i64 5, i64 0
  %"823" = load i8* %"822", align 1
  %"824" = zext i8 %"823" to i32
  %"825" = getelementptr inbounds [7 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 6
  %"826" = getelementptr inbounds [3 x i8]* %"825", i32 0, i64 0
  %"827" = load i8* %"826", align 1
  %"828" = zext i8 %"827" to i32
  %"829" = icmp eq i32 %"824", %"828"
  %"830" = zext i1 %"829" to i32
  call void @__VERIFIER_assume(i32 %"830")
  %"831" = getelementptr [7 x [3 x i8]]* @__CS_thread_status, i32 0, i64 0, i64 1
  %"832" = load i8* %"831", align 1
  %"833" = zext i8 %"832" to i32
  %"834" = getelementptr inbounds [7 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 1
  %"835" = getelementptr inbounds [3 x i8]* %"834", i32 0, i64 1
  %"836" = load i8* %"835", align 1
  %"837" = zext i8 %"836" to i32
  %"838" = icmp eq i32 %"833", %"837"
  %"839" = zext i1 %"838" to i32
  call void @__VERIFIER_assume(i32 %"839")
  %"840" = getelementptr [7 x [3 x i8]]* @__CS_thread_status, i32 0, i64 1, i64 1
  %"841" = load i8* %"840", align 1
  %"842" = zext i8 %"841" to i32
  %"843" = getelementptr inbounds [7 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 2
  %"844" = getelementptr inbounds [3 x i8]* %"843", i32 0, i64 1
  %"845" = load i8* %"844", align 1
  %"846" = zext i8 %"845" to i32
  %"847" = icmp eq i32 %"842", %"846"
  %"848" = zext i1 %"847" to i32
  call void @__VERIFIER_assume(i32 %"848")
  %"849" = getelementptr [7 x [3 x i8]]* @__CS_thread_status, i32 0, i64 2, i64 1
  %"850" = load i8* %"849", align 1
  %"851" = zext i8 %"850" to i32
  %"852" = getelementptr inbounds [7 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 3
  %"853" = getelementptr inbounds [3 x i8]* %"852", i32 0, i64 1
  %"854" = load i8* %"853", align 1
  %"855" = zext i8 %"854" to i32
  %"856" = icmp eq i32 %"851", %"855"
  %"857" = zext i1 %"856" to i32
  call void @__VERIFIER_assume(i32 %"857")
  %"858" = getelementptr [7 x [3 x i8]]* @__CS_thread_status, i32 0, i64 3, i64 1
  %"859" = load i8* %"858", align 1
  %"860" = zext i8 %"859" to i32
  %"861" = getelementptr inbounds [7 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 4
  %"862" = getelementptr inbounds [3 x i8]* %"861", i32 0, i64 1
  %"863" = load i8* %"862", align 1
  %"864" = zext i8 %"863" to i32
  %"865" = icmp eq i32 %"860", %"864"
  %"866" = zext i1 %"865" to i32
  call void @__VERIFIER_assume(i32 %"866")
  %"867" = getelementptr [7 x [3 x i8]]* @__CS_thread_status, i32 0, i64 4, i64 1
  %"868" = load i8* %"867", align 1
  %"869" = zext i8 %"868" to i32
  %"870" = getelementptr inbounds [7 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 5
  %"871" = getelementptr inbounds [3 x i8]* %"870", i32 0, i64 1
  %"872" = load i8* %"871", align 1
  %"873" = zext i8 %"872" to i32
  %"874" = icmp eq i32 %"869", %"873"
  %"875" = zext i1 %"874" to i32
  call void @__VERIFIER_assume(i32 %"875")
  %"876" = getelementptr [7 x [3 x i8]]* @__CS_thread_status, i32 0, i64 5, i64 1
  %"877" = load i8* %"876", align 1
  %"878" = zext i8 %"877" to i32
  %"879" = getelementptr inbounds [7 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 6
  %"880" = getelementptr inbounds [3 x i8]* %"879", i32 0, i64 1
  %"881" = load i8* %"880", align 1
  %"882" = zext i8 %"881" to i32
  %"883" = icmp eq i32 %"878", %"882"
  %"884" = zext i1 %"883" to i32
  call void @__VERIFIER_assume(i32 %"884")
  %"885" = getelementptr [7 x [3 x i8]]* @__CS_thread_status, i32 0, i64 0, i64 2
  %"886" = load i8* %"885", align 1
  %"887" = zext i8 %"886" to i32
  %"888" = getelementptr inbounds [7 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 1
  %"889" = getelementptr inbounds [3 x i8]* %"888", i32 0, i64 2
  %"890" = load i8* %"889", align 1
  %"891" = zext i8 %"890" to i32
  %"892" = icmp eq i32 %"887", %"891"
  %"893" = zext i1 %"892" to i32
  call void @__VERIFIER_assume(i32 %"893")
  %"894" = getelementptr [7 x [3 x i8]]* @__CS_thread_status, i32 0, i64 1, i64 2
  %"895" = load i8* %"894", align 1
  %"896" = zext i8 %"895" to i32
  %"897" = getelementptr inbounds [7 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 2
  %"898" = getelementptr inbounds [3 x i8]* %"897", i32 0, i64 2
  %"899" = load i8* %"898", align 1
  %"900" = zext i8 %"899" to i32
  %"901" = icmp eq i32 %"896", %"900"
  %"902" = zext i1 %"901" to i32
  call void @__VERIFIER_assume(i32 %"902")
  %"903" = getelementptr [7 x [3 x i8]]* @__CS_thread_status, i32 0, i64 2, i64 2
  %"904" = load i8* %"903", align 1
  %"905" = zext i8 %"904" to i32
  %"906" = getelementptr inbounds [7 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 3
  %"907" = getelementptr inbounds [3 x i8]* %"906", i32 0, i64 2
  %"908" = load i8* %"907", align 1
  %"909" = zext i8 %"908" to i32
  %"910" = icmp eq i32 %"905", %"909"
  %"911" = zext i1 %"910" to i32
  call void @__VERIFIER_assume(i32 %"911")
  %"912" = getelementptr [7 x [3 x i8]]* @__CS_thread_status, i32 0, i64 3, i64 2
  %"913" = load i8* %"912", align 1
  %"914" = zext i8 %"913" to i32
  %"915" = getelementptr inbounds [7 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 4
  %"916" = getelementptr inbounds [3 x i8]* %"915", i32 0, i64 2
  %"917" = load i8* %"916", align 1
  %"918" = zext i8 %"917" to i32
  %"919" = icmp eq i32 %"914", %"918"
  %"920" = zext i1 %"919" to i32
  call void @__VERIFIER_assume(i32 %"920")
  %"921" = getelementptr [7 x [3 x i8]]* @__CS_thread_status, i32 0, i64 4, i64 2
  %"922" = load i8* %"921", align 1
  %"923" = zext i8 %"922" to i32
  %"924" = getelementptr inbounds [7 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 5
  %"925" = getelementptr inbounds [3 x i8]* %"924", i32 0, i64 2
  %"926" = load i8* %"925", align 1
  %"927" = zext i8 %"926" to i32
  %"928" = icmp eq i32 %"923", %"927"
  %"929" = zext i1 %"928" to i32
  call void @__VERIFIER_assume(i32 %"929")
  %"930" = getelementptr [7 x [3 x i8]]* @__CS_thread_status, i32 0, i64 5, i64 2
  %"931" = load i8* %"930", align 1
  %"932" = zext i8 %"931" to i32
  %"933" = getelementptr inbounds [7 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 6
  %"934" = getelementptr inbounds [3 x i8]* %"933", i32 0, i64 2
  %"935" = load i8* %"934", align 1
  %"936" = zext i8 %"935" to i32
  %"937" = icmp eq i32 %"932", %"936"
  %"938" = zext i1 %"937" to i32
  call void @__VERIFIER_assume(i32 %"938")
  %"939" = getelementptr [7 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 0, i64 0
  %"940" = load i8** %"939", align 8
  %"941" = getelementptr inbounds [7 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 1
  %"942" = getelementptr inbounds [3 x i8*]* %"941", i32 0, i64 0
  %"943" = load i8** %"942", align 8
  %"944" = icmp eq i8* %"940", %"943"
  %"945" = zext i1 %"944" to i32
  call void @__VERIFIER_assume(i32 %"945")
  %"946" = getelementptr [7 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 1, i64 0
  %"947" = load i8** %"946", align 8
  %"948" = getelementptr inbounds [7 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 2
  %"949" = getelementptr inbounds [3 x i8*]* %"948", i32 0, i64 0
  %"950" = load i8** %"949", align 8
  %"951" = icmp eq i8* %"947", %"950"
  %"952" = zext i1 %"951" to i32
  call void @__VERIFIER_assume(i32 %"952")
  %"953" = getelementptr [7 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 2, i64 0
  %"954" = load i8** %"953", align 8
  %"955" = getelementptr inbounds [7 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 3
  %"956" = getelementptr inbounds [3 x i8*]* %"955", i32 0, i64 0
  %"957" = load i8** %"956", align 8
  %"958" = icmp eq i8* %"954", %"957"
  %"959" = zext i1 %"958" to i32
  call void @__VERIFIER_assume(i32 %"959")
  %"960" = getelementptr [7 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 3, i64 0
  %"961" = load i8** %"960", align 8
  %"962" = getelementptr inbounds [7 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 4
  %"963" = getelementptr inbounds [3 x i8*]* %"962", i32 0, i64 0
  %"964" = load i8** %"963", align 8
  %"965" = icmp eq i8* %"961", %"964"
  %"966" = zext i1 %"965" to i32
  call void @__VERIFIER_assume(i32 %"966")
  %"967" = getelementptr [7 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 4, i64 0
  %"968" = load i8** %"967", align 8
  %"969" = getelementptr inbounds [7 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 5
  %"970" = getelementptr inbounds [3 x i8*]* %"969", i32 0, i64 0
  %"971" = load i8** %"970", align 8
  %"972" = icmp eq i8* %"968", %"971"
  %"973" = zext i1 %"972" to i32
  call void @__VERIFIER_assume(i32 %"973")
  %"974" = getelementptr [7 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 5, i64 0
  %"975" = load i8** %"974", align 8
  %"976" = getelementptr inbounds [7 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 6
  %"977" = getelementptr inbounds [3 x i8*]* %"976", i32 0, i64 0
  %"978" = load i8** %"977", align 8
  %"979" = icmp eq i8* %"975", %"978"
  %"980" = zext i1 %"979" to i32
  call void @__VERIFIER_assume(i32 %"980")
  %"981" = getelementptr [7 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 0, i64 1
  %"982" = load i8** %"981", align 8
  %"983" = getelementptr inbounds [7 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 1
  %"984" = getelementptr inbounds [3 x i8*]* %"983", i32 0, i64 1
  %"985" = load i8** %"984", align 8
  %"986" = icmp eq i8* %"982", %"985"
  %"987" = zext i1 %"986" to i32
  call void @__VERIFIER_assume(i32 %"987")
  %"988" = getelementptr [7 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 1, i64 1
  %"989" = load i8** %"988", align 8
  %"990" = getelementptr inbounds [7 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 2
  %"991" = getelementptr inbounds [3 x i8*]* %"990", i32 0, i64 1
  %"992" = load i8** %"991", align 8
  %"993" = icmp eq i8* %"989", %"992"
  %"994" = zext i1 %"993" to i32
  call void @__VERIFIER_assume(i32 %"994")
  %"995" = getelementptr [7 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 2, i64 1
  %"996" = load i8** %"995", align 8
  %"997" = getelementptr inbounds [7 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 3
  %"998" = getelementptr inbounds [3 x i8*]* %"997", i32 0, i64 1
  %"999" = load i8** %"998", align 8
  %"1000" = icmp eq i8* %"996", %"999"
  %"1001" = zext i1 %"1000" to i32
  call void @__VERIFIER_assume(i32 %"1001")
  %"1002" = getelementptr [7 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 3, i64 1
  %"1003" = load i8** %"1002", align 8
  %"1004" = getelementptr inbounds [7 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 4
  %"1005" = getelementptr inbounds [3 x i8*]* %"1004", i32 0, i64 1
  %"1006" = load i8** %"1005", align 8
  %"1007" = icmp eq i8* %"1003", %"1006"
  %"1008" = zext i1 %"1007" to i32
  call void @__VERIFIER_assume(i32 %"1008")
  %"1009" = getelementptr [7 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 4, i64 1
  %"1010" = load i8** %"1009", align 8
  %"1011" = getelementptr inbounds [7 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 5
  %"1012" = getelementptr inbounds [3 x i8*]* %"1011", i32 0, i64 1
  %"1013" = load i8** %"1012", align 8
  %"1014" = icmp eq i8* %"1010", %"1013"
  %"1015" = zext i1 %"1014" to i32
  call void @__VERIFIER_assume(i32 %"1015")
  %"1016" = getelementptr [7 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 5, i64 1
  %"1017" = load i8** %"1016", align 8
  %"1018" = getelementptr inbounds [7 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 6
  %"1019" = getelementptr inbounds [3 x i8*]* %"1018", i32 0, i64 1
  %"1020" = load i8** %"1019", align 8
  %"1021" = icmp eq i8* %"1017", %"1020"
  %"1022" = zext i1 %"1021" to i32
  call void @__VERIFIER_assume(i32 %"1022")
  %"1023" = getelementptr [7 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 0, i64 2
  %"1024" = load i8** %"1023", align 8
  %"1025" = getelementptr inbounds [7 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 1
  %"1026" = getelementptr inbounds [3 x i8*]* %"1025", i32 0, i64 2
  %"1027" = load i8** %"1026", align 8
  %"1028" = icmp eq i8* %"1024", %"1027"
  %"1029" = zext i1 %"1028" to i32
  call void @__VERIFIER_assume(i32 %"1029")
  %"1030" = getelementptr [7 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 1, i64 2
  %"1031" = load i8** %"1030", align 8
  %"1032" = getelementptr inbounds [7 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 2
  %"1033" = getelementptr inbounds [3 x i8*]* %"1032", i32 0, i64 2
  %"1034" = load i8** %"1033", align 8
  %"1035" = icmp eq i8* %"1031", %"1034"
  %"1036" = zext i1 %"1035" to i32
  call void @__VERIFIER_assume(i32 %"1036")
  %"1037" = getelementptr [7 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 2, i64 2
  %"1038" = load i8** %"1037", align 8
  %"1039" = getelementptr inbounds [7 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 3
  %"1040" = getelementptr inbounds [3 x i8*]* %"1039", i32 0, i64 2
  %"1041" = load i8** %"1040", align 8
  %"1042" = icmp eq i8* %"1038", %"1041"
  %"1043" = zext i1 %"1042" to i32
  call void @__VERIFIER_assume(i32 %"1043")
  %"1044" = getelementptr [7 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 3, i64 2
  %"1045" = load i8** %"1044", align 8
  %"1046" = getelementptr inbounds [7 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 4
  %"1047" = getelementptr inbounds [3 x i8*]* %"1046", i32 0, i64 2
  %"1048" = load i8** %"1047", align 8
  %"1049" = icmp eq i8* %"1045", %"1048"
  %"1050" = zext i1 %"1049" to i32
  call void @__VERIFIER_assume(i32 %"1050")
  %"1051" = getelementptr [7 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 4, i64 2
  %"1052" = load i8** %"1051", align 8
  %"1053" = getelementptr inbounds [7 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 5
  %"1054" = getelementptr inbounds [3 x i8*]* %"1053", i32 0, i64 2
  %"1055" = load i8** %"1054", align 8
  %"1056" = icmp eq i8* %"1052", %"1055"
  %"1057" = zext i1 %"1056" to i32
  call void @__VERIFIER_assume(i32 %"1057")
  %"1058" = getelementptr [7 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 5, i64 2
  %"1059" = load i8** %"1058", align 8
  %"1060" = getelementptr inbounds [7 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 6
  %"1061" = getelementptr inbounds [3 x i8*]* %"1060", i32 0, i64 2
  %"1062" = load i8** %"1061", align 8
  %"1063" = icmp eq i8* %"1059", %"1062"
  %"1064" = zext i1 %"1063" to i32
  call void @__VERIFIER_assume(i32 %"1064")
  %"1065" = getelementptr [7 x i32]* @i, i32 0, i64 0
  %"1066" = load i32* %"1065", align 4
  %"1067" = getelementptr inbounds [7 x i32]* %__CS_cp_i, i32 0, i64 1
  %"1068" = load i32* %"1067", align 4
  %"1069" = icmp eq i32 %"1066", %"1068"
  %"1070" = zext i1 %"1069" to i32
  call void @__VERIFIER_assume(i32 %"1070")
  %"1071" = getelementptr [7 x i32]* @i, i32 0, i64 1
  %"1072" = load i32* %"1071", align 4
  %"1073" = getelementptr inbounds [7 x i32]* %__CS_cp_i, i32 0, i64 2
  %"1074" = load i32* %"1073", align 4
  %"1075" = icmp eq i32 %"1072", %"1074"
  %"1076" = zext i1 %"1075" to i32
  call void @__VERIFIER_assume(i32 %"1076")
  %"1077" = getelementptr [7 x i32]* @i, i32 0, i64 2
  %"1078" = load i32* %"1077", align 4
  %"1079" = getelementptr inbounds [7 x i32]* %__CS_cp_i, i32 0, i64 3
  %"1080" = load i32* %"1079", align 4
  %"1081" = icmp eq i32 %"1078", %"1080"
  %"1082" = zext i1 %"1081" to i32
  call void @__VERIFIER_assume(i32 %"1082")
  %"1083" = getelementptr [7 x i32]* @i, i32 0, i64 3
  %"1084" = load i32* %"1083", align 4
  %"1085" = getelementptr inbounds [7 x i32]* %__CS_cp_i, i32 0, i64 4
  %"1086" = load i32* %"1085", align 4
  %"1087" = icmp eq i32 %"1084", %"1086"
  %"1088" = zext i1 %"1087" to i32
  call void @__VERIFIER_assume(i32 %"1088")
  %"1089" = getelementptr [7 x i32]* @i, i32 0, i64 4
  %"1090" = load i32* %"1089", align 4
  %"1091" = getelementptr inbounds [7 x i32]* %__CS_cp_i, i32 0, i64 5
  %"1092" = load i32* %"1091", align 4
  %"1093" = icmp eq i32 %"1090", %"1092"
  %"1094" = zext i1 %"1093" to i32
  call void @__VERIFIER_assume(i32 %"1094")
  %"1095" = getelementptr [7 x i32]* @i, i32 0, i64 5
  %"1096" = load i32* %"1095", align 4
  %"1097" = getelementptr inbounds [7 x i32]* %__CS_cp_i, i32 0, i64 6
  %"1098" = load i32* %"1097", align 4
  %"1099" = icmp eq i32 %"1096", %"1098"
  %"1100" = zext i1 %"1099" to i32
  call void @__VERIFIER_assume(i32 %"1100")
  %"1101" = getelementptr [7 x i32]* @j, i32 0, i64 0
  %"1102" = load i32* %"1101", align 4
  %"1103" = getelementptr inbounds [7 x i32]* %__CS_cp_j, i32 0, i64 1
  %"1104" = load i32* %"1103", align 4
  %"1105" = icmp eq i32 %"1102", %"1104"
  %"1106" = zext i1 %"1105" to i32
  call void @__VERIFIER_assume(i32 %"1106")
  %"1107" = getelementptr [7 x i32]* @j, i32 0, i64 1
  %"1108" = load i32* %"1107", align 4
  %"1109" = getelementptr inbounds [7 x i32]* %__CS_cp_j, i32 0, i64 2
  %"1110" = load i32* %"1109", align 4
  %"1111" = icmp eq i32 %"1108", %"1110"
  %"1112" = zext i1 %"1111" to i32
  call void @__VERIFIER_assume(i32 %"1112")
  %"1113" = getelementptr [7 x i32]* @j, i32 0, i64 2
  %"1114" = load i32* %"1113", align 4
  %"1115" = getelementptr inbounds [7 x i32]* %__CS_cp_j, i32 0, i64 3
  %"1116" = load i32* %"1115", align 4
  %"1117" = icmp eq i32 %"1114", %"1116"
  %"1118" = zext i1 %"1117" to i32
  call void @__VERIFIER_assume(i32 %"1118")
  %"1119" = getelementptr [7 x i32]* @j, i32 0, i64 3
  %"1120" = load i32* %"1119", align 4
  %"1121" = getelementptr inbounds [7 x i32]* %__CS_cp_j, i32 0, i64 4
  %"1122" = load i32* %"1121", align 4
  %"1123" = icmp eq i32 %"1120", %"1122"
  %"1124" = zext i1 %"1123" to i32
  call void @__VERIFIER_assume(i32 %"1124")
  %"1125" = getelementptr [7 x i32]* @j, i32 0, i64 4
  %"1126" = load i32* %"1125", align 4
  %"1127" = getelementptr inbounds [7 x i32]* %__CS_cp_j, i32 0, i64 5
  %"1128" = load i32* %"1127", align 4
  %"1129" = icmp eq i32 %"1126", %"1128"
  %"1130" = zext i1 %"1129" to i32
  call void @__VERIFIER_assume(i32 %"1130")
  %"1131" = getelementptr [7 x i32]* @j, i32 0, i64 5
  %"1132" = load i32* %"1131", align 4
  %"1133" = getelementptr inbounds [7 x i32]* %__CS_cp_j, i32 0, i64 6
  %"1134" = load i32* %"1133", align 4
  %"1135" = icmp eq i32 %"1132", %"1134"
  %"1136" = zext i1 %"1135" to i32
  call void @__VERIFIER_assume(i32 %"1136")
  %"1137" = load i8* @"'__CS_error", align 1
  %"1138" = zext i8 %"1137" to i32
  %"1139" = icmp ne i32 %"1138", 1
  br i1 %"1139", label %main___VERIFIER_assert.exit, label %main_bb124

main___VERIFIER_assert.exit:                      ; preds = %main_bb123
  ret i32 0

main_bb124:                                       ; preds = %main_bb123
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

