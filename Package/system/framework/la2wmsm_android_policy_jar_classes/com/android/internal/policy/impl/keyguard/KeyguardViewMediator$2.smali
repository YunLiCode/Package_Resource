.class Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$2;
.super Ljava/lang/Object;
.source "KeyguardViewMediator.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;


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
    .line 446
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public keyguardDone(Z)V
    .registers 4
    .param p1, "authenticated"    # Z

    .prologue
    .line 460
    const-string v0, "runtime.notshutdown"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->keyguardDone(ZZ)V

    .line 462
    return-void
.end method

.method public keyguardDoneDrawing()V
    .registers 3

    .prologue
    .line 465
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$1100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 466
    return-void
.end method

.method public keyguardDonePending()V
    .registers 3

    .prologue
    .line 480
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    const/4 v1, 0x1

    # setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardDonePending:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$1302(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Z)Z

    .line 481
    return-void
.end method

.method public onUserActivityTimeoutChanged()V
    .registers 2

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$1200(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->updateUserActivityTimeout()V

    .line 476
    return-void
.end method

.method public setNeedsInput(Z)V
    .registers 3
    .param p1, "needsInput"    # Z

    .prologue
    .line 470
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->mKeyguardViewManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$1200(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->setNeedsInput(Z)V

    .line 471
    return-void
.end method

.method public userActivity()V
    .registers 2

    .prologue
    .line 452
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->userActivity()V

    .line 453
    return-void
.end method

.method public userActivity(J)V
    .registers 4
    .param p1, "holdMs"    # J

    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->userActivity(J)V

    .line 457
    return-void
.end method

.method public wakeUp()V
    .registers 2

    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->wakeUp()V

    .line 449
    return-void
.end method
