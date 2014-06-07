.class public Lcom/speedsoftware/a/an;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Closeable;


# static fields
.field private static a:Ljava/util/logging/Logger;

.field private static synthetic q:[I

.field private static synthetic r:[I


# instance fields
.field private b:Ljava/io/File;

.field private c:Lcom/speedsoftware/a/v;

.field private final d:Lcom/speedsoftware/a/u;

.field private final e:Lcom/speedsoftware/a/y;

.field private final f:Ljava/util/List;

.field private g:Lcom/speedsoftware/a/af;

.field private h:Lcom/speedsoftware/a/bd;

.field private i:Lcom/speedsoftware/a/at;

.field private j:Lcom/speedsoftware/a/ad;

.field private k:J

.field private l:I

.field private m:Z

.field private n:I

.field private o:J

.field private p:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/speedsoftware/a/an;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/speedsoftware/a/an;->a:Ljava/util/logging/Logger;

    return-void
.end method

.method private constructor <init>(Ljava/io/File;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/speedsoftware/a/an;->f:Ljava/util/List;

    iput-object v2, p0, Lcom/speedsoftware/a/an;->g:Lcom/speedsoftware/a/af;

    iput-object v2, p0, Lcom/speedsoftware/a/an;->h:Lcom/speedsoftware/a/bd;

    iput-object v2, p0, Lcom/speedsoftware/a/an;->i:Lcom/speedsoftware/a/at;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/speedsoftware/a/an;->k:J

    iput-boolean v3, p0, Lcom/speedsoftware/a/an;->m:Z

    iput v3, p0, Lcom/speedsoftware/a/an;->n:I

    iput-wide v4, p0, Lcom/speedsoftware/a/an;->o:J

    iput-wide v4, p0, Lcom/speedsoftware/a/an;->p:J

    invoke-virtual {p0, p1}, Lcom/speedsoftware/a/an;->a(Ljava/io/File;)V

    iput-object v2, p0, Lcom/speedsoftware/a/an;->d:Lcom/speedsoftware/a/u;

    new-instance v0, Lcom/speedsoftware/a/y;

    invoke-direct {v0, p0}, Lcom/speedsoftware/a/y;-><init>(Lcom/speedsoftware/a/an;)V

    iput-object v0, p0, Lcom/speedsoftware/a/an;->e:Lcom/speedsoftware/a/y;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/speedsoftware/a/an;-><init>(Ljava/io/File;)V

    return-void
.end method

.method private static synthetic i()[I
    .locals 3

    sget-object v0, Lcom/speedsoftware/a/an;->q:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/speedsoftware/a/bf;->values()[Lcom/speedsoftware/a/bf;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/speedsoftware/a/bf;->d:Lcom/speedsoftware/a/bf;

    invoke-virtual {v1}, Lcom/speedsoftware/a/bf;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Lcom/speedsoftware/a/bf;->a:Lcom/speedsoftware/a/bf;

    invoke-virtual {v1}, Lcom/speedsoftware/a/bf;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Lcom/speedsoftware/a/bf;->c:Lcom/speedsoftware/a/bf;

    invoke-virtual {v1}, Lcom/speedsoftware/a/bf;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Lcom/speedsoftware/a/bf;->e:Lcom/speedsoftware/a/bf;

    invoke-virtual {v1}, Lcom/speedsoftware/a/bf;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Lcom/speedsoftware/a/bf;->f:Lcom/speedsoftware/a/bf;

    invoke-virtual {v1}, Lcom/speedsoftware/a/bf;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Lcom/speedsoftware/a/bf;->b:Lcom/speedsoftware/a/bf;

    invoke-virtual {v1}, Lcom/speedsoftware/a/bf;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lcom/speedsoftware/a/an;->q:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method private static synthetic j()[I
    .locals 3

    sget-object v0, Lcom/speedsoftware/a/an;->r:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/speedsoftware/a/aq;->values()[Lcom/speedsoftware/a/aq;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/speedsoftware/a/aq;->e:Lcom/speedsoftware/a/aq;

    invoke-virtual {v1}, Lcom/speedsoftware/a/aq;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_9

    :goto_1
    :try_start_1
    sget-object v1, Lcom/speedsoftware/a/aq;->d:Lcom/speedsoftware/a/aq;

    invoke-virtual {v1}, Lcom/speedsoftware/a/aq;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_8

    :goto_2
    :try_start_2
    sget-object v1, Lcom/speedsoftware/a/aq;->j:Lcom/speedsoftware/a/aq;

    invoke-virtual {v1}, Lcom/speedsoftware/a/aq;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_7

    :goto_3
    :try_start_3
    sget-object v1, Lcom/speedsoftware/a/aq;->c:Lcom/speedsoftware/a/aq;

    invoke-virtual {v1}, Lcom/speedsoftware/a/aq;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_6

    :goto_4
    :try_start_4
    sget-object v1, Lcom/speedsoftware/a/aq;->a:Lcom/speedsoftware/a/aq;

    invoke-virtual {v1}, Lcom/speedsoftware/a/aq;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_5

    :goto_5
    :try_start_5
    sget-object v1, Lcom/speedsoftware/a/aq;->b:Lcom/speedsoftware/a/aq;

    invoke-virtual {v1}, Lcom/speedsoftware/a/aq;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_4

    :goto_6
    :try_start_6
    sget-object v1, Lcom/speedsoftware/a/aq;->i:Lcom/speedsoftware/a/aq;

    invoke-virtual {v1}, Lcom/speedsoftware/a/aq;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_3

    :goto_7
    :try_start_7
    sget-object v1, Lcom/speedsoftware/a/aq;->g:Lcom/speedsoftware/a/aq;

    invoke-virtual {v1}, Lcom/speedsoftware/a/aq;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_2

    :goto_8
    :try_start_8
    sget-object v1, Lcom/speedsoftware/a/aq;->h:Lcom/speedsoftware/a/aq;

    invoke-virtual {v1}, Lcom/speedsoftware/a/aq;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_1

    :goto_9
    :try_start_9
    sget-object v1, Lcom/speedsoftware/a/aq;->f:Lcom/speedsoftware/a/aq;

    invoke-virtual {v1}, Lcom/speedsoftware/a/aq;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_0

    :goto_a
    sput-object v0, Lcom/speedsoftware/a/an;->r:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_a

    :catch_1
    move-exception v1

    goto :goto_9

    :catch_2
    move-exception v1

    goto :goto_8

    :catch_3
    move-exception v1

    goto :goto_7

    :catch_4
    move-exception v1

    goto :goto_6

    :catch_5
    move-exception v1

    goto :goto_5

    :catch_6
    move-exception v1

    goto :goto_4

    :catch_7
    move-exception v1

    goto :goto_3

    :catch_8
    move-exception v1

    goto :goto_2

    :catch_9
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public final a()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/a/an;->b:Ljava/io/File;

    return-object v0
.end method

.method public final a(I)V
    .locals 4

    if-lez p1, :cond_0

    iget-wide v0, p0, Lcom/speedsoftware/a/an;->p:J

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/speedsoftware/a/an;->p:J

    :cond_0
    return-void
.end method

.method public final a(Lcom/speedsoftware/a/bm;Ljava/io/OutputStream;)V
    .locals 6

    const-wide/16 v4, -0x1

    iget-object v0, p0, Lcom/speedsoftware/a/an;->f:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/speedsoftware/a/bg;

    sget-object v1, Lcom/speedsoftware/a/as;->e:Lcom/speedsoftware/a/as;

    invoke-direct {v0, v1}, Lcom/speedsoftware/a/bg;-><init>(Lcom/speedsoftware/a/as;)V

    throw v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/speedsoftware/a/an;->e:Lcom/speedsoftware/a/y;

    invoke-virtual {v0, p2}, Lcom/speedsoftware/a/y;->a(Ljava/io/OutputStream;)V

    iget-object v0, p0, Lcom/speedsoftware/a/an;->e:Lcom/speedsoftware/a/y;

    invoke-virtual {v0, p1}, Lcom/speedsoftware/a/y;->a(Lcom/speedsoftware/a/bm;)V

    iget-object v1, p0, Lcom/speedsoftware/a/an;->e:Lcom/speedsoftware/a/y;

    iget-object v0, p0, Lcom/speedsoftware/a/an;->g:Lcom/speedsoftware/a/af;

    invoke-virtual {v0}, Lcom/speedsoftware/a/af;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    :goto_0
    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/speedsoftware/a/y;->a(J)V

    iget-object v0, p0, Lcom/speedsoftware/a/an;->j:Lcom/speedsoftware/a/ad;

    if-nez v0, :cond_1

    new-instance v0, Lcom/speedsoftware/a/ad;

    iget-object v1, p0, Lcom/speedsoftware/a/an;->e:Lcom/speedsoftware/a/y;

    invoke-direct {v0, v1}, Lcom/speedsoftware/a/ad;-><init>(Lcom/speedsoftware/a/y;)V

    iput-object v0, p0, Lcom/speedsoftware/a/an;->j:Lcom/speedsoftware/a/ad;

    :cond_1
    invoke-virtual {p1}, Lcom/speedsoftware/a/bm;->s()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/speedsoftware/a/an;->j:Lcom/speedsoftware/a/ad;

    invoke-virtual {v0}, Lcom/speedsoftware/a/ad;->h()V

    :cond_2
    iget-object v0, p0, Lcom/speedsoftware/a/an;->j:Lcom/speedsoftware/a/ad;

    invoke-virtual {p1}, Lcom/speedsoftware/a/bm;->q()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/speedsoftware/a/ad;->a(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v0, p0, Lcom/speedsoftware/a/an;->j:Lcom/speedsoftware/a/ad;

    invoke-virtual {p1}, Lcom/speedsoftware/a/bm;->o()B

    move-result v1

    invoke-virtual {p1}, Lcom/speedsoftware/a/bm;->s()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/speedsoftware/a/ad;->a(IZ)V

    iget-object v0, p0, Lcom/speedsoftware/a/an;->e:Lcom/speedsoftware/a/y;

    invoke-virtual {v0}, Lcom/speedsoftware/a/y;->c()Lcom/speedsoftware/a/bm;

    move-result-object v2

    invoke-virtual {v2}, Lcom/speedsoftware/a/bm;->r()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/speedsoftware/a/an;->e:Lcom/speedsoftware/a/y;

    invoke-virtual {v0}, Lcom/speedsoftware/a/y;->a()J

    move-result-wide v0

    xor-long/2addr v0, v4

    :goto_1
    invoke-virtual {v2}, Lcom/speedsoftware/a/bm;->i()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    new-instance v0, Lcom/speedsoftware/a/bg;

    sget-object v1, Lcom/speedsoftware/a/as;->a:Lcom/speedsoftware/a/as;

    invoke-direct {v0, v1}, Lcom/speedsoftware/a/bg;-><init>(Lcom/speedsoftware/a/as;)V

    throw v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    move-exception v0

    :try_start_2
    iget-object v1, p0, Lcom/speedsoftware/a/an;->j:Lcom/speedsoftware/a/ad;

    invoke-virtual {v1}, Lcom/speedsoftware/a/ad;->j()V

    instance-of v1, v0, Lcom/speedsoftware/a/bg;

    if-eqz v1, :cond_5

    check-cast v0, Lcom/speedsoftware/a/bg;

    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :catch_1
    move-exception v0

    instance-of v1, v0, Lcom/speedsoftware/a/bg;

    if-eqz v1, :cond_6

    check-cast v0, Lcom/speedsoftware/a/bg;

    throw v0

    :cond_3
    const/4 v0, -0x1

    goto :goto_0

    :cond_4
    :try_start_3
    iget-object v0, p0, Lcom/speedsoftware/a/an;->e:Lcom/speedsoftware/a/y;

    invoke-virtual {v0}, Lcom/speedsoftware/a/y;->b()J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    move-result-wide v0

    xor-long/2addr v0, v4

    goto :goto_1

    :cond_5
    :try_start_4
    new-instance v1, Lcom/speedsoftware/a/bg;

    invoke-direct {v1, v0}, Lcom/speedsoftware/a/bg;-><init>(Ljava/lang/Exception;)V

    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    :cond_6
    new-instance v1, Lcom/speedsoftware/a/bg;

    invoke-direct {v1, v0}, Lcom/speedsoftware/a/bg;-><init>(Ljava/lang/Exception;)V

    throw v1

    :cond_7
    return-void
.end method

.method final a(Ljava/io/File;)V
    .locals 11

    const/4 v3, 0x6

    const/4 v0, 0x4

    const/4 v2, 0x7

    iput-object p1, p0, Lcom/speedsoftware/a/an;->b:Ljava/io/File;

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/speedsoftware/a/an;->o:J

    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/speedsoftware/a/an;->p:J

    invoke-virtual {p0}, Lcom/speedsoftware/a/an;->close()V

    new-instance v1, Lcom/speedsoftware/a/c;

    invoke-direct {v1, p1}, Lcom/speedsoftware/a/c;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/speedsoftware/a/an;->c:Lcom/speedsoftware/a/v;

    const/4 v1, 0x0

    :try_start_0
    iput-object v1, p0, Lcom/speedsoftware/a/an;->g:Lcom/speedsoftware/a/af;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/speedsoftware/a/an;->h:Lcom/speedsoftware/a/bd;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/speedsoftware/a/an;->i:Lcom/speedsoftware/a/at;

    iget-object v1, p0, Lcom/speedsoftware/a/an;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    const/4 v1, 0x0

    iput v1, p0, Lcom/speedsoftware/a/an;->l:I

    iget-object v1, p0, Lcom/speedsoftware/a/an;->b:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    :cond_0
    :goto_0
    :pswitch_0
    const/4 v1, 0x7

    new-array v1, v1, [B

    iget-object v6, p0, Lcom/speedsoftware/a/an;->c:Lcom/speedsoftware/a/v;

    invoke-interface {v6}, Lcom/speedsoftware/a/v;->a()J

    move-result-wide v6

    cmp-long v8, v6, v4

    if-gez v8, :cond_1

    iget-object v8, p0, Lcom/speedsoftware/a/an;->c:Lcom/speedsoftware/a/v;

    const/4 v9, 0x7

    invoke-interface {v8, v1, v9}, Lcom/speedsoftware/a/v;->a([BI)I

    move-result v8

    if-eqz v8, :cond_1

    new-instance v8, Lcom/speedsoftware/a/h;

    invoke-direct {v8, v1}, Lcom/speedsoftware/a/h;-><init>([B)V

    invoke-virtual {v8, v6, v7}, Lcom/speedsoftware/a/h;->a(J)V

    invoke-static {}, Lcom/speedsoftware/a/an;->j()[I

    move-result-object v1

    invoke-virtual {v8}, Lcom/speedsoftware/a/h;->g()Lcom/speedsoftware/a/aq;

    move-result-object v6

    invoke-virtual {v6}, Lcom/speedsoftware/a/aq;->ordinal()I

    move-result v6

    aget v1, v1, v6

    packed-switch v1, :pswitch_data_0

    :pswitch_1
    const/4 v1, 0x4

    new-array v1, v1, [B

    iget-object v6, p0, Lcom/speedsoftware/a/an;->c:Lcom/speedsoftware/a/v;

    const/4 v7, 0x4

    invoke-interface {v6, v1, v7}, Lcom/speedsoftware/a/v;->a([BI)I

    new-instance v6, Lcom/speedsoftware/a/ag;

    invoke-direct {v6, v8, v1}, Lcom/speedsoftware/a/ag;-><init>(Lcom/speedsoftware/a/h;[B)V

    invoke-static {}, Lcom/speedsoftware/a/an;->j()[I

    move-result-object v1

    invoke-virtual {v6}, Lcom/speedsoftware/a/ag;->g()Lcom/speedsoftware/a/aq;

    move-result-object v7

    invoke-virtual {v7}, Lcom/speedsoftware/a/aq;->ordinal()I

    move-result v7

    aget v1, v1, v7

    packed-switch v1, :pswitch_data_1

    :pswitch_2
    sget-object v0, Lcom/speedsoftware/a/an;->a:Ljava/util/logging/Logger;

    const-string v1, "Unknown Header"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    new-instance v0, Lcom/speedsoftware/a/bg;

    sget-object v1, Lcom/speedsoftware/a/as;->b:Lcom/speedsoftware/a/as;

    invoke-direct {v0, v1}, Lcom/speedsoftware/a/bg;-><init>(Lcom/speedsoftware/a/as;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/speedsoftware/a/an;->a:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v3, "exception in archive constructor maybe file is encrypted or currupt"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/speedsoftware/a/an;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :pswitch_3
    :try_start_1
    new-instance v1, Lcom/speedsoftware/a/af;

    invoke-direct {v1, v8}, Lcom/speedsoftware/a/af;-><init>(Lcom/speedsoftware/a/h;)V

    iput-object v1, p0, Lcom/speedsoftware/a/an;->g:Lcom/speedsoftware/a/af;

    iget-object v1, p0, Lcom/speedsoftware/a/an;->g:Lcom/speedsoftware/a/af;

    invoke-virtual {v1}, Lcom/speedsoftware/a/af;->i()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v0, Lcom/speedsoftware/a/bg;

    sget-object v1, Lcom/speedsoftware/a/as;->c:Lcom/speedsoftware/a/as;

    invoke-direct {v0, v1}, Lcom/speedsoftware/a/bg;-><init>(Lcom/speedsoftware/a/as;)V

    throw v0

    :cond_3
    iget-object v1, p0, Lcom/speedsoftware/a/an;->f:Ljava/util/List;

    iget-object v6, p0, Lcom/speedsoftware/a/an;->g:Lcom/speedsoftware/a/af;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_4
    invoke-virtual {v8}, Lcom/speedsoftware/a/h;->c()Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_3
    new-array v6, v1, [B

    iget-object v7, p0, Lcom/speedsoftware/a/an;->c:Lcom/speedsoftware/a/v;

    invoke-interface {v7, v6, v1}, Lcom/speedsoftware/a/v;->a([BI)I

    new-instance v1, Lcom/speedsoftware/a/bd;

    invoke-direct {v1, v8, v6}, Lcom/speedsoftware/a/bd;-><init>(Lcom/speedsoftware/a/h;[B)V

    iget-object v6, p0, Lcom/speedsoftware/a/an;->f:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v1, p0, Lcom/speedsoftware/a/an;->h:Lcom/speedsoftware/a/bd;

    iget-object v1, p0, Lcom/speedsoftware/a/an;->h:Lcom/speedsoftware/a/bd;

    invoke-virtual {v1}, Lcom/speedsoftware/a/bd;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lcom/speedsoftware/a/bg;

    sget-object v1, Lcom/speedsoftware/a/as;->f:Lcom/speedsoftware/a/as;

    invoke-direct {v0, v1}, Lcom/speedsoftware/a/bg;-><init>(Lcom/speedsoftware/a/as;)V

    throw v0

    :cond_4
    move v1, v3

    goto :goto_3

    :pswitch_5
    const/16 v1, 0x8

    new-array v1, v1, [B

    iget-object v6, p0, Lcom/speedsoftware/a/an;->c:Lcom/speedsoftware/a/v;

    const/16 v7, 0x8

    invoke-interface {v6, v1, v7}, Lcom/speedsoftware/a/v;->a([BI)I

    new-instance v6, Lcom/speedsoftware/a/j;

    invoke-direct {v6, v8, v1}, Lcom/speedsoftware/a/j;-><init>(Lcom/speedsoftware/a/h;[B)V

    iget-object v1, p0, Lcom/speedsoftware/a/an;->f:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_6
    const/4 v1, 0x7

    new-array v1, v1, [B

    iget-object v6, p0, Lcom/speedsoftware/a/an;->c:Lcom/speedsoftware/a/v;

    const/4 v7, 0x7

    invoke-interface {v6, v1, v7}, Lcom/speedsoftware/a/v;->a([BI)I

    new-instance v6, Lcom/speedsoftware/a/a;

    invoke-direct {v6, v8, v1}, Lcom/speedsoftware/a/a;-><init>(Lcom/speedsoftware/a/h;[B)V

    iget-object v1, p0, Lcom/speedsoftware/a/an;->f:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_7
    const/4 v1, 0x6

    new-array v1, v1, [B

    iget-object v6, p0, Lcom/speedsoftware/a/an;->c:Lcom/speedsoftware/a/v;

    const/4 v7, 0x6

    invoke-interface {v6, v1, v7}, Lcom/speedsoftware/a/v;->a([BI)I

    new-instance v6, Lcom/speedsoftware/a/x;

    invoke-direct {v6, v8, v1}, Lcom/speedsoftware/a/x;-><init>(Lcom/speedsoftware/a/h;[B)V

    iget-object v1, p0, Lcom/speedsoftware/a/an;->f:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Lcom/speedsoftware/a/x;->e()J

    move-result-wide v7

    invoke-virtual {v6}, Lcom/speedsoftware/a/x;->f()S

    move-result v1

    int-to-long v9, v1

    add-long v6, v7, v9

    iget-object v1, p0, Lcom/speedsoftware/a/an;->c:Lcom/speedsoftware/a/v;

    invoke-interface {v1, v6, v7}, Lcom/speedsoftware/a/v;->a(J)V

    goto/16 :goto_0

    :pswitch_8
    const/4 v1, 0x0

    invoke-virtual {v8}, Lcom/speedsoftware/a/h;->a()Z

    move-result v2

    if-eqz v2, :cond_8

    :goto_4
    invoke-virtual {v8}, Lcom/speedsoftware/a/h;->b()Z

    move-result v1

    if-eqz v1, :cond_5

    add-int/lit8 v0, v0, 0x2

    :cond_5
    if-lez v0, :cond_6

    new-array v1, v0, [B

    iget-object v2, p0, Lcom/speedsoftware/a/an;->c:Lcom/speedsoftware/a/v;

    invoke-interface {v2, v1, v0}, Lcom/speedsoftware/a/v;->a([BI)I

    new-instance v0, Lcom/speedsoftware/a/at;

    invoke-direct {v0, v8, v1}, Lcom/speedsoftware/a/at;-><init>(Lcom/speedsoftware/a/h;[B)V

    :goto_5
    iget-object v1, p0, Lcom/speedsoftware/a/an;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput-object v0, p0, Lcom/speedsoftware/a/an;->i:Lcom/speedsoftware/a/at;

    goto/16 :goto_1

    :cond_6
    new-instance v0, Lcom/speedsoftware/a/at;

    const/4 v1, 0x0

    invoke-direct {v0, v8, v1}, Lcom/speedsoftware/a/at;-><init>(Lcom/speedsoftware/a/h;[B)V

    goto :goto_5

    :pswitch_9
    invoke-virtual {v6}, Lcom/speedsoftware/a/ag;->f()S

    move-result v1

    add-int/lit8 v1, v1, -0x7

    add-int/lit8 v1, v1, -0x4

    new-array v7, v1, [B

    iget-object v8, p0, Lcom/speedsoftware/a/an;->c:Lcom/speedsoftware/a/v;

    invoke-interface {v8, v7, v1}, Lcom/speedsoftware/a/v;->a([BI)I

    new-instance v1, Lcom/speedsoftware/a/bm;

    invoke-direct {v1, v6, v7}, Lcom/speedsoftware/a/bm;-><init>(Lcom/speedsoftware/a/ag;[B)V

    iget-object v6, p0, Lcom/speedsoftware/a/an;->f:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1}, Lcom/speedsoftware/a/bm;->e()J

    move-result-wide v6

    invoke-virtual {v1}, Lcom/speedsoftware/a/bm;->f()S

    move-result v8

    int-to-long v8, v8

    add-long/2addr v6, v8

    invoke-virtual {v1}, Lcom/speedsoftware/a/bm;->p()J

    move-result-wide v8

    add-long/2addr v6, v8

    iget-object v1, p0, Lcom/speedsoftware/a/an;->c:Lcom/speedsoftware/a/v;

    invoke-interface {v1, v6, v7}, Lcom/speedsoftware/a/v;->a(J)V

    goto/16 :goto_0

    :pswitch_a
    invoke-virtual {v6}, Lcom/speedsoftware/a/ag;->f()S

    move-result v1

    add-int/lit8 v1, v1, -0x7

    add-int/lit8 v1, v1, -0x4

    new-array v7, v1, [B

    iget-object v8, p0, Lcom/speedsoftware/a/an;->c:Lcom/speedsoftware/a/v;

    invoke-interface {v8, v7, v1}, Lcom/speedsoftware/a/v;->a([BI)I

    new-instance v1, Lcom/speedsoftware/a/ba;

    invoke-direct {v1, v6, v7}, Lcom/speedsoftware/a/ba;-><init>(Lcom/speedsoftware/a/ag;[B)V

    invoke-virtual {v1}, Lcom/speedsoftware/a/ba;->e()J

    move-result-wide v6

    invoke-virtual {v1}, Lcom/speedsoftware/a/ba;->f()S

    move-result v1

    int-to-long v8, v1

    add-long/2addr v6, v8

    iget-object v1, p0, Lcom/speedsoftware/a/an;->c:Lcom/speedsoftware/a/v;

    invoke-interface {v1, v6, v7}, Lcom/speedsoftware/a/v;->a(J)V

    goto/16 :goto_0

    :pswitch_b
    const/4 v1, 0x3

    new-array v1, v1, [B

    iget-object v7, p0, Lcom/speedsoftware/a/an;->c:Lcom/speedsoftware/a/v;

    const/4 v8, 0x3

    invoke-interface {v7, v1, v8}, Lcom/speedsoftware/a/v;->a([BI)I

    new-instance v7, Lcom/speedsoftware/a/t;

    invoke-direct {v7, v6, v1}, Lcom/speedsoftware/a/t;-><init>(Lcom/speedsoftware/a/ag;[B)V

    invoke-virtual {v7}, Lcom/speedsoftware/a/t;->h()V

    invoke-static {}, Lcom/speedsoftware/a/an;->i()[I

    move-result-object v1

    invoke-virtual {v7}, Lcom/speedsoftware/a/t;->i()Lcom/speedsoftware/a/bf;

    move-result-object v6

    invoke-virtual {v6}, Lcom/speedsoftware/a/bf;->ordinal()I

    move-result v6

    aget v1, v1, v6

    packed-switch v1, :pswitch_data_2

    goto/16 :goto_0

    :pswitch_c
    const/16 v1, 0xa

    new-array v1, v1, [B

    iget-object v6, p0, Lcom/speedsoftware/a/an;->c:Lcom/speedsoftware/a/v;

    const/16 v8, 0xa

    invoke-interface {v6, v1, v8}, Lcom/speedsoftware/a/v;->a([BI)I

    new-instance v6, Lcom/speedsoftware/a/bl;

    invoke-direct {v6, v7, v1}, Lcom/speedsoftware/a/bl;-><init>(Lcom/speedsoftware/a/t;[B)V

    invoke-virtual {v6}, Lcom/speedsoftware/a/bl;->h()V

    iget-object v1, p0, Lcom/speedsoftware/a/an;->f:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_d
    const/16 v1, 0x8

    new-array v1, v1, [B

    iget-object v6, p0, Lcom/speedsoftware/a/an;->c:Lcom/speedsoftware/a/v;

    const/16 v8, 0x8

    invoke-interface {v6, v1, v8}, Lcom/speedsoftware/a/v;->a([BI)I

    new-instance v6, Lcom/speedsoftware/a/ay;

    invoke-direct {v6, v7, v1}, Lcom/speedsoftware/a/ay;-><init>(Lcom/speedsoftware/a/t;[B)V

    invoke-virtual {v6}, Lcom/speedsoftware/a/ay;->h()V

    iget-object v1, p0, Lcom/speedsoftware/a/an;->f:Ljava/util/List;

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :pswitch_e
    invoke-virtual {v7}, Lcom/speedsoftware/a/t;->f()S

    move-result v1

    add-int/lit8 v1, v1, -0x7

    add-int/lit8 v1, v1, -0x4

    add-int/lit8 v1, v1, -0x3

    new-array v6, v1, [B

    iget-object v8, p0, Lcom/speedsoftware/a/an;->c:Lcom/speedsoftware/a/v;

    invoke-interface {v8, v6, v1}, Lcom/speedsoftware/a/v;->a([BI)I

    new-instance v1, Lcom/speedsoftware/a/i;

    invoke-direct {v1, v7, v6}, Lcom/speedsoftware/a/i;-><init>(Lcom/speedsoftware/a/t;[B)V

    invoke-virtual {v1}, Lcom/speedsoftware/a/i;->h()V

    iget-object v6, p0, Lcom/speedsoftware/a/an;->f:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/speedsoftware/a/h;

    invoke-virtual {v0}, Lcom/speedsoftware/a/h;->g()Lcom/speedsoftware/a/aq;

    move-result-object v2

    sget-object v3, Lcom/speedsoftware/a/aq;->c:Lcom/speedsoftware/a/aq;

    if-ne v2, v3, :cond_2

    iget-wide v2, p0, Lcom/speedsoftware/a/an;->o:J

    check-cast v0, Lcom/speedsoftware/a/bm;

    invoke-virtual {v0}, Lcom/speedsoftware/a/bm;->p()J

    move-result-wide v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/speedsoftware/a/an;->o:J

    goto/16 :goto_2

    :cond_8
    move v0, v1

    goto/16 :goto_4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_7
        :pswitch_6
        :pswitch_1
        :pswitch_1
        :pswitch_5
        :pswitch_1
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x3
        :pswitch_9
        :pswitch_2
        :pswitch_2
        :pswitch_b
        :pswitch_a
        :pswitch_2
        :pswitch_9
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_c
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final b()Lcom/speedsoftware/a/v;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/a/an;->c:Lcom/speedsoftware/a/v;

    return-object v0
.end method

.method public final c()Ljava/util/List;
    .locals 5

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/speedsoftware/a/an;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/speedsoftware/a/h;

    invoke-virtual {v0}, Lcom/speedsoftware/a/h;->g()Lcom/speedsoftware/a/aq;

    move-result-object v3

    sget-object v4, Lcom/speedsoftware/a/aq;->c:Lcom/speedsoftware/a/aq;

    invoke-virtual {v3, v4}, Lcom/speedsoftware/a/aq;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    check-cast v0, Lcom/speedsoftware/a/bm;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/a/an;->c:Lcom/speedsoftware/a/v;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/speedsoftware/a/an;->c:Lcom/speedsoftware/a/v;

    invoke-interface {v0}, Lcom/speedsoftware/a/v;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/speedsoftware/a/an;->c:Lcom/speedsoftware/a/v;

    :cond_0
    iget-object v0, p0, Lcom/speedsoftware/a/an;->j:Lcom/speedsoftware/a/ad;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/speedsoftware/a/an;->j:Lcom/speedsoftware/a/ad;

    invoke-virtual {v0}, Lcom/speedsoftware/a/ad;->j()V

    :cond_1
    return-void
.end method

.method public final d()Lcom/speedsoftware/a/bm;
    .locals 4

    iget-object v0, p0, Lcom/speedsoftware/a/an;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    :cond_0
    iget v0, p0, Lcom/speedsoftware/a/an;->l:I

    if-lt v0, v1, :cond_1

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/speedsoftware/a/an;->f:Ljava/util/List;

    iget v2, p0, Lcom/speedsoftware/a/an;->l:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/speedsoftware/a/an;->l:I

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/speedsoftware/a/h;

    invoke-virtual {v0}, Lcom/speedsoftware/a/h;->g()Lcom/speedsoftware/a/aq;

    move-result-object v2

    sget-object v3, Lcom/speedsoftware/a/aq;->c:Lcom/speedsoftware/a/aq;

    if-ne v2, v3, :cond_0

    check-cast v0, Lcom/speedsoftware/a/bm;

    goto :goto_0
.end method

.method public final e()Lcom/speedsoftware/a/u;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/a/an;->d:Lcom/speedsoftware/a/u;

    return-object v0
.end method

.method public final f()Z
    .locals 2

    iget-object v0, p0, Lcom/speedsoftware/a/an;->h:Lcom/speedsoftware/a/bd;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/speedsoftware/a/an;->h:Lcom/speedsoftware/a/bd;

    invoke-virtual {v0}, Lcom/speedsoftware/a/bd;->i()Z

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "mainheader is null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final g()Lcom/speedsoftware/a/bd;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/a/an;->h:Lcom/speedsoftware/a/bd;

    return-object v0
.end method

.method public final h()Z
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/a/an;->g:Lcom/speedsoftware/a/af;

    invoke-virtual {v0}, Lcom/speedsoftware/a/af;->j()Z

    move-result v0

    return v0
.end method
