.class public final Lcom/speedsoftware/a/ak;
.super Lcom/speedsoftware/a/bn;


# instance fields
.field private a:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method private constructor <init>([B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/speedsoftware/a/bn;-><init>([B)V

    return-void
.end method

.method private b(I)V
    .locals 2

    iput p1, p0, Lcom/speedsoftware/a/ak;->e:I

    iget-object v0, p0, Lcom/speedsoftware/a/ak;->b:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/speedsoftware/a/ak;->b:[B

    iget v1, p0, Lcom/speedsoftware/a/ak;->c:I

    add-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1, p1}, Lcom/speedsoftware/a/ac;->a([BII)V

    :cond_0
    return-void
.end method

.method private d(I)V
    .locals 2

    iput p1, p0, Lcom/speedsoftware/a/ak;->f:I

    iget-object v0, p0, Lcom/speedsoftware/a/ak;->b:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/speedsoftware/a/ak;->b:[B

    iget v1, p0, Lcom/speedsoftware/a/ak;->c:I

    add-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1, p1}, Lcom/speedsoftware/a/ac;->a([BII)V

    :cond_0
    return-void
.end method

.method private g()I
    .locals 2

    iget-object v0, p0, Lcom/speedsoftware/a/ak;->b:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/speedsoftware/a/ak;->b:[B

    iget v1, p0, Lcom/speedsoftware/a/ak;->c:I

    add-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1}, Lcom/speedsoftware/a/ac;->b([BI)I

    move-result v0

    iput v0, p0, Lcom/speedsoftware/a/ak;->f:I

    :cond_0
    iget v0, p0, Lcom/speedsoftware/a/ak;->f:I

    return v0
.end method


# virtual methods
.method public final a()V
    .locals 2

    new-instance v0, Lcom/speedsoftware/a/ak;

    iget-object v1, p0, Lcom/speedsoftware/a/ak;->b:[B

    invoke-direct {v0, v1}, Lcom/speedsoftware/a/ak;-><init>([B)V

    invoke-direct {p0}, Lcom/speedsoftware/a/ak;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/speedsoftware/a/ak;->c(I)V

    invoke-virtual {p0}, Lcom/speedsoftware/a/ak;->b()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/speedsoftware/a/ak;->b(I)V

    invoke-virtual {p0}, Lcom/speedsoftware/a/ak;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/speedsoftware/a/ak;->c(I)V

    invoke-direct {p0}, Lcom/speedsoftware/a/ak;->g()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/speedsoftware/a/ak;->d(I)V

    return-void
.end method

.method public final a(I)V
    .locals 3

    const v0, 0xffff

    and-int/2addr v0, p1

    iput v0, p0, Lcom/speedsoftware/a/ak;->d:I

    iget-object v0, p0, Lcom/speedsoftware/a/ak;->b:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/speedsoftware/a/ak;->b:[B

    iget v1, p0, Lcom/speedsoftware/a/ak;->c:I

    add-int/lit8 v1, v1, 0x2

    int-to-short v2, p1

    invoke-static {v0, v1, v2}, Lcom/speedsoftware/a/ac;->a([BIS)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/speedsoftware/a/ak;)V
    .locals 2

    new-instance v0, Lcom/speedsoftware/a/ak;

    iget-object v1, p0, Lcom/speedsoftware/a/ak;->b:[B

    invoke-direct {v0, v1}, Lcom/speedsoftware/a/ak;-><init>([B)V

    invoke-virtual {p1}, Lcom/speedsoftware/a/ak;->f()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/speedsoftware/a/ak;->d(I)V

    invoke-direct {p0}, Lcom/speedsoftware/a/ak;->g()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/speedsoftware/a/ak;->c(I)V

    invoke-virtual {v0}, Lcom/speedsoftware/a/ak;->b()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/speedsoftware/a/ak;->b(I)V

    invoke-virtual {v0, p0}, Lcom/speedsoftware/a/ak;->b(Lcom/speedsoftware/a/ak;)V

    invoke-virtual {p0}, Lcom/speedsoftware/a/ak;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/speedsoftware/a/ak;->c(I)V

    invoke-virtual {v0, p0}, Lcom/speedsoftware/a/ak;->c(Lcom/speedsoftware/a/ak;)V

    return-void
.end method

.method public final b()I
    .locals 2

    iget-object v0, p0, Lcom/speedsoftware/a/ak;->b:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/speedsoftware/a/ak;->b:[B

    iget v1, p0, Lcom/speedsoftware/a/ak;->c:I

    add-int/lit8 v1, v1, 0x4

    invoke-static {v0, v1}, Lcom/speedsoftware/a/ac;->b([BI)I

    move-result v0

    iput v0, p0, Lcom/speedsoftware/a/ak;->e:I

    :cond_0
    iget v0, p0, Lcom/speedsoftware/a/ak;->e:I

    return v0
.end method

.method public final b(Lcom/speedsoftware/a/ak;)V
    .locals 1

    invoke-virtual {p1}, Lcom/speedsoftware/a/ak;->f()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/speedsoftware/a/ak;->b(I)V

    return-void
.end method

.method public final c()I
    .locals 2

    iget-object v0, p0, Lcom/speedsoftware/a/ak;->b:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/speedsoftware/a/ak;->b:[B

    iget v1, p0, Lcom/speedsoftware/a/ak;->c:I

    add-int/lit8 v1, v1, 0x2

    invoke-static {v0, v1}, Lcom/speedsoftware/a/ac;->a([BI)S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/speedsoftware/a/ak;->d:I

    :cond_0
    iget v0, p0, Lcom/speedsoftware/a/ak;->d:I

    return v0
.end method

.method public final c(Lcom/speedsoftware/a/ak;)V
    .locals 1

    invoke-virtual {p1}, Lcom/speedsoftware/a/ak;->f()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/speedsoftware/a/ak;->d(I)V

    return-void
.end method

.method public final d()I
    .locals 2

    iget-object v0, p0, Lcom/speedsoftware/a/ak;->b:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/speedsoftware/a/ak;->b:[B

    iget v1, p0, Lcom/speedsoftware/a/ak;->c:I

    invoke-static {v0, v1}, Lcom/speedsoftware/a/ac;->a([BI)S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/speedsoftware/a/ak;->a:I

    :cond_0
    iget v0, p0, Lcom/speedsoftware/a/ak;->a:I

    return v0
.end method

.method public final e()V
    .locals 3

    const v0, 0xffff

    iput v0, p0, Lcom/speedsoftware/a/ak;->a:I

    iget-object v0, p0, Lcom/speedsoftware/a/ak;->b:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/speedsoftware/a/ak;->b:[B

    iget v1, p0, Lcom/speedsoftware/a/ak;->c:I

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/speedsoftware/a/ac;->a([BIS)V

    :cond_0
    return-void
.end method
