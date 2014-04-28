.class Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$7;
.super Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;
.source "CameraWidgetFrame.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mShowing:Z

.field final synthetic this$0:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;)V
    .registers 2

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$7;->this$0:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;

    invoke-direct {p0}, Lcom/android/internal/policy/impl/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method onKeyguardVisibilityChanged(Z)V
    .registers 4
    .param p1, "showing"    # Z

    .prologue
    .line 114
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$7;->mShowing:Z

    if-ne v0, p1, :cond_5

    .line 118
    :goto_4
    return-void

    .line 116
    :cond_5
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$7;->mShowing:Z

    .line 117
    iget-object v0, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$7;->this$0:Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;

    iget-boolean v1, p0, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame$7;->mShowing:Z

    # invokes: Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->onKeyguardVisibilityChanged(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;->access$1200(Lcom/android/internal/policy/impl/keyguard/CameraWidgetFrame;Z)V

    goto :goto_4
.end method
