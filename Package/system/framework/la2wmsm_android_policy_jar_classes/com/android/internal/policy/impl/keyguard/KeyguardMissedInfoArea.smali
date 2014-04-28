.class public Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;
.super Landroid/widget/LinearLayout;
.source "KeyguardMissedInfoArea.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea$MissedInfoQueryHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCallsObserver:Landroid/database/ContentObserver;

.field private mMissedCallView:Landroid/widget/TextView;

.field private mMissedMsgView:Landroid/widget/TextView;

.field private mMmsSmsObserver:Landroid/database/ContentObserver;

.field private mQueryHandler:Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea$MissedInfoQueryHandler;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const-class v0, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 28
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea$1;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;->mCallsObserver:Landroid/database/ContentObserver;

    .line 37
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea$2;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;->mMmsSmsObserver:Landroid/database/ContentObserver;

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea$1;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;->mCallsObserver:Landroid/database/ContentObserver;

    .line 37
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea$2;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;->mMmsSmsObserver:Landroid/database/ContentObserver;

    .line 53
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea$1;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea$1;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;->mCallsObserver:Landroid/database/ContentObserver;

    .line 37
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea$2;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea$2;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;->mMmsSmsObserver:Landroid/database/ContentObserver;

    .line 57
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 22
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;)Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea$MissedInfoQueryHandler;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;->mQueryHandler:Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea$MissedInfoQueryHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;->mMissedCallView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;)Landroid/widget/TextView;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;->mMissedMsgView:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 73
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 74
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;->mCallsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;->mMmsSmsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;->mMmsSmsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 77
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 81
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 82
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;->mCallsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;->mMmsSmsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 84
    return-void
.end method

.method protected onFinishInflate()V
    .registers 3

    .prologue
    .line 61
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 62
    sget-object v0, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;->TAG:Ljava/lang/String;

    const-string v1, "onFinishInflate()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const v0, 0x10202c9

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;->mMissedCallView:Landroid/widget/TextView;

    .line 64
    const v0, 0x10202ca

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;->mMissedMsgView:Landroid/widget/TextView;

    .line 66
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea$MissedInfoQueryHandler;

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea$MissedInfoQueryHandler;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;->mQueryHandler:Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea$MissedInfoQueryHandler;

    .line 67
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;->mQueryHandler:Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea$MissedInfoQueryHandler;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea$MissedInfoQueryHandler;->startQueryMissedMsg()V

    .line 68
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;->mQueryHandler:Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea$MissedInfoQueryHandler;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea$MissedInfoQueryHandler;->startQueryMissedCall()V

    .line 69
    return-void
.end method
