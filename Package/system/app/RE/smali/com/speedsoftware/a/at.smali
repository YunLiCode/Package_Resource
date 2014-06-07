.class public final Lcom/speedsoftware/a/at;
.super Lcom/speedsoftware/a/h;


# instance fields
.field private f:I

.field private g:S


# direct methods
.method public constructor <init>(Lcom/speedsoftware/a/h;[B)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/speedsoftware/a/h;-><init>(Lcom/speedsoftware/a/h;)V

    invoke-virtual {p0}, Lcom/speedsoftware/a/at;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p2, v0}, Lcom/speedsoftware/a/ac;->b([BI)I

    move-result v0

    iput v0, p0, Lcom/speedsoftware/a/at;->f:I

    const/4 v0, 0x4

    :cond_0
    invoke-virtual {p0}, Lcom/speedsoftware/a/at;->b()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p2, v0}, Lcom/speedsoftware/a/ac;->a([BI)S

    move-result v0

    iput-short v0, p0, Lcom/speedsoftware/a/at;->g:S

    :cond_1
    return-void
.end method
