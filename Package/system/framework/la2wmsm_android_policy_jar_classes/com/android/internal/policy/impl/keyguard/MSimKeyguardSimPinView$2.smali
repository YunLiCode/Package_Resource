.class Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$2;
.super Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin;
.source "MSimKeyguardSimPinView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;->verifyPasswordAndUnlock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;Ljava/lang/String;I)V
    .registers 4
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # I

    .prologue
    .line 256
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin;-><init>(Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method onSimCheckResponse(Z)V
    .registers 4
    .param p1, "success"    # Z

    .prologue
    .line 258
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$2$1;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$2$1;-><init>(Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$2;Z)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;->post(Ljava/lang/Runnable;)Z

    .line 276
    return-void
.end method
