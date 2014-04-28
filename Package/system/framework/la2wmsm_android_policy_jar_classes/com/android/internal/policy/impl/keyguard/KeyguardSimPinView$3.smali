.class Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$3;
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
    .line 125
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 127
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 128
    .local v0, "str":Ljava/lang/CharSequence;
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_20

    .line 129
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v2, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    :cond_20
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->doHapticKeyClick()V

    .line 132
    return-void
.end method
