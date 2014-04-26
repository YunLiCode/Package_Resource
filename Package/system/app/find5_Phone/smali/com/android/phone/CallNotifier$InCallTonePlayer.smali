.class Lcom/android/phone/CallNotifier$InCallTonePlayer;
.super Ljava/lang/Thread;
.source "CallNotifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallNotifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InCallTonePlayer"
.end annotation


# instance fields
.field private mState:I

.field private mToneId:I

.field final synthetic this$0:Lcom/android/phone/CallNotifier;


# direct methods
.method constructor <init>(Lcom/android/phone/CallNotifier;I)V
    .locals 1
    .param p2, "toneId"    # I

    .prologue
    .line 1581
    iput-object p1, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    .line 1582
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 1583
    iput p2, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    .line 1584
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 1585
    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    const/4 v5, 0x0

    const/4 v14, 0x2

    const/4 v13, 0x1

    .line 1589
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "InCallTonePlayer.run(toneId = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ")..."

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    # invokes: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/phone/CallNotifier;->access$400(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 1591
    const/4 v8, 0x0

    .line 1594
    .local v8, "toneType":I
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v10}, Lcom/android/phone/CallNotifier;->access$500(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v10

    invoke-interface {v10}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 1596
    .local v3, "phoneType":I
    iget v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    packed-switch v10, :pswitch_data_0

    .line 1678
    new-instance v10, Ljava/lang/IllegalArgumentException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Bad toneId: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget v12, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mToneId:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1598
    :pswitch_0
    const/16 v8, 0x16

    .line 1599
    const/16 v9, 0x50

    .line 1601
    .local v9, "toneVolume":I
    const v7, 0x7fffffeb

    .line 1686
    .local v7, "toneLengthMillis":I
    :goto_0
    :try_start_0
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v10}, Lcom/android/phone/CallNotifier;->access$700(Lcom/android/phone/CallNotifier;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v10

    if-eqz v10, :cond_a

    .line 1687
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;
    invoke-static {v10}, Lcom/android/phone/CallNotifier;->access$700(Lcom/android/phone/CallNotifier;)Landroid/bluetooth/BluetoothHeadset;

    move-result-object v10

    invoke-virtual {v10}, Landroid/bluetooth/BluetoothHeadset;->isAudioOn()Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v5, 0x6

    .line 1692
    .local v5, "stream":I
    :cond_0
    :goto_1
    new-instance v6, Landroid/media/ToneGenerator;

    invoke-direct {v6, v5, v9}, Landroid/media/ToneGenerator;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1714
    .end local v5    # "stream":I
    .local v6, "toneGenerator":Landroid/media/ToneGenerator;
    :goto_2
    const/4 v1, 0x1

    .line 1715
    .local v1, "needToStopTone":Z
    const/4 v2, 0x0

    .line 1717
    .local v2, "okToPlayTone":Z
    if-eqz v6, :cond_4

    .line 1718
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mAudioManager:Landroid/media/AudioManager;
    invoke-static {v10}, Lcom/android/phone/CallNotifier;->access$800(Lcom/android/phone/CallNotifier;)Landroid/media/AudioManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v4

    .line 1719
    .local v4, "ringerMode":I
    if-ne v3, v14, :cond_12

    .line 1720
    const/16 v10, 0x5d

    if-ne v8, v10, :cond_b

    .line 1721
    if-eqz v4, :cond_2

    if-eq v4, v13, :cond_2

    .line 1723
    # getter for: Lcom/android/phone/CallNotifier;->DBG:Z
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$900()Z

    move-result v10

    if-eqz v10, :cond_1

    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "- InCallTonePlayer: start playing call tone="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    # invokes: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/phone/CallNotifier;->access$400(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 1724
    :cond_1
    const/4 v2, 0x1

    .line 1725
    const/4 v1, 0x0

    .line 1752
    :cond_2
    :goto_3
    monitor-enter p0

    .line 1753
    if-eqz v2, :cond_3

    :try_start_1
    iget v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    if-eq v10, v14, :cond_3

    .line 1754
    const/4 v10, 0x1

    iput v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 1755
    invoke-virtual {v6, v8}, Landroid/media/ToneGenerator;->startTone(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1757
    add-int/lit8 v10, v7, 0x14

    int-to-long v10, v10

    :try_start_2
    invoke-virtual {p0, v10, v11}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1762
    :goto_4
    if-eqz v1, :cond_3

    .line 1763
    :try_start_3
    invoke-virtual {v6}, Landroid/media/ToneGenerator;->stopTone()V

    .line 1767
    :cond_3
    invoke-virtual {v6}, Landroid/media/ToneGenerator;->release()V

    .line 1768
    const/4 v10, 0x0

    iput v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 1769
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1785
    .end local v4    # "ringerMode":I
    :cond_4
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mCM:Lcom/android/internal/telephony/CallManager;
    invoke-static {v10}, Lcom/android/phone/CallNotifier;->access$500(Lcom/android/phone/CallNotifier;)Lcom/android/internal/telephony/CallManager;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v10, v11, :cond_5

    .line 1786
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    # invokes: Lcom/android/phone/CallNotifier;->resetAudioStateAfterDisconnect()V
    invoke-static {v10}, Lcom/android/phone/CallNotifier;->access$1000(Lcom/android/phone/CallNotifier;)V

    .line 1788
    :cond_5
    return-void

    .line 1604
    .end local v1    # "needToStopTone":Z
    .end local v2    # "okToPlayTone":Z
    .end local v6    # "toneGenerator":Landroid/media/ToneGenerator;
    .end local v7    # "toneLengthMillis":I
    .end local v9    # "toneVolume":I
    :pswitch_1
    if-ne v3, v14, :cond_6

    .line 1605
    const/16 v8, 0x60

    .line 1606
    const/16 v9, 0x32

    .line 1607
    .restart local v9    # "toneVolume":I
    const/16 v7, 0x3e8

    .restart local v7    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 1608
    .end local v7    # "toneLengthMillis":I
    .end local v9    # "toneVolume":I
    :cond_6
    if-eq v3, v13, :cond_7

    const/4 v10, 0x3

    if-ne v3, v10, :cond_8

    .line 1610
    :cond_7
    const/16 v8, 0x11

    .line 1611
    const/16 v9, 0x50

    .line 1612
    .restart local v9    # "toneVolume":I
    const/16 v7, 0xfa0

    .restart local v7    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 1614
    .end local v7    # "toneLengthMillis":I
    .end local v9    # "toneVolume":I
    :cond_8
    new-instance v10, Ljava/lang/IllegalStateException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unexpected phone type: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 1618
    :pswitch_2
    const/16 v8, 0x12

    .line 1619
    const/16 v9, 0x50

    .line 1620
    .restart local v9    # "toneVolume":I
    const/16 v7, 0xfa0

    .line 1621
    .restart local v7    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 1624
    .end local v7    # "toneLengthMillis":I
    .end local v9    # "toneVolume":I
    :pswitch_3
    const/16 v8, 0x1b

    .line 1625
    const/16 v9, 0x50

    .line 1626
    .restart local v9    # "toneVolume":I
    const/16 v7, 0xc8

    .line 1627
    .restart local v7    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 1629
    .end local v7    # "toneLengthMillis":I
    .end local v9    # "toneVolume":I
    :pswitch_4
    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    # getter for: Lcom/android/phone/CallNotifier;->mApplication:Lcom/android/phone/PhoneGlobals;
    invoke-static {v10}, Lcom/android/phone/CallNotifier;->access$600(Lcom/android/phone/CallNotifier;)Lcom/android/phone/PhoneGlobals;

    move-result-object v10

    iget-object v10, v10, Lcom/android/phone/PhoneGlobals;->cdmaOtaConfigData:Lcom/android/phone/OtaUtils$CdmaOtaConfigData;

    iget v10, v10, Lcom/android/phone/OtaUtils$CdmaOtaConfigData;->otaPlaySuccessFailureTone:I

    if-ne v10, v13, :cond_9

    .line 1631
    const/16 v8, 0x5d

    .line 1632
    const/16 v9, 0x50

    .line 1633
    .restart local v9    # "toneVolume":I
    const/16 v7, 0x2ee

    .restart local v7    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 1635
    .end local v7    # "toneLengthMillis":I
    .end local v9    # "toneVolume":I
    :cond_9
    const/16 v8, 0x1b

    .line 1636
    const/16 v9, 0x50

    .line 1637
    .restart local v9    # "toneVolume":I
    const/16 v7, 0xc8

    .line 1639
    .restart local v7    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 1641
    .end local v7    # "toneLengthMillis":I
    .end local v9    # "toneVolume":I
    :pswitch_5
    const/16 v8, 0x56

    .line 1642
    const/16 v9, 0x50

    .line 1643
    .restart local v9    # "toneVolume":I
    const/16 v7, 0x1388

    .line 1644
    .restart local v7    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 1646
    .end local v7    # "toneLengthMillis":I
    .end local v9    # "toneVolume":I
    :pswitch_6
    const/16 v8, 0x26

    .line 1647
    const/16 v9, 0x50

    .line 1648
    .restart local v9    # "toneVolume":I
    const/16 v7, 0xfa0

    .line 1649
    .restart local v7    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 1651
    .end local v7    # "toneLengthMillis":I
    .end local v9    # "toneVolume":I
    :pswitch_7
    const/16 v8, 0x25

    .line 1652
    const/16 v9, 0x32

    .line 1653
    .restart local v9    # "toneVolume":I
    const/16 v7, 0x1f4

    .line 1654
    .restart local v7    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 1657
    .end local v7    # "toneLengthMillis":I
    .end local v9    # "toneVolume":I
    :pswitch_8
    const/16 v8, 0x5f

    .line 1658
    const/16 v9, 0x32

    .line 1659
    .restart local v9    # "toneVolume":I
    const/16 v7, 0x177

    .line 1660
    .restart local v7    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 1662
    .end local v7    # "toneLengthMillis":I
    .end local v9    # "toneVolume":I
    :pswitch_9
    const/16 v8, 0x57

    .line 1663
    const/16 v9, 0x32

    .line 1664
    .restart local v9    # "toneVolume":I
    const/16 v7, 0x1388

    .line 1665
    .restart local v7    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 1667
    .end local v7    # "toneLengthMillis":I
    .end local v9    # "toneVolume":I
    :pswitch_a
    const/16 v8, 0x17

    .line 1668
    const/16 v9, 0x50

    .line 1670
    .restart local v9    # "toneVolume":I
    const v7, 0x7fffffeb

    .line 1671
    .restart local v7    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 1673
    .end local v7    # "toneLengthMillis":I
    .end local v9    # "toneVolume":I
    :pswitch_b
    const/16 v8, 0x15

    .line 1674
    const/16 v9, 0x50

    .line 1675
    .restart local v9    # "toneVolume":I
    const/16 v7, 0xfa0

    .line 1676
    .restart local v7    # "toneLengthMillis":I
    goto/16 :goto_0

    .line 1690
    :cond_a
    const/4 v5, 0x0

    .restart local v5    # "stream":I
    goto/16 :goto_1

    .line 1694
    .end local v5    # "stream":I
    :catch_0
    move-exception v0

    .line 1695
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v10, "CallNotifier"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "InCallTonePlayer: Exception caught while creating ToneGenerator: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1697
    const/4 v6, 0x0

    .restart local v6    # "toneGenerator":Landroid/media/ToneGenerator;
    goto/16 :goto_2

    .line 1727
    .end local v0    # "e":Ljava/lang/RuntimeException;
    .restart local v1    # "needToStopTone":Z
    .restart local v2    # "okToPlayTone":Z
    .restart local v4    # "ringerMode":I
    :cond_b
    const/16 v10, 0x60

    if-eq v8, v10, :cond_c

    const/16 v10, 0x26

    if-eq v8, v10, :cond_c

    const/16 v10, 0x27

    if-eq v8, v10, :cond_c

    const/16 v10, 0x25

    if-eq v8, v10, :cond_c

    const/16 v10, 0x5f

    if-ne v8, v10, :cond_e

    .line 1732
    :cond_c
    if-eqz v4, :cond_2

    .line 1733
    # getter for: Lcom/android/phone/CallNotifier;->DBG:Z
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$900()Z

    move-result v10

    if-eqz v10, :cond_d

    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "InCallTonePlayer:playing call fail tone:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    # invokes: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/phone/CallNotifier;->access$400(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 1734
    :cond_d
    const/4 v2, 0x1

    .line 1735
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 1737
    :cond_e
    const/16 v10, 0x57

    if-eq v8, v10, :cond_f

    const/16 v10, 0x56

    if-ne v8, v10, :cond_11

    .line 1739
    :cond_f
    if-eqz v4, :cond_2

    if-eq v4, v13, :cond_2

    .line 1741
    # getter for: Lcom/android/phone/CallNotifier;->DBG:Z
    invoke-static {}, Lcom/android/phone/CallNotifier;->access$900()Z

    move-result v10

    if-eqz v10, :cond_10

    iget-object v10, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->this$0:Lcom/android/phone/CallNotifier;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "InCallTonePlayer:playing tone for toneType="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    # invokes: Lcom/android/phone/CallNotifier;->log(Ljava/lang/String;)V
    invoke-static {v10, v11}, Lcom/android/phone/CallNotifier;->access$400(Lcom/android/phone/CallNotifier;Ljava/lang/String;)V

    .line 1742
    :cond_10
    const/4 v2, 0x1

    .line 1743
    const/4 v1, 0x0

    goto/16 :goto_3

    .line 1746
    :cond_11
    const/4 v2, 0x1

    goto/16 :goto_3

    .line 1749
    :cond_12
    const/4 v2, 0x1

    goto/16 :goto_3

    .line 1758
    :catch_1
    move-exception v0

    .line 1759
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_4
    const-string v10, "CallNotifier"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "InCallTonePlayer stopped: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 1769
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v10

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v10

    .line 1596
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_8
        :pswitch_9
        :pswitch_4
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public stopTone()V
    .locals 2

    .prologue
    .line 1791
    monitor-enter p0

    .line 1792
    :try_start_0
    iget v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1793
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 1795
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/CallNotifier$InCallTonePlayer;->mState:I

    .line 1796
    monitor-exit p0

    .line 1797
    return-void

    .line 1796
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
