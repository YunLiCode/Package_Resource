.class final Lcom/speedsoftware/rootexplorer/fu;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/speedsoftware/rootexplorer/z;


# instance fields
.field private synthetic a:Lcom/speedsoftware/rootexplorer/cr;


# direct methods
.method constructor <init>(Lcom/speedsoftware/rootexplorer/cr;)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/fu;->a:Lcom/speedsoftware/rootexplorer/cr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/speedsoftware/rootexplorer/cd;)V
    .locals 2

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/fu;->a:Lcom/speedsoftware/rootexplorer/cr;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/cr;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/i;->r:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Lcom/speedsoftware/rootexplorer/cd;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/fu;->a:Lcom/speedsoftware/rootexplorer/cr;

    iget-object v1, v1, Lcom/speedsoftware/rootexplorer/cr;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v1, v1, Lcom/speedsoftware/rootexplorer/i;->u:Lcom/speedsoftware/rootexplorer/dw;

    invoke-virtual {p1, v1}, Lcom/speedsoftware/rootexplorer/cd;->b(Lcom/speedsoftware/rootexplorer/dw;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/fu;->a:Lcom/speedsoftware/rootexplorer/cr;

    iget-object v1, v1, Lcom/speedsoftware/rootexplorer/cr;->a:Lcom/speedsoftware/rootexplorer/i;

    iget-object v1, v1, Lcom/speedsoftware/rootexplorer/i;->u:Lcom/speedsoftware/rootexplorer/dw;

    invoke-virtual {p1, v1}, Lcom/speedsoftware/rootexplorer/cd;->b(Lcom/speedsoftware/rootexplorer/dw;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/speedsoftware/rootexplorer/cd;->a(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method
