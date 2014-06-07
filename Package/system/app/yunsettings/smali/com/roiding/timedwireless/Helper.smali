.class public Lcom/roiding/timedwireless/Helper;
.super Ljava/lang/Object;
.source "Helper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateScheduleTime(Ljava/lang/String;)J
    .locals 9
    .param p0, "time"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x1

    const/4 v5, 0x0

    .line 55
    const-string v4, ":"

    invoke-virtual {p0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 56
    .local v3, "timeArr":[Ljava/lang/String;
    aget-object v4, v3, v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 57
    .local v1, "hour":I
    aget-object v4, v3, v8

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 58
    .local v2, "minute":I
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 59
    .local v0, "cal":Ljava/util/Calendar;
    const/16 v4, 0xb

    invoke-virtual {v0, v4, v1}, Ljava/util/Calendar;->set(II)V

    .line 60
    const/16 v4, 0xc

    invoke-virtual {v0, v4, v2}, Ljava/util/Calendar;->set(II)V

    .line 61
    const/16 v4, 0xd

    invoke-virtual {v0, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 63
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 64
    const/4 v4, 0x5

    invoke-virtual {v0, v4, v8}, Ljava/util/Calendar;->add(II)V

    .line 66
    :cond_0
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    return-wide v4
.end method

.method public static cancelScheduleTurnOff(Landroid/content/Context;Landroid/app/AlarmManager;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "am"    # Landroid/app/AlarmManager;

    .prologue
    const/4 v3, 0x0

    .line 48
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/roiding/timedwireless/TurnOffReceiver;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 49
    .local v0, "trunOffIntent":Landroid/content/Intent;
    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 50
    .local v1, "trunOffSender":Landroid/app/PendingIntent;
    invoke-virtual {p1, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 51
    const-string v2, "TimedWireless"

    const-string v3, "Cancel TurnOff Action"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    return-void
.end method

.method public static cancelScheduleTurnOn(Landroid/content/Context;Landroid/app/AlarmManager;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "am"    # Landroid/app/AlarmManager;

    .prologue
    const/4 v3, 0x0

    .line 28
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/roiding/timedwireless/TurnOnReceiver;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 29
    .local v0, "turnOnIntent":Landroid/content/Intent;
    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 30
    .local v1, "turnOnSender":Landroid/app/PendingIntent;
    invoke-virtual {p1, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 31
    const-string v2, "TimedWireless"

    const-string v3, "Cancel TurnOn Action"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    return-void
.end method

.method public static scheduleTurnOff(Landroid/content/Context;Landroid/app/AlarmManager;Ljava/lang/String;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "am"    # Landroid/app/AlarmManager;
    .param p2, "offTime"    # Ljava/lang/String;

    .prologue
    const-wide/32 v4, 0x5265c00

    const/4 v1, 0x0

    const-string v9, "TimedWireless"

    .line 35
    new-instance v7, Ljava/text/SimpleDateFormat;

    invoke-direct {v7}, Ljava/text/SimpleDateFormat;-><init>()V

    .line 36
    .local v7, "sdff":Ljava/text/SimpleDateFormat;
    const-string v0, "yyyy-MM-dd HH:mm:ss"

    invoke-virtual {v7, v0}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 38
    if-eqz p2, :cond_0

    .line 39
    new-instance v8, Landroid/content/Intent;

    const-class v0, Lcom/roiding/timedwireless/TurnOffReceiver;

    invoke-direct {v8, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 40
    .local v8, "trunOffIntent":Landroid/content/Intent;
    invoke-static {p0, v1, v8, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 41
    .local v6, "trunOffSender":Landroid/app/PendingIntent;
    invoke-static {p2}, Lcom/roiding/timedwireless/Helper;->calculateScheduleTime(Ljava/lang/String;)J

    move-result-wide v2

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 42
    const-string v0, "TimedWireless"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Schedule TurnOff Action at "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/roiding/timedwireless/Helper;->calculateScheduleTime(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    const-string v0, "TimedWireless"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Schedule Next TurnOff Action at "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/roiding/timedwireless/Helper;->calculateScheduleTime(Ljava/lang/String;)J

    move-result-wide v1

    add-long/2addr v1, v4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    .end local v8    # "trunOffIntent":Landroid/content/Intent;
    .end local v6    # "trunOffSender":Landroid/app/PendingIntent;
    :cond_0
    return-void
.end method

.method public static scheduleTurnOn(Landroid/content/Context;Landroid/app/AlarmManager;Ljava/lang/String;)V
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "am"    # Landroid/app/AlarmManager;
    .param p2, "onTime"    # Ljava/lang/String;

    .prologue
    const-wide/32 v4, 0x5265c00

    const/4 v1, 0x0

    const-string v9, "TimedWireless"

    .line 15
    new-instance v7, Ljava/text/SimpleDateFormat;

    invoke-direct {v7}, Ljava/text/SimpleDateFormat;-><init>()V

    .line 16
    .local v7, "sdff":Ljava/text/SimpleDateFormat;
    const-string v0, "yyyy-MM-dd HH:mm:ss"

    invoke-virtual {v7, v0}, Ljava/text/SimpleDateFormat;->applyPattern(Ljava/lang/String;)V

    .line 18
    if-eqz p2, :cond_0

    .line 19
    new-instance v8, Landroid/content/Intent;

    const-class v0, Lcom/roiding/timedwireless/TurnOnReceiver;

    invoke-direct {v8, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 20
    .local v8, "turnOnIntent":Landroid/content/Intent;
    invoke-static {p0, v1, v8, v1}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    .line 21
    .local v6, "turnOnSender":Landroid/app/PendingIntent;
    invoke-static {p2}, Lcom/roiding/timedwireless/Helper;->calculateScheduleTime(Ljava/lang/String;)J

    move-result-wide v2

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    .line 22
    const-string v0, "TimedWireless"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Schedule TurnOn Action at "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/roiding/timedwireless/Helper;->calculateScheduleTime(Ljava/lang/String;)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    const-string v0, "TimedWireless"

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Schedule Next TurnOn Action at "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/roiding/timedwireless/Helper;->calculateScheduleTime(Ljava/lang/String;)J

    move-result-wide v1

    add-long/2addr v1, v4

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    .end local v8    # "turnOnIntent":Landroid/content/Intent;
    .end local v6    # "turnOnSender":Landroid/app/PendingIntent;
    :cond_0
    return-void
.end method
