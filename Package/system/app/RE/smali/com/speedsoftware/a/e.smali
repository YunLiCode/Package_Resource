.class public Lcom/speedsoftware/a/e;
.super Ljava/lang/Object;


# static fields
.field private static a:I

.field private static synthetic u:Z


# instance fields
.field private b:I

.field private c:[I

.field private d:[I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private final i:[Lcom/speedsoftware/a/o;

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:[B

.field private o:I

.field private p:I

.field private q:Lcom/speedsoftware/a/o;

.field private r:Lcom/speedsoftware/a/ak;

.field private s:Lcom/speedsoftware/a/ak;

.field private t:Lcom/speedsoftware/a/ak;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/speedsoftware/a/e;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/speedsoftware/a/e;->u:Z

    sget v0, Lcom/speedsoftware/a/m;->a:I

    const/16 v1, 0xc

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/speedsoftware/a/e;->a:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    const/16 v2, 0x26

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v2, [I

    iput-object v0, p0, Lcom/speedsoftware/a/e;->c:[I

    const/16 v0, 0x80

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/speedsoftware/a/e;->d:[I

    new-array v0, v2, [Lcom/speedsoftware/a/o;

    iput-object v0, p0, Lcom/speedsoftware/a/e;->i:[Lcom/speedsoftware/a/o;

    iput-object v1, p0, Lcom/speedsoftware/a/e;->q:Lcom/speedsoftware/a/o;

    iput-object v1, p0, Lcom/speedsoftware/a/e;->r:Lcom/speedsoftware/a/ak;

    iput-object v1, p0, Lcom/speedsoftware/a/e;->s:Lcom/speedsoftware/a/ak;

    iput-object v1, p0, Lcom/speedsoftware/a/e;->t:Lcom/speedsoftware/a/ak;

    const/4 v0, 0x0

    iput v0, p0, Lcom/speedsoftware/a/e;->b:I

    return-void
.end method

.method private b(I)I
    .locals 3

    iget-object v0, p0, Lcom/speedsoftware/a/e;->i:[Lcom/speedsoftware/a/o;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/speedsoftware/a/o;->a()I

    move-result v0

    iget-object v1, p0, Lcom/speedsoftware/a/e;->q:Lcom/speedsoftware/a/o;

    invoke-virtual {v1, v0}, Lcom/speedsoftware/a/o;->c(I)V

    iget-object v2, p0, Lcom/speedsoftware/a/e;->i:[Lcom/speedsoftware/a/o;

    aget-object v2, v2, p1

    invoke-virtual {v1}, Lcom/speedsoftware/a/o;->a()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/speedsoftware/a/o;->a(I)V

    return v0
.end method

.method private b(III)V
    .locals 5

    iget-object v0, p0, Lcom/speedsoftware/a/e;->c:[I

    aget v0, v0, p2

    iget-object v1, p0, Lcom/speedsoftware/a/e;->c:[I

    aget v1, v1, p3

    sub-int v1, v0, v1

    iget-object v0, p0, Lcom/speedsoftware/a/e;->c:[I

    aget v0, v0, p3

    sget v2, Lcom/speedsoftware/a/e;->a:I

    mul-int/2addr v0, v2

    add-int/2addr v0, p1

    iget-object v2, p0, Lcom/speedsoftware/a/e;->c:[I

    iget-object v3, p0, Lcom/speedsoftware/a/e;->d:[I

    add-int/lit8 v4, v1, -0x1

    aget v3, v3, v4

    aget v2, v2, v3

    if-eq v2, v1, :cond_0

    add-int/lit8 v2, v3, -0x1

    invoke-direct {p0, v0, v2}, Lcom/speedsoftware/a/e;->c(II)V

    iget-object v3, p0, Lcom/speedsoftware/a/e;->c:[I

    aget v2, v3, v2

    sget v3, Lcom/speedsoftware/a/e;->a:I

    mul-int/2addr v3, v2

    add-int/2addr v0, v3

    sub-int/2addr v1, v2

    :cond_0
    iget-object v2, p0, Lcom/speedsoftware/a/e;->d:[I

    add-int/lit8 v1, v1, -0x1

    aget v1, v2, v1

    invoke-direct {p0, v0, v1}, Lcom/speedsoftware/a/e;->c(II)V

    return-void
.end method

.method private c(I)I
    .locals 9

    const/16 v8, 0x80

    const/16 v7, 0x26

    const/4 v1, 0x0

    iget v0, p0, Lcom/speedsoftware/a/e;->e:I

    if-nez v0, :cond_9

    const/16 v0, 0xff

    iput v0, p0, Lcom/speedsoftware/a/e;->e:I

    iget-object v3, p0, Lcom/speedsoftware/a/e;->r:Lcom/speedsoftware/a/ak;

    iget v0, p0, Lcom/speedsoftware/a/e;->p:I

    invoke-virtual {v3, v0}, Lcom/speedsoftware/a/ak;->c(I)V

    iget-object v4, p0, Lcom/speedsoftware/a/e;->s:Lcom/speedsoftware/a/ak;

    iget-object v2, p0, Lcom/speedsoftware/a/e;->t:Lcom/speedsoftware/a/ak;

    iget v0, p0, Lcom/speedsoftware/a/e;->g:I

    iget v5, p0, Lcom/speedsoftware/a/e;->h:I

    if-eq v0, v5, :cond_0

    iget-object v0, p0, Lcom/speedsoftware/a/e;->n:[B

    iget v5, p0, Lcom/speedsoftware/a/e;->g:I

    aput-byte v1, v0, v5

    :cond_0
    invoke-virtual {v3, v3}, Lcom/speedsoftware/a/ak;->c(Lcom/speedsoftware/a/ak;)V

    invoke-virtual {v3, v3}, Lcom/speedsoftware/a/ak;->b(Lcom/speedsoftware/a/ak;)V

    move v0, v1

    :goto_0
    if-lt v0, v7, :cond_2

    invoke-virtual {v3}, Lcom/speedsoftware/a/ak;->b()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/speedsoftware/a/ak;->c(I)V

    :goto_1
    invoke-virtual {v4}, Lcom/speedsoftware/a/ak;->f()I

    move-result v0

    invoke-virtual {v3}, Lcom/speedsoftware/a/ak;->f()I

    move-result v5

    if-ne v0, v5, :cond_3

    invoke-virtual {v3}, Lcom/speedsoftware/a/ak;->b()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/speedsoftware/a/ak;->c(I)V

    :goto_2
    invoke-virtual {v4}, Lcom/speedsoftware/a/ak;->f()I

    move-result v0

    invoke-virtual {v3}, Lcom/speedsoftware/a/ak;->f()I

    move-result v2

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/speedsoftware/a/e;->i:[Lcom/speedsoftware/a/o;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/speedsoftware/a/o;->a()I

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0, p1}, Lcom/speedsoftware/a/e;->b(I)I

    move-result v0

    :goto_3
    return v0

    :cond_1
    invoke-direct {p0, v0}, Lcom/speedsoftware/a/e;->b(I)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/speedsoftware/a/ak;->c(I)V

    invoke-virtual {v4, v3}, Lcom/speedsoftware/a/ak;->a(Lcom/speedsoftware/a/ak;)V

    invoke-virtual {v4}, Lcom/speedsoftware/a/ak;->e()V

    iget-object v5, p0, Lcom/speedsoftware/a/e;->c:[I

    aget v5, v5, v0

    invoke-virtual {v4, v5}, Lcom/speedsoftware/a/ak;->a(I)V

    :cond_2
    iget-object v5, p0, Lcom/speedsoftware/a/e;->i:[Lcom/speedsoftware/a/o;

    aget-object v5, v5, v0

    invoke-virtual {v5}, Lcom/speedsoftware/a/o;->a()I

    move-result v5

    if-nez v5, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v4}, Lcom/speedsoftware/a/ak;->f()I

    move-result v0

    invoke-virtual {v4}, Lcom/speedsoftware/a/ak;->c()I

    move-result v5

    invoke-static {v0, v5}, Lcom/speedsoftware/a/e;->d(II)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/speedsoftware/a/ak;->c(I)V

    :goto_4
    invoke-virtual {v2}, Lcom/speedsoftware/a/ak;->d()I

    move-result v0

    const v5, 0xffff

    if-ne v0, v5, :cond_4

    invoke-virtual {v4}, Lcom/speedsoftware/a/ak;->c()I

    move-result v0

    invoke-virtual {v2}, Lcom/speedsoftware/a/ak;->c()I

    move-result v5

    add-int/2addr v0, v5

    const/high16 v5, 0x10000

    if-lt v0, v5, :cond_5

    :cond_4
    invoke-virtual {v4}, Lcom/speedsoftware/a/ak;->b()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/speedsoftware/a/ak;->c(I)V

    goto :goto_1

    :cond_5
    invoke-virtual {v2}, Lcom/speedsoftware/a/ak;->a()V

    invoke-virtual {v4}, Lcom/speedsoftware/a/ak;->c()I

    move-result v0

    invoke-virtual {v2}, Lcom/speedsoftware/a/ak;->c()I

    move-result v5

    add-int/2addr v0, v5

    invoke-virtual {v4, v0}, Lcom/speedsoftware/a/ak;->a(I)V

    invoke-virtual {v4}, Lcom/speedsoftware/a/ak;->f()I

    move-result v0

    invoke-virtual {v4}, Lcom/speedsoftware/a/ak;->c()I

    move-result v5

    invoke-static {v0, v5}, Lcom/speedsoftware/a/e;->d(II)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/speedsoftware/a/ak;->c(I)V

    goto :goto_4

    :cond_6
    invoke-virtual {v4}, Lcom/speedsoftware/a/ak;->a()V

    invoke-virtual {v4}, Lcom/speedsoftware/a/ak;->c()I

    move-result v0

    move v2, v0

    :goto_5
    if-gt v2, v8, :cond_8

    iget-object v5, p0, Lcom/speedsoftware/a/e;->c:[I

    iget-object v0, p0, Lcom/speedsoftware/a/e;->d:[I

    add-int/lit8 v6, v2, -0x1

    aget v0, v0, v6

    aget v5, v5, v0

    if-eq v5, v2, :cond_7

    iget-object v5, p0, Lcom/speedsoftware/a/e;->c:[I

    add-int/lit8 v0, v0, -0x1

    aget v5, v5, v0

    sub-int v5, v2, v5

    invoke-virtual {v4}, Lcom/speedsoftware/a/ak;->f()I

    move-result v6

    sub-int/2addr v2, v5

    invoke-static {v6, v2}, Lcom/speedsoftware/a/e;->d(II)I

    move-result v2

    add-int/lit8 v5, v5, -0x1

    invoke-direct {p0, v2, v5}, Lcom/speedsoftware/a/e;->c(II)V

    :cond_7
    invoke-virtual {v4}, Lcom/speedsoftware/a/ak;->f()I

    move-result v2

    invoke-direct {p0, v2, v0}, Lcom/speedsoftware/a/e;->c(II)V

    invoke-virtual {v3}, Lcom/speedsoftware/a/ak;->b()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/speedsoftware/a/ak;->c(I)V

    goto/16 :goto_2

    :cond_8
    invoke-virtual {v4}, Lcom/speedsoftware/a/ak;->f()I

    move-result v0

    const/16 v5, 0x25

    invoke-direct {p0, v0, v5}, Lcom/speedsoftware/a/e;->c(II)V

    add-int/lit8 v0, v2, -0x80

    invoke-virtual {v4}, Lcom/speedsoftware/a/ak;->f()I

    move-result v2

    invoke-static {v2, v8}, Lcom/speedsoftware/a/e;->d(II)I

    move-result v2

    invoke-virtual {v4, v2}, Lcom/speedsoftware/a/ak;->c(I)V

    move v2, v0

    goto :goto_5

    :cond_9
    move v0, p1

    :goto_6
    add-int/lit8 v2, v0, 0x1

    if-ne v2, v7, :cond_b

    iget v0, p0, Lcom/speedsoftware/a/e;->e:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/speedsoftware/a/e;->e:I

    iget-object v0, p0, Lcom/speedsoftware/a/e;->c:[I

    aget v0, v0, p1

    sget v2, Lcom/speedsoftware/a/e;->a:I

    mul-int/2addr v0, v2

    iget-object v2, p0, Lcom/speedsoftware/a/e;->c:[I

    aget v2, v2, p1

    mul-int/lit8 v2, v2, 0xc

    iget v3, p0, Lcom/speedsoftware/a/e;->m:I

    iget v4, p0, Lcom/speedsoftware/a/e;->j:I

    sub-int/2addr v3, v4

    if-le v3, v2, :cond_a

    iget v1, p0, Lcom/speedsoftware/a/e;->m:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/speedsoftware/a/e;->m:I

    iget v1, p0, Lcom/speedsoftware/a/e;->k:I

    sub-int v0, v1, v0

    iput v0, p0, Lcom/speedsoftware/a/e;->k:I

    iget v0, p0, Lcom/speedsoftware/a/e;->k:I

    goto/16 :goto_3

    :cond_a
    move v0, v1

    goto/16 :goto_3

    :cond_b
    iget-object v0, p0, Lcom/speedsoftware/a/e;->i:[Lcom/speedsoftware/a/o;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/speedsoftware/a/o;->a()I

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0, v2}, Lcom/speedsoftware/a/e;->b(I)I

    move-result v0

    invoke-direct {p0, v0, v2, p1}, Lcom/speedsoftware/a/e;->b(III)V

    goto/16 :goto_3

    :cond_c
    move v0, v2

    goto :goto_6
.end method

.method private c(II)V
    .locals 2

    iget-object v0, p0, Lcom/speedsoftware/a/e;->q:Lcom/speedsoftware/a/o;

    invoke-virtual {v0, p1}, Lcom/speedsoftware/a/o;->c(I)V

    iget-object v1, p0, Lcom/speedsoftware/a/e;->i:[Lcom/speedsoftware/a/o;

    aget-object v1, v1, p2

    invoke-virtual {v1}, Lcom/speedsoftware/a/o;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/speedsoftware/a/o;->a(I)V

    iget-object v1, p0, Lcom/speedsoftware/a/e;->i:[Lcom/speedsoftware/a/o;

    aget-object v1, v1, p2

    invoke-virtual {v0}, Lcom/speedsoftware/a/o;->f()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/speedsoftware/a/o;->a(I)V

    return-void
.end method

.method private static d(II)I
    .locals 1

    sget v0, Lcom/speedsoftware/a/e;->a:I

    mul-int/2addr v0, p1

    add-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method public final a(I)I
    .locals 5

    iget-object v0, p0, Lcom/speedsoftware/a/e;->d:[I

    add-int/lit8 v1, p1, -0x1

    aget v1, v0, v1

    iget-object v0, p0, Lcom/speedsoftware/a/e;->i:[Lcom/speedsoftware/a/o;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/speedsoftware/a/o;->a()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v1}, Lcom/speedsoftware/a/e;->b(I)I

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lcom/speedsoftware/a/e;->g:I

    iget v2, p0, Lcom/speedsoftware/a/e;->g:I

    iget-object v3, p0, Lcom/speedsoftware/a/e;->c:[I

    aget v3, v3, v1

    sget v4, Lcom/speedsoftware/a/e;->a:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    iput v2, p0, Lcom/speedsoftware/a/e;->g:I

    iget v2, p0, Lcom/speedsoftware/a/e;->g:I

    iget v3, p0, Lcom/speedsoftware/a/e;->h:I

    if-le v2, v3, :cond_0

    iget v0, p0, Lcom/speedsoftware/a/e;->g:I

    iget-object v2, p0, Lcom/speedsoftware/a/e;->c:[I

    aget v2, v2, v1

    sget v3, Lcom/speedsoftware/a/e;->a:I

    mul-int/2addr v2, v3

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/speedsoftware/a/e;->g:I

    invoke-direct {p0, v1}, Lcom/speedsoftware/a/e;->c(I)I

    move-result v0

    goto :goto_0
.end method

.method public final a(II)I
    .locals 5

    iget-object v0, p0, Lcom/speedsoftware/a/e;->d:[I

    add-int/lit8 v1, p2, -0x1

    aget v1, v0, v1

    iget-object v0, p0, Lcom/speedsoftware/a/e;->d:[I

    add-int/lit8 v2, p2, -0x1

    add-int/lit8 v2, v2, 0x1

    aget v0, v0, v2

    if-ne v1, v0, :cond_0

    :goto_0
    return p1

    :cond_0
    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p0, v0}, Lcom/speedsoftware/a/e;->a(I)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/speedsoftware/a/e;->n:[B

    iget-object v3, p0, Lcom/speedsoftware/a/e;->n:[B

    sget v4, Lcom/speedsoftware/a/e;->a:I

    mul-int/2addr v4, p2

    invoke-static {v2, p1, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, p1, v1}, Lcom/speedsoftware/a/e;->c(II)V

    :cond_1
    move p1, v0

    goto :goto_0
.end method

.method public final a(III)I
    .locals 5

    iget-object v0, p0, Lcom/speedsoftware/a/e;->d:[I

    add-int/lit8 v1, p2, -0x1

    aget v1, v0, v1

    iget-object v0, p0, Lcom/speedsoftware/a/e;->d:[I

    add-int/lit8 v2, p3, -0x1

    aget v0, v0, v2

    if-ne v1, v0, :cond_0

    :goto_0
    return p1

    :cond_0
    iget-object v2, p0, Lcom/speedsoftware/a/e;->i:[Lcom/speedsoftware/a/o;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/speedsoftware/a/o;->a()I

    move-result v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v0}, Lcom/speedsoftware/a/e;->b(I)I

    move-result v0

    iget-object v2, p0, Lcom/speedsoftware/a/e;->n:[B

    iget-object v3, p0, Lcom/speedsoftware/a/e;->n:[B

    sget v4, Lcom/speedsoftware/a/e;->a:I

    mul-int/2addr v4, p3

    invoke-static {v2, p1, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0, p1, v1}, Lcom/speedsoftware/a/e;->c(II)V

    move p1, v0

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, v1, v0}, Lcom/speedsoftware/a/e;->b(III)V

    goto :goto_0
.end method

.method public final a()V
    .locals 1

    iget v0, p0, Lcom/speedsoftware/a/e;->j:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/speedsoftware/a/e;->j:I

    return-void
.end method

.method public final b()V
    .locals 2

    const/4 v1, 0x0

    iget v0, p0, Lcom/speedsoftware/a/e;->b:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/speedsoftware/a/e;->b:I

    iput-object v1, p0, Lcom/speedsoftware/a/e;->n:[B

    const/4 v0, 0x1

    iput v0, p0, Lcom/speedsoftware/a/e;->f:I

    iput-object v1, p0, Lcom/speedsoftware/a/e;->q:Lcom/speedsoftware/a/o;

    iput-object v1, p0, Lcom/speedsoftware/a/e;->r:Lcom/speedsoftware/a/ak;

    iput-object v1, p0, Lcom/speedsoftware/a/e;->s:Lcom/speedsoftware/a/ak;

    iput-object v1, p0, Lcom/speedsoftware/a/e;->t:Lcom/speedsoftware/a/ak;

    :cond_0
    return-void
.end method

.method public final b(II)V
    .locals 2

    iget-object v0, p0, Lcom/speedsoftware/a/e;->d:[I

    add-int/lit8 v1, p2, -0x1

    aget v0, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/speedsoftware/a/e;->c(II)V

    return-void
.end method

.method public final c()I
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/speedsoftware/a/e;->h:I

    iget v1, p0, Lcom/speedsoftware/a/e;->g:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/speedsoftware/a/e;->h:I

    sget v1, Lcom/speedsoftware/a/e;->a:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/speedsoftware/a/e;->h:I

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/speedsoftware/a/e;->i:[Lcom/speedsoftware/a/o;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/speedsoftware/a/o;->a()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, v2}, Lcom/speedsoftware/a/e;->b(I)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-direct {p0, v2}, Lcom/speedsoftware/a/e;->c(I)I

    move-result v0

    goto :goto_0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/speedsoftware/a/e;->m:I

    return v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/speedsoftware/a/e;->l:I

    return v0
.end method

.method public final f()I
    .locals 1

    iget v0, p0, Lcom/speedsoftware/a/e;->j:I

    return v0
.end method

.method public final g()V
    .locals 1

    iget v0, p0, Lcom/speedsoftware/a/e;->j:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/speedsoftware/a/e;->j:I

    return-void
.end method

.method public final h()V
    .locals 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/speedsoftware/a/e;->n:[B

    iget v3, p0, Lcom/speedsoftware/a/e;->o:I

    iget v4, p0, Lcom/speedsoftware/a/e;->o:I

    iget-object v5, p0, Lcom/speedsoftware/a/e;->i:[Lcom/speedsoftware/a/o;

    array-length v5, v5

    mul-int/lit8 v5, v5, 0x4

    add-int/2addr v4, v5

    invoke-static {v0, v3, v4, v2}, Ljava/util/Arrays;->fill([BIIB)V

    iget v0, p0, Lcom/speedsoftware/a/e;->f:I

    iput v0, p0, Lcom/speedsoftware/a/e;->j:I

    iget v0, p0, Lcom/speedsoftware/a/e;->b:I

    div-int/lit8 v0, v0, 0x8

    div-int/lit8 v0, v0, 0xc

    mul-int/lit8 v0, v0, 0x7

    mul-int/lit8 v0, v0, 0xc

    div-int/lit8 v3, v0, 0xc

    sget v4, Lcom/speedsoftware/a/e;->a:I

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/speedsoftware/a/e;->b:I

    sub-int v0, v4, v0

    div-int/lit8 v4, v0, 0xc

    sget v5, Lcom/speedsoftware/a/e;->a:I

    mul-int/2addr v4, v5

    rem-int/lit8 v5, v0, 0xc

    add-int/2addr v4, v5

    iget v5, p0, Lcom/speedsoftware/a/e;->f:I

    iget v6, p0, Lcom/speedsoftware/a/e;->b:I

    add-int/2addr v5, v6

    iput v5, p0, Lcom/speedsoftware/a/e;->h:I

    iget v5, p0, Lcom/speedsoftware/a/e;->f:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/speedsoftware/a/e;->k:I

    iput v4, p0, Lcom/speedsoftware/a/e;->g:I

    iget v4, p0, Lcom/speedsoftware/a/e;->f:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/speedsoftware/a/e;->m:I

    iget v0, p0, Lcom/speedsoftware/a/e;->g:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/speedsoftware/a/e;->h:I

    move v0, v1

    move v3, v2

    :goto_0
    const/4 v4, 0x4

    if-lt v3, v4, :cond_0

    add-int/lit8 v0, v0, 0x1

    :goto_1
    const/16 v4, 0x8

    if-lt v3, v4, :cond_1

    add-int/lit8 v0, v0, 0x1

    :goto_2
    const/16 v4, 0xc

    if-lt v3, v4, :cond_2

    add-int/lit8 v0, v0, 0x1

    :goto_3
    const/16 v4, 0x26

    if-lt v3, v4, :cond_3

    iput v2, p0, Lcom/speedsoftware/a/e;->e:I

    move v3, v2

    move v4, v2

    :goto_4
    const/16 v0, 0x80

    if-lt v3, v0, :cond_4

    return-void

    :cond_0
    iget-object v4, p0, Lcom/speedsoftware/a/e;->c:[I

    and-int/lit16 v5, v0, 0xff

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/speedsoftware/a/e;->c:[I

    and-int/lit16 v5, v0, 0xff

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/speedsoftware/a/e;->c:[I

    and-int/lit16 v5, v0, 0xff

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v0, 0x3

    goto :goto_2

    :cond_3
    iget-object v4, p0, Lcom/speedsoftware/a/e;->c:[I

    and-int/lit16 v5, v0, 0xff

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v0, v0, 0x4

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/speedsoftware/a/e;->c:[I

    aget v0, v0, v4

    add-int/lit8 v5, v3, 0x1

    if-ge v0, v5, :cond_5

    move v0, v1

    :goto_5
    add-int/2addr v4, v0

    iget-object v0, p0, Lcom/speedsoftware/a/e;->d:[I

    and-int/lit16 v5, v4, 0xff

    aput v5, v0, v3

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_4

    :cond_5
    move v0, v2

    goto :goto_5
.end method

.method public final i()[B
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/a/e;->n:[B

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SubAllocator["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n  subAllocatorSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/speedsoftware/a/e;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  glueCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/speedsoftware/a/e;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  heapStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/speedsoftware/a/e;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  loUnit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/speedsoftware/a/e;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  hiUnit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/speedsoftware/a/e;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  pText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/speedsoftware/a/e;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  unitsStart="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/speedsoftware/a/e;->k:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
