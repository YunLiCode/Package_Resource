.class Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$4;
.super Landroid/os/CountDownTimer;
.source "KeyguardHostView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showPowerOffDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

.field final synthetic val$dialog:Landroid/app/AlertDialog;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;JJLandroid/app/AlertDialog;)V
    .registers 7
    .param p2, "x0"    # J
    .param p4, "x1"    # J

    .prologue
    .line 725
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    iput-object p6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$4;->val$dialog:Landroid/app/AlertDialog;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .registers 4

    .prologue
    .line 732
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$4;->val$dialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 733
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.ACTION_REQUEST_SHUTDOWN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 734
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.extra.KEY_CONFIRM"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 735
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 736
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->access$1800(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 737
    return-void
.end method

.method public onTick(J)V
    .registers 3
    .param p1, "millisUntilFinished"    # J

    .prologue
    .line 728
    return-void
.end method
