.class Lcom/android/phone/PhoneGlobals$MediaButtonBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneGlobals.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneGlobals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaButtonBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneGlobals;


# direct methods
.method private constructor <init>(Lcom/android/phone/PhoneGlobals;)V
    .locals 0

    .prologue
    .line 1582
    iput-object p1, p0, Lcom/android/phone/PhoneGlobals$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/phone/PhoneGlobals;Lcom/android/phone/PhoneGlobals$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/phone/PhoneGlobals;
    .param p2, "x1"    # Lcom/android/phone/PhoneGlobals$1;

    .prologue
    .line 1582
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneGlobals$MediaButtonBroadcastReceiver;-><init>(Lcom/android/phone/PhoneGlobals;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1585
    const-string v2, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/view/KeyEvent;

    .line 1588
    .local v1, "event":Landroid/view/KeyEvent;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    const/16 v3, 0x4f

    if-ne v2, v3, :cond_1

    .line 1591
    iget-object v2, p0, Lcom/android/phone/PhoneGlobals$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v2, v1}, Lcom/android/phone/PhoneUtils;->handleHeadsetHook(Lcom/android/internal/telephony/Phone;Landroid/view/KeyEvent;)Z

    move-result v0

    .line 1593
    .local v0, "consumed":Z
    if-eqz v0, :cond_0

    .line 1597
    iget-object v2, p0, Lcom/android/phone/PhoneGlobals$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->updateInCallScreen()V

    .line 1598
    invoke-virtual {p0}, Lcom/android/phone/PhoneGlobals$MediaButtonBroadcastReceiver;->abortBroadcast()V

    .line 1610
    .end local v0    # "consumed":Z
    :cond_0
    :goto_0
    return-void

    .line 1601
    :cond_1
    iget-object v2, p0, Lcom/android/phone/PhoneGlobals$MediaButtonBroadcastReceiver;->this$0:Lcom/android/phone/PhoneGlobals;

    iget-object v2, v2, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v2, v3, :cond_0

    .line 1607
    invoke-virtual {p0}, Lcom/android/phone/PhoneGlobals$MediaButtonBroadcastReceiver;->abortBroadcast()V

    goto :goto_0
.end method
