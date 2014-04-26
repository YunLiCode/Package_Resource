.class Lcom/android/phone/PhoneGlobals$1;
.super Landroid/os/Handler;
.source "PhoneGlobals.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneGlobals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneGlobals;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneGlobals;)V
    .locals 0

    .prologue
    .line 285
    iput-object p1, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 289
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 430
    :cond_0
    :goto_0
    :sswitch_0
    return-void

    .line 296
    :sswitch_1
    iget-object v4, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/sip/SipService;->start(Landroid/content/Context;)V

    goto :goto_0

    .line 302
    :sswitch_2
    iget-object v4, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x7f0b0000

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 304
    const-string v4, "PhoneApp"

    const-string v5, "Ignoring EVENT_SIM_NETWORK_LOCKED event; not showing \'SIM network unlock\' PIN entry screen"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 310
    :cond_1
    const-string v4, "PhoneApp"

    const-string v5, "show sim depersonal panel"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    new-instance v1, Lcom/android/phone/IccNetworkDepersonalizationPanel;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/phone/IccNetworkDepersonalizationPanel;-><init>(Landroid/content/Context;)V

    .line 313
    .local v1, "ndpPanel":Lcom/android/phone/IccNetworkDepersonalizationPanel;
    invoke-virtual {v1}, Lcom/android/phone/IccNetworkDepersonalizationPanel;->show()V

    goto :goto_0

    .line 323
    .end local v1    # "ndpPanel":Lcom/android/phone/IccNetworkDepersonalizationPanel;
    :sswitch_3
    # getter for: Lcom/android/phone/PhoneGlobals;->DBG:Z
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->access$200()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "PhoneApp"

    const-string v5, "- updating in-call notification from handler..."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    :cond_2
    iget-object v4, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v4}, Lcom/android/phone/NotificationMgr;->updateInCallNotification()V

    goto :goto_0

    .line 328
    :sswitch_4
    iget-object v4, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v4}, Lcom/android/phone/NotificationMgr;->showDataDisconnectedRoaming()V

    goto :goto_0

    .line 332
    :sswitch_5
    iget-object v4, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v4}, Lcom/android/phone/NotificationMgr;->hideDataDisconnectedRoaming()V

    goto :goto_0

    .line 336
    :sswitch_6
    iget-object v5, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    # invokes: Lcom/android/phone/PhoneGlobals;->onMMIComplete(Landroid/os/AsyncResult;)V
    invoke-static {v5, v4}, Lcom/android/phone/PhoneGlobals;->access$300(Lcom/android/phone/PhoneGlobals;Landroid/os/AsyncResult;)V

    goto :goto_0

    .line 340
    :sswitch_7
    iget-object v4, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->cancelMmiCode(Lcom/android/internal/telephony/Phone;)Z

    goto :goto_0

    .line 349
    :sswitch_8
    iget-object v4, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    .line 351
    .local v2, "phoneState":Lcom/android/internal/telephony/PhoneConstants$State;
    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v4, :cond_3

    iget-object v4, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->isBluetoothHeadsetAudioOn()Z

    move-result v4

    if-nez v4, :cond_3

    .line 352
    iget-object v4, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->isHeadsetPlugged()Z

    move-result v4

    if-nez v4, :cond_4

    .line 354
    iget-object v4, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->restoreSpeakerMode(Landroid/content/Context;)V

    .line 362
    :cond_3
    :goto_1
    iget-object v4, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v4, v2}, Lcom/android/phone/PhoneGlobals;->updateProximitySensorMode(Lcom/android/internal/telephony/PhoneConstants$State;)V

    .line 365
    iget-object v4, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    # getter for: Lcom/android/phone/PhoneGlobals;->mTtyEnabled:Z
    invoke-static {v4}, Lcom/android/phone/PhoneGlobals;->access$400(Lcom/android/phone/PhoneGlobals;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 366
    const/16 v4, 0xe

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {p0, v4, v5}, Lcom/android/phone/PhoneGlobals$1;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/phone/PhoneGlobals$1;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 358
    :cond_4
    iget-object v4, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v5, v5}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto :goto_1

    .line 374
    .end local v2    # "phoneState":Lcom/android/internal/telephony/PhoneConstants$State;
    :sswitch_9
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const-string v5, "READY"

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 378
    iget-object v4, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    # getter for: Lcom/android/phone/PhoneGlobals;->mPUKEntryActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/android/phone/PhoneGlobals;->access$500(Lcom/android/phone/PhoneGlobals;)Landroid/app/Activity;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 379
    iget-object v4, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    # getter for: Lcom/android/phone/PhoneGlobals;->mPUKEntryActivity:Landroid/app/Activity;
    invoke-static {v4}, Lcom/android/phone/PhoneGlobals;->access$500(Lcom/android/phone/PhoneGlobals;)Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->finish()V

    .line 380
    iget-object v4, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    # setter for: Lcom/android/phone/PhoneGlobals;->mPUKEntryActivity:Landroid/app/Activity;
    invoke-static {v4, v6}, Lcom/android/phone/PhoneGlobals;->access$502(Lcom/android/phone/PhoneGlobals;Landroid/app/Activity;)Landroid/app/Activity;

    .line 382
    :cond_5
    iget-object v4, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    # getter for: Lcom/android/phone/PhoneGlobals;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/phone/PhoneGlobals;->access$600(Lcom/android/phone/PhoneGlobals;)Landroid/app/ProgressDialog;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 383
    iget-object v4, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    # getter for: Lcom/android/phone/PhoneGlobals;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4}, Lcom/android/phone/PhoneGlobals;->access$600(Lcom/android/phone/PhoneGlobals;)Landroid/app/ProgressDialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->dismiss()V

    .line 384
    iget-object v4, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    # setter for: Lcom/android/phone/PhoneGlobals;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;
    invoke-static {v4, v6}, Lcom/android/phone/PhoneGlobals;->access$602(Lcom/android/phone/PhoneGlobals;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    goto/16 :goto_0

    .line 396
    :sswitch_a
    const/4 v0, 0x0

    .line 397
    .local v0, "inDockMode":Z
    sget v4, Lcom/android/phone/PhoneGlobals;->mDockState:I

    if-eqz v4, :cond_6

    .line 398
    const/4 v0, 0x1

    .line 403
    :cond_6
    iget-object v4, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    .line 404
    .restart local v2    # "phoneState":Lcom/android/internal/telephony/PhoneConstants$State;
    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v2, v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->isHeadsetPlugged()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->isBluetoothHeadsetAudioOn()Z

    move-result v4

    if-nez v4, :cond_0

    .line 406
    iget-object v4, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v0, v5}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 407
    iget-object v4, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->updateInCallScreen()V

    goto/16 :goto_0

    .line 414
    .end local v0    # "inDockMode":Z
    .end local v2    # "phoneState":Lcom/android/internal/telephony/PhoneConstants$State;
    :sswitch_b
    iget-object v4, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->isHeadsetPlugged()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 415
    iget-object v4, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    # getter for: Lcom/android/phone/PhoneGlobals;->mPreferredTtyMode:I
    invoke-static {v4}, Lcom/android/phone/PhoneGlobals;->access$700(Lcom/android/phone/PhoneGlobals;)I

    move-result v3

    .line 419
    .local v3, "ttyMode":I
    :goto_2
    iget-object v4, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v5, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v3, v5}, Lcom/android/internal/telephony/Phone;->setTTYMode(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 417
    .end local v3    # "ttyMode":I
    :cond_7
    const/4 v3, 0x0

    .restart local v3    # "ttyMode":I
    goto :goto_2

    .line 423
    .end local v3    # "ttyMode":I
    :sswitch_c
    iget-object v4, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    # invokes: Lcom/android/phone/PhoneGlobals;->handleQueryTTYModeResponse(Landroid/os/Message;)V
    invoke-static {v4, p1}, Lcom/android/phone/PhoneGlobals;->access$800(Lcom/android/phone/PhoneGlobals;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 427
    :sswitch_d
    iget-object v4, p0, Lcom/android/phone/PhoneGlobals$1;->this$0:Lcom/android/phone/PhoneGlobals;

    # invokes: Lcom/android/phone/PhoneGlobals;->handleSetTTYModeResponse(Landroid/os/Message;)V
    invoke-static {v4, p1}, Lcom/android/phone/PhoneGlobals;->access$900(Lcom/android/phone/PhoneGlobals;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 289
    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_2
        0x7 -> :sswitch_8
        0x8 -> :sswitch_9
        0x9 -> :sswitch_3
        0xa -> :sswitch_4
        0xb -> :sswitch_5
        0xc -> :sswitch_0
        0xd -> :sswitch_a
        0xe -> :sswitch_b
        0xf -> :sswitch_c
        0x10 -> :sswitch_d
        0x11 -> :sswitch_1
        0x34 -> :sswitch_6
        0x35 -> :sswitch_7
    .end sparse-switch
.end method
