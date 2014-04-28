.class Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$1;
.super Ljava/lang/Object;
.source "MSimKeyguardSimPinView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;->showCancelButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;)V
    .registers 2

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;->doHapticKeyClick()V

    .line 65
    return-void
.end method
