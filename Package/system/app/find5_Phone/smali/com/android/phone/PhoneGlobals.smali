.class public Lcom/android/phone/PhoneGlobals;
.super Landroid/content/ContextWrapper;
.source "PhoneGlobals.java"

# interfaces
.implements Lcom/android/phone/AccelerometerListener$OrientationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PhoneGlobals$3;,
        Lcom/android/phone/PhoneGlobals$NotificationBroadcastReceiver;,
        Lcom/android/phone/PhoneGlobals$MediaButtonBroadcastReceiver;,
        Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;,
        Lcom/android/phone/PhoneGlobals$WakeState;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field static mDockState:I

.field private static sMe:Lcom/android/phone/PhoneGlobals;

.field static sVoiceCapable:Z


# instance fields
.field blackList:Lcom/android/phone/Blacklist;

.field callController:Lcom/android/phone/CallController;

.field callerInfoCache:Lcom/android/phone/CallerInfoCache;

.field public cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

.field public cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

.field public cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

.field public cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

.field cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

.field inCallUiState:Lcom/android/phone/InCallUiState;

.field private mAccelerometerListener:Lcom/android/phone/AccelerometerListener;

.field private mBeginningCall:Z

.field mBluetoothHeadsetAudioState:I

.field mBluetoothHeadsetState:I

.field mBluetoothPhone:Landroid/bluetooth/IBluetoothHeadsetPhone;

.field private final mBluetoothPhoneConnection:Landroid/content/ServiceConnection;

.field mCM:Lcom/android/internal/telephony/CallManager;

.field mHandler:Landroid/os/Handler;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mIsHardKeyboardOpen:Z

.field private mIsHeadsetPlugged:Z

.field private mIsSimPinEnabled:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLastPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

.field private final mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

.field private mOrientation:I

.field private mPUKEntryActivity:Landroid/app/Activity;

.field private mPUKEntryProgressDialog:Landroid/app/ProgressDialog;

.field private mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPowerManagerService:Landroid/os/IPowerManager;

.field private mPreferredTtyMode:I

.field private mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mShouldRestoreMuteOnInCallResume:Z

.field mShowBluetoothIndication:Z

.field private mTtyEnabled:Z

.field private mUpdateLock:Landroid/os/UpdateLock;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mWakeState:Lcom/android/phone/PhoneGlobals$WakeState;

.field notificationMgr:Lcom/android/phone/NotificationMgr;

.field notifier:Lcom/android/phone/CallNotifier;

.field public otaUtils:Lcom/android/phone/OtaUtils;

.field phone:Lcom/android/internal/telephony/Phone;

.field phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

.field ringer:Lcom/android/phone/Ringer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 104
    sput-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    .line 181
    sput v0, Lcom/android/phone/PhoneGlobals;->mDockState:I

    .line 182
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/PhoneGlobals;->sVoiceCapable:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 434
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 178
    iput v1, p0, Lcom/android/phone/PhoneGlobals;->mBluetoothHeadsetState:I

    .line 179
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/phone/PhoneGlobals;->mBluetoothHeadsetAudioState:I

    .line 180
    iput-boolean v1, p0, Lcom/android/phone/PhoneGlobals;->mShowBluetoothIndication:Z

    .line 214
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->mLastPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 216
    sget-object v0, Lcom/android/phone/PhoneGlobals$WakeState;->SLEEP:Lcom/android/phone/PhoneGlobals$WakeState;

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->mWakeState:Lcom/android/phone/PhoneGlobals$WakeState;

    .line 225
    iput v1, p0, Lcom/android/phone/PhoneGlobals;->mOrientation:I

    .line 230
    new-instance v0, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;

    invoke-direct {v0, p0, v2}, Lcom/android/phone/PhoneGlobals$PhoneAppBroadcastReceiver;-><init>(Lcom/android/phone/PhoneGlobals;Lcom/android/phone/PhoneGlobals$1;)V

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 233
    new-instance v0, Lcom/android/phone/PhoneGlobals$MediaButtonBroadcastReceiver;

    invoke-direct {v0, p0, v2}, Lcom/android/phone/PhoneGlobals$MediaButtonBroadcastReceiver;-><init>(Lcom/android/phone/PhoneGlobals;Lcom/android/phone/PhoneGlobals$1;)V

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    .line 261
    iput v1, p0, Lcom/android/phone/PhoneGlobals;->mPreferredTtyMode:I

    .line 285
    new-instance v0, Lcom/android/phone/PhoneGlobals$1;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneGlobals$1;-><init>(Lcom/android/phone/PhoneGlobals;)V

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    .line 1884
    new-instance v0, Lcom/android/phone/PhoneGlobals$2;

    invoke-direct {v0, p0}, Lcom/android/phone/PhoneGlobals$2;-><init>(Lcom/android/phone/PhoneGlobals;)V

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->mBluetoothPhoneConnection:Landroid/content/ServiceConnection;

    .line 435
    sput-object p0, Lcom/android/phone/PhoneGlobals;->sMe:Lcom/android/phone/PhoneGlobals;

    .line 436
    return-void
.end method

.method static synthetic access$1002(Lcom/android/phone/PhoneGlobals;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/PhoneGlobals;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/android/phone/PhoneGlobals;->mIsHeadsetPlugged:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/phone/PhoneGlobals;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/PhoneGlobals;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/android/phone/PhoneGlobals;->initForNewRadioTechnology()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/phone/PhoneGlobals;Landroid/content/Intent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/PhoneGlobals;
    .param p1, "x1"    # Landroid/content/Intent;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneGlobals;->handleServiceStateChanged(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/AccelerometerListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/PhoneGlobals;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mAccelerometerListener:Lcom/android/phone/AccelerometerListener;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/phone/PhoneGlobals;)Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/PhoneGlobals;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mLastPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    return-object v0
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 82
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/phone/PhoneGlobals;Landroid/os/AsyncResult;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/PhoneGlobals;
    .param p1, "x1"    # Landroid/os/AsyncResult;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneGlobals;->onMMIComplete(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/PhoneGlobals;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/PhoneGlobals;

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/android/phone/PhoneGlobals;->mTtyEnabled:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/phone/PhoneGlobals;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/PhoneGlobals;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mPUKEntryActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/phone/PhoneGlobals;Landroid/app/Activity;)Landroid/app/Activity;
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/PhoneGlobals;
    .param p1, "x1"    # Landroid/app/Activity;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/phone/PhoneGlobals;->mPUKEntryActivity:Landroid/app/Activity;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/phone/PhoneGlobals;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/PhoneGlobals;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/phone/PhoneGlobals;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/PhoneGlobals;
    .param p1, "x1"    # Landroid/app/ProgressDialog;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/android/phone/PhoneGlobals;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$700(Lcom/android/phone/PhoneGlobals;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/PhoneGlobals;

    .prologue
    .line 82
    iget v0, p0, Lcom/android/phone/PhoneGlobals;->mPreferredTtyMode:I

    return v0
.end method

.method static synthetic access$702(Lcom/android/phone/PhoneGlobals;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/PhoneGlobals;
    .param p1, "x1"    # I

    .prologue
    .line 82
    iput p1, p0, Lcom/android/phone/PhoneGlobals;->mPreferredTtyMode:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/phone/PhoneGlobals;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/PhoneGlobals;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneGlobals;->handleQueryTTYModeResponse(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/phone/PhoneGlobals;Landroid/os/Message;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/PhoneGlobals;
    .param p1, "x1"    # Landroid/os/Message;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/android/phone/PhoneGlobals;->handleSetTTYModeResponse(Landroid/os/Message;)V

    return-void
.end method

.method static createCallLogIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 712
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 713
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "vnd.android.cursor.dir/calls"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 714
    return-object v0
.end method

.method static createHangUpOngoingCallPendingIntent(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 748
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.ACTION_HANG_UP_ONGOING_CALL"

    const/4 v2, 0x0

    const-class v3, Lcom/android/phone/PhoneGlobals$NotificationBroadcastReceiver;

    invoke-direct {v0, v1, v2, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 750
    invoke-static {p0, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method static createInCallIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 724
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 725
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10840000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 728
    const-string v1, "com.android.phone"

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getCallScreenClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 729
    return-object v0
.end method

.method static createInCallIntent(Z)Landroid/content/Intent;
    .locals 2
    .param p0, "showDialpad"    # Z

    .prologue
    .line 738
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->createInCallIntent()Landroid/content/Intent;

    move-result-object v0

    .line 739
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.android.phone.ShowDialpad"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 740
    return-object v0
.end method

.method static getCallBackPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 754
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.ACTION_CALL_BACK_FROM_NOTIFICATION"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-class v3, Lcom/android/phone/PhoneGlobals$NotificationBroadcastReceiver;

    invoke-direct {v0, v1, v2, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 757
    invoke-static {p0, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method private static getCallScreenClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 777
    const-class v0, Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getInstance()Lcom/android/phone/PhoneGlobals;
    .locals 2

    .prologue
    .line 670
    sget-object v0, Lcom/android/phone/PhoneGlobals;->sMe:Lcom/android/phone/PhoneGlobals;

    if-nez v0, :cond_0

    .line 671
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No PhoneGlobals here!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 673
    :cond_0
    sget-object v0, Lcom/android/phone/PhoneGlobals;->sMe:Lcom/android/phone/PhoneGlobals;

    return-object v0
.end method

.method static getInstanceIfPrimary()Lcom/android/phone/PhoneGlobals;
    .locals 1

    .prologue
    .line 681
    sget-object v0, Lcom/android/phone/PhoneGlobals;->sMe:Lcom/android/phone/PhoneGlobals;

    return-object v0
.end method

.method static getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    .prologue
    .line 688
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static getSendSmsFromNotificationPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 762
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.ACTION_SEND_SMS_FROM_NOTIFICATION"

    const-string v2, "smsto"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-class v3, Lcom/android/phone/PhoneGlobals$NotificationBroadcastReceiver;

    invoke-direct {v0, v1, v2, p0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    .line 765
    invoke-static {p0, v4, v0, v4}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method static getUnblockNumberFromNotificationPendingIntent(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 770
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.REMOVE_BLACKLIST"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 771
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "number"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 772
    const-string v1, "fromNotification"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 773
    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private handleQueryTTYModeResponse(Landroid/os/Message;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1752
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1753
    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v2, :cond_1

    .line 1754
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneApp"

    const-string v1, "handleQueryTTYModeResponse: Error getting TTY state."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1785
    :cond_0
    :goto_0
    return-void

    .line 1756
    :cond_1
    sget-boolean v2, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v2, :cond_2

    const-string v2, "PhoneApp"

    const-string v3, "handleQueryTTYModeResponse: TTY enable state successfully queried."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1759
    :cond_2
    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, [I

    check-cast v0, [I

    aget v2, v0, v1

    .line 1760
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_3

    const-string v0, "PhoneApp"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleQueryTTYModeResponse:ttymode="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1762
    :cond_3
    new-instance v3, Landroid/content/Intent;

    const-string v0, "com.android.internal.telephony.cdma.intent.action.TTY_ENABLED_CHANGE"

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1763
    const-string v4, "ttyEnabled"

    if-eqz v2, :cond_4

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1764
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v3, v0}, Lcom/android/phone/PhoneGlobals;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1767
    packed-switch v2, :pswitch_data_0

    .line 1779
    const-string v0, "tty_off"

    move-object v1, v0

    .line 1782
    :goto_2
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1783
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tty_mode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 1763
    goto :goto_1

    .line 1769
    :pswitch_0
    const-string v0, "tty_full"

    move-object v1, v0

    .line 1770
    goto :goto_2

    .line 1772
    :pswitch_1
    const-string v0, "tty_vco"

    move-object v1, v0

    .line 1773
    goto :goto_2

    .line 1775
    :pswitch_2
    const-string v0, "tty_hco"

    move-object v1, v0

    .line 1776
    goto :goto_2

    .line 1767
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private handleServiceStateChanged(Landroid/content/Intent;)V
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1673
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/ServiceState;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/ServiceState;

    move-result-object v0

    .line 1675
    .local v0, "ss":Landroid/telephony/ServiceState;
    if-eqz v0, :cond_0

    .line 1676
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v1

    .line 1677
    .local v1, "state":I
    iget-object v2, p0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    invoke-virtual {v2, v1}, Lcom/android/phone/NotificationMgr;->updateNetworkSelection(I)V

    .line 1679
    .end local v1    # "state":I
    :cond_0
    return-void
.end method

.method private handleSetTTYModeResponse(Landroid/os/Message;)V
    .locals 4

    .prologue
    .line 1788
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 1790
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_0

    .line 1791
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSetTTYModeResponse: Error setting TTY mode, ar.exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1795
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->queryTTYMode(Landroid/os/Message;)V

    .line 1796
    return-void
.end method

.method private initForNewRadioTechnology()V
    .locals 4

    .prologue
    .line 1313
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneApp"

    const-string v1, "initForNewRadioTechnology..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1317
    new-instance v0, Lcom/android/phone/CdmaPhoneCallState;

    invoke-direct {v0}, Lcom/android/phone/CdmaPhoneCallState;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    .line 1318
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->CdmaPhoneCallStateInit()V

    .line 1320
    :cond_1
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1322
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-nez v0, :cond_2

    .line 1323
    new-instance v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    invoke-direct {v0}, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    .line 1325
    :cond_2
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    if-nez v0, :cond_3

    .line 1326
    new-instance v0, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    invoke-direct {v0}, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    .line 1328
    :cond_3
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-nez v0, :cond_4

    .line 1329
    new-instance v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    invoke-direct {v0}, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    .line 1331
    :cond_4
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    if-nez v0, :cond_5

    .line 1332
    new-instance v0, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    invoke-direct {v0}, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    .line 1339
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->ringer:Lcom/android/phone/Ringer;

    iget-object v1, p0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v1}, Lcom/android/phone/Ringer;->updateRingerContextAfterRadioTechnologyChange(Lcom/android/internal/telephony/Phone;)V

    .line 1340
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->updateCallNotifierRegistrationsAfterRadioTechnologyChange()V

    .line 1341
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mBluetoothPhone:Landroid/bluetooth/IBluetoothHeadsetPhone;

    if-eqz v0, :cond_6

    .line 1343
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mBluetoothPhone:Landroid/bluetooth/IBluetoothHeadsetPhone;

    invoke-interface {v0}, Landroid/bluetooth/IBluetoothHeadsetPhone;->updateBtHandsfreeAfterRadioTechnologyChange()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1348
    :cond_6
    :goto_1
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_7

    .line 1349
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->updateAfterRadioTechnologyChange()V

    .line 1353
    :cond_7
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 1354
    if-eqz v0, :cond_9

    .line 1355
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_8

    const-string v1, "PhoneApp"

    const-string v2, "Update registration for ICC status..."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1358
    :cond_8
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/internal/telephony/IccCard;->registerForNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1360
    :cond_9
    return-void

    .line 1336
    :cond_a
    invoke-virtual {p0}, Lcom/android/phone/PhoneGlobals;->clearOtaState()V

    goto :goto_0

    .line 1344
    :catch_0
    move-exception v0

    .line 1345
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private onMMIComplete(Landroid/os/AsyncResult;)V
    .locals 4
    .param p1, "r"    # Landroid/os/AsyncResult;

    .prologue
    const/4 v3, 0x0

    .line 1308
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/MmiCode;

    .line 1309
    .local v0, "mmiCode":Lcom/android/internal/telephony/MmiCode;
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-static {v1, v2, v0, v3, v3}, Lcom/android/phone/PhoneUtils;->displayMMIComplete(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/AlertDialog;)V

    .line 1310
    return-void
.end method

.method private static shouldShowBluetoothIndication(IILcom/android/internal/telephony/CallManager;)Z
    .locals 5
    .param p0, "bluetoothState"    # I
    .param p1, "bluetoothAudioState"    # I
    .param p2, "cm"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1435
    sget-object v2, Lcom/android/phone/PhoneGlobals$3;->$SwitchMap$com$android$internal$telephony$PhoneConstants$State:[I

    invoke-virtual {p2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneConstants$State;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 1453
    :cond_0
    :goto_0
    return v0

    .line 1441
    :pswitch_0
    if-ne p0, v4, :cond_1

    const/16 v2, 0xc

    if-eq p1, v2, :cond_0

    :cond_1
    move v0, v1

    goto :goto_0

    .line 1450
    :pswitch_1
    if-eq p0, v4, :cond_0

    move v0, v1

    goto :goto_0

    .line 1435
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public clearInCallScreenMode()V
    .locals 2

    .prologue
    .line 1721
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneApp"

    const-string v1, "- clearInCallScreenMode ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_1

    .line 1723
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->resetInCallScreenMode()V

    .line 1725
    :cond_1
    return-void
.end method

.method public clearOtaState()V
    .locals 2

    .prologue
    .line 1701
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneApp"

    const-string v1, "- clearOtaState ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1702
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_1

    .line 1704
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->otaUtils:Lcom/android/phone/OtaUtils;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/OtaUtils;->cleanOtaScreen(Z)V

    .line 1705
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "PhoneApp"

    const-string v1, "  - clearOtaState clears OTA screen"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1707
    :cond_1
    return-void
.end method

.method public createPhoneEndIntentUsingCallOrigin()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 1865
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->latestActiveCallOrigin:Ljava/lang/String;

    const-string v1, "com.android.contacts.activities.DialtactsActivity"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1872
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1873
    const-string v1, "com.android.contacts"

    iget-object v2, p0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v2, v2, Lcom/android/phone/InCallUiState;->latestActiveCallOrigin:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1879
    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->createCallLogIntent()Landroid/content/Intent;

    move-result-object v0

    goto :goto_0
.end method

.method dismissCallScreen()V
    .locals 2

    .prologue
    .line 877
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_1

    .line 878
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isOtaCallInActiveState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isOtaCallInEndState()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_UNDEFINED:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-eq v0, v1, :cond_2

    .line 887
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/PhoneGlobals;->wakeUpScreen()V

    .line 890
    invoke-virtual {p0}, Lcom/android/phone/PhoneGlobals;->displayCallScreen()V

    .line 892
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->handleOtaCallEnd()V

    .line 898
    :cond_1
    :goto_0
    return-void

    .line 895
    :cond_2
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->finish()V

    goto :goto_0
.end method

.method public dismissOtaDialogs()V
    .locals 2

    .prologue
    .line 1711
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneApp"

    const-string v1, "- dismissOtaDialogs ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1712
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_1

    .line 1714
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/OtaUtils;->dismissAllOtaDialogs()V

    .line 1715
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "PhoneApp"

    const-string v1, "  - dismissOtaDialogs clears OTA dialogs"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1717
    :cond_1
    return-void
.end method

.method displayCallScreen()V
    .locals 5

    .prologue
    .line 788
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->sVoiceCapable:Z

    if-nez v1, :cond_0

    .line 789
    const-string v1, "PhoneApp"

    const-string v2, "displayCallScreen() not allowed: non-voice-capable device"

    new-instance v3, Ljava/lang/Throwable;

    const-string v4, "stack dump"

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 804
    :goto_0
    return-void

    .line 796
    :cond_0
    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->createInCallIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/PhoneGlobals;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 803
    :goto_1
    invoke-static {}, Lcom/android/phone/Profiler;->callScreenRequested()V

    goto :goto_0

    .line 797
    :catch_0
    move-exception v0

    .line 801
    .local v0, "e":Landroid/content/ActivityNotFoundException;
    const-string v1, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayCallScreen: transition to InCallScreen failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method getBluetoothPhoneService()Landroid/bluetooth/IBluetoothHeadsetPhone;
    .locals 1

    .prologue
    .line 696
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mBluetoothPhone:Landroid/bluetooth/IBluetoothHeadsetPhone;

    return-object v0
.end method

.method getKeyguardManager()Landroid/app/KeyguardManager;
    .locals 1

    .prologue
    .line 1303
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method getPUKEntryActivity()Landroid/app/Activity;
    .locals 1

    .prologue
    .line 954
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mPUKEntryActivity:Landroid/app/Activity;

    return-object v0
.end method

.method getPhoneState()Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 1

    .prologue
    .line 1284
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mLastPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    return-object v0
.end method

.method getRestoreMuteOnInCallResume()Z
    .locals 1

    .prologue
    .line 282
    iget-boolean v0, p0, Lcom/android/phone/PhoneGlobals;->mShouldRestoreMuteOnInCallResume:Z

    return v0
.end method

.method getRinger()Lcom/android/phone/Ringer;
    .locals 1

    .prologue
    .line 692
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->ringer:Lcom/android/phone/Ringer;

    return-object v0
.end method

.method getUpdateLock()Landroid/os/UpdateLock;
    .locals 1

    .prologue
    .line 1291
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mUpdateLock:Landroid/os/UpdateLock;

    return-object v0
.end method

.method handleOtaspDisconnect()V
    .locals 2

    .prologue
    .line 925
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneApp"

    const-string v1, "handleOtaspDisconnect()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->otaUtils:Lcom/android/phone/OtaUtils;

    if-nez v0, :cond_1

    .line 930
    const-string v0, "PhoneApp"

    const-string v1, "handleOtaspDisconnect: otaUtils is null!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 935
    :goto_0
    return-void

    .line 934
    :cond_1
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/OtaUtils;->onOtaspDisconnect()V

    goto :goto_0
.end method

.method handleOtaspEvent(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 907
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleOtaspEvent(message "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->otaUtils:Lcom/android/phone/OtaUtils;

    if-nez v0, :cond_1

    .line 912
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleOtaEvents: got an event but otaUtils is null! message = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 918
    :goto_0
    return-void

    .line 917
    :cond_1
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals;->otaUtils:Lcom/android/phone/OtaUtils;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    invoke-virtual {v1, v0}, Lcom/android/phone/OtaUtils;->onOtaProvisionStatusChanged(Landroid/os/AsyncResult;)V

    goto :goto_0
.end method

.method isBluetoothHeadsetAudioOn()Z
    .locals 2

    .prologue
    .line 700
    iget v0, p0, Lcom/android/phone/PhoneGlobals;->mBluetoothHeadsetAudioState:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isHeadsetPlugged()Z
    .locals 1

    .prologue
    .line 1369
    iget-boolean v0, p0, Lcom/android/phone/PhoneGlobals;->mIsHeadsetPlugged:Z

    return v0
.end method

.method public isOtaCallInActiveState()Z
    .locals 2

    .prologue
    .line 1682
    const/4 v0, 0x0

    .line 1683
    .local v0, "otaCallActive":Z
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v1, :cond_0

    .line 1684
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->isOtaCallInActiveState()Z

    move-result v0

    .line 1687
    :cond_0
    return v0
.end method

.method isShowingCallScreen()Z
    .locals 1

    .prologue
    .line 834
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 835
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isForegroundActivity()Z

    move-result v0

    goto :goto_0
.end method

.method isShowingCallScreenForProximity()Z
    .locals 1

    .prologue
    .line 863
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 864
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isForegroundActivityForProximity()Z

    move-result v0

    goto :goto_0
.end method

.method isSimPinEnabled()Z
    .locals 1

    .prologue
    .line 807
    iget-boolean v0, p0, Lcom/android/phone/PhoneGlobals;->mIsSimPinEnabled:Z

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    const/4 v1, 0x1

    .line 656
    iget v0, p1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v0, v1, :cond_0

    .line 657
    iput-boolean v1, p0, Lcom/android/phone/PhoneGlobals;->mIsHardKeyboardOpen:Z

    .line 663
    :goto_0
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneGlobals;->updateProximitySensorMode(Lcom/android/internal/telephony/PhoneConstants$State;)V

    .line 664
    return-void

    .line 659
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/PhoneGlobals;->mIsHardKeyboardOpen:Z

    goto :goto_0
.end method

.method public onCreate()V
    .locals 7

    .prologue
    const/16 v6, 0x20

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 441
    invoke-virtual {p0}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 446
    invoke-virtual {p0}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1110035

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    sput-boolean v0, Lcom/android/phone/PhoneGlobals;->sVoiceCapable:Z

    .line 453
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    if-nez v0, :cond_7

    .line 455
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->makeDefaultPhones(Landroid/content/Context;)V

    .line 458
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    .line 461
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/phone/TelephonyDebugService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 462
    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneGlobals;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 464
    invoke-static {}, Lcom/android/internal/telephony/CallManager;->getInstance()Lcom/android/internal/telephony/CallManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 465
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v2, p0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/CallManager;->registerPhone(Lcom/android/internal/telephony/Phone;)Z

    .line 469
    invoke-static {p0}, Lcom/android/phone/NotificationMgr;->init(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/NotificationMgr;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    .line 471
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {p0, v0}, Lcom/android/phone/PhoneInterfaceManager;->init(Lcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/Phone;)Lcom/android/phone/PhoneInterfaceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->phoneMgr:Lcom/android/phone/PhoneInterfaceManager;

    .line 473
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 475
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 477
    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    .line 479
    new-instance v0, Lcom/android/phone/CdmaPhoneCallState;

    invoke-direct {v0}, Lcom/android/phone/CdmaPhoneCallState;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    .line 480
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v0}, Lcom/android/phone/CdmaPhoneCallState;->CdmaPhoneCallStateInit()V

    .line 483
    :cond_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 486
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/phone/BluetoothPhoneService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneGlobals;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 487
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/phone/BluetoothPhoneService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/android/phone/PhoneGlobals;->mBluetoothPhoneConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0, v2, v5}, Lcom/android/phone/PhoneGlobals;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 494
    :goto_0
    invoke-static {p0}, Lcom/android/phone/Ringer;->init(Landroid/content/Context;)Lcom/android/phone/Ringer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->ringer:Lcom/android/phone/Ringer;

    .line 496
    new-instance v0, Lcom/android/phone/Blacklist;

    invoke-direct {v0, p0}, Lcom/android/phone/Blacklist;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->blackList:Lcom/android/phone/Blacklist;

    .line 499
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->mPowerManager:Landroid/os/PowerManager;

    .line 500
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mPowerManager:Landroid/os/PowerManager;

    const/16 v2, 0x1a

    const-string v3, "PhoneApp"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 502
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mPowerManager:Landroid/os/PowerManager;

    const v2, 0x20000001

    const-string v3, "PhoneApp"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 505
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0, v6}, Landroid/os/PowerManager;->isWakeLockLevelSupported(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 507
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mPowerManager:Landroid/os/PowerManager;

    const-string v2, "PhoneApp"

    invoke-virtual {v0, v6, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 510
    :cond_1
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate: mProximityWakeLock: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/PhoneGlobals;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/PhoneGlobals;->proximitySensorModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 514
    new-instance v0, Lcom/android/phone/AccelerometerListener;

    invoke-direct {v0, p0, p0}, Lcom/android/phone/AccelerometerListener;-><init>(Landroid/content/Context;Lcom/android/phone/AccelerometerListener$OrientationListener;)V

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->mAccelerometerListener:Lcom/android/phone/AccelerometerListener;

    .line 517
    :cond_3
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 521
    const-string v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->mPowerManagerService:Landroid/os/IPowerManager;

    .line 526
    new-instance v0, Landroid/os/UpdateLock;

    const-string v2, "phone"

    invoke-direct {v0, v2}, Landroid/os/UpdateLock;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->mUpdateLock:Landroid/os/UpdateLock;

    .line 528
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_4

    const-string v0, "PhoneApp"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCreate: mUpdateLock: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/PhoneGlobals;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :cond_4
    invoke-static {p0}, Lcom/android/phone/CallController;->init(Lcom/android/phone/PhoneGlobals;)Lcom/android/phone/CallController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->callController:Lcom/android/phone/CallController;

    .line 536
    invoke-static {p0}, Lcom/android/phone/InCallUiState;->init(Landroid/content/Context;)Lcom/android/phone/InCallUiState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    .line 542
    invoke-static {p0}, Lcom/android/phone/CallerInfoCache;->init(Landroid/content/Context;)Lcom/android/phone/CallerInfoCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->callerInfoCache:Lcom/android/phone/CallerInfoCache;

    .line 548
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v2, p0, Lcom/android/phone/PhoneGlobals;->ringer:Lcom/android/phone/Ringer;

    new-instance v3, Lcom/android/phone/CallLogAsync;

    invoke-direct {v3}, Lcom/android/phone/CallLogAsync;-><init>()V

    invoke-static {p0, v0, v2, v3}, Lcom/android/phone/CallNotifier;->init(Lcom/android/phone/PhoneGlobals;Lcom/android/internal/telephony/Phone;Lcom/android/phone/Ringer;Lcom/android/phone/CallLogAsync;)Lcom/android/phone/CallNotifier;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    .line 551
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 552
    if-eqz v0, :cond_5

    .line 554
    iget-object v2, p0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x3

    invoke-interface {v0, v2, v3, v4}, Lcom/android/internal/telephony/IccCard;->registerForNetworkLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 558
    :cond_5
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v2, p0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x34

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/telephony/CallManager;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 561
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->initializeConnectionHandler(Lcom/android/internal/telephony/CallManager;)V

    .line 564
    invoke-virtual {p0}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b0004

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/PhoneGlobals;->mTtyEnabled:Z

    .line 567
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 569
    const-string v2, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 570
    const-string v2, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 571
    const-string v2, "android.intent.action.ANY_DATA_STATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 572
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 573
    const-string v2, "android.intent.action.DOCK_EVENT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 574
    const-string v2, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 575
    const-string v2, "android.intent.action.RADIO_TECHNOLOGY"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 576
    const-string v2, "android.intent.action.SERVICE_STATE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 577
    const-string v2, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 578
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 579
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 580
    iget-boolean v2, p0, Lcom/android/phone/PhoneGlobals;->mTtyEnabled:Z

    if-eqz v2, :cond_6

    .line 581
    const-string v2, "com.android.internal.telephony.cdma.intent.action.TTY_PREFERRED_MODE_CHANGE"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 583
    :cond_6
    const-string v2, "android.media.RINGER_MODE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 584
    const-string v2, "com.android.phone.REMOVE_BLACKLIST"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 585
    iget-object v2, p0, Lcom/android/phone/PhoneGlobals;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/android/phone/PhoneGlobals;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 590
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 597
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 599
    iget-object v2, p0, Lcom/android/phone/PhoneGlobals;->mMediaButtonReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/android/phone/PhoneGlobals;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 601
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 602
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/android/phone/PhoneGlobals;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/android/phone/PhoneGlobals$MediaButtonBroadcastReceiver;

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->registerMediaButtonEventReceiverForCalls(Landroid/content/ComponentName;)V

    .line 606
    const v0, 0x7f06000c

    invoke-static {p0, v0, v5}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 608
    const v0, 0x7f060001

    invoke-static {p0, v0, v5}, Landroid/preference/PreferenceManager;->setDefaultValues(Landroid/content/Context;IZ)V

    .line 613
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setAudioMode(Lcom/android/internal/telephony/CallManager;)V

    .line 616
    :cond_7
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/internal/telephony/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 617
    new-instance v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    invoke-direct {v0}, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    .line 618
    new-instance v0, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    invoke-direct {v0}, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    .line 619
    new-instance v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    invoke-direct {v0}, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    .line 620
    new-instance v0, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    invoke-direct {v0}, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;-><init>()V

    iput-object v0, p0, Lcom/android/phone/PhoneGlobals;->cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    .line 624
    :cond_8
    const-string v0, "content://icc/adn"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    .line 627
    iput-boolean v5, p0, Lcom/android/phone/PhoneGlobals;->mShouldRestoreMuteOnInCallResume:Z

    .line 636
    iget-boolean v0, p0, Lcom/android/phone/PhoneGlobals;->mTtyEnabled:Z

    if-eqz v0, :cond_9

    .line 637
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "preferred_tty_mode"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/PhoneGlobals;->mPreferredTtyMode:I

    .line 641
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xe

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 644
    :cond_9
    invoke-virtual {p0}, Lcom/android/phone/PhoneGlobals;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0005

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 645
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hearing_aid"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 648
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 649
    const-string v2, "HACSetting"

    if-eqz v1, :cond_c

    const-string v1, "ON"

    :goto_1
    invoke-virtual {v0, v2, v1}, Landroid/media/AudioManager;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    :cond_a
    return-void

    .line 491
    :cond_b
    iput-object v4, p0, Lcom/android/phone/PhoneGlobals;->mBluetoothPhone:Landroid/bluetooth/IBluetoothHeadsetPhone;

    goto/16 :goto_0

    .line 649
    :cond_c
    const-string v1, "OFF"

    goto :goto_1
.end method

.method public orientationChanged(I)V
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 1222
    iput p1, p0, Lcom/android/phone/PhoneGlobals;->mOrientation:I

    .line 1223
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneGlobals;->updateProximitySensorMode(Lcom/android/internal/telephony/PhoneConstants$State;)V

    .line 1224
    return-void
.end method

.method pokeUserActivity()V
    .locals 4

    .prologue
    .line 1113
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 1114
    return-void
.end method

.method proximitySensorModeEnabled()Z
    .locals 1

    .prologue
    .line 1299
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method requestWakeState(Lcom/android/phone/PhoneGlobals$WakeState;)V
    .locals 2
    .param p1, "ws"    # Lcom/android/phone/PhoneGlobals$WakeState;

    .prologue
    .line 985
    monitor-enter p0

    .line 986
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mWakeState:Lcom/android/phone/PhoneGlobals$WakeState;

    if-eq v0, p1, :cond_2

    .line 987
    sget-object v0, Lcom/android/phone/PhoneGlobals$3;->$SwitchMap$com$android$phone$PhoneGlobals$WakeState:[I

    invoke-virtual {p1}, Lcom/android/phone/PhoneGlobals$WakeState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 1007
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1008
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1010
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1011
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1015
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/android/phone/PhoneGlobals;->mWakeState:Lcom/android/phone/PhoneGlobals$WakeState;

    .line 1017
    :cond_2
    monitor-exit p0

    .line 1018
    return-void

    .line 991
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 992
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 993
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_0

    .line 1017
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 999
    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1000
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1001
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mPartialWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 987
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public resetLatestActiveCallOrigin()V
    .locals 8

    .prologue
    .line 1839
    iget-object v4, p0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-wide v0, v4, Lcom/android/phone/InCallUiState;->latestActiveCallOriginTimeStamp:J

    .line 1840
    .local v0, "callOriginTimestamp":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1845
    .local v2, "currentTimestamp":J
    iget-object v4, p0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-wide v4, v4, Lcom/android/phone/InCallUiState;->latestActiveCallOriginTimeStamp:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    sub-long v4, v2, v0

    const-wide/16 v6, 0x7530

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 1852
    iget-object v4, p0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iput-wide v2, v4, Lcom/android/phone/InCallUiState;->latestActiveCallOriginTimeStamp:J

    .line 1857
    :goto_0
    return-void

    .line 1855
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/phone/PhoneGlobals;->setLatestActiveCallOrigin(Ljava/lang/String;)V

    goto :goto_0
.end method

.method setBeginningCall(Z)V
    .locals 1
    .param p1, "beginning"    # Z

    .prologue
    .line 1124
    iput-boolean p1, p0, Lcom/android/phone/PhoneGlobals;->mBeginningCall:Z

    .line 1126
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneGlobals;->updateProximitySensorMode(Lcom/android/internal/telephony/PhoneConstants$State;)V

    .line 1127
    return-void
.end method

.method setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .param p1, "inCallScreen"    # Lcom/android/phone/InCallScreen;

    .prologue
    .line 819
    iput-object p1, p0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 820
    return-void
.end method

.method public setLatestActiveCallOrigin(Ljava/lang/String;)V
    .locals 3
    .param p1, "callOrigin"    # Ljava/lang/String;

    .prologue
    .line 1817
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iput-object p1, v0, Lcom/android/phone/InCallUiState;->latestActiveCallOrigin:Ljava/lang/String;

    .line 1818
    if-eqz p1, :cond_0

    .line 1819
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/phone/InCallUiState;->latestActiveCallOriginTimeStamp:J

    .line 1823
    :goto_0
    return-void

    .line 1821
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/android/phone/InCallUiState;->latestActiveCallOriginTimeStamp:J

    goto :goto_0
.end method

.method setPukEntryActivity(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 950
    iput-object p1, p0, Lcom/android/phone/PhoneGlobals;->mPUKEntryActivity:Landroid/app/Activity;

    .line 951
    return-void
.end method

.method setPukEntryProgressDialog(Landroid/app/ProgressDialog;)V
    .locals 0
    .param p1, "dialog"    # Landroid/app/ProgressDialog;

    .prologue
    .line 967
    iput-object p1, p0, Lcom/android/phone/PhoneGlobals;->mPUKEntryProgressDialog:Landroid/app/ProgressDialog;

    .line 968
    return-void
.end method

.method setRestoreMuteOnInCallResume(Z)V
    .locals 0
    .param p1, "mode"    # Z

    .prologue
    .line 273
    iput-boolean p1, p0, Lcom/android/phone/PhoneGlobals;->mShouldRestoreMuteOnInCallResume:Z

    .line 274
    return-void
.end method

.method showBluetoothIndication()Z
    .locals 1

    .prologue
    .line 1384
    iget-boolean v0, p0, Lcom/android/phone/PhoneGlobals;->mShowBluetoothIndication:Z

    return v0
.end method

.method updateBluetoothIndication(Z)V
    .locals 3

    .prologue
    .line 1398
    iget v0, p0, Lcom/android/phone/PhoneGlobals;->mBluetoothHeadsetState:I

    iget v1, p0, Lcom/android/phone/PhoneGlobals;->mBluetoothHeadsetAudioState:I

    iget-object v2, p0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneGlobals;->shouldShowBluetoothIndication(IILcom/android/internal/telephony/CallManager;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/PhoneGlobals;->mShowBluetoothIndication:Z

    .line 1401
    if-eqz p1, :cond_2

    .line 1404
    invoke-virtual {p0}, Lcom/android/phone/PhoneGlobals;->isShowingCallScreen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->requestUpdateBluetoothIndication()V

    .line 1405
    :cond_0
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "PhoneApp"

    const-string v1, "- updating in-call notification for BT state change..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1406
    :cond_1
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1410
    :cond_2
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneGlobals;->updateProximitySensorMode(Lcom/android/internal/telephony/PhoneConstants$State;)V

    .line 1411
    return-void
.end method

.method updateInCallScreen()V
    .locals 2

    .prologue
    .line 1742
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneApp"

    const-string v1, "- updateInCallScreen()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1743
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_1

    .line 1747
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->requestUpdateScreen()V

    .line 1749
    :cond_1
    return-void
.end method

.method updatePhoneState(Lcom/android/internal/telephony/PhoneConstants$State;)V
    .locals 5
    .param p1, "state"    # Lcom/android/internal/telephony/PhoneConstants$State;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1233
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals;->mLastPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq p1, v1, :cond_3

    .line 1235
    invoke-static {p0}, Lcom/android/phone/PhoneUtils$PhoneSettings;->getVoiceQualityParameter(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1236
    .local v0, "voiceQualParam":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1237
    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 1240
    :cond_0
    iput-object p1, p0, Lcom/android/phone/PhoneGlobals;->mLastPhoneState:Lcom/android/internal/telephony/PhoneConstants$State;

    .line 1241
    invoke-virtual {p0, p1}, Lcom/android/phone/PhoneGlobals;->updateProximitySensorMode(Lcom/android/internal/telephony/PhoneConstants$State;)V

    .line 1247
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq p1, v1, :cond_4

    .line 1252
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v1}, Landroid/os/UpdateLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1253
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v1}, Landroid/os/UpdateLock;->acquire()V

    .line 1265
    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals;->mAccelerometerListener:Lcom/android/phone/AccelerometerListener;

    if-eqz v1, :cond_2

    .line 1267
    iput v3, p0, Lcom/android/phone/PhoneGlobals;->mOrientation:I

    .line 1268
    iget-object v4, p0, Lcom/android/phone/PhoneGlobals;->mAccelerometerListener:Lcom/android/phone/AccelerometerListener;

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne p1, v1, :cond_5

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Lcom/android/phone/AccelerometerListener;->enable(Z)V

    .line 1271
    :cond_2
    iput-boolean v3, p0, Lcom/android/phone/PhoneGlobals;->mBeginningCall:Z

    .line 1277
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v1, :cond_3

    .line 1278
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    sget-object v4, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne p1, v4, :cond_6

    :goto_2
    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->updateKeyguardPolicy(Z)V

    .line 1281
    .end local v0    # "voiceQualParam":Ljava/lang/String;
    :cond_3
    return-void

    .line 1256
    .restart local v0    # "voiceQualParam":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/PhoneGlobals;->isShowingCallScreen()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1257
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v1}, Landroid/os/UpdateLock;->isHeld()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1258
    iget-object v1, p0, Lcom/android/phone/PhoneGlobals;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v1}, Landroid/os/UpdateLock;->release()V

    goto :goto_0

    :cond_5
    move v1, v3

    .line 1268
    goto :goto_1

    :cond_6
    move v2, v3

    .line 1278
    goto :goto_2
.end method

.method updateProximitySensorMode(Lcom/android/internal/telephony/PhoneConstants$State;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1160
    invoke-virtual {p0}, Lcom/android/phone/PhoneGlobals;->proximitySensorModeEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1161
    iget-object v5, p0, Lcom/android/phone/PhoneGlobals;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v5

    .line 1165
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/PhoneGlobals;->isHeadsetPlugged()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/PhoneGlobals;->isBluetoothHeadsetAudioOn()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/PhoneGlobals;->mIsHardKeyboardOpen:Z

    if-eqz v0, :cond_5

    :cond_0
    move v4, v1

    .line 1173
    :goto_0
    iget v0, p0, Lcom/android/phone/PhoneGlobals;->mOrientation:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_6

    move v3, v1

    .line 1175
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/PhoneGlobals;->isShowingCallScreenForProximity()Z

    move-result v0

    if-nez v0, :cond_7

    if-eqz v3, :cond_7

    move v0, v1

    :goto_2
    or-int/2addr v4, v0

    .line 1182
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_d

    .line 1183
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->dialpadEnabled:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    if-eqz v0, :cond_8

    invoke-virtual {p0}, Lcom/android/phone/PhoneGlobals;->isShowingCallScreen()Z

    move-result v0

    if-eqz v0, :cond_8

    move v0, v1

    .line 1188
    :goto_3
    if-eqz v0, :cond_9

    if-eqz v3, :cond_9

    move v0, v1

    :goto_4
    or-int/2addr v0, v4

    .line 1190
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq p1, v3, :cond_1

    iget-boolean v3, p0, Lcom/android/phone/PhoneGlobals;->mBeginningCall:Z

    if-eqz v3, :cond_a

    :cond_1
    if-nez v0, :cond_a

    .line 1193
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1194
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "PhoneApp"

    const-string v1, "updateProximitySensorMode: acquiring..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1195
    :cond_2
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1216
    :cond_3
    :goto_5
    monitor-exit v5

    .line 1218
    :cond_4
    return-void

    :cond_5
    move v4, v2

    .line 1165
    goto :goto_0

    :cond_6
    move v3, v2

    .line 1173
    goto :goto_1

    :cond_7
    move v0, v2

    .line 1175
    goto :goto_2

    :cond_8
    move v0, v2

    .line 1183
    goto :goto_3

    :cond_9
    move v0, v2

    .line 1188
    goto :goto_4

    .line 1202
    :cond_a
    iget-object v3, p0, Lcom/android/phone/PhoneGlobals;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1203
    sget-boolean v3, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v3, :cond_b

    const-string v3, "PhoneApp"

    const-string v4, "updateProximitySensorMode: releasing..."

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    :cond_b
    if-eqz v0, :cond_c

    .line 1209
    :goto_6
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->release(I)V

    goto :goto_5

    .line 1216
    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_c
    move v2, v1

    .line 1207
    goto :goto_6

    :cond_d
    move v0, v2

    goto :goto_3
.end method

.method updateWakeState()V
    .locals 9

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1045
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    .line 1050
    invoke-virtual {p0}, Lcom/android/phone/PhoneGlobals;->isShowingCallScreen()Z

    move-result v5

    .line 1055
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    .line 1065
    :goto_0
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v4, v3, :cond_5

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v1

    .line 1073
    :goto_1
    sget-boolean v6, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "PhoneApp"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateWakeState: callscreen "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", dialer "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ", speaker "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "..."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1087
    :cond_0
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v4, v0, :cond_6

    move v0, v1

    .line 1088
    :goto_2
    iget-object v3, p0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v3, v4, :cond_7

    move v3, v1

    .line 1089
    :goto_3
    iget-object v4, p0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/android/phone/PhoneGlobals;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v4}, Lcom/android/phone/InCallScreen;->isQuickResponseDialogShowing()Z

    move-result v4

    if-eqz v4, :cond_8

    move v4, v1

    .line 1091
    :goto_4
    iget-object v6, p0, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->hasDisconnectedConnections(Lcom/android/internal/telephony/Phone;)Z

    move-result v6

    if-eqz v6, :cond_9

    if-eqz v5, :cond_9

    move v5, v1

    .line 1093
    :goto_5
    if-nez v0, :cond_1

    if-nez v3, :cond_1

    if-eqz v5, :cond_2

    if-nez v4, :cond_2

    :cond_1
    move v2, v1

    .line 1095
    :cond_2
    sget-boolean v1, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "PhoneApp"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateWakeState: keepScreenOn = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " (isRinging "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, ", isDialing "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", showingQuickResponse "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", showingDisc "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    :cond_3
    if-eqz v2, :cond_a

    sget-object v0, Lcom/android/phone/PhoneGlobals$WakeState;->FULL:Lcom/android/phone/PhoneGlobals$WakeState;

    :goto_6
    invoke-virtual {p0, v0}, Lcom/android/phone/PhoneGlobals;->requestWakeState(Lcom/android/phone/PhoneGlobals$WakeState;)V

    .line 1102
    return-void

    :cond_4
    move v0, v2

    .line 1055
    goto/16 :goto_0

    :cond_5
    move v3, v2

    .line 1065
    goto/16 :goto_1

    :cond_6
    move v0, v2

    .line 1087
    goto/16 :goto_2

    :cond_7
    move v3, v2

    .line 1088
    goto :goto_3

    :cond_8
    move v4, v2

    .line 1089
    goto :goto_4

    :cond_9
    move v5, v2

    .line 1091
    goto :goto_5

    .line 1101
    :cond_a
    sget-object v0, Lcom/android/phone/PhoneGlobals$WakeState;->SLEEP:Lcom/android/phone/PhoneGlobals$WakeState;

    goto :goto_6
.end method

.method wakeUpScreen()V
    .locals 3

    .prologue
    .line 1025
    monitor-enter p0

    .line 1026
    :try_start_0
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mWakeState:Lcom/android/phone/PhoneGlobals$WakeState;

    sget-object v1, Lcom/android/phone/PhoneGlobals$WakeState;->SLEEP:Lcom/android/phone/PhoneGlobals$WakeState;

    if-ne v0, v1, :cond_1

    .line 1027
    sget-boolean v0, Lcom/android/phone/PhoneGlobals;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "PhoneApp"

    const-string v1, "pulse screen lock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    :cond_0
    iget-object v0, p0, Lcom/android/phone/PhoneGlobals;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 1030
    :cond_1
    monitor-exit p0

    .line 1031
    return-void

    .line 1030
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
