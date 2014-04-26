.class Lcom/android/phone/Ringer$2;
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
.method constructor <init>(Lcom/android/phone/Ringer;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 375
    iput-object p1, p0, Lcom/android/phone/Ringer$2;->this$0:Lcom/android/phone/Ringer;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v3, 0x3

    .line 378
    const/4 v0, 0x0

    .line 379
    .local v0, "r":Landroid/media/Ringtone;
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 414
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 381
    :pswitch_1
    # getter for: Lcom/android/phone/Ringer;->DBG:Z
    invoke-static {}, Lcom/android/phone/Ringer;->access$200()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "mRingHandler: PLAY_RING_ONCE..."

    # invokes: Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/Ringer;->access$300(Ljava/lang/String;)V

    .line 382
    :cond_1
    iget-object v1, p0, Lcom/android/phone/Ringer$2;->this$0:Lcom/android/phone/Ringer;

    iget-object v1, v1, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    if-nez v1, :cond_4

    invoke-virtual {p0, v3}, Lcom/android/phone/Ringer$2;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 384
    # getter for: Lcom/android/phone/Ringer;->DBG:Z
    invoke-static {}, Lcom/android/phone/Ringer;->access$200()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "creating ringtone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/Ringer$2;->this$0:Lcom/android/phone/Ringer;

    iget-object v2, v2, Lcom/android/phone/Ringer;->mCustomRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/Ringer;->access$300(Ljava/lang/String;)V

    .line 385
    :cond_2
    iget-object v1, p0, Lcom/android/phone/Ringer$2;->this$0:Lcom/android/phone/Ringer;

    iget-object v1, v1, Lcom/android/phone/Ringer;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/phone/Ringer$2;->this$0:Lcom/android/phone/Ringer;

    iget-object v2, v2, Lcom/android/phone/Ringer;->mCustomRingtoneUri:Landroid/net/Uri;

    invoke-static {v1, v2}, Landroid/media/RingtoneManager;->getRingtone(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/Ringtone;

    move-result-object v0

    .line 386
    iget-object v2, p0, Lcom/android/phone/Ringer$2;->this$0:Lcom/android/phone/Ringer;

    monitor-enter v2

    .line 387
    const/4 v1, 0x3

    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/phone/Ringer$2;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_3

    .line 388
    iget-object v1, p0, Lcom/android/phone/Ringer$2;->this$0:Lcom/android/phone/Ringer;

    iput-object v0, v1, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    .line 390
    :cond_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 392
    :cond_4
    iget-object v1, p0, Lcom/android/phone/Ringer$2;->this$0:Lcom/android/phone/Ringer;

    iget-object v0, v1, Lcom/android/phone/Ringer;->mRingtone:Landroid/media/Ringtone;

    .line 393
    if-eqz v0, :cond_0

    invoke-virtual {p0, v3}, Lcom/android/phone/Ringer$2;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Landroid/media/Ringtone;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_0

    .line 394
    invoke-static {}, Lcom/android/phone/PhoneUtils;->setAudioMode()V

    .line 395
    invoke-virtual {v0}, Landroid/media/Ringtone;->play()V

    .line 396
    iget-object v2, p0, Lcom/android/phone/Ringer$2;->this$0:Lcom/android/phone/Ringer;

    monitor-enter v2

    .line 397
    :try_start_1
    iget-object v1, p0, Lcom/android/phone/Ringer$2;->this$0:Lcom/android/phone/Ringer;

    # getter for: Lcom/android/phone/Ringer;->mFirstRingStartTime:J
    invoke-static {v1}, Lcom/android/phone/Ringer;->access$500(Lcom/android/phone/Ringer;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-gez v1, :cond_5

    .line 398
    iget-object v1, p0, Lcom/android/phone/Ringer$2;->this$0:Lcom/android/phone/Ringer;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    # setter for: Lcom/android/phone/Ringer;->mFirstRingStartTime:J
    invoke-static {v1, v3, v4}, Lcom/android/phone/Ringer;->access$502(Lcom/android/phone/Ringer;J)J

    .line 400
    :cond_5
    monitor-exit v2

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 390
    :catchall_1
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    .line 404
    :pswitch_2
    # getter for: Lcom/android/phone/Ringer;->DBG:Z
    invoke-static {}, Lcom/android/phone/Ringer;->access$200()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "mRingHandler: STOP_RING..."

    # invokes: Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/Ringer;->access$300(Ljava/lang/String;)V

    .line 405
    :cond_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local v0    # "r":Landroid/media/Ringtone;
    check-cast v0, Landroid/media/Ringtone;

    .line 406
    .restart local v0    # "r":Landroid/media/Ringtone;
    if-eqz v0, :cond_8

    .line 407
    invoke-virtual {v0}, Landroid/media/Ringtone;->stop()V

    .line 411
    :cond_7
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/Ringer$2;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->quit()V

    goto/16 :goto_0

    .line 409
    :cond_8
    # getter for: Lcom/android/phone/Ringer;->DBG:Z
    invoke-static {}, Lcom/android/phone/Ringer;->access$200()Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- STOP_RING with null ringtone!  msg = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/phone/Ringer;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/phone/Ringer;->access$300(Ljava/lang/String;)V

    goto :goto_1

    .line 379
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
