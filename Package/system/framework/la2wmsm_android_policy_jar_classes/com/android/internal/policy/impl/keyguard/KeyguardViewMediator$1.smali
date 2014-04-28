.class Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V
    .registers 2

    .prologue
    .line 321
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onClockVisibilityChanged()V
    .registers 2

    .prologue
    .line 374
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    .line 375
    return-void
.end method

.method public onDeviceProvisioned()V
    .registers 2

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->sendUserPresentBroadcast()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$900(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    .line 380
    return-void
.end method

.method onPhoneStateChanged(I)V
    .registers 4
    .param p1, "phoneState"    # I

    .prologue
    .line 356
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    monitor-enter v1

    .line 357
    if-nez p1, :cond_1a

    :try_start_5
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mScreenOn:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$600(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mExternallyEnabled:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$700(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 367
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    .line 369
    :cond_1a
    monitor-exit v1

    .line 370
    return-void

    .line 369
    :catchall_1c
    move-exception v0

    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_5 .. :try_end_1e} :catchall_1c

    throw v0
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;)V
    .registers 3
    .param p1, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 384
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/MSimTelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;I)V

    .line 385
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCardConstants$State;I)V
    .registers 5
    .param p1, "simState"    # Lcom/android/internal/telephony/IccCardConstants$State;
    .param p2, "subscription"    # I

    .prologue
    .line 391
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$5;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_7a

    .line 442
    :goto_b
    return-void

    .line 396
    :pswitch_c
    monitor-enter p0

    .line 397
    :try_start_d
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v0

    if-nez v0, :cond_26

    .line 398
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 402
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    .line 407
    :cond_26
    :goto_26
    monitor-exit p0

    goto :goto_b

    :catchall_28
    move-exception v0

    monitor-exit p0
    :try_end_2a
    .catchall {:try_start_d .. :try_end_2a} :catchall_28

    throw v0

    .line 404
    :cond_2b
    :try_start_2b
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    const/4 v1, 0x0

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    :try_end_31
    .catchall {:try_start_2b .. :try_end_31} :catchall_28

    goto :goto_26

    .line 411
    :pswitch_32
    monitor-enter p0

    .line 412
    :try_start_33
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v0

    if-nez v0, :cond_45

    .line 415
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    .line 419
    :goto_40
    monitor-exit p0

    goto :goto_b

    :catchall_42
    move-exception v0

    monitor-exit p0
    :try_end_44
    .catchall {:try_start_33 .. :try_end_44} :catchall_42

    throw v0

    .line 417
    :cond_45
    :try_start_45
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    const/4 v1, 0x0

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    :try_end_4b
    .catchall {:try_start_45 .. :try_end_4b} :catchall_42

    goto :goto_40

    .line 422
    :pswitch_4c
    monitor-enter p0

    .line 423
    :try_start_4d
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v0

    if-nez v0, :cond_5f

    .line 426
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->doKeyguardLocked()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$800(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    .line 432
    :goto_5a
    monitor-exit p0

    goto :goto_b

    :catchall_5c
    move-exception v0

    monitor-exit p0
    :try_end_5e
    .catchall {:try_start_4d .. :try_end_5e} :catchall_5c

    throw v0

    .line 430
    :cond_5f
    :try_start_5f
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    const/4 v1, 0x0

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V
    :try_end_65
    .catchall {:try_start_5f .. :try_end_65} :catchall_5c

    goto :goto_5a

    .line 435
    :pswitch_66
    monitor-enter p0

    .line 436
    :try_start_67
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_75

    .line 437
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    const/4 v1, 0x0

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    .line 439
    :cond_75
    monitor-exit p0

    goto :goto_b

    :catchall_77
    move-exception v0

    monitor-exit p0
    :try_end_79
    .catchall {:try_start_67 .. :try_end_79} :catchall_77

    throw v0

    .line 391
    :pswitch_data_7a
    .packed-switch 0x1
        :pswitch_c
        :pswitch_c
        :pswitch_32
        :pswitch_32
        :pswitch_4c
        :pswitch_66
    .end packed-switch
.end method

.method public onUserInfoChanged(I)V
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 351
    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->sMultiUserAvatarCache:Lcom/android/internal/policy/impl/keyguard/MultiUserAvatarCache;
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$500()Lcom/android/internal/policy/impl/keyguard/MultiUserAvatarCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/MultiUserAvatarCache;->clear(I)V

    .line 352
    return-void
.end method

.method public onUserRemoved(I)V
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;->removeUser(I)V

    .line 346
    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->sMultiUserAvatarCache:Lcom/android/internal/policy/impl/keyguard/MultiUserAvatarCache;
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$500()Lcom/android/internal/policy/impl/keyguard/MultiUserAvatarCache;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/MultiUserAvatarCache;->clear(I)V

    .line 347
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .registers 4
    .param p1, "userId"    # I

    .prologue
    .line 340
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSwitchingUser:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$002(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Z)Z

    .line 341
    return-void
.end method

.method public onUserSwitching(I)V
    .registers 5
    .param p1, "userId"    # I

    .prologue
    .line 328
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    monitor-enter v1

    .line 329
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    const/4 v2, 0x1

    # setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mSwitchingUser:Z
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$002(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Z)Z

    .line 330
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    const/4 v2, 0x0

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->resetStateLocked(Landroid/os/Bundle;)V
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    .line 331
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->adjustStatusBarLocked()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    .line 334
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->setAlternateUnlockEnabled(Z)V

    .line 335
    monitor-exit v1

    .line 336
    return-void

    .line 335
    :catchall_24
    move-exception v0

    monitor-exit v1
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_24

    throw v0
.end method
