.class Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "MultiPaneChallengeLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->hideBouncer()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;)V
    .registers 2

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$3;->this$0:Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout$3;->this$0:Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;

    # getter for: Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->mScrimView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;->access$000(Lcom/android/internal/policy/impl/keyguard/MultiPaneChallengeLayout;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 143
    return-void
.end method
