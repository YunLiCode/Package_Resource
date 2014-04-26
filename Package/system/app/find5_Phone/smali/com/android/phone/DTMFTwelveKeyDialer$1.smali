.class Lcom/android/phone/DTMFTwelveKeyDialer$1;
.super Landroid/os/Handler;
.source "DTMFTwelveKeyDialer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/DTMFTwelveKeyDialer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/DTMFTwelveKeyDialer;


# direct methods
.method constructor <init>(Lcom/android/phone/DTMFTwelveKeyDialer;)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lcom/android/phone/DTMFTwelveKeyDialer$1;->this$0:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 351
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 370
    :goto_0
    return-void

    .line 357
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer$1;->this$0:Lcom/android/phone/DTMFTwelveKeyDialer;

    # getter for: Lcom/android/phone/DTMFTwelveKeyDialer;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->access$100(Lcom/android/phone/DTMFTwelveKeyDialer;)Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/CallManager;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 358
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer$1;->this$0:Lcom/android/phone/DTMFTwelveKeyDialer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    goto :goto_0

    .line 363
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer$1;->this$0:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->handleBurstDtmfConfirmation()V

    goto :goto_0

    .line 367
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer$1;->this$0:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopTone()V

    goto :goto_0

    .line 351
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
