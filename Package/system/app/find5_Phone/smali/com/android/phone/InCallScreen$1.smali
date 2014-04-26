.class Lcom/android/phone/InCallScreen$1;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Lcom/android/phone/InCallScreen$ResettableSensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/InCallScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mSampleIndex:I

.field private mSamples:[Z

.field private mStopped:Z

.field private mWasFaceUp:Z

.field final synthetic this$0:Lcom/android/phone/InCallScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;)V
    .locals 1

    .prologue
    .line 189
    iput-object p1, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    const/4 v0, 0x3

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/phone/InCallScreen$1;->mSamples:[Z

    return-void
.end method

.method private filterSamples()Z
    .locals 6

    .prologue
    .line 216
    const/4 v4, 0x0

    .line 217
    .local v4, "trues":I
    iget-object v0, p0, Lcom/android/phone/InCallScreen$1;->mSamples:[Z

    .local v0, "arr$":[Z
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-boolean v3, v0, v1

    .line 218
    .local v3, "sample":Z
    if-eqz v3, :cond_0

    .line 219
    add-int/lit8 v4, v4, 0x1

    .line 217
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 222
    .end local v3    # "sample":Z
    :cond_1
    const/4 v5, 0x2

    if-lt v4, v5, :cond_2

    const/4 v5, 0x1

    :goto_1
    return v5

    :cond_2
    const/4 v5, 0x0

    goto :goto_1
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .param p1, "sensor"    # Landroid/hardware/Sensor;
    .param p2, "acc"    # I

    .prologue
    .line 204
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 230
    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v5, 0x2

    aget v1, v2, v5

    .line 232
    .local v1, "z":F
    iget-boolean v2, p0, Lcom/android/phone/InCallScreen$1;->mStopped:Z

    if-eqz v2, :cond_0

    .line 259
    :goto_0
    return-void

    .line 236
    :cond_0
    iget-boolean v2, p0, Lcom/android/phone/InCallScreen$1;->mWasFaceUp:Z

    if-nez v2, :cond_2

    .line 238
    iget-object v5, p0, Lcom/android/phone/InCallScreen$1;->mSamples:[Z

    iget v6, p0, Lcom/android/phone/InCallScreen$1;->mSampleIndex:I

    const/high16 v2, 0x40e00000

    cmpl-float v2, v1, v2

    if-lez v2, :cond_1

    move v2, v3

    :goto_1
    aput-boolean v2, v5, v6

    .line 241
    invoke-direct {p0}, Lcom/android/phone/InCallScreen$1;->filterSamples()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 242
    iput-boolean v3, p0, Lcom/android/phone/InCallScreen$1;->mWasFaceUp:Z

    .line 243
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    const/4 v2, 0x3

    if-ge v0, v2, :cond_4

    .line 244
    iget-object v2, p0, Lcom/android/phone/InCallScreen$1;->mSamples:[Z

    aput-boolean v4, v2, v0

    .line 243
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0    # "i":I
    :cond_1
    move v2, v4

    .line 238
    goto :goto_1

    .line 249
    :cond_2
    iget-object v2, p0, Lcom/android/phone/InCallScreen$1;->mSamples:[Z

    iget v5, p0, Lcom/android/phone/InCallScreen$1;->mSampleIndex:I

    const/high16 v6, -0x3f200000

    cmpg-float v6, v1, v6

    if-gez v6, :cond_3

    move v4, v3

    :cond_3
    aput-boolean v4, v2, v5

    .line 252
    invoke-direct {p0}, Lcom/android/phone/InCallScreen$1;->filterSamples()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 253
    iput-boolean v3, p0, Lcom/android/phone/InCallScreen$1;->mStopped:Z

    .line 254
    iget-object v2, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    iget-object v3, p0, Lcom/android/phone/InCallScreen$1;->this$0:Lcom/android/phone/InCallScreen;

    # getter for: Lcom/android/phone/InCallScreen;->mFlipAction:I
    invoke-static {v3}, Lcom/android/phone/InCallScreen;->access$000(Lcom/android/phone/InCallScreen;)I

    move-result v3

    # invokes: Lcom/android/phone/InCallScreen;->handleAction(I)V
    invoke-static {v2, v3}, Lcom/android/phone/InCallScreen;->access$100(Lcom/android/phone/InCallScreen;I)V

    .line 258
    :cond_4
    iget v2, p0, Lcom/android/phone/InCallScreen$1;->mSampleIndex:I

    add-int/lit8 v2, v2, 0x1

    rem-int/lit8 v2, v2, 0x3

    iput v2, p0, Lcom/android/phone/InCallScreen$1;->mSampleIndex:I

    goto :goto_0
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 208
    iput-boolean v2, p0, Lcom/android/phone/InCallScreen$1;->mWasFaceUp:Z

    .line 209
    iput-boolean v2, p0, Lcom/android/phone/InCallScreen$1;->mStopped:Z

    .line 210
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    .line 211
    iget-object v1, p0, Lcom/android/phone/InCallScreen$1;->mSamples:[Z

    aput-boolean v2, v1, v0

    .line 210
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 213
    :cond_0
    return-void
.end method
