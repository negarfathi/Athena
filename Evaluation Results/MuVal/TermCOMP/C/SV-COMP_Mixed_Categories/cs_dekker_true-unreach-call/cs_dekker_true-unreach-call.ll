; ModuleID = 'Benchmarks/TermCOMP/C/SV-COMP_Mixed_Categories/cs_dekker_true-unreach-call/cs_dekker_true-unreach-call.bc'
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
  br i1 %"171", label %thr1_bb115, label %thr1_bb62

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
  br i1 %"198", label %thr1_bb115, label %thr1_bb65

thr1_bb65:                                        ; preds = %thr1___CS_cs.exit9, %thr1___CS_cs.exit1
  %"199" = load i8* @"'__CS_round", align 1
  %"200" = zext i8 %"199" to i64
  %"201" = getelementptr inbounds [3 x i32]* @flag2, i32 0, i64 %"200"
  %"202" = load i32* %"201", align 4
  %"203" = icmp sge i32 %"202", 1
  %"204" = call i8 @__kittel_nondef.1() #4
  %"205" = load i8* @"'__CS_round", align 1
  %"206" = zext i8 %"205" to i32
  %"207" = zext i8 %"204" to i32
  %"208" = add nsw i32 %"206", %"207"
  %"209" = icmp slt i32 %"208", 3
  %"210" = zext i1 %"209" to i32
  call void @__VERIFIER_assume(i32 %"210") #4
  %"211" = zext i8 %"204" to i32
  %"212" = load i8* @"'__CS_round", align 1
  %"213" = zext i8 %"212" to i32
  %"214" = add nsw i32 %"213", %"211"
  %"215" = trunc i32 %"214" to i8
  store i8 %"215", i8* @"'__CS_round", align 1
  %"216" = call i32 (...)* @nondet_int() #4
  %"217" = icmp ne i32 %"216", 0
  br i1 %"203", label %thr1_bb66, label %thr1_bb92

thr1_bb66:                                        ; preds = %thr1_bb65
  br i1 %"217", label %thr1_bb67, label %thr1_bb68

thr1_bb67:                                        ; preds = %thr1_bb66
  %"218" = load i8* @"'__CS_round", align 1
  %"219" = zext i8 %"218" to i32
  %"220" = icmp eq i32 %"219", 2
  br i1 %"220", label %thr1___CS_cs.exit2, label %thr1_bb68

thr1_bb68:                                        ; preds = %thr1_bb67, %thr1_bb66
  %"221" = load i8* @"'__CS_ret", align 1
  %"222" = zext i8 %"221" to i32
  br label %thr1___CS_cs.exit2

thr1___CS_cs.exit2:                               ; preds = %thr1_bb67, %thr1_bb68
  %"223" = phi i32 [ %"222", %thr1_bb68 ], [ 1, %thr1_bb67 ]
  %"224" = trunc i32 %"223" to i8
  store i8 %"224", i8* @"'__CS_ret", align 1
  %"225" = load i8* @"'__CS_ret", align 1
  %"226" = zext i8 %"225" to i32
  %"227" = icmp ne i32 %"226", 0
  br i1 %"227", label %thr1_bb115, label %thr1_bb69

thr1_bb69:                                        ; preds = %thr1___CS_cs.exit2
  %"228" = load i8* @"'__CS_round", align 1
  %"229" = zext i8 %"228" to i64
  %"230" = getelementptr inbounds [3 x i32]* @turn, i32 0, i64 %"229"
  %"231" = load i32* %"230", align 4
  %"232" = icmp ne i32 %"231", 0
  br i1 %"232", label %thr1_bb70, label %thr1_bb89

thr1_bb70:                                        ; preds = %thr1_bb69
  %"233" = call i8 @__kittel_nondef.1() #4
  %"234" = load i8* @"'__CS_round", align 1
  %"235" = zext i8 %"234" to i32
  %"236" = zext i8 %"233" to i32
  %"237" = add nsw i32 %"235", %"236"
  %"238" = icmp slt i32 %"237", 3
  %"239" = zext i1 %"238" to i32
  call void @__VERIFIER_assume(i32 %"239") #4
  %"240" = zext i8 %"233" to i32
  %"241" = load i8* @"'__CS_round", align 1
  %"242" = zext i8 %"241" to i32
  %"243" = add nsw i32 %"242", %"240"
  %"244" = trunc i32 %"243" to i8
  store i8 %"244", i8* @"'__CS_round", align 1
  %"245" = call i32 (...)* @nondet_int() #4
  %"246" = icmp ne i32 %"245", 0
  br i1 %"246", label %thr1_bb71, label %thr1_bb72

thr1_bb71:                                        ; preds = %thr1_bb70
  %"247" = load i8* @"'__CS_round", align 1
  %"248" = zext i8 %"247" to i32
  %"249" = icmp eq i32 %"248", 2
  br i1 %"249", label %thr1___CS_cs.exit3, label %thr1_bb72

thr1_bb72:                                        ; preds = %thr1_bb71, %thr1_bb70
  %"250" = load i8* @"'__CS_ret", align 1
  %"251" = zext i8 %"250" to i32
  br label %thr1___CS_cs.exit3

thr1___CS_cs.exit3:                               ; preds = %thr1_bb71, %thr1_bb72
  %"252" = phi i32 [ %"251", %thr1_bb72 ], [ 1, %thr1_bb71 ]
  %"253" = trunc i32 %"252" to i8
  store i8 %"253", i8* @"'__CS_ret", align 1
  %"254" = load i8* @"'__CS_ret", align 1
  %"255" = zext i8 %"254" to i32
  %"256" = icmp ne i32 %"255", 0
  br i1 %"256", label %thr1_bb115, label %thr1_bb73

thr1_bb73:                                        ; preds = %thr1___CS_cs.exit3
  %"257" = load i8* @"'__CS_round", align 1
  %"258" = zext i8 %"257" to i64
  %"259" = getelementptr inbounds [3 x i32]* @flag1, i32 0, i64 %"258"
  store i32 0, i32* %"259", align 4
  %"260" = call i8 @__kittel_nondef.1() #4
  %"261" = load i8* @"'__CS_round", align 1
  %"262" = zext i8 %"261" to i32
  %"263" = zext i8 %"260" to i32
  %"264" = add nsw i32 %"262", %"263"
  %"265" = icmp slt i32 %"264", 3
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
  br i1 %"273", label %thr1_bb74, label %thr1_bb75

thr1_bb74:                                        ; preds = %thr1_bb73
  %"274" = load i8* @"'__CS_round", align 1
  %"275" = zext i8 %"274" to i32
  %"276" = icmp eq i32 %"275", 2
  br i1 %"276", label %thr1___CS_cs.exit4, label %thr1_bb75

thr1_bb75:                                        ; preds = %thr1_bb74, %thr1_bb73
  %"277" = load i8* @"'__CS_ret", align 1
  %"278" = zext i8 %"277" to i32
  br label %thr1___CS_cs.exit4

thr1___CS_cs.exit4:                               ; preds = %thr1_bb74, %thr1_bb75
  %"279" = phi i32 [ %"278", %thr1_bb75 ], [ 1, %thr1_bb74 ]
  %"280" = trunc i32 %"279" to i8
  store i8 %"280", i8* @"'__CS_ret", align 1
  %"281" = load i8* @"'__CS_ret", align 1
  %"282" = zext i8 %"281" to i32
  %"283" = icmp ne i32 %"282", 0
  br i1 %"283", label %thr1_bb115, label %thr1_bb76

thr1_bb76:                                        ; preds = %thr1___CS_cs.exit5, %thr1___CS_cs.exit4
  %"284" = load i8* @"'__CS_round", align 1
  %"285" = zext i8 %"284" to i64
  %"286" = getelementptr inbounds [3 x i32]* @turn, i32 0, i64 %"285"
  %"287" = load i32* %"286", align 4
  %"288" = icmp ne i32 %"287", 0
  %"289" = call i8 @__kittel_nondef.1() #4
  %"290" = load i8* @"'__CS_round", align 1
  %"291" = zext i8 %"290" to i32
  %"292" = zext i8 %"289" to i32
  %"293" = add nsw i32 %"291", %"292"
  %"294" = icmp slt i32 %"293", 3
  %"295" = zext i1 %"294" to i32
  call void @__VERIFIER_assume(i32 %"295") #4
  %"296" = zext i8 %"289" to i32
  %"297" = load i8* @"'__CS_round", align 1
  %"298" = zext i8 %"297" to i32
  %"299" = add nsw i32 %"298", %"296"
  %"300" = trunc i32 %"299" to i8
  store i8 %"300", i8* @"'__CS_round", align 1
  %"301" = call i32 (...)* @nondet_int() #4
  %"302" = icmp ne i32 %"301", 0
  br i1 %"288", label %thr1_bb77, label %thr1_bb80

thr1_bb77:                                        ; preds = %thr1_bb76
  br i1 %"302", label %thr1_bb78, label %thr1_bb79

thr1_bb78:                                        ; preds = %thr1_bb77
  %"303" = load i8* @"'__CS_round", align 1
  %"304" = zext i8 %"303" to i32
  %"305" = icmp eq i32 %"304", 2
  br i1 %"305", label %thr1___CS_cs.exit5, label %thr1_bb79

thr1_bb79:                                        ; preds = %thr1_bb78, %thr1_bb77
  %"306" = load i8* @"'__CS_ret", align 1
  %"307" = zext i8 %"306" to i32
  br label %thr1___CS_cs.exit5

thr1___CS_cs.exit5:                               ; preds = %thr1_bb78, %thr1_bb79
  %"308" = phi i32 [ %"307", %thr1_bb79 ], [ 1, %thr1_bb78 ]
  %"309" = trunc i32 %"308" to i8
  store i8 %"309", i8* @"'__CS_ret", align 1
  %"310" = load i8* @"'__CS_ret", align 1
  %"311" = zext i8 %"310" to i32
  %"312" = icmp ne i32 %"311", 0
  br i1 %"312", label %thr1_bb115, label %thr1_bb76

thr1_bb80:                                        ; preds = %thr1_bb76
  br i1 %"302", label %thr1_bb81, label %thr1_bb82

thr1_bb81:                                        ; preds = %thr1_bb80
  %"313" = load i8* @"'__CS_round", align 1
  %"314" = zext i8 %"313" to i32
  %"315" = icmp eq i32 %"314", 2
  br i1 %"315", label %thr1___CS_cs.exit6, label %thr1_bb82

thr1_bb82:                                        ; preds = %thr1_bb81, %thr1_bb80
  %"316" = load i8* @"'__CS_ret", align 1
  %"317" = zext i8 %"316" to i32
  br label %thr1___CS_cs.exit6

thr1___CS_cs.exit6:                               ; preds = %thr1_bb81, %thr1_bb82
  %"318" = phi i32 [ %"317", %thr1_bb82 ], [ 1, %thr1_bb81 ]
  %"319" = trunc i32 %"318" to i8
  store i8 %"319", i8* @"'__CS_ret", align 1
  %"320" = load i8* @"'__CS_ret", align 1
  %"321" = zext i8 %"320" to i32
  %"322" = icmp ne i32 %"321", 0
  br i1 %"322", label %thr1_bb115, label %thr1_bb83

thr1_bb83:                                        ; preds = %thr1___CS_cs.exit6
  %"323" = call i8 @__kittel_nondef.1() #4
  %"324" = load i8* @"'__CS_round", align 1
  %"325" = zext i8 %"324" to i32
  %"326" = zext i8 %"323" to i32
  %"327" = add nsw i32 %"325", %"326"
  %"328" = icmp slt i32 %"327", 3
  %"329" = zext i1 %"328" to i32
  call void @__VERIFIER_assume(i32 %"329") #4
  %"330" = zext i8 %"323" to i32
  %"331" = load i8* @"'__CS_round", align 1
  %"332" = zext i8 %"331" to i32
  %"333" = add nsw i32 %"332", %"330"
  %"334" = trunc i32 %"333" to i8
  store i8 %"334", i8* @"'__CS_round", align 1
  %"335" = call i32 (...)* @nondet_int() #4
  %"336" = icmp ne i32 %"335", 0
  br i1 %"336", label %thr1_bb84, label %thr1_bb85

thr1_bb84:                                        ; preds = %thr1_bb83
  %"337" = load i8* @"'__CS_round", align 1
  %"338" = zext i8 %"337" to i32
  %"339" = icmp eq i32 %"338", 2
  br i1 %"339", label %thr1___CS_cs.exit7, label %thr1_bb85

thr1_bb85:                                        ; preds = %thr1_bb84, %thr1_bb83
  %"340" = load i8* @"'__CS_ret", align 1
  %"341" = zext i8 %"340" to i32
  br label %thr1___CS_cs.exit7

thr1___CS_cs.exit7:                               ; preds = %thr1_bb84, %thr1_bb85
  %"342" = phi i32 [ %"341", %thr1_bb85 ], [ 1, %thr1_bb84 ]
  %"343" = trunc i32 %"342" to i8
  store i8 %"343", i8* @"'__CS_ret", align 1
  %"344" = load i8* @"'__CS_ret", align 1
  %"345" = zext i8 %"344" to i32
  %"346" = icmp ne i32 %"345", 0
  br i1 %"346", label %thr1_bb115, label %thr1_bb86

thr1_bb86:                                        ; preds = %thr1___CS_cs.exit7
  %"347" = load i8* @"'__CS_round", align 1
  %"348" = zext i8 %"347" to i64
  %"349" = getelementptr inbounds [3 x i32]* @flag1, i32 0, i64 %"348"
  store i32 1, i32* %"349", align 4
  %"350" = call i8 @__kittel_nondef.1() #4
  %"351" = load i8* @"'__CS_round", align 1
  %"352" = zext i8 %"351" to i32
  %"353" = zext i8 %"350" to i32
  %"354" = add nsw i32 %"352", %"353"
  %"355" = icmp slt i32 %"354", 3
  %"356" = zext i1 %"355" to i32
  call void @__VERIFIER_assume(i32 %"356") #4
  %"357" = zext i8 %"350" to i32
  %"358" = load i8* @"'__CS_round", align 1
  %"359" = zext i8 %"358" to i32
  %"360" = add nsw i32 %"359", %"357"
  %"361" = trunc i32 %"360" to i8
  store i8 %"361", i8* @"'__CS_round", align 1
  %"362" = call i32 (...)* @nondet_int() #4
  %"363" = icmp ne i32 %"362", 0
  br i1 %"363", label %thr1_bb87, label %thr1_bb88

thr1_bb87:                                        ; preds = %thr1_bb86
  %"364" = load i8* @"'__CS_round", align 1
  %"365" = zext i8 %"364" to i32
  %"366" = icmp eq i32 %"365", 2
  br i1 %"366", label %thr1___CS_cs.exit8, label %thr1_bb88

thr1_bb88:                                        ; preds = %thr1_bb87, %thr1_bb86
  %"367" = load i8* @"'__CS_ret", align 1
  %"368" = zext i8 %"367" to i32
  br label %thr1___CS_cs.exit8

thr1___CS_cs.exit8:                               ; preds = %thr1_bb87, %thr1_bb88
  %"369" = phi i32 [ %"368", %thr1_bb88 ], [ 1, %thr1_bb87 ]
  %"370" = trunc i32 %"369" to i8
  store i8 %"370", i8* @"'__CS_ret", align 1
  %"371" = load i8* @"'__CS_ret", align 1
  %"372" = zext i8 %"371" to i32
  %"373" = icmp ne i32 %"372", 0
  br i1 %"373", label %thr1_bb115, label %thr1_bb89

thr1_bb89:                                        ; preds = %thr1___CS_cs.exit8, %thr1_bb69
  %"374" = call i8 @__kittel_nondef.1() #4
  %"375" = load i8* @"'__CS_round", align 1
  %"376" = zext i8 %"375" to i32
  %"377" = zext i8 %"374" to i32
  %"378" = add nsw i32 %"376", %"377"
  %"379" = icmp slt i32 %"378", 3
  %"380" = zext i1 %"379" to i32
  call void @__VERIFIER_assume(i32 %"380") #4
  %"381" = zext i8 %"374" to i32
  %"382" = load i8* @"'__CS_round", align 1
  %"383" = zext i8 %"382" to i32
  %"384" = add nsw i32 %"383", %"381"
  %"385" = trunc i32 %"384" to i8
  store i8 %"385", i8* @"'__CS_round", align 1
  %"386" = call i32 (...)* @nondet_int() #4
  %"387" = icmp ne i32 %"386", 0
  br i1 %"387", label %thr1_bb90, label %thr1_bb91

thr1_bb90:                                        ; preds = %thr1_bb89
  %"388" = load i8* @"'__CS_round", align 1
  %"389" = zext i8 %"388" to i32
  %"390" = icmp eq i32 %"389", 2
  br i1 %"390", label %thr1___CS_cs.exit9, label %thr1_bb91

thr1_bb91:                                        ; preds = %thr1_bb90, %thr1_bb89
  %"391" = load i8* @"'__CS_ret", align 1
  %"392" = zext i8 %"391" to i32
  br label %thr1___CS_cs.exit9

thr1___CS_cs.exit9:                               ; preds = %thr1_bb90, %thr1_bb91
  %"393" = phi i32 [ %"392", %thr1_bb91 ], [ 1, %thr1_bb90 ]
  %"394" = trunc i32 %"393" to i8
  store i8 %"394", i8* @"'__CS_ret", align 1
  %"395" = load i8* @"'__CS_ret", align 1
  %"396" = zext i8 %"395" to i32
  %"397" = icmp ne i32 %"396", 0
  br i1 %"397", label %thr1_bb115, label %thr1_bb65

thr1_bb92:                                        ; preds = %thr1_bb65
  br i1 %"217", label %thr1_bb93, label %thr1_bb94

thr1_bb93:                                        ; preds = %thr1_bb92
  %"398" = load i8* @"'__CS_round", align 1
  %"399" = zext i8 %"398" to i32
  %"400" = icmp eq i32 %"399", 2
  br i1 %"400", label %thr1___CS_cs.exit10, label %thr1_bb94

thr1_bb94:                                        ; preds = %thr1_bb93, %thr1_bb92
  %"401" = load i8* @"'__CS_ret", align 1
  %"402" = zext i8 %"401" to i32
  br label %thr1___CS_cs.exit10

thr1___CS_cs.exit10:                              ; preds = %thr1_bb93, %thr1_bb94
  %"403" = phi i32 [ %"402", %thr1_bb94 ], [ 1, %thr1_bb93 ]
  %"404" = trunc i32 %"403" to i8
  store i8 %"404", i8* @"'__CS_ret", align 1
  %"405" = load i8* @"'__CS_ret", align 1
  %"406" = zext i8 %"405" to i32
  %"407" = icmp ne i32 %"406", 0
  br i1 %"407", label %thr1_bb115, label %thr1_bb95

thr1_bb95:                                        ; preds = %thr1___CS_cs.exit10
  %"408" = load i8* @"'__CS_round", align 1
  %"409" = zext i8 %"408" to i64
  %"410" = getelementptr inbounds [3 x i32]* @x, i32 0, i64 %"409"
  store i32 0, i32* %"410", align 4
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
  br i1 %"424", label %thr1_bb96, label %thr1_bb97

thr1_bb96:                                        ; preds = %thr1_bb95
  %"425" = load i8* @"'__CS_round", align 1
  %"426" = zext i8 %"425" to i32
  %"427" = icmp eq i32 %"426", 2
  br i1 %"427", label %thr1___CS_cs.exit11, label %thr1_bb97

thr1_bb97:                                        ; preds = %thr1_bb96, %thr1_bb95
  %"428" = load i8* @"'__CS_ret", align 1
  %"429" = zext i8 %"428" to i32
  br label %thr1___CS_cs.exit11

thr1___CS_cs.exit11:                              ; preds = %thr1_bb96, %thr1_bb97
  %"430" = phi i32 [ %"429", %thr1_bb97 ], [ 1, %thr1_bb96 ]
  %"431" = trunc i32 %"430" to i8
  store i8 %"431", i8* @"'__CS_ret", align 1
  %"432" = load i8* @"'__CS_ret", align 1
  %"433" = zext i8 %"432" to i32
  %"434" = icmp ne i32 %"433", 0
  br i1 %"434", label %thr1_bb115, label %thr1_bb98

thr1_bb98:                                        ; preds = %thr1___CS_cs.exit11
  %"435" = load i8* @"'__CS_round", align 1
  %"436" = zext i8 %"435" to i64
  %"437" = getelementptr inbounds [3 x i32]* @x, i32 0, i64 %"436"
  %"438" = load i32* %"437", align 4
  %"439" = icmp sle i32 %"438", 0
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
  br i1 %"439", label %thr1_bb99, label %thr1_bb111

thr1_bb99:                                        ; preds = %thr1_bb98
  br i1 %"453", label %thr1_bb100, label %thr1_bb101

thr1_bb100:                                       ; preds = %thr1_bb99
  %"454" = load i8* @"'__CS_round", align 1
  %"455" = zext i8 %"454" to i32
  %"456" = icmp eq i32 %"455", 2
  br i1 %"456", label %thr1___CS_cs.exit13, label %thr1_bb101

thr1_bb101:                                       ; preds = %thr1_bb100, %thr1_bb99
  %"457" = load i8* @"'__CS_ret", align 1
  %"458" = zext i8 %"457" to i32
  br label %thr1___CS_cs.exit13

thr1___CS_cs.exit13:                              ; preds = %thr1_bb100, %thr1_bb101
  %"459" = phi i32 [ %"458", %thr1_bb101 ], [ 1, %thr1_bb100 ]
  %"460" = trunc i32 %"459" to i8
  store i8 %"460", i8* @"'__CS_ret", align 1
  %"461" = load i8* @"'__CS_ret", align 1
  %"462" = zext i8 %"461" to i32
  %"463" = icmp ne i32 %"462", 0
  br i1 %"463", label %thr1_bb115, label %thr1_bb102

thr1_bb102:                                       ; preds = %thr1___CS_cs.exit13
  %"464" = call i8 @__kittel_nondef.1() #4
  %"465" = load i8* @"'__CS_round", align 1
  %"466" = zext i8 %"465" to i32
  %"467" = zext i8 %"464" to i32
  %"468" = add nsw i32 %"466", %"467"
  %"469" = icmp slt i32 %"468", 3
  %"470" = zext i1 %"469" to i32
  call void @__VERIFIER_assume(i32 %"470") #4
  %"471" = zext i8 %"464" to i32
  %"472" = load i8* @"'__CS_round", align 1
  %"473" = zext i8 %"472" to i32
  %"474" = add nsw i32 %"473", %"471"
  %"475" = trunc i32 %"474" to i8
  store i8 %"475", i8* @"'__CS_round", align 1
  %"476" = call i32 (...)* @nondet_int() #4
  %"477" = icmp ne i32 %"476", 0
  br i1 %"477", label %thr1_bb103, label %thr1_bb104

thr1_bb103:                                       ; preds = %thr1_bb102
  %"478" = load i8* @"'__CS_round", align 1
  %"479" = zext i8 %"478" to i32
  %"480" = icmp eq i32 %"479", 2
  br i1 %"480", label %thr1___CS_cs.exit14, label %thr1_bb104

thr1_bb104:                                       ; preds = %thr1_bb103, %thr1_bb102
  %"481" = load i8* @"'__CS_ret", align 1
  %"482" = zext i8 %"481" to i32
  br label %thr1___CS_cs.exit14

thr1___CS_cs.exit14:                              ; preds = %thr1_bb103, %thr1_bb104
  %"483" = phi i32 [ %"482", %thr1_bb104 ], [ 1, %thr1_bb103 ]
  %"484" = trunc i32 %"483" to i8
  store i8 %"484", i8* @"'__CS_ret", align 1
  %"485" = load i8* @"'__CS_ret", align 1
  %"486" = zext i8 %"485" to i32
  %"487" = icmp ne i32 %"486", 0
  br i1 %"487", label %thr1_bb115, label %thr1_bb105

thr1_bb105:                                       ; preds = %thr1___CS_cs.exit14
  %"488" = load i8* @"'__CS_round", align 1
  %"489" = zext i8 %"488" to i64
  %"490" = getelementptr inbounds [3 x i32]* @turn, i32 0, i64 %"489"
  store i32 1, i32* %"490", align 4
  %"491" = call i8 @__kittel_nondef.1() #4
  %"492" = load i8* @"'__CS_round", align 1
  %"493" = zext i8 %"492" to i32
  %"494" = zext i8 %"491" to i32
  %"495" = add nsw i32 %"493", %"494"
  %"496" = icmp slt i32 %"495", 3
  %"497" = zext i1 %"496" to i32
  call void @__VERIFIER_assume(i32 %"497") #4
  %"498" = zext i8 %"491" to i32
  %"499" = load i8* @"'__CS_round", align 1
  %"500" = zext i8 %"499" to i32
  %"501" = add nsw i32 %"500", %"498"
  %"502" = trunc i32 %"501" to i8
  store i8 %"502", i8* @"'__CS_round", align 1
  %"503" = call i32 (...)* @nondet_int() #4
  %"504" = icmp ne i32 %"503", 0
  br i1 %"504", label %thr1_bb106, label %thr1_bb107

thr1_bb106:                                       ; preds = %thr1_bb105
  %"505" = load i8* @"'__CS_round", align 1
  %"506" = zext i8 %"505" to i32
  %"507" = icmp eq i32 %"506", 2
  br i1 %"507", label %thr1___CS_cs.exit15, label %thr1_bb107

thr1_bb107:                                       ; preds = %thr1_bb106, %thr1_bb105
  %"508" = load i8* @"'__CS_ret", align 1
  %"509" = zext i8 %"508" to i32
  br label %thr1___CS_cs.exit15

thr1___CS_cs.exit15:                              ; preds = %thr1_bb106, %thr1_bb107
  %"510" = phi i32 [ %"509", %thr1_bb107 ], [ 1, %thr1_bb106 ]
  %"511" = trunc i32 %"510" to i8
  store i8 %"511", i8* @"'__CS_ret", align 1
  %"512" = load i8* @"'__CS_ret", align 1
  %"513" = zext i8 %"512" to i32
  %"514" = icmp ne i32 %"513", 0
  br i1 %"514", label %thr1_bb115, label %thr1_bb108

thr1_bb108:                                       ; preds = %thr1___CS_cs.exit15
  %"515" = load i8* @"'__CS_round", align 1
  %"516" = zext i8 %"515" to i64
  %"517" = getelementptr inbounds [3 x i32]* @flag1, i32 0, i64 %"516"
  store i32 0, i32* %"517", align 4
  %"518" = call i8 @__kittel_nondef.1() #4
  %"519" = load i8* @"'__CS_round", align 1
  %"520" = zext i8 %"519" to i32
  %"521" = zext i8 %"518" to i32
  %"522" = add nsw i32 %"520", %"521"
  %"523" = icmp slt i32 %"522", 3
  %"524" = zext i1 %"523" to i32
  call void @__VERIFIER_assume(i32 %"524") #4
  %"525" = zext i8 %"518" to i32
  %"526" = load i8* @"'__CS_round", align 1
  %"527" = zext i8 %"526" to i32
  %"528" = add nsw i32 %"527", %"525"
  %"529" = trunc i32 %"528" to i8
  store i8 %"529", i8* @"'__CS_round", align 1
  %"530" = call i32 (...)* @nondet_int() #4
  %"531" = icmp ne i32 %"530", 0
  br i1 %"531", label %thr1_bb109, label %thr1_bb110

thr1_bb109:                                       ; preds = %thr1_bb108
  %"532" = load i8* @"'__CS_round", align 1
  %"533" = zext i8 %"532" to i32
  %"534" = icmp eq i32 %"533", 2
  br i1 %"534", label %thr1___CS_cs.exit16, label %thr1_bb110

thr1_bb110:                                       ; preds = %thr1_bb109, %thr1_bb108
  %"535" = load i8* @"'__CS_ret", align 1
  %"536" = zext i8 %"535" to i32
  br label %thr1___CS_cs.exit16

thr1___CS_cs.exit16:                              ; preds = %thr1_bb109, %thr1_bb110
  %"537" = phi i32 [ %"536", %thr1_bb110 ], [ 1, %thr1_bb109 ]
  %"538" = trunc i32 %"537" to i8
  store i8 %"538", i8* @"'__CS_ret", align 1
  %"539" = load i8* @"'__CS_ret", align 1
  %"540" = zext i8 %"539" to i32
  %"541" = icmp ne i32 %"540", 0
  %. = select i1 %"541", i8* null, i8* %"147"
  ret i8* %.

thr1_bb111:                                       ; preds = %thr1_bb98
  br i1 %"453", label %thr1_bb112, label %thr1_bb113

thr1_bb112:                                       ; preds = %thr1_bb111
  %"542" = load i8* @"'__CS_round", align 1
  %"543" = zext i8 %"542" to i32
  %"544" = icmp eq i32 %"543", 2
  br i1 %"544", label %thr1___CS_cs.exit12, label %thr1_bb113

thr1_bb113:                                       ; preds = %thr1_bb112, %thr1_bb111
  %"545" = load i8* @"'__CS_ret", align 1
  %"546" = zext i8 %"545" to i32
  br label %thr1___CS_cs.exit12

thr1___CS_cs.exit12:                              ; preds = %thr1_bb112, %thr1_bb113
  %"547" = phi i32 [ %"546", %thr1_bb113 ], [ 1, %thr1_bb112 ]
  %"548" = trunc i32 %"547" to i8
  store i8 %"548", i8* @"'__CS_ret", align 1
  %"549" = load i8* @"'__CS_ret", align 1
  %"550" = zext i8 %"549" to i32
  %"551" = icmp ne i32 %"550", 0
  br i1 %"551", label %thr1_bb115, label %thr1_bb114

thr1_bb114:                                       ; preds = %thr1___CS_cs.exit12
  store i8 1, i8* @"'__CS_error", align 1
  store i8 2, i8* @"'__CS_ret", align 1
  br label %thr1_bb115

thr1_bb115:                                       ; preds = %thr1___CS_cs.exit15, %thr1___CS_cs.exit14, %thr1___CS_cs.exit13, %thr1___CS_cs.exit12, %thr1___CS_cs.exit11, %thr1___CS_cs.exit10, %thr1___CS_cs.exit9, %thr1___CS_cs.exit8, %thr1___CS_cs.exit7, %thr1___CS_cs.exit6, %thr1___CS_cs.exit5, %thr1___CS_cs.exit4, %thr1___CS_cs.exit3, %thr1___CS_cs.exit2, %thr1___CS_cs.exit1, %thr1___CS_cs.exit, %thr1_bb114
  ret i8* null
}

; Function Attrs: nounwind uwtable
define i8* @thr2() #0 {
thr2_bb116:
  %"552" = call i8* @__kittel_nondef.2()
  %"553" = call i8 @__kittel_nondef.1() #4
  %"554" = load i8* @"'__CS_round", align 1
  %"555" = zext i8 %"554" to i32
  %"556" = zext i8 %"553" to i32
  %"557" = add nsw i32 %"555", %"556"
  %"558" = icmp slt i32 %"557", 3
  %"559" = zext i1 %"558" to i32
  call void @__VERIFIER_assume(i32 %"559") #4
  %"560" = zext i8 %"553" to i32
  %"561" = load i8* @"'__CS_round", align 1
  %"562" = zext i8 %"561" to i32
  %"563" = add nsw i32 %"562", %"560"
  %"564" = trunc i32 %"563" to i8
  store i8 %"564", i8* @"'__CS_round", align 1
  %"565" = call i32 (...)* @nondet_int() #4
  %"566" = icmp ne i32 %"565", 0
  br i1 %"566", label %thr2_bb117, label %thr2_bb118

thr2_bb117:                                       ; preds = %thr2_bb116
  %"567" = load i8* @"'__CS_round", align 1
  %"568" = zext i8 %"567" to i32
  %"569" = icmp eq i32 %"568", 2
  br i1 %"569", label %thr2___CS_cs.exit, label %thr2_bb118

thr2_bb118:                                       ; preds = %thr2_bb117, %thr2_bb116
  %"570" = load i8* @"'__CS_ret", align 1
  %"571" = zext i8 %"570" to i32
  br label %thr2___CS_cs.exit

thr2___CS_cs.exit:                                ; preds = %thr2_bb117, %thr2_bb118
  %"572" = phi i32 [ %"571", %thr2_bb118 ], [ 1, %thr2_bb117 ]
  %"573" = trunc i32 %"572" to i8
  store i8 %"573", i8* @"'__CS_ret", align 1
  %"574" = load i8* @"'__CS_ret", align 1
  %"575" = zext i8 %"574" to i32
  %"576" = icmp ne i32 %"575", 0
  br i1 %"576", label %thr2_bb172, label %thr2_bb119

thr2_bb119:                                       ; preds = %thr2___CS_cs.exit
  %"577" = load i8* @"'__CS_round", align 1
  %"578" = zext i8 %"577" to i64
  %"579" = getelementptr inbounds [3 x i32]* @flag2, i32 0, i64 %"578"
  store i32 1, i32* %"579", align 4
  %"580" = call i8 @__kittel_nondef.1() #4
  %"581" = load i8* @"'__CS_round", align 1
  %"582" = zext i8 %"581" to i32
  %"583" = zext i8 %"580" to i32
  %"584" = add nsw i32 %"582", %"583"
  %"585" = icmp slt i32 %"584", 3
  %"586" = zext i1 %"585" to i32
  call void @__VERIFIER_assume(i32 %"586") #4
  %"587" = zext i8 %"580" to i32
  %"588" = load i8* @"'__CS_round", align 1
  %"589" = zext i8 %"588" to i32
  %"590" = add nsw i32 %"589", %"587"
  %"591" = trunc i32 %"590" to i8
  store i8 %"591", i8* @"'__CS_round", align 1
  %"592" = call i32 (...)* @nondet_int() #4
  %"593" = icmp ne i32 %"592", 0
  br i1 %"593", label %thr2_bb120, label %thr2_bb121

thr2_bb120:                                       ; preds = %thr2_bb119
  %"594" = load i8* @"'__CS_round", align 1
  %"595" = zext i8 %"594" to i32
  %"596" = icmp eq i32 %"595", 2
  br i1 %"596", label %thr2___CS_cs.exit1, label %thr2_bb121

thr2_bb121:                                       ; preds = %thr2_bb120, %thr2_bb119
  %"597" = load i8* @"'__CS_ret", align 1
  %"598" = zext i8 %"597" to i32
  br label %thr2___CS_cs.exit1

thr2___CS_cs.exit1:                               ; preds = %thr2_bb120, %thr2_bb121
  %"599" = phi i32 [ %"598", %thr2_bb121 ], [ 1, %thr2_bb120 ]
  %"600" = trunc i32 %"599" to i8
  store i8 %"600", i8* @"'__CS_ret", align 1
  %"601" = load i8* @"'__CS_ret", align 1
  %"602" = zext i8 %"601" to i32
  %"603" = icmp ne i32 %"602", 0
  br i1 %"603", label %thr2_bb172, label %thr2_bb122

thr2_bb122:                                       ; preds = %thr2___CS_cs.exit9, %thr2___CS_cs.exit1
  %"604" = load i8* @"'__CS_round", align 1
  %"605" = zext i8 %"604" to i64
  %"606" = getelementptr inbounds [3 x i32]* @flag1, i32 0, i64 %"605"
  %"607" = load i32* %"606", align 4
  %"608" = icmp sge i32 %"607", 1
  %"609" = call i8 @__kittel_nondef.1() #4
  %"610" = load i8* @"'__CS_round", align 1
  %"611" = zext i8 %"610" to i32
  %"612" = zext i8 %"609" to i32
  %"613" = add nsw i32 %"611", %"612"
  %"614" = icmp slt i32 %"613", 3
  %"615" = zext i1 %"614" to i32
  call void @__VERIFIER_assume(i32 %"615") #4
  %"616" = zext i8 %"609" to i32
  %"617" = load i8* @"'__CS_round", align 1
  %"618" = zext i8 %"617" to i32
  %"619" = add nsw i32 %"618", %"616"
  %"620" = trunc i32 %"619" to i8
  store i8 %"620", i8* @"'__CS_round", align 1
  %"621" = call i32 (...)* @nondet_int() #4
  %"622" = icmp ne i32 %"621", 0
  br i1 %"608", label %thr2_bb123, label %thr2_bb149

thr2_bb123:                                       ; preds = %thr2_bb122
  br i1 %"622", label %thr2_bb124, label %thr2_bb125

thr2_bb124:                                       ; preds = %thr2_bb123
  %"623" = load i8* @"'__CS_round", align 1
  %"624" = zext i8 %"623" to i32
  %"625" = icmp eq i32 %"624", 2
  br i1 %"625", label %thr2___CS_cs.exit2, label %thr2_bb125

thr2_bb125:                                       ; preds = %thr2_bb124, %thr2_bb123
  %"626" = load i8* @"'__CS_ret", align 1
  %"627" = zext i8 %"626" to i32
  br label %thr2___CS_cs.exit2

thr2___CS_cs.exit2:                               ; preds = %thr2_bb124, %thr2_bb125
  %"628" = phi i32 [ %"627", %thr2_bb125 ], [ 1, %thr2_bb124 ]
  %"629" = trunc i32 %"628" to i8
  store i8 %"629", i8* @"'__CS_ret", align 1
  %"630" = load i8* @"'__CS_ret", align 1
  %"631" = zext i8 %"630" to i32
  %"632" = icmp ne i32 %"631", 0
  br i1 %"632", label %thr2_bb172, label %thr2_bb126

thr2_bb126:                                       ; preds = %thr2___CS_cs.exit2
  %"633" = load i8* @"'__CS_round", align 1
  %"634" = zext i8 %"633" to i64
  %"635" = getelementptr inbounds [3 x i32]* @turn, i32 0, i64 %"634"
  %"636" = load i32* %"635", align 4
  %"637" = icmp ne i32 %"636", 1
  br i1 %"637", label %thr2_bb127, label %thr2_bb146

thr2_bb127:                                       ; preds = %thr2_bb126
  %"638" = call i8 @__kittel_nondef.1() #4
  %"639" = load i8* @"'__CS_round", align 1
  %"640" = zext i8 %"639" to i32
  %"641" = zext i8 %"638" to i32
  %"642" = add nsw i32 %"640", %"641"
  %"643" = icmp slt i32 %"642", 3
  %"644" = zext i1 %"643" to i32
  call void @__VERIFIER_assume(i32 %"644") #4
  %"645" = zext i8 %"638" to i32
  %"646" = load i8* @"'__CS_round", align 1
  %"647" = zext i8 %"646" to i32
  %"648" = add nsw i32 %"647", %"645"
  %"649" = trunc i32 %"648" to i8
  store i8 %"649", i8* @"'__CS_round", align 1
  %"650" = call i32 (...)* @nondet_int() #4
  %"651" = icmp ne i32 %"650", 0
  br i1 %"651", label %thr2_bb128, label %thr2_bb129

thr2_bb128:                                       ; preds = %thr2_bb127
  %"652" = load i8* @"'__CS_round", align 1
  %"653" = zext i8 %"652" to i32
  %"654" = icmp eq i32 %"653", 2
  br i1 %"654", label %thr2___CS_cs.exit3, label %thr2_bb129

thr2_bb129:                                       ; preds = %thr2_bb128, %thr2_bb127
  %"655" = load i8* @"'__CS_ret", align 1
  %"656" = zext i8 %"655" to i32
  br label %thr2___CS_cs.exit3

thr2___CS_cs.exit3:                               ; preds = %thr2_bb128, %thr2_bb129
  %"657" = phi i32 [ %"656", %thr2_bb129 ], [ 1, %thr2_bb128 ]
  %"658" = trunc i32 %"657" to i8
  store i8 %"658", i8* @"'__CS_ret", align 1
  %"659" = load i8* @"'__CS_ret", align 1
  %"660" = zext i8 %"659" to i32
  %"661" = icmp ne i32 %"660", 0
  br i1 %"661", label %thr2_bb172, label %thr2_bb130

thr2_bb130:                                       ; preds = %thr2___CS_cs.exit3
  %"662" = load i8* @"'__CS_round", align 1
  %"663" = zext i8 %"662" to i64
  %"664" = getelementptr inbounds [3 x i32]* @flag2, i32 0, i64 %"663"
  store i32 0, i32* %"664", align 4
  %"665" = call i8 @__kittel_nondef.1() #4
  %"666" = load i8* @"'__CS_round", align 1
  %"667" = zext i8 %"666" to i32
  %"668" = zext i8 %"665" to i32
  %"669" = add nsw i32 %"667", %"668"
  %"670" = icmp slt i32 %"669", 3
  %"671" = zext i1 %"670" to i32
  call void @__VERIFIER_assume(i32 %"671") #4
  %"672" = zext i8 %"665" to i32
  %"673" = load i8* @"'__CS_round", align 1
  %"674" = zext i8 %"673" to i32
  %"675" = add nsw i32 %"674", %"672"
  %"676" = trunc i32 %"675" to i8
  store i8 %"676", i8* @"'__CS_round", align 1
  %"677" = call i32 (...)* @nondet_int() #4
  %"678" = icmp ne i32 %"677", 0
  br i1 %"678", label %thr2_bb131, label %thr2_bb132

thr2_bb131:                                       ; preds = %thr2_bb130
  %"679" = load i8* @"'__CS_round", align 1
  %"680" = zext i8 %"679" to i32
  %"681" = icmp eq i32 %"680", 2
  br i1 %"681", label %thr2___CS_cs.exit4, label %thr2_bb132

thr2_bb132:                                       ; preds = %thr2_bb131, %thr2_bb130
  %"682" = load i8* @"'__CS_ret", align 1
  %"683" = zext i8 %"682" to i32
  br label %thr2___CS_cs.exit4

thr2___CS_cs.exit4:                               ; preds = %thr2_bb131, %thr2_bb132
  %"684" = phi i32 [ %"683", %thr2_bb132 ], [ 1, %thr2_bb131 ]
  %"685" = trunc i32 %"684" to i8
  store i8 %"685", i8* @"'__CS_ret", align 1
  %"686" = load i8* @"'__CS_ret", align 1
  %"687" = zext i8 %"686" to i32
  %"688" = icmp ne i32 %"687", 0
  br i1 %"688", label %thr2_bb172, label %thr2_bb133

thr2_bb133:                                       ; preds = %thr2___CS_cs.exit5, %thr2___CS_cs.exit4
  %"689" = load i8* @"'__CS_round", align 1
  %"690" = zext i8 %"689" to i64
  %"691" = getelementptr inbounds [3 x i32]* @turn, i32 0, i64 %"690"
  %"692" = load i32* %"691", align 4
  %"693" = icmp ne i32 %"692", 1
  %"694" = call i8 @__kittel_nondef.1() #4
  %"695" = load i8* @"'__CS_round", align 1
  %"696" = zext i8 %"695" to i32
  %"697" = zext i8 %"694" to i32
  %"698" = add nsw i32 %"696", %"697"
  %"699" = icmp slt i32 %"698", 3
  %"700" = zext i1 %"699" to i32
  call void @__VERIFIER_assume(i32 %"700") #4
  %"701" = zext i8 %"694" to i32
  %"702" = load i8* @"'__CS_round", align 1
  %"703" = zext i8 %"702" to i32
  %"704" = add nsw i32 %"703", %"701"
  %"705" = trunc i32 %"704" to i8
  store i8 %"705", i8* @"'__CS_round", align 1
  %"706" = call i32 (...)* @nondet_int() #4
  %"707" = icmp ne i32 %"706", 0
  br i1 %"693", label %thr2_bb134, label %thr2_bb137

thr2_bb134:                                       ; preds = %thr2_bb133
  br i1 %"707", label %thr2_bb135, label %thr2_bb136

thr2_bb135:                                       ; preds = %thr2_bb134
  %"708" = load i8* @"'__CS_round", align 1
  %"709" = zext i8 %"708" to i32
  %"710" = icmp eq i32 %"709", 2
  br i1 %"710", label %thr2___CS_cs.exit5, label %thr2_bb136

thr2_bb136:                                       ; preds = %thr2_bb135, %thr2_bb134
  %"711" = load i8* @"'__CS_ret", align 1
  %"712" = zext i8 %"711" to i32
  br label %thr2___CS_cs.exit5

thr2___CS_cs.exit5:                               ; preds = %thr2_bb135, %thr2_bb136
  %"713" = phi i32 [ %"712", %thr2_bb136 ], [ 1, %thr2_bb135 ]
  %"714" = trunc i32 %"713" to i8
  store i8 %"714", i8* @"'__CS_ret", align 1
  %"715" = load i8* @"'__CS_ret", align 1
  %"716" = zext i8 %"715" to i32
  %"717" = icmp ne i32 %"716", 0
  br i1 %"717", label %thr2_bb172, label %thr2_bb133

thr2_bb137:                                       ; preds = %thr2_bb133
  br i1 %"707", label %thr2_bb138, label %thr2_bb139

thr2_bb138:                                       ; preds = %thr2_bb137
  %"718" = load i8* @"'__CS_round", align 1
  %"719" = zext i8 %"718" to i32
  %"720" = icmp eq i32 %"719", 2
  br i1 %"720", label %thr2___CS_cs.exit6, label %thr2_bb139

thr2_bb139:                                       ; preds = %thr2_bb138, %thr2_bb137
  %"721" = load i8* @"'__CS_ret", align 1
  %"722" = zext i8 %"721" to i32
  br label %thr2___CS_cs.exit6

thr2___CS_cs.exit6:                               ; preds = %thr2_bb138, %thr2_bb139
  %"723" = phi i32 [ %"722", %thr2_bb139 ], [ 1, %thr2_bb138 ]
  %"724" = trunc i32 %"723" to i8
  store i8 %"724", i8* @"'__CS_ret", align 1
  %"725" = load i8* @"'__CS_ret", align 1
  %"726" = zext i8 %"725" to i32
  %"727" = icmp ne i32 %"726", 0
  br i1 %"727", label %thr2_bb172, label %thr2_bb140

thr2_bb140:                                       ; preds = %thr2___CS_cs.exit6
  %"728" = call i8 @__kittel_nondef.1() #4
  %"729" = load i8* @"'__CS_round", align 1
  %"730" = zext i8 %"729" to i32
  %"731" = zext i8 %"728" to i32
  %"732" = add nsw i32 %"730", %"731"
  %"733" = icmp slt i32 %"732", 3
  %"734" = zext i1 %"733" to i32
  call void @__VERIFIER_assume(i32 %"734") #4
  %"735" = zext i8 %"728" to i32
  %"736" = load i8* @"'__CS_round", align 1
  %"737" = zext i8 %"736" to i32
  %"738" = add nsw i32 %"737", %"735"
  %"739" = trunc i32 %"738" to i8
  store i8 %"739", i8* @"'__CS_round", align 1
  %"740" = call i32 (...)* @nondet_int() #4
  %"741" = icmp ne i32 %"740", 0
  br i1 %"741", label %thr2_bb141, label %thr2_bb142

thr2_bb141:                                       ; preds = %thr2_bb140
  %"742" = load i8* @"'__CS_round", align 1
  %"743" = zext i8 %"742" to i32
  %"744" = icmp eq i32 %"743", 2
  br i1 %"744", label %thr2___CS_cs.exit7, label %thr2_bb142

thr2_bb142:                                       ; preds = %thr2_bb141, %thr2_bb140
  %"745" = load i8* @"'__CS_ret", align 1
  %"746" = zext i8 %"745" to i32
  br label %thr2___CS_cs.exit7

thr2___CS_cs.exit7:                               ; preds = %thr2_bb141, %thr2_bb142
  %"747" = phi i32 [ %"746", %thr2_bb142 ], [ 1, %thr2_bb141 ]
  %"748" = trunc i32 %"747" to i8
  store i8 %"748", i8* @"'__CS_ret", align 1
  %"749" = load i8* @"'__CS_ret", align 1
  %"750" = zext i8 %"749" to i32
  %"751" = icmp ne i32 %"750", 0
  br i1 %"751", label %thr2_bb172, label %thr2_bb143

thr2_bb143:                                       ; preds = %thr2___CS_cs.exit7
  %"752" = load i8* @"'__CS_round", align 1
  %"753" = zext i8 %"752" to i64
  %"754" = getelementptr inbounds [3 x i32]* @flag2, i32 0, i64 %"753"
  store i32 1, i32* %"754", align 4
  %"755" = call i8 @__kittel_nondef.1() #4
  %"756" = load i8* @"'__CS_round", align 1
  %"757" = zext i8 %"756" to i32
  %"758" = zext i8 %"755" to i32
  %"759" = add nsw i32 %"757", %"758"
  %"760" = icmp slt i32 %"759", 3
  %"761" = zext i1 %"760" to i32
  call void @__VERIFIER_assume(i32 %"761") #4
  %"762" = zext i8 %"755" to i32
  %"763" = load i8* @"'__CS_round", align 1
  %"764" = zext i8 %"763" to i32
  %"765" = add nsw i32 %"764", %"762"
  %"766" = trunc i32 %"765" to i8
  store i8 %"766", i8* @"'__CS_round", align 1
  %"767" = call i32 (...)* @nondet_int() #4
  %"768" = icmp ne i32 %"767", 0
  br i1 %"768", label %thr2_bb144, label %thr2_bb145

thr2_bb144:                                       ; preds = %thr2_bb143
  %"769" = load i8* @"'__CS_round", align 1
  %"770" = zext i8 %"769" to i32
  %"771" = icmp eq i32 %"770", 2
  br i1 %"771", label %thr2___CS_cs.exit8, label %thr2_bb145

thr2_bb145:                                       ; preds = %thr2_bb144, %thr2_bb143
  %"772" = load i8* @"'__CS_ret", align 1
  %"773" = zext i8 %"772" to i32
  br label %thr2___CS_cs.exit8

thr2___CS_cs.exit8:                               ; preds = %thr2_bb144, %thr2_bb145
  %"774" = phi i32 [ %"773", %thr2_bb145 ], [ 1, %thr2_bb144 ]
  %"775" = trunc i32 %"774" to i8
  store i8 %"775", i8* @"'__CS_ret", align 1
  %"776" = load i8* @"'__CS_ret", align 1
  %"777" = zext i8 %"776" to i32
  %"778" = icmp ne i32 %"777", 0
  br i1 %"778", label %thr2_bb172, label %thr2_bb146

thr2_bb146:                                       ; preds = %thr2___CS_cs.exit8, %thr2_bb126
  %"779" = call i8 @__kittel_nondef.1() #4
  %"780" = load i8* @"'__CS_round", align 1
  %"781" = zext i8 %"780" to i32
  %"782" = zext i8 %"779" to i32
  %"783" = add nsw i32 %"781", %"782"
  %"784" = icmp slt i32 %"783", 3
  %"785" = zext i1 %"784" to i32
  call void @__VERIFIER_assume(i32 %"785") #4
  %"786" = zext i8 %"779" to i32
  %"787" = load i8* @"'__CS_round", align 1
  %"788" = zext i8 %"787" to i32
  %"789" = add nsw i32 %"788", %"786"
  %"790" = trunc i32 %"789" to i8
  store i8 %"790", i8* @"'__CS_round", align 1
  %"791" = call i32 (...)* @nondet_int() #4
  %"792" = icmp ne i32 %"791", 0
  br i1 %"792", label %thr2_bb147, label %thr2_bb148

thr2_bb147:                                       ; preds = %thr2_bb146
  %"793" = load i8* @"'__CS_round", align 1
  %"794" = zext i8 %"793" to i32
  %"795" = icmp eq i32 %"794", 2
  br i1 %"795", label %thr2___CS_cs.exit9, label %thr2_bb148

thr2_bb148:                                       ; preds = %thr2_bb147, %thr2_bb146
  %"796" = load i8* @"'__CS_ret", align 1
  %"797" = zext i8 %"796" to i32
  br label %thr2___CS_cs.exit9

thr2___CS_cs.exit9:                               ; preds = %thr2_bb147, %thr2_bb148
  %"798" = phi i32 [ %"797", %thr2_bb148 ], [ 1, %thr2_bb147 ]
  %"799" = trunc i32 %"798" to i8
  store i8 %"799", i8* @"'__CS_ret", align 1
  %"800" = load i8* @"'__CS_ret", align 1
  %"801" = zext i8 %"800" to i32
  %"802" = icmp ne i32 %"801", 0
  br i1 %"802", label %thr2_bb172, label %thr2_bb122

thr2_bb149:                                       ; preds = %thr2_bb122
  br i1 %"622", label %thr2_bb150, label %thr2_bb151

thr2_bb150:                                       ; preds = %thr2_bb149
  %"803" = load i8* @"'__CS_round", align 1
  %"804" = zext i8 %"803" to i32
  %"805" = icmp eq i32 %"804", 2
  br i1 %"805", label %thr2___CS_cs.exit10, label %thr2_bb151

thr2_bb151:                                       ; preds = %thr2_bb150, %thr2_bb149
  %"806" = load i8* @"'__CS_ret", align 1
  %"807" = zext i8 %"806" to i32
  br label %thr2___CS_cs.exit10

thr2___CS_cs.exit10:                              ; preds = %thr2_bb150, %thr2_bb151
  %"808" = phi i32 [ %"807", %thr2_bb151 ], [ 1, %thr2_bb150 ]
  %"809" = trunc i32 %"808" to i8
  store i8 %"809", i8* @"'__CS_ret", align 1
  %"810" = load i8* @"'__CS_ret", align 1
  %"811" = zext i8 %"810" to i32
  %"812" = icmp ne i32 %"811", 0
  br i1 %"812", label %thr2_bb172, label %thr2_bb152

thr2_bb152:                                       ; preds = %thr2___CS_cs.exit10
  %"813" = load i8* @"'__CS_round", align 1
  %"814" = zext i8 %"813" to i64
  %"815" = getelementptr inbounds [3 x i32]* @x, i32 0, i64 %"814"
  store i32 1, i32* %"815", align 4
  %"816" = call i8 @__kittel_nondef.1() #4
  %"817" = load i8* @"'__CS_round", align 1
  %"818" = zext i8 %"817" to i32
  %"819" = zext i8 %"816" to i32
  %"820" = add nsw i32 %"818", %"819"
  %"821" = icmp slt i32 %"820", 3
  %"822" = zext i1 %"821" to i32
  call void @__VERIFIER_assume(i32 %"822") #4
  %"823" = zext i8 %"816" to i32
  %"824" = load i8* @"'__CS_round", align 1
  %"825" = zext i8 %"824" to i32
  %"826" = add nsw i32 %"825", %"823"
  %"827" = trunc i32 %"826" to i8
  store i8 %"827", i8* @"'__CS_round", align 1
  %"828" = call i32 (...)* @nondet_int() #4
  %"829" = icmp ne i32 %"828", 0
  br i1 %"829", label %thr2_bb153, label %thr2_bb154

thr2_bb153:                                       ; preds = %thr2_bb152
  %"830" = load i8* @"'__CS_round", align 1
  %"831" = zext i8 %"830" to i32
  %"832" = icmp eq i32 %"831", 2
  br i1 %"832", label %thr2___CS_cs.exit11, label %thr2_bb154

thr2_bb154:                                       ; preds = %thr2_bb153, %thr2_bb152
  %"833" = load i8* @"'__CS_ret", align 1
  %"834" = zext i8 %"833" to i32
  br label %thr2___CS_cs.exit11

thr2___CS_cs.exit11:                              ; preds = %thr2_bb153, %thr2_bb154
  %"835" = phi i32 [ %"834", %thr2_bb154 ], [ 1, %thr2_bb153 ]
  %"836" = trunc i32 %"835" to i8
  store i8 %"836", i8* @"'__CS_ret", align 1
  %"837" = load i8* @"'__CS_ret", align 1
  %"838" = zext i8 %"837" to i32
  %"839" = icmp ne i32 %"838", 0
  br i1 %"839", label %thr2_bb172, label %thr2_bb155

thr2_bb155:                                       ; preds = %thr2___CS_cs.exit11
  %"840" = load i8* @"'__CS_round", align 1
  %"841" = zext i8 %"840" to i64
  %"842" = getelementptr inbounds [3 x i32]* @x, i32 0, i64 %"841"
  %"843" = load i32* %"842", align 4
  %"844" = icmp sge i32 %"843", 1
  %"845" = call i8 @__kittel_nondef.1() #4
  %"846" = load i8* @"'__CS_round", align 1
  %"847" = zext i8 %"846" to i32
  %"848" = zext i8 %"845" to i32
  %"849" = add nsw i32 %"847", %"848"
  %"850" = icmp slt i32 %"849", 3
  %"851" = zext i1 %"850" to i32
  call void @__VERIFIER_assume(i32 %"851") #4
  %"852" = zext i8 %"845" to i32
  %"853" = load i8* @"'__CS_round", align 1
  %"854" = zext i8 %"853" to i32
  %"855" = add nsw i32 %"854", %"852"
  %"856" = trunc i32 %"855" to i8
  store i8 %"856", i8* @"'__CS_round", align 1
  %"857" = call i32 (...)* @nondet_int() #4
  %"858" = icmp ne i32 %"857", 0
  br i1 %"844", label %thr2_bb156, label %thr2_bb168

thr2_bb156:                                       ; preds = %thr2_bb155
  br i1 %"858", label %thr2_bb157, label %thr2_bb158

thr2_bb157:                                       ; preds = %thr2_bb156
  %"859" = load i8* @"'__CS_round", align 1
  %"860" = zext i8 %"859" to i32
  %"861" = icmp eq i32 %"860", 2
  br i1 %"861", label %thr2___CS_cs.exit13, label %thr2_bb158

thr2_bb158:                                       ; preds = %thr2_bb157, %thr2_bb156
  %"862" = load i8* @"'__CS_ret", align 1
  %"863" = zext i8 %"862" to i32
  br label %thr2___CS_cs.exit13

thr2___CS_cs.exit13:                              ; preds = %thr2_bb157, %thr2_bb158
  %"864" = phi i32 [ %"863", %thr2_bb158 ], [ 1, %thr2_bb157 ]
  %"865" = trunc i32 %"864" to i8
  store i8 %"865", i8* @"'__CS_ret", align 1
  %"866" = load i8* @"'__CS_ret", align 1
  %"867" = zext i8 %"866" to i32
  %"868" = icmp ne i32 %"867", 0
  br i1 %"868", label %thr2_bb172, label %thr2_bb159

thr2_bb159:                                       ; preds = %thr2___CS_cs.exit13
  %"869" = call i8 @__kittel_nondef.1() #4
  %"870" = load i8* @"'__CS_round", align 1
  %"871" = zext i8 %"870" to i32
  %"872" = zext i8 %"869" to i32
  %"873" = add nsw i32 %"871", %"872"
  %"874" = icmp slt i32 %"873", 3
  %"875" = zext i1 %"874" to i32
  call void @__VERIFIER_assume(i32 %"875") #4
  %"876" = zext i8 %"869" to i32
  %"877" = load i8* @"'__CS_round", align 1
  %"878" = zext i8 %"877" to i32
  %"879" = add nsw i32 %"878", %"876"
  %"880" = trunc i32 %"879" to i8
  store i8 %"880", i8* @"'__CS_round", align 1
  %"881" = call i32 (...)* @nondet_int() #4
  %"882" = icmp ne i32 %"881", 0
  br i1 %"882", label %thr2_bb160, label %thr2_bb161

thr2_bb160:                                       ; preds = %thr2_bb159
  %"883" = load i8* @"'__CS_round", align 1
  %"884" = zext i8 %"883" to i32
  %"885" = icmp eq i32 %"884", 2
  br i1 %"885", label %thr2___CS_cs.exit14, label %thr2_bb161

thr2_bb161:                                       ; preds = %thr2_bb160, %thr2_bb159
  %"886" = load i8* @"'__CS_ret", align 1
  %"887" = zext i8 %"886" to i32
  br label %thr2___CS_cs.exit14

thr2___CS_cs.exit14:                              ; preds = %thr2_bb160, %thr2_bb161
  %"888" = phi i32 [ %"887", %thr2_bb161 ], [ 1, %thr2_bb160 ]
  %"889" = trunc i32 %"888" to i8
  store i8 %"889", i8* @"'__CS_ret", align 1
  %"890" = load i8* @"'__CS_ret", align 1
  %"891" = zext i8 %"890" to i32
  %"892" = icmp ne i32 %"891", 0
  br i1 %"892", label %thr2_bb172, label %thr2_bb162

thr2_bb162:                                       ; preds = %thr2___CS_cs.exit14
  %"893" = load i8* @"'__CS_round", align 1
  %"894" = zext i8 %"893" to i64
  %"895" = getelementptr inbounds [3 x i32]* @turn, i32 0, i64 %"894"
  store i32 1, i32* %"895", align 4
  %"896" = call i8 @__kittel_nondef.1() #4
  %"897" = load i8* @"'__CS_round", align 1
  %"898" = zext i8 %"897" to i32
  %"899" = zext i8 %"896" to i32
  %"900" = add nsw i32 %"898", %"899"
  %"901" = icmp slt i32 %"900", 3
  %"902" = zext i1 %"901" to i32
  call void @__VERIFIER_assume(i32 %"902") #4
  %"903" = zext i8 %"896" to i32
  %"904" = load i8* @"'__CS_round", align 1
  %"905" = zext i8 %"904" to i32
  %"906" = add nsw i32 %"905", %"903"
  %"907" = trunc i32 %"906" to i8
  store i8 %"907", i8* @"'__CS_round", align 1
  %"908" = call i32 (...)* @nondet_int() #4
  %"909" = icmp ne i32 %"908", 0
  br i1 %"909", label %thr2_bb163, label %thr2_bb164

thr2_bb163:                                       ; preds = %thr2_bb162
  %"910" = load i8* @"'__CS_round", align 1
  %"911" = zext i8 %"910" to i32
  %"912" = icmp eq i32 %"911", 2
  br i1 %"912", label %thr2___CS_cs.exit15, label %thr2_bb164

thr2_bb164:                                       ; preds = %thr2_bb163, %thr2_bb162
  %"913" = load i8* @"'__CS_ret", align 1
  %"914" = zext i8 %"913" to i32
  br label %thr2___CS_cs.exit15

thr2___CS_cs.exit15:                              ; preds = %thr2_bb163, %thr2_bb164
  %"915" = phi i32 [ %"914", %thr2_bb164 ], [ 1, %thr2_bb163 ]
  %"916" = trunc i32 %"915" to i8
  store i8 %"916", i8* @"'__CS_ret", align 1
  %"917" = load i8* @"'__CS_ret", align 1
  %"918" = zext i8 %"917" to i32
  %"919" = icmp ne i32 %"918", 0
  br i1 %"919", label %thr2_bb172, label %thr2_bb165

thr2_bb165:                                       ; preds = %thr2___CS_cs.exit15
  %"920" = load i8* @"'__CS_round", align 1
  %"921" = zext i8 %"920" to i64
  %"922" = getelementptr inbounds [3 x i32]* @flag2, i32 0, i64 %"921"
  store i32 0, i32* %"922", align 4
  %"923" = call i8 @__kittel_nondef.1() #4
  %"924" = load i8* @"'__CS_round", align 1
  %"925" = zext i8 %"924" to i32
  %"926" = zext i8 %"923" to i32
  %"927" = add nsw i32 %"925", %"926"
  %"928" = icmp slt i32 %"927", 3
  %"929" = zext i1 %"928" to i32
  call void @__VERIFIER_assume(i32 %"929") #4
  %"930" = zext i8 %"923" to i32
  %"931" = load i8* @"'__CS_round", align 1
  %"932" = zext i8 %"931" to i32
  %"933" = add nsw i32 %"932", %"930"
  %"934" = trunc i32 %"933" to i8
  store i8 %"934", i8* @"'__CS_round", align 1
  %"935" = call i32 (...)* @nondet_int() #4
  %"936" = icmp ne i32 %"935", 0
  br i1 %"936", label %thr2_bb166, label %thr2_bb167

thr2_bb166:                                       ; preds = %thr2_bb165
  %"937" = load i8* @"'__CS_round", align 1
  %"938" = zext i8 %"937" to i32
  %"939" = icmp eq i32 %"938", 2
  br i1 %"939", label %thr2___CS_cs.exit16, label %thr2_bb167

thr2_bb167:                                       ; preds = %thr2_bb166, %thr2_bb165
  %"940" = load i8* @"'__CS_ret", align 1
  %"941" = zext i8 %"940" to i32
  br label %thr2___CS_cs.exit16

thr2___CS_cs.exit16:                              ; preds = %thr2_bb166, %thr2_bb167
  %"942" = phi i32 [ %"941", %thr2_bb167 ], [ 1, %thr2_bb166 ]
  %"943" = trunc i32 %"942" to i8
  store i8 %"943", i8* @"'__CS_ret", align 1
  %"944" = load i8* @"'__CS_ret", align 1
  %"945" = zext i8 %"944" to i32
  %"946" = icmp ne i32 %"945", 0
  %. = select i1 %"946", i8* null, i8* %"552"
  ret i8* %.

thr2_bb168:                                       ; preds = %thr2_bb155
  br i1 %"858", label %thr2_bb169, label %thr2_bb170

thr2_bb169:                                       ; preds = %thr2_bb168
  %"947" = load i8* @"'__CS_round", align 1
  %"948" = zext i8 %"947" to i32
  %"949" = icmp eq i32 %"948", 2
  br i1 %"949", label %thr2___CS_cs.exit12, label %thr2_bb170

thr2_bb170:                                       ; preds = %thr2_bb169, %thr2_bb168
  %"950" = load i8* @"'__CS_ret", align 1
  %"951" = zext i8 %"950" to i32
  br label %thr2___CS_cs.exit12

thr2___CS_cs.exit12:                              ; preds = %thr2_bb169, %thr2_bb170
  %"952" = phi i32 [ %"951", %thr2_bb170 ], [ 1, %thr2_bb169 ]
  %"953" = trunc i32 %"952" to i8
  store i8 %"953", i8* @"'__CS_ret", align 1
  %"954" = load i8* @"'__CS_ret", align 1
  %"955" = zext i8 %"954" to i32
  %"956" = icmp ne i32 %"955", 0
  br i1 %"956", label %thr2_bb172, label %thr2_bb171

thr2_bb171:                                       ; preds = %thr2___CS_cs.exit12
  store i8 1, i8* @"'__CS_error", align 1
  store i8 2, i8* @"'__CS_ret", align 1
  br label %thr2_bb172

thr2_bb172:                                       ; preds = %thr2___CS_cs.exit15, %thr2___CS_cs.exit14, %thr2___CS_cs.exit13, %thr2___CS_cs.exit12, %thr2___CS_cs.exit11, %thr2___CS_cs.exit10, %thr2___CS_cs.exit9, %thr2___CS_cs.exit8, %thr2___CS_cs.exit7, %thr2___CS_cs.exit6, %thr2___CS_cs.exit5, %thr2___CS_cs.exit4, %thr2___CS_cs.exit3, %thr2___CS_cs.exit2, %thr2___CS_cs.exit1, %thr2___CS_cs.exit, %thr2_bb171
  ret i8* null
}

; Function Attrs: nounwind uwtable
define i8* @main_thread(i8* %arg) #0 {
main_thread_bb173:
  %"957" = call i8* @__kittel_nondef.2()
  %"958" = call i8 @__kittel_nondef.1() #4
  %"959" = load i8* @"'__CS_round", align 1
  %"960" = zext i8 %"959" to i32
  %"961" = zext i8 %"958" to i32
  %"962" = add nsw i32 %"960", %"961"
  %"963" = icmp slt i32 %"962", 3
  %"964" = zext i1 %"963" to i32
  call void @__VERIFIER_assume(i32 %"964") #4
  %"965" = zext i8 %"958" to i32
  %"966" = load i8* @"'__CS_round", align 1
  %"967" = zext i8 %"966" to i32
  %"968" = add nsw i32 %"967", %"965"
  %"969" = trunc i32 %"968" to i8
  store i8 %"969", i8* @"'__CS_round", align 1
  %"970" = call i32 (...)* @nondet_int() #4
  %"971" = icmp ne i32 %"970", 0
  br i1 %"971", label %main_thread_bb174, label %main_thread_bb175

main_thread_bb174:                                ; preds = %main_thread_bb173
  %"972" = load i8* @"'__CS_round", align 1
  %"973" = zext i8 %"972" to i32
  %"974" = icmp eq i32 %"973", 2
  br i1 %"974", label %main_thread___CS_cs.exit, label %main_thread_bb175

main_thread_bb175:                                ; preds = %main_thread_bb174, %main_thread_bb173
  %"975" = load i8* @"'__CS_ret", align 1
  %"976" = zext i8 %"975" to i32
  br label %main_thread___CS_cs.exit

main_thread___CS_cs.exit:                         ; preds = %main_thread_bb174, %main_thread_bb175
  %"977" = phi i32 [ %"976", %main_thread_bb175 ], [ 1, %main_thread_bb174 ]
  %"978" = trunc i32 %"977" to i8
  store i8 %"978", i8* @"'__CS_ret", align 1
  %"979" = load i8* @"'__CS_ret", align 1
  %"980" = zext i8 %"979" to i32
  %"981" = icmp ne i32 %"980", 0
  br i1 %"981", label %main_thread_bb198, label %main_thread_bb176

main_thread_bb176:                                ; preds = %main_thread___CS_cs.exit
  %"982" = load i8* @"'__CS_round", align 1
  %"983" = zext i8 %"982" to i64
  %"984" = getelementptr inbounds [3 x i32]* @turn, i32 0, i64 %"983"
  %"985" = load i32* %"984", align 4
  %"986" = icmp sle i32 0, %"985"
  br i1 %"986", label %main_thread_bb177, label %main_thread_.critedge

main_thread_bb177:                                ; preds = %main_thread_bb176
  %"987" = load i8* @"'__CS_round", align 1
  %"988" = zext i8 %"987" to i64
  %"989" = getelementptr inbounds [3 x i32]* @turn, i32 0, i64 %"988"
  %"990" = load i32* %"989", align 4
  %"991" = icmp sle i32 %"990", 1
  br i1 %"991", label %main_thread___CS_assume.exit, label %main_thread_.critedge

main_thread_.critedge:                            ; preds = %main_thread_bb176, %main_thread_bb177
  store i8 1, i8* @"'__CS_ret", align 1
  br label %main_thread___CS_assume.exit

main_thread___CS_assume.exit:                     ; preds = %main_thread_bb177, %main_thread_.critedge
  %"992" = call i8 @__kittel_nondef.1() #4
  %"993" = load i8* @"'__CS_round", align 1
  %"994" = zext i8 %"993" to i32
  %"995" = zext i8 %"992" to i32
  %"996" = add nsw i32 %"994", %"995"
  %"997" = icmp slt i32 %"996", 3
  %"998" = zext i1 %"997" to i32
  call void @__VERIFIER_assume(i32 %"998") #4
  %"999" = zext i8 %"992" to i32
  %"1000" = load i8* @"'__CS_round", align 1
  %"1001" = zext i8 %"1000" to i32
  %"1002" = add nsw i32 %"1001", %"999"
  %"1003" = trunc i32 %"1002" to i8
  store i8 %"1003", i8* @"'__CS_round", align 1
  %"1004" = call i32 (...)* @nondet_int() #4
  %"1005" = icmp ne i32 %"1004", 0
  br i1 %"1005", label %main_thread_bb178, label %main_thread_bb179

main_thread_bb178:                                ; preds = %main_thread___CS_assume.exit
  %"1006" = load i8* @"'__CS_round", align 1
  %"1007" = zext i8 %"1006" to i32
  %"1008" = icmp eq i32 %"1007", 2
  br i1 %"1008", label %main_thread___CS_cs.exit1, label %main_thread_bb179

main_thread_bb179:                                ; preds = %main_thread_bb178, %main_thread___CS_assume.exit
  %"1009" = load i8* @"'__CS_ret", align 1
  %"1010" = zext i8 %"1009" to i32
  br label %main_thread___CS_cs.exit1

main_thread___CS_cs.exit1:                        ; preds = %main_thread_bb178, %main_thread_bb179
  %"1011" = phi i32 [ %"1010", %main_thread_bb179 ], [ 1, %main_thread_bb178 ]
  %"1012" = trunc i32 %"1011" to i8
  store i8 %"1012", i8* @"'__CS_ret", align 1
  %"1013" = load i8* @"'__CS_ret", align 1
  %"1014" = zext i8 %"1013" to i32
  %"1015" = icmp ne i32 %"1014", 0
  br i1 %"1015", label %main_thread_bb198, label %main_thread_bb180

main_thread_bb180:                                ; preds = %main_thread___CS_cs.exit1
  %"1016" = load i8* @"'__CS_thread_index", align 1
  %"1017" = zext i8 %"1016" to i32
  %"1018" = icmp eq i32 %"1017", 2
  br i1 %"1018", label %main_thread___CS_pthread_create.exit, label %main_thread_bb181

main_thread_bb181:                                ; preds = %main_thread_bb180
  %"1019" = load i8* @"'__CS_thread_index", align 1
  %"1020" = add i8 %"1019", 1
  store i8 %"1020", i8* @"'__CS_thread_index", align 1
  %"1021" = load i8* @"'__CS_thread_index", align 1
  %"1022" = zext i8 %"1021" to i64
  %"1023" = getelementptr inbounds [3 x i8]* @__CS_thread_allocated, i32 0, i64 %"1022"
  store i8 1, i8* %"1023", align 1
  %"1024" = load i8* @"'__CS_round", align 1
  %"1025" = load i8* @"'__CS_thread_index", align 1
  %"1026" = zext i8 %"1025" to i64
  %"1027" = getelementptr inbounds [3 x i8]* @__CS_thread_born_round, i32 0, i64 %"1026"
  store i8 %"1024", i8* %"1027", align 1
  %"1028" = load i8* @"'__CS_thread_index", align 1
  %"1029" = zext i8 %"1028" to i64
  %"1030" = getelementptr inbounds [3 x i8* (i8*)*]* @__CS_thread, i32 0, i64 %"1029"
  %"1031" = bitcast i8* ()* @thr1 to i8* (i8*)*
  store i8* (i8*)* %"1031", i8* (i8*)** %"1030", align 8
  %"1032" = load i8* @"'__CS_thread_index", align 1
  %"1033" = zext i8 %"1032" to i64
  %"1034" = load i8* @"'__CS_round", align 1
  %"1035" = zext i8 %"1034" to i64
  %"1036" = getelementptr inbounds [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 %"1035"
  %"1037" = getelementptr inbounds [3 x i8]* %"1036", i32 0, i64 %"1033"
  store i8 1, i8* %"1037", align 1
  %"1038" = load i8* @"'__CS_thread_index", align 1
  br label %main_thread___CS_pthread_create.exit

main_thread___CS_pthread_create.exit:             ; preds = %main_thread_bb180, %main_thread_bb181
  %t1.0 = phi i8 [ %"1038", %main_thread_bb181 ], [ 123, %main_thread_bb180 ]
  %"1039" = call i8 @__kittel_nondef.1() #4
  %"1040" = load i8* @"'__CS_round", align 1
  %"1041" = zext i8 %"1040" to i32
  %"1042" = zext i8 %"1039" to i32
  %"1043" = add nsw i32 %"1041", %"1042"
  %"1044" = icmp slt i32 %"1043", 3
  %"1045" = zext i1 %"1044" to i32
  call void @__VERIFIER_assume(i32 %"1045") #4
  %"1046" = zext i8 %"1039" to i32
  %"1047" = load i8* @"'__CS_round", align 1
  %"1048" = zext i8 %"1047" to i32
  %"1049" = add nsw i32 %"1048", %"1046"
  %"1050" = trunc i32 %"1049" to i8
  store i8 %"1050", i8* @"'__CS_round", align 1
  %"1051" = call i32 (...)* @nondet_int() #4
  %"1052" = icmp ne i32 %"1051", 0
  br i1 %"1052", label %main_thread_bb182, label %main_thread_bb183

main_thread_bb182:                                ; preds = %main_thread___CS_pthread_create.exit
  %"1053" = load i8* @"'__CS_round", align 1
  %"1054" = zext i8 %"1053" to i32
  %"1055" = icmp eq i32 %"1054", 2
  br i1 %"1055", label %main_thread___CS_cs.exit2, label %main_thread_bb183

main_thread_bb183:                                ; preds = %main_thread_bb182, %main_thread___CS_pthread_create.exit
  %"1056" = load i8* @"'__CS_ret", align 1
  %"1057" = zext i8 %"1056" to i32
  br label %main_thread___CS_cs.exit2

main_thread___CS_cs.exit2:                        ; preds = %main_thread_bb182, %main_thread_bb183
  %"1058" = phi i32 [ %"1057", %main_thread_bb183 ], [ 1, %main_thread_bb182 ]
  %"1059" = trunc i32 %"1058" to i8
  store i8 %"1059", i8* @"'__CS_ret", align 1
  %"1060" = load i8* @"'__CS_ret", align 1
  %"1061" = zext i8 %"1060" to i32
  %"1062" = icmp ne i32 %"1061", 0
  br i1 %"1062", label %main_thread_bb198, label %main_thread_bb184

main_thread_bb184:                                ; preds = %main_thread___CS_cs.exit2
  %"1063" = load i8* @"'__CS_thread_index", align 1
  %"1064" = zext i8 %"1063" to i32
  %"1065" = icmp eq i32 %"1064", 2
  br i1 %"1065", label %main_thread___CS_pthread_create.exit4, label %main_thread_bb185

main_thread_bb185:                                ; preds = %main_thread_bb184
  %"1066" = load i8* @"'__CS_thread_index", align 1
  %"1067" = add i8 %"1066", 1
  store i8 %"1067", i8* @"'__CS_thread_index", align 1
  %"1068" = load i8* @"'__CS_thread_index", align 1
  %"1069" = zext i8 %"1068" to i64
  %"1070" = getelementptr inbounds [3 x i8]* @__CS_thread_allocated, i32 0, i64 %"1069"
  store i8 1, i8* %"1070", align 1
  %"1071" = load i8* @"'__CS_round", align 1
  %"1072" = load i8* @"'__CS_thread_index", align 1
  %"1073" = zext i8 %"1072" to i64
  %"1074" = getelementptr inbounds [3 x i8]* @__CS_thread_born_round, i32 0, i64 %"1073"
  store i8 %"1071", i8* %"1074", align 1
  %"1075" = load i8* @"'__CS_thread_index", align 1
  %"1076" = zext i8 %"1075" to i64
  %"1077" = getelementptr inbounds [3 x i8* (i8*)*]* @__CS_thread, i32 0, i64 %"1076"
  %"1078" = bitcast i8* ()* @thr2 to i8* (i8*)*
  store i8* (i8*)* %"1078", i8* (i8*)** %"1077", align 8
  %"1079" = load i8* @"'__CS_thread_index", align 1
  %"1080" = zext i8 %"1079" to i64
  %"1081" = load i8* @"'__CS_round", align 1
  %"1082" = zext i8 %"1081" to i64
  %"1083" = getelementptr inbounds [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 %"1082"
  %"1084" = getelementptr inbounds [3 x i8]* %"1083", i32 0, i64 %"1080"
  store i8 1, i8* %"1084", align 1
  %"1085" = load i8* @"'__CS_thread_index", align 1
  br label %main_thread___CS_pthread_create.exit4

main_thread___CS_pthread_create.exit4:            ; preds = %main_thread_bb184, %main_thread_bb185
  %t2.0 = phi i8 [ %"1085", %main_thread_bb185 ], [ 123, %main_thread_bb184 ]
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
  br i1 %"1099", label %main_thread_bb186, label %main_thread_bb187

main_thread_bb186:                                ; preds = %main_thread___CS_pthread_create.exit4
  %"1100" = load i8* @"'__CS_round", align 1
  %"1101" = zext i8 %"1100" to i32
  %"1102" = icmp eq i32 %"1101", 2
  br i1 %"1102", label %main_thread___CS_cs.exit5, label %main_thread_bb187

main_thread_bb187:                                ; preds = %main_thread_bb186, %main_thread___CS_pthread_create.exit4
  %"1103" = load i8* @"'__CS_ret", align 1
  %"1104" = zext i8 %"1103" to i32
  br label %main_thread___CS_cs.exit5

main_thread___CS_cs.exit5:                        ; preds = %main_thread_bb186, %main_thread_bb187
  %"1105" = phi i32 [ %"1104", %main_thread_bb187 ], [ 1, %main_thread_bb186 ]
  %"1106" = trunc i32 %"1105" to i8
  store i8 %"1106", i8* @"'__CS_ret", align 1
  %"1107" = load i8* @"'__CS_ret", align 1
  %"1108" = zext i8 %"1107" to i32
  %"1109" = icmp ne i32 %"1108", 0
  br i1 %"1109", label %main_thread_bb198, label %main_thread_bb188

main_thread_bb188:                                ; preds = %main_thread___CS_cs.exit5
  %"1110" = zext i8 %t1.0 to i32
  %"1111" = icmp ne i32 %"1110", 123
  %"1112" = zext i8 %t1.0 to i32
  %"1113" = icmp sgt i32 %"1112", 3
  %or.cond.i = and i1 %"1111", %"1113"
  br i1 %or.cond.i, label %main_thread_bb189, label %main_thread_bb190

main_thread_bb189:                                ; preds = %main_thread_bb188
  store i8 1, i8* @"'__CS_error", align 1
  store i8 2, i8* @"'__CS_ret", align 1
  br label %main_thread___CS_pthread_join.exit

main_thread_bb190:                                ; preds = %main_thread_bb188
  %"1114" = zext i8 %t1.0 to i32
  %"1115" = icmp eq i32 %"1114", 123
  br i1 %"1115", label %main_thread_bb192, label %main_thread_bb191

main_thread_bb191:                                ; preds = %main_thread_bb190
  %"1116" = zext i8 %t1.0 to i64
  %"1117" = load i8* @"'__CS_round", align 1
  %"1118" = zext i8 %"1117" to i64
  %"1119" = getelementptr inbounds [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 %"1118"
  %"1120" = getelementptr inbounds [3 x i8]* %"1119", i32 0, i64 %"1116"
  %"1121" = load i8* %"1120", align 1
  %"1122" = zext i8 %"1121" to i32
  %"1123" = icmp eq i32 %"1122", 1
  br i1 %"1123", label %main_thread_bb192, label %main_thread_bb193

main_thread_bb192:                                ; preds = %main_thread_bb191, %main_thread_bb190
  store i8 1, i8* @"'__CS_ret", align 1
  br label %main_thread___CS_pthread_join.exit

main_thread_bb193:                                ; preds = %main_thread_bb191
  %"1124" = zext i8 %t1.0 to i64
  %"1125" = load i8* @"'__CS_round", align 1
  %"1126" = zext i8 %"1125" to i64
  %"1127" = getelementptr inbounds [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 %"1126"
  %"1128" = getelementptr inbounds [3 x i8]* %"1127", i32 0, i64 %"1124"
  %"1129" = load i8* %"1128", align 1
  %"1130" = zext i8 %"1129" to i32
  %"1131" = icmp eq i32 %"1130", 0
  br i1 %"1131", label %main_thread_bb194, label %main_thread_bb195

main_thread_bb194:                                ; preds = %main_thread_bb193
  store i8 1, i8* @"'__CS_error", align 1
  store i8 2, i8* @"'__CS_ret", align 1
  br label %main_thread___CS_pthread_join.exit

main_thread_bb195:                                ; preds = %main_thread_bb193
  %"1132" = zext i8 %t1.0 to i64
  %"1133" = load i8* @"'__CS_round", align 1
  %"1134" = zext i8 %"1133" to i64
  %"1135" = getelementptr inbounds [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 %"1134"
  %"1136" = getelementptr inbounds [3 x i8]* %"1135", i32 0, i64 %"1132"
  %"1137" = load i8* %"1136", align 1
  %"1138" = zext i8 %"1137" to i32
  %"1139" = icmp eq i32 %"1138", 2
  %"1140" = zext i1 %"1139" to i32
  call void @__VERIFIER_assume(i32 %"1140") #4
  br label %main_thread___CS_pthread_join.exit

main_thread___CS_pthread_join.exit:               ; preds = %main_thread_bb189, %main_thread_bb192, %main_thread_bb194, %main_thread_bb195
  %"1141" = call i8 @__kittel_nondef.1() #4
  %"1142" = load i8* @"'__CS_round", align 1
  %"1143" = zext i8 %"1142" to i32
  %"1144" = zext i8 %"1141" to i32
  %"1145" = add nsw i32 %"1143", %"1144"
  %"1146" = icmp slt i32 %"1145", 3
  %"1147" = zext i1 %"1146" to i32
  call void @__VERIFIER_assume(i32 %"1147") #4
  %"1148" = zext i8 %"1141" to i32
  %"1149" = load i8* @"'__CS_round", align 1
  %"1150" = zext i8 %"1149" to i32
  %"1151" = add nsw i32 %"1150", %"1148"
  %"1152" = trunc i32 %"1151" to i8
  store i8 %"1152", i8* @"'__CS_round", align 1
  %"1153" = call i32 (...)* @nondet_int() #4
  %"1154" = icmp ne i32 %"1153", 0
  br i1 %"1154", label %main_thread_bb196, label %main_thread_bb197

main_thread_bb196:                                ; preds = %main_thread___CS_pthread_join.exit
  %"1155" = load i8* @"'__CS_round", align 1
  %"1156" = zext i8 %"1155" to i32
  %"1157" = icmp eq i32 %"1156", 2
  br i1 %"1157", label %main_thread___CS_cs.exit6, label %main_thread_bb197

main_thread_bb197:                                ; preds = %main_thread_bb196, %main_thread___CS_pthread_join.exit
  %"1158" = load i8* @"'__CS_ret", align 1
  %"1159" = zext i8 %"1158" to i32
  br label %main_thread___CS_cs.exit6

main_thread___CS_cs.exit6:                        ; preds = %main_thread_bb196, %main_thread_bb197
  %"1160" = phi i32 [ %"1159", %main_thread_bb197 ], [ 1, %main_thread_bb196 ]
  %"1161" = trunc i32 %"1160" to i8
  store i8 %"1161", i8* @"'__CS_ret", align 1
  %"1162" = load i8* @"'__CS_ret", align 1
  %"1163" = zext i8 %"1162" to i32
  %"1164" = icmp ne i32 %"1163", 0
  br i1 %"1164", label %main_thread_bb198, label %main_thread_bb199

main_thread_bb198:                                ; preds = %main_thread___CS_cs.exit6, %main_thread___CS_cs.exit5, %main_thread___CS_cs.exit2, %main_thread___CS_cs.exit1, %main_thread___CS_cs.exit
  ret i8* null

main_thread_bb199:                                ; preds = %main_thread___CS_cs.exit6
  %"1165" = zext i8 %t2.0 to i32
  %"1166" = icmp ne i32 %"1165", 123
  %"1167" = zext i8 %t2.0 to i32
  %"1168" = icmp sgt i32 %"1167", 3
  %or.cond.i7 = and i1 %"1166", %"1168"
  br i1 %or.cond.i7, label %main_thread_bb200, label %main_thread_bb201

main_thread_bb200:                                ; preds = %main_thread_bb199
  store i8 1, i8* @"'__CS_error", align 1
  store i8 2, i8* @"'__CS_ret", align 1
  br label %main_thread___CS_pthread_join.exit8

main_thread_bb201:                                ; preds = %main_thread_bb199
  %"1169" = zext i8 %t2.0 to i32
  %"1170" = icmp eq i32 %"1169", 123
  br i1 %"1170", label %main_thread_bb203, label %main_thread_bb202

main_thread_bb202:                                ; preds = %main_thread_bb201
  %"1171" = zext i8 %t2.0 to i64
  %"1172" = load i8* @"'__CS_round", align 1
  %"1173" = zext i8 %"1172" to i64
  %"1174" = getelementptr inbounds [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 %"1173"
  %"1175" = getelementptr inbounds [3 x i8]* %"1174", i32 0, i64 %"1171"
  %"1176" = load i8* %"1175", align 1
  %"1177" = zext i8 %"1176" to i32
  %"1178" = icmp eq i32 %"1177", 1
  br i1 %"1178", label %main_thread_bb203, label %main_thread_bb204

main_thread_bb203:                                ; preds = %main_thread_bb202, %main_thread_bb201
  store i8 1, i8* @"'__CS_ret", align 1
  br label %main_thread___CS_pthread_join.exit8

main_thread_bb204:                                ; preds = %main_thread_bb202
  %"1179" = zext i8 %t2.0 to i64
  %"1180" = load i8* @"'__CS_round", align 1
  %"1181" = zext i8 %"1180" to i64
  %"1182" = getelementptr inbounds [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 %"1181"
  %"1183" = getelementptr inbounds [3 x i8]* %"1182", i32 0, i64 %"1179"
  %"1184" = load i8* %"1183", align 1
  %"1185" = zext i8 %"1184" to i32
  %"1186" = icmp eq i32 %"1185", 0
  br i1 %"1186", label %main_thread_bb205, label %main_thread_bb206

main_thread_bb205:                                ; preds = %main_thread_bb204
  store i8 1, i8* @"'__CS_error", align 1
  store i8 2, i8* @"'__CS_ret", align 1
  br label %main_thread___CS_pthread_join.exit8

main_thread_bb206:                                ; preds = %main_thread_bb204
  %"1187" = zext i8 %t2.0 to i64
  %"1188" = load i8* @"'__CS_round", align 1
  %"1189" = zext i8 %"1188" to i64
  %"1190" = getelementptr inbounds [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 %"1189"
  %"1191" = getelementptr inbounds [3 x i8]* %"1190", i32 0, i64 %"1187"
  %"1192" = load i8* %"1191", align 1
  %"1193" = zext i8 %"1192" to i32
  %"1194" = icmp eq i32 %"1193", 2
  %"1195" = zext i1 %"1194" to i32
  call void @__VERIFIER_assume(i32 %"1195") #4
  br label %main_thread___CS_pthread_join.exit8

main_thread___CS_pthread_join.exit8:              ; preds = %main_thread_bb200, %main_thread_bb203, %main_thread_bb205, %main_thread_bb206
  %"1196" = call i8 @__kittel_nondef.1() #4
  %"1197" = load i8* @"'__CS_round", align 1
  %"1198" = zext i8 %"1197" to i32
  %"1199" = zext i8 %"1196" to i32
  %"1200" = add nsw i32 %"1198", %"1199"
  %"1201" = icmp slt i32 %"1200", 3
  %"1202" = zext i1 %"1201" to i32
  call void @__VERIFIER_assume(i32 %"1202") #4
  %"1203" = zext i8 %"1196" to i32
  %"1204" = load i8* @"'__CS_round", align 1
  %"1205" = zext i8 %"1204" to i32
  %"1206" = add nsw i32 %"1205", %"1203"
  %"1207" = trunc i32 %"1206" to i8
  store i8 %"1207", i8* @"'__CS_round", align 1
  %"1208" = call i32 (...)* @nondet_int() #4
  %"1209" = icmp ne i32 %"1208", 0
  br i1 %"1209", label %main_thread_bb207, label %main_thread_bb208

main_thread_bb207:                                ; preds = %main_thread___CS_pthread_join.exit8
  %"1210" = load i8* @"'__CS_round", align 1
  %"1211" = zext i8 %"1210" to i32
  %"1212" = icmp eq i32 %"1211", 2
  br i1 %"1212", label %main_thread___CS_cs.exit9, label %main_thread_bb208

main_thread_bb208:                                ; preds = %main_thread_bb207, %main_thread___CS_pthread_join.exit8
  %"1213" = load i8* @"'__CS_ret", align 1
  %"1214" = zext i8 %"1213" to i32
  br label %main_thread___CS_cs.exit9

main_thread___CS_cs.exit9:                        ; preds = %main_thread_bb207, %main_thread_bb208
  %"1215" = phi i32 [ %"1214", %main_thread_bb208 ], [ 1, %main_thread_bb207 ]
  %"1216" = trunc i32 %"1215" to i8
  store i8 %"1216", i8* @"'__CS_ret", align 1
  %"1217" = load i8* @"'__CS_ret", align 1
  %"1218" = zext i8 %"1217" to i32
  %"1219" = icmp ne i32 %"1218", 0
  %. = select i1 %"1219", i8* null, i8* %"957"
  ret i8* %.
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb209:
  %__CS_cp___CS_thread_status = alloca [3 x [3 x i8]], align 1
  %__CS_cp___CS_thread_lockedon = alloca [3 x [3 x i8*]], align 16
  %__CS_cp_flag1 = alloca [3 x i32], align 4
  %__CS_cp_flag2 = alloca [3 x i32], align 4
  %__CS_cp_turn = alloca [3 x i32], align 4
  %__CS_cp_x = alloca [3 x i32], align 4
  %"1220" = getelementptr inbounds [3 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 1
  %"1221" = getelementptr inbounds [3 x i8]* %"1220", i32 0, i64 0
  %"1222" = load i8* %"1221", align 1
  %"1223" = getelementptr [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 1, i64 0
  store i8 %"1222", i8* %"1223", align 1
  %"1224" = getelementptr inbounds [3 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 2
  %"1225" = getelementptr inbounds [3 x i8]* %"1224", i32 0, i64 0
  %"1226" = load i8* %"1225", align 1
  %"1227" = getelementptr [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 2, i64 0
  store i8 %"1226", i8* %"1227", align 1
  %"1228" = getelementptr inbounds [3 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 1
  %"1229" = getelementptr inbounds [3 x i8]* %"1228", i32 0, i64 1
  %"1230" = load i8* %"1229", align 1
  %"1231" = getelementptr [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 1, i64 1
  store i8 %"1230", i8* %"1231", align 1
  %"1232" = getelementptr inbounds [3 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 2
  %"1233" = getelementptr inbounds [3 x i8]* %"1232", i32 0, i64 1
  %"1234" = load i8* %"1233", align 1
  %"1235" = getelementptr [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 2, i64 1
  store i8 %"1234", i8* %"1235", align 1
  %"1236" = getelementptr inbounds [3 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 1
  %"1237" = getelementptr inbounds [3 x i8]* %"1236", i32 0, i64 2
  %"1238" = load i8* %"1237", align 1
  %"1239" = getelementptr [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 1, i64 2
  store i8 %"1238", i8* %"1239", align 1
  %"1240" = getelementptr inbounds [3 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 2
  %"1241" = getelementptr inbounds [3 x i8]* %"1240", i32 0, i64 2
  %"1242" = load i8* %"1241", align 1
  %"1243" = getelementptr [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 2, i64 2
  store i8 %"1242", i8* %"1243", align 1
  %"1244" = getelementptr inbounds [3 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 1
  %"1245" = getelementptr inbounds [3 x i8*]* %"1244", i32 0, i64 0
  %"1246" = load i8** %"1245", align 8
  %"1247" = getelementptr [3 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 1, i64 0
  store i8* %"1246", i8** %"1247", align 8
  %"1248" = getelementptr inbounds [3 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 2
  %"1249" = getelementptr inbounds [3 x i8*]* %"1248", i32 0, i64 0
  %"1250" = load i8** %"1249", align 8
  %"1251" = getelementptr [3 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 2, i64 0
  store i8* %"1250", i8** %"1251", align 8
  %"1252" = getelementptr inbounds [3 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 1
  %"1253" = getelementptr inbounds [3 x i8*]* %"1252", i32 0, i64 1
  %"1254" = load i8** %"1253", align 8
  %"1255" = getelementptr [3 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 1, i64 1
  store i8* %"1254", i8** %"1255", align 8
  %"1256" = getelementptr inbounds [3 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 2
  %"1257" = getelementptr inbounds [3 x i8*]* %"1256", i32 0, i64 1
  %"1258" = load i8** %"1257", align 8
  %"1259" = getelementptr [3 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 2, i64 1
  store i8* %"1258", i8** %"1259", align 8
  %"1260" = getelementptr inbounds [3 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 1
  %"1261" = getelementptr inbounds [3 x i8*]* %"1260", i32 0, i64 2
  %"1262" = load i8** %"1261", align 8
  %"1263" = getelementptr [3 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 1, i64 2
  store i8* %"1262", i8** %"1263", align 8
  %"1264" = getelementptr inbounds [3 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 2
  %"1265" = getelementptr inbounds [3 x i8*]* %"1264", i32 0, i64 2
  %"1266" = load i8** %"1265", align 8
  %"1267" = getelementptr [3 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 2, i64 2
  store i8* %"1266", i8** %"1267", align 8
  %"1268" = getelementptr inbounds [3 x i32]* %__CS_cp_flag1, i32 0, i64 1
  %"1269" = load i32* %"1268", align 4
  %"1270" = getelementptr [3 x i32]* @flag1, i32 0, i64 1
  store i32 %"1269", i32* %"1270", align 4
  %"1271" = getelementptr inbounds [3 x i32]* %__CS_cp_flag1, i32 0, i64 2
  %"1272" = load i32* %"1271", align 4
  %"1273" = getelementptr [3 x i32]* @flag1, i32 0, i64 2
  store i32 %"1272", i32* %"1273", align 4
  %"1274" = getelementptr inbounds [3 x i32]* %__CS_cp_flag2, i32 0, i64 1
  %"1275" = load i32* %"1274", align 4
  %"1276" = getelementptr [3 x i32]* @flag2, i32 0, i64 1
  store i32 %"1275", i32* %"1276", align 4
  %"1277" = getelementptr inbounds [3 x i32]* %__CS_cp_flag2, i32 0, i64 2
  %"1278" = load i32* %"1277", align 4
  %"1279" = getelementptr [3 x i32]* @flag2, i32 0, i64 2
  store i32 %"1278", i32* %"1279", align 4
  %"1280" = getelementptr inbounds [3 x i32]* %__CS_cp_turn, i32 0, i64 1
  %"1281" = load i32* %"1280", align 4
  %"1282" = getelementptr [3 x i32]* @turn, i32 0, i64 1
  store i32 %"1281", i32* %"1282", align 4
  %"1283" = getelementptr inbounds [3 x i32]* %__CS_cp_turn, i32 0, i64 2
  %"1284" = load i32* %"1283", align 4
  %"1285" = getelementptr [3 x i32]* @turn, i32 0, i64 2
  store i32 %"1284", i32* %"1285", align 4
  %"1286" = getelementptr inbounds [3 x i32]* %__CS_cp_x, i32 0, i64 1
  %"1287" = load i32* %"1286", align 4
  %"1288" = getelementptr [3 x i32]* @x, i32 0, i64 1
  store i32 %"1287", i32* %"1288", align 4
  %"1289" = getelementptr inbounds [3 x i32]* %__CS_cp_x, i32 0, i64 2
  %"1290" = load i32* %"1289", align 4
  %"1291" = getelementptr [3 x i32]* @x, i32 0, i64 2
  store i32 %"1290", i32* %"1291", align 4
  store i8 0, i8* @"'__CS_round", align 1
  store i8 0, i8* @"'__CS_thread_index", align 1
  %"1292" = load i8* @"'__CS_round", align 1
  %"1293" = getelementptr [3 x i8]* @__CS_thread_born_round, i32 0, i64 0
  store i8 %"1292", i8* %"1293", align 1
  %"1294" = getelementptr [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 0, i64 0
  store i8 1, i8* %"1294", align 1
  %"1295" = getelementptr [3 x i8* (i8*)*]* @__CS_thread, i32 0, i64 0
  store i8* (i8*)* @main_thread, i8* (i8*)** %"1295", align 8
  %"1296" = getelementptr [3 x i8]* @__CS_thread_allocated, i32 0, i64 0
  store i8 1, i8* %"1296", align 1
  %"1297" = getelementptr [3 x i8]* @__CS_thread_allocated, i32 0, i64 0
  %"1298" = load i8* %"1297", align 1
  %"1299" = zext i8 %"1298" to i32
  %"1300" = icmp eq i32 %"1299", 1
  br i1 %"1300", label %main_bb210, label %main_bb212

main_bb210:                                       ; preds = %main_bb209
  %"1301" = getelementptr [3 x i8]* @__CS_thread_born_round, i32 0, i64 0
  %"1302" = load i8* %"1301", align 1
  store i8 %"1302", i8* @"'__CS_round", align 1
  store i8 0, i8* @"'__CS_ret", align 1
  %"1303" = getelementptr [3 x i8* (i8*)*]* @__CS_thread, i32 0, i64 0
  %"1304" = load i8* (i8*)** %"1303", align 8
  %"1305" = call i8* %"1304"(i8* null)
  %"1306" = load i8* @"'__CS_ret", align 1
  %"1307" = zext i8 %"1306" to i32
  %"1308" = icmp ne i32 %"1307", 1
  br i1 %"1308", label %main_bb211, label %main_bb212

main_bb211:                                       ; preds = %main_bb210
  %"1309" = load i8* @"'__CS_round", align 1
  %"1310" = zext i8 %"1309" to i64
  %"1311" = getelementptr inbounds [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 %"1310"
  %"1312" = getelementptr inbounds [3 x i8]* %"1311", i32 0, i64 0
  store i8 2, i8* %"1312", align 1
  br label %main_bb212

main_bb212:                                       ; preds = %main_bb210, %main_bb211, %main_bb209
  %"1313" = getelementptr [3 x i8]* @__CS_thread_allocated, i32 0, i64 1
  %"1314" = load i8* %"1313", align 1
  %"1315" = zext i8 %"1314" to i32
  %"1316" = icmp eq i32 %"1315", 1
  br i1 %"1316", label %main_bb213, label %main_bb215

main_bb213:                                       ; preds = %main_bb212
  %"1317" = getelementptr [3 x i8]* @__CS_thread_born_round, i32 0, i64 1
  %"1318" = load i8* %"1317", align 1
  store i8 %"1318", i8* @"'__CS_round", align 1
  store i8 0, i8* @"'__CS_ret", align 1
  %"1319" = getelementptr [3 x i8* (i8*)*]* @__CS_thread, i32 0, i64 1
  %"1320" = load i8* (i8*)** %"1319", align 8
  %"1321" = call i8* %"1320"(i8* null)
  %"1322" = load i8* @"'__CS_ret", align 1
  %"1323" = zext i8 %"1322" to i32
  %"1324" = icmp ne i32 %"1323", 1
  br i1 %"1324", label %main_bb214, label %main_bb215

main_bb214:                                       ; preds = %main_bb213
  %"1325" = load i8* @"'__CS_round", align 1
  %"1326" = zext i8 %"1325" to i64
  %"1327" = getelementptr inbounds [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 %"1326"
  %"1328" = getelementptr inbounds [3 x i8]* %"1327", i32 0, i64 1
  store i8 2, i8* %"1328", align 1
  br label %main_bb215

main_bb215:                                       ; preds = %main_bb213, %main_bb214, %main_bb212
  %"1329" = getelementptr [3 x i8]* @__CS_thread_allocated, i32 0, i64 2
  %"1330" = load i8* %"1329", align 1
  %"1331" = zext i8 %"1330" to i32
  %"1332" = icmp eq i32 %"1331", 1
  br i1 %"1332", label %main_bb216, label %main_bb218

main_bb216:                                       ; preds = %main_bb215
  %"1333" = getelementptr [3 x i8]* @__CS_thread_born_round, i32 0, i64 2
  %"1334" = load i8* %"1333", align 1
  store i8 %"1334", i8* @"'__CS_round", align 1
  store i8 0, i8* @"'__CS_ret", align 1
  %"1335" = getelementptr [3 x i8* (i8*)*]* @__CS_thread, i32 0, i64 2
  %"1336" = load i8* (i8*)** %"1335", align 8
  %"1337" = call i8* %"1336"(i8* null)
  %"1338" = load i8* @"'__CS_ret", align 1
  %"1339" = zext i8 %"1338" to i32
  %"1340" = icmp ne i32 %"1339", 1
  br i1 %"1340", label %main_bb217, label %main_bb218

main_bb217:                                       ; preds = %main_bb216
  %"1341" = load i8* @"'__CS_round", align 1
  %"1342" = zext i8 %"1341" to i64
  %"1343" = getelementptr inbounds [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 %"1342"
  %"1344" = getelementptr inbounds [3 x i8]* %"1343", i32 0, i64 2
  store i8 2, i8* %"1344", align 1
  br label %main_bb218

main_bb218:                                       ; preds = %main_bb216, %main_bb217, %main_bb215
  %"1345" = getelementptr [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 0, i64 0
  %"1346" = load i8* %"1345", align 1
  %"1347" = zext i8 %"1346" to i32
  %"1348" = getelementptr inbounds [3 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 1
  %"1349" = getelementptr inbounds [3 x i8]* %"1348", i32 0, i64 0
  %"1350" = load i8* %"1349", align 1
  %"1351" = zext i8 %"1350" to i32
  %"1352" = icmp eq i32 %"1347", %"1351"
  %"1353" = zext i1 %"1352" to i32
  call void @__VERIFIER_assume(i32 %"1353")
  %"1354" = getelementptr [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 1, i64 0
  %"1355" = load i8* %"1354", align 1
  %"1356" = zext i8 %"1355" to i32
  %"1357" = getelementptr inbounds [3 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 2
  %"1358" = getelementptr inbounds [3 x i8]* %"1357", i32 0, i64 0
  %"1359" = load i8* %"1358", align 1
  %"1360" = zext i8 %"1359" to i32
  %"1361" = icmp eq i32 %"1356", %"1360"
  %"1362" = zext i1 %"1361" to i32
  call void @__VERIFIER_assume(i32 %"1362")
  %"1363" = getelementptr [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 0, i64 1
  %"1364" = load i8* %"1363", align 1
  %"1365" = zext i8 %"1364" to i32
  %"1366" = getelementptr inbounds [3 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 1
  %"1367" = getelementptr inbounds [3 x i8]* %"1366", i32 0, i64 1
  %"1368" = load i8* %"1367", align 1
  %"1369" = zext i8 %"1368" to i32
  %"1370" = icmp eq i32 %"1365", %"1369"
  %"1371" = zext i1 %"1370" to i32
  call void @__VERIFIER_assume(i32 %"1371")
  %"1372" = getelementptr [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 1, i64 1
  %"1373" = load i8* %"1372", align 1
  %"1374" = zext i8 %"1373" to i32
  %"1375" = getelementptr inbounds [3 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 2
  %"1376" = getelementptr inbounds [3 x i8]* %"1375", i32 0, i64 1
  %"1377" = load i8* %"1376", align 1
  %"1378" = zext i8 %"1377" to i32
  %"1379" = icmp eq i32 %"1374", %"1378"
  %"1380" = zext i1 %"1379" to i32
  call void @__VERIFIER_assume(i32 %"1380")
  %"1381" = getelementptr [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 0, i64 2
  %"1382" = load i8* %"1381", align 1
  %"1383" = zext i8 %"1382" to i32
  %"1384" = getelementptr inbounds [3 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 1
  %"1385" = getelementptr inbounds [3 x i8]* %"1384", i32 0, i64 2
  %"1386" = load i8* %"1385", align 1
  %"1387" = zext i8 %"1386" to i32
  %"1388" = icmp eq i32 %"1383", %"1387"
  %"1389" = zext i1 %"1388" to i32
  call void @__VERIFIER_assume(i32 %"1389")
  %"1390" = getelementptr [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 1, i64 2
  %"1391" = load i8* %"1390", align 1
  %"1392" = zext i8 %"1391" to i32
  %"1393" = getelementptr inbounds [3 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 2
  %"1394" = getelementptr inbounds [3 x i8]* %"1393", i32 0, i64 2
  %"1395" = load i8* %"1394", align 1
  %"1396" = zext i8 %"1395" to i32
  %"1397" = icmp eq i32 %"1392", %"1396"
  %"1398" = zext i1 %"1397" to i32
  call void @__VERIFIER_assume(i32 %"1398")
  %"1399" = getelementptr [3 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 0, i64 0
  %"1400" = load i8** %"1399", align 8
  %"1401" = getelementptr inbounds [3 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 1
  %"1402" = getelementptr inbounds [3 x i8*]* %"1401", i32 0, i64 0
  %"1403" = load i8** %"1402", align 8
  %"1404" = icmp eq i8* %"1400", %"1403"
  %"1405" = zext i1 %"1404" to i32
  call void @__VERIFIER_assume(i32 %"1405")
  %"1406" = getelementptr [3 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 1, i64 0
  %"1407" = load i8** %"1406", align 8
  %"1408" = getelementptr inbounds [3 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 2
  %"1409" = getelementptr inbounds [3 x i8*]* %"1408", i32 0, i64 0
  %"1410" = load i8** %"1409", align 8
  %"1411" = icmp eq i8* %"1407", %"1410"
  %"1412" = zext i1 %"1411" to i32
  call void @__VERIFIER_assume(i32 %"1412")
  %"1413" = getelementptr [3 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 0, i64 1
  %"1414" = load i8** %"1413", align 8
  %"1415" = getelementptr inbounds [3 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 1
  %"1416" = getelementptr inbounds [3 x i8*]* %"1415", i32 0, i64 1
  %"1417" = load i8** %"1416", align 8
  %"1418" = icmp eq i8* %"1414", %"1417"
  %"1419" = zext i1 %"1418" to i32
  call void @__VERIFIER_assume(i32 %"1419")
  %"1420" = getelementptr [3 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 1, i64 1
  %"1421" = load i8** %"1420", align 8
  %"1422" = getelementptr inbounds [3 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 2
  %"1423" = getelementptr inbounds [3 x i8*]* %"1422", i32 0, i64 1
  %"1424" = load i8** %"1423", align 8
  %"1425" = icmp eq i8* %"1421", %"1424"
  %"1426" = zext i1 %"1425" to i32
  call void @__VERIFIER_assume(i32 %"1426")
  %"1427" = getelementptr [3 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 0, i64 2
  %"1428" = load i8** %"1427", align 8
  %"1429" = getelementptr inbounds [3 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 1
  %"1430" = getelementptr inbounds [3 x i8*]* %"1429", i32 0, i64 2
  %"1431" = load i8** %"1430", align 8
  %"1432" = icmp eq i8* %"1428", %"1431"
  %"1433" = zext i1 %"1432" to i32
  call void @__VERIFIER_assume(i32 %"1433")
  %"1434" = getelementptr [3 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 1, i64 2
  %"1435" = load i8** %"1434", align 8
  %"1436" = getelementptr inbounds [3 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 2
  %"1437" = getelementptr inbounds [3 x i8*]* %"1436", i32 0, i64 2
  %"1438" = load i8** %"1437", align 8
  %"1439" = icmp eq i8* %"1435", %"1438"
  %"1440" = zext i1 %"1439" to i32
  call void @__VERIFIER_assume(i32 %"1440")
  %"1441" = getelementptr [3 x i32]* @flag1, i32 0, i64 0
  %"1442" = load i32* %"1441", align 4
  %"1443" = getelementptr inbounds [3 x i32]* %__CS_cp_flag1, i32 0, i64 1
  %"1444" = load i32* %"1443", align 4
  %"1445" = icmp eq i32 %"1442", %"1444"
  %"1446" = zext i1 %"1445" to i32
  call void @__VERIFIER_assume(i32 %"1446")
  %"1447" = getelementptr [3 x i32]* @flag1, i32 0, i64 1
  %"1448" = load i32* %"1447", align 4
  %"1449" = getelementptr inbounds [3 x i32]* %__CS_cp_flag1, i32 0, i64 2
  %"1450" = load i32* %"1449", align 4
  %"1451" = icmp eq i32 %"1448", %"1450"
  %"1452" = zext i1 %"1451" to i32
  call void @__VERIFIER_assume(i32 %"1452")
  %"1453" = getelementptr [3 x i32]* @flag2, i32 0, i64 0
  %"1454" = load i32* %"1453", align 4
  %"1455" = getelementptr inbounds [3 x i32]* %__CS_cp_flag2, i32 0, i64 1
  %"1456" = load i32* %"1455", align 4
  %"1457" = icmp eq i32 %"1454", %"1456"
  %"1458" = zext i1 %"1457" to i32
  call void @__VERIFIER_assume(i32 %"1458")
  %"1459" = getelementptr [3 x i32]* @flag2, i32 0, i64 1
  %"1460" = load i32* %"1459", align 4
  %"1461" = getelementptr inbounds [3 x i32]* %__CS_cp_flag2, i32 0, i64 2
  %"1462" = load i32* %"1461", align 4
  %"1463" = icmp eq i32 %"1460", %"1462"
  %"1464" = zext i1 %"1463" to i32
  call void @__VERIFIER_assume(i32 %"1464")
  %"1465" = getelementptr [3 x i32]* @turn, i32 0, i64 0
  %"1466" = load i32* %"1465", align 4
  %"1467" = getelementptr inbounds [3 x i32]* %__CS_cp_turn, i32 0, i64 1
  %"1468" = load i32* %"1467", align 4
  %"1469" = icmp eq i32 %"1466", %"1468"
  %"1470" = zext i1 %"1469" to i32
  call void @__VERIFIER_assume(i32 %"1470")
  %"1471" = getelementptr [3 x i32]* @turn, i32 0, i64 1
  %"1472" = load i32* %"1471", align 4
  %"1473" = getelementptr inbounds [3 x i32]* %__CS_cp_turn, i32 0, i64 2
  %"1474" = load i32* %"1473", align 4
  %"1475" = icmp eq i32 %"1472", %"1474"
  %"1476" = zext i1 %"1475" to i32
  call void @__VERIFIER_assume(i32 %"1476")
  %"1477" = getelementptr [3 x i32]* @x, i32 0, i64 0
  %"1478" = load i32* %"1477", align 4
  %"1479" = getelementptr inbounds [3 x i32]* %__CS_cp_x, i32 0, i64 1
  %"1480" = load i32* %"1479", align 4
  %"1481" = icmp eq i32 %"1478", %"1480"
  %"1482" = zext i1 %"1481" to i32
  call void @__VERIFIER_assume(i32 %"1482")
  %"1483" = getelementptr [3 x i32]* @x, i32 0, i64 1
  %"1484" = load i32* %"1483", align 4
  %"1485" = getelementptr inbounds [3 x i32]* %__CS_cp_x, i32 0, i64 2
  %"1486" = load i32* %"1485", align 4
  %"1487" = icmp eq i32 %"1484", %"1486"
  %"1488" = zext i1 %"1487" to i32
  call void @__VERIFIER_assume(i32 %"1488")
  %"1489" = load i8* @"'__CS_error", align 1
  %"1490" = zext i8 %"1489" to i32
  %"1491" = icmp ne i32 %"1490", 1
  br i1 %"1491", label %main___VERIFIER_assert.exit, label %main_bb219

main___VERIFIER_assert.exit:                      ; preds = %main_bb218
  ret i32 0

main_bb219:                                       ; preds = %main_bb218
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

