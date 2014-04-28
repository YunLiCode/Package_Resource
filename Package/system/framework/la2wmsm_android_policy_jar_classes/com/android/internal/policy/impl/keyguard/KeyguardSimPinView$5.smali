.class Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$5;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$CheckSimPin;
.source "KeyguardSimPinView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->verifyPasswordAndUnlock()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;Ljava/lang/String;)V
    .registers 3
    .param p2, "x0"    # Ljava/lang/String;

    .prologue
    .line 241
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$CheckSimPin;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method onSimCheckResponse(I)V
    .registers 4
    .param p1, "result"    # I

    .prologue
    .line 243
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$5;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$5$1;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$5$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$5;I)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->post(Ljava/lang/Runnable;)Z

    .line 265
    return-void
.end method
