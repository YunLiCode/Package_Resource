.class public final Lcom/speedsoftware/a/ai;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/speedsoftware/a/ai;->a:I

    return v0
.end method

.method public final a(I)V
    .locals 1

    and-int/lit16 v0, p1, 0xff

    iput v0, p0, Lcom/speedsoftware/a/ai;->a:I

    return-void
.end method

.method public final a(Lcom/speedsoftware/a/ab;)V
    .locals 1

    invoke-virtual {p1}, Lcom/speedsoftware/a/ab;->b()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/speedsoftware/a/ai;->b(I)V

    invoke-virtual {p1}, Lcom/speedsoftware/a/ab;->c()I

    move-result v0

    iput v0, p0, Lcom/speedsoftware/a/ai;->c:I

    invoke-virtual {p1}, Lcom/speedsoftware/a/ab;->a()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/speedsoftware/a/ai;->a(I)V

    return-void
.end method

.method public final a(Lcom/speedsoftware/a/m;)V
    .locals 1

    invoke-virtual {p1}, Lcom/speedsoftware/a/m;->f()I

    move-result v0

    iput v0, p0, Lcom/speedsoftware/a/ai;->c:I

    return-void
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/speedsoftware/a/ai;->b:I

    return v0
.end method

.method public final b(I)V
    .locals 1

    and-int/lit16 v0, p1, 0xff

    iput v0, p0, Lcom/speedsoftware/a/ai;->b:I

    return-void
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/speedsoftware/a/ai;->c:I

    return v0
.end method

.method public final c(I)V
    .locals 1

    iget v0, p0, Lcom/speedsoftware/a/ai;->b:I

    sub-int/2addr v0, p1

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Lcom/speedsoftware/a/ai;->b:I

    return-void
.end method

.method public final d(I)V
    .locals 0

    iput p1, p0, Lcom/speedsoftware/a/ai;->c:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n  symbol="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/speedsoftware/a/ai;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  freq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/speedsoftware/a/ai;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n  successor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/speedsoftware/a/ai;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "\n]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
