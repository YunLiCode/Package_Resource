.class Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "KeyguardMessageArea.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->hideMessage(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;)V
    .registers 2

    .prologue
    .line 275
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea$3;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMessageArea;->update()V

    .line 279
    return-void
.end method
