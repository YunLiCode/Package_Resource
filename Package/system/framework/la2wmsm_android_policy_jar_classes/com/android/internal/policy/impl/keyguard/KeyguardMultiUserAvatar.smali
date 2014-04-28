.class Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;
.super Landroid/widget/FrameLayout;
.source "KeyguardMultiUserAvatar.java"


# static fields
.field private static final ACTIVE_ALPHA:F = 1.0f

.field private static final ACTIVE_SCALE:F = 1.5f

.field private static final ACTIVE_TEXT_ALPHA:F = 0.0f

.field private static final DEBUG:Z

.field private static final INACTIVE_ALPHA:F = 1.0f

.field private static final INACTIVE_TEXT_ALPHA:F = 0.5f

.field private static final SWITCH_ANIMATION_DURATION:I = 0x96

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActive:Z

.field private final mActiveAlpha:F

.field private final mActiveScale:F

.field private final mActiveTextAlpha:F

.field private final mFrameColor:I

.field private final mFrameShadowColor:I

.field private mFramed:Lcom/android/internal/policy/impl/keyguard/KeyguardCircleFramedDrawable;

.field private final mHighlightColor:I

.field private final mIconSize:F

.field private final mInactiveAlpha:F

.field private final mInactiveTextAlpha:F

.field private mInit:Z

.field private mPressLock:Z

.field private final mShadowRadius:F

.field private final mStroke:F

.field private final mTextColor:I

.field private mTouched:Z

.field private mUserImage:Landroid/widget/ImageView;

.field private mUserInfo:Landroid/content/pm/UserInfo;

.field private mUserName:Landroid/widget/TextView;

.field private mUserSelector:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    const-class v0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->TAG:Ljava/lang/String;

    .line 41
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardHostView;->DEBUG:Z

    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, 0x1

    const/high16 v2, 0x3f800000

    .line 92
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mInit:Z

    .line 94
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 95
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x1060069

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mTextColor:I

    .line 96
    const v1, 0x1050072

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mIconSize:F

    .line 97
    const v1, 0x1050070

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mStroke:F

    .line 98
    const v1, 0x1050071

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mShadowRadius:F

    .line 99
    const v1, 0x1060067

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mFrameColor:I

    .line 100
    const v1, 0x1060068

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mFrameShadowColor:I

    .line 101
    const v1, 0x106006a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mHighlightColor:I

    .line 102
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mActiveTextAlpha:F

    .line 103
    const/high16 v1, 0x3f000000

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mInactiveTextAlpha:F

    .line 104
    const/high16 v1, 0x3fc00000

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mActiveScale:F

    .line 105
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mActiveAlpha:F

    .line 106
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mInactiveAlpha:F

    .line 108
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mTouched:Z

    .line 110
    const/4 v1, 0x0

    invoke-virtual {p0, v3, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->setLayerType(ILandroid/graphics/Paint;)V

    .line 111
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;)Lcom/android/internal/policy/impl/keyguard/KeyguardCircleFramedDrawable;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mFramed:Lcom/android/internal/policy/impl/keyguard/KeyguardCircleFramedDrawable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;)Landroid/widget/ImageView;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mUserImage:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mUserName:Landroid/widget/TextView;

    return-object v0
.end method

.method public static fromXml(ILandroid/content/Context;Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;Landroid/content/pm/UserInfo;)Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;
    .registers 7
    .param p0, "resId"    # I
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userSelector"    # Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;
    .param p3, "info"    # Landroid/content/pm/UserInfo;

    .prologue
    .line 76
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;

    .line 79
    .local v0, "icon":Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;
    invoke-virtual {v0, p3, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->init(Landroid/content/pm/UserInfo;Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;)V

    .line 80
    return-object v0
.end method


# virtual methods
.method public getUserInfo()Landroid/content/pm/UserInfo;
    .registers 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mUserInfo:Landroid/content/pm/UserInfo;

    return-object v0
.end method

.method public init(Landroid/content/pm/UserInfo;Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;)V
    .registers 12
    .param p1, "user"    # Landroid/content/pm/UserInfo;
    .param p2, "userSelector"    # Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mUserInfo:Landroid/content/pm/UserInfo;

    .line 122
    iput-object p2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mUserSelector:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;

    .line 124
    const v0, 0x10202cb

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mUserImage:Landroid/widget/ImageView;

    .line 125
    const v0, 0x10202cc

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mUserName:Landroid/widget/TextView;

    .line 127
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->getAvatarCache()Lcom/android/internal/policy/impl/keyguard/MultiUserAvatarCache;

    move-result-object v0

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v2}, Lcom/android/internal/policy/impl/keyguard/MultiUserAvatarCache;->get(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardCircleFramedDrawable;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mFramed:Lcom/android/internal/policy/impl/keyguard/KeyguardCircleFramedDrawable;

    .line 131
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mFramed:Lcom/android/internal/policy/impl/keyguard/KeyguardCircleFramedDrawable;

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mFramed:Lcom/android/internal/policy/impl/keyguard/KeyguardCircleFramedDrawable;

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mIconSize:F

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mFrameColor:I

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mStroke:F

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mFrameShadowColor:I

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mShadowRadius:F

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mHighlightColor:I

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardCircleFramedDrawable;->verifyParams(FIFIFI)Z

    move-result v0

    if-nez v0, :cond_79

    .line 134
    :cond_40
    const/4 v1, 0x0

    .line 136
    .local v1, "icon":Landroid/graphics/Bitmap;
    :try_start_41
    iget-object v0, p1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->rewriteIconPath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_41 .. :try_end_4a} :catch_97

    move-result-object v1

    .line 141
    :cond_4b
    :goto_4b
    if-nez v1, :cond_5a

    .line 142
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10802ce

    invoke-static {v0, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 146
    :cond_5a
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardCircleFramedDrawable;

    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mIconSize:F

    float-to-int v2, v2

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mFrameColor:I

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mStroke:F

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mFrameShadowColor:I

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mShadowRadius:F

    iget v7, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mHighlightColor:I

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardCircleFramedDrawable;-><init>(Landroid/graphics/Bitmap;IIFIFI)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mFramed:Lcom/android/internal/policy/impl/keyguard/KeyguardCircleFramedDrawable;

    .line 148
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->getAvatarCache()Lcom/android/internal/policy/impl/keyguard/MultiUserAvatarCache;

    move-result-object v0

    iget v2, p1, Landroid/content/pm/UserInfo;->id:I

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mFramed:Lcom/android/internal/policy/impl/keyguard/KeyguardCircleFramedDrawable;

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/MultiUserAvatarCache;->put(ILandroid/graphics/drawable/Drawable;)V

    .line 151
    .end local v1    # "icon":Landroid/graphics/Bitmap;
    :cond_79
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mFramed:Lcom/android/internal/policy/impl/keyguard/KeyguardCircleFramedDrawable;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardCircleFramedDrawable;->reset()V

    .line 153
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mUserImage:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mFramed:Lcom/android/internal/policy/impl/keyguard/KeyguardCircleFramedDrawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 154
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mUserName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mUserInfo:Landroid/content/pm/UserInfo;

    iget-object v2, v2, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mUserSelector:Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserSelectorView;

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mInit:Z

    .line 157
    return-void

    .line 137
    .restart local v1    # "icon":Landroid/graphics/Bitmap;
    :catch_97
    move-exception v8

    .line 138
    .local v8, "e":Ljava/lang/Exception;
    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->DEBUG:Z

    if-eqz v0, :cond_4b

    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failed to open profile icon "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4b
.end method

.method public lockPressed(Z)V
    .registers 2
    .param p1, "pressed"    # Z

    .prologue
    .line 240
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mPressLock:Z

    .line 241
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->setPressed(Z)V

    .line 242
    return-void
.end method

.method protected rewriteIconPath(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 114
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "internal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 115
    const-string v0, "system"

    const-string v1, "data"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 117
    .end local p1    # "path":Ljava/lang/String;
    :cond_18
    return-object p1
.end method

.method public setActive(ZZLjava/lang/Runnable;)V
    .registers 11
    .param p1, "active"    # Z
    .param p2, "animate"    # Z
    .param p3, "onComplete"    # Ljava/lang/Runnable;

    .prologue
    .line 160
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mActive:Z

    if-ne v1, p1, :cond_8

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mInit:Z

    if-eqz v1, :cond_46

    .line 161
    :cond_8
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mActive:Z

    .line 163
    if-eqz p1, :cond_4e

    .line 164
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardLinearLayout;

    .line 165
    .local v0, "parent":Lcom/android/internal/policy/impl/keyguard/KeyguardLinearLayout;
    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardLinearLayout;->setTopChild(Landroid/view/View;)V

    .line 167
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mUserName:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mContext:Landroid/content/Context;

    const v3, 0x104059c

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, ""

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 173
    .end local v0    # "parent":Lcom/android/internal/policy/impl/keyguard/KeyguardLinearLayout;
    :cond_46
    :goto_46
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mActive:Z

    const/16 v2, 0x96

    invoke-virtual {p0, v1, p2, v2, p3}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->updateVisualsForActive(ZZILjava/lang/Runnable;)V

    .line 174
    return-void

    .line 170
    :cond_4e
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mUserName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_46
.end method

.method public setPressed(Z)V
    .registers 3
    .param p1, "pressed"    # Z

    .prologue
    .line 228
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mPressLock:Z

    if-eqz v0, :cond_7

    if-nez p1, :cond_7

    .line 237
    :cond_6
    :goto_6
    return-void

    .line 232
    :cond_7
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mPressLock:Z

    if-nez v0, :cond_13

    if-eqz p1, :cond_13

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->isClickable()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 233
    :cond_13
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setPressed(Z)V

    .line 234
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mFramed:Lcom/android/internal/policy/impl/keyguard/KeyguardCircleFramedDrawable;

    invoke-virtual {v0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardCircleFramedDrawable;->setPressed(Z)V

    .line 235
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mUserImage:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    goto :goto_6
.end method

.method updateVisualsForActive(ZZILjava/lang/Runnable;)V
    .registers 16
    .param p1, "active"    # Z
    .param p2, "animate"    # Z
    .param p3, "duration"    # I
    .param p4, "onComplete"    # Ljava/lang/Runnable;

    .prologue
    const/high16 v3, 0x3f800000

    const/16 v10, 0xff

    const/high16 v1, 0x437f0000

    .line 178
    if-eqz p1, :cond_55

    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mActiveAlpha:F

    .line 179
    .local v5, "finalAlpha":F
    :goto_a
    if-eqz p1, :cond_58

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mInactiveAlpha:F

    .line 180
    .local v4, "initAlpha":F
    :goto_e
    if-eqz p1, :cond_5b

    .line 181
    .local v3, "finalScale":F
    :goto_10
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mFramed:Lcom/android/internal/policy/impl/keyguard/KeyguardCircleFramedDrawable;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardCircleFramedDrawable;->getScale()F

    move-result v2

    .line 182
    .local v2, "initScale":F
    if-eqz p1, :cond_5f

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mActiveTextAlpha:F

    mul-float/2addr v0, v1

    float-to-int v7, v0

    .line 184
    .local v7, "finalTextAlpha":I
    :goto_1c
    if-eqz p1, :cond_64

    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mInactiveTextAlpha:F

    mul-float/2addr v0, v1

    float-to-int v6, v0

    .line 186
    .local v6, "initTextAlpha":I
    :goto_22
    iget v8, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mTextColor:I

    .line 187
    .local v8, "textColor":I
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mUserName:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setTextColor(I)V

    .line 189
    if-eqz p2, :cond_69

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mTouched:Z

    if-eqz v0, :cond_69

    .line 190
    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_82

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v9

    .line 191
    .local v9, "va":Landroid/animation/ValueAnimator;
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;FFFFII)V

    invoke-virtual {v9, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 204
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar$2;

    invoke-direct {v0, p0, p4}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;Ljava/lang/Runnable;)V

    invoke-virtual {v9, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 212
    int-to-long v0, p3

    invoke-virtual {v9, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 213
    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->start()V

    .line 223
    .end local v9    # "va":Landroid/animation/ValueAnimator;
    :cond_51
    :goto_51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mTouched:Z

    .line 224
    return-void

    .line 178
    .end local v2    # "initScale":F
    .end local v3    # "finalScale":F
    .end local v4    # "initAlpha":F
    .end local v5    # "finalAlpha":F
    .end local v6    # "initTextAlpha":I
    .end local v7    # "finalTextAlpha":I
    .end local v8    # "textColor":I
    :cond_55
    iget v5, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mInactiveAlpha:F

    goto :goto_a

    .line 179
    .restart local v5    # "finalAlpha":F
    :cond_58
    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mActiveAlpha:F

    goto :goto_e

    .line 180
    .restart local v4    # "initAlpha":F
    :cond_5b
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mActiveScale:F

    div-float/2addr v3, v0

    goto :goto_10

    .line 182
    .restart local v2    # "initScale":F
    .restart local v3    # "finalScale":F
    :cond_5f
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mInactiveTextAlpha:F

    mul-float/2addr v0, v1

    float-to-int v7, v0

    goto :goto_1c

    .line 184
    .restart local v7    # "finalTextAlpha":I
    :cond_64
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mActiveTextAlpha:F

    mul-float/2addr v0, v1

    float-to-int v6, v0

    goto :goto_22

    .line 215
    .restart local v6    # "initTextAlpha":I
    .restart local v8    # "textColor":I
    :cond_69
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mFramed:Lcom/android/internal/policy/impl/keyguard/KeyguardCircleFramedDrawable;

    invoke-virtual {v0, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardCircleFramedDrawable;->setScale(F)V

    .line 216
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mUserImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 217
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->mUserName:Landroid/widget/TextView;

    invoke-static {v7, v10, v10, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 218
    if-eqz p4, :cond_51

    .line 219
    invoke-virtual {p0, p4}, Lcom/android/internal/policy/impl/keyguard/KeyguardMultiUserAvatar;->post(Ljava/lang/Runnable;)Z

    goto :goto_51

    .line 190
    :array_82
    .array-data 4
        0x0
        0x3f800000
    .end array-data
.end method
