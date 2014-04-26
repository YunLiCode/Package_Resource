.class Lcom/android/phone/NotificationMgr$MissedCallInfo;
.super Ljava/lang/Object;
.source "NotificationMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NotificationMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MissedCallInfo"
.end annotation


# instance fields
.field date:J

.field name:Ljava/lang/String;

.field number:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "date"    # J

    .prologue
    .line 141
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 142
    iput-object p1, p0, Lcom/android/phone/NotificationMgr$MissedCallInfo;->name:Ljava/lang/String;

    .line 143
    iput-object p2, p0, Lcom/android/phone/NotificationMgr$MissedCallInfo;->number:Ljava/lang/String;

    .line 144
    iput-wide p3, p0, Lcom/android/phone/NotificationMgr$MissedCallInfo;->date:J

    .line 145
    return-void
.end method
