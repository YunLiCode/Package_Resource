.class public Lcom/speedsoftware/rootexplorer/ThumbnailGrid;
.super Landroid/app/Activity;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030015

    invoke-virtual {p0, v0}, Lcom/speedsoftware/rootexplorer/ThumbnailGrid;->setContentView(I)V

    const v0, 0x7f09006b

    invoke-virtual {p0, v0}, Lcom/speedsoftware/rootexplorer/ThumbnailGrid;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    new-instance v1, Lcom/speedsoftware/rootexplorer/ap;

    invoke-direct {v1, p0, p0}, Lcom/speedsoftware/rootexplorer/ap;-><init>(Lcom/speedsoftware/rootexplorer/ThumbnailGrid;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method
