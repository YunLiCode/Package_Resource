.class Lcom/android/internal/policy/impl/keyguard/ObscureSpeechDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source "ObscureSpeechDelegate.java"


# static fields
.field static sAnnouncedHeadset:Z


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private final mContentResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 37
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/ObscureSpeechDelegate;->sAnnouncedHeadset:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ObscureSpeechDelegate;->mContentResolver:Landroid/content/ContentResolver;

    .line 44
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/ObscureSpeechDelegate;->mAudioManager:Landroid/media/AudioManager;

    .line 45
    return-void
.end method

.method private shouldObscureSpeech()Z
    .registers 4

    .prologue
    const/4 v0, 0x0

    .line 88
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ObscureSpeechDelegate;->mContentResolver:Landroid/content/ContentResolver;

    const-string v2, "speak_password"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_c

    .line 99
    :cond_b
    :goto_b
    return v0

    .line 94
    :cond_c
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ObscureSpeechDelegate;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v1

    if-nez v1, :cond_b

    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/ObscureSpeechDelegate;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isBluetoothA2dpOn()Z

    move-result v1

    if-nez v1, :cond_b

    .line 99
    const/4 v0, 0x1

    goto :goto_b
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 5
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 75
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 77
    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/ObscureSpeechDelegate;->shouldObscureSpeech()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 78
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 79
    .local v0, "ctx":Landroid/content/Context;
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 80
    const v1, 0x104052c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 83
    .end local v0    # "ctx":Landroid/content/Context;
    :cond_1b
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .registers 5
    .param p1, "host"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 63
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onPopulateAccessibilityEvent(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    .line 65
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x4000

    if-eq v0, v1, :cond_26

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/ObscureSpeechDelegate;->shouldObscureSpeech()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 67
    invoke-virtual {p2}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 68
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x104052c

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 71
    :cond_26
    return-void
.end method

.method public sendAccessibilityEvent(Landroid/view/View;I)V
    .registers 5
    .param p1, "host"    # Landroid/view/View;
    .param p2, "eventType"    # I

    .prologue
    .line 49
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->sendAccessibilityEvent(Landroid/view/View;I)V

    .line 53
    const v0, 0x8000

    if-ne p2, v0, :cond_23

    sget-boolean v0, Lcom/android/internal/policy/impl/keyguard/ObscureSpeechDelegate;->sAnnouncedHeadset:Z

    if-nez v0, :cond_23

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/ObscureSpeechDelegate;->shouldObscureSpeech()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 55
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/impl/keyguard/ObscureSpeechDelegate;->sAnnouncedHeadset:Z

    .line 56
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x104052b

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/View;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 59
    :cond_23
    return-void
.end method
