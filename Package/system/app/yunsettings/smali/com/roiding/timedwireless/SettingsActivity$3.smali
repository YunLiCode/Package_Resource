.class Lcom/roiding/timedwireless/SettingsActivity$3;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/view/MenuItem$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/roiding/timedwireless/SettingsActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/roiding/timedwireless/SettingsActivity;


# direct methods
.method constructor <init>(Lcom/roiding/timedwireless/SettingsActivity;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/roiding/timedwireless/SettingsActivity$3;->this$0:Lcom/roiding/timedwireless/SettingsActivity;

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 77
    iget-object v0, p0, Lcom/roiding/timedwireless/SettingsActivity$3;->this$0:Lcom/roiding/timedwireless/SettingsActivity;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/roiding/timedwireless/SettingsActivity;->showDialog(I)V

    .line 78
    const/4 v0, 0x1

    return v0
.end method
