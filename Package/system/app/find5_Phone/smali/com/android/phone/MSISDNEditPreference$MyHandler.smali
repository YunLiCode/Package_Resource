.class Lcom/android/phone/MSISDNEditPreference$MyHandler;
.super Landroid/os/Handler;
.source "MSISDNEditPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/MSISDNEditPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/MSISDNEditPreference;


# direct methods
.method private constructor <init>(Lcom/android/phone/MSISDNEditPreference;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/android/phone/MSISDNEditPreference$MyHandler;->this$0:Lcom/android/phone/MSISDNEditPreference;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/MSISDNEditPreference;Lcom/android/phone/MSISDNEditPreference$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/MSISDNEditPreference;
    .param p2, "x1"    # Lcom/android/phone/MSISDNEditPreference$1;

    .prologue
    .line 120
    invoke-direct {p0, p1}, Lcom/android/phone/MSISDNEditPreference$MyHandler;-><init>(Lcom/android/phone/MSISDNEditPreference;)V

    return-void
.end method

.method private handleSetMSISDNResponse(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 133
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 135
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 145
    :cond_0
    iget-object v1, p0, Lcom/android/phone/MSISDNEditPreference$MyHandler;->this$0:Lcom/android/phone/MSISDNEditPreference;

    # getter for: Lcom/android/phone/MSISDNEditPreference;->mTcpListener:Lcom/android/phone/TimeConsumingPreferenceListener;
    invoke-static {v1}, Lcom/android/phone/MSISDNEditPreference;->access$100(Lcom/android/phone/MSISDNEditPreference;)Lcom/android/phone/TimeConsumingPreferenceListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/MSISDNEditPreference$MyHandler;->this$0:Lcom/android/phone/MSISDNEditPreference;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/phone/TimeConsumingPreferenceListener;->onFinished(Landroid/preference/Preference;Z)V

    .line 146
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 125
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 130
    :goto_0
    return-void

    .line 127
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/phone/MSISDNEditPreference$MyHandler;->handleSetMSISDNResponse(Landroid/os/Message;)V

    goto :goto_0

    .line 125
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
