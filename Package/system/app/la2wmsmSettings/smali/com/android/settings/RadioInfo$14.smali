.class Lcom/android/settings/RadioInfo$14;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .prologue
    .line 961
    iput-object p1, p0, Lcom/android/settings/RadioInfo$14;->this$0:Lcom/android/settings/RadioInfo;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 964
    iget-object v3, p0, Lcom/android/settings/RadioInfo$14;->this$0:Lcom/android/settings/RadioInfo;

    const-string v4, "toggle %s: currently %s"

    const/4 v1, 0x2

    new-array v5, v1, [Ljava/lang/Object;

    const-string v1, "persist.radio.imsregrequired"

    aput-object v1, v5, v2

    iget-object v1, p0, Lcom/android/settings/RadioInfo$14;->this$0:Lcom/android/settings/RadioInfo;

    # invokes: Lcom/android/settings/RadioInfo;->isImsRegRequired()Z
    invoke-static {v1}, Lcom/android/settings/RadioInfo;->access$3500(Lcom/android/settings/RadioInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "on"

    :goto_0
    aput-object v1, v5, v0

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/settings/RadioInfo;->log(Ljava/lang/String;)V
    invoke-static {v3, v1}, Lcom/android/settings/RadioInfo;->access$1000(Lcom/android/settings/RadioInfo;Ljava/lang/String;)V

    .line 966
    iget-object v1, p0, Lcom/android/settings/RadioInfo$14;->this$0:Lcom/android/settings/RadioInfo;

    # invokes: Lcom/android/settings/RadioInfo;->isImsRegRequired()Z
    invoke-static {v1}, Lcom/android/settings/RadioInfo;->access$3500(Lcom/android/settings/RadioInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 967
    .local v0, "newValue":Z
    :goto_1
    const-string v2, "persist.radio.imsregrequired"

    if-eqz v0, :cond_2

    const-string v1, "1"

    :goto_2
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 969
    iget-object v1, p0, Lcom/android/settings/RadioInfo$14;->this$0:Lcom/android/settings/RadioInfo;

    # invokes: Lcom/android/settings/RadioInfo;->updateImsRegRequiredState()V
    invoke-static {v1}, Lcom/android/settings/RadioInfo;->access$3600(Lcom/android/settings/RadioInfo;)V

    .line 970
    return-void

    .line 964
    .end local v0    # "newValue":Z
    :cond_0
    const-string v1, "off"

    goto :goto_0

    :cond_1
    move v0, v2

    .line 966
    goto :goto_1

    .line 967
    .restart local v0    # "newValue":Z
    :cond_2
    const-string v1, "0"

    goto :goto_2
.end method
