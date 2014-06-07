.class public final Lcom/speedsoftware/b/i;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field public a:Ljava/lang/StringBuffer;

.field public b:I

.field public c:I

.field public d:I

.field public e:J

.field public f:J

.field public g:I

.field public h:B

.field public i:Ljava/lang/StringBuffer;

.field public j:Ljava/lang/StringBuffer;

.field public k:Ljava/lang/StringBuffer;

.field public l:Ljava/lang/StringBuffer;

.field public m:I

.field public n:I


# direct methods
.method public constructor <init>()V
    .locals 4

    const/16 v3, 0x1f

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "ustar"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/speedsoftware/b/i;->j:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/speedsoftware/b/i;->a:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/speedsoftware/b/i;->i:Ljava/lang/StringBuffer;

    const-string v0, "user.name"

    const-string v1, ""

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_0
    iput v2, p0, Lcom/speedsoftware/b/i;->c:I

    iput v2, p0, Lcom/speedsoftware/b/i;->d:I

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/speedsoftware/b/i;->k:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/speedsoftware/b/i;->l:Ljava/lang/StringBuffer;

    return-void
.end method

.method public static a(J[BI)I
    .locals 3

    const/16 v1, 0xd

    const/4 v2, 0x0

    new-array v0, v1, [B

    invoke-static {p0, p1, v0, v2, v1}, Lcom/speedsoftware/b/i;->a(J[BII)I

    const/16 v1, 0xc

    invoke-static {v0, v2, p2, p3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v0, p3, 0xc

    return v0
.end method

.method public static a(J[BII)I
    .locals 7

    const-wide/16 v5, 0x0

    const/16 v4, 0x20

    add-int/lit8 v0, p4, -0x1

    add-int v1, p3, v0

    const/4 v2, 0x0

    aput-byte v2, p2, v1

    add-int/lit8 v0, v0, -0x1

    add-int v1, p3, v0

    aput-byte v4, p2, v1

    add-int/lit8 v0, v0, -0x1

    cmp-long v1, p0, v5

    if-nez v1, :cond_2

    add-int v1, p3, v0

    const/16 v2, 0x30

    aput-byte v2, p2, v1

    add-int/lit8 v0, v0, -0x1

    :cond_0
    :goto_0
    if-gez v0, :cond_3

    add-int v0, p3, p4

    return v0

    :cond_1
    add-int v1, p3, v0

    const-wide/16 v2, 0x7

    and-long/2addr v2, p0

    long-to-int v2, v2

    int-to-byte v2, v2

    add-int/lit8 v2, v2, 0x30

    int-to-byte v2, v2

    aput-byte v2, p2, v1

    const/4 v1, 0x3

    shr-long/2addr p0, v1

    add-int/lit8 v0, v0, -0x1

    :cond_2
    if-ltz v0, :cond_0

    cmp-long v1, p0, v5

    if-gtz v1, :cond_1

    goto :goto_0

    :cond_3
    add-int v1, p3, v0

    aput-byte v4, p2, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public static a(Ljava/lang/StringBuffer;[BII)I
    .locals 4

    const/4 v1, 0x0

    move v0, v1

    :goto_0
    if-ge v0, p3, :cond_0

    invoke-virtual {p0}, Ljava/lang/StringBuffer;->length()I

    move-result v2

    if-lt v0, v2, :cond_1

    :cond_0
    :goto_1
    if-lt v0, p3, :cond_2

    add-int v0, p2, p3

    return v0

    :cond_1
    add-int v2, p2, v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    add-int v2, p2, v0

    aput-byte v1, p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static a([BII)J
    .locals 7

    const/16 v6, 0x20

    const-wide/16 v1, 0x0

    const/4 v0, 0x1

    add-int v3, p1, p2

    :goto_0
    if-lt p1, v3, :cond_1

    :cond_0
    return-wide v1

    :cond_1
    aget-byte v4, p0, p1

    if-eqz v4, :cond_0

    aget-byte v4, p0, p1

    if-eq v4, v6, :cond_2

    aget-byte v4, p0, p1

    const/16 v5, 0x30

    if-ne v4, v5, :cond_3

    :cond_2
    if-nez v0, :cond_4

    aget-byte v0, p0, p1

    if-eq v0, v6, :cond_0

    :cond_3
    const/4 v0, 0x0

    const/4 v4, 0x3

    shl-long/2addr v1, v4

    aget-byte v4, p0, p1

    add-int/lit8 v4, v4, -0x30

    int-to-long v4, v4

    add-long/2addr v1, v4

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method public static a([B)Ljava/lang/StringBuffer;
    .locals 3

    const/16 v0, 0x159

    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v2, 0x100

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(I)V

    aget-byte v2, p0, v0

    if-eqz v2, :cond_1

    :goto_0
    const/16 v2, 0x1f4

    if-ge v0, v2, :cond_0

    aget-byte v2, p0, v0

    if-nez v2, :cond_3

    :cond_0
    const-string v0, "/"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const/16 v2, 0x64

    if-ge v0, v2, :cond_2

    aget-byte v2, p0, v0

    if-nez v2, :cond_4

    :cond_2
    return-object v1

    :cond_3
    aget-byte v2, p0, v0

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    aget-byte v2, p0, v0

    int-to-char v2, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static b([BII)Ljava/lang/StringBuffer;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p2}, Ljava/lang/StringBuffer;-><init>(I)V

    add-int v1, p1, p2

    :goto_0
    if-lt p1, v1, :cond_1

    :cond_0
    return-object v0

    :cond_1
    aget-byte v2, p0, p1

    if-eqz v2, :cond_0

    aget-byte v2, p0, p1

    int-to-char v2, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/speedsoftware/b/i;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    iget-object v2, p0, Lcom/speedsoftware/b/i;->a:Ljava/lang/StringBuffer;

    if-nez v2, :cond_0

    move-object v2, v1

    :goto_0
    iput-object v2, v0, Lcom/speedsoftware/b/i;->a:Ljava/lang/StringBuffer;

    iget v2, p0, Lcom/speedsoftware/b/i;->b:I

    iput v2, v0, Lcom/speedsoftware/b/i;->b:I

    iget v2, p0, Lcom/speedsoftware/b/i;->c:I

    iput v2, v0, Lcom/speedsoftware/b/i;->c:I

    iget v2, p0, Lcom/speedsoftware/b/i;->d:I

    iput v2, v0, Lcom/speedsoftware/b/i;->d:I

    iget-wide v2, p0, Lcom/speedsoftware/b/i;->e:J

    iput-wide v2, v0, Lcom/speedsoftware/b/i;->e:J

    iget-wide v2, p0, Lcom/speedsoftware/b/i;->f:J

    iput-wide v2, v0, Lcom/speedsoftware/b/i;->f:J

    iget v2, p0, Lcom/speedsoftware/b/i;->g:I

    iput v2, v0, Lcom/speedsoftware/b/i;->g:I

    iget-byte v2, p0, Lcom/speedsoftware/b/i;->h:B

    iput-byte v2, v0, Lcom/speedsoftware/b/i;->h:B

    iget-object v2, p0, Lcom/speedsoftware/b/i;->i:Ljava/lang/StringBuffer;

    if-nez v2, :cond_1

    move-object v2, v1

    :goto_1
    iput-object v2, v0, Lcom/speedsoftware/b/i;->i:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/speedsoftware/b/i;->j:Ljava/lang/StringBuffer;

    if-nez v2, :cond_2

    move-object v2, v1

    :goto_2
    iput-object v2, v0, Lcom/speedsoftware/b/i;->j:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/speedsoftware/b/i;->k:Ljava/lang/StringBuffer;

    if-nez v2, :cond_3

    move-object v2, v1

    :goto_3
    iput-object v2, v0, Lcom/speedsoftware/b/i;->k:Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/speedsoftware/b/i;->l:Ljava/lang/StringBuffer;

    if-nez v2, :cond_4

    :goto_4
    iput-object v1, v0, Lcom/speedsoftware/b/i;->l:Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/speedsoftware/b/i;->m:I

    iput v1, v0, Lcom/speedsoftware/b/i;->m:I

    iget v1, p0, Lcom/speedsoftware/b/i;->n:I

    iput v1, v0, Lcom/speedsoftware/b/i;->n:I

    :goto_5
    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    iget-object v3, p0, Lcom/speedsoftware/b/i;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_6
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Ljava/lang/CloneNotSupportedException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_5

    :cond_1
    :try_start_2
    new-instance v2, Ljava/lang/StringBuffer;

    iget-object v3, p0, Lcom/speedsoftware/b/i;->i:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    new-instance v2, Ljava/lang/StringBuffer;

    iget-object v3, p0, Lcom/speedsoftware/b/i;->j:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    new-instance v2, Ljava/lang/StringBuffer;

    iget-object v3, p0, Lcom/speedsoftware/b/i;->k:Ljava/lang/StringBuffer;

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    new-instance v1, Ljava/lang/StringBuffer;

    iget-object v2, p0, Lcom/speedsoftware/b/i;->l:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object v4, v0

    move-object v0, v1

    move-object v1, v4

    goto :goto_6
.end method
