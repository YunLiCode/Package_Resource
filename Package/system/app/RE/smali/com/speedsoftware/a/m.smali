.class public final Lcom/speedsoftware/a/m;
.super Lcom/speedsoftware/a/bn;


# static fields
.field public static final a:I

.field private static final d:I

.field private static i:[I


# instance fields
.field private e:I

.field private final f:Lcom/speedsoftware/a/bb;

.field private final g:Lcom/speedsoftware/a/ab;

.field private h:I

.field private final j:Lcom/speedsoftware/a/ab;

.field private final k:Lcom/speedsoftware/a/ab;

.field private final l:Lcom/speedsoftware/a/ab;

.field private final m:Lcom/speedsoftware/a/ab;

.field private final n:Lcom/speedsoftware/a/ab;

.field private o:Lcom/speedsoftware/a/m;

.field private final p:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    invoke-static {v0, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    sput v0, Lcom/speedsoftware/a/m;->d:I

    sget v0, Lcom/speedsoftware/a/m;->d:I

    add-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x4

    sput v0, Lcom/speedsoftware/a/m;->a:I

    const/16 v0, 0x10

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/speedsoftware/a/m;->i:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x19
        0xe
        0x9
        0x7
        0x5
        0x5
        0x4
        0x4
        0x4
        0x3
        0x3
        0x3
        0x2
        0x2
        0x2
        0x2
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/speedsoftware/a/bn;-><init>([B)V

    new-instance v0, Lcom/speedsoftware/a/ab;

    invoke-direct {v0, v1}, Lcom/speedsoftware/a/ab;-><init>([B)V

    iput-object v0, p0, Lcom/speedsoftware/a/m;->j:Lcom/speedsoftware/a/ab;

    new-instance v0, Lcom/speedsoftware/a/ab;

    invoke-direct {v0, v1}, Lcom/speedsoftware/a/ab;-><init>([B)V

    iput-object v0, p0, Lcom/speedsoftware/a/m;->k:Lcom/speedsoftware/a/ab;

    new-instance v0, Lcom/speedsoftware/a/ab;

    invoke-direct {v0, v1}, Lcom/speedsoftware/a/ab;-><init>([B)V

    iput-object v0, p0, Lcom/speedsoftware/a/m;->l:Lcom/speedsoftware/a/ab;

    new-instance v0, Lcom/speedsoftware/a/ab;

    invoke-direct {v0, v1}, Lcom/speedsoftware/a/ab;-><init>([B)V

    iput-object v0, p0, Lcom/speedsoftware/a/m;->m:Lcom/speedsoftware/a/ab;

    new-instance v0, Lcom/speedsoftware/a/ab;

    invoke-direct {v0, v1}, Lcom/speedsoftware/a/ab;-><init>([B)V

    iput-object v0, p0, Lcom/speedsoftware/a/m;->n:Lcom/speedsoftware/a/ab;

    iput-object v1, p0, Lcom/speedsoftware/a/m;->o:Lcom/speedsoftware/a/m;

    const/16 v0, 0x100

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/speedsoftware/a/m;->p:[I

    new-instance v0, Lcom/speedsoftware/a/ab;

    invoke-direct {v0, v1}, Lcom/speedsoftware/a/ab;-><init>([B)V

    iput-object v0, p0, Lcom/speedsoftware/a/m;->g:Lcom/speedsoftware/a/ab;

    new-instance v0, Lcom/speedsoftware/a/bb;

    invoke-direct {v0}, Lcom/speedsoftware/a/bb;-><init>()V

    iput-object v0, p0, Lcom/speedsoftware/a/m;->f:Lcom/speedsoftware/a/bb;

    return-void
.end method

.method private b([B)Lcom/speedsoftware/a/m;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/a/m;->o:Lcom/speedsoftware/a/m;

    if-nez v0, :cond_0

    new-instance v0, Lcom/speedsoftware/a/m;

    invoke-direct {v0}, Lcom/speedsoftware/a/m;-><init>()V

    iput-object v0, p0, Lcom/speedsoftware/a/m;->o:Lcom/speedsoftware/a/m;

    :cond_0
    iget-object v0, p0, Lcom/speedsoftware/a/m;->o:Lcom/speedsoftware/a/m;

    invoke-virtual {v0, p1}, Lcom/speedsoftware/a/m;->a([B)Lcom/speedsoftware/a/m;

    move-result-object v0

    return-object v0
.end method

.method private d(Lcom/speedsoftware/a/ax;)V
    .locals 13

    const/4 v8, 0x4

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/speedsoftware/a/m;->b()I

    move-result v4

    invoke-virtual {p0}, Lcom/speedsoftware/a/m;->b()I

    move-result v0

    add-int/lit8 v3, v0, -0x1

    new-instance v5, Lcom/speedsoftware/a/ab;

    invoke-virtual {p1}, Lcom/speedsoftware/a/ax;->s()[B

    move-result-object v0

    invoke-direct {v5, v0}, Lcom/speedsoftware/a/ab;-><init>([B)V

    new-instance v6, Lcom/speedsoftware/a/ab;

    invoke-virtual {p1}, Lcom/speedsoftware/a/ax;->s()[B

    move-result-object v0

    invoke-direct {v6, v0}, Lcom/speedsoftware/a/ab;-><init>([B)V

    new-instance v7, Lcom/speedsoftware/a/ab;

    invoke-virtual {p1}, Lcom/speedsoftware/a/ax;->s()[B

    move-result-object v0

    invoke-direct {v7, v0}, Lcom/speedsoftware/a/ab;-><init>([B)V

    invoke-virtual {p1}, Lcom/speedsoftware/a/ax;->r()Lcom/speedsoftware/a/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/speedsoftware/a/ab;->f()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/speedsoftware/a/ab;->c(I)V

    :goto_0
    invoke-virtual {v6}, Lcom/speedsoftware/a/ab;->f()I

    move-result v0

    iget-object v2, p0, Lcom/speedsoftware/a/m;->f:Lcom/speedsoftware/a/bb;

    invoke-virtual {v2}, Lcom/speedsoftware/a/bb;->b()I

    move-result v2

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/speedsoftware/a/m;->f:Lcom/speedsoftware/a/bb;

    invoke-virtual {v0}, Lcom/speedsoftware/a/bb;->b()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/speedsoftware/a/ab;->c(I)V

    invoke-virtual {v7, v8}, Lcom/speedsoftware/a/ab;->d(I)V

    iget-object v0, p0, Lcom/speedsoftware/a/m;->f:Lcom/speedsoftware/a/bb;

    invoke-virtual {v0, v8}, Lcom/speedsoftware/a/bb;->b(I)V

    iget-object v0, p0, Lcom/speedsoftware/a/m;->f:Lcom/speedsoftware/a/bb;

    invoke-virtual {v0}, Lcom/speedsoftware/a/bb;->a()I

    move-result v0

    invoke-virtual {v6}, Lcom/speedsoftware/a/ab;->b()I

    move-result v2

    sub-int v2, v0, v2

    invoke-virtual {p1}, Lcom/speedsoftware/a/ax;->t()I

    move-result v0

    if-eqz v0, :cond_7

    move v0, v1

    :goto_1
    invoke-virtual {v6}, Lcom/speedsoftware/a/ab;->b()I

    move-result v8

    add-int/2addr v8, v0

    ushr-int/lit8 v8, v8, 0x1

    invoke-virtual {v6, v8}, Lcom/speedsoftware/a/ab;->b(I)V

    iget-object v8, p0, Lcom/speedsoftware/a/m;->f:Lcom/speedsoftware/a/bb;

    invoke-virtual {v6}, Lcom/speedsoftware/a/ab;->b()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/speedsoftware/a/bb;->a(I)V

    :cond_0
    invoke-virtual {v6}, Lcom/speedsoftware/a/ab;->e()Lcom/speedsoftware/a/ab;

    invoke-virtual {v6}, Lcom/speedsoftware/a/ab;->b()I

    move-result v8

    sub-int/2addr v2, v8

    invoke-virtual {v6}, Lcom/speedsoftware/a/ab;->b()I

    move-result v8

    add-int/2addr v8, v0

    ushr-int/lit8 v8, v8, 0x1

    invoke-virtual {v6, v8}, Lcom/speedsoftware/a/ab;->b(I)V

    iget-object v8, p0, Lcom/speedsoftware/a/m;->f:Lcom/speedsoftware/a/bb;

    invoke-virtual {v6}, Lcom/speedsoftware/a/ab;->b()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/speedsoftware/a/bb;->b(I)V

    invoke-virtual {v6}, Lcom/speedsoftware/a/ab;->f()I

    move-result v8

    add-int/lit8 v8, v8, -0x6

    invoke-virtual {v7, v8}, Lcom/speedsoftware/a/ab;->c(I)V

    invoke-virtual {v6}, Lcom/speedsoftware/a/ab;->b()I

    move-result v8

    invoke-virtual {v7}, Lcom/speedsoftware/a/ab;->b()I

    move-result v9

    if-le v8, v9, :cond_3

    invoke-virtual {v6}, Lcom/speedsoftware/a/ab;->f()I

    move-result v8

    invoke-virtual {v5, v8}, Lcom/speedsoftware/a/ab;->c(I)V

    new-instance v8, Lcom/speedsoftware/a/ai;

    invoke-direct {v8}, Lcom/speedsoftware/a/ai;-><init>()V

    invoke-virtual {v8, v5}, Lcom/speedsoftware/a/ai;->a(Lcom/speedsoftware/a/ab;)V

    new-instance v9, Lcom/speedsoftware/a/ab;

    invoke-virtual {p1}, Lcom/speedsoftware/a/ax;->s()[B

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/speedsoftware/a/ab;-><init>([B)V

    new-instance v10, Lcom/speedsoftware/a/ab;

    invoke-virtual {p1}, Lcom/speedsoftware/a/ax;->s()[B

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/speedsoftware/a/ab;-><init>([B)V

    :cond_1
    invoke-virtual {v5}, Lcom/speedsoftware/a/ab;->f()I

    move-result v11

    add-int/lit8 v11, v11, -0x6

    invoke-virtual {v9, v11}, Lcom/speedsoftware/a/ab;->c(I)V

    invoke-virtual {v5, v9}, Lcom/speedsoftware/a/ab;->a(Lcom/speedsoftware/a/ab;)V

    invoke-virtual {v5}, Lcom/speedsoftware/a/ab;->d()Lcom/speedsoftware/a/ab;

    invoke-virtual {v5}, Lcom/speedsoftware/a/ab;->f()I

    move-result v11

    add-int/lit8 v11, v11, -0x6

    invoke-virtual {v10, v11}, Lcom/speedsoftware/a/ab;->c(I)V

    invoke-virtual {v5}, Lcom/speedsoftware/a/ab;->f()I

    move-result v11

    iget-object v12, p0, Lcom/speedsoftware/a/m;->f:Lcom/speedsoftware/a/bb;

    invoke-virtual {v12}, Lcom/speedsoftware/a/bb;->b()I

    move-result v12

    if-eq v11, v12, :cond_2

    invoke-virtual {v8}, Lcom/speedsoftware/a/ai;->b()I

    move-result v11

    invoke-virtual {v10}, Lcom/speedsoftware/a/ab;->b()I

    move-result v12

    if-gt v11, v12, :cond_1

    :cond_2
    invoke-virtual {v5, v8}, Lcom/speedsoftware/a/ab;->a(Lcom/speedsoftware/a/ai;)V

    :cond_3
    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_0

    invoke-virtual {v6}, Lcom/speedsoftware/a/ab;->b()I

    move-result v0

    if-nez v0, :cond_8

    :cond_4
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v6}, Lcom/speedsoftware/a/ab;->d()Lcom/speedsoftware/a/ab;

    invoke-virtual {v6}, Lcom/speedsoftware/a/ab;->b()I

    move-result v0

    if-eqz v0, :cond_4

    add-int v0, v2, v3

    invoke-virtual {p0}, Lcom/speedsoftware/a/m;->b()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/speedsoftware/a/m;->a(I)V

    invoke-virtual {p0}, Lcom/speedsoftware/a/m;->b()I

    move-result v2

    if-ne v2, v1, :cond_9

    new-instance v2, Lcom/speedsoftware/a/ai;

    invoke-direct {v2}, Lcom/speedsoftware/a/ai;-><init>()V

    iget-object v3, p0, Lcom/speedsoftware/a/m;->f:Lcom/speedsoftware/a/bb;

    invoke-virtual {v3}, Lcom/speedsoftware/a/bb;->b()I

    move-result v3

    invoke-virtual {v7, v3}, Lcom/speedsoftware/a/ab;->c(I)V

    invoke-virtual {v2, v7}, Lcom/speedsoftware/a/ai;->a(Lcom/speedsoftware/a/ab;)V

    :cond_5
    invoke-virtual {v2}, Lcom/speedsoftware/a/ai;->b()I

    move-result v3

    ushr-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Lcom/speedsoftware/a/ai;->c(I)V

    ushr-int/lit8 v0, v0, 0x1

    if-gt v0, v1, :cond_5

    invoke-virtual {p1}, Lcom/speedsoftware/a/ax;->a()Lcom/speedsoftware/a/e;

    move-result-object v0

    iget-object v1, p0, Lcom/speedsoftware/a/m;->f:Lcom/speedsoftware/a/bb;

    invoke-virtual {v1}, Lcom/speedsoftware/a/bb;->b()I

    move-result v1

    add-int/lit8 v3, v4, 0x1

    ushr-int/lit8 v3, v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/speedsoftware/a/e;->b(II)V

    iget-object v0, p0, Lcom/speedsoftware/a/m;->g:Lcom/speedsoftware/a/ab;

    invoke-virtual {v0, v2}, Lcom/speedsoftware/a/ab;->a(Lcom/speedsoftware/a/ai;)V

    invoke-virtual {p1}, Lcom/speedsoftware/a/ax;->r()Lcom/speedsoftware/a/ab;

    move-result-object v0

    iget-object v1, p0, Lcom/speedsoftware/a/m;->g:Lcom/speedsoftware/a/ab;

    invoke-virtual {v1}, Lcom/speedsoftware/a/ab;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/speedsoftware/a/ab;->c(I)V

    :goto_2
    return-void

    :cond_6
    invoke-virtual {v6}, Lcom/speedsoftware/a/ab;->f()I

    move-result v0

    add-int/lit8 v0, v0, -0x6

    invoke-virtual {v7, v0}, Lcom/speedsoftware/a/ab;->c(I)V

    invoke-static {v6, v7}, Lcom/speedsoftware/a/ab;->a(Lcom/speedsoftware/a/ab;Lcom/speedsoftware/a/ab;)V

    invoke-virtual {v6}, Lcom/speedsoftware/a/ab;->d()Lcom/speedsoftware/a/ab;

    goto/16 :goto_0

    :cond_7
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_8
    move v0, v2

    :cond_9
    ushr-int/lit8 v1, v0, 0x1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/speedsoftware/a/m;->f:Lcom/speedsoftware/a/bb;

    invoke-virtual {v1, v0}, Lcom/speedsoftware/a/bb;->b(I)V

    add-int/lit8 v0, v4, 0x1

    ushr-int/lit8 v0, v0, 0x1

    invoke-virtual {p0}, Lcom/speedsoftware/a/m;->b()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    ushr-int/lit8 v1, v1, 0x1

    if-eq v0, v1, :cond_a

    iget-object v2, p0, Lcom/speedsoftware/a/m;->f:Lcom/speedsoftware/a/bb;

    invoke-virtual {p1}, Lcom/speedsoftware/a/ax;->a()Lcom/speedsoftware/a/e;

    move-result-object v3

    iget-object v4, p0, Lcom/speedsoftware/a/m;->f:Lcom/speedsoftware/a/bb;

    invoke-virtual {v4}, Lcom/speedsoftware/a/bb;->b()I

    move-result v4

    invoke-virtual {v3, v4, v0, v1}, Lcom/speedsoftware/a/e;->a(III)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/speedsoftware/a/bb;->d(I)V

    :cond_a
    invoke-virtual {p1}, Lcom/speedsoftware/a/ax;->r()Lcom/speedsoftware/a/ab;

    move-result-object v0

    iget-object v1, p0, Lcom/speedsoftware/a/m;->f:Lcom/speedsoftware/a/bb;

    invoke-virtual {v1}, Lcom/speedsoftware/a/bb;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/speedsoftware/a/ab;->c(I)V

    goto :goto_2
.end method


# virtual methods
.method public final a(Lcom/speedsoftware/a/ax;Lcom/speedsoftware/a/ab;Lcom/speedsoftware/a/ai;)I
    .locals 2

    invoke-virtual {p1}, Lcom/speedsoftware/a/ax;->a()Lcom/speedsoftware/a/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/speedsoftware/a/e;->i()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/speedsoftware/a/m;->b([B)Lcom/speedsoftware/a/m;

    move-result-object v0

    invoke-virtual {p1}, Lcom/speedsoftware/a/ax;->a()Lcom/speedsoftware/a/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/speedsoftware/a/e;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/speedsoftware/a/m;->c(I)V

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/speedsoftware/a/m;->a(I)V

    iget-object v1, v0, Lcom/speedsoftware/a/m;->g:Lcom/speedsoftware/a/ab;

    invoke-virtual {v1, p3}, Lcom/speedsoftware/a/ab;->a(Lcom/speedsoftware/a/ai;)V

    invoke-virtual {p0}, Lcom/speedsoftware/a/m;->f()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/speedsoftware/a/m;->b(I)V

    invoke-virtual {p2, v0}, Lcom/speedsoftware/a/ab;->a(Lcom/speedsoftware/a/m;)V

    :cond_0
    invoke-virtual {v0}, Lcom/speedsoftware/a/m;->f()I

    move-result v0

    return v0
.end method

.method public final a()Lcom/speedsoftware/a/bb;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/a/m;->f:Lcom/speedsoftware/a/bb;

    return-object v0
.end method

.method public final a([B)Lcom/speedsoftware/a/m;
    .locals 1

    iput-object p1, p0, Lcom/speedsoftware/a/m;->b:[B

    const/4 v0, 0x0

    iput v0, p0, Lcom/speedsoftware/a/m;->c:I

    iget-object v0, p0, Lcom/speedsoftware/a/m;->g:Lcom/speedsoftware/a/ab;

    invoke-virtual {v0, p1}, Lcom/speedsoftware/a/ab;->a([B)Lcom/speedsoftware/a/ab;

    iget-object v0, p0, Lcom/speedsoftware/a/m;->f:Lcom/speedsoftware/a/bb;

    invoke-virtual {v0, p1}, Lcom/speedsoftware/a/bb;->a([B)Lcom/speedsoftware/a/bb;

    return-object p0
.end method

.method public final a(I)V
    .locals 3

    const v0, 0xffff

    and-int/2addr v0, p1

    iput v0, p0, Lcom/speedsoftware/a/m;->e:I

    iget-object v0, p0, Lcom/speedsoftware/a/m;->b:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/speedsoftware/a/m;->b:[B

    iget v1, p0, Lcom/speedsoftware/a/m;->c:I

    int-to-short v2, p1

    invoke-static {v0, v1, v2}, Lcom/speedsoftware/a/ac;->a([BIS)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/speedsoftware/a/ax;)V
    .locals 11

    const v10, 0xffff

    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/speedsoftware/a/m;->j:Lcom/speedsoftware/a/ab;

    invoke-virtual {p1}, Lcom/speedsoftware/a/ax;->s()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/speedsoftware/a/ab;->a([B)Lcom/speedsoftware/a/ab;

    move-result-object v2

    iget-object v3, p0, Lcom/speedsoftware/a/m;->g:Lcom/speedsoftware/a/ab;

    invoke-virtual {v3}, Lcom/speedsoftware/a/ab;->f()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/speedsoftware/a/ab;->c(I)V

    invoke-virtual {p1}, Lcom/speedsoftware/a/ax;->o()[I

    move-result-object v3

    invoke-virtual {p1}, Lcom/speedsoftware/a/ax;->r()Lcom/speedsoftware/a/ab;

    move-result-object v4

    invoke-virtual {v4}, Lcom/speedsoftware/a/ab;->a()I

    move-result v4

    aget v3, v3, v4

    invoke-virtual {p1, v3}, Lcom/speedsoftware/a/ax;->f(I)V

    invoke-virtual {v2}, Lcom/speedsoftware/a/ab;->b()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1}, Lcom/speedsoftware/a/ax;->a()Lcom/speedsoftware/a/e;

    move-result-object v4

    invoke-virtual {v4}, Lcom/speedsoftware/a/e;->i()[B

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/speedsoftware/a/m;->b([B)Lcom/speedsoftware/a/m;

    move-result-object v4

    invoke-virtual {p0}, Lcom/speedsoftware/a/m;->d()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/speedsoftware/a/m;->c(I)V

    invoke-virtual {p1}, Lcom/speedsoftware/a/ax;->k()I

    move-result v5

    add-int/lit8 v5, v5, 0x0

    invoke-virtual {p1}, Lcom/speedsoftware/a/ax;->p()[I

    move-result-object v6

    invoke-virtual {v4}, Lcom/speedsoftware/a/m;->b()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    aget v4, v6, v4

    add-int/2addr v4, v5

    invoke-virtual {p1}, Lcom/speedsoftware/a/ax;->l()I

    move-result v5

    invoke-virtual {p1}, Lcom/speedsoftware/a/ax;->o()[I

    move-result-object v6

    invoke-virtual {v2}, Lcom/speedsoftware/a/ab;->a()I

    move-result v7

    aget v6, v6, v7

    mul-int/lit8 v6, v6, 0x2

    add-int/2addr v5, v6

    add-int/2addr v4, v5

    invoke-virtual {p1}, Lcom/speedsoftware/a/ax;->j()I

    move-result v5

    ushr-int/lit8 v5, v5, 0x1a

    and-int/lit8 v5, v5, 0x20

    add-int/2addr v4, v5

    invoke-virtual {p1}, Lcom/speedsoftware/a/ax;->m()[[I

    move-result-object v5

    aget-object v5, v5, v3

    aget v5, v5, v4

    invoke-virtual {p1}, Lcom/speedsoftware/a/ax;->n()Lcom/speedsoftware/a/ap;

    move-result-object v6

    invoke-virtual {v6}, Lcom/speedsoftware/a/ap;->c()J

    move-result-wide v6

    int-to-long v8, v5

    cmp-long v6, v6, v8

    if-gez v6, :cond_1

    invoke-virtual {p1}, Lcom/speedsoftware/a/ax;->r()Lcom/speedsoftware/a/ab;

    move-result-object v6

    invoke-virtual {v2}, Lcom/speedsoftware/a/ab;->f()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/speedsoftware/a/ab;->c(I)V

    invoke-virtual {v2}, Lcom/speedsoftware/a/ab;->b()I

    move-result v6

    const/16 v7, 0x80

    if-ge v6, v7, :cond_0

    move v0, v1

    :cond_0
    invoke-virtual {v2, v0}, Lcom/speedsoftware/a/ab;->d(I)V

    invoke-virtual {p1}, Lcom/speedsoftware/a/ax;->n()Lcom/speedsoftware/a/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/speedsoftware/a/ap;->a()Lcom/speedsoftware/a/ah;

    move-result-object v0

    const-wide/16 v6, 0x0

    invoke-virtual {v0, v6, v7}, Lcom/speedsoftware/a/ah;->b(J)V

    invoke-virtual {p1}, Lcom/speedsoftware/a/ax;->n()Lcom/speedsoftware/a/ap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/speedsoftware/a/ap;->a()Lcom/speedsoftware/a/ah;

    move-result-object v0

    int-to-long v6, v5

    invoke-virtual {v0, v6, v7}, Lcom/speedsoftware/a/ah;->a(J)V

    add-int/lit16 v0, v5, 0x80

    add-int/lit8 v2, v5, 0x20

    ushr-int/lit8 v2, v2, 0x7

    sub-int/2addr v0, v2

    and-int/2addr v0, v10

    invoke-virtual {p1}, Lcom/speedsoftware/a/ax;->m()[[I

    move-result-object v2

    aget-object v2, v2, v3

    aput v0, v2, v4

    invoke-virtual {p1, v1}, Lcom/speedsoftware/a/ax;->b(I)V

    invoke-virtual {p1, v1}, Lcom/speedsoftware/a/ax;->e(I)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/speedsoftware/a/ax;->n()Lcom/speedsoftware/a/ap;

    move-result-object v6

    invoke-virtual {v6}, Lcom/speedsoftware/a/ap;->a()Lcom/speedsoftware/a/ah;

    move-result-object v6

    int-to-long v7, v5

    invoke-virtual {v6, v7, v8}, Lcom/speedsoftware/a/ah;->b(J)V

    add-int/lit8 v6, v5, 0x20

    ushr-int/lit8 v6, v6, 0x7

    sub-int/2addr v5, v6

    and-int/2addr v5, v10

    invoke-virtual {p1}, Lcom/speedsoftware/a/ax;->m()[[I

    move-result-object v6

    aget-object v3, v6, v3

    aput v5, v3, v4

    invoke-virtual {p1}, Lcom/speedsoftware/a/ax;->n()Lcom/speedsoftware/a/ap;

    move-result-object v3

    invoke-virtual {v3}, Lcom/speedsoftware/a/ap;->a()Lcom/speedsoftware/a/ah;

    move-result-object v3

    const-wide/16 v6, 0x4000

    invoke-virtual {v3, v6, v7}, Lcom/speedsoftware/a/ah;->a(J)V

    sget-object v3, Lcom/speedsoftware/a/m;->i:[I

    ushr-int/lit8 v4, v5, 0xa

    aget v3, v3, v4

    invoke-virtual {p1, v3}, Lcom/speedsoftware/a/ax;->c(I)V

    invoke-virtual {p1, v1}, Lcom/speedsoftware/a/ax;->a(I)V

    invoke-virtual {p1}, Lcom/speedsoftware/a/ax;->h()[I

    move-result-object v1

    invoke-virtual {v2}, Lcom/speedsoftware/a/ab;->a()I

    move-result v2

    invoke-virtual {p1}, Lcom/speedsoftware/a/ax;->f()I

    move-result v3

    aput v3, v1, v2

    invoke-virtual {p1, v0}, Lcom/speedsoftware/a/ax;->b(I)V

    invoke-virtual {p1}, Lcom/speedsoftware/a/ax;->r()Lcom/speedsoftware/a/ab;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/speedsoftware/a/ab;->c(I)V

    goto :goto_0
.end method

.method public final b()I
    .locals 2

    iget-object v0, p0, Lcom/speedsoftware/a/m;->b:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/speedsoftware/a/m;->b:[B

    iget v1, p0, Lcom/speedsoftware/a/m;->c:I

    invoke-static {v0, v1}, Lcom/speedsoftware/a/ac;->a([BI)S

    move-result v0

    const v1, 0xffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/speedsoftware/a/m;->e:I

    :cond_0
    iget v0, p0, Lcom/speedsoftware/a/m;->e:I

    return v0
.end method

.method public final b(I)V
    .locals 2

    iput p1, p0, Lcom/speedsoftware/a/m;->h:I

    iget-object v0, p0, Lcom/speedsoftware/a/m;->b:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/speedsoftware/a/m;->b:[B

    iget v1, p0, Lcom/speedsoftware/a/m;->c:I

    add-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1, p1}, Lcom/speedsoftware/a/ac;->a([BII)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/speedsoftware/a/ax;)Z
    .locals 12

    invoke-virtual {p0}, Lcom/speedsoftware/a/m;->b()I

    move-result v0

    invoke-virtual {p1}, Lcom/speedsoftware/a/ax;->i()I

    move-result v1

    sub-int v3, v0, v1

    invoke-virtual {p0}, Lcom/speedsoftware/a/m;->b()I

    move-result v1

    const/16 v0, 0x100

    if-eq v1, v0, :cond_4

    invoke-virtual {p1}, Lcom/speedsoftware/a/ax;->s()[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/speedsoftware/a/m;->b([B)Lcom/speedsoftware/a/m;

    move-result-object v0

    invoke-virtual {p0}, Lcom/speedsoftware/a/m;->d()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/speedsoftware/a/m;->c(I)V

    invoke-virtual {p1}, Lcom/speedsoftware/a/ax;->q()[I

    move-result-object v2

    add-int/lit8 v4, v3, -0x1

    aget v2, v2, v4

    invoke-virtual {v0}, Lcom/speedsoftware/a/m;->b()I

    move-result v0

    sub-int/2addr v0, v1

    if-ge v3, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    add-int/lit8 v4, v0, 0x0

    iget-object v0, p0, Lcom/speedsoftware/a/m;->f:Lcom/speedsoftware/a/bb;

    invoke-virtual {v0}, Lcom/speedsoftware/a/bb;->a()I

    move-result v0

    mul-int/lit8 v1, v1, 0xb

    if-ge v0, v1, :cond_2

    const/4 v0, 0x1

    :goto_1
    mul-int/lit8 v0, v0, 0x2

    add-int v1, v4, v0

    invoke-virtual {p1}, Lcom/speedsoftware/a/ax;->i()I

    move-result v0

    if-le v0, v3, :cond_3

    const/4 v0, 0x1

    :goto_2
    mul-int/lit8 v0, v0, 0x4

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/speedsoftware/a/ax;->l()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p1}, Lcom/speedsoftware/a/ax;->c()[[Lcom/speedsoftware/a/ao;

    move-result-object v1

    aget-object v1, v1, v2

    aget-object v0, v1, v0

    invoke-virtual {p1}, Lcom/speedsoftware/a/ax;->n()Lcom/speedsoftware/a/ap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/speedsoftware/a/ap;->a()Lcom/speedsoftware/a/ah;

    move-result-object v1

    invoke-virtual {v0}, Lcom/speedsoftware/a/ao;->a()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v1, v4, v5}, Lcom/speedsoftware/a/ah;->c(J)V

    :goto_3
    invoke-virtual {p1}, Lcom/speedsoftware/a/ax;->n()Lcom/speedsoftware/a/ap;

    move-result-object v5

    iget-object v1, p0, Lcom/speedsoftware/a/m;->j:Lcom/speedsoftware/a/ab;

    invoke-virtual {p1}, Lcom/speedsoftware/a/ax;->s()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/speedsoftware/a/ab;->a([B)Lcom/speedsoftware/a/ab;

    move-result-object v6

    iget-object v1, p0, Lcom/speedsoftware/a/m;->k:Lcom/speedsoftware/a/ab;

    invoke-virtual {p1}, Lcom/speedsoftware/a/ax;->s()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/speedsoftware/a/ab;->a([B)Lcom/speedsoftware/a/ab;

    move-result-object v7

    iget-object v1, p0, Lcom/speedsoftware/a/m;->f:Lcom/speedsoftware/a/bb;

    invoke-virtual {v1}, Lcom/speedsoftware/a/bb;->b()I

    move-result v1

    add-int/lit8 v1, v1, -0x6

    invoke-virtual {v6, v1}, Lcom/speedsoftware/a/ab;->c(I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    move v4, v3

    :cond_0
    :goto_4
    invoke-virtual {v6}, Lcom/speedsoftware/a/ab;->e()Lcom/speedsoftware/a/ab;

    invoke-virtual {p1}, Lcom/speedsoftware/a/ax;->h()[I

    move-result-object v3

    invoke-virtual {v6}, Lcom/speedsoftware/a/ab;->a()I

    move-result v8

    aget v3, v3, v8

    invoke-virtual {p1}, Lcom/speedsoftware/a/ax;->f()I

    move-result v8

    if-eq v3, v8, :cond_0

    invoke-virtual {v6}, Lcom/speedsoftware/a/ab;->b()I

    move-result v3

    add-int/2addr v3, v2

    iget-object v8, p0, Lcom/speedsoftware/a/m;->p:[I

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v6}, Lcom/speedsoftware/a/ab;->f()I

    move-result v9

    aput v9, v8, v1

    add-int/lit8 v1, v4, -0x1

    if-nez v1, :cond_a

    invoke-virtual {v5}, Lcom/speedsoftware/a/ap;->a()Lcom/speedsoftware/a/ah;

    move-result-object v1

    invoke-virtual {v1}, Lcom/speedsoftware/a/ah;->c()J

    move-result-wide v8

    int-to-long v10, v3

    add-long/2addr v8, v10

    invoke-virtual {v1, v8, v9}, Lcom/speedsoftware/a/ah;->c(J)V

    invoke-virtual {v5}, Lcom/speedsoftware/a/ap;->b()I

    move-result v1

    int-to-long v8, v1

    invoke-virtual {v5}, Lcom/speedsoftware/a/ap;->a()Lcom/speedsoftware/a/ah;

    move-result-object v1

    invoke-virtual {v1}, Lcom/speedsoftware/a/ah;->c()J

    move-result-wide v1

    cmp-long v1, v8, v1

    if-ltz v1, :cond_5

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_1
    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_2
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_4
    invoke-virtual {p1}, Lcom/speedsoftware/a/ax;->d()Lcom/speedsoftware/a/ao;

    move-result-object v0

    invoke-virtual {p1}, Lcom/speedsoftware/a/ax;->n()Lcom/speedsoftware/a/ap;

    move-result-object v1

    invoke-virtual {v1}, Lcom/speedsoftware/a/ap;->a()Lcom/speedsoftware/a/ah;

    move-result-object v1

    const-wide/16 v4, 0x1

    invoke-virtual {v1, v4, v5}, Lcom/speedsoftware/a/ah;->c(J)V

    goto/16 :goto_3

    :cond_5
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/speedsoftware/a/m;->p:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    invoke-virtual {v6, v2}, Lcom/speedsoftware/a/ab;->c(I)V

    int-to-long v10, v3

    cmp-long v2, v8, v10

    if-gez v2, :cond_8

    const/4 v2, 0x0

    :goto_6
    invoke-virtual {v6}, Lcom/speedsoftware/a/ab;->b()I

    move-result v3

    add-int/2addr v2, v3

    int-to-long v3, v2

    cmp-long v3, v3, v8

    if-lez v3, :cond_7

    invoke-virtual {v5}, Lcom/speedsoftware/a/ap;->a()Lcom/speedsoftware/a/ah;

    move-result-object v1

    int-to-long v3, v2

    invoke-virtual {v1, v3, v4}, Lcom/speedsoftware/a/ah;->a(J)V

    invoke-virtual {v5}, Lcom/speedsoftware/a/ap;->a()Lcom/speedsoftware/a/ah;

    move-result-object v1

    invoke-virtual {v6}, Lcom/speedsoftware/a/ab;->b()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/speedsoftware/a/ah;->b(J)V

    invoke-virtual {v0}, Lcom/speedsoftware/a/ao;->b()V

    invoke-virtual {v6}, Lcom/speedsoftware/a/ab;->f()I

    move-result v0

    iget-object v1, p0, Lcom/speedsoftware/a/m;->n:Lcom/speedsoftware/a/ab;

    invoke-virtual {p1}, Lcom/speedsoftware/a/ax;->s()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/speedsoftware/a/ab;->a([B)Lcom/speedsoftware/a/ab;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/speedsoftware/a/ab;->c(I)V

    invoke-virtual {p1}, Lcom/speedsoftware/a/ax;->r()Lcom/speedsoftware/a/ab;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/speedsoftware/a/ab;->c(I)V

    invoke-virtual {p1}, Lcom/speedsoftware/a/ax;->r()Lcom/speedsoftware/a/ab;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/speedsoftware/a/ab;->d(I)V

    iget-object v0, p0, Lcom/speedsoftware/a/m;->f:Lcom/speedsoftware/a/bb;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/speedsoftware/a/bb;->b(I)V

    invoke-virtual {v1}, Lcom/speedsoftware/a/ab;->b()I

    move-result v0

    const/16 v1, 0x7c

    if-le v0, v1, :cond_6

    invoke-direct {p0, p1}, Lcom/speedsoftware/a/m;->d(Lcom/speedsoftware/a/ax;)V

    :cond_6
    invoke-virtual {p1}, Lcom/speedsoftware/a/ax;->g()V

    invoke-virtual {p1}, Lcom/speedsoftware/a/ax;->e()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/speedsoftware/a/ax;->d(I)V

    :goto_7
    const/4 v0, 0x1

    goto/16 :goto_5

    :cond_7
    iget-object v3, p0, Lcom/speedsoftware/a/m;->p:[I

    add-int/lit8 v1, v1, 0x1

    aget v3, v3, v1

    invoke-virtual {v6, v3}, Lcom/speedsoftware/a/ab;->c(I)V

    goto :goto_6

    :cond_8
    invoke-virtual {v5}, Lcom/speedsoftware/a/ap;->a()Lcom/speedsoftware/a/ah;

    move-result-object v1

    int-to-long v2, v3

    invoke-virtual {v1, v2, v3}, Lcom/speedsoftware/a/ah;->b(J)V

    invoke-virtual {v5}, Lcom/speedsoftware/a/ap;->a()Lcom/speedsoftware/a/ah;

    move-result-object v1

    invoke-virtual {v5}, Lcom/speedsoftware/a/ap;->a()Lcom/speedsoftware/a/ah;

    move-result-object v2

    invoke-virtual {v2}, Lcom/speedsoftware/a/ah;->c()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/speedsoftware/a/ah;->a(J)V

    invoke-virtual {p0}, Lcom/speedsoftware/a/m;->b()I

    move-result v1

    invoke-virtual {p1}, Lcom/speedsoftware/a/ax;->i()I

    move-result v2

    sub-int v2, v1, v2

    const/4 v1, -0x1

    :cond_9
    iget-object v3, p0, Lcom/speedsoftware/a/m;->p:[I

    add-int/lit8 v1, v1, 0x1

    aget v3, v3, v1

    invoke-virtual {v7, v3}, Lcom/speedsoftware/a/ab;->c(I)V

    invoke-virtual {p1}, Lcom/speedsoftware/a/ax;->h()[I

    move-result-object v3

    invoke-virtual {v7}, Lcom/speedsoftware/a/ab;->a()I

    move-result v4

    invoke-virtual {p1}, Lcom/speedsoftware/a/ax;->f()I

    move-result v6

    aput v6, v3, v4

    add-int/lit8 v2, v2, -0x1

    if-nez v2, :cond_9

    invoke-virtual {v5}, Lcom/speedsoftware/a/ap;->a()Lcom/speedsoftware/a/ah;

    move-result-object v1

    invoke-virtual {v1}, Lcom/speedsoftware/a/ah;->c()J

    move-result-wide v1

    long-to-int v1, v1

    invoke-virtual {v0}, Lcom/speedsoftware/a/ao;->c()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {v0, v1}, Lcom/speedsoftware/a/ao;->b(I)V

    invoke-virtual {p0}, Lcom/speedsoftware/a/m;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/speedsoftware/a/ax;->a(I)V

    goto :goto_7

    :cond_a
    move v4, v1

    move v1, v2

    move v2, v3

    goto/16 :goto_4
.end method

.method public final c()Lcom/speedsoftware/a/ab;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/a/m;->g:Lcom/speedsoftware/a/ab;

    return-object v0
.end method

.method public final c(I)V
    .locals 2

    invoke-super {p0, p1}, Lcom/speedsoftware/a/bn;->c(I)V

    iget-object v0, p0, Lcom/speedsoftware/a/m;->g:Lcom/speedsoftware/a/ab;

    add-int/lit8 v1, p1, 0x2

    invoke-virtual {v0, v1}, Lcom/speedsoftware/a/ab;->c(I)V

    iget-object v0, p0, Lcom/speedsoftware/a/m;->f:Lcom/speedsoftware/a/bb;

    add-int/lit8 v1, p1, 0x2

    invoke-virtual {v0, v1}, Lcom/speedsoftware/a/bb;->c(I)V

    return-void
.end method

.method public final c(Lcom/speedsoftware/a/ax;)Z
    .locals 13

    const/16 v12, 0x7c

    const/4 v11, 0x4

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p1}, Lcom/speedsoftware/a/ax;->n()Lcom/speedsoftware/a/ap;

    move-result-object v4

    invoke-virtual {v4}, Lcom/speedsoftware/a/ap;->a()Lcom/speedsoftware/a/ah;

    move-result-object v2

    iget-object v3, p0, Lcom/speedsoftware/a/m;->f:Lcom/speedsoftware/a/bb;

    invoke-virtual {v3}, Lcom/speedsoftware/a/bb;->a()I

    move-result v3

    int-to-long v5, v3

    invoke-virtual {v2, v5, v6}, Lcom/speedsoftware/a/ah;->c(J)V

    new-instance v5, Lcom/speedsoftware/a/ab;

    invoke-virtual {p1}, Lcom/speedsoftware/a/ax;->s()[B

    move-result-object v2

    invoke-direct {v5, v2}, Lcom/speedsoftware/a/ab;-><init>([B)V

    iget-object v2, p0, Lcom/speedsoftware/a/m;->f:Lcom/speedsoftware/a/bb;

    invoke-virtual {v2}, Lcom/speedsoftware/a/bb;->b()I

    move-result v2

    invoke-virtual {v5, v2}, Lcom/speedsoftware/a/ab;->c(I)V

    invoke-virtual {v4}, Lcom/speedsoftware/a/ap;->b()I

    move-result v2

    int-to-long v6, v2

    invoke-virtual {v4}, Lcom/speedsoftware/a/ap;->a()Lcom/speedsoftware/a/ah;

    move-result-object v2

    invoke-virtual {v2}, Lcom/speedsoftware/a/ah;->c()J

    move-result-wide v2

    cmp-long v2, v6, v2

    if-ltz v2, :cond_1

    move v1, v0

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-virtual {v5}, Lcom/speedsoftware/a/ab;->b()I

    move-result v2

    int-to-long v8, v2

    cmp-long v3, v6, v8

    if-gez v3, :cond_4

    invoke-virtual {v4}, Lcom/speedsoftware/a/ap;->a()Lcom/speedsoftware/a/ah;

    move-result-object v3

    int-to-long v6, v2

    invoke-virtual {v3, v6, v7}, Lcom/speedsoftware/a/ah;->a(J)V

    mul-int/lit8 v3, v2, 0x2

    int-to-long v6, v3

    invoke-virtual {v4}, Lcom/speedsoftware/a/ap;->a()Lcom/speedsoftware/a/ah;

    move-result-object v3

    invoke-virtual {v3}, Lcom/speedsoftware/a/ah;->c()J

    move-result-wide v8

    cmp-long v3, v6, v8

    if-lez v3, :cond_2

    move v0, v1

    :cond_2
    invoke-virtual {p1, v0}, Lcom/speedsoftware/a/ax;->b(I)V

    invoke-virtual {p1}, Lcom/speedsoftware/a/ax;->k()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/speedsoftware/a/ax;->e(I)V

    add-int/lit8 v0, v2, 0x4

    invoke-virtual {p1}, Lcom/speedsoftware/a/ax;->r()Lcom/speedsoftware/a/ab;

    move-result-object v2

    invoke-virtual {v5}, Lcom/speedsoftware/a/ab;->f()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/speedsoftware/a/ab;->c(I)V

    invoke-virtual {p1}, Lcom/speedsoftware/a/ax;->r()Lcom/speedsoftware/a/ab;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/speedsoftware/a/ab;->b(I)V

    iget-object v2, p0, Lcom/speedsoftware/a/m;->f:Lcom/speedsoftware/a/bb;

    invoke-virtual {v2, v11}, Lcom/speedsoftware/a/bb;->b(I)V

    if-le v0, v12, :cond_3

    invoke-direct {p0, p1}, Lcom/speedsoftware/a/m;->d(Lcom/speedsoftware/a/ax;)V

    :cond_3
    invoke-virtual {v4}, Lcom/speedsoftware/a/ap;->a()Lcom/speedsoftware/a/ah;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/speedsoftware/a/ah;->b(J)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/speedsoftware/a/ax;->r()Lcom/speedsoftware/a/ab;

    move-result-object v3

    invoke-virtual {v3}, Lcom/speedsoftware/a/ab;->f()I

    move-result v3

    if-nez v3, :cond_5

    move v1, v0

    goto :goto_0

    :cond_5
    invoke-virtual {p1, v0}, Lcom/speedsoftware/a/ax;->b(I)V

    invoke-virtual {p0}, Lcom/speedsoftware/a/m;->b()I

    move-result v8

    add-int/lit8 v3, v8, -0x1

    :cond_6
    invoke-virtual {v5}, Lcom/speedsoftware/a/ab;->e()Lcom/speedsoftware/a/ab;

    move-result-object v9

    invoke-virtual {v9}, Lcom/speedsoftware/a/ab;->b()I

    move-result v9

    add-int/2addr v2, v9

    int-to-long v9, v2

    cmp-long v9, v9, v6

    if-lez v9, :cond_7

    invoke-virtual {v4}, Lcom/speedsoftware/a/ap;->a()Lcom/speedsoftware/a/ah;

    move-result-object v0

    invoke-virtual {v5}, Lcom/speedsoftware/a/ab;->b()I

    move-result v3

    sub-int v3, v2, v3

    int-to-long v6, v3

    invoke-virtual {v0, v6, v7}, Lcom/speedsoftware/a/ah;->b(J)V

    invoke-virtual {v4}, Lcom/speedsoftware/a/ap;->a()Lcom/speedsoftware/a/ah;

    move-result-object v0

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/speedsoftware/a/ah;->a(J)V

    invoke-virtual {v5}, Lcom/speedsoftware/a/ab;->f()I

    move-result v0

    invoke-virtual {p1}, Lcom/speedsoftware/a/ax;->r()Lcom/speedsoftware/a/ab;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/speedsoftware/a/ab;->c(I)V

    invoke-virtual {p1}, Lcom/speedsoftware/a/ax;->r()Lcom/speedsoftware/a/ab;

    move-result-object v2

    invoke-virtual {v2, v11}, Lcom/speedsoftware/a/ab;->d(I)V

    iget-object v2, p0, Lcom/speedsoftware/a/m;->f:Lcom/speedsoftware/a/bb;

    invoke-virtual {v2, v11}, Lcom/speedsoftware/a/bb;->b(I)V

    iget-object v2, p0, Lcom/speedsoftware/a/m;->l:Lcom/speedsoftware/a/ab;

    invoke-virtual {p1}, Lcom/speedsoftware/a/ax;->s()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/speedsoftware/a/ab;->a([B)Lcom/speedsoftware/a/ab;

    move-result-object v2

    iget-object v3, p0, Lcom/speedsoftware/a/m;->m:Lcom/speedsoftware/a/ab;

    invoke-virtual {p1}, Lcom/speedsoftware/a/ax;->s()[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/speedsoftware/a/ab;->a([B)Lcom/speedsoftware/a/ab;

    move-result-object v3

    invoke-virtual {v2, v0}, Lcom/speedsoftware/a/ab;->c(I)V

    add-int/lit8 v0, v0, -0x6

    invoke-virtual {v3, v0}, Lcom/speedsoftware/a/ab;->c(I)V

    invoke-virtual {v2}, Lcom/speedsoftware/a/ab;->b()I

    move-result v0

    invoke-virtual {v3}, Lcom/speedsoftware/a/ab;->b()I

    move-result v4

    if-le v0, v4, :cond_0

    invoke-static {v2, v3}, Lcom/speedsoftware/a/ab;->a(Lcom/speedsoftware/a/ab;Lcom/speedsoftware/a/ab;)V

    invoke-virtual {p1}, Lcom/speedsoftware/a/ax;->r()Lcom/speedsoftware/a/ab;

    move-result-object v0

    invoke-virtual {v3}, Lcom/speedsoftware/a/ab;->f()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/speedsoftware/a/ab;->c(I)V

    invoke-virtual {v3}, Lcom/speedsoftware/a/ab;->b()I

    move-result v0

    if-le v0, v12, :cond_0

    invoke-direct {p0, p1}, Lcom/speedsoftware/a/m;->d(Lcom/speedsoftware/a/ax;)V

    goto/16 :goto_0

    :cond_7
    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_6

    invoke-virtual {p1}, Lcom/speedsoftware/a/ax;->o()[I

    move-result-object v3

    invoke-virtual {p1}, Lcom/speedsoftware/a/ax;->r()Lcom/speedsoftware/a/ab;

    move-result-object v6

    invoke-virtual {v6}, Lcom/speedsoftware/a/ab;->a()I

    move-result v6

    aget v3, v3, v6

    invoke-virtual {p1, v3}, Lcom/speedsoftware/a/ax;->f(I)V

    invoke-virtual {v4}, Lcom/speedsoftware/a/ap;->a()Lcom/speedsoftware/a/ah;

    move-result-object v3

    int-to-long v6, v2

    invoke-virtual {v3, v6, v7}, Lcom/speedsoftware/a/ah;->b(J)V

    invoke-virtual {p1}, Lcom/speedsoftware/a/ax;->h()[I

    move-result-object v2

    invoke-virtual {v5}, Lcom/speedsoftware/a/ab;->a()I

    move-result v3

    invoke-virtual {p1}, Lcom/speedsoftware/a/ax;->f()I

    move-result v6

    aput v6, v2, v3

    invoke-virtual {p1, v8}, Lcom/speedsoftware/a/ax;->a(I)V

    add-int/lit8 v2, v8, -0x1

    invoke-virtual {p1}, Lcom/speedsoftware/a/ax;->r()Lcom/speedsoftware/a/ab;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/speedsoftware/a/ab;->c(I)V

    move v0, v2

    :cond_8
    invoke-virtual {p1}, Lcom/speedsoftware/a/ax;->h()[I

    move-result-object v2

    invoke-virtual {v5}, Lcom/speedsoftware/a/ab;->d()Lcom/speedsoftware/a/ab;

    move-result-object v3

    invoke-virtual {v3}, Lcom/speedsoftware/a/ab;->a()I

    move-result v3

    invoke-virtual {p1}, Lcom/speedsoftware/a/ax;->f()I

    move-result v6

    aput v6, v2, v3

    add-int/lit8 v0, v0, -0x1

    if-nez v0, :cond_8

    invoke-virtual {v4}, Lcom/speedsoftware/a/ap;->a()Lcom/speedsoftware/a/ah;

    move-result-object v0

    invoke-virtual {v4}, Lcom/speedsoftware/a/ap;->a()Lcom/speedsoftware/a/ah;

    move-result-object v2

    invoke-virtual {v2}, Lcom/speedsoftware/a/ah;->c()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/speedsoftware/a/ah;->a(J)V

    goto/16 :goto_0
.end method

.method public final d()I
    .locals 2

    iget-object v0, p0, Lcom/speedsoftware/a/m;->b:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/speedsoftware/a/m;->b:[B

    iget v1, p0, Lcom/speedsoftware/a/m;->c:I

    add-int/lit8 v1, v1, 0x8

    invoke-static {v0, v1}, Lcom/speedsoftware/a/ac;->b([BI)I

    move-result v0

    iput v0, p0, Lcom/speedsoftware/a/m;->h:I

    :cond_0
    iget v0, p0, Lcom/speedsoftware/a/m;->h:I

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PPMContext["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n  pos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/speedsoftware/a/m;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/speedsoftware/a/m;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  numStats="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/speedsoftware/a/m;->b()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  Suffix="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/speedsoftware/a/m;->d()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  freqData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/speedsoftware/a/m;->f:Lcom/speedsoftware/a/bb;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n  oneState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/speedsoftware/a/m;->g:Lcom/speedsoftware/a/ab;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
