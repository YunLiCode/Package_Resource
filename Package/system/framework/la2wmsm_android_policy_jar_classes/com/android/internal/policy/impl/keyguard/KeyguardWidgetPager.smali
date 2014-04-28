.class public Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;
.super Lcom/android/internal/policy/impl/keyguard/PagedView;
.source "KeyguardWidgetPager.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/internal/policy/impl/keyguard/ChallengeLayout$OnBouncerStateChangedListener;
.implements Lcom/android/internal/policy/impl/keyguard/PagedView$PageSwitchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$ZInterpolator;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;
    }
.end annotation


# static fields
.field private static CAMERA_DISTANCE:F = 0.0f

.field public static final CHILDREN_OUTLINE_FADE_IN_DURATION:I = 0x64

.field public static final CHILDREN_OUTLINE_FADE_OUT_DURATION:I = 0x177

.field private static final CUSTOM_WIDGET_USER_ACTIVITY_TIMEOUT:J = 0x7530L

.field private static final FLAG_HAS_LOCAL_HOUR:I = 0x1

.field private static final FLAG_HAS_LOCAL_MINUTE:I = 0x2

.field protected static OVERSCROLL_MAX_ROTATION:F = 0.0f

.field private static final PERFORM_OVERSCROLL_ROTATION:Z = true

.field private static final TAG:Ljava/lang/String; = "KeyguardWidgetPager"


# instance fields
.field private BOUNCER_SCALE_FACTOR:F

.field private mAddWidgetView:Landroid/view/View;

.field private final mBackgroundWorkerHandler:Landroid/os/Handler;

.field private final mBackgroundWorkerThread:Landroid/os/HandlerThread;

.field private mBouncerZoomInOutDuration:I

.field private mCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;

.field private mCenterSmallWidgetsVertically:Z

.field protected mChildrenOutlineFadeAnimation:Landroid/animation/AnimatorSet;

.field private mHasMeasure:Z

.field private mLastHeightMeasureSpec:I

.field private mLastWidthMeasureSpec:I

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPage:I

.field protected mScreenCenter:I

.field protected mShowingInitialHints:Z

.field protected mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

.field private mWidgetToResetAfterFadeOut:I

.field mZInterpolator:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$ZInterpolator;

.field showHintsAfterLayout:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    const v0, 0x461c4000

    sput v0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->CAMERA_DISTANCE:F

    .line 54
    const/high16 v0, 0x41f00000

    sput v0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->OVERSCROLL_MAX_ROTATION:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 99
    const/4 v0, 0x0

    invoke-direct {p0, v1, v1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 103
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/keyguard/PagedView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$ZInterpolator;

    const/high16 v1, 0x3f000000

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$ZInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mZInterpolator:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$ZInterpolator;

    .line 68
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mHasMeasure:Z

    .line 69
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->showHintsAfterLayout:Z

    .line 75
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mPage:I

    .line 79
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mShowingInitialHints:Z

    .line 87
    const/16 v0, 0xfa

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mBouncerZoomInOutDuration:I

    .line 88
    const v0, 0x3f2b851f

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->BOUNCER_SCALE_FACTOR:F

    .line 104
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getImportantForAccessibility()I

    move-result v0

    if-nez v0, :cond_28

    .line 105
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setImportantForAccessibility(I)V

    .line 108
    :cond_28
    invoke-virtual {p0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setPageSwitchListener(Lcom/android/internal/policy/impl/keyguard/PagedView$PageSwitchListener;)V

    .line 110
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "KeyguardWidgetPager Worker"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mBackgroundWorkerThread:Landroid/os/HandlerThread;

    .line 111
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mBackgroundWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 112
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mBackgroundWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mBackgroundWorkerHandler:Landroid/os/Handler;

    .line 113
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;)Lcom/android/internal/widget/LockPatternUtils;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    .prologue
    .line 49
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mWidgetToResetAfterFadeOut:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;
    .param p1, "x1"    # I

    .prologue
    .line 49
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mWidgetToResetAfterFadeOut:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;)V
    .registers 1
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->updateWidgetFramesImportantForAccessibility()V

    return-void
.end method

.method private captureUserInteraction(Landroid/view/MotionEvent;)Z
    .registers 4
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 229
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    move-result-object v0

    .line 230
    .local v0, "currentWidgetPage":Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    if-eqz v0, :cond_12

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->onUserInteraction(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_12

    const/4 v1, 0x1

    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method private enforceKeyguardWidgetFrame(Landroid/view/View;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 402
    instance-of v0, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    if-nez v0, :cond_c

    .line 403
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "KeyguardWidgetPager children must be KeyguardWidgetFrames"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 406
    :cond_c
    return-void
.end method

.method private static findClockInHierarchy(Landroid/view/View;)I
    .registers 6
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 884
    instance-of v4, p0, Landroid/widget/TextClock;

    if-eqz v4, :cond_b

    .line 885
    check-cast p0, Landroid/widget/TextClock;

    .end local p0    # "view":Landroid/view/View;
    invoke-static {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getClockFlags(Landroid/widget/TextClock;)I

    move-result v0

    .line 895
    .restart local p0    # "view":Landroid/view/View;
    :cond_a
    :goto_a
    return v0

    .line 886
    :cond_b
    instance-of v4, p0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_26

    .line 887
    const/4 v0, 0x0

    .local v0, "flags":I
    move-object v1, p0

    .line 888
    check-cast v1, Landroid/view/ViewGroup;

    .line 889
    .local v1, "group":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    .line 890
    .local v3, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_18
    if-ge v2, v3, :cond_a

    .line 891
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->findClockInHierarchy(Landroid/view/View;)I

    move-result v4

    or-int/2addr v0, v4

    .line 890
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 895
    .end local v0    # "flags":I
    .end local v1    # "group":Landroid/view/ViewGroup;
    .end local v2    # "i":I
    .end local v3    # "size":I
    :cond_26
    const/4 v0, 0x0

    goto :goto_a
.end method

.method private static getClockFlags(Landroid/widget/TextClock;)I
    .registers 7
    .param p0, "clock"    # Landroid/widget/TextClock;

    .prologue
    .line 905
    const/4 v0, 0x0

    .line 907
    .local v0, "flags":I
    invoke-virtual {p0}, Landroid/widget/TextClock;->getTimeZone()Ljava/lang/String;

    move-result-object v3

    .line 908
    .local v3, "timeZone":Ljava/lang/String;
    if-eqz v3, :cond_17

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v4

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_17

    .line 910
    const/4 v4, 0x0

    .line 924
    :goto_16
    return v4

    .line 913
    :cond_17
    invoke-virtual {p0}, Landroid/widget/TextClock;->getFormat()Ljava/lang/CharSequence;

    move-result-object v1

    .line 914
    .local v1, "format":Ljava/lang/CharSequence;
    invoke-virtual {p0}, Landroid/widget/TextClock;->is24HourModeEnabled()Z

    move-result v4

    if-eqz v4, :cond_37

    const/16 v2, 0x6b

    .line 917
    .local v2, "hour":C
    :goto_23
    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->hasDesignator(Ljava/lang/CharSequence;C)Z

    move-result v4

    if-eqz v4, :cond_2b

    .line 918
    or-int/lit8 v0, v0, 0x1

    .line 920
    :cond_2b
    const/16 v4, 0x6d

    invoke-static {v1, v4}, Landroid/text/format/DateFormat;->hasDesignator(Ljava/lang/CharSequence;C)Z

    move-result v4

    if-eqz v4, :cond_35

    .line 921
    or-int/lit8 v0, v0, 0x2

    :cond_35
    move v4, v0

    .line 924
    goto :goto_16

    .line 914
    .end local v2    # "hour":C
    :cond_37
    const/16 v2, 0x68

    goto :goto_23
.end method

.method private updatePageAlphaValues(I)V
    .registers 2
    .param p1, "screenCenter"    # I

    .prologue
    .line 484
    return-void
.end method

.method private updateWidgetFrameImportantForAccessibility(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;)V
    .registers 4
    .param p1, "frame"    # Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    .prologue
    .line 204
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getContentAlpha()F

    move-result v0

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_e

    .line 205
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setImportantForAccessibility(I)V

    .line 209
    :goto_d
    return-void

    .line 207
    :cond_e
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setImportantForAccessibility(I)V

    goto :goto_d
.end method

.method private updateWidgetFramesImportantForAccessibility()V
    .registers 4

    .prologue
    .line 196
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getPageCount()I

    move-result v2

    .line 197
    .local v2, "pageCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v2, :cond_11

    .line 198
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    move-result-object v0

    .line 199
    .local v0, "frame":Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->updateWidgetFrameImportantForAccessibility(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;)V

    .line 197
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 201
    .end local v0    # "frame":Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    :cond_11
    return-void
.end method

.method private userActivity()V
    .registers 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;

    if-eqz v0, :cond_e

    .line 213
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;->onUserActivityTimeoutChanged()V

    .line 214
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;->userActivity()V

    .line 216
    :cond_e
    return-void
.end method


# virtual methods
.method public addView(Landroid/view/View;I)V
    .registers 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 367
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->enforceKeyguardWidgetFrame(Landroid/view/View;)V

    .line 368
    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->addView(Landroid/view/View;I)V

    .line 369
    return-void
.end method

.method public addView(Landroid/view/View;II)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 377
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->enforceKeyguardWidgetFrame(Landroid/view/View;)V

    .line 378
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->addView(Landroid/view/View;II)V

    .line 379
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .registers 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 397
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->enforceKeyguardWidgetFrame(Landroid/view/View;)V

    .line 398
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/keyguard/PagedView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 399
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .registers 3
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 387
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->enforceKeyguardWidgetFrame(Landroid/view/View;)V

    .line 388
    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 389
    return-void
.end method

.method public addWidget(Landroid/view/View;)V
    .registers 3
    .param p1, "widget"    # Landroid/view/View;

    .prologue
    .line 263
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->addWidget(Landroid/view/View;I)V

    .line 264
    return-void
.end method

.method public addWidget(Landroid/view/View;I)V
    .registers 15
    .param p1, "widget"    # Landroid/view/View;
    .param p2, "pageIndex"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v11, 0x0

    .line 310
    instance-of v7, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    if-nez v7, :cond_71

    .line 311
    new-instance v3, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v3, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;-><init>(Landroid/content/Context;)V

    .line 312
    .local v3, "frame":Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v5, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 314
    .local v5, "lp":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v7, 0x30

    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 318
    invoke-virtual {p1, v11, v11, v11, v11}, Landroid/view/View;->setPadding(IIII)V

    .line 319
    invoke-virtual {v3, p1, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 322
    instance-of v7, p1, Landroid/appwidget/AppWidgetHostView;

    if-eqz v7, :cond_33

    move-object v0, p1

    .line 323
    check-cast v0, Landroid/appwidget/AppWidgetHostView;

    .line 324
    .local v0, "awhv":Landroid/appwidget/AppWidgetHostView;
    invoke-virtual {v0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v4

    .line 325
    .local v4, "info":Landroid/appwidget/AppWidgetProviderInfo;
    iget v7, v4, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    and-int/lit8 v7, v7, 0x2

    if-eqz v7, :cond_65

    .line 326
    invoke-virtual {v3, v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setWidgetLockedSmall(Z)V

    .line 339
    .end local v0    # "awhv":Landroid/appwidget/AppWidgetHostView;
    .end local v4    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v5    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_33
    :goto_33
    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v6, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 341
    .local v6, "pageLp":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v3, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 342
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mBackgroundWorkerHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setWorkerHandler(Landroid/os/Handler;)V

    .line 344
    if-ne p2, v8, :cond_75

    .line 345
    invoke-virtual {p0, v3, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 351
    :goto_45
    if-ne p1, v3, :cond_79

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getContent()Landroid/view/View;

    move-result-object v1

    .line 352
    .local v1, "content":Landroid/view/View;
    :goto_4b
    if-eqz v1, :cond_61

    .line 353
    iget-object v7, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mContext:Landroid/content/Context;

    const v8, 0x104035e

    new-array v9, v9, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v10

    aput-object v10, v9, v11

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 356
    .local v2, "contentDescription":Ljava/lang/String;
    invoke-virtual {v3, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 358
    .end local v2    # "contentDescription":Ljava/lang/String;
    :cond_61
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->updateWidgetFrameImportantForAccessibility(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;)V

    .line 359
    return-void

    .line 329
    .end local v1    # "content":Landroid/view/View;
    .end local v6    # "pageLp":Landroid/view/ViewGroup$LayoutParams;
    .restart local v0    # "awhv":Landroid/appwidget/AppWidgetHostView;
    .restart local v4    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    .restart local v5    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_65
    invoke-virtual {v3, v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setWidgetLockedSmall(Z)V

    .line 330
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mCenterSmallWidgetsVertically:Z

    if-eqz v7, :cond_33

    .line 331
    const/16 v7, 0x11

    iput v7, v5, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_33

    .end local v0    # "awhv":Landroid/appwidget/AppWidgetHostView;
    .end local v3    # "frame":Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    .end local v4    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    .end local v5    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    :cond_71
    move-object v3, p1

    .line 336
    check-cast v3, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    .restart local v3    # "frame":Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    goto :goto_33

    .line 347
    .restart local v6    # "pageLp":Landroid/view/ViewGroup$LayoutParams;
    :cond_75
    invoke-virtual {p0, v3, p2, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_45

    :cond_79
    move-object v1, p1

    .line 351
    goto :goto_4b
.end method

.method animateOutlinesAndSidePages(Z)V
    .registers 3
    .param p1, "show"    # Z

    .prologue
    .line 665
    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->animateOutlinesAndSidePages(ZI)V

    .line 666
    return-void
.end method

.method animateOutlinesAndSidePages(ZI)V
    .registers 16
    .param p1, "show"    # Z
    .param p2, "duration"    # I

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 677
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mChildrenOutlineFadeAnimation:Landroid/animation/AnimatorSet;

    if-eqz v9, :cond_e

    .line 678
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mChildrenOutlineFadeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->cancel()V

    .line 679
    const/4 v9, 0x0

    iput-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mChildrenOutlineFadeAnimation:Landroid/animation/AnimatorSet;

    .line 681
    :cond_e
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v4

    .line 683
    .local v4, "count":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 685
    .local v2, "anims":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    const/4 v9, -0x1

    if-ne p2, v9, :cond_1e

    .line 686
    if-eqz p1, :cond_54

    const/16 p2, 0x64

    .line 690
    :cond_1e
    :goto_1e
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getNextPage()I

    move-result v5

    .line 691
    .local v5, "curPage":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_23
    if-ge v8, v4, :cond_62

    .line 693
    if-eqz p1, :cond_57

    .line 694
    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mScreenCenter:I

    invoke-virtual {p0, v9, v8, v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getAlphaForPage(IIZ)F

    move-result v6

    .line 700
    .local v6, "finalContentAlpha":F
    :goto_2d
    invoke-virtual {p0, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    move-result-object v3

    .line 702
    .local v3, "child":Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    const-string v9, "contentAlpha"

    new-array v10, v11, [F

    aput v6, v10, v12

    invoke-static {v9, v10}, Landroid/animation/PropertyValuesHolder;->ofFloat(Ljava/lang/String;[F)Landroid/animation/PropertyValuesHolder;

    move-result-object v1

    .line 703
    .local v1, "alpha":Landroid/animation/PropertyValuesHolder;
    new-array v9, v11, [Landroid/animation/PropertyValuesHolder;

    aput-object v1, v9, v12

    invoke-static {v3, v9}, Landroid/animation/ObjectAnimator;->ofPropertyValuesHolder(Ljava/lang/Object;[Landroid/animation/PropertyValuesHolder;)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 704
    .local v0, "a":Landroid/animation/ObjectAnimator;
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 706
    if-eqz p1, :cond_60

    iget v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mScreenCenter:I

    invoke-virtual {p0, v9, v8, v11}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getOutlineAlphaForPage(IIZ)F

    move-result v7

    .line 707
    .local v7, "finalOutlineAlpha":F
    :goto_4e
    invoke-virtual {v3, p0, p1, v7, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->fadeFrame(Ljava/lang/Object;ZFI)V

    .line 691
    add-int/lit8 v8, v8, 0x1

    goto :goto_23

    .line 686
    .end local v0    # "a":Landroid/animation/ObjectAnimator;
    .end local v1    # "alpha":Landroid/animation/PropertyValuesHolder;
    .end local v3    # "child":Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    .end local v5    # "curPage":I
    .end local v6    # "finalContentAlpha":F
    .end local v7    # "finalOutlineAlpha":F
    .end local v8    # "i":I
    :cond_54
    const/16 p2, 0x177

    goto :goto_1e

    .line 695
    .restart local v5    # "curPage":I
    .restart local v8    # "i":I
    :cond_57
    if-nez p1, :cond_5e

    if-ne v8, v5, :cond_5e

    .line 696
    const/high16 v6, 0x3f800000

    .restart local v6    # "finalContentAlpha":F
    goto :goto_2d

    .line 698
    .end local v6    # "finalContentAlpha":F
    :cond_5e
    const/4 v6, 0x0

    .restart local v6    # "finalContentAlpha":F
    goto :goto_2d

    .line 706
    .restart local v0    # "a":Landroid/animation/ObjectAnimator;
    .restart local v1    # "alpha":Landroid/animation/PropertyValuesHolder;
    .restart local v3    # "child":Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    :cond_60
    const/4 v7, 0x0

    goto :goto_4e

    .line 710
    .end local v0    # "a":Landroid/animation/ObjectAnimator;
    .end local v1    # "alpha":Landroid/animation/PropertyValuesHolder;
    .end local v3    # "child":Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    .end local v6    # "finalContentAlpha":F
    :cond_62
    new-instance v9, Landroid/animation/AnimatorSet;

    invoke-direct {v9}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mChildrenOutlineFadeAnimation:Landroid/animation/AnimatorSet;

    .line 711
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mChildrenOutlineFadeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v9, v2}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 713
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mChildrenOutlineFadeAnimation:Landroid/animation/AnimatorSet;

    int-to-long v10, p2

    invoke-virtual {v9, v10, v11}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 714
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mChildrenOutlineFadeAnimation:Landroid/animation/AnimatorSet;

    new-instance v10, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$3;

    invoke-direct {v10, p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$3;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;Z)V

    invoke-virtual {v9, v10}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 737
    iget-object v9, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mChildrenOutlineFadeAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v9}, Landroid/animation/AnimatorSet;->start()V

    .line 738
    return-void
.end method

.method backgroundAlphaInterpolator(F)F
    .registers 3
    .param p1, "r"    # F

    .prologue
    .line 480
    const/high16 v0, 0x3f800000

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0
.end method

.method boundByReorderablePages(Z[I)V
    .registers 7
    .param p1, "isReordering"    # Z
    .param p2, "range"    # [I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 562
    if-eqz p1, :cond_2e

    .line 564
    :goto_4
    aget v0, p2, v3

    aget v1, p2, v2

    if-lt v0, v1, :cond_19

    aget v0, p2, v3

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->isWidgetPage(I)Z

    move-result v0

    if-nez v0, :cond_19

    .line 565
    aget v0, p2, v3

    add-int/lit8 v0, v0, -0x1

    aput v0, p2, v3

    goto :goto_4

    .line 567
    :cond_19
    :goto_19
    aget v0, p2, v2

    aget v1, p2, v3

    if-gt v0, v1, :cond_2e

    aget v0, p2, v2

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->isWidgetPage(I)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 568
    aget v0, p2, v2

    add-int/lit8 v0, v0, 0x1

    aput v0, p2, v2

    goto :goto_19

    .line 571
    :cond_2e
    return-void
.end method

.method protected disablePageContentLayers()V
    .registers 4

    .prologue
    .line 449
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v0

    .line 450
    .local v0, "children":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_11

    .line 451
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->disableHardwareLayersForContent()V

    .line 450
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 453
    :cond_11
    return-void
.end method

.method protected enablePageContentLayers()V
    .registers 4

    .prologue
    .line 442
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v0

    .line 443
    .local v0, "children":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_5
    if-ge v1, v0, :cond_11

    .line 444
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->enableHardwareLayersForContent()V

    .line 443
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 446
    :cond_11
    return-void
.end method

.method public getAlphaForPage(IIZ)F
    .registers 6
    .param p1, "screenCenter"    # I
    .param p2, "index"    # I
    .param p3, "showSidePages"    # Z

    .prologue
    const/high16 v0, 0x3f800000

    .line 487
    if-eqz p3, :cond_5

    .line 490
    :cond_4
    :goto_4
    return v0

    :cond_5
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    if-eq p2, v1, :cond_4

    const/4 v0, 0x0

    goto :goto_4
.end method

.method public getOutlineAlphaForPage(IIZ)F
    .registers 6
    .param p1, "screenCenter"    # I
    .param p2, "index"    # I
    .param p3, "showSidePages"    # Z

    .prologue
    .line 495
    if-eqz p3, :cond_b

    .line 496
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getAlphaForPage(IIZ)F

    move-result v0

    const v1, 0x3f19999a

    mul-float/2addr v0, v1

    .line 499
    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getUserActivityTimeout()J
    .registers 6

    .prologue
    .line 238
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mPage:I

    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 239
    .local v0, "page":Landroid/view/View;
    instance-of v3, v0, Landroid/view/ViewGroup;

    if-eqz v3, :cond_1d

    move-object v1, v0

    .line 240
    check-cast v1, Landroid/view/ViewGroup;

    .line 241
    .local v1, "vg":Landroid/view/ViewGroup;
    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 242
    .local v2, "view":Landroid/view/View;
    instance-of v3, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;

    if-nez v3, :cond_1d

    instance-of v3, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;

    if-nez v3, :cond_1d

    .line 244
    const-wide/16 v3, 0x7530

    .line 247
    .end local v1    # "vg":Landroid/view/ViewGroup;
    .end local v2    # "view":Landroid/view/View;
    :goto_1c
    return-wide v3

    :cond_1d
    const-wide/16 v3, -0x1

    goto :goto_1c
.end method

.method public getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 410
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    return-object v0
.end method

.method public getWidgetPageIndex(Landroid/view/View;)I
    .registers 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 769
    instance-of v0, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    if-eqz v0, :cond_9

    .line 770
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 773
    :goto_8
    return v0

    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->indexOfChild(Landroid/view/View;)I

    move-result v0

    goto :goto_8
.end method

.method public getWidgetToResetOnPageFadeOut()I
    .registers 2

    .prologue
    .line 673
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mWidgetToResetAfterFadeOut:I

    return v0
.end method

.method hideOutlinesAndSidePages()V
    .registers 2

    .prologue
    .line 595
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->animateOutlinesAndSidePages(Z)V

    .line 596
    return-void
.end method

.method isAddPage(I)Z
    .registers 5
    .param p1, "pageIndex"    # I

    .prologue
    .line 864
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 865
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v1

    const v2, 0x10202b3

    if-ne v1, v2, :cond_11

    const/4 v1, 0x1

    :goto_10
    return v1

    :cond_11
    const/4 v1, 0x0

    goto :goto_10
.end method

.method isCameraPage(I)Z
    .registers 4
    .param p1, "pageIndex"    # I

    .prologue
    .line 869
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 870
    .local v0, "v":Landroid/view/View;
    if-eqz v0, :cond_c

    instance-of v1, v0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    :goto_b
    return v1

    :cond_c
    const/4 v1, 0x0

    goto :goto_b
.end method

.method protected isOverScrollChild(IF)Z
    .registers 9
    .param p1, "index"    # I
    .param p2, "scrollProgress"    # F

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 504
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mOverScrollX:I

    if-ltz v3, :cond_d

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mOverScrollX:I

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mMaxScrollX:I

    if-le v3, v4, :cond_23

    :cond_d
    move v0, v1

    .line 505
    .local v0, "isInOverscroll":Z
    :goto_e
    if-eqz v0, :cond_25

    if-nez p1, :cond_16

    cmpg-float v3, p2, v5

    if-ltz v3, :cond_22

    :cond_16
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne p1, v3, :cond_25

    cmpl-float v3, p2, v5

    if-lez v3, :cond_25

    :cond_22
    :goto_22
    return v1

    .end local v0    # "isInOverscroll":Z
    :cond_23
    move v0, v2

    .line 504
    goto :goto_e

    .restart local v0    # "isInOverscroll":Z
    :cond_25
    move v1, v2

    .line 505
    goto :goto_22
.end method

.method public isWidgetPage(I)Z
    .registers 6
    .param p1, "pageIndex"    # I

    .prologue
    const/4 v2, 0x0

    .line 546
    if-ltz p1, :cond_9

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v3

    if-lt p1, v3, :cond_a

    .line 554
    :cond_9
    :goto_9
    return v2

    .line 549
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 550
    .local v1, "v":Landroid/view/View;
    if-eqz v1, :cond_9

    instance-of v3, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    if-eqz v3, :cond_9

    move-object v0, v1

    .line 551
    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    .line 552
    .local v0, "kwf":Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getContentAppWidgetId()I

    move-result v3

    if-eqz v3, :cond_9

    const/4 v2, 0x1

    goto :goto_9
.end method

.method public onAddView(Landroid/view/View;I)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 287
    move-object v2, p1

    check-cast v2, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getContentAppWidgetId()I

    move-result v0

    .line 288
    .local v0, "appWidgetId":I
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mTempVisiblePagesRange:[I

    array-length v2, v2

    new-array v1, v2, [I

    .line 289
    .local v1, "pagesRange":[I
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getVisiblePages([I)V

    .line 290
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->boundByReorderablePages(Z[I)V

    .line 291
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;

    if-eqz v2, :cond_1c

    .line 292
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;

    invoke-interface {v2, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;->onAddView(Landroid/view/View;)V

    .line 296
    :cond_1c
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mBackgroundWorkerHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$2;

    invoke-direct {v3, p0, v0, p2, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;II[I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 302
    return-void
.end method

.method public onAttachedToWindow()V
    .registers 2

    .prologue
    .line 626
    invoke-super {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->onAttachedToWindow()V

    .line 627
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mHasMeasure:Z

    .line 628
    return-void
.end method

.method public onBouncerStateChanged(Z)V
    .registers 2
    .param p1, "bouncerActive"    # Z

    .prologue
    .line 786
    if-eqz p1, :cond_6

    .line 787
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->zoomOutToBouncer()V

    .line 791
    :goto_5
    return-void

    .line 789
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->zoomInFromBouncer()V

    goto :goto_5
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 117
    invoke-super {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->onDetachedFromWindow()V

    .line 120
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mBackgroundWorkerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 121
    return-void
.end method

.method protected onEndReordering()V
    .registers 1

    .prologue
    .line 586
    invoke-super {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->onEndReordering()V

    .line 587
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->hideOutlinesAndSidePages()V

    .line 588
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 225
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->captureUserInteraction(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 743
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->isChallengeShowing()Z

    move-result v3

    if-eqz v3, :cond_1c

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->isChallengeOverlapping()Z

    move-result v3

    if-eqz v3, :cond_1c

    move v0, v1

    .line 745
    .local v0, "isChallengeOverlapping":Z
    :goto_13
    if-nez v0, :cond_1e

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->startReordering()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 748
    :goto_1b
    return v1

    .end local v0    # "isChallengeOverlapping":Z
    :cond_1c
    move v0, v2

    .line 743
    goto :goto_13

    .restart local v0    # "isChallengeOverlapping":Z
    :cond_1e
    move v1, v2

    .line 748
    goto :goto_1b
.end method

.method protected onMeasure(II)V
    .registers 12
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 631
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mLastWidthMeasureSpec:I

    .line 632
    iput p2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mLastHeightMeasureSpec:I

    .line 634
    const/4 v4, -0x1

    .line 635
    .local v4, "maxChallengeTop":I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 636
    .local v5, "parent":Landroid/view/View;
    const/4 v0, 0x0

    .line 640
    .local v0, "challengeShowing":Z
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v8

    instance-of v8, v8, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    if-eqz v8, :cond_46

    .line 641
    invoke-virtual {v5}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;

    .line 642
    .local v6, "scl":Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;
    invoke-virtual {v6}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->getMaxChallengeTop()I

    move-result v7

    .line 646
    .local v7, "top":I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getPaddingTop()I

    move-result v8

    sub-int v4, v7, v8

    .line 647
    invoke-virtual {v6}, Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;->isChallengeShowing()Z

    move-result v0

    .line 649
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v1

    .line 650
    .local v1, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2d
    if-ge v3, v1, :cond_46

    .line 651
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    move-result-object v2

    .line 652
    .local v2, "frame":Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    invoke-virtual {v2, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setMaxChallengeTop(I)V

    .line 655
    if-eqz v0, :cond_43

    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    if-ne v3, v8, :cond_43

    iget-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mHasMeasure:Z

    if-nez v8, :cond_43

    .line 656
    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->shrinkWidget()V

    .line 650
    :cond_43
    add-int/lit8 v3, v3, 0x1

    goto :goto_2d

    .line 660
    .end local v1    # "count":I
    .end local v2    # "frame":Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    .end local v3    # "i":I
    .end local v6    # "scl":Lcom/android/internal/policy/impl/keyguard/SlidingChallengeLayout;
    .end local v7    # "top":I
    :cond_46
    invoke-super {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/PagedView;->onMeasure(II)V

    .line 661
    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mHasMeasure:Z

    .line 662
    return-void
.end method

.method protected onPageBeginMoving()V
    .registers 2

    .prologue
    .line 419
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    if-eqz v0, :cond_9

    .line 420
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->onPageBeginMoving()V

    .line 422
    :cond_9
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->isReordering(Z)Z

    move-result v0

    if-nez v0, :cond_13

    .line 423
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->showOutlinesAndSidePages()V

    .line 425
    :cond_13
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->userActivity()V

    .line 426
    return-void
.end method

.method protected onPageEndMoving()V
    .registers 2

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    if-eqz v0, :cond_9

    .line 431
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->onPageEndMoving()V

    .line 436
    :cond_9
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->isReordering(Z)Z

    move-result v0

    if-nez v0, :cond_13

    .line 437
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->hideOutlinesAndSidePages()V

    .line 439
    :cond_13
    return-void
.end method

.method public onPageSwitched(Landroid/view/View;I)V
    .registers 13
    .param p1, "newPage"    # Landroid/view/View;
    .param p2, "newPageIndex"    # I

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 140
    const/4 v4, 0x0

    .line 141
    .local v4, "showingClock":Z
    instance-of v6, p1, Landroid/view/ViewGroup;

    if-eqz v6, :cond_13

    move-object v5, p1

    .line 142
    check-cast v5, Landroid/view/ViewGroup;

    .line 143
    .local v5, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v6, v6, Lcom/android/internal/policy/impl/keyguard/KeyguardStatusView;

    if-eqz v6, :cond_13

    .line 144
    const/4 v4, 0x1

    .line 148
    .end local v5    # "vg":Landroid/view/ViewGroup;
    :cond_13
    if-eqz p1, :cond_1d

    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->findClockInHierarchy(Landroid/view/View;)I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1d

    .line 150
    const/4 v4, 0x1

    .line 154
    :cond_1d
    if-eqz v4, :cond_77

    .line 155
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getSystemUiVisibility()I

    move-result v6

    const/high16 v7, 0x800000

    or-int/2addr v6, v7

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setSystemUiVisibility(I)V

    .line 161
    :goto_29
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mPage:I

    if-eq v6, p2, :cond_6d

    .line 162
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mPage:I

    .line 163
    .local v2, "oldPageIndex":I
    iput p2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mPage:I

    .line 164
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->userActivity()V

    .line 165
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    move-result-object v3

    .line 166
    .local v3, "oldWidgetPage":Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    if-eqz v3, :cond_3d

    .line 167
    invoke-virtual {v3, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->onActive(Z)V

    .line 169
    :cond_3d
    invoke-virtual {p0, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    move-result-object v1

    .line 170
    .local v1, "newWidgetPage":Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    if-eqz v1, :cond_4c

    .line 171
    invoke-virtual {v1, v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->onActive(Z)V

    .line 172
    invoke-virtual {v1, v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setImportantForAccessibility(I)V

    .line 173
    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->requestAccessibilityFocus()Z

    .line 175
    :cond_4c
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mParent:Landroid/view/ViewParent;

    if-eqz v6, :cond_6d

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_6d

    .line 176
    const/16 v6, 0x1000

    invoke-static {v6}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v0

    .line 178
    .local v0, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 179
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 180
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mParent:Landroid/view/ViewParent;

    invoke-interface {v6, p0, v0}, Landroid/view/ViewParent;->requestSendAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 183
    .end local v0    # "event":Landroid/view/accessibility/AccessibilityEvent;
    .end local v1    # "newWidgetPage":Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    .end local v2    # "oldPageIndex":I
    .end local v3    # "oldWidgetPage":Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    :cond_6d
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    if-eqz v6, :cond_76

    .line 184
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v6, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->onPageSwitched(Landroid/view/View;I)V

    .line 186
    :cond_76
    return-void

    .line 157
    :cond_77
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getSystemUiVisibility()I

    move-result v6

    const v7, -0x800001

    and-int/2addr v6, v7

    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setSystemUiVisibility(I)V

    goto :goto_29
.end method

.method public onPageSwitching(Landroid/view/View;I)V
    .registers 4
    .param p1, "newPage"    # Landroid/view/View;
    .param p2, "newPageIndex"    # I

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    if-eqz v0, :cond_9

    .line 134
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;->onPageSwitching(Landroid/view/View;I)V

    .line 136
    :cond_9
    return-void
.end method

.method public onRemoveView(Landroid/view/View;Z)V
    .registers 6
    .param p1, "v"    # Landroid/view/View;
    .param p2, "deletePermanently"    # Z

    .prologue
    .line 267
    move-object v1, p1

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getContentAppWidgetId()I

    move-result v0

    .line 268
    .local v0, "appWidgetId":I
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;

    if-eqz v1, :cond_10

    .line 269
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;->onRemoveView(Landroid/view/View;Z)V

    .line 271
    :cond_10
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mBackgroundWorkerHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$1;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 277
    return-void
.end method

.method public onRemoveViewAnimationCompleted()V
    .registers 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;

    if-eqz v0, :cond_9

    .line 282
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;->onRemoveViewAnimationCompleted()V

    .line 284
    :cond_9
    return-void
.end method

.method protected onStartReordering()V
    .registers 1

    .prologue
    .line 579
    invoke-super {p0}, Lcom/android/internal/policy/impl/keyguard/PagedView;->onStartReordering()V

    .line 580
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->enablePageContentLayers()V

    .line 581
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->reorderStarting()V

    .line 582
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 220
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->captureUserInteraction(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_c

    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method protected onUnhandledTap(Landroid/view/MotionEvent;)V
    .registers 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 414
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->showPagingFeedback()V

    .line 415
    return-void
.end method

.method protected overScroll(F)V
    .registers 2
    .param p1, "amount"    # F

    .prologue
    .line 476
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->acceleratedOverScroll(F)V

    .line 477
    return-void
.end method

.method public removeWidget(Landroid/view/View;)V
    .registers 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 752
    instance-of v2, p1, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    if-eqz v2, :cond_8

    .line 753
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->removeView(Landroid/view/View;)V

    .line 766
    :goto_7
    return-void

    .line 757
    :cond_8
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageIndex(Landroid/view/View;)I

    move-result v1

    .line 758
    .local v1, "pos":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1c

    .line 759
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    .line 760
    .local v0, "frame":Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->removeView(Landroid/view/View;)V

    .line 761
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->removeView(Landroid/view/View;)V

    goto :goto_7

    .line 763
    .end local v0    # "frame":Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    :cond_1c
    const-string v2, "KeyguardWidgetPager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeWidget() can\'t find:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7
.end method

.method protected reorderStarting()V
    .registers 1

    .prologue
    .line 574
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->showOutlinesAndSidePages()V

    .line 575
    return-void
.end method

.method protected screenScrolled(I)V
    .registers 12
    .param p1, "screenCenter"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v9, 0x0

    .line 511
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mScreenCenter:I

    .line 512
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->updatePageAlphaValues(I)V

    .line 513
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_8
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v6

    if-ge v1, v6, :cond_74

    .line 514
    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    move-result-object v5

    .line 515
    .local v5, "v":Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDragView:Landroid/view/View;

    if-ne v5, v6, :cond_19

    .line 513
    :cond_16
    :goto_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 516
    :cond_19
    if-eqz v5, :cond_16

    .line 517
    invoke-virtual {p0, p1, v5, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getScrollProgress(ILandroid/view/View;I)F

    move-result v4

    .line 519
    .local v4, "scrollProgress":F
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mDensity:F

    sget v8, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->CAMERA_DISTANCE:F

    mul-float/2addr v6, v8

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setCameraDistance(F)V

    .line 521
    invoke-virtual {p0, v1, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->isOverScrollChild(IF)Z

    move-result v6

    if-eqz v6, :cond_63

    .line 522
    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getMeasuredWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v2, v6

    .line 523
    .local v2, "pivotX":F
    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getMeasuredHeight()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v3, v6

    .line 524
    .local v3, "pivotY":F
    invoke-virtual {v5, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setPivotX(F)V

    .line 525
    invoke-virtual {v5, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setPivotY(F)V

    .line 526
    sget v6, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->OVERSCROLL_MAX_ROTATION:F

    neg-float v6, v6

    mul-float/2addr v6, v4

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setRotationY(F)V

    .line 527
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpg-float v6, v4, v9

    if-gez v6, :cond_61

    const/4 v6, 0x1

    :goto_51
    invoke-virtual {v5, v8, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setOverScrollAmount(FZ)V

    .line 533
    .end local v2    # "pivotX":F
    .end local v3    # "pivotY":F
    :goto_54
    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getAlpha()F

    move-result v0

    .line 536
    .local v0, "alpha":F
    cmpl-float v6, v0, v9

    if-nez v6, :cond_6a

    .line 537
    const/4 v6, 0x4

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setVisibility(I)V

    goto :goto_16

    .end local v0    # "alpha":F
    .restart local v2    # "pivotX":F
    .restart local v3    # "pivotY":F
    :cond_61
    move v6, v7

    .line 527
    goto :goto_51

    .line 529
    .end local v2    # "pivotX":F
    .end local v3    # "pivotY":F
    :cond_63
    invoke-virtual {v5, v9}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setRotationY(F)V

    .line 530
    invoke-virtual {v5, v9, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setOverScrollAmount(FZ)V

    goto :goto_54

    .line 538
    .restart local v0    # "alpha":F
    :cond_6a
    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->getVisibility()I

    move-result v6

    if-eqz v6, :cond_16

    .line 539
    invoke-virtual {v5, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setVisibility(I)V

    goto :goto_16

    .line 543
    .end local v0    # "alpha":F
    .end local v4    # "scrollProgress":F
    .end local v5    # "v":Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    :cond_74
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .registers 3
    .param p1, "eventType"    # I

    .prologue
    .line 190
    const/16 v0, 0x1000

    if-ne p1, v0, :cond_a

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->isPageMoving()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 191
    :cond_a
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->sendAccessibilityEvent(I)V

    .line 193
    :cond_d
    return-void
.end method

.method setAddWidgetEnabled(Z)V
    .registers 5
    .param p1, "enabled"    # Z

    .prologue
    .line 846
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mAddWidgetView:Landroid/view/View;

    if-eqz v1, :cond_1e

    if-eqz p1, :cond_1e

    .line 847
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mAddWidgetView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->addView(Landroid/view/View;I)V

    .line 850
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mLastWidthMeasureSpec:I

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mLastHeightMeasureSpec:I

    invoke-virtual {p0, v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->measure(II)V

    .line 852
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->setCurrentPage(I)V

    .line 853
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mAddWidgetView:Landroid/view/View;

    .line 861
    :cond_1d
    :goto_1d
    return-void

    .line 854
    :cond_1e
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mAddWidgetView:Landroid/view/View;

    if-nez v1, :cond_1d

    if-nez p1, :cond_1d

    .line 855
    const v1, 0x10202b3

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 856
    .local v0, "addWidget":Landroid/view/View;
    if-eqz v0, :cond_1d

    .line 857
    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mAddWidgetView:Landroid/view/View;

    .line 858
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->removeView(Landroid/view/View;)V

    goto :goto_1d
.end method

.method setBouncerAnimationDuration(I)V
    .registers 2
    .param p1, "duration"    # I

    .prologue
    .line 794
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mBouncerZoomInOutDuration:I

    .line 795
    return-void
.end method

.method public setCallbacks(Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;)V
    .registers 2
    .param p1, "callbacks"    # Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;

    .prologue
    .line 251
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mCallbacks:Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager$Callbacks;

    .line 252
    return-void
.end method

.method setCurrentPage(I)V
    .registers 3
    .param p1, "currentPage"    # I

    .prologue
    .line 619
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->setCurrentPage(I)V

    .line 620
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->updateChildrenContentAlpha(F)V

    .line 621
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->updateWidgetFramesImportantForAccessibility()V

    .line 622
    return-void
.end method

.method public setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V
    .registers 2
    .param p1, "l"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 129
    return-void
.end method

.method protected setPageHoveringOverDeleteDropTarget(IZ)V
    .registers 4
    .param p1, "viewIndex"    # I
    .param p2, "isHovering"    # Z

    .prologue
    .line 779
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    move-result-object v0

    .line 780
    .local v0, "child":Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    invoke-virtual {v0, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setIsHoveringOverDeleteDropTarget(Z)V

    .line 781
    return-void
.end method

.method public setViewStateManager(Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;)V
    .registers 2
    .param p1, "viewStateManager"    # Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mViewStateManager:Lcom/android/internal/policy/impl/keyguard/KeyguardViewStateManager;

    .line 125
    return-void
.end method

.method public setWidgetToResetOnPageFadeOut(I)V
    .registers 2
    .param p1, "widget"    # I

    .prologue
    .line 669
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mWidgetToResetAfterFadeOut:I

    .line 670
    return-void
.end method

.method protected shouldSetTopAlignedPivotForWidget(I)Z
    .registers 3
    .param p1, "childIndex"    # I

    .prologue
    .line 875
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->isCameraPage(I)Z

    move-result v0

    if-nez v0, :cond_e

    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/keyguard/PagedView;->shouldSetTopAlignedPivotForWidget(I)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public showInitialPageHints()V
    .registers 2

    .prologue
    .line 613
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mShowingInitialHints:Z

    .line 614
    const v0, 0x3f19999a

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->updateChildrenContentAlpha(F)V

    .line 615
    return-void
.end method

.method showOutlinesAndSidePages()V
    .registers 2

    .prologue
    .line 591
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->animateOutlinesAndSidePages(Z)V

    .line 592
    return-void
.end method

.method public showPagingFeedback()V
    .registers 1

    .prologue
    .line 235
    return-void
.end method

.method updateChildrenContentAlpha(F)V
    .registers 7
    .param p1, "sidePageAlpha"    # F

    .prologue
    const/4 v4, 0x0

    .line 599
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getChildCount()I

    move-result v1

    .line 600
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    if-ge v2, v1, :cond_22

    .line 601
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getWidgetPageAt(I)Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    move-result-object v0

    .line 602
    .local v0, "child":Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mCurrentPage:I

    if-eq v2, v3, :cond_19

    .line 603
    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setBackgroundAlpha(F)V

    .line 604
    invoke-virtual {v0, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setContentAlpha(F)V

    .line 600
    :goto_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 606
    :cond_19
    invoke-virtual {v0, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setBackgroundAlpha(F)V

    .line 607
    const/high16 v3, 0x3f800000

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->setContentAlpha(F)V

    goto :goto_16

    .line 610
    .end local v0    # "child":Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;
    :cond_22
    return-void
.end method

.method zoomInFromBouncer()V
    .registers 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x3f800000

    .line 799
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 800
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 802
    :cond_15
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getCurrentPage()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getPageAt(I)Landroid/view/View;

    move-result-object v0

    .line 803
    .local v0, "currentPage":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    move-result v1

    cmpg-float v1, v1, v5

    if-ltz v1, :cond_2d

    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    move-result v1

    cmpg-float v1, v1, v5

    if-gez v1, :cond_6d

    .line 804
    :cond_2d
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    .line 805
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/animation/Animator;

    const-string v3, "scaleX"

    new-array v4, v7, [F

    aput v5, v4, v6

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v6

    const-string v3, "scaleY"

    new-array v4, v7, [F

    aput v5, v4, v6

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    aput-object v3, v2, v7

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 808
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mBouncerZoomInOutDuration:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 809
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v3, 0x3fc00000

    invoke-direct {v2, v3}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v1, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 810
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 812
    :cond_6d
    instance-of v1, v0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    if-eqz v1, :cond_76

    .line 813
    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    .end local v0    # "currentPage":Landroid/view/View;
    invoke-virtual {v0, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->onBouncerShowing(Z)V

    .line 815
    :cond_76
    return-void
.end method

.method zoomOutToBouncer()V
    .registers 10

    .prologue
    const/high16 v4, 0x3f800000

    const/4 v3, 0x0

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 819
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    if-eqz v2, :cond_16

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_16

    .line 820
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 822
    :cond_16
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getCurrentPage()I

    move-result v0

    .line 823
    .local v0, "curPage":I
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    .line 824
    .local v1, "currentPage":Landroid/view/View;
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->shouldSetTopAlignedPivotForWidget(I)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 825
    invoke-virtual {v1, v3}, Landroid/view/View;->setPivotY(F)V

    .line 828
    invoke-virtual {v1, v3}, Landroid/view/View;->setPivotX(F)V

    .line 829
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotX(F)V

    .line 831
    :cond_34
    invoke-virtual {v1}, Landroid/view/View;->getScaleX()F

    move-result v2

    cmpg-float v2, v2, v4

    if-ltz v2, :cond_88

    invoke-virtual {v1}, Landroid/view/View;->getScaleY()F

    move-result v2

    cmpg-float v2, v2, v4

    if-ltz v2, :cond_88

    .line 832
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    .line 833
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    const-string v4, "scaleX"

    new-array v5, v7, [F

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->BOUNCER_SCALE_FACTOR:F

    aput v6, v5, v8

    invoke-static {v1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v8

    const-string v4, "scaleY"

    new-array v5, v7, [F

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->BOUNCER_SCALE_FACTOR:F

    aput v6, v5, v8

    invoke-static {v1, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 836
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetPager;->mBouncerZoomInOutDuration:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 837
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v4, 0x3fc00000

    invoke-direct {v3, v4}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 838
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/PagedView;->mZoomInOutAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    .line 840
    :cond_88
    instance-of v2, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    if-eqz v2, :cond_91

    .line 841
    check-cast v1, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;

    .end local v1    # "currentPage":Landroid/view/View;
    invoke-virtual {v1, v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardWidgetFrame;->onBouncerShowing(Z)V

    .line 843
    :cond_91
    return-void
.end method
