.class abstract Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$CheckSimPuk;
.super Ljava/lang/Thread;
.source "KeyguardSimPukView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "CheckSimPuk"
.end annotation


# instance fields
.field private final mPin:Ljava/lang/String;

.field private final mPuk:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;


# direct methods
.method protected constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p2, "puk"    # Ljava/lang/String;
    .param p3, "pin"    # Ljava/lang/String;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$CheckSimPuk;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 219
    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$CheckSimPuk;->mPuk:Ljava/lang/String;

    .line 220
    iput-object p3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$CheckSimPuk;->mPin:Ljava/lang/String;

    .line 221
    return-void
.end method


# virtual methods
.method abstract onSimLockChangedResponse(I)V
.end method

.method public run()V
    .registers 6

    .prologue
    .line 228
    :try_start_0
    const-string v2, "phone"

    invoke-static {v2}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$CheckSimPuk;->mPuk:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$CheckSimPuk;->mPin:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/ITelephony;->supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 231
    .local v1, "result":I
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$CheckSimPuk;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    new-instance v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$CheckSimPuk$1;

    invoke-direct {v3, p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$CheckSimPuk$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$CheckSimPuk;I)V

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->post(Ljava/lang/Runnable;)Z
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1c} :catch_1d

    .line 243
    .end local v1    # "result":I
    :goto_1c
    return-void

    .line 236
    :catch_1d
    move-exception v0

    .line 237
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$CheckSimPuk;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    new-instance v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$CheckSimPuk$2;

    invoke-direct {v3, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$CheckSimPuk$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$CheckSimPuk;)V

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->post(Ljava/lang/Runnable;)Z

    goto :goto_1c
.end method