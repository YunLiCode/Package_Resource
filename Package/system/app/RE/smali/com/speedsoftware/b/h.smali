.class public final Lcom/speedsoftware/b/h;
.super Ljava/io/FilterOutputStream;


# instance fields
.field private a:Z

.field private b:J

.field private c:J

.field private d:[B

.field private e:[B

.field private f:I

.field private g:[B

.field private h:Lcom/speedsoftware/b/b;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 3

    const/16 v2, 0x200

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    new-instance v0, Lcom/speedsoftware/b/b;

    invoke-direct {v0, p1}, Lcom/speedsoftware/b/b;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lcom/speedsoftware/b/h;->h:Lcom/speedsoftware/b/b;

    iput-boolean v1, p0, Lcom/speedsoftware/b/h;->a:Z

    iput v1, p0, Lcom/speedsoftware/b/h;->f:I

    new-array v0, v2, [B

    iput-object v0, p0, Lcom/speedsoftware/b/h;->g:[B

    new-array v0, v2, [B

    iput-object v0, p0, Lcom/speedsoftware/b/h;->e:[B

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/speedsoftware/b/h;->d:[B

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/b/h;->h:Lcom/speedsoftware/b/b;

    invoke-virtual {v0}, Lcom/speedsoftware/b/b;->a()I

    move-result v0

    return v0
.end method

.method public final a(Lcom/speedsoftware/b/g;)V
    .locals 6

    const-wide/16 v4, 0x0

    const/16 v1, 0xff

    const/16 v0, 0x64

    invoke-virtual {p1}, Lcom/speedsoftware/b/g;->b()Lcom/speedsoftware/b/i;

    move-result-object v2

    iget-object v2, v2, Lcom/speedsoftware/b/i;->a:Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/speedsoftware/b/g;->a()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-gt v3, v0, :cond_1

    :cond_0
    invoke-virtual {p1}, Lcom/speedsoftware/b/g;->a()Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-le v3, v1, :cond_3

    :cond_1
    new-instance v3, Lcom/speedsoftware/b/a;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "file name \'"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' is too long ( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " > "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/speedsoftware/b/g;->a()Z

    move-result v4

    if-eqz v4, :cond_2

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " bytes )"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/speedsoftware/b/a;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/speedsoftware/b/h;->e:[B

    invoke-virtual {p1, v0}, Lcom/speedsoftware/b/g;->a([B)V

    iget-object v0, p0, Lcom/speedsoftware/b/h;->h:Lcom/speedsoftware/b/b;

    iget-object v1, p0, Lcom/speedsoftware/b/h;->e:[B

    invoke-virtual {v0, v1}, Lcom/speedsoftware/b/b;->b([B)V

    iput-wide v4, p0, Lcom/speedsoftware/b/h;->c:J

    invoke-virtual {p1}, Lcom/speedsoftware/b/g;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    iput-wide v4, p0, Lcom/speedsoftware/b/h;->b:J

    :goto_1
    return-void

    :cond_4
    invoke-virtual {p1}, Lcom/speedsoftware/b/g;->g()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/speedsoftware/b/h;->b:J

    goto :goto_1
.end method

.method public final b()V
    .locals 5

    const/4 v4, 0x0

    iget v0, p0, Lcom/speedsoftware/b/h;->f:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/speedsoftware/b/h;->f:I

    :goto_0
    iget-object v1, p0, Lcom/speedsoftware/b/h;->g:[B

    array-length v1, v1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/speedsoftware/b/h;->h:Lcom/speedsoftware/b/b;

    iget-object v1, p0, Lcom/speedsoftware/b/h;->g:[B

    invoke-virtual {v0, v1}, Lcom/speedsoftware/b/b;->b([B)V

    iget-wide v0, p0, Lcom/speedsoftware/b/h;->c:J

    iget v2, p0, Lcom/speedsoftware/b/h;->f:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/speedsoftware/b/h;->c:J

    iput v4, p0, Lcom/speedsoftware/b/h;->f:I

    :cond_0
    iget-wide v0, p0, Lcom/speedsoftware/b/h;->c:J

    iget-wide v2, p0, Lcom/speedsoftware/b/h;->b:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "entry closed at \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/speedsoftware/b/h;->c:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' before the \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/speedsoftware/b/h;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' bytes specified in the header were written"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v1, p0, Lcom/speedsoftware/b/h;->g:[B

    aput-byte v4, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final close()V
    .locals 3

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/speedsoftware/b/h;->e:[B

    array-length v2, v2

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lcom/speedsoftware/b/h;->h:Lcom/speedsoftware/b/b;

    iget-object v1, p0, Lcom/speedsoftware/b/h;->e:[B

    invoke-virtual {v0, v1}, Lcom/speedsoftware/b/b;->b([B)V

    iget-object v0, p0, Lcom/speedsoftware/b/h;->h:Lcom/speedsoftware/b/b;

    invoke-virtual {v0}, Lcom/speedsoftware/b/b;->e()V

    return-void

    :cond_0
    iget-object v2, p0, Lcom/speedsoftware/b/h;->e:[B

    aput-byte v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final write(I)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/speedsoftware/b/h;->d:[B

    int-to-byte v1, p1

    aput-byte v1, v0, v2

    iget-object v0, p0, Lcom/speedsoftware/b/h;->d:[B

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v2, v1}, Lcom/speedsoftware/b/h;->write([BII)V

    return-void
.end method

.method public final write([B)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/speedsoftware/b/h;->write([BII)V

    return-void
.end method

.method public final write([BII)V
    .locals 6

    const/4 v0, 0x0

    iget-wide v1, p0, Lcom/speedsoftware/b/h;->c:J

    int-to-long v3, p3

    add-long/2addr v1, v3

    iget-wide v3, p0, Lcom/speedsoftware/b/h;->b:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "request to write \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' bytes exceeds size in header of \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/speedsoftware/b/h;->b:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' bytes"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v1, p0, Lcom/speedsoftware/b/h;->f:I

    if-lez v1, :cond_1

    iget v1, p0, Lcom/speedsoftware/b/h;->f:I

    add-int/2addr v1, p3

    iget-object v2, p0, Lcom/speedsoftware/b/h;->e:[B

    array-length v2, v2

    if-lt v1, v2, :cond_2

    iget-object v1, p0, Lcom/speedsoftware/b/h;->e:[B

    array-length v1, v1

    iget v2, p0, Lcom/speedsoftware/b/h;->f:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/speedsoftware/b/h;->g:[B

    iget-object v3, p0, Lcom/speedsoftware/b/h;->e:[B

    iget v4, p0, Lcom/speedsoftware/b/h;->f:I

    invoke-static {v2, v0, v3, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/speedsoftware/b/h;->e:[B

    iget v3, p0, Lcom/speedsoftware/b/h;->f:I

    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/speedsoftware/b/h;->h:Lcom/speedsoftware/b/b;

    iget-object v3, p0, Lcom/speedsoftware/b/h;->e:[B

    invoke-virtual {v2, v3}, Lcom/speedsoftware/b/b;->b([B)V

    iget-wide v2, p0, Lcom/speedsoftware/b/h;->c:J

    iget-object v4, p0, Lcom/speedsoftware/b/h;->e:[B

    array-length v4, v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/speedsoftware/b/h;->c:J

    add-int/2addr p2, v1

    sub-int/2addr p3, v1

    iput v0, p0, Lcom/speedsoftware/b/h;->f:I

    :cond_1
    :goto_0
    if-gtz p3, :cond_3

    :goto_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/speedsoftware/b/h;->g:[B

    iget v2, p0, Lcom/speedsoftware/b/h;->f:I

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, p3

    iget v1, p0, Lcom/speedsoftware/b/h;->f:I

    add-int/2addr v1, p3

    iput v1, p0, Lcom/speedsoftware/b/h;->f:I

    move p3, v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/speedsoftware/b/h;->e:[B

    array-length v0, v0

    if-ge p3, v0, :cond_4

    iget-object v0, p0, Lcom/speedsoftware/b/h;->g:[B

    iget v1, p0, Lcom/speedsoftware/b/h;->f:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/speedsoftware/b/h;->f:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/speedsoftware/b/h;->f:I

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/speedsoftware/b/h;->h:Lcom/speedsoftware/b/b;

    invoke-virtual {v0, p1, p2}, Lcom/speedsoftware/b/b;->a([BI)V

    iget-object v0, p0, Lcom/speedsoftware/b/h;->e:[B

    array-length v0, v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/speedsoftware/b/h;->c:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/speedsoftware/b/h;->c:J

    int-to-long v2, p3

    sub-long/2addr v2, v0

    long-to-int p3, v2

    int-to-long v2, p2

    add-long/2addr v0, v2

    long-to-int p2, v0

    goto :goto_0
.end method
