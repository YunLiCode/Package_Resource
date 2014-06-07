.class final Lcom/speedsoftware/rootexplorer/ca;
.super Ljava/lang/Object;


# instance fields
.field private a:[B

.field private b:I

.field private synthetic c:Lcom/speedsoftware/rootexplorer/ar;


# direct methods
.method constructor <init>(Lcom/speedsoftware/rootexplorer/ar;ILjava/io/InputStream;)V
    .locals 1

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/ca;->c:Lcom/speedsoftware/rootexplorer/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/speedsoftware/rootexplorer/ca;->b:I

    new-array v0, p2, [B

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/ca;->a:[B

    :try_start_0
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/ca;->a:[B

    invoke-virtual {p3, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method final a(I)V
    .locals 1

    iget v0, p0, Lcom/speedsoftware/rootexplorer/ca;->b:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/speedsoftware/rootexplorer/ca;->b:I

    return-void
.end method

.method final a()Z
    .locals 2

    iget v0, p0, Lcom/speedsoftware/rootexplorer/ca;->b:I

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/ca;->a:[B

    array-length v1, v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final b()I
    .locals 8

    const/16 v1, 0x80

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/ca;->a:[B

    iget v3, p0, Lcom/speedsoftware/rootexplorer/ca;->b:I

    aget-byte v0, v0, v3

    and-int/lit8 v3, v0, 0x7f

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/ca;->a:[B

    iget v4, p0, Lcom/speedsoftware/rootexplorer/ca;->b:I

    aget-byte v0, v0, v4

    if-gez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v3, v0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/ca;->a:[B

    iget v4, p0, Lcom/speedsoftware/rootexplorer/ca;->b:I

    add-int/lit8 v4, v4, 0x1

    aget-byte v0, v0, v4

    and-int/lit8 v4, v0, 0x7f

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/ca;->a:[B

    iget v5, p0, Lcom/speedsoftware/rootexplorer/ca;->b:I

    add-int/lit8 v5, v5, 0x1

    aget-byte v0, v0, v5

    if-gez v0, :cond_1

    move v0, v1

    :goto_1
    add-int/2addr v4, v0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/ca;->a:[B

    iget v5, p0, Lcom/speedsoftware/rootexplorer/ca;->b:I

    add-int/lit8 v5, v5, 0x2

    aget-byte v0, v0, v5

    and-int/lit8 v5, v0, 0x7f

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/ca;->a:[B

    iget v6, p0, Lcom/speedsoftware/rootexplorer/ca;->b:I

    add-int/lit8 v6, v6, 0x2

    aget-byte v0, v0, v6

    if-gez v0, :cond_2

    move v0, v1

    :goto_2
    add-int/2addr v0, v5

    iget-object v5, p0, Lcom/speedsoftware/rootexplorer/ca;->a:[B

    iget v6, p0, Lcom/speedsoftware/rootexplorer/ca;->b:I

    add-int/lit8 v6, v6, 0x3

    aget-byte v5, v5, v6

    and-int/lit8 v5, v5, 0x7f

    iget-object v6, p0, Lcom/speedsoftware/rootexplorer/ca;->a:[B

    iget v7, p0, Lcom/speedsoftware/rootexplorer/ca;->b:I

    add-int/lit8 v7, v7, 0x3

    aget-byte v6, v6, v7

    if-gez v6, :cond_3

    :goto_3
    add-int/2addr v1, v5

    iget v2, p0, Lcom/speedsoftware/rootexplorer/ca;->b:I

    add-int/lit8 v2, v2, 0x4

    iput v2, p0, Lcom/speedsoftware/rootexplorer/ca;->b:I

    mul-int/lit16 v2, v4, 0x100

    add-int/2addr v2, v3

    const/high16 v3, 0x10000

    mul-int/2addr v0, v3

    add-int/2addr v0, v2

    const/high16 v2, 0x1000000

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3
.end method

.method final b(I)I
    .locals 3

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/ca;->a:[B

    iget v1, p0, Lcom/speedsoftware/rootexplorer/ca;->b:I

    add-int/2addr v1, p1

    aget-byte v0, v0, v1

    and-int/lit8 v1, v0, 0x7f

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/ca;->a:[B

    iget v2, p0, Lcom/speedsoftware/rootexplorer/ca;->b:I

    add-int/2addr v2, p1

    aget-byte v0, v0, v2

    if-gez v0, :cond_0

    const/16 v0, 0x80

    :goto_0
    add-int/2addr v0, v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method final c()I
    .locals 6

    const/16 v1, 0x80

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/ca;->a:[B

    iget v3, p0, Lcom/speedsoftware/rootexplorer/ca;->b:I

    aget-byte v0, v0, v3

    and-int/lit8 v3, v0, 0x7f

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/ca;->a:[B

    iget v4, p0, Lcom/speedsoftware/rootexplorer/ca;->b:I

    aget-byte v0, v0, v4

    if-gez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v3

    iget-object v3, p0, Lcom/speedsoftware/rootexplorer/ca;->a:[B

    iget v4, p0, Lcom/speedsoftware/rootexplorer/ca;->b:I

    add-int/lit8 v4, v4, 0x1

    aget-byte v3, v3, v4

    and-int/lit8 v3, v3, 0x7f

    iget-object v4, p0, Lcom/speedsoftware/rootexplorer/ca;->a:[B

    iget v5, p0, Lcom/speedsoftware/rootexplorer/ca;->b:I

    add-int/lit8 v5, v5, 0x1

    aget-byte v4, v4, v5

    if-gez v4, :cond_1

    :goto_1
    add-int/2addr v1, v3

    iget v2, p0, Lcom/speedsoftware/rootexplorer/ca;->b:I

    add-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/speedsoftware/rootexplorer/ca;->b:I

    mul-int/lit16 v1, v1, 0x100

    add-int/2addr v0, v1

    return v0

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method final c(I)Ljava/lang/String;
    .locals 7

    const-string v1, ""

    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/ca;->a:[B

    iget v3, p0, Lcom/speedsoftware/rootexplorer/ca;->b:I

    mul-int/lit8 v4, p1, 0x2

    const-string v5, "UTF-16LE"

    invoke-direct {v0, v2, v3, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget v1, p0, Lcom/speedsoftware/rootexplorer/ca;->b:I

    mul-int/lit8 v2, p1, 0x2

    add-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/speedsoftware/rootexplorer/ca;->b:I
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v6, v0

    move-object v0, v1

    move-object v1, v6

    :goto_1
    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method
