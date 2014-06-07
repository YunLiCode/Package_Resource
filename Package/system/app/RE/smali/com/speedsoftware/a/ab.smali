.class public final Lcom/speedsoftware/a/ab;
.super Lcom/speedsoftware/a/bn;


# direct methods
.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/speedsoftware/a/bn;-><init>([B)V

    return-void
.end method

.method public static a(Lcom/speedsoftware/a/ab;Lcom/speedsoftware/a/ab;)V
    .locals 7

    iget-object v3, p0, Lcom/speedsoftware/a/ab;->b:[B

    iget-object v4, p1, Lcom/speedsoftware/a/ab;->b:[B

    const/4 v0, 0x0

    iget v2, p0, Lcom/speedsoftware/a/ab;->c:I

    iget v1, p1, Lcom/speedsoftware/a/ab;->c:I

    :goto_0
    const/4 v5, 0x6

    if-lt v0, v5, :cond_0

    return-void

    :cond_0
    aget-byte v5, v3, v2

    aget-byte v6, v4, v1

    aput-byte v6, v3, v2

    aput-byte v5, v4, v1

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final a()I
    .locals 2

    iget-object v0, p0, Lcom/speedsoftware/a/ab;->b:[B

    iget v1, p0, Lcom/speedsoftware/a/ab;->c:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final a([B)Lcom/speedsoftware/a/ab;
    .locals 1

    iput-object p1, p0, Lcom/speedsoftware/a/ab;->b:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/speedsoftware/a/ab;->c:I

    return-object p0
.end method

.method public final a(I)V
    .locals 3

    iget-object v0, p0, Lcom/speedsoftware/a/ab;->b:[B

    iget v1, p0, Lcom/speedsoftware/a/ab;->c:I

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    return-void
.end method

.method public final a(Lcom/speedsoftware/a/ab;)V
    .locals 5

    iget-object v0, p1, Lcom/speedsoftware/a/ab;->b:[B

    iget v1, p1, Lcom/speedsoftware/a/ab;->c:I

    iget-object v2, p0, Lcom/speedsoftware/a/ab;->b:[B

    iget v3, p0, Lcom/speedsoftware/a/ab;->c:I

    const/4 v4, 0x6

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final a(Lcom/speedsoftware/a/ai;)V
    .locals 1

    invoke-virtual {p1}, Lcom/speedsoftware/a/ai;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/speedsoftware/a/ab;->a(I)V

    invoke-virtual {p1}, Lcom/speedsoftware/a/ai;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/speedsoftware/a/ab;->b(I)V

    invoke-virtual {p1}, Lcom/speedsoftware/a/ai;->c()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/speedsoftware/a/ab;->e(I)V

    return-void
.end method

.method public final a(Lcom/speedsoftware/a/m;)V
    .locals 1

    invoke-virtual {p1}, Lcom/speedsoftware/a/m;->f()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/speedsoftware/a/ab;->e(I)V

    return-void
.end method

.method public final b()I
    .locals 2

    iget-object v0, p0, Lcom/speedsoftware/a/ab;->b:[B

    iget v1, p0, Lcom/speedsoftware/a/ab;->c:I

    add-int/lit8 v1, v1, 0x1

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final b(I)V
    .locals 3

    iget-object v0, p0, Lcom/speedsoftware/a/ab;->b:[B

    iget v1, p0, Lcom/speedsoftware/a/ab;->c:I

    add-int/lit8 v1, v1, 0x1

    int-to-byte v2, p1

    aput-byte v2, v0, v1

    return-void
.end method

.method public final c()I
    .locals 2

    iget-object v0, p0, Lcom/speedsoftware/a/ab;->b:[B

    iget v1, p0, Lcom/speedsoftware/a/ab;->c:I

    add-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/speedsoftware/a/ac;->b([BI)I

    move-result v0

    return v0
.end method

.method public final d()Lcom/speedsoftware/a/ab;
    .locals 1

    iget v0, p0, Lcom/speedsoftware/a/ab;->c:I

    add-int/lit8 v0, v0, -0x6

    invoke-virtual {p0, v0}, Lcom/speedsoftware/a/ab;->c(I)V

    return-object p0
.end method

.method public final d(I)V
    .locals 3

    iget-object v0, p0, Lcom/speedsoftware/a/ab;->b:[B

    iget v1, p0, Lcom/speedsoftware/a/ab;->c:I

    add-int/lit8 v1, v1, 0x1

    aget-byte v2, v0, v1

    add-int/2addr v2, p1

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-void
.end method

.method public final e()Lcom/speedsoftware/a/ab;
    .locals 1

    iget v0, p0, Lcom/speedsoftware/a/ab;->c:I

    add-int/lit8 v0, v0, 0x6

    invoke-virtual {p0, v0}, Lcom/speedsoftware/a/ab;->c(I)V

    return-object p0
.end method

.method public final e(I)V
    .locals 2

    iget-object v0, p0, Lcom/speedsoftware/a/ab;->b:[B

    iget v1, p0, Lcom/speedsoftware/a/ab;->c:I

    add-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1, p1}, Lcom/speedsoftware/a/ac;->a([BII)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n  pos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/speedsoftware/a/ab;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  symbol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/speedsoftware/a/ab;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  freq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/speedsoftware/a/ab;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  successor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/speedsoftware/a/ab;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
