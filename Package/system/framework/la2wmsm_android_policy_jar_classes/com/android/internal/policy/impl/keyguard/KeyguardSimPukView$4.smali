.class Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$CheckSimPuk;
.source "KeyguardSimPukView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->updateSim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # Ljava/lang/String;

    .prologue
    .line 301
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$CheckSimPuk;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method onSimLockChangedResponse(I)V
    .registers 4
    .param p1, "result"    # I

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4$1;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$4;I)V

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->post(Ljava/lang/Runnable;)Z

    .line 323
    return-void
.end method
