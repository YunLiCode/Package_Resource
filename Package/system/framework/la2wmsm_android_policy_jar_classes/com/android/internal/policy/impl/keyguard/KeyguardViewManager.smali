.class public Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;
.super Ljava/lang/Object;
.source "KeyguardViewManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$3;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost;,
        Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field static final DIGIT_PRESS_WAKE_MILLIS:I = 0x1388

.field public static final IS_SWITCHING_USER:Ljava/lang/String; = "is_switching_user"

.field private static TAG:Ljava/lang/String;

.field public static USE_UPPER_CASE:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCreateOrientation:I

.field private mKeyguardHost:Landroid/widget/FrameLayout;

.field private mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mNeedsInput:Z

.field private mPanelOrientation:I

.field private mScreenOn:Z

.field private mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

.field mStateContainer:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field private final mViewManager:Landroid/view/ViewManager;

.field private final mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

.field private mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 62
    const-string v0, "KeyguardViewManager"

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    .line 63
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->USE_UPPER_CASE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewManager;Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "viewManager"    # Landroid/view/ViewManager;
    .param p3, "callback"    # Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;
    .param p4, "lockPatternUtils"    # Lcom/android/internal/widget/LockPatternUtils;

    .prologue
    const/4 v1, 0x0

    .line 164
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mNeedsInput:Z

    .line 79
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mScreenOn:Z

    .line 83
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mPanelOrientation:I

    .line 263
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mStateContainer:Landroid/util/SparseArray;

    .line 165
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    .line 166
    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    .line 167
    iput-object p3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    .line 168
    iput-object p4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 170
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-direct {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    .line 172
    const-string v0, "persist.panel.orientation"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    div-int/lit8 v0, v0, 0x5a

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mPanelOrientation:I

    .line 174
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    .prologue
    .line 60
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mCreateOrientation:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;
    .param p1, "x1"    # I

    .prologue
    .line 60
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mCreateOrientation:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;)Landroid/widget/FrameLayout;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;)Z
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    .prologue
    .line 60
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->shouldEnableScreenRotation()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;ZZLandroid/os/Bundle;)V
    .registers 4
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z
    .param p3, "x3"    # Landroid/os/Bundle;

    .prologue
    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->maybeCreateKeyguardLocked(ZZLandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;)Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    return-object v0
.end method

.method private getCoCoHostView()Landroid/view/View;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 110
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->loadCooeeCurrentLock()Z

    .line 111
    const-string v2, "coco"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCoCoHostView,mKeyguardView:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    if-eqz v2, :cond_30

    .line 113
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->cleanUp()V

    .line 114
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 115
    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    .line 118
    :cond_30
    const-string v2, "coco"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "package_name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/policy/impl/keyguard/ViewAgent;->LOCK_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\nclass_name:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/internal/policy/impl/keyguard/ViewAgent;->LOCK_WRAP_CLASS_NAME:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/android/internal/policy/impl/keyguard/ViewAgent;->LOCK_PACKAGE_NAME:Ljava/lang/String;

    sget-object v4, Lcom/android/internal/policy/impl/keyguard/ViewAgent;->LOCK_WRAP_CLASS_NAME:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/android/internal/policy/impl/keyguard/ViewAgent;->createInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/policy/impl/keyguard/ViewAgent;

    move-result-object v1

    .line 121
    .local v1, "mViewAgent":Lcom/android/internal/policy/impl/keyguard/ViewAgent;
    if-eqz v1, :cond_72

    .line 122
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;-><init>(Landroid/content/Context;)V

    .line 123
    .local v0, "hostView":Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->setViewMediatorCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;)V

    .line 124
    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;->initCoCoHostView(Lcom/android/internal/policy/impl/keyguard/ViewAgent;)V

    .line 128
    .end local v0    # "hostView":Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;
    :goto_71
    return-object v0

    .line 127
    :cond_72
    const-string v2, "coco"

    const-string v3, "ViewAgent.createInstance error"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_71
.end method

.method private inflateKeyguardView(Landroid/os/Bundle;)V
    .registers 12
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    const v9, 0x10202c2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 343
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v9}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 344
    .local v2, "v":Landroid/view/View;
    if-eqz v2, :cond_12

    .line 345
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    invoke-virtual {v5, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 351
    :cond_12
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    iput v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mCreateOrientation:I

    .line 353
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 354
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v5, 0x1090059

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5, v8, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 355
    .local v3, "view":Landroid/view/View;
    invoke-virtual {v3, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    iput-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    .line 356
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v5, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->setLockPatternUtils(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 357
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-virtual {v5, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->setViewMediatorCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;)V

    .line 358
    iget-object v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    if-eqz p1, :cond_7f

    const-string v5, "is_switching_user"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7f

    move v5, v6

    :goto_52
    invoke-virtual {v8, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->initializeSwitchingUserState(Z)V

    .line 364
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v5, :cond_6f

    .line 365
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    const v6, 0x10202d0

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/KeyguardPasswordView;

    .line 368
    .local v1, "kpv":Lcom/android/internal/policy/impl/keyguard/KeyguardPasswordView;
    if-eqz v1, :cond_6f

    .line 369
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardPasswordView;->needsInput()Z

    move-result v6

    invoke-interface {v5, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->setNeedsInput(Z)V

    .line 373
    .end local v1    # "kpv":Lcom/android/internal/policy/impl/keyguard/KeyguardPasswordView;
    :cond_6f
    if-eqz p1, :cond_7e

    .line 374
    const-string v5, "showappwidget"

    invoke-virtual {p1, v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 376
    .local v4, "widgetToShow":I
    if-eqz v4, :cond_7e

    .line 377
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-virtual {v5, v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->goToWidget(I)V

    .line 380
    .end local v4    # "widgetToShow":I
    :cond_7e
    return-void

    :cond_7f
    move v5, v7

    .line 358
    goto :goto_52
.end method

.method private isSecure()Z
    .registers 5

    .prologue
    const/4 v1, 0x1

    .line 132
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mSecurityModel:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel;->getSecurityMode()Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v0

    .line 133
    .local v0, "mode":Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;
    sget-object v2, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$3;->$SwitchMap$com$android$internal$policy$impl$keyguard$KeyguardSecurityModel$SecurityMode:[I

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityModel$SecurityMode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_24

    .line 148
    :goto_12
    :pswitch_12
    return v1

    .line 135
    :pswitch_13
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled()Z

    move-result v1

    goto :goto_12

    .line 138
    :pswitch_1a
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPasswordEnabled()Z

    move-result v1

    goto :goto_12

    .line 144
    :pswitch_21
    const/4 v1, 0x0

    goto :goto_12

    .line 133
    nop

    :pswitch_data_24
    .packed-switch 0x1
        :pswitch_13
        :pswitch_1a
        :pswitch_1a
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_21
    .end packed-switch
.end method

.method private loadCooeeCurrentLock()Z
    .registers 9

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 89
    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "cooee_current_lock"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "currentLock":Ljava/lang/String;
    if-nez v0, :cond_18

    .line 91
    const-string v4, "coco"

    const-string v5, "currentLock is null"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_17
    :goto_17
    return v3

    .line 95
    :cond_18
    const-string v5, "coco"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "currentLock:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    const-string v5, ","

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 97
    .local v1, "fields":[Ljava/lang/String;
    array-length v2, v1

    .line 99
    .local v2, "length":I
    const/4 v5, 0x3

    if-lt v2, v5, :cond_17

    .line 102
    aget-object v3, v1, v4

    sput-object v3, Lcom/android/internal/policy/impl/keyguard/ViewAgent;->LOCK_PACKAGE_NAME:Ljava/lang/String;

    .line 103
    const/4 v3, 0x2

    aget-object v3, v1, v3

    sput-object v3, Lcom/android/internal/policy/impl/keyguard/ViewAgent;->LOCK_WRAP_CLASS_NAME:Ljava/lang/String;

    move v3, v4

    .line 104
    goto :goto_17
.end method

.method private maybeCreateKeyguardLocked(ZZLandroid/os/Bundle;)V
    .registers 14
    .param p1, "enableScreenRotation"    # Z
    .param p2, "force"    # Z
    .param p3, "options"    # Landroid/os/Bundle;

    .prologue
    const/high16 v9, 0x1000000

    const/4 v8, 0x2

    const/4 v1, -0x1

    .line 267
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    instance-of v6, v2, Landroid/app/Activity;

    .line 269
    .local v6, "isActivity":Z
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    if-eqz v2, :cond_13

    .line 270
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mStateContainer:Landroid/util/SparseArray;

    invoke-virtual {v2, v5}, Landroid/widget/FrameLayout;->saveHierarchyState(Landroid/util/SparseArray;)V

    .line 273
    :cond_13
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    if-nez v2, :cond_7e

    .line 276
    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-direct {v2, p0, v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ViewManagerHost;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    .line 278
    const v4, 0x110900

    .line 283
    .local v4, "flags":I
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mNeedsInput:Z

    if-nez v2, :cond_2a

    .line 284
    const/high16 v2, 0x20000

    or-int/2addr v4, v2

    .line 286
    :cond_2a
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v2

    if-eqz v2, :cond_31

    .line 287
    or-int/2addr v4, v9

    .line 290
    :cond_31
    const/4 v7, -0x1

    .line 291
    .local v7, "stretch":I
    if-eqz v6, :cond_e1

    move v3, v8

    .line 293
    .local v3, "type":I
    :goto_35
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v5, -0x3

    move v2, v1

    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 295
    .local v0, "lp":Landroid/view/WindowManager$LayoutParams;
    const/16 v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 296
    const v1, 0x10301e6

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 297
    if-eqz p1, :cond_e5

    :goto_47
    iput v8, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 300
    invoke-static {}, Landroid/app/ActivityManager;->isHighEndGfx()Z

    move-result v1

    if-eqz v1, :cond_5a

    .line 301
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/2addr v1, v9

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 302
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 305
    :cond_5a
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x8

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 306
    if-eqz v6, :cond_68

    .line 307
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x10

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 309
    :cond_68
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    or-int/lit8 v1, v1, 0x4

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 310
    if-eqz v6, :cond_e8

    const-string v1, "KeyguardMock"

    :goto_72
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 311
    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 312
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    invoke-interface {v1, v2, v0}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 316
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v3    # "type":I
    .end local v4    # "flags":I
    .end local v7    # "stretch":I
    :cond_7e
    if-eqz p2, :cond_93

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    if-eqz v1, :cond_93

    .line 317
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->cleanUp()V

    .line 318
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 319
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    .line 324
    :cond_93
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->isSecure()Z

    move-result v1

    if-nez v1, :cond_eb

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->getCoCoHostView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    if-eqz v1, :cond_eb

    .line 325
    const-string v1, "coco"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mKeyguardView:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_cd

    .line 327
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 328
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->requestFocus()Z

    .line 336
    :cond_cd
    :goto_cd
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->updateUserActivityTimeoutInWindowLayoutParams()V

    .line 337
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v5}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 339
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mStateContainer:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 340
    return-void

    .line 291
    .restart local v4    # "flags":I
    .restart local v7    # "stretch":I
    :cond_e1
    const/16 v3, 0x7d4

    goto/16 :goto_35

    .line 297
    .restart local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .restart local v3    # "type":I
    :cond_e5
    const/4 v8, 0x5

    goto/16 :goto_47

    .line 310
    :cond_e8
    const-string v1, "Keyguard"

    goto :goto_72

    .line 331
    .end local v0    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v3    # "type":I
    .end local v4    # "flags":I
    .end local v7    # "stretch":I
    :cond_eb
    if-nez p2, :cond_f1

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    if-nez v1, :cond_cd

    .line 332
    :cond_f1
    invoke-direct {p0, p3}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->inflateKeyguardView(Landroid/os/Bundle;)V

    .line 333
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->requestFocus()Z

    goto :goto_cd
.end method

.method private maybeEnableScreenRotation(Z)V
    .registers 5
    .param p1, "enableScreenRotation"    # Z

    .prologue
    .line 403
    if-eqz p1, :cond_11

    .line 405
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    .line 410
    :goto_7
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 411
    return-void

    .line 408
    :cond_11
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    goto :goto_7
.end method

.method private shouldEnableScreenRotation()Z
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 208
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 209
    .local v0, "res":Landroid/content/res/Resources;
    const-string v2, "lockscreen.rot_override"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_18

    const v2, 0x1110026

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_19

    :cond_18
    const/4 v1, 0x1

    :cond_19
    return v1
.end method

.method private updateUserActivityTimeoutInWindowLayoutParams()V
    .registers 6

    .prologue
    .line 389
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    if-eqz v2, :cond_15

    .line 390
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->getUserActivityTimeout()J

    move-result-wide v0

    .line 391
    .local v0, "timeout":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_15

    .line 392
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput-wide v0, v2, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    .line 399
    .end local v0    # "timeout":J
    :goto_14
    return-void

    .line 398
    :cond_15
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-wide/16 v3, 0x2710

    iput-wide v3, v2, Landroid/view/WindowManager$LayoutParams;->userActivityTimeout:J

    goto :goto_14
.end method


# virtual methods
.method public declared-synchronized dismiss()V
    .registers 2

    .prologue
    .line 546
    monitor-enter p0

    :try_start_1
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mScreenOn:Z

    if-eqz v0, :cond_a

    .line 547
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->dismiss()V
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_c

    .line 549
    :cond_a
    monitor-exit p0

    return-void

    .line 546
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized hide()V
    .registers 6

    .prologue
    .line 516
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    if-eqz v1, :cond_26

    .line 517
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 522
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mStateContainer:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 526
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    if-eqz v1, :cond_26

    .line 527
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    .line 528
    .local v0, "lastView":Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    .line 529
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$2;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_28

    .line 540
    .end local v0    # "lastView":Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;
    :cond_26
    monitor-exit p0

    return-void

    .line 516
    :catchall_28
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized isShowing()Z
    .registers 2

    .prologue
    .line 555
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I
    :try_end_a
    .catchall {:try_start_1 .. :try_end_a} :catchall_12

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x1

    :goto_e
    monitor-exit p0

    return v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_e

    :catchall_12
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onScreenTurnedOff()V
    .registers 2

    .prologue
    .line 445
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mScreenOn:Z

    .line 446
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    if-eqz v0, :cond_d

    .line 447
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->onScreenTurnedOff()V
    :try_end_d
    .catchall {:try_start_2 .. :try_end_d} :catchall_f

    .line 449
    :cond_d
    monitor-exit p0

    return-void

    .line 445
    :catchall_f
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onScreenTurnedOn(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;)V
    .registers 4
    .param p1, "showListener"    # Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;

    .prologue
    .line 454
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mScreenOn:Z

    .line 455
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    if-eqz v0, :cond_2b

    .line 456
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->onScreenTurnedOn()V

    .line 460
    if-eqz p1, :cond_21

    .line 461
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_23

    .line 464
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    new-instance v1, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$1;

    invoke-direct {v1, p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z
    :try_end_21
    .catchall {:try_start_2 .. :try_end_21} :catchall_28

    .line 481
    :cond_21
    :goto_21
    monitor-exit p0

    return-void

    .line 475
    :cond_23
    const/4 v0, 0x0

    :try_start_24
    invoke-interface {p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;->onShown(Landroid/os/IBinder;)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_28

    goto :goto_21

    .line 454
    :catchall_28
    move-exception v0

    monitor-exit p0

    throw v0

    .line 478
    :cond_2b
    if-eqz p1, :cond_21

    .line 479
    const/4 v0, 0x0

    :try_start_2e
    invoke-interface {p1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;->onShown(Landroid/os/IBinder;)V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_28

    goto :goto_21
.end method

.method public declared-synchronized reset(Landroid/os/Bundle;)V
    .registers 4
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    .line 440
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->shouldEnableScreenRotation()Z

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->maybeCreateKeyguardLocked(ZZLandroid/os/Bundle;)V
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_b

    .line 441
    monitor-exit p0

    return-void

    .line 440
    :catchall_b
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setNeedsInput(Z)V
    .registers 6
    .param p1, "needsInput"    # Z

    .prologue
    .line 414
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mNeedsInput:Z

    .line 415
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v1, :cond_1b

    .line 416
    if-eqz p1, :cond_1c

    .line 417
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v3, -0x20001

    and-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 425
    :goto_12
    :try_start_12
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_1b} :catch_26

    .line 431
    :cond_1b
    :goto_1b
    return-void

    .line 420
    :cond_1c
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v3, 0x20000

    or-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_12

    .line 426
    :catch_26
    move-exception v0

    .line 428
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v1, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t update input method on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " window not attached"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b
.end method

.method public declared-synchronized show(Landroid/os/Bundle;)V
    .registers 7
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    .line 183
    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->shouldEnableScreenRotation()Z

    move-result v0

    .line 184
    .local v0, "enableScreenRotation":Z
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mPanelOrientation:I

    if-eqz v2, :cond_a

    .line 187
    const/4 v0, 0x0

    .line 190
    :cond_a
    const/4 v2, 0x0

    invoke-direct {p0, v0, v2, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->maybeCreateKeyguardLocked(ZZLandroid/os/Bundle;)V

    .line 191
    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->maybeEnableScreenRotation(Z)V

    .line 197
    const/high16 v1, 0x200000

    .line 199
    .local v1, "visFlags":I
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    const/high16 v3, 0x200000

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setSystemUiVisibility(I)V

    .line 201
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v3, v4}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 203
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->show()V

    .line 204
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->requestFocus()Z
    :try_end_33
    .catchall {:try_start_1 .. :try_end_33} :catchall_35

    .line 205
    monitor-exit p0

    return-void

    .line 183
    .end local v0    # "enableScreenRotation":Z
    .end local v1    # "visFlags":I
    :catchall_35
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public showAssistant()V
    .registers 2

    .prologue
    .line 559
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    if-eqz v0, :cond_9

    .line 560
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->showAssistant()V

    .line 562
    :cond_9
    return-void
.end method

.method public updateUserActivityTimeout()V
    .registers 4

    .prologue
    .line 383
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->updateUserActivityTimeoutInWindowLayoutParams()V

    .line 384
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mViewManager:Landroid/view/ViewManager;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardHost:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 385
    return-void
.end method

.method public declared-synchronized verifyUnlock()V
    .registers 2

    .prologue
    .line 485
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_2
    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->show(Landroid/os/Bundle;)V

    .line 486
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->verifyUnlock()V
    :try_end_a
    .catchall {:try_start_2 .. :try_end_a} :catchall_c

    .line 487
    monitor-exit p0

    return-void

    .line 485
    :catchall_c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public wakeWhenReadyTq(I)Z
    .registers 4
    .param p1, "keyCode"    # I

    .prologue
    .line 502
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    if-eqz v0, :cond_b

    .line 503
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->mKeyguardView:Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->wakeWhenReadyTq(I)V

    .line 504
    const/4 v0, 0x1

    .line 507
    :goto_a
    return v0

    .line 506
    :cond_b
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->TAG:Ljava/lang/String;

    const-string v1, "mKeyguardView is null in wakeWhenReadyTq"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    const/4 v0, 0x0

    goto :goto_a
.end method
