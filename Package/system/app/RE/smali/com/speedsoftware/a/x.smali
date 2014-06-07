.class public final Lcom/speedsoftware/a/x;
.super Lcom/speedsoftware/a/h;


# instance fields
.field private f:S

.field private g:B

.field private h:B

.field private i:S


# direct methods
.method public constructor <init>(Lcom/speedsoftware/a/h;[B)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/speedsoftware/a/h;-><init>(Lcom/speedsoftware/a/h;)V

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/speedsoftware/a/ac;->a([BI)S

    move-result v0

    iput-short v0, p0, Lcom/speedsoftware/a/x;->f:S

    iget-byte v0, p0, Lcom/speedsoftware/a/x;->g:B

    const/4 v1, 0x2

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/speedsoftware/a/x;->g:B

    iget-byte v0, p0, Lcom/speedsoftware/a/x;->h:B

    const/4 v1, 0x3

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/speedsoftware/a/x;->h:B

    const/4 v0, 0x4

    invoke-static {p2, v0}, Lcom/speedsoftware/a/ac;->a([BI)S

    move-result v0

    iput-short v0, p0, Lcom/speedsoftware/a/x;->i:S

    return-void
.end method
