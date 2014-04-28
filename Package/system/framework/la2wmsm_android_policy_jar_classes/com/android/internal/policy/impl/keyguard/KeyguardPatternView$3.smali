.class Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$3;
.super Landroid/os/CountDownTimer;
.source "KeyguardPatternView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->handleAttemptLockout(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;JJ)V
    .registers 6
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 361
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 3

    .prologue
    .line 372
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/internal/widget/LockPatternView;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Lcom/android/internal/widget/LockPatternView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternView;->setEnabled(Z)V

    .line 373
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->displayDefaultSecurityMessage()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$1300(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)V

    .line 375
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    const/4 v1, 0x0

    # setter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mFailedPatternAttemptsSinceLastTimeout:I
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$602(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;I)I

    .line 376
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mEnableFallback:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$1200(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 377
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;->ForgotLockPattern:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->updateFooter(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$1400(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;)V

    .line 381
    :goto_24
    return-void

    .line 379
    :cond_25
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;->Normal:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->updateFooter(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$1400(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$FooterMode;)V

    goto :goto_24
.end method

.method public onTick(J)V
    .registers 10
    .param p1, "millisUntilFinished"    # J

    .prologue
    const/4 v6, 0x1

    .line 365
    const-wide/16 v1, 0x3e8

    div-long v1, p1, v1

    long-to-int v0, v1

    .line 366
    .local v0, "secondsRemaining":I
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;->access$1000(Lcom/android/internal/policy/impl/keyguard/KeyguardPatternView;)Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    move-result-object v1

    const v2, 0x1040576

    new-array v3, v6, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v6, v3}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ[Ljava/lang/Object;)V

    .line 368
    return-void
.end method
