.class Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$2;
.super Ljava/lang/Object;
.source "KeyguardSimPinView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;)V
    .registers 2

    .prologue
    .line 110
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->doHapticKeyClick()V

    .line 114
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$2;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->verifyPasswordAndUnlock()V

    .line 115
    return-void
.end method
