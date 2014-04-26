.class Lcom/android/phone/NotificationMgr$BlacklistedCallInfo;
.super Ljava/lang/Object;
.source "NotificationMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NotificationMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BlacklistedCallInfo"
.end annotation


# instance fields
.field date:J

.field matchType:I

.field number:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;JI)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "date"    # J
    .param p4, "matchType"    # I

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    iput-object p1, p0, Lcom/android/phone/NotificationMgr$BlacklistedCallInfo;->number:Ljava/lang/String;

    .line 157
    iput-wide p2, p0, Lcom/android/phone/NotificationMgr$BlacklistedCallInfo;->date:J

    .line 158
    iput p4, p0, Lcom/android/phone/NotificationMgr$BlacklistedCallInfo;->matchType:I

    .line 159
    return-void
.end method
