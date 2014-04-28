.class Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView$3;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardFaceUnlockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;)V
    .registers 2

    .prologue
    .line 251
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardVisibilityChanged(Z)V
    .registers 6
    .param p1, "showing"    # Z

    .prologue
    .line 284
    const/4 v1, 0x0

    .line 285
    .local v1, "wasShowing":Z
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mIsShowingLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 286
    :try_start_8
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mIsShowing:Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;)Z

    move-result v1

    .line 287
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;

    # setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mIsShowing:Z
    invoke-static {v2, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->access$402(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;Z)Z

    .line 288
    monitor-exit v3
    :try_end_14
    .catchall {:try_start_8 .. :try_end_14} :catchall_38

    .line 289
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->access$500(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;)Landroid/content/Context;

    move-result-object v2

    const-string v3, "power"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 291
    .local v0, "powerManager":Landroid/os/PowerManager;
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;)Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    move-result-object v2

    if-eqz v2, :cond_37

    .line 292
    if-nez p1, :cond_3b

    if-eqz v1, :cond_3b

    .line 293
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;)Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;->stop()Z

    .line 298
    :cond_37
    :goto_37
    return-void

    .line 288
    .end local v0    # "powerManager":Landroid/os/PowerManager;
    :catchall_38
    move-exception v2

    :try_start_39
    monitor-exit v3
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v2

    .line 294
    .restart local v0    # "powerManager":Landroid/os/PowerManager;
    :cond_3b
    if-eqz p1, :cond_37

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_37

    if-nez v1, :cond_37

    .line 295
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->maybeStartBiometricUnlock()V
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;)V

    goto :goto_37
.end method

.method public onPhoneStateChanged(I)V
    .registers 3
    .param p1, "phoneState"    # I

    .prologue
    .line 256
    const/4 v0, 0x1

    if-ne p1, v0, :cond_14

    .line 257
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;)Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    move-result-object v0

    if-eqz v0, :cond_14

    .line 258
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;)Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;->stopAndShowBackup()V

    .line 261
    :cond_14
    return-void
.end method

.method public onUserSwitchComplete(I)V
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;)Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    move-result-object v0

    if-eqz v0, :cond_d

    .line 277
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->maybeStartBiometricUnlock()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;)V

    .line 279
    :cond_d
    return-void
.end method

.method public onUserSwitching(I)V
    .registers 3
    .param p1, "userId"    # I

    .prologue
    .line 266
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;)Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 267
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->mBiometricUnlock:Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardFaceUnlockView;)Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/BiometricSensorUnlock;->stop()Z

    .line 271
    :cond_11
    return-void
.end method
