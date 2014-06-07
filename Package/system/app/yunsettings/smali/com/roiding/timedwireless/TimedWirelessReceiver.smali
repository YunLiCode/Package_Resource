.class public Lcom/roiding/timedwireless/TimedWirelessReceiver;
.super Landroid/content/BroadcastReceiver;
.source "TimedWirelessReceiver.java"


# static fields
.field static final BOOT_COMPLETE:Ljava/lang/String; = "android.intent.action.BOOT_COMPLETED"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v8, 0x0

    const-string v7, "TimedWireless"

    .line 16
    const-string v5, "TimedWireless"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "TimedWirelessReceiver action: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 18
    const-string v5, "alarm"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 19
    .local v0, "am":Landroid/app/AlarmManager;
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 20
    .local v4, "pref":Landroid/content/SharedPreferences;
    const-string v5, "enable"

    const/4 v6, 0x1

    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 21
    .local v1, "enable":Z
    const-string v5, "TimedWireless"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "TimedWireless enable: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    if-eqz v1, :cond_0

    .line 23
    invoke-static {p1, v0}, Lcom/roiding/timedwireless/Helper;->cancelScheduleTurnOn(Landroid/content/Context;Landroid/app/AlarmManager;)V

    .line 24
    invoke-static {p1, v0}, Lcom/roiding/timedwireless/Helper;->cancelScheduleTurnOff(Landroid/content/Context;Landroid/app/AlarmManager;)V

    .line 26
    const-string v5, "on_time"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 27
    .local v3, "onTime":Ljava/lang/String;
    const-string v5, "TimedWireless"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "OnTime: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-static {p1, v0, v3}, Lcom/roiding/timedwireless/Helper;->scheduleTurnOn(Landroid/content/Context;Landroid/app/AlarmManager;Ljava/lang/String;)V

    .line 30
    const-string v5, "off_time"

    invoke-interface {v4, v5, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 31
    .local v2, "offTime":Ljava/lang/String;
    const-string v5, "TimedWireless"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "OffTime: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-static {p1, v0, v2}, Lcom/roiding/timedwireless/Helper;->scheduleTurnOff(Landroid/content/Context;Landroid/app/AlarmManager;Ljava/lang/String;)V

    .line 35
    .end local v0    # "am":Landroid/app/AlarmManager;
    .end local v4    # "pref":Landroid/content/SharedPreferences;
    .end local v1    # "enable":Z
    .end local v3    # "onTime":Ljava/lang/String;
    .end local v2    # "offTime":Ljava/lang/String;
    :cond_0
    return-void
.end method
