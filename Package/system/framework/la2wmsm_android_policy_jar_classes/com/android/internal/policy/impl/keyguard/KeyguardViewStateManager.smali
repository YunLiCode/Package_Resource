.class public Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;
.super Ljava/lang/Object;
.source "KeyguardViewStateManager.java"

# interfaces
.implements Lcom/android/internal/policy/impl/keyguard/ChallengeLayout$OnBouncerStateChangedListener;
.implements Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout$OnChallengeScrolledListener;


# static fields
.field private static final SCREEN_ON_HINT_DURATION:I = 0x3e8

.field private static final SCREEN_ON_RING_HINT_DELAY:I = 0x12c


# instance fields
.field private mChallengeLayout:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

.field mChallengeTop:I

.field private mCurrentPage:I

.field private mHideHintsRunnable:Ljava/lang/Runnable;

.field private mKeyguardHostView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

.field private mKeyguardSecurityContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

.field private mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

.field mLastScrollState:I

.field mMainQueue:Landroid/os/Handler;

.field private mPageIndexOnPageBeginMoving:I

.field private mPageListeningToSlider:I

.field private mTmpLoc:[I

.field private mTmpPoint:[I


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;)V
    .registers 6
    .param p1, "hostView"    # Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    .prologue
    const/4 v1, 0x2

    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mTmpPoint:[I

    .line 30
    new-array v0, v1, [I

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mTmpLoc:[I

    .line 35
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mMainQueue:Landroid/os/Handler;

    .line 37
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mLastScrollState:I

    .line 40
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mPageListeningToSlider:I

    .line 41
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mCurrentPage:I

    .line 42
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mPageIndexOnPageBeginMoving:I

    .line 44
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeTop:I

    .line 283
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mHideHintsRunnable:Ljava/lang/Runnable;

    .line 47
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardHostView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    .line 48
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardSecurityContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    return-object v0
.end method

.method private getChallengeTopRelativeToFrame(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;I)I
    .registers 6
    .param p1, "frame"    # Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    .param p2, "top"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 171
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mTmpPoint:[I

    aput v1, v0, v1

    .line 172
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mTmpPoint:[I

    aput p2, v0, v2

    .line 173
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mTmpPoint:[I

    invoke-direct {p0, v0, p1, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mapPoint(Landroid/view/View;Landroid/view/View;[I)V

    .line 174
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mTmpPoint:[I

    aget v0, v0, v2

    return v0
.end method

.method private mapPoint(Landroid/view/View;Landroid/view/View;[I)V
    .registers 12
    .param p1, "fromView"    # Landroid/view/View;
    .param p2, "toView"    # Landroid/view/View;
    .param p3, "pt"    # [I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 186
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mTmpLoc:[I

    invoke-virtual {p1, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 188
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mTmpLoc:[I

    aget v2, v4, v6

    .line 189
    .local v2, "x":I
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mTmpLoc:[I

    aget v3, v4, v7

    .line 191
    .local v3, "y":I
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mTmpLoc:[I

    invoke-virtual {p2, v4}, Landroid/view/View;->getLocationInWindow([I)V

    .line 192
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mTmpLoc:[I

    aget v0, v4, v6

    .line 193
    .local v0, "vX":I
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mTmpLoc:[I

    aget v1, v4, v7

    .line 195
    .local v1, "vY":I
    aget v4, p3, v6

    sub-int v5, v2, v0

    add-int/2addr v4, v5

    aput v4, p3, v6

    .line 196
    aget v4, p3, v7

    sub-int v5, v3, v1

    add-int/2addr v4, v5

    aput v4, p3, v7

    .line 197
    return-void
.end method

.method private updateEdgeSwiping()V
    .registers 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    if-eqz v0, :cond_16

    .line 62
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;->isChallengeOverlapping()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 63
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setOnlyAllowEdgeSwipes(Z)V

    .line 68
    :cond_16
    :goto_16
    return-void

    .line 65
    :cond_17
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setOnlyAllowEdgeSwipes(Z)V

    goto :goto_16
.end method

.method private userActivity()V
    .registers 2

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardHostView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    if-eqz v0, :cond_e

    .line 201
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardHostView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->onUserActivityTimeoutChanged()V

    .line 202
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardHostView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->userActivity()V

    .line 204
    :cond_e
    return-void
.end method


# virtual methods
.method public fadeInSecurity(I)V
    .registers 5
    .param p1, "duration"    # I

    .prologue
    .line 101
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardSecurityContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 102
    return-void
.end method

.method public fadeOutSecurity(I)V
    .registers 5
    .param p1, "duration"    # I

    .prologue
    .line 97
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardSecurityContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 98
    return-void
.end method

.method public isBouncing()Z
    .registers 2

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;->isBouncing()Z

    move-result v0

    return v0
.end method

.method public isChallengeOverlapping()Z
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

    if-eqz v0, :cond_b

    .line 79
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;->isChallengeOverlapping()Z

    move-result v0

    .line 81
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public isChallengeShowing()Z
    .registers 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

    if-eqz v0, :cond_b

    .line 72
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;->isChallengeShowing()Z

    move-result v0

    .line 74
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public onBouncerStateChanged(Z)V
    .registers 4
    .param p1, "bouncerActive"    # Z

    .prologue
    .line 308
    if-eqz p1, :cond_8

    .line 309
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->zoomOutToBouncer()V

    .line 316
    :cond_7
    :goto_7
    return-void

    .line 311
    :cond_8
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->zoomInFromBouncer()V

    .line 312
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardHostView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    if-eqz v0, :cond_7

    .line 313
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardHostView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->setOnDismissAction(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$OnDismissAction;)V

    goto :goto_7
.end method

.method public onPageBeginMoving()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 105
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

    invoke-interface {v1}, Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;->isChallengeOverlapping()Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

    instance-of v1, v1, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    if-eqz v1, :cond_1e

    .line 107
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    .line 108
    .local v0, "scl":Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->fadeOutChallenge()V

    .line 109
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getCurrentPage()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mPageIndexOnPageBeginMoving:I

    .line 113
    .end local v0    # "scl":Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;
    :cond_1e
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardHostView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    if-eqz v1, :cond_2c

    .line 114
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardHostView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->clearAppWidgetToShow()V

    .line 115
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardHostView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-virtual {v1, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->setOnDismissAction(Lcom/android/internal/policy/impl/keyguard/KeyguardHostView$OnDismissAction;)V

    .line 117
    :cond_2c
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mHideHintsRunnable:Ljava/lang/Runnable;

    if-eqz v1, :cond_39

    .line 118
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mMainQueue:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mHideHintsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 119
    iput-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mHideHintsRunnable:Ljava/lang/Runnable;

    .line 121
    :cond_39
    return-void
.end method

.method public onPageEndMoving()V
    .registers 2

    .prologue
    .line 124
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mPageIndexOnPageBeginMoving:I

    .line 125
    return-void
.end method

.method public onPageSwitched(Landroid/view/View;I)V
    .registers 8
    .param p1, "newPage"    # Landroid/view/View;
    .param p2, "newPageIndex"    # I

    .prologue
    .line 150
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mCurrentPage:I

    if-ne v3, p2, :cond_5

    .line 168
    :goto_4
    return-void

    .line 152
    :cond_5
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    if-eqz v3, :cond_45

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

    if-eqz v3, :cond_45

    .line 153
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mCurrentPage:I

    invoke-virtual {v3, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    move-result-object v2

    .line 154
    .local v2, "prevPage":Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    if-eqz v2, :cond_2a

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mCurrentPage:I

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mPageListeningToSlider:I

    if-eq v3, v4, :cond_2a

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mCurrentPage:I

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetToResetOnPageFadeOut()I

    move-result v4

    if-eq v3, v4, :cond_2a

    .line 156
    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->resetSize()V

    .line 159
    :cond_2a
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    move-result-object v1

    .line 160
    .local v1, "newCurPage":Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;->isChallengeOverlapping()Z

    move-result v0

    .line 161
    .local v0, "challengeOverlapping":Z
    if-eqz v0, :cond_45

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->isSmall()Z

    move-result v3

    if-nez v3, :cond_45

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mPageListeningToSlider:I

    if-eq v3, p2, :cond_45

    .line 163
    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->shrinkWidget()V

    .line 167
    .end local v0    # "challengeOverlapping":Z
    .end local v1    # "newCurPage":Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    .end local v2    # "prevPage":Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    :cond_45
    iput p2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mCurrentPage:I

    goto :goto_4
.end method

.method public onPageSwitching(Landroid/view/View;I)V
    .registers 8
    .param p1, "newPage"    # Landroid/view/View;
    .param p2, "newPageIndex"    # I

    .prologue
    const/4 v4, -0x1

    .line 128
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

    instance-of v2, v2, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    if-eqz v2, :cond_17

    .line 129
    instance-of v0, p1, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;

    .line 130
    .local v0, "isCameraPage":Z
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

    check-cast v2, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    if-nez v0, :cond_36

    const/4 v3, 0x1

    :goto_14
    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->setChallengeInteractive(Z)V

    .line 135
    .end local v0    # "isCameraPage":Z
    :cond_17
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mPageIndexOnPageBeginMoving:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getNextPage()I

    move-result v3

    if-ne v2, v3, :cond_33

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

    instance-of v2, v2, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    if-eqz v2, :cond_33

    .line 137
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    .line 138
    .local v1, "scl":Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;
    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->fadeInChallenge()V

    .line 139
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setWidgetToResetOnPageFadeOut(I)V

    .line 141
    .end local v1    # "scl":Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;
    :cond_33
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mPageIndexOnPageBeginMoving:I

    .line 142
    return-void

    .line 130
    .restart local v0    # "isCameraPage":Z
    :cond_36
    const/4 v3, 0x0

    goto :goto_14
.end method

.method public onScrollPositionChanged(FI)V
    .registers 6
    .param p1, "scrollPosition"    # F
    .param p2, "challengeTop"    # I

    .prologue
    .line 276
    iput p2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeTop:I

    .line 277
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mPageListeningToSlider:I

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    move-result-object v0

    .line 278
    .local v0, "frame":Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    if-eqz v0, :cond_1a

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mLastScrollState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1a

    .line 279
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeTop:I

    invoke-direct {p0, v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->getChallengeTopRelativeToFrame(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->adjustFrame(I)V

    .line 281
    :cond_1a
    return-void
.end method

.method public onScrollStateChanged(I)V
    .registers 7
    .param p1, "scrollState"    # I

    .prologue
    const/4 v4, 0x3

    .line 208
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

    if-nez v2, :cond_a

    .line 272
    :cond_9
    :goto_9
    return-void

    .line 210
    :cond_a
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;->isChallengeOverlapping()Z

    move-result v0

    .line 212
    .local v0, "challengeOverlapping":Z
    if-nez p1, :cond_63

    .line 213
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mPageListeningToSlider:I

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    move-result-object v1

    .line 214
    .local v1, "frame":Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    if-eqz v1, :cond_9

    .line 216
    if-nez v0, :cond_2c

    .line 217
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->isPageMoving()Z

    move-result v2

    if-nez v2, :cond_55

    .line 218
    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->resetSize()V

    .line 219
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->userActivity()V

    .line 224
    :cond_2c
    :goto_2c
    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->isSmall()Z

    move-result v2

    if-eqz v2, :cond_39

    .line 227
    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getSmallFrameHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setFrameHeight(I)V

    .line 229
    :cond_39
    if-eq p1, v4, :cond_3e

    .line 230
    invoke-virtual {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->hideFrame(Ljava/lang/Object;)V

    .line 232
    :cond_3e
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->updateEdgeSwiping()V

    .line 234
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;->isChallengeShowing()Z

    move-result v2

    if-eqz v2, :cond_5d

    .line 235
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardSecurityContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->onResume(I)V

    .line 239
    :goto_4f
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mPageListeningToSlider:I

    .line 271
    .end local v1    # "frame":Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    :cond_52
    :goto_52
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mLastScrollState:I

    goto :goto_9

    .line 221
    .restart local v1    # "frame":Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    :cond_55
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mPageListeningToSlider:I

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setWidgetToResetOnPageFadeOut(I)V

    goto :goto_2c

    .line 237
    :cond_5d
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardSecurityContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->onPause()V

    goto :goto_4f

    .line 240
    .end local v1    # "frame":Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    :cond_63
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mLastScrollState:I

    if-nez v2, :cond_52

    .line 244
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getNextPage()I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mPageListeningToSlider:I

    .line 245
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mPageListeningToSlider:I

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    move-result-object v1

    .line 246
    .restart local v1    # "frame":Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    if-eqz v1, :cond_9

    .line 249
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;->isBouncing()Z

    move-result v2

    if-nez v2, :cond_9e

    .line 250
    if-eq p1, v4, :cond_86

    .line 251
    invoke-virtual {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->showFrame(Ljava/lang/Object;)V

    .line 256
    :cond_86
    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->isSmall()Z

    move-result v2

    if-nez v2, :cond_98

    .line 258
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getNextPage()I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mPageListeningToSlider:I

    .line 259
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->shrinkWidget(Z)V

    .line 269
    :cond_98
    :goto_98
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardSecurityContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    invoke-interface {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;->onPause()V

    goto :goto_52

    .line 262
    :cond_9e
    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->isSmall()Z

    move-result v2

    if-nez v2, :cond_98

    .line 264
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getNextPage()I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mPageListeningToSlider:I

    goto :goto_98
.end method

.method public setChallengeLayout(Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;)V
    .registers 2
    .param p1, "layout"    # Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

    .line 57
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->updateEdgeSwiping()V

    .line 58
    return-void
.end method

.method public setPagedView(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;)V
    .registers 2
    .param p1, "pagedView"    # Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    .line 52
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->updateEdgeSwiping()V

    .line 53
    return-void
.end method

.method public setSecurityViewContainer(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;)V
    .registers 2
    .param p1, "container"    # Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardSecurityContainer:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityView;

    .line 86
    return-void
.end method

.method public showBouncer(Z)V
    .registers 3
    .param p1, "show"    # Z

    .prologue
    .line 89
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mChallengeLayout:Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/ChallengeLayout;->showBouncer()V

    .line 90
    return-void
.end method

.method public showUsabilityHints()V
    .registers 5

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mMainQueue:Landroid/os/Handler;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 299
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mKeyguardWidgetPager:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->showInitialPageHints()V

    .line 300
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mHideHintsRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1e

    .line 301
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mMainQueue:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->mHideHintsRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 303
    :cond_1e
    return-void
.end method
