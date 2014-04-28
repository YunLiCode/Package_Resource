.class Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea$1;
.super Landroid/database/ContentObserver;
.source "KeyguardMissedInfoArea.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;Landroid/os/Handler;)V
    .registers 3
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 4
    .param p1, "selfChange"    # Z

    .prologue
    .line 31
    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CallsObserver onChange()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;->mQueryHandler:Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea$MissedInfoQueryHandler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;)Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea$MissedInfoQueryHandler;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 33
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;->mQueryHandler:Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea$MissedInfoQueryHandler;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;->access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;)Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea$MissedInfoQueryHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea$MissedInfoQueryHandler;->startQueryMissedCall()V

    .line 35
    :cond_1a
    return-void
.end method
