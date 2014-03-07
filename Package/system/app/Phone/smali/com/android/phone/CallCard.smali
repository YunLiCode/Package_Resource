.class public Lcom/android/phone/CallCard;
.super Landroid/widget/LinearLayout;
.source "CallCard.java"

# interfaces
.implements Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;
.implements Lcom/android/phone/CallTime$OnTickListener;
.implements Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/CallCard$2;,
        Lcom/android/phone/CallCard$AsyncLoadCookie;
    }
.end annotation


# instance fields
.field private mApplication:Lcom/android/phone/PhoneGlobals;

.field private mCallInfoContainer:Landroid/view/ViewGroup;

.field private mCallStateLabel:Landroid/widget/TextView;

.field private mCallTime:Lcom/android/phone/CallTime;

.field private mCallTypeLabel:Landroid/widget/TextView;

.field private mDensity:F

.field private mElapsedTime:Landroid/widget/TextView;

.field private final mHandler:Landroid/os/Handler;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mIncomingCallWidgetHintColorResId:I

.field private mIncomingCallWidgetHintTextResId:I

.field private mLabel:Landroid/widget/TextView;

.field private mLoadingPersonUri:Landroid/net/Uri;

.field private mName:Landroid/widget/TextView;

.field private mPhoneNumber:Landroid/widget/TextView;

.field private mPhoto:Landroid/widget/ImageView;

.field private mPhotoDimEffect:Landroid/view/View;

.field private mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

.field private mPrimaryCallBanner:Landroid/view/ViewGroup;

.field private mPrimaryCallInfo:Landroid/view/ViewGroup;

.field private mProviderAddress:Landroid/widget/TextView;

.field private mProviderInfo:Landroid/view/ViewGroup;

.field private mProviderLabel:Landroid/widget/TextView;

.field private mSecondaryCallInfo:Landroid/view/ViewStub;

.field private mSecondaryCallName:Landroid/widget/TextView;

.field private mSecondaryCallPhoto:Landroid/widget/ImageView;

.field private mSecondaryCallPhotoDimEffect:Landroid/view/View;

.field private mSecondaryInfoContainer:Landroid/view/ViewGroup;

.field private mTextColorCallTypeSip:I

.field private mTextColorDefault:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 180
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 165
    new-instance v0, Lcom/android/phone/CallCard$1;

    invoke-direct {v0, p0}, Lcom/android/phone/CallCard$1;-><init>(Lcom/android/phone/CallCard;)V

    iput-object v0, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    .line 186
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    .line 188
    new-instance v0, Lcom/android/phone/CallTime;

    invoke-direct {v0, p0}, Lcom/android/phone/CallTime;-><init>(Lcom/android/phone/CallTime$OnTickListener;)V

    iput-object v0, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    .line 191
    new-instance v0, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-direct {v0}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;-><init>()V

    iput-object v0, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    .line 193
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/android/phone/CallCard;->mDensity:F

    .line 195
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/CallCard;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/android/phone/CallCard;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Landroid/widget/ImageView;I)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/ImageView;
    .param p1, "x1"    # I

    .prologue
    .line 61
    invoke-static {p0, p1}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    return-void
.end method

.method private dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 1782
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v0

    .line 1783
    .local v0, "eventText":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1784
    .local v1, "size":I
    invoke-virtual {p2, p1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 1786
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 1787
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1789
    :cond_0
    return-void
.end method

.method private displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V
    .locals 21
    .param p1, "cm"    # Lcom/android/internal/telephony/CallManager;
    .param p2, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 458
    if-nez p2, :cond_1

    .line 460
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 655
    :cond_0
    :goto_0
    return-void

    .line 463
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 465
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v18

    .line 468
    .local v18, "state":Lcom/android/internal/telephony/Call$State;
    sget-object v2, Lcom/android/phone/CallCard$2;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    .line 521
    const-string v2, "CallCard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "displayMainCallStatus: unexpected call state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    :goto_1
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->updateCallStateWidgets(Lcom/android/internal/telephony/Call;)V

    .line 527
    invoke-static/range {p2 .. p2}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 529
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->updateDisplayForConference(Lcom/android/internal/telephony/Call;)V

    .line 639
    :goto_2
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/phone/CallCard;->updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V

    .line 644
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/phone/CallCard;->mIncomingCallWidgetHintTextResId:I

    if-eqz v2, :cond_0

    .line 646
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/phone/CallCard;->mIncomingCallWidgetHintTextResId:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 647
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/phone/CallCard;->mIncomingCallWidgetHintColorResId:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 648
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 649
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 473
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/android/phone/CallTime;->setActiveCallMode(Lcom/android/internal/telephony/Call;)V

    .line 474
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v2}, Lcom/android/phone/CallTime;->reset()V

    .line 475
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v2}, Lcom/android/phone/CallTime;->periodicUpdateTimer()V

    goto :goto_1

    .line 481
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v2}, Lcom/android/phone/CallTime;->cancelTimer()V

    goto :goto_1

    .line 487
    :pswitch_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v2}, Lcom/android/phone/CallTime;->cancelTimer()V

    goto :goto_1

    .line 494
    :pswitch_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v2}, Lcom/android/phone/CallTime;->cancelTimer()V

    goto/16 :goto_1

    .line 501
    :pswitch_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v2}, Lcom/android/phone/CallTime;->cancelTimer()V

    goto/16 :goto_1

    .line 510
    :pswitch_5
    const-string v2, "CallCard"

    const-string v4, "displayMainCallStatus: IDLE call in the main call card!"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 533
    :cond_2
    const/4 v7, 0x0

    .line 534
    .local v7, "conn":Lcom/android/internal/telephony/Connection;
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v16

    .line 535
    .local v16, "phoneType":I
    const/4 v2, 0x2

    move/from16 v0, v16

    if-ne v0, v2, :cond_3

    .line 536
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    .line 544
    :goto_3
    if-nez v7, :cond_6

    .line 550
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v4, 0x0

    invoke-static {v2, v4}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v3

    .line 551
    .local v3, "info":Lcom/android/internal/telephony/CallerInfo;
    sget v4, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    const/4 v5, 0x0

    move-object/from16 v2, p0

    move-object/from16 v6, p2

    invoke-direct/range {v2 .. v7}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_2

    .line 537
    .end local v3    # "info":Lcom/android/internal/telephony/CallerInfo;
    :cond_3
    const/4 v2, 0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_4

    const/4 v2, 0x3

    move/from16 v0, v16

    if-ne v0, v2, :cond_5

    .line 539
    :cond_4
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    goto :goto_3

    .line 541
    :cond_5
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected phone type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v16

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 555
    :cond_6
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v10

    .line 559
    .local v10, "presentation":I
    const/16 v17, 0x1

    .line 560
    .local v17, "runQuery":Z
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v14

    .line 561
    .local v14, "o":Ljava/lang/Object;
    instance-of v2, v14, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v2, :cond_a

    .line 562
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    move-object v2, v14

    check-cast v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v2, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {v4, v2}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v17

    .line 570
    :goto_4
    const/4 v2, 0x2

    move/from16 v0, v16

    if-ne v0, v2, :cond_9

    .line 571
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v15

    .line 572
    .local v15, "obj":Ljava/lang/Object;
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v20

    .line 573
    .local v20, "updatedNumber":Ljava/lang/String;
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v19

    .line 574
    .local v19, "updatedCnapName":Ljava/lang/String;
    const/4 v3, 0x0

    .line 575
    .restart local v3    # "info":Lcom/android/internal/telephony/CallerInfo;
    instance-of v2, v15, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v2, :cond_b

    move-object v2, v14

    .line 576
    check-cast v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v3, v2, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 581
    :cond_7
    :goto_5
    if-eqz v3, :cond_9

    .line 582
    if-eqz v20, :cond_8

    iget-object v2, v3, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 585
    const/16 v17, 0x1

    .line 587
    :cond_8
    if-eqz v19, :cond_9

    iget-object v2, v3, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 590
    const/16 v17, 0x1

    .line 595
    .end local v3    # "info":Lcom/android/internal/telephony/CallerInfo;
    .end local v15    # "obj":Ljava/lang/Object;
    .end local v19    # "updatedCnapName":Ljava/lang/String;
    .end local v20    # "updatedNumber":Ljava/lang/String;
    :cond_9
    if-eqz v17, :cond_d

    .line 597
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v2, v7, v0, v1}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v3

    .line 599
    .local v3, "info":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    iget-object v9, v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-boolean v2, v3, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-nez v2, :cond_c

    const/4 v11, 0x1

    :goto_6
    move-object/from16 v8, p0

    move-object/from16 v12, p2

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_2

    .line 565
    .end local v3    # "info":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v2, v7}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/Connection;)Z

    move-result v17

    goto :goto_4

    .line 577
    .local v3, "info":Lcom/android/internal/telephony/CallerInfo;
    .restart local v15    # "obj":Ljava/lang/Object;
    .restart local v19    # "updatedCnapName":Ljava/lang/String;
    .restart local v20    # "updatedNumber":Ljava/lang/String;
    :cond_b
    instance-of v2, v14, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_7

    move-object v3, v14

    .line 578
    check-cast v3, Lcom/android/internal/telephony/CallerInfo;

    goto :goto_5

    .line 599
    .end local v15    # "obj":Ljava/lang/Object;
    .end local v19    # "updatedCnapName":Ljava/lang/String;
    .end local v20    # "updatedNumber":Ljava/lang/String;
    .local v3, "info":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_c
    const/4 v11, 0x0

    goto :goto_6

    .line 606
    .end local v3    # "info":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_d
    instance-of v2, v14, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_e

    move-object v9, v14

    .line 607
    check-cast v9, Lcom/android/internal/telephony/CallerInfo;

    .line 609
    .local v9, "ci":Lcom/android/internal/telephony/CallerInfo;
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getCnapName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v9, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 610
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v2

    iput v2, v9, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 611
    invoke-virtual {v7}, Lcom/android/internal/telephony/Connection;->getCnapNamePresentation()I

    move-result v2

    iput v2, v9, Lcom/android/internal/telephony/CallerInfo;->namePresentation:I

    .line 616
    const/4 v11, 0x0

    move-object/from16 v8, p0

    move-object/from16 v12, p2

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_2

    .line 617
    .end local v9    # "ci":Lcom/android/internal/telephony/CallerInfo;
    :cond_e
    instance-of v2, v14, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v2, :cond_f

    .line 618
    check-cast v14, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    .end local v14    # "o":Ljava/lang/Object;
    iget-object v9, v14, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 623
    .restart local v9    # "ci":Lcom/android/internal/telephony/CallerInfo;
    const/4 v11, 0x1

    move-object/from16 v8, p0

    move-object/from16 v12, p2

    move-object v13, v7

    invoke-direct/range {v8 .. v13}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto/16 :goto_2

    .line 625
    .end local v9    # "ci":Lcom/android/internal/telephony/CallerInfo;
    .restart local v14    # "o":Ljava/lang/Object;
    :cond_f
    const-string v2, "CallCard"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "displayMainCallStatus: runQuery was false, but we didn\'t have a cached CallerInfo object!  o = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 468
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private displaySecondaryCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V
    .locals 12
    .param p1, "cm"    # Lcom/android/internal/telephony/CallManager;
    .param p2, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    const/4 v9, 0x2

    const v11, 0x7f020056

    const/16 v10, 0x8

    .line 970
    if-eqz p2, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/phone/PhoneGlobals;->isOtaCallInActiveState()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 971
    :cond_0
    iget-object v7, p0, Lcom/android/phone/CallCard;->mSecondaryCallInfo:Landroid/view/ViewStub;

    invoke-virtual {v7, v10}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 1083
    :goto_0
    return-void

    .line 975
    :cond_1
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    .line 976
    .local v6, "state":Lcom/android/internal/telephony/Call$State;
    sget-object v7, Lcom/android/phone/CallCard$2;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 1080
    :pswitch_0
    iget-object v7, p0, Lcom/android/phone/CallCard;->mSecondaryCallInfo:Landroid/view/ViewStub;

    invoke-virtual {v7, v10}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_0

    .line 984
    :pswitch_1
    invoke-direct {p0}, Lcom/android/phone/CallCard;->showSecondaryCallInfo()V

    .line 986
    invoke-static {p2}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 988
    iget-object v7, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f090070

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 989
    iget-object v7, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    const v8, 0x7f020052

    invoke-static {v7, v8}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 1014
    :goto_1
    iget-object v7, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhotoDimEffect:Landroid/view/View;

    invoke-static {v7}, Lcom/android/phone/AnimationUtils$Fade;->show(Landroid/view/View;)V

    goto :goto_0

    .line 995
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-static {v7, p2, p0, v8}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v4

    .line 997
    .local v4, "infoToken":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    iget-object v7, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    iget-object v8, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1007
    iget-boolean v7, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-eqz v7, :cond_3

    .line 1008
    iget-object v7, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    iget-object v8, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-static {v7, v8}, Lcom/android/phone/CallCard;->showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    goto :goto_1

    .line 1010
    :cond_3
    iget-object v7, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    invoke-static {v7, v11}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto :goto_1

    .line 1021
    .end local v4    # "infoToken":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :pswitch_2
    iget-object v7, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v7, v7, Lcom/android/phone/PhoneGlobals;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    if-ne v7, v9, :cond_7

    .line 1022
    invoke-direct {p0}, Lcom/android/phone/CallCard;->showSecondaryCallInfo()V

    .line 1024
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 1025
    .local v1, "connections":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v7

    if-le v7, v9, :cond_4

    .line 1030
    iget-object v7, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v8

    const v9, 0x7f09019c

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1032
    iget-object v7, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    invoke-static {v7, v11}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 1073
    .end local v1    # "connections":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    :goto_2
    iget-object v7, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhotoDimEffect:Landroid/view/View;

    invoke-static {v7, v10}, Lcom/android/phone/AnimationUtils$Fade;->hide(Landroid/view/View;I)V

    goto/16 :goto_0

    .line 1036
    .restart local v1    # "connections":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    :cond_4
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 1037
    .local v0, "conn":Lcom/android/internal/telephony/Connection;
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-static {v7, v0, p0, v8}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v4

    .line 1043
    .restart local v4    # "infoToken":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    iget-object v3, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 1045
    .local v3, "info":Lcom/android/internal/telephony/CallerInfo;
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 1046
    .local v5, "name":Ljava/lang/String;
    const/4 v2, 0x0

    .line 1047
    .local v2, "forceGenericPhoto":Z
    if-eqz v3, :cond_5

    iget v7, v3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    sget v8, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    if-eq v7, v8, :cond_5

    .line 1049
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v7

    iget v8, v3, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    invoke-static {v7, v8}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    .line 1051
    const/4 v2, 0x1

    .line 1053
    :cond_5
    iget-object v7, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1061
    if-nez v2, :cond_6

    iget-boolean v7, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;->isFinal:Z

    if-eqz v7, :cond_6

    .line 1062
    iget-object v7, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    invoke-static {v7, v3}, Lcom/android/phone/CallCard;->showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    goto :goto_2

    .line 1064
    :cond_6
    iget-object v7, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    invoke-static {v7, v11}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto :goto_2

    .line 1069
    .end local v0    # "conn":Lcom/android/internal/telephony/Connection;
    .end local v1    # "connections":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    .end local v2    # "forceGenericPhoto":Z
    .end local v3    # "info":Lcom/android/internal/telephony/CallerInfo;
    .end local v4    # "infoToken":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v5    # "name":Ljava/lang/String;
    :cond_7
    const-string v7, "CallCard"

    const-string v8, "displayOnHoldCallStatus: ACTIVE state on non-CDMA device"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1070
    iget-object v7, p0, Lcom/android/phone/CallCard;->mSecondaryCallInfo:Landroid/view/ViewStub;

    invoke-virtual {v7, v10}, Landroid/view/ViewStub;->setVisibility(I)V

    goto :goto_2

    .line 976
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getCallFailedString(Lcom/android/internal/telephony/Call;)Ljava/lang/String;
    .locals 5
    .param p1, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 1114
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 1117
    .local v0, "c":Lcom/android/internal/telephony/Connection;
    if-nez v0, :cond_0

    .line 1121
    const v2, 0x7f090199

    .line 1194
    .local v2, "resID":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 1124
    .end local v2    # "resID":I
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v1

    .line 1130
    .local v1, "cause":Lcom/android/internal/telephony/Connection$DisconnectCause;
    sget-object v3, Lcom/android/phone/CallCard$2;->$SwitchMap$com$android$internal$telephony$Connection$DisconnectCause:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$DisconnectCause;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1190
    const v2, 0x7f090199

    .restart local v2    # "resID":I
    goto :goto_0

    .line 1132
    .end local v2    # "resID":I
    :pswitch_0
    const v2, 0x7f09005d

    .line 1133
    .restart local v2    # "resID":I
    goto :goto_0

    .line 1136
    .end local v2    # "resID":I
    :pswitch_1
    const v2, 0x7f09005e

    .line 1137
    .restart local v2    # "resID":I
    goto :goto_0

    .line 1140
    .end local v2    # "resID":I
    :pswitch_2
    const v2, 0x7f09005f

    .line 1141
    .restart local v2    # "resID":I
    goto :goto_0

    .line 1144
    .end local v2    # "resID":I
    :pswitch_3
    const v2, 0x7f090060

    .line 1145
    .restart local v2    # "resID":I
    goto :goto_0

    .line 1148
    .end local v2    # "resID":I
    :pswitch_4
    const v2, 0x7f090061

    .line 1149
    .restart local v2    # "resID":I
    goto :goto_0

    .line 1152
    .end local v2    # "resID":I
    :pswitch_5
    const v2, 0x7f090062

    .line 1153
    .restart local v2    # "resID":I
    goto :goto_0

    .line 1156
    .end local v2    # "resID":I
    :pswitch_6
    const v2, 0x7f090064

    .line 1157
    .restart local v2    # "resID":I
    goto :goto_0

    .line 1160
    .end local v2    # "resID":I
    :pswitch_7
    const v2, 0x7f090063

    .line 1161
    .restart local v2    # "resID":I
    goto :goto_0

    .line 1165
    .end local v2    # "resID":I
    :pswitch_8
    const v2, 0x7f090065

    .line 1166
    .restart local v2    # "resID":I
    goto :goto_0

    .line 1169
    .end local v2    # "resID":I
    :pswitch_9
    const v2, 0x7f090066

    .line 1170
    .restart local v2    # "resID":I
    goto :goto_0

    .line 1173
    .end local v2    # "resID":I
    :pswitch_a
    const v2, 0x7f090067

    .line 1174
    .restart local v2    # "resID":I
    goto :goto_0

    .line 1177
    .end local v2    # "resID":I
    :pswitch_b
    const v2, 0x7f090068

    .line 1178
    .restart local v2    # "resID":I
    goto :goto_0

    .line 1181
    .end local v2    # "resID":I
    :pswitch_c
    const v2, 0x7f090069

    .line 1182
    .restart local v2    # "resID":I
    goto :goto_0

    .line 1186
    .end local v2    # "resID":I
    :pswitch_d
    const v2, 0x7f09006f

    .line 1187
    .restart local v2    # "resID":I
    goto :goto_0

    .line 1130
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_d
    .end packed-switch
.end method

.method private getECMCardTitle(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 1663
    invoke-interface {p2}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v0

    .line 1665
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1666
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1670
    :goto_0
    const v1, 0x7f09019d

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1671
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1668
    :cond_0
    const v0, 0x7f090059

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private setGeoDescription(Lcom/android/internal/telephony/CallerInfo;)V
    .locals 3
    .param p1, "info"    # Lcom/android/internal/telephony/CallerInfo;

    .prologue
    const/16 v2, 0x8

    .line 36
    if-nez p1, :cond_1

    .line 51
    :cond_0
    :goto_0
    return-void

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTypeLabel:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 39
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->geoDescription:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 40
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/CallerInfo;->updateGeoDescription(Landroid/content/Context;Ljava/lang/String;)V

    .line 42
    :cond_2
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->geoDescription:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTypeLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 44
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTypeLabel:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->geoDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTypeLabel:Landroid/widget/TextView;

    const v1, -0xd75f35

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 46
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->geoDescription:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method


.method private static final showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z
    .locals 1
    .param p0, "view"    # Landroid/widget/ImageView;
    .param p1, "ci"    # Lcom/android/internal/telephony/CallerInfo;

    .prologue
    .line 1622
    if-eqz p1, :cond_1

    iget-boolean v0, p1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-eqz v0, :cond_1

    .line 1623
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 1624
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    invoke-static {p0, v0}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 1628
    :goto_0
    const/4 v0, 0x1

    .line 1630
    :goto_1
    return v0

    .line 1626
    :cond_0
    const v0, 0x7f020056

    invoke-static {p0, v0}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto :goto_0

    .line 1630
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static final showImage(Landroid/widget/ImageView;I)V
    .locals 1
    .param p0, "view"    # Landroid/widget/ImageView;
    .param p1, "resource"    # I

    .prologue
    .line 1635
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 1636
    return-void
.end method

.method private static final showImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p0, "view"    # Landroid/widget/ImageView;
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1639
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-static {p0, v0}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 1640
    return-void
.end method

.method private static final showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p0, "view"    # Landroid/widget/ImageView;
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1644
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1645
    .local v1, "res":Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 1647
    .local v0, "current":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 1649
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1650
    invoke-static {p0}, Lcom/android/phone/AnimationUtils$Fade;->show(Landroid/view/View;)V

    .line 1651
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1656
    :goto_0
    return-void

    .line 1653
    :cond_0
    invoke-static {p0, v0, p1}, Lcom/android/phone/AnimationUtils;->startCrossFade(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1654
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private showSecondaryCallInfo()V
    .locals 2

    .prologue
    .line 1087
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallInfo:Landroid/view/ViewStub;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 1088
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    if-nez v0, :cond_0

    .line 1089
    const v0, 0x7f08008a

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    .line 1091
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    if-nez v0, :cond_1

    .line 1092
    const v0, 0x7f080088

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    .line 1094
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhotoDimEffect:Landroid/view/View;

    if-nez v0, :cond_2

    .line 1095
    const v0, 0x7f080089

    invoke-virtual {p0, v0}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhotoDimEffect:Landroid/view/View;

    .line 1096
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhotoDimEffect:Landroid/view/View;

    iget-object v1, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1098
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhotoDimEffect:Landroid/view/View;

    new-instance v1, Lcom/android/phone/SmallerHitTargetTouchListener;

    invoke-direct {v1}, Lcom/android/phone/SmallerHitTargetTouchListener;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 1100
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->updateButtonStateOutsideInCallTouchUi()V

    .line 1101
    return-void
.end method

.method private updateAlreadyDisconnected(Lcom/android/internal/telephony/CallManager;)V
    .locals 5
    .param p1, "cm"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 424
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 425
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryInfoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 426
    iget-object v0, p0, Lcom/android/phone/CallCard;->mProviderInfo:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 427
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 428
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/CallCard;->mContext:Landroid/content/Context;

    const v2, 0x7f090199

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    iget-object v0, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 430
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->cancelTimer()V

    .line 433
    invoke-direct {p0, p1, v4}, Lcom/android/phone/CallCard;->displaySecondaryCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 434
    return-void
.end method

.method private updateCallInfoLayout(Lcom/android/internal/telephony/PhoneConstants$State;)V
    .locals 4
    .param p1, "state"    # Lcom/android/internal/telephony/PhoneConstants$State;

    .prologue
    .line 325
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne p1, v3, :cond_0

    const/4 v2, 0x1

    .line 335
    .local v2, "ringing":Z
    :goto_0
    iget-object v3, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3}, Lcom/android/phone/InCallScreen;->getInCallTouchUi()Lcom/android/phone/InCallTouchUi;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/InCallTouchUi;->getTouchUiHeight()I

    move-result v1

    .line 336
    .local v1, "reservedVerticalSpace":I
    iget-object v3, p0, Lcom/android/phone/CallCard;->mCallInfoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 338
    .local v0, "callInfoLp":Landroid/view/ViewGroup$MarginLayoutParams;
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 341
    iget-object v3, p0, Lcom/android/phone/CallCard;->mCallInfoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 342
    return-void

    .line 325
    .end local v0    # "callInfoLp":Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v1    # "reservedVerticalSpace":I
    .end local v2    # "ringing":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateCallStateWidgets(Lcom/android/internal/telephony/Call;)V
    .locals 14
    .param p1, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 755
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    .line 756
    .local v8, "state":Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 757
    .local v2, "context":Landroid/content/Context;
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    .line 758
    .local v5, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    .line 760
    .local v6, "phoneType":I
    const/4 v1, 0x0

    .line 761
    .local v1, "callStateLabel":Ljava/lang/String;
    const/4 v0, 0x0

    .line 763
    .local v0, "bluetoothIconId":I
    sget-object v9, Lcom/android/phone/CallCard$2;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_0

    .line 813
    const-string v9, "CallCard"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "updateCallStateWidgets: unexpected call state: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v9, 0x2

    if-ne v6, v9, :cond_b

    .line 820
    sget-object v9, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v8, v9, :cond_a

    iget-object v9, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v9, v9, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v9}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v9

    if-eqz v9, :cond_a

    .line 824
    const v9, 0x7f090195

    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 834
    :cond_1
    :goto_1
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 837
    invoke-direct {p0, v2, v5}, Lcom/android/phone/CallCard;->getECMCardTitle(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)Ljava/lang/String;

    move-result-object v1

    .line 840
    :cond_2
    iget-object v9, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v3, v9, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    .line 851
    .local v3, "inCallUiState":Lcom/android/phone/InCallUiState;
    sget-object v9, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v8, v9, :cond_3

    sget-object v9, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-eq v8, v9, :cond_3

    sget-object v9, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v8, v9, :cond_c

    :cond_3
    const/4 v7, 0x1

    .line 854
    .local v7, "skipAnimation":Z
    :goto_2
    const/4 v4, 0x0

    .line 855
    .local v4, "layoutTransition":Landroid/animation/LayoutTransition;
    if-eqz v7, :cond_4

    .line 857
    iget-object v9, p0, Lcom/android/phone/CallCard;->mSecondaryInfoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v9}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v4

    .line 858
    iget-object v9, p0, Lcom/android/phone/CallCard;->mSecondaryInfoContainer:Landroid/view/ViewGroup;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 861
    :cond_4
    iget-boolean v9, v3, Lcom/android/phone/InCallUiState;->providerInfoVisible:Z

    if-eqz v9, :cond_d

    .line 862
    iget-object v9, p0, Lcom/android/phone/CallCard;->mProviderInfo:Landroid/view/ViewGroup;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 863
    iget-object v9, p0, Lcom/android/phone/CallCard;->mProviderLabel:Landroid/widget/TextView;

    const v10, 0x7f0901f5

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    iget-object v13, v3, Lcom/android/phone/InCallUiState;->providerLabel:Ljava/lang/CharSequence;

    aput-object v13, v11, v12

    invoke-virtual {v2, v10, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 865
    iget-object v9, p0, Lcom/android/phone/CallCard;->mProviderAddress:Landroid/widget/TextView;

    iget-object v10, v3, Lcom/android/phone/InCallUiState;->providerAddress:Ljava/lang/String;

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 867
    iget-object v9, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v9}, Lcom/android/phone/InCallScreen;->requestRemoveProviderInfoWithDelay()V

    .line 872
    :goto_3
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_f

    .line 873
    iget-object v9, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 874
    iget-object v9, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v9, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 877
    if-eqz v0, :cond_e

    .line 878
    iget-object v9, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-virtual {v9, v0, v10, v11, v12}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 879
    iget-object v9, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    iget v10, p0, Lcom/android/phone/CallCard;->mDensity:F

    const/high16 v11, 0x40a00000

    mul-float/2addr v10, v11

    float-to-int v10, v10

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 895
    :cond_5
    :goto_4
    if-eqz v7, :cond_6

    .line 897
    iget-object v9, p0, Lcom/android/phone/CallCard;->mSecondaryInfoContainer:Landroid/view/ViewGroup;

    invoke-virtual {v9, v4}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 901
    :cond_6
    sget-object v9, Lcom/android/phone/CallCard$2;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v10

    aget v9, v9, v10

    packed-switch v9, :pswitch_data_1

    .line 924
    :pswitch_1
    iget-object v9, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    const/4 v10, 0x4

    invoke-static {v9, v10}, Lcom/android/phone/AnimationUtils$Fade;->hide(Landroid/view/View;I)V

    .line 931
    sget-object v9, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v8, v9, :cond_7

    sget-object v9, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v8, v9, :cond_8

    .line 932
    :cond_7
    const-wide/16 v9, 0x0

    invoke-direct {p0, v9, v10}, Lcom/android/phone/CallCard;->updateElapsedTimeWidget(J)V

    .line 937
    :cond_8
    :goto_5
    return-void

    .line 774
    .end local v3    # "inCallUiState":Lcom/android/phone/InCallUiState;
    .end local v4    # "layoutTransition":Landroid/animation/LayoutTransition;
    .end local v7    # "skipAnimation":Z
    :pswitch_2
    const v9, 0x7f09019a

    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 775
    goto/16 :goto_0

    .line 779
    :pswitch_3
    iget-object v9, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v9, v9, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v9, p1}, Lcom/android/phone/CallNotifier;->isCallWaiting(Lcom/android/internal/telephony/Call;)Z

    move-result v9

    if-eqz v9, :cond_9

    .line 780
    const v9, 0x7f090007

    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 782
    :cond_9
    const v9, 0x7f090195

    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 784
    goto/16 :goto_0

    .line 788
    :pswitch_4
    const v9, 0x7f090198

    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 793
    iget-object v9, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    invoke-virtual {v9}, Lcom/android/phone/PhoneGlobals;->showBluetoothIndication()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 794
    const v0, 0x7f02002e

    goto/16 :goto_0

    .line 805
    :pswitch_5
    const v9, 0x7f09019b

    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 806
    goto/16 :goto_0

    .line 809
    :pswitch_6
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->getCallFailedString(Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v1

    .line 810
    goto/16 :goto_0

    .line 825
    :cond_a
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v9

    iget-object v9, v9, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v9}, Lcom/android/phone/CallNotifier;->getIsCdmaRedialCall()Z

    move-result v9

    if-eqz v9, :cond_1

    .line 826
    const v9, 0x7f090196

    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 828
    :cond_b
    const/4 v9, 0x1

    if-ne v6, v9, :cond_1

    .line 829
    sget-object v9, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v8, v9, :cond_1

    iget-object v9, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v9, v9, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v9, p1}, Lcom/android/phone/CallNotifier;->isCallWaiting(Lcom/android/internal/telephony/Call;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 830
    const v9, 0x7f090008

    invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_1

    .line 851
    .restart local v3    # "inCallUiState":Lcom/android/phone/InCallUiState;
    :cond_c
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 869
    .restart local v4    # "layoutTransition":Landroid/animation/LayoutTransition;
    .restart local v7    # "skipAnimation":Z
    :cond_d
    iget-object v9, p0, Lcom/android/phone/CallCard;->mProviderInfo:Landroid/view/ViewGroup;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_3

    .line 882
    :cond_e
    iget-object v9, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    goto/16 :goto_4

    .line 885
    :cond_f
    iget-object v9, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    const/16 v10, 0x8

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 890
    iget-object v9, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getGravity()I

    move-result v9

    const/4 v10, 0x5

    if-eq v9, v10, :cond_5

    .line 891
    iget-object v9, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    const-string v10, ""

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 892
    iget-object v9, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    const/4 v10, 0x5

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_4

    .line 905
    :pswitch_7
    iget-object v9, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    invoke-static {v9}, Lcom/android/phone/AnimationUtils$Fade;->show(Landroid/view/View;)V

    .line 906
    invoke-virtual {p0, p1}, Lcom/android/phone/CallCard;->updateElapsedTimeWidget(Lcom/android/internal/telephony/Call;)V

    goto/16 :goto_5

    .line 914
    :pswitch_8
    iget-object v9, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getVisibility()I

    move-result v9

    if-eqz v9, :cond_8

    .line 915
    iget-object v9, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_5

    .line 763
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_5
        :pswitch_2
        :pswitch_6
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_0
    .end packed-switch

    .line 901
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_7
        :pswitch_7
        :pswitch_1
        :pswitch_8
    .end packed-switch
.end method

.method private updateCallTypeLabel(Lcom/android/internal/telephony/Call;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1685
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 1687
    :goto_0
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 1688
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTypeLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1689
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTypeLabel:Landroid/widget/TextView;

    const v1, 0x7f0901bc

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1690
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTypeLabel:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/phone/CallCard;->mTextColorCallTypeSip:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 1702
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 1685
    goto :goto_0

    .line 1695
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v0, v0, Lcom/android/phone/PhoneGlobals;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v0, p1}, Lcom/android/phone/CallNotifier;->isCallForwarded(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1696
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTypeLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1697
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTypeLabel:Landroid/widget/TextView;

    const v1, 0x7f090017

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1698
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTypeLabel:Landroid/widget/TextView;

    iget v1, p0, Lcom/android/phone/CallCard;->mTextColorDefault:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 1700
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTypeLabel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateDisplayForConference(Lcom/android/internal/telephony/Call;)V
    .locals 4

    .prologue
    const/16 v2, 0x8

    .line 1439
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 1440
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1447
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    const v1, 0x7f020053

    invoke-static {v0, v1}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 1448
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    const v1, 0x7f09019c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1461
    :goto_0
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1467
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1468
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1471
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateCallTypeLabel(Lcom/android/internal/telephony/Call;)V

    .line 1483
    return-void

    .line 1449
    :cond_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 1455
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    const v1, 0x7f020052

    invoke-static {v0, v1}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 1456
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    const v1, 0x7f090197

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 1458
    :cond_2
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V
    .locals 8

    .prologue
    .line 1213
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v0, p1}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoRequest(Lcom/android/internal/telephony/CallerInfo;)V

    .line 1214
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    .line 1217
    const/4 v3, 0x0

    .line 1219
    const/4 v2, 0x0

    .line 1220
    const/4 v1, 0x0

    .line 1221
    const/4 v0, 0x0

    .line 1225
    if-eqz p1, :cond_d

    .line 1248
    iget-object v0, p1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 1249
    if-eqz v0, :cond_0

    const-string v4, "sip:"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1250
    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 1253
    :cond_0
    iget-object v4, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 1259
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1262
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    move-object v7, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v7

    .line 1317
    :goto_0
    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v5, p1, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    move-object v5, v2

    move-object v2, v4

    move-object v4, v1

    move v1, v3

    move-object v3, v0

    .line 1324
    :goto_1
    const/4 v0, 0x1

    .line 1327
    if-eqz v1, :cond_4

    .line 1332
    const/4 v1, 0x0

    .line 1333
    iget-object v6, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getVisibility()I

    move-result v6

    if-nez v6, :cond_1

    .line 1334
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1336
    :cond_1
    if-eqz v1, :cond_2

    invoke-static {v1, v5}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    iget-object v1, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v5}, Landroid/telephony/PhoneNumberUtils;->compare(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v1

    iget-object v6, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->length()I

    move-result v6

    if-ge v1, v6, :cond_4

    .line 1342
    :cond_3
    const/4 v0, 0x0

    .line 1346
    :cond_4
    if-eqz v0, :cond_5

    .line 1347
    invoke-virtual {p4}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1348
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    const v1, 0x7f09019c

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1352
    :goto_2
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1354
    if-eqz v4, :cond_f

    invoke-virtual {p4}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v0

    if-nez v0, :cond_f

    .line 1355
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1356
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1361
    :goto_3
    if-eqz v3, :cond_10

    invoke-virtual {p4}, Lcom/android/internal/telephony/Call;->isGeneric()Z

    move-result v0

    if-nez v0, :cond_10

    .line 1362
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1363
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1379
    :cond_5
    :goto_4
    if-eqz p3, :cond_11

    if-eqz p1, :cond_6

    iget-boolean v0, p1, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-nez v0, :cond_11

    .line 1380
    :cond_6
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1381
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1418
    :cond_7
    :goto_5
    invoke-virtual {p4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_14

    .line 1419
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhotoDimEffect:Landroid/view/View;

    invoke-static {v0}, Lcom/android/phone/AnimationUtils$Fade;->show(Landroid/view/View;)V

    .line 1425
    :goto_6
    invoke-direct {p0, p4}, Lcom/android/phone/CallCard;->updateCallTypeLabel(Lcom/android/internal/telephony/Call;)V

    move-object/from16 v0, p1

invoke-direct {p0, v0}, Lcom/android/phone/CallCard;->setGeoDescription(Lcom/android/internal/telephony/CallerInfo;)V


    .line 1427
    return-void

    .line 1264
    :cond_8
    sget v4, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    if-eq p2, v4, :cond_9

    .line 1268
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    move-object v7, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v7

    goto/16 :goto_0

    .line 1270
    :cond_9
    iget-object v4, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_a

    .line 1272
    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 1273
    iget-object v4, p1, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    iput-object v4, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    .line 1274
    goto/16 :goto_0

    .line 1285
    :cond_a
    const/4 v3, 0x1

    .line 1289
    if-eqz p5, :cond_15

    invoke-virtual {p5}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 1293
    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->geoDescription:Ljava/lang/String;

    move-object v7, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v7

    goto/16 :goto_0

    .line 1302
    :cond_b
    sget v4, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    if-eq p2, v4, :cond_c

    .line 1306
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    move-object v7, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v7

    goto/16 :goto_0

    .line 1310
    :cond_c
    iget-object v2, p1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 1312
    iget-object v1, p1, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto/16 :goto_0

    .line 1321
    :cond_d
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, p2}, Lcom/android/phone/PhoneUtils;->getPresentationString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    move-object v4, v2

    move-object v2, v0

    move-object v7, v1

    move v1, v3

    move-object v3, v7

    goto/16 :goto_1

    .line 1350
    :cond_e
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 1358
    :cond_f
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 1365
    :cond_10
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4

    .line 1382
    :cond_11
    if-eqz p1, :cond_12

    iget v0, p1, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    if-eqz v0, :cond_12

    .line 1383
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    iget v1, p1, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    invoke-static {v0, v1}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto/16 :goto_5

    .line 1384
    :cond_12
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-static {v0, p1}, Lcom/android/phone/CallCard;->showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1385
    if-nez v2, :cond_13

    .line 1386
    const-string v0, "CallCard"

    const-string v1, "personPri is null. Just use Unknown picture."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    const v1, 0x7f020056

    invoke-static {v0, v1}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto/16 :goto_5

    .line 1388
    :cond_13
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLoadingPersonUri:Landroid/net/Uri;

    invoke-virtual {v2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1397
    iput-object v2, p0, Lcom/android/phone/CallCard;->mLoadingPersonUri:Landroid/net/Uri;

    .line 1400
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1402
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1405
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v3, Lcom/android/phone/CallCard$AsyncLoadCookie;

    iget-object v4, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {v3, v4, p1, p4}, Lcom/android/phone/CallCard$AsyncLoadCookie;-><init>(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;Lcom/android/internal/telephony/Call;)V

    invoke-static {v0, v1, v2, p0, v3}, Lcom/android/phone/ContactsAsyncHelper;->startObtainPhotoAsync(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;)V

    .line 1410
    iget-object v0, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1411
    iget-object v0, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_5

    .line 1421
    :cond_14
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhotoDimEffect:Landroid/view/View;

    const/16 v1, 0x8

    invoke-static {v0, v1}, Lcom/android/phone/AnimationUtils$Fade;->hide(Landroid/view/View;I)V

    goto/16 :goto_6

    :cond_15
    move-object v7, v1

    move-object v1, v2

    move-object v2, v0

    move-object v0, v7

    goto/16 :goto_0
.end method

.method private updateElapsedTimeWidget(J)V
    .locals 2
    .param p1, "timeElapsed"    # J

    .prologue
    .line 957
    iget-object v0, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 958
    return-void
.end method

.method private updateForegroundCall(Lcom/android/internal/telephony/CallManager;)V
    .locals 6
    .param p1, "cm"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    .line 351
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 352
    .local v1, "fgCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 354
    .local v0, "bgCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_0

    .line 362
    move-object v1, v0

    .line 365
    const/4 v0, 0x0

    .line 368
    :cond_0
    invoke-direct {p0, p1, v1}, Lcom/android/phone/CallCard;->displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 370
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 372
    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 373
    .local v3, "phoneType":I
    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 374
    iget-object v4, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v4}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v4

    sget-object v5, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v4}, Lcom/android/phone/CdmaPhoneCallState;->IsThreeWayCallOrigStateDialing()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 377
    invoke-direct {p0, p1, v1}, Lcom/android/phone/CallCard;->displaySecondaryCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 387
    :cond_1
    :goto_0
    return-void

    .line 381
    :cond_2
    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->displaySecondaryCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    goto :goto_0

    .line 383
    :cond_3
    const/4 v4, 0x1

    if-eq v3, v4, :cond_4

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 385
    :cond_4
    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->displaySecondaryCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    goto :goto_0
.end method

.method private updateNoCall(Lcom/android/internal/telephony/CallManager;)V
    .locals 1
    .param p1, "cm"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    const/4 v0, 0x0

    .line 447
    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 448
    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->displaySecondaryCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 449
    return-void
.end method

.method private updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, -0x2

    const/4 v3, 0x0

    .line 1497
    const/4 v1, 0x0

    .line 1501
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 1502
    sget-object v2, Lcom/android/phone/CallCard$2;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 1545
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 1546
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 1547
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 1555
    :goto_0
    if-eqz v0, :cond_a

    .line 1556
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    .line 1557
    instance-of v2, v0, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_6

    .line 1558
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    move-object v2, v0

    .line 1565
    :goto_1
    if-eqz v2, :cond_9

    .line 1566
    iget v0, v2, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    .line 1577
    :goto_2
    if-nez v0, :cond_8

    .line 1578
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1579
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-static {v1, v2}, Lcom/android/phone/CallCard;->showCachedImage(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v1}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->getPhotoState()I

    move-result v1

    if-ne v1, v7, :cond_0

    .line 1581
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v1}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->getPhotoUri()Landroid/net/Uri;

    move-result-object v1

    .line 1582
    if-nez v1, :cond_7

    .line 1583
    const-string v1, "CallCard"

    const-string v2, "photoUri became null. Show default avatar icon"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1584
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    const v2, 0x7f020056

    invoke-static {v1, v2}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 1596
    :goto_3
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v1, v8}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    .line 1608
    :cond_0
    :goto_4
    if-eqz v0, :cond_1

    .line 1610
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 1612
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v0, v7}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    .line 1614
    :cond_1
    :goto_5
    return-void

    .line 1507
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 1510
    if-eqz v0, :cond_b

    .line 1511
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v0

    .line 1512
    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v0, v2, :cond_2

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v0, v2, :cond_b

    .line 1514
    :cond_2
    const v0, 0x7f020051

    goto :goto_4

    .line 1548
    :cond_3
    if-eq v0, v9, :cond_4

    const/4 v2, 0x3

    if-ne v0, v2, :cond_5

    .line 1550
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    goto :goto_0

    .line 1552
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1559
    :cond_6
    instance-of v2, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v2, :cond_a

    .line 1560
    check-cast v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v0, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object v2, v0

    goto/16 :goto_1

    .line 1589
    :cond_7
    iget-object v4, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 1591
    iget-object v4, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    const/4 v5, 0x4

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1592
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v4

    new-instance v5, Lcom/android/phone/CallCard$AsyncLoadCookie;

    iget-object v6, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {v5, v6, v2, v3}, Lcom/android/phone/CallCard$AsyncLoadCookie;-><init>(Landroid/widget/ImageView;Lcom/android/internal/telephony/CallerInfo;Lcom/android/internal/telephony/Call;)V

    invoke-static {v9, v4, v1, p0, v5}, Lcom/android/phone/ContactsAsyncHelper;->startObtainPhotoAsync(ILandroid/content/Context;Landroid/net/Uri;Lcom/android/phone/ContactsAsyncHelper$OnImageLoadCompleteListener;Ljava/lang/Object;)V

    goto :goto_3

    .line 1601
    :cond_8
    iget-object v1, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    .line 1602
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhotoTracker:Lcom/android/phone/ContactsAsyncHelper$ImageTracker;

    invoke-virtual {v0, v8}, Lcom/android/phone/ContactsAsyncHelper$ImageTracker;->setPhotoState(I)V

    goto :goto_5

    :cond_9
    move v0, v1

    goto/16 :goto_2

    :cond_a
    move-object v2, v3

    goto/16 :goto_1

    :cond_b
    move v0, v1

    goto :goto_4

    .line 1502
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method

.method private updateRingingCall(Lcom/android/internal/telephony/CallManager;)V
    .locals 2
    .param p1, "cm"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    .line 396
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 399
    .local v0, "ringingCall":Lcom/android/internal/telephony/Call;
    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->displayMainCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 405
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/android/phone/CallCard;->displaySecondaryCallStatus(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)V

    .line 406
    return-void
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    const/4 v2, 0x1

    .line 1760
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_1

    .line 1761
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1762
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1778
    :cond_0
    :goto_0
    return v2

    .line 1766
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1767
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1768
    iget-object v0, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1769
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1770
    iget-object v0, p0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1772
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 1773
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallName:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    .line 1775
    :cond_2
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 1776
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhoto:Landroid/widget/ImageView;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;Landroid/view/View;)V

    goto :goto_0
.end method

.method public hideCallCardElements()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 1741
    iget-object v0, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1742
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallInfo:Landroid/view/ViewStub;

    invoke-virtual {v0, v1}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 1743
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 214
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 218
    const v1, 0x7f08000c

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mCallInfoContainer:Landroid/view/ViewGroup;

    .line 219
    const v1, 0x7f08000d

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mPrimaryCallInfo:Landroid/view/ViewGroup;

    .line 220
    const v1, 0x7f08007d

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mPrimaryCallBanner:Landroid/view/ViewGroup;

    .line 222
    const v1, 0x7f080083

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mSecondaryInfoContainer:Landroid/view/ViewGroup;

    .line 223
    const v1, 0x7f080084

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mProviderInfo:Landroid/view/ViewGroup;

    .line 224
    const v1, 0x7f080085

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mProviderLabel:Landroid/widget/TextView;

    .line 225
    const v1, 0x7f080086

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mProviderAddress:Landroid/widget/TextView;

    .line 226
    const v1, 0x7f080087

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mCallStateLabel:Landroid/widget/TextView;

    .line 227
    const v1, 0x7f080081

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mElapsedTime:Landroid/widget/TextView;

    .line 230
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 231
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0a0003

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/CallCard;->mTextColorDefault:I

    .line 232
    const/high16 v1, 0x7f0a0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/android/phone/CallCard;->mTextColorCallTypeSip:I

    .line 235
    const v1, 0x7f08007b

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mPhoto:Landroid/widget/ImageView;

    .line 236
    const v1, 0x7f08007c

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/CallCard;->mPhotoDimEffect:Landroid/view/View;

    .line 238
    const v1, 0x7f08007e

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mName:Landroid/widget/TextView;

    .line 239
    const v1, 0x7f080040

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mPhoneNumber:Landroid/widget/TextView;

    .line 240
    const v1, 0x7f080080

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mLabel:Landroid/widget/TextView;

    .line 241
    const v1, 0x7f080082

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mCallTypeLabel:Landroid/widget/TextView;

    .line 245
    const v1, 0x7f08000e

    invoke-virtual {p0, v1}, Lcom/android/phone/CallCard;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iput-object v1, p0, Lcom/android/phone/CallCard;->mSecondaryCallInfo:Landroid/view/ViewStub;

    .line 246
    return-void
.end method

.method public onImageLoadComplete(ILandroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Ljava/lang/Object;)V
    .locals 6
    .param p1, "token"    # I
    .param p2, "photo"    # Landroid/graphics/drawable/Drawable;
    .param p3, "photoIcon"    # Landroid/graphics/Bitmap;
    .param p4, "cookie"    # Ljava/lang/Object;

    .prologue
    .line 711
    iget-object v4, p0, Lcom/android/phone/CallCard;->mHandler:Landroid/os/Handler;

    const/16 v5, 0x65

    invoke-virtual {v4, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 712
    iget-object v4, p0, Lcom/android/phone/CallCard;->mLoadingPersonUri:Landroid/net/Uri;

    if-eqz v4, :cond_1

    .line 718
    iget-object v4, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v5, p0, Lcom/android/phone/CallCard;->mLoadingPersonUri:Landroid/net/Uri;

    invoke-static {v4, v5}, Lcom/android/phone/PhoneUtils;->sendViewNotificationAsync(Landroid/content/Context;Landroid/net/Uri;)V

    .line 723
    :goto_0
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/phone/CallCard;->mLoadingPersonUri:Landroid/net/Uri;

    move-object v0, p4

    .line 725
    check-cast v0, Lcom/android/phone/CallCard$AsyncLoadCookie;

    .line 726
    .local v0, "asyncLoadCookie":Lcom/android/phone/CallCard$AsyncLoadCookie;
    iget-object v2, v0, Lcom/android/phone/CallCard$AsyncLoadCookie;->callerInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 727
    .local v2, "callerInfo":Lcom/android/internal/telephony/CallerInfo;
    iget-object v3, v0, Lcom/android/phone/CallCard$AsyncLoadCookie;->imageView:Landroid/widget/ImageView;

    .line 728
    .local v3, "imageView":Landroid/widget/ImageView;
    iget-object v1, v0, Lcom/android/phone/CallCard$AsyncLoadCookie;->call:Lcom/android/internal/telephony/Call;

    .line 730
    .local v1, "call":Lcom/android/internal/telephony/Call;
    iput-object p2, v2, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .line 731
    iput-object p3, v2, Lcom/android/internal/telephony/CallerInfo;->cachedPhotoIcon:Landroid/graphics/Bitmap;

    .line 732
    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    .line 736
    if-eqz p2, :cond_2

    .line 737
    invoke-static {v3, p2}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 744
    :goto_1
    if-nez p1, :cond_0

    .line 745
    invoke-direct {p0, v1}, Lcom/android/phone/CallCard;->updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V

    .line 747
    :cond_0
    return-void

    .line 721
    .end local v0    # "asyncLoadCookie":Lcom/android/phone/CallCard$AsyncLoadCookie;
    .end local v1    # "call":Lcom/android/internal/telephony/Call;
    .end local v2    # "callerInfo":Lcom/android/internal/telephony/CallerInfo;
    .end local v3    # "imageView":Landroid/widget/ImageView;
    :cond_1
    const-string v4, "CallCard"

    const-string v5, "Person Uri isn\'t available while Image is successfully loaded."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 738
    .restart local v0    # "asyncLoadCookie":Lcom/android/phone/CallCard$AsyncLoadCookie;
    .restart local v1    # "call":Lcom/android/internal/telephony/Call;
    .restart local v2    # "callerInfo":Lcom/android/internal/telephony/CallerInfo;
    .restart local v3    # "imageView":Landroid/widget/ImageView;
    :cond_2
    if-eqz p3, :cond_3

    .line 739
    invoke-static {v3, p3}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 741
    :cond_3
    const v4, 0x7f020056

    invoke-static {v3, v4}, Lcom/android/phone/CallCard;->showImage(Landroid/widget/ImageView;I)V

    goto :goto_1
.end method

.method public onQueryComplete(ILjava/lang/Object;Lcom/android/internal/telephony/CallerInfo;)V
    .locals 8
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "ci"    # Lcom/android/internal/telephony/CallerInfo;

    .prologue
    const/4 v3, 0x0

    .line 665
    instance-of v0, p2, Lcom/android/internal/telephony/Call;

    if-eqz v0, :cond_6

    move-object v4, p2

    .line 670
    check-cast v4, Lcom/android/internal/telephony/Call;

    .line 671
    .local v4, "call":Lcom/android/internal/telephony/Call;
    const/4 v5, 0x0

    .line 672
    .local v5, "conn":Lcom/android/internal/telephony/Connection;
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v7

    .line 673
    .local v7, "phoneType":I
    const/4 v0, 0x2

    if-ne v7, v0, :cond_2

    .line 674
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v5

    .line 681
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v5, p0, v1}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Lcom/android/internal/telephony/CallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v6

    .line 684
    .local v6, "cit":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    .line 685
    .local v2, "presentation":I
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v2

    .line 692
    :cond_0
    iget-boolean v0, p3, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v0, :cond_5

    .line 693
    sget v2, Lcom/android/internal/telephony/PhoneConstants;->PRESENTATION_ALLOWED:I

    .end local v2    # "presentation":I
    move-object v0, p0

    move-object v1, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    .line 697
    :goto_1
    invoke-direct {p0, v4}, Lcom/android/phone/CallCard;->updatePhotoForCallState(Lcom/android/internal/telephony/Call;)V

    .line 703
    .end local v4    # "call":Lcom/android/internal/telephony/Call;
    .end local v5    # "conn":Lcom/android/internal/telephony/Connection;
    .end local v6    # "cit":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v7    # "phoneType":I
    .end local p2    # "cookie":Ljava/lang/Object;
    :cond_1
    :goto_2
    return-void

    .line 675
    .restart local v4    # "call":Lcom/android/internal/telephony/Call;
    .restart local v5    # "conn":Lcom/android/internal/telephony/Connection;
    .restart local v7    # "phoneType":I
    .restart local p2    # "cookie":Ljava/lang/Object;
    :cond_2
    const/4 v0, 0x1

    if-eq v7, v0, :cond_3

    const/4 v0, 0x3

    if-ne v7, v0, :cond_4

    .line 677
    :cond_3
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v5

    goto :goto_0

    .line 679
    :cond_4
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 695
    .restart local v2    # "presentation":I
    .restart local v6    # "cit":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    :cond_5
    iget-object v1, v6, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/CallCard;->updateDisplayForPerson(Lcom/android/internal/telephony/CallerInfo;IZLcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Connection;)V

    goto :goto_1

    .line 699
    .end local v2    # "presentation":I
    .end local v4    # "call":Lcom/android/internal/telephony/Call;
    .end local v5    # "conn":Lcom/android/internal/telephony/Connection;
    .end local v6    # "cit":Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v7    # "phoneType":I
    :cond_6
    instance-of v0, p2, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 701
    check-cast p2, Landroid/widget/TextView;

    .end local p2    # "cookie":Ljava/lang/Object;
    iget-object v0, p0, Lcom/android/phone/CallCard;->mContext:Landroid/content/Context;

    invoke-static {p3, v0}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2
.end method

.method public onTickForCallTimeElapsed(J)V
    .locals 0
    .param p1, "timeElapsed"    # J

    .prologue
    .line 205
    invoke-direct {p0, p1, p2}, Lcom/android/phone/CallCard;->updateElapsedTimeWidget(J)V

    .line 206
    return-void
.end method

.method setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .param p1, "inCallScreen"    # Lcom/android/phone/InCallScreen;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/phone/CallCard;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 199
    return-void
.end method

.method setIncomingCallWidgetHint(II)V
    .locals 0
    .param p1, "hintTextResId"    # I
    .param p2, "hintColorResId"    # I

    .prologue
    .line 1750
    iput p1, p0, Lcom/android/phone/CallCard;->mIncomingCallWidgetHintTextResId:I

    .line 1751
    iput p2, p0, Lcom/android/phone/CallCard;->mIncomingCallWidgetHintColorResId:I

    .line 1752
    return-void
.end method

.method setSecondaryCallClickable(Z)V
    .locals 1
    .param p1, "clickable"    # Z

    .prologue
    .line 1108
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhotoDimEffect:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 1109
    iget-object v0, p0, Lcom/android/phone/CallCard;->mSecondaryCallPhotoDimEffect:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 1111
    :cond_0
    return-void
.end method

.method stopTimer()V
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/phone/CallCard;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->cancelTimer()V

    .line 210
    return-void
.end method

.method updateElapsedTimeWidget(Lcom/android/internal/telephony/Call;)V
    .locals 4
    .param p1, "call"    # Lcom/android/internal/telephony/Call;

    .prologue
    .line 946
    invoke-static {p1}, Lcom/android/phone/CallTime;->getCallDuration(Lcom/android/internal/telephony/Call;)J

    move-result-wide v0

    .line 947
    .local v0, "duration":J
    const-wide/16 v2, 0x3e8

    div-long v2, v0, v2

    invoke-direct {p0, v2, v3}, Lcom/android/phone/CallCard;->updateElapsedTimeWidget(J)V

    .line 950
    return-void
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;)V
    .locals 6
    .param p1, "cm"    # Lcom/android/internal/telephony/CallManager;

    .prologue
    .line 257
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v3

    .line 258
    .local v3, "state":Lcom/android/internal/telephony/PhoneConstants$State;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 259
    .local v2, "ringingCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 260
    .local v1, "fgCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 265
    .local v0, "bgCall":Lcom/android/internal/telephony/Call;
    invoke-virtual {p0}, Lcom/android/phone/CallCard;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->isLandscape(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 266
    invoke-direct {p0, v3}, Lcom/android/phone/CallCard;->updateCallInfoLayout(Lcom/android/internal/telephony/PhoneConstants$State;)V

    .line 274
    :cond_0
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v5, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call$State;->isDialing()Z

    move-result v4

    if-nez v4, :cond_1

    .line 278
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateRingingCall(Lcom/android/internal/telephony/CallManager;)V

    .line 318
    :goto_0
    return-void

    .line 279
    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v5, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v5, :cond_3

    .line 289
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateForegroundCall(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_0

    .line 293
    :cond_3
    iget-object v4, p0, Lcom/android/phone/CallCard;->mApplication:Lcom/android/phone/PhoneGlobals;

    iget-object v4, v4, Lcom/android/phone/PhoneGlobals;->inCallUiState:Lcom/android/phone/InCallUiState;

    iget-boolean v4, v4, Lcom/android/phone/InCallUiState;->showAlreadyDisconnectedState:Z

    if-eqz v4, :cond_4

    .line 301
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateAlreadyDisconnected(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_0

    .line 315
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/phone/CallCard;->updateNoCall(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_0
.end method
