.class public final Lcom/speedsoftware/rootexplorer/as;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lcom/speedsoftware/rootexplorer/cd;

.field private synthetic b:Lcom/speedsoftware/rootexplorer/i;


# direct methods
.method public constructor <init>(Lcom/speedsoftware/rootexplorer/i;Lcom/speedsoftware/rootexplorer/cd;)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/as;->b:Lcom/speedsoftware/rootexplorer/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/speedsoftware/rootexplorer/as;->a:Lcom/speedsoftware/rootexplorer/cd;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/as;->b:Lcom/speedsoftware/rootexplorer/i;

    iget-object v0, v0, Lcom/speedsoftware/rootexplorer/i;->r:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/as;->a:Lcom/speedsoftware/rootexplorer/cd;

    invoke-virtual {v1}, Lcom/speedsoftware/rootexplorer/cd;->q()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/as;->a:Lcom/speedsoftware/rootexplorer/cd;

    sget-object v2, Lcom/speedsoftware/rootexplorer/i;->d:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/speedsoftware/rootexplorer/cd;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/speedsoftware/rootexplorer/as;->a:Lcom/speedsoftware/rootexplorer/cd;

    sget-object v2, Lcom/speedsoftware/rootexplorer/i;->d:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/speedsoftware/rootexplorer/cd;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
