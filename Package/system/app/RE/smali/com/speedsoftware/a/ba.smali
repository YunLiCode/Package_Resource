.class public final Lcom/speedsoftware/a/ba;
.super Lcom/speedsoftware/a/ag;


# instance fields
.field private f:B

.field private g:S

.field private h:I

.field private i:B


# direct methods
.method public constructor <init>(Lcom/speedsoftware/a/ag;[B)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/speedsoftware/a/ag;-><init>(Lcom/speedsoftware/a/ag;)V

    iget-byte v0, p0, Lcom/speedsoftware/a/ba;->f:B

    aget-byte v1, p2, v2

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/speedsoftware/a/ba;->f:B

    invoke-static {p2, v2}, Lcom/speedsoftware/a/ac;->a([BI)S

    move-result v0

    iput-short v0, p0, Lcom/speedsoftware/a/ba;->g:S

    const/4 v0, 0x2

    invoke-static {p2, v0}, Lcom/speedsoftware/a/ac;->b([BI)I

    move-result v0

    iput v0, p0, Lcom/speedsoftware/a/ba;->h:I

    iget-byte v0, p0, Lcom/speedsoftware/a/ba;->i:B

    const/4 v1, 0x6

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/speedsoftware/a/ba;->i:B

    return-void
.end method
