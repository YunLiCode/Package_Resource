.class Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin$2;
.super Ljava/lang/Object;
.source "MSimKeyguardSimPinView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin;)V
    .registers 2

    .prologue
    .line 203
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin$2;->this$1:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin$2;->this$1:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin;->onSimCheckResponse(Z)V

    .line 206
    return-void
.end method
