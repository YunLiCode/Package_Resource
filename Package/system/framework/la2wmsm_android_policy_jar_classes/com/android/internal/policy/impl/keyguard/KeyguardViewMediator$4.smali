.class Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;
.super Landroid/os/Handler;
.source "KeyguardViewMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V
    .registers 5
    .param p2, "x0"    # Landroid/os/Looper;
    .param p3, "x1"    # Landroid/os/Handler$Callback;
    .param p4, "x2"    # Z

    .prologue
    .line 1175
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-direct {p0, p2, p3, p4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 1178
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_7c

    .line 1221
    :goto_7
    return-void

    .line 1180
    :pswitch_8
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleShow(Landroid/os/Bundle;)V
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$1600(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto :goto_7

    .line 1183
    :pswitch_12
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleHide()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$1700(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    goto :goto_7

    .line 1186
    :pswitch_18
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleReset(Landroid/os/Bundle;)V
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$1800(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    goto :goto_7

    .line 1189
    :pswitch_22
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleVerifyUnlock()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$1900(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    goto :goto_7

    .line 1192
    :pswitch_28
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleNotifyScreenOff()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$2000(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    goto :goto_7

    .line 1195
    :pswitch_2e
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleNotifyScreenOn(Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;)V
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$2100(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Lcom/android/internal/policy/impl/keyguard/KeyguardViewManager$ShowListener;)V

    goto :goto_7

    .line 1198
    :pswitch_38
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleWakeWhenReady(I)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$2200(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;I)V

    goto :goto_7

    .line 1201
    :pswitch_40
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_4a

    :goto_46
    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleKeyguardDone(Z)V
    invoke-static {v2, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$2300(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Z)V

    goto :goto_7

    :cond_4a
    move v0, v1

    goto :goto_46

    .line 1204
    :pswitch_4c
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleKeyguardDoneDrawing()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$2400(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;)V

    goto :goto_7

    .line 1207
    :pswitch_52
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v1, v0, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->keyguardDone(ZZ)V

    goto :goto_7

    .line 1210
    :pswitch_58
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    iget v3, p1, Landroid/os/Message;->arg1:I

    if-eqz v3, :cond_62

    :goto_5e
    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleSetHidden(Z)V
    invoke-static {v2, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$2500(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Z)V

    goto :goto_7

    :cond_62
    move v0, v1

    goto :goto_5e

    .line 1213
    :pswitch_64
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    monitor-enter v1

    .line 1214
    :try_start_67
    iget-object v2, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/Bundle;

    # invokes: Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->doKeyguardLocked(Landroid/os/Bundle;)V
    invoke-static {v2, v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->access$2600(Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;Landroid/os/Bundle;)V

    .line 1215
    monitor-exit v1

    goto :goto_7

    :catchall_72
    move-exception v0

    monitor-exit v1
    :try_end_74
    .catchall {:try_start_67 .. :try_end_74} :catchall_72

    throw v0

    .line 1218
    :pswitch_75
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator;->handleShowAssistant()V

    goto :goto_7

    .line 1178
    nop

    :pswitch_data_7c
    .packed-switch 0x2
        :pswitch_8
        :pswitch_12
        :pswitch_18
        :pswitch_22
        :pswitch_28
        :pswitch_2e
        :pswitch_38
        :pswitch_40
        :pswitch_4c
        :pswitch_52
        :pswitch_58
        :pswitch_64
        :pswitch_75
    .end packed-switch
.end method
