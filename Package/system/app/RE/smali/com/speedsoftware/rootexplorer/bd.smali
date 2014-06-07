.class final Lcom/speedsoftware/rootexplorer/bd;
.super Lcom/speedsoftware/rootexplorer/co;


# instance fields
.field private synthetic d:Lcom/speedsoftware/rootexplorer/i;


# direct methods
.method public constructor <init>(Lcom/speedsoftware/rootexplorer/i;Landroid/content/Context;Ljava/util/ArrayList;Z)V
    .locals 0

    iput-object p1, p0, Lcom/speedsoftware/rootexplorer/bd;->d:Lcom/speedsoftware/rootexplorer/i;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/speedsoftware/rootexplorer/co;-><init>(Lcom/speedsoftware/rootexplorer/i;Landroid/content/Context;Ljava/util/ArrayList;Z)V

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    if-nez p2, :cond_2

    invoke-static {}, Lcom/speedsoftware/rootexplorer/i;->G()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/speedsoftware/rootexplorer/i;->H()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/bd;->a:Landroid/view/LayoutInflater;

    const v1, 0x7f03000b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/speedsoftware/rootexplorer/fg;

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/bd;->d:Lcom/speedsoftware/rootexplorer/i;

    invoke-direct {v1, v0}, Lcom/speedsoftware/rootexplorer/fg;-><init>(Lcom/speedsoftware/rootexplorer/i;)V

    const v0, 0x7f09001b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/speedsoftware/rootexplorer/fg;->a:Landroid/widget/TextView;

    const v0, 0x7f090019

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/speedsoftware/rootexplorer/fg;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/bd;->b:Landroid/view/View$OnLongClickListener;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/speedsoftware/rootexplorer/fg;->b:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/bd;->b:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    iget-object v0, v1, Lcom/speedsoftware/rootexplorer/fg;->b:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/bd;->d:Lcom/speedsoftware/rootexplorer/i;

    invoke-virtual {v2}, Lcom/speedsoftware/rootexplorer/i;->m()Landroid/view/View$OnClickListener;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    const v0, 0x7f09001a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/speedsoftware/rootexplorer/fg;->f:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :goto_0
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/bd;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/speedsoftware/rootexplorer/cd;

    iput-object v0, v1, Lcom/speedsoftware/rootexplorer/fg;->h:Lcom/speedsoftware/rootexplorer/cd;

    iget-object v2, v1, Lcom/speedsoftware/rootexplorer/fg;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/cd;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, v1, Lcom/speedsoftware/rootexplorer/fg;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/cd;->q()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    invoke-virtual {p0, v0, v1}, Lcom/speedsoftware/rootexplorer/bd;->a(Lcom/speedsoftware/rootexplorer/cd;Lcom/speedsoftware/rootexplorer/fg;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/speedsoftware/rootexplorer/i;->d:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/speedsoftware/rootexplorer/cd;->a(Landroid/content/Context;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v3, v1, Lcom/speedsoftware/rootexplorer/fg;->b:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_1
    iget-object v2, p0, Lcom/speedsoftware/rootexplorer/bd;->d:Lcom/speedsoftware/rootexplorer/i;

    iget-boolean v2, v2, Lcom/speedsoftware/rootexplorer/i;->V:Z

    if-eqz v2, :cond_4

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/cd;->b()Ljava/lang/String;

    move-result-object v2

    const-string v3, ".."

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, v1, Lcom/speedsoftware/rootexplorer/fg;->f:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/speedsoftware/rootexplorer/cd;->o()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/bd;->d:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/i;->z(Lcom/speedsoftware/rootexplorer/i;)I

    move-result v0

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, v1, Lcom/speedsoftware/rootexplorer/fg;->f:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_2
    return-object p2

    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/speedsoftware/rootexplorer/fg;

    move-object v1, v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/speedsoftware/rootexplorer/bd;->d:Lcom/speedsoftware/rootexplorer/i;

    invoke-static {v0}, Lcom/speedsoftware/rootexplorer/i;->A(Lcom/speedsoftware/rootexplorer/i;)I

    move-result v0

    goto :goto_1

    :cond_4
    iget-object v0, v1, Lcom/speedsoftware/rootexplorer/fg;->f:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2
.end method
