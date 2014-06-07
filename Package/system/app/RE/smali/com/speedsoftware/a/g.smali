.class public Lcom/speedsoftware/a/g;
.super Ljava/lang/Object;


# instance fields
.field protected o:I

.field protected p:I

.field protected q:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x8000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/speedsoftware/a/g;->q:[B

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    iget v0, p0, Lcom/speedsoftware/a/g;->p:I

    add-int/2addr v0, p1

    iget v1, p0, Lcom/speedsoftware/a/g;->o:I

    shr-int/lit8 v2, v0, 0x3

    add-int/2addr v1, v2

    iput v1, p0, Lcom/speedsoftware/a/g;->o:I

    and-int/lit8 v0, v0, 0x7

    iput v0, p0, Lcom/speedsoftware/a/g;->p:I

    return-void
.end method

.method public final b(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/speedsoftware/a/g;->a(I)V

    return-void
.end method

.method public final c()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/speedsoftware/a/g;->o:I

    iput v0, p0, Lcom/speedsoftware/a/g;->p:I

    return-void
.end method

.method public final d()I
    .locals 3

    iget-object v0, p0, Lcom/speedsoftware/a/g;->q:[B

    iget v1, p0, Lcom/speedsoftware/a/g;->o:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    iget-object v1, p0, Lcom/speedsoftware/a/g;->q:[B

    iget v2, p0, Lcom/speedsoftware/a/g;->o:I

    add-int/lit8 v2, v2, 0x1

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/speedsoftware/a/g;->q:[B

    iget v2, p0, Lcom/speedsoftware/a/g;->o:I

    add-int/lit8 v2, v2, 0x2

    aget-byte v1, v1, v2

    and-int/lit16 v1, v1, 0xff

    add-int/2addr v0, v1

    iget v1, p0, Lcom/speedsoftware/a/g;->p:I

    rsub-int/lit8 v1, v1, 0x8

    ushr-int/2addr v0, v1

    const v1, 0xffff

    and-int/2addr v0, v1

    return v0
.end method

.method public final e()I
    .locals 1

    invoke-virtual {p0}, Lcom/speedsoftware/a/g;->d()I

    move-result v0

    return v0
.end method

.method public final f()Z
    .locals 2

    iget v0, p0, Lcom/speedsoftware/a/g;->o:I

    add-int/lit8 v0, v0, 0x3

    const v1, 0x8000

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()[B
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/a/g;->q:[B

    return-object v0
.end method
