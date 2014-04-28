.class Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$IRemoteControlDisplayWeak;
.super Landroid/media/IRemoteControlDisplay$Stub;
.source "KeyguardTransportControlView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "IRemoteControlDisplayWeak"
.end annotation


# instance fields
.field private mLocalHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/os/Handler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/os/Handler;)V
    .registers 3
    .param p1, "handler"    # Landroid/os/Handler;

    .prologue
    .line 131
    invoke-direct {p0}, Landroid/media/IRemoteControlDisplay$Stub;-><init>()V

    .line 132
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$IRemoteControlDisplayWeak;->mLocalHandler:Ljava/lang/ref/WeakReference;

    .line 133
    return-void
.end method


# virtual methods
.method public setAllMetadata(ILandroid/os/Bundle;Landroid/graphics/Bitmap;)V
    .registers 7
    .param p1, "generationId"    # I
    .param p2, "metadata"    # Landroid/os/Bundle;
    .param p3, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 166
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$IRemoteControlDisplayWeak;->mLocalHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 167
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_1d

    .line 168
    const/16 v1, 0x65

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 169
    const/16 v1, 0x67

    invoke-virtual {v0, v1, p1, v2, p3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 171
    :cond_1d
    return-void
.end method

.method public setArtwork(ILandroid/graphics/Bitmap;)V
    .registers 6
    .param p1, "generationId"    # I
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 159
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$IRemoteControlDisplayWeak;->mLocalHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 160
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_14

    .line 161
    const/16 v1, 0x67

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 163
    :cond_14
    return-void
.end method

.method public setCurrentClientId(ILandroid/app/PendingIntent;Z)V
    .registers 7
    .param p1, "clientGeneration"    # I
    .param p2, "mediaIntent"    # Landroid/app/PendingIntent;
    .param p3, "clearing"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 175
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$IRemoteControlDisplayWeak;->mLocalHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 176
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_16

    .line 177
    const/16 v2, 0x68

    if-eqz p3, :cond_17

    const/4 v1, 0x1

    :goto_f
    invoke-virtual {v0, v2, p1, v1, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 180
    :cond_16
    return-void

    .line 177
    :cond_17
    const/4 v1, 0x0

    goto :goto_f
.end method

.method public setMetadata(ILandroid/os/Bundle;)V
    .registers 6
    .param p1, "generationId"    # I
    .param p2, "metadata"    # Landroid/os/Bundle;

    .prologue
    .line 144
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$IRemoteControlDisplayWeak;->mLocalHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 145
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_14

    .line 146
    const/16 v1, 0x65

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 148
    :cond_14
    return-void
.end method

.method public setPlaybackState(IIJJF)V
    .registers 10
    .param p1, "generationId"    # I
    .param p2, "state"    # I
    .param p3, "stateChangeTimeMs"    # J
    .param p5, "currentPosMs"    # J
    .param p7, "speed"    # F

    .prologue
    .line 137
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$IRemoteControlDisplayWeak;->mLocalHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 138
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_13

    .line 139
    const/16 v1, 0x64

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 141
    :cond_13
    return-void
.end method

.method public setTransportControlInfo(III)V
    .registers 6
    .param p1, "generationId"    # I
    .param p2, "flags"    # I
    .param p3, "posCapabilities"    # I

    .prologue
    .line 151
    iget-object v1, p0, Lcom/android/internal/policy/impl/keyguard/KeyguardTransportControlView$IRemoteControlDisplayWeak;->mLocalHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Handler;

    .line 152
    .local v0, "handler":Landroid/os/Handler;
    if-eqz v0, :cond_13

    .line 153
    const/16 v1, 0x66

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 156
    :cond_13
    return-void
.end method
