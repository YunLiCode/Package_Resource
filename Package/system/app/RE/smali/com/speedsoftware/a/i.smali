.class public final Lcom/speedsoftware/a/i;
.super Lcom/speedsoftware/a/t;


# instance fields
.field private f:I

.field private g:I

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/speedsoftware/a/t;[B)V
    .locals 4

    const v1, 0xffff

    const/4 v3, 0x0

    invoke-direct {p0, p1}, Lcom/speedsoftware/a/t;-><init>(Lcom/speedsoftware/a/t;)V

    invoke-static {p2, v3}, Lcom/speedsoftware/a/ac;->a([BI)S

    move-result v0

    and-int/2addr v0, v1

    iput v0, p0, Lcom/speedsoftware/a/i;->f:I

    const/4 v0, 0x2

    invoke-static {p2, v0}, Lcom/speedsoftware/a/ac;->a([BI)S

    move-result v0

    and-int/2addr v0, v1

    iput v0, p0, Lcom/speedsoftware/a/i;->g:I

    iget v0, p0, Lcom/speedsoftware/a/i;->f:I

    add-int/lit8 v0, v0, 0x4

    array-length v1, p2

    if-ge v0, v1, :cond_0

    iget v0, p0, Lcom/speedsoftware/a/i;->f:I

    new-array v0, v0, [B

    const/4 v1, 0x4

    iget v2, p0, Lcom/speedsoftware/a/i;->f:I

    invoke-static {p2, v1, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    iput-object v1, p0, Lcom/speedsoftware/a/i;->h:Ljava/lang/String;

    :cond_0
    iget v0, p0, Lcom/speedsoftware/a/i;->f:I

    add-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/speedsoftware/a/i;->g:I

    add-int/2addr v1, v0

    array-length v2, p2

    if-ge v1, v2, :cond_1

    iget v1, p0, Lcom/speedsoftware/a/i;->g:I

    new-array v1, v1, [B

    iget v2, p0, Lcom/speedsoftware/a/i;->g:I

    invoke-static {p2, v0, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/speedsoftware/a/i;->i:Ljava/lang/String;

    :cond_1
    return-void
.end method


# virtual methods
.method public final h()V
    .locals 0

    invoke-super {p0}, Lcom/speedsoftware/a/t;->h()V

    return-void
.end method
