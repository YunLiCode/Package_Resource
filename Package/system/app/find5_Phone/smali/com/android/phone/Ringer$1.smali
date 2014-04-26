.class Lcom/android/phone/Ringer$1;
.super Landroid/os/Handler;
.source "Ringer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/Ringer;->makeLooper()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/Ringer;


# direct methods
.method constructor <init>(Lcom/android/phone/Ringer;)V
    .locals 0

    .prologue
    .line 350
    iput-object p1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x2

    .line 353
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 355
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v1, v1, Lcom/android/phone/Ringer;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v3}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    .line 356
    .local v0, "ringerVolume":I
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    # getter for: Lcom/android/phone/Ringer;->mRingerVolumeSetting:I
    invoke-static {v1}, Lcom/android/phone/Ringer;->access$100(Lcom/android/phone/Ringer;)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    # getter for: Lcom/android/phone/Ringer;->mRingerVolumeSetting:I
    invoke-static {v1}, Lcom/android/phone/Ringer;->access$100(Lcom/android/phone/Ringer;)I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 357
    add-int/lit8 v0, v0, 0x1

    .line 358
    # getter for: Lcom/android/phone/Ringer;->DBG:Z
    invoke-static {}, Lcom/android/phone/Ringer;->access$200()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 359
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "increasing ring volume to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    # getter for: Lcom/android/phone/Ringer;->mRingerVolumeSetting:I
    invoke-static {v2}, Lcom/android/phone/Ringer;->access$100(Lcom/android/phone/Ringer;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/Ringer;->access$300(Ljava/lang/String;)V

    .line 362
    :cond_1
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    iget-object v1, v1, Lcom/android/phone/Ringer;->mAudioManager:Landroid/media/AudioManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v0, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 363
    iget-object v1, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    # getter for: Lcom/android/phone/Ringer;->mRingIncreaseInterval:I
    invoke-static {v1}, Lcom/android/phone/Ringer;->access$400(Lcom/android/phone/Ringer;)I

    move-result v1

    if-lez v1, :cond_0

    .line 364
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/phone/Ringer$1;->this$0:Lcom/android/phone/Ringer;

    # getter for: Lcom/android/phone/Ringer;->mRingIncreaseInterval:I
    invoke-static {v2}, Lcom/android/phone/Ringer;->access$400(Lcom/android/phone/Ringer;)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/phone/Ringer$1;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 353
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
