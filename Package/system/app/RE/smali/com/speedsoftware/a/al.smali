.class public final Lcom/speedsoftware/a/al;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:Z

.field private e:I

.field private f:Lcom/speedsoftware/a/aj;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/speedsoftware/a/aj;

    invoke-direct {v0}, Lcom/speedsoftware/a/aj;-><init>()V

    iput-object v0, p0, Lcom/speedsoftware/a/al;->f:Lcom/speedsoftware/a/aj;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/speedsoftware/a/al;->b:I

    return v0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/speedsoftware/a/al;->b:I

    return-void
.end method

.method public final a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/speedsoftware/a/al;->d:Z

    return-void
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/speedsoftware/a/al;->a:I

    return v0
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/speedsoftware/a/al;->a:I

    return-void
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/speedsoftware/a/al;->c:I

    return v0
.end method

.method public final c(I)V
    .locals 0

    iput p1, p0, Lcom/speedsoftware/a/al;->c:I

    return-void
.end method

.method public final d(I)V
    .locals 0

    iput p1, p0, Lcom/speedsoftware/a/al;->e:I

    return-void
.end method

.method public final d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/speedsoftware/a/al;->d:Z

    return v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/speedsoftware/a/al;->e:I

    return v0
.end method

.method public final f()Lcom/speedsoftware/a/aj;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/a/al;->f:Lcom/speedsoftware/a/aj;

    return-object v0
.end method
