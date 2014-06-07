.class public Lcom/speedsoftware/a/t;
.super Lcom/speedsoftware/a/ag;


# instance fields
.field private f:S

.field private g:B


# direct methods
.method public constructor <init>(Lcom/speedsoftware/a/ag;[B)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/speedsoftware/a/ag;-><init>(Lcom/speedsoftware/a/ag;)V

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/speedsoftware/a/ac;->a([BI)S

    move-result v0

    iput-short v0, p0, Lcom/speedsoftware/a/t;->f:S

    iget-byte v0, p0, Lcom/speedsoftware/a/t;->g:B

    const/4 v1, 0x2

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/speedsoftware/a/t;->g:B

    return-void
.end method

.method public constructor <init>(Lcom/speedsoftware/a/t;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/speedsoftware/a/ag;-><init>(Lcom/speedsoftware/a/ag;)V

    iget-short v0, p1, Lcom/speedsoftware/a/t;->f:S

    invoke-static {v0}, Lcom/speedsoftware/a/bf;->a(S)Lcom/speedsoftware/a/bf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/speedsoftware/a/bf;->a()S

    move-result v0

    iput-short v0, p0, Lcom/speedsoftware/a/t;->f:S

    iget-byte v0, p1, Lcom/speedsoftware/a/t;->g:B

    iput-byte v0, p0, Lcom/speedsoftware/a/t;->g:B

    return-void
.end method


# virtual methods
.method public h()V
    .locals 0

    invoke-super {p0}, Lcom/speedsoftware/a/ag;->h()V

    return-void
.end method

.method public final i()Lcom/speedsoftware/a/bf;
    .locals 1

    iget-short v0, p0, Lcom/speedsoftware/a/t;->f:S

    invoke-static {v0}, Lcom/speedsoftware/a/bf;->a(S)Lcom/speedsoftware/a/bf;

    move-result-object v0

    return-object v0
.end method
