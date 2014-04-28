.class Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView$1;
.super Ljava/lang/Object;
.source "KeyguardAbsKeyInputView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;)V
    .registers 2

    .prologue
    .line 108
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const-wide/16 v1, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 111
    return-void
.end method
