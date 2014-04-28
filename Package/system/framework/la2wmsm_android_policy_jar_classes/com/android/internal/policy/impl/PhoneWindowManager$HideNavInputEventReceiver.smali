.class final Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "HideNavInputEventReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Landroid/view/InputChannel;Landroid/os/Looper;)V
    .registers 4
    .param p2, "inputChannel"    # Landroid/view/InputChannel;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2507
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    .line 2508
    invoke-direct {p0, p2, p3}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 2509
    return-void
.end method


# virtual methods
.method public onInputEvent(Landroid/view/InputEvent;)V
    .registers 12
    .param p1, "event"    # Landroid/view/InputEvent;

    .prologue
    .line 2513
    const/4 v2, 0x0

    .line 2515
    .local v2, "handled":Z
    :try_start_1
    instance-of v5, p1, Landroid/view/MotionEvent;

    if-eqz v5, :cond_5d

    invoke-virtual {p1}, Landroid/view/InputEvent;->getSource()I

    move-result v5

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_5d

    .line 2517
    move-object v0, p1

    check-cast v0, Landroid/view/MotionEvent;

    move-object v3, v0

    .line 2518
    .local v3, "motionEvent":Landroid/view/MotionEvent;
    invoke-virtual {v3}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-nez v5, :cond_5d

    .line 2520
    const/4 v1, 0x0

    .line 2521
    .local v1, "changed":Z
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    # getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mLock:Ljava/lang/Object;
    invoke-static {v5}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$500(Lcom/android/internal/policy/impl/PhoneWindowManager;)Ljava/lang/Object;

    move-result-object v6

    monitor-enter v6
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_64

    .line 2527
    :try_start_1f
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v5, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    or-int/lit8 v5, v5, 0x2

    or-int/lit8 v5, v5, 0x1

    or-int/lit8 v4, v5, 0x4

    .line 2531
    .local v4, "newVal":I
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v5, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    if-eq v5, v4, :cond_34

    .line 2532
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput v4, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mResettingSystemUiFlags:I

    .line 2533
    const/4 v1, 0x1

    .line 2538
    :cond_34
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v5, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    or-int/lit8 v4, v5, 0x2

    .line 2540
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget v5, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    if-eq v5, v4, :cond_53

    .line 2541
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput v4, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mForceClearedSystemUiFlags:I

    .line 2542
    const/4 v1, 0x1

    .line 2543
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver$1;

    invoke-direct {v7, p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver$1;-><init>(Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;)V

    const-wide/16 v8, 0x3e8

    invoke-virtual {v5, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2554
    :cond_53
    monitor-exit v6
    :try_end_54
    .catchall {:try_start_1f .. :try_end_54} :catchall_61

    .line 2555
    if-eqz v1, :cond_5d

    .line 2556
    :try_start_56
    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v5, v5, Lcom/android/internal/policy/impl/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v5}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->reevaluateStatusBarVisibility()V
    :try_end_5d
    .catchall {:try_start_56 .. :try_end_5d} :catchall_64

    .line 2561
    .end local v1    # "changed":Z
    .end local v3    # "motionEvent":Landroid/view/MotionEvent;
    .end local v4    # "newVal":I
    :cond_5d
    invoke-virtual {p0, p1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 2563
    return-void

    .line 2554
    .restart local v1    # "changed":Z
    .restart local v3    # "motionEvent":Landroid/view/MotionEvent;
    :catchall_61
    move-exception v5

    :try_start_62
    monitor-exit v6
    :try_end_63
    .catchall {:try_start_62 .. :try_end_63} :catchall_61

    :try_start_63
    throw v5
    :try_end_64
    .catchall {:try_start_63 .. :try_end_64} :catchall_64

    .line 2561
    .end local v1    # "changed":Z
    .end local v3    # "motionEvent":Landroid/view/MotionEvent;
    :catchall_64
    move-exception v5

    invoke-virtual {p0, p1, v2}, Lcom/android/internal/policy/impl/PhoneWindowManager$HideNavInputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    throw v5
.end method
