.class public Lcom/roiding/timedwireless/TimedWirelessService;
.super Landroid/app/Service;
.source "TimedWirelessService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method private setAirplaneMode(Landroid/content/Context;Z)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "status"    # Z

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v8, "state"

    const-string v7, "android.intent.action.AIRPLANE_MODE"

    const-string v6, "airplane_mode_on"

    .line 33
    invoke-direct {p0, p1}, Lcom/roiding/timedwireless/TimedWirelessService;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v1

    .line 35
    .local v1, "isAirplaneModeOn":Z
    if-eqz v1, :cond_1

    if-eqz p2, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    if-nez v1, :cond_2

    if-eqz p2, :cond_0

    .line 41
    :cond_2
    if-eqz v1, :cond_3

    if-nez p2, :cond_3

    .line 42
    invoke-virtual {p0}, Lcom/roiding/timedwireless/TimedWirelessService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v6, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 43
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 44
    .local v0, "intent":Landroid/content/Intent;
    const-string v2, "state"

    invoke-virtual {v0, v8, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 45
    invoke-virtual {p0, v0}, Lcom/roiding/timedwireless/TimedWirelessService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 48
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_3
    if-nez v1, :cond_4

    if-eqz p2, :cond_4

    .line 49
    invoke-virtual {p0}, Lcom/roiding/timedwireless/TimedWirelessService;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 50
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 51
    .restart local v0    # "intent":Landroid/content/Intent;
    const-string v2, "state"

    invoke-virtual {v0, v8, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 52
    invoke-virtual {p0, v0}, Lcom/roiding/timedwireless/TimedWirelessService;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 55
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_4
    invoke-virtual {p0}, Lcom/roiding/timedwireless/TimedWirelessService;->stopSelf()V

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 13
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 14
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    const/4 v2, 0x0

    .line 18
    invoke-super {p0, p1, p2}, Landroid/app/Service;->onStart(Landroid/content/Intent;I)V

    .line 19
    const-string v1, "turnOn"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 20
    .local v0, "turnOn":Z
    if-eqz v0, :cond_0

    move v1, v2

    :goto_0
    invoke-direct {p0, p0, v1}, Lcom/roiding/timedwireless/TimedWirelessService;->setAirplaneMode(Landroid/content/Context;Z)V

    .line 21
    return-void

    .line 20
    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method
