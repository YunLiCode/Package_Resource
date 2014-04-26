.class Lcom/android/phone/PhoneToggler$MyHandler;
.super Landroid/os/Handler;
.source "PhoneToggler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneToggler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneToggler;


# direct methods
.method private constructor <init>(Lcom/android/phone/PhoneToggler;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/phone/PhoneToggler$MyHandler;->this$0:Lcom/android/phone/PhoneToggler;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/PhoneToggler;Lcom/android/phone/PhoneToggler$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/PhoneToggler;
    .param p2, "x1"    # Lcom/android/phone/PhoneToggler$1;

    .prologue
    .line 100
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneToggler$MyHandler;-><init>(Lcom/android/phone/PhoneToggler;)V

    return-void
.end method

.method private handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 119
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 121
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v4, :cond_3

    .line 122
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, [I

    check-cast v4, [I

    aget v2, v4, v7

    .line 123
    .local v2, "modemNetworkMode":I
    const-string v4, "PhoneToggler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleGetPreferredNetworkTypeResponse: modemNetworkMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v4, p0, Lcom/android/phone/PhoneToggler$MyHandler;->this$0:Lcom/android/phone/PhoneToggler;

    # invokes: Lcom/android/phone/PhoneToggler;->getPhone()Lcom/android/internal/telephony/Phone;
    invoke-static {v4}, Lcom/android/phone/PhoneToggler;->access$100(Lcom/android/phone/PhoneToggler;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "preferred_network_mode"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 129
    .local v3, "settingsNetworkMode":I
    const-string v4, "PhoneToggler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleGetPreferredNetworkTypeReponse: settingsNetworkMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    if-eqz v2, :cond_1

    if-eq v2, v8, :cond_1

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    const/4 v4, 0x3

    if-eq v2, v4, :cond_1

    const/4 v4, 0x4

    if-eq v2, v4, :cond_1

    const/4 v4, 0x5

    if-eq v2, v4, :cond_1

    const/4 v4, 0x6

    if-eq v2, v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/PhoneToggler$MyHandler;->this$0:Lcom/android/phone/PhoneToggler;

    # invokes: Lcom/android/phone/PhoneToggler;->getPhone()Lcom/android/internal/telephony/Phone;
    invoke-static {v4}, Lcom/android/phone/PhoneToggler;->access$100(Lcom/android/phone/PhoneToggler;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0002

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-ne v4, v8, :cond_0

    const/4 v4, 0x7

    if-eq v2, v4, :cond_1

    :cond_0
    const/16 v4, 0x8

    if-eq v2, v4, :cond_1

    const/16 v4, 0x9

    if-eq v2, v4, :cond_1

    const/16 v4, 0xa

    if-eq v2, v4, :cond_1

    const/16 v4, 0xc

    if-ne v2, v4, :cond_4

    .line 147
    :cond_1
    const-string v4, "PhoneToggler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleGetPreferredNetworkTypeResponse: if 1: modemNetworkMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    if-eq v2, v3, :cond_2

    .line 151
    const-string v4, "PhoneToggler"

    const-string v5, "handleGetPreferredNetworkTypeResponse: if 2: modemNetworkMode != settingsNetworkMode"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    move v3, v2

    .line 153
    const-string v4, "PhoneToggler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleGetPreferredNetworkTypeResponse: if 2: settingsNetworkMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v4, p0, Lcom/android/phone/PhoneToggler$MyHandler;->this$0:Lcom/android/phone/PhoneToggler;

    # invokes: Lcom/android/phone/PhoneToggler;->getPhone()Lcom/android/internal/telephony/Phone;
    invoke-static {v4}, Lcom/android/phone/PhoneToggler;->access$100(Lcom/android/phone/PhoneToggler;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "preferred_network_mode"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 161
    :cond_2
    new-instance v1, Landroid/content/Intent;

    const-string v4, "com.android.internal.telephony.NETWORK_MODE_CHANGED"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 162
    .local v1, "intent":Landroid/content/Intent;
    const-string v4, "networkMode"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 163
    iget-object v4, p0, Lcom/android/phone/PhoneToggler$MyHandler;->this$0:Lcom/android/phone/PhoneToggler;

    # invokes: Lcom/android/phone/PhoneToggler;->getPhone()Lcom/android/internal/telephony/Phone;
    invoke-static {v4}, Lcom/android/phone/PhoneToggler;->access$100(Lcom/android/phone/PhoneToggler;)Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "com.android.phone.CHANGE_NETWORK_MODE"

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 171
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v2    # "modemNetworkMode":I
    .end local v3    # "settingsNetworkMode":I
    :cond_3
    :goto_0
    return-void

    .line 164
    .restart local v2    # "modemNetworkMode":I
    .restart local v3    # "settingsNetworkMode":I
    :cond_4
    const/16 v4, 0xb

    if-ne v2, v4, :cond_5

    .line 165
    const-string v4, "PhoneToggler"

    const-string v5, "handleGetPreferredNetworkTypeResponse: lte only: no action"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 167
    :cond_5
    const-string v4, "PhoneToggler"

    const-string v5, "handleGetPreferredNetworkTypeResponse: else: reset to default"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-direct {p0}, Lcom/android/phone/PhoneToggler$MyHandler;->resetNetworkModeToDefault()V

    goto :goto_0
.end method

.method private handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/android/phone/PhoneToggler$MyHandler;->this$0:Lcom/android/phone/PhoneToggler;

    # invokes: Lcom/android/phone/PhoneToggler;->getPhone()Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/PhoneToggler;->access$100(Lcom/android/phone/PhoneToggler;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/phone/PhoneToggler$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 176
    return-void
.end method

.method private resetNetworkModeToDefault()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 179
    iget-object v0, p0, Lcom/android/phone/PhoneToggler$MyHandler;->this$0:Lcom/android/phone/PhoneToggler;

    # invokes: Lcom/android/phone/PhoneToggler;->getPhone()Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/PhoneToggler;->access$100(Lcom/android/phone/PhoneToggler;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preferred_network_mode"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 183
    iget-object v0, p0, Lcom/android/phone/PhoneToggler$MyHandler;->this$0:Lcom/android/phone/PhoneToggler;

    # invokes: Lcom/android/phone/PhoneToggler;->getPhone()Lcom/android/internal/telephony/Phone;
    invoke-static {v0}, Lcom/android/phone/PhoneToggler;->access$100(Lcom/android/phone/PhoneToggler;)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/phone/PhoneToggler$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/Phone;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 185
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 107
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 116
    :goto_0
    return-void

    .line 109
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneToggler$MyHandler;->handleGetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 113
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneToggler$MyHandler;->handleSetPreferredNetworkTypeResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 107
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
