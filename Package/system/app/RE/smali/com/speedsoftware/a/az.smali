.class public final Lcom/speedsoftware/a/az;
.super Lcom/speedsoftware/a/g;


# static fields
.field private static synthetic g:[I

.field private static synthetic h:[I


# instance fields
.field private a:[B

.field private b:[I

.field private c:I

.field private d:I

.field private e:I

.field private f:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/speedsoftware/a/g;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/speedsoftware/a/az;->b:[I

    const v0, 0x17d7840

    iput v0, p0, Lcom/speedsoftware/a/az;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/speedsoftware/a/az;->a:[B

    return-void
.end method

.method private a(III)I
    .locals 5

    div-int/lit8 v0, p2, 0x8

    and-int/lit8 v1, p2, 0x7

    iget-object v2, p0, Lcom/speedsoftware/a/az;->a:[B

    add-int/lit8 v3, v0, 0x1

    add-int/2addr v0, p1

    aget-byte v0, v2, v0

    and-int/lit16 v0, v0, 0xff

    iget-object v2, p0, Lcom/speedsoftware/a/az;->a:[B

    add-int/lit8 v4, v3, 0x1

    add-int/2addr v3, p1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    iget-object v2, p0, Lcom/speedsoftware/a/az;->a:[B

    add-int/lit8 v3, v4, 0x1

    add-int/2addr v4, p1

    aget-byte v2, v2, v4

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v0, v2

    iget-object v2, p0, Lcom/speedsoftware/a/az;->a:[B

    add-int/2addr v3, p1

    aget-byte v2, v2, v3

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    or-int/2addr v0, v2

    ushr-int/2addr v0, v1

    const/4 v1, -0x1

    rsub-int/lit8 v2, p3, 0x20

    ushr-int/2addr v1, v2

    and-int/2addr v0, v1

    return v0
.end method

.method private a(Lcom/speedsoftware/a/d;)I
    .locals 2

    invoke-virtual {p1}, Lcom/speedsoftware/a/d;->c()Lcom/speedsoftware/a/k;

    move-result-object v0

    sget-object v1, Lcom/speedsoftware/a/k;->c:Lcom/speedsoftware/a/k;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/speedsoftware/a/d;->d()I

    move-result v0

    invoke-virtual {p1}, Lcom/speedsoftware/a/d;->a()I

    move-result v1

    add-int/2addr v0, v1

    const v1, 0x3ffff

    and-int/2addr v0, v1

    iget-object v1, p0, Lcom/speedsoftware/a/az;->a:[B

    invoke-static {v1, v0}, Lcom/speedsoftware/a/ac;->b([BI)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/speedsoftware/a/d;->d()I

    move-result v0

    iget-object v1, p0, Lcom/speedsoftware/a/az;->a:[B

    invoke-static {v1, v0}, Lcom/speedsoftware/a/ac;->b([BI)I

    move-result v0

    goto :goto_0
.end method

.method public static a(Lcom/speedsoftware/a/g;)I
    .locals 4

    const/4 v3, 0x2

    const/16 v2, 0x10

    invoke-virtual {p0}, Lcom/speedsoftware/a/g;->e()I

    move-result v0

    const v1, 0xc000

    and-int/2addr v1, v0

    sparse-switch v1, :sswitch_data_0

    invoke-virtual {p0, v3}, Lcom/speedsoftware/a/g;->b(I)V

    invoke-virtual {p0}, Lcom/speedsoftware/a/g;->e()I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    invoke-virtual {p0, v2}, Lcom/speedsoftware/a/g;->b(I)V

    invoke-virtual {p0}, Lcom/speedsoftware/a/g;->e()I

    move-result v1

    or-int/2addr v0, v1

    invoke-virtual {p0, v2}, Lcom/speedsoftware/a/g;->b(I)V

    :goto_0
    return v0

    :sswitch_0
    const/4 v1, 0x6

    invoke-virtual {p0, v1}, Lcom/speedsoftware/a/g;->b(I)V

    shr-int/lit8 v0, v0, 0xa

    and-int/lit8 v0, v0, 0xf

    goto :goto_0

    :sswitch_1
    and-int/lit16 v1, v0, 0x3c00

    if-nez v1, :cond_0

    shr-int/lit8 v0, v0, 0x2

    and-int/lit16 v0, v0, 0xff

    or-int/lit16 v0, v0, -0x100

    const/16 v1, 0xe

    invoke-virtual {p0, v1}, Lcom/speedsoftware/a/g;->b(I)V

    goto :goto_0

    :cond_0
    shr-int/lit8 v0, v0, 0x6

    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0xa

    invoke-virtual {p0, v1}, Lcom/speedsoftware/a/g;->b(I)V

    goto :goto_0

    :sswitch_2
    invoke-virtual {p0, v3}, Lcom/speedsoftware/a/g;->b(I)V

    invoke-virtual {p0}, Lcom/speedsoftware/a/g;->e()I

    move-result v0

    invoke-virtual {p0, v2}, Lcom/speedsoftware/a/g;->b(I)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4000 -> :sswitch_1
        0x8000 -> :sswitch_2
    .end sparse-switch
.end method

.method private a(Z[BI)I
    .locals 2

    if-eqz p1, :cond_1

    invoke-direct {p0, p2}, Lcom/speedsoftware/a/az;->a([B)Z

    move-result v0

    if-eqz v0, :cond_0

    aget-byte v0, p2, p3

    :goto_0
    return v0

    :cond_0
    aget-byte v0, p2, p3

    and-int/lit16 v0, v0, 0xff

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2}, Lcom/speedsoftware/a/az;->a([B)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p2, p3}, Lcom/speedsoftware/a/ac;->b([BI)I

    move-result v0

    goto :goto_0

    :cond_2
    aget-byte v0, p2, p3

    and-int/lit16 v0, v0, 0xff

    or-int/lit8 v0, v0, 0x0

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p3, 0x1

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p3, 0x2

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    shl-int/lit8 v0, v0, 0x8

    add-int/lit8 v1, p3, 0x3

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    goto :goto_0
.end method

.method private a(Lcom/speedsoftware/a/d;Z)V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/speedsoftware/a/az;->e()I

    move-result v0

    const v1, 0x8000

    and-int/2addr v1, v0

    if-eqz v1, :cond_0

    sget-object v1, Lcom/speedsoftware/a/k;->a:Lcom/speedsoftware/a/k;

    invoke-virtual {p1, v1}, Lcom/speedsoftware/a/d;->a(Lcom/speedsoftware/a/k;)V

    shr-int/lit8 v0, v0, 0xc

    and-int/lit8 v0, v0, 0x7

    invoke-virtual {p1, v0}, Lcom/speedsoftware/a/d;->b(I)V

    invoke-virtual {p1}, Lcom/speedsoftware/a/d;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/speedsoftware/a/d;->c(I)V

    invoke-virtual {p0, v3}, Lcom/speedsoftware/a/az;->b(I)V

    :goto_0
    return-void

    :cond_0
    const v1, 0xc000

    and-int/2addr v1, v0

    if-nez v1, :cond_2

    sget-object v1, Lcom/speedsoftware/a/k;->b:Lcom/speedsoftware/a/k;

    invoke-virtual {p1, v1}, Lcom/speedsoftware/a/d;->a(Lcom/speedsoftware/a/k;)V

    if-eqz p2, :cond_1

    shr-int/lit8 v0, v0, 0x6

    and-int/lit16 v0, v0, 0xff

    invoke-virtual {p1, v0}, Lcom/speedsoftware/a/d;->b(I)V

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/speedsoftware/a/az;->b(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/speedsoftware/a/az;->b(I)V

    invoke-static {p0}, Lcom/speedsoftware/a/az;->a(Lcom/speedsoftware/a/g;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/speedsoftware/a/d;->b(I)V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/speedsoftware/a/k;->c:Lcom/speedsoftware/a/k;

    invoke-virtual {p1, v1}, Lcom/speedsoftware/a/d;->a(Lcom/speedsoftware/a/k;)V

    and-int/lit16 v1, v0, 0x2000

    if-nez v1, :cond_3

    shr-int/lit8 v0, v0, 0xa

    and-int/lit8 v0, v0, 0x7

    invoke-virtual {p1, v0}, Lcom/speedsoftware/a/d;->b(I)V

    invoke-virtual {p1}, Lcom/speedsoftware/a/d;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/speedsoftware/a/d;->c(I)V

    invoke-virtual {p1, v2}, Lcom/speedsoftware/a/d;->a(I)V

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/speedsoftware/a/az;->b(I)V

    goto :goto_0

    :cond_3
    and-int/lit16 v1, v0, 0x1000

    if-nez v1, :cond_4

    shr-int/lit8 v0, v0, 0x9

    and-int/lit8 v0, v0, 0x7

    invoke-virtual {p1, v0}, Lcom/speedsoftware/a/d;->b(I)V

    invoke-virtual {p1}, Lcom/speedsoftware/a/d;->b()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/speedsoftware/a/d;->c(I)V

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/speedsoftware/a/az;->b(I)V

    :goto_1
    invoke-static {p0}, Lcom/speedsoftware/a/az;->a(Lcom/speedsoftware/a/g;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/speedsoftware/a/d;->a(I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1, v2}, Lcom/speedsoftware/a/d;->b(I)V

    invoke-virtual {p0, v3}, Lcom/speedsoftware/a/az;->b(I)V

    goto :goto_1
.end method

.method public static a(Ljava/util/Vector;II)V
    .locals 2

    add-int/lit8 v0, p1, 0x0

    and-int/lit16 v1, p2, 0xff

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, p1, 0x1

    ushr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, p1, 0x2

    ushr-int/lit8 v1, p2, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, p1, 0x3

    ushr-int/lit8 v1, p2, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private a(Z[BII)V
    .locals 2

    if-eqz p1, :cond_1

    invoke-direct {p0, p2}, Lcom/speedsoftware/a/az;->a([B)Z

    move-result v0

    if-eqz v0, :cond_0

    int-to-byte v0, p4

    aput-byte v0, p2, p3

    :goto_0
    return-void

    :cond_0
    and-int/lit16 v0, p4, 0xff

    int-to-byte v0, v0

    or-int/lit8 v0, v0, 0x0

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    goto :goto_0

    :cond_1
    invoke-direct {p0, p2}, Lcom/speedsoftware/a/az;->a([B)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p2, p3, p4}, Lcom/speedsoftware/a/ac;->a([BII)V

    goto :goto_0

    :cond_2
    ushr-int/lit8 v0, p4, 0x18

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p2, p3

    add-int/lit8 v0, p3, 0x1

    ushr-int/lit8 v1, p4, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x2

    ushr-int/lit8 v1, p4, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    add-int/lit8 v0, p3, 0x3

    and-int/lit16 v1, p4, 0xff

    int-to-byte v1, v1

    aput-byte v1, p2, v0

    goto :goto_0
.end method

.method private a([B)Z
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/a/az;->a:[B

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c(I)Z
    .locals 2

    const/4 v0, 0x1

    iget v1, p0, Lcom/speedsoftware/a/az;->e:I

    if-lt p1, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget v1, p0, Lcom/speedsoftware/a/az;->d:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/speedsoftware/a/az;->d:I

    if-gtz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iput p1, p0, Lcom/speedsoftware/a/az;->f:I

    goto :goto_0
.end method

.method private static synthetic h()[I
    .locals 3

    sget-object v0, Lcom/speedsoftware/a/az;->g:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/speedsoftware/a/be;->values()[Lcom/speedsoftware/a/be;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/speedsoftware/a/be;->L:Lcom/speedsoftware/a/be;

    invoke-virtual {v1}, Lcom/speedsoftware/a/be;->ordinal()I

    move-result v1

    const/16 v2, 0x26

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_36

    :goto_1
    :try_start_1
    sget-object v1, Lcom/speedsoftware/a/be;->c:Lcom/speedsoftware/a/be;

    invoke-virtual {v1}, Lcom/speedsoftware/a/be;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_35

    :goto_2
    :try_start_2
    sget-object v1, Lcom/speedsoftware/a/be;->S:Lcom/speedsoftware/a/be;

    invoke-virtual {v1}, Lcom/speedsoftware/a/be;->ordinal()I

    move-result v1

    const/16 v2, 0x2d

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_34

    :goto_3
    :try_start_3
    sget-object v1, Lcom/speedsoftware/a/be;->T:Lcom/speedsoftware/a/be;

    invoke-virtual {v1}, Lcom/speedsoftware/a/be;->ordinal()I

    move-result v1

    const/16 v2, 0x2e

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_33

    :goto_4
    :try_start_4
    sget-object v1, Lcom/speedsoftware/a/be;->k:Lcom/speedsoftware/a/be;

    invoke-virtual {v1}, Lcom/speedsoftware/a/be;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_32

    :goto_5
    :try_start_5
    sget-object v1, Lcom/speedsoftware/a/be;->v:Lcom/speedsoftware/a/be;

    invoke-virtual {v1}, Lcom/speedsoftware/a/be;->ordinal()I

    move-result v1

    const/16 v2, 0x16

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_31

    :goto_6
    :try_start_6
    sget-object v1, Lcom/speedsoftware/a/be;->b:Lcom/speedsoftware/a/be;

    invoke-virtual {v1}, Lcom/speedsoftware/a/be;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_30

    :goto_7
    :try_start_7
    sget-object v1, Lcom/speedsoftware/a/be;->Q:Lcom/speedsoftware/a/be;

    invoke-virtual {v1}, Lcom/speedsoftware/a/be;->ordinal()I

    move-result v1

    const/16 v2, 0x2b

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_2f

    :goto_8
    :try_start_8
    sget-object v1, Lcom/speedsoftware/a/be;->R:Lcom/speedsoftware/a/be;

    invoke-virtual {v1}, Lcom/speedsoftware/a/be;->ordinal()I

    move-result v1

    const/16 v2, 0x2c

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_2e

    :goto_9
    :try_start_9
    sget-object v1, Lcom/speedsoftware/a/be;->h:Lcom/speedsoftware/a/be;

    invoke-virtual {v1}, Lcom/speedsoftware/a/be;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_2d

    :goto_a
    :try_start_a
    sget-object v1, Lcom/speedsoftware/a/be;->Y:Lcom/speedsoftware/a/be;

    invoke-virtual {v1}, Lcom/speedsoftware/a/be;->ordinal()I

    move-result v1

    const/16 v2, 0x33

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_2c

    :goto_b
    :try_start_b
    sget-object v1, Lcom/speedsoftware/a/be;->Z:Lcom/speedsoftware/a/be;

    invoke-virtual {v1}, Lcom/speedsoftware/a/be;->ordinal()I

    move-result v1

    const/16 v2, 0x34

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_2b

    :goto_c
    :try_start_c
    sget-object v1, Lcom/speedsoftware/a/be;->K:Lcom/speedsoftware/a/be;

    invoke-virtual {v1}, Lcom/speedsoftware/a/be;->ordinal()I

    move-result v1

    const/16 v2, 0x25

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_2a

    :goto_d
    :try_start_d
    sget-object v1, Lcom/speedsoftware/a/be;->g:Lcom/speedsoftware/a/be;

    invoke-virtual {v1}, Lcom/speedsoftware/a/be;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_29

    :goto_e
    :try_start_e
    sget-object v1, Lcom/speedsoftware/a/be;->W:Lcom/speedsoftware/a/be;

    invoke-virtual {v1}, Lcom/speedsoftware/a/be;->ordinal()I

    move-result v1

    const/16 v2, 0x31

    aput v2, v0, v1
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_28

    :goto_f
    :try_start_f
    sget-object v1, Lcom/speedsoftware/a/be;->X:Lcom/speedsoftware/a/be;

    invoke-virtual {v1}, Lcom/speedsoftware/a/be;->ordinal()I

    move-result v1

    const/16 v2, 0x32

    aput v2, v0, v1
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_27

    :goto_10
    :try_start_10
    sget-object v1, Lcom/speedsoftware/a/be;->r:Lcom/speedsoftware/a/be;

    invoke-virtual {v1}, Lcom/speedsoftware/a/be;->ordinal()I

    move-result v1

    const/16 v2, 0x12

    aput v2, v0, v1
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_26

    :goto_11
    :try_start_11
    sget-object v1, Lcom/speedsoftware/a/be;->s:Lcom/speedsoftware/a/be;

    invoke-virtual {v1}, Lcom/speedsoftware/a/be;->ordinal()I

    move-result v1

    const/16 v2, 0x13

    aput v2, v0, v1
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_25

    :goto_12
    :try_start_12
    sget-object v1, Lcom/speedsoftware/a/be;->p:Lcom/speedsoftware/a/be;

    invoke-virtual {v1}, Lcom/speedsoftware/a/be;->ordinal()I

    move-result v1

    const/16 v2, 0x10

    aput v2, v0, v1
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_24

    :goto_13
    :try_start_13
    sget-object v1, Lcom/speedsoftware/a/be;->q:Lcom/speedsoftware/a/be;

    invoke-virtual {v1}, Lcom/speedsoftware/a/be;->ordinal()I

    move-result v1

    const/16 v2, 0x11

    aput v2, v0, v1
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_23

    :goto_14
    :try_start_14
    sget-object v1, Lcom/speedsoftware/a/be;->i:Lcom/speedsoftware/a/be;

    invoke-virtual {v1}, Lcom/speedsoftware/a/be;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_22

    :goto_15
    :try_start_15
    sget-object v1, Lcom/speedsoftware/a/be;->o:Lcom/speedsoftware/a/be;

    invoke-virtual {v1}, Lcom/speedsoftware/a/be;->ordinal()I

    move-result v1

    const/16 v2, 0xf

    aput v2, v0, v1
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_21

    :goto_16
    :try_start_16
    sget-object v1, Lcom/speedsoftware/a/be;->f:Lcom/speedsoftware/a/be;

    invoke-virtual {v1}, Lcom/speedsoftware/a/be;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_20

    :goto_17
    :try_start_17
    sget-object v1, Lcom/speedsoftware/a/be;->n:Lcom/speedsoftware/a/be;

    invoke-virtual {v1}, Lcom/speedsoftware/a/be;->ordinal()I

    move-result v1

    const/16 v2, 0xe

    aput v2, v0, v1
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_1f

    :goto_18
    :try_start_18
    sget-object v1, Lcom/speedsoftware/a/be;->e:Lcom/speedsoftware/a/be;

    invoke-virtual {v1}, Lcom/speedsoftware/a/be;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_1e

    :goto_19
    :try_start_19
    sget-object v1, Lcom/speedsoftware/a/be;->a:Lcom/speedsoftware/a/be;

    invoke-virtual {v1}, Lcom/speedsoftware/a/be;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_19
    .catch Ljava/lang/NoSuchFieldError; {:try_start_19 .. :try_end_19} :catch_1d

    :goto_1a
    :try_start_1a
    sget-object v1, Lcom/speedsoftware/a/be;->O:Lcom/speedsoftware/a/be;

    invoke-virtual {v1}, Lcom/speedsoftware/a/be;->ordinal()I

    move-result v1

    const/16 v2, 0x29

    aput v2, v0, v1
    :try_end_1a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1a .. :try_end_1a} :catch_1c

    :goto_1b
    :try_start_1b
    sget-object v1, Lcom/speedsoftware/a/be;->P:Lcom/speedsoftware/a/be;

    invoke-virtual {v1}, Lcom/speedsoftware/a/be;->ordinal()I

    move-result v1

    const/16 v2, 0x2a

    aput v2, v0, v1
    :try_end_1b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1b .. :try_end_1b} :catch_1b

    :goto_1c
    :try_start_1c
    sget-object v1, Lcom/speedsoftware/a/be;->H:Lcom/speedsoftware/a/be;

    invoke-virtual {v1}, Lcom/speedsoftware/a/be;->ordinal()I

    move-result v1

    const/16 v2, 0x22

    aput v2, v0, v1
    :try_end_1c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1c .. :try_end_1c} :catch_1a

    :goto_1d
    :try_start_1d
    sget-object v1, Lcom/speedsoftware/a/be;->G:Lcom/speedsoftware/a/be;

    invoke-virtual {v1}, Lcom/speedsoftware/a/be;->ordinal()I

    move-result v1

    const/16 v2, 0x21

    aput v2, v0, v1
    :try_end_1d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1d .. :try_end_1d} :catch_19

    :goto_1e
    :try_start_1e
    sget-object v1, Lcom/speedsoftware/a/be;->J:Lcom/speedsoftware/a/be;

    invoke-virtual {v1}, Lcom/speedsoftware/a/be;->ordinal()I

    move-result v1

    const/16 v2, 0x24

    aput v2, v0, v1
    :try_end_1e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1e .. :try_end_1e} :catch_18

    :goto_1f
    :try_start_1f
    sget-object v1, Lcom/speedsoftware/a/be;->B:Lcom/speedsoftware/a/be;

    invoke-virtual {v1}, Lcom/speedsoftware/a/be;->ordinal()I

    move-result v1

    const/16 v2, 0x1c

    aput v2, v0, v1
    :try_end_1f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1f .. :try_end_1f} :catch_17

    :goto_20
    :try_start_20
    sget-object v1, Lcom/speedsoftware/a/be;->aa:Lcom/speedsoftware/a/be;

    invoke-virtual {v1}, Lcom/speedsoftware/a/be;->ordinal()I

    move-result v1

    const/16 v2, 0x35

    aput v2, v0, v1
    :try_end_20
    .catch Ljava/lang/NoSuchFieldError; {:try_start_20 .. :try_end_20} :catch_16

    :goto_21
    :try_start_21
    sget-object v1, Lcom/speedsoftware/a/be;->ab:Lcom/speedsoftware/a/be;

    invoke-virtual {v1}, Lcom/speedsoftware/a/be;->ordinal()I

    move-result v1

    const/16 v2, 0x36

    aput v2, v0, v1
    :try_end_21
    .catch Ljava/lang/NoSuchFieldError; {:try_start_21 .. :try_end_21} :catch_15

    :goto_22
    :try_start_22
    sget-object v1, Lcom/speedsoftware/a/be;->x:Lcom/speedsoftware/a/be;

    invoke-virtual {v1}, Lcom/speedsoftware/a/be;->ordinal()I

    move-result v1

    const/16 v2, 0x18

    aput v2, v0, v1
    :try_end_22
    .catch Ljava/lang/NoSuchFieldError; {:try_start_22 .. :try_end_22} :catch_14

    :goto_23
    :try_start_23
    sget-object v1, Lcom/speedsoftware/a/be;->l:Lcom/speedsoftware/a/be;

    invoke-virtual {v1}, Lcom/speedsoftware/a/be;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_23
    .catch Ljava/lang/NoSuchFieldError; {:try_start_23 .. :try_end_23} :catch_13

    :goto_24
    :try_start_24
    sget-object v1, Lcom/speedsoftware/a/be;->u:Lcom/speedsoftware/a/be;

    invoke-virtual {v1}, Lcom/speedsoftware/a/be;->ordinal()I

    move-result v1

    const/16 v2, 0x15

    aput v2, v0, v1
    :try_end_24
    .catch Ljava/lang/NoSuchFieldError; {:try_start_24 .. :try_end_24} :catch_12

    :goto_25
    :try_start_25
    sget-object v1, Lcom/speedsoftware/a/be;->D:Lcom/speedsoftware/a/be;

    invoke-virtual {v1}, Lcom/speedsoftware/a/be;->ordinal()I

    move-result v1

    const/16 v2, 0x1e

    aput v2, v0, v1
    :try_end_25
    .catch Ljava/lang/NoSuchFieldError; {:try_start_25 .. :try_end_25} :catch_11

    :goto_26
    :try_start_26
    sget-object v1, Lcom/speedsoftware/a/be;->F:Lcom/speedsoftware/a/be;

    invoke-virtual {v1}, Lcom/speedsoftware/a/be;->ordinal()I

    move-result v1

    const/16 v2, 0x20

    aput v2, v0, v1
    :try_end_26
    .catch Ljava/lang/NoSuchFieldError; {:try_start_26 .. :try_end_26} :catch_10

    :goto_27
    :try_start_27
    sget-object v1, Lcom/speedsoftware/a/be;->N:Lcom/speedsoftware/a/be;

    invoke-virtual {v1}, Lcom/speedsoftware/a/be;->ordinal()I

    move-result v1

    const/16 v2, 0x28

    aput v2, v0, v1
    :try_end_27
    .catch Ljava/lang/NoSuchFieldError; {:try_start_27 .. :try_end_27} :catch_f

    :goto_28
    :try_start_28
    sget-object v1, Lcom/speedsoftware/a/be;->t:Lcom/speedsoftware/a/be;

    invoke-virtual {v1}, Lcom/speedsoftware/a/be;->ordinal()I

    move-result v1

    const/16 v2, 0x14

    aput v2, v0, v1
    :try_end_28
    .catch Ljava/lang/NoSuchFieldError; {:try_start_28 .. :try_end_28} :catch_e

    :goto_29
    :try_start_29
    sget-object v1, Lcom/speedsoftware/a/be;->C:Lcom/speedsoftware/a/be;

    invoke-virtual {v1}, Lcom/speedsoftware/a/be;->ordinal()I

    move-result v1

    const/16 v2, 0x1d

    aput v2, v0, v1
    :try_end_29
    .catch Ljava/lang/NoSuchFieldError; {:try_start_29 .. :try_end_29} :catch_d

    :goto_2a
    :try_start_2a
    sget-object v1, Lcom/speedsoftware/a/be;->E:Lcom/speedsoftware/a/be;

    invoke-virtual {v1}, Lcom/speedsoftware/a/be;->ordinal()I

    move-result v1

    const/16 v2, 0x1f

    aput v2, v0, v1
    :try_end_2a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2a .. :try_end_2a} :catch_c

    :goto_2b
    :try_start_2b
    sget-object v1, Lcom/speedsoftware/a/be;->w:Lcom/speedsoftware/a/be;

    invoke-virtual {v1}, Lcom/speedsoftware/a/be;->ordinal()I

    move-result v1

    const/16 v2, 0x17

    aput v2, v0, v1
    :try_end_2b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2b .. :try_end_2b} :catch_b

    :goto_2c
    :try_start_2c
    sget-object v1, Lcom/speedsoftware/a/be;->A:Lcom/speedsoftware/a/be;

    invoke-virtual {v1}, Lcom/speedsoftware/a/be;->ordinal()I

    move-result v1

    const/16 v2, 0x1b

    aput v2, v0, v1
    :try_end_2c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2c .. :try_end_2c} :catch_a

    :goto_2d
    :try_start_2d
    sget-object v1, Lcom/speedsoftware/a/be;->M:Lcom/speedsoftware/a/be;

    invoke-virtual {v1}, Lcom/speedsoftware/a/be;->ordinal()I

    move-result v1

    const/16 v2, 0x27

    aput v2, v0, v1
    :try_end_2d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2d .. :try_end_2d} :catch_9

    :goto_2e
    :try_start_2e
    sget-object v1, Lcom/speedsoftware/a/be;->y:Lcom/speedsoftware/a/be;

    invoke-virtual {v1}, Lcom/speedsoftware/a/be;->ordinal()I

    move-result v1

    const/16 v2, 0x19

    aput v2, v0, v1
    :try_end_2e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2e .. :try_end_2e} :catch_8

    :goto_2f
    :try_start_2f
    sget-object v1, Lcom/speedsoftware/a/be;->z:Lcom/speedsoftware/a/be;

    invoke-virtual {v1}, Lcom/speedsoftware/a/be;->ordinal()I

    move-result v1

    const/16 v2, 0x1a

    aput v2, v0, v1
    :try_end_2f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2f .. :try_end_2f} :catch_7

    :goto_30
    :try_start_30
    sget-object v1, Lcom/speedsoftware/a/be;->ac:Lcom/speedsoftware/a/be;

    invoke-virtual {v1}, Lcom/speedsoftware/a/be;->ordinal()I

    move-result v1

    const/16 v2, 0x37

    aput v2, v0, v1
    :try_end_30
    .catch Ljava/lang/NoSuchFieldError; {:try_start_30 .. :try_end_30} :catch_6

    :goto_31
    :try_start_31
    sget-object v1, Lcom/speedsoftware/a/be;->d:Lcom/speedsoftware/a/be;

    invoke-virtual {v1}, Lcom/speedsoftware/a/be;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_31
    .catch Ljava/lang/NoSuchFieldError; {:try_start_31 .. :try_end_31} :catch_5

    :goto_32
    :try_start_32
    sget-object v1, Lcom/speedsoftware/a/be;->U:Lcom/speedsoftware/a/be;

    invoke-virtual {v1}, Lcom/speedsoftware/a/be;->ordinal()I

    move-result v1

    const/16 v2, 0x2f

    aput v2, v0, v1
    :try_end_32
    .catch Ljava/lang/NoSuchFieldError; {:try_start_32 .. :try_end_32} :catch_4

    :goto_33
    :try_start_33
    sget-object v1, Lcom/speedsoftware/a/be;->V:Lcom/speedsoftware/a/be;

    invoke-virtual {v1}, Lcom/speedsoftware/a/be;->ordinal()I

    move-result v1

    const/16 v2, 0x30

    aput v2, v0, v1
    :try_end_33
    .catch Ljava/lang/NoSuchFieldError; {:try_start_33 .. :try_end_33} :catch_3

    :goto_34
    :try_start_34
    sget-object v1, Lcom/speedsoftware/a/be;->m:Lcom/speedsoftware/a/be;

    invoke-virtual {v1}, Lcom/speedsoftware/a/be;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_34
    .catch Ljava/lang/NoSuchFieldError; {:try_start_34 .. :try_end_34} :catch_2

    :goto_35
    :try_start_35
    sget-object v1, Lcom/speedsoftware/a/be;->I:Lcom/speedsoftware/a/be;

    invoke-virtual {v1}, Lcom/speedsoftware/a/be;->ordinal()I

    move-result v1

    const/16 v2, 0x23

    aput v2, v0, v1
    :try_end_35
    .catch Ljava/lang/NoSuchFieldError; {:try_start_35 .. :try_end_35} :catch_1

    :goto_36
    :try_start_36
    sget-object v1, Lcom/speedsoftware/a/be;->j:Lcom/speedsoftware/a/be;

    invoke-virtual {v1}, Lcom/speedsoftware/a/be;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_36
    .catch Ljava/lang/NoSuchFieldError; {:try_start_36 .. :try_end_36} :catch_0

    :goto_37
    sput-object v0, Lcom/speedsoftware/a/az;->g:[I

    goto/16 :goto_0

    :catch_0
    move-exception v1

    goto :goto_37

    :catch_1
    move-exception v1

    goto :goto_36

    :catch_2
    move-exception v1

    goto :goto_35

    :catch_3
    move-exception v1

    goto :goto_34

    :catch_4
    move-exception v1

    goto :goto_33

    :catch_5
    move-exception v1

    goto :goto_32

    :catch_6
    move-exception v1

    goto :goto_31

    :catch_7
    move-exception v1

    goto :goto_30

    :catch_8
    move-exception v1

    goto :goto_2f

    :catch_9
    move-exception v1

    goto :goto_2e

    :catch_a
    move-exception v1

    goto :goto_2d

    :catch_b
    move-exception v1

    goto/16 :goto_2c

    :catch_c
    move-exception v1

    goto/16 :goto_2b

    :catch_d
    move-exception v1

    goto/16 :goto_2a

    :catch_e
    move-exception v1

    goto/16 :goto_29

    :catch_f
    move-exception v1

    goto/16 :goto_28

    :catch_10
    move-exception v1

    goto/16 :goto_27

    :catch_11
    move-exception v1

    goto/16 :goto_26

    :catch_12
    move-exception v1

    goto/16 :goto_25

    :catch_13
    move-exception v1

    goto/16 :goto_24

    :catch_14
    move-exception v1

    goto/16 :goto_23

    :catch_15
    move-exception v1

    goto/16 :goto_22

    :catch_16
    move-exception v1

    goto/16 :goto_21

    :catch_17
    move-exception v1

    goto/16 :goto_20

    :catch_18
    move-exception v1

    goto/16 :goto_1f

    :catch_19
    move-exception v1

    goto/16 :goto_1e

    :catch_1a
    move-exception v1

    goto/16 :goto_1d

    :catch_1b
    move-exception v1

    goto/16 :goto_1c

    :catch_1c
    move-exception v1

    goto/16 :goto_1b

    :catch_1d
    move-exception v1

    goto/16 :goto_1a

    :catch_1e
    move-exception v1

    goto/16 :goto_19

    :catch_1f
    move-exception v1

    goto/16 :goto_18

    :catch_20
    move-exception v1

    goto/16 :goto_17

    :catch_21
    move-exception v1

    goto/16 :goto_16

    :catch_22
    move-exception v1

    goto/16 :goto_15

    :catch_23
    move-exception v1

    goto/16 :goto_14

    :catch_24
    move-exception v1

    goto/16 :goto_13

    :catch_25
    move-exception v1

    goto/16 :goto_12

    :catch_26
    move-exception v1

    goto/16 :goto_11

    :catch_27
    move-exception v1

    goto/16 :goto_10

    :catch_28
    move-exception v1

    goto/16 :goto_f

    :catch_29
    move-exception v1

    goto/16 :goto_e

    :catch_2a
    move-exception v1

    goto/16 :goto_d

    :catch_2b
    move-exception v1

    goto/16 :goto_c

    :catch_2c
    move-exception v1

    goto/16 :goto_b

    :catch_2d
    move-exception v1

    goto/16 :goto_a

    :catch_2e
    move-exception v1

    goto/16 :goto_9

    :catch_2f
    move-exception v1

    goto/16 :goto_8

    :catch_30
    move-exception v1

    goto/16 :goto_7

    :catch_31
    move-exception v1

    goto/16 :goto_6

    :catch_32
    move-exception v1

    goto/16 :goto_5

    :catch_33
    move-exception v1

    goto/16 :goto_4

    :catch_34
    move-exception v1

    goto/16 :goto_3

    :catch_35
    move-exception v1

    goto/16 :goto_2

    :catch_36
    move-exception v1

    goto/16 :goto_1
.end method

.method private static synthetic i()[I
    .locals 3

    sget-object v0, Lcom/speedsoftware/a/az;->h:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/speedsoftware/a/av;->values()[Lcom/speedsoftware/a/av;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/speedsoftware/a/av;->f:Lcom/speedsoftware/a/av;

    invoke-virtual {v1}, Lcom/speedsoftware/a/av;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_7

    :goto_1
    :try_start_1
    sget-object v1, Lcom/speedsoftware/a/av;->g:Lcom/speedsoftware/a/av;

    invoke-virtual {v1}, Lcom/speedsoftware/a/av;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_6

    :goto_2
    :try_start_2
    sget-object v1, Lcom/speedsoftware/a/av;->b:Lcom/speedsoftware/a/av;

    invoke-virtual {v1}, Lcom/speedsoftware/a/av;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_5

    :goto_3
    :try_start_3
    sget-object v1, Lcom/speedsoftware/a/av;->c:Lcom/speedsoftware/a/av;

    invoke-virtual {v1}, Lcom/speedsoftware/a/av;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_4

    :goto_4
    :try_start_4
    sget-object v1, Lcom/speedsoftware/a/av;->d:Lcom/speedsoftware/a/av;

    invoke-virtual {v1}, Lcom/speedsoftware/a/av;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_3

    :goto_5
    :try_start_5
    sget-object v1, Lcom/speedsoftware/a/av;->a:Lcom/speedsoftware/a/av;

    invoke-virtual {v1}, Lcom/speedsoftware/a/av;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_2

    :goto_6
    :try_start_6
    sget-object v1, Lcom/speedsoftware/a/av;->e:Lcom/speedsoftware/a/av;

    invoke-virtual {v1}, Lcom/speedsoftware/a/av;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_1

    :goto_7
    :try_start_7
    sget-object v1, Lcom/speedsoftware/a/av;->h:Lcom/speedsoftware/a/av;

    invoke-virtual {v1}, Lcom/speedsoftware/a/av;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_0

    :goto_8
    sput-object v0, Lcom/speedsoftware/a/az;->h:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_8

    :catch_1
    move-exception v1

    goto :goto_7

    :catch_2
    move-exception v1

    goto :goto_6

    :catch_3
    move-exception v1

    goto :goto_5

    :catch_4
    move-exception v1

    goto :goto_4

    :catch_5
    move-exception v1

    goto :goto_3

    :catch_6
    move-exception v1

    goto :goto_2

    :catch_7
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/a/az;->a:[B

    if-nez v0, :cond_0

    const v0, 0x40004

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/speedsoftware/a/az;->a:[B

    :cond_0
    return-void
.end method

.method public final a(I[BII)V
    .locals 5

    const/high16 v4, 0x40000

    if-ge p1, v4, :cond_0

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    sub-int/2addr v1, p3

    invoke-static {v1, p4}, Ljava/lang/Math;->min(II)I

    move-result v1

    if-lt v0, v1, :cond_1

    :cond_0
    return-void

    :cond_1
    sub-int v1, v4, p1

    if-lt v1, v0, :cond_0

    iget-object v1, p0, Lcom/speedsoftware/a/az;->a:[B

    add-int v2, p1, v0

    add-int v3, p3, v0

    aget-byte v3, p2, v3

    aput-byte v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final a(Lcom/speedsoftware/a/aj;)V
    .locals 28

    const/4 v2, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/speedsoftware/a/aj;->g()[I

    move-result-object v3

    array-length v3, v3

    if-lt v2, v3, :cond_3

    invoke-virtual/range {p1 .. p1}, Lcom/speedsoftware/a/aj;->f()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    const/16 v3, 0x2000

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    and-int/lit8 v2, v2, -0x1

    int-to-long v4, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v4, v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    int-to-long v6, v3

    cmp-long v2, v6, v4

    if-ltz v2, :cond_4

    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/speedsoftware/a/aj;->h()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v6, 0x2000

    sub-long/2addr v6, v4

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    const-wide/16 v6, -0x1

    and-long/2addr v6, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v6, v2

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    move v3, v2

    :goto_2
    int-to-long v8, v3

    cmp-long v2, v8, v6

    if-ltz v2, :cond_5

    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/speedsoftware/a/az;->b:[I

    const/4 v3, 0x7

    const/high16 v4, 0x40000

    aput v4, v2, v3

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/speedsoftware/a/az;->c:I

    invoke-virtual/range {p1 .. p1}, Lcom/speedsoftware/a/aj;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual/range {p1 .. p1}, Lcom/speedsoftware/a/aj;->a()Ljava/util/List;

    move-result-object v2

    move-object v3, v2

    :goto_3
    invoke-virtual/range {p1 .. p1}, Lcom/speedsoftware/a/aj;->c()I

    move-result v2

    const v4, 0x17d7840

    move-object/from16 v0, p0

    iput v4, v0, Lcom/speedsoftware/a/az;->d:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/speedsoftware/a/az;->e:I

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/speedsoftware/a/az;->f:I

    :goto_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/speedsoftware/a/az;->f:I

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/speedsoftware/a/bi;

    invoke-virtual {v2}, Lcom/speedsoftware/a/bi;->b()Lcom/speedsoftware/a/d;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/speedsoftware/a/az;->a(Lcom/speedsoftware/a/d;)I

    move-result v6

    invoke-virtual {v2}, Lcom/speedsoftware/a/bi;->c()Lcom/speedsoftware/a/d;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lcom/speedsoftware/a/az;->a(Lcom/speedsoftware/a/d;)I

    move-result v4

    invoke-static {}, Lcom/speedsoftware/a/az;->h()[I

    move-result-object v5

    invoke-virtual {v2}, Lcom/speedsoftware/a/bi;->d()Lcom/speedsoftware/a/be;

    move-result-object v7

    invoke-virtual {v7}, Lcom/speedsoftware/a/be;->ordinal()I

    move-result v7

    aget v5, v5, v7

    packed-switch v5, :pswitch_data_0

    :cond_2
    :goto_5
    :pswitch_0
    move-object/from16 v0, p0

    iget v2, v0, Lcom/speedsoftware/a/az;->f:I

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/speedsoftware/a/az;->f:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/speedsoftware/a/az;->d:I

    add-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    iput v2, v0, Lcom/speedsoftware/a/az;->d:I

    goto :goto_4

    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/speedsoftware/a/az;->b:[I

    invoke-virtual/range {p1 .. p1}, Lcom/speedsoftware/a/aj;->g()[I

    move-result-object v4

    aget v4, v4, v2

    aput v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/speedsoftware/a/az;->a:[B

    const v2, 0x3c000

    add-int v7, v2, v3

    invoke-virtual/range {p1 .. p1}, Lcom/speedsoftware/a/aj;->f()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v6, v7

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/speedsoftware/a/az;->a:[B

    const v2, 0x3c000

    long-to-int v9, v4

    add-int/2addr v2, v9

    add-int v9, v2, v3

    invoke-virtual/range {p1 .. p1}, Lcom/speedsoftware/a/aj;->h()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v8, v9

    add-int/lit8 v2, v3, 0x1

    move v3, v2

    goto/16 :goto_2

    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/speedsoftware/a/aj;->b()Ljava/util/List;

    move-result-object v2

    move-object v3, v2

    goto/16 :goto_3

    :pswitch_1
    invoke-virtual {v2}, Lcom/speedsoftware/a/bi;->a()Z

    move-result v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/speedsoftware/a/az;->a:[B

    invoke-virtual {v2}, Lcom/speedsoftware/a/bi;->a()Z

    move-result v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v8, v4}, Lcom/speedsoftware/a/az;->a(Z[BI)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v7, v6, v2}, Lcom/speedsoftware/a/az;->a(Z[BII)V

    goto/16 :goto_5

    :pswitch_2
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/speedsoftware/a/az;->a:[B

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8, v4}, Lcom/speedsoftware/a/az;->a(Z[BI)I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5, v6, v4}, Lcom/speedsoftware/a/az;->a(Z[BII)V

    goto/16 :goto_5

    :pswitch_3
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/speedsoftware/a/az;->a:[B

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8, v4}, Lcom/speedsoftware/a/az;->a(Z[BI)I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5, v6, v4}, Lcom/speedsoftware/a/az;->a(Z[BII)V

    goto/16 :goto_5

    :pswitch_4
    invoke-virtual {v2}, Lcom/speedsoftware/a/bi;->a()Z

    move-result v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v7, v6}, Lcom/speedsoftware/a/az;->a(Z[BI)I

    move-result v5

    invoke-virtual {v2}, Lcom/speedsoftware/a/bi;->a()Z

    move-result v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6, v4}, Lcom/speedsoftware/a/az;->a(Z[BI)I

    move-result v2

    sub-int v2, v5, v2

    if-nez v2, :cond_7

    sget-object v2, Lcom/speedsoftware/a/au;->b:Lcom/speedsoftware/a/au;

    invoke-virtual {v2}, Lcom/speedsoftware/a/au;->a()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/speedsoftware/a/az;->c:I

    goto/16 :goto_5

    :cond_7
    if-le v2, v5, :cond_8

    const/4 v2, 0x1

    :goto_6
    move-object/from16 v0, p0

    iput v2, v0, Lcom/speedsoftware/a/az;->c:I

    goto/16 :goto_5

    :cond_8
    sget-object v4, Lcom/speedsoftware/a/au;->c:Lcom/speedsoftware/a/au;

    invoke-virtual {v4}, Lcom/speedsoftware/a/au;->a()I

    move-result v4

    and-int/2addr v2, v4

    goto :goto_6

    :pswitch_5
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5, v6}, Lcom/speedsoftware/a/az;->a(Z[BI)I

    move-result v2

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v4}, Lcom/speedsoftware/a/az;->a(Z[BI)I

    move-result v4

    sub-int v4, v2, v4

    if-nez v4, :cond_9

    sget-object v2, Lcom/speedsoftware/a/au;->b:Lcom/speedsoftware/a/au;

    invoke-virtual {v2}, Lcom/speedsoftware/a/au;->a()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/speedsoftware/a/az;->c:I

    goto/16 :goto_5

    :cond_9
    if-le v4, v2, :cond_a

    const/4 v2, 0x1

    :goto_7
    move-object/from16 v0, p0

    iput v2, v0, Lcom/speedsoftware/a/az;->c:I

    goto/16 :goto_5

    :cond_a
    sget-object v2, Lcom/speedsoftware/a/au;->c:Lcom/speedsoftware/a/au;

    invoke-virtual {v2}, Lcom/speedsoftware/a/au;->a()I

    move-result v2

    and-int/2addr v2, v4

    goto :goto_7

    :pswitch_6
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5, v6}, Lcom/speedsoftware/a/az;->a(Z[BI)I

    move-result v2

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v4}, Lcom/speedsoftware/a/az;->a(Z[BI)I

    move-result v4

    sub-int v4, v2, v4

    if-nez v4, :cond_b

    sget-object v2, Lcom/speedsoftware/a/au;->b:Lcom/speedsoftware/a/au;

    invoke-virtual {v2}, Lcom/speedsoftware/a/au;->a()I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/speedsoftware/a/az;->c:I

    goto/16 :goto_5

    :cond_b
    if-le v4, v2, :cond_c

    const/4 v2, 0x1

    :goto_8
    move-object/from16 v0, p0

    iput v2, v0, Lcom/speedsoftware/a/az;->c:I

    goto/16 :goto_5

    :cond_c
    sget-object v2, Lcom/speedsoftware/a/au;->c:Lcom/speedsoftware/a/au;

    invoke-virtual {v2}, Lcom/speedsoftware/a/au;->a()I

    move-result v2

    and-int/2addr v2, v4

    goto :goto_8

    :pswitch_7
    invoke-virtual {v2}, Lcom/speedsoftware/a/bi;->a()Z

    move-result v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v7, v6}, Lcom/speedsoftware/a/az;->a(Z[BI)I

    move-result v7

    int-to-long v8, v7

    invoke-virtual {v2}, Lcom/speedsoftware/a/bi;->a()Z

    move-result v5

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v10, v4}, Lcom/speedsoftware/a/az;->a(Z[BI)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v4, v8

    const-wide/16 v8, -0x1

    and-long/2addr v4, v8

    long-to-int v5, v4

    invoke-virtual {v2}, Lcom/speedsoftware/a/bi;->a()Z

    move-result v4

    if-eqz v4, :cond_10

    and-int/lit16 v5, v5, 0xff

    if-ge v5, v7, :cond_d

    const/4 v4, 0x1

    :goto_9
    move-object/from16 v0, p0

    iput v4, v0, Lcom/speedsoftware/a/az;->c:I

    move v4, v5

    :goto_a
    invoke-virtual {v2}, Lcom/speedsoftware/a/bi;->a()Z

    move-result v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5, v6, v4}, Lcom/speedsoftware/a/az;->a(Z[BII)V

    goto/16 :goto_5

    :cond_d
    if-nez v5, :cond_e

    sget-object v4, Lcom/speedsoftware/a/au;->b:Lcom/speedsoftware/a/au;

    invoke-virtual {v4}, Lcom/speedsoftware/a/au;->a()I

    move-result v4

    goto :goto_9

    :cond_e
    and-int/lit16 v4, v5, 0x80

    if-eqz v4, :cond_f

    sget-object v4, Lcom/speedsoftware/a/au;->c:Lcom/speedsoftware/a/au;

    invoke-virtual {v4}, Lcom/speedsoftware/a/au;->a()I

    move-result v4

    goto :goto_9

    :cond_f
    const/4 v4, 0x0

    goto :goto_9

    :cond_10
    if-ge v5, v7, :cond_11

    const/4 v4, 0x1

    :goto_b
    move-object/from16 v0, p0

    iput v4, v0, Lcom/speedsoftware/a/az;->c:I

    move v4, v5

    goto :goto_a

    :cond_11
    if-nez v5, :cond_12

    sget-object v4, Lcom/speedsoftware/a/au;->b:Lcom/speedsoftware/a/au;

    invoke-virtual {v4}, Lcom/speedsoftware/a/au;->a()I

    move-result v4

    goto :goto_b

    :cond_12
    sget-object v4, Lcom/speedsoftware/a/au;->c:Lcom/speedsoftware/a/au;

    invoke-virtual {v4}, Lcom/speedsoftware/a/au;->a()I

    move-result v4

    and-int/2addr v4, v5

    goto :goto_b

    :pswitch_8
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/speedsoftware/a/az;->a:[B

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8, v6}, Lcom/speedsoftware/a/az;->a(Z[BI)I

    move-result v7

    int-to-long v7, v7

    const-wide/16 v9, -0x1

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12, v4}, Lcom/speedsoftware/a/az;->a(Z[BI)I

    move-result v4

    int-to-long v11, v4

    add-long/2addr v9, v11

    and-long/2addr v7, v9

    const-wide/16 v9, -0x1

    and-long/2addr v7, v9

    long-to-int v4, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5, v6, v4}, Lcom/speedsoftware/a/az;->a(Z[BII)V

    goto/16 :goto_5

    :pswitch_9
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/speedsoftware/a/az;->a:[B

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8, v6}, Lcom/speedsoftware/a/az;->a(Z[BI)I

    move-result v7

    int-to-long v7, v7

    const-wide/16 v9, -0x1

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12, v4}, Lcom/speedsoftware/a/az;->a(Z[BI)I

    move-result v4

    int-to-long v11, v4

    add-long/2addr v9, v11

    and-long/2addr v7, v9

    const-wide/16 v9, -0x1

    and-long/2addr v7, v9

    long-to-int v4, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5, v6, v4}, Lcom/speedsoftware/a/az;->a(Z[BII)V

    goto/16 :goto_5

    :pswitch_a
    invoke-virtual {v2}, Lcom/speedsoftware/a/bi;->a()Z

    move-result v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v7, v6}, Lcom/speedsoftware/a/az;->a(Z[BI)I

    move-result v5

    int-to-long v7, v5

    const-wide/16 v9, -0x1

    invoke-virtual {v2}, Lcom/speedsoftware/a/bi;->a()Z

    move-result v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12, v4}, Lcom/speedsoftware/a/az;->a(Z[BI)I

    move-result v4

    int-to-long v11, v4

    sub-long/2addr v9, v11

    and-long/2addr v7, v9

    const-wide/16 v9, -0x1

    and-long/2addr v7, v9

    long-to-int v7, v7

    if-nez v7, :cond_13

    sget-object v4, Lcom/speedsoftware/a/au;->b:Lcom/speedsoftware/a/au;

    invoke-virtual {v4}, Lcom/speedsoftware/a/au;->a()I

    move-result v4

    :goto_c
    move-object/from16 v0, p0

    iput v4, v0, Lcom/speedsoftware/a/az;->c:I

    invoke-virtual {v2}, Lcom/speedsoftware/a/bi;->a()Z

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v6, v7}, Lcom/speedsoftware/a/az;->a(Z[BII)V

    goto/16 :goto_5

    :cond_13
    if-le v7, v5, :cond_14

    const/4 v4, 0x1

    goto :goto_c

    :cond_14
    sget-object v4, Lcom/speedsoftware/a/au;->c:Lcom/speedsoftware/a/au;

    invoke-virtual {v4}, Lcom/speedsoftware/a/au;->a()I

    move-result v4

    and-int/2addr v4, v7

    goto :goto_c

    :pswitch_b
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/speedsoftware/a/az;->a:[B

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8, v6}, Lcom/speedsoftware/a/az;->a(Z[BI)I

    move-result v7

    int-to-long v7, v7

    const-wide/16 v9, -0x1

    const/4 v11, 0x1

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12, v4}, Lcom/speedsoftware/a/az;->a(Z[BI)I

    move-result v4

    int-to-long v11, v4

    sub-long/2addr v9, v11

    and-long/2addr v7, v9

    const-wide/16 v9, -0x1

    and-long/2addr v7, v9

    long-to-int v4, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5, v6, v4}, Lcom/speedsoftware/a/az;->a(Z[BII)V

    goto/16 :goto_5

    :pswitch_c
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/speedsoftware/a/az;->a:[B

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8, v6}, Lcom/speedsoftware/a/az;->a(Z[BI)I

    move-result v7

    int-to-long v7, v7

    const-wide/16 v9, -0x1

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v11, v12, v4}, Lcom/speedsoftware/a/az;->a(Z[BI)I

    move-result v4

    int-to-long v11, v4

    sub-long/2addr v9, v11

    and-long/2addr v7, v9

    const-wide/16 v9, -0x1

    and-long/2addr v7, v9

    long-to-int v4, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5, v6, v4}, Lcom/speedsoftware/a/az;->a(Z[BII)V

    goto/16 :goto_5

    :pswitch_d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/speedsoftware/a/az;->c:I

    sget-object v4, Lcom/speedsoftware/a/au;->b:Lcom/speedsoftware/a/au;

    invoke-virtual {v4}, Lcom/speedsoftware/a/au;->a()I

    move-result v4

    and-int/2addr v2, v4

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v6}, Lcom/speedsoftware/a/az;->a(Z[BI)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/speedsoftware/a/az;->c(I)Z

    goto/16 :goto_4

    :pswitch_e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/speedsoftware/a/az;->c:I

    sget-object v4, Lcom/speedsoftware/a/au;->b:Lcom/speedsoftware/a/au;

    invoke-virtual {v4}, Lcom/speedsoftware/a/au;->a()I

    move-result v4

    and-int/2addr v2, v4

    if-nez v2, :cond_2

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v6}, Lcom/speedsoftware/a/az;->a(Z[BI)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/speedsoftware/a/az;->c(I)Z

    goto/16 :goto_4

    :pswitch_f
    invoke-virtual {v2}, Lcom/speedsoftware/a/bi;->a()Z

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lcom/speedsoftware/a/az;->a(Z[BI)I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v7, 0x0

    and-long/2addr v4, v7

    long-to-int v4, v4

    invoke-virtual {v2}, Lcom/speedsoftware/a/bi;->a()Z

    move-result v5

    if-eqz v5, :cond_15

    and-int/lit16 v4, v4, 0xff

    :cond_15
    invoke-virtual {v2}, Lcom/speedsoftware/a/bi;->a()Z

    move-result v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5, v6, v4}, Lcom/speedsoftware/a/az;->a(Z[BII)V

    if-nez v4, :cond_16

    sget-object v2, Lcom/speedsoftware/a/au;->b:Lcom/speedsoftware/a/au;

    invoke-virtual {v2}, Lcom/speedsoftware/a/au;->a()I

    move-result v2

    :goto_d
    move-object/from16 v0, p0

    iput v2, v0, Lcom/speedsoftware/a/az;->c:I

    goto/16 :goto_5

    :cond_16
    sget-object v2, Lcom/speedsoftware/a/au;->c:Lcom/speedsoftware/a/au;

    invoke-virtual {v2}, Lcom/speedsoftware/a/au;->a()I

    move-result v2

    and-int/2addr v2, v4

    goto :goto_d

    :pswitch_10
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/speedsoftware/a/az;->a:[B

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v7, v6}, Lcom/speedsoftware/a/az;->a(Z[BI)I

    move-result v5

    int-to-long v7, v5

    const-wide/16 v9, 0x0

    and-long/2addr v7, v9

    long-to-int v5, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v6, v5}, Lcom/speedsoftware/a/az;->a(Z[BII)V

    goto/16 :goto_5

    :pswitch_11
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/speedsoftware/a/az;->a:[B

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v7, v6}, Lcom/speedsoftware/a/az;->a(Z[BI)I

    move-result v5

    int-to-long v7, v5

    const-wide/16 v9, 0x0

    and-long/2addr v7, v9

    long-to-int v5, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v6, v5}, Lcom/speedsoftware/a/az;->a(Z[BII)V

    goto/16 :goto_5

    :pswitch_12
    invoke-virtual {v2}, Lcom/speedsoftware/a/bi;->a()Z

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lcom/speedsoftware/a/az;->a(Z[BI)I

    move-result v4

    int-to-long v4, v4

    const-wide/16 v7, -0x2

    and-long/2addr v4, v7

    long-to-int v4, v4

    invoke-virtual {v2}, Lcom/speedsoftware/a/bi;->a()Z

    move-result v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5, v6, v4}, Lcom/speedsoftware/a/az;->a(Z[BII)V

    if-nez v4, :cond_17

    sget-object v2, Lcom/speedsoftware/a/au;->b:Lcom/speedsoftware/a/au;

    invoke-virtual {v2}, Lcom/speedsoftware/a/au;->a()I

    move-result v2

    :goto_e
    move-object/from16 v0, p0

    iput v2, v0, Lcom/speedsoftware/a/az;->c:I

    goto/16 :goto_5

    :cond_17
    sget-object v2, Lcom/speedsoftware/a/au;->c:Lcom/speedsoftware/a/au;

    invoke-virtual {v2}, Lcom/speedsoftware/a/au;->a()I

    move-result v2

    and-int/2addr v2, v4

    goto :goto_e

    :pswitch_13
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/speedsoftware/a/az;->a:[B

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v7, v6}, Lcom/speedsoftware/a/az;->a(Z[BI)I

    move-result v5

    int-to-long v7, v5

    const-wide/16 v9, -0x2

    and-long/2addr v7, v9

    long-to-int v5, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v6, v5}, Lcom/speedsoftware/a/az;->a(Z[BII)V

    goto/16 :goto_5

    :pswitch_14
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/speedsoftware/a/az;->a:[B

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v7, v6}, Lcom/speedsoftware/a/az;->a(Z[BI)I

    move-result v5

    int-to-long v7, v5

    const-wide/16 v9, -0x2

    and-long/2addr v7, v9

    long-to-int v5, v7

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v6, v5}, Lcom/speedsoftware/a/az;->a(Z[BII)V

    goto/16 :goto_5

    :pswitch_15
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v6}, Lcom/speedsoftware/a/az;->a(Z[BI)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/speedsoftware/a/az;->c(I)Z

    goto/16 :goto_4

    :pswitch_16
    invoke-virtual {v2}, Lcom/speedsoftware/a/bi;->a()Z

    move-result v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v7, v6}, Lcom/speedsoftware/a/az;->a(Z[BI)I

    move-result v5

    invoke-virtual {v2}, Lcom/speedsoftware/a/bi;->a()Z

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8, v4}, Lcom/speedsoftware/a/az;->a(Z[BI)I

    move-result v4

    xor-int/2addr v5, v4

    if-nez v5, :cond_18

    sget-object v4, Lcom/speedsoftware/a/au;->b:Lcom/speedsoftware/a/au;

    invoke-virtual {v4}, Lcom/speedsoftware/a/au;->a()I

    move-result v4

    :goto_f
    move-object/from16 v0, p0

    iput v4, v0, Lcom/speedsoftware/a/az;->c:I

    invoke-virtual {v2}, Lcom/speedsoftware/a/bi;->a()Z

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v6, v5}, Lcom/speedsoftware/a/az;->a(Z[BII)V

    goto/16 :goto_5

    :cond_18
    sget-object v4, Lcom/speedsoftware/a/au;->c:Lcom/speedsoftware/a/au;

    invoke-virtual {v4}, Lcom/speedsoftware/a/au;->a()I

    move-result v4

    and-int/2addr v4, v5

    goto :goto_f

    :pswitch_17
    invoke-virtual {v2}, Lcom/speedsoftware/a/bi;->a()Z

    move-result v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v7, v6}, Lcom/speedsoftware/a/az;->a(Z[BI)I

    move-result v5

    invoke-virtual {v2}, Lcom/speedsoftware/a/bi;->a()Z

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8, v4}, Lcom/speedsoftware/a/az;->a(Z[BI)I

    move-result v4

    and-int/2addr v5, v4

    if-nez v5, :cond_19

    sget-object v4, Lcom/speedsoftware/a/au;->b:Lcom/speedsoftware/a/au;

    invoke-virtual {v4}, Lcom/speedsoftware/a/au;->a()I

    move-result v4

    :goto_10
    move-object/from16 v0, p0

    iput v4, v0, Lcom/speedsoftware/a/az;->c:I

    invoke-virtual {v2}, Lcom/speedsoftware/a/bi;->a()Z

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v6, v5}, Lcom/speedsoftware/a/az;->a(Z[BII)V

    goto/16 :goto_5

    :cond_19
    sget-object v4, Lcom/speedsoftware/a/au;->c:Lcom/speedsoftware/a/au;

    invoke-virtual {v4}, Lcom/speedsoftware/a/au;->a()I

    move-result v4

    and-int/2addr v4, v5

    goto :goto_10

    :pswitch_18
    invoke-virtual {v2}, Lcom/speedsoftware/a/bi;->a()Z

    move-result v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v7, v6}, Lcom/speedsoftware/a/az;->a(Z[BI)I

    move-result v5

    invoke-virtual {v2}, Lcom/speedsoftware/a/bi;->a()Z

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8, v4}, Lcom/speedsoftware/a/az;->a(Z[BI)I

    move-result v4

    or-int/2addr v5, v4

    if-nez v5, :cond_1a

    sget-object v4, Lcom/speedsoftware/a/au;->b:Lcom/speedsoftware/a/au;

    invoke-virtual {v4}, Lcom/speedsoftware/a/au;->a()I

    move-result v4

    :goto_11
    move-object/from16 v0, p0

    iput v4, v0, Lcom/speedsoftware/a/az;->c:I

    invoke-virtual {v2}, Lcom/speedsoftware/a/bi;->a()Z

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v6, v5}, Lcom/speedsoftware/a/az;->a(Z[BII)V

    goto/16 :goto_5

    :cond_1a
    sget-object v4, Lcom/speedsoftware/a/au;->c:Lcom/speedsoftware/a/au;

    invoke-virtual {v4}, Lcom/speedsoftware/a/au;->a()I

    move-result v4

    and-int/2addr v4, v5

    goto :goto_11

    :pswitch_19
    invoke-virtual {v2}, Lcom/speedsoftware/a/bi;->a()Z

    move-result v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v7, v6}, Lcom/speedsoftware/a/az;->a(Z[BI)I

    move-result v5

    invoke-virtual {v2}, Lcom/speedsoftware/a/bi;->a()Z

    move-result v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6, v4}, Lcom/speedsoftware/a/az;->a(Z[BI)I

    move-result v2

    and-int/2addr v2, v5

    if-nez v2, :cond_1b

    sget-object v2, Lcom/speedsoftware/a/au;->b:Lcom/speedsoftware/a/au;

    invoke-virtual {v2}, Lcom/speedsoftware/a/au;->a()I

    move-result v2

    :goto_12
    move-object/from16 v0, p0

    iput v2, v0, Lcom/speedsoftware/a/az;->c:I

    goto/16 :goto_5

    :cond_1b
    sget-object v4, Lcom/speedsoftware/a/au;->c:Lcom/speedsoftware/a/au;

    invoke-virtual {v4}, Lcom/speedsoftware/a/au;->a()I

    move-result v4

    and-int/2addr v2, v4

    goto :goto_12

    :pswitch_1a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/speedsoftware/a/az;->c:I

    sget-object v4, Lcom/speedsoftware/a/au;->c:Lcom/speedsoftware/a/au;

    invoke-virtual {v4}, Lcom/speedsoftware/a/au;->a()I

    move-result v4

    and-int/2addr v2, v4

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v6}, Lcom/speedsoftware/a/az;->a(Z[BI)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/speedsoftware/a/az;->c(I)Z

    goto/16 :goto_4

    :pswitch_1b
    move-object/from16 v0, p0

    iget v2, v0, Lcom/speedsoftware/a/az;->c:I

    sget-object v4, Lcom/speedsoftware/a/au;->c:Lcom/speedsoftware/a/au;

    invoke-virtual {v4}, Lcom/speedsoftware/a/au;->a()I

    move-result v4

    and-int/2addr v2, v4

    if-nez v2, :cond_2

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v6}, Lcom/speedsoftware/a/az;->a(Z[BI)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/speedsoftware/a/az;->c(I)Z

    goto/16 :goto_4

    :pswitch_1c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/speedsoftware/a/az;->c:I

    sget-object v4, Lcom/speedsoftware/a/au;->a:Lcom/speedsoftware/a/au;

    invoke-virtual {v4}, Lcom/speedsoftware/a/au;->a()I

    move-result v4

    and-int/2addr v2, v4

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v6}, Lcom/speedsoftware/a/az;->a(Z[BI)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/speedsoftware/a/az;->c(I)Z

    goto/16 :goto_4

    :pswitch_1d
    move-object/from16 v0, p0

    iget v2, v0, Lcom/speedsoftware/a/az;->c:I

    sget-object v4, Lcom/speedsoftware/a/au;->a:Lcom/speedsoftware/a/au;

    invoke-virtual {v4}, Lcom/speedsoftware/a/au;->a()I

    move-result v4

    sget-object v5, Lcom/speedsoftware/a/au;->b:Lcom/speedsoftware/a/au;

    invoke-virtual {v5}, Lcom/speedsoftware/a/au;->a()I

    move-result v5

    or-int/2addr v4, v5

    and-int/2addr v2, v4

    if-eqz v2, :cond_2

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v6}, Lcom/speedsoftware/a/az;->a(Z[BI)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/speedsoftware/a/az;->c(I)Z

    goto/16 :goto_4

    :pswitch_1e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/speedsoftware/a/az;->c:I

    sget-object v4, Lcom/speedsoftware/a/au;->a:Lcom/speedsoftware/a/au;

    invoke-virtual {v4}, Lcom/speedsoftware/a/au;->a()I

    move-result v4

    sget-object v5, Lcom/speedsoftware/a/au;->b:Lcom/speedsoftware/a/au;

    invoke-virtual {v5}, Lcom/speedsoftware/a/au;->a()I

    move-result v5

    or-int/2addr v4, v5

    and-int/2addr v2, v4

    if-nez v2, :cond_2

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v6}, Lcom/speedsoftware/a/az;->a(Z[BI)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/speedsoftware/a/az;->c(I)Z

    goto/16 :goto_4

    :pswitch_1f
    move-object/from16 v0, p0

    iget v2, v0, Lcom/speedsoftware/a/az;->c:I

    sget-object v4, Lcom/speedsoftware/a/au;->a:Lcom/speedsoftware/a/au;

    invoke-virtual {v4}, Lcom/speedsoftware/a/au;->a()I

    move-result v4

    and-int/2addr v2, v4

    if-nez v2, :cond_2

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v6}, Lcom/speedsoftware/a/az;->a(Z[BI)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/speedsoftware/a/az;->c(I)Z

    goto/16 :goto_4

    :pswitch_20
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/speedsoftware/a/az;->b:[I

    const/4 v4, 0x7

    aget v5, v2, v4

    add-int/lit8 v5, v5, -0x4

    aput v5, v2, v4

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/speedsoftware/a/az;->b:[I

    const/4 v7, 0x7

    aget v5, v5, v7

    const v7, 0x3ffff

    and-int/2addr v5, v7

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8, v6}, Lcom/speedsoftware/a/az;->a(Z[BI)I

    move-result v6

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v5, v6}, Lcom/speedsoftware/a/az;->a(Z[BII)V

    goto/16 :goto_5

    :pswitch_21
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/speedsoftware/a/az;->a:[B

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/speedsoftware/a/az;->b:[I

    const/4 v9, 0x7

    aget v8, v8, v9

    const v9, 0x3ffff

    and-int/2addr v8, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v7, v8}, Lcom/speedsoftware/a/az;->a(Z[BI)I

    move-result v5

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v6, v5}, Lcom/speedsoftware/a/az;->a(Z[BII)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/speedsoftware/a/az;->b:[I

    const/4 v4, 0x7

    aget v5, v2, v4

    add-int/lit8 v5, v5, 0x4

    aput v5, v2, v4

    goto/16 :goto_5

    :pswitch_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/speedsoftware/a/az;->b:[I

    const/4 v4, 0x7

    aget v5, v2, v4

    add-int/lit8 v5, v5, -0x4

    aput v5, v2, v4

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/speedsoftware/a/az;->b:[I

    const/4 v7, 0x7

    aget v5, v5, v7

    const v7, 0x3ffff

    and-int/2addr v5, v7

    move-object/from16 v0, p0

    iget v7, v0, Lcom/speedsoftware/a/az;->f:I

    add-int/lit8 v7, v7, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v5, v7}, Lcom/speedsoftware/a/az;->a(Z[BII)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v6}, Lcom/speedsoftware/a/az;->a(Z[BI)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/speedsoftware/a/az;->c(I)Z

    goto/16 :goto_4

    :pswitch_23
    invoke-virtual {v2}, Lcom/speedsoftware/a/bi;->a()Z

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/speedsoftware/a/az;->a:[B

    invoke-virtual {v2}, Lcom/speedsoftware/a/bi;->a()Z

    move-result v2

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v7, v6}, Lcom/speedsoftware/a/az;->a(Z[BI)I

    move-result v2

    xor-int/lit8 v2, v2, -0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6, v2}, Lcom/speedsoftware/a/az;->a(Z[BII)V

    goto/16 :goto_5

    :pswitch_24
    invoke-virtual {v2}, Lcom/speedsoftware/a/bi;->a()Z

    move-result v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v7, v6}, Lcom/speedsoftware/a/az;->a(Z[BI)I

    move-result v7

    invoke-virtual {v2}, Lcom/speedsoftware/a/bi;->a()Z

    move-result v5

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v8, v4}, Lcom/speedsoftware/a/az;->a(Z[BI)I

    move-result v8

    shl-int v9, v7, v8

    if-nez v9, :cond_1c

    sget-object v4, Lcom/speedsoftware/a/au;->b:Lcom/speedsoftware/a/au;

    invoke-virtual {v4}, Lcom/speedsoftware/a/au;->a()I

    move-result v4

    move v5, v4

    :goto_13
    add-int/lit8 v4, v8, -0x1

    shl-int v4, v7, v4

    const/high16 v7, -0x80000000

    and-int/2addr v4, v7

    if-eqz v4, :cond_1d

    sget-object v4, Lcom/speedsoftware/a/au;->a:Lcom/speedsoftware/a/au;

    invoke-virtual {v4}, Lcom/speedsoftware/a/au;->a()I

    move-result v4

    :goto_14
    or-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/speedsoftware/a/az;->c:I

    invoke-virtual {v2}, Lcom/speedsoftware/a/bi;->a()Z

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v6, v9}, Lcom/speedsoftware/a/az;->a(Z[BII)V

    goto/16 :goto_5

    :cond_1c
    sget-object v4, Lcom/speedsoftware/a/au;->c:Lcom/speedsoftware/a/au;

    invoke-virtual {v4}, Lcom/speedsoftware/a/au;->a()I

    move-result v4

    and-int/2addr v4, v9

    move v5, v4

    goto :goto_13

    :cond_1d
    const/4 v4, 0x0

    goto :goto_14

    :pswitch_25
    invoke-virtual {v2}, Lcom/speedsoftware/a/bi;->a()Z

    move-result v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v7, v6}, Lcom/speedsoftware/a/az;->a(Z[BI)I

    move-result v5

    invoke-virtual {v2}, Lcom/speedsoftware/a/bi;->a()Z

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8, v4}, Lcom/speedsoftware/a/az;->a(Z[BI)I

    move-result v7

    ushr-int v8, v5, v7

    if-nez v8, :cond_1e

    sget-object v4, Lcom/speedsoftware/a/au;->b:Lcom/speedsoftware/a/au;

    invoke-virtual {v4}, Lcom/speedsoftware/a/au;->a()I

    move-result v4

    :goto_15
    add-int/lit8 v7, v7, -0x1

    ushr-int/2addr v5, v7

    sget-object v7, Lcom/speedsoftware/a/au;->a:Lcom/speedsoftware/a/au;

    invoke-virtual {v7}, Lcom/speedsoftware/a/au;->a()I

    move-result v7

    and-int/2addr v5, v7

    or-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/speedsoftware/a/az;->c:I

    invoke-virtual {v2}, Lcom/speedsoftware/a/bi;->a()Z

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v6, v8}, Lcom/speedsoftware/a/az;->a(Z[BII)V

    goto/16 :goto_5

    :cond_1e
    sget-object v4, Lcom/speedsoftware/a/au;->c:Lcom/speedsoftware/a/au;

    invoke-virtual {v4}, Lcom/speedsoftware/a/au;->a()I

    move-result v4

    and-int/2addr v4, v8

    goto :goto_15

    :pswitch_26
    invoke-virtual {v2}, Lcom/speedsoftware/a/bi;->a()Z

    move-result v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v7, v6}, Lcom/speedsoftware/a/az;->a(Z[BI)I

    move-result v5

    invoke-virtual {v2}, Lcom/speedsoftware/a/bi;->a()Z

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8, v4}, Lcom/speedsoftware/a/az;->a(Z[BI)I

    move-result v7

    shr-int v8, v5, v7

    if-nez v8, :cond_1f

    sget-object v4, Lcom/speedsoftware/a/au;->b:Lcom/speedsoftware/a/au;

    invoke-virtual {v4}, Lcom/speedsoftware/a/au;->a()I

    move-result v4

    :goto_16
    add-int/lit8 v7, v7, -0x1

    shr-int/2addr v5, v7

    sget-object v7, Lcom/speedsoftware/a/au;->a:Lcom/speedsoftware/a/au;

    invoke-virtual {v7}, Lcom/speedsoftware/a/au;->a()I

    move-result v7

    and-int/2addr v5, v7

    or-int/2addr v4, v5

    move-object/from16 v0, p0

    iput v4, v0, Lcom/speedsoftware/a/az;->c:I

    invoke-virtual {v2}, Lcom/speedsoftware/a/bi;->a()Z

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v6, v8}, Lcom/speedsoftware/a/az;->a(Z[BII)V

    goto/16 :goto_5

    :cond_1f
    sget-object v4, Lcom/speedsoftware/a/au;->c:Lcom/speedsoftware/a/au;

    invoke-virtual {v4}, Lcom/speedsoftware/a/au;->a()I

    move-result v4

    and-int/2addr v4, v8

    goto :goto_16

    :pswitch_27
    invoke-virtual {v2}, Lcom/speedsoftware/a/bi;->a()Z

    move-result v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v5, v6}, Lcom/speedsoftware/a/az;->a(Z[BI)I

    move-result v4

    neg-int v5, v4

    if-nez v5, :cond_20

    sget-object v4, Lcom/speedsoftware/a/au;->b:Lcom/speedsoftware/a/au;

    invoke-virtual {v4}, Lcom/speedsoftware/a/au;->a()I

    move-result v4

    :goto_17
    move-object/from16 v0, p0

    iput v4, v0, Lcom/speedsoftware/a/az;->c:I

    invoke-virtual {v2}, Lcom/speedsoftware/a/bi;->a()Z

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v6, v5}, Lcom/speedsoftware/a/az;->a(Z[BII)V

    goto/16 :goto_5

    :cond_20
    sget-object v4, Lcom/speedsoftware/a/au;->a:Lcom/speedsoftware/a/au;

    invoke-virtual {v4}, Lcom/speedsoftware/a/au;->a()I

    move-result v4

    sget-object v7, Lcom/speedsoftware/a/au;->c:Lcom/speedsoftware/a/au;

    invoke-virtual {v7}, Lcom/speedsoftware/a/au;->a()I

    move-result v7

    and-int/2addr v7, v5

    or-int/2addr v4, v7

    goto :goto_17

    :pswitch_28
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/speedsoftware/a/az;->a:[B

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v7, v6}, Lcom/speedsoftware/a/az;->a(Z[BI)I

    move-result v5

    neg-int v5, v5

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v6, v5}, Lcom/speedsoftware/a/az;->a(Z[BII)V

    goto/16 :goto_5

    :pswitch_29
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/speedsoftware/a/az;->a:[B

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v7, v6}, Lcom/speedsoftware/a/az;->a(Z[BI)I

    move-result v5

    neg-int v5, v5

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v6, v5}, Lcom/speedsoftware/a/az;->a(Z[BII)V

    goto/16 :goto_5

    :pswitch_2a
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/speedsoftware/a/az;->b:[I

    const/4 v5, 0x7

    aget v2, v2, v5

    add-int/lit8 v2, v2, -0x4

    :goto_18
    const/16 v5, 0x8

    if-lt v4, v5, :cond_21

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/speedsoftware/a/az;->b:[I

    const/4 v4, 0x7

    aget v5, v2, v4

    add-int/lit8 v5, v5, -0x20

    aput v5, v2, v4

    goto/16 :goto_5

    :cond_21
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/speedsoftware/a/az;->a:[B

    const v7, 0x3ffff

    and-int/2addr v7, v2

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/speedsoftware/a/az;->b:[I

    aget v8, v8, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v7, v8}, Lcom/speedsoftware/a/az;->a(Z[BII)V

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, -0x4

    goto :goto_18

    :pswitch_2b
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/speedsoftware/a/az;->b:[I

    const/4 v5, 0x7

    aget v2, v2, v5

    :goto_19
    const/16 v5, 0x8

    if-ge v4, v5, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/speedsoftware/a/az;->b:[I

    rsub-int/lit8 v6, v4, 0x7

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/speedsoftware/a/az;->a:[B

    const v9, 0x3ffff

    and-int/2addr v9, v2

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8, v9}, Lcom/speedsoftware/a/az;->a(Z[BI)I

    move-result v7

    aput v7, v5, v6

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, 0x4

    goto :goto_19

    :pswitch_2c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/speedsoftware/a/az;->b:[I

    const/4 v4, 0x7

    aget v5, v2, v4

    add-int/lit8 v5, v5, -0x4

    aput v5, v2, v4

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/speedsoftware/a/az;->b:[I

    const/4 v6, 0x7

    aget v5, v5, v6

    const v6, 0x3ffff

    and-int/2addr v5, v6

    move-object/from16 v0, p0

    iget v6, v0, Lcom/speedsoftware/a/az;->c:I

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v5, v6}, Lcom/speedsoftware/a/az;->a(Z[BII)V

    goto/16 :goto_5

    :pswitch_2d
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/speedsoftware/a/az;->b:[I

    const/4 v6, 0x7

    aget v5, v5, v6

    const v6, 0x3ffff

    and-int/2addr v5, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v5}, Lcom/speedsoftware/a/az;->a(Z[BI)I

    move-result v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/speedsoftware/a/az;->c:I

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/speedsoftware/a/az;->b:[I

    const/4 v4, 0x7

    aget v5, v2, v4

    add-int/lit8 v5, v5, 0x4

    aput v5, v2, v4

    goto/16 :goto_5

    :pswitch_2e
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/speedsoftware/a/az;->a:[B

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8, v4}, Lcom/speedsoftware/a/az;->a(Z[BI)I

    move-result v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5, v6, v4}, Lcom/speedsoftware/a/az;->a(Z[BII)V

    goto/16 :goto_5

    :pswitch_2f
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/speedsoftware/a/az;->a:[B

    const/4 v7, 0x1

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8, v4}, Lcom/speedsoftware/a/az;->a(Z[BI)I

    move-result v4

    int-to-byte v4, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5, v6, v4}, Lcom/speedsoftware/a/az;->a(Z[BII)V

    goto/16 :goto_5

    :pswitch_30
    invoke-virtual {v2}, Lcom/speedsoftware/a/bi;->a()Z

    move-result v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v7, v6}, Lcom/speedsoftware/a/az;->a(Z[BI)I

    move-result v5

    invoke-virtual {v2}, Lcom/speedsoftware/a/bi;->a()Z

    move-result v7

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/speedsoftware/a/az;->a:[B

    invoke-virtual {v2}, Lcom/speedsoftware/a/bi;->a()Z

    move-result v9

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v10, v4}, Lcom/speedsoftware/a/az;->a(Z[BI)I

    move-result v9

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v8, v6, v9}, Lcom/speedsoftware/a/az;->a(Z[BII)V

    invoke-virtual {v2}, Lcom/speedsoftware/a/bi;->a()Z

    move-result v2

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v6, v4, v5}, Lcom/speedsoftware/a/az;->a(Z[BII)V

    goto/16 :goto_5

    :pswitch_31
    invoke-virtual {v2}, Lcom/speedsoftware/a/bi;->a()Z

    move-result v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v7, v6}, Lcom/speedsoftware/a/az;->a(Z[BI)I

    move-result v5

    int-to-long v7, v5

    const-wide/16 v9, -0x1

    invoke-virtual {v2}, Lcom/speedsoftware/a/bi;->a()Z

    move-result v5

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v11, v4}, Lcom/speedsoftware/a/az;->a(Z[BI)I

    move-result v4

    int-to-long v4, v4

    mul-long/2addr v4, v9

    and-long/2addr v4, v7

    const-wide/16 v7, -0x1

    and-long/2addr v4, v7

    const-wide/16 v7, -0x1

    and-long/2addr v4, v7

    long-to-int v4, v4

    invoke-virtual {v2}, Lcom/speedsoftware/a/bi;->a()Z

    move-result v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5, v6, v4}, Lcom/speedsoftware/a/az;->a(Z[BII)V

    goto/16 :goto_5

    :pswitch_32
    invoke-virtual {v2}, Lcom/speedsoftware/a/bi;->a()Z

    move-result v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v7, v4}, Lcom/speedsoftware/a/az;->a(Z[BI)I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lcom/speedsoftware/a/bi;->a()Z

    move-result v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v7, v6}, Lcom/speedsoftware/a/az;->a(Z[BI)I

    move-result v5

    div-int v4, v5, v4

    invoke-virtual {v2}, Lcom/speedsoftware/a/bi;->a()Z

    move-result v2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v5, v6, v4}, Lcom/speedsoftware/a/az;->a(Z[BII)V

    goto/16 :goto_5

    :pswitch_33
    invoke-virtual {v2}, Lcom/speedsoftware/a/bi;->a()Z

    move-result v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v7, v6}, Lcom/speedsoftware/a/az;->a(Z[BI)I

    move-result v7

    move-object/from16 v0, p0

    iget v5, v0, Lcom/speedsoftware/a/az;->c:I

    sget-object v8, Lcom/speedsoftware/a/au;->a:Lcom/speedsoftware/a/au;

    invoke-virtual {v8}, Lcom/speedsoftware/a/au;->a()I

    move-result v8

    and-int/2addr v8, v5

    int-to-long v9, v7

    const-wide/16 v11, -0x1

    invoke-virtual {v2}, Lcom/speedsoftware/a/bi;->a()Z

    move-result v5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v13, v4}, Lcom/speedsoftware/a/az;->a(Z[BI)I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v4, v11

    and-long/2addr v4, v9

    const-wide/16 v9, -0x1

    int-to-long v11, v8

    add-long/2addr v9, v11

    and-long/2addr v4, v9

    const-wide/16 v9, -0x1

    and-long/2addr v4, v9

    long-to-int v4, v4

    invoke-virtual {v2}, Lcom/speedsoftware/a/bi;->a()Z

    move-result v5

    if-eqz v5, :cond_43

    and-int/lit16 v4, v4, 0xff

    move v5, v4

    :goto_1a
    if-lt v5, v7, :cond_22

    if-ne v5, v7, :cond_23

    if-eqz v8, :cond_23

    :cond_22
    const/4 v4, 0x1

    :goto_1b
    move-object/from16 v0, p0

    iput v4, v0, Lcom/speedsoftware/a/az;->c:I

    invoke-virtual {v2}, Lcom/speedsoftware/a/bi;->a()Z

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v6, v5}, Lcom/speedsoftware/a/az;->a(Z[BII)V

    goto/16 :goto_5

    :cond_23
    if-nez v5, :cond_24

    sget-object v4, Lcom/speedsoftware/a/au;->b:Lcom/speedsoftware/a/au;

    invoke-virtual {v4}, Lcom/speedsoftware/a/au;->a()I

    move-result v4

    goto :goto_1b

    :cond_24
    sget-object v4, Lcom/speedsoftware/a/au;->c:Lcom/speedsoftware/a/au;

    invoke-virtual {v4}, Lcom/speedsoftware/a/au;->a()I

    move-result v4

    and-int/2addr v4, v5

    goto :goto_1b

    :pswitch_34
    invoke-virtual {v2}, Lcom/speedsoftware/a/bi;->a()Z

    move-result v5

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v7, v6}, Lcom/speedsoftware/a/az;->a(Z[BI)I

    move-result v7

    move-object/from16 v0, p0

    iget v5, v0, Lcom/speedsoftware/a/az;->c:I

    sget-object v8, Lcom/speedsoftware/a/au;->a:Lcom/speedsoftware/a/au;

    invoke-virtual {v8}, Lcom/speedsoftware/a/au;->a()I

    move-result v8

    and-int/2addr v8, v5

    int-to-long v9, v7

    const-wide/16 v11, -0x1

    invoke-virtual {v2}, Lcom/speedsoftware/a/bi;->a()Z

    move-result v5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v13, v4}, Lcom/speedsoftware/a/az;->a(Z[BI)I

    move-result v4

    int-to-long v4, v4

    sub-long v4, v11, v4

    and-long/2addr v4, v9

    const-wide/16 v9, -0x1

    int-to-long v11, v8

    sub-long/2addr v9, v11

    and-long/2addr v4, v9

    const-wide/16 v9, -0x1

    and-long/2addr v4, v9

    long-to-int v4, v4

    invoke-virtual {v2}, Lcom/speedsoftware/a/bi;->a()Z

    move-result v5

    if-eqz v5, :cond_42

    and-int/lit16 v4, v4, 0xff

    move v5, v4

    :goto_1c
    if-gt v5, v7, :cond_25

    if-ne v5, v7, :cond_26

    if-eqz v8, :cond_26

    :cond_25
    const/4 v4, 0x1

    :goto_1d
    move-object/from16 v0, p0

    iput v4, v0, Lcom/speedsoftware/a/az;->c:I

    invoke-virtual {v2}, Lcom/speedsoftware/a/bi;->a()Z

    move-result v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v6, v5}, Lcom/speedsoftware/a/az;->a(Z[BII)V

    goto/16 :goto_5

    :cond_26
    if-nez v5, :cond_27

    sget-object v4, Lcom/speedsoftware/a/au;->b:Lcom/speedsoftware/a/au;

    invoke-virtual {v4}, Lcom/speedsoftware/a/au;->a()I

    move-result v4

    goto :goto_1d

    :cond_27
    sget-object v4, Lcom/speedsoftware/a/au;->c:Lcom/speedsoftware/a/au;

    invoke-virtual {v4}, Lcom/speedsoftware/a/au;->a()I

    move-result v4

    and-int/2addr v4, v5

    goto :goto_1d

    :pswitch_35
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/speedsoftware/a/az;->b:[I

    const/4 v4, 0x7

    aget v2, v2, v4

    const/high16 v4, 0x40000

    if-ge v2, v4, :cond_3c

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/speedsoftware/a/az;->b:[I

    const/4 v6, 0x7

    aget v5, v5, v6

    const v6, 0x3ffff

    and-int/2addr v5, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v5}, Lcom/speedsoftware/a/az;->a(Z[BI)I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/speedsoftware/a/az;->c(I)Z

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/speedsoftware/a/az;->b:[I

    const/4 v4, 0x7

    aget v5, v2, v4

    add-int/lit8 v5, v5, 0x4

    aput v5, v2, v4

    goto/16 :goto_4

    :pswitch_36
    invoke-virtual {v2}, Lcom/speedsoftware/a/bi;->b()Lcom/speedsoftware/a/d;

    move-result-object v2

    invoke-virtual {v2}, Lcom/speedsoftware/a/d;->b()I

    move-result v2

    invoke-static {v2}, Lcom/speedsoftware/a/av;->a(I)Lcom/speedsoftware/a/av;

    move-result-object v2

    invoke-static {}, Lcom/speedsoftware/a/az;->i()[I

    move-result-object v4

    invoke-virtual {v2}, Lcom/speedsoftware/a/av;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_1

    goto/16 :goto_5

    :pswitch_37
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/speedsoftware/a/az;->b:[I

    const/4 v5, 0x4

    aget v5, v4, v5

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/speedsoftware/a/az;->b:[I

    const/4 v6, 0x6

    aget v4, v4, v6

    and-int/lit8 v4, v4, -0x1

    int-to-long v6, v4

    const v4, 0x3c000

    if-ge v5, v4, :cond_2

    sget-object v4, Lcom/speedsoftware/a/av;->c:Lcom/speedsoftware/a/av;

    if-ne v2, v4, :cond_2a

    const/16 v2, 0xe9

    :goto_1e
    int-to-byte v8, v2

    const/4 v2, 0x0

    :goto_1f
    add-int/lit8 v4, v5, -0x4

    if-ge v2, v4, :cond_2

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/speedsoftware/a/az;->a:[B

    add-int/lit8 v4, v2, 0x1

    aget-byte v2, v9, v2

    const/16 v9, 0xe8

    if-eq v2, v9, :cond_28

    if-ne v2, v8, :cond_41

    :cond_28
    int-to-long v9, v4

    add-long/2addr v9, v6

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v11, v4}, Lcom/speedsoftware/a/az;->a(Z[BI)I

    move-result v2

    int-to-long v11, v2

    const-wide/32 v13, -0x80000000

    and-long/2addr v13, v11

    const-wide/16 v15, 0x0

    cmp-long v2, v13, v15

    if-eqz v2, :cond_2b

    add-long/2addr v9, v11

    const-wide/32 v13, -0x80000000

    and-long/2addr v9, v13

    const-wide/16 v13, 0x0

    cmp-long v2, v9, v13

    if-nez v2, :cond_29

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/speedsoftware/a/az;->a:[B

    long-to-int v10, v11

    const/high16 v11, 0x1000000

    add-int/2addr v10, v11

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v9, v4, v10}, Lcom/speedsoftware/a/az;->a(Z[BII)V

    :cond_29
    :goto_20
    add-int/lit8 v2, v4, 0x4

    goto :goto_1f

    :cond_2a
    const/16 v2, 0xe8

    goto :goto_1e

    :cond_2b
    const-wide/32 v13, 0x1000000

    sub-long v13, v11, v13

    const-wide/32 v15, -0x80000000

    and-long/2addr v13, v15

    const-wide/16 v15, 0x0

    cmp-long v2, v13, v15

    if-eqz v2, :cond_29

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/speedsoftware/a/az;->a:[B

    sub-long v9, v11, v9

    long-to-int v9, v9

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v13, v4, v9}, Lcom/speedsoftware/a/az;->a(Z[BII)V

    goto :goto_20

    :pswitch_38
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/speedsoftware/a/az;->b:[I

    const/4 v4, 0x4

    aget v10, v2, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/speedsoftware/a/az;->b:[I

    const/4 v4, 0x6

    aget v2, v2, v4

    and-int/lit8 v2, v2, -0x1

    int-to-long v4, v2

    const v2, 0x3c000

    if-ge v10, v2, :cond_2

    const/4 v2, 0x0

    const/16 v6, 0x10

    new-array v11, v6, [B

    const/4 v6, 0x0

    const/4 v7, 0x4

    aput-byte v7, v11, v6

    const/4 v6, 0x1

    const/4 v7, 0x4

    aput-byte v7, v11, v6

    const/4 v6, 0x2

    const/4 v7, 0x6

    aput-byte v7, v11, v6

    const/4 v6, 0x3

    const/4 v7, 0x6

    aput-byte v7, v11, v6

    const/4 v6, 0x6

    const/4 v7, 0x7

    aput-byte v7, v11, v6

    const/4 v6, 0x7

    const/4 v7, 0x7

    aput-byte v7, v11, v6

    const/16 v6, 0x8

    const/4 v7, 0x4

    aput-byte v7, v11, v6

    const/16 v6, 0x9

    const/4 v7, 0x4

    aput-byte v7, v11, v6

    const/16 v6, 0xc

    const/4 v7, 0x4

    aput-byte v7, v11, v6

    const/16 v6, 0xd

    const/4 v7, 0x4

    aput-byte v7, v11, v6

    const/4 v6, 0x4

    ushr-long/2addr v4, v6

    move-wide v7, v4

    move v9, v2

    :goto_21
    add-int/lit8 v2, v10, -0x15

    if-ge v9, v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/speedsoftware/a/az;->a:[B

    aget-byte v2, v2, v9

    and-int/lit8 v2, v2, 0x1f

    add-int/lit8 v2, v2, -0x10

    if-ltz v2, :cond_2c

    aget-byte v12, v11, v2

    if-eqz v12, :cond_2c

    const/4 v2, 0x0

    move v6, v2

    :goto_22
    const/4 v2, 0x2

    if-le v6, v2, :cond_2d

    :cond_2c
    add-int/lit8 v2, v9, 0x10

    const-wide/16 v4, 0x1

    add-long/2addr v4, v7

    move-wide v7, v4

    move v9, v2

    goto :goto_21

    :cond_2d
    const/4 v2, 0x1

    shl-int/2addr v2, v6

    and-int/2addr v2, v12

    if-eqz v2, :cond_2e

    mul-int/lit8 v2, v6, 0x29

    add-int/lit8 v2, v2, 0x5

    add-int/lit8 v4, v2, 0x25

    const/4 v5, 0x4

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v4, v5}, Lcom/speedsoftware/a/az;->a(III)I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_2e

    add-int/lit8 v4, v2, 0xd

    const/16 v5, 0x14

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v4, v5}, Lcom/speedsoftware/a/az;->a(III)I

    move-result v4

    int-to-long v4, v4

    sub-long/2addr v4, v7

    long-to-int v4, v4

    const v5, 0xfffff

    and-int/2addr v4, v5

    add-int/lit8 v2, v2, 0xd

    div-int/lit8 v13, v2, 0x8

    and-int/lit8 v5, v2, 0x7

    const v2, 0xfffff

    shl-int/2addr v2, v5

    xor-int/lit8 v2, v2, -0x1

    shl-int v5, v4, v5

    const/4 v4, 0x0

    :goto_23
    const/4 v14, 0x4

    if-lt v4, v14, :cond_2f

    :cond_2e
    add-int/lit8 v2, v6, 0x1

    move v6, v2

    goto :goto_22

    :cond_2f
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/speedsoftware/a/az;->a:[B

    add-int v15, v9, v13

    add-int/2addr v15, v4

    aget-byte v16, v14, v15

    and-int v16, v16, v2

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, v14, v15

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/speedsoftware/a/az;->a:[B

    add-int v15, v9, v13

    add-int/2addr v15, v4

    aget-byte v16, v14, v15

    or-int v16, v16, v5

    move/from16 v0, v16

    int-to-byte v0, v0

    move/from16 v16, v0

    aput-byte v16, v14, v15

    ushr-int/lit8 v2, v2, 0x8

    const/high16 v14, -0x1000000

    or-int/2addr v2, v14

    ushr-int/lit8 v5, v5, 0x8

    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    :pswitch_39
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/speedsoftware/a/az;->b:[I

    const/4 v4, 0x4

    aget v2, v2, v4

    and-int/lit8 v8, v2, -0x1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/speedsoftware/a/az;->b:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    and-int/lit8 v9, v2, -0x1

    const/4 v5, 0x0

    mul-int/lit8 v2, v8, 0x2

    and-int/lit8 v10, v2, -0x1

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/speedsoftware/a/az;->a:[B

    const v6, 0x3c020

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v6, v8}, Lcom/speedsoftware/a/az;->a(Z[BII)V

    const v2, 0x1e000

    if-ge v8, v2, :cond_2

    const/4 v2, 0x0

    move v7, v2

    :goto_24
    if-ge v7, v9, :cond_2

    const/4 v4, 0x0

    add-int v2, v8, v7

    :goto_25
    if-lt v2, v10, :cond_30

    add-int/lit8 v2, v7, 0x1

    move v7, v2

    goto :goto_24

    :cond_30
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/speedsoftware/a/az;->a:[B

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/speedsoftware/a/az;->a:[B

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, v12, v5

    sub-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v11, v2

    add-int/2addr v2, v9

    move v5, v6

    goto :goto_25

    :pswitch_3a
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/speedsoftware/a/az;->b:[I

    const/4 v4, 0x4

    aget v12, v2, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/speedsoftware/a/az;->b:[I

    const/4 v4, 0x0

    aget v2, v2, v4

    add-int/lit8 v13, v2, -0x3

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/speedsoftware/a/az;->b:[I

    const/4 v4, 0x1

    aget v2, v2, v4

    const/4 v5, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/speedsoftware/a/az;->a:[B

    const v7, 0x3c020

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v6, v7, v12}, Lcom/speedsoftware/a/az;->a(Z[BII)V

    const v4, 0x1e000

    if-ge v12, v4, :cond_2

    if-ltz v2, :cond_2

    const/4 v4, 0x0

    move v6, v4

    move v4, v5

    :goto_26
    const/4 v5, 0x3

    if-lt v6, v5, :cond_31

    add-int/lit8 v4, v12, -0x2

    :goto_27
    if-ge v2, v4, :cond_2

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/speedsoftware/a/az;->a:[B

    add-int v6, v12, v2

    add-int/lit8 v6, v6, 0x1

    aget-byte v5, v5, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/speedsoftware/a/az;->a:[B

    add-int v7, v12, v2

    aget-byte v8, v6, v7

    add-int/2addr v8, v5

    int-to-byte v8, v8

    aput-byte v8, v6, v7

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/speedsoftware/a/az;->a:[B

    add-int v7, v12, v2

    add-int/lit8 v7, v7, 0x2

    aget-byte v8, v6, v7

    add-int/2addr v5, v8

    int-to-byte v5, v5

    aput-byte v5, v6, v7

    add-int/lit8 v2, v2, 0x3

    goto :goto_27

    :cond_31
    const-wide/16 v7, 0x0

    move-wide/from16 v26, v7

    move v8, v6

    move v7, v4

    move-wide/from16 v4, v26

    :goto_28
    if-lt v8, v12, :cond_32

    add-int/lit8 v4, v6, 0x1

    move v6, v4

    move v4, v7

    goto :goto_26

    :cond_32
    sub-int v9, v8, v13

    const/4 v10, 0x3

    if-lt v9, v10, :cond_34

    add-int/2addr v9, v12

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/speedsoftware/a/az;->a:[B

    aget-byte v10, v10, v9

    and-int/lit16 v10, v10, 0xff

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/speedsoftware/a/az;->a:[B

    add-int/lit8 v9, v9, -0x3

    aget-byte v9, v11, v9

    and-int/lit16 v9, v9, 0xff

    int-to-long v14, v10

    add-long/2addr v14, v4

    int-to-long v0, v9

    move-wide/from16 v16, v0

    sub-long v14, v14, v16

    sub-long v16, v14, v4

    move-wide/from16 v0, v16

    long-to-int v11, v0

    invoke-static {v11}, Ljava/lang/Math;->abs(I)I

    move-result v11

    int-to-long v0, v10

    move-wide/from16 v16, v0

    sub-long v16, v14, v16

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Math;->abs(I)I

    move-result v16

    int-to-long v0, v9

    move-wide/from16 v17, v0

    sub-long v14, v14, v17

    long-to-int v14, v14

    invoke-static {v14}, Ljava/lang/Math;->abs(I)I

    move-result v14

    move/from16 v0, v16

    if-gt v11, v0, :cond_33

    if-le v11, v14, :cond_34

    :cond_33
    move/from16 v0, v16

    if-gt v0, v14, :cond_35

    int-to-long v4, v10

    :cond_34
    :goto_29
    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/speedsoftware/a/az;->a:[B

    add-int/lit8 v11, v7, 0x1

    aget-byte v7, v9, v7

    int-to-long v9, v7

    sub-long/2addr v4, v9

    const-wide/16 v9, 0xff

    and-long/2addr v4, v9

    const-wide/16 v9, 0xff

    and-long/2addr v9, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/speedsoftware/a/az;->a:[B

    add-int v5, v12, v8

    const-wide/16 v14, 0xff

    and-long/2addr v14, v9

    long-to-int v7, v14

    int-to-byte v7, v7

    aput-byte v7, v4, v5

    add-int/lit8 v4, v8, 0x3

    move v8, v4

    move v7, v11

    move-wide v4, v9

    goto :goto_28

    :cond_35
    int-to-long v4, v9

    goto :goto_29

    :pswitch_3b
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/speedsoftware/a/az;->b:[I

    const/4 v4, 0x4

    aget v21, v2, v4

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/speedsoftware/a/az;->b:[I

    const/4 v4, 0x0

    aget v22, v2, v4

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/speedsoftware/a/az;->a:[B

    const v6, 0x3c020

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v4, v5, v6, v1}, Lcom/speedsoftware/a/az;->a(Z[BII)V

    const v4, 0x1e000

    move/from16 v0, v21

    if-ge v0, v4, :cond_2

    const/4 v4, 0x0

    move v11, v4

    :goto_2a
    move/from16 v0, v22

    if-ge v11, v0, :cond_2

    const-wide/16 v8, 0x0

    const-wide/16 v6, 0x0

    const/4 v4, 0x7

    new-array v0, v4, [J

    move-object/from16 v23, v0

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v14, 0x0

    const/4 v13, 0x0

    const/4 v12, 0x0

    const/4 v10, 0x0

    move/from16 v19, v10

    move/from16 v20, v11

    move v10, v14

    move-wide v14, v8

    move v9, v13

    move v8, v12

    :goto_2b
    move/from16 v0, v20

    move/from16 v1, v21

    if-lt v0, v1, :cond_36

    add-int/lit8 v4, v11, 0x1

    move v11, v4

    goto :goto_2a

    :cond_36
    long-to-int v12, v6

    sub-int/2addr v12, v5

    long-to-int v13, v6

    const-wide/16 v5, 0x8

    mul-long/2addr v5, v14

    mul-int v7, v10, v13

    int-to-long v0, v7

    move-wide/from16 v16, v0

    add-long v5, v5, v16

    mul-int v7, v9, v12

    int-to-long v0, v7

    move-wide/from16 v16, v0

    add-long v5, v5, v16

    mul-int v7, v8, v4

    int-to-long v0, v7

    move-wide/from16 v16, v0

    add-long v5, v5, v16

    const/4 v7, 0x3

    ushr-long/2addr v5, v7

    const-wide/16 v16, 0xff

    and-long v5, v5, v16

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/speedsoftware/a/az;->a:[B

    add-int/lit8 v18, v2, 0x1

    aget-byte v2, v7, v2

    and-int/lit16 v2, v2, 0xff

    int-to-long v0, v2

    move-wide/from16 v24, v0

    sub-long v5, v5, v24

    const-wide/16 v16, -0x1

    and-long v16, v16, v5

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/speedsoftware/a/az;->a:[B

    add-int v5, v21, v20

    move-wide/from16 v0, v16

    long-to-int v6, v0

    int-to-byte v6, v6

    aput-byte v6, v2, v5

    sub-long v5, v16, v14

    long-to-int v2, v5

    int-to-byte v2, v2

    int-to-long v14, v2

    move-wide/from16 v0, v24

    long-to-int v2, v0

    int-to-byte v2, v2

    shl-int/lit8 v2, v2, 0x3

    const/4 v5, 0x0

    aget-wide v6, v23, v5

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v6, v6, v24

    aput-wide v6, v23, v5

    const/4 v5, 0x1

    aget-wide v6, v23, v5

    sub-int v24, v2, v13

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(I)I

    move-result v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v6, v6, v24

    aput-wide v6, v23, v5

    const/4 v5, 0x2

    aget-wide v6, v23, v5

    add-int v24, v2, v13

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(I)I

    move-result v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v6, v6, v24

    aput-wide v6, v23, v5

    const/4 v5, 0x3

    aget-wide v6, v23, v5

    sub-int v24, v2, v12

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(I)I

    move-result v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v6, v6, v24

    aput-wide v6, v23, v5

    const/4 v5, 0x4

    aget-wide v6, v23, v5

    add-int v24, v2, v12

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(I)I

    move-result v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v6, v6, v24

    aput-wide v6, v23, v5

    const/4 v5, 0x5

    aget-wide v6, v23, v5

    sub-int v24, v2, v4

    invoke-static/range {v24 .. v24}, Ljava/lang/Math;->abs(I)I

    move-result v24

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    add-long v6, v6, v24

    aput-wide v6, v23, v5

    const/4 v5, 0x6

    aget-wide v6, v23, v5

    add-int/2addr v2, v4

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-long v0, v2

    move-wide/from16 v24, v0

    add-long v6, v6, v24

    aput-wide v6, v23, v5

    and-int/lit8 v2, v19, 0x1f

    if-nez v2, :cond_37

    const/4 v2, 0x0

    aget-wide v6, v23, v2

    const-wide/16 v4, 0x0

    const/4 v2, 0x0

    const-wide/16 v24, 0x0

    aput-wide v24, v23, v2

    const/4 v2, 0x1

    :goto_2c
    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    if-lt v2, v0, :cond_38

    long-to-int v2, v4

    packed-switch v2, :pswitch_data_2

    :cond_37
    move v2, v8

    move v4, v9

    move v5, v10

    :goto_2d
    add-int v7, v20, v22

    add-int/lit8 v6, v19, 0x1

    move/from16 v19, v6

    move/from16 v20, v7

    move v8, v2

    move v9, v4

    move v10, v5

    move v4, v12

    move v5, v13

    move-wide v6, v14

    move/from16 v2, v18

    move-wide/from16 v14, v16

    goto/16 :goto_2b

    :cond_38
    aget-wide v24, v23, v2

    cmp-long v24, v24, v6

    if-gez v24, :cond_39

    aget-wide v6, v23, v2

    int-to-long v4, v2

    :cond_39
    const-wide/16 v24, 0x0

    aput-wide v24, v23, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    :pswitch_3c
    const/16 v2, -0x10

    if-lt v10, v2, :cond_37

    add-int/lit8 v2, v10, -0x1

    move v4, v9

    move v5, v2

    move v2, v8

    goto :goto_2d

    :pswitch_3d
    const/16 v2, 0x10

    if-ge v10, v2, :cond_37

    add-int/lit8 v2, v10, 0x1

    move v4, v9

    move v5, v2

    move v2, v8

    goto :goto_2d

    :pswitch_3e
    const/16 v2, -0x10

    if-lt v9, v2, :cond_37

    add-int/lit8 v2, v9, -0x1

    move v4, v2

    move v5, v10

    move v2, v8

    goto :goto_2d

    :pswitch_3f
    const/16 v2, 0x10

    if-ge v9, v2, :cond_37

    add-int/lit8 v2, v9, 0x1

    move v4, v2

    move v5, v10

    move v2, v8

    goto :goto_2d

    :pswitch_40
    const/16 v2, -0x10

    if-lt v8, v2, :cond_37

    add-int/lit8 v2, v8, -0x1

    move v4, v9

    move v5, v10

    goto :goto_2d

    :pswitch_41
    const/16 v2, 0x10

    if-ge v8, v2, :cond_37

    add-int/lit8 v2, v8, 0x1

    move v4, v9

    move v5, v10

    goto :goto_2d

    :pswitch_42
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/speedsoftware/a/az;->b:[I

    const/4 v4, 0x4

    aget v6, v2, v4

    const/4 v2, 0x0

    const v4, 0x1e000

    if-ge v6, v4, :cond_2

    move v5, v6

    :goto_2e
    if-lt v2, v6, :cond_3a

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/speedsoftware/a/az;->a:[B

    const v7, 0x3c01c

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v7, v5}, Lcom/speedsoftware/a/az;->a(Z[BII)V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/speedsoftware/a/az;->a:[B

    const v5, 0x3c020

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v5, v6}, Lcom/speedsoftware/a/az;->a(Z[BII)V

    goto/16 :goto_5

    :cond_3a
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/speedsoftware/a/az;->a:[B

    add-int/lit8 v4, v2, 0x1

    aget-byte v2, v7, v2

    const/4 v7, 0x2

    if-ne v2, v7, :cond_40

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/speedsoftware/a/az;->a:[B

    add-int/lit8 v2, v4, 0x1

    aget-byte v4, v7, v4

    const/4 v7, 0x2

    if-eq v4, v7, :cond_3b

    add-int/lit8 v4, v4, -0x20

    int-to-byte v4, v4

    :cond_3b
    :goto_2f
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/speedsoftware/a/az;->a:[B

    add-int/lit8 v7, v5, 0x1

    aput-byte v4, v8, v5

    move v5, v7

    goto :goto_2e

    :cond_3c
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/speedsoftware/a/az;->a:[B

    const v4, 0x3c020

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/speedsoftware/a/az;->a(Z[BI)I

    move-result v2

    const v3, 0x3ffff

    and-int/2addr v3, v2

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/speedsoftware/a/az;->a:[B

    const v5, 0x3c01c

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v4, v5}, Lcom/speedsoftware/a/az;->a(Z[BI)I

    move-result v2

    const v4, 0x3ffff

    and-int/2addr v2, v4

    add-int v4, v3, v2

    const/high16 v5, 0x40000

    if-lt v4, v5, :cond_3d

    const/4 v3, 0x0

    const/4 v2, 0x0

    :cond_3d
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Lcom/speedsoftware/a/aj;->b(I)V

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Lcom/speedsoftware/a/aj;->c(I)V

    invoke-virtual/range {p1 .. p1}, Lcom/speedsoftware/a/aj;->f()Ljava/util/Vector;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/speedsoftware/a/az;->a:[B

    const v4, 0x3c030

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3, v4}, Lcom/speedsoftware/a/az;->a(Z[BI)I

    move-result v2

    const/16 v3, 0x1fc0

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    if-eqz v3, :cond_3e

    invoke-virtual/range {p1 .. p1}, Lcom/speedsoftware/a/aj;->f()Ljava/util/Vector;

    move-result-object v2

    add-int/lit8 v4, v3, 0x40

    invoke-virtual {v2, v4}, Ljava/util/Vector;->setSize(I)V

    const/4 v2, 0x0

    :goto_30
    add-int/lit8 v4, v3, 0x40

    if-lt v2, v4, :cond_3f

    :cond_3e
    return-void

    :cond_3f
    invoke-virtual/range {p1 .. p1}, Lcom/speedsoftware/a/aj;->f()Ljava/util/Vector;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/speedsoftware/a/az;->a:[B

    const v6, 0x3c000

    add-int/2addr v6, v2

    aget-byte v5, v5, v6

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    invoke-virtual {v4, v2, v5}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_30

    :cond_40
    move/from16 v26, v4

    move v4, v2

    move/from16 v2, v26

    goto/16 :goto_2f

    :cond_41
    move v2, v4

    goto/16 :goto_1f

    :cond_42
    move v5, v4

    goto/16 :goto_1c

    :cond_43
    move v5, v4

    goto/16 :goto_1a

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_4
        :pswitch_7
        :pswitch_a
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_12
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_35
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_10
        :pswitch_11
        :pswitch_13
        :pswitch_14
        :pswitch_28
        :pswitch_29
        :pswitch_36
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_37
        :pswitch_37
        :pswitch_38
        :pswitch_3a
        :pswitch_3b
        :pswitch_39
        :pswitch_42
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
    .end packed-switch
.end method

.method public final a([BILcom/speedsoftware/a/aj;)V
    .locals 11

    const/4 v10, 0x2

    const v9, 0x8000

    const/16 v8, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/speedsoftware/a/az;->c()V

    invoke-static {v9, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v0, v2

    :goto_0
    if-lt v0, v1, :cond_5

    move v0, v2

    move v1, v3

    :goto_1
    if-lt v1, p2, :cond_6

    invoke-virtual {p0, v8}, Lcom/speedsoftware/a/az;->b(I)V

    invoke-virtual {p3, v2}, Lcom/speedsoftware/a/aj;->a(I)V

    aget-byte v1, p1, v2

    if-ne v0, v1, :cond_2

    const/4 v0, 0x7

    new-array v1, v0, [Lcom/speedsoftware/a/ae;

    new-instance v0, Lcom/speedsoftware/a/ae;

    const/16 v4, 0x35

    const v5, -0x52a89779

    sget-object v6, Lcom/speedsoftware/a/av;->b:Lcom/speedsoftware/a/av;

    invoke-direct {v0, v4, v5, v6}, Lcom/speedsoftware/a/ae;-><init>(IILcom/speedsoftware/a/av;)V

    aput-object v0, v1, v2

    new-instance v0, Lcom/speedsoftware/a/ae;

    const/16 v4, 0x39

    const v5, 0x3cd7e57e

    sget-object v6, Lcom/speedsoftware/a/av;->c:Lcom/speedsoftware/a/av;

    invoke-direct {v0, v4, v5, v6}, Lcom/speedsoftware/a/ae;-><init>(IILcom/speedsoftware/a/av;)V

    aput-object v0, v1, v3

    new-instance v0, Lcom/speedsoftware/a/ae;

    const/16 v4, 0x78

    const v5, 0x3769893f

    sget-object v6, Lcom/speedsoftware/a/av;->d:Lcom/speedsoftware/a/av;

    invoke-direct {v0, v4, v5, v6}, Lcom/speedsoftware/a/ae;-><init>(IILcom/speedsoftware/a/av;)V

    aput-object v0, v1, v10

    const/4 v0, 0x3

    new-instance v4, Lcom/speedsoftware/a/ae;

    const/16 v5, 0x1d

    const v6, 0xe06077d

    sget-object v7, Lcom/speedsoftware/a/av;->g:Lcom/speedsoftware/a/av;

    invoke-direct {v4, v5, v6, v7}, Lcom/speedsoftware/a/ae;-><init>(IILcom/speedsoftware/a/av;)V

    aput-object v4, v1, v0

    const/4 v0, 0x4

    new-instance v4, Lcom/speedsoftware/a/ae;

    const/16 v5, 0x95

    const v6, 0x1c2c5dc8

    sget-object v7, Lcom/speedsoftware/a/av;->e:Lcom/speedsoftware/a/av;

    invoke-direct {v4, v5, v6, v7}, Lcom/speedsoftware/a/ae;-><init>(IILcom/speedsoftware/a/av;)V

    aput-object v4, v1, v0

    const/4 v0, 0x5

    new-instance v4, Lcom/speedsoftware/a/ae;

    const/16 v5, 0xd8

    const v6, -0x437a18ff

    sget-object v7, Lcom/speedsoftware/a/av;->f:Lcom/speedsoftware/a/av;

    invoke-direct {v4, v5, v6, v7}, Lcom/speedsoftware/a/ae;-><init>(IILcom/speedsoftware/a/av;)V

    aput-object v4, v1, v0

    const/4 v0, 0x6

    new-instance v4, Lcom/speedsoftware/a/ae;

    const/16 v5, 0x28

    const v6, 0x46b9c560

    sget-object v7, Lcom/speedsoftware/a/av;->h:Lcom/speedsoftware/a/av;

    invoke-direct {v4, v5, v6, v7}, Lcom/speedsoftware/a/ae;-><init>(IILcom/speedsoftware/a/av;)V

    aput-object v4, v1, v0

    const/4 v0, -0x1

    array-length v4, p1

    invoke-static {v0, p1, v2, v4}, Lcom/speedsoftware/a/bc;->a(I[BII)I

    move-result v0

    xor-int/lit8 v4, v0, -0x1

    move v0, v2

    :goto_2
    array-length v5, v1

    if-lt v0, v5, :cond_7

    sget-object v0, Lcom/speedsoftware/a/av;->a:Lcom/speedsoftware/a/av;

    :goto_3
    sget-object v1, Lcom/speedsoftware/a/av;->a:Lcom/speedsoftware/a/av;

    if-eq v0, v1, :cond_0

    new-instance v1, Lcom/speedsoftware/a/bi;

    invoke-direct {v1}, Lcom/speedsoftware/a/bi;-><init>()V

    sget-object v4, Lcom/speedsoftware/a/be;->ac:Lcom/speedsoftware/a/be;

    invoke-virtual {v1, v4}, Lcom/speedsoftware/a/bi;->a(Lcom/speedsoftware/a/be;)V

    invoke-virtual {v1}, Lcom/speedsoftware/a/bi;->b()Lcom/speedsoftware/a/d;

    move-result-object v4

    invoke-virtual {v0}, Lcom/speedsoftware/a/av;->a()I

    move-result v0

    invoke-virtual {v4, v0}, Lcom/speedsoftware/a/d;->b(I)V

    invoke-virtual {v1}, Lcom/speedsoftware/a/bi;->b()Lcom/speedsoftware/a/d;

    move-result-object v0

    sget-object v4, Lcom/speedsoftware/a/k;->d:Lcom/speedsoftware/a/k;

    invoke-virtual {v0, v4}, Lcom/speedsoftware/a/d;->a(Lcom/speedsoftware/a/k;)V

    invoke-virtual {v1}, Lcom/speedsoftware/a/bi;->c()Lcom/speedsoftware/a/d;

    move-result-object v0

    sget-object v4, Lcom/speedsoftware/a/k;->d:Lcom/speedsoftware/a/k;

    invoke-virtual {v0, v4}, Lcom/speedsoftware/a/d;->a(Lcom/speedsoftware/a/k;)V

    invoke-virtual {p3}, Lcom/speedsoftware/a/aj;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3}, Lcom/speedsoftware/a/aj;->c()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p3, v0}, Lcom/speedsoftware/a/aj;->a(I)V

    move p2, v2

    :cond_0
    invoke-virtual {p0}, Lcom/speedsoftware/a/az;->e()I

    move-result v0

    invoke-virtual {p0, v3}, Lcom/speedsoftware/a/az;->b(I)V

    and-int/2addr v0, v9

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/speedsoftware/a/az;->a(Lcom/speedsoftware/a/g;)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v4, 0x0

    and-long/2addr v4, v0

    move v0, v2

    :goto_4
    iget v1, p0, Lcom/speedsoftware/a/az;->o:I

    if-ge v1, p2, :cond_1

    int-to-long v6, v0

    cmp-long v1, v6, v4

    if-ltz v1, :cond_9

    :cond_1
    :goto_5
    iget v0, p0, Lcom/speedsoftware/a/az;->o:I

    if-lt v0, p2, :cond_a

    :cond_2
    new-instance v0, Lcom/speedsoftware/a/bi;

    invoke-direct {v0}, Lcom/speedsoftware/a/bi;-><init>()V

    sget-object v1, Lcom/speedsoftware/a/be;->w:Lcom/speedsoftware/a/be;

    invoke-virtual {v0, v1}, Lcom/speedsoftware/a/bi;->a(Lcom/speedsoftware/a/be;)V

    invoke-virtual {v0}, Lcom/speedsoftware/a/bi;->b()Lcom/speedsoftware/a/d;

    move-result-object v1

    sget-object v4, Lcom/speedsoftware/a/k;->d:Lcom/speedsoftware/a/k;

    invoke-virtual {v1, v4}, Lcom/speedsoftware/a/d;->a(Lcom/speedsoftware/a/k;)V

    invoke-virtual {v0}, Lcom/speedsoftware/a/bi;->c()Lcom/speedsoftware/a/d;

    move-result-object v1

    sget-object v4, Lcom/speedsoftware/a/k;->d:Lcom/speedsoftware/a/k;

    invoke-virtual {v1, v4}, Lcom/speedsoftware/a/d;->a(Lcom/speedsoftware/a/k;)V

    invoke-virtual {p3}, Lcom/speedsoftware/a/aj;->b()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p3}, Lcom/speedsoftware/a/aj;->c()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p3, v0}, Lcom/speedsoftware/a/aj;->a(I)V

    if-eqz p2, :cond_4

    invoke-virtual {p3}, Lcom/speedsoftware/a/aj;->b()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_14

    :cond_4
    return-void

    :cond_5
    iget-object v4, p0, Lcom/speedsoftware/a/az;->q:[B

    aget-byte v5, v4, v0

    aget-byte v6, p1, v0

    or-int/2addr v5, v6

    int-to-byte v5, v5

    aput-byte v5, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_6
    aget-byte v4, p1, v1

    xor-int/2addr v0, v4

    int-to-byte v0, v0

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_7
    aget-object v5, v1, v0

    invoke-virtual {v5}, Lcom/speedsoftware/a/ae;->a()I

    move-result v5

    if-ne v5, v4, :cond_8

    aget-object v5, v1, v0

    invoke-virtual {v5}, Lcom/speedsoftware/a/ae;->b()I

    move-result v5

    array-length v6, p1

    if-ne v5, v6, :cond_8

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lcom/speedsoftware/a/ae;->c()Lcom/speedsoftware/a/av;

    move-result-object v0

    goto/16 :goto_3

    :cond_8
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_2

    :cond_9
    invoke-virtual {p3}, Lcom/speedsoftware/a/aj;->h()Ljava/util/Vector;

    move-result-object v1

    invoke-virtual {p0}, Lcom/speedsoftware/a/az;->e()I

    move-result v6

    shr-int/lit8 v6, v6, 0x8

    int-to-byte v6, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0, v8}, Lcom/speedsoftware/a/az;->b(I)V

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    :cond_a
    new-instance v1, Lcom/speedsoftware/a/bi;

    invoke-direct {v1}, Lcom/speedsoftware/a/bi;-><init>()V

    invoke-virtual {p0}, Lcom/speedsoftware/a/az;->e()I

    move-result v0

    and-int v4, v0, v9

    if-nez v4, :cond_c

    shr-int/lit8 v0, v0, 0xc

    invoke-static {v0}, Lcom/speedsoftware/a/be;->a(I)Lcom/speedsoftware/a/be;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/speedsoftware/a/bi;->a(Lcom/speedsoftware/a/be;)V

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/speedsoftware/a/az;->b(I)V

    :goto_7
    sget-object v0, Lcom/speedsoftware/a/w;->a:[B

    invoke-virtual {v1}, Lcom/speedsoftware/a/bi;->d()Lcom/speedsoftware/a/be;

    move-result-object v4

    invoke-virtual {v4}, Lcom/speedsoftware/a/be;->a()I

    move-result v4

    aget-byte v0, v0, v4

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/speedsoftware/a/az;->e()I

    move-result v0

    shr-int/lit8 v0, v0, 0xf

    if-ne v0, v3, :cond_d

    move v0, v3

    :goto_8
    invoke-virtual {v1, v0}, Lcom/speedsoftware/a/bi;->a(Z)V

    invoke-virtual {p0, v3}, Lcom/speedsoftware/a/az;->b(I)V

    :goto_9
    invoke-virtual {v1}, Lcom/speedsoftware/a/bi;->b()Lcom/speedsoftware/a/d;

    move-result-object v0

    sget-object v4, Lcom/speedsoftware/a/k;->d:Lcom/speedsoftware/a/k;

    invoke-virtual {v0, v4}, Lcom/speedsoftware/a/d;->a(Lcom/speedsoftware/a/k;)V

    invoke-virtual {v1}, Lcom/speedsoftware/a/bi;->c()Lcom/speedsoftware/a/d;

    move-result-object v0

    sget-object v4, Lcom/speedsoftware/a/k;->d:Lcom/speedsoftware/a/k;

    invoke-virtual {v0, v4}, Lcom/speedsoftware/a/d;->a(Lcom/speedsoftware/a/k;)V

    sget-object v0, Lcom/speedsoftware/a/w;->a:[B

    invoke-virtual {v1}, Lcom/speedsoftware/a/bi;->d()Lcom/speedsoftware/a/be;

    move-result-object v4

    invoke-virtual {v4}, Lcom/speedsoftware/a/be;->a()I

    move-result v4

    aget-byte v0, v0, v4

    and-int/lit8 v0, v0, 0x3

    if-lez v0, :cond_b

    invoke-virtual {v1}, Lcom/speedsoftware/a/bi;->b()Lcom/speedsoftware/a/d;

    move-result-object v4

    invoke-virtual {v1}, Lcom/speedsoftware/a/bi;->a()Z

    move-result v5

    invoke-direct {p0, v4, v5}, Lcom/speedsoftware/a/az;->a(Lcom/speedsoftware/a/d;Z)V

    if-ne v0, v10, :cond_f

    invoke-virtual {v1}, Lcom/speedsoftware/a/bi;->c()Lcom/speedsoftware/a/d;

    move-result-object v0

    invoke-virtual {v1}, Lcom/speedsoftware/a/bi;->a()Z

    move-result v4

    invoke-direct {p0, v0, v4}, Lcom/speedsoftware/a/az;->a(Lcom/speedsoftware/a/d;Z)V

    :cond_b
    :goto_a
    invoke-virtual {p3}, Lcom/speedsoftware/a/aj;->c()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p3, v0}, Lcom/speedsoftware/a/aj;->a(I)V

    invoke-virtual {p3}, Lcom/speedsoftware/a/aj;->b()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5

    :cond_c
    shr-int/lit8 v0, v0, 0xa

    add-int/lit8 v0, v0, -0x18

    invoke-static {v0}, Lcom/speedsoftware/a/be;->a(I)Lcom/speedsoftware/a/be;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/speedsoftware/a/bi;->a(Lcom/speedsoftware/a/be;)V

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/speedsoftware/a/az;->b(I)V

    goto :goto_7

    :cond_d
    move v0, v2

    goto :goto_8

    :cond_e
    invoke-virtual {v1, v2}, Lcom/speedsoftware/a/bi;->a(Z)V

    goto :goto_9

    :cond_f
    invoke-virtual {v1}, Lcom/speedsoftware/a/bi;->b()Lcom/speedsoftware/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/speedsoftware/a/d;->c()Lcom/speedsoftware/a/k;

    move-result-object v0

    sget-object v4, Lcom/speedsoftware/a/k;->b:Lcom/speedsoftware/a/k;

    if-ne v0, v4, :cond_b

    sget-object v0, Lcom/speedsoftware/a/w;->a:[B

    invoke-virtual {v1}, Lcom/speedsoftware/a/bi;->d()Lcom/speedsoftware/a/be;

    move-result-object v4

    invoke-virtual {v4}, Lcom/speedsoftware/a/be;->a()I

    move-result v4

    aget-byte v0, v0, v4

    and-int/lit8 v0, v0, 0x18

    if-eqz v0, :cond_b

    invoke-virtual {v1}, Lcom/speedsoftware/a/bi;->b()Lcom/speedsoftware/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/speedsoftware/a/d;->b()I

    move-result v0

    const/16 v4, 0x100

    if-lt v0, v4, :cond_10

    add-int/lit16 v0, v0, -0x100

    :goto_b
    invoke-virtual {v1}, Lcom/speedsoftware/a/bi;->b()Lcom/speedsoftware/a/d;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/speedsoftware/a/d;->b(I)V

    goto :goto_a

    :cond_10
    const/16 v4, 0x88

    if-lt v0, v4, :cond_12

    add-int/lit16 v0, v0, -0x108

    :cond_11
    :goto_c
    invoke-virtual {p3}, Lcom/speedsoftware/a/aj;->c()I

    move-result v4

    add-int/2addr v0, v4

    goto :goto_b

    :cond_12
    const/16 v4, 0x10

    if-lt v0, v4, :cond_13

    add-int/lit8 v0, v0, -0x8

    goto :goto_c

    :cond_13
    if-lt v0, v8, :cond_11

    add-int/lit8 v0, v0, -0x10

    goto :goto_c

    :cond_14
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/speedsoftware/a/bi;

    invoke-static {}, Lcom/speedsoftware/a/az;->h()[I

    move-result-object v0

    invoke-virtual {v1}, Lcom/speedsoftware/a/bi;->d()Lcom/speedsoftware/a/be;

    move-result-object v4

    invoke-virtual {v4}, Lcom/speedsoftware/a/be;->ordinal()I

    move-result v4

    aget v0, v0, v4

    packed-switch v0, :pswitch_data_0

    sget-object v0, Lcom/speedsoftware/a/w;->a:[B

    invoke-virtual {v1}, Lcom/speedsoftware/a/bi;->d()Lcom/speedsoftware/a/be;

    move-result-object v4

    invoke-virtual {v4}, Lcom/speedsoftware/a/be;->a()I

    move-result v4

    aget-byte v0, v0, v4

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_3

    invoke-interface {v5, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    move v4, v0

    :goto_d
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-lt v4, v0, :cond_18

    :cond_15
    move v0, v2

    :goto_e
    if-nez v0, :cond_3

    invoke-static {}, Lcom/speedsoftware/a/az;->h()[I

    move-result-object v0

    invoke-virtual {v1}, Lcom/speedsoftware/a/bi;->d()Lcom/speedsoftware/a/be;

    move-result-object v4

    invoke-virtual {v4}, Lcom/speedsoftware/a/be;->ordinal()I

    move-result v4

    aget v0, v0, v4

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_6

    :sswitch_0
    invoke-virtual {v1}, Lcom/speedsoftware/a/bi;->a()Z

    move-result v0

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/speedsoftware/a/be;->S:Lcom/speedsoftware/a/be;

    :goto_f
    invoke-virtual {v1, v0}, Lcom/speedsoftware/a/bi;->a(Lcom/speedsoftware/a/be;)V

    goto/16 :goto_6

    :pswitch_0
    invoke-virtual {v1}, Lcom/speedsoftware/a/bi;->a()Z

    move-result v0

    if-eqz v0, :cond_16

    sget-object v0, Lcom/speedsoftware/a/be;->O:Lcom/speedsoftware/a/be;

    :goto_10
    invoke-virtual {v1, v0}, Lcom/speedsoftware/a/bi;->a(Lcom/speedsoftware/a/be;)V

    goto/16 :goto_6

    :cond_16
    sget-object v0, Lcom/speedsoftware/a/be;->P:Lcom/speedsoftware/a/be;

    goto :goto_10

    :pswitch_1
    invoke-virtual {v1}, Lcom/speedsoftware/a/bi;->a()Z

    move-result v0

    if-eqz v0, :cond_17

    sget-object v0, Lcom/speedsoftware/a/be;->Q:Lcom/speedsoftware/a/be;

    :goto_11
    invoke-virtual {v1, v0}, Lcom/speedsoftware/a/bi;->a(Lcom/speedsoftware/a/be;)V

    goto/16 :goto_6

    :cond_17
    sget-object v0, Lcom/speedsoftware/a/be;->R:Lcom/speedsoftware/a/be;

    goto :goto_11

    :cond_18
    sget-object v7, Lcom/speedsoftware/a/w;->a:[B

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/speedsoftware/a/bi;

    invoke-virtual {v0}, Lcom/speedsoftware/a/bi;->d()Lcom/speedsoftware/a/be;

    move-result-object v0

    invoke-virtual {v0}, Lcom/speedsoftware/a/be;->a()I

    move-result v0

    aget-byte v0, v7, v0

    and-int/lit8 v7, v0, 0x38

    if-eqz v7, :cond_19

    move v0, v3

    goto :goto_e

    :cond_19
    and-int/lit8 v0, v0, 0x40

    if-nez v0, :cond_15

    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_d

    :cond_1a
    sget-object v0, Lcom/speedsoftware/a/be;->T:Lcom/speedsoftware/a/be;

    goto :goto_f

    :sswitch_1
    invoke-virtual {v1}, Lcom/speedsoftware/a/bi;->a()Z

    move-result v0

    if-eqz v0, :cond_1b

    sget-object v0, Lcom/speedsoftware/a/be;->U:Lcom/speedsoftware/a/be;

    :goto_12
    invoke-virtual {v1, v0}, Lcom/speedsoftware/a/bi;->a(Lcom/speedsoftware/a/be;)V

    goto/16 :goto_6

    :cond_1b
    sget-object v0, Lcom/speedsoftware/a/be;->V:Lcom/speedsoftware/a/be;

    goto :goto_12

    :sswitch_2
    invoke-virtual {v1}, Lcom/speedsoftware/a/bi;->a()Z

    move-result v0

    if-eqz v0, :cond_1c

    sget-object v0, Lcom/speedsoftware/a/be;->W:Lcom/speedsoftware/a/be;

    :goto_13
    invoke-virtual {v1, v0}, Lcom/speedsoftware/a/bi;->a(Lcom/speedsoftware/a/be;)V

    goto/16 :goto_6

    :cond_1c
    sget-object v0, Lcom/speedsoftware/a/be;->X:Lcom/speedsoftware/a/be;

    goto :goto_13

    :sswitch_3
    invoke-virtual {v1}, Lcom/speedsoftware/a/bi;->a()Z

    move-result v0

    if-eqz v0, :cond_1d

    sget-object v0, Lcom/speedsoftware/a/be;->Y:Lcom/speedsoftware/a/be;

    :goto_14
    invoke-virtual {v1, v0}, Lcom/speedsoftware/a/bi;->a(Lcom/speedsoftware/a/be;)V

    goto/16 :goto_6

    :cond_1d
    sget-object v0, Lcom/speedsoftware/a/be;->Z:Lcom/speedsoftware/a/be;

    goto :goto_14

    :sswitch_4
    invoke-virtual {v1}, Lcom/speedsoftware/a/bi;->a()Z

    move-result v0

    if-eqz v0, :cond_1e

    sget-object v0, Lcom/speedsoftware/a/be;->aa:Lcom/speedsoftware/a/be;

    :goto_15
    invoke-virtual {v1, v0}, Lcom/speedsoftware/a/bi;->a(Lcom/speedsoftware/a/be;)V

    goto/16 :goto_6

    :cond_1e
    sget-object v0, Lcom/speedsoftware/a/be;->ab:Lcom/speedsoftware/a/be;

    goto :goto_15

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_0
        0x4 -> :sswitch_1
        0x7 -> :sswitch_2
        0x8 -> :sswitch_3
        0x1c -> :sswitch_4
    .end sparse-switch
.end method

.method public final b()[B
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/a/az;->a:[B

    return-object v0
.end method
