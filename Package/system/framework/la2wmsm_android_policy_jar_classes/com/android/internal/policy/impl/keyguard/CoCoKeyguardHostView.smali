.class public Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;
.source "CoCoKeyguardHostView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView$2;,
        Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView$OnDismissAction;
    }
.end annotation


# static fields
.field static final APPWIDGET_HOST_ID:I = 0x4b455947

.field public static DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "coco"

.field private static final TAG:Ljava/lang/String; = "CoCoKeyguardHostView"

.field public static mZorderViewAgent:Lcom/android/internal/policy/impl/keyguard/ViewAgent;


# instance fields
.field private final MAX_WIDGETS:I

.field private mCameraDisabled:Z

.field private mCoCoLockerCallback:Landroid/os/Handler$Callback;

.field private mContext:Landroid/content/Context;

.field private mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

.field private mDisabledFeatures:I

.field protected mDismissAction:Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView$OnDismissAction;

.field private mEnableFallback:Z

.field protected mFailedAttempts:I

.field private mIsVerifyUnlockOnly:Z

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockView:Landroid/view/View;

.field private mSafeModeEnabled:Z

.field private mScreenOn:Z

.field private mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

.field protected mShowSecurityWhenReturn:Z

.field private mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

.field private mViewAgent:Lcom/android/internal/policy/impl/keyguard/ViewAgent;

.field private mViewManager:Landroid/view/ViewManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 74
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 146
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 147
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mContext:Landroid/content/Context;

    .line 148
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 151
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->MAX_WIDGETS:I

    .line 84
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Invalid:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mCurrentSecuritySelection:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    .line 113
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mCoCoLockerCallback:Landroid/os/Handler$Callback;

    .line 152
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mContext:Landroid/content/Context;

    .line 153
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 154
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-direct {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    .line 155
    invoke-static {p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mUpdateMonitor:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    .line 156
    return-void
.end method

.method private isSecure()Z
    .registers 5

    .prologue
    .line 330
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 331
    .local v0, "mode":Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView$2;->$SwitchMap$com$android$internal$policy$impl$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_3c

    .line 344
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown security mode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 333
    :pswitch_2a
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v1

    .line 342
    :goto_30
    return v1

    .line 336
    :pswitch_31
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v1

    goto :goto_30

    .line 340
    :pswitch_38
    const/4 v1, 0x1

    goto :goto_30

    .line 342
    :pswitch_3a
    const/4 v1, 0x0

    goto :goto_30

    .line 331
    :pswitch_data_3c
    .packed-switch 0x1
        :pswitch_2a
        :pswitch_31
        :pswitch_31
        :pswitch_38
        :pswitch_38
        :pswitch_38
        :pswitch_3a
    .end packed-switch
.end method


# virtual methods
.method public cleanUp()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 411
    const-string v0, "coco"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mViewAgent:Lcom/android/internal/policy/impl/keyguard/ViewAgent;

    if-eqz v0, :cond_25

    .line 413
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mViewAgent:Lcom/android/internal/policy/impl/keyguard/ViewAgent;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/ViewAgent;->onPause()V

    .line 414
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mLockView:Landroid/view/View;

    if-eqz v0, :cond_1c

    .line 415
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mLockView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->removeView(Landroid/view/View;)V

    .line 416
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mLockView:Landroid/view/View;

    .line 419
    :cond_1c
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mViewAgent:Lcom/android/internal/policy/impl/keyguard/ViewAgent;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/ViewAgent;->onDestroy()V

    .line 420
    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mViewAgent:Lcom/android/internal/policy/impl/keyguard/ViewAgent;

    .line 422
    sput-object v2, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mZorderViewAgent:Lcom/android/internal/policy/impl/keyguard/ViewAgent;

    .line 425
    :cond_25
    return-void
.end method

.method public dismiss()V
    .registers 1

    .prologue
    .line 211
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 237
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 238
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v0, :cond_13

    .line 239
    const-string v0, "coco"

    const-string v1, "keyguardDoneDrawing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->keyguardDoneDrawing()V

    .line 242
    :cond_13
    return-void
.end method

.method public getUserActivityTimeout()J
    .registers 3

    .prologue
    .line 432
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public goToUserSwitcher()V
    .registers 1

    .prologue
    .line 207
    return-void
.end method

.method public goToWidget(I)V
    .registers 2
    .param p1, "appWidgetId"    # I

    .prologue
    .line 191
    return-void
.end method

.method public handleBackKey()Z
    .registers 2

    .prologue
    .line 181
    const/4 v0, 0x0

    return v0
.end method

.method public handleMenuKey()Z
    .registers 2

    .prologue
    .line 186
    const/4 v0, 0x0

    return v0
.end method

.method public initCoCoHostView(Lcom/android/internal/policy/impl/keyguard/ViewAgent;)V
    .registers 5
    .param p1, "viewAgent"    # Lcom/android/internal/policy/impl/keyguard/ViewAgent;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mViewAgent:Lcom/android/internal/policy/impl/keyguard/ViewAgent;

    .line 161
    sput-object p1, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mZorderViewAgent:Lcom/android/internal/policy/impl/keyguard/ViewAgent;

    .line 162
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mViewAgent:Lcom/android/internal/policy/impl/keyguard/ViewAgent;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mCoCoLockerCallback:Landroid/os/Handler$Callback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/ViewAgent;->setKernelCallback(Landroid/os/Handler$Callback;)V

    .line 163
    const-string v0, "cocoTest"

    const-string v1, "before onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mViewAgent:Lcom/android/internal/policy/impl/keyguard/ViewAgent;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/ViewAgent;->onCreate()V

    .line 165
    const-string v0, "cocoTest"

    const-string v1, "after onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mViewAgent:Lcom/android/internal/policy/impl/keyguard/ViewAgent;

    const-string v1, "ViewWrap.onCreate finish"

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/ViewAgent;->logApp(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mLockView:Landroid/view/View;

    if-eqz v0, :cond_31

    .line 169
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mLockView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->removeView(Landroid/view/View;)V

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mLockView:Landroid/view/View;

    .line 173
    :cond_31
    const-string v0, "cocoTest"

    const-string v1, "before getView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mViewAgent:Lcom/android/internal/policy/impl/keyguard/ViewAgent;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/ViewAgent;->getView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mLockView:Landroid/view/View;

    .line 175
    const-string v0, "cocoTest"

    const-string v1, "after getView"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const-string v0, "coco"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLockView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mLockView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mLockView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->addView(Landroid/view/View;)V

    .line 178
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 1

    .prologue
    .line 257
    invoke-super {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->onAttachedToWindow()V

    .line 260
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 1

    .prologue
    .line 264
    invoke-super {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->onDetachedFromWindow()V

    .line 267
    return-void
.end method

.method protected onFinishInflate()V
    .registers 1

    .prologue
    .line 251
    return-void
.end method

.method public onScreenTurnedOff()V
    .registers 3

    .prologue
    .line 281
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mScreenOn:Z

    .line 283
    const-string v0, "coco"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mViewAgent:Lcom/android/internal/policy/impl/keyguard/ViewAgent;

    if-eqz v0, :cond_13

    .line 285
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mViewAgent:Lcom/android/internal/policy/impl/keyguard/ViewAgent;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/ViewAgent;->onPause()V

    .line 287
    :cond_13
    return-void
.end method

.method public onScreenTurnedOn()V
    .registers 4

    .prologue
    .line 291
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->DEBUG:Z

    if-eqz v0, :cond_24

    const-string v0, "CoCoKeyguardHostView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "screen on, instance "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_24
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mScreenOn:Z

    .line 306
    const-string v0, "coco"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mViewAgent:Lcom/android/internal/policy/impl/keyguard/ViewAgent;

    if-eqz v0, :cond_37

    .line 308
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mViewAgent:Lcom/android/internal/policy/impl/keyguard/ViewAgent;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/ViewAgent;->onResume()V

    .line 310
    :cond_37
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 232
    const/4 v0, 0x1

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .registers 2
    .param p1, "hasWindowFocus"    # Z

    .prologue
    .line 386
    invoke-super {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->onWindowFocusChanged(Z)V

    .line 388
    return-void
.end method

.method public reset()V
    .registers 1

    .prologue
    .line 275
    return-void
.end method

.method public show()V
    .registers 3

    .prologue
    .line 315
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "CoCoKeyguardHostView"

    const-string v1, "show()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    :cond_b
    const-string v0, "coco"

    const-string v1, "CoCoKeyguardHostView show is called!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    return-void
.end method

.method public showAssistant()V
    .registers 1

    .prologue
    .line 227
    return-void
.end method

.method public showNextSecurityScreenIfPresent()Z
    .registers 3

    .prologue
    .line 194
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 196
    .local v0, "securityMode":Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getAlternateFor(Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;)Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 197
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v1, v0, :cond_12

    .line 198
    const/4 v1, 0x0

    .line 201
    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x1

    goto :goto_11
.end method

.method public verifyUnlock()V
    .registers 4

    .prologue
    .line 363
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 364
    .local v0, "securityMode":Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->None:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-ne v0, v1, :cond_f

    .line 365
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v1, :cond_e

    .line 380
    :cond_e
    :goto_e
    return-void

    .line 368
    :cond_f
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Pattern:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_26

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->PIN:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_26

    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->Password:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    if-eq v0, v1, :cond_26

    .line 372
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v1, :cond_e

    .line 373
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->keyguardDone(Z)V

    goto :goto_e

    .line 377
    :cond_26
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->mIsVerifyUnlockOnly:Z

    goto :goto_e
.end method

.method public wakeWhenReadyTq(I)V
    .registers 4
    .param p1, "keyCode"    # I

    .prologue
    .line 349
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "CoCoKeyguardHostView"

    const-string v1, "onWakeKey"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    :cond_b
    const/16 v0, 0x52

    if-ne p1, v0, :cond_2a

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->isSecure()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 351
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->DEBUG:Z

    if-eqz v0, :cond_20

    const-string v0, "CoCoKeyguardHostView"

    const-string v1, "switching screens to unlock screen because wake key was MENU"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    :cond_20
    :goto_20
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v0, :cond_29

    .line 357
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->wakeUp()V

    .line 359
    :cond_29
    return-void

    .line 354
    :cond_2a
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->DEBUG:Z

    if-eqz v0, :cond_20

    const-string v0, "CoCoKeyguardHostView"

    const-string v1, "poking wake lock immediately"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_20
.end method
