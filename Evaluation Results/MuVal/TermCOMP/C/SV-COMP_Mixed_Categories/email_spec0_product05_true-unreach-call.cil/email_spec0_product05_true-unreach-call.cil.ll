; ModuleID = 'Benchmarks/TermCOMP/C/SV-COMP_Mixed_Categories/email_spec0_product05_true-unreach-call.cil/email_spec0_product05_true-unreach-call.cil.bc'
target datalayout = "e-m:e-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.__ACC__ERR = type { i8*, %struct.__ACC__ERR* }
%struct.__UTAC__EXCEPTION = type { i8*, i64, i32, %struct.__UTAC__CFLOW_FUNC* }
%struct.__UTAC__CFLOW_FUNC = type { i32 (i32, i32)*, i32, %struct.__UTAC__CFLOW_FUNC* }
%struct.JoinPoint = type { i8** (%struct.JoinPoint*)*, i8**, i32, i8**, {}*, i8* (i32, %struct.JoinPoint*)*, i8**, i8*, i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [44 x i8] c"Please enter a subject and a message body.\0A\00", align 1
@"'bob" = common global i32 0, align 4
@"'rjh" = common global i32 0, align 4
@.str1 = private unnamed_addr constant [9 x i8] c"bob: %d\0A\00", align 1
@.str2 = private unnamed_addr constant [9 x i8] c"rjh: %d\0A\00", align 1
@"'chuck" = common global i32 0, align 4
@.str3 = private unnamed_addr constant [11 x i8] c"chuck: %d\0A\00", align 1
@"'__ste_Email_counter" = global i32 0, align 4
@"'__ste_email_id0" = global i32 0, align 4
@"'__ste_email_id1" = global i32 0, align 4
@"'__ste_email_from0" = global i32 0, align 4
@"'__ste_email_from1" = global i32 0, align 4
@"'__ste_email_to0" = global i32 0, align 4
@"'__ste_email_to1" = global i32 0, align 4
@__ste_email_subject0 = common global i8* null, align 8
@__ste_email_subject1 = common global i8* null, align 8
@__ste_email_body0 = global i8* null, align 8
@__ste_email_body1 = global i8* null, align 8
@"'__ste_email_isEncrypted0" = global i32 0, align 4
@"'__ste_email_isEncrypted1" = global i32 0, align 4
@"'__ste_email_encryptionKey0" = global i32 0, align 4
@"'__ste_email_encryptionKey1" = global i32 0, align 4
@"'__ste_email_isSigned0" = global i32 0, align 4
@"'__ste_email_isSigned1" = global i32 0, align 4
@"'__ste_email_signKey0" = global i32 0, align 4
@"'__ste_email_signKey1" = global i32 0, align 4
@"'__ste_email_isSignatureVerified0" = common global i32 0, align 4
@"'__ste_email_isSignatureVerified1" = common global i32 0, align 4
@head = internal global %struct.__ACC__ERR* null, align 8
@.str4 = private unnamed_addr constant [30 x i8] c"i > 0 && i <= this->argsCount\00", align 1
@.str5 = private unnamed_addr constant [9 x i8] c"libacc.c\00", align 1
@.str6 = private unnamed_addr constant [21 x i8] c"__utac__get_this_arg\00", align 1
@.str7 = private unnamed_addr constant [25 x i8] c"__utac__get_this_argtype\00", align 1
@"'__ste_Client_counter" = global i32 0, align 4
@__ste_client_name0 = global i8* null, align 8
@__ste_client_name1 = global i8* null, align 8
@__ste_client_name2 = global i8* null, align 8
@"'__ste_client_outbuffer0" = global i32 0, align 4
@"'__ste_client_outbuffer1" = global i32 0, align 4
@"'__ste_client_outbuffer2" = global i32 0, align 4
@"'__ste_client_outbuffer3" = global i32 0, align 4
@"'__ste_ClientAddressBook_size0" = global i32 0, align 4
@"'__ste_ClientAddressBook_size1" = global i32 0, align 4
@"'__ste_ClientAddressBook_size2" = global i32 0, align 4
@"'__ste_Client_AddressBook0_Alias0" = global i32 0, align 4
@"'__ste_Client_AddressBook0_Alias1" = global i32 0, align 4
@"'__ste_Client_AddressBook0_Alias2" = global i32 0, align 4
@"'__ste_Client_AddressBook1_Alias0" = global i32 0, align 4
@"'__ste_Client_AddressBook1_Alias1" = global i32 0, align 4
@"'__ste_Client_AddressBook1_Alias2" = global i32 0, align 4
@"'__ste_Client_AddressBook2_Alias0" = global i32 0, align 4
@"'__ste_Client_AddressBook2_Alias1" = global i32 0, align 4
@"'__ste_Client_AddressBook2_Alias2" = global i32 0, align 4
@"'__ste_Client_AddressBook0_Address0" = global i32 0, align 4
@"'__ste_Client_AddressBook0_Address1" = global i32 0, align 4
@"'__ste_Client_AddressBook0_Address2" = global i32 0, align 4
@"'__ste_Client_AddressBook1_Address0" = global i32 0, align 4
@"'__ste_Client_AddressBook1_Address1" = global i32 0, align 4
@"'__ste_Client_AddressBook1_Address2" = global i32 0, align 4
@"'__ste_Client_AddressBook2_Address0" = global i32 0, align 4
@"'__ste_Client_AddressBook2_Address1" = global i32 0, align 4
@"'__ste_Client_AddressBook2_Address2" = global i32 0, align 4
@"'__ste_client_autoResponse0" = global i32 0, align 4
@"'__ste_client_autoResponse1" = global i32 0, align 4
@"'__ste_client_autoResponse2" = global i32 0, align 4
@"'__ste_client_privateKey0" = global i32 0, align 4
@"'__ste_client_privateKey1" = global i32 0, align 4
@"'__ste_client_privateKey2" = global i32 0, align 4
@"'__ste_ClientKeyring_size0" = global i32 0, align 4
@"'__ste_ClientKeyring_size1" = global i32 0, align 4
@"'__ste_ClientKeyring_size2" = global i32 0, align 4
@"'__ste_Client_Keyring0_User0" = global i32 0, align 4
@"'__ste_Client_Keyring0_User1" = global i32 0, align 4
@"'__ste_Client_Keyring0_User2" = global i32 0, align 4
@"'__ste_Client_Keyring1_User0" = global i32 0, align 4
@"'__ste_Client_Keyring1_User1" = global i32 0, align 4
@"'__ste_Client_Keyring1_User2" = global i32 0, align 4
@"'__ste_Client_Keyring2_User0" = global i32 0, align 4
@"'__ste_Client_Keyring2_User1" = global i32 0, align 4
@"'__ste_Client_Keyring2_User2" = global i32 0, align 4
@"'__ste_Client_Keyring0_PublicKey0" = global i32 0, align 4
@"'__ste_Client_Keyring0_PublicKey1" = global i32 0, align 4
@"'__ste_Client_Keyring0_PublicKey2" = global i32 0, align 4
@"'__ste_Client_Keyring1_PublicKey0" = global i32 0, align 4
@"'__ste_Client_Keyring1_PublicKey1" = global i32 0, align 4
@"'__ste_Client_Keyring1_PublicKey2" = global i32 0, align 4
@"'__ste_Client_Keyring2_PublicKey0" = global i32 0, align 4
@"'__ste_Client_Keyring2_PublicKey1" = global i32 0, align 4
@"'__ste_Client_Keyring2_PublicKey2" = global i32 0, align 4
@"'__ste_client_forwardReceiver0" = global i32 0, align 4
@"'__ste_client_forwardReceiver1" = global i32 0, align 4
@"'__ste_client_forwardReceiver2" = global i32 0, align 4
@"'__ste_client_forwardReceiver3" = global i32 0, align 4
@"'__ste_client_idCounter0" = global i32 0, align 4
@"'__ste_client_idCounter1" = global i32 0, align 4
@"'__ste_client_idCounter2" = global i32 0, align 4
@"'queue_empty" = global i32 1, align 4
@.str8 = private unnamed_addr constant [10 x i8] c"mail sent\00", align 1
@.str9 = private unnamed_addr constant [16 x i8] c"mail delivered\0A\00", align 1
@"'queued_message" = common global i32 0, align 4
@"'queued_client" = common global i32 0, align 4
@.str10 = private unnamed_addr constant [21 x i8] c"Forwarding message.\0A\00", align 1
@.str11 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str12 = private unnamed_addr constant [10 x i8] c"ID:\0A  %i\0A\00", align 1
@.str13 = private unnamed_addr constant [12 x i8] c"FROM:\0A  %i\0A\00", align 1
@.str14 = private unnamed_addr constant [10 x i8] c"TO:\0A  %i\0A\00", align 1
@.str15 = private unnamed_addr constant [18 x i8] c"IS_READABLE\0A  %i\0A\00", align 1
@"'__SELECTED_FEATURE_Base" = common global i32 0, align 4
@"'__SELECTED_FEATURE_Keys" = common global i32 0, align 4
@"'__SELECTED_FEATURE_Encrypt" = common global i32 0, align 4
@"'__SELECTED_FEATURE_AutoResponder" = common global i32 0, align 4
@"'__SELECTED_FEATURE_AddressBook" = common global i32 0, align 4
@"'__SELECTED_FEATURE_Sign" = common global i32 0, align 4
@"'__SELECTED_FEATURE_Forward" = common global i32 0, align 4
@"'__SELECTED_FEATURE_Verify" = common global i32 0, align 4
@"'__SELECTED_FEATURE_Decrypt" = common global i32 0, align 4
@"'__GUIDSL_ROOT_PRODUCTION" = common global i32 0, align 4
@"'__GUIDSL_NON_TERMINAL_main" = common global i32 0, align 4

; Function Attrs: nounwind uwtable
define void @setup_bob(i32 %bob___0) #0 {
setup_bob_bb0:
  %Pivot4.i = icmp slt i32 %bob___0, 2
  br i1 %Pivot4.i, label %setup_bob_LeafBlock.i, label %setup_bob_NodeBlock.i

setup_bob_LeafBlock.i:                            ; preds = %setup_bob_bb0
  %SwitchLeaf.i = icmp eq i32 %bob___0, 1
  br i1 %SwitchLeaf.i, label %setup_bob_bb1, label %setup_bob_setClientId.exit

setup_bob_bb1:                                    ; preds = %setup_bob_LeafBlock.i
  store i32 %bob___0, i32* @"'__ste_client_idCounter0", align 4
  br label %setup_bob_setClientId.exit

setup_bob_NodeBlock.i:                            ; preds = %setup_bob_bb0
  %Pivot.i = icmp slt i32 %bob___0, 3
  br i1 %Pivot.i, label %setup_bob_bb2, label %setup_bob_LeafBlock1.i

setup_bob_bb2:                                    ; preds = %setup_bob_NodeBlock.i
  store i32 %bob___0, i32* @"'__ste_client_idCounter1", align 4
  br label %setup_bob_setClientId.exit

setup_bob_LeafBlock1.i:                           ; preds = %setup_bob_NodeBlock.i
  %SwitchLeaf2.i = icmp eq i32 %bob___0, 3
  br i1 %SwitchLeaf2.i, label %setup_bob_bb3, label %setup_bob_setClientId.exit

setup_bob_bb3:                                    ; preds = %setup_bob_LeafBlock1.i
  store i32 %bob___0, i32* @"'__ste_client_idCounter2", align 4
  br label %setup_bob_setClientId.exit

setup_bob_setClientId.exit:                       ; preds = %setup_bob_LeafBlock.i, %setup_bob_LeafBlock1.i, %setup_bob_bb1, %setup_bob_bb2, %setup_bob_bb3
  ret void
}

; Function Attrs: nounwind uwtable
define void @setClientId(i32 %handle, i32 %value) #0 {
setClientId_bb4:
  br label %setClientId_NodeBlock3

setClientId_NodeBlock3:                           ; preds = %setClientId_bb4
  %Pivot4 = icmp slt i32 %handle, 2
  br i1 %Pivot4, label %setClientId_LeafBlock, label %setClientId_NodeBlock

setClientId_LeafBlock:                            ; preds = %setClientId_NodeBlock3
  %SwitchLeaf = icmp eq i32 %handle, 1
  br i1 %SwitchLeaf, label %setClientId_bb5, label %setClientId_NewDefault

setClientId_bb5:                                  ; preds = %setClientId_LeafBlock
  store i32 %value, i32* @"'__ste_client_idCounter0", align 4
  br label %setClientId_bb8

setClientId_NodeBlock:                            ; preds = %setClientId_NodeBlock3
  %Pivot = icmp slt i32 %handle, 3
  br i1 %Pivot, label %setClientId_bb6, label %setClientId_LeafBlock1

setClientId_bb6:                                  ; preds = %setClientId_NodeBlock
  store i32 %value, i32* @"'__ste_client_idCounter1", align 4
  br label %setClientId_bb8

setClientId_LeafBlock1:                           ; preds = %setClientId_NodeBlock
  %SwitchLeaf2 = icmp eq i32 %handle, 3
  br i1 %SwitchLeaf2, label %setClientId_bb7, label %setClientId_NewDefault

setClientId_bb7:                                  ; preds = %setClientId_LeafBlock1
  store i32 %value, i32* @"'__ste_client_idCounter2", align 4
  br label %setClientId_bb8

setClientId_NewDefault:                           ; preds = %setClientId_LeafBlock1, %setClientId_LeafBlock
  br label %setClientId_bb8

setClientId_bb8:                                  ; preds = %setClientId_NewDefault, %setClientId_bb6, %setClientId_bb7, %setClientId_bb5
  ret void
}

; Function Attrs: nounwind uwtable
define void @setup_rjh(i32 %rjh___0) #0 {
setup_rjh_bb9:
  %Pivot4.i = icmp slt i32 %rjh___0, 2
  br i1 %Pivot4.i, label %setup_rjh_LeafBlock.i, label %setup_rjh_NodeBlock.i

setup_rjh_LeafBlock.i:                            ; preds = %setup_rjh_bb9
  %SwitchLeaf.i = icmp eq i32 %rjh___0, 1
  br i1 %SwitchLeaf.i, label %setup_rjh_bb10, label %setup_rjh_setClientId.exit

setup_rjh_bb10:                                   ; preds = %setup_rjh_LeafBlock.i
  store i32 %rjh___0, i32* @"'__ste_client_idCounter0", align 4
  br label %setup_rjh_setClientId.exit

setup_rjh_NodeBlock.i:                            ; preds = %setup_rjh_bb9
  %Pivot.i = icmp slt i32 %rjh___0, 3
  br i1 %Pivot.i, label %setup_rjh_bb11, label %setup_rjh_LeafBlock1.i

setup_rjh_bb11:                                   ; preds = %setup_rjh_NodeBlock.i
  store i32 %rjh___0, i32* @"'__ste_client_idCounter1", align 4
  br label %setup_rjh_setClientId.exit

setup_rjh_LeafBlock1.i:                           ; preds = %setup_rjh_NodeBlock.i
  %SwitchLeaf2.i = icmp eq i32 %rjh___0, 3
  br i1 %SwitchLeaf2.i, label %setup_rjh_bb12, label %setup_rjh_setClientId.exit

setup_rjh_bb12:                                   ; preds = %setup_rjh_LeafBlock1.i
  store i32 %rjh___0, i32* @"'__ste_client_idCounter2", align 4
  br label %setup_rjh_setClientId.exit

setup_rjh_setClientId.exit:                       ; preds = %setup_rjh_LeafBlock.i, %setup_rjh_LeafBlock1.i, %setup_rjh_bb10, %setup_rjh_bb11, %setup_rjh_bb12
  ret void
}

; Function Attrs: nounwind uwtable
define void @setup_chuck(i32 %chuck___0) #0 {
setup_chuck_bb13:
  %Pivot4.i = icmp slt i32 %chuck___0, 2
  br i1 %Pivot4.i, label %setup_chuck_LeafBlock.i, label %setup_chuck_NodeBlock.i

setup_chuck_LeafBlock.i:                          ; preds = %setup_chuck_bb13
  %SwitchLeaf.i = icmp eq i32 %chuck___0, 1
  br i1 %SwitchLeaf.i, label %setup_chuck_bb14, label %setup_chuck_setClientId.exit

setup_chuck_bb14:                                 ; preds = %setup_chuck_LeafBlock.i
  store i32 %chuck___0, i32* @"'__ste_client_idCounter0", align 4
  br label %setup_chuck_setClientId.exit

setup_chuck_NodeBlock.i:                          ; preds = %setup_chuck_bb13
  %Pivot.i = icmp slt i32 %chuck___0, 3
  br i1 %Pivot.i, label %setup_chuck_bb15, label %setup_chuck_LeafBlock1.i

setup_chuck_bb15:                                 ; preds = %setup_chuck_NodeBlock.i
  store i32 %chuck___0, i32* @"'__ste_client_idCounter1", align 4
  br label %setup_chuck_setClientId.exit

setup_chuck_LeafBlock1.i:                         ; preds = %setup_chuck_NodeBlock.i
  %SwitchLeaf2.i = icmp eq i32 %chuck___0, 3
  br i1 %SwitchLeaf2.i, label %setup_chuck_bb16, label %setup_chuck_setClientId.exit

setup_chuck_bb16:                                 ; preds = %setup_chuck_LeafBlock1.i
  store i32 %chuck___0, i32* @"'__ste_client_idCounter2", align 4
  br label %setup_chuck_setClientId.exit

setup_chuck_setClientId.exit:                     ; preds = %setup_chuck_LeafBlock.i, %setup_chuck_LeafBlock1.i, %setup_chuck_bb14, %setup_chuck_bb15, %setup_chuck_bb16
  ret void
}

; Function Attrs: nounwind uwtable
define void @bobToRjh() #0 {
bobToRjh_bb17:
  %"0" = getelementptr [44 x i8]* @.str, i32 0, i32 0
  %"1" = call i32 @puts(i8* %"0")
  %"2" = load i32* @"'bob", align 4
  %"3" = load i32* @"'rjh", align 4
  store i32 0, i32* @"'__ste_email_from0", align 4
  store i32 %"3", i32* @"'__ste_email_to0", align 4
  %Pivot4.i.i.i = icmp slt i32 %"2", 2
  br i1 %Pivot4.i.i.i, label %bobToRjh_LeafBlock.i.i.i, label %bobToRjh_NodeBlock.i.i.i

bobToRjh_LeafBlock.i.i.i:                         ; preds = %bobToRjh_bb17
  %SwitchLeaf.i.i.i = icmp eq i32 %"2", 1
  %"4" = load i32* @"'__ste_client_idCounter0", align 4
  %..i.i = select i1 %SwitchLeaf.i.i.i, i32 %"4", i32 0
  br label %bobToRjh_getClientId.exit.i.i

bobToRjh_NodeBlock.i.i.i:                         ; preds = %bobToRjh_bb17
  %Pivot.i.i.i = icmp slt i32 %"2", 3
  br i1 %Pivot.i.i.i, label %bobToRjh_bb18, label %bobToRjh_LeafBlock1.i.i.i

bobToRjh_bb18:                                    ; preds = %bobToRjh_NodeBlock.i.i.i
  %"5" = load i32* @"'__ste_client_idCounter1", align 4
  br label %bobToRjh_getClientId.exit.i.i

bobToRjh_LeafBlock1.i.i.i:                        ; preds = %bobToRjh_NodeBlock.i.i.i
  %SwitchLeaf2.i.i.i = icmp eq i32 %"2", 3
  %"6" = load i32* @"'__ste_client_idCounter2", align 4
  %.8.i.i = select i1 %SwitchLeaf2.i.i.i, i32 %"6", i32 0
  br label %bobToRjh_getClientId.exit.i.i

bobToRjh_getClientId.exit.i.i:                    ; preds = %bobToRjh_LeafBlock1.i.i.i, %bobToRjh_bb18, %bobToRjh_LeafBlock.i.i.i
  %.0.i.i.i = phi i32 [ %"5", %bobToRjh_bb18 ], [ %..i.i, %bobToRjh_LeafBlock.i.i.i ], [ %.8.i.i, %bobToRjh_LeafBlock1.i.i.i ]
  store i32 %.0.i.i.i, i32* @"'__ste_email_from0", align 4
  %"7" = getelementptr [10 x i8]* @.str8, i32 0, i32 0
  %"8" = call i32 @puts(i8* %"7") #5
  %"9" = load i32* @"'__ste_email_to0", align 4
  %"10" = getelementptr [16 x i8]* @.str9, i32 0, i32 0
  %"11" = call i32 @puts(i8* %"10") #5
  %Pivot4.i.i.i.i.i = icmp slt i32 %"9", 2
  br i1 %Pivot4.i.i.i.i.i, label %bobToRjh_LeafBlock.i.i.i.i.i, label %bobToRjh_NodeBlock.i.i.i.i.i

bobToRjh_LeafBlock.i.i.i.i.i:                     ; preds = %bobToRjh_getClientId.exit.i.i
  %SwitchLeaf.i.i.i.i.i = icmp eq i32 %"9", 1
  %"12" = load i32* @"'__ste_client_forwardReceiver0", align 4
  %..i.i.i.i = select i1 %SwitchLeaf.i.i.i.i.i, i32 %"12", i32 0
  br label %bobToRjh_getClientForwardReceiver.exit.i.i.i.i

bobToRjh_NodeBlock.i.i.i.i.i:                     ; preds = %bobToRjh_getClientId.exit.i.i
  %Pivot.i.i.i.i.i = icmp slt i32 %"9", 3
  br i1 %Pivot.i.i.i.i.i, label %bobToRjh_bb19, label %bobToRjh_LeafBlock1.i.i.i.i.i

bobToRjh_bb19:                                    ; preds = %bobToRjh_NodeBlock.i.i.i.i.i
  %"13" = load i32* @"'__ste_client_forwardReceiver1", align 4
  br label %bobToRjh_getClientForwardReceiver.exit.i.i.i.i

bobToRjh_LeafBlock1.i.i.i.i.i:                    ; preds = %bobToRjh_NodeBlock.i.i.i.i.i
  %SwitchLeaf2.i.i.i.i.i = icmp eq i32 %"9", 3
  %"14" = load i32* @"'__ste_client_forwardReceiver2", align 4
  %.8.i.i.i.i = select i1 %SwitchLeaf2.i.i.i.i.i, i32 %"14", i32 0
  br label %bobToRjh_getClientForwardReceiver.exit.i.i.i.i

bobToRjh_getClientForwardReceiver.exit.i.i.i.i:   ; preds = %bobToRjh_LeafBlock1.i.i.i.i.i, %bobToRjh_bb19, %bobToRjh_LeafBlock.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %"13", %bobToRjh_bb19 ], [ %..i.i.i.i, %bobToRjh_LeafBlock.i.i.i.i.i ], [ %.8.i.i.i.i, %bobToRjh_LeafBlock1.i.i.i.i.i ]
  %"15" = icmp ne i32 %.0.i.i.i.i.i, 0
  br i1 %"15", label %bobToRjh_bb20, label %bobToRjh_sendEmail.exit

bobToRjh_bb20:                                    ; preds = %bobToRjh_getClientForwardReceiver.exit.i.i.i.i
  store i32 %.0.i.i.i.i.i, i32* @"'__ste_email_to0", align 4
  call void @__utac_acc__DecryptForward_spec__1(i32 1) #5
  %"16" = getelementptr [21 x i8]* @.str10, i32 0, i32 0
  %"17" = call i32 @puts(i8* %"16") #5
  %"18" = load i32* @"'__ste_email_id0", align 4
  %"19" = getelementptr [10 x i8]* @.str12, i32 0, i32 0
  %"20" = call i32 (i8*, ...)* @printf(i8* %"19", i32 %"18") #5
  %"21" = load i32* @"'__ste_email_from0", align 4
  %"22" = getelementptr [12 x i8]* @.str13, i32 0, i32 0
  %"23" = call i32 (i8*, ...)* @printf(i8* %"22", i32 %"21") #5
  %"24" = load i32* @"'__ste_email_to0", align 4
  %"25" = getelementptr [10 x i8]* @.str14, i32 0, i32 0
  %"26" = call i32 (i8*, ...)* @printf(i8* %"25", i32 %"24") #5
  %"27" = getelementptr [18 x i8]* @.str15, i32 0, i32 0
  %"28" = call i32 (i8*, ...)* @printf(i8* %"27", i32 1) #5
  store i32 0, i32* @"'queue_empty", align 4
  store i32 1, i32* @"'queued_message", align 4
  store i32 %"9", i32* @"'queued_client", align 4
  br label %bobToRjh_sendEmail.exit

bobToRjh_sendEmail.exit:                          ; preds = %bobToRjh_getClientForwardReceiver.exit.i.i.i.i, %bobToRjh_bb20
  %"29" = load i32* @"'queue_empty", align 4
  %"30" = icmp ne i32 %"29", 0
  br i1 %"30", label %bobToRjh_outgoing.exit, label %bobToRjh_bb21

bobToRjh_bb21:                                    ; preds = %bobToRjh_sendEmail.exit
  %"31" = load i32* @"'queued_message", align 4
  %"32" = load i32* @"'queued_client", align 4
  %Pivot4.i.i = icmp slt i32 %"32", 2
  br i1 %Pivot4.i.i, label %bobToRjh_LeafBlock.i.i, label %bobToRjh_NodeBlock.i.i

bobToRjh_LeafBlock.i.i:                           ; preds = %bobToRjh_bb21
  %SwitchLeaf.i.i = icmp eq i32 %"32", 1
  %"33" = load i32* @"'__ste_client_idCounter0", align 4
  %..i = select i1 %SwitchLeaf.i.i, i32 %"33", i32 0
  br label %bobToRjh_getClientId.exit.i

bobToRjh_NodeBlock.i.i:                           ; preds = %bobToRjh_bb21
  %Pivot.i.i = icmp slt i32 %"32", 3
  br i1 %Pivot.i.i, label %bobToRjh_bb22, label %bobToRjh_LeafBlock1.i.i

bobToRjh_bb22:                                    ; preds = %bobToRjh_NodeBlock.i.i
  %"34" = load i32* @"'__ste_client_idCounter1", align 4
  br label %bobToRjh_getClientId.exit.i

bobToRjh_LeafBlock1.i.i:                          ; preds = %bobToRjh_NodeBlock.i.i
  %SwitchLeaf2.i.i = icmp eq i32 %"32", 3
  %"35" = load i32* @"'__ste_client_idCounter2", align 4
  %.8.i = select i1 %SwitchLeaf2.i.i, i32 %"35", i32 0
  br label %bobToRjh_getClientId.exit.i

bobToRjh_getClientId.exit.i:                      ; preds = %bobToRjh_LeafBlock1.i.i, %bobToRjh_bb22, %bobToRjh_LeafBlock.i.i
  %.0.i.i = phi i32 [ %"34", %bobToRjh_bb22 ], [ %..i, %bobToRjh_LeafBlock.i.i ], [ %.8.i, %bobToRjh_LeafBlock1.i.i ]
  %Pivot.i1.i = icmp slt i32 %"31", 2
  br i1 %Pivot.i1.i, label %bobToRjh_LeafBlock.i4.i, label %bobToRjh_LeafBlock1.i6.i

bobToRjh_LeafBlock.i4.i:                          ; preds = %bobToRjh_getClientId.exit.i
  %SwitchLeaf.i3.i = icmp eq i32 %"31", 1
  br i1 %SwitchLeaf.i3.i, label %bobToRjh_bb23, label %bobToRjh_setEmailFrom.exit.i

bobToRjh_bb23:                                    ; preds = %bobToRjh_LeafBlock.i4.i
  store i32 %.0.i.i, i32* @"'__ste_email_from0", align 4
  br label %bobToRjh_setEmailFrom.exit.i

bobToRjh_LeafBlock1.i6.i:                         ; preds = %bobToRjh_getClientId.exit.i
  %SwitchLeaf2.i5.i = icmp eq i32 %"31", 2
  br i1 %SwitchLeaf2.i5.i, label %bobToRjh_bb24, label %bobToRjh_setEmailFrom.exit.i

bobToRjh_bb24:                                    ; preds = %bobToRjh_LeafBlock1.i6.i
  store i32 %.0.i.i, i32* @"'__ste_email_from1", align 4
  br label %bobToRjh_setEmailFrom.exit.i

bobToRjh_setEmailFrom.exit.i:                     ; preds = %bobToRjh_bb24, %bobToRjh_LeafBlock1.i6.i, %bobToRjh_bb23, %bobToRjh_LeafBlock.i4.i
  %"36" = getelementptr [10 x i8]* @.str8, i32 0, i32 0
  %"37" = call i32 @puts(i8* %"36") #5
  %Pivot.i.i.i1 = icmp slt i32 %"31", 2
  br i1 %Pivot.i.i.i1, label %bobToRjh_LeafBlock.i.i.i4, label %bobToRjh_LeafBlock1.i.i.i6

bobToRjh_LeafBlock.i.i.i4:                        ; preds = %bobToRjh_setEmailFrom.exit.i
  %SwitchLeaf.i.i.i2 = icmp eq i32 %"31", 1
  %"38" = load i32* @"'__ste_email_to0", align 4
  %..i.i3 = select i1 %SwitchLeaf.i.i.i2, i32 %"38", i32 0
  br label %bobToRjh_getEmailTo.exit.i.i

bobToRjh_LeafBlock1.i.i.i6:                       ; preds = %bobToRjh_setEmailFrom.exit.i
  %SwitchLeaf2.i.i.i5 = icmp eq i32 %"31", 2
  %"39" = load i32* @"'__ste_email_to1", align 4
  %.1.i.i = select i1 %SwitchLeaf2.i.i.i5, i32 %"39", i32 0
  br label %bobToRjh_getEmailTo.exit.i.i

bobToRjh_getEmailTo.exit.i.i:                     ; preds = %bobToRjh_LeafBlock1.i.i.i6, %bobToRjh_LeafBlock.i.i.i4
  %.0.i.i.i7 = phi i32 [ %..i.i3, %bobToRjh_LeafBlock.i.i.i4 ], [ %.1.i.i, %bobToRjh_LeafBlock1.i.i.i6 ]
  %"40" = getelementptr [16 x i8]* @.str9, i32 0, i32 0
  %"41" = call i32 @puts(i8* %"40") #5
  %Pivot4.i.i.i.i = icmp slt i32 %.0.i.i.i7, 2
  br i1 %Pivot4.i.i.i.i, label %bobToRjh_LeafBlock.i.i.i.i, label %bobToRjh_NodeBlock.i.i.i.i

bobToRjh_LeafBlock.i.i.i.i:                       ; preds = %bobToRjh_getEmailTo.exit.i.i
  %SwitchLeaf.i.i.i.i = icmp eq i32 %.0.i.i.i7, 1
  %"42" = load i32* @"'__ste_client_forwardReceiver0", align 4
  %..i.i.i = select i1 %SwitchLeaf.i.i.i.i, i32 %"42", i32 0
  br label %bobToRjh_getClientForwardReceiver.exit.i.i.i

bobToRjh_NodeBlock.i.i.i.i:                       ; preds = %bobToRjh_getEmailTo.exit.i.i
  %Pivot.i.i.i.i = icmp slt i32 %.0.i.i.i7, 3
  br i1 %Pivot.i.i.i.i, label %bobToRjh_bb25, label %bobToRjh_LeafBlock1.i.i.i.i

bobToRjh_bb25:                                    ; preds = %bobToRjh_NodeBlock.i.i.i.i
  %"43" = load i32* @"'__ste_client_forwardReceiver1", align 4
  br label %bobToRjh_getClientForwardReceiver.exit.i.i.i

bobToRjh_LeafBlock1.i.i.i.i:                      ; preds = %bobToRjh_NodeBlock.i.i.i.i
  %SwitchLeaf2.i.i.i.i = icmp eq i32 %.0.i.i.i7, 3
  %"44" = load i32* @"'__ste_client_forwardReceiver2", align 4
  %.8.i.i.i = select i1 %SwitchLeaf2.i.i.i.i, i32 %"44", i32 0
  br label %bobToRjh_getClientForwardReceiver.exit.i.i.i

bobToRjh_getClientForwardReceiver.exit.i.i.i:     ; preds = %bobToRjh_LeafBlock1.i.i.i.i, %bobToRjh_bb25, %bobToRjh_LeafBlock.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %"43", %bobToRjh_bb25 ], [ %..i.i.i, %bobToRjh_LeafBlock.i.i.i.i ], [ %.8.i.i.i, %bobToRjh_LeafBlock1.i.i.i.i ]
  %"45" = icmp ne i32 %.0.i.i.i.i, 0
  br i1 %"45", label %bobToRjh_bb26, label %bobToRjh_outgoing.exit

bobToRjh_bb26:                                    ; preds = %bobToRjh_getClientForwardReceiver.exit.i.i.i
  %Pivot.i1.i.i.i = icmp slt i32 %"31", 2
  br i1 %Pivot.i1.i.i.i, label %bobToRjh_LeafBlock.i4.i.i.i, label %bobToRjh_LeafBlock1.i6.i.i.i

bobToRjh_LeafBlock.i4.i.i.i:                      ; preds = %bobToRjh_bb26
  %SwitchLeaf.i3.i.i.i = icmp eq i32 %"31", 1
  br i1 %SwitchLeaf.i3.i.i.i, label %bobToRjh_bb27, label %bobToRjh_setEmailTo.exit.i.i.i

bobToRjh_bb27:                                    ; preds = %bobToRjh_LeafBlock.i4.i.i.i
  store i32 %.0.i.i.i.i, i32* @"'__ste_email_to0", align 4
  br label %bobToRjh_setEmailTo.exit.i.i.i

bobToRjh_LeafBlock1.i6.i.i.i:                     ; preds = %bobToRjh_bb26
  %SwitchLeaf2.i5.i.i.i = icmp eq i32 %"31", 2
  br i1 %SwitchLeaf2.i5.i.i.i, label %bobToRjh_bb28, label %bobToRjh_setEmailTo.exit.i.i.i

bobToRjh_bb28:                                    ; preds = %bobToRjh_LeafBlock1.i6.i.i.i
  store i32 %.0.i.i.i.i, i32* @"'__ste_email_to1", align 4
  br label %bobToRjh_setEmailTo.exit.i.i.i

bobToRjh_setEmailTo.exit.i.i.i:                   ; preds = %bobToRjh_bb28, %bobToRjh_LeafBlock1.i6.i.i.i, %bobToRjh_bb27, %bobToRjh_LeafBlock.i4.i.i.i
  call void @__utac_acc__DecryptForward_spec__1(i32 %"31") #5
  %"46" = getelementptr [21 x i8]* @.str10, i32 0, i32 0
  %"47" = call i32 @puts(i8* %"46") #5
  %Pivot.i.i.i.i.i.i = icmp slt i32 %"31", 2
  br i1 %Pivot.i.i.i.i.i.i, label %bobToRjh_LeafBlock.i.i.i.i.i.i, label %bobToRjh_LeafBlock1.i.i.i.i.i.i

bobToRjh_LeafBlock.i.i.i.i.i.i:                   ; preds = %bobToRjh_setEmailTo.exit.i.i.i
  %SwitchLeaf.i.i.i.i.i.i = icmp eq i32 %"31", 1
  %"48" = load i32* @"'__ste_email_id0", align 4
  %..i.i.i.i.i = select i1 %SwitchLeaf.i.i.i.i.i.i, i32 %"48", i32 0
  br label %bobToRjh_getEmailId.exit.i.i.i.i.i

bobToRjh_LeafBlock1.i.i.i.i.i.i:                  ; preds = %bobToRjh_setEmailTo.exit.i.i.i
  %SwitchLeaf2.i.i.i.i.i.i = icmp eq i32 %"31", 2
  %"49" = load i32* @"'__ste_email_id1", align 4
  %.15.i.i.i.i.i = select i1 %SwitchLeaf2.i.i.i.i.i.i, i32 %"49", i32 0
  br label %bobToRjh_getEmailId.exit.i.i.i.i.i

bobToRjh_getEmailId.exit.i.i.i.i.i:               ; preds = %bobToRjh_LeafBlock1.i.i.i.i.i.i, %bobToRjh_LeafBlock.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %..i.i.i.i.i, %bobToRjh_LeafBlock.i.i.i.i.i.i ], [ %.15.i.i.i.i.i, %bobToRjh_LeafBlock1.i.i.i.i.i.i ]
  %"50" = getelementptr [10 x i8]* @.str12, i32 0, i32 0
  %"51" = call i32 (i8*, ...)* @printf(i8* %"50", i32 %.0.i.i.i.i.i.i) #5
  %Pivot.i8.i.i.i.i.i = icmp slt i32 %"31", 2
  br i1 %Pivot.i8.i.i.i.i.i, label %bobToRjh_LeafBlock.i10.i.i.i.i.i, label %bobToRjh_LeafBlock1.i12.i.i.i.i.i

bobToRjh_LeafBlock.i10.i.i.i.i.i:                 ; preds = %bobToRjh_getEmailId.exit.i.i.i.i.i
  %SwitchLeaf.i9.i.i.i.i.i = icmp eq i32 %"31", 1
  %"52" = load i32* @"'__ste_email_from0", align 4
  %.16.i.i.i.i.i = select i1 %SwitchLeaf.i9.i.i.i.i.i, i32 %"52", i32 0
  br label %bobToRjh_getEmailFrom.exit.i.i.i.i.i

bobToRjh_LeafBlock1.i12.i.i.i.i.i:                ; preds = %bobToRjh_getEmailId.exit.i.i.i.i.i
  %SwitchLeaf2.i11.i.i.i.i.i = icmp eq i32 %"31", 2
  %"53" = load i32* @"'__ste_email_from1", align 4
  %.17.i.i.i.i.i = select i1 %SwitchLeaf2.i11.i.i.i.i.i, i32 %"53", i32 0
  br label %bobToRjh_getEmailFrom.exit.i.i.i.i.i

bobToRjh_getEmailFrom.exit.i.i.i.i.i:             ; preds = %bobToRjh_LeafBlock1.i12.i.i.i.i.i, %bobToRjh_LeafBlock.i10.i.i.i.i.i
  %.0.i14.i.i.i.i.i = phi i32 [ %.16.i.i.i.i.i, %bobToRjh_LeafBlock.i10.i.i.i.i.i ], [ %.17.i.i.i.i.i, %bobToRjh_LeafBlock1.i12.i.i.i.i.i ]
  %"54" = getelementptr [12 x i8]* @.str13, i32 0, i32 0
  %"55" = call i32 (i8*, ...)* @printf(i8* %"54", i32 %.0.i14.i.i.i.i.i) #5
  %Pivot.i1.i.i.i.i.i = icmp slt i32 %"31", 2
  br i1 %Pivot.i1.i.i.i.i.i, label %bobToRjh_LeafBlock.i3.i.i.i.i.i, label %bobToRjh_LeafBlock1.i5.i.i.i.i.i

bobToRjh_LeafBlock.i3.i.i.i.i.i:                  ; preds = %bobToRjh_getEmailFrom.exit.i.i.i.i.i
  %SwitchLeaf.i2.i.i.i.i.i = icmp eq i32 %"31", 1
  %"56" = load i32* @"'__ste_email_to0", align 4
  %.18.i.i.i.i.i = select i1 %SwitchLeaf.i2.i.i.i.i.i, i32 %"56", i32 0
  br label %bobToRjh_forward.exit.i.i.i

bobToRjh_LeafBlock1.i5.i.i.i.i.i:                 ; preds = %bobToRjh_getEmailFrom.exit.i.i.i.i.i
  %SwitchLeaf2.i4.i.i.i.i.i = icmp eq i32 %"31", 2
  %"57" = load i32* @"'__ste_email_to1", align 4
  %.19.i.i.i.i.i = select i1 %SwitchLeaf2.i4.i.i.i.i.i, i32 %"57", i32 0
  br label %bobToRjh_forward.exit.i.i.i

bobToRjh_forward.exit.i.i.i:                      ; preds = %bobToRjh_LeafBlock1.i5.i.i.i.i.i, %bobToRjh_LeafBlock.i3.i.i.i.i.i
  %.0.i7.i.i.i.i.i = phi i32 [ %.18.i.i.i.i.i, %bobToRjh_LeafBlock.i3.i.i.i.i.i ], [ %.19.i.i.i.i.i, %bobToRjh_LeafBlock1.i5.i.i.i.i.i ]
  %"58" = getelementptr [10 x i8]* @.str14, i32 0, i32 0
  %"59" = call i32 (i8*, ...)* @printf(i8* %"58", i32 %.0.i7.i.i.i.i.i) #5
  %"60" = getelementptr [18 x i8]* @.str15, i32 0, i32 0
  %"61" = call i32 (i8*, ...)* @printf(i8* %"60", i32 1) #5
  store i32 0, i32* @"'queue_empty", align 4
  store i32 %"31", i32* @"'queued_message", align 4
  store i32 %.0.i.i.i7, i32* @"'queued_client", align 4
  br label %bobToRjh_outgoing.exit

bobToRjh_outgoing.exit:                           ; preds = %bobToRjh_forward.exit.i.i.i, %bobToRjh_getClientForwardReceiver.exit.i.i.i, %bobToRjh_sendEmail.exit
  ret void
}

declare i32 @puts(i8*) #1

; Function Attrs: nounwind uwtable
define void @sendEmail(i32 %sender, i32 %receiver) #0 {
sendEmail_bb29:
  store i32 0, i32* @"'__ste_email_from0", align 4
  store i32 %receiver, i32* @"'__ste_email_to0", align 4
  %Pivot4.i.i = icmp slt i32 %sender, 2
  br i1 %Pivot4.i.i, label %sendEmail_LeafBlock.i.i, label %sendEmail_NodeBlock.i.i

sendEmail_LeafBlock.i.i:                          ; preds = %sendEmail_bb29
  %SwitchLeaf.i.i = icmp eq i32 %sender, 1
  %"62" = load i32* @"'__ste_client_idCounter0", align 4
  %..i = select i1 %SwitchLeaf.i.i, i32 %"62", i32 0
  br label %sendEmail_getClientId.exit.i

sendEmail_NodeBlock.i.i:                          ; preds = %sendEmail_bb29
  %Pivot.i.i = icmp slt i32 %sender, 3
  br i1 %Pivot.i.i, label %sendEmail_bb30, label %sendEmail_LeafBlock1.i.i

sendEmail_bb30:                                   ; preds = %sendEmail_NodeBlock.i.i
  %"63" = load i32* @"'__ste_client_idCounter1", align 4
  br label %sendEmail_getClientId.exit.i

sendEmail_LeafBlock1.i.i:                         ; preds = %sendEmail_NodeBlock.i.i
  %SwitchLeaf2.i.i = icmp eq i32 %sender, 3
  %"64" = load i32* @"'__ste_client_idCounter2", align 4
  %.8.i = select i1 %SwitchLeaf2.i.i, i32 %"64", i32 0
  br label %sendEmail_getClientId.exit.i

sendEmail_getClientId.exit.i:                     ; preds = %sendEmail_LeafBlock1.i.i, %sendEmail_bb30, %sendEmail_LeafBlock.i.i
  %.0.i.i = phi i32 [ %"63", %sendEmail_bb30 ], [ %..i, %sendEmail_LeafBlock.i.i ], [ %.8.i, %sendEmail_LeafBlock1.i.i ]
  %Pivot.i1.i = icmp slt i32 1, 2
  br i1 %Pivot.i1.i, label %sendEmail_LeafBlock.i4.i, label %sendEmail_LeafBlock1.i6.i

sendEmail_LeafBlock.i4.i:                         ; preds = %sendEmail_getClientId.exit.i
  %SwitchLeaf.i3.i = icmp eq i32 1, 1
  br i1 %SwitchLeaf.i3.i, label %sendEmail_bb31, label %sendEmail_setEmailFrom.exit.i

sendEmail_bb31:                                   ; preds = %sendEmail_LeafBlock.i4.i
  store i32 %.0.i.i, i32* @"'__ste_email_from0", align 4
  br label %sendEmail_setEmailFrom.exit.i

sendEmail_LeafBlock1.i6.i:                        ; preds = %sendEmail_getClientId.exit.i
  %SwitchLeaf2.i5.i = icmp eq i32 1, 2
  br i1 %SwitchLeaf2.i5.i, label %sendEmail_bb32, label %sendEmail_setEmailFrom.exit.i

sendEmail_bb32:                                   ; preds = %sendEmail_LeafBlock1.i6.i
  store i32 %.0.i.i, i32* @"'__ste_email_from1", align 4
  br label %sendEmail_setEmailFrom.exit.i

sendEmail_setEmailFrom.exit.i:                    ; preds = %sendEmail_bb32, %sendEmail_LeafBlock1.i6.i, %sendEmail_bb31, %sendEmail_LeafBlock.i4.i
  %"65" = getelementptr [10 x i8]* @.str8, i32 0, i32 0
  %"66" = call i32 @puts(i8* %"65") #5
  %Pivot.i.i.i = icmp slt i32 1, 2
  br i1 %Pivot.i.i.i, label %sendEmail_LeafBlock.i.i.i, label %sendEmail_LeafBlock1.i.i.i

sendEmail_LeafBlock.i.i.i:                        ; preds = %sendEmail_setEmailFrom.exit.i
  %SwitchLeaf.i.i.i = icmp eq i32 1, 1
  %"67" = load i32* @"'__ste_email_to0", align 4
  %..i.i = select i1 %SwitchLeaf.i.i.i, i32 %"67", i32 0
  br label %sendEmail_getEmailTo.exit.i.i

sendEmail_LeafBlock1.i.i.i:                       ; preds = %sendEmail_setEmailFrom.exit.i
  %SwitchLeaf2.i.i.i = icmp eq i32 1, 2
  %"68" = load i32* @"'__ste_email_to1", align 4
  %.1.i.i = select i1 %SwitchLeaf2.i.i.i, i32 %"68", i32 0
  br label %sendEmail_getEmailTo.exit.i.i

sendEmail_getEmailTo.exit.i.i:                    ; preds = %sendEmail_LeafBlock1.i.i.i, %sendEmail_LeafBlock.i.i.i
  %.0.i.i.i = phi i32 [ %..i.i, %sendEmail_LeafBlock.i.i.i ], [ %.1.i.i, %sendEmail_LeafBlock1.i.i.i ]
  %"69" = getelementptr [16 x i8]* @.str9, i32 0, i32 0
  %"70" = call i32 @puts(i8* %"69") #5
  %Pivot4.i.i.i.i = icmp slt i32 %.0.i.i.i, 2
  br i1 %Pivot4.i.i.i.i, label %sendEmail_LeafBlock.i.i.i.i, label %sendEmail_NodeBlock.i.i.i.i

sendEmail_LeafBlock.i.i.i.i:                      ; preds = %sendEmail_getEmailTo.exit.i.i
  %SwitchLeaf.i.i.i.i = icmp eq i32 %.0.i.i.i, 1
  %"71" = load i32* @"'__ste_client_forwardReceiver0", align 4
  %..i.i.i = select i1 %SwitchLeaf.i.i.i.i, i32 %"71", i32 0
  br label %sendEmail_getClientForwardReceiver.exit.i.i.i

sendEmail_NodeBlock.i.i.i.i:                      ; preds = %sendEmail_getEmailTo.exit.i.i
  %Pivot.i.i.i.i = icmp slt i32 %.0.i.i.i, 3
  br i1 %Pivot.i.i.i.i, label %sendEmail_bb33, label %sendEmail_LeafBlock1.i.i.i.i

sendEmail_bb33:                                   ; preds = %sendEmail_NodeBlock.i.i.i.i
  %"72" = load i32* @"'__ste_client_forwardReceiver1", align 4
  br label %sendEmail_getClientForwardReceiver.exit.i.i.i

sendEmail_LeafBlock1.i.i.i.i:                     ; preds = %sendEmail_NodeBlock.i.i.i.i
  %SwitchLeaf2.i.i.i.i = icmp eq i32 %.0.i.i.i, 3
  %"73" = load i32* @"'__ste_client_forwardReceiver2", align 4
  %.8.i.i.i = select i1 %SwitchLeaf2.i.i.i.i, i32 %"73", i32 0
  br label %sendEmail_getClientForwardReceiver.exit.i.i.i

sendEmail_getClientForwardReceiver.exit.i.i.i:    ; preds = %sendEmail_LeafBlock1.i.i.i.i, %sendEmail_bb33, %sendEmail_LeafBlock.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %"72", %sendEmail_bb33 ], [ %..i.i.i, %sendEmail_LeafBlock.i.i.i.i ], [ %.8.i.i.i, %sendEmail_LeafBlock1.i.i.i.i ]
  %"74" = icmp ne i32 %.0.i.i.i.i, 0
  br i1 %"74", label %sendEmail_bb34, label %sendEmail_outgoing.exit

sendEmail_bb34:                                   ; preds = %sendEmail_getClientForwardReceiver.exit.i.i.i
  %Pivot.i1.i.i.i = icmp slt i32 1, 2
  br i1 %Pivot.i1.i.i.i, label %sendEmail_LeafBlock.i4.i.i.i, label %sendEmail_LeafBlock1.i6.i.i.i

sendEmail_LeafBlock.i4.i.i.i:                     ; preds = %sendEmail_bb34
  %SwitchLeaf.i3.i.i.i = icmp eq i32 1, 1
  br i1 %SwitchLeaf.i3.i.i.i, label %sendEmail_bb35, label %sendEmail_setEmailTo.exit.i.i.i

sendEmail_bb35:                                   ; preds = %sendEmail_LeafBlock.i4.i.i.i
  store i32 %.0.i.i.i.i, i32* @"'__ste_email_to0", align 4
  br label %sendEmail_setEmailTo.exit.i.i.i

sendEmail_LeafBlock1.i6.i.i.i:                    ; preds = %sendEmail_bb34
  %SwitchLeaf2.i5.i.i.i = icmp eq i32 1, 2
  br i1 %SwitchLeaf2.i5.i.i.i, label %sendEmail_bb36, label %sendEmail_setEmailTo.exit.i.i.i

sendEmail_bb36:                                   ; preds = %sendEmail_LeafBlock1.i6.i.i.i
  store i32 %.0.i.i.i.i, i32* @"'__ste_email_to1", align 4
  br label %sendEmail_setEmailTo.exit.i.i.i

sendEmail_setEmailTo.exit.i.i.i:                  ; preds = %sendEmail_bb36, %sendEmail_LeafBlock1.i6.i.i.i, %sendEmail_bb35, %sendEmail_LeafBlock.i4.i.i.i
  call void @__utac_acc__DecryptForward_spec__1(i32 1) #5
  %"75" = getelementptr [21 x i8]* @.str10, i32 0, i32 0
  %"76" = call i32 @puts(i8* %"75") #5
  %Pivot.i.i.i.i.i.i = icmp slt i32 1, 2
  br i1 %Pivot.i.i.i.i.i.i, label %sendEmail_LeafBlock.i.i.i.i.i.i, label %sendEmail_LeafBlock1.i.i.i.i.i.i

sendEmail_LeafBlock.i.i.i.i.i.i:                  ; preds = %sendEmail_setEmailTo.exit.i.i.i
  %SwitchLeaf.i.i.i.i.i.i = icmp eq i32 1, 1
  %"77" = load i32* @"'__ste_email_id0", align 4
  %..i.i.i.i.i = select i1 %SwitchLeaf.i.i.i.i.i.i, i32 %"77", i32 0
  br label %sendEmail_getEmailId.exit.i.i.i.i.i

sendEmail_LeafBlock1.i.i.i.i.i.i:                 ; preds = %sendEmail_setEmailTo.exit.i.i.i
  %SwitchLeaf2.i.i.i.i.i.i = icmp eq i32 1, 2
  %"78" = load i32* @"'__ste_email_id1", align 4
  %.15.i.i.i.i.i = select i1 %SwitchLeaf2.i.i.i.i.i.i, i32 %"78", i32 0
  br label %sendEmail_getEmailId.exit.i.i.i.i.i

sendEmail_getEmailId.exit.i.i.i.i.i:              ; preds = %sendEmail_LeafBlock1.i.i.i.i.i.i, %sendEmail_LeafBlock.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %..i.i.i.i.i, %sendEmail_LeafBlock.i.i.i.i.i.i ], [ %.15.i.i.i.i.i, %sendEmail_LeafBlock1.i.i.i.i.i.i ]
  %"79" = getelementptr [10 x i8]* @.str12, i32 0, i32 0
  %"80" = call i32 (i8*, ...)* @printf(i8* %"79", i32 %.0.i.i.i.i.i.i) #5
  %Pivot.i8.i.i.i.i.i = icmp slt i32 1, 2
  br i1 %Pivot.i8.i.i.i.i.i, label %sendEmail_LeafBlock.i10.i.i.i.i.i, label %sendEmail_LeafBlock1.i12.i.i.i.i.i

sendEmail_LeafBlock.i10.i.i.i.i.i:                ; preds = %sendEmail_getEmailId.exit.i.i.i.i.i
  %SwitchLeaf.i9.i.i.i.i.i = icmp eq i32 1, 1
  %"81" = load i32* @"'__ste_email_from0", align 4
  %.16.i.i.i.i.i = select i1 %SwitchLeaf.i9.i.i.i.i.i, i32 %"81", i32 0
  br label %sendEmail_getEmailFrom.exit.i.i.i.i.i

sendEmail_LeafBlock1.i12.i.i.i.i.i:               ; preds = %sendEmail_getEmailId.exit.i.i.i.i.i
  %SwitchLeaf2.i11.i.i.i.i.i = icmp eq i32 1, 2
  %"82" = load i32* @"'__ste_email_from1", align 4
  %.17.i.i.i.i.i = select i1 %SwitchLeaf2.i11.i.i.i.i.i, i32 %"82", i32 0
  br label %sendEmail_getEmailFrom.exit.i.i.i.i.i

sendEmail_getEmailFrom.exit.i.i.i.i.i:            ; preds = %sendEmail_LeafBlock1.i12.i.i.i.i.i, %sendEmail_LeafBlock.i10.i.i.i.i.i
  %.0.i14.i.i.i.i.i = phi i32 [ %.16.i.i.i.i.i, %sendEmail_LeafBlock.i10.i.i.i.i.i ], [ %.17.i.i.i.i.i, %sendEmail_LeafBlock1.i12.i.i.i.i.i ]
  %"83" = getelementptr [12 x i8]* @.str13, i32 0, i32 0
  %"84" = call i32 (i8*, ...)* @printf(i8* %"83", i32 %.0.i14.i.i.i.i.i) #5
  %Pivot.i1.i.i.i.i.i = icmp slt i32 1, 2
  br i1 %Pivot.i1.i.i.i.i.i, label %sendEmail_LeafBlock.i3.i.i.i.i.i, label %sendEmail_LeafBlock1.i5.i.i.i.i.i

sendEmail_LeafBlock.i3.i.i.i.i.i:                 ; preds = %sendEmail_getEmailFrom.exit.i.i.i.i.i
  %SwitchLeaf.i2.i.i.i.i.i = icmp eq i32 1, 1
  %"85" = load i32* @"'__ste_email_to0", align 4
  %.18.i.i.i.i.i = select i1 %SwitchLeaf.i2.i.i.i.i.i, i32 %"85", i32 0
  br label %sendEmail_forward.exit.i.i.i

sendEmail_LeafBlock1.i5.i.i.i.i.i:                ; preds = %sendEmail_getEmailFrom.exit.i.i.i.i.i
  %SwitchLeaf2.i4.i.i.i.i.i = icmp eq i32 1, 2
  %"86" = load i32* @"'__ste_email_to1", align 4
  %.19.i.i.i.i.i = select i1 %SwitchLeaf2.i4.i.i.i.i.i, i32 %"86", i32 0
  br label %sendEmail_forward.exit.i.i.i

sendEmail_forward.exit.i.i.i:                     ; preds = %sendEmail_LeafBlock1.i5.i.i.i.i.i, %sendEmail_LeafBlock.i3.i.i.i.i.i
  %.0.i7.i.i.i.i.i = phi i32 [ %.18.i.i.i.i.i, %sendEmail_LeafBlock.i3.i.i.i.i.i ], [ %.19.i.i.i.i.i, %sendEmail_LeafBlock1.i5.i.i.i.i.i ]
  %"87" = getelementptr [10 x i8]* @.str14, i32 0, i32 0
  %"88" = call i32 (i8*, ...)* @printf(i8* %"87", i32 %.0.i7.i.i.i.i.i) #5
  %"89" = getelementptr [18 x i8]* @.str15, i32 0, i32 0
  %"90" = call i32 (i8*, ...)* @printf(i8* %"89", i32 1) #5
  store i32 0, i32* @"'queue_empty", align 4
  store i32 1, i32* @"'queued_message", align 4
  store i32 %.0.i.i.i, i32* @"'queued_client", align 4
  br label %sendEmail_outgoing.exit

sendEmail_outgoing.exit:                          ; preds = %sendEmail_getClientForwardReceiver.exit.i.i.i, %sendEmail_forward.exit.i.i.i
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @is_queue_empty() #0 {
is_queue_empty_bb37:
  %"91" = load i32* @"'queue_empty", align 4
  ret i32 %"91"
}

; Function Attrs: nounwind uwtable
define i32 @get_queued_email() #0 {
get_queued_email_bb38:
  %"92" = load i32* @"'queued_message", align 4
  ret i32 %"92"
}

; Function Attrs: nounwind uwtable
define i32 @get_queued_client() #0 {
get_queued_client_bb39:
  %"93" = load i32* @"'queued_client", align 4
  ret i32 %"93"
}

; Function Attrs: nounwind uwtable
define void @outgoing(i32 %client, i32 %msg) #0 {
outgoing_bb40:
  %Pivot4.i = icmp slt i32 %client, 2
  br i1 %Pivot4.i, label %outgoing_LeafBlock.i, label %outgoing_NodeBlock.i

outgoing_LeafBlock.i:                             ; preds = %outgoing_bb40
  %SwitchLeaf.i = icmp eq i32 %client, 1
  %"94" = load i32* @"'__ste_client_idCounter0", align 4
  %. = select i1 %SwitchLeaf.i, i32 %"94", i32 0
  br label %outgoing_getClientId.exit

outgoing_NodeBlock.i:                             ; preds = %outgoing_bb40
  %Pivot.i = icmp slt i32 %client, 3
  br i1 %Pivot.i, label %outgoing_bb41, label %outgoing_LeafBlock1.i

outgoing_bb41:                                    ; preds = %outgoing_NodeBlock.i
  %"95" = load i32* @"'__ste_client_idCounter1", align 4
  br label %outgoing_getClientId.exit

outgoing_LeafBlock1.i:                            ; preds = %outgoing_NodeBlock.i
  %SwitchLeaf2.i = icmp eq i32 %client, 3
  %"96" = load i32* @"'__ste_client_idCounter2", align 4
  %.8 = select i1 %SwitchLeaf2.i, i32 %"96", i32 0
  br label %outgoing_getClientId.exit

outgoing_getClientId.exit:                        ; preds = %outgoing_LeafBlock1.i, %outgoing_LeafBlock.i, %outgoing_bb41
  %.0.i = phi i32 [ %"95", %outgoing_bb41 ], [ %., %outgoing_LeafBlock.i ], [ %.8, %outgoing_LeafBlock1.i ]
  %Pivot.i1 = icmp slt i32 %msg, 2
  br i1 %Pivot.i1, label %outgoing_LeafBlock.i4, label %outgoing_LeafBlock1.i6

outgoing_LeafBlock.i4:                            ; preds = %outgoing_getClientId.exit
  %SwitchLeaf.i3 = icmp eq i32 %msg, 1
  br i1 %SwitchLeaf.i3, label %outgoing_bb42, label %outgoing_setEmailFrom.exit

outgoing_bb42:                                    ; preds = %outgoing_LeafBlock.i4
  store i32 %.0.i, i32* @"'__ste_email_from0", align 4
  br label %outgoing_setEmailFrom.exit

outgoing_LeafBlock1.i6:                           ; preds = %outgoing_getClientId.exit
  %SwitchLeaf2.i5 = icmp eq i32 %msg, 2
  br i1 %SwitchLeaf2.i5, label %outgoing_bb43, label %outgoing_setEmailFrom.exit

outgoing_bb43:                                    ; preds = %outgoing_LeafBlock1.i6
  store i32 %.0.i, i32* @"'__ste_email_from1", align 4
  br label %outgoing_setEmailFrom.exit

outgoing_setEmailFrom.exit:                       ; preds = %outgoing_LeafBlock.i4, %outgoing_LeafBlock1.i6, %outgoing_bb42, %outgoing_bb43
  %"97" = getelementptr [10 x i8]* @.str8, i32 0, i32 0
  %"98" = call i32 @puts(i8* %"97") #5
  %Pivot.i.i = icmp slt i32 %msg, 2
  br i1 %Pivot.i.i, label %outgoing_LeafBlock.i.i, label %outgoing_LeafBlock1.i.i

outgoing_LeafBlock.i.i:                           ; preds = %outgoing_setEmailFrom.exit
  %SwitchLeaf.i.i = icmp eq i32 %msg, 1
  %"99" = load i32* @"'__ste_email_to0", align 4
  %..i = select i1 %SwitchLeaf.i.i, i32 %"99", i32 0
  br label %outgoing_getEmailTo.exit.i

outgoing_LeafBlock1.i.i:                          ; preds = %outgoing_setEmailFrom.exit
  %SwitchLeaf2.i.i = icmp eq i32 %msg, 2
  %"100" = load i32* @"'__ste_email_to1", align 4
  %.1.i = select i1 %SwitchLeaf2.i.i, i32 %"100", i32 0
  br label %outgoing_getEmailTo.exit.i

outgoing_getEmailTo.exit.i:                       ; preds = %outgoing_LeafBlock1.i.i, %outgoing_LeafBlock.i.i
  %.0.i.i = phi i32 [ %..i, %outgoing_LeafBlock.i.i ], [ %.1.i, %outgoing_LeafBlock1.i.i ]
  %"101" = getelementptr [16 x i8]* @.str9, i32 0, i32 0
  %"102" = call i32 @puts(i8* %"101") #5
  %Pivot4.i.i.i = icmp slt i32 %.0.i.i, 2
  br i1 %Pivot4.i.i.i, label %outgoing_LeafBlock.i.i.i, label %outgoing_NodeBlock.i.i.i

outgoing_LeafBlock.i.i.i:                         ; preds = %outgoing_getEmailTo.exit.i
  %SwitchLeaf.i.i.i = icmp eq i32 %.0.i.i, 1
  %"103" = load i32* @"'__ste_client_forwardReceiver0", align 4
  %..i.i = select i1 %SwitchLeaf.i.i.i, i32 %"103", i32 0
  br label %outgoing_getClientForwardReceiver.exit.i.i

outgoing_NodeBlock.i.i.i:                         ; preds = %outgoing_getEmailTo.exit.i
  %Pivot.i.i.i = icmp slt i32 %.0.i.i, 3
  br i1 %Pivot.i.i.i, label %outgoing_bb44, label %outgoing_LeafBlock1.i.i.i

outgoing_bb44:                                    ; preds = %outgoing_NodeBlock.i.i.i
  %"104" = load i32* @"'__ste_client_forwardReceiver1", align 4
  br label %outgoing_getClientForwardReceiver.exit.i.i

outgoing_LeafBlock1.i.i.i:                        ; preds = %outgoing_NodeBlock.i.i.i
  %SwitchLeaf2.i.i.i = icmp eq i32 %.0.i.i, 3
  %"105" = load i32* @"'__ste_client_forwardReceiver2", align 4
  %.8.i.i = select i1 %SwitchLeaf2.i.i.i, i32 %"105", i32 0
  br label %outgoing_getClientForwardReceiver.exit.i.i

outgoing_getClientForwardReceiver.exit.i.i:       ; preds = %outgoing_LeafBlock1.i.i.i, %outgoing_bb44, %outgoing_LeafBlock.i.i.i
  %.0.i.i.i = phi i32 [ %"104", %outgoing_bb44 ], [ %..i.i, %outgoing_LeafBlock.i.i.i ], [ %.8.i.i, %outgoing_LeafBlock1.i.i.i ]
  %"106" = icmp ne i32 %.0.i.i.i, 0
  br i1 %"106", label %outgoing_bb45, label %outgoing_mail.exit

outgoing_bb45:                                    ; preds = %outgoing_getClientForwardReceiver.exit.i.i
  %Pivot.i1.i.i = icmp slt i32 %msg, 2
  br i1 %Pivot.i1.i.i, label %outgoing_LeafBlock.i4.i.i, label %outgoing_LeafBlock1.i6.i.i

outgoing_LeafBlock.i4.i.i:                        ; preds = %outgoing_bb45
  %SwitchLeaf.i3.i.i = icmp eq i32 %msg, 1
  br i1 %SwitchLeaf.i3.i.i, label %outgoing_bb46, label %outgoing_setEmailTo.exit.i.i

outgoing_bb46:                                    ; preds = %outgoing_LeafBlock.i4.i.i
  store i32 %.0.i.i.i, i32* @"'__ste_email_to0", align 4
  br label %outgoing_setEmailTo.exit.i.i

outgoing_LeafBlock1.i6.i.i:                       ; preds = %outgoing_bb45
  %SwitchLeaf2.i5.i.i = icmp eq i32 %msg, 2
  br i1 %SwitchLeaf2.i5.i.i, label %outgoing_bb47, label %outgoing_setEmailTo.exit.i.i

outgoing_bb47:                                    ; preds = %outgoing_LeafBlock1.i6.i.i
  store i32 %.0.i.i.i, i32* @"'__ste_email_to1", align 4
  br label %outgoing_setEmailTo.exit.i.i

outgoing_setEmailTo.exit.i.i:                     ; preds = %outgoing_bb47, %outgoing_LeafBlock1.i6.i.i, %outgoing_bb46, %outgoing_LeafBlock.i4.i.i
  call void @__utac_acc__DecryptForward_spec__1(i32 %msg) #5
  %"107" = getelementptr [21 x i8]* @.str10, i32 0, i32 0
  %"108" = call i32 @puts(i8* %"107") #5
  %Pivot.i.i.i.i.i = icmp slt i32 %msg, 2
  br i1 %Pivot.i.i.i.i.i, label %outgoing_LeafBlock.i.i.i.i.i, label %outgoing_LeafBlock1.i.i.i.i.i

outgoing_LeafBlock.i.i.i.i.i:                     ; preds = %outgoing_setEmailTo.exit.i.i
  %SwitchLeaf.i.i.i.i.i = icmp eq i32 %msg, 1
  %"109" = load i32* @"'__ste_email_id0", align 4
  %..i.i.i.i = select i1 %SwitchLeaf.i.i.i.i.i, i32 %"109", i32 0
  br label %outgoing_getEmailId.exit.i.i.i.i

outgoing_LeafBlock1.i.i.i.i.i:                    ; preds = %outgoing_setEmailTo.exit.i.i
  %SwitchLeaf2.i.i.i.i.i = icmp eq i32 %msg, 2
  %"110" = load i32* @"'__ste_email_id1", align 4
  %.15.i.i.i.i = select i1 %SwitchLeaf2.i.i.i.i.i, i32 %"110", i32 0
  br label %outgoing_getEmailId.exit.i.i.i.i

outgoing_getEmailId.exit.i.i.i.i:                 ; preds = %outgoing_LeafBlock1.i.i.i.i.i, %outgoing_LeafBlock.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %..i.i.i.i, %outgoing_LeafBlock.i.i.i.i.i ], [ %.15.i.i.i.i, %outgoing_LeafBlock1.i.i.i.i.i ]
  %"111" = getelementptr [10 x i8]* @.str12, i32 0, i32 0
  %"112" = call i32 (i8*, ...)* @printf(i8* %"111", i32 %.0.i.i.i.i.i) #5
  %Pivot.i8.i.i.i.i = icmp slt i32 %msg, 2
  br i1 %Pivot.i8.i.i.i.i, label %outgoing_LeafBlock.i10.i.i.i.i, label %outgoing_LeafBlock1.i12.i.i.i.i

outgoing_LeafBlock.i10.i.i.i.i:                   ; preds = %outgoing_getEmailId.exit.i.i.i.i
  %SwitchLeaf.i9.i.i.i.i = icmp eq i32 %msg, 1
  %"113" = load i32* @"'__ste_email_from0", align 4
  %.16.i.i.i.i = select i1 %SwitchLeaf.i9.i.i.i.i, i32 %"113", i32 0
  br label %outgoing_getEmailFrom.exit.i.i.i.i

outgoing_LeafBlock1.i12.i.i.i.i:                  ; preds = %outgoing_getEmailId.exit.i.i.i.i
  %SwitchLeaf2.i11.i.i.i.i = icmp eq i32 %msg, 2
  %"114" = load i32* @"'__ste_email_from1", align 4
  %.17.i.i.i.i = select i1 %SwitchLeaf2.i11.i.i.i.i, i32 %"114", i32 0
  br label %outgoing_getEmailFrom.exit.i.i.i.i

outgoing_getEmailFrom.exit.i.i.i.i:               ; preds = %outgoing_LeafBlock1.i12.i.i.i.i, %outgoing_LeafBlock.i10.i.i.i.i
  %.0.i14.i.i.i.i = phi i32 [ %.16.i.i.i.i, %outgoing_LeafBlock.i10.i.i.i.i ], [ %.17.i.i.i.i, %outgoing_LeafBlock1.i12.i.i.i.i ]
  %"115" = getelementptr [12 x i8]* @.str13, i32 0, i32 0
  %"116" = call i32 (i8*, ...)* @printf(i8* %"115", i32 %.0.i14.i.i.i.i) #5
  %Pivot.i1.i.i.i.i = icmp slt i32 %msg, 2
  br i1 %Pivot.i1.i.i.i.i, label %outgoing_LeafBlock.i3.i.i.i.i, label %outgoing_LeafBlock1.i5.i.i.i.i

outgoing_LeafBlock.i3.i.i.i.i:                    ; preds = %outgoing_getEmailFrom.exit.i.i.i.i
  %SwitchLeaf.i2.i.i.i.i = icmp eq i32 %msg, 1
  %"117" = load i32* @"'__ste_email_to0", align 4
  %.18.i.i.i.i = select i1 %SwitchLeaf.i2.i.i.i.i, i32 %"117", i32 0
  br label %outgoing_forward.exit.i.i

outgoing_LeafBlock1.i5.i.i.i.i:                   ; preds = %outgoing_getEmailFrom.exit.i.i.i.i
  %SwitchLeaf2.i4.i.i.i.i = icmp eq i32 %msg, 2
  %"118" = load i32* @"'__ste_email_to1", align 4
  %.19.i.i.i.i = select i1 %SwitchLeaf2.i4.i.i.i.i, i32 %"118", i32 0
  br label %outgoing_forward.exit.i.i

outgoing_forward.exit.i.i:                        ; preds = %outgoing_LeafBlock1.i5.i.i.i.i, %outgoing_LeafBlock.i3.i.i.i.i
  %.0.i7.i.i.i.i = phi i32 [ %.18.i.i.i.i, %outgoing_LeafBlock.i3.i.i.i.i ], [ %.19.i.i.i.i, %outgoing_LeafBlock1.i5.i.i.i.i ]
  %"119" = getelementptr [10 x i8]* @.str14, i32 0, i32 0
  %"120" = call i32 (i8*, ...)* @printf(i8* %"119", i32 %.0.i7.i.i.i.i) #5
  %"121" = getelementptr [18 x i8]* @.str15, i32 0, i32 0
  %"122" = call i32 (i8*, ...)* @printf(i8* %"121", i32 1) #5
  store i32 0, i32* @"'queue_empty", align 4
  store i32 %msg, i32* @"'queued_message", align 4
  store i32 %.0.i.i, i32* @"'queued_client", align 4
  br label %outgoing_mail.exit

outgoing_mail.exit:                               ; preds = %outgoing_getClientForwardReceiver.exit.i.i, %outgoing_forward.exit.i.i
  ret void
}

; Function Attrs: nounwind uwtable
define void @rjhToBob() #0 {
rjhToBob_bb48:
  %"123" = getelementptr [44 x i8]* @.str, i32 0, i32 0
  %"124" = call i32 @puts(i8* %"123")
  %"125" = load i32* @"'rjh", align 4
  %"126" = load i32* @"'bob", align 4
  store i32 0, i32* @"'__ste_email_from0", align 4
  store i32 %"126", i32* @"'__ste_email_to0", align 4
  %Pivot4.i.i.i = icmp slt i32 %"125", 2
  br i1 %Pivot4.i.i.i, label %rjhToBob_LeafBlock.i.i.i, label %rjhToBob_NodeBlock.i.i.i

rjhToBob_LeafBlock.i.i.i:                         ; preds = %rjhToBob_bb48
  %SwitchLeaf.i.i.i = icmp eq i32 %"125", 1
  %"127" = load i32* @"'__ste_client_idCounter0", align 4
  %..i.i = select i1 %SwitchLeaf.i.i.i, i32 %"127", i32 0
  br label %rjhToBob_getClientId.exit.i.i

rjhToBob_NodeBlock.i.i.i:                         ; preds = %rjhToBob_bb48
  %Pivot.i.i.i = icmp slt i32 %"125", 3
  br i1 %Pivot.i.i.i, label %rjhToBob_bb49, label %rjhToBob_LeafBlock1.i.i.i

rjhToBob_bb49:                                    ; preds = %rjhToBob_NodeBlock.i.i.i
  %"128" = load i32* @"'__ste_client_idCounter1", align 4
  br label %rjhToBob_getClientId.exit.i.i

rjhToBob_LeafBlock1.i.i.i:                        ; preds = %rjhToBob_NodeBlock.i.i.i
  %SwitchLeaf2.i.i.i = icmp eq i32 %"125", 3
  %"129" = load i32* @"'__ste_client_idCounter2", align 4
  %.8.i.i = select i1 %SwitchLeaf2.i.i.i, i32 %"129", i32 0
  br label %rjhToBob_getClientId.exit.i.i

rjhToBob_getClientId.exit.i.i:                    ; preds = %rjhToBob_LeafBlock1.i.i.i, %rjhToBob_bb49, %rjhToBob_LeafBlock.i.i.i
  %.0.i.i.i = phi i32 [ %"128", %rjhToBob_bb49 ], [ %..i.i, %rjhToBob_LeafBlock.i.i.i ], [ %.8.i.i, %rjhToBob_LeafBlock1.i.i.i ]
  store i32 %.0.i.i.i, i32* @"'__ste_email_from0", align 4
  %"130" = getelementptr [10 x i8]* @.str8, i32 0, i32 0
  %"131" = call i32 @puts(i8* %"130") #5
  %"132" = load i32* @"'__ste_email_to0", align 4
  %"133" = getelementptr [16 x i8]* @.str9, i32 0, i32 0
  %"134" = call i32 @puts(i8* %"133") #5
  %Pivot4.i.i.i.i.i = icmp slt i32 %"132", 2
  br i1 %Pivot4.i.i.i.i.i, label %rjhToBob_LeafBlock.i.i.i.i.i, label %rjhToBob_NodeBlock.i.i.i.i.i

rjhToBob_LeafBlock.i.i.i.i.i:                     ; preds = %rjhToBob_getClientId.exit.i.i
  %SwitchLeaf.i.i.i.i.i = icmp eq i32 %"132", 1
  %"135" = load i32* @"'__ste_client_forwardReceiver0", align 4
  %..i.i.i.i = select i1 %SwitchLeaf.i.i.i.i.i, i32 %"135", i32 0
  br label %rjhToBob_getClientForwardReceiver.exit.i.i.i.i

rjhToBob_NodeBlock.i.i.i.i.i:                     ; preds = %rjhToBob_getClientId.exit.i.i
  %Pivot.i.i.i.i.i = icmp slt i32 %"132", 3
  br i1 %Pivot.i.i.i.i.i, label %rjhToBob_bb50, label %rjhToBob_LeafBlock1.i.i.i.i.i

rjhToBob_bb50:                                    ; preds = %rjhToBob_NodeBlock.i.i.i.i.i
  %"136" = load i32* @"'__ste_client_forwardReceiver1", align 4
  br label %rjhToBob_getClientForwardReceiver.exit.i.i.i.i

rjhToBob_LeafBlock1.i.i.i.i.i:                    ; preds = %rjhToBob_NodeBlock.i.i.i.i.i
  %SwitchLeaf2.i.i.i.i.i = icmp eq i32 %"132", 3
  %"137" = load i32* @"'__ste_client_forwardReceiver2", align 4
  %.8.i.i.i.i = select i1 %SwitchLeaf2.i.i.i.i.i, i32 %"137", i32 0
  br label %rjhToBob_getClientForwardReceiver.exit.i.i.i.i

rjhToBob_getClientForwardReceiver.exit.i.i.i.i:   ; preds = %rjhToBob_LeafBlock1.i.i.i.i.i, %rjhToBob_bb50, %rjhToBob_LeafBlock.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %"136", %rjhToBob_bb50 ], [ %..i.i.i.i, %rjhToBob_LeafBlock.i.i.i.i.i ], [ %.8.i.i.i.i, %rjhToBob_LeafBlock1.i.i.i.i.i ]
  %"138" = icmp ne i32 %.0.i.i.i.i.i, 0
  br i1 %"138", label %rjhToBob_bb51, label %rjhToBob_sendEmail.exit

rjhToBob_bb51:                                    ; preds = %rjhToBob_getClientForwardReceiver.exit.i.i.i.i
  store i32 %.0.i.i.i.i.i, i32* @"'__ste_email_to0", align 4
  call void @__utac_acc__DecryptForward_spec__1(i32 1) #5
  %"139" = getelementptr [21 x i8]* @.str10, i32 0, i32 0
  %"140" = call i32 @puts(i8* %"139") #5
  %"141" = load i32* @"'__ste_email_id0", align 4
  %"142" = getelementptr [10 x i8]* @.str12, i32 0, i32 0
  %"143" = call i32 (i8*, ...)* @printf(i8* %"142", i32 %"141") #5
  %"144" = load i32* @"'__ste_email_from0", align 4
  %"145" = getelementptr [12 x i8]* @.str13, i32 0, i32 0
  %"146" = call i32 (i8*, ...)* @printf(i8* %"145", i32 %"144") #5
  %"147" = load i32* @"'__ste_email_to0", align 4
  %"148" = getelementptr [10 x i8]* @.str14, i32 0, i32 0
  %"149" = call i32 (i8*, ...)* @printf(i8* %"148", i32 %"147") #5
  %"150" = getelementptr [18 x i8]* @.str15, i32 0, i32 0
  %"151" = call i32 (i8*, ...)* @printf(i8* %"150", i32 1) #5
  store i32 0, i32* @"'queue_empty", align 4
  store i32 1, i32* @"'queued_message", align 4
  store i32 %"132", i32* @"'queued_client", align 4
  br label %rjhToBob_sendEmail.exit

rjhToBob_sendEmail.exit:                          ; preds = %rjhToBob_getClientForwardReceiver.exit.i.i.i.i, %rjhToBob_bb51
  ret void
}

; Function Attrs: nounwind uwtable
define void @setup() #0 {
setup_bb52:
  store i32 1, i32* @"'bob", align 4
  %"152" = load i32* @"'bob", align 4
  %Pivot4.i.i = icmp slt i32 %"152", 2
  br i1 %Pivot4.i.i, label %setup_LeafBlock.i.i, label %setup_NodeBlock.i.i

setup_LeafBlock.i.i:                              ; preds = %setup_bb52
  %SwitchLeaf.i.i = icmp eq i32 %"152", 1
  br i1 %SwitchLeaf.i.i, label %setup_bb53, label %setup_setup_bob.exit

setup_bb53:                                       ; preds = %setup_LeafBlock.i.i
  store i32 %"152", i32* @"'__ste_client_idCounter0", align 4
  br label %setup_setup_bob.exit

setup_NodeBlock.i.i:                              ; preds = %setup_bb52
  %Pivot.i.i = icmp slt i32 %"152", 3
  br i1 %Pivot.i.i, label %setup_bb54, label %setup_LeafBlock1.i.i

setup_bb54:                                       ; preds = %setup_NodeBlock.i.i
  store i32 %"152", i32* @"'__ste_client_idCounter1", align 4
  br label %setup_setup_bob.exit

setup_LeafBlock1.i.i:                             ; preds = %setup_NodeBlock.i.i
  %SwitchLeaf2.i.i = icmp eq i32 %"152", 3
  br i1 %SwitchLeaf2.i.i, label %setup_bb55, label %setup_setup_bob.exit

setup_bb55:                                       ; preds = %setup_LeafBlock1.i.i
  store i32 %"152", i32* @"'__ste_client_idCounter2", align 4
  br label %setup_setup_bob.exit

setup_setup_bob.exit:                             ; preds = %setup_LeafBlock.i.i, %setup_bb53, %setup_bb54, %setup_LeafBlock1.i.i, %setup_bb55
  %"153" = load i32* @"'bob", align 4
  %"154" = getelementptr [9 x i8]* @.str1, i32 0, i32 0
  %"155" = call i32 (i8*, ...)* @printf(i8* %"154", i32 %"153")
  store i32 2, i32* @"'rjh", align 4
  %"156" = load i32* @"'rjh", align 4
  %Pivot4.i.i8 = icmp slt i32 %"156", 2
  br i1 %Pivot4.i.i8, label %setup_LeafBlock.i.i10, label %setup_NodeBlock.i.i12

setup_LeafBlock.i.i10:                            ; preds = %setup_setup_bob.exit
  %SwitchLeaf.i.i9 = icmp eq i32 %"156", 1
  br i1 %SwitchLeaf.i.i9, label %setup_bb56, label %setup_setup_rjh.exit

setup_bb56:                                       ; preds = %setup_LeafBlock.i.i10
  store i32 %"156", i32* @"'__ste_client_idCounter0", align 4
  br label %setup_setup_rjh.exit

setup_NodeBlock.i.i12:                            ; preds = %setup_setup_bob.exit
  %Pivot.i.i11 = icmp slt i32 %"156", 3
  br i1 %Pivot.i.i11, label %setup_bb57, label %setup_LeafBlock1.i.i14

setup_bb57:                                       ; preds = %setup_NodeBlock.i.i12
  store i32 %"156", i32* @"'__ste_client_idCounter1", align 4
  br label %setup_setup_rjh.exit

setup_LeafBlock1.i.i14:                           ; preds = %setup_NodeBlock.i.i12
  %SwitchLeaf2.i.i13 = icmp eq i32 %"156", 3
  br i1 %SwitchLeaf2.i.i13, label %setup_bb58, label %setup_setup_rjh.exit

setup_bb58:                                       ; preds = %setup_LeafBlock1.i.i14
  store i32 %"156", i32* @"'__ste_client_idCounter2", align 4
  br label %setup_setup_rjh.exit

setup_setup_rjh.exit:                             ; preds = %setup_LeafBlock.i.i10, %setup_bb56, %setup_bb57, %setup_LeafBlock1.i.i14, %setup_bb58
  %"157" = load i32* @"'rjh", align 4
  %"158" = getelementptr [9 x i8]* @.str2, i32 0, i32 0
  %"159" = call i32 (i8*, ...)* @printf(i8* %"158", i32 %"157")
  store i32 3, i32* @"'chuck", align 4
  %"160" = load i32* @"'chuck", align 4
  %Pivot4.i.i1 = icmp slt i32 %"160", 2
  br i1 %Pivot4.i.i1, label %setup_LeafBlock.i.i3, label %setup_NodeBlock.i.i5

setup_LeafBlock.i.i3:                             ; preds = %setup_setup_rjh.exit
  %SwitchLeaf.i.i2 = icmp eq i32 %"160", 1
  br i1 %SwitchLeaf.i.i2, label %setup_bb59, label %setup_setup_chuck.exit

setup_bb59:                                       ; preds = %setup_LeafBlock.i.i3
  store i32 %"160", i32* @"'__ste_client_idCounter0", align 4
  br label %setup_setup_chuck.exit

setup_NodeBlock.i.i5:                             ; preds = %setup_setup_rjh.exit
  %Pivot.i.i4 = icmp slt i32 %"160", 3
  br i1 %Pivot.i.i4, label %setup_bb60, label %setup_LeafBlock1.i.i7

setup_bb60:                                       ; preds = %setup_NodeBlock.i.i5
  store i32 %"160", i32* @"'__ste_client_idCounter1", align 4
  br label %setup_setup_chuck.exit

setup_LeafBlock1.i.i7:                            ; preds = %setup_NodeBlock.i.i5
  %SwitchLeaf2.i.i6 = icmp eq i32 %"160", 3
  br i1 %SwitchLeaf2.i.i6, label %setup_bb61, label %setup_setup_chuck.exit

setup_bb61:                                       ; preds = %setup_LeafBlock1.i.i7
  store i32 %"160", i32* @"'__ste_client_idCounter2", align 4
  br label %setup_setup_chuck.exit

setup_setup_chuck.exit:                           ; preds = %setup_LeafBlock.i.i3, %setup_bb59, %setup_bb60, %setup_LeafBlock1.i.i7, %setup_bb61
  %"161" = load i32* @"'chuck", align 4
  %"162" = getelementptr [11 x i8]* @.str3, i32 0, i32 0
  %"163" = call i32 (i8*, ...)* @printf(i8* %"162", i32 %"161")
  ret void
}

declare i32 @printf(i8*, ...) #1

; Function Attrs: nounwind uwtable
define i32 @main() #0 {
main_bb62:
  %"164" = call i32 @__kittel_nondef.0()
  %"165" = icmp ne i32 1, 0
  br i1 %"165", label %main_bb63, label %main_test.exit

main_bb63:                                        ; preds = %main_bb62
  store i32 1, i32* @"'bob", align 4
  %"166" = load i32* @"'bob", align 4
  %Pivot4.i.i.i1 = icmp slt i32 %"166", 2
  br i1 %Pivot4.i.i.i1, label %main_LeafBlock.i.i.i3, label %main_NodeBlock.i.i.i5

main_LeafBlock.i.i.i3:                            ; preds = %main_bb63
  %SwitchLeaf.i.i.i2 = icmp eq i32 %"166", 1
  br i1 %SwitchLeaf.i.i.i2, label %main_bb64, label %main_setup_bob.exit.i

main_bb64:                                        ; preds = %main_LeafBlock.i.i.i3
  store i32 %"166", i32* @"'__ste_client_idCounter0", align 4
  br label %main_setup_bob.exit.i

main_NodeBlock.i.i.i5:                            ; preds = %main_bb63
  %Pivot.i.i.i4 = icmp slt i32 %"166", 3
  br i1 %Pivot.i.i.i4, label %main_bb65, label %main_LeafBlock1.i.i.i7

main_bb65:                                        ; preds = %main_NodeBlock.i.i.i5
  store i32 %"166", i32* @"'__ste_client_idCounter1", align 4
  br label %main_setup_bob.exit.i

main_LeafBlock1.i.i.i7:                           ; preds = %main_NodeBlock.i.i.i5
  %SwitchLeaf2.i.i.i6 = icmp eq i32 %"166", 3
  br i1 %SwitchLeaf2.i.i.i6, label %main_bb66, label %main_setup_bob.exit.i

main_bb66:                                        ; preds = %main_LeafBlock1.i.i.i7
  store i32 %"166", i32* @"'__ste_client_idCounter2", align 4
  br label %main_setup_bob.exit.i

main_setup_bob.exit.i:                            ; preds = %main_bb66, %main_LeafBlock1.i.i.i7, %main_bb65, %main_bb64, %main_LeafBlock.i.i.i3
  %"167" = load i32* @"'bob", align 4
  %"168" = getelementptr [9 x i8]* @.str1, i32 0, i32 0
  %"169" = call i32 (i8*, ...)* @printf(i8* %"168", i32 %"167") #5
  store i32 2, i32* @"'rjh", align 4
  %"170" = load i32* @"'rjh", align 4
  %Pivot4.i.i8.i = icmp slt i32 %"170", 2
  br i1 %Pivot4.i.i8.i, label %main_LeafBlock.i.i10.i, label %main_NodeBlock.i.i12.i

main_LeafBlock.i.i10.i:                           ; preds = %main_setup_bob.exit.i
  %SwitchLeaf.i.i9.i = icmp eq i32 %"170", 1
  br i1 %SwitchLeaf.i.i9.i, label %main_bb67, label %main_setup_rjh.exit.i

main_bb67:                                        ; preds = %main_LeafBlock.i.i10.i
  store i32 %"170", i32* @"'__ste_client_idCounter0", align 4
  br label %main_setup_rjh.exit.i

main_NodeBlock.i.i12.i:                           ; preds = %main_setup_bob.exit.i
  %Pivot.i.i11.i = icmp slt i32 %"170", 3
  br i1 %Pivot.i.i11.i, label %main_bb68, label %main_LeafBlock1.i.i14.i

main_bb68:                                        ; preds = %main_NodeBlock.i.i12.i
  store i32 %"170", i32* @"'__ste_client_idCounter1", align 4
  br label %main_setup_rjh.exit.i

main_LeafBlock1.i.i14.i:                          ; preds = %main_NodeBlock.i.i12.i
  %SwitchLeaf2.i.i13.i = icmp eq i32 %"170", 3
  br i1 %SwitchLeaf2.i.i13.i, label %main_bb69, label %main_setup_rjh.exit.i

main_bb69:                                        ; preds = %main_LeafBlock1.i.i14.i
  store i32 %"170", i32* @"'__ste_client_idCounter2", align 4
  br label %main_setup_rjh.exit.i

main_setup_rjh.exit.i:                            ; preds = %main_bb69, %main_LeafBlock1.i.i14.i, %main_bb68, %main_bb67, %main_LeafBlock.i.i10.i
  %"171" = load i32* @"'rjh", align 4
  %"172" = getelementptr [9 x i8]* @.str2, i32 0, i32 0
  %"173" = call i32 (i8*, ...)* @printf(i8* %"172", i32 %"171") #5
  store i32 3, i32* @"'chuck", align 4
  %"174" = load i32* @"'chuck", align 4
  %Pivot4.i.i1.i = icmp slt i32 %"174", 2
  br i1 %Pivot4.i.i1.i, label %main_LeafBlock.i.i3.i, label %main_NodeBlock.i.i5.i

main_LeafBlock.i.i3.i:                            ; preds = %main_setup_rjh.exit.i
  %SwitchLeaf.i.i2.i = icmp eq i32 %"174", 1
  br i1 %SwitchLeaf.i.i2.i, label %main_bb70, label %main_setup.exit

main_bb70:                                        ; preds = %main_LeafBlock.i.i3.i
  store i32 %"174", i32* @"'__ste_client_idCounter0", align 4
  br label %main_setup.exit

main_NodeBlock.i.i5.i:                            ; preds = %main_setup_rjh.exit.i
  %Pivot.i.i4.i = icmp slt i32 %"174", 3
  br i1 %Pivot.i.i4.i, label %main_bb71, label %main_LeafBlock1.i.i7.i

main_bb71:                                        ; preds = %main_NodeBlock.i.i5.i
  store i32 %"174", i32* @"'__ste_client_idCounter1", align 4
  br label %main_setup.exit

main_LeafBlock1.i.i7.i:                           ; preds = %main_NodeBlock.i.i5.i
  %SwitchLeaf2.i.i6.i = icmp eq i32 %"174", 3
  br i1 %SwitchLeaf2.i.i6.i, label %main_bb72, label %main_setup.exit

main_bb72:                                        ; preds = %main_LeafBlock1.i.i7.i
  store i32 %"174", i32* @"'__ste_client_idCounter2", align 4
  br label %main_setup.exit

main_setup.exit:                                  ; preds = %main_LeafBlock.i.i3.i, %main_bb70, %main_bb71, %main_LeafBlock1.i.i7.i, %main_bb72
  %"175" = load i32* @"'chuck", align 4
  %"176" = getelementptr [11 x i8]* @.str3, i32 0, i32 0
  %"177" = call i32 (i8*, ...)* @printf(i8* %"176", i32 %"175") #5
  br label %main_rjhEnableForwarding.exit.i

main_rjhEnableForwarding.exit.i:                  ; preds = %main_bb98, %main_bb96, %main_bb94, %main_bb92, %main_bb90, %main_bb88, %main_LeafBlock1.i.i.i, %main_bb87, %main_bb86, %main_LeafBlock.i.i.i, %main_bb82, %main_bb80, %main_bb78, %main_bb76, %main_bb74, %main_setup.exit
  %splverifierCounter.0.i = phi i32 [ 0, %main_setup.exit ], [ %"179", %main_bb76 ], [ %"179", %main_bb80 ], [ %"179", %main_bb88 ], [ %"179", %main_LeafBlock1.i.i.i ], [ %"179", %main_bb87 ], [ %"179", %main_bb86 ], [ %"179", %main_LeafBlock.i.i.i ], [ %"179", %main_bb92 ], [ %"179", %main_bb96 ], [ %"179", %main_bb98 ], [ %"179", %main_bb94 ], [ %"179", %main_bb90 ], [ %"179", %main_bb82 ], [ %"179", %main_bb78 ], [ %"179", %main_bb74 ]
  %op11.0.i = phi i32 [ 0, %main_setup.exit ], [ %op11.0.i, %main_bb74 ], [ %op11.0.i, %main_bb76 ], [ %op11.0.i, %main_bb78 ], [ %op11.0.i, %main_bb80 ], [ %op11.0.i, %main_bb82 ], [ %op11.0.i, %main_bb88 ], [ %op11.0.i, %main_LeafBlock1.i.i.i ], [ %op11.0.i, %main_bb87 ], [ %op11.0.i, %main_bb86 ], [ %op11.0.i, %main_LeafBlock.i.i.i ], [ %op11.0.i, %main_bb90 ], [ %op11.0.i, %main_bb92 ], [ %op11.0.i, %main_bb94 ], [ %op11.0.i, %main_bb96 ], [ 1, %main_bb98 ]
  %op10.0.i = phi i32 [ 0, %main_setup.exit ], [ %op10.0.i, %main_bb74 ], [ %op10.0.i, %main_bb76 ], [ %op10.0.i, %main_bb78 ], [ %op10.0.i, %main_bb80 ], [ %op10.0.i, %main_bb82 ], [ %op10.0.i, %main_bb88 ], [ %op10.0.i, %main_LeafBlock1.i.i.i ], [ %op10.0.i, %main_bb87 ], [ %op10.0.i, %main_bb86 ], [ %op10.0.i, %main_LeafBlock.i.i.i ], [ %op10.0.i, %main_bb90 ], [ %op10.0.i, %main_bb92 ], [ %op10.0.i, %main_bb94 ], [ 1, %main_bb96 ], [ %op10.0.i, %main_bb98 ]
  %op9.0.i = phi i32 [ 0, %main_setup.exit ], [ %op9.0.i, %main_bb74 ], [ %op9.0.i, %main_bb76 ], [ %op9.0.i, %main_bb78 ], [ %op9.0.i, %main_bb80 ], [ %op9.0.i, %main_bb82 ], [ %op9.0.i, %main_bb88 ], [ %op9.0.i, %main_LeafBlock1.i.i.i ], [ %op9.0.i, %main_bb87 ], [ %op9.0.i, %main_bb86 ], [ %op9.0.i, %main_LeafBlock.i.i.i ], [ %op9.0.i, %main_bb90 ], [ %op9.0.i, %main_bb92 ], [ 1, %main_bb94 ], [ %op9.0.i, %main_bb98 ], [ %op9.0.i, %main_bb96 ]
  %op8.0.i = phi i32 [ 0, %main_setup.exit ], [ %op8.0.i, %main_bb74 ], [ %op8.0.i, %main_bb76 ], [ %op8.0.i, %main_bb78 ], [ %op8.0.i, %main_bb80 ], [ %op8.0.i, %main_bb82 ], [ %op8.0.i, %main_bb88 ], [ %op8.0.i, %main_LeafBlock1.i.i.i ], [ %op8.0.i, %main_bb87 ], [ %op8.0.i, %main_bb86 ], [ %op8.0.i, %main_LeafBlock.i.i.i ], [ %op8.0.i, %main_bb90 ], [ 1, %main_bb92 ], [ %op8.0.i, %main_bb96 ], [ %op8.0.i, %main_bb98 ], [ %op8.0.i, %main_bb94 ]
  %op7.0.i = phi i32 [ 0, %main_setup.exit ], [ %op7.0.i, %main_bb74 ], [ %op7.0.i, %main_bb76 ], [ %op7.0.i, %main_bb78 ], [ %op7.0.i, %main_bb80 ], [ %op7.0.i, %main_bb82 ], [ %op7.0.i, %main_bb88 ], [ %op7.0.i, %main_LeafBlock1.i.i.i ], [ %op7.0.i, %main_bb87 ], [ %op7.0.i, %main_bb86 ], [ %op7.0.i, %main_LeafBlock.i.i.i ], [ 1, %main_bb90 ], [ %op7.0.i, %main_bb94 ], [ %op7.0.i, %main_bb98 ], [ %op7.0.i, %main_bb96 ], [ %op7.0.i, %main_bb92 ]
  %op6.0.i = phi i32 [ 0, %main_setup.exit ], [ %op6.0.i, %main_bb74 ], [ %op6.0.i, %main_bb76 ], [ %op6.0.i, %main_bb78 ], [ %op6.0.i, %main_bb80 ], [ %op6.0.i, %main_bb82 ], [ 1, %main_bb88 ], [ 1, %main_LeafBlock1.i.i.i ], [ 1, %main_bb87 ], [ 1, %main_bb86 ], [ 1, %main_LeafBlock.i.i.i ], [ %op6.0.i, %main_bb92 ], [ %op6.0.i, %main_bb96 ], [ %op6.0.i, %main_bb98 ], [ %op6.0.i, %main_bb94 ], [ %op6.0.i, %main_bb90 ]
  %op5.0.i = phi i32 [ 0, %main_setup.exit ], [ %op5.0.i, %main_bb74 ], [ %op5.0.i, %main_bb76 ], [ %op5.0.i, %main_bb78 ], [ %op5.0.i, %main_bb80 ], [ 1, %main_bb82 ], [ %op5.0.i, %main_bb90 ], [ %op5.0.i, %main_bb94 ], [ %op5.0.i, %main_bb98 ], [ %op5.0.i, %main_bb96 ], [ %op5.0.i, %main_bb92 ], [ %op5.0.i, %main_LeafBlock.i.i.i ], [ %op5.0.i, %main_bb86 ], [ %op5.0.i, %main_bb87 ], [ %op5.0.i, %main_LeafBlock1.i.i.i ], [ %op5.0.i, %main_bb88 ]
  %op4.0.i = phi i32 [ 0, %main_setup.exit ], [ %op4.0.i, %main_bb74 ], [ %op4.0.i, %main_bb76 ], [ %op4.0.i, %main_bb78 ], [ 1, %main_bb80 ], [ %op4.0.i, %main_bb88 ], [ %op4.0.i, %main_LeafBlock1.i.i.i ], [ %op4.0.i, %main_bb87 ], [ %op4.0.i, %main_bb86 ], [ %op4.0.i, %main_LeafBlock.i.i.i ], [ %op4.0.i, %main_bb92 ], [ %op4.0.i, %main_bb96 ], [ %op4.0.i, %main_bb98 ], [ %op4.0.i, %main_bb94 ], [ %op4.0.i, %main_bb90 ], [ %op4.0.i, %main_bb82 ]
  %op3.0.i = phi i32 [ 0, %main_setup.exit ], [ %op3.0.i, %main_bb74 ], [ %op3.0.i, %main_bb76 ], [ 1, %main_bb78 ], [ %op3.0.i, %main_bb82 ], [ %op3.0.i, %main_bb90 ], [ %op3.0.i, %main_bb94 ], [ %op3.0.i, %main_bb98 ], [ %op3.0.i, %main_bb96 ], [ %op3.0.i, %main_bb92 ], [ %op3.0.i, %main_LeafBlock.i.i.i ], [ %op3.0.i, %main_bb86 ], [ %op3.0.i, %main_bb87 ], [ %op3.0.i, %main_LeafBlock1.i.i.i ], [ %op3.0.i, %main_bb88 ], [ %op3.0.i, %main_bb80 ]
  %op2.0.i = phi i32 [ 0, %main_setup.exit ], [ %op2.0.i, %main_bb74 ], [ 1, %main_bb76 ], [ %op2.0.i, %main_bb80 ], [ %op2.0.i, %main_bb88 ], [ %op2.0.i, %main_LeafBlock1.i.i.i ], [ %op2.0.i, %main_bb87 ], [ %op2.0.i, %main_bb86 ], [ %op2.0.i, %main_LeafBlock.i.i.i ], [ %op2.0.i, %main_bb92 ], [ %op2.0.i, %main_bb96 ], [ %op2.0.i, %main_bb98 ], [ %op2.0.i, %main_bb94 ], [ %op2.0.i, %main_bb90 ], [ %op2.0.i, %main_bb82 ], [ %op2.0.i, %main_bb78 ]
  %op1.0.i = phi i32 [ 0, %main_setup.exit ], [ 1, %main_bb74 ], [ %op1.0.i, %main_bb78 ], [ %op1.0.i, %main_bb82 ], [ %op1.0.i, %main_bb90 ], [ %op1.0.i, %main_bb94 ], [ %op1.0.i, %main_bb98 ], [ %op1.0.i, %main_bb96 ], [ %op1.0.i, %main_bb92 ], [ %op1.0.i, %main_LeafBlock.i.i.i ], [ %op1.0.i, %main_bb86 ], [ %op1.0.i, %main_bb87 ], [ %op1.0.i, %main_LeafBlock1.i.i.i ], [ %op1.0.i, %main_bb88 ], [ %op1.0.i, %main_bb80 ], [ %op1.0.i, %main_bb76 ]
  %"178" = icmp slt i32 %splverifierCounter.0.i, 4
  br i1 %"178", label %main_bb73, label %main_bb99

main_bb73:                                        ; preds = %main_rjhEnableForwarding.exit.i
  %"179" = add nsw i32 %splverifierCounter.0.i, 1
  %"180" = icmp ne i32 %op1.0.i, 0
  br i1 %"180", label %main_bb75, label %main_bb74

main_bb74:                                        ; preds = %main_bb73
  %"181" = call i32 @__VERIFIER_nondet_int() #5
  %"182" = icmp ne i32 %"181", 0
  br i1 %"182", label %main_rjhEnableForwarding.exit.i, label %main_bb75

main_bb75:                                        ; preds = %main_bb74, %main_bb73
  %"183" = icmp ne i32 %op2.0.i, 0
  br i1 %"183", label %main_bb77, label %main_bb76

main_bb76:                                        ; preds = %main_bb75
  %"184" = call i32 @__VERIFIER_nondet_int() #5
  %"185" = icmp ne i32 %"184", 0
  br i1 %"185", label %main_rjhEnableForwarding.exit.i, label %main_bb77

main_bb77:                                        ; preds = %main_bb76, %main_bb75
  %"186" = icmp ne i32 %op3.0.i, 0
  br i1 %"186", label %main_bb79, label %main_bb78

main_bb78:                                        ; preds = %main_bb77
  %"187" = call i32 @__VERIFIER_nondet_int() #5
  %"188" = icmp ne i32 %"187", 0
  br i1 %"188", label %main_rjhEnableForwarding.exit.i, label %main_bb79

main_bb79:                                        ; preds = %main_bb78, %main_bb77
  %"189" = icmp ne i32 %op4.0.i, 0
  br i1 %"189", label %main_bb81, label %main_bb80

main_bb80:                                        ; preds = %main_bb79
  %"190" = call i32 @__VERIFIER_nondet_int() #5
  %"191" = icmp ne i32 %"190", 0
  br i1 %"191", label %main_rjhEnableForwarding.exit.i, label %main_bb81

main_bb81:                                        ; preds = %main_bb80, %main_bb79
  %"192" = icmp ne i32 %op5.0.i, 0
  br i1 %"192", label %main_bb83, label %main_bb82

main_bb82:                                        ; preds = %main_bb81
  %"193" = call i32 @__VERIFIER_nondet_int() #5
  %"194" = icmp ne i32 %"193", 0
  br i1 %"194", label %main_rjhEnableForwarding.exit.i, label %main_bb83

main_bb83:                                        ; preds = %main_bb82, %main_bb81
  %"195" = icmp ne i32 %op6.0.i, 0
  br i1 %"195", label %main_bb89, label %main_bb84

main_bb84:                                        ; preds = %main_bb83
  %"196" = call i32 @__VERIFIER_nondet_int() #5
  %"197" = icmp ne i32 %"196", 0
  br i1 %"197", label %main_bb85, label %main_bb89

main_bb85:                                        ; preds = %main_bb84
  %"198" = load i32* @"'rjh", align 4
  %"199" = load i32* @"'chuck", align 4
  %Pivot4.i.i.i = icmp slt i32 %"198", 2
  br i1 %Pivot4.i.i.i, label %main_LeafBlock.i.i.i, label %main_NodeBlock.i.i.i

main_LeafBlock.i.i.i:                             ; preds = %main_bb85
  %SwitchLeaf.i.i.i = icmp eq i32 %"198", 1
  br i1 %SwitchLeaf.i.i.i, label %main_bb86, label %main_rjhEnableForwarding.exit.i

main_bb86:                                        ; preds = %main_LeafBlock.i.i.i
  store i32 %"199", i32* @"'__ste_client_forwardReceiver0", align 4
  br label %main_rjhEnableForwarding.exit.i

main_NodeBlock.i.i.i:                             ; preds = %main_bb85
  %Pivot.i.i.i = icmp slt i32 %"198", 3
  br i1 %Pivot.i.i.i, label %main_bb87, label %main_LeafBlock1.i.i.i

main_bb87:                                        ; preds = %main_NodeBlock.i.i.i
  store i32 %"199", i32* @"'__ste_client_forwardReceiver1", align 4
  br label %main_rjhEnableForwarding.exit.i

main_LeafBlock1.i.i.i:                            ; preds = %main_NodeBlock.i.i.i
  %SwitchLeaf2.i.i.i = icmp eq i32 %"198", 3
  br i1 %SwitchLeaf2.i.i.i, label %main_bb88, label %main_rjhEnableForwarding.exit.i

main_bb88:                                        ; preds = %main_LeafBlock1.i.i.i
  store i32 %"199", i32* @"'__ste_client_forwardReceiver2", align 4
  br label %main_rjhEnableForwarding.exit.i

main_bb89:                                        ; preds = %main_bb84, %main_bb83
  %"200" = icmp ne i32 %op7.0.i, 0
  br i1 %"200", label %main_bb91, label %main_bb90

main_bb90:                                        ; preds = %main_bb89
  %"201" = call i32 @__VERIFIER_nondet_int() #5
  %"202" = icmp ne i32 %"201", 0
  br i1 %"202", label %main_rjhEnableForwarding.exit.i, label %main_bb91

main_bb91:                                        ; preds = %main_bb90, %main_bb89
  %"203" = icmp ne i32 %op8.0.i, 0
  br i1 %"203", label %main_bb93, label %main_bb92

main_bb92:                                        ; preds = %main_bb91
  %"204" = call i32 @__VERIFIER_nondet_int() #5
  %"205" = icmp ne i32 %"204", 0
  br i1 %"205", label %main_rjhEnableForwarding.exit.i, label %main_bb93

main_bb93:                                        ; preds = %main_bb92, %main_bb91
  %"206" = icmp ne i32 %op9.0.i, 0
  br i1 %"206", label %main_bb95, label %main_bb94

main_bb94:                                        ; preds = %main_bb93
  %"207" = call i32 @__VERIFIER_nondet_int() #5
  %"208" = icmp ne i32 %"207", 0
  br i1 %"208", label %main_rjhEnableForwarding.exit.i, label %main_bb95

main_bb95:                                        ; preds = %main_bb94, %main_bb93
  %"209" = icmp ne i32 %op10.0.i, 0
  br i1 %"209", label %main_bb97, label %main_bb96

main_bb96:                                        ; preds = %main_bb95
  %"210" = call i32 @__VERIFIER_nondet_int() #5
  %"211" = icmp ne i32 %"210", 0
  br i1 %"211", label %main_rjhEnableForwarding.exit.i, label %main_bb97

main_bb97:                                        ; preds = %main_bb96, %main_bb95
  %"212" = icmp ne i32 %op11.0.i, 0
  br i1 %"212", label %main_bb99, label %main_bb98

main_bb98:                                        ; preds = %main_bb97
  %"213" = call i32 @__VERIFIER_nondet_int() #5
  %"214" = icmp ne i32 %"213", 0
  br i1 %"214", label %main_rjhEnableForwarding.exit.i, label %main_bb99

main_bb99:                                        ; preds = %main_bb98, %main_bb97, %main_rjhEnableForwarding.exit.i
  %"215" = getelementptr [44 x i8]* @.str, i32 0, i32 0
  %"216" = call i32 @puts(i8* %"215") #5
  %"217" = load i32* @"'bob", align 4
  %"218" = load i32* @"'rjh", align 4
  store i32 0, i32* @"'__ste_email_from0", align 4
  store i32 %"218", i32* @"'__ste_email_to0", align 4
  %Pivot4.i.i.i.i.i = icmp slt i32 %"217", 2
  br i1 %Pivot4.i.i.i.i.i, label %main_LeafBlock.i.i.i.i.i, label %main_NodeBlock.i.i.i.i.i

main_LeafBlock.i.i.i.i.i:                         ; preds = %main_bb99
  %SwitchLeaf.i.i.i.i.i = icmp eq i32 %"217", 1
  %"219" = load i32* @"'__ste_client_idCounter0", align 4
  %..i.i.i.i = select i1 %SwitchLeaf.i.i.i.i.i, i32 %"219", i32 0
  br label %main_getClientId.exit.i.i.i.i

main_NodeBlock.i.i.i.i.i:                         ; preds = %main_bb99
  %Pivot.i.i.i.i.i = icmp slt i32 %"217", 3
  br i1 %Pivot.i.i.i.i.i, label %main_bb100, label %main_LeafBlock1.i.i.i.i.i

main_bb100:                                       ; preds = %main_NodeBlock.i.i.i.i.i
  %"220" = load i32* @"'__ste_client_idCounter1", align 4
  br label %main_getClientId.exit.i.i.i.i

main_LeafBlock1.i.i.i.i.i:                        ; preds = %main_NodeBlock.i.i.i.i.i
  %SwitchLeaf2.i.i.i.i.i = icmp eq i32 %"217", 3
  %"221" = load i32* @"'__ste_client_idCounter2", align 4
  %.8.i.i.i.i = select i1 %SwitchLeaf2.i.i.i.i.i, i32 %"221", i32 0
  br label %main_getClientId.exit.i.i.i.i

main_getClientId.exit.i.i.i.i:                    ; preds = %main_LeafBlock1.i.i.i.i.i, %main_bb100, %main_LeafBlock.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %"220", %main_bb100 ], [ %..i.i.i.i, %main_LeafBlock.i.i.i.i.i ], [ %.8.i.i.i.i, %main_LeafBlock1.i.i.i.i.i ]
  store i32 %.0.i.i.i.i.i, i32* @"'__ste_email_from0", align 4
  %"222" = getelementptr [10 x i8]* @.str8, i32 0, i32 0
  %"223" = call i32 @puts(i8* %"222") #5
  %"224" = load i32* @"'__ste_email_to0", align 4
  %"225" = getelementptr [16 x i8]* @.str9, i32 0, i32 0
  %"226" = call i32 @puts(i8* %"225") #5
  %Pivot4.i.i.i.i.i.i.i = icmp slt i32 %"224", 2
  br i1 %Pivot4.i.i.i.i.i.i.i, label %main_LeafBlock.i.i.i.i.i.i.i, label %main_NodeBlock.i.i.i.i.i.i.i

main_LeafBlock.i.i.i.i.i.i.i:                     ; preds = %main_getClientId.exit.i.i.i.i
  %SwitchLeaf.i.i.i.i.i.i.i = icmp eq i32 %"224", 1
  %"227" = load i32* @"'__ste_client_forwardReceiver0", align 4
  %..i.i.i.i.i.i = select i1 %SwitchLeaf.i.i.i.i.i.i.i, i32 %"227", i32 0
  br label %main_getClientForwardReceiver.exit.i.i.i.i.i.i

main_NodeBlock.i.i.i.i.i.i.i:                     ; preds = %main_getClientId.exit.i.i.i.i
  %Pivot.i.i.i.i.i.i.i = icmp slt i32 %"224", 3
  br i1 %Pivot.i.i.i.i.i.i.i, label %main_bb101, label %main_LeafBlock1.i.i.i.i.i.i.i

main_bb101:                                       ; preds = %main_NodeBlock.i.i.i.i.i.i.i
  %"228" = load i32* @"'__ste_client_forwardReceiver1", align 4
  br label %main_getClientForwardReceiver.exit.i.i.i.i.i.i

main_LeafBlock1.i.i.i.i.i.i.i:                    ; preds = %main_NodeBlock.i.i.i.i.i.i.i
  %SwitchLeaf2.i.i.i.i.i.i.i = icmp eq i32 %"224", 3
  %"229" = load i32* @"'__ste_client_forwardReceiver2", align 4
  %.8.i.i.i.i.i.i = select i1 %SwitchLeaf2.i.i.i.i.i.i.i, i32 %"229", i32 0
  br label %main_getClientForwardReceiver.exit.i.i.i.i.i.i

main_getClientForwardReceiver.exit.i.i.i.i.i.i:   ; preds = %main_LeafBlock1.i.i.i.i.i.i.i, %main_bb101, %main_LeafBlock.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %"228", %main_bb101 ], [ %..i.i.i.i.i.i, %main_LeafBlock.i.i.i.i.i.i.i ], [ %.8.i.i.i.i.i.i, %main_LeafBlock1.i.i.i.i.i.i.i ]
  %"230" = icmp ne i32 %.0.i.i.i.i.i.i.i, 0
  br i1 %"230", label %main_bb102, label %main_sendEmail.exit.i.i

main_bb102:                                       ; preds = %main_getClientForwardReceiver.exit.i.i.i.i.i.i
  store i32 %.0.i.i.i.i.i.i.i, i32* @"'__ste_email_to0", align 4
  call void @__utac_acc__DecryptForward_spec__1(i32 1) #5
  %"231" = getelementptr [21 x i8]* @.str10, i32 0, i32 0
  %"232" = call i32 @puts(i8* %"231") #5
  %"233" = load i32* @"'__ste_email_id0", align 4
  %"234" = getelementptr [10 x i8]* @.str12, i32 0, i32 0
  %"235" = call i32 (i8*, ...)* @printf(i8* %"234", i32 %"233") #5
  %"236" = load i32* @"'__ste_email_from0", align 4
  %"237" = getelementptr [12 x i8]* @.str13, i32 0, i32 0
  %"238" = call i32 (i8*, ...)* @printf(i8* %"237", i32 %"236") #5
  %"239" = load i32* @"'__ste_email_to0", align 4
  %"240" = getelementptr [10 x i8]* @.str14, i32 0, i32 0
  %"241" = call i32 (i8*, ...)* @printf(i8* %"240", i32 %"239") #5
  %"242" = getelementptr [18 x i8]* @.str15, i32 0, i32 0
  %"243" = call i32 (i8*, ...)* @printf(i8* %"242", i32 1) #5
  store i32 0, i32* @"'queue_empty", align 4
  store i32 1, i32* @"'queued_message", align 4
  store i32 %"224", i32* @"'queued_client", align 4
  br label %main_sendEmail.exit.i.i

main_sendEmail.exit.i.i:                          ; preds = %main_bb102, %main_getClientForwardReceiver.exit.i.i.i.i.i.i
  %"244" = load i32* @"'queue_empty", align 4
  %"245" = icmp ne i32 %"244", 0
  br i1 %"245", label %main_test.exit, label %main_bb103

main_bb103:                                       ; preds = %main_sendEmail.exit.i.i
  %"246" = load i32* @"'queued_message", align 4
  %"247" = load i32* @"'queued_client", align 4
  %Pivot4.i.i.i.i = icmp slt i32 %"247", 2
  br i1 %Pivot4.i.i.i.i, label %main_LeafBlock.i.i.i.i, label %main_NodeBlock.i.i.i.i

main_LeafBlock.i.i.i.i:                           ; preds = %main_bb103
  %SwitchLeaf.i.i.i.i = icmp eq i32 %"247", 1
  %"248" = load i32* @"'__ste_client_idCounter0", align 4
  %..i.i.i = select i1 %SwitchLeaf.i.i.i.i, i32 %"248", i32 0
  br label %main_getClientId.exit.i.i.i

main_NodeBlock.i.i.i.i:                           ; preds = %main_bb103
  %Pivot.i.i.i.i = icmp slt i32 %"247", 3
  br i1 %Pivot.i.i.i.i, label %main_bb104, label %main_LeafBlock1.i.i.i.i

main_bb104:                                       ; preds = %main_NodeBlock.i.i.i.i
  %"249" = load i32* @"'__ste_client_idCounter1", align 4
  br label %main_getClientId.exit.i.i.i

main_LeafBlock1.i.i.i.i:                          ; preds = %main_NodeBlock.i.i.i.i
  %SwitchLeaf2.i.i.i.i = icmp eq i32 %"247", 3
  %"250" = load i32* @"'__ste_client_idCounter2", align 4
  %.8.i.i.i = select i1 %SwitchLeaf2.i.i.i.i, i32 %"250", i32 0
  br label %main_getClientId.exit.i.i.i

main_getClientId.exit.i.i.i:                      ; preds = %main_LeafBlock1.i.i.i.i, %main_bb104, %main_LeafBlock.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %"249", %main_bb104 ], [ %..i.i.i, %main_LeafBlock.i.i.i.i ], [ %.8.i.i.i, %main_LeafBlock1.i.i.i.i ]
  %Pivot.i1.i.i.i = icmp slt i32 %"246", 2
  br i1 %Pivot.i1.i.i.i, label %main_LeafBlock.i4.i.i.i, label %main_LeafBlock1.i6.i.i.i

main_LeafBlock.i4.i.i.i:                          ; preds = %main_getClientId.exit.i.i.i
  %SwitchLeaf.i3.i.i.i = icmp eq i32 %"246", 1
  br i1 %SwitchLeaf.i3.i.i.i, label %main_bb105, label %main_setEmailFrom.exit.i.i.i

main_bb105:                                       ; preds = %main_LeafBlock.i4.i.i.i
  store i32 %.0.i.i.i.i, i32* @"'__ste_email_from0", align 4
  br label %main_setEmailFrom.exit.i.i.i

main_LeafBlock1.i6.i.i.i:                         ; preds = %main_getClientId.exit.i.i.i
  %SwitchLeaf2.i5.i.i.i = icmp eq i32 %"246", 2
  br i1 %SwitchLeaf2.i5.i.i.i, label %main_bb106, label %main_setEmailFrom.exit.i.i.i

main_bb106:                                       ; preds = %main_LeafBlock1.i6.i.i.i
  store i32 %.0.i.i.i.i, i32* @"'__ste_email_from1", align 4
  br label %main_setEmailFrom.exit.i.i.i

main_setEmailFrom.exit.i.i.i:                     ; preds = %main_bb106, %main_LeafBlock1.i6.i.i.i, %main_bb105, %main_LeafBlock.i4.i.i.i
  %"251" = getelementptr [10 x i8]* @.str8, i32 0, i32 0
  %"252" = call i32 @puts(i8* %"251") #5
  %Pivot.i.i.i1.i.i = icmp slt i32 %"246", 2
  br i1 %Pivot.i.i.i1.i.i, label %main_LeafBlock.i.i.i4.i.i, label %main_LeafBlock1.i.i.i6.i.i

main_LeafBlock.i.i.i4.i.i:                        ; preds = %main_setEmailFrom.exit.i.i.i
  %SwitchLeaf.i.i.i2.i.i = icmp eq i32 %"246", 1
  %"253" = load i32* @"'__ste_email_to0", align 4
  %..i.i3.i.i = select i1 %SwitchLeaf.i.i.i2.i.i, i32 %"253", i32 0
  br label %main_getEmailTo.exit.i.i.i.i

main_LeafBlock1.i.i.i6.i.i:                       ; preds = %main_setEmailFrom.exit.i.i.i
  %SwitchLeaf2.i.i.i5.i.i = icmp eq i32 %"246", 2
  %"254" = load i32* @"'__ste_email_to1", align 4
  %.1.i.i.i.i = select i1 %SwitchLeaf2.i.i.i5.i.i, i32 %"254", i32 0
  br label %main_getEmailTo.exit.i.i.i.i

main_getEmailTo.exit.i.i.i.i:                     ; preds = %main_LeafBlock1.i.i.i6.i.i, %main_LeafBlock.i.i.i4.i.i
  %.0.i.i.i7.i.i = phi i32 [ %..i.i3.i.i, %main_LeafBlock.i.i.i4.i.i ], [ %.1.i.i.i.i, %main_LeafBlock1.i.i.i6.i.i ]
  %"255" = getelementptr [16 x i8]* @.str9, i32 0, i32 0
  %"256" = call i32 @puts(i8* %"255") #5
  %Pivot4.i.i.i.i.i.i = icmp slt i32 %.0.i.i.i7.i.i, 2
  br i1 %Pivot4.i.i.i.i.i.i, label %main_LeafBlock.i.i.i.i.i.i, label %main_NodeBlock.i.i.i.i.i.i

main_LeafBlock.i.i.i.i.i.i:                       ; preds = %main_getEmailTo.exit.i.i.i.i
  %SwitchLeaf.i.i.i.i.i.i = icmp eq i32 %.0.i.i.i7.i.i, 1
  %"257" = load i32* @"'__ste_client_forwardReceiver0", align 4
  %..i.i.i.i.i = select i1 %SwitchLeaf.i.i.i.i.i.i, i32 %"257", i32 0
  br label %main_getClientForwardReceiver.exit.i.i.i.i.i

main_NodeBlock.i.i.i.i.i.i:                       ; preds = %main_getEmailTo.exit.i.i.i.i
  %Pivot.i.i.i.i.i.i = icmp slt i32 %.0.i.i.i7.i.i, 3
  br i1 %Pivot.i.i.i.i.i.i, label %main_bb107, label %main_LeafBlock1.i.i.i.i.i.i

main_bb107:                                       ; preds = %main_NodeBlock.i.i.i.i.i.i
  %"258" = load i32* @"'__ste_client_forwardReceiver1", align 4
  br label %main_getClientForwardReceiver.exit.i.i.i.i.i

main_LeafBlock1.i.i.i.i.i.i:                      ; preds = %main_NodeBlock.i.i.i.i.i.i
  %SwitchLeaf2.i.i.i.i.i.i = icmp eq i32 %.0.i.i.i7.i.i, 3
  %"259" = load i32* @"'__ste_client_forwardReceiver2", align 4
  %.8.i.i.i.i.i = select i1 %SwitchLeaf2.i.i.i.i.i.i, i32 %"259", i32 0
  br label %main_getClientForwardReceiver.exit.i.i.i.i.i

main_getClientForwardReceiver.exit.i.i.i.i.i:     ; preds = %main_LeafBlock1.i.i.i.i.i.i, %main_bb107, %main_LeafBlock.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %"258", %main_bb107 ], [ %..i.i.i.i.i, %main_LeafBlock.i.i.i.i.i.i ], [ %.8.i.i.i.i.i, %main_LeafBlock1.i.i.i.i.i.i ]
  %"260" = icmp ne i32 %.0.i.i.i.i.i.i, 0
  br i1 %"260", label %main_bb108, label %main_test.exit

main_bb108:                                       ; preds = %main_getClientForwardReceiver.exit.i.i.i.i.i
  %Pivot.i1.i.i.i.i.i = icmp slt i32 %"246", 2
  br i1 %Pivot.i1.i.i.i.i.i, label %main_LeafBlock.i4.i.i.i.i.i, label %main_LeafBlock1.i6.i.i.i.i.i

main_LeafBlock.i4.i.i.i.i.i:                      ; preds = %main_bb108
  %SwitchLeaf.i3.i.i.i.i.i = icmp eq i32 %"246", 1
  br i1 %SwitchLeaf.i3.i.i.i.i.i, label %main_bb109, label %main_setEmailTo.exit.i.i.i.i.i

main_bb109:                                       ; preds = %main_LeafBlock.i4.i.i.i.i.i
  store i32 %.0.i.i.i.i.i.i, i32* @"'__ste_email_to0", align 4
  br label %main_setEmailTo.exit.i.i.i.i.i

main_LeafBlock1.i6.i.i.i.i.i:                     ; preds = %main_bb108
  %SwitchLeaf2.i5.i.i.i.i.i = icmp eq i32 %"246", 2
  br i1 %SwitchLeaf2.i5.i.i.i.i.i, label %main_bb110, label %main_setEmailTo.exit.i.i.i.i.i

main_bb110:                                       ; preds = %main_LeafBlock1.i6.i.i.i.i.i
  store i32 %.0.i.i.i.i.i.i, i32* @"'__ste_email_to1", align 4
  br label %main_setEmailTo.exit.i.i.i.i.i

main_setEmailTo.exit.i.i.i.i.i:                   ; preds = %main_bb110, %main_LeafBlock1.i6.i.i.i.i.i, %main_bb109, %main_LeafBlock.i4.i.i.i.i.i
  call void @__utac_acc__DecryptForward_spec__1(i32 %"246") #5
  %"261" = getelementptr [21 x i8]* @.str10, i32 0, i32 0
  %"262" = call i32 @puts(i8* %"261") #5
  %Pivot.i.i.i.i.i.i.i.i = icmp slt i32 %"246", 2
  br i1 %Pivot.i.i.i.i.i.i.i.i, label %main_LeafBlock.i.i.i.i.i.i.i.i, label %main_LeafBlock1.i.i.i.i.i.i.i.i

main_LeafBlock.i.i.i.i.i.i.i.i:                   ; preds = %main_setEmailTo.exit.i.i.i.i.i
  %SwitchLeaf.i.i.i.i.i.i.i.i = icmp eq i32 %"246", 1
  %"263" = load i32* @"'__ste_email_id0", align 4
  %..i.i.i.i.i.i.i = select i1 %SwitchLeaf.i.i.i.i.i.i.i.i, i32 %"263", i32 0
  br label %main_getEmailId.exit.i.i.i.i.i.i.i

main_LeafBlock1.i.i.i.i.i.i.i.i:                  ; preds = %main_setEmailTo.exit.i.i.i.i.i
  %SwitchLeaf2.i.i.i.i.i.i.i.i = icmp eq i32 %"246", 2
  %"264" = load i32* @"'__ste_email_id1", align 4
  %.15.i.i.i.i.i.i.i = select i1 %SwitchLeaf2.i.i.i.i.i.i.i.i, i32 %"264", i32 0
  br label %main_getEmailId.exit.i.i.i.i.i.i.i

main_getEmailId.exit.i.i.i.i.i.i.i:               ; preds = %main_LeafBlock1.i.i.i.i.i.i.i.i, %main_LeafBlock.i.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i = phi i32 [ %..i.i.i.i.i.i.i, %main_LeafBlock.i.i.i.i.i.i.i.i ], [ %.15.i.i.i.i.i.i.i, %main_LeafBlock1.i.i.i.i.i.i.i.i ]
  %"265" = getelementptr [10 x i8]* @.str12, i32 0, i32 0
  %"266" = call i32 (i8*, ...)* @printf(i8* %"265", i32 %.0.i.i.i.i.i.i.i.i) #5
  %Pivot.i8.i.i.i.i.i.i.i = icmp slt i32 %"246", 2
  br i1 %Pivot.i8.i.i.i.i.i.i.i, label %main_LeafBlock.i10.i.i.i.i.i.i.i, label %main_LeafBlock1.i12.i.i.i.i.i.i.i

main_LeafBlock.i10.i.i.i.i.i.i.i:                 ; preds = %main_getEmailId.exit.i.i.i.i.i.i.i
  %SwitchLeaf.i9.i.i.i.i.i.i.i = icmp eq i32 %"246", 1
  %"267" = load i32* @"'__ste_email_from0", align 4
  %.16.i.i.i.i.i.i.i = select i1 %SwitchLeaf.i9.i.i.i.i.i.i.i, i32 %"267", i32 0
  br label %main_getEmailFrom.exit.i.i.i.i.i.i.i

main_LeafBlock1.i12.i.i.i.i.i.i.i:                ; preds = %main_getEmailId.exit.i.i.i.i.i.i.i
  %SwitchLeaf2.i11.i.i.i.i.i.i.i = icmp eq i32 %"246", 2
  %"268" = load i32* @"'__ste_email_from1", align 4
  %.17.i.i.i.i.i.i.i = select i1 %SwitchLeaf2.i11.i.i.i.i.i.i.i, i32 %"268", i32 0
  br label %main_getEmailFrom.exit.i.i.i.i.i.i.i

main_getEmailFrom.exit.i.i.i.i.i.i.i:             ; preds = %main_LeafBlock1.i12.i.i.i.i.i.i.i, %main_LeafBlock.i10.i.i.i.i.i.i.i
  %.0.i14.i.i.i.i.i.i.i = phi i32 [ %.16.i.i.i.i.i.i.i, %main_LeafBlock.i10.i.i.i.i.i.i.i ], [ %.17.i.i.i.i.i.i.i, %main_LeafBlock1.i12.i.i.i.i.i.i.i ]
  %"269" = getelementptr [12 x i8]* @.str13, i32 0, i32 0
  %"270" = call i32 (i8*, ...)* @printf(i8* %"269", i32 %.0.i14.i.i.i.i.i.i.i) #5
  %Pivot.i1.i.i.i.i.i.i.i = icmp slt i32 %"246", 2
  br i1 %Pivot.i1.i.i.i.i.i.i.i, label %main_LeafBlock.i3.i.i.i.i.i.i.i, label %main_LeafBlock1.i5.i.i.i.i.i.i.i

main_LeafBlock.i3.i.i.i.i.i.i.i:                  ; preds = %main_getEmailFrom.exit.i.i.i.i.i.i.i
  %SwitchLeaf.i2.i.i.i.i.i.i.i = icmp eq i32 %"246", 1
  %"271" = load i32* @"'__ste_email_to0", align 4
  %.18.i.i.i.i.i.i.i = select i1 %SwitchLeaf.i2.i.i.i.i.i.i.i, i32 %"271", i32 0
  br label %main_forward.exit.i.i.i.i.i

main_LeafBlock1.i5.i.i.i.i.i.i.i:                 ; preds = %main_getEmailFrom.exit.i.i.i.i.i.i.i
  %SwitchLeaf2.i4.i.i.i.i.i.i.i = icmp eq i32 %"246", 2
  %"272" = load i32* @"'__ste_email_to1", align 4
  %.19.i.i.i.i.i.i.i = select i1 %SwitchLeaf2.i4.i.i.i.i.i.i.i, i32 %"272", i32 0
  br label %main_forward.exit.i.i.i.i.i

main_forward.exit.i.i.i.i.i:                      ; preds = %main_LeafBlock1.i5.i.i.i.i.i.i.i, %main_LeafBlock.i3.i.i.i.i.i.i.i
  %.0.i7.i.i.i.i.i.i.i = phi i32 [ %.18.i.i.i.i.i.i.i, %main_LeafBlock.i3.i.i.i.i.i.i.i ], [ %.19.i.i.i.i.i.i.i, %main_LeafBlock1.i5.i.i.i.i.i.i.i ]
  %"273" = getelementptr [10 x i8]* @.str14, i32 0, i32 0
  %"274" = call i32 (i8*, ...)* @printf(i8* %"273", i32 %.0.i7.i.i.i.i.i.i.i) #5
  %"275" = getelementptr [18 x i8]* @.str15, i32 0, i32 0
  %"276" = call i32 (i8*, ...)* @printf(i8* %"275", i32 1) #5
  store i32 0, i32* @"'queue_empty", align 4
  store i32 %"246", i32* @"'queued_message", align 4
  store i32 %.0.i.i.i7.i.i, i32* @"'queued_client", align 4
  br label %main_test.exit

main_test.exit:                                   ; preds = %main_bb62, %main_forward.exit.i.i.i.i.i, %main_getClientForwardReceiver.exit.i.i.i.i.i, %main_sendEmail.exit.i.i
  ret i32 %"164"
}

; Function Attrs: nounwind uwtable
define void @select_helpers() #0 {
select_helpers_bb111:
  ret void
}

; Function Attrs: nounwind uwtable
define void @select_features() #0 {
select_features_bb112:
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @valid_product() #0 {
valid_product_bb113:
  ret i32 1
}

; Function Attrs: nounwind uwtable
define void @test() #0 {
test_bb114:
  br label %test_rjhEnableForwarding.exit

test_rjhEnableForwarding.exit:                    ; preds = %test_bb116, %test_bb120, %test_bb124, %test_bb132, %test_bb136, %test_bb140, %test_bb138, %test_bb134, %test_LeafBlock.i.i, %test_bb128, %test_bb129, %test_LeafBlock1.i.i, %test_bb130, %test_bb122, %test_bb118, %test_bb114
  %splverifierCounter.0 = phi i32 [ 0, %test_bb114 ], [ %"278", %test_bb118 ], [ %"278", %test_bb122 ], [ %"278", %test_bb130 ], [ %"278", %test_LeafBlock1.i.i ], [ %"278", %test_bb129 ], [ %"278", %test_bb128 ], [ %"278", %test_LeafBlock.i.i ], [ %"278", %test_bb134 ], [ %"278", %test_bb138 ], [ %"278", %test_bb140 ], [ %"278", %test_bb136 ], [ %"278", %test_bb132 ], [ %"278", %test_bb124 ], [ %"278", %test_bb120 ], [ %"278", %test_bb116 ]
  %op11.0 = phi i32 [ 0, %test_bb114 ], [ %op11.0, %test_bb116 ], [ %op11.0, %test_bb118 ], [ %op11.0, %test_bb120 ], [ %op11.0, %test_bb122 ], [ %op11.0, %test_bb124 ], [ %op11.0, %test_bb130 ], [ %op11.0, %test_LeafBlock1.i.i ], [ %op11.0, %test_bb129 ], [ %op11.0, %test_bb128 ], [ %op11.0, %test_LeafBlock.i.i ], [ %op11.0, %test_bb132 ], [ %op11.0, %test_bb134 ], [ %op11.0, %test_bb136 ], [ %op11.0, %test_bb138 ], [ 1, %test_bb140 ]
  %op10.0 = phi i32 [ 0, %test_bb114 ], [ %op10.0, %test_bb116 ], [ %op10.0, %test_bb118 ], [ %op10.0, %test_bb120 ], [ %op10.0, %test_bb122 ], [ %op10.0, %test_bb124 ], [ %op10.0, %test_bb130 ], [ %op10.0, %test_LeafBlock1.i.i ], [ %op10.0, %test_bb129 ], [ %op10.0, %test_bb128 ], [ %op10.0, %test_LeafBlock.i.i ], [ %op10.0, %test_bb132 ], [ %op10.0, %test_bb134 ], [ %op10.0, %test_bb136 ], [ 1, %test_bb138 ], [ %op10.0, %test_bb140 ]
  %op9.0 = phi i32 [ 0, %test_bb114 ], [ %op9.0, %test_bb116 ], [ %op9.0, %test_bb118 ], [ %op9.0, %test_bb120 ], [ %op9.0, %test_bb122 ], [ %op9.0, %test_bb124 ], [ %op9.0, %test_bb130 ], [ %op9.0, %test_LeafBlock1.i.i ], [ %op9.0, %test_bb129 ], [ %op9.0, %test_bb128 ], [ %op9.0, %test_LeafBlock.i.i ], [ %op9.0, %test_bb132 ], [ %op9.0, %test_bb134 ], [ 1, %test_bb136 ], [ %op9.0, %test_bb140 ], [ %op9.0, %test_bb138 ]
  %op8.0 = phi i32 [ 0, %test_bb114 ], [ %op8.0, %test_bb116 ], [ %op8.0, %test_bb118 ], [ %op8.0, %test_bb120 ], [ %op8.0, %test_bb122 ], [ %op8.0, %test_bb124 ], [ %op8.0, %test_bb130 ], [ %op8.0, %test_LeafBlock1.i.i ], [ %op8.0, %test_bb129 ], [ %op8.0, %test_bb128 ], [ %op8.0, %test_LeafBlock.i.i ], [ %op8.0, %test_bb132 ], [ 1, %test_bb134 ], [ %op8.0, %test_bb138 ], [ %op8.0, %test_bb140 ], [ %op8.0, %test_bb136 ]
  %op7.0 = phi i32 [ 0, %test_bb114 ], [ %op7.0, %test_bb116 ], [ %op7.0, %test_bb118 ], [ %op7.0, %test_bb120 ], [ %op7.0, %test_bb122 ], [ %op7.0, %test_bb124 ], [ %op7.0, %test_bb130 ], [ %op7.0, %test_LeafBlock1.i.i ], [ %op7.0, %test_bb129 ], [ %op7.0, %test_bb128 ], [ %op7.0, %test_LeafBlock.i.i ], [ 1, %test_bb132 ], [ %op7.0, %test_bb136 ], [ %op7.0, %test_bb140 ], [ %op7.0, %test_bb138 ], [ %op7.0, %test_bb134 ]
  %op6.0 = phi i32 [ 0, %test_bb114 ], [ %op6.0, %test_bb116 ], [ %op6.0, %test_bb118 ], [ %op6.0, %test_bb120 ], [ %op6.0, %test_bb122 ], [ %op6.0, %test_bb124 ], [ 1, %test_bb130 ], [ 1, %test_LeafBlock1.i.i ], [ 1, %test_bb129 ], [ 1, %test_bb128 ], [ 1, %test_LeafBlock.i.i ], [ %op6.0, %test_bb134 ], [ %op6.0, %test_bb138 ], [ %op6.0, %test_bb140 ], [ %op6.0, %test_bb136 ], [ %op6.0, %test_bb132 ]
  %op5.0 = phi i32 [ 0, %test_bb114 ], [ %op5.0, %test_bb116 ], [ %op5.0, %test_bb118 ], [ %op5.0, %test_bb120 ], [ %op5.0, %test_bb122 ], [ 1, %test_bb124 ], [ %op5.0, %test_bb132 ], [ %op5.0, %test_bb136 ], [ %op5.0, %test_bb140 ], [ %op5.0, %test_bb138 ], [ %op5.0, %test_bb134 ], [ %op5.0, %test_LeafBlock.i.i ], [ %op5.0, %test_bb128 ], [ %op5.0, %test_bb129 ], [ %op5.0, %test_LeafBlock1.i.i ], [ %op5.0, %test_bb130 ]
  %op4.0 = phi i32 [ 0, %test_bb114 ], [ %op4.0, %test_bb116 ], [ %op4.0, %test_bb118 ], [ %op4.0, %test_bb120 ], [ 1, %test_bb122 ], [ %op4.0, %test_bb130 ], [ %op4.0, %test_LeafBlock1.i.i ], [ %op4.0, %test_bb129 ], [ %op4.0, %test_bb128 ], [ %op4.0, %test_LeafBlock.i.i ], [ %op4.0, %test_bb134 ], [ %op4.0, %test_bb138 ], [ %op4.0, %test_bb140 ], [ %op4.0, %test_bb136 ], [ %op4.0, %test_bb132 ], [ %op4.0, %test_bb124 ]
  %op3.0 = phi i32 [ 0, %test_bb114 ], [ %op3.0, %test_bb116 ], [ %op3.0, %test_bb118 ], [ 1, %test_bb120 ], [ %op3.0, %test_bb124 ], [ %op3.0, %test_bb132 ], [ %op3.0, %test_bb136 ], [ %op3.0, %test_bb140 ], [ %op3.0, %test_bb138 ], [ %op3.0, %test_bb134 ], [ %op3.0, %test_LeafBlock.i.i ], [ %op3.0, %test_bb128 ], [ %op3.0, %test_bb129 ], [ %op3.0, %test_LeafBlock1.i.i ], [ %op3.0, %test_bb130 ], [ %op3.0, %test_bb122 ]
  %op2.0 = phi i32 [ 0, %test_bb114 ], [ %op2.0, %test_bb116 ], [ 1, %test_bb118 ], [ %op2.0, %test_bb122 ], [ %op2.0, %test_bb130 ], [ %op2.0, %test_LeafBlock1.i.i ], [ %op2.0, %test_bb129 ], [ %op2.0, %test_bb128 ], [ %op2.0, %test_LeafBlock.i.i ], [ %op2.0, %test_bb134 ], [ %op2.0, %test_bb138 ], [ %op2.0, %test_bb140 ], [ %op2.0, %test_bb136 ], [ %op2.0, %test_bb132 ], [ %op2.0, %test_bb124 ], [ %op2.0, %test_bb120 ]
  %op1.0 = phi i32 [ 0, %test_bb114 ], [ 1, %test_bb116 ], [ %op1.0, %test_bb120 ], [ %op1.0, %test_bb124 ], [ %op1.0, %test_bb132 ], [ %op1.0, %test_bb136 ], [ %op1.0, %test_bb140 ], [ %op1.0, %test_bb138 ], [ %op1.0, %test_bb134 ], [ %op1.0, %test_LeafBlock.i.i ], [ %op1.0, %test_bb128 ], [ %op1.0, %test_bb129 ], [ %op1.0, %test_LeafBlock1.i.i ], [ %op1.0, %test_bb130 ], [ %op1.0, %test_bb122 ], [ %op1.0, %test_bb118 ]
  %"277" = icmp slt i32 %splverifierCounter.0, 4
  br i1 %"277", label %test_bb115, label %test_bb141

test_bb115:                                       ; preds = %test_rjhEnableForwarding.exit
  %"278" = add nsw i32 %splverifierCounter.0, 1
  %"279" = icmp ne i32 %op1.0, 0
  br i1 %"279", label %test_bb117, label %test_bb116

test_bb116:                                       ; preds = %test_bb115
  %"280" = call i32 @__VERIFIER_nondet_int()
  %"281" = icmp ne i32 %"280", 0
  br i1 %"281", label %test_rjhEnableForwarding.exit, label %test_bb117

test_bb117:                                       ; preds = %test_bb115, %test_bb116
  %"282" = icmp ne i32 %op2.0, 0
  br i1 %"282", label %test_bb119, label %test_bb118

test_bb118:                                       ; preds = %test_bb117
  %"283" = call i32 @__VERIFIER_nondet_int()
  %"284" = icmp ne i32 %"283", 0
  br i1 %"284", label %test_rjhEnableForwarding.exit, label %test_bb119

test_bb119:                                       ; preds = %test_bb117, %test_bb118
  %"285" = icmp ne i32 %op3.0, 0
  br i1 %"285", label %test_bb121, label %test_bb120

test_bb120:                                       ; preds = %test_bb119
  %"286" = call i32 @__VERIFIER_nondet_int()
  %"287" = icmp ne i32 %"286", 0
  br i1 %"287", label %test_rjhEnableForwarding.exit, label %test_bb121

test_bb121:                                       ; preds = %test_bb119, %test_bb120
  %"288" = icmp ne i32 %op4.0, 0
  br i1 %"288", label %test_bb123, label %test_bb122

test_bb122:                                       ; preds = %test_bb121
  %"289" = call i32 @__VERIFIER_nondet_int()
  %"290" = icmp ne i32 %"289", 0
  br i1 %"290", label %test_rjhEnableForwarding.exit, label %test_bb123

test_bb123:                                       ; preds = %test_bb121, %test_bb122
  %"291" = icmp ne i32 %op5.0, 0
  br i1 %"291", label %test_bb125, label %test_bb124

test_bb124:                                       ; preds = %test_bb123
  %"292" = call i32 @__VERIFIER_nondet_int()
  %"293" = icmp ne i32 %"292", 0
  br i1 %"293", label %test_rjhEnableForwarding.exit, label %test_bb125

test_bb125:                                       ; preds = %test_bb123, %test_bb124
  %"294" = icmp ne i32 %op6.0, 0
  br i1 %"294", label %test_bb131, label %test_bb126

test_bb126:                                       ; preds = %test_bb125
  %"295" = call i32 @__VERIFIER_nondet_int()
  %"296" = icmp ne i32 %"295", 0
  br i1 %"296", label %test_bb127, label %test_bb131

test_bb127:                                       ; preds = %test_bb126
  %"297" = load i32* @"'rjh", align 4
  %"298" = load i32* @"'chuck", align 4
  %Pivot4.i.i = icmp slt i32 %"297", 2
  br i1 %Pivot4.i.i, label %test_LeafBlock.i.i, label %test_NodeBlock.i.i

test_LeafBlock.i.i:                               ; preds = %test_bb127
  %SwitchLeaf.i.i = icmp eq i32 %"297", 1
  br i1 %SwitchLeaf.i.i, label %test_bb128, label %test_rjhEnableForwarding.exit

test_bb128:                                       ; preds = %test_LeafBlock.i.i
  store i32 %"298", i32* @"'__ste_client_forwardReceiver0", align 4
  br label %test_rjhEnableForwarding.exit

test_NodeBlock.i.i:                               ; preds = %test_bb127
  %Pivot.i.i = icmp slt i32 %"297", 3
  br i1 %Pivot.i.i, label %test_bb129, label %test_LeafBlock1.i.i

test_bb129:                                       ; preds = %test_NodeBlock.i.i
  store i32 %"298", i32* @"'__ste_client_forwardReceiver1", align 4
  br label %test_rjhEnableForwarding.exit

test_LeafBlock1.i.i:                              ; preds = %test_NodeBlock.i.i
  %SwitchLeaf2.i.i = icmp eq i32 %"297", 3
  br i1 %SwitchLeaf2.i.i, label %test_bb130, label %test_rjhEnableForwarding.exit

test_bb130:                                       ; preds = %test_LeafBlock1.i.i
  store i32 %"298", i32* @"'__ste_client_forwardReceiver2", align 4
  br label %test_rjhEnableForwarding.exit

test_bb131:                                       ; preds = %test_bb125, %test_bb126
  %"299" = icmp ne i32 %op7.0, 0
  br i1 %"299", label %test_bb133, label %test_bb132

test_bb132:                                       ; preds = %test_bb131
  %"300" = call i32 @__VERIFIER_nondet_int()
  %"301" = icmp ne i32 %"300", 0
  br i1 %"301", label %test_rjhEnableForwarding.exit, label %test_bb133

test_bb133:                                       ; preds = %test_bb131, %test_bb132
  %"302" = icmp ne i32 %op8.0, 0
  br i1 %"302", label %test_bb135, label %test_bb134

test_bb134:                                       ; preds = %test_bb133
  %"303" = call i32 @__VERIFIER_nondet_int()
  %"304" = icmp ne i32 %"303", 0
  br i1 %"304", label %test_rjhEnableForwarding.exit, label %test_bb135

test_bb135:                                       ; preds = %test_bb133, %test_bb134
  %"305" = icmp ne i32 %op9.0, 0
  br i1 %"305", label %test_bb137, label %test_bb136

test_bb136:                                       ; preds = %test_bb135
  %"306" = call i32 @__VERIFIER_nondet_int()
  %"307" = icmp ne i32 %"306", 0
  br i1 %"307", label %test_rjhEnableForwarding.exit, label %test_bb137

test_bb137:                                       ; preds = %test_bb135, %test_bb136
  %"308" = icmp ne i32 %op10.0, 0
  br i1 %"308", label %test_bb139, label %test_bb138

test_bb138:                                       ; preds = %test_bb137
  %"309" = call i32 @__VERIFIER_nondet_int()
  %"310" = icmp ne i32 %"309", 0
  br i1 %"310", label %test_rjhEnableForwarding.exit, label %test_bb139

test_bb139:                                       ; preds = %test_bb137, %test_bb138
  %"311" = icmp ne i32 %op11.0, 0
  br i1 %"311", label %test_bb141, label %test_bb140

test_bb140:                                       ; preds = %test_bb139
  %"312" = call i32 @__VERIFIER_nondet_int()
  %"313" = icmp ne i32 %"312", 0
  br i1 %"313", label %test_rjhEnableForwarding.exit, label %test_bb141

test_bb141:                                       ; preds = %test_bb139, %test_bb140, %test_rjhEnableForwarding.exit
  %"314" = getelementptr [44 x i8]* @.str, i32 0, i32 0
  %"315" = call i32 @puts(i8* %"314") #5
  %"316" = load i32* @"'bob", align 4
  %"317" = load i32* @"'rjh", align 4
  store i32 0, i32* @"'__ste_email_from0", align 4
  store i32 %"317", i32* @"'__ste_email_to0", align 4
  %Pivot4.i.i.i.i = icmp slt i32 %"316", 2
  br i1 %Pivot4.i.i.i.i, label %test_LeafBlock.i.i.i.i, label %test_NodeBlock.i.i.i.i

test_LeafBlock.i.i.i.i:                           ; preds = %test_bb141
  %SwitchLeaf.i.i.i.i = icmp eq i32 %"316", 1
  %"318" = load i32* @"'__ste_client_idCounter0", align 4
  %..i.i.i = select i1 %SwitchLeaf.i.i.i.i, i32 %"318", i32 0
  br label %test_getClientId.exit.i.i.i

test_NodeBlock.i.i.i.i:                           ; preds = %test_bb141
  %Pivot.i.i.i.i = icmp slt i32 %"316", 3
  br i1 %Pivot.i.i.i.i, label %test_bb142, label %test_LeafBlock1.i.i.i.i

test_bb142:                                       ; preds = %test_NodeBlock.i.i.i.i
  %"319" = load i32* @"'__ste_client_idCounter1", align 4
  br label %test_getClientId.exit.i.i.i

test_LeafBlock1.i.i.i.i:                          ; preds = %test_NodeBlock.i.i.i.i
  %SwitchLeaf2.i.i.i.i = icmp eq i32 %"316", 3
  %"320" = load i32* @"'__ste_client_idCounter2", align 4
  %.8.i.i.i = select i1 %SwitchLeaf2.i.i.i.i, i32 %"320", i32 0
  br label %test_getClientId.exit.i.i.i

test_getClientId.exit.i.i.i:                      ; preds = %test_LeafBlock1.i.i.i.i, %test_bb142, %test_LeafBlock.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %"319", %test_bb142 ], [ %..i.i.i, %test_LeafBlock.i.i.i.i ], [ %.8.i.i.i, %test_LeafBlock1.i.i.i.i ]
  store i32 %.0.i.i.i.i, i32* @"'__ste_email_from0", align 4
  %"321" = getelementptr [10 x i8]* @.str8, i32 0, i32 0
  %"322" = call i32 @puts(i8* %"321") #5
  %"323" = load i32* @"'__ste_email_to0", align 4
  %"324" = getelementptr [16 x i8]* @.str9, i32 0, i32 0
  %"325" = call i32 @puts(i8* %"324") #5
  %Pivot4.i.i.i.i.i.i = icmp slt i32 %"323", 2
  br i1 %Pivot4.i.i.i.i.i.i, label %test_LeafBlock.i.i.i.i.i.i, label %test_NodeBlock.i.i.i.i.i.i

test_LeafBlock.i.i.i.i.i.i:                       ; preds = %test_getClientId.exit.i.i.i
  %SwitchLeaf.i.i.i.i.i.i = icmp eq i32 %"323", 1
  %"326" = load i32* @"'__ste_client_forwardReceiver0", align 4
  %..i.i.i.i.i = select i1 %SwitchLeaf.i.i.i.i.i.i, i32 %"326", i32 0
  br label %test_getClientForwardReceiver.exit.i.i.i.i.i

test_NodeBlock.i.i.i.i.i.i:                       ; preds = %test_getClientId.exit.i.i.i
  %Pivot.i.i.i.i.i.i = icmp slt i32 %"323", 3
  br i1 %Pivot.i.i.i.i.i.i, label %test_bb143, label %test_LeafBlock1.i.i.i.i.i.i

test_bb143:                                       ; preds = %test_NodeBlock.i.i.i.i.i.i
  %"327" = load i32* @"'__ste_client_forwardReceiver1", align 4
  br label %test_getClientForwardReceiver.exit.i.i.i.i.i

test_LeafBlock1.i.i.i.i.i.i:                      ; preds = %test_NodeBlock.i.i.i.i.i.i
  %SwitchLeaf2.i.i.i.i.i.i = icmp eq i32 %"323", 3
  %"328" = load i32* @"'__ste_client_forwardReceiver2", align 4
  %.8.i.i.i.i.i = select i1 %SwitchLeaf2.i.i.i.i.i.i, i32 %"328", i32 0
  br label %test_getClientForwardReceiver.exit.i.i.i.i.i

test_getClientForwardReceiver.exit.i.i.i.i.i:     ; preds = %test_LeafBlock1.i.i.i.i.i.i, %test_bb143, %test_LeafBlock.i.i.i.i.i.i
  %.0.i.i.i.i.i.i = phi i32 [ %"327", %test_bb143 ], [ %..i.i.i.i.i, %test_LeafBlock.i.i.i.i.i.i ], [ %.8.i.i.i.i.i, %test_LeafBlock1.i.i.i.i.i.i ]
  %"329" = icmp ne i32 %.0.i.i.i.i.i.i, 0
  br i1 %"329", label %test_bb144, label %test_sendEmail.exit.i

test_bb144:                                       ; preds = %test_getClientForwardReceiver.exit.i.i.i.i.i
  store i32 %.0.i.i.i.i.i.i, i32* @"'__ste_email_to0", align 4
  call void @__utac_acc__DecryptForward_spec__1(i32 1) #5
  %"330" = getelementptr [21 x i8]* @.str10, i32 0, i32 0
  %"331" = call i32 @puts(i8* %"330") #5
  %"332" = load i32* @"'__ste_email_id0", align 4
  %"333" = getelementptr [10 x i8]* @.str12, i32 0, i32 0
  %"334" = call i32 (i8*, ...)* @printf(i8* %"333", i32 %"332") #5
  %"335" = load i32* @"'__ste_email_from0", align 4
  %"336" = getelementptr [12 x i8]* @.str13, i32 0, i32 0
  %"337" = call i32 (i8*, ...)* @printf(i8* %"336", i32 %"335") #5
  %"338" = load i32* @"'__ste_email_to0", align 4
  %"339" = getelementptr [10 x i8]* @.str14, i32 0, i32 0
  %"340" = call i32 (i8*, ...)* @printf(i8* %"339", i32 %"338") #5
  %"341" = getelementptr [18 x i8]* @.str15, i32 0, i32 0
  %"342" = call i32 (i8*, ...)* @printf(i8* %"341", i32 1) #5
  store i32 0, i32* @"'queue_empty", align 4
  store i32 1, i32* @"'queued_message", align 4
  store i32 %"323", i32* @"'queued_client", align 4
  br label %test_sendEmail.exit.i

test_sendEmail.exit.i:                            ; preds = %test_bb144, %test_getClientForwardReceiver.exit.i.i.i.i.i
  %"343" = load i32* @"'queue_empty", align 4
  %"344" = icmp ne i32 %"343", 0
  br i1 %"344", label %test_bobToRjh.exit, label %test_bb145

test_bb145:                                       ; preds = %test_sendEmail.exit.i
  %"345" = load i32* @"'queued_message", align 4
  %"346" = load i32* @"'queued_client", align 4
  %Pivot4.i.i.i = icmp slt i32 %"346", 2
  br i1 %Pivot4.i.i.i, label %test_LeafBlock.i.i.i, label %test_NodeBlock.i.i.i

test_LeafBlock.i.i.i:                             ; preds = %test_bb145
  %SwitchLeaf.i.i.i = icmp eq i32 %"346", 1
  %"347" = load i32* @"'__ste_client_idCounter0", align 4
  %..i.i = select i1 %SwitchLeaf.i.i.i, i32 %"347", i32 0
  br label %test_getClientId.exit.i.i

test_NodeBlock.i.i.i:                             ; preds = %test_bb145
  %Pivot.i.i.i = icmp slt i32 %"346", 3
  br i1 %Pivot.i.i.i, label %test_bb146, label %test_LeafBlock1.i.i.i

test_bb146:                                       ; preds = %test_NodeBlock.i.i.i
  %"348" = load i32* @"'__ste_client_idCounter1", align 4
  br label %test_getClientId.exit.i.i

test_LeafBlock1.i.i.i:                            ; preds = %test_NodeBlock.i.i.i
  %SwitchLeaf2.i.i.i = icmp eq i32 %"346", 3
  %"349" = load i32* @"'__ste_client_idCounter2", align 4
  %.8.i.i = select i1 %SwitchLeaf2.i.i.i, i32 %"349", i32 0
  br label %test_getClientId.exit.i.i

test_getClientId.exit.i.i:                        ; preds = %test_LeafBlock1.i.i.i, %test_bb146, %test_LeafBlock.i.i.i
  %.0.i.i.i = phi i32 [ %"348", %test_bb146 ], [ %..i.i, %test_LeafBlock.i.i.i ], [ %.8.i.i, %test_LeafBlock1.i.i.i ]
  %Pivot.i1.i.i = icmp slt i32 %"345", 2
  br i1 %Pivot.i1.i.i, label %test_LeafBlock.i4.i.i, label %test_LeafBlock1.i6.i.i

test_LeafBlock.i4.i.i:                            ; preds = %test_getClientId.exit.i.i
  %SwitchLeaf.i3.i.i = icmp eq i32 %"345", 1
  br i1 %SwitchLeaf.i3.i.i, label %test_bb147, label %test_setEmailFrom.exit.i.i

test_bb147:                                       ; preds = %test_LeafBlock.i4.i.i
  store i32 %.0.i.i.i, i32* @"'__ste_email_from0", align 4
  br label %test_setEmailFrom.exit.i.i

test_LeafBlock1.i6.i.i:                           ; preds = %test_getClientId.exit.i.i
  %SwitchLeaf2.i5.i.i = icmp eq i32 %"345", 2
  br i1 %SwitchLeaf2.i5.i.i, label %test_bb148, label %test_setEmailFrom.exit.i.i

test_bb148:                                       ; preds = %test_LeafBlock1.i6.i.i
  store i32 %.0.i.i.i, i32* @"'__ste_email_from1", align 4
  br label %test_setEmailFrom.exit.i.i

test_setEmailFrom.exit.i.i:                       ; preds = %test_bb148, %test_LeafBlock1.i6.i.i, %test_bb147, %test_LeafBlock.i4.i.i
  %"350" = getelementptr [10 x i8]* @.str8, i32 0, i32 0
  %"351" = call i32 @puts(i8* %"350") #5
  %Pivot.i.i.i1.i = icmp slt i32 %"345", 2
  br i1 %Pivot.i.i.i1.i, label %test_LeafBlock.i.i.i4.i, label %test_LeafBlock1.i.i.i6.i

test_LeafBlock.i.i.i4.i:                          ; preds = %test_setEmailFrom.exit.i.i
  %SwitchLeaf.i.i.i2.i = icmp eq i32 %"345", 1
  %"352" = load i32* @"'__ste_email_to0", align 4
  %..i.i3.i = select i1 %SwitchLeaf.i.i.i2.i, i32 %"352", i32 0
  br label %test_getEmailTo.exit.i.i.i

test_LeafBlock1.i.i.i6.i:                         ; preds = %test_setEmailFrom.exit.i.i
  %SwitchLeaf2.i.i.i5.i = icmp eq i32 %"345", 2
  %"353" = load i32* @"'__ste_email_to1", align 4
  %.1.i.i.i = select i1 %SwitchLeaf2.i.i.i5.i, i32 %"353", i32 0
  br label %test_getEmailTo.exit.i.i.i

test_getEmailTo.exit.i.i.i:                       ; preds = %test_LeafBlock1.i.i.i6.i, %test_LeafBlock.i.i.i4.i
  %.0.i.i.i7.i = phi i32 [ %..i.i3.i, %test_LeafBlock.i.i.i4.i ], [ %.1.i.i.i, %test_LeafBlock1.i.i.i6.i ]
  %"354" = getelementptr [16 x i8]* @.str9, i32 0, i32 0
  %"355" = call i32 @puts(i8* %"354") #5
  %Pivot4.i.i.i.i.i = icmp slt i32 %.0.i.i.i7.i, 2
  br i1 %Pivot4.i.i.i.i.i, label %test_LeafBlock.i.i.i.i.i, label %test_NodeBlock.i.i.i.i.i

test_LeafBlock.i.i.i.i.i:                         ; preds = %test_getEmailTo.exit.i.i.i
  %SwitchLeaf.i.i.i.i.i = icmp eq i32 %.0.i.i.i7.i, 1
  %"356" = load i32* @"'__ste_client_forwardReceiver0", align 4
  %..i.i.i.i = select i1 %SwitchLeaf.i.i.i.i.i, i32 %"356", i32 0
  br label %test_getClientForwardReceiver.exit.i.i.i.i

test_NodeBlock.i.i.i.i.i:                         ; preds = %test_getEmailTo.exit.i.i.i
  %Pivot.i.i.i.i.i = icmp slt i32 %.0.i.i.i7.i, 3
  br i1 %Pivot.i.i.i.i.i, label %test_bb149, label %test_LeafBlock1.i.i.i.i.i

test_bb149:                                       ; preds = %test_NodeBlock.i.i.i.i.i
  %"357" = load i32* @"'__ste_client_forwardReceiver1", align 4
  br label %test_getClientForwardReceiver.exit.i.i.i.i

test_LeafBlock1.i.i.i.i.i:                        ; preds = %test_NodeBlock.i.i.i.i.i
  %SwitchLeaf2.i.i.i.i.i = icmp eq i32 %.0.i.i.i7.i, 3
  %"358" = load i32* @"'__ste_client_forwardReceiver2", align 4
  %.8.i.i.i.i = select i1 %SwitchLeaf2.i.i.i.i.i, i32 %"358", i32 0
  br label %test_getClientForwardReceiver.exit.i.i.i.i

test_getClientForwardReceiver.exit.i.i.i.i:       ; preds = %test_LeafBlock1.i.i.i.i.i, %test_bb149, %test_LeafBlock.i.i.i.i.i
  %.0.i.i.i.i.i = phi i32 [ %"357", %test_bb149 ], [ %..i.i.i.i, %test_LeafBlock.i.i.i.i.i ], [ %.8.i.i.i.i, %test_LeafBlock1.i.i.i.i.i ]
  %"359" = icmp ne i32 %.0.i.i.i.i.i, 0
  br i1 %"359", label %test_bb150, label %test_bobToRjh.exit

test_bb150:                                       ; preds = %test_getClientForwardReceiver.exit.i.i.i.i
  %Pivot.i1.i.i.i.i = icmp slt i32 %"345", 2
  br i1 %Pivot.i1.i.i.i.i, label %test_LeafBlock.i4.i.i.i.i, label %test_LeafBlock1.i6.i.i.i.i

test_LeafBlock.i4.i.i.i.i:                        ; preds = %test_bb150
  %SwitchLeaf.i3.i.i.i.i = icmp eq i32 %"345", 1
  br i1 %SwitchLeaf.i3.i.i.i.i, label %test_bb151, label %test_setEmailTo.exit.i.i.i.i

test_bb151:                                       ; preds = %test_LeafBlock.i4.i.i.i.i
  store i32 %.0.i.i.i.i.i, i32* @"'__ste_email_to0", align 4
  br label %test_setEmailTo.exit.i.i.i.i

test_LeafBlock1.i6.i.i.i.i:                       ; preds = %test_bb150
  %SwitchLeaf2.i5.i.i.i.i = icmp eq i32 %"345", 2
  br i1 %SwitchLeaf2.i5.i.i.i.i, label %test_bb152, label %test_setEmailTo.exit.i.i.i.i

test_bb152:                                       ; preds = %test_LeafBlock1.i6.i.i.i.i
  store i32 %.0.i.i.i.i.i, i32* @"'__ste_email_to1", align 4
  br label %test_setEmailTo.exit.i.i.i.i

test_setEmailTo.exit.i.i.i.i:                     ; preds = %test_bb152, %test_LeafBlock1.i6.i.i.i.i, %test_bb151, %test_LeafBlock.i4.i.i.i.i
  call void @__utac_acc__DecryptForward_spec__1(i32 %"345") #5
  %"360" = getelementptr [21 x i8]* @.str10, i32 0, i32 0
  %"361" = call i32 @puts(i8* %"360") #5
  %Pivot.i.i.i.i.i.i.i = icmp slt i32 %"345", 2
  br i1 %Pivot.i.i.i.i.i.i.i, label %test_LeafBlock.i.i.i.i.i.i.i, label %test_LeafBlock1.i.i.i.i.i.i.i

test_LeafBlock.i.i.i.i.i.i.i:                     ; preds = %test_setEmailTo.exit.i.i.i.i
  %SwitchLeaf.i.i.i.i.i.i.i = icmp eq i32 %"345", 1
  %"362" = load i32* @"'__ste_email_id0", align 4
  %..i.i.i.i.i.i = select i1 %SwitchLeaf.i.i.i.i.i.i.i, i32 %"362", i32 0
  br label %test_getEmailId.exit.i.i.i.i.i.i

test_LeafBlock1.i.i.i.i.i.i.i:                    ; preds = %test_setEmailTo.exit.i.i.i.i
  %SwitchLeaf2.i.i.i.i.i.i.i = icmp eq i32 %"345", 2
  %"363" = load i32* @"'__ste_email_id1", align 4
  %.15.i.i.i.i.i.i = select i1 %SwitchLeaf2.i.i.i.i.i.i.i, i32 %"363", i32 0
  br label %test_getEmailId.exit.i.i.i.i.i.i

test_getEmailId.exit.i.i.i.i.i.i:                 ; preds = %test_LeafBlock1.i.i.i.i.i.i.i, %test_LeafBlock.i.i.i.i.i.i.i
  %.0.i.i.i.i.i.i.i = phi i32 [ %..i.i.i.i.i.i, %test_LeafBlock.i.i.i.i.i.i.i ], [ %.15.i.i.i.i.i.i, %test_LeafBlock1.i.i.i.i.i.i.i ]
  %"364" = getelementptr [10 x i8]* @.str12, i32 0, i32 0
  %"365" = call i32 (i8*, ...)* @printf(i8* %"364", i32 %.0.i.i.i.i.i.i.i) #5
  %Pivot.i8.i.i.i.i.i.i = icmp slt i32 %"345", 2
  br i1 %Pivot.i8.i.i.i.i.i.i, label %test_LeafBlock.i10.i.i.i.i.i.i, label %test_LeafBlock1.i12.i.i.i.i.i.i

test_LeafBlock.i10.i.i.i.i.i.i:                   ; preds = %test_getEmailId.exit.i.i.i.i.i.i
  %SwitchLeaf.i9.i.i.i.i.i.i = icmp eq i32 %"345", 1
  %"366" = load i32* @"'__ste_email_from0", align 4
  %.16.i.i.i.i.i.i = select i1 %SwitchLeaf.i9.i.i.i.i.i.i, i32 %"366", i32 0
  br label %test_getEmailFrom.exit.i.i.i.i.i.i

test_LeafBlock1.i12.i.i.i.i.i.i:                  ; preds = %test_getEmailId.exit.i.i.i.i.i.i
  %SwitchLeaf2.i11.i.i.i.i.i.i = icmp eq i32 %"345", 2
  %"367" = load i32* @"'__ste_email_from1", align 4
  %.17.i.i.i.i.i.i = select i1 %SwitchLeaf2.i11.i.i.i.i.i.i, i32 %"367", i32 0
  br label %test_getEmailFrom.exit.i.i.i.i.i.i

test_getEmailFrom.exit.i.i.i.i.i.i:               ; preds = %test_LeafBlock1.i12.i.i.i.i.i.i, %test_LeafBlock.i10.i.i.i.i.i.i
  %.0.i14.i.i.i.i.i.i = phi i32 [ %.16.i.i.i.i.i.i, %test_LeafBlock.i10.i.i.i.i.i.i ], [ %.17.i.i.i.i.i.i, %test_LeafBlock1.i12.i.i.i.i.i.i ]
  %"368" = getelementptr [12 x i8]* @.str13, i32 0, i32 0
  %"369" = call i32 (i8*, ...)* @printf(i8* %"368", i32 %.0.i14.i.i.i.i.i.i) #5
  %Pivot.i1.i.i.i.i.i.i = icmp slt i32 %"345", 2
  br i1 %Pivot.i1.i.i.i.i.i.i, label %test_LeafBlock.i3.i.i.i.i.i.i, label %test_LeafBlock1.i5.i.i.i.i.i.i

test_LeafBlock.i3.i.i.i.i.i.i:                    ; preds = %test_getEmailFrom.exit.i.i.i.i.i.i
  %SwitchLeaf.i2.i.i.i.i.i.i = icmp eq i32 %"345", 1
  %"370" = load i32* @"'__ste_email_to0", align 4
  %.18.i.i.i.i.i.i = select i1 %SwitchLeaf.i2.i.i.i.i.i.i, i32 %"370", i32 0
  br label %test_forward.exit.i.i.i.i

test_LeafBlock1.i5.i.i.i.i.i.i:                   ; preds = %test_getEmailFrom.exit.i.i.i.i.i.i
  %SwitchLeaf2.i4.i.i.i.i.i.i = icmp eq i32 %"345", 2
  %"371" = load i32* @"'__ste_email_to1", align 4
  %.19.i.i.i.i.i.i = select i1 %SwitchLeaf2.i4.i.i.i.i.i.i, i32 %"371", i32 0
  br label %test_forward.exit.i.i.i.i

test_forward.exit.i.i.i.i:                        ; preds = %test_LeafBlock1.i5.i.i.i.i.i.i, %test_LeafBlock.i3.i.i.i.i.i.i
  %.0.i7.i.i.i.i.i.i = phi i32 [ %.18.i.i.i.i.i.i, %test_LeafBlock.i3.i.i.i.i.i.i ], [ %.19.i.i.i.i.i.i, %test_LeafBlock1.i5.i.i.i.i.i.i ]
  %"372" = getelementptr [10 x i8]* @.str14, i32 0, i32 0
  %"373" = call i32 (i8*, ...)* @printf(i8* %"372", i32 %.0.i7.i.i.i.i.i.i) #5
  %"374" = getelementptr [18 x i8]* @.str15, i32 0, i32 0
  %"375" = call i32 (i8*, ...)* @printf(i8* %"374", i32 1) #5
  store i32 0, i32* @"'queue_empty", align 4
  store i32 %"345", i32* @"'queued_message", align 4
  store i32 %.0.i.i.i7.i, i32* @"'queued_client", align 4
  br label %test_bobToRjh.exit

test_bobToRjh.exit:                               ; preds = %test_sendEmail.exit.i, %test_getClientForwardReceiver.exit.i.i.i.i, %test_forward.exit.i.i.i.i
  ret void
}

; Function Attrs: nounwind uwtable
define void @rjhEnableForwarding() #0 {
rjhEnableForwarding_bb153:
  %"376" = load i32* @"'rjh", align 4
  %"377" = load i32* @"'chuck", align 4
  %Pivot4.i = icmp slt i32 %"376", 2
  br i1 %Pivot4.i, label %rjhEnableForwarding_LeafBlock.i, label %rjhEnableForwarding_NodeBlock.i

rjhEnableForwarding_LeafBlock.i:                  ; preds = %rjhEnableForwarding_bb153
  %SwitchLeaf.i = icmp eq i32 %"376", 1
  br i1 %SwitchLeaf.i, label %rjhEnableForwarding_bb154, label %rjhEnableForwarding_setClientForwardReceiver.exit

rjhEnableForwarding_bb154:                        ; preds = %rjhEnableForwarding_LeafBlock.i
  store i32 %"377", i32* @"'__ste_client_forwardReceiver0", align 4
  br label %rjhEnableForwarding_setClientForwardReceiver.exit

rjhEnableForwarding_NodeBlock.i:                  ; preds = %rjhEnableForwarding_bb153
  %Pivot.i = icmp slt i32 %"376", 3
  br i1 %Pivot.i, label %rjhEnableForwarding_bb155, label %rjhEnableForwarding_LeafBlock1.i

rjhEnableForwarding_bb155:                        ; preds = %rjhEnableForwarding_NodeBlock.i
  store i32 %"377", i32* @"'__ste_client_forwardReceiver1", align 4
  br label %rjhEnableForwarding_setClientForwardReceiver.exit

rjhEnableForwarding_LeafBlock1.i:                 ; preds = %rjhEnableForwarding_NodeBlock.i
  %SwitchLeaf2.i = icmp eq i32 %"376", 3
  br i1 %SwitchLeaf2.i, label %rjhEnableForwarding_bb156, label %rjhEnableForwarding_setClientForwardReceiver.exit

rjhEnableForwarding_bb156:                        ; preds = %rjhEnableForwarding_LeafBlock1.i
  store i32 %"377", i32* @"'__ste_client_forwardReceiver2", align 4
  br label %rjhEnableForwarding_setClientForwardReceiver.exit

rjhEnableForwarding_setClientForwardReceiver.exit: ; preds = %rjhEnableForwarding_LeafBlock.i, %rjhEnableForwarding_LeafBlock1.i, %rjhEnableForwarding_bb154, %rjhEnableForwarding_bb155, %rjhEnableForwarding_bb156
  ret void
}

; Function Attrs: nounwind uwtable
define void @setClientForwardReceiver(i32 %handle, i32 %value) #0 {
setClientForwardReceiver_bb157:
  br label %setClientForwardReceiver_NodeBlock3

setClientForwardReceiver_NodeBlock3:              ; preds = %setClientForwardReceiver_bb157
  %Pivot4 = icmp slt i32 %handle, 2
  br i1 %Pivot4, label %setClientForwardReceiver_LeafBlock, label %setClientForwardReceiver_NodeBlock

setClientForwardReceiver_LeafBlock:               ; preds = %setClientForwardReceiver_NodeBlock3
  %SwitchLeaf = icmp eq i32 %handle, 1
  br i1 %SwitchLeaf, label %setClientForwardReceiver_bb158, label %setClientForwardReceiver_NewDefault

setClientForwardReceiver_bb158:                   ; preds = %setClientForwardReceiver_LeafBlock
  store i32 %value, i32* @"'__ste_client_forwardReceiver0", align 4
  br label %setClientForwardReceiver_bb161

setClientForwardReceiver_NodeBlock:               ; preds = %setClientForwardReceiver_NodeBlock3
  %Pivot = icmp slt i32 %handle, 3
  br i1 %Pivot, label %setClientForwardReceiver_bb159, label %setClientForwardReceiver_LeafBlock1

setClientForwardReceiver_bb159:                   ; preds = %setClientForwardReceiver_NodeBlock
  store i32 %value, i32* @"'__ste_client_forwardReceiver1", align 4
  br label %setClientForwardReceiver_bb161

setClientForwardReceiver_LeafBlock1:              ; preds = %setClientForwardReceiver_NodeBlock
  %SwitchLeaf2 = icmp eq i32 %handle, 3
  br i1 %SwitchLeaf2, label %setClientForwardReceiver_bb160, label %setClientForwardReceiver_NewDefault

setClientForwardReceiver_bb160:                   ; preds = %setClientForwardReceiver_LeafBlock1
  store i32 %value, i32* @"'__ste_client_forwardReceiver2", align 4
  br label %setClientForwardReceiver_bb161

setClientForwardReceiver_NewDefault:              ; preds = %setClientForwardReceiver_LeafBlock1, %setClientForwardReceiver_LeafBlock
  br label %setClientForwardReceiver_bb161

setClientForwardReceiver_bb161:                   ; preds = %setClientForwardReceiver_NewDefault, %setClientForwardReceiver_bb159, %setClientForwardReceiver_bb160, %setClientForwardReceiver_bb158
  ret void
}

; Function Attrs: nounwind uwtable
define void @__automaton_fail() #0 {
__automaton_fail_bb162:
  call void (...)* @__VERIFIER_error() #6
  unreachable
}

; Function Attrs: noreturn
declare void @__VERIFIER_error(...) #2

declare i32 @__VERIFIER_nondet_int() #1

; Function Attrs: nounwind uwtable
define i32 @initEmail() #0 {
initEmail_bb163:
  %"378" = load i32* @"'__ste_Email_counter", align 4
  %"379" = icmp slt i32 %"378", 2
  br i1 %"379", label %initEmail_bb164, label %initEmail_bb165

initEmail_bb164:                                  ; preds = %initEmail_bb163
  %"380" = load i32* @"'__ste_Email_counter", align 4
  %"381" = add nsw i32 %"380", 1
  store i32 %"381", i32* @"'__ste_Email_counter", align 4
  %"382" = load i32* @"'__ste_Email_counter", align 4
  br label %initEmail_bb165

initEmail_bb165:                                  ; preds = %initEmail_bb163, %initEmail_bb164
  %.0 = phi i32 [ %"382", %initEmail_bb164 ], [ -1, %initEmail_bb163 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @getEmailId(i32 %handle) #0 {
getEmailId_bb166:
  br label %getEmailId_NodeBlock

getEmailId_NodeBlock:                             ; preds = %getEmailId_bb166
  %Pivot = icmp slt i32 %handle, 2
  br i1 %Pivot, label %getEmailId_LeafBlock, label %getEmailId_LeafBlock1

getEmailId_LeafBlock:                             ; preds = %getEmailId_NodeBlock
  %SwitchLeaf = icmp eq i32 %handle, 1
  br i1 %SwitchLeaf, label %getEmailId_bb167, label %getEmailId_NewDefault

getEmailId_bb167:                                 ; preds = %getEmailId_LeafBlock
  %"383" = load i32* @"'__ste_email_id0", align 4
  br label %getEmailId_bb169

getEmailId_LeafBlock1:                            ; preds = %getEmailId_NodeBlock
  %SwitchLeaf2 = icmp eq i32 %handle, 2
  br i1 %SwitchLeaf2, label %getEmailId_bb168, label %getEmailId_NewDefault

getEmailId_bb168:                                 ; preds = %getEmailId_LeafBlock1
  %"384" = load i32* @"'__ste_email_id1", align 4
  br label %getEmailId_bb169

getEmailId_NewDefault:                            ; preds = %getEmailId_LeafBlock1, %getEmailId_LeafBlock
  br label %getEmailId_bb169

getEmailId_bb169:                                 ; preds = %getEmailId_NewDefault, %getEmailId_bb168, %getEmailId_bb167
  %.0 = phi i32 [ %"383", %getEmailId_bb167 ], [ %"384", %getEmailId_bb168 ], [ 0, %getEmailId_NewDefault ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @setEmailId(i32 %handle, i32 %value) #0 {
setEmailId_bb170:
  br label %setEmailId_NodeBlock

setEmailId_NodeBlock:                             ; preds = %setEmailId_bb170
  %Pivot = icmp slt i32 %handle, 2
  br i1 %Pivot, label %setEmailId_LeafBlock, label %setEmailId_LeafBlock1

setEmailId_LeafBlock:                             ; preds = %setEmailId_NodeBlock
  %SwitchLeaf = icmp eq i32 %handle, 1
  br i1 %SwitchLeaf, label %setEmailId_bb171, label %setEmailId_NewDefault

setEmailId_bb171:                                 ; preds = %setEmailId_LeafBlock
  store i32 %value, i32* @"'__ste_email_id0", align 4
  br label %setEmailId_bb173

setEmailId_LeafBlock1:                            ; preds = %setEmailId_NodeBlock
  %SwitchLeaf2 = icmp eq i32 %handle, 2
  br i1 %SwitchLeaf2, label %setEmailId_bb172, label %setEmailId_NewDefault

setEmailId_bb172:                                 ; preds = %setEmailId_LeafBlock1
  store i32 %value, i32* @"'__ste_email_id1", align 4
  br label %setEmailId_bb173

setEmailId_NewDefault:                            ; preds = %setEmailId_LeafBlock1, %setEmailId_LeafBlock
  br label %setEmailId_bb173

setEmailId_bb173:                                 ; preds = %setEmailId_NewDefault, %setEmailId_bb172, %setEmailId_bb171
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @getEmailFrom(i32 %handle) #0 {
getEmailFrom_bb174:
  br label %getEmailFrom_NodeBlock

getEmailFrom_NodeBlock:                           ; preds = %getEmailFrom_bb174
  %Pivot = icmp slt i32 %handle, 2
  br i1 %Pivot, label %getEmailFrom_LeafBlock, label %getEmailFrom_LeafBlock1

getEmailFrom_LeafBlock:                           ; preds = %getEmailFrom_NodeBlock
  %SwitchLeaf = icmp eq i32 %handle, 1
  br i1 %SwitchLeaf, label %getEmailFrom_bb175, label %getEmailFrom_NewDefault

getEmailFrom_bb175:                               ; preds = %getEmailFrom_LeafBlock
  %"385" = load i32* @"'__ste_email_from0", align 4
  br label %getEmailFrom_bb177

getEmailFrom_LeafBlock1:                          ; preds = %getEmailFrom_NodeBlock
  %SwitchLeaf2 = icmp eq i32 %handle, 2
  br i1 %SwitchLeaf2, label %getEmailFrom_bb176, label %getEmailFrom_NewDefault

getEmailFrom_bb176:                               ; preds = %getEmailFrom_LeafBlock1
  %"386" = load i32* @"'__ste_email_from1", align 4
  br label %getEmailFrom_bb177

getEmailFrom_NewDefault:                          ; preds = %getEmailFrom_LeafBlock1, %getEmailFrom_LeafBlock
  br label %getEmailFrom_bb177

getEmailFrom_bb177:                               ; preds = %getEmailFrom_NewDefault, %getEmailFrom_bb176, %getEmailFrom_bb175
  %.0 = phi i32 [ %"385", %getEmailFrom_bb175 ], [ %"386", %getEmailFrom_bb176 ], [ 0, %getEmailFrom_NewDefault ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @setEmailFrom(i32 %handle, i32 %value) #0 {
setEmailFrom_bb178:
  br label %setEmailFrom_NodeBlock

setEmailFrom_NodeBlock:                           ; preds = %setEmailFrom_bb178
  %Pivot = icmp slt i32 %handle, 2
  br i1 %Pivot, label %setEmailFrom_LeafBlock, label %setEmailFrom_LeafBlock1

setEmailFrom_LeafBlock:                           ; preds = %setEmailFrom_NodeBlock
  %SwitchLeaf = icmp eq i32 %handle, 1
  br i1 %SwitchLeaf, label %setEmailFrom_bb179, label %setEmailFrom_NewDefault

setEmailFrom_bb179:                               ; preds = %setEmailFrom_LeafBlock
  store i32 %value, i32* @"'__ste_email_from0", align 4
  br label %setEmailFrom_bb181

setEmailFrom_LeafBlock1:                          ; preds = %setEmailFrom_NodeBlock
  %SwitchLeaf2 = icmp eq i32 %handle, 2
  br i1 %SwitchLeaf2, label %setEmailFrom_bb180, label %setEmailFrom_NewDefault

setEmailFrom_bb180:                               ; preds = %setEmailFrom_LeafBlock1
  store i32 %value, i32* @"'__ste_email_from1", align 4
  br label %setEmailFrom_bb181

setEmailFrom_NewDefault:                          ; preds = %setEmailFrom_LeafBlock1, %setEmailFrom_LeafBlock
  br label %setEmailFrom_bb181

setEmailFrom_bb181:                               ; preds = %setEmailFrom_NewDefault, %setEmailFrom_bb180, %setEmailFrom_bb179
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @getEmailTo(i32 %handle) #0 {
getEmailTo_bb182:
  br label %getEmailTo_NodeBlock

getEmailTo_NodeBlock:                             ; preds = %getEmailTo_bb182
  %Pivot = icmp slt i32 %handle, 2
  br i1 %Pivot, label %getEmailTo_LeafBlock, label %getEmailTo_LeafBlock1

getEmailTo_LeafBlock:                             ; preds = %getEmailTo_NodeBlock
  %SwitchLeaf = icmp eq i32 %handle, 1
  br i1 %SwitchLeaf, label %getEmailTo_bb183, label %getEmailTo_NewDefault

getEmailTo_bb183:                                 ; preds = %getEmailTo_LeafBlock
  %"387" = load i32* @"'__ste_email_to0", align 4
  br label %getEmailTo_bb185

getEmailTo_LeafBlock1:                            ; preds = %getEmailTo_NodeBlock
  %SwitchLeaf2 = icmp eq i32 %handle, 2
  br i1 %SwitchLeaf2, label %getEmailTo_bb184, label %getEmailTo_NewDefault

getEmailTo_bb184:                                 ; preds = %getEmailTo_LeafBlock1
  %"388" = load i32* @"'__ste_email_to1", align 4
  br label %getEmailTo_bb185

getEmailTo_NewDefault:                            ; preds = %getEmailTo_LeafBlock1, %getEmailTo_LeafBlock
  br label %getEmailTo_bb185

getEmailTo_bb185:                                 ; preds = %getEmailTo_NewDefault, %getEmailTo_bb184, %getEmailTo_bb183
  %.0 = phi i32 [ %"387", %getEmailTo_bb183 ], [ %"388", %getEmailTo_bb184 ], [ 0, %getEmailTo_NewDefault ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @setEmailTo(i32 %handle, i32 %value) #0 {
setEmailTo_bb186:
  br label %setEmailTo_NodeBlock

setEmailTo_NodeBlock:                             ; preds = %setEmailTo_bb186
  %Pivot = icmp slt i32 %handle, 2
  br i1 %Pivot, label %setEmailTo_LeafBlock, label %setEmailTo_LeafBlock1

setEmailTo_LeafBlock:                             ; preds = %setEmailTo_NodeBlock
  %SwitchLeaf = icmp eq i32 %handle, 1
  br i1 %SwitchLeaf, label %setEmailTo_bb187, label %setEmailTo_NewDefault

setEmailTo_bb187:                                 ; preds = %setEmailTo_LeafBlock
  store i32 %value, i32* @"'__ste_email_to0", align 4
  br label %setEmailTo_bb189

setEmailTo_LeafBlock1:                            ; preds = %setEmailTo_NodeBlock
  %SwitchLeaf2 = icmp eq i32 %handle, 2
  br i1 %SwitchLeaf2, label %setEmailTo_bb188, label %setEmailTo_NewDefault

setEmailTo_bb188:                                 ; preds = %setEmailTo_LeafBlock1
  store i32 %value, i32* @"'__ste_email_to1", align 4
  br label %setEmailTo_bb189

setEmailTo_NewDefault:                            ; preds = %setEmailTo_LeafBlock1, %setEmailTo_LeafBlock
  br label %setEmailTo_bb189

setEmailTo_bb189:                                 ; preds = %setEmailTo_NewDefault, %setEmailTo_bb188, %setEmailTo_bb187
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @getEmailSubject(i32 %handle) #0 {
getEmailSubject_bb190:
  br label %getEmailSubject_NodeBlock

getEmailSubject_NodeBlock:                        ; preds = %getEmailSubject_bb190
  %Pivot = icmp slt i32 %handle, 2
  br i1 %Pivot, label %getEmailSubject_LeafBlock, label %getEmailSubject_LeafBlock1

getEmailSubject_LeafBlock:                        ; preds = %getEmailSubject_NodeBlock
  %SwitchLeaf = icmp eq i32 %handle, 1
  br i1 %SwitchLeaf, label %getEmailSubject_bb191, label %getEmailSubject_NewDefault

getEmailSubject_bb191:                            ; preds = %getEmailSubject_LeafBlock
  %"389" = load i8** @__ste_email_subject0, align 8
  br label %getEmailSubject_bb193

getEmailSubject_LeafBlock1:                       ; preds = %getEmailSubject_NodeBlock
  %SwitchLeaf2 = icmp eq i32 %handle, 2
  br i1 %SwitchLeaf2, label %getEmailSubject_bb192, label %getEmailSubject_NewDefault

getEmailSubject_bb192:                            ; preds = %getEmailSubject_LeafBlock1
  %"390" = load i8** @__ste_email_subject1, align 8
  br label %getEmailSubject_bb193

getEmailSubject_NewDefault:                       ; preds = %getEmailSubject_LeafBlock1, %getEmailSubject_LeafBlock
  br label %getEmailSubject_bb193

getEmailSubject_bb193:                            ; preds = %getEmailSubject_NewDefault, %getEmailSubject_bb192, %getEmailSubject_bb191
  %.0 = phi i8* [ %"389", %getEmailSubject_bb191 ], [ %"390", %getEmailSubject_bb192 ], [ null, %getEmailSubject_NewDefault ]
  ret i8* %.0
}

; Function Attrs: nounwind uwtable
define void @setEmailSubject(i32 %handle, i8* %value) #0 {
setEmailSubject_bb194:
  br label %setEmailSubject_NodeBlock

setEmailSubject_NodeBlock:                        ; preds = %setEmailSubject_bb194
  %Pivot = icmp slt i32 %handle, 2
  br i1 %Pivot, label %setEmailSubject_LeafBlock, label %setEmailSubject_LeafBlock1

setEmailSubject_LeafBlock:                        ; preds = %setEmailSubject_NodeBlock
  %SwitchLeaf = icmp eq i32 %handle, 1
  br i1 %SwitchLeaf, label %setEmailSubject_bb195, label %setEmailSubject_NewDefault

setEmailSubject_bb195:                            ; preds = %setEmailSubject_LeafBlock
  store i8* %value, i8** @__ste_email_subject0, align 8
  br label %setEmailSubject_bb197

setEmailSubject_LeafBlock1:                       ; preds = %setEmailSubject_NodeBlock
  %SwitchLeaf2 = icmp eq i32 %handle, 2
  br i1 %SwitchLeaf2, label %setEmailSubject_bb196, label %setEmailSubject_NewDefault

setEmailSubject_bb196:                            ; preds = %setEmailSubject_LeafBlock1
  store i8* %value, i8** @__ste_email_subject1, align 8
  br label %setEmailSubject_bb197

setEmailSubject_NewDefault:                       ; preds = %setEmailSubject_LeafBlock1, %setEmailSubject_LeafBlock
  br label %setEmailSubject_bb197

setEmailSubject_bb197:                            ; preds = %setEmailSubject_NewDefault, %setEmailSubject_bb196, %setEmailSubject_bb195
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @getEmailBody(i32 %handle) #0 {
getEmailBody_bb198:
  br label %getEmailBody_NodeBlock

getEmailBody_NodeBlock:                           ; preds = %getEmailBody_bb198
  %Pivot = icmp slt i32 %handle, 2
  br i1 %Pivot, label %getEmailBody_LeafBlock, label %getEmailBody_LeafBlock1

getEmailBody_LeafBlock:                           ; preds = %getEmailBody_NodeBlock
  %SwitchLeaf = icmp eq i32 %handle, 1
  br i1 %SwitchLeaf, label %getEmailBody_bb199, label %getEmailBody_NewDefault

getEmailBody_bb199:                               ; preds = %getEmailBody_LeafBlock
  %"391" = load i8** @__ste_email_body0, align 8
  br label %getEmailBody_bb201

getEmailBody_LeafBlock1:                          ; preds = %getEmailBody_NodeBlock
  %SwitchLeaf2 = icmp eq i32 %handle, 2
  br i1 %SwitchLeaf2, label %getEmailBody_bb200, label %getEmailBody_NewDefault

getEmailBody_bb200:                               ; preds = %getEmailBody_LeafBlock1
  %"392" = load i8** @__ste_email_body1, align 8
  br label %getEmailBody_bb201

getEmailBody_NewDefault:                          ; preds = %getEmailBody_LeafBlock1, %getEmailBody_LeafBlock
  br label %getEmailBody_bb201

getEmailBody_bb201:                               ; preds = %getEmailBody_NewDefault, %getEmailBody_bb200, %getEmailBody_bb199
  %.0 = phi i8* [ %"391", %getEmailBody_bb199 ], [ %"392", %getEmailBody_bb200 ], [ null, %getEmailBody_NewDefault ]
  ret i8* %.0
}

; Function Attrs: nounwind uwtable
define void @setEmailBody(i32 %handle, i8* %value) #0 {
setEmailBody_bb202:
  br label %setEmailBody_NodeBlock

setEmailBody_NodeBlock:                           ; preds = %setEmailBody_bb202
  %Pivot = icmp slt i32 %handle, 2
  br i1 %Pivot, label %setEmailBody_LeafBlock, label %setEmailBody_LeafBlock1

setEmailBody_LeafBlock:                           ; preds = %setEmailBody_NodeBlock
  %SwitchLeaf = icmp eq i32 %handle, 1
  br i1 %SwitchLeaf, label %setEmailBody_bb203, label %setEmailBody_NewDefault

setEmailBody_bb203:                               ; preds = %setEmailBody_LeafBlock
  store i8* %value, i8** @__ste_email_body0, align 8
  br label %setEmailBody_bb205

setEmailBody_LeafBlock1:                          ; preds = %setEmailBody_NodeBlock
  %SwitchLeaf2 = icmp eq i32 %handle, 2
  br i1 %SwitchLeaf2, label %setEmailBody_bb204, label %setEmailBody_NewDefault

setEmailBody_bb204:                               ; preds = %setEmailBody_LeafBlock1
  store i8* %value, i8** @__ste_email_body1, align 8
  br label %setEmailBody_bb205

setEmailBody_NewDefault:                          ; preds = %setEmailBody_LeafBlock1, %setEmailBody_LeafBlock
  br label %setEmailBody_bb205

setEmailBody_bb205:                               ; preds = %setEmailBody_NewDefault, %setEmailBody_bb204, %setEmailBody_bb203
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @isEncrypted(i32 %handle) #0 {
isEncrypted_bb206:
  br label %isEncrypted_NodeBlock

isEncrypted_NodeBlock:                            ; preds = %isEncrypted_bb206
  %Pivot = icmp slt i32 %handle, 2
  br i1 %Pivot, label %isEncrypted_LeafBlock, label %isEncrypted_LeafBlock1

isEncrypted_LeafBlock:                            ; preds = %isEncrypted_NodeBlock
  %SwitchLeaf = icmp eq i32 %handle, 1
  br i1 %SwitchLeaf, label %isEncrypted_bb207, label %isEncrypted_NewDefault

isEncrypted_bb207:                                ; preds = %isEncrypted_LeafBlock
  %"393" = load i32* @"'__ste_email_isEncrypted0", align 4
  br label %isEncrypted_bb209

isEncrypted_LeafBlock1:                           ; preds = %isEncrypted_NodeBlock
  %SwitchLeaf2 = icmp eq i32 %handle, 2
  br i1 %SwitchLeaf2, label %isEncrypted_bb208, label %isEncrypted_NewDefault

isEncrypted_bb208:                                ; preds = %isEncrypted_LeafBlock1
  %"394" = load i32* @"'__ste_email_isEncrypted1", align 4
  br label %isEncrypted_bb209

isEncrypted_NewDefault:                           ; preds = %isEncrypted_LeafBlock1, %isEncrypted_LeafBlock
  br label %isEncrypted_bb209

isEncrypted_bb209:                                ; preds = %isEncrypted_NewDefault, %isEncrypted_bb208, %isEncrypted_bb207
  %.0 = phi i32 [ %"393", %isEncrypted_bb207 ], [ %"394", %isEncrypted_bb208 ], [ 0, %isEncrypted_NewDefault ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @setEmailIsEncrypted(i32 %handle, i32 %value) #0 {
setEmailIsEncrypted_bb210:
  br label %setEmailIsEncrypted_NodeBlock

setEmailIsEncrypted_NodeBlock:                    ; preds = %setEmailIsEncrypted_bb210
  %Pivot = icmp slt i32 %handle, 2
  br i1 %Pivot, label %setEmailIsEncrypted_LeafBlock, label %setEmailIsEncrypted_LeafBlock1

setEmailIsEncrypted_LeafBlock:                    ; preds = %setEmailIsEncrypted_NodeBlock
  %SwitchLeaf = icmp eq i32 %handle, 1
  br i1 %SwitchLeaf, label %setEmailIsEncrypted_bb211, label %setEmailIsEncrypted_NewDefault

setEmailIsEncrypted_bb211:                        ; preds = %setEmailIsEncrypted_LeafBlock
  store i32 %value, i32* @"'__ste_email_isEncrypted0", align 4
  br label %setEmailIsEncrypted_bb213

setEmailIsEncrypted_LeafBlock1:                   ; preds = %setEmailIsEncrypted_NodeBlock
  %SwitchLeaf2 = icmp eq i32 %handle, 2
  br i1 %SwitchLeaf2, label %setEmailIsEncrypted_bb212, label %setEmailIsEncrypted_NewDefault

setEmailIsEncrypted_bb212:                        ; preds = %setEmailIsEncrypted_LeafBlock1
  store i32 %value, i32* @"'__ste_email_isEncrypted1", align 4
  br label %setEmailIsEncrypted_bb213

setEmailIsEncrypted_NewDefault:                   ; preds = %setEmailIsEncrypted_LeafBlock1, %setEmailIsEncrypted_LeafBlock
  br label %setEmailIsEncrypted_bb213

setEmailIsEncrypted_bb213:                        ; preds = %setEmailIsEncrypted_NewDefault, %setEmailIsEncrypted_bb212, %setEmailIsEncrypted_bb211
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @getEmailEncryptionKey(i32 %handle) #0 {
getEmailEncryptionKey_bb214:
  br label %getEmailEncryptionKey_NodeBlock

getEmailEncryptionKey_NodeBlock:                  ; preds = %getEmailEncryptionKey_bb214
  %Pivot = icmp slt i32 %handle, 2
  br i1 %Pivot, label %getEmailEncryptionKey_LeafBlock, label %getEmailEncryptionKey_LeafBlock1

getEmailEncryptionKey_LeafBlock:                  ; preds = %getEmailEncryptionKey_NodeBlock
  %SwitchLeaf = icmp eq i32 %handle, 1
  br i1 %SwitchLeaf, label %getEmailEncryptionKey_bb215, label %getEmailEncryptionKey_NewDefault

getEmailEncryptionKey_bb215:                      ; preds = %getEmailEncryptionKey_LeafBlock
  %"395" = load i32* @"'__ste_email_encryptionKey0", align 4
  br label %getEmailEncryptionKey_bb217

getEmailEncryptionKey_LeafBlock1:                 ; preds = %getEmailEncryptionKey_NodeBlock
  %SwitchLeaf2 = icmp eq i32 %handle, 2
  br i1 %SwitchLeaf2, label %getEmailEncryptionKey_bb216, label %getEmailEncryptionKey_NewDefault

getEmailEncryptionKey_bb216:                      ; preds = %getEmailEncryptionKey_LeafBlock1
  %"396" = load i32* @"'__ste_email_encryptionKey1", align 4
  br label %getEmailEncryptionKey_bb217

getEmailEncryptionKey_NewDefault:                 ; preds = %getEmailEncryptionKey_LeafBlock1, %getEmailEncryptionKey_LeafBlock
  br label %getEmailEncryptionKey_bb217

getEmailEncryptionKey_bb217:                      ; preds = %getEmailEncryptionKey_NewDefault, %getEmailEncryptionKey_bb216, %getEmailEncryptionKey_bb215
  %.0 = phi i32 [ %"395", %getEmailEncryptionKey_bb215 ], [ %"396", %getEmailEncryptionKey_bb216 ], [ 0, %getEmailEncryptionKey_NewDefault ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @setEmailEncryptionKey(i32 %handle, i32 %value) #0 {
setEmailEncryptionKey_bb218:
  br label %setEmailEncryptionKey_NodeBlock

setEmailEncryptionKey_NodeBlock:                  ; preds = %setEmailEncryptionKey_bb218
  %Pivot = icmp slt i32 %handle, 2
  br i1 %Pivot, label %setEmailEncryptionKey_LeafBlock, label %setEmailEncryptionKey_LeafBlock1

setEmailEncryptionKey_LeafBlock:                  ; preds = %setEmailEncryptionKey_NodeBlock
  %SwitchLeaf = icmp eq i32 %handle, 1
  br i1 %SwitchLeaf, label %setEmailEncryptionKey_bb219, label %setEmailEncryptionKey_NewDefault

setEmailEncryptionKey_bb219:                      ; preds = %setEmailEncryptionKey_LeafBlock
  store i32 %value, i32* @"'__ste_email_encryptionKey0", align 4
  br label %setEmailEncryptionKey_bb221

setEmailEncryptionKey_LeafBlock1:                 ; preds = %setEmailEncryptionKey_NodeBlock
  %SwitchLeaf2 = icmp eq i32 %handle, 2
  br i1 %SwitchLeaf2, label %setEmailEncryptionKey_bb220, label %setEmailEncryptionKey_NewDefault

setEmailEncryptionKey_bb220:                      ; preds = %setEmailEncryptionKey_LeafBlock1
  store i32 %value, i32* @"'__ste_email_encryptionKey1", align 4
  br label %setEmailEncryptionKey_bb221

setEmailEncryptionKey_NewDefault:                 ; preds = %setEmailEncryptionKey_LeafBlock1, %setEmailEncryptionKey_LeafBlock
  br label %setEmailEncryptionKey_bb221

setEmailEncryptionKey_bb221:                      ; preds = %setEmailEncryptionKey_NewDefault, %setEmailEncryptionKey_bb220, %setEmailEncryptionKey_bb219
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @isSigned(i32 %handle) #0 {
isSigned_bb222:
  br label %isSigned_NodeBlock

isSigned_NodeBlock:                               ; preds = %isSigned_bb222
  %Pivot = icmp slt i32 %handle, 2
  br i1 %Pivot, label %isSigned_LeafBlock, label %isSigned_LeafBlock1

isSigned_LeafBlock:                               ; preds = %isSigned_NodeBlock
  %SwitchLeaf = icmp eq i32 %handle, 1
  br i1 %SwitchLeaf, label %isSigned_bb223, label %isSigned_NewDefault

isSigned_bb223:                                   ; preds = %isSigned_LeafBlock
  %"397" = load i32* @"'__ste_email_isSigned0", align 4
  br label %isSigned_bb225

isSigned_LeafBlock1:                              ; preds = %isSigned_NodeBlock
  %SwitchLeaf2 = icmp eq i32 %handle, 2
  br i1 %SwitchLeaf2, label %isSigned_bb224, label %isSigned_NewDefault

isSigned_bb224:                                   ; preds = %isSigned_LeafBlock1
  %"398" = load i32* @"'__ste_email_isSigned1", align 4
  br label %isSigned_bb225

isSigned_NewDefault:                              ; preds = %isSigned_LeafBlock1, %isSigned_LeafBlock
  br label %isSigned_bb225

isSigned_bb225:                                   ; preds = %isSigned_NewDefault, %isSigned_bb224, %isSigned_bb223
  %.0 = phi i32 [ %"397", %isSigned_bb223 ], [ %"398", %isSigned_bb224 ], [ 0, %isSigned_NewDefault ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @setEmailIsSigned(i32 %handle, i32 %value) #0 {
setEmailIsSigned_bb226:
  br label %setEmailIsSigned_NodeBlock

setEmailIsSigned_NodeBlock:                       ; preds = %setEmailIsSigned_bb226
  %Pivot = icmp slt i32 %handle, 2
  br i1 %Pivot, label %setEmailIsSigned_LeafBlock, label %setEmailIsSigned_LeafBlock1

setEmailIsSigned_LeafBlock:                       ; preds = %setEmailIsSigned_NodeBlock
  %SwitchLeaf = icmp eq i32 %handle, 1
  br i1 %SwitchLeaf, label %setEmailIsSigned_bb227, label %setEmailIsSigned_NewDefault

setEmailIsSigned_bb227:                           ; preds = %setEmailIsSigned_LeafBlock
  store i32 %value, i32* @"'__ste_email_isSigned0", align 4
  br label %setEmailIsSigned_bb229

setEmailIsSigned_LeafBlock1:                      ; preds = %setEmailIsSigned_NodeBlock
  %SwitchLeaf2 = icmp eq i32 %handle, 2
  br i1 %SwitchLeaf2, label %setEmailIsSigned_bb228, label %setEmailIsSigned_NewDefault

setEmailIsSigned_bb228:                           ; preds = %setEmailIsSigned_LeafBlock1
  store i32 %value, i32* @"'__ste_email_isSigned1", align 4
  br label %setEmailIsSigned_bb229

setEmailIsSigned_NewDefault:                      ; preds = %setEmailIsSigned_LeafBlock1, %setEmailIsSigned_LeafBlock
  br label %setEmailIsSigned_bb229

setEmailIsSigned_bb229:                           ; preds = %setEmailIsSigned_NewDefault, %setEmailIsSigned_bb228, %setEmailIsSigned_bb227
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @getEmailSignKey(i32 %handle) #0 {
getEmailSignKey_bb230:
  br label %getEmailSignKey_NodeBlock

getEmailSignKey_NodeBlock:                        ; preds = %getEmailSignKey_bb230
  %Pivot = icmp slt i32 %handle, 2
  br i1 %Pivot, label %getEmailSignKey_LeafBlock, label %getEmailSignKey_LeafBlock1

getEmailSignKey_LeafBlock:                        ; preds = %getEmailSignKey_NodeBlock
  %SwitchLeaf = icmp eq i32 %handle, 1
  br i1 %SwitchLeaf, label %getEmailSignKey_bb231, label %getEmailSignKey_NewDefault

getEmailSignKey_bb231:                            ; preds = %getEmailSignKey_LeafBlock
  %"399" = load i32* @"'__ste_email_signKey0", align 4
  br label %getEmailSignKey_bb233

getEmailSignKey_LeafBlock1:                       ; preds = %getEmailSignKey_NodeBlock
  %SwitchLeaf2 = icmp eq i32 %handle, 2
  br i1 %SwitchLeaf2, label %getEmailSignKey_bb232, label %getEmailSignKey_NewDefault

getEmailSignKey_bb232:                            ; preds = %getEmailSignKey_LeafBlock1
  %"400" = load i32* @"'__ste_email_signKey1", align 4
  br label %getEmailSignKey_bb233

getEmailSignKey_NewDefault:                       ; preds = %getEmailSignKey_LeafBlock1, %getEmailSignKey_LeafBlock
  br label %getEmailSignKey_bb233

getEmailSignKey_bb233:                            ; preds = %getEmailSignKey_NewDefault, %getEmailSignKey_bb232, %getEmailSignKey_bb231
  %.0 = phi i32 [ %"399", %getEmailSignKey_bb231 ], [ %"400", %getEmailSignKey_bb232 ], [ 0, %getEmailSignKey_NewDefault ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @setEmailSignKey(i32 %handle, i32 %value) #0 {
setEmailSignKey_bb234:
  br label %setEmailSignKey_NodeBlock

setEmailSignKey_NodeBlock:                        ; preds = %setEmailSignKey_bb234
  %Pivot = icmp slt i32 %handle, 2
  br i1 %Pivot, label %setEmailSignKey_LeafBlock, label %setEmailSignKey_LeafBlock1

setEmailSignKey_LeafBlock:                        ; preds = %setEmailSignKey_NodeBlock
  %SwitchLeaf = icmp eq i32 %handle, 1
  br i1 %SwitchLeaf, label %setEmailSignKey_bb235, label %setEmailSignKey_NewDefault

setEmailSignKey_bb235:                            ; preds = %setEmailSignKey_LeafBlock
  store i32 %value, i32* @"'__ste_email_signKey0", align 4
  br label %setEmailSignKey_bb237

setEmailSignKey_LeafBlock1:                       ; preds = %setEmailSignKey_NodeBlock
  %SwitchLeaf2 = icmp eq i32 %handle, 2
  br i1 %SwitchLeaf2, label %setEmailSignKey_bb236, label %setEmailSignKey_NewDefault

setEmailSignKey_bb236:                            ; preds = %setEmailSignKey_LeafBlock1
  store i32 %value, i32* @"'__ste_email_signKey1", align 4
  br label %setEmailSignKey_bb237

setEmailSignKey_NewDefault:                       ; preds = %setEmailSignKey_LeafBlock1, %setEmailSignKey_LeafBlock
  br label %setEmailSignKey_bb237

setEmailSignKey_bb237:                            ; preds = %setEmailSignKey_NewDefault, %setEmailSignKey_bb236, %setEmailSignKey_bb235
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @isVerified(i32 %handle) #0 {
isVerified_bb238:
  br label %isVerified_NodeBlock

isVerified_NodeBlock:                             ; preds = %isVerified_bb238
  %Pivot = icmp slt i32 %handle, 2
  br i1 %Pivot, label %isVerified_LeafBlock, label %isVerified_LeafBlock1

isVerified_LeafBlock:                             ; preds = %isVerified_NodeBlock
  %SwitchLeaf = icmp eq i32 %handle, 1
  br i1 %SwitchLeaf, label %isVerified_bb239, label %isVerified_NewDefault

isVerified_bb239:                                 ; preds = %isVerified_LeafBlock
  %"401" = load i32* @"'__ste_email_isSignatureVerified0", align 4
  br label %isVerified_bb241

isVerified_LeafBlock1:                            ; preds = %isVerified_NodeBlock
  %SwitchLeaf2 = icmp eq i32 %handle, 2
  br i1 %SwitchLeaf2, label %isVerified_bb240, label %isVerified_NewDefault

isVerified_bb240:                                 ; preds = %isVerified_LeafBlock1
  %"402" = load i32* @"'__ste_email_isSignatureVerified1", align 4
  br label %isVerified_bb241

isVerified_NewDefault:                            ; preds = %isVerified_LeafBlock1, %isVerified_LeafBlock
  br label %isVerified_bb241

isVerified_bb241:                                 ; preds = %isVerified_NewDefault, %isVerified_bb240, %isVerified_bb239
  %.0 = phi i32 [ %"401", %isVerified_bb239 ], [ %"402", %isVerified_bb240 ], [ 0, %isVerified_NewDefault ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @setEmailIsSignatureVerified(i32 %handle, i32 %value) #0 {
setEmailIsSignatureVerified_bb242:
  br label %setEmailIsSignatureVerified_NodeBlock

setEmailIsSignatureVerified_NodeBlock:            ; preds = %setEmailIsSignatureVerified_bb242
  %Pivot = icmp slt i32 %handle, 2
  br i1 %Pivot, label %setEmailIsSignatureVerified_LeafBlock, label %setEmailIsSignatureVerified_LeafBlock1

setEmailIsSignatureVerified_LeafBlock:            ; preds = %setEmailIsSignatureVerified_NodeBlock
  %SwitchLeaf = icmp eq i32 %handle, 1
  br i1 %SwitchLeaf, label %setEmailIsSignatureVerified_bb243, label %setEmailIsSignatureVerified_NewDefault

setEmailIsSignatureVerified_bb243:                ; preds = %setEmailIsSignatureVerified_LeafBlock
  store i32 %value, i32* @"'__ste_email_isSignatureVerified0", align 4
  br label %setEmailIsSignatureVerified_bb245

setEmailIsSignatureVerified_LeafBlock1:           ; preds = %setEmailIsSignatureVerified_NodeBlock
  %SwitchLeaf2 = icmp eq i32 %handle, 2
  br i1 %SwitchLeaf2, label %setEmailIsSignatureVerified_bb244, label %setEmailIsSignatureVerified_NewDefault

setEmailIsSignatureVerified_bb244:                ; preds = %setEmailIsSignatureVerified_LeafBlock1
  store i32 %value, i32* @"'__ste_email_isSignatureVerified1", align 4
  br label %setEmailIsSignatureVerified_bb245

setEmailIsSignatureVerified_NewDefault:           ; preds = %setEmailIsSignatureVerified_LeafBlock1, %setEmailIsSignatureVerified_LeafBlock
  br label %setEmailIsSignatureVerified_bb245

setEmailIsSignatureVerified_bb245:                ; preds = %setEmailIsSignatureVerified_NewDefault, %setEmailIsSignatureVerified_bb244, %setEmailIsSignatureVerified_bb243
  ret void
}

; Function Attrs: nounwind uwtable
define void @__utac__exception__cf_handler_set(i8* %exception, i32 (i32, i32)* %cflow_func, i32 %val) #0 {
__utac__exception__cf_handler_set_bb246:
  %"403" = bitcast i8* %exception to %struct.__UTAC__EXCEPTION*
  %"404" = call noalias i8* @malloc(i64 24) #5
  %"405" = bitcast i8* %"404" to %struct.__UTAC__CFLOW_FUNC*
  %"406" = bitcast %struct.__UTAC__CFLOW_FUNC* %"405" to i32 (i32, i32)**
  store i32 (i32, i32)* %cflow_func, i32 (i32, i32)** %"406", align 8
  %"407" = ptrtoint %struct.__UTAC__CFLOW_FUNC* %"405" to i64
  %"408" = add i64 %"407", 8
  %"409" = inttoptr i64 %"408" to i32*
  store i32 %val, i32* %"409", align 4
  %"410" = ptrtoint %struct.__UTAC__CFLOW_FUNC* %"405" to i64
  %"411" = add i64 %"410", 16
  %"412" = ptrtoint %struct.__UTAC__EXCEPTION* %"403" to i64
  %"413" = add i64 %"412", 24
  %"414" = inttoptr i64 %"411" to %struct.__UTAC__CFLOW_FUNC**
  %"415" = inttoptr i64 %"413" to %struct.__UTAC__CFLOW_FUNC**
  %"416" = load %struct.__UTAC__CFLOW_FUNC** %"415", align 8
  store %struct.__UTAC__CFLOW_FUNC* %"416", %struct.__UTAC__CFLOW_FUNC** %"414", align 8
  %"417" = ptrtoint %struct.__UTAC__EXCEPTION* %"403" to i64
  %"418" = add i64 %"417", 24
  %"419" = inttoptr i64 %"418" to %struct.__UTAC__CFLOW_FUNC**
  store %struct.__UTAC__CFLOW_FUNC* %"405", %struct.__UTAC__CFLOW_FUNC** %"419", align 8
  ret void
}

; Function Attrs: nounwind
declare noalias i8* @malloc(i64) #3

; Function Attrs: nounwind uwtable
define void @__utac__exception__cf_handler_free(i8* %exception) #0 {
__utac__exception__cf_handler_free_bb247:
  %"420" = bitcast i8* %exception to %struct.__UTAC__EXCEPTION*
  %"421" = ptrtoint %struct.__UTAC__EXCEPTION* %"420" to i64
  %"422" = add i64 %"421", 24
  %"423" = inttoptr i64 %"422" to %struct.__UTAC__CFLOW_FUNC**
  %"424" = load %struct.__UTAC__CFLOW_FUNC** %"423", align 8
  %"425" = ptrtoint %struct.__UTAC__CFLOW_FUNC* null to i64
  br label %__utac__exception__cf_handler_free_bb248

__utac__exception__cf_handler_free_bb248:         ; preds = %__utac__exception__cf_handler_free_bb247, %__utac__exception__cf_handler_free_bb249
  %cf.0 = phi %struct.__UTAC__CFLOW_FUNC* [ %"424", %__utac__exception__cf_handler_free_bb247 ], [ %"431", %__utac__exception__cf_handler_free_bb249 ]
  %"426" = ptrtoint %struct.__UTAC__CFLOW_FUNC* %cf.0 to i64
  %"427" = icmp ne i64 %"426", %"425"
  br i1 %"427", label %__utac__exception__cf_handler_free_bb249, label %__utac__exception__cf_handler_free_bb250

__utac__exception__cf_handler_free_bb249:         ; preds = %__utac__exception__cf_handler_free_bb248
  %"428" = ptrtoint %struct.__UTAC__CFLOW_FUNC* %cf.0 to i64
  %"429" = add i64 %"428", 16
  %"430" = inttoptr i64 %"429" to %struct.__UTAC__CFLOW_FUNC**
  %"431" = load %struct.__UTAC__CFLOW_FUNC** %"430", align 8
  %"432" = bitcast %struct.__UTAC__CFLOW_FUNC* %cf.0 to i8*
  call void @free(i8* %"432") #5
  br label %__utac__exception__cf_handler_free_bb248

__utac__exception__cf_handler_free_bb250:         ; preds = %__utac__exception__cf_handler_free_bb248
  %"433" = ptrtoint %struct.__UTAC__EXCEPTION* %"420" to i64
  %"434" = add i64 %"433", 24
  %"435" = inttoptr i64 %"434" to %struct.__UTAC__CFLOW_FUNC**
  store %struct.__UTAC__CFLOW_FUNC* null, %struct.__UTAC__CFLOW_FUNC** %"435", align 8
  ret void
}

; Function Attrs: nounwind
declare void @free(i8*) #3

; Function Attrs: nounwind uwtable
define void @__utac__exception__cf_handler_reset(i8* %exception) #0 {
__utac__exception__cf_handler_reset_bb251:
  %"436" = bitcast i8* %exception to %struct.__UTAC__EXCEPTION*
  %"437" = ptrtoint %struct.__UTAC__EXCEPTION* %"436" to i64
  %"438" = add i64 %"437", 24
  %"439" = inttoptr i64 %"438" to %struct.__UTAC__CFLOW_FUNC**
  %"440" = load %struct.__UTAC__CFLOW_FUNC** %"439", align 8
  %"441" = ptrtoint %struct.__UTAC__CFLOW_FUNC* null to i64
  br label %__utac__exception__cf_handler_reset_bb252

__utac__exception__cf_handler_reset_bb252:        ; preds = %__utac__exception__cf_handler_reset_bb251, %__utac__exception__cf_handler_reset_bb253
  %cf.0 = phi %struct.__UTAC__CFLOW_FUNC* [ %"440", %__utac__exception__cf_handler_reset_bb251 ], [ %"454", %__utac__exception__cf_handler_reset_bb253 ]
  %"442" = ptrtoint %struct.__UTAC__CFLOW_FUNC* %cf.0 to i64
  %"443" = icmp ne i64 %"442", %"441"
  br i1 %"443", label %__utac__exception__cf_handler_reset_bb253, label %__utac__exception__cf_handler_reset_bb254

__utac__exception__cf_handler_reset_bb253:        ; preds = %__utac__exception__cf_handler_reset_bb252
  %"444" = bitcast %struct.__UTAC__CFLOW_FUNC* %cf.0 to i32 (i32, i32)**
  %"445" = load i32 (i32, i32)** %"444", align 8
  %"446" = ptrtoint %struct.__UTAC__CFLOW_FUNC* %cf.0 to i64
  %"447" = add i64 %"446", 8
  %"448" = inttoptr i64 %"447" to i32*
  %"449" = load i32* %"448", align 4
  %"450" = call i32 %"445"(i32 4, i32 %"449")
  %"451" = ptrtoint %struct.__UTAC__CFLOW_FUNC* %cf.0 to i64
  %"452" = add i64 %"451", 16
  %"453" = inttoptr i64 %"452" to %struct.__UTAC__CFLOW_FUNC**
  %"454" = load %struct.__UTAC__CFLOW_FUNC** %"453", align 8
  br label %__utac__exception__cf_handler_reset_bb252

__utac__exception__cf_handler_reset_bb254:        ; preds = %__utac__exception__cf_handler_reset_bb252
  %"455" = bitcast i8* %exception to %struct.__UTAC__EXCEPTION*
  %"456" = ptrtoint %struct.__UTAC__EXCEPTION* %"455" to i64
  %"457" = add i64 %"456", 24
  %"458" = inttoptr i64 %"457" to %struct.__UTAC__CFLOW_FUNC**
  %"459" = load %struct.__UTAC__CFLOW_FUNC** %"458", align 8
  br label %__utac__exception__cf_handler_reset_bb255

__utac__exception__cf_handler_reset_bb255:        ; preds = %__utac__exception__cf_handler_reset_bb256, %__utac__exception__cf_handler_reset_bb254
  %cf.0.i = phi %struct.__UTAC__CFLOW_FUNC* [ %"459", %__utac__exception__cf_handler_reset_bb254 ], [ %"465", %__utac__exception__cf_handler_reset_bb256 ]
  %"460" = ptrtoint %struct.__UTAC__CFLOW_FUNC* %cf.0.i to i64
  %"461" = icmp ne i64 %"460", 0
  br i1 %"461", label %__utac__exception__cf_handler_reset_bb256, label %__utac__exception__cf_handler_reset___utac__exception__cf_handler_free.exit

__utac__exception__cf_handler_reset_bb256:        ; preds = %__utac__exception__cf_handler_reset_bb255
  %"462" = ptrtoint %struct.__UTAC__CFLOW_FUNC* %cf.0.i to i64
  %"463" = add i64 %"462", 16
  %"464" = inttoptr i64 %"463" to %struct.__UTAC__CFLOW_FUNC**
  %"465" = load %struct.__UTAC__CFLOW_FUNC** %"464", align 8
  %"466" = bitcast %struct.__UTAC__CFLOW_FUNC* %cf.0.i to i8*
  call void @free(i8* %"466") #5
  br label %__utac__exception__cf_handler_reset_bb255

__utac__exception__cf_handler_reset___utac__exception__cf_handler_free.exit: ; preds = %__utac__exception__cf_handler_reset_bb255
  %"467" = ptrtoint %struct.__UTAC__EXCEPTION* %"455" to i64
  %"468" = add i64 %"467", 24
  %"469" = inttoptr i64 %"468" to %struct.__UTAC__CFLOW_FUNC**
  store %struct.__UTAC__CFLOW_FUNC* null, %struct.__UTAC__CFLOW_FUNC** %"469", align 8
  ret void
}

; Function Attrs: nounwind uwtable
define i8* @__utac__error_stack_mgt(i8* %env, i32 %mode, i32 %count) #0 {
__utac__error_stack_mgt_bb257:
  %"470" = call i8* @__kittel_nondef.1()
  %"471" = icmp eq i32 %count, 0
  br i1 %"471", label %__utac__error_stack_mgt_bb276, label %__utac__error_stack_mgt_bb258

__utac__error_stack_mgt_bb258:                    ; preds = %__utac__error_stack_mgt_bb257
  br label %__utac__error_stack_mgt_NodeBlock7

__utac__error_stack_mgt_NodeBlock7:               ; preds = %__utac__error_stack_mgt_bb258
  %Pivot8 = icmp slt i32 %mode, 1
  br i1 %Pivot8, label %__utac__error_stack_mgt_LeafBlock, label %__utac__error_stack_mgt_NodeBlock

__utac__error_stack_mgt_LeafBlock:                ; preds = %__utac__error_stack_mgt_NodeBlock7
  %SwitchLeaf = icmp eq i32 %mode, 0
  br i1 %SwitchLeaf, label %__utac__error_stack_mgt_bb259, label %__utac__error_stack_mgt_NewDefault

__utac__error_stack_mgt_bb259:                    ; preds = %__utac__error_stack_mgt_LeafBlock
  %"472" = call noalias i8* @malloc(i64 16) #5
  %"473" = bitcast i8* %"472" to %struct.__ACC__ERR*
  %"474" = bitcast %struct.__ACC__ERR* %"473" to i8**
  store i8* %env, i8** %"474", align 8
  %"475" = ptrtoint %struct.__ACC__ERR* %"473" to i64
  %"476" = add i64 %"475", 8
  %"477" = inttoptr i64 %"476" to %struct.__ACC__ERR**
  %"478" = load %struct.__ACC__ERR** @head, align 8
  store %struct.__ACC__ERR* %"478", %struct.__ACC__ERR** %"477", align 8
  store %struct.__ACC__ERR* %"473", %struct.__ACC__ERR** @head, align 8
  %"479" = bitcast %struct.__ACC__ERR* %"473" to i8*
  br label %__utac__error_stack_mgt_bb276

__utac__error_stack_mgt_NodeBlock:                ; preds = %__utac__error_stack_mgt_NodeBlock7
  %Pivot = icmp slt i32 %mode, 2
  br i1 %Pivot, label %__utac__error_stack_mgt_bb260, label %__utac__error_stack_mgt_LeafBlock5

__utac__error_stack_mgt_bb260:                    ; preds = %__utac__error_stack_mgt_NodeBlock
  %"480" = load %struct.__ACC__ERR** @head, align 8
  br label %__utac__error_stack_mgt_bb261

__utac__error_stack_mgt_bb261:                    ; preds = %__utac__error_stack_mgt_bb260, %__utac__error_stack_mgt___utac__exception__cf_handler_reset.exit
  %temp.0 = phi %struct.__ACC__ERR* [ %"480", %__utac__error_stack_mgt_bb260 ], [ %"485", %__utac__error_stack_mgt___utac__exception__cf_handler_reset.exit ]
  %.04 = phi i32 [ %count, %__utac__error_stack_mgt_bb260 ], [ %"522", %__utac__error_stack_mgt___utac__exception__cf_handler_reset.exit ]
  %"481" = icmp sgt i32 %.04, 1
  %"482" = ptrtoint %struct.__ACC__ERR* %temp.0 to i64
  %"483" = add i64 %"482", 8
  %"484" = inttoptr i64 %"483" to %struct.__ACC__ERR**
  %"485" = load %struct.__ACC__ERR** %"484", align 8
  br i1 %"481", label %__utac__error_stack_mgt_bb262, label %__utac__error_stack_mgt_bb268

__utac__error_stack_mgt_bb262:                    ; preds = %__utac__error_stack_mgt_bb261
  %"486" = bitcast %struct.__ACC__ERR* %temp.0 to i8**
  %"487" = load i8** %"486", align 8
  %"488" = bitcast %struct.__ACC__ERR* %temp.0 to i8*
  call void @free(i8* %"488") #5
  %"489" = bitcast i8* %"487" to %struct.__UTAC__EXCEPTION*
  %"490" = ptrtoint %struct.__UTAC__EXCEPTION* %"489" to i64
  %"491" = add i64 %"490", 24
  %"492" = inttoptr i64 %"491" to %struct.__UTAC__CFLOW_FUNC**
  %"493" = load %struct.__UTAC__CFLOW_FUNC** %"492", align 8
  br label %__utac__error_stack_mgt_bb263

__utac__error_stack_mgt_bb263:                    ; preds = %__utac__error_stack_mgt_bb264, %__utac__error_stack_mgt_bb262
  %cf.0.i = phi %struct.__UTAC__CFLOW_FUNC* [ %"493", %__utac__error_stack_mgt_bb262 ], [ %"506", %__utac__error_stack_mgt_bb264 ]
  %"494" = ptrtoint %struct.__UTAC__CFLOW_FUNC* %cf.0.i to i64
  %"495" = icmp ne i64 %"494", 0
  br i1 %"495", label %__utac__error_stack_mgt_bb264, label %__utac__error_stack_mgt_bb265

__utac__error_stack_mgt_bb264:                    ; preds = %__utac__error_stack_mgt_bb263
  %"496" = bitcast %struct.__UTAC__CFLOW_FUNC* %cf.0.i to i32 (i32, i32)**
  %"497" = load i32 (i32, i32)** %"496", align 8
  %"498" = ptrtoint %struct.__UTAC__CFLOW_FUNC* %cf.0.i to i64
  %"499" = add i64 %"498", 8
  %"500" = inttoptr i64 %"499" to i32*
  %"501" = load i32* %"500", align 4
  %"502" = call i32 %"497"(i32 4, i32 %"501") #5
  %"503" = ptrtoint %struct.__UTAC__CFLOW_FUNC* %cf.0.i to i64
  %"504" = add i64 %"503", 16
  %"505" = inttoptr i64 %"504" to %struct.__UTAC__CFLOW_FUNC**
  %"506" = load %struct.__UTAC__CFLOW_FUNC** %"505", align 8
  br label %__utac__error_stack_mgt_bb263

__utac__error_stack_mgt_bb265:                    ; preds = %__utac__error_stack_mgt_bb263
  %"507" = bitcast i8* %"487" to %struct.__UTAC__EXCEPTION*
  %"508" = ptrtoint %struct.__UTAC__EXCEPTION* %"507" to i64
  %"509" = add i64 %"508", 24
  %"510" = inttoptr i64 %"509" to %struct.__UTAC__CFLOW_FUNC**
  %"511" = load %struct.__UTAC__CFLOW_FUNC** %"510", align 8
  br label %__utac__error_stack_mgt_bb266

__utac__error_stack_mgt_bb266:                    ; preds = %__utac__error_stack_mgt_bb267, %__utac__error_stack_mgt_bb265
  %cf.0.i.i = phi %struct.__UTAC__CFLOW_FUNC* [ %"511", %__utac__error_stack_mgt_bb265 ], [ %"517", %__utac__error_stack_mgt_bb267 ]
  %"512" = ptrtoint %struct.__UTAC__CFLOW_FUNC* %cf.0.i.i to i64
  %"513" = icmp ne i64 %"512", 0
  br i1 %"513", label %__utac__error_stack_mgt_bb267, label %__utac__error_stack_mgt___utac__exception__cf_handler_reset.exit

__utac__error_stack_mgt_bb267:                    ; preds = %__utac__error_stack_mgt_bb266
  %"514" = ptrtoint %struct.__UTAC__CFLOW_FUNC* %cf.0.i.i to i64
  %"515" = add i64 %"514", 16
  %"516" = inttoptr i64 %"515" to %struct.__UTAC__CFLOW_FUNC**
  %"517" = load %struct.__UTAC__CFLOW_FUNC** %"516", align 8
  %"518" = bitcast %struct.__UTAC__CFLOW_FUNC* %cf.0.i.i to i8*
  call void @free(i8* %"518") #5
  br label %__utac__error_stack_mgt_bb266

__utac__error_stack_mgt___utac__exception__cf_handler_reset.exit: ; preds = %__utac__error_stack_mgt_bb266
  %"519" = ptrtoint %struct.__UTAC__EXCEPTION* %"507" to i64
  %"520" = add i64 %"519", 24
  %"521" = inttoptr i64 %"520" to %struct.__UTAC__CFLOW_FUNC**
  store %struct.__UTAC__CFLOW_FUNC* null, %struct.__UTAC__CFLOW_FUNC** %"521", align 8
  %"522" = sub nsw i32 %.04, 1
  br label %__utac__error_stack_mgt_bb261

__utac__error_stack_mgt_bb268:                    ; preds = %__utac__error_stack_mgt_bb261
  store %struct.__ACC__ERR* %"485", %struct.__ACC__ERR** @head, align 8
  %"523" = bitcast %struct.__ACC__ERR* %temp.0 to i8**
  %"524" = load i8** %"523", align 8
  %"525" = bitcast %struct.__ACC__ERR* %temp.0 to i8*
  call void @free(i8* %"525") #5
  %"526" = bitcast i8* %"524" to %struct.__UTAC__EXCEPTION*
  %"527" = ptrtoint %struct.__UTAC__EXCEPTION* %"526" to i64
  %"528" = add i64 %"527", 24
  %"529" = inttoptr i64 %"528" to %struct.__UTAC__CFLOW_FUNC**
  %"530" = load %struct.__UTAC__CFLOW_FUNC** %"529", align 8
  br label %__utac__error_stack_mgt_bb269

__utac__error_stack_mgt_bb269:                    ; preds = %__utac__error_stack_mgt_bb270, %__utac__error_stack_mgt_bb268
  %cf.0.i1 = phi %struct.__UTAC__CFLOW_FUNC* [ %"530", %__utac__error_stack_mgt_bb268 ], [ %"543", %__utac__error_stack_mgt_bb270 ]
  %"531" = ptrtoint %struct.__UTAC__CFLOW_FUNC* %cf.0.i1 to i64
  %"532" = icmp ne i64 %"531", 0
  br i1 %"532", label %__utac__error_stack_mgt_bb270, label %__utac__error_stack_mgt_bb271

__utac__error_stack_mgt_bb270:                    ; preds = %__utac__error_stack_mgt_bb269
  %"533" = bitcast %struct.__UTAC__CFLOW_FUNC* %cf.0.i1 to i32 (i32, i32)**
  %"534" = load i32 (i32, i32)** %"533", align 8
  %"535" = ptrtoint %struct.__UTAC__CFLOW_FUNC* %cf.0.i1 to i64
  %"536" = add i64 %"535", 8
  %"537" = inttoptr i64 %"536" to i32*
  %"538" = load i32* %"537", align 4
  %"539" = call i32 %"534"(i32 4, i32 %"538") #5
  %"540" = ptrtoint %struct.__UTAC__CFLOW_FUNC* %cf.0.i1 to i64
  %"541" = add i64 %"540", 16
  %"542" = inttoptr i64 %"541" to %struct.__UTAC__CFLOW_FUNC**
  %"543" = load %struct.__UTAC__CFLOW_FUNC** %"542", align 8
  br label %__utac__error_stack_mgt_bb269

__utac__error_stack_mgt_bb271:                    ; preds = %__utac__error_stack_mgt_bb269
  %"544" = bitcast i8* %"524" to %struct.__UTAC__EXCEPTION*
  %"545" = ptrtoint %struct.__UTAC__EXCEPTION* %"544" to i64
  %"546" = add i64 %"545", 24
  %"547" = inttoptr i64 %"546" to %struct.__UTAC__CFLOW_FUNC**
  %"548" = load %struct.__UTAC__CFLOW_FUNC** %"547", align 8
  br label %__utac__error_stack_mgt_bb272

__utac__error_stack_mgt_bb272:                    ; preds = %__utac__error_stack_mgt_bb273, %__utac__error_stack_mgt_bb271
  %cf.0.i.i2 = phi %struct.__UTAC__CFLOW_FUNC* [ %"548", %__utac__error_stack_mgt_bb271 ], [ %"554", %__utac__error_stack_mgt_bb273 ]
  %"549" = ptrtoint %struct.__UTAC__CFLOW_FUNC* %cf.0.i.i2 to i64
  %"550" = icmp ne i64 %"549", 0
  br i1 %"550", label %__utac__error_stack_mgt_bb273, label %__utac__error_stack_mgt___utac__exception__cf_handler_reset.exit3

__utac__error_stack_mgt_bb273:                    ; preds = %__utac__error_stack_mgt_bb272
  %"551" = ptrtoint %struct.__UTAC__CFLOW_FUNC* %cf.0.i.i2 to i64
  %"552" = add i64 %"551", 16
  %"553" = inttoptr i64 %"552" to %struct.__UTAC__CFLOW_FUNC**
  %"554" = load %struct.__UTAC__CFLOW_FUNC** %"553", align 8
  %"555" = bitcast %struct.__UTAC__CFLOW_FUNC* %cf.0.i.i2 to i8*
  call void @free(i8* %"555") #5
  br label %__utac__error_stack_mgt_bb272

__utac__error_stack_mgt___utac__exception__cf_handler_reset.exit3: ; preds = %__utac__error_stack_mgt_bb272
  %"556" = ptrtoint %struct.__UTAC__EXCEPTION* %"544" to i64
  %"557" = add i64 %"556", 24
  %"558" = inttoptr i64 %"557" to %struct.__UTAC__CFLOW_FUNC**
  store %struct.__UTAC__CFLOW_FUNC* null, %struct.__UTAC__CFLOW_FUNC** %"558", align 8
  br label %__utac__error_stack_mgt_bb276

__utac__error_stack_mgt_LeafBlock5:               ; preds = %__utac__error_stack_mgt_NodeBlock
  %SwitchLeaf6 = icmp eq i32 %mode, 2
  br i1 %SwitchLeaf6, label %__utac__error_stack_mgt_bb274, label %__utac__error_stack_mgt_NewDefault

__utac__error_stack_mgt_bb274:                    ; preds = %__utac__error_stack_mgt_LeafBlock5
  %"559" = load %struct.__ACC__ERR** @head, align 8
  %"560" = icmp ne %struct.__ACC__ERR* %"559", null
  br i1 %"560", label %__utac__error_stack_mgt_bb275, label %__utac__error_stack_mgt_bb276

__utac__error_stack_mgt_bb275:                    ; preds = %__utac__error_stack_mgt_bb274
  %"561" = load %struct.__ACC__ERR** @head, align 8
  %"562" = bitcast %struct.__ACC__ERR* %"561" to i8**
  %"563" = load i8** %"562", align 8
  br label %__utac__error_stack_mgt_bb276

__utac__error_stack_mgt_NewDefault:               ; preds = %__utac__error_stack_mgt_LeafBlock5, %__utac__error_stack_mgt_LeafBlock
  br label %__utac__error_stack_mgt_bb276

__utac__error_stack_mgt_bb276:                    ; preds = %__utac__error_stack_mgt_NewDefault, %__utac__error_stack_mgt_bb274, %__utac__error_stack_mgt_bb257, %__utac__error_stack_mgt_bb275, %__utac__error_stack_mgt___utac__exception__cf_handler_reset.exit3, %__utac__error_stack_mgt_bb259
  %.0 = phi i8* [ %"479", %__utac__error_stack_mgt_bb259 ], [ %"524", %__utac__error_stack_mgt___utac__exception__cf_handler_reset.exit3 ], [ %"563", %__utac__error_stack_mgt_bb275 ], [ %"470", %__utac__error_stack_mgt_bb257 ], [ null, %__utac__error_stack_mgt_bb274 ], [ %"470", %__utac__error_stack_mgt_NewDefault ]
  ret i8* %.0
}

; Function Attrs: nounwind uwtable
define i8* @__utac__get_this_arg(i32 %i, %struct.JoinPoint* %this) #0 {
__utac__get_this_arg_bb277:
  %"564" = icmp sgt i32 %i, 0
  br i1 %"564", label %__utac__get_this_arg_bb278, label %__utac__get_this_arg_bb281

__utac__get_this_arg_bb278:                       ; preds = %__utac__get_this_arg_bb277
  %"565" = ptrtoint %struct.JoinPoint* %this to i64
  %"566" = add i64 %"565", 16
  %"567" = inttoptr i64 %"566" to i32*
  %"568" = load i32* %"567", align 4
  %"569" = icmp sle i32 %i, %"568"
  br i1 %"569", label %__utac__get_this_arg_bb279, label %__utac__get_this_arg_bb280

__utac__get_this_arg_bb279:                       ; preds = %__utac__get_this_arg_bb278
  %"570" = sub nsw i32 %i, 1
  %"571" = ptrtoint %struct.JoinPoint* %this to i64
  %"572" = add i64 %"571", 8
  %"573" = inttoptr i64 %"572" to i8***
  %"574" = load i8*** %"573", align 8
  %"575" = sext i32 %"570" to i64
  %"576" = getelementptr inbounds i8** %"574", i64 %"575"
  %"577" = load i8** %"576", align 8
  ret i8* %"577"

__utac__get_this_arg_bb280:                       ; preds = %__utac__get_this_arg_bb278
  %"578" = getelementptr [30 x i8]* @.str4, i32 0, i32 0
  %"579" = getelementptr [9 x i8]* @.str5, i32 0, i32 0
  %"580" = getelementptr [21 x i8]* @.str6, i32 0, i32 0
  call void @__assert_fail(i8* %"578", i8* %"579", i32 123, i8* %"580") #7
  unreachable

__utac__get_this_arg_bb281:                       ; preds = %__utac__get_this_arg_bb277
  %"581" = getelementptr [30 x i8]* @.str4, i32 0, i32 0
  %"582" = getelementptr [9 x i8]* @.str5, i32 0, i32 0
  %"583" = getelementptr [21 x i8]* @.str6, i32 0, i32 0
  call void @__assert_fail(i8* %"581", i8* %"582", i32 123, i8* %"583") #7
  unreachable
}

; Function Attrs: noreturn nounwind
declare void @__assert_fail(i8*, i8*, i32, i8*) #4

; Function Attrs: nounwind uwtable
define i8* @__utac__get_this_argtype(i32 %i, %struct.JoinPoint* %this) #0 {
__utac__get_this_argtype_bb282:
  %"584" = icmp sgt i32 %i, 0
  br i1 %"584", label %__utac__get_this_argtype_bb283, label %__utac__get_this_argtype_bb286

__utac__get_this_argtype_bb283:                   ; preds = %__utac__get_this_argtype_bb282
  %"585" = ptrtoint %struct.JoinPoint* %this to i64
  %"586" = add i64 %"585", 16
  %"587" = inttoptr i64 %"586" to i32*
  %"588" = load i32* %"587", align 4
  %"589" = icmp sle i32 %i, %"588"
  br i1 %"589", label %__utac__get_this_argtype_bb284, label %__utac__get_this_argtype_bb285

__utac__get_this_argtype_bb284:                   ; preds = %__utac__get_this_argtype_bb283
  %"590" = sub nsw i32 %i, 1
  %"591" = ptrtoint %struct.JoinPoint* %this to i64
  %"592" = add i64 %"591", 24
  %"593" = inttoptr i64 %"592" to i8***
  %"594" = load i8*** %"593", align 8
  %"595" = sext i32 %"590" to i64
  %"596" = getelementptr inbounds i8** %"594", i64 %"595"
  %"597" = load i8** %"596", align 8
  ret i8* %"597"

__utac__get_this_argtype_bb285:                   ; preds = %__utac__get_this_argtype_bb283
  %"598" = getelementptr [30 x i8]* @.str4, i32 0, i32 0
  %"599" = getelementptr [9 x i8]* @.str5, i32 0, i32 0
  %"600" = getelementptr [25 x i8]* @.str7, i32 0, i32 0
  call void @__assert_fail(i8* %"598", i8* %"599", i32 131, i8* %"600") #7
  unreachable

__utac__get_this_argtype_bb286:                   ; preds = %__utac__get_this_argtype_bb282
  %"601" = getelementptr [30 x i8]* @.str4, i32 0, i32 0
  %"602" = getelementptr [9 x i8]* @.str5, i32 0, i32 0
  %"603" = getelementptr [25 x i8]* @.str7, i32 0, i32 0
  call void @__assert_fail(i8* %"601", i8* %"602", i32 131, i8* %"603") #7
  unreachable
}

; Function Attrs: nounwind uwtable
define i32 @initClient() #0 {
initClient_bb287:
  %"604" = load i32* @"'__ste_Client_counter", align 4
  %"605" = icmp slt i32 %"604", 3
  br i1 %"605", label %initClient_bb288, label %initClient_bb289

initClient_bb288:                                 ; preds = %initClient_bb287
  %"606" = load i32* @"'__ste_Client_counter", align 4
  %"607" = add nsw i32 %"606", 1
  store i32 %"607", i32* @"'__ste_Client_counter", align 4
  %"608" = load i32* @"'__ste_Client_counter", align 4
  br label %initClient_bb289

initClient_bb289:                                 ; preds = %initClient_bb287, %initClient_bb288
  %.0 = phi i32 [ %"608", %initClient_bb288 ], [ -1, %initClient_bb287 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i8* @getClientName(i32 %handle) #0 {
getClientName_bb290:
  br label %getClientName_NodeBlock3

getClientName_NodeBlock3:                         ; preds = %getClientName_bb290
  %Pivot4 = icmp slt i32 %handle, 2
  br i1 %Pivot4, label %getClientName_LeafBlock, label %getClientName_NodeBlock

getClientName_LeafBlock:                          ; preds = %getClientName_NodeBlock3
  %SwitchLeaf = icmp eq i32 %handle, 1
  br i1 %SwitchLeaf, label %getClientName_bb291, label %getClientName_NewDefault

getClientName_bb291:                              ; preds = %getClientName_LeafBlock
  %"609" = load i8** @__ste_client_name0, align 8
  br label %getClientName_bb294

getClientName_NodeBlock:                          ; preds = %getClientName_NodeBlock3
  %Pivot = icmp slt i32 %handle, 3
  br i1 %Pivot, label %getClientName_bb292, label %getClientName_LeafBlock1

getClientName_bb292:                              ; preds = %getClientName_NodeBlock
  %"610" = load i8** @__ste_client_name1, align 8
  br label %getClientName_bb294

getClientName_LeafBlock1:                         ; preds = %getClientName_NodeBlock
  %SwitchLeaf2 = icmp eq i32 %handle, 3
  br i1 %SwitchLeaf2, label %getClientName_bb293, label %getClientName_NewDefault

getClientName_bb293:                              ; preds = %getClientName_LeafBlock1
  %"611" = load i8** @__ste_client_name2, align 8
  br label %getClientName_bb294

getClientName_NewDefault:                         ; preds = %getClientName_LeafBlock1, %getClientName_LeafBlock
  br label %getClientName_bb294

getClientName_bb294:                              ; preds = %getClientName_NewDefault, %getClientName_bb293, %getClientName_bb292, %getClientName_bb291
  %.0 = phi i8* [ %"609", %getClientName_bb291 ], [ %"610", %getClientName_bb292 ], [ %"611", %getClientName_bb293 ], [ null, %getClientName_NewDefault ]
  ret i8* %.0
}

; Function Attrs: nounwind uwtable
define void @setClientName(i32 %handle, i8* %value) #0 {
setClientName_bb295:
  br label %setClientName_NodeBlock3

setClientName_NodeBlock3:                         ; preds = %setClientName_bb295
  %Pivot4 = icmp slt i32 %handle, 2
  br i1 %Pivot4, label %setClientName_LeafBlock, label %setClientName_NodeBlock

setClientName_LeafBlock:                          ; preds = %setClientName_NodeBlock3
  %SwitchLeaf = icmp eq i32 %handle, 1
  br i1 %SwitchLeaf, label %setClientName_bb296, label %setClientName_NewDefault

setClientName_bb296:                              ; preds = %setClientName_LeafBlock
  store i8* %value, i8** @__ste_client_name0, align 8
  br label %setClientName_bb299

setClientName_NodeBlock:                          ; preds = %setClientName_NodeBlock3
  %Pivot = icmp slt i32 %handle, 3
  br i1 %Pivot, label %setClientName_bb297, label %setClientName_LeafBlock1

setClientName_bb297:                              ; preds = %setClientName_NodeBlock
  store i8* %value, i8** @__ste_client_name1, align 8
  br label %setClientName_bb299

setClientName_LeafBlock1:                         ; preds = %setClientName_NodeBlock
  %SwitchLeaf2 = icmp eq i32 %handle, 3
  br i1 %SwitchLeaf2, label %setClientName_bb298, label %setClientName_NewDefault

setClientName_bb298:                              ; preds = %setClientName_LeafBlock1
  store i8* %value, i8** @__ste_client_name2, align 8
  br label %setClientName_bb299

setClientName_NewDefault:                         ; preds = %setClientName_LeafBlock1, %setClientName_LeafBlock
  br label %setClientName_bb299

setClientName_bb299:                              ; preds = %setClientName_NewDefault, %setClientName_bb297, %setClientName_bb298, %setClientName_bb296
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @getClientOutbuffer(i32 %handle) #0 {
getClientOutbuffer_bb300:
  br label %getClientOutbuffer_NodeBlock3

getClientOutbuffer_NodeBlock3:                    ; preds = %getClientOutbuffer_bb300
  %Pivot4 = icmp slt i32 %handle, 2
  br i1 %Pivot4, label %getClientOutbuffer_LeafBlock, label %getClientOutbuffer_NodeBlock

getClientOutbuffer_LeafBlock:                     ; preds = %getClientOutbuffer_NodeBlock3
  %SwitchLeaf = icmp eq i32 %handle, 1
  br i1 %SwitchLeaf, label %getClientOutbuffer_bb301, label %getClientOutbuffer_NewDefault

getClientOutbuffer_bb301:                         ; preds = %getClientOutbuffer_LeafBlock
  %"612" = load i32* @"'__ste_client_outbuffer0", align 4
  br label %getClientOutbuffer_bb304

getClientOutbuffer_NodeBlock:                     ; preds = %getClientOutbuffer_NodeBlock3
  %Pivot = icmp slt i32 %handle, 3
  br i1 %Pivot, label %getClientOutbuffer_bb302, label %getClientOutbuffer_LeafBlock1

getClientOutbuffer_bb302:                         ; preds = %getClientOutbuffer_NodeBlock
  %"613" = load i32* @"'__ste_client_outbuffer1", align 4
  br label %getClientOutbuffer_bb304

getClientOutbuffer_LeafBlock1:                    ; preds = %getClientOutbuffer_NodeBlock
  %SwitchLeaf2 = icmp eq i32 %handle, 3
  br i1 %SwitchLeaf2, label %getClientOutbuffer_bb303, label %getClientOutbuffer_NewDefault

getClientOutbuffer_bb303:                         ; preds = %getClientOutbuffer_LeafBlock1
  %"614" = load i32* @"'__ste_client_outbuffer2", align 4
  br label %getClientOutbuffer_bb304

getClientOutbuffer_NewDefault:                    ; preds = %getClientOutbuffer_LeafBlock1, %getClientOutbuffer_LeafBlock
  br label %getClientOutbuffer_bb304

getClientOutbuffer_bb304:                         ; preds = %getClientOutbuffer_NewDefault, %getClientOutbuffer_bb303, %getClientOutbuffer_bb302, %getClientOutbuffer_bb301
  %.0 = phi i32 [ %"612", %getClientOutbuffer_bb301 ], [ %"613", %getClientOutbuffer_bb302 ], [ %"614", %getClientOutbuffer_bb303 ], [ 0, %getClientOutbuffer_NewDefault ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @setClientOutbuffer(i32 %handle, i32 %value) #0 {
setClientOutbuffer_bb305:
  br label %setClientOutbuffer_NodeBlock3

setClientOutbuffer_NodeBlock3:                    ; preds = %setClientOutbuffer_bb305
  %Pivot4 = icmp slt i32 %handle, 2
  br i1 %Pivot4, label %setClientOutbuffer_LeafBlock, label %setClientOutbuffer_NodeBlock

setClientOutbuffer_LeafBlock:                     ; preds = %setClientOutbuffer_NodeBlock3
  %SwitchLeaf = icmp eq i32 %handle, 1
  br i1 %SwitchLeaf, label %setClientOutbuffer_bb306, label %setClientOutbuffer_NewDefault

setClientOutbuffer_bb306:                         ; preds = %setClientOutbuffer_LeafBlock
  store i32 %value, i32* @"'__ste_client_outbuffer0", align 4
  br label %setClientOutbuffer_bb309

setClientOutbuffer_NodeBlock:                     ; preds = %setClientOutbuffer_NodeBlock3
  %Pivot = icmp slt i32 %handle, 3
  br i1 %Pivot, label %setClientOutbuffer_bb307, label %setClientOutbuffer_LeafBlock1

setClientOutbuffer_bb307:                         ; preds = %setClientOutbuffer_NodeBlock
  store i32 %value, i32* @"'__ste_client_outbuffer1", align 4
  br label %setClientOutbuffer_bb309

setClientOutbuffer_LeafBlock1:                    ; preds = %setClientOutbuffer_NodeBlock
  %SwitchLeaf2 = icmp eq i32 %handle, 3
  br i1 %SwitchLeaf2, label %setClientOutbuffer_bb308, label %setClientOutbuffer_NewDefault

setClientOutbuffer_bb308:                         ; preds = %setClientOutbuffer_LeafBlock1
  store i32 %value, i32* @"'__ste_client_outbuffer2", align 4
  br label %setClientOutbuffer_bb309

setClientOutbuffer_NewDefault:                    ; preds = %setClientOutbuffer_LeafBlock1, %setClientOutbuffer_LeafBlock
  br label %setClientOutbuffer_bb309

setClientOutbuffer_bb309:                         ; preds = %setClientOutbuffer_NewDefault, %setClientOutbuffer_bb307, %setClientOutbuffer_bb308, %setClientOutbuffer_bb306
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @getClientAddressBookSize(i32 %handle) #0 {
getClientAddressBookSize_bb310:
  br label %getClientAddressBookSize_NodeBlock3

getClientAddressBookSize_NodeBlock3:              ; preds = %getClientAddressBookSize_bb310
  %Pivot4 = icmp slt i32 %handle, 2
  br i1 %Pivot4, label %getClientAddressBookSize_LeafBlock, label %getClientAddressBookSize_NodeBlock

getClientAddressBookSize_LeafBlock:               ; preds = %getClientAddressBookSize_NodeBlock3
  %SwitchLeaf = icmp eq i32 %handle, 1
  br i1 %SwitchLeaf, label %getClientAddressBookSize_bb311, label %getClientAddressBookSize_NewDefault

getClientAddressBookSize_bb311:                   ; preds = %getClientAddressBookSize_LeafBlock
  %"615" = load i32* @"'__ste_ClientAddressBook_size0", align 4
  br label %getClientAddressBookSize_bb314

getClientAddressBookSize_NodeBlock:               ; preds = %getClientAddressBookSize_NodeBlock3
  %Pivot = icmp slt i32 %handle, 3
  br i1 %Pivot, label %getClientAddressBookSize_bb312, label %getClientAddressBookSize_LeafBlock1

getClientAddressBookSize_bb312:                   ; preds = %getClientAddressBookSize_NodeBlock
  %"616" = load i32* @"'__ste_ClientAddressBook_size1", align 4
  br label %getClientAddressBookSize_bb314

getClientAddressBookSize_LeafBlock1:              ; preds = %getClientAddressBookSize_NodeBlock
  %SwitchLeaf2 = icmp eq i32 %handle, 3
  br i1 %SwitchLeaf2, label %getClientAddressBookSize_bb313, label %getClientAddressBookSize_NewDefault

getClientAddressBookSize_bb313:                   ; preds = %getClientAddressBookSize_LeafBlock1
  %"617" = load i32* @"'__ste_ClientAddressBook_size2", align 4
  br label %getClientAddressBookSize_bb314

getClientAddressBookSize_NewDefault:              ; preds = %getClientAddressBookSize_LeafBlock1, %getClientAddressBookSize_LeafBlock
  br label %getClientAddressBookSize_bb314

getClientAddressBookSize_bb314:                   ; preds = %getClientAddressBookSize_NewDefault, %getClientAddressBookSize_bb313, %getClientAddressBookSize_bb312, %getClientAddressBookSize_bb311
  %.0 = phi i32 [ %"615", %getClientAddressBookSize_bb311 ], [ %"616", %getClientAddressBookSize_bb312 ], [ %"617", %getClientAddressBookSize_bb313 ], [ 0, %getClientAddressBookSize_NewDefault ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @setClientAddressBookSize(i32 %handle, i32 %value) #0 {
setClientAddressBookSize_bb315:
  br label %setClientAddressBookSize_NodeBlock3

setClientAddressBookSize_NodeBlock3:              ; preds = %setClientAddressBookSize_bb315
  %Pivot4 = icmp slt i32 %handle, 2
  br i1 %Pivot4, label %setClientAddressBookSize_LeafBlock, label %setClientAddressBookSize_NodeBlock

setClientAddressBookSize_LeafBlock:               ; preds = %setClientAddressBookSize_NodeBlock3
  %SwitchLeaf = icmp eq i32 %handle, 1
  br i1 %SwitchLeaf, label %setClientAddressBookSize_bb316, label %setClientAddressBookSize_NewDefault

setClientAddressBookSize_bb316:                   ; preds = %setClientAddressBookSize_LeafBlock
  store i32 %value, i32* @"'__ste_ClientAddressBook_size0", align 4
  br label %setClientAddressBookSize_bb319

setClientAddressBookSize_NodeBlock:               ; preds = %setClientAddressBookSize_NodeBlock3
  %Pivot = icmp slt i32 %handle, 3
  br i1 %Pivot, label %setClientAddressBookSize_bb317, label %setClientAddressBookSize_LeafBlock1

setClientAddressBookSize_bb317:                   ; preds = %setClientAddressBookSize_NodeBlock
  store i32 %value, i32* @"'__ste_ClientAddressBook_size1", align 4
  br label %setClientAddressBookSize_bb319

setClientAddressBookSize_LeafBlock1:              ; preds = %setClientAddressBookSize_NodeBlock
  %SwitchLeaf2 = icmp eq i32 %handle, 3
  br i1 %SwitchLeaf2, label %setClientAddressBookSize_bb318, label %setClientAddressBookSize_NewDefault

setClientAddressBookSize_bb318:                   ; preds = %setClientAddressBookSize_LeafBlock1
  store i32 %value, i32* @"'__ste_ClientAddressBook_size2", align 4
  br label %setClientAddressBookSize_bb319

setClientAddressBookSize_NewDefault:              ; preds = %setClientAddressBookSize_LeafBlock1, %setClientAddressBookSize_LeafBlock
  br label %setClientAddressBookSize_bb319

setClientAddressBookSize_bb319:                   ; preds = %setClientAddressBookSize_NewDefault, %setClientAddressBookSize_bb317, %setClientAddressBookSize_bb318, %setClientAddressBookSize_bb316
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @createClientAddressBookEntry(i32 %handle) #0 {
createClientAddressBookEntry_bb320:
  %Pivot4.i = icmp slt i32 %handle, 2
  br i1 %Pivot4.i, label %createClientAddressBookEntry_LeafBlock.i, label %createClientAddressBookEntry_NodeBlock.i

createClientAddressBookEntry_LeafBlock.i:         ; preds = %createClientAddressBookEntry_bb320
  %SwitchLeaf.i = icmp eq i32 %handle, 1
  %"618" = load i32* @"'__ste_ClientAddressBook_size0", align 4
  %. = select i1 %SwitchLeaf.i, i32 %"618", i32 0
  br label %createClientAddressBookEntry_getClientAddressBookSize.exit

createClientAddressBookEntry_NodeBlock.i:         ; preds = %createClientAddressBookEntry_bb320
  %Pivot.i = icmp slt i32 %handle, 3
  br i1 %Pivot.i, label %createClientAddressBookEntry_bb321, label %createClientAddressBookEntry_LeafBlock1.i

createClientAddressBookEntry_bb321:               ; preds = %createClientAddressBookEntry_NodeBlock.i
  %"619" = load i32* @"'__ste_ClientAddressBook_size1", align 4
  br label %createClientAddressBookEntry_getClientAddressBookSize.exit

createClientAddressBookEntry_LeafBlock1.i:        ; preds = %createClientAddressBookEntry_NodeBlock.i
  %SwitchLeaf2.i = icmp eq i32 %handle, 3
  %"620" = load i32* @"'__ste_ClientAddressBook_size2", align 4
  %.9 = select i1 %SwitchLeaf2.i, i32 %"620", i32 0
  br label %createClientAddressBookEntry_getClientAddressBookSize.exit

createClientAddressBookEntry_getClientAddressBookSize.exit: ; preds = %createClientAddressBookEntry_LeafBlock1.i, %createClientAddressBookEntry_LeafBlock.i, %createClientAddressBookEntry_bb321
  %.0.i = phi i32 [ %"619", %createClientAddressBookEntry_bb321 ], [ %., %createClientAddressBookEntry_LeafBlock.i ], [ %.9, %createClientAddressBookEntry_LeafBlock1.i ]
  %"621" = icmp slt i32 %.0.i, 3
  br i1 %"621", label %createClientAddressBookEntry_bb322, label %createClientAddressBookEntry_bb326

createClientAddressBookEntry_bb322:               ; preds = %createClientAddressBookEntry_getClientAddressBookSize.exit
  %"622" = add nsw i32 %.0.i, 1
  %Pivot4.i1 = icmp slt i32 %handle, 2
  br i1 %Pivot4.i1, label %createClientAddressBookEntry_LeafBlock.i3, label %createClientAddressBookEntry_NodeBlock.i5

createClientAddressBookEntry_LeafBlock.i3:        ; preds = %createClientAddressBookEntry_bb322
  %SwitchLeaf.i2 = icmp eq i32 %handle, 1
  br i1 %SwitchLeaf.i2, label %createClientAddressBookEntry_bb323, label %createClientAddressBookEntry_setClientAddressBookSize.exit

createClientAddressBookEntry_bb323:               ; preds = %createClientAddressBookEntry_LeafBlock.i3
  store i32 %"622", i32* @"'__ste_ClientAddressBook_size0", align 4
  br label %createClientAddressBookEntry_setClientAddressBookSize.exit

createClientAddressBookEntry_NodeBlock.i5:        ; preds = %createClientAddressBookEntry_bb322
  %Pivot.i4 = icmp slt i32 %handle, 3
  br i1 %Pivot.i4, label %createClientAddressBookEntry_bb324, label %createClientAddressBookEntry_LeafBlock1.i7

createClientAddressBookEntry_bb324:               ; preds = %createClientAddressBookEntry_NodeBlock.i5
  store i32 %"622", i32* @"'__ste_ClientAddressBook_size1", align 4
  br label %createClientAddressBookEntry_setClientAddressBookSize.exit

createClientAddressBookEntry_LeafBlock1.i7:       ; preds = %createClientAddressBookEntry_NodeBlock.i5
  %SwitchLeaf2.i6 = icmp eq i32 %handle, 3
  br i1 %SwitchLeaf2.i6, label %createClientAddressBookEntry_bb325, label %createClientAddressBookEntry_setClientAddressBookSize.exit

createClientAddressBookEntry_bb325:               ; preds = %createClientAddressBookEntry_LeafBlock1.i7
  store i32 %"622", i32* @"'__ste_ClientAddressBook_size2", align 4
  br label %createClientAddressBookEntry_setClientAddressBookSize.exit

createClientAddressBookEntry_setClientAddressBookSize.exit: ; preds = %createClientAddressBookEntry_LeafBlock.i3, %createClientAddressBookEntry_LeafBlock1.i7, %createClientAddressBookEntry_bb323, %createClientAddressBookEntry_bb324, %createClientAddressBookEntry_bb325
  %"623" = add nsw i32 %.0.i, 1
  br label %createClientAddressBookEntry_bb326

createClientAddressBookEntry_bb326:               ; preds = %createClientAddressBookEntry_getClientAddressBookSize.exit, %createClientAddressBookEntry_setClientAddressBookSize.exit
  %.0 = phi i32 [ %"623", %createClientAddressBookEntry_setClientAddressBookSize.exit ], [ -1, %createClientAddressBookEntry_getClientAddressBookSize.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @getClientAddressBookAlias(i32 %handle, i32 %index) #0 {
getClientAddressBookAlias_bb327:
  br label %getClientAddressBookAlias_NodeBlock3

getClientAddressBookAlias_NodeBlock3:             ; preds = %getClientAddressBookAlias_bb327
  %Pivot4 = icmp slt i32 %handle, 2
  br i1 %Pivot4, label %getClientAddressBookAlias_LeafBlock, label %getClientAddressBookAlias_NodeBlock

getClientAddressBookAlias_LeafBlock:              ; preds = %getClientAddressBookAlias_NodeBlock3
  %SwitchLeaf = icmp eq i32 %handle, 1
  br i1 %SwitchLeaf, label %getClientAddressBookAlias_bb328, label %getClientAddressBookAlias_NewDefault

getClientAddressBookAlias_bb328:                  ; preds = %getClientAddressBookAlias_LeafBlock
  br label %getClientAddressBookAlias_NodeBlock12

getClientAddressBookAlias_NodeBlock12:            ; preds = %getClientAddressBookAlias_bb328
  %Pivot13 = icmp slt i32 %index, 1
  br i1 %Pivot13, label %getClientAddressBookAlias_LeafBlock6, label %getClientAddressBookAlias_NodeBlock10

getClientAddressBookAlias_LeafBlock6:             ; preds = %getClientAddressBookAlias_NodeBlock12
  %SwitchLeaf7 = icmp eq i32 %index, 0
  br i1 %SwitchLeaf7, label %getClientAddressBookAlias_bb329, label %getClientAddressBookAlias_NewDefault5

getClientAddressBookAlias_bb329:                  ; preds = %getClientAddressBookAlias_LeafBlock6
  %"624" = load i32* @"'__ste_Client_AddressBook0_Alias0", align 4
  br label %getClientAddressBookAlias_bb340

getClientAddressBookAlias_NodeBlock10:            ; preds = %getClientAddressBookAlias_NodeBlock12
  %Pivot11 = icmp slt i32 %index, 2
  br i1 %Pivot11, label %getClientAddressBookAlias_bb330, label %getClientAddressBookAlias_LeafBlock8

getClientAddressBookAlias_bb330:                  ; preds = %getClientAddressBookAlias_NodeBlock10
  %"625" = load i32* @"'__ste_Client_AddressBook0_Alias1", align 4
  br label %getClientAddressBookAlias_bb340

getClientAddressBookAlias_LeafBlock8:             ; preds = %getClientAddressBookAlias_NodeBlock10
  %SwitchLeaf9 = icmp eq i32 %index, 2
  br i1 %SwitchLeaf9, label %getClientAddressBookAlias_bb331, label %getClientAddressBookAlias_NewDefault5

getClientAddressBookAlias_bb331:                  ; preds = %getClientAddressBookAlias_LeafBlock8
  %"626" = load i32* @"'__ste_Client_AddressBook0_Alias2", align 4
  br label %getClientAddressBookAlias_bb340

getClientAddressBookAlias_NewDefault5:            ; preds = %getClientAddressBookAlias_LeafBlock8, %getClientAddressBookAlias_LeafBlock6
  br label %getClientAddressBookAlias_bb340

getClientAddressBookAlias_NodeBlock:              ; preds = %getClientAddressBookAlias_NodeBlock3
  %Pivot = icmp slt i32 %handle, 3
  br i1 %Pivot, label %getClientAddressBookAlias_bb332, label %getClientAddressBookAlias_LeafBlock1

getClientAddressBookAlias_bb332:                  ; preds = %getClientAddressBookAlias_NodeBlock
  br label %getClientAddressBookAlias_NodeBlock21

getClientAddressBookAlias_NodeBlock21:            ; preds = %getClientAddressBookAlias_bb332
  %Pivot22 = icmp slt i32 %index, 1
  br i1 %Pivot22, label %getClientAddressBookAlias_LeafBlock15, label %getClientAddressBookAlias_NodeBlock19

getClientAddressBookAlias_LeafBlock15:            ; preds = %getClientAddressBookAlias_NodeBlock21
  %SwitchLeaf16 = icmp eq i32 %index, 0
  br i1 %SwitchLeaf16, label %getClientAddressBookAlias_bb333, label %getClientAddressBookAlias_NewDefault14

getClientAddressBookAlias_bb333:                  ; preds = %getClientAddressBookAlias_LeafBlock15
  %"627" = load i32* @"'__ste_Client_AddressBook1_Alias0", align 4
  br label %getClientAddressBookAlias_bb340

getClientAddressBookAlias_NodeBlock19:            ; preds = %getClientAddressBookAlias_NodeBlock21
  %Pivot20 = icmp slt i32 %index, 2
  br i1 %Pivot20, label %getClientAddressBookAlias_bb334, label %getClientAddressBookAlias_LeafBlock17

getClientAddressBookAlias_bb334:                  ; preds = %getClientAddressBookAlias_NodeBlock19
  %"628" = load i32* @"'__ste_Client_AddressBook1_Alias1", align 4
  br label %getClientAddressBookAlias_bb340

getClientAddressBookAlias_LeafBlock17:            ; preds = %getClientAddressBookAlias_NodeBlock19
  %SwitchLeaf18 = icmp eq i32 %index, 2
  br i1 %SwitchLeaf18, label %getClientAddressBookAlias_bb335, label %getClientAddressBookAlias_NewDefault14

getClientAddressBookAlias_bb335:                  ; preds = %getClientAddressBookAlias_LeafBlock17
  %"629" = load i32* @"'__ste_Client_AddressBook1_Alias2", align 4
  br label %getClientAddressBookAlias_bb340

getClientAddressBookAlias_NewDefault14:           ; preds = %getClientAddressBookAlias_LeafBlock17, %getClientAddressBookAlias_LeafBlock15
  br label %getClientAddressBookAlias_bb340

getClientAddressBookAlias_LeafBlock1:             ; preds = %getClientAddressBookAlias_NodeBlock
  %SwitchLeaf2 = icmp eq i32 %handle, 3
  br i1 %SwitchLeaf2, label %getClientAddressBookAlias_bb336, label %getClientAddressBookAlias_NewDefault

getClientAddressBookAlias_bb336:                  ; preds = %getClientAddressBookAlias_LeafBlock1
  br label %getClientAddressBookAlias_NodeBlock30

getClientAddressBookAlias_NodeBlock30:            ; preds = %getClientAddressBookAlias_bb336
  %Pivot31 = icmp slt i32 %index, 1
  br i1 %Pivot31, label %getClientAddressBookAlias_LeafBlock24, label %getClientAddressBookAlias_NodeBlock28

getClientAddressBookAlias_LeafBlock24:            ; preds = %getClientAddressBookAlias_NodeBlock30
  %SwitchLeaf25 = icmp eq i32 %index, 0
  br i1 %SwitchLeaf25, label %getClientAddressBookAlias_bb337, label %getClientAddressBookAlias_NewDefault23

getClientAddressBookAlias_bb337:                  ; preds = %getClientAddressBookAlias_LeafBlock24
  %"630" = load i32* @"'__ste_Client_AddressBook2_Alias0", align 4
  br label %getClientAddressBookAlias_bb340

getClientAddressBookAlias_NodeBlock28:            ; preds = %getClientAddressBookAlias_NodeBlock30
  %Pivot29 = icmp slt i32 %index, 2
  br i1 %Pivot29, label %getClientAddressBookAlias_bb338, label %getClientAddressBookAlias_LeafBlock26

getClientAddressBookAlias_bb338:                  ; preds = %getClientAddressBookAlias_NodeBlock28
  %"631" = load i32* @"'__ste_Client_AddressBook2_Alias1", align 4
  br label %getClientAddressBookAlias_bb340

getClientAddressBookAlias_LeafBlock26:            ; preds = %getClientAddressBookAlias_NodeBlock28
  %SwitchLeaf27 = icmp eq i32 %index, 2
  br i1 %SwitchLeaf27, label %getClientAddressBookAlias_bb339, label %getClientAddressBookAlias_NewDefault23

getClientAddressBookAlias_bb339:                  ; preds = %getClientAddressBookAlias_LeafBlock26
  %"632" = load i32* @"'__ste_Client_AddressBook2_Alias2", align 4
  br label %getClientAddressBookAlias_bb340

getClientAddressBookAlias_NewDefault23:           ; preds = %getClientAddressBookAlias_LeafBlock26, %getClientAddressBookAlias_LeafBlock24
  br label %getClientAddressBookAlias_bb340

getClientAddressBookAlias_NewDefault:             ; preds = %getClientAddressBookAlias_LeafBlock1, %getClientAddressBookAlias_LeafBlock
  br label %getClientAddressBookAlias_bb340

getClientAddressBookAlias_bb340:                  ; preds = %getClientAddressBookAlias_NewDefault23, %getClientAddressBookAlias_NewDefault14, %getClientAddressBookAlias_NewDefault5, %getClientAddressBookAlias_NewDefault, %getClientAddressBookAlias_bb339, %getClientAddressBookAlias_bb338, %getClientAddressBookAlias_bb337, %getClientAddressBookAlias_bb335, %getClientAddressBookAlias_bb334, %getClientAddressBookAlias_bb333, %getClientAddressBookAlias_bb331, %getClientAddressBookAlias_bb330, %getClientAddressBookAlias_bb329
  %.0 = phi i32 [ %"624", %getClientAddressBookAlias_bb329 ], [ %"625", %getClientAddressBookAlias_bb330 ], [ %"626", %getClientAddressBookAlias_bb331 ], [ %"627", %getClientAddressBookAlias_bb333 ], [ %"628", %getClientAddressBookAlias_bb334 ], [ %"629", %getClientAddressBookAlias_bb335 ], [ %"630", %getClientAddressBookAlias_bb337 ], [ %"631", %getClientAddressBookAlias_bb338 ], [ %"632", %getClientAddressBookAlias_bb339 ], [ 0, %getClientAddressBookAlias_NewDefault5 ], [ 0, %getClientAddressBookAlias_NewDefault14 ], [ 0, %getClientAddressBookAlias_NewDefault23 ], [ 0, %getClientAddressBookAlias_NewDefault ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @findClientAddressBookAlias(i32 %handle, i32 %userid) #0 {
findClientAddressBookAlias_bb341:
  br label %findClientAddressBookAlias_NodeBlock5

findClientAddressBookAlias_NodeBlock5:            ; preds = %findClientAddressBookAlias_bb341
  %Pivot6 = icmp slt i32 %handle, 2
  br i1 %Pivot6, label %findClientAddressBookAlias_LeafBlock, label %findClientAddressBookAlias_NodeBlock

findClientAddressBookAlias_LeafBlock:             ; preds = %findClientAddressBookAlias_NodeBlock5
  %SwitchLeaf = icmp eq i32 %handle, 1
  br i1 %SwitchLeaf, label %findClientAddressBookAlias_bb342, label %findClientAddressBookAlias_NewDefault

findClientAddressBookAlias_bb342:                 ; preds = %findClientAddressBookAlias_LeafBlock
  %"633" = load i32* @"'__ste_Client_AddressBook0_Alias0", align 4
  %"634" = icmp eq i32 %userid, %"633"
  br i1 %"634", label %findClientAddressBookAlias_bb351, label %findClientAddressBookAlias_bb343

findClientAddressBookAlias_bb343:                 ; preds = %findClientAddressBookAlias_bb342
  %"635" = load i32* @"'__ste_Client_AddressBook0_Alias1", align 4
  %"636" = icmp eq i32 %userid, %"635"
  br i1 %"636", label %findClientAddressBookAlias_bb351, label %findClientAddressBookAlias_bb344

findClientAddressBookAlias_bb344:                 ; preds = %findClientAddressBookAlias_bb343
  %"637" = load i32* @"'__ste_Client_AddressBook0_Alias2", align 4
  %"638" = icmp eq i32 %userid, %"637"
  %. = select i1 %"638", i32 2, i32 -1
  br label %findClientAddressBookAlias_bb351

findClientAddressBookAlias_NodeBlock:             ; preds = %findClientAddressBookAlias_NodeBlock5
  %Pivot = icmp slt i32 %handle, 3
  br i1 %Pivot, label %findClientAddressBookAlias_bb345, label %findClientAddressBookAlias_LeafBlock3

findClientAddressBookAlias_bb345:                 ; preds = %findClientAddressBookAlias_NodeBlock
  %"639" = load i32* @"'__ste_Client_AddressBook1_Alias0", align 4
  %"640" = icmp eq i32 %userid, %"639"
  br i1 %"640", label %findClientAddressBookAlias_bb351, label %findClientAddressBookAlias_bb346

findClientAddressBookAlias_bb346:                 ; preds = %findClientAddressBookAlias_bb345
  %"641" = load i32* @"'__ste_Client_AddressBook1_Alias1", align 4
  %"642" = icmp eq i32 %userid, %"641"
  br i1 %"642", label %findClientAddressBookAlias_bb351, label %findClientAddressBookAlias_bb347

findClientAddressBookAlias_bb347:                 ; preds = %findClientAddressBookAlias_bb346
  %"643" = load i32* @"'__ste_Client_AddressBook1_Alias2", align 4
  %"644" = icmp eq i32 %userid, %"643"
  %.1 = select i1 %"644", i32 2, i32 -1
  br label %findClientAddressBookAlias_bb351

findClientAddressBookAlias_LeafBlock3:            ; preds = %findClientAddressBookAlias_NodeBlock
  %SwitchLeaf4 = icmp eq i32 %handle, 3
  br i1 %SwitchLeaf4, label %findClientAddressBookAlias_bb348, label %findClientAddressBookAlias_NewDefault

findClientAddressBookAlias_bb348:                 ; preds = %findClientAddressBookAlias_LeafBlock3
  %"645" = load i32* @"'__ste_Client_AddressBook2_Alias0", align 4
  %"646" = icmp eq i32 %userid, %"645"
  br i1 %"646", label %findClientAddressBookAlias_bb351, label %findClientAddressBookAlias_bb349

findClientAddressBookAlias_bb349:                 ; preds = %findClientAddressBookAlias_bb348
  %"647" = load i32* @"'__ste_Client_AddressBook2_Alias1", align 4
  %"648" = icmp eq i32 %userid, %"647"
  br i1 %"648", label %findClientAddressBookAlias_bb351, label %findClientAddressBookAlias_bb350

findClientAddressBookAlias_bb350:                 ; preds = %findClientAddressBookAlias_bb349
  %"649" = load i32* @"'__ste_Client_AddressBook2_Alias2", align 4
  %"650" = icmp eq i32 %userid, %"649"
  %.2 = select i1 %"650", i32 2, i32 -1
  br label %findClientAddressBookAlias_bb351

findClientAddressBookAlias_NewDefault:            ; preds = %findClientAddressBookAlias_LeafBlock3, %findClientAddressBookAlias_LeafBlock
  br label %findClientAddressBookAlias_bb351

findClientAddressBookAlias_bb351:                 ; preds = %findClientAddressBookAlias_NewDefault, %findClientAddressBookAlias_bb350, %findClientAddressBookAlias_bb349, %findClientAddressBookAlias_bb348, %findClientAddressBookAlias_bb347, %findClientAddressBookAlias_bb346, %findClientAddressBookAlias_bb345, %findClientAddressBookAlias_bb344, %findClientAddressBookAlias_bb343, %findClientAddressBookAlias_bb342
  %.0 = phi i32 [ 0, %findClientAddressBookAlias_bb342 ], [ 1, %findClientAddressBookAlias_bb343 ], [ %., %findClientAddressBookAlias_bb344 ], [ 0, %findClientAddressBookAlias_bb345 ], [ 1, %findClientAddressBookAlias_bb346 ], [ %.1, %findClientAddressBookAlias_bb347 ], [ 0, %findClientAddressBookAlias_bb348 ], [ 1, %findClientAddressBookAlias_bb349 ], [ %.2, %findClientAddressBookAlias_bb350 ], [ -1, %findClientAddressBookAlias_NewDefault ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @setClientAddressBookAlias(i32 %handle, i32 %index, i32 %value) #0 {
setClientAddressBookAlias_bb352:
  br label %setClientAddressBookAlias_NodeBlock3

setClientAddressBookAlias_NodeBlock3:             ; preds = %setClientAddressBookAlias_bb352
  %Pivot4 = icmp slt i32 %handle, 2
  br i1 %Pivot4, label %setClientAddressBookAlias_LeafBlock, label %setClientAddressBookAlias_NodeBlock

setClientAddressBookAlias_LeafBlock:              ; preds = %setClientAddressBookAlias_NodeBlock3
  %SwitchLeaf = icmp eq i32 %handle, 1
  br i1 %SwitchLeaf, label %setClientAddressBookAlias_bb353, label %setClientAddressBookAlias_NewDefault

setClientAddressBookAlias_bb353:                  ; preds = %setClientAddressBookAlias_LeafBlock
  br label %setClientAddressBookAlias_NodeBlock12

setClientAddressBookAlias_NodeBlock12:            ; preds = %setClientAddressBookAlias_bb353
  %Pivot13 = icmp slt i32 %index, 1
  br i1 %Pivot13, label %setClientAddressBookAlias_LeafBlock6, label %setClientAddressBookAlias_NodeBlock10

setClientAddressBookAlias_LeafBlock6:             ; preds = %setClientAddressBookAlias_NodeBlock12
  %SwitchLeaf7 = icmp eq i32 %index, 0
  br i1 %SwitchLeaf7, label %setClientAddressBookAlias_bb354, label %setClientAddressBookAlias_NewDefault5

setClientAddressBookAlias_bb354:                  ; preds = %setClientAddressBookAlias_LeafBlock6
  store i32 %value, i32* @"'__ste_Client_AddressBook0_Alias0", align 4
  br label %setClientAddressBookAlias_bb365

setClientAddressBookAlias_NodeBlock10:            ; preds = %setClientAddressBookAlias_NodeBlock12
  %Pivot11 = icmp slt i32 %index, 2
  br i1 %Pivot11, label %setClientAddressBookAlias_bb355, label %setClientAddressBookAlias_LeafBlock8

setClientAddressBookAlias_bb355:                  ; preds = %setClientAddressBookAlias_NodeBlock10
  store i32 %value, i32* @"'__ste_Client_AddressBook0_Alias1", align 4
  br label %setClientAddressBookAlias_bb365

setClientAddressBookAlias_LeafBlock8:             ; preds = %setClientAddressBookAlias_NodeBlock10
  %SwitchLeaf9 = icmp eq i32 %index, 2
  br i1 %SwitchLeaf9, label %setClientAddressBookAlias_bb356, label %setClientAddressBookAlias_NewDefault5

setClientAddressBookAlias_bb356:                  ; preds = %setClientAddressBookAlias_LeafBlock8
  store i32 %value, i32* @"'__ste_Client_AddressBook0_Alias2", align 4
  br label %setClientAddressBookAlias_bb365

setClientAddressBookAlias_NewDefault5:            ; preds = %setClientAddressBookAlias_LeafBlock8, %setClientAddressBookAlias_LeafBlock6
  br label %setClientAddressBookAlias_bb365

setClientAddressBookAlias_NodeBlock:              ; preds = %setClientAddressBookAlias_NodeBlock3
  %Pivot = icmp slt i32 %handle, 3
  br i1 %Pivot, label %setClientAddressBookAlias_bb357, label %setClientAddressBookAlias_LeafBlock1

setClientAddressBookAlias_bb357:                  ; preds = %setClientAddressBookAlias_NodeBlock
  br label %setClientAddressBookAlias_NodeBlock21

setClientAddressBookAlias_NodeBlock21:            ; preds = %setClientAddressBookAlias_bb357
  %Pivot22 = icmp slt i32 %index, 1
  br i1 %Pivot22, label %setClientAddressBookAlias_LeafBlock15, label %setClientAddressBookAlias_NodeBlock19

setClientAddressBookAlias_LeafBlock15:            ; preds = %setClientAddressBookAlias_NodeBlock21
  %SwitchLeaf16 = icmp eq i32 %index, 0
  br i1 %SwitchLeaf16, label %setClientAddressBookAlias_bb358, label %setClientAddressBookAlias_NewDefault14

setClientAddressBookAlias_bb358:                  ; preds = %setClientAddressBookAlias_LeafBlock15
  store i32 %value, i32* @"'__ste_Client_AddressBook1_Alias0", align 4
  br label %setClientAddressBookAlias_bb365

setClientAddressBookAlias_NodeBlock19:            ; preds = %setClientAddressBookAlias_NodeBlock21
  %Pivot20 = icmp slt i32 %index, 2
  br i1 %Pivot20, label %setClientAddressBookAlias_bb359, label %setClientAddressBookAlias_LeafBlock17

setClientAddressBookAlias_bb359:                  ; preds = %setClientAddressBookAlias_NodeBlock19
  store i32 %value, i32* @"'__ste_Client_AddressBook1_Alias1", align 4
  br label %setClientAddressBookAlias_bb365

setClientAddressBookAlias_LeafBlock17:            ; preds = %setClientAddressBookAlias_NodeBlock19
  %SwitchLeaf18 = icmp eq i32 %index, 2
  br i1 %SwitchLeaf18, label %setClientAddressBookAlias_bb360, label %setClientAddressBookAlias_NewDefault14

setClientAddressBookAlias_bb360:                  ; preds = %setClientAddressBookAlias_LeafBlock17
  store i32 %value, i32* @"'__ste_Client_AddressBook1_Alias2", align 4
  br label %setClientAddressBookAlias_bb365

setClientAddressBookAlias_NewDefault14:           ; preds = %setClientAddressBookAlias_LeafBlock17, %setClientAddressBookAlias_LeafBlock15
  br label %setClientAddressBookAlias_bb365

setClientAddressBookAlias_LeafBlock1:             ; preds = %setClientAddressBookAlias_NodeBlock
  %SwitchLeaf2 = icmp eq i32 %handle, 3
  br i1 %SwitchLeaf2, label %setClientAddressBookAlias_bb361, label %setClientAddressBookAlias_NewDefault

setClientAddressBookAlias_bb361:                  ; preds = %setClientAddressBookAlias_LeafBlock1
  br label %setClientAddressBookAlias_NodeBlock30

setClientAddressBookAlias_NodeBlock30:            ; preds = %setClientAddressBookAlias_bb361
  %Pivot31 = icmp slt i32 %index, 1
  br i1 %Pivot31, label %setClientAddressBookAlias_LeafBlock24, label %setClientAddressBookAlias_NodeBlock28

setClientAddressBookAlias_LeafBlock24:            ; preds = %setClientAddressBookAlias_NodeBlock30
  %SwitchLeaf25 = icmp eq i32 %index, 0
  br i1 %SwitchLeaf25, label %setClientAddressBookAlias_bb362, label %setClientAddressBookAlias_NewDefault23

setClientAddressBookAlias_bb362:                  ; preds = %setClientAddressBookAlias_LeafBlock24
  store i32 %value, i32* @"'__ste_Client_AddressBook2_Alias0", align 4
  br label %setClientAddressBookAlias_bb365

setClientAddressBookAlias_NodeBlock28:            ; preds = %setClientAddressBookAlias_NodeBlock30
  %Pivot29 = icmp slt i32 %index, 2
  br i1 %Pivot29, label %setClientAddressBookAlias_bb363, label %setClientAddressBookAlias_LeafBlock26

setClientAddressBookAlias_bb363:                  ; preds = %setClientAddressBookAlias_NodeBlock28
  store i32 %value, i32* @"'__ste_Client_AddressBook2_Alias1", align 4
  br label %setClientAddressBookAlias_bb365

setClientAddressBookAlias_LeafBlock26:            ; preds = %setClientAddressBookAlias_NodeBlock28
  %SwitchLeaf27 = icmp eq i32 %index, 2
  br i1 %SwitchLeaf27, label %setClientAddressBookAlias_bb364, label %setClientAddressBookAlias_NewDefault23

setClientAddressBookAlias_bb364:                  ; preds = %setClientAddressBookAlias_LeafBlock26
  store i32 %value, i32* @"'__ste_Client_AddressBook2_Alias2", align 4
  br label %setClientAddressBookAlias_bb365

setClientAddressBookAlias_NewDefault23:           ; preds = %setClientAddressBookAlias_LeafBlock26, %setClientAddressBookAlias_LeafBlock24
  br label %setClientAddressBookAlias_bb365

setClientAddressBookAlias_NewDefault:             ; preds = %setClientAddressBookAlias_LeafBlock1, %setClientAddressBookAlias_LeafBlock
  br label %setClientAddressBookAlias_bb365

setClientAddressBookAlias_bb365:                  ; preds = %setClientAddressBookAlias_NewDefault23, %setClientAddressBookAlias_NewDefault14, %setClientAddressBookAlias_NewDefault5, %setClientAddressBookAlias_NewDefault, %setClientAddressBookAlias_bb359, %setClientAddressBookAlias_bb360, %setClientAddressBookAlias_bb358, %setClientAddressBookAlias_bb362, %setClientAddressBookAlias_bb364, %setClientAddressBookAlias_bb363, %setClientAddressBookAlias_bb354, %setClientAddressBookAlias_bb356, %setClientAddressBookAlias_bb355
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @getClientAddressBookAddress(i32 %handle, i32 %index) #0 {
getClientAddressBookAddress_bb366:
  br label %getClientAddressBookAddress_NodeBlock3

getClientAddressBookAddress_NodeBlock3:           ; preds = %getClientAddressBookAddress_bb366
  %Pivot4 = icmp slt i32 %handle, 2
  br i1 %Pivot4, label %getClientAddressBookAddress_LeafBlock, label %getClientAddressBookAddress_NodeBlock

getClientAddressBookAddress_LeafBlock:            ; preds = %getClientAddressBookAddress_NodeBlock3
  %SwitchLeaf = icmp eq i32 %handle, 1
  br i1 %SwitchLeaf, label %getClientAddressBookAddress_bb367, label %getClientAddressBookAddress_NewDefault

getClientAddressBookAddress_bb367:                ; preds = %getClientAddressBookAddress_LeafBlock
  br label %getClientAddressBookAddress_NodeBlock12

getClientAddressBookAddress_NodeBlock12:          ; preds = %getClientAddressBookAddress_bb367
  %Pivot13 = icmp slt i32 %index, 1
  br i1 %Pivot13, label %getClientAddressBookAddress_LeafBlock6, label %getClientAddressBookAddress_NodeBlock10

getClientAddressBookAddress_LeafBlock6:           ; preds = %getClientAddressBookAddress_NodeBlock12
  %SwitchLeaf7 = icmp eq i32 %index, 0
  br i1 %SwitchLeaf7, label %getClientAddressBookAddress_bb368, label %getClientAddressBookAddress_NewDefault5

getClientAddressBookAddress_bb368:                ; preds = %getClientAddressBookAddress_LeafBlock6
  %"651" = load i32* @"'__ste_Client_AddressBook0_Address0", align 4
  br label %getClientAddressBookAddress_bb379

getClientAddressBookAddress_NodeBlock10:          ; preds = %getClientAddressBookAddress_NodeBlock12
  %Pivot11 = icmp slt i32 %index, 2
  br i1 %Pivot11, label %getClientAddressBookAddress_bb369, label %getClientAddressBookAddress_LeafBlock8

getClientAddressBookAddress_bb369:                ; preds = %getClientAddressBookAddress_NodeBlock10
  %"652" = load i32* @"'__ste_Client_AddressBook0_Address1", align 4
  br label %getClientAddressBookAddress_bb379

getClientAddressBookAddress_LeafBlock8:           ; preds = %getClientAddressBookAddress_NodeBlock10
  %SwitchLeaf9 = icmp eq i32 %index, 2
  br i1 %SwitchLeaf9, label %getClientAddressBookAddress_bb370, label %getClientAddressBookAddress_NewDefault5

getClientAddressBookAddress_bb370:                ; preds = %getClientAddressBookAddress_LeafBlock8
  %"653" = load i32* @"'__ste_Client_AddressBook0_Address2", align 4
  br label %getClientAddressBookAddress_bb379

getClientAddressBookAddress_NewDefault5:          ; preds = %getClientAddressBookAddress_LeafBlock8, %getClientAddressBookAddress_LeafBlock6
  br label %getClientAddressBookAddress_bb379

getClientAddressBookAddress_NodeBlock:            ; preds = %getClientAddressBookAddress_NodeBlock3
  %Pivot = icmp slt i32 %handle, 3
  br i1 %Pivot, label %getClientAddressBookAddress_bb371, label %getClientAddressBookAddress_LeafBlock1

getClientAddressBookAddress_bb371:                ; preds = %getClientAddressBookAddress_NodeBlock
  br label %getClientAddressBookAddress_NodeBlock21

getClientAddressBookAddress_NodeBlock21:          ; preds = %getClientAddressBookAddress_bb371
  %Pivot22 = icmp slt i32 %index, 1
  br i1 %Pivot22, label %getClientAddressBookAddress_LeafBlock15, label %getClientAddressBookAddress_NodeBlock19

getClientAddressBookAddress_LeafBlock15:          ; preds = %getClientAddressBookAddress_NodeBlock21
  %SwitchLeaf16 = icmp eq i32 %index, 0
  br i1 %SwitchLeaf16, label %getClientAddressBookAddress_bb372, label %getClientAddressBookAddress_NewDefault14

getClientAddressBookAddress_bb372:                ; preds = %getClientAddressBookAddress_LeafBlock15
  %"654" = load i32* @"'__ste_Client_AddressBook1_Address0", align 4
  br label %getClientAddressBookAddress_bb379

getClientAddressBookAddress_NodeBlock19:          ; preds = %getClientAddressBookAddress_NodeBlock21
  %Pivot20 = icmp slt i32 %index, 2
  br i1 %Pivot20, label %getClientAddressBookAddress_bb373, label %getClientAddressBookAddress_LeafBlock17

getClientAddressBookAddress_bb373:                ; preds = %getClientAddressBookAddress_NodeBlock19
  %"655" = load i32* @"'__ste_Client_AddressBook1_Address1", align 4
  br label %getClientAddressBookAddress_bb379

getClientAddressBookAddress_LeafBlock17:          ; preds = %getClientAddressBookAddress_NodeBlock19
  %SwitchLeaf18 = icmp eq i32 %index, 2
  br i1 %SwitchLeaf18, label %getClientAddressBookAddress_bb374, label %getClientAddressBookAddress_NewDefault14

getClientAddressBookAddress_bb374:                ; preds = %getClientAddressBookAddress_LeafBlock17
  %"656" = load i32* @"'__ste_Client_AddressBook1_Address2", align 4
  br label %getClientAddressBookAddress_bb379

getClientAddressBookAddress_NewDefault14:         ; preds = %getClientAddressBookAddress_LeafBlock17, %getClientAddressBookAddress_LeafBlock15
  br label %getClientAddressBookAddress_bb379

getClientAddressBookAddress_LeafBlock1:           ; preds = %getClientAddressBookAddress_NodeBlock
  %SwitchLeaf2 = icmp eq i32 %handle, 3
  br i1 %SwitchLeaf2, label %getClientAddressBookAddress_bb375, label %getClientAddressBookAddress_NewDefault

getClientAddressBookAddress_bb375:                ; preds = %getClientAddressBookAddress_LeafBlock1
  br label %getClientAddressBookAddress_NodeBlock30

getClientAddressBookAddress_NodeBlock30:          ; preds = %getClientAddressBookAddress_bb375
  %Pivot31 = icmp slt i32 %index, 1
  br i1 %Pivot31, label %getClientAddressBookAddress_LeafBlock24, label %getClientAddressBookAddress_NodeBlock28

getClientAddressBookAddress_LeafBlock24:          ; preds = %getClientAddressBookAddress_NodeBlock30
  %SwitchLeaf25 = icmp eq i32 %index, 0
  br i1 %SwitchLeaf25, label %getClientAddressBookAddress_bb376, label %getClientAddressBookAddress_NewDefault23

getClientAddressBookAddress_bb376:                ; preds = %getClientAddressBookAddress_LeafBlock24
  %"657" = load i32* @"'__ste_Client_AddressBook2_Address0", align 4
  br label %getClientAddressBookAddress_bb379

getClientAddressBookAddress_NodeBlock28:          ; preds = %getClientAddressBookAddress_NodeBlock30
  %Pivot29 = icmp slt i32 %index, 2
  br i1 %Pivot29, label %getClientAddressBookAddress_bb377, label %getClientAddressBookAddress_LeafBlock26

getClientAddressBookAddress_bb377:                ; preds = %getClientAddressBookAddress_NodeBlock28
  %"658" = load i32* @"'__ste_Client_AddressBook2_Address1", align 4
  br label %getClientAddressBookAddress_bb379

getClientAddressBookAddress_LeafBlock26:          ; preds = %getClientAddressBookAddress_NodeBlock28
  %SwitchLeaf27 = icmp eq i32 %index, 2
  br i1 %SwitchLeaf27, label %getClientAddressBookAddress_bb378, label %getClientAddressBookAddress_NewDefault23

getClientAddressBookAddress_bb378:                ; preds = %getClientAddressBookAddress_LeafBlock26
  %"659" = load i32* @"'__ste_Client_AddressBook2_Address2", align 4
  br label %getClientAddressBookAddress_bb379

getClientAddressBookAddress_NewDefault23:         ; preds = %getClientAddressBookAddress_LeafBlock26, %getClientAddressBookAddress_LeafBlock24
  br label %getClientAddressBookAddress_bb379

getClientAddressBookAddress_NewDefault:           ; preds = %getClientAddressBookAddress_LeafBlock1, %getClientAddressBookAddress_LeafBlock
  br label %getClientAddressBookAddress_bb379

getClientAddressBookAddress_bb379:                ; preds = %getClientAddressBookAddress_NewDefault23, %getClientAddressBookAddress_NewDefault14, %getClientAddressBookAddress_NewDefault5, %getClientAddressBookAddress_NewDefault, %getClientAddressBookAddress_bb378, %getClientAddressBookAddress_bb377, %getClientAddressBookAddress_bb376, %getClientAddressBookAddress_bb374, %getClientAddressBookAddress_bb373, %getClientAddressBookAddress_bb372, %getClientAddressBookAddress_bb370, %getClientAddressBookAddress_bb369, %getClientAddressBookAddress_bb368
  %.0 = phi i32 [ %"651", %getClientAddressBookAddress_bb368 ], [ %"652", %getClientAddressBookAddress_bb369 ], [ %"653", %getClientAddressBookAddress_bb370 ], [ %"654", %getClientAddressBookAddress_bb372 ], [ %"655", %getClientAddressBookAddress_bb373 ], [ %"656", %getClientAddressBookAddress_bb374 ], [ %"657", %getClientAddressBookAddress_bb376 ], [ %"658", %getClientAddressBookAddress_bb377 ], [ %"659", %getClientAddressBookAddress_bb378 ], [ 0, %getClientAddressBookAddress_NewDefault5 ], [ 0, %getClientAddressBookAddress_NewDefault14 ], [ 0, %getClientAddressBookAddress_NewDefault23 ], [ 0, %getClientAddressBookAddress_NewDefault ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @setClientAddressBookAddress(i32 %handle, i32 %index, i32 %value) #0 {
setClientAddressBookAddress_bb380:
  br label %setClientAddressBookAddress_NodeBlock3

setClientAddressBookAddress_NodeBlock3:           ; preds = %setClientAddressBookAddress_bb380
  %Pivot4 = icmp slt i32 %handle, 2
  br i1 %Pivot4, label %setClientAddressBookAddress_LeafBlock, label %setClientAddressBookAddress_NodeBlock

setClientAddressBookAddress_LeafBlock:            ; preds = %setClientAddressBookAddress_NodeBlock3
  %SwitchLeaf = icmp eq i32 %handle, 1
  br i1 %SwitchLeaf, label %setClientAddressBookAddress_bb381, label %setClientAddressBookAddress_NewDefault

setClientAddressBookAddress_bb381:                ; preds = %setClientAddressBookAddress_LeafBlock
  br label %setClientAddressBookAddress_NodeBlock12

setClientAddressBookAddress_NodeBlock12:          ; preds = %setClientAddressBookAddress_bb381
  %Pivot13 = icmp slt i32 %index, 1
  br i1 %Pivot13, label %setClientAddressBookAddress_LeafBlock6, label %setClientAddressBookAddress_NodeBlock10

setClientAddressBookAddress_LeafBlock6:           ; preds = %setClientAddressBookAddress_NodeBlock12
  %SwitchLeaf7 = icmp eq i32 %index, 0
  br i1 %SwitchLeaf7, label %setClientAddressBookAddress_bb382, label %setClientAddressBookAddress_NewDefault5

setClientAddressBookAddress_bb382:                ; preds = %setClientAddressBookAddress_LeafBlock6
  store i32 %value, i32* @"'__ste_Client_AddressBook0_Address0", align 4
  br label %setClientAddressBookAddress_bb393

setClientAddressBookAddress_NodeBlock10:          ; preds = %setClientAddressBookAddress_NodeBlock12
  %Pivot11 = icmp slt i32 %index, 2
  br i1 %Pivot11, label %setClientAddressBookAddress_bb383, label %setClientAddressBookAddress_LeafBlock8

setClientAddressBookAddress_bb383:                ; preds = %setClientAddressBookAddress_NodeBlock10
  store i32 %value, i32* @"'__ste_Client_AddressBook0_Address1", align 4
  br label %setClientAddressBookAddress_bb393

setClientAddressBookAddress_LeafBlock8:           ; preds = %setClientAddressBookAddress_NodeBlock10
  %SwitchLeaf9 = icmp eq i32 %index, 2
  br i1 %SwitchLeaf9, label %setClientAddressBookAddress_bb384, label %setClientAddressBookAddress_NewDefault5

setClientAddressBookAddress_bb384:                ; preds = %setClientAddressBookAddress_LeafBlock8
  store i32 %value, i32* @"'__ste_Client_AddressBook0_Address2", align 4
  br label %setClientAddressBookAddress_bb393

setClientAddressBookAddress_NewDefault5:          ; preds = %setClientAddressBookAddress_LeafBlock8, %setClientAddressBookAddress_LeafBlock6
  br label %setClientAddressBookAddress_bb393

setClientAddressBookAddress_NodeBlock:            ; preds = %setClientAddressBookAddress_NodeBlock3
  %Pivot = icmp slt i32 %handle, 3
  br i1 %Pivot, label %setClientAddressBookAddress_bb385, label %setClientAddressBookAddress_LeafBlock1

setClientAddressBookAddress_bb385:                ; preds = %setClientAddressBookAddress_NodeBlock
  br label %setClientAddressBookAddress_NodeBlock21

setClientAddressBookAddress_NodeBlock21:          ; preds = %setClientAddressBookAddress_bb385
  %Pivot22 = icmp slt i32 %index, 1
  br i1 %Pivot22, label %setClientAddressBookAddress_LeafBlock15, label %setClientAddressBookAddress_NodeBlock19

setClientAddressBookAddress_LeafBlock15:          ; preds = %setClientAddressBookAddress_NodeBlock21
  %SwitchLeaf16 = icmp eq i32 %index, 0
  br i1 %SwitchLeaf16, label %setClientAddressBookAddress_bb386, label %setClientAddressBookAddress_NewDefault14

setClientAddressBookAddress_bb386:                ; preds = %setClientAddressBookAddress_LeafBlock15
  store i32 %value, i32* @"'__ste_Client_AddressBook1_Address0", align 4
  br label %setClientAddressBookAddress_bb393

setClientAddressBookAddress_NodeBlock19:          ; preds = %setClientAddressBookAddress_NodeBlock21
  %Pivot20 = icmp slt i32 %index, 2
  br i1 %Pivot20, label %setClientAddressBookAddress_bb387, label %setClientAddressBookAddress_LeafBlock17

setClientAddressBookAddress_bb387:                ; preds = %setClientAddressBookAddress_NodeBlock19
  store i32 %value, i32* @"'__ste_Client_AddressBook1_Address1", align 4
  br label %setClientAddressBookAddress_bb393

setClientAddressBookAddress_LeafBlock17:          ; preds = %setClientAddressBookAddress_NodeBlock19
  %SwitchLeaf18 = icmp eq i32 %index, 2
  br i1 %SwitchLeaf18, label %setClientAddressBookAddress_bb388, label %setClientAddressBookAddress_NewDefault14

setClientAddressBookAddress_bb388:                ; preds = %setClientAddressBookAddress_LeafBlock17
  store i32 %value, i32* @"'__ste_Client_AddressBook1_Address2", align 4
  br label %setClientAddressBookAddress_bb393

setClientAddressBookAddress_NewDefault14:         ; preds = %setClientAddressBookAddress_LeafBlock17, %setClientAddressBookAddress_LeafBlock15
  br label %setClientAddressBookAddress_bb393

setClientAddressBookAddress_LeafBlock1:           ; preds = %setClientAddressBookAddress_NodeBlock
  %SwitchLeaf2 = icmp eq i32 %handle, 3
  br i1 %SwitchLeaf2, label %setClientAddressBookAddress_bb389, label %setClientAddressBookAddress_NewDefault

setClientAddressBookAddress_bb389:                ; preds = %setClientAddressBookAddress_LeafBlock1
  br label %setClientAddressBookAddress_NodeBlock30

setClientAddressBookAddress_NodeBlock30:          ; preds = %setClientAddressBookAddress_bb389
  %Pivot31 = icmp slt i32 %index, 1
  br i1 %Pivot31, label %setClientAddressBookAddress_LeafBlock24, label %setClientAddressBookAddress_NodeBlock28

setClientAddressBookAddress_LeafBlock24:          ; preds = %setClientAddressBookAddress_NodeBlock30
  %SwitchLeaf25 = icmp eq i32 %index, 0
  br i1 %SwitchLeaf25, label %setClientAddressBookAddress_bb390, label %setClientAddressBookAddress_NewDefault23

setClientAddressBookAddress_bb390:                ; preds = %setClientAddressBookAddress_LeafBlock24
  store i32 %value, i32* @"'__ste_Client_AddressBook2_Address0", align 4
  br label %setClientAddressBookAddress_bb393

setClientAddressBookAddress_NodeBlock28:          ; preds = %setClientAddressBookAddress_NodeBlock30
  %Pivot29 = icmp slt i32 %index, 2
  br i1 %Pivot29, label %setClientAddressBookAddress_bb391, label %setClientAddressBookAddress_LeafBlock26

setClientAddressBookAddress_bb391:                ; preds = %setClientAddressBookAddress_NodeBlock28
  store i32 %value, i32* @"'__ste_Client_AddressBook2_Address1", align 4
  br label %setClientAddressBookAddress_bb393

setClientAddressBookAddress_LeafBlock26:          ; preds = %setClientAddressBookAddress_NodeBlock28
  %SwitchLeaf27 = icmp eq i32 %index, 2
  br i1 %SwitchLeaf27, label %setClientAddressBookAddress_bb392, label %setClientAddressBookAddress_NewDefault23

setClientAddressBookAddress_bb392:                ; preds = %setClientAddressBookAddress_LeafBlock26
  store i32 %value, i32* @"'__ste_Client_AddressBook2_Address2", align 4
  br label %setClientAddressBookAddress_bb393

setClientAddressBookAddress_NewDefault23:         ; preds = %setClientAddressBookAddress_LeafBlock26, %setClientAddressBookAddress_LeafBlock24
  br label %setClientAddressBookAddress_bb393

setClientAddressBookAddress_NewDefault:           ; preds = %setClientAddressBookAddress_LeafBlock1, %setClientAddressBookAddress_LeafBlock
  br label %setClientAddressBookAddress_bb393

setClientAddressBookAddress_bb393:                ; preds = %setClientAddressBookAddress_NewDefault23, %setClientAddressBookAddress_NewDefault14, %setClientAddressBookAddress_NewDefault5, %setClientAddressBookAddress_NewDefault, %setClientAddressBookAddress_bb387, %setClientAddressBookAddress_bb388, %setClientAddressBookAddress_bb386, %setClientAddressBookAddress_bb390, %setClientAddressBookAddress_bb392, %setClientAddressBookAddress_bb391, %setClientAddressBookAddress_bb382, %setClientAddressBookAddress_bb384, %setClientAddressBookAddress_bb383
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @getClientAutoResponse(i32 %handle) #0 {
getClientAutoResponse_bb394:
  br label %getClientAutoResponse_NodeBlock3

getClientAutoResponse_NodeBlock3:                 ; preds = %getClientAutoResponse_bb394
  %Pivot4 = icmp slt i32 %handle, 2
  br i1 %Pivot4, label %getClientAutoResponse_LeafBlock, label %getClientAutoResponse_NodeBlock

getClientAutoResponse_LeafBlock:                  ; preds = %getClientAutoResponse_NodeBlock3
  %SwitchLeaf = icmp eq i32 %handle, 1
  br i1 %SwitchLeaf, label %getClientAutoResponse_bb395, label %getClientAutoResponse_NewDefault

getClientAutoResponse_bb395:                      ; preds = %getClientAutoResponse_LeafBlock
  %"660" = load i32* @"'__ste_client_autoResponse0", align 4
  br label %getClientAutoResponse_bb398

getClientAutoResponse_NodeBlock:                  ; preds = %getClientAutoResponse_NodeBlock3
  %Pivot = icmp slt i32 %handle, 3
  br i1 %Pivot, label %getClientAutoResponse_bb396, label %getClientAutoResponse_LeafBlock1

getClientAutoResponse_bb396:                      ; preds = %getClientAutoResponse_NodeBlock
  %"661" = load i32* @"'__ste_client_autoResponse1", align 4
  br label %getClientAutoResponse_bb398

getClientAutoResponse_LeafBlock1:                 ; preds = %getClientAutoResponse_NodeBlock
  %SwitchLeaf2 = icmp eq i32 %handle, 3
  br i1 %SwitchLeaf2, label %getClientAutoResponse_bb397, label %getClientAutoResponse_NewDefault

getClientAutoResponse_bb397:                      ; preds = %getClientAutoResponse_LeafBlock1
  %"662" = load i32* @"'__ste_client_autoResponse2", align 4
  br label %getClientAutoResponse_bb398

getClientAutoResponse_NewDefault:                 ; preds = %getClientAutoResponse_LeafBlock1, %getClientAutoResponse_LeafBlock
  br label %getClientAutoResponse_bb398

getClientAutoResponse_bb398:                      ; preds = %getClientAutoResponse_NewDefault, %getClientAutoResponse_bb397, %getClientAutoResponse_bb396, %getClientAutoResponse_bb395
  %.0 = phi i32 [ %"660", %getClientAutoResponse_bb395 ], [ %"661", %getClientAutoResponse_bb396 ], [ %"662", %getClientAutoResponse_bb397 ], [ -1, %getClientAutoResponse_NewDefault ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @setClientAutoResponse(i32 %handle, i32 %value) #0 {
setClientAutoResponse_bb399:
  br label %setClientAutoResponse_NodeBlock3

setClientAutoResponse_NodeBlock3:                 ; preds = %setClientAutoResponse_bb399
  %Pivot4 = icmp slt i32 %handle, 2
  br i1 %Pivot4, label %setClientAutoResponse_LeafBlock, label %setClientAutoResponse_NodeBlock

setClientAutoResponse_LeafBlock:                  ; preds = %setClientAutoResponse_NodeBlock3
  %SwitchLeaf = icmp eq i32 %handle, 1
  br i1 %SwitchLeaf, label %setClientAutoResponse_bb400, label %setClientAutoResponse_NewDefault

setClientAutoResponse_bb400:                      ; preds = %setClientAutoResponse_LeafBlock
  store i32 %value, i32* @"'__ste_client_autoResponse0", align 4
  br label %setClientAutoResponse_bb403

setClientAutoResponse_NodeBlock:                  ; preds = %setClientAutoResponse_NodeBlock3
  %Pivot = icmp slt i32 %handle, 3
  br i1 %Pivot, label %setClientAutoResponse_bb401, label %setClientAutoResponse_LeafBlock1

setClientAutoResponse_bb401:                      ; preds = %setClientAutoResponse_NodeBlock
  store i32 %value, i32* @"'__ste_client_autoResponse1", align 4
  br label %setClientAutoResponse_bb403

setClientAutoResponse_LeafBlock1:                 ; preds = %setClientAutoResponse_NodeBlock
  %SwitchLeaf2 = icmp eq i32 %handle, 3
  br i1 %SwitchLeaf2, label %setClientAutoResponse_bb402, label %setClientAutoResponse_NewDefault

setClientAutoResponse_bb402:                      ; preds = %setClientAutoResponse_LeafBlock1
  store i32 %value, i32* @"'__ste_client_autoResponse2", align 4
  br label %setClientAutoResponse_bb403

setClientAutoResponse_NewDefault:                 ; preds = %setClientAutoResponse_LeafBlock1, %setClientAutoResponse_LeafBlock
  br label %setClientAutoResponse_bb403

setClientAutoResponse_bb403:                      ; preds = %setClientAutoResponse_NewDefault, %setClientAutoResponse_bb401, %setClientAutoResponse_bb402, %setClientAutoResponse_bb400
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @getClientPrivateKey(i32 %handle) #0 {
getClientPrivateKey_bb404:
  br label %getClientPrivateKey_NodeBlock3

getClientPrivateKey_NodeBlock3:                   ; preds = %getClientPrivateKey_bb404
  %Pivot4 = icmp slt i32 %handle, 2
  br i1 %Pivot4, label %getClientPrivateKey_LeafBlock, label %getClientPrivateKey_NodeBlock

getClientPrivateKey_LeafBlock:                    ; preds = %getClientPrivateKey_NodeBlock3
  %SwitchLeaf = icmp eq i32 %handle, 1
  br i1 %SwitchLeaf, label %getClientPrivateKey_bb405, label %getClientPrivateKey_NewDefault

getClientPrivateKey_bb405:                        ; preds = %getClientPrivateKey_LeafBlock
  %"663" = load i32* @"'__ste_client_privateKey0", align 4
  br label %getClientPrivateKey_bb408

getClientPrivateKey_NodeBlock:                    ; preds = %getClientPrivateKey_NodeBlock3
  %Pivot = icmp slt i32 %handle, 3
  br i1 %Pivot, label %getClientPrivateKey_bb406, label %getClientPrivateKey_LeafBlock1

getClientPrivateKey_bb406:                        ; preds = %getClientPrivateKey_NodeBlock
  %"664" = load i32* @"'__ste_client_privateKey1", align 4
  br label %getClientPrivateKey_bb408

getClientPrivateKey_LeafBlock1:                   ; preds = %getClientPrivateKey_NodeBlock
  %SwitchLeaf2 = icmp eq i32 %handle, 3
  br i1 %SwitchLeaf2, label %getClientPrivateKey_bb407, label %getClientPrivateKey_NewDefault

getClientPrivateKey_bb407:                        ; preds = %getClientPrivateKey_LeafBlock1
  %"665" = load i32* @"'__ste_client_privateKey2", align 4
  br label %getClientPrivateKey_bb408

getClientPrivateKey_NewDefault:                   ; preds = %getClientPrivateKey_LeafBlock1, %getClientPrivateKey_LeafBlock
  br label %getClientPrivateKey_bb408

getClientPrivateKey_bb408:                        ; preds = %getClientPrivateKey_NewDefault, %getClientPrivateKey_bb407, %getClientPrivateKey_bb406, %getClientPrivateKey_bb405
  %.0 = phi i32 [ %"663", %getClientPrivateKey_bb405 ], [ %"664", %getClientPrivateKey_bb406 ], [ %"665", %getClientPrivateKey_bb407 ], [ 0, %getClientPrivateKey_NewDefault ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @setClientPrivateKey(i32 %handle, i32 %value) #0 {
setClientPrivateKey_bb409:
  br label %setClientPrivateKey_NodeBlock3

setClientPrivateKey_NodeBlock3:                   ; preds = %setClientPrivateKey_bb409
  %Pivot4 = icmp slt i32 %handle, 2
  br i1 %Pivot4, label %setClientPrivateKey_LeafBlock, label %setClientPrivateKey_NodeBlock

setClientPrivateKey_LeafBlock:                    ; preds = %setClientPrivateKey_NodeBlock3
  %SwitchLeaf = icmp eq i32 %handle, 1
  br i1 %SwitchLeaf, label %setClientPrivateKey_bb410, label %setClientPrivateKey_NewDefault

setClientPrivateKey_bb410:                        ; preds = %setClientPrivateKey_LeafBlock
  store i32 %value, i32* @"'__ste_client_privateKey0", align 4
  br label %setClientPrivateKey_bb413

setClientPrivateKey_NodeBlock:                    ; preds = %setClientPrivateKey_NodeBlock3
  %Pivot = icmp slt i32 %handle, 3
  br i1 %Pivot, label %setClientPrivateKey_bb411, label %setClientPrivateKey_LeafBlock1

setClientPrivateKey_bb411:                        ; preds = %setClientPrivateKey_NodeBlock
  store i32 %value, i32* @"'__ste_client_privateKey1", align 4
  br label %setClientPrivateKey_bb413

setClientPrivateKey_LeafBlock1:                   ; preds = %setClientPrivateKey_NodeBlock
  %SwitchLeaf2 = icmp eq i32 %handle, 3
  br i1 %SwitchLeaf2, label %setClientPrivateKey_bb412, label %setClientPrivateKey_NewDefault

setClientPrivateKey_bb412:                        ; preds = %setClientPrivateKey_LeafBlock1
  store i32 %value, i32* @"'__ste_client_privateKey2", align 4
  br label %setClientPrivateKey_bb413

setClientPrivateKey_NewDefault:                   ; preds = %setClientPrivateKey_LeafBlock1, %setClientPrivateKey_LeafBlock
  br label %setClientPrivateKey_bb413

setClientPrivateKey_bb413:                        ; preds = %setClientPrivateKey_NewDefault, %setClientPrivateKey_bb411, %setClientPrivateKey_bb412, %setClientPrivateKey_bb410
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @getClientKeyringSize(i32 %handle) #0 {
getClientKeyringSize_bb414:
  br label %getClientKeyringSize_NodeBlock3

getClientKeyringSize_NodeBlock3:                  ; preds = %getClientKeyringSize_bb414
  %Pivot4 = icmp slt i32 %handle, 2
  br i1 %Pivot4, label %getClientKeyringSize_LeafBlock, label %getClientKeyringSize_NodeBlock

getClientKeyringSize_LeafBlock:                   ; preds = %getClientKeyringSize_NodeBlock3
  %SwitchLeaf = icmp eq i32 %handle, 1
  br i1 %SwitchLeaf, label %getClientKeyringSize_bb415, label %getClientKeyringSize_NewDefault

getClientKeyringSize_bb415:                       ; preds = %getClientKeyringSize_LeafBlock
  %"666" = load i32* @"'__ste_ClientKeyring_size0", align 4
  br label %getClientKeyringSize_bb418

getClientKeyringSize_NodeBlock:                   ; preds = %getClientKeyringSize_NodeBlock3
  %Pivot = icmp slt i32 %handle, 3
  br i1 %Pivot, label %getClientKeyringSize_bb416, label %getClientKeyringSize_LeafBlock1

getClientKeyringSize_bb416:                       ; preds = %getClientKeyringSize_NodeBlock
  %"667" = load i32* @"'__ste_ClientKeyring_size1", align 4
  br label %getClientKeyringSize_bb418

getClientKeyringSize_LeafBlock1:                  ; preds = %getClientKeyringSize_NodeBlock
  %SwitchLeaf2 = icmp eq i32 %handle, 3
  br i1 %SwitchLeaf2, label %getClientKeyringSize_bb417, label %getClientKeyringSize_NewDefault

getClientKeyringSize_bb417:                       ; preds = %getClientKeyringSize_LeafBlock1
  %"668" = load i32* @"'__ste_ClientKeyring_size2", align 4
  br label %getClientKeyringSize_bb418

getClientKeyringSize_NewDefault:                  ; preds = %getClientKeyringSize_LeafBlock1, %getClientKeyringSize_LeafBlock
  br label %getClientKeyringSize_bb418

getClientKeyringSize_bb418:                       ; preds = %getClientKeyringSize_NewDefault, %getClientKeyringSize_bb417, %getClientKeyringSize_bb416, %getClientKeyringSize_bb415
  %.0 = phi i32 [ %"666", %getClientKeyringSize_bb415 ], [ %"667", %getClientKeyringSize_bb416 ], [ %"668", %getClientKeyringSize_bb417 ], [ 0, %getClientKeyringSize_NewDefault ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @setClientKeyringSize(i32 %handle, i32 %value) #0 {
setClientKeyringSize_bb419:
  br label %setClientKeyringSize_NodeBlock3

setClientKeyringSize_NodeBlock3:                  ; preds = %setClientKeyringSize_bb419
  %Pivot4 = icmp slt i32 %handle, 2
  br i1 %Pivot4, label %setClientKeyringSize_LeafBlock, label %setClientKeyringSize_NodeBlock

setClientKeyringSize_LeafBlock:                   ; preds = %setClientKeyringSize_NodeBlock3
  %SwitchLeaf = icmp eq i32 %handle, 1
  br i1 %SwitchLeaf, label %setClientKeyringSize_bb420, label %setClientKeyringSize_NewDefault

setClientKeyringSize_bb420:                       ; preds = %setClientKeyringSize_LeafBlock
  store i32 %value, i32* @"'__ste_ClientKeyring_size0", align 4
  br label %setClientKeyringSize_bb423

setClientKeyringSize_NodeBlock:                   ; preds = %setClientKeyringSize_NodeBlock3
  %Pivot = icmp slt i32 %handle, 3
  br i1 %Pivot, label %setClientKeyringSize_bb421, label %setClientKeyringSize_LeafBlock1

setClientKeyringSize_bb421:                       ; preds = %setClientKeyringSize_NodeBlock
  store i32 %value, i32* @"'__ste_ClientKeyring_size1", align 4
  br label %setClientKeyringSize_bb423

setClientKeyringSize_LeafBlock1:                  ; preds = %setClientKeyringSize_NodeBlock
  %SwitchLeaf2 = icmp eq i32 %handle, 3
  br i1 %SwitchLeaf2, label %setClientKeyringSize_bb422, label %setClientKeyringSize_NewDefault

setClientKeyringSize_bb422:                       ; preds = %setClientKeyringSize_LeafBlock1
  store i32 %value, i32* @"'__ste_ClientKeyring_size2", align 4
  br label %setClientKeyringSize_bb423

setClientKeyringSize_NewDefault:                  ; preds = %setClientKeyringSize_LeafBlock1, %setClientKeyringSize_LeafBlock
  br label %setClientKeyringSize_bb423

setClientKeyringSize_bb423:                       ; preds = %setClientKeyringSize_NewDefault, %setClientKeyringSize_bb421, %setClientKeyringSize_bb422, %setClientKeyringSize_bb420
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @createClientKeyringEntry(i32 %handle) #0 {
createClientKeyringEntry_bb424:
  %Pivot4.i = icmp slt i32 %handle, 2
  br i1 %Pivot4.i, label %createClientKeyringEntry_LeafBlock.i, label %createClientKeyringEntry_NodeBlock.i

createClientKeyringEntry_LeafBlock.i:             ; preds = %createClientKeyringEntry_bb424
  %SwitchLeaf.i = icmp eq i32 %handle, 1
  %"669" = load i32* @"'__ste_ClientKeyring_size0", align 4
  %. = select i1 %SwitchLeaf.i, i32 %"669", i32 0
  br label %createClientKeyringEntry_getClientKeyringSize.exit

createClientKeyringEntry_NodeBlock.i:             ; preds = %createClientKeyringEntry_bb424
  %Pivot.i = icmp slt i32 %handle, 3
  br i1 %Pivot.i, label %createClientKeyringEntry_bb425, label %createClientKeyringEntry_LeafBlock1.i

createClientKeyringEntry_bb425:                   ; preds = %createClientKeyringEntry_NodeBlock.i
  %"670" = load i32* @"'__ste_ClientKeyring_size1", align 4
  br label %createClientKeyringEntry_getClientKeyringSize.exit

createClientKeyringEntry_LeafBlock1.i:            ; preds = %createClientKeyringEntry_NodeBlock.i
  %SwitchLeaf2.i = icmp eq i32 %handle, 3
  %"671" = load i32* @"'__ste_ClientKeyring_size2", align 4
  %.9 = select i1 %SwitchLeaf2.i, i32 %"671", i32 0
  br label %createClientKeyringEntry_getClientKeyringSize.exit

createClientKeyringEntry_getClientKeyringSize.exit: ; preds = %createClientKeyringEntry_LeafBlock1.i, %createClientKeyringEntry_LeafBlock.i, %createClientKeyringEntry_bb425
  %.0.i = phi i32 [ %"670", %createClientKeyringEntry_bb425 ], [ %., %createClientKeyringEntry_LeafBlock.i ], [ %.9, %createClientKeyringEntry_LeafBlock1.i ]
  %"672" = icmp slt i32 %.0.i, 2
  br i1 %"672", label %createClientKeyringEntry_bb426, label %createClientKeyringEntry_bb430

createClientKeyringEntry_bb426:                   ; preds = %createClientKeyringEntry_getClientKeyringSize.exit
  %"673" = add nsw i32 %.0.i, 1
  %Pivot4.i1 = icmp slt i32 %handle, 2
  br i1 %Pivot4.i1, label %createClientKeyringEntry_LeafBlock.i3, label %createClientKeyringEntry_NodeBlock.i5

createClientKeyringEntry_LeafBlock.i3:            ; preds = %createClientKeyringEntry_bb426
  %SwitchLeaf.i2 = icmp eq i32 %handle, 1
  br i1 %SwitchLeaf.i2, label %createClientKeyringEntry_bb427, label %createClientKeyringEntry_setClientKeyringSize.exit

createClientKeyringEntry_bb427:                   ; preds = %createClientKeyringEntry_LeafBlock.i3
  store i32 %"673", i32* @"'__ste_ClientKeyring_size0", align 4
  br label %createClientKeyringEntry_setClientKeyringSize.exit

createClientKeyringEntry_NodeBlock.i5:            ; preds = %createClientKeyringEntry_bb426
  %Pivot.i4 = icmp slt i32 %handle, 3
  br i1 %Pivot.i4, label %createClientKeyringEntry_bb428, label %createClientKeyringEntry_LeafBlock1.i7

createClientKeyringEntry_bb428:                   ; preds = %createClientKeyringEntry_NodeBlock.i5
  store i32 %"673", i32* @"'__ste_ClientKeyring_size1", align 4
  br label %createClientKeyringEntry_setClientKeyringSize.exit

createClientKeyringEntry_LeafBlock1.i7:           ; preds = %createClientKeyringEntry_NodeBlock.i5
  %SwitchLeaf2.i6 = icmp eq i32 %handle, 3
  br i1 %SwitchLeaf2.i6, label %createClientKeyringEntry_bb429, label %createClientKeyringEntry_setClientKeyringSize.exit

createClientKeyringEntry_bb429:                   ; preds = %createClientKeyringEntry_LeafBlock1.i7
  store i32 %"673", i32* @"'__ste_ClientKeyring_size2", align 4
  br label %createClientKeyringEntry_setClientKeyringSize.exit

createClientKeyringEntry_setClientKeyringSize.exit: ; preds = %createClientKeyringEntry_LeafBlock.i3, %createClientKeyringEntry_LeafBlock1.i7, %createClientKeyringEntry_bb427, %createClientKeyringEntry_bb428, %createClientKeyringEntry_bb429
  %"674" = add nsw i32 %.0.i, 1
  br label %createClientKeyringEntry_bb430

createClientKeyringEntry_bb430:                   ; preds = %createClientKeyringEntry_getClientKeyringSize.exit, %createClientKeyringEntry_setClientKeyringSize.exit
  %.0 = phi i32 [ %"674", %createClientKeyringEntry_setClientKeyringSize.exit ], [ -1, %createClientKeyringEntry_getClientKeyringSize.exit ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @getClientKeyringUser(i32 %handle, i32 %index) #0 {
getClientKeyringUser_bb431:
  br label %getClientKeyringUser_NodeBlock3

getClientKeyringUser_NodeBlock3:                  ; preds = %getClientKeyringUser_bb431
  %Pivot4 = icmp slt i32 %handle, 2
  br i1 %Pivot4, label %getClientKeyringUser_LeafBlock, label %getClientKeyringUser_NodeBlock

getClientKeyringUser_LeafBlock:                   ; preds = %getClientKeyringUser_NodeBlock3
  %SwitchLeaf = icmp eq i32 %handle, 1
  br i1 %SwitchLeaf, label %getClientKeyringUser_bb432, label %getClientKeyringUser_NewDefault

getClientKeyringUser_bb432:                       ; preds = %getClientKeyringUser_LeafBlock
  br label %getClientKeyringUser_NodeBlock10

getClientKeyringUser_NodeBlock10:                 ; preds = %getClientKeyringUser_bb432
  %Pivot11 = icmp slt i32 %index, 1
  br i1 %Pivot11, label %getClientKeyringUser_LeafBlock6, label %getClientKeyringUser_LeafBlock8

getClientKeyringUser_LeafBlock6:                  ; preds = %getClientKeyringUser_NodeBlock10
  %SwitchLeaf7 = icmp eq i32 %index, 0
  br i1 %SwitchLeaf7, label %getClientKeyringUser_bb433, label %getClientKeyringUser_NewDefault5

getClientKeyringUser_bb433:                       ; preds = %getClientKeyringUser_LeafBlock6
  %"675" = load i32* @"'__ste_Client_Keyring0_User0", align 4
  br label %getClientKeyringUser_bb441

getClientKeyringUser_LeafBlock8:                  ; preds = %getClientKeyringUser_NodeBlock10
  %SwitchLeaf9 = icmp eq i32 %index, 1
  br i1 %SwitchLeaf9, label %getClientKeyringUser_bb434, label %getClientKeyringUser_NewDefault5

getClientKeyringUser_bb434:                       ; preds = %getClientKeyringUser_LeafBlock8
  %"676" = load i32* @"'__ste_Client_Keyring0_User1", align 4
  br label %getClientKeyringUser_bb441

getClientKeyringUser_NewDefault5:                 ; preds = %getClientKeyringUser_LeafBlock8, %getClientKeyringUser_LeafBlock6
  br label %getClientKeyringUser_bb441

getClientKeyringUser_NodeBlock:                   ; preds = %getClientKeyringUser_NodeBlock3
  %Pivot = icmp slt i32 %handle, 3
  br i1 %Pivot, label %getClientKeyringUser_bb435, label %getClientKeyringUser_LeafBlock1

getClientKeyringUser_bb435:                       ; preds = %getClientKeyringUser_NodeBlock
  br label %getClientKeyringUser_NodeBlock17

getClientKeyringUser_NodeBlock17:                 ; preds = %getClientKeyringUser_bb435
  %Pivot18 = icmp slt i32 %index, 1
  br i1 %Pivot18, label %getClientKeyringUser_LeafBlock13, label %getClientKeyringUser_LeafBlock15

getClientKeyringUser_LeafBlock13:                 ; preds = %getClientKeyringUser_NodeBlock17
  %SwitchLeaf14 = icmp eq i32 %index, 0
  br i1 %SwitchLeaf14, label %getClientKeyringUser_bb436, label %getClientKeyringUser_NewDefault12

getClientKeyringUser_bb436:                       ; preds = %getClientKeyringUser_LeafBlock13
  %"677" = load i32* @"'__ste_Client_Keyring1_User0", align 4
  br label %getClientKeyringUser_bb441

getClientKeyringUser_LeafBlock15:                 ; preds = %getClientKeyringUser_NodeBlock17
  %SwitchLeaf16 = icmp eq i32 %index, 1
  br i1 %SwitchLeaf16, label %getClientKeyringUser_bb437, label %getClientKeyringUser_NewDefault12

getClientKeyringUser_bb437:                       ; preds = %getClientKeyringUser_LeafBlock15
  %"678" = load i32* @"'__ste_Client_Keyring1_User1", align 4
  br label %getClientKeyringUser_bb441

getClientKeyringUser_NewDefault12:                ; preds = %getClientKeyringUser_LeafBlock15, %getClientKeyringUser_LeafBlock13
  br label %getClientKeyringUser_bb441

getClientKeyringUser_LeafBlock1:                  ; preds = %getClientKeyringUser_NodeBlock
  %SwitchLeaf2 = icmp eq i32 %handle, 3
  br i1 %SwitchLeaf2, label %getClientKeyringUser_bb438, label %getClientKeyringUser_NewDefault

getClientKeyringUser_bb438:                       ; preds = %getClientKeyringUser_LeafBlock1
  br label %getClientKeyringUser_NodeBlock24

getClientKeyringUser_NodeBlock24:                 ; preds = %getClientKeyringUser_bb438
  %Pivot25 = icmp slt i32 %index, 1
  br i1 %Pivot25, label %getClientKeyringUser_LeafBlock20, label %getClientKeyringUser_LeafBlock22

getClientKeyringUser_LeafBlock20:                 ; preds = %getClientKeyringUser_NodeBlock24
  %SwitchLeaf21 = icmp eq i32 %index, 0
  br i1 %SwitchLeaf21, label %getClientKeyringUser_bb439, label %getClientKeyringUser_NewDefault19

getClientKeyringUser_bb439:                       ; preds = %getClientKeyringUser_LeafBlock20
  %"679" = load i32* @"'__ste_Client_Keyring2_User0", align 4
  br label %getClientKeyringUser_bb441

getClientKeyringUser_LeafBlock22:                 ; preds = %getClientKeyringUser_NodeBlock24
  %SwitchLeaf23 = icmp eq i32 %index, 1
  br i1 %SwitchLeaf23, label %getClientKeyringUser_bb440, label %getClientKeyringUser_NewDefault19

getClientKeyringUser_bb440:                       ; preds = %getClientKeyringUser_LeafBlock22
  %"680" = load i32* @"'__ste_Client_Keyring2_User1", align 4
  br label %getClientKeyringUser_bb441

getClientKeyringUser_NewDefault19:                ; preds = %getClientKeyringUser_LeafBlock22, %getClientKeyringUser_LeafBlock20
  br label %getClientKeyringUser_bb441

getClientKeyringUser_NewDefault:                  ; preds = %getClientKeyringUser_LeafBlock1, %getClientKeyringUser_LeafBlock
  br label %getClientKeyringUser_bb441

getClientKeyringUser_bb441:                       ; preds = %getClientKeyringUser_NewDefault19, %getClientKeyringUser_NewDefault12, %getClientKeyringUser_NewDefault5, %getClientKeyringUser_NewDefault, %getClientKeyringUser_bb440, %getClientKeyringUser_bb439, %getClientKeyringUser_bb437, %getClientKeyringUser_bb436, %getClientKeyringUser_bb434, %getClientKeyringUser_bb433
  %.0 = phi i32 [ %"675", %getClientKeyringUser_bb433 ], [ %"676", %getClientKeyringUser_bb434 ], [ %"677", %getClientKeyringUser_bb436 ], [ %"678", %getClientKeyringUser_bb437 ], [ %"679", %getClientKeyringUser_bb439 ], [ %"680", %getClientKeyringUser_bb440 ], [ 0, %getClientKeyringUser_NewDefault5 ], [ 0, %getClientKeyringUser_NewDefault12 ], [ 0, %getClientKeyringUser_NewDefault19 ], [ 0, %getClientKeyringUser_NewDefault ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @setClientKeyringUser(i32 %handle, i32 %index, i32 %value) #0 {
setClientKeyringUser_bb442:
  br label %setClientKeyringUser_NodeBlock3

setClientKeyringUser_NodeBlock3:                  ; preds = %setClientKeyringUser_bb442
  %Pivot4 = icmp slt i32 %handle, 2
  br i1 %Pivot4, label %setClientKeyringUser_LeafBlock, label %setClientKeyringUser_NodeBlock

setClientKeyringUser_LeafBlock:                   ; preds = %setClientKeyringUser_NodeBlock3
  %SwitchLeaf = icmp eq i32 %handle, 1
  br i1 %SwitchLeaf, label %setClientKeyringUser_bb443, label %setClientKeyringUser_NewDefault

setClientKeyringUser_bb443:                       ; preds = %setClientKeyringUser_LeafBlock
  br label %setClientKeyringUser_NodeBlock10

setClientKeyringUser_NodeBlock10:                 ; preds = %setClientKeyringUser_bb443
  %Pivot11 = icmp slt i32 %index, 1
  br i1 %Pivot11, label %setClientKeyringUser_LeafBlock6, label %setClientKeyringUser_LeafBlock8

setClientKeyringUser_LeafBlock6:                  ; preds = %setClientKeyringUser_NodeBlock10
  %SwitchLeaf7 = icmp eq i32 %index, 0
  br i1 %SwitchLeaf7, label %setClientKeyringUser_bb444, label %setClientKeyringUser_NewDefault5

setClientKeyringUser_bb444:                       ; preds = %setClientKeyringUser_LeafBlock6
  store i32 %value, i32* @"'__ste_Client_Keyring0_User0", align 4
  br label %setClientKeyringUser_bb452

setClientKeyringUser_LeafBlock8:                  ; preds = %setClientKeyringUser_NodeBlock10
  %SwitchLeaf9 = icmp eq i32 %index, 1
  br i1 %SwitchLeaf9, label %setClientKeyringUser_bb445, label %setClientKeyringUser_NewDefault5

setClientKeyringUser_bb445:                       ; preds = %setClientKeyringUser_LeafBlock8
  store i32 %value, i32* @"'__ste_Client_Keyring0_User1", align 4
  br label %setClientKeyringUser_bb452

setClientKeyringUser_NewDefault5:                 ; preds = %setClientKeyringUser_LeafBlock8, %setClientKeyringUser_LeafBlock6
  br label %setClientKeyringUser_bb452

setClientKeyringUser_NodeBlock:                   ; preds = %setClientKeyringUser_NodeBlock3
  %Pivot = icmp slt i32 %handle, 3
  br i1 %Pivot, label %setClientKeyringUser_bb446, label %setClientKeyringUser_LeafBlock1

setClientKeyringUser_bb446:                       ; preds = %setClientKeyringUser_NodeBlock
  br label %setClientKeyringUser_NodeBlock17

setClientKeyringUser_NodeBlock17:                 ; preds = %setClientKeyringUser_bb446
  %Pivot18 = icmp slt i32 %index, 1
  br i1 %Pivot18, label %setClientKeyringUser_LeafBlock13, label %setClientKeyringUser_LeafBlock15

setClientKeyringUser_LeafBlock13:                 ; preds = %setClientKeyringUser_NodeBlock17
  %SwitchLeaf14 = icmp eq i32 %index, 0
  br i1 %SwitchLeaf14, label %setClientKeyringUser_bb447, label %setClientKeyringUser_NewDefault12

setClientKeyringUser_bb447:                       ; preds = %setClientKeyringUser_LeafBlock13
  store i32 %value, i32* @"'__ste_Client_Keyring1_User0", align 4
  br label %setClientKeyringUser_bb452

setClientKeyringUser_LeafBlock15:                 ; preds = %setClientKeyringUser_NodeBlock17
  %SwitchLeaf16 = icmp eq i32 %index, 1
  br i1 %SwitchLeaf16, label %setClientKeyringUser_bb448, label %setClientKeyringUser_NewDefault12

setClientKeyringUser_bb448:                       ; preds = %setClientKeyringUser_LeafBlock15
  store i32 %value, i32* @"'__ste_Client_Keyring1_User1", align 4
  br label %setClientKeyringUser_bb452

setClientKeyringUser_NewDefault12:                ; preds = %setClientKeyringUser_LeafBlock15, %setClientKeyringUser_LeafBlock13
  br label %setClientKeyringUser_bb452

setClientKeyringUser_LeafBlock1:                  ; preds = %setClientKeyringUser_NodeBlock
  %SwitchLeaf2 = icmp eq i32 %handle, 3
  br i1 %SwitchLeaf2, label %setClientKeyringUser_bb449, label %setClientKeyringUser_NewDefault

setClientKeyringUser_bb449:                       ; preds = %setClientKeyringUser_LeafBlock1
  br label %setClientKeyringUser_NodeBlock24

setClientKeyringUser_NodeBlock24:                 ; preds = %setClientKeyringUser_bb449
  %Pivot25 = icmp slt i32 %index, 1
  br i1 %Pivot25, label %setClientKeyringUser_LeafBlock20, label %setClientKeyringUser_LeafBlock22

setClientKeyringUser_LeafBlock20:                 ; preds = %setClientKeyringUser_NodeBlock24
  %SwitchLeaf21 = icmp eq i32 %index, 0
  br i1 %SwitchLeaf21, label %setClientKeyringUser_bb450, label %setClientKeyringUser_NewDefault19

setClientKeyringUser_bb450:                       ; preds = %setClientKeyringUser_LeafBlock20
  store i32 %value, i32* @"'__ste_Client_Keyring2_User0", align 4
  br label %setClientKeyringUser_bb452

setClientKeyringUser_LeafBlock22:                 ; preds = %setClientKeyringUser_NodeBlock24
  %SwitchLeaf23 = icmp eq i32 %index, 1
  br i1 %SwitchLeaf23, label %setClientKeyringUser_bb451, label %setClientKeyringUser_NewDefault19

setClientKeyringUser_bb451:                       ; preds = %setClientKeyringUser_LeafBlock22
  store i32 %value, i32* @"'__ste_Client_Keyring2_User1", align 4
  br label %setClientKeyringUser_bb452

setClientKeyringUser_NewDefault19:                ; preds = %setClientKeyringUser_LeafBlock22, %setClientKeyringUser_LeafBlock20
  br label %setClientKeyringUser_bb452

setClientKeyringUser_NewDefault:                  ; preds = %setClientKeyringUser_LeafBlock1, %setClientKeyringUser_LeafBlock
  br label %setClientKeyringUser_bb452

setClientKeyringUser_bb452:                       ; preds = %setClientKeyringUser_NewDefault19, %setClientKeyringUser_NewDefault12, %setClientKeyringUser_NewDefault5, %setClientKeyringUser_NewDefault, %setClientKeyringUser_bb448, %setClientKeyringUser_bb447, %setClientKeyringUser_bb450, %setClientKeyringUser_bb451, %setClientKeyringUser_bb444, %setClientKeyringUser_bb445
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @getClientKeyringPublicKey(i32 %handle, i32 %index) #0 {
getClientKeyringPublicKey_bb453:
  br label %getClientKeyringPublicKey_NodeBlock3

getClientKeyringPublicKey_NodeBlock3:             ; preds = %getClientKeyringPublicKey_bb453
  %Pivot4 = icmp slt i32 %handle, 2
  br i1 %Pivot4, label %getClientKeyringPublicKey_LeafBlock, label %getClientKeyringPublicKey_NodeBlock

getClientKeyringPublicKey_LeafBlock:              ; preds = %getClientKeyringPublicKey_NodeBlock3
  %SwitchLeaf = icmp eq i32 %handle, 1
  br i1 %SwitchLeaf, label %getClientKeyringPublicKey_bb454, label %getClientKeyringPublicKey_NewDefault

getClientKeyringPublicKey_bb454:                  ; preds = %getClientKeyringPublicKey_LeafBlock
  br label %getClientKeyringPublicKey_NodeBlock10

getClientKeyringPublicKey_NodeBlock10:            ; preds = %getClientKeyringPublicKey_bb454
  %Pivot11 = icmp slt i32 %index, 1
  br i1 %Pivot11, label %getClientKeyringPublicKey_LeafBlock6, label %getClientKeyringPublicKey_LeafBlock8

getClientKeyringPublicKey_LeafBlock6:             ; preds = %getClientKeyringPublicKey_NodeBlock10
  %SwitchLeaf7 = icmp eq i32 %index, 0
  br i1 %SwitchLeaf7, label %getClientKeyringPublicKey_bb455, label %getClientKeyringPublicKey_NewDefault5

getClientKeyringPublicKey_bb455:                  ; preds = %getClientKeyringPublicKey_LeafBlock6
  %"681" = load i32* @"'__ste_Client_Keyring0_PublicKey0", align 4
  br label %getClientKeyringPublicKey_bb463

getClientKeyringPublicKey_LeafBlock8:             ; preds = %getClientKeyringPublicKey_NodeBlock10
  %SwitchLeaf9 = icmp eq i32 %index, 1
  br i1 %SwitchLeaf9, label %getClientKeyringPublicKey_bb456, label %getClientKeyringPublicKey_NewDefault5

getClientKeyringPublicKey_bb456:                  ; preds = %getClientKeyringPublicKey_LeafBlock8
  %"682" = load i32* @"'__ste_Client_Keyring0_PublicKey1", align 4
  br label %getClientKeyringPublicKey_bb463

getClientKeyringPublicKey_NewDefault5:            ; preds = %getClientKeyringPublicKey_LeafBlock8, %getClientKeyringPublicKey_LeafBlock6
  br label %getClientKeyringPublicKey_bb463

getClientKeyringPublicKey_NodeBlock:              ; preds = %getClientKeyringPublicKey_NodeBlock3
  %Pivot = icmp slt i32 %handle, 3
  br i1 %Pivot, label %getClientKeyringPublicKey_bb457, label %getClientKeyringPublicKey_LeafBlock1

getClientKeyringPublicKey_bb457:                  ; preds = %getClientKeyringPublicKey_NodeBlock
  br label %getClientKeyringPublicKey_NodeBlock17

getClientKeyringPublicKey_NodeBlock17:            ; preds = %getClientKeyringPublicKey_bb457
  %Pivot18 = icmp slt i32 %index, 1
  br i1 %Pivot18, label %getClientKeyringPublicKey_LeafBlock13, label %getClientKeyringPublicKey_LeafBlock15

getClientKeyringPublicKey_LeafBlock13:            ; preds = %getClientKeyringPublicKey_NodeBlock17
  %SwitchLeaf14 = icmp eq i32 %index, 0
  br i1 %SwitchLeaf14, label %getClientKeyringPublicKey_bb458, label %getClientKeyringPublicKey_NewDefault12

getClientKeyringPublicKey_bb458:                  ; preds = %getClientKeyringPublicKey_LeafBlock13
  %"683" = load i32* @"'__ste_Client_Keyring1_PublicKey0", align 4
  br label %getClientKeyringPublicKey_bb463

getClientKeyringPublicKey_LeafBlock15:            ; preds = %getClientKeyringPublicKey_NodeBlock17
  %SwitchLeaf16 = icmp eq i32 %index, 1
  br i1 %SwitchLeaf16, label %getClientKeyringPublicKey_bb459, label %getClientKeyringPublicKey_NewDefault12

getClientKeyringPublicKey_bb459:                  ; preds = %getClientKeyringPublicKey_LeafBlock15
  %"684" = load i32* @"'__ste_Client_Keyring1_PublicKey1", align 4
  br label %getClientKeyringPublicKey_bb463

getClientKeyringPublicKey_NewDefault12:           ; preds = %getClientKeyringPublicKey_LeafBlock15, %getClientKeyringPublicKey_LeafBlock13
  br label %getClientKeyringPublicKey_bb463

getClientKeyringPublicKey_LeafBlock1:             ; preds = %getClientKeyringPublicKey_NodeBlock
  %SwitchLeaf2 = icmp eq i32 %handle, 3
  br i1 %SwitchLeaf2, label %getClientKeyringPublicKey_bb460, label %getClientKeyringPublicKey_NewDefault

getClientKeyringPublicKey_bb460:                  ; preds = %getClientKeyringPublicKey_LeafBlock1
  br label %getClientKeyringPublicKey_NodeBlock24

getClientKeyringPublicKey_NodeBlock24:            ; preds = %getClientKeyringPublicKey_bb460
  %Pivot25 = icmp slt i32 %index, 1
  br i1 %Pivot25, label %getClientKeyringPublicKey_LeafBlock20, label %getClientKeyringPublicKey_LeafBlock22

getClientKeyringPublicKey_LeafBlock20:            ; preds = %getClientKeyringPublicKey_NodeBlock24
  %SwitchLeaf21 = icmp eq i32 %index, 0
  br i1 %SwitchLeaf21, label %getClientKeyringPublicKey_bb461, label %getClientKeyringPublicKey_NewDefault19

getClientKeyringPublicKey_bb461:                  ; preds = %getClientKeyringPublicKey_LeafBlock20
  %"685" = load i32* @"'__ste_Client_Keyring2_PublicKey0", align 4
  br label %getClientKeyringPublicKey_bb463

getClientKeyringPublicKey_LeafBlock22:            ; preds = %getClientKeyringPublicKey_NodeBlock24
  %SwitchLeaf23 = icmp eq i32 %index, 1
  br i1 %SwitchLeaf23, label %getClientKeyringPublicKey_bb462, label %getClientKeyringPublicKey_NewDefault19

getClientKeyringPublicKey_bb462:                  ; preds = %getClientKeyringPublicKey_LeafBlock22
  %"686" = load i32* @"'__ste_Client_Keyring2_PublicKey1", align 4
  br label %getClientKeyringPublicKey_bb463

getClientKeyringPublicKey_NewDefault19:           ; preds = %getClientKeyringPublicKey_LeafBlock22, %getClientKeyringPublicKey_LeafBlock20
  br label %getClientKeyringPublicKey_bb463

getClientKeyringPublicKey_NewDefault:             ; preds = %getClientKeyringPublicKey_LeafBlock1, %getClientKeyringPublicKey_LeafBlock
  br label %getClientKeyringPublicKey_bb463

getClientKeyringPublicKey_bb463:                  ; preds = %getClientKeyringPublicKey_NewDefault19, %getClientKeyringPublicKey_NewDefault12, %getClientKeyringPublicKey_NewDefault5, %getClientKeyringPublicKey_NewDefault, %getClientKeyringPublicKey_bb462, %getClientKeyringPublicKey_bb461, %getClientKeyringPublicKey_bb459, %getClientKeyringPublicKey_bb458, %getClientKeyringPublicKey_bb456, %getClientKeyringPublicKey_bb455
  %.0 = phi i32 [ %"681", %getClientKeyringPublicKey_bb455 ], [ %"682", %getClientKeyringPublicKey_bb456 ], [ %"683", %getClientKeyringPublicKey_bb458 ], [ %"684", %getClientKeyringPublicKey_bb459 ], [ %"685", %getClientKeyringPublicKey_bb461 ], [ %"686", %getClientKeyringPublicKey_bb462 ], [ 0, %getClientKeyringPublicKey_NewDefault5 ], [ 0, %getClientKeyringPublicKey_NewDefault12 ], [ 0, %getClientKeyringPublicKey_NewDefault19 ], [ 0, %getClientKeyringPublicKey_NewDefault ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @findPublicKey(i32 %handle, i32 %userid) #0 {
findPublicKey_bb464:
  br label %findPublicKey_NodeBlock5

findPublicKey_NodeBlock5:                         ; preds = %findPublicKey_bb464
  %Pivot6 = icmp slt i32 %handle, 2
  br i1 %Pivot6, label %findPublicKey_LeafBlock, label %findPublicKey_NodeBlock

findPublicKey_LeafBlock:                          ; preds = %findPublicKey_NodeBlock5
  %SwitchLeaf = icmp eq i32 %handle, 1
  br i1 %SwitchLeaf, label %findPublicKey_bb465, label %findPublicKey_NewDefault

findPublicKey_bb465:                              ; preds = %findPublicKey_LeafBlock
  %"687" = load i32* @"'__ste_Client_Keyring0_User0", align 4
  %"688" = icmp eq i32 %userid, %"687"
  br i1 %"688", label %findPublicKey_bb466, label %findPublicKey_bb467

findPublicKey_bb466:                              ; preds = %findPublicKey_bb465
  %"689" = load i32* @"'__ste_Client_Keyring0_PublicKey0", align 4
  br label %findPublicKey_bb474

findPublicKey_bb467:                              ; preds = %findPublicKey_bb465
  %"690" = load i32* @"'__ste_Client_Keyring0_User1", align 4
  %"691" = icmp eq i32 %userid, %"690"
  %"692" = load i32* @"'__ste_Client_Keyring0_PublicKey1", align 4
  %. = select i1 %"691", i32 %"692", i32 0
  ret i32 %.

findPublicKey_NodeBlock:                          ; preds = %findPublicKey_NodeBlock5
  %Pivot = icmp slt i32 %handle, 3
  br i1 %Pivot, label %findPublicKey_bb468, label %findPublicKey_LeafBlock3

findPublicKey_bb468:                              ; preds = %findPublicKey_NodeBlock
  %"693" = load i32* @"'__ste_Client_Keyring1_User0", align 4
  %"694" = icmp eq i32 %userid, %"693"
  br i1 %"694", label %findPublicKey_bb469, label %findPublicKey_bb470

findPublicKey_bb469:                              ; preds = %findPublicKey_bb468
  %"695" = load i32* @"'__ste_Client_Keyring1_PublicKey0", align 4
  br label %findPublicKey_bb474

findPublicKey_bb470:                              ; preds = %findPublicKey_bb468
  %"696" = load i32* @"'__ste_Client_Keyring1_User1", align 4
  %"697" = icmp eq i32 %userid, %"696"
  %"698" = load i32* @"'__ste_Client_Keyring1_PublicKey1", align 4
  %.1 = select i1 %"697", i32 %"698", i32 0
  br label %findPublicKey_bb474

findPublicKey_LeafBlock3:                         ; preds = %findPublicKey_NodeBlock
  %SwitchLeaf4 = icmp eq i32 %handle, 3
  br i1 %SwitchLeaf4, label %findPublicKey_bb471, label %findPublicKey_NewDefault

findPublicKey_bb471:                              ; preds = %findPublicKey_LeafBlock3
  %"699" = load i32* @"'__ste_Client_Keyring2_User0", align 4
  %"700" = icmp eq i32 %userid, %"699"
  br i1 %"700", label %findPublicKey_bb472, label %findPublicKey_bb473

findPublicKey_bb472:                              ; preds = %findPublicKey_bb471
  %"701" = load i32* @"'__ste_Client_Keyring2_PublicKey0", align 4
  br label %findPublicKey_bb474

findPublicKey_bb473:                              ; preds = %findPublicKey_bb471
  %"702" = load i32* @"'__ste_Client_Keyring2_User1", align 4
  %"703" = icmp eq i32 %userid, %"702"
  %"704" = load i32* @"'__ste_Client_Keyring2_PublicKey1", align 4
  %.2 = select i1 %"703", i32 %"704", i32 0
  br label %findPublicKey_bb474

findPublicKey_NewDefault:                         ; preds = %findPublicKey_LeafBlock3, %findPublicKey_LeafBlock
  br label %findPublicKey_bb474

findPublicKey_bb474:                              ; preds = %findPublicKey_NewDefault, %findPublicKey_bb473, %findPublicKey_bb470, %findPublicKey_bb472, %findPublicKey_bb469, %findPublicKey_bb466
  %.0 = phi i32 [ %"689", %findPublicKey_bb466 ], [ %"695", %findPublicKey_bb469 ], [ %"701", %findPublicKey_bb472 ], [ 0, %findPublicKey_NewDefault ], [ %.1, %findPublicKey_bb470 ], [ %.2, %findPublicKey_bb473 ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @setClientKeyringPublicKey(i32 %handle, i32 %index, i32 %value) #0 {
setClientKeyringPublicKey_bb475:
  br label %setClientKeyringPublicKey_NodeBlock3

setClientKeyringPublicKey_NodeBlock3:             ; preds = %setClientKeyringPublicKey_bb475
  %Pivot4 = icmp slt i32 %handle, 2
  br i1 %Pivot4, label %setClientKeyringPublicKey_LeafBlock, label %setClientKeyringPublicKey_NodeBlock

setClientKeyringPublicKey_LeafBlock:              ; preds = %setClientKeyringPublicKey_NodeBlock3
  %SwitchLeaf = icmp eq i32 %handle, 1
  br i1 %SwitchLeaf, label %setClientKeyringPublicKey_bb476, label %setClientKeyringPublicKey_NewDefault

setClientKeyringPublicKey_bb476:                  ; preds = %setClientKeyringPublicKey_LeafBlock
  br label %setClientKeyringPublicKey_NodeBlock10

setClientKeyringPublicKey_NodeBlock10:            ; preds = %setClientKeyringPublicKey_bb476
  %Pivot11 = icmp slt i32 %index, 1
  br i1 %Pivot11, label %setClientKeyringPublicKey_LeafBlock6, label %setClientKeyringPublicKey_LeafBlock8

setClientKeyringPublicKey_LeafBlock6:             ; preds = %setClientKeyringPublicKey_NodeBlock10
  %SwitchLeaf7 = icmp eq i32 %index, 0
  br i1 %SwitchLeaf7, label %setClientKeyringPublicKey_bb477, label %setClientKeyringPublicKey_NewDefault5

setClientKeyringPublicKey_bb477:                  ; preds = %setClientKeyringPublicKey_LeafBlock6
  store i32 %value, i32* @"'__ste_Client_Keyring0_PublicKey0", align 4
  br label %setClientKeyringPublicKey_bb485

setClientKeyringPublicKey_LeafBlock8:             ; preds = %setClientKeyringPublicKey_NodeBlock10
  %SwitchLeaf9 = icmp eq i32 %index, 1
  br i1 %SwitchLeaf9, label %setClientKeyringPublicKey_bb478, label %setClientKeyringPublicKey_NewDefault5

setClientKeyringPublicKey_bb478:                  ; preds = %setClientKeyringPublicKey_LeafBlock8
  store i32 %value, i32* @"'__ste_Client_Keyring0_PublicKey1", align 4
  br label %setClientKeyringPublicKey_bb485

setClientKeyringPublicKey_NewDefault5:            ; preds = %setClientKeyringPublicKey_LeafBlock8, %setClientKeyringPublicKey_LeafBlock6
  br label %setClientKeyringPublicKey_bb485

setClientKeyringPublicKey_NodeBlock:              ; preds = %setClientKeyringPublicKey_NodeBlock3
  %Pivot = icmp slt i32 %handle, 3
  br i1 %Pivot, label %setClientKeyringPublicKey_bb479, label %setClientKeyringPublicKey_LeafBlock1

setClientKeyringPublicKey_bb479:                  ; preds = %setClientKeyringPublicKey_NodeBlock
  br label %setClientKeyringPublicKey_NodeBlock17

setClientKeyringPublicKey_NodeBlock17:            ; preds = %setClientKeyringPublicKey_bb479
  %Pivot18 = icmp slt i32 %index, 1
  br i1 %Pivot18, label %setClientKeyringPublicKey_LeafBlock13, label %setClientKeyringPublicKey_LeafBlock15

setClientKeyringPublicKey_LeafBlock13:            ; preds = %setClientKeyringPublicKey_NodeBlock17
  %SwitchLeaf14 = icmp eq i32 %index, 0
  br i1 %SwitchLeaf14, label %setClientKeyringPublicKey_bb480, label %setClientKeyringPublicKey_NewDefault12

setClientKeyringPublicKey_bb480:                  ; preds = %setClientKeyringPublicKey_LeafBlock13
  store i32 %value, i32* @"'__ste_Client_Keyring1_PublicKey0", align 4
  br label %setClientKeyringPublicKey_bb485

setClientKeyringPublicKey_LeafBlock15:            ; preds = %setClientKeyringPublicKey_NodeBlock17
  %SwitchLeaf16 = icmp eq i32 %index, 1
  br i1 %SwitchLeaf16, label %setClientKeyringPublicKey_bb481, label %setClientKeyringPublicKey_NewDefault12

setClientKeyringPublicKey_bb481:                  ; preds = %setClientKeyringPublicKey_LeafBlock15
  store i32 %value, i32* @"'__ste_Client_Keyring1_PublicKey1", align 4
  br label %setClientKeyringPublicKey_bb485

setClientKeyringPublicKey_NewDefault12:           ; preds = %setClientKeyringPublicKey_LeafBlock15, %setClientKeyringPublicKey_LeafBlock13
  br label %setClientKeyringPublicKey_bb485

setClientKeyringPublicKey_LeafBlock1:             ; preds = %setClientKeyringPublicKey_NodeBlock
  %SwitchLeaf2 = icmp eq i32 %handle, 3
  br i1 %SwitchLeaf2, label %setClientKeyringPublicKey_bb482, label %setClientKeyringPublicKey_NewDefault

setClientKeyringPublicKey_bb482:                  ; preds = %setClientKeyringPublicKey_LeafBlock1
  br label %setClientKeyringPublicKey_NodeBlock24

setClientKeyringPublicKey_NodeBlock24:            ; preds = %setClientKeyringPublicKey_bb482
  %Pivot25 = icmp slt i32 %index, 1
  br i1 %Pivot25, label %setClientKeyringPublicKey_LeafBlock20, label %setClientKeyringPublicKey_LeafBlock22

setClientKeyringPublicKey_LeafBlock20:            ; preds = %setClientKeyringPublicKey_NodeBlock24
  %SwitchLeaf21 = icmp eq i32 %index, 0
  br i1 %SwitchLeaf21, label %setClientKeyringPublicKey_bb483, label %setClientKeyringPublicKey_NewDefault19

setClientKeyringPublicKey_bb483:                  ; preds = %setClientKeyringPublicKey_LeafBlock20
  store i32 %value, i32* @"'__ste_Client_Keyring2_PublicKey0", align 4
  br label %setClientKeyringPublicKey_bb485

setClientKeyringPublicKey_LeafBlock22:            ; preds = %setClientKeyringPublicKey_NodeBlock24
  %SwitchLeaf23 = icmp eq i32 %index, 1
  br i1 %SwitchLeaf23, label %setClientKeyringPublicKey_bb484, label %setClientKeyringPublicKey_NewDefault19

setClientKeyringPublicKey_bb484:                  ; preds = %setClientKeyringPublicKey_LeafBlock22
  store i32 %value, i32* @"'__ste_Client_Keyring2_PublicKey1", align 4
  br label %setClientKeyringPublicKey_bb485

setClientKeyringPublicKey_NewDefault19:           ; preds = %setClientKeyringPublicKey_LeafBlock22, %setClientKeyringPublicKey_LeafBlock20
  br label %setClientKeyringPublicKey_bb485

setClientKeyringPublicKey_NewDefault:             ; preds = %setClientKeyringPublicKey_LeafBlock1, %setClientKeyringPublicKey_LeafBlock
  br label %setClientKeyringPublicKey_bb485

setClientKeyringPublicKey_bb485:                  ; preds = %setClientKeyringPublicKey_NewDefault19, %setClientKeyringPublicKey_NewDefault12, %setClientKeyringPublicKey_NewDefault5, %setClientKeyringPublicKey_NewDefault, %setClientKeyringPublicKey_bb481, %setClientKeyringPublicKey_bb480, %setClientKeyringPublicKey_bb483, %setClientKeyringPublicKey_bb484, %setClientKeyringPublicKey_bb477, %setClientKeyringPublicKey_bb478
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @getClientForwardReceiver(i32 %handle) #0 {
getClientForwardReceiver_bb486:
  br label %getClientForwardReceiver_NodeBlock3

getClientForwardReceiver_NodeBlock3:              ; preds = %getClientForwardReceiver_bb486
  %Pivot4 = icmp slt i32 %handle, 2
  br i1 %Pivot4, label %getClientForwardReceiver_LeafBlock, label %getClientForwardReceiver_NodeBlock

getClientForwardReceiver_LeafBlock:               ; preds = %getClientForwardReceiver_NodeBlock3
  %SwitchLeaf = icmp eq i32 %handle, 1
  br i1 %SwitchLeaf, label %getClientForwardReceiver_bb487, label %getClientForwardReceiver_NewDefault

getClientForwardReceiver_bb487:                   ; preds = %getClientForwardReceiver_LeafBlock
  %"705" = load i32* @"'__ste_client_forwardReceiver0", align 4
  br label %getClientForwardReceiver_bb490

getClientForwardReceiver_NodeBlock:               ; preds = %getClientForwardReceiver_NodeBlock3
  %Pivot = icmp slt i32 %handle, 3
  br i1 %Pivot, label %getClientForwardReceiver_bb488, label %getClientForwardReceiver_LeafBlock1

getClientForwardReceiver_bb488:                   ; preds = %getClientForwardReceiver_NodeBlock
  %"706" = load i32* @"'__ste_client_forwardReceiver1", align 4
  br label %getClientForwardReceiver_bb490

getClientForwardReceiver_LeafBlock1:              ; preds = %getClientForwardReceiver_NodeBlock
  %SwitchLeaf2 = icmp eq i32 %handle, 3
  br i1 %SwitchLeaf2, label %getClientForwardReceiver_bb489, label %getClientForwardReceiver_NewDefault

getClientForwardReceiver_bb489:                   ; preds = %getClientForwardReceiver_LeafBlock1
  %"707" = load i32* @"'__ste_client_forwardReceiver2", align 4
  br label %getClientForwardReceiver_bb490

getClientForwardReceiver_NewDefault:              ; preds = %getClientForwardReceiver_LeafBlock1, %getClientForwardReceiver_LeafBlock
  br label %getClientForwardReceiver_bb490

getClientForwardReceiver_bb490:                   ; preds = %getClientForwardReceiver_NewDefault, %getClientForwardReceiver_bb489, %getClientForwardReceiver_bb488, %getClientForwardReceiver_bb487
  %.0 = phi i32 [ %"705", %getClientForwardReceiver_bb487 ], [ %"706", %getClientForwardReceiver_bb488 ], [ %"707", %getClientForwardReceiver_bb489 ], [ 0, %getClientForwardReceiver_NewDefault ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define i32 @getClientId(i32 %handle) #0 {
getClientId_bb491:
  br label %getClientId_NodeBlock3

getClientId_NodeBlock3:                           ; preds = %getClientId_bb491
  %Pivot4 = icmp slt i32 %handle, 2
  br i1 %Pivot4, label %getClientId_LeafBlock, label %getClientId_NodeBlock

getClientId_LeafBlock:                            ; preds = %getClientId_NodeBlock3
  %SwitchLeaf = icmp eq i32 %handle, 1
  br i1 %SwitchLeaf, label %getClientId_bb492, label %getClientId_NewDefault

getClientId_bb492:                                ; preds = %getClientId_LeafBlock
  %"708" = load i32* @"'__ste_client_idCounter0", align 4
  br label %getClientId_bb495

getClientId_NodeBlock:                            ; preds = %getClientId_NodeBlock3
  %Pivot = icmp slt i32 %handle, 3
  br i1 %Pivot, label %getClientId_bb493, label %getClientId_LeafBlock1

getClientId_bb493:                                ; preds = %getClientId_NodeBlock
  %"709" = load i32* @"'__ste_client_idCounter1", align 4
  br label %getClientId_bb495

getClientId_LeafBlock1:                           ; preds = %getClientId_NodeBlock
  %SwitchLeaf2 = icmp eq i32 %handle, 3
  br i1 %SwitchLeaf2, label %getClientId_bb494, label %getClientId_NewDefault

getClientId_bb494:                                ; preds = %getClientId_LeafBlock1
  %"710" = load i32* @"'__ste_client_idCounter2", align 4
  br label %getClientId_bb495

getClientId_NewDefault:                           ; preds = %getClientId_LeafBlock1, %getClientId_LeafBlock
  br label %getClientId_bb495

getClientId_bb495:                                ; preds = %getClientId_NewDefault, %getClientId_bb494, %getClientId_bb493, %getClientId_bb492
  %.0 = phi i32 [ %"708", %getClientId_bb492 ], [ %"709", %getClientId_bb493 ], [ %"710", %getClientId_bb494 ], [ 0, %getClientId_NewDefault ]
  ret i32 %.0
}

; Function Attrs: nounwind uwtable
define void @mail(i32 %client, i32 %msg) #0 {
mail_bb496:
  %"711" = getelementptr [10 x i8]* @.str8, i32 0, i32 0
  %"712" = call i32 @puts(i8* %"711")
  %Pivot.i = icmp slt i32 %msg, 2
  br i1 %Pivot.i, label %mail_LeafBlock.i, label %mail_LeafBlock1.i

mail_LeafBlock.i:                                 ; preds = %mail_bb496
  %SwitchLeaf.i = icmp eq i32 %msg, 1
  %"713" = load i32* @"'__ste_email_to0", align 4
  %. = select i1 %SwitchLeaf.i, i32 %"713", i32 0
  br label %mail_getEmailTo.exit

mail_LeafBlock1.i:                                ; preds = %mail_bb496
  %SwitchLeaf2.i = icmp eq i32 %msg, 2
  %"714" = load i32* @"'__ste_email_to1", align 4
  %.1 = select i1 %SwitchLeaf2.i, i32 %"714", i32 0
  br label %mail_getEmailTo.exit

mail_getEmailTo.exit:                             ; preds = %mail_LeafBlock1.i, %mail_LeafBlock.i
  %.0.i = phi i32 [ %., %mail_LeafBlock.i ], [ %.1, %mail_LeafBlock1.i ]
  %"715" = getelementptr [16 x i8]* @.str9, i32 0, i32 0
  %"716" = call i32 @puts(i8* %"715") #5
  %Pivot4.i.i = icmp slt i32 %.0.i, 2
  br i1 %Pivot4.i.i, label %mail_LeafBlock.i.i, label %mail_NodeBlock.i.i

mail_LeafBlock.i.i:                               ; preds = %mail_getEmailTo.exit
  %SwitchLeaf.i.i = icmp eq i32 %.0.i, 1
  %"717" = load i32* @"'__ste_client_forwardReceiver0", align 4
  %..i = select i1 %SwitchLeaf.i.i, i32 %"717", i32 0
  br label %mail_getClientForwardReceiver.exit.i

mail_NodeBlock.i.i:                               ; preds = %mail_getEmailTo.exit
  %Pivot.i.i = icmp slt i32 %.0.i, 3
  br i1 %Pivot.i.i, label %mail_bb497, label %mail_LeafBlock1.i.i

mail_bb497:                                       ; preds = %mail_NodeBlock.i.i
  %"718" = load i32* @"'__ste_client_forwardReceiver1", align 4
  br label %mail_getClientForwardReceiver.exit.i

mail_LeafBlock1.i.i:                              ; preds = %mail_NodeBlock.i.i
  %SwitchLeaf2.i.i = icmp eq i32 %.0.i, 3
  %"719" = load i32* @"'__ste_client_forwardReceiver2", align 4
  %.8.i = select i1 %SwitchLeaf2.i.i, i32 %"719", i32 0
  br label %mail_getClientForwardReceiver.exit.i

mail_getClientForwardReceiver.exit.i:             ; preds = %mail_LeafBlock1.i.i, %mail_bb497, %mail_LeafBlock.i.i
  %.0.i.i = phi i32 [ %"718", %mail_bb497 ], [ %..i, %mail_LeafBlock.i.i ], [ %.8.i, %mail_LeafBlock1.i.i ]
  %"720" = icmp ne i32 %.0.i.i, 0
  br i1 %"720", label %mail_bb498, label %mail_incoming.exit

mail_bb498:                                       ; preds = %mail_getClientForwardReceiver.exit.i
  %Pivot.i1.i = icmp slt i32 %msg, 2
  br i1 %Pivot.i1.i, label %mail_LeafBlock.i4.i, label %mail_LeafBlock1.i6.i

mail_LeafBlock.i4.i:                              ; preds = %mail_bb498
  %SwitchLeaf.i3.i = icmp eq i32 %msg, 1
  br i1 %SwitchLeaf.i3.i, label %mail_bb499, label %mail_setEmailTo.exit.i

mail_bb499:                                       ; preds = %mail_LeafBlock.i4.i
  store i32 %.0.i.i, i32* @"'__ste_email_to0", align 4
  br label %mail_setEmailTo.exit.i

mail_LeafBlock1.i6.i:                             ; preds = %mail_bb498
  %SwitchLeaf2.i5.i = icmp eq i32 %msg, 2
  br i1 %SwitchLeaf2.i5.i, label %mail_bb500, label %mail_setEmailTo.exit.i

mail_bb500:                                       ; preds = %mail_LeafBlock1.i6.i
  store i32 %.0.i.i, i32* @"'__ste_email_to1", align 4
  br label %mail_setEmailTo.exit.i

mail_setEmailTo.exit.i:                           ; preds = %mail_bb500, %mail_LeafBlock1.i6.i, %mail_bb499, %mail_LeafBlock.i4.i
  call void @__utac_acc__DecryptForward_spec__1(i32 %msg) #5
  %"721" = getelementptr [21 x i8]* @.str10, i32 0, i32 0
  %"722" = call i32 @puts(i8* %"721") #5
  %Pivot.i.i.i.i = icmp slt i32 %msg, 2
  br i1 %Pivot.i.i.i.i, label %mail_LeafBlock.i.i.i.i, label %mail_LeafBlock1.i.i.i.i

mail_LeafBlock.i.i.i.i:                           ; preds = %mail_setEmailTo.exit.i
  %SwitchLeaf.i.i.i.i = icmp eq i32 %msg, 1
  %"723" = load i32* @"'__ste_email_id0", align 4
  %..i.i.i = select i1 %SwitchLeaf.i.i.i.i, i32 %"723", i32 0
  br label %mail_getEmailId.exit.i.i.i

mail_LeafBlock1.i.i.i.i:                          ; preds = %mail_setEmailTo.exit.i
  %SwitchLeaf2.i.i.i.i = icmp eq i32 %msg, 2
  %"724" = load i32* @"'__ste_email_id1", align 4
  %.15.i.i.i = select i1 %SwitchLeaf2.i.i.i.i, i32 %"724", i32 0
  br label %mail_getEmailId.exit.i.i.i

mail_getEmailId.exit.i.i.i:                       ; preds = %mail_LeafBlock1.i.i.i.i, %mail_LeafBlock.i.i.i.i
  %.0.i.i.i.i = phi i32 [ %..i.i.i, %mail_LeafBlock.i.i.i.i ], [ %.15.i.i.i, %mail_LeafBlock1.i.i.i.i ]
  %"725" = getelementptr [10 x i8]* @.str12, i32 0, i32 0
  %"726" = call i32 (i8*, ...)* @printf(i8* %"725", i32 %.0.i.i.i.i) #5
  %Pivot.i8.i.i.i = icmp slt i32 %msg, 2
  br i1 %Pivot.i8.i.i.i, label %mail_LeafBlock.i10.i.i.i, label %mail_LeafBlock1.i12.i.i.i

mail_LeafBlock.i10.i.i.i:                         ; preds = %mail_getEmailId.exit.i.i.i
  %SwitchLeaf.i9.i.i.i = icmp eq i32 %msg, 1
  %"727" = load i32* @"'__ste_email_from0", align 4
  %.16.i.i.i = select i1 %SwitchLeaf.i9.i.i.i, i32 %"727", i32 0
  br label %mail_getEmailFrom.exit.i.i.i

mail_LeafBlock1.i12.i.i.i:                        ; preds = %mail_getEmailId.exit.i.i.i
  %SwitchLeaf2.i11.i.i.i = icmp eq i32 %msg, 2
  %"728" = load i32* @"'__ste_email_from1", align 4
  %.17.i.i.i = select i1 %SwitchLeaf2.i11.i.i.i, i32 %"728", i32 0
  br label %mail_getEmailFrom.exit.i.i.i

mail_getEmailFrom.exit.i.i.i:                     ; preds = %mail_LeafBlock1.i12.i.i.i, %mail_LeafBlock.i10.i.i.i
  %.0.i14.i.i.i = phi i32 [ %.16.i.i.i, %mail_LeafBlock.i10.i.i.i ], [ %.17.i.i.i, %mail_LeafBlock1.i12.i.i.i ]
  %"729" = getelementptr [12 x i8]* @.str13, i32 0, i32 0
  %"730" = call i32 (i8*, ...)* @printf(i8* %"729", i32 %.0.i14.i.i.i) #5
  %Pivot.i1.i.i.i = icmp slt i32 %msg, 2
  br i1 %Pivot.i1.i.i.i, label %mail_LeafBlock.i3.i.i.i, label %mail_LeafBlock1.i5.i.i.i

mail_LeafBlock.i3.i.i.i:                          ; preds = %mail_getEmailFrom.exit.i.i.i
  %SwitchLeaf.i2.i.i.i = icmp eq i32 %msg, 1
  %"731" = load i32* @"'__ste_email_to0", align 4
  %.18.i.i.i = select i1 %SwitchLeaf.i2.i.i.i, i32 %"731", i32 0
  br label %mail_forward.exit.i

mail_LeafBlock1.i5.i.i.i:                         ; preds = %mail_getEmailFrom.exit.i.i.i
  %SwitchLeaf2.i4.i.i.i = icmp eq i32 %msg, 2
  %"732" = load i32* @"'__ste_email_to1", align 4
  %.19.i.i.i = select i1 %SwitchLeaf2.i4.i.i.i, i32 %"732", i32 0
  br label %mail_forward.exit.i

mail_forward.exit.i:                              ; preds = %mail_LeafBlock1.i5.i.i.i, %mail_LeafBlock.i3.i.i.i
  %.0.i7.i.i.i = phi i32 [ %.18.i.i.i, %mail_LeafBlock.i3.i.i.i ], [ %.19.i.i.i, %mail_LeafBlock1.i5.i.i.i ]
  %"733" = getelementptr [10 x i8]* @.str14, i32 0, i32 0
  %"734" = call i32 (i8*, ...)* @printf(i8* %"733", i32 %.0.i7.i.i.i) #5
  %"735" = getelementptr [18 x i8]* @.str15, i32 0, i32 0
  %"736" = call i32 (i8*, ...)* @printf(i8* %"735", i32 1) #5
  store i32 0, i32* @"'queue_empty", align 4
  store i32 %msg, i32* @"'queued_message", align 4
  store i32 %.0.i, i32* @"'queued_client", align 4
  br label %mail_incoming.exit

mail_incoming.exit:                               ; preds = %mail_getClientForwardReceiver.exit.i, %mail_forward.exit.i
  ret void
}

; Function Attrs: nounwind uwtable
define void @incoming(i32 %client, i32 %msg) #0 {
incoming_bb501:
  %"737" = getelementptr [16 x i8]* @.str9, i32 0, i32 0
  %"738" = call i32 @puts(i8* %"737") #5
  %Pivot4.i = icmp slt i32 %client, 2
  br i1 %Pivot4.i, label %incoming_LeafBlock.i, label %incoming_NodeBlock.i

incoming_LeafBlock.i:                             ; preds = %incoming_bb501
  %SwitchLeaf.i = icmp eq i32 %client, 1
  %"739" = load i32* @"'__ste_client_forwardReceiver0", align 4
  %. = select i1 %SwitchLeaf.i, i32 %"739", i32 0
  br label %incoming_getClientForwardReceiver.exit

incoming_NodeBlock.i:                             ; preds = %incoming_bb501
  %Pivot.i = icmp slt i32 %client, 3
  br i1 %Pivot.i, label %incoming_bb502, label %incoming_LeafBlock1.i

incoming_bb502:                                   ; preds = %incoming_NodeBlock.i
  %"740" = load i32* @"'__ste_client_forwardReceiver1", align 4
  br label %incoming_getClientForwardReceiver.exit

incoming_LeafBlock1.i:                            ; preds = %incoming_NodeBlock.i
  %SwitchLeaf2.i = icmp eq i32 %client, 3
  %"741" = load i32* @"'__ste_client_forwardReceiver2", align 4
  %.8 = select i1 %SwitchLeaf2.i, i32 %"741", i32 0
  br label %incoming_getClientForwardReceiver.exit

incoming_getClientForwardReceiver.exit:           ; preds = %incoming_LeafBlock1.i, %incoming_LeafBlock.i, %incoming_bb502
  %.0.i = phi i32 [ %"740", %incoming_bb502 ], [ %., %incoming_LeafBlock.i ], [ %.8, %incoming_LeafBlock1.i ]
  %"742" = icmp ne i32 %.0.i, 0
  br i1 %"742", label %incoming_bb503, label %incoming_bb506

incoming_bb503:                                   ; preds = %incoming_getClientForwardReceiver.exit
  %Pivot.i1 = icmp slt i32 %msg, 2
  br i1 %Pivot.i1, label %incoming_LeafBlock.i4, label %incoming_LeafBlock1.i6

incoming_LeafBlock.i4:                            ; preds = %incoming_bb503
  %SwitchLeaf.i3 = icmp eq i32 %msg, 1
  br i1 %SwitchLeaf.i3, label %incoming_bb504, label %incoming_setEmailTo.exit

incoming_bb504:                                   ; preds = %incoming_LeafBlock.i4
  store i32 %.0.i, i32* @"'__ste_email_to0", align 4
  br label %incoming_setEmailTo.exit

incoming_LeafBlock1.i6:                           ; preds = %incoming_bb503
  %SwitchLeaf2.i5 = icmp eq i32 %msg, 2
  br i1 %SwitchLeaf2.i5, label %incoming_bb505, label %incoming_setEmailTo.exit

incoming_bb505:                                   ; preds = %incoming_LeafBlock1.i6
  store i32 %.0.i, i32* @"'__ste_email_to1", align 4
  br label %incoming_setEmailTo.exit

incoming_setEmailTo.exit:                         ; preds = %incoming_LeafBlock.i4, %incoming_LeafBlock1.i6, %incoming_bb504, %incoming_bb505
  call void @__utac_acc__DecryptForward_spec__1(i32 %msg) #5
  %"743" = getelementptr [21 x i8]* @.str10, i32 0, i32 0
  %"744" = call i32 @puts(i8* %"743") #5
  %Pivot.i.i.i = icmp slt i32 %msg, 2
  br i1 %Pivot.i.i.i, label %incoming_LeafBlock.i.i.i, label %incoming_LeafBlock1.i.i.i

incoming_LeafBlock.i.i.i:                         ; preds = %incoming_setEmailTo.exit
  %SwitchLeaf.i.i.i = icmp eq i32 %msg, 1
  %"745" = load i32* @"'__ste_email_id0", align 4
  %..i.i = select i1 %SwitchLeaf.i.i.i, i32 %"745", i32 0
  br label %incoming_getEmailId.exit.i.i

incoming_LeafBlock1.i.i.i:                        ; preds = %incoming_setEmailTo.exit
  %SwitchLeaf2.i.i.i = icmp eq i32 %msg, 2
  %"746" = load i32* @"'__ste_email_id1", align 4
  %.15.i.i = select i1 %SwitchLeaf2.i.i.i, i32 %"746", i32 0
  br label %incoming_getEmailId.exit.i.i

incoming_getEmailId.exit.i.i:                     ; preds = %incoming_LeafBlock1.i.i.i, %incoming_LeafBlock.i.i.i
  %.0.i.i.i = phi i32 [ %..i.i, %incoming_LeafBlock.i.i.i ], [ %.15.i.i, %incoming_LeafBlock1.i.i.i ]
  %"747" = getelementptr [10 x i8]* @.str12, i32 0, i32 0
  %"748" = call i32 (i8*, ...)* @printf(i8* %"747", i32 %.0.i.i.i) #5
  %Pivot.i8.i.i = icmp slt i32 %msg, 2
  br i1 %Pivot.i8.i.i, label %incoming_LeafBlock.i10.i.i, label %incoming_LeafBlock1.i12.i.i

incoming_LeafBlock.i10.i.i:                       ; preds = %incoming_getEmailId.exit.i.i
  %SwitchLeaf.i9.i.i = icmp eq i32 %msg, 1
  %"749" = load i32* @"'__ste_email_from0", align 4
  %.16.i.i = select i1 %SwitchLeaf.i9.i.i, i32 %"749", i32 0
  br label %incoming_getEmailFrom.exit.i.i

incoming_LeafBlock1.i12.i.i:                      ; preds = %incoming_getEmailId.exit.i.i
  %SwitchLeaf2.i11.i.i = icmp eq i32 %msg, 2
  %"750" = load i32* @"'__ste_email_from1", align 4
  %.17.i.i = select i1 %SwitchLeaf2.i11.i.i, i32 %"750", i32 0
  br label %incoming_getEmailFrom.exit.i.i

incoming_getEmailFrom.exit.i.i:                   ; preds = %incoming_LeafBlock1.i12.i.i, %incoming_LeafBlock.i10.i.i
  %.0.i14.i.i = phi i32 [ %.16.i.i, %incoming_LeafBlock.i10.i.i ], [ %.17.i.i, %incoming_LeafBlock1.i12.i.i ]
  %"751" = getelementptr [12 x i8]* @.str13, i32 0, i32 0
  %"752" = call i32 (i8*, ...)* @printf(i8* %"751", i32 %.0.i14.i.i) #5
  %Pivot.i1.i.i = icmp slt i32 %msg, 2
  br i1 %Pivot.i1.i.i, label %incoming_LeafBlock.i3.i.i, label %incoming_LeafBlock1.i5.i.i

incoming_LeafBlock.i3.i.i:                        ; preds = %incoming_getEmailFrom.exit.i.i
  %SwitchLeaf.i2.i.i = icmp eq i32 %msg, 1
  %"753" = load i32* @"'__ste_email_to0", align 4
  %.18.i.i = select i1 %SwitchLeaf.i2.i.i, i32 %"753", i32 0
  br label %incoming_forward.exit

incoming_LeafBlock1.i5.i.i:                       ; preds = %incoming_getEmailFrom.exit.i.i
  %SwitchLeaf2.i4.i.i = icmp eq i32 %msg, 2
  %"754" = load i32* @"'__ste_email_to1", align 4
  %.19.i.i = select i1 %SwitchLeaf2.i4.i.i, i32 %"754", i32 0
  br label %incoming_forward.exit

incoming_forward.exit:                            ; preds = %incoming_LeafBlock.i3.i.i, %incoming_LeafBlock1.i5.i.i
  %.0.i7.i.i = phi i32 [ %.18.i.i, %incoming_LeafBlock.i3.i.i ], [ %.19.i.i, %incoming_LeafBlock1.i5.i.i ]
  %"755" = getelementptr [10 x i8]* @.str14, i32 0, i32 0
  %"756" = call i32 (i8*, ...)* @printf(i8* %"755", i32 %.0.i7.i.i) #5
  %"757" = getelementptr [18 x i8]* @.str15, i32 0, i32 0
  %"758" = call i32 (i8*, ...)* @printf(i8* %"757", i32 1) #5
  store i32 0, i32* @"'queue_empty", align 4
  store i32 %msg, i32* @"'queued_message", align 4
  store i32 %client, i32* @"'queued_client", align 4
  br label %incoming_bb506

incoming_bb506:                                   ; preds = %incoming_getClientForwardReceiver.exit, %incoming_forward.exit
  ret void
}

; Function Attrs: nounwind uwtable
define void @deliver(i32 %client, i32 %msg) #0 {
deliver_bb507:
  %"759" = getelementptr [16 x i8]* @.str9, i32 0, i32 0
  %"760" = call i32 @puts(i8* %"759")
  ret void
}

; Function Attrs: nounwind uwtable
define void @incoming__wrappee__Base(i32 %client, i32 %msg) #0 {
incoming__wrappee__Base_bb508:
  %"761" = getelementptr [16 x i8]* @.str9, i32 0, i32 0
  %"762" = call i32 @puts(i8* %"761") #5
  ret void
}

; Function Attrs: nounwind uwtable
define void @forward(i32 %client, i32 %msg) #0 {
forward_bb509:
  call void @__utac_acc__DecryptForward_spec__1(i32 %msg)
  %"763" = getelementptr [21 x i8]* @.str10, i32 0, i32 0
  %"764" = call i32 @puts(i8* %"763")
  %Pivot.i.i = icmp slt i32 %msg, 2
  br i1 %Pivot.i.i, label %forward_LeafBlock.i.i, label %forward_LeafBlock1.i.i

forward_LeafBlock.i.i:                            ; preds = %forward_bb509
  %SwitchLeaf.i.i = icmp eq i32 %msg, 1
  %"765" = load i32* @"'__ste_email_id0", align 4
  %..i = select i1 %SwitchLeaf.i.i, i32 %"765", i32 0
  br label %forward_getEmailId.exit.i

forward_LeafBlock1.i.i:                           ; preds = %forward_bb509
  %SwitchLeaf2.i.i = icmp eq i32 %msg, 2
  %"766" = load i32* @"'__ste_email_id1", align 4
  %.15.i = select i1 %SwitchLeaf2.i.i, i32 %"766", i32 0
  br label %forward_getEmailId.exit.i

forward_getEmailId.exit.i:                        ; preds = %forward_LeafBlock1.i.i, %forward_LeafBlock.i.i
  %.0.i.i = phi i32 [ %..i, %forward_LeafBlock.i.i ], [ %.15.i, %forward_LeafBlock1.i.i ]
  %"767" = getelementptr [10 x i8]* @.str12, i32 0, i32 0
  %"768" = call i32 (i8*, ...)* @printf(i8* %"767", i32 %.0.i.i) #5
  %Pivot.i8.i = icmp slt i32 %msg, 2
  br i1 %Pivot.i8.i, label %forward_LeafBlock.i10.i, label %forward_LeafBlock1.i12.i

forward_LeafBlock.i10.i:                          ; preds = %forward_getEmailId.exit.i
  %SwitchLeaf.i9.i = icmp eq i32 %msg, 1
  %"769" = load i32* @"'__ste_email_from0", align 4
  %.16.i = select i1 %SwitchLeaf.i9.i, i32 %"769", i32 0
  br label %forward_getEmailFrom.exit.i

forward_LeafBlock1.i12.i:                         ; preds = %forward_getEmailId.exit.i
  %SwitchLeaf2.i11.i = icmp eq i32 %msg, 2
  %"770" = load i32* @"'__ste_email_from1", align 4
  %.17.i = select i1 %SwitchLeaf2.i11.i, i32 %"770", i32 0
  br label %forward_getEmailFrom.exit.i

forward_getEmailFrom.exit.i:                      ; preds = %forward_LeafBlock1.i12.i, %forward_LeafBlock.i10.i
  %.0.i14.i = phi i32 [ %.16.i, %forward_LeafBlock.i10.i ], [ %.17.i, %forward_LeafBlock1.i12.i ]
  %"771" = getelementptr [12 x i8]* @.str13, i32 0, i32 0
  %"772" = call i32 (i8*, ...)* @printf(i8* %"771", i32 %.0.i14.i) #5
  %Pivot.i1.i = icmp slt i32 %msg, 2
  br i1 %Pivot.i1.i, label %forward_LeafBlock.i3.i, label %forward_LeafBlock1.i5.i

forward_LeafBlock.i3.i:                           ; preds = %forward_getEmailFrom.exit.i
  %SwitchLeaf.i2.i = icmp eq i32 %msg, 1
  %"773" = load i32* @"'__ste_email_to0", align 4
  %.18.i = select i1 %SwitchLeaf.i2.i, i32 %"773", i32 0
  br label %forward_printMail.exit

forward_LeafBlock1.i5.i:                          ; preds = %forward_getEmailFrom.exit.i
  %SwitchLeaf2.i4.i = icmp eq i32 %msg, 2
  %"774" = load i32* @"'__ste_email_to1", align 4
  %.19.i = select i1 %SwitchLeaf2.i4.i, i32 %"774", i32 0
  br label %forward_printMail.exit

forward_printMail.exit:                           ; preds = %forward_LeafBlock.i3.i, %forward_LeafBlock1.i5.i
  %.0.i7.i = phi i32 [ %.18.i, %forward_LeafBlock.i3.i ], [ %.19.i, %forward_LeafBlock1.i5.i ]
  %"775" = getelementptr [10 x i8]* @.str14, i32 0, i32 0
  %"776" = call i32 (i8*, ...)* @printf(i8* %"775", i32 %.0.i7.i) #5
  %"777" = getelementptr [18 x i8]* @.str15, i32 0, i32 0
  %"778" = call i32 (i8*, ...)* @printf(i8* %"777", i32 1) #5
  store i32 0, i32* @"'queue_empty", align 4
  store i32 %msg, i32* @"'queued_message", align 4
  store i32 %client, i32* @"'queued_client", align 4
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @createClient(i8* %name) #0 {
createClient_bb510:
  %"779" = load i32* @"'__ste_Client_counter", align 4
  %"780" = icmp slt i32 %"779", 3
  br i1 %"780", label %createClient_bb511, label %createClient_initClient.exit

createClient_bb511:                               ; preds = %createClient_bb510
  %"781" = load i32* @"'__ste_Client_counter", align 4
  %"782" = add nsw i32 %"781", 1
  store i32 %"782", i32* @"'__ste_Client_counter", align 4
  %"783" = load i32* @"'__ste_Client_counter", align 4
  br label %createClient_initClient.exit

createClient_initClient.exit:                     ; preds = %createClient_bb510, %createClient_bb511
  %.0.i = phi i32 [ %"783", %createClient_bb511 ], [ -1, %createClient_bb510 ]
  ret i32 %.0.i
}

; Function Attrs: nounwind uwtable
define i32 @createEmail(i32 %from, i32 %to) #0 {
createEmail_bb512:
  %Pivot.i = icmp slt i32 1, 2
  br i1 %Pivot.i, label %createEmail_LeafBlock.i, label %createEmail_LeafBlock1.i

createEmail_LeafBlock.i:                          ; preds = %createEmail_bb512
  %SwitchLeaf.i = icmp eq i32 1, 1
  br i1 %SwitchLeaf.i, label %createEmail_bb513, label %createEmail_setEmailFrom.exit

createEmail_bb513:                                ; preds = %createEmail_LeafBlock.i
  store i32 %from, i32* @"'__ste_email_from0", align 4
  br label %createEmail_setEmailFrom.exit

createEmail_LeafBlock1.i:                         ; preds = %createEmail_bb512
  %SwitchLeaf2.i = icmp eq i32 1, 2
  br i1 %SwitchLeaf2.i, label %createEmail_bb514, label %createEmail_setEmailFrom.exit

createEmail_bb514:                                ; preds = %createEmail_LeafBlock1.i
  store i32 %from, i32* @"'__ste_email_from1", align 4
  br label %createEmail_setEmailFrom.exit

createEmail_setEmailFrom.exit:                    ; preds = %createEmail_LeafBlock.i, %createEmail_LeafBlock1.i, %createEmail_bb513, %createEmail_bb514
  %Pivot.i1 = icmp slt i32 1, 2
  br i1 %Pivot.i1, label %createEmail_LeafBlock.i3, label %createEmail_LeafBlock1.i5

createEmail_LeafBlock.i3:                         ; preds = %createEmail_setEmailFrom.exit
  %SwitchLeaf.i2 = icmp eq i32 1, 1
  br i1 %SwitchLeaf.i2, label %createEmail_bb515, label %createEmail_setEmailTo.exit

createEmail_bb515:                                ; preds = %createEmail_LeafBlock.i3
  store i32 %to, i32* @"'__ste_email_to0", align 4
  br label %createEmail_setEmailTo.exit

createEmail_LeafBlock1.i5:                        ; preds = %createEmail_setEmailFrom.exit
  %SwitchLeaf2.i4 = icmp eq i32 1, 2
  br i1 %SwitchLeaf2.i4, label %createEmail_bb516, label %createEmail_setEmailTo.exit

createEmail_bb516:                                ; preds = %createEmail_LeafBlock1.i5
  store i32 %to, i32* @"'__ste_email_to1", align 4
  br label %createEmail_setEmailTo.exit

createEmail_setEmailTo.exit:                      ; preds = %createEmail_LeafBlock.i3, %createEmail_LeafBlock1.i5, %createEmail_bb515, %createEmail_bb516
  ret i32 1
}

; Function Attrs: nounwind uwtable
define void @queue(i32 %client, i32 %msg) #0 {
queue_bb517:
  store i32 0, i32* @"'queue_empty", align 4
  store i32 %msg, i32* @"'queued_message", align 4
  store i32 %client, i32* @"'queued_client", align 4
  ret void
}

declare void @__utac_acc__DecryptForward_spec__1(i32) #1

; Function Attrs: nounwind uwtable
define void @printMail(i32 %msg) #0 {
printMail_bb518:
  %Pivot.i = icmp slt i32 %msg, 2
  br i1 %Pivot.i, label %printMail_LeafBlock.i, label %printMail_LeafBlock1.i

printMail_LeafBlock.i:                            ; preds = %printMail_bb518
  %SwitchLeaf.i = icmp eq i32 %msg, 1
  %"784" = load i32* @"'__ste_email_id0", align 4
  %. = select i1 %SwitchLeaf.i, i32 %"784", i32 0
  br label %printMail_getEmailId.exit

printMail_LeafBlock1.i:                           ; preds = %printMail_bb518
  %SwitchLeaf2.i = icmp eq i32 %msg, 2
  %"785" = load i32* @"'__ste_email_id1", align 4
  %.15 = select i1 %SwitchLeaf2.i, i32 %"785", i32 0
  br label %printMail_getEmailId.exit

printMail_getEmailId.exit:                        ; preds = %printMail_LeafBlock1.i, %printMail_LeafBlock.i
  %.0.i = phi i32 [ %., %printMail_LeafBlock.i ], [ %.15, %printMail_LeafBlock1.i ]
  %"786" = getelementptr [10 x i8]* @.str12, i32 0, i32 0
  %"787" = call i32 (i8*, ...)* @printf(i8* %"786", i32 %.0.i)
  %Pivot.i8 = icmp slt i32 %msg, 2
  br i1 %Pivot.i8, label %printMail_LeafBlock.i10, label %printMail_LeafBlock1.i12

printMail_LeafBlock.i10:                          ; preds = %printMail_getEmailId.exit
  %SwitchLeaf.i9 = icmp eq i32 %msg, 1
  %"788" = load i32* @"'__ste_email_from0", align 4
  %.16 = select i1 %SwitchLeaf.i9, i32 %"788", i32 0
  br label %printMail_getEmailFrom.exit

printMail_LeafBlock1.i12:                         ; preds = %printMail_getEmailId.exit
  %SwitchLeaf2.i11 = icmp eq i32 %msg, 2
  %"789" = load i32* @"'__ste_email_from1", align 4
  %.17 = select i1 %SwitchLeaf2.i11, i32 %"789", i32 0
  br label %printMail_getEmailFrom.exit

printMail_getEmailFrom.exit:                      ; preds = %printMail_LeafBlock1.i12, %printMail_LeafBlock.i10
  %.0.i14 = phi i32 [ %.16, %printMail_LeafBlock.i10 ], [ %.17, %printMail_LeafBlock1.i12 ]
  %"790" = getelementptr [12 x i8]* @.str13, i32 0, i32 0
  %"791" = call i32 (i8*, ...)* @printf(i8* %"790", i32 %.0.i14)
  %Pivot.i1 = icmp slt i32 %msg, 2
  br i1 %Pivot.i1, label %printMail_LeafBlock.i3, label %printMail_LeafBlock1.i5

printMail_LeafBlock.i3:                           ; preds = %printMail_getEmailFrom.exit
  %SwitchLeaf.i2 = icmp eq i32 %msg, 1
  %"792" = load i32* @"'__ste_email_to0", align 4
  %.18 = select i1 %SwitchLeaf.i2, i32 %"792", i32 0
  br label %printMail_getEmailTo.exit

printMail_LeafBlock1.i5:                          ; preds = %printMail_getEmailFrom.exit
  %SwitchLeaf2.i4 = icmp eq i32 %msg, 2
  %"793" = load i32* @"'__ste_email_to1", align 4
  %.19 = select i1 %SwitchLeaf2.i4, i32 %"793", i32 0
  br label %printMail_getEmailTo.exit

printMail_getEmailTo.exit:                        ; preds = %printMail_LeafBlock1.i5, %printMail_LeafBlock.i3
  %.0.i7 = phi i32 [ %.18, %printMail_LeafBlock.i3 ], [ %.19, %printMail_LeafBlock1.i5 ]
  %"794" = getelementptr [10 x i8]* @.str14, i32 0, i32 0
  %"795" = call i32 (i8*, ...)* @printf(i8* %"794", i32 %.0.i7)
  %"796" = getelementptr [18 x i8]* @.str15, i32 0, i32 0
  %"797" = call i32 (i8*, ...)* @printf(i8* %"796", i32 1)
  ret void
}

; Function Attrs: nounwind uwtable
define i32 @prompt(i8* %msg) #0 {
prompt_bb519:
  %"798" = call i32 @__kittel_nondef.0()
  %"799" = getelementptr [4 x i8]* @.str11, i32 0, i32 0
  %"800" = call i32 (i8*, ...)* @printf(i8* %"799", i8* %msg)
  ret i32 %"798"
}

; Function Attrs: nounwind uwtable
define i32 @isReadable(i32 %msg) #0 {
isReadable_bb520:
  ret i32 1
}

; Function Attrs: nounwind uwtable
define i32 @cloneEmail(i32 %msg) #0 {
cloneEmail_bb521:
  ret i32 %msg
}

; Function Attrs: nounwind uwtable
define i32 @select_one() #0 {
select_one_bb522:
  %"801" = call i32 @__VERIFIER_nondet_int()
  ret i32 %"801"
}

declare i32 @__kittel_nondef.0()

declare i8* @__kittel_nondef.1()

declare i32 (i32, i32)* @__kittel_nondef.2()

declare %struct.__UTAC__EXCEPTION* @__kittel_nondef.3()

declare %struct.__UTAC__CFLOW_FUNC* @__kittel_nondef.4()

declare i64 @__kittel_nondef.5()

declare i32 (i32, i32)** @__kittel_nondef.6()

declare i32* @__kittel_nondef.7()

declare %struct.__UTAC__CFLOW_FUNC** @__kittel_nondef.8()

declare %struct.__ACC__ERR* @__kittel_nondef.9()

declare i8** @__kittel_nondef.10()

declare %struct.__ACC__ERR** @__kittel_nondef.11()

declare %struct.JoinPoint* @__kittel_nondef.12()

declare i8*** @__kittel_nondef.13()

attributes #0 = { nounwind uwtable "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noreturn nounwind "less-precise-fpmad"="false" "no-frame-pointer-elim"="true" "no-frame-pointer-elim-non-leaf" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "stack-protector-buffer-size"="8" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind }
attributes #6 = { noreturn }
attributes #7 = { noreturn nounwind }

!llvm.ident = !{!0}

!0 = metadata !{metadata !"clang version 3.5.2 (http://llvm.org/git/clang.git 395a76d5372abd34fa791f6c10ebcdf43d74c8bd) (http://llvm.org/git/llvm.git a4cf325e41fca33c7ce7deef39a7bcf25fb38266)"}

