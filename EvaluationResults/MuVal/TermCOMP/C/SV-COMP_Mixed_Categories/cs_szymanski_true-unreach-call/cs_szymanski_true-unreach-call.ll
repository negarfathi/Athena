; ModuleID = 'Benchmarks/TermCOMP/C/SV-COMP_Mixed_Categories/cs_szymanski_true-unreach-call/cs_szymanski_true-unreach-call.bc'
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
  br i1 %"171", label %thr1_bb128, label %thr1_bb62

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
  br i1 %"198", label %thr1_bb128, label %thr1_bb65

thr1_bb65:                                        ; preds = %thr1___CS_cs.exit2, %thr1___CS_cs.exit1
  %"199" = load i8* @"'__CS_round", align 1
  %"200" = zext i8 %"199" to i64
  %"201" = getelementptr inbounds [3 x i32]* @flag2, i32 0, i64 %"200"
  %"202" = load i32* %"201", align 4
  %"203" = icmp sge i32 %"202", 3
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
  br i1 %"203", label %thr1_bb66, label %thr1_bb69

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
  br i1 %"227", label %thr1_bb128, label %thr1_bb65

thr1_bb69:                                        ; preds = %thr1_bb65
  br i1 %"217", label %thr1_bb70, label %thr1_bb71

thr1_bb70:                                        ; preds = %thr1_bb69
  %"228" = load i8* @"'__CS_round", align 1
  %"229" = zext i8 %"228" to i32
  %"230" = icmp eq i32 %"229", 2
  br i1 %"230", label %thr1___CS_cs.exit3, label %thr1_bb71

thr1_bb71:                                        ; preds = %thr1_bb70, %thr1_bb69
  %"231" = load i8* @"'__CS_ret", align 1
  %"232" = zext i8 %"231" to i32
  br label %thr1___CS_cs.exit3

thr1___CS_cs.exit3:                               ; preds = %thr1_bb70, %thr1_bb71
  %"233" = phi i32 [ %"232", %thr1_bb71 ], [ 1, %thr1_bb70 ]
  %"234" = trunc i32 %"233" to i8
  store i8 %"234", i8* @"'__CS_ret", align 1
  %"235" = load i8* @"'__CS_ret", align 1
  %"236" = zext i8 %"235" to i32
  %"237" = icmp ne i32 %"236", 0
  br i1 %"237", label %thr1_bb128, label %thr1_bb72

thr1_bb72:                                        ; preds = %thr1___CS_cs.exit3
  %"238" = load i8* @"'__CS_round", align 1
  %"239" = zext i8 %"238" to i64
  %"240" = getelementptr inbounds [3 x i32]* @flag1, i32 0, i64 %"239"
  store i32 3, i32* %"240", align 4
  %"241" = call i8 @__kittel_nondef.1() #4
  %"242" = load i8* @"'__CS_round", align 1
  %"243" = zext i8 %"242" to i32
  %"244" = zext i8 %"241" to i32
  %"245" = add nsw i32 %"243", %"244"
  %"246" = icmp slt i32 %"245", 3
  %"247" = zext i1 %"246" to i32
  call void @__VERIFIER_assume(i32 %"247") #4
  %"248" = zext i8 %"241" to i32
  %"249" = load i8* @"'__CS_round", align 1
  %"250" = zext i8 %"249" to i32
  %"251" = add nsw i32 %"250", %"248"
  %"252" = trunc i32 %"251" to i8
  store i8 %"252", i8* @"'__CS_round", align 1
  %"253" = call i32 (...)* @nondet_int() #4
  %"254" = icmp ne i32 %"253", 0
  br i1 %"254", label %thr1_bb73, label %thr1_bb74

thr1_bb73:                                        ; preds = %thr1_bb72
  %"255" = load i8* @"'__CS_round", align 1
  %"256" = zext i8 %"255" to i32
  %"257" = icmp eq i32 %"256", 2
  br i1 %"257", label %thr1___CS_cs.exit4, label %thr1_bb74

thr1_bb74:                                        ; preds = %thr1_bb73, %thr1_bb72
  %"258" = load i8* @"'__CS_ret", align 1
  %"259" = zext i8 %"258" to i32
  br label %thr1___CS_cs.exit4

thr1___CS_cs.exit4:                               ; preds = %thr1_bb73, %thr1_bb74
  %"260" = phi i32 [ %"259", %thr1_bb74 ], [ 1, %thr1_bb73 ]
  %"261" = trunc i32 %"260" to i8
  store i8 %"261", i8* @"'__CS_ret", align 1
  %"262" = load i8* @"'__CS_ret", align 1
  %"263" = zext i8 %"262" to i32
  %"264" = icmp ne i32 %"263", 0
  br i1 %"264", label %thr1_bb128, label %thr1_bb75

thr1_bb75:                                        ; preds = %thr1___CS_cs.exit4
  %"265" = load i8* @"'__CS_round", align 1
  %"266" = zext i8 %"265" to i64
  %"267" = getelementptr inbounds [3 x i32]* @flag2, i32 0, i64 %"266"
  %"268" = load i32* %"267", align 4
  %"269" = icmp eq i32 %"268", 1
  br i1 %"269", label %thr1_bb76, label %thr1_bb89

thr1_bb76:                                        ; preds = %thr1_bb75
  %"270" = call i8 @__kittel_nondef.1() #4
  %"271" = load i8* @"'__CS_round", align 1
  %"272" = zext i8 %"271" to i32
  %"273" = zext i8 %"270" to i32
  %"274" = add nsw i32 %"272", %"273"
  %"275" = icmp slt i32 %"274", 3
  %"276" = zext i1 %"275" to i32
  call void @__VERIFIER_assume(i32 %"276") #4
  %"277" = zext i8 %"270" to i32
  %"278" = load i8* @"'__CS_round", align 1
  %"279" = zext i8 %"278" to i32
  %"280" = add nsw i32 %"279", %"277"
  %"281" = trunc i32 %"280" to i8
  store i8 %"281", i8* @"'__CS_round", align 1
  %"282" = call i32 (...)* @nondet_int() #4
  %"283" = icmp ne i32 %"282", 0
  br i1 %"283", label %thr1_bb77, label %thr1_bb78

thr1_bb77:                                        ; preds = %thr1_bb76
  %"284" = load i8* @"'__CS_round", align 1
  %"285" = zext i8 %"284" to i32
  %"286" = icmp eq i32 %"285", 2
  br i1 %"286", label %thr1___CS_cs.exit5, label %thr1_bb78

thr1_bb78:                                        ; preds = %thr1_bb77, %thr1_bb76
  %"287" = load i8* @"'__CS_ret", align 1
  %"288" = zext i8 %"287" to i32
  br label %thr1___CS_cs.exit5

thr1___CS_cs.exit5:                               ; preds = %thr1_bb77, %thr1_bb78
  %"289" = phi i32 [ %"288", %thr1_bb78 ], [ 1, %thr1_bb77 ]
  %"290" = trunc i32 %"289" to i8
  store i8 %"290", i8* @"'__CS_ret", align 1
  %"291" = load i8* @"'__CS_ret", align 1
  %"292" = zext i8 %"291" to i32
  %"293" = icmp ne i32 %"292", 0
  br i1 %"293", label %thr1_bb128, label %thr1_bb79

thr1_bb79:                                        ; preds = %thr1___CS_cs.exit5
  %"294" = load i8* @"'__CS_round", align 1
  %"295" = zext i8 %"294" to i64
  %"296" = getelementptr inbounds [3 x i32]* @flag1, i32 0, i64 %"295"
  store i32 2, i32* %"296", align 4
  %"297" = call i8 @__kittel_nondef.1() #4
  %"298" = load i8* @"'__CS_round", align 1
  %"299" = zext i8 %"298" to i32
  %"300" = zext i8 %"297" to i32
  %"301" = add nsw i32 %"299", %"300"
  %"302" = icmp slt i32 %"301", 3
  %"303" = zext i1 %"302" to i32
  call void @__VERIFIER_assume(i32 %"303") #4
  %"304" = zext i8 %"297" to i32
  %"305" = load i8* @"'__CS_round", align 1
  %"306" = zext i8 %"305" to i32
  %"307" = add nsw i32 %"306", %"304"
  %"308" = trunc i32 %"307" to i8
  store i8 %"308", i8* @"'__CS_round", align 1
  %"309" = call i32 (...)* @nondet_int() #4
  %"310" = icmp ne i32 %"309", 0
  br i1 %"310", label %thr1_bb80, label %thr1_bb81

thr1_bb80:                                        ; preds = %thr1_bb79
  %"311" = load i8* @"'__CS_round", align 1
  %"312" = zext i8 %"311" to i32
  %"313" = icmp eq i32 %"312", 2
  br i1 %"313", label %thr1___CS_cs.exit6, label %thr1_bb81

thr1_bb81:                                        ; preds = %thr1_bb80, %thr1_bb79
  %"314" = load i8* @"'__CS_ret", align 1
  %"315" = zext i8 %"314" to i32
  br label %thr1___CS_cs.exit6

thr1___CS_cs.exit6:                               ; preds = %thr1_bb80, %thr1_bb81
  %"316" = phi i32 [ %"315", %thr1_bb81 ], [ 1, %thr1_bb80 ]
  %"317" = trunc i32 %"316" to i8
  store i8 %"317", i8* @"'__CS_ret", align 1
  %"318" = load i8* @"'__CS_ret", align 1
  %"319" = zext i8 %"318" to i32
  %"320" = icmp ne i32 %"319", 0
  br i1 %"320", label %thr1_bb128, label %thr1_bb82

thr1_bb82:                                        ; preds = %thr1___CS_cs.exit7, %thr1___CS_cs.exit6
  %"321" = load i8* @"'__CS_round", align 1
  %"322" = zext i8 %"321" to i64
  %"323" = getelementptr inbounds [3 x i32]* @flag2, i32 0, i64 %"322"
  %"324" = load i32* %"323", align 4
  %"325" = icmp ne i32 %"324", 4
  %"326" = call i8 @__kittel_nondef.1() #4
  %"327" = load i8* @"'__CS_round", align 1
  %"328" = zext i8 %"327" to i32
  %"329" = zext i8 %"326" to i32
  %"330" = add nsw i32 %"328", %"329"
  %"331" = icmp slt i32 %"330", 3
  %"332" = zext i1 %"331" to i32
  call void @__VERIFIER_assume(i32 %"332") #4
  %"333" = zext i8 %"326" to i32
  %"334" = load i8* @"'__CS_round", align 1
  %"335" = zext i8 %"334" to i32
  %"336" = add nsw i32 %"335", %"333"
  %"337" = trunc i32 %"336" to i8
  store i8 %"337", i8* @"'__CS_round", align 1
  %"338" = call i32 (...)* @nondet_int() #4
  %"339" = icmp ne i32 %"338", 0
  br i1 %"325", label %thr1_bb83, label %thr1_bb86

thr1_bb83:                                        ; preds = %thr1_bb82
  br i1 %"339", label %thr1_bb84, label %thr1_bb85

thr1_bb84:                                        ; preds = %thr1_bb83
  %"340" = load i8* @"'__CS_round", align 1
  %"341" = zext i8 %"340" to i32
  %"342" = icmp eq i32 %"341", 2
  br i1 %"342", label %thr1___CS_cs.exit7, label %thr1_bb85

thr1_bb85:                                        ; preds = %thr1_bb84, %thr1_bb83
  %"343" = load i8* @"'__CS_ret", align 1
  %"344" = zext i8 %"343" to i32
  br label %thr1___CS_cs.exit7

thr1___CS_cs.exit7:                               ; preds = %thr1_bb84, %thr1_bb85
  %"345" = phi i32 [ %"344", %thr1_bb85 ], [ 1, %thr1_bb84 ]
  %"346" = trunc i32 %"345" to i8
  store i8 %"346", i8* @"'__CS_ret", align 1
  %"347" = load i8* @"'__CS_ret", align 1
  %"348" = zext i8 %"347" to i32
  %"349" = icmp ne i32 %"348", 0
  br i1 %"349", label %thr1_bb128, label %thr1_bb82

thr1_bb86:                                        ; preds = %thr1_bb82
  br i1 %"339", label %thr1_bb87, label %thr1_bb88

thr1_bb87:                                        ; preds = %thr1_bb86
  %"350" = load i8* @"'__CS_round", align 1
  %"351" = zext i8 %"350" to i32
  %"352" = icmp eq i32 %"351", 2
  br i1 %"352", label %thr1___CS_cs.exit8, label %thr1_bb88

thr1_bb88:                                        ; preds = %thr1_bb87, %thr1_bb86
  %"353" = load i8* @"'__CS_ret", align 1
  %"354" = zext i8 %"353" to i32
  br label %thr1___CS_cs.exit8

thr1___CS_cs.exit8:                               ; preds = %thr1_bb87, %thr1_bb88
  %"355" = phi i32 [ %"354", %thr1_bb88 ], [ 1, %thr1_bb87 ]
  %"356" = trunc i32 %"355" to i8
  store i8 %"356", i8* @"'__CS_ret", align 1
  %"357" = load i8* @"'__CS_ret", align 1
  %"358" = zext i8 %"357" to i32
  %"359" = icmp ne i32 %"358", 0
  br i1 %"359", label %thr1_bb128, label %thr1_bb89

thr1_bb89:                                        ; preds = %thr1___CS_cs.exit8, %thr1_bb75
  %"360" = call i8 @__kittel_nondef.1() #4
  %"361" = load i8* @"'__CS_round", align 1
  %"362" = zext i8 %"361" to i32
  %"363" = zext i8 %"360" to i32
  %"364" = add nsw i32 %"362", %"363"
  %"365" = icmp slt i32 %"364", 3
  %"366" = zext i1 %"365" to i32
  call void @__VERIFIER_assume(i32 %"366") #4
  %"367" = zext i8 %"360" to i32
  %"368" = load i8* @"'__CS_round", align 1
  %"369" = zext i8 %"368" to i32
  %"370" = add nsw i32 %"369", %"367"
  %"371" = trunc i32 %"370" to i8
  store i8 %"371", i8* @"'__CS_round", align 1
  %"372" = call i32 (...)* @nondet_int() #4
  %"373" = icmp ne i32 %"372", 0
  br i1 %"373", label %thr1_bb90, label %thr1_bb91

thr1_bb90:                                        ; preds = %thr1_bb89
  %"374" = load i8* @"'__CS_round", align 1
  %"375" = zext i8 %"374" to i32
  %"376" = icmp eq i32 %"375", 2
  br i1 %"376", label %thr1___CS_cs.exit9, label %thr1_bb91

thr1_bb91:                                        ; preds = %thr1_bb90, %thr1_bb89
  %"377" = load i8* @"'__CS_ret", align 1
  %"378" = zext i8 %"377" to i32
  br label %thr1___CS_cs.exit9

thr1___CS_cs.exit9:                               ; preds = %thr1_bb90, %thr1_bb91
  %"379" = phi i32 [ %"378", %thr1_bb91 ], [ 1, %thr1_bb90 ]
  %"380" = trunc i32 %"379" to i8
  store i8 %"380", i8* @"'__CS_ret", align 1
  %"381" = load i8* @"'__CS_ret", align 1
  %"382" = zext i8 %"381" to i32
  %"383" = icmp ne i32 %"382", 0
  br i1 %"383", label %thr1_bb128, label %thr1_bb92

thr1_bb92:                                        ; preds = %thr1___CS_cs.exit9
  %"384" = load i8* @"'__CS_round", align 1
  %"385" = zext i8 %"384" to i64
  %"386" = getelementptr inbounds [3 x i32]* @flag1, i32 0, i64 %"385"
  store i32 4, i32* %"386", align 4
  %"387" = call i8 @__kittel_nondef.1() #4
  %"388" = load i8* @"'__CS_round", align 1
  %"389" = zext i8 %"388" to i32
  %"390" = zext i8 %"387" to i32
  %"391" = add nsw i32 %"389", %"390"
  %"392" = icmp slt i32 %"391", 3
  %"393" = zext i1 %"392" to i32
  call void @__VERIFIER_assume(i32 %"393") #4
  %"394" = zext i8 %"387" to i32
  %"395" = load i8* @"'__CS_round", align 1
  %"396" = zext i8 %"395" to i32
  %"397" = add nsw i32 %"396", %"394"
  %"398" = trunc i32 %"397" to i8
  store i8 %"398", i8* @"'__CS_round", align 1
  %"399" = call i32 (...)* @nondet_int() #4
  %"400" = icmp ne i32 %"399", 0
  br i1 %"400", label %thr1_bb93, label %thr1_bb94

thr1_bb93:                                        ; preds = %thr1_bb92
  %"401" = load i8* @"'__CS_round", align 1
  %"402" = zext i8 %"401" to i32
  %"403" = icmp eq i32 %"402", 2
  br i1 %"403", label %thr1___CS_cs.exit10, label %thr1_bb94

thr1_bb94:                                        ; preds = %thr1_bb93, %thr1_bb92
  %"404" = load i8* @"'__CS_ret", align 1
  %"405" = zext i8 %"404" to i32
  br label %thr1___CS_cs.exit10

thr1___CS_cs.exit10:                              ; preds = %thr1_bb93, %thr1_bb94
  %"406" = phi i32 [ %"405", %thr1_bb94 ], [ 1, %thr1_bb93 ]
  %"407" = trunc i32 %"406" to i8
  store i8 %"407", i8* @"'__CS_ret", align 1
  %"408" = load i8* @"'__CS_ret", align 1
  %"409" = zext i8 %"408" to i32
  %"410" = icmp ne i32 %"409", 0
  br i1 %"410", label %thr1_bb128, label %thr1_bb95

thr1_bb95:                                        ; preds = %thr1___CS_cs.exit11, %thr1___CS_cs.exit10
  %"411" = load i8* @"'__CS_round", align 1
  %"412" = zext i8 %"411" to i64
  %"413" = getelementptr inbounds [3 x i32]* @flag2, i32 0, i64 %"412"
  %"414" = load i32* %"413", align 4
  %"415" = icmp sge i32 %"414", 2
  %"416" = call i8 @__kittel_nondef.1() #4
  %"417" = load i8* @"'__CS_round", align 1
  %"418" = zext i8 %"417" to i32
  %"419" = zext i8 %"416" to i32
  %"420" = add nsw i32 %"418", %"419"
  %"421" = icmp slt i32 %"420", 3
  %"422" = zext i1 %"421" to i32
  call void @__VERIFIER_assume(i32 %"422") #4
  %"423" = zext i8 %"416" to i32
  %"424" = load i8* @"'__CS_round", align 1
  %"425" = zext i8 %"424" to i32
  %"426" = add nsw i32 %"425", %"423"
  %"427" = trunc i32 %"426" to i8
  store i8 %"427", i8* @"'__CS_round", align 1
  %"428" = call i32 (...)* @nondet_int() #4
  %"429" = icmp ne i32 %"428", 0
  br i1 %"415", label %thr1_bb96, label %thr1_bb99

thr1_bb96:                                        ; preds = %thr1_bb95
  br i1 %"429", label %thr1_bb97, label %thr1_bb98

thr1_bb97:                                        ; preds = %thr1_bb96
  %"430" = load i8* @"'__CS_round", align 1
  %"431" = zext i8 %"430" to i32
  %"432" = icmp eq i32 %"431", 2
  br i1 %"432", label %thr1___CS_cs.exit11, label %thr1_bb98

thr1_bb98:                                        ; preds = %thr1_bb97, %thr1_bb96
  %"433" = load i8* @"'__CS_ret", align 1
  %"434" = zext i8 %"433" to i32
  br label %thr1___CS_cs.exit11

thr1___CS_cs.exit11:                              ; preds = %thr1_bb97, %thr1_bb98
  %"435" = phi i32 [ %"434", %thr1_bb98 ], [ 1, %thr1_bb97 ]
  %"436" = trunc i32 %"435" to i8
  store i8 %"436", i8* @"'__CS_ret", align 1
  %"437" = load i8* @"'__CS_ret", align 1
  %"438" = zext i8 %"437" to i32
  %"439" = icmp ne i32 %"438", 0
  br i1 %"439", label %thr1_bb128, label %thr1_bb95

thr1_bb99:                                        ; preds = %thr1_bb95
  br i1 %"429", label %thr1_bb100, label %thr1_bb101

thr1_bb100:                                       ; preds = %thr1_bb99
  %"440" = load i8* @"'__CS_round", align 1
  %"441" = zext i8 %"440" to i32
  %"442" = icmp eq i32 %"441", 2
  br i1 %"442", label %thr1___CS_cs.exit12, label %thr1_bb101

thr1_bb101:                                       ; preds = %thr1_bb100, %thr1_bb99
  %"443" = load i8* @"'__CS_ret", align 1
  %"444" = zext i8 %"443" to i32
  br label %thr1___CS_cs.exit12

thr1___CS_cs.exit12:                              ; preds = %thr1_bb100, %thr1_bb101
  %"445" = phi i32 [ %"444", %thr1_bb101 ], [ 1, %thr1_bb100 ]
  %"446" = trunc i32 %"445" to i8
  store i8 %"446", i8* @"'__CS_ret", align 1
  %"447" = load i8* @"'__CS_ret", align 1
  %"448" = zext i8 %"447" to i32
  %"449" = icmp ne i32 %"448", 0
  br i1 %"449", label %thr1_bb128, label %thr1_bb102

thr1_bb102:                                       ; preds = %thr1___CS_cs.exit12
  %"450" = load i8* @"'__CS_round", align 1
  %"451" = zext i8 %"450" to i64
  %"452" = getelementptr inbounds [3 x i32]* @x, i32 0, i64 %"451"
  store i32 0, i32* %"452", align 4
  %"453" = call i8 @__kittel_nondef.1() #4
  %"454" = load i8* @"'__CS_round", align 1
  %"455" = zext i8 %"454" to i32
  %"456" = zext i8 %"453" to i32
  %"457" = add nsw i32 %"455", %"456"
  %"458" = icmp slt i32 %"457", 3
  %"459" = zext i1 %"458" to i32
  call void @__VERIFIER_assume(i32 %"459") #4
  %"460" = zext i8 %"453" to i32
  %"461" = load i8* @"'__CS_round", align 1
  %"462" = zext i8 %"461" to i32
  %"463" = add nsw i32 %"462", %"460"
  %"464" = trunc i32 %"463" to i8
  store i8 %"464", i8* @"'__CS_round", align 1
  %"465" = call i32 (...)* @nondet_int() #4
  %"466" = icmp ne i32 %"465", 0
  br i1 %"466", label %thr1_bb103, label %thr1_bb104

thr1_bb103:                                       ; preds = %thr1_bb102
  %"467" = load i8* @"'__CS_round", align 1
  %"468" = zext i8 %"467" to i32
  %"469" = icmp eq i32 %"468", 2
  br i1 %"469", label %thr1___CS_cs.exit13, label %thr1_bb104

thr1_bb104:                                       ; preds = %thr1_bb103, %thr1_bb102
  %"470" = load i8* @"'__CS_ret", align 1
  %"471" = zext i8 %"470" to i32
  br label %thr1___CS_cs.exit13

thr1___CS_cs.exit13:                              ; preds = %thr1_bb103, %thr1_bb104
  %"472" = phi i32 [ %"471", %thr1_bb104 ], [ 1, %thr1_bb103 ]
  %"473" = trunc i32 %"472" to i8
  store i8 %"473", i8* @"'__CS_ret", align 1
  %"474" = load i8* @"'__CS_ret", align 1
  %"475" = zext i8 %"474" to i32
  %"476" = icmp ne i32 %"475", 0
  br i1 %"476", label %thr1_bb128, label %thr1_bb105

thr1_bb105:                                       ; preds = %thr1___CS_cs.exit13
  %"477" = load i8* @"'__CS_round", align 1
  %"478" = zext i8 %"477" to i64
  %"479" = getelementptr inbounds [3 x i32]* @x, i32 0, i64 %"478"
  %"480" = load i32* %"479", align 4
  %"481" = icmp sle i32 %"480", 0
  %"482" = call i8 @__kittel_nondef.1() #4
  %"483" = load i8* @"'__CS_round", align 1
  %"484" = zext i8 %"483" to i32
  %"485" = zext i8 %"482" to i32
  %"486" = add nsw i32 %"484", %"485"
  %"487" = icmp slt i32 %"486", 3
  %"488" = zext i1 %"487" to i32
  call void @__VERIFIER_assume(i32 %"488") #4
  %"489" = zext i8 %"482" to i32
  %"490" = load i8* @"'__CS_round", align 1
  %"491" = zext i8 %"490" to i32
  %"492" = add nsw i32 %"491", %"489"
  %"493" = trunc i32 %"492" to i8
  store i8 %"493", i8* @"'__CS_round", align 1
  %"494" = call i32 (...)* @nondet_int() #4
  %"495" = icmp ne i32 %"494", 0
  br i1 %"481", label %thr1_bb106, label %thr1_bb124

thr1_bb106:                                       ; preds = %thr1_bb105
  br i1 %"495", label %thr1_bb107, label %thr1_bb108

thr1_bb107:                                       ; preds = %thr1_bb106
  %"496" = load i8* @"'__CS_round", align 1
  %"497" = zext i8 %"496" to i32
  %"498" = icmp eq i32 %"497", 2
  br i1 %"498", label %thr1___CS_cs.exit15, label %thr1_bb108

thr1_bb108:                                       ; preds = %thr1_bb107, %thr1_bb106
  %"499" = load i8* @"'__CS_ret", align 1
  %"500" = zext i8 %"499" to i32
  br label %thr1___CS_cs.exit15

thr1___CS_cs.exit15:                              ; preds = %thr1_bb107, %thr1_bb108
  %"501" = phi i32 [ %"500", %thr1_bb108 ], [ 1, %thr1_bb107 ]
  %"502" = trunc i32 %"501" to i8
  store i8 %"502", i8* @"'__CS_ret", align 1
  %"503" = load i8* @"'__CS_ret", align 1
  %"504" = zext i8 %"503" to i32
  %"505" = icmp ne i32 %"504", 0
  br i1 %"505", label %thr1_bb128, label %thr1_bb109

thr1_bb109:                                       ; preds = %thr1___CS_cs.exit15
  %"506" = call i8 @__kittel_nondef.1() #4
  %"507" = load i8* @"'__CS_round", align 1
  %"508" = zext i8 %"507" to i32
  %"509" = zext i8 %"506" to i32
  %"510" = add nsw i32 %"508", %"509"
  %"511" = icmp slt i32 %"510", 3
  %"512" = zext i1 %"511" to i32
  call void @__VERIFIER_assume(i32 %"512") #4
  %"513" = zext i8 %"506" to i32
  %"514" = load i8* @"'__CS_round", align 1
  %"515" = zext i8 %"514" to i32
  %"516" = add nsw i32 %"515", %"513"
  %"517" = trunc i32 %"516" to i8
  store i8 %"517", i8* @"'__CS_round", align 1
  %"518" = call i32 (...)* @nondet_int() #4
  %"519" = icmp ne i32 %"518", 0
  br i1 %"519", label %thr1_bb110, label %thr1_bb111

thr1_bb110:                                       ; preds = %thr1_bb109
  %"520" = load i8* @"'__CS_round", align 1
  %"521" = zext i8 %"520" to i32
  %"522" = icmp eq i32 %"521", 2
  br i1 %"522", label %thr1___CS_cs.exit16, label %thr1_bb111

thr1_bb111:                                       ; preds = %thr1_bb110, %thr1_bb109
  %"523" = load i8* @"'__CS_ret", align 1
  %"524" = zext i8 %"523" to i32
  br label %thr1___CS_cs.exit16

thr1___CS_cs.exit16:                              ; preds = %thr1_bb110, %thr1_bb111
  %"525" = phi i32 [ %"524", %thr1_bb111 ], [ 1, %thr1_bb110 ]
  %"526" = trunc i32 %"525" to i8
  store i8 %"526", i8* @"'__CS_ret", align 1
  %"527" = load i8* @"'__CS_ret", align 1
  %"528" = zext i8 %"527" to i32
  %"529" = icmp ne i32 %"528", 0
  br i1 %"529", label %thr1_bb128, label %thr1_bb112

thr1_bb112:                                       ; preds = %thr1___CS_cs.exit17, %thr1___CS_cs.exit16
  %"530" = load i8* @"'__CS_round", align 1
  %"531" = zext i8 %"530" to i64
  %"532" = getelementptr inbounds [3 x i32]* @flag2, i32 0, i64 %"531"
  %"533" = load i32* %"532", align 4
  %"534" = icmp sle i32 2, %"533"
  br i1 %"534", label %thr1_bb113, label %thr1_bb114

thr1_bb113:                                       ; preds = %thr1_bb112
  %"535" = load i8* @"'__CS_round", align 1
  %"536" = zext i8 %"535" to i64
  %"537" = getelementptr inbounds [3 x i32]* @flag2, i32 0, i64 %"536"
  %"538" = load i32* %"537", align 4
  %"539" = icmp sle i32 %"538", 3
  br label %thr1_bb114

thr1_bb114:                                       ; preds = %thr1_bb113, %thr1_bb112
  %"540" = phi i1 [ false, %thr1_bb112 ], [ %"539", %thr1_bb113 ]
  %"541" = call i8 @__kittel_nondef.1() #4
  %"542" = load i8* @"'__CS_round", align 1
  %"543" = zext i8 %"542" to i32
  %"544" = zext i8 %"541" to i32
  %"545" = add nsw i32 %"543", %"544"
  %"546" = icmp slt i32 %"545", 3
  %"547" = zext i1 %"546" to i32
  call void @__VERIFIER_assume(i32 %"547") #4
  %"548" = zext i8 %"541" to i32
  %"549" = load i8* @"'__CS_round", align 1
  %"550" = zext i8 %"549" to i32
  %"551" = add nsw i32 %"550", %"548"
  %"552" = trunc i32 %"551" to i8
  store i8 %"552", i8* @"'__CS_round", align 1
  %"553" = call i32 (...)* @nondet_int() #4
  %"554" = icmp ne i32 %"553", 0
  br i1 %"540", label %thr1_bb115, label %thr1_bb118

thr1_bb115:                                       ; preds = %thr1_bb114
  br i1 %"554", label %thr1_bb116, label %thr1_bb117

thr1_bb116:                                       ; preds = %thr1_bb115
  %"555" = load i8* @"'__CS_round", align 1
  %"556" = zext i8 %"555" to i32
  %"557" = icmp eq i32 %"556", 2
  br i1 %"557", label %thr1___CS_cs.exit17, label %thr1_bb117

thr1_bb117:                                       ; preds = %thr1_bb116, %thr1_bb115
  %"558" = load i8* @"'__CS_ret", align 1
  %"559" = zext i8 %"558" to i32
  br label %thr1___CS_cs.exit17

thr1___CS_cs.exit17:                              ; preds = %thr1_bb116, %thr1_bb117
  %"560" = phi i32 [ %"559", %thr1_bb117 ], [ 1, %thr1_bb116 ]
  %"561" = trunc i32 %"560" to i8
  store i8 %"561", i8* @"'__CS_ret", align 1
  %"562" = load i8* @"'__CS_ret", align 1
  %"563" = zext i8 %"562" to i32
  %"564" = icmp ne i32 %"563", 0
  br i1 %"564", label %thr1_bb128, label %thr1_bb112

thr1_bb118:                                       ; preds = %thr1_bb114
  br i1 %"554", label %thr1_bb119, label %thr1_bb120

thr1_bb119:                                       ; preds = %thr1_bb118
  %"565" = load i8* @"'__CS_round", align 1
  %"566" = zext i8 %"565" to i32
  %"567" = icmp eq i32 %"566", 2
  br i1 %"567", label %thr1___CS_cs.exit18, label %thr1_bb120

thr1_bb120:                                       ; preds = %thr1_bb119, %thr1_bb118
  %"568" = load i8* @"'__CS_ret", align 1
  %"569" = zext i8 %"568" to i32
  br label %thr1___CS_cs.exit18

thr1___CS_cs.exit18:                              ; preds = %thr1_bb119, %thr1_bb120
  %"570" = phi i32 [ %"569", %thr1_bb120 ], [ 1, %thr1_bb119 ]
  %"571" = trunc i32 %"570" to i8
  store i8 %"571", i8* @"'__CS_ret", align 1
  %"572" = load i8* @"'__CS_ret", align 1
  %"573" = zext i8 %"572" to i32
  %"574" = icmp ne i32 %"573", 0
  br i1 %"574", label %thr1_bb128, label %thr1_bb121

thr1_bb121:                                       ; preds = %thr1___CS_cs.exit18
  %"575" = load i8* @"'__CS_round", align 1
  %"576" = zext i8 %"575" to i64
  %"577" = getelementptr inbounds [3 x i32]* @flag1, i32 0, i64 %"576"
  store i32 0, i32* %"577", align 4
  %"578" = call i8 @__kittel_nondef.1() #4
  %"579" = load i8* @"'__CS_round", align 1
  %"580" = zext i8 %"579" to i32
  %"581" = zext i8 %"578" to i32
  %"582" = add nsw i32 %"580", %"581"
  %"583" = icmp slt i32 %"582", 3
  %"584" = zext i1 %"583" to i32
  call void @__VERIFIER_assume(i32 %"584") #4
  %"585" = zext i8 %"578" to i32
  %"586" = load i8* @"'__CS_round", align 1
  %"587" = zext i8 %"586" to i32
  %"588" = add nsw i32 %"587", %"585"
  %"589" = trunc i32 %"588" to i8
  store i8 %"589", i8* @"'__CS_round", align 1
  %"590" = call i32 (...)* @nondet_int() #4
  %"591" = icmp ne i32 %"590", 0
  br i1 %"591", label %thr1_bb122, label %thr1_bb123

thr1_bb122:                                       ; preds = %thr1_bb121
  %"592" = load i8* @"'__CS_round", align 1
  %"593" = zext i8 %"592" to i32
  %"594" = icmp eq i32 %"593", 2
  br i1 %"594", label %thr1___CS_cs.exit19, label %thr1_bb123

thr1_bb123:                                       ; preds = %thr1_bb122, %thr1_bb121
  %"595" = load i8* @"'__CS_ret", align 1
  %"596" = zext i8 %"595" to i32
  br label %thr1___CS_cs.exit19

thr1___CS_cs.exit19:                              ; preds = %thr1_bb122, %thr1_bb123
  %"597" = phi i32 [ %"596", %thr1_bb123 ], [ 1, %thr1_bb122 ]
  %"598" = trunc i32 %"597" to i8
  store i8 %"598", i8* @"'__CS_ret", align 1
  %"599" = load i8* @"'__CS_ret", align 1
  %"600" = zext i8 %"599" to i32
  %"601" = icmp ne i32 %"600", 0
  %. = select i1 %"601", i8* null, i8* %"147"
  ret i8* %.

thr1_bb124:                                       ; preds = %thr1_bb105
  br i1 %"495", label %thr1_bb125, label %thr1_bb126

thr1_bb125:                                       ; preds = %thr1_bb124
  %"602" = load i8* @"'__CS_round", align 1
  %"603" = zext i8 %"602" to i32
  %"604" = icmp eq i32 %"603", 2
  br i1 %"604", label %thr1___CS_cs.exit14, label %thr1_bb126

thr1_bb126:                                       ; preds = %thr1_bb125, %thr1_bb124
  %"605" = load i8* @"'__CS_ret", align 1
  %"606" = zext i8 %"605" to i32
  br label %thr1___CS_cs.exit14

thr1___CS_cs.exit14:                              ; preds = %thr1_bb125, %thr1_bb126
  %"607" = phi i32 [ %"606", %thr1_bb126 ], [ 1, %thr1_bb125 ]
  %"608" = trunc i32 %"607" to i8
  store i8 %"608", i8* @"'__CS_ret", align 1
  %"609" = load i8* @"'__CS_ret", align 1
  %"610" = zext i8 %"609" to i32
  %"611" = icmp ne i32 %"610", 0
  br i1 %"611", label %thr1_bb128, label %thr1_bb127

thr1_bb127:                                       ; preds = %thr1___CS_cs.exit14
  store i8 1, i8* @"'__CS_error", align 1
  store i8 2, i8* @"'__CS_ret", align 1
  br label %thr1_bb128

thr1_bb128:                                       ; preds = %thr1___CS_cs.exit18, %thr1___CS_cs.exit17, %thr1___CS_cs.exit16, %thr1___CS_cs.exit15, %thr1___CS_cs.exit14, %thr1___CS_cs.exit13, %thr1___CS_cs.exit12, %thr1___CS_cs.exit11, %thr1___CS_cs.exit10, %thr1___CS_cs.exit9, %thr1___CS_cs.exit8, %thr1___CS_cs.exit7, %thr1___CS_cs.exit6, %thr1___CS_cs.exit5, %thr1___CS_cs.exit4, %thr1___CS_cs.exit3, %thr1___CS_cs.exit2, %thr1___CS_cs.exit1, %thr1___CS_cs.exit, %thr1_bb127
  ret i8* null
}

; Function Attrs: nounwind uwtable
define i8* @thr2() #0 {
thr2_bb129:
  %"612" = call i8* @__kittel_nondef.2()
  %"613" = call i8 @__kittel_nondef.1() #4
  %"614" = load i8* @"'__CS_round", align 1
  %"615" = zext i8 %"614" to i32
  %"616" = zext i8 %"613" to i32
  %"617" = add nsw i32 %"615", %"616"
  %"618" = icmp slt i32 %"617", 3
  %"619" = zext i1 %"618" to i32
  call void @__VERIFIER_assume(i32 %"619") #4
  %"620" = zext i8 %"613" to i32
  %"621" = load i8* @"'__CS_round", align 1
  %"622" = zext i8 %"621" to i32
  %"623" = add nsw i32 %"622", %"620"
  %"624" = trunc i32 %"623" to i8
  store i8 %"624", i8* @"'__CS_round", align 1
  %"625" = call i32 (...)* @nondet_int() #4
  %"626" = icmp ne i32 %"625", 0
  br i1 %"626", label %thr2_bb130, label %thr2_bb131

thr2_bb130:                                       ; preds = %thr2_bb129
  %"627" = load i8* @"'__CS_round", align 1
  %"628" = zext i8 %"627" to i32
  %"629" = icmp eq i32 %"628", 2
  br i1 %"629", label %thr2___CS_cs.exit, label %thr2_bb131

thr2_bb131:                                       ; preds = %thr2_bb130, %thr2_bb129
  %"630" = load i8* @"'__CS_ret", align 1
  %"631" = zext i8 %"630" to i32
  br label %thr2___CS_cs.exit

thr2___CS_cs.exit:                                ; preds = %thr2_bb130, %thr2_bb131
  %"632" = phi i32 [ %"631", %thr2_bb131 ], [ 1, %thr2_bb130 ]
  %"633" = trunc i32 %"632" to i8
  store i8 %"633", i8* @"'__CS_ret", align 1
  %"634" = load i8* @"'__CS_ret", align 1
  %"635" = zext i8 %"634" to i32
  %"636" = icmp ne i32 %"635", 0
  br i1 %"636", label %thr2_bb198, label %thr2_bb132

thr2_bb132:                                       ; preds = %thr2___CS_cs.exit
  %"637" = load i8* @"'__CS_round", align 1
  %"638" = zext i8 %"637" to i64
  %"639" = getelementptr inbounds [3 x i32]* @flag2, i32 0, i64 %"638"
  store i32 1, i32* %"639", align 4
  %"640" = call i8 @__kittel_nondef.1() #4
  %"641" = load i8* @"'__CS_round", align 1
  %"642" = zext i8 %"641" to i32
  %"643" = zext i8 %"640" to i32
  %"644" = add nsw i32 %"642", %"643"
  %"645" = icmp slt i32 %"644", 3
  %"646" = zext i1 %"645" to i32
  call void @__VERIFIER_assume(i32 %"646") #4
  %"647" = zext i8 %"640" to i32
  %"648" = load i8* @"'__CS_round", align 1
  %"649" = zext i8 %"648" to i32
  %"650" = add nsw i32 %"649", %"647"
  %"651" = trunc i32 %"650" to i8
  store i8 %"651", i8* @"'__CS_round", align 1
  %"652" = call i32 (...)* @nondet_int() #4
  %"653" = icmp ne i32 %"652", 0
  br i1 %"653", label %thr2_bb133, label %thr2_bb134

thr2_bb133:                                       ; preds = %thr2_bb132
  %"654" = load i8* @"'__CS_round", align 1
  %"655" = zext i8 %"654" to i32
  %"656" = icmp eq i32 %"655", 2
  br i1 %"656", label %thr2___CS_cs.exit1, label %thr2_bb134

thr2_bb134:                                       ; preds = %thr2_bb133, %thr2_bb132
  %"657" = load i8* @"'__CS_ret", align 1
  %"658" = zext i8 %"657" to i32
  br label %thr2___CS_cs.exit1

thr2___CS_cs.exit1:                               ; preds = %thr2_bb133, %thr2_bb134
  %"659" = phi i32 [ %"658", %thr2_bb134 ], [ 1, %thr2_bb133 ]
  %"660" = trunc i32 %"659" to i8
  store i8 %"660", i8* @"'__CS_ret", align 1
  %"661" = load i8* @"'__CS_ret", align 1
  %"662" = zext i8 %"661" to i32
  %"663" = icmp ne i32 %"662", 0
  br i1 %"663", label %thr2_bb198, label %thr2_bb135

thr2_bb135:                                       ; preds = %thr2___CS_cs.exit2, %thr2___CS_cs.exit1
  %"664" = load i8* @"'__CS_round", align 1
  %"665" = zext i8 %"664" to i64
  %"666" = getelementptr inbounds [3 x i32]* @flag1, i32 0, i64 %"665"
  %"667" = load i32* %"666", align 4
  %"668" = icmp sge i32 %"667", 3
  %"669" = call i8 @__kittel_nondef.1() #4
  %"670" = load i8* @"'__CS_round", align 1
  %"671" = zext i8 %"670" to i32
  %"672" = zext i8 %"669" to i32
  %"673" = add nsw i32 %"671", %"672"
  %"674" = icmp slt i32 %"673", 3
  %"675" = zext i1 %"674" to i32
  call void @__VERIFIER_assume(i32 %"675") #4
  %"676" = zext i8 %"669" to i32
  %"677" = load i8* @"'__CS_round", align 1
  %"678" = zext i8 %"677" to i32
  %"679" = add nsw i32 %"678", %"676"
  %"680" = trunc i32 %"679" to i8
  store i8 %"680", i8* @"'__CS_round", align 1
  %"681" = call i32 (...)* @nondet_int() #4
  %"682" = icmp ne i32 %"681", 0
  br i1 %"668", label %thr2_bb136, label %thr2_bb139

thr2_bb136:                                       ; preds = %thr2_bb135
  br i1 %"682", label %thr2_bb137, label %thr2_bb138

thr2_bb137:                                       ; preds = %thr2_bb136
  %"683" = load i8* @"'__CS_round", align 1
  %"684" = zext i8 %"683" to i32
  %"685" = icmp eq i32 %"684", 2
  br i1 %"685", label %thr2___CS_cs.exit2, label %thr2_bb138

thr2_bb138:                                       ; preds = %thr2_bb137, %thr2_bb136
  %"686" = load i8* @"'__CS_ret", align 1
  %"687" = zext i8 %"686" to i32
  br label %thr2___CS_cs.exit2

thr2___CS_cs.exit2:                               ; preds = %thr2_bb137, %thr2_bb138
  %"688" = phi i32 [ %"687", %thr2_bb138 ], [ 1, %thr2_bb137 ]
  %"689" = trunc i32 %"688" to i8
  store i8 %"689", i8* @"'__CS_ret", align 1
  %"690" = load i8* @"'__CS_ret", align 1
  %"691" = zext i8 %"690" to i32
  %"692" = icmp ne i32 %"691", 0
  br i1 %"692", label %thr2_bb198, label %thr2_bb135

thr2_bb139:                                       ; preds = %thr2_bb135
  br i1 %"682", label %thr2_bb140, label %thr2_bb141

thr2_bb140:                                       ; preds = %thr2_bb139
  %"693" = load i8* @"'__CS_round", align 1
  %"694" = zext i8 %"693" to i32
  %"695" = icmp eq i32 %"694", 2
  br i1 %"695", label %thr2___CS_cs.exit3, label %thr2_bb141

thr2_bb141:                                       ; preds = %thr2_bb140, %thr2_bb139
  %"696" = load i8* @"'__CS_ret", align 1
  %"697" = zext i8 %"696" to i32
  br label %thr2___CS_cs.exit3

thr2___CS_cs.exit3:                               ; preds = %thr2_bb140, %thr2_bb141
  %"698" = phi i32 [ %"697", %thr2_bb141 ], [ 1, %thr2_bb140 ]
  %"699" = trunc i32 %"698" to i8
  store i8 %"699", i8* @"'__CS_ret", align 1
  %"700" = load i8* @"'__CS_ret", align 1
  %"701" = zext i8 %"700" to i32
  %"702" = icmp ne i32 %"701", 0
  br i1 %"702", label %thr2_bb198, label %thr2_bb142

thr2_bb142:                                       ; preds = %thr2___CS_cs.exit3
  %"703" = load i8* @"'__CS_round", align 1
  %"704" = zext i8 %"703" to i64
  %"705" = getelementptr inbounds [3 x i32]* @flag2, i32 0, i64 %"704"
  store i32 3, i32* %"705", align 4
  %"706" = call i8 @__kittel_nondef.1() #4
  %"707" = load i8* @"'__CS_round", align 1
  %"708" = zext i8 %"707" to i32
  %"709" = zext i8 %"706" to i32
  %"710" = add nsw i32 %"708", %"709"
  %"711" = icmp slt i32 %"710", 3
  %"712" = zext i1 %"711" to i32
  call void @__VERIFIER_assume(i32 %"712") #4
  %"713" = zext i8 %"706" to i32
  %"714" = load i8* @"'__CS_round", align 1
  %"715" = zext i8 %"714" to i32
  %"716" = add nsw i32 %"715", %"713"
  %"717" = trunc i32 %"716" to i8
  store i8 %"717", i8* @"'__CS_round", align 1
  %"718" = call i32 (...)* @nondet_int() #4
  %"719" = icmp ne i32 %"718", 0
  br i1 %"719", label %thr2_bb143, label %thr2_bb144

thr2_bb143:                                       ; preds = %thr2_bb142
  %"720" = load i8* @"'__CS_round", align 1
  %"721" = zext i8 %"720" to i32
  %"722" = icmp eq i32 %"721", 2
  br i1 %"722", label %thr2___CS_cs.exit4, label %thr2_bb144

thr2_bb144:                                       ; preds = %thr2_bb143, %thr2_bb142
  %"723" = load i8* @"'__CS_ret", align 1
  %"724" = zext i8 %"723" to i32
  br label %thr2___CS_cs.exit4

thr2___CS_cs.exit4:                               ; preds = %thr2_bb143, %thr2_bb144
  %"725" = phi i32 [ %"724", %thr2_bb144 ], [ 1, %thr2_bb143 ]
  %"726" = trunc i32 %"725" to i8
  store i8 %"726", i8* @"'__CS_ret", align 1
  %"727" = load i8* @"'__CS_ret", align 1
  %"728" = zext i8 %"727" to i32
  %"729" = icmp ne i32 %"728", 0
  br i1 %"729", label %thr2_bb198, label %thr2_bb145

thr2_bb145:                                       ; preds = %thr2___CS_cs.exit4
  %"730" = load i8* @"'__CS_round", align 1
  %"731" = zext i8 %"730" to i64
  %"732" = getelementptr inbounds [3 x i32]* @flag1, i32 0, i64 %"731"
  %"733" = load i32* %"732", align 4
  %"734" = icmp eq i32 %"733", 1
  br i1 %"734", label %thr2_bb146, label %thr2_bb159

thr2_bb146:                                       ; preds = %thr2_bb145
  %"735" = call i8 @__kittel_nondef.1() #4
  %"736" = load i8* @"'__CS_round", align 1
  %"737" = zext i8 %"736" to i32
  %"738" = zext i8 %"735" to i32
  %"739" = add nsw i32 %"737", %"738"
  %"740" = icmp slt i32 %"739", 3
  %"741" = zext i1 %"740" to i32
  call void @__VERIFIER_assume(i32 %"741") #4
  %"742" = zext i8 %"735" to i32
  %"743" = load i8* @"'__CS_round", align 1
  %"744" = zext i8 %"743" to i32
  %"745" = add nsw i32 %"744", %"742"
  %"746" = trunc i32 %"745" to i8
  store i8 %"746", i8* @"'__CS_round", align 1
  %"747" = call i32 (...)* @nondet_int() #4
  %"748" = icmp ne i32 %"747", 0
  br i1 %"748", label %thr2_bb147, label %thr2_bb148

thr2_bb147:                                       ; preds = %thr2_bb146
  %"749" = load i8* @"'__CS_round", align 1
  %"750" = zext i8 %"749" to i32
  %"751" = icmp eq i32 %"750", 2
  br i1 %"751", label %thr2___CS_cs.exit5, label %thr2_bb148

thr2_bb148:                                       ; preds = %thr2_bb147, %thr2_bb146
  %"752" = load i8* @"'__CS_ret", align 1
  %"753" = zext i8 %"752" to i32
  br label %thr2___CS_cs.exit5

thr2___CS_cs.exit5:                               ; preds = %thr2_bb147, %thr2_bb148
  %"754" = phi i32 [ %"753", %thr2_bb148 ], [ 1, %thr2_bb147 ]
  %"755" = trunc i32 %"754" to i8
  store i8 %"755", i8* @"'__CS_ret", align 1
  %"756" = load i8* @"'__CS_ret", align 1
  %"757" = zext i8 %"756" to i32
  %"758" = icmp ne i32 %"757", 0
  br i1 %"758", label %thr2_bb198, label %thr2_bb149

thr2_bb149:                                       ; preds = %thr2___CS_cs.exit5
  %"759" = load i8* @"'__CS_round", align 1
  %"760" = zext i8 %"759" to i64
  %"761" = getelementptr inbounds [3 x i32]* @flag2, i32 0, i64 %"760"
  store i32 2, i32* %"761", align 4
  %"762" = call i8 @__kittel_nondef.1() #4
  %"763" = load i8* @"'__CS_round", align 1
  %"764" = zext i8 %"763" to i32
  %"765" = zext i8 %"762" to i32
  %"766" = add nsw i32 %"764", %"765"
  %"767" = icmp slt i32 %"766", 3
  %"768" = zext i1 %"767" to i32
  call void @__VERIFIER_assume(i32 %"768") #4
  %"769" = zext i8 %"762" to i32
  %"770" = load i8* @"'__CS_round", align 1
  %"771" = zext i8 %"770" to i32
  %"772" = add nsw i32 %"771", %"769"
  %"773" = trunc i32 %"772" to i8
  store i8 %"773", i8* @"'__CS_round", align 1
  %"774" = call i32 (...)* @nondet_int() #4
  %"775" = icmp ne i32 %"774", 0
  br i1 %"775", label %thr2_bb150, label %thr2_bb151

thr2_bb150:                                       ; preds = %thr2_bb149
  %"776" = load i8* @"'__CS_round", align 1
  %"777" = zext i8 %"776" to i32
  %"778" = icmp eq i32 %"777", 2
  br i1 %"778", label %thr2___CS_cs.exit6, label %thr2_bb151

thr2_bb151:                                       ; preds = %thr2_bb150, %thr2_bb149
  %"779" = load i8* @"'__CS_ret", align 1
  %"780" = zext i8 %"779" to i32
  br label %thr2___CS_cs.exit6

thr2___CS_cs.exit6:                               ; preds = %thr2_bb150, %thr2_bb151
  %"781" = phi i32 [ %"780", %thr2_bb151 ], [ 1, %thr2_bb150 ]
  %"782" = trunc i32 %"781" to i8
  store i8 %"782", i8* @"'__CS_ret", align 1
  %"783" = load i8* @"'__CS_ret", align 1
  %"784" = zext i8 %"783" to i32
  %"785" = icmp ne i32 %"784", 0
  br i1 %"785", label %thr2_bb198, label %thr2_bb152

thr2_bb152:                                       ; preds = %thr2___CS_cs.exit7, %thr2___CS_cs.exit6
  %"786" = load i8* @"'__CS_round", align 1
  %"787" = zext i8 %"786" to i64
  %"788" = getelementptr inbounds [3 x i32]* @flag1, i32 0, i64 %"787"
  %"789" = load i32* %"788", align 4
  %"790" = icmp ne i32 %"789", 4
  %"791" = call i8 @__kittel_nondef.1() #4
  %"792" = load i8* @"'__CS_round", align 1
  %"793" = zext i8 %"792" to i32
  %"794" = zext i8 %"791" to i32
  %"795" = add nsw i32 %"793", %"794"
  %"796" = icmp slt i32 %"795", 3
  %"797" = zext i1 %"796" to i32
  call void @__VERIFIER_assume(i32 %"797") #4
  %"798" = zext i8 %"791" to i32
  %"799" = load i8* @"'__CS_round", align 1
  %"800" = zext i8 %"799" to i32
  %"801" = add nsw i32 %"800", %"798"
  %"802" = trunc i32 %"801" to i8
  store i8 %"802", i8* @"'__CS_round", align 1
  %"803" = call i32 (...)* @nondet_int() #4
  %"804" = icmp ne i32 %"803", 0
  br i1 %"790", label %thr2_bb153, label %thr2_bb156

thr2_bb153:                                       ; preds = %thr2_bb152
  br i1 %"804", label %thr2_bb154, label %thr2_bb155

thr2_bb154:                                       ; preds = %thr2_bb153
  %"805" = load i8* @"'__CS_round", align 1
  %"806" = zext i8 %"805" to i32
  %"807" = icmp eq i32 %"806", 2
  br i1 %"807", label %thr2___CS_cs.exit7, label %thr2_bb155

thr2_bb155:                                       ; preds = %thr2_bb154, %thr2_bb153
  %"808" = load i8* @"'__CS_ret", align 1
  %"809" = zext i8 %"808" to i32
  br label %thr2___CS_cs.exit7

thr2___CS_cs.exit7:                               ; preds = %thr2_bb154, %thr2_bb155
  %"810" = phi i32 [ %"809", %thr2_bb155 ], [ 1, %thr2_bb154 ]
  %"811" = trunc i32 %"810" to i8
  store i8 %"811", i8* @"'__CS_ret", align 1
  %"812" = load i8* @"'__CS_ret", align 1
  %"813" = zext i8 %"812" to i32
  %"814" = icmp ne i32 %"813", 0
  br i1 %"814", label %thr2_bb198, label %thr2_bb152

thr2_bb156:                                       ; preds = %thr2_bb152
  br i1 %"804", label %thr2_bb157, label %thr2_bb158

thr2_bb157:                                       ; preds = %thr2_bb156
  %"815" = load i8* @"'__CS_round", align 1
  %"816" = zext i8 %"815" to i32
  %"817" = icmp eq i32 %"816", 2
  br i1 %"817", label %thr2___CS_cs.exit8, label %thr2_bb158

thr2_bb158:                                       ; preds = %thr2_bb157, %thr2_bb156
  %"818" = load i8* @"'__CS_ret", align 1
  %"819" = zext i8 %"818" to i32
  br label %thr2___CS_cs.exit8

thr2___CS_cs.exit8:                               ; preds = %thr2_bb157, %thr2_bb158
  %"820" = phi i32 [ %"819", %thr2_bb158 ], [ 1, %thr2_bb157 ]
  %"821" = trunc i32 %"820" to i8
  store i8 %"821", i8* @"'__CS_ret", align 1
  %"822" = load i8* @"'__CS_ret", align 1
  %"823" = zext i8 %"822" to i32
  %"824" = icmp ne i32 %"823", 0
  br i1 %"824", label %thr2_bb198, label %thr2_bb159

thr2_bb159:                                       ; preds = %thr2___CS_cs.exit8, %thr2_bb145
  %"825" = call i8 @__kittel_nondef.1() #4
  %"826" = load i8* @"'__CS_round", align 1
  %"827" = zext i8 %"826" to i32
  %"828" = zext i8 %"825" to i32
  %"829" = add nsw i32 %"827", %"828"
  %"830" = icmp slt i32 %"829", 3
  %"831" = zext i1 %"830" to i32
  call void @__VERIFIER_assume(i32 %"831") #4
  %"832" = zext i8 %"825" to i32
  %"833" = load i8* @"'__CS_round", align 1
  %"834" = zext i8 %"833" to i32
  %"835" = add nsw i32 %"834", %"832"
  %"836" = trunc i32 %"835" to i8
  store i8 %"836", i8* @"'__CS_round", align 1
  %"837" = call i32 (...)* @nondet_int() #4
  %"838" = icmp ne i32 %"837", 0
  br i1 %"838", label %thr2_bb160, label %thr2_bb161

thr2_bb160:                                       ; preds = %thr2_bb159
  %"839" = load i8* @"'__CS_round", align 1
  %"840" = zext i8 %"839" to i32
  %"841" = icmp eq i32 %"840", 2
  br i1 %"841", label %thr2___CS_cs.exit9, label %thr2_bb161

thr2_bb161:                                       ; preds = %thr2_bb160, %thr2_bb159
  %"842" = load i8* @"'__CS_ret", align 1
  %"843" = zext i8 %"842" to i32
  br label %thr2___CS_cs.exit9

thr2___CS_cs.exit9:                               ; preds = %thr2_bb160, %thr2_bb161
  %"844" = phi i32 [ %"843", %thr2_bb161 ], [ 1, %thr2_bb160 ]
  %"845" = trunc i32 %"844" to i8
  store i8 %"845", i8* @"'__CS_ret", align 1
  %"846" = load i8* @"'__CS_ret", align 1
  %"847" = zext i8 %"846" to i32
  %"848" = icmp ne i32 %"847", 0
  br i1 %"848", label %thr2_bb198, label %thr2_bb162

thr2_bb162:                                       ; preds = %thr2___CS_cs.exit9
  %"849" = load i8* @"'__CS_round", align 1
  %"850" = zext i8 %"849" to i64
  %"851" = getelementptr inbounds [3 x i32]* @flag2, i32 0, i64 %"850"
  store i32 4, i32* %"851", align 4
  %"852" = call i8 @__kittel_nondef.1() #4
  %"853" = load i8* @"'__CS_round", align 1
  %"854" = zext i8 %"853" to i32
  %"855" = zext i8 %"852" to i32
  %"856" = add nsw i32 %"854", %"855"
  %"857" = icmp slt i32 %"856", 3
  %"858" = zext i1 %"857" to i32
  call void @__VERIFIER_assume(i32 %"858") #4
  %"859" = zext i8 %"852" to i32
  %"860" = load i8* @"'__CS_round", align 1
  %"861" = zext i8 %"860" to i32
  %"862" = add nsw i32 %"861", %"859"
  %"863" = trunc i32 %"862" to i8
  store i8 %"863", i8* @"'__CS_round", align 1
  %"864" = call i32 (...)* @nondet_int() #4
  %"865" = icmp ne i32 %"864", 0
  br i1 %"865", label %thr2_bb163, label %thr2_bb164

thr2_bb163:                                       ; preds = %thr2_bb162
  %"866" = load i8* @"'__CS_round", align 1
  %"867" = zext i8 %"866" to i32
  %"868" = icmp eq i32 %"867", 2
  br i1 %"868", label %thr2___CS_cs.exit10, label %thr2_bb164

thr2_bb164:                                       ; preds = %thr2_bb163, %thr2_bb162
  %"869" = load i8* @"'__CS_ret", align 1
  %"870" = zext i8 %"869" to i32
  br label %thr2___CS_cs.exit10

thr2___CS_cs.exit10:                              ; preds = %thr2_bb163, %thr2_bb164
  %"871" = phi i32 [ %"870", %thr2_bb164 ], [ 1, %thr2_bb163 ]
  %"872" = trunc i32 %"871" to i8
  store i8 %"872", i8* @"'__CS_ret", align 1
  %"873" = load i8* @"'__CS_ret", align 1
  %"874" = zext i8 %"873" to i32
  %"875" = icmp ne i32 %"874", 0
  br i1 %"875", label %thr2_bb198, label %thr2_bb165

thr2_bb165:                                       ; preds = %thr2___CS_cs.exit11, %thr2___CS_cs.exit10
  %"876" = load i8* @"'__CS_round", align 1
  %"877" = zext i8 %"876" to i64
  %"878" = getelementptr inbounds [3 x i32]* @flag1, i32 0, i64 %"877"
  %"879" = load i32* %"878", align 4
  %"880" = icmp sge i32 %"879", 2
  %"881" = call i8 @__kittel_nondef.1() #4
  %"882" = load i8* @"'__CS_round", align 1
  %"883" = zext i8 %"882" to i32
  %"884" = zext i8 %"881" to i32
  %"885" = add nsw i32 %"883", %"884"
  %"886" = icmp slt i32 %"885", 3
  %"887" = zext i1 %"886" to i32
  call void @__VERIFIER_assume(i32 %"887") #4
  %"888" = zext i8 %"881" to i32
  %"889" = load i8* @"'__CS_round", align 1
  %"890" = zext i8 %"889" to i32
  %"891" = add nsw i32 %"890", %"888"
  %"892" = trunc i32 %"891" to i8
  store i8 %"892", i8* @"'__CS_round", align 1
  %"893" = call i32 (...)* @nondet_int() #4
  %"894" = icmp ne i32 %"893", 0
  br i1 %"880", label %thr2_bb166, label %thr2_bb169

thr2_bb166:                                       ; preds = %thr2_bb165
  br i1 %"894", label %thr2_bb167, label %thr2_bb168

thr2_bb167:                                       ; preds = %thr2_bb166
  %"895" = load i8* @"'__CS_round", align 1
  %"896" = zext i8 %"895" to i32
  %"897" = icmp eq i32 %"896", 2
  br i1 %"897", label %thr2___CS_cs.exit11, label %thr2_bb168

thr2_bb168:                                       ; preds = %thr2_bb167, %thr2_bb166
  %"898" = load i8* @"'__CS_ret", align 1
  %"899" = zext i8 %"898" to i32
  br label %thr2___CS_cs.exit11

thr2___CS_cs.exit11:                              ; preds = %thr2_bb167, %thr2_bb168
  %"900" = phi i32 [ %"899", %thr2_bb168 ], [ 1, %thr2_bb167 ]
  %"901" = trunc i32 %"900" to i8
  store i8 %"901", i8* @"'__CS_ret", align 1
  %"902" = load i8* @"'__CS_ret", align 1
  %"903" = zext i8 %"902" to i32
  %"904" = icmp ne i32 %"903", 0
  br i1 %"904", label %thr2_bb198, label %thr2_bb165

thr2_bb169:                                       ; preds = %thr2_bb165
  br i1 %"894", label %thr2_bb170, label %thr2_bb171

thr2_bb170:                                       ; preds = %thr2_bb169
  %"905" = load i8* @"'__CS_round", align 1
  %"906" = zext i8 %"905" to i32
  %"907" = icmp eq i32 %"906", 2
  br i1 %"907", label %thr2___CS_cs.exit12, label %thr2_bb171

thr2_bb171:                                       ; preds = %thr2_bb170, %thr2_bb169
  %"908" = load i8* @"'__CS_ret", align 1
  %"909" = zext i8 %"908" to i32
  br label %thr2___CS_cs.exit12

thr2___CS_cs.exit12:                              ; preds = %thr2_bb170, %thr2_bb171
  %"910" = phi i32 [ %"909", %thr2_bb171 ], [ 1, %thr2_bb170 ]
  %"911" = trunc i32 %"910" to i8
  store i8 %"911", i8* @"'__CS_ret", align 1
  %"912" = load i8* @"'__CS_ret", align 1
  %"913" = zext i8 %"912" to i32
  %"914" = icmp ne i32 %"913", 0
  br i1 %"914", label %thr2_bb198, label %thr2_bb172

thr2_bb172:                                       ; preds = %thr2___CS_cs.exit12
  %"915" = load i8* @"'__CS_round", align 1
  %"916" = zext i8 %"915" to i64
  %"917" = getelementptr inbounds [3 x i32]* @x, i32 0, i64 %"916"
  store i32 1, i32* %"917", align 4
  %"918" = call i8 @__kittel_nondef.1() #4
  %"919" = load i8* @"'__CS_round", align 1
  %"920" = zext i8 %"919" to i32
  %"921" = zext i8 %"918" to i32
  %"922" = add nsw i32 %"920", %"921"
  %"923" = icmp slt i32 %"922", 3
  %"924" = zext i1 %"923" to i32
  call void @__VERIFIER_assume(i32 %"924") #4
  %"925" = zext i8 %"918" to i32
  %"926" = load i8* @"'__CS_round", align 1
  %"927" = zext i8 %"926" to i32
  %"928" = add nsw i32 %"927", %"925"
  %"929" = trunc i32 %"928" to i8
  store i8 %"929", i8* @"'__CS_round", align 1
  %"930" = call i32 (...)* @nondet_int() #4
  %"931" = icmp ne i32 %"930", 0
  br i1 %"931", label %thr2_bb173, label %thr2_bb174

thr2_bb173:                                       ; preds = %thr2_bb172
  %"932" = load i8* @"'__CS_round", align 1
  %"933" = zext i8 %"932" to i32
  %"934" = icmp eq i32 %"933", 2
  br i1 %"934", label %thr2___CS_cs.exit13, label %thr2_bb174

thr2_bb174:                                       ; preds = %thr2_bb173, %thr2_bb172
  %"935" = load i8* @"'__CS_ret", align 1
  %"936" = zext i8 %"935" to i32
  br label %thr2___CS_cs.exit13

thr2___CS_cs.exit13:                              ; preds = %thr2_bb173, %thr2_bb174
  %"937" = phi i32 [ %"936", %thr2_bb174 ], [ 1, %thr2_bb173 ]
  %"938" = trunc i32 %"937" to i8
  store i8 %"938", i8* @"'__CS_ret", align 1
  %"939" = load i8* @"'__CS_ret", align 1
  %"940" = zext i8 %"939" to i32
  %"941" = icmp ne i32 %"940", 0
  br i1 %"941", label %thr2_bb198, label %thr2_bb175

thr2_bb175:                                       ; preds = %thr2___CS_cs.exit13
  %"942" = load i8* @"'__CS_round", align 1
  %"943" = zext i8 %"942" to i64
  %"944" = getelementptr inbounds [3 x i32]* @x, i32 0, i64 %"943"
  %"945" = load i32* %"944", align 4
  %"946" = icmp sge i32 %"945", 1
  %"947" = call i8 @__kittel_nondef.1() #4
  %"948" = load i8* @"'__CS_round", align 1
  %"949" = zext i8 %"948" to i32
  %"950" = zext i8 %"947" to i32
  %"951" = add nsw i32 %"949", %"950"
  %"952" = icmp slt i32 %"951", 3
  %"953" = zext i1 %"952" to i32
  call void @__VERIFIER_assume(i32 %"953") #4
  %"954" = zext i8 %"947" to i32
  %"955" = load i8* @"'__CS_round", align 1
  %"956" = zext i8 %"955" to i32
  %"957" = add nsw i32 %"956", %"954"
  %"958" = trunc i32 %"957" to i8
  store i8 %"958", i8* @"'__CS_round", align 1
  %"959" = call i32 (...)* @nondet_int() #4
  %"960" = icmp ne i32 %"959", 0
  br i1 %"946", label %thr2_bb176, label %thr2_bb194

thr2_bb176:                                       ; preds = %thr2_bb175
  br i1 %"960", label %thr2_bb177, label %thr2_bb178

thr2_bb177:                                       ; preds = %thr2_bb176
  %"961" = load i8* @"'__CS_round", align 1
  %"962" = zext i8 %"961" to i32
  %"963" = icmp eq i32 %"962", 2
  br i1 %"963", label %thr2___CS_cs.exit15, label %thr2_bb178

thr2_bb178:                                       ; preds = %thr2_bb177, %thr2_bb176
  %"964" = load i8* @"'__CS_ret", align 1
  %"965" = zext i8 %"964" to i32
  br label %thr2___CS_cs.exit15

thr2___CS_cs.exit15:                              ; preds = %thr2_bb177, %thr2_bb178
  %"966" = phi i32 [ %"965", %thr2_bb178 ], [ 1, %thr2_bb177 ]
  %"967" = trunc i32 %"966" to i8
  store i8 %"967", i8* @"'__CS_ret", align 1
  %"968" = load i8* @"'__CS_ret", align 1
  %"969" = zext i8 %"968" to i32
  %"970" = icmp ne i32 %"969", 0
  br i1 %"970", label %thr2_bb198, label %thr2_bb179

thr2_bb179:                                       ; preds = %thr2___CS_cs.exit15
  %"971" = call i8 @__kittel_nondef.1() #4
  %"972" = load i8* @"'__CS_round", align 1
  %"973" = zext i8 %"972" to i32
  %"974" = zext i8 %"971" to i32
  %"975" = add nsw i32 %"973", %"974"
  %"976" = icmp slt i32 %"975", 3
  %"977" = zext i1 %"976" to i32
  call void @__VERIFIER_assume(i32 %"977") #4
  %"978" = zext i8 %"971" to i32
  %"979" = load i8* @"'__CS_round", align 1
  %"980" = zext i8 %"979" to i32
  %"981" = add nsw i32 %"980", %"978"
  %"982" = trunc i32 %"981" to i8
  store i8 %"982", i8* @"'__CS_round", align 1
  %"983" = call i32 (...)* @nondet_int() #4
  %"984" = icmp ne i32 %"983", 0
  br i1 %"984", label %thr2_bb180, label %thr2_bb181

thr2_bb180:                                       ; preds = %thr2_bb179
  %"985" = load i8* @"'__CS_round", align 1
  %"986" = zext i8 %"985" to i32
  %"987" = icmp eq i32 %"986", 2
  br i1 %"987", label %thr2___CS_cs.exit16, label %thr2_bb181

thr2_bb181:                                       ; preds = %thr2_bb180, %thr2_bb179
  %"988" = load i8* @"'__CS_ret", align 1
  %"989" = zext i8 %"988" to i32
  br label %thr2___CS_cs.exit16

thr2___CS_cs.exit16:                              ; preds = %thr2_bb180, %thr2_bb181
  %"990" = phi i32 [ %"989", %thr2_bb181 ], [ 1, %thr2_bb180 ]
  %"991" = trunc i32 %"990" to i8
  store i8 %"991", i8* @"'__CS_ret", align 1
  %"992" = load i8* @"'__CS_ret", align 1
  %"993" = zext i8 %"992" to i32
  %"994" = icmp ne i32 %"993", 0
  br i1 %"994", label %thr2_bb198, label %thr2_bb182

thr2_bb182:                                       ; preds = %thr2___CS_cs.exit17, %thr2___CS_cs.exit16
  %"995" = load i8* @"'__CS_round", align 1
  %"996" = zext i8 %"995" to i64
  %"997" = getelementptr inbounds [3 x i32]* @flag1, i32 0, i64 %"996"
  %"998" = load i32* %"997", align 4
  %"999" = icmp sle i32 2, %"998"
  br i1 %"999", label %thr2_bb183, label %thr2_bb184

thr2_bb183:                                       ; preds = %thr2_bb182
  %"1000" = load i8* @"'__CS_round", align 1
  %"1001" = zext i8 %"1000" to i64
  %"1002" = getelementptr inbounds [3 x i32]* @flag1, i32 0, i64 %"1001"
  %"1003" = load i32* %"1002", align 4
  %"1004" = icmp sle i32 %"1003", 3
  br label %thr2_bb184

thr2_bb184:                                       ; preds = %thr2_bb183, %thr2_bb182
  %"1005" = phi i1 [ false, %thr2_bb182 ], [ %"1004", %thr2_bb183 ]
  %"1006" = call i8 @__kittel_nondef.1() #4
  %"1007" = load i8* @"'__CS_round", align 1
  %"1008" = zext i8 %"1007" to i32
  %"1009" = zext i8 %"1006" to i32
  %"1010" = add nsw i32 %"1008", %"1009"
  %"1011" = icmp slt i32 %"1010", 3
  %"1012" = zext i1 %"1011" to i32
  call void @__VERIFIER_assume(i32 %"1012") #4
  %"1013" = zext i8 %"1006" to i32
  %"1014" = load i8* @"'__CS_round", align 1
  %"1015" = zext i8 %"1014" to i32
  %"1016" = add nsw i32 %"1015", %"1013"
  %"1017" = trunc i32 %"1016" to i8
  store i8 %"1017", i8* @"'__CS_round", align 1
  %"1018" = call i32 (...)* @nondet_int() #4
  %"1019" = icmp ne i32 %"1018", 0
  br i1 %"1005", label %thr2_bb185, label %thr2_bb188

thr2_bb185:                                       ; preds = %thr2_bb184
  br i1 %"1019", label %thr2_bb186, label %thr2_bb187

thr2_bb186:                                       ; preds = %thr2_bb185
  %"1020" = load i8* @"'__CS_round", align 1
  %"1021" = zext i8 %"1020" to i32
  %"1022" = icmp eq i32 %"1021", 2
  br i1 %"1022", label %thr2___CS_cs.exit17, label %thr2_bb187

thr2_bb187:                                       ; preds = %thr2_bb186, %thr2_bb185
  %"1023" = load i8* @"'__CS_ret", align 1
  %"1024" = zext i8 %"1023" to i32
  br label %thr2___CS_cs.exit17

thr2___CS_cs.exit17:                              ; preds = %thr2_bb186, %thr2_bb187
  %"1025" = phi i32 [ %"1024", %thr2_bb187 ], [ 1, %thr2_bb186 ]
  %"1026" = trunc i32 %"1025" to i8
  store i8 %"1026", i8* @"'__CS_ret", align 1
  %"1027" = load i8* @"'__CS_ret", align 1
  %"1028" = zext i8 %"1027" to i32
  %"1029" = icmp ne i32 %"1028", 0
  br i1 %"1029", label %thr2_bb198, label %thr2_bb182

thr2_bb188:                                       ; preds = %thr2_bb184
  br i1 %"1019", label %thr2_bb189, label %thr2_bb190

thr2_bb189:                                       ; preds = %thr2_bb188
  %"1030" = load i8* @"'__CS_round", align 1
  %"1031" = zext i8 %"1030" to i32
  %"1032" = icmp eq i32 %"1031", 2
  br i1 %"1032", label %thr2___CS_cs.exit18, label %thr2_bb190

thr2_bb190:                                       ; preds = %thr2_bb189, %thr2_bb188
  %"1033" = load i8* @"'__CS_ret", align 1
  %"1034" = zext i8 %"1033" to i32
  br label %thr2___CS_cs.exit18

thr2___CS_cs.exit18:                              ; preds = %thr2_bb189, %thr2_bb190
  %"1035" = phi i32 [ %"1034", %thr2_bb190 ], [ 1, %thr2_bb189 ]
  %"1036" = trunc i32 %"1035" to i8
  store i8 %"1036", i8* @"'__CS_ret", align 1
  %"1037" = load i8* @"'__CS_ret", align 1
  %"1038" = zext i8 %"1037" to i32
  %"1039" = icmp ne i32 %"1038", 0
  br i1 %"1039", label %thr2_bb198, label %thr2_bb191

thr2_bb191:                                       ; preds = %thr2___CS_cs.exit18
  %"1040" = load i8* @"'__CS_round", align 1
  %"1041" = zext i8 %"1040" to i64
  %"1042" = getelementptr inbounds [3 x i32]* @flag2, i32 0, i64 %"1041"
  store i32 0, i32* %"1042", align 4
  %"1043" = call i8 @__kittel_nondef.1() #4
  %"1044" = load i8* @"'__CS_round", align 1
  %"1045" = zext i8 %"1044" to i32
  %"1046" = zext i8 %"1043" to i32
  %"1047" = add nsw i32 %"1045", %"1046"
  %"1048" = icmp slt i32 %"1047", 3
  %"1049" = zext i1 %"1048" to i32
  call void @__VERIFIER_assume(i32 %"1049") #4
  %"1050" = zext i8 %"1043" to i32
  %"1051" = load i8* @"'__CS_round", align 1
  %"1052" = zext i8 %"1051" to i32
  %"1053" = add nsw i32 %"1052", %"1050"
  %"1054" = trunc i32 %"1053" to i8
  store i8 %"1054", i8* @"'__CS_round", align 1
  %"1055" = call i32 (...)* @nondet_int() #4
  %"1056" = icmp ne i32 %"1055", 0
  br i1 %"1056", label %thr2_bb192, label %thr2_bb193

thr2_bb192:                                       ; preds = %thr2_bb191
  %"1057" = load i8* @"'__CS_round", align 1
  %"1058" = zext i8 %"1057" to i32
  %"1059" = icmp eq i32 %"1058", 2
  br i1 %"1059", label %thr2___CS_cs.exit19, label %thr2_bb193

thr2_bb193:                                       ; preds = %thr2_bb192, %thr2_bb191
  %"1060" = load i8* @"'__CS_ret", align 1
  %"1061" = zext i8 %"1060" to i32
  br label %thr2___CS_cs.exit19

thr2___CS_cs.exit19:                              ; preds = %thr2_bb192, %thr2_bb193
  %"1062" = phi i32 [ %"1061", %thr2_bb193 ], [ 1, %thr2_bb192 ]
  %"1063" = trunc i32 %"1062" to i8
  store i8 %"1063", i8* @"'__CS_ret", align 1
  %"1064" = load i8* @"'__CS_ret", align 1
  %"1065" = zext i8 %"1064" to i32
  %"1066" = icmp ne i32 %"1065", 0
  %. = select i1 %"1066", i8* null, i8* %"612"
  ret i8* %.

thr2_bb194:                                       ; preds = %thr2_bb175
  br i1 %"960", label %thr2_bb195, label %thr2_bb196

thr2_bb195:                                       ; preds = %thr2_bb194
  %"1067" = load i8* @"'__CS_round", align 1
  %"1068" = zext i8 %"1067" to i32
  %"1069" = icmp eq i32 %"1068", 2
  br i1 %"1069", label %thr2___CS_cs.exit14, label %thr2_bb196

thr2_bb196:                                       ; preds = %thr2_bb195, %thr2_bb194
  %"1070" = load i8* @"'__CS_ret", align 1
  %"1071" = zext i8 %"1070" to i32
  br label %thr2___CS_cs.exit14

thr2___CS_cs.exit14:                              ; preds = %thr2_bb195, %thr2_bb196
  %"1072" = phi i32 [ %"1071", %thr2_bb196 ], [ 1, %thr2_bb195 ]
  %"1073" = trunc i32 %"1072" to i8
  store i8 %"1073", i8* @"'__CS_ret", align 1
  %"1074" = load i8* @"'__CS_ret", align 1
  %"1075" = zext i8 %"1074" to i32
  %"1076" = icmp ne i32 %"1075", 0
  br i1 %"1076", label %thr2_bb198, label %thr2_bb197

thr2_bb197:                                       ; preds = %thr2___CS_cs.exit14
  store i8 1, i8* @"'__CS_error", align 1
  store i8 2, i8* @"'__CS_ret", align 1
  br label %thr2_bb198

thr2_bb198:                                       ; preds = %thr2___CS_cs.exit18, %thr2___CS_cs.exit17, %thr2___CS_cs.exit16, %thr2___CS_cs.exit15, %thr2___CS_cs.exit14, %thr2___CS_cs.exit13, %thr2___CS_cs.exit12, %thr2___CS_cs.exit11, %thr2___CS_cs.exit10, %thr2___CS_cs.exit9, %thr2___CS_cs.exit8, %thr2___CS_cs.exit7, %thr2___CS_cs.exit6, %thr2___CS_cs.exit5, %thr2___CS_cs.exit4, %thr2___CS_cs.exit3, %thr2___CS_cs.exit2, %thr2___CS_cs.exit1, %thr2___CS_cs.exit, %thr2_bb197
  ret i8* null
}

; Function Attrs: nounwind uwtable
define i8* @main_thread(i8* %arg) #0 {
main_thread_bb199:
  %"1077" = call i8* @__kittel_nondef.2()
  %"1078" = call i8 @__kittel_nondef.1() #4
  %"1079" = load i8* @"'__CS_round", align 1
  %"1080" = zext i8 %"1079" to i32
  %"1081" = zext i8 %"1078" to i32
  %"1082" = add nsw i32 %"1080", %"1081"
  %"1083" = icmp slt i32 %"1082", 3
  %"1084" = zext i1 %"1083" to i32
  call void @__VERIFIER_assume(i32 %"1084") #4
  %"1085" = zext i8 %"1078" to i32
  %"1086" = load i8* @"'__CS_round", align 1
  %"1087" = zext i8 %"1086" to i32
  %"1088" = add nsw i32 %"1087", %"1085"
  %"1089" = trunc i32 %"1088" to i8
  store i8 %"1089", i8* @"'__CS_round", align 1
  %"1090" = call i32 (...)* @nondet_int() #4
  %"1091" = icmp ne i32 %"1090", 0
  br i1 %"1091", label %main_thread_bb200, label %main_thread_bb201

main_thread_bb200:                                ; preds = %main_thread_bb199
  %"1092" = load i8* @"'__CS_round", align 1
  %"1093" = zext i8 %"1092" to i32
  %"1094" = icmp eq i32 %"1093", 2
  br i1 %"1094", label %main_thread___CS_cs.exit, label %main_thread_bb201

main_thread_bb201:                                ; preds = %main_thread_bb200, %main_thread_bb199
  %"1095" = load i8* @"'__CS_ret", align 1
  %"1096" = zext i8 %"1095" to i32
  br label %main_thread___CS_cs.exit

main_thread___CS_cs.exit:                         ; preds = %main_thread_bb200, %main_thread_bb201
  %"1097" = phi i32 [ %"1096", %main_thread_bb201 ], [ 1, %main_thread_bb200 ]
  %"1098" = trunc i32 %"1097" to i8
  store i8 %"1098", i8* @"'__CS_ret", align 1
  %"1099" = load i8* @"'__CS_ret", align 1
  %"1100" = zext i8 %"1099" to i32
  %"1101" = icmp ne i32 %"1100", 0
  br i1 %"1101", label %main_thread_bb220, label %main_thread_bb202

main_thread_bb202:                                ; preds = %main_thread___CS_cs.exit
  %"1102" = load i8* @"'__CS_thread_index", align 1
  %"1103" = zext i8 %"1102" to i32
  %"1104" = icmp eq i32 %"1103", 2
  br i1 %"1104", label %main_thread___CS_pthread_create.exit, label %main_thread_bb203

main_thread_bb203:                                ; preds = %main_thread_bb202
  %"1105" = load i8* @"'__CS_thread_index", align 1
  %"1106" = add i8 %"1105", 1
  store i8 %"1106", i8* @"'__CS_thread_index", align 1
  %"1107" = load i8* @"'__CS_thread_index", align 1
  %"1108" = zext i8 %"1107" to i64
  %"1109" = getelementptr inbounds [3 x i8]* @__CS_thread_allocated, i32 0, i64 %"1108"
  store i8 1, i8* %"1109", align 1
  %"1110" = load i8* @"'__CS_round", align 1
  %"1111" = load i8* @"'__CS_thread_index", align 1
  %"1112" = zext i8 %"1111" to i64
  %"1113" = getelementptr inbounds [3 x i8]* @__CS_thread_born_round, i32 0, i64 %"1112"
  store i8 %"1110", i8* %"1113", align 1
  %"1114" = load i8* @"'__CS_thread_index", align 1
  %"1115" = zext i8 %"1114" to i64
  %"1116" = getelementptr inbounds [3 x i8* (i8*)*]* @__CS_thread, i32 0, i64 %"1115"
  %"1117" = bitcast i8* ()* @thr1 to i8* (i8*)*
  store i8* (i8*)* %"1117", i8* (i8*)** %"1116", align 8
  %"1118" = load i8* @"'__CS_thread_index", align 1
  %"1119" = zext i8 %"1118" to i64
  %"1120" = load i8* @"'__CS_round", align 1
  %"1121" = zext i8 %"1120" to i64
  %"1122" = getelementptr inbounds [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 %"1121"
  %"1123" = getelementptr inbounds [3 x i8]* %"1122", i32 0, i64 %"1119"
  store i8 1, i8* %"1123", align 1
  %"1124" = load i8* @"'__CS_thread_index", align 1
  br label %main_thread___CS_pthread_create.exit

main_thread___CS_pthread_create.exit:             ; preds = %main_thread_bb202, %main_thread_bb203
  %t1.0 = phi i8 [ %"1124", %main_thread_bb203 ], [ 123, %main_thread_bb202 ]
  %"1125" = call i8 @__kittel_nondef.1() #4
  %"1126" = load i8* @"'__CS_round", align 1
  %"1127" = zext i8 %"1126" to i32
  %"1128" = zext i8 %"1125" to i32
  %"1129" = add nsw i32 %"1127", %"1128"
  %"1130" = icmp slt i32 %"1129", 3
  %"1131" = zext i1 %"1130" to i32
  call void @__VERIFIER_assume(i32 %"1131") #4
  %"1132" = zext i8 %"1125" to i32
  %"1133" = load i8* @"'__CS_round", align 1
  %"1134" = zext i8 %"1133" to i32
  %"1135" = add nsw i32 %"1134", %"1132"
  %"1136" = trunc i32 %"1135" to i8
  store i8 %"1136", i8* @"'__CS_round", align 1
  %"1137" = call i32 (...)* @nondet_int() #4
  %"1138" = icmp ne i32 %"1137", 0
  br i1 %"1138", label %main_thread_bb204, label %main_thread_bb205

main_thread_bb204:                                ; preds = %main_thread___CS_pthread_create.exit
  %"1139" = load i8* @"'__CS_round", align 1
  %"1140" = zext i8 %"1139" to i32
  %"1141" = icmp eq i32 %"1140", 2
  br i1 %"1141", label %main_thread___CS_cs.exit1, label %main_thread_bb205

main_thread_bb205:                                ; preds = %main_thread_bb204, %main_thread___CS_pthread_create.exit
  %"1142" = load i8* @"'__CS_ret", align 1
  %"1143" = zext i8 %"1142" to i32
  br label %main_thread___CS_cs.exit1

main_thread___CS_cs.exit1:                        ; preds = %main_thread_bb204, %main_thread_bb205
  %"1144" = phi i32 [ %"1143", %main_thread_bb205 ], [ 1, %main_thread_bb204 ]
  %"1145" = trunc i32 %"1144" to i8
  store i8 %"1145", i8* @"'__CS_ret", align 1
  %"1146" = load i8* @"'__CS_ret", align 1
  %"1147" = zext i8 %"1146" to i32
  %"1148" = icmp ne i32 %"1147", 0
  br i1 %"1148", label %main_thread_bb220, label %main_thread_bb206

main_thread_bb206:                                ; preds = %main_thread___CS_cs.exit1
  %"1149" = load i8* @"'__CS_thread_index", align 1
  %"1150" = zext i8 %"1149" to i32
  %"1151" = icmp eq i32 %"1150", 2
  br i1 %"1151", label %main_thread___CS_pthread_create.exit3, label %main_thread_bb207

main_thread_bb207:                                ; preds = %main_thread_bb206
  %"1152" = load i8* @"'__CS_thread_index", align 1
  %"1153" = add i8 %"1152", 1
  store i8 %"1153", i8* @"'__CS_thread_index", align 1
  %"1154" = load i8* @"'__CS_thread_index", align 1
  %"1155" = zext i8 %"1154" to i64
  %"1156" = getelementptr inbounds [3 x i8]* @__CS_thread_allocated, i32 0, i64 %"1155"
  store i8 1, i8* %"1156", align 1
  %"1157" = load i8* @"'__CS_round", align 1
  %"1158" = load i8* @"'__CS_thread_index", align 1
  %"1159" = zext i8 %"1158" to i64
  %"1160" = getelementptr inbounds [3 x i8]* @__CS_thread_born_round, i32 0, i64 %"1159"
  store i8 %"1157", i8* %"1160", align 1
  %"1161" = load i8* @"'__CS_thread_index", align 1
  %"1162" = zext i8 %"1161" to i64
  %"1163" = getelementptr inbounds [3 x i8* (i8*)*]* @__CS_thread, i32 0, i64 %"1162"
  %"1164" = bitcast i8* ()* @thr2 to i8* (i8*)*
  store i8* (i8*)* %"1164", i8* (i8*)** %"1163", align 8
  %"1165" = load i8* @"'__CS_thread_index", align 1
  %"1166" = zext i8 %"1165" to i64
  %"1167" = load i8* @"'__CS_round", align 1
  %"1168" = zext i8 %"1167" to i64
  %"1169" = getelementptr inbounds [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 %"1168"
  %"1170" = getelementptr inbounds [3 x i8]* %"1169", i32 0, i64 %"1166"
  store i8 1, i8* %"1170", align 1
  %"1171" = load i8* @"'__CS_thread_index", align 1
  br label %main_thread___CS_pthread_create.exit3

main_thread___CS_pthread_create.exit3:            ; preds = %main_thread_bb206, %main_thread_bb207
  %t2.0 = phi i8 [ %"1171", %main_thread_bb207 ], [ 123, %main_thread_bb206 ]
  %"1172" = call i8 @__kittel_nondef.1() #4
  %"1173" = load i8* @"'__CS_round", align 1
  %"1174" = zext i8 %"1173" to i32
  %"1175" = zext i8 %"1172" to i32
  %"1176" = add nsw i32 %"1174", %"1175"
  %"1177" = icmp slt i32 %"1176", 3
  %"1178" = zext i1 %"1177" to i32
  call void @__VERIFIER_assume(i32 %"1178") #4
  %"1179" = zext i8 %"1172" to i32
  %"1180" = load i8* @"'__CS_round", align 1
  %"1181" = zext i8 %"1180" to i32
  %"1182" = add nsw i32 %"1181", %"1179"
  %"1183" = trunc i32 %"1182" to i8
  store i8 %"1183", i8* @"'__CS_round", align 1
  %"1184" = call i32 (...)* @nondet_int() #4
  %"1185" = icmp ne i32 %"1184", 0
  br i1 %"1185", label %main_thread_bb208, label %main_thread_bb209

main_thread_bb208:                                ; preds = %main_thread___CS_pthread_create.exit3
  %"1186" = load i8* @"'__CS_round", align 1
  %"1187" = zext i8 %"1186" to i32
  %"1188" = icmp eq i32 %"1187", 2
  br i1 %"1188", label %main_thread___CS_cs.exit4, label %main_thread_bb209

main_thread_bb209:                                ; preds = %main_thread_bb208, %main_thread___CS_pthread_create.exit3
  %"1189" = load i8* @"'__CS_ret", align 1
  %"1190" = zext i8 %"1189" to i32
  br label %main_thread___CS_cs.exit4

main_thread___CS_cs.exit4:                        ; preds = %main_thread_bb208, %main_thread_bb209
  %"1191" = phi i32 [ %"1190", %main_thread_bb209 ], [ 1, %main_thread_bb208 ]
  %"1192" = trunc i32 %"1191" to i8
  store i8 %"1192", i8* @"'__CS_ret", align 1
  %"1193" = load i8* @"'__CS_ret", align 1
  %"1194" = zext i8 %"1193" to i32
  %"1195" = icmp ne i32 %"1194", 0
  br i1 %"1195", label %main_thread_bb220, label %main_thread_bb210

main_thread_bb210:                                ; preds = %main_thread___CS_cs.exit4
  %"1196" = zext i8 %t1.0 to i32
  %"1197" = icmp ne i32 %"1196", 123
  %"1198" = zext i8 %t1.0 to i32
  %"1199" = icmp sgt i32 %"1198", 3
  %or.cond.i = and i1 %"1197", %"1199"
  br i1 %or.cond.i, label %main_thread_bb211, label %main_thread_bb212

main_thread_bb211:                                ; preds = %main_thread_bb210
  store i8 1, i8* @"'__CS_error", align 1
  store i8 2, i8* @"'__CS_ret", align 1
  br label %main_thread___CS_pthread_join.exit

main_thread_bb212:                                ; preds = %main_thread_bb210
  %"1200" = zext i8 %t1.0 to i32
  %"1201" = icmp eq i32 %"1200", 123
  br i1 %"1201", label %main_thread_bb214, label %main_thread_bb213

main_thread_bb213:                                ; preds = %main_thread_bb212
  %"1202" = zext i8 %t1.0 to i64
  %"1203" = load i8* @"'__CS_round", align 1
  %"1204" = zext i8 %"1203" to i64
  %"1205" = getelementptr inbounds [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 %"1204"
  %"1206" = getelementptr inbounds [3 x i8]* %"1205", i32 0, i64 %"1202"
  %"1207" = load i8* %"1206", align 1
  %"1208" = zext i8 %"1207" to i32
  %"1209" = icmp eq i32 %"1208", 1
  br i1 %"1209", label %main_thread_bb214, label %main_thread_bb215

main_thread_bb214:                                ; preds = %main_thread_bb213, %main_thread_bb212
  store i8 1, i8* @"'__CS_ret", align 1
  br label %main_thread___CS_pthread_join.exit

main_thread_bb215:                                ; preds = %main_thread_bb213
  %"1210" = zext i8 %t1.0 to i64
  %"1211" = load i8* @"'__CS_round", align 1
  %"1212" = zext i8 %"1211" to i64
  %"1213" = getelementptr inbounds [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 %"1212"
  %"1214" = getelementptr inbounds [3 x i8]* %"1213", i32 0, i64 %"1210"
  %"1215" = load i8* %"1214", align 1
  %"1216" = zext i8 %"1215" to i32
  %"1217" = icmp eq i32 %"1216", 0
  br i1 %"1217", label %main_thread_bb216, label %main_thread_bb217

main_thread_bb216:                                ; preds = %main_thread_bb215
  store i8 1, i8* @"'__CS_error", align 1
  store i8 2, i8* @"'__CS_ret", align 1
  br label %main_thread___CS_pthread_join.exit

main_thread_bb217:                                ; preds = %main_thread_bb215
  %"1218" = zext i8 %t1.0 to i64
  %"1219" = load i8* @"'__CS_round", align 1
  %"1220" = zext i8 %"1219" to i64
  %"1221" = getelementptr inbounds [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 %"1220"
  %"1222" = getelementptr inbounds [3 x i8]* %"1221", i32 0, i64 %"1218"
  %"1223" = load i8* %"1222", align 1
  %"1224" = zext i8 %"1223" to i32
  %"1225" = icmp eq i32 %"1224", 2
  %"1226" = zext i1 %"1225" to i32
  call void @__VERIFIER_assume(i32 %"1226") #4
  br label %main_thread___CS_pthread_join.exit

main_thread___CS_pthread_join.exit:               ; preds = %main_thread_bb211, %main_thread_bb214, %main_thread_bb216, %main_thread_bb217
  %"1227" = call i8 @__kittel_nondef.1() #4
  %"1228" = load i8* @"'__CS_round", align 1
  %"1229" = zext i8 %"1228" to i32
  %"1230" = zext i8 %"1227" to i32
  %"1231" = add nsw i32 %"1229", %"1230"
  %"1232" = icmp slt i32 %"1231", 3
  %"1233" = zext i1 %"1232" to i32
  call void @__VERIFIER_assume(i32 %"1233") #4
  %"1234" = zext i8 %"1227" to i32
  %"1235" = load i8* @"'__CS_round", align 1
  %"1236" = zext i8 %"1235" to i32
  %"1237" = add nsw i32 %"1236", %"1234"
  %"1238" = trunc i32 %"1237" to i8
  store i8 %"1238", i8* @"'__CS_round", align 1
  %"1239" = call i32 (...)* @nondet_int() #4
  %"1240" = icmp ne i32 %"1239", 0
  br i1 %"1240", label %main_thread_bb218, label %main_thread_bb219

main_thread_bb218:                                ; preds = %main_thread___CS_pthread_join.exit
  %"1241" = load i8* @"'__CS_round", align 1
  %"1242" = zext i8 %"1241" to i32
  %"1243" = icmp eq i32 %"1242", 2
  br i1 %"1243", label %main_thread___CS_cs.exit5, label %main_thread_bb219

main_thread_bb219:                                ; preds = %main_thread_bb218, %main_thread___CS_pthread_join.exit
  %"1244" = load i8* @"'__CS_ret", align 1
  %"1245" = zext i8 %"1244" to i32
  br label %main_thread___CS_cs.exit5

main_thread___CS_cs.exit5:                        ; preds = %main_thread_bb218, %main_thread_bb219
  %"1246" = phi i32 [ %"1245", %main_thread_bb219 ], [ 1, %main_thread_bb218 ]
  %"1247" = trunc i32 %"1246" to i8
  store i8 %"1247", i8* @"'__CS_ret", align 1
  %"1248" = load i8* @"'__CS_ret", align 1
  %"1249" = zext i8 %"1248" to i32
  %"1250" = icmp ne i32 %"1249", 0
  br i1 %"1250", label %main_thread_bb220, label %main_thread_bb221

main_thread_bb220:                                ; preds = %main_thread___CS_cs.exit5, %main_thread___CS_cs.exit4, %main_thread___CS_cs.exit1, %main_thread___CS_cs.exit
  ret i8* null

main_thread_bb221:                                ; preds = %main_thread___CS_cs.exit5
  %"1251" = zext i8 %t2.0 to i32
  %"1252" = icmp ne i32 %"1251", 123
  %"1253" = zext i8 %t2.0 to i32
  %"1254" = icmp sgt i32 %"1253", 3
  %or.cond.i6 = and i1 %"1252", %"1254"
  br i1 %or.cond.i6, label %main_thread_bb222, label %main_thread_bb223

main_thread_bb222:                                ; preds = %main_thread_bb221
  store i8 1, i8* @"'__CS_error", align 1
  store i8 2, i8* @"'__CS_ret", align 1
  br label %main_thread___CS_pthread_join.exit7

main_thread_bb223:                                ; preds = %main_thread_bb221
  %"1255" = zext i8 %t2.0 to i32
  %"1256" = icmp eq i32 %"1255", 123
  br i1 %"1256", label %main_thread_bb225, label %main_thread_bb224

main_thread_bb224:                                ; preds = %main_thread_bb223
  %"1257" = zext i8 %t2.0 to i64
  %"1258" = load i8* @"'__CS_round", align 1
  %"1259" = zext i8 %"1258" to i64
  %"1260" = getelementptr inbounds [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 %"1259"
  %"1261" = getelementptr inbounds [3 x i8]* %"1260", i32 0, i64 %"1257"
  %"1262" = load i8* %"1261", align 1
  %"1263" = zext i8 %"1262" to i32
  %"1264" = icmp eq i32 %"1263", 1
  br i1 %"1264", label %main_thread_bb225, label %main_thread_bb226

main_thread_bb225:                                ; preds = %main_thread_bb224, %main_thread_bb223
  store i8 1, i8* @"'__CS_ret", align 1
  br label %main_thread___CS_pthread_join.exit7

main_thread_bb226:                                ; preds = %main_thread_bb224
  %"1265" = zext i8 %t2.0 to i64
  %"1266" = load i8* @"'__CS_round", align 1
  %"1267" = zext i8 %"1266" to i64
  %"1268" = getelementptr inbounds [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 %"1267"
  %"1269" = getelementptr inbounds [3 x i8]* %"1268", i32 0, i64 %"1265"
  %"1270" = load i8* %"1269", align 1
  %"1271" = zext i8 %"1270" to i32
  %"1272" = icmp eq i32 %"1271", 0
  br i1 %"1272", label %main_thread_bb227, label %main_thread_bb228

main_thread_bb227:                                ; preds = %main_thread_bb226
  store i8 1, i8* @"'__CS_error", align 1
  store i8 2, i8* @"'__CS_ret", align 1
  br label %main_thread___CS_pthread_join.exit7

main_thread_bb228:                                ; preds = %main_thread_bb226
  %"1273" = zext i8 %t2.0 to i64
  %"1274" = load i8* @"'__CS_round", align 1
  %"1275" = zext i8 %"1274" to i64
  %"1276" = getelementptr inbounds [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 %"1275"
  %"1277" = getelementptr inbounds [3 x i8]* %"1276", i32 0, i64 %"1273"
  %"1278" = load i8* %"1277", align 1
  %"1279" = zext i8 %"1278" to i32
  %"1280" = icmp eq i32 %"1279", 2
  %"1281" = zext i1 %"1280" to i32
  call void @__VERIFIER_assume(i32 %"1281") #4
  br label %main_thread___CS_pthread_join.exit7

main_thread___CS_pthread_join.exit7:              ; preds = %main_thread_bb222, %main_thread_bb225, %main_thread_bb227, %main_thread_bb228
  %"1282" = call i8 @__kittel_nondef.1() #4
  %"1283" = load i8* @"'__CS_round", align 1
  %"1284" = zext i8 %"1283" to i32
  %"1285" = zext i8 %"1282" to i32
  %"1286" = add nsw i32 %"1284", %"1285"
  %"1287" = icmp slt i32 %"1286", 3
  %"1288" = zext i1 %"1287" to i32
  call void @__VERIFIER_assume(i32 %"1288") #4
  %"1289" = zext i8 %"1282" to i32
  %"1290" = load i8* @"'__CS_round", align 1
  %"1291" = zext i8 %"1290" to i32
  %"1292" = add nsw i32 %"1291", %"1289"
  %"1293" = trunc i32 %"1292" to i8
  store i8 %"1293", i8* @"'__CS_round", align 1
  %"1294" = call i32 (...)* @nondet_int() #4
  %"1295" = icmp ne i32 %"1294", 0
  br i1 %"1295", label %main_thread_bb229, label %main_thread_bb230

main_thread_bb229:                                ; preds = %main_thread___CS_pthread_join.exit7
  %"1296" = load i8* @"'__CS_round", align 1
  %"1297" = zext i8 %"1296" to i32
  %"1298" = icmp eq i32 %"1297", 2
  br i1 %"1298", label %main_thread___CS_cs.exit8, label %main_thread_bb230

main_thread_bb230:                                ; preds = %main_thread_bb229, %main_thread___CS_pthread_join.exit7
  %"1299" = load i8* @"'__CS_ret", align 1
  %"1300" = zext i8 %"1299" to i32
  br label %main_thread___CS_cs.exit8

main_thread___CS_cs.exit8:                        ; preds = %main_thread_bb229, %main_thread_bb230
  %"1301" = phi i32 [ %"1300", %main_thread_bb230 ], [ 1, %main_thread_bb229 ]
  %"1302" = trunc i32 %"1301" to i8
  store i8 %"1302", i8* @"'__CS_ret", align 1
  %"1303" = load i8* @"'__CS_ret", align 1
  %"1304" = zext i8 %"1303" to i32
  %"1305" = icmp ne i32 %"1304", 0
  %. = select i1 %"1305", i8* null, i8* %"1077"
  ret i8* %.
}

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb231:
  %__CS_cp___CS_thread_status = alloca [3 x [3 x i8]], align 1
  %__CS_cp___CS_thread_lockedon = alloca [3 x [3 x i8*]], align 16
  %__CS_cp_flag1 = alloca [3 x i32], align 4
  %__CS_cp_flag2 = alloca [3 x i32], align 4
  %__CS_cp_x = alloca [3 x i32], align 4
  %"1306" = getelementptr inbounds [3 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 1
  %"1307" = getelementptr inbounds [3 x i8]* %"1306", i32 0, i64 0
  %"1308" = load i8* %"1307", align 1
  %"1309" = getelementptr [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 1, i64 0
  store i8 %"1308", i8* %"1309", align 1
  %"1310" = getelementptr inbounds [3 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 2
  %"1311" = getelementptr inbounds [3 x i8]* %"1310", i32 0, i64 0
  %"1312" = load i8* %"1311", align 1
  %"1313" = getelementptr [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 2, i64 0
  store i8 %"1312", i8* %"1313", align 1
  %"1314" = getelementptr inbounds [3 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 1
  %"1315" = getelementptr inbounds [3 x i8]* %"1314", i32 0, i64 1
  %"1316" = load i8* %"1315", align 1
  %"1317" = getelementptr [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 1, i64 1
  store i8 %"1316", i8* %"1317", align 1
  %"1318" = getelementptr inbounds [3 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 2
  %"1319" = getelementptr inbounds [3 x i8]* %"1318", i32 0, i64 1
  %"1320" = load i8* %"1319", align 1
  %"1321" = getelementptr [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 2, i64 1
  store i8 %"1320", i8* %"1321", align 1
  %"1322" = getelementptr inbounds [3 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 1
  %"1323" = getelementptr inbounds [3 x i8]* %"1322", i32 0, i64 2
  %"1324" = load i8* %"1323", align 1
  %"1325" = getelementptr [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 1, i64 2
  store i8 %"1324", i8* %"1325", align 1
  %"1326" = getelementptr inbounds [3 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 2
  %"1327" = getelementptr inbounds [3 x i8]* %"1326", i32 0, i64 2
  %"1328" = load i8* %"1327", align 1
  %"1329" = getelementptr [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 2, i64 2
  store i8 %"1328", i8* %"1329", align 1
  %"1330" = getelementptr inbounds [3 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 1
  %"1331" = getelementptr inbounds [3 x i8*]* %"1330", i32 0, i64 0
  %"1332" = load i8** %"1331", align 8
  %"1333" = getelementptr [3 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 1, i64 0
  store i8* %"1332", i8** %"1333", align 8
  %"1334" = getelementptr inbounds [3 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 2
  %"1335" = getelementptr inbounds [3 x i8*]* %"1334", i32 0, i64 0
  %"1336" = load i8** %"1335", align 8
  %"1337" = getelementptr [3 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 2, i64 0
  store i8* %"1336", i8** %"1337", align 8
  %"1338" = getelementptr inbounds [3 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 1
  %"1339" = getelementptr inbounds [3 x i8*]* %"1338", i32 0, i64 1
  %"1340" = load i8** %"1339", align 8
  %"1341" = getelementptr [3 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 1, i64 1
  store i8* %"1340", i8** %"1341", align 8
  %"1342" = getelementptr inbounds [3 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 2
  %"1343" = getelementptr inbounds [3 x i8*]* %"1342", i32 0, i64 1
  %"1344" = load i8** %"1343", align 8
  %"1345" = getelementptr [3 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 2, i64 1
  store i8* %"1344", i8** %"1345", align 8
  %"1346" = getelementptr inbounds [3 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 1
  %"1347" = getelementptr inbounds [3 x i8*]* %"1346", i32 0, i64 2
  %"1348" = load i8** %"1347", align 8
  %"1349" = getelementptr [3 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 1, i64 2
  store i8* %"1348", i8** %"1349", align 8
  %"1350" = getelementptr inbounds [3 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 2
  %"1351" = getelementptr inbounds [3 x i8*]* %"1350", i32 0, i64 2
  %"1352" = load i8** %"1351", align 8
  %"1353" = getelementptr [3 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 2, i64 2
  store i8* %"1352", i8** %"1353", align 8
  %"1354" = getelementptr inbounds [3 x i32]* %__CS_cp_flag1, i32 0, i64 1
  %"1355" = load i32* %"1354", align 4
  %"1356" = getelementptr [3 x i32]* @flag1, i32 0, i64 1
  store i32 %"1355", i32* %"1356", align 4
  %"1357" = getelementptr inbounds [3 x i32]* %__CS_cp_flag1, i32 0, i64 2
  %"1358" = load i32* %"1357", align 4
  %"1359" = getelementptr [3 x i32]* @flag1, i32 0, i64 2
  store i32 %"1358", i32* %"1359", align 4
  %"1360" = getelementptr inbounds [3 x i32]* %__CS_cp_flag2, i32 0, i64 1
  %"1361" = load i32* %"1360", align 4
  %"1362" = getelementptr [3 x i32]* @flag2, i32 0, i64 1
  store i32 %"1361", i32* %"1362", align 4
  %"1363" = getelementptr inbounds [3 x i32]* %__CS_cp_flag2, i32 0, i64 2
  %"1364" = load i32* %"1363", align 4
  %"1365" = getelementptr [3 x i32]* @flag2, i32 0, i64 2
  store i32 %"1364", i32* %"1365", align 4
  %"1366" = getelementptr inbounds [3 x i32]* %__CS_cp_x, i32 0, i64 1
  %"1367" = load i32* %"1366", align 4
  %"1368" = getelementptr [3 x i32]* @x, i32 0, i64 1
  store i32 %"1367", i32* %"1368", align 4
  %"1369" = getelementptr inbounds [3 x i32]* %__CS_cp_x, i32 0, i64 2
  %"1370" = load i32* %"1369", align 4
  %"1371" = getelementptr [3 x i32]* @x, i32 0, i64 2
  store i32 %"1370", i32* %"1371", align 4
  store i8 0, i8* @"'__CS_round", align 1
  store i8 0, i8* @"'__CS_thread_index", align 1
  %"1372" = load i8* @"'__CS_round", align 1
  %"1373" = getelementptr [3 x i8]* @__CS_thread_born_round, i32 0, i64 0
  store i8 %"1372", i8* %"1373", align 1
  %"1374" = getelementptr [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 0, i64 0
  store i8 1, i8* %"1374", align 1
  %"1375" = getelementptr [3 x i8* (i8*)*]* @__CS_thread, i32 0, i64 0
  store i8* (i8*)* @main_thread, i8* (i8*)** %"1375", align 8
  %"1376" = getelementptr [3 x i8]* @__CS_thread_allocated, i32 0, i64 0
  store i8 1, i8* %"1376", align 1
  %"1377" = getelementptr [3 x i8]* @__CS_thread_allocated, i32 0, i64 0
  %"1378" = load i8* %"1377", align 1
  %"1379" = zext i8 %"1378" to i32
  %"1380" = icmp eq i32 %"1379", 1
  br i1 %"1380", label %main_bb232, label %main_bb234

main_bb232:                                       ; preds = %main_bb231
  %"1381" = getelementptr [3 x i8]* @__CS_thread_born_round, i32 0, i64 0
  %"1382" = load i8* %"1381", align 1
  store i8 %"1382", i8* @"'__CS_round", align 1
  store i8 0, i8* @"'__CS_ret", align 1
  %"1383" = getelementptr [3 x i8* (i8*)*]* @__CS_thread, i32 0, i64 0
  %"1384" = load i8* (i8*)** %"1383", align 8
  %"1385" = call i8* %"1384"(i8* null)
  %"1386" = load i8* @"'__CS_ret", align 1
  %"1387" = zext i8 %"1386" to i32
  %"1388" = icmp ne i32 %"1387", 1
  br i1 %"1388", label %main_bb233, label %main_bb234

main_bb233:                                       ; preds = %main_bb232
  %"1389" = load i8* @"'__CS_round", align 1
  %"1390" = zext i8 %"1389" to i64
  %"1391" = getelementptr inbounds [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 %"1390"
  %"1392" = getelementptr inbounds [3 x i8]* %"1391", i32 0, i64 0
  store i8 2, i8* %"1392", align 1
  br label %main_bb234

main_bb234:                                       ; preds = %main_bb232, %main_bb233, %main_bb231
  %"1393" = getelementptr [3 x i8]* @__CS_thread_allocated, i32 0, i64 1
  %"1394" = load i8* %"1393", align 1
  %"1395" = zext i8 %"1394" to i32
  %"1396" = icmp eq i32 %"1395", 1
  br i1 %"1396", label %main_bb235, label %main_bb237

main_bb235:                                       ; preds = %main_bb234
  %"1397" = getelementptr [3 x i8]* @__CS_thread_born_round, i32 0, i64 1
  %"1398" = load i8* %"1397", align 1
  store i8 %"1398", i8* @"'__CS_round", align 1
  store i8 0, i8* @"'__CS_ret", align 1
  %"1399" = getelementptr [3 x i8* (i8*)*]* @__CS_thread, i32 0, i64 1
  %"1400" = load i8* (i8*)** %"1399", align 8
  %"1401" = call i8* %"1400"(i8* null)
  %"1402" = load i8* @"'__CS_ret", align 1
  %"1403" = zext i8 %"1402" to i32
  %"1404" = icmp ne i32 %"1403", 1
  br i1 %"1404", label %main_bb236, label %main_bb237

main_bb236:                                       ; preds = %main_bb235
  %"1405" = load i8* @"'__CS_round", align 1
  %"1406" = zext i8 %"1405" to i64
  %"1407" = getelementptr inbounds [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 %"1406"
  %"1408" = getelementptr inbounds [3 x i8]* %"1407", i32 0, i64 1
  store i8 2, i8* %"1408", align 1
  br label %main_bb237

main_bb237:                                       ; preds = %main_bb235, %main_bb236, %main_bb234
  %"1409" = getelementptr [3 x i8]* @__CS_thread_allocated, i32 0, i64 2
  %"1410" = load i8* %"1409", align 1
  %"1411" = zext i8 %"1410" to i32
  %"1412" = icmp eq i32 %"1411", 1
  br i1 %"1412", label %main_bb238, label %main_bb240

main_bb238:                                       ; preds = %main_bb237
  %"1413" = getelementptr [3 x i8]* @__CS_thread_born_round, i32 0, i64 2
  %"1414" = load i8* %"1413", align 1
  store i8 %"1414", i8* @"'__CS_round", align 1
  store i8 0, i8* @"'__CS_ret", align 1
  %"1415" = getelementptr [3 x i8* (i8*)*]* @__CS_thread, i32 0, i64 2
  %"1416" = load i8* (i8*)** %"1415", align 8
  %"1417" = call i8* %"1416"(i8* null)
  %"1418" = load i8* @"'__CS_ret", align 1
  %"1419" = zext i8 %"1418" to i32
  %"1420" = icmp ne i32 %"1419", 1
  br i1 %"1420", label %main_bb239, label %main_bb240

main_bb239:                                       ; preds = %main_bb238
  %"1421" = load i8* @"'__CS_round", align 1
  %"1422" = zext i8 %"1421" to i64
  %"1423" = getelementptr inbounds [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 %"1422"
  %"1424" = getelementptr inbounds [3 x i8]* %"1423", i32 0, i64 2
  store i8 2, i8* %"1424", align 1
  br label %main_bb240

main_bb240:                                       ; preds = %main_bb238, %main_bb239, %main_bb237
  %"1425" = getelementptr [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 0, i64 0
  %"1426" = load i8* %"1425", align 1
  %"1427" = zext i8 %"1426" to i32
  %"1428" = getelementptr inbounds [3 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 1
  %"1429" = getelementptr inbounds [3 x i8]* %"1428", i32 0, i64 0
  %"1430" = load i8* %"1429", align 1
  %"1431" = zext i8 %"1430" to i32
  %"1432" = icmp eq i32 %"1427", %"1431"
  %"1433" = zext i1 %"1432" to i32
  call void @__VERIFIER_assume(i32 %"1433")
  %"1434" = getelementptr [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 1, i64 0
  %"1435" = load i8* %"1434", align 1
  %"1436" = zext i8 %"1435" to i32
  %"1437" = getelementptr inbounds [3 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 2
  %"1438" = getelementptr inbounds [3 x i8]* %"1437", i32 0, i64 0
  %"1439" = load i8* %"1438", align 1
  %"1440" = zext i8 %"1439" to i32
  %"1441" = icmp eq i32 %"1436", %"1440"
  %"1442" = zext i1 %"1441" to i32
  call void @__VERIFIER_assume(i32 %"1442")
  %"1443" = getelementptr [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 0, i64 1
  %"1444" = load i8* %"1443", align 1
  %"1445" = zext i8 %"1444" to i32
  %"1446" = getelementptr inbounds [3 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 1
  %"1447" = getelementptr inbounds [3 x i8]* %"1446", i32 0, i64 1
  %"1448" = load i8* %"1447", align 1
  %"1449" = zext i8 %"1448" to i32
  %"1450" = icmp eq i32 %"1445", %"1449"
  %"1451" = zext i1 %"1450" to i32
  call void @__VERIFIER_assume(i32 %"1451")
  %"1452" = getelementptr [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 1, i64 1
  %"1453" = load i8* %"1452", align 1
  %"1454" = zext i8 %"1453" to i32
  %"1455" = getelementptr inbounds [3 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 2
  %"1456" = getelementptr inbounds [3 x i8]* %"1455", i32 0, i64 1
  %"1457" = load i8* %"1456", align 1
  %"1458" = zext i8 %"1457" to i32
  %"1459" = icmp eq i32 %"1454", %"1458"
  %"1460" = zext i1 %"1459" to i32
  call void @__VERIFIER_assume(i32 %"1460")
  %"1461" = getelementptr [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 0, i64 2
  %"1462" = load i8* %"1461", align 1
  %"1463" = zext i8 %"1462" to i32
  %"1464" = getelementptr inbounds [3 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 1
  %"1465" = getelementptr inbounds [3 x i8]* %"1464", i32 0, i64 2
  %"1466" = load i8* %"1465", align 1
  %"1467" = zext i8 %"1466" to i32
  %"1468" = icmp eq i32 %"1463", %"1467"
  %"1469" = zext i1 %"1468" to i32
  call void @__VERIFIER_assume(i32 %"1469")
  %"1470" = getelementptr [3 x [3 x i8]]* @__CS_thread_status, i32 0, i64 1, i64 2
  %"1471" = load i8* %"1470", align 1
  %"1472" = zext i8 %"1471" to i32
  %"1473" = getelementptr inbounds [3 x [3 x i8]]* %__CS_cp___CS_thread_status, i32 0, i64 2
  %"1474" = getelementptr inbounds [3 x i8]* %"1473", i32 0, i64 2
  %"1475" = load i8* %"1474", align 1
  %"1476" = zext i8 %"1475" to i32
  %"1477" = icmp eq i32 %"1472", %"1476"
  %"1478" = zext i1 %"1477" to i32
  call void @__VERIFIER_assume(i32 %"1478")
  %"1479" = getelementptr [3 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 0, i64 0
  %"1480" = load i8** %"1479", align 8
  %"1481" = getelementptr inbounds [3 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 1
  %"1482" = getelementptr inbounds [3 x i8*]* %"1481", i32 0, i64 0
  %"1483" = load i8** %"1482", align 8
  %"1484" = icmp eq i8* %"1480", %"1483"
  %"1485" = zext i1 %"1484" to i32
  call void @__VERIFIER_assume(i32 %"1485")
  %"1486" = getelementptr [3 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 1, i64 0
  %"1487" = load i8** %"1486", align 8
  %"1488" = getelementptr inbounds [3 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 2
  %"1489" = getelementptr inbounds [3 x i8*]* %"1488", i32 0, i64 0
  %"1490" = load i8** %"1489", align 8
  %"1491" = icmp eq i8* %"1487", %"1490"
  %"1492" = zext i1 %"1491" to i32
  call void @__VERIFIER_assume(i32 %"1492")
  %"1493" = getelementptr [3 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 0, i64 1
  %"1494" = load i8** %"1493", align 8
  %"1495" = getelementptr inbounds [3 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 1
  %"1496" = getelementptr inbounds [3 x i8*]* %"1495", i32 0, i64 1
  %"1497" = load i8** %"1496", align 8
  %"1498" = icmp eq i8* %"1494", %"1497"
  %"1499" = zext i1 %"1498" to i32
  call void @__VERIFIER_assume(i32 %"1499")
  %"1500" = getelementptr [3 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 1, i64 1
  %"1501" = load i8** %"1500", align 8
  %"1502" = getelementptr inbounds [3 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 2
  %"1503" = getelementptr inbounds [3 x i8*]* %"1502", i32 0, i64 1
  %"1504" = load i8** %"1503", align 8
  %"1505" = icmp eq i8* %"1501", %"1504"
  %"1506" = zext i1 %"1505" to i32
  call void @__VERIFIER_assume(i32 %"1506")
  %"1507" = getelementptr [3 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 0, i64 2
  %"1508" = load i8** %"1507", align 8
  %"1509" = getelementptr inbounds [3 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 1
  %"1510" = getelementptr inbounds [3 x i8*]* %"1509", i32 0, i64 2
  %"1511" = load i8** %"1510", align 8
  %"1512" = icmp eq i8* %"1508", %"1511"
  %"1513" = zext i1 %"1512" to i32
  call void @__VERIFIER_assume(i32 %"1513")
  %"1514" = getelementptr [3 x [3 x i8*]]* @__CS_thread_lockedon, i32 0, i64 1, i64 2
  %"1515" = load i8** %"1514", align 8
  %"1516" = getelementptr inbounds [3 x [3 x i8*]]* %__CS_cp___CS_thread_lockedon, i32 0, i64 2
  %"1517" = getelementptr inbounds [3 x i8*]* %"1516", i32 0, i64 2
  %"1518" = load i8** %"1517", align 8
  %"1519" = icmp eq i8* %"1515", %"1518"
  %"1520" = zext i1 %"1519" to i32
  call void @__VERIFIER_assume(i32 %"1520")
  %"1521" = getelementptr [3 x i32]* @flag1, i32 0, i64 0
  %"1522" = load i32* %"1521", align 4
  %"1523" = getelementptr inbounds [3 x i32]* %__CS_cp_flag1, i32 0, i64 1
  %"1524" = load i32* %"1523", align 4
  %"1525" = icmp eq i32 %"1522", %"1524"
  %"1526" = zext i1 %"1525" to i32
  call void @__VERIFIER_assume(i32 %"1526")
  %"1527" = getelementptr [3 x i32]* @flag1, i32 0, i64 1
  %"1528" = load i32* %"1527", align 4
  %"1529" = getelementptr inbounds [3 x i32]* %__CS_cp_flag1, i32 0, i64 2
  %"1530" = load i32* %"1529", align 4
  %"1531" = icmp eq i32 %"1528", %"1530"
  %"1532" = zext i1 %"1531" to i32
  call void @__VERIFIER_assume(i32 %"1532")
  %"1533" = getelementptr [3 x i32]* @flag2, i32 0, i64 0
  %"1534" = load i32* %"1533", align 4
  %"1535" = getelementptr inbounds [3 x i32]* %__CS_cp_flag2, i32 0, i64 1
  %"1536" = load i32* %"1535", align 4
  %"1537" = icmp eq i32 %"1534", %"1536"
  %"1538" = zext i1 %"1537" to i32
  call void @__VERIFIER_assume(i32 %"1538")
  %"1539" = getelementptr [3 x i32]* @flag2, i32 0, i64 1
  %"1540" = load i32* %"1539", align 4
  %"1541" = getelementptr inbounds [3 x i32]* %__CS_cp_flag2, i32 0, i64 2
  %"1542" = load i32* %"1541", align 4
  %"1543" = icmp eq i32 %"1540", %"1542"
  %"1544" = zext i1 %"1543" to i32
  call void @__VERIFIER_assume(i32 %"1544")
  %"1545" = getelementptr [3 x i32]* @x, i32 0, i64 0
  %"1546" = load i32* %"1545", align 4
  %"1547" = getelementptr inbounds [3 x i32]* %__CS_cp_x, i32 0, i64 1
  %"1548" = load i32* %"1547", align 4
  %"1549" = icmp eq i32 %"1546", %"1548"
  %"1550" = zext i1 %"1549" to i32
  call void @__VERIFIER_assume(i32 %"1550")
  %"1551" = getelementptr [3 x i32]* @x, i32 0, i64 1
  %"1552" = load i32* %"1551", align 4
  %"1553" = getelementptr inbounds [3 x i32]* %__CS_cp_x, i32 0, i64 2
  %"1554" = load i32* %"1553", align 4
  %"1555" = icmp eq i32 %"1552", %"1554"
  %"1556" = zext i1 %"1555" to i32
  call void @__VERIFIER_assume(i32 %"1556")
  %"1557" = load i8* @"'__CS_error", align 1
  %"1558" = zext i8 %"1557" to i32
  %"1559" = icmp ne i32 %"1558", 1
  br i1 %"1559", label %main___VERIFIER_assert.exit, label %main_bb241

main___VERIFIER_assert.exit:                      ; preds = %main_bb240
  ret i32 0

main_bb241:                                       ; preds = %main_bb240
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

