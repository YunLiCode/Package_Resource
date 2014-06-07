.class public final Lcom/speedsoftware/a/a;
.super Lcom/speedsoftware/a/h;


# instance fields
.field private f:B

.field private g:B

.field private h:B

.field private i:I


# direct methods
.method public constructor <init>(Lcom/speedsoftware/a/h;[B)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/speedsoftware/a/h;-><init>(Lcom/speedsoftware/a/h;)V

    iget-byte v0, p0, Lcom/speedsoftware/a/a;->f:B

    const/4 v1, 0x0

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/speedsoftware/a/a;->f:B

    iget-byte v0, p0, Lcom/speedsoftware/a/a;->g:B

    const/4 v1, 0x1

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/speedsoftware/a/a;->g:B

    iget-byte v0, p0, Lcom/speedsoftware/a/a;->h:B

    const/4 v1, 0x2

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/speedsoftware/a/a;->h:B

    const/4 v0, 0x3

    invoke-static {p2, v0}, Lcom/speedsoftware/a/ac;->b([BI)I

    move-result v0

    iput v0, p0, Lcom/speedsoftware/a/a;->i:I

    return-void
.end method
