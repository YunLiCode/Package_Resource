.class public Lcom/android/phone/RespondViaSmsManager$RespondViaSmsItemClickListener;
.super Ljava/lang/Object;
.source "RespondViaSmsManager.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/RespondViaSmsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RespondViaSmsItemClickListener"
.end annotation


# instance fields
.field private mPhoneNumber:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/phone/RespondViaSmsManager;


# direct methods
.method public constructor <init>(Lcom/android/phone/RespondViaSmsManager;Ljava/lang/String;)V
    .locals 0
    .param p2, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/phone/RespondViaSmsManager$RespondViaSmsItemClickListener;->this$0:Lcom/android/phone/RespondViaSmsManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    iput-object p2, p0, Lcom/android/phone/RespondViaSmsManager$RespondViaSmsItemClickListener;->mPhoneNumber:Ljava/lang/String;

    .line 214
    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v8, 0x1

    .line 224
    # getter for: Lcom/android/phone/RespondViaSmsManager;->DBG:Z
    invoke-static {}, Lcom/android/phone/RespondViaSmsManager;->access$000()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "RespondViaSmsItemClickListener.onItemClick("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    # invokes: Lcom/android/phone/RespondViaSmsManager;->log(Ljava/lang/String;)V
    invoke-static {v5}, Lcom/android/phone/RespondViaSmsManager;->access$100(Ljava/lang/String;)V

    .line 225
    :cond_0
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 230
    .local v2, "message":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getCount()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne p3, v5, :cond_1

    .line 232
    iget-object v5, p0, Lcom/android/phone/RespondViaSmsManager$RespondViaSmsItemClickListener;->this$0:Lcom/android/phone/RespondViaSmsManager;

    iget-object v6, p0, Lcom/android/phone/RespondViaSmsManager$RespondViaSmsItemClickListener;->mPhoneNumber:Ljava/lang/String;

    # invokes: Lcom/android/phone/RespondViaSmsManager;->launchSmsCompose(Ljava/lang/String;)V
    invoke-static {v5, v6}, Lcom/android/phone/RespondViaSmsManager;->access$200(Lcom/android/phone/RespondViaSmsManager;Ljava/lang/String;)V

    .line 266
    :goto_0
    iget-object v5, p0, Lcom/android/phone/RespondViaSmsManager$RespondViaSmsItemClickListener;->this$0:Lcom/android/phone/RespondViaSmsManager;

    # getter for: Lcom/android/phone/RespondViaSmsManager;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v5}, Lcom/android/phone/RespondViaSmsManager;->access$400(Lcom/android/phone/RespondViaSmsManager;)Lcom/android/phone/InCallScreen;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/InCallScreen;->hangupRingingCall()V

    .line 268
    iget-object v5, p0, Lcom/android/phone/RespondViaSmsManager$RespondViaSmsItemClickListener;->this$0:Lcom/android/phone/RespondViaSmsManager;

    invoke-virtual {v5}, Lcom/android/phone/RespondViaSmsManager;->dismissPopup()V

    .line 270
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    .line 271
    .local v4, "state":Lcom/android/internal/telephony/PhoneConstants$State;
    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v4, v5, :cond_2

    .line 273
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneGlobals;->dismissCallScreen()V

    .line 279
    :goto_1
    return-void

    .line 235
    .end local v4    # "state":Lcom/android/internal/telephony/PhoneConstants$State;
    :cond_1
    iget-object v5, p0, Lcom/android/phone/RespondViaSmsManager$RespondViaSmsItemClickListener;->this$0:Lcom/android/phone/RespondViaSmsManager;

    iget-object v6, p0, Lcom/android/phone/RespondViaSmsManager$RespondViaSmsItemClickListener;->mPhoneNumber:Ljava/lang/String;

    # invokes: Lcom/android/phone/RespondViaSmsManager;->sendText(Ljava/lang/String;Ljava/lang/String;)V
    invoke-static {v5, v6, v2}, Lcom/android/phone/RespondViaSmsManager;->access$300(Lcom/android/phone/RespondViaSmsManager;Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    iget-object v5, p0, Lcom/android/phone/RespondViaSmsManager$RespondViaSmsItemClickListener;->this$0:Lcom/android/phone/RespondViaSmsManager;

    # getter for: Lcom/android/phone/RespondViaSmsManager;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v5}, Lcom/android/phone/RespondViaSmsManager;->access$400(Lcom/android/phone/RespondViaSmsManager;)Lcom/android/phone/InCallScreen;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 241
    .local v3, "res":Landroid/content/res/Resources;
    const v5, 0x7f09025b

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 242
    .local v1, "formatString":Ljava/lang/String;
    new-array v5, v8, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/phone/RespondViaSmsManager$RespondViaSmsItemClickListener;->mPhoneNumber:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v1, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, "confirmationMsg":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/phone/RespondViaSmsManager$RespondViaSmsItemClickListener;->this$0:Lcom/android/phone/RespondViaSmsManager;

    # getter for: Lcom/android/phone/RespondViaSmsManager;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v5}, Lcom/android/phone/RespondViaSmsManager;->access$400(Lcom/android/phone/RespondViaSmsManager;)Lcom/android/phone/InCallScreen;

    move-result-object v5

    invoke-static {v5, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 277
    .end local v0    # "confirmationMsg":Ljava/lang/String;
    .end local v1    # "formatString":Ljava/lang/String;
    .end local v3    # "res":Landroid/content/res/Resources;
    .restart local v4    # "state":Lcom/android/internal/telephony/PhoneConstants$State;
    :cond_2
    iget-object v5, p0, Lcom/android/phone/RespondViaSmsManager$RespondViaSmsItemClickListener;->this$0:Lcom/android/phone/RespondViaSmsManager;

    # getter for: Lcom/android/phone/RespondViaSmsManager;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v5}, Lcom/android/phone/RespondViaSmsManager;->access$400(Lcom/android/phone/RespondViaSmsManager;)Lcom/android/phone/InCallScreen;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/InCallScreen;->requestUpdateScreen()V

    goto :goto_1
.end method
