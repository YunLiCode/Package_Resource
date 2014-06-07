.class public Lcom/speedsoftware/a/h;
.super Ljava/lang/Object;


# instance fields
.field protected a:J

.field protected b:S

.field protected c:B

.field protected d:S

.field protected e:S


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short v0, p0, Lcom/speedsoftware/a/h;->b:S

    iput-byte v0, p0, Lcom/speedsoftware/a/h;->c:B

    iput-short v0, p0, Lcom/speedsoftware/a/h;->d:S

    iput-short v0, p0, Lcom/speedsoftware/a/h;->e:S

    return-void
.end method

.method public constructor <init>(Lcom/speedsoftware/a/h;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short v0, p0, Lcom/speedsoftware/a/h;->b:S

    iput-byte v0, p0, Lcom/speedsoftware/a/h;->c:B

    iput-short v0, p0, Lcom/speedsoftware/a/h;->d:S

    iput-short v0, p0, Lcom/speedsoftware/a/h;->e:S

    iget-short v0, p1, Lcom/speedsoftware/a/h;->d:S

    iput-short v0, p0, Lcom/speedsoftware/a/h;->d:S

    iget-short v0, p1, Lcom/speedsoftware/a/h;->b:S

    iput-short v0, p0, Lcom/speedsoftware/a/h;->b:S

    iget-byte v0, p1, Lcom/speedsoftware/a/h;->c:B

    invoke-static {v0}, Lcom/speedsoftware/a/aq;->a(B)Lcom/speedsoftware/a/aq;

    move-result-object v0

    invoke-virtual {v0}, Lcom/speedsoftware/a/aq;->a()B

    move-result v0

    iput-byte v0, p0, Lcom/speedsoftware/a/h;->c:B

    iget-short v0, p1, Lcom/speedsoftware/a/h;->e:S

    iput-short v0, p0, Lcom/speedsoftware/a/h;->e:S

    iget-wide v0, p1, Lcom/speedsoftware/a/h;->a:J

    iput-wide v0, p0, Lcom/speedsoftware/a/h;->a:J

    return-void
.end method

.method public constructor <init>([B)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short v0, p0, Lcom/speedsoftware/a/h;->b:S

    iput-byte v0, p0, Lcom/speedsoftware/a/h;->c:B

    iput-short v0, p0, Lcom/speedsoftware/a/h;->d:S

    iput-short v0, p0, Lcom/speedsoftware/a/h;->e:S

    invoke-static {p1, v0}, Lcom/speedsoftware/a/ac;->a([BI)S

    move-result v0

    iput-short v0, p0, Lcom/speedsoftware/a/h;->b:S

    iget-byte v0, p0, Lcom/speedsoftware/a/h;->c:B

    const/4 v1, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/speedsoftware/a/h;->c:B

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/speedsoftware/a/ac;->a([BI)S

    move-result v0

    iput-short v0, p0, Lcom/speedsoftware/a/h;->d:S

    const/4 v0, 0x5

    invoke-static {p1, v0}, Lcom/speedsoftware/a/ac;->a([BI)S

    move-result v0

    iput-short v0, p0, Lcom/speedsoftware/a/h;->e:S

    return-void
.end method


# virtual methods
.method public final a(J)V
    .locals 0

    iput-wide p1, p0, Lcom/speedsoftware/a/h;->a:J

    return-void
.end method

.method public final a()Z
    .locals 1

    iget-short v0, p0, Lcom/speedsoftware/a/h;->d:S

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b()Z
    .locals 1

    iget-short v0, p0, Lcom/speedsoftware/a/h;->d:S

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final c()Z
    .locals 1

    iget-short v0, p0, Lcom/speedsoftware/a/h;->d:S

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Z
    .locals 3

    const/4 v0, 0x1

    sget-object v1, Lcom/speedsoftware/a/aq;->f:Lcom/speedsoftware/a/aq;

    iget-byte v2, p0, Lcom/speedsoftware/a/h;->c:B

    invoke-virtual {v1, v2}, Lcom/speedsoftware/a/aq;->b(B)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/speedsoftware/a/aq;->i:Lcom/speedsoftware/a/aq;

    iget-byte v2, p0, Lcom/speedsoftware/a/h;->c:B

    invoke-virtual {v1, v2}, Lcom/speedsoftware/a/aq;->b(B)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-short v1, p0, Lcom/speedsoftware/a/h;->d:S

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()J
    .locals 2

    iget-wide v0, p0, Lcom/speedsoftware/a/h;->a:J

    return-wide v0
.end method

.method public final f()S
    .locals 1

    iget-short v0, p0, Lcom/speedsoftware/a/h;->e:S

    return v0
.end method

.method public final g()Lcom/speedsoftware/a/aq;
    .locals 1

    iget-byte v0, p0, Lcom/speedsoftware/a/h;->c:B

    invoke-static {v0}, Lcom/speedsoftware/a/aq;->a(B)Lcom/speedsoftware/a/aq;

    move-result-object v0

    return-object v0
.end method

.method public h()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "HeaderType: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-byte v2, p0, Lcom/speedsoftware/a/h;->c:B

    invoke-static {v2}, Lcom/speedsoftware/a/aq;->a(B)Lcom/speedsoftware/a/aq;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nHeadCRC: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-short v2, p0, Lcom/speedsoftware/a/h;->b:S

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nFlags: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-short v2, p0, Lcom/speedsoftware/a/h;->d:S

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nHeaderSize: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-short v2, p0, Lcom/speedsoftware/a/h;->e:S

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "\nPosition in file: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Lcom/speedsoftware/a/h;->a:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method
