.class public final Lcom/speedsoftware/a/ad;
.super Lcom/speedsoftware/a/l;


# static fields
.field private static Q:[I


# instance fields
.field private final A:Lcom/speedsoftware/a/ax;

.field private B:I

.field private C:Lcom/speedsoftware/a/az;

.field private D:Ljava/util/List;

.field private E:Ljava/util/List;

.field private F:Ljava/util/List;

.field private G:I

.field private H:Z

.field private I:[B

.field private J:Lcom/speedsoftware/a/n;

.field private K:Z

.field private L:J

.field private M:Z

.field private N:Z

.field private O:I

.field private P:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/16 v5, 0xe

    const/16 v4, 0xc

    const/4 v3, 0x4

    const/4 v2, 0x2

    const/16 v0, 0x13

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v3, v0, v1

    const/4 v1, 0x1

    aput v2, v0, v1

    aput v2, v0, v2

    const/4 v1, 0x3

    aput v2, v0, v1

    aput v2, v0, v3

    const/4 v1, 0x5

    aput v2, v0, v1

    const/4 v1, 0x6

    aput v2, v0, v1

    const/4 v1, 0x7

    aput v2, v0, v1

    const/16 v1, 0x8

    aput v2, v0, v1

    const/16 v1, 0x9

    aput v2, v0, v1

    const/16 v1, 0xa

    aput v2, v0, v1

    const/16 v1, 0xb

    aput v2, v0, v1

    aput v2, v0, v4

    const/16 v1, 0xd

    aput v2, v0, v1

    aput v2, v0, v5

    const/16 v1, 0xf

    aput v2, v0, v1

    const/16 v1, 0x10

    aput v5, v0, v1

    const/16 v1, 0x12

    aput v4, v0, v1

    sput-object v0, Lcom/speedsoftware/a/ad;->Q:[I

    return-void
.end method

.method public constructor <init>(Lcom/speedsoftware/a/y;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/speedsoftware/a/l;-><init>()V

    new-instance v0, Lcom/speedsoftware/a/ax;

    invoke-direct {v0}, Lcom/speedsoftware/a/ax;-><init>()V

    iput-object v0, p0, Lcom/speedsoftware/a/ad;->A:Lcom/speedsoftware/a/ax;

    new-instance v0, Lcom/speedsoftware/a/az;

    invoke-direct {v0}, Lcom/speedsoftware/a/az;-><init>()V

    iput-object v0, p0, Lcom/speedsoftware/a/ad;->C:Lcom/speedsoftware/a/az;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/speedsoftware/a/ad;->D:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/speedsoftware/a/ad;->E:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/speedsoftware/a/ad;->F:Ljava/util/List;

    const/16 v0, 0x194

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/speedsoftware/a/ad;->I:[B

    iput-object p1, p0, Lcom/speedsoftware/a/ad;->d:Lcom/speedsoftware/a/y;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/speedsoftware/a/ad;->h:[B

    iput-boolean v1, p0, Lcom/speedsoftware/a/ad;->K:Z

    iput-boolean v1, p0, Lcom/speedsoftware/a/ad;->b:Z

    iput-boolean v1, p0, Lcom/speedsoftware/a/ad;->c:Z

    iput-boolean v1, p0, Lcom/speedsoftware/a/ad;->e:Z

    return-void
.end method

.method private a(II)V
    .locals 4

    const/4 v3, 0x1

    if-eq p2, p1, :cond_0

    iput-boolean v3, p0, Lcom/speedsoftware/a/ad;->e:Z

    :cond_0
    if-ge p2, p1, :cond_1

    iget-object v0, p0, Lcom/speedsoftware/a/ad;->h:[B

    neg-int v1, p1

    const v2, 0x3fffff

    and-int/2addr v1, v2

    invoke-direct {p0, v0, p1, v1}, Lcom/speedsoftware/a/ad;->a([BII)V

    iget-object v0, p0, Lcom/speedsoftware/a/ad;->h:[B

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p2}, Lcom/speedsoftware/a/ad;->a([BII)V

    iput-boolean v3, p0, Lcom/speedsoftware/a/ad;->c:Z

    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/speedsoftware/a/ad;->h:[B

    sub-int v1, p2, p1

    invoke-direct {p0, v0, p1, v1}, Lcom/speedsoftware/a/ad;->a([BII)V

    goto :goto_0
.end method

.method private a(Lcom/speedsoftware/a/aj;)V
    .locals 5

    invoke-virtual {p1}, Lcom/speedsoftware/a/aj;->f()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p1}, Lcom/speedsoftware/a/aj;->g()[I

    move-result-object v0

    const/4 v1, 0x6

    iget-wide v2, p0, Lcom/speedsoftware/a/ad;->L:J

    long-to-int v2, v2

    aput v2, v0, v1

    invoke-virtual {p1}, Lcom/speedsoftware/a/aj;->f()Ljava/util/Vector;

    move-result-object v0

    const/16 v1, 0x24

    iget-wide v2, p0, Lcom/speedsoftware/a/ad;->L:J

    long-to-int v2, v2

    invoke-static {v0, v1, v2}, Lcom/speedsoftware/a/az;->a(Ljava/util/Vector;II)V

    invoke-virtual {p1}, Lcom/speedsoftware/a/aj;->f()Ljava/util/Vector;

    move-result-object v0

    const/16 v1, 0x28

    iget-wide v2, p0, Lcom/speedsoftware/a/ad;->L:J

    const/16 v4, 0x20

    ushr-long/2addr v2, v4

    long-to-int v2, v2

    invoke-static {v0, v1, v2}, Lcom/speedsoftware/a/az;->a(Ljava/util/Vector;II)V

    iget-object v0, p0, Lcom/speedsoftware/a/ad;->C:Lcom/speedsoftware/a/az;

    invoke-virtual {v0, p1}, Lcom/speedsoftware/a/az;->a(Lcom/speedsoftware/a/aj;)V

    :cond_0
    return-void
.end method

.method private a([BII)V
    .locals 4

    iget-wide v0, p0, Lcom/speedsoftware/a/ad;->L:J

    iget-wide v2, p0, Lcom/speedsoftware/a/ad;->g:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-wide v0, p0, Lcom/speedsoftware/a/ad;->g:J

    iget-wide v2, p0, Lcom/speedsoftware/a/ad;->L:J

    sub-long/2addr v0, v2

    int-to-long v2, p3

    cmp-long v2, v2, v0

    if-lez v2, :cond_1

    long-to-int v0, v0

    :goto_1
    iget-object v1, p0, Lcom/speedsoftware/a/ad;->d:Lcom/speedsoftware/a/y;

    invoke-virtual {v1, p1, p2, v0}, Lcom/speedsoftware/a/y;->b([BII)V

    iget-wide v0, p0, Lcom/speedsoftware/a/ad;->L:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/speedsoftware/a/ad;->L:J

    goto :goto_0

    :cond_1
    move v0, p3

    goto :goto_1
.end method

.method private a(ILjava/util/List;)Z
    .locals 13

    const/16 v12, 0x40

    const/16 v11, 0x8

    const/4 v10, 0x7

    const/4 v4, 0x1

    const/4 v2, 0x0

    new-instance v9, Lcom/speedsoftware/a/g;

    invoke-direct {v9}, Lcom/speedsoftware/a/g;-><init>()V

    invoke-virtual {v9}, Lcom/speedsoftware/a/g;->c()V

    move v1, v2

    :goto_0
    const v0, 0x8000

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    if-lt v1, v0, :cond_1

    iget-object v0, p0, Lcom/speedsoftware/a/ad;->C:Lcom/speedsoftware/a/az;

    invoke-virtual {v0}, Lcom/speedsoftware/a/az;->a()V

    and-int/lit16 v0, p1, 0x80

    if-eqz v0, :cond_3

    invoke-static {v9}, Lcom/speedsoftware/a/az;->a(Lcom/speedsoftware/a/g;)I

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/speedsoftware/a/ad;->l()V

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/speedsoftware/a/ad;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gt v1, v0, :cond_0

    iget-object v0, p0, Lcom/speedsoftware/a/ad;->F:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v1, v0, :cond_4

    :cond_0
    :goto_2
    return v2

    :cond_1
    invoke-virtual {v9}, Lcom/speedsoftware/a/g;->g()[B

    move-result-object v3

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    aput-byte v0, v3, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, -0x1

    move v1, v0

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/speedsoftware/a/ad;->G:I

    move v1, v0

    goto :goto_1

    :cond_4
    iput v1, p0, Lcom/speedsoftware/a/ad;->G:I

    iget-object v0, p0, Lcom/speedsoftware/a/ad;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v1, v0, :cond_b

    move v3, v4

    :goto_3
    new-instance v8, Lcom/speedsoftware/a/al;

    invoke-direct {v8}, Lcom/speedsoftware/a/al;-><init>()V

    if-eqz v3, :cond_c

    const/16 v0, 0x400

    if-gt v1, v0, :cond_0

    new-instance v0, Lcom/speedsoftware/a/al;

    invoke-direct {v0}, Lcom/speedsoftware/a/al;-><init>()V

    iget-object v5, p0, Lcom/speedsoftware/a/ad;->D:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/speedsoftware/a/ad;->D:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v8, v5}, Lcom/speedsoftware/a/al;->d(I)V

    iget-object v5, p0, Lcom/speedsoftware/a/ad;->F:Ljava/util/List;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0, v2}, Lcom/speedsoftware/a/al;->c(I)V

    move-object v5, v0

    :goto_4
    iget-object v0, p0, Lcom/speedsoftware/a/ad;->E:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5}, Lcom/speedsoftware/a/al;->c()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/speedsoftware/a/al;->c(I)V

    invoke-static {v9}, Lcom/speedsoftware/a/az;->a(Lcom/speedsoftware/a/g;)I

    move-result v0

    and-int/lit8 v6, p1, 0x40

    if-eqz v6, :cond_16

    add-int/lit16 v0, v0, 0x102

    move v6, v0

    :goto_5
    iget v0, p0, Lcom/speedsoftware/a/ad;->j:I

    add-int/2addr v0, v6

    const v7, 0x3fffff

    and-int/2addr v0, v7

    invoke-virtual {v8, v0}, Lcom/speedsoftware/a/al;->b(I)V

    and-int/lit8 v0, p1, 0x20

    if-eqz v0, :cond_d

    invoke-static {v9}, Lcom/speedsoftware/a/az;->a(Lcom/speedsoftware/a/g;)I

    move-result v0

    move-object v7, v8

    :goto_6
    invoke-virtual {v7, v0}, Lcom/speedsoftware/a/al;->a(I)V

    iget v0, p0, Lcom/speedsoftware/a/ad;->k:I

    iget v7, p0, Lcom/speedsoftware/a/ad;->j:I

    if-eq v0, v7, :cond_f

    iget v0, p0, Lcom/speedsoftware/a/ad;->k:I

    iget v7, p0, Lcom/speedsoftware/a/ad;->j:I

    sub-int/2addr v0, v7

    const v7, 0x3fffff

    and-int/2addr v0, v7

    if-gt v0, v6, :cond_f

    move v0, v4

    :goto_7
    invoke-virtual {v8, v0}, Lcom/speedsoftware/a/al;->a(Z)V

    iget-object v0, p0, Lcom/speedsoftware/a/ad;->F:Ljava/util/List;

    invoke-virtual {v8}, Lcom/speedsoftware/a/al;->a()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v1, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v8}, Lcom/speedsoftware/a/al;->f()Lcom/speedsoftware/a/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/speedsoftware/a/aj;->g()[I

    move-result-object v0

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    invoke-virtual {v8}, Lcom/speedsoftware/a/al;->f()Lcom/speedsoftware/a/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/speedsoftware/a/aj;->g()[I

    move-result-object v0

    const/4 v1, 0x3

    const v6, 0x3c000

    aput v6, v0, v1

    invoke-virtual {v8}, Lcom/speedsoftware/a/al;->f()Lcom/speedsoftware/a/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/speedsoftware/a/aj;->g()[I

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v8}, Lcom/speedsoftware/a/al;->a()I

    move-result v6

    aput v6, v0, v1

    invoke-virtual {v8}, Lcom/speedsoftware/a/al;->f()Lcom/speedsoftware/a/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/speedsoftware/a/aj;->g()[I

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v8}, Lcom/speedsoftware/a/al;->c()I

    move-result v6

    aput v6, v0, v1

    and-int/lit8 v0, p1, 0x10

    if-eqz v0, :cond_5

    invoke-virtual {v9}, Lcom/speedsoftware/a/g;->e()I

    move-result v0

    ushr-int/lit8 v1, v0, 0x9

    invoke-virtual {v9, v10}, Lcom/speedsoftware/a/g;->b(I)V

    move v0, v2

    :goto_8
    if-lt v0, v10, :cond_10

    :cond_5
    if-eqz v3, :cond_6

    invoke-static {v9}, Lcom/speedsoftware/a/az;->a(Lcom/speedsoftware/a/g;)I

    move-result v1

    const/high16 v0, 0x10000

    if-ge v1, v0, :cond_0

    if-eqz v1, :cond_0

    new-array v3, v1, [B

    move v0, v2

    :goto_9
    if-lt v0, v1, :cond_12

    iget-object v0, p0, Lcom/speedsoftware/a/ad;->C:Lcom/speedsoftware/a/az;

    invoke-virtual {v5}, Lcom/speedsoftware/a/al;->f()Lcom/speedsoftware/a/aj;

    move-result-object v6

    invoke-virtual {v0, v3, v1, v6}, Lcom/speedsoftware/a/az;->a([BILcom/speedsoftware/a/aj;)V

    :cond_6
    invoke-virtual {v8}, Lcom/speedsoftware/a/al;->f()Lcom/speedsoftware/a/aj;

    move-result-object v0

    invoke-virtual {v5}, Lcom/speedsoftware/a/al;->f()Lcom/speedsoftware/a/aj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/speedsoftware/a/aj;->b()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/speedsoftware/a/aj;->a(Ljava/util/List;)V

    invoke-virtual {v8}, Lcom/speedsoftware/a/al;->f()Lcom/speedsoftware/a/aj;

    move-result-object v0

    invoke-virtual {v5}, Lcom/speedsoftware/a/al;->f()Lcom/speedsoftware/a/aj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/speedsoftware/a/aj;->c()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/speedsoftware/a/aj;->a(I)V

    invoke-virtual {v5}, Lcom/speedsoftware/a/al;->f()Lcom/speedsoftware/a/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/speedsoftware/a/aj;->h()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_7

    const/16 v1, 0x2000

    if-ge v0, v1, :cond_7

    invoke-virtual {v8}, Lcom/speedsoftware/a/al;->f()Lcom/speedsoftware/a/aj;

    move-result-object v0

    invoke-virtual {v5}, Lcom/speedsoftware/a/al;->f()Lcom/speedsoftware/a/aj;

    move-result-object v1

    invoke-virtual {v1}, Lcom/speedsoftware/a/aj;->h()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/speedsoftware/a/aj;->a(Ljava/util/Vector;)V

    :cond_7
    invoke-virtual {v8}, Lcom/speedsoftware/a/al;->f()Lcom/speedsoftware/a/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/speedsoftware/a/aj;->f()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v0, v12, :cond_8

    invoke-virtual {v8}, Lcom/speedsoftware/a/al;->f()Lcom/speedsoftware/a/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/speedsoftware/a/aj;->f()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    invoke-virtual {v8}, Lcom/speedsoftware/a/al;->f()Lcom/speedsoftware/a/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/speedsoftware/a/aj;->f()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/util/Vector;->setSize(I)V

    :cond_8
    invoke-virtual {v8}, Lcom/speedsoftware/a/al;->f()Lcom/speedsoftware/a/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/speedsoftware/a/aj;->f()Ljava/util/Vector;

    move-result-object v1

    move v0, v2

    :goto_a
    if-lt v0, v10, :cond_13

    const/16 v0, 0x1c

    invoke-virtual {v8}, Lcom/speedsoftware/a/al;->a()I

    move-result v3

    invoke-static {v1, v0, v3}, Lcom/speedsoftware/a/az;->a(Ljava/util/Vector;II)V

    const/16 v0, 0x20

    invoke-static {v1, v0, v2}, Lcom/speedsoftware/a/az;->a(Ljava/util/Vector;II)V

    const/16 v0, 0x24

    invoke-static {v1, v0, v2}, Lcom/speedsoftware/a/az;->a(Ljava/util/Vector;II)V

    const/16 v0, 0x28

    invoke-static {v1, v0, v2}, Lcom/speedsoftware/a/az;->a(Ljava/util/Vector;II)V

    const/16 v0, 0x2c

    invoke-virtual {v8}, Lcom/speedsoftware/a/al;->c()I

    move-result v3

    invoke-static {v1, v0, v3}, Lcom/speedsoftware/a/az;->a(Ljava/util/Vector;II)V

    move v0, v2

    :goto_b
    const/16 v3, 0x10

    if-lt v0, v3, :cond_14

    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_a

    invoke-virtual {v9}, Lcom/speedsoftware/a/g;->f()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v9}, Lcom/speedsoftware/a/az;->a(Lcom/speedsoftware/a/g;)I

    move-result v1

    const/16 v0, 0x1fc0

    if-gt v1, v0, :cond_0

    invoke-virtual {v8}, Lcom/speedsoftware/a/al;->f()Lcom/speedsoftware/a/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/speedsoftware/a/aj;->f()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v3, v1, 0x40

    if-ge v0, v3, :cond_9

    invoke-virtual {v8}, Lcom/speedsoftware/a/al;->f()Lcom/speedsoftware/a/aj;

    move-result-object v3

    invoke-virtual {v3}, Lcom/speedsoftware/a/aj;->f()Ljava/util/Vector;

    move-result-object v3

    add-int/lit8 v5, v1, 0x40

    sub-int v0, v5, v0

    invoke-virtual {v3, v0}, Ljava/util/Vector;->setSize(I)V

    :cond_9
    invoke-virtual {v8}, Lcom/speedsoftware/a/al;->f()Lcom/speedsoftware/a/aj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/speedsoftware/a/aj;->f()Ljava/util/Vector;

    move-result-object v3

    move v0, v2

    :goto_c
    if-lt v0, v1, :cond_15

    :cond_a
    move v2, v4

    goto/16 :goto_2

    :cond_b
    move v3, v2

    goto/16 :goto_3

    :cond_c
    iget-object v0, p0, Lcom/speedsoftware/a/ad;->D:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/speedsoftware/a/al;

    invoke-virtual {v8, v1}, Lcom/speedsoftware/a/al;->d(I)V

    invoke-virtual {v0}, Lcom/speedsoftware/a/al;->c()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v0, v5}, Lcom/speedsoftware/a/al;->c(I)V

    move-object v5, v0

    goto/16 :goto_4

    :cond_d
    iget-object v0, p0, Lcom/speedsoftware/a/ad;->F:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_e

    iget-object v0, p0, Lcom/speedsoftware/a/ad;->F:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    move-object v7, v8

    goto/16 :goto_6

    :cond_e
    move v0, v2

    move-object v7, v8

    goto/16 :goto_6

    :cond_f
    move v0, v2

    goto/16 :goto_7

    :cond_10
    shl-int v6, v4, v0

    and-int/2addr v6, v1

    if-eqz v6, :cond_11

    invoke-virtual {v8}, Lcom/speedsoftware/a/al;->f()Lcom/speedsoftware/a/aj;

    move-result-object v6

    invoke-virtual {v6}, Lcom/speedsoftware/a/aj;->g()[I

    move-result-object v6

    invoke-static {v9}, Lcom/speedsoftware/a/az;->a(Lcom/speedsoftware/a/g;)I

    move-result v7

    aput v7, v6, v0

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_8

    :cond_12
    invoke-virtual {v9}, Lcom/speedsoftware/a/g;->f()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v9}, Lcom/speedsoftware/a/g;->e()I

    move-result v6

    shr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    aput-byte v6, v3, v0

    invoke-virtual {v9, v11}, Lcom/speedsoftware/a/g;->b(I)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_9

    :cond_13
    mul-int/lit8 v3, v0, 0x4

    invoke-virtual {v8}, Lcom/speedsoftware/a/al;->f()Lcom/speedsoftware/a/aj;

    move-result-object v5

    invoke-virtual {v5}, Lcom/speedsoftware/a/aj;->g()[I

    move-result-object v5

    aget v5, v5, v0

    invoke-static {v1, v3, v5}, Lcom/speedsoftware/a/az;->a(Ljava/util/Vector;II)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_a

    :cond_14
    add-int/lit8 v3, v0, 0x30

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v1, v3, v5}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_b

    :cond_15
    invoke-virtual {v9}, Lcom/speedsoftware/a/g;->f()Z

    move-result v5

    if-nez v5, :cond_0

    add-int/lit8 v5, v0, 0x40

    invoke-virtual {v9}, Lcom/speedsoftware/a/g;->e()I

    move-result v6

    ushr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v9, v11}, Lcom/speedsoftware/a/g;->b(I)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_c

    :cond_16
    move v6, v0

    goto/16 :goto_5
.end method

.method private b(II)V
    .locals 0

    iput p2, p0, Lcom/speedsoftware/a/ad;->m:I

    iput p1, p0, Lcom/speedsoftware/a/ad;->n:I

    return-void
.end method

.method private c(I)V
    .locals 6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/speedsoftware/a/ad;->i:[I

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/speedsoftware/a/ad;->i:[I

    aget v2, v2, v5

    aput v2, v0, v1

    iget-object v0, p0, Lcom/speedsoftware/a/ad;->i:[I

    iget-object v1, p0, Lcom/speedsoftware/a/ad;->i:[I

    aget v1, v1, v4

    aput v1, v0, v5

    iget-object v0, p0, Lcom/speedsoftware/a/ad;->i:[I

    iget-object v1, p0, Lcom/speedsoftware/a/ad;->i:[I

    aget v1, v1, v3

    aput v1, v0, v4

    iget-object v0, p0, Lcom/speedsoftware/a/ad;->i:[I

    aput p1, v0, v3

    return-void
.end method

.method private c(II)V
    .locals 7

    const v6, 0x3fffff

    const v2, 0x3ffefc

    iget v0, p0, Lcom/speedsoftware/a/ad;->j:I

    sub-int/2addr v0, p2

    if-ltz v0, :cond_1

    if-ge v0, v2, :cond_1

    iget v1, p0, Lcom/speedsoftware/a/ad;->j:I

    if-ge v1, v2, :cond_1

    :goto_0
    iget-object v2, p0, Lcom/speedsoftware/a/ad;->h:[B

    iget v3, p0, Lcom/speedsoftware/a/ad;->j:I

    add-int/lit8 v1, v3, 0x1

    iput v1, p0, Lcom/speedsoftware/a/ad;->j:I

    iget-object v4, p0, Lcom/speedsoftware/a/ad;->h:[B

    add-int/lit8 v1, v0, 0x1

    aget-byte v0, v4, v0

    aput-byte v0, v2, v3

    add-int/lit8 p1, p1, -0x1

    if-gtz p1, :cond_2

    :goto_1
    return-void

    :cond_0
    iget-object v3, p0, Lcom/speedsoftware/a/ad;->h:[B

    iget v4, p0, Lcom/speedsoftware/a/ad;->j:I

    iget-object v5, p0, Lcom/speedsoftware/a/ad;->h:[B

    add-int/lit8 v1, v0, 0x1

    and-int/2addr v0, v6

    aget-byte v0, v5, v0

    aput-byte v0, v3, v4

    iget v0, p0, Lcom/speedsoftware/a/ad;->j:I

    add-int/lit8 v0, v0, 0x1

    and-int/2addr v0, v6

    iput v0, p0, Lcom/speedsoftware/a/ad;->j:I

    move v0, v1

    move p1, v2

    :cond_1
    add-int/lit8 v2, p1, -0x1

    if-nez p1, :cond_0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private k()V
    .locals 15

    const/4 v13, 0x0

    const/16 v12, 0x40

    const v11, 0x3fffff

    const/4 v3, 0x0

    iget v1, p0, Lcom/speedsoftware/a/ad;->k:I

    iget v0, p0, Lcom/speedsoftware/a/ad;->j:I

    sub-int/2addr v0, v1

    and-int/2addr v0, v11

    move v2, v3

    move v4, v1

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/speedsoftware/a/ad;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_0

    iget v0, p0, Lcom/speedsoftware/a/ad;->j:I

    invoke-direct {p0, v4, v0}, Lcom/speedsoftware/a/ad;->a(II)V

    iget v0, p0, Lcom/speedsoftware/a/ad;->j:I

    iput v0, p0, Lcom/speedsoftware/a/ad;->k:I

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Lcom/speedsoftware/a/ad;->E:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/speedsoftware/a/al;

    if-eqz v0, :cond_16

    invoke-virtual {v0}, Lcom/speedsoftware/a/al;->d()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0, v3}, Lcom/speedsoftware/a/al;->a(Z)V

    move v14, v2

    move v2, v4

    move v4, v14

    :goto_2
    add-int/lit8 v0, v4, 0x1

    move v4, v2

    move v2, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Lcom/speedsoftware/a/al;->b()I

    move-result v7

    invoke-virtual {v0}, Lcom/speedsoftware/a/al;->a()I

    move-result v5

    sub-int v6, v7, v4

    and-int/2addr v6, v11

    if-ge v6, v1, :cond_16

    if-eq v4, v7, :cond_2

    invoke-direct {p0, v4, v7}, Lcom/speedsoftware/a/ad;->a(II)V

    iget v1, p0, Lcom/speedsoftware/a/ad;->j:I

    sub-int/2addr v1, v7

    and-int/2addr v1, v11

    move v4, v7

    :cond_2
    if-gt v5, v1, :cond_15

    add-int v1, v7, v5

    and-int v6, v1, v11

    if-lt v7, v6, :cond_3

    if-nez v6, :cond_7

    :cond_3
    iget-object v1, p0, Lcom/speedsoftware/a/ad;->C:Lcom/speedsoftware/a/az;

    iget-object v4, p0, Lcom/speedsoftware/a/ad;->h:[B

    invoke-virtual {v1, v3, v4, v7, v5}, Lcom/speedsoftware/a/az;->a(I[BII)V

    :goto_3
    iget-object v1, p0, Lcom/speedsoftware/a/ad;->D:Ljava/util/List;

    invoke-virtual {v0}, Lcom/speedsoftware/a/al;->e()I

    move-result v4

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/speedsoftware/a/al;

    invoke-virtual {v1}, Lcom/speedsoftware/a/al;->f()Lcom/speedsoftware/a/aj;

    move-result-object v4

    invoke-virtual {v0}, Lcom/speedsoftware/a/al;->f()Lcom/speedsoftware/a/aj;

    move-result-object v5

    invoke-virtual {v4}, Lcom/speedsoftware/a/aj;->f()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, v12, :cond_4

    invoke-virtual {v5}, Lcom/speedsoftware/a/aj;->f()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v4}, Lcom/speedsoftware/a/aj;->f()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    move v1, v3

    :goto_4
    invoke-virtual {v4}, Lcom/speedsoftware/a/aj;->f()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x40

    if-lt v1, v0, :cond_8

    :cond_4
    invoke-direct {p0, v5}, Lcom/speedsoftware/a/ad;->a(Lcom/speedsoftware/a/aj;)V

    invoke-virtual {v5}, Lcom/speedsoftware/a/aj;->f()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, v12, :cond_a

    invoke-virtual {v4}, Lcom/speedsoftware/a/aj;->f()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-virtual {v5}, Lcom/speedsoftware/a/aj;->f()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_5

    invoke-virtual {v4}, Lcom/speedsoftware/a/aj;->f()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v5}, Lcom/speedsoftware/a/aj;->f()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    :cond_5
    move v1, v3

    :goto_5
    invoke-virtual {v5}, Lcom/speedsoftware/a/aj;->f()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x40

    if-lt v1, v0, :cond_9

    :goto_6
    invoke-virtual {v5}, Lcom/speedsoftware/a/aj;->d()I

    move-result v8

    invoke-virtual {v5}, Lcom/speedsoftware/a/aj;->e()I

    move-result v1

    new-array v0, v1, [B

    move v4, v3

    :goto_7
    if-lt v4, v1, :cond_b

    iget-object v4, p0, Lcom/speedsoftware/a/ad;->E:Ljava/util/List;

    invoke-interface {v4, v2, v13}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v4, v2

    move v5, v1

    move-object v2, v0

    :goto_8
    add-int/lit8 v0, v4, 0x1

    iget-object v1, p0, Lcom/speedsoftware/a/ad;->E:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v0, v1, :cond_c

    :cond_6
    iget-object v0, p0, Lcom/speedsoftware/a/ad;->d:Lcom/speedsoftware/a/y;

    invoke-virtual {v0, v2, v3, v5}, Lcom/speedsoftware/a/y;->b([BII)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/speedsoftware/a/ad;->e:Z

    iget-wide v0, p0, Lcom/speedsoftware/a/ad;->L:J

    int-to-long v7, v5

    add-long/2addr v0, v7

    iput-wide v0, p0, Lcom/speedsoftware/a/ad;->L:J

    iget v0, p0, Lcom/speedsoftware/a/ad;->j:I

    sub-int/2addr v0, v6

    and-int v1, v0, v11

    move v2, v6

    goto/16 :goto_2

    :cond_7
    const/high16 v1, 0x400000

    sub-int/2addr v1, v7

    iget-object v4, p0, Lcom/speedsoftware/a/ad;->C:Lcom/speedsoftware/a/az;

    iget-object v5, p0, Lcom/speedsoftware/a/ad;->h:[B

    invoke-virtual {v4, v3, v5, v7, v1}, Lcom/speedsoftware/a/az;->a(I[BII)V

    iget-object v4, p0, Lcom/speedsoftware/a/ad;->C:Lcom/speedsoftware/a/az;

    iget-object v5, p0, Lcom/speedsoftware/a/ad;->h:[B

    invoke-virtual {v4, v1, v5, v3, v6}, Lcom/speedsoftware/a/az;->a(I[BII)V

    goto/16 :goto_3

    :cond_8
    invoke-virtual {v5}, Lcom/speedsoftware/a/aj;->f()Ljava/util/Vector;

    move-result-object v8

    add-int/lit8 v9, v1, 0x40

    invoke-virtual {v4}, Lcom/speedsoftware/a/aj;->f()Ljava/util/Vector;

    move-result-object v0

    add-int/lit8 v10, v1, 0x40

    invoke-virtual {v0, v10}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v8, v9, v0}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_4

    :cond_9
    invoke-virtual {v4}, Lcom/speedsoftware/a/aj;->f()Ljava/util/Vector;

    move-result-object v8

    add-int/lit8 v9, v1, 0x40

    invoke-virtual {v5}, Lcom/speedsoftware/a/aj;->f()Ljava/util/Vector;

    move-result-object v0

    add-int/lit8 v10, v1, 0x40

    invoke-virtual {v0, v10}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v8, v9, v0}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto/16 :goto_5

    :cond_a
    invoke-virtual {v4}, Lcom/speedsoftware/a/aj;->f()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    goto/16 :goto_6

    :cond_b
    iget-object v5, p0, Lcom/speedsoftware/a/ad;->C:Lcom/speedsoftware/a/az;

    invoke-virtual {v5}, Lcom/speedsoftware/a/az;->b()[B

    move-result-object v5

    add-int v9, v8, v4

    aget-byte v5, v5, v9

    aput-byte v5, v0, v4

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_7

    :cond_c
    iget-object v0, p0, Lcom/speedsoftware/a/ad;->E:Ljava/util/List;

    add-int/lit8 v1, v4, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/speedsoftware/a/al;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Lcom/speedsoftware/a/al;->b()I

    move-result v0

    if-ne v0, v7, :cond_6

    invoke-virtual {v1}, Lcom/speedsoftware/a/al;->a()I

    move-result v0

    if-ne v0, v5, :cond_6

    invoke-virtual {v1}, Lcom/speedsoftware/a/al;->d()Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/speedsoftware/a/ad;->C:Lcom/speedsoftware/a/az;

    invoke-virtual {v0, v3, v2, v3, v5}, Lcom/speedsoftware/a/az;->a(I[BII)V

    iget-object v0, p0, Lcom/speedsoftware/a/ad;->D:Ljava/util/List;

    invoke-virtual {v1}, Lcom/speedsoftware/a/al;->e()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/speedsoftware/a/al;

    invoke-virtual {v0}, Lcom/speedsoftware/a/al;->f()Lcom/speedsoftware/a/aj;

    move-result-object v2

    invoke-virtual {v1}, Lcom/speedsoftware/a/al;->f()Lcom/speedsoftware/a/aj;

    move-result-object v8

    invoke-virtual {v2}, Lcom/speedsoftware/a/aj;->f()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, v12, :cond_d

    invoke-virtual {v8}, Lcom/speedsoftware/a/aj;->f()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v2}, Lcom/speedsoftware/a/aj;->f()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    move v1, v3

    :goto_9
    invoke-virtual {v2}, Lcom/speedsoftware/a/aj;->f()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x40

    if-lt v1, v0, :cond_f

    :cond_d
    invoke-direct {p0, v8}, Lcom/speedsoftware/a/ad;->a(Lcom/speedsoftware/a/aj;)V

    invoke-virtual {v8}, Lcom/speedsoftware/a/aj;->f()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-le v0, v12, :cond_11

    invoke-virtual {v2}, Lcom/speedsoftware/a/aj;->f()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    invoke-virtual {v8}, Lcom/speedsoftware/a/aj;->f()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v0, v1, :cond_e

    invoke-virtual {v2}, Lcom/speedsoftware/a/aj;->f()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v8}, Lcom/speedsoftware/a/aj;->f()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    :cond_e
    move v1, v3

    :goto_a
    invoke-virtual {v8}, Lcom/speedsoftware/a/aj;->f()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x40

    if-lt v1, v0, :cond_10

    :goto_b
    invoke-virtual {v8}, Lcom/speedsoftware/a/aj;->d()I

    move-result v9

    invoke-virtual {v8}, Lcom/speedsoftware/a/aj;->e()I

    move-result v5

    new-array v1, v5, [B

    move v2, v3

    :goto_c
    if-lt v2, v5, :cond_12

    add-int/lit8 v2, v4, 0x1

    iget-object v0, p0, Lcom/speedsoftware/a/ad;->E:Ljava/util/List;

    invoke-interface {v0, v2, v13}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v4, v2

    move-object v2, v1

    goto/16 :goto_8

    :cond_f
    invoke-virtual {v8}, Lcom/speedsoftware/a/aj;->f()Ljava/util/Vector;

    move-result-object v5

    add-int/lit8 v9, v1, 0x40

    invoke-virtual {v2}, Lcom/speedsoftware/a/aj;->f()Ljava/util/Vector;

    move-result-object v0

    add-int/lit8 v10, v1, 0x40

    invoke-virtual {v0, v10}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v5, v9, v0}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9

    :cond_10
    invoke-virtual {v2}, Lcom/speedsoftware/a/aj;->f()Ljava/util/Vector;

    move-result-object v5

    add-int/lit8 v9, v1, 0x40

    invoke-virtual {v8}, Lcom/speedsoftware/a/aj;->f()Ljava/util/Vector;

    move-result-object v0

    add-int/lit8 v10, v1, 0x40

    invoke-virtual {v0, v10}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v5, v9, v0}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_a

    :cond_11
    invoke-virtual {v2}, Lcom/speedsoftware/a/aj;->f()Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    goto :goto_b

    :cond_12
    invoke-virtual {v8}, Lcom/speedsoftware/a/aj;->f()Ljava/util/Vector;

    move-result-object v0

    add-int v10, v9, v2

    invoke-virtual {v0, v10}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->byteValue()B

    move-result v0

    aput-byte v0, v1, v2

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_c

    :cond_13
    iget-object v0, p0, Lcom/speedsoftware/a/ad;->E:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/speedsoftware/a/al;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/speedsoftware/a/al;->d()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {v0, v3}, Lcom/speedsoftware/a/al;->a(Z)V

    :cond_14
    add-int/lit8 v2, v2, 0x1

    :cond_15
    iget-object v0, p0, Lcom/speedsoftware/a/ad;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v2, v0, :cond_13

    iput v4, p0, Lcom/speedsoftware/a/ad;->k:I

    goto/16 :goto_1

    :cond_16
    move v14, v2

    move v2, v4

    move v4, v14

    goto/16 :goto_2
.end method

.method private l()V
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/a/ad;->F:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/speedsoftware/a/ad;->G:I

    iget-object v0, p0, Lcom/speedsoftware/a/ad;->D:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/speedsoftware/a/ad;->E:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private m()Z
    .locals 12

    const/4 v11, 0x3

    const/4 v2, 0x1

    const/16 v10, 0x14

    const/16 v9, 0x194

    const/4 v1, 0x0

    new-array v5, v10, [B

    new-array v6, v9, [B

    iget v0, p0, Lcom/speedsoftware/a/ad;->o:I

    iget v3, p0, Lcom/speedsoftware/a/ad;->f:I

    add-int/lit8 v3, v3, -0x19

    if-le v0, v3, :cond_1

    invoke-virtual {p0}, Lcom/speedsoftware/a/ad;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget v0, p0, Lcom/speedsoftware/a/ad;->p:I

    rsub-int/lit8 v0, v0, 0x8

    and-int/lit8 v0, v0, 0x7

    invoke-virtual {p0, v0}, Lcom/speedsoftware/a/ad;->b(I)V

    invoke-virtual {p0}, Lcom/speedsoftware/a/ad;->e()I

    move-result v0

    and-int/lit8 v0, v0, -0x1

    int-to-long v3, v0

    sget-object v0, Lcom/speedsoftware/a/n;->a:Lcom/speedsoftware/a/n;

    iput-object v0, p0, Lcom/speedsoftware/a/ad;->J:Lcom/speedsoftware/a/n;

    iput v1, p0, Lcom/speedsoftware/a/ad;->O:I

    iput v1, p0, Lcom/speedsoftware/a/ad;->P:I

    const-wide/16 v7, 0x4000

    and-long/2addr v3, v7

    const-wide/16 v7, 0x0

    cmp-long v0, v3, v7

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/speedsoftware/a/ad;->I:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V

    :cond_2
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/speedsoftware/a/ad;->b(I)V

    move v0, v1

    :goto_1
    if-lt v0, v10, :cond_4

    iget-object v0, p0, Lcom/speedsoftware/a/ad;->v:Lcom/speedsoftware/a/aa;

    invoke-static {v5, v1, v0, v10}, Lcom/speedsoftware/a/ad;->a([BILcom/speedsoftware/a/am;I)V

    move v0, v1

    :cond_3
    :goto_2
    if-lt v0, v9, :cond_9

    iput-boolean v2, p0, Lcom/speedsoftware/a/ad;->H:Z

    iget v0, p0, Lcom/speedsoftware/a/ad;->o:I

    iget v3, p0, Lcom/speedsoftware/a/ad;->f:I

    if-gt v0, v3, :cond_0

    iget-object v0, p0, Lcom/speedsoftware/a/ad;->r:Lcom/speedsoftware/a/bk;

    const/16 v3, 0x12b

    invoke-static {v6, v1, v0, v3}, Lcom/speedsoftware/a/ad;->a([BILcom/speedsoftware/a/am;I)V

    const/16 v0, 0x12b

    iget-object v3, p0, Lcom/speedsoftware/a/ad;->s:Lcom/speedsoftware/a/aw;

    const/16 v4, 0x3c

    invoke-static {v6, v0, v3, v4}, Lcom/speedsoftware/a/ad;->a([BILcom/speedsoftware/a/am;I)V

    const/16 v0, 0x167

    iget-object v3, p0, Lcom/speedsoftware/a/ad;->t:Lcom/speedsoftware/a/q;

    const/16 v4, 0x11

    invoke-static {v6, v0, v3, v4}, Lcom/speedsoftware/a/ad;->a([BILcom/speedsoftware/a/am;I)V

    const/16 v0, 0x178

    iget-object v3, p0, Lcom/speedsoftware/a/ad;->u:Lcom/speedsoftware/a/bh;

    const/16 v4, 0x1c

    invoke-static {v6, v0, v3, v4}, Lcom/speedsoftware/a/ad;->a([BILcom/speedsoftware/a/am;I)V

    move v0, v1

    :goto_3
    iget-object v1, p0, Lcom/speedsoftware/a/ad;->I:[B

    array-length v1, v1

    if-lt v0, v1, :cond_f

    move v1, v2

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/speedsoftware/a/ad;->e()I

    move-result v3

    ushr-int/lit8 v3, v3, 0xc

    and-int/lit16 v3, v3, 0xff

    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/speedsoftware/a/ad;->b(I)V

    const/16 v4, 0xf

    if-ne v3, v4, :cond_8

    invoke-virtual {p0}, Lcom/speedsoftware/a/ad;->e()I

    move-result v3

    ushr-int/lit8 v3, v3, 0xc

    and-int/lit16 v3, v3, 0xff

    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/speedsoftware/a/ad;->b(I)V

    if-nez v3, :cond_5

    const/16 v3, 0xf

    aput-byte v3, v5, v0

    :goto_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v3, v3, 0x2

    move v4, v0

    move v0, v3

    :goto_5
    add-int/lit8 v3, v0, -0x1

    if-lez v0, :cond_6

    array-length v0, v5

    if-lt v4, v0, :cond_7

    :cond_6
    add-int/lit8 v0, v4, -0x1

    goto :goto_4

    :cond_7
    add-int/lit8 v0, v4, 0x1

    aput-byte v1, v5, v4

    move v4, v0

    move v0, v3

    goto :goto_5

    :cond_8
    int-to-byte v3, v3

    aput-byte v3, v5, v0

    goto :goto_4

    :cond_9
    iget v3, p0, Lcom/speedsoftware/a/ad;->o:I

    iget v4, p0, Lcom/speedsoftware/a/ad;->f:I

    add-int/lit8 v4, v4, -0x5

    if-le v3, v4, :cond_a

    invoke-virtual {p0}, Lcom/speedsoftware/a/ad;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_a
    iget-object v3, p0, Lcom/speedsoftware/a/ad;->v:Lcom/speedsoftware/a/aa;

    invoke-virtual {p0, v3}, Lcom/speedsoftware/a/ad;->a(Lcom/speedsoftware/a/am;)I

    move-result v3

    const/16 v4, 0x10

    if-ge v3, v4, :cond_b

    iget-object v4, p0, Lcom/speedsoftware/a/ad;->I:[B

    aget-byte v4, v4, v0

    add-int/2addr v3, v4

    and-int/lit8 v3, v3, 0xf

    int-to-byte v3, v3

    aput-byte v3, v6, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_b
    const/16 v4, 0x12

    if-ge v3, v4, :cond_d

    const/16 v4, 0x10

    if-ne v3, v4, :cond_c

    invoke-virtual {p0}, Lcom/speedsoftware/a/ad;->e()I

    move-result v3

    ushr-int/lit8 v3, v3, 0xd

    add-int/lit8 v3, v3, 0x3

    invoke-virtual {p0, v11}, Lcom/speedsoftware/a/ad;->b(I)V

    :goto_6
    add-int/lit8 v4, v3, -0x1

    if-lez v3, :cond_3

    if-ge v0, v9, :cond_3

    add-int/lit8 v3, v0, -0x1

    aget-byte v3, v6, v3

    aput-byte v3, v6, v0

    add-int/lit8 v0, v0, 0x1

    move v3, v4

    goto :goto_6

    :cond_c
    invoke-virtual {p0}, Lcom/speedsoftware/a/ad;->e()I

    move-result v3

    ushr-int/lit8 v3, v3, 0x9

    add-int/lit8 v3, v3, 0xb

    const/4 v4, 0x7

    invoke-virtual {p0, v4}, Lcom/speedsoftware/a/ad;->b(I)V

    goto :goto_6

    :cond_d
    const/16 v4, 0x12

    if-ne v3, v4, :cond_e

    invoke-virtual {p0}, Lcom/speedsoftware/a/ad;->e()I

    move-result v3

    ushr-int/lit8 v3, v3, 0xd

    add-int/lit8 v3, v3, 0x3

    invoke-virtual {p0, v11}, Lcom/speedsoftware/a/ad;->b(I)V

    :goto_7
    add-int/lit8 v4, v3, -0x1

    if-lez v3, :cond_3

    if-ge v0, v9, :cond_3

    add-int/lit8 v3, v0, 0x1

    aput-byte v1, v6, v0

    move v0, v3

    move v3, v4

    goto :goto_7

    :cond_e
    invoke-virtual {p0}, Lcom/speedsoftware/a/ad;->e()I

    move-result v3

    ushr-int/lit8 v3, v3, 0x9

    add-int/lit8 v3, v3, 0xb

    const/4 v4, 0x7

    invoke-virtual {p0, v4}, Lcom/speedsoftware/a/ad;->b(I)V

    goto :goto_7

    :cond_f
    iget-object v1, p0, Lcom/speedsoftware/a/ad;->I:[B

    aget-byte v3, v6, v0

    aput-byte v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3
.end method

.method private n()Z
    .locals 8

    const/4 v1, 0x0

    const/16 v7, 0x8

    invoke-virtual {p0}, Lcom/speedsoftware/a/ad;->d()I

    move-result v0

    shr-int/lit8 v3, v0, 0x8

    invoke-virtual {p0, v7}, Lcom/speedsoftware/a/ad;->a(I)V

    and-int/lit8 v0, v3, 0x7

    add-int/lit8 v0, v0, 0x1

    const/4 v2, 0x7

    if-ne v0, v2, :cond_1

    invoke-virtual {p0}, Lcom/speedsoftware/a/ad;->d()I

    move-result v0

    shr-int/lit8 v0, v0, 0x8

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {p0, v7}, Lcom/speedsoftware/a/ad;->a(I)V

    :cond_0
    :goto_0
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v2, v1

    :goto_1
    if-lt v2, v0, :cond_2

    invoke-direct {p0, v3, v4}, Lcom/speedsoftware/a/ad;->a(ILjava/util/List;)Z

    move-result v0

    :goto_2
    return v0

    :cond_1
    if-ne v0, v7, :cond_0

    invoke-virtual {p0}, Lcom/speedsoftware/a/ad;->d()I

    move-result v0

    const/16 v2, 0x10

    invoke-virtual {p0, v2}, Lcom/speedsoftware/a/ad;->a(I)V

    goto :goto_0

    :cond_2
    iget v5, p0, Lcom/speedsoftware/a/ad;->o:I

    iget v6, p0, Lcom/speedsoftware/a/ad;->f:I

    add-int/lit8 v6, v6, -0x1

    if-lt v5, v6, :cond_3

    invoke-virtual {p0}, Lcom/speedsoftware/a/ad;->a()Z

    move-result v5

    if-nez v5, :cond_3

    add-int/lit8 v5, v0, -0x1

    if-ge v2, v5, :cond_3

    move v0, v1

    goto :goto_2

    :cond_3
    invoke-virtual {p0}, Lcom/speedsoftware/a/ad;->d()I

    move-result v5

    shr-int/lit8 v5, v5, 0x8

    int-to-byte v5, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v7}, Lcom/speedsoftware/a/ad;->a(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method


# virtual methods
.method public final a(IZ)V
    .locals 10

    iget-object v0, p0, Lcom/speedsoftware/a/ad;->d:Lcom/speedsoftware/a/y;

    invoke-virtual {v0}, Lcom/speedsoftware/a/y;->c()Lcom/speedsoftware/a/bm;

    move-result-object v0

    invoke-virtual {v0}, Lcom/speedsoftware/a/bm;->n()B

    move-result v0

    const/16 v1, 0x30

    if-ne v0, v1, :cond_2

    const/high16 v0, 0x10000

    new-array v1, v0, [B

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/speedsoftware/a/ad;->d:Lcom/speedsoftware/a/y;

    const/4 v2, 0x0

    array-length v3, v1

    int-to-long v3, v3

    iget-wide v5, p0, Lcom/speedsoftware/a/ad;->g:J

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    long-to-int v3, v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/speedsoftware/a/y;->a([BII)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, -0x1

    if-eq v0, v2, :cond_2

    int-to-long v2, v0

    iget-wide v4, p0, Lcom/speedsoftware/a/ad;->g:J

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    :goto_1
    iget-object v2, p0, Lcom/speedsoftware/a/ad;->d:Lcom/speedsoftware/a/y;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Lcom/speedsoftware/a/y;->b([BII)V

    iget-wide v2, p0, Lcom/speedsoftware/a/ad;->g:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    iget-wide v2, p0, Lcom/speedsoftware/a/ad;->g:J

    int-to-long v4, v0

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/speedsoftware/a/ad;->g:J

    goto :goto_0

    :cond_1
    iget-wide v2, p0, Lcom/speedsoftware/a/ad;->g:J

    long-to-int v0, v2

    goto :goto_1

    :cond_2
    sparse-switch p1, :sswitch_data_0

    :cond_3
    :goto_2
    return-void

    :sswitch_0
    invoke-virtual {p0, p2}, Lcom/speedsoftware/a/ad;->b(Z)V

    goto :goto_2

    :sswitch_1
    invoke-virtual {p0, p2}, Lcom/speedsoftware/a/ad;->c(Z)V

    goto :goto_2

    :sswitch_2
    const/16 v0, 0x3c

    new-array v5, v0, [I

    const/16 v0, 0x3c

    new-array v6, v0, [B

    const/4 v0, 0x1

    aget v0, v5, v0

    if-nez v0, :cond_4

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_3
    sget-object v4, Lcom/speedsoftware/a/ad;->Q:[I

    array-length v4, v4

    if-lt v0, v4, :cond_9

    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/speedsoftware/a/ad;->M:Z

    iget-boolean v0, p0, Lcom/speedsoftware/a/ad;->b:Z

    if-nez v0, :cond_6

    invoke-virtual {p0, p2}, Lcom/speedsoftware/a/ad;->a(Z)V

    invoke-virtual {p0}, Lcom/speedsoftware/a/ad;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_5

    iget-boolean v0, p0, Lcom/speedsoftware/a/ad;->H:Z

    if-nez v0, :cond_6

    :cond_5
    invoke-direct {p0}, Lcom/speedsoftware/a/ad;->m()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_6
    iget-boolean v0, p0, Lcom/speedsoftware/a/ad;->N:Z

    if-nez v0, :cond_3

    :cond_7
    :goto_4
    iget v0, p0, Lcom/speedsoftware/a/ad;->j:I

    const v1, 0x3fffff

    and-int/2addr v0, v1

    iput v0, p0, Lcom/speedsoftware/a/ad;->j:I

    iget v0, p0, Lcom/speedsoftware/a/ad;->o:I

    iget v1, p0, Lcom/speedsoftware/a/ad;->a:I

    if-le v0, v1, :cond_8

    invoke-virtual {p0}, Lcom/speedsoftware/a/ad;->a()Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_8
    iget v0, p0, Lcom/speedsoftware/a/ad;->k:I

    iget v1, p0, Lcom/speedsoftware/a/ad;->j:I

    sub-int/2addr v0, v1

    const v1, 0x3fffff

    and-int/2addr v0, v1

    const/16 v1, 0x104

    if-ge v0, v1, :cond_b

    iget v0, p0, Lcom/speedsoftware/a/ad;->k:I

    iget v1, p0, Lcom/speedsoftware/a/ad;->j:I

    if-eq v0, v1, :cond_b

    invoke-direct {p0}, Lcom/speedsoftware/a/ad;->k()V

    iget-wide v0, p0, Lcom/speedsoftware/a/ad;->L:J

    iget-wide v2, p0, Lcom/speedsoftware/a/ad;->g:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_3

    iget-boolean v0, p0, Lcom/speedsoftware/a/ad;->b:Z

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/speedsoftware/a/ad;->M:Z

    goto :goto_2

    :cond_9
    sget-object v4, Lcom/speedsoftware/a/ad;->Q:[I

    aget v7, v4, v0

    const/4 v4, 0x0

    :goto_5
    if-lt v4, v7, :cond_a

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_a
    aput v3, v5, v1

    int-to-byte v8, v2

    aput-byte v8, v6, v1

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v1, v1, 0x1

    const/4 v8, 0x1

    shl-int/2addr v8, v2

    add-int/2addr v3, v8

    goto :goto_5

    :cond_b
    iget-object v0, p0, Lcom/speedsoftware/a/ad;->J:Lcom/speedsoftware/a/n;

    sget-object v1, Lcom/speedsoftware/a/n;->b:Lcom/speedsoftware/a/n;

    if-ne v0, v1, :cond_1e

    iget-object v0, p0, Lcom/speedsoftware/a/ad;->A:Lcom/speedsoftware/a/ax;

    invoke-virtual {v0}, Lcom/speedsoftware/a/ax;->b()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_d

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/speedsoftware/a/ad;->N:Z

    :cond_c
    :goto_6
    invoke-direct {p0}, Lcom/speedsoftware/a/ad;->k()V

    goto/16 :goto_2

    :cond_d
    iget v1, p0, Lcom/speedsoftware/a/ad;->B:I

    if-ne v0, v1, :cond_1d

    iget-object v1, p0, Lcom/speedsoftware/a/ad;->A:Lcom/speedsoftware/a/ax;

    invoke-virtual {v1}, Lcom/speedsoftware/a/ax;->b()I

    move-result v1

    if-nez v1, :cond_e

    invoke-direct {p0}, Lcom/speedsoftware/a/ad;->m()Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_6

    :cond_e
    const/4 v2, 0x2

    if-eq v1, v2, :cond_c

    const/4 v2, -0x1

    if-eq v1, v2, :cond_c

    const/4 v2, 0x3

    if-ne v1, v2, :cond_17

    iget-object v0, p0, Lcom/speedsoftware/a/ad;->A:Lcom/speedsoftware/a/ax;

    invoke-virtual {v0}, Lcom/speedsoftware/a/ax;->b()I

    move-result v2

    const/4 v0, -0x1

    if-ne v2, v0, :cond_f

    const/4 v0, 0x0

    :goto_7
    if-nez v0, :cond_7

    goto :goto_6

    :cond_f
    and-int/lit8 v0, v2, 0x7

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x7

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lcom/speedsoftware/a/ad;->A:Lcom/speedsoftware/a/ax;

    invoke-virtual {v0}, Lcom/speedsoftware/a/ax;->b()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_10

    const/4 v0, 0x0

    goto :goto_7

    :cond_10
    add-int/lit8 v0, v0, 0x7

    :cond_11
    :goto_8
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_9
    if-lt v1, v0, :cond_15

    invoke-direct {p0, v2, v3}, Lcom/speedsoftware/a/ad;->a(ILjava/util/List;)Z

    move-result v0

    goto :goto_7

    :cond_12
    const/16 v1, 0x8

    if-ne v0, v1, :cond_11

    iget-object v0, p0, Lcom/speedsoftware/a/ad;->A:Lcom/speedsoftware/a/ax;

    invoke-virtual {v0}, Lcom/speedsoftware/a/ax;->b()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_13

    const/4 v0, 0x0

    goto :goto_7

    :cond_13
    iget-object v1, p0, Lcom/speedsoftware/a/ad;->A:Lcom/speedsoftware/a/ax;

    invoke-virtual {v1}, Lcom/speedsoftware/a/ax;->b()I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_14

    const/4 v0, 0x0

    goto :goto_7

    :cond_14
    mul-int/lit16 v0, v0, 0x100

    add-int/2addr v0, v1

    goto :goto_8

    :cond_15
    iget-object v4, p0, Lcom/speedsoftware/a/ad;->A:Lcom/speedsoftware/a/ax;

    invoke-virtual {v4}, Lcom/speedsoftware/a/ax;->b()I

    move-result v4

    const/4 v7, -0x1

    if-ne v4, v7, :cond_16

    const/4 v0, 0x0

    goto :goto_7

    :cond_16
    int-to-byte v4, v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_17
    const/4 v2, 0x4

    if-ne v1, v2, :cond_1c

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    move v9, v0

    move v0, v1

    move v1, v2

    move v2, v3

    move v3, v9

    :goto_a
    const/4 v4, 0x4

    if-ge v3, v4, :cond_18

    if-eqz v0, :cond_19

    :cond_18
    if-nez v0, :cond_c

    add-int/lit8 v0, v1, 0x20

    add-int/lit8 v1, v2, 0x2

    invoke-direct {p0, v0, v1}, Lcom/speedsoftware/a/ad;->c(II)V

    goto/16 :goto_4

    :cond_19
    iget-object v4, p0, Lcom/speedsoftware/a/ad;->A:Lcom/speedsoftware/a/ax;

    invoke-virtual {v4}, Lcom/speedsoftware/a/ax;->b()I

    move-result v4

    const/4 v7, -0x1

    if-ne v4, v7, :cond_1a

    const/4 v0, 0x1

    :goto_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_1a
    const/4 v7, 0x3

    if-ne v3, v7, :cond_1b

    and-int/lit16 v1, v4, 0xff

    goto :goto_b

    :cond_1b
    shl-int/lit8 v2, v2, 0x8

    and-int/lit16 v4, v4, 0xff

    add-int/2addr v2, v4

    goto :goto_b

    :cond_1c
    const/4 v2, 0x5

    if-ne v1, v2, :cond_1d

    iget-object v0, p0, Lcom/speedsoftware/a/ad;->A:Lcom/speedsoftware/a/ax;

    invoke-virtual {v0}, Lcom/speedsoftware/a/ax;->b()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    add-int/lit8 v0, v0, 0x4

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/speedsoftware/a/ad;->c(II)V

    goto/16 :goto_4

    :cond_1d
    iget-object v1, p0, Lcom/speedsoftware/a/ad;->h:[B

    iget v2, p0, Lcom/speedsoftware/a/ad;->j:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/speedsoftware/a/ad;->j:I

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    goto/16 :goto_4

    :cond_1e
    iget-object v0, p0, Lcom/speedsoftware/a/ad;->r:Lcom/speedsoftware/a/bk;

    invoke-virtual {p0, v0}, Lcom/speedsoftware/a/ad;->a(Lcom/speedsoftware/a/am;)I

    move-result v0

    const/16 v1, 0x100

    if-ge v0, v1, :cond_1f

    iget-object v1, p0, Lcom/speedsoftware/a/ad;->h:[B

    iget v2, p0, Lcom/speedsoftware/a/ad;->j:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/speedsoftware/a/ad;->j:I

    int-to-byte v0, v0

    aput-byte v0, v1, v2

    goto/16 :goto_4

    :cond_1f
    const/16 v1, 0x10f

    if-lt v0, v1, :cond_27

    sget-object v1, Lcom/speedsoftware/a/ad;->w:[I

    add-int/lit16 v2, v0, -0x10f

    aget v0, v1, v2

    add-int/lit8 v0, v0, 0x3

    sget-object v1, Lcom/speedsoftware/a/ad;->x:[B

    aget-byte v1, v1, v2

    if-lez v1, :cond_20

    invoke-virtual {p0}, Lcom/speedsoftware/a/ad;->d()I

    move-result v2

    rsub-int/lit8 v3, v1, 0x10

    ushr-int/2addr v2, v3

    add-int/2addr v0, v2

    invoke-virtual {p0, v1}, Lcom/speedsoftware/a/ad;->a(I)V

    :cond_20
    iget-object v1, p0, Lcom/speedsoftware/a/ad;->s:Lcom/speedsoftware/a/aw;

    invoke-virtual {p0, v1}, Lcom/speedsoftware/a/ad;->a(Lcom/speedsoftware/a/am;)I

    move-result v2

    aget v1, v5, v2

    add-int/lit8 v1, v1, 0x1

    aget-byte v3, v6, v2

    if-lez v3, :cond_22

    const/16 v4, 0x9

    if-le v2, v4, :cond_26

    const/4 v2, 0x4

    if-le v3, v2, :cond_21

    invoke-virtual {p0}, Lcom/speedsoftware/a/ad;->d()I

    move-result v2

    rsub-int/lit8 v4, v3, 0x14

    ushr-int/2addr v2, v4

    shl-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    add-int/lit8 v2, v3, -0x4

    invoke-virtual {p0, v2}, Lcom/speedsoftware/a/ad;->a(I)V

    :cond_21
    iget v2, p0, Lcom/speedsoftware/a/ad;->P:I

    if-lez v2, :cond_24

    iget v2, p0, Lcom/speedsoftware/a/ad;->P:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/speedsoftware/a/ad;->P:I

    iget v2, p0, Lcom/speedsoftware/a/ad;->O:I

    add-int/2addr v1, v2

    :cond_22
    :goto_c
    const/16 v2, 0x2000

    if-lt v1, v2, :cond_23

    add-int/lit8 v0, v0, 0x1

    int-to-long v2, v1

    const-wide/32 v7, 0x40000

    cmp-long v2, v2, v7

    if-ltz v2, :cond_23

    add-int/lit8 v0, v0, 0x1

    :cond_23
    invoke-direct {p0, v1}, Lcom/speedsoftware/a/ad;->c(I)V

    invoke-direct {p0, v0, v1}, Lcom/speedsoftware/a/ad;->b(II)V

    invoke-direct {p0, v0, v1}, Lcom/speedsoftware/a/ad;->c(II)V

    goto/16 :goto_4

    :cond_24
    iget-object v2, p0, Lcom/speedsoftware/a/ad;->t:Lcom/speedsoftware/a/q;

    invoke-virtual {p0, v2}, Lcom/speedsoftware/a/ad;->a(Lcom/speedsoftware/a/am;)I

    move-result v2

    const/16 v3, 0x10

    if-ne v2, v3, :cond_25

    const/16 v2, 0xf

    iput v2, p0, Lcom/speedsoftware/a/ad;->P:I

    iget v2, p0, Lcom/speedsoftware/a/ad;->O:I

    add-int/2addr v1, v2

    goto :goto_c

    :cond_25
    add-int/2addr v1, v2

    iput v2, p0, Lcom/speedsoftware/a/ad;->O:I

    goto :goto_c

    :cond_26
    invoke-virtual {p0}, Lcom/speedsoftware/a/ad;->d()I

    move-result v2

    rsub-int/lit8 v4, v3, 0x10

    ushr-int/2addr v2, v4

    add-int/2addr v1, v2

    invoke-virtual {p0, v3}, Lcom/speedsoftware/a/ad;->a(I)V

    goto :goto_c

    :cond_27
    const/16 v1, 0x100

    if-ne v0, v1, :cond_2d

    invoke-virtual {p0}, Lcom/speedsoftware/a/ad;->d()I

    move-result v2

    const/4 v0, 0x0

    const v1, 0x8000

    and-int/2addr v1, v2

    if-eqz v1, :cond_29

    const/4 v1, 0x1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/speedsoftware/a/ad;->a(I)V

    move v9, v0

    move v0, v1

    move v1, v9

    :goto_d
    if-eqz v0, :cond_2b

    const/4 v0, 0x0

    :goto_e
    iput-boolean v0, p0, Lcom/speedsoftware/a/ad;->H:Z

    if-nez v1, :cond_28

    invoke-direct {p0}, Lcom/speedsoftware/a/ad;->m()Z

    move-result v0

    if-nez v0, :cond_2c

    :cond_28
    const/4 v0, 0x0

    :goto_f
    if-nez v0, :cond_7

    goto/16 :goto_6

    :cond_29
    const/4 v1, 0x1

    and-int/lit16 v0, v2, 0x4000

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    :goto_10
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/speedsoftware/a/ad;->a(I)V

    goto :goto_d

    :cond_2a
    const/4 v0, 0x0

    goto :goto_10

    :cond_2b
    const/4 v0, 0x1

    goto :goto_e

    :cond_2c
    const/4 v0, 0x1

    goto :goto_f

    :cond_2d
    const/16 v1, 0x101

    if-ne v0, v1, :cond_2e

    invoke-direct {p0}, Lcom/speedsoftware/a/ad;->n()Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_6

    :cond_2e
    const/16 v1, 0x102

    if-ne v0, v1, :cond_2f

    iget v0, p0, Lcom/speedsoftware/a/ad;->n:I

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/speedsoftware/a/ad;->n:I

    iget v1, p0, Lcom/speedsoftware/a/ad;->m:I

    invoke-direct {p0, v0, v1}, Lcom/speedsoftware/a/ad;->c(II)V

    goto/16 :goto_4

    :cond_2f
    const/16 v1, 0x107

    if-ge v0, v1, :cond_32

    add-int/lit16 v0, v0, -0x103

    iget-object v1, p0, Lcom/speedsoftware/a/ad;->i:[I

    aget v1, v1, v0

    :goto_11
    if-gtz v0, :cond_31

    iget-object v0, p0, Lcom/speedsoftware/a/ad;->i:[I

    const/4 v2, 0x0

    aput v1, v0, v2

    iget-object v0, p0, Lcom/speedsoftware/a/ad;->u:Lcom/speedsoftware/a/bh;

    invoke-virtual {p0, v0}, Lcom/speedsoftware/a/ad;->a(Lcom/speedsoftware/a/am;)I

    move-result v2

    sget-object v0, Lcom/speedsoftware/a/ad;->w:[I

    aget v0, v0, v2

    add-int/lit8 v0, v0, 0x2

    sget-object v3, Lcom/speedsoftware/a/ad;->x:[B

    aget-byte v2, v3, v2

    if-lez v2, :cond_30

    invoke-virtual {p0}, Lcom/speedsoftware/a/ad;->d()I

    move-result v3

    rsub-int/lit8 v4, v2, 0x10

    ushr-int/2addr v3, v4

    add-int/2addr v0, v3

    invoke-virtual {p0, v2}, Lcom/speedsoftware/a/ad;->a(I)V

    :cond_30
    invoke-direct {p0, v0, v1}, Lcom/speedsoftware/a/ad;->b(II)V

    invoke-direct {p0, v0, v1}, Lcom/speedsoftware/a/ad;->c(II)V

    goto/16 :goto_4

    :cond_31
    iget-object v2, p0, Lcom/speedsoftware/a/ad;->i:[I

    iget-object v3, p0, Lcom/speedsoftware/a/ad;->i:[I

    add-int/lit8 v4, v0, -0x1

    aget v3, v3, v4

    aput v3, v2, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    :cond_32
    const/16 v1, 0x110

    if-ge v0, v1, :cond_7

    sget-object v1, Lcom/speedsoftware/a/ad;->y:[I

    add-int/lit16 v2, v0, -0x107

    aget v0, v1, v2

    add-int/lit8 v0, v0, 0x1

    sget-object v1, Lcom/speedsoftware/a/ad;->z:[I

    aget v1, v1, v2

    if-lez v1, :cond_33

    invoke-virtual {p0}, Lcom/speedsoftware/a/ad;->d()I

    move-result v2

    rsub-int/lit8 v3, v1, 0x10

    ushr-int/2addr v2, v3

    add-int/2addr v0, v2

    invoke-virtual {p0, v1}, Lcom/speedsoftware/a/ad;->a(I)V

    :cond_33
    invoke-direct {p0, v0}, Lcom/speedsoftware/a/ad;->c(I)V

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/speedsoftware/a/ad;->b(II)V

    const/4 v1, 0x2

    invoke-direct {p0, v1, v0}, Lcom/speedsoftware/a/ad;->c(II)V

    goto/16 :goto_4

    nop

    :sswitch_data_0
    .sparse-switch
        0xf -> :sswitch_0
        0x14 -> :sswitch_1
        0x1a -> :sswitch_1
        0x1d -> :sswitch_2
        0x24 -> :sswitch_2
    .end sparse-switch
.end method

.method public final a(J)V
    .locals 1

    iput-wide p1, p0, Lcom/speedsoftware/a/ad;->g:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/speedsoftware/a/ad;->M:Z

    return-void
.end method

.method protected final a(Z)V
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    iput-boolean v2, p0, Lcom/speedsoftware/a/ad;->H:Z

    iget-object v0, p0, Lcom/speedsoftware/a/ad;->i:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    iput v2, p0, Lcom/speedsoftware/a/ad;->l:I

    iput v2, p0, Lcom/speedsoftware/a/ad;->m:I

    iput v2, p0, Lcom/speedsoftware/a/ad;->n:I

    iget-object v0, p0, Lcom/speedsoftware/a/ad;->I:[B

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([BB)V

    iput v2, p0, Lcom/speedsoftware/a/ad;->j:I

    iput v2, p0, Lcom/speedsoftware/a/ad;->k:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/speedsoftware/a/ad;->B:I

    invoke-direct {p0}, Lcom/speedsoftware/a/ad;->l()V

    :cond_0
    invoke-virtual {p0}, Lcom/speedsoftware/a/ad;->c()V

    iput-boolean v2, p0, Lcom/speedsoftware/a/ad;->N:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/speedsoftware/a/ad;->L:J

    iput v2, p0, Lcom/speedsoftware/a/ad;->f:I

    iput v2, p0, Lcom/speedsoftware/a/ad;->a:I

    invoke-virtual {p0, p1}, Lcom/speedsoftware/a/ad;->d(Z)V

    return-void
.end method

.method public final h()V
    .locals 2

    const/4 v1, 0x0

    const/high16 v0, 0x400000

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/speedsoftware/a/ad;->h:[B

    iput v1, p0, Lcom/speedsoftware/a/ad;->o:I

    invoke-virtual {p0, v1}, Lcom/speedsoftware/a/ad;->a(Z)V

    return-void
.end method

.method public final i()I
    .locals 3

    iget v0, p0, Lcom/speedsoftware/a/ad;->o:I

    const/16 v1, 0x7fe2

    if-le v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/speedsoftware/a/ad;->a()Z

    :cond_0
    iget-object v0, p0, Lcom/speedsoftware/a/ad;->q:[B

    iget v1, p0, Lcom/speedsoftware/a/ad;->o:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/speedsoftware/a/ad;->o:I

    aget-byte v0, v0, v1

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public final j()V
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/a/ad;->A:Lcom/speedsoftware/a/ax;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/speedsoftware/a/ad;->A:Lcom/speedsoftware/a/ax;

    invoke-virtual {v0}, Lcom/speedsoftware/a/ax;->a()Lcom/speedsoftware/a/e;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/speedsoftware/a/e;->b()V

    :cond_0
    return-void
.end method
