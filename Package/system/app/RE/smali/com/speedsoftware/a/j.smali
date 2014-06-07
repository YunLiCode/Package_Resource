.class public final Lcom/speedsoftware/a/j;
.super Lcom/speedsoftware/a/h;


# instance fields
.field private f:I

.field private g:S

.field private h:S


# direct methods
.method public constructor <init>(Lcom/speedsoftware/a/h;[B)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/speedsoftware/a/h;-><init>(Lcom/speedsoftware/a/h;)V

    iput v0, p0, Lcom/speedsoftware/a/j;->f:I

    iput-short v0, p0, Lcom/speedsoftware/a/j;->g:S

    iput-short v0, p0, Lcom/speedsoftware/a/j;->h:S

    invoke-static {p2, v0}, Lcom/speedsoftware/a/ac;->b([BI)I

    move-result v0

    iput v0, p0, Lcom/speedsoftware/a/j;->f:I

    const/4 v0, 0x4

    invoke-static {p2, v0}, Lcom/speedsoftware/a/ac;->a([BI)S

    move-result v0

    iput-short v0, p0, Lcom/speedsoftware/a/j;->g:S

    const/4 v0, 0x6

    invoke-static {p2, v0}, Lcom/speedsoftware/a/ac;->a([BI)S

    move-result v0

    iput-short v0, p0, Lcom/speedsoftware/a/j;->h:S

    return-void
.end method
