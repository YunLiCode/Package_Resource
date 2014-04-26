.class public Lcom/android/phone/PhoneToggler;
.super Landroid/content/BroadcastReceiver;
.source "PhoneToggler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PhoneToggler$1;,
        Lcom/android/phone/PhoneToggler$MyHandler;
    }
.end annotation


# instance fields
.field private mHandler:Lcom/android/phone/PhoneToggler$MyHandler;

.field private mPhone:Lcom/android/internal/telephony/Phone;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 100
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/PhoneToggler;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/PhoneToggler;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/android/phone/PhoneToggler;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    return-object v0
.end method

.method private changeNetworkMode(I)V
    .locals 3
    .param p1, "modemNetworkMode"    # I

    .prologue
    .line 90
    invoke-direct {p0}, Lcom/android/phone/PhoneToggler;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/phone/PhoneToggler;->getHandler()Lcom/android/phone/PhoneToggler$MyHandler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneToggler$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 93
    return-void
.end method

.method private getHandler()Lcom/android/phone/PhoneToggler$MyHandler;
    .locals 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/android/phone/PhoneToggler;->mHandler:Lcom/android/phone/PhoneToggler$MyHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/phone/PhoneToggler$MyHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/PhoneToggler$MyHandler;-><init>(Lcom/android/phone/PhoneToggler;Lcom/android/phone/PhoneToggler$1;)V

    iput-object v0, p0, Lcom/android/phone/PhoneToggler;->mHandler:Lcom/android/phone/PhoneToggler$MyHandler;

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneToggler;->mHandler:Lcom/android/phone/PhoneToggler$MyHandler;

    return-object v0
.end method

.method private getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/phone/PhoneToggler;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneToggler;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneToggler;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method private triggerIntent()V
    .locals 3

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/phone/PhoneToggler;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/phone/PhoneToggler;->getHandler()Lcom/android/phone/PhoneToggler$MyHandler;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneToggler$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 98
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x2

    const/4 v4, 0x1

    .line 44
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.android.internal.telephony.MODIFY_NETWORK_MODE"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 45
    const-string v5, "PhoneToggler"

    const-string v6, "Got modify intent"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_4

    .line 47
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "networkMode"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 48
    .local v1, "networkMode":I
    const/4 v2, 0x0

    .line 49
    .local v2, "networkModeOk":Z
    invoke-direct {p0}, Lcom/android/phone/PhoneToggler;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 50
    .local v3, "phoneType":I
    invoke-direct {p0}, Lcom/android/phone/PhoneToggler;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getLteOnCdmaMode()I

    move-result v5

    if-ne v5, v4, :cond_5

    move v0, v4

    .line 52
    .local v0, "isLteOnCdma":Z
    :goto_0
    if-ne v3, v4, :cond_6

    .line 53
    if-eq v1, v4, :cond_0

    const/4 v4, 0x3

    if-eq v1, v4, :cond_0

    if-eqz v1, :cond_0

    const/16 v4, 0x9

    if-eq v1, v4, :cond_0

    if-ne v1, v7, :cond_1

    .line 58
    :cond_0
    const/4 v2, 0x1

    .line 67
    :cond_1
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz v0, :cond_3

    .line 68
    :cond_2
    const/4 v4, 0x7

    if-ne v1, v4, :cond_3

    .line 69
    const/4 v2, 0x1

    .line 73
    :cond_3
    if-eqz v2, :cond_8

    .line 74
    const-string v4, "PhoneToggler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Will modify it to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    invoke-direct {p0, v1}, Lcom/android/phone/PhoneToggler;->changeNetworkMode(I)V

    .line 76
    const-string v4, "PhoneToggler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Accepted modification of network mode to : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    .end local v0    # "isLteOnCdma":Z
    .end local v1    # "networkMode":I
    .end local v2    # "networkModeOk":Z
    .end local v3    # "phoneType":I
    :cond_4
    :goto_2
    return-void

    .line 50
    .restart local v1    # "networkMode":I
    .restart local v2    # "networkModeOk":Z
    .restart local v3    # "phoneType":I
    :cond_5
    const/4 v0, 0x0

    goto :goto_0

    .line 60
    .restart local v0    # "isLteOnCdma":Z
    :cond_6
    if-ne v3, v7, :cond_1

    .line 61
    const/4 v4, 0x4

    if-eq v1, v4, :cond_7

    const/4 v4, 0x5

    if-eq v1, v4, :cond_7

    const/4 v4, 0x6

    if-ne v1, v4, :cond_1

    .line 64
    :cond_7
    const/4 v2, 0x1

    goto :goto_1

    .line 78
    :cond_8
    const-string v4, "PhoneToggler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not accepted network mode: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 81
    .end local v0    # "isLteOnCdma":Z
    .end local v1    # "networkMode":I
    .end local v2    # "networkModeOk":Z
    .end local v3    # "phoneType":I
    :cond_9
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.android.internal.telephony.REQUEST_NETWORK_MODE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 82
    const-string v4, "PhoneToggler"

    const-string v5, "Sending Intent with current phone network mode"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    invoke-direct {p0}, Lcom/android/phone/PhoneToggler;->triggerIntent()V

    goto :goto_2

    .line 85
    :cond_a
    const-string v4, "PhoneToggler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not accepted intent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method
