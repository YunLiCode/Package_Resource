.class public Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;
.super Lcom/android/internal/policy/impl/keyguard/CarrierText;
.source "MSimCarrierText.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "MSimCarrierText"


# instance fields
.field private mMSimCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

.field private mPlmn:[Ljava/lang/CharSequence;

.field private mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

.field private mSpn:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/CarrierText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    new-instance v0, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText$1;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText$1;-><init>(Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->mMSimCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    .line 71
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->initialize()V

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;)[Ljava/lang/CharSequence;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->mPlmn:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;)[Ljava/lang/CharSequence;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->mSpn:[Ljava/lang/CharSequence;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;)[Lcom/android/internal/telephony/IccCardConstants$State;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    return-object v0
.end method

.method private initialize()V
    .registers 3

    .prologue
    .line 59
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v0

    .line 60
    .local v0, "numPhones":I
    new-array v1, v0, [Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->mPlmn:[Ljava/lang/CharSequence;

    .line 61
    new-array v1, v0, [Ljava/lang/CharSequence;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->mSpn:[Ljava/lang/CharSequence;

    .line 62
    new-array v1, v0, [Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->mSimState:[Lcom/android/internal/telephony/IccCardConstants$State;

    .line 63
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .registers 3

    .prologue
    .line 98
    invoke-super {p0}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->onAttachedToWindow()V

    .line 99
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->mMSimCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 100
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .prologue
    .line 104
    invoke-super {p0}, Lcom/android/internal/policy/impl/keyguard/CarrierText;->onDetachedFromWindow()V

    .line 105
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->mMSimCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 106
    return-void
.end method

.method protected updateCarrierText([Lcom/android/internal/telephony/IccCardConstants$State;[Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)V
    .registers 13
    .param p1, "simState"    # [Lcom/android/internal/telephony/IccCardConstants$State;
    .param p2, "plmn"    # [Ljava/lang/CharSequence;
    .param p3, "spn"    # [Ljava/lang/CharSequence;

    .prologue
    const/4 v8, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 75
    const-string v2, ""

    .line 76
    .local v2, "text":Ljava/lang/CharSequence;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    array-length v3, p1

    if-ge v1, v3, :cond_62

    .line 78
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/telephony/MSimTelephonyManager;->getPhoneType(I)I

    move-result v3

    if-ne v3, v8, :cond_4b

    move v3, v4

    :goto_14
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mIsCDMA:Z

    .line 80
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/CarrierText;->mSubscription:I

    .line 81
    aget-object v3, p1, v1

    aget-object v6, p2, v1

    aget-object v7, p3, v1

    invoke-virtual {p0, v3, v6, v7}, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->getCarrierTextForSimState(Lcom/android/internal/telephony/IccCardConstants$State;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 83
    .local v0, "displayText":Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_33

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v6, 0x1040312

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 85
    :cond_33
    sget-boolean v3, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager;->USE_UPPER_CASE:Z

    if-eqz v3, :cond_41

    .line 86
    if-eqz v0, :cond_4d

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    .line 88
    :cond_41
    :goto_41
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_50

    move-object v2, v0

    .line 76
    :goto_48
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .end local v0    # "displayText":Ljava/lang/CharSequence;
    :cond_4b
    move v3, v5

    .line 78
    goto :goto_14

    .line 86
    .restart local v0    # "displayText":Ljava/lang/CharSequence;
    :cond_4d
    const-string v0, ""

    goto :goto_41

    .line 88
    :cond_50
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->getContext()Landroid/content/Context;

    move-result-object v3

    const v6, 0x10405a9

    new-array v7, v8, [Ljava/lang/Object;

    aput-object v2, v7, v5

    aput-object v0, v7, v4

    invoke-virtual {v3, v6, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_48

    .line 92
    .end local v0    # "displayText":Ljava/lang/CharSequence;
    :cond_62
    const-string v3, "MSimCarrierText"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCarrierText: text = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/MSimCarrierText;->setText(Ljava/lang/CharSequence;)V

    .line 94
    return-void
.end method
