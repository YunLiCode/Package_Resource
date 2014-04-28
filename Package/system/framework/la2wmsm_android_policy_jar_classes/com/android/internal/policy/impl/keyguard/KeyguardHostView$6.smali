.class Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$6;
.super Ljava/lang/Object;
.source "KeyguardHostView.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V
    .registers 2

    .prologue
    .line 896
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$6;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public dismiss(Z)V
    .registers 2
    .param p1, "securityVerified"    # Z

    .prologue
    .line 930
    return-void
.end method

.method public getFailedAttempts()I
    .registers 2

    .prologue
    .line 925
    const/4 v0, 0x0

    return v0
.end method

.method public isVerifyUnlockOnly()Z
    .registers 2

    .prologue
    .line 920
    const/4 v0, 0x0

    return v0
.end method

.method public reportFailedUnlockAttempt()V
    .registers 1

    .prologue
    .line 916
    return-void
.end method

.method public reportSuccessfulUnlockAttempt()V
    .registers 1

    .prologue
    .line 912
    return-void
.end method

.method public setOnDismissAction(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$OnDismissAction;)V
    .registers 2
    .param p1, "action"    # Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$OnDismissAction;

    .prologue
    .line 908
    return-void
.end method

.method public showBackupSecurity()V
    .registers 1

    .prologue
    .line 904
    return-void
.end method

.method public userActivity(J)V
    .registers 3
    .param p1, "timeout"    # J

    .prologue
    .line 900
    return-void
.end method
