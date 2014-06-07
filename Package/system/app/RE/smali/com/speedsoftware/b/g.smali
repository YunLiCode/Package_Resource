.class public final Lcom/speedsoftware/b/g;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;


# instance fields
.field private a:Ljava/io/File;

.field private b:Lcom/speedsoftware/b/i;

.field private c:Z

.field private d:Z

.field private e:Z


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8

    const/4 v7, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/speedsoftware/b/g;->i()V

    iget-object v1, p0, Lcom/speedsoftware/b/g;->b:Lcom/speedsoftware/b/i;

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v7, p0, Lcom/speedsoftware/b/g;->e:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/speedsoftware/b/g;->d:Z

    iput-boolean v7, p0, Lcom/speedsoftware/b/g;->c:Z

    iput v7, v1, Lcom/speedsoftware/b/i;->g:I

    iput v7, v1, Lcom/speedsoftware/b/i;->m:I

    iput v7, v1, Lcom/speedsoftware/b/i;->n:I

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Lcom/speedsoftware/b/i;->a:Ljava/lang/StringBuffer;

    if-eqz v2, :cond_0

    const/16 v0, 0x41ed

    :goto_0
    iput v0, v1, Lcom/speedsoftware/b/i;->b:I

    iput v7, v1, Lcom/speedsoftware/b/i;->c:I

    iput v7, v1, Lcom/speedsoftware/b/i;->d:I

    const-wide/16 v3, 0x0

    iput-wide v3, v1, Lcom/speedsoftware/b/i;->e:J

    iput v7, v1, Lcom/speedsoftware/b/i;->g:I

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    iput-wide v3, v1, Lcom/speedsoftware/b/i;->f:J

    if-eqz v2, :cond_1

    const/16 v0, 0x35

    :goto_1
    iput-byte v0, v1, Lcom/speedsoftware/b/i;->h:B

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, ""

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Lcom/speedsoftware/b/i;->i:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, ""

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Lcom/speedsoftware/b/i;->k:Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v2, ""

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v0, v1, Lcom/speedsoftware/b/i;->l:Ljava/lang/StringBuffer;

    iput v7, v1, Lcom/speedsoftware/b/i;->m:I

    iput v7, v1, Lcom/speedsoftware/b/i;->n:I

    return-void

    :cond_0
    const v0, 0x81a4

    goto :goto_0

    :cond_1
    const/16 v0, 0x30

    goto :goto_1
.end method

.method public constructor <init>([B)V
    .locals 8

    const/16 v7, 0x103

    const/16 v6, 0x102

    const/16 v5, 0x101

    const/16 v4, 0x8

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0}, Lcom/speedsoftware/b/g;->i()V

    iget-object v0, p0, Lcom/speedsoftware/b/g;->b:Lcom/speedsoftware/b/i;

    aget-byte v1, p1, v5

    if-nez v1, :cond_0

    aget-byte v1, p1, v6

    if-nez v1, :cond_0

    aget-byte v1, p1, v7

    if-nez v1, :cond_0

    const/16 v1, 0x104

    aget-byte v1, p1, v1

    if-nez v1, :cond_0

    const/16 v1, 0x105

    aget-byte v1, p1, v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/speedsoftware/b/g;->c:Z

    iput-boolean v3, p0, Lcom/speedsoftware/b/g;->d:Z

    iput-boolean v3, p0, Lcom/speedsoftware/b/g;->e:Z

    :goto_0
    invoke-static {p1}, Lcom/speedsoftware/b/i;->a([B)Ljava/lang/StringBuffer;

    move-result-object v1

    iput-object v1, v0, Lcom/speedsoftware/b/i;->a:Ljava/lang/StringBuffer;

    const/16 v1, 0x64

    invoke-static {p1, v1, v4}, Lcom/speedsoftware/b/i;->a([BII)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Lcom/speedsoftware/b/i;->b:I

    const/16 v1, 0x6c

    invoke-static {p1, v1, v4}, Lcom/speedsoftware/b/i;->a([BII)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Lcom/speedsoftware/b/i;->c:I

    const/16 v1, 0x74

    invoke-static {p1, v1, v4}, Lcom/speedsoftware/b/i;->a([BII)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Lcom/speedsoftware/b/i;->d:I

    const/16 v1, 0x7c

    const/16 v2, 0xc

    invoke-static {p1, v1, v2}, Lcom/speedsoftware/b/i;->a([BII)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/speedsoftware/b/i;->e:J

    const/16 v1, 0x88

    const/16 v2, 0xc

    invoke-static {p1, v1, v2}, Lcom/speedsoftware/b/i;->a([BII)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/speedsoftware/b/i;->f:J

    const/16 v1, 0x94

    invoke-static {p1, v1, v4}, Lcom/speedsoftware/b/i;->a([BII)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Lcom/speedsoftware/b/i;->g:I

    const/16 v1, 0x9c

    aget-byte v1, p1, v1

    iput-byte v1, v0, Lcom/speedsoftware/b/i;->h:B

    const/16 v1, 0x9d

    const/16 v2, 0x64

    invoke-static {p1, v1, v2}, Lcom/speedsoftware/b/i;->b([BII)Ljava/lang/StringBuffer;

    move-result-object v1

    iput-object v1, v0, Lcom/speedsoftware/b/i;->i:Ljava/lang/StringBuffer;

    iget-boolean v1, p0, Lcom/speedsoftware/b/g;->d:Z

    if-eqz v1, :cond_3

    invoke-static {p1, v5, v4}, Lcom/speedsoftware/b/i;->b([BII)Ljava/lang/StringBuffer;

    move-result-object v1

    iput-object v1, v0, Lcom/speedsoftware/b/i;->j:Ljava/lang/StringBuffer;

    const/16 v1, 0x109

    const/16 v2, 0x20

    invoke-static {p1, v1, v2}, Lcom/speedsoftware/b/i;->b([BII)Ljava/lang/StringBuffer;

    move-result-object v1

    iput-object v1, v0, Lcom/speedsoftware/b/i;->k:Ljava/lang/StringBuffer;

    const/16 v1, 0x129

    const/16 v2, 0x20

    invoke-static {p1, v1, v2}, Lcom/speedsoftware/b/i;->b([BII)Ljava/lang/StringBuffer;

    move-result-object v1

    iput-object v1, v0, Lcom/speedsoftware/b/i;->l:Ljava/lang/StringBuffer;

    const/16 v1, 0x149

    invoke-static {p1, v1, v4}, Lcom/speedsoftware/b/i;->a([BII)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Lcom/speedsoftware/b/i;->m:I

    const/16 v1, 0x151

    invoke-static {p1, v1, v4}, Lcom/speedsoftware/b/i;->a([BII)J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Lcom/speedsoftware/b/i;->n:I

    :goto_1
    return-void

    :cond_0
    aget-byte v1, p1, v5

    const/16 v2, 0x75

    if-ne v1, v2, :cond_1

    aget-byte v1, p1, v6

    const/16 v2, 0x73

    if-ne v1, v2, :cond_1

    aget-byte v1, p1, v7

    const/16 v2, 0x74

    if-ne v1, v2, :cond_1

    const/16 v1, 0x104

    aget-byte v1, p1, v1

    const/16 v2, 0x61

    if-ne v1, v2, :cond_1

    const/16 v1, 0x105

    aget-byte v1, p1, v1

    const/16 v2, 0x72

    if-ne v1, v2, :cond_1

    const/16 v1, 0x106

    aget-byte v1, p1, v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/speedsoftware/b/g;->d:Z

    iput-boolean v3, p0, Lcom/speedsoftware/b/g;->e:Z

    iput-boolean v3, p0, Lcom/speedsoftware/b/g;->c:Z

    goto/16 :goto_0

    :cond_1
    aget-byte v1, p1, v5

    const/16 v2, 0x75

    if-ne v1, v2, :cond_2

    aget-byte v1, p1, v6

    const/16 v2, 0x73

    if-ne v1, v2, :cond_2

    aget-byte v1, p1, v7

    const/16 v2, 0x74

    if-ne v1, v2, :cond_2

    const/16 v1, 0x104

    aget-byte v1, p1, v1

    const/16 v2, 0x61

    if-ne v1, v2, :cond_2

    const/16 v1, 0x105

    aget-byte v1, p1, v1

    const/16 v2, 0x72

    if-ne v1, v2, :cond_2

    const/16 v1, 0x106

    aget-byte v1, p1, v1

    if-eqz v1, :cond_2

    const/16 v1, 0x107

    aget-byte v1, p1, v1

    if-eqz v1, :cond_2

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/speedsoftware/b/g;->e:Z

    iput-boolean v3, p0, Lcom/speedsoftware/b/g;->c:Z

    iput-boolean v3, p0, Lcom/speedsoftware/b/g;->d:Z

    goto/16 :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "header magic is not \'ustar\' or unix-style zeros, it is \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-byte v1, p1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    aget-byte v1, p1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    aget-byte v1, p1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v1, 0x104

    aget-byte v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v1, 0x105

    aget-byte v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v1, 0x106

    aget-byte v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const/16 v1, 0x107

    aget-byte v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "\', or (dec) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-byte v1, p1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-byte v1, p1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    aget-byte v1, p1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x104

    aget-byte v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x105

    aget-byte v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x106

    aget-byte v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x107

    aget-byte v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    new-instance v1, Lcom/speedsoftware/b/a;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/speedsoftware/b/a;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3
    iput v3, v0, Lcom/speedsoftware/b/i;->m:I

    iput v3, v0, Lcom/speedsoftware/b/i;->n:I

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/speedsoftware/b/i;->j:Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/speedsoftware/b/i;->k:Ljava/lang/StringBuffer;

    new-instance v1, Ljava/lang/StringBuffer;

    const-string v2, ""

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/speedsoftware/b/i;->l:Ljava/lang/StringBuffer;

    goto/16 :goto_1
.end method

.method private static b([B)J
    .locals 5

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    array-length v3, p0

    if-lt v0, v3, :cond_0

    return-wide v1

    :cond_0
    aget-byte v3, p0, v0

    and-int/lit16 v3, v3, 0xff

    int-to-long v3, v3

    add-long/2addr v1, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private i()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/speedsoftware/b/g;->a:Ljava/io/File;

    new-instance v0, Lcom/speedsoftware/b/i;

    invoke-direct {v0}, Lcom/speedsoftware/b/i;-><init>()V

    iput-object v0, p0, Lcom/speedsoftware/b/g;->b:Lcom/speedsoftware/b/i;

    iput-boolean v1, p0, Lcom/speedsoftware/b/g;->e:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/speedsoftware/b/g;->d:Z

    iput-boolean v1, p0, Lcom/speedsoftware/b/g;->c:Z

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/b/g;->b:Lcom/speedsoftware/b/i;

    iput-wide p1, v0, Lcom/speedsoftware/b/i;->e:J

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/speedsoftware/b/g;->b:Lcom/speedsoftware/b/i;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/speedsoftware/b/i;->k:Ljava/lang/StringBuffer;

    return-void
.end method

.method public final a(Ljava/util/Date;)V
    .locals 5

    iget-object v0, p0, Lcom/speedsoftware/b/g;->b:Lcom/speedsoftware/b/i;

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    iput-wide v1, v0, Lcom/speedsoftware/b/i;->f:J

    return-void
.end method

.method public final a([B)V
    .locals 9

    const/16 v4, 0x9b

    const/16 v8, 0x20

    const/16 v5, 0x64

    const/4 v2, 0x0

    const/16 v7, 0x8

    iget-boolean v0, p0, Lcom/speedsoftware/b/g;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/speedsoftware/b/g;->b:Lcom/speedsoftware/b/i;

    iget-object v0, v0, Lcom/speedsoftware/b/i;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-le v0, v5, :cond_0

    new-instance v0, Lcom/speedsoftware/b/a;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "file path is greater than 100 characters, "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/speedsoftware/b/g;->b:Lcom/speedsoftware/b/i;

    iget-object v2, v2, Lcom/speedsoftware/b/i;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/speedsoftware/b/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/speedsoftware/b/g;->b:Lcom/speedsoftware/b/i;

    iget-object v0, v0, Lcom/speedsoftware/b/i;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v5, :cond_3

    const-string v1, "/"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x64

    invoke-virtual {v0, v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, -0x1

    if-ne v1, v3, :cond_1

    new-instance v1, Lcom/speedsoftware/b/a;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "file name is greater than 100 characters, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/speedsoftware/b/a;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v4, :cond_2

    new-instance v0, Lcom/speedsoftware/b/a;

    const-string v1, "file prefix is greater than 155 characters"

    invoke-direct {v0, v1}, Lcom/speedsoftware/b/a;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p1, v2, v5}, Lcom/speedsoftware/b/i;->a(Ljava/lang/StringBuffer;[BII)I

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/16 v0, 0x159

    invoke-static {v1, p1, v0, v4}, Lcom/speedsoftware/b/i;->a(Ljava/lang/StringBuffer;[BII)I

    :goto_0
    iget-object v0, p0, Lcom/speedsoftware/b/g;->b:Lcom/speedsoftware/b/i;

    iget v0, v0, Lcom/speedsoftware/b/i;->b:I

    int-to-long v0, v0

    invoke-static {v0, v1, p1, v5, v7}, Lcom/speedsoftware/b/i;->a(J[BII)I

    move-result v0

    iget-object v1, p0, Lcom/speedsoftware/b/g;->b:Lcom/speedsoftware/b/i;

    iget v1, v1, Lcom/speedsoftware/b/i;->c:I

    int-to-long v3, v1

    invoke-static {v3, v4, p1, v0, v7}, Lcom/speedsoftware/b/i;->a(J[BII)I

    move-result v0

    iget-object v1, p0, Lcom/speedsoftware/b/g;->b:Lcom/speedsoftware/b/i;

    iget v1, v1, Lcom/speedsoftware/b/i;->d:I

    int-to-long v3, v1

    invoke-static {v3, v4, p1, v0, v7}, Lcom/speedsoftware/b/i;->a(J[BII)I

    move-result v0

    iget-object v1, p0, Lcom/speedsoftware/b/g;->b:Lcom/speedsoftware/b/i;

    iget-wide v3, v1, Lcom/speedsoftware/b/i;->e:J

    invoke-static {v3, v4, p1, v0}, Lcom/speedsoftware/b/i;->a(J[BI)I

    move-result v0

    iget-object v1, p0, Lcom/speedsoftware/b/g;->b:Lcom/speedsoftware/b/i;

    iget-wide v3, v1, Lcom/speedsoftware/b/i;->f:J

    invoke-static {v3, v4, p1, v0}, Lcom/speedsoftware/b/i;->a(J[BI)I

    move-result v4

    move v0, v2

    move v1, v4

    :goto_1
    if-lt v0, v7, :cond_4

    add-int/lit8 v0, v1, 0x1

    iget-object v3, p0, Lcom/speedsoftware/b/g;->b:Lcom/speedsoftware/b/i;

    iget-byte v3, v3, Lcom/speedsoftware/b/i;->h:B

    aput-byte v3, p1, v1

    iget-object v1, p0, Lcom/speedsoftware/b/g;->b:Lcom/speedsoftware/b/i;

    iget-object v1, v1, Lcom/speedsoftware/b/i;->i:Ljava/lang/StringBuffer;

    invoke-static {v1, p1, v0, v5}, Lcom/speedsoftware/b/i;->a(Ljava/lang/StringBuffer;[BII)I

    move-result v0

    iget-boolean v1, p0, Lcom/speedsoftware/b/g;->c:Z

    if-eqz v1, :cond_6

    move v1, v2

    :goto_2
    if-lt v1, v7, :cond_5

    :goto_3
    iget-object v1, p0, Lcom/speedsoftware/b/g;->b:Lcom/speedsoftware/b/i;

    iget-object v1, v1, Lcom/speedsoftware/b/i;->k:Ljava/lang/StringBuffer;

    invoke-static {v1, p1, v0, v8}, Lcom/speedsoftware/b/i;->a(Ljava/lang/StringBuffer;[BII)I

    move-result v0

    iget-object v1, p0, Lcom/speedsoftware/b/g;->b:Lcom/speedsoftware/b/i;

    iget-object v1, v1, Lcom/speedsoftware/b/i;->l:Ljava/lang/StringBuffer;

    invoke-static {v1, p1, v0, v8}, Lcom/speedsoftware/b/i;->a(Ljava/lang/StringBuffer;[BII)I

    move-result v0

    iget-object v1, p0, Lcom/speedsoftware/b/g;->b:Lcom/speedsoftware/b/i;

    iget v1, v1, Lcom/speedsoftware/b/i;->m:I

    int-to-long v5, v1

    invoke-static {v5, v6, p1, v0, v7}, Lcom/speedsoftware/b/i;->a(J[BII)I

    move-result v0

    iget-object v1, p0, Lcom/speedsoftware/b/g;->b:Lcom/speedsoftware/b/i;

    iget v1, v1, Lcom/speedsoftware/b/i;->n:I

    int-to-long v5, v1

    invoke-static {v5, v6, p1, v0, v7}, Lcom/speedsoftware/b/i;->a(J[BII)I

    move-result v0

    :goto_4
    array-length v1, p1

    if-lt v0, v1, :cond_7

    invoke-static {p1}, Lcom/speedsoftware/b/g;->b([B)J

    move-result-wide v0

    invoke-static {v0, v1, p1, v4, v7}, Lcom/speedsoftware/b/i;->a(J[BII)I

    add-int/lit8 v0, v4, 0x8

    add-int/lit8 v0, v0, -0x1

    aput-byte v8, p1, v0

    add-int/lit8 v0, v4, 0x8

    add-int/lit8 v0, v0, -0x2

    aput-byte v2, p1, v0

    return-void

    :cond_3
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p1, v2, v5}, Lcom/speedsoftware/b/i;->a(Ljava/lang/StringBuffer;[BII)I

    goto/16 :goto_0

    :cond_4
    add-int/lit8 v3, v1, 0x1

    aput-byte v8, p1, v1

    add-int/lit8 v0, v0, 0x1

    move v1, v3

    goto :goto_1

    :cond_5
    add-int/lit8 v3, v0, 0x1

    aput-byte v2, p1, v0

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move v0, v3

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/speedsoftware/b/g;->b:Lcom/speedsoftware/b/i;

    iget-object v1, v1, Lcom/speedsoftware/b/i;->j:Ljava/lang/StringBuffer;

    invoke-static {v1, p1, v0, v7}, Lcom/speedsoftware/b/i;->a(Ljava/lang/StringBuffer;[BII)I

    move-result v0

    goto :goto_3

    :cond_7
    add-int/lit8 v1, v0, 0x1

    aput-byte v2, p1, v0

    move v0, v1

    goto :goto_4
.end method

.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/speedsoftware/b/g;->c:Z

    return v0
.end method

.method public final b()Lcom/speedsoftware/b/i;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/b/g;->b:Lcom/speedsoftware/b/i;

    return-object v0
.end method

.method public final b(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/speedsoftware/b/g;->b:Lcom/speedsoftware/b/i;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/speedsoftware/b/i;->l:Ljava/lang/StringBuffer;

    return-void
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/b/g;->b:Lcom/speedsoftware/b/i;

    iget-object v0, v0, Lcom/speedsoftware/b/i;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final clone()Ljava/lang/Object;
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/speedsoftware/b/g;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/speedsoftware/b/g;->b:Lcom/speedsoftware/b/i;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/speedsoftware/b/g;->b:Lcom/speedsoftware/b/i;

    invoke-virtual {v1}, Lcom/speedsoftware/b/i;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/speedsoftware/b/i;

    iput-object v1, v0, Lcom/speedsoftware/b/g;->b:Lcom/speedsoftware/b/i;

    :cond_0
    iget-object v1, p0, Lcom/speedsoftware/b/g;->a:Ljava/io/File;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/speedsoftware/b/g;->a:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Lcom/speedsoftware/b/g;->a:Ljava/io/File;
    :try_end_1
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v3, v0

    move-object v0, v1

    move-object v1, v3

    :goto_1
    sget-object v2, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Ljava/lang/CloneNotSupportedException;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/b/g;->b:Lcom/speedsoftware/b/i;

    iget-object v0, v0, Lcom/speedsoftware/b/i;->k:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/b/g;->b:Lcom/speedsoftware/b/i;

    iget-object v0, v0, Lcom/speedsoftware/b/i;->l:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final f()Ljava/util/Date;
    .locals 5

    new-instance v0, Ljava/util/Date;

    iget-object v1, p0, Lcom/speedsoftware/b/g;->b:Lcom/speedsoftware/b/i;

    iget-wide v1, v1, Lcom/speedsoftware/b/i;->f:J

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    return-object v0
.end method

.method public final g()J
    .locals 2

    iget-object v0, p0, Lcom/speedsoftware/b/g;->b:Lcom/speedsoftware/b/i;

    iget-wide v0, v0, Lcom/speedsoftware/b/i;->e:J

    return-wide v0
.end method

.method public final h()Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/speedsoftware/b/g;->a:Ljava/io/File;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/speedsoftware/b/g;->a:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/speedsoftware/b/g;->b:Lcom/speedsoftware/b/i;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/speedsoftware/b/g;->b:Lcom/speedsoftware/b/i;

    iget-byte v1, v1, Lcom/speedsoftware/b/i;->h:B

    const/16 v2, 0x35

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/speedsoftware/b/g;->b:Lcom/speedsoftware/b/i;

    iget-object v1, v1, Lcom/speedsoftware/b/i;->a:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v1, "[TarEntry name="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/speedsoftware/b/g;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", isDir="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/speedsoftware/b/g;->h()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", size="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/speedsoftware/b/g;->b:Lcom/speedsoftware/b/i;

    iget-wide v1, v1, Lcom/speedsoftware/b/i;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuffer;->append(J)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/speedsoftware/b/g;->b:Lcom/speedsoftware/b/i;

    iget v1, v1, Lcom/speedsoftware/b/i;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", user="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/speedsoftware/b/g;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", groupId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/speedsoftware/b/g;->b:Lcom/speedsoftware/b/i;

    iget v1, v1, Lcom/speedsoftware/b/i;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ", group="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/speedsoftware/b/g;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
