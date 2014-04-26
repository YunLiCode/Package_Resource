.class Lcom/android/phone/InCallTouchUi$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "InCallTouchUi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallTouchUi;->hideIncomingCallWidget()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallTouchUi;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallTouchUi;)V
    .locals 0

    .prologue
    .line 1139
    iput-object p1, p0, Lcom/android/phone/InCallTouchUi$2;->this$0:Lcom/android/phone/InCallTouchUi;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 1162
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi$2;->this$0:Lcom/android/phone/InCallTouchUi;

    # getter for: Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;
    invoke-static {v0}, Lcom/android/phone/InCallTouchUi;->access$500(Lcom/android/phone/InCallTouchUi;)Lcom/android/internal/widget/multiwaveview/GlowPadView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 1163
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi$2;->this$0:Lcom/android/phone/InCallTouchUi;

    # setter for: Lcom/android/phone/InCallTouchUi;->mShowInCallControlsDuringHidingAnimation:Z
    invoke-static {v0, v2}, Lcom/android/phone/InCallTouchUi;->access$102(Lcom/android/phone/InCallTouchUi;Z)Z

    .line 1164
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi$2;->this$0:Lcom/android/phone/InCallTouchUi;

    # setter for: Lcom/android/phone/InCallTouchUi;->mIncomingCallWidgetIsFadingOut:Z
    invoke-static {v0, v2}, Lcom/android/phone/InCallTouchUi;->access$602(Lcom/android/phone/InCallTouchUi;Z)Z

    .line 1165
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi$2;->this$0:Lcom/android/phone/InCallTouchUi;

    const/4 v1, 0x1

    # setter for: Lcom/android/phone/InCallTouchUi;->mIncomingCallWidgetShouldBeReset:Z
    invoke-static {v0, v1}, Lcom/android/phone/InCallTouchUi;->access$702(Lcom/android/phone/InCallTouchUi;Z)Z

    .line 1169
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v2, 0x0

    .line 1152
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi$2;->this$0:Lcom/android/phone/InCallTouchUi;

    # getter for: Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;
    invoke-static {v0}, Lcom/android/phone/InCallTouchUi;->access$500(Lcom/android/phone/InCallTouchUi;)Lcom/android/internal/widget/multiwaveview/GlowPadView;

    move-result-object v0

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setAlpha(F)V

    .line 1153
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi$2;->this$0:Lcom/android/phone/InCallTouchUi;

    # getter for: Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;
    invoke-static {v0}, Lcom/android/phone/InCallTouchUi;->access$500(Lcom/android/phone/InCallTouchUi;)Lcom/android/internal/widget/multiwaveview/GlowPadView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setVisibility(I)V

    .line 1154
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi$2;->this$0:Lcom/android/phone/InCallTouchUi;

    # getter for: Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;
    invoke-static {v0}, Lcom/android/phone/InCallTouchUi;->access$500(Lcom/android/phone/InCallTouchUi;)Lcom/android/internal/widget/multiwaveview/GlowPadView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 1155
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi$2;->this$0:Lcom/android/phone/InCallTouchUi;

    # setter for: Lcom/android/phone/InCallTouchUi;->mShowInCallControlsDuringHidingAnimation:Z
    invoke-static {v0, v2}, Lcom/android/phone/InCallTouchUi;->access$102(Lcom/android/phone/InCallTouchUi;Z)Z

    .line 1156
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi$2;->this$0:Lcom/android/phone/InCallTouchUi;

    # setter for: Lcom/android/phone/InCallTouchUi;->mIncomingCallWidgetIsFadingOut:Z
    invoke-static {v0, v2}, Lcom/android/phone/InCallTouchUi;->access$602(Lcom/android/phone/InCallTouchUi;Z)Z

    .line 1157
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi$2;->this$0:Lcom/android/phone/InCallTouchUi;

    const/4 v1, 0x1

    # setter for: Lcom/android/phone/InCallTouchUi;->mIncomingCallWidgetShouldBeReset:Z
    invoke-static {v0, v1}, Lcom/android/phone/InCallTouchUi;->access$702(Lcom/android/phone/InCallTouchUi;Z)Z

    .line 1158
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1142
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi$2;->this$0:Lcom/android/phone/InCallTouchUi;

    # getter for: Lcom/android/phone/InCallTouchUi;->mShowInCallControlsDuringHidingAnimation:Z
    invoke-static {v0}, Lcom/android/phone/InCallTouchUi;->access$100(Lcom/android/phone/InCallTouchUi;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1144
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi$2;->this$0:Lcom/android/phone/InCallTouchUi;

    iget-object v1, p0, Lcom/android/phone/InCallTouchUi$2;->this$0:Lcom/android/phone/InCallTouchUi;

    # getter for: Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;
    invoke-static {v1}, Lcom/android/phone/InCallTouchUi;->access$200(Lcom/android/phone/InCallTouchUi;)Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    # invokes: Lcom/android/phone/InCallTouchUi;->updateInCallControls(Lcom/android/internal/telephony/CallManager;)V
    invoke-static {v0, v1}, Lcom/android/phone/InCallTouchUi;->access$300(Lcom/android/phone/InCallTouchUi;Lcom/android/internal/telephony/CallManager;)V

    .line 1145
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi$2;->this$0:Lcom/android/phone/InCallTouchUi;

    # getter for: Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;
    invoke-static {v0}, Lcom/android/phone/InCallTouchUi;->access$400(Lcom/android/phone/InCallTouchUi;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1147
    :cond_0
    return-void
.end method
