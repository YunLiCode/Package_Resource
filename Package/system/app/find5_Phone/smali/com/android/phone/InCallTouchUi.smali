.class public Lcom/android/phone/InCallTouchUi;
.super Landroid/widget/FrameLayout;
.source "InCallTouchUi.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/PopupMenu$OnDismissListener;
.implements Landroid/widget/PopupMenu$OnMenuItemClickListener;
.implements Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;


# instance fields
.field private mAddBlacklistButton:Landroid/widget/ImageButton;

.field private mAddButton:Landroid/widget/ImageButton;

.field private mApp:Lcom/android/phone/PhoneGlobals;

.field private mAudioButton:Landroid/widget/CompoundButton;

.field private mAudioModePopup:Landroid/widget/PopupMenu;

.field private mAudioModePopupVisible:Z

.field private mBlacklistSpacer:Landroid/view/View;

.field private mCdmaMergeButton:Landroid/view/ViewGroup;

.field private mDialpadButton:Landroid/widget/CompoundButton;

.field private mEndButton:Landroid/widget/ImageButton;

.field private mExtraButtonRow:Landroid/view/ViewStub;

.field private mHandler:Landroid/os/Handler;

.field private mHoldButton:Landroid/widget/CompoundButton;

.field private mHoldSwapSpacer:Landroid/view/View;

.field private mInCallControls:Landroid/view/View;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

.field private mIncomingCallWidgetIsFadingOut:Z

.field private mIncomingCallWidgetShouldBeReset:Z

.field private mLastIncomingCallActionTime:J

.field private mManageConferenceButton:Landroid/view/ViewGroup;

.field private mManageConferenceButtonImage:Landroid/widget/ImageButton;

.field private mMergeButton:Landroid/widget/ImageButton;

.field private mMuteButton:Landroid/widget/CompoundButton;

.field private mShowInCallControlsDuringHidingAnimation:Z

.field private mSwapButton:Landroid/widget/ImageButton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 144
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidgetShouldBeReset:Z

    .line 113
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopupVisible:Z

    .line 124
    new-instance v0, Lcom/android/phone/InCallTouchUi$1;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallTouchUi$1;-><init>(Lcom/android/phone/InCallTouchUi;)V

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    .line 149
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    .line 150
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/InCallTouchUi;)Lcom/android/phone/InCallScreen;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/InCallTouchUi;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/phone/InCallTouchUi;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/InCallTouchUi;

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mShowInCallControlsDuringHidingAnimation:Z

    return v0
.end method

.method static synthetic access$102(Lcom/android/phone/InCallTouchUi;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/InCallTouchUi;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/android/phone/InCallTouchUi;->mShowInCallControlsDuringHidingAnimation:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/phone/InCallTouchUi;)Lcom/android/phone/PhoneGlobals;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/InCallTouchUi;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/InCallTouchUi;Lcom/android/internal/telephony/CallManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/InCallTouchUi;
    .param p1, "x1"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/android/phone/InCallTouchUi;->updateInCallControls(Lcom/android/internal/telephony/CallManager;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/phone/InCallTouchUi;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/InCallTouchUi;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/InCallTouchUi;)Lcom/android/internal/widget/multiwaveview/GlowPadView;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/InCallTouchUi;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    return-object v0
.end method

.method static synthetic access$602(Lcom/android/phone/InCallTouchUi;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/InCallTouchUi;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidgetIsFadingOut:Z

    return p1
.end method

.method static synthetic access$702(Lcom/android/phone/InCallTouchUi;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/phone/InCallTouchUi;
    .param p1, "x1"    # Z

    .prologue
    .line 62
    iput-boolean p1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidgetShouldBeReset:Z

    return p1
.end method

.method private handleAudioButtonClick()V
    .locals 2

    .prologue
    .line 832
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v0

    .line 833
    .local v0, "inCallControlState":Lcom/android/phone/InCallControlState;
    iget-boolean v1, v0, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    if-eqz v1, :cond_0

    .line 835
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->showAudioModePopup()V

    .line 840
    :goto_0
    return-void

    .line 838
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->toggleSpeaker()V

    goto :goto_0
.end method

.method private hideIncomingCallWidget()V
    .locals 3

    .prologue
    .line 1127
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidgetIsFadingOut:Z

    if-eqz v1, :cond_1

    .line 1172
    :cond_0
    :goto_0
    return-void

    .line 1135
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidgetIsFadingOut:Z

    .line 1136
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1137
    .local v0, "animator":Landroid/view/ViewPropertyAnimator;
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1138
    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 1139
    new-instance v1, Lcom/android/phone/InCallTouchUi$2;

    invoke-direct {v1, p0}, Lcom/android/phone/InCallTouchUi$2;-><init>(Lcom/android/phone/InCallTouchUi;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 1171
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 1376
    const-string v0, "InCallTouchUi"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    return-void
.end method

.method private okToShowInCallControls()Z
    .locals 2

    .prologue
    .line 393
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-object v0, v0, Lcom/android/phone/InCallUiState;->inCallScreenMode:Lcom/android/phone/InCallUiState$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallUiState$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallUiState$InCallScreenMode;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setupExtraButtons()V
    .locals 2

    .prologue
    .line 669
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f08003c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mCdmaMergeButton:Landroid/view/ViewGroup;

    .line 670
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mCdmaMergeButton:Landroid/view/ViewGroup;

    if-nez v0, :cond_0

    .line 671
    const-string v0, "InCallTouchUi"

    const-string v1, "CDMA Merge button is null even after ViewStub being inflated."

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    :goto_0
    return-void

    .line 674
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mCdmaMergeButton:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 676
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f080039

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mManageConferenceButton:Landroid/view/ViewGroup;

    .line 678
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mManageConferenceButton:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 679
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f08003a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mManageConferenceButtonImage:Landroid/widget/ImageButton;

    goto :goto_0
.end method

.method private showAudioModePopup()V
    .locals 12

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x1

    .line 848
    new-instance v7, Landroid/widget/PopupMenu;

    iget-object v10, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    iget-object v11, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-direct {v7, v10, v11}, Landroid/widget/PopupMenu;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v7, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    .line 850
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7}, Landroid/widget/PopupMenu;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v7

    const/high16 v10, 0x7f100000

    iget-object v11, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v11}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 852
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7, p0}, Landroid/widget/PopupMenu;->setOnMenuItemClickListener(Landroid/widget/PopupMenu$OnMenuItemClickListener;)V

    .line 853
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7, p0}, Landroid/widget/PopupMenu;->setOnDismissListener(Landroid/widget/PopupMenu$OnDismissListener;)V

    .line 857
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v7}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v2

    .line 859
    .local v2, "inCallControlState":Lcom/android/phone/InCallControlState;
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7}, Landroid/widget/PopupMenu;->getMenu()Landroid/view/Menu;

    move-result-object v3

    .line 866
    .local v3, "menu":Landroid/view/Menu;
    const v7, 0x7f080098

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v4

    .line 867
    .local v4, "speakerItem":Landroid/view/MenuItem;
    iget-boolean v7, v2, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    invoke-interface {v4, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 873
    const v7, 0x7f080099

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 874
    .local v1, "earpieceItem":Landroid/view/MenuItem;
    const v7, 0x7f08009a

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 875
    .local v6, "wiredHeadsetItem":Landroid/view/MenuItem;
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v7}, Lcom/android/phone/PhoneGlobals;->isHeadsetPlugged()Z

    move-result v5

    .line 876
    .local v5, "usingHeadset":Z
    if-nez v5, :cond_1

    move v7, v8

    :goto_0
    invoke-interface {v1, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 877
    if-nez v5, :cond_0

    move v9, v8

    :cond_0
    invoke-interface {v1, v9}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 878
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 879
    invoke-interface {v6, v5}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 884
    const v7, 0x7f08009b

    invoke-interface {v3, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 885
    .local v0, "bluetoothItem":Landroid/view/MenuItem;
    iget-boolean v7, v2, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    invoke-interface {v0, v7}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 889
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v7}, Landroid/widget/PopupMenu;->show()V

    .line 894
    iput-boolean v8, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopupVisible:Z

    .line 895
    return-void

    .end local v0    # "bluetoothItem":Landroid/view/MenuItem;
    :cond_1
    move v7, v9

    .line 876
    goto :goto_0
.end method

.method private showIncomingCallWidget(Lcom/android/internal/telephony/Call;)V
    .locals 5

    .prologue
    const/16 v4, 0x65

    const/4 v3, 0x0

    .line 1184
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 1185
    if-eqz v0, :cond_0

    .line 1186
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1188
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    const/high16 v1, 0x3f800000

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setAlpha(F)V

    .line 1194
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-static {v0, p1}, Lcom/android/phone/RespondViaSmsManager;->allowRespondViaSmsForCall(Landroid/content/Context;Lcom/android/internal/telephony/Call;)Z

    move-result v1

    .line 1196
    if-eqz v1, :cond_4

    const v0, 0x7f070006

    .line 1202
    :goto_0
    iget-object v2, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v2}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getTargetResourceId()I

    move-result v2

    if-eq v0, v2, :cond_1

    .line 1203
    if-eqz v1, :cond_5

    .line 1206
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setTargetResources(I)V

    .line 1207
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    const v1, 0x7f070007

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setTargetDescriptionsResourceId(I)V

    .line 1209
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    const v1, 0x7f070008

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setDirectionDescriptionsResourceId(I)V

    .line 1221
    :goto_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidgetShouldBeReset:Z

    .line 1223
    :cond_1
    iget-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidgetShouldBeReset:Z

    if-eqz v0, :cond_2

    .line 1228
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->reset(Z)V

    .line 1229
    iput-boolean v3, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidgetShouldBeReset:Z

    .line 1236
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1237
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f080087

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1239
    if-eqz v0, :cond_3

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 1242
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setVisibility(I)V

    .line 1254
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1255
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0xfa

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 1262
    return-void

    .line 1196
    :cond_4
    const v0, 0x7f070009

    goto :goto_0

    .line 1213
    :cond_5
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setTargetResources(I)V

    .line 1214
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    const v1, 0x7f07000a

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setTargetDescriptionsResourceId(I)V

    .line 1216
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    const v1, 0x7f07000b

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setDirectionDescriptionsResourceId(I)V

    goto :goto_1
.end method

.method private updateAudioButton(Lcom/android/phone/InCallControlState;)V
    .locals 14
    .param p1, "inCallControlState"    # Lcom/android/phone/InCallControlState;

    .prologue
    const/4 v9, 0x1

    const/16 v11, 0xff

    const/4 v10, 0x0

    .line 736
    const/4 v8, 0x0

    .line 739
    .local v8, "showToggleStateIndication":Z
    const/4 v5, 0x0

    .line 742
    .local v5, "showMoreIndicator":Z
    const/4 v7, 0x0

    .line 743
    .local v7, "showSpeakerOnIcon":Z
    const/4 v6, 0x0

    .line 744
    .local v6, "showSpeakerOffIcon":Z
    const/4 v4, 0x0

    .line 745
    .local v4, "showHandsetIcon":Z
    const/4 v3, 0x0

    .line 747
    .local v3, "showBluetoothIcon":Z
    iget-boolean v12, p1, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    if-eqz v12, :cond_2

    .line 750
    iget-object v12, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v12, v9}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 757
    const/4 v5, 0x1

    .line 758
    iget-boolean v9, p1, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    if-eqz v9, :cond_0

    .line 759
    const/4 v3, 0x1

    .line 799
    :goto_0
    const/4 v0, 0x0

    .line 800
    .local v0, "HIDDEN":I
    const/16 v1, 0xff

    .line 802
    .local v1, "VISIBLE":I
    iget-object v9, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v9}, Landroid/widget/CompoundButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    .line 805
    .local v2, "layers":Landroid/graphics/drawable/LayerDrawable;
    const v9, 0x7f080092

    invoke-virtual {v2, v9}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-eqz v8, :cond_5

    move v9, v11

    :goto_1
    invoke-virtual {v12, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 808
    const v9, 0x7f080093

    invoke-virtual {v2, v9}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-eqz v5, :cond_6

    move v9, v11

    :goto_2
    invoke-virtual {v12, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 811
    const v9, 0x7f080094

    invoke-virtual {v2, v9}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-eqz v3, :cond_7

    move v9, v11

    :goto_3
    invoke-virtual {v12, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 814
    const v9, 0x7f080095

    invoke-virtual {v2, v9}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-eqz v4, :cond_8

    move v9, v11

    :goto_4
    invoke-virtual {v12, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 817
    const v9, 0x7f080096

    invoke-virtual {v2, v9}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-eqz v7, :cond_9

    move v9, v11

    :goto_5
    invoke-virtual {v12, v9}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 820
    const v9, 0x7f080097

    invoke-virtual {v2, v9}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-eqz v6, :cond_a

    :goto_6
    invoke-virtual {v9, v11}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 822
    return-void

    .line 760
    .end local v0    # "HIDDEN":I
    .end local v1    # "VISIBLE":I
    .end local v2    # "layers":Landroid/graphics/drawable/LayerDrawable;
    :cond_0
    iget-boolean v9, p1, Lcom/android/phone/InCallControlState;->speakerOn:Z

    if-eqz v9, :cond_1

    .line 761
    const/4 v7, 0x1

    goto :goto_0

    .line 763
    :cond_1
    const/4 v4, 0x1

    goto :goto_0

    .line 769
    :cond_2
    iget-boolean v12, p1, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    if-eqz v12, :cond_4

    .line 772
    iget-object v12, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v12, v9}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 776
    iget-object v12, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    iget-boolean v13, p1, Lcom/android/phone/InCallControlState;->speakerOn:Z

    invoke-virtual {v12, v13}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 779
    const/4 v8, 0x1

    .line 781
    iget-boolean v7, p1, Lcom/android/phone/InCallControlState;->speakerOn:Z

    .line 782
    iget-boolean v12, p1, Lcom/android/phone/InCallControlState;->speakerOn:Z

    if-nez v12, :cond_3

    move v6, v9

    :goto_7
    goto :goto_0

    :cond_3
    move v6, v10

    goto :goto_7

    .line 788
    :cond_4
    iget-object v9, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v9, v10}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 789
    iget-object v9, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v9, v10}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 792
    const/4 v8, 0x1

    .line 793
    const/4 v6, 0x1

    goto/16 :goto_0

    .restart local v0    # "HIDDEN":I
    .restart local v1    # "VISIBLE":I
    .restart local v2    # "layers":Landroid/graphics/drawable/LayerDrawable;
    :cond_5
    move v9, v10

    .line 805
    goto :goto_1

    :cond_6
    move v9, v10

    .line 808
    goto :goto_2

    :cond_7
    move v9, v10

    .line 811
    goto :goto_3

    :cond_8
    move v9, v10

    .line 814
    goto :goto_4

    :cond_9
    move v9, v10

    .line 817
    goto :goto_5

    :cond_a
    move v11, v10

    .line 820
    goto :goto_6
.end method

.method private updateInCallControls(Lcom/android/internal/telephony/CallManager;)V
    .locals 11
    .param p1, "cm"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v5, 0x1

    const/16 v8, 0x8

    const/4 v6, 0x0

    .line 465
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 479
    .local v1, "phoneType":I
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v7}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v0

    .line 490
    .local v0, "inCallControlState":Lcom/android/phone/InCallControlState;
    iget-boolean v7, v0, Lcom/android/phone/InCallControlState;->canAddCall:Z

    if-eqz v7, :cond_7

    .line 491
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    invoke-virtual {v7, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 492
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    invoke-virtual {v7, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 493
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/ImageButton;

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 520
    :goto_0
    iget-boolean v7, v0, Lcom/android/phone/InCallControlState;->canAddCall:Z

    if-eqz v7, :cond_1

    iget-boolean v7, v0, Lcom/android/phone/InCallControlState;->canMerge:Z

    if-eqz v7, :cond_1

    .line 521
    if-eq v1, v5, :cond_0

    if-ne v1, v9, :cond_c

    .line 528
    :cond_0
    const-string v7, "InCallTouchUi"

    const-string v9, "updateInCallControls: Add *and* Merge enabled, but can\'t show both!"

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    :cond_1
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mEndButton:Landroid/widget/ImageButton;

    iget-boolean v9, v0, Lcom/android/phone/InCallControlState;->canEndCall:Z

    invoke-virtual {v7, v9}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 544
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/CompoundButton;

    iget-boolean v9, v0, Lcom/android/phone/InCallControlState;->dialpadEnabled:Z

    invoke-virtual {v7, v9}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 545
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/CompoundButton;

    iget-boolean v9, v0, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    invoke-virtual {v7, v9}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 548
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/CompoundButton;

    iget-boolean v9, v0, Lcom/android/phone/InCallControlState;->canMute:Z

    invoke-virtual {v7, v9}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 549
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/CompoundButton;

    iget-boolean v9, v0, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    invoke-virtual {v7, v9}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 552
    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->updateAudioButton(Lcom/android/phone/InCallControlState;)V

    .line 555
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mAddBlacklistButton:Landroid/widget/ImageButton;

    if-eqz v7, :cond_2

    .line 556
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/PhoneUtils$PhoneSettings;->isBlacklistEnabled(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_d

    iget-boolean v7, v0, Lcom/android/phone/InCallControlState;->canBlacklistCall:Z

    if-eqz v7, :cond_d

    move v4, v5

    .line 558
    .local v4, "visible":Z
    :goto_1
    iget-object v9, p0, Lcom/android/phone/InCallTouchUi;->mAddBlacklistButton:Landroid/widget/ImageButton;

    if-eqz v4, :cond_e

    move v7, v6

    :goto_2
    invoke-virtual {v9, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 559
    iget-object v9, p0, Lcom/android/phone/InCallTouchUi;->mBlacklistSpacer:Landroid/view/View;

    if-eqz v4, :cond_f

    move v7, v6

    :goto_3
    invoke-virtual {v9, v7}, Landroid/view/View;->setVisibility(I)V

    .line 566
    .end local v4    # "visible":Z
    :cond_2
    iget-boolean v7, v0, Lcom/android/phone/InCallControlState;->canHold:Z

    if-eqz v7, :cond_10

    .line 567
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v7, v6}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 568
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v7, v5}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 569
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    iget-boolean v9, v0, Lcom/android/phone/InCallControlState;->onHold:Z

    invoke-virtual {v7, v9}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 570
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/widget/ImageButton;

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 571
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mHoldSwapSpacer:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    .line 600
    :goto_4
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v7}, Lcom/android/phone/InCallScreen;->updateButtonStateOutsideInCallTouchUi()V

    .line 601
    iget-boolean v7, v0, Lcom/android/phone/InCallControlState;->canSwap:Z

    if-eqz v7, :cond_3

    iget-boolean v7, v0, Lcom/android/phone/InCallControlState;->canHold:Z

    if-eqz v7, :cond_3

    .line 607
    const-string v7, "InCallTouchUi"

    const-string v9, "updateInCallControls: Hold *and* Swap enabled, but can\'t show both!"

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    :cond_3
    if-ne v1, v10, :cond_4

    .line 611
    iget-boolean v7, v0, Lcom/android/phone/InCallControlState;->canSwap:Z

    if-eqz v7, :cond_4

    iget-boolean v7, v0, Lcom/android/phone/InCallControlState;->canMerge:Z

    if-eqz v7, :cond_4

    .line 617
    const-string v7, "InCallTouchUi"

    const-string v9, "updateInCallControls: Merge *and* Swapenabled, but can\'t show both!"

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    :cond_4
    if-ne v1, v10, :cond_13

    iget-boolean v7, v0, Lcom/android/phone/InCallControlState;->canMerge:Z

    if-eqz v7, :cond_13

    move v2, v5

    .line 635
    .local v2, "showCdmaMerge":Z
    :goto_5
    if-nez v2, :cond_5

    iget-boolean v7, v0, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    if-eqz v7, :cond_14

    :cond_5
    move v3, v5

    .line 637
    .local v3, "showExtraButtonRow":Z
    :goto_6
    if-eqz v3, :cond_17

    iget-boolean v5, v0, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    if-nez v5, :cond_17

    .line 639
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mExtraButtonRow:Landroid/view/ViewStub;

    invoke-virtual {v5, v6}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 643
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mCdmaMergeButton:Landroid/view/ViewGroup;

    if-nez v5, :cond_6

    .line 644
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->setupExtraButtons()V

    .line 646
    :cond_6
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mCdmaMergeButton:Landroid/view/ViewGroup;

    if-eqz v2, :cond_15

    move v5, v6

    :goto_7
    invoke-virtual {v7, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 647
    iget-boolean v5, v0, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    if-eqz v5, :cond_16

    .line 648
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mManageConferenceButton:Landroid/view/ViewGroup;

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 649
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mManageConferenceButtonImage:Landroid/widget/ImageButton;

    iget-boolean v6, v0, Lcom/android/phone/InCallControlState;->manageConferenceEnabled:Z

    invoke-virtual {v5, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 661
    :goto_8
    return-void

    .line 494
    .end local v2    # "showCdmaMerge":Z
    .end local v3    # "showExtraButtonRow":Z
    :cond_7
    iget-boolean v7, v0, Lcom/android/phone/InCallControlState;->canMerge:Z

    if-eqz v7, :cond_b

    .line 495
    if-ne v1, v10, :cond_8

    .line 499
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/ImageButton;

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_0

    .line 500
    :cond_8
    if-eq v1, v5, :cond_9

    if-ne v1, v9, :cond_a

    .line 502
    :cond_9
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/ImageButton;

    invoke-virtual {v7, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 503
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/ImageButton;

    invoke-virtual {v7, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 504
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_0

    .line 506
    :cond_a
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected phone type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 516
    :cond_b
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    invoke-virtual {v7, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 517
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    invoke-virtual {v7, v6}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 518
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/ImageButton;

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_0

    .line 530
    :cond_c
    if-eq v1, v10, :cond_1

    .line 535
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected phone type: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_d
    move v4, v6

    .line 556
    goto/16 :goto_1

    .restart local v4    # "visible":Z
    :cond_e
    move v7, v8

    .line 558
    goto/16 :goto_2

    :cond_f
    move v7, v8

    .line 559
    goto/16 :goto_3

    .line 572
    .end local v4    # "visible":Z
    :cond_10
    iget-boolean v7, v0, Lcom/android/phone/InCallControlState;->canSwap:Z

    if-eqz v7, :cond_11

    .line 573
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/widget/ImageButton;

    invoke-virtual {v7, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 574
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/widget/ImageButton;

    invoke-virtual {v7, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 575
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v7, v8}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 576
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mHoldSwapSpacer:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 588
    :cond_11
    iget-boolean v7, v0, Lcom/android/phone/InCallControlState;->supportsHold:Z

    if-eqz v7, :cond_12

    .line 589
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v7, v6}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 590
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v7, v6}, Landroid/widget/CompoundButton;->setEnabled(Z)V

    .line 591
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v7, v6}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 592
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/widget/ImageButton;

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 593
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mHoldSwapSpacer:Landroid/view/View;

    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 595
    :cond_12
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v7, v8}, Landroid/widget/CompoundButton;->setVisibility(I)V

    .line 596
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/widget/ImageButton;

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 597
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mHoldSwapSpacer:Landroid/view/View;

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    :cond_13
    move v2, v6

    .line 633
    goto/16 :goto_5

    .restart local v2    # "showCdmaMerge":Z
    :cond_14
    move v3, v6

    .line 635
    goto/16 :goto_6

    .restart local v3    # "showExtraButtonRow":Z
    :cond_15
    move v5, v8

    .line 646
    goto/16 :goto_7

    .line 651
    :cond_16
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mManageConferenceButton:Landroid/view/ViewGroup;

    invoke-virtual {v5, v8}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_8

    .line 654
    :cond_17
    iget-object v5, p0, Lcom/android/phone/InCallTouchUi;->mExtraButtonRow:Landroid/view/ViewStub;

    invoke-virtual {v5, v8}, Landroid/view/ViewStub;->setVisibility(I)V

    goto/16 :goto_8
.end method


# virtual methods
.method public dismissAudioModePopup()V
    .locals 1

    .prologue
    .line 904
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    .line 905
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 906
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    .line 907
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopupVisible:Z

    .line 909
    :cond_0
    return-void
.end method

.method public getTouchUiHeight()I
    .locals 3

    .prologue
    .line 996
    const/4 v0, 0x0

    .line 999
    .local v0, "height":I
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 1002
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0007

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 1008
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    .line 1010
    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 399
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 402
    .local v0, "id":I
    sparse-switch v0, :sswitch_data_0

    .line 423
    const-string v1, "InCallTouchUi"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick: unexpected click: View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :goto_0
    return-void

    .line 415
    :sswitch_0
    iget-object v1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1, v0}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 419
    :sswitch_1
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->handleAudioButtonClick()V

    goto :goto_0

    .line 402
    :sswitch_data_0
    .sparse-switch
        0x7f080039 -> :sswitch_0
        0x7f08003c -> :sswitch_0
        0x7f08004d -> :sswitch_0
        0x7f08004e -> :sswitch_1
        0x7f08004f -> :sswitch_0
        0x7f080050 -> :sswitch_0
        0x7f080051 -> :sswitch_0
        0x7f080053 -> :sswitch_0
        0x7f080054 -> :sswitch_0
        0x7f080056 -> :sswitch_0
        0x7f080058 -> :sswitch_0
    .end sparse-switch
.end method

.method public onDismiss(Landroid/widget/PopupMenu;)V
    .locals 1
    .param p1, "menu"    # Landroid/widget/PopupMenu;

    .prologue
    .line 970
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopupVisible:Z

    .line 971
    return-void
.end method

.method public onFinishFinalAnimation()V
    .locals 0

    .prologue
    .line 1120
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 158
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 164
    const v0, 0x7f080059

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/internal/widget/multiwaveview/GlowPadView;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    .line 165
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v0, p0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->setOnTriggerListener(Lcom/android/internal/widget/multiwaveview/GlowPadView$OnTriggerListener;)V

    .line 168
    const v0, 0x7f08004a

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallTouchUi;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    .line 172
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f080053

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    .line 173
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 174
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAddButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 175
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f080054

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/ImageButton;

    .line 176
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 177
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMergeButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 178
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f080058

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mEndButton:Landroid/widget/ImageButton;

    .line 179
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mEndButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f08004d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/CompoundButton;

    .line 181
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mDialpadButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 183
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f08004f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/CompoundButton;

    .line 184
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 185
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mMuteButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 186
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f08004e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    .line 187
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 188
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 189
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f080050

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CompoundButton;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    .line 190
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHoldButton:Landroid/widget/CompoundButton;

    invoke-virtual {v0, p0}, Landroid/widget/CompoundButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 192
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f080051

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/widget/ImageButton;

    .line 193
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mSwapButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 195
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f080052

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHoldSwapSpacer:Landroid/view/View;

    .line 196
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f080055

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mBlacklistSpacer:Landroid/view/View;

    .line 199
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f080056

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAddBlacklistButton:Landroid/widget/ImageButton;

    .line 200
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAddBlacklistButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAddBlacklistButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const v1, 0x7f080057

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    iput-object v0, p0, Lcom/android/phone/InCallTouchUi;->mExtraButtonRow:Landroid/view/ViewStub;

    .line 222
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 223
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mEndButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/phone/SmallerHitTargetTouchListener;

    invoke-direct {v1}, Lcom/android/phone/SmallerHitTargetTouchListener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 226
    :cond_1
    return-void
.end method

.method public onGrabbed(Landroid/view/View;I)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "handle"    # I

    .prologue
    .line 1021
    return-void
.end method

.method public onGrabbedStateChange(Landroid/view/View;I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1275
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v0, :cond_0

    .line 1281
    packed-switch p2, :pswitch_data_0

    .line 1288
    const-string v0, "InCallTouchUi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGrabbedStateChange: unexpected grabbedState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1297
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v3, v3}, Lcom/android/phone/InCallScreen;->updateIncomingCallWidgetHint(II)V

    .line 1299
    :cond_0
    return-void

    .line 1281
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onIncomingRing()V
    .locals 0

    .prologue
    .line 1312
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 430
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 433
    .local v2, "id":I
    packed-switch v2, :pswitch_data_0

    .line 454
    :pswitch_0
    const-string v4, "InCallTouchUi"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onLongClick() with unexpected View "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ". Ignoring it."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    :goto_0
    return v3

    .line 441
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    .line 442
    .local v1, "description":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 445
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 447
    .local v0, "cheatSheet":Landroid/widget/Toast;
    const/16 v4, 0x51

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v5

    invoke-virtual {v0, v4, v3, v5}, Landroid/widget/Toast;->setGravity(III)V

    .line 449
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 451
    .end local v0    # "cheatSheet":Landroid/widget/Toast;
    :cond_0
    const/4 v3, 0x1

    goto :goto_0

    .line 433
    nop

    :pswitch_data_0
    .packed-switch 0x7f08004d
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    const/4 v3, 0x1

    .line 936
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v0, :cond_0

    .line 937
    const-string v0, "InCallTouchUi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMenuItemClick("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "), but null mInCallScreen!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 960
    :goto_0
    return v3

    .line 941
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 955
    const-string v0, "InCallTouchUi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onMenuItemClick:  unexpected View ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (MenuItem = \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 943
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallAudioMode;->SPEAKER:Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V

    goto :goto_0

    .line 949
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallAudioMode;->EARPIECE:Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V

    goto :goto_0

    .line 952
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallAudioMode;->BLUETOOTH:Lcom/android/phone/InCallScreen$InCallAudioMode;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->switchInCallAudio(Lcom/android/phone/InCallScreen$InCallAudioMode;)V

    goto :goto_0

    .line 941
    :pswitch_data_0
    .packed-switch 0x7f080098
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onReleased(Landroid/view/View;I)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "handle"    # I

    .prologue
    .line 1026
    return-void
.end method

.method public onTrigger(Landroid/view/View;I)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "whichHandle"    # I

    .prologue
    const/4 v3, 0x0

    .line 1037
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v0, :cond_0

    .line 1038
    const-string v0, "InCallTouchUi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTrigger("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") from incoming-call widget, but null mInCallScreen!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1116
    :goto_0
    return-void

    .line 1049
    :cond_0
    iput-boolean v3, p0, Lcom/android/phone/InCallTouchUi;->mShowInCallControlsDuringHidingAnimation:Z

    .line 1050
    packed-switch p2, :pswitch_data_0

    .line 1100
    const-string v0, "InCallTouchUi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDialTrigger: unexpected whichHandle value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    :goto_1
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->hideIncomingCallWidget()V

    .line 1115
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v3, v3}, Lcom/android/phone/InCallScreen;->updateIncomingCallWidgetHint(II)V

    goto :goto_0

    .line 1053
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v1, 0x7f080008

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    .line 1054
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mShowInCallControlsDuringHidingAnimation:Z

    .line 1059
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/InCallTouchUi;->mLastIncomingCallActionTime:J

    goto :goto_1

    .line 1064
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v1, 0x7f08000a

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_1

    .line 1093
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v1, 0x7f080009

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    .line 1096
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/InCallTouchUi;->mLastIncomingCallActionTime:J

    goto :goto_1

    .line 1050
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public refreshAudioModePopup()V
    .locals 1

    .prologue
    .line 921
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopupVisible:Z

    if-eqz v0, :cond_0

    .line 923
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mAudioModePopup:Landroid/widget/PopupMenu;

    invoke-virtual {v0}, Landroid/widget/PopupMenu;->dismiss()V

    .line 925
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->showAudioModePopup()V

    .line 927
    :cond_0
    return-void
.end method

.method setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .param p1, "inCallScreen"    # Lcom/android/phone/InCallScreen;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 154
    return-void
.end method

.method public triggerPing()V
    .locals 4

    .prologue
    .line 1324
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->isForegroundActivity()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1327
    const-string v0, "- triggerPing: InCallScreen no longer in foreground; ignoring..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 1371
    :cond_0
    :goto_0
    return-void

    .line 1331
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    if-nez v0, :cond_2

    .line 1334
    const-string v0, "InCallTouchUi"

    const-string v1, "- triggerPing: null mIncomingCallWidget!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1341
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 1348
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mIncomingCallWidget:Lcom/android/internal/widget/multiwaveview/GlowPadView;

    invoke-virtual {v0}, Lcom/android/internal/widget/multiwaveview/GlowPadView;->ping()V

    .line 1368
    iget-object v0, p0, Lcom/android/phone/InCallTouchUi;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    const-wide/16 v2, 0x4b0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;)V
    .locals 12
    .param p1, "cm"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    const/4 v11, 0x0

    .line 237
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-nez v7, :cond_1

    .line 238
    const-string v7, "- updateState: mInCallScreen has been destroyed; bailing out..."

    invoke-direct {p0, v7}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 376
    :cond_0
    :goto_0
    return-void

    .line 242
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v6

    .line 245
    .local v6, "state":Lcom/android/internal/telephony/PhoneConstants$State;
    const/4 v5, 0x0

    .line 246
    .local v5, "showIncomingCallControls":Z
    const/4 v4, 0x0

    .line 248
    .local v4, "showInCallControls":Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 249
    .local v3, "ringingCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 256
    .local v0, "fgCallState":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v7, v8, :cond_5

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v7

    if-nez v7, :cond_5

    .line 264
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 266
    const/4 v5, 0x1

    .line 278
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 279
    .local v1, "now":J
    iget-wide v7, p0, Lcom/android/phone/InCallTouchUi;->mLastIncomingCallActionTime:J

    const-wide/16 v9, 0x1f4

    add-long/2addr v7, v9

    cmp-long v7, v1, v7

    if-gez v7, :cond_3

    .line 280
    const-string v7, "updateState: Too soon after last action; not drawing!"

    invoke-direct {p0, v7}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 281
    const/4 v5, 0x0

    .line 297
    :cond_3
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v7}, Lcom/android/phone/InCallScreen;->isQuickResponseDialogShowing()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 298
    const-string v7, "updateState: quickResponse visible. Cancel showing incoming call controls."

    invoke-direct {p0, v7}, Lcom/android/phone/InCallTouchUi;->log(Ljava/lang/String;)V

    .line 299
    const/4 v5, 0x0

    .line 314
    .end local v1    # "now":J
    :cond_4
    :goto_1
    if-eqz v5, :cond_6

    if-eqz v4, :cond_6

    .line 315
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "\'Incoming\' and \'in-call\' touch controls visible at the same time!"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 303
    :cond_5
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->okToShowInCallControls()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 304
    const/4 v4, 0x1

    goto :goto_1

    .line 318
    :cond_6
    iget-boolean v7, p0, Lcom/android/phone/InCallTouchUi;->mShowInCallControlsDuringHidingAnimation:Z

    if-eqz v7, :cond_7

    .line 323
    const/4 v4, 0x1

    .line 329
    :cond_7
    if-eqz v4, :cond_9

    .line 331
    invoke-direct {p0, p1}, Lcom/android/phone/InCallTouchUi;->updateInCallControls(Lcom/android/internal/telephony/CallManager;)V

    .line 332
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    invoke-virtual {v7, v11}, Landroid/view/View;->setVisibility(I)V

    .line 338
    :goto_2
    if-eqz v5, :cond_a

    .line 340
    invoke-direct {p0, v3}, Lcom/android/phone/InCallTouchUi;->showIncomingCallWidget(Lcom/android/internal/telephony/Call;)V

    .line 349
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v7, v7, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v7, v7, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    invoke-virtual {v7, v11}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableSystemBarNavigation(Z)V

    .line 367
    :goto_3
    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v6, v7, :cond_8

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v7, :cond_0

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v7, :cond_0

    .line 374
    :cond_8
    invoke-virtual {p0}, Lcom/android/phone/InCallTouchUi;->dismissAudioModePopup()V

    goto/16 :goto_0

    .line 335
    :cond_9
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mInCallControls:Landroid/view/View;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 352
    :cond_a
    invoke-direct {p0}, Lcom/android/phone/InCallTouchUi;->hideIncomingCallWidget()V

    .line 356
    iget-object v7, p0, Lcom/android/phone/InCallTouchUi;->mApp:Lcom/android/phone/PhoneGlobals;

    iget-object v7, v7, Lcom/android/phone/PhoneGlobals;->notificationMgr:Lcom/android/phone/NotificationMgr;

    iget-object v7, v7, Lcom/android/phone/NotificationMgr;->statusBarHelper:Lcom/android/phone/NotificationMgr$StatusBarHelper;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/android/phone/NotificationMgr$StatusBarHelper;->enableSystemBarNavigation(Z)V

    goto :goto_3
.end method
