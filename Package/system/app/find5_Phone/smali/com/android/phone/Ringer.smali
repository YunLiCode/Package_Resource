.class public Lcom/android/phone/Ringer;
.super Ljava/lang/Object;
.source "Ringer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/Ringer$Worker;,
        Lcom/android/phone/Ringer$VibratorThread;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field private static sInstance:Lcom/android/phone/Ringer;


# instance fields
.field mAudioManager:Landroid/media/AudioManager;

.field mContext:Landroid/content/Context;

.field volatile mContinueVibrating:Z

.field mCustomRingtoneUri:Landroid/net/Uri;

.field private mFirstRingEventTime:J

.field private mFirstRingStartTime:J

.field private mHandler:Landroid/os/Handler;

.field mPowerManager:Landroid/os/IPowerManager;

.field private mRingHandler:Landroid/os/Handler;

.field private mRingIncreaseInterval:I

.field private mRingThread:Lcom/android/phone/Ringer$Worker;

.field private mRingerVolumeSetting:I

.field mRingtone:Landroid/media/Ringtone;

.field mVibrator:Landroid/os/Vibrator;

.field mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/Ringer;->DBG:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const-wide/16 v1, -0x1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    sget-object v0, Landroid/provider/Settings$System;->DEFAULT_RINGTONE_URI:Landroid/net/Uri;

    iput-object v0, p0, Lcom/android/phone/Ringer;->mCustomRingtoneUri:Landroid/net/Uri;

    .line 71
    iput-wide v1, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J

    .line 72
    iput-wide v1, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    .line 73
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/Ringer;->mRingerVolumeSetting:I

    .line 93
    iput-object p1, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    .line 94
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/phone/Ringer;->mAudioManager:Landroid/media/AudioManager;

    .line 95
    const-string v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/Ringer;->mPowerManager:Landroid/os/IPowerManager;

    .line 98
    new-instance v0, Landroid/os/SystemVibrator;

    invoke-direct {v0}, Landroid/os/SystemVibrator;-><init>()V

    iput-object v0, p0, Lcom/android/phone/Ringer;->mVibrator:Landroid/os/Vibrator;

    .line 99
    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/Ringer;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/Ringer;

    .prologue
    .line 43
    iget v0, p0, Lcom/android/phone/Ringer;->mRingerVolumeSetting:I

    return v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lcom/android/phone/Ringer;->DBG:Z

    return v0
.end method

.method static synthetic access$300(Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Ljava/lang/String;

    .prologue
    .line 43
    invoke-static {p0}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/Ringer;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/Ringer;

    .prologue
    .line 43
    iget v0, p0, Lcom/android/phone/Ringer;->mRingIncreaseInterval:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/phone/Ringer;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/phone/Ringer;

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/android/phone/Ringer;J)J
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/Ringer;
    .param p1, "x1"    # J

    .prologue
    .line 43
    iput-wide p1, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    return-wide p1
.end method

.method static init(Landroid/content/Context;)Lcom/android/phone/Ringer;
    .locals 4

    .prologue
    .line 81
    const-class v1, Lcom/android/phone/Ringer;

    monitor-enter v1

    .line 82
    :try_start_0
    sget-object v0, Lcom/android/phone/Ringer;->sInstance:Lcom/android/phone/Ringer;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcom/android/phone/Ringer;

    invoke-direct {v0, p0}, Lcom/android/phone/Ringer;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/phone/Ringer;->sInstance:Lcom/android/phone/Ringer;

    .line 87
    :goto_0
    sget-object v0, Lcom/android/phone/Ringer;->sInstance:Lcom/android/phone/Ringer;

    monitor-exit v1

    return-object v0

    .line 85
    :cond_0
    const-string v0, "Ringer"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init() called multiple times!  sInstance = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/android/phone/Ringer;->sInstance:Lcom/android/phone/Ringer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 88
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isRingtonePlaying()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 135
    monitor-enter p0

    .line 136
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    invoke-virtual {v1}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    :goto_0
    monitor-exit p0

    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private isVibrating()Z
    .locals 1

    .prologue
    .line 147
    monitor-enter p0

    .line 148
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 149
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "msg"    # Ljava/lang/String;

    .prologue
    .line 420
    const-string v0, "Ringer"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    return-void
.end method

.method private makeLooper()V
    .locals 2

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/phone/Ringer;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 350
    new-instance v0, Lcom/android/phone/Ringer$1;

    invoke-direct {v0, p0}, Lcom/android/phone/Ringer$1;-><init>(Lcom/android/phone/Ringer;)V

    iput-object v0, p0, Lcom/android/phone/Ringer;->mHandler:Landroid/os/Handler;

    .line 373
    :cond_0
    iget-object v0, p0, Lcom/android/phone/Ringer;->mRingThread:Lcom/android/phone/Ringer$Worker;

    if-nez v0, :cond_1

    .line 374
    new-instance v0, Lcom/android/phone/Ringer$Worker;

    const-string v1, "ringer"

    invoke-direct {v0, p0, v1}, Lcom/android/phone/Ringer$Worker;-><init>(Lcom/android/phone/Ringer;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/Ringer;->mRingThread:Lcom/android/phone/Ringer$Worker;

    .line 375
    new-instance v0, Lcom/android/phone/Ringer$2;

    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingThread:Lcom/android/phone/Ringer$Worker;

    invoke-virtual {v1}, Lcom/android/phone/Ringer$Worker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/phone/Ringer$2;-><init>(Lcom/android/phone/Ringer;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    .line 417
    :cond_1
    return-void
.end method


# virtual methods
.method isRinging()Z
    .locals 1

    .prologue
    .line 124
    monitor-enter p0

    .line 125
    :try_start_0
    invoke-direct {p0}, Lcom/android/phone/Ringer;->isRingtonePlaying()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/Ringer;->isVibrating()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 126
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method ring()V
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v4, 0x0

    const/4 v1, 0x1

    .line 156
    sget-boolean v5, Lcom/android/phone/Ringer;->DBG:Z

    if-eqz v5, :cond_0

    const-string v5, "ring()..."

    invoke-static {v5}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    .line 158
    :cond_0
    monitor-enter p0

    .line 160
    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->showBluetoothIndication()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 161
    iget-object v5, p0, Lcom/android/phone/Ringer;->mPowerManager:Landroid/os/IPowerManager;

    const/4 v6, 0x1

    const/16 v7, 0xff

    invoke-interface {v5, v6, v7}, Landroid/os/IPowerManager;->setAttentionLight(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 169
    :goto_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/phone/Ringer;->shouldVibrate()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    if-nez v5, :cond_2

    .line 170
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/android/phone/Ringer;->mContinueVibrating:Z

    .line 171
    new-instance v5, Lcom/android/phone/Ringer$VibratorThread;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/phone/Ringer$VibratorThread;-><init>(Lcom/android/phone/Ringer;Lcom/android/phone/Ringer$1;)V

    iput-object v5, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    .line 172
    sget-boolean v5, Lcom/android/phone/Ringer;->DBG:Z

    if-eqz v5, :cond_1

    const-string v5, "- starting vibrator..."

    invoke-static {v5}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    .line 173
    :cond_1
    iget-object v5, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    invoke-virtual {v5}, Lcom/android/phone/Ringer$VibratorThread;->start()V

    .line 176
    :cond_2
    iget-object v5, p0, Lcom/android/phone/Ringer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v3

    .line 177
    .local v3, "ringerVolume":I
    if-nez v3, :cond_5

    iget v5, p0, Lcom/android/phone/Ringer;->mRingerVolumeSetting:I

    if-gtz v5, :cond_5

    .line 178
    sget-boolean v4, Lcom/android/phone/Ringer;->DBG:Z

    if-eqz v4, :cond_3

    const-string v4, "skipping ring because volume is zero"

    invoke-static {v4}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    .line 179
    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    .line 180
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 234
    :goto_1
    return-void

    .line 163
    .end local v3    # "ringerVolume":I
    :cond_4
    :try_start_2
    iget-object v5, p0, Lcom/android/phone/Ringer;->mPowerManager:Landroid/os/IPowerManager;

    const/4 v6, 0x1

    const v7, 0xffffff

    invoke-interface {v5, v6, v7}, Landroid/os/IPowerManager;->setAttentionLight(ZI)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 165
    :catch_0
    move-exception v5

    goto :goto_0

    .line 183
    .restart local v3    # "ringerVolume":I
    :cond_5
    :try_start_3
    invoke-direct {p0}, Lcom/android/phone/Ringer;->makeLooper()V

    .line 184
    iget-wide v5, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J

    cmp-long v5, v5, v8

    if-gez v5, :cond_a

    .line 185
    iget-object v5, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 186
    .local v0, "cr":Landroid/content/ContentResolver;
    const-string v5, "increasing_ring"

    const/4 v6, 0x0

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v1, :cond_8

    .line 188
    .local v1, "increasing":Z
    :goto_2
    const-string v4, "increasing_ring_min_vol"

    const/4 v5, 0x1

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 191
    .local v2, "minVolume":I
    if-eqz v1, :cond_9

    if-ge v2, v3, :cond_9

    .line 192
    const-string v4, "increasing_ring_interval"

    const/4 v5, 0x0

    invoke-static {v0, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lcom/android/phone/Ringer;->mRingIncreaseInterval:I

    .line 195
    iput v3, p0, Lcom/android/phone/Ringer;->mRingerVolumeSetting:I

    .line 196
    iget-object v4, p0, Lcom/android/phone/Ringer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v2, v6}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 197
    sget-boolean v4, Lcom/android/phone/Ringer;->DBG:Z

    if-eqz v4, :cond_6

    .line 198
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "increasing ring is enabled, starting at "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    .line 201
    :cond_6
    iget v4, p0, Lcom/android/phone/Ringer;->mRingIncreaseInterval:I

    if-lez v4, :cond_7

    .line 202
    iget-object v4, p0, Lcom/android/phone/Ringer;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x4

    iget v6, p0, Lcom/android/phone/Ringer;->mRingIncreaseInterval:I

    int-to-long v6, v6

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 209
    :cond_7
    :goto_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J

    .line 210
    iget-object v4, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 233
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "increasing":Z
    .end local v2    # "minVolume":I
    :goto_4
    monitor-exit p0

    goto :goto_1

    .end local v3    # "ringerVolume":I
    :catchall_0
    move-exception v4

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .restart local v0    # "cr":Landroid/content/ContentResolver;
    .restart local v3    # "ringerVolume":I
    :cond_8
    move v1, v4

    .line 186
    goto :goto_2

    .line 206
    .restart local v1    # "increasing":Z
    .restart local v2    # "minVolume":I
    :cond_9
    const/4 v4, -0x1

    :try_start_4
    iput v4, p0, Lcom/android/phone/Ringer;->mRingerVolumeSetting:I

    goto :goto_3

    .line 215
    .end local v0    # "cr":Landroid/content/ContentResolver;
    .end local v1    # "increasing":Z
    .end local v2    # "minVolume":I
    :cond_a
    iget-wide v4, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    cmp-long v4, v4, v8

    if-lez v4, :cond_d

    .line 218
    sget-boolean v4, Lcom/android/phone/Ringer;->DBG:Z

    if-eqz v4, :cond_b

    .line 219
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delaying ring by "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    iget-wide v7, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J

    sub-long/2addr v5, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    .line 221
    :cond_b
    iget v4, p0, Lcom/android/phone/Ringer;->mRingerVolumeSetting:I

    if-lez v4, :cond_c

    iget v4, p0, Lcom/android/phone/Ringer;->mRingIncreaseInterval:I

    if-nez v4, :cond_c

    .line 222
    iget-object v4, p0, Lcom/android/phone/Ringer;->mHandler:Landroid/os/Handler;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 224
    :cond_c
    iget-object v4, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v5, 0x1

    iget-wide v6, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    iget-wide v8, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J

    sub-long/2addr v6, v8

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_4

    .line 230
    :cond_d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_4
.end method

.method setCustomRingtoneUri(Landroid/net/Uri;)V
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 343
    if-eqz p1, :cond_0

    .line 344
    iput-object p1, p0, Lcom/android/phone/Ringer;->mCustomRingtoneUri:Landroid/net/Uri;

    .line 346
    :cond_0
    return-void
.end method

.method shouldVibrate()Z
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 237
    iget-object v3, p0, Lcom/android/phone/Ringer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v3}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v0

    .line 238
    .local v0, "ringerMode":I
    iget-object v3, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/phone/CallFeaturesSetting;->getVibrateWhenRinging(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 239
    if-eqz v0, :cond_1

    .line 241
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 239
    goto :goto_0

    .line 241
    :cond_2
    if-eq v0, v1, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method stopRing()V
    .locals 5

    .prologue
    .line 250
    monitor-enter p0

    .line 251
    :try_start_0
    sget-boolean v1, Lcom/android/phone/Ringer;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "stopRing()..."

    invoke-static {v1}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/phone/Ringer;->mPowerManager:Landroid/os/IPowerManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IPowerManager;->setAttentionLight(ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 259
    :goto_0
    :try_start_2
    iget-object v1, p0, Lcom/android/phone/Ringer;->mHandler:Landroid/os/Handler;

    if-eqz v1, :cond_1

    .line 260
    iget-object v1, p0, Lcom/android/phone/Ringer;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 261
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/Ringer;->mHandler:Landroid/os/Handler;

    .line 263
    :cond_1
    iget v1, p0, Lcom/android/phone/Ringer;->mRingerVolumeSetting:I

    if-ltz v1, :cond_3

    .line 264
    sget-boolean v1, Lcom/android/phone/Ringer;->DBG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- stopRing: resetting ring volume to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/Ringer;->mRingerVolumeSetting:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    .line 265
    :cond_2
    iget-object v1, p0, Lcom/android/phone/Ringer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x2

    iget v3, p0, Lcom/android/phone/Ringer;->mRingerVolumeSetting:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 266
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/phone/Ringer;->mRingerVolumeSetting:I

    .line 268
    :cond_3
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    if-eqz v1, :cond_7

    .line 269
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 270
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 271
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 272
    iget-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 273
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/Ringer;->mRingThread:Lcom/android/phone/Ringer$Worker;

    .line 274
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/Ringer;->mRingHandler:Landroid/os/Handler;

    .line 275
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    .line 276
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/phone/Ringer;->mFirstRingEventTime:J

    .line 277
    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/android/phone/Ringer;->mFirstRingStartTime:J

    .line 282
    .end local v0    # "msg":Landroid/os/Message;
    :cond_4
    :goto_1
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    .line 284
    iget-object v1, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    if-eqz v1, :cond_6

    .line 285
    sget-boolean v1, Lcom/android/phone/Ringer;->DBG:Z

    if-eqz v1, :cond_5

    const-string v1, "- stopRing: cleaning up vibrator thread..."

    invoke-static {v1}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    .line 286
    :cond_5
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/phone/Ringer;->mContinueVibrating:Z

    .line 287
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/Ringer;->mVibratorThread:Lcom/android/phone/Ringer$VibratorThread;

    .line 290
    :cond_6
    iget-object v1, p0, Lcom/android/phone/Ringer;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->cancel()V

    .line 291
    monitor-exit p0

    .line 292
    return-void

    .line 279
    :cond_7
    sget-boolean v1, Lcom/android/phone/Ringer;->DBG:Z

    if-eqz v1, :cond_4

    const-string v1, "- stopRing: null mRingHandler!"

    invoke-static {v1}, Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 291
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 255
    :catch_0
    move-exception v1

    goto/16 :goto_0
.end method

.method updateRingerContextAfterRadioTechnologyChange(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    .prologue
    .line 109
    sget-boolean v0, Lcom/android/phone/Ringer;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "Ringer"

    const-string v1, "updateRingerContextAfterRadioTechnologyChange..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :cond_0
    invoke-interface {p1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    .line 111
    return-void
.end method
