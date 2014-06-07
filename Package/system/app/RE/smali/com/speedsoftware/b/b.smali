.class public final Lcom/speedsoftware/b/b;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/io/InputStream;

.field private b:Ljava/io/OutputStream;

.field private c:[B

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:Z


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/speedsoftware/b/b;->a:Ljava/io/InputStream;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/speedsoftware/b/b;->b:Ljava/io/OutputStream;

    const/16 v0, 0x2800

    invoke-direct {p0, v0}, Lcom/speedsoftware/b/b;->a(I)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/speedsoftware/b/b;->a:Ljava/io/InputStream;

    iput-object p1, p0, Lcom/speedsoftware/b/b;->b:Ljava/io/OutputStream;

    const/16 v0, 0x2800

    invoke-direct {p0, v0}, Lcom/speedsoftware/b/b;->a(I)V

    return-void
.end method

.method private a(I)V
    .locals 3

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/speedsoftware/b/b;->i:Z

    const/16 v0, 0x2800

    iput v0, p0, Lcom/speedsoftware/b/b;->f:I

    const/16 v0, 0x200

    iput v0, p0, Lcom/speedsoftware/b/b;->g:I

    iget v0, p0, Lcom/speedsoftware/b/b;->f:I

    iget v1, p0, Lcom/speedsoftware/b/b;->g:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/speedsoftware/b/b;->h:I

    iget v0, p0, Lcom/speedsoftware/b/b;->f:I

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/speedsoftware/b/b;->c:[B

    iget-object v0, p0, Lcom/speedsoftware/b/b;->a:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    iput v0, p0, Lcom/speedsoftware/b/b;->d:I

    iget v0, p0, Lcom/speedsoftware/b/b;->h:I

    iput v0, p0, Lcom/speedsoftware/b/b;->e:I

    :goto_0
    return-void

    :cond_0
    iput v2, p0, Lcom/speedsoftware/b/b;->d:I

    iput v2, p0, Lcom/speedsoftware/b/b;->e:I

    goto :goto_0
.end method

.method private f()Z
    .locals 7

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/speedsoftware/b/b;->i:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "ReadBlock: blkIdx = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/speedsoftware/b/b;->d:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/speedsoftware/b/b;->a:Ljava/io/InputStream;

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "reading from an output buffer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput v1, p0, Lcom/speedsoftware/b/b;->e:I

    iget v0, p0, Lcom/speedsoftware/b/b;->f:I

    :cond_2
    :goto_0
    if-gtz v0, :cond_4

    :cond_3
    iget v0, p0, Lcom/speedsoftware/b/b;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/speedsoftware/b/b;->d:I

    const/4 v0, 0x1

    return v0

    :cond_4
    iget-object v2, p0, Lcom/speedsoftware/b/b;->a:Ljava/io/InputStream;

    iget-object v3, p0, Lcom/speedsoftware/b/b;->c:[B

    invoke-virtual {v2, v3, v1, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, -0x1

    cmp-long v4, v2, v4

    if-eqz v4, :cond_3

    int-to-long v4, v1

    add-long/2addr v4, v2

    long-to-int v1, v4

    int-to-long v4, v0

    sub-long/2addr v4, v2

    long-to-int v0, v4

    iget v4, p0, Lcom/speedsoftware/b/b;->f:I

    int-to-long v4, v4

    cmp-long v4, v2, v4

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/speedsoftware/b/b;->i:Z

    if-eqz v4, :cond_2

    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "ReadBlock: INCOMPLETE READ "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/speedsoftware/b/b;->f:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " bytes read."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private g()V
    .locals 4

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/speedsoftware/b/b;->i:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WriteBlock: blkIdx = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/speedsoftware/b/b;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/speedsoftware/b/b;->b:Ljava/io/OutputStream;

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "writing to an input buffer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v0, p0, Lcom/speedsoftware/b/b;->b:Ljava/io/OutputStream;

    iget-object v1, p0, Lcom/speedsoftware/b/b;->c:[B

    iget v2, p0, Lcom/speedsoftware/b/b;->f:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    iget-object v0, p0, Lcom/speedsoftware/b/b;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    iput v3, p0, Lcom/speedsoftware/b/b;->e:I

    iget v0, p0, Lcom/speedsoftware/b/b;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/speedsoftware/b/b;->d:I

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/speedsoftware/b/b;->g:I

    return v0
.end method

.method public final a([BI)V
    .locals 3

    iget-boolean v0, p0, Lcom/speedsoftware/b/b;->i:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WriteRecord: recIdx = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/speedsoftware/b/b;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " blkIdx = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/speedsoftware/b/b;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/speedsoftware/b/b;->b:Ljava/io/OutputStream;

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "writing to an input buffer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lcom/speedsoftware/b/b;->g:I

    add-int/2addr v0, p2

    array-length v1, p1

    if-le v0, v1, :cond_2

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "record has length \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' with offset \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' which is less than the record size of \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/speedsoftware/b/b;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, p0, Lcom/speedsoftware/b/b;->e:I

    iget v1, p0, Lcom/speedsoftware/b/b;->h:I

    if-lt v0, v1, :cond_3

    invoke-direct {p0}, Lcom/speedsoftware/b/b;->g()V

    :cond_3
    iget-object v0, p0, Lcom/speedsoftware/b/b;->c:[B

    iget v1, p0, Lcom/speedsoftware/b/b;->e:I

    iget v2, p0, Lcom/speedsoftware/b/b;->g:I

    mul-int/2addr v1, v2

    iget v2, p0, Lcom/speedsoftware/b/b;->g:I

    invoke-static {p1, p2, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/speedsoftware/b/b;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/speedsoftware/b/b;->e:I

    return-void
.end method

.method public final a([B)Z
    .locals 4

    const/4 v0, 0x0

    iget v2, p0, Lcom/speedsoftware/b/b;->g:I

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_0
    return v0

    :cond_1
    aget-byte v3, p1, v1

    if-nez v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final b([B)V
    .locals 4

    iget-boolean v0, p0, Lcom/speedsoftware/b/b;->i:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "WriteRecord: recIdx = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/speedsoftware/b/b;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " blkIdx = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/speedsoftware/b/b;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/speedsoftware/b/b;->b:Ljava/io/OutputStream;

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "writing to an input buffer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    array-length v0, p1

    iget v1, p0, Lcom/speedsoftware/b/b;->g:I

    if-eq v0, v1, :cond_2

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "record to write has length \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' which is not the record size of \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/speedsoftware/b/b;->g:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, p0, Lcom/speedsoftware/b/b;->e:I

    iget v1, p0, Lcom/speedsoftware/b/b;->h:I

    if-lt v0, v1, :cond_3

    invoke-direct {p0}, Lcom/speedsoftware/b/b;->g()V

    :cond_3
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/speedsoftware/b/b;->c:[B

    iget v2, p0, Lcom/speedsoftware/b/b;->e:I

    iget v3, p0, Lcom/speedsoftware/b/b;->g:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/speedsoftware/b/b;->g:I

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/speedsoftware/b/b;->e:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/speedsoftware/b/b;->e:I

    return-void
.end method

.method public final b()[B
    .locals 5

    iget-boolean v0, p0, Lcom/speedsoftware/b/b;->i:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "ReadRecord: recIdx = "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/speedsoftware/b/b;->e:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " blkIdx = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/speedsoftware/b/b;->d:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/speedsoftware/b/b;->a:Ljava/io/InputStream;

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/IOException;

    const-string v1, "reading from an output buffer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Lcom/speedsoftware/b/b;->e:I

    iget v1, p0, Lcom/speedsoftware/b/b;->h:I

    if-lt v0, v1, :cond_2

    invoke-direct {p0}, Lcom/speedsoftware/b/b;->f()Z

    :cond_2
    iget v0, p0, Lcom/speedsoftware/b/b;->g:I

    new-array v0, v0, [B

    iget-object v1, p0, Lcom/speedsoftware/b/b;->c:[B

    iget v2, p0, Lcom/speedsoftware/b/b;->e:I

    iget v3, p0, Lcom/speedsoftware/b/b;->g:I

    mul-int/2addr v2, v3

    const/4 v3, 0x0

    iget v4, p0, Lcom/speedsoftware/b/b;->g:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v1, p0, Lcom/speedsoftware/b/b;->e:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/speedsoftware/b/b;->e:I

    return-object v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/speedsoftware/b/b;->d:I

    return v0
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/speedsoftware/b/b;->e:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final e()V
    .locals 6

    const/4 v5, 0x0

    iget-boolean v0, p0, Lcom/speedsoftware/b/b;->i:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "TarBuffer.closeBuffer()."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/speedsoftware/b/b;->b:Ljava/io/OutputStream;

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/speedsoftware/b/b;->i:Z

    if-eqz v0, :cond_1

    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v1, "TarBuffer.flushBlock() called."

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/speedsoftware/b/b;->b:Ljava/io/OutputStream;

    if-nez v0, :cond_2

    new-instance v0, Ljava/io/IOException;

    const-string v1, "writing to an input buffer"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget v0, p0, Lcom/speedsoftware/b/b;->e:I

    if-lez v0, :cond_3

    iget v0, p0, Lcom/speedsoftware/b/b;->e:I

    iget v1, p0, Lcom/speedsoftware/b/b;->g:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/speedsoftware/b/b;->f:I

    sub-int/2addr v1, v0

    new-array v1, v1, [B

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/speedsoftware/b/b;->c:[B

    array-length v4, v1

    invoke-static {v1, v2, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {p0}, Lcom/speedsoftware/b/b;->g()V

    :cond_3
    iget-object v0, p0, Lcom/speedsoftware/b/b;->b:Ljava/io/OutputStream;

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/speedsoftware/b/b;->b:Ljava/io/OutputStream;

    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/speedsoftware/b/b;->b:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    iput-object v5, p0, Lcom/speedsoftware/b/b;->b:Ljava/io/OutputStream;

    :cond_4
    :goto_0
    return-void

    :cond_5
    iget-object v0, p0, Lcom/speedsoftware/b/b;->a:Ljava/io/InputStream;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/speedsoftware/b/b;->a:Ljava/io/InputStream;

    sget-object v1, Ljava/lang/System;->in:Ljava/io/InputStream;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/speedsoftware/b/b;->a:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    iput-object v5, p0, Lcom/speedsoftware/b/b;->a:Ljava/io/InputStream;

    goto :goto_0
.end method
