.class public abstract Lcom/android/internal/policy/impl/WindowOrientationListener;
.super Ljava/lang/Object;
.source "WindowOrientationListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;
    }
.end annotation


# static fields
.field private static final LOG:Z

.field private static final TAG:Ljava/lang/String; = "WindowOrientationListener"

.field private static final USE_GRAVITY_SENSOR:Z


# instance fields
.field private mCurrentRotation:I

.field private mEnabled:Z

.field private mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mRate:I

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorEventListener:Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;

.field private mSensorManager:Landroid/hardware/SensorManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 46
    const-string v0, "debug.orientation.log"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/policy/impl/WindowOrientationListener;->LOG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 68
    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/WindowOrientationListener;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    .line 69
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;
    .param p3, "rate"    # I

    .prologue
    const/4 v2, 0x1

    .line 83
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mCurrentRotation:I

    .line 59
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mLock:Ljava/lang/Object;

    .line 84
    iput-object p2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mHandler:Landroid/os/Handler;

    .line 85
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    .line 86
    iput p3, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mRate:I

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    .line 89
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110055

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-ne v0, v2, :cond_37

    .line 91
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    const v1, 0x1fa2643

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    .line 93
    :cond_37
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_43

    .line 94
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    .line 98
    :cond_43
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_4e

    .line 100
    new-instance v0, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;

    invoke-direct {v0, p0}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;-><init>(Lcom/android/internal/policy/impl/WindowOrientationListener;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensorEventListener:Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;

    .line 102
    :cond_4e
    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/WindowOrientationListener;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/WindowOrientationListener;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200()Z
    .registers 1

    .prologue
    .line 44
    sget-boolean v0, Lcom/android/internal/policy/impl/WindowOrientationListener;->LOG:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/WindowOrientationListener;)I
    .registers 2
    .param p0, "x0"    # Lcom/android/internal/policy/impl/WindowOrientationListener;

    .prologue
    .line 44
    iget v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mCurrentRotation:I

    return v0
.end method


# virtual methods
.method public canDetectOrientation()Z
    .registers 3

    .prologue
    .line 176
    iget-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 177
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    :goto_8
    monitor-exit v1

    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_8

    .line 178
    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public disable()V
    .registers 4

    .prologue
    .line 129
    iget-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 130
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_10

    .line 131
    const-string v0, "WindowOrientationListener"

    const-string v2, "Cannot detect sensors. Invalid disable"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    monitor-exit v1

    .line 142
    :goto_f
    return-void

    .line 134
    :cond_10
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mEnabled:Z

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2a

    .line 135
    sget-boolean v0, Lcom/android/internal/policy/impl/WindowOrientationListener;->LOG:Z

    if-eqz v0, :cond_20

    .line 136
    const-string v0, "WindowOrientationListener"

    const-string v2, "WindowOrientationListener disabled"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :cond_20
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensorEventListener:Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 139
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mEnabled:Z

    .line 141
    :cond_2a
    monitor-exit v1

    goto :goto_f

    :catchall_2c
    move-exception v0

    monitor-exit v1
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_2c

    throw v0
.end method

.method public enable()V
    .registers 7

    .prologue
    .line 109
    iget-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 110
    :try_start_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_10

    .line 111
    const-string v0, "WindowOrientationListener"

    const-string v2, "Cannot detect sensors. Not enabled"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    monitor-exit v1

    .line 123
    :goto_f
    return-void

    .line 114
    :cond_10
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mEnabled:Z

    if-nez v0, :cond_34

    .line 115
    sget-boolean v0, Lcom/android/internal/policy/impl/WindowOrientationListener;->LOG:Z

    if-eqz v0, :cond_1f

    .line 116
    const-string v0, "WindowOrientationListener"

    const-string v2, "WindowOrientationListener enabled"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_1f
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensorEventListener:Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;

    # invokes: Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->resetLocked()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->access$000(Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;)V

    .line 119
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensorEventListener:Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;

    iget-object v3, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    iget v4, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mRate:I

    iget-object v5, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 120
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mEnabled:Z

    .line 122
    :cond_34
    monitor-exit v1

    goto :goto_f

    :catchall_36
    move-exception v0

    monitor-exit v1
    :try_end_38
    .catchall {:try_start_3 .. :try_end_38} :catchall_36

    throw v0
.end method

.method public getProposedRotation()I
    .registers 3

    .prologue
    .line 164
    iget-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 165
    :try_start_3
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mEnabled:Z

    if-eqz v0, :cond_f

    .line 166
    iget-object v0, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mSensorEventListener:Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/WindowOrientationListener$SensorEventListenerImpl;->getProposedRotationLocked()I

    move-result v0

    monitor-exit v1

    .line 168
    :goto_e
    return v0

    :cond_f
    const/4 v0, -0x1

    monitor-exit v1

    goto :goto_e

    .line 169
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_12

    throw v0
.end method

.method public abstract onProposedRotationChanged(I)V
.end method

.method public setCurrentRotation(I)V
    .registers 4
    .param p1, "rotation"    # I

    .prologue
    .line 150
    iget-object v1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 151
    :try_start_3
    iput p1, p0, Lcom/android/internal/policy/impl/WindowOrientationListener;->mCurrentRotation:I

    .line 152
    monitor-exit v1

    .line 153
    return-void

    .line 152
    :catchall_7
    move-exception v0

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v0
.end method
