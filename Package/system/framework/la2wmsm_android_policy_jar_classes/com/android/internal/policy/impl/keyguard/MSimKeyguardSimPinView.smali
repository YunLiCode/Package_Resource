.class public Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;
.source "MSimKeyguardSimPinView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$MSimCheckSimPin;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static TAG:Ljava/lang/String;

.field private static sCancelledCount:I


# instance fields
.field private mSubscription:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    const-string v0, "MSimKeyguardSimPinView"

    sput-object v0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;->TAG:Ljava/lang/String;

    .line 45
    const/4 v0, 0x0

    sput v0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;->sCancelledCount:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;->mSubscription:I

    .line 54
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;

    .prologue
    .line 42
    iget v0, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;->mSubscription:I

    return v0
.end method

.method static synthetic access$002(Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;I)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;
    .param p1, "x1"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;->mSubscription:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;
    .param p1, "x1"    # Z

    .prologue
    .line 42
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;->closeKeyGuard(Z)V

    return-void
.end method

.method private closeKeyGuard(Z)V
    .registers 11
    .param p1, "bAuthenticated"    # Z

    .prologue
    const/4 v8, 0x1

    .line 91
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    .line 92
    .local v5, "updateMonitor":Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;
    const/4 v1, 0x0

    .line 93
    .local v1, "numCardsConfigured":I
    const/4 v3, 0x0

    .line 94
    .local v3, "numPinLocked":I
    sget-object v4, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 96
    .local v4, "simState":Lcom/android/internal/telephony/IccCardConstants$State;
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v2

    .line 97
    .local v2, "numPhones":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_16
    if-ge v0, v2, :cond_37

    .line 98
    invoke-virtual {v5, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getSimState(I)Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v4

    .line 99
    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v4, v6, :cond_22

    .line 100
    add-int/lit8 v3, v3, 0x1

    .line 105
    :cond_22
    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v4, v6, :cond_32

    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v4, v6, :cond_32

    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-eq v4, v6, :cond_32

    sget-object v6, Lcom/android/internal/telephony/IccCardConstants$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v4, v6, :cond_34

    .line 109
    :cond_32
    add-int/lit8 v1, v1, 0x1

    .line 97
    :cond_34
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    .line 115
    :cond_37
    if-nez p1, :cond_46

    .line 116
    sget v6, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;->sCancelledCount:I

    add-int/lit8 v7, v1, -0x1

    if-lt v6, v7, :cond_40

    .line 137
    :goto_3f
    return-void

    .line 119
    :cond_40
    sget v6, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;->sCancelledCount:I

    add-int/lit8 v6, v6, 0x1

    sput v6, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;->sCancelledCount:I

    .line 125
    :cond_46
    if-gt v3, v8, :cond_4b

    .line 126
    const/4 v6, 0x0

    sput v6, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;->sCancelledCount:I

    .line 131
    :cond_4b
    if-nez p1, :cond_53

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPinLockedSubscription()I

    move-result v6

    iput v6, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;->mSubscription:I

    .line 135
    :cond_53
    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;->mSubscription:I

    if-ltz v6, :cond_5c

    iget v6, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;->mSubscription:I

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->reportSimUnlocked(I)V

    .line 136
    :cond_5c
    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    invoke-interface {v6, v8}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->dismiss(Z)V

    goto :goto_3f
.end method


# virtual methods
.method protected getSecurityMessageDisplay(I)Ljava/lang/CharSequence;
    .registers 7
    .param p1, "resId"    # I

    .prologue
    .line 284
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10405a8

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPinLockedSubscription()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getSimUnlockProgressDialog()Landroid/app/Dialog;
    .registers 4

    .prologue
    .line 214
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_45

    .line 215
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    .line 216
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;->mSubscription:I

    invoke-virtual {v0, v1}, Landroid/telephony/MSimTelephonyManager;->getPhoneType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_48

    .line 218
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    const v2, 0x1040597

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 224
    :goto_28
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 225
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 226
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    instance-of v0, v0, Landroid/app/Activity;

    if-nez v0, :cond_45

    .line 227
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d9

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 231
    :cond_45
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    return-object v0

    .line 221
    :cond_48
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPinView;->mSimUnlockProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    const v2, 0x104057e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_28
.end method

.method public resetState()V
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 140
    const-string v1, ""

    .line 142
    .local v1, "displayMessage":Ljava/lang/String;
    :try_start_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPinLockedSubscription()I

    move-result v3

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;->mSubscription:I

    .line 145
    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;->mSubscription:I

    if-gez v3, :cond_14

    .line 174
    :goto_13
    return-void

    .line 147
    :cond_14
    const-string v3, "phone_msim"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;->mSubscription:I

    invoke-interface {v3, v4}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getIccPin1RetryCount(I)I

    move-result v0

    .line 150
    .local v0, "attemptsRemaining":I
    if-ltz v0, :cond_57

    .line 151
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x104030a

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x104030f

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ". "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_56
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_56} :catch_87

    move-result-object v1

    .line 163
    .end local v0    # "attemptsRemaining":I
    :cond_57
    :goto_57
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;->mSubscription:I

    invoke-virtual {v3, v4}, Landroid/telephony/MSimTelephonyManager;->getPhoneType(I)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_94

    .line 165
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x1040596

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;->getSecurityMessageDisplay(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 172
    :goto_7c
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    invoke-interface {v3, v1, v6}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 173
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_13

    .line 155
    :catch_87
    move-exception v2

    .line 156
    .local v2, "ex":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x104030c

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_57

    .line 168
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_94
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v3, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;->mSubscription:I

    if-nez v3, :cond_b1

    const v3, 0x10405bb

    :goto_a0
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;->getSecurityMessageDisplay(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_7c

    :cond_b1
    const v3, 0x1040578

    goto :goto_a0
.end method

.method protected showCancelButton()V
    .registers 3

    .prologue
    .line 58
    const v1, 0x10202e6

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 59
    .local v0, "cancel":Landroid/view/View;
    if-eqz v0, :cond_11

    .line 60
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$1;-><init>(Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    :cond_11
    return-void
.end method

.method protected verifyPasswordAndUnlock()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 237
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, "entry":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-ge v1, v2, :cond_2d

    .line 242
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    const v2, 0x1040580

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;->getSecurityMessageDisplay(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 244
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;

    const-wide/16 v2, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSecurityCallback;->userActivity(J)V

    .line 279
    :cond_2c
    :goto_2c
    return-void

    .line 249
    :cond_2d
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;->getSimUnlockProgressDialog()Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 251
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;->mSimCheckInProgress:Z

    if-nez v1, :cond_2c

    .line 252
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;->mSimCheckInProgress:Z

    .line 255
    new-instance v1, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$2;

    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPinLockedSubscription()I

    move-result v3

    invoke-direct {v1, p0, v2, v3}, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$2;-><init>(Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView;Ljava/lang/String;I)V

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPinView$2;->start()V

    goto :goto_2c
.end method
