.class public final Lcom/speedsoftware/a/bm;
.super Lcom/speedsoftware/a/ag;


# instance fields
.field private f:J

.field private final g:Lcom/speedsoftware/a/z;

.field private final h:I

.field private final i:I

.field private j:B

.field private k:B

.field private l:S

.field private m:I

.field private n:I

.field private final o:[B

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:[B

.field private final s:[B

.field private t:Ljava/util/Date;

.field private u:J

.field private v:J

.field private w:I

.field private x:I


# direct methods
.method public constructor <init>(Lcom/speedsoftware/a/ag;[B)V
    .locals 12

    const/16 v11, 0x9

    const/4 v10, 0x5

    const/4 v4, 0x1

    const/16 v9, 0x8

    const/4 v2, 0x0

    invoke-direct {p0, p1}, Lcom/speedsoftware/a/ag;-><init>(Lcom/speedsoftware/a/ag;)V

    new-array v0, v9, [B

    iput-object v0, p0, Lcom/speedsoftware/a/bm;->s:[B

    const/4 v0, -0x1

    iput v0, p0, Lcom/speedsoftware/a/bm;->x:I

    invoke-static {p2, v2}, Lcom/speedsoftware/a/ac;->b([BI)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/speedsoftware/a/bm;->f:J

    const/4 v0, 0x4

    aget-byte v0, p2, v0

    invoke-static {v0}, Lcom/speedsoftware/a/z;->a(B)Lcom/speedsoftware/a/z;

    move-result-object v0

    iput-object v0, p0, Lcom/speedsoftware/a/bm;->g:Lcom/speedsoftware/a/z;

    invoke-static {p2, v10}, Lcom/speedsoftware/a/ac;->b([BI)I

    move-result v0

    iput v0, p0, Lcom/speedsoftware/a/bm;->h:I

    invoke-static {p2, v11}, Lcom/speedsoftware/a/ac;->b([BI)I

    move-result v0

    iput v0, p0, Lcom/speedsoftware/a/bm;->i:I

    iget-byte v0, p0, Lcom/speedsoftware/a/bm;->j:B

    const/16 v1, 0xd

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/speedsoftware/a/bm;->j:B

    iget-byte v0, p0, Lcom/speedsoftware/a/bm;->k:B

    const/16 v1, 0xe

    aget-byte v1, p2, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/speedsoftware/a/bm;->k:B

    const/16 v0, 0xf

    invoke-static {p2, v0}, Lcom/speedsoftware/a/ac;->a([BI)S

    move-result v0

    iput-short v0, p0, Lcom/speedsoftware/a/bm;->l:S

    const/16 v0, 0x11

    invoke-static {p2, v0}, Lcom/speedsoftware/a/ac;->b([BI)I

    move-result v0

    iput v0, p0, Lcom/speedsoftware/a/bm;->w:I

    const/16 v0, 0x15

    iget-short v1, p0, Lcom/speedsoftware/a/bm;->d:S

    and-int/lit16 v1, v1, 0x100

    if-eqz v1, :cond_6

    move v1, v4

    :goto_0
    if-eqz v1, :cond_7

    const/16 v0, 0x15

    invoke-static {p2, v0}, Lcom/speedsoftware/a/ac;->b([BI)I

    move-result v0

    iput v0, p0, Lcom/speedsoftware/a/bm;->m:I

    const/16 v0, 0x19

    invoke-static {p2, v0}, Lcom/speedsoftware/a/ac;->b([BI)I

    move-result v0

    iput v0, p0, Lcom/speedsoftware/a/bm;->n:I

    const/16 v0, 0x1d

    :cond_0
    :goto_1
    iget-wide v5, p0, Lcom/speedsoftware/a/bm;->u:J

    iget v1, p0, Lcom/speedsoftware/a/bm;->m:I

    int-to-long v7, v1

    or-long/2addr v5, v7

    iput-wide v5, p0, Lcom/speedsoftware/a/bm;->u:J

    iget-wide v5, p0, Lcom/speedsoftware/a/bm;->u:J

    const/16 v1, 0x20

    shl-long/2addr v5, v1

    iput-wide v5, p0, Lcom/speedsoftware/a/bm;->u:J

    iget-wide v5, p0, Lcom/speedsoftware/a/bm;->u:J

    invoke-virtual {p0}, Lcom/speedsoftware/a/bm;->k()I

    move-result v1

    int-to-long v7, v1

    or-long/2addr v5, v7

    iput-wide v5, p0, Lcom/speedsoftware/a/bm;->u:J

    iget-wide v5, p0, Lcom/speedsoftware/a/bm;->v:J

    iget v1, p0, Lcom/speedsoftware/a/bm;->n:I

    int-to-long v7, v1

    or-long/2addr v5, v7

    iput-wide v5, p0, Lcom/speedsoftware/a/bm;->v:J

    iget-wide v5, p0, Lcom/speedsoftware/a/bm;->v:J

    const/16 v1, 0x20

    shl-long/2addr v5, v1

    iput-wide v5, p0, Lcom/speedsoftware/a/bm;->v:J

    iget-wide v5, p0, Lcom/speedsoftware/a/bm;->v:J

    iget-wide v7, p0, Lcom/speedsoftware/a/bm;->f:J

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/speedsoftware/a/bm;->v:J

    iget-short v1, p0, Lcom/speedsoftware/a/bm;->l:S

    const/16 v3, 0x1000

    if-le v1, v3, :cond_8

    const/16 v1, 0x1000

    :goto_2
    iput-short v1, p0, Lcom/speedsoftware/a/bm;->l:S

    iget-short v1, p0, Lcom/speedsoftware/a/bm;->l:S

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/speedsoftware/a/bm;->o:[B

    move v1, v0

    move v0, v2

    :goto_3
    iget-short v3, p0, Lcom/speedsoftware/a/bm;->l:S

    if-lt v0, v3, :cond_9

    invoke-direct {p0}, Lcom/speedsoftware/a/bm;->w()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/speedsoftware/a/bm;->v()Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, ""

    iput-object v0, p0, Lcom/speedsoftware/a/bm;->p:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/speedsoftware/a/bm;->q:Ljava/lang/String;

    move v0, v2

    :goto_4
    iget-object v3, p0, Lcom/speedsoftware/a/bm;->o:[B

    array-length v3, v3

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/speedsoftware/a/bm;->o:[B

    aget-byte v3, v3, v0

    if-nez v3, :cond_a

    :cond_1
    new-array v3, v0, [B

    iget-object v5, p0, Lcom/speedsoftware/a/bm;->o:[B

    array-length v6, v3

    invoke-static {v5, v2, v3, v2, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3}, Ljava/lang/String;-><init>([B)V

    iput-object v5, p0, Lcom/speedsoftware/a/bm;->p:Ljava/lang/String;

    iget-short v3, p0, Lcom/speedsoftware/a/bm;->l:S

    if-eq v0, v3, :cond_2

    add-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Lcom/speedsoftware/a/bm;->o:[B

    invoke-static {v3, v0}, Lcom/speedsoftware/a/r;->a([BI)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/speedsoftware/a/bm;->q:Ljava/lang/String;

    :cond_2
    :goto_5
    sget-object v0, Lcom/speedsoftware/a/aq;->i:Lcom/speedsoftware/a/aq;

    iget-byte v3, p0, Lcom/speedsoftware/a/bm;->c:B

    invoke-virtual {v0, v3}, Lcom/speedsoftware/a/aq;->b(B)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-short v0, p0, Lcom/speedsoftware/a/bm;->e:S

    add-int/lit8 v0, v0, -0x20

    iget-short v3, p0, Lcom/speedsoftware/a/bm;->l:S

    sub-int/2addr v0, v3

    invoke-direct {p0}, Lcom/speedsoftware/a/bm;->x()Z

    move-result v3

    if-eqz v3, :cond_e

    add-int/lit8 v0, v0, -0x8

    move v3, v0

    :goto_6
    if-lez v3, :cond_3

    new-array v0, v3, [B

    iput-object v0, p0, Lcom/speedsoftware/a/bm;->r:[B

    move v0, v2

    :goto_7
    if-lt v0, v3, :cond_c

    :cond_3
    sget-object v0, Lcom/speedsoftware/a/f;->a:Lcom/speedsoftware/a/f;

    iget-object v3, p0, Lcom/speedsoftware/a/bm;->o:[B

    invoke-virtual {v0, v3}, Lcom/speedsoftware/a/f;->a([B)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/speedsoftware/a/bm;->r:[B

    aget-byte v0, v0, v9

    iget-object v3, p0, Lcom/speedsoftware/a/bm;->r:[B

    aget-byte v3, v3, v11

    shl-int/lit8 v3, v3, 0x8

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/speedsoftware/a/bm;->r:[B

    const/16 v5, 0xa

    aget-byte v3, v3, v5

    shl-int/lit8 v3, v3, 0x10

    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/speedsoftware/a/bm;->r:[B

    const/16 v5, 0xb

    aget-byte v3, v3, v5

    shl-int/lit8 v3, v3, 0x18

    add-int/2addr v0, v3

    iput v0, p0, Lcom/speedsoftware/a/bm;->x:I

    :cond_4
    invoke-direct {p0}, Lcom/speedsoftware/a/bm;->x()Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_8
    if-lt v2, v9, :cond_d

    :cond_5
    iget v0, p0, Lcom/speedsoftware/a/bm;->i:I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    ushr-int/lit8 v2, v0, 0x19

    add-int/lit16 v2, v2, 0x7bc

    invoke-virtual {v1, v4, v2}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x2

    ushr-int/lit8 v3, v0, 0x15

    and-int/lit8 v3, v3, 0xf

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    ushr-int/lit8 v2, v0, 0x10

    and-int/lit8 v2, v2, 0x1f

    invoke-virtual {v1, v10, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xb

    ushr-int/lit8 v3, v0, 0xb

    and-int/lit8 v3, v3, 0x1f

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xc

    ushr-int/lit8 v3, v0, 0x5

    and-int/lit8 v3, v3, 0x3f

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xd

    and-int/lit8 v0, v0, 0x1f

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {v1, v2, v0}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {v1}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/speedsoftware/a/bm;->t:Ljava/util/Date;

    return-void

    :cond_6
    move v1, v2

    goto/16 :goto_0

    :cond_7
    iput v2, p0, Lcom/speedsoftware/a/bm;->m:I

    iput v2, p0, Lcom/speedsoftware/a/bm;->n:I

    iget-wide v5, p0, Lcom/speedsoftware/a/bm;->f:J

    const-wide/16 v7, -0x1

    cmp-long v1, v5, v7

    if-nez v1, :cond_0

    const-wide/16 v5, -0x1

    iput-wide v5, p0, Lcom/speedsoftware/a/bm;->f:J

    const v1, 0x7fffffff

    iput v1, p0, Lcom/speedsoftware/a/bm;->n:I

    goto/16 :goto_1

    :cond_8
    iget-short v1, p0, Lcom/speedsoftware/a/bm;->l:S

    goto/16 :goto_2

    :cond_9
    iget-object v3, p0, Lcom/speedsoftware/a/bm;->o:[B

    aget-byte v5, p2, v1

    aput-byte v5, v3, v0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_3

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_4

    :cond_b
    new-instance v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/speedsoftware/a/bm;->o:[B

    invoke-direct {v0, v3}, Ljava/lang/String;-><init>([B)V

    iput-object v0, p0, Lcom/speedsoftware/a/bm;->p:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/speedsoftware/a/bm;->q:Ljava/lang/String;

    goto/16 :goto_5

    :cond_c
    iget-object v5, p0, Lcom/speedsoftware/a/bm;->r:[B

    aget-byte v6, p2, v1

    aput-byte v6, v5, v0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_7

    :cond_d
    iget-object v0, p0, Lcom/speedsoftware/a/bm;->s:[B

    aget-byte v3, p2, v1

    aput-byte v3, v0, v2

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_8

    :cond_e
    move v3, v0

    goto/16 :goto_6
.end method

.method private v()Z
    .locals 1

    iget-short v0, p0, Lcom/speedsoftware/a/bm;->d:S

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private w()Z
    .locals 2

    sget-object v0, Lcom/speedsoftware/a/aq;->c:Lcom/speedsoftware/a/aq;

    iget-byte v1, p0, Lcom/speedsoftware/a/bm;->c:B

    invoke-virtual {v0, v1}, Lcom/speedsoftware/a/aq;->b(B)Z

    move-result v0

    return v0
.end method

.method private x()Z
    .locals 1

    iget-short v0, p0, Lcom/speedsoftware/a/bm;->d:S

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final h()V
    .locals 4

    invoke-super {p0}, Lcom/speedsoftware/a/ag;->h()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "unpSize: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/speedsoftware/a/bm;->f:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\nHostOS: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/speedsoftware/a/bm;->g:Lcom/speedsoftware/a/z;

    invoke-virtual {v2}, Lcom/speedsoftware/a/z;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\nMDate: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/speedsoftware/a/bm;->t:Ljava/util/Date;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\nFileName: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/speedsoftware/a/bm;->p:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\nunpMethod: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v2, p0, Lcom/speedsoftware/a/bm;->k:B

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\nunpVersion: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v2, p0, Lcom/speedsoftware/a/bm;->j:B

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\nfullpackedsize: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/speedsoftware/a/bm;->u:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\nfullunpackedsize: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/speedsoftware/a/bm;->v:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\nisEncrypted: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/speedsoftware/a/bm;->t()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\nisfileHeader: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/speedsoftware/a/bm;->w()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\nisSolid: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/speedsoftware/a/bm;->s()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\nisSplitafter: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/speedsoftware/a/bm;->r()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v0, "\nisSplitBefore:"

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-short v0, p0, Lcom/speedsoftware/a/bm;->d:S

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\nunpSize: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/speedsoftware/a/bm;->f:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\ndataSize: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/speedsoftware/a/bm;->j()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\nisUnicode: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/speedsoftware/a/bm;->v()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\nhasVolumeNumber: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/speedsoftware/a/bm;->b()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\nhasArchiveDataCRC: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/speedsoftware/a/bm;->a()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\nhasSalt: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/speedsoftware/a/bm;->x()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\nhasEncryptVersions: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/speedsoftware/a/bm;->c()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "\nisSubBlock: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/speedsoftware/a/bm;->d()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void

    :cond_0
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public final i()I
    .locals 1

    iget v0, p0, Lcom/speedsoftware/a/bm;->h:I

    return v0
.end method

.method public final l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/a/bm;->p:Ljava/lang/String;

    return-object v0
.end method

.method public final m()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/a/bm;->t:Ljava/util/Date;

    return-object v0
.end method

.method public final n()B
    .locals 1

    iget-byte v0, p0, Lcom/speedsoftware/a/bm;->k:B

    return v0
.end method

.method public final o()B
    .locals 1

    iget-byte v0, p0, Lcom/speedsoftware/a/bm;->j:B

    return v0
.end method

.method public final p()J
    .locals 2

    iget-wide v0, p0, Lcom/speedsoftware/a/bm;->u:J

    return-wide v0
.end method

.method public final q()J
    .locals 2

    iget-wide v0, p0, Lcom/speedsoftware/a/bm;->v:J

    return-wide v0
.end method

.method public final r()Z
    .locals 1

    iget-short v0, p0, Lcom/speedsoftware/a/bm;->d:S

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final s()Z
    .locals 1

    iget-short v0, p0, Lcom/speedsoftware/a/bm;->d:S

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final t()Z
    .locals 1

    iget-short v0, p0, Lcom/speedsoftware/a/bm;->d:S

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final u()Z
    .locals 2

    iget-short v0, p0, Lcom/speedsoftware/a/bm;->d:S

    and-int/lit16 v0, v0, 0xe0

    const/16 v1, 0xe0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
