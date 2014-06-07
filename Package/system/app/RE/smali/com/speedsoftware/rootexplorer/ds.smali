.class public final Lcom/speedsoftware/rootexplorer/ds;
.super Lcom/speedsoftware/rootexplorer/cd;


# instance fields
.field private e:I

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/speedsoftware/rootexplorer/cd;-><init>()V

    iput p1, p0, Lcom/speedsoftware/rootexplorer/ds;->e:I

    iput-object p2, p0, Lcom/speedsoftware/rootexplorer/ds;->j:Ljava/lang/String;

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/ds;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/speedsoftware/rootexplorer/ds;->g:Ljava/lang/String;

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/ds;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/ds;->i:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "a."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/speedsoftware/rootexplorer/ds;->a(Ljava/lang/String;)V

    const-string v0, "----------"

    invoke-virtual {p0, v0}, Lcom/speedsoftware/rootexplorer/ds;->b(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {p0, v0}, Lcom/speedsoftware/rootexplorer/ds;->c(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/speedsoftware/rootexplorer/cd;-><init>()V

    iput p1, p0, Lcom/speedsoftware/rootexplorer/ds;->e:I

    iput-object p2, p0, Lcom/speedsoftware/rootexplorer/ds;->j:Ljava/lang/String;

    iput-object p3, p0, Lcom/speedsoftware/rootexplorer/ds;->f:Ljava/lang/String;

    iput-object v2, p0, Lcom/speedsoftware/rootexplorer/ds;->g:Ljava/lang/String;

    iput-object p4, p0, Lcom/speedsoftware/rootexplorer/ds;->h:Ljava/lang/String;

    iput-object p5, p0, Lcom/speedsoftware/rootexplorer/ds;->i:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "a."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/speedsoftware/rootexplorer/ds;->a(Ljava/lang/String;)V

    const-string v0, "----------"

    invoke-virtual {p0, v0}, Lcom/speedsoftware/rootexplorer/ds;->b(Ljava/lang/String;)V

    const-string v0, "/"

    invoke-virtual {p0, v0}, Lcom/speedsoftware/rootexplorer/ds;->c(Ljava/lang/String;)V

    iput-object p6, p0, Lcom/speedsoftware/rootexplorer/ds;->k:Landroid/graphics/Bitmap;

    return-void
.end method


# virtual methods
.method public final O()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/ds;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final P()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/ds;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final Q()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/ds;->h:Ljava/lang/String;

    return-object v0
.end method

.method public final R()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/ds;->i:Ljava/lang/String;

    return-object v0
.end method

.method public final S()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/speedsoftware/rootexplorer/ds;->k:Landroid/graphics/Bitmap;

    return-void
.end method

.method public final a()I
    .locals 1

    iget v0, p0, Lcom/speedsoftware/rootexplorer/ds;->e:I

    return v0
.end method

.method public final a(Landroid/content/Context;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/ds;->k:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/ds;->k:Landroid/graphics/Bitmap;

    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/speedsoftware/rootexplorer/cd;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0
.end method
