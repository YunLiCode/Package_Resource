.class public final Lcom/speedsoftware/b/f;
.super Ljava/io/FilterInputStream;


# instance fields
.field private a:Z

.field private b:Z

.field private c:J

.field private d:J

.field private e:[B

.field private f:[B

.field private g:Lcom/speedsoftware/b/b;

.field private h:Lcom/speedsoftware/b/g;

.field private i:Lcom/speedsoftware/b/e;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    new-instance v0, Lcom/speedsoftware/b/b;

    invoke-direct {v0, p1}, Lcom/speedsoftware/b/b;-><init>(Ljava/io/InputStream;)V

    iput-object v0, p0, Lcom/speedsoftware/b/f;->g:Lcom/speedsoftware/b/b;

    iput-object v2, p0, Lcom/speedsoftware/b/f;->f:[B

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/speedsoftware/b/f;->e:[B

    iput-boolean v1, p0, Lcom/speedsoftware/b/f;->a:Z

    iput-boolean v1, p0, Lcom/speedsoftware/b/f;->b:Z

    iput-object v2, p0, Lcom/speedsoftware/b/f;->i:Lcom/speedsoftware/b/e;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/b/f;->g:Lcom/speedsoftware/b/b;

    invoke-virtual {v0}, Lcom/speedsoftware/b/b;->a()I

    move-result v0

    return v0
.end method

.method public final available()I
    .locals 4

    iget-wide v0, p0, Lcom/speedsoftware/b/f;->c:J

    iget-wide v2, p0, Lcom/speedsoftware/b/f;->d:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public final b()Lcom/speedsoftware/b/g;
    .locals 10

    const/4 v9, 0x1

    const-wide/16 v7, 0x0

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/speedsoftware/b/f;->b:Z

    if-eqz v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lcom/speedsoftware/b/f;->h:Lcom/speedsoftware/b/g;

    if-eqz v1, :cond_3

    iget-wide v1, p0, Lcom/speedsoftware/b/f;->c:J

    iget-wide v3, p0, Lcom/speedsoftware/b/f;->d:J

    sub-long/2addr v1, v3

    iget-boolean v3, p0, Lcom/speedsoftware/b/f;->a:Z

    if-eqz v3, :cond_1

    sget-object v3, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "TarInputStream: SKIP currENTRY \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/speedsoftware/b/f;->h:Lcom/speedsoftware/b/g;

    invoke-virtual {v5}, Lcom/speedsoftware/b/g;->c()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' SZ "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/speedsoftware/b/f;->c:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " OFF "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, p0, Lcom/speedsoftware/b/f;->d:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  skipping "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " bytes"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    cmp-long v3, v1, v7

    if-lez v3, :cond_2

    invoke-virtual {p0, v1, v2}, Lcom/speedsoftware/b/f;->skip(J)J

    :cond_2
    iput-object v0, p0, Lcom/speedsoftware/b/f;->f:[B

    :cond_3
    iget-object v1, p0, Lcom/speedsoftware/b/f;->g:Lcom/speedsoftware/b/b;

    invoke-virtual {v1}, Lcom/speedsoftware/b/b;->b()[B

    move-result-object v1

    if-nez v1, :cond_6

    iget-boolean v2, p0, Lcom/speedsoftware/b/f;->a:Z

    if-eqz v2, :cond_4

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "READ NULL RECORD"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_4
    iput-boolean v9, p0, Lcom/speedsoftware/b/f;->b:Z

    :cond_5
    :goto_1
    iget-boolean v2, p0, Lcom/speedsoftware/b/f;->b:Z

    if-eqz v2, :cond_8

    iput-object v0, p0, Lcom/speedsoftware/b/f;->h:Lcom/speedsoftware/b/g;

    :goto_2
    iget-object v0, p0, Lcom/speedsoftware/b/f;->h:Lcom/speedsoftware/b/g;

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/speedsoftware/b/f;->g:Lcom/speedsoftware/b/b;

    invoke-virtual {v2, v1}, Lcom/speedsoftware/b/b;->a([B)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/speedsoftware/b/f;->a:Z

    if-eqz v2, :cond_7

    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v3, "READ EOF RECORD"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_7
    iput-boolean v9, p0, Lcom/speedsoftware/b/f;->b:Z

    goto :goto_1

    :cond_8
    :try_start_0
    iget-object v2, p0, Lcom/speedsoftware/b/f;->i:Lcom/speedsoftware/b/e;

    if-nez v2, :cond_a

    new-instance v2, Lcom/speedsoftware/b/g;

    invoke-direct {v2, v1}, Lcom/speedsoftware/b/g;-><init>([B)V

    iput-object v2, p0, Lcom/speedsoftware/b/f;->h:Lcom/speedsoftware/b/g;

    :goto_3
    iget-boolean v1, p0, Lcom/speedsoftware/b/f;->a:Z

    if-eqz v1, :cond_9

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TarInputStream: SET CURRENTRY \'"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/speedsoftware/b/f;->h:Lcom/speedsoftware/b/g;

    invoke-virtual {v3}, Lcom/speedsoftware/b/g;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/speedsoftware/b/f;->h:Lcom/speedsoftware/b/g;

    invoke-virtual {v3}, Lcom/speedsoftware/b/g;->g()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_9
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/speedsoftware/b/f;->d:J

    iget-object v1, p0, Lcom/speedsoftware/b/f;->h:Lcom/speedsoftware/b/g;

    invoke-virtual {v1}, Lcom/speedsoftware/b/g;->g()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/speedsoftware/b/f;->c:J
    :try_end_0
    .catch Lcom/speedsoftware/b/a; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    iput-wide v7, p0, Lcom/speedsoftware/b/f;->c:J

    iput-wide v7, p0, Lcom/speedsoftware/b/f;->d:J

    iput-object v0, p0, Lcom/speedsoftware/b/f;->h:Lcom/speedsoftware/b/g;

    new-instance v0, Lcom/speedsoftware/b/a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "bad header in block "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/speedsoftware/b/f;->g:Lcom/speedsoftware/b/b;

    invoke-virtual {v3}, Lcom/speedsoftware/b/b;->c()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " record "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/speedsoftware/b/f;->g:Lcom/speedsoftware/b/b;

    invoke-virtual {v3}, Lcom/speedsoftware/b/b;->d()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Lcom/speedsoftware/b/a;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/speedsoftware/b/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    :try_start_1
    iget-object v1, p0, Lcom/speedsoftware/b/f;->i:Lcom/speedsoftware/b/e;

    invoke-interface {v1}, Lcom/speedsoftware/b/e;->a()Lcom/speedsoftware/b/g;

    move-result-object v1

    iput-object v1, p0, Lcom/speedsoftware/b/f;->h:Lcom/speedsoftware/b/g;
    :try_end_1
    .catch Lcom/speedsoftware/b/a; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_3
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/b/f;->g:Lcom/speedsoftware/b/b;

    invoke-virtual {v0}, Lcom/speedsoftware/b/b;->e()V

    return-void
.end method

.method public final mark(I)V
    .locals 0

    return-void
.end method

.method public final markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final read()I
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/speedsoftware/b/f;->e:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/speedsoftware/b/f;->read([BII)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/speedsoftware/b/f;->e:[B

    aget-byte v0, v0, v2

    goto :goto_0
.end method

.method public final read([B)I
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/speedsoftware/b/f;->read([BII)I

    move-result v0

    return v0
.end method

.method public final read([BII)I
    .locals 6

    const/4 v3, 0x0

    iget-wide v0, p0, Lcom/speedsoftware/b/f;->d:J

    iget-wide v4, p0, Lcom/speedsoftware/b/f;->c:J

    cmp-long v0, v0, v4

    if-ltz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    int-to-long v0, p3

    iget-wide v4, p0, Lcom/speedsoftware/b/f;->d:J

    add-long/2addr v0, v4

    iget-wide v4, p0, Lcom/speedsoftware/b/f;->c:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    iget-wide v0, p0, Lcom/speedsoftware/b/f;->c:J

    iget-wide v4, p0, Lcom/speedsoftware/b/f;->d:J

    sub-long/2addr v0, v4

    long-to-int p3, v0

    :cond_1
    iget-object v0, p0, Lcom/speedsoftware/b/f;->f:[B

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/speedsoftware/b/f;->f:[B

    array-length v0, v0

    if-le p3, v0, :cond_2

    iget-object v0, p0, Lcom/speedsoftware/b/f;->f:[B

    array-length v0, v0

    :goto_1
    iget-object v1, p0, Lcom/speedsoftware/b/f;->f:[B

    invoke-static {v1, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lcom/speedsoftware/b/f;->f:[B

    array-length v1, v1

    if-lt v0, v1, :cond_3

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/speedsoftware/b/f;->f:[B

    :goto_2
    add-int/lit8 v2, v0, 0x0

    sub-int v1, p3, v0

    add-int/2addr p2, v0

    :goto_3
    if-gtz v1, :cond_4

    iget-wide v0, p0, Lcom/speedsoftware/b/f;->d:J

    int-to-long v3, v2

    add-long/2addr v0, v3

    iput-wide v0, p0, Lcom/speedsoftware/b/f;->d:J

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, p3

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/speedsoftware/b/f;->f:[B

    array-length v1, v1

    sub-int/2addr v1, v0

    new-array v2, v1, [B

    iget-object v4, p0, Lcom/speedsoftware/b/f;->f:[B

    invoke-static {v4, v0, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/speedsoftware/b/f;->f:[B

    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/speedsoftware/b/f;->g:Lcom/speedsoftware/b/b;

    invoke-virtual {v0}, Lcom/speedsoftware/b/b;->b()[B

    move-result-object v4

    if-nez v4, :cond_5

    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "unexpected EOF with "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " bytes unread"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    array-length v0, v4

    if-le v0, v1, :cond_6

    invoke-static {v4, v3, p1, p2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sub-int v5, v0, v1

    new-array v5, v5, [B

    iput-object v5, p0, Lcom/speedsoftware/b/f;->f:[B

    iget-object v5, p0, Lcom/speedsoftware/b/f;->f:[B

    sub-int/2addr v0, v1

    invoke-static {v4, v1, v5, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v0, v1

    :goto_4
    add-int/2addr v2, v0

    sub-int/2addr v1, v0

    add-int/2addr p2, v0

    goto :goto_3

    :cond_6
    invoke-static {v4, v3, p1, p2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_4

    :cond_7
    move v2, v3

    move v1, p3

    goto :goto_3
.end method

.method public final reset()V
    .locals 0

    return-void
.end method

.method public final skip(J)J
    .locals 7

    const/16 v0, 0x2000

    new-array v3, v0, [B

    move-wide v1, p1

    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v0, v1, v4

    if-gtz v0, :cond_1

    :cond_0
    sub-long v0, p1, v1

    return-wide v0

    :cond_1
    const/4 v4, 0x0

    array-length v0, v3

    int-to-long v5, v0

    cmp-long v0, v1, v5

    if-lez v0, :cond_2

    array-length v0, v3

    :goto_1
    invoke-virtual {p0, v3, v4, v0}, Lcom/speedsoftware/b/f;->read([BII)I

    move-result v0

    const/4 v4, -0x1

    if-eq v0, v4, :cond_0

    int-to-long v4, v0

    sub-long v0, v1, v4

    move-wide v1, v0

    goto :goto_0

    :cond_2
    long-to-int v0, v1

    goto :goto_1
.end method
