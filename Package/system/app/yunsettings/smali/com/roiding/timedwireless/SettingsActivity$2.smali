.class Lcom/roiding/timedwireless/SettingsActivity$2;
.super Ljava/lang/Object;
.source "SettingsActivity.java"

# interfaces
.implements Landroid/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/roiding/timedwireless/SettingsActivity;
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
    iput-object p1, p0, Lcom/roiding/timedwireless/SettingsActivity$2;->this$0:Lcom/roiding/timedwireless/SettingsActivity;

    .line 194
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Landroid/widget/TimePicker;II)V
    .locals 3
    .param p1, "view"    # Landroid/widget/TimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    .line 197
    iget-object v2, p0, Lcom/roiding/timedwireless/SettingsActivity$2;->this$0:Lcom/roiding/timedwireless/SettingsActivity;

    # invokes: Lcom/roiding/timedwireless/SettingsActivity;->formatTime(II)Ljava/lang/String;
    invoke-static {v2, p2, p3}, Lcom/roiding/timedwireless/SettingsActivity;->access$0(Lcom/roiding/timedwireless/SettingsActivity;II)Ljava/lang/String;

    move-result-object v1

    .line 198
    .local v1, "time":Ljava/lang/String;
    iget-object v2, p0, Lcom/roiding/timedwireless/SettingsActivity$2;->this$0:Lcom/roiding/timedwireless/SettingsActivity;

    # getter for: Lcom/roiding/timedwireless/SettingsActivity;->offTime:Landroid/preference/Preference;
    invoke-static {v2}, Lcom/roiding/timedwireless/SettingsActivity;->access$2(Lcom/roiding/timedwireless/SettingsActivity;)Landroid/preference/Preference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/Preference;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 199
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "off_time"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 200
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 201
    return-void
.end method
