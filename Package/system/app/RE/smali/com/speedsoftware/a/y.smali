.class public final Lcom/speedsoftware/a/y;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/speedsoftware/a/an;

.field private b:J

.field private c:Z

.field private d:Z

.field private e:Ljava/io/InputStream;

.field private f:Ljava/io/OutputStream;

.field private g:Lcom/speedsoftware/a/bm;

.field private h:Z

.field private i:Z

.field private j:Z

.field private k:J

.field private l:J

.field private m:J

.field private n:J

.field private o:J

.field private p:J

.field private q:J

.field private r:J

.field private s:J

.field private t:J

.field private u:I

.field private v:I

.field private w:I

.field private x:C


# direct methods
.method public constructor <init>(Lcom/speedsoftware/a/an;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/speedsoftware/a/y;->a:Lcom/speedsoftware/a/an;

    return-void
.end method


# virtual methods
.method public final a([BII)I
    .locals 9

    const/4 v3, 0x0

    const/4 v2, -0x1

    move v0, v3

    move v1, p3

    :goto_0
    if-gtz v1, :cond_0

    move v1, v0

    move v0, v3

    :goto_1
    if-eq v1, v2, :cond_4

    :goto_2
    return v0

    :cond_0
    int-to-long v4, v1

    iget-wide v6, p0, Lcom/speedsoftware/a/y;->b:J

    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    iget-wide v4, p0, Lcom/speedsoftware/a/y;->b:J

    long-to-int v0, v4

    :goto_3
    iget-object v4, p0, Lcom/speedsoftware/a/y;->e:Ljava/io/InputStream;

    invoke-virtual {v4, p1, p2, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-gez v4, :cond_2

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_1
    move v0, v1

    goto :goto_3

    :cond_2
    iget-object v0, p0, Lcom/speedsoftware/a/y;->g:Lcom/speedsoftware/a/bm;

    invoke-virtual {v0}, Lcom/speedsoftware/a/bm;->r()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-wide v5, p0, Lcom/speedsoftware/a/y;->t:J

    long-to-int v0, v5

    invoke-static {v0, p1, p2, v4}, Lcom/speedsoftware/a/bc;->a(I[BII)I

    move-result v0

    int-to-long v5, v0

    iput-wide v5, p0, Lcom/speedsoftware/a/y;->t:J

    :cond_3
    iget-wide v5, p0, Lcom/speedsoftware/a/y;->n:J

    int-to-long v7, v4

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/speedsoftware/a/y;->n:J

    add-int v0, v3, v4

    add-int/2addr p2, v4

    sub-int/2addr v1, v4

    iget-wide v5, p0, Lcom/speedsoftware/a/y;->b:J

    int-to-long v7, v4

    sub-long/2addr v5, v7

    iput-wide v5, p0, Lcom/speedsoftware/a/y;->b:J

    iget-object v3, p0, Lcom/speedsoftware/a/y;->a:Lcom/speedsoftware/a/an;

    invoke-virtual {v3, v4}, Lcom/speedsoftware/a/an;->a(I)V

    iget-wide v5, p0, Lcom/speedsoftware/a/y;->b:J

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-nez v3, :cond_6

    iget-object v3, p0, Lcom/speedsoftware/a/y;->g:Lcom/speedsoftware/a/bm;

    invoke-virtual {v3}, Lcom/speedsoftware/a/bm;->r()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/speedsoftware/a/y;->a:Lcom/speedsoftware/a/an;

    invoke-static {v3, p0}, Lcom/speedsoftware/a/s;->a(Lcom/speedsoftware/a/an;Lcom/speedsoftware/a/y;)Z

    move-result v3

    if-nez v3, :cond_5

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/speedsoftware/a/y;->j:Z

    move v0, v2

    goto :goto_2

    :cond_4
    move v0, v1

    goto :goto_2

    :cond_5
    move v3, v0

    move v0, v4

    goto :goto_0

    :cond_6
    move v1, v4

    goto :goto_1
.end method

.method public final a()J
    .locals 2

    iget-wide v0, p0, Lcom/speedsoftware/a/y;->t:J

    return-wide v0
.end method

.method public final a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/speedsoftware/a/y;->s:J

    return-void
.end method

.method public final a(Lcom/speedsoftware/a/bm;)V
    .locals 8

    const-wide/16 v6, 0x0

    invoke-virtual {p1}, Lcom/speedsoftware/a/bm;->e()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/speedsoftware/a/bm;->f()S

    move-result v2

    int-to-long v2, v2

    add-long/2addr v2, v0

    invoke-virtual {p1}, Lcom/speedsoftware/a/bm;->p()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/speedsoftware/a/y;->b:J

    new-instance v0, Lcom/speedsoftware/a/p;

    iget-object v1, p0, Lcom/speedsoftware/a/y;->a:Lcom/speedsoftware/a/an;

    invoke-virtual {v1}, Lcom/speedsoftware/a/an;->b()Lcom/speedsoftware/a/v;

    move-result-object v1

    iget-wide v4, p0, Lcom/speedsoftware/a/y;->b:J

    add-long/2addr v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/speedsoftware/a/p;-><init>(Lcom/speedsoftware/a/v;JJ)V

    iput-object v0, p0, Lcom/speedsoftware/a/y;->e:Ljava/io/InputStream;

    iput-object p1, p0, Lcom/speedsoftware/a/y;->g:Lcom/speedsoftware/a/bm;

    iput-wide v6, p0, Lcom/speedsoftware/a/y;->n:J

    iput-wide v6, p0, Lcom/speedsoftware/a/y;->m:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/speedsoftware/a/y;->t:J

    return-void
.end method

.method public final a(Ljava/io/OutputStream;)V
    .locals 5

    const-wide/16 v3, 0x0

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/speedsoftware/a/y;->f:Ljava/io/OutputStream;

    iput-wide v3, p0, Lcom/speedsoftware/a/y;->b:J

    iput-boolean v2, p0, Lcom/speedsoftware/a/y;->c:Z

    iput-boolean v2, p0, Lcom/speedsoftware/a/y;->d:Z

    iput-boolean v2, p0, Lcom/speedsoftware/a/y;->h:Z

    iput-boolean v2, p0, Lcom/speedsoftware/a/y;->i:Z

    iput-boolean v2, p0, Lcom/speedsoftware/a/y;->j:Z

    iput v2, p0, Lcom/speedsoftware/a/y;->u:I

    iput v2, p0, Lcom/speedsoftware/a/y;->v:I

    iput-wide v3, p0, Lcom/speedsoftware/a/y;->k:J

    iput-wide v3, p0, Lcom/speedsoftware/a/y;->o:J

    iput-wide v3, p0, Lcom/speedsoftware/a/y;->n:J

    iput-wide v3, p0, Lcom/speedsoftware/a/y;->m:J

    iput-wide v3, p0, Lcom/speedsoftware/a/y;->l:J

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/speedsoftware/a/y;->t:J

    iput-wide v0, p0, Lcom/speedsoftware/a/y;->s:J

    iput-wide v0, p0, Lcom/speedsoftware/a/y;->r:J

    const/4 v0, -0x1

    iput v0, p0, Lcom/speedsoftware/a/y;->w:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/speedsoftware/a/y;->g:Lcom/speedsoftware/a/bm;

    iput-char v2, p0, Lcom/speedsoftware/a/y;->x:C

    iput-wide v3, p0, Lcom/speedsoftware/a/y;->q:J

    iput-wide v3, p0, Lcom/speedsoftware/a/y;->p:J

    return-void
.end method

.method public final b()J
    .locals 2

    iget-wide v0, p0, Lcom/speedsoftware/a/y;->s:J

    return-wide v0
.end method

.method public final b([BII)V
    .locals 4

    iget-boolean v0, p0, Lcom/speedsoftware/a/y;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/speedsoftware/a/y;->f:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    :cond_0
    iget-wide v0, p0, Lcom/speedsoftware/a/y;->o:J

    int-to-long v2, p3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/speedsoftware/a/y;->o:J

    iget-boolean v0, p0, Lcom/speedsoftware/a/y;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/speedsoftware/a/y;->a:Lcom/speedsoftware/a/an;

    invoke-virtual {v0}, Lcom/speedsoftware/a/an;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-wide v0, p0, Lcom/speedsoftware/a/y;->s:J

    long-to-int v0, v0

    int-to-short v0, v0

    invoke-static {v0, p1, p3}, Lcom/speedsoftware/a/bc;->a(S[BI)S

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/speedsoftware/a/y;->s:J

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-wide v0, p0, Lcom/speedsoftware/a/y;->s:J

    long-to-int v0, v0

    invoke-static {v0, p1, p2, p3}, Lcom/speedsoftware/a/bc;->a(I[BII)I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/speedsoftware/a/y;->s:J

    goto :goto_0
.end method

.method public final c()Lcom/speedsoftware/a/bm;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/a/y;->g:Lcom/speedsoftware/a/bm;

    return-object v0
.end method
