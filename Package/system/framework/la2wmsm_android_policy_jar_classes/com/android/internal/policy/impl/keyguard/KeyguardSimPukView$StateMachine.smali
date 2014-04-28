.class public Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;
.super Ljava/lang/Object;
.source "KeyguardSimPukView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "StateMachine"
.end annotation


# instance fields
.field final CONFIRM_PIN:I

.field final DONE:I

.field final ENTER_PIN:I

.field final ENTER_PUK:I

.field protected state:I

.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;


# direct methods
.method protected constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;)V
    .registers 4

    .prologue
    const/4 v1, 0x0

    .line 54
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->ENTER_PUK:I

    .line 56
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->ENTER_PIN:I

    .line 57
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->CONFIRM_PIN:I

    .line 58
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->DONE:I

    .line 59
    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->state:I

    return-void
.end method


# virtual methods
.method public next()V
    .registers 5

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 62
    const/4 v0, 0x0

    .line 63
    .local v0, "msg":I
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->state:I

    if-nez v1, :cond_2a

    .line 64
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->checkPuk()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 65
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->state:I

    .line 66
    const v0, 0x104057c

    .line 88
    :cond_14
    :goto_14
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    if-eqz v0, :cond_25

    .line 90
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    invoke-interface {v1, v0, v3}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(IZ)V

    .line 92
    :cond_25
    return-void

    .line 68
    :cond_26
    const v0, 0x1040581

    goto :goto_14

    .line 70
    :cond_2a
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->state:I

    if-ne v1, v3, :cond_40

    .line 71
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->checkPin()Z

    move-result v1

    if-eqz v1, :cond_3c

    .line 72
    iput v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->state:I

    .line 73
    const v0, 0x104057d

    goto :goto_14

    .line 75
    :cond_3c
    const v0, 0x1040580

    goto :goto_14

    .line 77
    :cond_40
    iget v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->state:I

    if-ne v1, v2, :cond_14

    .line 78
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->confirmPin()Z

    move-result v1

    if-eqz v1, :cond_58

    .line 79
    const/4 v1, 0x3

    iput v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->state:I

    .line 80
    const v0, 0x104033e

    .line 82
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->updateSim()V

    goto :goto_14

    .line 84
    :cond_58
    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->state:I

    .line 85
    const v0, 0x1040583

    goto :goto_14
.end method

.method reset()V
    .registers 7

    .prologue
    .line 95
    const-string v1, ""

    .line 97
    .local v1, "displayMessage":Ljava/lang/String;
    :try_start_2
    const-string v3, "phone"

    invoke-static {v3}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/ITelephony;->getIccPin1RetryCount()I

    move-result v0

    .line 100
    .local v0, "attemptsRemaining":I
    if-lez v0, :cond_47

    .line 101
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x104030b

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->getContext()Landroid/content/Context;

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
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_46} :catch_8f

    move-result-object v1

    .line 115
    .end local v0    # "attemptsRemaining":I
    :cond_47
    :goto_47
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_9e

    .line 117
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x1040595

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 124
    :goto_70
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    const-string v4, ""

    iput-object v4, v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mPinText:Ljava/lang/String;

    .line 125
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    const-string v4, ""

    iput-object v4, v3, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->mPukText:Ljava/lang/String;

    .line 126
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->state:I

    .line 127
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    iget-object v3, v3, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mSecurityMessageDisplay:Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;

    const/4 v4, 0x1

    invoke-interface {v3, v1, v4}, Lcom/android/internal/policy/impl/keyguard/SecurityMessageDisplay;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 128
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    iget-object v3, v3, Lcom/android/internal/policy/impl/keyguard/KeyguardAbsKeyInputView;->mPasswordEntry:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->requestFocus()Z

    .line 129
    return-void

    .line 106
    :catch_8f
    move-exception v2

    .line 107
    .local v2, "ex":Landroid/os/RemoteException;
    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x104030d

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_47

    .line 120
    .end local v2    # "ex":Landroid/os/RemoteException;
    :cond_9e
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView$StateMachine;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;

    invoke-virtual {v4}, Lcom/android/internal/policy/impl/keyguard/KeyguardSimPukView;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x1040594

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_70
.end method
