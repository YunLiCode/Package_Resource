.class public Lcom/speedsoftware/a/ag;
.super Lcom/speedsoftware/a/h;


# instance fields
.field private f:I

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/speedsoftware/a/h;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/speedsoftware/a/ag;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/speedsoftware/a/h;-><init>(Lcom/speedsoftware/a/h;)V

    iget v0, p1, Lcom/speedsoftware/a/ag;->f:I

    iput v0, p0, Lcom/speedsoftware/a/ag;->g:I

    iget v0, p0, Lcom/speedsoftware/a/ag;->g:I

    iput v0, p0, Lcom/speedsoftware/a/ag;->f:I

    invoke-virtual {p1}, Lcom/speedsoftware/a/ag;->e()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/speedsoftware/a/ag;->a:J

    return-void
.end method

.method public constructor <init>(Lcom/speedsoftware/a/h;[B)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/speedsoftware/a/h;-><init>(Lcom/speedsoftware/a/h;)V

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/speedsoftware/a/ac;->b([BI)I

    move-result v0

    iput v0, p0, Lcom/speedsoftware/a/ag;->g:I

    iget v0, p0, Lcom/speedsoftware/a/ag;->g:I

    iput v0, p0, Lcom/speedsoftware/a/ag;->f:I

    return-void
.end method


# virtual methods
.method public h()V
    .locals 2

    invoke-super {p0}, Lcom/speedsoftware/a/h;->h()V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DataSize: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/speedsoftware/a/ag;->f:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " packSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/speedsoftware/a/ag;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    return-void
.end method

.method public final j()I
    .locals 1

    iget v0, p0, Lcom/speedsoftware/a/ag;->f:I

    return v0
.end method

.method public final k()I
    .locals 1

    iget v0, p0, Lcom/speedsoftware/a/ag;->g:I

    return v0
.end method
