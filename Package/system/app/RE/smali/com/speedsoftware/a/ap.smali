.class public final Lcom/speedsoftware/a/ap;
.super Ljava/lang/Object;


# instance fields
.field private a:J

.field private b:J

.field private c:J

.field private final d:Lcom/speedsoftware/a/ah;

.field private e:Lcom/speedsoftware/a/ad;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/speedsoftware/a/ah;

    invoke-direct {v0}, Lcom/speedsoftware/a/ah;-><init>()V

    iput-object v0, p0, Lcom/speedsoftware/a/ap;->d:Lcom/speedsoftware/a/ah;

    return-void
.end method


# virtual methods
.method public final a()Lcom/speedsoftware/a/ah;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/a/ap;->d:Lcom/speedsoftware/a/ah;

    return-object v0
.end method

.method public final b()I
    .locals 4

    iget-wide v0, p0, Lcom/speedsoftware/a/ap;->c:J

    iget-object v2, p0, Lcom/speedsoftware/a/ap;->d:Lcom/speedsoftware/a/ah;

    invoke-virtual {v2}, Lcom/speedsoftware/a/ah;->c()J

    move-result-wide v2

    div-long/2addr v0, v2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    iput-wide v0, p0, Lcom/speedsoftware/a/ap;->c:J

    iget-wide v0, p0, Lcom/speedsoftware/a/ap;->b:J

    iget-wide v2, p0, Lcom/speedsoftware/a/ap;->a:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/speedsoftware/a/ap;->c:J

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public final c()J
    .locals 4

    iget-wide v0, p0, Lcom/speedsoftware/a/ap;->c:J

    const/16 v2, 0xe

    ushr-long/2addr v0, v2

    iput-wide v0, p0, Lcom/speedsoftware/a/ap;->c:J

    iget-wide v0, p0, Lcom/speedsoftware/a/ap;->b:J

    iget-wide v2, p0, Lcom/speedsoftware/a/ap;->a:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/speedsoftware/a/ap;->c:J

    div-long/2addr v0, v2

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    return-wide v0
.end method

.method public final d()V
    .locals 8

    const-wide v6, 0xffffffffL

    iget-wide v0, p0, Lcom/speedsoftware/a/ap;->a:J

    iget-wide v2, p0, Lcom/speedsoftware/a/ap;->c:J

    iget-object v4, p0, Lcom/speedsoftware/a/ap;->d:Lcom/speedsoftware/a/ah;

    invoke-virtual {v4}, Lcom/speedsoftware/a/ah;->b()J

    move-result-wide v4

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    and-long/2addr v0, v6

    iput-wide v0, p0, Lcom/speedsoftware/a/ap;->a:J

    iget-wide v0, p0, Lcom/speedsoftware/a/ap;->c:J

    iget-object v2, p0, Lcom/speedsoftware/a/ap;->d:Lcom/speedsoftware/a/ah;

    invoke-virtual {v2}, Lcom/speedsoftware/a/ah;->a()J

    move-result-wide v2

    iget-object v4, p0, Lcom/speedsoftware/a/ap;->d:Lcom/speedsoftware/a/ah;

    invoke-virtual {v4}, Lcom/speedsoftware/a/ah;->b()J

    move-result-wide v4

    sub-long/2addr v2, v4

    mul-long/2addr v0, v2

    and-long/2addr v0, v6

    iput-wide v0, p0, Lcom/speedsoftware/a/ap;->c:J

    return-void
.end method

.method public final e()V
    .locals 11

    const/16 v10, 0x8

    const/4 v1, 0x0

    const-wide v8, 0xffffffffL

    move v0, v1

    :goto_0
    iget-wide v2, p0, Lcom/speedsoftware/a/ap;->a:J

    iget-wide v4, p0, Lcom/speedsoftware/a/ap;->a:J

    iget-wide v6, p0, Lcom/speedsoftware/a/ap;->c:J

    add-long/2addr v4, v6

    xor-long/2addr v2, v4

    const-wide/32 v4, 0x1000000

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    iget-wide v2, p0, Lcom/speedsoftware/a/ap;->c:J

    const-wide/32 v4, 0x8000

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    iget-wide v2, p0, Lcom/speedsoftware/a/ap;->a:J

    neg-long v2, v2

    const-wide/16 v4, 0x7fff

    and-long/2addr v2, v4

    and-long/2addr v2, v8

    iput-wide v2, p0, Lcom/speedsoftware/a/ap;->c:J

    move v0, v1

    :cond_1
    iget-wide v2, p0, Lcom/speedsoftware/a/ap;->b:J

    shl-long/2addr v2, v10

    iget-object v4, p0, Lcom/speedsoftware/a/ap;->e:Lcom/speedsoftware/a/ad;

    invoke-virtual {v4}, Lcom/speedsoftware/a/ad;->i()I

    move-result v4

    int-to-long v4, v4

    or-long/2addr v2, v4

    and-long/2addr v2, v8

    iput-wide v2, p0, Lcom/speedsoftware/a/ap;->b:J

    iget-wide v2, p0, Lcom/speedsoftware/a/ap;->c:J

    shl-long/2addr v2, v10

    and-long/2addr v2, v8

    iput-wide v2, p0, Lcom/speedsoftware/a/ap;->c:J

    iget-wide v2, p0, Lcom/speedsoftware/a/ap;->a:J

    shl-long/2addr v2, v10

    and-long/2addr v2, v8

    iput-wide v2, p0, Lcom/speedsoftware/a/ap;->a:J

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RangeCoder["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n  low="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/speedsoftware/a/ap;->a:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\n  code="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/speedsoftware/a/ap;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\n  range="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/speedsoftware/a/ap;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\n  subrange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/speedsoftware/a/ap;->d:Lcom/speedsoftware/a/ah;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
