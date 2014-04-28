.class Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea$MissedInfoQueryHandler;
.super Landroid/content/AsyncQueryHandler;
.source "KeyguardMissedInfoArea.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MissedInfoQueryHandler"
.end annotation


# static fields
.field private static final TOKEN_CALL:I = 0x2b67

.field private static final TOKEN_MSG_MMS:I = 0x8235

.field private static final TOKEN_MSG_SMS:I = 0x56ce


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;Landroid/content/Context;)V
    .registers 4
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea$MissedInfoQueryHandler;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;

    .line 92
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    .line 93
    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .registers 14
    .param p1, "token"    # I
    .param p2, "cookie"    # Ljava/lang/Object;
    .param p3, "cursor"    # Landroid/database/Cursor;

    .prologue
    const/4 v6, 0x0

    const/16 v1, 0x8

    const/4 v5, 0x1

    const/4 v0, 0x0

    .line 113
    if-nez p3, :cond_57

    const/4 v8, -0x1

    .line 114
    .local v8, "missedCount":I
    :goto_8
    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onQueryComplete() token: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", missedCount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", cookie: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-static {p3}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 116
    sparse-switch p1, :sswitch_data_ea

    .line 140
    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown token "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    .end local p2    # "cookie":Ljava/lang/Object;
    :cond_56
    :goto_56
    return-void

    .line 113
    .end local v8    # "missedCount":I
    .restart local p2    # "cookie":Ljava/lang/Object;
    :cond_57
    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v8

    goto :goto_8

    .line 118
    .restart local v8    # "missedCount":I
    :sswitch_5c
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea$MissedInfoQueryHandler;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;->mMissedCallView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_56

    .line 119
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea$MissedInfoQueryHandler;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;->mMissedCallView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea$MissedInfoQueryHandler;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10405de

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 120
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea$MissedInfoQueryHandler;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;->mMissedCallView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;->access$200(Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;)Landroid/widget/TextView;

    move-result-object v2

    if-lez v8, :cond_8e

    :goto_8a
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_56

    :cond_8e
    move v0, v1

    goto :goto_8a

    .line 124
    :sswitch_90
    const v1, 0x8235

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Landroid/provider/Telephony$Mms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    new-array v4, v5, [Ljava/lang/String;

    const-string v5, "_id"

    aput-object v5, v4, v0

    const-string v5, "read=0 AND m_type IN (130,132)"

    move-object v0, p0

    move-object v7, v6

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea$MissedInfoQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_56

    .line 132
    :sswitch_a7
    if-nez p2, :cond_e1

    move v9, v0

    .line 133
    .end local p2    # "cookie":Ljava/lang/Object;
    .local v9, "smsMissedCount":I
    :goto_aa
    if-gez v9, :cond_ad

    move v9, v0

    .end local v9    # "smsMissedCount":I
    :cond_ad
    add-int/2addr v8, v9

    .line 134
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea$MissedInfoQueryHandler;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;->mMissedMsgView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;->access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;)Landroid/widget/TextView;

    move-result-object v2

    if-eqz v2, :cond_56

    .line 135
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea$MissedInfoQueryHandler;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;->mMissedMsgView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;->access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;)Landroid/widget/TextView;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea$MissedInfoQueryHandler;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;

    invoke-virtual {v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10405dd

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea$MissedInfoQueryHandler;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;

    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;->mMissedMsgView:Landroid/widget/TextView;
    invoke-static {v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;->access$300(Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;)Landroid/widget/TextView;

    move-result-object v2

    if-lez v8, :cond_e8

    :goto_dc
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_56

    .line 132
    .restart local p2    # "cookie":Ljava/lang/Object;
    :cond_e1
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "cookie":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v9

    goto :goto_aa

    :cond_e8
    move v0, v1

    .line 136
    goto :goto_dc

    .line 116
    :sswitch_data_ea
    .sparse-switch
        0x2b67 -> :sswitch_5c
        0x56ce -> :sswitch_90
        0x8235 -> :sswitch_a7
    .end sparse-switch
.end method

.method public startQueryMissedCall()V
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 96
    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "startQueryMissedCall()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const/16 v1, 0x2b67

    sget-object v3, Landroid/provider/CallLog$Calls;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v0

    const-string v5, "type=3 AND new=1"

    move-object v0, p0

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea$MissedInfoQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    return-void
.end method

.method public startQueryMissedMsg()V
    .registers 9

    .prologue
    const/4 v2, 0x0

    .line 104
    # getter for: Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "startQueryMissedMsg()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const/16 v1, 0x56ce

    sget-object v3, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    const/4 v0, 0x1

    new-array v4, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v5, "_id"

    aput-object v5, v4, v0

    const-string v5, "read=0"

    move-object v0, p0

    move-object v6, v2

    move-object v7, v2

    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/policy/impl/keyguard/KeyguardMissedInfoArea$MissedInfoQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    return-void
.end method
