.class Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView$1;
.super Ljava/lang/Object;
.source "CoCoKeyguardHostView.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;)V
    .registers 2

    .prologue
    .line 113
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .registers 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 116
    const/4 v0, 0x0

    .line 117
    .local v0, "ret":Z
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_2a

    .line 137
    :goto_6
    return v0

    .line 119
    :pswitch_7
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v1, :cond_15

    .line 120
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->keyguardDone(Z)V

    .line 121
    :cond_15
    const/4 v0, 0x1

    .line 122
    goto :goto_6

    .line 124
    :pswitch_17
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    if-eqz v1, :cond_26

    .line 125
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView$1;->this$0:Lcom/android/internal/policy/impl/keyguard/CoCoKeyguardHostView;

    iget-object v1, v1, Lcom/android/internal/policy/impl/keyguard/KeyguardViewBase;->mViewMediatorCallback:Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;

    const-wide/16 v2, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/policy/impl/keyguard/KeyguardViewMediator$ViewMediatorCallback;->userActivity(J)V

    .line 126
    :cond_26
    const/4 v0, 0x1

    .line 127
    goto :goto_6

    .line 130
    :pswitch_28
    const/4 v0, 0x0

    .line 131
    goto :goto_6

    .line 117
    :pswitch_data_2a
    .packed-switch 0x2710
        :pswitch_7
        :pswitch_17
        :pswitch_28
    .end packed-switch
.end method
