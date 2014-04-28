.class public Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimStateMachine;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;
.source "MSimKeyguardSimPukView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "MSimStateMachine"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;


# direct methods
.method protected constructor <init>(Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;)V
    .registers 2

    .prologue
    .line 43
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;

    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;-><init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;)V

    return-void
.end method


# virtual methods
.method public next()V
    .registers 6

    .prologue
    const/4 v3, 0x2

    const/4 v4, 0x1

    .line 45
    const/4 v0, 0x0

    .line 46
    .local v0, "msg":I
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->state:I

    if-nez v2, :cond_30

    .line 47
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;->checkPuk()Z

    move-result v2

    if-eqz v2, :cond_2c

    .line 48
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->state:I

    .line 49
    const v0, 0x104057c

    .line 74
    :cond_14
    :goto_14
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    if-eqz v0, :cond_2b

    .line 76
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;

    iget-object v2, v2, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;

    invoke-virtual {v3, v0}, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;->getSecurityMessageDisplay(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v2, v3, v4}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 78
    :cond_2b
    return-void

    .line 51
    :cond_2c
    const v0, 0x1040581

    goto :goto_14

    .line 53
    :cond_30
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->state:I

    if-ne v2, v4, :cond_46

    .line 54
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;->checkPin()Z

    move-result v2

    if-eqz v2, :cond_42

    .line 55
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->state:I

    .line 56
    const v0, 0x104057d

    goto :goto_14

    .line 58
    :cond_42
    const v0, 0x1040580

    goto :goto_14

    .line 60
    :cond_46
    iget v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->state:I

    if-ne v2, v3, :cond_14

    .line 61
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;->confirmPin()Z

    move-result v2

    if-eqz v2, :cond_72

    .line 62
    const/4 v2, 0x3

    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->state:I

    .line 64
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;->access$000(Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPukLockedSubscription()I

    move-result v1

    .line 65
    .local v1, "sub":I
    if-nez v1, :cond_6e

    const v0, 0x10405c6

    .line 68
    :goto_68
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;->updateSim()V

    goto :goto_14

    .line 65
    :cond_6e
    const v0, 0x104033e

    goto :goto_68

    .line 70
    .end local v1    # "sub":I
    :cond_72
    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->state:I

    .line 71
    const v0, 0x1040583

    goto :goto_14
.end method

.method reset()V
    .registers 8

    .prologue
    .line 81
    const-string v1, ""

    .line 84
    .local v1, "displayMessage":Ljava/lang/String;
    :try_start_2
    const-string v4, "phone_msim"

    invoke-static {v4}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;->access$100(Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPukLockedSubscription()I

    move-result v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->getIccPin1RetryCount(I)I

    move-result v0

    .line 88
    .local v0, "attemptsRemaining":I
    if-lez v0, :cond_55

    .line 89
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x104030b

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;

    invoke-virtual {v5}, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x104030f

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ". "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_54} :catch_a7

    move-result-object v1

    .line 104
    :cond_55
    :goto_55
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;->access$200(Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitor;->getPukLockedSubscription()I

    move-result v3

    .line 106
    .local v3, "subscription":I
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/telephony/MSimTelephonyManager;->getPhoneType(I)I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_b8

    .line 108
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;

    const v6, 0x1040595

    invoke-virtual {v5, v6}, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;->getSecurityMessageDisplay(I)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 116
    :goto_88
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;

    const-string v5, ""

    iput-object v5, v4, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mPinText:Ljava/lang/String;

    .line 117
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;

    const-string v5, ""

    iput-object v5, v4, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mPukText:Ljava/lang/String;

    .line 118
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->state:I

    .line 119
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;

    iget-object v4, v4, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    const/4 v5, 0x1

    invoke-interface {v4, v1, v5}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 120
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;

    iget-object v4, v4, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->requestFocus()Z

    .line 121
    return-void

    .line 94
    .end local v0    # "attemptsRemaining":I
    .end local v3    # "subscription":I
    :catch_a7
    move-exception v2

    .line 95
    .local v2, "ex":Landroid/os/RemoteException;
    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x104030d

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 96
    const/16 v0, -0x6f

    .restart local v0    # "attemptsRemaining":I
    goto :goto_55

    .line 111
    .end local v2    # "ex":Landroid/os/RemoteException;
    .restart local v3    # "subscription":I
    :cond_b8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView$MSimStateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;

    if-nez v3, :cond_d5

    const v4, 0x10405ba

    :goto_c4
    invoke-virtual {v6, v4}, Lcom/android/internal/policy/impl/keyguard/MSimKeyguardSimPukView;->getSecurityMessageDisplay(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_88

    :cond_d5
    const v4, 0x1040594

    goto :goto_c4
.end method
