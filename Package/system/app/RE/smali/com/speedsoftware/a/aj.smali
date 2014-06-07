.class public final Lcom/speedsoftware/a/aj;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/util/List;

.field private b:Ljava/util/List;

.field private c:I

.field private d:Ljava/util/Vector;

.field private e:Ljava/util/Vector;

.field private f:[I

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/speedsoftware/a/aj;->a:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/speedsoftware/a/aj;->b:Ljava/util/List;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/speedsoftware/a/aj;->d:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/speedsoftware/a/aj;->e:Ljava/util/Vector;

    const/4 v0, 0x7

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/speedsoftware/a/aj;->f:[I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/speedsoftware/a/aj;->b:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/a/aj;->b:Ljava/util/List;

    return-object v0
.end method

.method public final a(I)V
    .locals 0

    iput p1, p0, Lcom/speedsoftware/a/aj;->c:I

    return-void
.end method

.method public final a(Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/a/aj;->b:Ljava/util/List;

    return-void
.end method

.method public final a(Ljava/util/Vector;)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/a/aj;->e:Ljava/util/Vector;

    return-void
.end method

.method public final b()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/a/aj;->a:Ljava/util/List;

    return-object v0
.end method

.method public final b(I)V
    .locals 0

    iput p1, p0, Lcom/speedsoftware/a/aj;->g:I

    return-void
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/speedsoftware/a/aj;->c:I

    return v0
.end method

.method public final c(I)V
    .locals 0

    iput p1, p0, Lcom/speedsoftware/a/aj;->h:I

    return-void
.end method

.method public final d()I
    .locals 1

    iget v0, p0, Lcom/speedsoftware/a/aj;->g:I

    return v0
.end method

.method public final e()I
    .locals 1

    iget v0, p0, Lcom/speedsoftware/a/aj;->h:I

    return v0
.end method

.method public final f()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/a/aj;->d:Ljava/util/Vector;

    return-object v0
.end method

.method public final g()[I
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/a/aj;->f:[I

    return-object v0
.end method

.method public final h()Ljava/util/Vector;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/a/aj;->e:Ljava/util/Vector;

    return-object v0
.end method
